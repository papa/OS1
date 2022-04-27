
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	68013103          	ld	sp,1664(sp) # 80004680 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	0f5010ef          	jal	ra,80001910 <start>

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
    80001084:	3d8000ef          	jal	ra,8000145c <interrupt>

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

0000000080001110 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001110:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001114:	00313c23          	sd	gp,24(sp)
    80001118:	02413023          	sd	tp,32(sp)
    8000111c:	02513423          	sd	t0,40(sp)
    80001120:	02613823          	sd	t1,48(sp)
    80001124:	02713c23          	sd	t2,56(sp)
    80001128:	04813023          	sd	s0,64(sp)
    8000112c:	04913423          	sd	s1,72(sp)
    80001130:	04a13823          	sd	a0,80(sp)
    80001134:	04b13c23          	sd	a1,88(sp)
    80001138:	06c13023          	sd	a2,96(sp)
    8000113c:	06d13423          	sd	a3,104(sp)
    80001140:	06e13823          	sd	a4,112(sp)
    80001144:	06f13c23          	sd	a5,120(sp)
    80001148:	09013023          	sd	a6,128(sp)
    8000114c:	09113423          	sd	a7,136(sp)
    80001150:	09213823          	sd	s2,144(sp)
    80001154:	09313c23          	sd	s3,152(sp)
    80001158:	0b413023          	sd	s4,160(sp)
    8000115c:	0b513423          	sd	s5,168(sp)
    80001160:	0b613823          	sd	s6,176(sp)
    80001164:	0b713c23          	sd	s7,184(sp)
    80001168:	0d813023          	sd	s8,192(sp)
    8000116c:	0d913423          	sd	s9,200(sp)
    80001170:	0da13823          	sd	s10,208(sp)
    80001174:	0db13c23          	sd	s11,216(sp)
    80001178:	0fc13023          	sd	t3,224(sp)
    8000117c:	0fd13423          	sd	t4,232(sp)
    80001180:	0fe13823          	sd	t5,240(sp)
    80001184:	0ff13c23          	sd	t6,248(sp)
    ret
    80001188:	00008067          	ret

000000008000118c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000118c:	01813183          	ld	gp,24(sp)
    80001190:	02013203          	ld	tp,32(sp)
    80001194:	02813283          	ld	t0,40(sp)
    80001198:	03013303          	ld	t1,48(sp)
    8000119c:	03813383          	ld	t2,56(sp)
    800011a0:	04013403          	ld	s0,64(sp)
    800011a4:	04813483          	ld	s1,72(sp)
    800011a8:	05013503          	ld	a0,80(sp)
    800011ac:	05813583          	ld	a1,88(sp)
    800011b0:	06013603          	ld	a2,96(sp)
    800011b4:	06813683          	ld	a3,104(sp)
    800011b8:	07013703          	ld	a4,112(sp)
    800011bc:	07813783          	ld	a5,120(sp)
    800011c0:	08013803          	ld	a6,128(sp)
    800011c4:	08813883          	ld	a7,136(sp)
    800011c8:	09013903          	ld	s2,144(sp)
    800011cc:	09813983          	ld	s3,152(sp)
    800011d0:	0a013a03          	ld	s4,160(sp)
    800011d4:	0a813a83          	ld	s5,168(sp)
    800011d8:	0b013b03          	ld	s6,176(sp)
    800011dc:	0b813b83          	ld	s7,184(sp)
    800011e0:	0c013c03          	ld	s8,192(sp)
    800011e4:	0c813c83          	ld	s9,200(sp)
    800011e8:	0d013d03          	ld	s10,208(sp)
    800011ec:	0d813d83          	ld	s11,216(sp)
    800011f0:	0e013e03          	ld	t3,224(sp)
    800011f4:	0e813e83          	ld	t4,232(sp)
    800011f8:	0f013f03          	ld	t5,240(sp)
    800011fc:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001200:	10010113          	addi	sp,sp,256
    ret
    80001204:	00008067          	ret

0000000080001208 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3CCB13contextSwitchEPNS_7ContextES1_
.type _ZN3CCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3CCB13contextSwitchEPNS_7ContextES1_:
    #a0 - old Context
    #a1 - new Context
    sd sp, 0 * 8(a0)
    80001208:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000120c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001210:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001214:	0085b083          	ld	ra,8(a1)

    ret
    80001218:	00008067          	ret

000000008000121c <mem_alloc>:

#ifdef __cplusplus
extern "C"
#endif
void* mem_alloc(size_t size)
{
    8000121c:	ff010113          	addi	sp,sp,-16
    80001220:	00813423          	sd	s0,8(sp)
    80001224:	01010413          	addi	s0,sp,16
    //prepare for system call
    __asm__ volatile("li a0, 1");
    80001228:	00100513          	li	a0,1
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    8000122c:	03f50513          	addi	a0,a0,63
    80001230:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    80001234:	00050593          	mv	a1,a0

    __asm__ volatile("ecall"); // system call
    80001238:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    8000123c:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    80001240:	00813403          	ld	s0,8(sp)
    80001244:	01010113          	addi	sp,sp,16
    80001248:	00008067          	ret

000000008000124c <mem_free>:

#ifdef __cplusplus
extern "C"
#endif
int mem_free(void* p)
{
    8000124c:	ff010113          	addi	sp,sp,-16
    80001250:	00813423          	sd	s0,8(sp)
    80001254:	01010413          	addi	s0,sp,16
    //prepare for system call
    __asm__ volatile("li a0, 2");
    80001258:	00200513          	li	a0,2
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    8000125c:	00050593          	mv	a1,a0

    __asm__ volatile("ecall"); // system call
    80001260:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001264:	00050513          	mv	a0,a0

    return result;
}
    80001268:	0005051b          	sext.w	a0,a0
    8000126c:	00813403          	ld	s0,8(sp)
    80001270:	01010113          	addi	sp,sp,16
    80001274:	00008067          	ret

0000000080001278 <thread_create>:

#ifdef __cplusplus
extern "C"
#endif
int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    80001278:	ff010113          	addi	sp,sp,-16
    8000127c:	00113423          	sd	ra,8(sp)
    80001280:	00813023          	sd	s0,0(sp)
    80001284:	01010413          	addi	s0,sp,16
    //initialize registers
    __asm__ volatile("li a0, 0x11");
    80001288:	01100513          	li	a0,17
    //uint64 start_routine_addres = (uint64)start_routine;
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)start_routine));
    8000128c:	00058613          	mv	a2,a1
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)args));
    80001290:	00060693          	mv	a3,a2

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001294:	00001537          	lui	a0,0x1
    80001298:	00000097          	auipc	ra,0x0
    8000129c:	f84080e7          	jalr	-124(ra) # 8000121c <mem_alloc>

    //handle this error
    if(stack_space == 0)
    800012a0:	02050263          	beqz	a0,800012c4 <thread_create+0x4c>
        return -1;

    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stack_space));
    800012a4:	00050713          	mv	a4,a0

    //todo
    __asm__ volatile("ecall");
    800012a8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800012ac:	00050513          	mv	a0,a0

    return result;
    800012b0:	0005051b          	sext.w	a0,a0
}
    800012b4:	00813083          	ld	ra,8(sp)
    800012b8:	00013403          	ld	s0,0(sp)
    800012bc:	01010113          	addi	sp,sp,16
    800012c0:	00008067          	ret
        return -1;
    800012c4:	fff00513          	li	a0,-1
    800012c8:	fedff06f          	j	800012b4 <thread_create+0x3c>

00000000800012cc <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

//todo
void PCB::runner() {
    800012cc:	ff010113          	addi	sp,sp,-16
    800012d0:	00813423          	sd	s0,8(sp)
    800012d4:	01010413          	addi	s0,sp,16

    //this->body(this->args);

    //pcbThread->run();
}
    800012d8:	00813403          	ld	s0,8(sp)
    800012dc:	01010113          	addi	sp,sp,16
    800012e0:	00008067          	ret

00000000800012e4 <_ZN3PCBC1EPFvPvES0_S0_>:
PCB::PCB(void (*body)(void *), void *args, void* stack_space) :
    800012e4:	ff010113          	addi	sp,sp,-16
    800012e8:	00813423          	sd	s0,8(sp)
    800012ec:	01010413          	addi	s0,sp,16
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800012f0:	000017b7          	lui	a5,0x1
    800012f4:	00f686b3          	add	a3,a3,a5
    }), finished(false)
    800012f8:	00d53023          	sd	a3,0(a0) # 1000 <_entry-0x7ffff000>
    800012fc:	00000797          	auipc	a5,0x0
    80001300:	fd078793          	addi	a5,a5,-48 # 800012cc <_ZN3PCB6runnerEv>
    80001304:	00f53423          	sd	a5,8(a0)
    80001308:	00b53823          	sd	a1,16(a0)
    8000130c:	00c53c23          	sd	a2,24(a0)
    80001310:	02050423          	sb	zero,40(a0)
}
    80001314:	00813403          	ld	s0,8(sp)
    80001318:	01010113          	addi	sp,sp,16
    8000131c:	00008067          	ret

0000000080001320 <_ZN3PCB8dispatchEv>:
void PCB::dispatch() {
    80001320:	ff010113          	addi	sp,sp,-16
    80001324:	00813423          	sd	s0,8(sp)
    80001328:	01010413          	addi	s0,sp,16
}
    8000132c:	00813403          	ld	s0,8(sp)
    80001330:	01010113          	addi	sp,sp,16
    80001334:	00008067          	ret

0000000080001338 <_ZN3PCB5sleepEm>:
void PCB::sleep(time_t time) {
    80001338:	ff010113          	addi	sp,sp,-16
    8000133c:	00813423          	sd	s0,8(sp)
    80001340:	01010413          	addi	s0,sp,16
}
    80001344:	00813403          	ld	s0,8(sp)
    80001348:	01010113          	addi	sp,sp,16
    8000134c:	00008067          	ret

0000000080001350 <_ZN3PCB5startEv>:
{
    80001350:	ff010113          	addi	sp,sp,-16
    80001354:	00113423          	sd	ra,8(sp)
    80001358:	00813023          	sd	s0,0(sp)
    8000135c:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80001360:	00000097          	auipc	ra,0x0
    80001364:	07c080e7          	jalr	124(ra) # 800013dc <_ZN9Scheduler3putEP3PCB>
}
    80001368:	00813083          	ld	ra,8(sp)
    8000136c:	00013403          	ld	s0,0(sp)
    80001370:	01010113          	addi	sp,sp,16
    80001374:	00008067          	ret

0000000080001378 <_ZN3PCB5yieldEPS_S0_>:

void PCB::yield(PCB *oldThread, PCB *newThread) {
    80001378:	ff010113          	addi	sp,sp,-16
    8000137c:	00813423          	sd	s0,8(sp)
    80001380:	01010413          	addi	s0,sp,16

    80001384:	00813403          	ld	s0,8(sp)
    80001388:	01010113          	addi	sp,sp,16
    8000138c:	00008067          	ret

0000000080001390 <_Z41__static_initialization_and_destruction_0ii>:
    //Scheduler::queuePCB->push(pcb);
}

PCB *Scheduler::get() {
    return 0;
}
    80001390:	00100793          	li	a5,1
    80001394:	00f50463          	beq	a0,a5,8000139c <_Z41__static_initialization_and_destruction_0ii+0xc>
    80001398:	00008067          	ret
    8000139c:	000107b7          	lui	a5,0x10
    800013a0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800013a4:	fef59ae3          	bne	a1,a5,80001398 <_Z41__static_initialization_and_destruction_0ii+0x8>
    800013a8:	ff010113          	addi	sp,sp,-16
    800013ac:	00113423          	sd	ra,8(sp)
    800013b0:	00813023          	sd	s0,0(sp)
    800013b4:	01010413          	addi	s0,sp,16
Queue<PCB*>* Scheduler::queuePCB = (Queue<PCB*>*)MemoryAllocator::mem_alloc(sizeof(Queue<PCB*>));
    800013b8:	01000513          	li	a0,16
    800013bc:	00000097          	auipc	ra,0x0
    800013c0:	1f0080e7          	jalr	496(ra) # 800015ac <_ZN15MemoryAllocator9mem_allocEm>
    800013c4:	00003797          	auipc	a5,0x3
    800013c8:	30a7be23          	sd	a0,796(a5) # 800046e0 <_ZN9Scheduler8queuePCBE>
}
    800013cc:	00813083          	ld	ra,8(sp)
    800013d0:	00013403          	ld	s0,0(sp)
    800013d4:	01010113          	addi	sp,sp,16
    800013d8:	00008067          	ret

00000000800013dc <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *pcb) {
    800013dc:	ff010113          	addi	sp,sp,-16
    800013e0:	00813423          	sd	s0,8(sp)
    800013e4:	01010413          	addi	s0,sp,16
}
    800013e8:	00813403          	ld	s0,8(sp)
    800013ec:	01010113          	addi	sp,sp,16
    800013f0:	00008067          	ret

00000000800013f4 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    800013f4:	ff010113          	addi	sp,sp,-16
    800013f8:	00813423          	sd	s0,8(sp)
    800013fc:	01010413          	addi	s0,sp,16
}
    80001400:	00000513          	li	a0,0
    80001404:	00813403          	ld	s0,8(sp)
    80001408:	01010113          	addi	sp,sp,16
    8000140c:	00008067          	ret

0000000080001410 <_GLOBAL__sub_I__ZN9Scheduler8queuePCBE>:
    80001410:	ff010113          	addi	sp,sp,-16
    80001414:	00113423          	sd	ra,8(sp)
    80001418:	00813023          	sd	s0,0(sp)
    8000141c:	01010413          	addi	s0,sp,16
    80001420:	000105b7          	lui	a1,0x10
    80001424:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001428:	00100513          	li	a0,1
    8000142c:	00000097          	auipc	ra,0x0
    80001430:	f64080e7          	jalr	-156(ra) # 80001390 <_Z41__static_initialization_and_destruction_0ii>
    80001434:	00813083          	ld	ra,8(sp)
    80001438:	00013403          	ld	s0,0(sp)
    8000143c:	01010113          	addi	sp,sp,16
    80001440:	00008067          	ret

0000000080001444 <main>:
#include "../lib/console.h"

extern "C" void interruptvec();

void main()
{
    80001444:	ff010113          	addi	sp,sp,-16
    80001448:	00813423          	sd	s0,8(sp)
    8000144c:	01010413          	addi	s0,sp,16
    return;

    MemoryAllocator* memoryAllocator = MemoryAllocator::getMemoryAllocator();
    memoryAllocator->mem_alloc(2);
    */
    80001450:	00813403          	ld	s0,8(sp)
    80001454:	01010113          	addi	sp,sp,16
    80001458:	00008067          	ret

000000008000145c <interrupt>:
const uint64 addrReadInterrupt = bntZero + 5UL;
const uint64 addrWriteInterrupt = bntZero + 7UL;
const uint64 ecallUserInterrupt = bntZero + 8UL;
const uint64 ecallSystemInterupt = bntZero + 9UL;

extern "C" void interrupt() {
    8000145c:	ff010113          	addi	sp,sp,-16
    80001460:	00113423          	sd	ra,8(sp)
    80001464:	00813023          	sd	s0,0(sp)
    80001468:	01010413          	addi	s0,sp,16

    uint64 scause;
    __asm__ volatile("csrr %0,scause":"=r"(scause));
    8000146c:	14202773          	csrr	a4,scause
    switch(scause) {
    80001470:	00900793          	li	a5,9
    80001474:	00f70e63          	beq	a4,a5,80001490 <interrupt+0x34>
    //uint64 sie;
    //asm volatile("csrr %0, sie" : "=r"(sie));
    //sie &= ~2;
    //asm volatile("csrw sie, %0" : : "r" (sie));

    console_handler();
    80001478:	00002097          	auipc	ra,0x2
    8000147c:	5c8080e7          	jalr	1480(ra) # 80003a40 <console_handler>
}
    80001480:	00813083          	ld	ra,8(sp)
    80001484:	00013403          	ld	s0,0(sp)
    80001488:	01010113          	addi	sp,sp,16
    8000148c:	00008067          	ret
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80001490:	00050793          	mv	a5,a0
            if(operation == (uint64)MemoryAllocator::MEM_ALLOC) {
    80001494:	00100713          	li	a4,1
    80001498:	00e78e63          	beq	a5,a4,800014b4 <interrupt+0x58>
            else if(operation == (uint64)MemoryAllocator::MEM_FREE){
    8000149c:	00200713          	li	a4,2
    800014a0:	fce79ce3          	bne	a5,a4,80001478 <interrupt+0x1c>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    800014a4:	00058513          	mv	a0,a1
                MemoryAllocator::tryToFreeSegment((void*)addr);
    800014a8:	00000097          	auipc	ra,0x0
    800014ac:	3bc080e7          	jalr	956(ra) # 80001864 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
    800014b0:	fc9ff06f          	j	80001478 <interrupt+0x1c>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    800014b4:	00058513          	mv	a0,a1
                void* allocatedAddr = MemoryAllocator::tryToAllocateFragment(size);
    800014b8:	00651513          	slli	a0,a0,0x6
    800014bc:	00000097          	auipc	ra,0x0
    800014c0:	234080e7          	jalr	564(ra) # 800016f0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800014c4:	00050513          	mv	a0,a0
    800014c8:	fb1ff06f          	j	80001478 <interrupt+0x1c>

00000000800014cc <_Znwm>:

#include "../h/syscall_cpp.h"

//general
void * operator new(size_t size)
{
    800014cc:	ff010113          	addi	sp,sp,-16
    800014d0:	00113423          	sd	ra,8(sp)
    800014d4:	00813023          	sd	s0,0(sp)
    800014d8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800014dc:	00000097          	auipc	ra,0x0
    800014e0:	d40080e7          	jalr	-704(ra) # 8000121c <mem_alloc>
}
    800014e4:	00813083          	ld	ra,8(sp)
    800014e8:	00013403          	ld	s0,0(sp)
    800014ec:	01010113          	addi	sp,sp,16
    800014f0:	00008067          	ret

00000000800014f4 <_ZdlPv>:

void operator delete(void * p)
{
    800014f4:	ff010113          	addi	sp,sp,-16
    800014f8:	00113423          	sd	ra,8(sp)
    800014fc:	00813023          	sd	s0,0(sp)
    80001500:	01010413          	addi	s0,sp,16
   mem_free(p);
    80001504:	00000097          	auipc	ra,0x0
    80001508:	d48080e7          	jalr	-696(ra) # 8000124c <mem_free>
}
    8000150c:	00813083          	ld	ra,8(sp)
    80001510:	00013403          	ld	s0,0(sp)
    80001514:	01010113          	addi	sp,sp,16
    80001518:	00008067          	ret

000000008000151c <_ZN6Thread5startEv>:

//Thread

void Thread::start() {
    8000151c:	ff010113          	addi	sp,sp,-16
    80001520:	00113423          	sd	ra,8(sp)
    80001524:	00813023          	sd	s0,0(sp)
    80001528:	01010413          	addi	s0,sp,16
    myHandle->start();
    8000152c:	00053503          	ld	a0,0(a0)
    80001530:	00000097          	auipc	ra,0x0
    80001534:	e20080e7          	jalr	-480(ra) # 80001350 <_ZN3PCB5startEv>
}
    80001538:	00813083          	ld	ra,8(sp)
    8000153c:	00013403          	ld	s0,0(sp)
    80001540:	01010113          	addi	sp,sp,16
    80001544:	00008067          	ret

0000000080001548 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80001548:	ff010113          	addi	sp,sp,-16
    8000154c:	00813423          	sd	s0,8(sp)
    80001550:	01010413          	addi	s0,sp,16
    //PCB::dispatch();
}
    80001554:	00813403          	ld	s0,8(sp)
    80001558:	01010113          	addi	sp,sp,16
    8000155c:	00008067          	ret

0000000080001560 <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    80001560:	ff010113          	addi	sp,sp,-16
    80001564:	00113423          	sd	ra,8(sp)
    80001568:	00813023          	sd	s0,0(sp)
    8000156c:	01010413          	addi	s0,sp,16
    PCB::sleep(time);
    80001570:	00000097          	auipc	ra,0x0
    80001574:	dc8080e7          	jalr	-568(ra) # 80001338 <_ZN3PCB5sleepEm>
}
    80001578:	00813083          	ld	ra,8(sp)
    8000157c:	00013403          	ld	s0,0(sp)
    80001580:	01010113          	addi	sp,sp,16
    80001584:	00008067          	ret

0000000080001588 <_ZN5Riscv10initSystemEv>:

#include "../h/Riscv.h"

//todo
extern "C" void interruptvec();
void Riscv::initSystem() {
    80001588:	ff010113          	addi	sp,sp,-16
    8000158c:	00813423          	sd	s0,8(sp)
    80001590:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw stvec, %0" : : [vector]"r"(&interruptvec));
    80001594:	00003797          	auipc	a5,0x3
    80001598:	0f47b783          	ld	a5,244(a5) # 80004688 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000159c:	10579073          	csrw	stvec,a5
}
    800015a0:	00813403          	ld	s0,8(sp)
    800015a4:	01010113          	addi	sp,sp,16
    800015a8:	00008067          	ret

00000000800015ac <_ZN15MemoryAllocator9mem_allocEm>:

MemoryAllocator::AllocatedFragment* MemoryAllocator::headAllocated = 0;
MemoryAllocator::FreeFragment* MemoryAllocator::headFree = 0;
int MemoryAllocator::memoryInitiliaized = 0;

void *MemoryAllocator::mem_alloc(size_t size) {
    800015ac:	ff010113          	addi	sp,sp,-16
    800015b0:	00813423          	sd	s0,8(sp)
    800015b4:	01010413          	addi	s0,sp,16
    return 0;
    //todo
    //sta ovde treba kao parametar
    //svuda pogledaj to
    //return ::mem_alloc(sizeof(MemoryAllocator));
}
    800015b8:	00000513          	li	a0,0
    800015bc:	00813403          	ld	s0,8(sp)
    800015c0:	01010113          	addi	sp,sp,16
    800015c4:	00008067          	ret

00000000800015c8 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void * addr) {
    800015c8:	ff010113          	addi	sp,sp,-16
    800015cc:	00813423          	sd	s0,8(sp)
    800015d0:	01010413          	addi	s0,sp,16
    return 0;
    //return ::mem_free(addr);
}
    800015d4:	00000513          	li	a0,0
    800015d8:	00813403          	ld	s0,8(sp)
    800015dc:	01010113          	addi	sp,sp,16
    800015e0:	00008067          	ret

00000000800015e4 <_ZN15MemoryAllocator10initMemoryEv>:

void MemoryAllocator::initMemory()
{
    800015e4:	ff010113          	addi	sp,sp,-16
    800015e8:	00813423          	sd	s0,8(sp)
    800015ec:	01010413          	addi	s0,sp,16
    if(!memoryInitiliaized)
    800015f0:	00003797          	auipc	a5,0x3
    800015f4:	0f87a783          	lw	a5,248(a5) # 800046e8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800015f8:	04078263          	beqz	a5,8000163c <_ZN15MemoryAllocator10initMemoryEv+0x58>
        return;
    memoryInitiliaized = 1;
    800015fc:	00003797          	auipc	a5,0x3
    80001600:	0ec78793          	addi	a5,a5,236 # 800046e8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80001604:	00100713          	li	a4,1
    80001608:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    8000160c:	0007b423          	sd	zero,8(a5)
    headFree = (FreeFragment*)HEAP_START_ADDR;
    80001610:	00003717          	auipc	a4,0x3
    80001614:	06873703          	ld	a4,104(a4) # 80004678 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001618:	00073703          	ld	a4,0(a4)
    8000161c:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80001620:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1);
    80001624:	00003797          	auipc	a5,0x3
    80001628:	06c7b783          	ld	a5,108(a5) # 80004690 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000162c:	0007b783          	ld	a5,0(a5)
    80001630:	40e787b3          	sub	a5,a5,a4
    80001634:	00178793          	addi	a5,a5,1
    80001638:	00f73023          	sd	a5,0(a4)
}
    8000163c:	00813403          	ld	s0,8(sp)
    80001640:	01010113          	addi	sp,sp,16
    80001644:	00008067          	ret

