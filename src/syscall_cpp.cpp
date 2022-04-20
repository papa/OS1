//
// Created by os on 4/8/22.
//

#include "../h/syscall_cpp.h"
#include "../h/syscall_c.h"

//general
void * operator new(size_t size)
{
    return mem_alloc(size);
}

void operator delete(void * p)
{
   mem_free(p);
}

//MemoryAllocator.h

MemoryAllocator* MemoryAllocator::memoryAllocator = 0;

MemoryAllocator::MemoryAllocator() {

}

void *MemoryAllocator::mem_alloc(size_t size) {
    //todo
    //sta ovde treba kao parametar
    //svuda pogledaj to
    return ::mem_alloc(sizeof(MemoryAllocator));
}

int MemoryAllocator::mem_free(void * addr) {
    return ::mem_free(addr);
}

MemoryAllocator* MemoryAllocator::getMemoryAllocator() {

    if(memoryAllocator == 0) {
        //todo
        //preklopi new za memoryAllocator
        //proveri da li ovo radi
        memoryAllocator = new MemoryAllocator();
    }
    return memoryAllocator;
}

MemoryAllocator::~MemoryAllocator() {

}

void *MemoryAllocator::operator new(size_t size) {
    return ::operator new(size);
}

void MemoryAllocator::operator delete(void *p) {
    ::operator delete(p);
}


//Queue.h
template<typename T>
void Queue<T>::pop() {
    Elem* newFirst = first->next;
    MemoryAllocator::getMemoryAllocator()->mem_free(first);
    first = newFirst;
    if(first == 0)
        first = last = 0;
}

template<typename T>
void Queue<T>::push(T t) {
    Elem* newElem = (Elem*)MemoryAllocator::getMemoryAllocator()->mem_alloc(sizeof(Elem));
    if(first == 0) {
        first = newElem;
        last = 0;
        first->next = last;
    }
}

template<typename T>
T Queue<T>::front() {
   if(first == 0)
       return 0;
   return first->data;
}

template<typename T>
Queue<T>::Queue() {
    first = last = 0;
}

template<typename T>
Queue<T>::~Queue() {
    Elem* curr = first;
    while(curr != 0)
    {
        Elem* old = curr;
        curr = curr->next;
        MemoryAllocator::getMemoryAllocator()->mem_free(old);
    }
}

template<typename T>
void *Queue<T>::operator new(size_t size) {
    //todo
    //da li ovde treba size ili sizeof(Queue<T>)
    return ::operator new(sizeof(Queue<T>));
}

template<typename T>
void Queue<T>::operator delete(void *p) {
    ::operator delete(p);
}

//Scheduler.h

Scheduler* Scheduler::scheduler = 0;

Scheduler *Scheduler::getScheduler() {
    if(scheduler == 0)
    {
        //todo
        //preklopi new za Scheduler
        scheduler = new Scheduler();
    }

    return scheduler;
}

void Scheduler::put(PCB *pcb) {
    queuePCB->push(pcb);
}

PCB *Scheduler::get() {
    PCB* t =  queuePCB->front();
    queuePCB->pop();
    return t;
}

Scheduler::~Scheduler() {
    //todo
    //preklopi delete za queue
    delete queuePCB;
    //MemoryAllocator::getMemoryAllocator()->mem_free(queueThreads);
}

Scheduler::Scheduler() {
    //todo
    //da li radi konstruktor
    queuePCB= new Queue<PCB*>();
}

void *Scheduler::operator new(size_t size) {
    return ::operator new(sizeof(Scheduler));
}

void Scheduler::operator delete(void *p) {
    ::operator delete(p);
}

//Thread.h

//todo
//kreiranje pocetnog konteksta niti

Thread::Thread(void (*body)(void *), void *arg) {
    f = body;
    args = arg;
}

//Thread::~Thread() {
//
//}

void Thread::start() {
    threadPCB->start();
}

void Thread::dispatch() {

}

void Thread::sleep(time_t time) {

}

Thread::Thread() {

}

void *Thread::operator new(size_t size) {
    return ::operator new(sizeof(Thread));
}

void Thread::operator delete(void *p) {
    ::operator delete(p);
}

//void Thread::run() {
//
//}

//PCB.h

PCB::PCB(void (*body)(void*), void* arg , size_t stackSize, size_t timeSlice) {
    //todo
    //pocetni kontekst niti
    this->stackSize = stackSize;
    this->timeSlice = timeSlice;
    this->pcbThread = new Thread(body, arg);
    this->state = CREATED;
}

PCB::~PCB() {

}

void PCB::start()
{
    Scheduler::getScheduler()->put(this);
}

//todo
void PCB::runner(void* p) {
    //pcbThread->run();
}

void *PCB::operator new(size_t size) {
    return ::operator new(sizeof(PCB));
}

void PCB::operator delete(void *p) {

}

//System.h

PCB* System::runningPCB = 0;

//todo
extern "C" void interruptvec();
void System::initSystem() {
    __asm__ volatile("csrw stvec, %0" : : [vector]"r"(&interruptvec));
}

System::System() {

}
