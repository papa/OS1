//
// Created by os on 5/2/22.
//

#include "../h/KSemaphore.h"
#include "../h/MemoryAllocator.h"

KSemaphore::KSemaphore(int val) {
    this->val = this->beginVal = val;
}

//todo
void KSemaphore::wait() {
    if(--val < 0)
        block();
}

//todo
void KSemaphore::signal() {
    if(++val <= 0)
        unblock();
    else
        val = beginVal;
}

KSemaphore::~KSemaphore() {
    //todo
}

//todo
void KSemaphore::block() {
    PCB::running->setState(PCB::SUSPENDED);
    PCB::dispatch();
}

//todo
void KSemaphore::unblock() {
    PCB* fr = queueBlocked.front();
    queueBlocked.pop();
    if(fr != 0)
    {
        fr->setState(PCB::READY);
        Scheduler::put(fr);
    }
}