0000000080001648 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void* addr, size_t size) {
    80001648:	fe010113          	addi	sp,sp,-32
    8000164c:	00113c23          	sd	ra,24(sp)
    80001650:	00813823          	sd	s0,16(sp)
    80001654:	00913423          	sd	s1,8(sp)
    80001658:	01213023          	sd	s2,0(sp)
    8000165c:	02010413          	addi	s0,sp,32
    80001660:	00050493          	mv	s1,a0
    80001664:	00058913          	mv	s2,a1

    initMemory();
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	f7c080e7          	jalr	-132(ra) # 800015e4 <_ZN15MemoryAllocator10initMemoryEv>
    AllocatedFragment* prev = 0;
    AllocatedFragment* after =  headAllocated;
    80001670:	00003797          	auipc	a5,0x3
    80001674:	0807b783          	ld	a5,128(a5) # 800046f0 <_ZN15MemoryAllocator13headAllocatedE>
    AllocatedFragment* prev = 0;
    80001678:	00000713          	li	a4,0
    while(after != 0) {
    8000167c:	00078a63          	beqz	a5,80001690 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x48>
        if((void*)after > addr)
    80001680:	00f4e863          	bltu	s1,a5,80001690 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x48>
            break;

        prev = after;
    80001684:	00078713          	mv	a4,a5
        after = after->next;
    80001688:	0087b783          	ld	a5,8(a5)
    while(after != 0) {
    8000168c:	ff1ff06f          	j	8000167c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x34>
    }

    AllocatedFragment* newAllocated = (AllocatedFragment*)addr;
    newAllocated->next = 0;
    80001690:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80001694:	0124b023          	sd	s2,0(s1)
    if(after == 0) {
    80001698:	02078463          	beqz	a5,800016c0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x78>
            headAllocated = newAllocated;
        else
            prev->next = newAllocated;
    }
    else {
        if(prev == 0) {
    8000169c:	02070e63          	beqz	a4,800016d8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x90>
            newAllocated->next = headAllocated;
            headAllocated = newAllocated;
        }
        else {
            newAllocated->next = after;
    800016a0:	00f4b423          	sd	a5,8(s1)
            prev->next = newAllocated;
    800016a4:	00973423          	sd	s1,8(a4)
        }
    }
}
    800016a8:	01813083          	ld	ra,24(sp)
    800016ac:	01013403          	ld	s0,16(sp)
    800016b0:	00813483          	ld	s1,8(sp)
    800016b4:	00013903          	ld	s2,0(sp)
    800016b8:	02010113          	addi	sp,sp,32
    800016bc:	00008067          	ret
        if(prev == 0)
    800016c0:	00070663          	beqz	a4,800016cc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x84>
            prev->next = newAllocated;
    800016c4:	00973423          	sd	s1,8(a4)
    800016c8:	fe1ff06f          	j	800016a8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>
            headAllocated = newAllocated;
    800016cc:	00003797          	auipc	a5,0x3
    800016d0:	0297b223          	sd	s1,36(a5) # 800046f0 <_ZN15MemoryAllocator13headAllocatedE>
    800016d4:	fd5ff06f          	j	800016a8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>
            newAllocated->next = headAllocated;
    800016d8:	00003797          	auipc	a5,0x3
    800016dc:	01078793          	addi	a5,a5,16 # 800046e8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800016e0:	0087b703          	ld	a4,8(a5)
    800016e4:	00e4b423          	sd	a4,8(s1)
            headAllocated = newAllocated;
    800016e8:	0097b423          	sd	s1,8(a5)
    800016ec:	fbdff06f          	j	800016a8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>

00000000800016f0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    800016f0:	fe010113          	addi	sp,sp,-32
    800016f4:	00113c23          	sd	ra,24(sp)
    800016f8:	00813823          	sd	s0,16(sp)
    800016fc:	00913423          	sd	s1,8(sp)
    80001700:	01213023          	sd	s2,0(sp)
    80001704:	02010413          	addi	s0,sp,32
    80001708:	00050913          	mv	s2,a0
    initMemory();
    8000170c:	00000097          	auipc	ra,0x0
    80001710:	ed8080e7          	jalr	-296(ra) # 800015e4 <_ZN15MemoryAllocator10initMemoryEv>
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    80001714:	00003497          	auipc	s1,0x3
    80001718:	fe44b483          	ld	s1,-28(s1) # 800046f8 <_ZN15MemoryAllocator8headFreeE>
    uint64 newSize = size + sizeof(AllocatedFragment);
    8000171c:	01090693          	addi	a3,s2,16
    FreeFragment* prev = 0;
    80001720:	00000713          	li	a4,0
    80001724:	0700006f          	j	80001794 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
            void* newAddr = ((char*)curr + newSize);
            if(newAddr <= HEAP_END_ADDR) {

                FreeFragment *newFree = (FreeFragment *) newAddr;

                if (prev != 0)
    80001728:	04070263          	beqz	a4,8000176c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x7c>
                    prev->next = newFree;
    8000172c:	00f73423          	sd	a5,8(a4)
                else
                    headFree = newFree;

                newFree->next = curr->next;
    80001730:	0084b603          	ld	a2,8(s1)
    80001734:	00c7b423          	sd	a2,8(a5)
                newFree->size = curr->size - newSize;
    80001738:	0004b603          	ld	a2,0(s1)
    8000173c:	40d606b3          	sub	a3,a2,a3
    80001740:	00d7b023          	sd	a3,0(a5)

                if(newFree->size == 0)
    80001744:	00069863          	bnez	a3,80001754 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x64>
                {
                    if(prev != 0)
    80001748:	02070863          	beqz	a4,80001778 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = curr->next;
    8000174c:	0084b783          	ld	a5,8(s1)
    80001750:	00f73423          	sd	a5,8(a4)
                    else
                        headFree = 0;
                }

                insertNewAllocatedFragment(oldAddr, size);
    80001754:	00090593          	mv	a1,s2
    80001758:	00048513          	mv	a0,s1
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	eec080e7          	jalr	-276(ra) # 80001648 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>



                uint64 oldA = (uint64) ((char*)oldAddr + sizeof(AllocatedFragment));
    80001764:	01048493          	addi	s1,s1,16

                return (void*)oldA;
    80001768:	0600006f          	j	800017c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd8>
                    headFree = newFree;
    8000176c:	00003617          	auipc	a2,0x3
    80001770:	f8f63623          	sd	a5,-116(a2) # 800046f8 <_ZN15MemoryAllocator8headFreeE>
    80001774:	fbdff06f          	j	80001730 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x40>
                        headFree = 0;
    80001778:	00003797          	auipc	a5,0x3
    8000177c:	f807b023          	sd	zero,-128(a5) # 800046f8 <_ZN15MemoryAllocator8headFreeE>
    80001780:	fd5ff06f          	j	80001754 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x64>
                {
                    prev->next = 0;
                }
                else
                {
                    headFree = 0;
    80001784:	00003797          	auipc	a5,0x3
    80001788:	f607ba23          	sd	zero,-140(a5) # 800046f8 <_ZN15MemoryAllocator8headFreeE>
                }
            }
        }
        prev = curr;
    8000178c:	00048713          	mv	a4,s1
        curr = curr->next;
    80001790:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    80001794:	02048663          	beqz	s1,800017c0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd0>
        if(curr->size >= newSize) {
    80001798:	0004b783          	ld	a5,0(s1)
    8000179c:	fed7e8e3          	bltu	a5,a3,8000178c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
            void* newAddr = ((char*)curr + newSize);
    800017a0:	00d487b3          	add	a5,s1,a3
            if(newAddr <= HEAP_END_ADDR) {
    800017a4:	00003617          	auipc	a2,0x3
    800017a8:	eec63603          	ld	a2,-276(a2) # 80004690 <_GLOBAL_OFFSET_TABLE_+0x20>
    800017ac:	00063603          	ld	a2,0(a2)
    800017b0:	f6f67ce3          	bgeu	a2,a5,80001728 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x38>
                if(prev != 0)
    800017b4:	fc0708e3          	beqz	a4,80001784 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    prev->next = 0;
    800017b8:	00073423          	sd	zero,8(a4)
    800017bc:	fd1ff06f          	j	8000178c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
    }

    uint64 x = 0;
    __asm__ volatile("mv a0,%0" : : "r"(x));
    800017c0:	00000793          	li	a5,0
    800017c4:	00078513          	mv	a0,a5

    return 0;
}
    800017c8:	00048513          	mv	a0,s1
    800017cc:	01813083          	ld	ra,24(sp)
    800017d0:	01013403          	ld	s0,16(sp)
    800017d4:	00813483          	ld	s1,8(sp)
    800017d8:	00013903          	ld	s2,0(sp)
    800017dc:	02010113          	addi	sp,sp,32
    800017e0:	00008067          	ret

00000000800017e4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800017e4:	fe010113          	addi	sp,sp,-32
    800017e8:	00113c23          	sd	ra,24(sp)
    800017ec:	00813823          	sd	s0,16(sp)
    800017f0:	00913423          	sd	s1,8(sp)
    800017f4:	01213023          	sd	s2,0(sp)
    800017f8:	02010413          	addi	s0,sp,32
    800017fc:	00050493          	mv	s1,a0
    80001800:	00058913          	mv	s2,a1
    initMemory();
    80001804:	00000097          	auipc	ra,0x0
    80001808:	de0080e7          	jalr	-544(ra) # 800015e4 <_ZN15MemoryAllocator10initMemoryEv>
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    8000180c:	00003797          	auipc	a5,0x3
    80001810:	eec7b783          	ld	a5,-276(a5) # 800046f8 <_ZN15MemoryAllocator8headFreeE>
    FreeFragment* newSegment = (FreeFragment*) addr;
    newSegment->size = size;
    80001814:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80001818:	0004b423          	sd	zero,8(s1)
    FreeFragment* prev = 0;
    8000181c:	00000713          	li	a4,0
    while(curr != 0)
    80001820:	00078c63          	beqz	a5,80001838 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80001824:	00f4e863          	bltu	s1,a5,80001834 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80001828:	00078713          	mv	a4,a5
        curr = curr->next;
    8000182c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80001830:	ff1ff06f          	j	80001820 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80001834:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80001838:	02070063          	beqz	a4,80001858 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        headFree = newSegment;
    else
        prev->next = newSegment;
    8000183c:	00973423          	sd	s1,8(a4)
}
    80001840:	01813083          	ld	ra,24(sp)
    80001844:	01013403          	ld	s0,16(sp)
    80001848:	00813483          	ld	s1,8(sp)
    8000184c:	00013903          	ld	s2,0(sp)
    80001850:	02010113          	addi	sp,sp,32
    80001854:	00008067          	ret
        headFree = newSegment;
    80001858:	00003797          	auipc	a5,0x3
    8000185c:	ea97b023          	sd	s1,-352(a5) # 800046f8 <_ZN15MemoryAllocator8headFreeE>
    80001860:	fe1ff06f          	j	80001840 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>

0000000080001864 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

