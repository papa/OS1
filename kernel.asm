
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	82013103          	ld	sp,-2016(sp) # 80004820 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	369010ef          	jal	ra,80001b84 <start>

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
    80001084:	454000ef          	jal	ra,800014d8 <interrupt>
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
    8000111c:	00003797          	auipc	a5,0x3
    80001120:	7347a783          	lw	a5,1844(a5) # 80004850 <memoryInitiliaized>
    80001124:	04078063          	beqz	a5,80001164 <initMemory+0x54>
        return;
    memoryInitiliaized = 1;
    80001128:	00100793          	li	a5,1
    8000112c:	00003717          	auipc	a4,0x3
    80001130:	72f72223          	sw	a5,1828(a4) # 80004850 <memoryInitiliaized>
    headAllocated = 0;
    80001134:	00003797          	auipc	a5,0x3
    80001138:	7207b623          	sd	zero,1836(a5) # 80004860 <headAllocated>
    headFree = (struct FreeFragment*)HEAP_START_ADDR;
    8000113c:	00003717          	auipc	a4,0x3
    80001140:	6c473703          	ld	a4,1732(a4) # 80004800 <HEAP_START_ADDR>
    80001144:	00003797          	auipc	a5,0x3
    80001148:	70e7ba23          	sd	a4,1812(a5) # 80004858 <headFree>
    headFree->next = 0;
    8000114c:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1);
    80001150:	00003797          	auipc	a5,0x3
    80001154:	6a87b783          	ld	a5,1704(a5) # 800047f8 <HEAP_END_ADDR>
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
    80001198:	00003797          	auipc	a5,0x3
    8000119c:	6c87b783          	ld	a5,1736(a5) # 80004860 <headAllocated>
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
    800011f8:	6697b623          	sd	s1,1644(a5) # 80004860 <headAllocated>
    800011fc:	fd5ff06f          	j	800011d0 <insertNewAllocatedFragment+0x60>
            newAllocated->next = headAllocated;
    80001200:	00003797          	auipc	a5,0x3
    80001204:	66078793          	addi	a5,a5,1632 # 80004860 <headAllocated>
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
    80001240:	61c4b483          	ld	s1,1564(s1) # 80004858 <headFree>
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
    8000129c:	5cf63023          	sd	a5,1472(a2) # 80004858 <headFree>
    800012a0:	fb9ff06f          	j	80001258 <tryToAllocateFragment+0x40>
                        headFree = 0;
    800012a4:	00003797          	auipc	a5,0x3
    800012a8:	5a07ba23          	sd	zero,1460(a5) # 80004858 <headFree>
    800012ac:	fd1ff06f          	j	8000127c <tryToAllocateFragment+0x64>
                {
                    prev->next = 0;
                }
                else
                {
                    headFree = 0;
    800012b0:	00003797          	auipc	a5,0x3
    800012b4:	5a07b423          	sd	zero,1448(a5) # 80004858 <headFree>
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
    800012d4:	52863603          	ld	a2,1320(a2) # 800047f8 <HEAP_END_ADDR>
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
    80001334:	5287b783          	ld	a5,1320(a5) # 80004858 <headFree>
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
    80001380:	4c97be23          	sd	s1,1244(a5) # 80004858 <headFree>
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
    800013b0:	4b44b483          	ld	s1,1204(s1) # 80004860 <headAllocated>
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
    800013c8:	48f73e23          	sd	a5,1180(a4) # 80004860 <headAllocated>
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

extern "C" void interruptvec();

void main()
{
    80001490:	ff010113          	addi	sp,sp,-16
    80001494:	00113423          	sd	ra,8(sp)
    80001498:	00813023          	sd	s0,0(sp)
    8000149c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw stvec, %0" : : [vector]"r"(&interruptvec));
    800014a0:	00003797          	auipc	a5,0x3
    800014a4:	3907b783          	ld	a5,912(a5) # 80004830 <_GLOBAL_OFFSET_TABLE_+0x18>
    800014a8:	10579073          	csrw	stvec,a5

    __putc('a');
    800014ac:	06100513          	li	a0,97
    800014b0:	00002097          	auipc	ra,0x2
    800014b4:	79c080e7          	jalr	1948(ra) # 80003c4c <__putc>
    __asm__ volatile("ecall");
    800014b8:	00000073          	ecall
    __putc('b');
    800014bc:	06200513          	li	a0,98
    800014c0:	00002097          	auipc	ra,0x2
    800014c4:	78c080e7          	jalr	1932(ra) # 80003c4c <__putc>
    return;

    MemoryAllocator* memAlloc = MemoryAllocator::getMemoryAllocator();
    memAlloc->mem_alloc(2);
    800014c8:	00813083          	ld	ra,8(sp)
    800014cc:	00013403          	ld	s0,0(sp)
    800014d0:	01010113          	addi	sp,sp,16
    800014d4:	00008067          	ret

00000000800014d8 <interrupt>:
const uint64 addrReadInterrupt = bntZero + 5UL;
const uint64 addrWriteInterrupt = bntZero + 7UL;
const uint64 ecallUserInterrupt = bntZero + 8UL;
const uint64 ecallSystemInterupt = bntZero + 9UL;

extern "C" void interrupt() {
    800014d8:	ff010113          	addi	sp,sp,-16
    800014dc:	00113423          	sd	ra,8(sp)
    800014e0:	00813023          	sd	s0,0(sp)
    800014e4:	01010413          	addi	s0,sp,16

    uint64 scause;
    __asm__ volatile("csrr %0,scause":"=r"(scause));
    800014e8:	14202773          	csrr	a4,scause
    switch(scause) {
    800014ec:	00900793          	li	a5,9
    800014f0:	00f70e63          	beq	a4,a5,8000150c <interrupt+0x34>
    //uint64 sie;
    //asm volatile("csrr %0, sie" : "=r"(sie));
    //sie &= ~2;
    //asm volatile("csrw sie, %0" : : "r" (sie));

    console_handler();
    800014f4:	00002097          	auipc	ra,0x2
    800014f8:	7cc080e7          	jalr	1996(ra) # 80003cc0 <console_handler>
}
    800014fc:	00813083          	ld	ra,8(sp)
    80001500:	00013403          	ld	s0,0(sp)
    80001504:	01010113          	addi	sp,sp,16
    80001508:	00008067          	ret
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    8000150c:	00050793          	mv	a5,a0
            if(operation == (uint64)MEM_ALLOC) {
    80001510:	00003717          	auipc	a4,0x3
    80001514:	32873703          	ld	a4,808(a4) # 80004838 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001518:	00072703          	lw	a4,0(a4)
    8000151c:	02f70263          	beq	a4,a5,80001540 <interrupt+0x68>
            else if(operation == (uint64)MEM_FREE){
    80001520:	00003717          	auipc	a4,0x3
    80001524:	30873703          	ld	a4,776(a4) # 80004828 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001528:	00072703          	lw	a4,0(a4)
    8000152c:	fcf714e3          	bne	a4,a5,800014f4 <interrupt+0x1c>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    80001530:	00058513          	mv	a0,a1
                tryToFreeSegment((void*)addr);
    80001534:	00000097          	auipc	ra,0x0
    80001538:	e54080e7          	jalr	-428(ra) # 80001388 <tryToFreeSegment>
    8000153c:	fb9ff06f          	j	800014f4 <interrupt+0x1c>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80001540:	00058513          	mv	a0,a1
                tryToAllocateFragment(size);
    80001544:	00651513          	slli	a0,a0,0x6
    80001548:	00000097          	auipc	ra,0x0
    8000154c:	cd0080e7          	jalr	-816(ra) # 80001218 <tryToAllocateFragment>
    80001550:	fa5ff06f          	j	800014f4 <interrupt+0x1c>

0000000080001554 <_Znwm>:
#include "../h/syscall_cpp.h"
#include "../h/syscall_c.h"

//general
void * operator new(size_t size)
{
    80001554:	ff010113          	addi	sp,sp,-16
    80001558:	00113423          	sd	ra,8(sp)
    8000155c:	00813023          	sd	s0,0(sp)
    80001560:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001564:	00000097          	auipc	ra,0x0
    80001568:	ed0080e7          	jalr	-304(ra) # 80001434 <mem_alloc>
}
    8000156c:	00813083          	ld	ra,8(sp)
    80001570:	00013403          	ld	s0,0(sp)
    80001574:	01010113          	addi	sp,sp,16
    80001578:	00008067          	ret

000000008000157c <_ZdlPv>:

void operator delete(void * p)
{
    8000157c:	ff010113          	addi	sp,sp,-16
    80001580:	00113423          	sd	ra,8(sp)
    80001584:	00813023          	sd	s0,0(sp)
    80001588:	01010413          	addi	s0,sp,16
   mem_free(p);
    8000158c:	00000097          	auipc	ra,0x0
    80001590:	ed8080e7          	jalr	-296(ra) # 80001464 <mem_free>
}
    80001594:	00813083          	ld	ra,8(sp)
    80001598:	00013403          	ld	s0,0(sp)
    8000159c:	01010113          	addi	sp,sp,16
    800015a0:	00008067          	ret

00000000800015a4 <_ZN15MemoryAllocatorC1Ev>:

//MemoryAllocator.h

MemoryAllocator* MemoryAllocator::memoryAllocator = 0;

MemoryAllocator::MemoryAllocator() {
    800015a4:	ff010113          	addi	sp,sp,-16
    800015a8:	00813423          	sd	s0,8(sp)
    800015ac:	01010413          	addi	s0,sp,16

}
    800015b0:	00813403          	ld	s0,8(sp)
    800015b4:	01010113          	addi	sp,sp,16
    800015b8:	00008067          	ret

00000000800015bc <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t size) {
    800015bc:	ff010113          	addi	sp,sp,-16
    800015c0:	00113423          	sd	ra,8(sp)
    800015c4:	00813023          	sd	s0,0(sp)
    800015c8:	01010413          	addi	s0,sp,16
    //todo
    //sta ovde treba kao parametar
    //svuda pogledaj to
    return ::mem_alloc(sizeof(MemoryAllocator));
    800015cc:	00100513          	li	a0,1
    800015d0:	00000097          	auipc	ra,0x0
    800015d4:	e64080e7          	jalr	-412(ra) # 80001434 <mem_alloc>
}
    800015d8:	00813083          	ld	ra,8(sp)
    800015dc:	00013403          	ld	s0,0(sp)
    800015e0:	01010113          	addi	sp,sp,16
    800015e4:	00008067          	ret

00000000800015e8 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void * addr) {
    800015e8:	ff010113          	addi	sp,sp,-16
    800015ec:	00113423          	sd	ra,8(sp)
    800015f0:	00813023          	sd	s0,0(sp)
    800015f4:	01010413          	addi	s0,sp,16
    return ::mem_free(addr);
    800015f8:	00058513          	mv	a0,a1
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	e68080e7          	jalr	-408(ra) # 80001464 <mem_free>
}
    80001604:	00813083          	ld	ra,8(sp)
    80001608:	00013403          	ld	s0,0(sp)
    8000160c:	01010113          	addi	sp,sp,16
    80001610:	00008067          	ret

0000000080001614 <_ZN15MemoryAllocatorD1Ev>:
        memoryAllocator = new MemoryAllocator();
    }
    return memoryAllocator;
}

MemoryAllocator::~MemoryAllocator() {
    80001614:	ff010113          	addi	sp,sp,-16
    80001618:	00813423          	sd	s0,8(sp)
    8000161c:	01010413          	addi	s0,sp,16

}
    80001620:	00813403          	ld	s0,8(sp)
    80001624:	01010113          	addi	sp,sp,16
    80001628:	00008067          	ret

000000008000162c <_ZN15MemoryAllocatornwEm>:

void *MemoryAllocator::operator new(size_t size) {
    8000162c:	ff010113          	addi	sp,sp,-16
    80001630:	00113423          	sd	ra,8(sp)
    80001634:	00813023          	sd	s0,0(sp)
    80001638:	01010413          	addi	s0,sp,16
    return ::operator new(size);
    8000163c:	00000097          	auipc	ra,0x0
    80001640:	f18080e7          	jalr	-232(ra) # 80001554 <_Znwm>
}
    80001644:	00813083          	ld	ra,8(sp)
    80001648:	00013403          	ld	s0,0(sp)
    8000164c:	01010113          	addi	sp,sp,16
    80001650:	00008067          	ret

0000000080001654 <_ZN15MemoryAllocator18getMemoryAllocatorEv>:
    if(memoryAllocator == 0) {
    80001654:	00003797          	auipc	a5,0x3
    80001658:	23c7b783          	ld	a5,572(a5) # 80004890 <_ZN15MemoryAllocator15memoryAllocatorE>
    8000165c:	00078863          	beqz	a5,8000166c <_ZN15MemoryAllocator18getMemoryAllocatorEv+0x18>
}
    80001660:	00003517          	auipc	a0,0x3
    80001664:	23053503          	ld	a0,560(a0) # 80004890 <_ZN15MemoryAllocator15memoryAllocatorE>
    80001668:	00008067          	ret
MemoryAllocator* MemoryAllocator::getMemoryAllocator() {
    8000166c:	ff010113          	addi	sp,sp,-16
    80001670:	00113423          	sd	ra,8(sp)
    80001674:	00813023          	sd	s0,0(sp)
    80001678:	01010413          	addi	s0,sp,16
        memoryAllocator = new MemoryAllocator();
    8000167c:	00100513          	li	a0,1
    80001680:	00000097          	auipc	ra,0x0
    80001684:	fac080e7          	jalr	-84(ra) # 8000162c <_ZN15MemoryAllocatornwEm>
    80001688:	00003797          	auipc	a5,0x3
    8000168c:	20a7b423          	sd	a0,520(a5) # 80004890 <_ZN15MemoryAllocator15memoryAllocatorE>
}
    80001690:	00003517          	auipc	a0,0x3
    80001694:	20053503          	ld	a0,512(a0) # 80004890 <_ZN15MemoryAllocator15memoryAllocatorE>
    80001698:	00813083          	ld	ra,8(sp)
    8000169c:	00013403          	ld	s0,0(sp)
    800016a0:	01010113          	addi	sp,sp,16
    800016a4:	00008067          	ret

00000000800016a8 <_ZN15MemoryAllocatordlEPv>:

void MemoryAllocator::operator delete(void *p) {
    800016a8:	ff010113          	addi	sp,sp,-16
    800016ac:	00113423          	sd	ra,8(sp)
    800016b0:	00813023          	sd	s0,0(sp)
    800016b4:	01010413          	addi	s0,sp,16
    ::operator delete(p);
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	ec4080e7          	jalr	-316(ra) # 8000157c <_ZdlPv>
}
    800016c0:	00813083          	ld	ra,8(sp)
    800016c4:	00013403          	ld	s0,0(sp)
    800016c8:	01010113          	addi	sp,sp,16
    800016cc:	00008067          	ret

00000000800016d0 <_ZN9Scheduler12getSchedulerEv>:
//Scheduler.h

Scheduler* Scheduler::scheduler = 0;

Scheduler *Scheduler::getScheduler() {
    if(scheduler == 0)
    800016d0:	00003797          	auipc	a5,0x3
    800016d4:	1c87b783          	ld	a5,456(a5) # 80004898 <_ZN9Scheduler9schedulerE>
    800016d8:	00078863          	beqz	a5,800016e8 <_ZN9Scheduler12getSchedulerEv+0x18>
        //preklopi new za Scheduler
        scheduler = (Scheduler*)MemoryAllocator::getMemoryAllocator()->mem_alloc(sizeof(Scheduler));
    }

    return scheduler;
}
    800016dc:	00003517          	auipc	a0,0x3
    800016e0:	1bc53503          	ld	a0,444(a0) # 80004898 <_ZN9Scheduler9schedulerE>
    800016e4:	00008067          	ret
Scheduler *Scheduler::getScheduler() {
    800016e8:	ff010113          	addi	sp,sp,-16
    800016ec:	00113423          	sd	ra,8(sp)
    800016f0:	00813023          	sd	s0,0(sp)
    800016f4:	01010413          	addi	s0,sp,16
        scheduler = (Scheduler*)MemoryAllocator::getMemoryAllocator()->mem_alloc(sizeof(Scheduler));
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	f5c080e7          	jalr	-164(ra) # 80001654 <_ZN15MemoryAllocator18getMemoryAllocatorEv>
    80001700:	00800593          	li	a1,8
    80001704:	00000097          	auipc	ra,0x0
    80001708:	eb8080e7          	jalr	-328(ra) # 800015bc <_ZN15MemoryAllocator9mem_allocEm>
    8000170c:	00003797          	auipc	a5,0x3
    80001710:	18a7b623          	sd	a0,396(a5) # 80004898 <_ZN9Scheduler9schedulerE>
}
    80001714:	00003517          	auipc	a0,0x3
    80001718:	18453503          	ld	a0,388(a0) # 80004898 <_ZN9Scheduler9schedulerE>
    8000171c:	00813083          	ld	ra,8(sp)
    80001720:	00013403          	ld	s0,0(sp)
    80001724:	01010113          	addi	sp,sp,16
    80001728:	00008067          	ret

000000008000172c <_ZN9SchedulerC1Ev>:
    //preklopi delete za queue
    delete queuePCB;
    //MemoryAllocator::getMemoryAllocator()->mem_free(queueThreads);
}

Scheduler::Scheduler() {
    8000172c:	fe010113          	addi	sp,sp,-32
    80001730:	00113c23          	sd	ra,24(sp)
    80001734:	00813823          	sd	s0,16(sp)
    80001738:	00913423          	sd	s1,8(sp)
    8000173c:	02010413          	addi	s0,sp,32
    80001740:	00050493          	mv	s1,a0
    queuePCB= (Queue<PCB*>*)MemoryAllocator::getMemoryAllocator()->mem_alloc(sizeof(Queue<PCB*>));
    80001744:	00000097          	auipc	ra,0x0
    80001748:	f10080e7          	jalr	-240(ra) # 80001654 <_ZN15MemoryAllocator18getMemoryAllocatorEv>
    8000174c:	01000593          	li	a1,16
    80001750:	00000097          	auipc	ra,0x0
    80001754:	e6c080e7          	jalr	-404(ra) # 800015bc <_ZN15MemoryAllocator9mem_allocEm>
    80001758:	00a4b023          	sd	a0,0(s1)
}
    8000175c:	01813083          	ld	ra,24(sp)
    80001760:	01013403          	ld	s0,16(sp)
    80001764:	00813483          	ld	s1,8(sp)
    80001768:	02010113          	addi	sp,sp,32
    8000176c:	00008067          	ret

0000000080001770 <_ZN9SchedulernwEm>:

void *Scheduler::operator new(size_t size) {
    80001770:	ff010113          	addi	sp,sp,-16
    80001774:	00113423          	sd	ra,8(sp)
    80001778:	00813023          	sd	s0,0(sp)
    8000177c:	01010413          	addi	s0,sp,16
    return ::operator new(sizeof(Scheduler));
    80001780:	00800513          	li	a0,8
    80001784:	00000097          	auipc	ra,0x0
    80001788:	dd0080e7          	jalr	-560(ra) # 80001554 <_Znwm>
}
    8000178c:	00813083          	ld	ra,8(sp)
    80001790:	00013403          	ld	s0,0(sp)
    80001794:	01010113          	addi	sp,sp,16
    80001798:	00008067          	ret

000000008000179c <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p) {
    8000179c:	ff010113          	addi	sp,sp,-16
    800017a0:	00113423          	sd	ra,8(sp)
    800017a4:	00813023          	sd	s0,0(sp)
    800017a8:	01010413          	addi	s0,sp,16
    ::operator delete(p);
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	dd0080e7          	jalr	-560(ra) # 8000157c <_ZdlPv>
}
    800017b4:	00813083          	ld	ra,8(sp)
    800017b8:	00013403          	ld	s0,0(sp)
    800017bc:	01010113          	addi	sp,sp,16
    800017c0:	00008067          	ret

00000000800017c4 <_ZN6ThreadC1EPFvPvES0_>:
//Thread.h

//todo
//kreiranje pocetnog konteksta niti

Thread::Thread(void (*body)(void *), void *arg) {
    800017c4:	ff010113          	addi	sp,sp,-16
    800017c8:	00813423          	sd	s0,8(sp)
    800017cc:	01010413          	addi	s0,sp,16
    f = body;
    800017d0:	00b53023          	sd	a1,0(a0)
    args = arg;
    800017d4:	00c53423          	sd	a2,8(a0)
}
    800017d8:	00813403          	ld	s0,8(sp)
    800017dc:	01010113          	addi	sp,sp,16
    800017e0:	00008067          	ret

00000000800017e4 <_ZN6Thread8dispatchEv>:

void Thread::start() {
    threadPCB->start();
}

void Thread::dispatch() {
    800017e4:	ff010113          	addi	sp,sp,-16
    800017e8:	00813423          	sd	s0,8(sp)
    800017ec:	01010413          	addi	s0,sp,16

}
    800017f0:	00813403          	ld	s0,8(sp)
    800017f4:	01010113          	addi	sp,sp,16
    800017f8:	00008067          	ret

00000000800017fc <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    800017fc:	ff010113          	addi	sp,sp,-16
    80001800:	00813423          	sd	s0,8(sp)
    80001804:	01010413          	addi	s0,sp,16

}
    80001808:	00813403          	ld	s0,8(sp)
    8000180c:	01010113          	addi	sp,sp,16
    80001810:	00008067          	ret

0000000080001814 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    80001814:	ff010113          	addi	sp,sp,-16
    80001818:	00813423          	sd	s0,8(sp)
    8000181c:	01010413          	addi	s0,sp,16

}
    80001820:	00813403          	ld	s0,8(sp)
    80001824:	01010113          	addi	sp,sp,16
    80001828:	00008067          	ret

000000008000182c <_ZN3PCBC1EPFvPvES0_mm>:
//
//}

//PCB.h

