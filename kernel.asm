
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	7b013103          	ld	sp,1968(sp) # 800047b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	30d010ef          	jal	ra,80001b28 <start>

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
    80001120:	6c47a783          	lw	a5,1732(a5) # 800047e0 <memoryInitiliaized>
    80001124:	04078063          	beqz	a5,80001164 <initMemory+0x54>
        return;
    memoryInitiliaized = 1;
    80001128:	00100793          	li	a5,1
    8000112c:	00003717          	auipc	a4,0x3
    80001130:	6af72a23          	sw	a5,1716(a4) # 800047e0 <memoryInitiliaized>
    headAllocated = 0;
    80001134:	00003797          	auipc	a5,0x3
    80001138:	6a07be23          	sd	zero,1724(a5) # 800047f0 <headAllocated>
    headFree = (struct FreeFragment*)HEAP_START_ADDR;
    8000113c:	00003717          	auipc	a4,0x3
    80001140:	65473703          	ld	a4,1620(a4) # 80004790 <HEAP_START_ADDR>
    80001144:	00003797          	auipc	a5,0x3
    80001148:	6ae7b223          	sd	a4,1700(a5) # 800047e8 <headFree>
    headFree->next = 0;
    8000114c:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1);
    80001150:	00003797          	auipc	a5,0x3
    80001154:	6387b783          	ld	a5,1592(a5) # 80004788 <HEAP_END_ADDR>
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
    8000119c:	6587b783          	ld	a5,1624(a5) # 800047f0 <headAllocated>
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
    800011f8:	5e97be23          	sd	s1,1532(a5) # 800047f0 <headAllocated>
    800011fc:	fd5ff06f          	j	800011d0 <insertNewAllocatedFragment+0x60>
            newAllocated->next = headAllocated;
    80001200:	00003797          	auipc	a5,0x3
    80001204:	5f078793          	addi	a5,a5,1520 # 800047f0 <headAllocated>
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
    80001240:	5ac4b483          	ld	s1,1452(s1) # 800047e8 <headFree>
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
    8000129c:	54f63823          	sd	a5,1360(a2) # 800047e8 <headFree>
    800012a0:	fb9ff06f          	j	80001258 <tryToAllocateFragment+0x40>
                        headFree = 0;
    800012a4:	00003797          	auipc	a5,0x3
    800012a8:	5407b223          	sd	zero,1348(a5) # 800047e8 <headFree>
    800012ac:	fd1ff06f          	j	8000127c <tryToAllocateFragment+0x64>
                {
                    prev->next = 0;
                }
                else
                {
                    headFree = 0;
    800012b0:	00003797          	auipc	a5,0x3
    800012b4:	5207bc23          	sd	zero,1336(a5) # 800047e8 <headFree>
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
    800012d4:	4b863603          	ld	a2,1208(a2) # 80004788 <HEAP_END_ADDR>
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
    80001334:	4b87b783          	ld	a5,1208(a5) # 800047e8 <headFree>
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
    80001380:	4697b623          	sd	s1,1132(a5) # 800047e8 <headFree>
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
    800013b0:	4444b483          	ld	s1,1092(s1) # 800047f0 <headAllocated>
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
    800013c8:	42f73623          	sd	a5,1068(a4) # 800047f0 <headAllocated>
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
    800014a4:	3207b783          	ld	a5,800(a5) # 800047c0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800014a8:	10579073          	csrw	stvec,a5

    __putc('a');
    800014ac:	06100513          	li	a0,97
    800014b0:	00002097          	auipc	ra,0x2
    800014b4:	73c080e7          	jalr	1852(ra) # 80003bec <__putc>
    __asm__ volatile("ecall");
    800014b8:	00000073          	ecall
    __putc('b');
    800014bc:	06200513          	li	a0,98
    800014c0:	00002097          	auipc	ra,0x2
    800014c4:	72c080e7          	jalr	1836(ra) # 80003bec <__putc>
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
    800014f8:	76c080e7          	jalr	1900(ra) # 80003c60 <console_handler>
}
    800014fc:	00813083          	ld	ra,8(sp)
    80001500:	00013403          	ld	s0,0(sp)
    80001504:	01010113          	addi	sp,sp,16
    80001508:	00008067          	ret
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    8000150c:	00050793          	mv	a5,a0
            if(operation == (uint64)MEM_ALLOC) {
    80001510:	00003717          	auipc	a4,0x3
    80001514:	2b873703          	ld	a4,696(a4) # 800047c8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001518:	00072703          	lw	a4,0(a4)
    8000151c:	02f70263          	beq	a4,a5,80001540 <interrupt+0x68>
            else if(operation == (uint64)MEM_FREE){
    80001520:	00003717          	auipc	a4,0x3
    80001524:	29873703          	ld	a4,664(a4) # 800047b8 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80001658:	1cc7b783          	ld	a5,460(a5) # 80004820 <_ZN15MemoryAllocator15memoryAllocatorE>
    8000165c:	00078863          	beqz	a5,8000166c <_ZN15MemoryAllocator18getMemoryAllocatorEv+0x18>
}
    80001660:	00003517          	auipc	a0,0x3
    80001664:	1c053503          	ld	a0,448(a0) # 80004820 <_ZN15MemoryAllocator15memoryAllocatorE>
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
    8000168c:	18a7bc23          	sd	a0,408(a5) # 80004820 <_ZN15MemoryAllocator15memoryAllocatorE>
}
    80001690:	00003517          	auipc	a0,0x3
    80001694:	19053503          	ld	a0,400(a0) # 80004820 <_ZN15MemoryAllocator15memoryAllocatorE>
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
    800016d4:	1587b783          	ld	a5,344(a5) # 80004828 <_ZN9Scheduler9schedulerE>
    800016d8:	00078863          	beqz	a5,800016e8 <_ZN9Scheduler12getSchedulerEv+0x18>
        //preklopi new za Scheduler
        scheduler = (Scheduler*)MemoryAllocator::getMemoryAllocator()->mem_alloc(sizeof(Scheduler));
    }

    return scheduler;
}
    800016dc:	00003517          	auipc	a0,0x3
    800016e0:	14c53503          	ld	a0,332(a0) # 80004828 <_ZN9Scheduler9schedulerE>
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
    80001710:	10a7be23          	sd	a0,284(a5) # 80004828 <_ZN9Scheduler9schedulerE>
}
    80001714:	00003517          	auipc	a0,0x3
    80001718:	11453503          	ld	a0,276(a0) # 80004828 <_ZN9Scheduler9schedulerE>
    8000171c:	00813083          	ld	ra,8(sp)
    80001720:	00013403          	ld	s0,0(sp)
    80001724:	01010113          	addi	sp,sp,16
    80001728:	00008067          	ret

000000008000172c <_ZN9SchedulerC1Ev>:
    //preklopi delete za queue
    delete queueThreads;
    //MemoryAllocator::getMemoryAllocator()->mem_free(queueThreads);
}

