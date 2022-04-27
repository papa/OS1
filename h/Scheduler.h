//
// Created by os on 4/27/22.
//

#ifndef PROJECT_BASE_V1_0_SCHEDULER_H
#define PROJECT_BASE_V1_0_SCHEDULER_H

#include "../lib/hw.h"
#include "Queue.h"
#include "MemoryAllocator.h"

class PCB;

class Scheduler
{
public:
    static void put(PCB* pcb);
    static PCB* get();

    //void * operator new(size_t size);
    //void operator delete(void* p);
private:
    static Queue<PCB*>* queuePCB;
};

#endif //PROJECT_BASE_V1_0_SCHEDULER_H
