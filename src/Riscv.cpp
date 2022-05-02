//
// Created by os on 4/27/22.
//

#include "../h/Riscv.h"
#include "../h/MemoryAllocator.h"
#include "../h/PCB.h"
#include "../lib/console.h"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem() {
    w_stvec((uint64)&Riscv::supervisorTrap);
    //todo
    //no need for comment, but sync context switch
    //should be tested, before hardware interrupts are enabled
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
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

    Riscv::printString("\n");

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
}

void Riscv::handleSupervisorTrap() {

    uint64 scause = Riscv::r_scause();
    switch(scause) {

        case timerInterrupt:

            PCB::timeSliceCounter++;
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice()) {
                uint64 sepc = Riscv::r_sepc();
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
                Riscv::w_sepc(sepc);
            }
            Riscv::mc_sip(Riscv::SIP_SSIP);

            break;

        case hwInterrupt: // todo
            break;

        case operationInterrupt: // todo
            break;

        case addrReadInterrupt: // todo
            break;

        case addrWriteInterrupt: // todo
            break;

        case ecallUserInterrupt: // todo



            break;

        case ecallSystemInterupt:

            uint64 operation;
            __asm__ volatile("mv %0, a0" :  "=r"(operation));

            uint64 sepc = Riscv::r_sepc();
            sepc+=4;

            if(operation == MemoryAllocator::MEM_ALLOC) {
                size_t size;
                __asm__ volatile("mv %0, a1" : "=r"(size));
                size*=MEM_BLOCK_SIZE;
                void* allocatedAddr = kmalloc(size);
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
            }
            else if(operation == MemoryAllocator::MEM_FREE) {
                uint64 addr = 0;
                __asm__ volatile("mv %0, a1" : "=r"(addr));
                uint64 retval = kfree((void*)addr);
                __asm__ volatile("mv a0,%0" : :"r"(retval));
            }
            else if(operation == PCB::THREAD_CREATE)
            {
                //todo
                //thread create
                uint64 start_routine;
                uint64 args;
                uint64 stack_space;
                PCB** threadHandle;
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
                __asm__ volatile("mv %0, a3" : "=r"(args));
                __asm__ volatile("mv %0, a4" : "=r"(stack_space));
                //todo
                //da li treba ovako ili tipa da se ne koristi new
                //nego direktno kmalloc - ali onda kako konstruktor
                //sta se desava ako preklopljeni new vrati 0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)stack_space);

                (*threadHandle) = newPCB;

                if(newPCB == 0)
                {
                    __asm__ volatile("li a0, 0xffffffffffffffff");
                    //__asm__ volatile("mv a1, %0" : :"r"((uint64)newPCB));
                }
                else
                {
                    __asm__ volatile("li a0, 0");
                    //__asm__ volatile("mv a1, %0" : :"r"((uint64)newPCB));
                }

            }
            else if(operation == PCB::THREAD_DISPATCH)
            {
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
            }

            Riscv::w_sepc(sepc);

            break;
    }

    //console_handler();
}
