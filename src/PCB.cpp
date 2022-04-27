//
// Created by os on 4/27/22.
//

#include "../h/PCB.h"

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

void PCB::dispatch() {

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

    //this->body(this->args);

    //pcbThread->run();
}

void PCB::yield(PCB *oldThread, PCB *newThread) {

}