void MemoryAllocator::tryToFreeSegment(void* addr)
{
    80001864:	fe010113          	addi	sp,sp,-32
    80001868:	00113c23          	sd	ra,24(sp)
    8000186c:	00813823          	sd	s0,16(sp)
    80001870:	00913423          	sd	s1,8(sp)
    80001874:	01213023          	sd	s2,0(sp)
    80001878:	02010413          	addi	s0,sp,32
    8000187c:	00050913          	mv	s2,a0
    initMemory();
    80001880:	00000097          	auipc	ra,0x0
    80001884:	d64080e7          	jalr	-668(ra) # 800015e4 <_ZN15MemoryAllocator10initMemoryEv>
    AllocatedFragment* prev = 0;
    AllocatedFragment* curr = headAllocated;
    80001888:	00003497          	auipc	s1,0x3
    8000188c:	e684b483          	ld	s1,-408(s1) # 800046f0 <_ZN15MemoryAllocator13headAllocatedE>
    int found = 0;
    80001890:	00000693          	li	a3,0
    AllocatedFragment* prev = 0;
    80001894:	00000713          	li	a4,0
    80001898:	0300006f          	j	800018c8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
        {
            if(prev != 0) {
                prev->next = curr->next;
            }
            else {
                headAllocated = curr->next;
    8000189c:	0084b783          	ld	a5,8(s1)
    800018a0:	00003717          	auipc	a4,0x3
    800018a4:	e4f73823          	sd	a5,-432(a4) # 800046f0 <_ZN15MemoryAllocator13headAllocatedE>
            }

            insertNewFreeSegment((void*)curr, curr->size + sizeof(AllocatedFragment));
    800018a8:	0004b583          	ld	a1,0(s1)
    800018ac:	01058593          	addi	a1,a1,16
    800018b0:	00048513          	mv	a0,s1
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	f30080e7          	jalr	-208(ra) # 800017e4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>

            found = 1;
    800018bc:	00100693          	li	a3,1
        }

        prev = curr;
    800018c0:	00048713          	mv	a4,s1
        curr = curr->next;
    800018c4:	0084b483          	ld	s1,8(s1)
    while(curr != 0 && !found)
    800018c8:	02048063          	beqz	s1,800018e8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
    800018cc:	00069e63          	bnez	a3,800018e8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
        if(addr == (void*)((char*)curr + sizeof(AllocatedFragment)))
    800018d0:	01048793          	addi	a5,s1,16
    800018d4:	ff2796e3          	bne	a5,s2,800018c0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x5c>
            if(prev != 0) {
    800018d8:	fc0702e3          	beqz	a4,8000189c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x38>
                prev->next = curr->next;
    800018dc:	0084b783          	ld	a5,8(s1)
    800018e0:	00f73423          	sd	a5,8(a4)
    800018e4:	fc5ff06f          	j	800018a8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
    }

    if(found) {
    800018e8:	02068063          	beqz	a3,80001908 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0xa4>
        __asm__ volatile("li a0, 0");
    800018ec:	00000513          	li	a0,0
    }
    else {
        __asm__ volatile("li a0, 1");
    }
    800018f0:	01813083          	ld	ra,24(sp)
    800018f4:	01013403          	ld	s0,16(sp)
    800018f8:	00813483          	ld	s1,8(sp)
    800018fc:	00013903          	ld	s2,0(sp)
    80001900:	02010113          	addi	sp,sp,32
    80001904:	00008067          	ret
        __asm__ volatile("li a0, 1");
    80001908:	00100513          	li	a0,1
    8000190c:	fe5ff06f          	j	800018f0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>

0000000080001910 <start>:
    80001910:	ff010113          	addi	sp,sp,-16
    80001914:	00813423          	sd	s0,8(sp)
    80001918:	01010413          	addi	s0,sp,16
    8000191c:	300027f3          	csrr	a5,mstatus
    80001920:	ffffe737          	lui	a4,0xffffe
    80001924:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8eaf>
    80001928:	00e7f7b3          	and	a5,a5,a4
    8000192c:	00001737          	lui	a4,0x1
    80001930:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001934:	00e7e7b3          	or	a5,a5,a4
    80001938:	30079073          	csrw	mstatus,a5
    8000193c:	00000797          	auipc	a5,0x0
    80001940:	16078793          	addi	a5,a5,352 # 80001a9c <system_main>
    80001944:	34179073          	csrw	mepc,a5
    80001948:	00000793          	li	a5,0
    8000194c:	18079073          	csrw	satp,a5
    80001950:	000107b7          	lui	a5,0x10
    80001954:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001958:	30279073          	csrw	medeleg,a5
    8000195c:	30379073          	csrw	mideleg,a5
    80001960:	104027f3          	csrr	a5,sie
    80001964:	2227e793          	ori	a5,a5,546
    80001968:	10479073          	csrw	sie,a5
    8000196c:	fff00793          	li	a5,-1
    80001970:	00a7d793          	srli	a5,a5,0xa
    80001974:	3b079073          	csrw	pmpaddr0,a5
    80001978:	00f00793          	li	a5,15
    8000197c:	3a079073          	csrw	pmpcfg0,a5
    80001980:	f14027f3          	csrr	a5,mhartid
    80001984:	0200c737          	lui	a4,0x200c
    80001988:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000198c:	0007869b          	sext.w	a3,a5
    80001990:	00269713          	slli	a4,a3,0x2
    80001994:	000f4637          	lui	a2,0xf4
    80001998:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000199c:	00d70733          	add	a4,a4,a3
    800019a0:	0037979b          	slliw	a5,a5,0x3
    800019a4:	020046b7          	lui	a3,0x2004
    800019a8:	00d787b3          	add	a5,a5,a3
    800019ac:	00c585b3          	add	a1,a1,a2
    800019b0:	00371693          	slli	a3,a4,0x3
    800019b4:	00003717          	auipc	a4,0x3
    800019b8:	d4c70713          	addi	a4,a4,-692 # 80004700 <timer_scratch>
    800019bc:	00b7b023          	sd	a1,0(a5)
    800019c0:	00d70733          	add	a4,a4,a3
    800019c4:	00f73c23          	sd	a5,24(a4)
    800019c8:	02c73023          	sd	a2,32(a4)
    800019cc:	34071073          	csrw	mscratch,a4
    800019d0:	00000797          	auipc	a5,0x0
    800019d4:	6e078793          	addi	a5,a5,1760 # 800020b0 <timervec>
    800019d8:	30579073          	csrw	mtvec,a5
    800019dc:	300027f3          	csrr	a5,mstatus
    800019e0:	0087e793          	ori	a5,a5,8
    800019e4:	30079073          	csrw	mstatus,a5
    800019e8:	304027f3          	csrr	a5,mie
    800019ec:	0807e793          	ori	a5,a5,128
    800019f0:	30479073          	csrw	mie,a5
    800019f4:	f14027f3          	csrr	a5,mhartid
    800019f8:	0007879b          	sext.w	a5,a5
    800019fc:	00078213          	mv	tp,a5
    80001a00:	30200073          	mret
    80001a04:	00813403          	ld	s0,8(sp)
    80001a08:	01010113          	addi	sp,sp,16
    80001a0c:	00008067          	ret

0000000080001a10 <timerinit>:
    80001a10:	ff010113          	addi	sp,sp,-16
    80001a14:	00813423          	sd	s0,8(sp)
    80001a18:	01010413          	addi	s0,sp,16
    80001a1c:	f14027f3          	csrr	a5,mhartid
    80001a20:	0200c737          	lui	a4,0x200c
    80001a24:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001a28:	0007869b          	sext.w	a3,a5
    80001a2c:	00269713          	slli	a4,a3,0x2
    80001a30:	000f4637          	lui	a2,0xf4
    80001a34:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001a38:	00d70733          	add	a4,a4,a3
    80001a3c:	0037979b          	slliw	a5,a5,0x3
    80001a40:	020046b7          	lui	a3,0x2004
    80001a44:	00d787b3          	add	a5,a5,a3
    80001a48:	00c585b3          	add	a1,a1,a2
    80001a4c:	00371693          	slli	a3,a4,0x3
    80001a50:	00003717          	auipc	a4,0x3
    80001a54:	cb070713          	addi	a4,a4,-848 # 80004700 <timer_scratch>
    80001a58:	00b7b023          	sd	a1,0(a5)
    80001a5c:	00d70733          	add	a4,a4,a3
    80001a60:	00f73c23          	sd	a5,24(a4)
    80001a64:	02c73023          	sd	a2,32(a4)
    80001a68:	34071073          	csrw	mscratch,a4
    80001a6c:	00000797          	auipc	a5,0x0
    80001a70:	64478793          	addi	a5,a5,1604 # 800020b0 <timervec>
    80001a74:	30579073          	csrw	mtvec,a5
    80001a78:	300027f3          	csrr	a5,mstatus
    80001a7c:	0087e793          	ori	a5,a5,8
    80001a80:	30079073          	csrw	mstatus,a5
    80001a84:	304027f3          	csrr	a5,mie
    80001a88:	0807e793          	ori	a5,a5,128
    80001a8c:	30479073          	csrw	mie,a5
    80001a90:	00813403          	ld	s0,8(sp)
    80001a94:	01010113          	addi	sp,sp,16
    80001a98:	00008067          	ret

0000000080001a9c <system_main>:
    80001a9c:	fe010113          	addi	sp,sp,-32
    80001aa0:	00813823          	sd	s0,16(sp)
    80001aa4:	00913423          	sd	s1,8(sp)
    80001aa8:	00113c23          	sd	ra,24(sp)
    80001aac:	02010413          	addi	s0,sp,32
    80001ab0:	00000097          	auipc	ra,0x0
    80001ab4:	0c4080e7          	jalr	196(ra) # 80001b74 <cpuid>
    80001ab8:	00003497          	auipc	s1,0x3
    80001abc:	bf848493          	addi	s1,s1,-1032 # 800046b0 <started>
    80001ac0:	02050263          	beqz	a0,80001ae4 <system_main+0x48>
    80001ac4:	0004a783          	lw	a5,0(s1)
    80001ac8:	0007879b          	sext.w	a5,a5
    80001acc:	fe078ce3          	beqz	a5,80001ac4 <system_main+0x28>
    80001ad0:	0ff0000f          	fence
    80001ad4:	00002517          	auipc	a0,0x2
    80001ad8:	5bc50513          	addi	a0,a0,1468 # 80004090 <bntOne+0x38>
    80001adc:	00001097          	auipc	ra,0x1
    80001ae0:	a70080e7          	jalr	-1424(ra) # 8000254c <panic>
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	9c4080e7          	jalr	-1596(ra) # 800024a8 <consoleinit>
    80001aec:	00001097          	auipc	ra,0x1
    80001af0:	150080e7          	jalr	336(ra) # 80002c3c <printfinit>
    80001af4:	00002517          	auipc	a0,0x2
    80001af8:	67c50513          	addi	a0,a0,1660 # 80004170 <bntOne+0x118>
    80001afc:	00001097          	auipc	ra,0x1
    80001b00:	aac080e7          	jalr	-1364(ra) # 800025a8 <__printf>
    80001b04:	00002517          	auipc	a0,0x2
    80001b08:	55c50513          	addi	a0,a0,1372 # 80004060 <bntOne+0x8>
    80001b0c:	00001097          	auipc	ra,0x1
    80001b10:	a9c080e7          	jalr	-1380(ra) # 800025a8 <__printf>
    80001b14:	00002517          	auipc	a0,0x2
    80001b18:	65c50513          	addi	a0,a0,1628 # 80004170 <bntOne+0x118>
    80001b1c:	00001097          	auipc	ra,0x1
    80001b20:	a8c080e7          	jalr	-1396(ra) # 800025a8 <__printf>
    80001b24:	00001097          	auipc	ra,0x1
    80001b28:	4a4080e7          	jalr	1188(ra) # 80002fc8 <kinit>
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	148080e7          	jalr	328(ra) # 80001c74 <trapinit>
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	16c080e7          	jalr	364(ra) # 80001ca0 <trapinithart>
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	5b4080e7          	jalr	1460(ra) # 800020f0 <plicinit>
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	5d4080e7          	jalr	1492(ra) # 80002118 <plicinithart>
    80001b4c:	00000097          	auipc	ra,0x0
    80001b50:	078080e7          	jalr	120(ra) # 80001bc4 <userinit>
    80001b54:	0ff0000f          	fence
    80001b58:	00100793          	li	a5,1
    80001b5c:	00002517          	auipc	a0,0x2
    80001b60:	51c50513          	addi	a0,a0,1308 # 80004078 <bntOne+0x20>
    80001b64:	00f4a023          	sw	a5,0(s1)
    80001b68:	00001097          	auipc	ra,0x1
    80001b6c:	a40080e7          	jalr	-1472(ra) # 800025a8 <__printf>
    80001b70:	0000006f          	j	80001b70 <system_main+0xd4>

0000000080001b74 <cpuid>:
    80001b74:	ff010113          	addi	sp,sp,-16
    80001b78:	00813423          	sd	s0,8(sp)
    80001b7c:	01010413          	addi	s0,sp,16
    80001b80:	00020513          	mv	a0,tp
    80001b84:	00813403          	ld	s0,8(sp)
    80001b88:	0005051b          	sext.w	a0,a0
    80001b8c:	01010113          	addi	sp,sp,16
    80001b90:	00008067          	ret

0000000080001b94 <mycpu>:
    80001b94:	ff010113          	addi	sp,sp,-16
    80001b98:	00813423          	sd	s0,8(sp)
    80001b9c:	01010413          	addi	s0,sp,16
    80001ba0:	00020793          	mv	a5,tp
    80001ba4:	00813403          	ld	s0,8(sp)
    80001ba8:	0007879b          	sext.w	a5,a5
    80001bac:	00779793          	slli	a5,a5,0x7
    80001bb0:	00004517          	auipc	a0,0x4
    80001bb4:	b8050513          	addi	a0,a0,-1152 # 80005730 <cpus>
    80001bb8:	00f50533          	add	a0,a0,a5
    80001bbc:	01010113          	addi	sp,sp,16
    80001bc0:	00008067          	ret

0000000080001bc4 <userinit>:
    80001bc4:	ff010113          	addi	sp,sp,-16
    80001bc8:	00813423          	sd	s0,8(sp)
    80001bcc:	01010413          	addi	s0,sp,16
    80001bd0:	00813403          	ld	s0,8(sp)
    80001bd4:	01010113          	addi	sp,sp,16
    80001bd8:	00000317          	auipc	t1,0x0
    80001bdc:	86c30067          	jr	-1940(t1) # 80001444 <main>

0000000080001be0 <either_copyout>:
    80001be0:	ff010113          	addi	sp,sp,-16
    80001be4:	00813023          	sd	s0,0(sp)
    80001be8:	00113423          	sd	ra,8(sp)
    80001bec:	01010413          	addi	s0,sp,16
    80001bf0:	02051663          	bnez	a0,80001c1c <either_copyout+0x3c>
    80001bf4:	00058513          	mv	a0,a1
    80001bf8:	00060593          	mv	a1,a2
    80001bfc:	0006861b          	sext.w	a2,a3
    80001c00:	00002097          	auipc	ra,0x2
    80001c04:	c54080e7          	jalr	-940(ra) # 80003854 <__memmove>
    80001c08:	00813083          	ld	ra,8(sp)
    80001c0c:	00013403          	ld	s0,0(sp)
    80001c10:	00000513          	li	a0,0
    80001c14:	01010113          	addi	sp,sp,16
    80001c18:	00008067          	ret
    80001c1c:	00002517          	auipc	a0,0x2
    80001c20:	49c50513          	addi	a0,a0,1180 # 800040b8 <bntOne+0x60>
    80001c24:	00001097          	auipc	ra,0x1
    80001c28:	928080e7          	jalr	-1752(ra) # 8000254c <panic>

0000000080001c2c <either_copyin>:
    80001c2c:	ff010113          	addi	sp,sp,-16
    80001c30:	00813023          	sd	s0,0(sp)
    80001c34:	00113423          	sd	ra,8(sp)
    80001c38:	01010413          	addi	s0,sp,16
    80001c3c:	02059463          	bnez	a1,80001c64 <either_copyin+0x38>
    80001c40:	00060593          	mv	a1,a2
    80001c44:	0006861b          	sext.w	a2,a3
    80001c48:	00002097          	auipc	ra,0x2
    80001c4c:	c0c080e7          	jalr	-1012(ra) # 80003854 <__memmove>
    80001c50:	00813083          	ld	ra,8(sp)
    80001c54:	00013403          	ld	s0,0(sp)
    80001c58:	00000513          	li	a0,0
    80001c5c:	01010113          	addi	sp,sp,16
    80001c60:	00008067          	ret
    80001c64:	00002517          	auipc	a0,0x2
    80001c68:	47c50513          	addi	a0,a0,1148 # 800040e0 <bntOne+0x88>
    80001c6c:	00001097          	auipc	ra,0x1
    80001c70:	8e0080e7          	jalr	-1824(ra) # 8000254c <panic>

0000000080001c74 <trapinit>:
    80001c74:	ff010113          	addi	sp,sp,-16
    80001c78:	00813423          	sd	s0,8(sp)
    80001c7c:	01010413          	addi	s0,sp,16
    80001c80:	00813403          	ld	s0,8(sp)
    80001c84:	00002597          	auipc	a1,0x2
    80001c88:	48458593          	addi	a1,a1,1156 # 80004108 <bntOne+0xb0>
    80001c8c:	00004517          	auipc	a0,0x4
    80001c90:	b2450513          	addi	a0,a0,-1244 # 800057b0 <tickslock>
    80001c94:	01010113          	addi	sp,sp,16
    80001c98:	00001317          	auipc	t1,0x1
    80001c9c:	5c030067          	jr	1472(t1) # 80003258 <initlock>

0000000080001ca0 <trapinithart>:
    80001ca0:	ff010113          	addi	sp,sp,-16
    80001ca4:	00813423          	sd	s0,8(sp)
    80001ca8:	01010413          	addi	s0,sp,16
    80001cac:	00000797          	auipc	a5,0x0
    80001cb0:	2f478793          	addi	a5,a5,756 # 80001fa0 <kernelvec>
    80001cb4:	10579073          	csrw	stvec,a5
    80001cb8:	00813403          	ld	s0,8(sp)
    80001cbc:	01010113          	addi	sp,sp,16
    80001cc0:	00008067          	ret

0000000080001cc4 <usertrap>:
    80001cc4:	ff010113          	addi	sp,sp,-16
    80001cc8:	00813423          	sd	s0,8(sp)
    80001ccc:	01010413          	addi	s0,sp,16
    80001cd0:	00813403          	ld	s0,8(sp)
    80001cd4:	01010113          	addi	sp,sp,16
    80001cd8:	00008067          	ret

0000000080001cdc <usertrapret>:
    80001cdc:	ff010113          	addi	sp,sp,-16
    80001ce0:	00813423          	sd	s0,8(sp)
    80001ce4:	01010413          	addi	s0,sp,16
    80001ce8:	00813403          	ld	s0,8(sp)
    80001cec:	01010113          	addi	sp,sp,16
    80001cf0:	00008067          	ret

0000000080001cf4 <kerneltrap>:
    80001cf4:	fe010113          	addi	sp,sp,-32
    80001cf8:	00813823          	sd	s0,16(sp)
    80001cfc:	00113c23          	sd	ra,24(sp)
    80001d00:	00913423          	sd	s1,8(sp)
    80001d04:	02010413          	addi	s0,sp,32
    80001d08:	142025f3          	csrr	a1,scause
    80001d0c:	100027f3          	csrr	a5,sstatus
    80001d10:	0027f793          	andi	a5,a5,2
    80001d14:	10079c63          	bnez	a5,80001e2c <kerneltrap+0x138>
    80001d18:	142027f3          	csrr	a5,scause
    80001d1c:	0207ce63          	bltz	a5,80001d58 <kerneltrap+0x64>
    80001d20:	00002517          	auipc	a0,0x2
    80001d24:	43050513          	addi	a0,a0,1072 # 80004150 <bntOne+0xf8>
    80001d28:	00001097          	auipc	ra,0x1
    80001d2c:	880080e7          	jalr	-1920(ra) # 800025a8 <__printf>
    80001d30:	141025f3          	csrr	a1,sepc
    80001d34:	14302673          	csrr	a2,stval
    80001d38:	00002517          	auipc	a0,0x2
    80001d3c:	42850513          	addi	a0,a0,1064 # 80004160 <bntOne+0x108>
    80001d40:	00001097          	auipc	ra,0x1
    80001d44:	868080e7          	jalr	-1944(ra) # 800025a8 <__printf>
    80001d48:	00002517          	auipc	a0,0x2
    80001d4c:	43050513          	addi	a0,a0,1072 # 80004178 <bntOne+0x120>
    80001d50:	00000097          	auipc	ra,0x0
    80001d54:	7fc080e7          	jalr	2044(ra) # 8000254c <panic>
    80001d58:	0ff7f713          	andi	a4,a5,255
    80001d5c:	00900693          	li	a3,9
    80001d60:	04d70063          	beq	a4,a3,80001da0 <kerneltrap+0xac>
    80001d64:	fff00713          	li	a4,-1
    80001d68:	03f71713          	slli	a4,a4,0x3f
    80001d6c:	00170713          	addi	a4,a4,1
    80001d70:	fae798e3          	bne	a5,a4,80001d20 <kerneltrap+0x2c>
    80001d74:	00000097          	auipc	ra,0x0
    80001d78:	e00080e7          	jalr	-512(ra) # 80001b74 <cpuid>
    80001d7c:	06050663          	beqz	a0,80001de8 <kerneltrap+0xf4>
    80001d80:	144027f3          	csrr	a5,sip
    80001d84:	ffd7f793          	andi	a5,a5,-3
    80001d88:	14479073          	csrw	sip,a5
    80001d8c:	01813083          	ld	ra,24(sp)
    80001d90:	01013403          	ld	s0,16(sp)
    80001d94:	00813483          	ld	s1,8(sp)
    80001d98:	02010113          	addi	sp,sp,32
    80001d9c:	00008067          	ret
    80001da0:	00000097          	auipc	ra,0x0
    80001da4:	3c4080e7          	jalr	964(ra) # 80002164 <plic_claim>
    80001da8:	00a00793          	li	a5,10
    80001dac:	00050493          	mv	s1,a0
    80001db0:	06f50863          	beq	a0,a5,80001e20 <kerneltrap+0x12c>
    80001db4:	fc050ce3          	beqz	a0,80001d8c <kerneltrap+0x98>
    80001db8:	00050593          	mv	a1,a0
    80001dbc:	00002517          	auipc	a0,0x2
    80001dc0:	37450513          	addi	a0,a0,884 # 80004130 <bntOne+0xd8>
    80001dc4:	00000097          	auipc	ra,0x0
    80001dc8:	7e4080e7          	jalr	2020(ra) # 800025a8 <__printf>
    80001dcc:	01013403          	ld	s0,16(sp)
    80001dd0:	01813083          	ld	ra,24(sp)
    80001dd4:	00048513          	mv	a0,s1
    80001dd8:	00813483          	ld	s1,8(sp)
    80001ddc:	02010113          	addi	sp,sp,32
    80001de0:	00000317          	auipc	t1,0x0
    80001de4:	3bc30067          	jr	956(t1) # 8000219c <plic_complete>
    80001de8:	00004517          	auipc	a0,0x4
    80001dec:	9c850513          	addi	a0,a0,-1592 # 800057b0 <tickslock>
    80001df0:	00001097          	auipc	ra,0x1
    80001df4:	48c080e7          	jalr	1164(ra) # 8000327c <acquire>
    80001df8:	00003717          	auipc	a4,0x3
    80001dfc:	8bc70713          	addi	a4,a4,-1860 # 800046b4 <ticks>
    80001e00:	00072783          	lw	a5,0(a4)
    80001e04:	00004517          	auipc	a0,0x4
    80001e08:	9ac50513          	addi	a0,a0,-1620 # 800057b0 <tickslock>
    80001e0c:	0017879b          	addiw	a5,a5,1
    80001e10:	00f72023          	sw	a5,0(a4)
    80001e14:	00001097          	auipc	ra,0x1
    80001e18:	534080e7          	jalr	1332(ra) # 80003348 <release>
    80001e1c:	f65ff06f          	j	80001d80 <kerneltrap+0x8c>
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	090080e7          	jalr	144(ra) # 80002eb0 <uartintr>
    80001e28:	fa5ff06f          	j	80001dcc <kerneltrap+0xd8>
    80001e2c:	00002517          	auipc	a0,0x2
    80001e30:	2e450513          	addi	a0,a0,740 # 80004110 <bntOne+0xb8>
    80001e34:	00000097          	auipc	ra,0x0
    80001e38:	718080e7          	jalr	1816(ra) # 8000254c <panic>

0000000080001e3c <clockintr>:
    80001e3c:	fe010113          	addi	sp,sp,-32
    80001e40:	00813823          	sd	s0,16(sp)
    80001e44:	00913423          	sd	s1,8(sp)
    80001e48:	00113c23          	sd	ra,24(sp)
    80001e4c:	02010413          	addi	s0,sp,32
    80001e50:	00004497          	auipc	s1,0x4
    80001e54:	96048493          	addi	s1,s1,-1696 # 800057b0 <tickslock>
    80001e58:	00048513          	mv	a0,s1
    80001e5c:	00001097          	auipc	ra,0x1
    80001e60:	420080e7          	jalr	1056(ra) # 8000327c <acquire>
    80001e64:	00003717          	auipc	a4,0x3
    80001e68:	85070713          	addi	a4,a4,-1968 # 800046b4 <ticks>
    80001e6c:	00072783          	lw	a5,0(a4)
    80001e70:	01013403          	ld	s0,16(sp)
    80001e74:	01813083          	ld	ra,24(sp)
    80001e78:	00048513          	mv	a0,s1
    80001e7c:	0017879b          	addiw	a5,a5,1
    80001e80:	00813483          	ld	s1,8(sp)
    80001e84:	00f72023          	sw	a5,0(a4)
    80001e88:	02010113          	addi	sp,sp,32
    80001e8c:	00001317          	auipc	t1,0x1
    80001e90:	4bc30067          	jr	1212(t1) # 80003348 <release>

0000000080001e94 <devintr>:
    80001e94:	142027f3          	csrr	a5,scause
    80001e98:	00000513          	li	a0,0
    80001e9c:	0007c463          	bltz	a5,80001ea4 <devintr+0x10>
    80001ea0:	00008067          	ret
    80001ea4:	fe010113          	addi	sp,sp,-32
    80001ea8:	00813823          	sd	s0,16(sp)
    80001eac:	00113c23          	sd	ra,24(sp)
    80001eb0:	00913423          	sd	s1,8(sp)
    80001eb4:	02010413          	addi	s0,sp,32
    80001eb8:	0ff7f713          	andi	a4,a5,255
    80001ebc:	00900693          	li	a3,9
    80001ec0:	04d70c63          	beq	a4,a3,80001f18 <devintr+0x84>
    80001ec4:	fff00713          	li	a4,-1
    80001ec8:	03f71713          	slli	a4,a4,0x3f
    80001ecc:	00170713          	addi	a4,a4,1
    80001ed0:	00e78c63          	beq	a5,a4,80001ee8 <devintr+0x54>
    80001ed4:	01813083          	ld	ra,24(sp)
    80001ed8:	01013403          	ld	s0,16(sp)
    80001edc:	00813483          	ld	s1,8(sp)
    80001ee0:	02010113          	addi	sp,sp,32
    80001ee4:	00008067          	ret
    80001ee8:	00000097          	auipc	ra,0x0
    80001eec:	c8c080e7          	jalr	-884(ra) # 80001b74 <cpuid>
    80001ef0:	06050663          	beqz	a0,80001f5c <devintr+0xc8>
    80001ef4:	144027f3          	csrr	a5,sip
    80001ef8:	ffd7f793          	andi	a5,a5,-3
    80001efc:	14479073          	csrw	sip,a5
    80001f00:	01813083          	ld	ra,24(sp)
    80001f04:	01013403          	ld	s0,16(sp)
    80001f08:	00813483          	ld	s1,8(sp)
    80001f0c:	00200513          	li	a0,2
    80001f10:	02010113          	addi	sp,sp,32
    80001f14:	00008067          	ret
    80001f18:	00000097          	auipc	ra,0x0
    80001f1c:	24c080e7          	jalr	588(ra) # 80002164 <plic_claim>
    80001f20:	00a00793          	li	a5,10
    80001f24:	00050493          	mv	s1,a0
    80001f28:	06f50663          	beq	a0,a5,80001f94 <devintr+0x100>
    80001f2c:	00100513          	li	a0,1
    80001f30:	fa0482e3          	beqz	s1,80001ed4 <devintr+0x40>
    80001f34:	00048593          	mv	a1,s1
    80001f38:	00002517          	auipc	a0,0x2
    80001f3c:	1f850513          	addi	a0,a0,504 # 80004130 <bntOne+0xd8>
    80001f40:	00000097          	auipc	ra,0x0
    80001f44:	668080e7          	jalr	1640(ra) # 800025a8 <__printf>
    80001f48:	00048513          	mv	a0,s1
    80001f4c:	00000097          	auipc	ra,0x0
    80001f50:	250080e7          	jalr	592(ra) # 8000219c <plic_complete>
    80001f54:	00100513          	li	a0,1
    80001f58:	f7dff06f          	j	80001ed4 <devintr+0x40>
    80001f5c:	00004517          	auipc	a0,0x4
    80001f60:	85450513          	addi	a0,a0,-1964 # 800057b0 <tickslock>
    80001f64:	00001097          	auipc	ra,0x1
    80001f68:	318080e7          	jalr	792(ra) # 8000327c <acquire>
    80001f6c:	00002717          	auipc	a4,0x2
    80001f70:	74870713          	addi	a4,a4,1864 # 800046b4 <ticks>
    80001f74:	00072783          	lw	a5,0(a4)
    80001f78:	00004517          	auipc	a0,0x4
    80001f7c:	83850513          	addi	a0,a0,-1992 # 800057b0 <tickslock>
    80001f80:	0017879b          	addiw	a5,a5,1
    80001f84:	00f72023          	sw	a5,0(a4)
    80001f88:	00001097          	auipc	ra,0x1
    80001f8c:	3c0080e7          	jalr	960(ra) # 80003348 <release>
    80001f90:	f65ff06f          	j	80001ef4 <devintr+0x60>
    80001f94:	00001097          	auipc	ra,0x1
    80001f98:	f1c080e7          	jalr	-228(ra) # 80002eb0 <uartintr>
    80001f9c:	fadff06f          	j	80001f48 <devintr+0xb4>

0000000080001fa0 <kernelvec>:
    80001fa0:	f0010113          	addi	sp,sp,-256
    80001fa4:	00113023          	sd	ra,0(sp)
    80001fa8:	00213423          	sd	sp,8(sp)
    80001fac:	00313823          	sd	gp,16(sp)
    80001fb0:	00413c23          	sd	tp,24(sp)
    80001fb4:	02513023          	sd	t0,32(sp)
    80001fb8:	02613423          	sd	t1,40(sp)
    80001fbc:	02713823          	sd	t2,48(sp)
    80001fc0:	02813c23          	sd	s0,56(sp)
    80001fc4:	04913023          	sd	s1,64(sp)
    80001fc8:	04a13423          	sd	a0,72(sp)
    80001fcc:	04b13823          	sd	a1,80(sp)
    80001fd0:	04c13c23          	sd	a2,88(sp)
    80001fd4:	06d13023          	sd	a3,96(sp)
    80001fd8:	06e13423          	sd	a4,104(sp)
    80001fdc:	06f13823          	sd	a5,112(sp)
    80001fe0:	07013c23          	sd	a6,120(sp)
    80001fe4:	09113023          	sd	a7,128(sp)
    80001fe8:	09213423          	sd	s2,136(sp)
    80001fec:	09313823          	sd	s3,144(sp)
    80001ff0:	09413c23          	sd	s4,152(sp)
    80001ff4:	0b513023          	sd	s5,160(sp)
    80001ff8:	0b613423          	sd	s6,168(sp)
    80001ffc:	0b713823          	sd	s7,176(sp)
    80002000:	0b813c23          	sd	s8,184(sp)
    80002004:	0d913023          	sd	s9,192(sp)
    80002008:	0da13423          	sd	s10,200(sp)
    8000200c:	0db13823          	sd	s11,208(sp)
    80002010:	0dc13c23          	sd	t3,216(sp)
    80002014:	0fd13023          	sd	t4,224(sp)
    80002018:	0fe13423          	sd	t5,232(sp)
    8000201c:	0ff13823          	sd	t6,240(sp)
    80002020:	cd5ff0ef          	jal	ra,80001cf4 <kerneltrap>
    80002024:	00013083          	ld	ra,0(sp)
    80002028:	00813103          	ld	sp,8(sp)
    8000202c:	01013183          	ld	gp,16(sp)
    80002030:	02013283          	ld	t0,32(sp)
    80002034:	02813303          	ld	t1,40(sp)
    80002038:	03013383          	ld	t2,48(sp)
    8000203c:	03813403          	ld	s0,56(sp)
    80002040:	04013483          	ld	s1,64(sp)
    80002044:	04813503          	ld	a0,72(sp)
    80002048:	05013583          	ld	a1,80(sp)
    8000204c:	05813603          	ld	a2,88(sp)
    80002050:	06013683          	ld	a3,96(sp)
    80002054:	06813703          	ld	a4,104(sp)
    80002058:	07013783          	ld	a5,112(sp)
    8000205c:	07813803          	ld	a6,120(sp)
    80002060:	08013883          	ld	a7,128(sp)
    80002064:	08813903          	ld	s2,136(sp)
    80002068:	09013983          	ld	s3,144(sp)
    8000206c:	09813a03          	ld	s4,152(sp)
    80002070:	0a013a83          	ld	s5,160(sp)
    80002074:	0a813b03          	ld	s6,168(sp)
    80002078:	0b013b83          	ld	s7,176(sp)
    8000207c:	0b813c03          	ld	s8,184(sp)
    80002080:	0c013c83          	ld	s9,192(sp)
    80002084:	0c813d03          	ld	s10,200(sp)
    80002088:	0d013d83          	ld	s11,208(sp)
    8000208c:	0d813e03          	ld	t3,216(sp)
    80002090:	0e013e83          	ld	t4,224(sp)
    80002094:	0e813f03          	ld	t5,232(sp)
    80002098:	0f013f83          	ld	t6,240(sp)
    8000209c:	10010113          	addi	sp,sp,256
    800020a0:	10200073          	sret
    800020a4:	00000013          	nop
    800020a8:	00000013          	nop
    800020ac:	00000013          	nop

00000000800020b0 <timervec>:
    800020b0:	34051573          	csrrw	a0,mscratch,a0
    800020b4:	00b53023          	sd	a1,0(a0)
    800020b8:	00c53423          	sd	a2,8(a0)
    800020bc:	00d53823          	sd	a3,16(a0)
    800020c0:	01853583          	ld	a1,24(a0)
    800020c4:	02053603          	ld	a2,32(a0)
    800020c8:	0005b683          	ld	a3,0(a1)
    800020cc:	00c686b3          	add	a3,a3,a2
    800020d0:	00d5b023          	sd	a3,0(a1)
    800020d4:	00200593          	li	a1,2
    800020d8:	14459073          	csrw	sip,a1
    800020dc:	01053683          	ld	a3,16(a0)
    800020e0:	00853603          	ld	a2,8(a0)
    800020e4:	00053583          	ld	a1,0(a0)
    800020e8:	34051573          	csrrw	a0,mscratch,a0
    800020ec:	30200073          	mret

00000000800020f0 <plicinit>:
    800020f0:	ff010113          	addi	sp,sp,-16
    800020f4:	00813423          	sd	s0,8(sp)
    800020f8:	01010413          	addi	s0,sp,16
    800020fc:	00813403          	ld	s0,8(sp)
    80002100:	0c0007b7          	lui	a5,0xc000
    80002104:	00100713          	li	a4,1
    80002108:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000210c:	00e7a223          	sw	a4,4(a5)
    80002110:	01010113          	addi	sp,sp,16
    80002114:	00008067          	ret

0000000080002118 <plicinithart>:
    80002118:	ff010113          	addi	sp,sp,-16
    8000211c:	00813023          	sd	s0,0(sp)
    80002120:	00113423          	sd	ra,8(sp)
    80002124:	01010413          	addi	s0,sp,16
    80002128:	00000097          	auipc	ra,0x0
    8000212c:	a4c080e7          	jalr	-1460(ra) # 80001b74 <cpuid>
    80002130:	0085171b          	slliw	a4,a0,0x8
    80002134:	0c0027b7          	lui	a5,0xc002
    80002138:	00e787b3          	add	a5,a5,a4
    8000213c:	40200713          	li	a4,1026
    80002140:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002144:	00813083          	ld	ra,8(sp)
    80002148:	00013403          	ld	s0,0(sp)
    8000214c:	00d5151b          	slliw	a0,a0,0xd
    80002150:	0c2017b7          	lui	a5,0xc201
    80002154:	00a78533          	add	a0,a5,a0
    80002158:	00052023          	sw	zero,0(a0)
    8000215c:	01010113          	addi	sp,sp,16
    80002160:	00008067          	ret

0000000080002164 <plic_claim>:
    80002164:	ff010113          	addi	sp,sp,-16
    80002168:	00813023          	sd	s0,0(sp)
    8000216c:	00113423          	sd	ra,8(sp)
    80002170:	01010413          	addi	s0,sp,16
    80002174:	00000097          	auipc	ra,0x0
    80002178:	a00080e7          	jalr	-1536(ra) # 80001b74 <cpuid>
    8000217c:	00813083          	ld	ra,8(sp)
    80002180:	00013403          	ld	s0,0(sp)
    80002184:	00d5151b          	slliw	a0,a0,0xd
    80002188:	0c2017b7          	lui	a5,0xc201
    8000218c:	00a78533          	add	a0,a5,a0
    80002190:	00452503          	lw	a0,4(a0)
    80002194:	01010113          	addi	sp,sp,16
    80002198:	00008067          	ret

000000008000219c <plic_complete>:
    8000219c:	fe010113          	addi	sp,sp,-32
    800021a0:	00813823          	sd	s0,16(sp)
    800021a4:	00913423          	sd	s1,8(sp)
    800021a8:	00113c23          	sd	ra,24(sp)
    800021ac:	02010413          	addi	s0,sp,32
    800021b0:	00050493          	mv	s1,a0
    800021b4:	00000097          	auipc	ra,0x0
    800021b8:	9c0080e7          	jalr	-1600(ra) # 80001b74 <cpuid>
    800021bc:	01813083          	ld	ra,24(sp)
    800021c0:	01013403          	ld	s0,16(sp)
    800021c4:	00d5179b          	slliw	a5,a0,0xd
    800021c8:	0c201737          	lui	a4,0xc201
    800021cc:	00f707b3          	add	a5,a4,a5
    800021d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800021d4:	00813483          	ld	s1,8(sp)
    800021d8:	02010113          	addi	sp,sp,32
    800021dc:	00008067          	ret

00000000800021e0 <consolewrite>:
    800021e0:	fb010113          	addi	sp,sp,-80
    800021e4:	04813023          	sd	s0,64(sp)
    800021e8:	04113423          	sd	ra,72(sp)
    800021ec:	02913c23          	sd	s1,56(sp)
    800021f0:	03213823          	sd	s2,48(sp)
    800021f4:	03313423          	sd	s3,40(sp)
    800021f8:	03413023          	sd	s4,32(sp)
    800021fc:	01513c23          	sd	s5,24(sp)
    80002200:	05010413          	addi	s0,sp,80
    80002204:	06c05c63          	blez	a2,8000227c <consolewrite+0x9c>
    80002208:	00060993          	mv	s3,a2
    8000220c:	00050a13          	mv	s4,a0
    80002210:	00058493          	mv	s1,a1
    80002214:	00000913          	li	s2,0
    80002218:	fff00a93          	li	s5,-1
    8000221c:	01c0006f          	j	80002238 <consolewrite+0x58>
    80002220:	fbf44503          	lbu	a0,-65(s0)
    80002224:	0019091b          	addiw	s2,s2,1
    80002228:	00148493          	addi	s1,s1,1
    8000222c:	00001097          	auipc	ra,0x1
    80002230:	a9c080e7          	jalr	-1380(ra) # 80002cc8 <uartputc>
    80002234:	03298063          	beq	s3,s2,80002254 <consolewrite+0x74>
    80002238:	00048613          	mv	a2,s1
    8000223c:	00100693          	li	a3,1
    80002240:	000a0593          	mv	a1,s4
    80002244:	fbf40513          	addi	a0,s0,-65
    80002248:	00000097          	auipc	ra,0x0
    8000224c:	9e4080e7          	jalr	-1564(ra) # 80001c2c <either_copyin>
    80002250:	fd5518e3          	bne	a0,s5,80002220 <consolewrite+0x40>
    80002254:	04813083          	ld	ra,72(sp)
    80002258:	04013403          	ld	s0,64(sp)
    8000225c:	03813483          	ld	s1,56(sp)
    80002260:	02813983          	ld	s3,40(sp)
    80002264:	02013a03          	ld	s4,32(sp)
    80002268:	01813a83          	ld	s5,24(sp)
    8000226c:	00090513          	mv	a0,s2
    80002270:	03013903          	ld	s2,48(sp)
    80002274:	05010113          	addi	sp,sp,80
    80002278:	00008067          	ret
    8000227c:	00000913          	li	s2,0
    80002280:	fd5ff06f          	j	80002254 <consolewrite+0x74>

0000000080002284 <consoleread>:
    80002284:	f9010113          	addi	sp,sp,-112
    80002288:	06813023          	sd	s0,96(sp)
    8000228c:	04913c23          	sd	s1,88(sp)
    80002290:	05213823          	sd	s2,80(sp)
    80002294:	05313423          	sd	s3,72(sp)
    80002298:	05413023          	sd	s4,64(sp)
    8000229c:	03513c23          	sd	s5,56(sp)
    800022a0:	03613823          	sd	s6,48(sp)
    800022a4:	03713423          	sd	s7,40(sp)
    800022a8:	03813023          	sd	s8,32(sp)
    800022ac:	06113423          	sd	ra,104(sp)
    800022b0:	01913c23          	sd	s9,24(sp)
    800022b4:	07010413          	addi	s0,sp,112
    800022b8:	00060b93          	mv	s7,a2
    800022bc:	00050913          	mv	s2,a0
    800022c0:	00058c13          	mv	s8,a1
    800022c4:	00060b1b          	sext.w	s6,a2
    800022c8:	00003497          	auipc	s1,0x3
    800022cc:	50048493          	addi	s1,s1,1280 # 800057c8 <cons>
    800022d0:	00400993          	li	s3,4
    800022d4:	fff00a13          	li	s4,-1
    800022d8:	00a00a93          	li	s5,10
    800022dc:	05705e63          	blez	s7,80002338 <consoleread+0xb4>
    800022e0:	09c4a703          	lw	a4,156(s1)
    800022e4:	0984a783          	lw	a5,152(s1)
    800022e8:	0007071b          	sext.w	a4,a4
    800022ec:	08e78463          	beq	a5,a4,80002374 <consoleread+0xf0>
    800022f0:	07f7f713          	andi	a4,a5,127
    800022f4:	00e48733          	add	a4,s1,a4
    800022f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800022fc:	0017869b          	addiw	a3,a5,1
    80002300:	08d4ac23          	sw	a3,152(s1)
    80002304:	00070c9b          	sext.w	s9,a4
    80002308:	0b370663          	beq	a4,s3,800023b4 <consoleread+0x130>
    8000230c:	00100693          	li	a3,1
    80002310:	f9f40613          	addi	a2,s0,-97
    80002314:	000c0593          	mv	a1,s8
    80002318:	00090513          	mv	a0,s2
    8000231c:	f8e40fa3          	sb	a4,-97(s0)
    80002320:	00000097          	auipc	ra,0x0
    80002324:	8c0080e7          	jalr	-1856(ra) # 80001be0 <either_copyout>
    80002328:	01450863          	beq	a0,s4,80002338 <consoleread+0xb4>
    8000232c:	001c0c13          	addi	s8,s8,1
    80002330:	fffb8b9b          	addiw	s7,s7,-1
    80002334:	fb5c94e3          	bne	s9,s5,800022dc <consoleread+0x58>
    80002338:	000b851b          	sext.w	a0,s7
    8000233c:	06813083          	ld	ra,104(sp)
    80002340:	06013403          	ld	s0,96(sp)
    80002344:	05813483          	ld	s1,88(sp)
    80002348:	05013903          	ld	s2,80(sp)
    8000234c:	04813983          	ld	s3,72(sp)
    80002350:	04013a03          	ld	s4,64(sp)
    80002354:	03813a83          	ld	s5,56(sp)
    80002358:	02813b83          	ld	s7,40(sp)
    8000235c:	02013c03          	ld	s8,32(sp)
    80002360:	01813c83          	ld	s9,24(sp)
    80002364:	40ab053b          	subw	a0,s6,a0
    80002368:	03013b03          	ld	s6,48(sp)
    8000236c:	07010113          	addi	sp,sp,112
    80002370:	00008067          	ret
    80002374:	00001097          	auipc	ra,0x1
    80002378:	1d8080e7          	jalr	472(ra) # 8000354c <push_on>
    8000237c:	0984a703          	lw	a4,152(s1)
    80002380:	09c4a783          	lw	a5,156(s1)
    80002384:	0007879b          	sext.w	a5,a5
    80002388:	fef70ce3          	beq	a4,a5,80002380 <consoleread+0xfc>
    8000238c:	00001097          	auipc	ra,0x1
    80002390:	234080e7          	jalr	564(ra) # 800035c0 <pop_on>
    80002394:	0984a783          	lw	a5,152(s1)
    80002398:	07f7f713          	andi	a4,a5,127
    8000239c:	00e48733          	add	a4,s1,a4
    800023a0:	01874703          	lbu	a4,24(a4)
    800023a4:	0017869b          	addiw	a3,a5,1
    800023a8:	08d4ac23          	sw	a3,152(s1)
    800023ac:	00070c9b          	sext.w	s9,a4
    800023b0:	f5371ee3          	bne	a4,s3,8000230c <consoleread+0x88>
    800023b4:	000b851b          	sext.w	a0,s7
    800023b8:	f96bf2e3          	bgeu	s7,s6,8000233c <consoleread+0xb8>
    800023bc:	08f4ac23          	sw	a5,152(s1)
    800023c0:	f7dff06f          	j	8000233c <consoleread+0xb8>

00000000800023c4 <consputc>:
    800023c4:	10000793          	li	a5,256
    800023c8:	00f50663          	beq	a0,a5,800023d4 <consputc+0x10>
    800023cc:	00001317          	auipc	t1,0x1
    800023d0:	9f430067          	jr	-1548(t1) # 80002dc0 <uartputc_sync>
    800023d4:	ff010113          	addi	sp,sp,-16
    800023d8:	00113423          	sd	ra,8(sp)
    800023dc:	00813023          	sd	s0,0(sp)
    800023e0:	01010413          	addi	s0,sp,16
    800023e4:	00800513          	li	a0,8
    800023e8:	00001097          	auipc	ra,0x1
    800023ec:	9d8080e7          	jalr	-1576(ra) # 80002dc0 <uartputc_sync>
    800023f0:	02000513          	li	a0,32
    800023f4:	00001097          	auipc	ra,0x1
    800023f8:	9cc080e7          	jalr	-1588(ra) # 80002dc0 <uartputc_sync>
    800023fc:	00013403          	ld	s0,0(sp)
    80002400:	00813083          	ld	ra,8(sp)
    80002404:	00800513          	li	a0,8
    80002408:	01010113          	addi	sp,sp,16
    8000240c:	00001317          	auipc	t1,0x1
    80002410:	9b430067          	jr	-1612(t1) # 80002dc0 <uartputc_sync>

0000000080002414 <consoleintr>:
    80002414:	fe010113          	addi	sp,sp,-32
    80002418:	00813823          	sd	s0,16(sp)
    8000241c:	00913423          	sd	s1,8(sp)
    80002420:	01213023          	sd	s2,0(sp)
    80002424:	00113c23          	sd	ra,24(sp)
    80002428:	02010413          	addi	s0,sp,32
    8000242c:	00003917          	auipc	s2,0x3
    80002430:	39c90913          	addi	s2,s2,924 # 800057c8 <cons>
    80002434:	00050493          	mv	s1,a0
    80002438:	00090513          	mv	a0,s2
    8000243c:	00001097          	auipc	ra,0x1
    80002440:	e40080e7          	jalr	-448(ra) # 8000327c <acquire>
    80002444:	02048c63          	beqz	s1,8000247c <consoleintr+0x68>
    80002448:	0a092783          	lw	a5,160(s2)
    8000244c:	09892703          	lw	a4,152(s2)
    80002450:	07f00693          	li	a3,127
    80002454:	40e7873b          	subw	a4,a5,a4
    80002458:	02e6e263          	bltu	a3,a4,8000247c <consoleintr+0x68>
    8000245c:	00d00713          	li	a4,13
    80002460:	04e48063          	beq	s1,a4,800024a0 <consoleintr+0x8c>
    80002464:	07f7f713          	andi	a4,a5,127
    80002468:	00e90733          	add	a4,s2,a4
    8000246c:	0017879b          	addiw	a5,a5,1
    80002470:	0af92023          	sw	a5,160(s2)
    80002474:	00970c23          	sb	s1,24(a4)
    80002478:	08f92e23          	sw	a5,156(s2)
    8000247c:	01013403          	ld	s0,16(sp)
    80002480:	01813083          	ld	ra,24(sp)
    80002484:	00813483          	ld	s1,8(sp)
    80002488:	00013903          	ld	s2,0(sp)
    8000248c:	00003517          	auipc	a0,0x3
    80002490:	33c50513          	addi	a0,a0,828 # 800057c8 <cons>
    80002494:	02010113          	addi	sp,sp,32
    80002498:	00001317          	auipc	t1,0x1
    8000249c:	eb030067          	jr	-336(t1) # 80003348 <release>
    800024a0:	00a00493          	li	s1,10
    800024a4:	fc1ff06f          	j	80002464 <consoleintr+0x50>

00000000800024a8 <consoleinit>:
    800024a8:	fe010113          	addi	sp,sp,-32
    800024ac:	00113c23          	sd	ra,24(sp)
    800024b0:	00813823          	sd	s0,16(sp)
    800024b4:	00913423          	sd	s1,8(sp)
    800024b8:	02010413          	addi	s0,sp,32
    800024bc:	00003497          	auipc	s1,0x3
    800024c0:	30c48493          	addi	s1,s1,780 # 800057c8 <cons>
    800024c4:	00048513          	mv	a0,s1
    800024c8:	00002597          	auipc	a1,0x2
    800024cc:	cc058593          	addi	a1,a1,-832 # 80004188 <bntOne+0x130>
    800024d0:	00001097          	auipc	ra,0x1
    800024d4:	d88080e7          	jalr	-632(ra) # 80003258 <initlock>
    800024d8:	00000097          	auipc	ra,0x0
    800024dc:	7ac080e7          	jalr	1964(ra) # 80002c84 <uartinit>
    800024e0:	01813083          	ld	ra,24(sp)
    800024e4:	01013403          	ld	s0,16(sp)
    800024e8:	00000797          	auipc	a5,0x0
    800024ec:	d9c78793          	addi	a5,a5,-612 # 80002284 <consoleread>
    800024f0:	0af4bc23          	sd	a5,184(s1)
    800024f4:	00000797          	auipc	a5,0x0
    800024f8:	cec78793          	addi	a5,a5,-788 # 800021e0 <consolewrite>
    800024fc:	0cf4b023          	sd	a5,192(s1)
    80002500:	00813483          	ld	s1,8(sp)
    80002504:	02010113          	addi	sp,sp,32
    80002508:	00008067          	ret

000000008000250c <console_read>:
    8000250c:	ff010113          	addi	sp,sp,-16
    80002510:	00813423          	sd	s0,8(sp)
    80002514:	01010413          	addi	s0,sp,16
    80002518:	00813403          	ld	s0,8(sp)
    8000251c:	00003317          	auipc	t1,0x3
    80002520:	36433303          	ld	t1,868(t1) # 80005880 <devsw+0x10>
    80002524:	01010113          	addi	sp,sp,16
    80002528:	00030067          	jr	t1

000000008000252c <console_write>:
    8000252c:	ff010113          	addi	sp,sp,-16
    80002530:	00813423          	sd	s0,8(sp)
    80002534:	01010413          	addi	s0,sp,16
    80002538:	00813403          	ld	s0,8(sp)
    8000253c:	00003317          	auipc	t1,0x3
    80002540:	34c33303          	ld	t1,844(t1) # 80005888 <devsw+0x18>
    80002544:	01010113          	addi	sp,sp,16
    80002548:	00030067          	jr	t1

000000008000254c <panic>:
    8000254c:	fe010113          	addi	sp,sp,-32
    80002550:	00113c23          	sd	ra,24(sp)
    80002554:	00813823          	sd	s0,16(sp)
    80002558:	00913423          	sd	s1,8(sp)
    8000255c:	02010413          	addi	s0,sp,32
    80002560:	00050493          	mv	s1,a0
    80002564:	00002517          	auipc	a0,0x2
    80002568:	c2c50513          	addi	a0,a0,-980 # 80004190 <bntOne+0x138>
    8000256c:	00003797          	auipc	a5,0x3
    80002570:	3a07ae23          	sw	zero,956(a5) # 80005928 <pr+0x18>
    80002574:	00000097          	auipc	ra,0x0
    80002578:	034080e7          	jalr	52(ra) # 800025a8 <__printf>
    8000257c:	00048513          	mv	a0,s1
    80002580:	00000097          	auipc	ra,0x0
    80002584:	028080e7          	jalr	40(ra) # 800025a8 <__printf>
    80002588:	00002517          	auipc	a0,0x2
    8000258c:	be850513          	addi	a0,a0,-1048 # 80004170 <bntOne+0x118>
    80002590:	00000097          	auipc	ra,0x0
    80002594:	018080e7          	jalr	24(ra) # 800025a8 <__printf>
    80002598:	00100793          	li	a5,1
    8000259c:	00002717          	auipc	a4,0x2
    800025a0:	10f72e23          	sw	a5,284(a4) # 800046b8 <panicked>
    800025a4:	0000006f          	j	800025a4 <panic+0x58>

00000000800025a8 <__printf>:
    800025a8:	f3010113          	addi	sp,sp,-208
    800025ac:	08813023          	sd	s0,128(sp)
    800025b0:	07313423          	sd	s3,104(sp)
    800025b4:	09010413          	addi	s0,sp,144
    800025b8:	05813023          	sd	s8,64(sp)
    800025bc:	08113423          	sd	ra,136(sp)
    800025c0:	06913c23          	sd	s1,120(sp)
    800025c4:	07213823          	sd	s2,112(sp)
    800025c8:	07413023          	sd	s4,96(sp)
    800025cc:	05513c23          	sd	s5,88(sp)
    800025d0:	05613823          	sd	s6,80(sp)
    800025d4:	05713423          	sd	s7,72(sp)
    800025d8:	03913c23          	sd	s9,56(sp)
    800025dc:	03a13823          	sd	s10,48(sp)
    800025e0:	03b13423          	sd	s11,40(sp)
    800025e4:	00003317          	auipc	t1,0x3
    800025e8:	32c30313          	addi	t1,t1,812 # 80005910 <pr>
    800025ec:	01832c03          	lw	s8,24(t1)
    800025f0:	00b43423          	sd	a1,8(s0)
    800025f4:	00c43823          	sd	a2,16(s0)
    800025f8:	00d43c23          	sd	a3,24(s0)
    800025fc:	02e43023          	sd	a4,32(s0)
    80002600:	02f43423          	sd	a5,40(s0)
    80002604:	03043823          	sd	a6,48(s0)
    80002608:	03143c23          	sd	a7,56(s0)
    8000260c:	00050993          	mv	s3,a0
    80002610:	4a0c1663          	bnez	s8,80002abc <__printf+0x514>
    80002614:	60098c63          	beqz	s3,80002c2c <__printf+0x684>
    80002618:	0009c503          	lbu	a0,0(s3)
    8000261c:	00840793          	addi	a5,s0,8
    80002620:	f6f43c23          	sd	a5,-136(s0)
    80002624:	00000493          	li	s1,0
    80002628:	22050063          	beqz	a0,80002848 <__printf+0x2a0>
    8000262c:	00002a37          	lui	s4,0x2
    80002630:	00018ab7          	lui	s5,0x18
    80002634:	000f4b37          	lui	s6,0xf4
    80002638:	00989bb7          	lui	s7,0x989
    8000263c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002640:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002644:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002648:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000264c:	00148c9b          	addiw	s9,s1,1
    80002650:	02500793          	li	a5,37
    80002654:	01998933          	add	s2,s3,s9
    80002658:	38f51263          	bne	a0,a5,800029dc <__printf+0x434>
    8000265c:	00094783          	lbu	a5,0(s2)
    80002660:	00078c9b          	sext.w	s9,a5
    80002664:	1e078263          	beqz	a5,80002848 <__printf+0x2a0>
    80002668:	0024849b          	addiw	s1,s1,2
    8000266c:	07000713          	li	a4,112
    80002670:	00998933          	add	s2,s3,s1
    80002674:	38e78a63          	beq	a5,a4,80002a08 <__printf+0x460>
    80002678:	20f76863          	bltu	a4,a5,80002888 <__printf+0x2e0>
    8000267c:	42a78863          	beq	a5,a0,80002aac <__printf+0x504>
    80002680:	06400713          	li	a4,100
    80002684:	40e79663          	bne	a5,a4,80002a90 <__printf+0x4e8>
    80002688:	f7843783          	ld	a5,-136(s0)
    8000268c:	0007a603          	lw	a2,0(a5)
    80002690:	00878793          	addi	a5,a5,8
    80002694:	f6f43c23          	sd	a5,-136(s0)
    80002698:	42064a63          	bltz	a2,80002acc <__printf+0x524>
    8000269c:	00a00713          	li	a4,10
    800026a0:	02e677bb          	remuw	a5,a2,a4
    800026a4:	00002d97          	auipc	s11,0x2
    800026a8:	b14d8d93          	addi	s11,s11,-1260 # 800041b8 <digits>
    800026ac:	00900593          	li	a1,9
    800026b0:	0006051b          	sext.w	a0,a2
    800026b4:	00000c93          	li	s9,0
    800026b8:	02079793          	slli	a5,a5,0x20
    800026bc:	0207d793          	srli	a5,a5,0x20
    800026c0:	00fd87b3          	add	a5,s11,a5
    800026c4:	0007c783          	lbu	a5,0(a5)
    800026c8:	02e656bb          	divuw	a3,a2,a4
    800026cc:	f8f40023          	sb	a5,-128(s0)
    800026d0:	14c5d863          	bge	a1,a2,80002820 <__printf+0x278>
    800026d4:	06300593          	li	a1,99
    800026d8:	00100c93          	li	s9,1
    800026dc:	02e6f7bb          	remuw	a5,a3,a4
    800026e0:	02079793          	slli	a5,a5,0x20
    800026e4:	0207d793          	srli	a5,a5,0x20
    800026e8:	00fd87b3          	add	a5,s11,a5
    800026ec:	0007c783          	lbu	a5,0(a5)
    800026f0:	02e6d73b          	divuw	a4,a3,a4
    800026f4:	f8f400a3          	sb	a5,-127(s0)
    800026f8:	12a5f463          	bgeu	a1,a0,80002820 <__printf+0x278>
    800026fc:	00a00693          	li	a3,10
    80002700:	00900593          	li	a1,9
    80002704:	02d777bb          	remuw	a5,a4,a3
    80002708:	02079793          	slli	a5,a5,0x20
    8000270c:	0207d793          	srli	a5,a5,0x20
    80002710:	00fd87b3          	add	a5,s11,a5
    80002714:	0007c503          	lbu	a0,0(a5)
    80002718:	02d757bb          	divuw	a5,a4,a3
    8000271c:	f8a40123          	sb	a0,-126(s0)
    80002720:	48e5f263          	bgeu	a1,a4,80002ba4 <__printf+0x5fc>
    80002724:	06300513          	li	a0,99
    80002728:	02d7f5bb          	remuw	a1,a5,a3
    8000272c:	02059593          	slli	a1,a1,0x20
    80002730:	0205d593          	srli	a1,a1,0x20
    80002734:	00bd85b3          	add	a1,s11,a1
    80002738:	0005c583          	lbu	a1,0(a1)
    8000273c:	02d7d7bb          	divuw	a5,a5,a3
    80002740:	f8b401a3          	sb	a1,-125(s0)
    80002744:	48e57263          	bgeu	a0,a4,80002bc8 <__printf+0x620>
    80002748:	3e700513          	li	a0,999
    8000274c:	02d7f5bb          	remuw	a1,a5,a3
    80002750:	02059593          	slli	a1,a1,0x20
    80002754:	0205d593          	srli	a1,a1,0x20
    80002758:	00bd85b3          	add	a1,s11,a1
    8000275c:	0005c583          	lbu	a1,0(a1)
    80002760:	02d7d7bb          	divuw	a5,a5,a3
    80002764:	f8b40223          	sb	a1,-124(s0)
    80002768:	46e57663          	bgeu	a0,a4,80002bd4 <__printf+0x62c>
    8000276c:	02d7f5bb          	remuw	a1,a5,a3
    80002770:	02059593          	slli	a1,a1,0x20
    80002774:	0205d593          	srli	a1,a1,0x20
    80002778:	00bd85b3          	add	a1,s11,a1
    8000277c:	0005c583          	lbu	a1,0(a1)
    80002780:	02d7d7bb          	divuw	a5,a5,a3
    80002784:	f8b402a3          	sb	a1,-123(s0)
    80002788:	46ea7863          	bgeu	s4,a4,80002bf8 <__printf+0x650>
    8000278c:	02d7f5bb          	remuw	a1,a5,a3
    80002790:	02059593          	slli	a1,a1,0x20
    80002794:	0205d593          	srli	a1,a1,0x20
    80002798:	00bd85b3          	add	a1,s11,a1
    8000279c:	0005c583          	lbu	a1,0(a1)
    800027a0:	02d7d7bb          	divuw	a5,a5,a3
    800027a4:	f8b40323          	sb	a1,-122(s0)
    800027a8:	3eeaf863          	bgeu	s5,a4,80002b98 <__printf+0x5f0>
    800027ac:	02d7f5bb          	remuw	a1,a5,a3
    800027b0:	02059593          	slli	a1,a1,0x20
    800027b4:	0205d593          	srli	a1,a1,0x20
    800027b8:	00bd85b3          	add	a1,s11,a1
    800027bc:	0005c583          	lbu	a1,0(a1)
    800027c0:	02d7d7bb          	divuw	a5,a5,a3
    800027c4:	f8b403a3          	sb	a1,-121(s0)
    800027c8:	42eb7e63          	bgeu	s6,a4,80002c04 <__printf+0x65c>
    800027cc:	02d7f5bb          	remuw	a1,a5,a3
    800027d0:	02059593          	slli	a1,a1,0x20
    800027d4:	0205d593          	srli	a1,a1,0x20
    800027d8:	00bd85b3          	add	a1,s11,a1
    800027dc:	0005c583          	lbu	a1,0(a1)
    800027e0:	02d7d7bb          	divuw	a5,a5,a3
    800027e4:	f8b40423          	sb	a1,-120(s0)
    800027e8:	42ebfc63          	bgeu	s7,a4,80002c20 <__printf+0x678>
    800027ec:	02079793          	slli	a5,a5,0x20
    800027f0:	0207d793          	srli	a5,a5,0x20
    800027f4:	00fd8db3          	add	s11,s11,a5
    800027f8:	000dc703          	lbu	a4,0(s11)
    800027fc:	00a00793          	li	a5,10
    80002800:	00900c93          	li	s9,9
    80002804:	f8e404a3          	sb	a4,-119(s0)
    80002808:	00065c63          	bgez	a2,80002820 <__printf+0x278>
    8000280c:	f9040713          	addi	a4,s0,-112
    80002810:	00f70733          	add	a4,a4,a5
    80002814:	02d00693          	li	a3,45
    80002818:	fed70823          	sb	a3,-16(a4)
    8000281c:	00078c93          	mv	s9,a5
    80002820:	f8040793          	addi	a5,s0,-128
    80002824:	01978cb3          	add	s9,a5,s9
    80002828:	f7f40d13          	addi	s10,s0,-129
    8000282c:	000cc503          	lbu	a0,0(s9)
    80002830:	fffc8c93          	addi	s9,s9,-1
    80002834:	00000097          	auipc	ra,0x0
    80002838:	b90080e7          	jalr	-1136(ra) # 800023c4 <consputc>
    8000283c:	ffac98e3          	bne	s9,s10,8000282c <__printf+0x284>
    80002840:	00094503          	lbu	a0,0(s2)
    80002844:	e00514e3          	bnez	a0,8000264c <__printf+0xa4>
    80002848:	1a0c1663          	bnez	s8,800029f4 <__printf+0x44c>
    8000284c:	08813083          	ld	ra,136(sp)
    80002850:	08013403          	ld	s0,128(sp)
    80002854:	07813483          	ld	s1,120(sp)
    80002858:	07013903          	ld	s2,112(sp)
    8000285c:	06813983          	ld	s3,104(sp)
    80002860:	06013a03          	ld	s4,96(sp)
    80002864:	05813a83          	ld	s5,88(sp)
    80002868:	05013b03          	ld	s6,80(sp)
    8000286c:	04813b83          	ld	s7,72(sp)
    80002870:	04013c03          	ld	s8,64(sp)
    80002874:	03813c83          	ld	s9,56(sp)
    80002878:	03013d03          	ld	s10,48(sp)
    8000287c:	02813d83          	ld	s11,40(sp)
    80002880:	0d010113          	addi	sp,sp,208
    80002884:	00008067          	ret
    80002888:	07300713          	li	a4,115
    8000288c:	1ce78a63          	beq	a5,a4,80002a60 <__printf+0x4b8>
    80002890:	07800713          	li	a4,120
    80002894:	1ee79e63          	bne	a5,a4,80002a90 <__printf+0x4e8>
    80002898:	f7843783          	ld	a5,-136(s0)
    8000289c:	0007a703          	lw	a4,0(a5)
    800028a0:	00878793          	addi	a5,a5,8
    800028a4:	f6f43c23          	sd	a5,-136(s0)
    800028a8:	28074263          	bltz	a4,80002b2c <__printf+0x584>
    800028ac:	00002d97          	auipc	s11,0x2
    800028b0:	90cd8d93          	addi	s11,s11,-1780 # 800041b8 <digits>
    800028b4:	00f77793          	andi	a5,a4,15
    800028b8:	00fd87b3          	add	a5,s11,a5
    800028bc:	0007c683          	lbu	a3,0(a5)
    800028c0:	00f00613          	li	a2,15
    800028c4:	0007079b          	sext.w	a5,a4
    800028c8:	f8d40023          	sb	a3,-128(s0)
    800028cc:	0047559b          	srliw	a1,a4,0x4
    800028d0:	0047569b          	srliw	a3,a4,0x4
    800028d4:	00000c93          	li	s9,0
    800028d8:	0ee65063          	bge	a2,a4,800029b8 <__printf+0x410>
    800028dc:	00f6f693          	andi	a3,a3,15
    800028e0:	00dd86b3          	add	a3,s11,a3
    800028e4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800028e8:	0087d79b          	srliw	a5,a5,0x8
    800028ec:	00100c93          	li	s9,1
    800028f0:	f8d400a3          	sb	a3,-127(s0)
    800028f4:	0cb67263          	bgeu	a2,a1,800029b8 <__printf+0x410>
    800028f8:	00f7f693          	andi	a3,a5,15
    800028fc:	00dd86b3          	add	a3,s11,a3
    80002900:	0006c583          	lbu	a1,0(a3)
    80002904:	00f00613          	li	a2,15
    80002908:	0047d69b          	srliw	a3,a5,0x4
    8000290c:	f8b40123          	sb	a1,-126(s0)
    80002910:	0047d593          	srli	a1,a5,0x4
    80002914:	28f67e63          	bgeu	a2,a5,80002bb0 <__printf+0x608>
    80002918:	00f6f693          	andi	a3,a3,15
    8000291c:	00dd86b3          	add	a3,s11,a3
    80002920:	0006c503          	lbu	a0,0(a3)
    80002924:	0087d813          	srli	a6,a5,0x8
    80002928:	0087d69b          	srliw	a3,a5,0x8
    8000292c:	f8a401a3          	sb	a0,-125(s0)
    80002930:	28b67663          	bgeu	a2,a1,80002bbc <__printf+0x614>
    80002934:	00f6f693          	andi	a3,a3,15
    80002938:	00dd86b3          	add	a3,s11,a3
    8000293c:	0006c583          	lbu	a1,0(a3)
    80002940:	00c7d513          	srli	a0,a5,0xc
    80002944:	00c7d69b          	srliw	a3,a5,0xc
    80002948:	f8b40223          	sb	a1,-124(s0)
    8000294c:	29067a63          	bgeu	a2,a6,80002be0 <__printf+0x638>
    80002950:	00f6f693          	andi	a3,a3,15
    80002954:	00dd86b3          	add	a3,s11,a3
    80002958:	0006c583          	lbu	a1,0(a3)
    8000295c:	0107d813          	srli	a6,a5,0x10
    80002960:	0107d69b          	srliw	a3,a5,0x10
    80002964:	f8b402a3          	sb	a1,-123(s0)
    80002968:	28a67263          	bgeu	a2,a0,80002bec <__printf+0x644>
    8000296c:	00f6f693          	andi	a3,a3,15
    80002970:	00dd86b3          	add	a3,s11,a3
    80002974:	0006c683          	lbu	a3,0(a3)
    80002978:	0147d79b          	srliw	a5,a5,0x14
    8000297c:	f8d40323          	sb	a3,-122(s0)
    80002980:	21067663          	bgeu	a2,a6,80002b8c <__printf+0x5e4>
    80002984:	02079793          	slli	a5,a5,0x20
    80002988:	0207d793          	srli	a5,a5,0x20
    8000298c:	00fd8db3          	add	s11,s11,a5
    80002990:	000dc683          	lbu	a3,0(s11)
    80002994:	00800793          	li	a5,8
    80002998:	00700c93          	li	s9,7
    8000299c:	f8d403a3          	sb	a3,-121(s0)
    800029a0:	00075c63          	bgez	a4,800029b8 <__printf+0x410>
    800029a4:	f9040713          	addi	a4,s0,-112
    800029a8:	00f70733          	add	a4,a4,a5
    800029ac:	02d00693          	li	a3,45
    800029b0:	fed70823          	sb	a3,-16(a4)
    800029b4:	00078c93          	mv	s9,a5
    800029b8:	f8040793          	addi	a5,s0,-128
    800029bc:	01978cb3          	add	s9,a5,s9
    800029c0:	f7f40d13          	addi	s10,s0,-129
    800029c4:	000cc503          	lbu	a0,0(s9)
    800029c8:	fffc8c93          	addi	s9,s9,-1
    800029cc:	00000097          	auipc	ra,0x0
    800029d0:	9f8080e7          	jalr	-1544(ra) # 800023c4 <consputc>
    800029d4:	ff9d18e3          	bne	s10,s9,800029c4 <__printf+0x41c>
    800029d8:	0100006f          	j	800029e8 <__printf+0x440>
    800029dc:	00000097          	auipc	ra,0x0
    800029e0:	9e8080e7          	jalr	-1560(ra) # 800023c4 <consputc>
    800029e4:	000c8493          	mv	s1,s9
    800029e8:	00094503          	lbu	a0,0(s2)
    800029ec:	c60510e3          	bnez	a0,8000264c <__printf+0xa4>
    800029f0:	e40c0ee3          	beqz	s8,8000284c <__printf+0x2a4>
    800029f4:	00003517          	auipc	a0,0x3
    800029f8:	f1c50513          	addi	a0,a0,-228 # 80005910 <pr>
    800029fc:	00001097          	auipc	ra,0x1
    80002a00:	94c080e7          	jalr	-1716(ra) # 80003348 <release>
    80002a04:	e49ff06f          	j	8000284c <__printf+0x2a4>
    80002a08:	f7843783          	ld	a5,-136(s0)
    80002a0c:	03000513          	li	a0,48
    80002a10:	01000d13          	li	s10,16
    80002a14:	00878713          	addi	a4,a5,8
    80002a18:	0007bc83          	ld	s9,0(a5)
    80002a1c:	f6e43c23          	sd	a4,-136(s0)
    80002a20:	00000097          	auipc	ra,0x0
    80002a24:	9a4080e7          	jalr	-1628(ra) # 800023c4 <consputc>
    80002a28:	07800513          	li	a0,120
    80002a2c:	00000097          	auipc	ra,0x0
    80002a30:	998080e7          	jalr	-1640(ra) # 800023c4 <consputc>
    80002a34:	00001d97          	auipc	s11,0x1
    80002a38:	784d8d93          	addi	s11,s11,1924 # 800041b8 <digits>
    80002a3c:	03ccd793          	srli	a5,s9,0x3c
    80002a40:	00fd87b3          	add	a5,s11,a5
    80002a44:	0007c503          	lbu	a0,0(a5)
    80002a48:	fffd0d1b          	addiw	s10,s10,-1
    80002a4c:	004c9c93          	slli	s9,s9,0x4
    80002a50:	00000097          	auipc	ra,0x0
    80002a54:	974080e7          	jalr	-1676(ra) # 800023c4 <consputc>
    80002a58:	fe0d12e3          	bnez	s10,80002a3c <__printf+0x494>
    80002a5c:	f8dff06f          	j	800029e8 <__printf+0x440>
    80002a60:	f7843783          	ld	a5,-136(s0)
    80002a64:	0007bc83          	ld	s9,0(a5)
    80002a68:	00878793          	addi	a5,a5,8
    80002a6c:	f6f43c23          	sd	a5,-136(s0)
    80002a70:	000c9a63          	bnez	s9,80002a84 <__printf+0x4dc>
    80002a74:	1080006f          	j	80002b7c <__printf+0x5d4>
    80002a78:	001c8c93          	addi	s9,s9,1
    80002a7c:	00000097          	auipc	ra,0x0
    80002a80:	948080e7          	jalr	-1720(ra) # 800023c4 <consputc>
    80002a84:	000cc503          	lbu	a0,0(s9)
    80002a88:	fe0518e3          	bnez	a0,80002a78 <__printf+0x4d0>
    80002a8c:	f5dff06f          	j	800029e8 <__printf+0x440>
    80002a90:	02500513          	li	a0,37
    80002a94:	00000097          	auipc	ra,0x0
    80002a98:	930080e7          	jalr	-1744(ra) # 800023c4 <consputc>
    80002a9c:	000c8513          	mv	a0,s9
    80002aa0:	00000097          	auipc	ra,0x0
    80002aa4:	924080e7          	jalr	-1756(ra) # 800023c4 <consputc>
    80002aa8:	f41ff06f          	j	800029e8 <__printf+0x440>
    80002aac:	02500513          	li	a0,37
    80002ab0:	00000097          	auipc	ra,0x0
    80002ab4:	914080e7          	jalr	-1772(ra) # 800023c4 <consputc>
    80002ab8:	f31ff06f          	j	800029e8 <__printf+0x440>
    80002abc:	00030513          	mv	a0,t1
    80002ac0:	00000097          	auipc	ra,0x0
    80002ac4:	7bc080e7          	jalr	1980(ra) # 8000327c <acquire>
    80002ac8:	b4dff06f          	j	80002614 <__printf+0x6c>
    80002acc:	40c0053b          	negw	a0,a2
    80002ad0:	00a00713          	li	a4,10
    80002ad4:	02e576bb          	remuw	a3,a0,a4
    80002ad8:	00001d97          	auipc	s11,0x1
    80002adc:	6e0d8d93          	addi	s11,s11,1760 # 800041b8 <digits>
    80002ae0:	ff700593          	li	a1,-9
    80002ae4:	02069693          	slli	a3,a3,0x20
    80002ae8:	0206d693          	srli	a3,a3,0x20
    80002aec:	00dd86b3          	add	a3,s11,a3
    80002af0:	0006c683          	lbu	a3,0(a3)
    80002af4:	02e557bb          	divuw	a5,a0,a4
    80002af8:	f8d40023          	sb	a3,-128(s0)
    80002afc:	10b65e63          	bge	a2,a1,80002c18 <__printf+0x670>
    80002b00:	06300593          	li	a1,99
    80002b04:	02e7f6bb          	remuw	a3,a5,a4
    80002b08:	02069693          	slli	a3,a3,0x20
    80002b0c:	0206d693          	srli	a3,a3,0x20
    80002b10:	00dd86b3          	add	a3,s11,a3
    80002b14:	0006c683          	lbu	a3,0(a3)
    80002b18:	02e7d73b          	divuw	a4,a5,a4
    80002b1c:	00200793          	li	a5,2
    80002b20:	f8d400a3          	sb	a3,-127(s0)
    80002b24:	bca5ece3          	bltu	a1,a0,800026fc <__printf+0x154>
    80002b28:	ce5ff06f          	j	8000280c <__printf+0x264>
    80002b2c:	40e007bb          	negw	a5,a4
    80002b30:	00001d97          	auipc	s11,0x1
    80002b34:	688d8d93          	addi	s11,s11,1672 # 800041b8 <digits>
    80002b38:	00f7f693          	andi	a3,a5,15
    80002b3c:	00dd86b3          	add	a3,s11,a3
    80002b40:	0006c583          	lbu	a1,0(a3)
    80002b44:	ff100613          	li	a2,-15
    80002b48:	0047d69b          	srliw	a3,a5,0x4
    80002b4c:	f8b40023          	sb	a1,-128(s0)
    80002b50:	0047d59b          	srliw	a1,a5,0x4
    80002b54:	0ac75e63          	bge	a4,a2,80002c10 <__printf+0x668>
    80002b58:	00f6f693          	andi	a3,a3,15
    80002b5c:	00dd86b3          	add	a3,s11,a3
    80002b60:	0006c603          	lbu	a2,0(a3)
    80002b64:	00f00693          	li	a3,15
    80002b68:	0087d79b          	srliw	a5,a5,0x8
    80002b6c:	f8c400a3          	sb	a2,-127(s0)
    80002b70:	d8b6e4e3          	bltu	a3,a1,800028f8 <__printf+0x350>
    80002b74:	00200793          	li	a5,2
    80002b78:	e2dff06f          	j	800029a4 <__printf+0x3fc>
    80002b7c:	00001c97          	auipc	s9,0x1
    80002b80:	61cc8c93          	addi	s9,s9,1564 # 80004198 <bntOne+0x140>
    80002b84:	02800513          	li	a0,40
    80002b88:	ef1ff06f          	j	80002a78 <__printf+0x4d0>
    80002b8c:	00700793          	li	a5,7
    80002b90:	00600c93          	li	s9,6
    80002b94:	e0dff06f          	j	800029a0 <__printf+0x3f8>
    80002b98:	00700793          	li	a5,7
    80002b9c:	00600c93          	li	s9,6
    80002ba0:	c69ff06f          	j	80002808 <__printf+0x260>
    80002ba4:	00300793          	li	a5,3
    80002ba8:	00200c93          	li	s9,2
    80002bac:	c5dff06f          	j	80002808 <__printf+0x260>
    80002bb0:	00300793          	li	a5,3
    80002bb4:	00200c93          	li	s9,2
    80002bb8:	de9ff06f          	j	800029a0 <__printf+0x3f8>
    80002bbc:	00400793          	li	a5,4
    80002bc0:	00300c93          	li	s9,3
    80002bc4:	dddff06f          	j	800029a0 <__printf+0x3f8>
    80002bc8:	00400793          	li	a5,4
    80002bcc:	00300c93          	li	s9,3
    80002bd0:	c39ff06f          	j	80002808 <__printf+0x260>
    80002bd4:	00500793          	li	a5,5
    80002bd8:	00400c93          	li	s9,4
    80002bdc:	c2dff06f          	j	80002808 <__printf+0x260>
    80002be0:	00500793          	li	a5,5
    80002be4:	00400c93          	li	s9,4
    80002be8:	db9ff06f          	j	800029a0 <__printf+0x3f8>
    80002bec:	00600793          	li	a5,6
    80002bf0:	00500c93          	li	s9,5
    80002bf4:	dadff06f          	j	800029a0 <__printf+0x3f8>
    80002bf8:	00600793          	li	a5,6
    80002bfc:	00500c93          	li	s9,5
    80002c00:	c09ff06f          	j	80002808 <__printf+0x260>
    80002c04:	00800793          	li	a5,8
    80002c08:	00700c93          	li	s9,7
    80002c0c:	bfdff06f          	j	80002808 <__printf+0x260>
    80002c10:	00100793          	li	a5,1
    80002c14:	d91ff06f          	j	800029a4 <__printf+0x3fc>
    80002c18:	00100793          	li	a5,1
    80002c1c:	bf1ff06f          	j	8000280c <__printf+0x264>
    80002c20:	00900793          	li	a5,9
    80002c24:	00800c93          	li	s9,8
    80002c28:	be1ff06f          	j	80002808 <__printf+0x260>
    80002c2c:	00001517          	auipc	a0,0x1
    80002c30:	57450513          	addi	a0,a0,1396 # 800041a0 <bntOne+0x148>
    80002c34:	00000097          	auipc	ra,0x0
    80002c38:	918080e7          	jalr	-1768(ra) # 8000254c <panic>

0000000080002c3c <printfinit>:
    80002c3c:	fe010113          	addi	sp,sp,-32
    80002c40:	00813823          	sd	s0,16(sp)
    80002c44:	00913423          	sd	s1,8(sp)
    80002c48:	00113c23          	sd	ra,24(sp)
    80002c4c:	02010413          	addi	s0,sp,32
    80002c50:	00003497          	auipc	s1,0x3
    80002c54:	cc048493          	addi	s1,s1,-832 # 80005910 <pr>
    80002c58:	00048513          	mv	a0,s1
    80002c5c:	00001597          	auipc	a1,0x1
    80002c60:	55458593          	addi	a1,a1,1364 # 800041b0 <bntOne+0x158>
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	5f4080e7          	jalr	1524(ra) # 80003258 <initlock>
    80002c6c:	01813083          	ld	ra,24(sp)
    80002c70:	01013403          	ld	s0,16(sp)
    80002c74:	0004ac23          	sw	zero,24(s1)
    80002c78:	00813483          	ld	s1,8(sp)
    80002c7c:	02010113          	addi	sp,sp,32
    80002c80:	00008067          	ret

0000000080002c84 <uartinit>:
    80002c84:	ff010113          	addi	sp,sp,-16
    80002c88:	00813423          	sd	s0,8(sp)
    80002c8c:	01010413          	addi	s0,sp,16
    80002c90:	100007b7          	lui	a5,0x10000
    80002c94:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002c98:	f8000713          	li	a4,-128
    80002c9c:	00e781a3          	sb	a4,3(a5)
    80002ca0:	00300713          	li	a4,3
    80002ca4:	00e78023          	sb	a4,0(a5)
    80002ca8:	000780a3          	sb	zero,1(a5)
    80002cac:	00e781a3          	sb	a4,3(a5)
    80002cb0:	00700693          	li	a3,7
    80002cb4:	00d78123          	sb	a3,2(a5)
    80002cb8:	00e780a3          	sb	a4,1(a5)
    80002cbc:	00813403          	ld	s0,8(sp)
    80002cc0:	01010113          	addi	sp,sp,16
    80002cc4:	00008067          	ret

0000000080002cc8 <uartputc>:
    80002cc8:	00002797          	auipc	a5,0x2
    80002ccc:	9f07a783          	lw	a5,-1552(a5) # 800046b8 <panicked>
    80002cd0:	00078463          	beqz	a5,80002cd8 <uartputc+0x10>
    80002cd4:	0000006f          	j	80002cd4 <uartputc+0xc>
    80002cd8:	fd010113          	addi	sp,sp,-48
    80002cdc:	02813023          	sd	s0,32(sp)
    80002ce0:	00913c23          	sd	s1,24(sp)
    80002ce4:	01213823          	sd	s2,16(sp)
    80002ce8:	01313423          	sd	s3,8(sp)
    80002cec:	02113423          	sd	ra,40(sp)
    80002cf0:	03010413          	addi	s0,sp,48
    80002cf4:	00002917          	auipc	s2,0x2
    80002cf8:	9cc90913          	addi	s2,s2,-1588 # 800046c0 <uart_tx_r>
    80002cfc:	00093783          	ld	a5,0(s2)
    80002d00:	00002497          	auipc	s1,0x2
    80002d04:	9c848493          	addi	s1,s1,-1592 # 800046c8 <uart_tx_w>
    80002d08:	0004b703          	ld	a4,0(s1)
    80002d0c:	02078693          	addi	a3,a5,32
    80002d10:	00050993          	mv	s3,a0
    80002d14:	02e69c63          	bne	a3,a4,80002d4c <uartputc+0x84>
    80002d18:	00001097          	auipc	ra,0x1
    80002d1c:	834080e7          	jalr	-1996(ra) # 8000354c <push_on>
    80002d20:	00093783          	ld	a5,0(s2)
    80002d24:	0004b703          	ld	a4,0(s1)
    80002d28:	02078793          	addi	a5,a5,32
    80002d2c:	00e79463          	bne	a5,a4,80002d34 <uartputc+0x6c>
    80002d30:	0000006f          	j	80002d30 <uartputc+0x68>
    80002d34:	00001097          	auipc	ra,0x1
    80002d38:	88c080e7          	jalr	-1908(ra) # 800035c0 <pop_on>
    80002d3c:	00093783          	ld	a5,0(s2)
    80002d40:	0004b703          	ld	a4,0(s1)
    80002d44:	02078693          	addi	a3,a5,32
    80002d48:	fce688e3          	beq	a3,a4,80002d18 <uartputc+0x50>
    80002d4c:	01f77693          	andi	a3,a4,31
    80002d50:	00003597          	auipc	a1,0x3
    80002d54:	be058593          	addi	a1,a1,-1056 # 80005930 <uart_tx_buf>
    80002d58:	00d586b3          	add	a3,a1,a3
    80002d5c:	00170713          	addi	a4,a4,1
    80002d60:	01368023          	sb	s3,0(a3)
    80002d64:	00e4b023          	sd	a4,0(s1)
    80002d68:	10000637          	lui	a2,0x10000
    80002d6c:	02f71063          	bne	a4,a5,80002d8c <uartputc+0xc4>
    80002d70:	0340006f          	j	80002da4 <uartputc+0xdc>
    80002d74:	00074703          	lbu	a4,0(a4)
    80002d78:	00f93023          	sd	a5,0(s2)
    80002d7c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002d80:	00093783          	ld	a5,0(s2)
    80002d84:	0004b703          	ld	a4,0(s1)
    80002d88:	00f70e63          	beq	a4,a5,80002da4 <uartputc+0xdc>
    80002d8c:	00564683          	lbu	a3,5(a2)
    80002d90:	01f7f713          	andi	a4,a5,31
    80002d94:	00e58733          	add	a4,a1,a4
    80002d98:	0206f693          	andi	a3,a3,32
    80002d9c:	00178793          	addi	a5,a5,1
    80002da0:	fc069ae3          	bnez	a3,80002d74 <uartputc+0xac>
    80002da4:	02813083          	ld	ra,40(sp)
    80002da8:	02013403          	ld	s0,32(sp)
    80002dac:	01813483          	ld	s1,24(sp)
    80002db0:	01013903          	ld	s2,16(sp)
    80002db4:	00813983          	ld	s3,8(sp)
    80002db8:	03010113          	addi	sp,sp,48
    80002dbc:	00008067          	ret

0000000080002dc0 <uartputc_sync>:
    80002dc0:	ff010113          	addi	sp,sp,-16
    80002dc4:	00813423          	sd	s0,8(sp)
    80002dc8:	01010413          	addi	s0,sp,16
    80002dcc:	00002717          	auipc	a4,0x2
    80002dd0:	8ec72703          	lw	a4,-1812(a4) # 800046b8 <panicked>
    80002dd4:	02071663          	bnez	a4,80002e00 <uartputc_sync+0x40>
    80002dd8:	00050793          	mv	a5,a0
    80002ddc:	100006b7          	lui	a3,0x10000
    80002de0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002de4:	02077713          	andi	a4,a4,32
    80002de8:	fe070ce3          	beqz	a4,80002de0 <uartputc_sync+0x20>
    80002dec:	0ff7f793          	andi	a5,a5,255
    80002df0:	00f68023          	sb	a5,0(a3)
    80002df4:	00813403          	ld	s0,8(sp)
    80002df8:	01010113          	addi	sp,sp,16
    80002dfc:	00008067          	ret
    80002e00:	0000006f          	j	80002e00 <uartputc_sync+0x40>

0000000080002e04 <uartstart>:
    80002e04:	ff010113          	addi	sp,sp,-16
    80002e08:	00813423          	sd	s0,8(sp)
    80002e0c:	01010413          	addi	s0,sp,16
    80002e10:	00002617          	auipc	a2,0x2
    80002e14:	8b060613          	addi	a2,a2,-1872 # 800046c0 <uart_tx_r>
    80002e18:	00002517          	auipc	a0,0x2
    80002e1c:	8b050513          	addi	a0,a0,-1872 # 800046c8 <uart_tx_w>
    80002e20:	00063783          	ld	a5,0(a2)
    80002e24:	00053703          	ld	a4,0(a0)
    80002e28:	04f70263          	beq	a4,a5,80002e6c <uartstart+0x68>
    80002e2c:	100005b7          	lui	a1,0x10000
    80002e30:	00003817          	auipc	a6,0x3
    80002e34:	b0080813          	addi	a6,a6,-1280 # 80005930 <uart_tx_buf>
    80002e38:	01c0006f          	j	80002e54 <uartstart+0x50>
    80002e3c:	0006c703          	lbu	a4,0(a3)
    80002e40:	00f63023          	sd	a5,0(a2)
    80002e44:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002e48:	00063783          	ld	a5,0(a2)
    80002e4c:	00053703          	ld	a4,0(a0)
    80002e50:	00f70e63          	beq	a4,a5,80002e6c <uartstart+0x68>
    80002e54:	01f7f713          	andi	a4,a5,31
    80002e58:	00e806b3          	add	a3,a6,a4
    80002e5c:	0055c703          	lbu	a4,5(a1)
    80002e60:	00178793          	addi	a5,a5,1
    80002e64:	02077713          	andi	a4,a4,32
    80002e68:	fc071ae3          	bnez	a4,80002e3c <uartstart+0x38>
    80002e6c:	00813403          	ld	s0,8(sp)
    80002e70:	01010113          	addi	sp,sp,16
    80002e74:	00008067          	ret

0000000080002e78 <uartgetc>:
    80002e78:	ff010113          	addi	sp,sp,-16
    80002e7c:	00813423          	sd	s0,8(sp)
    80002e80:	01010413          	addi	s0,sp,16
    80002e84:	10000737          	lui	a4,0x10000
    80002e88:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002e8c:	0017f793          	andi	a5,a5,1
    80002e90:	00078c63          	beqz	a5,80002ea8 <uartgetc+0x30>
    80002e94:	00074503          	lbu	a0,0(a4)
    80002e98:	0ff57513          	andi	a0,a0,255
    80002e9c:	00813403          	ld	s0,8(sp)
    80002ea0:	01010113          	addi	sp,sp,16
    80002ea4:	00008067          	ret
    80002ea8:	fff00513          	li	a0,-1
    80002eac:	ff1ff06f          	j	80002e9c <uartgetc+0x24>

0000000080002eb0 <uartintr>:
    80002eb0:	100007b7          	lui	a5,0x10000
    80002eb4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002eb8:	0017f793          	andi	a5,a5,1
    80002ebc:	0a078463          	beqz	a5,80002f64 <uartintr+0xb4>
    80002ec0:	fe010113          	addi	sp,sp,-32
    80002ec4:	00813823          	sd	s0,16(sp)
    80002ec8:	00913423          	sd	s1,8(sp)
    80002ecc:	00113c23          	sd	ra,24(sp)
    80002ed0:	02010413          	addi	s0,sp,32
    80002ed4:	100004b7          	lui	s1,0x10000
    80002ed8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002edc:	0ff57513          	andi	a0,a0,255
    80002ee0:	fffff097          	auipc	ra,0xfffff
    80002ee4:	534080e7          	jalr	1332(ra) # 80002414 <consoleintr>
    80002ee8:	0054c783          	lbu	a5,5(s1)
    80002eec:	0017f793          	andi	a5,a5,1
    80002ef0:	fe0794e3          	bnez	a5,80002ed8 <uartintr+0x28>
    80002ef4:	00001617          	auipc	a2,0x1
    80002ef8:	7cc60613          	addi	a2,a2,1996 # 800046c0 <uart_tx_r>
    80002efc:	00001517          	auipc	a0,0x1
    80002f00:	7cc50513          	addi	a0,a0,1996 # 800046c8 <uart_tx_w>
    80002f04:	00063783          	ld	a5,0(a2)
    80002f08:	00053703          	ld	a4,0(a0)
    80002f0c:	04f70263          	beq	a4,a5,80002f50 <uartintr+0xa0>
    80002f10:	100005b7          	lui	a1,0x10000
    80002f14:	00003817          	auipc	a6,0x3
    80002f18:	a1c80813          	addi	a6,a6,-1508 # 80005930 <uart_tx_buf>
    80002f1c:	01c0006f          	j	80002f38 <uartintr+0x88>
    80002f20:	0006c703          	lbu	a4,0(a3)
    80002f24:	00f63023          	sd	a5,0(a2)
    80002f28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002f2c:	00063783          	ld	a5,0(a2)
    80002f30:	00053703          	ld	a4,0(a0)
    80002f34:	00f70e63          	beq	a4,a5,80002f50 <uartintr+0xa0>
    80002f38:	01f7f713          	andi	a4,a5,31
    80002f3c:	00e806b3          	add	a3,a6,a4
    80002f40:	0055c703          	lbu	a4,5(a1)
    80002f44:	00178793          	addi	a5,a5,1
    80002f48:	02077713          	andi	a4,a4,32
    80002f4c:	fc071ae3          	bnez	a4,80002f20 <uartintr+0x70>
    80002f50:	01813083          	ld	ra,24(sp)
    80002f54:	01013403          	ld	s0,16(sp)
    80002f58:	00813483          	ld	s1,8(sp)
    80002f5c:	02010113          	addi	sp,sp,32
    80002f60:	00008067          	ret
    80002f64:	00001617          	auipc	a2,0x1
    80002f68:	75c60613          	addi	a2,a2,1884 # 800046c0 <uart_tx_r>
    80002f6c:	00001517          	auipc	a0,0x1
    80002f70:	75c50513          	addi	a0,a0,1884 # 800046c8 <uart_tx_w>
    80002f74:	00063783          	ld	a5,0(a2)
    80002f78:	00053703          	ld	a4,0(a0)
    80002f7c:	04f70263          	beq	a4,a5,80002fc0 <uartintr+0x110>
    80002f80:	100005b7          	lui	a1,0x10000
    80002f84:	00003817          	auipc	a6,0x3
    80002f88:	9ac80813          	addi	a6,a6,-1620 # 80005930 <uart_tx_buf>
    80002f8c:	01c0006f          	j	80002fa8 <uartintr+0xf8>
    80002f90:	0006c703          	lbu	a4,0(a3)
    80002f94:	00f63023          	sd	a5,0(a2)
    80002f98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002f9c:	00063783          	ld	a5,0(a2)
    80002fa0:	00053703          	ld	a4,0(a0)
    80002fa4:	02f70063          	beq	a4,a5,80002fc4 <uartintr+0x114>
    80002fa8:	01f7f713          	andi	a4,a5,31
    80002fac:	00e806b3          	add	a3,a6,a4
    80002fb0:	0055c703          	lbu	a4,5(a1)
    80002fb4:	00178793          	addi	a5,a5,1
    80002fb8:	02077713          	andi	a4,a4,32
    80002fbc:	fc071ae3          	bnez	a4,80002f90 <uartintr+0xe0>
    80002fc0:	00008067          	ret
    80002fc4:	00008067          	ret

0000000080002fc8 <kinit>:
    80002fc8:	fc010113          	addi	sp,sp,-64
    80002fcc:	02913423          	sd	s1,40(sp)
    80002fd0:	fffff7b7          	lui	a5,0xfffff
    80002fd4:	00004497          	auipc	s1,0x4
    80002fd8:	97b48493          	addi	s1,s1,-1669 # 8000694f <end+0xfff>
    80002fdc:	02813823          	sd	s0,48(sp)
    80002fe0:	01313c23          	sd	s3,24(sp)
    80002fe4:	00f4f4b3          	and	s1,s1,a5
    80002fe8:	02113c23          	sd	ra,56(sp)
    80002fec:	03213023          	sd	s2,32(sp)
    80002ff0:	01413823          	sd	s4,16(sp)
    80002ff4:	01513423          	sd	s5,8(sp)
    80002ff8:	04010413          	addi	s0,sp,64
    80002ffc:	000017b7          	lui	a5,0x1
    80003000:	01100993          	li	s3,17
    80003004:	00f487b3          	add	a5,s1,a5
    80003008:	01b99993          	slli	s3,s3,0x1b
    8000300c:	06f9e063          	bltu	s3,a5,8000306c <kinit+0xa4>
    80003010:	00003a97          	auipc	s5,0x3
    80003014:	940a8a93          	addi	s5,s5,-1728 # 80005950 <end>
    80003018:	0754ec63          	bltu	s1,s5,80003090 <kinit+0xc8>
    8000301c:	0734fa63          	bgeu	s1,s3,80003090 <kinit+0xc8>
    80003020:	00088a37          	lui	s4,0x88
    80003024:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003028:	00001917          	auipc	s2,0x1
    8000302c:	6a890913          	addi	s2,s2,1704 # 800046d0 <kmem>
    80003030:	00ca1a13          	slli	s4,s4,0xc
    80003034:	0140006f          	j	80003048 <kinit+0x80>
    80003038:	000017b7          	lui	a5,0x1
    8000303c:	00f484b3          	add	s1,s1,a5
    80003040:	0554e863          	bltu	s1,s5,80003090 <kinit+0xc8>
    80003044:	0534f663          	bgeu	s1,s3,80003090 <kinit+0xc8>
    80003048:	00001637          	lui	a2,0x1
    8000304c:	00100593          	li	a1,1
    80003050:	00048513          	mv	a0,s1
    80003054:	00000097          	auipc	ra,0x0
    80003058:	5e4080e7          	jalr	1508(ra) # 80003638 <__memset>
    8000305c:	00093783          	ld	a5,0(s2)
    80003060:	00f4b023          	sd	a5,0(s1)
    80003064:	00993023          	sd	s1,0(s2)
    80003068:	fd4498e3          	bne	s1,s4,80003038 <kinit+0x70>
    8000306c:	03813083          	ld	ra,56(sp)
    80003070:	03013403          	ld	s0,48(sp)
    80003074:	02813483          	ld	s1,40(sp)
    80003078:	02013903          	ld	s2,32(sp)
    8000307c:	01813983          	ld	s3,24(sp)
    80003080:	01013a03          	ld	s4,16(sp)
    80003084:	00813a83          	ld	s5,8(sp)
    80003088:	04010113          	addi	sp,sp,64
    8000308c:	00008067          	ret
    80003090:	00001517          	auipc	a0,0x1
    80003094:	14050513          	addi	a0,a0,320 # 800041d0 <digits+0x18>
    80003098:	fffff097          	auipc	ra,0xfffff
    8000309c:	4b4080e7          	jalr	1204(ra) # 8000254c <panic>

00000000800030a0 <freerange>:
    800030a0:	fc010113          	addi	sp,sp,-64
    800030a4:	000017b7          	lui	a5,0x1
    800030a8:	02913423          	sd	s1,40(sp)
    800030ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800030b0:	009504b3          	add	s1,a0,s1
    800030b4:	fffff537          	lui	a0,0xfffff
    800030b8:	02813823          	sd	s0,48(sp)
    800030bc:	02113c23          	sd	ra,56(sp)
    800030c0:	03213023          	sd	s2,32(sp)
    800030c4:	01313c23          	sd	s3,24(sp)
    800030c8:	01413823          	sd	s4,16(sp)
    800030cc:	01513423          	sd	s5,8(sp)
    800030d0:	01613023          	sd	s6,0(sp)
    800030d4:	04010413          	addi	s0,sp,64
    800030d8:	00a4f4b3          	and	s1,s1,a0
    800030dc:	00f487b3          	add	a5,s1,a5
    800030e0:	06f5e463          	bltu	a1,a5,80003148 <freerange+0xa8>
    800030e4:	00003a97          	auipc	s5,0x3
    800030e8:	86ca8a93          	addi	s5,s5,-1940 # 80005950 <end>
    800030ec:	0954e263          	bltu	s1,s5,80003170 <freerange+0xd0>
    800030f0:	01100993          	li	s3,17
    800030f4:	01b99993          	slli	s3,s3,0x1b
    800030f8:	0734fc63          	bgeu	s1,s3,80003170 <freerange+0xd0>
    800030fc:	00058a13          	mv	s4,a1
    80003100:	00001917          	auipc	s2,0x1
    80003104:	5d090913          	addi	s2,s2,1488 # 800046d0 <kmem>
    80003108:	00002b37          	lui	s6,0x2
    8000310c:	0140006f          	j	80003120 <freerange+0x80>
    80003110:	000017b7          	lui	a5,0x1
    80003114:	00f484b3          	add	s1,s1,a5
    80003118:	0554ec63          	bltu	s1,s5,80003170 <freerange+0xd0>
    8000311c:	0534fa63          	bgeu	s1,s3,80003170 <freerange+0xd0>
    80003120:	00001637          	lui	a2,0x1
    80003124:	00100593          	li	a1,1
    80003128:	00048513          	mv	a0,s1
    8000312c:	00000097          	auipc	ra,0x0
    80003130:	50c080e7          	jalr	1292(ra) # 80003638 <__memset>
    80003134:	00093703          	ld	a4,0(s2)
    80003138:	016487b3          	add	a5,s1,s6
    8000313c:	00e4b023          	sd	a4,0(s1)
    80003140:	00993023          	sd	s1,0(s2)
    80003144:	fcfa76e3          	bgeu	s4,a5,80003110 <freerange+0x70>
    80003148:	03813083          	ld	ra,56(sp)
    8000314c:	03013403          	ld	s0,48(sp)
    80003150:	02813483          	ld	s1,40(sp)
    80003154:	02013903          	ld	s2,32(sp)
    80003158:	01813983          	ld	s3,24(sp)
    8000315c:	01013a03          	ld	s4,16(sp)
    80003160:	00813a83          	ld	s5,8(sp)
    80003164:	00013b03          	ld	s6,0(sp)
    80003168:	04010113          	addi	sp,sp,64
    8000316c:	00008067          	ret
    80003170:	00001517          	auipc	a0,0x1
    80003174:	06050513          	addi	a0,a0,96 # 800041d0 <digits+0x18>
    80003178:	fffff097          	auipc	ra,0xfffff
    8000317c:	3d4080e7          	jalr	980(ra) # 8000254c <panic>

0000000080003180 <kfree>:
    80003180:	fe010113          	addi	sp,sp,-32
    80003184:	00813823          	sd	s0,16(sp)
    80003188:	00113c23          	sd	ra,24(sp)
    8000318c:	00913423          	sd	s1,8(sp)
    80003190:	02010413          	addi	s0,sp,32
    80003194:	03451793          	slli	a5,a0,0x34
    80003198:	04079c63          	bnez	a5,800031f0 <kfree+0x70>
    8000319c:	00002797          	auipc	a5,0x2
    800031a0:	7b478793          	addi	a5,a5,1972 # 80005950 <end>
    800031a4:	00050493          	mv	s1,a0
    800031a8:	04f56463          	bltu	a0,a5,800031f0 <kfree+0x70>
    800031ac:	01100793          	li	a5,17
    800031b0:	01b79793          	slli	a5,a5,0x1b
    800031b4:	02f57e63          	bgeu	a0,a5,800031f0 <kfree+0x70>
    800031b8:	00001637          	lui	a2,0x1
    800031bc:	00100593          	li	a1,1
    800031c0:	00000097          	auipc	ra,0x0
    800031c4:	478080e7          	jalr	1144(ra) # 80003638 <__memset>
    800031c8:	00001797          	auipc	a5,0x1
    800031cc:	50878793          	addi	a5,a5,1288 # 800046d0 <kmem>
    800031d0:	0007b703          	ld	a4,0(a5)
    800031d4:	01813083          	ld	ra,24(sp)
    800031d8:	01013403          	ld	s0,16(sp)
    800031dc:	00e4b023          	sd	a4,0(s1)
    800031e0:	0097b023          	sd	s1,0(a5)
    800031e4:	00813483          	ld	s1,8(sp)
    800031e8:	02010113          	addi	sp,sp,32
    800031ec:	00008067          	ret
    800031f0:	00001517          	auipc	a0,0x1
    800031f4:	fe050513          	addi	a0,a0,-32 # 800041d0 <digits+0x18>
    800031f8:	fffff097          	auipc	ra,0xfffff
    800031fc:	354080e7          	jalr	852(ra) # 8000254c <panic>

0000000080003200 <kalloc>:
    80003200:	fe010113          	addi	sp,sp,-32
    80003204:	00813823          	sd	s0,16(sp)
    80003208:	00913423          	sd	s1,8(sp)
    8000320c:	00113c23          	sd	ra,24(sp)
    80003210:	02010413          	addi	s0,sp,32
    80003214:	00001797          	auipc	a5,0x1
    80003218:	4bc78793          	addi	a5,a5,1212 # 800046d0 <kmem>
    8000321c:	0007b483          	ld	s1,0(a5)
    80003220:	02048063          	beqz	s1,80003240 <kalloc+0x40>
    80003224:	0004b703          	ld	a4,0(s1)
    80003228:	00001637          	lui	a2,0x1
    8000322c:	00500593          	li	a1,5
    80003230:	00048513          	mv	a0,s1
    80003234:	00e7b023          	sd	a4,0(a5)
    80003238:	00000097          	auipc	ra,0x0
    8000323c:	400080e7          	jalr	1024(ra) # 80003638 <__memset>
    80003240:	01813083          	ld	ra,24(sp)
    80003244:	01013403          	ld	s0,16(sp)
    80003248:	00048513          	mv	a0,s1
    8000324c:	00813483          	ld	s1,8(sp)
    80003250:	02010113          	addi	sp,sp,32
    80003254:	00008067          	ret

0000000080003258 <initlock>:
    80003258:	ff010113          	addi	sp,sp,-16
    8000325c:	00813423          	sd	s0,8(sp)
    80003260:	01010413          	addi	s0,sp,16
    80003264:	00813403          	ld	s0,8(sp)
    80003268:	00b53423          	sd	a1,8(a0)
    8000326c:	00052023          	sw	zero,0(a0)
    80003270:	00053823          	sd	zero,16(a0)
    80003274:	01010113          	addi	sp,sp,16
    80003278:	00008067          	ret

000000008000327c <acquire>:
    8000327c:	fe010113          	addi	sp,sp,-32
    80003280:	00813823          	sd	s0,16(sp)
    80003284:	00913423          	sd	s1,8(sp)
    80003288:	00113c23          	sd	ra,24(sp)
    8000328c:	01213023          	sd	s2,0(sp)
    80003290:	02010413          	addi	s0,sp,32
    80003294:	00050493          	mv	s1,a0
    80003298:	10002973          	csrr	s2,sstatus
    8000329c:	100027f3          	csrr	a5,sstatus
    800032a0:	ffd7f793          	andi	a5,a5,-3
    800032a4:	10079073          	csrw	sstatus,a5
    800032a8:	fffff097          	auipc	ra,0xfffff
    800032ac:	8ec080e7          	jalr	-1812(ra) # 80001b94 <mycpu>
    800032b0:	07852783          	lw	a5,120(a0)
    800032b4:	06078e63          	beqz	a5,80003330 <acquire+0xb4>
    800032b8:	fffff097          	auipc	ra,0xfffff
    800032bc:	8dc080e7          	jalr	-1828(ra) # 80001b94 <mycpu>
    800032c0:	07852783          	lw	a5,120(a0)
    800032c4:	0004a703          	lw	a4,0(s1)
    800032c8:	0017879b          	addiw	a5,a5,1
    800032cc:	06f52c23          	sw	a5,120(a0)
    800032d0:	04071063          	bnez	a4,80003310 <acquire+0x94>
    800032d4:	00100713          	li	a4,1
    800032d8:	00070793          	mv	a5,a4
    800032dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800032e0:	0007879b          	sext.w	a5,a5
    800032e4:	fe079ae3          	bnez	a5,800032d8 <acquire+0x5c>
    800032e8:	0ff0000f          	fence
    800032ec:	fffff097          	auipc	ra,0xfffff
    800032f0:	8a8080e7          	jalr	-1880(ra) # 80001b94 <mycpu>
    800032f4:	01813083          	ld	ra,24(sp)
    800032f8:	01013403          	ld	s0,16(sp)
    800032fc:	00a4b823          	sd	a0,16(s1)
    80003300:	00013903          	ld	s2,0(sp)
    80003304:	00813483          	ld	s1,8(sp)
    80003308:	02010113          	addi	sp,sp,32
    8000330c:	00008067          	ret
    80003310:	0104b903          	ld	s2,16(s1)
    80003314:	fffff097          	auipc	ra,0xfffff
    80003318:	880080e7          	jalr	-1920(ra) # 80001b94 <mycpu>
    8000331c:	faa91ce3          	bne	s2,a0,800032d4 <acquire+0x58>
    80003320:	00001517          	auipc	a0,0x1
    80003324:	eb850513          	addi	a0,a0,-328 # 800041d8 <digits+0x20>
    80003328:	fffff097          	auipc	ra,0xfffff
    8000332c:	224080e7          	jalr	548(ra) # 8000254c <panic>
    80003330:	00195913          	srli	s2,s2,0x1
    80003334:	fffff097          	auipc	ra,0xfffff
    80003338:	860080e7          	jalr	-1952(ra) # 80001b94 <mycpu>
    8000333c:	00197913          	andi	s2,s2,1
    80003340:	07252e23          	sw	s2,124(a0)
    80003344:	f75ff06f          	j	800032b8 <acquire+0x3c>

0000000080003348 <release>:
    80003348:	fe010113          	addi	sp,sp,-32
    8000334c:	00813823          	sd	s0,16(sp)
    80003350:	00113c23          	sd	ra,24(sp)
    80003354:	00913423          	sd	s1,8(sp)
    80003358:	01213023          	sd	s2,0(sp)
    8000335c:	02010413          	addi	s0,sp,32
    80003360:	00052783          	lw	a5,0(a0)
    80003364:	00079a63          	bnez	a5,80003378 <release+0x30>
    80003368:	00001517          	auipc	a0,0x1
    8000336c:	e7850513          	addi	a0,a0,-392 # 800041e0 <digits+0x28>
    80003370:	fffff097          	auipc	ra,0xfffff
    80003374:	1dc080e7          	jalr	476(ra) # 8000254c <panic>
    80003378:	01053903          	ld	s2,16(a0)
    8000337c:	00050493          	mv	s1,a0
    80003380:	fffff097          	auipc	ra,0xfffff
    80003384:	814080e7          	jalr	-2028(ra) # 80001b94 <mycpu>
    80003388:	fea910e3          	bne	s2,a0,80003368 <release+0x20>
    8000338c:	0004b823          	sd	zero,16(s1)
    80003390:	0ff0000f          	fence
    80003394:	0f50000f          	fence	iorw,ow
    80003398:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000339c:	ffffe097          	auipc	ra,0xffffe
    800033a0:	7f8080e7          	jalr	2040(ra) # 80001b94 <mycpu>
    800033a4:	100027f3          	csrr	a5,sstatus
    800033a8:	0027f793          	andi	a5,a5,2
    800033ac:	04079a63          	bnez	a5,80003400 <release+0xb8>
    800033b0:	07852783          	lw	a5,120(a0)
    800033b4:	02f05e63          	blez	a5,800033f0 <release+0xa8>
    800033b8:	fff7871b          	addiw	a4,a5,-1
    800033bc:	06e52c23          	sw	a4,120(a0)
    800033c0:	00071c63          	bnez	a4,800033d8 <release+0x90>
    800033c4:	07c52783          	lw	a5,124(a0)
    800033c8:	00078863          	beqz	a5,800033d8 <release+0x90>
    800033cc:	100027f3          	csrr	a5,sstatus
    800033d0:	0027e793          	ori	a5,a5,2
    800033d4:	10079073          	csrw	sstatus,a5
    800033d8:	01813083          	ld	ra,24(sp)
    800033dc:	01013403          	ld	s0,16(sp)
    800033e0:	00813483          	ld	s1,8(sp)
    800033e4:	00013903          	ld	s2,0(sp)
    800033e8:	02010113          	addi	sp,sp,32
    800033ec:	00008067          	ret
    800033f0:	00001517          	auipc	a0,0x1
    800033f4:	e1050513          	addi	a0,a0,-496 # 80004200 <digits+0x48>
    800033f8:	fffff097          	auipc	ra,0xfffff
    800033fc:	154080e7          	jalr	340(ra) # 8000254c <panic>
    80003400:	00001517          	auipc	a0,0x1
    80003404:	de850513          	addi	a0,a0,-536 # 800041e8 <digits+0x30>
    80003408:	fffff097          	auipc	ra,0xfffff
    8000340c:	144080e7          	jalr	324(ra) # 8000254c <panic>

0000000080003410 <holding>:
    80003410:	00052783          	lw	a5,0(a0)
    80003414:	00079663          	bnez	a5,80003420 <holding+0x10>
    80003418:	00000513          	li	a0,0
    8000341c:	00008067          	ret
    80003420:	fe010113          	addi	sp,sp,-32
    80003424:	00813823          	sd	s0,16(sp)
    80003428:	00913423          	sd	s1,8(sp)
    8000342c:	00113c23          	sd	ra,24(sp)
    80003430:	02010413          	addi	s0,sp,32
    80003434:	01053483          	ld	s1,16(a0)
    80003438:	ffffe097          	auipc	ra,0xffffe
    8000343c:	75c080e7          	jalr	1884(ra) # 80001b94 <mycpu>
    80003440:	01813083          	ld	ra,24(sp)
    80003444:	01013403          	ld	s0,16(sp)
    80003448:	40a48533          	sub	a0,s1,a0
    8000344c:	00153513          	seqz	a0,a0
    80003450:	00813483          	ld	s1,8(sp)
    80003454:	02010113          	addi	sp,sp,32
    80003458:	00008067          	ret

000000008000345c <push_off>:
    8000345c:	fe010113          	addi	sp,sp,-32
    80003460:	00813823          	sd	s0,16(sp)
    80003464:	00113c23          	sd	ra,24(sp)
    80003468:	00913423          	sd	s1,8(sp)
    8000346c:	02010413          	addi	s0,sp,32
    80003470:	100024f3          	csrr	s1,sstatus
    80003474:	100027f3          	csrr	a5,sstatus
    80003478:	ffd7f793          	andi	a5,a5,-3
    8000347c:	10079073          	csrw	sstatus,a5
    80003480:	ffffe097          	auipc	ra,0xffffe
    80003484:	714080e7          	jalr	1812(ra) # 80001b94 <mycpu>
    80003488:	07852783          	lw	a5,120(a0)
    8000348c:	02078663          	beqz	a5,800034b8 <push_off+0x5c>
    80003490:	ffffe097          	auipc	ra,0xffffe
    80003494:	704080e7          	jalr	1796(ra) # 80001b94 <mycpu>
    80003498:	07852783          	lw	a5,120(a0)
    8000349c:	01813083          	ld	ra,24(sp)
    800034a0:	01013403          	ld	s0,16(sp)
    800034a4:	0017879b          	addiw	a5,a5,1
    800034a8:	06f52c23          	sw	a5,120(a0)
    800034ac:	00813483          	ld	s1,8(sp)
    800034b0:	02010113          	addi	sp,sp,32
    800034b4:	00008067          	ret
    800034b8:	0014d493          	srli	s1,s1,0x1
    800034bc:	ffffe097          	auipc	ra,0xffffe
    800034c0:	6d8080e7          	jalr	1752(ra) # 80001b94 <mycpu>
    800034c4:	0014f493          	andi	s1,s1,1
    800034c8:	06952e23          	sw	s1,124(a0)
    800034cc:	fc5ff06f          	j	80003490 <push_off+0x34>

00000000800034d0 <pop_off>:
    800034d0:	ff010113          	addi	sp,sp,-16
    800034d4:	00813023          	sd	s0,0(sp)
    800034d8:	00113423          	sd	ra,8(sp)
    800034dc:	01010413          	addi	s0,sp,16
    800034e0:	ffffe097          	auipc	ra,0xffffe
    800034e4:	6b4080e7          	jalr	1716(ra) # 80001b94 <mycpu>
    800034e8:	100027f3          	csrr	a5,sstatus
    800034ec:	0027f793          	andi	a5,a5,2
    800034f0:	04079663          	bnez	a5,8000353c <pop_off+0x6c>
    800034f4:	07852783          	lw	a5,120(a0)
    800034f8:	02f05a63          	blez	a5,8000352c <pop_off+0x5c>
    800034fc:	fff7871b          	addiw	a4,a5,-1
    80003500:	06e52c23          	sw	a4,120(a0)
    80003504:	00071c63          	bnez	a4,8000351c <pop_off+0x4c>
    80003508:	07c52783          	lw	a5,124(a0)
    8000350c:	00078863          	beqz	a5,8000351c <pop_off+0x4c>
    80003510:	100027f3          	csrr	a5,sstatus
    80003514:	0027e793          	ori	a5,a5,2
    80003518:	10079073          	csrw	sstatus,a5
    8000351c:	00813083          	ld	ra,8(sp)
    80003520:	00013403          	ld	s0,0(sp)
    80003524:	01010113          	addi	sp,sp,16
    80003528:	00008067          	ret
    8000352c:	00001517          	auipc	a0,0x1
    80003530:	cd450513          	addi	a0,a0,-812 # 80004200 <digits+0x48>
    80003534:	fffff097          	auipc	ra,0xfffff
    80003538:	018080e7          	jalr	24(ra) # 8000254c <panic>
    8000353c:	00001517          	auipc	a0,0x1
    80003540:	cac50513          	addi	a0,a0,-852 # 800041e8 <digits+0x30>
    80003544:	fffff097          	auipc	ra,0xfffff
    80003548:	008080e7          	jalr	8(ra) # 8000254c <panic>

000000008000354c <push_on>:
    8000354c:	fe010113          	addi	sp,sp,-32
    80003550:	00813823          	sd	s0,16(sp)
    80003554:	00113c23          	sd	ra,24(sp)
    80003558:	00913423          	sd	s1,8(sp)
    8000355c:	02010413          	addi	s0,sp,32
    80003560:	100024f3          	csrr	s1,sstatus
    80003564:	100027f3          	csrr	a5,sstatus
    80003568:	0027e793          	ori	a5,a5,2
    8000356c:	10079073          	csrw	sstatus,a5
    80003570:	ffffe097          	auipc	ra,0xffffe
    80003574:	624080e7          	jalr	1572(ra) # 80001b94 <mycpu>
    80003578:	07852783          	lw	a5,120(a0)
    8000357c:	02078663          	beqz	a5,800035a8 <push_on+0x5c>
    80003580:	ffffe097          	auipc	ra,0xffffe
    80003584:	614080e7          	jalr	1556(ra) # 80001b94 <mycpu>
    80003588:	07852783          	lw	a5,120(a0)
    8000358c:	01813083          	ld	ra,24(sp)
    80003590:	01013403          	ld	s0,16(sp)
    80003594:	0017879b          	addiw	a5,a5,1
    80003598:	06f52c23          	sw	a5,120(a0)
    8000359c:	00813483          	ld	s1,8(sp)
    800035a0:	02010113          	addi	sp,sp,32
    800035a4:	00008067          	ret
    800035a8:	0014d493          	srli	s1,s1,0x1
    800035ac:	ffffe097          	auipc	ra,0xffffe
    800035b0:	5e8080e7          	jalr	1512(ra) # 80001b94 <mycpu>
    800035b4:	0014f493          	andi	s1,s1,1
    800035b8:	06952e23          	sw	s1,124(a0)
    800035bc:	fc5ff06f          	j	80003580 <push_on+0x34>

00000000800035c0 <pop_on>:
    800035c0:	ff010113          	addi	sp,sp,-16
    800035c4:	00813023          	sd	s0,0(sp)
    800035c8:	00113423          	sd	ra,8(sp)
    800035cc:	01010413          	addi	s0,sp,16
    800035d0:	ffffe097          	auipc	ra,0xffffe
    800035d4:	5c4080e7          	jalr	1476(ra) # 80001b94 <mycpu>
    800035d8:	100027f3          	csrr	a5,sstatus
    800035dc:	0027f793          	andi	a5,a5,2
    800035e0:	04078463          	beqz	a5,80003628 <pop_on+0x68>
    800035e4:	07852783          	lw	a5,120(a0)
    800035e8:	02f05863          	blez	a5,80003618 <pop_on+0x58>
    800035ec:	fff7879b          	addiw	a5,a5,-1
    800035f0:	06f52c23          	sw	a5,120(a0)
    800035f4:	07853783          	ld	a5,120(a0)
    800035f8:	00079863          	bnez	a5,80003608 <pop_on+0x48>
    800035fc:	100027f3          	csrr	a5,sstatus
    80003600:	ffd7f793          	andi	a5,a5,-3
    80003604:	10079073          	csrw	sstatus,a5
    80003608:	00813083          	ld	ra,8(sp)
    8000360c:	00013403          	ld	s0,0(sp)
    80003610:	01010113          	addi	sp,sp,16
    80003614:	00008067          	ret
    80003618:	00001517          	auipc	a0,0x1
    8000361c:	c1050513          	addi	a0,a0,-1008 # 80004228 <digits+0x70>
    80003620:	fffff097          	auipc	ra,0xfffff
    80003624:	f2c080e7          	jalr	-212(ra) # 8000254c <panic>
    80003628:	00001517          	auipc	a0,0x1
    8000362c:	be050513          	addi	a0,a0,-1056 # 80004208 <digits+0x50>
    80003630:	fffff097          	auipc	ra,0xfffff
    80003634:	f1c080e7          	jalr	-228(ra) # 8000254c <panic>

0000000080003638 <__memset>:
    80003638:	ff010113          	addi	sp,sp,-16
    8000363c:	00813423          	sd	s0,8(sp)
    80003640:	01010413          	addi	s0,sp,16
    80003644:	1a060e63          	beqz	a2,80003800 <__memset+0x1c8>
    80003648:	40a007b3          	neg	a5,a0
    8000364c:	0077f793          	andi	a5,a5,7
    80003650:	00778693          	addi	a3,a5,7
    80003654:	00b00813          	li	a6,11
    80003658:	0ff5f593          	andi	a1,a1,255
    8000365c:	fff6071b          	addiw	a4,a2,-1
    80003660:	1b06e663          	bltu	a3,a6,8000380c <__memset+0x1d4>
    80003664:	1cd76463          	bltu	a4,a3,8000382c <__memset+0x1f4>
    80003668:	1a078e63          	beqz	a5,80003824 <__memset+0x1ec>
    8000366c:	00b50023          	sb	a1,0(a0)
    80003670:	00100713          	li	a4,1
    80003674:	1ae78463          	beq	a5,a4,8000381c <__memset+0x1e4>
    80003678:	00b500a3          	sb	a1,1(a0)
    8000367c:	00200713          	li	a4,2
    80003680:	1ae78a63          	beq	a5,a4,80003834 <__memset+0x1fc>
    80003684:	00b50123          	sb	a1,2(a0)
    80003688:	00300713          	li	a4,3
    8000368c:	18e78463          	beq	a5,a4,80003814 <__memset+0x1dc>
    80003690:	00b501a3          	sb	a1,3(a0)
    80003694:	00400713          	li	a4,4
    80003698:	1ae78263          	beq	a5,a4,8000383c <__memset+0x204>
    8000369c:	00b50223          	sb	a1,4(a0)
    800036a0:	00500713          	li	a4,5
    800036a4:	1ae78063          	beq	a5,a4,80003844 <__memset+0x20c>
    800036a8:	00b502a3          	sb	a1,5(a0)
    800036ac:	00700713          	li	a4,7
    800036b0:	18e79e63          	bne	a5,a4,8000384c <__memset+0x214>
    800036b4:	00b50323          	sb	a1,6(a0)
    800036b8:	00700e93          	li	t4,7
    800036bc:	00859713          	slli	a4,a1,0x8
    800036c0:	00e5e733          	or	a4,a1,a4
    800036c4:	01059e13          	slli	t3,a1,0x10
    800036c8:	01c76e33          	or	t3,a4,t3
    800036cc:	01859313          	slli	t1,a1,0x18
    800036d0:	006e6333          	or	t1,t3,t1
    800036d4:	02059893          	slli	a7,a1,0x20
    800036d8:	40f60e3b          	subw	t3,a2,a5
    800036dc:	011368b3          	or	a7,t1,a7
    800036e0:	02859813          	slli	a6,a1,0x28
    800036e4:	0108e833          	or	a6,a7,a6
    800036e8:	03059693          	slli	a3,a1,0x30
    800036ec:	003e589b          	srliw	a7,t3,0x3
    800036f0:	00d866b3          	or	a3,a6,a3
    800036f4:	03859713          	slli	a4,a1,0x38
    800036f8:	00389813          	slli	a6,a7,0x3
    800036fc:	00f507b3          	add	a5,a0,a5
    80003700:	00e6e733          	or	a4,a3,a4
    80003704:	000e089b          	sext.w	a7,t3
    80003708:	00f806b3          	add	a3,a6,a5
    8000370c:	00e7b023          	sd	a4,0(a5)
    80003710:	00878793          	addi	a5,a5,8
    80003714:	fed79ce3          	bne	a5,a3,8000370c <__memset+0xd4>
    80003718:	ff8e7793          	andi	a5,t3,-8
    8000371c:	0007871b          	sext.w	a4,a5
    80003720:	01d787bb          	addw	a5,a5,t4
    80003724:	0ce88e63          	beq	a7,a4,80003800 <__memset+0x1c8>
    80003728:	00f50733          	add	a4,a0,a5
    8000372c:	00b70023          	sb	a1,0(a4)
    80003730:	0017871b          	addiw	a4,a5,1
    80003734:	0cc77663          	bgeu	a4,a2,80003800 <__memset+0x1c8>
    80003738:	00e50733          	add	a4,a0,a4
    8000373c:	00b70023          	sb	a1,0(a4)
    80003740:	0027871b          	addiw	a4,a5,2
    80003744:	0ac77e63          	bgeu	a4,a2,80003800 <__memset+0x1c8>
    80003748:	00e50733          	add	a4,a0,a4
    8000374c:	00b70023          	sb	a1,0(a4)
    80003750:	0037871b          	addiw	a4,a5,3
    80003754:	0ac77663          	bgeu	a4,a2,80003800 <__memset+0x1c8>
    80003758:	00e50733          	add	a4,a0,a4
    8000375c:	00b70023          	sb	a1,0(a4)
    80003760:	0047871b          	addiw	a4,a5,4
    80003764:	08c77e63          	bgeu	a4,a2,80003800 <__memset+0x1c8>
    80003768:	00e50733          	add	a4,a0,a4
    8000376c:	00b70023          	sb	a1,0(a4)
    80003770:	0057871b          	addiw	a4,a5,5
    80003774:	08c77663          	bgeu	a4,a2,80003800 <__memset+0x1c8>
    80003778:	00e50733          	add	a4,a0,a4
    8000377c:	00b70023          	sb	a1,0(a4)
    80003780:	0067871b          	addiw	a4,a5,6
    80003784:	06c77e63          	bgeu	a4,a2,80003800 <__memset+0x1c8>
    80003788:	00e50733          	add	a4,a0,a4
    8000378c:	00b70023          	sb	a1,0(a4)
    80003790:	0077871b          	addiw	a4,a5,7
    80003794:	06c77663          	bgeu	a4,a2,80003800 <__memset+0x1c8>
    80003798:	00e50733          	add	a4,a0,a4
    8000379c:	00b70023          	sb	a1,0(a4)
    800037a0:	0087871b          	addiw	a4,a5,8
    800037a4:	04c77e63          	bgeu	a4,a2,80003800 <__memset+0x1c8>
    800037a8:	00e50733          	add	a4,a0,a4
    800037ac:	00b70023          	sb	a1,0(a4)
    800037b0:	0097871b          	addiw	a4,a5,9
    800037b4:	04c77663          	bgeu	a4,a2,80003800 <__memset+0x1c8>
    800037b8:	00e50733          	add	a4,a0,a4
    800037bc:	00b70023          	sb	a1,0(a4)
    800037c0:	00a7871b          	addiw	a4,a5,10
    800037c4:	02c77e63          	bgeu	a4,a2,80003800 <__memset+0x1c8>
    800037c8:	00e50733          	add	a4,a0,a4
    800037cc:	00b70023          	sb	a1,0(a4)
    800037d0:	00b7871b          	addiw	a4,a5,11
    800037d4:	02c77663          	bgeu	a4,a2,80003800 <__memset+0x1c8>
    800037d8:	00e50733          	add	a4,a0,a4
    800037dc:	00b70023          	sb	a1,0(a4)
    800037e0:	00c7871b          	addiw	a4,a5,12
    800037e4:	00c77e63          	bgeu	a4,a2,80003800 <__memset+0x1c8>
    800037e8:	00e50733          	add	a4,a0,a4
    800037ec:	00b70023          	sb	a1,0(a4)
    800037f0:	00d7879b          	addiw	a5,a5,13
    800037f4:	00c7f663          	bgeu	a5,a2,80003800 <__memset+0x1c8>
    800037f8:	00f507b3          	add	a5,a0,a5
    800037fc:	00b78023          	sb	a1,0(a5)
    80003800:	00813403          	ld	s0,8(sp)
    80003804:	01010113          	addi	sp,sp,16
    80003808:	00008067          	ret
    8000380c:	00b00693          	li	a3,11
    80003810:	e55ff06f          	j	80003664 <__memset+0x2c>
    80003814:	00300e93          	li	t4,3
    80003818:	ea5ff06f          	j	800036bc <__memset+0x84>
    8000381c:	00100e93          	li	t4,1
    80003820:	e9dff06f          	j	800036bc <__memset+0x84>
    80003824:	00000e93          	li	t4,0
    80003828:	e95ff06f          	j	800036bc <__memset+0x84>
    8000382c:	00000793          	li	a5,0
    80003830:	ef9ff06f          	j	80003728 <__memset+0xf0>
    80003834:	00200e93          	li	t4,2
    80003838:	e85ff06f          	j	800036bc <__memset+0x84>
    8000383c:	00400e93          	li	t4,4
    80003840:	e7dff06f          	j	800036bc <__memset+0x84>
    80003844:	00500e93          	li	t4,5
    80003848:	e75ff06f          	j	800036bc <__memset+0x84>
    8000384c:	00600e93          	li	t4,6
    80003850:	e6dff06f          	j	800036bc <__memset+0x84>

0000000080003854 <__memmove>:
    80003854:	ff010113          	addi	sp,sp,-16
    80003858:	00813423          	sd	s0,8(sp)
    8000385c:	01010413          	addi	s0,sp,16
    80003860:	0e060863          	beqz	a2,80003950 <__memmove+0xfc>
    80003864:	fff6069b          	addiw	a3,a2,-1
    80003868:	0006881b          	sext.w	a6,a3
    8000386c:	0ea5e863          	bltu	a1,a0,8000395c <__memmove+0x108>
    80003870:	00758713          	addi	a4,a1,7
    80003874:	00a5e7b3          	or	a5,a1,a0
    80003878:	40a70733          	sub	a4,a4,a0
    8000387c:	0077f793          	andi	a5,a5,7
    80003880:	00f73713          	sltiu	a4,a4,15
    80003884:	00174713          	xori	a4,a4,1
    80003888:	0017b793          	seqz	a5,a5
    8000388c:	00e7f7b3          	and	a5,a5,a4
    80003890:	10078863          	beqz	a5,800039a0 <__memmove+0x14c>
    80003894:	00900793          	li	a5,9
    80003898:	1107f463          	bgeu	a5,a6,800039a0 <__memmove+0x14c>
    8000389c:	0036581b          	srliw	a6,a2,0x3
    800038a0:	fff8081b          	addiw	a6,a6,-1
    800038a4:	02081813          	slli	a6,a6,0x20
    800038a8:	01d85893          	srli	a7,a6,0x1d
    800038ac:	00858813          	addi	a6,a1,8
    800038b0:	00058793          	mv	a5,a1
    800038b4:	00050713          	mv	a4,a0
    800038b8:	01088833          	add	a6,a7,a6
    800038bc:	0007b883          	ld	a7,0(a5)
    800038c0:	00878793          	addi	a5,a5,8
    800038c4:	00870713          	addi	a4,a4,8
    800038c8:	ff173c23          	sd	a7,-8(a4)
    800038cc:	ff0798e3          	bne	a5,a6,800038bc <__memmove+0x68>
    800038d0:	ff867713          	andi	a4,a2,-8
    800038d4:	02071793          	slli	a5,a4,0x20
    800038d8:	0207d793          	srli	a5,a5,0x20
    800038dc:	00f585b3          	add	a1,a1,a5
    800038e0:	40e686bb          	subw	a3,a3,a4
    800038e4:	00f507b3          	add	a5,a0,a5
    800038e8:	06e60463          	beq	a2,a4,80003950 <__memmove+0xfc>
    800038ec:	0005c703          	lbu	a4,0(a1)
    800038f0:	00e78023          	sb	a4,0(a5)
    800038f4:	04068e63          	beqz	a3,80003950 <__memmove+0xfc>
    800038f8:	0015c603          	lbu	a2,1(a1)
    800038fc:	00100713          	li	a4,1
    80003900:	00c780a3          	sb	a2,1(a5)
    80003904:	04e68663          	beq	a3,a4,80003950 <__memmove+0xfc>
    80003908:	0025c603          	lbu	a2,2(a1)
    8000390c:	00200713          	li	a4,2
    80003910:	00c78123          	sb	a2,2(a5)
    80003914:	02e68e63          	beq	a3,a4,80003950 <__memmove+0xfc>
    80003918:	0035c603          	lbu	a2,3(a1)
    8000391c:	00300713          	li	a4,3
    80003920:	00c781a3          	sb	a2,3(a5)
    80003924:	02e68663          	beq	a3,a4,80003950 <__memmove+0xfc>
    80003928:	0045c603          	lbu	a2,4(a1)
    8000392c:	00400713          	li	a4,4
    80003930:	00c78223          	sb	a2,4(a5)
    80003934:	00e68e63          	beq	a3,a4,80003950 <__memmove+0xfc>
    80003938:	0055c603          	lbu	a2,5(a1)
    8000393c:	00500713          	li	a4,5
    80003940:	00c782a3          	sb	a2,5(a5)
    80003944:	00e68663          	beq	a3,a4,80003950 <__memmove+0xfc>
    80003948:	0065c703          	lbu	a4,6(a1)
    8000394c:	00e78323          	sb	a4,6(a5)
    80003950:	00813403          	ld	s0,8(sp)
    80003954:	01010113          	addi	sp,sp,16
    80003958:	00008067          	ret
    8000395c:	02061713          	slli	a4,a2,0x20
    80003960:	02075713          	srli	a4,a4,0x20
    80003964:	00e587b3          	add	a5,a1,a4
    80003968:	f0f574e3          	bgeu	a0,a5,80003870 <__memmove+0x1c>
    8000396c:	02069613          	slli	a2,a3,0x20
    80003970:	02065613          	srli	a2,a2,0x20
    80003974:	fff64613          	not	a2,a2
    80003978:	00e50733          	add	a4,a0,a4
    8000397c:	00c78633          	add	a2,a5,a2
    80003980:	fff7c683          	lbu	a3,-1(a5)
    80003984:	fff78793          	addi	a5,a5,-1
    80003988:	fff70713          	addi	a4,a4,-1
    8000398c:	00d70023          	sb	a3,0(a4)
    80003990:	fec798e3          	bne	a5,a2,80003980 <__memmove+0x12c>
    80003994:	00813403          	ld	s0,8(sp)
    80003998:	01010113          	addi	sp,sp,16
    8000399c:	00008067          	ret
    800039a0:	02069713          	slli	a4,a3,0x20
    800039a4:	02075713          	srli	a4,a4,0x20
    800039a8:	00170713          	addi	a4,a4,1
    800039ac:	00e50733          	add	a4,a0,a4
    800039b0:	00050793          	mv	a5,a0
    800039b4:	0005c683          	lbu	a3,0(a1)
    800039b8:	00178793          	addi	a5,a5,1
    800039bc:	00158593          	addi	a1,a1,1
    800039c0:	fed78fa3          	sb	a3,-1(a5)
    800039c4:	fee798e3          	bne	a5,a4,800039b4 <__memmove+0x160>
    800039c8:	f89ff06f          	j	80003950 <__memmove+0xfc>

00000000800039cc <__putc>:
    800039cc:	fe010113          	addi	sp,sp,-32
    800039d0:	00813823          	sd	s0,16(sp)
    800039d4:	00113c23          	sd	ra,24(sp)
    800039d8:	02010413          	addi	s0,sp,32
    800039dc:	00050793          	mv	a5,a0
    800039e0:	fef40593          	addi	a1,s0,-17
    800039e4:	00100613          	li	a2,1
    800039e8:	00000513          	li	a0,0
    800039ec:	fef407a3          	sb	a5,-17(s0)
    800039f0:	fffff097          	auipc	ra,0xfffff
    800039f4:	b3c080e7          	jalr	-1220(ra) # 8000252c <console_write>
    800039f8:	01813083          	ld	ra,24(sp)
    800039fc:	01013403          	ld	s0,16(sp)
    80003a00:	02010113          	addi	sp,sp,32
    80003a04:	00008067          	ret

0000000080003a08 <__getc>:
    80003a08:	fe010113          	addi	sp,sp,-32
    80003a0c:	00813823          	sd	s0,16(sp)
    80003a10:	00113c23          	sd	ra,24(sp)
    80003a14:	02010413          	addi	s0,sp,32
    80003a18:	fe840593          	addi	a1,s0,-24
    80003a1c:	00100613          	li	a2,1
    80003a20:	00000513          	li	a0,0
    80003a24:	fffff097          	auipc	ra,0xfffff
    80003a28:	ae8080e7          	jalr	-1304(ra) # 8000250c <console_read>
    80003a2c:	fe844503          	lbu	a0,-24(s0)
    80003a30:	01813083          	ld	ra,24(sp)
    80003a34:	01013403          	ld	s0,16(sp)
    80003a38:	02010113          	addi	sp,sp,32
    80003a3c:	00008067          	ret

0000000080003a40 <console_handler>:
    80003a40:	fe010113          	addi	sp,sp,-32
    80003a44:	00813823          	sd	s0,16(sp)
    80003a48:	00113c23          	sd	ra,24(sp)
    80003a4c:	00913423          	sd	s1,8(sp)
    80003a50:	02010413          	addi	s0,sp,32
    80003a54:	14202773          	csrr	a4,scause
    80003a58:	100027f3          	csrr	a5,sstatus
    80003a5c:	0027f793          	andi	a5,a5,2
    80003a60:	06079e63          	bnez	a5,80003adc <console_handler+0x9c>
    80003a64:	00074c63          	bltz	a4,80003a7c <console_handler+0x3c>
    80003a68:	01813083          	ld	ra,24(sp)
    80003a6c:	01013403          	ld	s0,16(sp)
    80003a70:	00813483          	ld	s1,8(sp)
    80003a74:	02010113          	addi	sp,sp,32
    80003a78:	00008067          	ret
    80003a7c:	0ff77713          	andi	a4,a4,255
    80003a80:	00900793          	li	a5,9
    80003a84:	fef712e3          	bne	a4,a5,80003a68 <console_handler+0x28>
    80003a88:	ffffe097          	auipc	ra,0xffffe
    80003a8c:	6dc080e7          	jalr	1756(ra) # 80002164 <plic_claim>
    80003a90:	00a00793          	li	a5,10
    80003a94:	00050493          	mv	s1,a0
    80003a98:	02f50c63          	beq	a0,a5,80003ad0 <console_handler+0x90>
    80003a9c:	fc0506e3          	beqz	a0,80003a68 <console_handler+0x28>
    80003aa0:	00050593          	mv	a1,a0
    80003aa4:	00000517          	auipc	a0,0x0
    80003aa8:	68c50513          	addi	a0,a0,1676 # 80004130 <bntOne+0xd8>
    80003aac:	fffff097          	auipc	ra,0xfffff
    80003ab0:	afc080e7          	jalr	-1284(ra) # 800025a8 <__printf>
    80003ab4:	01013403          	ld	s0,16(sp)
    80003ab8:	01813083          	ld	ra,24(sp)
    80003abc:	00048513          	mv	a0,s1
    80003ac0:	00813483          	ld	s1,8(sp)
    80003ac4:	02010113          	addi	sp,sp,32
    80003ac8:	ffffe317          	auipc	t1,0xffffe
    80003acc:	6d430067          	jr	1748(t1) # 8000219c <plic_complete>
    80003ad0:	fffff097          	auipc	ra,0xfffff
    80003ad4:	3e0080e7          	jalr	992(ra) # 80002eb0 <uartintr>
    80003ad8:	fddff06f          	j	80003ab4 <console_handler+0x74>
    80003adc:	00000517          	auipc	a0,0x0
    80003ae0:	75450513          	addi	a0,a0,1876 # 80004230 <digits+0x78>
    80003ae4:	fffff097          	auipc	ra,0xfffff
    80003ae8:	a68080e7          	jalr	-1432(ra) # 8000254c <panic>
	...
