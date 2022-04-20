
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	96013103          	ld	sp,-1696(sp) # 80004960 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	499010ef          	jal	ra,80001cb4 <start>

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
    80001084:	450000ef          	jal	ra,800014d4 <interrupt>
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

0000000080001110 <initMemory>:
int memoryInitiliaized = 0;
int MEM_ALLOC = 1;
int MEM_FREE = 2;

void initMemory()
{
    80001110:	ff010113          	addi	sp,sp,-16
    80001114:	00813423          	sd	s0,8(sp)
    80001118:	01010413          	addi	s0,sp,16
    if(!memoryInitiliaized)
    8000111c:	00004797          	auipc	a5,0x4
    80001120:	8747a783          	lw	a5,-1932(a5) # 80004990 <memoryInitiliaized>
    80001124:	04078063          	beqz	a5,80001164 <initMemory+0x54>
        return;
    memoryInitiliaized = 1;
    80001128:	00100793          	li	a5,1
    8000112c:	00004717          	auipc	a4,0x4
    80001130:	86f72223          	sw	a5,-1948(a4) # 80004990 <memoryInitiliaized>
    headAllocated = 0;
    80001134:	00004797          	auipc	a5,0x4
    80001138:	8607b623          	sd	zero,-1940(a5) # 800049a0 <headAllocated>
    headFree = (struct FreeFragment*)HEAP_START_ADDR;
    8000113c:	00004717          	auipc	a4,0x4
    80001140:	80473703          	ld	a4,-2044(a4) # 80004940 <HEAP_START_ADDR>
    80001144:	00004797          	auipc	a5,0x4
    80001148:	84e7ba23          	sd	a4,-1964(a5) # 80004998 <headFree>
    headFree->next = 0;
    8000114c:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1);
    80001150:	00003797          	auipc	a5,0x3
    80001154:	7e87b783          	ld	a5,2024(a5) # 80004938 <HEAP_END_ADDR>
    80001158:	40e787b3          	sub	a5,a5,a4
    8000115c:	00178793          	addi	a5,a5,1
    80001160:	00f73023          	sd	a5,0(a4)
}
    80001164:	00813403          	ld	s0,8(sp)
    80001168:	01010113          	addi	sp,sp,16
    8000116c:	00008067          	ret

0000000080001170 <insertNewAllocatedFragment>:

void insertNewAllocatedFragment(void* addr, size_t size) {
    80001170:	fe010113          	addi	sp,sp,-32
    80001174:	00113c23          	sd	ra,24(sp)
    80001178:	00813823          	sd	s0,16(sp)
    8000117c:	00913423          	sd	s1,8(sp)
    80001180:	01213023          	sd	s2,0(sp)
    80001184:	02010413          	addi	s0,sp,32
    80001188:	00050493          	mv	s1,a0
    8000118c:	00058913          	mv	s2,a1

    initMemory();
    80001190:	00000097          	auipc	ra,0x0
    80001194:	f80080e7          	jalr	-128(ra) # 80001110 <initMemory>
    AllocatedFragment* prev = 0;
    AllocatedFragment* after =  headAllocated;
    80001198:	00004797          	auipc	a5,0x4
    8000119c:	8087b783          	ld	a5,-2040(a5) # 800049a0 <headAllocated>
    AllocatedFragment* prev = 0;
    800011a0:	00000713          	li	a4,0
    while(after != 0) {
    800011a4:	00078a63          	beqz	a5,800011b8 <insertNewAllocatedFragment+0x48>
        if((void*)after > addr)
    800011a8:	00f4e863          	bltu	s1,a5,800011b8 <insertNewAllocatedFragment+0x48>
            break;

        prev = after;
    800011ac:	00078713          	mv	a4,a5
        after = after->next;
    800011b0:	0087b783          	ld	a5,8(a5)
    800011b4:	ff1ff06f          	j	800011a4 <insertNewAllocatedFragment+0x34>
    }

    AllocatedFragment* newAllocated = (AllocatedFragment*)addr;
    newAllocated->next = 0;
    800011b8:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    800011bc:	0124b023          	sd	s2,0(s1)
    if(after == 0) {
    800011c0:	02078463          	beqz	a5,800011e8 <insertNewAllocatedFragment+0x78>
            headAllocated = newAllocated;
        else
            prev->next = newAllocated;
    }
    else {
        if(prev == 0) {
    800011c4:	02070e63          	beqz	a4,80001200 <insertNewAllocatedFragment+0x90>
            newAllocated->next = headAllocated;
            headAllocated = newAllocated;
        }
        else {
            newAllocated->next = after;
    800011c8:	00f4b423          	sd	a5,8(s1)
            prev->next = newAllocated;
    800011cc:	00973423          	sd	s1,8(a4)
        }
    }
}
    800011d0:	01813083          	ld	ra,24(sp)
    800011d4:	01013403          	ld	s0,16(sp)
    800011d8:	00813483          	ld	s1,8(sp)
    800011dc:	00013903          	ld	s2,0(sp)
    800011e0:	02010113          	addi	sp,sp,32
    800011e4:	00008067          	ret
        if(prev == 0)
    800011e8:	00070663          	beqz	a4,800011f4 <insertNewAllocatedFragment+0x84>
            prev->next = newAllocated;
    800011ec:	00973423          	sd	s1,8(a4)
    800011f0:	fe1ff06f          	j	800011d0 <insertNewAllocatedFragment+0x60>
            headAllocated = newAllocated;
    800011f4:	00003797          	auipc	a5,0x3
    800011f8:	7a97b623          	sd	s1,1964(a5) # 800049a0 <headAllocated>
    800011fc:	fd5ff06f          	j	800011d0 <insertNewAllocatedFragment+0x60>
            newAllocated->next = headAllocated;
    80001200:	00003797          	auipc	a5,0x3
    80001204:	7a078793          	addi	a5,a5,1952 # 800049a0 <headAllocated>
    80001208:	0007b703          	ld	a4,0(a5)
    8000120c:	00e4b423          	sd	a4,8(s1)
            headAllocated = newAllocated;
    80001210:	0097b023          	sd	s1,0(a5)
    80001214:	fbdff06f          	j	800011d0 <insertNewAllocatedFragment+0x60>

0000000080001218 <tryToAllocateFragment>:

void tryToAllocateFragment(size_t size) {
    80001218:	fe010113          	addi	sp,sp,-32
    8000121c:	00113c23          	sd	ra,24(sp)
    80001220:	00813823          	sd	s0,16(sp)
    80001224:	00913423          	sd	s1,8(sp)
    80001228:	01213023          	sd	s2,0(sp)
    8000122c:	02010413          	addi	s0,sp,32
    80001230:	00050913          	mv	s2,a0
    initMemory();
    80001234:	00000097          	auipc	ra,0x0
    80001238:	edc080e7          	jalr	-292(ra) # 80001110 <initMemory>
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    8000123c:	00003497          	auipc	s1,0x3
    80001240:	75c4b483          	ld	s1,1884(s1) # 80004998 <headFree>
    uint64 newSize = size + sizeof(AllocatedFragment);
    80001244:	01090693          	addi	a3,s2,16
    FreeFragment* prev = 0;
    80001248:	00000713          	li	a4,0
    while(curr != 0) {
    8000124c:	0740006f          	j	800012c0 <tryToAllocateFragment+0xa8>
            void* newAddr = ((char*)curr + newSize);
            if(newAddr <= HEAP_END_ADDR) {

                FreeFragment *newFree = (FreeFragment *) newAddr;

                if (prev != 0)
    80001250:	04070463          	beqz	a4,80001298 <tryToAllocateFragment+0x80>
                    prev->next = newFree;
    80001254:	00f73423          	sd	a5,8(a4)
                else
                    headFree = newFree;

                newFree->next = curr->next;
    80001258:	0084b603          	ld	a2,8(s1)
    8000125c:	00c7b423          	sd	a2,8(a5)
                newFree->size = curr->size - newSize;
    80001260:	0004b603          	ld	a2,0(s1)
    80001264:	40d606b3          	sub	a3,a2,a3
    80001268:	00d7b023          	sd	a3,0(a5)

                if(newFree->size == 0)
    8000126c:	00069863          	bnez	a3,8000127c <tryToAllocateFragment+0x64>
                {
                    if(prev != 0)
    80001270:	02070a63          	beqz	a4,800012a4 <tryToAllocateFragment+0x8c>
                        prev->next = curr->next;
    80001274:	0084b783          	ld	a5,8(s1)
    80001278:	00f73423          	sd	a5,8(a4)
                    else
                        headFree = 0;
                }

                insertNewAllocatedFragment(oldAddr, size);
    8000127c:	00090593          	mv	a1,s2
    80001280:	00048513          	mv	a0,s1
    80001284:	00000097          	auipc	ra,0x0
    80001288:	eec080e7          	jalr	-276(ra) # 80001170 <insertNewAllocatedFragment>

                uint64 oldA = (uint64) ((char*)oldAddr + sizeof(AllocatedFragment));
    8000128c:	01048493          	addi	s1,s1,16
                __asm__ volatile("mv a0,%0" : : "r"(oldA));
    80001290:	00048513          	mv	a0,s1

                return;
    80001294:	05c0006f          	j	800012f0 <tryToAllocateFragment+0xd8>
                    headFree = newFree;
    80001298:	00003617          	auipc	a2,0x3
    8000129c:	70f63023          	sd	a5,1792(a2) # 80004998 <headFree>
    800012a0:	fb9ff06f          	j	80001258 <tryToAllocateFragment+0x40>
                        headFree = 0;
    800012a4:	00003797          	auipc	a5,0x3
    800012a8:	6e07ba23          	sd	zero,1780(a5) # 80004998 <headFree>
    800012ac:	fd1ff06f          	j	8000127c <tryToAllocateFragment+0x64>
                {
                    prev->next = 0;
                }
                else
                {
                    headFree = 0;
    800012b0:	00003797          	auipc	a5,0x3
    800012b4:	6e07b423          	sd	zero,1768(a5) # 80004998 <headFree>
                }
            }
        }
        prev = curr;
    800012b8:	00048713          	mv	a4,s1
        curr = curr->next;
    800012bc:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    800012c0:	02048463          	beqz	s1,800012e8 <tryToAllocateFragment+0xd0>
        if(curr->size >= newSize) {
    800012c4:	0004b783          	ld	a5,0(s1)
    800012c8:	fed7e8e3          	bltu	a5,a3,800012b8 <tryToAllocateFragment+0xa0>
            void* newAddr = ((char*)curr + newSize);
    800012cc:	00d487b3          	add	a5,s1,a3
            if(newAddr <= HEAP_END_ADDR) {
    800012d0:	00003617          	auipc	a2,0x3
    800012d4:	66863603          	ld	a2,1640(a2) # 80004938 <HEAP_END_ADDR>
    800012d8:	f6f67ce3          	bgeu	a2,a5,80001250 <tryToAllocateFragment+0x38>
                if(prev != 0)
    800012dc:	fc070ae3          	beqz	a4,800012b0 <tryToAllocateFragment+0x98>
                    prev->next = 0;
    800012e0:	00073423          	sd	zero,8(a4)
    800012e4:	fd5ff06f          	j	800012b8 <tryToAllocateFragment+0xa0>
    }

    uint64 x = 0;
    __asm__ volatile("mv a0,%0" : : "r"(x));
    800012e8:	00000793          	li	a5,0
    800012ec:	00078513          	mv	a0,a5
}
    800012f0:	01813083          	ld	ra,24(sp)
    800012f4:	01013403          	ld	s0,16(sp)
    800012f8:	00813483          	ld	s1,8(sp)
    800012fc:	00013903          	ld	s2,0(sp)
    80001300:	02010113          	addi	sp,sp,32
    80001304:	00008067          	ret

0000000080001308 <insertNewFreeSegment>:

void insertNewFreeSegment(void* addr, size_t size)
{
    80001308:	fe010113          	addi	sp,sp,-32
    8000130c:	00113c23          	sd	ra,24(sp)
    80001310:	00813823          	sd	s0,16(sp)
    80001314:	00913423          	sd	s1,8(sp)
    80001318:	01213023          	sd	s2,0(sp)
    8000131c:	02010413          	addi	s0,sp,32
    80001320:	00050493          	mv	s1,a0
    80001324:	00058913          	mv	s2,a1
    initMemory();
    80001328:	00000097          	auipc	ra,0x0
    8000132c:	de8080e7          	jalr	-536(ra) # 80001110 <initMemory>
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    80001330:	00003797          	auipc	a5,0x3
    80001334:	6687b783          	ld	a5,1640(a5) # 80004998 <headFree>
    FreeFragment* newSegment = (FreeFragment*) addr;
    newSegment->size = size;
    80001338:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    8000133c:	0004b423          	sd	zero,8(s1)
    FreeFragment* prev = 0;
    80001340:	00000713          	li	a4,0
    while(curr != 0)
    80001344:	00078c63          	beqz	a5,8000135c <insertNewFreeSegment+0x54>
    {
        if((void*)curr > addr)
    80001348:	00f4e863          	bltu	s1,a5,80001358 <insertNewFreeSegment+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    8000134c:	00078713          	mv	a4,a5
        curr = curr->next;
    80001350:	0087b783          	ld	a5,8(a5)
    80001354:	ff1ff06f          	j	80001344 <insertNewFreeSegment+0x3c>
            newSegment->next = curr;
    80001358:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    8000135c:	02070063          	beqz	a4,8000137c <insertNewFreeSegment+0x74>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80001360:	00973423          	sd	s1,8(a4)
}
    80001364:	01813083          	ld	ra,24(sp)
    80001368:	01013403          	ld	s0,16(sp)
    8000136c:	00813483          	ld	s1,8(sp)
    80001370:	00013903          	ld	s2,0(sp)
    80001374:	02010113          	addi	sp,sp,32
    80001378:	00008067          	ret
        headFree = newSegment;
    8000137c:	00003797          	auipc	a5,0x3
    80001380:	6097be23          	sd	s1,1564(a5) # 80004998 <headFree>
    80001384:	fe1ff06f          	j	80001364 <insertNewFreeSegment+0x5c>

0000000080001388 <tryToFreeSegment>:

void tryToFreeSegment(void* addr)
{
    80001388:	fe010113          	addi	sp,sp,-32
    8000138c:	00113c23          	sd	ra,24(sp)
    80001390:	00813823          	sd	s0,16(sp)
    80001394:	00913423          	sd	s1,8(sp)
    80001398:	01213023          	sd	s2,0(sp)
    8000139c:	02010413          	addi	s0,sp,32
    800013a0:	00050913          	mv	s2,a0
    initMemory();
    800013a4:	00000097          	auipc	ra,0x0
    800013a8:	d6c080e7          	jalr	-660(ra) # 80001110 <initMemory>
    AllocatedFragment* prev = 0;
    AllocatedFragment* curr = headAllocated;
    800013ac:	00003497          	auipc	s1,0x3
    800013b0:	5f44b483          	ld	s1,1524(s1) # 800049a0 <headAllocated>
    int found = 0;
    800013b4:	00000693          	li	a3,0
    AllocatedFragment* prev = 0;
    800013b8:	00000713          	li	a4,0
    while(curr != 0 && !found)
    800013bc:	0300006f          	j	800013ec <tryToFreeSegment+0x64>
        {
            if(prev != 0) {
                prev->next = curr->next;
            }
            else {
                headAllocated = curr->next;
    800013c0:	0084b783          	ld	a5,8(s1)
    800013c4:	00003717          	auipc	a4,0x3
    800013c8:	5cf73e23          	sd	a5,1500(a4) # 800049a0 <headAllocated>
            }

            insertNewFreeSegment((void*)curr, curr->size + sizeof(AllocatedFragment));
    800013cc:	0004b583          	ld	a1,0(s1)
    800013d0:	01058593          	addi	a1,a1,16
    800013d4:	00048513          	mv	a0,s1
    800013d8:	00000097          	auipc	ra,0x0
    800013dc:	f30080e7          	jalr	-208(ra) # 80001308 <insertNewFreeSegment>

            found = 1;
    800013e0:	00100693          	li	a3,1
        }

        prev = curr;
    800013e4:	00048713          	mv	a4,s1
        curr = curr->next;
    800013e8:	0084b483          	ld	s1,8(s1)
    while(curr != 0 && !found)
    800013ec:	02048063          	beqz	s1,8000140c <tryToFreeSegment+0x84>
    800013f0:	00069e63          	bnez	a3,8000140c <tryToFreeSegment+0x84>
        if(addr == (void*)((char*)curr + sizeof(AllocatedFragment)))
    800013f4:	01048793          	addi	a5,s1,16
    800013f8:	ff2796e3          	bne	a5,s2,800013e4 <tryToFreeSegment+0x5c>
            if(prev != 0) {
    800013fc:	fc0702e3          	beqz	a4,800013c0 <tryToFreeSegment+0x38>
                prev->next = curr->next;
    80001400:	0084b783          	ld	a5,8(s1)
    80001404:	00f73423          	sd	a5,8(a4)
    80001408:	fc5ff06f          	j	800013cc <tryToFreeSegment+0x44>
    }

    if(found) {
    8000140c:	02068063          	beqz	a3,8000142c <tryToFreeSegment+0xa4>
        __asm__ volatile("li a0, 0");
    80001410:	00000513          	li	a0,0
    }
    else {
        __asm__ volatile("li a0, 1");
    }
}
    80001414:	01813083          	ld	ra,24(sp)
    80001418:	01013403          	ld	s0,16(sp)
    8000141c:	00813483          	ld	s1,8(sp)
    80001420:	00013903          	ld	s2,0(sp)
    80001424:	02010113          	addi	sp,sp,32
    80001428:	00008067          	ret
        __asm__ volatile("li a0, 1");
    8000142c:	00100513          	li	a0,1
}
    80001430:	fe5ff06f          	j	80001414 <tryToFreeSegment+0x8c>

0000000080001434 <mem_alloc>:

#ifdef __cplusplus
extern "C"
#endif
void* mem_alloc(size_t size)
{
    80001434:	ff010113          	addi	sp,sp,-16
    80001438:	00813423          	sd	s0,8(sp)
    8000143c:	01010413          	addi	s0,sp,16
    //prepare for system call
    __asm__ volatile("li a0, 1");
    80001440:	00100513          	li	a0,1
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001444:	03f50513          	addi	a0,a0,63 # 103f <_entry-0x7fffefc1>
    80001448:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    8000144c:	00050593          	mv	a1,a0

    __asm__ volatile("ecall"); // system call
    80001450:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80001454:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    80001458:	00813403          	ld	s0,8(sp)
    8000145c:	01010113          	addi	sp,sp,16
    80001460:	00008067          	ret

0000000080001464 <mem_free>:

#ifdef __cplusplus
extern "C"
#endif
int mem_free(void* p)
{
    80001464:	ff010113          	addi	sp,sp,-16
    80001468:	00813423          	sd	s0,8(sp)
    8000146c:	01010413          	addi	s0,sp,16
    //prepare for system call
    __asm__ volatile("li a0, 2");
    80001470:	00200513          	li	a0,2
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80001474:	00050593          	mv	a1,a0

    __asm__ volatile("ecall"); // system call
    80001478:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000147c:	00050513          	mv	a0,a0

    return result;
}
    80001480:	0005051b          	sext.w	a0,a0
    80001484:	00813403          	ld	s0,8(sp)
    80001488:	01010113          	addi	sp,sp,16
    8000148c:	00008067          	ret

0000000080001490 <main>:
#include "../lib/console.h"

//extern "C" void interruptvec();

void main()
{
    80001490:	ff010113          	addi	sp,sp,-16
    80001494:	00113423          	sd	ra,8(sp)
    80001498:	00813023          	sd	s0,0(sp)
    8000149c:	01010413          	addi	s0,sp,16
    System::initSystem();
    800014a0:	00000097          	auipc	ra,0x0
    800014a4:	41c080e7          	jalr	1052(ra) # 800018bc <_ZN6System10initSystemEv>
    //__asm__ volatile("csrw stvec, %0" : : [vector]"r"(&interruptvec));

    __putc('a');
    800014a8:	06100513          	li	a0,97
    800014ac:	00003097          	auipc	ra,0x3
    800014b0:	8d0080e7          	jalr	-1840(ra) # 80003d7c <__putc>
    __asm__ volatile("ecall");
    800014b4:	00000073          	ecall
    __putc('b');
    800014b8:	06200513          	li	a0,98
    800014bc:	00003097          	auipc	ra,0x3
    800014c0:	8c0080e7          	jalr	-1856(ra) # 80003d7c <__putc>
    return;

    MemoryAllocator* memoryAllocator = MemoryAllocator::getMemoryAllocator();
    memoryAllocator->mem_alloc(2);
    800014c4:	00813083          	ld	ra,8(sp)
    800014c8:	00013403          	ld	s0,0(sp)
    800014cc:	01010113          	addi	sp,sp,16
    800014d0:	00008067          	ret

00000000800014d4 <interrupt>:
const uint64 addrReadInterrupt = bntZero + 5UL;
const uint64 addrWriteInterrupt = bntZero + 7UL;
const uint64 ecallUserInterrupt = bntZero + 8UL;
const uint64 ecallSystemInterupt = bntZero + 9UL;

extern "C" void interrupt() {
    800014d4:	ff010113          	addi	sp,sp,-16
    800014d8:	00113423          	sd	ra,8(sp)
    800014dc:	00813023          	sd	s0,0(sp)
    800014e0:	01010413          	addi	s0,sp,16

    uint64 scause;
    __asm__ volatile("csrr %0,scause":"=r"(scause));
    800014e4:	14202773          	csrr	a4,scause
    switch(scause) {
    800014e8:	00900793          	li	a5,9
    800014ec:	00f70e63          	beq	a4,a5,80001508 <interrupt+0x34>
    //uint64 sie;
    //asm volatile("csrr %0, sie" : "=r"(sie));
    //sie &= ~2;
    //asm volatile("csrw sie, %0" : : "r" (sie));

    console_handler();
    800014f0:	00003097          	auipc	ra,0x3
    800014f4:	900080e7          	jalr	-1792(ra) # 80003df0 <console_handler>
}
    800014f8:	00813083          	ld	ra,8(sp)
    800014fc:	00013403          	ld	s0,0(sp)
    80001500:	01010113          	addi	sp,sp,16
    80001504:	00008067          	ret
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80001508:	00050793          	mv	a5,a0
            if(operation == (uint64)MEM_ALLOC) {
    8000150c:	00003717          	auipc	a4,0x3
    80001510:	46c73703          	ld	a4,1132(a4) # 80004978 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001514:	00072703          	lw	a4,0(a4)
    80001518:	02f70263          	beq	a4,a5,8000153c <interrupt+0x68>
            else if(operation == (uint64)MEM_FREE){
    8000151c:	00003717          	auipc	a4,0x3
    80001520:	44c73703          	ld	a4,1100(a4) # 80004968 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001524:	00072703          	lw	a4,0(a4)
    80001528:	fcf714e3          	bne	a4,a5,800014f0 <interrupt+0x1c>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    8000152c:	00058513          	mv	a0,a1
                tryToFreeSegment((void*)addr);
    80001530:	00000097          	auipc	ra,0x0
    80001534:	e58080e7          	jalr	-424(ra) # 80001388 <tryToFreeSegment>
    80001538:	fb9ff06f          	j	800014f0 <interrupt+0x1c>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    8000153c:	00058513          	mv	a0,a1
                tryToAllocateFragment(size);
    80001540:	00651513          	slli	a0,a0,0x6
    80001544:	00000097          	auipc	ra,0x0
    80001548:	cd4080e7          	jalr	-812(ra) # 80001218 <tryToAllocateFragment>
    8000154c:	fa5ff06f          	j	800014f0 <interrupt+0x1c>

0000000080001550 <_Znwm>:
#include "../h/syscall_cpp.h"
#include "../h/syscall_c.h"

//general
void * operator new(size_t size)
{
    80001550:	ff010113          	addi	sp,sp,-16
    80001554:	00113423          	sd	ra,8(sp)
    80001558:	00813023          	sd	s0,0(sp)
    8000155c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001560:	00000097          	auipc	ra,0x0
    80001564:	ed4080e7          	jalr	-300(ra) # 80001434 <mem_alloc>
}
    80001568:	00813083          	ld	ra,8(sp)
    8000156c:	00013403          	ld	s0,0(sp)
    80001570:	01010113          	addi	sp,sp,16
    80001574:	00008067          	ret

0000000080001578 <_ZdlPv>:

void operator delete(void * p)
{
    80001578:	ff010113          	addi	sp,sp,-16
    8000157c:	00113423          	sd	ra,8(sp)
    80001580:	00813023          	sd	s0,0(sp)
    80001584:	01010413          	addi	s0,sp,16
   mem_free(p);
    80001588:	00000097          	auipc	ra,0x0
    8000158c:	edc080e7          	jalr	-292(ra) # 80001464 <mem_free>
}
    80001590:	00813083          	ld	ra,8(sp)
    80001594:	00013403          	ld	s0,0(sp)
    80001598:	01010113          	addi	sp,sp,16
    8000159c:	00008067          	ret

00000000800015a0 <_ZN15MemoryAllocatorC1Ev>:

//MemoryAllocator.h

MemoryAllocator* MemoryAllocator::memoryAllocator = 0;

MemoryAllocator::MemoryAllocator() {
    800015a0:	ff010113          	addi	sp,sp,-16
    800015a4:	00813423          	sd	s0,8(sp)
    800015a8:	01010413          	addi	s0,sp,16

}
    800015ac:	00813403          	ld	s0,8(sp)
    800015b0:	01010113          	addi	sp,sp,16
    800015b4:	00008067          	ret

00000000800015b8 <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t size) {
    800015b8:	ff010113          	addi	sp,sp,-16
    800015bc:	00113423          	sd	ra,8(sp)
    800015c0:	00813023          	sd	s0,0(sp)
    800015c4:	01010413          	addi	s0,sp,16
    //todo
    //sta ovde treba kao parametar
    //svuda pogledaj to
    return ::mem_alloc(sizeof(MemoryAllocator));
    800015c8:	00100513          	li	a0,1
    800015cc:	00000097          	auipc	ra,0x0
    800015d0:	e68080e7          	jalr	-408(ra) # 80001434 <mem_alloc>
}
    800015d4:	00813083          	ld	ra,8(sp)
    800015d8:	00013403          	ld	s0,0(sp)
    800015dc:	01010113          	addi	sp,sp,16
    800015e0:	00008067          	ret

00000000800015e4 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void * addr) {
    800015e4:	ff010113          	addi	sp,sp,-16
    800015e8:	00113423          	sd	ra,8(sp)
    800015ec:	00813023          	sd	s0,0(sp)
    800015f0:	01010413          	addi	s0,sp,16
    return ::mem_free(addr);
    800015f4:	00058513          	mv	a0,a1
    800015f8:	00000097          	auipc	ra,0x0
    800015fc:	e6c080e7          	jalr	-404(ra) # 80001464 <mem_free>
}
    80001600:	00813083          	ld	ra,8(sp)
    80001604:	00013403          	ld	s0,0(sp)
    80001608:	01010113          	addi	sp,sp,16
    8000160c:	00008067          	ret

0000000080001610 <_ZN15MemoryAllocatorD1Ev>:
        memoryAllocator = new MemoryAllocator();
    }
    return memoryAllocator;
}

MemoryAllocator::~MemoryAllocator() {
    80001610:	ff010113          	addi	sp,sp,-16
    80001614:	00813423          	sd	s0,8(sp)
    80001618:	01010413          	addi	s0,sp,16

}
    8000161c:	00813403          	ld	s0,8(sp)
    80001620:	01010113          	addi	sp,sp,16
    80001624:	00008067          	ret

0000000080001628 <_ZN15MemoryAllocatornwEm>:

void *MemoryAllocator::operator new(size_t size) {
    80001628:	ff010113          	addi	sp,sp,-16
    8000162c:	00113423          	sd	ra,8(sp)
    80001630:	00813023          	sd	s0,0(sp)
    80001634:	01010413          	addi	s0,sp,16
    return ::operator new(size);
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	f18080e7          	jalr	-232(ra) # 80001550 <_Znwm>
}
    80001640:	00813083          	ld	ra,8(sp)
    80001644:	00013403          	ld	s0,0(sp)
    80001648:	01010113          	addi	sp,sp,16
    8000164c:	00008067          	ret

0000000080001650 <_ZN15MemoryAllocator18getMemoryAllocatorEv>:
    if(memoryAllocator == 0) {
    80001650:	00003797          	auipc	a5,0x3
    80001654:	3807b783          	ld	a5,896(a5) # 800049d0 <_ZN15MemoryAllocator15memoryAllocatorE>
    80001658:	00078863          	beqz	a5,80001668 <_ZN15MemoryAllocator18getMemoryAllocatorEv+0x18>
}
    8000165c:	00003517          	auipc	a0,0x3
    80001660:	37453503          	ld	a0,884(a0) # 800049d0 <_ZN15MemoryAllocator15memoryAllocatorE>
    80001664:	00008067          	ret
MemoryAllocator* MemoryAllocator::getMemoryAllocator() {
    80001668:	ff010113          	addi	sp,sp,-16
    8000166c:	00113423          	sd	ra,8(sp)
    80001670:	00813023          	sd	s0,0(sp)
    80001674:	01010413          	addi	s0,sp,16
        memoryAllocator = new MemoryAllocator();
    80001678:	00100513          	li	a0,1
    8000167c:	00000097          	auipc	ra,0x0
    80001680:	fac080e7          	jalr	-84(ra) # 80001628 <_ZN15MemoryAllocatornwEm>
    80001684:	00003797          	auipc	a5,0x3
    80001688:	34a7b623          	sd	a0,844(a5) # 800049d0 <_ZN15MemoryAllocator15memoryAllocatorE>
}
    8000168c:	00003517          	auipc	a0,0x3
    80001690:	34453503          	ld	a0,836(a0) # 800049d0 <_ZN15MemoryAllocator15memoryAllocatorE>
    80001694:	00813083          	ld	ra,8(sp)
    80001698:	00013403          	ld	s0,0(sp)
    8000169c:	01010113          	addi	sp,sp,16
    800016a0:	00008067          	ret

00000000800016a4 <_ZN15MemoryAllocatordlEPv>:

void MemoryAllocator::operator delete(void *p) {
    800016a4:	ff010113          	addi	sp,sp,-16
    800016a8:	00113423          	sd	ra,8(sp)
    800016ac:	00813023          	sd	s0,0(sp)
    800016b0:	01010413          	addi	s0,sp,16
    ::operator delete(p);
    800016b4:	00000097          	auipc	ra,0x0
    800016b8:	ec4080e7          	jalr	-316(ra) # 80001578 <_ZdlPv>
}
    800016bc:	00813083          	ld	ra,8(sp)
    800016c0:	00013403          	ld	s0,0(sp)
    800016c4:	01010113          	addi	sp,sp,16
    800016c8:	00008067          	ret

00000000800016cc <_ZN9SchedulernwEm>:
    //todo
    //da li radi konstruktor
    queuePCB= new Queue<PCB*>();
}

void *Scheduler::operator new(size_t size) {
    800016cc:	ff010113          	addi	sp,sp,-16
    800016d0:	00113423          	sd	ra,8(sp)
    800016d4:	00813023          	sd	s0,0(sp)
    800016d8:	01010413          	addi	s0,sp,16
    return ::operator new(sizeof(Scheduler));
    800016dc:	00800513          	li	a0,8
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	e70080e7          	jalr	-400(ra) # 80001550 <_Znwm>
}
    800016e8:	00813083          	ld	ra,8(sp)
    800016ec:	00013403          	ld	s0,0(sp)
    800016f0:	01010113          	addi	sp,sp,16
    800016f4:	00008067          	ret

00000000800016f8 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p) {
    800016f8:	ff010113          	addi	sp,sp,-16
    800016fc:	00113423          	sd	ra,8(sp)
    80001700:	00813023          	sd	s0,0(sp)
    80001704:	01010413          	addi	s0,sp,16
    ::operator delete(p);
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	e70080e7          	jalr	-400(ra) # 80001578 <_ZdlPv>
}
    80001710:	00813083          	ld	ra,8(sp)
    80001714:	00013403          	ld	s0,0(sp)
    80001718:	01010113          	addi	sp,sp,16
    8000171c:	00008067          	ret

