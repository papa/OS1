//
// Created by os on 5/5/22.
//

#ifndef PROJECT_BASE_V1_0_TESTS_HPP
#define PROJECT_BASE_V1_0_TESTS_HPP

#include "Riscv.hpp"
#include "PCB.hpp"
#include "syscall_cpp.hpp"

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

//semaphore tests
void f1();
void f2();

void f1_2(void* p);
void f2_2(void* p);
void f3_2(void* p);

void semTest1();
void semTest2();

void semaphoreTests();


void idle(void* args);

void myTests();

#endif //PROJECT_BASE_V1_0_TESTS_HPP
