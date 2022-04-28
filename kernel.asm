
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
    8000001c:	2e9010ef          	jal	ra,80001b04 <start>

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
    #sd x10, 80(sp)
    sd x11, 88(sp)
    8000102c:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001030:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    80001034:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001038:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    8000103c:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001040:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    80001044:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001048:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    8000104c:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001050:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    80001054:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001058:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    8000105c:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001060:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    80001064:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001068:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    8000106c:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001070:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    80001074:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001078:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    8000107c:	0ff13c23          	sd	t6,248(sp)

    call interrupt
    80001080:	5a0000ef          	jal	ra,80001620 <interrupt>

    ld x0, 0(sp)
    80001084:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001088:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    8000108c:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001090:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    80001094:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    80001098:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    8000109c:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a0:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010a4:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010a8:	04813483          	ld	s1,72(sp)
    #ld x10, 80(sp)
    ld x11, 88(sp)
    800010ac:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010b0:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010b4:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010b8:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010bc:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010c0:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010c4:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010c8:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010cc:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010d0:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010d4:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010d8:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010dc:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010e0:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010e4:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010e8:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010ec:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010f0:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    800010f4:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    800010f8:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    800010fc:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001100:	10010113          	addi	sp,sp,256

    80001104:	10200073          	sret
	...

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
    8000144c:	354080e7          	jalr	852(ra) # 8000179c <_ZN15MemoryAllocator9mem_allocEm>
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
    80001548:	258080e7          	jalr	600(ra) # 8000179c <_ZN15MemoryAllocator9mem_allocEm>
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
    800015c4:	1f8080e7          	jalr	504(ra) # 800017b8 <_ZN15MemoryAllocator8mem_freeEPv>
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
#include "../h/Riscv.h"

extern "C" void interruptvec();

void main()
{
    800015f4:	ff010113          	addi	sp,sp,-16
    800015f8:	00113423          	sd	ra,8(sp)
    800015fc:	00813023          	sd	s0,0(sp)
    80001600:	01010413          	addi	s0,sp,16
    __putc('a');
    80001604:	06100513          	li	a0,97
    80001608:	00002097          	auipc	ra,0x2
    8000160c:	5c4080e7          	jalr	1476(ra) # 80003bcc <__putc>
    return;

    MemoryAllocator* memoryAllocator = MemoryAllocator::getMemoryAllocator();
    memoryAllocator->mem_alloc(2);
    */
    80001610:	00813083          	ld	ra,8(sp)
    80001614:	00013403          	ld	s0,0(sp)
    80001618:	01010113          	addi	sp,sp,16
    8000161c:	00008067          	ret

0000000080001620 <interrupt>:
const uint64 addrReadInterrupt = bntZero + 5UL;
const uint64 addrWriteInterrupt = bntZero + 7UL;
const uint64 ecallUserInterrupt = bntZero + 8UL;
const uint64 ecallSystemInterupt = bntZero + 9UL;

extern "C" void interrupt() {
    80001620:	fd010113          	addi	sp,sp,-48
    80001624:	02113423          	sd	ra,40(sp)
    80001628:	02813023          	sd	s0,32(sp)
    8000162c:	03010413          	addi	s0,sp,48
    static void w_sstatus(uint64 sstatus);
};

inline uint64 Riscv::r_scause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80001630:	142027f3          	csrr	a5,scause
    80001634:	fcf43c23          	sd	a5,-40(s0)
    return scause;
    80001638:	fd843703          	ld	a4,-40(s0)

    uint64 scause = Riscv::r_scause();
    switch(scause) {
    8000163c:	00900793          	li	a5,9
    80001640:	00f70a63          	beq	a4,a5,80001654 <interrupt+0x34>
    //asm volatile("csrr %0, sie" : "=r"(sie));
    //sie &= ~2;
    //asm volatile("csrw sie, %0" : : "r" (sie));

    //console_handler();
}
    80001644:	02813083          	ld	ra,40(sp)
    80001648:	02013403          	ld	s0,32(sp)
    8000164c:	03010113          	addi	sp,sp,48
    80001650:	00008067          	ret
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80001654:	00050793          	mv	a5,a0
            if(operation == (uint64)MemoryAllocator::MEM_ALLOC) {
    80001658:	00100713          	li	a4,1
    8000165c:	02e78c63          	beq	a5,a4,80001694 <interrupt+0x74>
            else if(operation == (uint64)MemoryAllocator::MEM_FREE) {
    80001660:	00200713          	li	a4,2
    80001664:	04e78463          	beq	a5,a4,800016ac <interrupt+0x8c>
    __asm__ volatile("csrw scause, %0" : :"r"(scause));
}

inline uint64 Riscv::r_sepc() {
    uint64 volatile sepc;
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001668:	141027f3          	csrr	a5,sepc
    8000166c:	fef43423          	sd	a5,-24(s0)
    return sepc;
    80001670:	fe843783          	ld	a5,-24(s0)
            sepc+=4;
    80001674:	00478793          	addi	a5,a5,4
}

inline void Riscv::w_sepc(uint64 sepc) {
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80001678:	14179073          	csrw	sepc,a5
    w_sip(sip);
}

inline uint64 Riscv::r_sip() {
    uint64 volatile sip;
    __asm__ volatile("csrr %0, sip" : "=r"(sip));
    8000167c:	144027f3          	csrr	a5,sip
    80001680:	fef43023          	sd	a5,-32(s0)
    return sip;
    80001684:	fe043783          	ld	a5,-32(s0)
            sip&=~2;
    80001688:	ffd7f793          	andi	a5,a5,-3
}

inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
    8000168c:	14479073          	csrw	sip,a5
}
    80001690:	fb5ff06f          	j	80001644 <interrupt+0x24>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80001694:	00058513          	mv	a0,a1
                void* allocatedAddr = MemoryAllocator::tryToAllocateFragment(size);
    80001698:	00651513          	slli	a0,a0,0x6
    8000169c:	00000097          	auipc	ra,0x0
    800016a0:	248080e7          	jalr	584(ra) # 800018e4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800016a4:	00050513          	mv	a0,a0
    800016a8:	fc1ff06f          	j	80001668 <interrupt+0x48>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    800016ac:	00058513          	mv	a0,a1
                MemoryAllocator::tryToFreeSegment((void*)addr);
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	3a8080e7          	jalr	936(ra) # 80001a58 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
    800016b8:	fb1ff06f          	j	80001668 <interrupt+0x48>

00000000800016bc <_Znwm>:

#include "../h/syscall_cpp.h"

//general
void * operator new(size_t size)
{
    800016bc:	ff010113          	addi	sp,sp,-16
    800016c0:	00113423          	sd	ra,8(sp)
    800016c4:	00813023          	sd	s0,0(sp)
    800016c8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800016cc:	00000097          	auipc	ra,0x0
    800016d0:	b50080e7          	jalr	-1200(ra) # 8000121c <mem_alloc>
}
    800016d4:	00813083          	ld	ra,8(sp)
    800016d8:	00013403          	ld	s0,0(sp)
    800016dc:	01010113          	addi	sp,sp,16
    800016e0:	00008067          	ret

00000000800016e4 <_ZdlPv>:

void operator delete(void * p)
{
    800016e4:	ff010113          	addi	sp,sp,-16
    800016e8:	00113423          	sd	ra,8(sp)
    800016ec:	00813023          	sd	s0,0(sp)
    800016f0:	01010413          	addi	s0,sp,16
   mem_free(p);
    800016f4:	00000097          	auipc	ra,0x0
    800016f8:	b58080e7          	jalr	-1192(ra) # 8000124c <mem_free>
}
    800016fc:	00813083          	ld	ra,8(sp)
    80001700:	00013403          	ld	s0,0(sp)
    80001704:	01010113          	addi	sp,sp,16
    80001708:	00008067          	ret

000000008000170c <_ZN6Thread5startEv>:

//Thread

void Thread::start() {
    8000170c:	ff010113          	addi	sp,sp,-16
    80001710:	00113423          	sd	ra,8(sp)
    80001714:	00813023          	sd	s0,0(sp)
    80001718:	01010413          	addi	s0,sp,16
    myHandle->start();
    8000171c:	00053503          	ld	a0,0(a0)
    80001720:	00000097          	auipc	ra,0x0
    80001724:	c34080e7          	jalr	-972(ra) # 80001354 <_ZN3PCB5startEv>
}
    80001728:	00813083          	ld	ra,8(sp)
    8000172c:	00013403          	ld	s0,0(sp)
    80001730:	01010113          	addi	sp,sp,16
    80001734:	00008067          	ret

0000000080001738 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80001738:	ff010113          	addi	sp,sp,-16
    8000173c:	00813423          	sd	s0,8(sp)
    80001740:	01010413          	addi	s0,sp,16
    //PCB::dispatch();
}
    80001744:	00813403          	ld	s0,8(sp)
    80001748:	01010113          	addi	sp,sp,16
    8000174c:	00008067          	ret

0000000080001750 <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    80001750:	ff010113          	addi	sp,sp,-16
    80001754:	00113423          	sd	ra,8(sp)
    80001758:	00813023          	sd	s0,0(sp)
    8000175c:	01010413          	addi	s0,sp,16
    PCB::sleep(time);
    80001760:	00000097          	auipc	ra,0x0
    80001764:	bdc080e7          	jalr	-1060(ra) # 8000133c <_ZN3PCB5sleepEm>
}
    80001768:	00813083          	ld	ra,8(sp)
    8000176c:	00013403          	ld	s0,0(sp)
    80001770:	01010113          	addi	sp,sp,16
    80001774:	00008067          	ret

0000000080001778 <_ZN5Riscv10initSystemEv>:
#include "../h/Riscv.h"

//todo
//sta sve treba da se odradi ovde
extern "C" void interruptvec();
void Riscv::initSystem() {
    80001778:	ff010113          	addi	sp,sp,-16
    8000177c:	00813423          	sd	s0,8(sp)
    80001780:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&interruptvec);
    80001784:	00003797          	auipc	a5,0x3
    80001788:	fb47b783          	ld	a5,-76(a5) # 80004738 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    8000178c:	10579073          	csrw	stvec,a5
}
    80001790:	00813403          	ld	s0,8(sp)
    80001794:	01010113          	addi	sp,sp,16
    80001798:	00008067          	ret

000000008000179c <_ZN15MemoryAllocator9mem_allocEm>:

MemoryAllocator::AllocatedFragment* MemoryAllocator::headAllocated = 0;
MemoryAllocator::FreeFragment* MemoryAllocator::headFree = 0;
int MemoryAllocator::memoryInitiliaized = 0;

void *MemoryAllocator::mem_alloc(size_t size) {
    8000179c:	ff010113          	addi	sp,sp,-16
    800017a0:	00813423          	sd	s0,8(sp)
    800017a4:	01010413          	addi	s0,sp,16
    return 0;
    //todo
    //sta ovde treba kao parametar
    //svuda pogledaj to
    //return ::mem_alloc(sizeof(MemoryAllocator));
}
    800017a8:	00000513          	li	a0,0
    800017ac:	00813403          	ld	s0,8(sp)
    800017b0:	01010113          	addi	sp,sp,16
    800017b4:	00008067          	ret

00000000800017b8 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void * addr) {
    800017b8:	ff010113          	addi	sp,sp,-16
    800017bc:	00813423          	sd	s0,8(sp)
    800017c0:	01010413          	addi	s0,sp,16
    return 0;
    //return ::mem_free(addr);
}
    800017c4:	00000513          	li	a0,0
    800017c8:	00813403          	ld	s0,8(sp)
    800017cc:	01010113          	addi	sp,sp,16
    800017d0:	00008067          	ret

00000000800017d4 <_ZN15MemoryAllocator10initMemoryEv>:

void MemoryAllocator::initMemory()
{
    800017d4:	ff010113          	addi	sp,sp,-16
    800017d8:	00813423          	sd	s0,8(sp)
    800017dc:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    800017e0:	00003717          	auipc	a4,0x3
    800017e4:	fc072703          	lw	a4,-64(a4) # 800047a0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800017e8:	00100793          	li	a5,1
    800017ec:	04f70263          	beq	a4,a5,80001830 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    800017f0:	00003797          	auipc	a5,0x3
    800017f4:	fb078793          	addi	a5,a5,-80 # 800047a0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800017f8:	00100713          	li	a4,1
    800017fc:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80001800:	0007b423          	sd	zero,8(a5)
    headFree = (FreeFragment*)HEAP_START_ADDR;
    80001804:	00003717          	auipc	a4,0x3
    80001808:	f2473703          	ld	a4,-220(a4) # 80004728 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000180c:	00073703          	ld	a4,0(a4)
    80001810:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80001814:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1);
    80001818:	00003797          	auipc	a5,0x3
    8000181c:	f287b783          	ld	a5,-216(a5) # 80004740 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001820:	0007b783          	ld	a5,0(a5)
    80001824:	40e787b3          	sub	a5,a5,a4
    80001828:	00178793          	addi	a5,a5,1
    8000182c:	00f73023          	sd	a5,0(a4)
}
    80001830:	00813403          	ld	s0,8(sp)
    80001834:	01010113          	addi	sp,sp,16
    80001838:	00008067          	ret

000000008000183c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void* addr, size_t size) {
    8000183c:	fe010113          	addi	sp,sp,-32
    80001840:	00113c23          	sd	ra,24(sp)
    80001844:	00813823          	sd	s0,16(sp)
    80001848:	00913423          	sd	s1,8(sp)
    8000184c:	01213023          	sd	s2,0(sp)
    80001850:	02010413          	addi	s0,sp,32
    80001854:	00050493          	mv	s1,a0
    80001858:	00058913          	mv	s2,a1

    initMemory();
    8000185c:	00000097          	auipc	ra,0x0
    80001860:	f78080e7          	jalr	-136(ra) # 800017d4 <_ZN15MemoryAllocator10initMemoryEv>
    AllocatedFragment* prev = 0;
    AllocatedFragment* after =  headAllocated;
    80001864:	00003797          	auipc	a5,0x3
    80001868:	f447b783          	ld	a5,-188(a5) # 800047a8 <_ZN15MemoryAllocator13headAllocatedE>
    AllocatedFragment* prev = 0;
    8000186c:	00000713          	li	a4,0
    while(after != 0) {
    80001870:	00078a63          	beqz	a5,80001884 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x48>
        if((void*)after > addr)
    80001874:	00f4e863          	bltu	s1,a5,80001884 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x48>
            break;

        prev = after;
    80001878:	00078713          	mv	a4,a5
        after = after->next;
    8000187c:	0087b783          	ld	a5,8(a5)
    while(after != 0) {
    80001880:	ff1ff06f          	j	80001870 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x34>
    }

    AllocatedFragment* newAllocated = (AllocatedFragment*)addr;
    newAllocated->next = 0;
    80001884:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80001888:	0124b023          	sd	s2,0(s1)
    if(after == 0) {
    8000188c:	02078463          	beqz	a5,800018b4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x78>
            headAllocated = newAllocated;
        else
            prev->next = newAllocated;
    }
    else {
        if(prev == 0) {
    80001890:	02070e63          	beqz	a4,800018cc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x90>
            newAllocated->next = headAllocated;
            headAllocated = newAllocated;
        }
        else {
            newAllocated->next = after;
    80001894:	00f4b423          	sd	a5,8(s1)
            prev->next = newAllocated;
    80001898:	00973423          	sd	s1,8(a4)
        }
    }
}
    8000189c:	01813083          	ld	ra,24(sp)
    800018a0:	01013403          	ld	s0,16(sp)
    800018a4:	00813483          	ld	s1,8(sp)
    800018a8:	00013903          	ld	s2,0(sp)
    800018ac:	02010113          	addi	sp,sp,32
    800018b0:	00008067          	ret
        if(prev == 0)
    800018b4:	00070663          	beqz	a4,800018c0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x84>
            prev->next = newAllocated;
    800018b8:	00973423          	sd	s1,8(a4)
    800018bc:	fe1ff06f          	j	8000189c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>
            headAllocated = newAllocated;
    800018c0:	00003797          	auipc	a5,0x3
    800018c4:	ee97b423          	sd	s1,-280(a5) # 800047a8 <_ZN15MemoryAllocator13headAllocatedE>
    800018c8:	fd5ff06f          	j	8000189c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>
            newAllocated->next = headAllocated;
    800018cc:	00003797          	auipc	a5,0x3
    800018d0:	ed478793          	addi	a5,a5,-300 # 800047a0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800018d4:	0087b703          	ld	a4,8(a5)
    800018d8:	00e4b423          	sd	a4,8(s1)
            headAllocated = newAllocated;
    800018dc:	0097b423          	sd	s1,8(a5)
    800018e0:	fbdff06f          	j	8000189c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>

00000000800018e4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    800018e4:	fe010113          	addi	sp,sp,-32
    800018e8:	00113c23          	sd	ra,24(sp)
    800018ec:	00813823          	sd	s0,16(sp)
    800018f0:	00913423          	sd	s1,8(sp)
    800018f4:	01213023          	sd	s2,0(sp)
    800018f8:	02010413          	addi	s0,sp,32
    800018fc:	00050913          	mv	s2,a0
    initMemory();
    80001900:	00000097          	auipc	ra,0x0
    80001904:	ed4080e7          	jalr	-300(ra) # 800017d4 <_ZN15MemoryAllocator10initMemoryEv>
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    80001908:	00003497          	auipc	s1,0x3
    8000190c:	ea84b483          	ld	s1,-344(s1) # 800047b0 <_ZN15MemoryAllocator8headFreeE>
    uint64 newSize = size + sizeof(AllocatedFragment);
    80001910:	01090693          	addi	a3,s2,16
    FreeFragment* prev = 0;
    80001914:	00000713          	li	a4,0
    80001918:	0700006f          	j	80001988 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
            void* newAddr = ((char*)curr + newSize);
            if(newAddr <= HEAP_END_ADDR) {

                FreeFragment *newFree = (FreeFragment *) newAddr;

                if (prev != 0)
    8000191c:	04070263          	beqz	a4,80001960 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x7c>
                    prev->next = newFree;
    80001920:	00f73423          	sd	a5,8(a4)
                else
                    headFree = newFree;

                newFree->next = curr->next;
    80001924:	0084b603          	ld	a2,8(s1)
    80001928:	00c7b423          	sd	a2,8(a5)
                newFree->size = curr->size - newSize;
    8000192c:	0004b603          	ld	a2,0(s1)
    80001930:	40d606b3          	sub	a3,a2,a3
    80001934:	00d7b023          	sd	a3,0(a5)

                if(newFree->size == 0)
    80001938:	00069863          	bnez	a3,80001948 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x64>
                {
                    if(prev != 0)
    8000193c:	02070863          	beqz	a4,8000196c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = curr->next;
    80001940:	0084b783          	ld	a5,8(s1)
    80001944:	00f73423          	sd	a5,8(a4)
                    else
                        headFree = 0;
                }

                insertNewAllocatedFragment(oldAddr, size);
    80001948:	00090593          	mv	a1,s2
    8000194c:	00048513          	mv	a0,s1
    80001950:	00000097          	auipc	ra,0x0
    80001954:	eec080e7          	jalr	-276(ra) # 8000183c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>



                uint64 oldA = (uint64) ((char*)oldAddr + sizeof(AllocatedFragment));
    80001958:	01048493          	addi	s1,s1,16

                return (void*)oldA;
    8000195c:	0600006f          	j	800019bc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd8>
                    headFree = newFree;
    80001960:	00003617          	auipc	a2,0x3
    80001964:	e4f63823          	sd	a5,-432(a2) # 800047b0 <_ZN15MemoryAllocator8headFreeE>
    80001968:	fbdff06f          	j	80001924 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x40>
                        headFree = 0;
    8000196c:	00003797          	auipc	a5,0x3
    80001970:	e407b223          	sd	zero,-444(a5) # 800047b0 <_ZN15MemoryAllocator8headFreeE>
    80001974:	fd5ff06f          	j	80001948 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x64>
                {
                    prev->next = 0;
                }
                else
                {
                    headFree = 0;
    80001978:	00003797          	auipc	a5,0x3
    8000197c:	e207bc23          	sd	zero,-456(a5) # 800047b0 <_ZN15MemoryAllocator8headFreeE>
                }
            }
        }
        prev = curr;
    80001980:	00048713          	mv	a4,s1
        curr = curr->next;
    80001984:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    80001988:	02048663          	beqz	s1,800019b4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd0>
        if(curr->size >= newSize) {
    8000198c:	0004b783          	ld	a5,0(s1)
    80001990:	fed7e8e3          	bltu	a5,a3,80001980 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
            void* newAddr = ((char*)curr + newSize);
    80001994:	00d487b3          	add	a5,s1,a3
            if(newAddr <= HEAP_END_ADDR) {
    80001998:	00003617          	auipc	a2,0x3
    8000199c:	da863603          	ld	a2,-600(a2) # 80004740 <_GLOBAL_OFFSET_TABLE_+0x20>
    800019a0:	00063603          	ld	a2,0(a2)
    800019a4:	f6f67ce3          	bgeu	a2,a5,8000191c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x38>
                if(prev != 0)
    800019a8:	fc0708e3          	beqz	a4,80001978 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    prev->next = 0;
    800019ac:	00073423          	sd	zero,8(a4)
    800019b0:	fd1ff06f          	j	80001980 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
    }

    uint64 x = 0;
    __asm__ volatile("mv a0,%0" : : "r"(x));
    800019b4:	00000793          	li	a5,0
    800019b8:	00078513          	mv	a0,a5

    return 0;
}
    800019bc:	00048513          	mv	a0,s1
    800019c0:	01813083          	ld	ra,24(sp)
    800019c4:	01013403          	ld	s0,16(sp)
    800019c8:	00813483          	ld	s1,8(sp)
    800019cc:	00013903          	ld	s2,0(sp)
    800019d0:	02010113          	addi	sp,sp,32
    800019d4:	00008067          	ret

