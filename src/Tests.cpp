//
// Created by os on 5/5/22.
//

#include "../h/Tests.hpp"
#include "../lib/console.h"

void idle(void* args)
{
    while(true)
    {
        Riscv::printString("Idle\n");
        thread_dispatch();
    }
}

void thread1Function(void* p)
{
    Riscv::printString("Thread 1 started...\n");
    uint64 num = 10000;
    for(uint64 i = 0; i < num;i++)
    {
        if(i % 150 == 0 && i > 0)
            thread_dispatch();
        Riscv::printString("i : ");
        Riscv::printInteger(i);
        Riscv::printString("\n");
    }
}

void thread2Function(void* p)
{
    Riscv::printString("Thread 2 started...\n");
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    {
        if(j % 50 == 0 && j > 0)
            thread_dispatch();
        Riscv::printString("j : ");
        Riscv::printInteger(j);
        Riscv::printString("\n");
    }
}

void thread2FunctionTest2(void* p)
{
    Riscv::printString("Thread 2 started...\n");
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    {
        if(j == 200)
            thread_exit();
        if(j % 50 == 0 && j > 0)
            thread_dispatch();
        Riscv::printString("j : ");
        Riscv::printInteger(j);
        Riscv::printString("\n");
    }
}

void threadTest1()
{
    Thread* t1 = new Thread(&thread1Function, 0);
    t1->start();
    Thread* t2 = new Thread(&thread2Function, 0);
    t2->start();
    Riscv::enableInterrupts();
    while(t1->myHandle->getState() != PCB::FINISHED || t2->myHandle->getState() != PCB::FINISHED)
    {
        Riscv::printString("Main thread\n");
        thread_dispatch();
    }

    Riscv::printString("End...\n");
    Riscv::disableInterrupts();
}

void threadTest2()
{
    Thread* idleThread = new Thread(&idle, 0);
    idleThread->start();
    Thread* t1 = new Thread(&thread1Function, 0);
    t1->start();
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    t2->start();

    Riscv::enableInterrupts();

    while(idleThread->myHandle->getState() != PCB::FINISHED);

    Riscv::printString("End...\n");

    Riscv::disableInterrupts();
}


void threadTest3()
{
    Thread* t = new TestPeriodic(5);
    t->start();
    while(true)
    {
        thread_dispatch();
    }
}

void threadTests()
{
    //threadTest1();
    //threadTest2();
    //threadTest3();
}


//memory (de)allocation tests
void mallocFree()
{
    Riscv::printString("mallocFree\n");
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    {
        addrs[i] = mem_alloc(100);
        if(addrs[i] == 0)
        {
            Riscv::printString("not OK\n");
            return;
        }

    }

    for(int i = 0 ; i < num;i+=2)
    {
        int retval = mem_free(addrs[i]);
        if(retval != 0)
        {
            Riscv::printString("not OK\n");
            return;
        }
    }

    for(int i = 0 ; i < num;i+=2)
    {
        addrs[i] = mem_alloc(20);
        if(addrs[i] == 0)
        {
            Riscv::printString("not OK\n");
            return;
        }
    }

    for(int i = 0; i < num;i++)
    {
        int retval = mem_free(addrs[i]);
        if(retval != 0)
        {
            Riscv::printString("not OK\n");
            return;
        }
    }

    Riscv::printString("OK\n");
}
void bigMalloc()
{
    Riscv::printString("bigMalloc\n");
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    void* p = mem_alloc(x);
    if(p == 0)
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
}

void lotOfSmallMallocs()
{
    Riscv::printString("lotOfSmallMallocs\n");
    uint64 cnt = 0;
    uint64 sum = 0;
    uint64 N = 10000UL;
    uint64 X = 10UL;
    for(uint64 i = 0; i < N;i++)
    {
        Test* t = (Test*)mem_alloc(sizeof(Test));
        if(t == 0)
            break;
        t->a = X;
        sum+=t->a;
        cnt++;
    }
    Riscv::printInteger(cnt);
    Riscv::printString("\n");
    if(sum == X*cnt)
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
}
void badFree()
{
    Riscv::printString("badFree\n");
    Test* t = (Test*)mem_alloc(sizeof(Test));
    uint64 retval = mem_free((char*)t + 2);
    if(retval == 0)
        Riscv::printString("not OK\n");
    else
        Riscv::printString("OK\n");
}

