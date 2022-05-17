//
// Created by os on 4/8/22.
//

#include "../h/syscall_cpp.hpp"

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
void Thread::start()
{
    if(myHandle == 0)
    {
        int retval = thread_create((void**)&myHandle, f, args);
        if(retval != 0)
        {
            //todo
            //what then
        }
    }
    else
    {
        //todo
        //what
    }

}

void Thread::dispatch() {
    thread_dispatch();
}

void Thread::sleep(time_t time) {
    time_sleep(time);
}

Thread::Thread(void (*body)(void *), void *args) {
    myHandle = 0;
    f = body;
    this->args = args;
}

Thread::Thread()
{
    myHandle = 0;

    args = (void*)this;
}

void Thread::runner(Thread *t) {
    Riscv::popSppSpie();
    //t->run();
    //todo
    //sta ovde treba da se uradi, mozda thread_exit()
    thread_dispatch();
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
