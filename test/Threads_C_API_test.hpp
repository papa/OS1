#ifndef XV6_THREADS_C_API_TEST_HPP
#define XV6_THREADS_C_API_TEST_HPP

#include "../h/syscall_c.h"
#include "../h/PCB.hpp"

#include "printing.hpp"

extern bool finishedA;
extern bool finishedB;
extern bool finishedC;
extern bool finishedD;

uint64 fibonacci(uint64 n);

void workerBodyA(void* arg);

void workerBodyB(void* arg);

void workerBodyC(void* arg);

void workerBodyD(void* arg);

void Threads_C_API_test();

#endif //XV6_THREADS_C_API_TEST_HPP