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
volatile int cntGlobal = 0;

void producerKeyboard(void *arg) {
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    while ((key = getc()) != 0x1b) {
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

    Riscv::printString("producer started\n");

    int i = 0;
    while (!threadEnd) {

        data->buffer->put(data->id + '0');
        i++;
        cntGlobal++;

        Riscv::printString("put ");
        Riscv::printInteger(data->id + '0');

        if (i % (10 * data->id) == 0) {
            Riscv::printString("dispatched\n");
            thread_dispatch();
            Riscv::printString("returned from dispatch\n");
        }
        Riscv::printInteger(cntGlobal);

        if(cntGlobal == 15)
            threadEnd = 1;
    }
    Riscv::printString("producer finished\n");
    sem_signal(data->wait);
}

void consumer(void *arg) {
    struct thread_data *data = (struct thread_data *) arg;
    Riscv::printString("consumer started\n");
    int i = 0;
    while (!threadEnd) {
        int key = data->buffer->get();
        i++;

        //putc(key);
        Riscv::printString("get ");
        Riscv::printInteger(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
        }

        if (i % 80 == 0) {
            //putc('\n');
            Riscv::printString("\n");
        }
    }
    Riscv::printString("consumer finished\n");
    sem_signal(data->wait);
}

void producerConsumer_C_API() {
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    //getString(input, 30);
    //threadNum = stringToInt(input);
    threadNum = 3;

    printString("Unesite velicinu bafera?\n");
    //getString(input, 30);
    //n = stringToInt(input);

    n = 1;

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

        thread_create(threads + i,
                      producer ,
                      data + i);
    }

    thread_dispatch();

    for (int i = 0; i <= threadNum; i++) {
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);
}
