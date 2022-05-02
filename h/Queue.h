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
};

template<typename T>
void Queue<T>::pop() {
    Elem* newFirst = first->next;
    kfree(first);
    first = newFirst;
    if(first == 0)
        first = last = 0;
}

template<typename T>
void Queue<T>::push(T t) {
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    newElem->data = t;
    newElem->next = 0;
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
        kfree(old);
    }
}

#endif //PROJECT_BASE_V1_0_QUEUE_H
