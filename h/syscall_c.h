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

int thread_exit();

void thread_dispatch();

typedef void* sem_t;
int sem_open(sem_t* handle, unsigned int x);

int sem_close(sem_t handle);

int sem_wait(sem_t id);

int sem_signal(sem_t id);

#ifdef __cplusplus
}
#endif

#endif //PROJECT_BASE_V1_0_SYSCALL_C_H
