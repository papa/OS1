#include "../h/syscall_cpp.h"
#include "../lib/console.h"
#include "../h/Riscv.h"
#include "../h/Tests.h"

void main()
{
    Riscv::initSystem();

    //memoryAllocationTests();
    threadTests();
    //testQueue();

    Riscv::endSystem();
}