00000000800019d8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800019d8:	fe010113          	addi	sp,sp,-32
    800019dc:	00113c23          	sd	ra,24(sp)
    800019e0:	00813823          	sd	s0,16(sp)
    800019e4:	00913423          	sd	s1,8(sp)
    800019e8:	01213023          	sd	s2,0(sp)
    800019ec:	02010413          	addi	s0,sp,32
    800019f0:	00050493          	mv	s1,a0
    800019f4:	00058913          	mv	s2,a1
    initMemory();
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	ddc080e7          	jalr	-548(ra) # 800017d4 <_ZN15MemoryAllocator10initMemoryEv>
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    80001a00:	00003797          	auipc	a5,0x3
    80001a04:	db07b783          	ld	a5,-592(a5) # 800047b0 <_ZN15MemoryAllocator8headFreeE>
    FreeFragment* newSegment = (FreeFragment*) addr;
    newSegment->size = size;
    80001a08:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80001a0c:	0004b423          	sd	zero,8(s1)
    FreeFragment* prev = 0;
    80001a10:	00000713          	li	a4,0
    while(curr != 0)
    80001a14:	00078c63          	beqz	a5,80001a2c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80001a18:	00f4e863          	bltu	s1,a5,80001a28 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80001a1c:	00078713          	mv	a4,a5
        curr = curr->next;
    80001a20:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80001a24:	ff1ff06f          	j	80001a14 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80001a28:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80001a2c:	02070063          	beqz	a4,80001a4c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80001a30:	00973423          	sd	s1,8(a4)
}
    80001a34:	01813083          	ld	ra,24(sp)
    80001a38:	01013403          	ld	s0,16(sp)
    80001a3c:	00813483          	ld	s1,8(sp)
    80001a40:	00013903          	ld	s2,0(sp)
    80001a44:	02010113          	addi	sp,sp,32
    80001a48:	00008067          	ret
        headFree = newSegment;
    80001a4c:	00003797          	auipc	a5,0x3
    80001a50:	d697b223          	sd	s1,-668(a5) # 800047b0 <_ZN15MemoryAllocator8headFreeE>
    80001a54:	fe1ff06f          	j	80001a34 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>

0000000080001a58 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

