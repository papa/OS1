//
// Created by os on 6/2/22.
//

#include "ConsumerProducer_CPP_Sync_API_test.hpp"
#include "printing.hpp"

extern Semaphore* waitForAll;

struct thread_data {
    int id;
    BufferCPP *buffer;
    Semaphore* wait;
};

extern volatile int threadEnd;

void ProducerKeyboard::producerKeyboard(void *arg) {
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
        }
    }

    threadEnd = 1;
    td->buffer->put('!');

    data->wait->signal();
}

void Producer::producer(void *arg) {
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
        }
    }

    data->wait->signal();
}

void Consumer::consumer(void *arg) {
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    while (!threadEnd) {
        int key = data->buffer->get();
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
        }

        if (i % 80 == 0) {
            putc('\n');
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
        Console::putc(key);
    }

    data->wait->signal();
}

void producerConsumer_CPP_Sync_API()
{
    threadEnd = 0;
    char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    getString(input, 30);
    threadNum = stringToInt(input);

    printString("Unesite velicinu bafera?\n");
    getString(input, 30);
    n = stringToInt(input);

    printString("Broj proizvodjaca "); printInt(threadNum);
    printString(" i velicina bafera "); printInt(n);
    printString(".\n");

    if(threadNum > n) {
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
        return;
    } else if (threadNum < 1) {
        printString("Broj proizvodjaca mora biti veci od nula!\n");
        return;
    }

    BufferCPP *buffer = new BufferCPP(n);

    waitForAll = new Semaphore(0);

    Thread* threads[threadNum];
    Thread* consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    data[threadNum].buffer = buffer;
    data[threadNum].wait = waitForAll;
    consumerThread = new Consumer(data+threadNum);
    consumerThread->start();

    for (int i = 0; i < threadNum; i++) {
        data[i].id = i;
        data[i].buffer = buffer;
        data[i].wait = waitForAll;

        if(i>0) {
            threads[i] = new Producer(data+i);
        } else {
            threads[i] = new ProducerKeyboard(data+i);
        }

        threads[i]->start();
    }

    Thread::dispatch();

    for (int i = 0; i <= threadNum; i++) {
        waitForAll->wait();
    }

    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;

}