#include "../lib/hw.h"
#include "../h/syscall_cpp.h"
#include "../lib/console.h"
#include "../h/Riscv.h"

extern "C" void interruptvec();

void main()
{
    __putc('a');
    /*
    uint64 x = (uint64)HEAP_START_ADDR;
    Riscv::initSystem();
    __putc('x');
    char* p = (char*)mem_alloc(sizeof(char));
    __putc('y');
    *p = 'b';
    __putc(*p);
    if(x == 0)
        __putc('q');
    //int retval = mem_free(p);
    */
    /*
     /System::initSystem();

    __asm__ volatile("csrw stvec, %0" : : [vector]"r"(&interruptvec));

    __putc('a');
    __asm__ volatile("ecall");
    __putc('b');
    return;

    MemoryAllocator* memoryAllocator = MemoryAllocator::getMemoryAllocator();
    memoryAllocator->mem_alloc(2);
    */
}