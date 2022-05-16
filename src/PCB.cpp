//
// Created by os on 4/27/22.
//

#include "../h/PCB.hpp"
#include "../h/syscall_c.h"

PCB* PCB::running = 0;
PCB* PCB::exitingPCB = 0;
uint64 PCB::timeSliceCounter = 0;
PCB* PCB::sleepingPCBHead = 0;

PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    timeSlice(timeSlice),
    body(body),
    args(args),
    beginSP(stack_space),
    context({
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
        (uint64)&PCB::runner
    })
{
    Scheduler::put(this);
    nextPCB = 0;
}

void PCB::sleep(time_t time)
{
    //todo
}

//todo
//da li ovde vec treba da bude lockovano
//ili treba ovde bas lock da se uradi
//ili se ovo uvek poziva iz sistemskog rezima
void PCB::start()
{
    Scheduler::put(this);
}

//todo
void PCB::runner()
{
    Riscv::printString("Runner started...\n");
    Riscv::popSppSpie();
    running->body(running->args);
    running->setState(PCB::FINISHED);
    Riscv::printString("PCB finished\n");

    //todo
    //da li thread_exit ili dispatch
    //thread_exit();
    thread_dispatch();
}

void PCB::dispatch()
{
    Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    if(old->getState() == PCB::RUNNING)
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    PCB::running->setState(PCB::RUNNING);
    Riscv::printString("Switching context...\n");

    if(PCB::exitingPCB == 0)
    {
        PCB::contextSwitch(&old->context, &running->context);
    }
    else
    {
        delete PCB::exitingPCB;
        PCB::exitingPCB = 0;
        PCB::contextSwitchExiting(&running->context);
    }

}

void *PCB::operator new(size_t size) {
    return kmalloc(size);
}

void PCB::operator delete(void *p) {
    //todo
    kfree(p);
}

PCB::~PCB() {
    kfree(beginSP);
}

void PCB::insertSleepingPCB()
{
    Riscv::printString("Inserting sleeping PCB...\n");
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

void PCB::tryToWakePCBs() {
    Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    while(curr != 0)
    {
        if(curr->getTimeToSleep() == 1UL)
        {
            Riscv::printString("PCB woken...\n");
            PCB* old = curr;
            curr=curr->nextPCB;
            old->setState(PCB::READY);
            old->nextPCB = 0;
            Scheduler::put(old);
            sleepingPCBHead = curr;
        }
        else
        {
            curr->setTimeToSleep(curr->getTimeToSleep() - 1);
            curr = curr->nextPCB;
        }
    }
}
