//
// Created by os on 4/27/22.
//

#include "../h/Riscv.h"

//todo
extern "C" void interruptvec();
void Riscv::initSystem() {
    __asm__ volatile("csrw stvec, %0" : : [vector]"r"(&interruptvec));
}
