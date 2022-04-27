//
// Created by os on 4/27/22.
//

#include "../h/Queue.h"

//Queue.h
template<typename T>
void Queue<T>::pop() {
    Elem* newFirst = first->next;
    MemoryAllocator::mem_free(first);
    first = newFirst;
    if(first == 0)
        first = last = 0;
}

template<typename T>
void Queue<T>::push(T t) {
    Elem* newElem = (Elem*)MemoryAllocator::mem_alloc(sizeof(Elem));
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
        //todo
        MemoryAllocator::mem_free(old);
    }
}