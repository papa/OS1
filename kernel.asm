
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	94013103          	ld	sp,-1728(sp) # 80004940 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	519010ef          	jal	ra,80001d34 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <interruptvec>:
.extern interrupt
.align 4

interruptvec:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    sd x0, 0(sp)
    80001004:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    80001008:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001014:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    80001018:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001024:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    80001028:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001044:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    80001048:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call interrupt
    80001084:	4e8000ef          	jal	ra,8000156c <interrupt>
    #csrr a2 , sepc
    #li a3, 4
    #add a2, a2, a3
    #csrw sepc, a2

    ld x0, 0(sp)
    80001088:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001090:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001094:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    80001098:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001104:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    8000110c:	10200073          	sret

0000000080001110 <createThread>:

#include "../h/threadHandler.h"
#include "../h/memoryHandler.h"

void createThread()
{
    80001110:	ff010113          	addi	sp,sp,-16
    80001114:	00113423          	sd	ra,8(sp)
    80001118:	00813023          	sd	s0,0(sp)
    8000111c:	01010413          	addi	s0,sp,16
    uint64 size;
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80001120:	00058513          	mv	a0,a1
    void* threadAddr = tryToAllocateFragment(size);
    80001124:	00000097          	auipc	ra,0x0
    80001128:	138080e7          	jalr	312(ra) # 8000125c <tryToAllocateFragment>
    if(threadAddr == 0) {
    8000112c:	02050063          	beqz	a0,8000114c <createThread+0x3c>
        __asm__ volatile("li a0, 0x01");
        return;
    }

    uint64 start_routine_addr;
    __asm__ volatile("mv %0, a2" : "=r"(start_routine_addr));
    80001130:	00060793          	mv	a5,a2

    uint64 args_addr;
    __asm__ volatile("mv %0, a3" : "=r"(args_addr));
    80001134:	00068793          	mv	a5,a3

    uint64 thread_sp;
    __asm__ volatile("mv %0, a4" : "=r"(thread_sp));
    80001138:	00070793          	mv	a5,a4

    //__asm__ volatile("csrw sp, a0" : :"r"(thread_sp));
}
    8000113c:	00813083          	ld	ra,8(sp)
    80001140:	00013403          	ld	s0,0(sp)
    80001144:	01010113          	addi	sp,sp,16
    80001148:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    8000114c:	00100513          	li	a0,1
        return;
    80001150:	fedff06f          	j	8000113c <createThread+0x2c>

0000000080001154 <initMemory>:
int memoryInitiliaized = 0;
int MEM_ALLOC = 1;
int MEM_FREE = 2;

void initMemory()
{
    80001154:	ff010113          	addi	sp,sp,-16
    80001158:	00813423          	sd	s0,8(sp)
    8000115c:	01010413          	addi	s0,sp,16
    if(!memoryInitiliaized)
    80001160:	00004797          	auipc	a5,0x4
    80001164:	8107a783          	lw	a5,-2032(a5) # 80004970 <memoryInitiliaized>
    80001168:	04078063          	beqz	a5,800011a8 <initMemory+0x54>
        return;
    memoryInitiliaized = 1;
    8000116c:	00100793          	li	a5,1
    80001170:	00004717          	auipc	a4,0x4
    80001174:	80f72023          	sw	a5,-2048(a4) # 80004970 <memoryInitiliaized>
    headAllocated = 0;
    80001178:	00004797          	auipc	a5,0x4
    8000117c:	8007b423          	sd	zero,-2040(a5) # 80004980 <headAllocated>
    headFree = (struct FreeFragment*)HEAP_START_ADDR;
    80001180:	00003717          	auipc	a4,0x3
    80001184:	7a073703          	ld	a4,1952(a4) # 80004920 <HEAP_START_ADDR>
    80001188:	00003797          	auipc	a5,0x3
    8000118c:	7ee7b823          	sd	a4,2032(a5) # 80004978 <headFree>
    headFree->next = 0;
    80001190:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1);
    80001194:	00003797          	auipc	a5,0x3
    80001198:	7847b783          	ld	a5,1924(a5) # 80004918 <HEAP_END_ADDR>
    8000119c:	40e787b3          	sub	a5,a5,a4
    800011a0:	00178793          	addi	a5,a5,1
    800011a4:	00f73023          	sd	a5,0(a4)
}
    800011a8:	00813403          	ld	s0,8(sp)
    800011ac:	01010113          	addi	sp,sp,16
    800011b0:	00008067          	ret

00000000800011b4 <insertNewAllocatedFragment>:

void insertNewAllocatedFragment(void* addr, size_t size) {
    800011b4:	fe010113          	addi	sp,sp,-32
    800011b8:	00113c23          	sd	ra,24(sp)
    800011bc:	00813823          	sd	s0,16(sp)
    800011c0:	00913423          	sd	s1,8(sp)
    800011c4:	01213023          	sd	s2,0(sp)
    800011c8:	02010413          	addi	s0,sp,32
    800011cc:	00050493          	mv	s1,a0
    800011d0:	00058913          	mv	s2,a1

    initMemory();
    800011d4:	00000097          	auipc	ra,0x0
    800011d8:	f80080e7          	jalr	-128(ra) # 80001154 <initMemory>
    AllocatedFragment* prev = 0;
    AllocatedFragment* after =  headAllocated;
    800011dc:	00003797          	auipc	a5,0x3
    800011e0:	7a47b783          	ld	a5,1956(a5) # 80004980 <headAllocated>
    AllocatedFragment* prev = 0;
    800011e4:	00000713          	li	a4,0
    while(after != 0) {
    800011e8:	00078a63          	beqz	a5,800011fc <insertNewAllocatedFragment+0x48>
        if((void*)after > addr)
    800011ec:	00f4e863          	bltu	s1,a5,800011fc <insertNewAllocatedFragment+0x48>
            break;

        prev = after;
    800011f0:	00078713          	mv	a4,a5
        after = after->next;
    800011f4:	0087b783          	ld	a5,8(a5)
    800011f8:	ff1ff06f          	j	800011e8 <insertNewAllocatedFragment+0x34>
    }

    AllocatedFragment* newAllocated = (AllocatedFragment*)addr;
    newAllocated->next = 0;
    800011fc:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80001200:	0124b023          	sd	s2,0(s1)
    if(after == 0) {
    80001204:	02078463          	beqz	a5,8000122c <insertNewAllocatedFragment+0x78>
            headAllocated = newAllocated;
        else
            prev->next = newAllocated;
    }
    else {
        if(prev == 0) {
    80001208:	02070e63          	beqz	a4,80001244 <insertNewAllocatedFragment+0x90>
            newAllocated->next = headAllocated;
            headAllocated = newAllocated;
        }
        else {
            newAllocated->next = after;
    8000120c:	00f4b423          	sd	a5,8(s1)
            prev->next = newAllocated;
    80001210:	00973423          	sd	s1,8(a4)
        }
    }
}
    80001214:	01813083          	ld	ra,24(sp)
    80001218:	01013403          	ld	s0,16(sp)
    8000121c:	00813483          	ld	s1,8(sp)
    80001220:	00013903          	ld	s2,0(sp)
    80001224:	02010113          	addi	sp,sp,32
    80001228:	00008067          	ret
        if(prev == 0)
    8000122c:	00070663          	beqz	a4,80001238 <insertNewAllocatedFragment+0x84>
            prev->next = newAllocated;
    80001230:	00973423          	sd	s1,8(a4)
    80001234:	fe1ff06f          	j	80001214 <insertNewAllocatedFragment+0x60>
            headAllocated = newAllocated;
    80001238:	00003797          	auipc	a5,0x3
    8000123c:	7497b423          	sd	s1,1864(a5) # 80004980 <headAllocated>
    80001240:	fd5ff06f          	j	80001214 <insertNewAllocatedFragment+0x60>
            newAllocated->next = headAllocated;
    80001244:	00003797          	auipc	a5,0x3
    80001248:	73c78793          	addi	a5,a5,1852 # 80004980 <headAllocated>
    8000124c:	0007b703          	ld	a4,0(a5)
    80001250:	00e4b423          	sd	a4,8(s1)
            headAllocated = newAllocated;
    80001254:	0097b023          	sd	s1,0(a5)
    80001258:	fbdff06f          	j	80001214 <insertNewAllocatedFragment+0x60>

000000008000125c <tryToAllocateFragment>:

void* tryToAllocateFragment(size_t size) {
    8000125c:	fe010113          	addi	sp,sp,-32
    80001260:	00113c23          	sd	ra,24(sp)
    80001264:	00813823          	sd	s0,16(sp)
    80001268:	00913423          	sd	s1,8(sp)
    8000126c:	01213023          	sd	s2,0(sp)
    80001270:	02010413          	addi	s0,sp,32
    80001274:	00050913          	mv	s2,a0
    initMemory();
    80001278:	00000097          	auipc	ra,0x0
    8000127c:	edc080e7          	jalr	-292(ra) # 80001154 <initMemory>
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    80001280:	00003497          	auipc	s1,0x3
    80001284:	6f84b483          	ld	s1,1784(s1) # 80004978 <headFree>
    uint64 newSize = size + sizeof(AllocatedFragment);
    80001288:	01090693          	addi	a3,s2,16
    FreeFragment* prev = 0;
    8000128c:	00000713          	li	a4,0
    while(curr != 0) {
    80001290:	0700006f          	j	80001300 <tryToAllocateFragment+0xa4>
            void* newAddr = ((char*)curr + newSize);
            if(newAddr <= HEAP_END_ADDR) {

                FreeFragment *newFree = (FreeFragment *) newAddr;

                if (prev != 0)
    80001294:	04070263          	beqz	a4,800012d8 <tryToAllocateFragment+0x7c>
                    prev->next = newFree;
    80001298:	00f73423          	sd	a5,8(a4)
                else
                    headFree = newFree;

                newFree->next = curr->next;
    8000129c:	0084b603          	ld	a2,8(s1)
    800012a0:	00c7b423          	sd	a2,8(a5)
                newFree->size = curr->size - newSize;
    800012a4:	0004b603          	ld	a2,0(s1)
    800012a8:	40d606b3          	sub	a3,a2,a3
    800012ac:	00d7b023          	sd	a3,0(a5)

                if(newFree->size == 0)
    800012b0:	00069863          	bnez	a3,800012c0 <tryToAllocateFragment+0x64>
                {
                    if(prev != 0)
    800012b4:	02070863          	beqz	a4,800012e4 <tryToAllocateFragment+0x88>
                        prev->next = curr->next;
    800012b8:	0084b783          	ld	a5,8(s1)
    800012bc:	00f73423          	sd	a5,8(a4)
                    else
                        headFree = 0;
                }

                insertNewAllocatedFragment(oldAddr, size);
    800012c0:	00090593          	mv	a1,s2
    800012c4:	00048513          	mv	a0,s1
    800012c8:	00000097          	auipc	ra,0x0
    800012cc:	eec080e7          	jalr	-276(ra) # 800011b4 <insertNewAllocatedFragment>



                uint64 oldA = (uint64) ((char*)oldAddr + sizeof(AllocatedFragment));
    800012d0:	01048493          	addi	s1,s1,16

                return (void*)oldA;
    800012d4:	05c0006f          	j	80001330 <tryToAllocateFragment+0xd4>
                    headFree = newFree;
    800012d8:	00003617          	auipc	a2,0x3
    800012dc:	6af63023          	sd	a5,1696(a2) # 80004978 <headFree>
    800012e0:	fbdff06f          	j	8000129c <tryToAllocateFragment+0x40>
                        headFree = 0;
    800012e4:	00003797          	auipc	a5,0x3
    800012e8:	6807ba23          	sd	zero,1684(a5) # 80004978 <headFree>
    800012ec:	fd5ff06f          	j	800012c0 <tryToAllocateFragment+0x64>
                {
                    prev->next = 0;
                }
                else
                {
                    headFree = 0;
    800012f0:	00003797          	auipc	a5,0x3
    800012f4:	6807b423          	sd	zero,1672(a5) # 80004978 <headFree>
                }
            }
        }
        prev = curr;
    800012f8:	00048713          	mv	a4,s1
        curr = curr->next;
    800012fc:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    80001300:	02048463          	beqz	s1,80001328 <tryToAllocateFragment+0xcc>
        if(curr->size >= newSize) {
    80001304:	0004b783          	ld	a5,0(s1)
    80001308:	fed7e8e3          	bltu	a5,a3,800012f8 <tryToAllocateFragment+0x9c>
            void* newAddr = ((char*)curr + newSize);
    8000130c:	00d487b3          	add	a5,s1,a3
            if(newAddr <= HEAP_END_ADDR) {
    80001310:	00003617          	auipc	a2,0x3
    80001314:	60863603          	ld	a2,1544(a2) # 80004918 <HEAP_END_ADDR>
    80001318:	f6f67ee3          	bgeu	a2,a5,80001294 <tryToAllocateFragment+0x38>
                if(prev != 0)
    8000131c:	fc070ae3          	beqz	a4,800012f0 <tryToAllocateFragment+0x94>
                    prev->next = 0;
    80001320:	00073423          	sd	zero,8(a4)
    80001324:	fd5ff06f          	j	800012f8 <tryToAllocateFragment+0x9c>
    }

    uint64 x = 0;
    __asm__ volatile("mv a0,%0" : : "r"(x));
    80001328:	00000793          	li	a5,0
    8000132c:	00078513          	mv	a0,a5

    return 0;
}
    80001330:	00048513          	mv	a0,s1
    80001334:	01813083          	ld	ra,24(sp)
    80001338:	01013403          	ld	s0,16(sp)
    8000133c:	00813483          	ld	s1,8(sp)
    80001340:	00013903          	ld	s2,0(sp)
    80001344:	02010113          	addi	sp,sp,32
    80001348:	00008067          	ret

000000008000134c <insertNewFreeSegment>:

void insertNewFreeSegment(void* addr, size_t size)
{
    8000134c:	fe010113          	addi	sp,sp,-32
    80001350:	00113c23          	sd	ra,24(sp)
    80001354:	00813823          	sd	s0,16(sp)
    80001358:	00913423          	sd	s1,8(sp)
    8000135c:	01213023          	sd	s2,0(sp)
    80001360:	02010413          	addi	s0,sp,32
    80001364:	00050493          	mv	s1,a0
    80001368:	00058913          	mv	s2,a1
    initMemory();
    8000136c:	00000097          	auipc	ra,0x0
    80001370:	de8080e7          	jalr	-536(ra) # 80001154 <initMemory>
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    80001374:	00003797          	auipc	a5,0x3
    80001378:	6047b783          	ld	a5,1540(a5) # 80004978 <headFree>
    FreeFragment* newSegment = (FreeFragment*) addr;
    newSegment->size = size;
    8000137c:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80001380:	0004b423          	sd	zero,8(s1)
    FreeFragment* prev = 0;
    80001384:	00000713          	li	a4,0
    while(curr != 0)
    80001388:	00078c63          	beqz	a5,800013a0 <insertNewFreeSegment+0x54>
    {
        if((void*)curr > addr)
    8000138c:	00f4e863          	bltu	s1,a5,8000139c <insertNewFreeSegment+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80001390:	00078713          	mv	a4,a5
        curr = curr->next;
    80001394:	0087b783          	ld	a5,8(a5)
    80001398:	ff1ff06f          	j	80001388 <insertNewFreeSegment+0x3c>
            newSegment->next = curr;
    8000139c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800013a0:	02070063          	beqz	a4,800013c0 <insertNewFreeSegment+0x74>
        headFree = newSegment;
    else
        prev->next = newSegment;
    800013a4:	00973423          	sd	s1,8(a4)
}
    800013a8:	01813083          	ld	ra,24(sp)
    800013ac:	01013403          	ld	s0,16(sp)
    800013b0:	00813483          	ld	s1,8(sp)
    800013b4:	00013903          	ld	s2,0(sp)
    800013b8:	02010113          	addi	sp,sp,32
    800013bc:	00008067          	ret
        headFree = newSegment;
    800013c0:	00003797          	auipc	a5,0x3
    800013c4:	5a97bc23          	sd	s1,1464(a5) # 80004978 <headFree>
    800013c8:	fe1ff06f          	j	800013a8 <insertNewFreeSegment+0x5c>

00000000800013cc <tryToFreeSegment>:

void tryToFreeSegment(void* addr)
{
    800013cc:	fe010113          	addi	sp,sp,-32
    800013d0:	00113c23          	sd	ra,24(sp)
    800013d4:	00813823          	sd	s0,16(sp)
    800013d8:	00913423          	sd	s1,8(sp)
    800013dc:	01213023          	sd	s2,0(sp)
    800013e0:	02010413          	addi	s0,sp,32
    800013e4:	00050913          	mv	s2,a0
    initMemory();
    800013e8:	00000097          	auipc	ra,0x0
    800013ec:	d6c080e7          	jalr	-660(ra) # 80001154 <initMemory>
    AllocatedFragment* prev = 0;
    AllocatedFragment* curr = headAllocated;
    800013f0:	00003497          	auipc	s1,0x3
    800013f4:	5904b483          	ld	s1,1424(s1) # 80004980 <headAllocated>
    int found = 0;
    800013f8:	00000693          	li	a3,0
    AllocatedFragment* prev = 0;
    800013fc:	00000713          	li	a4,0
    while(curr != 0 && !found)
    80001400:	0300006f          	j	80001430 <tryToFreeSegment+0x64>
        {
            if(prev != 0) {
                prev->next = curr->next;
            }
            else {
                headAllocated = curr->next;
    80001404:	0084b783          	ld	a5,8(s1)
    80001408:	00003717          	auipc	a4,0x3
    8000140c:	56f73c23          	sd	a5,1400(a4) # 80004980 <headAllocated>
            }

            insertNewFreeSegment((void*)curr, curr->size + sizeof(AllocatedFragment));
    80001410:	0004b583          	ld	a1,0(s1)
    80001414:	01058593          	addi	a1,a1,16
    80001418:	00048513          	mv	a0,s1
    8000141c:	00000097          	auipc	ra,0x0
    80001420:	f30080e7          	jalr	-208(ra) # 8000134c <insertNewFreeSegment>

            found = 1;
    80001424:	00100693          	li	a3,1
        }

        prev = curr;
    80001428:	00048713          	mv	a4,s1
        curr = curr->next;
    8000142c:	0084b483          	ld	s1,8(s1)
    while(curr != 0 && !found)
    80001430:	02048063          	beqz	s1,80001450 <tryToFreeSegment+0x84>
    80001434:	00069e63          	bnez	a3,80001450 <tryToFreeSegment+0x84>
        if(addr == (void*)((char*)curr + sizeof(AllocatedFragment)))
    80001438:	01048793          	addi	a5,s1,16
    8000143c:	ff2796e3          	bne	a5,s2,80001428 <tryToFreeSegment+0x5c>
            if(prev != 0) {
    80001440:	fc0702e3          	beqz	a4,80001404 <tryToFreeSegment+0x38>
                prev->next = curr->next;
    80001444:	0084b783          	ld	a5,8(s1)
    80001448:	00f73423          	sd	a5,8(a4)
    8000144c:	fc5ff06f          	j	80001410 <tryToFreeSegment+0x44>
    }

    if(found) {
    80001450:	02068063          	beqz	a3,80001470 <tryToFreeSegment+0xa4>
        __asm__ volatile("li a0, 0");
    80001454:	00000513          	li	a0,0
    }
    else {
        __asm__ volatile("li a0, 1");
    }
}
    80001458:	01813083          	ld	ra,24(sp)
    8000145c:	01013403          	ld	s0,16(sp)
    80001460:	00813483          	ld	s1,8(sp)
    80001464:	00013903          	ld	s2,0(sp)
    80001468:	02010113          	addi	sp,sp,32
    8000146c:	00008067          	ret
        __asm__ volatile("li a0, 1");
    80001470:	00100513          	li	a0,1
}
    80001474:	fe5ff06f          	j	80001458 <tryToFreeSegment+0x8c>

0000000080001478 <mem_alloc>:

#ifdef __cplusplus
extern "C"
#endif
void* mem_alloc(size_t size)
{
    80001478:	ff010113          	addi	sp,sp,-16
    8000147c:	00813423          	sd	s0,8(sp)
    80001480:	01010413          	addi	s0,sp,16
    //prepare for system call
    __asm__ volatile("li a0, 1");
    80001484:	00100513          	li	a0,1
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001488:	03f50513          	addi	a0,a0,63 # 103f <_entry-0x7fffefc1>
    8000148c:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    80001490:	00050593          	mv	a1,a0

    __asm__ volatile("ecall"); // system call
    80001494:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80001498:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    8000149c:	00813403          	ld	s0,8(sp)
    800014a0:	01010113          	addi	sp,sp,16
    800014a4:	00008067          	ret

00000000800014a8 <mem_free>:

#ifdef __cplusplus
extern "C"
#endif
int mem_free(void* p)
{
    800014a8:	ff010113          	addi	sp,sp,-16
    800014ac:	00813423          	sd	s0,8(sp)
    800014b0:	01010413          	addi	s0,sp,16
    //prepare for system call
    __asm__ volatile("li a0, 2");
    800014b4:	00200513          	li	a0,2
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    800014b8:	00050593          	mv	a1,a0

    __asm__ volatile("ecall"); // system call
    800014bc:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800014c0:	00050513          	mv	a0,a0

    return result;
}
    800014c4:	0005051b          	sext.w	a0,a0
    800014c8:	00813403          	ld	s0,8(sp)
    800014cc:	01010113          	addi	sp,sp,16
    800014d0:	00008067          	ret

00000000800014d4 <thread_create>:

#ifdef __cplusplus
extern "C"
#endif
int thread_create(uint64** handle, void (*start_routine)(void*), void* args)
{
    800014d4:	ff010113          	addi	sp,sp,-16
    800014d8:	00113423          	sd	ra,8(sp)
    800014dc:	00813023          	sd	s0,0(sp)
    800014e0:	01010413          	addi	s0,sp,16
    //initialize registers
    __asm__ volatile("li a0, 0x11");
    800014e4:	01100513          	li	a0,17
    //uint64 start_routine_addres = (uint64)start_routine;
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)start_routine));
    800014e8:	00058613          	mv	a2,a1
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)args));
    800014ec:	00060693          	mv	a3,a2

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800014f0:	00001537          	lui	a0,0x1
    800014f4:	00000097          	auipc	ra,0x0
    800014f8:	f84080e7          	jalr	-124(ra) # 80001478 <mem_alloc>

    //handle this error
    if(stack_space == 0)
    800014fc:	02050263          	beqz	a0,80001520 <thread_create+0x4c>
        return -1;

    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stack_space));
    80001500:	00050713          	mv	a4,a0

    //todo
    __asm__ volatile("ecall");
    80001504:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001508:	00050513          	mv	a0,a0

    return result;
    8000150c:	0005051b          	sext.w	a0,a0
}
    80001510:	00813083          	ld	ra,8(sp)
    80001514:	00013403          	ld	s0,0(sp)
    80001518:	01010113          	addi	sp,sp,16
    8000151c:	00008067          	ret
        return -1;
    80001520:	fff00513          	li	a0,-1
    80001524:	fedff06f          	j	80001510 <thread_create+0x3c>

0000000080001528 <main>:
#include "../lib/console.h"

//extern "C" void interruptvec();