Scheduler::Scheduler() {
    8000172c:	fe010113          	addi	sp,sp,-32
    80001730:	00113c23          	sd	ra,24(sp)
    80001734:	00813823          	sd	s0,16(sp)
    80001738:	00913423          	sd	s1,8(sp)
    8000173c:	02010413          	addi	s0,sp,32
    80001740:	00050493          	mv	s1,a0
    queueThreads = (Queue<Thread*>*)MemoryAllocator::getMemoryAllocator()->mem_alloc(sizeof(Queue<Thread*>));
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
    Scheduler::getScheduler()->put(this);
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

PCB::PCB(void (*body)(void*), void* arg, size_t stackSize, size_t timeSlice) {
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
    this->stackSize = stackSize;
    80001858:	00d53823          	sd	a3,16(a0)
    this->timeSlice = timeSlice;
    8000185c:	00e53c23          	sd	a4,24(a0)
    this->pcbThread = new Thread(body, arg);
    80001860:	02000513          	li	a0,32
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

00000000800018c0 <_ZN9Scheduler3putEP6Thread>:
void Scheduler::put(Thread *thread) {
    800018c0:	ff010113          	addi	sp,sp,-16
    800018c4:	00113423          	sd	ra,8(sp)
    800018c8:	00813023          	sd	s0,0(sp)
    800018cc:	01010413          	addi	s0,sp,16
    queueThreads->push(thread);
    800018d0:	00053503          	ld	a0,0(a0)
    800018d4:	00000097          	auipc	ra,0x0
    800018d8:	0f4080e7          	jalr	244(ra) # 800019c8 <_ZN5QueueIP6ThreadE4pushES1_>
}
    800018dc:	00813083          	ld	ra,8(sp)
    800018e0:	00013403          	ld	s0,0(sp)
    800018e4:	01010113          	addi	sp,sp,16
    800018e8:	00008067          	ret

00000000800018ec <_ZN6Thread5startEv>:
void Thread::start() {
    800018ec:	fe010113          	addi	sp,sp,-32
    800018f0:	00113c23          	sd	ra,24(sp)
    800018f4:	00813823          	sd	s0,16(sp)
    800018f8:	00913423          	sd	s1,8(sp)
    800018fc:	02010413          	addi	s0,sp,32
    80001900:	00050493          	mv	s1,a0
    Scheduler::getScheduler()->put(this);
    80001904:	00000097          	auipc	ra,0x0
    80001908:	dcc080e7          	jalr	-564(ra) # 800016d0 <_ZN9Scheduler12getSchedulerEv>
    8000190c:	00048593          	mv	a1,s1
    80001910:	00000097          	auipc	ra,0x0
    80001914:	fb0080e7          	jalr	-80(ra) # 800018c0 <_ZN9Scheduler3putEP6Thread>
}
    80001918:	01813083          	ld	ra,24(sp)
    8000191c:	01013403          	ld	s0,16(sp)
    80001920:	00813483          	ld	s1,8(sp)
    80001924:	02010113          	addi	sp,sp,32
    80001928:	00008067          	ret

000000008000192c <_ZN9Scheduler3getEv>:
Thread *Scheduler::get() {
    8000192c:	fe010113          	addi	sp,sp,-32
    80001930:	00113c23          	sd	ra,24(sp)
    80001934:	00813823          	sd	s0,16(sp)
    80001938:	00913423          	sd	s1,8(sp)
    8000193c:	01213023          	sd	s2,0(sp)
    80001940:	02010413          	addi	s0,sp,32
    Thread* t =  queueThreads->front();
    80001944:	00053903          	ld	s2,0(a0)
    80001948:	00090513          	mv	a0,s2
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	0d4080e7          	jalr	212(ra) # 80001a20 <_ZN5QueueIP6ThreadE5frontEv>
    80001954:	00050493          	mv	s1,a0
    queueThreads->pop();
    80001958:	00090513          	mv	a0,s2
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	0e8080e7          	jalr	232(ra) # 80001a44 <_ZN5QueueIP6ThreadE3popEv>
}
    80001964:	00048513          	mv	a0,s1
    80001968:	01813083          	ld	ra,24(sp)
    8000196c:	01013403          	ld	s0,16(sp)
    80001970:	00813483          	ld	s1,8(sp)
    80001974:	00013903          	ld	s2,0(sp)
    80001978:	02010113          	addi	sp,sp,32
    8000197c:	00008067          	ret

0000000080001980 <_ZN9SchedulerD1Ev>:
Scheduler::~Scheduler() {
    80001980:	fe010113          	addi	sp,sp,-32
    80001984:	00113c23          	sd	ra,24(sp)
    80001988:	00813823          	sd	s0,16(sp)
    8000198c:	00913423          	sd	s1,8(sp)
    80001990:	02010413          	addi	s0,sp,32
    delete queueThreads;
    80001994:	00053483          	ld	s1,0(a0)
    80001998:	00048e63          	beqz	s1,800019b4 <_ZN9SchedulerD1Ev+0x34>
    8000199c:	00048513          	mv	a0,s1
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	130080e7          	jalr	304(ra) # 80001ad0 <_ZN5QueueIP6ThreadED1Ev>
    800019a8:	00048513          	mv	a0,s1
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	0fc080e7          	jalr	252(ra) # 80001aa8 <_ZN5QueueIP6ThreadEdlEPv>
}
    800019b4:	01813083          	ld	ra,24(sp)
    800019b8:	01013403          	ld	s0,16(sp)
    800019bc:	00813483          	ld	s1,8(sp)
    800019c0:	02010113          	addi	sp,sp,32
    800019c4:	00008067          	ret

00000000800019c8 <_ZN5QueueIP6ThreadE4pushES1_>:
void Queue<T>::push(T t) {
    800019c8:	fe010113          	addi	sp,sp,-32
    800019cc:	00113c23          	sd	ra,24(sp)
    800019d0:	00813823          	sd	s0,16(sp)
    800019d4:	00913423          	sd	s1,8(sp)
    800019d8:	02010413          	addi	s0,sp,32
    800019dc:	00050493          	mv	s1,a0
    Elem* newElem = (Elem*)MemoryAllocator::getMemoryAllocator()->mem_alloc(sizeof(Elem));
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	c74080e7          	jalr	-908(ra) # 80001654 <_ZN15MemoryAllocator18getMemoryAllocatorEv>
    800019e8:	01000593          	li	a1,16
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	bd0080e7          	jalr	-1072(ra) # 800015bc <_ZN15MemoryAllocator9mem_allocEm>
    if(first == 0) {
    800019f4:	0004b783          	ld	a5,0(s1)
    800019f8:	00078c63          	beqz	a5,80001a10 <_ZN5QueueIP6ThreadE4pushES1_+0x48>
}
    800019fc:	01813083          	ld	ra,24(sp)
    80001a00:	01013403          	ld	s0,16(sp)
    80001a04:	00813483          	ld	s1,8(sp)
    80001a08:	02010113          	addi	sp,sp,32
    80001a0c:	00008067          	ret
        first = newElem;
    80001a10:	00a4b023          	sd	a0,0(s1)
        last = 0;
    80001a14:	0004b423          	sd	zero,8(s1)
        first->next = last;
    80001a18:	00053423          	sd	zero,8(a0)
}
    80001a1c:	fe1ff06f          	j	800019fc <_ZN5QueueIP6ThreadE4pushES1_+0x34>

0000000080001a20 <_ZN5QueueIP6ThreadE5frontEv>:
T Queue<T>::front() {
    80001a20:	ff010113          	addi	sp,sp,-16
    80001a24:	00813423          	sd	s0,8(sp)
    80001a28:	01010413          	addi	s0,sp,16
   if(first == 0)
    80001a2c:	00053503          	ld	a0,0(a0)
    80001a30:	00050463          	beqz	a0,80001a38 <_ZN5QueueIP6ThreadE5frontEv+0x18>
   return first->data;
    80001a34:	00053503          	ld	a0,0(a0)
}
    80001a38:	00813403          	ld	s0,8(sp)
    80001a3c:	01010113          	addi	sp,sp,16
    80001a40:	00008067          	ret

0000000080001a44 <_ZN5QueueIP6ThreadE3popEv>:
void Queue<T>::pop() {
    80001a44:	fe010113          	addi	sp,sp,-32
    80001a48:	00113c23          	sd	ra,24(sp)
    80001a4c:	00813823          	sd	s0,16(sp)
    80001a50:	00913423          	sd	s1,8(sp)
    80001a54:	01213023          	sd	s2,0(sp)
    80001a58:	02010413          	addi	s0,sp,32
    80001a5c:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80001a60:	00053783          	ld	a5,0(a0)
    80001a64:	0087b903          	ld	s2,8(a5)
    MemoryAllocator::getMemoryAllocator()->mem_free(first);
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	bec080e7          	jalr	-1044(ra) # 80001654 <_ZN15MemoryAllocator18getMemoryAllocatorEv>
    80001a70:	0004b583          	ld	a1,0(s1)
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	b74080e7          	jalr	-1164(ra) # 800015e8 <_ZN15MemoryAllocator8mem_freeEPv>
    first = newFirst;
    80001a7c:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80001a80:	00090e63          	beqz	s2,80001a9c <_ZN5QueueIP6ThreadE3popEv+0x58>
}
    80001a84:	01813083          	ld	ra,24(sp)
    80001a88:	01013403          	ld	s0,16(sp)
    80001a8c:	00813483          	ld	s1,8(sp)
    80001a90:	00013903          	ld	s2,0(sp)
    80001a94:	02010113          	addi	sp,sp,32
    80001a98:	00008067          	ret
        first = last = 0;
    80001a9c:	0004b423          	sd	zero,8(s1)
    80001aa0:	0004b023          	sd	zero,0(s1)
}
    80001aa4:	fe1ff06f          	j	80001a84 <_ZN5QueueIP6ThreadE3popEv+0x40>

0000000080001aa8 <_ZN5QueueIP6ThreadEdlEPv>:
void Queue<T>::operator delete(void *p) {
    80001aa8:	ff010113          	addi	sp,sp,-16
    80001aac:	00113423          	sd	ra,8(sp)
    80001ab0:	00813023          	sd	s0,0(sp)
    80001ab4:	01010413          	addi	s0,sp,16
    ::operator delete(p);
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	ac4080e7          	jalr	-1340(ra) # 8000157c <_ZdlPv>
}
    80001ac0:	00813083          	ld	ra,8(sp)
    80001ac4:	00013403          	ld	s0,0(sp)
    80001ac8:	01010113          	addi	sp,sp,16
    80001acc:	00008067          	ret

0000000080001ad0 <_ZN5QueueIP6ThreadED1Ev>:
Queue<T>::~Queue() {
    80001ad0:	fe010113          	addi	sp,sp,-32
    80001ad4:	00113c23          	sd	ra,24(sp)
    80001ad8:	00813823          	sd	s0,16(sp)
    80001adc:	00913423          	sd	s1,8(sp)
    80001ae0:	01213023          	sd	s2,0(sp)
    80001ae4:	02010413          	addi	s0,sp,32
    Elem* curr = first;
    80001ae8:	00053483          	ld	s1,0(a0)
    while(curr != 0)
    80001aec:	02048263          	beqz	s1,80001b10 <_ZN5QueueIP6ThreadED1Ev+0x40>
        curr = curr->next;
    80001af0:	0084b903          	ld	s2,8(s1)
        MemoryAllocator::getMemoryAllocator()->mem_free(old);
    80001af4:	00000097          	auipc	ra,0x0
    80001af8:	b60080e7          	jalr	-1184(ra) # 80001654 <_ZN15MemoryAllocator18getMemoryAllocatorEv>
    80001afc:	00048593          	mv	a1,s1
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	ae8080e7          	jalr	-1304(ra) # 800015e8 <_ZN15MemoryAllocator8mem_freeEPv>
        curr = curr->next;
    80001b08:	00090493          	mv	s1,s2
    while(curr != 0)
    80001b0c:	fe1ff06f          	j	80001aec <_ZN5QueueIP6ThreadED1Ev+0x1c>
}
    80001b10:	01813083          	ld	ra,24(sp)
    80001b14:	01013403          	ld	s0,16(sp)
    80001b18:	00813483          	ld	s1,8(sp)
    80001b1c:	00013903          	ld	s2,0(sp)
    80001b20:	02010113          	addi	sp,sp,32
    80001b24:	00008067          	ret

0000000080001b28 <start>:
    80001b28:	ff010113          	addi	sp,sp,-16
    80001b2c:	00813423          	sd	s0,8(sp)
    80001b30:	01010413          	addi	s0,sp,16
    80001b34:	300027f3          	csrr	a5,mstatus
    80001b38:	ffffe737          	lui	a4,0xffffe
    80001b3c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8d6f>
    80001b40:	00e7f7b3          	and	a5,a5,a4
    80001b44:	00001737          	lui	a4,0x1
    80001b48:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001b4c:	00e7e7b3          	or	a5,a5,a4
    80001b50:	30079073          	csrw	mstatus,a5
    80001b54:	00000797          	auipc	a5,0x0
    80001b58:	16078793          	addi	a5,a5,352 # 80001cb4 <system_main>
    80001b5c:	34179073          	csrw	mepc,a5
    80001b60:	00000793          	li	a5,0
    80001b64:	18079073          	csrw	satp,a5
    80001b68:	000107b7          	lui	a5,0x10
    80001b6c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001b70:	30279073          	csrw	medeleg,a5
    80001b74:	30379073          	csrw	mideleg,a5
    80001b78:	104027f3          	csrr	a5,sie
    80001b7c:	2227e793          	ori	a5,a5,546
    80001b80:	10479073          	csrw	sie,a5
    80001b84:	fff00793          	li	a5,-1
    80001b88:	00a7d793          	srli	a5,a5,0xa
    80001b8c:	3b079073          	csrw	pmpaddr0,a5
    80001b90:	00f00793          	li	a5,15
    80001b94:	3a079073          	csrw	pmpcfg0,a5
    80001b98:	f14027f3          	csrr	a5,mhartid
    80001b9c:	0200c737          	lui	a4,0x200c
    80001ba0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001ba4:	0007869b          	sext.w	a3,a5
    80001ba8:	00269713          	slli	a4,a3,0x2
    80001bac:	000f4637          	lui	a2,0xf4
    80001bb0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001bb4:	00d70733          	add	a4,a4,a3
    80001bb8:	0037979b          	slliw	a5,a5,0x3
    80001bbc:	020046b7          	lui	a3,0x2004
    80001bc0:	00d787b3          	add	a5,a5,a3
    80001bc4:	00c585b3          	add	a1,a1,a2
    80001bc8:	00371693          	slli	a3,a4,0x3
    80001bcc:	00003717          	auipc	a4,0x3
    80001bd0:	c6470713          	addi	a4,a4,-924 # 80004830 <timer_scratch>
    80001bd4:	00b7b023          	sd	a1,0(a5)
    80001bd8:	00d70733          	add	a4,a4,a3
    80001bdc:	00f73c23          	sd	a5,24(a4)
    80001be0:	02c73023          	sd	a2,32(a4)
    80001be4:	34071073          	csrw	mscratch,a4
    80001be8:	00000797          	auipc	a5,0x0
    80001bec:	6e878793          	addi	a5,a5,1768 # 800022d0 <timervec>
    80001bf0:	30579073          	csrw	mtvec,a5
    80001bf4:	300027f3          	csrr	a5,mstatus
    80001bf8:	0087e793          	ori	a5,a5,8
    80001bfc:	30079073          	csrw	mstatus,a5
    80001c00:	304027f3          	csrr	a5,mie
    80001c04:	0807e793          	ori	a5,a5,128
    80001c08:	30479073          	csrw	mie,a5
    80001c0c:	f14027f3          	csrr	a5,mhartid
    80001c10:	0007879b          	sext.w	a5,a5
    80001c14:	00078213          	mv	tp,a5
    80001c18:	30200073          	mret
    80001c1c:	00813403          	ld	s0,8(sp)
    80001c20:	01010113          	addi	sp,sp,16
    80001c24:	00008067          	ret

0000000080001c28 <timerinit>:
    80001c28:	ff010113          	addi	sp,sp,-16
    80001c2c:	00813423          	sd	s0,8(sp)
    80001c30:	01010413          	addi	s0,sp,16
    80001c34:	f14027f3          	csrr	a5,mhartid
    80001c38:	0200c737          	lui	a4,0x200c
    80001c3c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001c40:	0007869b          	sext.w	a3,a5
    80001c44:	00269713          	slli	a4,a3,0x2
    80001c48:	000f4637          	lui	a2,0xf4
    80001c4c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001c50:	00d70733          	add	a4,a4,a3
    80001c54:	0037979b          	slliw	a5,a5,0x3
    80001c58:	020046b7          	lui	a3,0x2004
    80001c5c:	00d787b3          	add	a5,a5,a3
    80001c60:	00c585b3          	add	a1,a1,a2
    80001c64:	00371693          	slli	a3,a4,0x3
    80001c68:	00003717          	auipc	a4,0x3
    80001c6c:	bc870713          	addi	a4,a4,-1080 # 80004830 <timer_scratch>
    80001c70:	00b7b023          	sd	a1,0(a5)
    80001c74:	00d70733          	add	a4,a4,a3
    80001c78:	00f73c23          	sd	a5,24(a4)
    80001c7c:	02c73023          	sd	a2,32(a4)
    80001c80:	34071073          	csrw	mscratch,a4
    80001c84:	00000797          	auipc	a5,0x0
    80001c88:	64c78793          	addi	a5,a5,1612 # 800022d0 <timervec>
    80001c8c:	30579073          	csrw	mtvec,a5
    80001c90:	300027f3          	csrr	a5,mstatus
    80001c94:	0087e793          	ori	a5,a5,8
    80001c98:	30079073          	csrw	mstatus,a5
    80001c9c:	304027f3          	csrr	a5,mie
    80001ca0:	0807e793          	ori	a5,a5,128
    80001ca4:	30479073          	csrw	mie,a5
    80001ca8:	00813403          	ld	s0,8(sp)
    80001cac:	01010113          	addi	sp,sp,16
    80001cb0:	00008067          	ret

0000000080001cb4 <system_main>:
    80001cb4:	fe010113          	addi	sp,sp,-32
    80001cb8:	00813823          	sd	s0,16(sp)
    80001cbc:	00913423          	sd	s1,8(sp)
    80001cc0:	00113c23          	sd	ra,24(sp)
    80001cc4:	02010413          	addi	s0,sp,32
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	0c4080e7          	jalr	196(ra) # 80001d8c <cpuid>
    80001cd0:	00003497          	auipc	s1,0x3
    80001cd4:	b2848493          	addi	s1,s1,-1240 # 800047f8 <started>
    80001cd8:	02050263          	beqz	a0,80001cfc <system_main+0x48>
    80001cdc:	0004a783          	lw	a5,0(s1)
    80001ce0:	0007879b          	sext.w	a5,a5
    80001ce4:	fe078ce3          	beqz	a5,80001cdc <system_main+0x28>
    80001ce8:	0ff0000f          	fence
    80001cec:	00002517          	auipc	a0,0x2
    80001cf0:	3a450513          	addi	a0,a0,932 # 80004090 <bntOne+0x38>
    80001cf4:	00001097          	auipc	ra,0x1
    80001cf8:	a78080e7          	jalr	-1416(ra) # 8000276c <panic>
    80001cfc:	00001097          	auipc	ra,0x1
    80001d00:	9cc080e7          	jalr	-1588(ra) # 800026c8 <consoleinit>
    80001d04:	00001097          	auipc	ra,0x1
    80001d08:	158080e7          	jalr	344(ra) # 80002e5c <printfinit>
    80001d0c:	00002517          	auipc	a0,0x2
    80001d10:	46450513          	addi	a0,a0,1124 # 80004170 <bntOne+0x118>
    80001d14:	00001097          	auipc	ra,0x1
    80001d18:	ab4080e7          	jalr	-1356(ra) # 800027c8 <__printf>
    80001d1c:	00002517          	auipc	a0,0x2
    80001d20:	34450513          	addi	a0,a0,836 # 80004060 <bntOne+0x8>
    80001d24:	00001097          	auipc	ra,0x1
    80001d28:	aa4080e7          	jalr	-1372(ra) # 800027c8 <__printf>
    80001d2c:	00002517          	auipc	a0,0x2
    80001d30:	44450513          	addi	a0,a0,1092 # 80004170 <bntOne+0x118>
    80001d34:	00001097          	auipc	ra,0x1
    80001d38:	a94080e7          	jalr	-1388(ra) # 800027c8 <__printf>
    80001d3c:	00001097          	auipc	ra,0x1
    80001d40:	4ac080e7          	jalr	1196(ra) # 800031e8 <kinit>
    80001d44:	00000097          	auipc	ra,0x0
    80001d48:	148080e7          	jalr	328(ra) # 80001e8c <trapinit>
    80001d4c:	00000097          	auipc	ra,0x0
    80001d50:	16c080e7          	jalr	364(ra) # 80001eb8 <trapinithart>
    80001d54:	00000097          	auipc	ra,0x0
    80001d58:	5bc080e7          	jalr	1468(ra) # 80002310 <plicinit>
    80001d5c:	00000097          	auipc	ra,0x0
    80001d60:	5dc080e7          	jalr	1500(ra) # 80002338 <plicinithart>
    80001d64:	00000097          	auipc	ra,0x0
    80001d68:	078080e7          	jalr	120(ra) # 80001ddc <userinit>
    80001d6c:	0ff0000f          	fence
    80001d70:	00100793          	li	a5,1
    80001d74:	00002517          	auipc	a0,0x2
    80001d78:	30450513          	addi	a0,a0,772 # 80004078 <bntOne+0x20>
    80001d7c:	00f4a023          	sw	a5,0(s1)
    80001d80:	00001097          	auipc	ra,0x1
    80001d84:	a48080e7          	jalr	-1464(ra) # 800027c8 <__printf>
    80001d88:	0000006f          	j	80001d88 <system_main+0xd4>

0000000080001d8c <cpuid>:
    80001d8c:	ff010113          	addi	sp,sp,-16
    80001d90:	00813423          	sd	s0,8(sp)
    80001d94:	01010413          	addi	s0,sp,16
    80001d98:	00020513          	mv	a0,tp
    80001d9c:	00813403          	ld	s0,8(sp)
    80001da0:	0005051b          	sext.w	a0,a0
    80001da4:	01010113          	addi	sp,sp,16
    80001da8:	00008067          	ret

0000000080001dac <mycpu>:
    80001dac:	ff010113          	addi	sp,sp,-16
    80001db0:	00813423          	sd	s0,8(sp)
    80001db4:	01010413          	addi	s0,sp,16
    80001db8:	00020793          	mv	a5,tp
    80001dbc:	00813403          	ld	s0,8(sp)
    80001dc0:	0007879b          	sext.w	a5,a5
    80001dc4:	00779793          	slli	a5,a5,0x7
    80001dc8:	00004517          	auipc	a0,0x4
    80001dcc:	a9850513          	addi	a0,a0,-1384 # 80005860 <cpus>
    80001dd0:	00f50533          	add	a0,a0,a5
    80001dd4:	01010113          	addi	sp,sp,16
    80001dd8:	00008067          	ret

0000000080001ddc <userinit>:
    80001ddc:	ff010113          	addi	sp,sp,-16
    80001de0:	00813423          	sd	s0,8(sp)
    80001de4:	01010413          	addi	s0,sp,16
    80001de8:	00813403          	ld	s0,8(sp)
    80001dec:	01010113          	addi	sp,sp,16
    80001df0:	fffff317          	auipc	t1,0xfffff
    80001df4:	6a030067          	jr	1696(t1) # 80001490 <main>

0000000080001df8 <either_copyout>:
    80001df8:	ff010113          	addi	sp,sp,-16
    80001dfc:	00813023          	sd	s0,0(sp)
    80001e00:	00113423          	sd	ra,8(sp)
    80001e04:	01010413          	addi	s0,sp,16
    80001e08:	02051663          	bnez	a0,80001e34 <either_copyout+0x3c>
    80001e0c:	00058513          	mv	a0,a1
    80001e10:	00060593          	mv	a1,a2
    80001e14:	0006861b          	sext.w	a2,a3
    80001e18:	00002097          	auipc	ra,0x2
    80001e1c:	c5c080e7          	jalr	-932(ra) # 80003a74 <__memmove>
    80001e20:	00813083          	ld	ra,8(sp)
    80001e24:	00013403          	ld	s0,0(sp)
    80001e28:	00000513          	li	a0,0
    80001e2c:	01010113          	addi	sp,sp,16
    80001e30:	00008067          	ret
    80001e34:	00002517          	auipc	a0,0x2
    80001e38:	28450513          	addi	a0,a0,644 # 800040b8 <bntOne+0x60>
    80001e3c:	00001097          	auipc	ra,0x1
    80001e40:	930080e7          	jalr	-1744(ra) # 8000276c <panic>

0000000080001e44 <either_copyin>:
    80001e44:	ff010113          	addi	sp,sp,-16
    80001e48:	00813023          	sd	s0,0(sp)
    80001e4c:	00113423          	sd	ra,8(sp)
    80001e50:	01010413          	addi	s0,sp,16
    80001e54:	02059463          	bnez	a1,80001e7c <either_copyin+0x38>
    80001e58:	00060593          	mv	a1,a2
    80001e5c:	0006861b          	sext.w	a2,a3
    80001e60:	00002097          	auipc	ra,0x2
    80001e64:	c14080e7          	jalr	-1004(ra) # 80003a74 <__memmove>
    80001e68:	00813083          	ld	ra,8(sp)
    80001e6c:	00013403          	ld	s0,0(sp)
    80001e70:	00000513          	li	a0,0
    80001e74:	01010113          	addi	sp,sp,16
    80001e78:	00008067          	ret
    80001e7c:	00002517          	auipc	a0,0x2
    80001e80:	26450513          	addi	a0,a0,612 # 800040e0 <bntOne+0x88>
    80001e84:	00001097          	auipc	ra,0x1
    80001e88:	8e8080e7          	jalr	-1816(ra) # 8000276c <panic>

0000000080001e8c <trapinit>:
    80001e8c:	ff010113          	addi	sp,sp,-16
    80001e90:	00813423          	sd	s0,8(sp)
    80001e94:	01010413          	addi	s0,sp,16
    80001e98:	00813403          	ld	s0,8(sp)
    80001e9c:	00002597          	auipc	a1,0x2
    80001ea0:	26c58593          	addi	a1,a1,620 # 80004108 <bntOne+0xb0>
    80001ea4:	00004517          	auipc	a0,0x4
    80001ea8:	a3c50513          	addi	a0,a0,-1476 # 800058e0 <tickslock>
    80001eac:	01010113          	addi	sp,sp,16
    80001eb0:	00001317          	auipc	t1,0x1
    80001eb4:	5c830067          	jr	1480(t1) # 80003478 <initlock>

0000000080001eb8 <trapinithart>:
    80001eb8:	ff010113          	addi	sp,sp,-16
    80001ebc:	00813423          	sd	s0,8(sp)
    80001ec0:	01010413          	addi	s0,sp,16
    80001ec4:	00000797          	auipc	a5,0x0
    80001ec8:	2fc78793          	addi	a5,a5,764 # 800021c0 <kernelvec>
    80001ecc:	10579073          	csrw	stvec,a5
    80001ed0:	00813403          	ld	s0,8(sp)
    80001ed4:	01010113          	addi	sp,sp,16
    80001ed8:	00008067          	ret

0000000080001edc <usertrap>:
    80001edc:	ff010113          	addi	sp,sp,-16
    80001ee0:	00813423          	sd	s0,8(sp)
    80001ee4:	01010413          	addi	s0,sp,16
    80001ee8:	00813403          	ld	s0,8(sp)
    80001eec:	01010113          	addi	sp,sp,16
    80001ef0:	00008067          	ret

0000000080001ef4 <usertrapret>:
    80001ef4:	ff010113          	addi	sp,sp,-16
    80001ef8:	00813423          	sd	s0,8(sp)
    80001efc:	01010413          	addi	s0,sp,16
    80001f00:	00813403          	ld	s0,8(sp)
    80001f04:	01010113          	addi	sp,sp,16
    80001f08:	00008067          	ret

0000000080001f0c <kerneltrap>:
    80001f0c:	fe010113          	addi	sp,sp,-32
    80001f10:	00813823          	sd	s0,16(sp)
    80001f14:	00113c23          	sd	ra,24(sp)
    80001f18:	00913423          	sd	s1,8(sp)
    80001f1c:	02010413          	addi	s0,sp,32
    80001f20:	142025f3          	csrr	a1,scause
    80001f24:	100027f3          	csrr	a5,sstatus
    80001f28:	0027f793          	andi	a5,a5,2
    80001f2c:	10079c63          	bnez	a5,80002044 <kerneltrap+0x138>
    80001f30:	142027f3          	csrr	a5,scause
    80001f34:	0207ce63          	bltz	a5,80001f70 <kerneltrap+0x64>
    80001f38:	00002517          	auipc	a0,0x2
    80001f3c:	21850513          	addi	a0,a0,536 # 80004150 <bntOne+0xf8>
    80001f40:	00001097          	auipc	ra,0x1
    80001f44:	888080e7          	jalr	-1912(ra) # 800027c8 <__printf>
    80001f48:	141025f3          	csrr	a1,sepc
    80001f4c:	14302673          	csrr	a2,stval
    80001f50:	00002517          	auipc	a0,0x2
    80001f54:	21050513          	addi	a0,a0,528 # 80004160 <bntOne+0x108>
    80001f58:	00001097          	auipc	ra,0x1
    80001f5c:	870080e7          	jalr	-1936(ra) # 800027c8 <__printf>
    80001f60:	00002517          	auipc	a0,0x2
    80001f64:	21850513          	addi	a0,a0,536 # 80004178 <bntOne+0x120>
    80001f68:	00001097          	auipc	ra,0x1
    80001f6c:	804080e7          	jalr	-2044(ra) # 8000276c <panic>
    80001f70:	0ff7f713          	andi	a4,a5,255
    80001f74:	00900693          	li	a3,9
    80001f78:	04d70063          	beq	a4,a3,80001fb8 <kerneltrap+0xac>
    80001f7c:	fff00713          	li	a4,-1
    80001f80:	03f71713          	slli	a4,a4,0x3f
    80001f84:	00170713          	addi	a4,a4,1
    80001f88:	fae798e3          	bne	a5,a4,80001f38 <kerneltrap+0x2c>
    80001f8c:	00000097          	auipc	ra,0x0
    80001f90:	e00080e7          	jalr	-512(ra) # 80001d8c <cpuid>
    80001f94:	06050663          	beqz	a0,80002000 <kerneltrap+0xf4>
    80001f98:	144027f3          	csrr	a5,sip
    80001f9c:	ffd7f793          	andi	a5,a5,-3
    80001fa0:	14479073          	csrw	sip,a5
    80001fa4:	01813083          	ld	ra,24(sp)
    80001fa8:	01013403          	ld	s0,16(sp)
    80001fac:	00813483          	ld	s1,8(sp)
    80001fb0:	02010113          	addi	sp,sp,32
    80001fb4:	00008067          	ret
    80001fb8:	00000097          	auipc	ra,0x0
    80001fbc:	3cc080e7          	jalr	972(ra) # 80002384 <plic_claim>
    80001fc0:	00a00793          	li	a5,10
    80001fc4:	00050493          	mv	s1,a0
    80001fc8:	06f50863          	beq	a0,a5,80002038 <kerneltrap+0x12c>
    80001fcc:	fc050ce3          	beqz	a0,80001fa4 <kerneltrap+0x98>
    80001fd0:	00050593          	mv	a1,a0
    80001fd4:	00002517          	auipc	a0,0x2
    80001fd8:	15c50513          	addi	a0,a0,348 # 80004130 <bntOne+0xd8>
    80001fdc:	00000097          	auipc	ra,0x0
    80001fe0:	7ec080e7          	jalr	2028(ra) # 800027c8 <__printf>
    80001fe4:	01013403          	ld	s0,16(sp)
    80001fe8:	01813083          	ld	ra,24(sp)
    80001fec:	00048513          	mv	a0,s1
    80001ff0:	00813483          	ld	s1,8(sp)
    80001ff4:	02010113          	addi	sp,sp,32
    80001ff8:	00000317          	auipc	t1,0x0
    80001ffc:	3c430067          	jr	964(t1) # 800023bc <plic_complete>
    80002000:	00004517          	auipc	a0,0x4
    80002004:	8e050513          	addi	a0,a0,-1824 # 800058e0 <tickslock>
    80002008:	00001097          	auipc	ra,0x1
    8000200c:	494080e7          	jalr	1172(ra) # 8000349c <acquire>
    80002010:	00002717          	auipc	a4,0x2
    80002014:	7ec70713          	addi	a4,a4,2028 # 800047fc <ticks>
    80002018:	00072783          	lw	a5,0(a4)
    8000201c:	00004517          	auipc	a0,0x4
    80002020:	8c450513          	addi	a0,a0,-1852 # 800058e0 <tickslock>
    80002024:	0017879b          	addiw	a5,a5,1
    80002028:	00f72023          	sw	a5,0(a4)
    8000202c:	00001097          	auipc	ra,0x1
    80002030:	53c080e7          	jalr	1340(ra) # 80003568 <release>
    80002034:	f65ff06f          	j	80001f98 <kerneltrap+0x8c>
    80002038:	00001097          	auipc	ra,0x1
    8000203c:	098080e7          	jalr	152(ra) # 800030d0 <uartintr>
    80002040:	fa5ff06f          	j	80001fe4 <kerneltrap+0xd8>
    80002044:	00002517          	auipc	a0,0x2
    80002048:	0cc50513          	addi	a0,a0,204 # 80004110 <bntOne+0xb8>
    8000204c:	00000097          	auipc	ra,0x0
    80002050:	720080e7          	jalr	1824(ra) # 8000276c <panic>

0000000080002054 <clockintr>:
    80002054:	fe010113          	addi	sp,sp,-32
    80002058:	00813823          	sd	s0,16(sp)
    8000205c:	00913423          	sd	s1,8(sp)
    80002060:	00113c23          	sd	ra,24(sp)
    80002064:	02010413          	addi	s0,sp,32
    80002068:	00004497          	auipc	s1,0x4
    8000206c:	87848493          	addi	s1,s1,-1928 # 800058e0 <tickslock>
    80002070:	00048513          	mv	a0,s1
    80002074:	00001097          	auipc	ra,0x1
    80002078:	428080e7          	jalr	1064(ra) # 8000349c <acquire>
    8000207c:	00002717          	auipc	a4,0x2
    80002080:	78070713          	addi	a4,a4,1920 # 800047fc <ticks>
    80002084:	00072783          	lw	a5,0(a4)
    80002088:	01013403          	ld	s0,16(sp)
    8000208c:	01813083          	ld	ra,24(sp)
    80002090:	00048513          	mv	a0,s1
    80002094:	0017879b          	addiw	a5,a5,1
    80002098:	00813483          	ld	s1,8(sp)
    8000209c:	00f72023          	sw	a5,0(a4)
    800020a0:	02010113          	addi	sp,sp,32
    800020a4:	00001317          	auipc	t1,0x1
    800020a8:	4c430067          	jr	1220(t1) # 80003568 <release>

00000000800020ac <devintr>:
    800020ac:	142027f3          	csrr	a5,scause
    800020b0:	00000513          	li	a0,0
    800020b4:	0007c463          	bltz	a5,800020bc <devintr+0x10>
    800020b8:	00008067          	ret
    800020bc:	fe010113          	addi	sp,sp,-32
    800020c0:	00813823          	sd	s0,16(sp)
    800020c4:	00113c23          	sd	ra,24(sp)
    800020c8:	00913423          	sd	s1,8(sp)
    800020cc:	02010413          	addi	s0,sp,32
    800020d0:	0ff7f713          	andi	a4,a5,255
    800020d4:	00900693          	li	a3,9
    800020d8:	04d70c63          	beq	a4,a3,80002130 <devintr+0x84>
    800020dc:	fff00713          	li	a4,-1
    800020e0:	03f71713          	slli	a4,a4,0x3f
    800020e4:	00170713          	addi	a4,a4,1
    800020e8:	00e78c63          	beq	a5,a4,80002100 <devintr+0x54>
    800020ec:	01813083          	ld	ra,24(sp)
    800020f0:	01013403          	ld	s0,16(sp)
    800020f4:	00813483          	ld	s1,8(sp)
    800020f8:	02010113          	addi	sp,sp,32
    800020fc:	00008067          	ret
    80002100:	00000097          	auipc	ra,0x0
    80002104:	c8c080e7          	jalr	-884(ra) # 80001d8c <cpuid>
    80002108:	06050663          	beqz	a0,80002174 <devintr+0xc8>
    8000210c:	144027f3          	csrr	a5,sip
    80002110:	ffd7f793          	andi	a5,a5,-3
    80002114:	14479073          	csrw	sip,a5
    80002118:	01813083          	ld	ra,24(sp)
    8000211c:	01013403          	ld	s0,16(sp)
    80002120:	00813483          	ld	s1,8(sp)
    80002124:	00200513          	li	a0,2
    80002128:	02010113          	addi	sp,sp,32
    8000212c:	00008067          	ret
    80002130:	00000097          	auipc	ra,0x0
    80002134:	254080e7          	jalr	596(ra) # 80002384 <plic_claim>
    80002138:	00a00793          	li	a5,10
    8000213c:	00050493          	mv	s1,a0
    80002140:	06f50663          	beq	a0,a5,800021ac <devintr+0x100>
    80002144:	00100513          	li	a0,1
    80002148:	fa0482e3          	beqz	s1,800020ec <devintr+0x40>
    8000214c:	00048593          	mv	a1,s1
    80002150:	00002517          	auipc	a0,0x2
    80002154:	fe050513          	addi	a0,a0,-32 # 80004130 <bntOne+0xd8>
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	670080e7          	jalr	1648(ra) # 800027c8 <__printf>
    80002160:	00048513          	mv	a0,s1
    80002164:	00000097          	auipc	ra,0x0
    80002168:	258080e7          	jalr	600(ra) # 800023bc <plic_complete>
    8000216c:	00100513          	li	a0,1
    80002170:	f7dff06f          	j	800020ec <devintr+0x40>
    80002174:	00003517          	auipc	a0,0x3
    80002178:	76c50513          	addi	a0,a0,1900 # 800058e0 <tickslock>
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	320080e7          	jalr	800(ra) # 8000349c <acquire>
    80002184:	00002717          	auipc	a4,0x2
    80002188:	67870713          	addi	a4,a4,1656 # 800047fc <ticks>
    8000218c:	00072783          	lw	a5,0(a4)
    80002190:	00003517          	auipc	a0,0x3
    80002194:	75050513          	addi	a0,a0,1872 # 800058e0 <tickslock>
    80002198:	0017879b          	addiw	a5,a5,1
    8000219c:	00f72023          	sw	a5,0(a4)
    800021a0:	00001097          	auipc	ra,0x1
    800021a4:	3c8080e7          	jalr	968(ra) # 80003568 <release>
    800021a8:	f65ff06f          	j	8000210c <devintr+0x60>
    800021ac:	00001097          	auipc	ra,0x1
    800021b0:	f24080e7          	jalr	-220(ra) # 800030d0 <uartintr>
    800021b4:	fadff06f          	j	80002160 <devintr+0xb4>
	...

00000000800021c0 <kernelvec>:
    800021c0:	f0010113          	addi	sp,sp,-256
    800021c4:	00113023          	sd	ra,0(sp)
    800021c8:	00213423          	sd	sp,8(sp)
    800021cc:	00313823          	sd	gp,16(sp)
    800021d0:	00413c23          	sd	tp,24(sp)
    800021d4:	02513023          	sd	t0,32(sp)
    800021d8:	02613423          	sd	t1,40(sp)
    800021dc:	02713823          	sd	t2,48(sp)
    800021e0:	02813c23          	sd	s0,56(sp)
    800021e4:	04913023          	sd	s1,64(sp)
    800021e8:	04a13423          	sd	a0,72(sp)
    800021ec:	04b13823          	sd	a1,80(sp)
    800021f0:	04c13c23          	sd	a2,88(sp)
    800021f4:	06d13023          	sd	a3,96(sp)
    800021f8:	06e13423          	sd	a4,104(sp)
    800021fc:	06f13823          	sd	a5,112(sp)
    80002200:	07013c23          	sd	a6,120(sp)
    80002204:	09113023          	sd	a7,128(sp)
    80002208:	09213423          	sd	s2,136(sp)
    8000220c:	09313823          	sd	s3,144(sp)
    80002210:	09413c23          	sd	s4,152(sp)
    80002214:	0b513023          	sd	s5,160(sp)
    80002218:	0b613423          	sd	s6,168(sp)
    8000221c:	0b713823          	sd	s7,176(sp)
    80002220:	0b813c23          	sd	s8,184(sp)
    80002224:	0d913023          	sd	s9,192(sp)
    80002228:	0da13423          	sd	s10,200(sp)
    8000222c:	0db13823          	sd	s11,208(sp)
    80002230:	0dc13c23          	sd	t3,216(sp)
    80002234:	0fd13023          	sd	t4,224(sp)
    80002238:	0fe13423          	sd	t5,232(sp)
    8000223c:	0ff13823          	sd	t6,240(sp)
    80002240:	ccdff0ef          	jal	ra,80001f0c <kerneltrap>
    80002244:	00013083          	ld	ra,0(sp)
    80002248:	00813103          	ld	sp,8(sp)
    8000224c:	01013183          	ld	gp,16(sp)
    80002250:	02013283          	ld	t0,32(sp)
    80002254:	02813303          	ld	t1,40(sp)
    80002258:	03013383          	ld	t2,48(sp)
    8000225c:	03813403          	ld	s0,56(sp)
    80002260:	04013483          	ld	s1,64(sp)
    80002264:	04813503          	ld	a0,72(sp)
    80002268:	05013583          	ld	a1,80(sp)
    8000226c:	05813603          	ld	a2,88(sp)
    80002270:	06013683          	ld	a3,96(sp)
    80002274:	06813703          	ld	a4,104(sp)
    80002278:	07013783          	ld	a5,112(sp)
    8000227c:	07813803          	ld	a6,120(sp)
    80002280:	08013883          	ld	a7,128(sp)
    80002284:	08813903          	ld	s2,136(sp)
    80002288:	09013983          	ld	s3,144(sp)
    8000228c:	09813a03          	ld	s4,152(sp)
    80002290:	0a013a83          	ld	s5,160(sp)
    80002294:	0a813b03          	ld	s6,168(sp)
    80002298:	0b013b83          	ld	s7,176(sp)
    8000229c:	0b813c03          	ld	s8,184(sp)
    800022a0:	0c013c83          	ld	s9,192(sp)
    800022a4:	0c813d03          	ld	s10,200(sp)
    800022a8:	0d013d83          	ld	s11,208(sp)
    800022ac:	0d813e03          	ld	t3,216(sp)
    800022b0:	0e013e83          	ld	t4,224(sp)
    800022b4:	0e813f03          	ld	t5,232(sp)
    800022b8:	0f013f83          	ld	t6,240(sp)
    800022bc:	10010113          	addi	sp,sp,256
    800022c0:	10200073          	sret
    800022c4:	00000013          	nop
    800022c8:	00000013          	nop
    800022cc:	00000013          	nop

00000000800022d0 <timervec>:
    800022d0:	34051573          	csrrw	a0,mscratch,a0
    800022d4:	00b53023          	sd	a1,0(a0)
    800022d8:	00c53423          	sd	a2,8(a0)
    800022dc:	00d53823          	sd	a3,16(a0)
    800022e0:	01853583          	ld	a1,24(a0)
    800022e4:	02053603          	ld	a2,32(a0)
    800022e8:	0005b683          	ld	a3,0(a1)
    800022ec:	00c686b3          	add	a3,a3,a2
    800022f0:	00d5b023          	sd	a3,0(a1)
    800022f4:	00200593          	li	a1,2
    800022f8:	14459073          	csrw	sip,a1
    800022fc:	01053683          	ld	a3,16(a0)
    80002300:	00853603          	ld	a2,8(a0)
    80002304:	00053583          	ld	a1,0(a0)
    80002308:	34051573          	csrrw	a0,mscratch,a0
    8000230c:	30200073          	mret

0000000080002310 <plicinit>:
    80002310:	ff010113          	addi	sp,sp,-16
    80002314:	00813423          	sd	s0,8(sp)
    80002318:	01010413          	addi	s0,sp,16
    8000231c:	00813403          	ld	s0,8(sp)
    80002320:	0c0007b7          	lui	a5,0xc000
    80002324:	00100713          	li	a4,1
    80002328:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000232c:	00e7a223          	sw	a4,4(a5)
    80002330:	01010113          	addi	sp,sp,16
    80002334:	00008067          	ret

0000000080002338 <plicinithart>:
    80002338:	ff010113          	addi	sp,sp,-16
    8000233c:	00813023          	sd	s0,0(sp)
    80002340:	00113423          	sd	ra,8(sp)
    80002344:	01010413          	addi	s0,sp,16
    80002348:	00000097          	auipc	ra,0x0
    8000234c:	a44080e7          	jalr	-1468(ra) # 80001d8c <cpuid>
    80002350:	0085171b          	slliw	a4,a0,0x8
    80002354:	0c0027b7          	lui	a5,0xc002
    80002358:	00e787b3          	add	a5,a5,a4
    8000235c:	40200713          	li	a4,1026
    80002360:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002364:	00813083          	ld	ra,8(sp)
    80002368:	00013403          	ld	s0,0(sp)
    8000236c:	00d5151b          	slliw	a0,a0,0xd
    80002370:	0c2017b7          	lui	a5,0xc201
    80002374:	00a78533          	add	a0,a5,a0
    80002378:	00052023          	sw	zero,0(a0)
    8000237c:	01010113          	addi	sp,sp,16
    80002380:	00008067          	ret

0000000080002384 <plic_claim>:
    80002384:	ff010113          	addi	sp,sp,-16
    80002388:	00813023          	sd	s0,0(sp)
    8000238c:	00113423          	sd	ra,8(sp)
    80002390:	01010413          	addi	s0,sp,16
    80002394:	00000097          	auipc	ra,0x0
    80002398:	9f8080e7          	jalr	-1544(ra) # 80001d8c <cpuid>
    8000239c:	00813083          	ld	ra,8(sp)
    800023a0:	00013403          	ld	s0,0(sp)
    800023a4:	00d5151b          	slliw	a0,a0,0xd
    800023a8:	0c2017b7          	lui	a5,0xc201
    800023ac:	00a78533          	add	a0,a5,a0
    800023b0:	00452503          	lw	a0,4(a0)
    800023b4:	01010113          	addi	sp,sp,16
    800023b8:	00008067          	ret

00000000800023bc <plic_complete>:
    800023bc:	fe010113          	addi	sp,sp,-32
    800023c0:	00813823          	sd	s0,16(sp)
    800023c4:	00913423          	sd	s1,8(sp)
    800023c8:	00113c23          	sd	ra,24(sp)
    800023cc:	02010413          	addi	s0,sp,32
    800023d0:	00050493          	mv	s1,a0
    800023d4:	00000097          	auipc	ra,0x0
    800023d8:	9b8080e7          	jalr	-1608(ra) # 80001d8c <cpuid>
    800023dc:	01813083          	ld	ra,24(sp)
    800023e0:	01013403          	ld	s0,16(sp)
    800023e4:	00d5179b          	slliw	a5,a0,0xd
    800023e8:	0c201737          	lui	a4,0xc201
    800023ec:	00f707b3          	add	a5,a4,a5
    800023f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800023f4:	00813483          	ld	s1,8(sp)
    800023f8:	02010113          	addi	sp,sp,32
    800023fc:	00008067          	ret

0000000080002400 <consolewrite>:
    80002400:	fb010113          	addi	sp,sp,-80
    80002404:	04813023          	sd	s0,64(sp)
    80002408:	04113423          	sd	ra,72(sp)
    8000240c:	02913c23          	sd	s1,56(sp)
    80002410:	03213823          	sd	s2,48(sp)
    80002414:	03313423          	sd	s3,40(sp)
    80002418:	03413023          	sd	s4,32(sp)
    8000241c:	01513c23          	sd	s5,24(sp)
    80002420:	05010413          	addi	s0,sp,80
    80002424:	06c05c63          	blez	a2,8000249c <consolewrite+0x9c>
    80002428:	00060993          	mv	s3,a2
    8000242c:	00050a13          	mv	s4,a0
    80002430:	00058493          	mv	s1,a1
    80002434:	00000913          	li	s2,0
    80002438:	fff00a93          	li	s5,-1
    8000243c:	01c0006f          	j	80002458 <consolewrite+0x58>
    80002440:	fbf44503          	lbu	a0,-65(s0)
    80002444:	0019091b          	addiw	s2,s2,1
    80002448:	00148493          	addi	s1,s1,1
    8000244c:	00001097          	auipc	ra,0x1
    80002450:	a9c080e7          	jalr	-1380(ra) # 80002ee8 <uartputc>
    80002454:	03298063          	beq	s3,s2,80002474 <consolewrite+0x74>
    80002458:	00048613          	mv	a2,s1
    8000245c:	00100693          	li	a3,1
    80002460:	000a0593          	mv	a1,s4
    80002464:	fbf40513          	addi	a0,s0,-65
    80002468:	00000097          	auipc	ra,0x0
    8000246c:	9dc080e7          	jalr	-1572(ra) # 80001e44 <either_copyin>
    80002470:	fd5518e3          	bne	a0,s5,80002440 <consolewrite+0x40>
    80002474:	04813083          	ld	ra,72(sp)
    80002478:	04013403          	ld	s0,64(sp)
    8000247c:	03813483          	ld	s1,56(sp)
    80002480:	02813983          	ld	s3,40(sp)
    80002484:	02013a03          	ld	s4,32(sp)
    80002488:	01813a83          	ld	s5,24(sp)
    8000248c:	00090513          	mv	a0,s2
    80002490:	03013903          	ld	s2,48(sp)
    80002494:	05010113          	addi	sp,sp,80
    80002498:	00008067          	ret
    8000249c:	00000913          	li	s2,0
    800024a0:	fd5ff06f          	j	80002474 <consolewrite+0x74>

00000000800024a4 <consoleread>:
    800024a4:	f9010113          	addi	sp,sp,-112
    800024a8:	06813023          	sd	s0,96(sp)
    800024ac:	04913c23          	sd	s1,88(sp)
    800024b0:	05213823          	sd	s2,80(sp)
    800024b4:	05313423          	sd	s3,72(sp)
    800024b8:	05413023          	sd	s4,64(sp)
    800024bc:	03513c23          	sd	s5,56(sp)
    800024c0:	03613823          	sd	s6,48(sp)
    800024c4:	03713423          	sd	s7,40(sp)
    800024c8:	03813023          	sd	s8,32(sp)
    800024cc:	06113423          	sd	ra,104(sp)
    800024d0:	01913c23          	sd	s9,24(sp)
    800024d4:	07010413          	addi	s0,sp,112
    800024d8:	00060b93          	mv	s7,a2
    800024dc:	00050913          	mv	s2,a0
    800024e0:	00058c13          	mv	s8,a1
    800024e4:	00060b1b          	sext.w	s6,a2
    800024e8:	00003497          	auipc	s1,0x3
    800024ec:	42048493          	addi	s1,s1,1056 # 80005908 <cons>
    800024f0:	00400993          	li	s3,4
    800024f4:	fff00a13          	li	s4,-1
    800024f8:	00a00a93          	li	s5,10
    800024fc:	05705e63          	blez	s7,80002558 <consoleread+0xb4>
    80002500:	09c4a703          	lw	a4,156(s1)
    80002504:	0984a783          	lw	a5,152(s1)
    80002508:	0007071b          	sext.w	a4,a4
    8000250c:	08e78463          	beq	a5,a4,80002594 <consoleread+0xf0>
    80002510:	07f7f713          	andi	a4,a5,127
    80002514:	00e48733          	add	a4,s1,a4
    80002518:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000251c:	0017869b          	addiw	a3,a5,1
    80002520:	08d4ac23          	sw	a3,152(s1)
    80002524:	00070c9b          	sext.w	s9,a4
    80002528:	0b370663          	beq	a4,s3,800025d4 <consoleread+0x130>
    8000252c:	00100693          	li	a3,1
    80002530:	f9f40613          	addi	a2,s0,-97
    80002534:	000c0593          	mv	a1,s8
    80002538:	00090513          	mv	a0,s2
    8000253c:	f8e40fa3          	sb	a4,-97(s0)
    80002540:	00000097          	auipc	ra,0x0
    80002544:	8b8080e7          	jalr	-1864(ra) # 80001df8 <either_copyout>
    80002548:	01450863          	beq	a0,s4,80002558 <consoleread+0xb4>
    8000254c:	001c0c13          	addi	s8,s8,1
    80002550:	fffb8b9b          	addiw	s7,s7,-1
    80002554:	fb5c94e3          	bne	s9,s5,800024fc <consoleread+0x58>
    80002558:	000b851b          	sext.w	a0,s7
    8000255c:	06813083          	ld	ra,104(sp)
    80002560:	06013403          	ld	s0,96(sp)
    80002564:	05813483          	ld	s1,88(sp)
    80002568:	05013903          	ld	s2,80(sp)
    8000256c:	04813983          	ld	s3,72(sp)
    80002570:	04013a03          	ld	s4,64(sp)
    80002574:	03813a83          	ld	s5,56(sp)
    80002578:	02813b83          	ld	s7,40(sp)
    8000257c:	02013c03          	ld	s8,32(sp)
    80002580:	01813c83          	ld	s9,24(sp)
    80002584:	40ab053b          	subw	a0,s6,a0
    80002588:	03013b03          	ld	s6,48(sp)
    8000258c:	07010113          	addi	sp,sp,112
    80002590:	00008067          	ret
    80002594:	00001097          	auipc	ra,0x1
    80002598:	1d8080e7          	jalr	472(ra) # 8000376c <push_on>
    8000259c:	0984a703          	lw	a4,152(s1)
    800025a0:	09c4a783          	lw	a5,156(s1)
    800025a4:	0007879b          	sext.w	a5,a5
    800025a8:	fef70ce3          	beq	a4,a5,800025a0 <consoleread+0xfc>
    800025ac:	00001097          	auipc	ra,0x1
    800025b0:	234080e7          	jalr	564(ra) # 800037e0 <pop_on>
    800025b4:	0984a783          	lw	a5,152(s1)
    800025b8:	07f7f713          	andi	a4,a5,127
    800025bc:	00e48733          	add	a4,s1,a4
    800025c0:	01874703          	lbu	a4,24(a4)
    800025c4:	0017869b          	addiw	a3,a5,1
    800025c8:	08d4ac23          	sw	a3,152(s1)
    800025cc:	00070c9b          	sext.w	s9,a4
    800025d0:	f5371ee3          	bne	a4,s3,8000252c <consoleread+0x88>
    800025d4:	000b851b          	sext.w	a0,s7
    800025d8:	f96bf2e3          	bgeu	s7,s6,8000255c <consoleread+0xb8>
    800025dc:	08f4ac23          	sw	a5,152(s1)
    800025e0:	f7dff06f          	j	8000255c <consoleread+0xb8>

00000000800025e4 <consputc>:
    800025e4:	10000793          	li	a5,256
    800025e8:	00f50663          	beq	a0,a5,800025f4 <consputc+0x10>
    800025ec:	00001317          	auipc	t1,0x1
    800025f0:	9f430067          	jr	-1548(t1) # 80002fe0 <uartputc_sync>
    800025f4:	ff010113          	addi	sp,sp,-16
    800025f8:	00113423          	sd	ra,8(sp)
    800025fc:	00813023          	sd	s0,0(sp)
    80002600:	01010413          	addi	s0,sp,16
    80002604:	00800513          	li	a0,8
    80002608:	00001097          	auipc	ra,0x1
    8000260c:	9d8080e7          	jalr	-1576(ra) # 80002fe0 <uartputc_sync>
    80002610:	02000513          	li	a0,32
    80002614:	00001097          	auipc	ra,0x1
    80002618:	9cc080e7          	jalr	-1588(ra) # 80002fe0 <uartputc_sync>
    8000261c:	00013403          	ld	s0,0(sp)
    80002620:	00813083          	ld	ra,8(sp)
    80002624:	00800513          	li	a0,8
    80002628:	01010113          	addi	sp,sp,16
    8000262c:	00001317          	auipc	t1,0x1
    80002630:	9b430067          	jr	-1612(t1) # 80002fe0 <uartputc_sync>

0000000080002634 <consoleintr>:
    80002634:	fe010113          	addi	sp,sp,-32
    80002638:	00813823          	sd	s0,16(sp)
    8000263c:	00913423          	sd	s1,8(sp)
    80002640:	01213023          	sd	s2,0(sp)
    80002644:	00113c23          	sd	ra,24(sp)
    80002648:	02010413          	addi	s0,sp,32
    8000264c:	00003917          	auipc	s2,0x3
    80002650:	2bc90913          	addi	s2,s2,700 # 80005908 <cons>
    80002654:	00050493          	mv	s1,a0
    80002658:	00090513          	mv	a0,s2
    8000265c:	00001097          	auipc	ra,0x1
    80002660:	e40080e7          	jalr	-448(ra) # 8000349c <acquire>
    80002664:	02048c63          	beqz	s1,8000269c <consoleintr+0x68>
    80002668:	0a092783          	lw	a5,160(s2)
    8000266c:	09892703          	lw	a4,152(s2)
    80002670:	07f00693          	li	a3,127
    80002674:	40e7873b          	subw	a4,a5,a4
    80002678:	02e6e263          	bltu	a3,a4,8000269c <consoleintr+0x68>
    8000267c:	00d00713          	li	a4,13
    80002680:	04e48063          	beq	s1,a4,800026c0 <consoleintr+0x8c>
    80002684:	07f7f713          	andi	a4,a5,127
    80002688:	00e90733          	add	a4,s2,a4
    8000268c:	0017879b          	addiw	a5,a5,1
    80002690:	0af92023          	sw	a5,160(s2)
    80002694:	00970c23          	sb	s1,24(a4)
    80002698:	08f92e23          	sw	a5,156(s2)
    8000269c:	01013403          	ld	s0,16(sp)
    800026a0:	01813083          	ld	ra,24(sp)
    800026a4:	00813483          	ld	s1,8(sp)
    800026a8:	00013903          	ld	s2,0(sp)
    800026ac:	00003517          	auipc	a0,0x3
    800026b0:	25c50513          	addi	a0,a0,604 # 80005908 <cons>
    800026b4:	02010113          	addi	sp,sp,32
    800026b8:	00001317          	auipc	t1,0x1
    800026bc:	eb030067          	jr	-336(t1) # 80003568 <release>
    800026c0:	00a00493          	li	s1,10
    800026c4:	fc1ff06f          	j	80002684 <consoleintr+0x50>

00000000800026c8 <consoleinit>:
    800026c8:	fe010113          	addi	sp,sp,-32
    800026cc:	00113c23          	sd	ra,24(sp)
    800026d0:	00813823          	sd	s0,16(sp)
    800026d4:	00913423          	sd	s1,8(sp)
    800026d8:	02010413          	addi	s0,sp,32
    800026dc:	00003497          	auipc	s1,0x3
    800026e0:	22c48493          	addi	s1,s1,556 # 80005908 <cons>
    800026e4:	00048513          	mv	a0,s1
    800026e8:	00002597          	auipc	a1,0x2
    800026ec:	aa058593          	addi	a1,a1,-1376 # 80004188 <bntOne+0x130>
    800026f0:	00001097          	auipc	ra,0x1
    800026f4:	d88080e7          	jalr	-632(ra) # 80003478 <initlock>
    800026f8:	00000097          	auipc	ra,0x0
    800026fc:	7ac080e7          	jalr	1964(ra) # 80002ea4 <uartinit>
    80002700:	01813083          	ld	ra,24(sp)
    80002704:	01013403          	ld	s0,16(sp)
    80002708:	00000797          	auipc	a5,0x0
    8000270c:	d9c78793          	addi	a5,a5,-612 # 800024a4 <consoleread>
    80002710:	0af4bc23          	sd	a5,184(s1)
    80002714:	00000797          	auipc	a5,0x0
    80002718:	cec78793          	addi	a5,a5,-788 # 80002400 <consolewrite>
    8000271c:	0cf4b023          	sd	a5,192(s1)
    80002720:	00813483          	ld	s1,8(sp)
    80002724:	02010113          	addi	sp,sp,32
    80002728:	00008067          	ret

000000008000272c <console_read>:
    8000272c:	ff010113          	addi	sp,sp,-16
    80002730:	00813423          	sd	s0,8(sp)
    80002734:	01010413          	addi	s0,sp,16
    80002738:	00813403          	ld	s0,8(sp)
    8000273c:	00003317          	auipc	t1,0x3
    80002740:	28433303          	ld	t1,644(t1) # 800059c0 <devsw+0x10>
    80002744:	01010113          	addi	sp,sp,16
    80002748:	00030067          	jr	t1

000000008000274c <console_write>:
    8000274c:	ff010113          	addi	sp,sp,-16
    80002750:	00813423          	sd	s0,8(sp)
    80002754:	01010413          	addi	s0,sp,16
    80002758:	00813403          	ld	s0,8(sp)
    8000275c:	00003317          	auipc	t1,0x3
    80002760:	26c33303          	ld	t1,620(t1) # 800059c8 <devsw+0x18>
    80002764:	01010113          	addi	sp,sp,16
    80002768:	00030067          	jr	t1

000000008000276c <panic>:
    8000276c:	fe010113          	addi	sp,sp,-32
    80002770:	00113c23          	sd	ra,24(sp)
    80002774:	00813823          	sd	s0,16(sp)
    80002778:	00913423          	sd	s1,8(sp)
    8000277c:	02010413          	addi	s0,sp,32
    80002780:	00050493          	mv	s1,a0
    80002784:	00002517          	auipc	a0,0x2
    80002788:	a0c50513          	addi	a0,a0,-1524 # 80004190 <bntOne+0x138>
    8000278c:	00003797          	auipc	a5,0x3
    80002790:	2c07ae23          	sw	zero,732(a5) # 80005a68 <pr+0x18>
    80002794:	00000097          	auipc	ra,0x0
    80002798:	034080e7          	jalr	52(ra) # 800027c8 <__printf>
    8000279c:	00048513          	mv	a0,s1
    800027a0:	00000097          	auipc	ra,0x0
    800027a4:	028080e7          	jalr	40(ra) # 800027c8 <__printf>
    800027a8:	00002517          	auipc	a0,0x2
    800027ac:	9c850513          	addi	a0,a0,-1592 # 80004170 <bntOne+0x118>
    800027b0:	00000097          	auipc	ra,0x0
    800027b4:	018080e7          	jalr	24(ra) # 800027c8 <__printf>
    800027b8:	00100793          	li	a5,1
    800027bc:	00002717          	auipc	a4,0x2
    800027c0:	04f72223          	sw	a5,68(a4) # 80004800 <panicked>
    800027c4:	0000006f          	j	800027c4 <panic+0x58>

00000000800027c8 <__printf>:
    800027c8:	f3010113          	addi	sp,sp,-208
    800027cc:	08813023          	sd	s0,128(sp)
    800027d0:	07313423          	sd	s3,104(sp)
    800027d4:	09010413          	addi	s0,sp,144
    800027d8:	05813023          	sd	s8,64(sp)
    800027dc:	08113423          	sd	ra,136(sp)
    800027e0:	06913c23          	sd	s1,120(sp)
    800027e4:	07213823          	sd	s2,112(sp)
    800027e8:	07413023          	sd	s4,96(sp)
    800027ec:	05513c23          	sd	s5,88(sp)
    800027f0:	05613823          	sd	s6,80(sp)
    800027f4:	05713423          	sd	s7,72(sp)
    800027f8:	03913c23          	sd	s9,56(sp)
    800027fc:	03a13823          	sd	s10,48(sp)
    80002800:	03b13423          	sd	s11,40(sp)
    80002804:	00003317          	auipc	t1,0x3
    80002808:	24c30313          	addi	t1,t1,588 # 80005a50 <pr>
    8000280c:	01832c03          	lw	s8,24(t1)
    80002810:	00b43423          	sd	a1,8(s0)
    80002814:	00c43823          	sd	a2,16(s0)
    80002818:	00d43c23          	sd	a3,24(s0)
    8000281c:	02e43023          	sd	a4,32(s0)
    80002820:	02f43423          	sd	a5,40(s0)
    80002824:	03043823          	sd	a6,48(s0)
    80002828:	03143c23          	sd	a7,56(s0)
    8000282c:	00050993          	mv	s3,a0
    80002830:	4a0c1663          	bnez	s8,80002cdc <__printf+0x514>
    80002834:	60098c63          	beqz	s3,80002e4c <__printf+0x684>
    80002838:	0009c503          	lbu	a0,0(s3)
    8000283c:	00840793          	addi	a5,s0,8
    80002840:	f6f43c23          	sd	a5,-136(s0)
    80002844:	00000493          	li	s1,0
    80002848:	22050063          	beqz	a0,80002a68 <__printf+0x2a0>
    8000284c:	00002a37          	lui	s4,0x2
    80002850:	00018ab7          	lui	s5,0x18
    80002854:	000f4b37          	lui	s6,0xf4
    80002858:	00989bb7          	lui	s7,0x989
    8000285c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002860:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002864:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002868:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000286c:	00148c9b          	addiw	s9,s1,1
    80002870:	02500793          	li	a5,37
    80002874:	01998933          	add	s2,s3,s9
    80002878:	38f51263          	bne	a0,a5,80002bfc <__printf+0x434>
    8000287c:	00094783          	lbu	a5,0(s2)
    80002880:	00078c9b          	sext.w	s9,a5
    80002884:	1e078263          	beqz	a5,80002a68 <__printf+0x2a0>
    80002888:	0024849b          	addiw	s1,s1,2
    8000288c:	07000713          	li	a4,112
    80002890:	00998933          	add	s2,s3,s1
    80002894:	38e78a63          	beq	a5,a4,80002c28 <__printf+0x460>
    80002898:	20f76863          	bltu	a4,a5,80002aa8 <__printf+0x2e0>
    8000289c:	42a78863          	beq	a5,a0,80002ccc <__printf+0x504>
    800028a0:	06400713          	li	a4,100
    800028a4:	40e79663          	bne	a5,a4,80002cb0 <__printf+0x4e8>
    800028a8:	f7843783          	ld	a5,-136(s0)
    800028ac:	0007a603          	lw	a2,0(a5)
    800028b0:	00878793          	addi	a5,a5,8
    800028b4:	f6f43c23          	sd	a5,-136(s0)
    800028b8:	42064a63          	bltz	a2,80002cec <__printf+0x524>
    800028bc:	00a00713          	li	a4,10
    800028c0:	02e677bb          	remuw	a5,a2,a4
    800028c4:	00002d97          	auipc	s11,0x2
    800028c8:	8f4d8d93          	addi	s11,s11,-1804 # 800041b8 <digits>
    800028cc:	00900593          	li	a1,9
    800028d0:	0006051b          	sext.w	a0,a2
    800028d4:	00000c93          	li	s9,0
    800028d8:	02079793          	slli	a5,a5,0x20
    800028dc:	0207d793          	srli	a5,a5,0x20
    800028e0:	00fd87b3          	add	a5,s11,a5
    800028e4:	0007c783          	lbu	a5,0(a5)
    800028e8:	02e656bb          	divuw	a3,a2,a4
    800028ec:	f8f40023          	sb	a5,-128(s0)
    800028f0:	14c5d863          	bge	a1,a2,80002a40 <__printf+0x278>
    800028f4:	06300593          	li	a1,99
    800028f8:	00100c93          	li	s9,1
    800028fc:	02e6f7bb          	remuw	a5,a3,a4
    80002900:	02079793          	slli	a5,a5,0x20
    80002904:	0207d793          	srli	a5,a5,0x20
    80002908:	00fd87b3          	add	a5,s11,a5
    8000290c:	0007c783          	lbu	a5,0(a5)
    80002910:	02e6d73b          	divuw	a4,a3,a4
    80002914:	f8f400a3          	sb	a5,-127(s0)
    80002918:	12a5f463          	bgeu	a1,a0,80002a40 <__printf+0x278>
    8000291c:	00a00693          	li	a3,10
    80002920:	00900593          	li	a1,9
    80002924:	02d777bb          	remuw	a5,a4,a3
    80002928:	02079793          	slli	a5,a5,0x20
    8000292c:	0207d793          	srli	a5,a5,0x20
    80002930:	00fd87b3          	add	a5,s11,a5
    80002934:	0007c503          	lbu	a0,0(a5)
    80002938:	02d757bb          	divuw	a5,a4,a3
    8000293c:	f8a40123          	sb	a0,-126(s0)
    80002940:	48e5f263          	bgeu	a1,a4,80002dc4 <__printf+0x5fc>
    80002944:	06300513          	li	a0,99
    80002948:	02d7f5bb          	remuw	a1,a5,a3
    8000294c:	02059593          	slli	a1,a1,0x20
    80002950:	0205d593          	srli	a1,a1,0x20
    80002954:	00bd85b3          	add	a1,s11,a1
    80002958:	0005c583          	lbu	a1,0(a1)
    8000295c:	02d7d7bb          	divuw	a5,a5,a3
    80002960:	f8b401a3          	sb	a1,-125(s0)
    80002964:	48e57263          	bgeu	a0,a4,80002de8 <__printf+0x620>
    80002968:	3e700513          	li	a0,999
    8000296c:	02d7f5bb          	remuw	a1,a5,a3
    80002970:	02059593          	slli	a1,a1,0x20
    80002974:	0205d593          	srli	a1,a1,0x20
    80002978:	00bd85b3          	add	a1,s11,a1
    8000297c:	0005c583          	lbu	a1,0(a1)
    80002980:	02d7d7bb          	divuw	a5,a5,a3
    80002984:	f8b40223          	sb	a1,-124(s0)
    80002988:	46e57663          	bgeu	a0,a4,80002df4 <__printf+0x62c>
    8000298c:	02d7f5bb          	remuw	a1,a5,a3
    80002990:	02059593          	slli	a1,a1,0x20
    80002994:	0205d593          	srli	a1,a1,0x20
    80002998:	00bd85b3          	add	a1,s11,a1
    8000299c:	0005c583          	lbu	a1,0(a1)
    800029a0:	02d7d7bb          	divuw	a5,a5,a3
    800029a4:	f8b402a3          	sb	a1,-123(s0)
    800029a8:	46ea7863          	bgeu	s4,a4,80002e18 <__printf+0x650>
    800029ac:	02d7f5bb          	remuw	a1,a5,a3
    800029b0:	02059593          	slli	a1,a1,0x20
    800029b4:	0205d593          	srli	a1,a1,0x20
    800029b8:	00bd85b3          	add	a1,s11,a1
    800029bc:	0005c583          	lbu	a1,0(a1)
    800029c0:	02d7d7bb          	divuw	a5,a5,a3
    800029c4:	f8b40323          	sb	a1,-122(s0)
    800029c8:	3eeaf863          	bgeu	s5,a4,80002db8 <__printf+0x5f0>
    800029cc:	02d7f5bb          	remuw	a1,a5,a3
    800029d0:	02059593          	slli	a1,a1,0x20
    800029d4:	0205d593          	srli	a1,a1,0x20
    800029d8:	00bd85b3          	add	a1,s11,a1
    800029dc:	0005c583          	lbu	a1,0(a1)
    800029e0:	02d7d7bb          	divuw	a5,a5,a3
    800029e4:	f8b403a3          	sb	a1,-121(s0)
    800029e8:	42eb7e63          	bgeu	s6,a4,80002e24 <__printf+0x65c>
    800029ec:	02d7f5bb          	remuw	a1,a5,a3
    800029f0:	02059593          	slli	a1,a1,0x20
    800029f4:	0205d593          	srli	a1,a1,0x20
    800029f8:	00bd85b3          	add	a1,s11,a1
    800029fc:	0005c583          	lbu	a1,0(a1)
    80002a00:	02d7d7bb          	divuw	a5,a5,a3
    80002a04:	f8b40423          	sb	a1,-120(s0)
    80002a08:	42ebfc63          	bgeu	s7,a4,80002e40 <__printf+0x678>
    80002a0c:	02079793          	slli	a5,a5,0x20
    80002a10:	0207d793          	srli	a5,a5,0x20
    80002a14:	00fd8db3          	add	s11,s11,a5
    80002a18:	000dc703          	lbu	a4,0(s11)
    80002a1c:	00a00793          	li	a5,10
    80002a20:	00900c93          	li	s9,9
    80002a24:	f8e404a3          	sb	a4,-119(s0)
    80002a28:	00065c63          	bgez	a2,80002a40 <__printf+0x278>
    80002a2c:	f9040713          	addi	a4,s0,-112
    80002a30:	00f70733          	add	a4,a4,a5
    80002a34:	02d00693          	li	a3,45
    80002a38:	fed70823          	sb	a3,-16(a4)
    80002a3c:	00078c93          	mv	s9,a5
    80002a40:	f8040793          	addi	a5,s0,-128
    80002a44:	01978cb3          	add	s9,a5,s9
    80002a48:	f7f40d13          	addi	s10,s0,-129
    80002a4c:	000cc503          	lbu	a0,0(s9)
    80002a50:	fffc8c93          	addi	s9,s9,-1
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	b90080e7          	jalr	-1136(ra) # 800025e4 <consputc>
    80002a5c:	ffac98e3          	bne	s9,s10,80002a4c <__printf+0x284>
    80002a60:	00094503          	lbu	a0,0(s2)
    80002a64:	e00514e3          	bnez	a0,8000286c <__printf+0xa4>
    80002a68:	1a0c1663          	bnez	s8,80002c14 <__printf+0x44c>
    80002a6c:	08813083          	ld	ra,136(sp)
    80002a70:	08013403          	ld	s0,128(sp)
    80002a74:	07813483          	ld	s1,120(sp)
    80002a78:	07013903          	ld	s2,112(sp)
    80002a7c:	06813983          	ld	s3,104(sp)
    80002a80:	06013a03          	ld	s4,96(sp)
    80002a84:	05813a83          	ld	s5,88(sp)
    80002a88:	05013b03          	ld	s6,80(sp)
    80002a8c:	04813b83          	ld	s7,72(sp)
    80002a90:	04013c03          	ld	s8,64(sp)
    80002a94:	03813c83          	ld	s9,56(sp)
    80002a98:	03013d03          	ld	s10,48(sp)
    80002a9c:	02813d83          	ld	s11,40(sp)
    80002aa0:	0d010113          	addi	sp,sp,208
    80002aa4:	00008067          	ret
    80002aa8:	07300713          	li	a4,115
    80002aac:	1ce78a63          	beq	a5,a4,80002c80 <__printf+0x4b8>
    80002ab0:	07800713          	li	a4,120
    80002ab4:	1ee79e63          	bne	a5,a4,80002cb0 <__printf+0x4e8>
    80002ab8:	f7843783          	ld	a5,-136(s0)
    80002abc:	0007a703          	lw	a4,0(a5)
    80002ac0:	00878793          	addi	a5,a5,8
    80002ac4:	f6f43c23          	sd	a5,-136(s0)
    80002ac8:	28074263          	bltz	a4,80002d4c <__printf+0x584>
    80002acc:	00001d97          	auipc	s11,0x1
    80002ad0:	6ecd8d93          	addi	s11,s11,1772 # 800041b8 <digits>
    80002ad4:	00f77793          	andi	a5,a4,15
    80002ad8:	00fd87b3          	add	a5,s11,a5
    80002adc:	0007c683          	lbu	a3,0(a5)
    80002ae0:	00f00613          	li	a2,15
    80002ae4:	0007079b          	sext.w	a5,a4
    80002ae8:	f8d40023          	sb	a3,-128(s0)
    80002aec:	0047559b          	srliw	a1,a4,0x4
    80002af0:	0047569b          	srliw	a3,a4,0x4
    80002af4:	00000c93          	li	s9,0
    80002af8:	0ee65063          	bge	a2,a4,80002bd8 <__printf+0x410>
    80002afc:	00f6f693          	andi	a3,a3,15
    80002b00:	00dd86b3          	add	a3,s11,a3
    80002b04:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002b08:	0087d79b          	srliw	a5,a5,0x8
    80002b0c:	00100c93          	li	s9,1
    80002b10:	f8d400a3          	sb	a3,-127(s0)
    80002b14:	0cb67263          	bgeu	a2,a1,80002bd8 <__printf+0x410>
    80002b18:	00f7f693          	andi	a3,a5,15
    80002b1c:	00dd86b3          	add	a3,s11,a3
    80002b20:	0006c583          	lbu	a1,0(a3)
    80002b24:	00f00613          	li	a2,15
    80002b28:	0047d69b          	srliw	a3,a5,0x4
    80002b2c:	f8b40123          	sb	a1,-126(s0)
    80002b30:	0047d593          	srli	a1,a5,0x4
    80002b34:	28f67e63          	bgeu	a2,a5,80002dd0 <__printf+0x608>
    80002b38:	00f6f693          	andi	a3,a3,15
    80002b3c:	00dd86b3          	add	a3,s11,a3
    80002b40:	0006c503          	lbu	a0,0(a3)
    80002b44:	0087d813          	srli	a6,a5,0x8
    80002b48:	0087d69b          	srliw	a3,a5,0x8
    80002b4c:	f8a401a3          	sb	a0,-125(s0)
    80002b50:	28b67663          	bgeu	a2,a1,80002ddc <__printf+0x614>
    80002b54:	00f6f693          	andi	a3,a3,15
    80002b58:	00dd86b3          	add	a3,s11,a3
    80002b5c:	0006c583          	lbu	a1,0(a3)
    80002b60:	00c7d513          	srli	a0,a5,0xc
    80002b64:	00c7d69b          	srliw	a3,a5,0xc
    80002b68:	f8b40223          	sb	a1,-124(s0)
    80002b6c:	29067a63          	bgeu	a2,a6,80002e00 <__printf+0x638>
    80002b70:	00f6f693          	andi	a3,a3,15
    80002b74:	00dd86b3          	add	a3,s11,a3
    80002b78:	0006c583          	lbu	a1,0(a3)
    80002b7c:	0107d813          	srli	a6,a5,0x10
    80002b80:	0107d69b          	srliw	a3,a5,0x10
    80002b84:	f8b402a3          	sb	a1,-123(s0)
    80002b88:	28a67263          	bgeu	a2,a0,80002e0c <__printf+0x644>
    80002b8c:	00f6f693          	andi	a3,a3,15
    80002b90:	00dd86b3          	add	a3,s11,a3
    80002b94:	0006c683          	lbu	a3,0(a3)
    80002b98:	0147d79b          	srliw	a5,a5,0x14
    80002b9c:	f8d40323          	sb	a3,-122(s0)
    80002ba0:	21067663          	bgeu	a2,a6,80002dac <__printf+0x5e4>
    80002ba4:	02079793          	slli	a5,a5,0x20
    80002ba8:	0207d793          	srli	a5,a5,0x20
    80002bac:	00fd8db3          	add	s11,s11,a5
    80002bb0:	000dc683          	lbu	a3,0(s11)
    80002bb4:	00800793          	li	a5,8
    80002bb8:	00700c93          	li	s9,7
    80002bbc:	f8d403a3          	sb	a3,-121(s0)
    80002bc0:	00075c63          	bgez	a4,80002bd8 <__printf+0x410>
    80002bc4:	f9040713          	addi	a4,s0,-112
    80002bc8:	00f70733          	add	a4,a4,a5
    80002bcc:	02d00693          	li	a3,45
    80002bd0:	fed70823          	sb	a3,-16(a4)
    80002bd4:	00078c93          	mv	s9,a5
    80002bd8:	f8040793          	addi	a5,s0,-128
    80002bdc:	01978cb3          	add	s9,a5,s9
    80002be0:	f7f40d13          	addi	s10,s0,-129
    80002be4:	000cc503          	lbu	a0,0(s9)
    80002be8:	fffc8c93          	addi	s9,s9,-1
    80002bec:	00000097          	auipc	ra,0x0
    80002bf0:	9f8080e7          	jalr	-1544(ra) # 800025e4 <consputc>
    80002bf4:	ff9d18e3          	bne	s10,s9,80002be4 <__printf+0x41c>
    80002bf8:	0100006f          	j	80002c08 <__printf+0x440>
    80002bfc:	00000097          	auipc	ra,0x0
    80002c00:	9e8080e7          	jalr	-1560(ra) # 800025e4 <consputc>
    80002c04:	000c8493          	mv	s1,s9
    80002c08:	00094503          	lbu	a0,0(s2)
    80002c0c:	c60510e3          	bnez	a0,8000286c <__printf+0xa4>
    80002c10:	e40c0ee3          	beqz	s8,80002a6c <__printf+0x2a4>
    80002c14:	00003517          	auipc	a0,0x3
    80002c18:	e3c50513          	addi	a0,a0,-452 # 80005a50 <pr>
    80002c1c:	00001097          	auipc	ra,0x1
    80002c20:	94c080e7          	jalr	-1716(ra) # 80003568 <release>
    80002c24:	e49ff06f          	j	80002a6c <__printf+0x2a4>
    80002c28:	f7843783          	ld	a5,-136(s0)
    80002c2c:	03000513          	li	a0,48
    80002c30:	01000d13          	li	s10,16
    80002c34:	00878713          	addi	a4,a5,8
    80002c38:	0007bc83          	ld	s9,0(a5)
    80002c3c:	f6e43c23          	sd	a4,-136(s0)
    80002c40:	00000097          	auipc	ra,0x0
    80002c44:	9a4080e7          	jalr	-1628(ra) # 800025e4 <consputc>
    80002c48:	07800513          	li	a0,120
    80002c4c:	00000097          	auipc	ra,0x0
    80002c50:	998080e7          	jalr	-1640(ra) # 800025e4 <consputc>
    80002c54:	00001d97          	auipc	s11,0x1
    80002c58:	564d8d93          	addi	s11,s11,1380 # 800041b8 <digits>
    80002c5c:	03ccd793          	srli	a5,s9,0x3c
    80002c60:	00fd87b3          	add	a5,s11,a5
    80002c64:	0007c503          	lbu	a0,0(a5)
    80002c68:	fffd0d1b          	addiw	s10,s10,-1
    80002c6c:	004c9c93          	slli	s9,s9,0x4
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	974080e7          	jalr	-1676(ra) # 800025e4 <consputc>
    80002c78:	fe0d12e3          	bnez	s10,80002c5c <__printf+0x494>
    80002c7c:	f8dff06f          	j	80002c08 <__printf+0x440>
    80002c80:	f7843783          	ld	a5,-136(s0)
    80002c84:	0007bc83          	ld	s9,0(a5)
    80002c88:	00878793          	addi	a5,a5,8
    80002c8c:	f6f43c23          	sd	a5,-136(s0)
    80002c90:	000c9a63          	bnez	s9,80002ca4 <__printf+0x4dc>
    80002c94:	1080006f          	j	80002d9c <__printf+0x5d4>
    80002c98:	001c8c93          	addi	s9,s9,1
    80002c9c:	00000097          	auipc	ra,0x0
    80002ca0:	948080e7          	jalr	-1720(ra) # 800025e4 <consputc>
    80002ca4:	000cc503          	lbu	a0,0(s9)
    80002ca8:	fe0518e3          	bnez	a0,80002c98 <__printf+0x4d0>
    80002cac:	f5dff06f          	j	80002c08 <__printf+0x440>
    80002cb0:	02500513          	li	a0,37
    80002cb4:	00000097          	auipc	ra,0x0
    80002cb8:	930080e7          	jalr	-1744(ra) # 800025e4 <consputc>
    80002cbc:	000c8513          	mv	a0,s9
    80002cc0:	00000097          	auipc	ra,0x0
    80002cc4:	924080e7          	jalr	-1756(ra) # 800025e4 <consputc>
    80002cc8:	f41ff06f          	j	80002c08 <__printf+0x440>
    80002ccc:	02500513          	li	a0,37
    80002cd0:	00000097          	auipc	ra,0x0
    80002cd4:	914080e7          	jalr	-1772(ra) # 800025e4 <consputc>
    80002cd8:	f31ff06f          	j	80002c08 <__printf+0x440>
    80002cdc:	00030513          	mv	a0,t1
    80002ce0:	00000097          	auipc	ra,0x0
    80002ce4:	7bc080e7          	jalr	1980(ra) # 8000349c <acquire>
    80002ce8:	b4dff06f          	j	80002834 <__printf+0x6c>
    80002cec:	40c0053b          	negw	a0,a2
    80002cf0:	00a00713          	li	a4,10
    80002cf4:	02e576bb          	remuw	a3,a0,a4
    80002cf8:	00001d97          	auipc	s11,0x1
    80002cfc:	4c0d8d93          	addi	s11,s11,1216 # 800041b8 <digits>
    80002d00:	ff700593          	li	a1,-9
    80002d04:	02069693          	slli	a3,a3,0x20
    80002d08:	0206d693          	srli	a3,a3,0x20
    80002d0c:	00dd86b3          	add	a3,s11,a3
    80002d10:	0006c683          	lbu	a3,0(a3)
    80002d14:	02e557bb          	divuw	a5,a0,a4
    80002d18:	f8d40023          	sb	a3,-128(s0)
    80002d1c:	10b65e63          	bge	a2,a1,80002e38 <__printf+0x670>
    80002d20:	06300593          	li	a1,99
    80002d24:	02e7f6bb          	remuw	a3,a5,a4
    80002d28:	02069693          	slli	a3,a3,0x20
    80002d2c:	0206d693          	srli	a3,a3,0x20
    80002d30:	00dd86b3          	add	a3,s11,a3
    80002d34:	0006c683          	lbu	a3,0(a3)
    80002d38:	02e7d73b          	divuw	a4,a5,a4
    80002d3c:	00200793          	li	a5,2
    80002d40:	f8d400a3          	sb	a3,-127(s0)
    80002d44:	bca5ece3          	bltu	a1,a0,8000291c <__printf+0x154>
    80002d48:	ce5ff06f          	j	80002a2c <__printf+0x264>
    80002d4c:	40e007bb          	negw	a5,a4
    80002d50:	00001d97          	auipc	s11,0x1
    80002d54:	468d8d93          	addi	s11,s11,1128 # 800041b8 <digits>
    80002d58:	00f7f693          	andi	a3,a5,15
    80002d5c:	00dd86b3          	add	a3,s11,a3
    80002d60:	0006c583          	lbu	a1,0(a3)
    80002d64:	ff100613          	li	a2,-15
    80002d68:	0047d69b          	srliw	a3,a5,0x4
    80002d6c:	f8b40023          	sb	a1,-128(s0)
    80002d70:	0047d59b          	srliw	a1,a5,0x4
    80002d74:	0ac75e63          	bge	a4,a2,80002e30 <__printf+0x668>
    80002d78:	00f6f693          	andi	a3,a3,15
    80002d7c:	00dd86b3          	add	a3,s11,a3
    80002d80:	0006c603          	lbu	a2,0(a3)
    80002d84:	00f00693          	li	a3,15
    80002d88:	0087d79b          	srliw	a5,a5,0x8
    80002d8c:	f8c400a3          	sb	a2,-127(s0)
    80002d90:	d8b6e4e3          	bltu	a3,a1,80002b18 <__printf+0x350>
    80002d94:	00200793          	li	a5,2
    80002d98:	e2dff06f          	j	80002bc4 <__printf+0x3fc>
    80002d9c:	00001c97          	auipc	s9,0x1
    80002da0:	3fcc8c93          	addi	s9,s9,1020 # 80004198 <bntOne+0x140>
    80002da4:	02800513          	li	a0,40
    80002da8:	ef1ff06f          	j	80002c98 <__printf+0x4d0>
    80002dac:	00700793          	li	a5,7
    80002db0:	00600c93          	li	s9,6
    80002db4:	e0dff06f          	j	80002bc0 <__printf+0x3f8>
    80002db8:	00700793          	li	a5,7
    80002dbc:	00600c93          	li	s9,6
    80002dc0:	c69ff06f          	j	80002a28 <__printf+0x260>
    80002dc4:	00300793          	li	a5,3
    80002dc8:	00200c93          	li	s9,2
    80002dcc:	c5dff06f          	j	80002a28 <__printf+0x260>
    80002dd0:	00300793          	li	a5,3
    80002dd4:	00200c93          	li	s9,2
    80002dd8:	de9ff06f          	j	80002bc0 <__printf+0x3f8>
    80002ddc:	00400793          	li	a5,4
    80002de0:	00300c93          	li	s9,3
    80002de4:	dddff06f          	j	80002bc0 <__printf+0x3f8>
    80002de8:	00400793          	li	a5,4
    80002dec:	00300c93          	li	s9,3
    80002df0:	c39ff06f          	j	80002a28 <__printf+0x260>
    80002df4:	00500793          	li	a5,5
    80002df8:	00400c93          	li	s9,4
    80002dfc:	c2dff06f          	j	80002a28 <__printf+0x260>
    80002e00:	00500793          	li	a5,5
    80002e04:	00400c93          	li	s9,4
    80002e08:	db9ff06f          	j	80002bc0 <__printf+0x3f8>
    80002e0c:	00600793          	li	a5,6
    80002e10:	00500c93          	li	s9,5
    80002e14:	dadff06f          	j	80002bc0 <__printf+0x3f8>
    80002e18:	00600793          	li	a5,6
    80002e1c:	00500c93          	li	s9,5
    80002e20:	c09ff06f          	j	80002a28 <__printf+0x260>
    80002e24:	00800793          	li	a5,8
    80002e28:	00700c93          	li	s9,7
    80002e2c:	bfdff06f          	j	80002a28 <__printf+0x260>
    80002e30:	00100793          	li	a5,1
    80002e34:	d91ff06f          	j	80002bc4 <__printf+0x3fc>
    80002e38:	00100793          	li	a5,1
    80002e3c:	bf1ff06f          	j	80002a2c <__printf+0x264>
    80002e40:	00900793          	li	a5,9
    80002e44:	00800c93          	li	s9,8
    80002e48:	be1ff06f          	j	80002a28 <__printf+0x260>
    80002e4c:	00001517          	auipc	a0,0x1
    80002e50:	35450513          	addi	a0,a0,852 # 800041a0 <bntOne+0x148>
    80002e54:	00000097          	auipc	ra,0x0
    80002e58:	918080e7          	jalr	-1768(ra) # 8000276c <panic>

0000000080002e5c <printfinit>:
    80002e5c:	fe010113          	addi	sp,sp,-32
    80002e60:	00813823          	sd	s0,16(sp)
    80002e64:	00913423          	sd	s1,8(sp)
    80002e68:	00113c23          	sd	ra,24(sp)
    80002e6c:	02010413          	addi	s0,sp,32
    80002e70:	00003497          	auipc	s1,0x3
    80002e74:	be048493          	addi	s1,s1,-1056 # 80005a50 <pr>
    80002e78:	00048513          	mv	a0,s1
    80002e7c:	00001597          	auipc	a1,0x1
    80002e80:	33458593          	addi	a1,a1,820 # 800041b0 <bntOne+0x158>
    80002e84:	00000097          	auipc	ra,0x0
    80002e88:	5f4080e7          	jalr	1524(ra) # 80003478 <initlock>
    80002e8c:	01813083          	ld	ra,24(sp)
    80002e90:	01013403          	ld	s0,16(sp)
    80002e94:	0004ac23          	sw	zero,24(s1)
    80002e98:	00813483          	ld	s1,8(sp)
    80002e9c:	02010113          	addi	sp,sp,32
    80002ea0:	00008067          	ret

0000000080002ea4 <uartinit>:
    80002ea4:	ff010113          	addi	sp,sp,-16
    80002ea8:	00813423          	sd	s0,8(sp)
    80002eac:	01010413          	addi	s0,sp,16
    80002eb0:	100007b7          	lui	a5,0x10000
    80002eb4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002eb8:	f8000713          	li	a4,-128
    80002ebc:	00e781a3          	sb	a4,3(a5)
    80002ec0:	00300713          	li	a4,3
    80002ec4:	00e78023          	sb	a4,0(a5)
    80002ec8:	000780a3          	sb	zero,1(a5)
    80002ecc:	00e781a3          	sb	a4,3(a5)
    80002ed0:	00700693          	li	a3,7
    80002ed4:	00d78123          	sb	a3,2(a5)
    80002ed8:	00e780a3          	sb	a4,1(a5)
    80002edc:	00813403          	ld	s0,8(sp)
    80002ee0:	01010113          	addi	sp,sp,16
    80002ee4:	00008067          	ret

0000000080002ee8 <uartputc>:
    80002ee8:	00002797          	auipc	a5,0x2
    80002eec:	9187a783          	lw	a5,-1768(a5) # 80004800 <panicked>
    80002ef0:	00078463          	beqz	a5,80002ef8 <uartputc+0x10>
    80002ef4:	0000006f          	j	80002ef4 <uartputc+0xc>
    80002ef8:	fd010113          	addi	sp,sp,-48
    80002efc:	02813023          	sd	s0,32(sp)
    80002f00:	00913c23          	sd	s1,24(sp)
    80002f04:	01213823          	sd	s2,16(sp)
    80002f08:	01313423          	sd	s3,8(sp)
    80002f0c:	02113423          	sd	ra,40(sp)
    80002f10:	03010413          	addi	s0,sp,48
    80002f14:	00002917          	auipc	s2,0x2
    80002f18:	8f490913          	addi	s2,s2,-1804 # 80004808 <uart_tx_r>
    80002f1c:	00093783          	ld	a5,0(s2)
    80002f20:	00002497          	auipc	s1,0x2
    80002f24:	8f048493          	addi	s1,s1,-1808 # 80004810 <uart_tx_w>
    80002f28:	0004b703          	ld	a4,0(s1)
    80002f2c:	02078693          	addi	a3,a5,32
    80002f30:	00050993          	mv	s3,a0
    80002f34:	02e69c63          	bne	a3,a4,80002f6c <uartputc+0x84>
    80002f38:	00001097          	auipc	ra,0x1
    80002f3c:	834080e7          	jalr	-1996(ra) # 8000376c <push_on>
    80002f40:	00093783          	ld	a5,0(s2)
    80002f44:	0004b703          	ld	a4,0(s1)
    80002f48:	02078793          	addi	a5,a5,32
    80002f4c:	00e79463          	bne	a5,a4,80002f54 <uartputc+0x6c>
    80002f50:	0000006f          	j	80002f50 <uartputc+0x68>
    80002f54:	00001097          	auipc	ra,0x1
    80002f58:	88c080e7          	jalr	-1908(ra) # 800037e0 <pop_on>
    80002f5c:	00093783          	ld	a5,0(s2)
    80002f60:	0004b703          	ld	a4,0(s1)
    80002f64:	02078693          	addi	a3,a5,32
    80002f68:	fce688e3          	beq	a3,a4,80002f38 <uartputc+0x50>
    80002f6c:	01f77693          	andi	a3,a4,31
    80002f70:	00003597          	auipc	a1,0x3
    80002f74:	b0058593          	addi	a1,a1,-1280 # 80005a70 <uart_tx_buf>
    80002f78:	00d586b3          	add	a3,a1,a3
    80002f7c:	00170713          	addi	a4,a4,1
    80002f80:	01368023          	sb	s3,0(a3)
    80002f84:	00e4b023          	sd	a4,0(s1)
    80002f88:	10000637          	lui	a2,0x10000
    80002f8c:	02f71063          	bne	a4,a5,80002fac <uartputc+0xc4>
    80002f90:	0340006f          	j	80002fc4 <uartputc+0xdc>
    80002f94:	00074703          	lbu	a4,0(a4)
    80002f98:	00f93023          	sd	a5,0(s2)
    80002f9c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002fa0:	00093783          	ld	a5,0(s2)
    80002fa4:	0004b703          	ld	a4,0(s1)
    80002fa8:	00f70e63          	beq	a4,a5,80002fc4 <uartputc+0xdc>
    80002fac:	00564683          	lbu	a3,5(a2)
    80002fb0:	01f7f713          	andi	a4,a5,31
    80002fb4:	00e58733          	add	a4,a1,a4
    80002fb8:	0206f693          	andi	a3,a3,32
    80002fbc:	00178793          	addi	a5,a5,1
    80002fc0:	fc069ae3          	bnez	a3,80002f94 <uartputc+0xac>
    80002fc4:	02813083          	ld	ra,40(sp)
    80002fc8:	02013403          	ld	s0,32(sp)
    80002fcc:	01813483          	ld	s1,24(sp)
    80002fd0:	01013903          	ld	s2,16(sp)
    80002fd4:	00813983          	ld	s3,8(sp)
    80002fd8:	03010113          	addi	sp,sp,48
    80002fdc:	00008067          	ret

0000000080002fe0 <uartputc_sync>:
    80002fe0:	ff010113          	addi	sp,sp,-16
    80002fe4:	00813423          	sd	s0,8(sp)
    80002fe8:	01010413          	addi	s0,sp,16
    80002fec:	00002717          	auipc	a4,0x2
    80002ff0:	81472703          	lw	a4,-2028(a4) # 80004800 <panicked>
    80002ff4:	02071663          	bnez	a4,80003020 <uartputc_sync+0x40>
    80002ff8:	00050793          	mv	a5,a0
    80002ffc:	100006b7          	lui	a3,0x10000
    80003000:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003004:	02077713          	andi	a4,a4,32
    80003008:	fe070ce3          	beqz	a4,80003000 <uartputc_sync+0x20>
    8000300c:	0ff7f793          	andi	a5,a5,255
    80003010:	00f68023          	sb	a5,0(a3)
    80003014:	00813403          	ld	s0,8(sp)
    80003018:	01010113          	addi	sp,sp,16
    8000301c:	00008067          	ret
    80003020:	0000006f          	j	80003020 <uartputc_sync+0x40>

0000000080003024 <uartstart>:
    80003024:	ff010113          	addi	sp,sp,-16
    80003028:	00813423          	sd	s0,8(sp)
    8000302c:	01010413          	addi	s0,sp,16
    80003030:	00001617          	auipc	a2,0x1
    80003034:	7d860613          	addi	a2,a2,2008 # 80004808 <uart_tx_r>
    80003038:	00001517          	auipc	a0,0x1
    8000303c:	7d850513          	addi	a0,a0,2008 # 80004810 <uart_tx_w>
    80003040:	00063783          	ld	a5,0(a2)
    80003044:	00053703          	ld	a4,0(a0)
    80003048:	04f70263          	beq	a4,a5,8000308c <uartstart+0x68>
    8000304c:	100005b7          	lui	a1,0x10000
    80003050:	00003817          	auipc	a6,0x3
    80003054:	a2080813          	addi	a6,a6,-1504 # 80005a70 <uart_tx_buf>
    80003058:	01c0006f          	j	80003074 <uartstart+0x50>
    8000305c:	0006c703          	lbu	a4,0(a3)
    80003060:	00f63023          	sd	a5,0(a2)
    80003064:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003068:	00063783          	ld	a5,0(a2)
    8000306c:	00053703          	ld	a4,0(a0)
    80003070:	00f70e63          	beq	a4,a5,8000308c <uartstart+0x68>
    80003074:	01f7f713          	andi	a4,a5,31
    80003078:	00e806b3          	add	a3,a6,a4
    8000307c:	0055c703          	lbu	a4,5(a1)
    80003080:	00178793          	addi	a5,a5,1
    80003084:	02077713          	andi	a4,a4,32
    80003088:	fc071ae3          	bnez	a4,8000305c <uartstart+0x38>
    8000308c:	00813403          	ld	s0,8(sp)
    80003090:	01010113          	addi	sp,sp,16
    80003094:	00008067          	ret

0000000080003098 <uartgetc>:
    80003098:	ff010113          	addi	sp,sp,-16
    8000309c:	00813423          	sd	s0,8(sp)
    800030a0:	01010413          	addi	s0,sp,16
    800030a4:	10000737          	lui	a4,0x10000
    800030a8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800030ac:	0017f793          	andi	a5,a5,1
    800030b0:	00078c63          	beqz	a5,800030c8 <uartgetc+0x30>
    800030b4:	00074503          	lbu	a0,0(a4)
    800030b8:	0ff57513          	andi	a0,a0,255
    800030bc:	00813403          	ld	s0,8(sp)
    800030c0:	01010113          	addi	sp,sp,16
    800030c4:	00008067          	ret
    800030c8:	fff00513          	li	a0,-1
    800030cc:	ff1ff06f          	j	800030bc <uartgetc+0x24>

00000000800030d0 <uartintr>:
    800030d0:	100007b7          	lui	a5,0x10000
    800030d4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800030d8:	0017f793          	andi	a5,a5,1
    800030dc:	0a078463          	beqz	a5,80003184 <uartintr+0xb4>
    800030e0:	fe010113          	addi	sp,sp,-32
    800030e4:	00813823          	sd	s0,16(sp)
    800030e8:	00913423          	sd	s1,8(sp)
    800030ec:	00113c23          	sd	ra,24(sp)
    800030f0:	02010413          	addi	s0,sp,32
    800030f4:	100004b7          	lui	s1,0x10000
    800030f8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800030fc:	0ff57513          	andi	a0,a0,255
    80003100:	fffff097          	auipc	ra,0xfffff
    80003104:	534080e7          	jalr	1332(ra) # 80002634 <consoleintr>
    80003108:	0054c783          	lbu	a5,5(s1)
    8000310c:	0017f793          	andi	a5,a5,1
    80003110:	fe0794e3          	bnez	a5,800030f8 <uartintr+0x28>
    80003114:	00001617          	auipc	a2,0x1
    80003118:	6f460613          	addi	a2,a2,1780 # 80004808 <uart_tx_r>
    8000311c:	00001517          	auipc	a0,0x1
    80003120:	6f450513          	addi	a0,a0,1780 # 80004810 <uart_tx_w>
    80003124:	00063783          	ld	a5,0(a2)
    80003128:	00053703          	ld	a4,0(a0)
    8000312c:	04f70263          	beq	a4,a5,80003170 <uartintr+0xa0>
    80003130:	100005b7          	lui	a1,0x10000
    80003134:	00003817          	auipc	a6,0x3
    80003138:	93c80813          	addi	a6,a6,-1732 # 80005a70 <uart_tx_buf>
    8000313c:	01c0006f          	j	80003158 <uartintr+0x88>
    80003140:	0006c703          	lbu	a4,0(a3)
    80003144:	00f63023          	sd	a5,0(a2)
    80003148:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000314c:	00063783          	ld	a5,0(a2)
    80003150:	00053703          	ld	a4,0(a0)
    80003154:	00f70e63          	beq	a4,a5,80003170 <uartintr+0xa0>
    80003158:	01f7f713          	andi	a4,a5,31
    8000315c:	00e806b3          	add	a3,a6,a4
    80003160:	0055c703          	lbu	a4,5(a1)
    80003164:	00178793          	addi	a5,a5,1
    80003168:	02077713          	andi	a4,a4,32
    8000316c:	fc071ae3          	bnez	a4,80003140 <uartintr+0x70>
    80003170:	01813083          	ld	ra,24(sp)
    80003174:	01013403          	ld	s0,16(sp)
    80003178:	00813483          	ld	s1,8(sp)
    8000317c:	02010113          	addi	sp,sp,32
    80003180:	00008067          	ret
    80003184:	00001617          	auipc	a2,0x1
    80003188:	68460613          	addi	a2,a2,1668 # 80004808 <uart_tx_r>
    8000318c:	00001517          	auipc	a0,0x1
    80003190:	68450513          	addi	a0,a0,1668 # 80004810 <uart_tx_w>
    80003194:	00063783          	ld	a5,0(a2)
    80003198:	00053703          	ld	a4,0(a0)
    8000319c:	04f70263          	beq	a4,a5,800031e0 <uartintr+0x110>
    800031a0:	100005b7          	lui	a1,0x10000
    800031a4:	00003817          	auipc	a6,0x3
    800031a8:	8cc80813          	addi	a6,a6,-1844 # 80005a70 <uart_tx_buf>
    800031ac:	01c0006f          	j	800031c8 <uartintr+0xf8>
    800031b0:	0006c703          	lbu	a4,0(a3)
    800031b4:	00f63023          	sd	a5,0(a2)
    800031b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800031bc:	00063783          	ld	a5,0(a2)
    800031c0:	00053703          	ld	a4,0(a0)
    800031c4:	02f70063          	beq	a4,a5,800031e4 <uartintr+0x114>
    800031c8:	01f7f713          	andi	a4,a5,31
    800031cc:	00e806b3          	add	a3,a6,a4
    800031d0:	0055c703          	lbu	a4,5(a1)
    800031d4:	00178793          	addi	a5,a5,1
    800031d8:	02077713          	andi	a4,a4,32
    800031dc:	fc071ae3          	bnez	a4,800031b0 <uartintr+0xe0>
    800031e0:	00008067          	ret
    800031e4:	00008067          	ret

00000000800031e8 <kinit>:
    800031e8:	fc010113          	addi	sp,sp,-64
    800031ec:	02913423          	sd	s1,40(sp)
    800031f0:	fffff7b7          	lui	a5,0xfffff
    800031f4:	00004497          	auipc	s1,0x4
    800031f8:	89b48493          	addi	s1,s1,-1893 # 80006a8f <end+0xfff>
    800031fc:	02813823          	sd	s0,48(sp)
    80003200:	01313c23          	sd	s3,24(sp)
    80003204:	00f4f4b3          	and	s1,s1,a5
    80003208:	02113c23          	sd	ra,56(sp)
    8000320c:	03213023          	sd	s2,32(sp)
    80003210:	01413823          	sd	s4,16(sp)
    80003214:	01513423          	sd	s5,8(sp)
    80003218:	04010413          	addi	s0,sp,64
    8000321c:	000017b7          	lui	a5,0x1
    80003220:	01100993          	li	s3,17
    80003224:	00f487b3          	add	a5,s1,a5
    80003228:	01b99993          	slli	s3,s3,0x1b
    8000322c:	06f9e063          	bltu	s3,a5,8000328c <kinit+0xa4>
    80003230:	00003a97          	auipc	s5,0x3
    80003234:	860a8a93          	addi	s5,s5,-1952 # 80005a90 <end>
    80003238:	0754ec63          	bltu	s1,s5,800032b0 <kinit+0xc8>
    8000323c:	0734fa63          	bgeu	s1,s3,800032b0 <kinit+0xc8>
    80003240:	00088a37          	lui	s4,0x88
    80003244:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003248:	00001917          	auipc	s2,0x1
    8000324c:	5d090913          	addi	s2,s2,1488 # 80004818 <kmem>
    80003250:	00ca1a13          	slli	s4,s4,0xc
    80003254:	0140006f          	j	80003268 <kinit+0x80>
    80003258:	000017b7          	lui	a5,0x1
    8000325c:	00f484b3          	add	s1,s1,a5
    80003260:	0554e863          	bltu	s1,s5,800032b0 <kinit+0xc8>
    80003264:	0534f663          	bgeu	s1,s3,800032b0 <kinit+0xc8>
    80003268:	00001637          	lui	a2,0x1
    8000326c:	00100593          	li	a1,1
    80003270:	00048513          	mv	a0,s1
    80003274:	00000097          	auipc	ra,0x0
    80003278:	5e4080e7          	jalr	1508(ra) # 80003858 <__memset>
    8000327c:	00093783          	ld	a5,0(s2)
    80003280:	00f4b023          	sd	a5,0(s1)
    80003284:	00993023          	sd	s1,0(s2)
    80003288:	fd4498e3          	bne	s1,s4,80003258 <kinit+0x70>
    8000328c:	03813083          	ld	ra,56(sp)
    80003290:	03013403          	ld	s0,48(sp)
    80003294:	02813483          	ld	s1,40(sp)
    80003298:	02013903          	ld	s2,32(sp)
    8000329c:	01813983          	ld	s3,24(sp)
    800032a0:	01013a03          	ld	s4,16(sp)
    800032a4:	00813a83          	ld	s5,8(sp)
    800032a8:	04010113          	addi	sp,sp,64
    800032ac:	00008067          	ret
    800032b0:	00001517          	auipc	a0,0x1
    800032b4:	f2050513          	addi	a0,a0,-224 # 800041d0 <digits+0x18>
    800032b8:	fffff097          	auipc	ra,0xfffff
    800032bc:	4b4080e7          	jalr	1204(ra) # 8000276c <panic>

00000000800032c0 <freerange>:
    800032c0:	fc010113          	addi	sp,sp,-64
    800032c4:	000017b7          	lui	a5,0x1
    800032c8:	02913423          	sd	s1,40(sp)
    800032cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800032d0:	009504b3          	add	s1,a0,s1
    800032d4:	fffff537          	lui	a0,0xfffff
    800032d8:	02813823          	sd	s0,48(sp)
    800032dc:	02113c23          	sd	ra,56(sp)
    800032e0:	03213023          	sd	s2,32(sp)
    800032e4:	01313c23          	sd	s3,24(sp)
    800032e8:	01413823          	sd	s4,16(sp)
    800032ec:	01513423          	sd	s5,8(sp)
    800032f0:	01613023          	sd	s6,0(sp)
    800032f4:	04010413          	addi	s0,sp,64
    800032f8:	00a4f4b3          	and	s1,s1,a0
    800032fc:	00f487b3          	add	a5,s1,a5
    80003300:	06f5e463          	bltu	a1,a5,80003368 <freerange+0xa8>
    80003304:	00002a97          	auipc	s5,0x2
    80003308:	78ca8a93          	addi	s5,s5,1932 # 80005a90 <end>
    8000330c:	0954e263          	bltu	s1,s5,80003390 <freerange+0xd0>
    80003310:	01100993          	li	s3,17
    80003314:	01b99993          	slli	s3,s3,0x1b
    80003318:	0734fc63          	bgeu	s1,s3,80003390 <freerange+0xd0>
    8000331c:	00058a13          	mv	s4,a1
    80003320:	00001917          	auipc	s2,0x1
    80003324:	4f890913          	addi	s2,s2,1272 # 80004818 <kmem>
    80003328:	00002b37          	lui	s6,0x2
    8000332c:	0140006f          	j	80003340 <freerange+0x80>
    80003330:	000017b7          	lui	a5,0x1
    80003334:	00f484b3          	add	s1,s1,a5
    80003338:	0554ec63          	bltu	s1,s5,80003390 <freerange+0xd0>
    8000333c:	0534fa63          	bgeu	s1,s3,80003390 <freerange+0xd0>
    80003340:	00001637          	lui	a2,0x1
    80003344:	00100593          	li	a1,1
    80003348:	00048513          	mv	a0,s1
    8000334c:	00000097          	auipc	ra,0x0
    80003350:	50c080e7          	jalr	1292(ra) # 80003858 <__memset>
    80003354:	00093703          	ld	a4,0(s2)
    80003358:	016487b3          	add	a5,s1,s6
    8000335c:	00e4b023          	sd	a4,0(s1)
    80003360:	00993023          	sd	s1,0(s2)
    80003364:	fcfa76e3          	bgeu	s4,a5,80003330 <freerange+0x70>
    80003368:	03813083          	ld	ra,56(sp)
    8000336c:	03013403          	ld	s0,48(sp)
    80003370:	02813483          	ld	s1,40(sp)
    80003374:	02013903          	ld	s2,32(sp)
    80003378:	01813983          	ld	s3,24(sp)
    8000337c:	01013a03          	ld	s4,16(sp)
    80003380:	00813a83          	ld	s5,8(sp)
    80003384:	00013b03          	ld	s6,0(sp)
    80003388:	04010113          	addi	sp,sp,64
    8000338c:	00008067          	ret
    80003390:	00001517          	auipc	a0,0x1
    80003394:	e4050513          	addi	a0,a0,-448 # 800041d0 <digits+0x18>
    80003398:	fffff097          	auipc	ra,0xfffff
    8000339c:	3d4080e7          	jalr	980(ra) # 8000276c <panic>

00000000800033a0 <kfree>:
    800033a0:	fe010113          	addi	sp,sp,-32
    800033a4:	00813823          	sd	s0,16(sp)
    800033a8:	00113c23          	sd	ra,24(sp)
    800033ac:	00913423          	sd	s1,8(sp)
    800033b0:	02010413          	addi	s0,sp,32
    800033b4:	03451793          	slli	a5,a0,0x34
    800033b8:	04079c63          	bnez	a5,80003410 <kfree+0x70>
    800033bc:	00002797          	auipc	a5,0x2
    800033c0:	6d478793          	addi	a5,a5,1748 # 80005a90 <end>
    800033c4:	00050493          	mv	s1,a0
    800033c8:	04f56463          	bltu	a0,a5,80003410 <kfree+0x70>
    800033cc:	01100793          	li	a5,17
    800033d0:	01b79793          	slli	a5,a5,0x1b
    800033d4:	02f57e63          	bgeu	a0,a5,80003410 <kfree+0x70>
    800033d8:	00001637          	lui	a2,0x1
    800033dc:	00100593          	li	a1,1
    800033e0:	00000097          	auipc	ra,0x0
    800033e4:	478080e7          	jalr	1144(ra) # 80003858 <__memset>
    800033e8:	00001797          	auipc	a5,0x1
    800033ec:	43078793          	addi	a5,a5,1072 # 80004818 <kmem>
    800033f0:	0007b703          	ld	a4,0(a5)
    800033f4:	01813083          	ld	ra,24(sp)
    800033f8:	01013403          	ld	s0,16(sp)
    800033fc:	00e4b023          	sd	a4,0(s1)
    80003400:	0097b023          	sd	s1,0(a5)
    80003404:	00813483          	ld	s1,8(sp)
    80003408:	02010113          	addi	sp,sp,32
    8000340c:	00008067          	ret
    80003410:	00001517          	auipc	a0,0x1
    80003414:	dc050513          	addi	a0,a0,-576 # 800041d0 <digits+0x18>
    80003418:	fffff097          	auipc	ra,0xfffff
    8000341c:	354080e7          	jalr	852(ra) # 8000276c <panic>

0000000080003420 <kalloc>:
    80003420:	fe010113          	addi	sp,sp,-32
    80003424:	00813823          	sd	s0,16(sp)
    80003428:	00913423          	sd	s1,8(sp)
    8000342c:	00113c23          	sd	ra,24(sp)
    80003430:	02010413          	addi	s0,sp,32
    80003434:	00001797          	auipc	a5,0x1
    80003438:	3e478793          	addi	a5,a5,996 # 80004818 <kmem>
    8000343c:	0007b483          	ld	s1,0(a5)
    80003440:	02048063          	beqz	s1,80003460 <kalloc+0x40>
    80003444:	0004b703          	ld	a4,0(s1)
    80003448:	00001637          	lui	a2,0x1
    8000344c:	00500593          	li	a1,5
    80003450:	00048513          	mv	a0,s1
    80003454:	00e7b023          	sd	a4,0(a5)
    80003458:	00000097          	auipc	ra,0x0
    8000345c:	400080e7          	jalr	1024(ra) # 80003858 <__memset>
    80003460:	01813083          	ld	ra,24(sp)
    80003464:	01013403          	ld	s0,16(sp)
    80003468:	00048513          	mv	a0,s1
    8000346c:	00813483          	ld	s1,8(sp)
    80003470:	02010113          	addi	sp,sp,32
    80003474:	00008067          	ret

0000000080003478 <initlock>:
    80003478:	ff010113          	addi	sp,sp,-16
    8000347c:	00813423          	sd	s0,8(sp)
    80003480:	01010413          	addi	s0,sp,16
    80003484:	00813403          	ld	s0,8(sp)
    80003488:	00b53423          	sd	a1,8(a0)
    8000348c:	00052023          	sw	zero,0(a0)
    80003490:	00053823          	sd	zero,16(a0)
    80003494:	01010113          	addi	sp,sp,16
    80003498:	00008067          	ret

000000008000349c <acquire>:
    8000349c:	fe010113          	addi	sp,sp,-32
    800034a0:	00813823          	sd	s0,16(sp)
    800034a4:	00913423          	sd	s1,8(sp)
    800034a8:	00113c23          	sd	ra,24(sp)
    800034ac:	01213023          	sd	s2,0(sp)
    800034b0:	02010413          	addi	s0,sp,32
    800034b4:	00050493          	mv	s1,a0
    800034b8:	10002973          	csrr	s2,sstatus
    800034bc:	100027f3          	csrr	a5,sstatus
    800034c0:	ffd7f793          	andi	a5,a5,-3
    800034c4:	10079073          	csrw	sstatus,a5
    800034c8:	fffff097          	auipc	ra,0xfffff
    800034cc:	8e4080e7          	jalr	-1820(ra) # 80001dac <mycpu>
    800034d0:	07852783          	lw	a5,120(a0)
    800034d4:	06078e63          	beqz	a5,80003550 <acquire+0xb4>
    800034d8:	fffff097          	auipc	ra,0xfffff
    800034dc:	8d4080e7          	jalr	-1836(ra) # 80001dac <mycpu>
    800034e0:	07852783          	lw	a5,120(a0)
    800034e4:	0004a703          	lw	a4,0(s1)
    800034e8:	0017879b          	addiw	a5,a5,1
    800034ec:	06f52c23          	sw	a5,120(a0)
    800034f0:	04071063          	bnez	a4,80003530 <acquire+0x94>
    800034f4:	00100713          	li	a4,1
    800034f8:	00070793          	mv	a5,a4
    800034fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003500:	0007879b          	sext.w	a5,a5
    80003504:	fe079ae3          	bnez	a5,800034f8 <acquire+0x5c>
    80003508:	0ff0000f          	fence
    8000350c:	fffff097          	auipc	ra,0xfffff
    80003510:	8a0080e7          	jalr	-1888(ra) # 80001dac <mycpu>
    80003514:	01813083          	ld	ra,24(sp)
    80003518:	01013403          	ld	s0,16(sp)
    8000351c:	00a4b823          	sd	a0,16(s1)
    80003520:	00013903          	ld	s2,0(sp)
    80003524:	00813483          	ld	s1,8(sp)
    80003528:	02010113          	addi	sp,sp,32
    8000352c:	00008067          	ret
    80003530:	0104b903          	ld	s2,16(s1)
    80003534:	fffff097          	auipc	ra,0xfffff
    80003538:	878080e7          	jalr	-1928(ra) # 80001dac <mycpu>
    8000353c:	faa91ce3          	bne	s2,a0,800034f4 <acquire+0x58>
    80003540:	00001517          	auipc	a0,0x1
    80003544:	c9850513          	addi	a0,a0,-872 # 800041d8 <digits+0x20>
    80003548:	fffff097          	auipc	ra,0xfffff
    8000354c:	224080e7          	jalr	548(ra) # 8000276c <panic>
    80003550:	00195913          	srli	s2,s2,0x1
    80003554:	fffff097          	auipc	ra,0xfffff
    80003558:	858080e7          	jalr	-1960(ra) # 80001dac <mycpu>
    8000355c:	00197913          	andi	s2,s2,1
    80003560:	07252e23          	sw	s2,124(a0)
    80003564:	f75ff06f          	j	800034d8 <acquire+0x3c>

0000000080003568 <release>:
    80003568:	fe010113          	addi	sp,sp,-32
    8000356c:	00813823          	sd	s0,16(sp)
    80003570:	00113c23          	sd	ra,24(sp)
    80003574:	00913423          	sd	s1,8(sp)
    80003578:	01213023          	sd	s2,0(sp)
    8000357c:	02010413          	addi	s0,sp,32
    80003580:	00052783          	lw	a5,0(a0)
    80003584:	00079a63          	bnez	a5,80003598 <release+0x30>
    80003588:	00001517          	auipc	a0,0x1
    8000358c:	c5850513          	addi	a0,a0,-936 # 800041e0 <digits+0x28>
    80003590:	fffff097          	auipc	ra,0xfffff
    80003594:	1dc080e7          	jalr	476(ra) # 8000276c <panic>
    80003598:	01053903          	ld	s2,16(a0)
    8000359c:	00050493          	mv	s1,a0
    800035a0:	fffff097          	auipc	ra,0xfffff
    800035a4:	80c080e7          	jalr	-2036(ra) # 80001dac <mycpu>
    800035a8:	fea910e3          	bne	s2,a0,80003588 <release+0x20>
    800035ac:	0004b823          	sd	zero,16(s1)
    800035b0:	0ff0000f          	fence
    800035b4:	0f50000f          	fence	iorw,ow
    800035b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800035bc:	ffffe097          	auipc	ra,0xffffe
    800035c0:	7f0080e7          	jalr	2032(ra) # 80001dac <mycpu>
    800035c4:	100027f3          	csrr	a5,sstatus
    800035c8:	0027f793          	andi	a5,a5,2
    800035cc:	04079a63          	bnez	a5,80003620 <release+0xb8>
    800035d0:	07852783          	lw	a5,120(a0)
    800035d4:	02f05e63          	blez	a5,80003610 <release+0xa8>
    800035d8:	fff7871b          	addiw	a4,a5,-1
    800035dc:	06e52c23          	sw	a4,120(a0)
    800035e0:	00071c63          	bnez	a4,800035f8 <release+0x90>
    800035e4:	07c52783          	lw	a5,124(a0)
    800035e8:	00078863          	beqz	a5,800035f8 <release+0x90>
    800035ec:	100027f3          	csrr	a5,sstatus
    800035f0:	0027e793          	ori	a5,a5,2
    800035f4:	10079073          	csrw	sstatus,a5
    800035f8:	01813083          	ld	ra,24(sp)
    800035fc:	01013403          	ld	s0,16(sp)
    80003600:	00813483          	ld	s1,8(sp)
    80003604:	00013903          	ld	s2,0(sp)
    80003608:	02010113          	addi	sp,sp,32
    8000360c:	00008067          	ret
    80003610:	00001517          	auipc	a0,0x1
    80003614:	bf050513          	addi	a0,a0,-1040 # 80004200 <digits+0x48>
    80003618:	fffff097          	auipc	ra,0xfffff
    8000361c:	154080e7          	jalr	340(ra) # 8000276c <panic>
    80003620:	00001517          	auipc	a0,0x1
    80003624:	bc850513          	addi	a0,a0,-1080 # 800041e8 <digits+0x30>
    80003628:	fffff097          	auipc	ra,0xfffff
    8000362c:	144080e7          	jalr	324(ra) # 8000276c <panic>

0000000080003630 <holding>:
    80003630:	00052783          	lw	a5,0(a0)
    80003634:	00079663          	bnez	a5,80003640 <holding+0x10>
    80003638:	00000513          	li	a0,0
    8000363c:	00008067          	ret
    80003640:	fe010113          	addi	sp,sp,-32
    80003644:	00813823          	sd	s0,16(sp)
    80003648:	00913423          	sd	s1,8(sp)
    8000364c:	00113c23          	sd	ra,24(sp)
    80003650:	02010413          	addi	s0,sp,32
    80003654:	01053483          	ld	s1,16(a0)
    80003658:	ffffe097          	auipc	ra,0xffffe
    8000365c:	754080e7          	jalr	1876(ra) # 80001dac <mycpu>
    80003660:	01813083          	ld	ra,24(sp)
    80003664:	01013403          	ld	s0,16(sp)
    80003668:	40a48533          	sub	a0,s1,a0
    8000366c:	00153513          	seqz	a0,a0
    80003670:	00813483          	ld	s1,8(sp)
    80003674:	02010113          	addi	sp,sp,32
    80003678:	00008067          	ret

000000008000367c <push_off>:
    8000367c:	fe010113          	addi	sp,sp,-32
    80003680:	00813823          	sd	s0,16(sp)
    80003684:	00113c23          	sd	ra,24(sp)
    80003688:	00913423          	sd	s1,8(sp)
    8000368c:	02010413          	addi	s0,sp,32
    80003690:	100024f3          	csrr	s1,sstatus
    80003694:	100027f3          	csrr	a5,sstatus
    80003698:	ffd7f793          	andi	a5,a5,-3
    8000369c:	10079073          	csrw	sstatus,a5
    800036a0:	ffffe097          	auipc	ra,0xffffe
    800036a4:	70c080e7          	jalr	1804(ra) # 80001dac <mycpu>
    800036a8:	07852783          	lw	a5,120(a0)
    800036ac:	02078663          	beqz	a5,800036d8 <push_off+0x5c>
    800036b0:	ffffe097          	auipc	ra,0xffffe
    800036b4:	6fc080e7          	jalr	1788(ra) # 80001dac <mycpu>
    800036b8:	07852783          	lw	a5,120(a0)
    800036bc:	01813083          	ld	ra,24(sp)
    800036c0:	01013403          	ld	s0,16(sp)
    800036c4:	0017879b          	addiw	a5,a5,1
    800036c8:	06f52c23          	sw	a5,120(a0)
    800036cc:	00813483          	ld	s1,8(sp)
    800036d0:	02010113          	addi	sp,sp,32
    800036d4:	00008067          	ret
    800036d8:	0014d493          	srli	s1,s1,0x1
    800036dc:	ffffe097          	auipc	ra,0xffffe
    800036e0:	6d0080e7          	jalr	1744(ra) # 80001dac <mycpu>
    800036e4:	0014f493          	andi	s1,s1,1
    800036e8:	06952e23          	sw	s1,124(a0)
    800036ec:	fc5ff06f          	j	800036b0 <push_off+0x34>

00000000800036f0 <pop_off>:
    800036f0:	ff010113          	addi	sp,sp,-16
    800036f4:	00813023          	sd	s0,0(sp)
    800036f8:	00113423          	sd	ra,8(sp)
    800036fc:	01010413          	addi	s0,sp,16
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	6ac080e7          	jalr	1708(ra) # 80001dac <mycpu>
    80003708:	100027f3          	csrr	a5,sstatus
    8000370c:	0027f793          	andi	a5,a5,2
    80003710:	04079663          	bnez	a5,8000375c <pop_off+0x6c>
    80003714:	07852783          	lw	a5,120(a0)
    80003718:	02f05a63          	blez	a5,8000374c <pop_off+0x5c>
    8000371c:	fff7871b          	addiw	a4,a5,-1
    80003720:	06e52c23          	sw	a4,120(a0)
    80003724:	00071c63          	bnez	a4,8000373c <pop_off+0x4c>
    80003728:	07c52783          	lw	a5,124(a0)
    8000372c:	00078863          	beqz	a5,8000373c <pop_off+0x4c>
    80003730:	100027f3          	csrr	a5,sstatus
    80003734:	0027e793          	ori	a5,a5,2
    80003738:	10079073          	csrw	sstatus,a5
    8000373c:	00813083          	ld	ra,8(sp)
    80003740:	00013403          	ld	s0,0(sp)
    80003744:	01010113          	addi	sp,sp,16
    80003748:	00008067          	ret
    8000374c:	00001517          	auipc	a0,0x1
    80003750:	ab450513          	addi	a0,a0,-1356 # 80004200 <digits+0x48>
    80003754:	fffff097          	auipc	ra,0xfffff
    80003758:	018080e7          	jalr	24(ra) # 8000276c <panic>
    8000375c:	00001517          	auipc	a0,0x1
    80003760:	a8c50513          	addi	a0,a0,-1396 # 800041e8 <digits+0x30>
    80003764:	fffff097          	auipc	ra,0xfffff
    80003768:	008080e7          	jalr	8(ra) # 8000276c <panic>

000000008000376c <push_on>:
    8000376c:	fe010113          	addi	sp,sp,-32
    80003770:	00813823          	sd	s0,16(sp)
    80003774:	00113c23          	sd	ra,24(sp)
    80003778:	00913423          	sd	s1,8(sp)
    8000377c:	02010413          	addi	s0,sp,32
    80003780:	100024f3          	csrr	s1,sstatus
    80003784:	100027f3          	csrr	a5,sstatus
    80003788:	0027e793          	ori	a5,a5,2
    8000378c:	10079073          	csrw	sstatus,a5
    80003790:	ffffe097          	auipc	ra,0xffffe
    80003794:	61c080e7          	jalr	1564(ra) # 80001dac <mycpu>
    80003798:	07852783          	lw	a5,120(a0)
    8000379c:	02078663          	beqz	a5,800037c8 <push_on+0x5c>
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	60c080e7          	jalr	1548(ra) # 80001dac <mycpu>
    800037a8:	07852783          	lw	a5,120(a0)
    800037ac:	01813083          	ld	ra,24(sp)
    800037b0:	01013403          	ld	s0,16(sp)
    800037b4:	0017879b          	addiw	a5,a5,1
    800037b8:	06f52c23          	sw	a5,120(a0)
    800037bc:	00813483          	ld	s1,8(sp)
    800037c0:	02010113          	addi	sp,sp,32
    800037c4:	00008067          	ret
    800037c8:	0014d493          	srli	s1,s1,0x1
    800037cc:	ffffe097          	auipc	ra,0xffffe
    800037d0:	5e0080e7          	jalr	1504(ra) # 80001dac <mycpu>
    800037d4:	0014f493          	andi	s1,s1,1
    800037d8:	06952e23          	sw	s1,124(a0)
    800037dc:	fc5ff06f          	j	800037a0 <push_on+0x34>

00000000800037e0 <pop_on>:
    800037e0:	ff010113          	addi	sp,sp,-16
    800037e4:	00813023          	sd	s0,0(sp)
    800037e8:	00113423          	sd	ra,8(sp)
    800037ec:	01010413          	addi	s0,sp,16
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	5bc080e7          	jalr	1468(ra) # 80001dac <mycpu>
    800037f8:	100027f3          	csrr	a5,sstatus
    800037fc:	0027f793          	andi	a5,a5,2
    80003800:	04078463          	beqz	a5,80003848 <pop_on+0x68>
    80003804:	07852783          	lw	a5,120(a0)
    80003808:	02f05863          	blez	a5,80003838 <pop_on+0x58>
    8000380c:	fff7879b          	addiw	a5,a5,-1
    80003810:	06f52c23          	sw	a5,120(a0)
    80003814:	07853783          	ld	a5,120(a0)
    80003818:	00079863          	bnez	a5,80003828 <pop_on+0x48>
    8000381c:	100027f3          	csrr	a5,sstatus
    80003820:	ffd7f793          	andi	a5,a5,-3
    80003824:	10079073          	csrw	sstatus,a5
    80003828:	00813083          	ld	ra,8(sp)
    8000382c:	00013403          	ld	s0,0(sp)
    80003830:	01010113          	addi	sp,sp,16
    80003834:	00008067          	ret
    80003838:	00001517          	auipc	a0,0x1
    8000383c:	9f050513          	addi	a0,a0,-1552 # 80004228 <digits+0x70>
    80003840:	fffff097          	auipc	ra,0xfffff
    80003844:	f2c080e7          	jalr	-212(ra) # 8000276c <panic>
    80003848:	00001517          	auipc	a0,0x1
    8000384c:	9c050513          	addi	a0,a0,-1600 # 80004208 <digits+0x50>
    80003850:	fffff097          	auipc	ra,0xfffff
    80003854:	f1c080e7          	jalr	-228(ra) # 8000276c <panic>

0000000080003858 <__memset>:
    80003858:	ff010113          	addi	sp,sp,-16
    8000385c:	00813423          	sd	s0,8(sp)
    80003860:	01010413          	addi	s0,sp,16
    80003864:	1a060e63          	beqz	a2,80003a20 <__memset+0x1c8>
    80003868:	40a007b3          	neg	a5,a0
    8000386c:	0077f793          	andi	a5,a5,7
    80003870:	00778693          	addi	a3,a5,7
    80003874:	00b00813          	li	a6,11
    80003878:	0ff5f593          	andi	a1,a1,255
    8000387c:	fff6071b          	addiw	a4,a2,-1
    80003880:	1b06e663          	bltu	a3,a6,80003a2c <__memset+0x1d4>
    80003884:	1cd76463          	bltu	a4,a3,80003a4c <__memset+0x1f4>
    80003888:	1a078e63          	beqz	a5,80003a44 <__memset+0x1ec>
    8000388c:	00b50023          	sb	a1,0(a0)
    80003890:	00100713          	li	a4,1
    80003894:	1ae78463          	beq	a5,a4,80003a3c <__memset+0x1e4>
    80003898:	00b500a3          	sb	a1,1(a0)
    8000389c:	00200713          	li	a4,2
    800038a0:	1ae78a63          	beq	a5,a4,80003a54 <__memset+0x1fc>
    800038a4:	00b50123          	sb	a1,2(a0)
    800038a8:	00300713          	li	a4,3
    800038ac:	18e78463          	beq	a5,a4,80003a34 <__memset+0x1dc>
    800038b0:	00b501a3          	sb	a1,3(a0)
    800038b4:	00400713          	li	a4,4
    800038b8:	1ae78263          	beq	a5,a4,80003a5c <__memset+0x204>
    800038bc:	00b50223          	sb	a1,4(a0)
    800038c0:	00500713          	li	a4,5
    800038c4:	1ae78063          	beq	a5,a4,80003a64 <__memset+0x20c>
    800038c8:	00b502a3          	sb	a1,5(a0)
    800038cc:	00700713          	li	a4,7
    800038d0:	18e79e63          	bne	a5,a4,80003a6c <__memset+0x214>
    800038d4:	00b50323          	sb	a1,6(a0)
    800038d8:	00700e93          	li	t4,7
    800038dc:	00859713          	slli	a4,a1,0x8
    800038e0:	00e5e733          	or	a4,a1,a4
    800038e4:	01059e13          	slli	t3,a1,0x10
    800038e8:	01c76e33          	or	t3,a4,t3
    800038ec:	01859313          	slli	t1,a1,0x18
    800038f0:	006e6333          	or	t1,t3,t1
    800038f4:	02059893          	slli	a7,a1,0x20
    800038f8:	40f60e3b          	subw	t3,a2,a5
    800038fc:	011368b3          	or	a7,t1,a7
    80003900:	02859813          	slli	a6,a1,0x28
    80003904:	0108e833          	or	a6,a7,a6
    80003908:	03059693          	slli	a3,a1,0x30
    8000390c:	003e589b          	srliw	a7,t3,0x3
    80003910:	00d866b3          	or	a3,a6,a3
    80003914:	03859713          	slli	a4,a1,0x38
    80003918:	00389813          	slli	a6,a7,0x3
    8000391c:	00f507b3          	add	a5,a0,a5
    80003920:	00e6e733          	or	a4,a3,a4
    80003924:	000e089b          	sext.w	a7,t3
    80003928:	00f806b3          	add	a3,a6,a5
    8000392c:	00e7b023          	sd	a4,0(a5)
    80003930:	00878793          	addi	a5,a5,8
    80003934:	fed79ce3          	bne	a5,a3,8000392c <__memset+0xd4>
    80003938:	ff8e7793          	andi	a5,t3,-8
    8000393c:	0007871b          	sext.w	a4,a5
    80003940:	01d787bb          	addw	a5,a5,t4
    80003944:	0ce88e63          	beq	a7,a4,80003a20 <__memset+0x1c8>
    80003948:	00f50733          	add	a4,a0,a5
    8000394c:	00b70023          	sb	a1,0(a4)
    80003950:	0017871b          	addiw	a4,a5,1
    80003954:	0cc77663          	bgeu	a4,a2,80003a20 <__memset+0x1c8>
    80003958:	00e50733          	add	a4,a0,a4
    8000395c:	00b70023          	sb	a1,0(a4)
    80003960:	0027871b          	addiw	a4,a5,2
    80003964:	0ac77e63          	bgeu	a4,a2,80003a20 <__memset+0x1c8>
    80003968:	00e50733          	add	a4,a0,a4
    8000396c:	00b70023          	sb	a1,0(a4)
    80003970:	0037871b          	addiw	a4,a5,3
    80003974:	0ac77663          	bgeu	a4,a2,80003a20 <__memset+0x1c8>
    80003978:	00e50733          	add	a4,a0,a4
    8000397c:	00b70023          	sb	a1,0(a4)
    80003980:	0047871b          	addiw	a4,a5,4
    80003984:	08c77e63          	bgeu	a4,a2,80003a20 <__memset+0x1c8>
    80003988:	00e50733          	add	a4,a0,a4
    8000398c:	00b70023          	sb	a1,0(a4)
    80003990:	0057871b          	addiw	a4,a5,5
    80003994:	08c77663          	bgeu	a4,a2,80003a20 <__memset+0x1c8>
    80003998:	00e50733          	add	a4,a0,a4
    8000399c:	00b70023          	sb	a1,0(a4)
    800039a0:	0067871b          	addiw	a4,a5,6
    800039a4:	06c77e63          	bgeu	a4,a2,80003a20 <__memset+0x1c8>
    800039a8:	00e50733          	add	a4,a0,a4
    800039ac:	00b70023          	sb	a1,0(a4)
    800039b0:	0077871b          	addiw	a4,a5,7
    800039b4:	06c77663          	bgeu	a4,a2,80003a20 <__memset+0x1c8>
    800039b8:	00e50733          	add	a4,a0,a4
    800039bc:	00b70023          	sb	a1,0(a4)
    800039c0:	0087871b          	addiw	a4,a5,8
    800039c4:	04c77e63          	bgeu	a4,a2,80003a20 <__memset+0x1c8>
    800039c8:	00e50733          	add	a4,a0,a4
    800039cc:	00b70023          	sb	a1,0(a4)
    800039d0:	0097871b          	addiw	a4,a5,9
    800039d4:	04c77663          	bgeu	a4,a2,80003a20 <__memset+0x1c8>
    800039d8:	00e50733          	add	a4,a0,a4
    800039dc:	00b70023          	sb	a1,0(a4)
    800039e0:	00a7871b          	addiw	a4,a5,10
    800039e4:	02c77e63          	bgeu	a4,a2,80003a20 <__memset+0x1c8>
    800039e8:	00e50733          	add	a4,a0,a4
    800039ec:	00b70023          	sb	a1,0(a4)
    800039f0:	00b7871b          	addiw	a4,a5,11
    800039f4:	02c77663          	bgeu	a4,a2,80003a20 <__memset+0x1c8>
    800039f8:	00e50733          	add	a4,a0,a4
    800039fc:	00b70023          	sb	a1,0(a4)
    80003a00:	00c7871b          	addiw	a4,a5,12
    80003a04:	00c77e63          	bgeu	a4,a2,80003a20 <__memset+0x1c8>
    80003a08:	00e50733          	add	a4,a0,a4
    80003a0c:	00b70023          	sb	a1,0(a4)
    80003a10:	00d7879b          	addiw	a5,a5,13
    80003a14:	00c7f663          	bgeu	a5,a2,80003a20 <__memset+0x1c8>
    80003a18:	00f507b3          	add	a5,a0,a5
    80003a1c:	00b78023          	sb	a1,0(a5)
    80003a20:	00813403          	ld	s0,8(sp)
    80003a24:	01010113          	addi	sp,sp,16
    80003a28:	00008067          	ret
    80003a2c:	00b00693          	li	a3,11
    80003a30:	e55ff06f          	j	80003884 <__memset+0x2c>
    80003a34:	00300e93          	li	t4,3
    80003a38:	ea5ff06f          	j	800038dc <__memset+0x84>
    80003a3c:	00100e93          	li	t4,1
    80003a40:	e9dff06f          	j	800038dc <__memset+0x84>
    80003a44:	00000e93          	li	t4,0
    80003a48:	e95ff06f          	j	800038dc <__memset+0x84>
    80003a4c:	00000793          	li	a5,0
    80003a50:	ef9ff06f          	j	80003948 <__memset+0xf0>
    80003a54:	00200e93          	li	t4,2
    80003a58:	e85ff06f          	j	800038dc <__memset+0x84>
    80003a5c:	00400e93          	li	t4,4
    80003a60:	e7dff06f          	j	800038dc <__memset+0x84>
    80003a64:	00500e93          	li	t4,5
    80003a68:	e75ff06f          	j	800038dc <__memset+0x84>
    80003a6c:	00600e93          	li	t4,6
    80003a70:	e6dff06f          	j	800038dc <__memset+0x84>

0000000080003a74 <__memmove>:
    80003a74:	ff010113          	addi	sp,sp,-16
    80003a78:	00813423          	sd	s0,8(sp)
    80003a7c:	01010413          	addi	s0,sp,16
    80003a80:	0e060863          	beqz	a2,80003b70 <__memmove+0xfc>
    80003a84:	fff6069b          	addiw	a3,a2,-1
    80003a88:	0006881b          	sext.w	a6,a3
    80003a8c:	0ea5e863          	bltu	a1,a0,80003b7c <__memmove+0x108>
    80003a90:	00758713          	addi	a4,a1,7
    80003a94:	00a5e7b3          	or	a5,a1,a0
    80003a98:	40a70733          	sub	a4,a4,a0
    80003a9c:	0077f793          	andi	a5,a5,7
    80003aa0:	00f73713          	sltiu	a4,a4,15
    80003aa4:	00174713          	xori	a4,a4,1
    80003aa8:	0017b793          	seqz	a5,a5
    80003aac:	00e7f7b3          	and	a5,a5,a4
    80003ab0:	10078863          	beqz	a5,80003bc0 <__memmove+0x14c>
    80003ab4:	00900793          	li	a5,9
    80003ab8:	1107f463          	bgeu	a5,a6,80003bc0 <__memmove+0x14c>
    80003abc:	0036581b          	srliw	a6,a2,0x3
    80003ac0:	fff8081b          	addiw	a6,a6,-1
    80003ac4:	02081813          	slli	a6,a6,0x20
    80003ac8:	01d85893          	srli	a7,a6,0x1d
    80003acc:	00858813          	addi	a6,a1,8
    80003ad0:	00058793          	mv	a5,a1
    80003ad4:	00050713          	mv	a4,a0
    80003ad8:	01088833          	add	a6,a7,a6
    80003adc:	0007b883          	ld	a7,0(a5)
    80003ae0:	00878793          	addi	a5,a5,8
    80003ae4:	00870713          	addi	a4,a4,8
    80003ae8:	ff173c23          	sd	a7,-8(a4)
    80003aec:	ff0798e3          	bne	a5,a6,80003adc <__memmove+0x68>
    80003af0:	ff867713          	andi	a4,a2,-8
    80003af4:	02071793          	slli	a5,a4,0x20
    80003af8:	0207d793          	srli	a5,a5,0x20
    80003afc:	00f585b3          	add	a1,a1,a5
    80003b00:	40e686bb          	subw	a3,a3,a4
    80003b04:	00f507b3          	add	a5,a0,a5
    80003b08:	06e60463          	beq	a2,a4,80003b70 <__memmove+0xfc>
    80003b0c:	0005c703          	lbu	a4,0(a1)
    80003b10:	00e78023          	sb	a4,0(a5)
    80003b14:	04068e63          	beqz	a3,80003b70 <__memmove+0xfc>
    80003b18:	0015c603          	lbu	a2,1(a1)
    80003b1c:	00100713          	li	a4,1
    80003b20:	00c780a3          	sb	a2,1(a5)
    80003b24:	04e68663          	beq	a3,a4,80003b70 <__memmove+0xfc>
    80003b28:	0025c603          	lbu	a2,2(a1)
    80003b2c:	00200713          	li	a4,2
    80003b30:	00c78123          	sb	a2,2(a5)
    80003b34:	02e68e63          	beq	a3,a4,80003b70 <__memmove+0xfc>
    80003b38:	0035c603          	lbu	a2,3(a1)
    80003b3c:	00300713          	li	a4,3
    80003b40:	00c781a3          	sb	a2,3(a5)
    80003b44:	02e68663          	beq	a3,a4,80003b70 <__memmove+0xfc>
    80003b48:	0045c603          	lbu	a2,4(a1)
    80003b4c:	00400713          	li	a4,4
    80003b50:	00c78223          	sb	a2,4(a5)
    80003b54:	00e68e63          	beq	a3,a4,80003b70 <__memmove+0xfc>
    80003b58:	0055c603          	lbu	a2,5(a1)
    80003b5c:	00500713          	li	a4,5
    80003b60:	00c782a3          	sb	a2,5(a5)
    80003b64:	00e68663          	beq	a3,a4,80003b70 <__memmove+0xfc>
    80003b68:	0065c703          	lbu	a4,6(a1)
    80003b6c:	00e78323          	sb	a4,6(a5)
    80003b70:	00813403          	ld	s0,8(sp)
    80003b74:	01010113          	addi	sp,sp,16
    80003b78:	00008067          	ret
    80003b7c:	02061713          	slli	a4,a2,0x20
    80003b80:	02075713          	srli	a4,a4,0x20
    80003b84:	00e587b3          	add	a5,a1,a4
    80003b88:	f0f574e3          	bgeu	a0,a5,80003a90 <__memmove+0x1c>
    80003b8c:	02069613          	slli	a2,a3,0x20
    80003b90:	02065613          	srli	a2,a2,0x20
    80003b94:	fff64613          	not	a2,a2
    80003b98:	00e50733          	add	a4,a0,a4
    80003b9c:	00c78633          	add	a2,a5,a2
    80003ba0:	fff7c683          	lbu	a3,-1(a5)
    80003ba4:	fff78793          	addi	a5,a5,-1
    80003ba8:	fff70713          	addi	a4,a4,-1
    80003bac:	00d70023          	sb	a3,0(a4)
    80003bb0:	fec798e3          	bne	a5,a2,80003ba0 <__memmove+0x12c>
    80003bb4:	00813403          	ld	s0,8(sp)
    80003bb8:	01010113          	addi	sp,sp,16
    80003bbc:	00008067          	ret
    80003bc0:	02069713          	slli	a4,a3,0x20
    80003bc4:	02075713          	srli	a4,a4,0x20
    80003bc8:	00170713          	addi	a4,a4,1
    80003bcc:	00e50733          	add	a4,a0,a4
    80003bd0:	00050793          	mv	a5,a0
    80003bd4:	0005c683          	lbu	a3,0(a1)
    80003bd8:	00178793          	addi	a5,a5,1
    80003bdc:	00158593          	addi	a1,a1,1
    80003be0:	fed78fa3          	sb	a3,-1(a5)
    80003be4:	fee798e3          	bne	a5,a4,80003bd4 <__memmove+0x160>
    80003be8:	f89ff06f          	j	80003b70 <__memmove+0xfc>

0000000080003bec <__putc>:
    80003bec:	fe010113          	addi	sp,sp,-32
    80003bf0:	00813823          	sd	s0,16(sp)
    80003bf4:	00113c23          	sd	ra,24(sp)
    80003bf8:	02010413          	addi	s0,sp,32
    80003bfc:	00050793          	mv	a5,a0
    80003c00:	fef40593          	addi	a1,s0,-17
    80003c04:	00100613          	li	a2,1
    80003c08:	00000513          	li	a0,0
    80003c0c:	fef407a3          	sb	a5,-17(s0)
    80003c10:	fffff097          	auipc	ra,0xfffff
    80003c14:	b3c080e7          	jalr	-1220(ra) # 8000274c <console_write>
    80003c18:	01813083          	ld	ra,24(sp)
    80003c1c:	01013403          	ld	s0,16(sp)
    80003c20:	02010113          	addi	sp,sp,32
    80003c24:	00008067          	ret

0000000080003c28 <__getc>:
    80003c28:	fe010113          	addi	sp,sp,-32
    80003c2c:	00813823          	sd	s0,16(sp)
    80003c30:	00113c23          	sd	ra,24(sp)
    80003c34:	02010413          	addi	s0,sp,32
    80003c38:	fe840593          	addi	a1,s0,-24
    80003c3c:	00100613          	li	a2,1
    80003c40:	00000513          	li	a0,0
    80003c44:	fffff097          	auipc	ra,0xfffff
    80003c48:	ae8080e7          	jalr	-1304(ra) # 8000272c <console_read>
    80003c4c:	fe844503          	lbu	a0,-24(s0)
    80003c50:	01813083          	ld	ra,24(sp)
    80003c54:	01013403          	ld	s0,16(sp)
    80003c58:	02010113          	addi	sp,sp,32
    80003c5c:	00008067          	ret

0000000080003c60 <console_handler>:
    80003c60:	fe010113          	addi	sp,sp,-32
    80003c64:	00813823          	sd	s0,16(sp)
    80003c68:	00113c23          	sd	ra,24(sp)
    80003c6c:	00913423          	sd	s1,8(sp)
    80003c70:	02010413          	addi	s0,sp,32
    80003c74:	14202773          	csrr	a4,scause
    80003c78:	100027f3          	csrr	a5,sstatus
    80003c7c:	0027f793          	andi	a5,a5,2
    80003c80:	06079e63          	bnez	a5,80003cfc <console_handler+0x9c>
    80003c84:	00074c63          	bltz	a4,80003c9c <console_handler+0x3c>
    80003c88:	01813083          	ld	ra,24(sp)
    80003c8c:	01013403          	ld	s0,16(sp)
    80003c90:	00813483          	ld	s1,8(sp)
    80003c94:	02010113          	addi	sp,sp,32
    80003c98:	00008067          	ret
    80003c9c:	0ff77713          	andi	a4,a4,255
    80003ca0:	00900793          	li	a5,9
    80003ca4:	fef712e3          	bne	a4,a5,80003c88 <console_handler+0x28>
    80003ca8:	ffffe097          	auipc	ra,0xffffe
    80003cac:	6dc080e7          	jalr	1756(ra) # 80002384 <plic_claim>
    80003cb0:	00a00793          	li	a5,10
    80003cb4:	00050493          	mv	s1,a0
    80003cb8:	02f50c63          	beq	a0,a5,80003cf0 <console_handler+0x90>
    80003cbc:	fc0506e3          	beqz	a0,80003c88 <console_handler+0x28>
    80003cc0:	00050593          	mv	a1,a0
    80003cc4:	00000517          	auipc	a0,0x0
    80003cc8:	46c50513          	addi	a0,a0,1132 # 80004130 <bntOne+0xd8>
    80003ccc:	fffff097          	auipc	ra,0xfffff
    80003cd0:	afc080e7          	jalr	-1284(ra) # 800027c8 <__printf>
    80003cd4:	01013403          	ld	s0,16(sp)
    80003cd8:	01813083          	ld	ra,24(sp)
    80003cdc:	00048513          	mv	a0,s1
    80003ce0:	00813483          	ld	s1,8(sp)
    80003ce4:	02010113          	addi	sp,sp,32
    80003ce8:	ffffe317          	auipc	t1,0xffffe
    80003cec:	6d430067          	jr	1748(t1) # 800023bc <plic_complete>
    80003cf0:	fffff097          	auipc	ra,0xfffff
    80003cf4:	3e0080e7          	jalr	992(ra) # 800030d0 <uartintr>
    80003cf8:	fddff06f          	j	80003cd4 <console_handler+0x74>
    80003cfc:	00000517          	auipc	a0,0x0
    80003d00:	53450513          	addi	a0,a0,1332 # 80004230 <digits+0x78>
    80003d04:	fffff097          	auipc	ra,0xfffff
    80003d08:	a68080e7          	jalr	-1432(ra) # 8000276c <panic>
	...
