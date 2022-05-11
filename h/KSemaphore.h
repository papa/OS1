//
// Created by os on 5/2/22.
//

#ifndef PROJECT_BASE_V1_0_KSEMAPHORE_H
#define PROJECT_BASE_V1_0_KSEMAPHORE_H

#include "../lib/hw.h"
#include "Queue.h"
#include "PCB.h"

class KSemaphore
{
public:
    KSemaphore(int val = 0);
    void wait();
    void signal();
    ~KSemaphore();

    static const uint64 SEM_OPEN = 0x21;
    static const uint64 SEM_CLOSE = 0x22;
    static const uint64 SEM_WAIT = 0x23;
    static const uint64 SEM_SIGNAL = 0x24;

    PCB* headBlocked;
    PCB* tailBlocked;

private:
    int val, beginVal;
    Queue queueBlocked;
    void block();
    void unblock();
    PCB* getFirstBlocked();
    void removeFirstBlocked();
    void addToBlocked(PCB* pcb);
};

#endif //PROJECT_BASE_V1_0_KSEMAPHORE_H