0000000080001720 <_ZN6ThreadC1EPFvPvES0_>:
//Thread.h

//todo
//kreiranje pocetnog konteksta niti

Thread::Thread(void (*body)(void *), void *arg) {
    80001720:	ff010113          	addi	sp,sp,-16
    80001724:	00813423          	sd	s0,8(sp)
    80001728:	01010413          	addi	s0,sp,16
    f = body;
    8000172c:	00b53023          	sd	a1,0(a0)
    args = arg;
    80001730:	00c53423          	sd	a2,8(a0)
}
    80001734:	00813403          	ld	s0,8(sp)
    80001738:	01010113          	addi	sp,sp,16
    8000173c:	00008067          	ret

0000000080001740 <_ZN6Thread8dispatchEv>:

void Thread::start() {
    threadPCB->start();
}

void Thread::dispatch() {
    80001740:	ff010113          	addi	sp,sp,-16
    80001744:	00813423          	sd	s0,8(sp)
    80001748:	01010413          	addi	s0,sp,16

}
    8000174c:	00813403          	ld	s0,8(sp)
    80001750:	01010113          	addi	sp,sp,16
    80001754:	00008067          	ret

0000000080001758 <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    80001758:	ff010113          	addi	sp,sp,-16
    8000175c:	00813423          	sd	s0,8(sp)
    80001760:	01010413          	addi	s0,sp,16

}
    80001764:	00813403          	ld	s0,8(sp)
    80001768:	01010113          	addi	sp,sp,16
    8000176c:	00008067          	ret

0000000080001770 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    80001770:	ff010113          	addi	sp,sp,-16
    80001774:	00813423          	sd	s0,8(sp)
    80001778:	01010413          	addi	s0,sp,16

}
    8000177c:	00813403          	ld	s0,8(sp)
    80001780:	01010113          	addi	sp,sp,16
    80001784:	00008067          	ret

0000000080001788 <_ZN6ThreadnwEm>:

void *Thread::operator new(size_t size) {
    80001788:	ff010113          	addi	sp,sp,-16
    8000178c:	00113423          	sd	ra,8(sp)
    80001790:	00813023          	sd	s0,0(sp)
    80001794:	01010413          	addi	s0,sp,16
    return ::operator new(sizeof(Thread));
    80001798:	02800513          	li	a0,40
    8000179c:	00000097          	auipc	ra,0x0
    800017a0:	db4080e7          	jalr	-588(ra) # 80001550 <_Znwm>
}
    800017a4:	00813083          	ld	ra,8(sp)
    800017a8:	00013403          	ld	s0,0(sp)
    800017ac:	01010113          	addi	sp,sp,16
    800017b0:	00008067          	ret

00000000800017b4 <_ZN6ThreaddlEPv>:

void Thread::operator delete(void *p) {
    800017b4:	ff010113          	addi	sp,sp,-16
    800017b8:	00813423          	sd	s0,8(sp)
    800017bc:	01010413          	addi	s0,sp,16

}
    800017c0:	00813403          	ld	s0,8(sp)
    800017c4:	01010113          	addi	sp,sp,16
    800017c8:	00008067          	ret

00000000800017cc <_ZN3PCBC1EPFvPvES0_mm>:
//
//}

//PCB.h

PCB::PCB(void (*body)(void*), void* arg , size_t stackSize, size_t timeSlice) {
    800017cc:	fd010113          	addi	sp,sp,-48
    800017d0:	02113423          	sd	ra,40(sp)
    800017d4:	02813023          	sd	s0,32(sp)
    800017d8:	00913c23          	sd	s1,24(sp)
    800017dc:	01213823          	sd	s2,16(sp)
    800017e0:	01313423          	sd	s3,8(sp)
    800017e4:	01413023          	sd	s4,0(sp)
    800017e8:	03010413          	addi	s0,sp,48
    800017ec:	00050493          	mv	s1,a0
    800017f0:	00058993          	mv	s3,a1
    800017f4:	00060a13          	mv	s4,a2
    //todo
    //pocetni kontekst niti
    this->stackSize = stackSize;
    800017f8:	00d53823          	sd	a3,16(a0)
    this->timeSlice = timeSlice;
    800017fc:	00e53c23          	sd	a4,24(a0)
    this->pcbThread = new Thread(body, arg);
    80001800:	02800513          	li	a0,40
    80001804:	00000097          	auipc	ra,0x0
    80001808:	f84080e7          	jalr	-124(ra) # 80001788 <_ZN6ThreadnwEm>
    8000180c:	00050913          	mv	s2,a0
    80001810:	000a0613          	mv	a2,s4
    80001814:	00098593          	mv	a1,s3
    80001818:	00000097          	auipc	ra,0x0
    8000181c:	f08080e7          	jalr	-248(ra) # 80001720 <_ZN6ThreadC1EPFvPvES0_>
    80001820:	0124b023          	sd	s2,0(s1)
    this->state = CREATED;
    80001824:	0204a023          	sw	zero,32(s1)
}
    80001828:	02813083          	ld	ra,40(sp)
    8000182c:	02013403          	ld	s0,32(sp)
    80001830:	01813483          	ld	s1,24(sp)
    80001834:	01013903          	ld	s2,16(sp)
    80001838:	00813983          	ld	s3,8(sp)
    8000183c:	00013a03          	ld	s4,0(sp)
    80001840:	03010113          	addi	sp,sp,48
    80001844:	00008067          	ret

0000000080001848 <_ZN3PCBD1Ev>:

PCB::~PCB() {
    80001848:	ff010113          	addi	sp,sp,-16
    8000184c:	00813423          	sd	s0,8(sp)
    80001850:	01010413          	addi	s0,sp,16

}
    80001854:	00813403          	ld	s0,8(sp)
    80001858:	01010113          	addi	sp,sp,16
    8000185c:	00008067          	ret

0000000080001860 <_ZN3PCB6runnerEPv>:
{
    Scheduler::getScheduler()->put(this);
}

//todo
void PCB::runner(void* p) {
    80001860:	ff010113          	addi	sp,sp,-16
    80001864:	00813423          	sd	s0,8(sp)
    80001868:	01010413          	addi	s0,sp,16
    //pcbThread->run();
}
    8000186c:	00813403          	ld	s0,8(sp)
    80001870:	01010113          	addi	sp,sp,16
    80001874:	00008067          	ret

0000000080001878 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80001878:	ff010113          	addi	sp,sp,-16
    8000187c:	00113423          	sd	ra,8(sp)
    80001880:	00813023          	sd	s0,0(sp)
    80001884:	01010413          	addi	s0,sp,16
    return ::operator new(sizeof(PCB));
    80001888:	02800513          	li	a0,40
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	cc4080e7          	jalr	-828(ra) # 80001550 <_Znwm>
}
    80001894:	00813083          	ld	ra,8(sp)
    80001898:	00013403          	ld	s0,0(sp)
    8000189c:	01010113          	addi	sp,sp,16
    800018a0:	00008067          	ret

00000000800018a4 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    800018a4:	ff010113          	addi	sp,sp,-16
    800018a8:	00813423          	sd	s0,8(sp)
    800018ac:	01010413          	addi	s0,sp,16

}
    800018b0:	00813403          	ld	s0,8(sp)
    800018b4:	01010113          	addi	sp,sp,16
    800018b8:	00008067          	ret

00000000800018bc <_ZN6System10initSystemEv>:

PCB* System::runningPCB = 0;

//todo
extern "C" void interruptvec();
void System::initSystem() {
    800018bc:	ff010113          	addi	sp,sp,-16
    800018c0:	00813423          	sd	s0,8(sp)
    800018c4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw stvec, %0" : : [vector]"r"(&interruptvec));
    800018c8:	00003797          	auipc	a5,0x3
    800018cc:	0a87b783          	ld	a5,168(a5) # 80004970 <_GLOBAL_OFFSET_TABLE_+0x18>
    800018d0:	10579073          	csrw	stvec,a5
}
    800018d4:	00813403          	ld	s0,8(sp)
    800018d8:	01010113          	addi	sp,sp,16
    800018dc:	00008067          	ret

00000000800018e0 <_ZN6SystemC1Ev>:

System::System() {
    800018e0:	ff010113          	addi	sp,sp,-16
    800018e4:	00813423          	sd	s0,8(sp)
    800018e8:	01010413          	addi	s0,sp,16

}
    800018ec:	00813403          	ld	s0,8(sp)
    800018f0:	01010113          	addi	sp,sp,16
    800018f4:	00008067          	ret

00000000800018f8 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *pcb) {
    800018f8:	ff010113          	addi	sp,sp,-16
    800018fc:	00113423          	sd	ra,8(sp)
    80001900:	00813023          	sd	s0,0(sp)
    80001904:	01010413          	addi	s0,sp,16
    queuePCB->push(pcb);
    80001908:	00053503          	ld	a0,0(a0)
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	1fc080e7          	jalr	508(ra) # 80001b08 <_ZN5QueueIP3PCBE4pushES1_>
}
    80001914:	00813083          	ld	ra,8(sp)
    80001918:	00013403          	ld	s0,0(sp)
    8000191c:	01010113          	addi	sp,sp,16
    80001920:	00008067          	ret

0000000080001924 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    80001924:	fe010113          	addi	sp,sp,-32
    80001928:	00113c23          	sd	ra,24(sp)
    8000192c:	00813823          	sd	s0,16(sp)
    80001930:	00913423          	sd	s1,8(sp)
    80001934:	01213023          	sd	s2,0(sp)
    80001938:	02010413          	addi	s0,sp,32
    PCB* t =  queuePCB->front();
    8000193c:	00053903          	ld	s2,0(a0)
    80001940:	00090513          	mv	a0,s2
    80001944:	00000097          	auipc	ra,0x0
    80001948:	21c080e7          	jalr	540(ra) # 80001b60 <_ZN5QueueIP3PCBE5frontEv>
    8000194c:	00050493          	mv	s1,a0
    queuePCB->pop();
    80001950:	00090513          	mv	a0,s2
    80001954:	00000097          	auipc	ra,0x0
    80001958:	230080e7          	jalr	560(ra) # 80001b84 <_ZN5QueueIP3PCBE3popEv>
}
    8000195c:	00048513          	mv	a0,s1
    80001960:	01813083          	ld	ra,24(sp)
    80001964:	01013403          	ld	s0,16(sp)
    80001968:	00813483          	ld	s1,8(sp)
    8000196c:	00013903          	ld	s2,0(sp)
    80001970:	02010113          	addi	sp,sp,32
    80001974:	00008067          	ret

0000000080001978 <_ZN9SchedulerD1Ev>:
Scheduler::~Scheduler() {
    80001978:	fe010113          	addi	sp,sp,-32
    8000197c:	00113c23          	sd	ra,24(sp)
    80001980:	00813823          	sd	s0,16(sp)
    80001984:	00913423          	sd	s1,8(sp)
    80001988:	02010413          	addi	s0,sp,32
    delete queuePCB;
    8000198c:	00053483          	ld	s1,0(a0)
    80001990:	00048e63          	beqz	s1,800019ac <_ZN9SchedulerD1Ev+0x34>
    80001994:	00048513          	mv	a0,s1
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	278080e7          	jalr	632(ra) # 80001c10 <_ZN5QueueIP3PCBED1Ev>
    800019a0:	00048513          	mv	a0,s1
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	244080e7          	jalr	580(ra) # 80001be8 <_ZN5QueueIP3PCBEdlEPv>
}
    800019ac:	01813083          	ld	ra,24(sp)
    800019b0:	01013403          	ld	s0,16(sp)
    800019b4:	00813483          	ld	s1,8(sp)
    800019b8:	02010113          	addi	sp,sp,32
    800019bc:	00008067          	ret

00000000800019c0 <_ZN9SchedulerC1Ev>:
Scheduler::Scheduler() {
    800019c0:	fe010113          	addi	sp,sp,-32
    800019c4:	00113c23          	sd	ra,24(sp)
    800019c8:	00813823          	sd	s0,16(sp)
    800019cc:	00913423          	sd	s1,8(sp)
    800019d0:	01213023          	sd	s2,0(sp)
    800019d4:	02010413          	addi	s0,sp,32
    800019d8:	00050493          	mv	s1,a0
    queuePCB= new Queue<PCB*>();
    800019dc:	01000513          	li	a0,16
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	288080e7          	jalr	648(ra) # 80001c68 <_ZN5QueueIP3PCBEnwEm>
    800019e8:	00050913          	mv	s2,a0
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	2a8080e7          	jalr	680(ra) # 80001c94 <_ZN5QueueIP3PCBEC1Ev>
    800019f4:	0124b023          	sd	s2,0(s1)
}
    800019f8:	01813083          	ld	ra,24(sp)
    800019fc:	01013403          	ld	s0,16(sp)
    80001a00:	00813483          	ld	s1,8(sp)
    80001a04:	00013903          	ld	s2,0(sp)
    80001a08:	02010113          	addi	sp,sp,32
    80001a0c:	00008067          	ret

0000000080001a10 <_ZN9Scheduler12getSchedulerEv>:
    if(scheduler == 0)
    80001a10:	00003797          	auipc	a5,0x3
    80001a14:	fc87b783          	ld	a5,-56(a5) # 800049d8 <_ZN9Scheduler9schedulerE>
    80001a18:	00078863          	beqz	a5,80001a28 <_ZN9Scheduler12getSchedulerEv+0x18>
    return scheduler;
    80001a1c:	00003517          	auipc	a0,0x3
    80001a20:	fbc53503          	ld	a0,-68(a0) # 800049d8 <_ZN9Scheduler9schedulerE>
}
    80001a24:	00008067          	ret
Scheduler *Scheduler::getScheduler() {
    80001a28:	fe010113          	addi	sp,sp,-32
    80001a2c:	00113c23          	sd	ra,24(sp)
    80001a30:	00813823          	sd	s0,16(sp)
    80001a34:	00913423          	sd	s1,8(sp)
    80001a38:	01213023          	sd	s2,0(sp)
    80001a3c:	02010413          	addi	s0,sp,32
        scheduler = new Scheduler();
    80001a40:	00800513          	li	a0,8
    80001a44:	00000097          	auipc	ra,0x0
    80001a48:	c88080e7          	jalr	-888(ra) # 800016cc <_ZN9SchedulernwEm>
    80001a4c:	00050493          	mv	s1,a0
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	f70080e7          	jalr	-144(ra) # 800019c0 <_ZN9SchedulerC1Ev>
    80001a58:	00003797          	auipc	a5,0x3
    80001a5c:	f897b023          	sd	s1,-128(a5) # 800049d8 <_ZN9Scheduler9schedulerE>
    return scheduler;
    80001a60:	00003517          	auipc	a0,0x3
    80001a64:	f7853503          	ld	a0,-136(a0) # 800049d8 <_ZN9Scheduler9schedulerE>
}
    80001a68:	01813083          	ld	ra,24(sp)
    80001a6c:	01013403          	ld	s0,16(sp)
    80001a70:	00813483          	ld	s1,8(sp)
    80001a74:	00013903          	ld	s2,0(sp)
    80001a78:	02010113          	addi	sp,sp,32
    80001a7c:	00008067          	ret
    80001a80:	00050913          	mv	s2,a0
        scheduler = new Scheduler();
    80001a84:	00048513          	mv	a0,s1
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	c70080e7          	jalr	-912(ra) # 800016f8 <_ZN9SchedulerdlEPv>
    80001a90:	00090513          	mv	a0,s2
    80001a94:	00004097          	auipc	ra,0x4
    80001a98:	024080e7          	jalr	36(ra) # 80005ab8 <_Unwind_Resume>

0000000080001a9c <_ZN3PCB5startEv>:
{
    80001a9c:	fe010113          	addi	sp,sp,-32
    80001aa0:	00113c23          	sd	ra,24(sp)
    80001aa4:	00813823          	sd	s0,16(sp)
    80001aa8:	00913423          	sd	s1,8(sp)
    80001aac:	02010413          	addi	s0,sp,32
    80001ab0:	00050493          	mv	s1,a0
    Scheduler::getScheduler()->put(this);
    80001ab4:	00000097          	auipc	ra,0x0
    80001ab8:	f5c080e7          	jalr	-164(ra) # 80001a10 <_ZN9Scheduler12getSchedulerEv>
    80001abc:	00048593          	mv	a1,s1
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	e38080e7          	jalr	-456(ra) # 800018f8 <_ZN9Scheduler3putEP3PCB>
}
    80001ac8:	01813083          	ld	ra,24(sp)
    80001acc:	01013403          	ld	s0,16(sp)
    80001ad0:	00813483          	ld	s1,8(sp)
    80001ad4:	02010113          	addi	sp,sp,32
    80001ad8:	00008067          	ret

0000000080001adc <_ZN6Thread5startEv>:
void Thread::start() {
    80001adc:	ff010113          	addi	sp,sp,-16
    80001ae0:	00113423          	sd	ra,8(sp)
    80001ae4:	00813023          	sd	s0,0(sp)
    80001ae8:	01010413          	addi	s0,sp,16
    threadPCB->start();
    80001aec:	02053503          	ld	a0,32(a0)
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	fac080e7          	jalr	-84(ra) # 80001a9c <_ZN3PCB5startEv>
}
    80001af8:	00813083          	ld	ra,8(sp)
    80001afc:	00013403          	ld	s0,0(sp)
    80001b00:	01010113          	addi	sp,sp,16
    80001b04:	00008067          	ret

