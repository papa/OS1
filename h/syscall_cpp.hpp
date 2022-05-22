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

    int start();

    static void dispatch();

    static void sleep(time_t);

    //todo
    //vrati u private
    //ovde je samo za potrebe testiranja
    thread_t myHandle;
protected:
    Thread();

    virtual void run() {}
private:
    void (*f)(void*);
    void* args;
    static void runner(void* t);
};

class Semaphore
{
public:
    Semaphore(unsigned init = 1);

    virtual ~Semaphore();

    int wait();
    int signal();

private:
    sem_t myHandle;
};

class Console
{
public:
    static char getc();
    static void putc(char);
};

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
private:
    static void runner(void* pt);
    time_t time;
};

#endif //PROJECT_BASE_V1_0_SYSCALL_CPP_HPP