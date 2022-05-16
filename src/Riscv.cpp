//
// Created by os on 4/27/22.
//

#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/PCB.hpp"
#include "../lib/console.h"
#include "../h/syscall_cpp.hpp"
#include "../h/SleepPCBList.hpp"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem() {
    w_stvec((uint64)&Riscv::supervisorTrap);
    Thread* t = new Thread(0, 0);
    t->start();
    PCB::running = Scheduler::get();
    PCB::running->setState(PCB::RUNNING);
}

void Riscv::endSystem() {
    //todo
    //da li treba jos nesto da se ocisti
    Riscv::disableInterrupts();
}


void Riscv::enableInterrupts() {
    ms_sstatus(Riscv::SSTATUS_SIE);
}

void Riscv::disableInterrupts()
{
    mc_sstatus(Riscv::SSTATUS_SIE);
}

void Riscv::popSppSpie() {
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void Riscv::printString(const char *string)
{
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    {
        __putc(*string);
        string++;
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
}

void Riscv::printInteger(uint64 num)
{
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    static char digits[] = "0123456789";
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(num < 0)
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;

    i = 0;
    do
    {
        buf[i++] = digits[x%10];
    }while((x/=10) != 0);
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
        __putc(buf[i]);

    __putc('\n');

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
}

void Riscv::handleSupervisorTrap() {

    uint64 a4;
    __asm__ volatile("mv %0, a4" : "=r"(a4));

    uint64 scause = Riscv::r_scause();

    switch(scause) {

        case timerInterrupt:

            Riscv::mc_sip(Riscv::SIP_SSIP);
            Riscv::printString("timerInterrupt\n");
            PCB::timeSliceCounter++;
            SleepPCBList::tryToWakePCBs();
            static uint64 sumInterrupts = 0;
            sumInterrupts++;
            Riscv::printInteger(sumInterrupts);
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
            {
                uint64 sepc = Riscv::r_sepc();
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
                Riscv::w_sepc(sepc);
            }

            //Riscv::mc_sip(Riscv::SIP_SSIP);

            break;

        case hwInterrupt: // todo

            break;

        case operationInterrupt: // todo
            break;

        case addrReadInterrupt: // todo
            break;

        case addrWriteInterrupt: // todo
            break;

        case ecallSystemInterupt:
        case ecallUserInterrupt:

            uint64 operation;
            __asm__ volatile("mv %0, a0" :  "=r"(operation));

            uint64 sepc = Riscv::r_sepc();
            sepc+=4;

            if(operation == MemoryAllocator::MEM_ALLOC)
            {
                size_t size;
                __asm__ volatile("mv %0, a1" : "=r"(size));
                size*=MEM_BLOCK_SIZE;
                void* allocatedAddr = kmalloc(size);
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
            }
            else if(operation == MemoryAllocator::MEM_FREE)
            {
                uint64 addr = 0;
                __asm__ volatile("mv %0, a1" : "=r"(addr));
                uint64 retval = kfree((void*)addr);
                __asm__ volatile("mv a0,%0" : :"r"(retval));
            }
            else if(operation == PCB::THREAD_CREATE)
            {
                //todo
                uint64 start_routine;
                uint64 args;
                PCB** threadHandle;
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
                __asm__ volatile("mv %0, a3" : "=r"(args));
                //uint64 stack_space;
                //__asm__ volatile("mv %0, a4" : "=r"(stack_space));

                //todo
                //da li treba ovako ili tipa da se ne koristi new
                //nego direktno kmalloc - ali onda kako konstruktor
                //sta se desava ako preklopljeni new vrati 0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, 3UL);

                (*threadHandle) = newPCB;

                if(newPCB == 0)
                    __asm__ volatile("li a0, 0xffffffffffffffff");
                else
                    __asm__ volatile("li a0, 0");
            }
            else if(operation == PCB::THREAD_DISPATCH)
            {
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
            }
            else if(operation == PCB::THREAD_EXIT)
            {
                if(PCB::running == 0)
                {
                    __asm__ volatile("li a0, 0xffffffffffffffff");
                    return;
                }
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
                PCB::exitingPCB = PCB::running;
                PCB::exitingPCB->setState(PCB::EXITING);
                //todo
                //da li se iz ovog dispatch-a neka nit vraca uopste
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
            }
            else if(operation == PCB::TIME_SLEEP)
            {
                uint64 time;
                __asm__ volatile("mv %0, a1" : "=r"(time));
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
                PCB::running->setState(PCB::SLEEPING);
                PCB::running->setTimeToSleep(time);
                SleepPCBList::insertSleepingPCB();
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
                //todo
                //kad treba vratiti kod greske
                __asm__ volatile("li a0, 0x0");
            }

            Riscv::w_sepc(sepc);

            return;
            //break;
    }

    console_handler();
}
