//
// Created by os on 4/27/22.
//

#ifndef PROJECT_BASE_V1_0_PCB_HPP
#define PROJECT_BASE_V1_0_PCB_HPP

#include "../lib/hw.h"
#include "Scheduler.hpp"
#include "Riscv.hpp"

class PCB
{
public:
    using Body = void (*)(void*);

    PCB(Body body,  void* args, void* stack_space, uint64 timeSlice);
    ~PCB();

    void start();
    static void dispatch();
    static void sleep(time_t);

    static PCB* running;
    static PCB* exitingPCB;

    static uint64 timeSliceCounter;
    uint64 getTimeSlice() { return timeSlice;}

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    void setState(State s) {state = s;}
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    uint64 getTimeToSleep() {return timeToSleep;}

    static const uint64 THREAD_CREATE = 0x11;
    static const uint64 THREAD_EXIT = 0x12;
    static const uint64 THREAD_DISPATCH = 0x13;
    static const uint64 TIME_SLEEP = 0x31;

    //next PCB in sleeping queue
    //or suspended queue
    PCB* nextPCB;

protected:
    //todo
    //virtual pravi probleme
    //virtual void run() {}
private:

    uint64 timeSlice;

    uint64 timeToSleep = 0;

    typedef struct Context
    {
        uint64 pcbSP;
        uint64 ra;
    }Context;

    static void contextSwitch(PCB::Context* oldContext, PCB::Context* newContext);
    static void contextSwitchExiting(PCB::Context* newContext);

    static void runner();

    Body body;
    void* args;

    void* beginSP;

    State state;

    Context context;

    //todo need this maybe
    size_t stackSize;
};


#endif //PROJECT_BASE_V1_0_PCB_HPP