PCB::PCB(void (*body)(void*), void* arg , size_t stackSize, size_t timeSlice) {
    8000182c:	fd010113          	addi	sp,sp,-48
    80001830:	02113423          	sd	ra,40(sp)
    80001834:	02813023          	sd	s0,32(sp)
    80001838:	00913c23          	sd	s1,24(sp)
    8000183c:	01213823          	sd	s2,16(sp)
    80001840:	01313423          	sd	s3,8(sp)
    80001844:	01413023          	sd	s4,0(sp)
    80001848:	03010413          	addi	s0,sp,48
    8000184c:	00050493          	mv	s1,a0
    80001850:	00058993          	mv	s3,a1
    80001854:	00060a13          	mv	s4,a2
    //todo
    //pocetni kontekst niti
    this->stackSize = stackSize;
    80001858:	00d53823          	sd	a3,16(a0)
    this->timeSlice = timeSlice;
    8000185c:	00e53c23          	sd	a4,24(a0)
    this->pcbThread = new Thread(body, arg);
    80001860:	02800513          	li	a0,40
    80001864:	00000097          	auipc	ra,0x0
    80001868:	cf0080e7          	jalr	-784(ra) # 80001554 <_Znwm>
    8000186c:	00050913          	mv	s2,a0
    80001870:	000a0613          	mv	a2,s4
    80001874:	00098593          	mv	a1,s3
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	f4c080e7          	jalr	-180(ra) # 800017c4 <_ZN6ThreadC1EPFvPvES0_>
    80001880:	0124b023          	sd	s2,0(s1)
    this->state = CREATED;
    80001884:	0204a023          	sw	zero,32(s1)
}
    80001888:	02813083          	ld	ra,40(sp)
    8000188c:	02013403          	ld	s0,32(sp)
    80001890:	01813483          	ld	s1,24(sp)
    80001894:	01013903          	ld	s2,16(sp)
    80001898:	00813983          	ld	s3,8(sp)
    8000189c:	00013a03          	ld	s4,0(sp)
    800018a0:	03010113          	addi	sp,sp,48
    800018a4:	00008067          	ret

00000000800018a8 <_ZN3PCBD1Ev>:

PCB::~PCB() {
    800018a8:	ff010113          	addi	sp,sp,-16
    800018ac:	00813423          	sd	s0,8(sp)
    800018b0:	01010413          	addi	s0,sp,16

}
    800018b4:	00813403          	ld	s0,8(sp)
    800018b8:	01010113          	addi	sp,sp,16
    800018bc:	00008067          	ret

00000000800018c0 <_ZN3PCB6runnerEPv>:
void PCB::start()
{
    Scheduler::getScheduler()->put(this);
}

void PCB::runner(void* p) {
    800018c0:	ff010113          	addi	sp,sp,-16
    800018c4:	00813423          	sd	s0,8(sp)
    800018c8:	01010413          	addi	s0,sp,16

}
    800018cc:	00813403          	ld	s0,8(sp)
    800018d0:	01010113          	addi	sp,sp,16
    800018d4:	00008067          	ret

00000000800018d8 <_ZN6System10initSystemEv>:

//System.h

PCB* System::runningPCB = 0;

void System::initSystem() {
    800018d8:	ff010113          	addi	sp,sp,-16
    800018dc:	00813423          	sd	s0,8(sp)
    800018e0:	01010413          	addi	s0,sp,16

    800018e4:	00813403          	ld	s0,8(sp)
    800018e8:	01010113          	addi	sp,sp,16
    800018ec:	00008067          	ret

00000000800018f0 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *pcb) {
    800018f0:	ff010113          	addi	sp,sp,-16
    800018f4:	00113423          	sd	ra,8(sp)
    800018f8:	00813023          	sd	s0,0(sp)
    800018fc:	01010413          	addi	s0,sp,16
    queuePCB->push(pcb);
    80001900:	00053503          	ld	a0,0(a0)
    80001904:	00000097          	auipc	ra,0x0
    80001908:	120080e7          	jalr	288(ra) # 80001a24 <_ZN5QueueIP3PCBE4pushES1_>
}
    8000190c:	00813083          	ld	ra,8(sp)
    80001910:	00013403          	ld	s0,0(sp)
    80001914:	01010113          	addi	sp,sp,16
    80001918:	00008067          	ret

000000008000191c <_ZN3PCB5startEv>:
{
    8000191c:	fe010113          	addi	sp,sp,-32
    80001920:	00113c23          	sd	ra,24(sp)
    80001924:	00813823          	sd	s0,16(sp)
    80001928:	00913423          	sd	s1,8(sp)
    8000192c:	02010413          	addi	s0,sp,32
    80001930:	00050493          	mv	s1,a0
    Scheduler::getScheduler()->put(this);
    80001934:	00000097          	auipc	ra,0x0
    80001938:	d9c080e7          	jalr	-612(ra) # 800016d0 <_ZN9Scheduler12getSchedulerEv>
    8000193c:	00048593          	mv	a1,s1
    80001940:	00000097          	auipc	ra,0x0
    80001944:	fb0080e7          	jalr	-80(ra) # 800018f0 <_ZN9Scheduler3putEP3PCB>
}
    80001948:	01813083          	ld	ra,24(sp)
    8000194c:	01013403          	ld	s0,16(sp)
    80001950:	00813483          	ld	s1,8(sp)
    80001954:	02010113          	addi	sp,sp,32
    80001958:	00008067          	ret

000000008000195c <_ZN6Thread5startEv>:
void Thread::start() {
    8000195c:	ff010113          	addi	sp,sp,-16
    80001960:	00113423          	sd	ra,8(sp)
    80001964:	00813023          	sd	s0,0(sp)
    80001968:	01010413          	addi	s0,sp,16
    threadPCB->start();
    8000196c:	02053503          	ld	a0,32(a0)
    80001970:	00000097          	auipc	ra,0x0
    80001974:	fac080e7          	jalr	-84(ra) # 8000191c <_ZN3PCB5startEv>
}
    80001978:	00813083          	ld	ra,8(sp)
    8000197c:	00013403          	ld	s0,0(sp)
    80001980:	01010113          	addi	sp,sp,16
    80001984:	00008067          	ret

0000000080001988 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    80001988:	fe010113          	addi	sp,sp,-32
    8000198c:	00113c23          	sd	ra,24(sp)
    80001990:	00813823          	sd	s0,16(sp)
    80001994:	00913423          	sd	s1,8(sp)
    80001998:	01213023          	sd	s2,0(sp)
    8000199c:	02010413          	addi	s0,sp,32
    PCB* t =  queuePCB->front();
    800019a0:	00053903          	ld	s2,0(a0)
    800019a4:	00090513          	mv	a0,s2
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	0d4080e7          	jalr	212(ra) # 80001a7c <_ZN5QueueIP3PCBE5frontEv>
    800019b0:	00050493          	mv	s1,a0
    queuePCB->pop();
    800019b4:	00090513          	mv	a0,s2
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	0e8080e7          	jalr	232(ra) # 80001aa0 <_ZN5QueueIP3PCBE3popEv>
}
    800019c0:	00048513          	mv	a0,s1
    800019c4:	01813083          	ld	ra,24(sp)
    800019c8:	01013403          	ld	s0,16(sp)
    800019cc:	00813483          	ld	s1,8(sp)
    800019d0:	00013903          	ld	s2,0(sp)
    800019d4:	02010113          	addi	sp,sp,32
    800019d8:	00008067          	ret

00000000800019dc <_ZN9SchedulerD1Ev>:
Scheduler::~Scheduler() {
    800019dc:	fe010113          	addi	sp,sp,-32
    800019e0:	00113c23          	sd	ra,24(sp)
    800019e4:	00813823          	sd	s0,16(sp)
    800019e8:	00913423          	sd	s1,8(sp)
    800019ec:	02010413          	addi	s0,sp,32
    delete queuePCB;
    800019f0:	00053483          	ld	s1,0(a0)
    800019f4:	00048e63          	beqz	s1,80001a10 <_ZN9SchedulerD1Ev+0x34>
    800019f8:	00048513          	mv	a0,s1
    800019fc:	00000097          	auipc	ra,0x0
    80001a00:	130080e7          	jalr	304(ra) # 80001b2c <_ZN5QueueIP3PCBED1Ev>
    80001a04:	00048513          	mv	a0,s1
    80001a08:	00000097          	auipc	ra,0x0
    80001a0c:	0fc080e7          	jalr	252(ra) # 80001b04 <_ZN5QueueIP3PCBEdlEPv>
}
    80001a10:	01813083          	ld	ra,24(sp)
    80001a14:	01013403          	ld	s0,16(sp)
    80001a18:	00813483          	ld	s1,8(sp)
    80001a1c:	02010113          	addi	sp,sp,32
    80001a20:	00008067          	ret

0000000080001a24 <_ZN5QueueIP3PCBE4pushES1_>:
void Queue<T>::push(T t) {
    80001a24:	fe010113          	addi	sp,sp,-32
    80001a28:	00113c23          	sd	ra,24(sp)
    80001a2c:	00813823          	sd	s0,16(sp)
    80001a30:	00913423          	sd	s1,8(sp)
    80001a34:	02010413          	addi	s0,sp,32
    80001a38:	00050493          	mv	s1,a0
    Elem* newElem = (Elem*)MemoryAllocator::getMemoryAllocator()->mem_alloc(sizeof(Elem));
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	c18080e7          	jalr	-1000(ra) # 80001654 <_ZN15MemoryAllocator18getMemoryAllocatorEv>
    80001a44:	01000593          	li	a1,16
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	b74080e7          	jalr	-1164(ra) # 800015bc <_ZN15MemoryAllocator9mem_allocEm>
    if(first == 0) {
    80001a50:	0004b783          	ld	a5,0(s1)
    80001a54:	00078c63          	beqz	a5,80001a6c <_ZN5QueueIP3PCBE4pushES1_+0x48>
}
    80001a58:	01813083          	ld	ra,24(sp)
    80001a5c:	01013403          	ld	s0,16(sp)
    80001a60:	00813483          	ld	s1,8(sp)
    80001a64:	02010113          	addi	sp,sp,32
    80001a68:	00008067          	ret
        first = newElem;
    80001a6c:	00a4b023          	sd	a0,0(s1)
        last = 0;
    80001a70:	0004b423          	sd	zero,8(s1)
        first->next = last;
    80001a74:	00053423          	sd	zero,8(a0)
}
    80001a78:	fe1ff06f          	j	80001a58 <_ZN5QueueIP3PCBE4pushES1_+0x34>

0000000080001a7c <_ZN5QueueIP3PCBE5frontEv>:
T Queue<T>::front() {
    80001a7c:	ff010113          	addi	sp,sp,-16
    80001a80:	00813423          	sd	s0,8(sp)
    80001a84:	01010413          	addi	s0,sp,16
   if(first == 0)
    80001a88:	00053503          	ld	a0,0(a0)
    80001a8c:	00050463          	beqz	a0,80001a94 <_ZN5QueueIP3PCBE5frontEv+0x18>
   return first->data;
    80001a90:	00053503          	ld	a0,0(a0)
}
    80001a94:	00813403          	ld	s0,8(sp)
    80001a98:	01010113          	addi	sp,sp,16
    80001a9c:	00008067          	ret

0000000080001aa0 <_ZN5QueueIP3PCBE3popEv>:
void Queue<T>::pop() {
    80001aa0:	fe010113          	addi	sp,sp,-32
    80001aa4:	00113c23          	sd	ra,24(sp)
    80001aa8:	00813823          	sd	s0,16(sp)
    80001aac:	00913423          	sd	s1,8(sp)
    80001ab0:	01213023          	sd	s2,0(sp)
    80001ab4:	02010413          	addi	s0,sp,32
    80001ab8:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80001abc:	00053783          	ld	a5,0(a0)
    80001ac0:	0087b903          	ld	s2,8(a5)
    MemoryAllocator::getMemoryAllocator()->mem_free(first);
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	b90080e7          	jalr	-1136(ra) # 80001654 <_ZN15MemoryAllocator18getMemoryAllocatorEv>
    80001acc:	0004b583          	ld	a1,0(s1)
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	b18080e7          	jalr	-1256(ra) # 800015e8 <_ZN15MemoryAllocator8mem_freeEPv>
    first = newFirst;
    80001ad8:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80001adc:	00090e63          	beqz	s2,80001af8 <_ZN5QueueIP3PCBE3popEv+0x58>
}
    80001ae0:	01813083          	ld	ra,24(sp)
    80001ae4:	01013403          	ld	s0,16(sp)
    80001ae8:	00813483          	ld	s1,8(sp)
    80001aec:	00013903          	ld	s2,0(sp)
    80001af0:	02010113          	addi	sp,sp,32
    80001af4:	00008067          	ret
        first = last = 0;
    80001af8:	0004b423          	sd	zero,8(s1)
    80001afc:	0004b023          	sd	zero,0(s1)
}
    80001b00:	fe1ff06f          	j	80001ae0 <_ZN5QueueIP3PCBE3popEv+0x40>

0000000080001b04 <_ZN5QueueIP3PCBEdlEPv>:
void Queue<T>::operator delete(void *p) {
    80001b04:	ff010113          	addi	sp,sp,-16
    80001b08:	00113423          	sd	ra,8(sp)
    80001b0c:	00813023          	sd	s0,0(sp)
    80001b10:	01010413          	addi	s0,sp,16
    ::operator delete(p);
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	a68080e7          	jalr	-1432(ra) # 8000157c <_ZdlPv>
}
    80001b1c:	00813083          	ld	ra,8(sp)
    80001b20:	00013403          	ld	s0,0(sp)
    80001b24:	01010113          	addi	sp,sp,16
    80001b28:	00008067          	ret

0000000080001b2c <_ZN5QueueIP3PCBED1Ev>:
Queue<T>::~Queue() {
    80001b2c:	fe010113          	addi	sp,sp,-32
    80001b30:	00113c23          	sd	ra,24(sp)
    80001b34:	00813823          	sd	s0,16(sp)
    80001b38:	00913423          	sd	s1,8(sp)
    80001b3c:	01213023          	sd	s2,0(sp)
    80001b40:	02010413          	addi	s0,sp,32
    Elem* curr = first;
    80001b44:	00053483          	ld	s1,0(a0)
    while(curr != 0)
    80001b48:	02048263          	beqz	s1,80001b6c <_ZN5QueueIP3PCBED1Ev+0x40>
        curr = curr->next;
    80001b4c:	0084b903          	ld	s2,8(s1)
        MemoryAllocator::getMemoryAllocator()->mem_free(old);
    80001b50:	00000097          	auipc	ra,0x0
    80001b54:	b04080e7          	jalr	-1276(ra) # 80001654 <_ZN15MemoryAllocator18getMemoryAllocatorEv>
    80001b58:	00048593          	mv	a1,s1
    80001b5c:	00000097          	auipc	ra,0x0
    80001b60:	a8c080e7          	jalr	-1396(ra) # 800015e8 <_ZN15MemoryAllocator8mem_freeEPv>
        curr = curr->next;
    80001b64:	00090493          	mv	s1,s2
    while(curr != 0)
    80001b68:	fe1ff06f          	j	80001b48 <_ZN5QueueIP3PCBED1Ev+0x1c>
}
    80001b6c:	01813083          	ld	ra,24(sp)
    80001b70:	01013403          	ld	s0,16(sp)
    80001b74:	00813483          	ld	s1,8(sp)
    80001b78:	00013903          	ld	s2,0(sp)
    80001b7c:	02010113          	addi	sp,sp,32
    80001b80:	00008067          	ret

0000000080001b84 <start>:
    80001b84:	ff010113          	addi	sp,sp,-16
    80001b88:	00813423          	sd	s0,8(sp)
    80001b8c:	01010413          	addi	s0,sp,16
    80001b90:	300027f3          	csrr	a5,mstatus
    80001b94:	ffffe737          	lui	a4,0xffffe
    80001b98:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8cef>
    80001b9c:	00e7f7b3          	and	a5,a5,a4
    80001ba0:	00001737          	lui	a4,0x1
    80001ba4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001ba8:	00e7e7b3          	or	a5,a5,a4
    80001bac:	30079073          	csrw	mstatus,a5
    80001bb0:	00000797          	auipc	a5,0x0
    80001bb4:	16078793          	addi	a5,a5,352 # 80001d10 <system_main>
    80001bb8:	34179073          	csrw	mepc,a5
    80001bbc:	00000793          	li	a5,0
    80001bc0:	18079073          	csrw	satp,a5
    80001bc4:	000107b7          	lui	a5,0x10
    80001bc8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001bcc:	30279073          	csrw	medeleg,a5
    80001bd0:	30379073          	csrw	mideleg,a5
    80001bd4:	104027f3          	csrr	a5,sie
    80001bd8:	2227e793          	ori	a5,a5,546
    80001bdc:	10479073          	csrw	sie,a5
    80001be0:	fff00793          	li	a5,-1
    80001be4:	00a7d793          	srli	a5,a5,0xa
    80001be8:	3b079073          	csrw	pmpaddr0,a5
    80001bec:	00f00793          	li	a5,15
    80001bf0:	3a079073          	csrw	pmpcfg0,a5
    80001bf4:	f14027f3          	csrr	a5,mhartid
    80001bf8:	0200c737          	lui	a4,0x200c
    80001bfc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001c00:	0007869b          	sext.w	a3,a5
    80001c04:	00269713          	slli	a4,a3,0x2
    80001c08:	000f4637          	lui	a2,0xf4
    80001c0c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001c10:	00d70733          	add	a4,a4,a3
    80001c14:	0037979b          	slliw	a5,a5,0x3
    80001c18:	020046b7          	lui	a3,0x2004
    80001c1c:	00d787b3          	add	a5,a5,a3
    80001c20:	00c585b3          	add	a1,a1,a2
    80001c24:	00371693          	slli	a3,a4,0x3
    80001c28:	00003717          	auipc	a4,0x3
    80001c2c:	c8870713          	addi	a4,a4,-888 # 800048b0 <timer_scratch>
    80001c30:	00b7b023          	sd	a1,0(a5)
    80001c34:	00d70733          	add	a4,a4,a3
    80001c38:	00f73c23          	sd	a5,24(a4)
    80001c3c:	02c73023          	sd	a2,32(a4)
    80001c40:	34071073          	csrw	mscratch,a4
    80001c44:	00000797          	auipc	a5,0x0
    80001c48:	6ec78793          	addi	a5,a5,1772 # 80002330 <timervec>
    80001c4c:	30579073          	csrw	mtvec,a5
    80001c50:	300027f3          	csrr	a5,mstatus
    80001c54:	0087e793          	ori	a5,a5,8
    80001c58:	30079073          	csrw	mstatus,a5
    80001c5c:	304027f3          	csrr	a5,mie
    80001c60:	0807e793          	ori	a5,a5,128
    80001c64:	30479073          	csrw	mie,a5
    80001c68:	f14027f3          	csrr	a5,mhartid
    80001c6c:	0007879b          	sext.w	a5,a5
    80001c70:	00078213          	mv	tp,a5
    80001c74:	30200073          	mret
    80001c78:	00813403          	ld	s0,8(sp)
    80001c7c:	01010113          	addi	sp,sp,16
    80001c80:	00008067          	ret

0000000080001c84 <timerinit>:
    80001c84:	ff010113          	addi	sp,sp,-16
    80001c88:	00813423          	sd	s0,8(sp)
    80001c8c:	01010413          	addi	s0,sp,16
    80001c90:	f14027f3          	csrr	a5,mhartid
    80001c94:	0200c737          	lui	a4,0x200c
    80001c98:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001c9c:	0007869b          	sext.w	a3,a5
    80001ca0:	00269713          	slli	a4,a3,0x2
    80001ca4:	000f4637          	lui	a2,0xf4
    80001ca8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001cac:	00d70733          	add	a4,a4,a3
    80001cb0:	0037979b          	slliw	a5,a5,0x3
    80001cb4:	020046b7          	lui	a3,0x2004
    80001cb8:	00d787b3          	add	a5,a5,a3
    80001cbc:	00c585b3          	add	a1,a1,a2
    80001cc0:	00371693          	slli	a3,a4,0x3
    80001cc4:	00003717          	auipc	a4,0x3
    80001cc8:	bec70713          	addi	a4,a4,-1044 # 800048b0 <timer_scratch>
    80001ccc:	00b7b023          	sd	a1,0(a5)
    80001cd0:	00d70733          	add	a4,a4,a3
    80001cd4:	00f73c23          	sd	a5,24(a4)
    80001cd8:	02c73023          	sd	a2,32(a4)
    80001cdc:	34071073          	csrw	mscratch,a4
    80001ce0:	00000797          	auipc	a5,0x0
    80001ce4:	65078793          	addi	a5,a5,1616 # 80002330 <timervec>
    80001ce8:	30579073          	csrw	mtvec,a5
    80001cec:	300027f3          	csrr	a5,mstatus
    80001cf0:	0087e793          	ori	a5,a5,8
    80001cf4:	30079073          	csrw	mstatus,a5
    80001cf8:	304027f3          	csrr	a5,mie
    80001cfc:	0807e793          	ori	a5,a5,128
    80001d00:	30479073          	csrw	mie,a5
    80001d04:	00813403          	ld	s0,8(sp)
    80001d08:	01010113          	addi	sp,sp,16
    80001d0c:	00008067          	ret

