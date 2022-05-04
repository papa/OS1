//
// Created by os on 4/27/22.
//

#ifndef PROJECT_BASE_V1_0_PCB_H
#define PROJECT_BASE_V1_0_PCB_H

#include "../lib/hw.h"
#include "Scheduler.h"
#include "Riscv.h"

class PCB
{
public:
    using Body = void (*)(void*);

    PCB(Body body,  void* args, void* stack_space, uint64 timeSlice);

    void start();
    static void dispatch();
    static void sleep(time_t);

    static PCB* running;

    static const uint64 THREAD_CREATE = 0x11;

    static const uint64 THREAD_EXIT = 0x12;
    static const uint64 THREAD_DISPATCH = 0x13;

    static uint64 timeSliceCounter;

    uint64 getTimeSlice() { return timeSlice;}

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED};

    State getState() {return state;}
    void setState(State s) {state = s;}

protected:
    //todo
    //virtual pravi probleme
    //virtual void run() {}
private:

    uint64 timeSlice;

    typedef struct Context
    {
        uint64 pcbSP;
        uint64 ra;
    }Context;

    static void contextSwitch(PCB::Context* oldContext, PCB::Context* newContext);
    //static void yield(PCB* oldPCB, PCB* newPCB);
    static void runner();

    Body body;
    void* args;

    State state;

    Context context;
    size_t stackSize;

    uint64 pID;
};


#endif //PROJECT_BASE_V1_0_PCB_H
