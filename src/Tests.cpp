//
// Created by os on 5/5/22.
//

#include "../h/Tests.hpp"
#include "../lib/console.h"
#include "../test/printing.hpp"

void idle(void* args)
{
    while(true)
    {
        printString("Idle\n");
        thread_dispatch();
    }
}

void thread1Function(void* p)
{
    printString("Thread 1 started...\n");
    uint64 num = 10000;
    for(uint64 i = 0; i < num;i++)
    {
        if(i % 150 == 0 && i > 0)
            thread_dispatch();
        printString("i : ");
        printInt(i);
        printString("\n");
    }
}

void thread2Function(void* p)
{
    printString("Thread 2 started...\n");
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    {
        if(j % 50 == 0 && j > 0)
            thread_dispatch();
        printString("j : ");
        printInt(j);
        printString("\n");
    }
}

void thread2FunctionTest2(void* p)
{
    printString("Thread 2 started...\n");
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    {
        if(j == 200)
            thread_exit();
        if(j % 50 == 0 && j > 0)
            thread_dispatch();
        printString("j : ");
        printInt(j);
        printString("\n");
    }
}

void threadTest1()
{
    Thread* t1 = new Thread(&thread1Function, 0);
    t1->start();
    Thread* t2 = new Thread(&thread2Function, 0);
    t2->start();
    Riscv::enableInterrupts();
    //while(((PCB*)(t1->myHandle))->getState() != PCB::FINISHED || ((PCB*)(t2->myHandle))->getState()!= PCB::FINISHED)
    //{
    //    Riscv::printString("Main thread\n");
    //    thread_dispatch();
    //}

    printString("End...\n");
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

    //while(((PCB*)idleThread->myHandle)->getState() != PCB::FINISHED);

    printString("End...\n");

    Riscv::disableInterrupts();
}


void threadTest3()
{
    Thread* t = new TestPeriodic(50);
    t->start();
    while(true)
    {
        //thread_dispatch();
    }
}

void threadTests()
{
    //threadTest1();
    //threadTest2();
    threadTest3();
}


//memory (de)allocation tests
void mallocFree()
{
    printString("mallocFree\n");
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    {
        addrs[i] = mem_alloc(100);
        if(addrs[i] == 0)
        {
            printString("not OK\n");
            return;
        }

    }

    for(int i = 0 ; i < num;i+=2)
    {
        int retval = mem_free(addrs[i]);
        if(retval != 0)
        {
            printString("not OK\n");
            return;
        }
    }

    for(int i = 0 ; i < num;i+=2)
    {
        addrs[i] = mem_alloc(20);
        if(addrs[i] == 0)
        {
            printString("not OK\n");
            return;
        }
    }

    for(int i = 0; i < num;i++)
    {
        int retval = mem_free(addrs[i]);
        if(retval != 0)
        {
            printString("not OK\n");
            return;
        }
    }

    printString("OK\n");
}
void bigMalloc()
{
    printString("bigMalloc\n");
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    void* p = mem_alloc(x);
    if(p == 0)
        printString("OK\n");
    else
        printString("not OK\n");
}

void lotOfSmallMallocs()
{
    printString("lotOfSmallMallocs\n");
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
    printInt(cnt);
    printString("\n");
    if(sum == X*cnt)
        printString("OK\n");
    else
        printString("not OK\n");
}
void badFree()
{
    printString("badFree\n");
    Test* t = (Test*)mem_alloc(sizeof(Test));
    uint64 retval = mem_free((char*)t + 2);
    if(retval == 0)
        printString("not OK\n");
    else
         printString("OK\n");
}

void stressTesting()
{
    printString("stressTesting\n");
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    {
        addrs[i] = mem_alloc(1);
        if(addrs[i] == 0)
        {
            printString("not OK\n");
            return;
        }

    }
    int sz = 300;
    while(sz > 0)
    {
        for(int i = 0 ; i < num;i+=2)
        {
            int retval = mem_free(addrs[i]);
            if(retval != 0)
            {
                printString("not OK\n");
                return;
            }
            addrs[i] = mem_alloc(sz/2);
            if(addrs[i] == 0)
            {
                printString("not Ok\n");
                return;
            }

        }

        for(int i = 1 ; i < num;i+=2)
        {
            int retval = mem_free(addrs[i]);
            if(retval != 0)
            {
                printString("not OK\n");
                return;
            }
            addrs[i] = mem_alloc(sz);
            if(addrs[i] == 0)
            {
                printString("not Ok\n");
                return;
            }

        }
        sz-=10;
    }

    printString("OK\n");
}

void memoryAllocationTests()
{
    //bigMalloc();
    //lotOfSmallMallocs();
    //mallocFree();
    //badFree();
    //stressTesting();
    //mallocTest();
    //mallocEverything();
    mallocGapFillTest();
}

void semaphoreTests()
{
    semTest1();
}

void myTests()
{
    //memoryAllocationTests();
    //threadTests();
    //semaphoreTests();
    consoleTests();
    //changeModeTests();
}

TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {

}