0000000080001d10 <system_main>:
    80001d10:	fe010113          	addi	sp,sp,-32
    80001d14:	00813823          	sd	s0,16(sp)
    80001d18:	00913423          	sd	s1,8(sp)
    80001d1c:	00113c23          	sd	ra,24(sp)
    80001d20:	02010413          	addi	s0,sp,32
    80001d24:	00000097          	auipc	ra,0x0
    80001d28:	0c4080e7          	jalr	196(ra) # 80001de8 <cpuid>
    80001d2c:	00003497          	auipc	s1,0x3
    80001d30:	b3c48493          	addi	s1,s1,-1220 # 80004868 <started>
    80001d34:	02050263          	beqz	a0,80001d58 <system_main+0x48>
    80001d38:	0004a783          	lw	a5,0(s1)
    80001d3c:	0007879b          	sext.w	a5,a5
    80001d40:	fe078ce3          	beqz	a5,80001d38 <system_main+0x28>
    80001d44:	0ff0000f          	fence
    80001d48:	00002517          	auipc	a0,0x2
    80001d4c:	34850513          	addi	a0,a0,840 # 80004090 <bntOne+0x38>
    80001d50:	00001097          	auipc	ra,0x1
    80001d54:	a7c080e7          	jalr	-1412(ra) # 800027cc <panic>
    80001d58:	00001097          	auipc	ra,0x1
    80001d5c:	9d0080e7          	jalr	-1584(ra) # 80002728 <consoleinit>
    80001d60:	00001097          	auipc	ra,0x1
    80001d64:	15c080e7          	jalr	348(ra) # 80002ebc <printfinit>
    80001d68:	00002517          	auipc	a0,0x2
    80001d6c:	40850513          	addi	a0,a0,1032 # 80004170 <bntOne+0x118>
    80001d70:	00001097          	auipc	ra,0x1
    80001d74:	ab8080e7          	jalr	-1352(ra) # 80002828 <__printf>
    80001d78:	00002517          	auipc	a0,0x2
    80001d7c:	2e850513          	addi	a0,a0,744 # 80004060 <bntOne+0x8>
    80001d80:	00001097          	auipc	ra,0x1
    80001d84:	aa8080e7          	jalr	-1368(ra) # 80002828 <__printf>
    80001d88:	00002517          	auipc	a0,0x2
    80001d8c:	3e850513          	addi	a0,a0,1000 # 80004170 <bntOne+0x118>
    80001d90:	00001097          	auipc	ra,0x1
    80001d94:	a98080e7          	jalr	-1384(ra) # 80002828 <__printf>
    80001d98:	00001097          	auipc	ra,0x1
    80001d9c:	4b0080e7          	jalr	1200(ra) # 80003248 <kinit>
    80001da0:	00000097          	auipc	ra,0x0
    80001da4:	148080e7          	jalr	328(ra) # 80001ee8 <trapinit>
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	16c080e7          	jalr	364(ra) # 80001f14 <trapinithart>
    80001db0:	00000097          	auipc	ra,0x0
    80001db4:	5c0080e7          	jalr	1472(ra) # 80002370 <plicinit>
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	5e0080e7          	jalr	1504(ra) # 80002398 <plicinithart>
    80001dc0:	00000097          	auipc	ra,0x0
    80001dc4:	078080e7          	jalr	120(ra) # 80001e38 <userinit>
    80001dc8:	0ff0000f          	fence
    80001dcc:	00100793          	li	a5,1
    80001dd0:	00002517          	auipc	a0,0x2
    80001dd4:	2a850513          	addi	a0,a0,680 # 80004078 <bntOne+0x20>
    80001dd8:	00f4a023          	sw	a5,0(s1)
    80001ddc:	00001097          	auipc	ra,0x1
    80001de0:	a4c080e7          	jalr	-1460(ra) # 80002828 <__printf>
    80001de4:	0000006f          	j	80001de4 <system_main+0xd4>

0000000080001de8 <cpuid>:
    80001de8:	ff010113          	addi	sp,sp,-16
    80001dec:	00813423          	sd	s0,8(sp)
    80001df0:	01010413          	addi	s0,sp,16
    80001df4:	00020513          	mv	a0,tp
    80001df8:	00813403          	ld	s0,8(sp)
    80001dfc:	0005051b          	sext.w	a0,a0
    80001e00:	01010113          	addi	sp,sp,16
    80001e04:	00008067          	ret

0000000080001e08 <mycpu>:
    80001e08:	ff010113          	addi	sp,sp,-16
    80001e0c:	00813423          	sd	s0,8(sp)
    80001e10:	01010413          	addi	s0,sp,16
    80001e14:	00020793          	mv	a5,tp
    80001e18:	00813403          	ld	s0,8(sp)
    80001e1c:	0007879b          	sext.w	a5,a5
    80001e20:	00779793          	slli	a5,a5,0x7
    80001e24:	00004517          	auipc	a0,0x4
    80001e28:	abc50513          	addi	a0,a0,-1348 # 800058e0 <cpus>
    80001e2c:	00f50533          	add	a0,a0,a5
    80001e30:	01010113          	addi	sp,sp,16
    80001e34:	00008067          	ret

0000000080001e38 <userinit>:
    80001e38:	ff010113          	addi	sp,sp,-16
    80001e3c:	00813423          	sd	s0,8(sp)
    80001e40:	01010413          	addi	s0,sp,16
    80001e44:	00813403          	ld	s0,8(sp)
    80001e48:	01010113          	addi	sp,sp,16
    80001e4c:	fffff317          	auipc	t1,0xfffff
    80001e50:	64430067          	jr	1604(t1) # 80001490 <main>

0000000080001e54 <either_copyout>:
    80001e54:	ff010113          	addi	sp,sp,-16
    80001e58:	00813023          	sd	s0,0(sp)
    80001e5c:	00113423          	sd	ra,8(sp)
    80001e60:	01010413          	addi	s0,sp,16
    80001e64:	02051663          	bnez	a0,80001e90 <either_copyout+0x3c>
    80001e68:	00058513          	mv	a0,a1
    80001e6c:	00060593          	mv	a1,a2
    80001e70:	0006861b          	sext.w	a2,a3
    80001e74:	00002097          	auipc	ra,0x2
    80001e78:	c60080e7          	jalr	-928(ra) # 80003ad4 <__memmove>
    80001e7c:	00813083          	ld	ra,8(sp)
    80001e80:	00013403          	ld	s0,0(sp)
    80001e84:	00000513          	li	a0,0
    80001e88:	01010113          	addi	sp,sp,16
    80001e8c:	00008067          	ret
    80001e90:	00002517          	auipc	a0,0x2
    80001e94:	22850513          	addi	a0,a0,552 # 800040b8 <bntOne+0x60>
    80001e98:	00001097          	auipc	ra,0x1
    80001e9c:	934080e7          	jalr	-1740(ra) # 800027cc <panic>

0000000080001ea0 <either_copyin>:
    80001ea0:	ff010113          	addi	sp,sp,-16
    80001ea4:	00813023          	sd	s0,0(sp)
    80001ea8:	00113423          	sd	ra,8(sp)
    80001eac:	01010413          	addi	s0,sp,16
    80001eb0:	02059463          	bnez	a1,80001ed8 <either_copyin+0x38>
    80001eb4:	00060593          	mv	a1,a2
    80001eb8:	0006861b          	sext.w	a2,a3
    80001ebc:	00002097          	auipc	ra,0x2
    80001ec0:	c18080e7          	jalr	-1000(ra) # 80003ad4 <__memmove>
    80001ec4:	00813083          	ld	ra,8(sp)
    80001ec8:	00013403          	ld	s0,0(sp)
    80001ecc:	00000513          	li	a0,0
    80001ed0:	01010113          	addi	sp,sp,16
    80001ed4:	00008067          	ret
    80001ed8:	00002517          	auipc	a0,0x2
    80001edc:	20850513          	addi	a0,a0,520 # 800040e0 <bntOne+0x88>
    80001ee0:	00001097          	auipc	ra,0x1
    80001ee4:	8ec080e7          	jalr	-1812(ra) # 800027cc <panic>

0000000080001ee8 <trapinit>:
    80001ee8:	ff010113          	addi	sp,sp,-16
    80001eec:	00813423          	sd	s0,8(sp)
    80001ef0:	01010413          	addi	s0,sp,16
    80001ef4:	00813403          	ld	s0,8(sp)
    80001ef8:	00002597          	auipc	a1,0x2
    80001efc:	21058593          	addi	a1,a1,528 # 80004108 <bntOne+0xb0>
    80001f00:	00004517          	auipc	a0,0x4
    80001f04:	a6050513          	addi	a0,a0,-1440 # 80005960 <tickslock>
    80001f08:	01010113          	addi	sp,sp,16
    80001f0c:	00001317          	auipc	t1,0x1
    80001f10:	5cc30067          	jr	1484(t1) # 800034d8 <initlock>

0000000080001f14 <trapinithart>:
    80001f14:	ff010113          	addi	sp,sp,-16
    80001f18:	00813423          	sd	s0,8(sp)
    80001f1c:	01010413          	addi	s0,sp,16
    80001f20:	00000797          	auipc	a5,0x0
    80001f24:	30078793          	addi	a5,a5,768 # 80002220 <kernelvec>
    80001f28:	10579073          	csrw	stvec,a5
    80001f2c:	00813403          	ld	s0,8(sp)
    80001f30:	01010113          	addi	sp,sp,16
    80001f34:	00008067          	ret

0000000080001f38 <usertrap>:
    80001f38:	ff010113          	addi	sp,sp,-16
    80001f3c:	00813423          	sd	s0,8(sp)
    80001f40:	01010413          	addi	s0,sp,16
    80001f44:	00813403          	ld	s0,8(sp)
    80001f48:	01010113          	addi	sp,sp,16
    80001f4c:	00008067          	ret

0000000080001f50 <usertrapret>:
    80001f50:	ff010113          	addi	sp,sp,-16
    80001f54:	00813423          	sd	s0,8(sp)
    80001f58:	01010413          	addi	s0,sp,16
    80001f5c:	00813403          	ld	s0,8(sp)
    80001f60:	01010113          	addi	sp,sp,16
    80001f64:	00008067          	ret

0000000080001f68 <kerneltrap>:
    80001f68:	fe010113          	addi	sp,sp,-32
    80001f6c:	00813823          	sd	s0,16(sp)
    80001f70:	00113c23          	sd	ra,24(sp)
    80001f74:	00913423          	sd	s1,8(sp)
    80001f78:	02010413          	addi	s0,sp,32
    80001f7c:	142025f3          	csrr	a1,scause
    80001f80:	100027f3          	csrr	a5,sstatus
    80001f84:	0027f793          	andi	a5,a5,2
    80001f88:	10079c63          	bnez	a5,800020a0 <kerneltrap+0x138>
    80001f8c:	142027f3          	csrr	a5,scause
    80001f90:	0207ce63          	bltz	a5,80001fcc <kerneltrap+0x64>
    80001f94:	00002517          	auipc	a0,0x2
    80001f98:	1bc50513          	addi	a0,a0,444 # 80004150 <bntOne+0xf8>
    80001f9c:	00001097          	auipc	ra,0x1
    80001fa0:	88c080e7          	jalr	-1908(ra) # 80002828 <__printf>
    80001fa4:	141025f3          	csrr	a1,sepc
    80001fa8:	14302673          	csrr	a2,stval
    80001fac:	00002517          	auipc	a0,0x2
    80001fb0:	1b450513          	addi	a0,a0,436 # 80004160 <bntOne+0x108>
    80001fb4:	00001097          	auipc	ra,0x1
    80001fb8:	874080e7          	jalr	-1932(ra) # 80002828 <__printf>
    80001fbc:	00002517          	auipc	a0,0x2
    80001fc0:	1bc50513          	addi	a0,a0,444 # 80004178 <bntOne+0x120>
    80001fc4:	00001097          	auipc	ra,0x1
    80001fc8:	808080e7          	jalr	-2040(ra) # 800027cc <panic>
    80001fcc:	0ff7f713          	andi	a4,a5,255
    80001fd0:	00900693          	li	a3,9
    80001fd4:	04d70063          	beq	a4,a3,80002014 <kerneltrap+0xac>
    80001fd8:	fff00713          	li	a4,-1
    80001fdc:	03f71713          	slli	a4,a4,0x3f
    80001fe0:	00170713          	addi	a4,a4,1
    80001fe4:	fae798e3          	bne	a5,a4,80001f94 <kerneltrap+0x2c>
    80001fe8:	00000097          	auipc	ra,0x0
    80001fec:	e00080e7          	jalr	-512(ra) # 80001de8 <cpuid>
    80001ff0:	06050663          	beqz	a0,8000205c <kerneltrap+0xf4>
    80001ff4:	144027f3          	csrr	a5,sip
    80001ff8:	ffd7f793          	andi	a5,a5,-3
    80001ffc:	14479073          	csrw	sip,a5
    80002000:	01813083          	ld	ra,24(sp)
    80002004:	01013403          	ld	s0,16(sp)
    80002008:	00813483          	ld	s1,8(sp)
    8000200c:	02010113          	addi	sp,sp,32
    80002010:	00008067          	ret
    80002014:	00000097          	auipc	ra,0x0
    80002018:	3d0080e7          	jalr	976(ra) # 800023e4 <plic_claim>
    8000201c:	00a00793          	li	a5,10
    80002020:	00050493          	mv	s1,a0
    80002024:	06f50863          	beq	a0,a5,80002094 <kerneltrap+0x12c>
    80002028:	fc050ce3          	beqz	a0,80002000 <kerneltrap+0x98>
    8000202c:	00050593          	mv	a1,a0
    80002030:	00002517          	auipc	a0,0x2
    80002034:	10050513          	addi	a0,a0,256 # 80004130 <bntOne+0xd8>
    80002038:	00000097          	auipc	ra,0x0
    8000203c:	7f0080e7          	jalr	2032(ra) # 80002828 <__printf>
    80002040:	01013403          	ld	s0,16(sp)
    80002044:	01813083          	ld	ra,24(sp)
    80002048:	00048513          	mv	a0,s1
    8000204c:	00813483          	ld	s1,8(sp)
    80002050:	02010113          	addi	sp,sp,32
    80002054:	00000317          	auipc	t1,0x0
    80002058:	3c830067          	jr	968(t1) # 8000241c <plic_complete>
    8000205c:	00004517          	auipc	a0,0x4
    80002060:	90450513          	addi	a0,a0,-1788 # 80005960 <tickslock>
    80002064:	00001097          	auipc	ra,0x1
    80002068:	498080e7          	jalr	1176(ra) # 800034fc <acquire>
    8000206c:	00003717          	auipc	a4,0x3
    80002070:	80070713          	addi	a4,a4,-2048 # 8000486c <ticks>
    80002074:	00072783          	lw	a5,0(a4)
    80002078:	00004517          	auipc	a0,0x4
    8000207c:	8e850513          	addi	a0,a0,-1816 # 80005960 <tickslock>
    80002080:	0017879b          	addiw	a5,a5,1
    80002084:	00f72023          	sw	a5,0(a4)
    80002088:	00001097          	auipc	ra,0x1
    8000208c:	540080e7          	jalr	1344(ra) # 800035c8 <release>
    80002090:	f65ff06f          	j	80001ff4 <kerneltrap+0x8c>
    80002094:	00001097          	auipc	ra,0x1
    80002098:	09c080e7          	jalr	156(ra) # 80003130 <uartintr>
    8000209c:	fa5ff06f          	j	80002040 <kerneltrap+0xd8>
    800020a0:	00002517          	auipc	a0,0x2
    800020a4:	07050513          	addi	a0,a0,112 # 80004110 <bntOne+0xb8>
    800020a8:	00000097          	auipc	ra,0x0
    800020ac:	724080e7          	jalr	1828(ra) # 800027cc <panic>

00000000800020b0 <clockintr>:
    800020b0:	fe010113          	addi	sp,sp,-32
    800020b4:	00813823          	sd	s0,16(sp)
    800020b8:	00913423          	sd	s1,8(sp)
    800020bc:	00113c23          	sd	ra,24(sp)
    800020c0:	02010413          	addi	s0,sp,32
    800020c4:	00004497          	auipc	s1,0x4
    800020c8:	89c48493          	addi	s1,s1,-1892 # 80005960 <tickslock>
    800020cc:	00048513          	mv	a0,s1
    800020d0:	00001097          	auipc	ra,0x1
    800020d4:	42c080e7          	jalr	1068(ra) # 800034fc <acquire>
    800020d8:	00002717          	auipc	a4,0x2
    800020dc:	79470713          	addi	a4,a4,1940 # 8000486c <ticks>
    800020e0:	00072783          	lw	a5,0(a4)
    800020e4:	01013403          	ld	s0,16(sp)
    800020e8:	01813083          	ld	ra,24(sp)
    800020ec:	00048513          	mv	a0,s1
    800020f0:	0017879b          	addiw	a5,a5,1
    800020f4:	00813483          	ld	s1,8(sp)
    800020f8:	00f72023          	sw	a5,0(a4)
    800020fc:	02010113          	addi	sp,sp,32
    80002100:	00001317          	auipc	t1,0x1
    80002104:	4c830067          	jr	1224(t1) # 800035c8 <release>

0000000080002108 <devintr>:
    80002108:	142027f3          	csrr	a5,scause
    8000210c:	00000513          	li	a0,0
    80002110:	0007c463          	bltz	a5,80002118 <devintr+0x10>
    80002114:	00008067          	ret
    80002118:	fe010113          	addi	sp,sp,-32
    8000211c:	00813823          	sd	s0,16(sp)
    80002120:	00113c23          	sd	ra,24(sp)
    80002124:	00913423          	sd	s1,8(sp)
    80002128:	02010413          	addi	s0,sp,32
    8000212c:	0ff7f713          	andi	a4,a5,255
    80002130:	00900693          	li	a3,9
    80002134:	04d70c63          	beq	a4,a3,8000218c <devintr+0x84>
    80002138:	fff00713          	li	a4,-1
    8000213c:	03f71713          	slli	a4,a4,0x3f
    80002140:	00170713          	addi	a4,a4,1
    80002144:	00e78c63          	beq	a5,a4,8000215c <devintr+0x54>
    80002148:	01813083          	ld	ra,24(sp)
    8000214c:	01013403          	ld	s0,16(sp)
    80002150:	00813483          	ld	s1,8(sp)
    80002154:	02010113          	addi	sp,sp,32
    80002158:	00008067          	ret
    8000215c:	00000097          	auipc	ra,0x0
    80002160:	c8c080e7          	jalr	-884(ra) # 80001de8 <cpuid>
    80002164:	06050663          	beqz	a0,800021d0 <devintr+0xc8>
    80002168:	144027f3          	csrr	a5,sip
    8000216c:	ffd7f793          	andi	a5,a5,-3
    80002170:	14479073          	csrw	sip,a5
    80002174:	01813083          	ld	ra,24(sp)
    80002178:	01013403          	ld	s0,16(sp)
    8000217c:	00813483          	ld	s1,8(sp)
    80002180:	00200513          	li	a0,2
    80002184:	02010113          	addi	sp,sp,32
    80002188:	00008067          	ret
    8000218c:	00000097          	auipc	ra,0x0
    80002190:	258080e7          	jalr	600(ra) # 800023e4 <plic_claim>
    80002194:	00a00793          	li	a5,10
    80002198:	00050493          	mv	s1,a0
    8000219c:	06f50663          	beq	a0,a5,80002208 <devintr+0x100>
    800021a0:	00100513          	li	a0,1
    800021a4:	fa0482e3          	beqz	s1,80002148 <devintr+0x40>
    800021a8:	00048593          	mv	a1,s1
    800021ac:	00002517          	auipc	a0,0x2
    800021b0:	f8450513          	addi	a0,a0,-124 # 80004130 <bntOne+0xd8>
    800021b4:	00000097          	auipc	ra,0x0
    800021b8:	674080e7          	jalr	1652(ra) # 80002828 <__printf>
    800021bc:	00048513          	mv	a0,s1
    800021c0:	00000097          	auipc	ra,0x0
    800021c4:	25c080e7          	jalr	604(ra) # 8000241c <plic_complete>
    800021c8:	00100513          	li	a0,1
    800021cc:	f7dff06f          	j	80002148 <devintr+0x40>
    800021d0:	00003517          	auipc	a0,0x3
    800021d4:	79050513          	addi	a0,a0,1936 # 80005960 <tickslock>
    800021d8:	00001097          	auipc	ra,0x1
    800021dc:	324080e7          	jalr	804(ra) # 800034fc <acquire>
    800021e0:	00002717          	auipc	a4,0x2
    800021e4:	68c70713          	addi	a4,a4,1676 # 8000486c <ticks>
    800021e8:	00072783          	lw	a5,0(a4)
    800021ec:	00003517          	auipc	a0,0x3
    800021f0:	77450513          	addi	a0,a0,1908 # 80005960 <tickslock>
    800021f4:	0017879b          	addiw	a5,a5,1
    800021f8:	00f72023          	sw	a5,0(a4)
    800021fc:	00001097          	auipc	ra,0x1
    80002200:	3cc080e7          	jalr	972(ra) # 800035c8 <release>
    80002204:	f65ff06f          	j	80002168 <devintr+0x60>
    80002208:	00001097          	auipc	ra,0x1
    8000220c:	f28080e7          	jalr	-216(ra) # 80003130 <uartintr>
    80002210:	fadff06f          	j	800021bc <devintr+0xb4>
	...

