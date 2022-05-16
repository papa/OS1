//
// Created by os on 5/16/22.
//

#include "ConsumerProducer_C_API_test.hpp"

sem_t waitForAll;

struct thread_data {
    int id;
    Buffer *buffer;
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    while ((key = __getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
        }
    }

    threadEnd = 1;

    delete data->buffer;

    sem_signal(data->wait);
}

void producer(void *arg) {
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
        }
    }

    sem_signal(data->wait);
}

void consumer(void *arg) {
    struct thread_data *data = (struct thread_data *) arg;


    int i = 0;
    while (!threadEnd) {
        int key = data->buffer->get();
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
        }

        if (i % 80 == 0) {
            putc('\n');
        }
    }

    sem_signal(data->wait);
}

//todo
//threadNuma hardCoded, timer enables itself as soon as
//code gets into getString
//isto za bafer
void producerConsumer_C_API()
{
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    //getString(input, 30);
    threadNum = 5;

    printString("Unesite velicinu bafera?\n");
    //getString(input, 30);
    n = 10;

    printString("Broj proizvodjaca "); printInt(threadNum);
    printString(" i velicina bafera "); printInt(n);
    printString(".\n");

    Buffer *buffer = new Buffer(n);

    sem_open(&waitForAll, 0);

    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    data[threadNum].buffer = buffer;
    data[threadNum].wait = waitForAll;
    thread_create(&consumerThread, consumer, data + threadNum);

    for (int i = 0; i < threadNum; i++) {
        data[i].id = i;
        data[i].buffer = buffer;
        data[i].wait = waitForAll;

        thread_create(threads + i,
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    }

    thread_dispatch();

    for (int i = 0; i <= threadNum; i++) {
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);
}