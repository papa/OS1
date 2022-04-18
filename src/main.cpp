#include "../lib/hw.h"
#include "../h/syscall_cpp.h"
#include "../lib/console.h"

extern "C" void interruptvec();

void main()
{
    __asm__ volatile("csrw stvec, %0" : : [vector]"r"(&interruptvec));

    __putc('a');
    __asm__ volatile("ecall");
    __putc('b');
    return;

    MemoryAllocator* memAlloc = MemoryAllocator::getMemoryAllocator();
    memAlloc->mem_alloc(2);
}