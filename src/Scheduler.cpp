//
// Created by os on 4/27/22.
//

#include "../h/Scheduler.hpp"
#include "../h/PCB.hpp"

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;


void *Scheduler::operator new(size_t size)
{
    return kmalloc(size);
}

void Scheduler::operator delete(void *p)
{
    kfree(p);
}

int Scheduler::getSize()
{
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    while(curr != 0)
    {
        sz++;
        curr = curr->nextPCB;
    }
    return sz;
}

void Scheduler::put(PCB *pcb)
{
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    if(schedulerPCBHead == 0)
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
        schedulerPCBTail = pcb;
    }
}

PCB *Scheduler::get()
{
    if(schedulerPCBHead == 0)
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    retval->nextPCB = 0;
    return retval;
}
