//
// Created by os on 4/27/22.
//

#ifndef PROJECT_BASE_V1_0_QUEUE_H
#define PROJECT_BASE_V1_0_QUEUE_H

#include "../lib/hw.h"
#include "MemoryAllocator.h"

template <typename T>
class Queue
{
private:
    typedef struct Elem
    {
        T data;
        struct Elem* next;
    }Elem;
    Elem* first;
    Elem* last;
public:
    void pop();
    T front();
    void push(T t);
    Queue();
    ~Queue();
    void * operator new(size_t size);
    void operator delete(void* p);
};

#endif //PROJECT_BASE_V1_0_QUEUE_H
