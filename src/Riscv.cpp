//
// Created by os on 4/27/22.
//

#include "../h/Riscv.h"

//todo
//sta sve treba da se odradi ovde
extern "C" void interruptvec();
void Riscv::initSystem() {
    w_stvec((uint64)&interruptvec);
}
