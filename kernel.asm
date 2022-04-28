
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	70013103          	ld	sp,1792(sp) # 80004700 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	33d010ef          	jal	ra,80001b58 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:


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

    call _ZN5Riscv20handleSupervisorTrapEv
    80001080:	6a0000ef          	jal	ra,80001720 <_ZN5Riscv20handleSupervisorTrapEv>

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

00000000800012cc <thread_dispatch>:

#ifdef __cplusplus
extern "C"
#endif
void thread_dispatch(){
    800012cc:	ff010113          	addi	sp,sp,-16
    800012d0:	00813423          	sd	s0,8(sp)
    800012d4:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800012d8:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    800012dc:	00000073          	ecall
}
    800012e0:	00813403          	ld	s0,8(sp)
    800012e4:	01010113          	addi	sp,sp,16
    800012e8:	00008067          	ret

00000000800012ec <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

//todo
void PCB::runner() {
    800012ec:	ff010113          	addi	sp,sp,-16
    800012f0:	00113423          	sd	ra,8(sp)
    800012f4:	00813023          	sd	s0,0(sp)
    800012f8:	01010413          	addi	s0,sp,16

   Riscv::popSppSpie();
    800012fc:	00000097          	auipc	ra,0x0
    80001300:	404080e7          	jalr	1028(ra) # 80001700 <_ZN5Riscv10popSppSpieEv>
   running->body(running->args);
    80001304:	00003797          	auipc	a5,0x3
    80001308:	45c7b783          	ld	a5,1116(a5) # 80004760 <_ZN3PCB7runningE>
    8000130c:	0087b703          	ld	a4,8(a5)
    80001310:	0107b503          	ld	a0,16(a5)
    80001314:	000700e7          	jalr	a4

}
    80001318:	00813083          	ld	ra,8(sp)
    8000131c:	00013403          	ld	s0,0(sp)
    80001320:	01010113          	addi	sp,sp,16
    80001324:	00008067          	ret

0000000080001328 <_ZN3PCBC1EPFvPvES0_S0_>:
PCB::PCB(Body body, void *args, void* stack_space) :
    80001328:	ff010113          	addi	sp,sp,-16
    8000132c:	00813423          	sd	s0,8(sp)
    80001330:	01010413          	addi	s0,sp,16
    })
    80001334:	00b53423          	sd	a1,8(a0) # 1008 <_entry-0x7fffeff8>
    80001338:	00c53823          	sd	a2,16(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    8000133c:	000017b7          	lui	a5,0x1
    80001340:	00f686b3          	add	a3,a3,a5
    })
    80001344:	00d53c23          	sd	a3,24(a0)
    80001348:	00000797          	auipc	a5,0x0
    8000134c:	fa478793          	addi	a5,a5,-92 # 800012ec <_ZN3PCB6runnerEv>
    80001350:	02f53023          	sd	a5,32(a0)
    80001354:	02050823          	sb	zero,48(a0)
}
    80001358:	00813403          	ld	s0,8(sp)
    8000135c:	01010113          	addi	sp,sp,16
    80001360:	00008067          	ret

0000000080001364 <_ZN3PCB5sleepEm>:
void PCB::sleep(time_t time) {
    80001364:	ff010113          	addi	sp,sp,-16
    80001368:	00813423          	sd	s0,8(sp)
    8000136c:	01010413          	addi	s0,sp,16
}
    80001370:	00813403          	ld	s0,8(sp)
    80001374:	01010113          	addi	sp,sp,16
    80001378:	00008067          	ret

000000008000137c <_ZN3PCB5startEv>:
{
    8000137c:	ff010113          	addi	sp,sp,-16
    80001380:	00113423          	sd	ra,8(sp)
    80001384:	00813023          	sd	s0,0(sp)
    80001388:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    8000138c:	00000097          	auipc	ra,0x0
    80001390:	0dc080e7          	jalr	220(ra) # 80001468 <_ZN9Scheduler3putEP3PCB>
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
    800013c4:	3a04b483          	ld	s1,928(s1) # 80004760 <_ZN3PCB7runningE>
    if(!old->finished) Scheduler::put(old);
    800013c8:	0304c783          	lbu	a5,48(s1)
    800013cc:	04078063          	beqz	a5,8000140c <_ZN3PCB8dispatchEv+0x68>
    running = Scheduler::get();
    800013d0:	00000097          	auipc	ra,0x0
    800013d4:	0cc080e7          	jalr	204(ra) # 8000149c <_ZN9Scheduler3getEv>
    800013d8:	00003797          	auipc	a5,0x3
    800013dc:	38a7b423          	sd	a0,904(a5) # 80004760 <_ZN3PCB7runningE>

    PCB::contextSwitch(&old->context, &running->context);
    800013e0:	01850593          	addi	a1,a0,24
    800013e4:	01848513          	addi	a0,s1,24
    800013e8:	00000097          	auipc	ra,0x0
    800013ec:	e20080e7          	jalr	-480(ra) # 80001208 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
    //yield(old, running);

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
    8000144c:	3a8080e7          	jalr	936(ra) # 800017f0 <_ZN15MemoryAllocator9mem_allocEm>
    80001450:	00003797          	auipc	a5,0x3
    80001454:	32a7b023          	sd	a0,800(a5) # 80004770 <_ZN9Scheduler8queuePCBE>
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
    80001480:	2f453503          	ld	a0,756(a0) # 80004770 <_ZN9Scheduler8queuePCBE>
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
    800014b8:	2bc93903          	ld	s2,700(s2) # 80004770 <_ZN9Scheduler8queuePCBE>
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
    80001548:	2ac080e7          	jalr	684(ra) # 800017f0 <_ZN15MemoryAllocator9mem_allocEm>
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
    800015c4:	24c080e7          	jalr	588(ra) # 8000180c <_ZN15MemoryAllocator8mem_freeEPv>
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
    8000160c:	614080e7          	jalr	1556(ra) # 80003c1c <__putc>
    return;

    MemoryAllocator* memoryAllocator = MemoryAllocator::getMemoryAllocator();
    memoryAllocator->mem_alloc(2);
    */
    80001610:	00813083          	ld	ra,8(sp)
    80001614:	00013403          	ld	s0,0(sp)
    80001618:	01010113          	addi	sp,sp,16
    8000161c:	00008067          	ret

0000000080001620 <_Znwm>:

#include "../h/syscall_cpp.h"

//general
void * operator new(size_t size)
{
    80001620:	ff010113          	addi	sp,sp,-16
    80001624:	00113423          	sd	ra,8(sp)
    80001628:	00813023          	sd	s0,0(sp)
    8000162c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001630:	00000097          	auipc	ra,0x0
    80001634:	bec080e7          	jalr	-1044(ra) # 8000121c <mem_alloc>
}
    80001638:	00813083          	ld	ra,8(sp)
    8000163c:	00013403          	ld	s0,0(sp)
    80001640:	01010113          	addi	sp,sp,16
    80001644:	00008067          	ret

0000000080001648 <_ZdlPv>:

void operator delete(void * p)
{
    80001648:	ff010113          	addi	sp,sp,-16
    8000164c:	00113423          	sd	ra,8(sp)
    80001650:	00813023          	sd	s0,0(sp)
    80001654:	01010413          	addi	s0,sp,16
   mem_free(p);
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	bf4080e7          	jalr	-1036(ra) # 8000124c <mem_free>
}
    80001660:	00813083          	ld	ra,8(sp)
    80001664:	00013403          	ld	s0,0(sp)
    80001668:	01010113          	addi	sp,sp,16
    8000166c:	00008067          	ret

0000000080001670 <_ZN6Thread5startEv>:

//Thread

void Thread::start() {
    80001670:	ff010113          	addi	sp,sp,-16
    80001674:	00113423          	sd	ra,8(sp)
    80001678:	00813023          	sd	s0,0(sp)
    8000167c:	01010413          	addi	s0,sp,16
    myHandle->start();
    80001680:	00053503          	ld	a0,0(a0)
    80001684:	00000097          	auipc	ra,0x0
    80001688:	cf8080e7          	jalr	-776(ra) # 8000137c <_ZN3PCB5startEv>
}
    8000168c:	00813083          	ld	ra,8(sp)
    80001690:	00013403          	ld	s0,0(sp)
    80001694:	01010113          	addi	sp,sp,16
    80001698:	00008067          	ret

000000008000169c <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    8000169c:	ff010113          	addi	sp,sp,-16
    800016a0:	00813423          	sd	s0,8(sp)
    800016a4:	01010413          	addi	s0,sp,16
    //PCB::dispatch();
}
    800016a8:	00813403          	ld	s0,8(sp)
    800016ac:	01010113          	addi	sp,sp,16
    800016b0:	00008067          	ret

00000000800016b4 <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    800016b4:	ff010113          	addi	sp,sp,-16
    800016b8:	00113423          	sd	ra,8(sp)
    800016bc:	00813023          	sd	s0,0(sp)
    800016c0:	01010413          	addi	s0,sp,16
    PCB::sleep(time);
    800016c4:	00000097          	auipc	ra,0x0
    800016c8:	ca0080e7          	jalr	-864(ra) # 80001364 <_ZN3PCB5sleepEm>
}
    800016cc:	00813083          	ld	ra,8(sp)
    800016d0:	00013403          	ld	s0,0(sp)
    800016d4:	01010113          	addi	sp,sp,16
    800016d8:	00008067          	ret

00000000800016dc <_ZN5Riscv10initSystemEv>:
#include "../h/MemoryAllocator.h"
#include "../h/PCB.h"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem() {
    800016dc:	ff010113          	addi	sp,sp,-16
    800016e0:	00813423          	sd	s0,8(sp)
    800016e4:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    800016e8:	00003797          	auipc	a5,0x3
    800016ec:	0087b783          	ld	a5,8(a5) # 800046f0 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800016f0:	10579073          	csrw	stvec,a5
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
}
    800016f4:	00813403          	ld	s0,8(sp)
    800016f8:	01010113          	addi	sp,sp,16
    800016fc:	00008067          	ret

0000000080001700 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80001700:	ff010113          	addi	sp,sp,-16
    80001704:	00813423          	sd	s0,8(sp)
    80001708:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    8000170c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001710:	10200073          	sret
}
    80001714:	00813403          	ld	s0,8(sp)
    80001718:	01010113          	addi	sp,sp,16
    8000171c:	00008067          	ret

0000000080001720 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80001720:	fc010113          	addi	sp,sp,-64
    80001724:	02113c23          	sd	ra,56(sp)
    80001728:	02813823          	sd	s0,48(sp)
    8000172c:	02913423          	sd	s1,40(sp)
    80001730:	03213023          	sd	s2,32(sp)
    80001734:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80001738:	142027f3          	csrr	a5,scause
    8000173c:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001740:	fc843703          	ld	a4,-56(s0)

    uint64 scause = Riscv::r_scause();
    switch(scause) {
    80001744:	00900793          	li	a5,9
    80001748:	00f70e63          	beq	a4,a5,80001764 <_ZN5Riscv20handleSupervisorTrapEv+0x44>
    //asm volatile("csrr %0, sie" : "=r"(sie));
    //sie &= ~2;
    //asm volatile("csrw sie, %0" : : "r" (sie));

    //console_handler();
}
    8000174c:	03813083          	ld	ra,56(sp)
    80001750:	03013403          	ld	s0,48(sp)
    80001754:	02813483          	ld	s1,40(sp)
    80001758:	02013903          	ld	s2,32(sp)
    8000175c:	04010113          	addi	sp,sp,64
    80001760:	00008067          	ret
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80001764:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001768:	14102773          	csrr	a4,sepc
    8000176c:	fce43823          	sd	a4,-48(s0)
    return sepc;
    80001770:	fd043483          	ld	s1,-48(s0)
            sepc+=4;
    80001774:	00448493          	addi	s1,s1,4
            if(operation == MemoryAllocator::MEM_ALLOC) {
    80001778:	00100713          	li	a4,1
    8000177c:	02e78263          	beq	a5,a4,800017a0 <_ZN5Riscv20handleSupervisorTrapEv+0x80>
            else if(operation == MemoryAllocator::MEM_FREE) {
    80001780:	00200713          	li	a4,2
    80001784:	02e78a63          	beq	a5,a4,800017b8 <_ZN5Riscv20handleSupervisorTrapEv+0x98>
            else if(operation == PCB::THREAD_CREATE)
    80001788:	01100713          	li	a4,17
    8000178c:	00e78663          	beq	a5,a4,80001798 <_ZN5Riscv20handleSupervisorTrapEv+0x78>
            else if(operation == PCB::THREAD_DISPATCH)
    80001790:	01300713          	li	a4,19
    80001794:	02e78a63          	beq	a5,a4,800017c8 <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80001798:	14149073          	csrw	sepc,s1
}
    8000179c:	fb1ff06f          	j	8000174c <_ZN5Riscv20handleSupervisorTrapEv+0x2c>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    800017a0:	00058513          	mv	a0,a1
                void* allocatedAddr = MemoryAllocator::tryToAllocateFragment(size);
    800017a4:	00651513          	slli	a0,a0,0x6
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	190080e7          	jalr	400(ra) # 80001938 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800017b0:	00050513          	mv	a0,a0
    800017b4:	fe5ff06f          	j	80001798 <_ZN5Riscv20handleSupervisorTrapEv+0x78>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    800017b8:	00058513          	mv	a0,a1
                MemoryAllocator::tryToFreeSegment((void*)addr);
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	2f0080e7          	jalr	752(ra) # 80001aac <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
    800017c4:	fd5ff06f          	j	80001798 <_ZN5Riscv20handleSupervisorTrapEv+0x78>
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800017c8:	100027f3          	csrr	a5,sstatus
    800017cc:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800017d0:	fd843903          	ld	s2,-40(s0)
                PCB::timeSliceCounter = 0;
    800017d4:	00003797          	auipc	a5,0x3
    800017d8:	f247b783          	ld	a5,-220(a5) # 800046f8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800017dc:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	bc4080e7          	jalr	-1084(ra) # 800013a4 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800017e8:	10091073          	csrw	sstatus,s2
}
    800017ec:	fadff06f          	j	80001798 <_ZN5Riscv20handleSupervisorTrapEv+0x78>

00000000800017f0 <_ZN15MemoryAllocator9mem_allocEm>:

MemoryAllocator::AllocatedFragment* MemoryAllocator::headAllocated = 0;
MemoryAllocator::FreeFragment* MemoryAllocator::headFree = 0;
int MemoryAllocator::memoryInitiliaized = 0;

void *MemoryAllocator::mem_alloc(size_t size) {
    800017f0:	ff010113          	addi	sp,sp,-16
    800017f4:	00813423          	sd	s0,8(sp)
    800017f8:	01010413          	addi	s0,sp,16
    return 0;
    //todo
    //sta ovde treba kao parametar
    //svuda pogledaj to
    //return ::mem_alloc(sizeof(MemoryAllocator));
}
    800017fc:	00000513          	li	a0,0
    80001800:	00813403          	ld	s0,8(sp)
    80001804:	01010113          	addi	sp,sp,16
    80001808:	00008067          	ret

000000008000180c <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void * addr) {
    8000180c:	ff010113          	addi	sp,sp,-16
    80001810:	00813423          	sd	s0,8(sp)
    80001814:	01010413          	addi	s0,sp,16
    return 0;
    //return ::mem_free(addr);
}
    80001818:	00000513          	li	a0,0
    8000181c:	00813403          	ld	s0,8(sp)
    80001820:	01010113          	addi	sp,sp,16
    80001824:	00008067          	ret

0000000080001828 <_ZN15MemoryAllocator10initMemoryEv>:

void MemoryAllocator::initMemory()
{
    80001828:	ff010113          	addi	sp,sp,-16
    8000182c:	00813423          	sd	s0,8(sp)
    80001830:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80001834:	00003717          	auipc	a4,0x3
    80001838:	f4472703          	lw	a4,-188(a4) # 80004778 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    8000183c:	00100793          	li	a5,1
    80001840:	04f70263          	beq	a4,a5,80001884 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80001844:	00003797          	auipc	a5,0x3
    80001848:	f3478793          	addi	a5,a5,-204 # 80004778 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    8000184c:	00100713          	li	a4,1
    80001850:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80001854:	0007b423          	sd	zero,8(a5)
    headFree = (FreeFragment*)HEAP_START_ADDR;
    80001858:	00003717          	auipc	a4,0x3
    8000185c:	e9073703          	ld	a4,-368(a4) # 800046e8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001860:	00073703          	ld	a4,0(a4)
    80001864:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80001868:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1);
    8000186c:	00003797          	auipc	a5,0x3
    80001870:	e9c7b783          	ld	a5,-356(a5) # 80004708 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001874:	0007b783          	ld	a5,0(a5)
    80001878:	40e787b3          	sub	a5,a5,a4
    8000187c:	00178793          	addi	a5,a5,1
    80001880:	00f73023          	sd	a5,0(a4)
}
    80001884:	00813403          	ld	s0,8(sp)
    80001888:	01010113          	addi	sp,sp,16
    8000188c:	00008067          	ret

0000000080001890 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void* addr, size_t size) {
    80001890:	fe010113          	addi	sp,sp,-32
    80001894:	00113c23          	sd	ra,24(sp)
    80001898:	00813823          	sd	s0,16(sp)
    8000189c:	00913423          	sd	s1,8(sp)
    800018a0:	01213023          	sd	s2,0(sp)
    800018a4:	02010413          	addi	s0,sp,32
    800018a8:	00050493          	mv	s1,a0
    800018ac:	00058913          	mv	s2,a1

    initMemory();
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	f78080e7          	jalr	-136(ra) # 80001828 <_ZN15MemoryAllocator10initMemoryEv>
    AllocatedFragment* prev = 0;
    AllocatedFragment* after =  headAllocated;
    800018b8:	00003797          	auipc	a5,0x3
    800018bc:	ec87b783          	ld	a5,-312(a5) # 80004780 <_ZN15MemoryAllocator13headAllocatedE>
    AllocatedFragment* prev = 0;
    800018c0:	00000713          	li	a4,0
    while(after != 0) {
    800018c4:	00078a63          	beqz	a5,800018d8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x48>
        if((void*)after > addr)
    800018c8:	00f4e863          	bltu	s1,a5,800018d8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x48>
            break;

        prev = after;
    800018cc:	00078713          	mv	a4,a5
        after = after->next;
    800018d0:	0087b783          	ld	a5,8(a5)
    while(after != 0) {
    800018d4:	ff1ff06f          	j	800018c4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x34>
    }

    AllocatedFragment* newAllocated = (AllocatedFragment*)addr;
    newAllocated->next = 0;
    800018d8:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    800018dc:	0124b023          	sd	s2,0(s1)
    if(after == 0) {
    800018e0:	02078463          	beqz	a5,80001908 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x78>
            headAllocated = newAllocated;
        else
            prev->next = newAllocated;
    }
    else {
        if(prev == 0) {
    800018e4:	02070e63          	beqz	a4,80001920 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x90>
            newAllocated->next = headAllocated;
            headAllocated = newAllocated;
        }
        else {
            newAllocated->next = after;
    800018e8:	00f4b423          	sd	a5,8(s1)
            prev->next = newAllocated;
    800018ec:	00973423          	sd	s1,8(a4)
        }
    }
}
    800018f0:	01813083          	ld	ra,24(sp)
    800018f4:	01013403          	ld	s0,16(sp)
    800018f8:	00813483          	ld	s1,8(sp)
    800018fc:	00013903          	ld	s2,0(sp)
    80001900:	02010113          	addi	sp,sp,32
    80001904:	00008067          	ret
        if(prev == 0)
    80001908:	00070663          	beqz	a4,80001914 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x84>
            prev->next = newAllocated;
    8000190c:	00973423          	sd	s1,8(a4)
    80001910:	fe1ff06f          	j	800018f0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>
            headAllocated = newAllocated;
    80001914:	00003797          	auipc	a5,0x3
    80001918:	e697b623          	sd	s1,-404(a5) # 80004780 <_ZN15MemoryAllocator13headAllocatedE>
    8000191c:	fd5ff06f          	j	800018f0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>
            newAllocated->next = headAllocated;
    80001920:	00003797          	auipc	a5,0x3
    80001924:	e5878793          	addi	a5,a5,-424 # 80004778 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80001928:	0087b703          	ld	a4,8(a5)
    8000192c:	00e4b423          	sd	a4,8(s1)
            headAllocated = newAllocated;
    80001930:	0097b423          	sd	s1,8(a5)
    80001934:	fbdff06f          	j	800018f0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>

0000000080001938 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    80001938:	fe010113          	addi	sp,sp,-32
    8000193c:	00113c23          	sd	ra,24(sp)
    80001940:	00813823          	sd	s0,16(sp)
    80001944:	00913423          	sd	s1,8(sp)
    80001948:	01213023          	sd	s2,0(sp)
    8000194c:	02010413          	addi	s0,sp,32
    80001950:	00050913          	mv	s2,a0
    initMemory();
    80001954:	00000097          	auipc	ra,0x0
    80001958:	ed4080e7          	jalr	-300(ra) # 80001828 <_ZN15MemoryAllocator10initMemoryEv>
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    8000195c:	00003497          	auipc	s1,0x3
    80001960:	e2c4b483          	ld	s1,-468(s1) # 80004788 <_ZN15MemoryAllocator8headFreeE>
    uint64 newSize = size + sizeof(AllocatedFragment);
    80001964:	01090693          	addi	a3,s2,16
    FreeFragment* prev = 0;
    80001968:	00000713          	li	a4,0
    8000196c:	0700006f          	j	800019dc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
            void* newAddr = ((char*)curr + newSize);
            if(newAddr <= HEAP_END_ADDR) {

                FreeFragment *newFree = (FreeFragment *) newAddr;

                if (prev != 0)
    80001970:	04070263          	beqz	a4,800019b4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x7c>
                    prev->next = newFree;
    80001974:	00f73423          	sd	a5,8(a4)
                else
                    headFree = newFree;

                newFree->next = curr->next;
    80001978:	0084b603          	ld	a2,8(s1)
    8000197c:	00c7b423          	sd	a2,8(a5)
                newFree->size = curr->size - newSize;
    80001980:	0004b603          	ld	a2,0(s1)
    80001984:	40d606b3          	sub	a3,a2,a3
    80001988:	00d7b023          	sd	a3,0(a5)

                if(newFree->size == 0)
    8000198c:	00069863          	bnez	a3,8000199c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x64>
                {
                    if(prev != 0)
    80001990:	02070863          	beqz	a4,800019c0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = curr->next;
    80001994:	0084b783          	ld	a5,8(s1)
    80001998:	00f73423          	sd	a5,8(a4)
                    else
                        headFree = 0;
                }

                insertNewAllocatedFragment(oldAddr, size);
    8000199c:	00090593          	mv	a1,s2
    800019a0:	00048513          	mv	a0,s1
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	eec080e7          	jalr	-276(ra) # 80001890 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>



                uint64 oldA = (uint64) ((char*)oldAddr + sizeof(AllocatedFragment));
    800019ac:	01048493          	addi	s1,s1,16

                return (void*)oldA;
    800019b0:	0600006f          	j	80001a10 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd8>
                    headFree = newFree;
    800019b4:	00003617          	auipc	a2,0x3
    800019b8:	dcf63a23          	sd	a5,-556(a2) # 80004788 <_ZN15MemoryAllocator8headFreeE>
    800019bc:	fbdff06f          	j	80001978 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x40>
                        headFree = 0;
    800019c0:	00003797          	auipc	a5,0x3
    800019c4:	dc07b423          	sd	zero,-568(a5) # 80004788 <_ZN15MemoryAllocator8headFreeE>
    800019c8:	fd5ff06f          	j	8000199c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x64>
                {
                    prev->next = 0;
                }
                else
                {
                    headFree = 0;
    800019cc:	00003797          	auipc	a5,0x3
    800019d0:	da07be23          	sd	zero,-580(a5) # 80004788 <_ZN15MemoryAllocator8headFreeE>
                }
            }
        }
        prev = curr;
    800019d4:	00048713          	mv	a4,s1
        curr = curr->next;
    800019d8:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    800019dc:	02048663          	beqz	s1,80001a08 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd0>
        if(curr->size >= newSize) {
    800019e0:	0004b783          	ld	a5,0(s1)
    800019e4:	fed7e8e3          	bltu	a5,a3,800019d4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
            void* newAddr = ((char*)curr + newSize);
    800019e8:	00d487b3          	add	a5,s1,a3
            if(newAddr <= HEAP_END_ADDR) {
    800019ec:	00003617          	auipc	a2,0x3
    800019f0:	d1c63603          	ld	a2,-740(a2) # 80004708 <_GLOBAL_OFFSET_TABLE_+0x28>
    800019f4:	00063603          	ld	a2,0(a2)
    800019f8:	f6f67ce3          	bgeu	a2,a5,80001970 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x38>
                if(prev != 0)
    800019fc:	fc0708e3          	beqz	a4,800019cc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    prev->next = 0;
    80001a00:	00073423          	sd	zero,8(a4)
    80001a04:	fd1ff06f          	j	800019d4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
    }

    uint64 x = 0;
    __asm__ volatile("mv a0,%0" : : "r"(x));
    80001a08:	00000793          	li	a5,0
    80001a0c:	00078513          	mv	a0,a5

    return 0;
}
    80001a10:	00048513          	mv	a0,s1
    80001a14:	01813083          	ld	ra,24(sp)
    80001a18:	01013403          	ld	s0,16(sp)
    80001a1c:	00813483          	ld	s1,8(sp)
    80001a20:	00013903          	ld	s2,0(sp)
    80001a24:	02010113          	addi	sp,sp,32
    80001a28:	00008067          	ret

