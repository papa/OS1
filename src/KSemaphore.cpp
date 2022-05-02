//
// Created by os on 5/2/22.
//

#include "../h/KSemaphore.h"
#include "../h/MemoryAllocator.h"

KSemaphore::KSemaphore(int val) {
    this->val = val;
    queueBlocked = (Queue<PCB*>*)kmalloc(sizeof(Queue<PCB*>));
}

void KSemaphore::wait() {
    //todo
}

void KSemaphore::signal() {
    //todo
}

KSemaphore::~KSemaphore() {
    //todo
}
