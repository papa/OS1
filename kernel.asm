
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	73013103          	ld	sp,1840(sp) # 80004730 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2a5010ef          	jal	ra,80001ac0 <start>

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
    80001084:	588000ef          	jal	ra,8000160c <interrupt>

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

0000000080001208 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
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
    800012d0:	00113423          	sd	ra,8(sp)
    800012d4:	00813023          	sd	s0,0(sp)
    800012d8:	01010413          	addi	s0,sp,16

    void (*start_routine)(void*);
    start_routine = (void (*)(void*))running->context.body;
    800012dc:	00003797          	auipc	a5,0x3
    800012e0:	4b47b783          	ld	a5,1204(a5) # 80004790 <_ZN3PCB7runningE>
    800012e4:	0107b703          	ld	a4,16(a5)
    start_routine((void*)running->context.args);
    800012e8:	0187b503          	ld	a0,24(a5)
    800012ec:	000700e7          	jalr	a4

    //pcbThread->run();
}
    800012f0:	00813083          	ld	ra,8(sp)
    800012f4:	00013403          	ld	s0,0(sp)
    800012f8:	01010113          	addi	sp,sp,16
    800012fc:	00008067          	ret

0000000080001300 <_ZN3PCBC1EPFvPvES0_S0_>:
PCB::PCB(void (*body)(void *), void *args, void* stack_space) :
    80001300:	ff010113          	addi	sp,sp,-16
    80001304:	00813423          	sd	s0,8(sp)
    80001308:	01010413          	addi	s0,sp,16
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    8000130c:	000017b7          	lui	a5,0x1
    80001310:	00f686b3          	add	a3,a3,a5
    }), finished(false)
    80001314:	00d53023          	sd	a3,0(a0) # 1000 <_entry-0x7ffff000>
    80001318:	00000797          	auipc	a5,0x0
    8000131c:	fb478793          	addi	a5,a5,-76 # 800012cc <_ZN3PCB6runnerEv>
    80001320:	00f53423          	sd	a5,8(a0)
    80001324:	00b53823          	sd	a1,16(a0)
    80001328:	00c53c23          	sd	a2,24(a0)
    8000132c:	02050423          	sb	zero,40(a0)
}
    80001330:	00813403          	ld	s0,8(sp)
    80001334:	01010113          	addi	sp,sp,16
    80001338:	00008067          	ret

000000008000133c <_ZN3PCB5sleepEm>:
void PCB::sleep(time_t time) {
    8000133c:	ff010113          	addi	sp,sp,-16
    80001340:	00813423          	sd	s0,8(sp)
    80001344:	01010413          	addi	s0,sp,16
}
    80001348:	00813403          	ld	s0,8(sp)
    8000134c:	01010113          	addi	sp,sp,16
    80001350:	00008067          	ret

0000000080001354 <_ZN3PCB5startEv>:
{
    80001354:	ff010113          	addi	sp,sp,-16
    80001358:	00113423          	sd	ra,8(sp)
    8000135c:	00813023          	sd	s0,0(sp)
    80001360:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80001364:	00000097          	auipc	ra,0x0
    80001368:	104080e7          	jalr	260(ra) # 80001468 <_ZN9Scheduler3putEP3PCB>
}
    8000136c:	00813083          	ld	ra,8(sp)
    80001370:	00013403          	ld	s0,0(sp)
    80001374:	01010113          	addi	sp,sp,16
    80001378:	00008067          	ret

000000008000137c <_ZN3PCB5yieldEPS_S0_>:
    yield(old, running);

    Riscv::popRegisters();
}

void PCB::yield(PCB *oldPCB, PCB *newPCB) {
    8000137c:	ff010113          	addi	sp,sp,-16
    80001380:	00113423          	sd	ra,8(sp)
    80001384:	00813023          	sd	s0,0(sp)
    80001388:	01010413          	addi	s0,sp,16
    PCB::contextSwitch(&oldPCB->context, &newPCB->context);
    8000138c:	00000097          	auipc	ra,0x0
    80001390:	e7c080e7          	jalr	-388(ra) # 80001208 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80001394:	00813083          	ld	ra,8(sp)
    80001398:	00013403          	ld	s0,0(sp)
    8000139c:	01010113          	addi	sp,sp,16
    800013a0:	00008067          	ret

00000000800013a4 <_ZN3PCB8dispatchEv>:
void PCB::dispatch() {
    800013a4:	fe010113          	addi	sp,sp,-32
    800013a8:	00113c23          	sd	ra,24(sp)
    800013ac:	00813823          	sd	s0,16(sp)
    800013b0:	00913423          	sd	s1,8(sp)
    800013b4:	02010413          	addi	s0,sp,32
    Riscv::pushRegisters();
    800013b8:	00000097          	auipc	ra,0x0
    800013bc:	d58080e7          	jalr	-680(ra) # 80001110 <_ZN5Riscv13pushRegistersEv>
    PCB* old = running;
    800013c0:	00003497          	auipc	s1,0x3
    800013c4:	3d04b483          	ld	s1,976(s1) # 80004790 <_ZN3PCB7runningE>
    if(!old->finished) Scheduler::put(old);
    800013c8:	0284c783          	lbu	a5,40(s1)
    800013cc:	04078063          	beqz	a5,8000140c <_ZN3PCB8dispatchEv+0x68>
    running = Scheduler::get();
    800013d0:	00000097          	auipc	ra,0x0
    800013d4:	0cc080e7          	jalr	204(ra) # 8000149c <_ZN9Scheduler3getEv>
    800013d8:	00050593          	mv	a1,a0
    800013dc:	00003797          	auipc	a5,0x3
    800013e0:	3aa7ba23          	sd	a0,948(a5) # 80004790 <_ZN3PCB7runningE>
    yield(old, running);
    800013e4:	00048513          	mv	a0,s1
    800013e8:	00000097          	auipc	ra,0x0
    800013ec:	f94080e7          	jalr	-108(ra) # 8000137c <_ZN3PCB5yieldEPS_S0_>
    Riscv::popRegisters();
    800013f0:	00000097          	auipc	ra,0x0
    800013f4:	d9c080e7          	jalr	-612(ra) # 8000118c <_ZN5Riscv12popRegistersEv>
}
    800013f8:	01813083          	ld	ra,24(sp)
    800013fc:	01013403          	ld	s0,16(sp)
    80001400:	00813483          	ld	s1,8(sp)
    80001404:	02010113          	addi	sp,sp,32
    80001408:	00008067          	ret
    if(!old->finished) Scheduler::put(old);
    8000140c:	00048513          	mv	a0,s1
    80001410:	00000097          	auipc	ra,0x0
    80001414:	058080e7          	jalr	88(ra) # 80001468 <_ZN9Scheduler3putEP3PCB>
    80001418:	fb9ff06f          	j	800013d0 <_ZN3PCB8dispatchEv+0x2c>

000000008000141c <_Z41__static_initialization_and_destruction_0ii>:

PCB *Scheduler::get() {
    PCB* fr = queuePCB->front();
    queuePCB->pop();
    return fr;
    8000141c:	00100793          	li	a5,1
    80001420:	00f50463          	beq	a0,a5,80001428 <_Z41__static_initialization_and_destruction_0ii+0xc>
    80001424:	00008067          	ret
    80001428:	000107b7          	lui	a5,0x10
    8000142c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001430:	fef59ae3          	bne	a1,a5,80001424 <_Z41__static_initialization_and_destruction_0ii+0x8>
    80001434:	ff010113          	addi	sp,sp,-16
    80001438:	00113423          	sd	ra,8(sp)
    8000143c:	00813023          	sd	s0,0(sp)
    80001440:	01010413          	addi	s0,sp,16
Queue<PCB*>* Scheduler::queuePCB = (Queue<PCB*>*)MemoryAllocator::mem_alloc(sizeof(Queue<PCB*>));
    80001444:	01000513          	li	a0,16
    80001448:	00000097          	auipc	ra,0x0
    8000144c:	314080e7          	jalr	788(ra) # 8000175c <_ZN15MemoryAllocator9mem_allocEm>
    80001450:	00003797          	auipc	a5,0x3
    80001454:	34a7b423          	sd	a0,840(a5) # 80004798 <_ZN9Scheduler8queuePCBE>
    80001458:	00813083          	ld	ra,8(sp)
    8000145c:	00013403          	ld	s0,0(sp)
    80001460:	01010113          	addi	sp,sp,16
    80001464:	00008067          	ret

0000000080001468 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *pcb) {
    80001468:	ff010113          	addi	sp,sp,-16
    8000146c:	00113423          	sd	ra,8(sp)
    80001470:	00813023          	sd	s0,0(sp)
    80001474:	01010413          	addi	s0,sp,16
    80001478:	00050593          	mv	a1,a0
    Scheduler::queuePCB->push(pcb);
    8000147c:	00003517          	auipc	a0,0x3
    80001480:	31c53503          	ld	a0,796(a0) # 80004798 <_ZN9Scheduler8queuePCBE>
    80001484:	00000097          	auipc	ra,0x0
    80001488:	0a4080e7          	jalr	164(ra) # 80001528 <_ZN5QueueIP3PCBE4pushES1_>
}
    8000148c:	00813083          	ld	ra,8(sp)
    80001490:	00013403          	ld	s0,0(sp)
    80001494:	01010113          	addi	sp,sp,16
    80001498:	00008067          	ret

000000008000149c <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    8000149c:	fe010113          	addi	sp,sp,-32
    800014a0:	00113c23          	sd	ra,24(sp)
    800014a4:	00813823          	sd	s0,16(sp)
    800014a8:	00913423          	sd	s1,8(sp)
    800014ac:	01213023          	sd	s2,0(sp)
    800014b0:	02010413          	addi	s0,sp,32
    PCB* fr = queuePCB->front();
    800014b4:	00003917          	auipc	s2,0x3
    800014b8:	2e493903          	ld	s2,740(s2) # 80004798 <_ZN9Scheduler8queuePCBE>
    800014bc:	00090513          	mv	a0,s2
    800014c0:	00000097          	auipc	ra,0x0
    800014c4:	0b8080e7          	jalr	184(ra) # 80001578 <_ZN5QueueIP3PCBE5frontEv>
    800014c8:	00050493          	mv	s1,a0
    queuePCB->pop();
    800014cc:	00090513          	mv	a0,s2
    800014d0:	00000097          	auipc	ra,0x0
    800014d4:	0cc080e7          	jalr	204(ra) # 8000159c <_ZN5QueueIP3PCBE3popEv>
    800014d8:	00048513          	mv	a0,s1
    800014dc:	01813083          	ld	ra,24(sp)
    800014e0:	01013403          	ld	s0,16(sp)
    800014e4:	00813483          	ld	s1,8(sp)
    800014e8:	00013903          	ld	s2,0(sp)
    800014ec:	02010113          	addi	sp,sp,32
    800014f0:	00008067          	ret

00000000800014f4 <_GLOBAL__sub_I__ZN9Scheduler8queuePCBE>:
    800014f4:	ff010113          	addi	sp,sp,-16
    800014f8:	00113423          	sd	ra,8(sp)
    800014fc:	00813023          	sd	s0,0(sp)
    80001500:	01010413          	addi	s0,sp,16
    80001504:	000105b7          	lui	a1,0x10
    80001508:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000150c:	00100513          	li	a0,1
    80001510:	00000097          	auipc	ra,0x0
    80001514:	f0c080e7          	jalr	-244(ra) # 8000141c <_Z41__static_initialization_and_destruction_0ii>
    80001518:	00813083          	ld	ra,8(sp)
    8000151c:	00013403          	ld	s0,0(sp)
    80001520:	01010113          	addi	sp,sp,16
    80001524:	00008067          	ret

0000000080001528 <_ZN5QueueIP3PCBE4pushES1_>:
    if(first == 0)
        first = last = 0;
}

template<typename T>
void Queue<T>::push(T t) {
    80001528:	fe010113          	addi	sp,sp,-32
    8000152c:	00113c23          	sd	ra,24(sp)
    80001530:	00813823          	sd	s0,16(sp)
    80001534:	00913423          	sd	s1,8(sp)
    80001538:	02010413          	addi	s0,sp,32
    8000153c:	00050493          	mv	s1,a0
    Elem* newElem = (Elem*)MemoryAllocator::mem_alloc(sizeof(Elem));
    80001540:	01000513          	li	a0,16
    80001544:	00000097          	auipc	ra,0x0
    80001548:	218080e7          	jalr	536(ra) # 8000175c <_ZN15MemoryAllocator9mem_allocEm>
    if(first == 0) {
    8000154c:	0004b783          	ld	a5,0(s1)
    80001550:	00078c63          	beqz	a5,80001568 <_ZN5QueueIP3PCBE4pushES1_+0x40>
        first = newElem;
        last = 0;
        first->next = last;
    }
}
    80001554:	01813083          	ld	ra,24(sp)
    80001558:	01013403          	ld	s0,16(sp)
    8000155c:	00813483          	ld	s1,8(sp)
    80001560:	02010113          	addi	sp,sp,32
    80001564:	00008067          	ret
        first = newElem;
    80001568:	00a4b023          	sd	a0,0(s1)
        last = 0;
    8000156c:	0004b423          	sd	zero,8(s1)
        first->next = last;
    80001570:	00053423          	sd	zero,8(a0)
}
    80001574:	fe1ff06f          	j	80001554 <_ZN5QueueIP3PCBE4pushES1_+0x2c>

0000000080001578 <_ZN5QueueIP3PCBE5frontEv>:

template<typename T>
T Queue<T>::front() {
    80001578:	ff010113          	addi	sp,sp,-16
    8000157c:	00813423          	sd	s0,8(sp)
    80001580:	01010413          	addi	s0,sp,16
    if(first == 0)
    80001584:	00053503          	ld	a0,0(a0)
    80001588:	00050463          	beqz	a0,80001590 <_ZN5QueueIP3PCBE5frontEv+0x18>
        return 0;
    return first->data;
    8000158c:	00053503          	ld	a0,0(a0)
}
    80001590:	00813403          	ld	s0,8(sp)
    80001594:	01010113          	addi	sp,sp,16
    80001598:	00008067          	ret

000000008000159c <_ZN5QueueIP3PCBE3popEv>:
void Queue<T>::pop() {
    8000159c:	fe010113          	addi	sp,sp,-32
    800015a0:	00113c23          	sd	ra,24(sp)
    800015a4:	00813823          	sd	s0,16(sp)
    800015a8:	00913423          	sd	s1,8(sp)
    800015ac:	01213023          	sd	s2,0(sp)
    800015b0:	02010413          	addi	s0,sp,32
    800015b4:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    800015b8:	00053503          	ld	a0,0(a0)
    800015bc:	00853903          	ld	s2,8(a0)
    MemoryAllocator::mem_free(first);
    800015c0:	00000097          	auipc	ra,0x0
    800015c4:	1b8080e7          	jalr	440(ra) # 80001778 <_ZN15MemoryAllocator8mem_freeEPv>
    first = newFirst;
    800015c8:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    800015cc:	00090e63          	beqz	s2,800015e8 <_ZN5QueueIP3PCBE3popEv+0x4c>
}
    800015d0:	01813083          	ld	ra,24(sp)
    800015d4:	01013403          	ld	s0,16(sp)
    800015d8:	00813483          	ld	s1,8(sp)
    800015dc:	00013903          	ld	s2,0(sp)
    800015e0:	02010113          	addi	sp,sp,32
    800015e4:	00008067          	ret
        first = last = 0;
    800015e8:	0004b423          	sd	zero,8(s1)
    800015ec:	0004b023          	sd	zero,0(s1)
}
    800015f0:	fe1ff06f          	j	800015d0 <_ZN5QueueIP3PCBE3popEv+0x34>

00000000800015f4 <main>:
#include "../lib/console.h"

extern "C" void interruptvec();

void main()
{
    800015f4:	ff010113          	addi	sp,sp,-16
    800015f8:	00813423          	sd	s0,8(sp)
    800015fc:	01010413          	addi	s0,sp,16
    return;

    MemoryAllocator* memoryAllocator = MemoryAllocator::getMemoryAllocator();
    memoryAllocator->mem_alloc(2);
    */
    80001600:	00813403          	ld	s0,8(sp)
    80001604:	01010113          	addi	sp,sp,16
    80001608:	00008067          	ret

000000008000160c <interrupt>:
const uint64 addrReadInterrupt = bntZero + 5UL;
const uint64 addrWriteInterrupt = bntZero + 7UL;
const uint64 ecallUserInterrupt = bntZero + 8UL;
const uint64 ecallSystemInterupt = bntZero + 9UL;

extern "C" void interrupt() {
    8000160c:	ff010113          	addi	sp,sp,-16
    80001610:	00113423          	sd	ra,8(sp)
    80001614:	00813023          	sd	s0,0(sp)
    80001618:	01010413          	addi	s0,sp,16

    uint64 scause;
    __asm__ volatile("csrr %0,scause":"=r"(scause));
    8000161c:	14202773          	csrr	a4,scause
    switch(scause) {
    80001620:	00900793          	li	a5,9
    80001624:	00f70e63          	beq	a4,a5,80001640 <interrupt+0x34>
    //uint64 sie;
    //asm volatile("csrr %0, sie" : "=r"(sie));
    //sie &= ~2;
    //asm volatile("csrw sie, %0" : : "r" (sie));

    console_handler();
    80001628:	00002097          	auipc	ra,0x2
    8000162c:	5c8080e7          	jalr	1480(ra) # 80003bf0 <console_handler>
}
    80001630:	00813083          	ld	ra,8(sp)
    80001634:	00013403          	ld	s0,0(sp)
    80001638:	01010113          	addi	sp,sp,16
    8000163c:	00008067          	ret
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80001640:	00050793          	mv	a5,a0
            if(operation == (uint64)MemoryAllocator::MEM_ALLOC) {
    80001644:	00100713          	li	a4,1
    80001648:	00e78e63          	beq	a5,a4,80001664 <interrupt+0x58>
            else if(operation == (uint64)MemoryAllocator::MEM_FREE){
    8000164c:	00200713          	li	a4,2
    80001650:	fce79ce3          	bne	a5,a4,80001628 <interrupt+0x1c>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    80001654:	00058513          	mv	a0,a1
                MemoryAllocator::tryToFreeSegment((void*)addr);
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	3bc080e7          	jalr	956(ra) # 80001a14 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
    80001660:	fc9ff06f          	j	80001628 <interrupt+0x1c>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80001664:	00058513          	mv	a0,a1
                void* allocatedAddr = MemoryAllocator::tryToAllocateFragment(size);
    80001668:	00651513          	slli	a0,a0,0x6
    8000166c:	00000097          	auipc	ra,0x0
    80001670:	234080e7          	jalr	564(ra) # 800018a0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80001674:	00050513          	mv	a0,a0
    80001678:	fb1ff06f          	j	80001628 <interrupt+0x1c>

000000008000167c <_Znwm>:

#include "../h/syscall_cpp.h"

//general
void * operator new(size_t size)
{
    8000167c:	ff010113          	addi	sp,sp,-16
    80001680:	00113423          	sd	ra,8(sp)
    80001684:	00813023          	sd	s0,0(sp)
    80001688:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000168c:	00000097          	auipc	ra,0x0
    80001690:	b90080e7          	jalr	-1136(ra) # 8000121c <mem_alloc>
}
    80001694:	00813083          	ld	ra,8(sp)
    80001698:	00013403          	ld	s0,0(sp)
    8000169c:	01010113          	addi	sp,sp,16
    800016a0:	00008067          	ret

00000000800016a4 <_ZdlPv>:

void operator delete(void * p)
{
    800016a4:	ff010113          	addi	sp,sp,-16
    800016a8:	00113423          	sd	ra,8(sp)
    800016ac:	00813023          	sd	s0,0(sp)
    800016b0:	01010413          	addi	s0,sp,16
   mem_free(p);
    800016b4:	00000097          	auipc	ra,0x0
    800016b8:	b98080e7          	jalr	-1128(ra) # 8000124c <mem_free>
}
    800016bc:	00813083          	ld	ra,8(sp)
    800016c0:	00013403          	ld	s0,0(sp)
    800016c4:	01010113          	addi	sp,sp,16
    800016c8:	00008067          	ret

00000000800016cc <_ZN6Thread5startEv>:

//Thread

void Thread::start() {
    800016cc:	ff010113          	addi	sp,sp,-16
    800016d0:	00113423          	sd	ra,8(sp)
    800016d4:	00813023          	sd	s0,0(sp)
    800016d8:	01010413          	addi	s0,sp,16
    myHandle->start();
    800016dc:	00053503          	ld	a0,0(a0)
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	c74080e7          	jalr	-908(ra) # 80001354 <_ZN3PCB5startEv>
}
    800016e8:	00813083          	ld	ra,8(sp)
    800016ec:	00013403          	ld	s0,0(sp)
    800016f0:	01010113          	addi	sp,sp,16
    800016f4:	00008067          	ret

00000000800016f8 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    800016f8:	ff010113          	addi	sp,sp,-16
    800016fc:	00813423          	sd	s0,8(sp)
    80001700:	01010413          	addi	s0,sp,16
    //PCB::dispatch();
}
    80001704:	00813403          	ld	s0,8(sp)
    80001708:	01010113          	addi	sp,sp,16
    8000170c:	00008067          	ret

0000000080001710 <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    80001710:	ff010113          	addi	sp,sp,-16
    80001714:	00113423          	sd	ra,8(sp)
    80001718:	00813023          	sd	s0,0(sp)
    8000171c:	01010413          	addi	s0,sp,16
    PCB::sleep(time);
    80001720:	00000097          	auipc	ra,0x0
    80001724:	c1c080e7          	jalr	-996(ra) # 8000133c <_ZN3PCB5sleepEm>
}
    80001728:	00813083          	ld	ra,8(sp)
    8000172c:	00013403          	ld	s0,0(sp)
    80001730:	01010113          	addi	sp,sp,16
    80001734:	00008067          	ret

0000000080001738 <_ZN5Riscv10initSystemEv>:
#include "../h/Riscv.h"

//todo
//sta sve treba da se odradi ovde
extern "C" void interruptvec();
void Riscv::initSystem() {
    80001738:	ff010113          	addi	sp,sp,-16
    8000173c:	00813423          	sd	s0,8(sp)
    80001740:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&interruptvec);
    80001744:	00003797          	auipc	a5,0x3
    80001748:	ff47b783          	ld	a5,-12(a5) # 80004738 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    8000174c:	10579073          	csrw	stvec,a5
}
    80001750:	00813403          	ld	s0,8(sp)
    80001754:	01010113          	addi	sp,sp,16
    80001758:	00008067          	ret

000000008000175c <_ZN15MemoryAllocator9mem_allocEm>:

MemoryAllocator::AllocatedFragment* MemoryAllocator::headAllocated = 0;
MemoryAllocator::FreeFragment* MemoryAllocator::headFree = 0;
int MemoryAllocator::memoryInitiliaized = 0;

void *MemoryAllocator::mem_alloc(size_t size) {
    8000175c:	ff010113          	addi	sp,sp,-16
    80001760:	00813423          	sd	s0,8(sp)
    80001764:	01010413          	addi	s0,sp,16
    return 0;
    //todo
    //sta ovde treba kao parametar
    //svuda pogledaj to
    //return ::mem_alloc(sizeof(MemoryAllocator));
}
    80001768:	00000513          	li	a0,0
    8000176c:	00813403          	ld	s0,8(sp)
    80001770:	01010113          	addi	sp,sp,16
    80001774:	00008067          	ret

0000000080001778 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void * addr) {
    80001778:	ff010113          	addi	sp,sp,-16
    8000177c:	00813423          	sd	s0,8(sp)
    80001780:	01010413          	addi	s0,sp,16
    return 0;
    //return ::mem_free(addr);
}
    80001784:	00000513          	li	a0,0
    80001788:	00813403          	ld	s0,8(sp)
    8000178c:	01010113          	addi	sp,sp,16
    80001790:	00008067          	ret

