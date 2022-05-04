//
// Created by os on 4/27/22.
//

#include "../h/Scheduler.h"
#include "../h/PCB.h"

//todo
Scheduler* Scheduler::scheduler = 0;

void Scheduler::put(PCB *pcb) {
    //Scheduler::queuePCB->push(pcb);
    //Riscv::printInteger(sizeof(Scheduler));
    //Riscv::printString("needs to put\n");
    if(scheduler == 0)
        scheduler = new Scheduler();
    scheduler->queuePCB.push(pcb);
    //Riscv::printString("put\n");
}

PCB *Scheduler::get() {
    if(scheduler == 0)
        scheduler = new Scheduler();
    PCB* fr = scheduler->queuePCB.front();
    scheduler->queuePCB.pop();
    return fr;
}

void *Scheduler::operator new(size_t size) {
    return kmalloc(size);
}

void Scheduler::operator delete(void *p) {
    //todo
    kfree(p);
}

int Scheduler::getSize() {
    if(scheduler == 0)
        scheduler = new Scheduler();
    return scheduler->queuePCB.size();
}
