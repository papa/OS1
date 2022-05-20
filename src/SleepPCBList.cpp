//
// Created by os on 5/11/22.
//

#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    PCB::running->setState(PCB::SLEEPING);
    //Riscv::printString("Inserting sleeping PCB...\n");
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
    {
        sleepingPCBHead = PCB::running;
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
        prev->nextPCB = PCB::running;
    }
}

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    if(curr == 0)
    {
        //Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    {
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
        {
            PCB *old = curr;
            curr = curr->nextPCB;
            old->nextPCB = 0;
            Scheduler::put(old);
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    }
}


