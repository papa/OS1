#include "../h/syscall_cpp.h"
#include "../lib/console.h"
#include "../h/Riscv.h"

class Test
{
public:
    uint64 a;
};

//memory (de)allocation tests
void mallocFree();
void bigMalloc();
void lotOfSmallMallocs();
void badFree();
void stressTesting();
void memoryAllocationTests();

//thread tests
void thread1Function();
void thread2Function();
void threadTests();

void testQueue();

void main()
{
    Riscv::initSystem();

    memoryAllocationTests();
    //threadTests();
    //testQueue();
}

void testQueue()
{
   /* Queue<uint64> q;
    q.push(1);
    q.push(2);
    uint64 x = q.front();
    q.pop();
    Riscv::printInteger(x);
    Riscv::printString("\n");*/
}

void thread1Function(void* p)
{
    Riscv::printString("Thread 1 started...\n");
    for(int i = 0; i < 10;i++)
    {
        Riscv::printInteger(Scheduler::getSize());
        if(i % 4 == 0 && i > 0)
            thread_dispatch();
        Riscv::printString("i : ");
        Riscv::printInteger(i);
        Riscv::printString("\n");
    }
}

void thread2Function(void* p)
{
    Riscv::printString("Thread 2 started...\n");
    for(int j = 0; j < 10;j++)
    {
        Riscv::printInteger(Scheduler::getSize());
        if(j % 5 == 0 && j > 0)
            thread_dispatch();
        Riscv::printString("j : ");
        Riscv::printInteger(j);
        Riscv::printString("\n");
    }
}

void threadTests()
{
    Thread* t = new Thread(0, 0);
    PCB::running = t->myHandle;
    PCB::running->setState(PCB::RUNNING);
    Thread* t1 = new Thread(&thread1Function, 0);
    Scheduler::put(t1->myHandle);
    Thread* t2 = new Thread(&thread2Function, 0);
    Scheduler::put(t2->myHandle);

    //Riscv::enableInterrupts();

    while(t1->myHandle->getState() != PCB::FINISHED || t2->myHandle->getState() != PCB::FINISHED)
    {

        thread_dispatch();
    }

    Riscv::printString("End...\n");
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
            Riscv::printString("not OK\n");
            return;
        }

    }
    int sz = 5;
    while(sz > 0)
    {
        Riscv::printString("sz : ");
        Riscv::printInteger(sz);
        for(int i = 0 ; i < num;i+=2)
        {
            Riscv::printString("i : ");
            Riscv::printInteger(i);
            Riscv::printString("free\n");
            int retval = mem_free(addrs[i]);
            if(retval != 0)
            {
                Riscv::printString("not OK\n");
                return;
            }
            Riscv::printString("alloc\n");
            addrs[i] = mem_alloc(sz/2);
            if(addrs[i] == 0)
            {
                Riscv::printString("not Ok\n");
                return;
            }

        }

        for(int i = 1 ; i < num;i+=2)
        {
            Riscv::printString("i : ");
            Riscv::printInteger(i);
            Riscv::printString("free\n");
            int retval = mem_free(addrs[i]);
            if(retval != 0)
            {
                Riscv::printString("not OK\n");
                return;
            }
            Riscv::printString("alloc\n");
            addrs[i] = mem_alloc(sz);
            if(addrs[i] == 0)
            {
                Riscv::printString("not Ok\n");
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
