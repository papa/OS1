//
// Created by os on 4/13/22.
//

#ifndef PROJECT_BASE_V1_0_MEMORYHANDLER_H
#define PROJECT_BASE_V1_0_MEMORYHANDLER_H

#include "../lib/hw.h"

typedef struct FreeFragment {
    //void* addr;
    size_t size;
    struct FreeFragment *next;
} FreeFragment;

extern FreeFragment *headFree;

typedef struct AllocatedFragment {
    //void* addr;
    size_t size;
    struct AllocatedFragment *next;
} AllocatedFragment;

extern AllocatedFragment *headAllocated;

#ifdef __cplusplus
extern "C" {
#endif

void initMemory();

void insertNewAllocatedFragment(void *addr, size_t size);

void* tryToAllocateFragment(size_t size);

void insertNewFreeSegment(void *addr, size_t size);

void tryToFreeSegment(void *addr);

#ifdef __cplusplus
}
#endif

extern int memoryInitiliaized;
extern int MEM_ALLOC;
extern int MEM_FREE;

#endif //PROJECT_BASE_V1_0_MEMORYHANDLER_H
