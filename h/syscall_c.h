//
// Created by os on 4/8/22.
//

#ifndef PROJECT_BASE_V1_0_SYSCALL_C_H
#define PROJECT_BASE_V1_0_SYSCALL_C_H

#include "../lib/hw.h"

#ifdef __cplusplus
extern "C" {
#endif

void * mem_alloc(size_t size);

int mem_free(void*);

typedef void* thread_t;
int thread_create(thread_t*, void (*start_routine)(void*), void*);

#ifdef __cplusplus
}
#endif

#endif //PROJECT_BASE_V1_0_SYSCALL_C_H
