//
// Created by os on 4/8/22.
//

#include "../h/syscall_cpp.h"

//general
void * operator new(size_t size)
{
    return mem_alloc(size);
}

void operator delete(void * p)
{
   mem_free(p);
}

//Thread

//todo
//diskusija u os1 proj sheet-u
void Thread::start() {
    //myHandle->start();
}

void Thread::dispatch() {
    //PCB::dispatch();
}

void Thread::sleep(time_t time) {
    PCB::sleep(time);
}
