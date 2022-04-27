//
// Created by os on 4/27/22.
//

#include "../h/Scheduler.h"
#include "../h/PCB.h"

//todo
Queue<PCB*>* Scheduler::queuePCB = (Queue<PCB*>*)MemoryAllocator::mem_alloc(sizeof(Queue<PCB*>));

void Scheduler::put(PCB *pcb) {
    //Scheduler::queuePCB->push(pcb);
}

PCB *Scheduler::get() {
    return 0;
}
