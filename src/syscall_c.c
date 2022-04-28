//
// Created by os on 4/9/22.
//

#include "../h/syscall_c.h"

#ifdef __cplusplus
extern "C"
#endif
void* mem_alloc(size_t size)
{
    //prepare for system call
    __asm__ volatile("li a0, 1");
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));

    __asm__ volatile("ecall"); // system call

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));

    return (void*)allocatedAddr;
}

#ifdef __cplusplus
extern "C"
#endif
int mem_free(void* p)
{
    //prepare for system call
    __asm__ volatile("li a0, 2");
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));

    __asm__ volatile("ecall"); // system call

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));

    return result;
}

#ifdef __cplusplus
extern "C"
#endif
int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    //initialize registers
    __asm__ volatile("li a0, 0x11");
    //uint64 start_routine_addres = (uint64)start_routine;
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)start_routine));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)args));

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);

    //handle this error
    if(stack_space == 0)
        return -1;

    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stack_space));

    //todo
    __asm__ volatile("ecall");

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));

    return result;
}

#ifdef __cplusplus
extern "C"
#endif
void thread_dispatch(){
    __asm__ volatile("li a0, 0x13");
    __asm__ volatile("ecall");
}

