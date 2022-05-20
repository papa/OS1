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
void Riscv::initSystem()
{
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

void Riscv::handleSupervisorTrap()
{
    uint64 a4;
    __asm__ volatile("mv %0, a4" : "=r"(a4));

    uint64 scause = Riscv::r_scause();

    switch(scause)
    {

        case timerInterrupt:

            Riscv::mc_sip(Riscv::SIP_SSIP);
            //Riscv::printString("timerInterrupt\n");

            PCB::timeSliceCounter++;

            SleepPCBList::tryToWakePCBs();

            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
            {
                uint64 sepc = Riscv::r_sepc();
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
                Riscv::w_sepc(sepc);
            }

            return;

        case hwInterrupt: // todo

            //Riscv::printString("Hardware interrupt...\n");

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
                uint64 start_routine;
                uint64 args;
                PCB** threadHandle;
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
                __asm__ volatile("mv %0, a3" : "=r"(args));
                //todo
                //uint64 stack_space;
                //__asm__ volatile("mv %0, a4" : "=r"(stack_space));

                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);

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
                PCB::running->setState(PCB::EXITING);
                PCB::running->setState(PCB::FINISHED);
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
            }
            else if(operation == PCB::TIME_SLEEP)
            {
                uint64 time;
                __asm__ volatile("mv %0, a1" : "=r"(time));
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
                PCB::running->setTimeToSleep(time);
                SleepPCBList::insertSleepingPCB();
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
                //todo
                //kad treba vratiti kod greske
                __asm__ volatile("li a0, 0x0");
            }
            else if(operation == KSemaphore::SEM_OPEN)
            {
                uint64 val;
                KSemaphore** semaphoreHandle;
                __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
                __asm__ volatile("mv %0, a2" : "=r"(val));

                KSemaphore* newSem = new KSemaphore(val);

                (*semaphoreHandle) = newSem;

                if(newSem == 0)
                        __asm__ volatile("li a0, 0xffffffffffffffff");
                else
                        __asm__ volatile("li a0, 0");

            }
            else if(operation == KSemaphore::SEM_WAIT)
            {
                //todo
                //negativna povratna vrednost sta i kako
                KSemaphore* kSem;
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
                uint64 retval = kSem->wait();
                __asm__ volatile("mv a0,%0" : :"r"(retval));
            }
            else if(operation == KSemaphore::SEM_SIGNAL)
            {
                //todo
                //negativna povratna vrednost sta i kako
                KSemaphore* kSem;
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
                uint64 retval = kSem->signal();
                __asm__ volatile("mv a0,%0" : :"r"(retval));
            }
            else if(operation == KSemaphore::SEM_CLOSE)
            {
                //todo
                //negativna povratna vrednost sta i kako
                KSemaphore* kSem;
                __asm__ volatile("mv %0, a1" : "=r"(kSem));

                delete kSem;

                __asm__ volatile("li a0, 0");
            }

            Riscv::w_sepc(sepc);

            return;
    }

    console_handler();
}
