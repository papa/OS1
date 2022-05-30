//
// Created by os on 5/11/22.
//

#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    PCB::running->setState(PCB::SLEEPING);
    //trapPrintString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    while(curr != 0)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
        curr=curr->nextPCB;
    }

    if(prev == 0)
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
}

void SleepPCBList::tryToWakePCBs()
{
    //trapPrintString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    if(curr == 0)
    {
        //trapPrintString("No sleeping PCBs...\n");
        return;
    }
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    {
        PCB *old = curr;
        curr = curr->nextPCB;
        old->nextPCB = 0;
        Scheduler::put(old);
        sleepingPCBHead = curr;
    }
}