void main()
{
    80001528:	ff010113          	addi	sp,sp,-16
    8000152c:	00113423          	sd	ra,8(sp)
    80001530:	00813023          	sd	s0,0(sp)
    80001534:	01010413          	addi	s0,sp,16
    System::initSystem();
    80001538:	00000097          	auipc	ra,0x0
    8000153c:	404080e7          	jalr	1028(ra) # 8000193c <_ZN6System10initSystemEv>
    //__asm__ volatile("csrw stvec, %0" : : [vector]"r"(&interruptvec));

    __putc('a');
    80001540:	06100513          	li	a0,97
    80001544:	00003097          	auipc	ra,0x3
    80001548:	8b8080e7          	jalr	-1864(ra) # 80003dfc <__putc>
    __asm__ volatile("ecall");
    8000154c:	00000073          	ecall
    __putc('b');
    80001550:	06200513          	li	a0,98
    80001554:	00003097          	auipc	ra,0x3
    80001558:	8a8080e7          	jalr	-1880(ra) # 80003dfc <__putc>
    return;

    MemoryAllocator* memoryAllocator = MemoryAllocator::getMemoryAllocator();
    memoryAllocator->mem_alloc(2);
    8000155c:	00813083          	ld	ra,8(sp)
    80001560:	00013403          	ld	s0,0(sp)
    80001564:	01010113          	addi	sp,sp,16
    80001568:	00008067          	ret

000000008000156c <interrupt>:
const uint64 addrReadInterrupt = bntZero + 5UL;
const uint64 addrWriteInterrupt = bntZero + 7UL;
const uint64 ecallUserInterrupt = bntZero + 8UL;
const uint64 ecallSystemInterupt = bntZero + 9UL;

extern "C" void interrupt() {
    8000156c:	ff010113          	addi	sp,sp,-16
    80001570:	00113423          	sd	ra,8(sp)
    80001574:	00813023          	sd	s0,0(sp)
    80001578:	01010413          	addi	s0,sp,16

    uint64 scause;
    __asm__ volatile("csrr %0,scause":"=r"(scause));
    8000157c:	14202773          	csrr	a4,scause
    switch(scause) {
    80001580:	00900793          	li	a5,9
    80001584:	00f70e63          	beq	a4,a5,800015a0 <interrupt+0x34>
    //uint64 sie;
    //asm volatile("csrr %0, sie" : "=r"(sie));
    //sie &= ~2;
    //asm volatile("csrw sie, %0" : : "r" (sie));

    console_handler();
    80001588:	00003097          	auipc	ra,0x3
    8000158c:	8e8080e7          	jalr	-1816(ra) # 80003e70 <console_handler>
}
    80001590:	00813083          	ld	ra,8(sp)
    80001594:	00013403          	ld	s0,0(sp)
    80001598:	01010113          	addi	sp,sp,16
    8000159c:	00008067          	ret
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    800015a0:	00050793          	mv	a5,a0
            if(operation == (uint64)MEM_ALLOC) {
    800015a4:	00003717          	auipc	a4,0x3
    800015a8:	3b473703          	ld	a4,948(a4) # 80004958 <_GLOBAL_OFFSET_TABLE_+0x20>
    800015ac:	00072703          	lw	a4,0(a4)
    800015b0:	02f70263          	beq	a4,a5,800015d4 <interrupt+0x68>
            else if(operation == (uint64)MEM_FREE){
    800015b4:	00003717          	auipc	a4,0x3
    800015b8:	39473703          	ld	a4,916(a4) # 80004948 <_GLOBAL_OFFSET_TABLE_+0x10>
    800015bc:	00072703          	lw	a4,0(a4)
    800015c0:	fcf714e3          	bne	a4,a5,80001588 <interrupt+0x1c>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    800015c4:	00058513          	mv	a0,a1
                tryToFreeSegment((void*)addr);
    800015c8:	00000097          	auipc	ra,0x0
    800015cc:	e04080e7          	jalr	-508(ra) # 800013cc <tryToFreeSegment>
    800015d0:	fb9ff06f          	j	80001588 <interrupt+0x1c>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    800015d4:	00058513          	mv	a0,a1
                void* allocatedAddr = tryToAllocateFragment(size);
    800015d8:	00651513          	slli	a0,a0,0x6
    800015dc:	00000097          	auipc	ra,0x0
    800015e0:	c80080e7          	jalr	-896(ra) # 8000125c <tryToAllocateFragment>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800015e4:	00050513          	mv	a0,a0
    800015e8:	fa1ff06f          	j	80001588 <interrupt+0x1c>

00000000800015ec <_Znwm>:
#include "../h/syscall_cpp.h"
#include "../h/syscall_c.h"

//general
void * operator new(size_t size)
{
    800015ec:	ff010113          	addi	sp,sp,-16
    800015f0:	00113423          	sd	ra,8(sp)
    800015f4:	00813023          	sd	s0,0(sp)
    800015f8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	e7c080e7          	jalr	-388(ra) # 80001478 <mem_alloc>
}
    80001604:	00813083          	ld	ra,8(sp)
    80001608:	00013403          	ld	s0,0(sp)
    8000160c:	01010113          	addi	sp,sp,16
    80001610:	00008067          	ret

0000000080001614 <_ZdlPv>:

void operator delete(void * p)
{
    80001614:	ff010113          	addi	sp,sp,-16
    80001618:	00113423          	sd	ra,8(sp)
    8000161c:	00813023          	sd	s0,0(sp)
    80001620:	01010413          	addi	s0,sp,16
   mem_free(p);
    80001624:	00000097          	auipc	ra,0x0
    80001628:	e84080e7          	jalr	-380(ra) # 800014a8 <mem_free>
}
    8000162c:	00813083          	ld	ra,8(sp)
    80001630:	00013403          	ld	s0,0(sp)
    80001634:	01010113          	addi	sp,sp,16
    80001638:	00008067          	ret

000000008000163c <_ZN15MemoryAllocatorC1Ev>:

//MemoryAllocator.h

MemoryAllocator* MemoryAllocator::memoryAllocator = 0;

MemoryAllocator::MemoryAllocator() {
    8000163c:	ff010113          	addi	sp,sp,-16
    80001640:	00813423          	sd	s0,8(sp)
    80001644:	01010413          	addi	s0,sp,16

}
    80001648:	00813403          	ld	s0,8(sp)
    8000164c:	01010113          	addi	sp,sp,16
    80001650:	00008067          	ret

0000000080001654 <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t size) {
    80001654:	ff010113          	addi	sp,sp,-16
    80001658:	00113423          	sd	ra,8(sp)
    8000165c:	00813023          	sd	s0,0(sp)
    80001660:	01010413          	addi	s0,sp,16
    //todo
    //sta ovde treba kao parametar
    //svuda pogledaj to
    return ::mem_alloc(sizeof(MemoryAllocator));
    80001664:	00100513          	li	a0,1
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	e10080e7          	jalr	-496(ra) # 80001478 <mem_alloc>
}
    80001670:	00813083          	ld	ra,8(sp)
    80001674:	00013403          	ld	s0,0(sp)
    80001678:	01010113          	addi	sp,sp,16
    8000167c:	00008067          	ret

0000000080001680 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void * addr) {
    80001680:	ff010113          	addi	sp,sp,-16
    80001684:	00113423          	sd	ra,8(sp)
    80001688:	00813023          	sd	s0,0(sp)
    8000168c:	01010413          	addi	s0,sp,16
    return ::mem_free(addr);
    80001690:	00058513          	mv	a0,a1
    80001694:	00000097          	auipc	ra,0x0
    80001698:	e14080e7          	jalr	-492(ra) # 800014a8 <mem_free>
}
    8000169c:	00813083          	ld	ra,8(sp)
    800016a0:	00013403          	ld	s0,0(sp)
    800016a4:	01010113          	addi	sp,sp,16
    800016a8:	00008067          	ret

00000000800016ac <_ZN15MemoryAllocatorD1Ev>:
        memoryAllocator = new MemoryAllocator();
    }
    return memoryAllocator;
}

MemoryAllocator::~MemoryAllocator() {
    800016ac:	ff010113          	addi	sp,sp,-16
    800016b0:	00813423          	sd	s0,8(sp)
    800016b4:	01010413          	addi	s0,sp,16

}
    800016b8:	00813403          	ld	s0,8(sp)
    800016bc:	01010113          	addi	sp,sp,16
    800016c0:	00008067          	ret

00000000800016c4 <_ZN15MemoryAllocatornwEm>:

void *MemoryAllocator::operator new(size_t size) {
    800016c4:	ff010113          	addi	sp,sp,-16
    800016c8:	00113423          	sd	ra,8(sp)
    800016cc:	00813023          	sd	s0,0(sp)
    800016d0:	01010413          	addi	s0,sp,16
    return ::operator new(size);
    800016d4:	00000097          	auipc	ra,0x0
    800016d8:	f18080e7          	jalr	-232(ra) # 800015ec <_Znwm>
}
    800016dc:	00813083          	ld	ra,8(sp)
    800016e0:	00013403          	ld	s0,0(sp)
    800016e4:	01010113          	addi	sp,sp,16
    800016e8:	00008067          	ret

00000000800016ec <_ZN15MemoryAllocator18getMemoryAllocatorEv>:
    if(memoryAllocator == 0) {
    800016ec:	00003797          	auipc	a5,0x3
    800016f0:	2c47b783          	ld	a5,708(a5) # 800049b0 <_ZN15MemoryAllocator15memoryAllocatorE>
    800016f4:	00078863          	beqz	a5,80001704 <_ZN15MemoryAllocator18getMemoryAllocatorEv+0x18>
}
    800016f8:	00003517          	auipc	a0,0x3
    800016fc:	2b853503          	ld	a0,696(a0) # 800049b0 <_ZN15MemoryAllocator15memoryAllocatorE>
    80001700:	00008067          	ret
MemoryAllocator* MemoryAllocator::getMemoryAllocator() {
    80001704:	ff010113          	addi	sp,sp,-16
    80001708:	00113423          	sd	ra,8(sp)
    8000170c:	00813023          	sd	s0,0(sp)
    80001710:	01010413          	addi	s0,sp,16
        memoryAllocator = new MemoryAllocator();
    80001714:	00100513          	li	a0,1
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	fac080e7          	jalr	-84(ra) # 800016c4 <_ZN15MemoryAllocatornwEm>
    80001720:	00003797          	auipc	a5,0x3
    80001724:	28a7b823          	sd	a0,656(a5) # 800049b0 <_ZN15MemoryAllocator15memoryAllocatorE>
}
    80001728:	00003517          	auipc	a0,0x3
    8000172c:	28853503          	ld	a0,648(a0) # 800049b0 <_ZN15MemoryAllocator15memoryAllocatorE>
    80001730:	00813083          	ld	ra,8(sp)
    80001734:	00013403          	ld	s0,0(sp)
    80001738:	01010113          	addi	sp,sp,16
    8000173c:	00008067          	ret

0000000080001740 <_ZN15MemoryAllocatordlEPv>:

void MemoryAllocator::operator delete(void *p) {
    80001740:	ff010113          	addi	sp,sp,-16
    80001744:	00113423          	sd	ra,8(sp)
    80001748:	00813023          	sd	s0,0(sp)
    8000174c:	01010413          	addi	s0,sp,16
    ::operator delete(p);
    80001750:	00000097          	auipc	ra,0x0
    80001754:	ec4080e7          	jalr	-316(ra) # 80001614 <_ZdlPv>
}
    80001758:	00813083          	ld	ra,8(sp)
    8000175c:	00013403          	ld	s0,0(sp)
    80001760:	01010113          	addi	sp,sp,16
    80001764:	00008067          	ret

0000000080001768 <_ZN9SchedulernwEm>:
    //todo
    //da li radi konstruktor
    queuePCB= new Queue<PCB*>();
}

void *Scheduler::operator new(size_t size) {
    80001768:	ff010113          	addi	sp,sp,-16
    8000176c:	00113423          	sd	ra,8(sp)
    80001770:	00813023          	sd	s0,0(sp)
    80001774:	01010413          	addi	s0,sp,16
    return ::operator new(sizeof(Scheduler));
    80001778:	00800513          	li	a0,8
    8000177c:	00000097          	auipc	ra,0x0
    80001780:	e70080e7          	jalr	-400(ra) # 800015ec <_Znwm>
}
    80001784:	00813083          	ld	ra,8(sp)
    80001788:	00013403          	ld	s0,0(sp)
    8000178c:	01010113          	addi	sp,sp,16
    80001790:	00008067          	ret

0000000080001794 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p) {
    80001794:	ff010113          	addi	sp,sp,-16
    80001798:	00113423          	sd	ra,8(sp)
    8000179c:	00813023          	sd	s0,0(sp)
    800017a0:	01010413          	addi	s0,sp,16
    ::operator delete(p);
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	e70080e7          	jalr	-400(ra) # 80001614 <_ZdlPv>
}
    800017ac:	00813083          	ld	ra,8(sp)
    800017b0:	00013403          	ld	s0,0(sp)
    800017b4:	01010113          	addi	sp,sp,16
    800017b8:	00008067          	ret

00000000800017bc <_ZN6ThreadC1EPFvPvES0_>:
//Thread.h

//todo
//kreiranje pocetnog konteksta niti

Thread::Thread(void (*body)(void *), void *arg) {
    800017bc:	ff010113          	addi	sp,sp,-16
    800017c0:	00813423          	sd	s0,8(sp)
    800017c4:	01010413          	addi	s0,sp,16
    f = body;
    800017c8:	00b53023          	sd	a1,0(a0)
    args = arg;
    800017cc:	00c53423          	sd	a2,8(a0)
}
    800017d0:	00813403          	ld	s0,8(sp)
    800017d4:	01010113          	addi	sp,sp,16
    800017d8:	00008067          	ret

00000000800017dc <_ZN6Thread8dispatchEv>:

void Thread::start() {
    threadPCB->start();
}

void Thread::dispatch() {
    800017dc:	ff010113          	addi	sp,sp,-16
    800017e0:	00813423          	sd	s0,8(sp)
    800017e4:	01010413          	addi	s0,sp,16

}
    800017e8:	00813403          	ld	s0,8(sp)
    800017ec:	01010113          	addi	sp,sp,16
    800017f0:	00008067          	ret

00000000800017f4 <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    800017f4:	ff010113          	addi	sp,sp,-16
    800017f8:	00813423          	sd	s0,8(sp)
    800017fc:	01010413          	addi	s0,sp,16

}
    80001800:	00813403          	ld	s0,8(sp)
    80001804:	01010113          	addi	sp,sp,16
    80001808:	00008067          	ret

000000008000180c <_ZN6ThreadC1Ev>:

Thread::Thread() {
    8000180c:	ff010113          	addi	sp,sp,-16
    80001810:	00813423          	sd	s0,8(sp)
    80001814:	01010413          	addi	s0,sp,16

}
    80001818:	00813403          	ld	s0,8(sp)
    8000181c:	01010113          	addi	sp,sp,16
    80001820:	00008067          	ret

0000000080001824 <_ZN6ThreaddlEPv>:
    //koji su ovde parametri poziva
    thread_create(0, 0, 0);

}*/

void Thread::operator delete(void *p) {
    80001824:	ff010113          	addi	sp,sp,-16
    80001828:	00113423          	sd	ra,8(sp)
    8000182c:	00813023          	sd	s0,0(sp)
    80001830:	01010413          	addi	s0,sp,16
    ::operator delete(p);
    80001834:	00000097          	auipc	ra,0x0
    80001838:	de0080e7          	jalr	-544(ra) # 80001614 <_ZdlPv>
}
    8000183c:	00813083          	ld	ra,8(sp)
    80001840:	00013403          	ld	s0,0(sp)
    80001844:	01010113          	addi	sp,sp,16
    80001848:	00008067          	ret

000000008000184c <_ZN3PCBC1EPFvPvES0_mm>:
//
//}

//PCB.h

PCB::PCB(void (*body)(void*), void* arg , size_t stackSize, size_t timeSlice) {
    8000184c:	fd010113          	addi	sp,sp,-48
    80001850:	02113423          	sd	ra,40(sp)
    80001854:	02813023          	sd	s0,32(sp)
    80001858:	00913c23          	sd	s1,24(sp)
    8000185c:	01213823          	sd	s2,16(sp)
    80001860:	01313423          	sd	s3,8(sp)
    80001864:	01413023          	sd	s4,0(sp)
    80001868:	03010413          	addi	s0,sp,48
    8000186c:	00050493          	mv	s1,a0
    80001870:	00058993          	mv	s3,a1
    80001874:	00060a13          	mv	s4,a2
    //todo
    //pocetni kontekst niti
    this->stackSize = stackSize;
    80001878:	00d53823          	sd	a3,16(a0)
    this->timeSlice = timeSlice;
    8000187c:	00e53c23          	sd	a4,24(a0)
    this->pcbThread = new Thread(body, arg);
    80001880:	02800513          	li	a0,40
    80001884:	00000097          	auipc	ra,0x0
    80001888:	d68080e7          	jalr	-664(ra) # 800015ec <_Znwm>
    8000188c:	00050913          	mv	s2,a0
    80001890:	000a0613          	mv	a2,s4
    80001894:	00098593          	mv	a1,s3
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	f24080e7          	jalr	-220(ra) # 800017bc <_ZN6ThreadC1EPFvPvES0_>
    800018a0:	0124b023          	sd	s2,0(s1)
    this->state = CREATED;
    800018a4:	0204a023          	sw	zero,32(s1)
}
    800018a8:	02813083          	ld	ra,40(sp)
    800018ac:	02013403          	ld	s0,32(sp)
    800018b0:	01813483          	ld	s1,24(sp)
    800018b4:	01013903          	ld	s2,16(sp)
    800018b8:	00813983          	ld	s3,8(sp)
    800018bc:	00013a03          	ld	s4,0(sp)
    800018c0:	03010113          	addi	sp,sp,48
    800018c4:	00008067          	ret

00000000800018c8 <_ZN3PCBD1Ev>:

PCB::~PCB() {
    800018c8:	ff010113          	addi	sp,sp,-16
    800018cc:	00813423          	sd	s0,8(sp)
    800018d0:	01010413          	addi	s0,sp,16

}
    800018d4:	00813403          	ld	s0,8(sp)
    800018d8:	01010113          	addi	sp,sp,16
    800018dc:	00008067          	ret

00000000800018e0 <_ZN3PCB6runnerEPv>:
{
    Scheduler::getScheduler()->put(this);
}

//todo
void PCB::runner(void* p) {
    800018e0:	ff010113          	addi	sp,sp,-16
    800018e4:	00813423          	sd	s0,8(sp)
    800018e8:	01010413          	addi	s0,sp,16
    //pcbThread->run();
}
    800018ec:	00813403          	ld	s0,8(sp)
    800018f0:	01010113          	addi	sp,sp,16
    800018f4:	00008067          	ret

00000000800018f8 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800018f8:	ff010113          	addi	sp,sp,-16
    800018fc:	00113423          	sd	ra,8(sp)
    80001900:	00813023          	sd	s0,0(sp)
    80001904:	01010413          	addi	s0,sp,16
    return ::operator new(sizeof(PCB));
    80001908:	02800513          	li	a0,40
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	ce0080e7          	jalr	-800(ra) # 800015ec <_Znwm>
}
    80001914:	00813083          	ld	ra,8(sp)
    80001918:	00013403          	ld	s0,0(sp)
    8000191c:	01010113          	addi	sp,sp,16
    80001920:	00008067          	ret

0000000080001924 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80001924:	ff010113          	addi	sp,sp,-16
    80001928:	00813423          	sd	s0,8(sp)
    8000192c:	01010413          	addi	s0,sp,16

}
    80001930:	00813403          	ld	s0,8(sp)
    80001934:	01010113          	addi	sp,sp,16
    80001938:	00008067          	ret

000000008000193c <_ZN6System10initSystemEv>:

PCB* System::runningPCB = 0;

//todo
extern "C" void interruptvec();
void System::initSystem() {
    8000193c:	ff010113          	addi	sp,sp,-16
    80001940:	00813423          	sd	s0,8(sp)
    80001944:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw stvec, %0" : : [vector]"r"(&interruptvec));
    80001948:	00003797          	auipc	a5,0x3
    8000194c:	0087b783          	ld	a5,8(a5) # 80004950 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001950:	10579073          	csrw	stvec,a5
}
    80001954:	00813403          	ld	s0,8(sp)
    80001958:	01010113          	addi	sp,sp,16
    8000195c:	00008067          	ret

0000000080001960 <_ZN6SystemC1Ev>:

System::System() {
    80001960:	ff010113          	addi	sp,sp,-16
    80001964:	00813423          	sd	s0,8(sp)
    80001968:	01010413          	addi	s0,sp,16

}
    8000196c:	00813403          	ld	s0,8(sp)
    80001970:	01010113          	addi	sp,sp,16
    80001974:	00008067          	ret

0000000080001978 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *pcb) {
    80001978:	ff010113          	addi	sp,sp,-16
    8000197c:	00113423          	sd	ra,8(sp)
    80001980:	00813023          	sd	s0,0(sp)
    80001984:	01010413          	addi	s0,sp,16
    queuePCB->push(pcb);
    80001988:	00053503          	ld	a0,0(a0)
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	1fc080e7          	jalr	508(ra) # 80001b88 <_ZN5QueueIP3PCBE4pushES1_>
}
    80001994:	00813083          	ld	ra,8(sp)
    80001998:	00013403          	ld	s0,0(sp)
    8000199c:	01010113          	addi	sp,sp,16
    800019a0:	00008067          	ret

00000000800019a4 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    800019a4:	fe010113          	addi	sp,sp,-32
    800019a8:	00113c23          	sd	ra,24(sp)
    800019ac:	00813823          	sd	s0,16(sp)
    800019b0:	00913423          	sd	s1,8(sp)
    800019b4:	01213023          	sd	s2,0(sp)
    800019b8:	02010413          	addi	s0,sp,32
    PCB* t =  queuePCB->front();
    800019bc:	00053903          	ld	s2,0(a0)
    800019c0:	00090513          	mv	a0,s2
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	21c080e7          	jalr	540(ra) # 80001be0 <_ZN5QueueIP3PCBE5frontEv>
    800019cc:	00050493          	mv	s1,a0
    queuePCB->pop();
    800019d0:	00090513          	mv	a0,s2
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	230080e7          	jalr	560(ra) # 80001c04 <_ZN5QueueIP3PCBE3popEv>
}
    800019dc:	00048513          	mv	a0,s1
    800019e0:	01813083          	ld	ra,24(sp)
    800019e4:	01013403          	ld	s0,16(sp)
    800019e8:	00813483          	ld	s1,8(sp)
    800019ec:	00013903          	ld	s2,0(sp)
    800019f0:	02010113          	addi	sp,sp,32
    800019f4:	00008067          	ret

00000000800019f8 <_ZN9SchedulerD1Ev>:
Scheduler::~Scheduler() {
    800019f8:	fe010113          	addi	sp,sp,-32
    800019fc:	00113c23          	sd	ra,24(sp)
    80001a00:	00813823          	sd	s0,16(sp)
    80001a04:	00913423          	sd	s1,8(sp)
    80001a08:	02010413          	addi	s0,sp,32
    delete queuePCB;
    80001a0c:	00053483          	ld	s1,0(a0)
    80001a10:	00048e63          	beqz	s1,80001a2c <_ZN9SchedulerD1Ev+0x34>
    80001a14:	00048513          	mv	a0,s1
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	278080e7          	jalr	632(ra) # 80001c90 <_ZN5QueueIP3PCBED1Ev>
    80001a20:	00048513          	mv	a0,s1
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	244080e7          	jalr	580(ra) # 80001c68 <_ZN5QueueIP3PCBEdlEPv>
}
    80001a2c:	01813083          	ld	ra,24(sp)
    80001a30:	01013403          	ld	s0,16(sp)
    80001a34:	00813483          	ld	s1,8(sp)
    80001a38:	02010113          	addi	sp,sp,32
    80001a3c:	00008067          	ret

0000000080001a40 <_ZN9SchedulerC1Ev>:
Scheduler::Scheduler() {
    80001a40:	fe010113          	addi	sp,sp,-32
    80001a44:	00113c23          	sd	ra,24(sp)
    80001a48:	00813823          	sd	s0,16(sp)
    80001a4c:	00913423          	sd	s1,8(sp)
    80001a50:	01213023          	sd	s2,0(sp)
    80001a54:	02010413          	addi	s0,sp,32
    80001a58:	00050493          	mv	s1,a0
    queuePCB= new Queue<PCB*>();
    80001a5c:	01000513          	li	a0,16
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	288080e7          	jalr	648(ra) # 80001ce8 <_ZN5QueueIP3PCBEnwEm>
    80001a68:	00050913          	mv	s2,a0
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	2a8080e7          	jalr	680(ra) # 80001d14 <_ZN5QueueIP3PCBEC1Ev>
    80001a74:	0124b023          	sd	s2,0(s1)
}
    80001a78:	01813083          	ld	ra,24(sp)
    80001a7c:	01013403          	ld	s0,16(sp)
    80001a80:	00813483          	ld	s1,8(sp)
    80001a84:	00013903          	ld	s2,0(sp)
    80001a88:	02010113          	addi	sp,sp,32
    80001a8c:	00008067          	ret

0000000080001a90 <_ZN9Scheduler12getSchedulerEv>:
    if(scheduler == 0)
    80001a90:	00003797          	auipc	a5,0x3
    80001a94:	f287b783          	ld	a5,-216(a5) # 800049b8 <_ZN9Scheduler9schedulerE>
    80001a98:	00078863          	beqz	a5,80001aa8 <_ZN9Scheduler12getSchedulerEv+0x18>
    return scheduler;
    80001a9c:	00003517          	auipc	a0,0x3
    80001aa0:	f1c53503          	ld	a0,-228(a0) # 800049b8 <_ZN9Scheduler9schedulerE>
}
    80001aa4:	00008067          	ret
