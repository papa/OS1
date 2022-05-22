//
// Created by os on 4/27/22.
//

#include "../h/PCB.hpp"
#include "../h/syscall_c.h"

PCB* PCB::running = 0;
PCB* PCB::exitingPCB = 0;
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

//todo
void PCB::runner()
{
    Riscv::printString("Runner started...\n");
    Riscv::popSppSpie();

    //for(uint64 i = 0 ;i < 10000000000UL;i++) {}
    //Riscv::printString("ttttttt\n");

    running->body(running->args);

    //todo
    //da li ovde treba da se predje u kernel rezim mozda
    //mozda moze da se iskoristi lock za neku promenljivu za PCB::running
    //kako ne bi pristupalo vise niti tome, jer malo je
    //nezgodna promena rezima ovde
    //running->setState(PCB::FINISHED);
    Riscv::printString("PCB finished\n");

    //todo
    //da li thread_exit ili dispatch
    thread_exit();
    //thread_dispatch();
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
