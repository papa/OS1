//
// Created by os on 4/27/22.
//

#include "../h/PCB.h"
#include "../h/syscall_c.h"

PCB* PCB::running = 0;
uint64 PCB::timeSliceCounter = 0;

//todo
//kreiranje pocetnog konteksta niti
//stack space da li treba na poslednju poziciju da ide
PCB::PCB(Body body, void *args, void* stack_space) :
    body(body), args(args),context({
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE - 1),
        (uint64)&PCB::runner
    })
{
    Scheduler::put(this);
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
    Riscv::printString("runner started...\n");
   Riscv::popSppSpie();
   running->body(running->args);
   running->setFinished(false);
   thread_dispatch();
}

void PCB::dispatch()
{
    //Riscv::pushRegisters();

    PCB* old = running;
    if(!old->finished) Scheduler::put(old);
    running = Scheduler::get();
    Riscv::printString("got the new thread\n");
    PCB::contextSwitch(&old->context, &running->context);

    //Riscv::popRegisters();
}

void *PCB::operator new(size_t size) {
    return kmalloc(size);
}

void PCB::operator delete(void *p) {
    kfree(p);
}
