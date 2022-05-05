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

//Semaphore

void Semaphore::wait() {
    int retval = sem_wait((void*)myHandle);
    if(retval != 0)
    {
        //todo
        //what then
    }
}

Semaphore::Semaphore(unsigned int init) {
    int retval = sem_open((void**)&myHandle, init);
    if(retval != 0)
    {
        //todo
        //what then
    }
}

void Semaphore::signal() {
    int retval = sem_signal((void*)myHandle);
    if(retval != 0)
    {
        //todo
        //what then
    }

}
