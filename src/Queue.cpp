//
// Created by os on 5/3/22.
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    Elem* newFirst = first->next;
    kfree(first);
    first = newFirst;
    if(first == 0)
        first = last = 0;
}

void Queue::push(PCB* t) {
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    newElem->data = t;
    newElem->next = 0;
    if(first == 0) {
        first = newElem;
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
        last = newElem;
    }
}


PCB* Queue::front() {
    if(first == 0)
        return 0;
    return first->data;
}

Queue::Queue() {
    first = last = 0;
}

Queue::~Queue() {
    Elem* curr = first;
    while(curr != 0)
    {
        Elem* old = curr;
        curr = curr->next;
        kfree(old);
    }
}

int Queue::size() {
    Elem* curr = first;
    int cnt = 0;
    while(curr != 0)
    {
        cnt++;
        curr = curr->next;
    }
    return cnt;
}