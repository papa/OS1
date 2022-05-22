//
// Created by os on 5/16/22.
//

#include "ConsumerProducer_C_API_test.hpp"
#include "../h/Riscv.hpp"
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

    Riscv::printString("Producer started...\n");

    int i = 0;
    while (!threadEnd)
    {
        Riscv::printString("producer i : ");
        Riscv::printInteger(i);
        Riscv::printString("put ");
        Riscv::printInteger(data->id + '0');
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Riscv::printString("dispatching\n");
            thread_dispatch();
        }

        if(i == 10)
            threadEnd = 1;
    }

    Riscv::printString("producer done\n");
    sem_signal(data->wait);
}

void consumer(void *arg) {
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("Consumer started...\n");

    int i = 0;
    while (!threadEnd) {
        Riscv::printString("consumer i : ");
        Riscv::printInteger(i);
        int key = data->buffer->get();
        i++;

        //putc(key);
        Riscv::printString("get ");
        Riscv::printInteger(key);

        if (i % (5 * data->id) == 0) {
            Riscv::printString("dispatching\n");
            thread_dispatch();
        }

        if (i % 80 == 0) {
           Riscv::printString("\n");
        }
    }

    Riscv::printString("consumer done\n");
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
    threadNum = 1;

    printString("Unesite velicinu bafera?\n");
    //getString(input, 30);
    n = 3;

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

        //todo changed
        //thread_create(threads + i,
        //              i > 0 ? producer : producerKeyboard,
        //              data + i);

        thread_create(threads + i, producer, data + i);

    }

    thread_dispatch();

    for (int i = 0; i <= threadNum; i++) {
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);
}