Scheduler *Scheduler::getScheduler() {
    80001aa8:	fe010113          	addi	sp,sp,-32
    80001aac:	00113c23          	sd	ra,24(sp)
    80001ab0:	00813823          	sd	s0,16(sp)
    80001ab4:	00913423          	sd	s1,8(sp)
    80001ab8:	01213023          	sd	s2,0(sp)
    80001abc:	02010413          	addi	s0,sp,32
        scheduler = new Scheduler();
    80001ac0:	00800513          	li	a0,8
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	ca4080e7          	jalr	-860(ra) # 80001768 <_ZN9SchedulernwEm>
    80001acc:	00050493          	mv	s1,a0
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	f70080e7          	jalr	-144(ra) # 80001a40 <_ZN9SchedulerC1Ev>
    80001ad8:	00003797          	auipc	a5,0x3
    80001adc:	ee97b023          	sd	s1,-288(a5) # 800049b8 <_ZN9Scheduler9schedulerE>
    return scheduler;
    80001ae0:	00003517          	auipc	a0,0x3
    80001ae4:	ed853503          	ld	a0,-296(a0) # 800049b8 <_ZN9Scheduler9schedulerE>
}
    80001ae8:	01813083          	ld	ra,24(sp)
    80001aec:	01013403          	ld	s0,16(sp)
    80001af0:	00813483          	ld	s1,8(sp)
    80001af4:	00013903          	ld	s2,0(sp)
    80001af8:	02010113          	addi	sp,sp,32
    80001afc:	00008067          	ret
    80001b00:	00050913          	mv	s2,a0
        scheduler = new Scheduler();
    80001b04:	00048513          	mv	a0,s1
    80001b08:	00000097          	auipc	ra,0x0
    80001b0c:	c8c080e7          	jalr	-884(ra) # 80001794 <_ZN9SchedulerdlEPv>
    80001b10:	00090513          	mv	a0,s2
    80001b14:	00004097          	auipc	ra,0x4
    80001b18:	f84080e7          	jalr	-124(ra) # 80005a98 <_Unwind_Resume>

0000000080001b1c <_ZN3PCB5startEv>:
{
    80001b1c:	fe010113          	addi	sp,sp,-32
    80001b20:	00113c23          	sd	ra,24(sp)
    80001b24:	00813823          	sd	s0,16(sp)
    80001b28:	00913423          	sd	s1,8(sp)
    80001b2c:	02010413          	addi	s0,sp,32
    80001b30:	00050493          	mv	s1,a0
    Scheduler::getScheduler()->put(this);
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	f5c080e7          	jalr	-164(ra) # 80001a90 <_ZN9Scheduler12getSchedulerEv>
    80001b3c:	00048593          	mv	a1,s1
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	e38080e7          	jalr	-456(ra) # 80001978 <_ZN9Scheduler3putEP3PCB>
}
    80001b48:	01813083          	ld	ra,24(sp)
    80001b4c:	01013403          	ld	s0,16(sp)
    80001b50:	00813483          	ld	s1,8(sp)
    80001b54:	02010113          	addi	sp,sp,32
    80001b58:	00008067          	ret

0000000080001b5c <_ZN6Thread5startEv>:
void Thread::start() {
    80001b5c:	ff010113          	addi	sp,sp,-16
    80001b60:	00113423          	sd	ra,8(sp)
    80001b64:	00813023          	sd	s0,0(sp)
    80001b68:	01010413          	addi	s0,sp,16
    threadPCB->start();
    80001b6c:	02053503          	ld	a0,32(a0)
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	fac080e7          	jalr	-84(ra) # 80001b1c <_ZN3PCB5startEv>
}
    80001b78:	00813083          	ld	ra,8(sp)
    80001b7c:	00013403          	ld	s0,0(sp)
    80001b80:	01010113          	addi	sp,sp,16
    80001b84:	00008067          	ret

0000000080001b88 <_ZN5QueueIP3PCBE4pushES1_>:
void Queue<T>::push(T t) {
    80001b88:	fe010113          	addi	sp,sp,-32
    80001b8c:	00113c23          	sd	ra,24(sp)
    80001b90:	00813823          	sd	s0,16(sp)
    80001b94:	00913423          	sd	s1,8(sp)
    80001b98:	02010413          	addi	s0,sp,32
    80001b9c:	00050493          	mv	s1,a0
    Elem* newElem = (Elem*)MemoryAllocator::getMemoryAllocator()->mem_alloc(sizeof(Elem));
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	b4c080e7          	jalr	-1204(ra) # 800016ec <_ZN15MemoryAllocator18getMemoryAllocatorEv>
    80001ba8:	01000593          	li	a1,16
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	aa8080e7          	jalr	-1368(ra) # 80001654 <_ZN15MemoryAllocator9mem_allocEm>
    if(first == 0) {
    80001bb4:	0004b783          	ld	a5,0(s1)
    80001bb8:	00078c63          	beqz	a5,80001bd0 <_ZN5QueueIP3PCBE4pushES1_+0x48>
}
    80001bbc:	01813083          	ld	ra,24(sp)
    80001bc0:	01013403          	ld	s0,16(sp)
    80001bc4:	00813483          	ld	s1,8(sp)
    80001bc8:	02010113          	addi	sp,sp,32
    80001bcc:	00008067          	ret
        first = newElem;
    80001bd0:	00a4b023          	sd	a0,0(s1)
        last = 0;
    80001bd4:	0004b423          	sd	zero,8(s1)
        first->next = last;
    80001bd8:	00053423          	sd	zero,8(a0)
}
    80001bdc:	fe1ff06f          	j	80001bbc <_ZN5QueueIP3PCBE4pushES1_+0x34>

0000000080001be0 <_ZN5QueueIP3PCBE5frontEv>:
T Queue<T>::front() {
    80001be0:	ff010113          	addi	sp,sp,-16
    80001be4:	00813423          	sd	s0,8(sp)
    80001be8:	01010413          	addi	s0,sp,16
   if(first == 0)
    80001bec:	00053503          	ld	a0,0(a0)
    80001bf0:	00050463          	beqz	a0,80001bf8 <_ZN5QueueIP3PCBE5frontEv+0x18>
   return first->data;
    80001bf4:	00053503          	ld	a0,0(a0)
}
    80001bf8:	00813403          	ld	s0,8(sp)
    80001bfc:	01010113          	addi	sp,sp,16
    80001c00:	00008067          	ret

0000000080001c04 <_ZN5QueueIP3PCBE3popEv>:
void Queue<T>::pop() {
    80001c04:	fe010113          	addi	sp,sp,-32
    80001c08:	00113c23          	sd	ra,24(sp)
    80001c0c:	00813823          	sd	s0,16(sp)
    80001c10:	00913423          	sd	s1,8(sp)
    80001c14:	01213023          	sd	s2,0(sp)
    80001c18:	02010413          	addi	s0,sp,32
    80001c1c:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80001c20:	00053783          	ld	a5,0(a0)
    80001c24:	0087b903          	ld	s2,8(a5)
    MemoryAllocator::getMemoryAllocator()->mem_free(first);
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	ac4080e7          	jalr	-1340(ra) # 800016ec <_ZN15MemoryAllocator18getMemoryAllocatorEv>
    80001c30:	0004b583          	ld	a1,0(s1)
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	a4c080e7          	jalr	-1460(ra) # 80001680 <_ZN15MemoryAllocator8mem_freeEPv>
    first = newFirst;
    80001c3c:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80001c40:	00090e63          	beqz	s2,80001c5c <_ZN5QueueIP3PCBE3popEv+0x58>
}
    80001c44:	01813083          	ld	ra,24(sp)
    80001c48:	01013403          	ld	s0,16(sp)
    80001c4c:	00813483          	ld	s1,8(sp)
    80001c50:	00013903          	ld	s2,0(sp)
    80001c54:	02010113          	addi	sp,sp,32
    80001c58:	00008067          	ret
        first = last = 0;
    80001c5c:	0004b423          	sd	zero,8(s1)
    80001c60:	0004b023          	sd	zero,0(s1)
}
    80001c64:	fe1ff06f          	j	80001c44 <_ZN5QueueIP3PCBE3popEv+0x40>

0000000080001c68 <_ZN5QueueIP3PCBEdlEPv>:
void Queue<T>::operator delete(void *p) {
    80001c68:	ff010113          	addi	sp,sp,-16
    80001c6c:	00113423          	sd	ra,8(sp)
    80001c70:	00813023          	sd	s0,0(sp)
    80001c74:	01010413          	addi	s0,sp,16
    ::operator delete(p);
    80001c78:	00000097          	auipc	ra,0x0
    80001c7c:	99c080e7          	jalr	-1636(ra) # 80001614 <_ZdlPv>
}
    80001c80:	00813083          	ld	ra,8(sp)
    80001c84:	00013403          	ld	s0,0(sp)
    80001c88:	01010113          	addi	sp,sp,16
    80001c8c:	00008067          	ret

0000000080001c90 <_ZN5QueueIP3PCBED1Ev>:
Queue<T>::~Queue() {
    80001c90:	fe010113          	addi	sp,sp,-32
    80001c94:	00113c23          	sd	ra,24(sp)
    80001c98:	00813823          	sd	s0,16(sp)
    80001c9c:	00913423          	sd	s1,8(sp)
    80001ca0:	01213023          	sd	s2,0(sp)
    80001ca4:	02010413          	addi	s0,sp,32
    Elem* curr = first;
    80001ca8:	00053483          	ld	s1,0(a0)
    while(curr != 0)
    80001cac:	02048263          	beqz	s1,80001cd0 <_ZN5QueueIP3PCBED1Ev+0x40>
        curr = curr->next;
    80001cb0:	0084b903          	ld	s2,8(s1)
        MemoryAllocator::getMemoryAllocator()->mem_free(old);
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	a38080e7          	jalr	-1480(ra) # 800016ec <_ZN15MemoryAllocator18getMemoryAllocatorEv>
    80001cbc:	00048593          	mv	a1,s1
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	9c0080e7          	jalr	-1600(ra) # 80001680 <_ZN15MemoryAllocator8mem_freeEPv>
        curr = curr->next;
    80001cc8:	00090493          	mv	s1,s2
    while(curr != 0)
    80001ccc:	fe1ff06f          	j	80001cac <_ZN5QueueIP3PCBED1Ev+0x1c>
}
    80001cd0:	01813083          	ld	ra,24(sp)
    80001cd4:	01013403          	ld	s0,16(sp)
    80001cd8:	00813483          	ld	s1,8(sp)
    80001cdc:	00013903          	ld	s2,0(sp)
    80001ce0:	02010113          	addi	sp,sp,32
    80001ce4:	00008067          	ret

0000000080001ce8 <_ZN5QueueIP3PCBEnwEm>:
void *Queue<T>::operator new(size_t size) {
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00113423          	sd	ra,8(sp)
    80001cf0:	00813023          	sd	s0,0(sp)
    80001cf4:	01010413          	addi	s0,sp,16
    return ::operator new(sizeof(Queue<T>));
    80001cf8:	01000513          	li	a0,16
    80001cfc:	00000097          	auipc	ra,0x0
    80001d00:	8f0080e7          	jalr	-1808(ra) # 800015ec <_Znwm>
}
    80001d04:	00813083          	ld	ra,8(sp)
    80001d08:	00013403          	ld	s0,0(sp)
    80001d0c:	01010113          	addi	sp,sp,16
    80001d10:	00008067          	ret

0000000080001d14 <_ZN5QueueIP3PCBEC1Ev>:
Queue<T>::Queue() {
    80001d14:	ff010113          	addi	sp,sp,-16
    80001d18:	00813423          	sd	s0,8(sp)
    80001d1c:	01010413          	addi	s0,sp,16
    first = last = 0;
    80001d20:	00053423          	sd	zero,8(a0)
    80001d24:	00053023          	sd	zero,0(a0)
}
    80001d28:	00813403          	ld	s0,8(sp)
    80001d2c:	01010113          	addi	sp,sp,16
    80001d30:	00008067          	ret

0000000080001d34 <start>:
    80001d34:	ff010113          	addi	sp,sp,-16
    80001d38:	00813423          	sd	s0,8(sp)
    80001d3c:	01010413          	addi	s0,sp,16
    80001d40:	300027f3          	csrr	a5,mstatus
    80001d44:	ffffe737          	lui	a4,0xffffe
    80001d48:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8bcf>
    80001d4c:	00e7f7b3          	and	a5,a5,a4
    80001d50:	00001737          	lui	a4,0x1
    80001d54:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001d58:	00e7e7b3          	or	a5,a5,a4
    80001d5c:	30079073          	csrw	mstatus,a5
    80001d60:	00000797          	auipc	a5,0x0
    80001d64:	16078793          	addi	a5,a5,352 # 80001ec0 <system_main>
    80001d68:	34179073          	csrw	mepc,a5
    80001d6c:	00000793          	li	a5,0
    80001d70:	18079073          	csrw	satp,a5
    80001d74:	000107b7          	lui	a5,0x10
    80001d78:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001d7c:	30279073          	csrw	medeleg,a5
    80001d80:	30379073          	csrw	mideleg,a5
    80001d84:	104027f3          	csrr	a5,sie
    80001d88:	2227e793          	ori	a5,a5,546
    80001d8c:	10479073          	csrw	sie,a5
    80001d90:	fff00793          	li	a5,-1
    80001d94:	00a7d793          	srli	a5,a5,0xa
    80001d98:	3b079073          	csrw	pmpaddr0,a5
    80001d9c:	00f00793          	li	a5,15
    80001da0:	3a079073          	csrw	pmpcfg0,a5
    80001da4:	f14027f3          	csrr	a5,mhartid
    80001da8:	0200c737          	lui	a4,0x200c
    80001dac:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001db0:	0007869b          	sext.w	a3,a5
    80001db4:	00269713          	slli	a4,a3,0x2
    80001db8:	000f4637          	lui	a2,0xf4
    80001dbc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001dc0:	00d70733          	add	a4,a4,a3
    80001dc4:	0037979b          	slliw	a5,a5,0x3
    80001dc8:	020046b7          	lui	a3,0x2004
    80001dcc:	00d787b3          	add	a5,a5,a3
    80001dd0:	00c585b3          	add	a1,a1,a2
    80001dd4:	00371693          	slli	a3,a4,0x3
    80001dd8:	00003717          	auipc	a4,0x3
    80001ddc:	bf870713          	addi	a4,a4,-1032 # 800049d0 <timer_scratch>
    80001de0:	00b7b023          	sd	a1,0(a5)
    80001de4:	00d70733          	add	a4,a4,a3
    80001de8:	00f73c23          	sd	a5,24(a4)
    80001dec:	02c73023          	sd	a2,32(a4)
    80001df0:	34071073          	csrw	mscratch,a4
    80001df4:	00000797          	auipc	a5,0x0
    80001df8:	6ec78793          	addi	a5,a5,1772 # 800024e0 <timervec>
    80001dfc:	30579073          	csrw	mtvec,a5
    80001e00:	300027f3          	csrr	a5,mstatus
    80001e04:	0087e793          	ori	a5,a5,8
    80001e08:	30079073          	csrw	mstatus,a5
    80001e0c:	304027f3          	csrr	a5,mie
    80001e10:	0807e793          	ori	a5,a5,128
    80001e14:	30479073          	csrw	mie,a5
    80001e18:	f14027f3          	csrr	a5,mhartid
    80001e1c:	0007879b          	sext.w	a5,a5
    80001e20:	00078213          	mv	tp,a5
    80001e24:	30200073          	mret
    80001e28:	00813403          	ld	s0,8(sp)
    80001e2c:	01010113          	addi	sp,sp,16
    80001e30:	00008067          	ret

0000000080001e34 <timerinit>:
    80001e34:	ff010113          	addi	sp,sp,-16
    80001e38:	00813423          	sd	s0,8(sp)
    80001e3c:	01010413          	addi	s0,sp,16
    80001e40:	f14027f3          	csrr	a5,mhartid
    80001e44:	0200c737          	lui	a4,0x200c
    80001e48:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001e4c:	0007869b          	sext.w	a3,a5
    80001e50:	00269713          	slli	a4,a3,0x2
    80001e54:	000f4637          	lui	a2,0xf4
    80001e58:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001e5c:	00d70733          	add	a4,a4,a3
    80001e60:	0037979b          	slliw	a5,a5,0x3
    80001e64:	020046b7          	lui	a3,0x2004
    80001e68:	00d787b3          	add	a5,a5,a3
    80001e6c:	00c585b3          	add	a1,a1,a2
    80001e70:	00371693          	slli	a3,a4,0x3
    80001e74:	00003717          	auipc	a4,0x3
    80001e78:	b5c70713          	addi	a4,a4,-1188 # 800049d0 <timer_scratch>
    80001e7c:	00b7b023          	sd	a1,0(a5)
    80001e80:	00d70733          	add	a4,a4,a3
    80001e84:	00f73c23          	sd	a5,24(a4)
    80001e88:	02c73023          	sd	a2,32(a4)
    80001e8c:	34071073          	csrw	mscratch,a4
    80001e90:	00000797          	auipc	a5,0x0
    80001e94:	65078793          	addi	a5,a5,1616 # 800024e0 <timervec>
    80001e98:	30579073          	csrw	mtvec,a5
    80001e9c:	300027f3          	csrr	a5,mstatus
    80001ea0:	0087e793          	ori	a5,a5,8
    80001ea4:	30079073          	csrw	mstatus,a5
    80001ea8:	304027f3          	csrr	a5,mie
    80001eac:	0807e793          	ori	a5,a5,128
    80001eb0:	30479073          	csrw	mie,a5
    80001eb4:	00813403          	ld	s0,8(sp)
    80001eb8:	01010113          	addi	sp,sp,16
    80001ebc:	00008067          	ret

0000000080001ec0 <system_main>:
    80001ec0:	fe010113          	addi	sp,sp,-32
    80001ec4:	00813823          	sd	s0,16(sp)
    80001ec8:	00913423          	sd	s1,8(sp)
    80001ecc:	00113c23          	sd	ra,24(sp)
    80001ed0:	02010413          	addi	s0,sp,32
    80001ed4:	00000097          	auipc	ra,0x0
    80001ed8:	0c4080e7          	jalr	196(ra) # 80001f98 <cpuid>
    80001edc:	00003497          	auipc	s1,0x3
    80001ee0:	aac48493          	addi	s1,s1,-1364 # 80004988 <started>
    80001ee4:	02050263          	beqz	a0,80001f08 <system_main+0x48>
    80001ee8:	0004a783          	lw	a5,0(s1)
    80001eec:	0007879b          	sext.w	a5,a5
    80001ef0:	fe078ce3          	beqz	a5,80001ee8 <system_main+0x28>
    80001ef4:	0ff0000f          	fence
    80001ef8:	00002517          	auipc	a0,0x2
    80001efc:	19850513          	addi	a0,a0,408 # 80004090 <bntOne+0x38>
    80001f00:	00001097          	auipc	ra,0x1
    80001f04:	a7c080e7          	jalr	-1412(ra) # 8000297c <panic>
    80001f08:	00001097          	auipc	ra,0x1
    80001f0c:	9d0080e7          	jalr	-1584(ra) # 800028d8 <consoleinit>
    80001f10:	00001097          	auipc	ra,0x1
    80001f14:	15c080e7          	jalr	348(ra) # 8000306c <printfinit>
    80001f18:	00002517          	auipc	a0,0x2
    80001f1c:	25850513          	addi	a0,a0,600 # 80004170 <bntOne+0x118>
    80001f20:	00001097          	auipc	ra,0x1
    80001f24:	ab8080e7          	jalr	-1352(ra) # 800029d8 <__printf>
    80001f28:	00002517          	auipc	a0,0x2
    80001f2c:	13850513          	addi	a0,a0,312 # 80004060 <bntOne+0x8>
    80001f30:	00001097          	auipc	ra,0x1
    80001f34:	aa8080e7          	jalr	-1368(ra) # 800029d8 <__printf>
    80001f38:	00002517          	auipc	a0,0x2
    80001f3c:	23850513          	addi	a0,a0,568 # 80004170 <bntOne+0x118>
    80001f40:	00001097          	auipc	ra,0x1
    80001f44:	a98080e7          	jalr	-1384(ra) # 800029d8 <__printf>
    80001f48:	00001097          	auipc	ra,0x1
    80001f4c:	4b0080e7          	jalr	1200(ra) # 800033f8 <kinit>
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	148080e7          	jalr	328(ra) # 80002098 <trapinit>
    80001f58:	00000097          	auipc	ra,0x0
    80001f5c:	16c080e7          	jalr	364(ra) # 800020c4 <trapinithart>
    80001f60:	00000097          	auipc	ra,0x0
    80001f64:	5c0080e7          	jalr	1472(ra) # 80002520 <plicinit>
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	5e0080e7          	jalr	1504(ra) # 80002548 <plicinithart>
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	078080e7          	jalr	120(ra) # 80001fe8 <userinit>
    80001f78:	0ff0000f          	fence
    80001f7c:	00100793          	li	a5,1
    80001f80:	00002517          	auipc	a0,0x2
    80001f84:	0f850513          	addi	a0,a0,248 # 80004078 <bntOne+0x20>
    80001f88:	00f4a023          	sw	a5,0(s1)
    80001f8c:	00001097          	auipc	ra,0x1
    80001f90:	a4c080e7          	jalr	-1460(ra) # 800029d8 <__printf>
    80001f94:	0000006f          	j	80001f94 <system_main+0xd4>

0000000080001f98 <cpuid>:
    80001f98:	ff010113          	addi	sp,sp,-16
    80001f9c:	00813423          	sd	s0,8(sp)
    80001fa0:	01010413          	addi	s0,sp,16
    80001fa4:	00020513          	mv	a0,tp
    80001fa8:	00813403          	ld	s0,8(sp)
    80001fac:	0005051b          	sext.w	a0,a0
    80001fb0:	01010113          	addi	sp,sp,16
    80001fb4:	00008067          	ret

0000000080001fb8 <mycpu>:
    80001fb8:	ff010113          	addi	sp,sp,-16
    80001fbc:	00813423          	sd	s0,8(sp)
    80001fc0:	01010413          	addi	s0,sp,16
    80001fc4:	00020793          	mv	a5,tp
    80001fc8:	00813403          	ld	s0,8(sp)
    80001fcc:	0007879b          	sext.w	a5,a5
    80001fd0:	00779793          	slli	a5,a5,0x7
    80001fd4:	00004517          	auipc	a0,0x4
    80001fd8:	a2c50513          	addi	a0,a0,-1492 # 80005a00 <cpus>
    80001fdc:	00f50533          	add	a0,a0,a5
    80001fe0:	01010113          	addi	sp,sp,16
    80001fe4:	00008067          	ret

0000000080001fe8 <userinit>:
    80001fe8:	ff010113          	addi	sp,sp,-16
    80001fec:	00813423          	sd	s0,8(sp)
    80001ff0:	01010413          	addi	s0,sp,16
    80001ff4:	00813403          	ld	s0,8(sp)
    80001ff8:	01010113          	addi	sp,sp,16
    80001ffc:	fffff317          	auipc	t1,0xfffff
    80002000:	52c30067          	jr	1324(t1) # 80001528 <main>

0000000080002004 <either_copyout>:
    80002004:	ff010113          	addi	sp,sp,-16
    80002008:	00813023          	sd	s0,0(sp)
    8000200c:	00113423          	sd	ra,8(sp)
    80002010:	01010413          	addi	s0,sp,16
    80002014:	02051663          	bnez	a0,80002040 <either_copyout+0x3c>
    80002018:	00058513          	mv	a0,a1
    8000201c:	00060593          	mv	a1,a2
    80002020:	0006861b          	sext.w	a2,a3
    80002024:	00002097          	auipc	ra,0x2
    80002028:	c60080e7          	jalr	-928(ra) # 80003c84 <__memmove>
    8000202c:	00813083          	ld	ra,8(sp)
    80002030:	00013403          	ld	s0,0(sp)
    80002034:	00000513          	li	a0,0
    80002038:	01010113          	addi	sp,sp,16
    8000203c:	00008067          	ret
    80002040:	00002517          	auipc	a0,0x2
    80002044:	07850513          	addi	a0,a0,120 # 800040b8 <bntOne+0x60>
    80002048:	00001097          	auipc	ra,0x1
    8000204c:	934080e7          	jalr	-1740(ra) # 8000297c <panic>

0000000080002050 <either_copyin>:
    80002050:	ff010113          	addi	sp,sp,-16
    80002054:	00813023          	sd	s0,0(sp)
    80002058:	00113423          	sd	ra,8(sp)
    8000205c:	01010413          	addi	s0,sp,16
    80002060:	02059463          	bnez	a1,80002088 <either_copyin+0x38>
    80002064:	00060593          	mv	a1,a2
    80002068:	0006861b          	sext.w	a2,a3
    8000206c:	00002097          	auipc	ra,0x2
    80002070:	c18080e7          	jalr	-1000(ra) # 80003c84 <__memmove>
    80002074:	00813083          	ld	ra,8(sp)
    80002078:	00013403          	ld	s0,0(sp)
    8000207c:	00000513          	li	a0,0
    80002080:	01010113          	addi	sp,sp,16
    80002084:	00008067          	ret
    80002088:	00002517          	auipc	a0,0x2
    8000208c:	05850513          	addi	a0,a0,88 # 800040e0 <bntOne+0x88>
    80002090:	00001097          	auipc	ra,0x1
    80002094:	8ec080e7          	jalr	-1812(ra) # 8000297c <panic>

