
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
    8000001c:	2c5010ef          	jal	ra,80001ae0 <start>

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
    8000144c:	334080e7          	jalr	820(ra) # 8000177c <_ZN15MemoryAllocator9mem_allocEm>
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
    80001548:	238080e7          	jalr	568(ra) # 8000177c <_ZN15MemoryAllocator9mem_allocEm>
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
    800015c4:	1d8080e7          	jalr	472(ra) # 80001798 <_ZN15MemoryAllocator8mem_freeEPv>
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
    8000160c:	fe010113          	addi	sp,sp,-32
    80001610:	00113c23          	sd	ra,24(sp)
    80001614:	00813823          	sd	s0,16(sp)
    80001618:	02010413          	addi	s0,sp,32
    static void w_sstatus(uint64 sstatus);
};

inline uint64 Riscv::r_scause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    8000161c:	142027f3          	csrr	a5,scause
    80001620:	fef43023          	sd	a5,-32(s0)
    return scause;
    80001624:	fe043703          	ld	a4,-32(s0)

    uint64 scause = Riscv::r_scause();
    switch(scause) {
    80001628:	00900793          	li	a5,9
    8000162c:	00f70e63          	beq	a4,a5,80001648 <interrupt+0x3c>
    //uint64 sie;
    //asm volatile("csrr %0, sie" : "=r"(sie));
    //sie &= ~2;
    //asm volatile("csrw sie, %0" : : "r" (sie));

    console_handler();
    80001630:	00002097          	auipc	ra,0x2
    80001634:	5e0080e7          	jalr	1504(ra) # 80003c10 <console_handler>
}
    80001638:	01813083          	ld	ra,24(sp)
    8000163c:	01013403          	ld	s0,16(sp)
    80001640:	02010113          	addi	sp,sp,32
    80001644:	00008067          	ret
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80001648:	00050793          	mv	a5,a0
            if(operation == (uint64)MemoryAllocator::MEM_ALLOC) {
    8000164c:	00100713          	li	a4,1
    80001650:	02e78263          	beq	a5,a4,80001674 <interrupt+0x68>
            else if(operation == (uint64)MemoryAllocator::MEM_FREE){
    80001654:	00200713          	li	a4,2
    80001658:	02e78a63          	beq	a5,a4,8000168c <interrupt+0x80>
    __asm__ volatile("csrw scause, %0" : :"r"(scause));
}

inline uint64 Riscv::r_sepc() {
    uint64 volatile sepc;
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000165c:	141027f3          	csrr	a5,sepc
    80001660:	fef43423          	sd	a5,-24(s0)
    return sepc;
    80001664:	fe843783          	ld	a5,-24(s0)
            sepc+=4;
    80001668:	00478793          	addi	a5,a5,4
}

inline void Riscv::w_sepc(uint64 sepc) {
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    8000166c:	14179073          	csrw	sepc,a5
}
    80001670:	fc1ff06f          	j	80001630 <interrupt+0x24>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80001674:	00058513          	mv	a0,a1
                void* allocatedAddr = MemoryAllocator::tryToAllocateFragment(size);
    80001678:	00651513          	slli	a0,a0,0x6
    8000167c:	00000097          	auipc	ra,0x0
    80001680:	244080e7          	jalr	580(ra) # 800018c0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80001684:	00050513          	mv	a0,a0
    80001688:	fd5ff06f          	j	8000165c <interrupt+0x50>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    8000168c:	00058513          	mv	a0,a1
                MemoryAllocator::tryToFreeSegment((void*)addr);
    80001690:	00000097          	auipc	ra,0x0
    80001694:	3a4080e7          	jalr	932(ra) # 80001a34 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
    80001698:	fc5ff06f          	j	8000165c <interrupt+0x50>

000000008000169c <_Znwm>:

#include "../h/syscall_cpp.h"

//general
void * operator new(size_t size)
{
    8000169c:	ff010113          	addi	sp,sp,-16
    800016a0:	00113423          	sd	ra,8(sp)
    800016a4:	00813023          	sd	s0,0(sp)
    800016a8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800016ac:	00000097          	auipc	ra,0x0
    800016b0:	b70080e7          	jalr	-1168(ra) # 8000121c <mem_alloc>
}
    800016b4:	00813083          	ld	ra,8(sp)
    800016b8:	00013403          	ld	s0,0(sp)
    800016bc:	01010113          	addi	sp,sp,16
    800016c0:	00008067          	ret

00000000800016c4 <_ZdlPv>:

void operator delete(void * p)
{
    800016c4:	ff010113          	addi	sp,sp,-16
    800016c8:	00113423          	sd	ra,8(sp)
    800016cc:	00813023          	sd	s0,0(sp)
    800016d0:	01010413          	addi	s0,sp,16
   mem_free(p);
    800016d4:	00000097          	auipc	ra,0x0
    800016d8:	b78080e7          	jalr	-1160(ra) # 8000124c <mem_free>
}
    800016dc:	00813083          	ld	ra,8(sp)
    800016e0:	00013403          	ld	s0,0(sp)
    800016e4:	01010113          	addi	sp,sp,16
    800016e8:	00008067          	ret

00000000800016ec <_ZN6Thread5startEv>:

//Thread

void Thread::start() {
    800016ec:	ff010113          	addi	sp,sp,-16
    800016f0:	00113423          	sd	ra,8(sp)
    800016f4:	00813023          	sd	s0,0(sp)
    800016f8:	01010413          	addi	s0,sp,16
    myHandle->start();
    800016fc:	00053503          	ld	a0,0(a0)
    80001700:	00000097          	auipc	ra,0x0
    80001704:	c54080e7          	jalr	-940(ra) # 80001354 <_ZN3PCB5startEv>
}
    80001708:	00813083          	ld	ra,8(sp)
    8000170c:	00013403          	ld	s0,0(sp)
    80001710:	01010113          	addi	sp,sp,16
    80001714:	00008067          	ret

0000000080001718 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80001718:	ff010113          	addi	sp,sp,-16
    8000171c:	00813423          	sd	s0,8(sp)
    80001720:	01010413          	addi	s0,sp,16
    //PCB::dispatch();
}
    80001724:	00813403          	ld	s0,8(sp)
    80001728:	01010113          	addi	sp,sp,16
    8000172c:	00008067          	ret

0000000080001730 <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    80001730:	ff010113          	addi	sp,sp,-16
    80001734:	00113423          	sd	ra,8(sp)
    80001738:	00813023          	sd	s0,0(sp)
    8000173c:	01010413          	addi	s0,sp,16
    PCB::sleep(time);
    80001740:	00000097          	auipc	ra,0x0
    80001744:	bfc080e7          	jalr	-1028(ra) # 8000133c <_ZN3PCB5sleepEm>
}
    80001748:	00813083          	ld	ra,8(sp)
    8000174c:	00013403          	ld	s0,0(sp)
    80001750:	01010113          	addi	sp,sp,16
    80001754:	00008067          	ret

0000000080001758 <_ZN5Riscv10initSystemEv>:
#include "../h/Riscv.h"

//todo
//sta sve treba da se odradi ovde
extern "C" void interruptvec();
void Riscv::initSystem() {
    80001758:	ff010113          	addi	sp,sp,-16
    8000175c:	00813423          	sd	s0,8(sp)
    80001760:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&interruptvec);
    80001764:	00003797          	auipc	a5,0x3
    80001768:	fd47b783          	ld	a5,-44(a5) # 80004738 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    8000176c:	10579073          	csrw	stvec,a5
}
    80001770:	00813403          	ld	s0,8(sp)
    80001774:	01010113          	addi	sp,sp,16
    80001778:	00008067          	ret

000000008000177c <_ZN15MemoryAllocator9mem_allocEm>:

MemoryAllocator::AllocatedFragment* MemoryAllocator::headAllocated = 0;
MemoryAllocator::FreeFragment* MemoryAllocator::headFree = 0;
int MemoryAllocator::memoryInitiliaized = 0;

void *MemoryAllocator::mem_alloc(size_t size) {
    8000177c:	ff010113          	addi	sp,sp,-16
    80001780:	00813423          	sd	s0,8(sp)
    80001784:	01010413          	addi	s0,sp,16
    return 0;
    //todo
    //sta ovde treba kao parametar
    //svuda pogledaj to
    //return ::mem_alloc(sizeof(MemoryAllocator));
}
    80001788:	00000513          	li	a0,0
    8000178c:	00813403          	ld	s0,8(sp)
    80001790:	01010113          	addi	sp,sp,16
    80001794:	00008067          	ret

0000000080001798 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void * addr) {
    80001798:	ff010113          	addi	sp,sp,-16
    8000179c:	00813423          	sd	s0,8(sp)
    800017a0:	01010413          	addi	s0,sp,16
    return 0;
    //return ::mem_free(addr);
}
    800017a4:	00000513          	li	a0,0
    800017a8:	00813403          	ld	s0,8(sp)
    800017ac:	01010113          	addi	sp,sp,16
    800017b0:	00008067          	ret

00000000800017b4 <_ZN15MemoryAllocator10initMemoryEv>:

void MemoryAllocator::initMemory()
{
    800017b4:	ff010113          	addi	sp,sp,-16
    800017b8:	00813423          	sd	s0,8(sp)
    800017bc:	01010413          	addi	s0,sp,16
    if(!memoryInitiliaized)
    800017c0:	00003797          	auipc	a5,0x3
    800017c4:	fe07a783          	lw	a5,-32(a5) # 800047a0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800017c8:	04078263          	beqz	a5,8000180c <_ZN15MemoryAllocator10initMemoryEv+0x58>
        return;
    memoryInitiliaized = 1;
    800017cc:	00003797          	auipc	a5,0x3
    800017d0:	fd478793          	addi	a5,a5,-44 # 800047a0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800017d4:	00100713          	li	a4,1
    800017d8:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800017dc:	0007b423          	sd	zero,8(a5)
    headFree = (FreeFragment*)HEAP_START_ADDR;
    800017e0:	00003717          	auipc	a4,0x3
    800017e4:	f4873703          	ld	a4,-184(a4) # 80004728 <_GLOBAL_OFFSET_TABLE_+0x8>
    800017e8:	00073703          	ld	a4,0(a4)
    800017ec:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    800017f0:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1);
    800017f4:	00003797          	auipc	a5,0x3
    800017f8:	f4c7b783          	ld	a5,-180(a5) # 80004740 <_GLOBAL_OFFSET_TABLE_+0x20>
    800017fc:	0007b783          	ld	a5,0(a5)
    80001800:	40e787b3          	sub	a5,a5,a4
    80001804:	00178793          	addi	a5,a5,1
    80001808:	00f73023          	sd	a5,0(a4)
}
    8000180c:	00813403          	ld	s0,8(sp)
    80001810:	01010113          	addi	sp,sp,16
    80001814:	00008067          	ret

0000000080001818 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void* addr, size_t size) {
    80001818:	fe010113          	addi	sp,sp,-32
    8000181c:	00113c23          	sd	ra,24(sp)
    80001820:	00813823          	sd	s0,16(sp)
    80001824:	00913423          	sd	s1,8(sp)
    80001828:	01213023          	sd	s2,0(sp)
    8000182c:	02010413          	addi	s0,sp,32
    80001830:	00050493          	mv	s1,a0
    80001834:	00058913          	mv	s2,a1

    initMemory();
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	f7c080e7          	jalr	-132(ra) # 800017b4 <_ZN15MemoryAllocator10initMemoryEv>
    AllocatedFragment* prev = 0;
    AllocatedFragment* after =  headAllocated;
    80001840:	00003797          	auipc	a5,0x3
    80001844:	f687b783          	ld	a5,-152(a5) # 800047a8 <_ZN15MemoryAllocator13headAllocatedE>
    AllocatedFragment* prev = 0;
    80001848:	00000713          	li	a4,0
    while(after != 0) {
    8000184c:	00078a63          	beqz	a5,80001860 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x48>
        if((void*)after > addr)
    80001850:	00f4e863          	bltu	s1,a5,80001860 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x48>
            break;

        prev = after;
    80001854:	00078713          	mv	a4,a5
        after = after->next;
    80001858:	0087b783          	ld	a5,8(a5)
    while(after != 0) {
    8000185c:	ff1ff06f          	j	8000184c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x34>
    }

    AllocatedFragment* newAllocated = (AllocatedFragment*)addr;
    newAllocated->next = 0;
    80001860:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80001864:	0124b023          	sd	s2,0(s1)
    if(after == 0) {
    80001868:	02078463          	beqz	a5,80001890 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x78>
            headAllocated = newAllocated;
        else
            prev->next = newAllocated;
    }
    else {
        if(prev == 0) {
    8000186c:	02070e63          	beqz	a4,800018a8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x90>
            newAllocated->next = headAllocated;
            headAllocated = newAllocated;
        }
        else {
            newAllocated->next = after;
    80001870:	00f4b423          	sd	a5,8(s1)
            prev->next = newAllocated;
    80001874:	00973423          	sd	s1,8(a4)
        }
    }
}
    80001878:	01813083          	ld	ra,24(sp)
    8000187c:	01013403          	ld	s0,16(sp)
    80001880:	00813483          	ld	s1,8(sp)
    80001884:	00013903          	ld	s2,0(sp)
    80001888:	02010113          	addi	sp,sp,32
    8000188c:	00008067          	ret
        if(prev == 0)
    80001890:	00070663          	beqz	a4,8000189c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x84>
            prev->next = newAllocated;
    80001894:	00973423          	sd	s1,8(a4)
    80001898:	fe1ff06f          	j	80001878 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>
            headAllocated = newAllocated;
    8000189c:	00003797          	auipc	a5,0x3
    800018a0:	f097b623          	sd	s1,-244(a5) # 800047a8 <_ZN15MemoryAllocator13headAllocatedE>
    800018a4:	fd5ff06f          	j	80001878 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>
            newAllocated->next = headAllocated;
    800018a8:	00003797          	auipc	a5,0x3
    800018ac:	ef878793          	addi	a5,a5,-264 # 800047a0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800018b0:	0087b703          	ld	a4,8(a5)
    800018b4:	00e4b423          	sd	a4,8(s1)
            headAllocated = newAllocated;
    800018b8:	0097b423          	sd	s1,8(a5)
    800018bc:	fbdff06f          	j	80001878 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>

00000000800018c0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    800018c0:	fe010113          	addi	sp,sp,-32
    800018c4:	00113c23          	sd	ra,24(sp)
    800018c8:	00813823          	sd	s0,16(sp)
    800018cc:	00913423          	sd	s1,8(sp)
    800018d0:	01213023          	sd	s2,0(sp)
    800018d4:	02010413          	addi	s0,sp,32
    800018d8:	00050913          	mv	s2,a0
    initMemory();
    800018dc:	00000097          	auipc	ra,0x0
    800018e0:	ed8080e7          	jalr	-296(ra) # 800017b4 <_ZN15MemoryAllocator10initMemoryEv>
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    800018e4:	00003497          	auipc	s1,0x3
    800018e8:	ecc4b483          	ld	s1,-308(s1) # 800047b0 <_ZN15MemoryAllocator8headFreeE>
    uint64 newSize = size + sizeof(AllocatedFragment);
    800018ec:	01090693          	addi	a3,s2,16
    FreeFragment* prev = 0;
    800018f0:	00000713          	li	a4,0
    800018f4:	0700006f          	j	80001964 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
            void* newAddr = ((char*)curr + newSize);
            if(newAddr <= HEAP_END_ADDR) {

                FreeFragment *newFree = (FreeFragment *) newAddr;

                if (prev != 0)
    800018f8:	04070263          	beqz	a4,8000193c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x7c>
                    prev->next = newFree;
    800018fc:	00f73423          	sd	a5,8(a4)
                else
                    headFree = newFree;

                newFree->next = curr->next;
    80001900:	0084b603          	ld	a2,8(s1)
    80001904:	00c7b423          	sd	a2,8(a5)
                newFree->size = curr->size - newSize;
    80001908:	0004b603          	ld	a2,0(s1)
    8000190c:	40d606b3          	sub	a3,a2,a3
    80001910:	00d7b023          	sd	a3,0(a5)

                if(newFree->size == 0)
    80001914:	00069863          	bnez	a3,80001924 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x64>
                {
                    if(prev != 0)
    80001918:	02070863          	beqz	a4,80001948 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = curr->next;
    8000191c:	0084b783          	ld	a5,8(s1)
    80001920:	00f73423          	sd	a5,8(a4)
                    else
                        headFree = 0;
                }

                insertNewAllocatedFragment(oldAddr, size);
    80001924:	00090593          	mv	a1,s2
    80001928:	00048513          	mv	a0,s1
    8000192c:	00000097          	auipc	ra,0x0
    80001930:	eec080e7          	jalr	-276(ra) # 80001818 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>



                uint64 oldA = (uint64) ((char*)oldAddr + sizeof(AllocatedFragment));
    80001934:	01048493          	addi	s1,s1,16

                return (void*)oldA;
    80001938:	0600006f          	j	80001998 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd8>
                    headFree = newFree;
    8000193c:	00003617          	auipc	a2,0x3
    80001940:	e6f63a23          	sd	a5,-396(a2) # 800047b0 <_ZN15MemoryAllocator8headFreeE>
    80001944:	fbdff06f          	j	80001900 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x40>
                        headFree = 0;
    80001948:	00003797          	auipc	a5,0x3
    8000194c:	e607b423          	sd	zero,-408(a5) # 800047b0 <_ZN15MemoryAllocator8headFreeE>
    80001950:	fd5ff06f          	j	80001924 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x64>
                {
                    prev->next = 0;
                }
                else
                {
                    headFree = 0;
    80001954:	00003797          	auipc	a5,0x3
    80001958:	e407be23          	sd	zero,-420(a5) # 800047b0 <_ZN15MemoryAllocator8headFreeE>
                }
            }
        }
        prev = curr;
    8000195c:	00048713          	mv	a4,s1
        curr = curr->next;
    80001960:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    80001964:	02048663          	beqz	s1,80001990 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd0>
        if(curr->size >= newSize) {
    80001968:	0004b783          	ld	a5,0(s1)
    8000196c:	fed7e8e3          	bltu	a5,a3,8000195c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
            void* newAddr = ((char*)curr + newSize);
    80001970:	00d487b3          	add	a5,s1,a3
            if(newAddr <= HEAP_END_ADDR) {
    80001974:	00003617          	auipc	a2,0x3
    80001978:	dcc63603          	ld	a2,-564(a2) # 80004740 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000197c:	00063603          	ld	a2,0(a2)
    80001980:	f6f67ce3          	bgeu	a2,a5,800018f8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x38>
                if(prev != 0)
    80001984:	fc0708e3          	beqz	a4,80001954 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    prev->next = 0;
    80001988:	00073423          	sd	zero,8(a4)
    8000198c:	fd1ff06f          	j	8000195c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
    }

    uint64 x = 0;
    __asm__ volatile("mv a0,%0" : : "r"(x));
    80001990:	00000793          	li	a5,0
    80001994:	00078513          	mv	a0,a5

    return 0;
}
    80001998:	00048513          	mv	a0,s1
    8000199c:	01813083          	ld	ra,24(sp)
    800019a0:	01013403          	ld	s0,16(sp)
    800019a4:	00813483          	ld	s1,8(sp)
    800019a8:	00013903          	ld	s2,0(sp)
    800019ac:	02010113          	addi	sp,sp,32
    800019b0:	00008067          	ret

00000000800019b4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800019b4:	fe010113          	addi	sp,sp,-32
    800019b8:	00113c23          	sd	ra,24(sp)
    800019bc:	00813823          	sd	s0,16(sp)
    800019c0:	00913423          	sd	s1,8(sp)
    800019c4:	01213023          	sd	s2,0(sp)
    800019c8:	02010413          	addi	s0,sp,32
    800019cc:	00050493          	mv	s1,a0
    800019d0:	00058913          	mv	s2,a1
    initMemory();
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	de0080e7          	jalr	-544(ra) # 800017b4 <_ZN15MemoryAllocator10initMemoryEv>
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    800019dc:	00003797          	auipc	a5,0x3
    800019e0:	dd47b783          	ld	a5,-556(a5) # 800047b0 <_ZN15MemoryAllocator8headFreeE>
    FreeFragment* newSegment = (FreeFragment*) addr;
    newSegment->size = size;
    800019e4:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800019e8:	0004b423          	sd	zero,8(s1)
    FreeFragment* prev = 0;
    800019ec:	00000713          	li	a4,0
    while(curr != 0)
    800019f0:	00078c63          	beqz	a5,80001a08 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800019f4:	00f4e863          	bltu	s1,a5,80001a04 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800019f8:	00078713          	mv	a4,a5
        curr = curr->next;
    800019fc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80001a00:	ff1ff06f          	j	800019f0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80001a04:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80001a08:	02070063          	beqz	a4,80001a28 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80001a0c:	00973423          	sd	s1,8(a4)
}
    80001a10:	01813083          	ld	ra,24(sp)
    80001a14:	01013403          	ld	s0,16(sp)
    80001a18:	00813483          	ld	s1,8(sp)
    80001a1c:	00013903          	ld	s2,0(sp)
    80001a20:	02010113          	addi	sp,sp,32
    80001a24:	00008067          	ret
        headFree = newSegment;
    80001a28:	00003797          	auipc	a5,0x3
    80001a2c:	d897b423          	sd	s1,-632(a5) # 800047b0 <_ZN15MemoryAllocator8headFreeE>
    80001a30:	fe1ff06f          	j	80001a10 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>

