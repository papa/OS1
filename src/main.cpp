#include "../h/syscall_cpp.hpp"
#include "../lib/console.h"
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    Riscv::initSystem();

    //Riscv::enableInterrupts();
    //todo
    //go to unprivileged mode
    //userMain();
    //Riscv::disableInterrupts();

    myTests();

    Riscv::endSystem();

    Riscv::printString("End...");
}