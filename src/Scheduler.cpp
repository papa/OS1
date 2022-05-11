//
// Created by os on 4/27/22.
//

#include "../h/Scheduler.h"
#include "../h/PCB.h"

//todo
Scheduler* Scheduler::scheduler = 0;
PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void Scheduler::put2(PCB *pcb) {
    pcb->setState(PCB::READY);
    if(scheduler == 0)
        scheduler = new Scheduler();
    scheduler->queuePCB.push(pcb);
}

PCB *Scheduler::get2() {
    if(scheduler == 0)
        scheduler = new Scheduler();
    PCB* fr = scheduler->queuePCB.front();
    scheduler->queuePCB.pop();
    return fr;
}

void *Scheduler::operator new(size_t size) {
    return kmalloc(size);
}

void Scheduler::operator delete(void *p) {
    //todo
    kfree(p);
}

int Scheduler::getSize() {
    if(scheduler == 0)
        scheduler = new Scheduler();
    return scheduler->queuePCB.size();
}

void Scheduler::put(PCB *pcb) {
    pcb->nextPCB = 0;
    if(schedulerPCBHead == 0)
    {
        schedulerPCBHead = schedulerPCBTail = pcb;
    }
    else
    {
        schedulerPCBTail->nextPCB = pcb;
        schedulerPCBTail = pcb;
    }
}

PCB *Scheduler::get() {
    if(schedulerPCBHead == 0)
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    {
        schedulerPCBHead = schedulerPCBTail = 0;
    }
    else
    {
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    }
    retval->nextPCB = 0;
    return retval;
}