0000000080002098 <trapinit>:
    80002098:	ff010113          	addi	sp,sp,-16
    8000209c:	00813423          	sd	s0,8(sp)
    800020a0:	01010413          	addi	s0,sp,16
    800020a4:	00813403          	ld	s0,8(sp)
    800020a8:	00002597          	auipc	a1,0x2
    800020ac:	06058593          	addi	a1,a1,96 # 80004108 <bntOne+0xb0>
    800020b0:	00004517          	auipc	a0,0x4
    800020b4:	9d050513          	addi	a0,a0,-1584 # 80005a80 <tickslock>
    800020b8:	01010113          	addi	sp,sp,16
    800020bc:	00001317          	auipc	t1,0x1
    800020c0:	5cc30067          	jr	1484(t1) # 80003688 <initlock>

00000000800020c4 <trapinithart>:
    800020c4:	ff010113          	addi	sp,sp,-16
    800020c8:	00813423          	sd	s0,8(sp)
    800020cc:	01010413          	addi	s0,sp,16
    800020d0:	00000797          	auipc	a5,0x0
    800020d4:	30078793          	addi	a5,a5,768 # 800023d0 <kernelvec>
    800020d8:	10579073          	csrw	stvec,a5
    800020dc:	00813403          	ld	s0,8(sp)
    800020e0:	01010113          	addi	sp,sp,16
    800020e4:	00008067          	ret

00000000800020e8 <usertrap>:
    800020e8:	ff010113          	addi	sp,sp,-16
    800020ec:	00813423          	sd	s0,8(sp)
    800020f0:	01010413          	addi	s0,sp,16
    800020f4:	00813403          	ld	s0,8(sp)
    800020f8:	01010113          	addi	sp,sp,16
    800020fc:	00008067          	ret

0000000080002100 <usertrapret>:
    80002100:	ff010113          	addi	sp,sp,-16
    80002104:	00813423          	sd	s0,8(sp)
    80002108:	01010413          	addi	s0,sp,16
    8000210c:	00813403          	ld	s0,8(sp)
    80002110:	01010113          	addi	sp,sp,16
    80002114:	00008067          	ret

0000000080002118 <kerneltrap>:
    80002118:	fe010113          	addi	sp,sp,-32
    8000211c:	00813823          	sd	s0,16(sp)
    80002120:	00113c23          	sd	ra,24(sp)
    80002124:	00913423          	sd	s1,8(sp)
    80002128:	02010413          	addi	s0,sp,32
    8000212c:	142025f3          	csrr	a1,scause
    80002130:	100027f3          	csrr	a5,sstatus
    80002134:	0027f793          	andi	a5,a5,2
    80002138:	10079c63          	bnez	a5,80002250 <kerneltrap+0x138>
    8000213c:	142027f3          	csrr	a5,scause
    80002140:	0207ce63          	bltz	a5,8000217c <kerneltrap+0x64>
    80002144:	00002517          	auipc	a0,0x2
    80002148:	00c50513          	addi	a0,a0,12 # 80004150 <bntOne+0xf8>
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	88c080e7          	jalr	-1908(ra) # 800029d8 <__printf>
    80002154:	141025f3          	csrr	a1,sepc
    80002158:	14302673          	csrr	a2,stval
    8000215c:	00002517          	auipc	a0,0x2
    80002160:	00450513          	addi	a0,a0,4 # 80004160 <bntOne+0x108>
    80002164:	00001097          	auipc	ra,0x1
    80002168:	874080e7          	jalr	-1932(ra) # 800029d8 <__printf>
    8000216c:	00002517          	auipc	a0,0x2
    80002170:	00c50513          	addi	a0,a0,12 # 80004178 <bntOne+0x120>
    80002174:	00001097          	auipc	ra,0x1
    80002178:	808080e7          	jalr	-2040(ra) # 8000297c <panic>
    8000217c:	0ff7f713          	andi	a4,a5,255
    80002180:	00900693          	li	a3,9
    80002184:	04d70063          	beq	a4,a3,800021c4 <kerneltrap+0xac>
    80002188:	fff00713          	li	a4,-1
    8000218c:	03f71713          	slli	a4,a4,0x3f
    80002190:	00170713          	addi	a4,a4,1
    80002194:	fae798e3          	bne	a5,a4,80002144 <kerneltrap+0x2c>
    80002198:	00000097          	auipc	ra,0x0
    8000219c:	e00080e7          	jalr	-512(ra) # 80001f98 <cpuid>
    800021a0:	06050663          	beqz	a0,8000220c <kerneltrap+0xf4>
    800021a4:	144027f3          	csrr	a5,sip
    800021a8:	ffd7f793          	andi	a5,a5,-3
    800021ac:	14479073          	csrw	sip,a5
    800021b0:	01813083          	ld	ra,24(sp)
    800021b4:	01013403          	ld	s0,16(sp)
    800021b8:	00813483          	ld	s1,8(sp)
    800021bc:	02010113          	addi	sp,sp,32
    800021c0:	00008067          	ret
    800021c4:	00000097          	auipc	ra,0x0
    800021c8:	3d0080e7          	jalr	976(ra) # 80002594 <plic_claim>
    800021cc:	00a00793          	li	a5,10
    800021d0:	00050493          	mv	s1,a0
    800021d4:	06f50863          	beq	a0,a5,80002244 <kerneltrap+0x12c>
    800021d8:	fc050ce3          	beqz	a0,800021b0 <kerneltrap+0x98>
    800021dc:	00050593          	mv	a1,a0
    800021e0:	00002517          	auipc	a0,0x2
    800021e4:	f5050513          	addi	a0,a0,-176 # 80004130 <bntOne+0xd8>
    800021e8:	00000097          	auipc	ra,0x0
    800021ec:	7f0080e7          	jalr	2032(ra) # 800029d8 <__printf>
    800021f0:	01013403          	ld	s0,16(sp)
    800021f4:	01813083          	ld	ra,24(sp)
    800021f8:	00048513          	mv	a0,s1
    800021fc:	00813483          	ld	s1,8(sp)
    80002200:	02010113          	addi	sp,sp,32
    80002204:	00000317          	auipc	t1,0x0
    80002208:	3c830067          	jr	968(t1) # 800025cc <plic_complete>
    8000220c:	00004517          	auipc	a0,0x4
    80002210:	87450513          	addi	a0,a0,-1932 # 80005a80 <tickslock>
    80002214:	00001097          	auipc	ra,0x1
    80002218:	498080e7          	jalr	1176(ra) # 800036ac <acquire>
    8000221c:	00002717          	auipc	a4,0x2
    80002220:	77070713          	addi	a4,a4,1904 # 8000498c <ticks>
    80002224:	00072783          	lw	a5,0(a4)
    80002228:	00004517          	auipc	a0,0x4
    8000222c:	85850513          	addi	a0,a0,-1960 # 80005a80 <tickslock>
    80002230:	0017879b          	addiw	a5,a5,1
    80002234:	00f72023          	sw	a5,0(a4)
    80002238:	00001097          	auipc	ra,0x1
    8000223c:	540080e7          	jalr	1344(ra) # 80003778 <release>
    80002240:	f65ff06f          	j	800021a4 <kerneltrap+0x8c>
    80002244:	00001097          	auipc	ra,0x1
    80002248:	09c080e7          	jalr	156(ra) # 800032e0 <uartintr>
    8000224c:	fa5ff06f          	j	800021f0 <kerneltrap+0xd8>
    80002250:	00002517          	auipc	a0,0x2
    80002254:	ec050513          	addi	a0,a0,-320 # 80004110 <bntOne+0xb8>
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	724080e7          	jalr	1828(ra) # 8000297c <panic>

0000000080002260 <clockintr>:
    80002260:	fe010113          	addi	sp,sp,-32
    80002264:	00813823          	sd	s0,16(sp)
    80002268:	00913423          	sd	s1,8(sp)
    8000226c:	00113c23          	sd	ra,24(sp)
    80002270:	02010413          	addi	s0,sp,32
    80002274:	00004497          	auipc	s1,0x4
    80002278:	80c48493          	addi	s1,s1,-2036 # 80005a80 <tickslock>
    8000227c:	00048513          	mv	a0,s1
    80002280:	00001097          	auipc	ra,0x1
    80002284:	42c080e7          	jalr	1068(ra) # 800036ac <acquire>
    80002288:	00002717          	auipc	a4,0x2
    8000228c:	70470713          	addi	a4,a4,1796 # 8000498c <ticks>
    80002290:	00072783          	lw	a5,0(a4)
    80002294:	01013403          	ld	s0,16(sp)
    80002298:	01813083          	ld	ra,24(sp)
    8000229c:	00048513          	mv	a0,s1
    800022a0:	0017879b          	addiw	a5,a5,1
    800022a4:	00813483          	ld	s1,8(sp)
    800022a8:	00f72023          	sw	a5,0(a4)
    800022ac:	02010113          	addi	sp,sp,32
    800022b0:	00001317          	auipc	t1,0x1
    800022b4:	4c830067          	jr	1224(t1) # 80003778 <release>

00000000800022b8 <devintr>:
    800022b8:	142027f3          	csrr	a5,scause
    800022bc:	00000513          	li	a0,0
    800022c0:	0007c463          	bltz	a5,800022c8 <devintr+0x10>
    800022c4:	00008067          	ret
    800022c8:	fe010113          	addi	sp,sp,-32
    800022cc:	00813823          	sd	s0,16(sp)
    800022d0:	00113c23          	sd	ra,24(sp)
    800022d4:	00913423          	sd	s1,8(sp)
    800022d8:	02010413          	addi	s0,sp,32
    800022dc:	0ff7f713          	andi	a4,a5,255
    800022e0:	00900693          	li	a3,9
    800022e4:	04d70c63          	beq	a4,a3,8000233c <devintr+0x84>
    800022e8:	fff00713          	li	a4,-1
    800022ec:	03f71713          	slli	a4,a4,0x3f
    800022f0:	00170713          	addi	a4,a4,1
    800022f4:	00e78c63          	beq	a5,a4,8000230c <devintr+0x54>
    800022f8:	01813083          	ld	ra,24(sp)
    800022fc:	01013403          	ld	s0,16(sp)
    80002300:	00813483          	ld	s1,8(sp)
    80002304:	02010113          	addi	sp,sp,32
    80002308:	00008067          	ret
    8000230c:	00000097          	auipc	ra,0x0
    80002310:	c8c080e7          	jalr	-884(ra) # 80001f98 <cpuid>
    80002314:	06050663          	beqz	a0,80002380 <devintr+0xc8>
    80002318:	144027f3          	csrr	a5,sip
    8000231c:	ffd7f793          	andi	a5,a5,-3
    80002320:	14479073          	csrw	sip,a5
    80002324:	01813083          	ld	ra,24(sp)
    80002328:	01013403          	ld	s0,16(sp)
    8000232c:	00813483          	ld	s1,8(sp)
    80002330:	00200513          	li	a0,2
    80002334:	02010113          	addi	sp,sp,32
    80002338:	00008067          	ret
    8000233c:	00000097          	auipc	ra,0x0
    80002340:	258080e7          	jalr	600(ra) # 80002594 <plic_claim>
    80002344:	00a00793          	li	a5,10
    80002348:	00050493          	mv	s1,a0
    8000234c:	06f50663          	beq	a0,a5,800023b8 <devintr+0x100>
    80002350:	00100513          	li	a0,1
    80002354:	fa0482e3          	beqz	s1,800022f8 <devintr+0x40>
    80002358:	00048593          	mv	a1,s1
    8000235c:	00002517          	auipc	a0,0x2
    80002360:	dd450513          	addi	a0,a0,-556 # 80004130 <bntOne+0xd8>
    80002364:	00000097          	auipc	ra,0x0
    80002368:	674080e7          	jalr	1652(ra) # 800029d8 <__printf>
    8000236c:	00048513          	mv	a0,s1
    80002370:	00000097          	auipc	ra,0x0
    80002374:	25c080e7          	jalr	604(ra) # 800025cc <plic_complete>
    80002378:	00100513          	li	a0,1
    8000237c:	f7dff06f          	j	800022f8 <devintr+0x40>
    80002380:	00003517          	auipc	a0,0x3
    80002384:	70050513          	addi	a0,a0,1792 # 80005a80 <tickslock>
    80002388:	00001097          	auipc	ra,0x1
    8000238c:	324080e7          	jalr	804(ra) # 800036ac <acquire>
    80002390:	00002717          	auipc	a4,0x2
    80002394:	5fc70713          	addi	a4,a4,1532 # 8000498c <ticks>
    80002398:	00072783          	lw	a5,0(a4)
    8000239c:	00003517          	auipc	a0,0x3
    800023a0:	6e450513          	addi	a0,a0,1764 # 80005a80 <tickslock>
    800023a4:	0017879b          	addiw	a5,a5,1
    800023a8:	00f72023          	sw	a5,0(a4)
    800023ac:	00001097          	auipc	ra,0x1
    800023b0:	3cc080e7          	jalr	972(ra) # 80003778 <release>
    800023b4:	f65ff06f          	j	80002318 <devintr+0x60>
    800023b8:	00001097          	auipc	ra,0x1
    800023bc:	f28080e7          	jalr	-216(ra) # 800032e0 <uartintr>
    800023c0:	fadff06f          	j	8000236c <devintr+0xb4>
	...

00000000800023d0 <kernelvec>:
    800023d0:	f0010113          	addi	sp,sp,-256
    800023d4:	00113023          	sd	ra,0(sp)
    800023d8:	00213423          	sd	sp,8(sp)
    800023dc:	00313823          	sd	gp,16(sp)
    800023e0:	00413c23          	sd	tp,24(sp)
    800023e4:	02513023          	sd	t0,32(sp)
    800023e8:	02613423          	sd	t1,40(sp)
    800023ec:	02713823          	sd	t2,48(sp)
    800023f0:	02813c23          	sd	s0,56(sp)
    800023f4:	04913023          	sd	s1,64(sp)
    800023f8:	04a13423          	sd	a0,72(sp)
    800023fc:	04b13823          	sd	a1,80(sp)
    80002400:	04c13c23          	sd	a2,88(sp)
    80002404:	06d13023          	sd	a3,96(sp)
    80002408:	06e13423          	sd	a4,104(sp)
    8000240c:	06f13823          	sd	a5,112(sp)
    80002410:	07013c23          	sd	a6,120(sp)
    80002414:	09113023          	sd	a7,128(sp)
    80002418:	09213423          	sd	s2,136(sp)
    8000241c:	09313823          	sd	s3,144(sp)
    80002420:	09413c23          	sd	s4,152(sp)
    80002424:	0b513023          	sd	s5,160(sp)
    80002428:	0b613423          	sd	s6,168(sp)
    8000242c:	0b713823          	sd	s7,176(sp)
    80002430:	0b813c23          	sd	s8,184(sp)
    80002434:	0d913023          	sd	s9,192(sp)
    80002438:	0da13423          	sd	s10,200(sp)
    8000243c:	0db13823          	sd	s11,208(sp)
    80002440:	0dc13c23          	sd	t3,216(sp)
    80002444:	0fd13023          	sd	t4,224(sp)
    80002448:	0fe13423          	sd	t5,232(sp)
    8000244c:	0ff13823          	sd	t6,240(sp)
    80002450:	cc9ff0ef          	jal	ra,80002118 <kerneltrap>
    80002454:	00013083          	ld	ra,0(sp)
    80002458:	00813103          	ld	sp,8(sp)
    8000245c:	01013183          	ld	gp,16(sp)
    80002460:	02013283          	ld	t0,32(sp)
    80002464:	02813303          	ld	t1,40(sp)
    80002468:	03013383          	ld	t2,48(sp)
    8000246c:	03813403          	ld	s0,56(sp)
    80002470:	04013483          	ld	s1,64(sp)
    80002474:	04813503          	ld	a0,72(sp)
    80002478:	05013583          	ld	a1,80(sp)
    8000247c:	05813603          	ld	a2,88(sp)
    80002480:	06013683          	ld	a3,96(sp)
    80002484:	06813703          	ld	a4,104(sp)
    80002488:	07013783          	ld	a5,112(sp)
    8000248c:	07813803          	ld	a6,120(sp)
    80002490:	08013883          	ld	a7,128(sp)
    80002494:	08813903          	ld	s2,136(sp)
    80002498:	09013983          	ld	s3,144(sp)
    8000249c:	09813a03          	ld	s4,152(sp)
    800024a0:	0a013a83          	ld	s5,160(sp)
    800024a4:	0a813b03          	ld	s6,168(sp)
    800024a8:	0b013b83          	ld	s7,176(sp)
    800024ac:	0b813c03          	ld	s8,184(sp)
    800024b0:	0c013c83          	ld	s9,192(sp)
    800024b4:	0c813d03          	ld	s10,200(sp)
    800024b8:	0d013d83          	ld	s11,208(sp)
    800024bc:	0d813e03          	ld	t3,216(sp)
    800024c0:	0e013e83          	ld	t4,224(sp)
    800024c4:	0e813f03          	ld	t5,232(sp)
    800024c8:	0f013f83          	ld	t6,240(sp)
    800024cc:	10010113          	addi	sp,sp,256
    800024d0:	10200073          	sret
    800024d4:	00000013          	nop
    800024d8:	00000013          	nop
    800024dc:	00000013          	nop

00000000800024e0 <timervec>:
    800024e0:	34051573          	csrrw	a0,mscratch,a0
    800024e4:	00b53023          	sd	a1,0(a0)
    800024e8:	00c53423          	sd	a2,8(a0)
    800024ec:	00d53823          	sd	a3,16(a0)
    800024f0:	01853583          	ld	a1,24(a0)
    800024f4:	02053603          	ld	a2,32(a0)
    800024f8:	0005b683          	ld	a3,0(a1)
    800024fc:	00c686b3          	add	a3,a3,a2
    80002500:	00d5b023          	sd	a3,0(a1)
    80002504:	00200593          	li	a1,2
    80002508:	14459073          	csrw	sip,a1
    8000250c:	01053683          	ld	a3,16(a0)
    80002510:	00853603          	ld	a2,8(a0)
    80002514:	00053583          	ld	a1,0(a0)
    80002518:	34051573          	csrrw	a0,mscratch,a0
    8000251c:	30200073          	mret

0000000080002520 <plicinit>:
    80002520:	ff010113          	addi	sp,sp,-16
    80002524:	00813423          	sd	s0,8(sp)
    80002528:	01010413          	addi	s0,sp,16
    8000252c:	00813403          	ld	s0,8(sp)
    80002530:	0c0007b7          	lui	a5,0xc000
    80002534:	00100713          	li	a4,1
    80002538:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000253c:	00e7a223          	sw	a4,4(a5)
    80002540:	01010113          	addi	sp,sp,16
    80002544:	00008067          	ret

0000000080002548 <plicinithart>:
    80002548:	ff010113          	addi	sp,sp,-16
    8000254c:	00813023          	sd	s0,0(sp)
    80002550:	00113423          	sd	ra,8(sp)
    80002554:	01010413          	addi	s0,sp,16
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	a40080e7          	jalr	-1472(ra) # 80001f98 <cpuid>
    80002560:	0085171b          	slliw	a4,a0,0x8
    80002564:	0c0027b7          	lui	a5,0xc002
    80002568:	00e787b3          	add	a5,a5,a4
    8000256c:	40200713          	li	a4,1026
    80002570:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002574:	00813083          	ld	ra,8(sp)
    80002578:	00013403          	ld	s0,0(sp)
    8000257c:	00d5151b          	slliw	a0,a0,0xd
    80002580:	0c2017b7          	lui	a5,0xc201
    80002584:	00a78533          	add	a0,a5,a0
    80002588:	00052023          	sw	zero,0(a0)
    8000258c:	01010113          	addi	sp,sp,16
    80002590:	00008067          	ret

0000000080002594 <plic_claim>:
    80002594:	ff010113          	addi	sp,sp,-16
    80002598:	00813023          	sd	s0,0(sp)
    8000259c:	00113423          	sd	ra,8(sp)
    800025a0:	01010413          	addi	s0,sp,16
    800025a4:	00000097          	auipc	ra,0x0
    800025a8:	9f4080e7          	jalr	-1548(ra) # 80001f98 <cpuid>
    800025ac:	00813083          	ld	ra,8(sp)
    800025b0:	00013403          	ld	s0,0(sp)
    800025b4:	00d5151b          	slliw	a0,a0,0xd
    800025b8:	0c2017b7          	lui	a5,0xc201
    800025bc:	00a78533          	add	a0,a5,a0
    800025c0:	00452503          	lw	a0,4(a0)
    800025c4:	01010113          	addi	sp,sp,16
    800025c8:	00008067          	ret

00000000800025cc <plic_complete>:
    800025cc:	fe010113          	addi	sp,sp,-32
    800025d0:	00813823          	sd	s0,16(sp)
    800025d4:	00913423          	sd	s1,8(sp)
    800025d8:	00113c23          	sd	ra,24(sp)
    800025dc:	02010413          	addi	s0,sp,32
    800025e0:	00050493          	mv	s1,a0
    800025e4:	00000097          	auipc	ra,0x0
    800025e8:	9b4080e7          	jalr	-1612(ra) # 80001f98 <cpuid>
    800025ec:	01813083          	ld	ra,24(sp)
    800025f0:	01013403          	ld	s0,16(sp)
    800025f4:	00d5179b          	slliw	a5,a0,0xd
    800025f8:	0c201737          	lui	a4,0xc201
    800025fc:	00f707b3          	add	a5,a4,a5
    80002600:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002604:	00813483          	ld	s1,8(sp)
    80002608:	02010113          	addi	sp,sp,32
    8000260c:	00008067          	ret

0000000080002610 <consolewrite>:
    80002610:	fb010113          	addi	sp,sp,-80
    80002614:	04813023          	sd	s0,64(sp)
    80002618:	04113423          	sd	ra,72(sp)
    8000261c:	02913c23          	sd	s1,56(sp)
    80002620:	03213823          	sd	s2,48(sp)
    80002624:	03313423          	sd	s3,40(sp)
    80002628:	03413023          	sd	s4,32(sp)
    8000262c:	01513c23          	sd	s5,24(sp)
    80002630:	05010413          	addi	s0,sp,80
    80002634:	06c05c63          	blez	a2,800026ac <consolewrite+0x9c>
    80002638:	00060993          	mv	s3,a2
    8000263c:	00050a13          	mv	s4,a0
    80002640:	00058493          	mv	s1,a1
    80002644:	00000913          	li	s2,0
    80002648:	fff00a93          	li	s5,-1
    8000264c:	01c0006f          	j	80002668 <consolewrite+0x58>
    80002650:	fbf44503          	lbu	a0,-65(s0)
    80002654:	0019091b          	addiw	s2,s2,1
    80002658:	00148493          	addi	s1,s1,1
    8000265c:	00001097          	auipc	ra,0x1
    80002660:	a9c080e7          	jalr	-1380(ra) # 800030f8 <uartputc>
    80002664:	03298063          	beq	s3,s2,80002684 <consolewrite+0x74>
    80002668:	00048613          	mv	a2,s1
    8000266c:	00100693          	li	a3,1
    80002670:	000a0593          	mv	a1,s4
    80002674:	fbf40513          	addi	a0,s0,-65
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	9d8080e7          	jalr	-1576(ra) # 80002050 <either_copyin>
    80002680:	fd5518e3          	bne	a0,s5,80002650 <consolewrite+0x40>
    80002684:	04813083          	ld	ra,72(sp)
    80002688:	04013403          	ld	s0,64(sp)
    8000268c:	03813483          	ld	s1,56(sp)
    80002690:	02813983          	ld	s3,40(sp)
    80002694:	02013a03          	ld	s4,32(sp)
    80002698:	01813a83          	ld	s5,24(sp)
    8000269c:	00090513          	mv	a0,s2
    800026a0:	03013903          	ld	s2,48(sp)
    800026a4:	05010113          	addi	sp,sp,80
    800026a8:	00008067          	ret
    800026ac:	00000913          	li	s2,0
    800026b0:	fd5ff06f          	j	80002684 <consolewrite+0x74>

