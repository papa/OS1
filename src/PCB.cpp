//
// Created by os on 4/27/22.
//

#include "../h/PCB.hpp"
#include "../h/syscall_c.h"

PCB* PCB::running = 0;
uint64 PCB::timeSliceCounter = 0;

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

void PCB::start()
{
    Scheduler::put(this);
}

void PCB::runner()
{
    Riscv::printString("Runner started...\n");
    Riscv::popSppSpie();

    running->body(running->args);

    thread_exit();
}

void PCB::dispatch()
{
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    if(old->getState() == PCB::RUNNING)
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    PCB::running->setState(PCB::RUNNING);
    //Riscv::printString("Switching context...\n");

    if(PCB::running->systemThread)
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);


    PCB::contextSwitch(&old->context, &running->context);
}

void *PCB::operator new(size_t size) {
    return kmalloc(size);
}

void PCB::operator delete(void *p) {
    kfree(p);
}

PCB::~PCB() {
    kfree(beginSP);
}

void PCB::initialize()
{
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    mainSystem->systemThread = true;
    PCB::running = Scheduler::get();
    PCB::running->setState(PCB::RUNNING);
}
