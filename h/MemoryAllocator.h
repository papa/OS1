//
// Created by os on 4/27/22.
//

#ifndef PROJECT_BASE_V1_0_MEMORYALLOCATOR_H
#define PROJECT_BASE_V1_0_MEMORYALLOCATOR_H

#include "../lib/hw.h"

class MemoryAllocator
{
private:
    //MemoryAllocator();

    typedef struct FreeFragment {
        //void* addr;
        size_t size;
        struct FreeFragment *next;
    } FreeFragment;

    typedef struct AllocatedFragment {
        //void* addr;
        size_t size;
        struct AllocatedFragment *next;
    } AllocatedFragment;

    static FreeFragment* headFree;
    static AllocatedFragment* headAllocated;

    static int memoryInitiliaized;

public:

    static const int MEM_FREE = 2;
    static const int MEM_ALLOC = 1;
    //void * operator new(size_t size);
    //void operator delete(void* p);

    //~MemoryAllocator();

    static void* mem_alloc(size_t size);
    static int mem_free(void* p);

    static void initMemory();

    static void insertNewAllocatedFragment(void *addr, size_t size);

    static void* tryToAllocateFragment(size_t size);

    static void insertNewFreeSegment(void *addr, size_t size);

    static void tryToFreeSegment(void *addr);

};

#endif //PROJECT_BASE_V1_0_MEMORYALLOCATOR_H
