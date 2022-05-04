//
// Created by os on 4/8/22.
//

#ifndef PROJECT_BASE_V1_0_SYSCALL_CPP_H
#define PROJECT_BASE_V1_0_SYSCALL_CPP_H

#include "syscall_c.h"
#include "PCB.h"
#include "KSemaphore.h"

void * operator new(size_t size);

void operator delete(void * p);

//todo
//virtual pravi problem

class Thread
{
public:
    Thread(void (*body)(void*), void* args);

    //virtual ~Thread();

    void start();

    static void dispatch();

    static void sleep(time_t);

    //todo
    //only for testing
    //return it to private
    PCB* myHandle;
protected:
    Thread();

    //virtual void run();

private:

};

class Semaphore
{
public:
    Semaphore(unsigned init = 1);
    virtual ~Semaphore();

    void wait();
    void signal();

private:
    KSemaphore* myHandle;
};

#endif //PROJECT_BASE_V1_0_SYSCALL_CPP_H