0000000080002220 <kernelvec>:
    80002220:	f0010113          	addi	sp,sp,-256
    80002224:	00113023          	sd	ra,0(sp)
    80002228:	00213423          	sd	sp,8(sp)
    8000222c:	00313823          	sd	gp,16(sp)
    80002230:	00413c23          	sd	tp,24(sp)
    80002234:	02513023          	sd	t0,32(sp)
    80002238:	02613423          	sd	t1,40(sp)
    8000223c:	02713823          	sd	t2,48(sp)
    80002240:	02813c23          	sd	s0,56(sp)
    80002244:	04913023          	sd	s1,64(sp)
    80002248:	04a13423          	sd	a0,72(sp)
    8000224c:	04b13823          	sd	a1,80(sp)
    80002250:	04c13c23          	sd	a2,88(sp)
    80002254:	06d13023          	sd	a3,96(sp)
    80002258:	06e13423          	sd	a4,104(sp)
    8000225c:	06f13823          	sd	a5,112(sp)
    80002260:	07013c23          	sd	a6,120(sp)
    80002264:	09113023          	sd	a7,128(sp)
    80002268:	09213423          	sd	s2,136(sp)
    8000226c:	09313823          	sd	s3,144(sp)
    80002270:	09413c23          	sd	s4,152(sp)
    80002274:	0b513023          	sd	s5,160(sp)
    80002278:	0b613423          	sd	s6,168(sp)
    8000227c:	0b713823          	sd	s7,176(sp)
    80002280:	0b813c23          	sd	s8,184(sp)
    80002284:	0d913023          	sd	s9,192(sp)
    80002288:	0da13423          	sd	s10,200(sp)
    8000228c:	0db13823          	sd	s11,208(sp)
    80002290:	0dc13c23          	sd	t3,216(sp)
    80002294:	0fd13023          	sd	t4,224(sp)
    80002298:	0fe13423          	sd	t5,232(sp)
    8000229c:	0ff13823          	sd	t6,240(sp)
    800022a0:	cc9ff0ef          	jal	ra,80001f68 <kerneltrap>
    800022a4:	00013083          	ld	ra,0(sp)
    800022a8:	00813103          	ld	sp,8(sp)
    800022ac:	01013183          	ld	gp,16(sp)
    800022b0:	02013283          	ld	t0,32(sp)
    800022b4:	02813303          	ld	t1,40(sp)
    800022b8:	03013383          	ld	t2,48(sp)
    800022bc:	03813403          	ld	s0,56(sp)
    800022c0:	04013483          	ld	s1,64(sp)
    800022c4:	04813503          	ld	a0,72(sp)
    800022c8:	05013583          	ld	a1,80(sp)
    800022cc:	05813603          	ld	a2,88(sp)
    800022d0:	06013683          	ld	a3,96(sp)
    800022d4:	06813703          	ld	a4,104(sp)
    800022d8:	07013783          	ld	a5,112(sp)
    800022dc:	07813803          	ld	a6,120(sp)
    800022e0:	08013883          	ld	a7,128(sp)
    800022e4:	08813903          	ld	s2,136(sp)
    800022e8:	09013983          	ld	s3,144(sp)
    800022ec:	09813a03          	ld	s4,152(sp)
    800022f0:	0a013a83          	ld	s5,160(sp)
    800022f4:	0a813b03          	ld	s6,168(sp)
    800022f8:	0b013b83          	ld	s7,176(sp)
    800022fc:	0b813c03          	ld	s8,184(sp)
    80002300:	0c013c83          	ld	s9,192(sp)
    80002304:	0c813d03          	ld	s10,200(sp)
    80002308:	0d013d83          	ld	s11,208(sp)
    8000230c:	0d813e03          	ld	t3,216(sp)
    80002310:	0e013e83          	ld	t4,224(sp)
    80002314:	0e813f03          	ld	t5,232(sp)
    80002318:	0f013f83          	ld	t6,240(sp)
    8000231c:	10010113          	addi	sp,sp,256
    80002320:	10200073          	sret
    80002324:	00000013          	nop
    80002328:	00000013          	nop
    8000232c:	00000013          	nop

0000000080002330 <timervec>:
    80002330:	34051573          	csrrw	a0,mscratch,a0
    80002334:	00b53023          	sd	a1,0(a0)
    80002338:	00c53423          	sd	a2,8(a0)
    8000233c:	00d53823          	sd	a3,16(a0)
    80002340:	01853583          	ld	a1,24(a0)
    80002344:	02053603          	ld	a2,32(a0)
    80002348:	0005b683          	ld	a3,0(a1)
    8000234c:	00c686b3          	add	a3,a3,a2
    80002350:	00d5b023          	sd	a3,0(a1)
    80002354:	00200593          	li	a1,2
    80002358:	14459073          	csrw	sip,a1
    8000235c:	01053683          	ld	a3,16(a0)
    80002360:	00853603          	ld	a2,8(a0)
    80002364:	00053583          	ld	a1,0(a0)
    80002368:	34051573          	csrrw	a0,mscratch,a0
    8000236c:	30200073          	mret

0000000080002370 <plicinit>:
    80002370:	ff010113          	addi	sp,sp,-16
    80002374:	00813423          	sd	s0,8(sp)
    80002378:	01010413          	addi	s0,sp,16
    8000237c:	00813403          	ld	s0,8(sp)
    80002380:	0c0007b7          	lui	a5,0xc000
    80002384:	00100713          	li	a4,1
    80002388:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000238c:	00e7a223          	sw	a4,4(a5)
    80002390:	01010113          	addi	sp,sp,16
    80002394:	00008067          	ret

0000000080002398 <plicinithart>:
    80002398:	ff010113          	addi	sp,sp,-16
    8000239c:	00813023          	sd	s0,0(sp)
    800023a0:	00113423          	sd	ra,8(sp)
    800023a4:	01010413          	addi	s0,sp,16
    800023a8:	00000097          	auipc	ra,0x0
    800023ac:	a40080e7          	jalr	-1472(ra) # 80001de8 <cpuid>
    800023b0:	0085171b          	slliw	a4,a0,0x8
    800023b4:	0c0027b7          	lui	a5,0xc002
    800023b8:	00e787b3          	add	a5,a5,a4
    800023bc:	40200713          	li	a4,1026
    800023c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800023c4:	00813083          	ld	ra,8(sp)
    800023c8:	00013403          	ld	s0,0(sp)
    800023cc:	00d5151b          	slliw	a0,a0,0xd
    800023d0:	0c2017b7          	lui	a5,0xc201
    800023d4:	00a78533          	add	a0,a5,a0
    800023d8:	00052023          	sw	zero,0(a0)
    800023dc:	01010113          	addi	sp,sp,16
    800023e0:	00008067          	ret

00000000800023e4 <plic_claim>:
    800023e4:	ff010113          	addi	sp,sp,-16
    800023e8:	00813023          	sd	s0,0(sp)
    800023ec:	00113423          	sd	ra,8(sp)
    800023f0:	01010413          	addi	s0,sp,16
    800023f4:	00000097          	auipc	ra,0x0
    800023f8:	9f4080e7          	jalr	-1548(ra) # 80001de8 <cpuid>
    800023fc:	00813083          	ld	ra,8(sp)
    80002400:	00013403          	ld	s0,0(sp)
    80002404:	00d5151b          	slliw	a0,a0,0xd
    80002408:	0c2017b7          	lui	a5,0xc201
    8000240c:	00a78533          	add	a0,a5,a0
    80002410:	00452503          	lw	a0,4(a0)
    80002414:	01010113          	addi	sp,sp,16
    80002418:	00008067          	ret

000000008000241c <plic_complete>:
    8000241c:	fe010113          	addi	sp,sp,-32
    80002420:	00813823          	sd	s0,16(sp)
    80002424:	00913423          	sd	s1,8(sp)
    80002428:	00113c23          	sd	ra,24(sp)
    8000242c:	02010413          	addi	s0,sp,32
    80002430:	00050493          	mv	s1,a0
    80002434:	00000097          	auipc	ra,0x0
    80002438:	9b4080e7          	jalr	-1612(ra) # 80001de8 <cpuid>
    8000243c:	01813083          	ld	ra,24(sp)
    80002440:	01013403          	ld	s0,16(sp)
    80002444:	00d5179b          	slliw	a5,a0,0xd
    80002448:	0c201737          	lui	a4,0xc201
    8000244c:	00f707b3          	add	a5,a4,a5
    80002450:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002454:	00813483          	ld	s1,8(sp)
    80002458:	02010113          	addi	sp,sp,32
    8000245c:	00008067          	ret

0000000080002460 <consolewrite>:
    80002460:	fb010113          	addi	sp,sp,-80
    80002464:	04813023          	sd	s0,64(sp)
    80002468:	04113423          	sd	ra,72(sp)
    8000246c:	02913c23          	sd	s1,56(sp)
    80002470:	03213823          	sd	s2,48(sp)
    80002474:	03313423          	sd	s3,40(sp)
    80002478:	03413023          	sd	s4,32(sp)
    8000247c:	01513c23          	sd	s5,24(sp)
    80002480:	05010413          	addi	s0,sp,80
    80002484:	06c05c63          	blez	a2,800024fc <consolewrite+0x9c>
    80002488:	00060993          	mv	s3,a2
    8000248c:	00050a13          	mv	s4,a0
    80002490:	00058493          	mv	s1,a1
    80002494:	00000913          	li	s2,0
    80002498:	fff00a93          	li	s5,-1
    8000249c:	01c0006f          	j	800024b8 <consolewrite+0x58>
    800024a0:	fbf44503          	lbu	a0,-65(s0)
    800024a4:	0019091b          	addiw	s2,s2,1
    800024a8:	00148493          	addi	s1,s1,1
    800024ac:	00001097          	auipc	ra,0x1
    800024b0:	a9c080e7          	jalr	-1380(ra) # 80002f48 <uartputc>
    800024b4:	03298063          	beq	s3,s2,800024d4 <consolewrite+0x74>
    800024b8:	00048613          	mv	a2,s1
    800024bc:	00100693          	li	a3,1
    800024c0:	000a0593          	mv	a1,s4
    800024c4:	fbf40513          	addi	a0,s0,-65
    800024c8:	00000097          	auipc	ra,0x0
    800024cc:	9d8080e7          	jalr	-1576(ra) # 80001ea0 <either_copyin>
    800024d0:	fd5518e3          	bne	a0,s5,800024a0 <consolewrite+0x40>
    800024d4:	04813083          	ld	ra,72(sp)
    800024d8:	04013403          	ld	s0,64(sp)
    800024dc:	03813483          	ld	s1,56(sp)
    800024e0:	02813983          	ld	s3,40(sp)
    800024e4:	02013a03          	ld	s4,32(sp)
    800024e8:	01813a83          	ld	s5,24(sp)
    800024ec:	00090513          	mv	a0,s2
    800024f0:	03013903          	ld	s2,48(sp)
    800024f4:	05010113          	addi	sp,sp,80
    800024f8:	00008067          	ret
    800024fc:	00000913          	li	s2,0
    80002500:	fd5ff06f          	j	800024d4 <consolewrite+0x74>

0000000080002504 <consoleread>:
    80002504:	f9010113          	addi	sp,sp,-112
    80002508:	06813023          	sd	s0,96(sp)
    8000250c:	04913c23          	sd	s1,88(sp)
    80002510:	05213823          	sd	s2,80(sp)
    80002514:	05313423          	sd	s3,72(sp)
    80002518:	05413023          	sd	s4,64(sp)
    8000251c:	03513c23          	sd	s5,56(sp)
    80002520:	03613823          	sd	s6,48(sp)
    80002524:	03713423          	sd	s7,40(sp)
    80002528:	03813023          	sd	s8,32(sp)
    8000252c:	06113423          	sd	ra,104(sp)
    80002530:	01913c23          	sd	s9,24(sp)
    80002534:	07010413          	addi	s0,sp,112
    80002538:	00060b93          	mv	s7,a2
    8000253c:	00050913          	mv	s2,a0
    80002540:	00058c13          	mv	s8,a1
    80002544:	00060b1b          	sext.w	s6,a2
    80002548:	00003497          	auipc	s1,0x3
    8000254c:	44048493          	addi	s1,s1,1088 # 80005988 <cons>
    80002550:	00400993          	li	s3,4
    80002554:	fff00a13          	li	s4,-1
    80002558:	00a00a93          	li	s5,10
    8000255c:	05705e63          	blez	s7,800025b8 <consoleread+0xb4>
    80002560:	09c4a703          	lw	a4,156(s1)
    80002564:	0984a783          	lw	a5,152(s1)
    80002568:	0007071b          	sext.w	a4,a4
    8000256c:	08e78463          	beq	a5,a4,800025f4 <consoleread+0xf0>
    80002570:	07f7f713          	andi	a4,a5,127
    80002574:	00e48733          	add	a4,s1,a4
    80002578:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000257c:	0017869b          	addiw	a3,a5,1
    80002580:	08d4ac23          	sw	a3,152(s1)
    80002584:	00070c9b          	sext.w	s9,a4
    80002588:	0b370663          	beq	a4,s3,80002634 <consoleread+0x130>
    8000258c:	00100693          	li	a3,1
    80002590:	f9f40613          	addi	a2,s0,-97
    80002594:	000c0593          	mv	a1,s8
    80002598:	00090513          	mv	a0,s2
    8000259c:	f8e40fa3          	sb	a4,-97(s0)
    800025a0:	00000097          	auipc	ra,0x0
    800025a4:	8b4080e7          	jalr	-1868(ra) # 80001e54 <either_copyout>
    800025a8:	01450863          	beq	a0,s4,800025b8 <consoleread+0xb4>
    800025ac:	001c0c13          	addi	s8,s8,1
    800025b0:	fffb8b9b          	addiw	s7,s7,-1
    800025b4:	fb5c94e3          	bne	s9,s5,8000255c <consoleread+0x58>
    800025b8:	000b851b          	sext.w	a0,s7
    800025bc:	06813083          	ld	ra,104(sp)
    800025c0:	06013403          	ld	s0,96(sp)
    800025c4:	05813483          	ld	s1,88(sp)
    800025c8:	05013903          	ld	s2,80(sp)
    800025cc:	04813983          	ld	s3,72(sp)
    800025d0:	04013a03          	ld	s4,64(sp)
    800025d4:	03813a83          	ld	s5,56(sp)
    800025d8:	02813b83          	ld	s7,40(sp)
    800025dc:	02013c03          	ld	s8,32(sp)
    800025e0:	01813c83          	ld	s9,24(sp)
    800025e4:	40ab053b          	subw	a0,s6,a0
    800025e8:	03013b03          	ld	s6,48(sp)
    800025ec:	07010113          	addi	sp,sp,112
    800025f0:	00008067          	ret
    800025f4:	00001097          	auipc	ra,0x1
    800025f8:	1d8080e7          	jalr	472(ra) # 800037cc <push_on>
    800025fc:	0984a703          	lw	a4,152(s1)
    80002600:	09c4a783          	lw	a5,156(s1)
    80002604:	0007879b          	sext.w	a5,a5
    80002608:	fef70ce3          	beq	a4,a5,80002600 <consoleread+0xfc>
    8000260c:	00001097          	auipc	ra,0x1
    80002610:	234080e7          	jalr	564(ra) # 80003840 <pop_on>
    80002614:	0984a783          	lw	a5,152(s1)
    80002618:	07f7f713          	andi	a4,a5,127
    8000261c:	00e48733          	add	a4,s1,a4
    80002620:	01874703          	lbu	a4,24(a4)
    80002624:	0017869b          	addiw	a3,a5,1
    80002628:	08d4ac23          	sw	a3,152(s1)
    8000262c:	00070c9b          	sext.w	s9,a4
    80002630:	f5371ee3          	bne	a4,s3,8000258c <consoleread+0x88>
    80002634:	000b851b          	sext.w	a0,s7
    80002638:	f96bf2e3          	bgeu	s7,s6,800025bc <consoleread+0xb8>
    8000263c:	08f4ac23          	sw	a5,152(s1)
    80002640:	f7dff06f          	j	800025bc <consoleread+0xb8>

0000000080002644 <consputc>:
    80002644:	10000793          	li	a5,256
    80002648:	00f50663          	beq	a0,a5,80002654 <consputc+0x10>
    8000264c:	00001317          	auipc	t1,0x1
    80002650:	9f430067          	jr	-1548(t1) # 80003040 <uartputc_sync>
    80002654:	ff010113          	addi	sp,sp,-16
    80002658:	00113423          	sd	ra,8(sp)
    8000265c:	00813023          	sd	s0,0(sp)
    80002660:	01010413          	addi	s0,sp,16
    80002664:	00800513          	li	a0,8
    80002668:	00001097          	auipc	ra,0x1
    8000266c:	9d8080e7          	jalr	-1576(ra) # 80003040 <uartputc_sync>
    80002670:	02000513          	li	a0,32
    80002674:	00001097          	auipc	ra,0x1
    80002678:	9cc080e7          	jalr	-1588(ra) # 80003040 <uartputc_sync>
    8000267c:	00013403          	ld	s0,0(sp)
    80002680:	00813083          	ld	ra,8(sp)
    80002684:	00800513          	li	a0,8
    80002688:	01010113          	addi	sp,sp,16
    8000268c:	00001317          	auipc	t1,0x1
    80002690:	9b430067          	jr	-1612(t1) # 80003040 <uartputc_sync>

0000000080002694 <consoleintr>:
    80002694:	fe010113          	addi	sp,sp,-32
    80002698:	00813823          	sd	s0,16(sp)
    8000269c:	00913423          	sd	s1,8(sp)
    800026a0:	01213023          	sd	s2,0(sp)
    800026a4:	00113c23          	sd	ra,24(sp)
    800026a8:	02010413          	addi	s0,sp,32
    800026ac:	00003917          	auipc	s2,0x3
    800026b0:	2dc90913          	addi	s2,s2,732 # 80005988 <cons>
    800026b4:	00050493          	mv	s1,a0
    800026b8:	00090513          	mv	a0,s2
    800026bc:	00001097          	auipc	ra,0x1
    800026c0:	e40080e7          	jalr	-448(ra) # 800034fc <acquire>
    800026c4:	02048c63          	beqz	s1,800026fc <consoleintr+0x68>
    800026c8:	0a092783          	lw	a5,160(s2)
    800026cc:	09892703          	lw	a4,152(s2)
    800026d0:	07f00693          	li	a3,127
    800026d4:	40e7873b          	subw	a4,a5,a4
    800026d8:	02e6e263          	bltu	a3,a4,800026fc <consoleintr+0x68>
    800026dc:	00d00713          	li	a4,13
    800026e0:	04e48063          	beq	s1,a4,80002720 <consoleintr+0x8c>
    800026e4:	07f7f713          	andi	a4,a5,127
    800026e8:	00e90733          	add	a4,s2,a4
    800026ec:	0017879b          	addiw	a5,a5,1
    800026f0:	0af92023          	sw	a5,160(s2)
    800026f4:	00970c23          	sb	s1,24(a4)
    800026f8:	08f92e23          	sw	a5,156(s2)
    800026fc:	01013403          	ld	s0,16(sp)
    80002700:	01813083          	ld	ra,24(sp)
    80002704:	00813483          	ld	s1,8(sp)
    80002708:	00013903          	ld	s2,0(sp)
    8000270c:	00003517          	auipc	a0,0x3
    80002710:	27c50513          	addi	a0,a0,636 # 80005988 <cons>
    80002714:	02010113          	addi	sp,sp,32
    80002718:	00001317          	auipc	t1,0x1
    8000271c:	eb030067          	jr	-336(t1) # 800035c8 <release>
    80002720:	00a00493          	li	s1,10
    80002724:	fc1ff06f          	j	800026e4 <consoleintr+0x50>

0000000080002728 <consoleinit>:
    80002728:	fe010113          	addi	sp,sp,-32
    8000272c:	00113c23          	sd	ra,24(sp)
    80002730:	00813823          	sd	s0,16(sp)
    80002734:	00913423          	sd	s1,8(sp)
    80002738:	02010413          	addi	s0,sp,32
    8000273c:	00003497          	auipc	s1,0x3
    80002740:	24c48493          	addi	s1,s1,588 # 80005988 <cons>
    80002744:	00048513          	mv	a0,s1
    80002748:	00002597          	auipc	a1,0x2
    8000274c:	a4058593          	addi	a1,a1,-1472 # 80004188 <bntOne+0x130>
    80002750:	00001097          	auipc	ra,0x1
    80002754:	d88080e7          	jalr	-632(ra) # 800034d8 <initlock>
    80002758:	00000097          	auipc	ra,0x0
    8000275c:	7ac080e7          	jalr	1964(ra) # 80002f04 <uartinit>
    80002760:	01813083          	ld	ra,24(sp)
    80002764:	01013403          	ld	s0,16(sp)
    80002768:	00000797          	auipc	a5,0x0
    8000276c:	d9c78793          	addi	a5,a5,-612 # 80002504 <consoleread>
    80002770:	0af4bc23          	sd	a5,184(s1)
    80002774:	00000797          	auipc	a5,0x0
    80002778:	cec78793          	addi	a5,a5,-788 # 80002460 <consolewrite>
    8000277c:	0cf4b023          	sd	a5,192(s1)
    80002780:	00813483          	ld	s1,8(sp)
    80002784:	02010113          	addi	sp,sp,32
    80002788:	00008067          	ret

000000008000278c <console_read>:
    8000278c:	ff010113          	addi	sp,sp,-16
    80002790:	00813423          	sd	s0,8(sp)
    80002794:	01010413          	addi	s0,sp,16
    80002798:	00813403          	ld	s0,8(sp)
    8000279c:	00003317          	auipc	t1,0x3
    800027a0:	2a433303          	ld	t1,676(t1) # 80005a40 <devsw+0x10>
    800027a4:	01010113          	addi	sp,sp,16
    800027a8:	00030067          	jr	t1

00000000800027ac <console_write>:
    800027ac:	ff010113          	addi	sp,sp,-16
    800027b0:	00813423          	sd	s0,8(sp)
    800027b4:	01010413          	addi	s0,sp,16
    800027b8:	00813403          	ld	s0,8(sp)
    800027bc:	00003317          	auipc	t1,0x3
    800027c0:	28c33303          	ld	t1,652(t1) # 80005a48 <devsw+0x18>
    800027c4:	01010113          	addi	sp,sp,16
    800027c8:	00030067          	jr	t1

00000000800027cc <panic>:
    800027cc:	fe010113          	addi	sp,sp,-32
    800027d0:	00113c23          	sd	ra,24(sp)
    800027d4:	00813823          	sd	s0,16(sp)
    800027d8:	00913423          	sd	s1,8(sp)
    800027dc:	02010413          	addi	s0,sp,32
    800027e0:	00050493          	mv	s1,a0
    800027e4:	00002517          	auipc	a0,0x2
    800027e8:	9ac50513          	addi	a0,a0,-1620 # 80004190 <bntOne+0x138>
    800027ec:	00003797          	auipc	a5,0x3
    800027f0:	2e07ae23          	sw	zero,764(a5) # 80005ae8 <pr+0x18>
    800027f4:	00000097          	auipc	ra,0x0
    800027f8:	034080e7          	jalr	52(ra) # 80002828 <__printf>
    800027fc:	00048513          	mv	a0,s1
    80002800:	00000097          	auipc	ra,0x0
    80002804:	028080e7          	jalr	40(ra) # 80002828 <__printf>
    80002808:	00002517          	auipc	a0,0x2
    8000280c:	96850513          	addi	a0,a0,-1688 # 80004170 <bntOne+0x118>
    80002810:	00000097          	auipc	ra,0x0
    80002814:	018080e7          	jalr	24(ra) # 80002828 <__printf>
    80002818:	00100793          	li	a5,1
    8000281c:	00002717          	auipc	a4,0x2
    80002820:	04f72a23          	sw	a5,84(a4) # 80004870 <panicked>
    80002824:	0000006f          	j	80002824 <panic+0x58>