00000000800026b4 <consoleread>:
    800026b4:	f9010113          	addi	sp,sp,-112
    800026b8:	06813023          	sd	s0,96(sp)
    800026bc:	04913c23          	sd	s1,88(sp)
    800026c0:	05213823          	sd	s2,80(sp)
    800026c4:	05313423          	sd	s3,72(sp)
    800026c8:	05413023          	sd	s4,64(sp)
    800026cc:	03513c23          	sd	s5,56(sp)
    800026d0:	03613823          	sd	s6,48(sp)
    800026d4:	03713423          	sd	s7,40(sp)
    800026d8:	03813023          	sd	s8,32(sp)
    800026dc:	06113423          	sd	ra,104(sp)
    800026e0:	01913c23          	sd	s9,24(sp)
    800026e4:	07010413          	addi	s0,sp,112
    800026e8:	00060b93          	mv	s7,a2
    800026ec:	00050913          	mv	s2,a0
    800026f0:	00058c13          	mv	s8,a1
    800026f4:	00060b1b          	sext.w	s6,a2
    800026f8:	00003497          	auipc	s1,0x3
    800026fc:	3b048493          	addi	s1,s1,944 # 80005aa8 <cons>
    80002700:	00400993          	li	s3,4
    80002704:	fff00a13          	li	s4,-1
    80002708:	00a00a93          	li	s5,10
    8000270c:	05705e63          	blez	s7,80002768 <consoleread+0xb4>
    80002710:	09c4a703          	lw	a4,156(s1)
    80002714:	0984a783          	lw	a5,152(s1)
    80002718:	0007071b          	sext.w	a4,a4
    8000271c:	08e78463          	beq	a5,a4,800027a4 <consoleread+0xf0>
    80002720:	07f7f713          	andi	a4,a5,127
    80002724:	00e48733          	add	a4,s1,a4
    80002728:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000272c:	0017869b          	addiw	a3,a5,1
    80002730:	08d4ac23          	sw	a3,152(s1)
    80002734:	00070c9b          	sext.w	s9,a4
    80002738:	0b370663          	beq	a4,s3,800027e4 <consoleread+0x130>
    8000273c:	00100693          	li	a3,1
    80002740:	f9f40613          	addi	a2,s0,-97
    80002744:	000c0593          	mv	a1,s8
    80002748:	00090513          	mv	a0,s2
    8000274c:	f8e40fa3          	sb	a4,-97(s0)
    80002750:	00000097          	auipc	ra,0x0
    80002754:	8b4080e7          	jalr	-1868(ra) # 80002004 <either_copyout>
    80002758:	01450863          	beq	a0,s4,80002768 <consoleread+0xb4>
    8000275c:	001c0c13          	addi	s8,s8,1
    80002760:	fffb8b9b          	addiw	s7,s7,-1
    80002764:	fb5c94e3          	bne	s9,s5,8000270c <consoleread+0x58>
    80002768:	000b851b          	sext.w	a0,s7
    8000276c:	06813083          	ld	ra,104(sp)
    80002770:	06013403          	ld	s0,96(sp)
    80002774:	05813483          	ld	s1,88(sp)
    80002778:	05013903          	ld	s2,80(sp)
    8000277c:	04813983          	ld	s3,72(sp)
    80002780:	04013a03          	ld	s4,64(sp)
    80002784:	03813a83          	ld	s5,56(sp)
    80002788:	02813b83          	ld	s7,40(sp)
    8000278c:	02013c03          	ld	s8,32(sp)
    80002790:	01813c83          	ld	s9,24(sp)
    80002794:	40ab053b          	subw	a0,s6,a0
    80002798:	03013b03          	ld	s6,48(sp)
    8000279c:	07010113          	addi	sp,sp,112
    800027a0:	00008067          	ret
    800027a4:	00001097          	auipc	ra,0x1
    800027a8:	1d8080e7          	jalr	472(ra) # 8000397c <push_on>
    800027ac:	0984a703          	lw	a4,152(s1)
    800027b0:	09c4a783          	lw	a5,156(s1)
    800027b4:	0007879b          	sext.w	a5,a5
    800027b8:	fef70ce3          	beq	a4,a5,800027b0 <consoleread+0xfc>
    800027bc:	00001097          	auipc	ra,0x1
    800027c0:	234080e7          	jalr	564(ra) # 800039f0 <pop_on>
    800027c4:	0984a783          	lw	a5,152(s1)
    800027c8:	07f7f713          	andi	a4,a5,127
    800027cc:	00e48733          	add	a4,s1,a4
    800027d0:	01874703          	lbu	a4,24(a4)
    800027d4:	0017869b          	addiw	a3,a5,1
    800027d8:	08d4ac23          	sw	a3,152(s1)
    800027dc:	00070c9b          	sext.w	s9,a4
    800027e0:	f5371ee3          	bne	a4,s3,8000273c <consoleread+0x88>
    800027e4:	000b851b          	sext.w	a0,s7
    800027e8:	f96bf2e3          	bgeu	s7,s6,8000276c <consoleread+0xb8>
    800027ec:	08f4ac23          	sw	a5,152(s1)
    800027f0:	f7dff06f          	j	8000276c <consoleread+0xb8>

00000000800027f4 <consputc>:
    800027f4:	10000793          	li	a5,256
    800027f8:	00f50663          	beq	a0,a5,80002804 <consputc+0x10>
    800027fc:	00001317          	auipc	t1,0x1
    80002800:	9f430067          	jr	-1548(t1) # 800031f0 <uartputc_sync>
    80002804:	ff010113          	addi	sp,sp,-16
    80002808:	00113423          	sd	ra,8(sp)
    8000280c:	00813023          	sd	s0,0(sp)
    80002810:	01010413          	addi	s0,sp,16
    80002814:	00800513          	li	a0,8
    80002818:	00001097          	auipc	ra,0x1
    8000281c:	9d8080e7          	jalr	-1576(ra) # 800031f0 <uartputc_sync>
    80002820:	02000513          	li	a0,32
    80002824:	00001097          	auipc	ra,0x1
    80002828:	9cc080e7          	jalr	-1588(ra) # 800031f0 <uartputc_sync>
    8000282c:	00013403          	ld	s0,0(sp)
    80002830:	00813083          	ld	ra,8(sp)
    80002834:	00800513          	li	a0,8
    80002838:	01010113          	addi	sp,sp,16
    8000283c:	00001317          	auipc	t1,0x1
    80002840:	9b430067          	jr	-1612(t1) # 800031f0 <uartputc_sync>

0000000080002844 <consoleintr>:
    80002844:	fe010113          	addi	sp,sp,-32
    80002848:	00813823          	sd	s0,16(sp)
    8000284c:	00913423          	sd	s1,8(sp)
    80002850:	01213023          	sd	s2,0(sp)
    80002854:	00113c23          	sd	ra,24(sp)
    80002858:	02010413          	addi	s0,sp,32
    8000285c:	00003917          	auipc	s2,0x3
    80002860:	24c90913          	addi	s2,s2,588 # 80005aa8 <cons>
    80002864:	00050493          	mv	s1,a0
    80002868:	00090513          	mv	a0,s2
    8000286c:	00001097          	auipc	ra,0x1
    80002870:	e40080e7          	jalr	-448(ra) # 800036ac <acquire>
    80002874:	02048c63          	beqz	s1,800028ac <consoleintr+0x68>
    80002878:	0a092783          	lw	a5,160(s2)
    8000287c:	09892703          	lw	a4,152(s2)
    80002880:	07f00693          	li	a3,127
    80002884:	40e7873b          	subw	a4,a5,a4
    80002888:	02e6e263          	bltu	a3,a4,800028ac <consoleintr+0x68>
    8000288c:	00d00713          	li	a4,13
    80002890:	04e48063          	beq	s1,a4,800028d0 <consoleintr+0x8c>
    80002894:	07f7f713          	andi	a4,a5,127
    80002898:	00e90733          	add	a4,s2,a4
    8000289c:	0017879b          	addiw	a5,a5,1
    800028a0:	0af92023          	sw	a5,160(s2)
    800028a4:	00970c23          	sb	s1,24(a4)
    800028a8:	08f92e23          	sw	a5,156(s2)
    800028ac:	01013403          	ld	s0,16(sp)
    800028b0:	01813083          	ld	ra,24(sp)
    800028b4:	00813483          	ld	s1,8(sp)
    800028b8:	00013903          	ld	s2,0(sp)
    800028bc:	00003517          	auipc	a0,0x3
    800028c0:	1ec50513          	addi	a0,a0,492 # 80005aa8 <cons>
    800028c4:	02010113          	addi	sp,sp,32
    800028c8:	00001317          	auipc	t1,0x1
    800028cc:	eb030067          	jr	-336(t1) # 80003778 <release>
    800028d0:	00a00493          	li	s1,10
    800028d4:	fc1ff06f          	j	80002894 <consoleintr+0x50>

00000000800028d8 <consoleinit>:
    800028d8:	fe010113          	addi	sp,sp,-32
    800028dc:	00113c23          	sd	ra,24(sp)
    800028e0:	00813823          	sd	s0,16(sp)
    800028e4:	00913423          	sd	s1,8(sp)
    800028e8:	02010413          	addi	s0,sp,32
    800028ec:	00003497          	auipc	s1,0x3
    800028f0:	1bc48493          	addi	s1,s1,444 # 80005aa8 <cons>
    800028f4:	00048513          	mv	a0,s1
    800028f8:	00002597          	auipc	a1,0x2
    800028fc:	89058593          	addi	a1,a1,-1904 # 80004188 <bntOne+0x130>
    80002900:	00001097          	auipc	ra,0x1
    80002904:	d88080e7          	jalr	-632(ra) # 80003688 <initlock>
    80002908:	00000097          	auipc	ra,0x0
    8000290c:	7ac080e7          	jalr	1964(ra) # 800030b4 <uartinit>
    80002910:	01813083          	ld	ra,24(sp)
    80002914:	01013403          	ld	s0,16(sp)
    80002918:	00000797          	auipc	a5,0x0
    8000291c:	d9c78793          	addi	a5,a5,-612 # 800026b4 <consoleread>
    80002920:	0af4bc23          	sd	a5,184(s1)
    80002924:	00000797          	auipc	a5,0x0
    80002928:	cec78793          	addi	a5,a5,-788 # 80002610 <consolewrite>
    8000292c:	0cf4b023          	sd	a5,192(s1)
    80002930:	00813483          	ld	s1,8(sp)
    80002934:	02010113          	addi	sp,sp,32
    80002938:	00008067          	ret

000000008000293c <console_read>:
    8000293c:	ff010113          	addi	sp,sp,-16
    80002940:	00813423          	sd	s0,8(sp)
    80002944:	01010413          	addi	s0,sp,16
    80002948:	00813403          	ld	s0,8(sp)
    8000294c:	00003317          	auipc	t1,0x3
    80002950:	21433303          	ld	t1,532(t1) # 80005b60 <devsw+0x10>
    80002954:	01010113          	addi	sp,sp,16
    80002958:	00030067          	jr	t1

000000008000295c <console_write>:
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00813423          	sd	s0,8(sp)
    80002964:	01010413          	addi	s0,sp,16
    80002968:	00813403          	ld	s0,8(sp)
    8000296c:	00003317          	auipc	t1,0x3
    80002970:	1fc33303          	ld	t1,508(t1) # 80005b68 <devsw+0x18>
    80002974:	01010113          	addi	sp,sp,16
    80002978:	00030067          	jr	t1

000000008000297c <panic>:
    8000297c:	fe010113          	addi	sp,sp,-32
    80002980:	00113c23          	sd	ra,24(sp)
    80002984:	00813823          	sd	s0,16(sp)
    80002988:	00913423          	sd	s1,8(sp)
    8000298c:	02010413          	addi	s0,sp,32
    80002990:	00050493          	mv	s1,a0
    80002994:	00001517          	auipc	a0,0x1
    80002998:	7fc50513          	addi	a0,a0,2044 # 80004190 <bntOne+0x138>
    8000299c:	00003797          	auipc	a5,0x3
    800029a0:	2607a623          	sw	zero,620(a5) # 80005c08 <pr+0x18>
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	034080e7          	jalr	52(ra) # 800029d8 <__printf>
    800029ac:	00048513          	mv	a0,s1
    800029b0:	00000097          	auipc	ra,0x0
    800029b4:	028080e7          	jalr	40(ra) # 800029d8 <__printf>
    800029b8:	00001517          	auipc	a0,0x1
    800029bc:	7b850513          	addi	a0,a0,1976 # 80004170 <bntOne+0x118>
    800029c0:	00000097          	auipc	ra,0x0
    800029c4:	018080e7          	jalr	24(ra) # 800029d8 <__printf>
    800029c8:	00100793          	li	a5,1
    800029cc:	00002717          	auipc	a4,0x2
    800029d0:	fcf72223          	sw	a5,-60(a4) # 80004990 <panicked>
    800029d4:	0000006f          	j	800029d4 <panic+0x58>