void TestPeriodic::periodicActivation()
{
    for(int i = 0 ; i < 10000;i++)
    {
        printString("i : ");
        printInt(i);
    }
}

void mallocTest()
{
    printString("Testing a few mallocs and frees\n\n");

    object* o = new object;
    o->a = 3;
    void* m1 = mem_alloc(10);
    void* m2 = mem_alloc(100);
    void* m3 = mem_alloc(1000);
    void* m4 = mem_alloc(10000);
    void* m5 = mem_alloc(1);

    if(!m1 || !m2 || !m3 || !m4 || !m5){
        printString("not OK\n");
        return;
    }

    delete (uint64*)m1;
    delete (uint64*)m3;
    delete (uint64*)m4;
    delete (uint64*)m2;
    delete (uint64*)m5;
    delete o;

    printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
}

void mallocEverything()
{
    printString("Testing allocating whole address space\n\n");

    uint64 neg_size = (uint64)HEAP_START_ADDR - (uint64)HEAP_END_ADDR -sizeof(MemoryAllocator::BlockHeader);

    void* m = mem_alloc(neg_size);

    if(m!=nullptr){
        printString("not OK\n");
        return;
    }

    uint64 blockSize = (((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR - sizeof(MemoryAllocator::BlockHeader))>>6)-300;

    m = mem_alloc(blockSize<<6);

    if(m==nullptr){
        printString("not OK\n");
        return;
    }

//    there should be some space left still, depending on source file size and output buffer size
//    excess allocation should fail and small_chunk should succeed

//    void *excess = mem_alloc(100);
//
//    if(excess!=nullptr){
//        Riscv::printString("not OK\n");
//        return;
//    }
//
    void *small_chunk = mem_alloc(1);

    if(small_chunk == nullptr){
        printString("not OK\n");
        return;
    }

    delete (uint64*)m;
    //delete (uint64*)small_chunk;

    printString("SUCCESSFUL: Testing allocating whole address space\n\n");
}

void mallocGapFillTest()
{
    printString("Testing gap filling and chunk merge after multiple mallocs and frees\n\n");

    const int N = 10;

    void *m[N];

    for(int i=0;i<N;i++)
    {
        m[i] = mem_alloc((i<<6)+1);
        if(m[i] == nullptr){
            printString("not OK\n");
            return;
        }
    }

    delete (uint64*)m[2];

    void* tmp1 = mem_alloc(1);
    void* tmp2 = mem_alloc(1);
    void* tmp3 = mem_alloc(1);

    if(!tmp1 || !tmp2 || !tmp3)
    {
        printString("not OK\n");
        return;
    }

    uint64 im1 = (uint64)m[1];
    uint64 im3 = (uint64)m[3];
    uint64 im5 = (uint64)m[5];
    uint64 imN = (uint64)m[N];

    uint64 itmp1 = (uint64)tmp1;
    uint64 itmp2 = (uint64)tmp2;
    uint64 itmp3 = (uint64)tmp3;

    if(!(im1<itmp1 && itmp1<im3 && im1<itmp2 && itmp2<im3 && itmp3>imN))
    {
        printString("not OK\n");
        return;
    }

    delete (uint64*)m[3];
    delete (uint64*)m[4];

    void* tmp4 = mem_alloc(640);
    void* tmp5 = mem_alloc(576);

    if(!tmp4 || !tmp5){
        printString("not OK\n");
        return;
    }

    uint64 itmp4 = (uint64)tmp4;
    uint64 itmp5 = (uint64)tmp5;

    if(!(itmp5>itmp2 && itmp5>im5 && itmp4<itmp3)){
        printString("not OK\n");
        return;
    }

    for(int i=0;i<N;i++){
        delete (uint64*)m[i];
    }

    delete (uint64*)tmp1;
    delete (uint64*)tmp2;
    delete (uint64*)tmp3;
    delete (uint64*)tmp4;
    delete (uint64*)tmp5;

    printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
}

char buffer[10];
int head = 0;
int tail = 0;
sem_t spaceAvailable, itemAvailable;
char string[11] = "this is ni";

void consumerA(void *arg)
{
    while(head!=10)
    {
        sem_wait(itemAvailable);
        __putc(buffer[head++]);
        sem_signal(spaceAvailable);
    }
}

void producerA(void *arg)
{
    while(tail!=10)
    {
        sem_wait(spaceAvailable);
        buffer[tail] = string[tail];
        tail++;
        sem_signal(itemAvailable);
    }
}

void semTest1()
{
    sem_open(&spaceAvailable, 10);

    sem_open(&itemAvailable, 0);

    thread_t threadA, threadB;

    thread_create(&threadA, producerA, nullptr);

    thread_create(&threadB, consumerA, nullptr);

    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
        thread_dispatch();
}

void consoleTest1()
{
    for(int i = 0; i < 100;i++)
    {
        getc();
    }
}

void consoleTests()
{
    consoleTest1();
}


void changeModeTest1()
{
    // u user niti smo
    __asm__ volatile("csrr a0, sstatus"); //treba da pukne
}

void changeModeTests()
{
    changeModeTest1();
}
