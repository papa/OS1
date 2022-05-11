//
// Created by os on 4/27/22.
//

#ifndef PROJECT_BASE_V1_0_SCHEDULER_H
#define PROJECT_BASE_V1_0_SCHEDULER_H

#include "../lib/hw.h"
#include "MemoryAllocator.h"
#include "Queue.h"

class PCB;

class Scheduler
{
public:
    static void put(PCB* pcb);
    static PCB* get();

    static void put2(PCB* pcb);
    static PCB* get2();

    void* operator new(size_t size);
    void operator delete(void *p);

    static int getSize();

    static PCB* schedulerPCBHead;
    static PCB* schedulerPCBTail;

private:
    //static Queue<PCB*>* queuePCB;
    //todo
    //resi ovo
    Queue queuePCB;

    static Scheduler* scheduler;
};

#endif //PROJECT_BASE_V1_0_SCHEDULER_H