00000000800029d8 <__printf>:
    800029d8:	f3010113          	addi	sp,sp,-208
    800029dc:	08813023          	sd	s0,128(sp)
    800029e0:	07313423          	sd	s3,104(sp)
    800029e4:	09010413          	addi	s0,sp,144
    800029e8:	05813023          	sd	s8,64(sp)
    800029ec:	08113423          	sd	ra,136(sp)
    800029f0:	06913c23          	sd	s1,120(sp)
    800029f4:	07213823          	sd	s2,112(sp)
    800029f8:	07413023          	sd	s4,96(sp)
    800029fc:	05513c23          	sd	s5,88(sp)
    80002a00:	05613823          	sd	s6,80(sp)
    80002a04:	05713423          	sd	s7,72(sp)
    80002a08:	03913c23          	sd	s9,56(sp)
    80002a0c:	03a13823          	sd	s10,48(sp)
    80002a10:	03b13423          	sd	s11,40(sp)
    80002a14:	00003317          	auipc	t1,0x3
    80002a18:	1dc30313          	addi	t1,t1,476 # 80005bf0 <pr>
    80002a1c:	01832c03          	lw	s8,24(t1)
    80002a20:	00b43423          	sd	a1,8(s0)
    80002a24:	00c43823          	sd	a2,16(s0)
    80002a28:	00d43c23          	sd	a3,24(s0)
    80002a2c:	02e43023          	sd	a4,32(s0)
    80002a30:	02f43423          	sd	a5,40(s0)
    80002a34:	03043823          	sd	a6,48(s0)
    80002a38:	03143c23          	sd	a7,56(s0)
    80002a3c:	00050993          	mv	s3,a0
    80002a40:	4a0c1663          	bnez	s8,80002eec <__printf+0x514>
    80002a44:	60098c63          	beqz	s3,8000305c <__printf+0x684>
    80002a48:	0009c503          	lbu	a0,0(s3)
    80002a4c:	00840793          	addi	a5,s0,8
    80002a50:	f6f43c23          	sd	a5,-136(s0)
    80002a54:	00000493          	li	s1,0
    80002a58:	22050063          	beqz	a0,80002c78 <__printf+0x2a0>
    80002a5c:	00002a37          	lui	s4,0x2
    80002a60:	00018ab7          	lui	s5,0x18
    80002a64:	000f4b37          	lui	s6,0xf4
    80002a68:	00989bb7          	lui	s7,0x989
    80002a6c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002a70:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002a74:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002a78:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002a7c:	00148c9b          	addiw	s9,s1,1
    80002a80:	02500793          	li	a5,37
    80002a84:	01998933          	add	s2,s3,s9
    80002a88:	38f51263          	bne	a0,a5,80002e0c <__printf+0x434>
    80002a8c:	00094783          	lbu	a5,0(s2)
    80002a90:	00078c9b          	sext.w	s9,a5
    80002a94:	1e078263          	beqz	a5,80002c78 <__printf+0x2a0>
    80002a98:	0024849b          	addiw	s1,s1,2
    80002a9c:	07000713          	li	a4,112
    80002aa0:	00998933          	add	s2,s3,s1
    80002aa4:	38e78a63          	beq	a5,a4,80002e38 <__printf+0x460>
    80002aa8:	20f76863          	bltu	a4,a5,80002cb8 <__printf+0x2e0>
    80002aac:	42a78863          	beq	a5,a0,80002edc <__printf+0x504>
    80002ab0:	06400713          	li	a4,100
    80002ab4:	40e79663          	bne	a5,a4,80002ec0 <__printf+0x4e8>
    80002ab8:	f7843783          	ld	a5,-136(s0)
    80002abc:	0007a603          	lw	a2,0(a5)
    80002ac0:	00878793          	addi	a5,a5,8
    80002ac4:	f6f43c23          	sd	a5,-136(s0)
    80002ac8:	42064a63          	bltz	a2,80002efc <__printf+0x524>
    80002acc:	00a00713          	li	a4,10
    80002ad0:	02e677bb          	remuw	a5,a2,a4
    80002ad4:	00001d97          	auipc	s11,0x1
    80002ad8:	6e4d8d93          	addi	s11,s11,1764 # 800041b8 <digits>
    80002adc:	00900593          	li	a1,9
    80002ae0:	0006051b          	sext.w	a0,a2
    80002ae4:	00000c93          	li	s9,0
    80002ae8:	02079793          	slli	a5,a5,0x20
    80002aec:	0207d793          	srli	a5,a5,0x20
    80002af0:	00fd87b3          	add	a5,s11,a5
    80002af4:	0007c783          	lbu	a5,0(a5)
    80002af8:	02e656bb          	divuw	a3,a2,a4
    80002afc:	f8f40023          	sb	a5,-128(s0)
    80002b00:	14c5d863          	bge	a1,a2,80002c50 <__printf+0x278>
    80002b04:	06300593          	li	a1,99
    80002b08:	00100c93          	li	s9,1
    80002b0c:	02e6f7bb          	remuw	a5,a3,a4
    80002b10:	02079793          	slli	a5,a5,0x20
    80002b14:	0207d793          	srli	a5,a5,0x20
    80002b18:	00fd87b3          	add	a5,s11,a5
    80002b1c:	0007c783          	lbu	a5,0(a5)
    80002b20:	02e6d73b          	divuw	a4,a3,a4
    80002b24:	f8f400a3          	sb	a5,-127(s0)
    80002b28:	12a5f463          	bgeu	a1,a0,80002c50 <__printf+0x278>
    80002b2c:	00a00693          	li	a3,10
    80002b30:	00900593          	li	a1,9
    80002b34:	02d777bb          	remuw	a5,a4,a3
    80002b38:	02079793          	slli	a5,a5,0x20
    80002b3c:	0207d793          	srli	a5,a5,0x20
    80002b40:	00fd87b3          	add	a5,s11,a5
    80002b44:	0007c503          	lbu	a0,0(a5)
    80002b48:	02d757bb          	divuw	a5,a4,a3
    80002b4c:	f8a40123          	sb	a0,-126(s0)
    80002b50:	48e5f263          	bgeu	a1,a4,80002fd4 <__printf+0x5fc>
    80002b54:	06300513          	li	a0,99
    80002b58:	02d7f5bb          	remuw	a1,a5,a3
    80002b5c:	02059593          	slli	a1,a1,0x20
    80002b60:	0205d593          	srli	a1,a1,0x20
    80002b64:	00bd85b3          	add	a1,s11,a1
    80002b68:	0005c583          	lbu	a1,0(a1)
    80002b6c:	02d7d7bb          	divuw	a5,a5,a3
    80002b70:	f8b401a3          	sb	a1,-125(s0)
    80002b74:	48e57263          	bgeu	a0,a4,80002ff8 <__printf+0x620>
    80002b78:	3e700513          	li	a0,999
    80002b7c:	02d7f5bb          	remuw	a1,a5,a3
    80002b80:	02059593          	slli	a1,a1,0x20
    80002b84:	0205d593          	srli	a1,a1,0x20
    80002b88:	00bd85b3          	add	a1,s11,a1
    80002b8c:	0005c583          	lbu	a1,0(a1)
    80002b90:	02d7d7bb          	divuw	a5,a5,a3
    80002b94:	f8b40223          	sb	a1,-124(s0)
    80002b98:	46e57663          	bgeu	a0,a4,80003004 <__printf+0x62c>
    80002b9c:	02d7f5bb          	remuw	a1,a5,a3
    80002ba0:	02059593          	slli	a1,a1,0x20
    80002ba4:	0205d593          	srli	a1,a1,0x20
    80002ba8:	00bd85b3          	add	a1,s11,a1
    80002bac:	0005c583          	lbu	a1,0(a1)
    80002bb0:	02d7d7bb          	divuw	a5,a5,a3
    80002bb4:	f8b402a3          	sb	a1,-123(s0)
    80002bb8:	46ea7863          	bgeu	s4,a4,80003028 <__printf+0x650>
    80002bbc:	02d7f5bb          	remuw	a1,a5,a3
    80002bc0:	02059593          	slli	a1,a1,0x20
    80002bc4:	0205d593          	srli	a1,a1,0x20
    80002bc8:	00bd85b3          	add	a1,s11,a1
    80002bcc:	0005c583          	lbu	a1,0(a1)
    80002bd0:	02d7d7bb          	divuw	a5,a5,a3
    80002bd4:	f8b40323          	sb	a1,-122(s0)
    80002bd8:	3eeaf863          	bgeu	s5,a4,80002fc8 <__printf+0x5f0>
    80002bdc:	02d7f5bb          	remuw	a1,a5,a3
    80002be0:	02059593          	slli	a1,a1,0x20
    80002be4:	0205d593          	srli	a1,a1,0x20
    80002be8:	00bd85b3          	add	a1,s11,a1
    80002bec:	0005c583          	lbu	a1,0(a1)
    80002bf0:	02d7d7bb          	divuw	a5,a5,a3
    80002bf4:	f8b403a3          	sb	a1,-121(s0)
    80002bf8:	42eb7e63          	bgeu	s6,a4,80003034 <__printf+0x65c>
    80002bfc:	02d7f5bb          	remuw	a1,a5,a3
    80002c00:	02059593          	slli	a1,a1,0x20
    80002c04:	0205d593          	srli	a1,a1,0x20
    80002c08:	00bd85b3          	add	a1,s11,a1
    80002c0c:	0005c583          	lbu	a1,0(a1)
    80002c10:	02d7d7bb          	divuw	a5,a5,a3
    80002c14:	f8b40423          	sb	a1,-120(s0)
    80002c18:	42ebfc63          	bgeu	s7,a4,80003050 <__printf+0x678>
    80002c1c:	02079793          	slli	a5,a5,0x20
    80002c20:	0207d793          	srli	a5,a5,0x20
    80002c24:	00fd8db3          	add	s11,s11,a5
    80002c28:	000dc703          	lbu	a4,0(s11)
    80002c2c:	00a00793          	li	a5,10
    80002c30:	00900c93          	li	s9,9
    80002c34:	f8e404a3          	sb	a4,-119(s0)
    80002c38:	00065c63          	bgez	a2,80002c50 <__printf+0x278>
    80002c3c:	f9040713          	addi	a4,s0,-112
    80002c40:	00f70733          	add	a4,a4,a5
    80002c44:	02d00693          	li	a3,45
    80002c48:	fed70823          	sb	a3,-16(a4)
    80002c4c:	00078c93          	mv	s9,a5
    80002c50:	f8040793          	addi	a5,s0,-128
    80002c54:	01978cb3          	add	s9,a5,s9
    80002c58:	f7f40d13          	addi	s10,s0,-129
    80002c5c:	000cc503          	lbu	a0,0(s9)
    80002c60:	fffc8c93          	addi	s9,s9,-1
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	b90080e7          	jalr	-1136(ra) # 800027f4 <consputc>
    80002c6c:	ffac98e3          	bne	s9,s10,80002c5c <__printf+0x284>
    80002c70:	00094503          	lbu	a0,0(s2)
    80002c74:	e00514e3          	bnez	a0,80002a7c <__printf+0xa4>
    80002c78:	1a0c1663          	bnez	s8,80002e24 <__printf+0x44c>
    80002c7c:	08813083          	ld	ra,136(sp)
    80002c80:	08013403          	ld	s0,128(sp)
    80002c84:	07813483          	ld	s1,120(sp)
    80002c88:	07013903          	ld	s2,112(sp)
    80002c8c:	06813983          	ld	s3,104(sp)
    80002c90:	06013a03          	ld	s4,96(sp)
    80002c94:	05813a83          	ld	s5,88(sp)
    80002c98:	05013b03          	ld	s6,80(sp)
    80002c9c:	04813b83          	ld	s7,72(sp)
    80002ca0:	04013c03          	ld	s8,64(sp)
    80002ca4:	03813c83          	ld	s9,56(sp)
    80002ca8:	03013d03          	ld	s10,48(sp)
    80002cac:	02813d83          	ld	s11,40(sp)
    80002cb0:	0d010113          	addi	sp,sp,208
    80002cb4:	00008067          	ret
    80002cb8:	07300713          	li	a4,115
    80002cbc:	1ce78a63          	beq	a5,a4,80002e90 <__printf+0x4b8>
    80002cc0:	07800713          	li	a4,120
    80002cc4:	1ee79e63          	bne	a5,a4,80002ec0 <__printf+0x4e8>
    80002cc8:	f7843783          	ld	a5,-136(s0)
    80002ccc:	0007a703          	lw	a4,0(a5)
    80002cd0:	00878793          	addi	a5,a5,8
    80002cd4:	f6f43c23          	sd	a5,-136(s0)
    80002cd8:	28074263          	bltz	a4,80002f5c <__printf+0x584>
    80002cdc:	00001d97          	auipc	s11,0x1
    80002ce0:	4dcd8d93          	addi	s11,s11,1244 # 800041b8 <digits>
    80002ce4:	00f77793          	andi	a5,a4,15
    80002ce8:	00fd87b3          	add	a5,s11,a5
    80002cec:	0007c683          	lbu	a3,0(a5)
    80002cf0:	00f00613          	li	a2,15
    80002cf4:	0007079b          	sext.w	a5,a4
    80002cf8:	f8d40023          	sb	a3,-128(s0)
    80002cfc:	0047559b          	srliw	a1,a4,0x4
    80002d00:	0047569b          	srliw	a3,a4,0x4
    80002d04:	00000c93          	li	s9,0
    80002d08:	0ee65063          	bge	a2,a4,80002de8 <__printf+0x410>
    80002d0c:	00f6f693          	andi	a3,a3,15
    80002d10:	00dd86b3          	add	a3,s11,a3
    80002d14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002d18:	0087d79b          	srliw	a5,a5,0x8
    80002d1c:	00100c93          	li	s9,1
    80002d20:	f8d400a3          	sb	a3,-127(s0)
    80002d24:	0cb67263          	bgeu	a2,a1,80002de8 <__printf+0x410>
    80002d28:	00f7f693          	andi	a3,a5,15
    80002d2c:	00dd86b3          	add	a3,s11,a3
    80002d30:	0006c583          	lbu	a1,0(a3)
    80002d34:	00f00613          	li	a2,15
    80002d38:	0047d69b          	srliw	a3,a5,0x4
    80002d3c:	f8b40123          	sb	a1,-126(s0)
    80002d40:	0047d593          	srli	a1,a5,0x4
    80002d44:	28f67e63          	bgeu	a2,a5,80002fe0 <__printf+0x608>
    80002d48:	00f6f693          	andi	a3,a3,15
    80002d4c:	00dd86b3          	add	a3,s11,a3
    80002d50:	0006c503          	lbu	a0,0(a3)
    80002d54:	0087d813          	srli	a6,a5,0x8
    80002d58:	0087d69b          	srliw	a3,a5,0x8
    80002d5c:	f8a401a3          	sb	a0,-125(s0)
    80002d60:	28b67663          	bgeu	a2,a1,80002fec <__printf+0x614>
    80002d64:	00f6f693          	andi	a3,a3,15
    80002d68:	00dd86b3          	add	a3,s11,a3
    80002d6c:	0006c583          	lbu	a1,0(a3)
    80002d70:	00c7d513          	srli	a0,a5,0xc
    80002d74:	00c7d69b          	srliw	a3,a5,0xc
    80002d78:	f8b40223          	sb	a1,-124(s0)
    80002d7c:	29067a63          	bgeu	a2,a6,80003010 <__printf+0x638>
    80002d80:	00f6f693          	andi	a3,a3,15
    80002d84:	00dd86b3          	add	a3,s11,a3
    80002d88:	0006c583          	lbu	a1,0(a3)
    80002d8c:	0107d813          	srli	a6,a5,0x10
    80002d90:	0107d69b          	srliw	a3,a5,0x10
    80002d94:	f8b402a3          	sb	a1,-123(s0)
    80002d98:	28a67263          	bgeu	a2,a0,8000301c <__printf+0x644>
    80002d9c:	00f6f693          	andi	a3,a3,15
    80002da0:	00dd86b3          	add	a3,s11,a3
    80002da4:	0006c683          	lbu	a3,0(a3)
    80002da8:	0147d79b          	srliw	a5,a5,0x14
    80002dac:	f8d40323          	sb	a3,-122(s0)
    80002db0:	21067663          	bgeu	a2,a6,80002fbc <__printf+0x5e4>
    80002db4:	02079793          	slli	a5,a5,0x20
    80002db8:	0207d793          	srli	a5,a5,0x20
    80002dbc:	00fd8db3          	add	s11,s11,a5
    80002dc0:	000dc683          	lbu	a3,0(s11)
    80002dc4:	00800793          	li	a5,8
    80002dc8:	00700c93          	li	s9,7
    80002dcc:	f8d403a3          	sb	a3,-121(s0)
    80002dd0:	00075c63          	bgez	a4,80002de8 <__printf+0x410>
    80002dd4:	f9040713          	addi	a4,s0,-112
    80002dd8:	00f70733          	add	a4,a4,a5
    80002ddc:	02d00693          	li	a3,45
    80002de0:	fed70823          	sb	a3,-16(a4)
    80002de4:	00078c93          	mv	s9,a5
    80002de8:	f8040793          	addi	a5,s0,-128
    80002dec:	01978cb3          	add	s9,a5,s9
    80002df0:	f7f40d13          	addi	s10,s0,-129
    80002df4:	000cc503          	lbu	a0,0(s9)
    80002df8:	fffc8c93          	addi	s9,s9,-1
    80002dfc:	00000097          	auipc	ra,0x0
    80002e00:	9f8080e7          	jalr	-1544(ra) # 800027f4 <consputc>
    80002e04:	ff9d18e3          	bne	s10,s9,80002df4 <__printf+0x41c>
    80002e08:	0100006f          	j	80002e18 <__printf+0x440>
    80002e0c:	00000097          	auipc	ra,0x0
    80002e10:	9e8080e7          	jalr	-1560(ra) # 800027f4 <consputc>
    80002e14:	000c8493          	mv	s1,s9
    80002e18:	00094503          	lbu	a0,0(s2)
    80002e1c:	c60510e3          	bnez	a0,80002a7c <__printf+0xa4>
    80002e20:	e40c0ee3          	beqz	s8,80002c7c <__printf+0x2a4>
    80002e24:	00003517          	auipc	a0,0x3
    80002e28:	dcc50513          	addi	a0,a0,-564 # 80005bf0 <pr>
    80002e2c:	00001097          	auipc	ra,0x1
    80002e30:	94c080e7          	jalr	-1716(ra) # 80003778 <release>
    80002e34:	e49ff06f          	j	80002c7c <__printf+0x2a4>
    80002e38:	f7843783          	ld	a5,-136(s0)
    80002e3c:	03000513          	li	a0,48
    80002e40:	01000d13          	li	s10,16
    80002e44:	00878713          	addi	a4,a5,8
    80002e48:	0007bc83          	ld	s9,0(a5)
    80002e4c:	f6e43c23          	sd	a4,-136(s0)
    80002e50:	00000097          	auipc	ra,0x0
    80002e54:	9a4080e7          	jalr	-1628(ra) # 800027f4 <consputc>
    80002e58:	07800513          	li	a0,120
    80002e5c:	00000097          	auipc	ra,0x0
    80002e60:	998080e7          	jalr	-1640(ra) # 800027f4 <consputc>
    80002e64:	00001d97          	auipc	s11,0x1
    80002e68:	354d8d93          	addi	s11,s11,852 # 800041b8 <digits>
    80002e6c:	03ccd793          	srli	a5,s9,0x3c
    80002e70:	00fd87b3          	add	a5,s11,a5
    80002e74:	0007c503          	lbu	a0,0(a5)
    80002e78:	fffd0d1b          	addiw	s10,s10,-1
    80002e7c:	004c9c93          	slli	s9,s9,0x4
    80002e80:	00000097          	auipc	ra,0x0
    80002e84:	974080e7          	jalr	-1676(ra) # 800027f4 <consputc>
    80002e88:	fe0d12e3          	bnez	s10,80002e6c <__printf+0x494>
    80002e8c:	f8dff06f          	j	80002e18 <__printf+0x440>
    80002e90:	f7843783          	ld	a5,-136(s0)
    80002e94:	0007bc83          	ld	s9,0(a5)
    80002e98:	00878793          	addi	a5,a5,8
    80002e9c:	f6f43c23          	sd	a5,-136(s0)
    80002ea0:	000c9a63          	bnez	s9,80002eb4 <__printf+0x4dc>
    80002ea4:	1080006f          	j	80002fac <__printf+0x5d4>
    80002ea8:	001c8c93          	addi	s9,s9,1
    80002eac:	00000097          	auipc	ra,0x0
    80002eb0:	948080e7          	jalr	-1720(ra) # 800027f4 <consputc>
    80002eb4:	000cc503          	lbu	a0,0(s9)
    80002eb8:	fe0518e3          	bnez	a0,80002ea8 <__printf+0x4d0>
    80002ebc:	f5dff06f          	j	80002e18 <__printf+0x440>
    80002ec0:	02500513          	li	a0,37
    80002ec4:	00000097          	auipc	ra,0x0
    80002ec8:	930080e7          	jalr	-1744(ra) # 800027f4 <consputc>
    80002ecc:	000c8513          	mv	a0,s9
    80002ed0:	00000097          	auipc	ra,0x0
    80002ed4:	924080e7          	jalr	-1756(ra) # 800027f4 <consputc>
    80002ed8:	f41ff06f          	j	80002e18 <__printf+0x440>
    80002edc:	02500513          	li	a0,37
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	914080e7          	jalr	-1772(ra) # 800027f4 <consputc>
    80002ee8:	f31ff06f          	j	80002e18 <__printf+0x440>
    80002eec:	00030513          	mv	a0,t1
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	7bc080e7          	jalr	1980(ra) # 800036ac <acquire>
    80002ef8:	b4dff06f          	j	80002a44 <__printf+0x6c>
    80002efc:	40c0053b          	negw	a0,a2
    80002f00:	00a00713          	li	a4,10
    80002f04:	02e576bb          	remuw	a3,a0,a4
    80002f08:	00001d97          	auipc	s11,0x1
    80002f0c:	2b0d8d93          	addi	s11,s11,688 # 800041b8 <digits>
    80002f10:	ff700593          	li	a1,-9
    80002f14:	02069693          	slli	a3,a3,0x20
    80002f18:	0206d693          	srli	a3,a3,0x20
    80002f1c:	00dd86b3          	add	a3,s11,a3
    80002f20:	0006c683          	lbu	a3,0(a3)
    80002f24:	02e557bb          	divuw	a5,a0,a4
    80002f28:	f8d40023          	sb	a3,-128(s0)
    80002f2c:	10b65e63          	bge	a2,a1,80003048 <__printf+0x670>
    80002f30:	06300593          	li	a1,99
    80002f34:	02e7f6bb          	remuw	a3,a5,a4
    80002f38:	02069693          	slli	a3,a3,0x20
    80002f3c:	0206d693          	srli	a3,a3,0x20
    80002f40:	00dd86b3          	add	a3,s11,a3
    80002f44:	0006c683          	lbu	a3,0(a3)
    80002f48:	02e7d73b          	divuw	a4,a5,a4
    80002f4c:	00200793          	li	a5,2
    80002f50:	f8d400a3          	sb	a3,-127(s0)
    80002f54:	bca5ece3          	bltu	a1,a0,80002b2c <__printf+0x154>
    80002f58:	ce5ff06f          	j	80002c3c <__printf+0x264>
    80002f5c:	40e007bb          	negw	a5,a4
    80002f60:	00001d97          	auipc	s11,0x1
    80002f64:	258d8d93          	addi	s11,s11,600 # 800041b8 <digits>
    80002f68:	00f7f693          	andi	a3,a5,15
    80002f6c:	00dd86b3          	add	a3,s11,a3
    80002f70:	0006c583          	lbu	a1,0(a3)
    80002f74:	ff100613          	li	a2,-15
    80002f78:	0047d69b          	srliw	a3,a5,0x4
    80002f7c:	f8b40023          	sb	a1,-128(s0)
    80002f80:	0047d59b          	srliw	a1,a5,0x4
    80002f84:	0ac75e63          	bge	a4,a2,80003040 <__printf+0x668>
    80002f88:	00f6f693          	andi	a3,a3,15
    80002f8c:	00dd86b3          	add	a3,s11,a3
    80002f90:	0006c603          	lbu	a2,0(a3)
    80002f94:	00f00693          	li	a3,15
    80002f98:	0087d79b          	srliw	a5,a5,0x8
    80002f9c:	f8c400a3          	sb	a2,-127(s0)
    80002fa0:	d8b6e4e3          	bltu	a3,a1,80002d28 <__printf+0x350>
    80002fa4:	00200793          	li	a5,2
    80002fa8:	e2dff06f          	j	80002dd4 <__printf+0x3fc>
    80002fac:	00001c97          	auipc	s9,0x1
    80002fb0:	1ecc8c93          	addi	s9,s9,492 # 80004198 <bntOne+0x140>
    80002fb4:	02800513          	li	a0,40
    80002fb8:	ef1ff06f          	j	80002ea8 <__printf+0x4d0>
    80002fbc:	00700793          	li	a5,7
    80002fc0:	00600c93          	li	s9,6
    80002fc4:	e0dff06f          	j	80002dd0 <__printf+0x3f8>
    80002fc8:	00700793          	li	a5,7
    80002fcc:	00600c93          	li	s9,6
    80002fd0:	c69ff06f          	j	80002c38 <__printf+0x260>
    80002fd4:	00300793          	li	a5,3
    80002fd8:	00200c93          	li	s9,2
    80002fdc:	c5dff06f          	j	80002c38 <__printf+0x260>
    80002fe0:	00300793          	li	a5,3
    80002fe4:	00200c93          	li	s9,2
    80002fe8:	de9ff06f          	j	80002dd0 <__printf+0x3f8>
    80002fec:	00400793          	li	a5,4
    80002ff0:	00300c93          	li	s9,3
    80002ff4:	dddff06f          	j	80002dd0 <__printf+0x3f8>
    80002ff8:	00400793          	li	a5,4
    80002ffc:	00300c93          	li	s9,3
    80003000:	c39ff06f          	j	80002c38 <__printf+0x260>
    80003004:	00500793          	li	a5,5
    80003008:	00400c93          	li	s9,4
    8000300c:	c2dff06f          	j	80002c38 <__printf+0x260>
    80003010:	00500793          	li	a5,5
    80003014:	00400c93          	li	s9,4
    80003018:	db9ff06f          	j	80002dd0 <__printf+0x3f8>
    8000301c:	00600793          	li	a5,6
    80003020:	00500c93          	li	s9,5
    80003024:	dadff06f          	j	80002dd0 <__printf+0x3f8>
    80003028:	00600793          	li	a5,6
    8000302c:	00500c93          	li	s9,5
    80003030:	c09ff06f          	j	80002c38 <__printf+0x260>
    80003034:	00800793          	li	a5,8
    80003038:	00700c93          	li	s9,7
    8000303c:	bfdff06f          	j	80002c38 <__printf+0x260>
    80003040:	00100793          	li	a5,1
    80003044:	d91ff06f          	j	80002dd4 <__printf+0x3fc>
    80003048:	00100793          	li	a5,1
    8000304c:	bf1ff06f          	j	80002c3c <__printf+0x264>
    80003050:	00900793          	li	a5,9
    80003054:	00800c93          	li	s9,8
    80003058:	be1ff06f          	j	80002c38 <__printf+0x260>
    8000305c:	00001517          	auipc	a0,0x1
    80003060:	14450513          	addi	a0,a0,324 # 800041a0 <bntOne+0x148>
    80003064:	00000097          	auipc	ra,0x0
    80003068:	918080e7          	jalr	-1768(ra) # 8000297c <panic>

000000008000306c <printfinit>:
    8000306c:	fe010113          	addi	sp,sp,-32
    80003070:	00813823          	sd	s0,16(sp)
    80003074:	00913423          	sd	s1,8(sp)
    80003078:	00113c23          	sd	ra,24(sp)
    8000307c:	02010413          	addi	s0,sp,32
    80003080:	00003497          	auipc	s1,0x3
    80003084:	b7048493          	addi	s1,s1,-1168 # 80005bf0 <pr>
    80003088:	00048513          	mv	a0,s1
    8000308c:	00001597          	auipc	a1,0x1
    80003090:	12458593          	addi	a1,a1,292 # 800041b0 <bntOne+0x158>
    80003094:	00000097          	auipc	ra,0x0
    80003098:	5f4080e7          	jalr	1524(ra) # 80003688 <initlock>
    8000309c:	01813083          	ld	ra,24(sp)
    800030a0:	01013403          	ld	s0,16(sp)
    800030a4:	0004ac23          	sw	zero,24(s1)
    800030a8:	00813483          	ld	s1,8(sp)
    800030ac:	02010113          	addi	sp,sp,32
    800030b0:	00008067          	ret

00000000800030b4 <uartinit>:
    800030b4:	ff010113          	addi	sp,sp,-16
    800030b8:	00813423          	sd	s0,8(sp)
    800030bc:	01010413          	addi	s0,sp,16
    800030c0:	100007b7          	lui	a5,0x10000
    800030c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800030c8:	f8000713          	li	a4,-128
    800030cc:	00e781a3          	sb	a4,3(a5)
    800030d0:	00300713          	li	a4,3
    800030d4:	00e78023          	sb	a4,0(a5)
    800030d8:	000780a3          	sb	zero,1(a5)
    800030dc:	00e781a3          	sb	a4,3(a5)
    800030e0:	00700693          	li	a3,7
    800030e4:	00d78123          	sb	a3,2(a5)
    800030e8:	00e780a3          	sb	a4,1(a5)
    800030ec:	00813403          	ld	s0,8(sp)
    800030f0:	01010113          	addi	sp,sp,16
    800030f4:	00008067          	ret

00000000800030f8 <uartputc>:
    800030f8:	00002797          	auipc	a5,0x2
    800030fc:	8987a783          	lw	a5,-1896(a5) # 80004990 <panicked>
    80003100:	00078463          	beqz	a5,80003108 <uartputc+0x10>
    80003104:	0000006f          	j	80003104 <uartputc+0xc>
    80003108:	fd010113          	addi	sp,sp,-48
    8000310c:	02813023          	sd	s0,32(sp)
    80003110:	00913c23          	sd	s1,24(sp)
    80003114:	01213823          	sd	s2,16(sp)
    80003118:	01313423          	sd	s3,8(sp)
    8000311c:	02113423          	sd	ra,40(sp)
    80003120:	03010413          	addi	s0,sp,48
    80003124:	00002917          	auipc	s2,0x2
    80003128:	87490913          	addi	s2,s2,-1932 # 80004998 <uart_tx_r>
    8000312c:	00093783          	ld	a5,0(s2)
    80003130:	00002497          	auipc	s1,0x2
    80003134:	87048493          	addi	s1,s1,-1936 # 800049a0 <uart_tx_w>
    80003138:	0004b703          	ld	a4,0(s1)
    8000313c:	02078693          	addi	a3,a5,32
    80003140:	00050993          	mv	s3,a0
    80003144:	02e69c63          	bne	a3,a4,8000317c <uartputc+0x84>
    80003148:	00001097          	auipc	ra,0x1
    8000314c:	834080e7          	jalr	-1996(ra) # 8000397c <push_on>
    80003150:	00093783          	ld	a5,0(s2)
    80003154:	0004b703          	ld	a4,0(s1)
    80003158:	02078793          	addi	a5,a5,32
    8000315c:	00e79463          	bne	a5,a4,80003164 <uartputc+0x6c>
    80003160:	0000006f          	j	80003160 <uartputc+0x68>
    80003164:	00001097          	auipc	ra,0x1
    80003168:	88c080e7          	jalr	-1908(ra) # 800039f0 <pop_on>
    8000316c:	00093783          	ld	a5,0(s2)
    80003170:	0004b703          	ld	a4,0(s1)
    80003174:	02078693          	addi	a3,a5,32
    80003178:	fce688e3          	beq	a3,a4,80003148 <uartputc+0x50>
    8000317c:	01f77693          	andi	a3,a4,31
    80003180:	00003597          	auipc	a1,0x3
    80003184:	a9058593          	addi	a1,a1,-1392 # 80005c10 <uart_tx_buf>
    80003188:	00d586b3          	add	a3,a1,a3
    8000318c:	00170713          	addi	a4,a4,1
    80003190:	01368023          	sb	s3,0(a3)
    80003194:	00e4b023          	sd	a4,0(s1)
    80003198:	10000637          	lui	a2,0x10000
    8000319c:	02f71063          	bne	a4,a5,800031bc <uartputc+0xc4>
    800031a0:	0340006f          	j	800031d4 <uartputc+0xdc>
    800031a4:	00074703          	lbu	a4,0(a4)
    800031a8:	00f93023          	sd	a5,0(s2)
    800031ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800031b0:	00093783          	ld	a5,0(s2)
    800031b4:	0004b703          	ld	a4,0(s1)
    800031b8:	00f70e63          	beq	a4,a5,800031d4 <uartputc+0xdc>
    800031bc:	00564683          	lbu	a3,5(a2)
    800031c0:	01f7f713          	andi	a4,a5,31
    800031c4:	00e58733          	add	a4,a1,a4
    800031c8:	0206f693          	andi	a3,a3,32
    800031cc:	00178793          	addi	a5,a5,1
    800031d0:	fc069ae3          	bnez	a3,800031a4 <uartputc+0xac>
    800031d4:	02813083          	ld	ra,40(sp)
    800031d8:	02013403          	ld	s0,32(sp)
    800031dc:	01813483          	ld	s1,24(sp)
    800031e0:	01013903          	ld	s2,16(sp)
    800031e4:	00813983          	ld	s3,8(sp)
    800031e8:	03010113          	addi	sp,sp,48
    800031ec:	00008067          	ret

00000000800031f0 <uartputc_sync>:
    800031f0:	ff010113          	addi	sp,sp,-16
    800031f4:	00813423          	sd	s0,8(sp)
    800031f8:	01010413          	addi	s0,sp,16
    800031fc:	00001717          	auipc	a4,0x1
    80003200:	79472703          	lw	a4,1940(a4) # 80004990 <panicked>
    80003204:	02071663          	bnez	a4,80003230 <uartputc_sync+0x40>
    80003208:	00050793          	mv	a5,a0
    8000320c:	100006b7          	lui	a3,0x10000
    80003210:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003214:	02077713          	andi	a4,a4,32
    80003218:	fe070ce3          	beqz	a4,80003210 <uartputc_sync+0x20>
    8000321c:	0ff7f793          	andi	a5,a5,255
    80003220:	00f68023          	sb	a5,0(a3)
    80003224:	00813403          	ld	s0,8(sp)
    80003228:	01010113          	addi	sp,sp,16
    8000322c:	00008067          	ret
    80003230:	0000006f          	j	80003230 <uartputc_sync+0x40>

0000000080003234 <uartstart>:
    80003234:	ff010113          	addi	sp,sp,-16
    80003238:	00813423          	sd	s0,8(sp)
    8000323c:	01010413          	addi	s0,sp,16
    80003240:	00001617          	auipc	a2,0x1
    80003244:	75860613          	addi	a2,a2,1880 # 80004998 <uart_tx_r>
    80003248:	00001517          	auipc	a0,0x1
    8000324c:	75850513          	addi	a0,a0,1880 # 800049a0 <uart_tx_w>
    80003250:	00063783          	ld	a5,0(a2)
    80003254:	00053703          	ld	a4,0(a0)
    80003258:	04f70263          	beq	a4,a5,8000329c <uartstart+0x68>
    8000325c:	100005b7          	lui	a1,0x10000
    80003260:	00003817          	auipc	a6,0x3
    80003264:	9b080813          	addi	a6,a6,-1616 # 80005c10 <uart_tx_buf>
    80003268:	01c0006f          	j	80003284 <uartstart+0x50>
    8000326c:	0006c703          	lbu	a4,0(a3)
    80003270:	00f63023          	sd	a5,0(a2)
    80003274:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003278:	00063783          	ld	a5,0(a2)
    8000327c:	00053703          	ld	a4,0(a0)
    80003280:	00f70e63          	beq	a4,a5,8000329c <uartstart+0x68>
    80003284:	01f7f713          	andi	a4,a5,31
    80003288:	00e806b3          	add	a3,a6,a4
    8000328c:	0055c703          	lbu	a4,5(a1)
    80003290:	00178793          	addi	a5,a5,1
    80003294:	02077713          	andi	a4,a4,32
    80003298:	fc071ae3          	bnez	a4,8000326c <uartstart+0x38>
    8000329c:	00813403          	ld	s0,8(sp)
    800032a0:	01010113          	addi	sp,sp,16
    800032a4:	00008067          	ret

00000000800032a8 <uartgetc>:
    800032a8:	ff010113          	addi	sp,sp,-16
    800032ac:	00813423          	sd	s0,8(sp)
    800032b0:	01010413          	addi	s0,sp,16
    800032b4:	10000737          	lui	a4,0x10000
    800032b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800032bc:	0017f793          	andi	a5,a5,1
    800032c0:	00078c63          	beqz	a5,800032d8 <uartgetc+0x30>
    800032c4:	00074503          	lbu	a0,0(a4)
    800032c8:	0ff57513          	andi	a0,a0,255
    800032cc:	00813403          	ld	s0,8(sp)
    800032d0:	01010113          	addi	sp,sp,16
    800032d4:	00008067          	ret
    800032d8:	fff00513          	li	a0,-1
    800032dc:	ff1ff06f          	j	800032cc <uartgetc+0x24>