0000000080001b08 <_ZN5QueueIP3PCBE4pushES1_>:
void Queue<T>::push(T t) {
    80001b08:	fe010113          	addi	sp,sp,-32
    80001b0c:	00113c23          	sd	ra,24(sp)
    80001b10:	00813823          	sd	s0,16(sp)
    80001b14:	00913423          	sd	s1,8(sp)
    80001b18:	02010413          	addi	s0,sp,32
    80001b1c:	00050493          	mv	s1,a0
    Elem* newElem = (Elem*)MemoryAllocator::getMemoryAllocator()->mem_alloc(sizeof(Elem));
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	b30080e7          	jalr	-1232(ra) # 80001650 <_ZN15MemoryAllocator18getMemoryAllocatorEv>
    80001b28:	01000593          	li	a1,16
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	a8c080e7          	jalr	-1396(ra) # 800015b8 <_ZN15MemoryAllocator9mem_allocEm>
    if(first == 0) {
    80001b34:	0004b783          	ld	a5,0(s1)
    80001b38:	00078c63          	beqz	a5,80001b50 <_ZN5QueueIP3PCBE4pushES1_+0x48>
}
    80001b3c:	01813083          	ld	ra,24(sp)
    80001b40:	01013403          	ld	s0,16(sp)
    80001b44:	00813483          	ld	s1,8(sp)
    80001b48:	02010113          	addi	sp,sp,32
    80001b4c:	00008067          	ret
        first = newElem;
    80001b50:	00a4b023          	sd	a0,0(s1)
        last = 0;
    80001b54:	0004b423          	sd	zero,8(s1)
        first->next = last;
    80001b58:	00053423          	sd	zero,8(a0)
}
    80001b5c:	fe1ff06f          	j	80001b3c <_ZN5QueueIP3PCBE4pushES1_+0x34>

0000000080001b60 <_ZN5QueueIP3PCBE5frontEv>:
T Queue<T>::front() {
    80001b60:	ff010113          	addi	sp,sp,-16
    80001b64:	00813423          	sd	s0,8(sp)
    80001b68:	01010413          	addi	s0,sp,16
   if(first == 0)
    80001b6c:	00053503          	ld	a0,0(a0)
    80001b70:	00050463          	beqz	a0,80001b78 <_ZN5QueueIP3PCBE5frontEv+0x18>
   return first->data;
    80001b74:	00053503          	ld	a0,0(a0)
}
    80001b78:	00813403          	ld	s0,8(sp)
    80001b7c:	01010113          	addi	sp,sp,16
    80001b80:	00008067          	ret

0000000080001b84 <_ZN5QueueIP3PCBE3popEv>:
void Queue<T>::pop() {
    80001b84:	fe010113          	addi	sp,sp,-32
    80001b88:	00113c23          	sd	ra,24(sp)
    80001b8c:	00813823          	sd	s0,16(sp)
    80001b90:	00913423          	sd	s1,8(sp)
    80001b94:	01213023          	sd	s2,0(sp)
    80001b98:	02010413          	addi	s0,sp,32
    80001b9c:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80001ba0:	00053783          	ld	a5,0(a0)
    80001ba4:	0087b903          	ld	s2,8(a5)
    MemoryAllocator::getMemoryAllocator()->mem_free(first);
    80001ba8:	00000097          	auipc	ra,0x0
    80001bac:	aa8080e7          	jalr	-1368(ra) # 80001650 <_ZN15MemoryAllocator18getMemoryAllocatorEv>
    80001bb0:	0004b583          	ld	a1,0(s1)
    80001bb4:	00000097          	auipc	ra,0x0
    80001bb8:	a30080e7          	jalr	-1488(ra) # 800015e4 <_ZN15MemoryAllocator8mem_freeEPv>
    first = newFirst;
    80001bbc:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80001bc0:	00090e63          	beqz	s2,80001bdc <_ZN5QueueIP3PCBE3popEv+0x58>
}
    80001bc4:	01813083          	ld	ra,24(sp)
    80001bc8:	01013403          	ld	s0,16(sp)
    80001bcc:	00813483          	ld	s1,8(sp)
    80001bd0:	00013903          	ld	s2,0(sp)
    80001bd4:	02010113          	addi	sp,sp,32
    80001bd8:	00008067          	ret
        first = last = 0;
    80001bdc:	0004b423          	sd	zero,8(s1)
    80001be0:	0004b023          	sd	zero,0(s1)
}
    80001be4:	fe1ff06f          	j	80001bc4 <_ZN5QueueIP3PCBE3popEv+0x40>

0000000080001be8 <_ZN5QueueIP3PCBEdlEPv>:
void Queue<T>::operator delete(void *p) {
    80001be8:	ff010113          	addi	sp,sp,-16
    80001bec:	00113423          	sd	ra,8(sp)
    80001bf0:	00813023          	sd	s0,0(sp)
    80001bf4:	01010413          	addi	s0,sp,16
    ::operator delete(p);
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	980080e7          	jalr	-1664(ra) # 80001578 <_ZdlPv>
}
    80001c00:	00813083          	ld	ra,8(sp)
    80001c04:	00013403          	ld	s0,0(sp)
    80001c08:	01010113          	addi	sp,sp,16
    80001c0c:	00008067          	ret

0000000080001c10 <_ZN5QueueIP3PCBED1Ev>:
Queue<T>::~Queue() {
    80001c10:	fe010113          	addi	sp,sp,-32
    80001c14:	00113c23          	sd	ra,24(sp)
    80001c18:	00813823          	sd	s0,16(sp)
    80001c1c:	00913423          	sd	s1,8(sp)
    80001c20:	01213023          	sd	s2,0(sp)
    80001c24:	02010413          	addi	s0,sp,32
    Elem* curr = first;
    80001c28:	00053483          	ld	s1,0(a0)
    while(curr != 0)
    80001c2c:	02048263          	beqz	s1,80001c50 <_ZN5QueueIP3PCBED1Ev+0x40>
        curr = curr->next;
    80001c30:	0084b903          	ld	s2,8(s1)
        MemoryAllocator::getMemoryAllocator()->mem_free(old);
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	a1c080e7          	jalr	-1508(ra) # 80001650 <_ZN15MemoryAllocator18getMemoryAllocatorEv>
    80001c3c:	00048593          	mv	a1,s1
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	9a4080e7          	jalr	-1628(ra) # 800015e4 <_ZN15MemoryAllocator8mem_freeEPv>
        curr = curr->next;
    80001c48:	00090493          	mv	s1,s2
    while(curr != 0)
    80001c4c:	fe1ff06f          	j	80001c2c <_ZN5QueueIP3PCBED1Ev+0x1c>
}
    80001c50:	01813083          	ld	ra,24(sp)
    80001c54:	01013403          	ld	s0,16(sp)
    80001c58:	00813483          	ld	s1,8(sp)
    80001c5c:	00013903          	ld	s2,0(sp)
    80001c60:	02010113          	addi	sp,sp,32
    80001c64:	00008067          	ret

0000000080001c68 <_ZN5QueueIP3PCBEnwEm>:
void *Queue<T>::operator new(size_t size) {
    80001c68:	ff010113          	addi	sp,sp,-16
    80001c6c:	00113423          	sd	ra,8(sp)
    80001c70:	00813023          	sd	s0,0(sp)
    80001c74:	01010413          	addi	s0,sp,16
    return ::operator new(sizeof(Queue<T>));
    80001c78:	01000513          	li	a0,16
    80001c7c:	00000097          	auipc	ra,0x0
    80001c80:	8d4080e7          	jalr	-1836(ra) # 80001550 <_Znwm>
}
    80001c84:	00813083          	ld	ra,8(sp)
    80001c88:	00013403          	ld	s0,0(sp)
    80001c8c:	01010113          	addi	sp,sp,16
    80001c90:	00008067          	ret

0000000080001c94 <_ZN5QueueIP3PCBEC1Ev>:
Queue<T>::Queue() {
    80001c94:	ff010113          	addi	sp,sp,-16
    80001c98:	00813423          	sd	s0,8(sp)
    80001c9c:	01010413          	addi	s0,sp,16
    first = last = 0;
    80001ca0:	00053423          	sd	zero,8(a0)
    80001ca4:	00053023          	sd	zero,0(a0)
}
    80001ca8:	00813403          	ld	s0,8(sp)
    80001cac:	01010113          	addi	sp,sp,16
    80001cb0:	00008067          	ret

0000000080001cb4 <start>:
    80001cb4:	ff010113          	addi	sp,sp,-16
    80001cb8:	00813423          	sd	s0,8(sp)
    80001cbc:	01010413          	addi	s0,sp,16
    80001cc0:	300027f3          	csrr	a5,mstatus
    80001cc4:	ffffe737          	lui	a4,0xffffe
    80001cc8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8baf>
    80001ccc:	00e7f7b3          	and	a5,a5,a4
    80001cd0:	00001737          	lui	a4,0x1
    80001cd4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001cd8:	00e7e7b3          	or	a5,a5,a4
    80001cdc:	30079073          	csrw	mstatus,a5
    80001ce0:	00000797          	auipc	a5,0x0
    80001ce4:	16078793          	addi	a5,a5,352 # 80001e40 <system_main>
    80001ce8:	34179073          	csrw	mepc,a5
    80001cec:	00000793          	li	a5,0
    80001cf0:	18079073          	csrw	satp,a5
    80001cf4:	000107b7          	lui	a5,0x10
    80001cf8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001cfc:	30279073          	csrw	medeleg,a5
    80001d00:	30379073          	csrw	mideleg,a5
    80001d04:	104027f3          	csrr	a5,sie
    80001d08:	2227e793          	ori	a5,a5,546
    80001d0c:	10479073          	csrw	sie,a5
    80001d10:	fff00793          	li	a5,-1
    80001d14:	00a7d793          	srli	a5,a5,0xa
    80001d18:	3b079073          	csrw	pmpaddr0,a5
    80001d1c:	00f00793          	li	a5,15
    80001d20:	3a079073          	csrw	pmpcfg0,a5
    80001d24:	f14027f3          	csrr	a5,mhartid
    80001d28:	0200c737          	lui	a4,0x200c
    80001d2c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001d30:	0007869b          	sext.w	a3,a5
    80001d34:	00269713          	slli	a4,a3,0x2
    80001d38:	000f4637          	lui	a2,0xf4
    80001d3c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001d40:	00d70733          	add	a4,a4,a3
    80001d44:	0037979b          	slliw	a5,a5,0x3
    80001d48:	020046b7          	lui	a3,0x2004
    80001d4c:	00d787b3          	add	a5,a5,a3
    80001d50:	00c585b3          	add	a1,a1,a2
    80001d54:	00371693          	slli	a3,a4,0x3
    80001d58:	00003717          	auipc	a4,0x3
    80001d5c:	c9870713          	addi	a4,a4,-872 # 800049f0 <timer_scratch>
    80001d60:	00b7b023          	sd	a1,0(a5)
    80001d64:	00d70733          	add	a4,a4,a3
    80001d68:	00f73c23          	sd	a5,24(a4)
    80001d6c:	02c73023          	sd	a2,32(a4)
    80001d70:	34071073          	csrw	mscratch,a4
    80001d74:	00000797          	auipc	a5,0x0
    80001d78:	6ec78793          	addi	a5,a5,1772 # 80002460 <timervec>
    80001d7c:	30579073          	csrw	mtvec,a5
    80001d80:	300027f3          	csrr	a5,mstatus
    80001d84:	0087e793          	ori	a5,a5,8
    80001d88:	30079073          	csrw	mstatus,a5
    80001d8c:	304027f3          	csrr	a5,mie
    80001d90:	0807e793          	ori	a5,a5,128
    80001d94:	30479073          	csrw	mie,a5
    80001d98:	f14027f3          	csrr	a5,mhartid
    80001d9c:	0007879b          	sext.w	a5,a5
    80001da0:	00078213          	mv	tp,a5
    80001da4:	30200073          	mret
    80001da8:	00813403          	ld	s0,8(sp)
    80001dac:	01010113          	addi	sp,sp,16
    80001db0:	00008067          	ret

0000000080001db4 <timerinit>:
    80001db4:	ff010113          	addi	sp,sp,-16
    80001db8:	00813423          	sd	s0,8(sp)
    80001dbc:	01010413          	addi	s0,sp,16
    80001dc0:	f14027f3          	csrr	a5,mhartid
    80001dc4:	0200c737          	lui	a4,0x200c
    80001dc8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001dcc:	0007869b          	sext.w	a3,a5
    80001dd0:	00269713          	slli	a4,a3,0x2
    80001dd4:	000f4637          	lui	a2,0xf4
    80001dd8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001ddc:	00d70733          	add	a4,a4,a3
    80001de0:	0037979b          	slliw	a5,a5,0x3
    80001de4:	020046b7          	lui	a3,0x2004
    80001de8:	00d787b3          	add	a5,a5,a3
    80001dec:	00c585b3          	add	a1,a1,a2
    80001df0:	00371693          	slli	a3,a4,0x3
    80001df4:	00003717          	auipc	a4,0x3
    80001df8:	bfc70713          	addi	a4,a4,-1028 # 800049f0 <timer_scratch>
    80001dfc:	00b7b023          	sd	a1,0(a5)
    80001e00:	00d70733          	add	a4,a4,a3
    80001e04:	00f73c23          	sd	a5,24(a4)
    80001e08:	02c73023          	sd	a2,32(a4)
    80001e0c:	34071073          	csrw	mscratch,a4
    80001e10:	00000797          	auipc	a5,0x0
    80001e14:	65078793          	addi	a5,a5,1616 # 80002460 <timervec>
    80001e18:	30579073          	csrw	mtvec,a5
    80001e1c:	300027f3          	csrr	a5,mstatus
    80001e20:	0087e793          	ori	a5,a5,8
    80001e24:	30079073          	csrw	mstatus,a5
    80001e28:	304027f3          	csrr	a5,mie
    80001e2c:	0807e793          	ori	a5,a5,128
    80001e30:	30479073          	csrw	mie,a5
    80001e34:	00813403          	ld	s0,8(sp)
    80001e38:	01010113          	addi	sp,sp,16
    80001e3c:	00008067          	ret

0000000080001e40 <system_main>:
    80001e40:	fe010113          	addi	sp,sp,-32
    80001e44:	00813823          	sd	s0,16(sp)
    80001e48:	00913423          	sd	s1,8(sp)
    80001e4c:	00113c23          	sd	ra,24(sp)
    80001e50:	02010413          	addi	s0,sp,32
    80001e54:	00000097          	auipc	ra,0x0
    80001e58:	0c4080e7          	jalr	196(ra) # 80001f18 <cpuid>
    80001e5c:	00003497          	auipc	s1,0x3
    80001e60:	b4c48493          	addi	s1,s1,-1204 # 800049a8 <started>
    80001e64:	02050263          	beqz	a0,80001e88 <system_main+0x48>
    80001e68:	0004a783          	lw	a5,0(s1)
    80001e6c:	0007879b          	sext.w	a5,a5
    80001e70:	fe078ce3          	beqz	a5,80001e68 <system_main+0x28>
    80001e74:	0ff0000f          	fence
    80001e78:	00002517          	auipc	a0,0x2
    80001e7c:	21850513          	addi	a0,a0,536 # 80004090 <bntOne+0x38>
    80001e80:	00001097          	auipc	ra,0x1
    80001e84:	a7c080e7          	jalr	-1412(ra) # 800028fc <panic>
    80001e88:	00001097          	auipc	ra,0x1
    80001e8c:	9d0080e7          	jalr	-1584(ra) # 80002858 <consoleinit>
    80001e90:	00001097          	auipc	ra,0x1
    80001e94:	15c080e7          	jalr	348(ra) # 80002fec <printfinit>
    80001e98:	00002517          	auipc	a0,0x2
    80001e9c:	2d850513          	addi	a0,a0,728 # 80004170 <bntOne+0x118>
    80001ea0:	00001097          	auipc	ra,0x1
    80001ea4:	ab8080e7          	jalr	-1352(ra) # 80002958 <__printf>
    80001ea8:	00002517          	auipc	a0,0x2
    80001eac:	1b850513          	addi	a0,a0,440 # 80004060 <bntOne+0x8>
    80001eb0:	00001097          	auipc	ra,0x1
    80001eb4:	aa8080e7          	jalr	-1368(ra) # 80002958 <__printf>
    80001eb8:	00002517          	auipc	a0,0x2
    80001ebc:	2b850513          	addi	a0,a0,696 # 80004170 <bntOne+0x118>
    80001ec0:	00001097          	auipc	ra,0x1
    80001ec4:	a98080e7          	jalr	-1384(ra) # 80002958 <__printf>
    80001ec8:	00001097          	auipc	ra,0x1
    80001ecc:	4b0080e7          	jalr	1200(ra) # 80003378 <kinit>
    80001ed0:	00000097          	auipc	ra,0x0
    80001ed4:	148080e7          	jalr	328(ra) # 80002018 <trapinit>
    80001ed8:	00000097          	auipc	ra,0x0
    80001edc:	16c080e7          	jalr	364(ra) # 80002044 <trapinithart>
    80001ee0:	00000097          	auipc	ra,0x0
    80001ee4:	5c0080e7          	jalr	1472(ra) # 800024a0 <plicinit>
    80001ee8:	00000097          	auipc	ra,0x0
    80001eec:	5e0080e7          	jalr	1504(ra) # 800024c8 <plicinithart>
    80001ef0:	00000097          	auipc	ra,0x0
    80001ef4:	078080e7          	jalr	120(ra) # 80001f68 <userinit>
    80001ef8:	0ff0000f          	fence
    80001efc:	00100793          	li	a5,1
    80001f00:	00002517          	auipc	a0,0x2
    80001f04:	17850513          	addi	a0,a0,376 # 80004078 <bntOne+0x20>
    80001f08:	00f4a023          	sw	a5,0(s1)
    80001f0c:	00001097          	auipc	ra,0x1
    80001f10:	a4c080e7          	jalr	-1460(ra) # 80002958 <__printf>
    80001f14:	0000006f          	j	80001f14 <system_main+0xd4>

0000000080001f18 <cpuid>:
    80001f18:	ff010113          	addi	sp,sp,-16
    80001f1c:	00813423          	sd	s0,8(sp)
    80001f20:	01010413          	addi	s0,sp,16
    80001f24:	00020513          	mv	a0,tp
    80001f28:	00813403          	ld	s0,8(sp)
    80001f2c:	0005051b          	sext.w	a0,a0
    80001f30:	01010113          	addi	sp,sp,16
    80001f34:	00008067          	ret

0000000080001f38 <mycpu>:
    80001f38:	ff010113          	addi	sp,sp,-16
    80001f3c:	00813423          	sd	s0,8(sp)
    80001f40:	01010413          	addi	s0,sp,16
    80001f44:	00020793          	mv	a5,tp
    80001f48:	00813403          	ld	s0,8(sp)
    80001f4c:	0007879b          	sext.w	a5,a5
    80001f50:	00779793          	slli	a5,a5,0x7
    80001f54:	00004517          	auipc	a0,0x4
    80001f58:	acc50513          	addi	a0,a0,-1332 # 80005a20 <cpus>
    80001f5c:	00f50533          	add	a0,a0,a5
    80001f60:	01010113          	addi	sp,sp,16
    80001f64:	00008067          	ret

0000000080001f68 <userinit>:
    80001f68:	ff010113          	addi	sp,sp,-16
    80001f6c:	00813423          	sd	s0,8(sp)
    80001f70:	01010413          	addi	s0,sp,16
    80001f74:	00813403          	ld	s0,8(sp)
    80001f78:	01010113          	addi	sp,sp,16
    80001f7c:	fffff317          	auipc	t1,0xfffff
    80001f80:	51430067          	jr	1300(t1) # 80001490 <main>

0000000080001f84 <either_copyout>:
    80001f84:	ff010113          	addi	sp,sp,-16
    80001f88:	00813023          	sd	s0,0(sp)
    80001f8c:	00113423          	sd	ra,8(sp)
    80001f90:	01010413          	addi	s0,sp,16
    80001f94:	02051663          	bnez	a0,80001fc0 <either_copyout+0x3c>
    80001f98:	00058513          	mv	a0,a1
    80001f9c:	00060593          	mv	a1,a2
    80001fa0:	0006861b          	sext.w	a2,a3
    80001fa4:	00002097          	auipc	ra,0x2
    80001fa8:	c60080e7          	jalr	-928(ra) # 80003c04 <__memmove>
    80001fac:	00813083          	ld	ra,8(sp)
    80001fb0:	00013403          	ld	s0,0(sp)
    80001fb4:	00000513          	li	a0,0
    80001fb8:	01010113          	addi	sp,sp,16
    80001fbc:	00008067          	ret
    80001fc0:	00002517          	auipc	a0,0x2
    80001fc4:	0f850513          	addi	a0,a0,248 # 800040b8 <bntOne+0x60>
    80001fc8:	00001097          	auipc	ra,0x1
    80001fcc:	934080e7          	jalr	-1740(ra) # 800028fc <panic>

0000000080001fd0 <either_copyin>:
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00813023          	sd	s0,0(sp)
    80001fd8:	00113423          	sd	ra,8(sp)
    80001fdc:	01010413          	addi	s0,sp,16
    80001fe0:	02059463          	bnez	a1,80002008 <either_copyin+0x38>
    80001fe4:	00060593          	mv	a1,a2
    80001fe8:	0006861b          	sext.w	a2,a3
    80001fec:	00002097          	auipc	ra,0x2
    80001ff0:	c18080e7          	jalr	-1000(ra) # 80003c04 <__memmove>
    80001ff4:	00813083          	ld	ra,8(sp)
    80001ff8:	00013403          	ld	s0,0(sp)
    80001ffc:	00000513          	li	a0,0
    80002000:	01010113          	addi	sp,sp,16
    80002004:	00008067          	ret
    80002008:	00002517          	auipc	a0,0x2
    8000200c:	0d850513          	addi	a0,a0,216 # 800040e0 <bntOne+0x88>
    80002010:	00001097          	auipc	ra,0x1
    80002014:	8ec080e7          	jalr	-1812(ra) # 800028fc <panic>

0000000080002018 <trapinit>:
    80002018:	ff010113          	addi	sp,sp,-16
    8000201c:	00813423          	sd	s0,8(sp)
    80002020:	01010413          	addi	s0,sp,16
    80002024:	00813403          	ld	s0,8(sp)
    80002028:	00002597          	auipc	a1,0x2
    8000202c:	0e058593          	addi	a1,a1,224 # 80004108 <bntOne+0xb0>
    80002030:	00004517          	auipc	a0,0x4
    80002034:	a7050513          	addi	a0,a0,-1424 # 80005aa0 <tickslock>
    80002038:	01010113          	addi	sp,sp,16
    8000203c:	00001317          	auipc	t1,0x1
    80002040:	5cc30067          	jr	1484(t1) # 80003608 <initlock>

0000000080002044 <trapinithart>:
    80002044:	ff010113          	addi	sp,sp,-16
    80002048:	00813423          	sd	s0,8(sp)
    8000204c:	01010413          	addi	s0,sp,16
    80002050:	00000797          	auipc	a5,0x0
    80002054:	30078793          	addi	a5,a5,768 # 80002350 <kernelvec>
    80002058:	10579073          	csrw	stvec,a5
    8000205c:	00813403          	ld	s0,8(sp)
    80002060:	01010113          	addi	sp,sp,16
    80002064:	00008067          	ret

0000000080002068 <usertrap>:
    80002068:	ff010113          	addi	sp,sp,-16
    8000206c:	00813423          	sd	s0,8(sp)
    80002070:	01010413          	addi	s0,sp,16
    80002074:	00813403          	ld	s0,8(sp)
    80002078:	01010113          	addi	sp,sp,16
    8000207c:	00008067          	ret

0000000080002080 <usertrapret>:
    80002080:	ff010113          	addi	sp,sp,-16
    80002084:	00813423          	sd	s0,8(sp)
    80002088:	01010413          	addi	s0,sp,16
    8000208c:	00813403          	ld	s0,8(sp)
    80002090:	01010113          	addi	sp,sp,16
    80002094:	00008067          	ret

