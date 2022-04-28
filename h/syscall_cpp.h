//
// Created by os on 4/8/22.
//

#ifndef PROJECT_BASE_V1_0_SYSCALL_CPP_H
#define PROJECT_BASE_V1_0_SYSCALL_CPP_H

#include "syscall_c.h"
#include "PCB.h"

void * operator new(size_t size);

void operator delete(void * p);

//todo
//virtual pravi problem

class Thread
{
public:
    Thread(void (*body)(void*), void* arg);

    //virtual ~Thread();

    void start();

    static void dispatch();

    static void sleep(time_t);
protected:
    Thread();

    //virtual void run();

private:
    PCB* myHandle;
};

#endif //PROJECT_BASE_V1_0_SYSCALL_CPP_H