0000000080002828 <__printf>:
    80002828:	f3010113          	addi	sp,sp,-208
    8000282c:	08813023          	sd	s0,128(sp)
    80002830:	07313423          	sd	s3,104(sp)
    80002834:	09010413          	addi	s0,sp,144
    80002838:	05813023          	sd	s8,64(sp)
    8000283c:	08113423          	sd	ra,136(sp)
    80002840:	06913c23          	sd	s1,120(sp)
    80002844:	07213823          	sd	s2,112(sp)
    80002848:	07413023          	sd	s4,96(sp)
    8000284c:	05513c23          	sd	s5,88(sp)
    80002850:	05613823          	sd	s6,80(sp)
    80002854:	05713423          	sd	s7,72(sp)
    80002858:	03913c23          	sd	s9,56(sp)
    8000285c:	03a13823          	sd	s10,48(sp)
    80002860:	03b13423          	sd	s11,40(sp)
    80002864:	00003317          	auipc	t1,0x3
    80002868:	26c30313          	addi	t1,t1,620 # 80005ad0 <pr>
    8000286c:	01832c03          	lw	s8,24(t1)
    80002870:	00b43423          	sd	a1,8(s0)
    80002874:	00c43823          	sd	a2,16(s0)
    80002878:	00d43c23          	sd	a3,24(s0)
    8000287c:	02e43023          	sd	a4,32(s0)
    80002880:	02f43423          	sd	a5,40(s0)
    80002884:	03043823          	sd	a6,48(s0)
    80002888:	03143c23          	sd	a7,56(s0)
    8000288c:	00050993          	mv	s3,a0
    80002890:	4a0c1663          	bnez	s8,80002d3c <__printf+0x514>
    80002894:	60098c63          	beqz	s3,80002eac <__printf+0x684>
    80002898:	0009c503          	lbu	a0,0(s3)
    8000289c:	00840793          	addi	a5,s0,8
    800028a0:	f6f43c23          	sd	a5,-136(s0)
    800028a4:	00000493          	li	s1,0
    800028a8:	22050063          	beqz	a0,80002ac8 <__printf+0x2a0>
    800028ac:	00002a37          	lui	s4,0x2
    800028b0:	00018ab7          	lui	s5,0x18
    800028b4:	000f4b37          	lui	s6,0xf4
    800028b8:	00989bb7          	lui	s7,0x989
    800028bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800028c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800028c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800028c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800028cc:	00148c9b          	addiw	s9,s1,1
    800028d0:	02500793          	li	a5,37
    800028d4:	01998933          	add	s2,s3,s9
    800028d8:	38f51263          	bne	a0,a5,80002c5c <__printf+0x434>
    800028dc:	00094783          	lbu	a5,0(s2)
    800028e0:	00078c9b          	sext.w	s9,a5
    800028e4:	1e078263          	beqz	a5,80002ac8 <__printf+0x2a0>
    800028e8:	0024849b          	addiw	s1,s1,2
    800028ec:	07000713          	li	a4,112
    800028f0:	00998933          	add	s2,s3,s1
    800028f4:	38e78a63          	beq	a5,a4,80002c88 <__printf+0x460>
    800028f8:	20f76863          	bltu	a4,a5,80002b08 <__printf+0x2e0>
    800028fc:	42a78863          	beq	a5,a0,80002d2c <__printf+0x504>
    80002900:	06400713          	li	a4,100
    80002904:	40e79663          	bne	a5,a4,80002d10 <__printf+0x4e8>
    80002908:	f7843783          	ld	a5,-136(s0)
    8000290c:	0007a603          	lw	a2,0(a5)
    80002910:	00878793          	addi	a5,a5,8
    80002914:	f6f43c23          	sd	a5,-136(s0)
    80002918:	42064a63          	bltz	a2,80002d4c <__printf+0x524>
    8000291c:	00a00713          	li	a4,10
    80002920:	02e677bb          	remuw	a5,a2,a4
    80002924:	00002d97          	auipc	s11,0x2
    80002928:	894d8d93          	addi	s11,s11,-1900 # 800041b8 <digits>
    8000292c:	00900593          	li	a1,9
    80002930:	0006051b          	sext.w	a0,a2
    80002934:	00000c93          	li	s9,0
    80002938:	02079793          	slli	a5,a5,0x20
    8000293c:	0207d793          	srli	a5,a5,0x20
    80002940:	00fd87b3          	add	a5,s11,a5
    80002944:	0007c783          	lbu	a5,0(a5)
    80002948:	02e656bb          	divuw	a3,a2,a4
    8000294c:	f8f40023          	sb	a5,-128(s0)
    80002950:	14c5d863          	bge	a1,a2,80002aa0 <__printf+0x278>
    80002954:	06300593          	li	a1,99
    80002958:	00100c93          	li	s9,1
    8000295c:	02e6f7bb          	remuw	a5,a3,a4
    80002960:	02079793          	slli	a5,a5,0x20
    80002964:	0207d793          	srli	a5,a5,0x20
    80002968:	00fd87b3          	add	a5,s11,a5
    8000296c:	0007c783          	lbu	a5,0(a5)
    80002970:	02e6d73b          	divuw	a4,a3,a4
    80002974:	f8f400a3          	sb	a5,-127(s0)
    80002978:	12a5f463          	bgeu	a1,a0,80002aa0 <__printf+0x278>
    8000297c:	00a00693          	li	a3,10
    80002980:	00900593          	li	a1,9
    80002984:	02d777bb          	remuw	a5,a4,a3
    80002988:	02079793          	slli	a5,a5,0x20
    8000298c:	0207d793          	srli	a5,a5,0x20
    80002990:	00fd87b3          	add	a5,s11,a5
    80002994:	0007c503          	lbu	a0,0(a5)
    80002998:	02d757bb          	divuw	a5,a4,a3
    8000299c:	f8a40123          	sb	a0,-126(s0)
    800029a0:	48e5f263          	bgeu	a1,a4,80002e24 <__printf+0x5fc>
    800029a4:	06300513          	li	a0,99
    800029a8:	02d7f5bb          	remuw	a1,a5,a3
    800029ac:	02059593          	slli	a1,a1,0x20
    800029b0:	0205d593          	srli	a1,a1,0x20
    800029b4:	00bd85b3          	add	a1,s11,a1
    800029b8:	0005c583          	lbu	a1,0(a1)
    800029bc:	02d7d7bb          	divuw	a5,a5,a3
    800029c0:	f8b401a3          	sb	a1,-125(s0)
    800029c4:	48e57263          	bgeu	a0,a4,80002e48 <__printf+0x620>
    800029c8:	3e700513          	li	a0,999
    800029cc:	02d7f5bb          	remuw	a1,a5,a3
    800029d0:	02059593          	slli	a1,a1,0x20
    800029d4:	0205d593          	srli	a1,a1,0x20
    800029d8:	00bd85b3          	add	a1,s11,a1
    800029dc:	0005c583          	lbu	a1,0(a1)
    800029e0:	02d7d7bb          	divuw	a5,a5,a3
    800029e4:	f8b40223          	sb	a1,-124(s0)
    800029e8:	46e57663          	bgeu	a0,a4,80002e54 <__printf+0x62c>
    800029ec:	02d7f5bb          	remuw	a1,a5,a3
    800029f0:	02059593          	slli	a1,a1,0x20
    800029f4:	0205d593          	srli	a1,a1,0x20
    800029f8:	00bd85b3          	add	a1,s11,a1
    800029fc:	0005c583          	lbu	a1,0(a1)
    80002a00:	02d7d7bb          	divuw	a5,a5,a3
    80002a04:	f8b402a3          	sb	a1,-123(s0)
    80002a08:	46ea7863          	bgeu	s4,a4,80002e78 <__printf+0x650>
    80002a0c:	02d7f5bb          	remuw	a1,a5,a3
    80002a10:	02059593          	slli	a1,a1,0x20
    80002a14:	0205d593          	srli	a1,a1,0x20
    80002a18:	00bd85b3          	add	a1,s11,a1
    80002a1c:	0005c583          	lbu	a1,0(a1)
    80002a20:	02d7d7bb          	divuw	a5,a5,a3
    80002a24:	f8b40323          	sb	a1,-122(s0)
    80002a28:	3eeaf863          	bgeu	s5,a4,80002e18 <__printf+0x5f0>
    80002a2c:	02d7f5bb          	remuw	a1,a5,a3
    80002a30:	02059593          	slli	a1,a1,0x20
    80002a34:	0205d593          	srli	a1,a1,0x20
    80002a38:	00bd85b3          	add	a1,s11,a1
    80002a3c:	0005c583          	lbu	a1,0(a1)
    80002a40:	02d7d7bb          	divuw	a5,a5,a3
    80002a44:	f8b403a3          	sb	a1,-121(s0)
    80002a48:	42eb7e63          	bgeu	s6,a4,80002e84 <__printf+0x65c>
    80002a4c:	02d7f5bb          	remuw	a1,a5,a3
    80002a50:	02059593          	slli	a1,a1,0x20
    80002a54:	0205d593          	srli	a1,a1,0x20
    80002a58:	00bd85b3          	add	a1,s11,a1
    80002a5c:	0005c583          	lbu	a1,0(a1)
    80002a60:	02d7d7bb          	divuw	a5,a5,a3
    80002a64:	f8b40423          	sb	a1,-120(s0)
    80002a68:	42ebfc63          	bgeu	s7,a4,80002ea0 <__printf+0x678>
    80002a6c:	02079793          	slli	a5,a5,0x20
    80002a70:	0207d793          	srli	a5,a5,0x20
    80002a74:	00fd8db3          	add	s11,s11,a5
    80002a78:	000dc703          	lbu	a4,0(s11)
    80002a7c:	00a00793          	li	a5,10
    80002a80:	00900c93          	li	s9,9
    80002a84:	f8e404a3          	sb	a4,-119(s0)
    80002a88:	00065c63          	bgez	a2,80002aa0 <__printf+0x278>
    80002a8c:	f9040713          	addi	a4,s0,-112
    80002a90:	00f70733          	add	a4,a4,a5
    80002a94:	02d00693          	li	a3,45
    80002a98:	fed70823          	sb	a3,-16(a4)
    80002a9c:	00078c93          	mv	s9,a5
    80002aa0:	f8040793          	addi	a5,s0,-128
    80002aa4:	01978cb3          	add	s9,a5,s9
    80002aa8:	f7f40d13          	addi	s10,s0,-129
    80002aac:	000cc503          	lbu	a0,0(s9)
    80002ab0:	fffc8c93          	addi	s9,s9,-1
    80002ab4:	00000097          	auipc	ra,0x0
    80002ab8:	b90080e7          	jalr	-1136(ra) # 80002644 <consputc>
    80002abc:	ffac98e3          	bne	s9,s10,80002aac <__printf+0x284>
    80002ac0:	00094503          	lbu	a0,0(s2)
    80002ac4:	e00514e3          	bnez	a0,800028cc <__printf+0xa4>
    80002ac8:	1a0c1663          	bnez	s8,80002c74 <__printf+0x44c>
    80002acc:	08813083          	ld	ra,136(sp)
    80002ad0:	08013403          	ld	s0,128(sp)
    80002ad4:	07813483          	ld	s1,120(sp)
    80002ad8:	07013903          	ld	s2,112(sp)
    80002adc:	06813983          	ld	s3,104(sp)
    80002ae0:	06013a03          	ld	s4,96(sp)
    80002ae4:	05813a83          	ld	s5,88(sp)
    80002ae8:	05013b03          	ld	s6,80(sp)
    80002aec:	04813b83          	ld	s7,72(sp)
    80002af0:	04013c03          	ld	s8,64(sp)
    80002af4:	03813c83          	ld	s9,56(sp)
    80002af8:	03013d03          	ld	s10,48(sp)
    80002afc:	02813d83          	ld	s11,40(sp)
    80002b00:	0d010113          	addi	sp,sp,208
    80002b04:	00008067          	ret
    80002b08:	07300713          	li	a4,115
    80002b0c:	1ce78a63          	beq	a5,a4,80002ce0 <__printf+0x4b8>
    80002b10:	07800713          	li	a4,120
    80002b14:	1ee79e63          	bne	a5,a4,80002d10 <__printf+0x4e8>
    80002b18:	f7843783          	ld	a5,-136(s0)
    80002b1c:	0007a703          	lw	a4,0(a5)
    80002b20:	00878793          	addi	a5,a5,8
    80002b24:	f6f43c23          	sd	a5,-136(s0)
    80002b28:	28074263          	bltz	a4,80002dac <__printf+0x584>
    80002b2c:	00001d97          	auipc	s11,0x1
    80002b30:	68cd8d93          	addi	s11,s11,1676 # 800041b8 <digits>
    80002b34:	00f77793          	andi	a5,a4,15
    80002b38:	00fd87b3          	add	a5,s11,a5
    80002b3c:	0007c683          	lbu	a3,0(a5)
    80002b40:	00f00613          	li	a2,15
    80002b44:	0007079b          	sext.w	a5,a4
    80002b48:	f8d40023          	sb	a3,-128(s0)
    80002b4c:	0047559b          	srliw	a1,a4,0x4
    80002b50:	0047569b          	srliw	a3,a4,0x4
    80002b54:	00000c93          	li	s9,0
    80002b58:	0ee65063          	bge	a2,a4,80002c38 <__printf+0x410>
    80002b5c:	00f6f693          	andi	a3,a3,15
    80002b60:	00dd86b3          	add	a3,s11,a3
    80002b64:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002b68:	0087d79b          	srliw	a5,a5,0x8
    80002b6c:	00100c93          	li	s9,1
    80002b70:	f8d400a3          	sb	a3,-127(s0)
    80002b74:	0cb67263          	bgeu	a2,a1,80002c38 <__printf+0x410>
    80002b78:	00f7f693          	andi	a3,a5,15
    80002b7c:	00dd86b3          	add	a3,s11,a3
    80002b80:	0006c583          	lbu	a1,0(a3)
    80002b84:	00f00613          	li	a2,15
    80002b88:	0047d69b          	srliw	a3,a5,0x4
    80002b8c:	f8b40123          	sb	a1,-126(s0)
    80002b90:	0047d593          	srli	a1,a5,0x4
    80002b94:	28f67e63          	bgeu	a2,a5,80002e30 <__printf+0x608>
    80002b98:	00f6f693          	andi	a3,a3,15
    80002b9c:	00dd86b3          	add	a3,s11,a3
    80002ba0:	0006c503          	lbu	a0,0(a3)
    80002ba4:	0087d813          	srli	a6,a5,0x8
    80002ba8:	0087d69b          	srliw	a3,a5,0x8
    80002bac:	f8a401a3          	sb	a0,-125(s0)
    80002bb0:	28b67663          	bgeu	a2,a1,80002e3c <__printf+0x614>
    80002bb4:	00f6f693          	andi	a3,a3,15
    80002bb8:	00dd86b3          	add	a3,s11,a3
    80002bbc:	0006c583          	lbu	a1,0(a3)
    80002bc0:	00c7d513          	srli	a0,a5,0xc
    80002bc4:	00c7d69b          	srliw	a3,a5,0xc
    80002bc8:	f8b40223          	sb	a1,-124(s0)
    80002bcc:	29067a63          	bgeu	a2,a6,80002e60 <__printf+0x638>
    80002bd0:	00f6f693          	andi	a3,a3,15
    80002bd4:	00dd86b3          	add	a3,s11,a3
    80002bd8:	0006c583          	lbu	a1,0(a3)
    80002bdc:	0107d813          	srli	a6,a5,0x10
    80002be0:	0107d69b          	srliw	a3,a5,0x10
    80002be4:	f8b402a3          	sb	a1,-123(s0)
    80002be8:	28a67263          	bgeu	a2,a0,80002e6c <__printf+0x644>
    80002bec:	00f6f693          	andi	a3,a3,15
    80002bf0:	00dd86b3          	add	a3,s11,a3
    80002bf4:	0006c683          	lbu	a3,0(a3)
    80002bf8:	0147d79b          	srliw	a5,a5,0x14
    80002bfc:	f8d40323          	sb	a3,-122(s0)
    80002c00:	21067663          	bgeu	a2,a6,80002e0c <__printf+0x5e4>
    80002c04:	02079793          	slli	a5,a5,0x20
    80002c08:	0207d793          	srli	a5,a5,0x20
    80002c0c:	00fd8db3          	add	s11,s11,a5
    80002c10:	000dc683          	lbu	a3,0(s11)
    80002c14:	00800793          	li	a5,8
    80002c18:	00700c93          	li	s9,7
    80002c1c:	f8d403a3          	sb	a3,-121(s0)
    80002c20:	00075c63          	bgez	a4,80002c38 <__printf+0x410>
    80002c24:	f9040713          	addi	a4,s0,-112
    80002c28:	00f70733          	add	a4,a4,a5
    80002c2c:	02d00693          	li	a3,45
    80002c30:	fed70823          	sb	a3,-16(a4)
    80002c34:	00078c93          	mv	s9,a5
    80002c38:	f8040793          	addi	a5,s0,-128
    80002c3c:	01978cb3          	add	s9,a5,s9
    80002c40:	f7f40d13          	addi	s10,s0,-129
    80002c44:	000cc503          	lbu	a0,0(s9)
    80002c48:	fffc8c93          	addi	s9,s9,-1
    80002c4c:	00000097          	auipc	ra,0x0
    80002c50:	9f8080e7          	jalr	-1544(ra) # 80002644 <consputc>
    80002c54:	ff9d18e3          	bne	s10,s9,80002c44 <__printf+0x41c>
    80002c58:	0100006f          	j	80002c68 <__printf+0x440>
    80002c5c:	00000097          	auipc	ra,0x0
    80002c60:	9e8080e7          	jalr	-1560(ra) # 80002644 <consputc>
    80002c64:	000c8493          	mv	s1,s9
    80002c68:	00094503          	lbu	a0,0(s2)
    80002c6c:	c60510e3          	bnez	a0,800028cc <__printf+0xa4>
    80002c70:	e40c0ee3          	beqz	s8,80002acc <__printf+0x2a4>
    80002c74:	00003517          	auipc	a0,0x3
    80002c78:	e5c50513          	addi	a0,a0,-420 # 80005ad0 <pr>
    80002c7c:	00001097          	auipc	ra,0x1
    80002c80:	94c080e7          	jalr	-1716(ra) # 800035c8 <release>
    80002c84:	e49ff06f          	j	80002acc <__printf+0x2a4>
    80002c88:	f7843783          	ld	a5,-136(s0)
    80002c8c:	03000513          	li	a0,48
    80002c90:	01000d13          	li	s10,16
    80002c94:	00878713          	addi	a4,a5,8
    80002c98:	0007bc83          	ld	s9,0(a5)
    80002c9c:	f6e43c23          	sd	a4,-136(s0)
    80002ca0:	00000097          	auipc	ra,0x0
    80002ca4:	9a4080e7          	jalr	-1628(ra) # 80002644 <consputc>
    80002ca8:	07800513          	li	a0,120
    80002cac:	00000097          	auipc	ra,0x0
    80002cb0:	998080e7          	jalr	-1640(ra) # 80002644 <consputc>
    80002cb4:	00001d97          	auipc	s11,0x1
    80002cb8:	504d8d93          	addi	s11,s11,1284 # 800041b8 <digits>
    80002cbc:	03ccd793          	srli	a5,s9,0x3c
    80002cc0:	00fd87b3          	add	a5,s11,a5
    80002cc4:	0007c503          	lbu	a0,0(a5)
    80002cc8:	fffd0d1b          	addiw	s10,s10,-1
    80002ccc:	004c9c93          	slli	s9,s9,0x4
    80002cd0:	00000097          	auipc	ra,0x0
    80002cd4:	974080e7          	jalr	-1676(ra) # 80002644 <consputc>
    80002cd8:	fe0d12e3          	bnez	s10,80002cbc <__printf+0x494>
    80002cdc:	f8dff06f          	j	80002c68 <__printf+0x440>
    80002ce0:	f7843783          	ld	a5,-136(s0)
    80002ce4:	0007bc83          	ld	s9,0(a5)
    80002ce8:	00878793          	addi	a5,a5,8
    80002cec:	f6f43c23          	sd	a5,-136(s0)
    80002cf0:	000c9a63          	bnez	s9,80002d04 <__printf+0x4dc>
    80002cf4:	1080006f          	j	80002dfc <__printf+0x5d4>
    80002cf8:	001c8c93          	addi	s9,s9,1
    80002cfc:	00000097          	auipc	ra,0x0
    80002d00:	948080e7          	jalr	-1720(ra) # 80002644 <consputc>
    80002d04:	000cc503          	lbu	a0,0(s9)
    80002d08:	fe0518e3          	bnez	a0,80002cf8 <__printf+0x4d0>
    80002d0c:	f5dff06f          	j	80002c68 <__printf+0x440>
    80002d10:	02500513          	li	a0,37
    80002d14:	00000097          	auipc	ra,0x0
    80002d18:	930080e7          	jalr	-1744(ra) # 80002644 <consputc>
    80002d1c:	000c8513          	mv	a0,s9
    80002d20:	00000097          	auipc	ra,0x0
    80002d24:	924080e7          	jalr	-1756(ra) # 80002644 <consputc>
    80002d28:	f41ff06f          	j	80002c68 <__printf+0x440>
    80002d2c:	02500513          	li	a0,37
    80002d30:	00000097          	auipc	ra,0x0
    80002d34:	914080e7          	jalr	-1772(ra) # 80002644 <consputc>
    80002d38:	f31ff06f          	j	80002c68 <__printf+0x440>
    80002d3c:	00030513          	mv	a0,t1
    80002d40:	00000097          	auipc	ra,0x0
    80002d44:	7bc080e7          	jalr	1980(ra) # 800034fc <acquire>
    80002d48:	b4dff06f          	j	80002894 <__printf+0x6c>
    80002d4c:	40c0053b          	negw	a0,a2
    80002d50:	00a00713          	li	a4,10
    80002d54:	02e576bb          	remuw	a3,a0,a4
    80002d58:	00001d97          	auipc	s11,0x1
    80002d5c:	460d8d93          	addi	s11,s11,1120 # 800041b8 <digits>
    80002d60:	ff700593          	li	a1,-9
    80002d64:	02069693          	slli	a3,a3,0x20
    80002d68:	0206d693          	srli	a3,a3,0x20
    80002d6c:	00dd86b3          	add	a3,s11,a3
    80002d70:	0006c683          	lbu	a3,0(a3)
    80002d74:	02e557bb          	divuw	a5,a0,a4
    80002d78:	f8d40023          	sb	a3,-128(s0)
    80002d7c:	10b65e63          	bge	a2,a1,80002e98 <__printf+0x670>
    80002d80:	06300593          	li	a1,99
    80002d84:	02e7f6bb          	remuw	a3,a5,a4
    80002d88:	02069693          	slli	a3,a3,0x20
    80002d8c:	0206d693          	srli	a3,a3,0x20
    80002d90:	00dd86b3          	add	a3,s11,a3
    80002d94:	0006c683          	lbu	a3,0(a3)
    80002d98:	02e7d73b          	divuw	a4,a5,a4
    80002d9c:	00200793          	li	a5,2
    80002da0:	f8d400a3          	sb	a3,-127(s0)
    80002da4:	bca5ece3          	bltu	a1,a0,8000297c <__printf+0x154>
    80002da8:	ce5ff06f          	j	80002a8c <__printf+0x264>
    80002dac:	40e007bb          	negw	a5,a4
    80002db0:	00001d97          	auipc	s11,0x1
    80002db4:	408d8d93          	addi	s11,s11,1032 # 800041b8 <digits>
    80002db8:	00f7f693          	andi	a3,a5,15
    80002dbc:	00dd86b3          	add	a3,s11,a3
    80002dc0:	0006c583          	lbu	a1,0(a3)
    80002dc4:	ff100613          	li	a2,-15
    80002dc8:	0047d69b          	srliw	a3,a5,0x4
    80002dcc:	f8b40023          	sb	a1,-128(s0)
    80002dd0:	0047d59b          	srliw	a1,a5,0x4
    80002dd4:	0ac75e63          	bge	a4,a2,80002e90 <__printf+0x668>
    80002dd8:	00f6f693          	andi	a3,a3,15
    80002ddc:	00dd86b3          	add	a3,s11,a3
    80002de0:	0006c603          	lbu	a2,0(a3)
    80002de4:	00f00693          	li	a3,15
    80002de8:	0087d79b          	srliw	a5,a5,0x8
    80002dec:	f8c400a3          	sb	a2,-127(s0)
    80002df0:	d8b6e4e3          	bltu	a3,a1,80002b78 <__printf+0x350>
    80002df4:	00200793          	li	a5,2
    80002df8:	e2dff06f          	j	80002c24 <__printf+0x3fc>
    80002dfc:	00001c97          	auipc	s9,0x1
    80002e00:	39cc8c93          	addi	s9,s9,924 # 80004198 <bntOne+0x140>
    80002e04:	02800513          	li	a0,40
    80002e08:	ef1ff06f          	j	80002cf8 <__printf+0x4d0>
    80002e0c:	00700793          	li	a5,7
    80002e10:	00600c93          	li	s9,6
    80002e14:	e0dff06f          	j	80002c20 <__printf+0x3f8>
    80002e18:	00700793          	li	a5,7
    80002e1c:	00600c93          	li	s9,6
    80002e20:	c69ff06f          	j	80002a88 <__printf+0x260>
    80002e24:	00300793          	li	a5,3
    80002e28:	00200c93          	li	s9,2
    80002e2c:	c5dff06f          	j	80002a88 <__printf+0x260>
    80002e30:	00300793          	li	a5,3
    80002e34:	00200c93          	li	s9,2
    80002e38:	de9ff06f          	j	80002c20 <__printf+0x3f8>
    80002e3c:	00400793          	li	a5,4
    80002e40:	00300c93          	li	s9,3
    80002e44:	dddff06f          	j	80002c20 <__printf+0x3f8>
    80002e48:	00400793          	li	a5,4
    80002e4c:	00300c93          	li	s9,3
    80002e50:	c39ff06f          	j	80002a88 <__printf+0x260>
    80002e54:	00500793          	li	a5,5
    80002e58:	00400c93          	li	s9,4
    80002e5c:	c2dff06f          	j	80002a88 <__printf+0x260>
    80002e60:	00500793          	li	a5,5
    80002e64:	00400c93          	li	s9,4
    80002e68:	db9ff06f          	j	80002c20 <__printf+0x3f8>
    80002e6c:	00600793          	li	a5,6
    80002e70:	00500c93          	li	s9,5
    80002e74:	dadff06f          	j	80002c20 <__printf+0x3f8>
    80002e78:	00600793          	li	a5,6
    80002e7c:	00500c93          	li	s9,5
    80002e80:	c09ff06f          	j	80002a88 <__printf+0x260>
    80002e84:	00800793          	li	a5,8
    80002e88:	00700c93          	li	s9,7
    80002e8c:	bfdff06f          	j	80002a88 <__printf+0x260>
    80002e90:	00100793          	li	a5,1
    80002e94:	d91ff06f          	j	80002c24 <__printf+0x3fc>
    80002e98:	00100793          	li	a5,1
    80002e9c:	bf1ff06f          	j	80002a8c <__printf+0x264>
    80002ea0:	00900793          	li	a5,9
    80002ea4:	00800c93          	li	s9,8
    80002ea8:	be1ff06f          	j	80002a88 <__printf+0x260>
    80002eac:	00001517          	auipc	a0,0x1
    80002eb0:	2f450513          	addi	a0,a0,756 # 800041a0 <bntOne+0x148>
    80002eb4:	00000097          	auipc	ra,0x0
    80002eb8:	918080e7          	jalr	-1768(ra) # 800027cc <panic>

