//
// Created by os on 5/16/22.
//

#ifndef PROJECT_BASE_V1_0_STD_HPP
#define PROJECT_BASE_V1_0_STD_HPP

#include "../lib/console.h"

inline char getc() {
    return __getc();
}

inline void putc(char c) {
    __putc(c);
}

#endif //PROJECT_BASE_V1_0_STD_HPP
