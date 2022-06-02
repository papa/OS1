//
// Created by os on 4/17/22.
//

#ifndef XV6_CONSUMERPRODUCER_CPP_Sync_API_TEST_H
#define XV6_CONSUMERPRODUCER_CPP_Sync_API_TEST_H

#include "buffer_CPP_API.hpp"

struct thread_data;

class ProducerKeyboard:public Thread {
    thread_data* td;
    void producerKeyboard(void *arg);
public:
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}

    void run() override {
        producerKeyboard(td);
    }
};

class Producer:public Thread {
    thread_data* td;
    void producer(void *arg);
public:
    Producer(thread_data* _td):Thread(), td(_td) {}

    void run() override {
        producer(td);
    }
};

class Consumer:public Thread {
    thread_data* td;
    void consumer(void *arg);
public:
    Consumer(thread_data* _td):Thread(), td(_td) {}

    void run() override {
        consumer(td);
    }
};

void producerConsumer_CPP_Sync_API();

#endif //XV6_CONSUMERPRODUCER_CPP_Sync_API_TEST_H