0000000080002ebc <printfinit>:
    80002ebc:	fe010113          	addi	sp,sp,-32
    80002ec0:	00813823          	sd	s0,16(sp)
    80002ec4:	00913423          	sd	s1,8(sp)
    80002ec8:	00113c23          	sd	ra,24(sp)
    80002ecc:	02010413          	addi	s0,sp,32
    80002ed0:	00003497          	auipc	s1,0x3
    80002ed4:	c0048493          	addi	s1,s1,-1024 # 80005ad0 <pr>
    80002ed8:	00048513          	mv	a0,s1
    80002edc:	00001597          	auipc	a1,0x1
    80002ee0:	2d458593          	addi	a1,a1,724 # 800041b0 <bntOne+0x158>
    80002ee4:	00000097          	auipc	ra,0x0
    80002ee8:	5f4080e7          	jalr	1524(ra) # 800034d8 <initlock>
    80002eec:	01813083          	ld	ra,24(sp)
    80002ef0:	01013403          	ld	s0,16(sp)
    80002ef4:	0004ac23          	sw	zero,24(s1)
    80002ef8:	00813483          	ld	s1,8(sp)
    80002efc:	02010113          	addi	sp,sp,32
    80002f00:	00008067          	ret

0000000080002f04 <uartinit>:
    80002f04:	ff010113          	addi	sp,sp,-16
    80002f08:	00813423          	sd	s0,8(sp)
    80002f0c:	01010413          	addi	s0,sp,16
    80002f10:	100007b7          	lui	a5,0x10000
    80002f14:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002f18:	f8000713          	li	a4,-128
    80002f1c:	00e781a3          	sb	a4,3(a5)
    80002f20:	00300713          	li	a4,3
    80002f24:	00e78023          	sb	a4,0(a5)
    80002f28:	000780a3          	sb	zero,1(a5)
    80002f2c:	00e781a3          	sb	a4,3(a5)
    80002f30:	00700693          	li	a3,7
    80002f34:	00d78123          	sb	a3,2(a5)
    80002f38:	00e780a3          	sb	a4,1(a5)
    80002f3c:	00813403          	ld	s0,8(sp)
    80002f40:	01010113          	addi	sp,sp,16
    80002f44:	00008067          	ret

0000000080002f48 <uartputc>:
    80002f48:	00002797          	auipc	a5,0x2
    80002f4c:	9287a783          	lw	a5,-1752(a5) # 80004870 <panicked>
    80002f50:	00078463          	beqz	a5,80002f58 <uartputc+0x10>
    80002f54:	0000006f          	j	80002f54 <uartputc+0xc>
    80002f58:	fd010113          	addi	sp,sp,-48
    80002f5c:	02813023          	sd	s0,32(sp)
    80002f60:	00913c23          	sd	s1,24(sp)
    80002f64:	01213823          	sd	s2,16(sp)
    80002f68:	01313423          	sd	s3,8(sp)
    80002f6c:	02113423          	sd	ra,40(sp)
    80002f70:	03010413          	addi	s0,sp,48
    80002f74:	00002917          	auipc	s2,0x2
    80002f78:	90490913          	addi	s2,s2,-1788 # 80004878 <uart_tx_r>
    80002f7c:	00093783          	ld	a5,0(s2)
    80002f80:	00002497          	auipc	s1,0x2
    80002f84:	90048493          	addi	s1,s1,-1792 # 80004880 <uart_tx_w>
    80002f88:	0004b703          	ld	a4,0(s1)
    80002f8c:	02078693          	addi	a3,a5,32
    80002f90:	00050993          	mv	s3,a0
    80002f94:	02e69c63          	bne	a3,a4,80002fcc <uartputc+0x84>
    80002f98:	00001097          	auipc	ra,0x1
    80002f9c:	834080e7          	jalr	-1996(ra) # 800037cc <push_on>
    80002fa0:	00093783          	ld	a5,0(s2)
    80002fa4:	0004b703          	ld	a4,0(s1)
    80002fa8:	02078793          	addi	a5,a5,32
    80002fac:	00e79463          	bne	a5,a4,80002fb4 <uartputc+0x6c>
    80002fb0:	0000006f          	j	80002fb0 <uartputc+0x68>
    80002fb4:	00001097          	auipc	ra,0x1
    80002fb8:	88c080e7          	jalr	-1908(ra) # 80003840 <pop_on>
    80002fbc:	00093783          	ld	a5,0(s2)
    80002fc0:	0004b703          	ld	a4,0(s1)
    80002fc4:	02078693          	addi	a3,a5,32
    80002fc8:	fce688e3          	beq	a3,a4,80002f98 <uartputc+0x50>
    80002fcc:	01f77693          	andi	a3,a4,31
    80002fd0:	00003597          	auipc	a1,0x3
    80002fd4:	b2058593          	addi	a1,a1,-1248 # 80005af0 <uart_tx_buf>
    80002fd8:	00d586b3          	add	a3,a1,a3
    80002fdc:	00170713          	addi	a4,a4,1
    80002fe0:	01368023          	sb	s3,0(a3)
    80002fe4:	00e4b023          	sd	a4,0(s1)
    80002fe8:	10000637          	lui	a2,0x10000
    80002fec:	02f71063          	bne	a4,a5,8000300c <uartputc+0xc4>
    80002ff0:	0340006f          	j	80003024 <uartputc+0xdc>
    80002ff4:	00074703          	lbu	a4,0(a4)
    80002ff8:	00f93023          	sd	a5,0(s2)
    80002ffc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003000:	00093783          	ld	a5,0(s2)
    80003004:	0004b703          	ld	a4,0(s1)
    80003008:	00f70e63          	beq	a4,a5,80003024 <uartputc+0xdc>
    8000300c:	00564683          	lbu	a3,5(a2)
    80003010:	01f7f713          	andi	a4,a5,31
    80003014:	00e58733          	add	a4,a1,a4
    80003018:	0206f693          	andi	a3,a3,32
    8000301c:	00178793          	addi	a5,a5,1
    80003020:	fc069ae3          	bnez	a3,80002ff4 <uartputc+0xac>
    80003024:	02813083          	ld	ra,40(sp)
    80003028:	02013403          	ld	s0,32(sp)
    8000302c:	01813483          	ld	s1,24(sp)
    80003030:	01013903          	ld	s2,16(sp)
    80003034:	00813983          	ld	s3,8(sp)
    80003038:	03010113          	addi	sp,sp,48
    8000303c:	00008067          	ret

0000000080003040 <uartputc_sync>:
    80003040:	ff010113          	addi	sp,sp,-16
    80003044:	00813423          	sd	s0,8(sp)
    80003048:	01010413          	addi	s0,sp,16
    8000304c:	00002717          	auipc	a4,0x2
    80003050:	82472703          	lw	a4,-2012(a4) # 80004870 <panicked>
    80003054:	02071663          	bnez	a4,80003080 <uartputc_sync+0x40>
    80003058:	00050793          	mv	a5,a0
    8000305c:	100006b7          	lui	a3,0x10000
    80003060:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003064:	02077713          	andi	a4,a4,32
    80003068:	fe070ce3          	beqz	a4,80003060 <uartputc_sync+0x20>
    8000306c:	0ff7f793          	andi	a5,a5,255
    80003070:	00f68023          	sb	a5,0(a3)
    80003074:	00813403          	ld	s0,8(sp)
    80003078:	01010113          	addi	sp,sp,16
    8000307c:	00008067          	ret
    80003080:	0000006f          	j	80003080 <uartputc_sync+0x40>

0000000080003084 <uartstart>:
    80003084:	ff010113          	addi	sp,sp,-16
    80003088:	00813423          	sd	s0,8(sp)
    8000308c:	01010413          	addi	s0,sp,16
    80003090:	00001617          	auipc	a2,0x1
    80003094:	7e860613          	addi	a2,a2,2024 # 80004878 <uart_tx_r>
    80003098:	00001517          	auipc	a0,0x1
    8000309c:	7e850513          	addi	a0,a0,2024 # 80004880 <uart_tx_w>
    800030a0:	00063783          	ld	a5,0(a2)
    800030a4:	00053703          	ld	a4,0(a0)
    800030a8:	04f70263          	beq	a4,a5,800030ec <uartstart+0x68>
    800030ac:	100005b7          	lui	a1,0x10000
    800030b0:	00003817          	auipc	a6,0x3
    800030b4:	a4080813          	addi	a6,a6,-1472 # 80005af0 <uart_tx_buf>
    800030b8:	01c0006f          	j	800030d4 <uartstart+0x50>
    800030bc:	0006c703          	lbu	a4,0(a3)
    800030c0:	00f63023          	sd	a5,0(a2)
    800030c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800030c8:	00063783          	ld	a5,0(a2)
    800030cc:	00053703          	ld	a4,0(a0)
    800030d0:	00f70e63          	beq	a4,a5,800030ec <uartstart+0x68>
    800030d4:	01f7f713          	andi	a4,a5,31
    800030d8:	00e806b3          	add	a3,a6,a4
    800030dc:	0055c703          	lbu	a4,5(a1)
    800030e0:	00178793          	addi	a5,a5,1
    800030e4:	02077713          	andi	a4,a4,32
    800030e8:	fc071ae3          	bnez	a4,800030bc <uartstart+0x38>
    800030ec:	00813403          	ld	s0,8(sp)
    800030f0:	01010113          	addi	sp,sp,16
    800030f4:	00008067          	ret

00000000800030f8 <uartgetc>:
    800030f8:	ff010113          	addi	sp,sp,-16
    800030fc:	00813423          	sd	s0,8(sp)
    80003100:	01010413          	addi	s0,sp,16
    80003104:	10000737          	lui	a4,0x10000
    80003108:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000310c:	0017f793          	andi	a5,a5,1
    80003110:	00078c63          	beqz	a5,80003128 <uartgetc+0x30>
    80003114:	00074503          	lbu	a0,0(a4)
    80003118:	0ff57513          	andi	a0,a0,255
    8000311c:	00813403          	ld	s0,8(sp)
    80003120:	01010113          	addi	sp,sp,16
    80003124:	00008067          	ret
    80003128:	fff00513          	li	a0,-1
    8000312c:	ff1ff06f          	j	8000311c <uartgetc+0x24>

0000000080003130 <uartintr>:
    80003130:	100007b7          	lui	a5,0x10000
    80003134:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003138:	0017f793          	andi	a5,a5,1
    8000313c:	0a078463          	beqz	a5,800031e4 <uartintr+0xb4>
    80003140:	fe010113          	addi	sp,sp,-32
    80003144:	00813823          	sd	s0,16(sp)
    80003148:	00913423          	sd	s1,8(sp)
    8000314c:	00113c23          	sd	ra,24(sp)
    80003150:	02010413          	addi	s0,sp,32
    80003154:	100004b7          	lui	s1,0x10000
    80003158:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000315c:	0ff57513          	andi	a0,a0,255
    80003160:	fffff097          	auipc	ra,0xfffff
    80003164:	534080e7          	jalr	1332(ra) # 80002694 <consoleintr>
    80003168:	0054c783          	lbu	a5,5(s1)
    8000316c:	0017f793          	andi	a5,a5,1
    80003170:	fe0794e3          	bnez	a5,80003158 <uartintr+0x28>
    80003174:	00001617          	auipc	a2,0x1
    80003178:	70460613          	addi	a2,a2,1796 # 80004878 <uart_tx_r>
    8000317c:	00001517          	auipc	a0,0x1
    80003180:	70450513          	addi	a0,a0,1796 # 80004880 <uart_tx_w>
    80003184:	00063783          	ld	a5,0(a2)
    80003188:	00053703          	ld	a4,0(a0)
    8000318c:	04f70263          	beq	a4,a5,800031d0 <uartintr+0xa0>
    80003190:	100005b7          	lui	a1,0x10000
    80003194:	00003817          	auipc	a6,0x3
    80003198:	95c80813          	addi	a6,a6,-1700 # 80005af0 <uart_tx_buf>
    8000319c:	01c0006f          	j	800031b8 <uartintr+0x88>
    800031a0:	0006c703          	lbu	a4,0(a3)
    800031a4:	00f63023          	sd	a5,0(a2)
    800031a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800031ac:	00063783          	ld	a5,0(a2)
    800031b0:	00053703          	ld	a4,0(a0)
    800031b4:	00f70e63          	beq	a4,a5,800031d0 <uartintr+0xa0>
    800031b8:	01f7f713          	andi	a4,a5,31
    800031bc:	00e806b3          	add	a3,a6,a4
    800031c0:	0055c703          	lbu	a4,5(a1)
    800031c4:	00178793          	addi	a5,a5,1
    800031c8:	02077713          	andi	a4,a4,32
    800031cc:	fc071ae3          	bnez	a4,800031a0 <uartintr+0x70>
    800031d0:	01813083          	ld	ra,24(sp)
    800031d4:	01013403          	ld	s0,16(sp)
    800031d8:	00813483          	ld	s1,8(sp)
    800031dc:	02010113          	addi	sp,sp,32
    800031e0:	00008067          	ret
    800031e4:	00001617          	auipc	a2,0x1
    800031e8:	69460613          	addi	a2,a2,1684 # 80004878 <uart_tx_r>
    800031ec:	00001517          	auipc	a0,0x1
    800031f0:	69450513          	addi	a0,a0,1684 # 80004880 <uart_tx_w>
    800031f4:	00063783          	ld	a5,0(a2)
    800031f8:	00053703          	ld	a4,0(a0)
    800031fc:	04f70263          	beq	a4,a5,80003240 <uartintr+0x110>
    80003200:	100005b7          	lui	a1,0x10000
    80003204:	00003817          	auipc	a6,0x3
    80003208:	8ec80813          	addi	a6,a6,-1812 # 80005af0 <uart_tx_buf>
    8000320c:	01c0006f          	j	80003228 <uartintr+0xf8>
    80003210:	0006c703          	lbu	a4,0(a3)
    80003214:	00f63023          	sd	a5,0(a2)
    80003218:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000321c:	00063783          	ld	a5,0(a2)
    80003220:	00053703          	ld	a4,0(a0)
    80003224:	02f70063          	beq	a4,a5,80003244 <uartintr+0x114>
    80003228:	01f7f713          	andi	a4,a5,31
    8000322c:	00e806b3          	add	a3,a6,a4
    80003230:	0055c703          	lbu	a4,5(a1)
    80003234:	00178793          	addi	a5,a5,1
    80003238:	02077713          	andi	a4,a4,32
    8000323c:	fc071ae3          	bnez	a4,80003210 <uartintr+0xe0>
    80003240:	00008067          	ret
    80003244:	00008067          	ret

0000000080003248 <kinit>:
    80003248:	fc010113          	addi	sp,sp,-64
    8000324c:	02913423          	sd	s1,40(sp)
    80003250:	fffff7b7          	lui	a5,0xfffff
    80003254:	00004497          	auipc	s1,0x4
    80003258:	8bb48493          	addi	s1,s1,-1861 # 80006b0f <end+0xfff>
    8000325c:	02813823          	sd	s0,48(sp)
    80003260:	01313c23          	sd	s3,24(sp)
    80003264:	00f4f4b3          	and	s1,s1,a5
    80003268:	02113c23          	sd	ra,56(sp)
    8000326c:	03213023          	sd	s2,32(sp)
    80003270:	01413823          	sd	s4,16(sp)
    80003274:	01513423          	sd	s5,8(sp)
    80003278:	04010413          	addi	s0,sp,64
    8000327c:	000017b7          	lui	a5,0x1
    80003280:	01100993          	li	s3,17
    80003284:	00f487b3          	add	a5,s1,a5
    80003288:	01b99993          	slli	s3,s3,0x1b
    8000328c:	06f9e063          	bltu	s3,a5,800032ec <kinit+0xa4>
    80003290:	00003a97          	auipc	s5,0x3
    80003294:	880a8a93          	addi	s5,s5,-1920 # 80005b10 <end>
    80003298:	0754ec63          	bltu	s1,s5,80003310 <kinit+0xc8>
    8000329c:	0734fa63          	bgeu	s1,s3,80003310 <kinit+0xc8>
    800032a0:	00088a37          	lui	s4,0x88
    800032a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800032a8:	00001917          	auipc	s2,0x1
    800032ac:	5e090913          	addi	s2,s2,1504 # 80004888 <kmem>
    800032b0:	00ca1a13          	slli	s4,s4,0xc
    800032b4:	0140006f          	j	800032c8 <kinit+0x80>
    800032b8:	000017b7          	lui	a5,0x1
    800032bc:	00f484b3          	add	s1,s1,a5
    800032c0:	0554e863          	bltu	s1,s5,80003310 <kinit+0xc8>
    800032c4:	0534f663          	bgeu	s1,s3,80003310 <kinit+0xc8>
    800032c8:	00001637          	lui	a2,0x1
    800032cc:	00100593          	li	a1,1
    800032d0:	00048513          	mv	a0,s1
    800032d4:	00000097          	auipc	ra,0x0
    800032d8:	5e4080e7          	jalr	1508(ra) # 800038b8 <__memset>
    800032dc:	00093783          	ld	a5,0(s2)
    800032e0:	00f4b023          	sd	a5,0(s1)
    800032e4:	00993023          	sd	s1,0(s2)
    800032e8:	fd4498e3          	bne	s1,s4,800032b8 <kinit+0x70>
    800032ec:	03813083          	ld	ra,56(sp)
    800032f0:	03013403          	ld	s0,48(sp)
    800032f4:	02813483          	ld	s1,40(sp)
    800032f8:	02013903          	ld	s2,32(sp)
    800032fc:	01813983          	ld	s3,24(sp)
    80003300:	01013a03          	ld	s4,16(sp)
    80003304:	00813a83          	ld	s5,8(sp)
    80003308:	04010113          	addi	sp,sp,64
    8000330c:	00008067          	ret
    80003310:	00001517          	auipc	a0,0x1
    80003314:	ec050513          	addi	a0,a0,-320 # 800041d0 <digits+0x18>
    80003318:	fffff097          	auipc	ra,0xfffff
    8000331c:	4b4080e7          	jalr	1204(ra) # 800027cc <panic>

