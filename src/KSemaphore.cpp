//
// Created by os on 5/2/22.
//

#include "../h/KSemaphore.h"
#include "../h/MemoryAllocator.h"

KSemaphore::KSemaphore(int val) {
    this->val = this->beginVal = val;
    //queueBlocked = (Queue<PCB*>*)kmalloc(sizeof(Queue<PCB*>));
}

void KSemaphore::wait() {
    //todo
    if(--val < 0)
        block();
}

void KSemaphore::signal() {
    //todo
    if(++val <= 0)
        unblock();
    else
        val = beginVal;
}

KSemaphore::~KSemaphore() {
    //todo
}

void KSemaphore::block() {
    //todo
    //postavi stanje
    PCB::dispatch();
}

void KSemaphore::unblock() {
    PCB* fr = queueBlocked.front();
    queueBlocked.pop();
    if(fr != 0)
    {
        //todo
        //postavi stanje
        Scheduler::put(fr);
    }

}
