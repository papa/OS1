//
// Created by os on 4/27/22.
//

#include "../h/PCB.hpp"
#include "../h/syscall_c.h"
#include "../h/SleepPCBList.hpp"

PCB* PCB::running = 0;
uint64 PCB::timeSliceCounter = 0;
uint64 PCB::savedRegA4 = 0;

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
    //Scheduler::put(this);
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
    //Scheduler::print();
    //Riscv::printInteger(Scheduler::getSize());
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    if(old->getState() == PCB::RUNNING)
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    PCB::running->setState(PCB::RUNNING);
    //Riscv::printString("Switching context...\n");

    //if(PCB::running->systemThread)
    //    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    //else
    //    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);

    PCB::contextSwitch(&old->context, &running->context);
}

void *PCB::operator new(size_t size) {
    return kmalloc(size);
}

void PCB::operator delete(void *p) {
    kfree(p);
}

PCB::~PCB()
{
    kfree(beginSP);
}

void PCB::initialize()
{
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    mainSystem->start();
    mainSystem->systemThread = true;
    PCB::running = Scheduler::get();
    PCB::running->setState(PCB::RUNNING);
}

bool PCB::isFinished()
{
    return state == PCB::FINISHED;
}

void PCB::threadExitHandler()
{
    Riscv::printString("Exiting thread...\n");
    PCB::timeSliceCounter = 0;
    PCB::running->setState(PCB::FINISHED);
    PCB::dispatch();
    __asm__ volatile("li a0, 0");
}

void PCB::threadDispatchHandler()
{
    PCB::timeSliceCounter = 0;
    PCB::dispatch();
}

void PCB::threadSleepHandler()
{
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    PCB::timeSliceCounter = 0;
    PCB::running->setTimeToSleep(time);
    SleepPCBList::insertSleepingPCB();
    PCB::dispatch();
    __asm__ volatile("li a0, 0x0");
}

void PCB::threadCreateHandler()
{
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    __asm__ volatile("mv %0, a3" : "=r"(args));

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);

    (*threadHandle) = newPCB;

    if (newPCB == 0)
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
        __asm__ volatile("li a0, 0");
    }
}

void PCB::threadStartHandler()
{
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    if(pcb != 0)
    {
        pcb->start();
        __asm__ volatile("li a0, 0");
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }

}

void PCB::threadMakePCBHandler()
{
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    __asm__ volatile("mv %0, a3" : "=r"(args));

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);

    (*threadHandle) = newPCB;

    if (newPCB == 0)
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
}
