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
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));

    uint64 scause = Riscv::r_scause();

    switch(scause)
    {
        case timerInterrupt:
        {
            uint64 volatile sepc = Riscv::r_sepc();
            uint64 volatile sstatus = Riscv::r_sstatus();
            mc_sip(Riscv::SIP_SSIP);
            //Riscv::printString("timerInterrupt\n");
            static uint64 total = 0;
            total++;

            PCB::timeSliceCounter++;
            SleepPCBList::tryToWakePCBs();
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
            {
                PCB::timeSliceCounter = 0;
                PCB::dispatch();
            }

            Riscv::w_sstatus(sstatus);
            Riscv::w_sepc(sepc);

            break;
        }
        case hwInterrupt: // todo
        {
            //Riscv::printString("Hardware interrupt...\n");
            console_handler();
            break;
        }
        case operationInterrupt: // todo
        {
            break;
        }
        case addrReadInterrupt: // todo
        {
            break;
        }
        case addrWriteInterrupt: // todo
        {
            break;
        }
        case ecallSystemInterupt:
        case ecallUserInterrupt: {
            uint64 operation;
            __asm__ volatile("mv %0, a0" :  "=r"(operation));

            uint64 volatile sepc = Riscv::r_sepc() + 4;
            uint64 volatile sstatus = Riscv::r_sstatus();

            if (operation == MemoryAllocator::MEM_ALLOC)
                MemoryAllocator::memAllocHandler();
            else if (operation == MemoryAllocator::MEM_FREE)
                MemoryAllocator::memFreeHandler();
            else if (operation == PCB::THREAD_CREATE)
                PCB::threadCreateHandler();
            else if (operation == PCB::THREAD_DISPATCH)
                PCB::threadDispatchHandler();
            else if (operation == PCB::THREAD_EXIT)
                PCB::threadExitHandler();
            else if (operation == PCB::TIME_SLEEP)
                PCB::threadSleepHandler();
            else if (operation == KSemaphore::SEM_OPEN)
                KSemaphore::semOpenHandler();
            else if (operation == KSemaphore::SEM_WAIT)
                KSemaphore::semWaitHandler();
            else if (operation == KSemaphore::SEM_SIGNAL)
                KSemaphore::semSignalHandler();
            else if (operation == KSemaphore::SEM_CLOSE)
                KSemaphore::semCloseHandler();
            else if (operation == KConsole::CONSOLE_GETC) {
                //todo
            } else if (operation == KConsole::CONSOLE_PUTC) {
                //todo
            }

            Riscv::w_sstatus(sstatus);
            Riscv::w_sepc(sepc);

            break;
        }
    }
}

void Riscv::kernelMain()
{
    initSystem();

    //enableInterrupts();

    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    while(userPCB->getState() != PCB::FINISHED)
    {
        thread_dispatch();
    }

    //myTests();

    //disableInterrupts();

    endSystem();

    Riscv::printString("End...");
}

void Riscv::userMainWrapper(void* ) {
    userMain();
}
