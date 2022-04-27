//
// Created by os on 4/9/22.
//

#ifndef PROJECT_BASE_V1_0_INTERRUPT_H
#define PROJECT_BASE_V1_0_INTERRUPT_H

#include "../lib/console.h"
#include "MemoryAllocator.h"

extern "C" void interrupt();

extern const uint64 bntOne;
extern const uint64 bntZero;

extern const uint64 hwInterrupt;
extern const uint64 operationInterrupt;
extern const uint64 addrReadInterrupt;
extern const uint64 addrWriteInterrupt;
extern const uint64 ecallUserInterrupt;
extern const uint64 ecallSystemInterupt;

#endif