00000000800032e0 <uartintr>:
    800032e0:	100007b7          	lui	a5,0x10000
    800032e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800032e8:	0017f793          	andi	a5,a5,1
    800032ec:	0a078463          	beqz	a5,80003394 <uartintr+0xb4>
    800032f0:	fe010113          	addi	sp,sp,-32
    800032f4:	00813823          	sd	s0,16(sp)
    800032f8:	00913423          	sd	s1,8(sp)
    800032fc:	00113c23          	sd	ra,24(sp)
    80003300:	02010413          	addi	s0,sp,32
    80003304:	100004b7          	lui	s1,0x10000
    80003308:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000330c:	0ff57513          	andi	a0,a0,255
    80003310:	fffff097          	auipc	ra,0xfffff
    80003314:	534080e7          	jalr	1332(ra) # 80002844 <consoleintr>
    80003318:	0054c783          	lbu	a5,5(s1)
    8000331c:	0017f793          	andi	a5,a5,1
    80003320:	fe0794e3          	bnez	a5,80003308 <uartintr+0x28>
    80003324:	00001617          	auipc	a2,0x1
    80003328:	67460613          	addi	a2,a2,1652 # 80004998 <uart_tx_r>
    8000332c:	00001517          	auipc	a0,0x1
    80003330:	67450513          	addi	a0,a0,1652 # 800049a0 <uart_tx_w>
    80003334:	00063783          	ld	a5,0(a2)
    80003338:	00053703          	ld	a4,0(a0)
    8000333c:	04f70263          	beq	a4,a5,80003380 <uartintr+0xa0>
    80003340:	100005b7          	lui	a1,0x10000
    80003344:	00003817          	auipc	a6,0x3
    80003348:	8cc80813          	addi	a6,a6,-1844 # 80005c10 <uart_tx_buf>
    8000334c:	01c0006f          	j	80003368 <uartintr+0x88>
    80003350:	0006c703          	lbu	a4,0(a3)
    80003354:	00f63023          	sd	a5,0(a2)
    80003358:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000335c:	00063783          	ld	a5,0(a2)
    80003360:	00053703          	ld	a4,0(a0)
    80003364:	00f70e63          	beq	a4,a5,80003380 <uartintr+0xa0>
    80003368:	01f7f713          	andi	a4,a5,31
    8000336c:	00e806b3          	add	a3,a6,a4
    80003370:	0055c703          	lbu	a4,5(a1)
    80003374:	00178793          	addi	a5,a5,1
    80003378:	02077713          	andi	a4,a4,32
    8000337c:	fc071ae3          	bnez	a4,80003350 <uartintr+0x70>
    80003380:	01813083          	ld	ra,24(sp)
    80003384:	01013403          	ld	s0,16(sp)
    80003388:	00813483          	ld	s1,8(sp)
    8000338c:	02010113          	addi	sp,sp,32
    80003390:	00008067          	ret
    80003394:	00001617          	auipc	a2,0x1
    80003398:	60460613          	addi	a2,a2,1540 # 80004998 <uart_tx_r>
    8000339c:	00001517          	auipc	a0,0x1
    800033a0:	60450513          	addi	a0,a0,1540 # 800049a0 <uart_tx_w>
    800033a4:	00063783          	ld	a5,0(a2)
    800033a8:	00053703          	ld	a4,0(a0)
    800033ac:	04f70263          	beq	a4,a5,800033f0 <uartintr+0x110>
    800033b0:	100005b7          	lui	a1,0x10000
    800033b4:	00003817          	auipc	a6,0x3
    800033b8:	85c80813          	addi	a6,a6,-1956 # 80005c10 <uart_tx_buf>
    800033bc:	01c0006f          	j	800033d8 <uartintr+0xf8>
    800033c0:	0006c703          	lbu	a4,0(a3)
    800033c4:	00f63023          	sd	a5,0(a2)
    800033c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800033cc:	00063783          	ld	a5,0(a2)
    800033d0:	00053703          	ld	a4,0(a0)
    800033d4:	02f70063          	beq	a4,a5,800033f4 <uartintr+0x114>
    800033d8:	01f7f713          	andi	a4,a5,31
    800033dc:	00e806b3          	add	a3,a6,a4
    800033e0:	0055c703          	lbu	a4,5(a1)
    800033e4:	00178793          	addi	a5,a5,1
    800033e8:	02077713          	andi	a4,a4,32
    800033ec:	fc071ae3          	bnez	a4,800033c0 <uartintr+0xe0>
    800033f0:	00008067          	ret
    800033f4:	00008067          	ret

00000000800033f8 <kinit>:
    800033f8:	fc010113          	addi	sp,sp,-64
    800033fc:	02913423          	sd	s1,40(sp)
    80003400:	fffff7b7          	lui	a5,0xfffff
    80003404:	00004497          	auipc	s1,0x4
    80003408:	82b48493          	addi	s1,s1,-2005 # 80006c2f <end+0xfff>
    8000340c:	02813823          	sd	s0,48(sp)
    80003410:	01313c23          	sd	s3,24(sp)
    80003414:	00f4f4b3          	and	s1,s1,a5
    80003418:	02113c23          	sd	ra,56(sp)
    8000341c:	03213023          	sd	s2,32(sp)
    80003420:	01413823          	sd	s4,16(sp)
    80003424:	01513423          	sd	s5,8(sp)
    80003428:	04010413          	addi	s0,sp,64
    8000342c:	000017b7          	lui	a5,0x1
    80003430:	01100993          	li	s3,17
    80003434:	00f487b3          	add	a5,s1,a5
    80003438:	01b99993          	slli	s3,s3,0x1b
    8000343c:	06f9e063          	bltu	s3,a5,8000349c <kinit+0xa4>
    80003440:	00002a97          	auipc	s5,0x2
    80003444:	7f0a8a93          	addi	s5,s5,2032 # 80005c30 <end>
    80003448:	0754ec63          	bltu	s1,s5,800034c0 <kinit+0xc8>
    8000344c:	0734fa63          	bgeu	s1,s3,800034c0 <kinit+0xc8>
    80003450:	00088a37          	lui	s4,0x88
    80003454:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003458:	00001917          	auipc	s2,0x1
    8000345c:	55090913          	addi	s2,s2,1360 # 800049a8 <kmem>
    80003460:	00ca1a13          	slli	s4,s4,0xc
    80003464:	0140006f          	j	80003478 <kinit+0x80>
    80003468:	000017b7          	lui	a5,0x1
    8000346c:	00f484b3          	add	s1,s1,a5
    80003470:	0554e863          	bltu	s1,s5,800034c0 <kinit+0xc8>
    80003474:	0534f663          	bgeu	s1,s3,800034c0 <kinit+0xc8>
    80003478:	00001637          	lui	a2,0x1
    8000347c:	00100593          	li	a1,1
    80003480:	00048513          	mv	a0,s1
    80003484:	00000097          	auipc	ra,0x0
    80003488:	5e4080e7          	jalr	1508(ra) # 80003a68 <__memset>
    8000348c:	00093783          	ld	a5,0(s2)
    80003490:	00f4b023          	sd	a5,0(s1)
    80003494:	00993023          	sd	s1,0(s2)
    80003498:	fd4498e3          	bne	s1,s4,80003468 <kinit+0x70>
    8000349c:	03813083          	ld	ra,56(sp)
    800034a0:	03013403          	ld	s0,48(sp)
    800034a4:	02813483          	ld	s1,40(sp)
    800034a8:	02013903          	ld	s2,32(sp)
    800034ac:	01813983          	ld	s3,24(sp)
    800034b0:	01013a03          	ld	s4,16(sp)
    800034b4:	00813a83          	ld	s5,8(sp)
    800034b8:	04010113          	addi	sp,sp,64
    800034bc:	00008067          	ret
    800034c0:	00001517          	auipc	a0,0x1
    800034c4:	d1050513          	addi	a0,a0,-752 # 800041d0 <digits+0x18>
    800034c8:	fffff097          	auipc	ra,0xfffff
    800034cc:	4b4080e7          	jalr	1204(ra) # 8000297c <panic>

00000000800034d0 <freerange>:
    800034d0:	fc010113          	addi	sp,sp,-64
    800034d4:	000017b7          	lui	a5,0x1
    800034d8:	02913423          	sd	s1,40(sp)
    800034dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800034e0:	009504b3          	add	s1,a0,s1
    800034e4:	fffff537          	lui	a0,0xfffff
    800034e8:	02813823          	sd	s0,48(sp)
    800034ec:	02113c23          	sd	ra,56(sp)
    800034f0:	03213023          	sd	s2,32(sp)
    800034f4:	01313c23          	sd	s3,24(sp)
    800034f8:	01413823          	sd	s4,16(sp)
    800034fc:	01513423          	sd	s5,8(sp)
    80003500:	01613023          	sd	s6,0(sp)
    80003504:	04010413          	addi	s0,sp,64
    80003508:	00a4f4b3          	and	s1,s1,a0
    8000350c:	00f487b3          	add	a5,s1,a5
    80003510:	06f5e463          	bltu	a1,a5,80003578 <freerange+0xa8>
    80003514:	00002a97          	auipc	s5,0x2
    80003518:	71ca8a93          	addi	s5,s5,1820 # 80005c30 <end>
    8000351c:	0954e263          	bltu	s1,s5,800035a0 <freerange+0xd0>
    80003520:	01100993          	li	s3,17
    80003524:	01b99993          	slli	s3,s3,0x1b
    80003528:	0734fc63          	bgeu	s1,s3,800035a0 <freerange+0xd0>
    8000352c:	00058a13          	mv	s4,a1
    80003530:	00001917          	auipc	s2,0x1
    80003534:	47890913          	addi	s2,s2,1144 # 800049a8 <kmem>
    80003538:	00002b37          	lui	s6,0x2
    8000353c:	0140006f          	j	80003550 <freerange+0x80>
    80003540:	000017b7          	lui	a5,0x1
    80003544:	00f484b3          	add	s1,s1,a5
    80003548:	0554ec63          	bltu	s1,s5,800035a0 <freerange+0xd0>
    8000354c:	0534fa63          	bgeu	s1,s3,800035a0 <freerange+0xd0>
    80003550:	00001637          	lui	a2,0x1
    80003554:	00100593          	li	a1,1
    80003558:	00048513          	mv	a0,s1
    8000355c:	00000097          	auipc	ra,0x0
    80003560:	50c080e7          	jalr	1292(ra) # 80003a68 <__memset>
    80003564:	00093703          	ld	a4,0(s2)
    80003568:	016487b3          	add	a5,s1,s6
    8000356c:	00e4b023          	sd	a4,0(s1)
    80003570:	00993023          	sd	s1,0(s2)
    80003574:	fcfa76e3          	bgeu	s4,a5,80003540 <freerange+0x70>
    80003578:	03813083          	ld	ra,56(sp)
    8000357c:	03013403          	ld	s0,48(sp)
    80003580:	02813483          	ld	s1,40(sp)
    80003584:	02013903          	ld	s2,32(sp)
    80003588:	01813983          	ld	s3,24(sp)
    8000358c:	01013a03          	ld	s4,16(sp)
    80003590:	00813a83          	ld	s5,8(sp)
    80003594:	00013b03          	ld	s6,0(sp)
    80003598:	04010113          	addi	sp,sp,64
    8000359c:	00008067          	ret
    800035a0:	00001517          	auipc	a0,0x1
    800035a4:	c3050513          	addi	a0,a0,-976 # 800041d0 <digits+0x18>
    800035a8:	fffff097          	auipc	ra,0xfffff
    800035ac:	3d4080e7          	jalr	980(ra) # 8000297c <panic>

00000000800035b0 <kfree>:
    800035b0:	fe010113          	addi	sp,sp,-32
    800035b4:	00813823          	sd	s0,16(sp)
    800035b8:	00113c23          	sd	ra,24(sp)
    800035bc:	00913423          	sd	s1,8(sp)
    800035c0:	02010413          	addi	s0,sp,32
    800035c4:	03451793          	slli	a5,a0,0x34
    800035c8:	04079c63          	bnez	a5,80003620 <kfree+0x70>
    800035cc:	00002797          	auipc	a5,0x2
    800035d0:	66478793          	addi	a5,a5,1636 # 80005c30 <end>
    800035d4:	00050493          	mv	s1,a0
    800035d8:	04f56463          	bltu	a0,a5,80003620 <kfree+0x70>
    800035dc:	01100793          	li	a5,17
    800035e0:	01b79793          	slli	a5,a5,0x1b
    800035e4:	02f57e63          	bgeu	a0,a5,80003620 <kfree+0x70>
    800035e8:	00001637          	lui	a2,0x1
    800035ec:	00100593          	li	a1,1
    800035f0:	00000097          	auipc	ra,0x0
    800035f4:	478080e7          	jalr	1144(ra) # 80003a68 <__memset>
    800035f8:	00001797          	auipc	a5,0x1
    800035fc:	3b078793          	addi	a5,a5,944 # 800049a8 <kmem>
    80003600:	0007b703          	ld	a4,0(a5)
    80003604:	01813083          	ld	ra,24(sp)
    80003608:	01013403          	ld	s0,16(sp)
    8000360c:	00e4b023          	sd	a4,0(s1)
    80003610:	0097b023          	sd	s1,0(a5)
    80003614:	00813483          	ld	s1,8(sp)
    80003618:	02010113          	addi	sp,sp,32
    8000361c:	00008067          	ret
    80003620:	00001517          	auipc	a0,0x1
    80003624:	bb050513          	addi	a0,a0,-1104 # 800041d0 <digits+0x18>
    80003628:	fffff097          	auipc	ra,0xfffff
    8000362c:	354080e7          	jalr	852(ra) # 8000297c <panic>

0000000080003630 <kalloc>:
    80003630:	fe010113          	addi	sp,sp,-32
    80003634:	00813823          	sd	s0,16(sp)
    80003638:	00913423          	sd	s1,8(sp)
    8000363c:	00113c23          	sd	ra,24(sp)
    80003640:	02010413          	addi	s0,sp,32
    80003644:	00001797          	auipc	a5,0x1
    80003648:	36478793          	addi	a5,a5,868 # 800049a8 <kmem>
    8000364c:	0007b483          	ld	s1,0(a5)
    80003650:	02048063          	beqz	s1,80003670 <kalloc+0x40>
    80003654:	0004b703          	ld	a4,0(s1)
    80003658:	00001637          	lui	a2,0x1
    8000365c:	00500593          	li	a1,5
    80003660:	00048513          	mv	a0,s1
    80003664:	00e7b023          	sd	a4,0(a5)
    80003668:	00000097          	auipc	ra,0x0
    8000366c:	400080e7          	jalr	1024(ra) # 80003a68 <__memset>
    80003670:	01813083          	ld	ra,24(sp)
    80003674:	01013403          	ld	s0,16(sp)
    80003678:	00048513          	mv	a0,s1
    8000367c:	00813483          	ld	s1,8(sp)
    80003680:	02010113          	addi	sp,sp,32
    80003684:	00008067          	ret

0000000080003688 <initlock>:
    80003688:	ff010113          	addi	sp,sp,-16
    8000368c:	00813423          	sd	s0,8(sp)
    80003690:	01010413          	addi	s0,sp,16
    80003694:	00813403          	ld	s0,8(sp)
    80003698:	00b53423          	sd	a1,8(a0)
    8000369c:	00052023          	sw	zero,0(a0)
    800036a0:	00053823          	sd	zero,16(a0)
    800036a4:	01010113          	addi	sp,sp,16
    800036a8:	00008067          	ret

00000000800036ac <acquire>:
    800036ac:	fe010113          	addi	sp,sp,-32
    800036b0:	00813823          	sd	s0,16(sp)
    800036b4:	00913423          	sd	s1,8(sp)
    800036b8:	00113c23          	sd	ra,24(sp)
    800036bc:	01213023          	sd	s2,0(sp)
    800036c0:	02010413          	addi	s0,sp,32
    800036c4:	00050493          	mv	s1,a0
    800036c8:	10002973          	csrr	s2,sstatus
    800036cc:	100027f3          	csrr	a5,sstatus
    800036d0:	ffd7f793          	andi	a5,a5,-3
    800036d4:	10079073          	csrw	sstatus,a5
    800036d8:	fffff097          	auipc	ra,0xfffff
    800036dc:	8e0080e7          	jalr	-1824(ra) # 80001fb8 <mycpu>
    800036e0:	07852783          	lw	a5,120(a0)
    800036e4:	06078e63          	beqz	a5,80003760 <acquire+0xb4>
    800036e8:	fffff097          	auipc	ra,0xfffff
    800036ec:	8d0080e7          	jalr	-1840(ra) # 80001fb8 <mycpu>
    800036f0:	07852783          	lw	a5,120(a0)
    800036f4:	0004a703          	lw	a4,0(s1)
    800036f8:	0017879b          	addiw	a5,a5,1
    800036fc:	06f52c23          	sw	a5,120(a0)
    80003700:	04071063          	bnez	a4,80003740 <acquire+0x94>
    80003704:	00100713          	li	a4,1
    80003708:	00070793          	mv	a5,a4
    8000370c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003710:	0007879b          	sext.w	a5,a5
    80003714:	fe079ae3          	bnez	a5,80003708 <acquire+0x5c>
    80003718:	0ff0000f          	fence
    8000371c:	fffff097          	auipc	ra,0xfffff
    80003720:	89c080e7          	jalr	-1892(ra) # 80001fb8 <mycpu>
    80003724:	01813083          	ld	ra,24(sp)
    80003728:	01013403          	ld	s0,16(sp)
    8000372c:	00a4b823          	sd	a0,16(s1)
    80003730:	00013903          	ld	s2,0(sp)
    80003734:	00813483          	ld	s1,8(sp)
    80003738:	02010113          	addi	sp,sp,32
    8000373c:	00008067          	ret
    80003740:	0104b903          	ld	s2,16(s1)
    80003744:	fffff097          	auipc	ra,0xfffff
    80003748:	874080e7          	jalr	-1932(ra) # 80001fb8 <mycpu>
    8000374c:	faa91ce3          	bne	s2,a0,80003704 <acquire+0x58>
    80003750:	00001517          	auipc	a0,0x1
    80003754:	a8850513          	addi	a0,a0,-1400 # 800041d8 <digits+0x20>
    80003758:	fffff097          	auipc	ra,0xfffff
    8000375c:	224080e7          	jalr	548(ra) # 8000297c <panic>
    80003760:	00195913          	srli	s2,s2,0x1
    80003764:	fffff097          	auipc	ra,0xfffff
    80003768:	854080e7          	jalr	-1964(ra) # 80001fb8 <mycpu>
    8000376c:	00197913          	andi	s2,s2,1
    80003770:	07252e23          	sw	s2,124(a0)
    80003774:	f75ff06f          	j	800036e8 <acquire+0x3c>

0000000080003778 <release>:
    80003778:	fe010113          	addi	sp,sp,-32
    8000377c:	00813823          	sd	s0,16(sp)
    80003780:	00113c23          	sd	ra,24(sp)
    80003784:	00913423          	sd	s1,8(sp)
    80003788:	01213023          	sd	s2,0(sp)
    8000378c:	02010413          	addi	s0,sp,32
    80003790:	00052783          	lw	a5,0(a0)
    80003794:	00079a63          	bnez	a5,800037a8 <release+0x30>
    80003798:	00001517          	auipc	a0,0x1
    8000379c:	a4850513          	addi	a0,a0,-1464 # 800041e0 <digits+0x28>
    800037a0:	fffff097          	auipc	ra,0xfffff
    800037a4:	1dc080e7          	jalr	476(ra) # 8000297c <panic>
    800037a8:	01053903          	ld	s2,16(a0)
    800037ac:	00050493          	mv	s1,a0
    800037b0:	fffff097          	auipc	ra,0xfffff
    800037b4:	808080e7          	jalr	-2040(ra) # 80001fb8 <mycpu>
    800037b8:	fea910e3          	bne	s2,a0,80003798 <release+0x20>
    800037bc:	0004b823          	sd	zero,16(s1)
    800037c0:	0ff0000f          	fence
    800037c4:	0f50000f          	fence	iorw,ow
    800037c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800037cc:	ffffe097          	auipc	ra,0xffffe
    800037d0:	7ec080e7          	jalr	2028(ra) # 80001fb8 <mycpu>
    800037d4:	100027f3          	csrr	a5,sstatus
    800037d8:	0027f793          	andi	a5,a5,2
    800037dc:	04079a63          	bnez	a5,80003830 <release+0xb8>
    800037e0:	07852783          	lw	a5,120(a0)
    800037e4:	02f05e63          	blez	a5,80003820 <release+0xa8>
    800037e8:	fff7871b          	addiw	a4,a5,-1
    800037ec:	06e52c23          	sw	a4,120(a0)
    800037f0:	00071c63          	bnez	a4,80003808 <release+0x90>
    800037f4:	07c52783          	lw	a5,124(a0)
    800037f8:	00078863          	beqz	a5,80003808 <release+0x90>
    800037fc:	100027f3          	csrr	a5,sstatus
    80003800:	0027e793          	ori	a5,a5,2
    80003804:	10079073          	csrw	sstatus,a5
    80003808:	01813083          	ld	ra,24(sp)
    8000380c:	01013403          	ld	s0,16(sp)
    80003810:	00813483          	ld	s1,8(sp)
    80003814:	00013903          	ld	s2,0(sp)
    80003818:	02010113          	addi	sp,sp,32
    8000381c:	00008067          	ret
    80003820:	00001517          	auipc	a0,0x1
    80003824:	9e050513          	addi	a0,a0,-1568 # 80004200 <digits+0x48>
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	154080e7          	jalr	340(ra) # 8000297c <panic>
    80003830:	00001517          	auipc	a0,0x1
    80003834:	9b850513          	addi	a0,a0,-1608 # 800041e8 <digits+0x30>
    80003838:	fffff097          	auipc	ra,0xfffff
    8000383c:	144080e7          	jalr	324(ra) # 8000297c <panic>

0000000080003840 <holding>:
    80003840:	00052783          	lw	a5,0(a0)
    80003844:	00079663          	bnez	a5,80003850 <holding+0x10>
    80003848:	00000513          	li	a0,0
    8000384c:	00008067          	ret
    80003850:	fe010113          	addi	sp,sp,-32
    80003854:	00813823          	sd	s0,16(sp)
    80003858:	00913423          	sd	s1,8(sp)
    8000385c:	00113c23          	sd	ra,24(sp)
    80003860:	02010413          	addi	s0,sp,32
    80003864:	01053483          	ld	s1,16(a0)
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	750080e7          	jalr	1872(ra) # 80001fb8 <mycpu>
    80003870:	01813083          	ld	ra,24(sp)
    80003874:	01013403          	ld	s0,16(sp)
    80003878:	40a48533          	sub	a0,s1,a0
    8000387c:	00153513          	seqz	a0,a0
    80003880:	00813483          	ld	s1,8(sp)
    80003884:	02010113          	addi	sp,sp,32
    80003888:	00008067          	ret

000000008000388c <push_off>:
    8000388c:	fe010113          	addi	sp,sp,-32
    80003890:	00813823          	sd	s0,16(sp)
    80003894:	00113c23          	sd	ra,24(sp)
    80003898:	00913423          	sd	s1,8(sp)
    8000389c:	02010413          	addi	s0,sp,32
    800038a0:	100024f3          	csrr	s1,sstatus
    800038a4:	100027f3          	csrr	a5,sstatus
    800038a8:	ffd7f793          	andi	a5,a5,-3
    800038ac:	10079073          	csrw	sstatus,a5
    800038b0:	ffffe097          	auipc	ra,0xffffe
    800038b4:	708080e7          	jalr	1800(ra) # 80001fb8 <mycpu>
    800038b8:	07852783          	lw	a5,120(a0)
    800038bc:	02078663          	beqz	a5,800038e8 <push_off+0x5c>
    800038c0:	ffffe097          	auipc	ra,0xffffe
    800038c4:	6f8080e7          	jalr	1784(ra) # 80001fb8 <mycpu>
    800038c8:	07852783          	lw	a5,120(a0)
    800038cc:	01813083          	ld	ra,24(sp)
    800038d0:	01013403          	ld	s0,16(sp)
    800038d4:	0017879b          	addiw	a5,a5,1
    800038d8:	06f52c23          	sw	a5,120(a0)
    800038dc:	00813483          	ld	s1,8(sp)
    800038e0:	02010113          	addi	sp,sp,32
    800038e4:	00008067          	ret
    800038e8:	0014d493          	srli	s1,s1,0x1
    800038ec:	ffffe097          	auipc	ra,0xffffe
    800038f0:	6cc080e7          	jalr	1740(ra) # 80001fb8 <mycpu>
    800038f4:	0014f493          	andi	s1,s1,1
    800038f8:	06952e23          	sw	s1,124(a0)
    800038fc:	fc5ff06f          	j	800038c0 <push_off+0x34>

