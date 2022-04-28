#include "../h/syscall_cpp.h"
#include "../lib/console.h"
#include "../h/Riscv.h"

class Test
{
public:
    uint64 a;
};

void mallocFree();
void bigMalloc();
void lotOfSmallMallocs();
void badFree();

void memoryAllocationTests();

void main()
{
    Riscv::initSystem();
}

void mallocFree()
{
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

    for(int i = 0 ; i < num;i++)
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
    void* p = mem_alloc(1000000000000000UL);
    if(p == 0)
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
}

void lotOfSmallMallocs()
{
    uint64 cnt = 0;
    uint64 sum = 0;
    for(;;)
    {
        Test* t = (Test*) mem_alloc(sizeof(Test));
        if(t == 0)
            break;
        t->a = 10;
        sum+=t->a;
        cnt++;
    }
    Riscv::printInteger(cnt);
    if(sum == 10*cnt)
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
}
void badFree()
{
    Test* t = (Test*)mem_alloc(sizeof(Test));
    uint64 retval = mem_free((char*)t + 2);// address is not allocated with new, look at mem_free return value
    if(retval == 0)
        Riscv::printString("not OK\n");
    else
        Riscv::printString("OK\n");
}

void memoryAllocationTests()
{
    bigMalloc();
    lotOfSmallMallocs();
    mallocFree();
    badFree();
}
