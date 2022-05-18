//
// Created by os on 4/8/22.
//

#ifndef PROJECT_BASE_V1_0_SYSCALL_CPP_HPP
#define PROJECT_BASE_V1_0_SYSCALL_CPP_HPP

#include "syscall_c.h"
#include "PCB.hpp"
#include "KSemaphore.hpp"

void * operator new(size_t size);

void operator delete(void * p);

class Thread
{
public:
    Thread(void (*body)(void*), void* args);

    //todo
    virtual ~Thread();

    void start();

    static void dispatch();

    static void sleep(time_t);

    //todo
    //vrati u private
    //ovde je samo za potrebe testiranja
    PCB* myHandle;
protected:
    //todo
    Thread();

    //todo
    virtual void run() {}
private:
    void (*f)(void*);
    void* args;
    static void runner(Thread* t);
};

class Semaphore
{
public:
    Semaphore(unsigned init = 1);

    //todo
    //virtual pravi problem
    virtual ~Semaphore();

    void wait();
    void signal();

private:
    KSemaphore* myHandle;
};

#endif //PROJECT_BASE_V1_0_SYSCALL_CPP_HPP
