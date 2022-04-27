#include "../lib/hw.h"
#include "../h/syscall_cpp.h"
#include "../lib/console.h"

extern "C" void interruptvec();

void main()
{
    /*
    //System::initSystem();

    __asm__ volatile("csrw stvec, %0" : : [vector]"r"(&interruptvec));

    __putc('a');
    __asm__ volatile("ecall");
    __putc('b');
    return;

    MemoryAllocator* memoryAllocator = MemoryAllocator::getMemoryAllocator();
    memoryAllocator->mem_alloc(2);
    */
}