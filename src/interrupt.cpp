//
// Created by os on 4/12/22.
//

#include "../h/interrupt.h"

const uint64 bntOne = 1UL << 63;
const uint64 bntZero = 0;

const uint64 hwInterrupt = bntOne + 9UL;
const uint64 operationInterrupt = bntZero + 2UL;
const uint64 addrReadInterrupt = bntZero + 5UL;
const uint64 addrWriteInterrupt = bntZero + 7UL;
const uint64 ecallUserInterrupt = bntZero + 8UL;
const uint64 ecallSystemInterupt = bntZero + 9UL;

extern "C" void interrupt() {

    uint64 scause = Riscv::r_scause();
    switch(scause) {

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

            uint64 operation = 0;
            __asm__ volatile("mv %0, a0" :  "=r"(operation));

            if(operation == (uint64)MemoryAllocator::MEM_ALLOC) {
                size_t size;
                __asm__ volatile("mv %0, a1" : "=r"(size));
                size*=MEM_BLOCK_SIZE;
                void* allocatedAddr = MemoryAllocator::tryToAllocateFragment(size);
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
            }
            else if(operation == (uint64)MemoryAllocator::MEM_FREE){
                uint64 addr = 0;
                __asm__ volatile("mv %0, a1" : "=r"(addr));
                MemoryAllocator::tryToFreeSegment((void*)addr);
            }
            else if(operation == (uint64)PCB::THREAD_CREATE)
            {
                //thread create

                //__asm__ volatile("mv %0, a1" : "=r"(size));
            }




            uint64 sepc = Riscv::r_sepc();
            sepc+=4;
            Riscv::w_sepc(sepc);
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

    console_handler();
}