0000000080003900 <pop_off>:
    80003900:	ff010113          	addi	sp,sp,-16
    80003904:	00813023          	sd	s0,0(sp)
    80003908:	00113423          	sd	ra,8(sp)
    8000390c:	01010413          	addi	s0,sp,16
    80003910:	ffffe097          	auipc	ra,0xffffe
    80003914:	6a8080e7          	jalr	1704(ra) # 80001fb8 <mycpu>
    80003918:	100027f3          	csrr	a5,sstatus
    8000391c:	0027f793          	andi	a5,a5,2
    80003920:	04079663          	bnez	a5,8000396c <pop_off+0x6c>
    80003924:	07852783          	lw	a5,120(a0)
    80003928:	02f05a63          	blez	a5,8000395c <pop_off+0x5c>
    8000392c:	fff7871b          	addiw	a4,a5,-1
    80003930:	06e52c23          	sw	a4,120(a0)
    80003934:	00071c63          	bnez	a4,8000394c <pop_off+0x4c>
    80003938:	07c52783          	lw	a5,124(a0)
    8000393c:	00078863          	beqz	a5,8000394c <pop_off+0x4c>
    80003940:	100027f3          	csrr	a5,sstatus
    80003944:	0027e793          	ori	a5,a5,2
    80003948:	10079073          	csrw	sstatus,a5
    8000394c:	00813083          	ld	ra,8(sp)
    80003950:	00013403          	ld	s0,0(sp)
    80003954:	01010113          	addi	sp,sp,16
    80003958:	00008067          	ret
    8000395c:	00001517          	auipc	a0,0x1
    80003960:	8a450513          	addi	a0,a0,-1884 # 80004200 <digits+0x48>
    80003964:	fffff097          	auipc	ra,0xfffff
    80003968:	018080e7          	jalr	24(ra) # 8000297c <panic>
    8000396c:	00001517          	auipc	a0,0x1
    80003970:	87c50513          	addi	a0,a0,-1924 # 800041e8 <digits+0x30>
    80003974:	fffff097          	auipc	ra,0xfffff
    80003978:	008080e7          	jalr	8(ra) # 8000297c <panic>

000000008000397c <push_on>:
    8000397c:	fe010113          	addi	sp,sp,-32
    80003980:	00813823          	sd	s0,16(sp)
    80003984:	00113c23          	sd	ra,24(sp)
    80003988:	00913423          	sd	s1,8(sp)
    8000398c:	02010413          	addi	s0,sp,32
    80003990:	100024f3          	csrr	s1,sstatus
    80003994:	100027f3          	csrr	a5,sstatus
    80003998:	0027e793          	ori	a5,a5,2
    8000399c:	10079073          	csrw	sstatus,a5
    800039a0:	ffffe097          	auipc	ra,0xffffe
    800039a4:	618080e7          	jalr	1560(ra) # 80001fb8 <mycpu>
    800039a8:	07852783          	lw	a5,120(a0)
    800039ac:	02078663          	beqz	a5,800039d8 <push_on+0x5c>
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	608080e7          	jalr	1544(ra) # 80001fb8 <mycpu>
    800039b8:	07852783          	lw	a5,120(a0)
    800039bc:	01813083          	ld	ra,24(sp)
    800039c0:	01013403          	ld	s0,16(sp)
    800039c4:	0017879b          	addiw	a5,a5,1
    800039c8:	06f52c23          	sw	a5,120(a0)
    800039cc:	00813483          	ld	s1,8(sp)
    800039d0:	02010113          	addi	sp,sp,32
    800039d4:	00008067          	ret
    800039d8:	0014d493          	srli	s1,s1,0x1
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	5dc080e7          	jalr	1500(ra) # 80001fb8 <mycpu>
    800039e4:	0014f493          	andi	s1,s1,1
    800039e8:	06952e23          	sw	s1,124(a0)
    800039ec:	fc5ff06f          	j	800039b0 <push_on+0x34>

00000000800039f0 <pop_on>:
    800039f0:	ff010113          	addi	sp,sp,-16
    800039f4:	00813023          	sd	s0,0(sp)
    800039f8:	00113423          	sd	ra,8(sp)
    800039fc:	01010413          	addi	s0,sp,16
    80003a00:	ffffe097          	auipc	ra,0xffffe
    80003a04:	5b8080e7          	jalr	1464(ra) # 80001fb8 <mycpu>
    80003a08:	100027f3          	csrr	a5,sstatus
    80003a0c:	0027f793          	andi	a5,a5,2
    80003a10:	04078463          	beqz	a5,80003a58 <pop_on+0x68>
    80003a14:	07852783          	lw	a5,120(a0)
    80003a18:	02f05863          	blez	a5,80003a48 <pop_on+0x58>
    80003a1c:	fff7879b          	addiw	a5,a5,-1
    80003a20:	06f52c23          	sw	a5,120(a0)
    80003a24:	07853783          	ld	a5,120(a0)
    80003a28:	00079863          	bnez	a5,80003a38 <pop_on+0x48>
    80003a2c:	100027f3          	csrr	a5,sstatus
    80003a30:	ffd7f793          	andi	a5,a5,-3
    80003a34:	10079073          	csrw	sstatus,a5
    80003a38:	00813083          	ld	ra,8(sp)
    80003a3c:	00013403          	ld	s0,0(sp)
    80003a40:	01010113          	addi	sp,sp,16
    80003a44:	00008067          	ret
    80003a48:	00000517          	auipc	a0,0x0
    80003a4c:	7e050513          	addi	a0,a0,2016 # 80004228 <digits+0x70>
    80003a50:	fffff097          	auipc	ra,0xfffff
    80003a54:	f2c080e7          	jalr	-212(ra) # 8000297c <panic>
    80003a58:	00000517          	auipc	a0,0x0
    80003a5c:	7b050513          	addi	a0,a0,1968 # 80004208 <digits+0x50>
    80003a60:	fffff097          	auipc	ra,0xfffff
    80003a64:	f1c080e7          	jalr	-228(ra) # 8000297c <panic>

0000000080003a68 <__memset>:
    80003a68:	ff010113          	addi	sp,sp,-16
    80003a6c:	00813423          	sd	s0,8(sp)
    80003a70:	01010413          	addi	s0,sp,16
    80003a74:	1a060e63          	beqz	a2,80003c30 <__memset+0x1c8>
    80003a78:	40a007b3          	neg	a5,a0
    80003a7c:	0077f793          	andi	a5,a5,7
    80003a80:	00778693          	addi	a3,a5,7
    80003a84:	00b00813          	li	a6,11
    80003a88:	0ff5f593          	andi	a1,a1,255
    80003a8c:	fff6071b          	addiw	a4,a2,-1
    80003a90:	1b06e663          	bltu	a3,a6,80003c3c <__memset+0x1d4>
    80003a94:	1cd76463          	bltu	a4,a3,80003c5c <__memset+0x1f4>
    80003a98:	1a078e63          	beqz	a5,80003c54 <__memset+0x1ec>
    80003a9c:	00b50023          	sb	a1,0(a0)
    80003aa0:	00100713          	li	a4,1
    80003aa4:	1ae78463          	beq	a5,a4,80003c4c <__memset+0x1e4>
    80003aa8:	00b500a3          	sb	a1,1(a0)
    80003aac:	00200713          	li	a4,2
    80003ab0:	1ae78a63          	beq	a5,a4,80003c64 <__memset+0x1fc>
    80003ab4:	00b50123          	sb	a1,2(a0)
    80003ab8:	00300713          	li	a4,3
    80003abc:	18e78463          	beq	a5,a4,80003c44 <__memset+0x1dc>
    80003ac0:	00b501a3          	sb	a1,3(a0)
    80003ac4:	00400713          	li	a4,4
    80003ac8:	1ae78263          	beq	a5,a4,80003c6c <__memset+0x204>
    80003acc:	00b50223          	sb	a1,4(a0)
    80003ad0:	00500713          	li	a4,5
    80003ad4:	1ae78063          	beq	a5,a4,80003c74 <__memset+0x20c>
    80003ad8:	00b502a3          	sb	a1,5(a0)
    80003adc:	00700713          	li	a4,7
    80003ae0:	18e79e63          	bne	a5,a4,80003c7c <__memset+0x214>
    80003ae4:	00b50323          	sb	a1,6(a0)
    80003ae8:	00700e93          	li	t4,7
    80003aec:	00859713          	slli	a4,a1,0x8
    80003af0:	00e5e733          	or	a4,a1,a4
    80003af4:	01059e13          	slli	t3,a1,0x10
    80003af8:	01c76e33          	or	t3,a4,t3
    80003afc:	01859313          	slli	t1,a1,0x18
    80003b00:	006e6333          	or	t1,t3,t1
    80003b04:	02059893          	slli	a7,a1,0x20
    80003b08:	40f60e3b          	subw	t3,a2,a5
    80003b0c:	011368b3          	or	a7,t1,a7
    80003b10:	02859813          	slli	a6,a1,0x28
    80003b14:	0108e833          	or	a6,a7,a6
    80003b18:	03059693          	slli	a3,a1,0x30
    80003b1c:	003e589b          	srliw	a7,t3,0x3
    80003b20:	00d866b3          	or	a3,a6,a3
    80003b24:	03859713          	slli	a4,a1,0x38
    80003b28:	00389813          	slli	a6,a7,0x3
    80003b2c:	00f507b3          	add	a5,a0,a5
    80003b30:	00e6e733          	or	a4,a3,a4
    80003b34:	000e089b          	sext.w	a7,t3
    80003b38:	00f806b3          	add	a3,a6,a5
    80003b3c:	00e7b023          	sd	a4,0(a5)
    80003b40:	00878793          	addi	a5,a5,8
    80003b44:	fed79ce3          	bne	a5,a3,80003b3c <__memset+0xd4>
    80003b48:	ff8e7793          	andi	a5,t3,-8
    80003b4c:	0007871b          	sext.w	a4,a5
    80003b50:	01d787bb          	addw	a5,a5,t4
    80003b54:	0ce88e63          	beq	a7,a4,80003c30 <__memset+0x1c8>
    80003b58:	00f50733          	add	a4,a0,a5
    80003b5c:	00b70023          	sb	a1,0(a4)
    80003b60:	0017871b          	addiw	a4,a5,1
    80003b64:	0cc77663          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003b68:	00e50733          	add	a4,a0,a4
    80003b6c:	00b70023          	sb	a1,0(a4)
    80003b70:	0027871b          	addiw	a4,a5,2
    80003b74:	0ac77e63          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003b78:	00e50733          	add	a4,a0,a4
    80003b7c:	00b70023          	sb	a1,0(a4)
    80003b80:	0037871b          	addiw	a4,a5,3
    80003b84:	0ac77663          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003b88:	00e50733          	add	a4,a0,a4
    80003b8c:	00b70023          	sb	a1,0(a4)
    80003b90:	0047871b          	addiw	a4,a5,4
    80003b94:	08c77e63          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003b98:	00e50733          	add	a4,a0,a4
    80003b9c:	00b70023          	sb	a1,0(a4)
    80003ba0:	0057871b          	addiw	a4,a5,5
    80003ba4:	08c77663          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003ba8:	00e50733          	add	a4,a0,a4
    80003bac:	00b70023          	sb	a1,0(a4)
    80003bb0:	0067871b          	addiw	a4,a5,6
    80003bb4:	06c77e63          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003bb8:	00e50733          	add	a4,a0,a4
    80003bbc:	00b70023          	sb	a1,0(a4)
    80003bc0:	0077871b          	addiw	a4,a5,7
    80003bc4:	06c77663          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003bc8:	00e50733          	add	a4,a0,a4
    80003bcc:	00b70023          	sb	a1,0(a4)
    80003bd0:	0087871b          	addiw	a4,a5,8
    80003bd4:	04c77e63          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003bd8:	00e50733          	add	a4,a0,a4
    80003bdc:	00b70023          	sb	a1,0(a4)
    80003be0:	0097871b          	addiw	a4,a5,9
    80003be4:	04c77663          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003be8:	00e50733          	add	a4,a0,a4
    80003bec:	00b70023          	sb	a1,0(a4)
    80003bf0:	00a7871b          	addiw	a4,a5,10
    80003bf4:	02c77e63          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003bf8:	00e50733          	add	a4,a0,a4
    80003bfc:	00b70023          	sb	a1,0(a4)
    80003c00:	00b7871b          	addiw	a4,a5,11
    80003c04:	02c77663          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003c08:	00e50733          	add	a4,a0,a4
    80003c0c:	00b70023          	sb	a1,0(a4)
    80003c10:	00c7871b          	addiw	a4,a5,12
    80003c14:	00c77e63          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003c18:	00e50733          	add	a4,a0,a4
    80003c1c:	00b70023          	sb	a1,0(a4)
    80003c20:	00d7879b          	addiw	a5,a5,13
    80003c24:	00c7f663          	bgeu	a5,a2,80003c30 <__memset+0x1c8>
    80003c28:	00f507b3          	add	a5,a0,a5
    80003c2c:	00b78023          	sb	a1,0(a5)
    80003c30:	00813403          	ld	s0,8(sp)
    80003c34:	01010113          	addi	sp,sp,16
    80003c38:	00008067          	ret
    80003c3c:	00b00693          	li	a3,11
    80003c40:	e55ff06f          	j	80003a94 <__memset+0x2c>
    80003c44:	00300e93          	li	t4,3
    80003c48:	ea5ff06f          	j	80003aec <__memset+0x84>
    80003c4c:	00100e93          	li	t4,1
    80003c50:	e9dff06f          	j	80003aec <__memset+0x84>
    80003c54:	00000e93          	li	t4,0
    80003c58:	e95ff06f          	j	80003aec <__memset+0x84>
    80003c5c:	00000793          	li	a5,0
    80003c60:	ef9ff06f          	j	80003b58 <__memset+0xf0>
    80003c64:	00200e93          	li	t4,2
    80003c68:	e85ff06f          	j	80003aec <__memset+0x84>
    80003c6c:	00400e93          	li	t4,4
    80003c70:	e7dff06f          	j	80003aec <__memset+0x84>
    80003c74:	00500e93          	li	t4,5
    80003c78:	e75ff06f          	j	80003aec <__memset+0x84>
    80003c7c:	00600e93          	li	t4,6
    80003c80:	e6dff06f          	j	80003aec <__memset+0x84>

0000000080003c84 <__memmove>:
    80003c84:	ff010113          	addi	sp,sp,-16
    80003c88:	00813423          	sd	s0,8(sp)
    80003c8c:	01010413          	addi	s0,sp,16
    80003c90:	0e060863          	beqz	a2,80003d80 <__memmove+0xfc>
    80003c94:	fff6069b          	addiw	a3,a2,-1
    80003c98:	0006881b          	sext.w	a6,a3
    80003c9c:	0ea5e863          	bltu	a1,a0,80003d8c <__memmove+0x108>
    80003ca0:	00758713          	addi	a4,a1,7
    80003ca4:	00a5e7b3          	or	a5,a1,a0
    80003ca8:	40a70733          	sub	a4,a4,a0
    80003cac:	0077f793          	andi	a5,a5,7
    80003cb0:	00f73713          	sltiu	a4,a4,15
    80003cb4:	00174713          	xori	a4,a4,1
    80003cb8:	0017b793          	seqz	a5,a5
    80003cbc:	00e7f7b3          	and	a5,a5,a4
    80003cc0:	10078863          	beqz	a5,80003dd0 <__memmove+0x14c>
    80003cc4:	00900793          	li	a5,9
    80003cc8:	1107f463          	bgeu	a5,a6,80003dd0 <__memmove+0x14c>
    80003ccc:	0036581b          	srliw	a6,a2,0x3
    80003cd0:	fff8081b          	addiw	a6,a6,-1
    80003cd4:	02081813          	slli	a6,a6,0x20
    80003cd8:	01d85893          	srli	a7,a6,0x1d
    80003cdc:	00858813          	addi	a6,a1,8
    80003ce0:	00058793          	mv	a5,a1
    80003ce4:	00050713          	mv	a4,a0
    80003ce8:	01088833          	add	a6,a7,a6
    80003cec:	0007b883          	ld	a7,0(a5)
    80003cf0:	00878793          	addi	a5,a5,8
    80003cf4:	00870713          	addi	a4,a4,8
    80003cf8:	ff173c23          	sd	a7,-8(a4)
    80003cfc:	ff0798e3          	bne	a5,a6,80003cec <__memmove+0x68>
    80003d00:	ff867713          	andi	a4,a2,-8
    80003d04:	02071793          	slli	a5,a4,0x20
    80003d08:	0207d793          	srli	a5,a5,0x20
    80003d0c:	00f585b3          	add	a1,a1,a5
    80003d10:	40e686bb          	subw	a3,a3,a4
    80003d14:	00f507b3          	add	a5,a0,a5
    80003d18:	06e60463          	beq	a2,a4,80003d80 <__memmove+0xfc>
    80003d1c:	0005c703          	lbu	a4,0(a1)
    80003d20:	00e78023          	sb	a4,0(a5)
    80003d24:	04068e63          	beqz	a3,80003d80 <__memmove+0xfc>
    80003d28:	0015c603          	lbu	a2,1(a1)
    80003d2c:	00100713          	li	a4,1
    80003d30:	00c780a3          	sb	a2,1(a5)
    80003d34:	04e68663          	beq	a3,a4,80003d80 <__memmove+0xfc>
    80003d38:	0025c603          	lbu	a2,2(a1)
    80003d3c:	00200713          	li	a4,2
    80003d40:	00c78123          	sb	a2,2(a5)
    80003d44:	02e68e63          	beq	a3,a4,80003d80 <__memmove+0xfc>
    80003d48:	0035c603          	lbu	a2,3(a1)
    80003d4c:	00300713          	li	a4,3
    80003d50:	00c781a3          	sb	a2,3(a5)
    80003d54:	02e68663          	beq	a3,a4,80003d80 <__memmove+0xfc>
    80003d58:	0045c603          	lbu	a2,4(a1)
    80003d5c:	00400713          	li	a4,4
    80003d60:	00c78223          	sb	a2,4(a5)
    80003d64:	00e68e63          	beq	a3,a4,80003d80 <__memmove+0xfc>
    80003d68:	0055c603          	lbu	a2,5(a1)
    80003d6c:	00500713          	li	a4,5
    80003d70:	00c782a3          	sb	a2,5(a5)
    80003d74:	00e68663          	beq	a3,a4,80003d80 <__memmove+0xfc>
    80003d78:	0065c703          	lbu	a4,6(a1)
    80003d7c:	00e78323          	sb	a4,6(a5)
    80003d80:	00813403          	ld	s0,8(sp)
    80003d84:	01010113          	addi	sp,sp,16
    80003d88:	00008067          	ret
    80003d8c:	02061713          	slli	a4,a2,0x20
    80003d90:	02075713          	srli	a4,a4,0x20
    80003d94:	00e587b3          	add	a5,a1,a4
    80003d98:	f0f574e3          	bgeu	a0,a5,80003ca0 <__memmove+0x1c>
    80003d9c:	02069613          	slli	a2,a3,0x20
    80003da0:	02065613          	srli	a2,a2,0x20
    80003da4:	fff64613          	not	a2,a2
    80003da8:	00e50733          	add	a4,a0,a4
    80003dac:	00c78633          	add	a2,a5,a2
    80003db0:	fff7c683          	lbu	a3,-1(a5)
    80003db4:	fff78793          	addi	a5,a5,-1
    80003db8:	fff70713          	addi	a4,a4,-1
    80003dbc:	00d70023          	sb	a3,0(a4)
    80003dc0:	fec798e3          	bne	a5,a2,80003db0 <__memmove+0x12c>
    80003dc4:	00813403          	ld	s0,8(sp)
    80003dc8:	01010113          	addi	sp,sp,16
    80003dcc:	00008067          	ret
    80003dd0:	02069713          	slli	a4,a3,0x20
    80003dd4:	02075713          	srli	a4,a4,0x20
    80003dd8:	00170713          	addi	a4,a4,1
    80003ddc:	00e50733          	add	a4,a0,a4
    80003de0:	00050793          	mv	a5,a0
    80003de4:	0005c683          	lbu	a3,0(a1)
    80003de8:	00178793          	addi	a5,a5,1
    80003dec:	00158593          	addi	a1,a1,1
    80003df0:	fed78fa3          	sb	a3,-1(a5)
    80003df4:	fee798e3          	bne	a5,a4,80003de4 <__memmove+0x160>
    80003df8:	f89ff06f          	j	80003d80 <__memmove+0xfc>

0000000080003dfc <__putc>:
    80003dfc:	fe010113          	addi	sp,sp,-32
    80003e00:	00813823          	sd	s0,16(sp)
    80003e04:	00113c23          	sd	ra,24(sp)
    80003e08:	02010413          	addi	s0,sp,32
    80003e0c:	00050793          	mv	a5,a0
    80003e10:	fef40593          	addi	a1,s0,-17
    80003e14:	00100613          	li	a2,1
    80003e18:	00000513          	li	a0,0
    80003e1c:	fef407a3          	sb	a5,-17(s0)
    80003e20:	fffff097          	auipc	ra,0xfffff
    80003e24:	b3c080e7          	jalr	-1220(ra) # 8000295c <console_write>
    80003e28:	01813083          	ld	ra,24(sp)
    80003e2c:	01013403          	ld	s0,16(sp)
    80003e30:	02010113          	addi	sp,sp,32
    80003e34:	00008067          	ret

0000000080003e38 <__getc>:
    80003e38:	fe010113          	addi	sp,sp,-32
    80003e3c:	00813823          	sd	s0,16(sp)
    80003e40:	00113c23          	sd	ra,24(sp)
    80003e44:	02010413          	addi	s0,sp,32
    80003e48:	fe840593          	addi	a1,s0,-24
    80003e4c:	00100613          	li	a2,1
    80003e50:	00000513          	li	a0,0
    80003e54:	fffff097          	auipc	ra,0xfffff
    80003e58:	ae8080e7          	jalr	-1304(ra) # 8000293c <console_read>
    80003e5c:	fe844503          	lbu	a0,-24(s0)
    80003e60:	01813083          	ld	ra,24(sp)
    80003e64:	01013403          	ld	s0,16(sp)
    80003e68:	02010113          	addi	sp,sp,32
    80003e6c:	00008067          	ret

0000000080003e70 <console_handler>:
    80003e70:	fe010113          	addi	sp,sp,-32
    80003e74:	00813823          	sd	s0,16(sp)
    80003e78:	00113c23          	sd	ra,24(sp)
    80003e7c:	00913423          	sd	s1,8(sp)
    80003e80:	02010413          	addi	s0,sp,32
    80003e84:	14202773          	csrr	a4,scause
    80003e88:	100027f3          	csrr	a5,sstatus
    80003e8c:	0027f793          	andi	a5,a5,2
    80003e90:	06079e63          	bnez	a5,80003f0c <console_handler+0x9c>
    80003e94:	00074c63          	bltz	a4,80003eac <console_handler+0x3c>
    80003e98:	01813083          	ld	ra,24(sp)
    80003e9c:	01013403          	ld	s0,16(sp)
    80003ea0:	00813483          	ld	s1,8(sp)
    80003ea4:	02010113          	addi	sp,sp,32
    80003ea8:	00008067          	ret
    80003eac:	0ff77713          	andi	a4,a4,255
    80003eb0:	00900793          	li	a5,9
    80003eb4:	fef712e3          	bne	a4,a5,80003e98 <console_handler+0x28>
    80003eb8:	ffffe097          	auipc	ra,0xffffe
    80003ebc:	6dc080e7          	jalr	1756(ra) # 80002594 <plic_claim>
    80003ec0:	00a00793          	li	a5,10
    80003ec4:	00050493          	mv	s1,a0
    80003ec8:	02f50c63          	beq	a0,a5,80003f00 <console_handler+0x90>
    80003ecc:	fc0506e3          	beqz	a0,80003e98 <console_handler+0x28>
    80003ed0:	00050593          	mv	a1,a0
    80003ed4:	00000517          	auipc	a0,0x0
    80003ed8:	25c50513          	addi	a0,a0,604 # 80004130 <bntOne+0xd8>
    80003edc:	fffff097          	auipc	ra,0xfffff
    80003ee0:	afc080e7          	jalr	-1284(ra) # 800029d8 <__printf>
    80003ee4:	01013403          	ld	s0,16(sp)
    80003ee8:	01813083          	ld	ra,24(sp)
    80003eec:	00048513          	mv	a0,s1
    80003ef0:	00813483          	ld	s1,8(sp)
    80003ef4:	02010113          	addi	sp,sp,32
    80003ef8:	ffffe317          	auipc	t1,0xffffe
    80003efc:	6d430067          	jr	1748(t1) # 800025cc <plic_complete>
    80003f00:	fffff097          	auipc	ra,0xfffff
    80003f04:	3e0080e7          	jalr	992(ra) # 800032e0 <uartintr>
    80003f08:	fddff06f          	j	80003ee4 <console_handler+0x74>
    80003f0c:	00000517          	auipc	a0,0x0
    80003f10:	32450513          	addi	a0,a0,804 # 80004230 <digits+0x78>
    80003f14:	fffff097          	auipc	ra,0xfffff
    80003f18:	a68080e7          	jalr	-1432(ra) # 8000297c <panic>
	...