void stressTesting()
{
    Riscv::printString("stressTesting\n");
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    {
        addrs[i] = mem_alloc(1);
        if(addrs[i] == 0)
        {
            //Riscv::printString("not OK\n");
            return;
        }

    }
    int sz = 300;
    while(sz > 0)
    {
        //Riscv::printString("sz : ");
        //Riscv::printInteger(sz);
        for(int i = 0 ; i < num;i+=2)
        {
            //Riscv::printString("i : ");
            //Riscv::printInteger(i);
            //Riscv::printString("free\n");
            int retval = mem_free(addrs[i]);
            if(retval != 0)
            {
                //Riscv::printString("not OK\n");
                return;
            }
            //Riscv::printString("alloc\n");
            addrs[i] = mem_alloc(sz/2);
            if(addrs[i] == 0)
            {
                //Riscv::printString("not Ok\n");
                return;
            }

        }

        for(int i = 1 ; i < num;i+=2)
        {
            //Riscv::printString("i : ");
            //Riscv::printInteger(i);
            //Riscv::printString("free\n");
            int retval = mem_free(addrs[i]);
            if(retval != 0)
            {
                //Riscv::printString("not OK\n");
                return;
            }
            //Riscv::printString("alloc\n");
            addrs[i] = mem_alloc(sz);
            if(addrs[i] == 0)
            {
                //Riscv::printString("not Ok\n");
                return;
            }

        }
        sz-=10;
    }

    Riscv::printString("OK\n");
}

void memoryAllocationTests()
{
    //bigMalloc();
    //lotOfSmallMallocs();
    //mallocFree();
    //badFree();
    stressTesting();
}

//semaphore tests
static Semaphore* mutex;

void f1(void* p)
{
    Riscv::printString("f1 started\n");
    int x = 0;
    while(true)
    {
        x++;
        mutex->wait();
        //__putc('1');
        //__putc('\n');
        mutex->signal();
        if(x < 50000)
            thread_dispatch();
        else
            thread_exit();
    }
}

void f2(void* p)
{
    Riscv::printString("f2 started\n");
    int x = 0;
    while(true)
    {
        mutex->wait();
        //__putc('2');
        //__putc('\n');
        mutex->signal();
        if(x < 50000)
            thread_dispatch();
        else
            thread_exit();
    }
}

void semTest1()
{
    mutex = new Semaphore(1);
    Thread* t1 = new Thread(&f1, 0);
    Thread* t2 = new Thread(&f2, 0);
    t1->start();
    t2->start();

    int y = 0;
    while(true)
    {
        y++;
        thread_dispatch();
        if(y == 200000)
            break;
    }
}

static Semaphore* s1;
static Semaphore* s2;
static Semaphore* s3;

void f1_2(void* p)
{
    Riscv::printString("f1_2 started\n");
    int x = 0;
    while(true)
    {
        x++;
        s1->wait();
        __putc('1');
        __putc('\n');
        s2->signal();
        if(x < 5000)
            thread_dispatch();
        else
            thread_exit();
    }
}

void f2_2(void* p)
{
    Riscv::printString("f2_2 started\n");
    int x = 0;
    while(true)
    {
        x++;
        s2->wait();
        __putc('2');
        __putc('\n');
        s3->signal();
        if(x < 5000)
            thread_dispatch();
        else
            thread_exit();
    }
}

void f3_2(void* p)
{
    Riscv::printString("f3_2 started\n");
    int x = 0;
    while(true)
    {
        x++;
        s3->wait();
        __putc('3');
        __putc('\n');
        s1->signal();
        if(x < 5000)
            thread_dispatch();
        else
            thread_exit();
    }
}

void semTest2()
{
    s1 = new Semaphore(1);
    s2 = new Semaphore(0);
    s3 = new Semaphore(0);
    Thread* t1 = new Thread(&f1_2, 0);
    Thread* t2 = new Thread(&f2_2, 0);
    Thread* t3 = new Thread(&f3_2, 0);
    t3->start();
    t2->start();
    t1->start();

    int y = 0;
    while(true)
    {
        y++;
        thread_dispatch();
        if(y == 200000)
            break;
    }

}

void semaphoreTests()
{
    //semTest1();
    semTest2();
}

void myTests()
{
    //memoryAllocationTests();
    threadTests();
    //testQueue();
    //semaphoreTests();
}

TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {

}

void TestPeriodic::periodicActivation()
{
    for(int i = 0 ; i < 100;i++)
    {
        Riscv::printString("i : ");
        Riscv::printInteger(i);
    }
}