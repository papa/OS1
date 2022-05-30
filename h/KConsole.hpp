//
// Created by os on 5/19/22.
//

#ifndef PROJECT_BASE_V1_0_KCONSOLE_HPP
#define PROJECT_BASE_V1_0_KCONSOLE_HPP

#include "MemoryAllocator.hpp"
#include "KSemaphore.hpp"
#include "../lib/hw.h"

class KConsole
{
private:

    //todo
    //probaj da iskoristis queue template
    typedef struct Elem
    {
        Elem* next;
        char data;
    }Elem;

    static Elem* headInput;
    static Elem* tailInput;
    static Elem* headOutput;
    static Elem* tailOutput;

    static int cntWInterrupt;

    static KSemaphore* hasCharactersInput;
    static KSemaphore* hasCharactersOutput;

    static void putChar(char c,Elem*& head, Elem*& tail);
    static char getChar(Elem*& head, Elem*& tail);

public:
    static uint64 pendingGetc;

    static bool outputBufferEmpty();

    static void putCharacterInput(char c);
    static char getCharacterInput();

    static void putCharacterOutput(char c);
    static char getCharacterOutput();

    static void initialize();

    static void getCharactersFromConsole(void* p);

    static void sendCharactersToConsole(void* p);

    static void printBuffer();

    static const uint64 STATUS_READ_MASK = 1UL;
    static const uint64 STATUS_WRITE_MASK = 1UL << 5UL;
    static const uint64 CONSOLE_GETC = 0x41;
    static const uint64 CONSOLE_PUTC = 0x42;

    static void putcHandler();
    static void getcHandler();
};

#endif //PROJECT_BASE_V1_0_KCONSOLE_HPP
