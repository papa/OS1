//
// Created by os on 5/19/22.
//


#include "../h/KConsole.hpp"

KConsole::Elem* KConsole::head = 0;
KConsole::Elem* KConsole::tail = 0;
KSemaphore* KConsole::hasCharacters = new KSemaphore(0);

void KConsole::putChar(char c)
{
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    newElem->next = 0;
    newElem->data = c;
    if(head == 0)
    {
        head = tail = newElem;
    }
    else
    {
        tail->next = newElem;
        tail = newElem;
    }
}

char KConsole::getChar()
{
    if(head == 0)
        return 0;

    Elem* ret = head;
    head = head->next;
    if(head == 0)
        tail = 0;

    char c = ret->data;
    kfree(ret);
    return c;
}

void KConsole::putCharacter(char c)
{
    putChar(c);
    hasCharacters->signal();
}

char KConsole::getCharacter()
{
    KConsole::hasCharacters->wait();
    return getChar();
}

void KConsole::initialize() {
    hasCharacters = new KSemaphore(0);

}
