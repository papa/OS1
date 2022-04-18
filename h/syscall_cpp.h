//
// Created by os on 4/8/22.
//

#ifndef PROJECT_BASE_V1_0_SYSCALL_CPP_H
#define PROJECT_BASE_V1_0_SYSCALL_CPP_H

#include "syscall_c.h"

class Thread;

void * operator new(size_t size);

void operator delete(void * p);

class MemoryAllocator
{
private:
    static MemoryAllocator* memoryAllocator;
    MemoryAllocator();
    void * operator new(size_t size);
    void operator delete(void* p);
public:
    static MemoryAllocator* getMemoryAllocator();

    ~MemoryAllocator();

    void* mem_alloc(size_t size);
    int mem_free(void* p);
};

template <typename T>
class Queue
{
private:
    typedef struct Elem
    {
        T data;
        struct Elem* next;
    }Elem;
    Elem* first;
    Elem* last;
public:
    void pop();
    T front();
    void push(T t);
    Queue();
    ~Queue();
    void * operator new(size_t size);
    void operator delete(void* p);
};

class Scheduler
{
public:
    static Scheduler* getScheduler();
    void put(Thread* thread);
    Thread* get();
    ~Scheduler();
    void * operator new(size_t size);
    void operator delete(void* p);
private:
    static Scheduler* scheduler;
    Scheduler();
    Queue<Thread*>* queueThreads;
};

class Thread
{
public:
    Thread(void (*body)(void*), void* arg);
    //virtual ~Thread();

    void start();

    static void dispatch();

    static void sleep(time_t);

    static Thread* runningThread;
protected:
    Thread();
    //todo
    //virtual pravi probleme
    //virtual void run();
private:
    void (*f)(void*);
    void* args;
    //todo
    //da li je potrebno da se definise tip thread_t
    int myHandle;

    uint64 pID;

    //static const int NEW;
    //static const int READY;
    //static const int RUNNING;
    //static const int BLOCKED;
    //static const int FINISHED;
};


class PCB
{
private:

    enum State {CREATED, READY, RUNNING, BLOCKED, FINISHED, IDLE};

    Thread* pcbThread;
    uint64*  pcbSP;
    size_t stackSize;
    size_t timeSlice;
    State state;
public:
    PCB(void (*body)(void*), void* arg, size_t stackSize = DEFAULT_STACK_SIZE, size_t timeSlice = DEFAULT_TIME_SLICE);
    ~PCB();

    void start();

    static PCB* runningPCB;

};

#endif //PROJECT_BASE_V1_0_SYSCALL_CPP_H
