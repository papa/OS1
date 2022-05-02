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
    //int retval = thread_create(&myHandle, )
}

void Thread::dispatch() {
    thread_dispatch();
}

void Thread::sleep(time_t time) {
    PCB::sleep(time);
}

Thread::Thread(void (*body)(void *), void *args) {
    int retval = thread_create((void**)&myHandle, body, args);
    if(retval != 0)
    {
        //todo
        //what then
    }
}

Thread::Thread() {

}
