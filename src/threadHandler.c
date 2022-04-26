//
// Created by os on 4/26/22.
//

#include "../h/threadHandler.h"
#include "../h/memoryHandler.h"

void createThread()
{
    uint64 size;
    __asm__ volatile("mv %0, a1" : "=r"(size));
    void* threadAddr = tryToAllocateFragment(size);
    if(threadAddr == 0) {
        __asm__ volatile("li a0, 0x01");
        return;
    }

    uint64 start_routine_addr;
    __asm__ volatile("mv %0, a2" : "=r"(start_routine_addr));

    uint64 args_addr;
    __asm__ volatile("mv %0, a3" : "=r"(args_addr));

    uint64 thread_sp;
    __asm__ volatile("mv %0, a4" : "=r"(thread_sp));

    //__asm__ volatile("csrw sp, a0" : :"r"(thread_sp));
}
