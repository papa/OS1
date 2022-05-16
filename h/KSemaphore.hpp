//
// Created by os on 5/2/22.
//

#ifndef PROJECT_BASE_V1_0_KSEMAPHORE_HPP
#define PROJECT_BASE_V1_0_KSEMAPHORE_HPP

#include "../lib/hw.h"
#include "PCB.hpp"

class KSemaphore
{
public:
    KSemaphore(int val = 0);
    ~KSemaphore();

    uint64 wait();
    uint64 signal();

    PCB* headBlocked;
    PCB* tailBlocked;

    void* operator new(size_t size);
    void operator delete(void *p);

    static const uint64 SEM_OPEN = 0x21;
    static const uint64 SEM_CLOSE = 0x22;
    static const uint64 SEM_WAIT = 0x23;
    static const uint64 SEM_SIGNAL = 0x24;
private:
    int val, beginVal;

    void block();
    void unblock();

    PCB* getFirstBlocked();
    void removeFirstBlocked();
    void addToBlocked(PCB* pcb);
};

#endif //PROJECT_BASE_V1_0_KSEMAPHORE_HPP