0000000080001794 <_ZN15MemoryAllocator10initMemoryEv>:

void MemoryAllocator::initMemory()
{
    80001794:	ff010113          	addi	sp,sp,-16
    80001798:	00813423          	sd	s0,8(sp)
    8000179c:	01010413          	addi	s0,sp,16
    if(!memoryInitiliaized)
    800017a0:	00003797          	auipc	a5,0x3
    800017a4:	0007a783          	lw	a5,0(a5) # 800047a0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800017a8:	04078263          	beqz	a5,800017ec <_ZN15MemoryAllocator10initMemoryEv+0x58>
        return;
    memoryInitiliaized = 1;
    800017ac:	00003797          	auipc	a5,0x3
    800017b0:	ff478793          	addi	a5,a5,-12 # 800047a0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800017b4:	00100713          	li	a4,1
    800017b8:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800017bc:	0007b423          	sd	zero,8(a5)
    headFree = (FreeFragment*)HEAP_START_ADDR;
    800017c0:	00003717          	auipc	a4,0x3
    800017c4:	f6873703          	ld	a4,-152(a4) # 80004728 <_GLOBAL_OFFSET_TABLE_+0x8>
    800017c8:	00073703          	ld	a4,0(a4)
    800017cc:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    800017d0:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1);
    800017d4:	00003797          	auipc	a5,0x3
    800017d8:	f6c7b783          	ld	a5,-148(a5) # 80004740 <_GLOBAL_OFFSET_TABLE_+0x20>
    800017dc:	0007b783          	ld	a5,0(a5)
    800017e0:	40e787b3          	sub	a5,a5,a4
    800017e4:	00178793          	addi	a5,a5,1
    800017e8:	00f73023          	sd	a5,0(a4)
}
    800017ec:	00813403          	ld	s0,8(sp)
    800017f0:	01010113          	addi	sp,sp,16
    800017f4:	00008067          	ret

00000000800017f8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void* addr, size_t size) {
    800017f8:	fe010113          	addi	sp,sp,-32
    800017fc:	00113c23          	sd	ra,24(sp)
    80001800:	00813823          	sd	s0,16(sp)
    80001804:	00913423          	sd	s1,8(sp)
    80001808:	01213023          	sd	s2,0(sp)
    8000180c:	02010413          	addi	s0,sp,32
    80001810:	00050493          	mv	s1,a0
    80001814:	00058913          	mv	s2,a1

    initMemory();
    80001818:	00000097          	auipc	ra,0x0
    8000181c:	f7c080e7          	jalr	-132(ra) # 80001794 <_ZN15MemoryAllocator10initMemoryEv>
    AllocatedFragment* prev = 0;
    AllocatedFragment* after =  headAllocated;
    80001820:	00003797          	auipc	a5,0x3
    80001824:	f887b783          	ld	a5,-120(a5) # 800047a8 <_ZN15MemoryAllocator13headAllocatedE>
    AllocatedFragment* prev = 0;
    80001828:	00000713          	li	a4,0
    while(after != 0) {
    8000182c:	00078a63          	beqz	a5,80001840 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x48>
        if((void*)after > addr)
    80001830:	00f4e863          	bltu	s1,a5,80001840 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x48>
            break;

        prev = after;
    80001834:	00078713          	mv	a4,a5
        after = after->next;
    80001838:	0087b783          	ld	a5,8(a5)
    while(after != 0) {
    8000183c:	ff1ff06f          	j	8000182c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x34>
    }

    AllocatedFragment* newAllocated = (AllocatedFragment*)addr;
    newAllocated->next = 0;
    80001840:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80001844:	0124b023          	sd	s2,0(s1)
    if(after == 0) {
    80001848:	02078463          	beqz	a5,80001870 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x78>
            headAllocated = newAllocated;
        else
            prev->next = newAllocated;
    }
    else {
        if(prev == 0) {
    8000184c:	02070e63          	beqz	a4,80001888 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x90>
            newAllocated->next = headAllocated;
            headAllocated = newAllocated;
        }
        else {
            newAllocated->next = after;
    80001850:	00f4b423          	sd	a5,8(s1)
            prev->next = newAllocated;
    80001854:	00973423          	sd	s1,8(a4)
        }
    }
}
    80001858:	01813083          	ld	ra,24(sp)
    8000185c:	01013403          	ld	s0,16(sp)
    80001860:	00813483          	ld	s1,8(sp)
    80001864:	00013903          	ld	s2,0(sp)
    80001868:	02010113          	addi	sp,sp,32
    8000186c:	00008067          	ret
        if(prev == 0)
    80001870:	00070663          	beqz	a4,8000187c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x84>
            prev->next = newAllocated;
    80001874:	00973423          	sd	s1,8(a4)
    80001878:	fe1ff06f          	j	80001858 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>
            headAllocated = newAllocated;
    8000187c:	00003797          	auipc	a5,0x3
    80001880:	f297b623          	sd	s1,-212(a5) # 800047a8 <_ZN15MemoryAllocator13headAllocatedE>
    80001884:	fd5ff06f          	j	80001858 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>
            newAllocated->next = headAllocated;
    80001888:	00003797          	auipc	a5,0x3
    8000188c:	f1878793          	addi	a5,a5,-232 # 800047a0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80001890:	0087b703          	ld	a4,8(a5)
    80001894:	00e4b423          	sd	a4,8(s1)
            headAllocated = newAllocated;
    80001898:	0097b423          	sd	s1,8(a5)
    8000189c:	fbdff06f          	j	80001858 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>

00000000800018a0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    800018a0:	fe010113          	addi	sp,sp,-32
    800018a4:	00113c23          	sd	ra,24(sp)
    800018a8:	00813823          	sd	s0,16(sp)
    800018ac:	00913423          	sd	s1,8(sp)
    800018b0:	01213023          	sd	s2,0(sp)
    800018b4:	02010413          	addi	s0,sp,32
    800018b8:	00050913          	mv	s2,a0
    initMemory();
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	ed8080e7          	jalr	-296(ra) # 80001794 <_ZN15MemoryAllocator10initMemoryEv>
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    800018c4:	00003497          	auipc	s1,0x3
    800018c8:	eec4b483          	ld	s1,-276(s1) # 800047b0 <_ZN15MemoryAllocator8headFreeE>
    uint64 newSize = size + sizeof(AllocatedFragment);
    800018cc:	01090693          	addi	a3,s2,16
    FreeFragment* prev = 0;
    800018d0:	00000713          	li	a4,0
    800018d4:	0700006f          	j	80001944 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
            void* newAddr = ((char*)curr + newSize);
            if(newAddr <= HEAP_END_ADDR) {

                FreeFragment *newFree = (FreeFragment *) newAddr;

                if (prev != 0)
    800018d8:	04070263          	beqz	a4,8000191c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x7c>
                    prev->next = newFree;
    800018dc:	00f73423          	sd	a5,8(a4)
                else
                    headFree = newFree;

                newFree->next = curr->next;
    800018e0:	0084b603          	ld	a2,8(s1)
    800018e4:	00c7b423          	sd	a2,8(a5)
                newFree->size = curr->size - newSize;
    800018e8:	0004b603          	ld	a2,0(s1)
    800018ec:	40d606b3          	sub	a3,a2,a3
    800018f0:	00d7b023          	sd	a3,0(a5)

                if(newFree->size == 0)
    800018f4:	00069863          	bnez	a3,80001904 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x64>
                {
                    if(prev != 0)
    800018f8:	02070863          	beqz	a4,80001928 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = curr->next;
    800018fc:	0084b783          	ld	a5,8(s1)
    80001900:	00f73423          	sd	a5,8(a4)
                    else
                        headFree = 0;
                }

                insertNewAllocatedFragment(oldAddr, size);
    80001904:	00090593          	mv	a1,s2
    80001908:	00048513          	mv	a0,s1
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	eec080e7          	jalr	-276(ra) # 800017f8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>



                uint64 oldA = (uint64) ((char*)oldAddr + sizeof(AllocatedFragment));
    80001914:	01048493          	addi	s1,s1,16

                return (void*)oldA;
    80001918:	0600006f          	j	80001978 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd8>
                    headFree = newFree;
    8000191c:	00003617          	auipc	a2,0x3
    80001920:	e8f63a23          	sd	a5,-364(a2) # 800047b0 <_ZN15MemoryAllocator8headFreeE>
    80001924:	fbdff06f          	j	800018e0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x40>
                        headFree = 0;
    80001928:	00003797          	auipc	a5,0x3
    8000192c:	e807b423          	sd	zero,-376(a5) # 800047b0 <_ZN15MemoryAllocator8headFreeE>
    80001930:	fd5ff06f          	j	80001904 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x64>
                {
                    prev->next = 0;
                }
                else
                {
                    headFree = 0;
    80001934:	00003797          	auipc	a5,0x3
    80001938:	e607be23          	sd	zero,-388(a5) # 800047b0 <_ZN15MemoryAllocator8headFreeE>
                }
            }
        }
        prev = curr;
    8000193c:	00048713          	mv	a4,s1
        curr = curr->next;
    80001940:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    80001944:	02048663          	beqz	s1,80001970 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd0>
        if(curr->size >= newSize) {
    80001948:	0004b783          	ld	a5,0(s1)
    8000194c:	fed7e8e3          	bltu	a5,a3,8000193c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
            void* newAddr = ((char*)curr + newSize);
    80001950:	00d487b3          	add	a5,s1,a3
            if(newAddr <= HEAP_END_ADDR) {
    80001954:	00003617          	auipc	a2,0x3
    80001958:	dec63603          	ld	a2,-532(a2) # 80004740 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000195c:	00063603          	ld	a2,0(a2)
    80001960:	f6f67ce3          	bgeu	a2,a5,800018d8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x38>
                if(prev != 0)
    80001964:	fc0708e3          	beqz	a4,80001934 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    prev->next = 0;
    80001968:	00073423          	sd	zero,8(a4)
    8000196c:	fd1ff06f          	j	8000193c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
    }

    uint64 x = 0;
    __asm__ volatile("mv a0,%0" : : "r"(x));
    80001970:	00000793          	li	a5,0
    80001974:	00078513          	mv	a0,a5

    return 0;
}
    80001978:	00048513          	mv	a0,s1
    8000197c:	01813083          	ld	ra,24(sp)
    80001980:	01013403          	ld	s0,16(sp)
    80001984:	00813483          	ld	s1,8(sp)
    80001988:	00013903          	ld	s2,0(sp)
    8000198c:	02010113          	addi	sp,sp,32
    80001990:	00008067          	ret

0000000080001994 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80001994:	fe010113          	addi	sp,sp,-32
    80001998:	00113c23          	sd	ra,24(sp)
    8000199c:	00813823          	sd	s0,16(sp)
    800019a0:	00913423          	sd	s1,8(sp)
    800019a4:	01213023          	sd	s2,0(sp)
    800019a8:	02010413          	addi	s0,sp,32
    800019ac:	00050493          	mv	s1,a0
    800019b0:	00058913          	mv	s2,a1
    initMemory();
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	de0080e7          	jalr	-544(ra) # 80001794 <_ZN15MemoryAllocator10initMemoryEv>
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    800019bc:	00003797          	auipc	a5,0x3
    800019c0:	df47b783          	ld	a5,-524(a5) # 800047b0 <_ZN15MemoryAllocator8headFreeE>
    FreeFragment* newSegment = (FreeFragment*) addr;
    newSegment->size = size;
    800019c4:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800019c8:	0004b423          	sd	zero,8(s1)
    FreeFragment* prev = 0;
    800019cc:	00000713          	li	a4,0
    while(curr != 0)
    800019d0:	00078c63          	beqz	a5,800019e8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800019d4:	00f4e863          	bltu	s1,a5,800019e4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800019d8:	00078713          	mv	a4,a5
        curr = curr->next;
    800019dc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800019e0:	ff1ff06f          	j	800019d0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    800019e4:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800019e8:	02070063          	beqz	a4,80001a08 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        headFree = newSegment;
    else
        prev->next = newSegment;
    800019ec:	00973423          	sd	s1,8(a4)
}
    800019f0:	01813083          	ld	ra,24(sp)
    800019f4:	01013403          	ld	s0,16(sp)
    800019f8:	00813483          	ld	s1,8(sp)
    800019fc:	00013903          	ld	s2,0(sp)
    80001a00:	02010113          	addi	sp,sp,32
    80001a04:	00008067          	ret
        headFree = newSegment;
    80001a08:	00003797          	auipc	a5,0x3
    80001a0c:	da97b423          	sd	s1,-600(a5) # 800047b0 <_ZN15MemoryAllocator8headFreeE>
    80001a10:	fe1ff06f          	j	800019f0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>

0000000080001a14 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

