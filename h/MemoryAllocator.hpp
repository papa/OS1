//
// Created by os on 4/27/22.
//

#ifndef PROJECT_BASE_V1_0_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_V1_0_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

class MemoryAllocator
{
private:
    //MemoryAllocator();

    typedef struct BlockHeader {
        //void* addr;
        size_t size;
        struct BlockHeader *next;
    } BlockHeader;

    static BlockHeader* headFree;
    static BlockHeader* headAllocated;

    static int memoryInitiliaized;

public:

    static const int MEM_FREE = 2;
    static const int MEM_ALLOC = 1;
    //void * operator new(size_t size);
    //void operator delete(void* p);

    //~MemoryAllocator();

    static void* mem_alloc(size_t size);
    static uint64 mem_free(void* p);

    static void initMemory();

    static void insertNewAllocatedFragment(void *addr, size_t size);

    static void* tryToAllocateFragment(size_t size);

    static void insertNewFreeSegment(void *addr, size_t size);

    static uint64 tryToFreeSegment(void *addr);

};

void* kmalloc(size_t size);
uint64 kfree(void* p);


#endif //PROJECT_BASE_V1_0_MEMORYALLOCATOR_HPP