0000000080001a2c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80001a2c:	fe010113          	addi	sp,sp,-32
    80001a30:	00113c23          	sd	ra,24(sp)
    80001a34:	00813823          	sd	s0,16(sp)
    80001a38:	00913423          	sd	s1,8(sp)
    80001a3c:	01213023          	sd	s2,0(sp)
    80001a40:	02010413          	addi	s0,sp,32
    80001a44:	00050493          	mv	s1,a0
    80001a48:	00058913          	mv	s2,a1
    initMemory();
    80001a4c:	00000097          	auipc	ra,0x0
    80001a50:	ddc080e7          	jalr	-548(ra) # 80001828 <_ZN15MemoryAllocator10initMemoryEv>
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    80001a54:	00003797          	auipc	a5,0x3
    80001a58:	d347b783          	ld	a5,-716(a5) # 80004788 <_ZN15MemoryAllocator8headFreeE>
    FreeFragment* newSegment = (FreeFragment*) addr;
    newSegment->size = size;
    80001a5c:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80001a60:	0004b423          	sd	zero,8(s1)
    FreeFragment* prev = 0;
    80001a64:	00000713          	li	a4,0
    while(curr != 0)
    80001a68:	00078c63          	beqz	a5,80001a80 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80001a6c:	00f4e863          	bltu	s1,a5,80001a7c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80001a70:	00078713          	mv	a4,a5
        curr = curr->next;
    80001a74:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80001a78:	ff1ff06f          	j	80001a68 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80001a7c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80001a80:	02070063          	beqz	a4,80001aa0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80001a84:	00973423          	sd	s1,8(a4)
}
    80001a88:	01813083          	ld	ra,24(sp)
    80001a8c:	01013403          	ld	s0,16(sp)
    80001a90:	00813483          	ld	s1,8(sp)
    80001a94:	00013903          	ld	s2,0(sp)
    80001a98:	02010113          	addi	sp,sp,32
    80001a9c:	00008067          	ret
        headFree = newSegment;
    80001aa0:	00003797          	auipc	a5,0x3
    80001aa4:	ce97b423          	sd	s1,-792(a5) # 80004788 <_ZN15MemoryAllocator8headFreeE>
    80001aa8:	fe1ff06f          	j	80001a88 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>

0000000080001aac <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