0000000080002098 <kerneltrap>:
    80002098:	fe010113          	addi	sp,sp,-32
    8000209c:	00813823          	sd	s0,16(sp)
    800020a0:	00113c23          	sd	ra,24(sp)
    800020a4:	00913423          	sd	s1,8(sp)
    800020a8:	02010413          	addi	s0,sp,32
    800020ac:	142025f3          	csrr	a1,scause
    800020b0:	100027f3          	csrr	a5,sstatus
    800020b4:	0027f793          	andi	a5,a5,2
    800020b8:	10079c63          	bnez	a5,800021d0 <kerneltrap+0x138>
    800020bc:	142027f3          	csrr	a5,scause
    800020c0:	0207ce63          	bltz	a5,800020fc <kerneltrap+0x64>
    800020c4:	00002517          	auipc	a0,0x2
    800020c8:	08c50513          	addi	a0,a0,140 # 80004150 <bntOne+0xf8>
    800020cc:	00001097          	auipc	ra,0x1
    800020d0:	88c080e7          	jalr	-1908(ra) # 80002958 <__printf>
    800020d4:	141025f3          	csrr	a1,sepc
    800020d8:	14302673          	csrr	a2,stval
    800020dc:	00002517          	auipc	a0,0x2
    800020e0:	08450513          	addi	a0,a0,132 # 80004160 <bntOne+0x108>
    800020e4:	00001097          	auipc	ra,0x1
    800020e8:	874080e7          	jalr	-1932(ra) # 80002958 <__printf>
    800020ec:	00002517          	auipc	a0,0x2
    800020f0:	08c50513          	addi	a0,a0,140 # 80004178 <bntOne+0x120>
    800020f4:	00001097          	auipc	ra,0x1
    800020f8:	808080e7          	jalr	-2040(ra) # 800028fc <panic>
    800020fc:	0ff7f713          	andi	a4,a5,255
    80002100:	00900693          	li	a3,9
    80002104:	04d70063          	beq	a4,a3,80002144 <kerneltrap+0xac>
    80002108:	fff00713          	li	a4,-1
    8000210c:	03f71713          	slli	a4,a4,0x3f
    80002110:	00170713          	addi	a4,a4,1
    80002114:	fae798e3          	bne	a5,a4,800020c4 <kerneltrap+0x2c>
    80002118:	00000097          	auipc	ra,0x0
    8000211c:	e00080e7          	jalr	-512(ra) # 80001f18 <cpuid>
    80002120:	06050663          	beqz	a0,8000218c <kerneltrap+0xf4>
    80002124:	144027f3          	csrr	a5,sip
    80002128:	ffd7f793          	andi	a5,a5,-3
    8000212c:	14479073          	csrw	sip,a5
    80002130:	01813083          	ld	ra,24(sp)
    80002134:	01013403          	ld	s0,16(sp)
    80002138:	00813483          	ld	s1,8(sp)
    8000213c:	02010113          	addi	sp,sp,32
    80002140:	00008067          	ret
    80002144:	00000097          	auipc	ra,0x0
    80002148:	3d0080e7          	jalr	976(ra) # 80002514 <plic_claim>
    8000214c:	00a00793          	li	a5,10
    80002150:	00050493          	mv	s1,a0
    80002154:	06f50863          	beq	a0,a5,800021c4 <kerneltrap+0x12c>
    80002158:	fc050ce3          	beqz	a0,80002130 <kerneltrap+0x98>
    8000215c:	00050593          	mv	a1,a0
    80002160:	00002517          	auipc	a0,0x2
    80002164:	fd050513          	addi	a0,a0,-48 # 80004130 <bntOne+0xd8>
    80002168:	00000097          	auipc	ra,0x0
    8000216c:	7f0080e7          	jalr	2032(ra) # 80002958 <__printf>
    80002170:	01013403          	ld	s0,16(sp)
    80002174:	01813083          	ld	ra,24(sp)
    80002178:	00048513          	mv	a0,s1
    8000217c:	00813483          	ld	s1,8(sp)
    80002180:	02010113          	addi	sp,sp,32
    80002184:	00000317          	auipc	t1,0x0
    80002188:	3c830067          	jr	968(t1) # 8000254c <plic_complete>
    8000218c:	00004517          	auipc	a0,0x4
    80002190:	91450513          	addi	a0,a0,-1772 # 80005aa0 <tickslock>
    80002194:	00001097          	auipc	ra,0x1
    80002198:	498080e7          	jalr	1176(ra) # 8000362c <acquire>
    8000219c:	00003717          	auipc	a4,0x3
    800021a0:	81070713          	addi	a4,a4,-2032 # 800049ac <ticks>
    800021a4:	00072783          	lw	a5,0(a4)
    800021a8:	00004517          	auipc	a0,0x4
    800021ac:	8f850513          	addi	a0,a0,-1800 # 80005aa0 <tickslock>
    800021b0:	0017879b          	addiw	a5,a5,1
    800021b4:	00f72023          	sw	a5,0(a4)
    800021b8:	00001097          	auipc	ra,0x1
    800021bc:	540080e7          	jalr	1344(ra) # 800036f8 <release>
    800021c0:	f65ff06f          	j	80002124 <kerneltrap+0x8c>
    800021c4:	00001097          	auipc	ra,0x1
    800021c8:	09c080e7          	jalr	156(ra) # 80003260 <uartintr>
    800021cc:	fa5ff06f          	j	80002170 <kerneltrap+0xd8>
    800021d0:	00002517          	auipc	a0,0x2
    800021d4:	f4050513          	addi	a0,a0,-192 # 80004110 <bntOne+0xb8>
    800021d8:	00000097          	auipc	ra,0x0
    800021dc:	724080e7          	jalr	1828(ra) # 800028fc <panic>

00000000800021e0 <clockintr>:
    800021e0:	fe010113          	addi	sp,sp,-32
    800021e4:	00813823          	sd	s0,16(sp)
    800021e8:	00913423          	sd	s1,8(sp)
    800021ec:	00113c23          	sd	ra,24(sp)
    800021f0:	02010413          	addi	s0,sp,32
    800021f4:	00004497          	auipc	s1,0x4
    800021f8:	8ac48493          	addi	s1,s1,-1876 # 80005aa0 <tickslock>
    800021fc:	00048513          	mv	a0,s1
    80002200:	00001097          	auipc	ra,0x1
    80002204:	42c080e7          	jalr	1068(ra) # 8000362c <acquire>
    80002208:	00002717          	auipc	a4,0x2
    8000220c:	7a470713          	addi	a4,a4,1956 # 800049ac <ticks>
    80002210:	00072783          	lw	a5,0(a4)
    80002214:	01013403          	ld	s0,16(sp)
    80002218:	01813083          	ld	ra,24(sp)
    8000221c:	00048513          	mv	a0,s1
    80002220:	0017879b          	addiw	a5,a5,1
    80002224:	00813483          	ld	s1,8(sp)
    80002228:	00f72023          	sw	a5,0(a4)
    8000222c:	02010113          	addi	sp,sp,32
    80002230:	00001317          	auipc	t1,0x1
    80002234:	4c830067          	jr	1224(t1) # 800036f8 <release>

0000000080002238 <devintr>:
    80002238:	142027f3          	csrr	a5,scause
    8000223c:	00000513          	li	a0,0
    80002240:	0007c463          	bltz	a5,80002248 <devintr+0x10>
    80002244:	00008067          	ret
    80002248:	fe010113          	addi	sp,sp,-32
    8000224c:	00813823          	sd	s0,16(sp)
    80002250:	00113c23          	sd	ra,24(sp)
    80002254:	00913423          	sd	s1,8(sp)
    80002258:	02010413          	addi	s0,sp,32
    8000225c:	0ff7f713          	andi	a4,a5,255
    80002260:	00900693          	li	a3,9
    80002264:	04d70c63          	beq	a4,a3,800022bc <devintr+0x84>
    80002268:	fff00713          	li	a4,-1
    8000226c:	03f71713          	slli	a4,a4,0x3f
    80002270:	00170713          	addi	a4,a4,1
    80002274:	00e78c63          	beq	a5,a4,8000228c <devintr+0x54>
    80002278:	01813083          	ld	ra,24(sp)
    8000227c:	01013403          	ld	s0,16(sp)
    80002280:	00813483          	ld	s1,8(sp)
    80002284:	02010113          	addi	sp,sp,32
    80002288:	00008067          	ret
    8000228c:	00000097          	auipc	ra,0x0
    80002290:	c8c080e7          	jalr	-884(ra) # 80001f18 <cpuid>
    80002294:	06050663          	beqz	a0,80002300 <devintr+0xc8>
    80002298:	144027f3          	csrr	a5,sip
    8000229c:	ffd7f793          	andi	a5,a5,-3
    800022a0:	14479073          	csrw	sip,a5
    800022a4:	01813083          	ld	ra,24(sp)
    800022a8:	01013403          	ld	s0,16(sp)
    800022ac:	00813483          	ld	s1,8(sp)
    800022b0:	00200513          	li	a0,2
    800022b4:	02010113          	addi	sp,sp,32
    800022b8:	00008067          	ret
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	258080e7          	jalr	600(ra) # 80002514 <plic_claim>
    800022c4:	00a00793          	li	a5,10
    800022c8:	00050493          	mv	s1,a0
    800022cc:	06f50663          	beq	a0,a5,80002338 <devintr+0x100>
    800022d0:	00100513          	li	a0,1
    800022d4:	fa0482e3          	beqz	s1,80002278 <devintr+0x40>
    800022d8:	00048593          	mv	a1,s1
    800022dc:	00002517          	auipc	a0,0x2
    800022e0:	e5450513          	addi	a0,a0,-428 # 80004130 <bntOne+0xd8>
    800022e4:	00000097          	auipc	ra,0x0
    800022e8:	674080e7          	jalr	1652(ra) # 80002958 <__printf>
    800022ec:	00048513          	mv	a0,s1
    800022f0:	00000097          	auipc	ra,0x0
    800022f4:	25c080e7          	jalr	604(ra) # 8000254c <plic_complete>
    800022f8:	00100513          	li	a0,1
    800022fc:	f7dff06f          	j	80002278 <devintr+0x40>
    80002300:	00003517          	auipc	a0,0x3
    80002304:	7a050513          	addi	a0,a0,1952 # 80005aa0 <tickslock>
    80002308:	00001097          	auipc	ra,0x1
    8000230c:	324080e7          	jalr	804(ra) # 8000362c <acquire>
    80002310:	00002717          	auipc	a4,0x2
    80002314:	69c70713          	addi	a4,a4,1692 # 800049ac <ticks>
    80002318:	00072783          	lw	a5,0(a4)
    8000231c:	00003517          	auipc	a0,0x3
    80002320:	78450513          	addi	a0,a0,1924 # 80005aa0 <tickslock>
    80002324:	0017879b          	addiw	a5,a5,1
    80002328:	00f72023          	sw	a5,0(a4)
    8000232c:	00001097          	auipc	ra,0x1
    80002330:	3cc080e7          	jalr	972(ra) # 800036f8 <release>
    80002334:	f65ff06f          	j	80002298 <devintr+0x60>
    80002338:	00001097          	auipc	ra,0x1
    8000233c:	f28080e7          	jalr	-216(ra) # 80003260 <uartintr>
    80002340:	fadff06f          	j	800022ec <devintr+0xb4>
	...

0000000080002350 <kernelvec>:
    80002350:	f0010113          	addi	sp,sp,-256
    80002354:	00113023          	sd	ra,0(sp)
    80002358:	00213423          	sd	sp,8(sp)
    8000235c:	00313823          	sd	gp,16(sp)
    80002360:	00413c23          	sd	tp,24(sp)
    80002364:	02513023          	sd	t0,32(sp)
    80002368:	02613423          	sd	t1,40(sp)
    8000236c:	02713823          	sd	t2,48(sp)
    80002370:	02813c23          	sd	s0,56(sp)
    80002374:	04913023          	sd	s1,64(sp)
    80002378:	04a13423          	sd	a0,72(sp)
    8000237c:	04b13823          	sd	a1,80(sp)
    80002380:	04c13c23          	sd	a2,88(sp)
    80002384:	06d13023          	sd	a3,96(sp)
    80002388:	06e13423          	sd	a4,104(sp)
    8000238c:	06f13823          	sd	a5,112(sp)
    80002390:	07013c23          	sd	a6,120(sp)
    80002394:	09113023          	sd	a7,128(sp)
    80002398:	09213423          	sd	s2,136(sp)
    8000239c:	09313823          	sd	s3,144(sp)
    800023a0:	09413c23          	sd	s4,152(sp)
    800023a4:	0b513023          	sd	s5,160(sp)
    800023a8:	0b613423          	sd	s6,168(sp)
    800023ac:	0b713823          	sd	s7,176(sp)
    800023b0:	0b813c23          	sd	s8,184(sp)
    800023b4:	0d913023          	sd	s9,192(sp)
    800023b8:	0da13423          	sd	s10,200(sp)
    800023bc:	0db13823          	sd	s11,208(sp)
    800023c0:	0dc13c23          	sd	t3,216(sp)
    800023c4:	0fd13023          	sd	t4,224(sp)
    800023c8:	0fe13423          	sd	t5,232(sp)
    800023cc:	0ff13823          	sd	t6,240(sp)
    800023d0:	cc9ff0ef          	jal	ra,80002098 <kerneltrap>
    800023d4:	00013083          	ld	ra,0(sp)
    800023d8:	00813103          	ld	sp,8(sp)
    800023dc:	01013183          	ld	gp,16(sp)
    800023e0:	02013283          	ld	t0,32(sp)
    800023e4:	02813303          	ld	t1,40(sp)
    800023e8:	03013383          	ld	t2,48(sp)
    800023ec:	03813403          	ld	s0,56(sp)
    800023f0:	04013483          	ld	s1,64(sp)
    800023f4:	04813503          	ld	a0,72(sp)
    800023f8:	05013583          	ld	a1,80(sp)
    800023fc:	05813603          	ld	a2,88(sp)
    80002400:	06013683          	ld	a3,96(sp)
    80002404:	06813703          	ld	a4,104(sp)
    80002408:	07013783          	ld	a5,112(sp)
    8000240c:	07813803          	ld	a6,120(sp)
    80002410:	08013883          	ld	a7,128(sp)
    80002414:	08813903          	ld	s2,136(sp)
    80002418:	09013983          	ld	s3,144(sp)
    8000241c:	09813a03          	ld	s4,152(sp)
    80002420:	0a013a83          	ld	s5,160(sp)
    80002424:	0a813b03          	ld	s6,168(sp)
    80002428:	0b013b83          	ld	s7,176(sp)
    8000242c:	0b813c03          	ld	s8,184(sp)
    80002430:	0c013c83          	ld	s9,192(sp)
    80002434:	0c813d03          	ld	s10,200(sp)
    80002438:	0d013d83          	ld	s11,208(sp)
    8000243c:	0d813e03          	ld	t3,216(sp)
    80002440:	0e013e83          	ld	t4,224(sp)
    80002444:	0e813f03          	ld	t5,232(sp)
    80002448:	0f013f83          	ld	t6,240(sp)
    8000244c:	10010113          	addi	sp,sp,256
    80002450:	10200073          	sret
    80002454:	00000013          	nop
    80002458:	00000013          	nop
    8000245c:	00000013          	nop

0000000080002460 <timervec>:
    80002460:	34051573          	csrrw	a0,mscratch,a0
    80002464:	00b53023          	sd	a1,0(a0)
    80002468:	00c53423          	sd	a2,8(a0)
    8000246c:	00d53823          	sd	a3,16(a0)
    80002470:	01853583          	ld	a1,24(a0)
    80002474:	02053603          	ld	a2,32(a0)
    80002478:	0005b683          	ld	a3,0(a1)
    8000247c:	00c686b3          	add	a3,a3,a2
    80002480:	00d5b023          	sd	a3,0(a1)
    80002484:	00200593          	li	a1,2
    80002488:	14459073          	csrw	sip,a1
    8000248c:	01053683          	ld	a3,16(a0)
    80002490:	00853603          	ld	a2,8(a0)
    80002494:	00053583          	ld	a1,0(a0)
    80002498:	34051573          	csrrw	a0,mscratch,a0
    8000249c:	30200073          	mret

00000000800024a0 <plicinit>:
    800024a0:	ff010113          	addi	sp,sp,-16
    800024a4:	00813423          	sd	s0,8(sp)
    800024a8:	01010413          	addi	s0,sp,16
    800024ac:	00813403          	ld	s0,8(sp)
    800024b0:	0c0007b7          	lui	a5,0xc000
    800024b4:	00100713          	li	a4,1
    800024b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800024bc:	00e7a223          	sw	a4,4(a5)
    800024c0:	01010113          	addi	sp,sp,16
    800024c4:	00008067          	ret

00000000800024c8 <plicinithart>:
    800024c8:	ff010113          	addi	sp,sp,-16
    800024cc:	00813023          	sd	s0,0(sp)
    800024d0:	00113423          	sd	ra,8(sp)
    800024d4:	01010413          	addi	s0,sp,16
    800024d8:	00000097          	auipc	ra,0x0
    800024dc:	a40080e7          	jalr	-1472(ra) # 80001f18 <cpuid>
    800024e0:	0085171b          	slliw	a4,a0,0x8
    800024e4:	0c0027b7          	lui	a5,0xc002
    800024e8:	00e787b3          	add	a5,a5,a4
    800024ec:	40200713          	li	a4,1026
    800024f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800024f4:	00813083          	ld	ra,8(sp)
    800024f8:	00013403          	ld	s0,0(sp)
    800024fc:	00d5151b          	slliw	a0,a0,0xd
    80002500:	0c2017b7          	lui	a5,0xc201
    80002504:	00a78533          	add	a0,a5,a0
    80002508:	00052023          	sw	zero,0(a0)
    8000250c:	01010113          	addi	sp,sp,16
    80002510:	00008067          	ret

0000000080002514 <plic_claim>:
    80002514:	ff010113          	addi	sp,sp,-16
    80002518:	00813023          	sd	s0,0(sp)
    8000251c:	00113423          	sd	ra,8(sp)
    80002520:	01010413          	addi	s0,sp,16
    80002524:	00000097          	auipc	ra,0x0
    80002528:	9f4080e7          	jalr	-1548(ra) # 80001f18 <cpuid>
    8000252c:	00813083          	ld	ra,8(sp)
    80002530:	00013403          	ld	s0,0(sp)
    80002534:	00d5151b          	slliw	a0,a0,0xd
    80002538:	0c2017b7          	lui	a5,0xc201
    8000253c:	00a78533          	add	a0,a5,a0
    80002540:	00452503          	lw	a0,4(a0)
    80002544:	01010113          	addi	sp,sp,16
    80002548:	00008067          	ret

000000008000254c <plic_complete>:
    8000254c:	fe010113          	addi	sp,sp,-32
    80002550:	00813823          	sd	s0,16(sp)
    80002554:	00913423          	sd	s1,8(sp)
    80002558:	00113c23          	sd	ra,24(sp)
    8000255c:	02010413          	addi	s0,sp,32
    80002560:	00050493          	mv	s1,a0
    80002564:	00000097          	auipc	ra,0x0
    80002568:	9b4080e7          	jalr	-1612(ra) # 80001f18 <cpuid>
    8000256c:	01813083          	ld	ra,24(sp)
    80002570:	01013403          	ld	s0,16(sp)
    80002574:	00d5179b          	slliw	a5,a0,0xd
    80002578:	0c201737          	lui	a4,0xc201
    8000257c:	00f707b3          	add	a5,a4,a5
    80002580:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002584:	00813483          	ld	s1,8(sp)
    80002588:	02010113          	addi	sp,sp,32
    8000258c:	00008067          	ret

0000000080002590 <consolewrite>:
    80002590:	fb010113          	addi	sp,sp,-80
    80002594:	04813023          	sd	s0,64(sp)
    80002598:	04113423          	sd	ra,72(sp)
    8000259c:	02913c23          	sd	s1,56(sp)
    800025a0:	03213823          	sd	s2,48(sp)
    800025a4:	03313423          	sd	s3,40(sp)
    800025a8:	03413023          	sd	s4,32(sp)
    800025ac:	01513c23          	sd	s5,24(sp)
    800025b0:	05010413          	addi	s0,sp,80
    800025b4:	06c05c63          	blez	a2,8000262c <consolewrite+0x9c>
    800025b8:	00060993          	mv	s3,a2
    800025bc:	00050a13          	mv	s4,a0
    800025c0:	00058493          	mv	s1,a1
    800025c4:	00000913          	li	s2,0
    800025c8:	fff00a93          	li	s5,-1
    800025cc:	01c0006f          	j	800025e8 <consolewrite+0x58>
    800025d0:	fbf44503          	lbu	a0,-65(s0)
    800025d4:	0019091b          	addiw	s2,s2,1
    800025d8:	00148493          	addi	s1,s1,1
    800025dc:	00001097          	auipc	ra,0x1
    800025e0:	a9c080e7          	jalr	-1380(ra) # 80003078 <uartputc>
    800025e4:	03298063          	beq	s3,s2,80002604 <consolewrite+0x74>
    800025e8:	00048613          	mv	a2,s1
    800025ec:	00100693          	li	a3,1
    800025f0:	000a0593          	mv	a1,s4
    800025f4:	fbf40513          	addi	a0,s0,-65
    800025f8:	00000097          	auipc	ra,0x0
    800025fc:	9d8080e7          	jalr	-1576(ra) # 80001fd0 <either_copyin>
    80002600:	fd5518e3          	bne	a0,s5,800025d0 <consolewrite+0x40>
    80002604:	04813083          	ld	ra,72(sp)
    80002608:	04013403          	ld	s0,64(sp)
    8000260c:	03813483          	ld	s1,56(sp)
    80002610:	02813983          	ld	s3,40(sp)
    80002614:	02013a03          	ld	s4,32(sp)
    80002618:	01813a83          	ld	s5,24(sp)
    8000261c:	00090513          	mv	a0,s2
    80002620:	03013903          	ld	s2,48(sp)
    80002624:	05010113          	addi	sp,sp,80
    80002628:	00008067          	ret
    8000262c:	00000913          	li	s2,0
    80002630:	fd5ff06f          	j	80002604 <consolewrite+0x74>

0000000080002634 <consoleread>:
    80002634:	f9010113          	addi	sp,sp,-112
    80002638:	06813023          	sd	s0,96(sp)
    8000263c:	04913c23          	sd	s1,88(sp)
    80002640:	05213823          	sd	s2,80(sp)
    80002644:	05313423          	sd	s3,72(sp)
    80002648:	05413023          	sd	s4,64(sp)
    8000264c:	03513c23          	sd	s5,56(sp)
    80002650:	03613823          	sd	s6,48(sp)
    80002654:	03713423          	sd	s7,40(sp)
    80002658:	03813023          	sd	s8,32(sp)
    8000265c:	06113423          	sd	ra,104(sp)
    80002660:	01913c23          	sd	s9,24(sp)
    80002664:	07010413          	addi	s0,sp,112
    80002668:	00060b93          	mv	s7,a2
    8000266c:	00050913          	mv	s2,a0
    80002670:	00058c13          	mv	s8,a1
    80002674:	00060b1b          	sext.w	s6,a2
    80002678:	00003497          	auipc	s1,0x3
    8000267c:	45048493          	addi	s1,s1,1104 # 80005ac8 <cons>
    80002680:	00400993          	li	s3,4
    80002684:	fff00a13          	li	s4,-1
    80002688:	00a00a93          	li	s5,10
    8000268c:	05705e63          	blez	s7,800026e8 <consoleread+0xb4>
    80002690:	09c4a703          	lw	a4,156(s1)
    80002694:	0984a783          	lw	a5,152(s1)
    80002698:	0007071b          	sext.w	a4,a4
    8000269c:	08e78463          	beq	a5,a4,80002724 <consoleread+0xf0>
    800026a0:	07f7f713          	andi	a4,a5,127
    800026a4:	00e48733          	add	a4,s1,a4
    800026a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800026ac:	0017869b          	addiw	a3,a5,1
    800026b0:	08d4ac23          	sw	a3,152(s1)
    800026b4:	00070c9b          	sext.w	s9,a4
    800026b8:	0b370663          	beq	a4,s3,80002764 <consoleread+0x130>
    800026bc:	00100693          	li	a3,1
    800026c0:	f9f40613          	addi	a2,s0,-97
    800026c4:	000c0593          	mv	a1,s8
    800026c8:	00090513          	mv	a0,s2
    800026cc:	f8e40fa3          	sb	a4,-97(s0)
    800026d0:	00000097          	auipc	ra,0x0
    800026d4:	8b4080e7          	jalr	-1868(ra) # 80001f84 <either_copyout>
    800026d8:	01450863          	beq	a0,s4,800026e8 <consoleread+0xb4>
    800026dc:	001c0c13          	addi	s8,s8,1
    800026e0:	fffb8b9b          	addiw	s7,s7,-1
    800026e4:	fb5c94e3          	bne	s9,s5,8000268c <consoleread+0x58>
    800026e8:	000b851b          	sext.w	a0,s7
    800026ec:	06813083          	ld	ra,104(sp)
    800026f0:	06013403          	ld	s0,96(sp)
    800026f4:	05813483          	ld	s1,88(sp)
    800026f8:	05013903          	ld	s2,80(sp)
    800026fc:	04813983          	ld	s3,72(sp)
    80002700:	04013a03          	ld	s4,64(sp)
    80002704:	03813a83          	ld	s5,56(sp)
    80002708:	02813b83          	ld	s7,40(sp)
    8000270c:	02013c03          	ld	s8,32(sp)
    80002710:	01813c83          	ld	s9,24(sp)
    80002714:	40ab053b          	subw	a0,s6,a0
    80002718:	03013b03          	ld	s6,48(sp)
    8000271c:	07010113          	addi	sp,sp,112
    80002720:	00008067          	ret
    80002724:	00001097          	auipc	ra,0x1
    80002728:	1d8080e7          	jalr	472(ra) # 800038fc <push_on>
    8000272c:	0984a703          	lw	a4,152(s1)
    80002730:	09c4a783          	lw	a5,156(s1)
    80002734:	0007879b          	sext.w	a5,a5
    80002738:	fef70ce3          	beq	a4,a5,80002730 <consoleread+0xfc>
    8000273c:	00001097          	auipc	ra,0x1
    80002740:	234080e7          	jalr	564(ra) # 80003970 <pop_on>
    80002744:	0984a783          	lw	a5,152(s1)
    80002748:	07f7f713          	andi	a4,a5,127
    8000274c:	00e48733          	add	a4,s1,a4
    80002750:	01874703          	lbu	a4,24(a4)
    80002754:	0017869b          	addiw	a3,a5,1
    80002758:	08d4ac23          	sw	a3,152(s1)
    8000275c:	00070c9b          	sext.w	s9,a4
    80002760:	f5371ee3          	bne	a4,s3,800026bc <consoleread+0x88>
    80002764:	000b851b          	sext.w	a0,s7
    80002768:	f96bf2e3          	bgeu	s7,s6,800026ec <consoleread+0xb8>
    8000276c:	08f4ac23          	sw	a5,152(s1)
    80002770:	f7dff06f          	j	800026ec <consoleread+0xb8>

