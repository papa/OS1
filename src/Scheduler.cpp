//
// Created by os on 4/27/22.
//

#include "../h/Scheduler.h"
#include "../h/PCB.h"

//todo
Queue<PCB*>* Scheduler::queuePCB = (Queue<PCB*>*)MemoryAllocator::mem_alloc(sizeof(Queue<PCB*>));

void Scheduler::put(PCB *pcb) {
    //queuePCB->push(pcb);
}

PCB *Scheduler::get() {
    return 0;
    //PCB* fr = queuePCB->front();
    //queuePCB->pop();
    //return fr;
}

/*
void *Scheduler::operator new(size_t size) {
    return ::operator new(sizeof(Scheduler));
}

void Scheduler::operator delete(void *p) {
    ::operator delete(p);
}*/