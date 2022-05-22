//
// Created by os on 5/19/22.
//

#ifndef PROJECT_BASE_V1_0_KCONSOLE_HPP
#define PROJECT_BASE_V1_0_KCONSOLE_HPP

#include "MemoryAllocator.hpp"
#include "KSemaphore.hpp"

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

    static Elem* head;
    static Elem* tail;

    static KSemaphore* hasCharacters;

    static void putChar(char c);
    static char getChar();

public:
    static void putCharacter(char c);
    static char getCharacter();

    static const uint64 CONSOLE_GETC = 0x41;
    static const uint64 CONSOLE_PUTC = 0x42;

    static void initialize();
};

#endif //PROJECT_BASE_V1_0_KCONSOLE_HPP