0000000080002774 <consputc>:
    80002774:	10000793          	li	a5,256
    80002778:	00f50663          	beq	a0,a5,80002784 <consputc+0x10>
    8000277c:	00001317          	auipc	t1,0x1
    80002780:	9f430067          	jr	-1548(t1) # 80003170 <uartputc_sync>
    80002784:	ff010113          	addi	sp,sp,-16
    80002788:	00113423          	sd	ra,8(sp)
    8000278c:	00813023          	sd	s0,0(sp)
    80002790:	01010413          	addi	s0,sp,16
    80002794:	00800513          	li	a0,8
    80002798:	00001097          	auipc	ra,0x1
    8000279c:	9d8080e7          	jalr	-1576(ra) # 80003170 <uartputc_sync>
    800027a0:	02000513          	li	a0,32
    800027a4:	00001097          	auipc	ra,0x1
    800027a8:	9cc080e7          	jalr	-1588(ra) # 80003170 <uartputc_sync>
    800027ac:	00013403          	ld	s0,0(sp)
    800027b0:	00813083          	ld	ra,8(sp)
    800027b4:	00800513          	li	a0,8
    800027b8:	01010113          	addi	sp,sp,16
    800027bc:	00001317          	auipc	t1,0x1
    800027c0:	9b430067          	jr	-1612(t1) # 80003170 <uartputc_sync>

00000000800027c4 <consoleintr>:
    800027c4:	fe010113          	addi	sp,sp,-32
    800027c8:	00813823          	sd	s0,16(sp)
    800027cc:	00913423          	sd	s1,8(sp)
    800027d0:	01213023          	sd	s2,0(sp)
    800027d4:	00113c23          	sd	ra,24(sp)
    800027d8:	02010413          	addi	s0,sp,32
    800027dc:	00003917          	auipc	s2,0x3
    800027e0:	2ec90913          	addi	s2,s2,748 # 80005ac8 <cons>
    800027e4:	00050493          	mv	s1,a0
    800027e8:	00090513          	mv	a0,s2
    800027ec:	00001097          	auipc	ra,0x1
    800027f0:	e40080e7          	jalr	-448(ra) # 8000362c <acquire>
    800027f4:	02048c63          	beqz	s1,8000282c <consoleintr+0x68>
    800027f8:	0a092783          	lw	a5,160(s2)
    800027fc:	09892703          	lw	a4,152(s2)
    80002800:	07f00693          	li	a3,127
    80002804:	40e7873b          	subw	a4,a5,a4
    80002808:	02e6e263          	bltu	a3,a4,8000282c <consoleintr+0x68>
    8000280c:	00d00713          	li	a4,13
    80002810:	04e48063          	beq	s1,a4,80002850 <consoleintr+0x8c>
    80002814:	07f7f713          	andi	a4,a5,127
    80002818:	00e90733          	add	a4,s2,a4
    8000281c:	0017879b          	addiw	a5,a5,1
    80002820:	0af92023          	sw	a5,160(s2)
    80002824:	00970c23          	sb	s1,24(a4)
    80002828:	08f92e23          	sw	a5,156(s2)
    8000282c:	01013403          	ld	s0,16(sp)
    80002830:	01813083          	ld	ra,24(sp)
    80002834:	00813483          	ld	s1,8(sp)
    80002838:	00013903          	ld	s2,0(sp)
    8000283c:	00003517          	auipc	a0,0x3
    80002840:	28c50513          	addi	a0,a0,652 # 80005ac8 <cons>
    80002844:	02010113          	addi	sp,sp,32
    80002848:	00001317          	auipc	t1,0x1
    8000284c:	eb030067          	jr	-336(t1) # 800036f8 <release>
    80002850:	00a00493          	li	s1,10
    80002854:	fc1ff06f          	j	80002814 <consoleintr+0x50>

0000000080002858 <consoleinit>:
    80002858:	fe010113          	addi	sp,sp,-32
    8000285c:	00113c23          	sd	ra,24(sp)
    80002860:	00813823          	sd	s0,16(sp)
    80002864:	00913423          	sd	s1,8(sp)
    80002868:	02010413          	addi	s0,sp,32
    8000286c:	00003497          	auipc	s1,0x3
    80002870:	25c48493          	addi	s1,s1,604 # 80005ac8 <cons>
    80002874:	00048513          	mv	a0,s1
    80002878:	00002597          	auipc	a1,0x2
    8000287c:	91058593          	addi	a1,a1,-1776 # 80004188 <bntOne+0x130>
    80002880:	00001097          	auipc	ra,0x1
    80002884:	d88080e7          	jalr	-632(ra) # 80003608 <initlock>
    80002888:	00000097          	auipc	ra,0x0
    8000288c:	7ac080e7          	jalr	1964(ra) # 80003034 <uartinit>
    80002890:	01813083          	ld	ra,24(sp)
    80002894:	01013403          	ld	s0,16(sp)
    80002898:	00000797          	auipc	a5,0x0
    8000289c:	d9c78793          	addi	a5,a5,-612 # 80002634 <consoleread>
    800028a0:	0af4bc23          	sd	a5,184(s1)
    800028a4:	00000797          	auipc	a5,0x0
    800028a8:	cec78793          	addi	a5,a5,-788 # 80002590 <consolewrite>
    800028ac:	0cf4b023          	sd	a5,192(s1)
    800028b0:	00813483          	ld	s1,8(sp)
    800028b4:	02010113          	addi	sp,sp,32
    800028b8:	00008067          	ret

00000000800028bc <console_read>:
    800028bc:	ff010113          	addi	sp,sp,-16
    800028c0:	00813423          	sd	s0,8(sp)
    800028c4:	01010413          	addi	s0,sp,16
    800028c8:	00813403          	ld	s0,8(sp)
    800028cc:	00003317          	auipc	t1,0x3
    800028d0:	2b433303          	ld	t1,692(t1) # 80005b80 <devsw+0x10>
    800028d4:	01010113          	addi	sp,sp,16
    800028d8:	00030067          	jr	t1

00000000800028dc <console_write>:
    800028dc:	ff010113          	addi	sp,sp,-16
    800028e0:	00813423          	sd	s0,8(sp)
    800028e4:	01010413          	addi	s0,sp,16
    800028e8:	00813403          	ld	s0,8(sp)
    800028ec:	00003317          	auipc	t1,0x3
    800028f0:	29c33303          	ld	t1,668(t1) # 80005b88 <devsw+0x18>
    800028f4:	01010113          	addi	sp,sp,16
    800028f8:	00030067          	jr	t1

00000000800028fc <panic>:
    800028fc:	fe010113          	addi	sp,sp,-32
    80002900:	00113c23          	sd	ra,24(sp)
    80002904:	00813823          	sd	s0,16(sp)
    80002908:	00913423          	sd	s1,8(sp)
    8000290c:	02010413          	addi	s0,sp,32
    80002910:	00050493          	mv	s1,a0
    80002914:	00002517          	auipc	a0,0x2
    80002918:	87c50513          	addi	a0,a0,-1924 # 80004190 <bntOne+0x138>
    8000291c:	00003797          	auipc	a5,0x3
    80002920:	3007a623          	sw	zero,780(a5) # 80005c28 <pr+0x18>
    80002924:	00000097          	auipc	ra,0x0
    80002928:	034080e7          	jalr	52(ra) # 80002958 <__printf>
    8000292c:	00048513          	mv	a0,s1
    80002930:	00000097          	auipc	ra,0x0
    80002934:	028080e7          	jalr	40(ra) # 80002958 <__printf>
    80002938:	00002517          	auipc	a0,0x2
    8000293c:	83850513          	addi	a0,a0,-1992 # 80004170 <bntOne+0x118>
    80002940:	00000097          	auipc	ra,0x0
    80002944:	018080e7          	jalr	24(ra) # 80002958 <__printf>
    80002948:	00100793          	li	a5,1
    8000294c:	00002717          	auipc	a4,0x2
    80002950:	06f72223          	sw	a5,100(a4) # 800049b0 <panicked>
    80002954:	0000006f          	j	80002954 <panic+0x58>

0000000080002958 <__printf>:
    80002958:	f3010113          	addi	sp,sp,-208
    8000295c:	08813023          	sd	s0,128(sp)
    80002960:	07313423          	sd	s3,104(sp)
    80002964:	09010413          	addi	s0,sp,144
    80002968:	05813023          	sd	s8,64(sp)
    8000296c:	08113423          	sd	ra,136(sp)
    80002970:	06913c23          	sd	s1,120(sp)
    80002974:	07213823          	sd	s2,112(sp)
    80002978:	07413023          	sd	s4,96(sp)
    8000297c:	05513c23          	sd	s5,88(sp)
    80002980:	05613823          	sd	s6,80(sp)
    80002984:	05713423          	sd	s7,72(sp)
    80002988:	03913c23          	sd	s9,56(sp)
    8000298c:	03a13823          	sd	s10,48(sp)
    80002990:	03b13423          	sd	s11,40(sp)
    80002994:	00003317          	auipc	t1,0x3
    80002998:	27c30313          	addi	t1,t1,636 # 80005c10 <pr>
    8000299c:	01832c03          	lw	s8,24(t1)
    800029a0:	00b43423          	sd	a1,8(s0)
    800029a4:	00c43823          	sd	a2,16(s0)
    800029a8:	00d43c23          	sd	a3,24(s0)
    800029ac:	02e43023          	sd	a4,32(s0)
    800029b0:	02f43423          	sd	a5,40(s0)
    800029b4:	03043823          	sd	a6,48(s0)
    800029b8:	03143c23          	sd	a7,56(s0)
    800029bc:	00050993          	mv	s3,a0
    800029c0:	4a0c1663          	bnez	s8,80002e6c <__printf+0x514>
    800029c4:	60098c63          	beqz	s3,80002fdc <__printf+0x684>
    800029c8:	0009c503          	lbu	a0,0(s3)
    800029cc:	00840793          	addi	a5,s0,8
    800029d0:	f6f43c23          	sd	a5,-136(s0)
    800029d4:	00000493          	li	s1,0
    800029d8:	22050063          	beqz	a0,80002bf8 <__printf+0x2a0>
    800029dc:	00002a37          	lui	s4,0x2
    800029e0:	00018ab7          	lui	s5,0x18
    800029e4:	000f4b37          	lui	s6,0xf4
    800029e8:	00989bb7          	lui	s7,0x989
    800029ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800029f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800029f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800029f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800029fc:	00148c9b          	addiw	s9,s1,1
    80002a00:	02500793          	li	a5,37
    80002a04:	01998933          	add	s2,s3,s9
    80002a08:	38f51263          	bne	a0,a5,80002d8c <__printf+0x434>
    80002a0c:	00094783          	lbu	a5,0(s2)
    80002a10:	00078c9b          	sext.w	s9,a5
    80002a14:	1e078263          	beqz	a5,80002bf8 <__printf+0x2a0>
    80002a18:	0024849b          	addiw	s1,s1,2
    80002a1c:	07000713          	li	a4,112
    80002a20:	00998933          	add	s2,s3,s1
    80002a24:	38e78a63          	beq	a5,a4,80002db8 <__printf+0x460>
    80002a28:	20f76863          	bltu	a4,a5,80002c38 <__printf+0x2e0>
    80002a2c:	42a78863          	beq	a5,a0,80002e5c <__printf+0x504>
    80002a30:	06400713          	li	a4,100
    80002a34:	40e79663          	bne	a5,a4,80002e40 <__printf+0x4e8>
    80002a38:	f7843783          	ld	a5,-136(s0)
    80002a3c:	0007a603          	lw	a2,0(a5)
    80002a40:	00878793          	addi	a5,a5,8
    80002a44:	f6f43c23          	sd	a5,-136(s0)
    80002a48:	42064a63          	bltz	a2,80002e7c <__printf+0x524>
    80002a4c:	00a00713          	li	a4,10
    80002a50:	02e677bb          	remuw	a5,a2,a4
    80002a54:	00001d97          	auipc	s11,0x1
    80002a58:	764d8d93          	addi	s11,s11,1892 # 800041b8 <digits>
    80002a5c:	00900593          	li	a1,9
    80002a60:	0006051b          	sext.w	a0,a2
    80002a64:	00000c93          	li	s9,0
    80002a68:	02079793          	slli	a5,a5,0x20
    80002a6c:	0207d793          	srli	a5,a5,0x20
    80002a70:	00fd87b3          	add	a5,s11,a5
    80002a74:	0007c783          	lbu	a5,0(a5)
    80002a78:	02e656bb          	divuw	a3,a2,a4
    80002a7c:	f8f40023          	sb	a5,-128(s0)
    80002a80:	14c5d863          	bge	a1,a2,80002bd0 <__printf+0x278>
    80002a84:	06300593          	li	a1,99
    80002a88:	00100c93          	li	s9,1
    80002a8c:	02e6f7bb          	remuw	a5,a3,a4
    80002a90:	02079793          	slli	a5,a5,0x20
    80002a94:	0207d793          	srli	a5,a5,0x20
    80002a98:	00fd87b3          	add	a5,s11,a5
    80002a9c:	0007c783          	lbu	a5,0(a5)
    80002aa0:	02e6d73b          	divuw	a4,a3,a4
    80002aa4:	f8f400a3          	sb	a5,-127(s0)
    80002aa8:	12a5f463          	bgeu	a1,a0,80002bd0 <__printf+0x278>
    80002aac:	00a00693          	li	a3,10
    80002ab0:	00900593          	li	a1,9
    80002ab4:	02d777bb          	remuw	a5,a4,a3
    80002ab8:	02079793          	slli	a5,a5,0x20
    80002abc:	0207d793          	srli	a5,a5,0x20
    80002ac0:	00fd87b3          	add	a5,s11,a5
    80002ac4:	0007c503          	lbu	a0,0(a5)
    80002ac8:	02d757bb          	divuw	a5,a4,a3
    80002acc:	f8a40123          	sb	a0,-126(s0)
    80002ad0:	48e5f263          	bgeu	a1,a4,80002f54 <__printf+0x5fc>
    80002ad4:	06300513          	li	a0,99
    80002ad8:	02d7f5bb          	remuw	a1,a5,a3
    80002adc:	02059593          	slli	a1,a1,0x20
    80002ae0:	0205d593          	srli	a1,a1,0x20
    80002ae4:	00bd85b3          	add	a1,s11,a1
    80002ae8:	0005c583          	lbu	a1,0(a1)
    80002aec:	02d7d7bb          	divuw	a5,a5,a3
    80002af0:	f8b401a3          	sb	a1,-125(s0)
    80002af4:	48e57263          	bgeu	a0,a4,80002f78 <__printf+0x620>
    80002af8:	3e700513          	li	a0,999
    80002afc:	02d7f5bb          	remuw	a1,a5,a3
    80002b00:	02059593          	slli	a1,a1,0x20
    80002b04:	0205d593          	srli	a1,a1,0x20
    80002b08:	00bd85b3          	add	a1,s11,a1
    80002b0c:	0005c583          	lbu	a1,0(a1)
    80002b10:	02d7d7bb          	divuw	a5,a5,a3
    80002b14:	f8b40223          	sb	a1,-124(s0)
    80002b18:	46e57663          	bgeu	a0,a4,80002f84 <__printf+0x62c>
    80002b1c:	02d7f5bb          	remuw	a1,a5,a3
    80002b20:	02059593          	slli	a1,a1,0x20
    80002b24:	0205d593          	srli	a1,a1,0x20
    80002b28:	00bd85b3          	add	a1,s11,a1
    80002b2c:	0005c583          	lbu	a1,0(a1)
    80002b30:	02d7d7bb          	divuw	a5,a5,a3
    80002b34:	f8b402a3          	sb	a1,-123(s0)
    80002b38:	46ea7863          	bgeu	s4,a4,80002fa8 <__printf+0x650>
    80002b3c:	02d7f5bb          	remuw	a1,a5,a3
    80002b40:	02059593          	slli	a1,a1,0x20
    80002b44:	0205d593          	srli	a1,a1,0x20
    80002b48:	00bd85b3          	add	a1,s11,a1
    80002b4c:	0005c583          	lbu	a1,0(a1)
    80002b50:	02d7d7bb          	divuw	a5,a5,a3
    80002b54:	f8b40323          	sb	a1,-122(s0)
    80002b58:	3eeaf863          	bgeu	s5,a4,80002f48 <__printf+0x5f0>
    80002b5c:	02d7f5bb          	remuw	a1,a5,a3
    80002b60:	02059593          	slli	a1,a1,0x20
    80002b64:	0205d593          	srli	a1,a1,0x20
    80002b68:	00bd85b3          	add	a1,s11,a1
    80002b6c:	0005c583          	lbu	a1,0(a1)
    80002b70:	02d7d7bb          	divuw	a5,a5,a3
    80002b74:	f8b403a3          	sb	a1,-121(s0)
    80002b78:	42eb7e63          	bgeu	s6,a4,80002fb4 <__printf+0x65c>
    80002b7c:	02d7f5bb          	remuw	a1,a5,a3
    80002b80:	02059593          	slli	a1,a1,0x20
    80002b84:	0205d593          	srli	a1,a1,0x20
    80002b88:	00bd85b3          	add	a1,s11,a1
    80002b8c:	0005c583          	lbu	a1,0(a1)
    80002b90:	02d7d7bb          	divuw	a5,a5,a3
    80002b94:	f8b40423          	sb	a1,-120(s0)
    80002b98:	42ebfc63          	bgeu	s7,a4,80002fd0 <__printf+0x678>
    80002b9c:	02079793          	slli	a5,a5,0x20
    80002ba0:	0207d793          	srli	a5,a5,0x20
    80002ba4:	00fd8db3          	add	s11,s11,a5
    80002ba8:	000dc703          	lbu	a4,0(s11)
    80002bac:	00a00793          	li	a5,10
    80002bb0:	00900c93          	li	s9,9
    80002bb4:	f8e404a3          	sb	a4,-119(s0)
    80002bb8:	00065c63          	bgez	a2,80002bd0 <__printf+0x278>
    80002bbc:	f9040713          	addi	a4,s0,-112
    80002bc0:	00f70733          	add	a4,a4,a5
    80002bc4:	02d00693          	li	a3,45
    80002bc8:	fed70823          	sb	a3,-16(a4)
    80002bcc:	00078c93          	mv	s9,a5
    80002bd0:	f8040793          	addi	a5,s0,-128
    80002bd4:	01978cb3          	add	s9,a5,s9
    80002bd8:	f7f40d13          	addi	s10,s0,-129
    80002bdc:	000cc503          	lbu	a0,0(s9)
    80002be0:	fffc8c93          	addi	s9,s9,-1
    80002be4:	00000097          	auipc	ra,0x0
    80002be8:	b90080e7          	jalr	-1136(ra) # 80002774 <consputc>
    80002bec:	ffac98e3          	bne	s9,s10,80002bdc <__printf+0x284>
    80002bf0:	00094503          	lbu	a0,0(s2)
    80002bf4:	e00514e3          	bnez	a0,800029fc <__printf+0xa4>
    80002bf8:	1a0c1663          	bnez	s8,80002da4 <__printf+0x44c>
    80002bfc:	08813083          	ld	ra,136(sp)
    80002c00:	08013403          	ld	s0,128(sp)
    80002c04:	07813483          	ld	s1,120(sp)
    80002c08:	07013903          	ld	s2,112(sp)
    80002c0c:	06813983          	ld	s3,104(sp)
    80002c10:	06013a03          	ld	s4,96(sp)
    80002c14:	05813a83          	ld	s5,88(sp)
    80002c18:	05013b03          	ld	s6,80(sp)
    80002c1c:	04813b83          	ld	s7,72(sp)
    80002c20:	04013c03          	ld	s8,64(sp)
    80002c24:	03813c83          	ld	s9,56(sp)
    80002c28:	03013d03          	ld	s10,48(sp)
    80002c2c:	02813d83          	ld	s11,40(sp)
    80002c30:	0d010113          	addi	sp,sp,208
    80002c34:	00008067          	ret
    80002c38:	07300713          	li	a4,115
    80002c3c:	1ce78a63          	beq	a5,a4,80002e10 <__printf+0x4b8>
    80002c40:	07800713          	li	a4,120
    80002c44:	1ee79e63          	bne	a5,a4,80002e40 <__printf+0x4e8>
    80002c48:	f7843783          	ld	a5,-136(s0)
    80002c4c:	0007a703          	lw	a4,0(a5)
    80002c50:	00878793          	addi	a5,a5,8
    80002c54:	f6f43c23          	sd	a5,-136(s0)
    80002c58:	28074263          	bltz	a4,80002edc <__printf+0x584>
    80002c5c:	00001d97          	auipc	s11,0x1
    80002c60:	55cd8d93          	addi	s11,s11,1372 # 800041b8 <digits>
    80002c64:	00f77793          	andi	a5,a4,15
    80002c68:	00fd87b3          	add	a5,s11,a5
    80002c6c:	0007c683          	lbu	a3,0(a5)
    80002c70:	00f00613          	li	a2,15
    80002c74:	0007079b          	sext.w	a5,a4
    80002c78:	f8d40023          	sb	a3,-128(s0)
    80002c7c:	0047559b          	srliw	a1,a4,0x4
    80002c80:	0047569b          	srliw	a3,a4,0x4
    80002c84:	00000c93          	li	s9,0
    80002c88:	0ee65063          	bge	a2,a4,80002d68 <__printf+0x410>
    80002c8c:	00f6f693          	andi	a3,a3,15
    80002c90:	00dd86b3          	add	a3,s11,a3
    80002c94:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002c98:	0087d79b          	srliw	a5,a5,0x8
    80002c9c:	00100c93          	li	s9,1
    80002ca0:	f8d400a3          	sb	a3,-127(s0)
    80002ca4:	0cb67263          	bgeu	a2,a1,80002d68 <__printf+0x410>
    80002ca8:	00f7f693          	andi	a3,a5,15
    80002cac:	00dd86b3          	add	a3,s11,a3
    80002cb0:	0006c583          	lbu	a1,0(a3)
    80002cb4:	00f00613          	li	a2,15
    80002cb8:	0047d69b          	srliw	a3,a5,0x4
    80002cbc:	f8b40123          	sb	a1,-126(s0)
    80002cc0:	0047d593          	srli	a1,a5,0x4
    80002cc4:	28f67e63          	bgeu	a2,a5,80002f60 <__printf+0x608>
    80002cc8:	00f6f693          	andi	a3,a3,15
    80002ccc:	00dd86b3          	add	a3,s11,a3
    80002cd0:	0006c503          	lbu	a0,0(a3)
    80002cd4:	0087d813          	srli	a6,a5,0x8
    80002cd8:	0087d69b          	srliw	a3,a5,0x8
    80002cdc:	f8a401a3          	sb	a0,-125(s0)
    80002ce0:	28b67663          	bgeu	a2,a1,80002f6c <__printf+0x614>
    80002ce4:	00f6f693          	andi	a3,a3,15
    80002ce8:	00dd86b3          	add	a3,s11,a3
    80002cec:	0006c583          	lbu	a1,0(a3)
    80002cf0:	00c7d513          	srli	a0,a5,0xc
    80002cf4:	00c7d69b          	srliw	a3,a5,0xc
    80002cf8:	f8b40223          	sb	a1,-124(s0)
    80002cfc:	29067a63          	bgeu	a2,a6,80002f90 <__printf+0x638>
    80002d00:	00f6f693          	andi	a3,a3,15
    80002d04:	00dd86b3          	add	a3,s11,a3
    80002d08:	0006c583          	lbu	a1,0(a3)
    80002d0c:	0107d813          	srli	a6,a5,0x10
    80002d10:	0107d69b          	srliw	a3,a5,0x10
    80002d14:	f8b402a3          	sb	a1,-123(s0)
    80002d18:	28a67263          	bgeu	a2,a0,80002f9c <__printf+0x644>
    80002d1c:	00f6f693          	andi	a3,a3,15
    80002d20:	00dd86b3          	add	a3,s11,a3
    80002d24:	0006c683          	lbu	a3,0(a3)
    80002d28:	0147d79b          	srliw	a5,a5,0x14
    80002d2c:	f8d40323          	sb	a3,-122(s0)
    80002d30:	21067663          	bgeu	a2,a6,80002f3c <__printf+0x5e4>
    80002d34:	02079793          	slli	a5,a5,0x20
    80002d38:	0207d793          	srli	a5,a5,0x20
    80002d3c:	00fd8db3          	add	s11,s11,a5
    80002d40:	000dc683          	lbu	a3,0(s11)
    80002d44:	00800793          	li	a5,8
    80002d48:	00700c93          	li	s9,7
    80002d4c:	f8d403a3          	sb	a3,-121(s0)
    80002d50:	00075c63          	bgez	a4,80002d68 <__printf+0x410>
    80002d54:	f9040713          	addi	a4,s0,-112
    80002d58:	00f70733          	add	a4,a4,a5
    80002d5c:	02d00693          	li	a3,45
    80002d60:	fed70823          	sb	a3,-16(a4)
    80002d64:	00078c93          	mv	s9,a5
    80002d68:	f8040793          	addi	a5,s0,-128
    80002d6c:	01978cb3          	add	s9,a5,s9
    80002d70:	f7f40d13          	addi	s10,s0,-129
    80002d74:	000cc503          	lbu	a0,0(s9)
    80002d78:	fffc8c93          	addi	s9,s9,-1
    80002d7c:	00000097          	auipc	ra,0x0
    80002d80:	9f8080e7          	jalr	-1544(ra) # 80002774 <consputc>
    80002d84:	ff9d18e3          	bne	s10,s9,80002d74 <__printf+0x41c>
    80002d88:	0100006f          	j	80002d98 <__printf+0x440>
    80002d8c:	00000097          	auipc	ra,0x0
    80002d90:	9e8080e7          	jalr	-1560(ra) # 80002774 <consputc>
    80002d94:	000c8493          	mv	s1,s9
    80002d98:	00094503          	lbu	a0,0(s2)
    80002d9c:	c60510e3          	bnez	a0,800029fc <__printf+0xa4>
    80002da0:	e40c0ee3          	beqz	s8,80002bfc <__printf+0x2a4>
    80002da4:	00003517          	auipc	a0,0x3
    80002da8:	e6c50513          	addi	a0,a0,-404 # 80005c10 <pr>
    80002dac:	00001097          	auipc	ra,0x1
    80002db0:	94c080e7          	jalr	-1716(ra) # 800036f8 <release>
    80002db4:	e49ff06f          	j	80002bfc <__printf+0x2a4>
    80002db8:	f7843783          	ld	a5,-136(s0)
    80002dbc:	03000513          	li	a0,48
    80002dc0:	01000d13          	li	s10,16
    80002dc4:	00878713          	addi	a4,a5,8
    80002dc8:	0007bc83          	ld	s9,0(a5)
    80002dcc:	f6e43c23          	sd	a4,-136(s0)
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	9a4080e7          	jalr	-1628(ra) # 80002774 <consputc>
    80002dd8:	07800513          	li	a0,120
    80002ddc:	00000097          	auipc	ra,0x0
    80002de0:	998080e7          	jalr	-1640(ra) # 80002774 <consputc>
    80002de4:	00001d97          	auipc	s11,0x1
    80002de8:	3d4d8d93          	addi	s11,s11,980 # 800041b8 <digits>
    80002dec:	03ccd793          	srli	a5,s9,0x3c
    80002df0:	00fd87b3          	add	a5,s11,a5
    80002df4:	0007c503          	lbu	a0,0(a5)
    80002df8:	fffd0d1b          	addiw	s10,s10,-1
    80002dfc:	004c9c93          	slli	s9,s9,0x4
    80002e00:	00000097          	auipc	ra,0x0
    80002e04:	974080e7          	jalr	-1676(ra) # 80002774 <consputc>
    80002e08:	fe0d12e3          	bnez	s10,80002dec <__printf+0x494>
    80002e0c:	f8dff06f          	j	80002d98 <__printf+0x440>
    80002e10:	f7843783          	ld	a5,-136(s0)
    80002e14:	0007bc83          	ld	s9,0(a5)
    80002e18:	00878793          	addi	a5,a5,8
    80002e1c:	f6f43c23          	sd	a5,-136(s0)
    80002e20:	000c9a63          	bnez	s9,80002e34 <__printf+0x4dc>
    80002e24:	1080006f          	j	80002f2c <__printf+0x5d4>
    80002e28:	001c8c93          	addi	s9,s9,1
    80002e2c:	00000097          	auipc	ra,0x0
    80002e30:	948080e7          	jalr	-1720(ra) # 80002774 <consputc>
    80002e34:	000cc503          	lbu	a0,0(s9)
    80002e38:	fe0518e3          	bnez	a0,80002e28 <__printf+0x4d0>
    80002e3c:	f5dff06f          	j	80002d98 <__printf+0x440>
    80002e40:	02500513          	li	a0,37
    80002e44:	00000097          	auipc	ra,0x0
    80002e48:	930080e7          	jalr	-1744(ra) # 80002774 <consputc>
    80002e4c:	000c8513          	mv	a0,s9
    80002e50:	00000097          	auipc	ra,0x0
    80002e54:	924080e7          	jalr	-1756(ra) # 80002774 <consputc>
    80002e58:	f41ff06f          	j	80002d98 <__printf+0x440>
    80002e5c:	02500513          	li	a0,37
    80002e60:	00000097          	auipc	ra,0x0
    80002e64:	914080e7          	jalr	-1772(ra) # 80002774 <consputc>
    80002e68:	f31ff06f          	j	80002d98 <__printf+0x440>
    80002e6c:	00030513          	mv	a0,t1
    80002e70:	00000097          	auipc	ra,0x0
    80002e74:	7bc080e7          	jalr	1980(ra) # 8000362c <acquire>
    80002e78:	b4dff06f          	j	800029c4 <__printf+0x6c>
    80002e7c:	40c0053b          	negw	a0,a2
    80002e80:	00a00713          	li	a4,10
    80002e84:	02e576bb          	remuw	a3,a0,a4
    80002e88:	00001d97          	auipc	s11,0x1
    80002e8c:	330d8d93          	addi	s11,s11,816 # 800041b8 <digits>
    80002e90:	ff700593          	li	a1,-9
    80002e94:	02069693          	slli	a3,a3,0x20
    80002e98:	0206d693          	srli	a3,a3,0x20
    80002e9c:	00dd86b3          	add	a3,s11,a3
    80002ea0:	0006c683          	lbu	a3,0(a3)
    80002ea4:	02e557bb          	divuw	a5,a0,a4
    80002ea8:	f8d40023          	sb	a3,-128(s0)
    80002eac:	10b65e63          	bge	a2,a1,80002fc8 <__printf+0x670>
    80002eb0:	06300593          	li	a1,99
    80002eb4:	02e7f6bb          	remuw	a3,a5,a4
    80002eb8:	02069693          	slli	a3,a3,0x20
    80002ebc:	0206d693          	srli	a3,a3,0x20
    80002ec0:	00dd86b3          	add	a3,s11,a3
    80002ec4:	0006c683          	lbu	a3,0(a3)
    80002ec8:	02e7d73b          	divuw	a4,a5,a4
    80002ecc:	00200793          	li	a5,2
    80002ed0:	f8d400a3          	sb	a3,-127(s0)
    80002ed4:	bca5ece3          	bltu	a1,a0,80002aac <__printf+0x154>
    80002ed8:	ce5ff06f          	j	80002bbc <__printf+0x264>
    80002edc:	40e007bb          	negw	a5,a4
    80002ee0:	00001d97          	auipc	s11,0x1
    80002ee4:	2d8d8d93          	addi	s11,s11,728 # 800041b8 <digits>
    80002ee8:	00f7f693          	andi	a3,a5,15
    80002eec:	00dd86b3          	add	a3,s11,a3
    80002ef0:	0006c583          	lbu	a1,0(a3)
    80002ef4:	ff100613          	li	a2,-15
    80002ef8:	0047d69b          	srliw	a3,a5,0x4
    80002efc:	f8b40023          	sb	a1,-128(s0)
    80002f00:	0047d59b          	srliw	a1,a5,0x4
    80002f04:	0ac75e63          	bge	a4,a2,80002fc0 <__printf+0x668>
    80002f08:	00f6f693          	andi	a3,a3,15
    80002f0c:	00dd86b3          	add	a3,s11,a3
    80002f10:	0006c603          	lbu	a2,0(a3)
    80002f14:	00f00693          	li	a3,15
    80002f18:	0087d79b          	srliw	a5,a5,0x8
    80002f1c:	f8c400a3          	sb	a2,-127(s0)
    80002f20:	d8b6e4e3          	bltu	a3,a1,80002ca8 <__printf+0x350>
    80002f24:	00200793          	li	a5,2
    80002f28:	e2dff06f          	j	80002d54 <__printf+0x3fc>
    80002f2c:	00001c97          	auipc	s9,0x1
    80002f30:	26cc8c93          	addi	s9,s9,620 # 80004198 <bntOne+0x140>
    80002f34:	02800513          	li	a0,40
    80002f38:	ef1ff06f          	j	80002e28 <__printf+0x4d0>
    80002f3c:	00700793          	li	a5,7
    80002f40:	00600c93          	li	s9,6
    80002f44:	e0dff06f          	j	80002d50 <__printf+0x3f8>
    80002f48:	00700793          	li	a5,7
    80002f4c:	00600c93          	li	s9,6
    80002f50:	c69ff06f          	j	80002bb8 <__printf+0x260>
    80002f54:	00300793          	li	a5,3
    80002f58:	00200c93          	li	s9,2
    80002f5c:	c5dff06f          	j	80002bb8 <__printf+0x260>
    80002f60:	00300793          	li	a5,3
    80002f64:	00200c93          	li	s9,2
    80002f68:	de9ff06f          	j	80002d50 <__printf+0x3f8>
    80002f6c:	00400793          	li	a5,4
    80002f70:	00300c93          	li	s9,3
    80002f74:	dddff06f          	j	80002d50 <__printf+0x3f8>
    80002f78:	00400793          	li	a5,4
    80002f7c:	00300c93          	li	s9,3
    80002f80:	c39ff06f          	j	80002bb8 <__printf+0x260>
    80002f84:	00500793          	li	a5,5
    80002f88:	00400c93          	li	s9,4
    80002f8c:	c2dff06f          	j	80002bb8 <__printf+0x260>
    80002f90:	00500793          	li	a5,5
    80002f94:	00400c93          	li	s9,4
    80002f98:	db9ff06f          	j	80002d50 <__printf+0x3f8>
    80002f9c:	00600793          	li	a5,6
    80002fa0:	00500c93          	li	s9,5
    80002fa4:	dadff06f          	j	80002d50 <__printf+0x3f8>
    80002fa8:	00600793          	li	a5,6
    80002fac:	00500c93          	li	s9,5
    80002fb0:	c09ff06f          	j	80002bb8 <__printf+0x260>
    80002fb4:	00800793          	li	a5,8
    80002fb8:	00700c93          	li	s9,7
    80002fbc:	bfdff06f          	j	80002bb8 <__printf+0x260>
    80002fc0:	00100793          	li	a5,1
    80002fc4:	d91ff06f          	j	80002d54 <__printf+0x3fc>
    80002fc8:	00100793          	li	a5,1
    80002fcc:	bf1ff06f          	j	80002bbc <__printf+0x264>
    80002fd0:	00900793          	li	a5,9
    80002fd4:	00800c93          	li	s9,8
    80002fd8:	be1ff06f          	j	80002bb8 <__printf+0x260>
    80002fdc:	00001517          	auipc	a0,0x1
    80002fe0:	1c450513          	addi	a0,a0,452 # 800041a0 <bntOne+0x148>
    80002fe4:	00000097          	auipc	ra,0x0
    80002fe8:	918080e7          	jalr	-1768(ra) # 800028fc <panic>

