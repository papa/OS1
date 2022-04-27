//
// Created by os on 4/27/22.
//

#ifndef PROJECT_BASE_V1_0_PCB_H
#define PROJECT_BASE_V1_0_PCB_H

#include "../lib/hw.h"
#include "Scheduler.h"

class PCB
{
public:
    PCB(void (*body)(void*), void* args, void* stack_space);
    //virtual ~Thread();
    void start();
    static void dispatch();
    static void sleep(time_t);

    static PCB* running;

protected:
    //todo
    //virtual pravi probleme
    //virtual void run() {}
private:

    typedef struct Context
    {
        uint64 pcbSP;
        uint64 ra;
        uint64 body;
        uint64 args;
    }Context;

    static void contextSwitch(PCB::Context* oldContext, PCB::Context* newContext);
    static void yield(PCB* oldPCB, PCB* newPCB);
    static void runner();


    //enum State {CREATED, READY, RUNNING, BLOCKED, FINISHED, IDLE};

    Context context;
    size_t stackSize;
    //State state;

    bool finished;
    uint64 pID;
};


#endif //PROJECT_BASE_V1_0_PCB_H
