//
// Created by os on 4/27/22.
//

#include "../h/PCB.h"

//todo
//kreiranje pocetnog konteksta niti

PCB::PCB(void (*body)(void *), void *args) {
    this->body = body;
    this->args = args;
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

/*
void *PCB::operator new(size_t size) {
    return 0;
    //return ::operator new(sizeof(PCB));
}

void PCB::operator delete(void *p) {

}
*/