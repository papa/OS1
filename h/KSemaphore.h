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
private:
    int val;
    Queue queueBlocked;
};

#endif //PROJECT_BASE_V1_0_KSEMAPHORE_H
