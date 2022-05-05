//
// Created by os on 5/5/22.
//

#ifndef PROJECT_BASE_V1_0_TESTS_H
#define PROJECT_BASE_V1_0_TESTS_H

#include "Riscv.h"
#include "PCB.h"
#include "syscall_cpp.h"

class Test
{
public:
    uint64 a;
};

//memory (de)allocation tests
void mallocFree();
void bigMalloc();
void lotOfSmallMallocs();
void badFree();
void stressTesting();
void memoryAllocationTests();

//thread tests
void thread1Function();
void thread2Function();
void threadTest1();
void threadTest2();
void threadTests();

void idle(void* args);

#endif //PROJECT_BASE_V1_0_TESTS_H
