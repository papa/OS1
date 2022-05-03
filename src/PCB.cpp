//
// Created by os on 4/27/22.
//

#include "../h/PCB.h"
#include "../h/syscall_c.h"

PCB* PCB::running = 0;
uint64 PCB::timeSliceCounter = 0;

PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    timeSlice(timeSlice),
    body(body),
    args(args),
    context({
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
        (uint64)&PCB::runner
    })
{

}

void PCB::sleep(time_t time)
{
    //todo
}

//todo
//da li ovde vec treba da bude lockovano
//ili treba ovde bas lock da se uradi
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
    running->setFinished(true);
    Riscv::printString("Thread finished\n");
    thread_dispatch();
}

void PCB::dispatch()
{
    Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    if(!old->finished) Scheduler::put(old);
    PCB::running = Scheduler::get();

    Riscv::printString("Switching context...\n");

    PCB::contextSwitch(&old->context, &running->context);
}

void *PCB::operator new(size_t size) {
    return kmalloc(size);
}

void PCB::operator delete(void *p) {
    //todo
    //kfree(p);
}
