//
// Created by os on 4/13/22.
//

#include "../h/memoryHandler.h"

AllocatedFragment* headAllocated = 0;
FreeFragment* headFree = 0;
int memoryInitiliaized = 0;
int MEM_ALLOC = 1;
int MEM_FREE = 2;

void initMemory()
{
    if(!memoryInitiliaized)
        return;
    memoryInitiliaized = 1;
    headAllocated = 0;
    headFree = (struct FreeFragment*)HEAP_START_ADDR;
    headFree->next = 0;
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1);
}

void insertNewAllocatedFragment(void* addr, size_t size) {

    initMemory();
    AllocatedFragment* prev = 0;
    AllocatedFragment* after =  headAllocated;
    while(after != 0) {
        if((void*)after > addr)
            break;

        prev = after;
        after = after->next;
    }

    AllocatedFragment* newAllocated = (AllocatedFragment*)addr;
    newAllocated->next = 0;
    newAllocated->size = size;
    if(after == 0) {
        if(prev == 0)
            headAllocated = newAllocated;
        else
            prev->next = newAllocated;
    }
    else {
        if(prev == 0) {
            newAllocated->next = headAllocated;
            headAllocated = newAllocated;
        }
        else {
            newAllocated->next = after;
            prev->next = newAllocated;
        }
    }
}

void* tryToAllocateFragment(size_t size) {
    initMemory();
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    uint64 newSize = size + sizeof(AllocatedFragment);
    while(curr != 0) {

        if(curr->size >= newSize) {

            void* oldAddr = curr;
            void* newAddr = ((char*)curr + newSize);
            if(newAddr <= HEAP_END_ADDR) {

                FreeFragment *newFree = (FreeFragment *) newAddr;

                if (prev != 0)
                    prev->next = newFree;
                else
                    headFree = newFree;

                newFree->next = curr->next;
                newFree->size = curr->size - newSize;

                if(newFree->size == 0)
                {
                    if(prev != 0)
                        prev->next = curr->next;
                    else
                        headFree = 0;
                }

                insertNewAllocatedFragment(oldAddr, size);



                uint64 oldA = (uint64) ((char*)oldAddr + sizeof(AllocatedFragment));

                return (void*)oldA;

                //__asm__ volatile("mv a0,%0" : : "r"(oldA));

                //return;
            }
            else {
                if(prev != 0)
                {
                    prev->next = 0;
                }
                else
                {
                    headFree = 0;
                }
            }
        }
        prev = curr;
        curr = curr->next;
    }

    uint64 x = 0;
    __asm__ volatile("mv a0,%0" : : "r"(x));

    return 0;
}

void insertNewFreeSegment(void* addr, size_t size)
{
    initMemory();
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    FreeFragment* newSegment = (FreeFragment*) addr;
    newSegment->size = size;
    newSegment->next = 0;
    while(curr != 0)
    {
        if((void*)curr > addr)
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
        curr = curr->next;
    }

    if(prev == 0)
        headFree = newSegment;
    else
        prev->next = newSegment;
}

void tryToFreeSegment(void* addr)
{
    initMemory();
    AllocatedFragment* prev = 0;
    AllocatedFragment* curr = headAllocated;
    int found = 0;
    while(curr != 0 && !found)
    {
        if(addr == (void*)((char*)curr + sizeof(AllocatedFragment)))
        {
            if(prev != 0) {
                prev->next = curr->next;
            }
            else {
                headAllocated = curr->next;
            }

            insertNewFreeSegment((void*)curr, curr->size + sizeof(AllocatedFragment));

            found = 1;
        }

        prev = curr;
        curr = curr->next;
    }

    if(found) {
        __asm__ volatile("li a0, 0");
    }
    else {
        __asm__ volatile("li a0, 1");
    }
}