void MemoryAllocator::tryToFreeSegment(void* addr)
{
    80001aac:	fe010113          	addi	sp,sp,-32
    80001ab0:	00113c23          	sd	ra,24(sp)
    80001ab4:	00813823          	sd	s0,16(sp)
    80001ab8:	00913423          	sd	s1,8(sp)
    80001abc:	01213023          	sd	s2,0(sp)
    80001ac0:	02010413          	addi	s0,sp,32
    80001ac4:	00050913          	mv	s2,a0
    initMemory();
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	d60080e7          	jalr	-672(ra) # 80001828 <_ZN15MemoryAllocator10initMemoryEv>
    AllocatedFragment* prev = 0;
    AllocatedFragment* curr = headAllocated;
    80001ad0:	00003497          	auipc	s1,0x3
    80001ad4:	cb04b483          	ld	s1,-848(s1) # 80004780 <_ZN15MemoryAllocator13headAllocatedE>
    int found = 0;
    80001ad8:	00000693          	li	a3,0
    AllocatedFragment* prev = 0;
    80001adc:	00000713          	li	a4,0
    80001ae0:	0300006f          	j	80001b10 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
        {
            if(prev != 0) {
                prev->next = curr->next;
            }
            else {
                headAllocated = curr->next;
    80001ae4:	0084b783          	ld	a5,8(s1)
    80001ae8:	00003717          	auipc	a4,0x3
    80001aec:	c8f73c23          	sd	a5,-872(a4) # 80004780 <_ZN15MemoryAllocator13headAllocatedE>
            }

            insertNewFreeSegment((void*)curr, curr->size + sizeof(AllocatedFragment));
    80001af0:	0004b583          	ld	a1,0(s1)
    80001af4:	01058593          	addi	a1,a1,16
    80001af8:	00048513          	mv	a0,s1
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	f30080e7          	jalr	-208(ra) # 80001a2c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>

            found = 1;
    80001b04:	00100693          	li	a3,1
        }

        prev = curr;
    80001b08:	00048713          	mv	a4,s1
        curr = curr->next;
    80001b0c:	0084b483          	ld	s1,8(s1)
    while(curr != 0 && !found)
    80001b10:	02048063          	beqz	s1,80001b30 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
    80001b14:	00069e63          	bnez	a3,80001b30 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
        if(addr == (void*)((char*)curr + sizeof(AllocatedFragment)))
    80001b18:	01048793          	addi	a5,s1,16
    80001b1c:	ff2796e3          	bne	a5,s2,80001b08 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x5c>
            if(prev != 0) {
    80001b20:	fc0702e3          	beqz	a4,80001ae4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x38>
                prev->next = curr->next;
    80001b24:	0084b783          	ld	a5,8(s1)
    80001b28:	00f73423          	sd	a5,8(a4)
    80001b2c:	fc5ff06f          	j	80001af0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
    }

    if(found) {
    80001b30:	02068063          	beqz	a3,80001b50 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0xa4>
        __asm__ volatile("li a0, 0");
    80001b34:	00000513          	li	a0,0
    }
    else {
        __asm__ volatile("li a0, 1");
    }
    80001b38:	01813083          	ld	ra,24(sp)
    80001b3c:	01013403          	ld	s0,16(sp)
    80001b40:	00813483          	ld	s1,8(sp)
    80001b44:	00013903          	ld	s2,0(sp)
    80001b48:	02010113          	addi	sp,sp,32
    80001b4c:	00008067          	ret
        __asm__ volatile("li a0, 1");
    80001b50:	00100513          	li	a0,1
    80001b54:	fe5ff06f          	j	80001b38 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>

0000000080001b58 <start>:
    80001b58:	ff010113          	addi	sp,sp,-16
    80001b5c:	00813423          	sd	s0,8(sp)
    80001b60:	01010413          	addi	s0,sp,16
    80001b64:	300027f3          	csrr	a5,mstatus
    80001b68:	ffffe737          	lui	a4,0xffffe
    80001b6c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8e1f>
    80001b70:	00e7f7b3          	and	a5,a5,a4
    80001b74:	00001737          	lui	a4,0x1
    80001b78:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001b7c:	00e7e7b3          	or	a5,a5,a4
    80001b80:	30079073          	csrw	mstatus,a5
    80001b84:	00000797          	auipc	a5,0x0
    80001b88:	16078793          	addi	a5,a5,352 # 80001ce4 <system_main>
    80001b8c:	34179073          	csrw	mepc,a5
    80001b90:	00000793          	li	a5,0
    80001b94:	18079073          	csrw	satp,a5
    80001b98:	000107b7          	lui	a5,0x10
    80001b9c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001ba0:	30279073          	csrw	medeleg,a5
    80001ba4:	30379073          	csrw	mideleg,a5
    80001ba8:	104027f3          	csrr	a5,sie
    80001bac:	2227e793          	ori	a5,a5,546
    80001bb0:	10479073          	csrw	sie,a5
    80001bb4:	fff00793          	li	a5,-1
    80001bb8:	00a7d793          	srli	a5,a5,0xa
    80001bbc:	3b079073          	csrw	pmpaddr0,a5
    80001bc0:	00f00793          	li	a5,15
    80001bc4:	3a079073          	csrw	pmpcfg0,a5
    80001bc8:	f14027f3          	csrr	a5,mhartid
    80001bcc:	0200c737          	lui	a4,0x200c
    80001bd0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001bd4:	0007869b          	sext.w	a3,a5
    80001bd8:	00269713          	slli	a4,a3,0x2
    80001bdc:	000f4637          	lui	a2,0xf4
    80001be0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001be4:	00d70733          	add	a4,a4,a3
    80001be8:	0037979b          	slliw	a5,a5,0x3
    80001bec:	020046b7          	lui	a3,0x2004
    80001bf0:	00d787b3          	add	a5,a5,a3
    80001bf4:	00c585b3          	add	a1,a1,a2
    80001bf8:	00371693          	slli	a3,a4,0x3
    80001bfc:	00003717          	auipc	a4,0x3
    80001c00:	b9470713          	addi	a4,a4,-1132 # 80004790 <timer_scratch>
    80001c04:	00b7b023          	sd	a1,0(a5)
    80001c08:	00d70733          	add	a4,a4,a3
    80001c0c:	00f73c23          	sd	a5,24(a4)
    80001c10:	02c73023          	sd	a2,32(a4)
    80001c14:	34071073          	csrw	mscratch,a4
    80001c18:	00000797          	auipc	a5,0x0
    80001c1c:	6e878793          	addi	a5,a5,1768 # 80002300 <timervec>
    80001c20:	30579073          	csrw	mtvec,a5
    80001c24:	300027f3          	csrr	a5,mstatus
    80001c28:	0087e793          	ori	a5,a5,8
    80001c2c:	30079073          	csrw	mstatus,a5
    80001c30:	304027f3          	csrr	a5,mie
    80001c34:	0807e793          	ori	a5,a5,128
    80001c38:	30479073          	csrw	mie,a5
    80001c3c:	f14027f3          	csrr	a5,mhartid
    80001c40:	0007879b          	sext.w	a5,a5
    80001c44:	00078213          	mv	tp,a5
    80001c48:	30200073          	mret
    80001c4c:	00813403          	ld	s0,8(sp)
    80001c50:	01010113          	addi	sp,sp,16
    80001c54:	00008067          	ret

0000000080001c58 <timerinit>:
    80001c58:	ff010113          	addi	sp,sp,-16
    80001c5c:	00813423          	sd	s0,8(sp)
    80001c60:	01010413          	addi	s0,sp,16
    80001c64:	f14027f3          	csrr	a5,mhartid
    80001c68:	0200c737          	lui	a4,0x200c
    80001c6c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001c70:	0007869b          	sext.w	a3,a5
    80001c74:	00269713          	slli	a4,a3,0x2
    80001c78:	000f4637          	lui	a2,0xf4
    80001c7c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001c80:	00d70733          	add	a4,a4,a3
    80001c84:	0037979b          	slliw	a5,a5,0x3
    80001c88:	020046b7          	lui	a3,0x2004
    80001c8c:	00d787b3          	add	a5,a5,a3
    80001c90:	00c585b3          	add	a1,a1,a2
    80001c94:	00371693          	slli	a3,a4,0x3
    80001c98:	00003717          	auipc	a4,0x3
    80001c9c:	af870713          	addi	a4,a4,-1288 # 80004790 <timer_scratch>
    80001ca0:	00b7b023          	sd	a1,0(a5)
    80001ca4:	00d70733          	add	a4,a4,a3
    80001ca8:	00f73c23          	sd	a5,24(a4)
    80001cac:	02c73023          	sd	a2,32(a4)
    80001cb0:	34071073          	csrw	mscratch,a4
    80001cb4:	00000797          	auipc	a5,0x0
    80001cb8:	64c78793          	addi	a5,a5,1612 # 80002300 <timervec>
    80001cbc:	30579073          	csrw	mtvec,a5
    80001cc0:	300027f3          	csrr	a5,mstatus
    80001cc4:	0087e793          	ori	a5,a5,8
    80001cc8:	30079073          	csrw	mstatus,a5
    80001ccc:	304027f3          	csrr	a5,mie
    80001cd0:	0807e793          	ori	a5,a5,128
    80001cd4:	30479073          	csrw	mie,a5
    80001cd8:	00813403          	ld	s0,8(sp)
    80001cdc:	01010113          	addi	sp,sp,16
    80001ce0:	00008067          	ret

0000000080001ce4 <system_main>:
    80001ce4:	fe010113          	addi	sp,sp,-32
    80001ce8:	00813823          	sd	s0,16(sp)
    80001cec:	00913423          	sd	s1,8(sp)
    80001cf0:	00113c23          	sd	ra,24(sp)
    80001cf4:	02010413          	addi	s0,sp,32
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	0c4080e7          	jalr	196(ra) # 80001dbc <cpuid>
    80001d00:	00003497          	auipc	s1,0x3
    80001d04:	a3048493          	addi	s1,s1,-1488 # 80004730 <started>
    80001d08:	02050263          	beqz	a0,80001d2c <system_main+0x48>
    80001d0c:	0004a783          	lw	a5,0(s1)
    80001d10:	0007879b          	sext.w	a5,a5
    80001d14:	fe078ce3          	beqz	a5,80001d0c <system_main+0x28>
    80001d18:	0ff0000f          	fence
    80001d1c:	00002517          	auipc	a0,0x2
    80001d20:	33450513          	addi	a0,a0,820 # 80004050 <CONSOLE_STATUS+0x40>
    80001d24:	00001097          	auipc	ra,0x1
    80001d28:	a78080e7          	jalr	-1416(ra) # 8000279c <panic>
    80001d2c:	00001097          	auipc	ra,0x1
    80001d30:	9cc080e7          	jalr	-1588(ra) # 800026f8 <consoleinit>
    80001d34:	00001097          	auipc	ra,0x1
    80001d38:	158080e7          	jalr	344(ra) # 80002e8c <printfinit>
    80001d3c:	00002517          	auipc	a0,0x2
    80001d40:	3f450513          	addi	a0,a0,1012 # 80004130 <CONSOLE_STATUS+0x120>
    80001d44:	00001097          	auipc	ra,0x1
    80001d48:	ab4080e7          	jalr	-1356(ra) # 800027f8 <__printf>
    80001d4c:	00002517          	auipc	a0,0x2
    80001d50:	2d450513          	addi	a0,a0,724 # 80004020 <CONSOLE_STATUS+0x10>
    80001d54:	00001097          	auipc	ra,0x1
    80001d58:	aa4080e7          	jalr	-1372(ra) # 800027f8 <__printf>
    80001d5c:	00002517          	auipc	a0,0x2
    80001d60:	3d450513          	addi	a0,a0,980 # 80004130 <CONSOLE_STATUS+0x120>
    80001d64:	00001097          	auipc	ra,0x1
    80001d68:	a94080e7          	jalr	-1388(ra) # 800027f8 <__printf>
    80001d6c:	00001097          	auipc	ra,0x1
    80001d70:	4ac080e7          	jalr	1196(ra) # 80003218 <kinit>
    80001d74:	00000097          	auipc	ra,0x0
    80001d78:	148080e7          	jalr	328(ra) # 80001ebc <trapinit>
    80001d7c:	00000097          	auipc	ra,0x0
    80001d80:	16c080e7          	jalr	364(ra) # 80001ee8 <trapinithart>
    80001d84:	00000097          	auipc	ra,0x0
    80001d88:	5bc080e7          	jalr	1468(ra) # 80002340 <plicinit>
    80001d8c:	00000097          	auipc	ra,0x0
    80001d90:	5dc080e7          	jalr	1500(ra) # 80002368 <plicinithart>
    80001d94:	00000097          	auipc	ra,0x0
    80001d98:	078080e7          	jalr	120(ra) # 80001e0c <userinit>
    80001d9c:	0ff0000f          	fence
    80001da0:	00100793          	li	a5,1
    80001da4:	00002517          	auipc	a0,0x2
    80001da8:	29450513          	addi	a0,a0,660 # 80004038 <CONSOLE_STATUS+0x28>
    80001dac:	00f4a023          	sw	a5,0(s1)
    80001db0:	00001097          	auipc	ra,0x1
    80001db4:	a48080e7          	jalr	-1464(ra) # 800027f8 <__printf>
    80001db8:	0000006f          	j	80001db8 <system_main+0xd4>

0000000080001dbc <cpuid>:
    80001dbc:	ff010113          	addi	sp,sp,-16
    80001dc0:	00813423          	sd	s0,8(sp)
    80001dc4:	01010413          	addi	s0,sp,16
    80001dc8:	00020513          	mv	a0,tp
    80001dcc:	00813403          	ld	s0,8(sp)
    80001dd0:	0005051b          	sext.w	a0,a0
    80001dd4:	01010113          	addi	sp,sp,16
    80001dd8:	00008067          	ret

0000000080001ddc <mycpu>:
    80001ddc:	ff010113          	addi	sp,sp,-16
    80001de0:	00813423          	sd	s0,8(sp)
    80001de4:	01010413          	addi	s0,sp,16
    80001de8:	00020793          	mv	a5,tp
    80001dec:	00813403          	ld	s0,8(sp)
    80001df0:	0007879b          	sext.w	a5,a5
    80001df4:	00779793          	slli	a5,a5,0x7
    80001df8:	00004517          	auipc	a0,0x4
    80001dfc:	9c850513          	addi	a0,a0,-1592 # 800057c0 <cpus>
    80001e00:	00f50533          	add	a0,a0,a5
    80001e04:	01010113          	addi	sp,sp,16
    80001e08:	00008067          	ret

0000000080001e0c <userinit>:
    80001e0c:	ff010113          	addi	sp,sp,-16
    80001e10:	00813423          	sd	s0,8(sp)
    80001e14:	01010413          	addi	s0,sp,16
    80001e18:	00813403          	ld	s0,8(sp)
    80001e1c:	01010113          	addi	sp,sp,16
    80001e20:	fffff317          	auipc	t1,0xfffff
    80001e24:	7d430067          	jr	2004(t1) # 800015f4 <main>

0000000080001e28 <either_copyout>:
    80001e28:	ff010113          	addi	sp,sp,-16
    80001e2c:	00813023          	sd	s0,0(sp)
    80001e30:	00113423          	sd	ra,8(sp)
    80001e34:	01010413          	addi	s0,sp,16
    80001e38:	02051663          	bnez	a0,80001e64 <either_copyout+0x3c>
    80001e3c:	00058513          	mv	a0,a1
    80001e40:	00060593          	mv	a1,a2
    80001e44:	0006861b          	sext.w	a2,a3
    80001e48:	00002097          	auipc	ra,0x2
    80001e4c:	c5c080e7          	jalr	-932(ra) # 80003aa4 <__memmove>
    80001e50:	00813083          	ld	ra,8(sp)
    80001e54:	00013403          	ld	s0,0(sp)
    80001e58:	00000513          	li	a0,0
    80001e5c:	01010113          	addi	sp,sp,16
    80001e60:	00008067          	ret
    80001e64:	00002517          	auipc	a0,0x2
    80001e68:	21450513          	addi	a0,a0,532 # 80004078 <CONSOLE_STATUS+0x68>
    80001e6c:	00001097          	auipc	ra,0x1
    80001e70:	930080e7          	jalr	-1744(ra) # 8000279c <panic>

0000000080001e74 <either_copyin>:
    80001e74:	ff010113          	addi	sp,sp,-16
    80001e78:	00813023          	sd	s0,0(sp)
    80001e7c:	00113423          	sd	ra,8(sp)
    80001e80:	01010413          	addi	s0,sp,16
    80001e84:	02059463          	bnez	a1,80001eac <either_copyin+0x38>
    80001e88:	00060593          	mv	a1,a2
    80001e8c:	0006861b          	sext.w	a2,a3
    80001e90:	00002097          	auipc	ra,0x2
    80001e94:	c14080e7          	jalr	-1004(ra) # 80003aa4 <__memmove>
    80001e98:	00813083          	ld	ra,8(sp)
    80001e9c:	00013403          	ld	s0,0(sp)
    80001ea0:	00000513          	li	a0,0
    80001ea4:	01010113          	addi	sp,sp,16
    80001ea8:	00008067          	ret
    80001eac:	00002517          	auipc	a0,0x2
    80001eb0:	1f450513          	addi	a0,a0,500 # 800040a0 <CONSOLE_STATUS+0x90>
    80001eb4:	00001097          	auipc	ra,0x1
    80001eb8:	8e8080e7          	jalr	-1816(ra) # 8000279c <panic>

0000000080001ebc <trapinit>:
    80001ebc:	ff010113          	addi	sp,sp,-16
    80001ec0:	00813423          	sd	s0,8(sp)
    80001ec4:	01010413          	addi	s0,sp,16
    80001ec8:	00813403          	ld	s0,8(sp)
    80001ecc:	00002597          	auipc	a1,0x2
    80001ed0:	1fc58593          	addi	a1,a1,508 # 800040c8 <CONSOLE_STATUS+0xb8>
    80001ed4:	00004517          	auipc	a0,0x4
    80001ed8:	96c50513          	addi	a0,a0,-1684 # 80005840 <tickslock>
    80001edc:	01010113          	addi	sp,sp,16
    80001ee0:	00001317          	auipc	t1,0x1
    80001ee4:	5c830067          	jr	1480(t1) # 800034a8 <initlock>

0000000080001ee8 <trapinithart>:
    80001ee8:	ff010113          	addi	sp,sp,-16
    80001eec:	00813423          	sd	s0,8(sp)
    80001ef0:	01010413          	addi	s0,sp,16
    80001ef4:	00000797          	auipc	a5,0x0
    80001ef8:	2fc78793          	addi	a5,a5,764 # 800021f0 <kernelvec>
    80001efc:	10579073          	csrw	stvec,a5
    80001f00:	00813403          	ld	s0,8(sp)
    80001f04:	01010113          	addi	sp,sp,16
    80001f08:	00008067          	ret

0000000080001f0c <usertrap>:
    80001f0c:	ff010113          	addi	sp,sp,-16
    80001f10:	00813423          	sd	s0,8(sp)
    80001f14:	01010413          	addi	s0,sp,16
    80001f18:	00813403          	ld	s0,8(sp)
    80001f1c:	01010113          	addi	sp,sp,16
    80001f20:	00008067          	ret

0000000080001f24 <usertrapret>:
    80001f24:	ff010113          	addi	sp,sp,-16
    80001f28:	00813423          	sd	s0,8(sp)
    80001f2c:	01010413          	addi	s0,sp,16
    80001f30:	00813403          	ld	s0,8(sp)
    80001f34:	01010113          	addi	sp,sp,16
    80001f38:	00008067          	ret

0000000080001f3c <kerneltrap>:
    80001f3c:	fe010113          	addi	sp,sp,-32
    80001f40:	00813823          	sd	s0,16(sp)
    80001f44:	00113c23          	sd	ra,24(sp)
    80001f48:	00913423          	sd	s1,8(sp)
    80001f4c:	02010413          	addi	s0,sp,32
    80001f50:	142025f3          	csrr	a1,scause
    80001f54:	100027f3          	csrr	a5,sstatus
    80001f58:	0027f793          	andi	a5,a5,2
    80001f5c:	10079c63          	bnez	a5,80002074 <kerneltrap+0x138>
    80001f60:	142027f3          	csrr	a5,scause
    80001f64:	0207ce63          	bltz	a5,80001fa0 <kerneltrap+0x64>
    80001f68:	00002517          	auipc	a0,0x2
    80001f6c:	1a850513          	addi	a0,a0,424 # 80004110 <CONSOLE_STATUS+0x100>
    80001f70:	00001097          	auipc	ra,0x1
    80001f74:	888080e7          	jalr	-1912(ra) # 800027f8 <__printf>
    80001f78:	141025f3          	csrr	a1,sepc
    80001f7c:	14302673          	csrr	a2,stval
    80001f80:	00002517          	auipc	a0,0x2
    80001f84:	1a050513          	addi	a0,a0,416 # 80004120 <CONSOLE_STATUS+0x110>
    80001f88:	00001097          	auipc	ra,0x1
    80001f8c:	870080e7          	jalr	-1936(ra) # 800027f8 <__printf>
    80001f90:	00002517          	auipc	a0,0x2
    80001f94:	1a850513          	addi	a0,a0,424 # 80004138 <CONSOLE_STATUS+0x128>
    80001f98:	00001097          	auipc	ra,0x1
    80001f9c:	804080e7          	jalr	-2044(ra) # 8000279c <panic>
    80001fa0:	0ff7f713          	andi	a4,a5,255
    80001fa4:	00900693          	li	a3,9
    80001fa8:	04d70063          	beq	a4,a3,80001fe8 <kerneltrap+0xac>
    80001fac:	fff00713          	li	a4,-1
    80001fb0:	03f71713          	slli	a4,a4,0x3f
    80001fb4:	00170713          	addi	a4,a4,1
    80001fb8:	fae798e3          	bne	a5,a4,80001f68 <kerneltrap+0x2c>
    80001fbc:	00000097          	auipc	ra,0x0
    80001fc0:	e00080e7          	jalr	-512(ra) # 80001dbc <cpuid>
    80001fc4:	06050663          	beqz	a0,80002030 <kerneltrap+0xf4>
    80001fc8:	144027f3          	csrr	a5,sip
    80001fcc:	ffd7f793          	andi	a5,a5,-3
    80001fd0:	14479073          	csrw	sip,a5
    80001fd4:	01813083          	ld	ra,24(sp)
    80001fd8:	01013403          	ld	s0,16(sp)
    80001fdc:	00813483          	ld	s1,8(sp)
    80001fe0:	02010113          	addi	sp,sp,32
    80001fe4:	00008067          	ret
    80001fe8:	00000097          	auipc	ra,0x0
    80001fec:	3cc080e7          	jalr	972(ra) # 800023b4 <plic_claim>
    80001ff0:	00a00793          	li	a5,10
    80001ff4:	00050493          	mv	s1,a0
    80001ff8:	06f50863          	beq	a0,a5,80002068 <kerneltrap+0x12c>
    80001ffc:	fc050ce3          	beqz	a0,80001fd4 <kerneltrap+0x98>
    80002000:	00050593          	mv	a1,a0
    80002004:	00002517          	auipc	a0,0x2
    80002008:	0ec50513          	addi	a0,a0,236 # 800040f0 <CONSOLE_STATUS+0xe0>
    8000200c:	00000097          	auipc	ra,0x0
    80002010:	7ec080e7          	jalr	2028(ra) # 800027f8 <__printf>
    80002014:	01013403          	ld	s0,16(sp)
    80002018:	01813083          	ld	ra,24(sp)
    8000201c:	00048513          	mv	a0,s1
    80002020:	00813483          	ld	s1,8(sp)
    80002024:	02010113          	addi	sp,sp,32
    80002028:	00000317          	auipc	t1,0x0
    8000202c:	3c430067          	jr	964(t1) # 800023ec <plic_complete>
    80002030:	00004517          	auipc	a0,0x4
    80002034:	81050513          	addi	a0,a0,-2032 # 80005840 <tickslock>
    80002038:	00001097          	auipc	ra,0x1
    8000203c:	494080e7          	jalr	1172(ra) # 800034cc <acquire>
    80002040:	00002717          	auipc	a4,0x2
    80002044:	6f470713          	addi	a4,a4,1780 # 80004734 <ticks>
    80002048:	00072783          	lw	a5,0(a4)
    8000204c:	00003517          	auipc	a0,0x3
    80002050:	7f450513          	addi	a0,a0,2036 # 80005840 <tickslock>
    80002054:	0017879b          	addiw	a5,a5,1
    80002058:	00f72023          	sw	a5,0(a4)
    8000205c:	00001097          	auipc	ra,0x1
    80002060:	53c080e7          	jalr	1340(ra) # 80003598 <release>
    80002064:	f65ff06f          	j	80001fc8 <kerneltrap+0x8c>
    80002068:	00001097          	auipc	ra,0x1
    8000206c:	098080e7          	jalr	152(ra) # 80003100 <uartintr>
    80002070:	fa5ff06f          	j	80002014 <kerneltrap+0xd8>
    80002074:	00002517          	auipc	a0,0x2
    80002078:	05c50513          	addi	a0,a0,92 # 800040d0 <CONSOLE_STATUS+0xc0>
    8000207c:	00000097          	auipc	ra,0x0
    80002080:	720080e7          	jalr	1824(ra) # 8000279c <panic>

0000000080002084 <clockintr>:
    80002084:	fe010113          	addi	sp,sp,-32
    80002088:	00813823          	sd	s0,16(sp)
    8000208c:	00913423          	sd	s1,8(sp)
    80002090:	00113c23          	sd	ra,24(sp)
    80002094:	02010413          	addi	s0,sp,32
    80002098:	00003497          	auipc	s1,0x3
    8000209c:	7a848493          	addi	s1,s1,1960 # 80005840 <tickslock>
    800020a0:	00048513          	mv	a0,s1
    800020a4:	00001097          	auipc	ra,0x1
    800020a8:	428080e7          	jalr	1064(ra) # 800034cc <acquire>
    800020ac:	00002717          	auipc	a4,0x2
    800020b0:	68870713          	addi	a4,a4,1672 # 80004734 <ticks>
    800020b4:	00072783          	lw	a5,0(a4)
    800020b8:	01013403          	ld	s0,16(sp)
    800020bc:	01813083          	ld	ra,24(sp)
    800020c0:	00048513          	mv	a0,s1
    800020c4:	0017879b          	addiw	a5,a5,1
    800020c8:	00813483          	ld	s1,8(sp)
    800020cc:	00f72023          	sw	a5,0(a4)
    800020d0:	02010113          	addi	sp,sp,32
    800020d4:	00001317          	auipc	t1,0x1
    800020d8:	4c430067          	jr	1220(t1) # 80003598 <release>

00000000800020dc <devintr>:
    800020dc:	142027f3          	csrr	a5,scause
    800020e0:	00000513          	li	a0,0
    800020e4:	0007c463          	bltz	a5,800020ec <devintr+0x10>
    800020e8:	00008067          	ret
    800020ec:	fe010113          	addi	sp,sp,-32
    800020f0:	00813823          	sd	s0,16(sp)
    800020f4:	00113c23          	sd	ra,24(sp)
    800020f8:	00913423          	sd	s1,8(sp)
    800020fc:	02010413          	addi	s0,sp,32
    80002100:	0ff7f713          	andi	a4,a5,255
    80002104:	00900693          	li	a3,9
    80002108:	04d70c63          	beq	a4,a3,80002160 <devintr+0x84>
    8000210c:	fff00713          	li	a4,-1
    80002110:	03f71713          	slli	a4,a4,0x3f
    80002114:	00170713          	addi	a4,a4,1
    80002118:	00e78c63          	beq	a5,a4,80002130 <devintr+0x54>
    8000211c:	01813083          	ld	ra,24(sp)
    80002120:	01013403          	ld	s0,16(sp)
    80002124:	00813483          	ld	s1,8(sp)
    80002128:	02010113          	addi	sp,sp,32
    8000212c:	00008067          	ret
    80002130:	00000097          	auipc	ra,0x0
    80002134:	c8c080e7          	jalr	-884(ra) # 80001dbc <cpuid>
    80002138:	06050663          	beqz	a0,800021a4 <devintr+0xc8>
    8000213c:	144027f3          	csrr	a5,sip
    80002140:	ffd7f793          	andi	a5,a5,-3
    80002144:	14479073          	csrw	sip,a5
    80002148:	01813083          	ld	ra,24(sp)
    8000214c:	01013403          	ld	s0,16(sp)
    80002150:	00813483          	ld	s1,8(sp)
    80002154:	00200513          	li	a0,2
    80002158:	02010113          	addi	sp,sp,32
    8000215c:	00008067          	ret
    80002160:	00000097          	auipc	ra,0x0
    80002164:	254080e7          	jalr	596(ra) # 800023b4 <plic_claim>
    80002168:	00a00793          	li	a5,10
    8000216c:	00050493          	mv	s1,a0
    80002170:	06f50663          	beq	a0,a5,800021dc <devintr+0x100>
    80002174:	00100513          	li	a0,1
    80002178:	fa0482e3          	beqz	s1,8000211c <devintr+0x40>
    8000217c:	00048593          	mv	a1,s1
    80002180:	00002517          	auipc	a0,0x2
    80002184:	f7050513          	addi	a0,a0,-144 # 800040f0 <CONSOLE_STATUS+0xe0>
    80002188:	00000097          	auipc	ra,0x0
    8000218c:	670080e7          	jalr	1648(ra) # 800027f8 <__printf>
    80002190:	00048513          	mv	a0,s1
    80002194:	00000097          	auipc	ra,0x0
    80002198:	258080e7          	jalr	600(ra) # 800023ec <plic_complete>
    8000219c:	00100513          	li	a0,1
    800021a0:	f7dff06f          	j	8000211c <devintr+0x40>
    800021a4:	00003517          	auipc	a0,0x3
    800021a8:	69c50513          	addi	a0,a0,1692 # 80005840 <tickslock>
    800021ac:	00001097          	auipc	ra,0x1
    800021b0:	320080e7          	jalr	800(ra) # 800034cc <acquire>
    800021b4:	00002717          	auipc	a4,0x2
    800021b8:	58070713          	addi	a4,a4,1408 # 80004734 <ticks>
    800021bc:	00072783          	lw	a5,0(a4)
    800021c0:	00003517          	auipc	a0,0x3
    800021c4:	68050513          	addi	a0,a0,1664 # 80005840 <tickslock>
    800021c8:	0017879b          	addiw	a5,a5,1
    800021cc:	00f72023          	sw	a5,0(a4)
    800021d0:	00001097          	auipc	ra,0x1
    800021d4:	3c8080e7          	jalr	968(ra) # 80003598 <release>
    800021d8:	f65ff06f          	j	8000213c <devintr+0x60>
    800021dc:	00001097          	auipc	ra,0x1
    800021e0:	f24080e7          	jalr	-220(ra) # 80003100 <uartintr>
    800021e4:	fadff06f          	j	80002190 <devintr+0xb4>
	...

00000000800021f0 <kernelvec>:
    800021f0:	f0010113          	addi	sp,sp,-256
    800021f4:	00113023          	sd	ra,0(sp)
    800021f8:	00213423          	sd	sp,8(sp)
    800021fc:	00313823          	sd	gp,16(sp)
    80002200:	00413c23          	sd	tp,24(sp)
    80002204:	02513023          	sd	t0,32(sp)
    80002208:	02613423          	sd	t1,40(sp)
    8000220c:	02713823          	sd	t2,48(sp)
    80002210:	02813c23          	sd	s0,56(sp)
    80002214:	04913023          	sd	s1,64(sp)
    80002218:	04a13423          	sd	a0,72(sp)
    8000221c:	04b13823          	sd	a1,80(sp)
    80002220:	04c13c23          	sd	a2,88(sp)
    80002224:	06d13023          	sd	a3,96(sp)
    80002228:	06e13423          	sd	a4,104(sp)
    8000222c:	06f13823          	sd	a5,112(sp)
    80002230:	07013c23          	sd	a6,120(sp)
    80002234:	09113023          	sd	a7,128(sp)
    80002238:	09213423          	sd	s2,136(sp)
    8000223c:	09313823          	sd	s3,144(sp)
    80002240:	09413c23          	sd	s4,152(sp)
    80002244:	0b513023          	sd	s5,160(sp)
    80002248:	0b613423          	sd	s6,168(sp)
    8000224c:	0b713823          	sd	s7,176(sp)
    80002250:	0b813c23          	sd	s8,184(sp)
    80002254:	0d913023          	sd	s9,192(sp)
    80002258:	0da13423          	sd	s10,200(sp)
    8000225c:	0db13823          	sd	s11,208(sp)
    80002260:	0dc13c23          	sd	t3,216(sp)
    80002264:	0fd13023          	sd	t4,224(sp)
    80002268:	0fe13423          	sd	t5,232(sp)
    8000226c:	0ff13823          	sd	t6,240(sp)
    80002270:	ccdff0ef          	jal	ra,80001f3c <kerneltrap>
    80002274:	00013083          	ld	ra,0(sp)
    80002278:	00813103          	ld	sp,8(sp)
    8000227c:	01013183          	ld	gp,16(sp)
    80002280:	02013283          	ld	t0,32(sp)
    80002284:	02813303          	ld	t1,40(sp)
    80002288:	03013383          	ld	t2,48(sp)
    8000228c:	03813403          	ld	s0,56(sp)
    80002290:	04013483          	ld	s1,64(sp)
    80002294:	04813503          	ld	a0,72(sp)
    80002298:	05013583          	ld	a1,80(sp)
    8000229c:	05813603          	ld	a2,88(sp)
    800022a0:	06013683          	ld	a3,96(sp)
    800022a4:	06813703          	ld	a4,104(sp)
    800022a8:	07013783          	ld	a5,112(sp)
    800022ac:	07813803          	ld	a6,120(sp)
    800022b0:	08013883          	ld	a7,128(sp)
    800022b4:	08813903          	ld	s2,136(sp)
    800022b8:	09013983          	ld	s3,144(sp)
    800022bc:	09813a03          	ld	s4,152(sp)
    800022c0:	0a013a83          	ld	s5,160(sp)
    800022c4:	0a813b03          	ld	s6,168(sp)
    800022c8:	0b013b83          	ld	s7,176(sp)
    800022cc:	0b813c03          	ld	s8,184(sp)
    800022d0:	0c013c83          	ld	s9,192(sp)
    800022d4:	0c813d03          	ld	s10,200(sp)
    800022d8:	0d013d83          	ld	s11,208(sp)
    800022dc:	0d813e03          	ld	t3,216(sp)
    800022e0:	0e013e83          	ld	t4,224(sp)
    800022e4:	0e813f03          	ld	t5,232(sp)
    800022e8:	0f013f83          	ld	t6,240(sp)
    800022ec:	10010113          	addi	sp,sp,256
    800022f0:	10200073          	sret
    800022f4:	00000013          	nop
    800022f8:	00000013          	nop
    800022fc:	00000013          	nop

0000000080002300 <timervec>:
    80002300:	34051573          	csrrw	a0,mscratch,a0
    80002304:	00b53023          	sd	a1,0(a0)
    80002308:	00c53423          	sd	a2,8(a0)
    8000230c:	00d53823          	sd	a3,16(a0)
    80002310:	01853583          	ld	a1,24(a0)
    80002314:	02053603          	ld	a2,32(a0)
    80002318:	0005b683          	ld	a3,0(a1)
    8000231c:	00c686b3          	add	a3,a3,a2
    80002320:	00d5b023          	sd	a3,0(a1)
    80002324:	00200593          	li	a1,2
    80002328:	14459073          	csrw	sip,a1
    8000232c:	01053683          	ld	a3,16(a0)
    80002330:	00853603          	ld	a2,8(a0)
    80002334:	00053583          	ld	a1,0(a0)
    80002338:	34051573          	csrrw	a0,mscratch,a0
    8000233c:	30200073          	mret

0000000080002340 <plicinit>:
    80002340:	ff010113          	addi	sp,sp,-16
    80002344:	00813423          	sd	s0,8(sp)
    80002348:	01010413          	addi	s0,sp,16
    8000234c:	00813403          	ld	s0,8(sp)
    80002350:	0c0007b7          	lui	a5,0xc000
    80002354:	00100713          	li	a4,1
    80002358:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000235c:	00e7a223          	sw	a4,4(a5)
    80002360:	01010113          	addi	sp,sp,16
    80002364:	00008067          	ret

0000000080002368 <plicinithart>:
    80002368:	ff010113          	addi	sp,sp,-16
    8000236c:	00813023          	sd	s0,0(sp)
    80002370:	00113423          	sd	ra,8(sp)
    80002374:	01010413          	addi	s0,sp,16
    80002378:	00000097          	auipc	ra,0x0
    8000237c:	a44080e7          	jalr	-1468(ra) # 80001dbc <cpuid>
    80002380:	0085171b          	slliw	a4,a0,0x8
    80002384:	0c0027b7          	lui	a5,0xc002
    80002388:	00e787b3          	add	a5,a5,a4
    8000238c:	40200713          	li	a4,1026
    80002390:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002394:	00813083          	ld	ra,8(sp)
    80002398:	00013403          	ld	s0,0(sp)
    8000239c:	00d5151b          	slliw	a0,a0,0xd
    800023a0:	0c2017b7          	lui	a5,0xc201
    800023a4:	00a78533          	add	a0,a5,a0
    800023a8:	00052023          	sw	zero,0(a0)
    800023ac:	01010113          	addi	sp,sp,16
    800023b0:	00008067          	ret

00000000800023b4 <plic_claim>:
    800023b4:	ff010113          	addi	sp,sp,-16
    800023b8:	00813023          	sd	s0,0(sp)
    800023bc:	00113423          	sd	ra,8(sp)
    800023c0:	01010413          	addi	s0,sp,16
    800023c4:	00000097          	auipc	ra,0x0
    800023c8:	9f8080e7          	jalr	-1544(ra) # 80001dbc <cpuid>
    800023cc:	00813083          	ld	ra,8(sp)
    800023d0:	00013403          	ld	s0,0(sp)
    800023d4:	00d5151b          	slliw	a0,a0,0xd
    800023d8:	0c2017b7          	lui	a5,0xc201
    800023dc:	00a78533          	add	a0,a5,a0
    800023e0:	00452503          	lw	a0,4(a0)
    800023e4:	01010113          	addi	sp,sp,16
    800023e8:	00008067          	ret

00000000800023ec <plic_complete>:
    800023ec:	fe010113          	addi	sp,sp,-32
    800023f0:	00813823          	sd	s0,16(sp)
    800023f4:	00913423          	sd	s1,8(sp)
    800023f8:	00113c23          	sd	ra,24(sp)
    800023fc:	02010413          	addi	s0,sp,32
    80002400:	00050493          	mv	s1,a0
    80002404:	00000097          	auipc	ra,0x0
    80002408:	9b8080e7          	jalr	-1608(ra) # 80001dbc <cpuid>
    8000240c:	01813083          	ld	ra,24(sp)
    80002410:	01013403          	ld	s0,16(sp)
    80002414:	00d5179b          	slliw	a5,a0,0xd
    80002418:	0c201737          	lui	a4,0xc201
    8000241c:	00f707b3          	add	a5,a4,a5
    80002420:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002424:	00813483          	ld	s1,8(sp)
    80002428:	02010113          	addi	sp,sp,32
    8000242c:	00008067          	ret

0000000080002430 <consolewrite>:
    80002430:	fb010113          	addi	sp,sp,-80
    80002434:	04813023          	sd	s0,64(sp)
    80002438:	04113423          	sd	ra,72(sp)
    8000243c:	02913c23          	sd	s1,56(sp)
    80002440:	03213823          	sd	s2,48(sp)
    80002444:	03313423          	sd	s3,40(sp)
    80002448:	03413023          	sd	s4,32(sp)
    8000244c:	01513c23          	sd	s5,24(sp)
    80002450:	05010413          	addi	s0,sp,80
    80002454:	06c05c63          	blez	a2,800024cc <consolewrite+0x9c>
    80002458:	00060993          	mv	s3,a2
    8000245c:	00050a13          	mv	s4,a0
    80002460:	00058493          	mv	s1,a1
    80002464:	00000913          	li	s2,0
    80002468:	fff00a93          	li	s5,-1
    8000246c:	01c0006f          	j	80002488 <consolewrite+0x58>
    80002470:	fbf44503          	lbu	a0,-65(s0)
    80002474:	0019091b          	addiw	s2,s2,1
    80002478:	00148493          	addi	s1,s1,1
    8000247c:	00001097          	auipc	ra,0x1
    80002480:	a9c080e7          	jalr	-1380(ra) # 80002f18 <uartputc>
    80002484:	03298063          	beq	s3,s2,800024a4 <consolewrite+0x74>
    80002488:	00048613          	mv	a2,s1
    8000248c:	00100693          	li	a3,1
    80002490:	000a0593          	mv	a1,s4
    80002494:	fbf40513          	addi	a0,s0,-65
    80002498:	00000097          	auipc	ra,0x0
    8000249c:	9dc080e7          	jalr	-1572(ra) # 80001e74 <either_copyin>
    800024a0:	fd5518e3          	bne	a0,s5,80002470 <consolewrite+0x40>
    800024a4:	04813083          	ld	ra,72(sp)
    800024a8:	04013403          	ld	s0,64(sp)
    800024ac:	03813483          	ld	s1,56(sp)
    800024b0:	02813983          	ld	s3,40(sp)
    800024b4:	02013a03          	ld	s4,32(sp)
    800024b8:	01813a83          	ld	s5,24(sp)
    800024bc:	00090513          	mv	a0,s2
    800024c0:	03013903          	ld	s2,48(sp)
    800024c4:	05010113          	addi	sp,sp,80
    800024c8:	00008067          	ret
    800024cc:	00000913          	li	s2,0
    800024d0:	fd5ff06f          	j	800024a4 <consolewrite+0x74>

00000000800024d4 <consoleread>:
    800024d4:	f9010113          	addi	sp,sp,-112
    800024d8:	06813023          	sd	s0,96(sp)
    800024dc:	04913c23          	sd	s1,88(sp)
    800024e0:	05213823          	sd	s2,80(sp)
    800024e4:	05313423          	sd	s3,72(sp)
    800024e8:	05413023          	sd	s4,64(sp)
    800024ec:	03513c23          	sd	s5,56(sp)
    800024f0:	03613823          	sd	s6,48(sp)
    800024f4:	03713423          	sd	s7,40(sp)
    800024f8:	03813023          	sd	s8,32(sp)
    800024fc:	06113423          	sd	ra,104(sp)
    80002500:	01913c23          	sd	s9,24(sp)
    80002504:	07010413          	addi	s0,sp,112
    80002508:	00060b93          	mv	s7,a2
    8000250c:	00050913          	mv	s2,a0
    80002510:	00058c13          	mv	s8,a1
    80002514:	00060b1b          	sext.w	s6,a2
    80002518:	00003497          	auipc	s1,0x3
    8000251c:	34048493          	addi	s1,s1,832 # 80005858 <cons>
    80002520:	00400993          	li	s3,4
    80002524:	fff00a13          	li	s4,-1
    80002528:	00a00a93          	li	s5,10
    8000252c:	05705e63          	blez	s7,80002588 <consoleread+0xb4>
    80002530:	09c4a703          	lw	a4,156(s1)
    80002534:	0984a783          	lw	a5,152(s1)
    80002538:	0007071b          	sext.w	a4,a4
    8000253c:	08e78463          	beq	a5,a4,800025c4 <consoleread+0xf0>
    80002540:	07f7f713          	andi	a4,a5,127
    80002544:	00e48733          	add	a4,s1,a4
    80002548:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000254c:	0017869b          	addiw	a3,a5,1
    80002550:	08d4ac23          	sw	a3,152(s1)
    80002554:	00070c9b          	sext.w	s9,a4
    80002558:	0b370663          	beq	a4,s3,80002604 <consoleread+0x130>
    8000255c:	00100693          	li	a3,1
    80002560:	f9f40613          	addi	a2,s0,-97
    80002564:	000c0593          	mv	a1,s8
    80002568:	00090513          	mv	a0,s2
    8000256c:	f8e40fa3          	sb	a4,-97(s0)
    80002570:	00000097          	auipc	ra,0x0
    80002574:	8b8080e7          	jalr	-1864(ra) # 80001e28 <either_copyout>
    80002578:	01450863          	beq	a0,s4,80002588 <consoleread+0xb4>
    8000257c:	001c0c13          	addi	s8,s8,1
    80002580:	fffb8b9b          	addiw	s7,s7,-1
    80002584:	fb5c94e3          	bne	s9,s5,8000252c <consoleread+0x58>
    80002588:	000b851b          	sext.w	a0,s7
    8000258c:	06813083          	ld	ra,104(sp)
    80002590:	06013403          	ld	s0,96(sp)
    80002594:	05813483          	ld	s1,88(sp)
    80002598:	05013903          	ld	s2,80(sp)
    8000259c:	04813983          	ld	s3,72(sp)
    800025a0:	04013a03          	ld	s4,64(sp)
    800025a4:	03813a83          	ld	s5,56(sp)
    800025a8:	02813b83          	ld	s7,40(sp)
    800025ac:	02013c03          	ld	s8,32(sp)
    800025b0:	01813c83          	ld	s9,24(sp)
    800025b4:	40ab053b          	subw	a0,s6,a0
    800025b8:	03013b03          	ld	s6,48(sp)
    800025bc:	07010113          	addi	sp,sp,112
    800025c0:	00008067          	ret
    800025c4:	00001097          	auipc	ra,0x1
    800025c8:	1d8080e7          	jalr	472(ra) # 8000379c <push_on>
    800025cc:	0984a703          	lw	a4,152(s1)
    800025d0:	09c4a783          	lw	a5,156(s1)
    800025d4:	0007879b          	sext.w	a5,a5
    800025d8:	fef70ce3          	beq	a4,a5,800025d0 <consoleread+0xfc>
    800025dc:	00001097          	auipc	ra,0x1
    800025e0:	234080e7          	jalr	564(ra) # 80003810 <pop_on>
    800025e4:	0984a783          	lw	a5,152(s1)
    800025e8:	07f7f713          	andi	a4,a5,127
    800025ec:	00e48733          	add	a4,s1,a4
    800025f0:	01874703          	lbu	a4,24(a4)
    800025f4:	0017869b          	addiw	a3,a5,1
    800025f8:	08d4ac23          	sw	a3,152(s1)
    800025fc:	00070c9b          	sext.w	s9,a4
    80002600:	f5371ee3          	bne	a4,s3,8000255c <consoleread+0x88>
    80002604:	000b851b          	sext.w	a0,s7
    80002608:	f96bf2e3          	bgeu	s7,s6,8000258c <consoleread+0xb8>
    8000260c:	08f4ac23          	sw	a5,152(s1)
    80002610:	f7dff06f          	j	8000258c <consoleread+0xb8>

0000000080002614 <consputc>:
    80002614:	10000793          	li	a5,256
    80002618:	00f50663          	beq	a0,a5,80002624 <consputc+0x10>
    8000261c:	00001317          	auipc	t1,0x1
    80002620:	9f430067          	jr	-1548(t1) # 80003010 <uartputc_sync>
    80002624:	ff010113          	addi	sp,sp,-16
    80002628:	00113423          	sd	ra,8(sp)
    8000262c:	00813023          	sd	s0,0(sp)
    80002630:	01010413          	addi	s0,sp,16
    80002634:	00800513          	li	a0,8
    80002638:	00001097          	auipc	ra,0x1
    8000263c:	9d8080e7          	jalr	-1576(ra) # 80003010 <uartputc_sync>
    80002640:	02000513          	li	a0,32
    80002644:	00001097          	auipc	ra,0x1
    80002648:	9cc080e7          	jalr	-1588(ra) # 80003010 <uartputc_sync>
    8000264c:	00013403          	ld	s0,0(sp)
    80002650:	00813083          	ld	ra,8(sp)
    80002654:	00800513          	li	a0,8
    80002658:	01010113          	addi	sp,sp,16
    8000265c:	00001317          	auipc	t1,0x1
    80002660:	9b430067          	jr	-1612(t1) # 80003010 <uartputc_sync>

0000000080002664 <consoleintr>:
    80002664:	fe010113          	addi	sp,sp,-32
    80002668:	00813823          	sd	s0,16(sp)
    8000266c:	00913423          	sd	s1,8(sp)
    80002670:	01213023          	sd	s2,0(sp)
    80002674:	00113c23          	sd	ra,24(sp)
    80002678:	02010413          	addi	s0,sp,32
    8000267c:	00003917          	auipc	s2,0x3
    80002680:	1dc90913          	addi	s2,s2,476 # 80005858 <cons>
    80002684:	00050493          	mv	s1,a0
    80002688:	00090513          	mv	a0,s2
    8000268c:	00001097          	auipc	ra,0x1
    80002690:	e40080e7          	jalr	-448(ra) # 800034cc <acquire>
    80002694:	02048c63          	beqz	s1,800026cc <consoleintr+0x68>
    80002698:	0a092783          	lw	a5,160(s2)
    8000269c:	09892703          	lw	a4,152(s2)
    800026a0:	07f00693          	li	a3,127
    800026a4:	40e7873b          	subw	a4,a5,a4
    800026a8:	02e6e263          	bltu	a3,a4,800026cc <consoleintr+0x68>
    800026ac:	00d00713          	li	a4,13
    800026b0:	04e48063          	beq	s1,a4,800026f0 <consoleintr+0x8c>
    800026b4:	07f7f713          	andi	a4,a5,127
    800026b8:	00e90733          	add	a4,s2,a4
    800026bc:	0017879b          	addiw	a5,a5,1
    800026c0:	0af92023          	sw	a5,160(s2)
    800026c4:	00970c23          	sb	s1,24(a4)
    800026c8:	08f92e23          	sw	a5,156(s2)
    800026cc:	01013403          	ld	s0,16(sp)
    800026d0:	01813083          	ld	ra,24(sp)
    800026d4:	00813483          	ld	s1,8(sp)
    800026d8:	00013903          	ld	s2,0(sp)
    800026dc:	00003517          	auipc	a0,0x3
    800026e0:	17c50513          	addi	a0,a0,380 # 80005858 <cons>
    800026e4:	02010113          	addi	sp,sp,32
    800026e8:	00001317          	auipc	t1,0x1
    800026ec:	eb030067          	jr	-336(t1) # 80003598 <release>
    800026f0:	00a00493          	li	s1,10
    800026f4:	fc1ff06f          	j	800026b4 <consoleintr+0x50>

00000000800026f8 <consoleinit>:
    800026f8:	fe010113          	addi	sp,sp,-32
    800026fc:	00113c23          	sd	ra,24(sp)
    80002700:	00813823          	sd	s0,16(sp)
    80002704:	00913423          	sd	s1,8(sp)
    80002708:	02010413          	addi	s0,sp,32
    8000270c:	00003497          	auipc	s1,0x3
    80002710:	14c48493          	addi	s1,s1,332 # 80005858 <cons>
    80002714:	00048513          	mv	a0,s1
    80002718:	00002597          	auipc	a1,0x2
    8000271c:	a3058593          	addi	a1,a1,-1488 # 80004148 <CONSOLE_STATUS+0x138>
    80002720:	00001097          	auipc	ra,0x1
    80002724:	d88080e7          	jalr	-632(ra) # 800034a8 <initlock>
    80002728:	00000097          	auipc	ra,0x0
    8000272c:	7ac080e7          	jalr	1964(ra) # 80002ed4 <uartinit>
    80002730:	01813083          	ld	ra,24(sp)
    80002734:	01013403          	ld	s0,16(sp)
    80002738:	00000797          	auipc	a5,0x0
    8000273c:	d9c78793          	addi	a5,a5,-612 # 800024d4 <consoleread>
    80002740:	0af4bc23          	sd	a5,184(s1)
    80002744:	00000797          	auipc	a5,0x0
    80002748:	cec78793          	addi	a5,a5,-788 # 80002430 <consolewrite>
    8000274c:	0cf4b023          	sd	a5,192(s1)
    80002750:	00813483          	ld	s1,8(sp)
    80002754:	02010113          	addi	sp,sp,32
    80002758:	00008067          	ret

000000008000275c <console_read>:
    8000275c:	ff010113          	addi	sp,sp,-16
    80002760:	00813423          	sd	s0,8(sp)
    80002764:	01010413          	addi	s0,sp,16
    80002768:	00813403          	ld	s0,8(sp)
    8000276c:	00003317          	auipc	t1,0x3
    80002770:	1a433303          	ld	t1,420(t1) # 80005910 <devsw+0x10>
    80002774:	01010113          	addi	sp,sp,16
    80002778:	00030067          	jr	t1

000000008000277c <console_write>:
    8000277c:	ff010113          	addi	sp,sp,-16
    80002780:	00813423          	sd	s0,8(sp)
    80002784:	01010413          	addi	s0,sp,16
    80002788:	00813403          	ld	s0,8(sp)
    8000278c:	00003317          	auipc	t1,0x3
    80002790:	18c33303          	ld	t1,396(t1) # 80005918 <devsw+0x18>
    80002794:	01010113          	addi	sp,sp,16
    80002798:	00030067          	jr	t1

000000008000279c <panic>:
    8000279c:	fe010113          	addi	sp,sp,-32
    800027a0:	00113c23          	sd	ra,24(sp)
    800027a4:	00813823          	sd	s0,16(sp)
    800027a8:	00913423          	sd	s1,8(sp)
    800027ac:	02010413          	addi	s0,sp,32
    800027b0:	00050493          	mv	s1,a0
    800027b4:	00002517          	auipc	a0,0x2
    800027b8:	99c50513          	addi	a0,a0,-1636 # 80004150 <CONSOLE_STATUS+0x140>
    800027bc:	00003797          	auipc	a5,0x3
    800027c0:	1e07ae23          	sw	zero,508(a5) # 800059b8 <pr+0x18>
    800027c4:	00000097          	auipc	ra,0x0
    800027c8:	034080e7          	jalr	52(ra) # 800027f8 <__printf>
    800027cc:	00048513          	mv	a0,s1
    800027d0:	00000097          	auipc	ra,0x0
    800027d4:	028080e7          	jalr	40(ra) # 800027f8 <__printf>
    800027d8:	00002517          	auipc	a0,0x2
    800027dc:	95850513          	addi	a0,a0,-1704 # 80004130 <CONSOLE_STATUS+0x120>
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	018080e7          	jalr	24(ra) # 800027f8 <__printf>
    800027e8:	00100793          	li	a5,1
    800027ec:	00002717          	auipc	a4,0x2
    800027f0:	f4f72623          	sw	a5,-180(a4) # 80004738 <panicked>
    800027f4:	0000006f          	j	800027f4 <panic+0x58>

00000000800027f8 <__printf>:
    800027f8:	f3010113          	addi	sp,sp,-208
    800027fc:	08813023          	sd	s0,128(sp)
    80002800:	07313423          	sd	s3,104(sp)
    80002804:	09010413          	addi	s0,sp,144
    80002808:	05813023          	sd	s8,64(sp)
    8000280c:	08113423          	sd	ra,136(sp)
    80002810:	06913c23          	sd	s1,120(sp)
    80002814:	07213823          	sd	s2,112(sp)
    80002818:	07413023          	sd	s4,96(sp)
    8000281c:	05513c23          	sd	s5,88(sp)
    80002820:	05613823          	sd	s6,80(sp)
    80002824:	05713423          	sd	s7,72(sp)
    80002828:	03913c23          	sd	s9,56(sp)
    8000282c:	03a13823          	sd	s10,48(sp)
    80002830:	03b13423          	sd	s11,40(sp)
    80002834:	00003317          	auipc	t1,0x3
    80002838:	16c30313          	addi	t1,t1,364 # 800059a0 <pr>
    8000283c:	01832c03          	lw	s8,24(t1)
    80002840:	00b43423          	sd	a1,8(s0)
    80002844:	00c43823          	sd	a2,16(s0)
    80002848:	00d43c23          	sd	a3,24(s0)
    8000284c:	02e43023          	sd	a4,32(s0)
    80002850:	02f43423          	sd	a5,40(s0)
    80002854:	03043823          	sd	a6,48(s0)
    80002858:	03143c23          	sd	a7,56(s0)
    8000285c:	00050993          	mv	s3,a0
    80002860:	4a0c1663          	bnez	s8,80002d0c <__printf+0x514>
    80002864:	60098c63          	beqz	s3,80002e7c <__printf+0x684>
    80002868:	0009c503          	lbu	a0,0(s3)
    8000286c:	00840793          	addi	a5,s0,8
    80002870:	f6f43c23          	sd	a5,-136(s0)
    80002874:	00000493          	li	s1,0
    80002878:	22050063          	beqz	a0,80002a98 <__printf+0x2a0>
    8000287c:	00002a37          	lui	s4,0x2
    80002880:	00018ab7          	lui	s5,0x18
    80002884:	000f4b37          	lui	s6,0xf4
    80002888:	00989bb7          	lui	s7,0x989
    8000288c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002890:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002894:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002898:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000289c:	00148c9b          	addiw	s9,s1,1
    800028a0:	02500793          	li	a5,37
    800028a4:	01998933          	add	s2,s3,s9
    800028a8:	38f51263          	bne	a0,a5,80002c2c <__printf+0x434>
    800028ac:	00094783          	lbu	a5,0(s2)
    800028b0:	00078c9b          	sext.w	s9,a5
    800028b4:	1e078263          	beqz	a5,80002a98 <__printf+0x2a0>
    800028b8:	0024849b          	addiw	s1,s1,2
    800028bc:	07000713          	li	a4,112
    800028c0:	00998933          	add	s2,s3,s1
    800028c4:	38e78a63          	beq	a5,a4,80002c58 <__printf+0x460>
    800028c8:	20f76863          	bltu	a4,a5,80002ad8 <__printf+0x2e0>
    800028cc:	42a78863          	beq	a5,a0,80002cfc <__printf+0x504>
    800028d0:	06400713          	li	a4,100
    800028d4:	40e79663          	bne	a5,a4,80002ce0 <__printf+0x4e8>
    800028d8:	f7843783          	ld	a5,-136(s0)
    800028dc:	0007a603          	lw	a2,0(a5)
    800028e0:	00878793          	addi	a5,a5,8
    800028e4:	f6f43c23          	sd	a5,-136(s0)
    800028e8:	42064a63          	bltz	a2,80002d1c <__printf+0x524>
    800028ec:	00a00713          	li	a4,10
    800028f0:	02e677bb          	remuw	a5,a2,a4
    800028f4:	00002d97          	auipc	s11,0x2
    800028f8:	884d8d93          	addi	s11,s11,-1916 # 80004178 <digits>
    800028fc:	00900593          	li	a1,9
    80002900:	0006051b          	sext.w	a0,a2
    80002904:	00000c93          	li	s9,0
    80002908:	02079793          	slli	a5,a5,0x20
    8000290c:	0207d793          	srli	a5,a5,0x20
    80002910:	00fd87b3          	add	a5,s11,a5
    80002914:	0007c783          	lbu	a5,0(a5)
    80002918:	02e656bb          	divuw	a3,a2,a4
    8000291c:	f8f40023          	sb	a5,-128(s0)
    80002920:	14c5d863          	bge	a1,a2,80002a70 <__printf+0x278>
    80002924:	06300593          	li	a1,99
    80002928:	00100c93          	li	s9,1
    8000292c:	02e6f7bb          	remuw	a5,a3,a4
    80002930:	02079793          	slli	a5,a5,0x20
    80002934:	0207d793          	srli	a5,a5,0x20
    80002938:	00fd87b3          	add	a5,s11,a5
    8000293c:	0007c783          	lbu	a5,0(a5)
    80002940:	02e6d73b          	divuw	a4,a3,a4
    80002944:	f8f400a3          	sb	a5,-127(s0)
    80002948:	12a5f463          	bgeu	a1,a0,80002a70 <__printf+0x278>
    8000294c:	00a00693          	li	a3,10
    80002950:	00900593          	li	a1,9
    80002954:	02d777bb          	remuw	a5,a4,a3
    80002958:	02079793          	slli	a5,a5,0x20
    8000295c:	0207d793          	srli	a5,a5,0x20
    80002960:	00fd87b3          	add	a5,s11,a5
    80002964:	0007c503          	lbu	a0,0(a5)
    80002968:	02d757bb          	divuw	a5,a4,a3
    8000296c:	f8a40123          	sb	a0,-126(s0)
    80002970:	48e5f263          	bgeu	a1,a4,80002df4 <__printf+0x5fc>
    80002974:	06300513          	li	a0,99
    80002978:	02d7f5bb          	remuw	a1,a5,a3
    8000297c:	02059593          	slli	a1,a1,0x20
    80002980:	0205d593          	srli	a1,a1,0x20
    80002984:	00bd85b3          	add	a1,s11,a1
    80002988:	0005c583          	lbu	a1,0(a1)
    8000298c:	02d7d7bb          	divuw	a5,a5,a3
    80002990:	f8b401a3          	sb	a1,-125(s0)
    80002994:	48e57263          	bgeu	a0,a4,80002e18 <__printf+0x620>
    80002998:	3e700513          	li	a0,999
    8000299c:	02d7f5bb          	remuw	a1,a5,a3
    800029a0:	02059593          	slli	a1,a1,0x20
    800029a4:	0205d593          	srli	a1,a1,0x20
    800029a8:	00bd85b3          	add	a1,s11,a1
    800029ac:	0005c583          	lbu	a1,0(a1)
    800029b0:	02d7d7bb          	divuw	a5,a5,a3
    800029b4:	f8b40223          	sb	a1,-124(s0)
    800029b8:	46e57663          	bgeu	a0,a4,80002e24 <__printf+0x62c>
    800029bc:	02d7f5bb          	remuw	a1,a5,a3
    800029c0:	02059593          	slli	a1,a1,0x20
    800029c4:	0205d593          	srli	a1,a1,0x20
    800029c8:	00bd85b3          	add	a1,s11,a1
    800029cc:	0005c583          	lbu	a1,0(a1)
    800029d0:	02d7d7bb          	divuw	a5,a5,a3
    800029d4:	f8b402a3          	sb	a1,-123(s0)
    800029d8:	46ea7863          	bgeu	s4,a4,80002e48 <__printf+0x650>
    800029dc:	02d7f5bb          	remuw	a1,a5,a3
    800029e0:	02059593          	slli	a1,a1,0x20
    800029e4:	0205d593          	srli	a1,a1,0x20
    800029e8:	00bd85b3          	add	a1,s11,a1
    800029ec:	0005c583          	lbu	a1,0(a1)
    800029f0:	02d7d7bb          	divuw	a5,a5,a3
    800029f4:	f8b40323          	sb	a1,-122(s0)
    800029f8:	3eeaf863          	bgeu	s5,a4,80002de8 <__printf+0x5f0>
    800029fc:	02d7f5bb          	remuw	a1,a5,a3
    80002a00:	02059593          	slli	a1,a1,0x20
    80002a04:	0205d593          	srli	a1,a1,0x20
    80002a08:	00bd85b3          	add	a1,s11,a1
    80002a0c:	0005c583          	lbu	a1,0(a1)
    80002a10:	02d7d7bb          	divuw	a5,a5,a3
    80002a14:	f8b403a3          	sb	a1,-121(s0)
    80002a18:	42eb7e63          	bgeu	s6,a4,80002e54 <__printf+0x65c>
    80002a1c:	02d7f5bb          	remuw	a1,a5,a3
    80002a20:	02059593          	slli	a1,a1,0x20
    80002a24:	0205d593          	srli	a1,a1,0x20
    80002a28:	00bd85b3          	add	a1,s11,a1
    80002a2c:	0005c583          	lbu	a1,0(a1)
    80002a30:	02d7d7bb          	divuw	a5,a5,a3
    80002a34:	f8b40423          	sb	a1,-120(s0)
    80002a38:	42ebfc63          	bgeu	s7,a4,80002e70 <__printf+0x678>
    80002a3c:	02079793          	slli	a5,a5,0x20
    80002a40:	0207d793          	srli	a5,a5,0x20
    80002a44:	00fd8db3          	add	s11,s11,a5
    80002a48:	000dc703          	lbu	a4,0(s11)
    80002a4c:	00a00793          	li	a5,10
    80002a50:	00900c93          	li	s9,9
    80002a54:	f8e404a3          	sb	a4,-119(s0)
    80002a58:	00065c63          	bgez	a2,80002a70 <__printf+0x278>
    80002a5c:	f9040713          	addi	a4,s0,-112
    80002a60:	00f70733          	add	a4,a4,a5
    80002a64:	02d00693          	li	a3,45
    80002a68:	fed70823          	sb	a3,-16(a4)
    80002a6c:	00078c93          	mv	s9,a5
    80002a70:	f8040793          	addi	a5,s0,-128
    80002a74:	01978cb3          	add	s9,a5,s9
    80002a78:	f7f40d13          	addi	s10,s0,-129
    80002a7c:	000cc503          	lbu	a0,0(s9)
    80002a80:	fffc8c93          	addi	s9,s9,-1
    80002a84:	00000097          	auipc	ra,0x0
    80002a88:	b90080e7          	jalr	-1136(ra) # 80002614 <consputc>
    80002a8c:	ffac98e3          	bne	s9,s10,80002a7c <__printf+0x284>
    80002a90:	00094503          	lbu	a0,0(s2)
    80002a94:	e00514e3          	bnez	a0,8000289c <__printf+0xa4>
    80002a98:	1a0c1663          	bnez	s8,80002c44 <__printf+0x44c>
    80002a9c:	08813083          	ld	ra,136(sp)
    80002aa0:	08013403          	ld	s0,128(sp)
    80002aa4:	07813483          	ld	s1,120(sp)
    80002aa8:	07013903          	ld	s2,112(sp)
    80002aac:	06813983          	ld	s3,104(sp)
    80002ab0:	06013a03          	ld	s4,96(sp)
    80002ab4:	05813a83          	ld	s5,88(sp)
    80002ab8:	05013b03          	ld	s6,80(sp)
    80002abc:	04813b83          	ld	s7,72(sp)
    80002ac0:	04013c03          	ld	s8,64(sp)
    80002ac4:	03813c83          	ld	s9,56(sp)
    80002ac8:	03013d03          	ld	s10,48(sp)
    80002acc:	02813d83          	ld	s11,40(sp)
    80002ad0:	0d010113          	addi	sp,sp,208
    80002ad4:	00008067          	ret
    80002ad8:	07300713          	li	a4,115
    80002adc:	1ce78a63          	beq	a5,a4,80002cb0 <__printf+0x4b8>
    80002ae0:	07800713          	li	a4,120
    80002ae4:	1ee79e63          	bne	a5,a4,80002ce0 <__printf+0x4e8>
    80002ae8:	f7843783          	ld	a5,-136(s0)
    80002aec:	0007a703          	lw	a4,0(a5)
    80002af0:	00878793          	addi	a5,a5,8
    80002af4:	f6f43c23          	sd	a5,-136(s0)
    80002af8:	28074263          	bltz	a4,80002d7c <__printf+0x584>
    80002afc:	00001d97          	auipc	s11,0x1
    80002b00:	67cd8d93          	addi	s11,s11,1660 # 80004178 <digits>
    80002b04:	00f77793          	andi	a5,a4,15
    80002b08:	00fd87b3          	add	a5,s11,a5
    80002b0c:	0007c683          	lbu	a3,0(a5)
    80002b10:	00f00613          	li	a2,15
    80002b14:	0007079b          	sext.w	a5,a4
    80002b18:	f8d40023          	sb	a3,-128(s0)
    80002b1c:	0047559b          	srliw	a1,a4,0x4
    80002b20:	0047569b          	srliw	a3,a4,0x4
    80002b24:	00000c93          	li	s9,0
    80002b28:	0ee65063          	bge	a2,a4,80002c08 <__printf+0x410>
    80002b2c:	00f6f693          	andi	a3,a3,15
    80002b30:	00dd86b3          	add	a3,s11,a3
    80002b34:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002b38:	0087d79b          	srliw	a5,a5,0x8
    80002b3c:	00100c93          	li	s9,1
    80002b40:	f8d400a3          	sb	a3,-127(s0)
    80002b44:	0cb67263          	bgeu	a2,a1,80002c08 <__printf+0x410>
    80002b48:	00f7f693          	andi	a3,a5,15
    80002b4c:	00dd86b3          	add	a3,s11,a3
    80002b50:	0006c583          	lbu	a1,0(a3)
    80002b54:	00f00613          	li	a2,15
    80002b58:	0047d69b          	srliw	a3,a5,0x4
    80002b5c:	f8b40123          	sb	a1,-126(s0)
    80002b60:	0047d593          	srli	a1,a5,0x4
    80002b64:	28f67e63          	bgeu	a2,a5,80002e00 <__printf+0x608>
    80002b68:	00f6f693          	andi	a3,a3,15
    80002b6c:	00dd86b3          	add	a3,s11,a3
    80002b70:	0006c503          	lbu	a0,0(a3)
    80002b74:	0087d813          	srli	a6,a5,0x8
    80002b78:	0087d69b          	srliw	a3,a5,0x8
    80002b7c:	f8a401a3          	sb	a0,-125(s0)
    80002b80:	28b67663          	bgeu	a2,a1,80002e0c <__printf+0x614>
    80002b84:	00f6f693          	andi	a3,a3,15
    80002b88:	00dd86b3          	add	a3,s11,a3
    80002b8c:	0006c583          	lbu	a1,0(a3)
    80002b90:	00c7d513          	srli	a0,a5,0xc
    80002b94:	00c7d69b          	srliw	a3,a5,0xc
    80002b98:	f8b40223          	sb	a1,-124(s0)
    80002b9c:	29067a63          	bgeu	a2,a6,80002e30 <__printf+0x638>
    80002ba0:	00f6f693          	andi	a3,a3,15
    80002ba4:	00dd86b3          	add	a3,s11,a3
    80002ba8:	0006c583          	lbu	a1,0(a3)
    80002bac:	0107d813          	srli	a6,a5,0x10
    80002bb0:	0107d69b          	srliw	a3,a5,0x10
    80002bb4:	f8b402a3          	sb	a1,-123(s0)
    80002bb8:	28a67263          	bgeu	a2,a0,80002e3c <__printf+0x644>
    80002bbc:	00f6f693          	andi	a3,a3,15
    80002bc0:	00dd86b3          	add	a3,s11,a3
    80002bc4:	0006c683          	lbu	a3,0(a3)
    80002bc8:	0147d79b          	srliw	a5,a5,0x14
    80002bcc:	f8d40323          	sb	a3,-122(s0)
    80002bd0:	21067663          	bgeu	a2,a6,80002ddc <__printf+0x5e4>
    80002bd4:	02079793          	slli	a5,a5,0x20
    80002bd8:	0207d793          	srli	a5,a5,0x20
    80002bdc:	00fd8db3          	add	s11,s11,a5
    80002be0:	000dc683          	lbu	a3,0(s11)
    80002be4:	00800793          	li	a5,8
    80002be8:	00700c93          	li	s9,7
    80002bec:	f8d403a3          	sb	a3,-121(s0)
    80002bf0:	00075c63          	bgez	a4,80002c08 <__printf+0x410>
    80002bf4:	f9040713          	addi	a4,s0,-112
    80002bf8:	00f70733          	add	a4,a4,a5
    80002bfc:	02d00693          	li	a3,45
    80002c00:	fed70823          	sb	a3,-16(a4)
    80002c04:	00078c93          	mv	s9,a5
    80002c08:	f8040793          	addi	a5,s0,-128
    80002c0c:	01978cb3          	add	s9,a5,s9
    80002c10:	f7f40d13          	addi	s10,s0,-129
    80002c14:	000cc503          	lbu	a0,0(s9)
    80002c18:	fffc8c93          	addi	s9,s9,-1
    80002c1c:	00000097          	auipc	ra,0x0
    80002c20:	9f8080e7          	jalr	-1544(ra) # 80002614 <consputc>
    80002c24:	ff9d18e3          	bne	s10,s9,80002c14 <__printf+0x41c>
    80002c28:	0100006f          	j	80002c38 <__printf+0x440>
    80002c2c:	00000097          	auipc	ra,0x0
    80002c30:	9e8080e7          	jalr	-1560(ra) # 80002614 <consputc>
    80002c34:	000c8493          	mv	s1,s9
    80002c38:	00094503          	lbu	a0,0(s2)
    80002c3c:	c60510e3          	bnez	a0,8000289c <__printf+0xa4>
    80002c40:	e40c0ee3          	beqz	s8,80002a9c <__printf+0x2a4>
    80002c44:	00003517          	auipc	a0,0x3
    80002c48:	d5c50513          	addi	a0,a0,-676 # 800059a0 <pr>
    80002c4c:	00001097          	auipc	ra,0x1
    80002c50:	94c080e7          	jalr	-1716(ra) # 80003598 <release>
    80002c54:	e49ff06f          	j	80002a9c <__printf+0x2a4>
    80002c58:	f7843783          	ld	a5,-136(s0)
    80002c5c:	03000513          	li	a0,48
    80002c60:	01000d13          	li	s10,16
    80002c64:	00878713          	addi	a4,a5,8
    80002c68:	0007bc83          	ld	s9,0(a5)
    80002c6c:	f6e43c23          	sd	a4,-136(s0)
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	9a4080e7          	jalr	-1628(ra) # 80002614 <consputc>
    80002c78:	07800513          	li	a0,120
    80002c7c:	00000097          	auipc	ra,0x0
    80002c80:	998080e7          	jalr	-1640(ra) # 80002614 <consputc>
    80002c84:	00001d97          	auipc	s11,0x1
    80002c88:	4f4d8d93          	addi	s11,s11,1268 # 80004178 <digits>
    80002c8c:	03ccd793          	srli	a5,s9,0x3c
    80002c90:	00fd87b3          	add	a5,s11,a5
    80002c94:	0007c503          	lbu	a0,0(a5)
    80002c98:	fffd0d1b          	addiw	s10,s10,-1
    80002c9c:	004c9c93          	slli	s9,s9,0x4
    80002ca0:	00000097          	auipc	ra,0x0
    80002ca4:	974080e7          	jalr	-1676(ra) # 80002614 <consputc>
    80002ca8:	fe0d12e3          	bnez	s10,80002c8c <__printf+0x494>
    80002cac:	f8dff06f          	j	80002c38 <__printf+0x440>
    80002cb0:	f7843783          	ld	a5,-136(s0)
    80002cb4:	0007bc83          	ld	s9,0(a5)
    80002cb8:	00878793          	addi	a5,a5,8
    80002cbc:	f6f43c23          	sd	a5,-136(s0)
    80002cc0:	000c9a63          	bnez	s9,80002cd4 <__printf+0x4dc>
    80002cc4:	1080006f          	j	80002dcc <__printf+0x5d4>
    80002cc8:	001c8c93          	addi	s9,s9,1
    80002ccc:	00000097          	auipc	ra,0x0
    80002cd0:	948080e7          	jalr	-1720(ra) # 80002614 <consputc>
    80002cd4:	000cc503          	lbu	a0,0(s9)
    80002cd8:	fe0518e3          	bnez	a0,80002cc8 <__printf+0x4d0>
    80002cdc:	f5dff06f          	j	80002c38 <__printf+0x440>
    80002ce0:	02500513          	li	a0,37
    80002ce4:	00000097          	auipc	ra,0x0
    80002ce8:	930080e7          	jalr	-1744(ra) # 80002614 <consputc>
    80002cec:	000c8513          	mv	a0,s9
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	924080e7          	jalr	-1756(ra) # 80002614 <consputc>
    80002cf8:	f41ff06f          	j	80002c38 <__printf+0x440>
    80002cfc:	02500513          	li	a0,37
    80002d00:	00000097          	auipc	ra,0x0
    80002d04:	914080e7          	jalr	-1772(ra) # 80002614 <consputc>
    80002d08:	f31ff06f          	j	80002c38 <__printf+0x440>
    80002d0c:	00030513          	mv	a0,t1
    80002d10:	00000097          	auipc	ra,0x0
    80002d14:	7bc080e7          	jalr	1980(ra) # 800034cc <acquire>
    80002d18:	b4dff06f          	j	80002864 <__printf+0x6c>
    80002d1c:	40c0053b          	negw	a0,a2
    80002d20:	00a00713          	li	a4,10
    80002d24:	02e576bb          	remuw	a3,a0,a4
    80002d28:	00001d97          	auipc	s11,0x1
    80002d2c:	450d8d93          	addi	s11,s11,1104 # 80004178 <digits>
    80002d30:	ff700593          	li	a1,-9
    80002d34:	02069693          	slli	a3,a3,0x20
    80002d38:	0206d693          	srli	a3,a3,0x20
    80002d3c:	00dd86b3          	add	a3,s11,a3
    80002d40:	0006c683          	lbu	a3,0(a3)
    80002d44:	02e557bb          	divuw	a5,a0,a4
    80002d48:	f8d40023          	sb	a3,-128(s0)
    80002d4c:	10b65e63          	bge	a2,a1,80002e68 <__printf+0x670>
    80002d50:	06300593          	li	a1,99
    80002d54:	02e7f6bb          	remuw	a3,a5,a4
    80002d58:	02069693          	slli	a3,a3,0x20
    80002d5c:	0206d693          	srli	a3,a3,0x20
    80002d60:	00dd86b3          	add	a3,s11,a3
    80002d64:	0006c683          	lbu	a3,0(a3)
    80002d68:	02e7d73b          	divuw	a4,a5,a4
    80002d6c:	00200793          	li	a5,2
    80002d70:	f8d400a3          	sb	a3,-127(s0)
    80002d74:	bca5ece3          	bltu	a1,a0,8000294c <__printf+0x154>
    80002d78:	ce5ff06f          	j	80002a5c <__printf+0x264>
    80002d7c:	40e007bb          	negw	a5,a4
    80002d80:	00001d97          	auipc	s11,0x1
    80002d84:	3f8d8d93          	addi	s11,s11,1016 # 80004178 <digits>
    80002d88:	00f7f693          	andi	a3,a5,15
    80002d8c:	00dd86b3          	add	a3,s11,a3
    80002d90:	0006c583          	lbu	a1,0(a3)
    80002d94:	ff100613          	li	a2,-15
    80002d98:	0047d69b          	srliw	a3,a5,0x4
    80002d9c:	f8b40023          	sb	a1,-128(s0)
    80002da0:	0047d59b          	srliw	a1,a5,0x4
    80002da4:	0ac75e63          	bge	a4,a2,80002e60 <__printf+0x668>
    80002da8:	00f6f693          	andi	a3,a3,15
    80002dac:	00dd86b3          	add	a3,s11,a3
    80002db0:	0006c603          	lbu	a2,0(a3)
    80002db4:	00f00693          	li	a3,15
    80002db8:	0087d79b          	srliw	a5,a5,0x8
    80002dbc:	f8c400a3          	sb	a2,-127(s0)
    80002dc0:	d8b6e4e3          	bltu	a3,a1,80002b48 <__printf+0x350>
    80002dc4:	00200793          	li	a5,2
    80002dc8:	e2dff06f          	j	80002bf4 <__printf+0x3fc>
    80002dcc:	00001c97          	auipc	s9,0x1
    80002dd0:	38cc8c93          	addi	s9,s9,908 # 80004158 <CONSOLE_STATUS+0x148>
    80002dd4:	02800513          	li	a0,40
    80002dd8:	ef1ff06f          	j	80002cc8 <__printf+0x4d0>
    80002ddc:	00700793          	li	a5,7
    80002de0:	00600c93          	li	s9,6
    80002de4:	e0dff06f          	j	80002bf0 <__printf+0x3f8>
    80002de8:	00700793          	li	a5,7
    80002dec:	00600c93          	li	s9,6
    80002df0:	c69ff06f          	j	80002a58 <__printf+0x260>
    80002df4:	00300793          	li	a5,3
    80002df8:	00200c93          	li	s9,2
    80002dfc:	c5dff06f          	j	80002a58 <__printf+0x260>
    80002e00:	00300793          	li	a5,3
    80002e04:	00200c93          	li	s9,2
    80002e08:	de9ff06f          	j	80002bf0 <__printf+0x3f8>
    80002e0c:	00400793          	li	a5,4
    80002e10:	00300c93          	li	s9,3
    80002e14:	dddff06f          	j	80002bf0 <__printf+0x3f8>
    80002e18:	00400793          	li	a5,4
    80002e1c:	00300c93          	li	s9,3
    80002e20:	c39ff06f          	j	80002a58 <__printf+0x260>
    80002e24:	00500793          	li	a5,5
    80002e28:	00400c93          	li	s9,4
    80002e2c:	c2dff06f          	j	80002a58 <__printf+0x260>
    80002e30:	00500793          	li	a5,5
    80002e34:	00400c93          	li	s9,4
    80002e38:	db9ff06f          	j	80002bf0 <__printf+0x3f8>
    80002e3c:	00600793          	li	a5,6
    80002e40:	00500c93          	li	s9,5
    80002e44:	dadff06f          	j	80002bf0 <__printf+0x3f8>
    80002e48:	00600793          	li	a5,6
    80002e4c:	00500c93          	li	s9,5
    80002e50:	c09ff06f          	j	80002a58 <__printf+0x260>
    80002e54:	00800793          	li	a5,8
    80002e58:	00700c93          	li	s9,7
    80002e5c:	bfdff06f          	j	80002a58 <__printf+0x260>
    80002e60:	00100793          	li	a5,1
    80002e64:	d91ff06f          	j	80002bf4 <__printf+0x3fc>
    80002e68:	00100793          	li	a5,1
    80002e6c:	bf1ff06f          	j	80002a5c <__printf+0x264>
    80002e70:	00900793          	li	a5,9
    80002e74:	00800c93          	li	s9,8
    80002e78:	be1ff06f          	j	80002a58 <__printf+0x260>
    80002e7c:	00001517          	auipc	a0,0x1
    80002e80:	2e450513          	addi	a0,a0,740 # 80004160 <CONSOLE_STATUS+0x150>
    80002e84:	00000097          	auipc	ra,0x0
    80002e88:	918080e7          	jalr	-1768(ra) # 8000279c <panic>

0000000080002e8c <printfinit>:
    80002e8c:	fe010113          	addi	sp,sp,-32
    80002e90:	00813823          	sd	s0,16(sp)
    80002e94:	00913423          	sd	s1,8(sp)
    80002e98:	00113c23          	sd	ra,24(sp)
    80002e9c:	02010413          	addi	s0,sp,32
    80002ea0:	00003497          	auipc	s1,0x3
    80002ea4:	b0048493          	addi	s1,s1,-1280 # 800059a0 <pr>
    80002ea8:	00048513          	mv	a0,s1
    80002eac:	00001597          	auipc	a1,0x1
    80002eb0:	2c458593          	addi	a1,a1,708 # 80004170 <CONSOLE_STATUS+0x160>
    80002eb4:	00000097          	auipc	ra,0x0
    80002eb8:	5f4080e7          	jalr	1524(ra) # 800034a8 <initlock>
    80002ebc:	01813083          	ld	ra,24(sp)
    80002ec0:	01013403          	ld	s0,16(sp)
    80002ec4:	0004ac23          	sw	zero,24(s1)
    80002ec8:	00813483          	ld	s1,8(sp)
    80002ecc:	02010113          	addi	sp,sp,32
    80002ed0:	00008067          	ret

0000000080002ed4 <uartinit>:
    80002ed4:	ff010113          	addi	sp,sp,-16
    80002ed8:	00813423          	sd	s0,8(sp)
    80002edc:	01010413          	addi	s0,sp,16
    80002ee0:	100007b7          	lui	a5,0x10000
    80002ee4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002ee8:	f8000713          	li	a4,-128
    80002eec:	00e781a3          	sb	a4,3(a5)
    80002ef0:	00300713          	li	a4,3
    80002ef4:	00e78023          	sb	a4,0(a5)
    80002ef8:	000780a3          	sb	zero,1(a5)
    80002efc:	00e781a3          	sb	a4,3(a5)
    80002f00:	00700693          	li	a3,7
    80002f04:	00d78123          	sb	a3,2(a5)
    80002f08:	00e780a3          	sb	a4,1(a5)
    80002f0c:	00813403          	ld	s0,8(sp)
    80002f10:	01010113          	addi	sp,sp,16
    80002f14:	00008067          	ret

0000000080002f18 <uartputc>:
    80002f18:	00002797          	auipc	a5,0x2
    80002f1c:	8207a783          	lw	a5,-2016(a5) # 80004738 <panicked>
    80002f20:	00078463          	beqz	a5,80002f28 <uartputc+0x10>
    80002f24:	0000006f          	j	80002f24 <uartputc+0xc>
    80002f28:	fd010113          	addi	sp,sp,-48
    80002f2c:	02813023          	sd	s0,32(sp)
    80002f30:	00913c23          	sd	s1,24(sp)
    80002f34:	01213823          	sd	s2,16(sp)
    80002f38:	01313423          	sd	s3,8(sp)
    80002f3c:	02113423          	sd	ra,40(sp)
    80002f40:	03010413          	addi	s0,sp,48
    80002f44:	00001917          	auipc	s2,0x1
    80002f48:	7fc90913          	addi	s2,s2,2044 # 80004740 <uart_tx_r>
    80002f4c:	00093783          	ld	a5,0(s2)
    80002f50:	00001497          	auipc	s1,0x1
    80002f54:	7f848493          	addi	s1,s1,2040 # 80004748 <uart_tx_w>
    80002f58:	0004b703          	ld	a4,0(s1)
    80002f5c:	02078693          	addi	a3,a5,32
    80002f60:	00050993          	mv	s3,a0
    80002f64:	02e69c63          	bne	a3,a4,80002f9c <uartputc+0x84>
    80002f68:	00001097          	auipc	ra,0x1
    80002f6c:	834080e7          	jalr	-1996(ra) # 8000379c <push_on>
    80002f70:	00093783          	ld	a5,0(s2)
    80002f74:	0004b703          	ld	a4,0(s1)
    80002f78:	02078793          	addi	a5,a5,32
    80002f7c:	00e79463          	bne	a5,a4,80002f84 <uartputc+0x6c>
    80002f80:	0000006f          	j	80002f80 <uartputc+0x68>
    80002f84:	00001097          	auipc	ra,0x1
    80002f88:	88c080e7          	jalr	-1908(ra) # 80003810 <pop_on>
    80002f8c:	00093783          	ld	a5,0(s2)
    80002f90:	0004b703          	ld	a4,0(s1)
    80002f94:	02078693          	addi	a3,a5,32
    80002f98:	fce688e3          	beq	a3,a4,80002f68 <uartputc+0x50>
    80002f9c:	01f77693          	andi	a3,a4,31
    80002fa0:	00003597          	auipc	a1,0x3
    80002fa4:	a2058593          	addi	a1,a1,-1504 # 800059c0 <uart_tx_buf>
    80002fa8:	00d586b3          	add	a3,a1,a3
    80002fac:	00170713          	addi	a4,a4,1
    80002fb0:	01368023          	sb	s3,0(a3)
    80002fb4:	00e4b023          	sd	a4,0(s1)
    80002fb8:	10000637          	lui	a2,0x10000
    80002fbc:	02f71063          	bne	a4,a5,80002fdc <uartputc+0xc4>
    80002fc0:	0340006f          	j	80002ff4 <uartputc+0xdc>
    80002fc4:	00074703          	lbu	a4,0(a4)
    80002fc8:	00f93023          	sd	a5,0(s2)
    80002fcc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002fd0:	00093783          	ld	a5,0(s2)
    80002fd4:	0004b703          	ld	a4,0(s1)
    80002fd8:	00f70e63          	beq	a4,a5,80002ff4 <uartputc+0xdc>
    80002fdc:	00564683          	lbu	a3,5(a2)
    80002fe0:	01f7f713          	andi	a4,a5,31
    80002fe4:	00e58733          	add	a4,a1,a4
    80002fe8:	0206f693          	andi	a3,a3,32
    80002fec:	00178793          	addi	a5,a5,1
    80002ff0:	fc069ae3          	bnez	a3,80002fc4 <uartputc+0xac>
    80002ff4:	02813083          	ld	ra,40(sp)
    80002ff8:	02013403          	ld	s0,32(sp)
    80002ffc:	01813483          	ld	s1,24(sp)
    80003000:	01013903          	ld	s2,16(sp)
    80003004:	00813983          	ld	s3,8(sp)
    80003008:	03010113          	addi	sp,sp,48
    8000300c:	00008067          	ret

0000000080003010 <uartputc_sync>:
    80003010:	ff010113          	addi	sp,sp,-16
    80003014:	00813423          	sd	s0,8(sp)
    80003018:	01010413          	addi	s0,sp,16
    8000301c:	00001717          	auipc	a4,0x1
    80003020:	71c72703          	lw	a4,1820(a4) # 80004738 <panicked>
    80003024:	02071663          	bnez	a4,80003050 <uartputc_sync+0x40>
    80003028:	00050793          	mv	a5,a0
    8000302c:	100006b7          	lui	a3,0x10000
    80003030:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003034:	02077713          	andi	a4,a4,32
    80003038:	fe070ce3          	beqz	a4,80003030 <uartputc_sync+0x20>
    8000303c:	0ff7f793          	andi	a5,a5,255
    80003040:	00f68023          	sb	a5,0(a3)
    80003044:	00813403          	ld	s0,8(sp)
    80003048:	01010113          	addi	sp,sp,16
    8000304c:	00008067          	ret
    80003050:	0000006f          	j	80003050 <uartputc_sync+0x40>

0000000080003054 <uartstart>:
    80003054:	ff010113          	addi	sp,sp,-16
    80003058:	00813423          	sd	s0,8(sp)
    8000305c:	01010413          	addi	s0,sp,16
    80003060:	00001617          	auipc	a2,0x1
    80003064:	6e060613          	addi	a2,a2,1760 # 80004740 <uart_tx_r>
    80003068:	00001517          	auipc	a0,0x1
    8000306c:	6e050513          	addi	a0,a0,1760 # 80004748 <uart_tx_w>
    80003070:	00063783          	ld	a5,0(a2)
    80003074:	00053703          	ld	a4,0(a0)
    80003078:	04f70263          	beq	a4,a5,800030bc <uartstart+0x68>
    8000307c:	100005b7          	lui	a1,0x10000
    80003080:	00003817          	auipc	a6,0x3
    80003084:	94080813          	addi	a6,a6,-1728 # 800059c0 <uart_tx_buf>
    80003088:	01c0006f          	j	800030a4 <uartstart+0x50>
    8000308c:	0006c703          	lbu	a4,0(a3)
    80003090:	00f63023          	sd	a5,0(a2)
    80003094:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003098:	00063783          	ld	a5,0(a2)
    8000309c:	00053703          	ld	a4,0(a0)
    800030a0:	00f70e63          	beq	a4,a5,800030bc <uartstart+0x68>
    800030a4:	01f7f713          	andi	a4,a5,31
    800030a8:	00e806b3          	add	a3,a6,a4
    800030ac:	0055c703          	lbu	a4,5(a1)
    800030b0:	00178793          	addi	a5,a5,1
    800030b4:	02077713          	andi	a4,a4,32
    800030b8:	fc071ae3          	bnez	a4,8000308c <uartstart+0x38>
    800030bc:	00813403          	ld	s0,8(sp)
    800030c0:	01010113          	addi	sp,sp,16
    800030c4:	00008067          	ret

00000000800030c8 <uartgetc>:
    800030c8:	ff010113          	addi	sp,sp,-16
    800030cc:	00813423          	sd	s0,8(sp)
    800030d0:	01010413          	addi	s0,sp,16
    800030d4:	10000737          	lui	a4,0x10000
    800030d8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800030dc:	0017f793          	andi	a5,a5,1
    800030e0:	00078c63          	beqz	a5,800030f8 <uartgetc+0x30>
    800030e4:	00074503          	lbu	a0,0(a4)
    800030e8:	0ff57513          	andi	a0,a0,255
    800030ec:	00813403          	ld	s0,8(sp)
    800030f0:	01010113          	addi	sp,sp,16
    800030f4:	00008067          	ret
    800030f8:	fff00513          	li	a0,-1
    800030fc:	ff1ff06f          	j	800030ec <uartgetc+0x24>

0000000080003100 <uartintr>:
    80003100:	100007b7          	lui	a5,0x10000
    80003104:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003108:	0017f793          	andi	a5,a5,1
    8000310c:	0a078463          	beqz	a5,800031b4 <uartintr+0xb4>
    80003110:	fe010113          	addi	sp,sp,-32
    80003114:	00813823          	sd	s0,16(sp)
    80003118:	00913423          	sd	s1,8(sp)
    8000311c:	00113c23          	sd	ra,24(sp)
    80003120:	02010413          	addi	s0,sp,32
    80003124:	100004b7          	lui	s1,0x10000
    80003128:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000312c:	0ff57513          	andi	a0,a0,255
    80003130:	fffff097          	auipc	ra,0xfffff
    80003134:	534080e7          	jalr	1332(ra) # 80002664 <consoleintr>
    80003138:	0054c783          	lbu	a5,5(s1)
    8000313c:	0017f793          	andi	a5,a5,1
    80003140:	fe0794e3          	bnez	a5,80003128 <uartintr+0x28>
    80003144:	00001617          	auipc	a2,0x1
    80003148:	5fc60613          	addi	a2,a2,1532 # 80004740 <uart_tx_r>
    8000314c:	00001517          	auipc	a0,0x1
    80003150:	5fc50513          	addi	a0,a0,1532 # 80004748 <uart_tx_w>
    80003154:	00063783          	ld	a5,0(a2)
    80003158:	00053703          	ld	a4,0(a0)
    8000315c:	04f70263          	beq	a4,a5,800031a0 <uartintr+0xa0>
    80003160:	100005b7          	lui	a1,0x10000
    80003164:	00003817          	auipc	a6,0x3
    80003168:	85c80813          	addi	a6,a6,-1956 # 800059c0 <uart_tx_buf>
    8000316c:	01c0006f          	j	80003188 <uartintr+0x88>
    80003170:	0006c703          	lbu	a4,0(a3)
    80003174:	00f63023          	sd	a5,0(a2)
    80003178:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000317c:	00063783          	ld	a5,0(a2)
    80003180:	00053703          	ld	a4,0(a0)
    80003184:	00f70e63          	beq	a4,a5,800031a0 <uartintr+0xa0>
    80003188:	01f7f713          	andi	a4,a5,31
    8000318c:	00e806b3          	add	a3,a6,a4
    80003190:	0055c703          	lbu	a4,5(a1)
    80003194:	00178793          	addi	a5,a5,1
    80003198:	02077713          	andi	a4,a4,32
    8000319c:	fc071ae3          	bnez	a4,80003170 <uartintr+0x70>
    800031a0:	01813083          	ld	ra,24(sp)
    800031a4:	01013403          	ld	s0,16(sp)
    800031a8:	00813483          	ld	s1,8(sp)
    800031ac:	02010113          	addi	sp,sp,32
    800031b0:	00008067          	ret
    800031b4:	00001617          	auipc	a2,0x1
    800031b8:	58c60613          	addi	a2,a2,1420 # 80004740 <uart_tx_r>
    800031bc:	00001517          	auipc	a0,0x1
    800031c0:	58c50513          	addi	a0,a0,1420 # 80004748 <uart_tx_w>
    800031c4:	00063783          	ld	a5,0(a2)
    800031c8:	00053703          	ld	a4,0(a0)
    800031cc:	04f70263          	beq	a4,a5,80003210 <uartintr+0x110>
    800031d0:	100005b7          	lui	a1,0x10000
    800031d4:	00002817          	auipc	a6,0x2
    800031d8:	7ec80813          	addi	a6,a6,2028 # 800059c0 <uart_tx_buf>
    800031dc:	01c0006f          	j	800031f8 <uartintr+0xf8>
    800031e0:	0006c703          	lbu	a4,0(a3)
    800031e4:	00f63023          	sd	a5,0(a2)
    800031e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800031ec:	00063783          	ld	a5,0(a2)
    800031f0:	00053703          	ld	a4,0(a0)
    800031f4:	02f70063          	beq	a4,a5,80003214 <uartintr+0x114>
    800031f8:	01f7f713          	andi	a4,a5,31
    800031fc:	00e806b3          	add	a3,a6,a4
    80003200:	0055c703          	lbu	a4,5(a1)
    80003204:	00178793          	addi	a5,a5,1
    80003208:	02077713          	andi	a4,a4,32
    8000320c:	fc071ae3          	bnez	a4,800031e0 <uartintr+0xe0>
    80003210:	00008067          	ret
    80003214:	00008067          	ret

0000000080003218 <kinit>:
    80003218:	fc010113          	addi	sp,sp,-64
    8000321c:	02913423          	sd	s1,40(sp)
    80003220:	fffff7b7          	lui	a5,0xfffff
    80003224:	00003497          	auipc	s1,0x3
    80003228:	7bb48493          	addi	s1,s1,1979 # 800069df <end+0xfff>
    8000322c:	02813823          	sd	s0,48(sp)
    80003230:	01313c23          	sd	s3,24(sp)
    80003234:	00f4f4b3          	and	s1,s1,a5
    80003238:	02113c23          	sd	ra,56(sp)
    8000323c:	03213023          	sd	s2,32(sp)
    80003240:	01413823          	sd	s4,16(sp)
    80003244:	01513423          	sd	s5,8(sp)
    80003248:	04010413          	addi	s0,sp,64
    8000324c:	000017b7          	lui	a5,0x1
    80003250:	01100993          	li	s3,17
    80003254:	00f487b3          	add	a5,s1,a5
    80003258:	01b99993          	slli	s3,s3,0x1b
    8000325c:	06f9e063          	bltu	s3,a5,800032bc <kinit+0xa4>
    80003260:	00002a97          	auipc	s5,0x2
    80003264:	780a8a93          	addi	s5,s5,1920 # 800059e0 <end>
    80003268:	0754ec63          	bltu	s1,s5,800032e0 <kinit+0xc8>
    8000326c:	0734fa63          	bgeu	s1,s3,800032e0 <kinit+0xc8>
    80003270:	00088a37          	lui	s4,0x88
    80003274:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003278:	00001917          	auipc	s2,0x1
    8000327c:	4d890913          	addi	s2,s2,1240 # 80004750 <kmem>
    80003280:	00ca1a13          	slli	s4,s4,0xc
    80003284:	0140006f          	j	80003298 <kinit+0x80>
    80003288:	000017b7          	lui	a5,0x1
    8000328c:	00f484b3          	add	s1,s1,a5
    80003290:	0554e863          	bltu	s1,s5,800032e0 <kinit+0xc8>
    80003294:	0534f663          	bgeu	s1,s3,800032e0 <kinit+0xc8>
    80003298:	00001637          	lui	a2,0x1
    8000329c:	00100593          	li	a1,1
    800032a0:	00048513          	mv	a0,s1
    800032a4:	00000097          	auipc	ra,0x0
    800032a8:	5e4080e7          	jalr	1508(ra) # 80003888 <__memset>
    800032ac:	00093783          	ld	a5,0(s2)
    800032b0:	00f4b023          	sd	a5,0(s1)
    800032b4:	00993023          	sd	s1,0(s2)
    800032b8:	fd4498e3          	bne	s1,s4,80003288 <kinit+0x70>
    800032bc:	03813083          	ld	ra,56(sp)
    800032c0:	03013403          	ld	s0,48(sp)
    800032c4:	02813483          	ld	s1,40(sp)
    800032c8:	02013903          	ld	s2,32(sp)
    800032cc:	01813983          	ld	s3,24(sp)
    800032d0:	01013a03          	ld	s4,16(sp)
    800032d4:	00813a83          	ld	s5,8(sp)
    800032d8:	04010113          	addi	sp,sp,64
    800032dc:	00008067          	ret
    800032e0:	00001517          	auipc	a0,0x1
    800032e4:	eb050513          	addi	a0,a0,-336 # 80004190 <digits+0x18>
    800032e8:	fffff097          	auipc	ra,0xfffff
    800032ec:	4b4080e7          	jalr	1204(ra) # 8000279c <panic>

00000000800032f0 <freerange>:
    800032f0:	fc010113          	addi	sp,sp,-64
    800032f4:	000017b7          	lui	a5,0x1
    800032f8:	02913423          	sd	s1,40(sp)
    800032fc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003300:	009504b3          	add	s1,a0,s1
    80003304:	fffff537          	lui	a0,0xfffff
    80003308:	02813823          	sd	s0,48(sp)
    8000330c:	02113c23          	sd	ra,56(sp)
    80003310:	03213023          	sd	s2,32(sp)
    80003314:	01313c23          	sd	s3,24(sp)
    80003318:	01413823          	sd	s4,16(sp)
    8000331c:	01513423          	sd	s5,8(sp)
    80003320:	01613023          	sd	s6,0(sp)
    80003324:	04010413          	addi	s0,sp,64
    80003328:	00a4f4b3          	and	s1,s1,a0
    8000332c:	00f487b3          	add	a5,s1,a5
    80003330:	06f5e463          	bltu	a1,a5,80003398 <freerange+0xa8>
    80003334:	00002a97          	auipc	s5,0x2
    80003338:	6aca8a93          	addi	s5,s5,1708 # 800059e0 <end>
    8000333c:	0954e263          	bltu	s1,s5,800033c0 <freerange+0xd0>
    80003340:	01100993          	li	s3,17
    80003344:	01b99993          	slli	s3,s3,0x1b
    80003348:	0734fc63          	bgeu	s1,s3,800033c0 <freerange+0xd0>
    8000334c:	00058a13          	mv	s4,a1
    80003350:	00001917          	auipc	s2,0x1
    80003354:	40090913          	addi	s2,s2,1024 # 80004750 <kmem>
    80003358:	00002b37          	lui	s6,0x2
    8000335c:	0140006f          	j	80003370 <freerange+0x80>
    80003360:	000017b7          	lui	a5,0x1
    80003364:	00f484b3          	add	s1,s1,a5
    80003368:	0554ec63          	bltu	s1,s5,800033c0 <freerange+0xd0>
    8000336c:	0534fa63          	bgeu	s1,s3,800033c0 <freerange+0xd0>
    80003370:	00001637          	lui	a2,0x1
    80003374:	00100593          	li	a1,1
    80003378:	00048513          	mv	a0,s1
    8000337c:	00000097          	auipc	ra,0x0
    80003380:	50c080e7          	jalr	1292(ra) # 80003888 <__memset>
    80003384:	00093703          	ld	a4,0(s2)
    80003388:	016487b3          	add	a5,s1,s6
    8000338c:	00e4b023          	sd	a4,0(s1)
    80003390:	00993023          	sd	s1,0(s2)
    80003394:	fcfa76e3          	bgeu	s4,a5,80003360 <freerange+0x70>
    80003398:	03813083          	ld	ra,56(sp)
    8000339c:	03013403          	ld	s0,48(sp)
    800033a0:	02813483          	ld	s1,40(sp)
    800033a4:	02013903          	ld	s2,32(sp)
    800033a8:	01813983          	ld	s3,24(sp)
    800033ac:	01013a03          	ld	s4,16(sp)
    800033b0:	00813a83          	ld	s5,8(sp)
    800033b4:	00013b03          	ld	s6,0(sp)
    800033b8:	04010113          	addi	sp,sp,64
    800033bc:	00008067          	ret
    800033c0:	00001517          	auipc	a0,0x1
    800033c4:	dd050513          	addi	a0,a0,-560 # 80004190 <digits+0x18>
    800033c8:	fffff097          	auipc	ra,0xfffff
    800033cc:	3d4080e7          	jalr	980(ra) # 8000279c <panic>

00000000800033d0 <kfree>:
    800033d0:	fe010113          	addi	sp,sp,-32
    800033d4:	00813823          	sd	s0,16(sp)
    800033d8:	00113c23          	sd	ra,24(sp)
    800033dc:	00913423          	sd	s1,8(sp)
    800033e0:	02010413          	addi	s0,sp,32
    800033e4:	03451793          	slli	a5,a0,0x34
    800033e8:	04079c63          	bnez	a5,80003440 <kfree+0x70>
    800033ec:	00002797          	auipc	a5,0x2
    800033f0:	5f478793          	addi	a5,a5,1524 # 800059e0 <end>
    800033f4:	00050493          	mv	s1,a0
    800033f8:	04f56463          	bltu	a0,a5,80003440 <kfree+0x70>
    800033fc:	01100793          	li	a5,17
    80003400:	01b79793          	slli	a5,a5,0x1b
    80003404:	02f57e63          	bgeu	a0,a5,80003440 <kfree+0x70>
    80003408:	00001637          	lui	a2,0x1
    8000340c:	00100593          	li	a1,1
    80003410:	00000097          	auipc	ra,0x0
    80003414:	478080e7          	jalr	1144(ra) # 80003888 <__memset>
    80003418:	00001797          	auipc	a5,0x1
    8000341c:	33878793          	addi	a5,a5,824 # 80004750 <kmem>
    80003420:	0007b703          	ld	a4,0(a5)
    80003424:	01813083          	ld	ra,24(sp)
    80003428:	01013403          	ld	s0,16(sp)
    8000342c:	00e4b023          	sd	a4,0(s1)
    80003430:	0097b023          	sd	s1,0(a5)
    80003434:	00813483          	ld	s1,8(sp)
    80003438:	02010113          	addi	sp,sp,32
    8000343c:	00008067          	ret
    80003440:	00001517          	auipc	a0,0x1
    80003444:	d5050513          	addi	a0,a0,-688 # 80004190 <digits+0x18>
    80003448:	fffff097          	auipc	ra,0xfffff
    8000344c:	354080e7          	jalr	852(ra) # 8000279c <panic>

0000000080003450 <kalloc>:
    80003450:	fe010113          	addi	sp,sp,-32
    80003454:	00813823          	sd	s0,16(sp)
    80003458:	00913423          	sd	s1,8(sp)
    8000345c:	00113c23          	sd	ra,24(sp)
    80003460:	02010413          	addi	s0,sp,32
    80003464:	00001797          	auipc	a5,0x1
    80003468:	2ec78793          	addi	a5,a5,748 # 80004750 <kmem>
    8000346c:	0007b483          	ld	s1,0(a5)
    80003470:	02048063          	beqz	s1,80003490 <kalloc+0x40>
    80003474:	0004b703          	ld	a4,0(s1)
    80003478:	00001637          	lui	a2,0x1
    8000347c:	00500593          	li	a1,5
    80003480:	00048513          	mv	a0,s1
    80003484:	00e7b023          	sd	a4,0(a5)
    80003488:	00000097          	auipc	ra,0x0
    8000348c:	400080e7          	jalr	1024(ra) # 80003888 <__memset>
    80003490:	01813083          	ld	ra,24(sp)
    80003494:	01013403          	ld	s0,16(sp)
    80003498:	00048513          	mv	a0,s1
    8000349c:	00813483          	ld	s1,8(sp)
    800034a0:	02010113          	addi	sp,sp,32
    800034a4:	00008067          	ret

00000000800034a8 <initlock>:
    800034a8:	ff010113          	addi	sp,sp,-16
    800034ac:	00813423          	sd	s0,8(sp)
    800034b0:	01010413          	addi	s0,sp,16
    800034b4:	00813403          	ld	s0,8(sp)
    800034b8:	00b53423          	sd	a1,8(a0)
    800034bc:	00052023          	sw	zero,0(a0)
    800034c0:	00053823          	sd	zero,16(a0)
    800034c4:	01010113          	addi	sp,sp,16
    800034c8:	00008067          	ret

00000000800034cc <acquire>:
    800034cc:	fe010113          	addi	sp,sp,-32
    800034d0:	00813823          	sd	s0,16(sp)
    800034d4:	00913423          	sd	s1,8(sp)
    800034d8:	00113c23          	sd	ra,24(sp)
    800034dc:	01213023          	sd	s2,0(sp)
    800034e0:	02010413          	addi	s0,sp,32
    800034e4:	00050493          	mv	s1,a0
    800034e8:	10002973          	csrr	s2,sstatus
    800034ec:	100027f3          	csrr	a5,sstatus
    800034f0:	ffd7f793          	andi	a5,a5,-3
    800034f4:	10079073          	csrw	sstatus,a5
    800034f8:	fffff097          	auipc	ra,0xfffff
    800034fc:	8e4080e7          	jalr	-1820(ra) # 80001ddc <mycpu>
    80003500:	07852783          	lw	a5,120(a0)
    80003504:	06078e63          	beqz	a5,80003580 <acquire+0xb4>
    80003508:	fffff097          	auipc	ra,0xfffff
    8000350c:	8d4080e7          	jalr	-1836(ra) # 80001ddc <mycpu>
    80003510:	07852783          	lw	a5,120(a0)
    80003514:	0004a703          	lw	a4,0(s1)
    80003518:	0017879b          	addiw	a5,a5,1
    8000351c:	06f52c23          	sw	a5,120(a0)
    80003520:	04071063          	bnez	a4,80003560 <acquire+0x94>
    80003524:	00100713          	li	a4,1
    80003528:	00070793          	mv	a5,a4
    8000352c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003530:	0007879b          	sext.w	a5,a5
    80003534:	fe079ae3          	bnez	a5,80003528 <acquire+0x5c>
    80003538:	0ff0000f          	fence
    8000353c:	fffff097          	auipc	ra,0xfffff
    80003540:	8a0080e7          	jalr	-1888(ra) # 80001ddc <mycpu>
    80003544:	01813083          	ld	ra,24(sp)
    80003548:	01013403          	ld	s0,16(sp)
    8000354c:	00a4b823          	sd	a0,16(s1)
    80003550:	00013903          	ld	s2,0(sp)
    80003554:	00813483          	ld	s1,8(sp)
    80003558:	02010113          	addi	sp,sp,32
    8000355c:	00008067          	ret
    80003560:	0104b903          	ld	s2,16(s1)
    80003564:	fffff097          	auipc	ra,0xfffff
    80003568:	878080e7          	jalr	-1928(ra) # 80001ddc <mycpu>
    8000356c:	faa91ce3          	bne	s2,a0,80003524 <acquire+0x58>
    80003570:	00001517          	auipc	a0,0x1
    80003574:	c2850513          	addi	a0,a0,-984 # 80004198 <digits+0x20>
    80003578:	fffff097          	auipc	ra,0xfffff
    8000357c:	224080e7          	jalr	548(ra) # 8000279c <panic>
    80003580:	00195913          	srli	s2,s2,0x1
    80003584:	fffff097          	auipc	ra,0xfffff
    80003588:	858080e7          	jalr	-1960(ra) # 80001ddc <mycpu>
    8000358c:	00197913          	andi	s2,s2,1
    80003590:	07252e23          	sw	s2,124(a0)
    80003594:	f75ff06f          	j	80003508 <acquire+0x3c>

0000000080003598 <release>:
    80003598:	fe010113          	addi	sp,sp,-32
    8000359c:	00813823          	sd	s0,16(sp)
    800035a0:	00113c23          	sd	ra,24(sp)
    800035a4:	00913423          	sd	s1,8(sp)
    800035a8:	01213023          	sd	s2,0(sp)
    800035ac:	02010413          	addi	s0,sp,32
    800035b0:	00052783          	lw	a5,0(a0)
    800035b4:	00079a63          	bnez	a5,800035c8 <release+0x30>
    800035b8:	00001517          	auipc	a0,0x1
    800035bc:	be850513          	addi	a0,a0,-1048 # 800041a0 <digits+0x28>
    800035c0:	fffff097          	auipc	ra,0xfffff
    800035c4:	1dc080e7          	jalr	476(ra) # 8000279c <panic>
    800035c8:	01053903          	ld	s2,16(a0)
    800035cc:	00050493          	mv	s1,a0
    800035d0:	fffff097          	auipc	ra,0xfffff
    800035d4:	80c080e7          	jalr	-2036(ra) # 80001ddc <mycpu>
    800035d8:	fea910e3          	bne	s2,a0,800035b8 <release+0x20>
    800035dc:	0004b823          	sd	zero,16(s1)
    800035e0:	0ff0000f          	fence
    800035e4:	0f50000f          	fence	iorw,ow
    800035e8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800035ec:	ffffe097          	auipc	ra,0xffffe
    800035f0:	7f0080e7          	jalr	2032(ra) # 80001ddc <mycpu>
    800035f4:	100027f3          	csrr	a5,sstatus
    800035f8:	0027f793          	andi	a5,a5,2
    800035fc:	04079a63          	bnez	a5,80003650 <release+0xb8>
    80003600:	07852783          	lw	a5,120(a0)
    80003604:	02f05e63          	blez	a5,80003640 <release+0xa8>
    80003608:	fff7871b          	addiw	a4,a5,-1
    8000360c:	06e52c23          	sw	a4,120(a0)
    80003610:	00071c63          	bnez	a4,80003628 <release+0x90>
    80003614:	07c52783          	lw	a5,124(a0)
    80003618:	00078863          	beqz	a5,80003628 <release+0x90>
    8000361c:	100027f3          	csrr	a5,sstatus
    80003620:	0027e793          	ori	a5,a5,2
    80003624:	10079073          	csrw	sstatus,a5
    80003628:	01813083          	ld	ra,24(sp)
    8000362c:	01013403          	ld	s0,16(sp)
    80003630:	00813483          	ld	s1,8(sp)
    80003634:	00013903          	ld	s2,0(sp)
    80003638:	02010113          	addi	sp,sp,32
    8000363c:	00008067          	ret
    80003640:	00001517          	auipc	a0,0x1
    80003644:	b8050513          	addi	a0,a0,-1152 # 800041c0 <digits+0x48>
    80003648:	fffff097          	auipc	ra,0xfffff
    8000364c:	154080e7          	jalr	340(ra) # 8000279c <panic>
    80003650:	00001517          	auipc	a0,0x1
    80003654:	b5850513          	addi	a0,a0,-1192 # 800041a8 <digits+0x30>
    80003658:	fffff097          	auipc	ra,0xfffff
    8000365c:	144080e7          	jalr	324(ra) # 8000279c <panic>

0000000080003660 <holding>:
    80003660:	00052783          	lw	a5,0(a0)
    80003664:	00079663          	bnez	a5,80003670 <holding+0x10>
    80003668:	00000513          	li	a0,0
    8000366c:	00008067          	ret
    80003670:	fe010113          	addi	sp,sp,-32
    80003674:	00813823          	sd	s0,16(sp)
    80003678:	00913423          	sd	s1,8(sp)
    8000367c:	00113c23          	sd	ra,24(sp)
    80003680:	02010413          	addi	s0,sp,32
    80003684:	01053483          	ld	s1,16(a0)
    80003688:	ffffe097          	auipc	ra,0xffffe
    8000368c:	754080e7          	jalr	1876(ra) # 80001ddc <mycpu>
    80003690:	01813083          	ld	ra,24(sp)
    80003694:	01013403          	ld	s0,16(sp)
    80003698:	40a48533          	sub	a0,s1,a0
    8000369c:	00153513          	seqz	a0,a0
    800036a0:	00813483          	ld	s1,8(sp)
    800036a4:	02010113          	addi	sp,sp,32
    800036a8:	00008067          	ret

00000000800036ac <push_off>:
    800036ac:	fe010113          	addi	sp,sp,-32
    800036b0:	00813823          	sd	s0,16(sp)
    800036b4:	00113c23          	sd	ra,24(sp)
    800036b8:	00913423          	sd	s1,8(sp)
    800036bc:	02010413          	addi	s0,sp,32
    800036c0:	100024f3          	csrr	s1,sstatus
    800036c4:	100027f3          	csrr	a5,sstatus
    800036c8:	ffd7f793          	andi	a5,a5,-3
    800036cc:	10079073          	csrw	sstatus,a5
    800036d0:	ffffe097          	auipc	ra,0xffffe
    800036d4:	70c080e7          	jalr	1804(ra) # 80001ddc <mycpu>
    800036d8:	07852783          	lw	a5,120(a0)
    800036dc:	02078663          	beqz	a5,80003708 <push_off+0x5c>
    800036e0:	ffffe097          	auipc	ra,0xffffe
    800036e4:	6fc080e7          	jalr	1788(ra) # 80001ddc <mycpu>
    800036e8:	07852783          	lw	a5,120(a0)
    800036ec:	01813083          	ld	ra,24(sp)
    800036f0:	01013403          	ld	s0,16(sp)
    800036f4:	0017879b          	addiw	a5,a5,1
    800036f8:	06f52c23          	sw	a5,120(a0)
    800036fc:	00813483          	ld	s1,8(sp)
    80003700:	02010113          	addi	sp,sp,32
    80003704:	00008067          	ret
    80003708:	0014d493          	srli	s1,s1,0x1
    8000370c:	ffffe097          	auipc	ra,0xffffe
    80003710:	6d0080e7          	jalr	1744(ra) # 80001ddc <mycpu>
    80003714:	0014f493          	andi	s1,s1,1
    80003718:	06952e23          	sw	s1,124(a0)
    8000371c:	fc5ff06f          	j	800036e0 <push_off+0x34>

0000000080003720 <pop_off>:
    80003720:	ff010113          	addi	sp,sp,-16
    80003724:	00813023          	sd	s0,0(sp)
    80003728:	00113423          	sd	ra,8(sp)
    8000372c:	01010413          	addi	s0,sp,16
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	6ac080e7          	jalr	1708(ra) # 80001ddc <mycpu>
    80003738:	100027f3          	csrr	a5,sstatus
    8000373c:	0027f793          	andi	a5,a5,2
    80003740:	04079663          	bnez	a5,8000378c <pop_off+0x6c>
    80003744:	07852783          	lw	a5,120(a0)
    80003748:	02f05a63          	blez	a5,8000377c <pop_off+0x5c>
    8000374c:	fff7871b          	addiw	a4,a5,-1
    80003750:	06e52c23          	sw	a4,120(a0)
    80003754:	00071c63          	bnez	a4,8000376c <pop_off+0x4c>
    80003758:	07c52783          	lw	a5,124(a0)
    8000375c:	00078863          	beqz	a5,8000376c <pop_off+0x4c>
    80003760:	100027f3          	csrr	a5,sstatus
    80003764:	0027e793          	ori	a5,a5,2
    80003768:	10079073          	csrw	sstatus,a5
    8000376c:	00813083          	ld	ra,8(sp)
    80003770:	00013403          	ld	s0,0(sp)
    80003774:	01010113          	addi	sp,sp,16
    80003778:	00008067          	ret
    8000377c:	00001517          	auipc	a0,0x1
    80003780:	a4450513          	addi	a0,a0,-1468 # 800041c0 <digits+0x48>
    80003784:	fffff097          	auipc	ra,0xfffff
    80003788:	018080e7          	jalr	24(ra) # 8000279c <panic>
    8000378c:	00001517          	auipc	a0,0x1
    80003790:	a1c50513          	addi	a0,a0,-1508 # 800041a8 <digits+0x30>
    80003794:	fffff097          	auipc	ra,0xfffff
    80003798:	008080e7          	jalr	8(ra) # 8000279c <panic>

000000008000379c <push_on>:
    8000379c:	fe010113          	addi	sp,sp,-32
    800037a0:	00813823          	sd	s0,16(sp)
    800037a4:	00113c23          	sd	ra,24(sp)
    800037a8:	00913423          	sd	s1,8(sp)
    800037ac:	02010413          	addi	s0,sp,32
    800037b0:	100024f3          	csrr	s1,sstatus
    800037b4:	100027f3          	csrr	a5,sstatus
    800037b8:	0027e793          	ori	a5,a5,2
    800037bc:	10079073          	csrw	sstatus,a5
    800037c0:	ffffe097          	auipc	ra,0xffffe
    800037c4:	61c080e7          	jalr	1564(ra) # 80001ddc <mycpu>
    800037c8:	07852783          	lw	a5,120(a0)
    800037cc:	02078663          	beqz	a5,800037f8 <push_on+0x5c>
    800037d0:	ffffe097          	auipc	ra,0xffffe
    800037d4:	60c080e7          	jalr	1548(ra) # 80001ddc <mycpu>
    800037d8:	07852783          	lw	a5,120(a0)
    800037dc:	01813083          	ld	ra,24(sp)
    800037e0:	01013403          	ld	s0,16(sp)
    800037e4:	0017879b          	addiw	a5,a5,1
    800037e8:	06f52c23          	sw	a5,120(a0)
    800037ec:	00813483          	ld	s1,8(sp)
    800037f0:	02010113          	addi	sp,sp,32
    800037f4:	00008067          	ret
    800037f8:	0014d493          	srli	s1,s1,0x1
    800037fc:	ffffe097          	auipc	ra,0xffffe
    80003800:	5e0080e7          	jalr	1504(ra) # 80001ddc <mycpu>
    80003804:	0014f493          	andi	s1,s1,1
    80003808:	06952e23          	sw	s1,124(a0)
    8000380c:	fc5ff06f          	j	800037d0 <push_on+0x34>

0000000080003810 <pop_on>:
    80003810:	ff010113          	addi	sp,sp,-16
    80003814:	00813023          	sd	s0,0(sp)
    80003818:	00113423          	sd	ra,8(sp)
    8000381c:	01010413          	addi	s0,sp,16
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	5bc080e7          	jalr	1468(ra) # 80001ddc <mycpu>
    80003828:	100027f3          	csrr	a5,sstatus
    8000382c:	0027f793          	andi	a5,a5,2
    80003830:	04078463          	beqz	a5,80003878 <pop_on+0x68>
    80003834:	07852783          	lw	a5,120(a0)
    80003838:	02f05863          	blez	a5,80003868 <pop_on+0x58>
    8000383c:	fff7879b          	addiw	a5,a5,-1
    80003840:	06f52c23          	sw	a5,120(a0)
    80003844:	07853783          	ld	a5,120(a0)
    80003848:	00079863          	bnez	a5,80003858 <pop_on+0x48>
    8000384c:	100027f3          	csrr	a5,sstatus
    80003850:	ffd7f793          	andi	a5,a5,-3
    80003854:	10079073          	csrw	sstatus,a5
    80003858:	00813083          	ld	ra,8(sp)
    8000385c:	00013403          	ld	s0,0(sp)
    80003860:	01010113          	addi	sp,sp,16
    80003864:	00008067          	ret
    80003868:	00001517          	auipc	a0,0x1
    8000386c:	98050513          	addi	a0,a0,-1664 # 800041e8 <digits+0x70>
    80003870:	fffff097          	auipc	ra,0xfffff
    80003874:	f2c080e7          	jalr	-212(ra) # 8000279c <panic>
    80003878:	00001517          	auipc	a0,0x1
    8000387c:	95050513          	addi	a0,a0,-1712 # 800041c8 <digits+0x50>
    80003880:	fffff097          	auipc	ra,0xfffff
    80003884:	f1c080e7          	jalr	-228(ra) # 8000279c <panic>

0000000080003888 <__memset>:
    80003888:	ff010113          	addi	sp,sp,-16
    8000388c:	00813423          	sd	s0,8(sp)
    80003890:	01010413          	addi	s0,sp,16
    80003894:	1a060e63          	beqz	a2,80003a50 <__memset+0x1c8>
    80003898:	40a007b3          	neg	a5,a0
    8000389c:	0077f793          	andi	a5,a5,7
    800038a0:	00778693          	addi	a3,a5,7
    800038a4:	00b00813          	li	a6,11
    800038a8:	0ff5f593          	andi	a1,a1,255
    800038ac:	fff6071b          	addiw	a4,a2,-1
    800038b0:	1b06e663          	bltu	a3,a6,80003a5c <__memset+0x1d4>
    800038b4:	1cd76463          	bltu	a4,a3,80003a7c <__memset+0x1f4>
    800038b8:	1a078e63          	beqz	a5,80003a74 <__memset+0x1ec>
    800038bc:	00b50023          	sb	a1,0(a0)
    800038c0:	00100713          	li	a4,1
    800038c4:	1ae78463          	beq	a5,a4,80003a6c <__memset+0x1e4>
    800038c8:	00b500a3          	sb	a1,1(a0)
    800038cc:	00200713          	li	a4,2
    800038d0:	1ae78a63          	beq	a5,a4,80003a84 <__memset+0x1fc>
    800038d4:	00b50123          	sb	a1,2(a0)
    800038d8:	00300713          	li	a4,3
    800038dc:	18e78463          	beq	a5,a4,80003a64 <__memset+0x1dc>
    800038e0:	00b501a3          	sb	a1,3(a0)
    800038e4:	00400713          	li	a4,4
    800038e8:	1ae78263          	beq	a5,a4,80003a8c <__memset+0x204>
    800038ec:	00b50223          	sb	a1,4(a0)
    800038f0:	00500713          	li	a4,5
    800038f4:	1ae78063          	beq	a5,a4,80003a94 <__memset+0x20c>
    800038f8:	00b502a3          	sb	a1,5(a0)
    800038fc:	00700713          	li	a4,7
    80003900:	18e79e63          	bne	a5,a4,80003a9c <__memset+0x214>
    80003904:	00b50323          	sb	a1,6(a0)
    80003908:	00700e93          	li	t4,7
    8000390c:	00859713          	slli	a4,a1,0x8
    80003910:	00e5e733          	or	a4,a1,a4
    80003914:	01059e13          	slli	t3,a1,0x10
    80003918:	01c76e33          	or	t3,a4,t3
    8000391c:	01859313          	slli	t1,a1,0x18
    80003920:	006e6333          	or	t1,t3,t1
    80003924:	02059893          	slli	a7,a1,0x20
    80003928:	40f60e3b          	subw	t3,a2,a5
    8000392c:	011368b3          	or	a7,t1,a7
    80003930:	02859813          	slli	a6,a1,0x28
    80003934:	0108e833          	or	a6,a7,a6
    80003938:	03059693          	slli	a3,a1,0x30
    8000393c:	003e589b          	srliw	a7,t3,0x3
    80003940:	00d866b3          	or	a3,a6,a3
    80003944:	03859713          	slli	a4,a1,0x38
    80003948:	00389813          	slli	a6,a7,0x3
    8000394c:	00f507b3          	add	a5,a0,a5
    80003950:	00e6e733          	or	a4,a3,a4
    80003954:	000e089b          	sext.w	a7,t3
    80003958:	00f806b3          	add	a3,a6,a5
    8000395c:	00e7b023          	sd	a4,0(a5)
    80003960:	00878793          	addi	a5,a5,8
    80003964:	fed79ce3          	bne	a5,a3,8000395c <__memset+0xd4>
    80003968:	ff8e7793          	andi	a5,t3,-8
    8000396c:	0007871b          	sext.w	a4,a5
    80003970:	01d787bb          	addw	a5,a5,t4
    80003974:	0ce88e63          	beq	a7,a4,80003a50 <__memset+0x1c8>
    80003978:	00f50733          	add	a4,a0,a5
    8000397c:	00b70023          	sb	a1,0(a4)
    80003980:	0017871b          	addiw	a4,a5,1
    80003984:	0cc77663          	bgeu	a4,a2,80003a50 <__memset+0x1c8>
    80003988:	00e50733          	add	a4,a0,a4
    8000398c:	00b70023          	sb	a1,0(a4)
    80003990:	0027871b          	addiw	a4,a5,2
    80003994:	0ac77e63          	bgeu	a4,a2,80003a50 <__memset+0x1c8>
    80003998:	00e50733          	add	a4,a0,a4
    8000399c:	00b70023          	sb	a1,0(a4)
    800039a0:	0037871b          	addiw	a4,a5,3
    800039a4:	0ac77663          	bgeu	a4,a2,80003a50 <__memset+0x1c8>
    800039a8:	00e50733          	add	a4,a0,a4
    800039ac:	00b70023          	sb	a1,0(a4)
    800039b0:	0047871b          	addiw	a4,a5,4
    800039b4:	08c77e63          	bgeu	a4,a2,80003a50 <__memset+0x1c8>
    800039b8:	00e50733          	add	a4,a0,a4
    800039bc:	00b70023          	sb	a1,0(a4)
    800039c0:	0057871b          	addiw	a4,a5,5
    800039c4:	08c77663          	bgeu	a4,a2,80003a50 <__memset+0x1c8>
    800039c8:	00e50733          	add	a4,a0,a4
    800039cc:	00b70023          	sb	a1,0(a4)
    800039d0:	0067871b          	addiw	a4,a5,6
    800039d4:	06c77e63          	bgeu	a4,a2,80003a50 <__memset+0x1c8>
    800039d8:	00e50733          	add	a4,a0,a4
    800039dc:	00b70023          	sb	a1,0(a4)
    800039e0:	0077871b          	addiw	a4,a5,7
    800039e4:	06c77663          	bgeu	a4,a2,80003a50 <__memset+0x1c8>
    800039e8:	00e50733          	add	a4,a0,a4
    800039ec:	00b70023          	sb	a1,0(a4)
    800039f0:	0087871b          	addiw	a4,a5,8
    800039f4:	04c77e63          	bgeu	a4,a2,80003a50 <__memset+0x1c8>
    800039f8:	00e50733          	add	a4,a0,a4
    800039fc:	00b70023          	sb	a1,0(a4)
    80003a00:	0097871b          	addiw	a4,a5,9
    80003a04:	04c77663          	bgeu	a4,a2,80003a50 <__memset+0x1c8>
    80003a08:	00e50733          	add	a4,a0,a4
    80003a0c:	00b70023          	sb	a1,0(a4)
    80003a10:	00a7871b          	addiw	a4,a5,10
    80003a14:	02c77e63          	bgeu	a4,a2,80003a50 <__memset+0x1c8>
    80003a18:	00e50733          	add	a4,a0,a4
    80003a1c:	00b70023          	sb	a1,0(a4)
    80003a20:	00b7871b          	addiw	a4,a5,11
    80003a24:	02c77663          	bgeu	a4,a2,80003a50 <__memset+0x1c8>
    80003a28:	00e50733          	add	a4,a0,a4
    80003a2c:	00b70023          	sb	a1,0(a4)
    80003a30:	00c7871b          	addiw	a4,a5,12
    80003a34:	00c77e63          	bgeu	a4,a2,80003a50 <__memset+0x1c8>
    80003a38:	00e50733          	add	a4,a0,a4
    80003a3c:	00b70023          	sb	a1,0(a4)
    80003a40:	00d7879b          	addiw	a5,a5,13
    80003a44:	00c7f663          	bgeu	a5,a2,80003a50 <__memset+0x1c8>
    80003a48:	00f507b3          	add	a5,a0,a5
    80003a4c:	00b78023          	sb	a1,0(a5)
    80003a50:	00813403          	ld	s0,8(sp)
    80003a54:	01010113          	addi	sp,sp,16
    80003a58:	00008067          	ret
    80003a5c:	00b00693          	li	a3,11
    80003a60:	e55ff06f          	j	800038b4 <__memset+0x2c>
    80003a64:	00300e93          	li	t4,3
    80003a68:	ea5ff06f          	j	8000390c <__memset+0x84>
    80003a6c:	00100e93          	li	t4,1
    80003a70:	e9dff06f          	j	8000390c <__memset+0x84>
    80003a74:	00000e93          	li	t4,0
    80003a78:	e95ff06f          	j	8000390c <__memset+0x84>
    80003a7c:	00000793          	li	a5,0
    80003a80:	ef9ff06f          	j	80003978 <__memset+0xf0>
    80003a84:	00200e93          	li	t4,2
    80003a88:	e85ff06f          	j	8000390c <__memset+0x84>
    80003a8c:	00400e93          	li	t4,4
    80003a90:	e7dff06f          	j	8000390c <__memset+0x84>
    80003a94:	00500e93          	li	t4,5
    80003a98:	e75ff06f          	j	8000390c <__memset+0x84>
    80003a9c:	00600e93          	li	t4,6
    80003aa0:	e6dff06f          	j	8000390c <__memset+0x84>

0000000080003aa4 <__memmove>:
    80003aa4:	ff010113          	addi	sp,sp,-16
    80003aa8:	00813423          	sd	s0,8(sp)
    80003aac:	01010413          	addi	s0,sp,16
    80003ab0:	0e060863          	beqz	a2,80003ba0 <__memmove+0xfc>
    80003ab4:	fff6069b          	addiw	a3,a2,-1
    80003ab8:	0006881b          	sext.w	a6,a3
    80003abc:	0ea5e863          	bltu	a1,a0,80003bac <__memmove+0x108>
    80003ac0:	00758713          	addi	a4,a1,7
    80003ac4:	00a5e7b3          	or	a5,a1,a0
    80003ac8:	40a70733          	sub	a4,a4,a0
    80003acc:	0077f793          	andi	a5,a5,7
    80003ad0:	00f73713          	sltiu	a4,a4,15
    80003ad4:	00174713          	xori	a4,a4,1
    80003ad8:	0017b793          	seqz	a5,a5
    80003adc:	00e7f7b3          	and	a5,a5,a4
    80003ae0:	10078863          	beqz	a5,80003bf0 <__memmove+0x14c>
    80003ae4:	00900793          	li	a5,9
    80003ae8:	1107f463          	bgeu	a5,a6,80003bf0 <__memmove+0x14c>
    80003aec:	0036581b          	srliw	a6,a2,0x3
    80003af0:	fff8081b          	addiw	a6,a6,-1
    80003af4:	02081813          	slli	a6,a6,0x20
    80003af8:	01d85893          	srli	a7,a6,0x1d
    80003afc:	00858813          	addi	a6,a1,8
    80003b00:	00058793          	mv	a5,a1
    80003b04:	00050713          	mv	a4,a0
    80003b08:	01088833          	add	a6,a7,a6
    80003b0c:	0007b883          	ld	a7,0(a5)
    80003b10:	00878793          	addi	a5,a5,8
    80003b14:	00870713          	addi	a4,a4,8
    80003b18:	ff173c23          	sd	a7,-8(a4)
    80003b1c:	ff0798e3          	bne	a5,a6,80003b0c <__memmove+0x68>
    80003b20:	ff867713          	andi	a4,a2,-8
    80003b24:	02071793          	slli	a5,a4,0x20
    80003b28:	0207d793          	srli	a5,a5,0x20
    80003b2c:	00f585b3          	add	a1,a1,a5
    80003b30:	40e686bb          	subw	a3,a3,a4
    80003b34:	00f507b3          	add	a5,a0,a5
    80003b38:	06e60463          	beq	a2,a4,80003ba0 <__memmove+0xfc>
    80003b3c:	0005c703          	lbu	a4,0(a1)
    80003b40:	00e78023          	sb	a4,0(a5)
    80003b44:	04068e63          	beqz	a3,80003ba0 <__memmove+0xfc>
    80003b48:	0015c603          	lbu	a2,1(a1)
    80003b4c:	00100713          	li	a4,1
    80003b50:	00c780a3          	sb	a2,1(a5)
    80003b54:	04e68663          	beq	a3,a4,80003ba0 <__memmove+0xfc>
    80003b58:	0025c603          	lbu	a2,2(a1)
    80003b5c:	00200713          	li	a4,2
    80003b60:	00c78123          	sb	a2,2(a5)
    80003b64:	02e68e63          	beq	a3,a4,80003ba0 <__memmove+0xfc>
    80003b68:	0035c603          	lbu	a2,3(a1)
    80003b6c:	00300713          	li	a4,3
    80003b70:	00c781a3          	sb	a2,3(a5)
    80003b74:	02e68663          	beq	a3,a4,80003ba0 <__memmove+0xfc>
    80003b78:	0045c603          	lbu	a2,4(a1)
    80003b7c:	00400713          	li	a4,4
    80003b80:	00c78223          	sb	a2,4(a5)
    80003b84:	00e68e63          	beq	a3,a4,80003ba0 <__memmove+0xfc>
    80003b88:	0055c603          	lbu	a2,5(a1)
    80003b8c:	00500713          	li	a4,5
    80003b90:	00c782a3          	sb	a2,5(a5)
    80003b94:	00e68663          	beq	a3,a4,80003ba0 <__memmove+0xfc>
    80003b98:	0065c703          	lbu	a4,6(a1)
    80003b9c:	00e78323          	sb	a4,6(a5)
    80003ba0:	00813403          	ld	s0,8(sp)
    80003ba4:	01010113          	addi	sp,sp,16
    80003ba8:	00008067          	ret
    80003bac:	02061713          	slli	a4,a2,0x20
    80003bb0:	02075713          	srli	a4,a4,0x20
    80003bb4:	00e587b3          	add	a5,a1,a4
    80003bb8:	f0f574e3          	bgeu	a0,a5,80003ac0 <__memmove+0x1c>
    80003bbc:	02069613          	slli	a2,a3,0x20
    80003bc0:	02065613          	srli	a2,a2,0x20
    80003bc4:	fff64613          	not	a2,a2
    80003bc8:	00e50733          	add	a4,a0,a4
    80003bcc:	00c78633          	add	a2,a5,a2
    80003bd0:	fff7c683          	lbu	a3,-1(a5)
    80003bd4:	fff78793          	addi	a5,a5,-1
    80003bd8:	fff70713          	addi	a4,a4,-1
    80003bdc:	00d70023          	sb	a3,0(a4)
    80003be0:	fec798e3          	bne	a5,a2,80003bd0 <__memmove+0x12c>
    80003be4:	00813403          	ld	s0,8(sp)
    80003be8:	01010113          	addi	sp,sp,16
    80003bec:	00008067          	ret
    80003bf0:	02069713          	slli	a4,a3,0x20
    80003bf4:	02075713          	srli	a4,a4,0x20
    80003bf8:	00170713          	addi	a4,a4,1
    80003bfc:	00e50733          	add	a4,a0,a4
    80003c00:	00050793          	mv	a5,a0
    80003c04:	0005c683          	lbu	a3,0(a1)
    80003c08:	00178793          	addi	a5,a5,1
    80003c0c:	00158593          	addi	a1,a1,1
    80003c10:	fed78fa3          	sb	a3,-1(a5)
    80003c14:	fee798e3          	bne	a5,a4,80003c04 <__memmove+0x160>
    80003c18:	f89ff06f          	j	80003ba0 <__memmove+0xfc>

0000000080003c1c <__putc>:
    80003c1c:	fe010113          	addi	sp,sp,-32
    80003c20:	00813823          	sd	s0,16(sp)
    80003c24:	00113c23          	sd	ra,24(sp)
    80003c28:	02010413          	addi	s0,sp,32
    80003c2c:	00050793          	mv	a5,a0
    80003c30:	fef40593          	addi	a1,s0,-17
    80003c34:	00100613          	li	a2,1
    80003c38:	00000513          	li	a0,0
    80003c3c:	fef407a3          	sb	a5,-17(s0)
    80003c40:	fffff097          	auipc	ra,0xfffff
    80003c44:	b3c080e7          	jalr	-1220(ra) # 8000277c <console_write>
    80003c48:	01813083          	ld	ra,24(sp)
    80003c4c:	01013403          	ld	s0,16(sp)
    80003c50:	02010113          	addi	sp,sp,32
    80003c54:	00008067          	ret

0000000080003c58 <__getc>:
    80003c58:	fe010113          	addi	sp,sp,-32
    80003c5c:	00813823          	sd	s0,16(sp)
    80003c60:	00113c23          	sd	ra,24(sp)
    80003c64:	02010413          	addi	s0,sp,32
    80003c68:	fe840593          	addi	a1,s0,-24
    80003c6c:	00100613          	li	a2,1
    80003c70:	00000513          	li	a0,0
    80003c74:	fffff097          	auipc	ra,0xfffff
    80003c78:	ae8080e7          	jalr	-1304(ra) # 8000275c <console_read>
    80003c7c:	fe844503          	lbu	a0,-24(s0)
    80003c80:	01813083          	ld	ra,24(sp)
    80003c84:	01013403          	ld	s0,16(sp)
    80003c88:	02010113          	addi	sp,sp,32
    80003c8c:	00008067          	ret

0000000080003c90 <console_handler>:
    80003c90:	fe010113          	addi	sp,sp,-32
    80003c94:	00813823          	sd	s0,16(sp)
    80003c98:	00113c23          	sd	ra,24(sp)
    80003c9c:	00913423          	sd	s1,8(sp)
    80003ca0:	02010413          	addi	s0,sp,32
    80003ca4:	14202773          	csrr	a4,scause
    80003ca8:	100027f3          	csrr	a5,sstatus
    80003cac:	0027f793          	andi	a5,a5,2
    80003cb0:	06079e63          	bnez	a5,80003d2c <console_handler+0x9c>
    80003cb4:	00074c63          	bltz	a4,80003ccc <console_handler+0x3c>
    80003cb8:	01813083          	ld	ra,24(sp)
    80003cbc:	01013403          	ld	s0,16(sp)
    80003cc0:	00813483          	ld	s1,8(sp)
    80003cc4:	02010113          	addi	sp,sp,32
    80003cc8:	00008067          	ret
    80003ccc:	0ff77713          	andi	a4,a4,255
    80003cd0:	00900793          	li	a5,9
    80003cd4:	fef712e3          	bne	a4,a5,80003cb8 <console_handler+0x28>
    80003cd8:	ffffe097          	auipc	ra,0xffffe
    80003cdc:	6dc080e7          	jalr	1756(ra) # 800023b4 <plic_claim>
    80003ce0:	00a00793          	li	a5,10
    80003ce4:	00050493          	mv	s1,a0
    80003ce8:	02f50c63          	beq	a0,a5,80003d20 <console_handler+0x90>
    80003cec:	fc0506e3          	beqz	a0,80003cb8 <console_handler+0x28>
    80003cf0:	00050593          	mv	a1,a0
    80003cf4:	00000517          	auipc	a0,0x0
    80003cf8:	3fc50513          	addi	a0,a0,1020 # 800040f0 <CONSOLE_STATUS+0xe0>
    80003cfc:	fffff097          	auipc	ra,0xfffff
    80003d00:	afc080e7          	jalr	-1284(ra) # 800027f8 <__printf>
    80003d04:	01013403          	ld	s0,16(sp)
    80003d08:	01813083          	ld	ra,24(sp)
    80003d0c:	00048513          	mv	a0,s1
    80003d10:	00813483          	ld	s1,8(sp)
    80003d14:	02010113          	addi	sp,sp,32
    80003d18:	ffffe317          	auipc	t1,0xffffe
    80003d1c:	6d430067          	jr	1748(t1) # 800023ec <plic_complete>
    80003d20:	fffff097          	auipc	ra,0xfffff
    80003d24:	3e0080e7          	jalr	992(ra) # 80003100 <uartintr>
    80003d28:	fddff06f          	j	80003d04 <console_handler+0x74>
    80003d2c:	00000517          	auipc	a0,0x0
    80003d30:	4c450513          	addi	a0,a0,1220 # 800041f0 <digits+0x78>
    80003d34:	fffff097          	auipc	ra,0xfffff
    80003d38:	a68080e7          	jalr	-1432(ra) # 8000279c <panic>
	...