0000000080003320 <freerange>:
    80003320:	fc010113          	addi	sp,sp,-64
    80003324:	000017b7          	lui	a5,0x1
    80003328:	02913423          	sd	s1,40(sp)
    8000332c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003330:	009504b3          	add	s1,a0,s1
    80003334:	fffff537          	lui	a0,0xfffff
    80003338:	02813823          	sd	s0,48(sp)
    8000333c:	02113c23          	sd	ra,56(sp)
    80003340:	03213023          	sd	s2,32(sp)
    80003344:	01313c23          	sd	s3,24(sp)
    80003348:	01413823          	sd	s4,16(sp)
    8000334c:	01513423          	sd	s5,8(sp)
    80003350:	01613023          	sd	s6,0(sp)
    80003354:	04010413          	addi	s0,sp,64
    80003358:	00a4f4b3          	and	s1,s1,a0
    8000335c:	00f487b3          	add	a5,s1,a5
    80003360:	06f5e463          	bltu	a1,a5,800033c8 <freerange+0xa8>
    80003364:	00002a97          	auipc	s5,0x2
    80003368:	7aca8a93          	addi	s5,s5,1964 # 80005b10 <end>
    8000336c:	0954e263          	bltu	s1,s5,800033f0 <freerange+0xd0>
    80003370:	01100993          	li	s3,17
    80003374:	01b99993          	slli	s3,s3,0x1b
    80003378:	0734fc63          	bgeu	s1,s3,800033f0 <freerange+0xd0>
    8000337c:	00058a13          	mv	s4,a1
    80003380:	00001917          	auipc	s2,0x1
    80003384:	50890913          	addi	s2,s2,1288 # 80004888 <kmem>
    80003388:	00002b37          	lui	s6,0x2
    8000338c:	0140006f          	j	800033a0 <freerange+0x80>
    80003390:	000017b7          	lui	a5,0x1
    80003394:	00f484b3          	add	s1,s1,a5
    80003398:	0554ec63          	bltu	s1,s5,800033f0 <freerange+0xd0>
    8000339c:	0534fa63          	bgeu	s1,s3,800033f0 <freerange+0xd0>
    800033a0:	00001637          	lui	a2,0x1
    800033a4:	00100593          	li	a1,1
    800033a8:	00048513          	mv	a0,s1
    800033ac:	00000097          	auipc	ra,0x0
    800033b0:	50c080e7          	jalr	1292(ra) # 800038b8 <__memset>
    800033b4:	00093703          	ld	a4,0(s2)
    800033b8:	016487b3          	add	a5,s1,s6
    800033bc:	00e4b023          	sd	a4,0(s1)
    800033c0:	00993023          	sd	s1,0(s2)
    800033c4:	fcfa76e3          	bgeu	s4,a5,80003390 <freerange+0x70>
    800033c8:	03813083          	ld	ra,56(sp)
    800033cc:	03013403          	ld	s0,48(sp)
    800033d0:	02813483          	ld	s1,40(sp)
    800033d4:	02013903          	ld	s2,32(sp)
    800033d8:	01813983          	ld	s3,24(sp)
    800033dc:	01013a03          	ld	s4,16(sp)
    800033e0:	00813a83          	ld	s5,8(sp)
    800033e4:	00013b03          	ld	s6,0(sp)
    800033e8:	04010113          	addi	sp,sp,64
    800033ec:	00008067          	ret
    800033f0:	00001517          	auipc	a0,0x1
    800033f4:	de050513          	addi	a0,a0,-544 # 800041d0 <digits+0x18>
    800033f8:	fffff097          	auipc	ra,0xfffff
    800033fc:	3d4080e7          	jalr	980(ra) # 800027cc <panic>

0000000080003400 <kfree>:
    80003400:	fe010113          	addi	sp,sp,-32
    80003404:	00813823          	sd	s0,16(sp)
    80003408:	00113c23          	sd	ra,24(sp)
    8000340c:	00913423          	sd	s1,8(sp)
    80003410:	02010413          	addi	s0,sp,32
    80003414:	03451793          	slli	a5,a0,0x34
    80003418:	04079c63          	bnez	a5,80003470 <kfree+0x70>
    8000341c:	00002797          	auipc	a5,0x2
    80003420:	6f478793          	addi	a5,a5,1780 # 80005b10 <end>
    80003424:	00050493          	mv	s1,a0
    80003428:	04f56463          	bltu	a0,a5,80003470 <kfree+0x70>
    8000342c:	01100793          	li	a5,17
    80003430:	01b79793          	slli	a5,a5,0x1b
    80003434:	02f57e63          	bgeu	a0,a5,80003470 <kfree+0x70>
    80003438:	00001637          	lui	a2,0x1
    8000343c:	00100593          	li	a1,1
    80003440:	00000097          	auipc	ra,0x0
    80003444:	478080e7          	jalr	1144(ra) # 800038b8 <__memset>
    80003448:	00001797          	auipc	a5,0x1
    8000344c:	44078793          	addi	a5,a5,1088 # 80004888 <kmem>
    80003450:	0007b703          	ld	a4,0(a5)
    80003454:	01813083          	ld	ra,24(sp)
    80003458:	01013403          	ld	s0,16(sp)
    8000345c:	00e4b023          	sd	a4,0(s1)
    80003460:	0097b023          	sd	s1,0(a5)
    80003464:	00813483          	ld	s1,8(sp)
    80003468:	02010113          	addi	sp,sp,32
    8000346c:	00008067          	ret
    80003470:	00001517          	auipc	a0,0x1
    80003474:	d6050513          	addi	a0,a0,-672 # 800041d0 <digits+0x18>
    80003478:	fffff097          	auipc	ra,0xfffff
    8000347c:	354080e7          	jalr	852(ra) # 800027cc <panic>

0000000080003480 <kalloc>:
    80003480:	fe010113          	addi	sp,sp,-32
    80003484:	00813823          	sd	s0,16(sp)
    80003488:	00913423          	sd	s1,8(sp)
    8000348c:	00113c23          	sd	ra,24(sp)
    80003490:	02010413          	addi	s0,sp,32
    80003494:	00001797          	auipc	a5,0x1
    80003498:	3f478793          	addi	a5,a5,1012 # 80004888 <kmem>
    8000349c:	0007b483          	ld	s1,0(a5)
    800034a0:	02048063          	beqz	s1,800034c0 <kalloc+0x40>
    800034a4:	0004b703          	ld	a4,0(s1)
    800034a8:	00001637          	lui	a2,0x1
    800034ac:	00500593          	li	a1,5
    800034b0:	00048513          	mv	a0,s1
    800034b4:	00e7b023          	sd	a4,0(a5)
    800034b8:	00000097          	auipc	ra,0x0
    800034bc:	400080e7          	jalr	1024(ra) # 800038b8 <__memset>
    800034c0:	01813083          	ld	ra,24(sp)
    800034c4:	01013403          	ld	s0,16(sp)
    800034c8:	00048513          	mv	a0,s1
    800034cc:	00813483          	ld	s1,8(sp)
    800034d0:	02010113          	addi	sp,sp,32
    800034d4:	00008067          	ret

00000000800034d8 <initlock>:
    800034d8:	ff010113          	addi	sp,sp,-16
    800034dc:	00813423          	sd	s0,8(sp)
    800034e0:	01010413          	addi	s0,sp,16
    800034e4:	00813403          	ld	s0,8(sp)
    800034e8:	00b53423          	sd	a1,8(a0)
    800034ec:	00052023          	sw	zero,0(a0)
    800034f0:	00053823          	sd	zero,16(a0)
    800034f4:	01010113          	addi	sp,sp,16
    800034f8:	00008067          	ret

00000000800034fc <acquire>:
    800034fc:	fe010113          	addi	sp,sp,-32
    80003500:	00813823          	sd	s0,16(sp)
    80003504:	00913423          	sd	s1,8(sp)
    80003508:	00113c23          	sd	ra,24(sp)
    8000350c:	01213023          	sd	s2,0(sp)
    80003510:	02010413          	addi	s0,sp,32
    80003514:	00050493          	mv	s1,a0
    80003518:	10002973          	csrr	s2,sstatus
    8000351c:	100027f3          	csrr	a5,sstatus
    80003520:	ffd7f793          	andi	a5,a5,-3
    80003524:	10079073          	csrw	sstatus,a5
    80003528:	fffff097          	auipc	ra,0xfffff
    8000352c:	8e0080e7          	jalr	-1824(ra) # 80001e08 <mycpu>
    80003530:	07852783          	lw	a5,120(a0)
    80003534:	06078e63          	beqz	a5,800035b0 <acquire+0xb4>
    80003538:	fffff097          	auipc	ra,0xfffff
    8000353c:	8d0080e7          	jalr	-1840(ra) # 80001e08 <mycpu>
    80003540:	07852783          	lw	a5,120(a0)
    80003544:	0004a703          	lw	a4,0(s1)
    80003548:	0017879b          	addiw	a5,a5,1
    8000354c:	06f52c23          	sw	a5,120(a0)
    80003550:	04071063          	bnez	a4,80003590 <acquire+0x94>
    80003554:	00100713          	li	a4,1
    80003558:	00070793          	mv	a5,a4
    8000355c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003560:	0007879b          	sext.w	a5,a5
    80003564:	fe079ae3          	bnez	a5,80003558 <acquire+0x5c>
    80003568:	0ff0000f          	fence
    8000356c:	fffff097          	auipc	ra,0xfffff
    80003570:	89c080e7          	jalr	-1892(ra) # 80001e08 <mycpu>
    80003574:	01813083          	ld	ra,24(sp)
    80003578:	01013403          	ld	s0,16(sp)
    8000357c:	00a4b823          	sd	a0,16(s1)
    80003580:	00013903          	ld	s2,0(sp)
    80003584:	00813483          	ld	s1,8(sp)
    80003588:	02010113          	addi	sp,sp,32
    8000358c:	00008067          	ret
    80003590:	0104b903          	ld	s2,16(s1)
    80003594:	fffff097          	auipc	ra,0xfffff
    80003598:	874080e7          	jalr	-1932(ra) # 80001e08 <mycpu>
    8000359c:	faa91ce3          	bne	s2,a0,80003554 <acquire+0x58>
    800035a0:	00001517          	auipc	a0,0x1
    800035a4:	c3850513          	addi	a0,a0,-968 # 800041d8 <digits+0x20>
    800035a8:	fffff097          	auipc	ra,0xfffff
    800035ac:	224080e7          	jalr	548(ra) # 800027cc <panic>
    800035b0:	00195913          	srli	s2,s2,0x1
    800035b4:	fffff097          	auipc	ra,0xfffff
    800035b8:	854080e7          	jalr	-1964(ra) # 80001e08 <mycpu>
    800035bc:	00197913          	andi	s2,s2,1
    800035c0:	07252e23          	sw	s2,124(a0)
    800035c4:	f75ff06f          	j	80003538 <acquire+0x3c>

00000000800035c8 <release>:
    800035c8:	fe010113          	addi	sp,sp,-32
    800035cc:	00813823          	sd	s0,16(sp)
    800035d0:	00113c23          	sd	ra,24(sp)
    800035d4:	00913423          	sd	s1,8(sp)
    800035d8:	01213023          	sd	s2,0(sp)
    800035dc:	02010413          	addi	s0,sp,32
    800035e0:	00052783          	lw	a5,0(a0)
    800035e4:	00079a63          	bnez	a5,800035f8 <release+0x30>
    800035e8:	00001517          	auipc	a0,0x1
    800035ec:	bf850513          	addi	a0,a0,-1032 # 800041e0 <digits+0x28>
    800035f0:	fffff097          	auipc	ra,0xfffff
    800035f4:	1dc080e7          	jalr	476(ra) # 800027cc <panic>
    800035f8:	01053903          	ld	s2,16(a0)
    800035fc:	00050493          	mv	s1,a0
    80003600:	fffff097          	auipc	ra,0xfffff
    80003604:	808080e7          	jalr	-2040(ra) # 80001e08 <mycpu>
    80003608:	fea910e3          	bne	s2,a0,800035e8 <release+0x20>
    8000360c:	0004b823          	sd	zero,16(s1)
    80003610:	0ff0000f          	fence
    80003614:	0f50000f          	fence	iorw,ow
    80003618:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000361c:	ffffe097          	auipc	ra,0xffffe
    80003620:	7ec080e7          	jalr	2028(ra) # 80001e08 <mycpu>
    80003624:	100027f3          	csrr	a5,sstatus
    80003628:	0027f793          	andi	a5,a5,2
    8000362c:	04079a63          	bnez	a5,80003680 <release+0xb8>
    80003630:	07852783          	lw	a5,120(a0)
    80003634:	02f05e63          	blez	a5,80003670 <release+0xa8>
    80003638:	fff7871b          	addiw	a4,a5,-1
    8000363c:	06e52c23          	sw	a4,120(a0)
    80003640:	00071c63          	bnez	a4,80003658 <release+0x90>
    80003644:	07c52783          	lw	a5,124(a0)
    80003648:	00078863          	beqz	a5,80003658 <release+0x90>
    8000364c:	100027f3          	csrr	a5,sstatus
    80003650:	0027e793          	ori	a5,a5,2
    80003654:	10079073          	csrw	sstatus,a5
    80003658:	01813083          	ld	ra,24(sp)
    8000365c:	01013403          	ld	s0,16(sp)
    80003660:	00813483          	ld	s1,8(sp)
    80003664:	00013903          	ld	s2,0(sp)
    80003668:	02010113          	addi	sp,sp,32
    8000366c:	00008067          	ret
    80003670:	00001517          	auipc	a0,0x1
    80003674:	b9050513          	addi	a0,a0,-1136 # 80004200 <digits+0x48>
    80003678:	fffff097          	auipc	ra,0xfffff
    8000367c:	154080e7          	jalr	340(ra) # 800027cc <panic>
    80003680:	00001517          	auipc	a0,0x1
    80003684:	b6850513          	addi	a0,a0,-1176 # 800041e8 <digits+0x30>
    80003688:	fffff097          	auipc	ra,0xfffff
    8000368c:	144080e7          	jalr	324(ra) # 800027cc <panic>

0000000080003690 <holding>:
    80003690:	00052783          	lw	a5,0(a0)
    80003694:	00079663          	bnez	a5,800036a0 <holding+0x10>
    80003698:	00000513          	li	a0,0
    8000369c:	00008067          	ret
    800036a0:	fe010113          	addi	sp,sp,-32
    800036a4:	00813823          	sd	s0,16(sp)
    800036a8:	00913423          	sd	s1,8(sp)
    800036ac:	00113c23          	sd	ra,24(sp)
    800036b0:	02010413          	addi	s0,sp,32
    800036b4:	01053483          	ld	s1,16(a0)
    800036b8:	ffffe097          	auipc	ra,0xffffe
    800036bc:	750080e7          	jalr	1872(ra) # 80001e08 <mycpu>
    800036c0:	01813083          	ld	ra,24(sp)
    800036c4:	01013403          	ld	s0,16(sp)
    800036c8:	40a48533          	sub	a0,s1,a0
    800036cc:	00153513          	seqz	a0,a0
    800036d0:	00813483          	ld	s1,8(sp)
    800036d4:	02010113          	addi	sp,sp,32
    800036d8:	00008067          	ret

00000000800036dc <push_off>:
    800036dc:	fe010113          	addi	sp,sp,-32
    800036e0:	00813823          	sd	s0,16(sp)
    800036e4:	00113c23          	sd	ra,24(sp)
    800036e8:	00913423          	sd	s1,8(sp)
    800036ec:	02010413          	addi	s0,sp,32
    800036f0:	100024f3          	csrr	s1,sstatus
    800036f4:	100027f3          	csrr	a5,sstatus
    800036f8:	ffd7f793          	andi	a5,a5,-3
    800036fc:	10079073          	csrw	sstatus,a5
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	708080e7          	jalr	1800(ra) # 80001e08 <mycpu>
    80003708:	07852783          	lw	a5,120(a0)
    8000370c:	02078663          	beqz	a5,80003738 <push_off+0x5c>
    80003710:	ffffe097          	auipc	ra,0xffffe
    80003714:	6f8080e7          	jalr	1784(ra) # 80001e08 <mycpu>
    80003718:	07852783          	lw	a5,120(a0)
    8000371c:	01813083          	ld	ra,24(sp)
    80003720:	01013403          	ld	s0,16(sp)
    80003724:	0017879b          	addiw	a5,a5,1
    80003728:	06f52c23          	sw	a5,120(a0)
    8000372c:	00813483          	ld	s1,8(sp)
    80003730:	02010113          	addi	sp,sp,32
    80003734:	00008067          	ret
    80003738:	0014d493          	srli	s1,s1,0x1
    8000373c:	ffffe097          	auipc	ra,0xffffe
    80003740:	6cc080e7          	jalr	1740(ra) # 80001e08 <mycpu>
    80003744:	0014f493          	andi	s1,s1,1
    80003748:	06952e23          	sw	s1,124(a0)
    8000374c:	fc5ff06f          	j	80003710 <push_off+0x34>

0000000080003750 <pop_off>:
    80003750:	ff010113          	addi	sp,sp,-16
    80003754:	00813023          	sd	s0,0(sp)
    80003758:	00113423          	sd	ra,8(sp)
    8000375c:	01010413          	addi	s0,sp,16
    80003760:	ffffe097          	auipc	ra,0xffffe
    80003764:	6a8080e7          	jalr	1704(ra) # 80001e08 <mycpu>
    80003768:	100027f3          	csrr	a5,sstatus
    8000376c:	0027f793          	andi	a5,a5,2
    80003770:	04079663          	bnez	a5,800037bc <pop_off+0x6c>
    80003774:	07852783          	lw	a5,120(a0)
    80003778:	02f05a63          	blez	a5,800037ac <pop_off+0x5c>
    8000377c:	fff7871b          	addiw	a4,a5,-1
    80003780:	06e52c23          	sw	a4,120(a0)
    80003784:	00071c63          	bnez	a4,8000379c <pop_off+0x4c>
    80003788:	07c52783          	lw	a5,124(a0)
    8000378c:	00078863          	beqz	a5,8000379c <pop_off+0x4c>
    80003790:	100027f3          	csrr	a5,sstatus
    80003794:	0027e793          	ori	a5,a5,2
    80003798:	10079073          	csrw	sstatus,a5
    8000379c:	00813083          	ld	ra,8(sp)
    800037a0:	00013403          	ld	s0,0(sp)
    800037a4:	01010113          	addi	sp,sp,16
    800037a8:	00008067          	ret
    800037ac:	00001517          	auipc	a0,0x1
    800037b0:	a5450513          	addi	a0,a0,-1452 # 80004200 <digits+0x48>
    800037b4:	fffff097          	auipc	ra,0xfffff
    800037b8:	018080e7          	jalr	24(ra) # 800027cc <panic>
    800037bc:	00001517          	auipc	a0,0x1
    800037c0:	a2c50513          	addi	a0,a0,-1492 # 800041e8 <digits+0x30>
    800037c4:	fffff097          	auipc	ra,0xfffff
    800037c8:	008080e7          	jalr	8(ra) # 800027cc <panic>

00000000800037cc <push_on>:
    800037cc:	fe010113          	addi	sp,sp,-32
    800037d0:	00813823          	sd	s0,16(sp)
    800037d4:	00113c23          	sd	ra,24(sp)
    800037d8:	00913423          	sd	s1,8(sp)
    800037dc:	02010413          	addi	s0,sp,32
    800037e0:	100024f3          	csrr	s1,sstatus
    800037e4:	100027f3          	csrr	a5,sstatus
    800037e8:	0027e793          	ori	a5,a5,2
    800037ec:	10079073          	csrw	sstatus,a5
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	618080e7          	jalr	1560(ra) # 80001e08 <mycpu>
    800037f8:	07852783          	lw	a5,120(a0)
    800037fc:	02078663          	beqz	a5,80003828 <push_on+0x5c>
    80003800:	ffffe097          	auipc	ra,0xffffe
    80003804:	608080e7          	jalr	1544(ra) # 80001e08 <mycpu>
    80003808:	07852783          	lw	a5,120(a0)
    8000380c:	01813083          	ld	ra,24(sp)
    80003810:	01013403          	ld	s0,16(sp)
    80003814:	0017879b          	addiw	a5,a5,1
    80003818:	06f52c23          	sw	a5,120(a0)
    8000381c:	00813483          	ld	s1,8(sp)
    80003820:	02010113          	addi	sp,sp,32
    80003824:	00008067          	ret
    80003828:	0014d493          	srli	s1,s1,0x1
    8000382c:	ffffe097          	auipc	ra,0xffffe
    80003830:	5dc080e7          	jalr	1500(ra) # 80001e08 <mycpu>
    80003834:	0014f493          	andi	s1,s1,1
    80003838:	06952e23          	sw	s1,124(a0)
    8000383c:	fc5ff06f          	j	80003800 <push_on+0x34>