0000000080002fec <printfinit>:
    80002fec:	fe010113          	addi	sp,sp,-32
    80002ff0:	00813823          	sd	s0,16(sp)
    80002ff4:	00913423          	sd	s1,8(sp)
    80002ff8:	00113c23          	sd	ra,24(sp)
    80002ffc:	02010413          	addi	s0,sp,32
    80003000:	00003497          	auipc	s1,0x3
    80003004:	c1048493          	addi	s1,s1,-1008 # 80005c10 <pr>
    80003008:	00048513          	mv	a0,s1
    8000300c:	00001597          	auipc	a1,0x1
    80003010:	1a458593          	addi	a1,a1,420 # 800041b0 <bntOne+0x158>
    80003014:	00000097          	auipc	ra,0x0
    80003018:	5f4080e7          	jalr	1524(ra) # 80003608 <initlock>
    8000301c:	01813083          	ld	ra,24(sp)
    80003020:	01013403          	ld	s0,16(sp)
    80003024:	0004ac23          	sw	zero,24(s1)
    80003028:	00813483          	ld	s1,8(sp)
    8000302c:	02010113          	addi	sp,sp,32
    80003030:	00008067          	ret

0000000080003034 <uartinit>:
    80003034:	ff010113          	addi	sp,sp,-16
    80003038:	00813423          	sd	s0,8(sp)
    8000303c:	01010413          	addi	s0,sp,16
    80003040:	100007b7          	lui	a5,0x10000
    80003044:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003048:	f8000713          	li	a4,-128
    8000304c:	00e781a3          	sb	a4,3(a5)
    80003050:	00300713          	li	a4,3
    80003054:	00e78023          	sb	a4,0(a5)
    80003058:	000780a3          	sb	zero,1(a5)
    8000305c:	00e781a3          	sb	a4,3(a5)
    80003060:	00700693          	li	a3,7
    80003064:	00d78123          	sb	a3,2(a5)
    80003068:	00e780a3          	sb	a4,1(a5)
    8000306c:	00813403          	ld	s0,8(sp)
    80003070:	01010113          	addi	sp,sp,16
    80003074:	00008067          	ret

0000000080003078 <uartputc>:
    80003078:	00002797          	auipc	a5,0x2
    8000307c:	9387a783          	lw	a5,-1736(a5) # 800049b0 <panicked>
    80003080:	00078463          	beqz	a5,80003088 <uartputc+0x10>
    80003084:	0000006f          	j	80003084 <uartputc+0xc>
    80003088:	fd010113          	addi	sp,sp,-48
    8000308c:	02813023          	sd	s0,32(sp)
    80003090:	00913c23          	sd	s1,24(sp)
    80003094:	01213823          	sd	s2,16(sp)
    80003098:	01313423          	sd	s3,8(sp)
    8000309c:	02113423          	sd	ra,40(sp)
    800030a0:	03010413          	addi	s0,sp,48
    800030a4:	00002917          	auipc	s2,0x2
    800030a8:	91490913          	addi	s2,s2,-1772 # 800049b8 <uart_tx_r>
    800030ac:	00093783          	ld	a5,0(s2)
    800030b0:	00002497          	auipc	s1,0x2
    800030b4:	91048493          	addi	s1,s1,-1776 # 800049c0 <uart_tx_w>
    800030b8:	0004b703          	ld	a4,0(s1)
    800030bc:	02078693          	addi	a3,a5,32
    800030c0:	00050993          	mv	s3,a0
    800030c4:	02e69c63          	bne	a3,a4,800030fc <uartputc+0x84>
    800030c8:	00001097          	auipc	ra,0x1
    800030cc:	834080e7          	jalr	-1996(ra) # 800038fc <push_on>
    800030d0:	00093783          	ld	a5,0(s2)
    800030d4:	0004b703          	ld	a4,0(s1)
    800030d8:	02078793          	addi	a5,a5,32
    800030dc:	00e79463          	bne	a5,a4,800030e4 <uartputc+0x6c>
    800030e0:	0000006f          	j	800030e0 <uartputc+0x68>
    800030e4:	00001097          	auipc	ra,0x1
    800030e8:	88c080e7          	jalr	-1908(ra) # 80003970 <pop_on>
    800030ec:	00093783          	ld	a5,0(s2)
    800030f0:	0004b703          	ld	a4,0(s1)
    800030f4:	02078693          	addi	a3,a5,32
    800030f8:	fce688e3          	beq	a3,a4,800030c8 <uartputc+0x50>
    800030fc:	01f77693          	andi	a3,a4,31
    80003100:	00003597          	auipc	a1,0x3
    80003104:	b3058593          	addi	a1,a1,-1232 # 80005c30 <uart_tx_buf>
    80003108:	00d586b3          	add	a3,a1,a3
    8000310c:	00170713          	addi	a4,a4,1
    80003110:	01368023          	sb	s3,0(a3)
    80003114:	00e4b023          	sd	a4,0(s1)
    80003118:	10000637          	lui	a2,0x10000
    8000311c:	02f71063          	bne	a4,a5,8000313c <uartputc+0xc4>
    80003120:	0340006f          	j	80003154 <uartputc+0xdc>
    80003124:	00074703          	lbu	a4,0(a4)
    80003128:	00f93023          	sd	a5,0(s2)
    8000312c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003130:	00093783          	ld	a5,0(s2)
    80003134:	0004b703          	ld	a4,0(s1)
    80003138:	00f70e63          	beq	a4,a5,80003154 <uartputc+0xdc>
    8000313c:	00564683          	lbu	a3,5(a2)
    80003140:	01f7f713          	andi	a4,a5,31
    80003144:	00e58733          	add	a4,a1,a4
    80003148:	0206f693          	andi	a3,a3,32
    8000314c:	00178793          	addi	a5,a5,1
    80003150:	fc069ae3          	bnez	a3,80003124 <uartputc+0xac>
    80003154:	02813083          	ld	ra,40(sp)
    80003158:	02013403          	ld	s0,32(sp)
    8000315c:	01813483          	ld	s1,24(sp)
    80003160:	01013903          	ld	s2,16(sp)
    80003164:	00813983          	ld	s3,8(sp)
    80003168:	03010113          	addi	sp,sp,48
    8000316c:	00008067          	ret

0000000080003170 <uartputc_sync>:
    80003170:	ff010113          	addi	sp,sp,-16
    80003174:	00813423          	sd	s0,8(sp)
    80003178:	01010413          	addi	s0,sp,16
    8000317c:	00002717          	auipc	a4,0x2
    80003180:	83472703          	lw	a4,-1996(a4) # 800049b0 <panicked>
    80003184:	02071663          	bnez	a4,800031b0 <uartputc_sync+0x40>
    80003188:	00050793          	mv	a5,a0
    8000318c:	100006b7          	lui	a3,0x10000
    80003190:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003194:	02077713          	andi	a4,a4,32
    80003198:	fe070ce3          	beqz	a4,80003190 <uartputc_sync+0x20>
    8000319c:	0ff7f793          	andi	a5,a5,255
    800031a0:	00f68023          	sb	a5,0(a3)
    800031a4:	00813403          	ld	s0,8(sp)
    800031a8:	01010113          	addi	sp,sp,16
    800031ac:	00008067          	ret
    800031b0:	0000006f          	j	800031b0 <uartputc_sync+0x40>

00000000800031b4 <uartstart>:
    800031b4:	ff010113          	addi	sp,sp,-16
    800031b8:	00813423          	sd	s0,8(sp)
    800031bc:	01010413          	addi	s0,sp,16
    800031c0:	00001617          	auipc	a2,0x1
    800031c4:	7f860613          	addi	a2,a2,2040 # 800049b8 <uart_tx_r>
    800031c8:	00001517          	auipc	a0,0x1
    800031cc:	7f850513          	addi	a0,a0,2040 # 800049c0 <uart_tx_w>
    800031d0:	00063783          	ld	a5,0(a2)
    800031d4:	00053703          	ld	a4,0(a0)
    800031d8:	04f70263          	beq	a4,a5,8000321c <uartstart+0x68>
    800031dc:	100005b7          	lui	a1,0x10000
    800031e0:	00003817          	auipc	a6,0x3
    800031e4:	a5080813          	addi	a6,a6,-1456 # 80005c30 <uart_tx_buf>
    800031e8:	01c0006f          	j	80003204 <uartstart+0x50>
    800031ec:	0006c703          	lbu	a4,0(a3)
    800031f0:	00f63023          	sd	a5,0(a2)
    800031f4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800031f8:	00063783          	ld	a5,0(a2)
    800031fc:	00053703          	ld	a4,0(a0)
    80003200:	00f70e63          	beq	a4,a5,8000321c <uartstart+0x68>
    80003204:	01f7f713          	andi	a4,a5,31
    80003208:	00e806b3          	add	a3,a6,a4
    8000320c:	0055c703          	lbu	a4,5(a1)
    80003210:	00178793          	addi	a5,a5,1
    80003214:	02077713          	andi	a4,a4,32
    80003218:	fc071ae3          	bnez	a4,800031ec <uartstart+0x38>
    8000321c:	00813403          	ld	s0,8(sp)
    80003220:	01010113          	addi	sp,sp,16
    80003224:	00008067          	ret

0000000080003228 <uartgetc>:
    80003228:	ff010113          	addi	sp,sp,-16
    8000322c:	00813423          	sd	s0,8(sp)
    80003230:	01010413          	addi	s0,sp,16
    80003234:	10000737          	lui	a4,0x10000
    80003238:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000323c:	0017f793          	andi	a5,a5,1
    80003240:	00078c63          	beqz	a5,80003258 <uartgetc+0x30>
    80003244:	00074503          	lbu	a0,0(a4)
    80003248:	0ff57513          	andi	a0,a0,255
    8000324c:	00813403          	ld	s0,8(sp)
    80003250:	01010113          	addi	sp,sp,16
    80003254:	00008067          	ret
    80003258:	fff00513          	li	a0,-1
    8000325c:	ff1ff06f          	j	8000324c <uartgetc+0x24>

