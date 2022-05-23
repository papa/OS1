//
// Created by os on 5/19/22.
//


#include "../h/KConsole.hpp"

KConsole::Elem* KConsole::headInput = 0;
KConsole::Elem* KConsole::tailInput = 0;
KConsole::Elem* KConsole::headOutput = 0;
KConsole::Elem* KConsole::tailOutput = 0;
KSemaphore* KConsole::hasCharactersOutput = 0;
KSemaphore* KConsole::hasCharactersInput = 0;

void KConsole::putChar(char c, Elem*& head, Elem*& tail)
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

char KConsole::getChar(Elem*& head, Elem*& tail)
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

void KConsole::initialize()
{
    hasCharactersInput = new KSemaphore(0);
    hasCharactersOutput = new KSemaphore(0);
}

//extern const uint64 CONSOLE_STATUS;
//extern const uint64 CONSOLE_TX_DATA;
//extern const uint64 CONSOLE_RX_DATA;

void KConsole::getCharactersFromConsole()
{
    while(true)
    {
        __asm__ volatile("ld a0, CONSOLE_STATUS");
        uint64 operation;
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
        if(operation & STATUS_READ_MASK)
        {
            __asm__ volatile("ld a0, CONSOLE_TX_DATA");
            uint64 data;
            __asm__ volatile("mv %0, a0" :  "=r"(data));
            putCharacterInput((char)data);
        }
        else
            break;
    }

}

void KConsole::sendCharactersToConsole()
{
    while(true)
    {
        __asm__ volatile("ld a0, CONSOLE_STATUS");
        uint64 operation;
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
        if(operation & STATUS_WRITE_MASK)
        {
            char c = getCharacterOutput();
            __asm__ volatile("mv a0, %0" :  :"r"((uint64)c));
            //__asm__ volatile("sd a0, CONSOLE_RX_DATA");
        }
        else
            break;
    }
}

void KConsole::putCharacterInput(char c)
{
    putChar(c, headInput, tailInput);
    hasCharactersInput->signal();
}

char KConsole::getCharacterInput()
{
    hasCharactersInput->wait();
    return getChar(headInput, tailInput);
}

void KConsole::putCharacterOutput(char c)
{
    putChar(c, headOutput, tailOutput);
    hasCharactersOutput->signal();
}

char KConsole::getCharacterOutput()
{
    hasCharactersOutput->wait();
    return getChar(headOutput, tailOutput);
}
