//
// Created by os on 4/27/22.
//

#include "../h/Riscv.h"
#include "../h/MemoryAllocator.h"
#include "../h/PCB.h"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem() {
    w_stvec((uint64)&Riscv::supervisorTrap);
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
}

void Riscv::popSppSpie() {
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void Riscv::handleSupervisorTrap() {

    uint64 scause = Riscv::r_scause();
    switch(scause) {

        case timerInterrupt:

            /*PCB::timeSliceCounter++;
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice()) {
                uint64 sepc = Riscv::r_sepc();
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
                Riscv::w_sepc(sepc);
            }
            Riscv::mc_sip(Riscv::SIP_SSIP);*/

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
                void* allocatedAddr = MemoryAllocator::tryToAllocateFragment(size);
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
            }
            else if(operation == MemoryAllocator::MEM_FREE) {
                uint64 addr = 0;
                __asm__ volatile("mv %0, a1" : "=r"(addr));
                MemoryAllocator::tryToFreeSegment((void*)addr);
            }
            else if(operation == PCB::THREAD_CREATE)
            {
                //thread create

                //__asm__ volatile("mv %0, a1" : "=r"(size));
            }
            else if(operation == PCB::THREAD_DISPATCH)
            {
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
            }

            Riscv::w_sepc(sepc);

            //uint64 sip = Riscv::r_sip();
            //sip&=~2;
            //Riscv::w_sip(sip);

            break;
    }

    //todo
    //sta od ovoga treba da se uradi

    //uint64 sepc;
    //asm volatile("csrr %0, sepc" : "=r" (sepc));
    //sepc+=4;
    //asm volatile("csrw sepc, %0" : : "r" (sepc));

    //uint64 sip;
    //asm volatile("csrr %0, sip" : "=r" (sip));
    //sip &= ~2;
    //asm volatile("csrw sip, %0" : : "r" (sip));

    //uint64 sie;
    //asm volatile("csrr %0, sie" : "=r"(sie));
    //sie &= ~2;
    //asm volatile("csrw sie, %0" : : "r" (sie));

    //console_handler();
}