0000000080003260 <uartintr>:
    80003260:	100007b7          	lui	a5,0x10000
    80003264:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003268:	0017f793          	andi	a5,a5,1
    8000326c:	0a078463          	beqz	a5,80003314 <uartintr+0xb4>
    80003270:	fe010113          	addi	sp,sp,-32
    80003274:	00813823          	sd	s0,16(sp)
    80003278:	00913423          	sd	s1,8(sp)
    8000327c:	00113c23          	sd	ra,24(sp)
    80003280:	02010413          	addi	s0,sp,32
    80003284:	100004b7          	lui	s1,0x10000
    80003288:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000328c:	0ff57513          	andi	a0,a0,255
    80003290:	fffff097          	auipc	ra,0xfffff
    80003294:	534080e7          	jalr	1332(ra) # 800027c4 <consoleintr>
    80003298:	0054c783          	lbu	a5,5(s1)
    8000329c:	0017f793          	andi	a5,a5,1
    800032a0:	fe0794e3          	bnez	a5,80003288 <uartintr+0x28>
    800032a4:	00001617          	auipc	a2,0x1
    800032a8:	71460613          	addi	a2,a2,1812 # 800049b8 <uart_tx_r>
    800032ac:	00001517          	auipc	a0,0x1
    800032b0:	71450513          	addi	a0,a0,1812 # 800049c0 <uart_tx_w>
    800032b4:	00063783          	ld	a5,0(a2)
    800032b8:	00053703          	ld	a4,0(a0)
    800032bc:	04f70263          	beq	a4,a5,80003300 <uartintr+0xa0>
    800032c0:	100005b7          	lui	a1,0x10000
    800032c4:	00003817          	auipc	a6,0x3
    800032c8:	96c80813          	addi	a6,a6,-1684 # 80005c30 <uart_tx_buf>
    800032cc:	01c0006f          	j	800032e8 <uartintr+0x88>
    800032d0:	0006c703          	lbu	a4,0(a3)
    800032d4:	00f63023          	sd	a5,0(a2)
    800032d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800032dc:	00063783          	ld	a5,0(a2)
    800032e0:	00053703          	ld	a4,0(a0)
    800032e4:	00f70e63          	beq	a4,a5,80003300 <uartintr+0xa0>
    800032e8:	01f7f713          	andi	a4,a5,31
    800032ec:	00e806b3          	add	a3,a6,a4
    800032f0:	0055c703          	lbu	a4,5(a1)
    800032f4:	00178793          	addi	a5,a5,1
    800032f8:	02077713          	andi	a4,a4,32
    800032fc:	fc071ae3          	bnez	a4,800032d0 <uartintr+0x70>
    80003300:	01813083          	ld	ra,24(sp)
    80003304:	01013403          	ld	s0,16(sp)
    80003308:	00813483          	ld	s1,8(sp)
    8000330c:	02010113          	addi	sp,sp,32
    80003310:	00008067          	ret
    80003314:	00001617          	auipc	a2,0x1
    80003318:	6a460613          	addi	a2,a2,1700 # 800049b8 <uart_tx_r>
    8000331c:	00001517          	auipc	a0,0x1
    80003320:	6a450513          	addi	a0,a0,1700 # 800049c0 <uart_tx_w>
    80003324:	00063783          	ld	a5,0(a2)
    80003328:	00053703          	ld	a4,0(a0)
    8000332c:	04f70263          	beq	a4,a5,80003370 <uartintr+0x110>
    80003330:	100005b7          	lui	a1,0x10000
    80003334:	00003817          	auipc	a6,0x3
    80003338:	8fc80813          	addi	a6,a6,-1796 # 80005c30 <uart_tx_buf>
    8000333c:	01c0006f          	j	80003358 <uartintr+0xf8>
    80003340:	0006c703          	lbu	a4,0(a3)
    80003344:	00f63023          	sd	a5,0(a2)
    80003348:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000334c:	00063783          	ld	a5,0(a2)
    80003350:	00053703          	ld	a4,0(a0)
    80003354:	02f70063          	beq	a4,a5,80003374 <uartintr+0x114>
    80003358:	01f7f713          	andi	a4,a5,31
    8000335c:	00e806b3          	add	a3,a6,a4
    80003360:	0055c703          	lbu	a4,5(a1)
    80003364:	00178793          	addi	a5,a5,1
    80003368:	02077713          	andi	a4,a4,32
    8000336c:	fc071ae3          	bnez	a4,80003340 <uartintr+0xe0>
    80003370:	00008067          	ret
    80003374:	00008067          	ret

0000000080003378 <kinit>:
    80003378:	fc010113          	addi	sp,sp,-64
    8000337c:	02913423          	sd	s1,40(sp)
    80003380:	fffff7b7          	lui	a5,0xfffff
    80003384:	00004497          	auipc	s1,0x4
    80003388:	8cb48493          	addi	s1,s1,-1845 # 80006c4f <end+0xfff>
    8000338c:	02813823          	sd	s0,48(sp)
    80003390:	01313c23          	sd	s3,24(sp)
    80003394:	00f4f4b3          	and	s1,s1,a5
    80003398:	02113c23          	sd	ra,56(sp)
    8000339c:	03213023          	sd	s2,32(sp)
    800033a0:	01413823          	sd	s4,16(sp)
    800033a4:	01513423          	sd	s5,8(sp)
    800033a8:	04010413          	addi	s0,sp,64
    800033ac:	000017b7          	lui	a5,0x1
    800033b0:	01100993          	li	s3,17
    800033b4:	00f487b3          	add	a5,s1,a5
    800033b8:	01b99993          	slli	s3,s3,0x1b
    800033bc:	06f9e063          	bltu	s3,a5,8000341c <kinit+0xa4>
    800033c0:	00003a97          	auipc	s5,0x3
    800033c4:	890a8a93          	addi	s5,s5,-1904 # 80005c50 <end>
    800033c8:	0754ec63          	bltu	s1,s5,80003440 <kinit+0xc8>
    800033cc:	0734fa63          	bgeu	s1,s3,80003440 <kinit+0xc8>
    800033d0:	00088a37          	lui	s4,0x88
    800033d4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800033d8:	00001917          	auipc	s2,0x1
    800033dc:	5f090913          	addi	s2,s2,1520 # 800049c8 <kmem>
    800033e0:	00ca1a13          	slli	s4,s4,0xc
    800033e4:	0140006f          	j	800033f8 <kinit+0x80>
    800033e8:	000017b7          	lui	a5,0x1
    800033ec:	00f484b3          	add	s1,s1,a5
    800033f0:	0554e863          	bltu	s1,s5,80003440 <kinit+0xc8>
    800033f4:	0534f663          	bgeu	s1,s3,80003440 <kinit+0xc8>
    800033f8:	00001637          	lui	a2,0x1
    800033fc:	00100593          	li	a1,1
    80003400:	00048513          	mv	a0,s1
    80003404:	00000097          	auipc	ra,0x0
    80003408:	5e4080e7          	jalr	1508(ra) # 800039e8 <__memset>
    8000340c:	00093783          	ld	a5,0(s2)
    80003410:	00f4b023          	sd	a5,0(s1)
    80003414:	00993023          	sd	s1,0(s2)
    80003418:	fd4498e3          	bne	s1,s4,800033e8 <kinit+0x70>
    8000341c:	03813083          	ld	ra,56(sp)
    80003420:	03013403          	ld	s0,48(sp)
    80003424:	02813483          	ld	s1,40(sp)
    80003428:	02013903          	ld	s2,32(sp)
    8000342c:	01813983          	ld	s3,24(sp)
    80003430:	01013a03          	ld	s4,16(sp)
    80003434:	00813a83          	ld	s5,8(sp)
    80003438:	04010113          	addi	sp,sp,64
    8000343c:	00008067          	ret
    80003440:	00001517          	auipc	a0,0x1
    80003444:	d9050513          	addi	a0,a0,-624 # 800041d0 <digits+0x18>
    80003448:	fffff097          	auipc	ra,0xfffff
    8000344c:	4b4080e7          	jalr	1204(ra) # 800028fc <panic>

0000000080003450 <freerange>:
    80003450:	fc010113          	addi	sp,sp,-64
    80003454:	000017b7          	lui	a5,0x1
    80003458:	02913423          	sd	s1,40(sp)
    8000345c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003460:	009504b3          	add	s1,a0,s1
    80003464:	fffff537          	lui	a0,0xfffff
    80003468:	02813823          	sd	s0,48(sp)
    8000346c:	02113c23          	sd	ra,56(sp)
    80003470:	03213023          	sd	s2,32(sp)
    80003474:	01313c23          	sd	s3,24(sp)
    80003478:	01413823          	sd	s4,16(sp)
    8000347c:	01513423          	sd	s5,8(sp)
    80003480:	01613023          	sd	s6,0(sp)
    80003484:	04010413          	addi	s0,sp,64
    80003488:	00a4f4b3          	and	s1,s1,a0
    8000348c:	00f487b3          	add	a5,s1,a5
    80003490:	06f5e463          	bltu	a1,a5,800034f8 <freerange+0xa8>
    80003494:	00002a97          	auipc	s5,0x2
    80003498:	7bca8a93          	addi	s5,s5,1980 # 80005c50 <end>
    8000349c:	0954e263          	bltu	s1,s5,80003520 <freerange+0xd0>
    800034a0:	01100993          	li	s3,17
    800034a4:	01b99993          	slli	s3,s3,0x1b
    800034a8:	0734fc63          	bgeu	s1,s3,80003520 <freerange+0xd0>
    800034ac:	00058a13          	mv	s4,a1
    800034b0:	00001917          	auipc	s2,0x1
    800034b4:	51890913          	addi	s2,s2,1304 # 800049c8 <kmem>
    800034b8:	00002b37          	lui	s6,0x2
    800034bc:	0140006f          	j	800034d0 <freerange+0x80>
    800034c0:	000017b7          	lui	a5,0x1
    800034c4:	00f484b3          	add	s1,s1,a5
    800034c8:	0554ec63          	bltu	s1,s5,80003520 <freerange+0xd0>
    800034cc:	0534fa63          	bgeu	s1,s3,80003520 <freerange+0xd0>
    800034d0:	00001637          	lui	a2,0x1
    800034d4:	00100593          	li	a1,1
    800034d8:	00048513          	mv	a0,s1
    800034dc:	00000097          	auipc	ra,0x0
    800034e0:	50c080e7          	jalr	1292(ra) # 800039e8 <__memset>
    800034e4:	00093703          	ld	a4,0(s2)
    800034e8:	016487b3          	add	a5,s1,s6
    800034ec:	00e4b023          	sd	a4,0(s1)
    800034f0:	00993023          	sd	s1,0(s2)
    800034f4:	fcfa76e3          	bgeu	s4,a5,800034c0 <freerange+0x70>
    800034f8:	03813083          	ld	ra,56(sp)
    800034fc:	03013403          	ld	s0,48(sp)
    80003500:	02813483          	ld	s1,40(sp)
    80003504:	02013903          	ld	s2,32(sp)
    80003508:	01813983          	ld	s3,24(sp)
    8000350c:	01013a03          	ld	s4,16(sp)
    80003510:	00813a83          	ld	s5,8(sp)
    80003514:	00013b03          	ld	s6,0(sp)
    80003518:	04010113          	addi	sp,sp,64
    8000351c:	00008067          	ret
    80003520:	00001517          	auipc	a0,0x1
    80003524:	cb050513          	addi	a0,a0,-848 # 800041d0 <digits+0x18>
    80003528:	fffff097          	auipc	ra,0xfffff
    8000352c:	3d4080e7          	jalr	980(ra) # 800028fc <panic>

0000000080003530 <kfree>:
    80003530:	fe010113          	addi	sp,sp,-32
    80003534:	00813823          	sd	s0,16(sp)
    80003538:	00113c23          	sd	ra,24(sp)
    8000353c:	00913423          	sd	s1,8(sp)
    80003540:	02010413          	addi	s0,sp,32
    80003544:	03451793          	slli	a5,a0,0x34
    80003548:	04079c63          	bnez	a5,800035a0 <kfree+0x70>
    8000354c:	00002797          	auipc	a5,0x2
    80003550:	70478793          	addi	a5,a5,1796 # 80005c50 <end>
    80003554:	00050493          	mv	s1,a0
    80003558:	04f56463          	bltu	a0,a5,800035a0 <kfree+0x70>
    8000355c:	01100793          	li	a5,17
    80003560:	01b79793          	slli	a5,a5,0x1b
    80003564:	02f57e63          	bgeu	a0,a5,800035a0 <kfree+0x70>
    80003568:	00001637          	lui	a2,0x1
    8000356c:	00100593          	li	a1,1
    80003570:	00000097          	auipc	ra,0x0
    80003574:	478080e7          	jalr	1144(ra) # 800039e8 <__memset>
    80003578:	00001797          	auipc	a5,0x1
    8000357c:	45078793          	addi	a5,a5,1104 # 800049c8 <kmem>
    80003580:	0007b703          	ld	a4,0(a5)
    80003584:	01813083          	ld	ra,24(sp)
    80003588:	01013403          	ld	s0,16(sp)
    8000358c:	00e4b023          	sd	a4,0(s1)
    80003590:	0097b023          	sd	s1,0(a5)
    80003594:	00813483          	ld	s1,8(sp)
    80003598:	02010113          	addi	sp,sp,32
    8000359c:	00008067          	ret
    800035a0:	00001517          	auipc	a0,0x1
    800035a4:	c3050513          	addi	a0,a0,-976 # 800041d0 <digits+0x18>
    800035a8:	fffff097          	auipc	ra,0xfffff
    800035ac:	354080e7          	jalr	852(ra) # 800028fc <panic>

00000000800035b0 <kalloc>:
    800035b0:	fe010113          	addi	sp,sp,-32
    800035b4:	00813823          	sd	s0,16(sp)
    800035b8:	00913423          	sd	s1,8(sp)
    800035bc:	00113c23          	sd	ra,24(sp)
    800035c0:	02010413          	addi	s0,sp,32
    800035c4:	00001797          	auipc	a5,0x1
    800035c8:	40478793          	addi	a5,a5,1028 # 800049c8 <kmem>
    800035cc:	0007b483          	ld	s1,0(a5)
    800035d0:	02048063          	beqz	s1,800035f0 <kalloc+0x40>
    800035d4:	0004b703          	ld	a4,0(s1)
    800035d8:	00001637          	lui	a2,0x1
    800035dc:	00500593          	li	a1,5
    800035e0:	00048513          	mv	a0,s1
    800035e4:	00e7b023          	sd	a4,0(a5)
    800035e8:	00000097          	auipc	ra,0x0
    800035ec:	400080e7          	jalr	1024(ra) # 800039e8 <__memset>
    800035f0:	01813083          	ld	ra,24(sp)
    800035f4:	01013403          	ld	s0,16(sp)
    800035f8:	00048513          	mv	a0,s1
    800035fc:	00813483          	ld	s1,8(sp)
    80003600:	02010113          	addi	sp,sp,32
    80003604:	00008067          	ret

0000000080003608 <initlock>:
    80003608:	ff010113          	addi	sp,sp,-16
    8000360c:	00813423          	sd	s0,8(sp)
    80003610:	01010413          	addi	s0,sp,16
    80003614:	00813403          	ld	s0,8(sp)
    80003618:	00b53423          	sd	a1,8(a0)
    8000361c:	00052023          	sw	zero,0(a0)
    80003620:	00053823          	sd	zero,16(a0)
    80003624:	01010113          	addi	sp,sp,16
    80003628:	00008067          	ret

000000008000362c <acquire>:
    8000362c:	fe010113          	addi	sp,sp,-32
    80003630:	00813823          	sd	s0,16(sp)
    80003634:	00913423          	sd	s1,8(sp)
    80003638:	00113c23          	sd	ra,24(sp)
    8000363c:	01213023          	sd	s2,0(sp)
    80003640:	02010413          	addi	s0,sp,32
    80003644:	00050493          	mv	s1,a0
    80003648:	10002973          	csrr	s2,sstatus
    8000364c:	100027f3          	csrr	a5,sstatus
    80003650:	ffd7f793          	andi	a5,a5,-3
    80003654:	10079073          	csrw	sstatus,a5
    80003658:	fffff097          	auipc	ra,0xfffff
    8000365c:	8e0080e7          	jalr	-1824(ra) # 80001f38 <mycpu>
    80003660:	07852783          	lw	a5,120(a0)
    80003664:	06078e63          	beqz	a5,800036e0 <acquire+0xb4>
    80003668:	fffff097          	auipc	ra,0xfffff
    8000366c:	8d0080e7          	jalr	-1840(ra) # 80001f38 <mycpu>
    80003670:	07852783          	lw	a5,120(a0)
    80003674:	0004a703          	lw	a4,0(s1)
    80003678:	0017879b          	addiw	a5,a5,1
    8000367c:	06f52c23          	sw	a5,120(a0)
    80003680:	04071063          	bnez	a4,800036c0 <acquire+0x94>
    80003684:	00100713          	li	a4,1
    80003688:	00070793          	mv	a5,a4
    8000368c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003690:	0007879b          	sext.w	a5,a5
    80003694:	fe079ae3          	bnez	a5,80003688 <acquire+0x5c>
    80003698:	0ff0000f          	fence
    8000369c:	fffff097          	auipc	ra,0xfffff
    800036a0:	89c080e7          	jalr	-1892(ra) # 80001f38 <mycpu>
    800036a4:	01813083          	ld	ra,24(sp)
    800036a8:	01013403          	ld	s0,16(sp)
    800036ac:	00a4b823          	sd	a0,16(s1)
    800036b0:	00013903          	ld	s2,0(sp)
    800036b4:	00813483          	ld	s1,8(sp)
    800036b8:	02010113          	addi	sp,sp,32
    800036bc:	00008067          	ret
    800036c0:	0104b903          	ld	s2,16(s1)
    800036c4:	fffff097          	auipc	ra,0xfffff
    800036c8:	874080e7          	jalr	-1932(ra) # 80001f38 <mycpu>
    800036cc:	faa91ce3          	bne	s2,a0,80003684 <acquire+0x58>
    800036d0:	00001517          	auipc	a0,0x1
    800036d4:	b0850513          	addi	a0,a0,-1272 # 800041d8 <digits+0x20>
    800036d8:	fffff097          	auipc	ra,0xfffff
    800036dc:	224080e7          	jalr	548(ra) # 800028fc <panic>
    800036e0:	00195913          	srli	s2,s2,0x1
    800036e4:	fffff097          	auipc	ra,0xfffff
    800036e8:	854080e7          	jalr	-1964(ra) # 80001f38 <mycpu>
    800036ec:	00197913          	andi	s2,s2,1
    800036f0:	07252e23          	sw	s2,124(a0)
    800036f4:	f75ff06f          	j	80003668 <acquire+0x3c>

00000000800036f8 <release>:
    800036f8:	fe010113          	addi	sp,sp,-32
    800036fc:	00813823          	sd	s0,16(sp)
    80003700:	00113c23          	sd	ra,24(sp)
    80003704:	00913423          	sd	s1,8(sp)
    80003708:	01213023          	sd	s2,0(sp)
    8000370c:	02010413          	addi	s0,sp,32
    80003710:	00052783          	lw	a5,0(a0)
    80003714:	00079a63          	bnez	a5,80003728 <release+0x30>
    80003718:	00001517          	auipc	a0,0x1
    8000371c:	ac850513          	addi	a0,a0,-1336 # 800041e0 <digits+0x28>
    80003720:	fffff097          	auipc	ra,0xfffff
    80003724:	1dc080e7          	jalr	476(ra) # 800028fc <panic>
    80003728:	01053903          	ld	s2,16(a0)
    8000372c:	00050493          	mv	s1,a0
    80003730:	fffff097          	auipc	ra,0xfffff
    80003734:	808080e7          	jalr	-2040(ra) # 80001f38 <mycpu>
    80003738:	fea910e3          	bne	s2,a0,80003718 <release+0x20>
    8000373c:	0004b823          	sd	zero,16(s1)
    80003740:	0ff0000f          	fence
    80003744:	0f50000f          	fence	iorw,ow
    80003748:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000374c:	ffffe097          	auipc	ra,0xffffe
    80003750:	7ec080e7          	jalr	2028(ra) # 80001f38 <mycpu>
    80003754:	100027f3          	csrr	a5,sstatus
    80003758:	0027f793          	andi	a5,a5,2
    8000375c:	04079a63          	bnez	a5,800037b0 <release+0xb8>
    80003760:	07852783          	lw	a5,120(a0)
    80003764:	02f05e63          	blez	a5,800037a0 <release+0xa8>
    80003768:	fff7871b          	addiw	a4,a5,-1
    8000376c:	06e52c23          	sw	a4,120(a0)
    80003770:	00071c63          	bnez	a4,80003788 <release+0x90>
    80003774:	07c52783          	lw	a5,124(a0)
    80003778:	00078863          	beqz	a5,80003788 <release+0x90>
    8000377c:	100027f3          	csrr	a5,sstatus
    80003780:	0027e793          	ori	a5,a5,2
    80003784:	10079073          	csrw	sstatus,a5
    80003788:	01813083          	ld	ra,24(sp)
    8000378c:	01013403          	ld	s0,16(sp)
    80003790:	00813483          	ld	s1,8(sp)
    80003794:	00013903          	ld	s2,0(sp)
    80003798:	02010113          	addi	sp,sp,32
    8000379c:	00008067          	ret
    800037a0:	00001517          	auipc	a0,0x1
    800037a4:	a6050513          	addi	a0,a0,-1440 # 80004200 <digits+0x48>
    800037a8:	fffff097          	auipc	ra,0xfffff
    800037ac:	154080e7          	jalr	340(ra) # 800028fc <panic>
    800037b0:	00001517          	auipc	a0,0x1
    800037b4:	a3850513          	addi	a0,a0,-1480 # 800041e8 <digits+0x30>
    800037b8:	fffff097          	auipc	ra,0xfffff
    800037bc:	144080e7          	jalr	324(ra) # 800028fc <panic>

00000000800037c0 <holding>:
    800037c0:	00052783          	lw	a5,0(a0)
    800037c4:	00079663          	bnez	a5,800037d0 <holding+0x10>
    800037c8:	00000513          	li	a0,0
    800037cc:	00008067          	ret
    800037d0:	fe010113          	addi	sp,sp,-32
    800037d4:	00813823          	sd	s0,16(sp)
    800037d8:	00913423          	sd	s1,8(sp)
    800037dc:	00113c23          	sd	ra,24(sp)
    800037e0:	02010413          	addi	s0,sp,32
    800037e4:	01053483          	ld	s1,16(a0)
    800037e8:	ffffe097          	auipc	ra,0xffffe
    800037ec:	750080e7          	jalr	1872(ra) # 80001f38 <mycpu>
    800037f0:	01813083          	ld	ra,24(sp)
    800037f4:	01013403          	ld	s0,16(sp)
    800037f8:	40a48533          	sub	a0,s1,a0
    800037fc:	00153513          	seqz	a0,a0
    80003800:	00813483          	ld	s1,8(sp)
    80003804:	02010113          	addi	sp,sp,32
    80003808:	00008067          	ret

000000008000380c <push_off>:
    8000380c:	fe010113          	addi	sp,sp,-32
    80003810:	00813823          	sd	s0,16(sp)
    80003814:	00113c23          	sd	ra,24(sp)
    80003818:	00913423          	sd	s1,8(sp)
    8000381c:	02010413          	addi	s0,sp,32
    80003820:	100024f3          	csrr	s1,sstatus
    80003824:	100027f3          	csrr	a5,sstatus
    80003828:	ffd7f793          	andi	a5,a5,-3
    8000382c:	10079073          	csrw	sstatus,a5
    80003830:	ffffe097          	auipc	ra,0xffffe
    80003834:	708080e7          	jalr	1800(ra) # 80001f38 <mycpu>
    80003838:	07852783          	lw	a5,120(a0)
    8000383c:	02078663          	beqz	a5,80003868 <push_off+0x5c>
    80003840:	ffffe097          	auipc	ra,0xffffe
    80003844:	6f8080e7          	jalr	1784(ra) # 80001f38 <mycpu>
    80003848:	07852783          	lw	a5,120(a0)
    8000384c:	01813083          	ld	ra,24(sp)
    80003850:	01013403          	ld	s0,16(sp)
    80003854:	0017879b          	addiw	a5,a5,1
    80003858:	06f52c23          	sw	a5,120(a0)
    8000385c:	00813483          	ld	s1,8(sp)
    80003860:	02010113          	addi	sp,sp,32
    80003864:	00008067          	ret
    80003868:	0014d493          	srli	s1,s1,0x1
    8000386c:	ffffe097          	auipc	ra,0xffffe
    80003870:	6cc080e7          	jalr	1740(ra) # 80001f38 <mycpu>
    80003874:	0014f493          	andi	s1,s1,1
    80003878:	06952e23          	sw	s1,124(a0)
    8000387c:	fc5ff06f          	j	80003840 <push_off+0x34>

0000000080003880 <pop_off>:
    80003880:	ff010113          	addi	sp,sp,-16
    80003884:	00813023          	sd	s0,0(sp)
    80003888:	00113423          	sd	ra,8(sp)
    8000388c:	01010413          	addi	s0,sp,16
    80003890:	ffffe097          	auipc	ra,0xffffe
    80003894:	6a8080e7          	jalr	1704(ra) # 80001f38 <mycpu>
    80003898:	100027f3          	csrr	a5,sstatus
    8000389c:	0027f793          	andi	a5,a5,2
    800038a0:	04079663          	bnez	a5,800038ec <pop_off+0x6c>
    800038a4:	07852783          	lw	a5,120(a0)
    800038a8:	02f05a63          	blez	a5,800038dc <pop_off+0x5c>
    800038ac:	fff7871b          	addiw	a4,a5,-1
    800038b0:	06e52c23          	sw	a4,120(a0)
    800038b4:	00071c63          	bnez	a4,800038cc <pop_off+0x4c>
    800038b8:	07c52783          	lw	a5,124(a0)
    800038bc:	00078863          	beqz	a5,800038cc <pop_off+0x4c>
    800038c0:	100027f3          	csrr	a5,sstatus
    800038c4:	0027e793          	ori	a5,a5,2
    800038c8:	10079073          	csrw	sstatus,a5
    800038cc:	00813083          	ld	ra,8(sp)
    800038d0:	00013403          	ld	s0,0(sp)
    800038d4:	01010113          	addi	sp,sp,16
    800038d8:	00008067          	ret
    800038dc:	00001517          	auipc	a0,0x1
    800038e0:	92450513          	addi	a0,a0,-1756 # 80004200 <digits+0x48>
    800038e4:	fffff097          	auipc	ra,0xfffff
    800038e8:	018080e7          	jalr	24(ra) # 800028fc <panic>
    800038ec:	00001517          	auipc	a0,0x1
    800038f0:	8fc50513          	addi	a0,a0,-1796 # 800041e8 <digits+0x30>
    800038f4:	fffff097          	auipc	ra,0xfffff
    800038f8:	008080e7          	jalr	8(ra) # 800028fc <panic>