0000000080001a34 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

void MemoryAllocator::tryToFreeSegment(void* addr)
{
    80001a34:	fe010113          	addi	sp,sp,-32
    80001a38:	00113c23          	sd	ra,24(sp)
    80001a3c:	00813823          	sd	s0,16(sp)
    80001a40:	00913423          	sd	s1,8(sp)
    80001a44:	01213023          	sd	s2,0(sp)
    80001a48:	02010413          	addi	s0,sp,32
    80001a4c:	00050913          	mv	s2,a0
    initMemory();
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	d64080e7          	jalr	-668(ra) # 800017b4 <_ZN15MemoryAllocator10initMemoryEv>
    AllocatedFragment* prev = 0;
    AllocatedFragment* curr = headAllocated;
    80001a58:	00003497          	auipc	s1,0x3
    80001a5c:	d504b483          	ld	s1,-688(s1) # 800047a8 <_ZN15MemoryAllocator13headAllocatedE>
    int found = 0;
    80001a60:	00000693          	li	a3,0
    AllocatedFragment* prev = 0;
    80001a64:	00000713          	li	a4,0
    80001a68:	0300006f          	j	80001a98 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
        {
            if(prev != 0) {
                prev->next = curr->next;
            }
            else {
                headAllocated = curr->next;
    80001a6c:	0084b783          	ld	a5,8(s1)
    80001a70:	00003717          	auipc	a4,0x3
    80001a74:	d2f73c23          	sd	a5,-712(a4) # 800047a8 <_ZN15MemoryAllocator13headAllocatedE>
            }

            insertNewFreeSegment((void*)curr, curr->size + sizeof(AllocatedFragment));
    80001a78:	0004b583          	ld	a1,0(s1)
    80001a7c:	01058593          	addi	a1,a1,16
    80001a80:	00048513          	mv	a0,s1
    80001a84:	00000097          	auipc	ra,0x0
    80001a88:	f30080e7          	jalr	-208(ra) # 800019b4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>

            found = 1;
    80001a8c:	00100693          	li	a3,1
        }

        prev = curr;
    80001a90:	00048713          	mv	a4,s1
        curr = curr->next;
    80001a94:	0084b483          	ld	s1,8(s1)
    while(curr != 0 && !found)
    80001a98:	02048063          	beqz	s1,80001ab8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
    80001a9c:	00069e63          	bnez	a3,80001ab8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
        if(addr == (void*)((char*)curr + sizeof(AllocatedFragment)))
    80001aa0:	01048793          	addi	a5,s1,16
    80001aa4:	ff2796e3          	bne	a5,s2,80001a90 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x5c>
            if(prev != 0) {
    80001aa8:	fc0702e3          	beqz	a4,80001a6c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x38>
                prev->next = curr->next;
    80001aac:	0084b783          	ld	a5,8(s1)
    80001ab0:	00f73423          	sd	a5,8(a4)
    80001ab4:	fc5ff06f          	j	80001a78 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
    }

    if(found) {
    80001ab8:	02068063          	beqz	a3,80001ad8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0xa4>
        __asm__ volatile("li a0, 0");
    80001abc:	00000513          	li	a0,0
    }
    else {
        __asm__ volatile("li a0, 1");
    }
    80001ac0:	01813083          	ld	ra,24(sp)
    80001ac4:	01013403          	ld	s0,16(sp)
    80001ac8:	00813483          	ld	s1,8(sp)
    80001acc:	00013903          	ld	s2,0(sp)
    80001ad0:	02010113          	addi	sp,sp,32
    80001ad4:	00008067          	ret
        __asm__ volatile("li a0, 1");
    80001ad8:	00100513          	li	a0,1
    80001adc:	fe5ff06f          	j	80001ac0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>

0000000080001ae0 <start>:
    80001ae0:	ff010113          	addi	sp,sp,-16
    80001ae4:	00813423          	sd	s0,8(sp)
    80001ae8:	01010413          	addi	s0,sp,16
    80001aec:	300027f3          	csrr	a5,mstatus
    80001af0:	ffffe737          	lui	a4,0xffffe
    80001af4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8def>
    80001af8:	00e7f7b3          	and	a5,a5,a4
    80001afc:	00001737          	lui	a4,0x1
    80001b00:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001b04:	00e7e7b3          	or	a5,a5,a4
    80001b08:	30079073          	csrw	mstatus,a5
    80001b0c:	00000797          	auipc	a5,0x0
    80001b10:	16078793          	addi	a5,a5,352 # 80001c6c <system_main>
    80001b14:	34179073          	csrw	mepc,a5
    80001b18:	00000793          	li	a5,0
    80001b1c:	18079073          	csrw	satp,a5
    80001b20:	000107b7          	lui	a5,0x10
    80001b24:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001b28:	30279073          	csrw	medeleg,a5
    80001b2c:	30379073          	csrw	mideleg,a5
    80001b30:	104027f3          	csrr	a5,sie
    80001b34:	2227e793          	ori	a5,a5,546
    80001b38:	10479073          	csrw	sie,a5
    80001b3c:	fff00793          	li	a5,-1
    80001b40:	00a7d793          	srli	a5,a5,0xa
    80001b44:	3b079073          	csrw	pmpaddr0,a5
    80001b48:	00f00793          	li	a5,15
    80001b4c:	3a079073          	csrw	pmpcfg0,a5
    80001b50:	f14027f3          	csrr	a5,mhartid
    80001b54:	0200c737          	lui	a4,0x200c
    80001b58:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001b5c:	0007869b          	sext.w	a3,a5
    80001b60:	00269713          	slli	a4,a3,0x2
    80001b64:	000f4637          	lui	a2,0xf4
    80001b68:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001b6c:	00d70733          	add	a4,a4,a3
    80001b70:	0037979b          	slliw	a5,a5,0x3
    80001b74:	020046b7          	lui	a3,0x2004
    80001b78:	00d787b3          	add	a5,a5,a3
    80001b7c:	00c585b3          	add	a1,a1,a2
    80001b80:	00371693          	slli	a3,a4,0x3
    80001b84:	00003717          	auipc	a4,0x3
    80001b88:	c3c70713          	addi	a4,a4,-964 # 800047c0 <timer_scratch>
    80001b8c:	00b7b023          	sd	a1,0(a5)
    80001b90:	00d70733          	add	a4,a4,a3
    80001b94:	00f73c23          	sd	a5,24(a4)
    80001b98:	02c73023          	sd	a2,32(a4)
    80001b9c:	34071073          	csrw	mscratch,a4
    80001ba0:	00000797          	auipc	a5,0x0
    80001ba4:	6e078793          	addi	a5,a5,1760 # 80002280 <timervec>
    80001ba8:	30579073          	csrw	mtvec,a5
    80001bac:	300027f3          	csrr	a5,mstatus
    80001bb0:	0087e793          	ori	a5,a5,8
    80001bb4:	30079073          	csrw	mstatus,a5
    80001bb8:	304027f3          	csrr	a5,mie
    80001bbc:	0807e793          	ori	a5,a5,128
    80001bc0:	30479073          	csrw	mie,a5
    80001bc4:	f14027f3          	csrr	a5,mhartid
    80001bc8:	0007879b          	sext.w	a5,a5
    80001bcc:	00078213          	mv	tp,a5
    80001bd0:	30200073          	mret
    80001bd4:	00813403          	ld	s0,8(sp)
    80001bd8:	01010113          	addi	sp,sp,16
    80001bdc:	00008067          	ret

0000000080001be0 <timerinit>:
    80001be0:	ff010113          	addi	sp,sp,-16
    80001be4:	00813423          	sd	s0,8(sp)
    80001be8:	01010413          	addi	s0,sp,16
    80001bec:	f14027f3          	csrr	a5,mhartid
    80001bf0:	0200c737          	lui	a4,0x200c
    80001bf4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001bf8:	0007869b          	sext.w	a3,a5
    80001bfc:	00269713          	slli	a4,a3,0x2
    80001c00:	000f4637          	lui	a2,0xf4
    80001c04:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001c08:	00d70733          	add	a4,a4,a3
    80001c0c:	0037979b          	slliw	a5,a5,0x3
    80001c10:	020046b7          	lui	a3,0x2004
    80001c14:	00d787b3          	add	a5,a5,a3
    80001c18:	00c585b3          	add	a1,a1,a2
    80001c1c:	00371693          	slli	a3,a4,0x3
    80001c20:	00003717          	auipc	a4,0x3
    80001c24:	ba070713          	addi	a4,a4,-1120 # 800047c0 <timer_scratch>
    80001c28:	00b7b023          	sd	a1,0(a5)
    80001c2c:	00d70733          	add	a4,a4,a3
    80001c30:	00f73c23          	sd	a5,24(a4)
    80001c34:	02c73023          	sd	a2,32(a4)
    80001c38:	34071073          	csrw	mscratch,a4
    80001c3c:	00000797          	auipc	a5,0x0
    80001c40:	64478793          	addi	a5,a5,1604 # 80002280 <timervec>
    80001c44:	30579073          	csrw	mtvec,a5
    80001c48:	300027f3          	csrr	a5,mstatus
    80001c4c:	0087e793          	ori	a5,a5,8
    80001c50:	30079073          	csrw	mstatus,a5
    80001c54:	304027f3          	csrr	a5,mie
    80001c58:	0807e793          	ori	a5,a5,128
    80001c5c:	30479073          	csrw	mie,a5
    80001c60:	00813403          	ld	s0,8(sp)
    80001c64:	01010113          	addi	sp,sp,16
    80001c68:	00008067          	ret

0000000080001c6c <system_main>:
    80001c6c:	fe010113          	addi	sp,sp,-32
    80001c70:	00813823          	sd	s0,16(sp)
    80001c74:	00913423          	sd	s1,8(sp)
    80001c78:	00113c23          	sd	ra,24(sp)
    80001c7c:	02010413          	addi	s0,sp,32
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	0c4080e7          	jalr	196(ra) # 80001d44 <cpuid>
    80001c88:	00003497          	auipc	s1,0x3
    80001c8c:	ad848493          	addi	s1,s1,-1320 # 80004760 <started>
    80001c90:	02050263          	beqz	a0,80001cb4 <system_main+0x48>
    80001c94:	0004a783          	lw	a5,0(s1)
    80001c98:	0007879b          	sext.w	a5,a5
    80001c9c:	fe078ce3          	beqz	a5,80001c94 <system_main+0x28>
    80001ca0:	0ff0000f          	fence
    80001ca4:	00002517          	auipc	a0,0x2
    80001ca8:	3ec50513          	addi	a0,a0,1004 # 80004090 <bntOne+0x38>
    80001cac:	00001097          	auipc	ra,0x1
    80001cb0:	a70080e7          	jalr	-1424(ra) # 8000271c <panic>
    80001cb4:	00001097          	auipc	ra,0x1
    80001cb8:	9c4080e7          	jalr	-1596(ra) # 80002678 <consoleinit>
    80001cbc:	00001097          	auipc	ra,0x1
    80001cc0:	150080e7          	jalr	336(ra) # 80002e0c <printfinit>
    80001cc4:	00002517          	auipc	a0,0x2
    80001cc8:	4ac50513          	addi	a0,a0,1196 # 80004170 <bntOne+0x118>
    80001ccc:	00001097          	auipc	ra,0x1
    80001cd0:	aac080e7          	jalr	-1364(ra) # 80002778 <__printf>
    80001cd4:	00002517          	auipc	a0,0x2
    80001cd8:	38c50513          	addi	a0,a0,908 # 80004060 <bntOne+0x8>
    80001cdc:	00001097          	auipc	ra,0x1
    80001ce0:	a9c080e7          	jalr	-1380(ra) # 80002778 <__printf>
    80001ce4:	00002517          	auipc	a0,0x2
    80001ce8:	48c50513          	addi	a0,a0,1164 # 80004170 <bntOne+0x118>
    80001cec:	00001097          	auipc	ra,0x1
    80001cf0:	a8c080e7          	jalr	-1396(ra) # 80002778 <__printf>
    80001cf4:	00001097          	auipc	ra,0x1
    80001cf8:	4a4080e7          	jalr	1188(ra) # 80003198 <kinit>
    80001cfc:	00000097          	auipc	ra,0x0
    80001d00:	148080e7          	jalr	328(ra) # 80001e44 <trapinit>
    80001d04:	00000097          	auipc	ra,0x0
    80001d08:	16c080e7          	jalr	364(ra) # 80001e70 <trapinithart>
    80001d0c:	00000097          	auipc	ra,0x0
    80001d10:	5b4080e7          	jalr	1460(ra) # 800022c0 <plicinit>
    80001d14:	00000097          	auipc	ra,0x0
    80001d18:	5d4080e7          	jalr	1492(ra) # 800022e8 <plicinithart>
    80001d1c:	00000097          	auipc	ra,0x0
    80001d20:	078080e7          	jalr	120(ra) # 80001d94 <userinit>
    80001d24:	0ff0000f          	fence
    80001d28:	00100793          	li	a5,1
    80001d2c:	00002517          	auipc	a0,0x2
    80001d30:	34c50513          	addi	a0,a0,844 # 80004078 <bntOne+0x20>
    80001d34:	00f4a023          	sw	a5,0(s1)
    80001d38:	00001097          	auipc	ra,0x1
    80001d3c:	a40080e7          	jalr	-1472(ra) # 80002778 <__printf>
    80001d40:	0000006f          	j	80001d40 <system_main+0xd4>

0000000080001d44 <cpuid>:
    80001d44:	ff010113          	addi	sp,sp,-16
    80001d48:	00813423          	sd	s0,8(sp)
    80001d4c:	01010413          	addi	s0,sp,16
    80001d50:	00020513          	mv	a0,tp
    80001d54:	00813403          	ld	s0,8(sp)
    80001d58:	0005051b          	sext.w	a0,a0
    80001d5c:	01010113          	addi	sp,sp,16
    80001d60:	00008067          	ret

0000000080001d64 <mycpu>:
    80001d64:	ff010113          	addi	sp,sp,-16
    80001d68:	00813423          	sd	s0,8(sp)
    80001d6c:	01010413          	addi	s0,sp,16
    80001d70:	00020793          	mv	a5,tp
    80001d74:	00813403          	ld	s0,8(sp)
    80001d78:	0007879b          	sext.w	a5,a5
    80001d7c:	00779793          	slli	a5,a5,0x7
    80001d80:	00004517          	auipc	a0,0x4
    80001d84:	a7050513          	addi	a0,a0,-1424 # 800057f0 <cpus>
    80001d88:	00f50533          	add	a0,a0,a5
    80001d8c:	01010113          	addi	sp,sp,16
    80001d90:	00008067          	ret

0000000080001d94 <userinit>:
    80001d94:	ff010113          	addi	sp,sp,-16
    80001d98:	00813423          	sd	s0,8(sp)
    80001d9c:	01010413          	addi	s0,sp,16
    80001da0:	00813403          	ld	s0,8(sp)
    80001da4:	01010113          	addi	sp,sp,16
    80001da8:	00000317          	auipc	t1,0x0
    80001dac:	84c30067          	jr	-1972(t1) # 800015f4 <main>

0000000080001db0 <either_copyout>:
    80001db0:	ff010113          	addi	sp,sp,-16
    80001db4:	00813023          	sd	s0,0(sp)
    80001db8:	00113423          	sd	ra,8(sp)
    80001dbc:	01010413          	addi	s0,sp,16
    80001dc0:	02051663          	bnez	a0,80001dec <either_copyout+0x3c>
    80001dc4:	00058513          	mv	a0,a1
    80001dc8:	00060593          	mv	a1,a2
    80001dcc:	0006861b          	sext.w	a2,a3
    80001dd0:	00002097          	auipc	ra,0x2
    80001dd4:	c54080e7          	jalr	-940(ra) # 80003a24 <__memmove>
    80001dd8:	00813083          	ld	ra,8(sp)
    80001ddc:	00013403          	ld	s0,0(sp)
    80001de0:	00000513          	li	a0,0
    80001de4:	01010113          	addi	sp,sp,16
    80001de8:	00008067          	ret
    80001dec:	00002517          	auipc	a0,0x2
    80001df0:	2cc50513          	addi	a0,a0,716 # 800040b8 <bntOne+0x60>
    80001df4:	00001097          	auipc	ra,0x1
    80001df8:	928080e7          	jalr	-1752(ra) # 8000271c <panic>

0000000080001dfc <either_copyin>:
    80001dfc:	ff010113          	addi	sp,sp,-16
    80001e00:	00813023          	sd	s0,0(sp)
    80001e04:	00113423          	sd	ra,8(sp)
    80001e08:	01010413          	addi	s0,sp,16
    80001e0c:	02059463          	bnez	a1,80001e34 <either_copyin+0x38>
    80001e10:	00060593          	mv	a1,a2
    80001e14:	0006861b          	sext.w	a2,a3
    80001e18:	00002097          	auipc	ra,0x2
    80001e1c:	c0c080e7          	jalr	-1012(ra) # 80003a24 <__memmove>
    80001e20:	00813083          	ld	ra,8(sp)
    80001e24:	00013403          	ld	s0,0(sp)
    80001e28:	00000513          	li	a0,0
    80001e2c:	01010113          	addi	sp,sp,16
    80001e30:	00008067          	ret
    80001e34:	00002517          	auipc	a0,0x2
    80001e38:	2ac50513          	addi	a0,a0,684 # 800040e0 <bntOne+0x88>
    80001e3c:	00001097          	auipc	ra,0x1
    80001e40:	8e0080e7          	jalr	-1824(ra) # 8000271c <panic>

0000000080001e44 <trapinit>:
    80001e44:	ff010113          	addi	sp,sp,-16
    80001e48:	00813423          	sd	s0,8(sp)
    80001e4c:	01010413          	addi	s0,sp,16
    80001e50:	00813403          	ld	s0,8(sp)
    80001e54:	00002597          	auipc	a1,0x2
    80001e58:	2b458593          	addi	a1,a1,692 # 80004108 <bntOne+0xb0>
    80001e5c:	00004517          	auipc	a0,0x4
    80001e60:	a1450513          	addi	a0,a0,-1516 # 80005870 <tickslock>
    80001e64:	01010113          	addi	sp,sp,16
    80001e68:	00001317          	auipc	t1,0x1
    80001e6c:	5c030067          	jr	1472(t1) # 80003428 <initlock>

0000000080001e70 <trapinithart>:
    80001e70:	ff010113          	addi	sp,sp,-16
    80001e74:	00813423          	sd	s0,8(sp)
    80001e78:	01010413          	addi	s0,sp,16
    80001e7c:	00000797          	auipc	a5,0x0
    80001e80:	2f478793          	addi	a5,a5,756 # 80002170 <kernelvec>
    80001e84:	10579073          	csrw	stvec,a5
    80001e88:	00813403          	ld	s0,8(sp)
    80001e8c:	01010113          	addi	sp,sp,16
    80001e90:	00008067          	ret

0000000080001e94 <usertrap>:
    80001e94:	ff010113          	addi	sp,sp,-16
    80001e98:	00813423          	sd	s0,8(sp)
    80001e9c:	01010413          	addi	s0,sp,16
    80001ea0:	00813403          	ld	s0,8(sp)
    80001ea4:	01010113          	addi	sp,sp,16
    80001ea8:	00008067          	ret

0000000080001eac <usertrapret>:
    80001eac:	ff010113          	addi	sp,sp,-16
    80001eb0:	00813423          	sd	s0,8(sp)
    80001eb4:	01010413          	addi	s0,sp,16
    80001eb8:	00813403          	ld	s0,8(sp)
    80001ebc:	01010113          	addi	sp,sp,16
    80001ec0:	00008067          	ret

0000000080001ec4 <kerneltrap>:
    80001ec4:	fe010113          	addi	sp,sp,-32
    80001ec8:	00813823          	sd	s0,16(sp)
    80001ecc:	00113c23          	sd	ra,24(sp)
    80001ed0:	00913423          	sd	s1,8(sp)
    80001ed4:	02010413          	addi	s0,sp,32
    80001ed8:	142025f3          	csrr	a1,scause
    80001edc:	100027f3          	csrr	a5,sstatus
    80001ee0:	0027f793          	andi	a5,a5,2
    80001ee4:	10079c63          	bnez	a5,80001ffc <kerneltrap+0x138>
    80001ee8:	142027f3          	csrr	a5,scause
    80001eec:	0207ce63          	bltz	a5,80001f28 <kerneltrap+0x64>
    80001ef0:	00002517          	auipc	a0,0x2
    80001ef4:	26050513          	addi	a0,a0,608 # 80004150 <bntOne+0xf8>
    80001ef8:	00001097          	auipc	ra,0x1
    80001efc:	880080e7          	jalr	-1920(ra) # 80002778 <__printf>
    80001f00:	141025f3          	csrr	a1,sepc
    80001f04:	14302673          	csrr	a2,stval
    80001f08:	00002517          	auipc	a0,0x2
    80001f0c:	25850513          	addi	a0,a0,600 # 80004160 <bntOne+0x108>
    80001f10:	00001097          	auipc	ra,0x1
    80001f14:	868080e7          	jalr	-1944(ra) # 80002778 <__printf>
    80001f18:	00002517          	auipc	a0,0x2
    80001f1c:	26050513          	addi	a0,a0,608 # 80004178 <bntOne+0x120>
    80001f20:	00000097          	auipc	ra,0x0
    80001f24:	7fc080e7          	jalr	2044(ra) # 8000271c <panic>
    80001f28:	0ff7f713          	andi	a4,a5,255
    80001f2c:	00900693          	li	a3,9
    80001f30:	04d70063          	beq	a4,a3,80001f70 <kerneltrap+0xac>
    80001f34:	fff00713          	li	a4,-1
    80001f38:	03f71713          	slli	a4,a4,0x3f
    80001f3c:	00170713          	addi	a4,a4,1
    80001f40:	fae798e3          	bne	a5,a4,80001ef0 <kerneltrap+0x2c>
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	e00080e7          	jalr	-512(ra) # 80001d44 <cpuid>
    80001f4c:	06050663          	beqz	a0,80001fb8 <kerneltrap+0xf4>
    80001f50:	144027f3          	csrr	a5,sip
    80001f54:	ffd7f793          	andi	a5,a5,-3
    80001f58:	14479073          	csrw	sip,a5
    80001f5c:	01813083          	ld	ra,24(sp)
    80001f60:	01013403          	ld	s0,16(sp)
    80001f64:	00813483          	ld	s1,8(sp)
    80001f68:	02010113          	addi	sp,sp,32
    80001f6c:	00008067          	ret
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	3c4080e7          	jalr	964(ra) # 80002334 <plic_claim>
    80001f78:	00a00793          	li	a5,10
    80001f7c:	00050493          	mv	s1,a0
    80001f80:	06f50863          	beq	a0,a5,80001ff0 <kerneltrap+0x12c>
    80001f84:	fc050ce3          	beqz	a0,80001f5c <kerneltrap+0x98>
    80001f88:	00050593          	mv	a1,a0
    80001f8c:	00002517          	auipc	a0,0x2
    80001f90:	1a450513          	addi	a0,a0,420 # 80004130 <bntOne+0xd8>
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	7e4080e7          	jalr	2020(ra) # 80002778 <__printf>
    80001f9c:	01013403          	ld	s0,16(sp)
    80001fa0:	01813083          	ld	ra,24(sp)
    80001fa4:	00048513          	mv	a0,s1
    80001fa8:	00813483          	ld	s1,8(sp)
    80001fac:	02010113          	addi	sp,sp,32
    80001fb0:	00000317          	auipc	t1,0x0
    80001fb4:	3bc30067          	jr	956(t1) # 8000236c <plic_complete>
    80001fb8:	00004517          	auipc	a0,0x4
    80001fbc:	8b850513          	addi	a0,a0,-1864 # 80005870 <tickslock>
    80001fc0:	00001097          	auipc	ra,0x1
    80001fc4:	48c080e7          	jalr	1164(ra) # 8000344c <acquire>
    80001fc8:	00002717          	auipc	a4,0x2
    80001fcc:	79c70713          	addi	a4,a4,1948 # 80004764 <ticks>
    80001fd0:	00072783          	lw	a5,0(a4)
    80001fd4:	00004517          	auipc	a0,0x4
    80001fd8:	89c50513          	addi	a0,a0,-1892 # 80005870 <tickslock>
    80001fdc:	0017879b          	addiw	a5,a5,1
    80001fe0:	00f72023          	sw	a5,0(a4)
    80001fe4:	00001097          	auipc	ra,0x1
    80001fe8:	534080e7          	jalr	1332(ra) # 80003518 <release>
    80001fec:	f65ff06f          	j	80001f50 <kerneltrap+0x8c>
    80001ff0:	00001097          	auipc	ra,0x1
    80001ff4:	090080e7          	jalr	144(ra) # 80003080 <uartintr>
    80001ff8:	fa5ff06f          	j	80001f9c <kerneltrap+0xd8>
    80001ffc:	00002517          	auipc	a0,0x2
    80002000:	11450513          	addi	a0,a0,276 # 80004110 <bntOne+0xb8>
    80002004:	00000097          	auipc	ra,0x0
    80002008:	718080e7          	jalr	1816(ra) # 8000271c <panic>

000000008000200c <clockintr>:
    8000200c:	fe010113          	addi	sp,sp,-32
    80002010:	00813823          	sd	s0,16(sp)
    80002014:	00913423          	sd	s1,8(sp)
    80002018:	00113c23          	sd	ra,24(sp)
    8000201c:	02010413          	addi	s0,sp,32
    80002020:	00004497          	auipc	s1,0x4
    80002024:	85048493          	addi	s1,s1,-1968 # 80005870 <tickslock>
    80002028:	00048513          	mv	a0,s1
    8000202c:	00001097          	auipc	ra,0x1
    80002030:	420080e7          	jalr	1056(ra) # 8000344c <acquire>
    80002034:	00002717          	auipc	a4,0x2
    80002038:	73070713          	addi	a4,a4,1840 # 80004764 <ticks>
    8000203c:	00072783          	lw	a5,0(a4)
    80002040:	01013403          	ld	s0,16(sp)
    80002044:	01813083          	ld	ra,24(sp)
    80002048:	00048513          	mv	a0,s1
    8000204c:	0017879b          	addiw	a5,a5,1
    80002050:	00813483          	ld	s1,8(sp)
    80002054:	00f72023          	sw	a5,0(a4)
    80002058:	02010113          	addi	sp,sp,32
    8000205c:	00001317          	auipc	t1,0x1
    80002060:	4bc30067          	jr	1212(t1) # 80003518 <release>

0000000080002064 <devintr>:
    80002064:	142027f3          	csrr	a5,scause
    80002068:	00000513          	li	a0,0
    8000206c:	0007c463          	bltz	a5,80002074 <devintr+0x10>
    80002070:	00008067          	ret
    80002074:	fe010113          	addi	sp,sp,-32
    80002078:	00813823          	sd	s0,16(sp)
    8000207c:	00113c23          	sd	ra,24(sp)
    80002080:	00913423          	sd	s1,8(sp)
    80002084:	02010413          	addi	s0,sp,32
    80002088:	0ff7f713          	andi	a4,a5,255
    8000208c:	00900693          	li	a3,9
    80002090:	04d70c63          	beq	a4,a3,800020e8 <devintr+0x84>
    80002094:	fff00713          	li	a4,-1
    80002098:	03f71713          	slli	a4,a4,0x3f
    8000209c:	00170713          	addi	a4,a4,1
    800020a0:	00e78c63          	beq	a5,a4,800020b8 <devintr+0x54>
    800020a4:	01813083          	ld	ra,24(sp)
    800020a8:	01013403          	ld	s0,16(sp)
    800020ac:	00813483          	ld	s1,8(sp)
    800020b0:	02010113          	addi	sp,sp,32
    800020b4:	00008067          	ret
    800020b8:	00000097          	auipc	ra,0x0
    800020bc:	c8c080e7          	jalr	-884(ra) # 80001d44 <cpuid>
    800020c0:	06050663          	beqz	a0,8000212c <devintr+0xc8>
    800020c4:	144027f3          	csrr	a5,sip
    800020c8:	ffd7f793          	andi	a5,a5,-3
    800020cc:	14479073          	csrw	sip,a5
    800020d0:	01813083          	ld	ra,24(sp)
    800020d4:	01013403          	ld	s0,16(sp)
    800020d8:	00813483          	ld	s1,8(sp)
    800020dc:	00200513          	li	a0,2
    800020e0:	02010113          	addi	sp,sp,32
    800020e4:	00008067          	ret
    800020e8:	00000097          	auipc	ra,0x0
    800020ec:	24c080e7          	jalr	588(ra) # 80002334 <plic_claim>
    800020f0:	00a00793          	li	a5,10
    800020f4:	00050493          	mv	s1,a0
    800020f8:	06f50663          	beq	a0,a5,80002164 <devintr+0x100>
    800020fc:	00100513          	li	a0,1
    80002100:	fa0482e3          	beqz	s1,800020a4 <devintr+0x40>
    80002104:	00048593          	mv	a1,s1
    80002108:	00002517          	auipc	a0,0x2
    8000210c:	02850513          	addi	a0,a0,40 # 80004130 <bntOne+0xd8>
    80002110:	00000097          	auipc	ra,0x0
    80002114:	668080e7          	jalr	1640(ra) # 80002778 <__printf>
    80002118:	00048513          	mv	a0,s1
    8000211c:	00000097          	auipc	ra,0x0
    80002120:	250080e7          	jalr	592(ra) # 8000236c <plic_complete>
    80002124:	00100513          	li	a0,1
    80002128:	f7dff06f          	j	800020a4 <devintr+0x40>
    8000212c:	00003517          	auipc	a0,0x3
    80002130:	74450513          	addi	a0,a0,1860 # 80005870 <tickslock>
    80002134:	00001097          	auipc	ra,0x1
    80002138:	318080e7          	jalr	792(ra) # 8000344c <acquire>
    8000213c:	00002717          	auipc	a4,0x2
    80002140:	62870713          	addi	a4,a4,1576 # 80004764 <ticks>
    80002144:	00072783          	lw	a5,0(a4)
    80002148:	00003517          	auipc	a0,0x3
    8000214c:	72850513          	addi	a0,a0,1832 # 80005870 <tickslock>
    80002150:	0017879b          	addiw	a5,a5,1
    80002154:	00f72023          	sw	a5,0(a4)
    80002158:	00001097          	auipc	ra,0x1
    8000215c:	3c0080e7          	jalr	960(ra) # 80003518 <release>
    80002160:	f65ff06f          	j	800020c4 <devintr+0x60>
    80002164:	00001097          	auipc	ra,0x1
    80002168:	f1c080e7          	jalr	-228(ra) # 80003080 <uartintr>
    8000216c:	fadff06f          	j	80002118 <devintr+0xb4>

0000000080002170 <kernelvec>:
    80002170:	f0010113          	addi	sp,sp,-256
    80002174:	00113023          	sd	ra,0(sp)
    80002178:	00213423          	sd	sp,8(sp)
    8000217c:	00313823          	sd	gp,16(sp)
    80002180:	00413c23          	sd	tp,24(sp)
    80002184:	02513023          	sd	t0,32(sp)
    80002188:	02613423          	sd	t1,40(sp)
    8000218c:	02713823          	sd	t2,48(sp)
    80002190:	02813c23          	sd	s0,56(sp)
    80002194:	04913023          	sd	s1,64(sp)
    80002198:	04a13423          	sd	a0,72(sp)
    8000219c:	04b13823          	sd	a1,80(sp)
    800021a0:	04c13c23          	sd	a2,88(sp)
    800021a4:	06d13023          	sd	a3,96(sp)
    800021a8:	06e13423          	sd	a4,104(sp)
    800021ac:	06f13823          	sd	a5,112(sp)
    800021b0:	07013c23          	sd	a6,120(sp)
    800021b4:	09113023          	sd	a7,128(sp)
    800021b8:	09213423          	sd	s2,136(sp)
    800021bc:	09313823          	sd	s3,144(sp)
    800021c0:	09413c23          	sd	s4,152(sp)
    800021c4:	0b513023          	sd	s5,160(sp)
    800021c8:	0b613423          	sd	s6,168(sp)
    800021cc:	0b713823          	sd	s7,176(sp)
    800021d0:	0b813c23          	sd	s8,184(sp)
    800021d4:	0d913023          	sd	s9,192(sp)
    800021d8:	0da13423          	sd	s10,200(sp)
    800021dc:	0db13823          	sd	s11,208(sp)
    800021e0:	0dc13c23          	sd	t3,216(sp)
    800021e4:	0fd13023          	sd	t4,224(sp)
    800021e8:	0fe13423          	sd	t5,232(sp)
    800021ec:	0ff13823          	sd	t6,240(sp)
    800021f0:	cd5ff0ef          	jal	ra,80001ec4 <kerneltrap>
    800021f4:	00013083          	ld	ra,0(sp)
    800021f8:	00813103          	ld	sp,8(sp)
    800021fc:	01013183          	ld	gp,16(sp)
    80002200:	02013283          	ld	t0,32(sp)
    80002204:	02813303          	ld	t1,40(sp)
    80002208:	03013383          	ld	t2,48(sp)
    8000220c:	03813403          	ld	s0,56(sp)
    80002210:	04013483          	ld	s1,64(sp)
    80002214:	04813503          	ld	a0,72(sp)
    80002218:	05013583          	ld	a1,80(sp)
    8000221c:	05813603          	ld	a2,88(sp)
    80002220:	06013683          	ld	a3,96(sp)
    80002224:	06813703          	ld	a4,104(sp)
    80002228:	07013783          	ld	a5,112(sp)
    8000222c:	07813803          	ld	a6,120(sp)
    80002230:	08013883          	ld	a7,128(sp)
    80002234:	08813903          	ld	s2,136(sp)
    80002238:	09013983          	ld	s3,144(sp)
    8000223c:	09813a03          	ld	s4,152(sp)
    80002240:	0a013a83          	ld	s5,160(sp)
    80002244:	0a813b03          	ld	s6,168(sp)
    80002248:	0b013b83          	ld	s7,176(sp)
    8000224c:	0b813c03          	ld	s8,184(sp)
    80002250:	0c013c83          	ld	s9,192(sp)
    80002254:	0c813d03          	ld	s10,200(sp)
    80002258:	0d013d83          	ld	s11,208(sp)
    8000225c:	0d813e03          	ld	t3,216(sp)
    80002260:	0e013e83          	ld	t4,224(sp)
    80002264:	0e813f03          	ld	t5,232(sp)
    80002268:	0f013f83          	ld	t6,240(sp)
    8000226c:	10010113          	addi	sp,sp,256
    80002270:	10200073          	sret
    80002274:	00000013          	nop
    80002278:	00000013          	nop
    8000227c:	00000013          	nop

0000000080002280 <timervec>:
    80002280:	34051573          	csrrw	a0,mscratch,a0
    80002284:	00b53023          	sd	a1,0(a0)
    80002288:	00c53423          	sd	a2,8(a0)
    8000228c:	00d53823          	sd	a3,16(a0)
    80002290:	01853583          	ld	a1,24(a0)
    80002294:	02053603          	ld	a2,32(a0)
    80002298:	0005b683          	ld	a3,0(a1)
    8000229c:	00c686b3          	add	a3,a3,a2
    800022a0:	00d5b023          	sd	a3,0(a1)
    800022a4:	00200593          	li	a1,2
    800022a8:	14459073          	csrw	sip,a1
    800022ac:	01053683          	ld	a3,16(a0)
    800022b0:	00853603          	ld	a2,8(a0)
    800022b4:	00053583          	ld	a1,0(a0)
    800022b8:	34051573          	csrrw	a0,mscratch,a0
    800022bc:	30200073          	mret

00000000800022c0 <plicinit>:
    800022c0:	ff010113          	addi	sp,sp,-16
    800022c4:	00813423          	sd	s0,8(sp)
    800022c8:	01010413          	addi	s0,sp,16
    800022cc:	00813403          	ld	s0,8(sp)
    800022d0:	0c0007b7          	lui	a5,0xc000
    800022d4:	00100713          	li	a4,1
    800022d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800022dc:	00e7a223          	sw	a4,4(a5)
    800022e0:	01010113          	addi	sp,sp,16
    800022e4:	00008067          	ret

00000000800022e8 <plicinithart>:
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00813023          	sd	s0,0(sp)
    800022f0:	00113423          	sd	ra,8(sp)
    800022f4:	01010413          	addi	s0,sp,16
    800022f8:	00000097          	auipc	ra,0x0
    800022fc:	a4c080e7          	jalr	-1460(ra) # 80001d44 <cpuid>
    80002300:	0085171b          	slliw	a4,a0,0x8
    80002304:	0c0027b7          	lui	a5,0xc002
    80002308:	00e787b3          	add	a5,a5,a4
    8000230c:	40200713          	li	a4,1026
    80002310:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002314:	00813083          	ld	ra,8(sp)
    80002318:	00013403          	ld	s0,0(sp)
    8000231c:	00d5151b          	slliw	a0,a0,0xd
    80002320:	0c2017b7          	lui	a5,0xc201
    80002324:	00a78533          	add	a0,a5,a0
    80002328:	00052023          	sw	zero,0(a0)
    8000232c:	01010113          	addi	sp,sp,16
    80002330:	00008067          	ret

0000000080002334 <plic_claim>:
    80002334:	ff010113          	addi	sp,sp,-16
    80002338:	00813023          	sd	s0,0(sp)
    8000233c:	00113423          	sd	ra,8(sp)
    80002340:	01010413          	addi	s0,sp,16
    80002344:	00000097          	auipc	ra,0x0
    80002348:	a00080e7          	jalr	-1536(ra) # 80001d44 <cpuid>
    8000234c:	00813083          	ld	ra,8(sp)
    80002350:	00013403          	ld	s0,0(sp)
    80002354:	00d5151b          	slliw	a0,a0,0xd
    80002358:	0c2017b7          	lui	a5,0xc201
    8000235c:	00a78533          	add	a0,a5,a0
    80002360:	00452503          	lw	a0,4(a0)
    80002364:	01010113          	addi	sp,sp,16
    80002368:	00008067          	ret

000000008000236c <plic_complete>:
    8000236c:	fe010113          	addi	sp,sp,-32
    80002370:	00813823          	sd	s0,16(sp)
    80002374:	00913423          	sd	s1,8(sp)
    80002378:	00113c23          	sd	ra,24(sp)
    8000237c:	02010413          	addi	s0,sp,32
    80002380:	00050493          	mv	s1,a0
    80002384:	00000097          	auipc	ra,0x0
    80002388:	9c0080e7          	jalr	-1600(ra) # 80001d44 <cpuid>
    8000238c:	01813083          	ld	ra,24(sp)
    80002390:	01013403          	ld	s0,16(sp)
    80002394:	00d5179b          	slliw	a5,a0,0xd
    80002398:	0c201737          	lui	a4,0xc201
    8000239c:	00f707b3          	add	a5,a4,a5
    800023a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800023a4:	00813483          	ld	s1,8(sp)
    800023a8:	02010113          	addi	sp,sp,32
    800023ac:	00008067          	ret

00000000800023b0 <consolewrite>:
    800023b0:	fb010113          	addi	sp,sp,-80
    800023b4:	04813023          	sd	s0,64(sp)
    800023b8:	04113423          	sd	ra,72(sp)
    800023bc:	02913c23          	sd	s1,56(sp)
    800023c0:	03213823          	sd	s2,48(sp)
    800023c4:	03313423          	sd	s3,40(sp)
    800023c8:	03413023          	sd	s4,32(sp)
    800023cc:	01513c23          	sd	s5,24(sp)
    800023d0:	05010413          	addi	s0,sp,80
    800023d4:	06c05c63          	blez	a2,8000244c <consolewrite+0x9c>
    800023d8:	00060993          	mv	s3,a2
    800023dc:	00050a13          	mv	s4,a0
    800023e0:	00058493          	mv	s1,a1
    800023e4:	00000913          	li	s2,0
    800023e8:	fff00a93          	li	s5,-1
    800023ec:	01c0006f          	j	80002408 <consolewrite+0x58>
    800023f0:	fbf44503          	lbu	a0,-65(s0)
    800023f4:	0019091b          	addiw	s2,s2,1
    800023f8:	00148493          	addi	s1,s1,1
    800023fc:	00001097          	auipc	ra,0x1
    80002400:	a9c080e7          	jalr	-1380(ra) # 80002e98 <uartputc>
    80002404:	03298063          	beq	s3,s2,80002424 <consolewrite+0x74>
    80002408:	00048613          	mv	a2,s1
    8000240c:	00100693          	li	a3,1
    80002410:	000a0593          	mv	a1,s4
    80002414:	fbf40513          	addi	a0,s0,-65
    80002418:	00000097          	auipc	ra,0x0
    8000241c:	9e4080e7          	jalr	-1564(ra) # 80001dfc <either_copyin>
    80002420:	fd5518e3          	bne	a0,s5,800023f0 <consolewrite+0x40>
    80002424:	04813083          	ld	ra,72(sp)
    80002428:	04013403          	ld	s0,64(sp)
    8000242c:	03813483          	ld	s1,56(sp)
    80002430:	02813983          	ld	s3,40(sp)
    80002434:	02013a03          	ld	s4,32(sp)
    80002438:	01813a83          	ld	s5,24(sp)
    8000243c:	00090513          	mv	a0,s2
    80002440:	03013903          	ld	s2,48(sp)
    80002444:	05010113          	addi	sp,sp,80
    80002448:	00008067          	ret
    8000244c:	00000913          	li	s2,0
    80002450:	fd5ff06f          	j	80002424 <consolewrite+0x74>

0000000080002454 <consoleread>:
    80002454:	f9010113          	addi	sp,sp,-112
    80002458:	06813023          	sd	s0,96(sp)
    8000245c:	04913c23          	sd	s1,88(sp)
    80002460:	05213823          	sd	s2,80(sp)
    80002464:	05313423          	sd	s3,72(sp)
    80002468:	05413023          	sd	s4,64(sp)
    8000246c:	03513c23          	sd	s5,56(sp)
    80002470:	03613823          	sd	s6,48(sp)
    80002474:	03713423          	sd	s7,40(sp)
    80002478:	03813023          	sd	s8,32(sp)
    8000247c:	06113423          	sd	ra,104(sp)
    80002480:	01913c23          	sd	s9,24(sp)
    80002484:	07010413          	addi	s0,sp,112
    80002488:	00060b93          	mv	s7,a2
    8000248c:	00050913          	mv	s2,a0
    80002490:	00058c13          	mv	s8,a1
    80002494:	00060b1b          	sext.w	s6,a2
    80002498:	00003497          	auipc	s1,0x3
    8000249c:	3f048493          	addi	s1,s1,1008 # 80005888 <cons>
    800024a0:	00400993          	li	s3,4
    800024a4:	fff00a13          	li	s4,-1
    800024a8:	00a00a93          	li	s5,10
    800024ac:	05705e63          	blez	s7,80002508 <consoleread+0xb4>
    800024b0:	09c4a703          	lw	a4,156(s1)
    800024b4:	0984a783          	lw	a5,152(s1)
    800024b8:	0007071b          	sext.w	a4,a4
    800024bc:	08e78463          	beq	a5,a4,80002544 <consoleread+0xf0>
    800024c0:	07f7f713          	andi	a4,a5,127
    800024c4:	00e48733          	add	a4,s1,a4
    800024c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800024cc:	0017869b          	addiw	a3,a5,1
    800024d0:	08d4ac23          	sw	a3,152(s1)
    800024d4:	00070c9b          	sext.w	s9,a4
    800024d8:	0b370663          	beq	a4,s3,80002584 <consoleread+0x130>
    800024dc:	00100693          	li	a3,1
    800024e0:	f9f40613          	addi	a2,s0,-97
    800024e4:	000c0593          	mv	a1,s8
    800024e8:	00090513          	mv	a0,s2
    800024ec:	f8e40fa3          	sb	a4,-97(s0)
    800024f0:	00000097          	auipc	ra,0x0
    800024f4:	8c0080e7          	jalr	-1856(ra) # 80001db0 <either_copyout>
    800024f8:	01450863          	beq	a0,s4,80002508 <consoleread+0xb4>
    800024fc:	001c0c13          	addi	s8,s8,1
    80002500:	fffb8b9b          	addiw	s7,s7,-1
    80002504:	fb5c94e3          	bne	s9,s5,800024ac <consoleread+0x58>
    80002508:	000b851b          	sext.w	a0,s7
    8000250c:	06813083          	ld	ra,104(sp)
    80002510:	06013403          	ld	s0,96(sp)
    80002514:	05813483          	ld	s1,88(sp)
    80002518:	05013903          	ld	s2,80(sp)
    8000251c:	04813983          	ld	s3,72(sp)
    80002520:	04013a03          	ld	s4,64(sp)
    80002524:	03813a83          	ld	s5,56(sp)
    80002528:	02813b83          	ld	s7,40(sp)
    8000252c:	02013c03          	ld	s8,32(sp)
    80002530:	01813c83          	ld	s9,24(sp)
    80002534:	40ab053b          	subw	a0,s6,a0
    80002538:	03013b03          	ld	s6,48(sp)
    8000253c:	07010113          	addi	sp,sp,112
    80002540:	00008067          	ret
    80002544:	00001097          	auipc	ra,0x1
    80002548:	1d8080e7          	jalr	472(ra) # 8000371c <push_on>
    8000254c:	0984a703          	lw	a4,152(s1)
    80002550:	09c4a783          	lw	a5,156(s1)
    80002554:	0007879b          	sext.w	a5,a5
    80002558:	fef70ce3          	beq	a4,a5,80002550 <consoleread+0xfc>
    8000255c:	00001097          	auipc	ra,0x1
    80002560:	234080e7          	jalr	564(ra) # 80003790 <pop_on>
    80002564:	0984a783          	lw	a5,152(s1)
    80002568:	07f7f713          	andi	a4,a5,127
    8000256c:	00e48733          	add	a4,s1,a4
    80002570:	01874703          	lbu	a4,24(a4)
    80002574:	0017869b          	addiw	a3,a5,1
    80002578:	08d4ac23          	sw	a3,152(s1)
    8000257c:	00070c9b          	sext.w	s9,a4
    80002580:	f5371ee3          	bne	a4,s3,800024dc <consoleread+0x88>
    80002584:	000b851b          	sext.w	a0,s7
    80002588:	f96bf2e3          	bgeu	s7,s6,8000250c <consoleread+0xb8>
    8000258c:	08f4ac23          	sw	a5,152(s1)
    80002590:	f7dff06f          	j	8000250c <consoleread+0xb8>

0000000080002594 <consputc>:
    80002594:	10000793          	li	a5,256
    80002598:	00f50663          	beq	a0,a5,800025a4 <consputc+0x10>
    8000259c:	00001317          	auipc	t1,0x1
    800025a0:	9f430067          	jr	-1548(t1) # 80002f90 <uartputc_sync>
    800025a4:	ff010113          	addi	sp,sp,-16
    800025a8:	00113423          	sd	ra,8(sp)
    800025ac:	00813023          	sd	s0,0(sp)
    800025b0:	01010413          	addi	s0,sp,16
    800025b4:	00800513          	li	a0,8
    800025b8:	00001097          	auipc	ra,0x1
    800025bc:	9d8080e7          	jalr	-1576(ra) # 80002f90 <uartputc_sync>
    800025c0:	02000513          	li	a0,32
    800025c4:	00001097          	auipc	ra,0x1
    800025c8:	9cc080e7          	jalr	-1588(ra) # 80002f90 <uartputc_sync>
    800025cc:	00013403          	ld	s0,0(sp)
    800025d0:	00813083          	ld	ra,8(sp)
    800025d4:	00800513          	li	a0,8
    800025d8:	01010113          	addi	sp,sp,16
    800025dc:	00001317          	auipc	t1,0x1
    800025e0:	9b430067          	jr	-1612(t1) # 80002f90 <uartputc_sync>

00000000800025e4 <consoleintr>:
    800025e4:	fe010113          	addi	sp,sp,-32
    800025e8:	00813823          	sd	s0,16(sp)
    800025ec:	00913423          	sd	s1,8(sp)
    800025f0:	01213023          	sd	s2,0(sp)
    800025f4:	00113c23          	sd	ra,24(sp)
    800025f8:	02010413          	addi	s0,sp,32
    800025fc:	00003917          	auipc	s2,0x3
    80002600:	28c90913          	addi	s2,s2,652 # 80005888 <cons>
    80002604:	00050493          	mv	s1,a0
    80002608:	00090513          	mv	a0,s2
    8000260c:	00001097          	auipc	ra,0x1
    80002610:	e40080e7          	jalr	-448(ra) # 8000344c <acquire>
    80002614:	02048c63          	beqz	s1,8000264c <consoleintr+0x68>
    80002618:	0a092783          	lw	a5,160(s2)
    8000261c:	09892703          	lw	a4,152(s2)
    80002620:	07f00693          	li	a3,127
    80002624:	40e7873b          	subw	a4,a5,a4
    80002628:	02e6e263          	bltu	a3,a4,8000264c <consoleintr+0x68>
    8000262c:	00d00713          	li	a4,13
    80002630:	04e48063          	beq	s1,a4,80002670 <consoleintr+0x8c>
    80002634:	07f7f713          	andi	a4,a5,127
    80002638:	00e90733          	add	a4,s2,a4
    8000263c:	0017879b          	addiw	a5,a5,1
    80002640:	0af92023          	sw	a5,160(s2)
    80002644:	00970c23          	sb	s1,24(a4)
    80002648:	08f92e23          	sw	a5,156(s2)
    8000264c:	01013403          	ld	s0,16(sp)
    80002650:	01813083          	ld	ra,24(sp)
    80002654:	00813483          	ld	s1,8(sp)
    80002658:	00013903          	ld	s2,0(sp)
    8000265c:	00003517          	auipc	a0,0x3
    80002660:	22c50513          	addi	a0,a0,556 # 80005888 <cons>
    80002664:	02010113          	addi	sp,sp,32
    80002668:	00001317          	auipc	t1,0x1
    8000266c:	eb030067          	jr	-336(t1) # 80003518 <release>
    80002670:	00a00493          	li	s1,10
    80002674:	fc1ff06f          	j	80002634 <consoleintr+0x50>

0000000080002678 <consoleinit>:
    80002678:	fe010113          	addi	sp,sp,-32
    8000267c:	00113c23          	sd	ra,24(sp)
    80002680:	00813823          	sd	s0,16(sp)
    80002684:	00913423          	sd	s1,8(sp)
    80002688:	02010413          	addi	s0,sp,32
    8000268c:	00003497          	auipc	s1,0x3
    80002690:	1fc48493          	addi	s1,s1,508 # 80005888 <cons>
    80002694:	00048513          	mv	a0,s1
    80002698:	00002597          	auipc	a1,0x2
    8000269c:	af058593          	addi	a1,a1,-1296 # 80004188 <bntOne+0x130>
    800026a0:	00001097          	auipc	ra,0x1
    800026a4:	d88080e7          	jalr	-632(ra) # 80003428 <initlock>
    800026a8:	00000097          	auipc	ra,0x0
    800026ac:	7ac080e7          	jalr	1964(ra) # 80002e54 <uartinit>
    800026b0:	01813083          	ld	ra,24(sp)
    800026b4:	01013403          	ld	s0,16(sp)
    800026b8:	00000797          	auipc	a5,0x0
    800026bc:	d9c78793          	addi	a5,a5,-612 # 80002454 <consoleread>
    800026c0:	0af4bc23          	sd	a5,184(s1)
    800026c4:	00000797          	auipc	a5,0x0
    800026c8:	cec78793          	addi	a5,a5,-788 # 800023b0 <consolewrite>
    800026cc:	0cf4b023          	sd	a5,192(s1)
    800026d0:	00813483          	ld	s1,8(sp)
    800026d4:	02010113          	addi	sp,sp,32
    800026d8:	00008067          	ret

00000000800026dc <console_read>:
    800026dc:	ff010113          	addi	sp,sp,-16
    800026e0:	00813423          	sd	s0,8(sp)
    800026e4:	01010413          	addi	s0,sp,16
    800026e8:	00813403          	ld	s0,8(sp)
    800026ec:	00003317          	auipc	t1,0x3
    800026f0:	25433303          	ld	t1,596(t1) # 80005940 <devsw+0x10>
    800026f4:	01010113          	addi	sp,sp,16
    800026f8:	00030067          	jr	t1

00000000800026fc <console_write>:
    800026fc:	ff010113          	addi	sp,sp,-16
    80002700:	00813423          	sd	s0,8(sp)
    80002704:	01010413          	addi	s0,sp,16
    80002708:	00813403          	ld	s0,8(sp)
    8000270c:	00003317          	auipc	t1,0x3
    80002710:	23c33303          	ld	t1,572(t1) # 80005948 <devsw+0x18>
    80002714:	01010113          	addi	sp,sp,16
    80002718:	00030067          	jr	t1

000000008000271c <panic>:
    8000271c:	fe010113          	addi	sp,sp,-32
    80002720:	00113c23          	sd	ra,24(sp)
    80002724:	00813823          	sd	s0,16(sp)
    80002728:	00913423          	sd	s1,8(sp)
    8000272c:	02010413          	addi	s0,sp,32
    80002730:	00050493          	mv	s1,a0
    80002734:	00002517          	auipc	a0,0x2
    80002738:	a5c50513          	addi	a0,a0,-1444 # 80004190 <bntOne+0x138>
    8000273c:	00003797          	auipc	a5,0x3
    80002740:	2a07a623          	sw	zero,684(a5) # 800059e8 <pr+0x18>
    80002744:	00000097          	auipc	ra,0x0
    80002748:	034080e7          	jalr	52(ra) # 80002778 <__printf>
    8000274c:	00048513          	mv	a0,s1
    80002750:	00000097          	auipc	ra,0x0
    80002754:	028080e7          	jalr	40(ra) # 80002778 <__printf>
    80002758:	00002517          	auipc	a0,0x2
    8000275c:	a1850513          	addi	a0,a0,-1512 # 80004170 <bntOne+0x118>
    80002760:	00000097          	auipc	ra,0x0
    80002764:	018080e7          	jalr	24(ra) # 80002778 <__printf>
    80002768:	00100793          	li	a5,1
    8000276c:	00002717          	auipc	a4,0x2
    80002770:	fef72e23          	sw	a5,-4(a4) # 80004768 <panicked>
    80002774:	0000006f          	j	80002774 <panic+0x58>

0000000080002778 <__printf>:
    80002778:	f3010113          	addi	sp,sp,-208
    8000277c:	08813023          	sd	s0,128(sp)
    80002780:	07313423          	sd	s3,104(sp)
    80002784:	09010413          	addi	s0,sp,144
    80002788:	05813023          	sd	s8,64(sp)
    8000278c:	08113423          	sd	ra,136(sp)
    80002790:	06913c23          	sd	s1,120(sp)
    80002794:	07213823          	sd	s2,112(sp)
    80002798:	07413023          	sd	s4,96(sp)
    8000279c:	05513c23          	sd	s5,88(sp)
    800027a0:	05613823          	sd	s6,80(sp)
    800027a4:	05713423          	sd	s7,72(sp)
    800027a8:	03913c23          	sd	s9,56(sp)
    800027ac:	03a13823          	sd	s10,48(sp)
    800027b0:	03b13423          	sd	s11,40(sp)
    800027b4:	00003317          	auipc	t1,0x3
    800027b8:	21c30313          	addi	t1,t1,540 # 800059d0 <pr>
    800027bc:	01832c03          	lw	s8,24(t1)
    800027c0:	00b43423          	sd	a1,8(s0)
    800027c4:	00c43823          	sd	a2,16(s0)
    800027c8:	00d43c23          	sd	a3,24(s0)
    800027cc:	02e43023          	sd	a4,32(s0)
    800027d0:	02f43423          	sd	a5,40(s0)
    800027d4:	03043823          	sd	a6,48(s0)
    800027d8:	03143c23          	sd	a7,56(s0)
    800027dc:	00050993          	mv	s3,a0
    800027e0:	4a0c1663          	bnez	s8,80002c8c <__printf+0x514>
    800027e4:	60098c63          	beqz	s3,80002dfc <__printf+0x684>
    800027e8:	0009c503          	lbu	a0,0(s3)
    800027ec:	00840793          	addi	a5,s0,8
    800027f0:	f6f43c23          	sd	a5,-136(s0)
    800027f4:	00000493          	li	s1,0
    800027f8:	22050063          	beqz	a0,80002a18 <__printf+0x2a0>
    800027fc:	00002a37          	lui	s4,0x2
    80002800:	00018ab7          	lui	s5,0x18
    80002804:	000f4b37          	lui	s6,0xf4
    80002808:	00989bb7          	lui	s7,0x989
    8000280c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002810:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002814:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002818:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000281c:	00148c9b          	addiw	s9,s1,1
    80002820:	02500793          	li	a5,37
    80002824:	01998933          	add	s2,s3,s9
    80002828:	38f51263          	bne	a0,a5,80002bac <__printf+0x434>
    8000282c:	00094783          	lbu	a5,0(s2)
    80002830:	00078c9b          	sext.w	s9,a5
    80002834:	1e078263          	beqz	a5,80002a18 <__printf+0x2a0>
    80002838:	0024849b          	addiw	s1,s1,2
    8000283c:	07000713          	li	a4,112
    80002840:	00998933          	add	s2,s3,s1
    80002844:	38e78a63          	beq	a5,a4,80002bd8 <__printf+0x460>
    80002848:	20f76863          	bltu	a4,a5,80002a58 <__printf+0x2e0>
    8000284c:	42a78863          	beq	a5,a0,80002c7c <__printf+0x504>
    80002850:	06400713          	li	a4,100
    80002854:	40e79663          	bne	a5,a4,80002c60 <__printf+0x4e8>
    80002858:	f7843783          	ld	a5,-136(s0)
    8000285c:	0007a603          	lw	a2,0(a5)
    80002860:	00878793          	addi	a5,a5,8
    80002864:	f6f43c23          	sd	a5,-136(s0)
    80002868:	42064a63          	bltz	a2,80002c9c <__printf+0x524>
    8000286c:	00a00713          	li	a4,10
    80002870:	02e677bb          	remuw	a5,a2,a4
    80002874:	00002d97          	auipc	s11,0x2
    80002878:	944d8d93          	addi	s11,s11,-1724 # 800041b8 <digits>
    8000287c:	00900593          	li	a1,9
    80002880:	0006051b          	sext.w	a0,a2
    80002884:	00000c93          	li	s9,0
    80002888:	02079793          	slli	a5,a5,0x20
    8000288c:	0207d793          	srli	a5,a5,0x20
    80002890:	00fd87b3          	add	a5,s11,a5
    80002894:	0007c783          	lbu	a5,0(a5)
    80002898:	02e656bb          	divuw	a3,a2,a4
    8000289c:	f8f40023          	sb	a5,-128(s0)
    800028a0:	14c5d863          	bge	a1,a2,800029f0 <__printf+0x278>
    800028a4:	06300593          	li	a1,99
    800028a8:	00100c93          	li	s9,1
    800028ac:	02e6f7bb          	remuw	a5,a3,a4
    800028b0:	02079793          	slli	a5,a5,0x20
    800028b4:	0207d793          	srli	a5,a5,0x20
    800028b8:	00fd87b3          	add	a5,s11,a5
    800028bc:	0007c783          	lbu	a5,0(a5)
    800028c0:	02e6d73b          	divuw	a4,a3,a4
    800028c4:	f8f400a3          	sb	a5,-127(s0)
    800028c8:	12a5f463          	bgeu	a1,a0,800029f0 <__printf+0x278>
    800028cc:	00a00693          	li	a3,10
    800028d0:	00900593          	li	a1,9
    800028d4:	02d777bb          	remuw	a5,a4,a3
    800028d8:	02079793          	slli	a5,a5,0x20
    800028dc:	0207d793          	srli	a5,a5,0x20
    800028e0:	00fd87b3          	add	a5,s11,a5
    800028e4:	0007c503          	lbu	a0,0(a5)
    800028e8:	02d757bb          	divuw	a5,a4,a3
    800028ec:	f8a40123          	sb	a0,-126(s0)
    800028f0:	48e5f263          	bgeu	a1,a4,80002d74 <__printf+0x5fc>
    800028f4:	06300513          	li	a0,99
    800028f8:	02d7f5bb          	remuw	a1,a5,a3
    800028fc:	02059593          	slli	a1,a1,0x20
    80002900:	0205d593          	srli	a1,a1,0x20
    80002904:	00bd85b3          	add	a1,s11,a1
    80002908:	0005c583          	lbu	a1,0(a1)
    8000290c:	02d7d7bb          	divuw	a5,a5,a3
    80002910:	f8b401a3          	sb	a1,-125(s0)
    80002914:	48e57263          	bgeu	a0,a4,80002d98 <__printf+0x620>
    80002918:	3e700513          	li	a0,999
    8000291c:	02d7f5bb          	remuw	a1,a5,a3
    80002920:	02059593          	slli	a1,a1,0x20
    80002924:	0205d593          	srli	a1,a1,0x20
    80002928:	00bd85b3          	add	a1,s11,a1
    8000292c:	0005c583          	lbu	a1,0(a1)
    80002930:	02d7d7bb          	divuw	a5,a5,a3
    80002934:	f8b40223          	sb	a1,-124(s0)
    80002938:	46e57663          	bgeu	a0,a4,80002da4 <__printf+0x62c>
    8000293c:	02d7f5bb          	remuw	a1,a5,a3
    80002940:	02059593          	slli	a1,a1,0x20
    80002944:	0205d593          	srli	a1,a1,0x20
    80002948:	00bd85b3          	add	a1,s11,a1
    8000294c:	0005c583          	lbu	a1,0(a1)
    80002950:	02d7d7bb          	divuw	a5,a5,a3
    80002954:	f8b402a3          	sb	a1,-123(s0)
    80002958:	46ea7863          	bgeu	s4,a4,80002dc8 <__printf+0x650>
    8000295c:	02d7f5bb          	remuw	a1,a5,a3
    80002960:	02059593          	slli	a1,a1,0x20
    80002964:	0205d593          	srli	a1,a1,0x20
    80002968:	00bd85b3          	add	a1,s11,a1
    8000296c:	0005c583          	lbu	a1,0(a1)
    80002970:	02d7d7bb          	divuw	a5,a5,a3
    80002974:	f8b40323          	sb	a1,-122(s0)
    80002978:	3eeaf863          	bgeu	s5,a4,80002d68 <__printf+0x5f0>
    8000297c:	02d7f5bb          	remuw	a1,a5,a3
    80002980:	02059593          	slli	a1,a1,0x20
    80002984:	0205d593          	srli	a1,a1,0x20
    80002988:	00bd85b3          	add	a1,s11,a1
    8000298c:	0005c583          	lbu	a1,0(a1)
    80002990:	02d7d7bb          	divuw	a5,a5,a3
    80002994:	f8b403a3          	sb	a1,-121(s0)
    80002998:	42eb7e63          	bgeu	s6,a4,80002dd4 <__printf+0x65c>
    8000299c:	02d7f5bb          	remuw	a1,a5,a3
    800029a0:	02059593          	slli	a1,a1,0x20
    800029a4:	0205d593          	srli	a1,a1,0x20
    800029a8:	00bd85b3          	add	a1,s11,a1
    800029ac:	0005c583          	lbu	a1,0(a1)
    800029b0:	02d7d7bb          	divuw	a5,a5,a3
    800029b4:	f8b40423          	sb	a1,-120(s0)
    800029b8:	42ebfc63          	bgeu	s7,a4,80002df0 <__printf+0x678>
    800029bc:	02079793          	slli	a5,a5,0x20
    800029c0:	0207d793          	srli	a5,a5,0x20
    800029c4:	00fd8db3          	add	s11,s11,a5
    800029c8:	000dc703          	lbu	a4,0(s11)
    800029cc:	00a00793          	li	a5,10
    800029d0:	00900c93          	li	s9,9
    800029d4:	f8e404a3          	sb	a4,-119(s0)
    800029d8:	00065c63          	bgez	a2,800029f0 <__printf+0x278>
    800029dc:	f9040713          	addi	a4,s0,-112
    800029e0:	00f70733          	add	a4,a4,a5
    800029e4:	02d00693          	li	a3,45
    800029e8:	fed70823          	sb	a3,-16(a4)
    800029ec:	00078c93          	mv	s9,a5
    800029f0:	f8040793          	addi	a5,s0,-128
    800029f4:	01978cb3          	add	s9,a5,s9
    800029f8:	f7f40d13          	addi	s10,s0,-129
    800029fc:	000cc503          	lbu	a0,0(s9)
    80002a00:	fffc8c93          	addi	s9,s9,-1
    80002a04:	00000097          	auipc	ra,0x0
    80002a08:	b90080e7          	jalr	-1136(ra) # 80002594 <consputc>
    80002a0c:	ffac98e3          	bne	s9,s10,800029fc <__printf+0x284>
    80002a10:	00094503          	lbu	a0,0(s2)
    80002a14:	e00514e3          	bnez	a0,8000281c <__printf+0xa4>
    80002a18:	1a0c1663          	bnez	s8,80002bc4 <__printf+0x44c>
    80002a1c:	08813083          	ld	ra,136(sp)
    80002a20:	08013403          	ld	s0,128(sp)
    80002a24:	07813483          	ld	s1,120(sp)
    80002a28:	07013903          	ld	s2,112(sp)
    80002a2c:	06813983          	ld	s3,104(sp)
    80002a30:	06013a03          	ld	s4,96(sp)
    80002a34:	05813a83          	ld	s5,88(sp)
    80002a38:	05013b03          	ld	s6,80(sp)
    80002a3c:	04813b83          	ld	s7,72(sp)
    80002a40:	04013c03          	ld	s8,64(sp)
    80002a44:	03813c83          	ld	s9,56(sp)
    80002a48:	03013d03          	ld	s10,48(sp)
    80002a4c:	02813d83          	ld	s11,40(sp)
    80002a50:	0d010113          	addi	sp,sp,208
    80002a54:	00008067          	ret
    80002a58:	07300713          	li	a4,115
    80002a5c:	1ce78a63          	beq	a5,a4,80002c30 <__printf+0x4b8>
    80002a60:	07800713          	li	a4,120
    80002a64:	1ee79e63          	bne	a5,a4,80002c60 <__printf+0x4e8>
    80002a68:	f7843783          	ld	a5,-136(s0)
    80002a6c:	0007a703          	lw	a4,0(a5)
    80002a70:	00878793          	addi	a5,a5,8
    80002a74:	f6f43c23          	sd	a5,-136(s0)
    80002a78:	28074263          	bltz	a4,80002cfc <__printf+0x584>
    80002a7c:	00001d97          	auipc	s11,0x1
    80002a80:	73cd8d93          	addi	s11,s11,1852 # 800041b8 <digits>
    80002a84:	00f77793          	andi	a5,a4,15
    80002a88:	00fd87b3          	add	a5,s11,a5
    80002a8c:	0007c683          	lbu	a3,0(a5)
    80002a90:	00f00613          	li	a2,15
    80002a94:	0007079b          	sext.w	a5,a4
    80002a98:	f8d40023          	sb	a3,-128(s0)
    80002a9c:	0047559b          	srliw	a1,a4,0x4
    80002aa0:	0047569b          	srliw	a3,a4,0x4
    80002aa4:	00000c93          	li	s9,0
    80002aa8:	0ee65063          	bge	a2,a4,80002b88 <__printf+0x410>
    80002aac:	00f6f693          	andi	a3,a3,15
    80002ab0:	00dd86b3          	add	a3,s11,a3
    80002ab4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002ab8:	0087d79b          	srliw	a5,a5,0x8
    80002abc:	00100c93          	li	s9,1
    80002ac0:	f8d400a3          	sb	a3,-127(s0)
    80002ac4:	0cb67263          	bgeu	a2,a1,80002b88 <__printf+0x410>
    80002ac8:	00f7f693          	andi	a3,a5,15
    80002acc:	00dd86b3          	add	a3,s11,a3
    80002ad0:	0006c583          	lbu	a1,0(a3)
    80002ad4:	00f00613          	li	a2,15
    80002ad8:	0047d69b          	srliw	a3,a5,0x4
    80002adc:	f8b40123          	sb	a1,-126(s0)
    80002ae0:	0047d593          	srli	a1,a5,0x4
    80002ae4:	28f67e63          	bgeu	a2,a5,80002d80 <__printf+0x608>
    80002ae8:	00f6f693          	andi	a3,a3,15
    80002aec:	00dd86b3          	add	a3,s11,a3
    80002af0:	0006c503          	lbu	a0,0(a3)
    80002af4:	0087d813          	srli	a6,a5,0x8
    80002af8:	0087d69b          	srliw	a3,a5,0x8
    80002afc:	f8a401a3          	sb	a0,-125(s0)
    80002b00:	28b67663          	bgeu	a2,a1,80002d8c <__printf+0x614>
    80002b04:	00f6f693          	andi	a3,a3,15
    80002b08:	00dd86b3          	add	a3,s11,a3
    80002b0c:	0006c583          	lbu	a1,0(a3)
    80002b10:	00c7d513          	srli	a0,a5,0xc
    80002b14:	00c7d69b          	srliw	a3,a5,0xc
    80002b18:	f8b40223          	sb	a1,-124(s0)
    80002b1c:	29067a63          	bgeu	a2,a6,80002db0 <__printf+0x638>
    80002b20:	00f6f693          	andi	a3,a3,15
    80002b24:	00dd86b3          	add	a3,s11,a3
    80002b28:	0006c583          	lbu	a1,0(a3)
    80002b2c:	0107d813          	srli	a6,a5,0x10
    80002b30:	0107d69b          	srliw	a3,a5,0x10
    80002b34:	f8b402a3          	sb	a1,-123(s0)
    80002b38:	28a67263          	bgeu	a2,a0,80002dbc <__printf+0x644>
    80002b3c:	00f6f693          	andi	a3,a3,15
    80002b40:	00dd86b3          	add	a3,s11,a3
    80002b44:	0006c683          	lbu	a3,0(a3)
    80002b48:	0147d79b          	srliw	a5,a5,0x14
    80002b4c:	f8d40323          	sb	a3,-122(s0)
    80002b50:	21067663          	bgeu	a2,a6,80002d5c <__printf+0x5e4>
    80002b54:	02079793          	slli	a5,a5,0x20
    80002b58:	0207d793          	srli	a5,a5,0x20
    80002b5c:	00fd8db3          	add	s11,s11,a5
    80002b60:	000dc683          	lbu	a3,0(s11)
    80002b64:	00800793          	li	a5,8
    80002b68:	00700c93          	li	s9,7
    80002b6c:	f8d403a3          	sb	a3,-121(s0)
    80002b70:	00075c63          	bgez	a4,80002b88 <__printf+0x410>
    80002b74:	f9040713          	addi	a4,s0,-112
    80002b78:	00f70733          	add	a4,a4,a5
    80002b7c:	02d00693          	li	a3,45
    80002b80:	fed70823          	sb	a3,-16(a4)
    80002b84:	00078c93          	mv	s9,a5
    80002b88:	f8040793          	addi	a5,s0,-128
    80002b8c:	01978cb3          	add	s9,a5,s9
    80002b90:	f7f40d13          	addi	s10,s0,-129
    80002b94:	000cc503          	lbu	a0,0(s9)
    80002b98:	fffc8c93          	addi	s9,s9,-1
    80002b9c:	00000097          	auipc	ra,0x0
    80002ba0:	9f8080e7          	jalr	-1544(ra) # 80002594 <consputc>
    80002ba4:	ff9d18e3          	bne	s10,s9,80002b94 <__printf+0x41c>
    80002ba8:	0100006f          	j	80002bb8 <__printf+0x440>
    80002bac:	00000097          	auipc	ra,0x0
    80002bb0:	9e8080e7          	jalr	-1560(ra) # 80002594 <consputc>
    80002bb4:	000c8493          	mv	s1,s9
    80002bb8:	00094503          	lbu	a0,0(s2)
    80002bbc:	c60510e3          	bnez	a0,8000281c <__printf+0xa4>
    80002bc0:	e40c0ee3          	beqz	s8,80002a1c <__printf+0x2a4>
    80002bc4:	00003517          	auipc	a0,0x3
    80002bc8:	e0c50513          	addi	a0,a0,-500 # 800059d0 <pr>
    80002bcc:	00001097          	auipc	ra,0x1
    80002bd0:	94c080e7          	jalr	-1716(ra) # 80003518 <release>
    80002bd4:	e49ff06f          	j	80002a1c <__printf+0x2a4>
    80002bd8:	f7843783          	ld	a5,-136(s0)
    80002bdc:	03000513          	li	a0,48
    80002be0:	01000d13          	li	s10,16
    80002be4:	00878713          	addi	a4,a5,8
    80002be8:	0007bc83          	ld	s9,0(a5)
    80002bec:	f6e43c23          	sd	a4,-136(s0)
    80002bf0:	00000097          	auipc	ra,0x0
    80002bf4:	9a4080e7          	jalr	-1628(ra) # 80002594 <consputc>
    80002bf8:	07800513          	li	a0,120
    80002bfc:	00000097          	auipc	ra,0x0
    80002c00:	998080e7          	jalr	-1640(ra) # 80002594 <consputc>
    80002c04:	00001d97          	auipc	s11,0x1
    80002c08:	5b4d8d93          	addi	s11,s11,1460 # 800041b8 <digits>
    80002c0c:	03ccd793          	srli	a5,s9,0x3c
    80002c10:	00fd87b3          	add	a5,s11,a5
    80002c14:	0007c503          	lbu	a0,0(a5)
    80002c18:	fffd0d1b          	addiw	s10,s10,-1
    80002c1c:	004c9c93          	slli	s9,s9,0x4
    80002c20:	00000097          	auipc	ra,0x0
    80002c24:	974080e7          	jalr	-1676(ra) # 80002594 <consputc>
    80002c28:	fe0d12e3          	bnez	s10,80002c0c <__printf+0x494>
    80002c2c:	f8dff06f          	j	80002bb8 <__printf+0x440>
    80002c30:	f7843783          	ld	a5,-136(s0)
    80002c34:	0007bc83          	ld	s9,0(a5)
    80002c38:	00878793          	addi	a5,a5,8
    80002c3c:	f6f43c23          	sd	a5,-136(s0)
    80002c40:	000c9a63          	bnez	s9,80002c54 <__printf+0x4dc>
    80002c44:	1080006f          	j	80002d4c <__printf+0x5d4>
    80002c48:	001c8c93          	addi	s9,s9,1
    80002c4c:	00000097          	auipc	ra,0x0
    80002c50:	948080e7          	jalr	-1720(ra) # 80002594 <consputc>
    80002c54:	000cc503          	lbu	a0,0(s9)
    80002c58:	fe0518e3          	bnez	a0,80002c48 <__printf+0x4d0>
    80002c5c:	f5dff06f          	j	80002bb8 <__printf+0x440>
    80002c60:	02500513          	li	a0,37
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	930080e7          	jalr	-1744(ra) # 80002594 <consputc>
    80002c6c:	000c8513          	mv	a0,s9
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	924080e7          	jalr	-1756(ra) # 80002594 <consputc>
    80002c78:	f41ff06f          	j	80002bb8 <__printf+0x440>
    80002c7c:	02500513          	li	a0,37
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	914080e7          	jalr	-1772(ra) # 80002594 <consputc>
    80002c88:	f31ff06f          	j	80002bb8 <__printf+0x440>
    80002c8c:	00030513          	mv	a0,t1
    80002c90:	00000097          	auipc	ra,0x0
    80002c94:	7bc080e7          	jalr	1980(ra) # 8000344c <acquire>
    80002c98:	b4dff06f          	j	800027e4 <__printf+0x6c>
    80002c9c:	40c0053b          	negw	a0,a2
    80002ca0:	00a00713          	li	a4,10
    80002ca4:	02e576bb          	remuw	a3,a0,a4
    80002ca8:	00001d97          	auipc	s11,0x1
    80002cac:	510d8d93          	addi	s11,s11,1296 # 800041b8 <digits>
    80002cb0:	ff700593          	li	a1,-9
    80002cb4:	02069693          	slli	a3,a3,0x20
    80002cb8:	0206d693          	srli	a3,a3,0x20
    80002cbc:	00dd86b3          	add	a3,s11,a3
    80002cc0:	0006c683          	lbu	a3,0(a3)
    80002cc4:	02e557bb          	divuw	a5,a0,a4
    80002cc8:	f8d40023          	sb	a3,-128(s0)
    80002ccc:	10b65e63          	bge	a2,a1,80002de8 <__printf+0x670>
    80002cd0:	06300593          	li	a1,99
    80002cd4:	02e7f6bb          	remuw	a3,a5,a4
    80002cd8:	02069693          	slli	a3,a3,0x20
    80002cdc:	0206d693          	srli	a3,a3,0x20
    80002ce0:	00dd86b3          	add	a3,s11,a3
    80002ce4:	0006c683          	lbu	a3,0(a3)
    80002ce8:	02e7d73b          	divuw	a4,a5,a4
    80002cec:	00200793          	li	a5,2
    80002cf0:	f8d400a3          	sb	a3,-127(s0)
    80002cf4:	bca5ece3          	bltu	a1,a0,800028cc <__printf+0x154>
    80002cf8:	ce5ff06f          	j	800029dc <__printf+0x264>
    80002cfc:	40e007bb          	negw	a5,a4
    80002d00:	00001d97          	auipc	s11,0x1
    80002d04:	4b8d8d93          	addi	s11,s11,1208 # 800041b8 <digits>
    80002d08:	00f7f693          	andi	a3,a5,15
    80002d0c:	00dd86b3          	add	a3,s11,a3
    80002d10:	0006c583          	lbu	a1,0(a3)
    80002d14:	ff100613          	li	a2,-15
    80002d18:	0047d69b          	srliw	a3,a5,0x4
    80002d1c:	f8b40023          	sb	a1,-128(s0)
    80002d20:	0047d59b          	srliw	a1,a5,0x4
    80002d24:	0ac75e63          	bge	a4,a2,80002de0 <__printf+0x668>
    80002d28:	00f6f693          	andi	a3,a3,15
    80002d2c:	00dd86b3          	add	a3,s11,a3
    80002d30:	0006c603          	lbu	a2,0(a3)
    80002d34:	00f00693          	li	a3,15
    80002d38:	0087d79b          	srliw	a5,a5,0x8
    80002d3c:	f8c400a3          	sb	a2,-127(s0)
    80002d40:	d8b6e4e3          	bltu	a3,a1,80002ac8 <__printf+0x350>
    80002d44:	00200793          	li	a5,2
    80002d48:	e2dff06f          	j	80002b74 <__printf+0x3fc>
    80002d4c:	00001c97          	auipc	s9,0x1
    80002d50:	44cc8c93          	addi	s9,s9,1100 # 80004198 <bntOne+0x140>
    80002d54:	02800513          	li	a0,40
    80002d58:	ef1ff06f          	j	80002c48 <__printf+0x4d0>
    80002d5c:	00700793          	li	a5,7
    80002d60:	00600c93          	li	s9,6
    80002d64:	e0dff06f          	j	80002b70 <__printf+0x3f8>
    80002d68:	00700793          	li	a5,7
    80002d6c:	00600c93          	li	s9,6
    80002d70:	c69ff06f          	j	800029d8 <__printf+0x260>
    80002d74:	00300793          	li	a5,3
    80002d78:	00200c93          	li	s9,2
    80002d7c:	c5dff06f          	j	800029d8 <__printf+0x260>
    80002d80:	00300793          	li	a5,3
    80002d84:	00200c93          	li	s9,2
    80002d88:	de9ff06f          	j	80002b70 <__printf+0x3f8>
    80002d8c:	00400793          	li	a5,4
    80002d90:	00300c93          	li	s9,3
    80002d94:	dddff06f          	j	80002b70 <__printf+0x3f8>
    80002d98:	00400793          	li	a5,4
    80002d9c:	00300c93          	li	s9,3
    80002da0:	c39ff06f          	j	800029d8 <__printf+0x260>
    80002da4:	00500793          	li	a5,5
    80002da8:	00400c93          	li	s9,4
    80002dac:	c2dff06f          	j	800029d8 <__printf+0x260>
    80002db0:	00500793          	li	a5,5
    80002db4:	00400c93          	li	s9,4
    80002db8:	db9ff06f          	j	80002b70 <__printf+0x3f8>
    80002dbc:	00600793          	li	a5,6
    80002dc0:	00500c93          	li	s9,5
    80002dc4:	dadff06f          	j	80002b70 <__printf+0x3f8>
    80002dc8:	00600793          	li	a5,6
    80002dcc:	00500c93          	li	s9,5
    80002dd0:	c09ff06f          	j	800029d8 <__printf+0x260>
    80002dd4:	00800793          	li	a5,8
    80002dd8:	00700c93          	li	s9,7
    80002ddc:	bfdff06f          	j	800029d8 <__printf+0x260>
    80002de0:	00100793          	li	a5,1
    80002de4:	d91ff06f          	j	80002b74 <__printf+0x3fc>
    80002de8:	00100793          	li	a5,1
    80002dec:	bf1ff06f          	j	800029dc <__printf+0x264>
    80002df0:	00900793          	li	a5,9
    80002df4:	00800c93          	li	s9,8
    80002df8:	be1ff06f          	j	800029d8 <__printf+0x260>
    80002dfc:	00001517          	auipc	a0,0x1
    80002e00:	3a450513          	addi	a0,a0,932 # 800041a0 <bntOne+0x148>
    80002e04:	00000097          	auipc	ra,0x0
    80002e08:	918080e7          	jalr	-1768(ra) # 8000271c <panic>

0000000080002e0c <printfinit>:
    80002e0c:	fe010113          	addi	sp,sp,-32
    80002e10:	00813823          	sd	s0,16(sp)
    80002e14:	00913423          	sd	s1,8(sp)
    80002e18:	00113c23          	sd	ra,24(sp)
    80002e1c:	02010413          	addi	s0,sp,32
    80002e20:	00003497          	auipc	s1,0x3
    80002e24:	bb048493          	addi	s1,s1,-1104 # 800059d0 <pr>
    80002e28:	00048513          	mv	a0,s1
    80002e2c:	00001597          	auipc	a1,0x1
    80002e30:	38458593          	addi	a1,a1,900 # 800041b0 <bntOne+0x158>
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	5f4080e7          	jalr	1524(ra) # 80003428 <initlock>
    80002e3c:	01813083          	ld	ra,24(sp)
    80002e40:	01013403          	ld	s0,16(sp)
    80002e44:	0004ac23          	sw	zero,24(s1)
    80002e48:	00813483          	ld	s1,8(sp)
    80002e4c:	02010113          	addi	sp,sp,32
    80002e50:	00008067          	ret

0000000080002e54 <uartinit>:
    80002e54:	ff010113          	addi	sp,sp,-16
    80002e58:	00813423          	sd	s0,8(sp)
    80002e5c:	01010413          	addi	s0,sp,16
    80002e60:	100007b7          	lui	a5,0x10000
    80002e64:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002e68:	f8000713          	li	a4,-128
    80002e6c:	00e781a3          	sb	a4,3(a5)
    80002e70:	00300713          	li	a4,3
    80002e74:	00e78023          	sb	a4,0(a5)
    80002e78:	000780a3          	sb	zero,1(a5)
    80002e7c:	00e781a3          	sb	a4,3(a5)
    80002e80:	00700693          	li	a3,7
    80002e84:	00d78123          	sb	a3,2(a5)
    80002e88:	00e780a3          	sb	a4,1(a5)
    80002e8c:	00813403          	ld	s0,8(sp)
    80002e90:	01010113          	addi	sp,sp,16
    80002e94:	00008067          	ret

0000000080002e98 <uartputc>:
    80002e98:	00002797          	auipc	a5,0x2
    80002e9c:	8d07a783          	lw	a5,-1840(a5) # 80004768 <panicked>
    80002ea0:	00078463          	beqz	a5,80002ea8 <uartputc+0x10>
    80002ea4:	0000006f          	j	80002ea4 <uartputc+0xc>
    80002ea8:	fd010113          	addi	sp,sp,-48
    80002eac:	02813023          	sd	s0,32(sp)
    80002eb0:	00913c23          	sd	s1,24(sp)
    80002eb4:	01213823          	sd	s2,16(sp)
    80002eb8:	01313423          	sd	s3,8(sp)
    80002ebc:	02113423          	sd	ra,40(sp)
    80002ec0:	03010413          	addi	s0,sp,48
    80002ec4:	00002917          	auipc	s2,0x2
    80002ec8:	8ac90913          	addi	s2,s2,-1876 # 80004770 <uart_tx_r>
    80002ecc:	00093783          	ld	a5,0(s2)
    80002ed0:	00002497          	auipc	s1,0x2
    80002ed4:	8a848493          	addi	s1,s1,-1880 # 80004778 <uart_tx_w>
    80002ed8:	0004b703          	ld	a4,0(s1)
    80002edc:	02078693          	addi	a3,a5,32
    80002ee0:	00050993          	mv	s3,a0
    80002ee4:	02e69c63          	bne	a3,a4,80002f1c <uartputc+0x84>
    80002ee8:	00001097          	auipc	ra,0x1
    80002eec:	834080e7          	jalr	-1996(ra) # 8000371c <push_on>
    80002ef0:	00093783          	ld	a5,0(s2)
    80002ef4:	0004b703          	ld	a4,0(s1)
    80002ef8:	02078793          	addi	a5,a5,32
    80002efc:	00e79463          	bne	a5,a4,80002f04 <uartputc+0x6c>
    80002f00:	0000006f          	j	80002f00 <uartputc+0x68>
    80002f04:	00001097          	auipc	ra,0x1
    80002f08:	88c080e7          	jalr	-1908(ra) # 80003790 <pop_on>
    80002f0c:	00093783          	ld	a5,0(s2)
    80002f10:	0004b703          	ld	a4,0(s1)
    80002f14:	02078693          	addi	a3,a5,32
    80002f18:	fce688e3          	beq	a3,a4,80002ee8 <uartputc+0x50>
    80002f1c:	01f77693          	andi	a3,a4,31
    80002f20:	00003597          	auipc	a1,0x3
    80002f24:	ad058593          	addi	a1,a1,-1328 # 800059f0 <uart_tx_buf>
    80002f28:	00d586b3          	add	a3,a1,a3
    80002f2c:	00170713          	addi	a4,a4,1
    80002f30:	01368023          	sb	s3,0(a3)
    80002f34:	00e4b023          	sd	a4,0(s1)
    80002f38:	10000637          	lui	a2,0x10000
    80002f3c:	02f71063          	bne	a4,a5,80002f5c <uartputc+0xc4>
    80002f40:	0340006f          	j	80002f74 <uartputc+0xdc>
    80002f44:	00074703          	lbu	a4,0(a4)
    80002f48:	00f93023          	sd	a5,0(s2)
    80002f4c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002f50:	00093783          	ld	a5,0(s2)
    80002f54:	0004b703          	ld	a4,0(s1)
    80002f58:	00f70e63          	beq	a4,a5,80002f74 <uartputc+0xdc>
    80002f5c:	00564683          	lbu	a3,5(a2)
    80002f60:	01f7f713          	andi	a4,a5,31
    80002f64:	00e58733          	add	a4,a1,a4
    80002f68:	0206f693          	andi	a3,a3,32
    80002f6c:	00178793          	addi	a5,a5,1
    80002f70:	fc069ae3          	bnez	a3,80002f44 <uartputc+0xac>
    80002f74:	02813083          	ld	ra,40(sp)
    80002f78:	02013403          	ld	s0,32(sp)
    80002f7c:	01813483          	ld	s1,24(sp)
    80002f80:	01013903          	ld	s2,16(sp)
    80002f84:	00813983          	ld	s3,8(sp)
    80002f88:	03010113          	addi	sp,sp,48
    80002f8c:	00008067          	ret

0000000080002f90 <uartputc_sync>:
    80002f90:	ff010113          	addi	sp,sp,-16
    80002f94:	00813423          	sd	s0,8(sp)
    80002f98:	01010413          	addi	s0,sp,16
    80002f9c:	00001717          	auipc	a4,0x1
    80002fa0:	7cc72703          	lw	a4,1996(a4) # 80004768 <panicked>
    80002fa4:	02071663          	bnez	a4,80002fd0 <uartputc_sync+0x40>
    80002fa8:	00050793          	mv	a5,a0
    80002fac:	100006b7          	lui	a3,0x10000
    80002fb0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002fb4:	02077713          	andi	a4,a4,32
    80002fb8:	fe070ce3          	beqz	a4,80002fb0 <uartputc_sync+0x20>
    80002fbc:	0ff7f793          	andi	a5,a5,255
    80002fc0:	00f68023          	sb	a5,0(a3)
    80002fc4:	00813403          	ld	s0,8(sp)
    80002fc8:	01010113          	addi	sp,sp,16
    80002fcc:	00008067          	ret
    80002fd0:	0000006f          	j	80002fd0 <uartputc_sync+0x40>

0000000080002fd4 <uartstart>:
    80002fd4:	ff010113          	addi	sp,sp,-16
    80002fd8:	00813423          	sd	s0,8(sp)
    80002fdc:	01010413          	addi	s0,sp,16
    80002fe0:	00001617          	auipc	a2,0x1
    80002fe4:	79060613          	addi	a2,a2,1936 # 80004770 <uart_tx_r>
    80002fe8:	00001517          	auipc	a0,0x1
    80002fec:	79050513          	addi	a0,a0,1936 # 80004778 <uart_tx_w>
    80002ff0:	00063783          	ld	a5,0(a2)
    80002ff4:	00053703          	ld	a4,0(a0)
    80002ff8:	04f70263          	beq	a4,a5,8000303c <uartstart+0x68>
    80002ffc:	100005b7          	lui	a1,0x10000
    80003000:	00003817          	auipc	a6,0x3
    80003004:	9f080813          	addi	a6,a6,-1552 # 800059f0 <uart_tx_buf>
    80003008:	01c0006f          	j	80003024 <uartstart+0x50>
    8000300c:	0006c703          	lbu	a4,0(a3)
    80003010:	00f63023          	sd	a5,0(a2)
    80003014:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003018:	00063783          	ld	a5,0(a2)
    8000301c:	00053703          	ld	a4,0(a0)
    80003020:	00f70e63          	beq	a4,a5,8000303c <uartstart+0x68>
    80003024:	01f7f713          	andi	a4,a5,31
    80003028:	00e806b3          	add	a3,a6,a4
    8000302c:	0055c703          	lbu	a4,5(a1)
    80003030:	00178793          	addi	a5,a5,1
    80003034:	02077713          	andi	a4,a4,32
    80003038:	fc071ae3          	bnez	a4,8000300c <uartstart+0x38>
    8000303c:	00813403          	ld	s0,8(sp)
    80003040:	01010113          	addi	sp,sp,16
    80003044:	00008067          	ret

0000000080003048 <uartgetc>:
    80003048:	ff010113          	addi	sp,sp,-16
    8000304c:	00813423          	sd	s0,8(sp)
    80003050:	01010413          	addi	s0,sp,16
    80003054:	10000737          	lui	a4,0x10000
    80003058:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000305c:	0017f793          	andi	a5,a5,1
    80003060:	00078c63          	beqz	a5,80003078 <uartgetc+0x30>
    80003064:	00074503          	lbu	a0,0(a4)
    80003068:	0ff57513          	andi	a0,a0,255
    8000306c:	00813403          	ld	s0,8(sp)
    80003070:	01010113          	addi	sp,sp,16
    80003074:	00008067          	ret
    80003078:	fff00513          	li	a0,-1
    8000307c:	ff1ff06f          	j	8000306c <uartgetc+0x24>

0000000080003080 <uartintr>:
    80003080:	100007b7          	lui	a5,0x10000
    80003084:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003088:	0017f793          	andi	a5,a5,1
    8000308c:	0a078463          	beqz	a5,80003134 <uartintr+0xb4>
    80003090:	fe010113          	addi	sp,sp,-32
    80003094:	00813823          	sd	s0,16(sp)
    80003098:	00913423          	sd	s1,8(sp)
    8000309c:	00113c23          	sd	ra,24(sp)
    800030a0:	02010413          	addi	s0,sp,32
    800030a4:	100004b7          	lui	s1,0x10000
    800030a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800030ac:	0ff57513          	andi	a0,a0,255
    800030b0:	fffff097          	auipc	ra,0xfffff
    800030b4:	534080e7          	jalr	1332(ra) # 800025e4 <consoleintr>
    800030b8:	0054c783          	lbu	a5,5(s1)
    800030bc:	0017f793          	andi	a5,a5,1
    800030c0:	fe0794e3          	bnez	a5,800030a8 <uartintr+0x28>
    800030c4:	00001617          	auipc	a2,0x1
    800030c8:	6ac60613          	addi	a2,a2,1708 # 80004770 <uart_tx_r>
    800030cc:	00001517          	auipc	a0,0x1
    800030d0:	6ac50513          	addi	a0,a0,1708 # 80004778 <uart_tx_w>
    800030d4:	00063783          	ld	a5,0(a2)
    800030d8:	00053703          	ld	a4,0(a0)
    800030dc:	04f70263          	beq	a4,a5,80003120 <uartintr+0xa0>
    800030e0:	100005b7          	lui	a1,0x10000
    800030e4:	00003817          	auipc	a6,0x3
    800030e8:	90c80813          	addi	a6,a6,-1780 # 800059f0 <uart_tx_buf>
    800030ec:	01c0006f          	j	80003108 <uartintr+0x88>
    800030f0:	0006c703          	lbu	a4,0(a3)
    800030f4:	00f63023          	sd	a5,0(a2)
    800030f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800030fc:	00063783          	ld	a5,0(a2)
    80003100:	00053703          	ld	a4,0(a0)
    80003104:	00f70e63          	beq	a4,a5,80003120 <uartintr+0xa0>
    80003108:	01f7f713          	andi	a4,a5,31
    8000310c:	00e806b3          	add	a3,a6,a4
    80003110:	0055c703          	lbu	a4,5(a1)
    80003114:	00178793          	addi	a5,a5,1
    80003118:	02077713          	andi	a4,a4,32
    8000311c:	fc071ae3          	bnez	a4,800030f0 <uartintr+0x70>
    80003120:	01813083          	ld	ra,24(sp)
    80003124:	01013403          	ld	s0,16(sp)
    80003128:	00813483          	ld	s1,8(sp)
    8000312c:	02010113          	addi	sp,sp,32
    80003130:	00008067          	ret
    80003134:	00001617          	auipc	a2,0x1
    80003138:	63c60613          	addi	a2,a2,1596 # 80004770 <uart_tx_r>
    8000313c:	00001517          	auipc	a0,0x1
    80003140:	63c50513          	addi	a0,a0,1596 # 80004778 <uart_tx_w>
    80003144:	00063783          	ld	a5,0(a2)
    80003148:	00053703          	ld	a4,0(a0)
    8000314c:	04f70263          	beq	a4,a5,80003190 <uartintr+0x110>
    80003150:	100005b7          	lui	a1,0x10000
    80003154:	00003817          	auipc	a6,0x3
    80003158:	89c80813          	addi	a6,a6,-1892 # 800059f0 <uart_tx_buf>
    8000315c:	01c0006f          	j	80003178 <uartintr+0xf8>
    80003160:	0006c703          	lbu	a4,0(a3)
    80003164:	00f63023          	sd	a5,0(a2)
    80003168:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000316c:	00063783          	ld	a5,0(a2)
    80003170:	00053703          	ld	a4,0(a0)
    80003174:	02f70063          	beq	a4,a5,80003194 <uartintr+0x114>
    80003178:	01f7f713          	andi	a4,a5,31
    8000317c:	00e806b3          	add	a3,a6,a4
    80003180:	0055c703          	lbu	a4,5(a1)
    80003184:	00178793          	addi	a5,a5,1
    80003188:	02077713          	andi	a4,a4,32
    8000318c:	fc071ae3          	bnez	a4,80003160 <uartintr+0xe0>
    80003190:	00008067          	ret
    80003194:	00008067          	ret

0000000080003198 <kinit>:
    80003198:	fc010113          	addi	sp,sp,-64
    8000319c:	02913423          	sd	s1,40(sp)
    800031a0:	fffff7b7          	lui	a5,0xfffff
    800031a4:	00004497          	auipc	s1,0x4
    800031a8:	86b48493          	addi	s1,s1,-1941 # 80006a0f <end+0xfff>
    800031ac:	02813823          	sd	s0,48(sp)
    800031b0:	01313c23          	sd	s3,24(sp)
    800031b4:	00f4f4b3          	and	s1,s1,a5
    800031b8:	02113c23          	sd	ra,56(sp)
    800031bc:	03213023          	sd	s2,32(sp)
    800031c0:	01413823          	sd	s4,16(sp)
    800031c4:	01513423          	sd	s5,8(sp)
    800031c8:	04010413          	addi	s0,sp,64
    800031cc:	000017b7          	lui	a5,0x1
    800031d0:	01100993          	li	s3,17
    800031d4:	00f487b3          	add	a5,s1,a5
    800031d8:	01b99993          	slli	s3,s3,0x1b
    800031dc:	06f9e063          	bltu	s3,a5,8000323c <kinit+0xa4>
    800031e0:	00003a97          	auipc	s5,0x3
    800031e4:	830a8a93          	addi	s5,s5,-2000 # 80005a10 <end>
    800031e8:	0754ec63          	bltu	s1,s5,80003260 <kinit+0xc8>
    800031ec:	0734fa63          	bgeu	s1,s3,80003260 <kinit+0xc8>
    800031f0:	00088a37          	lui	s4,0x88
    800031f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800031f8:	00001917          	auipc	s2,0x1
    800031fc:	58890913          	addi	s2,s2,1416 # 80004780 <kmem>
    80003200:	00ca1a13          	slli	s4,s4,0xc
    80003204:	0140006f          	j	80003218 <kinit+0x80>
    80003208:	000017b7          	lui	a5,0x1
    8000320c:	00f484b3          	add	s1,s1,a5
    80003210:	0554e863          	bltu	s1,s5,80003260 <kinit+0xc8>
    80003214:	0534f663          	bgeu	s1,s3,80003260 <kinit+0xc8>
    80003218:	00001637          	lui	a2,0x1
    8000321c:	00100593          	li	a1,1
    80003220:	00048513          	mv	a0,s1
    80003224:	00000097          	auipc	ra,0x0
    80003228:	5e4080e7          	jalr	1508(ra) # 80003808 <__memset>
    8000322c:	00093783          	ld	a5,0(s2)
    80003230:	00f4b023          	sd	a5,0(s1)
    80003234:	00993023          	sd	s1,0(s2)
    80003238:	fd4498e3          	bne	s1,s4,80003208 <kinit+0x70>
    8000323c:	03813083          	ld	ra,56(sp)
    80003240:	03013403          	ld	s0,48(sp)
    80003244:	02813483          	ld	s1,40(sp)
    80003248:	02013903          	ld	s2,32(sp)
    8000324c:	01813983          	ld	s3,24(sp)
    80003250:	01013a03          	ld	s4,16(sp)
    80003254:	00813a83          	ld	s5,8(sp)
    80003258:	04010113          	addi	sp,sp,64
    8000325c:	00008067          	ret
    80003260:	00001517          	auipc	a0,0x1
    80003264:	f7050513          	addi	a0,a0,-144 # 800041d0 <digits+0x18>
    80003268:	fffff097          	auipc	ra,0xfffff
    8000326c:	4b4080e7          	jalr	1204(ra) # 8000271c <panic>

0000000080003270 <freerange>:
    80003270:	fc010113          	addi	sp,sp,-64
    80003274:	000017b7          	lui	a5,0x1
    80003278:	02913423          	sd	s1,40(sp)
    8000327c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003280:	009504b3          	add	s1,a0,s1
    80003284:	fffff537          	lui	a0,0xfffff
    80003288:	02813823          	sd	s0,48(sp)
    8000328c:	02113c23          	sd	ra,56(sp)
    80003290:	03213023          	sd	s2,32(sp)
    80003294:	01313c23          	sd	s3,24(sp)
    80003298:	01413823          	sd	s4,16(sp)
    8000329c:	01513423          	sd	s5,8(sp)
    800032a0:	01613023          	sd	s6,0(sp)
    800032a4:	04010413          	addi	s0,sp,64
    800032a8:	00a4f4b3          	and	s1,s1,a0
    800032ac:	00f487b3          	add	a5,s1,a5
    800032b0:	06f5e463          	bltu	a1,a5,80003318 <freerange+0xa8>
    800032b4:	00002a97          	auipc	s5,0x2
    800032b8:	75ca8a93          	addi	s5,s5,1884 # 80005a10 <end>
    800032bc:	0954e263          	bltu	s1,s5,80003340 <freerange+0xd0>
    800032c0:	01100993          	li	s3,17
    800032c4:	01b99993          	slli	s3,s3,0x1b
    800032c8:	0734fc63          	bgeu	s1,s3,80003340 <freerange+0xd0>
    800032cc:	00058a13          	mv	s4,a1
    800032d0:	00001917          	auipc	s2,0x1
    800032d4:	4b090913          	addi	s2,s2,1200 # 80004780 <kmem>
    800032d8:	00002b37          	lui	s6,0x2
    800032dc:	0140006f          	j	800032f0 <freerange+0x80>
    800032e0:	000017b7          	lui	a5,0x1
    800032e4:	00f484b3          	add	s1,s1,a5
    800032e8:	0554ec63          	bltu	s1,s5,80003340 <freerange+0xd0>
    800032ec:	0534fa63          	bgeu	s1,s3,80003340 <freerange+0xd0>
    800032f0:	00001637          	lui	a2,0x1
    800032f4:	00100593          	li	a1,1
    800032f8:	00048513          	mv	a0,s1
    800032fc:	00000097          	auipc	ra,0x0
    80003300:	50c080e7          	jalr	1292(ra) # 80003808 <__memset>
    80003304:	00093703          	ld	a4,0(s2)
    80003308:	016487b3          	add	a5,s1,s6
    8000330c:	00e4b023          	sd	a4,0(s1)
    80003310:	00993023          	sd	s1,0(s2)
    80003314:	fcfa76e3          	bgeu	s4,a5,800032e0 <freerange+0x70>
    80003318:	03813083          	ld	ra,56(sp)
    8000331c:	03013403          	ld	s0,48(sp)
    80003320:	02813483          	ld	s1,40(sp)
    80003324:	02013903          	ld	s2,32(sp)
    80003328:	01813983          	ld	s3,24(sp)
    8000332c:	01013a03          	ld	s4,16(sp)
    80003330:	00813a83          	ld	s5,8(sp)
    80003334:	00013b03          	ld	s6,0(sp)
    80003338:	04010113          	addi	sp,sp,64
    8000333c:	00008067          	ret
    80003340:	00001517          	auipc	a0,0x1
    80003344:	e9050513          	addi	a0,a0,-368 # 800041d0 <digits+0x18>
    80003348:	fffff097          	auipc	ra,0xfffff
    8000334c:	3d4080e7          	jalr	980(ra) # 8000271c <panic>

0000000080003350 <kfree>:
    80003350:	fe010113          	addi	sp,sp,-32
    80003354:	00813823          	sd	s0,16(sp)
    80003358:	00113c23          	sd	ra,24(sp)
    8000335c:	00913423          	sd	s1,8(sp)
    80003360:	02010413          	addi	s0,sp,32
    80003364:	03451793          	slli	a5,a0,0x34
    80003368:	04079c63          	bnez	a5,800033c0 <kfree+0x70>
    8000336c:	00002797          	auipc	a5,0x2
    80003370:	6a478793          	addi	a5,a5,1700 # 80005a10 <end>
    80003374:	00050493          	mv	s1,a0
    80003378:	04f56463          	bltu	a0,a5,800033c0 <kfree+0x70>
    8000337c:	01100793          	li	a5,17
    80003380:	01b79793          	slli	a5,a5,0x1b
    80003384:	02f57e63          	bgeu	a0,a5,800033c0 <kfree+0x70>
    80003388:	00001637          	lui	a2,0x1
    8000338c:	00100593          	li	a1,1
    80003390:	00000097          	auipc	ra,0x0
    80003394:	478080e7          	jalr	1144(ra) # 80003808 <__memset>
    80003398:	00001797          	auipc	a5,0x1
    8000339c:	3e878793          	addi	a5,a5,1000 # 80004780 <kmem>
    800033a0:	0007b703          	ld	a4,0(a5)
    800033a4:	01813083          	ld	ra,24(sp)
    800033a8:	01013403          	ld	s0,16(sp)
    800033ac:	00e4b023          	sd	a4,0(s1)
    800033b0:	0097b023          	sd	s1,0(a5)
    800033b4:	00813483          	ld	s1,8(sp)
    800033b8:	02010113          	addi	sp,sp,32
    800033bc:	00008067          	ret
    800033c0:	00001517          	auipc	a0,0x1
    800033c4:	e1050513          	addi	a0,a0,-496 # 800041d0 <digits+0x18>
    800033c8:	fffff097          	auipc	ra,0xfffff
    800033cc:	354080e7          	jalr	852(ra) # 8000271c <panic>

00000000800033d0 <kalloc>:
    800033d0:	fe010113          	addi	sp,sp,-32
    800033d4:	00813823          	sd	s0,16(sp)
    800033d8:	00913423          	sd	s1,8(sp)
    800033dc:	00113c23          	sd	ra,24(sp)
    800033e0:	02010413          	addi	s0,sp,32
    800033e4:	00001797          	auipc	a5,0x1
    800033e8:	39c78793          	addi	a5,a5,924 # 80004780 <kmem>
    800033ec:	0007b483          	ld	s1,0(a5)
    800033f0:	02048063          	beqz	s1,80003410 <kalloc+0x40>
    800033f4:	0004b703          	ld	a4,0(s1)
    800033f8:	00001637          	lui	a2,0x1
    800033fc:	00500593          	li	a1,5
    80003400:	00048513          	mv	a0,s1
    80003404:	00e7b023          	sd	a4,0(a5)
    80003408:	00000097          	auipc	ra,0x0
    8000340c:	400080e7          	jalr	1024(ra) # 80003808 <__memset>
    80003410:	01813083          	ld	ra,24(sp)
    80003414:	01013403          	ld	s0,16(sp)
    80003418:	00048513          	mv	a0,s1
    8000341c:	00813483          	ld	s1,8(sp)
    80003420:	02010113          	addi	sp,sp,32
    80003424:	00008067          	ret

0000000080003428 <initlock>:
    80003428:	ff010113          	addi	sp,sp,-16
    8000342c:	00813423          	sd	s0,8(sp)
    80003430:	01010413          	addi	s0,sp,16
    80003434:	00813403          	ld	s0,8(sp)
    80003438:	00b53423          	sd	a1,8(a0)
    8000343c:	00052023          	sw	zero,0(a0)
    80003440:	00053823          	sd	zero,16(a0)
    80003444:	01010113          	addi	sp,sp,16
    80003448:	00008067          	ret

000000008000344c <acquire>:
    8000344c:	fe010113          	addi	sp,sp,-32
    80003450:	00813823          	sd	s0,16(sp)
    80003454:	00913423          	sd	s1,8(sp)
    80003458:	00113c23          	sd	ra,24(sp)
    8000345c:	01213023          	sd	s2,0(sp)
    80003460:	02010413          	addi	s0,sp,32
    80003464:	00050493          	mv	s1,a0
    80003468:	10002973          	csrr	s2,sstatus
    8000346c:	100027f3          	csrr	a5,sstatus
    80003470:	ffd7f793          	andi	a5,a5,-3
    80003474:	10079073          	csrw	sstatus,a5
    80003478:	fffff097          	auipc	ra,0xfffff
    8000347c:	8ec080e7          	jalr	-1812(ra) # 80001d64 <mycpu>
    80003480:	07852783          	lw	a5,120(a0)
    80003484:	06078e63          	beqz	a5,80003500 <acquire+0xb4>
    80003488:	fffff097          	auipc	ra,0xfffff
    8000348c:	8dc080e7          	jalr	-1828(ra) # 80001d64 <mycpu>
    80003490:	07852783          	lw	a5,120(a0)
    80003494:	0004a703          	lw	a4,0(s1)
    80003498:	0017879b          	addiw	a5,a5,1
    8000349c:	06f52c23          	sw	a5,120(a0)
    800034a0:	04071063          	bnez	a4,800034e0 <acquire+0x94>
    800034a4:	00100713          	li	a4,1
    800034a8:	00070793          	mv	a5,a4
    800034ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800034b0:	0007879b          	sext.w	a5,a5
    800034b4:	fe079ae3          	bnez	a5,800034a8 <acquire+0x5c>
    800034b8:	0ff0000f          	fence
    800034bc:	fffff097          	auipc	ra,0xfffff
    800034c0:	8a8080e7          	jalr	-1880(ra) # 80001d64 <mycpu>
    800034c4:	01813083          	ld	ra,24(sp)
    800034c8:	01013403          	ld	s0,16(sp)
    800034cc:	00a4b823          	sd	a0,16(s1)
    800034d0:	00013903          	ld	s2,0(sp)
    800034d4:	00813483          	ld	s1,8(sp)
    800034d8:	02010113          	addi	sp,sp,32
    800034dc:	00008067          	ret
    800034e0:	0104b903          	ld	s2,16(s1)
    800034e4:	fffff097          	auipc	ra,0xfffff
    800034e8:	880080e7          	jalr	-1920(ra) # 80001d64 <mycpu>
    800034ec:	faa91ce3          	bne	s2,a0,800034a4 <acquire+0x58>
    800034f0:	00001517          	auipc	a0,0x1
    800034f4:	ce850513          	addi	a0,a0,-792 # 800041d8 <digits+0x20>
    800034f8:	fffff097          	auipc	ra,0xfffff
    800034fc:	224080e7          	jalr	548(ra) # 8000271c <panic>
    80003500:	00195913          	srli	s2,s2,0x1
    80003504:	fffff097          	auipc	ra,0xfffff
    80003508:	860080e7          	jalr	-1952(ra) # 80001d64 <mycpu>
    8000350c:	00197913          	andi	s2,s2,1
    80003510:	07252e23          	sw	s2,124(a0)
    80003514:	f75ff06f          	j	80003488 <acquire+0x3c>

0000000080003518 <release>:
    80003518:	fe010113          	addi	sp,sp,-32
    8000351c:	00813823          	sd	s0,16(sp)
    80003520:	00113c23          	sd	ra,24(sp)
    80003524:	00913423          	sd	s1,8(sp)
    80003528:	01213023          	sd	s2,0(sp)
    8000352c:	02010413          	addi	s0,sp,32
    80003530:	00052783          	lw	a5,0(a0)
    80003534:	00079a63          	bnez	a5,80003548 <release+0x30>
    80003538:	00001517          	auipc	a0,0x1
    8000353c:	ca850513          	addi	a0,a0,-856 # 800041e0 <digits+0x28>
    80003540:	fffff097          	auipc	ra,0xfffff
    80003544:	1dc080e7          	jalr	476(ra) # 8000271c <panic>
    80003548:	01053903          	ld	s2,16(a0)
    8000354c:	00050493          	mv	s1,a0
    80003550:	fffff097          	auipc	ra,0xfffff
    80003554:	814080e7          	jalr	-2028(ra) # 80001d64 <mycpu>
    80003558:	fea910e3          	bne	s2,a0,80003538 <release+0x20>
    8000355c:	0004b823          	sd	zero,16(s1)
    80003560:	0ff0000f          	fence
    80003564:	0f50000f          	fence	iorw,ow
    80003568:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000356c:	ffffe097          	auipc	ra,0xffffe
    80003570:	7f8080e7          	jalr	2040(ra) # 80001d64 <mycpu>
    80003574:	100027f3          	csrr	a5,sstatus
    80003578:	0027f793          	andi	a5,a5,2
    8000357c:	04079a63          	bnez	a5,800035d0 <release+0xb8>
    80003580:	07852783          	lw	a5,120(a0)
    80003584:	02f05e63          	blez	a5,800035c0 <release+0xa8>
    80003588:	fff7871b          	addiw	a4,a5,-1
    8000358c:	06e52c23          	sw	a4,120(a0)
    80003590:	00071c63          	bnez	a4,800035a8 <release+0x90>
    80003594:	07c52783          	lw	a5,124(a0)
    80003598:	00078863          	beqz	a5,800035a8 <release+0x90>
    8000359c:	100027f3          	csrr	a5,sstatus
    800035a0:	0027e793          	ori	a5,a5,2
    800035a4:	10079073          	csrw	sstatus,a5
    800035a8:	01813083          	ld	ra,24(sp)
    800035ac:	01013403          	ld	s0,16(sp)
    800035b0:	00813483          	ld	s1,8(sp)
    800035b4:	00013903          	ld	s2,0(sp)
    800035b8:	02010113          	addi	sp,sp,32
    800035bc:	00008067          	ret
    800035c0:	00001517          	auipc	a0,0x1
    800035c4:	c4050513          	addi	a0,a0,-960 # 80004200 <digits+0x48>
    800035c8:	fffff097          	auipc	ra,0xfffff
    800035cc:	154080e7          	jalr	340(ra) # 8000271c <panic>
    800035d0:	00001517          	auipc	a0,0x1
    800035d4:	c1850513          	addi	a0,a0,-1000 # 800041e8 <digits+0x30>
    800035d8:	fffff097          	auipc	ra,0xfffff
    800035dc:	144080e7          	jalr	324(ra) # 8000271c <panic>

00000000800035e0 <holding>:
    800035e0:	00052783          	lw	a5,0(a0)
    800035e4:	00079663          	bnez	a5,800035f0 <holding+0x10>
    800035e8:	00000513          	li	a0,0
    800035ec:	00008067          	ret
    800035f0:	fe010113          	addi	sp,sp,-32
    800035f4:	00813823          	sd	s0,16(sp)
    800035f8:	00913423          	sd	s1,8(sp)
    800035fc:	00113c23          	sd	ra,24(sp)
    80003600:	02010413          	addi	s0,sp,32
    80003604:	01053483          	ld	s1,16(a0)
    80003608:	ffffe097          	auipc	ra,0xffffe
    8000360c:	75c080e7          	jalr	1884(ra) # 80001d64 <mycpu>
    80003610:	01813083          	ld	ra,24(sp)
    80003614:	01013403          	ld	s0,16(sp)
    80003618:	40a48533          	sub	a0,s1,a0
    8000361c:	00153513          	seqz	a0,a0
    80003620:	00813483          	ld	s1,8(sp)
    80003624:	02010113          	addi	sp,sp,32
    80003628:	00008067          	ret

000000008000362c <push_off>:
    8000362c:	fe010113          	addi	sp,sp,-32
    80003630:	00813823          	sd	s0,16(sp)
    80003634:	00113c23          	sd	ra,24(sp)
    80003638:	00913423          	sd	s1,8(sp)
    8000363c:	02010413          	addi	s0,sp,32
    80003640:	100024f3          	csrr	s1,sstatus
    80003644:	100027f3          	csrr	a5,sstatus
    80003648:	ffd7f793          	andi	a5,a5,-3
    8000364c:	10079073          	csrw	sstatus,a5
    80003650:	ffffe097          	auipc	ra,0xffffe
    80003654:	714080e7          	jalr	1812(ra) # 80001d64 <mycpu>
    80003658:	07852783          	lw	a5,120(a0)
    8000365c:	02078663          	beqz	a5,80003688 <push_off+0x5c>
    80003660:	ffffe097          	auipc	ra,0xffffe
    80003664:	704080e7          	jalr	1796(ra) # 80001d64 <mycpu>
    80003668:	07852783          	lw	a5,120(a0)
    8000366c:	01813083          	ld	ra,24(sp)
    80003670:	01013403          	ld	s0,16(sp)
    80003674:	0017879b          	addiw	a5,a5,1
    80003678:	06f52c23          	sw	a5,120(a0)
    8000367c:	00813483          	ld	s1,8(sp)
    80003680:	02010113          	addi	sp,sp,32
    80003684:	00008067          	ret
    80003688:	0014d493          	srli	s1,s1,0x1
    8000368c:	ffffe097          	auipc	ra,0xffffe
    80003690:	6d8080e7          	jalr	1752(ra) # 80001d64 <mycpu>
    80003694:	0014f493          	andi	s1,s1,1
    80003698:	06952e23          	sw	s1,124(a0)
    8000369c:	fc5ff06f          	j	80003660 <push_off+0x34>

00000000800036a0 <pop_off>:
    800036a0:	ff010113          	addi	sp,sp,-16
    800036a4:	00813023          	sd	s0,0(sp)
    800036a8:	00113423          	sd	ra,8(sp)
    800036ac:	01010413          	addi	s0,sp,16
    800036b0:	ffffe097          	auipc	ra,0xffffe
    800036b4:	6b4080e7          	jalr	1716(ra) # 80001d64 <mycpu>
    800036b8:	100027f3          	csrr	a5,sstatus
    800036bc:	0027f793          	andi	a5,a5,2
    800036c0:	04079663          	bnez	a5,8000370c <pop_off+0x6c>
    800036c4:	07852783          	lw	a5,120(a0)
    800036c8:	02f05a63          	blez	a5,800036fc <pop_off+0x5c>
    800036cc:	fff7871b          	addiw	a4,a5,-1
    800036d0:	06e52c23          	sw	a4,120(a0)
    800036d4:	00071c63          	bnez	a4,800036ec <pop_off+0x4c>
    800036d8:	07c52783          	lw	a5,124(a0)
    800036dc:	00078863          	beqz	a5,800036ec <pop_off+0x4c>
    800036e0:	100027f3          	csrr	a5,sstatus
    800036e4:	0027e793          	ori	a5,a5,2
    800036e8:	10079073          	csrw	sstatus,a5
    800036ec:	00813083          	ld	ra,8(sp)
    800036f0:	00013403          	ld	s0,0(sp)
    800036f4:	01010113          	addi	sp,sp,16
    800036f8:	00008067          	ret
    800036fc:	00001517          	auipc	a0,0x1
    80003700:	b0450513          	addi	a0,a0,-1276 # 80004200 <digits+0x48>
    80003704:	fffff097          	auipc	ra,0xfffff
    80003708:	018080e7          	jalr	24(ra) # 8000271c <panic>
    8000370c:	00001517          	auipc	a0,0x1
    80003710:	adc50513          	addi	a0,a0,-1316 # 800041e8 <digits+0x30>
    80003714:	fffff097          	auipc	ra,0xfffff
    80003718:	008080e7          	jalr	8(ra) # 8000271c <panic>

000000008000371c <push_on>:
    8000371c:	fe010113          	addi	sp,sp,-32
    80003720:	00813823          	sd	s0,16(sp)
    80003724:	00113c23          	sd	ra,24(sp)
    80003728:	00913423          	sd	s1,8(sp)
    8000372c:	02010413          	addi	s0,sp,32
    80003730:	100024f3          	csrr	s1,sstatus
    80003734:	100027f3          	csrr	a5,sstatus
    80003738:	0027e793          	ori	a5,a5,2
    8000373c:	10079073          	csrw	sstatus,a5
    80003740:	ffffe097          	auipc	ra,0xffffe
    80003744:	624080e7          	jalr	1572(ra) # 80001d64 <mycpu>
    80003748:	07852783          	lw	a5,120(a0)
    8000374c:	02078663          	beqz	a5,80003778 <push_on+0x5c>
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	614080e7          	jalr	1556(ra) # 80001d64 <mycpu>
    80003758:	07852783          	lw	a5,120(a0)
    8000375c:	01813083          	ld	ra,24(sp)
    80003760:	01013403          	ld	s0,16(sp)
    80003764:	0017879b          	addiw	a5,a5,1
    80003768:	06f52c23          	sw	a5,120(a0)
    8000376c:	00813483          	ld	s1,8(sp)
    80003770:	02010113          	addi	sp,sp,32
    80003774:	00008067          	ret
    80003778:	0014d493          	srli	s1,s1,0x1
    8000377c:	ffffe097          	auipc	ra,0xffffe
    80003780:	5e8080e7          	jalr	1512(ra) # 80001d64 <mycpu>
    80003784:	0014f493          	andi	s1,s1,1
    80003788:	06952e23          	sw	s1,124(a0)
    8000378c:	fc5ff06f          	j	80003750 <push_on+0x34>

0000000080003790 <pop_on>:
    80003790:	ff010113          	addi	sp,sp,-16
    80003794:	00813023          	sd	s0,0(sp)
    80003798:	00113423          	sd	ra,8(sp)
    8000379c:	01010413          	addi	s0,sp,16
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	5c4080e7          	jalr	1476(ra) # 80001d64 <mycpu>
    800037a8:	100027f3          	csrr	a5,sstatus
    800037ac:	0027f793          	andi	a5,a5,2
    800037b0:	04078463          	beqz	a5,800037f8 <pop_on+0x68>
    800037b4:	07852783          	lw	a5,120(a0)
    800037b8:	02f05863          	blez	a5,800037e8 <pop_on+0x58>
    800037bc:	fff7879b          	addiw	a5,a5,-1
    800037c0:	06f52c23          	sw	a5,120(a0)
    800037c4:	07853783          	ld	a5,120(a0)
    800037c8:	00079863          	bnez	a5,800037d8 <pop_on+0x48>
    800037cc:	100027f3          	csrr	a5,sstatus
    800037d0:	ffd7f793          	andi	a5,a5,-3
    800037d4:	10079073          	csrw	sstatus,a5
    800037d8:	00813083          	ld	ra,8(sp)
    800037dc:	00013403          	ld	s0,0(sp)
    800037e0:	01010113          	addi	sp,sp,16
    800037e4:	00008067          	ret
    800037e8:	00001517          	auipc	a0,0x1
    800037ec:	a4050513          	addi	a0,a0,-1472 # 80004228 <digits+0x70>
    800037f0:	fffff097          	auipc	ra,0xfffff
    800037f4:	f2c080e7          	jalr	-212(ra) # 8000271c <panic>
    800037f8:	00001517          	auipc	a0,0x1
    800037fc:	a1050513          	addi	a0,a0,-1520 # 80004208 <digits+0x50>
    80003800:	fffff097          	auipc	ra,0xfffff
    80003804:	f1c080e7          	jalr	-228(ra) # 8000271c <panic>

0000000080003808 <__memset>:
    80003808:	ff010113          	addi	sp,sp,-16
    8000380c:	00813423          	sd	s0,8(sp)
    80003810:	01010413          	addi	s0,sp,16
    80003814:	1a060e63          	beqz	a2,800039d0 <__memset+0x1c8>
    80003818:	40a007b3          	neg	a5,a0
    8000381c:	0077f793          	andi	a5,a5,7
    80003820:	00778693          	addi	a3,a5,7
    80003824:	00b00813          	li	a6,11
    80003828:	0ff5f593          	andi	a1,a1,255
    8000382c:	fff6071b          	addiw	a4,a2,-1
    80003830:	1b06e663          	bltu	a3,a6,800039dc <__memset+0x1d4>
    80003834:	1cd76463          	bltu	a4,a3,800039fc <__memset+0x1f4>
    80003838:	1a078e63          	beqz	a5,800039f4 <__memset+0x1ec>
    8000383c:	00b50023          	sb	a1,0(a0)
    80003840:	00100713          	li	a4,1
    80003844:	1ae78463          	beq	a5,a4,800039ec <__memset+0x1e4>
    80003848:	00b500a3          	sb	a1,1(a0)
    8000384c:	00200713          	li	a4,2
    80003850:	1ae78a63          	beq	a5,a4,80003a04 <__memset+0x1fc>
    80003854:	00b50123          	sb	a1,2(a0)
    80003858:	00300713          	li	a4,3
    8000385c:	18e78463          	beq	a5,a4,800039e4 <__memset+0x1dc>
    80003860:	00b501a3          	sb	a1,3(a0)
    80003864:	00400713          	li	a4,4
    80003868:	1ae78263          	beq	a5,a4,80003a0c <__memset+0x204>
    8000386c:	00b50223          	sb	a1,4(a0)
    80003870:	00500713          	li	a4,5
    80003874:	1ae78063          	beq	a5,a4,80003a14 <__memset+0x20c>
    80003878:	00b502a3          	sb	a1,5(a0)
    8000387c:	00700713          	li	a4,7
    80003880:	18e79e63          	bne	a5,a4,80003a1c <__memset+0x214>
    80003884:	00b50323          	sb	a1,6(a0)
    80003888:	00700e93          	li	t4,7
    8000388c:	00859713          	slli	a4,a1,0x8
    80003890:	00e5e733          	or	a4,a1,a4
    80003894:	01059e13          	slli	t3,a1,0x10
    80003898:	01c76e33          	or	t3,a4,t3
    8000389c:	01859313          	slli	t1,a1,0x18
    800038a0:	006e6333          	or	t1,t3,t1
    800038a4:	02059893          	slli	a7,a1,0x20
    800038a8:	40f60e3b          	subw	t3,a2,a5
    800038ac:	011368b3          	or	a7,t1,a7
    800038b0:	02859813          	slli	a6,a1,0x28
    800038b4:	0108e833          	or	a6,a7,a6
    800038b8:	03059693          	slli	a3,a1,0x30
    800038bc:	003e589b          	srliw	a7,t3,0x3
    800038c0:	00d866b3          	or	a3,a6,a3
    800038c4:	03859713          	slli	a4,a1,0x38
    800038c8:	00389813          	slli	a6,a7,0x3
    800038cc:	00f507b3          	add	a5,a0,a5
    800038d0:	00e6e733          	or	a4,a3,a4
    800038d4:	000e089b          	sext.w	a7,t3
    800038d8:	00f806b3          	add	a3,a6,a5
    800038dc:	00e7b023          	sd	a4,0(a5)
    800038e0:	00878793          	addi	a5,a5,8
    800038e4:	fed79ce3          	bne	a5,a3,800038dc <__memset+0xd4>
    800038e8:	ff8e7793          	andi	a5,t3,-8
    800038ec:	0007871b          	sext.w	a4,a5
    800038f0:	01d787bb          	addw	a5,a5,t4
    800038f4:	0ce88e63          	beq	a7,a4,800039d0 <__memset+0x1c8>
    800038f8:	00f50733          	add	a4,a0,a5
    800038fc:	00b70023          	sb	a1,0(a4)
    80003900:	0017871b          	addiw	a4,a5,1
    80003904:	0cc77663          	bgeu	a4,a2,800039d0 <__memset+0x1c8>
    80003908:	00e50733          	add	a4,a0,a4
    8000390c:	00b70023          	sb	a1,0(a4)
    80003910:	0027871b          	addiw	a4,a5,2
    80003914:	0ac77e63          	bgeu	a4,a2,800039d0 <__memset+0x1c8>
    80003918:	00e50733          	add	a4,a0,a4
    8000391c:	00b70023          	sb	a1,0(a4)
    80003920:	0037871b          	addiw	a4,a5,3
    80003924:	0ac77663          	bgeu	a4,a2,800039d0 <__memset+0x1c8>
    80003928:	00e50733          	add	a4,a0,a4
    8000392c:	00b70023          	sb	a1,0(a4)
    80003930:	0047871b          	addiw	a4,a5,4
    80003934:	08c77e63          	bgeu	a4,a2,800039d0 <__memset+0x1c8>
    80003938:	00e50733          	add	a4,a0,a4
    8000393c:	00b70023          	sb	a1,0(a4)
    80003940:	0057871b          	addiw	a4,a5,5
    80003944:	08c77663          	bgeu	a4,a2,800039d0 <__memset+0x1c8>
    80003948:	00e50733          	add	a4,a0,a4
    8000394c:	00b70023          	sb	a1,0(a4)
    80003950:	0067871b          	addiw	a4,a5,6
    80003954:	06c77e63          	bgeu	a4,a2,800039d0 <__memset+0x1c8>
    80003958:	00e50733          	add	a4,a0,a4
    8000395c:	00b70023          	sb	a1,0(a4)
    80003960:	0077871b          	addiw	a4,a5,7
    80003964:	06c77663          	bgeu	a4,a2,800039d0 <__memset+0x1c8>
    80003968:	00e50733          	add	a4,a0,a4
    8000396c:	00b70023          	sb	a1,0(a4)
    80003970:	0087871b          	addiw	a4,a5,8
    80003974:	04c77e63          	bgeu	a4,a2,800039d0 <__memset+0x1c8>
    80003978:	00e50733          	add	a4,a0,a4
    8000397c:	00b70023          	sb	a1,0(a4)
    80003980:	0097871b          	addiw	a4,a5,9
    80003984:	04c77663          	bgeu	a4,a2,800039d0 <__memset+0x1c8>
    80003988:	00e50733          	add	a4,a0,a4
    8000398c:	00b70023          	sb	a1,0(a4)
    80003990:	00a7871b          	addiw	a4,a5,10
    80003994:	02c77e63          	bgeu	a4,a2,800039d0 <__memset+0x1c8>
    80003998:	00e50733          	add	a4,a0,a4
    8000399c:	00b70023          	sb	a1,0(a4)
    800039a0:	00b7871b          	addiw	a4,a5,11
    800039a4:	02c77663          	bgeu	a4,a2,800039d0 <__memset+0x1c8>
    800039a8:	00e50733          	add	a4,a0,a4
    800039ac:	00b70023          	sb	a1,0(a4)
    800039b0:	00c7871b          	addiw	a4,a5,12
    800039b4:	00c77e63          	bgeu	a4,a2,800039d0 <__memset+0x1c8>
    800039b8:	00e50733          	add	a4,a0,a4
    800039bc:	00b70023          	sb	a1,0(a4)
    800039c0:	00d7879b          	addiw	a5,a5,13
    800039c4:	00c7f663          	bgeu	a5,a2,800039d0 <__memset+0x1c8>
    800039c8:	00f507b3          	add	a5,a0,a5
    800039cc:	00b78023          	sb	a1,0(a5)
    800039d0:	00813403          	ld	s0,8(sp)
    800039d4:	01010113          	addi	sp,sp,16
    800039d8:	00008067          	ret
    800039dc:	00b00693          	li	a3,11
    800039e0:	e55ff06f          	j	80003834 <__memset+0x2c>
    800039e4:	00300e93          	li	t4,3
    800039e8:	ea5ff06f          	j	8000388c <__memset+0x84>
    800039ec:	00100e93          	li	t4,1
    800039f0:	e9dff06f          	j	8000388c <__memset+0x84>
    800039f4:	00000e93          	li	t4,0
    800039f8:	e95ff06f          	j	8000388c <__memset+0x84>
    800039fc:	00000793          	li	a5,0
    80003a00:	ef9ff06f          	j	800038f8 <__memset+0xf0>
    80003a04:	00200e93          	li	t4,2
    80003a08:	e85ff06f          	j	8000388c <__memset+0x84>
    80003a0c:	00400e93          	li	t4,4
    80003a10:	e7dff06f          	j	8000388c <__memset+0x84>
    80003a14:	00500e93          	li	t4,5
    80003a18:	e75ff06f          	j	8000388c <__memset+0x84>
    80003a1c:	00600e93          	li	t4,6
    80003a20:	e6dff06f          	j	8000388c <__memset+0x84>

0000000080003a24 <__memmove>:
    80003a24:	ff010113          	addi	sp,sp,-16
    80003a28:	00813423          	sd	s0,8(sp)
    80003a2c:	01010413          	addi	s0,sp,16
    80003a30:	0e060863          	beqz	a2,80003b20 <__memmove+0xfc>
    80003a34:	fff6069b          	addiw	a3,a2,-1
    80003a38:	0006881b          	sext.w	a6,a3
    80003a3c:	0ea5e863          	bltu	a1,a0,80003b2c <__memmove+0x108>
    80003a40:	00758713          	addi	a4,a1,7
    80003a44:	00a5e7b3          	or	a5,a1,a0
    80003a48:	40a70733          	sub	a4,a4,a0
    80003a4c:	0077f793          	andi	a5,a5,7
    80003a50:	00f73713          	sltiu	a4,a4,15
    80003a54:	00174713          	xori	a4,a4,1
    80003a58:	0017b793          	seqz	a5,a5
    80003a5c:	00e7f7b3          	and	a5,a5,a4
    80003a60:	10078863          	beqz	a5,80003b70 <__memmove+0x14c>
    80003a64:	00900793          	li	a5,9
    80003a68:	1107f463          	bgeu	a5,a6,80003b70 <__memmove+0x14c>
    80003a6c:	0036581b          	srliw	a6,a2,0x3
    80003a70:	fff8081b          	addiw	a6,a6,-1
    80003a74:	02081813          	slli	a6,a6,0x20
    80003a78:	01d85893          	srli	a7,a6,0x1d
    80003a7c:	00858813          	addi	a6,a1,8
    80003a80:	00058793          	mv	a5,a1
    80003a84:	00050713          	mv	a4,a0
    80003a88:	01088833          	add	a6,a7,a6
    80003a8c:	0007b883          	ld	a7,0(a5)
    80003a90:	00878793          	addi	a5,a5,8
    80003a94:	00870713          	addi	a4,a4,8
    80003a98:	ff173c23          	sd	a7,-8(a4)
    80003a9c:	ff0798e3          	bne	a5,a6,80003a8c <__memmove+0x68>
    80003aa0:	ff867713          	andi	a4,a2,-8
    80003aa4:	02071793          	slli	a5,a4,0x20
    80003aa8:	0207d793          	srli	a5,a5,0x20
    80003aac:	00f585b3          	add	a1,a1,a5
    80003ab0:	40e686bb          	subw	a3,a3,a4
    80003ab4:	00f507b3          	add	a5,a0,a5
    80003ab8:	06e60463          	beq	a2,a4,80003b20 <__memmove+0xfc>
    80003abc:	0005c703          	lbu	a4,0(a1)
    80003ac0:	00e78023          	sb	a4,0(a5)
    80003ac4:	04068e63          	beqz	a3,80003b20 <__memmove+0xfc>
    80003ac8:	0015c603          	lbu	a2,1(a1)
    80003acc:	00100713          	li	a4,1
    80003ad0:	00c780a3          	sb	a2,1(a5)
    80003ad4:	04e68663          	beq	a3,a4,80003b20 <__memmove+0xfc>
    80003ad8:	0025c603          	lbu	a2,2(a1)
    80003adc:	00200713          	li	a4,2
    80003ae0:	00c78123          	sb	a2,2(a5)
    80003ae4:	02e68e63          	beq	a3,a4,80003b20 <__memmove+0xfc>
    80003ae8:	0035c603          	lbu	a2,3(a1)
    80003aec:	00300713          	li	a4,3
    80003af0:	00c781a3          	sb	a2,3(a5)
    80003af4:	02e68663          	beq	a3,a4,80003b20 <__memmove+0xfc>
    80003af8:	0045c603          	lbu	a2,4(a1)
    80003afc:	00400713          	li	a4,4
    80003b00:	00c78223          	sb	a2,4(a5)
    80003b04:	00e68e63          	beq	a3,a4,80003b20 <__memmove+0xfc>
    80003b08:	0055c603          	lbu	a2,5(a1)
    80003b0c:	00500713          	li	a4,5
    80003b10:	00c782a3          	sb	a2,5(a5)
    80003b14:	00e68663          	beq	a3,a4,80003b20 <__memmove+0xfc>
    80003b18:	0065c703          	lbu	a4,6(a1)
    80003b1c:	00e78323          	sb	a4,6(a5)
    80003b20:	00813403          	ld	s0,8(sp)
    80003b24:	01010113          	addi	sp,sp,16
    80003b28:	00008067          	ret
    80003b2c:	02061713          	slli	a4,a2,0x20
    80003b30:	02075713          	srli	a4,a4,0x20
    80003b34:	00e587b3          	add	a5,a1,a4
    80003b38:	f0f574e3          	bgeu	a0,a5,80003a40 <__memmove+0x1c>
    80003b3c:	02069613          	slli	a2,a3,0x20
    80003b40:	02065613          	srli	a2,a2,0x20
    80003b44:	fff64613          	not	a2,a2
    80003b48:	00e50733          	add	a4,a0,a4
    80003b4c:	00c78633          	add	a2,a5,a2
    80003b50:	fff7c683          	lbu	a3,-1(a5)
    80003b54:	fff78793          	addi	a5,a5,-1
    80003b58:	fff70713          	addi	a4,a4,-1
    80003b5c:	00d70023          	sb	a3,0(a4)
    80003b60:	fec798e3          	bne	a5,a2,80003b50 <__memmove+0x12c>
    80003b64:	00813403          	ld	s0,8(sp)
    80003b68:	01010113          	addi	sp,sp,16
    80003b6c:	00008067          	ret
    80003b70:	02069713          	slli	a4,a3,0x20
    80003b74:	02075713          	srli	a4,a4,0x20
    80003b78:	00170713          	addi	a4,a4,1
    80003b7c:	00e50733          	add	a4,a0,a4
    80003b80:	00050793          	mv	a5,a0
    80003b84:	0005c683          	lbu	a3,0(a1)
    80003b88:	00178793          	addi	a5,a5,1
    80003b8c:	00158593          	addi	a1,a1,1
    80003b90:	fed78fa3          	sb	a3,-1(a5)
    80003b94:	fee798e3          	bne	a5,a4,80003b84 <__memmove+0x160>
    80003b98:	f89ff06f          	j	80003b20 <__memmove+0xfc>

0000000080003b9c <__putc>:
    80003b9c:	fe010113          	addi	sp,sp,-32
    80003ba0:	00813823          	sd	s0,16(sp)
    80003ba4:	00113c23          	sd	ra,24(sp)
    80003ba8:	02010413          	addi	s0,sp,32
    80003bac:	00050793          	mv	a5,a0
    80003bb0:	fef40593          	addi	a1,s0,-17
    80003bb4:	00100613          	li	a2,1
    80003bb8:	00000513          	li	a0,0
    80003bbc:	fef407a3          	sb	a5,-17(s0)
    80003bc0:	fffff097          	auipc	ra,0xfffff
    80003bc4:	b3c080e7          	jalr	-1220(ra) # 800026fc <console_write>
    80003bc8:	01813083          	ld	ra,24(sp)
    80003bcc:	01013403          	ld	s0,16(sp)
    80003bd0:	02010113          	addi	sp,sp,32
    80003bd4:	00008067          	ret

0000000080003bd8 <__getc>:
    80003bd8:	fe010113          	addi	sp,sp,-32
    80003bdc:	00813823          	sd	s0,16(sp)
    80003be0:	00113c23          	sd	ra,24(sp)
    80003be4:	02010413          	addi	s0,sp,32
    80003be8:	fe840593          	addi	a1,s0,-24
    80003bec:	00100613          	li	a2,1
    80003bf0:	00000513          	li	a0,0
    80003bf4:	fffff097          	auipc	ra,0xfffff
    80003bf8:	ae8080e7          	jalr	-1304(ra) # 800026dc <console_read>
    80003bfc:	fe844503          	lbu	a0,-24(s0)
    80003c00:	01813083          	ld	ra,24(sp)
    80003c04:	01013403          	ld	s0,16(sp)
    80003c08:	02010113          	addi	sp,sp,32
    80003c0c:	00008067          	ret

0000000080003c10 <console_handler>:
    80003c10:	fe010113          	addi	sp,sp,-32
    80003c14:	00813823          	sd	s0,16(sp)
    80003c18:	00113c23          	sd	ra,24(sp)
    80003c1c:	00913423          	sd	s1,8(sp)
    80003c20:	02010413          	addi	s0,sp,32
    80003c24:	14202773          	csrr	a4,scause
    80003c28:	100027f3          	csrr	a5,sstatus
    80003c2c:	0027f793          	andi	a5,a5,2
    80003c30:	06079e63          	bnez	a5,80003cac <console_handler+0x9c>
    80003c34:	00074c63          	bltz	a4,80003c4c <console_handler+0x3c>
    80003c38:	01813083          	ld	ra,24(sp)
    80003c3c:	01013403          	ld	s0,16(sp)
    80003c40:	00813483          	ld	s1,8(sp)
    80003c44:	02010113          	addi	sp,sp,32
    80003c48:	00008067          	ret
    80003c4c:	0ff77713          	andi	a4,a4,255
    80003c50:	00900793          	li	a5,9
    80003c54:	fef712e3          	bne	a4,a5,80003c38 <console_handler+0x28>
    80003c58:	ffffe097          	auipc	ra,0xffffe
    80003c5c:	6dc080e7          	jalr	1756(ra) # 80002334 <plic_claim>
    80003c60:	00a00793          	li	a5,10
    80003c64:	00050493          	mv	s1,a0
    80003c68:	02f50c63          	beq	a0,a5,80003ca0 <console_handler+0x90>
    80003c6c:	fc0506e3          	beqz	a0,80003c38 <console_handler+0x28>
    80003c70:	00050593          	mv	a1,a0
    80003c74:	00000517          	auipc	a0,0x0
    80003c78:	4bc50513          	addi	a0,a0,1212 # 80004130 <bntOne+0xd8>
    80003c7c:	fffff097          	auipc	ra,0xfffff
    80003c80:	afc080e7          	jalr	-1284(ra) # 80002778 <__printf>
    80003c84:	01013403          	ld	s0,16(sp)
    80003c88:	01813083          	ld	ra,24(sp)
    80003c8c:	00048513          	mv	a0,s1
    80003c90:	00813483          	ld	s1,8(sp)
    80003c94:	02010113          	addi	sp,sp,32
    80003c98:	ffffe317          	auipc	t1,0xffffe
    80003c9c:	6d430067          	jr	1748(t1) # 8000236c <plic_complete>
    80003ca0:	fffff097          	auipc	ra,0xfffff
    80003ca4:	3e0080e7          	jalr	992(ra) # 80003080 <uartintr>
    80003ca8:	fddff06f          	j	80003c84 <console_handler+0x74>
    80003cac:	00000517          	auipc	a0,0x0
    80003cb0:	58450513          	addi	a0,a0,1412 # 80004230 <digits+0x78>
    80003cb4:	fffff097          	auipc	ra,0xfffff
    80003cb8:	a68080e7          	jalr	-1432(ra) # 8000271c <panic>
	...
