//
// Created by os on 4/27/22.
//

#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/PCB.hpp"
#include "../lib/console.h"
#include "../h/syscall_cpp.hpp"
#include "../h/SleepPCBList.hpp"
#include "../h/KConsole.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void Riscv::initSystem()
{
    w_stvec((uint64)&Riscv::supervisorTrap);
    PCB::initialize();
    KConsole::initialize();
}

void Riscv::endSystem()
{
    //todo
    Riscv::disableInterrupts();
}


void Riscv::enableInterrupts() {
    ms_sstatus(Riscv::SSTATUS_SIE);
}

void Riscv::disableInterrupts()
{
    mc_sstatus(Riscv::SSTATUS_SIE);
}

void Riscv::popSppSpie()
{
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
            static uint64 total = 0;
            total++;
            //Riscv::printInteger(total);

            PCB::timeSliceCounter++;

            SleepPCBList::tryToWakePCBs();

            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
            {
                volatile uint64 sepc = Riscv::r_sepc();
                volatile uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
                Riscv::w_sepc(sepc);
            }

            return;

        case hwInterrupt: // todo

            //Riscv::printString("Hardware interrupt...\n");
            console_handler();
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

            volatile uint64 sepc = Riscv::r_sepc();
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
                volatile uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
            }
            else if(operation == PCB::THREAD_EXIT)
            {
                Riscv::printString("Exiting thread...\n");
                volatile uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
                PCB::running->setState(PCB::EXITING);
                PCB::running->setState(PCB::FINISHED);
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
                __asm__ volatile("li a0, 0");
            }
            else if(operation == PCB::TIME_SLEEP)
            {
                uint64 time;
                __asm__ volatile("mv %0, a1" : "=r"(time));
                volatile uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
                PCB::running->setTimeToSleep(time);
                SleepPCBList::insertSleepingPCB();
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
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
                volatile uint64 sstatus = Riscv::r_sstatus();
                KSemaphore* kSem;
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
                volatile uint64 retval = kSem->wait();
                Riscv::w_sstatus(sstatus);
                __asm__ volatile("mv a0,%0" : :"r"(retval));
            }
            else if(operation == KSemaphore::SEM_SIGNAL)
            {
                KSemaphore* kSem;
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
                volatile uint64 retval = kSem->signal();
                __asm__ volatile("mv a0,%0" : :"r"(retval));
            }
            else if(operation == KSemaphore::SEM_CLOSE)
            {
                KSemaphore* kSem;
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
                delete kSem;
                __asm__ volatile("li a0, 0");
            }
            else if(operation == KConsole::CONSOLE_GETC)
            {
                //todo
            }
            else if(operation == KConsole::CONSOLE_PUTC)
            {
                //todo
            }

            Riscv::w_sepc(sepc);

            return;
    }
}

void Riscv::kernelMain()
{
    initSystem();

    enableInterrupts();

    //PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);

    //while(userPCB->getState() != PCB::FINISHED)
    //{
    //    thread_dispatch();
    //}

    myTests();

    disableInterrupts();

    endSystem();

    Riscv::printString("End...");
}

void Riscv::userMainWrapper(void* ) {
    userMain();
}