void MemoryAllocator::tryToFreeSegment(void* addr)
{
    80001a58:	fe010113          	addi	sp,sp,-32
    80001a5c:	00113c23          	sd	ra,24(sp)
    80001a60:	00813823          	sd	s0,16(sp)
    80001a64:	00913423          	sd	s1,8(sp)
    80001a68:	01213023          	sd	s2,0(sp)
    80001a6c:	02010413          	addi	s0,sp,32
    80001a70:	00050913          	mv	s2,a0
    initMemory();
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	d60080e7          	jalr	-672(ra) # 800017d4 <_ZN15MemoryAllocator10initMemoryEv>
    AllocatedFragment* prev = 0;
    AllocatedFragment* curr = headAllocated;
    80001a7c:	00003497          	auipc	s1,0x3
    80001a80:	d2c4b483          	ld	s1,-724(s1) # 800047a8 <_ZN15MemoryAllocator13headAllocatedE>
    int found = 0;
    80001a84:	00000693          	li	a3,0
    AllocatedFragment* prev = 0;
    80001a88:	00000713          	li	a4,0
    80001a8c:	0300006f          	j	80001abc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
        {
            if(prev != 0) {
                prev->next = curr->next;
            }
            else {
                headAllocated = curr->next;
    80001a90:	0084b783          	ld	a5,8(s1)
    80001a94:	00003717          	auipc	a4,0x3
    80001a98:	d0f73a23          	sd	a5,-748(a4) # 800047a8 <_ZN15MemoryAllocator13headAllocatedE>
            }

            insertNewFreeSegment((void*)curr, curr->size + sizeof(AllocatedFragment));
    80001a9c:	0004b583          	ld	a1,0(s1)
    80001aa0:	01058593          	addi	a1,a1,16
    80001aa4:	00048513          	mv	a0,s1
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	f30080e7          	jalr	-208(ra) # 800019d8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>

            found = 1;
    80001ab0:	00100693          	li	a3,1
        }

        prev = curr;
    80001ab4:	00048713          	mv	a4,s1
        curr = curr->next;
    80001ab8:	0084b483          	ld	s1,8(s1)
    while(curr != 0 && !found)
    80001abc:	02048063          	beqz	s1,80001adc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
    80001ac0:	00069e63          	bnez	a3,80001adc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
        if(addr == (void*)((char*)curr + sizeof(AllocatedFragment)))
    80001ac4:	01048793          	addi	a5,s1,16
    80001ac8:	ff2796e3          	bne	a5,s2,80001ab4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x5c>
            if(prev != 0) {
    80001acc:	fc0702e3          	beqz	a4,80001a90 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x38>
                prev->next = curr->next;
    80001ad0:	0084b783          	ld	a5,8(s1)
    80001ad4:	00f73423          	sd	a5,8(a4)
    80001ad8:	fc5ff06f          	j	80001a9c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
    }

    if(found) {
    80001adc:	02068063          	beqz	a3,80001afc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0xa4>
        __asm__ volatile("li a0, 0");
    80001ae0:	00000513          	li	a0,0
    }
    else {
        __asm__ volatile("li a0, 1");
    }
    80001ae4:	01813083          	ld	ra,24(sp)
    80001ae8:	01013403          	ld	s0,16(sp)
    80001aec:	00813483          	ld	s1,8(sp)
    80001af0:	00013903          	ld	s2,0(sp)
    80001af4:	02010113          	addi	sp,sp,32
    80001af8:	00008067          	ret
        __asm__ volatile("li a0, 1");
    80001afc:	00100513          	li	a0,1
    80001b00:	fe5ff06f          	j	80001ae4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>

0000000080001b04 <start>:
    80001b04:	ff010113          	addi	sp,sp,-16
    80001b08:	00813423          	sd	s0,8(sp)
    80001b0c:	01010413          	addi	s0,sp,16
    80001b10:	300027f3          	csrr	a5,mstatus
    80001b14:	ffffe737          	lui	a4,0xffffe
    80001b18:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8def>
    80001b1c:	00e7f7b3          	and	a5,a5,a4
    80001b20:	00001737          	lui	a4,0x1
    80001b24:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001b28:	00e7e7b3          	or	a5,a5,a4
    80001b2c:	30079073          	csrw	mstatus,a5
    80001b30:	00000797          	auipc	a5,0x0
    80001b34:	16078793          	addi	a5,a5,352 # 80001c90 <system_main>
    80001b38:	34179073          	csrw	mepc,a5
    80001b3c:	00000793          	li	a5,0
    80001b40:	18079073          	csrw	satp,a5
    80001b44:	000107b7          	lui	a5,0x10
    80001b48:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001b4c:	30279073          	csrw	medeleg,a5
    80001b50:	30379073          	csrw	mideleg,a5
    80001b54:	104027f3          	csrr	a5,sie
    80001b58:	2227e793          	ori	a5,a5,546
    80001b5c:	10479073          	csrw	sie,a5
    80001b60:	fff00793          	li	a5,-1
    80001b64:	00a7d793          	srli	a5,a5,0xa
    80001b68:	3b079073          	csrw	pmpaddr0,a5
    80001b6c:	00f00793          	li	a5,15
    80001b70:	3a079073          	csrw	pmpcfg0,a5
    80001b74:	f14027f3          	csrr	a5,mhartid
    80001b78:	0200c737          	lui	a4,0x200c
    80001b7c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001b80:	0007869b          	sext.w	a3,a5
    80001b84:	00269713          	slli	a4,a3,0x2
    80001b88:	000f4637          	lui	a2,0xf4
    80001b8c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001b90:	00d70733          	add	a4,a4,a3
    80001b94:	0037979b          	slliw	a5,a5,0x3
    80001b98:	020046b7          	lui	a3,0x2004
    80001b9c:	00d787b3          	add	a5,a5,a3
    80001ba0:	00c585b3          	add	a1,a1,a2
    80001ba4:	00371693          	slli	a3,a4,0x3
    80001ba8:	00003717          	auipc	a4,0x3
    80001bac:	c1870713          	addi	a4,a4,-1000 # 800047c0 <timer_scratch>
    80001bb0:	00b7b023          	sd	a1,0(a5)
    80001bb4:	00d70733          	add	a4,a4,a3
    80001bb8:	00f73c23          	sd	a5,24(a4)
    80001bbc:	02c73023          	sd	a2,32(a4)
    80001bc0:	34071073          	csrw	mscratch,a4
    80001bc4:	00000797          	auipc	a5,0x0
    80001bc8:	6ec78793          	addi	a5,a5,1772 # 800022b0 <timervec>
    80001bcc:	30579073          	csrw	mtvec,a5
    80001bd0:	300027f3          	csrr	a5,mstatus
    80001bd4:	0087e793          	ori	a5,a5,8
    80001bd8:	30079073          	csrw	mstatus,a5
    80001bdc:	304027f3          	csrr	a5,mie
    80001be0:	0807e793          	ori	a5,a5,128
    80001be4:	30479073          	csrw	mie,a5
    80001be8:	f14027f3          	csrr	a5,mhartid
    80001bec:	0007879b          	sext.w	a5,a5
    80001bf0:	00078213          	mv	tp,a5
    80001bf4:	30200073          	mret
    80001bf8:	00813403          	ld	s0,8(sp)
    80001bfc:	01010113          	addi	sp,sp,16
    80001c00:	00008067          	ret

0000000080001c04 <timerinit>:
    80001c04:	ff010113          	addi	sp,sp,-16
    80001c08:	00813423          	sd	s0,8(sp)
    80001c0c:	01010413          	addi	s0,sp,16
    80001c10:	f14027f3          	csrr	a5,mhartid
    80001c14:	0200c737          	lui	a4,0x200c
    80001c18:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001c1c:	0007869b          	sext.w	a3,a5
    80001c20:	00269713          	slli	a4,a3,0x2
    80001c24:	000f4637          	lui	a2,0xf4
    80001c28:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001c2c:	00d70733          	add	a4,a4,a3
    80001c30:	0037979b          	slliw	a5,a5,0x3
    80001c34:	020046b7          	lui	a3,0x2004
    80001c38:	00d787b3          	add	a5,a5,a3
    80001c3c:	00c585b3          	add	a1,a1,a2
    80001c40:	00371693          	slli	a3,a4,0x3
    80001c44:	00003717          	auipc	a4,0x3
    80001c48:	b7c70713          	addi	a4,a4,-1156 # 800047c0 <timer_scratch>
    80001c4c:	00b7b023          	sd	a1,0(a5)
    80001c50:	00d70733          	add	a4,a4,a3
    80001c54:	00f73c23          	sd	a5,24(a4)
    80001c58:	02c73023          	sd	a2,32(a4)
    80001c5c:	34071073          	csrw	mscratch,a4
    80001c60:	00000797          	auipc	a5,0x0
    80001c64:	65078793          	addi	a5,a5,1616 # 800022b0 <timervec>
    80001c68:	30579073          	csrw	mtvec,a5
    80001c6c:	300027f3          	csrr	a5,mstatus
    80001c70:	0087e793          	ori	a5,a5,8
    80001c74:	30079073          	csrw	mstatus,a5
    80001c78:	304027f3          	csrr	a5,mie
    80001c7c:	0807e793          	ori	a5,a5,128
    80001c80:	30479073          	csrw	mie,a5
    80001c84:	00813403          	ld	s0,8(sp)
    80001c88:	01010113          	addi	sp,sp,16
    80001c8c:	00008067          	ret

0000000080001c90 <system_main>:
    80001c90:	fe010113          	addi	sp,sp,-32
    80001c94:	00813823          	sd	s0,16(sp)
    80001c98:	00913423          	sd	s1,8(sp)
    80001c9c:	00113c23          	sd	ra,24(sp)
    80001ca0:	02010413          	addi	s0,sp,32
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	0c4080e7          	jalr	196(ra) # 80001d68 <cpuid>
    80001cac:	00003497          	auipc	s1,0x3
    80001cb0:	ab448493          	addi	s1,s1,-1356 # 80004760 <started>
    80001cb4:	02050263          	beqz	a0,80001cd8 <system_main+0x48>
    80001cb8:	0004a783          	lw	a5,0(s1)
    80001cbc:	0007879b          	sext.w	a5,a5
    80001cc0:	fe078ce3          	beqz	a5,80001cb8 <system_main+0x28>
    80001cc4:	0ff0000f          	fence
    80001cc8:	00002517          	auipc	a0,0x2
    80001ccc:	3c850513          	addi	a0,a0,968 # 80004090 <bntOne+0x38>
    80001cd0:	00001097          	auipc	ra,0x1
    80001cd4:	a7c080e7          	jalr	-1412(ra) # 8000274c <panic>
    80001cd8:	00001097          	auipc	ra,0x1
    80001cdc:	9d0080e7          	jalr	-1584(ra) # 800026a8 <consoleinit>
    80001ce0:	00001097          	auipc	ra,0x1
    80001ce4:	15c080e7          	jalr	348(ra) # 80002e3c <printfinit>
    80001ce8:	00002517          	auipc	a0,0x2
    80001cec:	48850513          	addi	a0,a0,1160 # 80004170 <bntOne+0x118>
    80001cf0:	00001097          	auipc	ra,0x1
    80001cf4:	ab8080e7          	jalr	-1352(ra) # 800027a8 <__printf>
    80001cf8:	00002517          	auipc	a0,0x2
    80001cfc:	36850513          	addi	a0,a0,872 # 80004060 <bntOne+0x8>
    80001d00:	00001097          	auipc	ra,0x1
    80001d04:	aa8080e7          	jalr	-1368(ra) # 800027a8 <__printf>
    80001d08:	00002517          	auipc	a0,0x2
    80001d0c:	46850513          	addi	a0,a0,1128 # 80004170 <bntOne+0x118>
    80001d10:	00001097          	auipc	ra,0x1
    80001d14:	a98080e7          	jalr	-1384(ra) # 800027a8 <__printf>
    80001d18:	00001097          	auipc	ra,0x1
    80001d1c:	4b0080e7          	jalr	1200(ra) # 800031c8 <kinit>
    80001d20:	00000097          	auipc	ra,0x0
    80001d24:	148080e7          	jalr	328(ra) # 80001e68 <trapinit>
    80001d28:	00000097          	auipc	ra,0x0
    80001d2c:	16c080e7          	jalr	364(ra) # 80001e94 <trapinithart>
    80001d30:	00000097          	auipc	ra,0x0
    80001d34:	5c0080e7          	jalr	1472(ra) # 800022f0 <plicinit>
    80001d38:	00000097          	auipc	ra,0x0
    80001d3c:	5e0080e7          	jalr	1504(ra) # 80002318 <plicinithart>
    80001d40:	00000097          	auipc	ra,0x0
    80001d44:	078080e7          	jalr	120(ra) # 80001db8 <userinit>
    80001d48:	0ff0000f          	fence
    80001d4c:	00100793          	li	a5,1
    80001d50:	00002517          	auipc	a0,0x2
    80001d54:	32850513          	addi	a0,a0,808 # 80004078 <bntOne+0x20>
    80001d58:	00f4a023          	sw	a5,0(s1)
    80001d5c:	00001097          	auipc	ra,0x1
    80001d60:	a4c080e7          	jalr	-1460(ra) # 800027a8 <__printf>
    80001d64:	0000006f          	j	80001d64 <system_main+0xd4>

0000000080001d68 <cpuid>:
    80001d68:	ff010113          	addi	sp,sp,-16
    80001d6c:	00813423          	sd	s0,8(sp)
    80001d70:	01010413          	addi	s0,sp,16
    80001d74:	00020513          	mv	a0,tp
    80001d78:	00813403          	ld	s0,8(sp)
    80001d7c:	0005051b          	sext.w	a0,a0
    80001d80:	01010113          	addi	sp,sp,16
    80001d84:	00008067          	ret

0000000080001d88 <mycpu>:
    80001d88:	ff010113          	addi	sp,sp,-16
    80001d8c:	00813423          	sd	s0,8(sp)
    80001d90:	01010413          	addi	s0,sp,16
    80001d94:	00020793          	mv	a5,tp
    80001d98:	00813403          	ld	s0,8(sp)
    80001d9c:	0007879b          	sext.w	a5,a5
    80001da0:	00779793          	slli	a5,a5,0x7
    80001da4:	00004517          	auipc	a0,0x4
    80001da8:	a4c50513          	addi	a0,a0,-1460 # 800057f0 <cpus>
    80001dac:	00f50533          	add	a0,a0,a5
    80001db0:	01010113          	addi	sp,sp,16
    80001db4:	00008067          	ret

0000000080001db8 <userinit>:
    80001db8:	ff010113          	addi	sp,sp,-16
    80001dbc:	00813423          	sd	s0,8(sp)
    80001dc0:	01010413          	addi	s0,sp,16
    80001dc4:	00813403          	ld	s0,8(sp)
    80001dc8:	01010113          	addi	sp,sp,16
    80001dcc:	00000317          	auipc	t1,0x0
    80001dd0:	82830067          	jr	-2008(t1) # 800015f4 <main>

0000000080001dd4 <either_copyout>:
    80001dd4:	ff010113          	addi	sp,sp,-16
    80001dd8:	00813023          	sd	s0,0(sp)
    80001ddc:	00113423          	sd	ra,8(sp)
    80001de0:	01010413          	addi	s0,sp,16
    80001de4:	02051663          	bnez	a0,80001e10 <either_copyout+0x3c>
    80001de8:	00058513          	mv	a0,a1
    80001dec:	00060593          	mv	a1,a2
    80001df0:	0006861b          	sext.w	a2,a3
    80001df4:	00002097          	auipc	ra,0x2
    80001df8:	c60080e7          	jalr	-928(ra) # 80003a54 <__memmove>
    80001dfc:	00813083          	ld	ra,8(sp)
    80001e00:	00013403          	ld	s0,0(sp)
    80001e04:	00000513          	li	a0,0
    80001e08:	01010113          	addi	sp,sp,16
    80001e0c:	00008067          	ret
    80001e10:	00002517          	auipc	a0,0x2
    80001e14:	2a850513          	addi	a0,a0,680 # 800040b8 <bntOne+0x60>
    80001e18:	00001097          	auipc	ra,0x1
    80001e1c:	934080e7          	jalr	-1740(ra) # 8000274c <panic>

0000000080001e20 <either_copyin>:
    80001e20:	ff010113          	addi	sp,sp,-16
    80001e24:	00813023          	sd	s0,0(sp)
    80001e28:	00113423          	sd	ra,8(sp)
    80001e2c:	01010413          	addi	s0,sp,16
    80001e30:	02059463          	bnez	a1,80001e58 <either_copyin+0x38>
    80001e34:	00060593          	mv	a1,a2
    80001e38:	0006861b          	sext.w	a2,a3
    80001e3c:	00002097          	auipc	ra,0x2
    80001e40:	c18080e7          	jalr	-1000(ra) # 80003a54 <__memmove>
    80001e44:	00813083          	ld	ra,8(sp)
    80001e48:	00013403          	ld	s0,0(sp)
    80001e4c:	00000513          	li	a0,0
    80001e50:	01010113          	addi	sp,sp,16
    80001e54:	00008067          	ret
    80001e58:	00002517          	auipc	a0,0x2
    80001e5c:	28850513          	addi	a0,a0,648 # 800040e0 <bntOne+0x88>
    80001e60:	00001097          	auipc	ra,0x1
    80001e64:	8ec080e7          	jalr	-1812(ra) # 8000274c <panic>

0000000080001e68 <trapinit>:
    80001e68:	ff010113          	addi	sp,sp,-16
    80001e6c:	00813423          	sd	s0,8(sp)
    80001e70:	01010413          	addi	s0,sp,16
    80001e74:	00813403          	ld	s0,8(sp)
    80001e78:	00002597          	auipc	a1,0x2
    80001e7c:	29058593          	addi	a1,a1,656 # 80004108 <bntOne+0xb0>
    80001e80:	00004517          	auipc	a0,0x4
    80001e84:	9f050513          	addi	a0,a0,-1552 # 80005870 <tickslock>
    80001e88:	01010113          	addi	sp,sp,16
    80001e8c:	00001317          	auipc	t1,0x1
    80001e90:	5cc30067          	jr	1484(t1) # 80003458 <initlock>

0000000080001e94 <trapinithart>:
    80001e94:	ff010113          	addi	sp,sp,-16
    80001e98:	00813423          	sd	s0,8(sp)
    80001e9c:	01010413          	addi	s0,sp,16
    80001ea0:	00000797          	auipc	a5,0x0
    80001ea4:	30078793          	addi	a5,a5,768 # 800021a0 <kernelvec>
    80001ea8:	10579073          	csrw	stvec,a5
    80001eac:	00813403          	ld	s0,8(sp)
    80001eb0:	01010113          	addi	sp,sp,16
    80001eb4:	00008067          	ret

0000000080001eb8 <usertrap>:
    80001eb8:	ff010113          	addi	sp,sp,-16
    80001ebc:	00813423          	sd	s0,8(sp)
    80001ec0:	01010413          	addi	s0,sp,16
    80001ec4:	00813403          	ld	s0,8(sp)
    80001ec8:	01010113          	addi	sp,sp,16
    80001ecc:	00008067          	ret

0000000080001ed0 <usertrapret>:
    80001ed0:	ff010113          	addi	sp,sp,-16
    80001ed4:	00813423          	sd	s0,8(sp)
    80001ed8:	01010413          	addi	s0,sp,16
    80001edc:	00813403          	ld	s0,8(sp)
    80001ee0:	01010113          	addi	sp,sp,16
    80001ee4:	00008067          	ret

0000000080001ee8 <kerneltrap>:
    80001ee8:	fe010113          	addi	sp,sp,-32
    80001eec:	00813823          	sd	s0,16(sp)
    80001ef0:	00113c23          	sd	ra,24(sp)
    80001ef4:	00913423          	sd	s1,8(sp)
    80001ef8:	02010413          	addi	s0,sp,32
    80001efc:	142025f3          	csrr	a1,scause
    80001f00:	100027f3          	csrr	a5,sstatus
    80001f04:	0027f793          	andi	a5,a5,2
    80001f08:	10079c63          	bnez	a5,80002020 <kerneltrap+0x138>
    80001f0c:	142027f3          	csrr	a5,scause
    80001f10:	0207ce63          	bltz	a5,80001f4c <kerneltrap+0x64>
    80001f14:	00002517          	auipc	a0,0x2
    80001f18:	23c50513          	addi	a0,a0,572 # 80004150 <bntOne+0xf8>
    80001f1c:	00001097          	auipc	ra,0x1
    80001f20:	88c080e7          	jalr	-1908(ra) # 800027a8 <__printf>
    80001f24:	141025f3          	csrr	a1,sepc
    80001f28:	14302673          	csrr	a2,stval
    80001f2c:	00002517          	auipc	a0,0x2
    80001f30:	23450513          	addi	a0,a0,564 # 80004160 <bntOne+0x108>
    80001f34:	00001097          	auipc	ra,0x1
    80001f38:	874080e7          	jalr	-1932(ra) # 800027a8 <__printf>
    80001f3c:	00002517          	auipc	a0,0x2
    80001f40:	23c50513          	addi	a0,a0,572 # 80004178 <bntOne+0x120>
    80001f44:	00001097          	auipc	ra,0x1
    80001f48:	808080e7          	jalr	-2040(ra) # 8000274c <panic>
    80001f4c:	0ff7f713          	andi	a4,a5,255
    80001f50:	00900693          	li	a3,9
    80001f54:	04d70063          	beq	a4,a3,80001f94 <kerneltrap+0xac>
    80001f58:	fff00713          	li	a4,-1
    80001f5c:	03f71713          	slli	a4,a4,0x3f
    80001f60:	00170713          	addi	a4,a4,1
    80001f64:	fae798e3          	bne	a5,a4,80001f14 <kerneltrap+0x2c>
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	e00080e7          	jalr	-512(ra) # 80001d68 <cpuid>
    80001f70:	06050663          	beqz	a0,80001fdc <kerneltrap+0xf4>
    80001f74:	144027f3          	csrr	a5,sip
    80001f78:	ffd7f793          	andi	a5,a5,-3
    80001f7c:	14479073          	csrw	sip,a5
    80001f80:	01813083          	ld	ra,24(sp)
    80001f84:	01013403          	ld	s0,16(sp)
    80001f88:	00813483          	ld	s1,8(sp)
    80001f8c:	02010113          	addi	sp,sp,32
    80001f90:	00008067          	ret
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	3d0080e7          	jalr	976(ra) # 80002364 <plic_claim>
    80001f9c:	00a00793          	li	a5,10
    80001fa0:	00050493          	mv	s1,a0
    80001fa4:	06f50863          	beq	a0,a5,80002014 <kerneltrap+0x12c>
    80001fa8:	fc050ce3          	beqz	a0,80001f80 <kerneltrap+0x98>
    80001fac:	00050593          	mv	a1,a0
    80001fb0:	00002517          	auipc	a0,0x2
    80001fb4:	18050513          	addi	a0,a0,384 # 80004130 <bntOne+0xd8>
    80001fb8:	00000097          	auipc	ra,0x0
    80001fbc:	7f0080e7          	jalr	2032(ra) # 800027a8 <__printf>
    80001fc0:	01013403          	ld	s0,16(sp)
    80001fc4:	01813083          	ld	ra,24(sp)
    80001fc8:	00048513          	mv	a0,s1
    80001fcc:	00813483          	ld	s1,8(sp)
    80001fd0:	02010113          	addi	sp,sp,32
    80001fd4:	00000317          	auipc	t1,0x0
    80001fd8:	3c830067          	jr	968(t1) # 8000239c <plic_complete>
    80001fdc:	00004517          	auipc	a0,0x4
    80001fe0:	89450513          	addi	a0,a0,-1900 # 80005870 <tickslock>
    80001fe4:	00001097          	auipc	ra,0x1
    80001fe8:	498080e7          	jalr	1176(ra) # 8000347c <acquire>
    80001fec:	00002717          	auipc	a4,0x2
    80001ff0:	77870713          	addi	a4,a4,1912 # 80004764 <ticks>
    80001ff4:	00072783          	lw	a5,0(a4)
    80001ff8:	00004517          	auipc	a0,0x4
    80001ffc:	87850513          	addi	a0,a0,-1928 # 80005870 <tickslock>
    80002000:	0017879b          	addiw	a5,a5,1
    80002004:	00f72023          	sw	a5,0(a4)
    80002008:	00001097          	auipc	ra,0x1
    8000200c:	540080e7          	jalr	1344(ra) # 80003548 <release>
    80002010:	f65ff06f          	j	80001f74 <kerneltrap+0x8c>
    80002014:	00001097          	auipc	ra,0x1
    80002018:	09c080e7          	jalr	156(ra) # 800030b0 <uartintr>
    8000201c:	fa5ff06f          	j	80001fc0 <kerneltrap+0xd8>
    80002020:	00002517          	auipc	a0,0x2
    80002024:	0f050513          	addi	a0,a0,240 # 80004110 <bntOne+0xb8>
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	724080e7          	jalr	1828(ra) # 8000274c <panic>

0000000080002030 <clockintr>:
    80002030:	fe010113          	addi	sp,sp,-32
    80002034:	00813823          	sd	s0,16(sp)
    80002038:	00913423          	sd	s1,8(sp)
    8000203c:	00113c23          	sd	ra,24(sp)
    80002040:	02010413          	addi	s0,sp,32
    80002044:	00004497          	auipc	s1,0x4
    80002048:	82c48493          	addi	s1,s1,-2004 # 80005870 <tickslock>
    8000204c:	00048513          	mv	a0,s1
    80002050:	00001097          	auipc	ra,0x1
    80002054:	42c080e7          	jalr	1068(ra) # 8000347c <acquire>
    80002058:	00002717          	auipc	a4,0x2
    8000205c:	70c70713          	addi	a4,a4,1804 # 80004764 <ticks>
    80002060:	00072783          	lw	a5,0(a4)
    80002064:	01013403          	ld	s0,16(sp)
    80002068:	01813083          	ld	ra,24(sp)
    8000206c:	00048513          	mv	a0,s1
    80002070:	0017879b          	addiw	a5,a5,1
    80002074:	00813483          	ld	s1,8(sp)
    80002078:	00f72023          	sw	a5,0(a4)
    8000207c:	02010113          	addi	sp,sp,32
    80002080:	00001317          	auipc	t1,0x1
    80002084:	4c830067          	jr	1224(t1) # 80003548 <release>

0000000080002088 <devintr>:
    80002088:	142027f3          	csrr	a5,scause
    8000208c:	00000513          	li	a0,0
    80002090:	0007c463          	bltz	a5,80002098 <devintr+0x10>
    80002094:	00008067          	ret
    80002098:	fe010113          	addi	sp,sp,-32
    8000209c:	00813823          	sd	s0,16(sp)
    800020a0:	00113c23          	sd	ra,24(sp)
    800020a4:	00913423          	sd	s1,8(sp)
    800020a8:	02010413          	addi	s0,sp,32
    800020ac:	0ff7f713          	andi	a4,a5,255
    800020b0:	00900693          	li	a3,9
    800020b4:	04d70c63          	beq	a4,a3,8000210c <devintr+0x84>
    800020b8:	fff00713          	li	a4,-1
    800020bc:	03f71713          	slli	a4,a4,0x3f
    800020c0:	00170713          	addi	a4,a4,1
    800020c4:	00e78c63          	beq	a5,a4,800020dc <devintr+0x54>
    800020c8:	01813083          	ld	ra,24(sp)
    800020cc:	01013403          	ld	s0,16(sp)
    800020d0:	00813483          	ld	s1,8(sp)
    800020d4:	02010113          	addi	sp,sp,32
    800020d8:	00008067          	ret
    800020dc:	00000097          	auipc	ra,0x0
    800020e0:	c8c080e7          	jalr	-884(ra) # 80001d68 <cpuid>
    800020e4:	06050663          	beqz	a0,80002150 <devintr+0xc8>
    800020e8:	144027f3          	csrr	a5,sip
    800020ec:	ffd7f793          	andi	a5,a5,-3
    800020f0:	14479073          	csrw	sip,a5
    800020f4:	01813083          	ld	ra,24(sp)
    800020f8:	01013403          	ld	s0,16(sp)
    800020fc:	00813483          	ld	s1,8(sp)
    80002100:	00200513          	li	a0,2
    80002104:	02010113          	addi	sp,sp,32
    80002108:	00008067          	ret
    8000210c:	00000097          	auipc	ra,0x0
    80002110:	258080e7          	jalr	600(ra) # 80002364 <plic_claim>
    80002114:	00a00793          	li	a5,10
    80002118:	00050493          	mv	s1,a0
    8000211c:	06f50663          	beq	a0,a5,80002188 <devintr+0x100>
    80002120:	00100513          	li	a0,1
    80002124:	fa0482e3          	beqz	s1,800020c8 <devintr+0x40>
    80002128:	00048593          	mv	a1,s1
    8000212c:	00002517          	auipc	a0,0x2
    80002130:	00450513          	addi	a0,a0,4 # 80004130 <bntOne+0xd8>
    80002134:	00000097          	auipc	ra,0x0
    80002138:	674080e7          	jalr	1652(ra) # 800027a8 <__printf>
    8000213c:	00048513          	mv	a0,s1
    80002140:	00000097          	auipc	ra,0x0
    80002144:	25c080e7          	jalr	604(ra) # 8000239c <plic_complete>
    80002148:	00100513          	li	a0,1
    8000214c:	f7dff06f          	j	800020c8 <devintr+0x40>
    80002150:	00003517          	auipc	a0,0x3
    80002154:	72050513          	addi	a0,a0,1824 # 80005870 <tickslock>
    80002158:	00001097          	auipc	ra,0x1
    8000215c:	324080e7          	jalr	804(ra) # 8000347c <acquire>
    80002160:	00002717          	auipc	a4,0x2
    80002164:	60470713          	addi	a4,a4,1540 # 80004764 <ticks>
    80002168:	00072783          	lw	a5,0(a4)
    8000216c:	00003517          	auipc	a0,0x3
    80002170:	70450513          	addi	a0,a0,1796 # 80005870 <tickslock>
    80002174:	0017879b          	addiw	a5,a5,1
    80002178:	00f72023          	sw	a5,0(a4)
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	3cc080e7          	jalr	972(ra) # 80003548 <release>
    80002184:	f65ff06f          	j	800020e8 <devintr+0x60>
    80002188:	00001097          	auipc	ra,0x1
    8000218c:	f28080e7          	jalr	-216(ra) # 800030b0 <uartintr>
    80002190:	fadff06f          	j	8000213c <devintr+0xb4>
	...

00000000800021a0 <kernelvec>:
    800021a0:	f0010113          	addi	sp,sp,-256
    800021a4:	00113023          	sd	ra,0(sp)
    800021a8:	00213423          	sd	sp,8(sp)
    800021ac:	00313823          	sd	gp,16(sp)
    800021b0:	00413c23          	sd	tp,24(sp)
    800021b4:	02513023          	sd	t0,32(sp)
    800021b8:	02613423          	sd	t1,40(sp)
    800021bc:	02713823          	sd	t2,48(sp)
    800021c0:	02813c23          	sd	s0,56(sp)
    800021c4:	04913023          	sd	s1,64(sp)
    800021c8:	04a13423          	sd	a0,72(sp)
    800021cc:	04b13823          	sd	a1,80(sp)
    800021d0:	04c13c23          	sd	a2,88(sp)
    800021d4:	06d13023          	sd	a3,96(sp)
    800021d8:	06e13423          	sd	a4,104(sp)
    800021dc:	06f13823          	sd	a5,112(sp)
    800021e0:	07013c23          	sd	a6,120(sp)
    800021e4:	09113023          	sd	a7,128(sp)
    800021e8:	09213423          	sd	s2,136(sp)
    800021ec:	09313823          	sd	s3,144(sp)
    800021f0:	09413c23          	sd	s4,152(sp)
    800021f4:	0b513023          	sd	s5,160(sp)
    800021f8:	0b613423          	sd	s6,168(sp)
    800021fc:	0b713823          	sd	s7,176(sp)
    80002200:	0b813c23          	sd	s8,184(sp)
    80002204:	0d913023          	sd	s9,192(sp)
    80002208:	0da13423          	sd	s10,200(sp)
    8000220c:	0db13823          	sd	s11,208(sp)
    80002210:	0dc13c23          	sd	t3,216(sp)
    80002214:	0fd13023          	sd	t4,224(sp)
    80002218:	0fe13423          	sd	t5,232(sp)
    8000221c:	0ff13823          	sd	t6,240(sp)
    80002220:	cc9ff0ef          	jal	ra,80001ee8 <kerneltrap>
    80002224:	00013083          	ld	ra,0(sp)
    80002228:	00813103          	ld	sp,8(sp)
    8000222c:	01013183          	ld	gp,16(sp)
    80002230:	02013283          	ld	t0,32(sp)
    80002234:	02813303          	ld	t1,40(sp)
    80002238:	03013383          	ld	t2,48(sp)
    8000223c:	03813403          	ld	s0,56(sp)
    80002240:	04013483          	ld	s1,64(sp)
    80002244:	04813503          	ld	a0,72(sp)
    80002248:	05013583          	ld	a1,80(sp)
    8000224c:	05813603          	ld	a2,88(sp)
    80002250:	06013683          	ld	a3,96(sp)
    80002254:	06813703          	ld	a4,104(sp)
    80002258:	07013783          	ld	a5,112(sp)
    8000225c:	07813803          	ld	a6,120(sp)
    80002260:	08013883          	ld	a7,128(sp)
    80002264:	08813903          	ld	s2,136(sp)
    80002268:	09013983          	ld	s3,144(sp)
    8000226c:	09813a03          	ld	s4,152(sp)
    80002270:	0a013a83          	ld	s5,160(sp)
    80002274:	0a813b03          	ld	s6,168(sp)
    80002278:	0b013b83          	ld	s7,176(sp)
    8000227c:	0b813c03          	ld	s8,184(sp)
    80002280:	0c013c83          	ld	s9,192(sp)
    80002284:	0c813d03          	ld	s10,200(sp)
    80002288:	0d013d83          	ld	s11,208(sp)
    8000228c:	0d813e03          	ld	t3,216(sp)
    80002290:	0e013e83          	ld	t4,224(sp)
    80002294:	0e813f03          	ld	t5,232(sp)
    80002298:	0f013f83          	ld	t6,240(sp)
    8000229c:	10010113          	addi	sp,sp,256
    800022a0:	10200073          	sret
    800022a4:	00000013          	nop
    800022a8:	00000013          	nop
    800022ac:	00000013          	nop

00000000800022b0 <timervec>:
    800022b0:	34051573          	csrrw	a0,mscratch,a0
    800022b4:	00b53023          	sd	a1,0(a0)
    800022b8:	00c53423          	sd	a2,8(a0)
    800022bc:	00d53823          	sd	a3,16(a0)
    800022c0:	01853583          	ld	a1,24(a0)
    800022c4:	02053603          	ld	a2,32(a0)
    800022c8:	0005b683          	ld	a3,0(a1)
    800022cc:	00c686b3          	add	a3,a3,a2
    800022d0:	00d5b023          	sd	a3,0(a1)
    800022d4:	00200593          	li	a1,2
    800022d8:	14459073          	csrw	sip,a1
    800022dc:	01053683          	ld	a3,16(a0)
    800022e0:	00853603          	ld	a2,8(a0)
    800022e4:	00053583          	ld	a1,0(a0)
    800022e8:	34051573          	csrrw	a0,mscratch,a0
    800022ec:	30200073          	mret

00000000800022f0 <plicinit>:
    800022f0:	ff010113          	addi	sp,sp,-16
    800022f4:	00813423          	sd	s0,8(sp)
    800022f8:	01010413          	addi	s0,sp,16
    800022fc:	00813403          	ld	s0,8(sp)
    80002300:	0c0007b7          	lui	a5,0xc000
    80002304:	00100713          	li	a4,1
    80002308:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000230c:	00e7a223          	sw	a4,4(a5)
    80002310:	01010113          	addi	sp,sp,16
    80002314:	00008067          	ret

0000000080002318 <plicinithart>:
    80002318:	ff010113          	addi	sp,sp,-16
    8000231c:	00813023          	sd	s0,0(sp)
    80002320:	00113423          	sd	ra,8(sp)
    80002324:	01010413          	addi	s0,sp,16
    80002328:	00000097          	auipc	ra,0x0
    8000232c:	a40080e7          	jalr	-1472(ra) # 80001d68 <cpuid>
    80002330:	0085171b          	slliw	a4,a0,0x8
    80002334:	0c0027b7          	lui	a5,0xc002
    80002338:	00e787b3          	add	a5,a5,a4
    8000233c:	40200713          	li	a4,1026
    80002340:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002344:	00813083          	ld	ra,8(sp)
    80002348:	00013403          	ld	s0,0(sp)
    8000234c:	00d5151b          	slliw	a0,a0,0xd
    80002350:	0c2017b7          	lui	a5,0xc201
    80002354:	00a78533          	add	a0,a5,a0
    80002358:	00052023          	sw	zero,0(a0)
    8000235c:	01010113          	addi	sp,sp,16
    80002360:	00008067          	ret

0000000080002364 <plic_claim>:
    80002364:	ff010113          	addi	sp,sp,-16
    80002368:	00813023          	sd	s0,0(sp)
    8000236c:	00113423          	sd	ra,8(sp)
    80002370:	01010413          	addi	s0,sp,16
    80002374:	00000097          	auipc	ra,0x0
    80002378:	9f4080e7          	jalr	-1548(ra) # 80001d68 <cpuid>
    8000237c:	00813083          	ld	ra,8(sp)
    80002380:	00013403          	ld	s0,0(sp)
    80002384:	00d5151b          	slliw	a0,a0,0xd
    80002388:	0c2017b7          	lui	a5,0xc201
    8000238c:	00a78533          	add	a0,a5,a0
    80002390:	00452503          	lw	a0,4(a0)
    80002394:	01010113          	addi	sp,sp,16
    80002398:	00008067          	ret

000000008000239c <plic_complete>:
    8000239c:	fe010113          	addi	sp,sp,-32
    800023a0:	00813823          	sd	s0,16(sp)
    800023a4:	00913423          	sd	s1,8(sp)
    800023a8:	00113c23          	sd	ra,24(sp)
    800023ac:	02010413          	addi	s0,sp,32
    800023b0:	00050493          	mv	s1,a0
    800023b4:	00000097          	auipc	ra,0x0
    800023b8:	9b4080e7          	jalr	-1612(ra) # 80001d68 <cpuid>
    800023bc:	01813083          	ld	ra,24(sp)
    800023c0:	01013403          	ld	s0,16(sp)
    800023c4:	00d5179b          	slliw	a5,a0,0xd
    800023c8:	0c201737          	lui	a4,0xc201
    800023cc:	00f707b3          	add	a5,a4,a5
    800023d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800023d4:	00813483          	ld	s1,8(sp)
    800023d8:	02010113          	addi	sp,sp,32
    800023dc:	00008067          	ret

00000000800023e0 <consolewrite>:
    800023e0:	fb010113          	addi	sp,sp,-80
    800023e4:	04813023          	sd	s0,64(sp)
    800023e8:	04113423          	sd	ra,72(sp)
    800023ec:	02913c23          	sd	s1,56(sp)
    800023f0:	03213823          	sd	s2,48(sp)
    800023f4:	03313423          	sd	s3,40(sp)
    800023f8:	03413023          	sd	s4,32(sp)
    800023fc:	01513c23          	sd	s5,24(sp)
    80002400:	05010413          	addi	s0,sp,80
    80002404:	06c05c63          	blez	a2,8000247c <consolewrite+0x9c>
    80002408:	00060993          	mv	s3,a2
    8000240c:	00050a13          	mv	s4,a0
    80002410:	00058493          	mv	s1,a1
    80002414:	00000913          	li	s2,0
    80002418:	fff00a93          	li	s5,-1
    8000241c:	01c0006f          	j	80002438 <consolewrite+0x58>
    80002420:	fbf44503          	lbu	a0,-65(s0)
    80002424:	0019091b          	addiw	s2,s2,1
    80002428:	00148493          	addi	s1,s1,1
    8000242c:	00001097          	auipc	ra,0x1
    80002430:	a9c080e7          	jalr	-1380(ra) # 80002ec8 <uartputc>
    80002434:	03298063          	beq	s3,s2,80002454 <consolewrite+0x74>
    80002438:	00048613          	mv	a2,s1
    8000243c:	00100693          	li	a3,1
    80002440:	000a0593          	mv	a1,s4
    80002444:	fbf40513          	addi	a0,s0,-65
    80002448:	00000097          	auipc	ra,0x0
    8000244c:	9d8080e7          	jalr	-1576(ra) # 80001e20 <either_copyin>
    80002450:	fd5518e3          	bne	a0,s5,80002420 <consolewrite+0x40>
    80002454:	04813083          	ld	ra,72(sp)
    80002458:	04013403          	ld	s0,64(sp)
    8000245c:	03813483          	ld	s1,56(sp)
    80002460:	02813983          	ld	s3,40(sp)
    80002464:	02013a03          	ld	s4,32(sp)
    80002468:	01813a83          	ld	s5,24(sp)
    8000246c:	00090513          	mv	a0,s2
    80002470:	03013903          	ld	s2,48(sp)
    80002474:	05010113          	addi	sp,sp,80
    80002478:	00008067          	ret
    8000247c:	00000913          	li	s2,0
    80002480:	fd5ff06f          	j	80002454 <consolewrite+0x74>

0000000080002484 <consoleread>:
    80002484:	f9010113          	addi	sp,sp,-112
    80002488:	06813023          	sd	s0,96(sp)
    8000248c:	04913c23          	sd	s1,88(sp)
    80002490:	05213823          	sd	s2,80(sp)
    80002494:	05313423          	sd	s3,72(sp)
    80002498:	05413023          	sd	s4,64(sp)
    8000249c:	03513c23          	sd	s5,56(sp)
    800024a0:	03613823          	sd	s6,48(sp)
    800024a4:	03713423          	sd	s7,40(sp)
    800024a8:	03813023          	sd	s8,32(sp)
    800024ac:	06113423          	sd	ra,104(sp)
    800024b0:	01913c23          	sd	s9,24(sp)
    800024b4:	07010413          	addi	s0,sp,112
    800024b8:	00060b93          	mv	s7,a2
    800024bc:	00050913          	mv	s2,a0
    800024c0:	00058c13          	mv	s8,a1
    800024c4:	00060b1b          	sext.w	s6,a2
    800024c8:	00003497          	auipc	s1,0x3
    800024cc:	3c048493          	addi	s1,s1,960 # 80005888 <cons>
    800024d0:	00400993          	li	s3,4
    800024d4:	fff00a13          	li	s4,-1
    800024d8:	00a00a93          	li	s5,10
    800024dc:	05705e63          	blez	s7,80002538 <consoleread+0xb4>
    800024e0:	09c4a703          	lw	a4,156(s1)
    800024e4:	0984a783          	lw	a5,152(s1)
    800024e8:	0007071b          	sext.w	a4,a4
    800024ec:	08e78463          	beq	a5,a4,80002574 <consoleread+0xf0>
    800024f0:	07f7f713          	andi	a4,a5,127
    800024f4:	00e48733          	add	a4,s1,a4
    800024f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800024fc:	0017869b          	addiw	a3,a5,1
    80002500:	08d4ac23          	sw	a3,152(s1)
    80002504:	00070c9b          	sext.w	s9,a4
    80002508:	0b370663          	beq	a4,s3,800025b4 <consoleread+0x130>
    8000250c:	00100693          	li	a3,1
    80002510:	f9f40613          	addi	a2,s0,-97
    80002514:	000c0593          	mv	a1,s8
    80002518:	00090513          	mv	a0,s2
    8000251c:	f8e40fa3          	sb	a4,-97(s0)
    80002520:	00000097          	auipc	ra,0x0
    80002524:	8b4080e7          	jalr	-1868(ra) # 80001dd4 <either_copyout>
    80002528:	01450863          	beq	a0,s4,80002538 <consoleread+0xb4>
    8000252c:	001c0c13          	addi	s8,s8,1
    80002530:	fffb8b9b          	addiw	s7,s7,-1
    80002534:	fb5c94e3          	bne	s9,s5,800024dc <consoleread+0x58>
    80002538:	000b851b          	sext.w	a0,s7
    8000253c:	06813083          	ld	ra,104(sp)
    80002540:	06013403          	ld	s0,96(sp)
    80002544:	05813483          	ld	s1,88(sp)
    80002548:	05013903          	ld	s2,80(sp)
    8000254c:	04813983          	ld	s3,72(sp)
    80002550:	04013a03          	ld	s4,64(sp)
    80002554:	03813a83          	ld	s5,56(sp)
    80002558:	02813b83          	ld	s7,40(sp)
    8000255c:	02013c03          	ld	s8,32(sp)
    80002560:	01813c83          	ld	s9,24(sp)
    80002564:	40ab053b          	subw	a0,s6,a0
    80002568:	03013b03          	ld	s6,48(sp)
    8000256c:	07010113          	addi	sp,sp,112
    80002570:	00008067          	ret
    80002574:	00001097          	auipc	ra,0x1
    80002578:	1d8080e7          	jalr	472(ra) # 8000374c <push_on>
    8000257c:	0984a703          	lw	a4,152(s1)
    80002580:	09c4a783          	lw	a5,156(s1)
    80002584:	0007879b          	sext.w	a5,a5
    80002588:	fef70ce3          	beq	a4,a5,80002580 <consoleread+0xfc>
    8000258c:	00001097          	auipc	ra,0x1
    80002590:	234080e7          	jalr	564(ra) # 800037c0 <pop_on>
    80002594:	0984a783          	lw	a5,152(s1)
    80002598:	07f7f713          	andi	a4,a5,127
    8000259c:	00e48733          	add	a4,s1,a4
    800025a0:	01874703          	lbu	a4,24(a4)
    800025a4:	0017869b          	addiw	a3,a5,1
    800025a8:	08d4ac23          	sw	a3,152(s1)
    800025ac:	00070c9b          	sext.w	s9,a4
    800025b0:	f5371ee3          	bne	a4,s3,8000250c <consoleread+0x88>
    800025b4:	000b851b          	sext.w	a0,s7
    800025b8:	f96bf2e3          	bgeu	s7,s6,8000253c <consoleread+0xb8>
    800025bc:	08f4ac23          	sw	a5,152(s1)
    800025c0:	f7dff06f          	j	8000253c <consoleread+0xb8>

00000000800025c4 <consputc>:
    800025c4:	10000793          	li	a5,256
    800025c8:	00f50663          	beq	a0,a5,800025d4 <consputc+0x10>
    800025cc:	00001317          	auipc	t1,0x1
    800025d0:	9f430067          	jr	-1548(t1) # 80002fc0 <uartputc_sync>
    800025d4:	ff010113          	addi	sp,sp,-16
    800025d8:	00113423          	sd	ra,8(sp)
    800025dc:	00813023          	sd	s0,0(sp)
    800025e0:	01010413          	addi	s0,sp,16
    800025e4:	00800513          	li	a0,8
    800025e8:	00001097          	auipc	ra,0x1
    800025ec:	9d8080e7          	jalr	-1576(ra) # 80002fc0 <uartputc_sync>
    800025f0:	02000513          	li	a0,32
    800025f4:	00001097          	auipc	ra,0x1
    800025f8:	9cc080e7          	jalr	-1588(ra) # 80002fc0 <uartputc_sync>
    800025fc:	00013403          	ld	s0,0(sp)
    80002600:	00813083          	ld	ra,8(sp)
    80002604:	00800513          	li	a0,8
    80002608:	01010113          	addi	sp,sp,16
    8000260c:	00001317          	auipc	t1,0x1
    80002610:	9b430067          	jr	-1612(t1) # 80002fc0 <uartputc_sync>

0000000080002614 <consoleintr>:
    80002614:	fe010113          	addi	sp,sp,-32
    80002618:	00813823          	sd	s0,16(sp)
    8000261c:	00913423          	sd	s1,8(sp)
    80002620:	01213023          	sd	s2,0(sp)
    80002624:	00113c23          	sd	ra,24(sp)
    80002628:	02010413          	addi	s0,sp,32
    8000262c:	00003917          	auipc	s2,0x3
    80002630:	25c90913          	addi	s2,s2,604 # 80005888 <cons>
    80002634:	00050493          	mv	s1,a0
    80002638:	00090513          	mv	a0,s2
    8000263c:	00001097          	auipc	ra,0x1
    80002640:	e40080e7          	jalr	-448(ra) # 8000347c <acquire>
    80002644:	02048c63          	beqz	s1,8000267c <consoleintr+0x68>
    80002648:	0a092783          	lw	a5,160(s2)
    8000264c:	09892703          	lw	a4,152(s2)
    80002650:	07f00693          	li	a3,127
    80002654:	40e7873b          	subw	a4,a5,a4
    80002658:	02e6e263          	bltu	a3,a4,8000267c <consoleintr+0x68>
    8000265c:	00d00713          	li	a4,13
    80002660:	04e48063          	beq	s1,a4,800026a0 <consoleintr+0x8c>
    80002664:	07f7f713          	andi	a4,a5,127
    80002668:	00e90733          	add	a4,s2,a4
    8000266c:	0017879b          	addiw	a5,a5,1
    80002670:	0af92023          	sw	a5,160(s2)
    80002674:	00970c23          	sb	s1,24(a4)
    80002678:	08f92e23          	sw	a5,156(s2)
    8000267c:	01013403          	ld	s0,16(sp)
    80002680:	01813083          	ld	ra,24(sp)
    80002684:	00813483          	ld	s1,8(sp)
    80002688:	00013903          	ld	s2,0(sp)
    8000268c:	00003517          	auipc	a0,0x3
    80002690:	1fc50513          	addi	a0,a0,508 # 80005888 <cons>
    80002694:	02010113          	addi	sp,sp,32
    80002698:	00001317          	auipc	t1,0x1
    8000269c:	eb030067          	jr	-336(t1) # 80003548 <release>
    800026a0:	00a00493          	li	s1,10
    800026a4:	fc1ff06f          	j	80002664 <consoleintr+0x50>

00000000800026a8 <consoleinit>:
    800026a8:	fe010113          	addi	sp,sp,-32
    800026ac:	00113c23          	sd	ra,24(sp)
    800026b0:	00813823          	sd	s0,16(sp)
    800026b4:	00913423          	sd	s1,8(sp)
    800026b8:	02010413          	addi	s0,sp,32
    800026bc:	00003497          	auipc	s1,0x3
    800026c0:	1cc48493          	addi	s1,s1,460 # 80005888 <cons>
    800026c4:	00048513          	mv	a0,s1
    800026c8:	00002597          	auipc	a1,0x2
    800026cc:	ac058593          	addi	a1,a1,-1344 # 80004188 <bntOne+0x130>
    800026d0:	00001097          	auipc	ra,0x1
    800026d4:	d88080e7          	jalr	-632(ra) # 80003458 <initlock>
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	7ac080e7          	jalr	1964(ra) # 80002e84 <uartinit>
    800026e0:	01813083          	ld	ra,24(sp)
    800026e4:	01013403          	ld	s0,16(sp)
    800026e8:	00000797          	auipc	a5,0x0
    800026ec:	d9c78793          	addi	a5,a5,-612 # 80002484 <consoleread>
    800026f0:	0af4bc23          	sd	a5,184(s1)
    800026f4:	00000797          	auipc	a5,0x0
    800026f8:	cec78793          	addi	a5,a5,-788 # 800023e0 <consolewrite>
    800026fc:	0cf4b023          	sd	a5,192(s1)
    80002700:	00813483          	ld	s1,8(sp)
    80002704:	02010113          	addi	sp,sp,32
    80002708:	00008067          	ret

000000008000270c <console_read>:
    8000270c:	ff010113          	addi	sp,sp,-16
    80002710:	00813423          	sd	s0,8(sp)
    80002714:	01010413          	addi	s0,sp,16
    80002718:	00813403          	ld	s0,8(sp)
    8000271c:	00003317          	auipc	t1,0x3
    80002720:	22433303          	ld	t1,548(t1) # 80005940 <devsw+0x10>
    80002724:	01010113          	addi	sp,sp,16
    80002728:	00030067          	jr	t1

000000008000272c <console_write>:
    8000272c:	ff010113          	addi	sp,sp,-16
    80002730:	00813423          	sd	s0,8(sp)
    80002734:	01010413          	addi	s0,sp,16
    80002738:	00813403          	ld	s0,8(sp)
    8000273c:	00003317          	auipc	t1,0x3
    80002740:	20c33303          	ld	t1,524(t1) # 80005948 <devsw+0x18>
    80002744:	01010113          	addi	sp,sp,16
    80002748:	00030067          	jr	t1

000000008000274c <panic>:
    8000274c:	fe010113          	addi	sp,sp,-32
    80002750:	00113c23          	sd	ra,24(sp)
    80002754:	00813823          	sd	s0,16(sp)
    80002758:	00913423          	sd	s1,8(sp)
    8000275c:	02010413          	addi	s0,sp,32
    80002760:	00050493          	mv	s1,a0
    80002764:	00002517          	auipc	a0,0x2
    80002768:	a2c50513          	addi	a0,a0,-1492 # 80004190 <bntOne+0x138>
    8000276c:	00003797          	auipc	a5,0x3
    80002770:	2607ae23          	sw	zero,636(a5) # 800059e8 <pr+0x18>
    80002774:	00000097          	auipc	ra,0x0
    80002778:	034080e7          	jalr	52(ra) # 800027a8 <__printf>
    8000277c:	00048513          	mv	a0,s1
    80002780:	00000097          	auipc	ra,0x0
    80002784:	028080e7          	jalr	40(ra) # 800027a8 <__printf>
    80002788:	00002517          	auipc	a0,0x2
    8000278c:	9e850513          	addi	a0,a0,-1560 # 80004170 <bntOne+0x118>
    80002790:	00000097          	auipc	ra,0x0
    80002794:	018080e7          	jalr	24(ra) # 800027a8 <__printf>
    80002798:	00100793          	li	a5,1
    8000279c:	00002717          	auipc	a4,0x2
    800027a0:	fcf72623          	sw	a5,-52(a4) # 80004768 <panicked>
    800027a4:	0000006f          	j	800027a4 <panic+0x58>

00000000800027a8 <__printf>:
    800027a8:	f3010113          	addi	sp,sp,-208
    800027ac:	08813023          	sd	s0,128(sp)
    800027b0:	07313423          	sd	s3,104(sp)
    800027b4:	09010413          	addi	s0,sp,144
    800027b8:	05813023          	sd	s8,64(sp)
    800027bc:	08113423          	sd	ra,136(sp)
    800027c0:	06913c23          	sd	s1,120(sp)
    800027c4:	07213823          	sd	s2,112(sp)
    800027c8:	07413023          	sd	s4,96(sp)
    800027cc:	05513c23          	sd	s5,88(sp)
    800027d0:	05613823          	sd	s6,80(sp)
    800027d4:	05713423          	sd	s7,72(sp)
    800027d8:	03913c23          	sd	s9,56(sp)
    800027dc:	03a13823          	sd	s10,48(sp)
    800027e0:	03b13423          	sd	s11,40(sp)
    800027e4:	00003317          	auipc	t1,0x3
    800027e8:	1ec30313          	addi	t1,t1,492 # 800059d0 <pr>
    800027ec:	01832c03          	lw	s8,24(t1)
    800027f0:	00b43423          	sd	a1,8(s0)
    800027f4:	00c43823          	sd	a2,16(s0)
    800027f8:	00d43c23          	sd	a3,24(s0)
    800027fc:	02e43023          	sd	a4,32(s0)
    80002800:	02f43423          	sd	a5,40(s0)
    80002804:	03043823          	sd	a6,48(s0)
    80002808:	03143c23          	sd	a7,56(s0)
    8000280c:	00050993          	mv	s3,a0
    80002810:	4a0c1663          	bnez	s8,80002cbc <__printf+0x514>
    80002814:	60098c63          	beqz	s3,80002e2c <__printf+0x684>
    80002818:	0009c503          	lbu	a0,0(s3)
    8000281c:	00840793          	addi	a5,s0,8
    80002820:	f6f43c23          	sd	a5,-136(s0)
    80002824:	00000493          	li	s1,0
    80002828:	22050063          	beqz	a0,80002a48 <__printf+0x2a0>
    8000282c:	00002a37          	lui	s4,0x2
    80002830:	00018ab7          	lui	s5,0x18
    80002834:	000f4b37          	lui	s6,0xf4
    80002838:	00989bb7          	lui	s7,0x989
    8000283c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002840:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002844:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002848:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000284c:	00148c9b          	addiw	s9,s1,1
    80002850:	02500793          	li	a5,37
    80002854:	01998933          	add	s2,s3,s9
    80002858:	38f51263          	bne	a0,a5,80002bdc <__printf+0x434>
    8000285c:	00094783          	lbu	a5,0(s2)
    80002860:	00078c9b          	sext.w	s9,a5
    80002864:	1e078263          	beqz	a5,80002a48 <__printf+0x2a0>
    80002868:	0024849b          	addiw	s1,s1,2
    8000286c:	07000713          	li	a4,112
    80002870:	00998933          	add	s2,s3,s1
    80002874:	38e78a63          	beq	a5,a4,80002c08 <__printf+0x460>
    80002878:	20f76863          	bltu	a4,a5,80002a88 <__printf+0x2e0>
    8000287c:	42a78863          	beq	a5,a0,80002cac <__printf+0x504>
    80002880:	06400713          	li	a4,100
    80002884:	40e79663          	bne	a5,a4,80002c90 <__printf+0x4e8>
    80002888:	f7843783          	ld	a5,-136(s0)
    8000288c:	0007a603          	lw	a2,0(a5)
    80002890:	00878793          	addi	a5,a5,8
    80002894:	f6f43c23          	sd	a5,-136(s0)
    80002898:	42064a63          	bltz	a2,80002ccc <__printf+0x524>
    8000289c:	00a00713          	li	a4,10
    800028a0:	02e677bb          	remuw	a5,a2,a4
    800028a4:	00002d97          	auipc	s11,0x2
    800028a8:	914d8d93          	addi	s11,s11,-1772 # 800041b8 <digits>
    800028ac:	00900593          	li	a1,9
    800028b0:	0006051b          	sext.w	a0,a2
    800028b4:	00000c93          	li	s9,0
    800028b8:	02079793          	slli	a5,a5,0x20
    800028bc:	0207d793          	srli	a5,a5,0x20
    800028c0:	00fd87b3          	add	a5,s11,a5
    800028c4:	0007c783          	lbu	a5,0(a5)
    800028c8:	02e656bb          	divuw	a3,a2,a4
    800028cc:	f8f40023          	sb	a5,-128(s0)
    800028d0:	14c5d863          	bge	a1,a2,80002a20 <__printf+0x278>
    800028d4:	06300593          	li	a1,99
    800028d8:	00100c93          	li	s9,1
    800028dc:	02e6f7bb          	remuw	a5,a3,a4
    800028e0:	02079793          	slli	a5,a5,0x20
    800028e4:	0207d793          	srli	a5,a5,0x20
    800028e8:	00fd87b3          	add	a5,s11,a5
    800028ec:	0007c783          	lbu	a5,0(a5)
    800028f0:	02e6d73b          	divuw	a4,a3,a4
    800028f4:	f8f400a3          	sb	a5,-127(s0)
    800028f8:	12a5f463          	bgeu	a1,a0,80002a20 <__printf+0x278>
    800028fc:	00a00693          	li	a3,10
    80002900:	00900593          	li	a1,9
    80002904:	02d777bb          	remuw	a5,a4,a3
    80002908:	02079793          	slli	a5,a5,0x20
    8000290c:	0207d793          	srli	a5,a5,0x20
    80002910:	00fd87b3          	add	a5,s11,a5
    80002914:	0007c503          	lbu	a0,0(a5)
    80002918:	02d757bb          	divuw	a5,a4,a3
    8000291c:	f8a40123          	sb	a0,-126(s0)
    80002920:	48e5f263          	bgeu	a1,a4,80002da4 <__printf+0x5fc>
    80002924:	06300513          	li	a0,99
    80002928:	02d7f5bb          	remuw	a1,a5,a3
    8000292c:	02059593          	slli	a1,a1,0x20
    80002930:	0205d593          	srli	a1,a1,0x20
    80002934:	00bd85b3          	add	a1,s11,a1
    80002938:	0005c583          	lbu	a1,0(a1)
    8000293c:	02d7d7bb          	divuw	a5,a5,a3
    80002940:	f8b401a3          	sb	a1,-125(s0)
    80002944:	48e57263          	bgeu	a0,a4,80002dc8 <__printf+0x620>
    80002948:	3e700513          	li	a0,999
    8000294c:	02d7f5bb          	remuw	a1,a5,a3
    80002950:	02059593          	slli	a1,a1,0x20
    80002954:	0205d593          	srli	a1,a1,0x20
    80002958:	00bd85b3          	add	a1,s11,a1
    8000295c:	0005c583          	lbu	a1,0(a1)
    80002960:	02d7d7bb          	divuw	a5,a5,a3
    80002964:	f8b40223          	sb	a1,-124(s0)
    80002968:	46e57663          	bgeu	a0,a4,80002dd4 <__printf+0x62c>
    8000296c:	02d7f5bb          	remuw	a1,a5,a3
    80002970:	02059593          	slli	a1,a1,0x20
    80002974:	0205d593          	srli	a1,a1,0x20
    80002978:	00bd85b3          	add	a1,s11,a1
    8000297c:	0005c583          	lbu	a1,0(a1)
    80002980:	02d7d7bb          	divuw	a5,a5,a3
    80002984:	f8b402a3          	sb	a1,-123(s0)
    80002988:	46ea7863          	bgeu	s4,a4,80002df8 <__printf+0x650>
    8000298c:	02d7f5bb          	remuw	a1,a5,a3
    80002990:	02059593          	slli	a1,a1,0x20
    80002994:	0205d593          	srli	a1,a1,0x20
    80002998:	00bd85b3          	add	a1,s11,a1
    8000299c:	0005c583          	lbu	a1,0(a1)
    800029a0:	02d7d7bb          	divuw	a5,a5,a3
    800029a4:	f8b40323          	sb	a1,-122(s0)
    800029a8:	3eeaf863          	bgeu	s5,a4,80002d98 <__printf+0x5f0>
    800029ac:	02d7f5bb          	remuw	a1,a5,a3
    800029b0:	02059593          	slli	a1,a1,0x20
    800029b4:	0205d593          	srli	a1,a1,0x20
    800029b8:	00bd85b3          	add	a1,s11,a1
    800029bc:	0005c583          	lbu	a1,0(a1)
    800029c0:	02d7d7bb          	divuw	a5,a5,a3
    800029c4:	f8b403a3          	sb	a1,-121(s0)
    800029c8:	42eb7e63          	bgeu	s6,a4,80002e04 <__printf+0x65c>
    800029cc:	02d7f5bb          	remuw	a1,a5,a3
    800029d0:	02059593          	slli	a1,a1,0x20
    800029d4:	0205d593          	srli	a1,a1,0x20
    800029d8:	00bd85b3          	add	a1,s11,a1
    800029dc:	0005c583          	lbu	a1,0(a1)
    800029e0:	02d7d7bb          	divuw	a5,a5,a3
    800029e4:	f8b40423          	sb	a1,-120(s0)
    800029e8:	42ebfc63          	bgeu	s7,a4,80002e20 <__printf+0x678>
    800029ec:	02079793          	slli	a5,a5,0x20
    800029f0:	0207d793          	srli	a5,a5,0x20
    800029f4:	00fd8db3          	add	s11,s11,a5
    800029f8:	000dc703          	lbu	a4,0(s11)
    800029fc:	00a00793          	li	a5,10
    80002a00:	00900c93          	li	s9,9
    80002a04:	f8e404a3          	sb	a4,-119(s0)
    80002a08:	00065c63          	bgez	a2,80002a20 <__printf+0x278>
    80002a0c:	f9040713          	addi	a4,s0,-112
    80002a10:	00f70733          	add	a4,a4,a5
    80002a14:	02d00693          	li	a3,45
    80002a18:	fed70823          	sb	a3,-16(a4)
    80002a1c:	00078c93          	mv	s9,a5
    80002a20:	f8040793          	addi	a5,s0,-128
    80002a24:	01978cb3          	add	s9,a5,s9
    80002a28:	f7f40d13          	addi	s10,s0,-129
    80002a2c:	000cc503          	lbu	a0,0(s9)
    80002a30:	fffc8c93          	addi	s9,s9,-1
    80002a34:	00000097          	auipc	ra,0x0
    80002a38:	b90080e7          	jalr	-1136(ra) # 800025c4 <consputc>
    80002a3c:	ffac98e3          	bne	s9,s10,80002a2c <__printf+0x284>
    80002a40:	00094503          	lbu	a0,0(s2)
    80002a44:	e00514e3          	bnez	a0,8000284c <__printf+0xa4>
    80002a48:	1a0c1663          	bnez	s8,80002bf4 <__printf+0x44c>
    80002a4c:	08813083          	ld	ra,136(sp)
    80002a50:	08013403          	ld	s0,128(sp)
    80002a54:	07813483          	ld	s1,120(sp)
    80002a58:	07013903          	ld	s2,112(sp)
    80002a5c:	06813983          	ld	s3,104(sp)
    80002a60:	06013a03          	ld	s4,96(sp)
    80002a64:	05813a83          	ld	s5,88(sp)
    80002a68:	05013b03          	ld	s6,80(sp)
    80002a6c:	04813b83          	ld	s7,72(sp)
    80002a70:	04013c03          	ld	s8,64(sp)
    80002a74:	03813c83          	ld	s9,56(sp)
    80002a78:	03013d03          	ld	s10,48(sp)
    80002a7c:	02813d83          	ld	s11,40(sp)
    80002a80:	0d010113          	addi	sp,sp,208
    80002a84:	00008067          	ret
    80002a88:	07300713          	li	a4,115
    80002a8c:	1ce78a63          	beq	a5,a4,80002c60 <__printf+0x4b8>
    80002a90:	07800713          	li	a4,120
    80002a94:	1ee79e63          	bne	a5,a4,80002c90 <__printf+0x4e8>
    80002a98:	f7843783          	ld	a5,-136(s0)
    80002a9c:	0007a703          	lw	a4,0(a5)
    80002aa0:	00878793          	addi	a5,a5,8
    80002aa4:	f6f43c23          	sd	a5,-136(s0)
    80002aa8:	28074263          	bltz	a4,80002d2c <__printf+0x584>
    80002aac:	00001d97          	auipc	s11,0x1
    80002ab0:	70cd8d93          	addi	s11,s11,1804 # 800041b8 <digits>
    80002ab4:	00f77793          	andi	a5,a4,15
    80002ab8:	00fd87b3          	add	a5,s11,a5
    80002abc:	0007c683          	lbu	a3,0(a5)
    80002ac0:	00f00613          	li	a2,15
    80002ac4:	0007079b          	sext.w	a5,a4
    80002ac8:	f8d40023          	sb	a3,-128(s0)
    80002acc:	0047559b          	srliw	a1,a4,0x4
    80002ad0:	0047569b          	srliw	a3,a4,0x4
    80002ad4:	00000c93          	li	s9,0
    80002ad8:	0ee65063          	bge	a2,a4,80002bb8 <__printf+0x410>
    80002adc:	00f6f693          	andi	a3,a3,15
    80002ae0:	00dd86b3          	add	a3,s11,a3
    80002ae4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002ae8:	0087d79b          	srliw	a5,a5,0x8
    80002aec:	00100c93          	li	s9,1
    80002af0:	f8d400a3          	sb	a3,-127(s0)
    80002af4:	0cb67263          	bgeu	a2,a1,80002bb8 <__printf+0x410>
    80002af8:	00f7f693          	andi	a3,a5,15
    80002afc:	00dd86b3          	add	a3,s11,a3
    80002b00:	0006c583          	lbu	a1,0(a3)
    80002b04:	00f00613          	li	a2,15
    80002b08:	0047d69b          	srliw	a3,a5,0x4
    80002b0c:	f8b40123          	sb	a1,-126(s0)
    80002b10:	0047d593          	srli	a1,a5,0x4
    80002b14:	28f67e63          	bgeu	a2,a5,80002db0 <__printf+0x608>
    80002b18:	00f6f693          	andi	a3,a3,15
    80002b1c:	00dd86b3          	add	a3,s11,a3
    80002b20:	0006c503          	lbu	a0,0(a3)
    80002b24:	0087d813          	srli	a6,a5,0x8
    80002b28:	0087d69b          	srliw	a3,a5,0x8
    80002b2c:	f8a401a3          	sb	a0,-125(s0)
    80002b30:	28b67663          	bgeu	a2,a1,80002dbc <__printf+0x614>
    80002b34:	00f6f693          	andi	a3,a3,15
    80002b38:	00dd86b3          	add	a3,s11,a3
    80002b3c:	0006c583          	lbu	a1,0(a3)
    80002b40:	00c7d513          	srli	a0,a5,0xc
    80002b44:	00c7d69b          	srliw	a3,a5,0xc
    80002b48:	f8b40223          	sb	a1,-124(s0)
    80002b4c:	29067a63          	bgeu	a2,a6,80002de0 <__printf+0x638>
    80002b50:	00f6f693          	andi	a3,a3,15
    80002b54:	00dd86b3          	add	a3,s11,a3
    80002b58:	0006c583          	lbu	a1,0(a3)
    80002b5c:	0107d813          	srli	a6,a5,0x10
    80002b60:	0107d69b          	srliw	a3,a5,0x10
    80002b64:	f8b402a3          	sb	a1,-123(s0)
    80002b68:	28a67263          	bgeu	a2,a0,80002dec <__printf+0x644>
    80002b6c:	00f6f693          	andi	a3,a3,15
    80002b70:	00dd86b3          	add	a3,s11,a3
    80002b74:	0006c683          	lbu	a3,0(a3)
    80002b78:	0147d79b          	srliw	a5,a5,0x14
    80002b7c:	f8d40323          	sb	a3,-122(s0)
    80002b80:	21067663          	bgeu	a2,a6,80002d8c <__printf+0x5e4>
    80002b84:	02079793          	slli	a5,a5,0x20
    80002b88:	0207d793          	srli	a5,a5,0x20
    80002b8c:	00fd8db3          	add	s11,s11,a5
    80002b90:	000dc683          	lbu	a3,0(s11)
    80002b94:	00800793          	li	a5,8
    80002b98:	00700c93          	li	s9,7
    80002b9c:	f8d403a3          	sb	a3,-121(s0)
    80002ba0:	00075c63          	bgez	a4,80002bb8 <__printf+0x410>
    80002ba4:	f9040713          	addi	a4,s0,-112
    80002ba8:	00f70733          	add	a4,a4,a5
    80002bac:	02d00693          	li	a3,45
    80002bb0:	fed70823          	sb	a3,-16(a4)
    80002bb4:	00078c93          	mv	s9,a5
    80002bb8:	f8040793          	addi	a5,s0,-128
    80002bbc:	01978cb3          	add	s9,a5,s9
    80002bc0:	f7f40d13          	addi	s10,s0,-129
    80002bc4:	000cc503          	lbu	a0,0(s9)
    80002bc8:	fffc8c93          	addi	s9,s9,-1
    80002bcc:	00000097          	auipc	ra,0x0
    80002bd0:	9f8080e7          	jalr	-1544(ra) # 800025c4 <consputc>
    80002bd4:	ff9d18e3          	bne	s10,s9,80002bc4 <__printf+0x41c>
    80002bd8:	0100006f          	j	80002be8 <__printf+0x440>
    80002bdc:	00000097          	auipc	ra,0x0
    80002be0:	9e8080e7          	jalr	-1560(ra) # 800025c4 <consputc>
    80002be4:	000c8493          	mv	s1,s9
    80002be8:	00094503          	lbu	a0,0(s2)
    80002bec:	c60510e3          	bnez	a0,8000284c <__printf+0xa4>
    80002bf0:	e40c0ee3          	beqz	s8,80002a4c <__printf+0x2a4>
    80002bf4:	00003517          	auipc	a0,0x3
    80002bf8:	ddc50513          	addi	a0,a0,-548 # 800059d0 <pr>
    80002bfc:	00001097          	auipc	ra,0x1
    80002c00:	94c080e7          	jalr	-1716(ra) # 80003548 <release>
    80002c04:	e49ff06f          	j	80002a4c <__printf+0x2a4>
    80002c08:	f7843783          	ld	a5,-136(s0)
    80002c0c:	03000513          	li	a0,48
    80002c10:	01000d13          	li	s10,16
    80002c14:	00878713          	addi	a4,a5,8
    80002c18:	0007bc83          	ld	s9,0(a5)
    80002c1c:	f6e43c23          	sd	a4,-136(s0)
    80002c20:	00000097          	auipc	ra,0x0
    80002c24:	9a4080e7          	jalr	-1628(ra) # 800025c4 <consputc>
    80002c28:	07800513          	li	a0,120
    80002c2c:	00000097          	auipc	ra,0x0
    80002c30:	998080e7          	jalr	-1640(ra) # 800025c4 <consputc>
    80002c34:	00001d97          	auipc	s11,0x1
    80002c38:	584d8d93          	addi	s11,s11,1412 # 800041b8 <digits>
    80002c3c:	03ccd793          	srli	a5,s9,0x3c
    80002c40:	00fd87b3          	add	a5,s11,a5
    80002c44:	0007c503          	lbu	a0,0(a5)
    80002c48:	fffd0d1b          	addiw	s10,s10,-1
    80002c4c:	004c9c93          	slli	s9,s9,0x4
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	974080e7          	jalr	-1676(ra) # 800025c4 <consputc>
    80002c58:	fe0d12e3          	bnez	s10,80002c3c <__printf+0x494>
    80002c5c:	f8dff06f          	j	80002be8 <__printf+0x440>
    80002c60:	f7843783          	ld	a5,-136(s0)
    80002c64:	0007bc83          	ld	s9,0(a5)
    80002c68:	00878793          	addi	a5,a5,8
    80002c6c:	f6f43c23          	sd	a5,-136(s0)
    80002c70:	000c9a63          	bnez	s9,80002c84 <__printf+0x4dc>
    80002c74:	1080006f          	j	80002d7c <__printf+0x5d4>
    80002c78:	001c8c93          	addi	s9,s9,1
    80002c7c:	00000097          	auipc	ra,0x0
    80002c80:	948080e7          	jalr	-1720(ra) # 800025c4 <consputc>
    80002c84:	000cc503          	lbu	a0,0(s9)
    80002c88:	fe0518e3          	bnez	a0,80002c78 <__printf+0x4d0>
    80002c8c:	f5dff06f          	j	80002be8 <__printf+0x440>
    80002c90:	02500513          	li	a0,37
    80002c94:	00000097          	auipc	ra,0x0
    80002c98:	930080e7          	jalr	-1744(ra) # 800025c4 <consputc>
    80002c9c:	000c8513          	mv	a0,s9
    80002ca0:	00000097          	auipc	ra,0x0
    80002ca4:	924080e7          	jalr	-1756(ra) # 800025c4 <consputc>
    80002ca8:	f41ff06f          	j	80002be8 <__printf+0x440>
    80002cac:	02500513          	li	a0,37
    80002cb0:	00000097          	auipc	ra,0x0
    80002cb4:	914080e7          	jalr	-1772(ra) # 800025c4 <consputc>
    80002cb8:	f31ff06f          	j	80002be8 <__printf+0x440>
    80002cbc:	00030513          	mv	a0,t1
    80002cc0:	00000097          	auipc	ra,0x0
    80002cc4:	7bc080e7          	jalr	1980(ra) # 8000347c <acquire>
    80002cc8:	b4dff06f          	j	80002814 <__printf+0x6c>
    80002ccc:	40c0053b          	negw	a0,a2
    80002cd0:	00a00713          	li	a4,10
    80002cd4:	02e576bb          	remuw	a3,a0,a4
    80002cd8:	00001d97          	auipc	s11,0x1
    80002cdc:	4e0d8d93          	addi	s11,s11,1248 # 800041b8 <digits>
    80002ce0:	ff700593          	li	a1,-9
    80002ce4:	02069693          	slli	a3,a3,0x20
    80002ce8:	0206d693          	srli	a3,a3,0x20
    80002cec:	00dd86b3          	add	a3,s11,a3
    80002cf0:	0006c683          	lbu	a3,0(a3)
    80002cf4:	02e557bb          	divuw	a5,a0,a4
    80002cf8:	f8d40023          	sb	a3,-128(s0)
    80002cfc:	10b65e63          	bge	a2,a1,80002e18 <__printf+0x670>
    80002d00:	06300593          	li	a1,99
    80002d04:	02e7f6bb          	remuw	a3,a5,a4
    80002d08:	02069693          	slli	a3,a3,0x20
    80002d0c:	0206d693          	srli	a3,a3,0x20
    80002d10:	00dd86b3          	add	a3,s11,a3
    80002d14:	0006c683          	lbu	a3,0(a3)
    80002d18:	02e7d73b          	divuw	a4,a5,a4
    80002d1c:	00200793          	li	a5,2
    80002d20:	f8d400a3          	sb	a3,-127(s0)
    80002d24:	bca5ece3          	bltu	a1,a0,800028fc <__printf+0x154>
    80002d28:	ce5ff06f          	j	80002a0c <__printf+0x264>
    80002d2c:	40e007bb          	negw	a5,a4
    80002d30:	00001d97          	auipc	s11,0x1
    80002d34:	488d8d93          	addi	s11,s11,1160 # 800041b8 <digits>
    80002d38:	00f7f693          	andi	a3,a5,15
    80002d3c:	00dd86b3          	add	a3,s11,a3
    80002d40:	0006c583          	lbu	a1,0(a3)
    80002d44:	ff100613          	li	a2,-15
    80002d48:	0047d69b          	srliw	a3,a5,0x4
    80002d4c:	f8b40023          	sb	a1,-128(s0)
    80002d50:	0047d59b          	srliw	a1,a5,0x4
    80002d54:	0ac75e63          	bge	a4,a2,80002e10 <__printf+0x668>
    80002d58:	00f6f693          	andi	a3,a3,15
    80002d5c:	00dd86b3          	add	a3,s11,a3
    80002d60:	0006c603          	lbu	a2,0(a3)
    80002d64:	00f00693          	li	a3,15
    80002d68:	0087d79b          	srliw	a5,a5,0x8
    80002d6c:	f8c400a3          	sb	a2,-127(s0)
    80002d70:	d8b6e4e3          	bltu	a3,a1,80002af8 <__printf+0x350>
    80002d74:	00200793          	li	a5,2
    80002d78:	e2dff06f          	j	80002ba4 <__printf+0x3fc>
    80002d7c:	00001c97          	auipc	s9,0x1
    80002d80:	41cc8c93          	addi	s9,s9,1052 # 80004198 <bntOne+0x140>
    80002d84:	02800513          	li	a0,40
    80002d88:	ef1ff06f          	j	80002c78 <__printf+0x4d0>
    80002d8c:	00700793          	li	a5,7
    80002d90:	00600c93          	li	s9,6
    80002d94:	e0dff06f          	j	80002ba0 <__printf+0x3f8>
    80002d98:	00700793          	li	a5,7
    80002d9c:	00600c93          	li	s9,6
    80002da0:	c69ff06f          	j	80002a08 <__printf+0x260>
    80002da4:	00300793          	li	a5,3
    80002da8:	00200c93          	li	s9,2
    80002dac:	c5dff06f          	j	80002a08 <__printf+0x260>
    80002db0:	00300793          	li	a5,3
    80002db4:	00200c93          	li	s9,2
    80002db8:	de9ff06f          	j	80002ba0 <__printf+0x3f8>
    80002dbc:	00400793          	li	a5,4
    80002dc0:	00300c93          	li	s9,3
    80002dc4:	dddff06f          	j	80002ba0 <__printf+0x3f8>
    80002dc8:	00400793          	li	a5,4
    80002dcc:	00300c93          	li	s9,3
    80002dd0:	c39ff06f          	j	80002a08 <__printf+0x260>
    80002dd4:	00500793          	li	a5,5
    80002dd8:	00400c93          	li	s9,4
    80002ddc:	c2dff06f          	j	80002a08 <__printf+0x260>
    80002de0:	00500793          	li	a5,5
    80002de4:	00400c93          	li	s9,4
    80002de8:	db9ff06f          	j	80002ba0 <__printf+0x3f8>
    80002dec:	00600793          	li	a5,6
    80002df0:	00500c93          	li	s9,5
    80002df4:	dadff06f          	j	80002ba0 <__printf+0x3f8>
    80002df8:	00600793          	li	a5,6
    80002dfc:	00500c93          	li	s9,5
    80002e00:	c09ff06f          	j	80002a08 <__printf+0x260>
    80002e04:	00800793          	li	a5,8
    80002e08:	00700c93          	li	s9,7
    80002e0c:	bfdff06f          	j	80002a08 <__printf+0x260>
    80002e10:	00100793          	li	a5,1
    80002e14:	d91ff06f          	j	80002ba4 <__printf+0x3fc>
    80002e18:	00100793          	li	a5,1
    80002e1c:	bf1ff06f          	j	80002a0c <__printf+0x264>
    80002e20:	00900793          	li	a5,9
    80002e24:	00800c93          	li	s9,8
    80002e28:	be1ff06f          	j	80002a08 <__printf+0x260>
    80002e2c:	00001517          	auipc	a0,0x1
    80002e30:	37450513          	addi	a0,a0,884 # 800041a0 <bntOne+0x148>
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	918080e7          	jalr	-1768(ra) # 8000274c <panic>

0000000080002e3c <printfinit>:
    80002e3c:	fe010113          	addi	sp,sp,-32
    80002e40:	00813823          	sd	s0,16(sp)
    80002e44:	00913423          	sd	s1,8(sp)
    80002e48:	00113c23          	sd	ra,24(sp)
    80002e4c:	02010413          	addi	s0,sp,32
    80002e50:	00003497          	auipc	s1,0x3
    80002e54:	b8048493          	addi	s1,s1,-1152 # 800059d0 <pr>
    80002e58:	00048513          	mv	a0,s1
    80002e5c:	00001597          	auipc	a1,0x1
    80002e60:	35458593          	addi	a1,a1,852 # 800041b0 <bntOne+0x158>
    80002e64:	00000097          	auipc	ra,0x0
    80002e68:	5f4080e7          	jalr	1524(ra) # 80003458 <initlock>
    80002e6c:	01813083          	ld	ra,24(sp)
    80002e70:	01013403          	ld	s0,16(sp)
    80002e74:	0004ac23          	sw	zero,24(s1)
    80002e78:	00813483          	ld	s1,8(sp)
    80002e7c:	02010113          	addi	sp,sp,32
    80002e80:	00008067          	ret

0000000080002e84 <uartinit>:
    80002e84:	ff010113          	addi	sp,sp,-16
    80002e88:	00813423          	sd	s0,8(sp)
    80002e8c:	01010413          	addi	s0,sp,16
    80002e90:	100007b7          	lui	a5,0x10000
    80002e94:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002e98:	f8000713          	li	a4,-128
    80002e9c:	00e781a3          	sb	a4,3(a5)
    80002ea0:	00300713          	li	a4,3
    80002ea4:	00e78023          	sb	a4,0(a5)
    80002ea8:	000780a3          	sb	zero,1(a5)
    80002eac:	00e781a3          	sb	a4,3(a5)
    80002eb0:	00700693          	li	a3,7
    80002eb4:	00d78123          	sb	a3,2(a5)
    80002eb8:	00e780a3          	sb	a4,1(a5)
    80002ebc:	00813403          	ld	s0,8(sp)
    80002ec0:	01010113          	addi	sp,sp,16
    80002ec4:	00008067          	ret

0000000080002ec8 <uartputc>:
    80002ec8:	00002797          	auipc	a5,0x2
    80002ecc:	8a07a783          	lw	a5,-1888(a5) # 80004768 <panicked>
    80002ed0:	00078463          	beqz	a5,80002ed8 <uartputc+0x10>
    80002ed4:	0000006f          	j	80002ed4 <uartputc+0xc>
    80002ed8:	fd010113          	addi	sp,sp,-48
    80002edc:	02813023          	sd	s0,32(sp)
    80002ee0:	00913c23          	sd	s1,24(sp)
    80002ee4:	01213823          	sd	s2,16(sp)
    80002ee8:	01313423          	sd	s3,8(sp)
    80002eec:	02113423          	sd	ra,40(sp)
    80002ef0:	03010413          	addi	s0,sp,48
    80002ef4:	00002917          	auipc	s2,0x2
    80002ef8:	87c90913          	addi	s2,s2,-1924 # 80004770 <uart_tx_r>
    80002efc:	00093783          	ld	a5,0(s2)
    80002f00:	00002497          	auipc	s1,0x2
    80002f04:	87848493          	addi	s1,s1,-1928 # 80004778 <uart_tx_w>
    80002f08:	0004b703          	ld	a4,0(s1)
    80002f0c:	02078693          	addi	a3,a5,32
    80002f10:	00050993          	mv	s3,a0
    80002f14:	02e69c63          	bne	a3,a4,80002f4c <uartputc+0x84>
    80002f18:	00001097          	auipc	ra,0x1
    80002f1c:	834080e7          	jalr	-1996(ra) # 8000374c <push_on>
    80002f20:	00093783          	ld	a5,0(s2)
    80002f24:	0004b703          	ld	a4,0(s1)
    80002f28:	02078793          	addi	a5,a5,32
    80002f2c:	00e79463          	bne	a5,a4,80002f34 <uartputc+0x6c>
    80002f30:	0000006f          	j	80002f30 <uartputc+0x68>
    80002f34:	00001097          	auipc	ra,0x1
    80002f38:	88c080e7          	jalr	-1908(ra) # 800037c0 <pop_on>
    80002f3c:	00093783          	ld	a5,0(s2)
    80002f40:	0004b703          	ld	a4,0(s1)
    80002f44:	02078693          	addi	a3,a5,32
    80002f48:	fce688e3          	beq	a3,a4,80002f18 <uartputc+0x50>
    80002f4c:	01f77693          	andi	a3,a4,31
    80002f50:	00003597          	auipc	a1,0x3
    80002f54:	aa058593          	addi	a1,a1,-1376 # 800059f0 <uart_tx_buf>
    80002f58:	00d586b3          	add	a3,a1,a3
    80002f5c:	00170713          	addi	a4,a4,1
    80002f60:	01368023          	sb	s3,0(a3)
    80002f64:	00e4b023          	sd	a4,0(s1)
    80002f68:	10000637          	lui	a2,0x10000
    80002f6c:	02f71063          	bne	a4,a5,80002f8c <uartputc+0xc4>
    80002f70:	0340006f          	j	80002fa4 <uartputc+0xdc>
    80002f74:	00074703          	lbu	a4,0(a4)
    80002f78:	00f93023          	sd	a5,0(s2)
    80002f7c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002f80:	00093783          	ld	a5,0(s2)
    80002f84:	0004b703          	ld	a4,0(s1)
    80002f88:	00f70e63          	beq	a4,a5,80002fa4 <uartputc+0xdc>
    80002f8c:	00564683          	lbu	a3,5(a2)
    80002f90:	01f7f713          	andi	a4,a5,31
    80002f94:	00e58733          	add	a4,a1,a4
    80002f98:	0206f693          	andi	a3,a3,32
    80002f9c:	00178793          	addi	a5,a5,1
    80002fa0:	fc069ae3          	bnez	a3,80002f74 <uartputc+0xac>
    80002fa4:	02813083          	ld	ra,40(sp)
    80002fa8:	02013403          	ld	s0,32(sp)
    80002fac:	01813483          	ld	s1,24(sp)
    80002fb0:	01013903          	ld	s2,16(sp)
    80002fb4:	00813983          	ld	s3,8(sp)
    80002fb8:	03010113          	addi	sp,sp,48
    80002fbc:	00008067          	ret

0000000080002fc0 <uartputc_sync>:
    80002fc0:	ff010113          	addi	sp,sp,-16
    80002fc4:	00813423          	sd	s0,8(sp)
    80002fc8:	01010413          	addi	s0,sp,16
    80002fcc:	00001717          	auipc	a4,0x1
    80002fd0:	79c72703          	lw	a4,1948(a4) # 80004768 <panicked>
    80002fd4:	02071663          	bnez	a4,80003000 <uartputc_sync+0x40>
    80002fd8:	00050793          	mv	a5,a0
    80002fdc:	100006b7          	lui	a3,0x10000
    80002fe0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002fe4:	02077713          	andi	a4,a4,32
    80002fe8:	fe070ce3          	beqz	a4,80002fe0 <uartputc_sync+0x20>
    80002fec:	0ff7f793          	andi	a5,a5,255
    80002ff0:	00f68023          	sb	a5,0(a3)
    80002ff4:	00813403          	ld	s0,8(sp)
    80002ff8:	01010113          	addi	sp,sp,16
    80002ffc:	00008067          	ret
    80003000:	0000006f          	j	80003000 <uartputc_sync+0x40>

0000000080003004 <uartstart>:
    80003004:	ff010113          	addi	sp,sp,-16
    80003008:	00813423          	sd	s0,8(sp)
    8000300c:	01010413          	addi	s0,sp,16
    80003010:	00001617          	auipc	a2,0x1
    80003014:	76060613          	addi	a2,a2,1888 # 80004770 <uart_tx_r>
    80003018:	00001517          	auipc	a0,0x1
    8000301c:	76050513          	addi	a0,a0,1888 # 80004778 <uart_tx_w>
    80003020:	00063783          	ld	a5,0(a2)
    80003024:	00053703          	ld	a4,0(a0)
    80003028:	04f70263          	beq	a4,a5,8000306c <uartstart+0x68>
    8000302c:	100005b7          	lui	a1,0x10000
    80003030:	00003817          	auipc	a6,0x3
    80003034:	9c080813          	addi	a6,a6,-1600 # 800059f0 <uart_tx_buf>
    80003038:	01c0006f          	j	80003054 <uartstart+0x50>
    8000303c:	0006c703          	lbu	a4,0(a3)
    80003040:	00f63023          	sd	a5,0(a2)
    80003044:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003048:	00063783          	ld	a5,0(a2)
    8000304c:	00053703          	ld	a4,0(a0)
    80003050:	00f70e63          	beq	a4,a5,8000306c <uartstart+0x68>
    80003054:	01f7f713          	andi	a4,a5,31
    80003058:	00e806b3          	add	a3,a6,a4
    8000305c:	0055c703          	lbu	a4,5(a1)
    80003060:	00178793          	addi	a5,a5,1
    80003064:	02077713          	andi	a4,a4,32
    80003068:	fc071ae3          	bnez	a4,8000303c <uartstart+0x38>
    8000306c:	00813403          	ld	s0,8(sp)
    80003070:	01010113          	addi	sp,sp,16
    80003074:	00008067          	ret

0000000080003078 <uartgetc>:
    80003078:	ff010113          	addi	sp,sp,-16
    8000307c:	00813423          	sd	s0,8(sp)
    80003080:	01010413          	addi	s0,sp,16
    80003084:	10000737          	lui	a4,0x10000
    80003088:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000308c:	0017f793          	andi	a5,a5,1
    80003090:	00078c63          	beqz	a5,800030a8 <uartgetc+0x30>
    80003094:	00074503          	lbu	a0,0(a4)
    80003098:	0ff57513          	andi	a0,a0,255
    8000309c:	00813403          	ld	s0,8(sp)
    800030a0:	01010113          	addi	sp,sp,16
    800030a4:	00008067          	ret
    800030a8:	fff00513          	li	a0,-1
    800030ac:	ff1ff06f          	j	8000309c <uartgetc+0x24>

00000000800030b0 <uartintr>:
    800030b0:	100007b7          	lui	a5,0x10000
    800030b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800030b8:	0017f793          	andi	a5,a5,1
    800030bc:	0a078463          	beqz	a5,80003164 <uartintr+0xb4>
    800030c0:	fe010113          	addi	sp,sp,-32
    800030c4:	00813823          	sd	s0,16(sp)
    800030c8:	00913423          	sd	s1,8(sp)
    800030cc:	00113c23          	sd	ra,24(sp)
    800030d0:	02010413          	addi	s0,sp,32
    800030d4:	100004b7          	lui	s1,0x10000
    800030d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800030dc:	0ff57513          	andi	a0,a0,255
    800030e0:	fffff097          	auipc	ra,0xfffff
    800030e4:	534080e7          	jalr	1332(ra) # 80002614 <consoleintr>
    800030e8:	0054c783          	lbu	a5,5(s1)
    800030ec:	0017f793          	andi	a5,a5,1
    800030f0:	fe0794e3          	bnez	a5,800030d8 <uartintr+0x28>
    800030f4:	00001617          	auipc	a2,0x1
    800030f8:	67c60613          	addi	a2,a2,1660 # 80004770 <uart_tx_r>
    800030fc:	00001517          	auipc	a0,0x1
    80003100:	67c50513          	addi	a0,a0,1660 # 80004778 <uart_tx_w>
    80003104:	00063783          	ld	a5,0(a2)
    80003108:	00053703          	ld	a4,0(a0)
    8000310c:	04f70263          	beq	a4,a5,80003150 <uartintr+0xa0>
    80003110:	100005b7          	lui	a1,0x10000
    80003114:	00003817          	auipc	a6,0x3
    80003118:	8dc80813          	addi	a6,a6,-1828 # 800059f0 <uart_tx_buf>
    8000311c:	01c0006f          	j	80003138 <uartintr+0x88>
    80003120:	0006c703          	lbu	a4,0(a3)
    80003124:	00f63023          	sd	a5,0(a2)
    80003128:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000312c:	00063783          	ld	a5,0(a2)
    80003130:	00053703          	ld	a4,0(a0)
    80003134:	00f70e63          	beq	a4,a5,80003150 <uartintr+0xa0>
    80003138:	01f7f713          	andi	a4,a5,31
    8000313c:	00e806b3          	add	a3,a6,a4
    80003140:	0055c703          	lbu	a4,5(a1)
    80003144:	00178793          	addi	a5,a5,1
    80003148:	02077713          	andi	a4,a4,32
    8000314c:	fc071ae3          	bnez	a4,80003120 <uartintr+0x70>
    80003150:	01813083          	ld	ra,24(sp)
    80003154:	01013403          	ld	s0,16(sp)
    80003158:	00813483          	ld	s1,8(sp)
    8000315c:	02010113          	addi	sp,sp,32
    80003160:	00008067          	ret
    80003164:	00001617          	auipc	a2,0x1
    80003168:	60c60613          	addi	a2,a2,1548 # 80004770 <uart_tx_r>
    8000316c:	00001517          	auipc	a0,0x1
    80003170:	60c50513          	addi	a0,a0,1548 # 80004778 <uart_tx_w>
    80003174:	00063783          	ld	a5,0(a2)
    80003178:	00053703          	ld	a4,0(a0)
    8000317c:	04f70263          	beq	a4,a5,800031c0 <uartintr+0x110>
    80003180:	100005b7          	lui	a1,0x10000
    80003184:	00003817          	auipc	a6,0x3
    80003188:	86c80813          	addi	a6,a6,-1940 # 800059f0 <uart_tx_buf>
    8000318c:	01c0006f          	j	800031a8 <uartintr+0xf8>
    80003190:	0006c703          	lbu	a4,0(a3)
    80003194:	00f63023          	sd	a5,0(a2)
    80003198:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000319c:	00063783          	ld	a5,0(a2)
    800031a0:	00053703          	ld	a4,0(a0)
    800031a4:	02f70063          	beq	a4,a5,800031c4 <uartintr+0x114>
    800031a8:	01f7f713          	andi	a4,a5,31
    800031ac:	00e806b3          	add	a3,a6,a4
    800031b0:	0055c703          	lbu	a4,5(a1)
    800031b4:	00178793          	addi	a5,a5,1
    800031b8:	02077713          	andi	a4,a4,32
    800031bc:	fc071ae3          	bnez	a4,80003190 <uartintr+0xe0>
    800031c0:	00008067          	ret
    800031c4:	00008067          	ret

00000000800031c8 <kinit>:
    800031c8:	fc010113          	addi	sp,sp,-64
    800031cc:	02913423          	sd	s1,40(sp)
    800031d0:	fffff7b7          	lui	a5,0xfffff
    800031d4:	00004497          	auipc	s1,0x4
    800031d8:	83b48493          	addi	s1,s1,-1989 # 80006a0f <end+0xfff>
    800031dc:	02813823          	sd	s0,48(sp)
    800031e0:	01313c23          	sd	s3,24(sp)
    800031e4:	00f4f4b3          	and	s1,s1,a5
    800031e8:	02113c23          	sd	ra,56(sp)
    800031ec:	03213023          	sd	s2,32(sp)
    800031f0:	01413823          	sd	s4,16(sp)
    800031f4:	01513423          	sd	s5,8(sp)
    800031f8:	04010413          	addi	s0,sp,64
    800031fc:	000017b7          	lui	a5,0x1
    80003200:	01100993          	li	s3,17
    80003204:	00f487b3          	add	a5,s1,a5
    80003208:	01b99993          	slli	s3,s3,0x1b
    8000320c:	06f9e063          	bltu	s3,a5,8000326c <kinit+0xa4>
    80003210:	00003a97          	auipc	s5,0x3
    80003214:	800a8a93          	addi	s5,s5,-2048 # 80005a10 <end>
    80003218:	0754ec63          	bltu	s1,s5,80003290 <kinit+0xc8>
    8000321c:	0734fa63          	bgeu	s1,s3,80003290 <kinit+0xc8>
    80003220:	00088a37          	lui	s4,0x88
    80003224:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003228:	00001917          	auipc	s2,0x1
    8000322c:	55890913          	addi	s2,s2,1368 # 80004780 <kmem>
    80003230:	00ca1a13          	slli	s4,s4,0xc
    80003234:	0140006f          	j	80003248 <kinit+0x80>
    80003238:	000017b7          	lui	a5,0x1
    8000323c:	00f484b3          	add	s1,s1,a5
    80003240:	0554e863          	bltu	s1,s5,80003290 <kinit+0xc8>
    80003244:	0534f663          	bgeu	s1,s3,80003290 <kinit+0xc8>
    80003248:	00001637          	lui	a2,0x1
    8000324c:	00100593          	li	a1,1
    80003250:	00048513          	mv	a0,s1
    80003254:	00000097          	auipc	ra,0x0
    80003258:	5e4080e7          	jalr	1508(ra) # 80003838 <__memset>
    8000325c:	00093783          	ld	a5,0(s2)
    80003260:	00f4b023          	sd	a5,0(s1)
    80003264:	00993023          	sd	s1,0(s2)
    80003268:	fd4498e3          	bne	s1,s4,80003238 <kinit+0x70>
    8000326c:	03813083          	ld	ra,56(sp)
    80003270:	03013403          	ld	s0,48(sp)
    80003274:	02813483          	ld	s1,40(sp)
    80003278:	02013903          	ld	s2,32(sp)
    8000327c:	01813983          	ld	s3,24(sp)
    80003280:	01013a03          	ld	s4,16(sp)
    80003284:	00813a83          	ld	s5,8(sp)
    80003288:	04010113          	addi	sp,sp,64
    8000328c:	00008067          	ret
    80003290:	00001517          	auipc	a0,0x1
    80003294:	f4050513          	addi	a0,a0,-192 # 800041d0 <digits+0x18>
    80003298:	fffff097          	auipc	ra,0xfffff
    8000329c:	4b4080e7          	jalr	1204(ra) # 8000274c <panic>

00000000800032a0 <freerange>:
    800032a0:	fc010113          	addi	sp,sp,-64
    800032a4:	000017b7          	lui	a5,0x1
    800032a8:	02913423          	sd	s1,40(sp)
    800032ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800032b0:	009504b3          	add	s1,a0,s1
    800032b4:	fffff537          	lui	a0,0xfffff
    800032b8:	02813823          	sd	s0,48(sp)
    800032bc:	02113c23          	sd	ra,56(sp)
    800032c0:	03213023          	sd	s2,32(sp)
    800032c4:	01313c23          	sd	s3,24(sp)
    800032c8:	01413823          	sd	s4,16(sp)
    800032cc:	01513423          	sd	s5,8(sp)
    800032d0:	01613023          	sd	s6,0(sp)
    800032d4:	04010413          	addi	s0,sp,64
    800032d8:	00a4f4b3          	and	s1,s1,a0
    800032dc:	00f487b3          	add	a5,s1,a5
    800032e0:	06f5e463          	bltu	a1,a5,80003348 <freerange+0xa8>
    800032e4:	00002a97          	auipc	s5,0x2
    800032e8:	72ca8a93          	addi	s5,s5,1836 # 80005a10 <end>
    800032ec:	0954e263          	bltu	s1,s5,80003370 <freerange+0xd0>
    800032f0:	01100993          	li	s3,17
    800032f4:	01b99993          	slli	s3,s3,0x1b
    800032f8:	0734fc63          	bgeu	s1,s3,80003370 <freerange+0xd0>
    800032fc:	00058a13          	mv	s4,a1
    80003300:	00001917          	auipc	s2,0x1
    80003304:	48090913          	addi	s2,s2,1152 # 80004780 <kmem>
    80003308:	00002b37          	lui	s6,0x2
    8000330c:	0140006f          	j	80003320 <freerange+0x80>
    80003310:	000017b7          	lui	a5,0x1
    80003314:	00f484b3          	add	s1,s1,a5
    80003318:	0554ec63          	bltu	s1,s5,80003370 <freerange+0xd0>
    8000331c:	0534fa63          	bgeu	s1,s3,80003370 <freerange+0xd0>
    80003320:	00001637          	lui	a2,0x1
    80003324:	00100593          	li	a1,1
    80003328:	00048513          	mv	a0,s1
    8000332c:	00000097          	auipc	ra,0x0
    80003330:	50c080e7          	jalr	1292(ra) # 80003838 <__memset>
    80003334:	00093703          	ld	a4,0(s2)
    80003338:	016487b3          	add	a5,s1,s6
    8000333c:	00e4b023          	sd	a4,0(s1)
    80003340:	00993023          	sd	s1,0(s2)
    80003344:	fcfa76e3          	bgeu	s4,a5,80003310 <freerange+0x70>
    80003348:	03813083          	ld	ra,56(sp)
    8000334c:	03013403          	ld	s0,48(sp)
    80003350:	02813483          	ld	s1,40(sp)
    80003354:	02013903          	ld	s2,32(sp)
    80003358:	01813983          	ld	s3,24(sp)
    8000335c:	01013a03          	ld	s4,16(sp)
    80003360:	00813a83          	ld	s5,8(sp)
    80003364:	00013b03          	ld	s6,0(sp)
    80003368:	04010113          	addi	sp,sp,64
    8000336c:	00008067          	ret
    80003370:	00001517          	auipc	a0,0x1
    80003374:	e6050513          	addi	a0,a0,-416 # 800041d0 <digits+0x18>
    80003378:	fffff097          	auipc	ra,0xfffff
    8000337c:	3d4080e7          	jalr	980(ra) # 8000274c <panic>

0000000080003380 <kfree>:
    80003380:	fe010113          	addi	sp,sp,-32
    80003384:	00813823          	sd	s0,16(sp)
    80003388:	00113c23          	sd	ra,24(sp)
    8000338c:	00913423          	sd	s1,8(sp)
    80003390:	02010413          	addi	s0,sp,32
    80003394:	03451793          	slli	a5,a0,0x34
    80003398:	04079c63          	bnez	a5,800033f0 <kfree+0x70>
    8000339c:	00002797          	auipc	a5,0x2
    800033a0:	67478793          	addi	a5,a5,1652 # 80005a10 <end>
    800033a4:	00050493          	mv	s1,a0
    800033a8:	04f56463          	bltu	a0,a5,800033f0 <kfree+0x70>
    800033ac:	01100793          	li	a5,17
    800033b0:	01b79793          	slli	a5,a5,0x1b
    800033b4:	02f57e63          	bgeu	a0,a5,800033f0 <kfree+0x70>
    800033b8:	00001637          	lui	a2,0x1
    800033bc:	00100593          	li	a1,1
    800033c0:	00000097          	auipc	ra,0x0
    800033c4:	478080e7          	jalr	1144(ra) # 80003838 <__memset>
    800033c8:	00001797          	auipc	a5,0x1
    800033cc:	3b878793          	addi	a5,a5,952 # 80004780 <kmem>
    800033d0:	0007b703          	ld	a4,0(a5)
    800033d4:	01813083          	ld	ra,24(sp)
    800033d8:	01013403          	ld	s0,16(sp)
    800033dc:	00e4b023          	sd	a4,0(s1)
    800033e0:	0097b023          	sd	s1,0(a5)
    800033e4:	00813483          	ld	s1,8(sp)
    800033e8:	02010113          	addi	sp,sp,32
    800033ec:	00008067          	ret
    800033f0:	00001517          	auipc	a0,0x1
    800033f4:	de050513          	addi	a0,a0,-544 # 800041d0 <digits+0x18>
    800033f8:	fffff097          	auipc	ra,0xfffff
    800033fc:	354080e7          	jalr	852(ra) # 8000274c <panic>

0000000080003400 <kalloc>:
    80003400:	fe010113          	addi	sp,sp,-32
    80003404:	00813823          	sd	s0,16(sp)
    80003408:	00913423          	sd	s1,8(sp)
    8000340c:	00113c23          	sd	ra,24(sp)
    80003410:	02010413          	addi	s0,sp,32
    80003414:	00001797          	auipc	a5,0x1
    80003418:	36c78793          	addi	a5,a5,876 # 80004780 <kmem>
    8000341c:	0007b483          	ld	s1,0(a5)
    80003420:	02048063          	beqz	s1,80003440 <kalloc+0x40>
    80003424:	0004b703          	ld	a4,0(s1)
    80003428:	00001637          	lui	a2,0x1
    8000342c:	00500593          	li	a1,5
    80003430:	00048513          	mv	a0,s1
    80003434:	00e7b023          	sd	a4,0(a5)
    80003438:	00000097          	auipc	ra,0x0
    8000343c:	400080e7          	jalr	1024(ra) # 80003838 <__memset>
    80003440:	01813083          	ld	ra,24(sp)
    80003444:	01013403          	ld	s0,16(sp)
    80003448:	00048513          	mv	a0,s1
    8000344c:	00813483          	ld	s1,8(sp)
    80003450:	02010113          	addi	sp,sp,32
    80003454:	00008067          	ret

0000000080003458 <initlock>:
    80003458:	ff010113          	addi	sp,sp,-16
    8000345c:	00813423          	sd	s0,8(sp)
    80003460:	01010413          	addi	s0,sp,16
    80003464:	00813403          	ld	s0,8(sp)
    80003468:	00b53423          	sd	a1,8(a0)
    8000346c:	00052023          	sw	zero,0(a0)
    80003470:	00053823          	sd	zero,16(a0)
    80003474:	01010113          	addi	sp,sp,16
    80003478:	00008067          	ret

000000008000347c <acquire>:
    8000347c:	fe010113          	addi	sp,sp,-32
    80003480:	00813823          	sd	s0,16(sp)
    80003484:	00913423          	sd	s1,8(sp)
    80003488:	00113c23          	sd	ra,24(sp)
    8000348c:	01213023          	sd	s2,0(sp)
    80003490:	02010413          	addi	s0,sp,32
    80003494:	00050493          	mv	s1,a0
    80003498:	10002973          	csrr	s2,sstatus
    8000349c:	100027f3          	csrr	a5,sstatus
    800034a0:	ffd7f793          	andi	a5,a5,-3
    800034a4:	10079073          	csrw	sstatus,a5
    800034a8:	fffff097          	auipc	ra,0xfffff
    800034ac:	8e0080e7          	jalr	-1824(ra) # 80001d88 <mycpu>
    800034b0:	07852783          	lw	a5,120(a0)
    800034b4:	06078e63          	beqz	a5,80003530 <acquire+0xb4>
    800034b8:	fffff097          	auipc	ra,0xfffff
    800034bc:	8d0080e7          	jalr	-1840(ra) # 80001d88 <mycpu>
    800034c0:	07852783          	lw	a5,120(a0)
    800034c4:	0004a703          	lw	a4,0(s1)
    800034c8:	0017879b          	addiw	a5,a5,1
    800034cc:	06f52c23          	sw	a5,120(a0)
    800034d0:	04071063          	bnez	a4,80003510 <acquire+0x94>
    800034d4:	00100713          	li	a4,1
    800034d8:	00070793          	mv	a5,a4
    800034dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800034e0:	0007879b          	sext.w	a5,a5
    800034e4:	fe079ae3          	bnez	a5,800034d8 <acquire+0x5c>
    800034e8:	0ff0000f          	fence
    800034ec:	fffff097          	auipc	ra,0xfffff
    800034f0:	89c080e7          	jalr	-1892(ra) # 80001d88 <mycpu>
    800034f4:	01813083          	ld	ra,24(sp)
    800034f8:	01013403          	ld	s0,16(sp)
    800034fc:	00a4b823          	sd	a0,16(s1)
    80003500:	00013903          	ld	s2,0(sp)
    80003504:	00813483          	ld	s1,8(sp)
    80003508:	02010113          	addi	sp,sp,32
    8000350c:	00008067          	ret
    80003510:	0104b903          	ld	s2,16(s1)
    80003514:	fffff097          	auipc	ra,0xfffff
    80003518:	874080e7          	jalr	-1932(ra) # 80001d88 <mycpu>
    8000351c:	faa91ce3          	bne	s2,a0,800034d4 <acquire+0x58>
    80003520:	00001517          	auipc	a0,0x1
    80003524:	cb850513          	addi	a0,a0,-840 # 800041d8 <digits+0x20>
    80003528:	fffff097          	auipc	ra,0xfffff
    8000352c:	224080e7          	jalr	548(ra) # 8000274c <panic>
    80003530:	00195913          	srli	s2,s2,0x1
    80003534:	fffff097          	auipc	ra,0xfffff
    80003538:	854080e7          	jalr	-1964(ra) # 80001d88 <mycpu>
    8000353c:	00197913          	andi	s2,s2,1
    80003540:	07252e23          	sw	s2,124(a0)
    80003544:	f75ff06f          	j	800034b8 <acquire+0x3c>

0000000080003548 <release>:
    80003548:	fe010113          	addi	sp,sp,-32
    8000354c:	00813823          	sd	s0,16(sp)
    80003550:	00113c23          	sd	ra,24(sp)
    80003554:	00913423          	sd	s1,8(sp)
    80003558:	01213023          	sd	s2,0(sp)
    8000355c:	02010413          	addi	s0,sp,32
    80003560:	00052783          	lw	a5,0(a0)
    80003564:	00079a63          	bnez	a5,80003578 <release+0x30>
    80003568:	00001517          	auipc	a0,0x1
    8000356c:	c7850513          	addi	a0,a0,-904 # 800041e0 <digits+0x28>
    80003570:	fffff097          	auipc	ra,0xfffff
    80003574:	1dc080e7          	jalr	476(ra) # 8000274c <panic>
    80003578:	01053903          	ld	s2,16(a0)
    8000357c:	00050493          	mv	s1,a0
    80003580:	fffff097          	auipc	ra,0xfffff
    80003584:	808080e7          	jalr	-2040(ra) # 80001d88 <mycpu>
    80003588:	fea910e3          	bne	s2,a0,80003568 <release+0x20>
    8000358c:	0004b823          	sd	zero,16(s1)
    80003590:	0ff0000f          	fence
    80003594:	0f50000f          	fence	iorw,ow
    80003598:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000359c:	ffffe097          	auipc	ra,0xffffe
    800035a0:	7ec080e7          	jalr	2028(ra) # 80001d88 <mycpu>
    800035a4:	100027f3          	csrr	a5,sstatus
    800035a8:	0027f793          	andi	a5,a5,2
    800035ac:	04079a63          	bnez	a5,80003600 <release+0xb8>
    800035b0:	07852783          	lw	a5,120(a0)
    800035b4:	02f05e63          	blez	a5,800035f0 <release+0xa8>
    800035b8:	fff7871b          	addiw	a4,a5,-1
    800035bc:	06e52c23          	sw	a4,120(a0)
    800035c0:	00071c63          	bnez	a4,800035d8 <release+0x90>
    800035c4:	07c52783          	lw	a5,124(a0)
    800035c8:	00078863          	beqz	a5,800035d8 <release+0x90>
    800035cc:	100027f3          	csrr	a5,sstatus
    800035d0:	0027e793          	ori	a5,a5,2
    800035d4:	10079073          	csrw	sstatus,a5
    800035d8:	01813083          	ld	ra,24(sp)
    800035dc:	01013403          	ld	s0,16(sp)
    800035e0:	00813483          	ld	s1,8(sp)
    800035e4:	00013903          	ld	s2,0(sp)
    800035e8:	02010113          	addi	sp,sp,32
    800035ec:	00008067          	ret
    800035f0:	00001517          	auipc	a0,0x1
    800035f4:	c1050513          	addi	a0,a0,-1008 # 80004200 <digits+0x48>
    800035f8:	fffff097          	auipc	ra,0xfffff
    800035fc:	154080e7          	jalr	340(ra) # 8000274c <panic>
    80003600:	00001517          	auipc	a0,0x1
    80003604:	be850513          	addi	a0,a0,-1048 # 800041e8 <digits+0x30>
    80003608:	fffff097          	auipc	ra,0xfffff
    8000360c:	144080e7          	jalr	324(ra) # 8000274c <panic>

0000000080003610 <holding>:
    80003610:	00052783          	lw	a5,0(a0)
    80003614:	00079663          	bnez	a5,80003620 <holding+0x10>
    80003618:	00000513          	li	a0,0
    8000361c:	00008067          	ret
    80003620:	fe010113          	addi	sp,sp,-32
    80003624:	00813823          	sd	s0,16(sp)
    80003628:	00913423          	sd	s1,8(sp)
    8000362c:	00113c23          	sd	ra,24(sp)
    80003630:	02010413          	addi	s0,sp,32
    80003634:	01053483          	ld	s1,16(a0)
    80003638:	ffffe097          	auipc	ra,0xffffe
    8000363c:	750080e7          	jalr	1872(ra) # 80001d88 <mycpu>
    80003640:	01813083          	ld	ra,24(sp)
    80003644:	01013403          	ld	s0,16(sp)
    80003648:	40a48533          	sub	a0,s1,a0
    8000364c:	00153513          	seqz	a0,a0
    80003650:	00813483          	ld	s1,8(sp)
    80003654:	02010113          	addi	sp,sp,32
    80003658:	00008067          	ret

000000008000365c <push_off>:
    8000365c:	fe010113          	addi	sp,sp,-32
    80003660:	00813823          	sd	s0,16(sp)
    80003664:	00113c23          	sd	ra,24(sp)
    80003668:	00913423          	sd	s1,8(sp)
    8000366c:	02010413          	addi	s0,sp,32
    80003670:	100024f3          	csrr	s1,sstatus
    80003674:	100027f3          	csrr	a5,sstatus
    80003678:	ffd7f793          	andi	a5,a5,-3
    8000367c:	10079073          	csrw	sstatus,a5
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	708080e7          	jalr	1800(ra) # 80001d88 <mycpu>
    80003688:	07852783          	lw	a5,120(a0)
    8000368c:	02078663          	beqz	a5,800036b8 <push_off+0x5c>
    80003690:	ffffe097          	auipc	ra,0xffffe
    80003694:	6f8080e7          	jalr	1784(ra) # 80001d88 <mycpu>
    80003698:	07852783          	lw	a5,120(a0)
    8000369c:	01813083          	ld	ra,24(sp)
    800036a0:	01013403          	ld	s0,16(sp)
    800036a4:	0017879b          	addiw	a5,a5,1
    800036a8:	06f52c23          	sw	a5,120(a0)
    800036ac:	00813483          	ld	s1,8(sp)
    800036b0:	02010113          	addi	sp,sp,32
    800036b4:	00008067          	ret
    800036b8:	0014d493          	srli	s1,s1,0x1
    800036bc:	ffffe097          	auipc	ra,0xffffe
    800036c0:	6cc080e7          	jalr	1740(ra) # 80001d88 <mycpu>
    800036c4:	0014f493          	andi	s1,s1,1
    800036c8:	06952e23          	sw	s1,124(a0)
    800036cc:	fc5ff06f          	j	80003690 <push_off+0x34>

00000000800036d0 <pop_off>:
    800036d0:	ff010113          	addi	sp,sp,-16
    800036d4:	00813023          	sd	s0,0(sp)
    800036d8:	00113423          	sd	ra,8(sp)
    800036dc:	01010413          	addi	s0,sp,16
    800036e0:	ffffe097          	auipc	ra,0xffffe
    800036e4:	6a8080e7          	jalr	1704(ra) # 80001d88 <mycpu>
    800036e8:	100027f3          	csrr	a5,sstatus
    800036ec:	0027f793          	andi	a5,a5,2
    800036f0:	04079663          	bnez	a5,8000373c <pop_off+0x6c>
    800036f4:	07852783          	lw	a5,120(a0)
    800036f8:	02f05a63          	blez	a5,8000372c <pop_off+0x5c>
    800036fc:	fff7871b          	addiw	a4,a5,-1
    80003700:	06e52c23          	sw	a4,120(a0)
    80003704:	00071c63          	bnez	a4,8000371c <pop_off+0x4c>
    80003708:	07c52783          	lw	a5,124(a0)
    8000370c:	00078863          	beqz	a5,8000371c <pop_off+0x4c>
    80003710:	100027f3          	csrr	a5,sstatus
    80003714:	0027e793          	ori	a5,a5,2
    80003718:	10079073          	csrw	sstatus,a5
    8000371c:	00813083          	ld	ra,8(sp)
    80003720:	00013403          	ld	s0,0(sp)
    80003724:	01010113          	addi	sp,sp,16
    80003728:	00008067          	ret
    8000372c:	00001517          	auipc	a0,0x1
    80003730:	ad450513          	addi	a0,a0,-1324 # 80004200 <digits+0x48>
    80003734:	fffff097          	auipc	ra,0xfffff
    80003738:	018080e7          	jalr	24(ra) # 8000274c <panic>
    8000373c:	00001517          	auipc	a0,0x1
    80003740:	aac50513          	addi	a0,a0,-1364 # 800041e8 <digits+0x30>
    80003744:	fffff097          	auipc	ra,0xfffff
    80003748:	008080e7          	jalr	8(ra) # 8000274c <panic>

000000008000374c <push_on>:
    8000374c:	fe010113          	addi	sp,sp,-32
    80003750:	00813823          	sd	s0,16(sp)
    80003754:	00113c23          	sd	ra,24(sp)
    80003758:	00913423          	sd	s1,8(sp)
    8000375c:	02010413          	addi	s0,sp,32
    80003760:	100024f3          	csrr	s1,sstatus
    80003764:	100027f3          	csrr	a5,sstatus
    80003768:	0027e793          	ori	a5,a5,2
    8000376c:	10079073          	csrw	sstatus,a5
    80003770:	ffffe097          	auipc	ra,0xffffe
    80003774:	618080e7          	jalr	1560(ra) # 80001d88 <mycpu>
    80003778:	07852783          	lw	a5,120(a0)
    8000377c:	02078663          	beqz	a5,800037a8 <push_on+0x5c>
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	608080e7          	jalr	1544(ra) # 80001d88 <mycpu>
    80003788:	07852783          	lw	a5,120(a0)
    8000378c:	01813083          	ld	ra,24(sp)
    80003790:	01013403          	ld	s0,16(sp)
    80003794:	0017879b          	addiw	a5,a5,1
    80003798:	06f52c23          	sw	a5,120(a0)
    8000379c:	00813483          	ld	s1,8(sp)
    800037a0:	02010113          	addi	sp,sp,32
    800037a4:	00008067          	ret
    800037a8:	0014d493          	srli	s1,s1,0x1
    800037ac:	ffffe097          	auipc	ra,0xffffe
    800037b0:	5dc080e7          	jalr	1500(ra) # 80001d88 <mycpu>
    800037b4:	0014f493          	andi	s1,s1,1
    800037b8:	06952e23          	sw	s1,124(a0)
    800037bc:	fc5ff06f          	j	80003780 <push_on+0x34>

00000000800037c0 <pop_on>:
    800037c0:	ff010113          	addi	sp,sp,-16
    800037c4:	00813023          	sd	s0,0(sp)
    800037c8:	00113423          	sd	ra,8(sp)
    800037cc:	01010413          	addi	s0,sp,16
    800037d0:	ffffe097          	auipc	ra,0xffffe
    800037d4:	5b8080e7          	jalr	1464(ra) # 80001d88 <mycpu>
    800037d8:	100027f3          	csrr	a5,sstatus
    800037dc:	0027f793          	andi	a5,a5,2
    800037e0:	04078463          	beqz	a5,80003828 <pop_on+0x68>
    800037e4:	07852783          	lw	a5,120(a0)
    800037e8:	02f05863          	blez	a5,80003818 <pop_on+0x58>
    800037ec:	fff7879b          	addiw	a5,a5,-1
    800037f0:	06f52c23          	sw	a5,120(a0)
    800037f4:	07853783          	ld	a5,120(a0)
    800037f8:	00079863          	bnez	a5,80003808 <pop_on+0x48>
    800037fc:	100027f3          	csrr	a5,sstatus
    80003800:	ffd7f793          	andi	a5,a5,-3
    80003804:	10079073          	csrw	sstatus,a5
    80003808:	00813083          	ld	ra,8(sp)
    8000380c:	00013403          	ld	s0,0(sp)
    80003810:	01010113          	addi	sp,sp,16
    80003814:	00008067          	ret
    80003818:	00001517          	auipc	a0,0x1
    8000381c:	a1050513          	addi	a0,a0,-1520 # 80004228 <digits+0x70>
    80003820:	fffff097          	auipc	ra,0xfffff
    80003824:	f2c080e7          	jalr	-212(ra) # 8000274c <panic>
    80003828:	00001517          	auipc	a0,0x1
    8000382c:	9e050513          	addi	a0,a0,-1568 # 80004208 <digits+0x50>
    80003830:	fffff097          	auipc	ra,0xfffff
    80003834:	f1c080e7          	jalr	-228(ra) # 8000274c <panic>

0000000080003838 <__memset>:
    80003838:	ff010113          	addi	sp,sp,-16
    8000383c:	00813423          	sd	s0,8(sp)
    80003840:	01010413          	addi	s0,sp,16
    80003844:	1a060e63          	beqz	a2,80003a00 <__memset+0x1c8>
    80003848:	40a007b3          	neg	a5,a0
    8000384c:	0077f793          	andi	a5,a5,7
    80003850:	00778693          	addi	a3,a5,7
    80003854:	00b00813          	li	a6,11
    80003858:	0ff5f593          	andi	a1,a1,255
    8000385c:	fff6071b          	addiw	a4,a2,-1
    80003860:	1b06e663          	bltu	a3,a6,80003a0c <__memset+0x1d4>
    80003864:	1cd76463          	bltu	a4,a3,80003a2c <__memset+0x1f4>
    80003868:	1a078e63          	beqz	a5,80003a24 <__memset+0x1ec>
    8000386c:	00b50023          	sb	a1,0(a0)
    80003870:	00100713          	li	a4,1
    80003874:	1ae78463          	beq	a5,a4,80003a1c <__memset+0x1e4>
    80003878:	00b500a3          	sb	a1,1(a0)
    8000387c:	00200713          	li	a4,2
    80003880:	1ae78a63          	beq	a5,a4,80003a34 <__memset+0x1fc>
    80003884:	00b50123          	sb	a1,2(a0)
    80003888:	00300713          	li	a4,3
    8000388c:	18e78463          	beq	a5,a4,80003a14 <__memset+0x1dc>
    80003890:	00b501a3          	sb	a1,3(a0)
    80003894:	00400713          	li	a4,4
    80003898:	1ae78263          	beq	a5,a4,80003a3c <__memset+0x204>
    8000389c:	00b50223          	sb	a1,4(a0)
    800038a0:	00500713          	li	a4,5
    800038a4:	1ae78063          	beq	a5,a4,80003a44 <__memset+0x20c>
    800038a8:	00b502a3          	sb	a1,5(a0)
    800038ac:	00700713          	li	a4,7
    800038b0:	18e79e63          	bne	a5,a4,80003a4c <__memset+0x214>
    800038b4:	00b50323          	sb	a1,6(a0)
    800038b8:	00700e93          	li	t4,7
    800038bc:	00859713          	slli	a4,a1,0x8
    800038c0:	00e5e733          	or	a4,a1,a4
    800038c4:	01059e13          	slli	t3,a1,0x10
    800038c8:	01c76e33          	or	t3,a4,t3
    800038cc:	01859313          	slli	t1,a1,0x18
    800038d0:	006e6333          	or	t1,t3,t1
    800038d4:	02059893          	slli	a7,a1,0x20
    800038d8:	40f60e3b          	subw	t3,a2,a5
    800038dc:	011368b3          	or	a7,t1,a7
    800038e0:	02859813          	slli	a6,a1,0x28
    800038e4:	0108e833          	or	a6,a7,a6
    800038e8:	03059693          	slli	a3,a1,0x30
    800038ec:	003e589b          	srliw	a7,t3,0x3
    800038f0:	00d866b3          	or	a3,a6,a3
    800038f4:	03859713          	slli	a4,a1,0x38
    800038f8:	00389813          	slli	a6,a7,0x3
    800038fc:	00f507b3          	add	a5,a0,a5
    80003900:	00e6e733          	or	a4,a3,a4
    80003904:	000e089b          	sext.w	a7,t3
    80003908:	00f806b3          	add	a3,a6,a5
    8000390c:	00e7b023          	sd	a4,0(a5)
    80003910:	00878793          	addi	a5,a5,8
    80003914:	fed79ce3          	bne	a5,a3,8000390c <__memset+0xd4>
    80003918:	ff8e7793          	andi	a5,t3,-8
    8000391c:	0007871b          	sext.w	a4,a5
    80003920:	01d787bb          	addw	a5,a5,t4
    80003924:	0ce88e63          	beq	a7,a4,80003a00 <__memset+0x1c8>
    80003928:	00f50733          	add	a4,a0,a5
    8000392c:	00b70023          	sb	a1,0(a4)
    80003930:	0017871b          	addiw	a4,a5,1
    80003934:	0cc77663          	bgeu	a4,a2,80003a00 <__memset+0x1c8>
    80003938:	00e50733          	add	a4,a0,a4
    8000393c:	00b70023          	sb	a1,0(a4)
    80003940:	0027871b          	addiw	a4,a5,2
    80003944:	0ac77e63          	bgeu	a4,a2,80003a00 <__memset+0x1c8>
    80003948:	00e50733          	add	a4,a0,a4
    8000394c:	00b70023          	sb	a1,0(a4)
    80003950:	0037871b          	addiw	a4,a5,3
    80003954:	0ac77663          	bgeu	a4,a2,80003a00 <__memset+0x1c8>
    80003958:	00e50733          	add	a4,a0,a4
    8000395c:	00b70023          	sb	a1,0(a4)
    80003960:	0047871b          	addiw	a4,a5,4
    80003964:	08c77e63          	bgeu	a4,a2,80003a00 <__memset+0x1c8>
    80003968:	00e50733          	add	a4,a0,a4
    8000396c:	00b70023          	sb	a1,0(a4)
    80003970:	0057871b          	addiw	a4,a5,5
    80003974:	08c77663          	bgeu	a4,a2,80003a00 <__memset+0x1c8>
    80003978:	00e50733          	add	a4,a0,a4
    8000397c:	00b70023          	sb	a1,0(a4)
    80003980:	0067871b          	addiw	a4,a5,6
    80003984:	06c77e63          	bgeu	a4,a2,80003a00 <__memset+0x1c8>
    80003988:	00e50733          	add	a4,a0,a4
    8000398c:	00b70023          	sb	a1,0(a4)
    80003990:	0077871b          	addiw	a4,a5,7
    80003994:	06c77663          	bgeu	a4,a2,80003a00 <__memset+0x1c8>
    80003998:	00e50733          	add	a4,a0,a4
    8000399c:	00b70023          	sb	a1,0(a4)
    800039a0:	0087871b          	addiw	a4,a5,8
    800039a4:	04c77e63          	bgeu	a4,a2,80003a00 <__memset+0x1c8>
    800039a8:	00e50733          	add	a4,a0,a4
    800039ac:	00b70023          	sb	a1,0(a4)
    800039b0:	0097871b          	addiw	a4,a5,9
    800039b4:	04c77663          	bgeu	a4,a2,80003a00 <__memset+0x1c8>
    800039b8:	00e50733          	add	a4,a0,a4
    800039bc:	00b70023          	sb	a1,0(a4)
    800039c0:	00a7871b          	addiw	a4,a5,10
    800039c4:	02c77e63          	bgeu	a4,a2,80003a00 <__memset+0x1c8>
    800039c8:	00e50733          	add	a4,a0,a4
    800039cc:	00b70023          	sb	a1,0(a4)
    800039d0:	00b7871b          	addiw	a4,a5,11
    800039d4:	02c77663          	bgeu	a4,a2,80003a00 <__memset+0x1c8>
    800039d8:	00e50733          	add	a4,a0,a4
    800039dc:	00b70023          	sb	a1,0(a4)
    800039e0:	00c7871b          	addiw	a4,a5,12
    800039e4:	00c77e63          	bgeu	a4,a2,80003a00 <__memset+0x1c8>
    800039e8:	00e50733          	add	a4,a0,a4
    800039ec:	00b70023          	sb	a1,0(a4)
    800039f0:	00d7879b          	addiw	a5,a5,13
    800039f4:	00c7f663          	bgeu	a5,a2,80003a00 <__memset+0x1c8>
    800039f8:	00f507b3          	add	a5,a0,a5
    800039fc:	00b78023          	sb	a1,0(a5)
    80003a00:	00813403          	ld	s0,8(sp)
    80003a04:	01010113          	addi	sp,sp,16
    80003a08:	00008067          	ret
    80003a0c:	00b00693          	li	a3,11
    80003a10:	e55ff06f          	j	80003864 <__memset+0x2c>
    80003a14:	00300e93          	li	t4,3
    80003a18:	ea5ff06f          	j	800038bc <__memset+0x84>
    80003a1c:	00100e93          	li	t4,1
    80003a20:	e9dff06f          	j	800038bc <__memset+0x84>
    80003a24:	00000e93          	li	t4,0
    80003a28:	e95ff06f          	j	800038bc <__memset+0x84>
    80003a2c:	00000793          	li	a5,0
    80003a30:	ef9ff06f          	j	80003928 <__memset+0xf0>
    80003a34:	00200e93          	li	t4,2
    80003a38:	e85ff06f          	j	800038bc <__memset+0x84>
    80003a3c:	00400e93          	li	t4,4
    80003a40:	e7dff06f          	j	800038bc <__memset+0x84>
    80003a44:	00500e93          	li	t4,5
    80003a48:	e75ff06f          	j	800038bc <__memset+0x84>
    80003a4c:	00600e93          	li	t4,6
    80003a50:	e6dff06f          	j	800038bc <__memset+0x84>

0000000080003a54 <__memmove>:
    80003a54:	ff010113          	addi	sp,sp,-16
    80003a58:	00813423          	sd	s0,8(sp)
    80003a5c:	01010413          	addi	s0,sp,16
    80003a60:	0e060863          	beqz	a2,80003b50 <__memmove+0xfc>
    80003a64:	fff6069b          	addiw	a3,a2,-1
    80003a68:	0006881b          	sext.w	a6,a3
    80003a6c:	0ea5e863          	bltu	a1,a0,80003b5c <__memmove+0x108>
    80003a70:	00758713          	addi	a4,a1,7
    80003a74:	00a5e7b3          	or	a5,a1,a0
    80003a78:	40a70733          	sub	a4,a4,a0
    80003a7c:	0077f793          	andi	a5,a5,7
    80003a80:	00f73713          	sltiu	a4,a4,15
    80003a84:	00174713          	xori	a4,a4,1
    80003a88:	0017b793          	seqz	a5,a5
    80003a8c:	00e7f7b3          	and	a5,a5,a4
    80003a90:	10078863          	beqz	a5,80003ba0 <__memmove+0x14c>
    80003a94:	00900793          	li	a5,9
    80003a98:	1107f463          	bgeu	a5,a6,80003ba0 <__memmove+0x14c>
    80003a9c:	0036581b          	srliw	a6,a2,0x3
    80003aa0:	fff8081b          	addiw	a6,a6,-1
    80003aa4:	02081813          	slli	a6,a6,0x20
    80003aa8:	01d85893          	srli	a7,a6,0x1d
    80003aac:	00858813          	addi	a6,a1,8
    80003ab0:	00058793          	mv	a5,a1
    80003ab4:	00050713          	mv	a4,a0
    80003ab8:	01088833          	add	a6,a7,a6
    80003abc:	0007b883          	ld	a7,0(a5)
    80003ac0:	00878793          	addi	a5,a5,8
    80003ac4:	00870713          	addi	a4,a4,8
    80003ac8:	ff173c23          	sd	a7,-8(a4)
    80003acc:	ff0798e3          	bne	a5,a6,80003abc <__memmove+0x68>
    80003ad0:	ff867713          	andi	a4,a2,-8
    80003ad4:	02071793          	slli	a5,a4,0x20
    80003ad8:	0207d793          	srli	a5,a5,0x20
    80003adc:	00f585b3          	add	a1,a1,a5
    80003ae0:	40e686bb          	subw	a3,a3,a4
    80003ae4:	00f507b3          	add	a5,a0,a5
    80003ae8:	06e60463          	beq	a2,a4,80003b50 <__memmove+0xfc>
    80003aec:	0005c703          	lbu	a4,0(a1)
    80003af0:	00e78023          	sb	a4,0(a5)
    80003af4:	04068e63          	beqz	a3,80003b50 <__memmove+0xfc>
    80003af8:	0015c603          	lbu	a2,1(a1)
    80003afc:	00100713          	li	a4,1
    80003b00:	00c780a3          	sb	a2,1(a5)
    80003b04:	04e68663          	beq	a3,a4,80003b50 <__memmove+0xfc>
    80003b08:	0025c603          	lbu	a2,2(a1)
    80003b0c:	00200713          	li	a4,2
    80003b10:	00c78123          	sb	a2,2(a5)
    80003b14:	02e68e63          	beq	a3,a4,80003b50 <__memmove+0xfc>
    80003b18:	0035c603          	lbu	a2,3(a1)
    80003b1c:	00300713          	li	a4,3
    80003b20:	00c781a3          	sb	a2,3(a5)
    80003b24:	02e68663          	beq	a3,a4,80003b50 <__memmove+0xfc>
    80003b28:	0045c603          	lbu	a2,4(a1)
    80003b2c:	00400713          	li	a4,4
    80003b30:	00c78223          	sb	a2,4(a5)
    80003b34:	00e68e63          	beq	a3,a4,80003b50 <__memmove+0xfc>
    80003b38:	0055c603          	lbu	a2,5(a1)
    80003b3c:	00500713          	li	a4,5
    80003b40:	00c782a3          	sb	a2,5(a5)
    80003b44:	00e68663          	beq	a3,a4,80003b50 <__memmove+0xfc>
    80003b48:	0065c703          	lbu	a4,6(a1)
    80003b4c:	00e78323          	sb	a4,6(a5)
    80003b50:	00813403          	ld	s0,8(sp)
    80003b54:	01010113          	addi	sp,sp,16
    80003b58:	00008067          	ret
    80003b5c:	02061713          	slli	a4,a2,0x20
    80003b60:	02075713          	srli	a4,a4,0x20
    80003b64:	00e587b3          	add	a5,a1,a4
    80003b68:	f0f574e3          	bgeu	a0,a5,80003a70 <__memmove+0x1c>
    80003b6c:	02069613          	slli	a2,a3,0x20
    80003b70:	02065613          	srli	a2,a2,0x20
    80003b74:	fff64613          	not	a2,a2
    80003b78:	00e50733          	add	a4,a0,a4
    80003b7c:	00c78633          	add	a2,a5,a2
    80003b80:	fff7c683          	lbu	a3,-1(a5)
    80003b84:	fff78793          	addi	a5,a5,-1
    80003b88:	fff70713          	addi	a4,a4,-1
    80003b8c:	00d70023          	sb	a3,0(a4)
    80003b90:	fec798e3          	bne	a5,a2,80003b80 <__memmove+0x12c>
    80003b94:	00813403          	ld	s0,8(sp)
    80003b98:	01010113          	addi	sp,sp,16
    80003b9c:	00008067          	ret
    80003ba0:	02069713          	slli	a4,a3,0x20
    80003ba4:	02075713          	srli	a4,a4,0x20
    80003ba8:	00170713          	addi	a4,a4,1
    80003bac:	00e50733          	add	a4,a0,a4
    80003bb0:	00050793          	mv	a5,a0
    80003bb4:	0005c683          	lbu	a3,0(a1)
    80003bb8:	00178793          	addi	a5,a5,1
    80003bbc:	00158593          	addi	a1,a1,1
    80003bc0:	fed78fa3          	sb	a3,-1(a5)
    80003bc4:	fee798e3          	bne	a5,a4,80003bb4 <__memmove+0x160>
    80003bc8:	f89ff06f          	j	80003b50 <__memmove+0xfc>

0000000080003bcc <__putc>:
    80003bcc:	fe010113          	addi	sp,sp,-32
    80003bd0:	00813823          	sd	s0,16(sp)
    80003bd4:	00113c23          	sd	ra,24(sp)
    80003bd8:	02010413          	addi	s0,sp,32
    80003bdc:	00050793          	mv	a5,a0
    80003be0:	fef40593          	addi	a1,s0,-17
    80003be4:	00100613          	li	a2,1
    80003be8:	00000513          	li	a0,0
    80003bec:	fef407a3          	sb	a5,-17(s0)
    80003bf0:	fffff097          	auipc	ra,0xfffff
    80003bf4:	b3c080e7          	jalr	-1220(ra) # 8000272c <console_write>
    80003bf8:	01813083          	ld	ra,24(sp)
    80003bfc:	01013403          	ld	s0,16(sp)
    80003c00:	02010113          	addi	sp,sp,32
    80003c04:	00008067          	ret

0000000080003c08 <__getc>:
    80003c08:	fe010113          	addi	sp,sp,-32
    80003c0c:	00813823          	sd	s0,16(sp)
    80003c10:	00113c23          	sd	ra,24(sp)
    80003c14:	02010413          	addi	s0,sp,32
    80003c18:	fe840593          	addi	a1,s0,-24
    80003c1c:	00100613          	li	a2,1
    80003c20:	00000513          	li	a0,0
    80003c24:	fffff097          	auipc	ra,0xfffff
    80003c28:	ae8080e7          	jalr	-1304(ra) # 8000270c <console_read>
    80003c2c:	fe844503          	lbu	a0,-24(s0)
    80003c30:	01813083          	ld	ra,24(sp)
    80003c34:	01013403          	ld	s0,16(sp)
    80003c38:	02010113          	addi	sp,sp,32
    80003c3c:	00008067          	ret

0000000080003c40 <console_handler>:
    80003c40:	fe010113          	addi	sp,sp,-32
    80003c44:	00813823          	sd	s0,16(sp)
    80003c48:	00113c23          	sd	ra,24(sp)
    80003c4c:	00913423          	sd	s1,8(sp)
    80003c50:	02010413          	addi	s0,sp,32
    80003c54:	14202773          	csrr	a4,scause
    80003c58:	100027f3          	csrr	a5,sstatus
    80003c5c:	0027f793          	andi	a5,a5,2
    80003c60:	06079e63          	bnez	a5,80003cdc <console_handler+0x9c>
    80003c64:	00074c63          	bltz	a4,80003c7c <console_handler+0x3c>
    80003c68:	01813083          	ld	ra,24(sp)
    80003c6c:	01013403          	ld	s0,16(sp)
    80003c70:	00813483          	ld	s1,8(sp)
    80003c74:	02010113          	addi	sp,sp,32
    80003c78:	00008067          	ret
    80003c7c:	0ff77713          	andi	a4,a4,255
    80003c80:	00900793          	li	a5,9
    80003c84:	fef712e3          	bne	a4,a5,80003c68 <console_handler+0x28>
    80003c88:	ffffe097          	auipc	ra,0xffffe
    80003c8c:	6dc080e7          	jalr	1756(ra) # 80002364 <plic_claim>
    80003c90:	00a00793          	li	a5,10
    80003c94:	00050493          	mv	s1,a0
    80003c98:	02f50c63          	beq	a0,a5,80003cd0 <console_handler+0x90>
    80003c9c:	fc0506e3          	beqz	a0,80003c68 <console_handler+0x28>
    80003ca0:	00050593          	mv	a1,a0
    80003ca4:	00000517          	auipc	a0,0x0
    80003ca8:	48c50513          	addi	a0,a0,1164 # 80004130 <bntOne+0xd8>
    80003cac:	fffff097          	auipc	ra,0xfffff
    80003cb0:	afc080e7          	jalr	-1284(ra) # 800027a8 <__printf>
    80003cb4:	01013403          	ld	s0,16(sp)
    80003cb8:	01813083          	ld	ra,24(sp)
    80003cbc:	00048513          	mv	a0,s1
    80003cc0:	00813483          	ld	s1,8(sp)
    80003cc4:	02010113          	addi	sp,sp,32
    80003cc8:	ffffe317          	auipc	t1,0xffffe
    80003ccc:	6d430067          	jr	1748(t1) # 8000239c <plic_complete>
    80003cd0:	fffff097          	auipc	ra,0xfffff
    80003cd4:	3e0080e7          	jalr	992(ra) # 800030b0 <uartintr>
    80003cd8:	fddff06f          	j	80003cb4 <console_handler+0x74>
    80003cdc:	00000517          	auipc	a0,0x0
    80003ce0:	55450513          	addi	a0,a0,1364 # 80004230 <digits+0x78>
    80003ce4:	fffff097          	auipc	ra,0xfffff
    80003ce8:	a68080e7          	jalr	-1432(ra) # 8000274c <panic>
	...
