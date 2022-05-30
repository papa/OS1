//
// Created by os on 5/19/22.
//


#include "../h/KConsole.hpp"
#include "../h/syscall_c.h"

KConsole::Elem* KConsole::headInput = 0;
KConsole::Elem* KConsole::tailInput = 0;
KConsole::Elem* KConsole::headOutput = 0;
KConsole::Elem* KConsole::tailOutput = 0;
KSemaphore* KConsole::hasCharactersOutput = 0;
KSemaphore* KConsole::hasCharactersInput = 0;
uint64 KConsole::pendingGetc = 0;

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

void KConsole::getCharactersFromConsole(void* p)
{
    while(true)
    {
        uint64 x = CONSOLE_STATUS;
        __asm__ volatile("mv a0, %0"::"r"(x));
        __asm__ volatile("lb a1, 0(a0)");
        uint64 operation;
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
        if(operation & STATUS_READ_MASK)
        {
            x = CONSOLE_TX_DATA;
            __asm__ volatile("mv a0, %0"::"r"(x));
            __asm__ volatile("lb a1,0(a0)");
            char c;
            __asm__ volatile("mv %0, a1" :  "=r"(c));

            putCharacterInput(c);
            putCharacterOutput(c);
        }
        else
            break;
    }
}

void KConsole::sendCharactersToConsole(void* p)
{
    while(true)
    {
            if(Riscv::finishSystem && KConsole::outputBufferEmpty())
                thread_exit();

            uint64 x = CONSOLE_STATUS;
            __asm__ volatile("mv a0, %0"::"r"(x));
            __asm__ volatile("lb a1, 0(a0)");
            uint64 operation;
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
            if (operation & STATUS_WRITE_MASK)
            {
                char volatile c = getCharacterOutput();
                x = CONSOLE_RX_DATA;
                __asm__ volatile("mv a0, %0"::"r"(x));
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
                __asm__ volatile("sb a1,0(a0)");
            }
            else
                thread_dispatch();
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

void KConsole::putcHandler()
{
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    putCharacterOutput((char)ch);
    Elem* curr = headOutput;
    while(curr != 0)
    {
        curr = curr->next;
    }
}

void KConsole::getcHandler()
{
    pendingGetc++;
    char ch;
    ch = getCharacterInput();
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    Riscv::w_a0_sscratch();
}

void KConsole::printBuffer()
{
    Elem* curr = headInput;
    while(curr != 0)
    {
        putc(curr->data);
        curr = curr->next;
    }
}

bool KConsole::outputBufferEmpty() {
    return headOutput == 0;
}