void MemoryAllocator::tryToFreeSegment(void* addr)
{
    80001a14:	fe010113          	addi	sp,sp,-32
    80001a18:	00113c23          	sd	ra,24(sp)
    80001a1c:	00813823          	sd	s0,16(sp)
    80001a20:	00913423          	sd	s1,8(sp)
    80001a24:	01213023          	sd	s2,0(sp)
    80001a28:	02010413          	addi	s0,sp,32
    80001a2c:	00050913          	mv	s2,a0
    initMemory();
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	d64080e7          	jalr	-668(ra) # 80001794 <_ZN15MemoryAllocator10initMemoryEv>
    AllocatedFragment* prev = 0;
    AllocatedFragment* curr = headAllocated;
    80001a38:	00003497          	auipc	s1,0x3
    80001a3c:	d704b483          	ld	s1,-656(s1) # 800047a8 <_ZN15MemoryAllocator13headAllocatedE>
    int found = 0;
    80001a40:	00000693          	li	a3,0
    AllocatedFragment* prev = 0;
    80001a44:	00000713          	li	a4,0
    80001a48:	0300006f          	j	80001a78 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
        {
            if(prev != 0) {
                prev->next = curr->next;
            }
            else {
                headAllocated = curr->next;
    80001a4c:	0084b783          	ld	a5,8(s1)
    80001a50:	00003717          	auipc	a4,0x3
    80001a54:	d4f73c23          	sd	a5,-680(a4) # 800047a8 <_ZN15MemoryAllocator13headAllocatedE>
            }

            insertNewFreeSegment((void*)curr, curr->size + sizeof(AllocatedFragment));
    80001a58:	0004b583          	ld	a1,0(s1)
    80001a5c:	01058593          	addi	a1,a1,16
    80001a60:	00048513          	mv	a0,s1
    80001a64:	00000097          	auipc	ra,0x0
    80001a68:	f30080e7          	jalr	-208(ra) # 80001994 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>

            found = 1;
    80001a6c:	00100693          	li	a3,1
        }

        prev = curr;
    80001a70:	00048713          	mv	a4,s1
        curr = curr->next;
    80001a74:	0084b483          	ld	s1,8(s1)
    while(curr != 0 && !found)
    80001a78:	02048063          	beqz	s1,80001a98 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
    80001a7c:	00069e63          	bnez	a3,80001a98 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
        if(addr == (void*)((char*)curr + sizeof(AllocatedFragment)))
    80001a80:	01048793          	addi	a5,s1,16
    80001a84:	ff2796e3          	bne	a5,s2,80001a70 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x5c>
            if(prev != 0) {
    80001a88:	fc0702e3          	beqz	a4,80001a4c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x38>
                prev->next = curr->next;
    80001a8c:	0084b783          	ld	a5,8(s1)
    80001a90:	00f73423          	sd	a5,8(a4)
    80001a94:	fc5ff06f          	j	80001a58 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
    }

    if(found) {
    80001a98:	02068063          	beqz	a3,80001ab8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0xa4>
        __asm__ volatile("li a0, 0");
    80001a9c:	00000513          	li	a0,0
    }
    else {
        __asm__ volatile("li a0, 1");
    }
    80001aa0:	01813083          	ld	ra,24(sp)
    80001aa4:	01013403          	ld	s0,16(sp)
    80001aa8:	00813483          	ld	s1,8(sp)
    80001aac:	00013903          	ld	s2,0(sp)
    80001ab0:	02010113          	addi	sp,sp,32
    80001ab4:	00008067          	ret
        __asm__ volatile("li a0, 1");
    80001ab8:	00100513          	li	a0,1
    80001abc:	fe5ff06f          	j	80001aa0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>

0000000080001ac0 <start>:
    80001ac0:	ff010113          	addi	sp,sp,-16
    80001ac4:	00813423          	sd	s0,8(sp)
    80001ac8:	01010413          	addi	s0,sp,16
    80001acc:	300027f3          	csrr	a5,mstatus
    80001ad0:	ffffe737          	lui	a4,0xffffe
    80001ad4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8def>
    80001ad8:	00e7f7b3          	and	a5,a5,a4
    80001adc:	00001737          	lui	a4,0x1
    80001ae0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001ae4:	00e7e7b3          	or	a5,a5,a4
    80001ae8:	30079073          	csrw	mstatus,a5
    80001aec:	00000797          	auipc	a5,0x0
    80001af0:	16078793          	addi	a5,a5,352 # 80001c4c <system_main>
    80001af4:	34179073          	csrw	mepc,a5
    80001af8:	00000793          	li	a5,0
    80001afc:	18079073          	csrw	satp,a5
    80001b00:	000107b7          	lui	a5,0x10
    80001b04:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001b08:	30279073          	csrw	medeleg,a5
    80001b0c:	30379073          	csrw	mideleg,a5
    80001b10:	104027f3          	csrr	a5,sie
    80001b14:	2227e793          	ori	a5,a5,546
    80001b18:	10479073          	csrw	sie,a5
    80001b1c:	fff00793          	li	a5,-1
    80001b20:	00a7d793          	srli	a5,a5,0xa
    80001b24:	3b079073          	csrw	pmpaddr0,a5
    80001b28:	00f00793          	li	a5,15
    80001b2c:	3a079073          	csrw	pmpcfg0,a5
    80001b30:	f14027f3          	csrr	a5,mhartid
    80001b34:	0200c737          	lui	a4,0x200c
    80001b38:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001b3c:	0007869b          	sext.w	a3,a5
    80001b40:	00269713          	slli	a4,a3,0x2
    80001b44:	000f4637          	lui	a2,0xf4
    80001b48:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001b4c:	00d70733          	add	a4,a4,a3
    80001b50:	0037979b          	slliw	a5,a5,0x3
    80001b54:	020046b7          	lui	a3,0x2004
    80001b58:	00d787b3          	add	a5,a5,a3
    80001b5c:	00c585b3          	add	a1,a1,a2
    80001b60:	00371693          	slli	a3,a4,0x3
    80001b64:	00003717          	auipc	a4,0x3
    80001b68:	c5c70713          	addi	a4,a4,-932 # 800047c0 <timer_scratch>
    80001b6c:	00b7b023          	sd	a1,0(a5)
    80001b70:	00d70733          	add	a4,a4,a3
    80001b74:	00f73c23          	sd	a5,24(a4)
    80001b78:	02c73023          	sd	a2,32(a4)
    80001b7c:	34071073          	csrw	mscratch,a4
    80001b80:	00000797          	auipc	a5,0x0
    80001b84:	6e078793          	addi	a5,a5,1760 # 80002260 <timervec>
    80001b88:	30579073          	csrw	mtvec,a5
    80001b8c:	300027f3          	csrr	a5,mstatus
    80001b90:	0087e793          	ori	a5,a5,8
    80001b94:	30079073          	csrw	mstatus,a5
    80001b98:	304027f3          	csrr	a5,mie
    80001b9c:	0807e793          	ori	a5,a5,128
    80001ba0:	30479073          	csrw	mie,a5
    80001ba4:	f14027f3          	csrr	a5,mhartid
    80001ba8:	0007879b          	sext.w	a5,a5
    80001bac:	00078213          	mv	tp,a5
    80001bb0:	30200073          	mret
    80001bb4:	00813403          	ld	s0,8(sp)
    80001bb8:	01010113          	addi	sp,sp,16
    80001bbc:	00008067          	ret

0000000080001bc0 <timerinit>:
    80001bc0:	ff010113          	addi	sp,sp,-16
    80001bc4:	00813423          	sd	s0,8(sp)
    80001bc8:	01010413          	addi	s0,sp,16
    80001bcc:	f14027f3          	csrr	a5,mhartid
    80001bd0:	0200c737          	lui	a4,0x200c
    80001bd4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001bd8:	0007869b          	sext.w	a3,a5
    80001bdc:	00269713          	slli	a4,a3,0x2
    80001be0:	000f4637          	lui	a2,0xf4
    80001be4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001be8:	00d70733          	add	a4,a4,a3
    80001bec:	0037979b          	slliw	a5,a5,0x3
    80001bf0:	020046b7          	lui	a3,0x2004
    80001bf4:	00d787b3          	add	a5,a5,a3
    80001bf8:	00c585b3          	add	a1,a1,a2
    80001bfc:	00371693          	slli	a3,a4,0x3
    80001c00:	00003717          	auipc	a4,0x3
    80001c04:	bc070713          	addi	a4,a4,-1088 # 800047c0 <timer_scratch>
    80001c08:	00b7b023          	sd	a1,0(a5)
    80001c0c:	00d70733          	add	a4,a4,a3
    80001c10:	00f73c23          	sd	a5,24(a4)
    80001c14:	02c73023          	sd	a2,32(a4)
    80001c18:	34071073          	csrw	mscratch,a4
    80001c1c:	00000797          	auipc	a5,0x0
    80001c20:	64478793          	addi	a5,a5,1604 # 80002260 <timervec>
    80001c24:	30579073          	csrw	mtvec,a5
    80001c28:	300027f3          	csrr	a5,mstatus
    80001c2c:	0087e793          	ori	a5,a5,8
    80001c30:	30079073          	csrw	mstatus,a5
    80001c34:	304027f3          	csrr	a5,mie
    80001c38:	0807e793          	ori	a5,a5,128
    80001c3c:	30479073          	csrw	mie,a5
    80001c40:	00813403          	ld	s0,8(sp)
    80001c44:	01010113          	addi	sp,sp,16
    80001c48:	00008067          	ret

0000000080001c4c <system_main>:
    80001c4c:	fe010113          	addi	sp,sp,-32
    80001c50:	00813823          	sd	s0,16(sp)
    80001c54:	00913423          	sd	s1,8(sp)
    80001c58:	00113c23          	sd	ra,24(sp)
    80001c5c:	02010413          	addi	s0,sp,32
    80001c60:	00000097          	auipc	ra,0x0
    80001c64:	0c4080e7          	jalr	196(ra) # 80001d24 <cpuid>
    80001c68:	00003497          	auipc	s1,0x3
    80001c6c:	af848493          	addi	s1,s1,-1288 # 80004760 <started>
    80001c70:	02050263          	beqz	a0,80001c94 <system_main+0x48>
    80001c74:	0004a783          	lw	a5,0(s1)
    80001c78:	0007879b          	sext.w	a5,a5
    80001c7c:	fe078ce3          	beqz	a5,80001c74 <system_main+0x28>
    80001c80:	0ff0000f          	fence
    80001c84:	00002517          	auipc	a0,0x2
    80001c88:	40c50513          	addi	a0,a0,1036 # 80004090 <bntOne+0x38>
    80001c8c:	00001097          	auipc	ra,0x1
    80001c90:	a70080e7          	jalr	-1424(ra) # 800026fc <panic>
    80001c94:	00001097          	auipc	ra,0x1
    80001c98:	9c4080e7          	jalr	-1596(ra) # 80002658 <consoleinit>
    80001c9c:	00001097          	auipc	ra,0x1
    80001ca0:	150080e7          	jalr	336(ra) # 80002dec <printfinit>
    80001ca4:	00002517          	auipc	a0,0x2
    80001ca8:	4cc50513          	addi	a0,a0,1228 # 80004170 <bntOne+0x118>
    80001cac:	00001097          	auipc	ra,0x1
    80001cb0:	aac080e7          	jalr	-1364(ra) # 80002758 <__printf>
    80001cb4:	00002517          	auipc	a0,0x2
    80001cb8:	3ac50513          	addi	a0,a0,940 # 80004060 <bntOne+0x8>
    80001cbc:	00001097          	auipc	ra,0x1
    80001cc0:	a9c080e7          	jalr	-1380(ra) # 80002758 <__printf>
    80001cc4:	00002517          	auipc	a0,0x2
    80001cc8:	4ac50513          	addi	a0,a0,1196 # 80004170 <bntOne+0x118>
    80001ccc:	00001097          	auipc	ra,0x1
    80001cd0:	a8c080e7          	jalr	-1396(ra) # 80002758 <__printf>
    80001cd4:	00001097          	auipc	ra,0x1
    80001cd8:	4a4080e7          	jalr	1188(ra) # 80003178 <kinit>
    80001cdc:	00000097          	auipc	ra,0x0
    80001ce0:	148080e7          	jalr	328(ra) # 80001e24 <trapinit>
    80001ce4:	00000097          	auipc	ra,0x0
    80001ce8:	16c080e7          	jalr	364(ra) # 80001e50 <trapinithart>
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	5b4080e7          	jalr	1460(ra) # 800022a0 <plicinit>
    80001cf4:	00000097          	auipc	ra,0x0
    80001cf8:	5d4080e7          	jalr	1492(ra) # 800022c8 <plicinithart>
    80001cfc:	00000097          	auipc	ra,0x0
    80001d00:	078080e7          	jalr	120(ra) # 80001d74 <userinit>
    80001d04:	0ff0000f          	fence
    80001d08:	00100793          	li	a5,1
    80001d0c:	00002517          	auipc	a0,0x2
    80001d10:	36c50513          	addi	a0,a0,876 # 80004078 <bntOne+0x20>
    80001d14:	00f4a023          	sw	a5,0(s1)
    80001d18:	00001097          	auipc	ra,0x1
    80001d1c:	a40080e7          	jalr	-1472(ra) # 80002758 <__printf>
    80001d20:	0000006f          	j	80001d20 <system_main+0xd4>

0000000080001d24 <cpuid>:
    80001d24:	ff010113          	addi	sp,sp,-16
    80001d28:	00813423          	sd	s0,8(sp)
    80001d2c:	01010413          	addi	s0,sp,16
    80001d30:	00020513          	mv	a0,tp
    80001d34:	00813403          	ld	s0,8(sp)
    80001d38:	0005051b          	sext.w	a0,a0
    80001d3c:	01010113          	addi	sp,sp,16
    80001d40:	00008067          	ret

0000000080001d44 <mycpu>:
    80001d44:	ff010113          	addi	sp,sp,-16
    80001d48:	00813423          	sd	s0,8(sp)
    80001d4c:	01010413          	addi	s0,sp,16
    80001d50:	00020793          	mv	a5,tp
    80001d54:	00813403          	ld	s0,8(sp)
    80001d58:	0007879b          	sext.w	a5,a5
    80001d5c:	00779793          	slli	a5,a5,0x7
    80001d60:	00004517          	auipc	a0,0x4
    80001d64:	a9050513          	addi	a0,a0,-1392 # 800057f0 <cpus>
    80001d68:	00f50533          	add	a0,a0,a5
    80001d6c:	01010113          	addi	sp,sp,16
    80001d70:	00008067          	ret

0000000080001d74 <userinit>:
    80001d74:	ff010113          	addi	sp,sp,-16
    80001d78:	00813423          	sd	s0,8(sp)
    80001d7c:	01010413          	addi	s0,sp,16
    80001d80:	00813403          	ld	s0,8(sp)
    80001d84:	01010113          	addi	sp,sp,16
    80001d88:	00000317          	auipc	t1,0x0
    80001d8c:	86c30067          	jr	-1940(t1) # 800015f4 <main>

0000000080001d90 <either_copyout>:
    80001d90:	ff010113          	addi	sp,sp,-16
    80001d94:	00813023          	sd	s0,0(sp)
    80001d98:	00113423          	sd	ra,8(sp)
    80001d9c:	01010413          	addi	s0,sp,16
    80001da0:	02051663          	bnez	a0,80001dcc <either_copyout+0x3c>
    80001da4:	00058513          	mv	a0,a1
    80001da8:	00060593          	mv	a1,a2
    80001dac:	0006861b          	sext.w	a2,a3
    80001db0:	00002097          	auipc	ra,0x2
    80001db4:	c54080e7          	jalr	-940(ra) # 80003a04 <__memmove>
    80001db8:	00813083          	ld	ra,8(sp)
    80001dbc:	00013403          	ld	s0,0(sp)
    80001dc0:	00000513          	li	a0,0
    80001dc4:	01010113          	addi	sp,sp,16
    80001dc8:	00008067          	ret
    80001dcc:	00002517          	auipc	a0,0x2
    80001dd0:	2ec50513          	addi	a0,a0,748 # 800040b8 <bntOne+0x60>
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	928080e7          	jalr	-1752(ra) # 800026fc <panic>

0000000080001ddc <either_copyin>:
    80001ddc:	ff010113          	addi	sp,sp,-16
    80001de0:	00813023          	sd	s0,0(sp)
    80001de4:	00113423          	sd	ra,8(sp)
    80001de8:	01010413          	addi	s0,sp,16
    80001dec:	02059463          	bnez	a1,80001e14 <either_copyin+0x38>
    80001df0:	00060593          	mv	a1,a2
    80001df4:	0006861b          	sext.w	a2,a3
    80001df8:	00002097          	auipc	ra,0x2
    80001dfc:	c0c080e7          	jalr	-1012(ra) # 80003a04 <__memmove>
    80001e00:	00813083          	ld	ra,8(sp)
    80001e04:	00013403          	ld	s0,0(sp)
    80001e08:	00000513          	li	a0,0
    80001e0c:	01010113          	addi	sp,sp,16
    80001e10:	00008067          	ret
    80001e14:	00002517          	auipc	a0,0x2
    80001e18:	2cc50513          	addi	a0,a0,716 # 800040e0 <bntOne+0x88>
    80001e1c:	00001097          	auipc	ra,0x1
    80001e20:	8e0080e7          	jalr	-1824(ra) # 800026fc <panic>

0000000080001e24 <trapinit>:
    80001e24:	ff010113          	addi	sp,sp,-16
    80001e28:	00813423          	sd	s0,8(sp)
    80001e2c:	01010413          	addi	s0,sp,16
    80001e30:	00813403          	ld	s0,8(sp)
    80001e34:	00002597          	auipc	a1,0x2
    80001e38:	2d458593          	addi	a1,a1,724 # 80004108 <bntOne+0xb0>
    80001e3c:	00004517          	auipc	a0,0x4
    80001e40:	a3450513          	addi	a0,a0,-1484 # 80005870 <tickslock>
    80001e44:	01010113          	addi	sp,sp,16
    80001e48:	00001317          	auipc	t1,0x1
    80001e4c:	5c030067          	jr	1472(t1) # 80003408 <initlock>

0000000080001e50 <trapinithart>:
    80001e50:	ff010113          	addi	sp,sp,-16
    80001e54:	00813423          	sd	s0,8(sp)
    80001e58:	01010413          	addi	s0,sp,16
    80001e5c:	00000797          	auipc	a5,0x0
    80001e60:	2f478793          	addi	a5,a5,756 # 80002150 <kernelvec>
    80001e64:	10579073          	csrw	stvec,a5
    80001e68:	00813403          	ld	s0,8(sp)
    80001e6c:	01010113          	addi	sp,sp,16
    80001e70:	00008067          	ret

0000000080001e74 <usertrap>:
    80001e74:	ff010113          	addi	sp,sp,-16
    80001e78:	00813423          	sd	s0,8(sp)
    80001e7c:	01010413          	addi	s0,sp,16
    80001e80:	00813403          	ld	s0,8(sp)
    80001e84:	01010113          	addi	sp,sp,16
    80001e88:	00008067          	ret

0000000080001e8c <usertrapret>:
    80001e8c:	ff010113          	addi	sp,sp,-16
    80001e90:	00813423          	sd	s0,8(sp)
    80001e94:	01010413          	addi	s0,sp,16
    80001e98:	00813403          	ld	s0,8(sp)
    80001e9c:	01010113          	addi	sp,sp,16
    80001ea0:	00008067          	ret

0000000080001ea4 <kerneltrap>:
    80001ea4:	fe010113          	addi	sp,sp,-32
    80001ea8:	00813823          	sd	s0,16(sp)
    80001eac:	00113c23          	sd	ra,24(sp)
    80001eb0:	00913423          	sd	s1,8(sp)
    80001eb4:	02010413          	addi	s0,sp,32
    80001eb8:	142025f3          	csrr	a1,scause
    80001ebc:	100027f3          	csrr	a5,sstatus
    80001ec0:	0027f793          	andi	a5,a5,2
    80001ec4:	10079c63          	bnez	a5,80001fdc <kerneltrap+0x138>
    80001ec8:	142027f3          	csrr	a5,scause
    80001ecc:	0207ce63          	bltz	a5,80001f08 <kerneltrap+0x64>
    80001ed0:	00002517          	auipc	a0,0x2
    80001ed4:	28050513          	addi	a0,a0,640 # 80004150 <bntOne+0xf8>
    80001ed8:	00001097          	auipc	ra,0x1
    80001edc:	880080e7          	jalr	-1920(ra) # 80002758 <__printf>
    80001ee0:	141025f3          	csrr	a1,sepc
    80001ee4:	14302673          	csrr	a2,stval
    80001ee8:	00002517          	auipc	a0,0x2
    80001eec:	27850513          	addi	a0,a0,632 # 80004160 <bntOne+0x108>
    80001ef0:	00001097          	auipc	ra,0x1
    80001ef4:	868080e7          	jalr	-1944(ra) # 80002758 <__printf>
    80001ef8:	00002517          	auipc	a0,0x2
    80001efc:	28050513          	addi	a0,a0,640 # 80004178 <bntOne+0x120>
    80001f00:	00000097          	auipc	ra,0x0
    80001f04:	7fc080e7          	jalr	2044(ra) # 800026fc <panic>
    80001f08:	0ff7f713          	andi	a4,a5,255
    80001f0c:	00900693          	li	a3,9
    80001f10:	04d70063          	beq	a4,a3,80001f50 <kerneltrap+0xac>
    80001f14:	fff00713          	li	a4,-1
    80001f18:	03f71713          	slli	a4,a4,0x3f
    80001f1c:	00170713          	addi	a4,a4,1
    80001f20:	fae798e3          	bne	a5,a4,80001ed0 <kerneltrap+0x2c>
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	e00080e7          	jalr	-512(ra) # 80001d24 <cpuid>
    80001f2c:	06050663          	beqz	a0,80001f98 <kerneltrap+0xf4>
    80001f30:	144027f3          	csrr	a5,sip
    80001f34:	ffd7f793          	andi	a5,a5,-3
    80001f38:	14479073          	csrw	sip,a5
    80001f3c:	01813083          	ld	ra,24(sp)
    80001f40:	01013403          	ld	s0,16(sp)
    80001f44:	00813483          	ld	s1,8(sp)
    80001f48:	02010113          	addi	sp,sp,32
    80001f4c:	00008067          	ret
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	3c4080e7          	jalr	964(ra) # 80002314 <plic_claim>
    80001f58:	00a00793          	li	a5,10
    80001f5c:	00050493          	mv	s1,a0
    80001f60:	06f50863          	beq	a0,a5,80001fd0 <kerneltrap+0x12c>
    80001f64:	fc050ce3          	beqz	a0,80001f3c <kerneltrap+0x98>
    80001f68:	00050593          	mv	a1,a0
    80001f6c:	00002517          	auipc	a0,0x2
    80001f70:	1c450513          	addi	a0,a0,452 # 80004130 <bntOne+0xd8>
    80001f74:	00000097          	auipc	ra,0x0
    80001f78:	7e4080e7          	jalr	2020(ra) # 80002758 <__printf>
    80001f7c:	01013403          	ld	s0,16(sp)
    80001f80:	01813083          	ld	ra,24(sp)
    80001f84:	00048513          	mv	a0,s1
    80001f88:	00813483          	ld	s1,8(sp)
    80001f8c:	02010113          	addi	sp,sp,32
    80001f90:	00000317          	auipc	t1,0x0
    80001f94:	3bc30067          	jr	956(t1) # 8000234c <plic_complete>
    80001f98:	00004517          	auipc	a0,0x4
    80001f9c:	8d850513          	addi	a0,a0,-1832 # 80005870 <tickslock>
    80001fa0:	00001097          	auipc	ra,0x1
    80001fa4:	48c080e7          	jalr	1164(ra) # 8000342c <acquire>
    80001fa8:	00002717          	auipc	a4,0x2
    80001fac:	7bc70713          	addi	a4,a4,1980 # 80004764 <ticks>
    80001fb0:	00072783          	lw	a5,0(a4)
    80001fb4:	00004517          	auipc	a0,0x4
    80001fb8:	8bc50513          	addi	a0,a0,-1860 # 80005870 <tickslock>
    80001fbc:	0017879b          	addiw	a5,a5,1
    80001fc0:	00f72023          	sw	a5,0(a4)
    80001fc4:	00001097          	auipc	ra,0x1
    80001fc8:	534080e7          	jalr	1332(ra) # 800034f8 <release>
    80001fcc:	f65ff06f          	j	80001f30 <kerneltrap+0x8c>
    80001fd0:	00001097          	auipc	ra,0x1
    80001fd4:	090080e7          	jalr	144(ra) # 80003060 <uartintr>
    80001fd8:	fa5ff06f          	j	80001f7c <kerneltrap+0xd8>
    80001fdc:	00002517          	auipc	a0,0x2
    80001fe0:	13450513          	addi	a0,a0,308 # 80004110 <bntOne+0xb8>
    80001fe4:	00000097          	auipc	ra,0x0
    80001fe8:	718080e7          	jalr	1816(ra) # 800026fc <panic>

0000000080001fec <clockintr>:
    80001fec:	fe010113          	addi	sp,sp,-32
    80001ff0:	00813823          	sd	s0,16(sp)
    80001ff4:	00913423          	sd	s1,8(sp)
    80001ff8:	00113c23          	sd	ra,24(sp)
    80001ffc:	02010413          	addi	s0,sp,32
    80002000:	00004497          	auipc	s1,0x4
    80002004:	87048493          	addi	s1,s1,-1936 # 80005870 <tickslock>
    80002008:	00048513          	mv	a0,s1
    8000200c:	00001097          	auipc	ra,0x1
    80002010:	420080e7          	jalr	1056(ra) # 8000342c <acquire>
    80002014:	00002717          	auipc	a4,0x2
    80002018:	75070713          	addi	a4,a4,1872 # 80004764 <ticks>
    8000201c:	00072783          	lw	a5,0(a4)
    80002020:	01013403          	ld	s0,16(sp)
    80002024:	01813083          	ld	ra,24(sp)
    80002028:	00048513          	mv	a0,s1
    8000202c:	0017879b          	addiw	a5,a5,1
    80002030:	00813483          	ld	s1,8(sp)
    80002034:	00f72023          	sw	a5,0(a4)
    80002038:	02010113          	addi	sp,sp,32
    8000203c:	00001317          	auipc	t1,0x1
    80002040:	4bc30067          	jr	1212(t1) # 800034f8 <release>

0000000080002044 <devintr>:
    80002044:	142027f3          	csrr	a5,scause
    80002048:	00000513          	li	a0,0
    8000204c:	0007c463          	bltz	a5,80002054 <devintr+0x10>
    80002050:	00008067          	ret
    80002054:	fe010113          	addi	sp,sp,-32
    80002058:	00813823          	sd	s0,16(sp)
    8000205c:	00113c23          	sd	ra,24(sp)
    80002060:	00913423          	sd	s1,8(sp)
    80002064:	02010413          	addi	s0,sp,32
    80002068:	0ff7f713          	andi	a4,a5,255
    8000206c:	00900693          	li	a3,9
    80002070:	04d70c63          	beq	a4,a3,800020c8 <devintr+0x84>
    80002074:	fff00713          	li	a4,-1
    80002078:	03f71713          	slli	a4,a4,0x3f
    8000207c:	00170713          	addi	a4,a4,1
    80002080:	00e78c63          	beq	a5,a4,80002098 <devintr+0x54>
    80002084:	01813083          	ld	ra,24(sp)
    80002088:	01013403          	ld	s0,16(sp)
    8000208c:	00813483          	ld	s1,8(sp)
    80002090:	02010113          	addi	sp,sp,32
    80002094:	00008067          	ret
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	c8c080e7          	jalr	-884(ra) # 80001d24 <cpuid>
    800020a0:	06050663          	beqz	a0,8000210c <devintr+0xc8>
    800020a4:	144027f3          	csrr	a5,sip
    800020a8:	ffd7f793          	andi	a5,a5,-3
    800020ac:	14479073          	csrw	sip,a5
    800020b0:	01813083          	ld	ra,24(sp)
    800020b4:	01013403          	ld	s0,16(sp)
    800020b8:	00813483          	ld	s1,8(sp)
    800020bc:	00200513          	li	a0,2
    800020c0:	02010113          	addi	sp,sp,32
    800020c4:	00008067          	ret
    800020c8:	00000097          	auipc	ra,0x0
    800020cc:	24c080e7          	jalr	588(ra) # 80002314 <plic_claim>
    800020d0:	00a00793          	li	a5,10
    800020d4:	00050493          	mv	s1,a0
    800020d8:	06f50663          	beq	a0,a5,80002144 <devintr+0x100>
    800020dc:	00100513          	li	a0,1
    800020e0:	fa0482e3          	beqz	s1,80002084 <devintr+0x40>
    800020e4:	00048593          	mv	a1,s1
    800020e8:	00002517          	auipc	a0,0x2
    800020ec:	04850513          	addi	a0,a0,72 # 80004130 <bntOne+0xd8>
    800020f0:	00000097          	auipc	ra,0x0
    800020f4:	668080e7          	jalr	1640(ra) # 80002758 <__printf>
    800020f8:	00048513          	mv	a0,s1
    800020fc:	00000097          	auipc	ra,0x0
    80002100:	250080e7          	jalr	592(ra) # 8000234c <plic_complete>
    80002104:	00100513          	li	a0,1
    80002108:	f7dff06f          	j	80002084 <devintr+0x40>
    8000210c:	00003517          	auipc	a0,0x3
    80002110:	76450513          	addi	a0,a0,1892 # 80005870 <tickslock>
    80002114:	00001097          	auipc	ra,0x1
    80002118:	318080e7          	jalr	792(ra) # 8000342c <acquire>
    8000211c:	00002717          	auipc	a4,0x2
    80002120:	64870713          	addi	a4,a4,1608 # 80004764 <ticks>
    80002124:	00072783          	lw	a5,0(a4)
    80002128:	00003517          	auipc	a0,0x3
    8000212c:	74850513          	addi	a0,a0,1864 # 80005870 <tickslock>
    80002130:	0017879b          	addiw	a5,a5,1
    80002134:	00f72023          	sw	a5,0(a4)
    80002138:	00001097          	auipc	ra,0x1
    8000213c:	3c0080e7          	jalr	960(ra) # 800034f8 <release>
    80002140:	f65ff06f          	j	800020a4 <devintr+0x60>
    80002144:	00001097          	auipc	ra,0x1
    80002148:	f1c080e7          	jalr	-228(ra) # 80003060 <uartintr>
    8000214c:	fadff06f          	j	800020f8 <devintr+0xb4>

0000000080002150 <kernelvec>:
    80002150:	f0010113          	addi	sp,sp,-256
    80002154:	00113023          	sd	ra,0(sp)
    80002158:	00213423          	sd	sp,8(sp)
    8000215c:	00313823          	sd	gp,16(sp)
    80002160:	00413c23          	sd	tp,24(sp)
    80002164:	02513023          	sd	t0,32(sp)
    80002168:	02613423          	sd	t1,40(sp)
    8000216c:	02713823          	sd	t2,48(sp)
    80002170:	02813c23          	sd	s0,56(sp)
    80002174:	04913023          	sd	s1,64(sp)
    80002178:	04a13423          	sd	a0,72(sp)
    8000217c:	04b13823          	sd	a1,80(sp)
    80002180:	04c13c23          	sd	a2,88(sp)
    80002184:	06d13023          	sd	a3,96(sp)
    80002188:	06e13423          	sd	a4,104(sp)
    8000218c:	06f13823          	sd	a5,112(sp)
    80002190:	07013c23          	sd	a6,120(sp)
    80002194:	09113023          	sd	a7,128(sp)
    80002198:	09213423          	sd	s2,136(sp)
    8000219c:	09313823          	sd	s3,144(sp)
    800021a0:	09413c23          	sd	s4,152(sp)
    800021a4:	0b513023          	sd	s5,160(sp)
    800021a8:	0b613423          	sd	s6,168(sp)
    800021ac:	0b713823          	sd	s7,176(sp)
    800021b0:	0b813c23          	sd	s8,184(sp)
    800021b4:	0d913023          	sd	s9,192(sp)
    800021b8:	0da13423          	sd	s10,200(sp)
    800021bc:	0db13823          	sd	s11,208(sp)
    800021c0:	0dc13c23          	sd	t3,216(sp)
    800021c4:	0fd13023          	sd	t4,224(sp)
    800021c8:	0fe13423          	sd	t5,232(sp)
    800021cc:	0ff13823          	sd	t6,240(sp)
    800021d0:	cd5ff0ef          	jal	ra,80001ea4 <kerneltrap>
    800021d4:	00013083          	ld	ra,0(sp)
    800021d8:	00813103          	ld	sp,8(sp)
    800021dc:	01013183          	ld	gp,16(sp)
    800021e0:	02013283          	ld	t0,32(sp)
    800021e4:	02813303          	ld	t1,40(sp)
    800021e8:	03013383          	ld	t2,48(sp)
    800021ec:	03813403          	ld	s0,56(sp)
    800021f0:	04013483          	ld	s1,64(sp)
    800021f4:	04813503          	ld	a0,72(sp)
    800021f8:	05013583          	ld	a1,80(sp)
    800021fc:	05813603          	ld	a2,88(sp)
    80002200:	06013683          	ld	a3,96(sp)
    80002204:	06813703          	ld	a4,104(sp)
    80002208:	07013783          	ld	a5,112(sp)
    8000220c:	07813803          	ld	a6,120(sp)
    80002210:	08013883          	ld	a7,128(sp)
    80002214:	08813903          	ld	s2,136(sp)
    80002218:	09013983          	ld	s3,144(sp)
    8000221c:	09813a03          	ld	s4,152(sp)
    80002220:	0a013a83          	ld	s5,160(sp)
    80002224:	0a813b03          	ld	s6,168(sp)
    80002228:	0b013b83          	ld	s7,176(sp)
    8000222c:	0b813c03          	ld	s8,184(sp)
    80002230:	0c013c83          	ld	s9,192(sp)
    80002234:	0c813d03          	ld	s10,200(sp)
    80002238:	0d013d83          	ld	s11,208(sp)
    8000223c:	0d813e03          	ld	t3,216(sp)
    80002240:	0e013e83          	ld	t4,224(sp)
    80002244:	0e813f03          	ld	t5,232(sp)
    80002248:	0f013f83          	ld	t6,240(sp)
    8000224c:	10010113          	addi	sp,sp,256
    80002250:	10200073          	sret
    80002254:	00000013          	nop
    80002258:	00000013          	nop
    8000225c:	00000013          	nop

0000000080002260 <timervec>:
    80002260:	34051573          	csrrw	a0,mscratch,a0
    80002264:	00b53023          	sd	a1,0(a0)
    80002268:	00c53423          	sd	a2,8(a0)
    8000226c:	00d53823          	sd	a3,16(a0)
    80002270:	01853583          	ld	a1,24(a0)
    80002274:	02053603          	ld	a2,32(a0)
    80002278:	0005b683          	ld	a3,0(a1)
    8000227c:	00c686b3          	add	a3,a3,a2
    80002280:	00d5b023          	sd	a3,0(a1)
    80002284:	00200593          	li	a1,2
    80002288:	14459073          	csrw	sip,a1
    8000228c:	01053683          	ld	a3,16(a0)
    80002290:	00853603          	ld	a2,8(a0)
    80002294:	00053583          	ld	a1,0(a0)
    80002298:	34051573          	csrrw	a0,mscratch,a0
    8000229c:	30200073          	mret

00000000800022a0 <plicinit>:
    800022a0:	ff010113          	addi	sp,sp,-16
    800022a4:	00813423          	sd	s0,8(sp)
    800022a8:	01010413          	addi	s0,sp,16
    800022ac:	00813403          	ld	s0,8(sp)
    800022b0:	0c0007b7          	lui	a5,0xc000
    800022b4:	00100713          	li	a4,1
    800022b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800022bc:	00e7a223          	sw	a4,4(a5)
    800022c0:	01010113          	addi	sp,sp,16
    800022c4:	00008067          	ret

00000000800022c8 <plicinithart>:
    800022c8:	ff010113          	addi	sp,sp,-16
    800022cc:	00813023          	sd	s0,0(sp)
    800022d0:	00113423          	sd	ra,8(sp)
    800022d4:	01010413          	addi	s0,sp,16
    800022d8:	00000097          	auipc	ra,0x0
    800022dc:	a4c080e7          	jalr	-1460(ra) # 80001d24 <cpuid>
    800022e0:	0085171b          	slliw	a4,a0,0x8
    800022e4:	0c0027b7          	lui	a5,0xc002
    800022e8:	00e787b3          	add	a5,a5,a4
    800022ec:	40200713          	li	a4,1026
    800022f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800022f4:	00813083          	ld	ra,8(sp)
    800022f8:	00013403          	ld	s0,0(sp)
    800022fc:	00d5151b          	slliw	a0,a0,0xd
    80002300:	0c2017b7          	lui	a5,0xc201
    80002304:	00a78533          	add	a0,a5,a0
    80002308:	00052023          	sw	zero,0(a0)
    8000230c:	01010113          	addi	sp,sp,16
    80002310:	00008067          	ret

0000000080002314 <plic_claim>:
    80002314:	ff010113          	addi	sp,sp,-16
    80002318:	00813023          	sd	s0,0(sp)
    8000231c:	00113423          	sd	ra,8(sp)
    80002320:	01010413          	addi	s0,sp,16
    80002324:	00000097          	auipc	ra,0x0
    80002328:	a00080e7          	jalr	-1536(ra) # 80001d24 <cpuid>
    8000232c:	00813083          	ld	ra,8(sp)
    80002330:	00013403          	ld	s0,0(sp)
    80002334:	00d5151b          	slliw	a0,a0,0xd
    80002338:	0c2017b7          	lui	a5,0xc201
    8000233c:	00a78533          	add	a0,a5,a0
    80002340:	00452503          	lw	a0,4(a0)
    80002344:	01010113          	addi	sp,sp,16
    80002348:	00008067          	ret

000000008000234c <plic_complete>:
    8000234c:	fe010113          	addi	sp,sp,-32
    80002350:	00813823          	sd	s0,16(sp)
    80002354:	00913423          	sd	s1,8(sp)
    80002358:	00113c23          	sd	ra,24(sp)
    8000235c:	02010413          	addi	s0,sp,32
    80002360:	00050493          	mv	s1,a0
    80002364:	00000097          	auipc	ra,0x0
    80002368:	9c0080e7          	jalr	-1600(ra) # 80001d24 <cpuid>
    8000236c:	01813083          	ld	ra,24(sp)
    80002370:	01013403          	ld	s0,16(sp)
    80002374:	00d5179b          	slliw	a5,a0,0xd
    80002378:	0c201737          	lui	a4,0xc201
    8000237c:	00f707b3          	add	a5,a4,a5
    80002380:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002384:	00813483          	ld	s1,8(sp)
    80002388:	02010113          	addi	sp,sp,32
    8000238c:	00008067          	ret

0000000080002390 <consolewrite>:
    80002390:	fb010113          	addi	sp,sp,-80
    80002394:	04813023          	sd	s0,64(sp)
    80002398:	04113423          	sd	ra,72(sp)
    8000239c:	02913c23          	sd	s1,56(sp)
    800023a0:	03213823          	sd	s2,48(sp)
    800023a4:	03313423          	sd	s3,40(sp)
    800023a8:	03413023          	sd	s4,32(sp)
    800023ac:	01513c23          	sd	s5,24(sp)
    800023b0:	05010413          	addi	s0,sp,80
    800023b4:	06c05c63          	blez	a2,8000242c <consolewrite+0x9c>
    800023b8:	00060993          	mv	s3,a2
    800023bc:	00050a13          	mv	s4,a0
    800023c0:	00058493          	mv	s1,a1
    800023c4:	00000913          	li	s2,0
    800023c8:	fff00a93          	li	s5,-1
    800023cc:	01c0006f          	j	800023e8 <consolewrite+0x58>
    800023d0:	fbf44503          	lbu	a0,-65(s0)
    800023d4:	0019091b          	addiw	s2,s2,1
    800023d8:	00148493          	addi	s1,s1,1
    800023dc:	00001097          	auipc	ra,0x1
    800023e0:	a9c080e7          	jalr	-1380(ra) # 80002e78 <uartputc>
    800023e4:	03298063          	beq	s3,s2,80002404 <consolewrite+0x74>
    800023e8:	00048613          	mv	a2,s1
    800023ec:	00100693          	li	a3,1
    800023f0:	000a0593          	mv	a1,s4
    800023f4:	fbf40513          	addi	a0,s0,-65
    800023f8:	00000097          	auipc	ra,0x0
    800023fc:	9e4080e7          	jalr	-1564(ra) # 80001ddc <either_copyin>
    80002400:	fd5518e3          	bne	a0,s5,800023d0 <consolewrite+0x40>
    80002404:	04813083          	ld	ra,72(sp)
    80002408:	04013403          	ld	s0,64(sp)
    8000240c:	03813483          	ld	s1,56(sp)
    80002410:	02813983          	ld	s3,40(sp)
    80002414:	02013a03          	ld	s4,32(sp)
    80002418:	01813a83          	ld	s5,24(sp)
    8000241c:	00090513          	mv	a0,s2
    80002420:	03013903          	ld	s2,48(sp)
    80002424:	05010113          	addi	sp,sp,80
    80002428:	00008067          	ret
    8000242c:	00000913          	li	s2,0
    80002430:	fd5ff06f          	j	80002404 <consolewrite+0x74>

0000000080002434 <consoleread>:
    80002434:	f9010113          	addi	sp,sp,-112
    80002438:	06813023          	sd	s0,96(sp)
    8000243c:	04913c23          	sd	s1,88(sp)
    80002440:	05213823          	sd	s2,80(sp)
    80002444:	05313423          	sd	s3,72(sp)
    80002448:	05413023          	sd	s4,64(sp)
    8000244c:	03513c23          	sd	s5,56(sp)
    80002450:	03613823          	sd	s6,48(sp)
    80002454:	03713423          	sd	s7,40(sp)
    80002458:	03813023          	sd	s8,32(sp)
    8000245c:	06113423          	sd	ra,104(sp)
    80002460:	01913c23          	sd	s9,24(sp)
    80002464:	07010413          	addi	s0,sp,112
    80002468:	00060b93          	mv	s7,a2
    8000246c:	00050913          	mv	s2,a0
    80002470:	00058c13          	mv	s8,a1
    80002474:	00060b1b          	sext.w	s6,a2
    80002478:	00003497          	auipc	s1,0x3
    8000247c:	41048493          	addi	s1,s1,1040 # 80005888 <cons>
    80002480:	00400993          	li	s3,4
    80002484:	fff00a13          	li	s4,-1
    80002488:	00a00a93          	li	s5,10
    8000248c:	05705e63          	blez	s7,800024e8 <consoleread+0xb4>
    80002490:	09c4a703          	lw	a4,156(s1)
    80002494:	0984a783          	lw	a5,152(s1)
    80002498:	0007071b          	sext.w	a4,a4
    8000249c:	08e78463          	beq	a5,a4,80002524 <consoleread+0xf0>
    800024a0:	07f7f713          	andi	a4,a5,127
    800024a4:	00e48733          	add	a4,s1,a4
    800024a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800024ac:	0017869b          	addiw	a3,a5,1
    800024b0:	08d4ac23          	sw	a3,152(s1)
    800024b4:	00070c9b          	sext.w	s9,a4
    800024b8:	0b370663          	beq	a4,s3,80002564 <consoleread+0x130>
    800024bc:	00100693          	li	a3,1
    800024c0:	f9f40613          	addi	a2,s0,-97
    800024c4:	000c0593          	mv	a1,s8
    800024c8:	00090513          	mv	a0,s2
    800024cc:	f8e40fa3          	sb	a4,-97(s0)
    800024d0:	00000097          	auipc	ra,0x0
    800024d4:	8c0080e7          	jalr	-1856(ra) # 80001d90 <either_copyout>
    800024d8:	01450863          	beq	a0,s4,800024e8 <consoleread+0xb4>
    800024dc:	001c0c13          	addi	s8,s8,1
    800024e0:	fffb8b9b          	addiw	s7,s7,-1
    800024e4:	fb5c94e3          	bne	s9,s5,8000248c <consoleread+0x58>
    800024e8:	000b851b          	sext.w	a0,s7
    800024ec:	06813083          	ld	ra,104(sp)
    800024f0:	06013403          	ld	s0,96(sp)
    800024f4:	05813483          	ld	s1,88(sp)
    800024f8:	05013903          	ld	s2,80(sp)
    800024fc:	04813983          	ld	s3,72(sp)
    80002500:	04013a03          	ld	s4,64(sp)
    80002504:	03813a83          	ld	s5,56(sp)
    80002508:	02813b83          	ld	s7,40(sp)
    8000250c:	02013c03          	ld	s8,32(sp)
    80002510:	01813c83          	ld	s9,24(sp)
    80002514:	40ab053b          	subw	a0,s6,a0
    80002518:	03013b03          	ld	s6,48(sp)
    8000251c:	07010113          	addi	sp,sp,112
    80002520:	00008067          	ret
    80002524:	00001097          	auipc	ra,0x1
    80002528:	1d8080e7          	jalr	472(ra) # 800036fc <push_on>
    8000252c:	0984a703          	lw	a4,152(s1)
    80002530:	09c4a783          	lw	a5,156(s1)
    80002534:	0007879b          	sext.w	a5,a5
    80002538:	fef70ce3          	beq	a4,a5,80002530 <consoleread+0xfc>
    8000253c:	00001097          	auipc	ra,0x1
    80002540:	234080e7          	jalr	564(ra) # 80003770 <pop_on>
    80002544:	0984a783          	lw	a5,152(s1)
    80002548:	07f7f713          	andi	a4,a5,127
    8000254c:	00e48733          	add	a4,s1,a4
    80002550:	01874703          	lbu	a4,24(a4)
    80002554:	0017869b          	addiw	a3,a5,1
    80002558:	08d4ac23          	sw	a3,152(s1)
    8000255c:	00070c9b          	sext.w	s9,a4
    80002560:	f5371ee3          	bne	a4,s3,800024bc <consoleread+0x88>
    80002564:	000b851b          	sext.w	a0,s7
    80002568:	f96bf2e3          	bgeu	s7,s6,800024ec <consoleread+0xb8>
    8000256c:	08f4ac23          	sw	a5,152(s1)
    80002570:	f7dff06f          	j	800024ec <consoleread+0xb8>

0000000080002574 <consputc>:
    80002574:	10000793          	li	a5,256
    80002578:	00f50663          	beq	a0,a5,80002584 <consputc+0x10>
    8000257c:	00001317          	auipc	t1,0x1
    80002580:	9f430067          	jr	-1548(t1) # 80002f70 <uartputc_sync>
    80002584:	ff010113          	addi	sp,sp,-16
    80002588:	00113423          	sd	ra,8(sp)
    8000258c:	00813023          	sd	s0,0(sp)
    80002590:	01010413          	addi	s0,sp,16
    80002594:	00800513          	li	a0,8
    80002598:	00001097          	auipc	ra,0x1
    8000259c:	9d8080e7          	jalr	-1576(ra) # 80002f70 <uartputc_sync>
    800025a0:	02000513          	li	a0,32
    800025a4:	00001097          	auipc	ra,0x1
    800025a8:	9cc080e7          	jalr	-1588(ra) # 80002f70 <uartputc_sync>
    800025ac:	00013403          	ld	s0,0(sp)
    800025b0:	00813083          	ld	ra,8(sp)
    800025b4:	00800513          	li	a0,8
    800025b8:	01010113          	addi	sp,sp,16
    800025bc:	00001317          	auipc	t1,0x1
    800025c0:	9b430067          	jr	-1612(t1) # 80002f70 <uartputc_sync>

00000000800025c4 <consoleintr>:
    800025c4:	fe010113          	addi	sp,sp,-32
    800025c8:	00813823          	sd	s0,16(sp)
    800025cc:	00913423          	sd	s1,8(sp)
    800025d0:	01213023          	sd	s2,0(sp)
    800025d4:	00113c23          	sd	ra,24(sp)
    800025d8:	02010413          	addi	s0,sp,32
    800025dc:	00003917          	auipc	s2,0x3
    800025e0:	2ac90913          	addi	s2,s2,684 # 80005888 <cons>
    800025e4:	00050493          	mv	s1,a0
    800025e8:	00090513          	mv	a0,s2
    800025ec:	00001097          	auipc	ra,0x1
    800025f0:	e40080e7          	jalr	-448(ra) # 8000342c <acquire>
    800025f4:	02048c63          	beqz	s1,8000262c <consoleintr+0x68>
    800025f8:	0a092783          	lw	a5,160(s2)
    800025fc:	09892703          	lw	a4,152(s2)
    80002600:	07f00693          	li	a3,127
    80002604:	40e7873b          	subw	a4,a5,a4
    80002608:	02e6e263          	bltu	a3,a4,8000262c <consoleintr+0x68>
    8000260c:	00d00713          	li	a4,13
    80002610:	04e48063          	beq	s1,a4,80002650 <consoleintr+0x8c>
    80002614:	07f7f713          	andi	a4,a5,127
    80002618:	00e90733          	add	a4,s2,a4
    8000261c:	0017879b          	addiw	a5,a5,1
    80002620:	0af92023          	sw	a5,160(s2)
    80002624:	00970c23          	sb	s1,24(a4)
    80002628:	08f92e23          	sw	a5,156(s2)
    8000262c:	01013403          	ld	s0,16(sp)
    80002630:	01813083          	ld	ra,24(sp)
    80002634:	00813483          	ld	s1,8(sp)
    80002638:	00013903          	ld	s2,0(sp)
    8000263c:	00003517          	auipc	a0,0x3
    80002640:	24c50513          	addi	a0,a0,588 # 80005888 <cons>
    80002644:	02010113          	addi	sp,sp,32
    80002648:	00001317          	auipc	t1,0x1
    8000264c:	eb030067          	jr	-336(t1) # 800034f8 <release>
    80002650:	00a00493          	li	s1,10
    80002654:	fc1ff06f          	j	80002614 <consoleintr+0x50>

0000000080002658 <consoleinit>:
    80002658:	fe010113          	addi	sp,sp,-32
    8000265c:	00113c23          	sd	ra,24(sp)
    80002660:	00813823          	sd	s0,16(sp)
    80002664:	00913423          	sd	s1,8(sp)
    80002668:	02010413          	addi	s0,sp,32
    8000266c:	00003497          	auipc	s1,0x3
    80002670:	21c48493          	addi	s1,s1,540 # 80005888 <cons>
    80002674:	00048513          	mv	a0,s1
    80002678:	00002597          	auipc	a1,0x2
    8000267c:	b1058593          	addi	a1,a1,-1264 # 80004188 <bntOne+0x130>
    80002680:	00001097          	auipc	ra,0x1
    80002684:	d88080e7          	jalr	-632(ra) # 80003408 <initlock>
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	7ac080e7          	jalr	1964(ra) # 80002e34 <uartinit>
    80002690:	01813083          	ld	ra,24(sp)
    80002694:	01013403          	ld	s0,16(sp)
    80002698:	00000797          	auipc	a5,0x0
    8000269c:	d9c78793          	addi	a5,a5,-612 # 80002434 <consoleread>
    800026a0:	0af4bc23          	sd	a5,184(s1)
    800026a4:	00000797          	auipc	a5,0x0
    800026a8:	cec78793          	addi	a5,a5,-788 # 80002390 <consolewrite>
    800026ac:	0cf4b023          	sd	a5,192(s1)
    800026b0:	00813483          	ld	s1,8(sp)
    800026b4:	02010113          	addi	sp,sp,32
    800026b8:	00008067          	ret

00000000800026bc <console_read>:
    800026bc:	ff010113          	addi	sp,sp,-16
    800026c0:	00813423          	sd	s0,8(sp)
    800026c4:	01010413          	addi	s0,sp,16
    800026c8:	00813403          	ld	s0,8(sp)
    800026cc:	00003317          	auipc	t1,0x3
    800026d0:	27433303          	ld	t1,628(t1) # 80005940 <devsw+0x10>
    800026d4:	01010113          	addi	sp,sp,16
    800026d8:	00030067          	jr	t1

00000000800026dc <console_write>:
    800026dc:	ff010113          	addi	sp,sp,-16
    800026e0:	00813423          	sd	s0,8(sp)
    800026e4:	01010413          	addi	s0,sp,16
    800026e8:	00813403          	ld	s0,8(sp)
    800026ec:	00003317          	auipc	t1,0x3
    800026f0:	25c33303          	ld	t1,604(t1) # 80005948 <devsw+0x18>
    800026f4:	01010113          	addi	sp,sp,16
    800026f8:	00030067          	jr	t1

00000000800026fc <panic>:
    800026fc:	fe010113          	addi	sp,sp,-32
    80002700:	00113c23          	sd	ra,24(sp)
    80002704:	00813823          	sd	s0,16(sp)
    80002708:	00913423          	sd	s1,8(sp)
    8000270c:	02010413          	addi	s0,sp,32
    80002710:	00050493          	mv	s1,a0
    80002714:	00002517          	auipc	a0,0x2
    80002718:	a7c50513          	addi	a0,a0,-1412 # 80004190 <bntOne+0x138>
    8000271c:	00003797          	auipc	a5,0x3
    80002720:	2c07a623          	sw	zero,716(a5) # 800059e8 <pr+0x18>
    80002724:	00000097          	auipc	ra,0x0
    80002728:	034080e7          	jalr	52(ra) # 80002758 <__printf>
    8000272c:	00048513          	mv	a0,s1
    80002730:	00000097          	auipc	ra,0x0
    80002734:	028080e7          	jalr	40(ra) # 80002758 <__printf>
    80002738:	00002517          	auipc	a0,0x2
    8000273c:	a3850513          	addi	a0,a0,-1480 # 80004170 <bntOne+0x118>
    80002740:	00000097          	auipc	ra,0x0
    80002744:	018080e7          	jalr	24(ra) # 80002758 <__printf>
    80002748:	00100793          	li	a5,1
    8000274c:	00002717          	auipc	a4,0x2
    80002750:	00f72e23          	sw	a5,28(a4) # 80004768 <panicked>
    80002754:	0000006f          	j	80002754 <panic+0x58>

0000000080002758 <__printf>:
    80002758:	f3010113          	addi	sp,sp,-208
    8000275c:	08813023          	sd	s0,128(sp)
    80002760:	07313423          	sd	s3,104(sp)
    80002764:	09010413          	addi	s0,sp,144
    80002768:	05813023          	sd	s8,64(sp)
    8000276c:	08113423          	sd	ra,136(sp)
    80002770:	06913c23          	sd	s1,120(sp)
    80002774:	07213823          	sd	s2,112(sp)
    80002778:	07413023          	sd	s4,96(sp)
    8000277c:	05513c23          	sd	s5,88(sp)
    80002780:	05613823          	sd	s6,80(sp)
    80002784:	05713423          	sd	s7,72(sp)
    80002788:	03913c23          	sd	s9,56(sp)
    8000278c:	03a13823          	sd	s10,48(sp)
    80002790:	03b13423          	sd	s11,40(sp)
    80002794:	00003317          	auipc	t1,0x3
    80002798:	23c30313          	addi	t1,t1,572 # 800059d0 <pr>
    8000279c:	01832c03          	lw	s8,24(t1)
    800027a0:	00b43423          	sd	a1,8(s0)
    800027a4:	00c43823          	sd	a2,16(s0)
    800027a8:	00d43c23          	sd	a3,24(s0)
    800027ac:	02e43023          	sd	a4,32(s0)
    800027b0:	02f43423          	sd	a5,40(s0)
    800027b4:	03043823          	sd	a6,48(s0)
    800027b8:	03143c23          	sd	a7,56(s0)
    800027bc:	00050993          	mv	s3,a0
    800027c0:	4a0c1663          	bnez	s8,80002c6c <__printf+0x514>
    800027c4:	60098c63          	beqz	s3,80002ddc <__printf+0x684>
    800027c8:	0009c503          	lbu	a0,0(s3)
    800027cc:	00840793          	addi	a5,s0,8
    800027d0:	f6f43c23          	sd	a5,-136(s0)
    800027d4:	00000493          	li	s1,0
    800027d8:	22050063          	beqz	a0,800029f8 <__printf+0x2a0>
    800027dc:	00002a37          	lui	s4,0x2
    800027e0:	00018ab7          	lui	s5,0x18
    800027e4:	000f4b37          	lui	s6,0xf4
    800027e8:	00989bb7          	lui	s7,0x989
    800027ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800027f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800027f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800027f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800027fc:	00148c9b          	addiw	s9,s1,1
    80002800:	02500793          	li	a5,37
    80002804:	01998933          	add	s2,s3,s9
    80002808:	38f51263          	bne	a0,a5,80002b8c <__printf+0x434>
    8000280c:	00094783          	lbu	a5,0(s2)
    80002810:	00078c9b          	sext.w	s9,a5
    80002814:	1e078263          	beqz	a5,800029f8 <__printf+0x2a0>
    80002818:	0024849b          	addiw	s1,s1,2
    8000281c:	07000713          	li	a4,112
    80002820:	00998933          	add	s2,s3,s1
    80002824:	38e78a63          	beq	a5,a4,80002bb8 <__printf+0x460>
    80002828:	20f76863          	bltu	a4,a5,80002a38 <__printf+0x2e0>
    8000282c:	42a78863          	beq	a5,a0,80002c5c <__printf+0x504>
    80002830:	06400713          	li	a4,100
    80002834:	40e79663          	bne	a5,a4,80002c40 <__printf+0x4e8>
    80002838:	f7843783          	ld	a5,-136(s0)
    8000283c:	0007a603          	lw	a2,0(a5)
    80002840:	00878793          	addi	a5,a5,8
    80002844:	f6f43c23          	sd	a5,-136(s0)
    80002848:	42064a63          	bltz	a2,80002c7c <__printf+0x524>
    8000284c:	00a00713          	li	a4,10
    80002850:	02e677bb          	remuw	a5,a2,a4
    80002854:	00002d97          	auipc	s11,0x2
    80002858:	964d8d93          	addi	s11,s11,-1692 # 800041b8 <digits>
    8000285c:	00900593          	li	a1,9
    80002860:	0006051b          	sext.w	a0,a2
    80002864:	00000c93          	li	s9,0
    80002868:	02079793          	slli	a5,a5,0x20
    8000286c:	0207d793          	srli	a5,a5,0x20
    80002870:	00fd87b3          	add	a5,s11,a5
    80002874:	0007c783          	lbu	a5,0(a5)
    80002878:	02e656bb          	divuw	a3,a2,a4
    8000287c:	f8f40023          	sb	a5,-128(s0)
    80002880:	14c5d863          	bge	a1,a2,800029d0 <__printf+0x278>
    80002884:	06300593          	li	a1,99
    80002888:	00100c93          	li	s9,1
    8000288c:	02e6f7bb          	remuw	a5,a3,a4
    80002890:	02079793          	slli	a5,a5,0x20
    80002894:	0207d793          	srli	a5,a5,0x20
    80002898:	00fd87b3          	add	a5,s11,a5
    8000289c:	0007c783          	lbu	a5,0(a5)
    800028a0:	02e6d73b          	divuw	a4,a3,a4
    800028a4:	f8f400a3          	sb	a5,-127(s0)
    800028a8:	12a5f463          	bgeu	a1,a0,800029d0 <__printf+0x278>
    800028ac:	00a00693          	li	a3,10
    800028b0:	00900593          	li	a1,9
    800028b4:	02d777bb          	remuw	a5,a4,a3
    800028b8:	02079793          	slli	a5,a5,0x20
    800028bc:	0207d793          	srli	a5,a5,0x20
    800028c0:	00fd87b3          	add	a5,s11,a5
    800028c4:	0007c503          	lbu	a0,0(a5)
    800028c8:	02d757bb          	divuw	a5,a4,a3
    800028cc:	f8a40123          	sb	a0,-126(s0)
    800028d0:	48e5f263          	bgeu	a1,a4,80002d54 <__printf+0x5fc>
    800028d4:	06300513          	li	a0,99
    800028d8:	02d7f5bb          	remuw	a1,a5,a3
    800028dc:	02059593          	slli	a1,a1,0x20
    800028e0:	0205d593          	srli	a1,a1,0x20
    800028e4:	00bd85b3          	add	a1,s11,a1
    800028e8:	0005c583          	lbu	a1,0(a1)
    800028ec:	02d7d7bb          	divuw	a5,a5,a3
    800028f0:	f8b401a3          	sb	a1,-125(s0)
    800028f4:	48e57263          	bgeu	a0,a4,80002d78 <__printf+0x620>
    800028f8:	3e700513          	li	a0,999
    800028fc:	02d7f5bb          	remuw	a1,a5,a3
    80002900:	02059593          	slli	a1,a1,0x20
    80002904:	0205d593          	srli	a1,a1,0x20
    80002908:	00bd85b3          	add	a1,s11,a1
    8000290c:	0005c583          	lbu	a1,0(a1)
    80002910:	02d7d7bb          	divuw	a5,a5,a3
    80002914:	f8b40223          	sb	a1,-124(s0)
    80002918:	46e57663          	bgeu	a0,a4,80002d84 <__printf+0x62c>
    8000291c:	02d7f5bb          	remuw	a1,a5,a3
    80002920:	02059593          	slli	a1,a1,0x20
    80002924:	0205d593          	srli	a1,a1,0x20
    80002928:	00bd85b3          	add	a1,s11,a1
    8000292c:	0005c583          	lbu	a1,0(a1)
    80002930:	02d7d7bb          	divuw	a5,a5,a3
    80002934:	f8b402a3          	sb	a1,-123(s0)
    80002938:	46ea7863          	bgeu	s4,a4,80002da8 <__printf+0x650>
    8000293c:	02d7f5bb          	remuw	a1,a5,a3
    80002940:	02059593          	slli	a1,a1,0x20
    80002944:	0205d593          	srli	a1,a1,0x20
    80002948:	00bd85b3          	add	a1,s11,a1
    8000294c:	0005c583          	lbu	a1,0(a1)
    80002950:	02d7d7bb          	divuw	a5,a5,a3
    80002954:	f8b40323          	sb	a1,-122(s0)
    80002958:	3eeaf863          	bgeu	s5,a4,80002d48 <__printf+0x5f0>
    8000295c:	02d7f5bb          	remuw	a1,a5,a3
    80002960:	02059593          	slli	a1,a1,0x20
    80002964:	0205d593          	srli	a1,a1,0x20
    80002968:	00bd85b3          	add	a1,s11,a1
    8000296c:	0005c583          	lbu	a1,0(a1)
    80002970:	02d7d7bb          	divuw	a5,a5,a3
    80002974:	f8b403a3          	sb	a1,-121(s0)
    80002978:	42eb7e63          	bgeu	s6,a4,80002db4 <__printf+0x65c>
    8000297c:	02d7f5bb          	remuw	a1,a5,a3
    80002980:	02059593          	slli	a1,a1,0x20
    80002984:	0205d593          	srli	a1,a1,0x20
    80002988:	00bd85b3          	add	a1,s11,a1
    8000298c:	0005c583          	lbu	a1,0(a1)
    80002990:	02d7d7bb          	divuw	a5,a5,a3
    80002994:	f8b40423          	sb	a1,-120(s0)
    80002998:	42ebfc63          	bgeu	s7,a4,80002dd0 <__printf+0x678>
    8000299c:	02079793          	slli	a5,a5,0x20
    800029a0:	0207d793          	srli	a5,a5,0x20
    800029a4:	00fd8db3          	add	s11,s11,a5
    800029a8:	000dc703          	lbu	a4,0(s11)
    800029ac:	00a00793          	li	a5,10
    800029b0:	00900c93          	li	s9,9
    800029b4:	f8e404a3          	sb	a4,-119(s0)
    800029b8:	00065c63          	bgez	a2,800029d0 <__printf+0x278>
    800029bc:	f9040713          	addi	a4,s0,-112
    800029c0:	00f70733          	add	a4,a4,a5
    800029c4:	02d00693          	li	a3,45
    800029c8:	fed70823          	sb	a3,-16(a4)
    800029cc:	00078c93          	mv	s9,a5
    800029d0:	f8040793          	addi	a5,s0,-128
    800029d4:	01978cb3          	add	s9,a5,s9
    800029d8:	f7f40d13          	addi	s10,s0,-129
    800029dc:	000cc503          	lbu	a0,0(s9)
    800029e0:	fffc8c93          	addi	s9,s9,-1
    800029e4:	00000097          	auipc	ra,0x0
    800029e8:	b90080e7          	jalr	-1136(ra) # 80002574 <consputc>
    800029ec:	ffac98e3          	bne	s9,s10,800029dc <__printf+0x284>
    800029f0:	00094503          	lbu	a0,0(s2)
    800029f4:	e00514e3          	bnez	a0,800027fc <__printf+0xa4>
    800029f8:	1a0c1663          	bnez	s8,80002ba4 <__printf+0x44c>
    800029fc:	08813083          	ld	ra,136(sp)
    80002a00:	08013403          	ld	s0,128(sp)
    80002a04:	07813483          	ld	s1,120(sp)
    80002a08:	07013903          	ld	s2,112(sp)
    80002a0c:	06813983          	ld	s3,104(sp)
    80002a10:	06013a03          	ld	s4,96(sp)
    80002a14:	05813a83          	ld	s5,88(sp)
    80002a18:	05013b03          	ld	s6,80(sp)
    80002a1c:	04813b83          	ld	s7,72(sp)
    80002a20:	04013c03          	ld	s8,64(sp)
    80002a24:	03813c83          	ld	s9,56(sp)
    80002a28:	03013d03          	ld	s10,48(sp)
    80002a2c:	02813d83          	ld	s11,40(sp)
    80002a30:	0d010113          	addi	sp,sp,208
    80002a34:	00008067          	ret
    80002a38:	07300713          	li	a4,115
    80002a3c:	1ce78a63          	beq	a5,a4,80002c10 <__printf+0x4b8>
    80002a40:	07800713          	li	a4,120
    80002a44:	1ee79e63          	bne	a5,a4,80002c40 <__printf+0x4e8>
    80002a48:	f7843783          	ld	a5,-136(s0)
    80002a4c:	0007a703          	lw	a4,0(a5)
    80002a50:	00878793          	addi	a5,a5,8
    80002a54:	f6f43c23          	sd	a5,-136(s0)
    80002a58:	28074263          	bltz	a4,80002cdc <__printf+0x584>
    80002a5c:	00001d97          	auipc	s11,0x1
    80002a60:	75cd8d93          	addi	s11,s11,1884 # 800041b8 <digits>
    80002a64:	00f77793          	andi	a5,a4,15
    80002a68:	00fd87b3          	add	a5,s11,a5
    80002a6c:	0007c683          	lbu	a3,0(a5)
    80002a70:	00f00613          	li	a2,15
    80002a74:	0007079b          	sext.w	a5,a4
    80002a78:	f8d40023          	sb	a3,-128(s0)
    80002a7c:	0047559b          	srliw	a1,a4,0x4
    80002a80:	0047569b          	srliw	a3,a4,0x4
    80002a84:	00000c93          	li	s9,0
    80002a88:	0ee65063          	bge	a2,a4,80002b68 <__printf+0x410>
    80002a8c:	00f6f693          	andi	a3,a3,15
    80002a90:	00dd86b3          	add	a3,s11,a3
    80002a94:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002a98:	0087d79b          	srliw	a5,a5,0x8
    80002a9c:	00100c93          	li	s9,1
    80002aa0:	f8d400a3          	sb	a3,-127(s0)
    80002aa4:	0cb67263          	bgeu	a2,a1,80002b68 <__printf+0x410>
    80002aa8:	00f7f693          	andi	a3,a5,15
    80002aac:	00dd86b3          	add	a3,s11,a3
    80002ab0:	0006c583          	lbu	a1,0(a3)
    80002ab4:	00f00613          	li	a2,15
    80002ab8:	0047d69b          	srliw	a3,a5,0x4
    80002abc:	f8b40123          	sb	a1,-126(s0)
    80002ac0:	0047d593          	srli	a1,a5,0x4
    80002ac4:	28f67e63          	bgeu	a2,a5,80002d60 <__printf+0x608>
    80002ac8:	00f6f693          	andi	a3,a3,15
    80002acc:	00dd86b3          	add	a3,s11,a3
    80002ad0:	0006c503          	lbu	a0,0(a3)
    80002ad4:	0087d813          	srli	a6,a5,0x8
    80002ad8:	0087d69b          	srliw	a3,a5,0x8
    80002adc:	f8a401a3          	sb	a0,-125(s0)
    80002ae0:	28b67663          	bgeu	a2,a1,80002d6c <__printf+0x614>
    80002ae4:	00f6f693          	andi	a3,a3,15
    80002ae8:	00dd86b3          	add	a3,s11,a3
    80002aec:	0006c583          	lbu	a1,0(a3)
    80002af0:	00c7d513          	srli	a0,a5,0xc
    80002af4:	00c7d69b          	srliw	a3,a5,0xc
    80002af8:	f8b40223          	sb	a1,-124(s0)
    80002afc:	29067a63          	bgeu	a2,a6,80002d90 <__printf+0x638>
    80002b00:	00f6f693          	andi	a3,a3,15
    80002b04:	00dd86b3          	add	a3,s11,a3
    80002b08:	0006c583          	lbu	a1,0(a3)
    80002b0c:	0107d813          	srli	a6,a5,0x10
    80002b10:	0107d69b          	srliw	a3,a5,0x10
    80002b14:	f8b402a3          	sb	a1,-123(s0)
    80002b18:	28a67263          	bgeu	a2,a0,80002d9c <__printf+0x644>
    80002b1c:	00f6f693          	andi	a3,a3,15
    80002b20:	00dd86b3          	add	a3,s11,a3
    80002b24:	0006c683          	lbu	a3,0(a3)
    80002b28:	0147d79b          	srliw	a5,a5,0x14
    80002b2c:	f8d40323          	sb	a3,-122(s0)
    80002b30:	21067663          	bgeu	a2,a6,80002d3c <__printf+0x5e4>
    80002b34:	02079793          	slli	a5,a5,0x20
    80002b38:	0207d793          	srli	a5,a5,0x20
    80002b3c:	00fd8db3          	add	s11,s11,a5
    80002b40:	000dc683          	lbu	a3,0(s11)
    80002b44:	00800793          	li	a5,8
    80002b48:	00700c93          	li	s9,7
    80002b4c:	f8d403a3          	sb	a3,-121(s0)
    80002b50:	00075c63          	bgez	a4,80002b68 <__printf+0x410>
    80002b54:	f9040713          	addi	a4,s0,-112
    80002b58:	00f70733          	add	a4,a4,a5
    80002b5c:	02d00693          	li	a3,45
    80002b60:	fed70823          	sb	a3,-16(a4)
    80002b64:	00078c93          	mv	s9,a5
    80002b68:	f8040793          	addi	a5,s0,-128
    80002b6c:	01978cb3          	add	s9,a5,s9
    80002b70:	f7f40d13          	addi	s10,s0,-129
    80002b74:	000cc503          	lbu	a0,0(s9)
    80002b78:	fffc8c93          	addi	s9,s9,-1
    80002b7c:	00000097          	auipc	ra,0x0
    80002b80:	9f8080e7          	jalr	-1544(ra) # 80002574 <consputc>
    80002b84:	ff9d18e3          	bne	s10,s9,80002b74 <__printf+0x41c>
    80002b88:	0100006f          	j	80002b98 <__printf+0x440>
    80002b8c:	00000097          	auipc	ra,0x0
    80002b90:	9e8080e7          	jalr	-1560(ra) # 80002574 <consputc>
    80002b94:	000c8493          	mv	s1,s9
    80002b98:	00094503          	lbu	a0,0(s2)
    80002b9c:	c60510e3          	bnez	a0,800027fc <__printf+0xa4>
    80002ba0:	e40c0ee3          	beqz	s8,800029fc <__printf+0x2a4>
    80002ba4:	00003517          	auipc	a0,0x3
    80002ba8:	e2c50513          	addi	a0,a0,-468 # 800059d0 <pr>
    80002bac:	00001097          	auipc	ra,0x1
    80002bb0:	94c080e7          	jalr	-1716(ra) # 800034f8 <release>
    80002bb4:	e49ff06f          	j	800029fc <__printf+0x2a4>
    80002bb8:	f7843783          	ld	a5,-136(s0)
    80002bbc:	03000513          	li	a0,48
    80002bc0:	01000d13          	li	s10,16
    80002bc4:	00878713          	addi	a4,a5,8
    80002bc8:	0007bc83          	ld	s9,0(a5)
    80002bcc:	f6e43c23          	sd	a4,-136(s0)
    80002bd0:	00000097          	auipc	ra,0x0
    80002bd4:	9a4080e7          	jalr	-1628(ra) # 80002574 <consputc>
    80002bd8:	07800513          	li	a0,120
    80002bdc:	00000097          	auipc	ra,0x0
    80002be0:	998080e7          	jalr	-1640(ra) # 80002574 <consputc>
    80002be4:	00001d97          	auipc	s11,0x1
    80002be8:	5d4d8d93          	addi	s11,s11,1492 # 800041b8 <digits>
    80002bec:	03ccd793          	srli	a5,s9,0x3c
    80002bf0:	00fd87b3          	add	a5,s11,a5
    80002bf4:	0007c503          	lbu	a0,0(a5)
    80002bf8:	fffd0d1b          	addiw	s10,s10,-1
    80002bfc:	004c9c93          	slli	s9,s9,0x4
    80002c00:	00000097          	auipc	ra,0x0
    80002c04:	974080e7          	jalr	-1676(ra) # 80002574 <consputc>
    80002c08:	fe0d12e3          	bnez	s10,80002bec <__printf+0x494>
    80002c0c:	f8dff06f          	j	80002b98 <__printf+0x440>
    80002c10:	f7843783          	ld	a5,-136(s0)
    80002c14:	0007bc83          	ld	s9,0(a5)
    80002c18:	00878793          	addi	a5,a5,8
    80002c1c:	f6f43c23          	sd	a5,-136(s0)
    80002c20:	000c9a63          	bnez	s9,80002c34 <__printf+0x4dc>
    80002c24:	1080006f          	j	80002d2c <__printf+0x5d4>
    80002c28:	001c8c93          	addi	s9,s9,1
    80002c2c:	00000097          	auipc	ra,0x0
    80002c30:	948080e7          	jalr	-1720(ra) # 80002574 <consputc>
    80002c34:	000cc503          	lbu	a0,0(s9)
    80002c38:	fe0518e3          	bnez	a0,80002c28 <__printf+0x4d0>
    80002c3c:	f5dff06f          	j	80002b98 <__printf+0x440>
    80002c40:	02500513          	li	a0,37
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	930080e7          	jalr	-1744(ra) # 80002574 <consputc>
    80002c4c:	000c8513          	mv	a0,s9
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	924080e7          	jalr	-1756(ra) # 80002574 <consputc>
    80002c58:	f41ff06f          	j	80002b98 <__printf+0x440>
    80002c5c:	02500513          	li	a0,37
    80002c60:	00000097          	auipc	ra,0x0
    80002c64:	914080e7          	jalr	-1772(ra) # 80002574 <consputc>
    80002c68:	f31ff06f          	j	80002b98 <__printf+0x440>
    80002c6c:	00030513          	mv	a0,t1
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	7bc080e7          	jalr	1980(ra) # 8000342c <acquire>
    80002c78:	b4dff06f          	j	800027c4 <__printf+0x6c>
    80002c7c:	40c0053b          	negw	a0,a2
    80002c80:	00a00713          	li	a4,10
    80002c84:	02e576bb          	remuw	a3,a0,a4
    80002c88:	00001d97          	auipc	s11,0x1
    80002c8c:	530d8d93          	addi	s11,s11,1328 # 800041b8 <digits>
    80002c90:	ff700593          	li	a1,-9
    80002c94:	02069693          	slli	a3,a3,0x20
    80002c98:	0206d693          	srli	a3,a3,0x20
    80002c9c:	00dd86b3          	add	a3,s11,a3
    80002ca0:	0006c683          	lbu	a3,0(a3)
    80002ca4:	02e557bb          	divuw	a5,a0,a4
    80002ca8:	f8d40023          	sb	a3,-128(s0)
    80002cac:	10b65e63          	bge	a2,a1,80002dc8 <__printf+0x670>
    80002cb0:	06300593          	li	a1,99
    80002cb4:	02e7f6bb          	remuw	a3,a5,a4
    80002cb8:	02069693          	slli	a3,a3,0x20
    80002cbc:	0206d693          	srli	a3,a3,0x20
    80002cc0:	00dd86b3          	add	a3,s11,a3
    80002cc4:	0006c683          	lbu	a3,0(a3)
    80002cc8:	02e7d73b          	divuw	a4,a5,a4
    80002ccc:	00200793          	li	a5,2
    80002cd0:	f8d400a3          	sb	a3,-127(s0)
    80002cd4:	bca5ece3          	bltu	a1,a0,800028ac <__printf+0x154>
    80002cd8:	ce5ff06f          	j	800029bc <__printf+0x264>
    80002cdc:	40e007bb          	negw	a5,a4
    80002ce0:	00001d97          	auipc	s11,0x1
    80002ce4:	4d8d8d93          	addi	s11,s11,1240 # 800041b8 <digits>
    80002ce8:	00f7f693          	andi	a3,a5,15
    80002cec:	00dd86b3          	add	a3,s11,a3
    80002cf0:	0006c583          	lbu	a1,0(a3)
    80002cf4:	ff100613          	li	a2,-15
    80002cf8:	0047d69b          	srliw	a3,a5,0x4
    80002cfc:	f8b40023          	sb	a1,-128(s0)
    80002d00:	0047d59b          	srliw	a1,a5,0x4
    80002d04:	0ac75e63          	bge	a4,a2,80002dc0 <__printf+0x668>
    80002d08:	00f6f693          	andi	a3,a3,15
    80002d0c:	00dd86b3          	add	a3,s11,a3
    80002d10:	0006c603          	lbu	a2,0(a3)
    80002d14:	00f00693          	li	a3,15
    80002d18:	0087d79b          	srliw	a5,a5,0x8
    80002d1c:	f8c400a3          	sb	a2,-127(s0)
    80002d20:	d8b6e4e3          	bltu	a3,a1,80002aa8 <__printf+0x350>
    80002d24:	00200793          	li	a5,2
    80002d28:	e2dff06f          	j	80002b54 <__printf+0x3fc>
    80002d2c:	00001c97          	auipc	s9,0x1
    80002d30:	46cc8c93          	addi	s9,s9,1132 # 80004198 <bntOne+0x140>
    80002d34:	02800513          	li	a0,40
    80002d38:	ef1ff06f          	j	80002c28 <__printf+0x4d0>
    80002d3c:	00700793          	li	a5,7
    80002d40:	00600c93          	li	s9,6
    80002d44:	e0dff06f          	j	80002b50 <__printf+0x3f8>
    80002d48:	00700793          	li	a5,7
    80002d4c:	00600c93          	li	s9,6
    80002d50:	c69ff06f          	j	800029b8 <__printf+0x260>
    80002d54:	00300793          	li	a5,3
    80002d58:	00200c93          	li	s9,2
    80002d5c:	c5dff06f          	j	800029b8 <__printf+0x260>
    80002d60:	00300793          	li	a5,3
    80002d64:	00200c93          	li	s9,2
    80002d68:	de9ff06f          	j	80002b50 <__printf+0x3f8>
    80002d6c:	00400793          	li	a5,4
    80002d70:	00300c93          	li	s9,3
    80002d74:	dddff06f          	j	80002b50 <__printf+0x3f8>
    80002d78:	00400793          	li	a5,4
    80002d7c:	00300c93          	li	s9,3
    80002d80:	c39ff06f          	j	800029b8 <__printf+0x260>
    80002d84:	00500793          	li	a5,5
    80002d88:	00400c93          	li	s9,4
    80002d8c:	c2dff06f          	j	800029b8 <__printf+0x260>
    80002d90:	00500793          	li	a5,5
    80002d94:	00400c93          	li	s9,4
    80002d98:	db9ff06f          	j	80002b50 <__printf+0x3f8>
    80002d9c:	00600793          	li	a5,6
    80002da0:	00500c93          	li	s9,5
    80002da4:	dadff06f          	j	80002b50 <__printf+0x3f8>
    80002da8:	00600793          	li	a5,6
    80002dac:	00500c93          	li	s9,5
    80002db0:	c09ff06f          	j	800029b8 <__printf+0x260>
    80002db4:	00800793          	li	a5,8
    80002db8:	00700c93          	li	s9,7
    80002dbc:	bfdff06f          	j	800029b8 <__printf+0x260>
    80002dc0:	00100793          	li	a5,1
    80002dc4:	d91ff06f          	j	80002b54 <__printf+0x3fc>
    80002dc8:	00100793          	li	a5,1
    80002dcc:	bf1ff06f          	j	800029bc <__printf+0x264>
    80002dd0:	00900793          	li	a5,9
    80002dd4:	00800c93          	li	s9,8
    80002dd8:	be1ff06f          	j	800029b8 <__printf+0x260>
    80002ddc:	00001517          	auipc	a0,0x1
    80002de0:	3c450513          	addi	a0,a0,964 # 800041a0 <bntOne+0x148>
    80002de4:	00000097          	auipc	ra,0x0
    80002de8:	918080e7          	jalr	-1768(ra) # 800026fc <panic>

0000000080002dec <printfinit>:
    80002dec:	fe010113          	addi	sp,sp,-32
    80002df0:	00813823          	sd	s0,16(sp)
    80002df4:	00913423          	sd	s1,8(sp)
    80002df8:	00113c23          	sd	ra,24(sp)
    80002dfc:	02010413          	addi	s0,sp,32
    80002e00:	00003497          	auipc	s1,0x3
    80002e04:	bd048493          	addi	s1,s1,-1072 # 800059d0 <pr>
    80002e08:	00048513          	mv	a0,s1
    80002e0c:	00001597          	auipc	a1,0x1
    80002e10:	3a458593          	addi	a1,a1,932 # 800041b0 <bntOne+0x158>
    80002e14:	00000097          	auipc	ra,0x0
    80002e18:	5f4080e7          	jalr	1524(ra) # 80003408 <initlock>
    80002e1c:	01813083          	ld	ra,24(sp)
    80002e20:	01013403          	ld	s0,16(sp)
    80002e24:	0004ac23          	sw	zero,24(s1)
    80002e28:	00813483          	ld	s1,8(sp)
    80002e2c:	02010113          	addi	sp,sp,32
    80002e30:	00008067          	ret

0000000080002e34 <uartinit>:
    80002e34:	ff010113          	addi	sp,sp,-16
    80002e38:	00813423          	sd	s0,8(sp)
    80002e3c:	01010413          	addi	s0,sp,16
    80002e40:	100007b7          	lui	a5,0x10000
    80002e44:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002e48:	f8000713          	li	a4,-128
    80002e4c:	00e781a3          	sb	a4,3(a5)
    80002e50:	00300713          	li	a4,3
    80002e54:	00e78023          	sb	a4,0(a5)
    80002e58:	000780a3          	sb	zero,1(a5)
    80002e5c:	00e781a3          	sb	a4,3(a5)
    80002e60:	00700693          	li	a3,7
    80002e64:	00d78123          	sb	a3,2(a5)
    80002e68:	00e780a3          	sb	a4,1(a5)
    80002e6c:	00813403          	ld	s0,8(sp)
    80002e70:	01010113          	addi	sp,sp,16
    80002e74:	00008067          	ret

0000000080002e78 <uartputc>:
    80002e78:	00002797          	auipc	a5,0x2
    80002e7c:	8f07a783          	lw	a5,-1808(a5) # 80004768 <panicked>
    80002e80:	00078463          	beqz	a5,80002e88 <uartputc+0x10>
    80002e84:	0000006f          	j	80002e84 <uartputc+0xc>
    80002e88:	fd010113          	addi	sp,sp,-48
    80002e8c:	02813023          	sd	s0,32(sp)
    80002e90:	00913c23          	sd	s1,24(sp)
    80002e94:	01213823          	sd	s2,16(sp)
    80002e98:	01313423          	sd	s3,8(sp)
    80002e9c:	02113423          	sd	ra,40(sp)
    80002ea0:	03010413          	addi	s0,sp,48
    80002ea4:	00002917          	auipc	s2,0x2
    80002ea8:	8cc90913          	addi	s2,s2,-1844 # 80004770 <uart_tx_r>
    80002eac:	00093783          	ld	a5,0(s2)
    80002eb0:	00002497          	auipc	s1,0x2
    80002eb4:	8c848493          	addi	s1,s1,-1848 # 80004778 <uart_tx_w>
    80002eb8:	0004b703          	ld	a4,0(s1)
    80002ebc:	02078693          	addi	a3,a5,32
    80002ec0:	00050993          	mv	s3,a0
    80002ec4:	02e69c63          	bne	a3,a4,80002efc <uartputc+0x84>
    80002ec8:	00001097          	auipc	ra,0x1
    80002ecc:	834080e7          	jalr	-1996(ra) # 800036fc <push_on>
    80002ed0:	00093783          	ld	a5,0(s2)
    80002ed4:	0004b703          	ld	a4,0(s1)
    80002ed8:	02078793          	addi	a5,a5,32
    80002edc:	00e79463          	bne	a5,a4,80002ee4 <uartputc+0x6c>
    80002ee0:	0000006f          	j	80002ee0 <uartputc+0x68>
    80002ee4:	00001097          	auipc	ra,0x1
    80002ee8:	88c080e7          	jalr	-1908(ra) # 80003770 <pop_on>
    80002eec:	00093783          	ld	a5,0(s2)
    80002ef0:	0004b703          	ld	a4,0(s1)
    80002ef4:	02078693          	addi	a3,a5,32
    80002ef8:	fce688e3          	beq	a3,a4,80002ec8 <uartputc+0x50>
    80002efc:	01f77693          	andi	a3,a4,31
    80002f00:	00003597          	auipc	a1,0x3
    80002f04:	af058593          	addi	a1,a1,-1296 # 800059f0 <uart_tx_buf>
    80002f08:	00d586b3          	add	a3,a1,a3
    80002f0c:	00170713          	addi	a4,a4,1
    80002f10:	01368023          	sb	s3,0(a3)
    80002f14:	00e4b023          	sd	a4,0(s1)
    80002f18:	10000637          	lui	a2,0x10000
    80002f1c:	02f71063          	bne	a4,a5,80002f3c <uartputc+0xc4>
    80002f20:	0340006f          	j	80002f54 <uartputc+0xdc>
    80002f24:	00074703          	lbu	a4,0(a4)
    80002f28:	00f93023          	sd	a5,0(s2)
    80002f2c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002f30:	00093783          	ld	a5,0(s2)
    80002f34:	0004b703          	ld	a4,0(s1)
    80002f38:	00f70e63          	beq	a4,a5,80002f54 <uartputc+0xdc>
    80002f3c:	00564683          	lbu	a3,5(a2)
    80002f40:	01f7f713          	andi	a4,a5,31
    80002f44:	00e58733          	add	a4,a1,a4
    80002f48:	0206f693          	andi	a3,a3,32
    80002f4c:	00178793          	addi	a5,a5,1
    80002f50:	fc069ae3          	bnez	a3,80002f24 <uartputc+0xac>
    80002f54:	02813083          	ld	ra,40(sp)
    80002f58:	02013403          	ld	s0,32(sp)
    80002f5c:	01813483          	ld	s1,24(sp)
    80002f60:	01013903          	ld	s2,16(sp)
    80002f64:	00813983          	ld	s3,8(sp)
    80002f68:	03010113          	addi	sp,sp,48
    80002f6c:	00008067          	ret

0000000080002f70 <uartputc_sync>:
    80002f70:	ff010113          	addi	sp,sp,-16
    80002f74:	00813423          	sd	s0,8(sp)
    80002f78:	01010413          	addi	s0,sp,16
    80002f7c:	00001717          	auipc	a4,0x1
    80002f80:	7ec72703          	lw	a4,2028(a4) # 80004768 <panicked>
    80002f84:	02071663          	bnez	a4,80002fb0 <uartputc_sync+0x40>
    80002f88:	00050793          	mv	a5,a0
    80002f8c:	100006b7          	lui	a3,0x10000
    80002f90:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002f94:	02077713          	andi	a4,a4,32
    80002f98:	fe070ce3          	beqz	a4,80002f90 <uartputc_sync+0x20>
    80002f9c:	0ff7f793          	andi	a5,a5,255
    80002fa0:	00f68023          	sb	a5,0(a3)
    80002fa4:	00813403          	ld	s0,8(sp)
    80002fa8:	01010113          	addi	sp,sp,16
    80002fac:	00008067          	ret
    80002fb0:	0000006f          	j	80002fb0 <uartputc_sync+0x40>

0000000080002fb4 <uartstart>:
    80002fb4:	ff010113          	addi	sp,sp,-16
    80002fb8:	00813423          	sd	s0,8(sp)
    80002fbc:	01010413          	addi	s0,sp,16
    80002fc0:	00001617          	auipc	a2,0x1
    80002fc4:	7b060613          	addi	a2,a2,1968 # 80004770 <uart_tx_r>
    80002fc8:	00001517          	auipc	a0,0x1
    80002fcc:	7b050513          	addi	a0,a0,1968 # 80004778 <uart_tx_w>
    80002fd0:	00063783          	ld	a5,0(a2)
    80002fd4:	00053703          	ld	a4,0(a0)
    80002fd8:	04f70263          	beq	a4,a5,8000301c <uartstart+0x68>
    80002fdc:	100005b7          	lui	a1,0x10000
    80002fe0:	00003817          	auipc	a6,0x3
    80002fe4:	a1080813          	addi	a6,a6,-1520 # 800059f0 <uart_tx_buf>
    80002fe8:	01c0006f          	j	80003004 <uartstart+0x50>
    80002fec:	0006c703          	lbu	a4,0(a3)
    80002ff0:	00f63023          	sd	a5,0(a2)
    80002ff4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002ff8:	00063783          	ld	a5,0(a2)
    80002ffc:	00053703          	ld	a4,0(a0)
    80003000:	00f70e63          	beq	a4,a5,8000301c <uartstart+0x68>
    80003004:	01f7f713          	andi	a4,a5,31
    80003008:	00e806b3          	add	a3,a6,a4
    8000300c:	0055c703          	lbu	a4,5(a1)
    80003010:	00178793          	addi	a5,a5,1
    80003014:	02077713          	andi	a4,a4,32
    80003018:	fc071ae3          	bnez	a4,80002fec <uartstart+0x38>
    8000301c:	00813403          	ld	s0,8(sp)
    80003020:	01010113          	addi	sp,sp,16
    80003024:	00008067          	ret

0000000080003028 <uartgetc>:
    80003028:	ff010113          	addi	sp,sp,-16
    8000302c:	00813423          	sd	s0,8(sp)
    80003030:	01010413          	addi	s0,sp,16
    80003034:	10000737          	lui	a4,0x10000
    80003038:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000303c:	0017f793          	andi	a5,a5,1
    80003040:	00078c63          	beqz	a5,80003058 <uartgetc+0x30>
    80003044:	00074503          	lbu	a0,0(a4)
    80003048:	0ff57513          	andi	a0,a0,255
    8000304c:	00813403          	ld	s0,8(sp)
    80003050:	01010113          	addi	sp,sp,16
    80003054:	00008067          	ret
    80003058:	fff00513          	li	a0,-1
    8000305c:	ff1ff06f          	j	8000304c <uartgetc+0x24>

0000000080003060 <uartintr>:
    80003060:	100007b7          	lui	a5,0x10000
    80003064:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003068:	0017f793          	andi	a5,a5,1
    8000306c:	0a078463          	beqz	a5,80003114 <uartintr+0xb4>
    80003070:	fe010113          	addi	sp,sp,-32
    80003074:	00813823          	sd	s0,16(sp)
    80003078:	00913423          	sd	s1,8(sp)
    8000307c:	00113c23          	sd	ra,24(sp)
    80003080:	02010413          	addi	s0,sp,32
    80003084:	100004b7          	lui	s1,0x10000
    80003088:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000308c:	0ff57513          	andi	a0,a0,255
    80003090:	fffff097          	auipc	ra,0xfffff
    80003094:	534080e7          	jalr	1332(ra) # 800025c4 <consoleintr>
    80003098:	0054c783          	lbu	a5,5(s1)
    8000309c:	0017f793          	andi	a5,a5,1
    800030a0:	fe0794e3          	bnez	a5,80003088 <uartintr+0x28>
    800030a4:	00001617          	auipc	a2,0x1
    800030a8:	6cc60613          	addi	a2,a2,1740 # 80004770 <uart_tx_r>
    800030ac:	00001517          	auipc	a0,0x1
    800030b0:	6cc50513          	addi	a0,a0,1740 # 80004778 <uart_tx_w>
    800030b4:	00063783          	ld	a5,0(a2)
    800030b8:	00053703          	ld	a4,0(a0)
    800030bc:	04f70263          	beq	a4,a5,80003100 <uartintr+0xa0>
    800030c0:	100005b7          	lui	a1,0x10000
    800030c4:	00003817          	auipc	a6,0x3
    800030c8:	92c80813          	addi	a6,a6,-1748 # 800059f0 <uart_tx_buf>
    800030cc:	01c0006f          	j	800030e8 <uartintr+0x88>
    800030d0:	0006c703          	lbu	a4,0(a3)
    800030d4:	00f63023          	sd	a5,0(a2)
    800030d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800030dc:	00063783          	ld	a5,0(a2)
    800030e0:	00053703          	ld	a4,0(a0)
    800030e4:	00f70e63          	beq	a4,a5,80003100 <uartintr+0xa0>
    800030e8:	01f7f713          	andi	a4,a5,31
    800030ec:	00e806b3          	add	a3,a6,a4
    800030f0:	0055c703          	lbu	a4,5(a1)
    800030f4:	00178793          	addi	a5,a5,1
    800030f8:	02077713          	andi	a4,a4,32
    800030fc:	fc071ae3          	bnez	a4,800030d0 <uartintr+0x70>
    80003100:	01813083          	ld	ra,24(sp)
    80003104:	01013403          	ld	s0,16(sp)
    80003108:	00813483          	ld	s1,8(sp)
    8000310c:	02010113          	addi	sp,sp,32
    80003110:	00008067          	ret
    80003114:	00001617          	auipc	a2,0x1
    80003118:	65c60613          	addi	a2,a2,1628 # 80004770 <uart_tx_r>
    8000311c:	00001517          	auipc	a0,0x1
    80003120:	65c50513          	addi	a0,a0,1628 # 80004778 <uart_tx_w>
    80003124:	00063783          	ld	a5,0(a2)
    80003128:	00053703          	ld	a4,0(a0)
    8000312c:	04f70263          	beq	a4,a5,80003170 <uartintr+0x110>
    80003130:	100005b7          	lui	a1,0x10000
    80003134:	00003817          	auipc	a6,0x3
    80003138:	8bc80813          	addi	a6,a6,-1860 # 800059f0 <uart_tx_buf>
    8000313c:	01c0006f          	j	80003158 <uartintr+0xf8>
    80003140:	0006c703          	lbu	a4,0(a3)
    80003144:	00f63023          	sd	a5,0(a2)
    80003148:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000314c:	00063783          	ld	a5,0(a2)
    80003150:	00053703          	ld	a4,0(a0)
    80003154:	02f70063          	beq	a4,a5,80003174 <uartintr+0x114>
    80003158:	01f7f713          	andi	a4,a5,31
    8000315c:	00e806b3          	add	a3,a6,a4
    80003160:	0055c703          	lbu	a4,5(a1)
    80003164:	00178793          	addi	a5,a5,1
    80003168:	02077713          	andi	a4,a4,32
    8000316c:	fc071ae3          	bnez	a4,80003140 <uartintr+0xe0>
    80003170:	00008067          	ret
    80003174:	00008067          	ret

0000000080003178 <kinit>:
    80003178:	fc010113          	addi	sp,sp,-64
    8000317c:	02913423          	sd	s1,40(sp)
    80003180:	fffff7b7          	lui	a5,0xfffff
    80003184:	00004497          	auipc	s1,0x4
    80003188:	88b48493          	addi	s1,s1,-1909 # 80006a0f <end+0xfff>
    8000318c:	02813823          	sd	s0,48(sp)
    80003190:	01313c23          	sd	s3,24(sp)
    80003194:	00f4f4b3          	and	s1,s1,a5
    80003198:	02113c23          	sd	ra,56(sp)
    8000319c:	03213023          	sd	s2,32(sp)
    800031a0:	01413823          	sd	s4,16(sp)
    800031a4:	01513423          	sd	s5,8(sp)
    800031a8:	04010413          	addi	s0,sp,64
    800031ac:	000017b7          	lui	a5,0x1
    800031b0:	01100993          	li	s3,17
    800031b4:	00f487b3          	add	a5,s1,a5
    800031b8:	01b99993          	slli	s3,s3,0x1b
    800031bc:	06f9e063          	bltu	s3,a5,8000321c <kinit+0xa4>
    800031c0:	00003a97          	auipc	s5,0x3
    800031c4:	850a8a93          	addi	s5,s5,-1968 # 80005a10 <end>
    800031c8:	0754ec63          	bltu	s1,s5,80003240 <kinit+0xc8>
    800031cc:	0734fa63          	bgeu	s1,s3,80003240 <kinit+0xc8>
    800031d0:	00088a37          	lui	s4,0x88
    800031d4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800031d8:	00001917          	auipc	s2,0x1
    800031dc:	5a890913          	addi	s2,s2,1448 # 80004780 <kmem>
    800031e0:	00ca1a13          	slli	s4,s4,0xc
    800031e4:	0140006f          	j	800031f8 <kinit+0x80>
    800031e8:	000017b7          	lui	a5,0x1
    800031ec:	00f484b3          	add	s1,s1,a5
    800031f0:	0554e863          	bltu	s1,s5,80003240 <kinit+0xc8>
    800031f4:	0534f663          	bgeu	s1,s3,80003240 <kinit+0xc8>
    800031f8:	00001637          	lui	a2,0x1
    800031fc:	00100593          	li	a1,1
    80003200:	00048513          	mv	a0,s1
    80003204:	00000097          	auipc	ra,0x0
    80003208:	5e4080e7          	jalr	1508(ra) # 800037e8 <__memset>
    8000320c:	00093783          	ld	a5,0(s2)
    80003210:	00f4b023          	sd	a5,0(s1)
    80003214:	00993023          	sd	s1,0(s2)
    80003218:	fd4498e3          	bne	s1,s4,800031e8 <kinit+0x70>
    8000321c:	03813083          	ld	ra,56(sp)
    80003220:	03013403          	ld	s0,48(sp)
    80003224:	02813483          	ld	s1,40(sp)
    80003228:	02013903          	ld	s2,32(sp)
    8000322c:	01813983          	ld	s3,24(sp)
    80003230:	01013a03          	ld	s4,16(sp)
    80003234:	00813a83          	ld	s5,8(sp)
    80003238:	04010113          	addi	sp,sp,64
    8000323c:	00008067          	ret
    80003240:	00001517          	auipc	a0,0x1
    80003244:	f9050513          	addi	a0,a0,-112 # 800041d0 <digits+0x18>
    80003248:	fffff097          	auipc	ra,0xfffff
    8000324c:	4b4080e7          	jalr	1204(ra) # 800026fc <panic>

0000000080003250 <freerange>:
    80003250:	fc010113          	addi	sp,sp,-64
    80003254:	000017b7          	lui	a5,0x1
    80003258:	02913423          	sd	s1,40(sp)
    8000325c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003260:	009504b3          	add	s1,a0,s1
    80003264:	fffff537          	lui	a0,0xfffff
    80003268:	02813823          	sd	s0,48(sp)
    8000326c:	02113c23          	sd	ra,56(sp)
    80003270:	03213023          	sd	s2,32(sp)
    80003274:	01313c23          	sd	s3,24(sp)
    80003278:	01413823          	sd	s4,16(sp)
    8000327c:	01513423          	sd	s5,8(sp)
    80003280:	01613023          	sd	s6,0(sp)
    80003284:	04010413          	addi	s0,sp,64
    80003288:	00a4f4b3          	and	s1,s1,a0
    8000328c:	00f487b3          	add	a5,s1,a5
    80003290:	06f5e463          	bltu	a1,a5,800032f8 <freerange+0xa8>
    80003294:	00002a97          	auipc	s5,0x2
    80003298:	77ca8a93          	addi	s5,s5,1916 # 80005a10 <end>
    8000329c:	0954e263          	bltu	s1,s5,80003320 <freerange+0xd0>
    800032a0:	01100993          	li	s3,17
    800032a4:	01b99993          	slli	s3,s3,0x1b
    800032a8:	0734fc63          	bgeu	s1,s3,80003320 <freerange+0xd0>
    800032ac:	00058a13          	mv	s4,a1
    800032b0:	00001917          	auipc	s2,0x1
    800032b4:	4d090913          	addi	s2,s2,1232 # 80004780 <kmem>
    800032b8:	00002b37          	lui	s6,0x2
    800032bc:	0140006f          	j	800032d0 <freerange+0x80>
    800032c0:	000017b7          	lui	a5,0x1
    800032c4:	00f484b3          	add	s1,s1,a5
    800032c8:	0554ec63          	bltu	s1,s5,80003320 <freerange+0xd0>
    800032cc:	0534fa63          	bgeu	s1,s3,80003320 <freerange+0xd0>
    800032d0:	00001637          	lui	a2,0x1
    800032d4:	00100593          	li	a1,1
    800032d8:	00048513          	mv	a0,s1
    800032dc:	00000097          	auipc	ra,0x0
    800032e0:	50c080e7          	jalr	1292(ra) # 800037e8 <__memset>
    800032e4:	00093703          	ld	a4,0(s2)
    800032e8:	016487b3          	add	a5,s1,s6
    800032ec:	00e4b023          	sd	a4,0(s1)
    800032f0:	00993023          	sd	s1,0(s2)
    800032f4:	fcfa76e3          	bgeu	s4,a5,800032c0 <freerange+0x70>
    800032f8:	03813083          	ld	ra,56(sp)
    800032fc:	03013403          	ld	s0,48(sp)
    80003300:	02813483          	ld	s1,40(sp)
    80003304:	02013903          	ld	s2,32(sp)
    80003308:	01813983          	ld	s3,24(sp)
    8000330c:	01013a03          	ld	s4,16(sp)
    80003310:	00813a83          	ld	s5,8(sp)
    80003314:	00013b03          	ld	s6,0(sp)
    80003318:	04010113          	addi	sp,sp,64
    8000331c:	00008067          	ret
    80003320:	00001517          	auipc	a0,0x1
    80003324:	eb050513          	addi	a0,a0,-336 # 800041d0 <digits+0x18>
    80003328:	fffff097          	auipc	ra,0xfffff
    8000332c:	3d4080e7          	jalr	980(ra) # 800026fc <panic>

0000000080003330 <kfree>:
    80003330:	fe010113          	addi	sp,sp,-32
    80003334:	00813823          	sd	s0,16(sp)
    80003338:	00113c23          	sd	ra,24(sp)
    8000333c:	00913423          	sd	s1,8(sp)
    80003340:	02010413          	addi	s0,sp,32
    80003344:	03451793          	slli	a5,a0,0x34
    80003348:	04079c63          	bnez	a5,800033a0 <kfree+0x70>
    8000334c:	00002797          	auipc	a5,0x2
    80003350:	6c478793          	addi	a5,a5,1732 # 80005a10 <end>
    80003354:	00050493          	mv	s1,a0
    80003358:	04f56463          	bltu	a0,a5,800033a0 <kfree+0x70>
    8000335c:	01100793          	li	a5,17
    80003360:	01b79793          	slli	a5,a5,0x1b
    80003364:	02f57e63          	bgeu	a0,a5,800033a0 <kfree+0x70>
    80003368:	00001637          	lui	a2,0x1
    8000336c:	00100593          	li	a1,1
    80003370:	00000097          	auipc	ra,0x0
    80003374:	478080e7          	jalr	1144(ra) # 800037e8 <__memset>
    80003378:	00001797          	auipc	a5,0x1
    8000337c:	40878793          	addi	a5,a5,1032 # 80004780 <kmem>
    80003380:	0007b703          	ld	a4,0(a5)
    80003384:	01813083          	ld	ra,24(sp)
    80003388:	01013403          	ld	s0,16(sp)
    8000338c:	00e4b023          	sd	a4,0(s1)
    80003390:	0097b023          	sd	s1,0(a5)
    80003394:	00813483          	ld	s1,8(sp)
    80003398:	02010113          	addi	sp,sp,32
    8000339c:	00008067          	ret
    800033a0:	00001517          	auipc	a0,0x1
    800033a4:	e3050513          	addi	a0,a0,-464 # 800041d0 <digits+0x18>
    800033a8:	fffff097          	auipc	ra,0xfffff
    800033ac:	354080e7          	jalr	852(ra) # 800026fc <panic>

00000000800033b0 <kalloc>:
    800033b0:	fe010113          	addi	sp,sp,-32
    800033b4:	00813823          	sd	s0,16(sp)
    800033b8:	00913423          	sd	s1,8(sp)
    800033bc:	00113c23          	sd	ra,24(sp)
    800033c0:	02010413          	addi	s0,sp,32
    800033c4:	00001797          	auipc	a5,0x1
    800033c8:	3bc78793          	addi	a5,a5,956 # 80004780 <kmem>
    800033cc:	0007b483          	ld	s1,0(a5)
    800033d0:	02048063          	beqz	s1,800033f0 <kalloc+0x40>
    800033d4:	0004b703          	ld	a4,0(s1)
    800033d8:	00001637          	lui	a2,0x1
    800033dc:	00500593          	li	a1,5
    800033e0:	00048513          	mv	a0,s1
    800033e4:	00e7b023          	sd	a4,0(a5)
    800033e8:	00000097          	auipc	ra,0x0
    800033ec:	400080e7          	jalr	1024(ra) # 800037e8 <__memset>
    800033f0:	01813083          	ld	ra,24(sp)
    800033f4:	01013403          	ld	s0,16(sp)
    800033f8:	00048513          	mv	a0,s1
    800033fc:	00813483          	ld	s1,8(sp)
    80003400:	02010113          	addi	sp,sp,32
    80003404:	00008067          	ret

0000000080003408 <initlock>:
    80003408:	ff010113          	addi	sp,sp,-16
    8000340c:	00813423          	sd	s0,8(sp)
    80003410:	01010413          	addi	s0,sp,16
    80003414:	00813403          	ld	s0,8(sp)
    80003418:	00b53423          	sd	a1,8(a0)
    8000341c:	00052023          	sw	zero,0(a0)
    80003420:	00053823          	sd	zero,16(a0)
    80003424:	01010113          	addi	sp,sp,16
    80003428:	00008067          	ret

000000008000342c <acquire>:
    8000342c:	fe010113          	addi	sp,sp,-32
    80003430:	00813823          	sd	s0,16(sp)
    80003434:	00913423          	sd	s1,8(sp)
    80003438:	00113c23          	sd	ra,24(sp)
    8000343c:	01213023          	sd	s2,0(sp)
    80003440:	02010413          	addi	s0,sp,32
    80003444:	00050493          	mv	s1,a0
    80003448:	10002973          	csrr	s2,sstatus
    8000344c:	100027f3          	csrr	a5,sstatus
    80003450:	ffd7f793          	andi	a5,a5,-3
    80003454:	10079073          	csrw	sstatus,a5
    80003458:	fffff097          	auipc	ra,0xfffff
    8000345c:	8ec080e7          	jalr	-1812(ra) # 80001d44 <mycpu>
    80003460:	07852783          	lw	a5,120(a0)
    80003464:	06078e63          	beqz	a5,800034e0 <acquire+0xb4>
    80003468:	fffff097          	auipc	ra,0xfffff
    8000346c:	8dc080e7          	jalr	-1828(ra) # 80001d44 <mycpu>
    80003470:	07852783          	lw	a5,120(a0)
    80003474:	0004a703          	lw	a4,0(s1)
    80003478:	0017879b          	addiw	a5,a5,1
    8000347c:	06f52c23          	sw	a5,120(a0)
    80003480:	04071063          	bnez	a4,800034c0 <acquire+0x94>
    80003484:	00100713          	li	a4,1
    80003488:	00070793          	mv	a5,a4
    8000348c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003490:	0007879b          	sext.w	a5,a5
    80003494:	fe079ae3          	bnez	a5,80003488 <acquire+0x5c>
    80003498:	0ff0000f          	fence
    8000349c:	fffff097          	auipc	ra,0xfffff
    800034a0:	8a8080e7          	jalr	-1880(ra) # 80001d44 <mycpu>
    800034a4:	01813083          	ld	ra,24(sp)
    800034a8:	01013403          	ld	s0,16(sp)
    800034ac:	00a4b823          	sd	a0,16(s1)
    800034b0:	00013903          	ld	s2,0(sp)
    800034b4:	00813483          	ld	s1,8(sp)
    800034b8:	02010113          	addi	sp,sp,32
    800034bc:	00008067          	ret
    800034c0:	0104b903          	ld	s2,16(s1)
    800034c4:	fffff097          	auipc	ra,0xfffff
    800034c8:	880080e7          	jalr	-1920(ra) # 80001d44 <mycpu>
    800034cc:	faa91ce3          	bne	s2,a0,80003484 <acquire+0x58>
    800034d0:	00001517          	auipc	a0,0x1
    800034d4:	d0850513          	addi	a0,a0,-760 # 800041d8 <digits+0x20>
    800034d8:	fffff097          	auipc	ra,0xfffff
    800034dc:	224080e7          	jalr	548(ra) # 800026fc <panic>
    800034e0:	00195913          	srli	s2,s2,0x1
    800034e4:	fffff097          	auipc	ra,0xfffff
    800034e8:	860080e7          	jalr	-1952(ra) # 80001d44 <mycpu>
    800034ec:	00197913          	andi	s2,s2,1
    800034f0:	07252e23          	sw	s2,124(a0)
    800034f4:	f75ff06f          	j	80003468 <acquire+0x3c>

00000000800034f8 <release>:
    800034f8:	fe010113          	addi	sp,sp,-32
    800034fc:	00813823          	sd	s0,16(sp)
    80003500:	00113c23          	sd	ra,24(sp)
    80003504:	00913423          	sd	s1,8(sp)
    80003508:	01213023          	sd	s2,0(sp)
    8000350c:	02010413          	addi	s0,sp,32
    80003510:	00052783          	lw	a5,0(a0)
    80003514:	00079a63          	bnez	a5,80003528 <release+0x30>
    80003518:	00001517          	auipc	a0,0x1
    8000351c:	cc850513          	addi	a0,a0,-824 # 800041e0 <digits+0x28>
    80003520:	fffff097          	auipc	ra,0xfffff
    80003524:	1dc080e7          	jalr	476(ra) # 800026fc <panic>
    80003528:	01053903          	ld	s2,16(a0)
    8000352c:	00050493          	mv	s1,a0
    80003530:	fffff097          	auipc	ra,0xfffff
    80003534:	814080e7          	jalr	-2028(ra) # 80001d44 <mycpu>
    80003538:	fea910e3          	bne	s2,a0,80003518 <release+0x20>
    8000353c:	0004b823          	sd	zero,16(s1)
    80003540:	0ff0000f          	fence
    80003544:	0f50000f          	fence	iorw,ow
    80003548:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000354c:	ffffe097          	auipc	ra,0xffffe
    80003550:	7f8080e7          	jalr	2040(ra) # 80001d44 <mycpu>
    80003554:	100027f3          	csrr	a5,sstatus
    80003558:	0027f793          	andi	a5,a5,2
    8000355c:	04079a63          	bnez	a5,800035b0 <release+0xb8>
    80003560:	07852783          	lw	a5,120(a0)
    80003564:	02f05e63          	blez	a5,800035a0 <release+0xa8>
    80003568:	fff7871b          	addiw	a4,a5,-1
    8000356c:	06e52c23          	sw	a4,120(a0)
    80003570:	00071c63          	bnez	a4,80003588 <release+0x90>
    80003574:	07c52783          	lw	a5,124(a0)
    80003578:	00078863          	beqz	a5,80003588 <release+0x90>
    8000357c:	100027f3          	csrr	a5,sstatus
    80003580:	0027e793          	ori	a5,a5,2
    80003584:	10079073          	csrw	sstatus,a5
    80003588:	01813083          	ld	ra,24(sp)
    8000358c:	01013403          	ld	s0,16(sp)
    80003590:	00813483          	ld	s1,8(sp)
    80003594:	00013903          	ld	s2,0(sp)
    80003598:	02010113          	addi	sp,sp,32
    8000359c:	00008067          	ret
    800035a0:	00001517          	auipc	a0,0x1
    800035a4:	c6050513          	addi	a0,a0,-928 # 80004200 <digits+0x48>
    800035a8:	fffff097          	auipc	ra,0xfffff
    800035ac:	154080e7          	jalr	340(ra) # 800026fc <panic>
    800035b0:	00001517          	auipc	a0,0x1
    800035b4:	c3850513          	addi	a0,a0,-968 # 800041e8 <digits+0x30>
    800035b8:	fffff097          	auipc	ra,0xfffff
    800035bc:	144080e7          	jalr	324(ra) # 800026fc <panic>

00000000800035c0 <holding>:
    800035c0:	00052783          	lw	a5,0(a0)
    800035c4:	00079663          	bnez	a5,800035d0 <holding+0x10>
    800035c8:	00000513          	li	a0,0
    800035cc:	00008067          	ret
    800035d0:	fe010113          	addi	sp,sp,-32
    800035d4:	00813823          	sd	s0,16(sp)
    800035d8:	00913423          	sd	s1,8(sp)
    800035dc:	00113c23          	sd	ra,24(sp)
    800035e0:	02010413          	addi	s0,sp,32
    800035e4:	01053483          	ld	s1,16(a0)
    800035e8:	ffffe097          	auipc	ra,0xffffe
    800035ec:	75c080e7          	jalr	1884(ra) # 80001d44 <mycpu>
    800035f0:	01813083          	ld	ra,24(sp)
    800035f4:	01013403          	ld	s0,16(sp)
    800035f8:	40a48533          	sub	a0,s1,a0
    800035fc:	00153513          	seqz	a0,a0
    80003600:	00813483          	ld	s1,8(sp)
    80003604:	02010113          	addi	sp,sp,32
    80003608:	00008067          	ret

000000008000360c <push_off>:
    8000360c:	fe010113          	addi	sp,sp,-32
    80003610:	00813823          	sd	s0,16(sp)
    80003614:	00113c23          	sd	ra,24(sp)
    80003618:	00913423          	sd	s1,8(sp)
    8000361c:	02010413          	addi	s0,sp,32
    80003620:	100024f3          	csrr	s1,sstatus
    80003624:	100027f3          	csrr	a5,sstatus
    80003628:	ffd7f793          	andi	a5,a5,-3
    8000362c:	10079073          	csrw	sstatus,a5
    80003630:	ffffe097          	auipc	ra,0xffffe
    80003634:	714080e7          	jalr	1812(ra) # 80001d44 <mycpu>
    80003638:	07852783          	lw	a5,120(a0)
    8000363c:	02078663          	beqz	a5,80003668 <push_off+0x5c>
    80003640:	ffffe097          	auipc	ra,0xffffe
    80003644:	704080e7          	jalr	1796(ra) # 80001d44 <mycpu>
    80003648:	07852783          	lw	a5,120(a0)
    8000364c:	01813083          	ld	ra,24(sp)
    80003650:	01013403          	ld	s0,16(sp)
    80003654:	0017879b          	addiw	a5,a5,1
    80003658:	06f52c23          	sw	a5,120(a0)
    8000365c:	00813483          	ld	s1,8(sp)
    80003660:	02010113          	addi	sp,sp,32
    80003664:	00008067          	ret
    80003668:	0014d493          	srli	s1,s1,0x1
    8000366c:	ffffe097          	auipc	ra,0xffffe
    80003670:	6d8080e7          	jalr	1752(ra) # 80001d44 <mycpu>
    80003674:	0014f493          	andi	s1,s1,1
    80003678:	06952e23          	sw	s1,124(a0)
    8000367c:	fc5ff06f          	j	80003640 <push_off+0x34>

0000000080003680 <pop_off>:
    80003680:	ff010113          	addi	sp,sp,-16
    80003684:	00813023          	sd	s0,0(sp)
    80003688:	00113423          	sd	ra,8(sp)
    8000368c:	01010413          	addi	s0,sp,16
    80003690:	ffffe097          	auipc	ra,0xffffe
    80003694:	6b4080e7          	jalr	1716(ra) # 80001d44 <mycpu>
    80003698:	100027f3          	csrr	a5,sstatus
    8000369c:	0027f793          	andi	a5,a5,2
    800036a0:	04079663          	bnez	a5,800036ec <pop_off+0x6c>
    800036a4:	07852783          	lw	a5,120(a0)
    800036a8:	02f05a63          	blez	a5,800036dc <pop_off+0x5c>
    800036ac:	fff7871b          	addiw	a4,a5,-1
    800036b0:	06e52c23          	sw	a4,120(a0)
    800036b4:	00071c63          	bnez	a4,800036cc <pop_off+0x4c>
    800036b8:	07c52783          	lw	a5,124(a0)
    800036bc:	00078863          	beqz	a5,800036cc <pop_off+0x4c>
    800036c0:	100027f3          	csrr	a5,sstatus
    800036c4:	0027e793          	ori	a5,a5,2
    800036c8:	10079073          	csrw	sstatus,a5
    800036cc:	00813083          	ld	ra,8(sp)
    800036d0:	00013403          	ld	s0,0(sp)
    800036d4:	01010113          	addi	sp,sp,16
    800036d8:	00008067          	ret
    800036dc:	00001517          	auipc	a0,0x1
    800036e0:	b2450513          	addi	a0,a0,-1244 # 80004200 <digits+0x48>
    800036e4:	fffff097          	auipc	ra,0xfffff
    800036e8:	018080e7          	jalr	24(ra) # 800026fc <panic>
    800036ec:	00001517          	auipc	a0,0x1
    800036f0:	afc50513          	addi	a0,a0,-1284 # 800041e8 <digits+0x30>
    800036f4:	fffff097          	auipc	ra,0xfffff
    800036f8:	008080e7          	jalr	8(ra) # 800026fc <panic>

00000000800036fc <push_on>:
    800036fc:	fe010113          	addi	sp,sp,-32
    80003700:	00813823          	sd	s0,16(sp)
    80003704:	00113c23          	sd	ra,24(sp)
    80003708:	00913423          	sd	s1,8(sp)
    8000370c:	02010413          	addi	s0,sp,32
    80003710:	100024f3          	csrr	s1,sstatus
    80003714:	100027f3          	csrr	a5,sstatus
    80003718:	0027e793          	ori	a5,a5,2
    8000371c:	10079073          	csrw	sstatus,a5
    80003720:	ffffe097          	auipc	ra,0xffffe
    80003724:	624080e7          	jalr	1572(ra) # 80001d44 <mycpu>
    80003728:	07852783          	lw	a5,120(a0)
    8000372c:	02078663          	beqz	a5,80003758 <push_on+0x5c>
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	614080e7          	jalr	1556(ra) # 80001d44 <mycpu>
    80003738:	07852783          	lw	a5,120(a0)
    8000373c:	01813083          	ld	ra,24(sp)
    80003740:	01013403          	ld	s0,16(sp)
    80003744:	0017879b          	addiw	a5,a5,1
    80003748:	06f52c23          	sw	a5,120(a0)
    8000374c:	00813483          	ld	s1,8(sp)
    80003750:	02010113          	addi	sp,sp,32
    80003754:	00008067          	ret
    80003758:	0014d493          	srli	s1,s1,0x1
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	5e8080e7          	jalr	1512(ra) # 80001d44 <mycpu>
    80003764:	0014f493          	andi	s1,s1,1
    80003768:	06952e23          	sw	s1,124(a0)
    8000376c:	fc5ff06f          	j	80003730 <push_on+0x34>

0000000080003770 <pop_on>:
    80003770:	ff010113          	addi	sp,sp,-16
    80003774:	00813023          	sd	s0,0(sp)
    80003778:	00113423          	sd	ra,8(sp)
    8000377c:	01010413          	addi	s0,sp,16
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	5c4080e7          	jalr	1476(ra) # 80001d44 <mycpu>
    80003788:	100027f3          	csrr	a5,sstatus
    8000378c:	0027f793          	andi	a5,a5,2
    80003790:	04078463          	beqz	a5,800037d8 <pop_on+0x68>
    80003794:	07852783          	lw	a5,120(a0)
    80003798:	02f05863          	blez	a5,800037c8 <pop_on+0x58>
    8000379c:	fff7879b          	addiw	a5,a5,-1
    800037a0:	06f52c23          	sw	a5,120(a0)
    800037a4:	07853783          	ld	a5,120(a0)
    800037a8:	00079863          	bnez	a5,800037b8 <pop_on+0x48>
    800037ac:	100027f3          	csrr	a5,sstatus
    800037b0:	ffd7f793          	andi	a5,a5,-3
    800037b4:	10079073          	csrw	sstatus,a5
    800037b8:	00813083          	ld	ra,8(sp)
    800037bc:	00013403          	ld	s0,0(sp)
    800037c0:	01010113          	addi	sp,sp,16
    800037c4:	00008067          	ret
    800037c8:	00001517          	auipc	a0,0x1
    800037cc:	a6050513          	addi	a0,a0,-1440 # 80004228 <digits+0x70>
    800037d0:	fffff097          	auipc	ra,0xfffff
    800037d4:	f2c080e7          	jalr	-212(ra) # 800026fc <panic>
    800037d8:	00001517          	auipc	a0,0x1
    800037dc:	a3050513          	addi	a0,a0,-1488 # 80004208 <digits+0x50>
    800037e0:	fffff097          	auipc	ra,0xfffff
    800037e4:	f1c080e7          	jalr	-228(ra) # 800026fc <panic>

00000000800037e8 <__memset>:
    800037e8:	ff010113          	addi	sp,sp,-16
    800037ec:	00813423          	sd	s0,8(sp)
    800037f0:	01010413          	addi	s0,sp,16
    800037f4:	1a060e63          	beqz	a2,800039b0 <__memset+0x1c8>
    800037f8:	40a007b3          	neg	a5,a0
    800037fc:	0077f793          	andi	a5,a5,7
    80003800:	00778693          	addi	a3,a5,7
    80003804:	00b00813          	li	a6,11
    80003808:	0ff5f593          	andi	a1,a1,255
    8000380c:	fff6071b          	addiw	a4,a2,-1
    80003810:	1b06e663          	bltu	a3,a6,800039bc <__memset+0x1d4>
    80003814:	1cd76463          	bltu	a4,a3,800039dc <__memset+0x1f4>
    80003818:	1a078e63          	beqz	a5,800039d4 <__memset+0x1ec>
    8000381c:	00b50023          	sb	a1,0(a0)
    80003820:	00100713          	li	a4,1
    80003824:	1ae78463          	beq	a5,a4,800039cc <__memset+0x1e4>
    80003828:	00b500a3          	sb	a1,1(a0)
    8000382c:	00200713          	li	a4,2
    80003830:	1ae78a63          	beq	a5,a4,800039e4 <__memset+0x1fc>
    80003834:	00b50123          	sb	a1,2(a0)
    80003838:	00300713          	li	a4,3
    8000383c:	18e78463          	beq	a5,a4,800039c4 <__memset+0x1dc>
    80003840:	00b501a3          	sb	a1,3(a0)
    80003844:	00400713          	li	a4,4
    80003848:	1ae78263          	beq	a5,a4,800039ec <__memset+0x204>
    8000384c:	00b50223          	sb	a1,4(a0)
    80003850:	00500713          	li	a4,5
    80003854:	1ae78063          	beq	a5,a4,800039f4 <__memset+0x20c>
    80003858:	00b502a3          	sb	a1,5(a0)
    8000385c:	00700713          	li	a4,7
    80003860:	18e79e63          	bne	a5,a4,800039fc <__memset+0x214>
    80003864:	00b50323          	sb	a1,6(a0)
    80003868:	00700e93          	li	t4,7
    8000386c:	00859713          	slli	a4,a1,0x8
    80003870:	00e5e733          	or	a4,a1,a4
    80003874:	01059e13          	slli	t3,a1,0x10
    80003878:	01c76e33          	or	t3,a4,t3
    8000387c:	01859313          	slli	t1,a1,0x18
    80003880:	006e6333          	or	t1,t3,t1
    80003884:	02059893          	slli	a7,a1,0x20
    80003888:	40f60e3b          	subw	t3,a2,a5
    8000388c:	011368b3          	or	a7,t1,a7
    80003890:	02859813          	slli	a6,a1,0x28
    80003894:	0108e833          	or	a6,a7,a6
    80003898:	03059693          	slli	a3,a1,0x30
    8000389c:	003e589b          	srliw	a7,t3,0x3
    800038a0:	00d866b3          	or	a3,a6,a3
    800038a4:	03859713          	slli	a4,a1,0x38
    800038a8:	00389813          	slli	a6,a7,0x3
    800038ac:	00f507b3          	add	a5,a0,a5
    800038b0:	00e6e733          	or	a4,a3,a4
    800038b4:	000e089b          	sext.w	a7,t3
    800038b8:	00f806b3          	add	a3,a6,a5
    800038bc:	00e7b023          	sd	a4,0(a5)
    800038c0:	00878793          	addi	a5,a5,8
    800038c4:	fed79ce3          	bne	a5,a3,800038bc <__memset+0xd4>
    800038c8:	ff8e7793          	andi	a5,t3,-8
    800038cc:	0007871b          	sext.w	a4,a5
    800038d0:	01d787bb          	addw	a5,a5,t4
    800038d4:	0ce88e63          	beq	a7,a4,800039b0 <__memset+0x1c8>
    800038d8:	00f50733          	add	a4,a0,a5
    800038dc:	00b70023          	sb	a1,0(a4)
    800038e0:	0017871b          	addiw	a4,a5,1
    800038e4:	0cc77663          	bgeu	a4,a2,800039b0 <__memset+0x1c8>
    800038e8:	00e50733          	add	a4,a0,a4
    800038ec:	00b70023          	sb	a1,0(a4)
    800038f0:	0027871b          	addiw	a4,a5,2
    800038f4:	0ac77e63          	bgeu	a4,a2,800039b0 <__memset+0x1c8>
    800038f8:	00e50733          	add	a4,a0,a4
    800038fc:	00b70023          	sb	a1,0(a4)
    80003900:	0037871b          	addiw	a4,a5,3
    80003904:	0ac77663          	bgeu	a4,a2,800039b0 <__memset+0x1c8>
    80003908:	00e50733          	add	a4,a0,a4
    8000390c:	00b70023          	sb	a1,0(a4)
    80003910:	0047871b          	addiw	a4,a5,4
    80003914:	08c77e63          	bgeu	a4,a2,800039b0 <__memset+0x1c8>
    80003918:	00e50733          	add	a4,a0,a4
    8000391c:	00b70023          	sb	a1,0(a4)
    80003920:	0057871b          	addiw	a4,a5,5
    80003924:	08c77663          	bgeu	a4,a2,800039b0 <__memset+0x1c8>
    80003928:	00e50733          	add	a4,a0,a4
    8000392c:	00b70023          	sb	a1,0(a4)
    80003930:	0067871b          	addiw	a4,a5,6
    80003934:	06c77e63          	bgeu	a4,a2,800039b0 <__memset+0x1c8>
    80003938:	00e50733          	add	a4,a0,a4
    8000393c:	00b70023          	sb	a1,0(a4)
    80003940:	0077871b          	addiw	a4,a5,7
    80003944:	06c77663          	bgeu	a4,a2,800039b0 <__memset+0x1c8>
    80003948:	00e50733          	add	a4,a0,a4
    8000394c:	00b70023          	sb	a1,0(a4)
    80003950:	0087871b          	addiw	a4,a5,8
    80003954:	04c77e63          	bgeu	a4,a2,800039b0 <__memset+0x1c8>
    80003958:	00e50733          	add	a4,a0,a4
    8000395c:	00b70023          	sb	a1,0(a4)
    80003960:	0097871b          	addiw	a4,a5,9
    80003964:	04c77663          	bgeu	a4,a2,800039b0 <__memset+0x1c8>
    80003968:	00e50733          	add	a4,a0,a4
    8000396c:	00b70023          	sb	a1,0(a4)
    80003970:	00a7871b          	addiw	a4,a5,10
    80003974:	02c77e63          	bgeu	a4,a2,800039b0 <__memset+0x1c8>
    80003978:	00e50733          	add	a4,a0,a4
    8000397c:	00b70023          	sb	a1,0(a4)
    80003980:	00b7871b          	addiw	a4,a5,11
    80003984:	02c77663          	bgeu	a4,a2,800039b0 <__memset+0x1c8>
    80003988:	00e50733          	add	a4,a0,a4
    8000398c:	00b70023          	sb	a1,0(a4)
    80003990:	00c7871b          	addiw	a4,a5,12
    80003994:	00c77e63          	bgeu	a4,a2,800039b0 <__memset+0x1c8>
    80003998:	00e50733          	add	a4,a0,a4
    8000399c:	00b70023          	sb	a1,0(a4)
    800039a0:	00d7879b          	addiw	a5,a5,13
    800039a4:	00c7f663          	bgeu	a5,a2,800039b0 <__memset+0x1c8>
    800039a8:	00f507b3          	add	a5,a0,a5
    800039ac:	00b78023          	sb	a1,0(a5)
    800039b0:	00813403          	ld	s0,8(sp)
    800039b4:	01010113          	addi	sp,sp,16
    800039b8:	00008067          	ret
    800039bc:	00b00693          	li	a3,11
    800039c0:	e55ff06f          	j	80003814 <__memset+0x2c>
    800039c4:	00300e93          	li	t4,3
    800039c8:	ea5ff06f          	j	8000386c <__memset+0x84>
    800039cc:	00100e93          	li	t4,1
    800039d0:	e9dff06f          	j	8000386c <__memset+0x84>
    800039d4:	00000e93          	li	t4,0
    800039d8:	e95ff06f          	j	8000386c <__memset+0x84>
    800039dc:	00000793          	li	a5,0
    800039e0:	ef9ff06f          	j	800038d8 <__memset+0xf0>
    800039e4:	00200e93          	li	t4,2
    800039e8:	e85ff06f          	j	8000386c <__memset+0x84>
    800039ec:	00400e93          	li	t4,4
    800039f0:	e7dff06f          	j	8000386c <__memset+0x84>
    800039f4:	00500e93          	li	t4,5
    800039f8:	e75ff06f          	j	8000386c <__memset+0x84>
    800039fc:	00600e93          	li	t4,6
    80003a00:	e6dff06f          	j	8000386c <__memset+0x84>

0000000080003a04 <__memmove>:
    80003a04:	ff010113          	addi	sp,sp,-16
    80003a08:	00813423          	sd	s0,8(sp)
    80003a0c:	01010413          	addi	s0,sp,16
    80003a10:	0e060863          	beqz	a2,80003b00 <__memmove+0xfc>
    80003a14:	fff6069b          	addiw	a3,a2,-1
    80003a18:	0006881b          	sext.w	a6,a3
    80003a1c:	0ea5e863          	bltu	a1,a0,80003b0c <__memmove+0x108>
    80003a20:	00758713          	addi	a4,a1,7
    80003a24:	00a5e7b3          	or	a5,a1,a0
    80003a28:	40a70733          	sub	a4,a4,a0
    80003a2c:	0077f793          	andi	a5,a5,7
    80003a30:	00f73713          	sltiu	a4,a4,15
    80003a34:	00174713          	xori	a4,a4,1
    80003a38:	0017b793          	seqz	a5,a5
    80003a3c:	00e7f7b3          	and	a5,a5,a4
    80003a40:	10078863          	beqz	a5,80003b50 <__memmove+0x14c>
    80003a44:	00900793          	li	a5,9
    80003a48:	1107f463          	bgeu	a5,a6,80003b50 <__memmove+0x14c>
    80003a4c:	0036581b          	srliw	a6,a2,0x3
    80003a50:	fff8081b          	addiw	a6,a6,-1
    80003a54:	02081813          	slli	a6,a6,0x20
    80003a58:	01d85893          	srli	a7,a6,0x1d
    80003a5c:	00858813          	addi	a6,a1,8
    80003a60:	00058793          	mv	a5,a1
    80003a64:	00050713          	mv	a4,a0
    80003a68:	01088833          	add	a6,a7,a6
    80003a6c:	0007b883          	ld	a7,0(a5)
    80003a70:	00878793          	addi	a5,a5,8
    80003a74:	00870713          	addi	a4,a4,8
    80003a78:	ff173c23          	sd	a7,-8(a4)
    80003a7c:	ff0798e3          	bne	a5,a6,80003a6c <__memmove+0x68>
    80003a80:	ff867713          	andi	a4,a2,-8
    80003a84:	02071793          	slli	a5,a4,0x20
    80003a88:	0207d793          	srli	a5,a5,0x20
    80003a8c:	00f585b3          	add	a1,a1,a5
    80003a90:	40e686bb          	subw	a3,a3,a4
    80003a94:	00f507b3          	add	a5,a0,a5
    80003a98:	06e60463          	beq	a2,a4,80003b00 <__memmove+0xfc>
    80003a9c:	0005c703          	lbu	a4,0(a1)
    80003aa0:	00e78023          	sb	a4,0(a5)
    80003aa4:	04068e63          	beqz	a3,80003b00 <__memmove+0xfc>
    80003aa8:	0015c603          	lbu	a2,1(a1)
    80003aac:	00100713          	li	a4,1
    80003ab0:	00c780a3          	sb	a2,1(a5)
    80003ab4:	04e68663          	beq	a3,a4,80003b00 <__memmove+0xfc>
    80003ab8:	0025c603          	lbu	a2,2(a1)
    80003abc:	00200713          	li	a4,2
    80003ac0:	00c78123          	sb	a2,2(a5)
    80003ac4:	02e68e63          	beq	a3,a4,80003b00 <__memmove+0xfc>
    80003ac8:	0035c603          	lbu	a2,3(a1)
    80003acc:	00300713          	li	a4,3
    80003ad0:	00c781a3          	sb	a2,3(a5)
    80003ad4:	02e68663          	beq	a3,a4,80003b00 <__memmove+0xfc>
    80003ad8:	0045c603          	lbu	a2,4(a1)
    80003adc:	00400713          	li	a4,4
    80003ae0:	00c78223          	sb	a2,4(a5)
    80003ae4:	00e68e63          	beq	a3,a4,80003b00 <__memmove+0xfc>
    80003ae8:	0055c603          	lbu	a2,5(a1)
    80003aec:	00500713          	li	a4,5
    80003af0:	00c782a3          	sb	a2,5(a5)
    80003af4:	00e68663          	beq	a3,a4,80003b00 <__memmove+0xfc>
    80003af8:	0065c703          	lbu	a4,6(a1)
    80003afc:	00e78323          	sb	a4,6(a5)
    80003b00:	00813403          	ld	s0,8(sp)
    80003b04:	01010113          	addi	sp,sp,16
    80003b08:	00008067          	ret
    80003b0c:	02061713          	slli	a4,a2,0x20
    80003b10:	02075713          	srli	a4,a4,0x20
    80003b14:	00e587b3          	add	a5,a1,a4
    80003b18:	f0f574e3          	bgeu	a0,a5,80003a20 <__memmove+0x1c>
    80003b1c:	02069613          	slli	a2,a3,0x20
    80003b20:	02065613          	srli	a2,a2,0x20
    80003b24:	fff64613          	not	a2,a2
    80003b28:	00e50733          	add	a4,a0,a4
    80003b2c:	00c78633          	add	a2,a5,a2
    80003b30:	fff7c683          	lbu	a3,-1(a5)
    80003b34:	fff78793          	addi	a5,a5,-1
    80003b38:	fff70713          	addi	a4,a4,-1
    80003b3c:	00d70023          	sb	a3,0(a4)
    80003b40:	fec798e3          	bne	a5,a2,80003b30 <__memmove+0x12c>
    80003b44:	00813403          	ld	s0,8(sp)
    80003b48:	01010113          	addi	sp,sp,16
    80003b4c:	00008067          	ret
    80003b50:	02069713          	slli	a4,a3,0x20
    80003b54:	02075713          	srli	a4,a4,0x20
    80003b58:	00170713          	addi	a4,a4,1
    80003b5c:	00e50733          	add	a4,a0,a4
    80003b60:	00050793          	mv	a5,a0
    80003b64:	0005c683          	lbu	a3,0(a1)
    80003b68:	00178793          	addi	a5,a5,1
    80003b6c:	00158593          	addi	a1,a1,1
    80003b70:	fed78fa3          	sb	a3,-1(a5)
    80003b74:	fee798e3          	bne	a5,a4,80003b64 <__memmove+0x160>
    80003b78:	f89ff06f          	j	80003b00 <__memmove+0xfc>

0000000080003b7c <__putc>:
    80003b7c:	fe010113          	addi	sp,sp,-32
    80003b80:	00813823          	sd	s0,16(sp)
    80003b84:	00113c23          	sd	ra,24(sp)
    80003b88:	02010413          	addi	s0,sp,32
    80003b8c:	00050793          	mv	a5,a0
    80003b90:	fef40593          	addi	a1,s0,-17
    80003b94:	00100613          	li	a2,1
    80003b98:	00000513          	li	a0,0
    80003b9c:	fef407a3          	sb	a5,-17(s0)
    80003ba0:	fffff097          	auipc	ra,0xfffff
    80003ba4:	b3c080e7          	jalr	-1220(ra) # 800026dc <console_write>
    80003ba8:	01813083          	ld	ra,24(sp)
    80003bac:	01013403          	ld	s0,16(sp)
    80003bb0:	02010113          	addi	sp,sp,32
    80003bb4:	00008067          	ret

0000000080003bb8 <__getc>:
    80003bb8:	fe010113          	addi	sp,sp,-32
    80003bbc:	00813823          	sd	s0,16(sp)
    80003bc0:	00113c23          	sd	ra,24(sp)
    80003bc4:	02010413          	addi	s0,sp,32
    80003bc8:	fe840593          	addi	a1,s0,-24
    80003bcc:	00100613          	li	a2,1
    80003bd0:	00000513          	li	a0,0
    80003bd4:	fffff097          	auipc	ra,0xfffff
    80003bd8:	ae8080e7          	jalr	-1304(ra) # 800026bc <console_read>
    80003bdc:	fe844503          	lbu	a0,-24(s0)
    80003be0:	01813083          	ld	ra,24(sp)
    80003be4:	01013403          	ld	s0,16(sp)
    80003be8:	02010113          	addi	sp,sp,32
    80003bec:	00008067          	ret

0000000080003bf0 <console_handler>:
    80003bf0:	fe010113          	addi	sp,sp,-32
    80003bf4:	00813823          	sd	s0,16(sp)
    80003bf8:	00113c23          	sd	ra,24(sp)
    80003bfc:	00913423          	sd	s1,8(sp)
    80003c00:	02010413          	addi	s0,sp,32
    80003c04:	14202773          	csrr	a4,scause
    80003c08:	100027f3          	csrr	a5,sstatus
    80003c0c:	0027f793          	andi	a5,a5,2
    80003c10:	06079e63          	bnez	a5,80003c8c <console_handler+0x9c>
    80003c14:	00074c63          	bltz	a4,80003c2c <console_handler+0x3c>
    80003c18:	01813083          	ld	ra,24(sp)
    80003c1c:	01013403          	ld	s0,16(sp)
    80003c20:	00813483          	ld	s1,8(sp)
    80003c24:	02010113          	addi	sp,sp,32
    80003c28:	00008067          	ret
    80003c2c:	0ff77713          	andi	a4,a4,255
    80003c30:	00900793          	li	a5,9
    80003c34:	fef712e3          	bne	a4,a5,80003c18 <console_handler+0x28>
    80003c38:	ffffe097          	auipc	ra,0xffffe
    80003c3c:	6dc080e7          	jalr	1756(ra) # 80002314 <plic_claim>
    80003c40:	00a00793          	li	a5,10
    80003c44:	00050493          	mv	s1,a0
    80003c48:	02f50c63          	beq	a0,a5,80003c80 <console_handler+0x90>
    80003c4c:	fc0506e3          	beqz	a0,80003c18 <console_handler+0x28>
    80003c50:	00050593          	mv	a1,a0
    80003c54:	00000517          	auipc	a0,0x0
    80003c58:	4dc50513          	addi	a0,a0,1244 # 80004130 <bntOne+0xd8>
    80003c5c:	fffff097          	auipc	ra,0xfffff
    80003c60:	afc080e7          	jalr	-1284(ra) # 80002758 <__printf>
    80003c64:	01013403          	ld	s0,16(sp)
    80003c68:	01813083          	ld	ra,24(sp)
    80003c6c:	00048513          	mv	a0,s1
    80003c70:	00813483          	ld	s1,8(sp)
    80003c74:	02010113          	addi	sp,sp,32
    80003c78:	ffffe317          	auipc	t1,0xffffe
    80003c7c:	6d430067          	jr	1748(t1) # 8000234c <plic_complete>
    80003c80:	fffff097          	auipc	ra,0xfffff
    80003c84:	3e0080e7          	jalr	992(ra) # 80003060 <uartintr>
    80003c88:	fddff06f          	j	80003c64 <console_handler+0x74>
    80003c8c:	00000517          	auipc	a0,0x0
    80003c90:	5a450513          	addi	a0,a0,1444 # 80004230 <digits+0x78>
    80003c94:	fffff097          	auipc	ra,0xfffff
    80003c98:	a68080e7          	jalr	-1432(ra) # 800026fc <panic>
	...
