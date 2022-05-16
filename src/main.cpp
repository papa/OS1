#include "../h/syscall_cpp.hpp"
#include "../lib/console.h"
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"

void main()
{
    Riscv::initSystem();

    //memoryAllocationTests();
    threadTests();
    //testQueue();

    Riscv::endSystem();
}