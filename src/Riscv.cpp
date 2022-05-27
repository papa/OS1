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
            //console_handler();

            uint64 x = CONSOLE_STATUS;
            __asm__ volatile("mv a0, %0"::"r"(x));
            __asm__ volatile("lb a1, 0(a0)");
            uint64 operation;
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
            if(operation & KConsole::STATUS_READ_MASK)
            {
                x = CONSOLE_TX_DATA;
                __asm__ volatile("mv a0, %0"::"r"(x));
                __asm__ volatile("lb a1,0(a0)");
                char c;
                __asm__ volatile("mv %0, a1" :  "=r"(c));
                //putCharacterOutput(c);

                KConsole::putCharacterInput(c);
            }

            console_handler();
            //plic_complete(plic_claim());

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
        case ecallUserInterrupt:
        {
            uint64 operation;
            __asm__ volatile("mv %0, a0" :  "=r"(operation));

            uint64 volatile sepc = Riscv::r_sepc() + 4;
            uint64 volatile sstatus = Riscv::r_sstatus();
            //uint64 volatile sie = Riscv::r_sie();

            switch(operation)
            {
                case MemoryAllocator::MEM_ALLOC:
                    MemoryAllocator::memAllocHandler();
                    break;
                case MemoryAllocator::MEM_FREE:
                    MemoryAllocator::memFreeHandler();
                    break;
                case PCB::THREAD_MAKE_PCB:
                    PCB::threadMakePCBHandler();
                    break;
                case PCB::THREAD_CREATE:
                    PCB::threadCreateHandler();
                    break;
                case PCB::THREAD_START:
                    PCB::threadStartHandler();
                    break;
                case PCB::THREAD_DISPATCH:
                    PCB::threadDispatchHandler();
                    break;
                case PCB::THREAD_EXIT:
                    PCB::threadExitHandler();
                    break;
                case PCB::TIME_SLEEP:
                    PCB::threadSleepHandler();
                    break;
                case KSemaphore::SEM_OPEN:
                    KSemaphore::semOpenHandler();
                    break;
                case KSemaphore::SEM_WAIT:
                    KSemaphore::semWaitHandler();
                    break;
                case KSemaphore::SEM_SIGNAL:
                    KSemaphore::semSignalHandler();
                    break;
                case KSemaphore::SEM_CLOSE:
                    KSemaphore::semCloseHandler();
                    break;
                case KConsole::CONSOLE_GETC:
                    KConsole::getcHandler();
                    break;
                case KConsole::CONSOLE_PUTC:
                    KConsole::putcHandler();
                    break;
            }

            //Riscv::w_sie(sie);
            Riscv::w_sstatus(sstatus);
            Riscv::w_sepc(sepc);

            break;
        }
    }
}

void Riscv::kernelMain()
{
    initSystem();

    //disableTimerInterrupts();
    enableInterrupts();

    //PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    //userPCB->start();
    //while(!userPCB->isFinished())
    //{
    //    thread_dispatch();
    //}
    //userMain();
    //myTests();


    //Riscv::printString("Sigurno radi\n");
   for(int i = 0; i < 100;i++)
   {
       char c = getc();
       putc(c);
   }

    /*while(true)
    {
        putc(c);
        c++;
        if(c == 'q')
            break;
    }*/


    /*for(int i = 0; i < 10;i++)
    {
        putc(getc());
    }*/

    disableInterrupts();
    //endSystem();

    Riscv::printString("End...");
}

void Riscv::userMainWrapper(void* )
{
    userMain();
}

void Riscv::disableTimerInterrupts()
{
    //uint64 x = 0x200;
    //__asm__ volatile("csrs sie, %0"::"r"(x));
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
}

void Riscv::idleRiscv(void* p)
{
    while(true)
    {

    }
}
