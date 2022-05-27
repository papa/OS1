//
// Created by os on 4/8/22.
//

#include "../h/syscall_cpp.hpp"

struct ArgsPeriodic
{
    void* pt;
    uint64 time;
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
};

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

int Thread::start()
{
    if(myHandle != 0)
    {
        return thread_start(myHandle);
    }
    else
    {
        //todo
        return -1;
    }

}

void Thread::dispatch() {
    thread_dispatch();
}

void Thread::sleep(time_t time)
{
    time_sleep(time);
}

Thread::Thread(void (*body)(void *), void *args)
{
    thread_make_pcb((void**)&myHandle, body, args);
}

Thread::Thread()
{
    thread_make_pcb((void**)&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    Riscv::printString("Thread runner started...\n");
    Thread* thr = (Thread*)t;
    thr->run();
}

Thread::~Thread()
{
    mem_free(myHandle);
}

//Semaphore

int Semaphore::wait()
{
    if(myHandle == 0)
        return -1;
    return sem_wait((void *) myHandle);
}

Semaphore::Semaphore(unsigned int init)
{
    int retval = sem_open((void**)&myHandle, init);
    if(retval != 0)
    {
        //todo
        //what then
        myHandle = 0;
    }
}

int Semaphore::signal()
{
    if(myHandle == 0)
        return -1;
    return sem_signal((void*)myHandle);
}

Semaphore::~Semaphore() {
    mem_free(myHandle);
}

//Console

char Console::getc()
{
    return 0;
}

void Console::putc(char)
{

}

//PeriodicThread

PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
{

}

void PeriodicThread::runner(void* arg)
{
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    uint64 time = ((ArgsPeriodic*)arg)->time;

    while(true)
    {
        pThread->periodicActivation();
        Thread::sleep(time);
    }
}