00000000800038fc <push_on>:
    800038fc:	fe010113          	addi	sp,sp,-32
    80003900:	00813823          	sd	s0,16(sp)
    80003904:	00113c23          	sd	ra,24(sp)
    80003908:	00913423          	sd	s1,8(sp)
    8000390c:	02010413          	addi	s0,sp,32
    80003910:	100024f3          	csrr	s1,sstatus
    80003914:	100027f3          	csrr	a5,sstatus
    80003918:	0027e793          	ori	a5,a5,2
    8000391c:	10079073          	csrw	sstatus,a5
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	618080e7          	jalr	1560(ra) # 80001f38 <mycpu>
    80003928:	07852783          	lw	a5,120(a0)
    8000392c:	02078663          	beqz	a5,80003958 <push_on+0x5c>
    80003930:	ffffe097          	auipc	ra,0xffffe
    80003934:	608080e7          	jalr	1544(ra) # 80001f38 <mycpu>
    80003938:	07852783          	lw	a5,120(a0)
    8000393c:	01813083          	ld	ra,24(sp)
    80003940:	01013403          	ld	s0,16(sp)
    80003944:	0017879b          	addiw	a5,a5,1
    80003948:	06f52c23          	sw	a5,120(a0)
    8000394c:	00813483          	ld	s1,8(sp)
    80003950:	02010113          	addi	sp,sp,32
    80003954:	00008067          	ret
    80003958:	0014d493          	srli	s1,s1,0x1
    8000395c:	ffffe097          	auipc	ra,0xffffe
    80003960:	5dc080e7          	jalr	1500(ra) # 80001f38 <mycpu>
    80003964:	0014f493          	andi	s1,s1,1
    80003968:	06952e23          	sw	s1,124(a0)
    8000396c:	fc5ff06f          	j	80003930 <push_on+0x34>

0000000080003970 <pop_on>:
    80003970:	ff010113          	addi	sp,sp,-16
    80003974:	00813023          	sd	s0,0(sp)
    80003978:	00113423          	sd	ra,8(sp)
    8000397c:	01010413          	addi	s0,sp,16
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	5b8080e7          	jalr	1464(ra) # 80001f38 <mycpu>
    80003988:	100027f3          	csrr	a5,sstatus
    8000398c:	0027f793          	andi	a5,a5,2
    80003990:	04078463          	beqz	a5,800039d8 <pop_on+0x68>
    80003994:	07852783          	lw	a5,120(a0)
    80003998:	02f05863          	blez	a5,800039c8 <pop_on+0x58>
    8000399c:	fff7879b          	addiw	a5,a5,-1
    800039a0:	06f52c23          	sw	a5,120(a0)
    800039a4:	07853783          	ld	a5,120(a0)
    800039a8:	00079863          	bnez	a5,800039b8 <pop_on+0x48>
    800039ac:	100027f3          	csrr	a5,sstatus
    800039b0:	ffd7f793          	andi	a5,a5,-3
    800039b4:	10079073          	csrw	sstatus,a5
    800039b8:	00813083          	ld	ra,8(sp)
    800039bc:	00013403          	ld	s0,0(sp)
    800039c0:	01010113          	addi	sp,sp,16
    800039c4:	00008067          	ret
    800039c8:	00001517          	auipc	a0,0x1
    800039cc:	86050513          	addi	a0,a0,-1952 # 80004228 <digits+0x70>
    800039d0:	fffff097          	auipc	ra,0xfffff
    800039d4:	f2c080e7          	jalr	-212(ra) # 800028fc <panic>
    800039d8:	00001517          	auipc	a0,0x1
    800039dc:	83050513          	addi	a0,a0,-2000 # 80004208 <digits+0x50>
    800039e0:	fffff097          	auipc	ra,0xfffff
    800039e4:	f1c080e7          	jalr	-228(ra) # 800028fc <panic>

00000000800039e8 <__memset>:
    800039e8:	ff010113          	addi	sp,sp,-16
    800039ec:	00813423          	sd	s0,8(sp)
    800039f0:	01010413          	addi	s0,sp,16
    800039f4:	1a060e63          	beqz	a2,80003bb0 <__memset+0x1c8>
    800039f8:	40a007b3          	neg	a5,a0
    800039fc:	0077f793          	andi	a5,a5,7
    80003a00:	00778693          	addi	a3,a5,7
    80003a04:	00b00813          	li	a6,11
    80003a08:	0ff5f593          	andi	a1,a1,255
    80003a0c:	fff6071b          	addiw	a4,a2,-1
    80003a10:	1b06e663          	bltu	a3,a6,80003bbc <__memset+0x1d4>
    80003a14:	1cd76463          	bltu	a4,a3,80003bdc <__memset+0x1f4>
    80003a18:	1a078e63          	beqz	a5,80003bd4 <__memset+0x1ec>
    80003a1c:	00b50023          	sb	a1,0(a0)
    80003a20:	00100713          	li	a4,1
    80003a24:	1ae78463          	beq	a5,a4,80003bcc <__memset+0x1e4>
    80003a28:	00b500a3          	sb	a1,1(a0)
    80003a2c:	00200713          	li	a4,2
    80003a30:	1ae78a63          	beq	a5,a4,80003be4 <__memset+0x1fc>
    80003a34:	00b50123          	sb	a1,2(a0)
    80003a38:	00300713          	li	a4,3
    80003a3c:	18e78463          	beq	a5,a4,80003bc4 <__memset+0x1dc>
    80003a40:	00b501a3          	sb	a1,3(a0)
    80003a44:	00400713          	li	a4,4
    80003a48:	1ae78263          	beq	a5,a4,80003bec <__memset+0x204>
    80003a4c:	00b50223          	sb	a1,4(a0)
    80003a50:	00500713          	li	a4,5
    80003a54:	1ae78063          	beq	a5,a4,80003bf4 <__memset+0x20c>
    80003a58:	00b502a3          	sb	a1,5(a0)
    80003a5c:	00700713          	li	a4,7
    80003a60:	18e79e63          	bne	a5,a4,80003bfc <__memset+0x214>
    80003a64:	00b50323          	sb	a1,6(a0)
    80003a68:	00700e93          	li	t4,7
    80003a6c:	00859713          	slli	a4,a1,0x8
    80003a70:	00e5e733          	or	a4,a1,a4
    80003a74:	01059e13          	slli	t3,a1,0x10
    80003a78:	01c76e33          	or	t3,a4,t3
    80003a7c:	01859313          	slli	t1,a1,0x18
    80003a80:	006e6333          	or	t1,t3,t1
    80003a84:	02059893          	slli	a7,a1,0x20
    80003a88:	40f60e3b          	subw	t3,a2,a5
    80003a8c:	011368b3          	or	a7,t1,a7
    80003a90:	02859813          	slli	a6,a1,0x28
    80003a94:	0108e833          	or	a6,a7,a6
    80003a98:	03059693          	slli	a3,a1,0x30
    80003a9c:	003e589b          	srliw	a7,t3,0x3
    80003aa0:	00d866b3          	or	a3,a6,a3
    80003aa4:	03859713          	slli	a4,a1,0x38
    80003aa8:	00389813          	slli	a6,a7,0x3
    80003aac:	00f507b3          	add	a5,a0,a5
    80003ab0:	00e6e733          	or	a4,a3,a4
    80003ab4:	000e089b          	sext.w	a7,t3
    80003ab8:	00f806b3          	add	a3,a6,a5
    80003abc:	00e7b023          	sd	a4,0(a5)
    80003ac0:	00878793          	addi	a5,a5,8
    80003ac4:	fed79ce3          	bne	a5,a3,80003abc <__memset+0xd4>
    80003ac8:	ff8e7793          	andi	a5,t3,-8
    80003acc:	0007871b          	sext.w	a4,a5
    80003ad0:	01d787bb          	addw	a5,a5,t4
    80003ad4:	0ce88e63          	beq	a7,a4,80003bb0 <__memset+0x1c8>
    80003ad8:	00f50733          	add	a4,a0,a5
    80003adc:	00b70023          	sb	a1,0(a4)
    80003ae0:	0017871b          	addiw	a4,a5,1
    80003ae4:	0cc77663          	bgeu	a4,a2,80003bb0 <__memset+0x1c8>
    80003ae8:	00e50733          	add	a4,a0,a4
    80003aec:	00b70023          	sb	a1,0(a4)
    80003af0:	0027871b          	addiw	a4,a5,2
    80003af4:	0ac77e63          	bgeu	a4,a2,80003bb0 <__memset+0x1c8>
    80003af8:	00e50733          	add	a4,a0,a4
    80003afc:	00b70023          	sb	a1,0(a4)
    80003b00:	0037871b          	addiw	a4,a5,3
    80003b04:	0ac77663          	bgeu	a4,a2,80003bb0 <__memset+0x1c8>
    80003b08:	00e50733          	add	a4,a0,a4
    80003b0c:	00b70023          	sb	a1,0(a4)
    80003b10:	0047871b          	addiw	a4,a5,4
    80003b14:	08c77e63          	bgeu	a4,a2,80003bb0 <__memset+0x1c8>
    80003b18:	00e50733          	add	a4,a0,a4
    80003b1c:	00b70023          	sb	a1,0(a4)
    80003b20:	0057871b          	addiw	a4,a5,5
    80003b24:	08c77663          	bgeu	a4,a2,80003bb0 <__memset+0x1c8>
    80003b28:	00e50733          	add	a4,a0,a4
    80003b2c:	00b70023          	sb	a1,0(a4)
    80003b30:	0067871b          	addiw	a4,a5,6
    80003b34:	06c77e63          	bgeu	a4,a2,80003bb0 <__memset+0x1c8>
    80003b38:	00e50733          	add	a4,a0,a4
    80003b3c:	00b70023          	sb	a1,0(a4)
    80003b40:	0077871b          	addiw	a4,a5,7
    80003b44:	06c77663          	bgeu	a4,a2,80003bb0 <__memset+0x1c8>
    80003b48:	00e50733          	add	a4,a0,a4
    80003b4c:	00b70023          	sb	a1,0(a4)
    80003b50:	0087871b          	addiw	a4,a5,8
    80003b54:	04c77e63          	bgeu	a4,a2,80003bb0 <__memset+0x1c8>
    80003b58:	00e50733          	add	a4,a0,a4
    80003b5c:	00b70023          	sb	a1,0(a4)
    80003b60:	0097871b          	addiw	a4,a5,9
    80003b64:	04c77663          	bgeu	a4,a2,80003bb0 <__memset+0x1c8>
    80003b68:	00e50733          	add	a4,a0,a4
    80003b6c:	00b70023          	sb	a1,0(a4)
    80003b70:	00a7871b          	addiw	a4,a5,10
    80003b74:	02c77e63          	bgeu	a4,a2,80003bb0 <__memset+0x1c8>
    80003b78:	00e50733          	add	a4,a0,a4
    80003b7c:	00b70023          	sb	a1,0(a4)
    80003b80:	00b7871b          	addiw	a4,a5,11
    80003b84:	02c77663          	bgeu	a4,a2,80003bb0 <__memset+0x1c8>
    80003b88:	00e50733          	add	a4,a0,a4
    80003b8c:	00b70023          	sb	a1,0(a4)
    80003b90:	00c7871b          	addiw	a4,a5,12
    80003b94:	00c77e63          	bgeu	a4,a2,80003bb0 <__memset+0x1c8>
    80003b98:	00e50733          	add	a4,a0,a4
    80003b9c:	00b70023          	sb	a1,0(a4)
    80003ba0:	00d7879b          	addiw	a5,a5,13
    80003ba4:	00c7f663          	bgeu	a5,a2,80003bb0 <__memset+0x1c8>
    80003ba8:	00f507b3          	add	a5,a0,a5
    80003bac:	00b78023          	sb	a1,0(a5)
    80003bb0:	00813403          	ld	s0,8(sp)
    80003bb4:	01010113          	addi	sp,sp,16
    80003bb8:	00008067          	ret
    80003bbc:	00b00693          	li	a3,11
    80003bc0:	e55ff06f          	j	80003a14 <__memset+0x2c>
    80003bc4:	00300e93          	li	t4,3
    80003bc8:	ea5ff06f          	j	80003a6c <__memset+0x84>
    80003bcc:	00100e93          	li	t4,1
    80003bd0:	e9dff06f          	j	80003a6c <__memset+0x84>
    80003bd4:	00000e93          	li	t4,0
    80003bd8:	e95ff06f          	j	80003a6c <__memset+0x84>
    80003bdc:	00000793          	li	a5,0
    80003be0:	ef9ff06f          	j	80003ad8 <__memset+0xf0>
    80003be4:	00200e93          	li	t4,2
    80003be8:	e85ff06f          	j	80003a6c <__memset+0x84>
    80003bec:	00400e93          	li	t4,4
    80003bf0:	e7dff06f          	j	80003a6c <__memset+0x84>
    80003bf4:	00500e93          	li	t4,5
    80003bf8:	e75ff06f          	j	80003a6c <__memset+0x84>
    80003bfc:	00600e93          	li	t4,6
    80003c00:	e6dff06f          	j	80003a6c <__memset+0x84>

0000000080003c04 <__memmove>:
    80003c04:	ff010113          	addi	sp,sp,-16
    80003c08:	00813423          	sd	s0,8(sp)
    80003c0c:	01010413          	addi	s0,sp,16
    80003c10:	0e060863          	beqz	a2,80003d00 <__memmove+0xfc>
    80003c14:	fff6069b          	addiw	a3,a2,-1
    80003c18:	0006881b          	sext.w	a6,a3
    80003c1c:	0ea5e863          	bltu	a1,a0,80003d0c <__memmove+0x108>
    80003c20:	00758713          	addi	a4,a1,7
    80003c24:	00a5e7b3          	or	a5,a1,a0
    80003c28:	40a70733          	sub	a4,a4,a0
    80003c2c:	0077f793          	andi	a5,a5,7
    80003c30:	00f73713          	sltiu	a4,a4,15
    80003c34:	00174713          	xori	a4,a4,1
    80003c38:	0017b793          	seqz	a5,a5
    80003c3c:	00e7f7b3          	and	a5,a5,a4
    80003c40:	10078863          	beqz	a5,80003d50 <__memmove+0x14c>
    80003c44:	00900793          	li	a5,9
    80003c48:	1107f463          	bgeu	a5,a6,80003d50 <__memmove+0x14c>
    80003c4c:	0036581b          	srliw	a6,a2,0x3
    80003c50:	fff8081b          	addiw	a6,a6,-1
    80003c54:	02081813          	slli	a6,a6,0x20
    80003c58:	01d85893          	srli	a7,a6,0x1d
    80003c5c:	00858813          	addi	a6,a1,8
    80003c60:	00058793          	mv	a5,a1
    80003c64:	00050713          	mv	a4,a0
    80003c68:	01088833          	add	a6,a7,a6
    80003c6c:	0007b883          	ld	a7,0(a5)
    80003c70:	00878793          	addi	a5,a5,8
    80003c74:	00870713          	addi	a4,a4,8
    80003c78:	ff173c23          	sd	a7,-8(a4)
    80003c7c:	ff0798e3          	bne	a5,a6,80003c6c <__memmove+0x68>
    80003c80:	ff867713          	andi	a4,a2,-8
    80003c84:	02071793          	slli	a5,a4,0x20
    80003c88:	0207d793          	srli	a5,a5,0x20
    80003c8c:	00f585b3          	add	a1,a1,a5
    80003c90:	40e686bb          	subw	a3,a3,a4
    80003c94:	00f507b3          	add	a5,a0,a5
    80003c98:	06e60463          	beq	a2,a4,80003d00 <__memmove+0xfc>
    80003c9c:	0005c703          	lbu	a4,0(a1)
    80003ca0:	00e78023          	sb	a4,0(a5)
    80003ca4:	04068e63          	beqz	a3,80003d00 <__memmove+0xfc>
    80003ca8:	0015c603          	lbu	a2,1(a1)
    80003cac:	00100713          	li	a4,1
    80003cb0:	00c780a3          	sb	a2,1(a5)
    80003cb4:	04e68663          	beq	a3,a4,80003d00 <__memmove+0xfc>
    80003cb8:	0025c603          	lbu	a2,2(a1)
    80003cbc:	00200713          	li	a4,2
    80003cc0:	00c78123          	sb	a2,2(a5)
    80003cc4:	02e68e63          	beq	a3,a4,80003d00 <__memmove+0xfc>
    80003cc8:	0035c603          	lbu	a2,3(a1)
    80003ccc:	00300713          	li	a4,3
    80003cd0:	00c781a3          	sb	a2,3(a5)
    80003cd4:	02e68663          	beq	a3,a4,80003d00 <__memmove+0xfc>
    80003cd8:	0045c603          	lbu	a2,4(a1)
    80003cdc:	00400713          	li	a4,4
    80003ce0:	00c78223          	sb	a2,4(a5)
    80003ce4:	00e68e63          	beq	a3,a4,80003d00 <__memmove+0xfc>
    80003ce8:	0055c603          	lbu	a2,5(a1)
    80003cec:	00500713          	li	a4,5
    80003cf0:	00c782a3          	sb	a2,5(a5)
    80003cf4:	00e68663          	beq	a3,a4,80003d00 <__memmove+0xfc>
    80003cf8:	0065c703          	lbu	a4,6(a1)
    80003cfc:	00e78323          	sb	a4,6(a5)
    80003d00:	00813403          	ld	s0,8(sp)
    80003d04:	01010113          	addi	sp,sp,16
    80003d08:	00008067          	ret
    80003d0c:	02061713          	slli	a4,a2,0x20
    80003d10:	02075713          	srli	a4,a4,0x20
    80003d14:	00e587b3          	add	a5,a1,a4
    80003d18:	f0f574e3          	bgeu	a0,a5,80003c20 <__memmove+0x1c>
    80003d1c:	02069613          	slli	a2,a3,0x20
    80003d20:	02065613          	srli	a2,a2,0x20
    80003d24:	fff64613          	not	a2,a2
    80003d28:	00e50733          	add	a4,a0,a4
    80003d2c:	00c78633          	add	a2,a5,a2
    80003d30:	fff7c683          	lbu	a3,-1(a5)
    80003d34:	fff78793          	addi	a5,a5,-1
    80003d38:	fff70713          	addi	a4,a4,-1
    80003d3c:	00d70023          	sb	a3,0(a4)
    80003d40:	fec798e3          	bne	a5,a2,80003d30 <__memmove+0x12c>
    80003d44:	00813403          	ld	s0,8(sp)
    80003d48:	01010113          	addi	sp,sp,16
    80003d4c:	00008067          	ret
    80003d50:	02069713          	slli	a4,a3,0x20
    80003d54:	02075713          	srli	a4,a4,0x20
    80003d58:	00170713          	addi	a4,a4,1
    80003d5c:	00e50733          	add	a4,a0,a4
    80003d60:	00050793          	mv	a5,a0
    80003d64:	0005c683          	lbu	a3,0(a1)
    80003d68:	00178793          	addi	a5,a5,1
    80003d6c:	00158593          	addi	a1,a1,1
    80003d70:	fed78fa3          	sb	a3,-1(a5)
    80003d74:	fee798e3          	bne	a5,a4,80003d64 <__memmove+0x160>
    80003d78:	f89ff06f          	j	80003d00 <__memmove+0xfc>

0000000080003d7c <__putc>:
    80003d7c:	fe010113          	addi	sp,sp,-32
    80003d80:	00813823          	sd	s0,16(sp)
    80003d84:	00113c23          	sd	ra,24(sp)
    80003d88:	02010413          	addi	s0,sp,32
    80003d8c:	00050793          	mv	a5,a0
    80003d90:	fef40593          	addi	a1,s0,-17
    80003d94:	00100613          	li	a2,1
    80003d98:	00000513          	li	a0,0
    80003d9c:	fef407a3          	sb	a5,-17(s0)
    80003da0:	fffff097          	auipc	ra,0xfffff
    80003da4:	b3c080e7          	jalr	-1220(ra) # 800028dc <console_write>
    80003da8:	01813083          	ld	ra,24(sp)
    80003dac:	01013403          	ld	s0,16(sp)
    80003db0:	02010113          	addi	sp,sp,32
    80003db4:	00008067          	ret

0000000080003db8 <__getc>:
    80003db8:	fe010113          	addi	sp,sp,-32
    80003dbc:	00813823          	sd	s0,16(sp)
    80003dc0:	00113c23          	sd	ra,24(sp)
    80003dc4:	02010413          	addi	s0,sp,32
    80003dc8:	fe840593          	addi	a1,s0,-24
    80003dcc:	00100613          	li	a2,1
    80003dd0:	00000513          	li	a0,0
    80003dd4:	fffff097          	auipc	ra,0xfffff
    80003dd8:	ae8080e7          	jalr	-1304(ra) # 800028bc <console_read>
    80003ddc:	fe844503          	lbu	a0,-24(s0)
    80003de0:	01813083          	ld	ra,24(sp)
    80003de4:	01013403          	ld	s0,16(sp)
    80003de8:	02010113          	addi	sp,sp,32
    80003dec:	00008067          	ret

0000000080003df0 <console_handler>:
    80003df0:	fe010113          	addi	sp,sp,-32
    80003df4:	00813823          	sd	s0,16(sp)
    80003df8:	00113c23          	sd	ra,24(sp)
    80003dfc:	00913423          	sd	s1,8(sp)
    80003e00:	02010413          	addi	s0,sp,32
    80003e04:	14202773          	csrr	a4,scause
    80003e08:	100027f3          	csrr	a5,sstatus
    80003e0c:	0027f793          	andi	a5,a5,2
    80003e10:	06079e63          	bnez	a5,80003e8c <console_handler+0x9c>
    80003e14:	00074c63          	bltz	a4,80003e2c <console_handler+0x3c>
    80003e18:	01813083          	ld	ra,24(sp)
    80003e1c:	01013403          	ld	s0,16(sp)
    80003e20:	00813483          	ld	s1,8(sp)
    80003e24:	02010113          	addi	sp,sp,32
    80003e28:	00008067          	ret
    80003e2c:	0ff77713          	andi	a4,a4,255
    80003e30:	00900793          	li	a5,9
    80003e34:	fef712e3          	bne	a4,a5,80003e18 <console_handler+0x28>
    80003e38:	ffffe097          	auipc	ra,0xffffe
    80003e3c:	6dc080e7          	jalr	1756(ra) # 80002514 <plic_claim>
    80003e40:	00a00793          	li	a5,10
    80003e44:	00050493          	mv	s1,a0
    80003e48:	02f50c63          	beq	a0,a5,80003e80 <console_handler+0x90>
    80003e4c:	fc0506e3          	beqz	a0,80003e18 <console_handler+0x28>
    80003e50:	00050593          	mv	a1,a0
    80003e54:	00000517          	auipc	a0,0x0
    80003e58:	2dc50513          	addi	a0,a0,732 # 80004130 <bntOne+0xd8>
    80003e5c:	fffff097          	auipc	ra,0xfffff
    80003e60:	afc080e7          	jalr	-1284(ra) # 80002958 <__printf>
    80003e64:	01013403          	ld	s0,16(sp)
    80003e68:	01813083          	ld	ra,24(sp)
    80003e6c:	00048513          	mv	a0,s1
    80003e70:	00813483          	ld	s1,8(sp)
    80003e74:	02010113          	addi	sp,sp,32
    80003e78:	ffffe317          	auipc	t1,0xffffe
    80003e7c:	6d430067          	jr	1748(t1) # 8000254c <plic_complete>
    80003e80:	fffff097          	auipc	ra,0xfffff
    80003e84:	3e0080e7          	jalr	992(ra) # 80003260 <uartintr>
    80003e88:	fddff06f          	j	80003e64 <console_handler+0x74>
    80003e8c:	00000517          	auipc	a0,0x0
    80003e90:	3a450513          	addi	a0,a0,932 # 80004230 <digits+0x78>
    80003e94:	fffff097          	auipc	ra,0xfffff
    80003e98:	a68080e7          	jalr	-1432(ra) # 800028fc <panic>
	...
