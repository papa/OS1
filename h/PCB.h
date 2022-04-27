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
    PCB(void (*body)(void*), void* args);
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

    enum State {CREATED, READY, RUNNING, BLOCKED, FINISHED, IDLE};

    uint64*  pcbSP;
    size_t stackSize;
    State state;

    static void runner();

    void (*body)(void*);
    void* args;

    uint64 pID;
};


#endif //PROJECT_BASE_V1_0_PCB_H
