//
// Created by os on 4/27/22.
//

#ifndef PROJECT_BASE_V1_0_QUEUE_H
#define PROJECT_BASE_V1_0_QUEUE_H

#include "../lib/hw.h"
#include "MemoryAllocator.h"

class PCB;

class Queue
{
private:
    typedef struct Elem
    {
        PCB* data;
        struct Elem* next;
    }Elem;
    Elem* first;
    Elem* last;
public:
    void pop();
    PCB* front();
    void push(PCB* t);
    int size();
    Queue();
    ~Queue();
};


#endif //PROJECT_BASE_V1_0_QUEUE_H
