//
// Created by os on 5/5/22.
//

#ifndef PROJECT_BASE_V1_0_TESTS_HPP
#define PROJECT_BASE_V1_0_TESTS_HPP

#include "syscall_cpp.hpp"

class Test
{
public:
    uint64 a;
};
struct object{
    int a,b,c,d,e,f,g,h,i,j,k;
};
struct node{
    object o1, o2, o3;
    char id;
    node *next, *prev;
};

//memory (de)allocation tests
void mallocFree();
void bigMalloc();
void lotOfSmallMallocs();
void badFree();
void stressTesting();
void mallocTest();
void mallocEverything();
void mallocGapFillTest();
void memoryAllocationTests();

//thread tests
void thread1Function();
void thread2Function();

void threadFunction3();

void threadTest1();
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
{
public:
    TestPeriodic(time_t time);
protected:
    virtual void periodicActivation() override;
};

//semaphore tests
void consumerA(void *arg);

void producerA(void *arg);

void semTest1();

void semaphoreTests();

void idle(void* args);

void consoleTest1();
void consoleTests();

void changeModeTest1();
void changeModeTests();

void myTests();

#endif //PROJECT_BASE_V1_0_TESTS_HPP