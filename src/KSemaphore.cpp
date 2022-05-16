//
// Created by os on 5/2/22.
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val) {
    this->val = this->beginVal = val;
    headBlocked = tailBlocked = 0;
}

//todo
uint64 KSemaphore::wait() {
    if(--val < 0)
        block();

    return 0;
}

//todo
uint64 KSemaphore::signal() {
    if(++val <= 0)
        unblock();
    else
        val = beginVal;

    return 0;
}

KSemaphore::~KSemaphore() {
    //todo
    while(getFirstBlocked() != 0)
    {
        PCB* pcb = getFirstBlocked();
        removeFirstBlocked();
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    pcb->nextPCB = 0;
    if(headBlocked == 0)
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
        tailBlocked = pcb;
    }
}

void KSemaphore::block() {
    PCB::running->setState(PCB::SUSPENDED);
    addToBlocked(PCB::running);
    PCB::dispatch();
}

PCB* KSemaphore::getFirstBlocked()
{
   return headBlocked;
}

void KSemaphore::removeFirstBlocked()
{
    if(headBlocked == 0)
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    first->nextPCB = 0;
    if(headBlocked == 0)
        tailBlocked =0;
}

void KSemaphore::unblock() {
    PCB* fr = getFirstBlocked();
    removeFirstBlocked();
    if(fr != 0)
        Scheduler::put(fr);
}

void *KSemaphore::operator new(size_t size) {
    return kmalloc(size);
}

void KSemaphore::operator delete(void *p) {
    kfree(p);
}
