//
// Created by os on 4/27/22.
//

#include "../h/PCB.h"
#include "../h/Riscv.h"

PCB* PCB::running = 0;

//todo
//kreiranje pocetnog konteksta niti

//todo
//stack space da li treba na poslednju poziciju da ide
PCB::PCB(void (*body)(void *), void *args, void* stack_space) :
    context({
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
        (uint64)&PCB::runner,
        (uint64)body,
        (uint64)args
    }), finished(false)
{

}

void PCB::sleep(time_t time) {

}

//void PCB::run() {
//
//}

//PCB::~PCB() {
//
//}

void PCB::start()
{
    Scheduler::put(this);
}

//todo
void PCB::runner() {

    void (*start_routine)(void*);
    start_routine = (void (*)(void*))running->context.body;
    start_routine((void*)running->context.args);

    //pcbThread->run();
}

void PCB::dispatch() {
    Riscv::pushRegisters();

    PCB* old = running;
    if(!old->finished) Scheduler::put(old);
    running = Scheduler::get();

    yield(old, running);

    Riscv::popRegisters();
}

void PCB::yield(PCB *oldPCB, PCB *newPCB) {
    PCB::contextSwitch(&oldPCB->context, &newPCB->context);
}
