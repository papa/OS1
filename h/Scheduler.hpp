//
// Created by os on 4/27/22.
//

#ifndef PROJECT_BASE_V1_0_SCHEDULER_HPP
#define PROJECT_BASE_V1_0_SCHEDULER_HPP

#include "../lib/hw.h"
#include "MemoryAllocator.hpp"
#include "Queue.hpp"

class PCB;

class Scheduler
{
public:
    static void put(PCB* pcb);
    static PCB* get();

    void* operator new(size_t size);
    void operator delete(void *p);

    static int getSize();

    static PCB* schedulerPCBHead;
    static PCB* schedulerPCBTail;

private:
    //todo maybe need this
    Queue queuePCB;
};

#endif //PROJECT_BASE_V1_0_SCHEDULER_HPP