0000000080003840 <pop_on>:
    80003840:	ff010113          	addi	sp,sp,-16
    80003844:	00813023          	sd	s0,0(sp)
    80003848:	00113423          	sd	ra,8(sp)
    8000384c:	01010413          	addi	s0,sp,16
    80003850:	ffffe097          	auipc	ra,0xffffe
    80003854:	5b8080e7          	jalr	1464(ra) # 80001e08 <mycpu>
    80003858:	100027f3          	csrr	a5,sstatus
    8000385c:	0027f793          	andi	a5,a5,2
    80003860:	04078463          	beqz	a5,800038a8 <pop_on+0x68>
    80003864:	07852783          	lw	a5,120(a0)
    80003868:	02f05863          	blez	a5,80003898 <pop_on+0x58>
    8000386c:	fff7879b          	addiw	a5,a5,-1
    80003870:	06f52c23          	sw	a5,120(a0)
    80003874:	07853783          	ld	a5,120(a0)
    80003878:	00079863          	bnez	a5,80003888 <pop_on+0x48>
    8000387c:	100027f3          	csrr	a5,sstatus
    80003880:	ffd7f793          	andi	a5,a5,-3
    80003884:	10079073          	csrw	sstatus,a5
    80003888:	00813083          	ld	ra,8(sp)
    8000388c:	00013403          	ld	s0,0(sp)
    80003890:	01010113          	addi	sp,sp,16
    80003894:	00008067          	ret
    80003898:	00001517          	auipc	a0,0x1
    8000389c:	99050513          	addi	a0,a0,-1648 # 80004228 <digits+0x70>
    800038a0:	fffff097          	auipc	ra,0xfffff
    800038a4:	f2c080e7          	jalr	-212(ra) # 800027cc <panic>
    800038a8:	00001517          	auipc	a0,0x1
    800038ac:	96050513          	addi	a0,a0,-1696 # 80004208 <digits+0x50>
    800038b0:	fffff097          	auipc	ra,0xfffff
    800038b4:	f1c080e7          	jalr	-228(ra) # 800027cc <panic>

00000000800038b8 <__memset>:
    800038b8:	ff010113          	addi	sp,sp,-16
    800038bc:	00813423          	sd	s0,8(sp)
    800038c0:	01010413          	addi	s0,sp,16
    800038c4:	1a060e63          	beqz	a2,80003a80 <__memset+0x1c8>
    800038c8:	40a007b3          	neg	a5,a0
    800038cc:	0077f793          	andi	a5,a5,7
    800038d0:	00778693          	addi	a3,a5,7
    800038d4:	00b00813          	li	a6,11
    800038d8:	0ff5f593          	andi	a1,a1,255
    800038dc:	fff6071b          	addiw	a4,a2,-1
    800038e0:	1b06e663          	bltu	a3,a6,80003a8c <__memset+0x1d4>
    800038e4:	1cd76463          	bltu	a4,a3,80003aac <__memset+0x1f4>
    800038e8:	1a078e63          	beqz	a5,80003aa4 <__memset+0x1ec>
    800038ec:	00b50023          	sb	a1,0(a0)
    800038f0:	00100713          	li	a4,1
    800038f4:	1ae78463          	beq	a5,a4,80003a9c <__memset+0x1e4>
    800038f8:	00b500a3          	sb	a1,1(a0)
    800038fc:	00200713          	li	a4,2
    80003900:	1ae78a63          	beq	a5,a4,80003ab4 <__memset+0x1fc>
    80003904:	00b50123          	sb	a1,2(a0)
    80003908:	00300713          	li	a4,3
    8000390c:	18e78463          	beq	a5,a4,80003a94 <__memset+0x1dc>
    80003910:	00b501a3          	sb	a1,3(a0)
    80003914:	00400713          	li	a4,4
    80003918:	1ae78263          	beq	a5,a4,80003abc <__memset+0x204>
    8000391c:	00b50223          	sb	a1,4(a0)
    80003920:	00500713          	li	a4,5
    80003924:	1ae78063          	beq	a5,a4,80003ac4 <__memset+0x20c>
    80003928:	00b502a3          	sb	a1,5(a0)
    8000392c:	00700713          	li	a4,7
    80003930:	18e79e63          	bne	a5,a4,80003acc <__memset+0x214>
    80003934:	00b50323          	sb	a1,6(a0)
    80003938:	00700e93          	li	t4,7
    8000393c:	00859713          	slli	a4,a1,0x8
    80003940:	00e5e733          	or	a4,a1,a4
    80003944:	01059e13          	slli	t3,a1,0x10
    80003948:	01c76e33          	or	t3,a4,t3
    8000394c:	01859313          	slli	t1,a1,0x18
    80003950:	006e6333          	or	t1,t3,t1
    80003954:	02059893          	slli	a7,a1,0x20
    80003958:	40f60e3b          	subw	t3,a2,a5
    8000395c:	011368b3          	or	a7,t1,a7
    80003960:	02859813          	slli	a6,a1,0x28
    80003964:	0108e833          	or	a6,a7,a6
    80003968:	03059693          	slli	a3,a1,0x30
    8000396c:	003e589b          	srliw	a7,t3,0x3
    80003970:	00d866b3          	or	a3,a6,a3
    80003974:	03859713          	slli	a4,a1,0x38
    80003978:	00389813          	slli	a6,a7,0x3
    8000397c:	00f507b3          	add	a5,a0,a5
    80003980:	00e6e733          	or	a4,a3,a4
    80003984:	000e089b          	sext.w	a7,t3
    80003988:	00f806b3          	add	a3,a6,a5
    8000398c:	00e7b023          	sd	a4,0(a5)
    80003990:	00878793          	addi	a5,a5,8
    80003994:	fed79ce3          	bne	a5,a3,8000398c <__memset+0xd4>
    80003998:	ff8e7793          	andi	a5,t3,-8
    8000399c:	0007871b          	sext.w	a4,a5
    800039a0:	01d787bb          	addw	a5,a5,t4
    800039a4:	0ce88e63          	beq	a7,a4,80003a80 <__memset+0x1c8>
    800039a8:	00f50733          	add	a4,a0,a5
    800039ac:	00b70023          	sb	a1,0(a4)
    800039b0:	0017871b          	addiw	a4,a5,1
    800039b4:	0cc77663          	bgeu	a4,a2,80003a80 <__memset+0x1c8>
    800039b8:	00e50733          	add	a4,a0,a4
    800039bc:	00b70023          	sb	a1,0(a4)
    800039c0:	0027871b          	addiw	a4,a5,2
    800039c4:	0ac77e63          	bgeu	a4,a2,80003a80 <__memset+0x1c8>
    800039c8:	00e50733          	add	a4,a0,a4
    800039cc:	00b70023          	sb	a1,0(a4)
    800039d0:	0037871b          	addiw	a4,a5,3
    800039d4:	0ac77663          	bgeu	a4,a2,80003a80 <__memset+0x1c8>
    800039d8:	00e50733          	add	a4,a0,a4
    800039dc:	00b70023          	sb	a1,0(a4)
    800039e0:	0047871b          	addiw	a4,a5,4
    800039e4:	08c77e63          	bgeu	a4,a2,80003a80 <__memset+0x1c8>
    800039e8:	00e50733          	add	a4,a0,a4
    800039ec:	00b70023          	sb	a1,0(a4)
    800039f0:	0057871b          	addiw	a4,a5,5
    800039f4:	08c77663          	bgeu	a4,a2,80003a80 <__memset+0x1c8>
    800039f8:	00e50733          	add	a4,a0,a4
    800039fc:	00b70023          	sb	a1,0(a4)
    80003a00:	0067871b          	addiw	a4,a5,6
    80003a04:	06c77e63          	bgeu	a4,a2,80003a80 <__memset+0x1c8>
    80003a08:	00e50733          	add	a4,a0,a4
    80003a0c:	00b70023          	sb	a1,0(a4)
    80003a10:	0077871b          	addiw	a4,a5,7
    80003a14:	06c77663          	bgeu	a4,a2,80003a80 <__memset+0x1c8>
    80003a18:	00e50733          	add	a4,a0,a4
    80003a1c:	00b70023          	sb	a1,0(a4)
    80003a20:	0087871b          	addiw	a4,a5,8
    80003a24:	04c77e63          	bgeu	a4,a2,80003a80 <__memset+0x1c8>
    80003a28:	00e50733          	add	a4,a0,a4
    80003a2c:	00b70023          	sb	a1,0(a4)
    80003a30:	0097871b          	addiw	a4,a5,9
    80003a34:	04c77663          	bgeu	a4,a2,80003a80 <__memset+0x1c8>
    80003a38:	00e50733          	add	a4,a0,a4
    80003a3c:	00b70023          	sb	a1,0(a4)
    80003a40:	00a7871b          	addiw	a4,a5,10
    80003a44:	02c77e63          	bgeu	a4,a2,80003a80 <__memset+0x1c8>
    80003a48:	00e50733          	add	a4,a0,a4
    80003a4c:	00b70023          	sb	a1,0(a4)
    80003a50:	00b7871b          	addiw	a4,a5,11
    80003a54:	02c77663          	bgeu	a4,a2,80003a80 <__memset+0x1c8>
    80003a58:	00e50733          	add	a4,a0,a4
    80003a5c:	00b70023          	sb	a1,0(a4)
    80003a60:	00c7871b          	addiw	a4,a5,12
    80003a64:	00c77e63          	bgeu	a4,a2,80003a80 <__memset+0x1c8>
    80003a68:	00e50733          	add	a4,a0,a4
    80003a6c:	00b70023          	sb	a1,0(a4)
    80003a70:	00d7879b          	addiw	a5,a5,13
    80003a74:	00c7f663          	bgeu	a5,a2,80003a80 <__memset+0x1c8>
    80003a78:	00f507b3          	add	a5,a0,a5
    80003a7c:	00b78023          	sb	a1,0(a5)
    80003a80:	00813403          	ld	s0,8(sp)
    80003a84:	01010113          	addi	sp,sp,16
    80003a88:	00008067          	ret
    80003a8c:	00b00693          	li	a3,11
    80003a90:	e55ff06f          	j	800038e4 <__memset+0x2c>
    80003a94:	00300e93          	li	t4,3
    80003a98:	ea5ff06f          	j	8000393c <__memset+0x84>
    80003a9c:	00100e93          	li	t4,1
    80003aa0:	e9dff06f          	j	8000393c <__memset+0x84>
    80003aa4:	00000e93          	li	t4,0
    80003aa8:	e95ff06f          	j	8000393c <__memset+0x84>
    80003aac:	00000793          	li	a5,0
    80003ab0:	ef9ff06f          	j	800039a8 <__memset+0xf0>
    80003ab4:	00200e93          	li	t4,2
    80003ab8:	e85ff06f          	j	8000393c <__memset+0x84>
    80003abc:	00400e93          	li	t4,4
    80003ac0:	e7dff06f          	j	8000393c <__memset+0x84>
    80003ac4:	00500e93          	li	t4,5
    80003ac8:	e75ff06f          	j	8000393c <__memset+0x84>
    80003acc:	00600e93          	li	t4,6
    80003ad0:	e6dff06f          	j	8000393c <__memset+0x84>

0000000080003ad4 <__memmove>:
    80003ad4:	ff010113          	addi	sp,sp,-16
    80003ad8:	00813423          	sd	s0,8(sp)
    80003adc:	01010413          	addi	s0,sp,16
    80003ae0:	0e060863          	beqz	a2,80003bd0 <__memmove+0xfc>
    80003ae4:	fff6069b          	addiw	a3,a2,-1
    80003ae8:	0006881b          	sext.w	a6,a3
    80003aec:	0ea5e863          	bltu	a1,a0,80003bdc <__memmove+0x108>
    80003af0:	00758713          	addi	a4,a1,7
    80003af4:	00a5e7b3          	or	a5,a1,a0
    80003af8:	40a70733          	sub	a4,a4,a0
    80003afc:	0077f793          	andi	a5,a5,7
    80003b00:	00f73713          	sltiu	a4,a4,15
    80003b04:	00174713          	xori	a4,a4,1
    80003b08:	0017b793          	seqz	a5,a5
    80003b0c:	00e7f7b3          	and	a5,a5,a4
    80003b10:	10078863          	beqz	a5,80003c20 <__memmove+0x14c>
    80003b14:	00900793          	li	a5,9
    80003b18:	1107f463          	bgeu	a5,a6,80003c20 <__memmove+0x14c>
    80003b1c:	0036581b          	srliw	a6,a2,0x3
    80003b20:	fff8081b          	addiw	a6,a6,-1
    80003b24:	02081813          	slli	a6,a6,0x20
    80003b28:	01d85893          	srli	a7,a6,0x1d
    80003b2c:	00858813          	addi	a6,a1,8
    80003b30:	00058793          	mv	a5,a1
    80003b34:	00050713          	mv	a4,a0
    80003b38:	01088833          	add	a6,a7,a6
    80003b3c:	0007b883          	ld	a7,0(a5)
    80003b40:	00878793          	addi	a5,a5,8
    80003b44:	00870713          	addi	a4,a4,8
    80003b48:	ff173c23          	sd	a7,-8(a4)
    80003b4c:	ff0798e3          	bne	a5,a6,80003b3c <__memmove+0x68>
    80003b50:	ff867713          	andi	a4,a2,-8
    80003b54:	02071793          	slli	a5,a4,0x20
    80003b58:	0207d793          	srli	a5,a5,0x20
    80003b5c:	00f585b3          	add	a1,a1,a5
    80003b60:	40e686bb          	subw	a3,a3,a4
    80003b64:	00f507b3          	add	a5,a0,a5
    80003b68:	06e60463          	beq	a2,a4,80003bd0 <__memmove+0xfc>
    80003b6c:	0005c703          	lbu	a4,0(a1)
    80003b70:	00e78023          	sb	a4,0(a5)
    80003b74:	04068e63          	beqz	a3,80003bd0 <__memmove+0xfc>
    80003b78:	0015c603          	lbu	a2,1(a1)
    80003b7c:	00100713          	li	a4,1
    80003b80:	00c780a3          	sb	a2,1(a5)
    80003b84:	04e68663          	beq	a3,a4,80003bd0 <__memmove+0xfc>
    80003b88:	0025c603          	lbu	a2,2(a1)
    80003b8c:	00200713          	li	a4,2
    80003b90:	00c78123          	sb	a2,2(a5)
    80003b94:	02e68e63          	beq	a3,a4,80003bd0 <__memmove+0xfc>
    80003b98:	0035c603          	lbu	a2,3(a1)
    80003b9c:	00300713          	li	a4,3
    80003ba0:	00c781a3          	sb	a2,3(a5)
    80003ba4:	02e68663          	beq	a3,a4,80003bd0 <__memmove+0xfc>
    80003ba8:	0045c603          	lbu	a2,4(a1)
    80003bac:	00400713          	li	a4,4
    80003bb0:	00c78223          	sb	a2,4(a5)
    80003bb4:	00e68e63          	beq	a3,a4,80003bd0 <__memmove+0xfc>
    80003bb8:	0055c603          	lbu	a2,5(a1)
    80003bbc:	00500713          	li	a4,5
    80003bc0:	00c782a3          	sb	a2,5(a5)
    80003bc4:	00e68663          	beq	a3,a4,80003bd0 <__memmove+0xfc>
    80003bc8:	0065c703          	lbu	a4,6(a1)
    80003bcc:	00e78323          	sb	a4,6(a5)
    80003bd0:	00813403          	ld	s0,8(sp)
    80003bd4:	01010113          	addi	sp,sp,16
    80003bd8:	00008067          	ret
    80003bdc:	02061713          	slli	a4,a2,0x20
    80003be0:	02075713          	srli	a4,a4,0x20
    80003be4:	00e587b3          	add	a5,a1,a4
    80003be8:	f0f574e3          	bgeu	a0,a5,80003af0 <__memmove+0x1c>
    80003bec:	02069613          	slli	a2,a3,0x20
    80003bf0:	02065613          	srli	a2,a2,0x20
    80003bf4:	fff64613          	not	a2,a2
    80003bf8:	00e50733          	add	a4,a0,a4
    80003bfc:	00c78633          	add	a2,a5,a2
    80003c00:	fff7c683          	lbu	a3,-1(a5)
    80003c04:	fff78793          	addi	a5,a5,-1
    80003c08:	fff70713          	addi	a4,a4,-1
    80003c0c:	00d70023          	sb	a3,0(a4)
    80003c10:	fec798e3          	bne	a5,a2,80003c00 <__memmove+0x12c>
    80003c14:	00813403          	ld	s0,8(sp)
    80003c18:	01010113          	addi	sp,sp,16
    80003c1c:	00008067          	ret
    80003c20:	02069713          	slli	a4,a3,0x20
    80003c24:	02075713          	srli	a4,a4,0x20
    80003c28:	00170713          	addi	a4,a4,1
    80003c2c:	00e50733          	add	a4,a0,a4
    80003c30:	00050793          	mv	a5,a0
    80003c34:	0005c683          	lbu	a3,0(a1)
    80003c38:	00178793          	addi	a5,a5,1
    80003c3c:	00158593          	addi	a1,a1,1
    80003c40:	fed78fa3          	sb	a3,-1(a5)
    80003c44:	fee798e3          	bne	a5,a4,80003c34 <__memmove+0x160>
    80003c48:	f89ff06f          	j	80003bd0 <__memmove+0xfc>

0000000080003c4c <__putc>:
    80003c4c:	fe010113          	addi	sp,sp,-32
    80003c50:	00813823          	sd	s0,16(sp)
    80003c54:	00113c23          	sd	ra,24(sp)
    80003c58:	02010413          	addi	s0,sp,32
    80003c5c:	00050793          	mv	a5,a0
    80003c60:	fef40593          	addi	a1,s0,-17
    80003c64:	00100613          	li	a2,1
    80003c68:	00000513          	li	a0,0
    80003c6c:	fef407a3          	sb	a5,-17(s0)
    80003c70:	fffff097          	auipc	ra,0xfffff
    80003c74:	b3c080e7          	jalr	-1220(ra) # 800027ac <console_write>
    80003c78:	01813083          	ld	ra,24(sp)
    80003c7c:	01013403          	ld	s0,16(sp)
    80003c80:	02010113          	addi	sp,sp,32
    80003c84:	00008067          	ret

0000000080003c88 <__getc>:
    80003c88:	fe010113          	addi	sp,sp,-32
    80003c8c:	00813823          	sd	s0,16(sp)
    80003c90:	00113c23          	sd	ra,24(sp)
    80003c94:	02010413          	addi	s0,sp,32
    80003c98:	fe840593          	addi	a1,s0,-24
    80003c9c:	00100613          	li	a2,1
    80003ca0:	00000513          	li	a0,0
    80003ca4:	fffff097          	auipc	ra,0xfffff
    80003ca8:	ae8080e7          	jalr	-1304(ra) # 8000278c <console_read>
    80003cac:	fe844503          	lbu	a0,-24(s0)
    80003cb0:	01813083          	ld	ra,24(sp)
    80003cb4:	01013403          	ld	s0,16(sp)
    80003cb8:	02010113          	addi	sp,sp,32
    80003cbc:	00008067          	ret

0000000080003cc0 <console_handler>:
    80003cc0:	fe010113          	addi	sp,sp,-32
    80003cc4:	00813823          	sd	s0,16(sp)
    80003cc8:	00113c23          	sd	ra,24(sp)
    80003ccc:	00913423          	sd	s1,8(sp)
    80003cd0:	02010413          	addi	s0,sp,32
    80003cd4:	14202773          	csrr	a4,scause
    80003cd8:	100027f3          	csrr	a5,sstatus
    80003cdc:	0027f793          	andi	a5,a5,2
    80003ce0:	06079e63          	bnez	a5,80003d5c <console_handler+0x9c>
    80003ce4:	00074c63          	bltz	a4,80003cfc <console_handler+0x3c>
    80003ce8:	01813083          	ld	ra,24(sp)
    80003cec:	01013403          	ld	s0,16(sp)
    80003cf0:	00813483          	ld	s1,8(sp)
    80003cf4:	02010113          	addi	sp,sp,32
    80003cf8:	00008067          	ret
    80003cfc:	0ff77713          	andi	a4,a4,255
    80003d00:	00900793          	li	a5,9
    80003d04:	fef712e3          	bne	a4,a5,80003ce8 <console_handler+0x28>
    80003d08:	ffffe097          	auipc	ra,0xffffe
    80003d0c:	6dc080e7          	jalr	1756(ra) # 800023e4 <plic_claim>
    80003d10:	00a00793          	li	a5,10
    80003d14:	00050493          	mv	s1,a0
    80003d18:	02f50c63          	beq	a0,a5,80003d50 <console_handler+0x90>
    80003d1c:	fc0506e3          	beqz	a0,80003ce8 <console_handler+0x28>
    80003d20:	00050593          	mv	a1,a0
    80003d24:	00000517          	auipc	a0,0x0
    80003d28:	40c50513          	addi	a0,a0,1036 # 80004130 <bntOne+0xd8>
    80003d2c:	fffff097          	auipc	ra,0xfffff
    80003d30:	afc080e7          	jalr	-1284(ra) # 80002828 <__printf>
    80003d34:	01013403          	ld	s0,16(sp)
    80003d38:	01813083          	ld	ra,24(sp)
    80003d3c:	00048513          	mv	a0,s1
    80003d40:	00813483          	ld	s1,8(sp)
    80003d44:	02010113          	addi	sp,sp,32
    80003d48:	ffffe317          	auipc	t1,0xffffe
    80003d4c:	6d430067          	jr	1748(t1) # 8000241c <plic_complete>
    80003d50:	fffff097          	auipc	ra,0xfffff
    80003d54:	3e0080e7          	jalr	992(ra) # 80003130 <uartintr>
    80003d58:	fddff06f          	j	80003d34 <console_handler+0x74>
    80003d5c:	00000517          	auipc	a0,0x0
    80003d60:	4d450513          	addi	a0,a0,1236 # 80004230 <digits+0x78>
    80003d64:	fffff097          	auipc	ra,0xfffff
    80003d68:	a68080e7          	jalr	-1432(ra) # 800027cc <panic>
	...
