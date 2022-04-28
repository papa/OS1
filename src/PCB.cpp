//
// Created by os on 4/27/22.
//

#include "../h/PCB.h"

PCB* PCB::running = 0;
uint64 PCB::timeSliceCounter = 0;

//todo
//kreiranje pocetnog konteksta niti

//todo
//stack space da li treba na poslednju poziciju da ide
PCB::PCB(Body body, void *args, void* stack_space) :
    body(body), args(args),context({
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
        (uint64)&PCB::runner
    })
{

}

void PCB::sleep(time_t time) {

}

void PCB::start()
{
    Scheduler::put(this);
}

//todo
void PCB::runner() {

   Riscv::popSppSpie();
   running->body(running->args);

}

void PCB::dispatch() {
    Riscv::pushRegisters();

    PCB* old = running;
    if(!old->finished) Scheduler::put(old);
    running = Scheduler::get();

    PCB::contextSwitch(&old->context, &running->context);
    //yield(old, running);

    Riscv::popRegisters();
}
