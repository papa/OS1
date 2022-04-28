
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	98813103          	ld	sp,-1656(sp) # 80005988 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	148020ef          	jal	ra,80002164 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
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
    80001080:	305000ef          	jal	ra,80001b84 <_ZN5Riscv20handleSupervisorTrapEv>

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
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001228:	03f50513          	addi	a0,a0,63
    8000122c:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    80001230:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80001234:	00100513          	li	a0,1

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
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80001258:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    8000125c:	00200513          	li	a0,2

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
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)args));
    8000128c:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)start_routine));
    80001290:	00058613          	mv	a2,a1

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001294:	00001537          	lui	a0,0x1
    80001298:	00000097          	auipc	ra,0x0
    8000129c:	f84080e7          	jalr	-124(ra) # 8000121c <mem_alloc>

    //todo
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
    Scheduler::put(this);
}

//todo
void PCB::runner()
{
    800012ec:	fe010113          	addi	sp,sp,-32
    800012f0:	00113c23          	sd	ra,24(sp)
    800012f4:	00813823          	sd	s0,16(sp)
    800012f8:	00913423          	sd	s1,8(sp)
    800012fc:	02010413          	addi	s0,sp,32
   Riscv::popSppSpie();
    80001300:	00000097          	auipc	ra,0x0
    80001304:	738080e7          	jalr	1848(ra) # 80001a38 <_ZN5Riscv10popSppSpieEv>
   running->body(running->args);
    80001308:	00004497          	auipc	s1,0x4
    8000130c:	6e848493          	addi	s1,s1,1768 # 800059f0 <_ZN3PCB7runningE>
    80001310:	0004b783          	ld	a5,0(s1)
    80001314:	0087b703          	ld	a4,8(a5)
    80001318:	0107b503          	ld	a0,16(a5)
    8000131c:	000700e7          	jalr	a4
   running->setFinished(false);
    80001320:	0004b783          	ld	a5,0(s1)

    static uint64 timeSliceCounter;

    uint64 getTimeSlice() { return timeSlice;}

    void setFinished(bool f) {finished = f;}
    80001324:	02078823          	sb	zero,48(a5)
   thread_dispatch();
    80001328:	00000097          	auipc	ra,0x0
    8000132c:	fa4080e7          	jalr	-92(ra) # 800012cc <thread_dispatch>
}
    80001330:	01813083          	ld	ra,24(sp)
    80001334:	01013403          	ld	s0,16(sp)
    80001338:	00813483          	ld	s1,8(sp)
    8000133c:	02010113          	addi	sp,sp,32
    80001340:	00008067          	ret

0000000080001344 <_ZN3PCBC1EPFvPvES0_S0_>:
PCB::PCB(Body body, void *args, void* stack_space) :
    80001344:	ff010113          	addi	sp,sp,-16
    80001348:	00813423          	sd	s0,8(sp)
    8000134c:	01010413          	addi	s0,sp,16
    })
    80001350:	00b53423          	sd	a1,8(a0) # 1008 <_entry-0x7fffeff8>
    80001354:	00c53823          	sd	a2,16(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80001358:	000017b7          	lui	a5,0x1
    8000135c:	00f686b3          	add	a3,a3,a5
    })
    80001360:	00d53c23          	sd	a3,24(a0)
    80001364:	00000797          	auipc	a5,0x0
    80001368:	f8878793          	addi	a5,a5,-120 # 800012ec <_ZN3PCB6runnerEv>
    8000136c:	02f53023          	sd	a5,32(a0)
    80001370:	02050823          	sb	zero,48(a0)
}
    80001374:	00813403          	ld	s0,8(sp)
    80001378:	01010113          	addi	sp,sp,16
    8000137c:	00008067          	ret

0000000080001380 <_ZN3PCB5sleepEm>:
{
    80001380:	ff010113          	addi	sp,sp,-16
    80001384:	00813423          	sd	s0,8(sp)
    80001388:	01010413          	addi	s0,sp,16
}
    8000138c:	00813403          	ld	s0,8(sp)
    80001390:	01010113          	addi	sp,sp,16
    80001394:	00008067          	ret

0000000080001398 <_ZN3PCB5startEv>:
{
    80001398:	ff010113          	addi	sp,sp,-16
    8000139c:	00113423          	sd	ra,8(sp)
    800013a0:	00813023          	sd	s0,0(sp)
    800013a4:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    800013a8:	00000097          	auipc	ra,0x0
    800013ac:	12c080e7          	jalr	300(ra) # 800014d4 <_ZN9Scheduler3putEP3PCB>
}
    800013b0:	00813083          	ld	ra,8(sp)
    800013b4:	00013403          	ld	s0,0(sp)
    800013b8:	01010113          	addi	sp,sp,16
    800013bc:	00008067          	ret

00000000800013c0 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    800013c0:	fe010113          	addi	sp,sp,-32
    800013c4:	00113c23          	sd	ra,24(sp)
    800013c8:	00813823          	sd	s0,16(sp)
    800013cc:	00913423          	sd	s1,8(sp)
    800013d0:	02010413          	addi	s0,sp,32
    Riscv::pushRegisters();
    800013d4:	00000097          	auipc	ra,0x0
    800013d8:	d3c080e7          	jalr	-708(ra) # 80001110 <_ZN5Riscv13pushRegistersEv>

    PCB* old = running;
    800013dc:	00004497          	auipc	s1,0x4
    800013e0:	6144b483          	ld	s1,1556(s1) # 800059f0 <_ZN3PCB7runningE>
    if(!old->finished) Scheduler::put(old);
    800013e4:	0304c783          	lbu	a5,48(s1)
    800013e8:	04078063          	beqz	a5,80001428 <_ZN3PCB8dispatchEv+0x68>
    running = Scheduler::get();
    800013ec:	00000097          	auipc	ra,0x0
    800013f0:	11c080e7          	jalr	284(ra) # 80001508 <_ZN9Scheduler3getEv>
    800013f4:	00004797          	auipc	a5,0x4
    800013f8:	5ea7be23          	sd	a0,1532(a5) # 800059f0 <_ZN3PCB7runningE>

    PCB::contextSwitch(&old->context, &running->context);
    800013fc:	01850593          	addi	a1,a0,24
    80001400:	01848513          	addi	a0,s1,24
    80001404:	00000097          	auipc	ra,0x0
    80001408:	e04080e7          	jalr	-508(ra) # 80001208 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>

    Riscv::popRegisters();
    8000140c:	00000097          	auipc	ra,0x0
    80001410:	d80080e7          	jalr	-640(ra) # 8000118c <_ZN5Riscv12popRegistersEv>
}
    80001414:	01813083          	ld	ra,24(sp)
    80001418:	01013403          	ld	s0,16(sp)
    8000141c:	00813483          	ld	s1,8(sp)
    80001420:	02010113          	addi	sp,sp,32
    80001424:	00008067          	ret
    if(!old->finished) Scheduler::put(old);
    80001428:	00048513          	mv	a0,s1
    8000142c:	00000097          	auipc	ra,0x0
    80001430:	0a8080e7          	jalr	168(ra) # 800014d4 <_ZN9Scheduler3putEP3PCB>
    80001434:	fb9ff06f          	j	800013ec <_ZN3PCB8dispatchEv+0x2c>

0000000080001438 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80001438:	ff010113          	addi	sp,sp,-16
    8000143c:	00113423          	sd	ra,8(sp)
    80001440:	00813023          	sd	s0,0(sp)
    80001444:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80001448:	00001097          	auipc	ra,0x1
    8000144c:	ccc080e7          	jalr	-820(ra) # 80002114 <_Z7kmallocm>
}
    80001450:	00813083          	ld	ra,8(sp)
    80001454:	00013403          	ld	s0,0(sp)
    80001458:	01010113          	addi	sp,sp,16
    8000145c:	00008067          	ret

0000000080001460 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80001460:	ff010113          	addi	sp,sp,-16
    80001464:	00113423          	sd	ra,8(sp)
    80001468:	00813023          	sd	s0,0(sp)
    8000146c:	01010413          	addi	s0,sp,16
    kfree(p);
    80001470:	00001097          	auipc	ra,0x1
    80001474:	ccc080e7          	jalr	-820(ra) # 8000213c <_Z5kfreePv>
}
    80001478:	00813083          	ld	ra,8(sp)
    8000147c:	00013403          	ld	s0,0(sp)
    80001480:	01010113          	addi	sp,sp,16
    80001484:	00008067          	ret

0000000080001488 <_Z41__static_initialization_and_destruction_0ii>:

PCB *Scheduler::get() {
    PCB* fr = queuePCB->front();
    queuePCB->pop();
    return fr;
    80001488:	00100793          	li	a5,1
    8000148c:	00f50463          	beq	a0,a5,80001494 <_Z41__static_initialization_and_destruction_0ii+0xc>
    80001490:	00008067          	ret
    80001494:	000107b7          	lui	a5,0x10
    80001498:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000149c:	fef59ae3          	bne	a1,a5,80001490 <_Z41__static_initialization_and_destruction_0ii+0x8>
    800014a0:	ff010113          	addi	sp,sp,-16
    800014a4:	00113423          	sd	ra,8(sp)
    800014a8:	00813023          	sd	s0,0(sp)
    800014ac:	01010413          	addi	s0,sp,16
Queue<PCB*>* Scheduler::queuePCB = (Queue<PCB*>*)MemoryAllocator::mem_alloc(sizeof(Queue<PCB*>));
    800014b0:	01000513          	li	a0,16
    800014b4:	00001097          	auipc	ra,0x1
    800014b8:	a90080e7          	jalr	-1392(ra) # 80001f44 <_ZN15MemoryAllocator9mem_allocEm>
    800014bc:	00004797          	auipc	a5,0x4
    800014c0:	54a7b223          	sd	a0,1348(a5) # 80005a00 <_ZN9Scheduler8queuePCBE>
    800014c4:	00813083          	ld	ra,8(sp)
    800014c8:	00013403          	ld	s0,0(sp)
    800014cc:	01010113          	addi	sp,sp,16
    800014d0:	00008067          	ret

00000000800014d4 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *pcb) {
    800014d4:	ff010113          	addi	sp,sp,-16
    800014d8:	00113423          	sd	ra,8(sp)
    800014dc:	00813023          	sd	s0,0(sp)
    800014e0:	01010413          	addi	s0,sp,16
    800014e4:	00050593          	mv	a1,a0
    Scheduler::queuePCB->push(pcb);
    800014e8:	00004517          	auipc	a0,0x4
    800014ec:	51853503          	ld	a0,1304(a0) # 80005a00 <_ZN9Scheduler8queuePCBE>
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	0a4080e7          	jalr	164(ra) # 80001594 <_ZN5QueueIP3PCBE4pushES1_>
}
    800014f8:	00813083          	ld	ra,8(sp)
    800014fc:	00013403          	ld	s0,0(sp)
    80001500:	01010113          	addi	sp,sp,16
    80001504:	00008067          	ret

0000000080001508 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    80001508:	fe010113          	addi	sp,sp,-32
    8000150c:	00113c23          	sd	ra,24(sp)
    80001510:	00813823          	sd	s0,16(sp)
    80001514:	00913423          	sd	s1,8(sp)
    80001518:	01213023          	sd	s2,0(sp)
    8000151c:	02010413          	addi	s0,sp,32
    PCB* fr = queuePCB->front();
    80001520:	00004917          	auipc	s2,0x4
    80001524:	4e093903          	ld	s2,1248(s2) # 80005a00 <_ZN9Scheduler8queuePCBE>
    80001528:	00090513          	mv	a0,s2
    8000152c:	00000097          	auipc	ra,0x0
    80001530:	0b8080e7          	jalr	184(ra) # 800015e4 <_ZN5QueueIP3PCBE5frontEv>
    80001534:	00050493          	mv	s1,a0
    queuePCB->pop();
    80001538:	00090513          	mv	a0,s2
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	0cc080e7          	jalr	204(ra) # 80001608 <_ZN5QueueIP3PCBE3popEv>
    80001544:	00048513          	mv	a0,s1
    80001548:	01813083          	ld	ra,24(sp)
    8000154c:	01013403          	ld	s0,16(sp)
    80001550:	00813483          	ld	s1,8(sp)
    80001554:	00013903          	ld	s2,0(sp)
    80001558:	02010113          	addi	sp,sp,32
    8000155c:	00008067          	ret

0000000080001560 <_GLOBAL__sub_I__ZN9Scheduler8queuePCBE>:
    80001560:	ff010113          	addi	sp,sp,-16
    80001564:	00113423          	sd	ra,8(sp)
    80001568:	00813023          	sd	s0,0(sp)
    8000156c:	01010413          	addi	s0,sp,16
    80001570:	000105b7          	lui	a1,0x10
    80001574:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001578:	00100513          	li	a0,1
    8000157c:	00000097          	auipc	ra,0x0
    80001580:	f0c080e7          	jalr	-244(ra) # 80001488 <_Z41__static_initialization_and_destruction_0ii>
    80001584:	00813083          	ld	ra,8(sp)
    80001588:	00013403          	ld	s0,0(sp)
    8000158c:	01010113          	addi	sp,sp,16
    80001590:	00008067          	ret

0000000080001594 <_ZN5QueueIP3PCBE4pushES1_>:
    if(first == 0)
        first = last = 0;
}

template<typename T>
void Queue<T>::push(T t) {
    80001594:	fe010113          	addi	sp,sp,-32
    80001598:	00113c23          	sd	ra,24(sp)
    8000159c:	00813823          	sd	s0,16(sp)
    800015a0:	00913423          	sd	s1,8(sp)
    800015a4:	02010413          	addi	s0,sp,32
    800015a8:	00050493          	mv	s1,a0
    Elem* newElem = (Elem*)MemoryAllocator::mem_alloc(sizeof(Elem));
    800015ac:	01000513          	li	a0,16
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	994080e7          	jalr	-1644(ra) # 80001f44 <_ZN15MemoryAllocator9mem_allocEm>
    if(first == 0) {
    800015b8:	0004b783          	ld	a5,0(s1)
    800015bc:	00078c63          	beqz	a5,800015d4 <_ZN5QueueIP3PCBE4pushES1_+0x40>
        first = newElem;
        last = 0;
        first->next = last;
    }
}
    800015c0:	01813083          	ld	ra,24(sp)
    800015c4:	01013403          	ld	s0,16(sp)
    800015c8:	00813483          	ld	s1,8(sp)
    800015cc:	02010113          	addi	sp,sp,32
    800015d0:	00008067          	ret
        first = newElem;
    800015d4:	00a4b023          	sd	a0,0(s1)
        last = 0;
    800015d8:	0004b423          	sd	zero,8(s1)
        first->next = last;
    800015dc:	00053423          	sd	zero,8(a0)
}
    800015e0:	fe1ff06f          	j	800015c0 <_ZN5QueueIP3PCBE4pushES1_+0x2c>

00000000800015e4 <_ZN5QueueIP3PCBE5frontEv>:

template<typename T>
T Queue<T>::front() {
    800015e4:	ff010113          	addi	sp,sp,-16
    800015e8:	00813423          	sd	s0,8(sp)
    800015ec:	01010413          	addi	s0,sp,16
    if(first == 0)
    800015f0:	00053503          	ld	a0,0(a0)
    800015f4:	00050463          	beqz	a0,800015fc <_ZN5QueueIP3PCBE5frontEv+0x18>
        return 0;
    return first->data;
    800015f8:	00053503          	ld	a0,0(a0)
}
    800015fc:	00813403          	ld	s0,8(sp)
    80001600:	01010113          	addi	sp,sp,16
    80001604:	00008067          	ret

0000000080001608 <_ZN5QueueIP3PCBE3popEv>:
void Queue<T>::pop() {
    80001608:	fe010113          	addi	sp,sp,-32
    8000160c:	00113c23          	sd	ra,24(sp)
    80001610:	00813823          	sd	s0,16(sp)
    80001614:	00913423          	sd	s1,8(sp)
    80001618:	01213023          	sd	s2,0(sp)
    8000161c:	02010413          	addi	s0,sp,32
    80001620:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80001624:	00053503          	ld	a0,0(a0)
    80001628:	00853903          	ld	s2,8(a0)
    MemoryAllocator::mem_free(first);
    8000162c:	00001097          	auipc	ra,0x1
    80001630:	ac0080e7          	jalr	-1344(ra) # 800020ec <_ZN15MemoryAllocator8mem_freeEPv>
    first = newFirst;
    80001634:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80001638:	00090e63          	beqz	s2,80001654 <_ZN5QueueIP3PCBE3popEv+0x4c>
}
    8000163c:	01813083          	ld	ra,24(sp)
    80001640:	01013403          	ld	s0,16(sp)
    80001644:	00813483          	ld	s1,8(sp)
    80001648:	00013903          	ld	s2,0(sp)
    8000164c:	02010113          	addi	sp,sp,32
    80001650:	00008067          	ret
        first = last = 0;
    80001654:	0004b423          	sd	zero,8(s1)
    80001658:	0004b023          	sd	zero,0(s1)
}
    8000165c:	fe1ff06f          	j	8000163c <_ZN5QueueIP3PCBE3popEv+0x34>

0000000080001660 <main>:
void badFree();

void memoryAllocationTests();

void main()
{
    80001660:	ff010113          	addi	sp,sp,-16
    80001664:	00113423          	sd	ra,8(sp)
    80001668:	00813023          	sd	s0,0(sp)
    8000166c:	01010413          	addi	s0,sp,16
    Riscv::initSystem();
    80001670:	00000097          	auipc	ra,0x0
    80001674:	3a4080e7          	jalr	932(ra) # 80001a14 <_ZN5Riscv10initSystemEv>
}
    80001678:	00813083          	ld	ra,8(sp)
    8000167c:	00013403          	ld	s0,0(sp)
    80001680:	01010113          	addi	sp,sp,16
    80001684:	00008067          	ret

0000000080001688 <_Z10mallocFreev>:

void mallocFree()
{
    80001688:	cc010113          	addi	sp,sp,-832
    8000168c:	32113c23          	sd	ra,824(sp)
    80001690:	32813823          	sd	s0,816(sp)
    80001694:	32913423          	sd	s1,808(sp)
    80001698:	34010413          	addi	s0,sp,832
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    8000169c:	00000493          	li	s1,0
    800016a0:	0080006f          	j	800016a8 <_Z10mallocFreev+0x20>
    800016a4:	0014849b          	addiw	s1,s1,1
    800016a8:	06300793          	li	a5,99
    800016ac:	0497c463          	blt	a5,s1,800016f4 <_Z10mallocFreev+0x6c>
    {
        addrs[i] = mem_alloc(100);
    800016b0:	06400513          	li	a0,100
    800016b4:	00000097          	auipc	ra,0x0
    800016b8:	b68080e7          	jalr	-1176(ra) # 8000121c <mem_alloc>
    800016bc:	00349793          	slli	a5,s1,0x3
    800016c0:	fe040713          	addi	a4,s0,-32
    800016c4:	00f707b3          	add	a5,a4,a5
    800016c8:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    800016cc:	fc051ce3          	bnez	a0,800016a4 <_Z10mallocFreev+0x1c>
        {
            Riscv::printString("not OK\n");
    800016d0:	00004517          	auipc	a0,0x4
    800016d4:	95050513          	addi	a0,a0,-1712 # 80005020 <CONSOLE_STATUS+0x10>
    800016d8:	00000097          	auipc	ra,0x0
    800016dc:	380080e7          	jalr	896(ra) # 80001a58 <_ZN5Riscv11printStringEPKc>
            return;
        }
    }

    Riscv::printString("OK\n");
}
    800016e0:	33813083          	ld	ra,824(sp)
    800016e4:	33013403          	ld	s0,816(sp)
    800016e8:	32813483          	ld	s1,808(sp)
    800016ec:	34010113          	addi	sp,sp,832
    800016f0:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    800016f4:	00000493          	li	s1,0
    800016f8:	06300793          	li	a5,99
    800016fc:	0297ce63          	blt	a5,s1,80001738 <_Z10mallocFreev+0xb0>
        int retval = mem_free(addrs[i]);
    80001700:	00349793          	slli	a5,s1,0x3
    80001704:	fe040713          	addi	a4,s0,-32
    80001708:	00f707b3          	add	a5,a4,a5
    8000170c:	ce07b503          	ld	a0,-800(a5)
    80001710:	00000097          	auipc	ra,0x0
    80001714:	b3c080e7          	jalr	-1220(ra) # 8000124c <mem_free>
        if(retval != 0)
    80001718:	00051663          	bnez	a0,80001724 <_Z10mallocFreev+0x9c>
    for(int i = 0 ; i < num;i+=2)
    8000171c:	0024849b          	addiw	s1,s1,2
    80001720:	fd9ff06f          	j	800016f8 <_Z10mallocFreev+0x70>
            Riscv::printString("not OK\n");
    80001724:	00004517          	auipc	a0,0x4
    80001728:	8fc50513          	addi	a0,a0,-1796 # 80005020 <CONSOLE_STATUS+0x10>
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	32c080e7          	jalr	812(ra) # 80001a58 <_ZN5Riscv11printStringEPKc>
            return;
    80001734:	fadff06f          	j	800016e0 <_Z10mallocFreev+0x58>
    for(int i = 0 ; i < num;i++)
    80001738:	00000493          	li	s1,0
    8000173c:	06300793          	li	a5,99
    80001740:	0497c063          	blt	a5,s1,80001780 <_Z10mallocFreev+0xf8>
        addrs[i] = mem_alloc(20);
    80001744:	01400513          	li	a0,20
    80001748:	00000097          	auipc	ra,0x0
    8000174c:	ad4080e7          	jalr	-1324(ra) # 8000121c <mem_alloc>
    80001750:	00349793          	slli	a5,s1,0x3
    80001754:	fe040713          	addi	a4,s0,-32
    80001758:	00f707b3          	add	a5,a4,a5
    8000175c:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001760:	00050663          	beqz	a0,8000176c <_Z10mallocFreev+0xe4>
    for(int i = 0 ; i < num;i++)
    80001764:	0014849b          	addiw	s1,s1,1
    80001768:	fd5ff06f          	j	8000173c <_Z10mallocFreev+0xb4>
            Riscv::printString("not OK\n");
    8000176c:	00004517          	auipc	a0,0x4
    80001770:	8b450513          	addi	a0,a0,-1868 # 80005020 <CONSOLE_STATUS+0x10>
    80001774:	00000097          	auipc	ra,0x0
    80001778:	2e4080e7          	jalr	740(ra) # 80001a58 <_ZN5Riscv11printStringEPKc>
            return;
    8000177c:	f65ff06f          	j	800016e0 <_Z10mallocFreev+0x58>
    for(int i = 0; i < num;i++)
    80001780:	00000493          	li	s1,0
    80001784:	06300793          	li	a5,99
    80001788:	0297ce63          	blt	a5,s1,800017c4 <_Z10mallocFreev+0x13c>
        int retval = mem_free(addrs[i]);
    8000178c:	00349793          	slli	a5,s1,0x3
    80001790:	fe040713          	addi	a4,s0,-32
    80001794:	00f707b3          	add	a5,a4,a5
    80001798:	ce07b503          	ld	a0,-800(a5)
    8000179c:	00000097          	auipc	ra,0x0
    800017a0:	ab0080e7          	jalr	-1360(ra) # 8000124c <mem_free>
        if(retval != 0)
    800017a4:	00051663          	bnez	a0,800017b0 <_Z10mallocFreev+0x128>
    for(int i = 0; i < num;i++)
    800017a8:	0014849b          	addiw	s1,s1,1
    800017ac:	fd9ff06f          	j	80001784 <_Z10mallocFreev+0xfc>
            Riscv::printString("not OK\n");
    800017b0:	00004517          	auipc	a0,0x4
    800017b4:	87050513          	addi	a0,a0,-1936 # 80005020 <CONSOLE_STATUS+0x10>
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	2a0080e7          	jalr	672(ra) # 80001a58 <_ZN5Riscv11printStringEPKc>
            return;
    800017c0:	f21ff06f          	j	800016e0 <_Z10mallocFreev+0x58>
    Riscv::printString("OK\n");
    800017c4:	00004517          	auipc	a0,0x4
    800017c8:	86450513          	addi	a0,a0,-1948 # 80005028 <CONSOLE_STATUS+0x18>
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	28c080e7          	jalr	652(ra) # 80001a58 <_ZN5Riscv11printStringEPKc>
    800017d4:	f0dff06f          	j	800016e0 <_Z10mallocFreev+0x58>

00000000800017d8 <_Z9bigMallocv>:
void bigMalloc()
{
    800017d8:	ff010113          	addi	sp,sp,-16
    800017dc:	00113423          	sd	ra,8(sp)
    800017e0:	00813023          	sd	s0,0(sp)
    800017e4:	01010413          	addi	s0,sp,16
    void* p = mem_alloc(1000000000000000UL);
    800017e8:	00004517          	auipc	a0,0x4
    800017ec:	84853503          	ld	a0,-1976(a0) # 80005030 <CONSOLE_STATUS+0x20>
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	a2c080e7          	jalr	-1492(ra) # 8000121c <mem_alloc>
    if(p == 0)
    800017f8:	02050263          	beqz	a0,8000181c <_Z9bigMallocv+0x44>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    800017fc:	00004517          	auipc	a0,0x4
    80001800:	82450513          	addi	a0,a0,-2012 # 80005020 <CONSOLE_STATUS+0x10>
    80001804:	00000097          	auipc	ra,0x0
    80001808:	254080e7          	jalr	596(ra) # 80001a58 <_ZN5Riscv11printStringEPKc>
}
    8000180c:	00813083          	ld	ra,8(sp)
    80001810:	00013403          	ld	s0,0(sp)
    80001814:	01010113          	addi	sp,sp,16
    80001818:	00008067          	ret
        Riscv::printString("OK\n");
    8000181c:	00004517          	auipc	a0,0x4
    80001820:	80c50513          	addi	a0,a0,-2036 # 80005028 <CONSOLE_STATUS+0x18>
    80001824:	00000097          	auipc	ra,0x0
    80001828:	234080e7          	jalr	564(ra) # 80001a58 <_ZN5Riscv11printStringEPKc>
    8000182c:	fe1ff06f          	j	8000180c <_Z9bigMallocv+0x34>

0000000080001830 <_Z17lotOfSmallMallocsv>:

void lotOfSmallMallocs()
{
    80001830:	fe010113          	addi	sp,sp,-32
    80001834:	00113c23          	sd	ra,24(sp)
    80001838:	00813823          	sd	s0,16(sp)
    8000183c:	00913423          	sd	s1,8(sp)
    80001840:	01213023          	sd	s2,0(sp)
    80001844:	02010413          	addi	s0,sp,32
    uint64 cnt = 0;
    uint64 sum = 0;
    80001848:	00000913          	li	s2,0
    uint64 cnt = 0;
    8000184c:	00000493          	li	s1,0
    for(;;)
    {
        Test* t = (Test*) mem_alloc(sizeof(Test));
    80001850:	00800513          	li	a0,8
    80001854:	00000097          	auipc	ra,0x0
    80001858:	9c8080e7          	jalr	-1592(ra) # 8000121c <mem_alloc>
        if(t == 0)
    8000185c:	00050c63          	beqz	a0,80001874 <_Z17lotOfSmallMallocsv+0x44>
            break;
        t->a = 10;
    80001860:	00a00793          	li	a5,10
    80001864:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001868:	00a90913          	addi	s2,s2,10
        cnt++;
    8000186c:	00148493          	addi	s1,s1,1
    }
    80001870:	fe1ff06f          	j	80001850 <_Z17lotOfSmallMallocsv+0x20>
    Riscv::printInteger(cnt);
    80001874:	00048513          	mv	a0,s1
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	250080e7          	jalr	592(ra) # 80001ac8 <_ZN5Riscv12printIntegerEm>
    if(sum == 10*cnt)
    80001880:	00249793          	slli	a5,s1,0x2
    80001884:	009784b3          	add	s1,a5,s1
    80001888:	00149493          	slli	s1,s1,0x1
    8000188c:	03248663          	beq	s1,s2,800018b8 <_Z17lotOfSmallMallocsv+0x88>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    80001890:	00003517          	auipc	a0,0x3
    80001894:	79050513          	addi	a0,a0,1936 # 80005020 <CONSOLE_STATUS+0x10>
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	1c0080e7          	jalr	448(ra) # 80001a58 <_ZN5Riscv11printStringEPKc>
}
    800018a0:	01813083          	ld	ra,24(sp)
    800018a4:	01013403          	ld	s0,16(sp)
    800018a8:	00813483          	ld	s1,8(sp)
    800018ac:	00013903          	ld	s2,0(sp)
    800018b0:	02010113          	addi	sp,sp,32
    800018b4:	00008067          	ret
        Riscv::printString("OK\n");
    800018b8:	00003517          	auipc	a0,0x3
    800018bc:	77050513          	addi	a0,a0,1904 # 80005028 <CONSOLE_STATUS+0x18>
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	198080e7          	jalr	408(ra) # 80001a58 <_ZN5Riscv11printStringEPKc>
    800018c8:	fd9ff06f          	j	800018a0 <_Z17lotOfSmallMallocsv+0x70>

00000000800018cc <_Z7badFreev>:
void badFree()
{
    800018cc:	ff010113          	addi	sp,sp,-16
    800018d0:	00113423          	sd	ra,8(sp)
    800018d4:	00813023          	sd	s0,0(sp)
    800018d8:	01010413          	addi	s0,sp,16
    Test* t = (Test*)mem_alloc(sizeof(Test));
    800018dc:	00800513          	li	a0,8
    800018e0:	00000097          	auipc	ra,0x0
    800018e4:	93c080e7          	jalr	-1732(ra) # 8000121c <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);// address is not allocated with new, look at mem_free return value
    800018e8:	00250513          	addi	a0,a0,2
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	960080e7          	jalr	-1696(ra) # 8000124c <mem_free>
    if(retval == 0)
    800018f4:	02051263          	bnez	a0,80001918 <_Z7badFreev+0x4c>
        Riscv::printString("not OK\n");
    800018f8:	00003517          	auipc	a0,0x3
    800018fc:	72850513          	addi	a0,a0,1832 # 80005020 <CONSOLE_STATUS+0x10>
    80001900:	00000097          	auipc	ra,0x0
    80001904:	158080e7          	jalr	344(ra) # 80001a58 <_ZN5Riscv11printStringEPKc>
    else
        Riscv::printString("OK\n");
}
    80001908:	00813083          	ld	ra,8(sp)
    8000190c:	00013403          	ld	s0,0(sp)
    80001910:	01010113          	addi	sp,sp,16
    80001914:	00008067          	ret
        Riscv::printString("OK\n");
    80001918:	00003517          	auipc	a0,0x3
    8000191c:	71050513          	addi	a0,a0,1808 # 80005028 <CONSOLE_STATUS+0x18>
    80001920:	00000097          	auipc	ra,0x0
    80001924:	138080e7          	jalr	312(ra) # 80001a58 <_ZN5Riscv11printStringEPKc>
}
    80001928:	fe1ff06f          	j	80001908 <_Z7badFreev+0x3c>

000000008000192c <_Z21memoryAllocationTestsv>:

void memoryAllocationTests()
{
    8000192c:	ff010113          	addi	sp,sp,-16
    80001930:	00113423          	sd	ra,8(sp)
    80001934:	00813023          	sd	s0,0(sp)
    80001938:	01010413          	addi	s0,sp,16
    bigMalloc();
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	e9c080e7          	jalr	-356(ra) # 800017d8 <_Z9bigMallocv>
    lotOfSmallMallocs();
    80001944:	00000097          	auipc	ra,0x0
    80001948:	eec080e7          	jalr	-276(ra) # 80001830 <_Z17lotOfSmallMallocsv>
    mallocFree();
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	d3c080e7          	jalr	-708(ra) # 80001688 <_Z10mallocFreev>
    badFree();
    80001954:	00000097          	auipc	ra,0x0
    80001958:	f78080e7          	jalr	-136(ra) # 800018cc <_Z7badFreev>
}
    8000195c:	00813083          	ld	ra,8(sp)
    80001960:	00013403          	ld	s0,0(sp)
    80001964:	01010113          	addi	sp,sp,16
    80001968:	00008067          	ret

000000008000196c <_Znwm>:

#include "../h/syscall_cpp.h"

//general
void * operator new(size_t size)
{
    8000196c:	ff010113          	addi	sp,sp,-16
    80001970:	00113423          	sd	ra,8(sp)
    80001974:	00813023          	sd	s0,0(sp)
    80001978:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000197c:	00000097          	auipc	ra,0x0
    80001980:	8a0080e7          	jalr	-1888(ra) # 8000121c <mem_alloc>
}
    80001984:	00813083          	ld	ra,8(sp)
    80001988:	00013403          	ld	s0,0(sp)
    8000198c:	01010113          	addi	sp,sp,16
    80001990:	00008067          	ret

0000000080001994 <_ZdlPv>:

void operator delete(void * p)
{
    80001994:	ff010113          	addi	sp,sp,-16
    80001998:	00113423          	sd	ra,8(sp)
    8000199c:	00813023          	sd	s0,0(sp)
    800019a0:	01010413          	addi	s0,sp,16
   mem_free(p);
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	8a8080e7          	jalr	-1880(ra) # 8000124c <mem_free>
}
    800019ac:	00813083          	ld	ra,8(sp)
    800019b0:	00013403          	ld	s0,0(sp)
    800019b4:	01010113          	addi	sp,sp,16
    800019b8:	00008067          	ret

00000000800019bc <_ZN6Thread5startEv>:

//Thread

//todo
//diskusija u os1 proj sheet-u
void Thread::start() {
    800019bc:	ff010113          	addi	sp,sp,-16
    800019c0:	00813423          	sd	s0,8(sp)
    800019c4:	01010413          	addi	s0,sp,16
    //myHandle->start();
}
    800019c8:	00813403          	ld	s0,8(sp)
    800019cc:	01010113          	addi	sp,sp,16
    800019d0:	00008067          	ret

00000000800019d4 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    800019d4:	ff010113          	addi	sp,sp,-16
    800019d8:	00813423          	sd	s0,8(sp)
    800019dc:	01010413          	addi	s0,sp,16
    //PCB::dispatch();
}
    800019e0:	00813403          	ld	s0,8(sp)
    800019e4:	01010113          	addi	sp,sp,16
    800019e8:	00008067          	ret

00000000800019ec <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    800019ec:	ff010113          	addi	sp,sp,-16
    800019f0:	00113423          	sd	ra,8(sp)
    800019f4:	00813023          	sd	s0,0(sp)
    800019f8:	01010413          	addi	s0,sp,16
    PCB::sleep(time);
    800019fc:	00000097          	auipc	ra,0x0
    80001a00:	984080e7          	jalr	-1660(ra) # 80001380 <_ZN3PCB5sleepEm>
}
    80001a04:	00813083          	ld	ra,8(sp)
    80001a08:	00013403          	ld	s0,0(sp)
    80001a0c:	01010113          	addi	sp,sp,16
    80001a10:	00008067          	ret

0000000080001a14 <_ZN5Riscv10initSystemEv>:
#include "../h/PCB.h"
#include "../lib/console.h"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem() {
    80001a14:	ff010113          	addi	sp,sp,-16
    80001a18:	00813423          	sd	s0,8(sp)
    80001a1c:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80001a20:	00004797          	auipc	a5,0x4
    80001a24:	f587b783          	ld	a5,-168(a5) # 80005978 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80001a28:	10579073          	csrw	stvec,a5
    //todo
    //no need for comment, but sync context switch
    //should be tested
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
}
    80001a2c:	00813403          	ld	s0,8(sp)
    80001a30:	01010113          	addi	sp,sp,16
    80001a34:	00008067          	ret

0000000080001a38 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80001a38:	ff010113          	addi	sp,sp,-16
    80001a3c:	00813423          	sd	s0,8(sp)
    80001a40:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001a44:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001a48:	10200073          	sret
}
    80001a4c:	00813403          	ld	s0,8(sp)
    80001a50:	01010113          	addi	sp,sp,16
    80001a54:	00008067          	ret

0000000080001a58 <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    80001a58:	fd010113          	addi	sp,sp,-48
    80001a5c:	02113423          	sd	ra,40(sp)
    80001a60:	02813023          	sd	s0,32(sp)
    80001a64:	00913c23          	sd	s1,24(sp)
    80001a68:	01213823          	sd	s2,16(sp)
    80001a6c:	03010413          	addi	s0,sp,48
    80001a70:	00050493          	mv	s1,a0
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001a74:	100027f3          	csrr	a5,sstatus
    80001a78:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001a7c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80001a80:	00200793          	li	a5,2
    80001a84:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    80001a88:	0004c503          	lbu	a0,0(s1)
    80001a8c:	00050a63          	beqz	a0,80001aa0 <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    80001a90:	00002097          	auipc	ra,0x2
    80001a94:	79c080e7          	jalr	1948(ra) # 8000422c <__putc>
        string++;
    80001a98:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001a9c:	fedff06f          	j	80001a88 <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80001aa0:	0009091b          	sext.w	s2,s2
    80001aa4:	00297913          	andi	s2,s2,2
    80001aa8:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80001aac:	10092073          	csrs	sstatus,s2
}
    80001ab0:	02813083          	ld	ra,40(sp)
    80001ab4:	02013403          	ld	s0,32(sp)
    80001ab8:	01813483          	ld	s1,24(sp)
    80001abc:	01013903          	ld	s2,16(sp)
    80001ac0:	03010113          	addi	sp,sp,48
    80001ac4:	00008067          	ret

0000000080001ac8 <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    80001ac8:	fc010113          	addi	sp,sp,-64
    80001acc:	02113c23          	sd	ra,56(sp)
    80001ad0:	02813823          	sd	s0,48(sp)
    80001ad4:	02913423          	sd	s1,40(sp)
    80001ad8:	03213023          	sd	s2,32(sp)
    80001adc:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001ae0:	100027f3          	csrr	a5,sstatus
    80001ae4:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001ae8:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80001aec:	00200793          	li	a5,2
    80001af0:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80001af4:	0005051b          	sext.w	a0,a0

    i = 0;
    80001af8:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    80001afc:	00a00613          	li	a2,10
    80001b00:	02c5773b          	remuw	a4,a0,a2
    80001b04:	02071693          	slli	a3,a4,0x20
    80001b08:	0206d693          	srli	a3,a3,0x20
    80001b0c:	00003717          	auipc	a4,0x3
    80001b10:	52c70713          	addi	a4,a4,1324 # 80005038 <_ZZN5Riscv12printIntegerEmE6digits>
    80001b14:	00d70733          	add	a4,a4,a3
    80001b18:	00074703          	lbu	a4,0(a4)
    80001b1c:	fe040693          	addi	a3,s0,-32
    80001b20:	009687b3          	add	a5,a3,s1
    80001b24:	0014849b          	addiw	s1,s1,1
    80001b28:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80001b2c:	0005071b          	sext.w	a4,a0
    80001b30:	02c5553b          	divuw	a0,a0,a2
    80001b34:	00900793          	li	a5,9
    80001b38:	fce7e2e3          	bltu	a5,a4,80001afc <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80001b3c:	fff4849b          	addiw	s1,s1,-1
    80001b40:	0004ce63          	bltz	s1,80001b5c <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80001b44:	fe040793          	addi	a5,s0,-32
    80001b48:	009787b3          	add	a5,a5,s1
    80001b4c:	ff07c503          	lbu	a0,-16(a5)
    80001b50:	00002097          	auipc	ra,0x2
    80001b54:	6dc080e7          	jalr	1756(ra) # 8000422c <__putc>
    80001b58:	fe5ff06f          	j	80001b3c <_ZN5Riscv12printIntegerEm+0x74>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80001b5c:	0009091b          	sext.w	s2,s2
    80001b60:	00297913          	andi	s2,s2,2
    80001b64:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80001b68:	10092073          	csrs	sstatus,s2
}
    80001b6c:	03813083          	ld	ra,56(sp)
    80001b70:	03013403          	ld	s0,48(sp)
    80001b74:	02813483          	ld	s1,40(sp)
    80001b78:	02013903          	ld	s2,32(sp)
    80001b7c:	04010113          	addi	sp,sp,64
    80001b80:	00008067          	ret

0000000080001b84 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80001b84:	f9010113          	addi	sp,sp,-112
    80001b88:	06113423          	sd	ra,104(sp)
    80001b8c:	06813023          	sd	s0,96(sp)
    80001b90:	04913c23          	sd	s1,88(sp)
    80001b94:	05213823          	sd	s2,80(sp)
    80001b98:	05313423          	sd	s3,72(sp)
    80001b9c:	05413023          	sd	s4,64(sp)
    80001ba0:	03513c23          	sd	s5,56(sp)
    80001ba4:	07010413          	addi	s0,sp,112
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80001ba8:	142027f3          	csrr	a5,scause
    80001bac:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    80001bb0:	f9843703          	ld	a4,-104(s0)

    uint64 scause = Riscv::r_scause();
    switch(scause) {
    80001bb4:	00900793          	li	a5,9
    80001bb8:	0af70063          	beq	a4,a5,80001c58 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
    80001bbc:	fff00793          	li	a5,-1
    80001bc0:	03f79793          	slli	a5,a5,0x3f
    80001bc4:	00878793          	addi	a5,a5,8
    80001bc8:	02f71a63          	bne	a4,a5,80001bfc <_ZN5Riscv20handleSupervisorTrapEv+0x78>

        case timerInterrupt:

            PCB::timeSliceCounter++;
    80001bcc:	00004717          	auipc	a4,0x4
    80001bd0:	db473703          	ld	a4,-588(a4) # 80005980 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001bd4:	00073783          	ld	a5,0(a4)
    80001bd8:	00178793          	addi	a5,a5,1
    80001bdc:	00f73023          	sd	a5,0(a4)
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice()) {
    80001be0:	00004717          	auipc	a4,0x4
    80001be4:	db073703          	ld	a4,-592(a4) # 80005990 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001be8:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() { return timeSlice;}
    80001bec:	00073703          	ld	a4,0(a4)
    80001bf0:	02e7f863          	bgeu	a5,a4,80001c20 <_ZN5Riscv20handleSupervisorTrapEv+0x9c>
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80001bf4:	00200793          	li	a5,2
    80001bf8:	1447b073          	csrc	sip,a5

            break;
    }

    //console_handler();
}
    80001bfc:	06813083          	ld	ra,104(sp)
    80001c00:	06013403          	ld	s0,96(sp)
    80001c04:	05813483          	ld	s1,88(sp)
    80001c08:	05013903          	ld	s2,80(sp)
    80001c0c:	04813983          	ld	s3,72(sp)
    80001c10:	04013a03          	ld	s4,64(sp)
    80001c14:	03813a83          	ld	s5,56(sp)
    80001c18:	07010113          	addi	sp,sp,112
    80001c1c:	00008067          	ret
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001c20:	141027f3          	csrr	a5,sepc
    80001c24:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80001c28:	fa843483          	ld	s1,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001c2c:	100027f3          	csrr	a5,sstatus
    80001c30:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80001c34:	fa043903          	ld	s2,-96(s0)
                PCB::timeSliceCounter = 0;
    80001c38:	00004797          	auipc	a5,0x4
    80001c3c:	d487b783          	ld	a5,-696(a5) # 80005980 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001c40:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80001c44:	fffff097          	auipc	ra,0xfffff
    80001c48:	77c080e7          	jalr	1916(ra) # 800013c0 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80001c4c:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80001c50:	14149073          	csrw	sepc,s1
}
    80001c54:	fa1ff06f          	j	80001bf4 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80001c58:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001c5c:	14102773          	csrr	a4,sepc
    80001c60:	fae43823          	sd	a4,-80(s0)
    return sepc;
    80001c64:	fb043483          	ld	s1,-80(s0)
            sepc+=4;
    80001c68:	00448493          	addi	s1,s1,4
            if(operation == MemoryAllocator::MEM_ALLOC) {
    80001c6c:	00100713          	li	a4,1
    80001c70:	02e78263          	beq	a5,a4,80001c94 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            else if(operation == MemoryAllocator::MEM_FREE) {
    80001c74:	00200713          	li	a4,2
    80001c78:	02e78a63          	beq	a5,a4,80001cac <_ZN5Riscv20handleSupervisorTrapEv+0x128>
            else if(operation == PCB::THREAD_CREATE)
    80001c7c:	01100713          	li	a4,17
    80001c80:	04e78063          	beq	a5,a4,80001cc0 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
            else if(operation == PCB::THREAD_DISPATCH)
    80001c84:	01300713          	li	a4,19
    80001c88:	08e78063          	beq	a5,a4,80001d08 <_ZN5Riscv20handleSupervisorTrapEv+0x184>
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80001c8c:	14149073          	csrw	sepc,s1
}
    80001c90:	f6dff06f          	j	80001bfc <_ZN5Riscv20handleSupervisorTrapEv+0x78>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80001c94:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    80001c98:	00651513          	slli	a0,a0,0x6
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	478080e7          	jalr	1144(ra) # 80002114 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80001ca4:	00050513          	mv	a0,a0
    80001ca8:	fe5ff06f          	j	80001c8c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    80001cac:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	48c080e7          	jalr	1164(ra) # 8000213c <_Z5kfreePv>
                __asm__ volatile("mv a1,%0" : :"r"(retval));
    80001cb8:	00050593          	mv	a1,a0
    80001cbc:	fd1ff06f          	j	80001c8c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                __asm__ volatile("mv %0, a1" : "=r"(start_routine));
    80001cc0:	00058993          	mv	s3,a1
                __asm__ volatile("mv %0, a2" : "=r"(args));
    80001cc4:	00060a13          	mv	s4,a2
                __asm__ volatile("mv %0, a3" : "=r"(stack_space));
    80001cc8:	00068a93          	mv	s5,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)stack_space);
    80001ccc:	04000513          	li	a0,64
    80001cd0:	fffff097          	auipc	ra,0xfffff
    80001cd4:	768080e7          	jalr	1896(ra) # 80001438 <_ZN3PCBnwEm>
    80001cd8:	00050913          	mv	s2,a0
    80001cdc:	000a8693          	mv	a3,s5
    80001ce0:	000a0613          	mv	a2,s4
    80001ce4:	00098593          	mv	a1,s3
    80001ce8:	fffff097          	auipc	ra,0xfffff
    80001cec:	65c080e7          	jalr	1628(ra) # 80001344 <_ZN3PCBC1EPFvPvES0_S0_>
                if(newPCB == 0)
    80001cf0:	00090863          	beqz	s2,80001d00 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    __asm__ volatile("li a0, 0");
    80001cf4:	00000513          	li	a0,0
                    __asm__ volatile("mv a1, %0" : :"r"((uint64)newPCB));
    80001cf8:	00090593          	mv	a1,s2
    80001cfc:	f91ff06f          	j	80001c8c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80001d00:	fff00513          	li	a0,-1
    80001d04:	f89ff06f          	j	80001c8c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001d08:	100027f3          	csrr	a5,sstatus
    80001d0c:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80001d10:	fb843903          	ld	s2,-72(s0)
                PCB::timeSliceCounter = 0;
    80001d14:	00004797          	auipc	a5,0x4
    80001d18:	c6c7b783          	ld	a5,-916(a5) # 80005980 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001d1c:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80001d20:	fffff097          	auipc	ra,0xfffff
    80001d24:	6a0080e7          	jalr	1696(ra) # 800013c0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80001d28:	10091073          	csrw	sstatus,s2
}
    80001d2c:	f61ff06f          	j	80001c8c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
    80001d30:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)stack_space);
    80001d34:	00090513          	mv	a0,s2
    80001d38:	fffff097          	auipc	ra,0xfffff
    80001d3c:	728080e7          	jalr	1832(ra) # 80001460 <_ZN3PCBdlEPv>
    80001d40:	00048513          	mv	a0,s1
    80001d44:	00005097          	auipc	ra,0x5
    80001d48:	da4080e7          	jalr	-604(ra) # 80006ae8 <_Unwind_Resume>

0000000080001d4c <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80001d4c:	ff010113          	addi	sp,sp,-16
    80001d50:	00813423          	sd	s0,8(sp)
    80001d54:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80001d58:	00004717          	auipc	a4,0x4
    80001d5c:	cb072703          	lw	a4,-848(a4) # 80005a08 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80001d60:	00100793          	li	a5,1
    80001d64:	04f70263          	beq	a4,a5,80001da8 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80001d68:	00004797          	auipc	a5,0x4
    80001d6c:	ca078793          	addi	a5,a5,-864 # 80005a08 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80001d70:	00100713          	li	a4,1
    80001d74:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80001d78:	0007b423          	sd	zero,8(a5)
    headFree = (FreeFragment*)HEAP_START_ADDR;
    80001d7c:	00004717          	auipc	a4,0x4
    80001d80:	bf473703          	ld	a4,-1036(a4) # 80005970 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001d84:	00073703          	ld	a4,0(a4)
    80001d88:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80001d8c:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1);
    80001d90:	00004797          	auipc	a5,0x4
    80001d94:	c087b783          	ld	a5,-1016(a5) # 80005998 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d98:	0007b783          	ld	a5,0(a5)
    80001d9c:	40e787b3          	sub	a5,a5,a4
    80001da0:	00178793          	addi	a5,a5,1
    80001da4:	00f73023          	sd	a5,0(a4)
}
    80001da8:	00813403          	ld	s0,8(sp)
    80001dac:	01010113          	addi	sp,sp,16
    80001db0:	00008067          	ret

0000000080001db4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void* addr, size_t size) {
    80001db4:	fe010113          	addi	sp,sp,-32
    80001db8:	00113c23          	sd	ra,24(sp)
    80001dbc:	00813823          	sd	s0,16(sp)
    80001dc0:	00913423          	sd	s1,8(sp)
    80001dc4:	01213023          	sd	s2,0(sp)
    80001dc8:	02010413          	addi	s0,sp,32
    80001dcc:	00050493          	mv	s1,a0
    80001dd0:	00058913          	mv	s2,a1

    initMemory();
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	f78080e7          	jalr	-136(ra) # 80001d4c <_ZN15MemoryAllocator10initMemoryEv>
    AllocatedFragment* prev = 0;
    AllocatedFragment* after =  headAllocated;
    80001ddc:	00004797          	auipc	a5,0x4
    80001de0:	c347b783          	ld	a5,-972(a5) # 80005a10 <_ZN15MemoryAllocator13headAllocatedE>
    AllocatedFragment* prev = 0;
    80001de4:	00000713          	li	a4,0
    while(after != 0) {
    80001de8:	00078a63          	beqz	a5,80001dfc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x48>
        if((void*)after > addr)
    80001dec:	00f4e863          	bltu	s1,a5,80001dfc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x48>
            break;

        prev = after;
    80001df0:	00078713          	mv	a4,a5
        after = after->next;
    80001df4:	0087b783          	ld	a5,8(a5)
    while(after != 0) {
    80001df8:	ff1ff06f          	j	80001de8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x34>
    }

    AllocatedFragment* newAllocated = (AllocatedFragment*)addr;
    newAllocated->next = 0;
    80001dfc:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80001e00:	0124b023          	sd	s2,0(s1)
    if(after == 0) {
    80001e04:	02078463          	beqz	a5,80001e2c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x78>
            headAllocated = newAllocated;
        else
            prev->next = newAllocated;
    }
    else {
        if(prev == 0) {
    80001e08:	02070e63          	beqz	a4,80001e44 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x90>
            newAllocated->next = headAllocated;
            headAllocated = newAllocated;
        }
        else {
            newAllocated->next = after;
    80001e0c:	00f4b423          	sd	a5,8(s1)
            prev->next = newAllocated;
    80001e10:	00973423          	sd	s1,8(a4)
        }
    }
}
    80001e14:	01813083          	ld	ra,24(sp)
    80001e18:	01013403          	ld	s0,16(sp)
    80001e1c:	00813483          	ld	s1,8(sp)
    80001e20:	00013903          	ld	s2,0(sp)
    80001e24:	02010113          	addi	sp,sp,32
    80001e28:	00008067          	ret
        if(prev == 0)
    80001e2c:	00070663          	beqz	a4,80001e38 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x84>
            prev->next = newAllocated;
    80001e30:	00973423          	sd	s1,8(a4)
    80001e34:	fe1ff06f          	j	80001e14 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>
            headAllocated = newAllocated;
    80001e38:	00004797          	auipc	a5,0x4
    80001e3c:	bc97bc23          	sd	s1,-1064(a5) # 80005a10 <_ZN15MemoryAllocator13headAllocatedE>
    80001e40:	fd5ff06f          	j	80001e14 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>
            newAllocated->next = headAllocated;
    80001e44:	00004797          	auipc	a5,0x4
    80001e48:	bc478793          	addi	a5,a5,-1084 # 80005a08 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80001e4c:	0087b703          	ld	a4,8(a5)
    80001e50:	00e4b423          	sd	a4,8(s1)
            headAllocated = newAllocated;
    80001e54:	0097b423          	sd	s1,8(a5)
    80001e58:	fbdff06f          	j	80001e14 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>

0000000080001e5c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    80001e5c:	fe010113          	addi	sp,sp,-32
    80001e60:	00113c23          	sd	ra,24(sp)
    80001e64:	00813823          	sd	s0,16(sp)
    80001e68:	00913423          	sd	s1,8(sp)
    80001e6c:	01213023          	sd	s2,0(sp)
    80001e70:	02010413          	addi	s0,sp,32
    80001e74:	00050913          	mv	s2,a0
    initMemory();
    80001e78:	00000097          	auipc	ra,0x0
    80001e7c:	ed4080e7          	jalr	-300(ra) # 80001d4c <_ZN15MemoryAllocator10initMemoryEv>
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    80001e80:	00004497          	auipc	s1,0x4
    80001e84:	b984b483          	ld	s1,-1128(s1) # 80005a18 <_ZN15MemoryAllocator8headFreeE>
    uint64 newSize = size + sizeof(AllocatedFragment);
    80001e88:	01090693          	addi	a3,s2,16
    FreeFragment* prev = 0;
    80001e8c:	00000713          	li	a4,0
    80001e90:	0880006f          	j	80001f18 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
            void* newAddr = ((char*)curr + newSize);
            if(newAddr <= HEAP_END_ADDR) {

                FreeFragment *newFree = (FreeFragment *) newAddr;

                if (prev != 0)
    80001e94:	04070e63          	beqz	a4,80001ef0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    prev->next = newFree;
    80001e98:	00f73423          	sd	a5,8(a4)
                else
                    headFree = newFree;

                newFree->next = curr->next;
    80001e9c:	0084b603          	ld	a2,8(s1)
    80001ea0:	00c7b423          	sd	a2,8(a5)
                newFree->size = curr->size - newSize;
    80001ea4:	0004b603          	ld	a2,0(s1)
    80001ea8:	40d606b3          	sub	a3,a2,a3
    80001eac:	00d7b023          	sd	a3,0(a5)

                if(newFree->size == 0)
    80001eb0:	00069863          	bnez	a3,80001ec0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x64>
                {
                    if(prev != 0)
    80001eb4:	04070463          	beqz	a4,80001efc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa0>
                        prev->next = curr->next;
    80001eb8:	0084b783          	ld	a5,8(s1)
    80001ebc:	00f73423          	sd	a5,8(a4)
                    else
                        headFree = 0;
                }

                insertNewAllocatedFragment(oldAddr, size);
    80001ec0:	00090593          	mv	a1,s2
    80001ec4:	00048513          	mv	a0,s1
    80001ec8:	00000097          	auipc	ra,0x0
    80001ecc:	eec080e7          	jalr	-276(ra) # 80001db4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>



                uint64 oldA = (uint64) ((char*)oldAddr + sizeof(AllocatedFragment));
    80001ed0:	01048493          	addi	s1,s1,16
        prev = curr;
        curr = curr->next;
    }

    return 0;
}
    80001ed4:	00048513          	mv	a0,s1
    80001ed8:	01813083          	ld	ra,24(sp)
    80001edc:	01013403          	ld	s0,16(sp)
    80001ee0:	00813483          	ld	s1,8(sp)
    80001ee4:	00013903          	ld	s2,0(sp)
    80001ee8:	02010113          	addi	sp,sp,32
    80001eec:	00008067          	ret
                    headFree = newFree;
    80001ef0:	00004617          	auipc	a2,0x4
    80001ef4:	b2f63423          	sd	a5,-1240(a2) # 80005a18 <_ZN15MemoryAllocator8headFreeE>
    80001ef8:	fa5ff06f          	j	80001e9c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x40>
                        headFree = 0;
    80001efc:	00004797          	auipc	a5,0x4
    80001f00:	b007be23          	sd	zero,-1252(a5) # 80005a18 <_ZN15MemoryAllocator8headFreeE>
    80001f04:	fbdff06f          	j	80001ec0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x64>
                    headFree = 0;
    80001f08:	00004797          	auipc	a5,0x4
    80001f0c:	b007b823          	sd	zero,-1264(a5) # 80005a18 <_ZN15MemoryAllocator8headFreeE>
        prev = curr;
    80001f10:	00048713          	mv	a4,s1
        curr = curr->next;
    80001f14:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    80001f18:	fa048ee3          	beqz	s1,80001ed4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x78>
        if(curr->size >= newSize) {
    80001f1c:	0004b783          	ld	a5,0(s1)
    80001f20:	fed7e8e3          	bltu	a5,a3,80001f10 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
            void* newAddr = ((char*)curr + newSize);
    80001f24:	00d487b3          	add	a5,s1,a3
            if(newAddr <= HEAP_END_ADDR) {
    80001f28:	00004617          	auipc	a2,0x4
    80001f2c:	a7063603          	ld	a2,-1424(a2) # 80005998 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f30:	00063603          	ld	a2,0(a2)
    80001f34:	f6f670e3          	bgeu	a2,a5,80001e94 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x38>
                if(prev != 0)
    80001f38:	fc0708e3          	beqz	a4,80001f08 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xac>
                    prev->next = 0;
    80001f3c:	00073423          	sd	zero,8(a4)
    80001f40:	fd1ff06f          	j	80001f10 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>

0000000080001f44 <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    80001f44:	ff010113          	addi	sp,sp,-16
    80001f48:	00113423          	sd	ra,8(sp)
    80001f4c:	00813023          	sd	s0,0(sp)
    80001f50:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80001f54:	00000097          	auipc	ra,0x0
    80001f58:	f08080e7          	jalr	-248(ra) # 80001e5c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80001f5c:	00813083          	ld	ra,8(sp)
    80001f60:	00013403          	ld	s0,0(sp)
    80001f64:	01010113          	addi	sp,sp,16
    80001f68:	00008067          	ret

0000000080001f6c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80001f6c:	fe010113          	addi	sp,sp,-32
    80001f70:	00113c23          	sd	ra,24(sp)
    80001f74:	00813823          	sd	s0,16(sp)
    80001f78:	00913423          	sd	s1,8(sp)
    80001f7c:	01213023          	sd	s2,0(sp)
    80001f80:	02010413          	addi	s0,sp,32
    80001f84:	00050493          	mv	s1,a0
    80001f88:	00058913          	mv	s2,a1
    initMemory();
    80001f8c:	00000097          	auipc	ra,0x0
    80001f90:	dc0080e7          	jalr	-576(ra) # 80001d4c <_ZN15MemoryAllocator10initMemoryEv>
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    80001f94:	00004797          	auipc	a5,0x4
    80001f98:	a847b783          	ld	a5,-1404(a5) # 80005a18 <_ZN15MemoryAllocator8headFreeE>
    FreeFragment* newSegment = (FreeFragment*) addr;
    newSegment->size = size;
    80001f9c:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80001fa0:	0004b423          	sd	zero,8(s1)
    FreeFragment* prev = 0;
    80001fa4:	00000713          	li	a4,0
    while(curr != 0)
    80001fa8:	00078c63          	beqz	a5,80001fc0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80001fac:	00f4e863          	bltu	s1,a5,80001fbc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80001fb0:	00078713          	mv	a4,a5
        curr = curr->next;
    80001fb4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80001fb8:	ff1ff06f          	j	80001fa8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80001fbc:	00f4b423          	sd	a5,8(s1)
    }



    if(prev == 0)
    80001fc0:	04070263          	beqz	a4,80002004 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x98>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80001fc4:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size)
    80001fc8:	0084b783          	ld	a5,8(s1)
    80001fcc:	00078863          	beqz	a5,80001fdc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x70>
    80001fd0:	0004b683          	ld	a3,0(s1)
    80001fd4:	00d48633          	add	a2,s1,a3
    80001fd8:	02c78c63          	beq	a5,a2,80002010 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa4>
    {
        newSegment->size += newSegment->next->size;
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size)
    80001fdc:	00070863          	beqz	a4,80001fec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x80>
    80001fe0:	00073783          	ld	a5,0(a4)
    80001fe4:	00f706b3          	add	a3,a4,a5
    80001fe8:	04968063          	beq	a3,s1,80002028 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xbc>
    {
        prev->size+=newSegment->size;
        prev->next = newSegment->next;
    }

}
    80001fec:	01813083          	ld	ra,24(sp)
    80001ff0:	01013403          	ld	s0,16(sp)
    80001ff4:	00813483          	ld	s1,8(sp)
    80001ff8:	00013903          	ld	s2,0(sp)
    80001ffc:	02010113          	addi	sp,sp,32
    80002000:	00008067          	ret
        headFree = newSegment;
    80002004:	00004797          	auipc	a5,0x4
    80002008:	a097ba23          	sd	s1,-1516(a5) # 80005a18 <_ZN15MemoryAllocator8headFreeE>
    8000200c:	fbdff06f          	j	80001fc8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size;
    80002010:	0007b603          	ld	a2,0(a5)
    80002014:	00c686b3          	add	a3,a3,a2
    80002018:	00d4b023          	sd	a3,0(s1)
        newSegment->next = newSegment->next->next;
    8000201c:	0087b783          	ld	a5,8(a5)
    80002020:	00f4b423          	sd	a5,8(s1)
    80002024:	fb9ff06f          	j	80001fdc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x70>
        prev->size+=newSegment->size;
    80002028:	0004b683          	ld	a3,0(s1)
    8000202c:	00d787b3          	add	a5,a5,a3
    80002030:	00f73023          	sd	a5,0(a4)
        prev->next = newSegment->next;
    80002034:	0084b783          	ld	a5,8(s1)
    80002038:	00f73423          	sd	a5,8(a4)
}
    8000203c:	fb1ff06f          	j	80001fec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x80>

0000000080002040 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80002040:	fe010113          	addi	sp,sp,-32
    80002044:	00113c23          	sd	ra,24(sp)
    80002048:	00813823          	sd	s0,16(sp)
    8000204c:	00913423          	sd	s1,8(sp)
    80002050:	01213023          	sd	s2,0(sp)
    80002054:	02010413          	addi	s0,sp,32
    80002058:	00050913          	mv	s2,a0
    initMemory();
    8000205c:	00000097          	auipc	ra,0x0
    80002060:	cf0080e7          	jalr	-784(ra) # 80001d4c <_ZN15MemoryAllocator10initMemoryEv>
    AllocatedFragment* prev = 0;
    AllocatedFragment* curr = headAllocated;
    80002064:	00004497          	auipc	s1,0x4
    80002068:	9ac4b483          	ld	s1,-1620(s1) # 80005a10 <_ZN15MemoryAllocator13headAllocatedE>
    int found = 0;
    8000206c:	00000693          	li	a3,0
    AllocatedFragment* prev = 0;
    80002070:	00000713          	li	a4,0
    80002074:	0300006f          	j	800020a4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
        {
            if(prev != 0) {
                prev->next = curr->next;
            }
            else {
                headAllocated = curr->next;
    80002078:	0084b783          	ld	a5,8(s1)
    8000207c:	00004717          	auipc	a4,0x4
    80002080:	98f73a23          	sd	a5,-1644(a4) # 80005a10 <_ZN15MemoryAllocator13headAllocatedE>
            }

            insertNewFreeSegment((void*)curr, curr->size + sizeof(AllocatedFragment));
    80002084:	0004b583          	ld	a1,0(s1)
    80002088:	01058593          	addi	a1,a1,16
    8000208c:	00048513          	mv	a0,s1
    80002090:	00000097          	auipc	ra,0x0
    80002094:	edc080e7          	jalr	-292(ra) # 80001f6c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>

            found = 1;
    80002098:	00100693          	li	a3,1
        }

        prev = curr;
    8000209c:	00048713          	mv	a4,s1
        curr = curr->next;
    800020a0:	0084b483          	ld	s1,8(s1)
    while(curr != 0 && !found)
    800020a4:	02048063          	beqz	s1,800020c4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
    800020a8:	00069e63          	bnez	a3,800020c4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
        if(addr == (void*)((char*)curr + sizeof(AllocatedFragment)))
    800020ac:	01048793          	addi	a5,s1,16
    800020b0:	ff2796e3          	bne	a5,s2,8000209c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x5c>
            if(prev != 0) {
    800020b4:	fc0702e3          	beqz	a4,80002078 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x38>
                prev->next = curr->next;
    800020b8:	0084b783          	ld	a5,8(s1)
    800020bc:	00f73423          	sd	a5,8(a4)
    800020c0:	fc5ff06f          	j	80002084 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
    }

    if(found)
    800020c4:	02068063          	beqz	a3,800020e4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0xa4>
        return 0;
    800020c8:	00000513          	li	a0,0
    else
        return 1;
}
    800020cc:	01813083          	ld	ra,24(sp)
    800020d0:	01013403          	ld	s0,16(sp)
    800020d4:	00813483          	ld	s1,8(sp)
    800020d8:	00013903          	ld	s2,0(sp)
    800020dc:	02010113          	addi	sp,sp,32
    800020e0:	00008067          	ret
        return 1;
    800020e4:	00100513          	li	a0,1
    800020e8:	fe5ff06f          	j	800020cc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>

00000000800020ec <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    800020ec:	ff010113          	addi	sp,sp,-16
    800020f0:	00113423          	sd	ra,8(sp)
    800020f4:	00813023          	sd	s0,0(sp)
    800020f8:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    800020fc:	00000097          	auipc	ra,0x0
    80002100:	f44080e7          	jalr	-188(ra) # 80002040 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80002104:	00813083          	ld	ra,8(sp)
    80002108:	00013403          	ld	s0,0(sp)
    8000210c:	01010113          	addi	sp,sp,16
    80002110:	00008067          	ret

0000000080002114 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    80002114:	ff010113          	addi	sp,sp,-16
    80002118:	00113423          	sd	ra,8(sp)
    8000211c:	00813023          	sd	s0,0(sp)
    80002120:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80002124:	00000097          	auipc	ra,0x0
    80002128:	e20080e7          	jalr	-480(ra) # 80001f44 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000212c:	00813083          	ld	ra,8(sp)
    80002130:	00013403          	ld	s0,0(sp)
    80002134:	01010113          	addi	sp,sp,16
    80002138:	00008067          	ret

000000008000213c <_Z5kfreePv>:

uint64 kfree(void* p)
{
    8000213c:	ff010113          	addi	sp,sp,-16
    80002140:	00113423          	sd	ra,8(sp)
    80002144:	00813023          	sd	s0,0(sp)
    80002148:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    8000214c:	00000097          	auipc	ra,0x0
    80002150:	fa0080e7          	jalr	-96(ra) # 800020ec <_ZN15MemoryAllocator8mem_freeEPv>
    80002154:	00813083          	ld	ra,8(sp)
    80002158:	00013403          	ld	s0,0(sp)
    8000215c:	01010113          	addi	sp,sp,16
    80002160:	00008067          	ret

0000000080002164 <start>:
    80002164:	ff010113          	addi	sp,sp,-16
    80002168:	00813423          	sd	s0,8(sp)
    8000216c:	01010413          	addi	s0,sp,16
    80002170:	300027f3          	csrr	a5,mstatus
    80002174:	ffffe737          	lui	a4,0xffffe
    80002178:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7b7f>
    8000217c:	00e7f7b3          	and	a5,a5,a4
    80002180:	00001737          	lui	a4,0x1
    80002184:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002188:	00e7e7b3          	or	a5,a5,a4
    8000218c:	30079073          	csrw	mstatus,a5
    80002190:	00000797          	auipc	a5,0x0
    80002194:	16078793          	addi	a5,a5,352 # 800022f0 <system_main>
    80002198:	34179073          	csrw	mepc,a5
    8000219c:	00000793          	li	a5,0
    800021a0:	18079073          	csrw	satp,a5
    800021a4:	000107b7          	lui	a5,0x10
    800021a8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800021ac:	30279073          	csrw	medeleg,a5
    800021b0:	30379073          	csrw	mideleg,a5
    800021b4:	104027f3          	csrr	a5,sie
    800021b8:	2227e793          	ori	a5,a5,546
    800021bc:	10479073          	csrw	sie,a5
    800021c0:	fff00793          	li	a5,-1
    800021c4:	00a7d793          	srli	a5,a5,0xa
    800021c8:	3b079073          	csrw	pmpaddr0,a5
    800021cc:	00f00793          	li	a5,15
    800021d0:	3a079073          	csrw	pmpcfg0,a5
    800021d4:	f14027f3          	csrr	a5,mhartid
    800021d8:	0200c737          	lui	a4,0x200c
    800021dc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800021e0:	0007869b          	sext.w	a3,a5
    800021e4:	00269713          	slli	a4,a3,0x2
    800021e8:	000f4637          	lui	a2,0xf4
    800021ec:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800021f0:	00d70733          	add	a4,a4,a3
    800021f4:	0037979b          	slliw	a5,a5,0x3
    800021f8:	020046b7          	lui	a3,0x2004
    800021fc:	00d787b3          	add	a5,a5,a3
    80002200:	00c585b3          	add	a1,a1,a2
    80002204:	00371693          	slli	a3,a4,0x3
    80002208:	00004717          	auipc	a4,0x4
    8000220c:	81870713          	addi	a4,a4,-2024 # 80005a20 <timer_scratch>
    80002210:	00b7b023          	sd	a1,0(a5)
    80002214:	00d70733          	add	a4,a4,a3
    80002218:	00f73c23          	sd	a5,24(a4)
    8000221c:	02c73023          	sd	a2,32(a4)
    80002220:	34071073          	csrw	mscratch,a4
    80002224:	00000797          	auipc	a5,0x0
    80002228:	6ec78793          	addi	a5,a5,1772 # 80002910 <timervec>
    8000222c:	30579073          	csrw	mtvec,a5
    80002230:	300027f3          	csrr	a5,mstatus
    80002234:	0087e793          	ori	a5,a5,8
    80002238:	30079073          	csrw	mstatus,a5
    8000223c:	304027f3          	csrr	a5,mie
    80002240:	0807e793          	ori	a5,a5,128
    80002244:	30479073          	csrw	mie,a5
    80002248:	f14027f3          	csrr	a5,mhartid
    8000224c:	0007879b          	sext.w	a5,a5
    80002250:	00078213          	mv	tp,a5
    80002254:	30200073          	mret
    80002258:	00813403          	ld	s0,8(sp)
    8000225c:	01010113          	addi	sp,sp,16
    80002260:	00008067          	ret

0000000080002264 <timerinit>:
    80002264:	ff010113          	addi	sp,sp,-16
    80002268:	00813423          	sd	s0,8(sp)
    8000226c:	01010413          	addi	s0,sp,16
    80002270:	f14027f3          	csrr	a5,mhartid
    80002274:	0200c737          	lui	a4,0x200c
    80002278:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000227c:	0007869b          	sext.w	a3,a5
    80002280:	00269713          	slli	a4,a3,0x2
    80002284:	000f4637          	lui	a2,0xf4
    80002288:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000228c:	00d70733          	add	a4,a4,a3
    80002290:	0037979b          	slliw	a5,a5,0x3
    80002294:	020046b7          	lui	a3,0x2004
    80002298:	00d787b3          	add	a5,a5,a3
    8000229c:	00c585b3          	add	a1,a1,a2
    800022a0:	00371693          	slli	a3,a4,0x3
    800022a4:	00003717          	auipc	a4,0x3
    800022a8:	77c70713          	addi	a4,a4,1916 # 80005a20 <timer_scratch>
    800022ac:	00b7b023          	sd	a1,0(a5)
    800022b0:	00d70733          	add	a4,a4,a3
    800022b4:	00f73c23          	sd	a5,24(a4)
    800022b8:	02c73023          	sd	a2,32(a4)
    800022bc:	34071073          	csrw	mscratch,a4
    800022c0:	00000797          	auipc	a5,0x0
    800022c4:	65078793          	addi	a5,a5,1616 # 80002910 <timervec>
    800022c8:	30579073          	csrw	mtvec,a5
    800022cc:	300027f3          	csrr	a5,mstatus
    800022d0:	0087e793          	ori	a5,a5,8
    800022d4:	30079073          	csrw	mstatus,a5
    800022d8:	304027f3          	csrr	a5,mie
    800022dc:	0807e793          	ori	a5,a5,128
    800022e0:	30479073          	csrw	mie,a5
    800022e4:	00813403          	ld	s0,8(sp)
    800022e8:	01010113          	addi	sp,sp,16
    800022ec:	00008067          	ret

00000000800022f0 <system_main>:
    800022f0:	fe010113          	addi	sp,sp,-32
    800022f4:	00813823          	sd	s0,16(sp)
    800022f8:	00913423          	sd	s1,8(sp)
    800022fc:	00113c23          	sd	ra,24(sp)
    80002300:	02010413          	addi	s0,sp,32
    80002304:	00000097          	auipc	ra,0x0
    80002308:	0c4080e7          	jalr	196(ra) # 800023c8 <cpuid>
    8000230c:	00003497          	auipc	s1,0x3
    80002310:	6b448493          	addi	s1,s1,1716 # 800059c0 <started>
    80002314:	02050263          	beqz	a0,80002338 <system_main+0x48>
    80002318:	0004a783          	lw	a5,0(s1)
    8000231c:	0007879b          	sext.w	a5,a5
    80002320:	fe078ce3          	beqz	a5,80002318 <system_main+0x28>
    80002324:	0ff0000f          	fence
    80002328:	00003517          	auipc	a0,0x3
    8000232c:	d5050513          	addi	a0,a0,-688 # 80005078 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80002330:	00001097          	auipc	ra,0x1
    80002334:	a7c080e7          	jalr	-1412(ra) # 80002dac <panic>
    80002338:	00001097          	auipc	ra,0x1
    8000233c:	9d0080e7          	jalr	-1584(ra) # 80002d08 <consoleinit>
    80002340:	00001097          	auipc	ra,0x1
    80002344:	15c080e7          	jalr	348(ra) # 8000349c <printfinit>
    80002348:	00003517          	auipc	a0,0x3
    8000234c:	e1050513          	addi	a0,a0,-496 # 80005158 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80002350:	00001097          	auipc	ra,0x1
    80002354:	ab8080e7          	jalr	-1352(ra) # 80002e08 <__printf>
    80002358:	00003517          	auipc	a0,0x3
    8000235c:	cf050513          	addi	a0,a0,-784 # 80005048 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80002360:	00001097          	auipc	ra,0x1
    80002364:	aa8080e7          	jalr	-1368(ra) # 80002e08 <__printf>
    80002368:	00003517          	auipc	a0,0x3
    8000236c:	df050513          	addi	a0,a0,-528 # 80005158 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80002370:	00001097          	auipc	ra,0x1
    80002374:	a98080e7          	jalr	-1384(ra) # 80002e08 <__printf>
    80002378:	00001097          	auipc	ra,0x1
    8000237c:	4b0080e7          	jalr	1200(ra) # 80003828 <kinit>
    80002380:	00000097          	auipc	ra,0x0
    80002384:	148080e7          	jalr	328(ra) # 800024c8 <trapinit>
    80002388:	00000097          	auipc	ra,0x0
    8000238c:	16c080e7          	jalr	364(ra) # 800024f4 <trapinithart>
    80002390:	00000097          	auipc	ra,0x0
    80002394:	5c0080e7          	jalr	1472(ra) # 80002950 <plicinit>
    80002398:	00000097          	auipc	ra,0x0
    8000239c:	5e0080e7          	jalr	1504(ra) # 80002978 <plicinithart>
    800023a0:	00000097          	auipc	ra,0x0
    800023a4:	078080e7          	jalr	120(ra) # 80002418 <userinit>
    800023a8:	0ff0000f          	fence
    800023ac:	00100793          	li	a5,1
    800023b0:	00003517          	auipc	a0,0x3
    800023b4:	cb050513          	addi	a0,a0,-848 # 80005060 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    800023b8:	00f4a023          	sw	a5,0(s1)
    800023bc:	00001097          	auipc	ra,0x1
    800023c0:	a4c080e7          	jalr	-1460(ra) # 80002e08 <__printf>
    800023c4:	0000006f          	j	800023c4 <system_main+0xd4>

00000000800023c8 <cpuid>:
    800023c8:	ff010113          	addi	sp,sp,-16
    800023cc:	00813423          	sd	s0,8(sp)
    800023d0:	01010413          	addi	s0,sp,16
    800023d4:	00020513          	mv	a0,tp
    800023d8:	00813403          	ld	s0,8(sp)
    800023dc:	0005051b          	sext.w	a0,a0
    800023e0:	01010113          	addi	sp,sp,16
    800023e4:	00008067          	ret

00000000800023e8 <mycpu>:
    800023e8:	ff010113          	addi	sp,sp,-16
    800023ec:	00813423          	sd	s0,8(sp)
    800023f0:	01010413          	addi	s0,sp,16
    800023f4:	00020793          	mv	a5,tp
    800023f8:	00813403          	ld	s0,8(sp)
    800023fc:	0007879b          	sext.w	a5,a5
    80002400:	00779793          	slli	a5,a5,0x7
    80002404:	00004517          	auipc	a0,0x4
    80002408:	64c50513          	addi	a0,a0,1612 # 80006a50 <cpus>
    8000240c:	00f50533          	add	a0,a0,a5
    80002410:	01010113          	addi	sp,sp,16
    80002414:	00008067          	ret

0000000080002418 <userinit>:
    80002418:	ff010113          	addi	sp,sp,-16
    8000241c:	00813423          	sd	s0,8(sp)
    80002420:	01010413          	addi	s0,sp,16
    80002424:	00813403          	ld	s0,8(sp)
    80002428:	01010113          	addi	sp,sp,16
    8000242c:	fffff317          	auipc	t1,0xfffff
    80002430:	23430067          	jr	564(t1) # 80001660 <main>

0000000080002434 <either_copyout>:
    80002434:	ff010113          	addi	sp,sp,-16
    80002438:	00813023          	sd	s0,0(sp)
    8000243c:	00113423          	sd	ra,8(sp)
    80002440:	01010413          	addi	s0,sp,16
    80002444:	02051663          	bnez	a0,80002470 <either_copyout+0x3c>
    80002448:	00058513          	mv	a0,a1
    8000244c:	00060593          	mv	a1,a2
    80002450:	0006861b          	sext.w	a2,a3
    80002454:	00002097          	auipc	ra,0x2
    80002458:	c60080e7          	jalr	-928(ra) # 800040b4 <__memmove>
    8000245c:	00813083          	ld	ra,8(sp)
    80002460:	00013403          	ld	s0,0(sp)
    80002464:	00000513          	li	a0,0
    80002468:	01010113          	addi	sp,sp,16
    8000246c:	00008067          	ret
    80002470:	00003517          	auipc	a0,0x3
    80002474:	c3050513          	addi	a0,a0,-976 # 800050a0 <_ZZN5Riscv12printIntegerEmE6digits+0x68>
    80002478:	00001097          	auipc	ra,0x1
    8000247c:	934080e7          	jalr	-1740(ra) # 80002dac <panic>

0000000080002480 <either_copyin>:
    80002480:	ff010113          	addi	sp,sp,-16
    80002484:	00813023          	sd	s0,0(sp)
    80002488:	00113423          	sd	ra,8(sp)
    8000248c:	01010413          	addi	s0,sp,16
    80002490:	02059463          	bnez	a1,800024b8 <either_copyin+0x38>
    80002494:	00060593          	mv	a1,a2
    80002498:	0006861b          	sext.w	a2,a3
    8000249c:	00002097          	auipc	ra,0x2
    800024a0:	c18080e7          	jalr	-1000(ra) # 800040b4 <__memmove>
    800024a4:	00813083          	ld	ra,8(sp)
    800024a8:	00013403          	ld	s0,0(sp)
    800024ac:	00000513          	li	a0,0
    800024b0:	01010113          	addi	sp,sp,16
    800024b4:	00008067          	ret
    800024b8:	00003517          	auipc	a0,0x3
    800024bc:	c1050513          	addi	a0,a0,-1008 # 800050c8 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    800024c0:	00001097          	auipc	ra,0x1
    800024c4:	8ec080e7          	jalr	-1812(ra) # 80002dac <panic>

00000000800024c8 <trapinit>:
    800024c8:	ff010113          	addi	sp,sp,-16
    800024cc:	00813423          	sd	s0,8(sp)
    800024d0:	01010413          	addi	s0,sp,16
    800024d4:	00813403          	ld	s0,8(sp)
    800024d8:	00003597          	auipc	a1,0x3
    800024dc:	c1858593          	addi	a1,a1,-1000 # 800050f0 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    800024e0:	00004517          	auipc	a0,0x4
    800024e4:	5f050513          	addi	a0,a0,1520 # 80006ad0 <tickslock>
    800024e8:	01010113          	addi	sp,sp,16
    800024ec:	00001317          	auipc	t1,0x1
    800024f0:	5cc30067          	jr	1484(t1) # 80003ab8 <initlock>

00000000800024f4 <trapinithart>:
    800024f4:	ff010113          	addi	sp,sp,-16
    800024f8:	00813423          	sd	s0,8(sp)
    800024fc:	01010413          	addi	s0,sp,16
    80002500:	00000797          	auipc	a5,0x0
    80002504:	30078793          	addi	a5,a5,768 # 80002800 <kernelvec>
    80002508:	10579073          	csrw	stvec,a5
    8000250c:	00813403          	ld	s0,8(sp)
    80002510:	01010113          	addi	sp,sp,16
    80002514:	00008067          	ret

0000000080002518 <usertrap>:
    80002518:	ff010113          	addi	sp,sp,-16
    8000251c:	00813423          	sd	s0,8(sp)
    80002520:	01010413          	addi	s0,sp,16
    80002524:	00813403          	ld	s0,8(sp)
    80002528:	01010113          	addi	sp,sp,16
    8000252c:	00008067          	ret

0000000080002530 <usertrapret>:
    80002530:	ff010113          	addi	sp,sp,-16
    80002534:	00813423          	sd	s0,8(sp)
    80002538:	01010413          	addi	s0,sp,16
    8000253c:	00813403          	ld	s0,8(sp)
    80002540:	01010113          	addi	sp,sp,16
    80002544:	00008067          	ret

0000000080002548 <kerneltrap>:
    80002548:	fe010113          	addi	sp,sp,-32
    8000254c:	00813823          	sd	s0,16(sp)
    80002550:	00113c23          	sd	ra,24(sp)
    80002554:	00913423          	sd	s1,8(sp)
    80002558:	02010413          	addi	s0,sp,32
    8000255c:	142025f3          	csrr	a1,scause
    80002560:	100027f3          	csrr	a5,sstatus
    80002564:	0027f793          	andi	a5,a5,2
    80002568:	10079c63          	bnez	a5,80002680 <kerneltrap+0x138>
    8000256c:	142027f3          	csrr	a5,scause
    80002570:	0207ce63          	bltz	a5,800025ac <kerneltrap+0x64>
    80002574:	00003517          	auipc	a0,0x3
    80002578:	bc450513          	addi	a0,a0,-1084 # 80005138 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    8000257c:	00001097          	auipc	ra,0x1
    80002580:	88c080e7          	jalr	-1908(ra) # 80002e08 <__printf>
    80002584:	141025f3          	csrr	a1,sepc
    80002588:	14302673          	csrr	a2,stval
    8000258c:	00003517          	auipc	a0,0x3
    80002590:	bbc50513          	addi	a0,a0,-1092 # 80005148 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80002594:	00001097          	auipc	ra,0x1
    80002598:	874080e7          	jalr	-1932(ra) # 80002e08 <__printf>
    8000259c:	00003517          	auipc	a0,0x3
    800025a0:	bc450513          	addi	a0,a0,-1084 # 80005160 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    800025a4:	00001097          	auipc	ra,0x1
    800025a8:	808080e7          	jalr	-2040(ra) # 80002dac <panic>
    800025ac:	0ff7f713          	andi	a4,a5,255
    800025b0:	00900693          	li	a3,9
    800025b4:	04d70063          	beq	a4,a3,800025f4 <kerneltrap+0xac>
    800025b8:	fff00713          	li	a4,-1
    800025bc:	03f71713          	slli	a4,a4,0x3f
    800025c0:	00170713          	addi	a4,a4,1
    800025c4:	fae798e3          	bne	a5,a4,80002574 <kerneltrap+0x2c>
    800025c8:	00000097          	auipc	ra,0x0
    800025cc:	e00080e7          	jalr	-512(ra) # 800023c8 <cpuid>
    800025d0:	06050663          	beqz	a0,8000263c <kerneltrap+0xf4>
    800025d4:	144027f3          	csrr	a5,sip
    800025d8:	ffd7f793          	andi	a5,a5,-3
    800025dc:	14479073          	csrw	sip,a5
    800025e0:	01813083          	ld	ra,24(sp)
    800025e4:	01013403          	ld	s0,16(sp)
    800025e8:	00813483          	ld	s1,8(sp)
    800025ec:	02010113          	addi	sp,sp,32
    800025f0:	00008067          	ret
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	3d0080e7          	jalr	976(ra) # 800029c4 <plic_claim>
    800025fc:	00a00793          	li	a5,10
    80002600:	00050493          	mv	s1,a0
    80002604:	06f50863          	beq	a0,a5,80002674 <kerneltrap+0x12c>
    80002608:	fc050ce3          	beqz	a0,800025e0 <kerneltrap+0x98>
    8000260c:	00050593          	mv	a1,a0
    80002610:	00003517          	auipc	a0,0x3
    80002614:	b0850513          	addi	a0,a0,-1272 # 80005118 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80002618:	00000097          	auipc	ra,0x0
    8000261c:	7f0080e7          	jalr	2032(ra) # 80002e08 <__printf>
    80002620:	01013403          	ld	s0,16(sp)
    80002624:	01813083          	ld	ra,24(sp)
    80002628:	00048513          	mv	a0,s1
    8000262c:	00813483          	ld	s1,8(sp)
    80002630:	02010113          	addi	sp,sp,32
    80002634:	00000317          	auipc	t1,0x0
    80002638:	3c830067          	jr	968(t1) # 800029fc <plic_complete>
    8000263c:	00004517          	auipc	a0,0x4
    80002640:	49450513          	addi	a0,a0,1172 # 80006ad0 <tickslock>
    80002644:	00001097          	auipc	ra,0x1
    80002648:	498080e7          	jalr	1176(ra) # 80003adc <acquire>
    8000264c:	00003717          	auipc	a4,0x3
    80002650:	37870713          	addi	a4,a4,888 # 800059c4 <ticks>
    80002654:	00072783          	lw	a5,0(a4)
    80002658:	00004517          	auipc	a0,0x4
    8000265c:	47850513          	addi	a0,a0,1144 # 80006ad0 <tickslock>
    80002660:	0017879b          	addiw	a5,a5,1
    80002664:	00f72023          	sw	a5,0(a4)
    80002668:	00001097          	auipc	ra,0x1
    8000266c:	540080e7          	jalr	1344(ra) # 80003ba8 <release>
    80002670:	f65ff06f          	j	800025d4 <kerneltrap+0x8c>
    80002674:	00001097          	auipc	ra,0x1
    80002678:	09c080e7          	jalr	156(ra) # 80003710 <uartintr>
    8000267c:	fa5ff06f          	j	80002620 <kerneltrap+0xd8>
    80002680:	00003517          	auipc	a0,0x3
    80002684:	a7850513          	addi	a0,a0,-1416 # 800050f8 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	724080e7          	jalr	1828(ra) # 80002dac <panic>

0000000080002690 <clockintr>:
    80002690:	fe010113          	addi	sp,sp,-32
    80002694:	00813823          	sd	s0,16(sp)
    80002698:	00913423          	sd	s1,8(sp)
    8000269c:	00113c23          	sd	ra,24(sp)
    800026a0:	02010413          	addi	s0,sp,32
    800026a4:	00004497          	auipc	s1,0x4
    800026a8:	42c48493          	addi	s1,s1,1068 # 80006ad0 <tickslock>
    800026ac:	00048513          	mv	a0,s1
    800026b0:	00001097          	auipc	ra,0x1
    800026b4:	42c080e7          	jalr	1068(ra) # 80003adc <acquire>
    800026b8:	00003717          	auipc	a4,0x3
    800026bc:	30c70713          	addi	a4,a4,780 # 800059c4 <ticks>
    800026c0:	00072783          	lw	a5,0(a4)
    800026c4:	01013403          	ld	s0,16(sp)
    800026c8:	01813083          	ld	ra,24(sp)
    800026cc:	00048513          	mv	a0,s1
    800026d0:	0017879b          	addiw	a5,a5,1
    800026d4:	00813483          	ld	s1,8(sp)
    800026d8:	00f72023          	sw	a5,0(a4)
    800026dc:	02010113          	addi	sp,sp,32
    800026e0:	00001317          	auipc	t1,0x1
    800026e4:	4c830067          	jr	1224(t1) # 80003ba8 <release>

00000000800026e8 <devintr>:
    800026e8:	142027f3          	csrr	a5,scause
    800026ec:	00000513          	li	a0,0
    800026f0:	0007c463          	bltz	a5,800026f8 <devintr+0x10>
    800026f4:	00008067          	ret
    800026f8:	fe010113          	addi	sp,sp,-32
    800026fc:	00813823          	sd	s0,16(sp)
    80002700:	00113c23          	sd	ra,24(sp)
    80002704:	00913423          	sd	s1,8(sp)
    80002708:	02010413          	addi	s0,sp,32
    8000270c:	0ff7f713          	andi	a4,a5,255
    80002710:	00900693          	li	a3,9
    80002714:	04d70c63          	beq	a4,a3,8000276c <devintr+0x84>
    80002718:	fff00713          	li	a4,-1
    8000271c:	03f71713          	slli	a4,a4,0x3f
    80002720:	00170713          	addi	a4,a4,1
    80002724:	00e78c63          	beq	a5,a4,8000273c <devintr+0x54>
    80002728:	01813083          	ld	ra,24(sp)
    8000272c:	01013403          	ld	s0,16(sp)
    80002730:	00813483          	ld	s1,8(sp)
    80002734:	02010113          	addi	sp,sp,32
    80002738:	00008067          	ret
    8000273c:	00000097          	auipc	ra,0x0
    80002740:	c8c080e7          	jalr	-884(ra) # 800023c8 <cpuid>
    80002744:	06050663          	beqz	a0,800027b0 <devintr+0xc8>
    80002748:	144027f3          	csrr	a5,sip
    8000274c:	ffd7f793          	andi	a5,a5,-3
    80002750:	14479073          	csrw	sip,a5
    80002754:	01813083          	ld	ra,24(sp)
    80002758:	01013403          	ld	s0,16(sp)
    8000275c:	00813483          	ld	s1,8(sp)
    80002760:	00200513          	li	a0,2
    80002764:	02010113          	addi	sp,sp,32
    80002768:	00008067          	ret
    8000276c:	00000097          	auipc	ra,0x0
    80002770:	258080e7          	jalr	600(ra) # 800029c4 <plic_claim>
    80002774:	00a00793          	li	a5,10
    80002778:	00050493          	mv	s1,a0
    8000277c:	06f50663          	beq	a0,a5,800027e8 <devintr+0x100>
    80002780:	00100513          	li	a0,1
    80002784:	fa0482e3          	beqz	s1,80002728 <devintr+0x40>
    80002788:	00048593          	mv	a1,s1
    8000278c:	00003517          	auipc	a0,0x3
    80002790:	98c50513          	addi	a0,a0,-1652 # 80005118 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80002794:	00000097          	auipc	ra,0x0
    80002798:	674080e7          	jalr	1652(ra) # 80002e08 <__printf>
    8000279c:	00048513          	mv	a0,s1
    800027a0:	00000097          	auipc	ra,0x0
    800027a4:	25c080e7          	jalr	604(ra) # 800029fc <plic_complete>
    800027a8:	00100513          	li	a0,1
    800027ac:	f7dff06f          	j	80002728 <devintr+0x40>
    800027b0:	00004517          	auipc	a0,0x4
    800027b4:	32050513          	addi	a0,a0,800 # 80006ad0 <tickslock>
    800027b8:	00001097          	auipc	ra,0x1
    800027bc:	324080e7          	jalr	804(ra) # 80003adc <acquire>
    800027c0:	00003717          	auipc	a4,0x3
    800027c4:	20470713          	addi	a4,a4,516 # 800059c4 <ticks>
    800027c8:	00072783          	lw	a5,0(a4)
    800027cc:	00004517          	auipc	a0,0x4
    800027d0:	30450513          	addi	a0,a0,772 # 80006ad0 <tickslock>
    800027d4:	0017879b          	addiw	a5,a5,1
    800027d8:	00f72023          	sw	a5,0(a4)
    800027dc:	00001097          	auipc	ra,0x1
    800027e0:	3cc080e7          	jalr	972(ra) # 80003ba8 <release>
    800027e4:	f65ff06f          	j	80002748 <devintr+0x60>
    800027e8:	00001097          	auipc	ra,0x1
    800027ec:	f28080e7          	jalr	-216(ra) # 80003710 <uartintr>
    800027f0:	fadff06f          	j	8000279c <devintr+0xb4>
	...

0000000080002800 <kernelvec>:
    80002800:	f0010113          	addi	sp,sp,-256
    80002804:	00113023          	sd	ra,0(sp)
    80002808:	00213423          	sd	sp,8(sp)
    8000280c:	00313823          	sd	gp,16(sp)
    80002810:	00413c23          	sd	tp,24(sp)
    80002814:	02513023          	sd	t0,32(sp)
    80002818:	02613423          	sd	t1,40(sp)
    8000281c:	02713823          	sd	t2,48(sp)
    80002820:	02813c23          	sd	s0,56(sp)
    80002824:	04913023          	sd	s1,64(sp)
    80002828:	04a13423          	sd	a0,72(sp)
    8000282c:	04b13823          	sd	a1,80(sp)
    80002830:	04c13c23          	sd	a2,88(sp)
    80002834:	06d13023          	sd	a3,96(sp)
    80002838:	06e13423          	sd	a4,104(sp)
    8000283c:	06f13823          	sd	a5,112(sp)
    80002840:	07013c23          	sd	a6,120(sp)
    80002844:	09113023          	sd	a7,128(sp)
    80002848:	09213423          	sd	s2,136(sp)
    8000284c:	09313823          	sd	s3,144(sp)
    80002850:	09413c23          	sd	s4,152(sp)
    80002854:	0b513023          	sd	s5,160(sp)
    80002858:	0b613423          	sd	s6,168(sp)
    8000285c:	0b713823          	sd	s7,176(sp)
    80002860:	0b813c23          	sd	s8,184(sp)
    80002864:	0d913023          	sd	s9,192(sp)
    80002868:	0da13423          	sd	s10,200(sp)
    8000286c:	0db13823          	sd	s11,208(sp)
    80002870:	0dc13c23          	sd	t3,216(sp)
    80002874:	0fd13023          	sd	t4,224(sp)
    80002878:	0fe13423          	sd	t5,232(sp)
    8000287c:	0ff13823          	sd	t6,240(sp)
    80002880:	cc9ff0ef          	jal	ra,80002548 <kerneltrap>
    80002884:	00013083          	ld	ra,0(sp)
    80002888:	00813103          	ld	sp,8(sp)
    8000288c:	01013183          	ld	gp,16(sp)
    80002890:	02013283          	ld	t0,32(sp)
    80002894:	02813303          	ld	t1,40(sp)
    80002898:	03013383          	ld	t2,48(sp)
    8000289c:	03813403          	ld	s0,56(sp)
    800028a0:	04013483          	ld	s1,64(sp)
    800028a4:	04813503          	ld	a0,72(sp)
    800028a8:	05013583          	ld	a1,80(sp)
    800028ac:	05813603          	ld	a2,88(sp)
    800028b0:	06013683          	ld	a3,96(sp)
    800028b4:	06813703          	ld	a4,104(sp)
    800028b8:	07013783          	ld	a5,112(sp)
    800028bc:	07813803          	ld	a6,120(sp)
    800028c0:	08013883          	ld	a7,128(sp)
    800028c4:	08813903          	ld	s2,136(sp)
    800028c8:	09013983          	ld	s3,144(sp)
    800028cc:	09813a03          	ld	s4,152(sp)
    800028d0:	0a013a83          	ld	s5,160(sp)
    800028d4:	0a813b03          	ld	s6,168(sp)
    800028d8:	0b013b83          	ld	s7,176(sp)
    800028dc:	0b813c03          	ld	s8,184(sp)
    800028e0:	0c013c83          	ld	s9,192(sp)
    800028e4:	0c813d03          	ld	s10,200(sp)
    800028e8:	0d013d83          	ld	s11,208(sp)
    800028ec:	0d813e03          	ld	t3,216(sp)
    800028f0:	0e013e83          	ld	t4,224(sp)
    800028f4:	0e813f03          	ld	t5,232(sp)
    800028f8:	0f013f83          	ld	t6,240(sp)
    800028fc:	10010113          	addi	sp,sp,256
    80002900:	10200073          	sret
    80002904:	00000013          	nop
    80002908:	00000013          	nop
    8000290c:	00000013          	nop

0000000080002910 <timervec>:
    80002910:	34051573          	csrrw	a0,mscratch,a0
    80002914:	00b53023          	sd	a1,0(a0)
    80002918:	00c53423          	sd	a2,8(a0)
    8000291c:	00d53823          	sd	a3,16(a0)
    80002920:	01853583          	ld	a1,24(a0)
    80002924:	02053603          	ld	a2,32(a0)
    80002928:	0005b683          	ld	a3,0(a1)
    8000292c:	00c686b3          	add	a3,a3,a2
    80002930:	00d5b023          	sd	a3,0(a1)
    80002934:	00200593          	li	a1,2
    80002938:	14459073          	csrw	sip,a1
    8000293c:	01053683          	ld	a3,16(a0)
    80002940:	00853603          	ld	a2,8(a0)
    80002944:	00053583          	ld	a1,0(a0)
    80002948:	34051573          	csrrw	a0,mscratch,a0
    8000294c:	30200073          	mret

0000000080002950 <plicinit>:
    80002950:	ff010113          	addi	sp,sp,-16
    80002954:	00813423          	sd	s0,8(sp)
    80002958:	01010413          	addi	s0,sp,16
    8000295c:	00813403          	ld	s0,8(sp)
    80002960:	0c0007b7          	lui	a5,0xc000
    80002964:	00100713          	li	a4,1
    80002968:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000296c:	00e7a223          	sw	a4,4(a5)
    80002970:	01010113          	addi	sp,sp,16
    80002974:	00008067          	ret

0000000080002978 <plicinithart>:
    80002978:	ff010113          	addi	sp,sp,-16
    8000297c:	00813023          	sd	s0,0(sp)
    80002980:	00113423          	sd	ra,8(sp)
    80002984:	01010413          	addi	s0,sp,16
    80002988:	00000097          	auipc	ra,0x0
    8000298c:	a40080e7          	jalr	-1472(ra) # 800023c8 <cpuid>
    80002990:	0085171b          	slliw	a4,a0,0x8
    80002994:	0c0027b7          	lui	a5,0xc002
    80002998:	00e787b3          	add	a5,a5,a4
    8000299c:	40200713          	li	a4,1026
    800029a0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800029a4:	00813083          	ld	ra,8(sp)
    800029a8:	00013403          	ld	s0,0(sp)
    800029ac:	00d5151b          	slliw	a0,a0,0xd
    800029b0:	0c2017b7          	lui	a5,0xc201
    800029b4:	00a78533          	add	a0,a5,a0
    800029b8:	00052023          	sw	zero,0(a0)
    800029bc:	01010113          	addi	sp,sp,16
    800029c0:	00008067          	ret

00000000800029c4 <plic_claim>:
    800029c4:	ff010113          	addi	sp,sp,-16
    800029c8:	00813023          	sd	s0,0(sp)
    800029cc:	00113423          	sd	ra,8(sp)
    800029d0:	01010413          	addi	s0,sp,16
    800029d4:	00000097          	auipc	ra,0x0
    800029d8:	9f4080e7          	jalr	-1548(ra) # 800023c8 <cpuid>
    800029dc:	00813083          	ld	ra,8(sp)
    800029e0:	00013403          	ld	s0,0(sp)
    800029e4:	00d5151b          	slliw	a0,a0,0xd
    800029e8:	0c2017b7          	lui	a5,0xc201
    800029ec:	00a78533          	add	a0,a5,a0
    800029f0:	00452503          	lw	a0,4(a0)
    800029f4:	01010113          	addi	sp,sp,16
    800029f8:	00008067          	ret

00000000800029fc <plic_complete>:
    800029fc:	fe010113          	addi	sp,sp,-32
    80002a00:	00813823          	sd	s0,16(sp)
    80002a04:	00913423          	sd	s1,8(sp)
    80002a08:	00113c23          	sd	ra,24(sp)
    80002a0c:	02010413          	addi	s0,sp,32
    80002a10:	00050493          	mv	s1,a0
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	9b4080e7          	jalr	-1612(ra) # 800023c8 <cpuid>
    80002a1c:	01813083          	ld	ra,24(sp)
    80002a20:	01013403          	ld	s0,16(sp)
    80002a24:	00d5179b          	slliw	a5,a0,0xd
    80002a28:	0c201737          	lui	a4,0xc201
    80002a2c:	00f707b3          	add	a5,a4,a5
    80002a30:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002a34:	00813483          	ld	s1,8(sp)
    80002a38:	02010113          	addi	sp,sp,32
    80002a3c:	00008067          	ret

0000000080002a40 <consolewrite>:
    80002a40:	fb010113          	addi	sp,sp,-80
    80002a44:	04813023          	sd	s0,64(sp)
    80002a48:	04113423          	sd	ra,72(sp)
    80002a4c:	02913c23          	sd	s1,56(sp)
    80002a50:	03213823          	sd	s2,48(sp)
    80002a54:	03313423          	sd	s3,40(sp)
    80002a58:	03413023          	sd	s4,32(sp)
    80002a5c:	01513c23          	sd	s5,24(sp)
    80002a60:	05010413          	addi	s0,sp,80
    80002a64:	06c05c63          	blez	a2,80002adc <consolewrite+0x9c>
    80002a68:	00060993          	mv	s3,a2
    80002a6c:	00050a13          	mv	s4,a0
    80002a70:	00058493          	mv	s1,a1
    80002a74:	00000913          	li	s2,0
    80002a78:	fff00a93          	li	s5,-1
    80002a7c:	01c0006f          	j	80002a98 <consolewrite+0x58>
    80002a80:	fbf44503          	lbu	a0,-65(s0)
    80002a84:	0019091b          	addiw	s2,s2,1
    80002a88:	00148493          	addi	s1,s1,1
    80002a8c:	00001097          	auipc	ra,0x1
    80002a90:	a9c080e7          	jalr	-1380(ra) # 80003528 <uartputc>
    80002a94:	03298063          	beq	s3,s2,80002ab4 <consolewrite+0x74>
    80002a98:	00048613          	mv	a2,s1
    80002a9c:	00100693          	li	a3,1
    80002aa0:	000a0593          	mv	a1,s4
    80002aa4:	fbf40513          	addi	a0,s0,-65
    80002aa8:	00000097          	auipc	ra,0x0
    80002aac:	9d8080e7          	jalr	-1576(ra) # 80002480 <either_copyin>
    80002ab0:	fd5518e3          	bne	a0,s5,80002a80 <consolewrite+0x40>
    80002ab4:	04813083          	ld	ra,72(sp)
    80002ab8:	04013403          	ld	s0,64(sp)
    80002abc:	03813483          	ld	s1,56(sp)
    80002ac0:	02813983          	ld	s3,40(sp)
    80002ac4:	02013a03          	ld	s4,32(sp)
    80002ac8:	01813a83          	ld	s5,24(sp)
    80002acc:	00090513          	mv	a0,s2
    80002ad0:	03013903          	ld	s2,48(sp)
    80002ad4:	05010113          	addi	sp,sp,80
    80002ad8:	00008067          	ret
    80002adc:	00000913          	li	s2,0
    80002ae0:	fd5ff06f          	j	80002ab4 <consolewrite+0x74>

0000000080002ae4 <consoleread>:
    80002ae4:	f9010113          	addi	sp,sp,-112
    80002ae8:	06813023          	sd	s0,96(sp)
    80002aec:	04913c23          	sd	s1,88(sp)
    80002af0:	05213823          	sd	s2,80(sp)
    80002af4:	05313423          	sd	s3,72(sp)
    80002af8:	05413023          	sd	s4,64(sp)
    80002afc:	03513c23          	sd	s5,56(sp)
    80002b00:	03613823          	sd	s6,48(sp)
    80002b04:	03713423          	sd	s7,40(sp)
    80002b08:	03813023          	sd	s8,32(sp)
    80002b0c:	06113423          	sd	ra,104(sp)
    80002b10:	01913c23          	sd	s9,24(sp)
    80002b14:	07010413          	addi	s0,sp,112
    80002b18:	00060b93          	mv	s7,a2
    80002b1c:	00050913          	mv	s2,a0
    80002b20:	00058c13          	mv	s8,a1
    80002b24:	00060b1b          	sext.w	s6,a2
    80002b28:	00004497          	auipc	s1,0x4
    80002b2c:	fd048493          	addi	s1,s1,-48 # 80006af8 <cons>
    80002b30:	00400993          	li	s3,4
    80002b34:	fff00a13          	li	s4,-1
    80002b38:	00a00a93          	li	s5,10
    80002b3c:	05705e63          	blez	s7,80002b98 <consoleread+0xb4>
    80002b40:	09c4a703          	lw	a4,156(s1)
    80002b44:	0984a783          	lw	a5,152(s1)
    80002b48:	0007071b          	sext.w	a4,a4
    80002b4c:	08e78463          	beq	a5,a4,80002bd4 <consoleread+0xf0>
    80002b50:	07f7f713          	andi	a4,a5,127
    80002b54:	00e48733          	add	a4,s1,a4
    80002b58:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002b5c:	0017869b          	addiw	a3,a5,1
    80002b60:	08d4ac23          	sw	a3,152(s1)
    80002b64:	00070c9b          	sext.w	s9,a4
    80002b68:	0b370663          	beq	a4,s3,80002c14 <consoleread+0x130>
    80002b6c:	00100693          	li	a3,1
    80002b70:	f9f40613          	addi	a2,s0,-97
    80002b74:	000c0593          	mv	a1,s8
    80002b78:	00090513          	mv	a0,s2
    80002b7c:	f8e40fa3          	sb	a4,-97(s0)
    80002b80:	00000097          	auipc	ra,0x0
    80002b84:	8b4080e7          	jalr	-1868(ra) # 80002434 <either_copyout>
    80002b88:	01450863          	beq	a0,s4,80002b98 <consoleread+0xb4>
    80002b8c:	001c0c13          	addi	s8,s8,1
    80002b90:	fffb8b9b          	addiw	s7,s7,-1
    80002b94:	fb5c94e3          	bne	s9,s5,80002b3c <consoleread+0x58>
    80002b98:	000b851b          	sext.w	a0,s7
    80002b9c:	06813083          	ld	ra,104(sp)
    80002ba0:	06013403          	ld	s0,96(sp)
    80002ba4:	05813483          	ld	s1,88(sp)
    80002ba8:	05013903          	ld	s2,80(sp)
    80002bac:	04813983          	ld	s3,72(sp)
    80002bb0:	04013a03          	ld	s4,64(sp)
    80002bb4:	03813a83          	ld	s5,56(sp)
    80002bb8:	02813b83          	ld	s7,40(sp)
    80002bbc:	02013c03          	ld	s8,32(sp)
    80002bc0:	01813c83          	ld	s9,24(sp)
    80002bc4:	40ab053b          	subw	a0,s6,a0
    80002bc8:	03013b03          	ld	s6,48(sp)
    80002bcc:	07010113          	addi	sp,sp,112
    80002bd0:	00008067          	ret
    80002bd4:	00001097          	auipc	ra,0x1
    80002bd8:	1d8080e7          	jalr	472(ra) # 80003dac <push_on>
    80002bdc:	0984a703          	lw	a4,152(s1)
    80002be0:	09c4a783          	lw	a5,156(s1)
    80002be4:	0007879b          	sext.w	a5,a5
    80002be8:	fef70ce3          	beq	a4,a5,80002be0 <consoleread+0xfc>
    80002bec:	00001097          	auipc	ra,0x1
    80002bf0:	234080e7          	jalr	564(ra) # 80003e20 <pop_on>
    80002bf4:	0984a783          	lw	a5,152(s1)
    80002bf8:	07f7f713          	andi	a4,a5,127
    80002bfc:	00e48733          	add	a4,s1,a4
    80002c00:	01874703          	lbu	a4,24(a4)
    80002c04:	0017869b          	addiw	a3,a5,1
    80002c08:	08d4ac23          	sw	a3,152(s1)
    80002c0c:	00070c9b          	sext.w	s9,a4
    80002c10:	f5371ee3          	bne	a4,s3,80002b6c <consoleread+0x88>
    80002c14:	000b851b          	sext.w	a0,s7
    80002c18:	f96bf2e3          	bgeu	s7,s6,80002b9c <consoleread+0xb8>
    80002c1c:	08f4ac23          	sw	a5,152(s1)
    80002c20:	f7dff06f          	j	80002b9c <consoleread+0xb8>

0000000080002c24 <consputc>:
    80002c24:	10000793          	li	a5,256
    80002c28:	00f50663          	beq	a0,a5,80002c34 <consputc+0x10>
    80002c2c:	00001317          	auipc	t1,0x1
    80002c30:	9f430067          	jr	-1548(t1) # 80003620 <uartputc_sync>
    80002c34:	ff010113          	addi	sp,sp,-16
    80002c38:	00113423          	sd	ra,8(sp)
    80002c3c:	00813023          	sd	s0,0(sp)
    80002c40:	01010413          	addi	s0,sp,16
    80002c44:	00800513          	li	a0,8
    80002c48:	00001097          	auipc	ra,0x1
    80002c4c:	9d8080e7          	jalr	-1576(ra) # 80003620 <uartputc_sync>
    80002c50:	02000513          	li	a0,32
    80002c54:	00001097          	auipc	ra,0x1
    80002c58:	9cc080e7          	jalr	-1588(ra) # 80003620 <uartputc_sync>
    80002c5c:	00013403          	ld	s0,0(sp)
    80002c60:	00813083          	ld	ra,8(sp)
    80002c64:	00800513          	li	a0,8
    80002c68:	01010113          	addi	sp,sp,16
    80002c6c:	00001317          	auipc	t1,0x1
    80002c70:	9b430067          	jr	-1612(t1) # 80003620 <uartputc_sync>

0000000080002c74 <consoleintr>:
    80002c74:	fe010113          	addi	sp,sp,-32
    80002c78:	00813823          	sd	s0,16(sp)
    80002c7c:	00913423          	sd	s1,8(sp)
    80002c80:	01213023          	sd	s2,0(sp)
    80002c84:	00113c23          	sd	ra,24(sp)
    80002c88:	02010413          	addi	s0,sp,32
    80002c8c:	00004917          	auipc	s2,0x4
    80002c90:	e6c90913          	addi	s2,s2,-404 # 80006af8 <cons>
    80002c94:	00050493          	mv	s1,a0
    80002c98:	00090513          	mv	a0,s2
    80002c9c:	00001097          	auipc	ra,0x1
    80002ca0:	e40080e7          	jalr	-448(ra) # 80003adc <acquire>
    80002ca4:	02048c63          	beqz	s1,80002cdc <consoleintr+0x68>
    80002ca8:	0a092783          	lw	a5,160(s2)
    80002cac:	09892703          	lw	a4,152(s2)
    80002cb0:	07f00693          	li	a3,127
    80002cb4:	40e7873b          	subw	a4,a5,a4
    80002cb8:	02e6e263          	bltu	a3,a4,80002cdc <consoleintr+0x68>
    80002cbc:	00d00713          	li	a4,13
    80002cc0:	04e48063          	beq	s1,a4,80002d00 <consoleintr+0x8c>
    80002cc4:	07f7f713          	andi	a4,a5,127
    80002cc8:	00e90733          	add	a4,s2,a4
    80002ccc:	0017879b          	addiw	a5,a5,1
    80002cd0:	0af92023          	sw	a5,160(s2)
    80002cd4:	00970c23          	sb	s1,24(a4)
    80002cd8:	08f92e23          	sw	a5,156(s2)
    80002cdc:	01013403          	ld	s0,16(sp)
    80002ce0:	01813083          	ld	ra,24(sp)
    80002ce4:	00813483          	ld	s1,8(sp)
    80002ce8:	00013903          	ld	s2,0(sp)
    80002cec:	00004517          	auipc	a0,0x4
    80002cf0:	e0c50513          	addi	a0,a0,-500 # 80006af8 <cons>
    80002cf4:	02010113          	addi	sp,sp,32
    80002cf8:	00001317          	auipc	t1,0x1
    80002cfc:	eb030067          	jr	-336(t1) # 80003ba8 <release>
    80002d00:	00a00493          	li	s1,10
    80002d04:	fc1ff06f          	j	80002cc4 <consoleintr+0x50>

0000000080002d08 <consoleinit>:
    80002d08:	fe010113          	addi	sp,sp,-32
    80002d0c:	00113c23          	sd	ra,24(sp)
    80002d10:	00813823          	sd	s0,16(sp)
    80002d14:	00913423          	sd	s1,8(sp)
    80002d18:	02010413          	addi	s0,sp,32
    80002d1c:	00004497          	auipc	s1,0x4
    80002d20:	ddc48493          	addi	s1,s1,-548 # 80006af8 <cons>
    80002d24:	00048513          	mv	a0,s1
    80002d28:	00002597          	auipc	a1,0x2
    80002d2c:	44858593          	addi	a1,a1,1096 # 80005170 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80002d30:	00001097          	auipc	ra,0x1
    80002d34:	d88080e7          	jalr	-632(ra) # 80003ab8 <initlock>
    80002d38:	00000097          	auipc	ra,0x0
    80002d3c:	7ac080e7          	jalr	1964(ra) # 800034e4 <uartinit>
    80002d40:	01813083          	ld	ra,24(sp)
    80002d44:	01013403          	ld	s0,16(sp)
    80002d48:	00000797          	auipc	a5,0x0
    80002d4c:	d9c78793          	addi	a5,a5,-612 # 80002ae4 <consoleread>
    80002d50:	0af4bc23          	sd	a5,184(s1)
    80002d54:	00000797          	auipc	a5,0x0
    80002d58:	cec78793          	addi	a5,a5,-788 # 80002a40 <consolewrite>
    80002d5c:	0cf4b023          	sd	a5,192(s1)
    80002d60:	00813483          	ld	s1,8(sp)
    80002d64:	02010113          	addi	sp,sp,32
    80002d68:	00008067          	ret

0000000080002d6c <console_read>:
    80002d6c:	ff010113          	addi	sp,sp,-16
    80002d70:	00813423          	sd	s0,8(sp)
    80002d74:	01010413          	addi	s0,sp,16
    80002d78:	00813403          	ld	s0,8(sp)
    80002d7c:	00004317          	auipc	t1,0x4
    80002d80:	e3433303          	ld	t1,-460(t1) # 80006bb0 <devsw+0x10>
    80002d84:	01010113          	addi	sp,sp,16
    80002d88:	00030067          	jr	t1

0000000080002d8c <console_write>:
    80002d8c:	ff010113          	addi	sp,sp,-16
    80002d90:	00813423          	sd	s0,8(sp)
    80002d94:	01010413          	addi	s0,sp,16
    80002d98:	00813403          	ld	s0,8(sp)
    80002d9c:	00004317          	auipc	t1,0x4
    80002da0:	e1c33303          	ld	t1,-484(t1) # 80006bb8 <devsw+0x18>
    80002da4:	01010113          	addi	sp,sp,16
    80002da8:	00030067          	jr	t1

0000000080002dac <panic>:
    80002dac:	fe010113          	addi	sp,sp,-32
    80002db0:	00113c23          	sd	ra,24(sp)
    80002db4:	00813823          	sd	s0,16(sp)
    80002db8:	00913423          	sd	s1,8(sp)
    80002dbc:	02010413          	addi	s0,sp,32
    80002dc0:	00050493          	mv	s1,a0
    80002dc4:	00002517          	auipc	a0,0x2
    80002dc8:	3b450513          	addi	a0,a0,948 # 80005178 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    80002dcc:	00004797          	auipc	a5,0x4
    80002dd0:	e807a623          	sw	zero,-372(a5) # 80006c58 <pr+0x18>
    80002dd4:	00000097          	auipc	ra,0x0
    80002dd8:	034080e7          	jalr	52(ra) # 80002e08 <__printf>
    80002ddc:	00048513          	mv	a0,s1
    80002de0:	00000097          	auipc	ra,0x0
    80002de4:	028080e7          	jalr	40(ra) # 80002e08 <__printf>
    80002de8:	00002517          	auipc	a0,0x2
    80002dec:	37050513          	addi	a0,a0,880 # 80005158 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80002df0:	00000097          	auipc	ra,0x0
    80002df4:	018080e7          	jalr	24(ra) # 80002e08 <__printf>
    80002df8:	00100793          	li	a5,1
    80002dfc:	00003717          	auipc	a4,0x3
    80002e00:	bcf72623          	sw	a5,-1076(a4) # 800059c8 <panicked>
    80002e04:	0000006f          	j	80002e04 <panic+0x58>

0000000080002e08 <__printf>:
    80002e08:	f3010113          	addi	sp,sp,-208
    80002e0c:	08813023          	sd	s0,128(sp)
    80002e10:	07313423          	sd	s3,104(sp)
    80002e14:	09010413          	addi	s0,sp,144
    80002e18:	05813023          	sd	s8,64(sp)
    80002e1c:	08113423          	sd	ra,136(sp)
    80002e20:	06913c23          	sd	s1,120(sp)
    80002e24:	07213823          	sd	s2,112(sp)
    80002e28:	07413023          	sd	s4,96(sp)
    80002e2c:	05513c23          	sd	s5,88(sp)
    80002e30:	05613823          	sd	s6,80(sp)
    80002e34:	05713423          	sd	s7,72(sp)
    80002e38:	03913c23          	sd	s9,56(sp)
    80002e3c:	03a13823          	sd	s10,48(sp)
    80002e40:	03b13423          	sd	s11,40(sp)
    80002e44:	00004317          	auipc	t1,0x4
    80002e48:	dfc30313          	addi	t1,t1,-516 # 80006c40 <pr>
    80002e4c:	01832c03          	lw	s8,24(t1)
    80002e50:	00b43423          	sd	a1,8(s0)
    80002e54:	00c43823          	sd	a2,16(s0)
    80002e58:	00d43c23          	sd	a3,24(s0)
    80002e5c:	02e43023          	sd	a4,32(s0)
    80002e60:	02f43423          	sd	a5,40(s0)
    80002e64:	03043823          	sd	a6,48(s0)
    80002e68:	03143c23          	sd	a7,56(s0)
    80002e6c:	00050993          	mv	s3,a0
    80002e70:	4a0c1663          	bnez	s8,8000331c <__printf+0x514>
    80002e74:	60098c63          	beqz	s3,8000348c <__printf+0x684>
    80002e78:	0009c503          	lbu	a0,0(s3)
    80002e7c:	00840793          	addi	a5,s0,8
    80002e80:	f6f43c23          	sd	a5,-136(s0)
    80002e84:	00000493          	li	s1,0
    80002e88:	22050063          	beqz	a0,800030a8 <__printf+0x2a0>
    80002e8c:	00002a37          	lui	s4,0x2
    80002e90:	00018ab7          	lui	s5,0x18
    80002e94:	000f4b37          	lui	s6,0xf4
    80002e98:	00989bb7          	lui	s7,0x989
    80002e9c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002ea0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002ea4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002ea8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002eac:	00148c9b          	addiw	s9,s1,1
    80002eb0:	02500793          	li	a5,37
    80002eb4:	01998933          	add	s2,s3,s9
    80002eb8:	38f51263          	bne	a0,a5,8000323c <__printf+0x434>
    80002ebc:	00094783          	lbu	a5,0(s2)
    80002ec0:	00078c9b          	sext.w	s9,a5
    80002ec4:	1e078263          	beqz	a5,800030a8 <__printf+0x2a0>
    80002ec8:	0024849b          	addiw	s1,s1,2
    80002ecc:	07000713          	li	a4,112
    80002ed0:	00998933          	add	s2,s3,s1
    80002ed4:	38e78a63          	beq	a5,a4,80003268 <__printf+0x460>
    80002ed8:	20f76863          	bltu	a4,a5,800030e8 <__printf+0x2e0>
    80002edc:	42a78863          	beq	a5,a0,8000330c <__printf+0x504>
    80002ee0:	06400713          	li	a4,100
    80002ee4:	40e79663          	bne	a5,a4,800032f0 <__printf+0x4e8>
    80002ee8:	f7843783          	ld	a5,-136(s0)
    80002eec:	0007a603          	lw	a2,0(a5)
    80002ef0:	00878793          	addi	a5,a5,8
    80002ef4:	f6f43c23          	sd	a5,-136(s0)
    80002ef8:	42064a63          	bltz	a2,8000332c <__printf+0x524>
    80002efc:	00a00713          	li	a4,10
    80002f00:	02e677bb          	remuw	a5,a2,a4
    80002f04:	00002d97          	auipc	s11,0x2
    80002f08:	29cd8d93          	addi	s11,s11,668 # 800051a0 <digits>
    80002f0c:	00900593          	li	a1,9
    80002f10:	0006051b          	sext.w	a0,a2
    80002f14:	00000c93          	li	s9,0
    80002f18:	02079793          	slli	a5,a5,0x20
    80002f1c:	0207d793          	srli	a5,a5,0x20
    80002f20:	00fd87b3          	add	a5,s11,a5
    80002f24:	0007c783          	lbu	a5,0(a5)
    80002f28:	02e656bb          	divuw	a3,a2,a4
    80002f2c:	f8f40023          	sb	a5,-128(s0)
    80002f30:	14c5d863          	bge	a1,a2,80003080 <__printf+0x278>
    80002f34:	06300593          	li	a1,99
    80002f38:	00100c93          	li	s9,1
    80002f3c:	02e6f7bb          	remuw	a5,a3,a4
    80002f40:	02079793          	slli	a5,a5,0x20
    80002f44:	0207d793          	srli	a5,a5,0x20
    80002f48:	00fd87b3          	add	a5,s11,a5
    80002f4c:	0007c783          	lbu	a5,0(a5)
    80002f50:	02e6d73b          	divuw	a4,a3,a4
    80002f54:	f8f400a3          	sb	a5,-127(s0)
    80002f58:	12a5f463          	bgeu	a1,a0,80003080 <__printf+0x278>
    80002f5c:	00a00693          	li	a3,10
    80002f60:	00900593          	li	a1,9
    80002f64:	02d777bb          	remuw	a5,a4,a3
    80002f68:	02079793          	slli	a5,a5,0x20
    80002f6c:	0207d793          	srli	a5,a5,0x20
    80002f70:	00fd87b3          	add	a5,s11,a5
    80002f74:	0007c503          	lbu	a0,0(a5)
    80002f78:	02d757bb          	divuw	a5,a4,a3
    80002f7c:	f8a40123          	sb	a0,-126(s0)
    80002f80:	48e5f263          	bgeu	a1,a4,80003404 <__printf+0x5fc>
    80002f84:	06300513          	li	a0,99
    80002f88:	02d7f5bb          	remuw	a1,a5,a3
    80002f8c:	02059593          	slli	a1,a1,0x20
    80002f90:	0205d593          	srli	a1,a1,0x20
    80002f94:	00bd85b3          	add	a1,s11,a1
    80002f98:	0005c583          	lbu	a1,0(a1)
    80002f9c:	02d7d7bb          	divuw	a5,a5,a3
    80002fa0:	f8b401a3          	sb	a1,-125(s0)
    80002fa4:	48e57263          	bgeu	a0,a4,80003428 <__printf+0x620>
    80002fa8:	3e700513          	li	a0,999
    80002fac:	02d7f5bb          	remuw	a1,a5,a3
    80002fb0:	02059593          	slli	a1,a1,0x20
    80002fb4:	0205d593          	srli	a1,a1,0x20
    80002fb8:	00bd85b3          	add	a1,s11,a1
    80002fbc:	0005c583          	lbu	a1,0(a1)
    80002fc0:	02d7d7bb          	divuw	a5,a5,a3
    80002fc4:	f8b40223          	sb	a1,-124(s0)
    80002fc8:	46e57663          	bgeu	a0,a4,80003434 <__printf+0x62c>
    80002fcc:	02d7f5bb          	remuw	a1,a5,a3
    80002fd0:	02059593          	slli	a1,a1,0x20
    80002fd4:	0205d593          	srli	a1,a1,0x20
    80002fd8:	00bd85b3          	add	a1,s11,a1
    80002fdc:	0005c583          	lbu	a1,0(a1)
    80002fe0:	02d7d7bb          	divuw	a5,a5,a3
    80002fe4:	f8b402a3          	sb	a1,-123(s0)
    80002fe8:	46ea7863          	bgeu	s4,a4,80003458 <__printf+0x650>
    80002fec:	02d7f5bb          	remuw	a1,a5,a3
    80002ff0:	02059593          	slli	a1,a1,0x20
    80002ff4:	0205d593          	srli	a1,a1,0x20
    80002ff8:	00bd85b3          	add	a1,s11,a1
    80002ffc:	0005c583          	lbu	a1,0(a1)
    80003000:	02d7d7bb          	divuw	a5,a5,a3
    80003004:	f8b40323          	sb	a1,-122(s0)
    80003008:	3eeaf863          	bgeu	s5,a4,800033f8 <__printf+0x5f0>
    8000300c:	02d7f5bb          	remuw	a1,a5,a3
    80003010:	02059593          	slli	a1,a1,0x20
    80003014:	0205d593          	srli	a1,a1,0x20
    80003018:	00bd85b3          	add	a1,s11,a1
    8000301c:	0005c583          	lbu	a1,0(a1)
    80003020:	02d7d7bb          	divuw	a5,a5,a3
    80003024:	f8b403a3          	sb	a1,-121(s0)
    80003028:	42eb7e63          	bgeu	s6,a4,80003464 <__printf+0x65c>
    8000302c:	02d7f5bb          	remuw	a1,a5,a3
    80003030:	02059593          	slli	a1,a1,0x20
    80003034:	0205d593          	srli	a1,a1,0x20
    80003038:	00bd85b3          	add	a1,s11,a1
    8000303c:	0005c583          	lbu	a1,0(a1)
    80003040:	02d7d7bb          	divuw	a5,a5,a3
    80003044:	f8b40423          	sb	a1,-120(s0)
    80003048:	42ebfc63          	bgeu	s7,a4,80003480 <__printf+0x678>
    8000304c:	02079793          	slli	a5,a5,0x20
    80003050:	0207d793          	srli	a5,a5,0x20
    80003054:	00fd8db3          	add	s11,s11,a5
    80003058:	000dc703          	lbu	a4,0(s11)
    8000305c:	00a00793          	li	a5,10
    80003060:	00900c93          	li	s9,9
    80003064:	f8e404a3          	sb	a4,-119(s0)
    80003068:	00065c63          	bgez	a2,80003080 <__printf+0x278>
    8000306c:	f9040713          	addi	a4,s0,-112
    80003070:	00f70733          	add	a4,a4,a5
    80003074:	02d00693          	li	a3,45
    80003078:	fed70823          	sb	a3,-16(a4)
    8000307c:	00078c93          	mv	s9,a5
    80003080:	f8040793          	addi	a5,s0,-128
    80003084:	01978cb3          	add	s9,a5,s9
    80003088:	f7f40d13          	addi	s10,s0,-129
    8000308c:	000cc503          	lbu	a0,0(s9)
    80003090:	fffc8c93          	addi	s9,s9,-1
    80003094:	00000097          	auipc	ra,0x0
    80003098:	b90080e7          	jalr	-1136(ra) # 80002c24 <consputc>
    8000309c:	ffac98e3          	bne	s9,s10,8000308c <__printf+0x284>
    800030a0:	00094503          	lbu	a0,0(s2)
    800030a4:	e00514e3          	bnez	a0,80002eac <__printf+0xa4>
    800030a8:	1a0c1663          	bnez	s8,80003254 <__printf+0x44c>
    800030ac:	08813083          	ld	ra,136(sp)
    800030b0:	08013403          	ld	s0,128(sp)
    800030b4:	07813483          	ld	s1,120(sp)
    800030b8:	07013903          	ld	s2,112(sp)
    800030bc:	06813983          	ld	s3,104(sp)
    800030c0:	06013a03          	ld	s4,96(sp)
    800030c4:	05813a83          	ld	s5,88(sp)
    800030c8:	05013b03          	ld	s6,80(sp)
    800030cc:	04813b83          	ld	s7,72(sp)
    800030d0:	04013c03          	ld	s8,64(sp)
    800030d4:	03813c83          	ld	s9,56(sp)
    800030d8:	03013d03          	ld	s10,48(sp)
    800030dc:	02813d83          	ld	s11,40(sp)
    800030e0:	0d010113          	addi	sp,sp,208
    800030e4:	00008067          	ret
    800030e8:	07300713          	li	a4,115
    800030ec:	1ce78a63          	beq	a5,a4,800032c0 <__printf+0x4b8>
    800030f0:	07800713          	li	a4,120
    800030f4:	1ee79e63          	bne	a5,a4,800032f0 <__printf+0x4e8>
    800030f8:	f7843783          	ld	a5,-136(s0)
    800030fc:	0007a703          	lw	a4,0(a5)
    80003100:	00878793          	addi	a5,a5,8
    80003104:	f6f43c23          	sd	a5,-136(s0)
    80003108:	28074263          	bltz	a4,8000338c <__printf+0x584>
    8000310c:	00002d97          	auipc	s11,0x2
    80003110:	094d8d93          	addi	s11,s11,148 # 800051a0 <digits>
    80003114:	00f77793          	andi	a5,a4,15
    80003118:	00fd87b3          	add	a5,s11,a5
    8000311c:	0007c683          	lbu	a3,0(a5)
    80003120:	00f00613          	li	a2,15
    80003124:	0007079b          	sext.w	a5,a4
    80003128:	f8d40023          	sb	a3,-128(s0)
    8000312c:	0047559b          	srliw	a1,a4,0x4
    80003130:	0047569b          	srliw	a3,a4,0x4
    80003134:	00000c93          	li	s9,0
    80003138:	0ee65063          	bge	a2,a4,80003218 <__printf+0x410>
    8000313c:	00f6f693          	andi	a3,a3,15
    80003140:	00dd86b3          	add	a3,s11,a3
    80003144:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003148:	0087d79b          	srliw	a5,a5,0x8
    8000314c:	00100c93          	li	s9,1
    80003150:	f8d400a3          	sb	a3,-127(s0)
    80003154:	0cb67263          	bgeu	a2,a1,80003218 <__printf+0x410>
    80003158:	00f7f693          	andi	a3,a5,15
    8000315c:	00dd86b3          	add	a3,s11,a3
    80003160:	0006c583          	lbu	a1,0(a3)
    80003164:	00f00613          	li	a2,15
    80003168:	0047d69b          	srliw	a3,a5,0x4
    8000316c:	f8b40123          	sb	a1,-126(s0)
    80003170:	0047d593          	srli	a1,a5,0x4
    80003174:	28f67e63          	bgeu	a2,a5,80003410 <__printf+0x608>
    80003178:	00f6f693          	andi	a3,a3,15
    8000317c:	00dd86b3          	add	a3,s11,a3
    80003180:	0006c503          	lbu	a0,0(a3)
    80003184:	0087d813          	srli	a6,a5,0x8
    80003188:	0087d69b          	srliw	a3,a5,0x8
    8000318c:	f8a401a3          	sb	a0,-125(s0)
    80003190:	28b67663          	bgeu	a2,a1,8000341c <__printf+0x614>
    80003194:	00f6f693          	andi	a3,a3,15
    80003198:	00dd86b3          	add	a3,s11,a3
    8000319c:	0006c583          	lbu	a1,0(a3)
    800031a0:	00c7d513          	srli	a0,a5,0xc
    800031a4:	00c7d69b          	srliw	a3,a5,0xc
    800031a8:	f8b40223          	sb	a1,-124(s0)
    800031ac:	29067a63          	bgeu	a2,a6,80003440 <__printf+0x638>
    800031b0:	00f6f693          	andi	a3,a3,15
    800031b4:	00dd86b3          	add	a3,s11,a3
    800031b8:	0006c583          	lbu	a1,0(a3)
    800031bc:	0107d813          	srli	a6,a5,0x10
    800031c0:	0107d69b          	srliw	a3,a5,0x10
    800031c4:	f8b402a3          	sb	a1,-123(s0)
    800031c8:	28a67263          	bgeu	a2,a0,8000344c <__printf+0x644>
    800031cc:	00f6f693          	andi	a3,a3,15
    800031d0:	00dd86b3          	add	a3,s11,a3
    800031d4:	0006c683          	lbu	a3,0(a3)
    800031d8:	0147d79b          	srliw	a5,a5,0x14
    800031dc:	f8d40323          	sb	a3,-122(s0)
    800031e0:	21067663          	bgeu	a2,a6,800033ec <__printf+0x5e4>
    800031e4:	02079793          	slli	a5,a5,0x20
    800031e8:	0207d793          	srli	a5,a5,0x20
    800031ec:	00fd8db3          	add	s11,s11,a5
    800031f0:	000dc683          	lbu	a3,0(s11)
    800031f4:	00800793          	li	a5,8
    800031f8:	00700c93          	li	s9,7
    800031fc:	f8d403a3          	sb	a3,-121(s0)
    80003200:	00075c63          	bgez	a4,80003218 <__printf+0x410>
    80003204:	f9040713          	addi	a4,s0,-112
    80003208:	00f70733          	add	a4,a4,a5
    8000320c:	02d00693          	li	a3,45
    80003210:	fed70823          	sb	a3,-16(a4)
    80003214:	00078c93          	mv	s9,a5
    80003218:	f8040793          	addi	a5,s0,-128
    8000321c:	01978cb3          	add	s9,a5,s9
    80003220:	f7f40d13          	addi	s10,s0,-129
    80003224:	000cc503          	lbu	a0,0(s9)
    80003228:	fffc8c93          	addi	s9,s9,-1
    8000322c:	00000097          	auipc	ra,0x0
    80003230:	9f8080e7          	jalr	-1544(ra) # 80002c24 <consputc>
    80003234:	ff9d18e3          	bne	s10,s9,80003224 <__printf+0x41c>
    80003238:	0100006f          	j	80003248 <__printf+0x440>
    8000323c:	00000097          	auipc	ra,0x0
    80003240:	9e8080e7          	jalr	-1560(ra) # 80002c24 <consputc>
    80003244:	000c8493          	mv	s1,s9
    80003248:	00094503          	lbu	a0,0(s2)
    8000324c:	c60510e3          	bnez	a0,80002eac <__printf+0xa4>
    80003250:	e40c0ee3          	beqz	s8,800030ac <__printf+0x2a4>
    80003254:	00004517          	auipc	a0,0x4
    80003258:	9ec50513          	addi	a0,a0,-1556 # 80006c40 <pr>
    8000325c:	00001097          	auipc	ra,0x1
    80003260:	94c080e7          	jalr	-1716(ra) # 80003ba8 <release>
    80003264:	e49ff06f          	j	800030ac <__printf+0x2a4>
    80003268:	f7843783          	ld	a5,-136(s0)
    8000326c:	03000513          	li	a0,48
    80003270:	01000d13          	li	s10,16
    80003274:	00878713          	addi	a4,a5,8
    80003278:	0007bc83          	ld	s9,0(a5)
    8000327c:	f6e43c23          	sd	a4,-136(s0)
    80003280:	00000097          	auipc	ra,0x0
    80003284:	9a4080e7          	jalr	-1628(ra) # 80002c24 <consputc>
    80003288:	07800513          	li	a0,120
    8000328c:	00000097          	auipc	ra,0x0
    80003290:	998080e7          	jalr	-1640(ra) # 80002c24 <consputc>
    80003294:	00002d97          	auipc	s11,0x2
    80003298:	f0cd8d93          	addi	s11,s11,-244 # 800051a0 <digits>
    8000329c:	03ccd793          	srli	a5,s9,0x3c
    800032a0:	00fd87b3          	add	a5,s11,a5
    800032a4:	0007c503          	lbu	a0,0(a5)
    800032a8:	fffd0d1b          	addiw	s10,s10,-1
    800032ac:	004c9c93          	slli	s9,s9,0x4
    800032b0:	00000097          	auipc	ra,0x0
    800032b4:	974080e7          	jalr	-1676(ra) # 80002c24 <consputc>
    800032b8:	fe0d12e3          	bnez	s10,8000329c <__printf+0x494>
    800032bc:	f8dff06f          	j	80003248 <__printf+0x440>
    800032c0:	f7843783          	ld	a5,-136(s0)
    800032c4:	0007bc83          	ld	s9,0(a5)
    800032c8:	00878793          	addi	a5,a5,8
    800032cc:	f6f43c23          	sd	a5,-136(s0)
    800032d0:	000c9a63          	bnez	s9,800032e4 <__printf+0x4dc>
    800032d4:	1080006f          	j	800033dc <__printf+0x5d4>
    800032d8:	001c8c93          	addi	s9,s9,1
    800032dc:	00000097          	auipc	ra,0x0
    800032e0:	948080e7          	jalr	-1720(ra) # 80002c24 <consputc>
    800032e4:	000cc503          	lbu	a0,0(s9)
    800032e8:	fe0518e3          	bnez	a0,800032d8 <__printf+0x4d0>
    800032ec:	f5dff06f          	j	80003248 <__printf+0x440>
    800032f0:	02500513          	li	a0,37
    800032f4:	00000097          	auipc	ra,0x0
    800032f8:	930080e7          	jalr	-1744(ra) # 80002c24 <consputc>
    800032fc:	000c8513          	mv	a0,s9
    80003300:	00000097          	auipc	ra,0x0
    80003304:	924080e7          	jalr	-1756(ra) # 80002c24 <consputc>
    80003308:	f41ff06f          	j	80003248 <__printf+0x440>
    8000330c:	02500513          	li	a0,37
    80003310:	00000097          	auipc	ra,0x0
    80003314:	914080e7          	jalr	-1772(ra) # 80002c24 <consputc>
    80003318:	f31ff06f          	j	80003248 <__printf+0x440>
    8000331c:	00030513          	mv	a0,t1
    80003320:	00000097          	auipc	ra,0x0
    80003324:	7bc080e7          	jalr	1980(ra) # 80003adc <acquire>
    80003328:	b4dff06f          	j	80002e74 <__printf+0x6c>
    8000332c:	40c0053b          	negw	a0,a2
    80003330:	00a00713          	li	a4,10
    80003334:	02e576bb          	remuw	a3,a0,a4
    80003338:	00002d97          	auipc	s11,0x2
    8000333c:	e68d8d93          	addi	s11,s11,-408 # 800051a0 <digits>
    80003340:	ff700593          	li	a1,-9
    80003344:	02069693          	slli	a3,a3,0x20
    80003348:	0206d693          	srli	a3,a3,0x20
    8000334c:	00dd86b3          	add	a3,s11,a3
    80003350:	0006c683          	lbu	a3,0(a3)
    80003354:	02e557bb          	divuw	a5,a0,a4
    80003358:	f8d40023          	sb	a3,-128(s0)
    8000335c:	10b65e63          	bge	a2,a1,80003478 <__printf+0x670>
    80003360:	06300593          	li	a1,99
    80003364:	02e7f6bb          	remuw	a3,a5,a4
    80003368:	02069693          	slli	a3,a3,0x20
    8000336c:	0206d693          	srli	a3,a3,0x20
    80003370:	00dd86b3          	add	a3,s11,a3
    80003374:	0006c683          	lbu	a3,0(a3)
    80003378:	02e7d73b          	divuw	a4,a5,a4
    8000337c:	00200793          	li	a5,2
    80003380:	f8d400a3          	sb	a3,-127(s0)
    80003384:	bca5ece3          	bltu	a1,a0,80002f5c <__printf+0x154>
    80003388:	ce5ff06f          	j	8000306c <__printf+0x264>
    8000338c:	40e007bb          	negw	a5,a4
    80003390:	00002d97          	auipc	s11,0x2
    80003394:	e10d8d93          	addi	s11,s11,-496 # 800051a0 <digits>
    80003398:	00f7f693          	andi	a3,a5,15
    8000339c:	00dd86b3          	add	a3,s11,a3
    800033a0:	0006c583          	lbu	a1,0(a3)
    800033a4:	ff100613          	li	a2,-15
    800033a8:	0047d69b          	srliw	a3,a5,0x4
    800033ac:	f8b40023          	sb	a1,-128(s0)
    800033b0:	0047d59b          	srliw	a1,a5,0x4
    800033b4:	0ac75e63          	bge	a4,a2,80003470 <__printf+0x668>
    800033b8:	00f6f693          	andi	a3,a3,15
    800033bc:	00dd86b3          	add	a3,s11,a3
    800033c0:	0006c603          	lbu	a2,0(a3)
    800033c4:	00f00693          	li	a3,15
    800033c8:	0087d79b          	srliw	a5,a5,0x8
    800033cc:	f8c400a3          	sb	a2,-127(s0)
    800033d0:	d8b6e4e3          	bltu	a3,a1,80003158 <__printf+0x350>
    800033d4:	00200793          	li	a5,2
    800033d8:	e2dff06f          	j	80003204 <__printf+0x3fc>
    800033dc:	00002c97          	auipc	s9,0x2
    800033e0:	da4c8c93          	addi	s9,s9,-604 # 80005180 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    800033e4:	02800513          	li	a0,40
    800033e8:	ef1ff06f          	j	800032d8 <__printf+0x4d0>
    800033ec:	00700793          	li	a5,7
    800033f0:	00600c93          	li	s9,6
    800033f4:	e0dff06f          	j	80003200 <__printf+0x3f8>
    800033f8:	00700793          	li	a5,7
    800033fc:	00600c93          	li	s9,6
    80003400:	c69ff06f          	j	80003068 <__printf+0x260>
    80003404:	00300793          	li	a5,3
    80003408:	00200c93          	li	s9,2
    8000340c:	c5dff06f          	j	80003068 <__printf+0x260>
    80003410:	00300793          	li	a5,3
    80003414:	00200c93          	li	s9,2
    80003418:	de9ff06f          	j	80003200 <__printf+0x3f8>
    8000341c:	00400793          	li	a5,4
    80003420:	00300c93          	li	s9,3
    80003424:	dddff06f          	j	80003200 <__printf+0x3f8>
    80003428:	00400793          	li	a5,4
    8000342c:	00300c93          	li	s9,3
    80003430:	c39ff06f          	j	80003068 <__printf+0x260>
    80003434:	00500793          	li	a5,5
    80003438:	00400c93          	li	s9,4
    8000343c:	c2dff06f          	j	80003068 <__printf+0x260>
    80003440:	00500793          	li	a5,5
    80003444:	00400c93          	li	s9,4
    80003448:	db9ff06f          	j	80003200 <__printf+0x3f8>
    8000344c:	00600793          	li	a5,6
    80003450:	00500c93          	li	s9,5
    80003454:	dadff06f          	j	80003200 <__printf+0x3f8>
    80003458:	00600793          	li	a5,6
    8000345c:	00500c93          	li	s9,5
    80003460:	c09ff06f          	j	80003068 <__printf+0x260>
    80003464:	00800793          	li	a5,8
    80003468:	00700c93          	li	s9,7
    8000346c:	bfdff06f          	j	80003068 <__printf+0x260>
    80003470:	00100793          	li	a5,1
    80003474:	d91ff06f          	j	80003204 <__printf+0x3fc>
    80003478:	00100793          	li	a5,1
    8000347c:	bf1ff06f          	j	8000306c <__printf+0x264>
    80003480:	00900793          	li	a5,9
    80003484:	00800c93          	li	s9,8
    80003488:	be1ff06f          	j	80003068 <__printf+0x260>
    8000348c:	00002517          	auipc	a0,0x2
    80003490:	cfc50513          	addi	a0,a0,-772 # 80005188 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80003494:	00000097          	auipc	ra,0x0
    80003498:	918080e7          	jalr	-1768(ra) # 80002dac <panic>

000000008000349c <printfinit>:
    8000349c:	fe010113          	addi	sp,sp,-32
    800034a0:	00813823          	sd	s0,16(sp)
    800034a4:	00913423          	sd	s1,8(sp)
    800034a8:	00113c23          	sd	ra,24(sp)
    800034ac:	02010413          	addi	s0,sp,32
    800034b0:	00003497          	auipc	s1,0x3
    800034b4:	79048493          	addi	s1,s1,1936 # 80006c40 <pr>
    800034b8:	00048513          	mv	a0,s1
    800034bc:	00002597          	auipc	a1,0x2
    800034c0:	cdc58593          	addi	a1,a1,-804 # 80005198 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    800034c4:	00000097          	auipc	ra,0x0
    800034c8:	5f4080e7          	jalr	1524(ra) # 80003ab8 <initlock>
    800034cc:	01813083          	ld	ra,24(sp)
    800034d0:	01013403          	ld	s0,16(sp)
    800034d4:	0004ac23          	sw	zero,24(s1)
    800034d8:	00813483          	ld	s1,8(sp)
    800034dc:	02010113          	addi	sp,sp,32
    800034e0:	00008067          	ret

00000000800034e4 <uartinit>:
    800034e4:	ff010113          	addi	sp,sp,-16
    800034e8:	00813423          	sd	s0,8(sp)
    800034ec:	01010413          	addi	s0,sp,16
    800034f0:	100007b7          	lui	a5,0x10000
    800034f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800034f8:	f8000713          	li	a4,-128
    800034fc:	00e781a3          	sb	a4,3(a5)
    80003500:	00300713          	li	a4,3
    80003504:	00e78023          	sb	a4,0(a5)
    80003508:	000780a3          	sb	zero,1(a5)
    8000350c:	00e781a3          	sb	a4,3(a5)
    80003510:	00700693          	li	a3,7
    80003514:	00d78123          	sb	a3,2(a5)
    80003518:	00e780a3          	sb	a4,1(a5)
    8000351c:	00813403          	ld	s0,8(sp)
    80003520:	01010113          	addi	sp,sp,16
    80003524:	00008067          	ret

0000000080003528 <uartputc>:
    80003528:	00002797          	auipc	a5,0x2
    8000352c:	4a07a783          	lw	a5,1184(a5) # 800059c8 <panicked>
    80003530:	00078463          	beqz	a5,80003538 <uartputc+0x10>
    80003534:	0000006f          	j	80003534 <uartputc+0xc>
    80003538:	fd010113          	addi	sp,sp,-48
    8000353c:	02813023          	sd	s0,32(sp)
    80003540:	00913c23          	sd	s1,24(sp)
    80003544:	01213823          	sd	s2,16(sp)
    80003548:	01313423          	sd	s3,8(sp)
    8000354c:	02113423          	sd	ra,40(sp)
    80003550:	03010413          	addi	s0,sp,48
    80003554:	00002917          	auipc	s2,0x2
    80003558:	47c90913          	addi	s2,s2,1148 # 800059d0 <uart_tx_r>
    8000355c:	00093783          	ld	a5,0(s2)
    80003560:	00002497          	auipc	s1,0x2
    80003564:	47848493          	addi	s1,s1,1144 # 800059d8 <uart_tx_w>
    80003568:	0004b703          	ld	a4,0(s1)
    8000356c:	02078693          	addi	a3,a5,32
    80003570:	00050993          	mv	s3,a0
    80003574:	02e69c63          	bne	a3,a4,800035ac <uartputc+0x84>
    80003578:	00001097          	auipc	ra,0x1
    8000357c:	834080e7          	jalr	-1996(ra) # 80003dac <push_on>
    80003580:	00093783          	ld	a5,0(s2)
    80003584:	0004b703          	ld	a4,0(s1)
    80003588:	02078793          	addi	a5,a5,32
    8000358c:	00e79463          	bne	a5,a4,80003594 <uartputc+0x6c>
    80003590:	0000006f          	j	80003590 <uartputc+0x68>
    80003594:	00001097          	auipc	ra,0x1
    80003598:	88c080e7          	jalr	-1908(ra) # 80003e20 <pop_on>
    8000359c:	00093783          	ld	a5,0(s2)
    800035a0:	0004b703          	ld	a4,0(s1)
    800035a4:	02078693          	addi	a3,a5,32
    800035a8:	fce688e3          	beq	a3,a4,80003578 <uartputc+0x50>
    800035ac:	01f77693          	andi	a3,a4,31
    800035b0:	00003597          	auipc	a1,0x3
    800035b4:	6b058593          	addi	a1,a1,1712 # 80006c60 <uart_tx_buf>
    800035b8:	00d586b3          	add	a3,a1,a3
    800035bc:	00170713          	addi	a4,a4,1
    800035c0:	01368023          	sb	s3,0(a3)
    800035c4:	00e4b023          	sd	a4,0(s1)
    800035c8:	10000637          	lui	a2,0x10000
    800035cc:	02f71063          	bne	a4,a5,800035ec <uartputc+0xc4>
    800035d0:	0340006f          	j	80003604 <uartputc+0xdc>
    800035d4:	00074703          	lbu	a4,0(a4)
    800035d8:	00f93023          	sd	a5,0(s2)
    800035dc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800035e0:	00093783          	ld	a5,0(s2)
    800035e4:	0004b703          	ld	a4,0(s1)
    800035e8:	00f70e63          	beq	a4,a5,80003604 <uartputc+0xdc>
    800035ec:	00564683          	lbu	a3,5(a2)
    800035f0:	01f7f713          	andi	a4,a5,31
    800035f4:	00e58733          	add	a4,a1,a4
    800035f8:	0206f693          	andi	a3,a3,32
    800035fc:	00178793          	addi	a5,a5,1
    80003600:	fc069ae3          	bnez	a3,800035d4 <uartputc+0xac>
    80003604:	02813083          	ld	ra,40(sp)
    80003608:	02013403          	ld	s0,32(sp)
    8000360c:	01813483          	ld	s1,24(sp)
    80003610:	01013903          	ld	s2,16(sp)
    80003614:	00813983          	ld	s3,8(sp)
    80003618:	03010113          	addi	sp,sp,48
    8000361c:	00008067          	ret

0000000080003620 <uartputc_sync>:
    80003620:	ff010113          	addi	sp,sp,-16
    80003624:	00813423          	sd	s0,8(sp)
    80003628:	01010413          	addi	s0,sp,16
    8000362c:	00002717          	auipc	a4,0x2
    80003630:	39c72703          	lw	a4,924(a4) # 800059c8 <panicked>
    80003634:	02071663          	bnez	a4,80003660 <uartputc_sync+0x40>
    80003638:	00050793          	mv	a5,a0
    8000363c:	100006b7          	lui	a3,0x10000
    80003640:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003644:	02077713          	andi	a4,a4,32
    80003648:	fe070ce3          	beqz	a4,80003640 <uartputc_sync+0x20>
    8000364c:	0ff7f793          	andi	a5,a5,255
    80003650:	00f68023          	sb	a5,0(a3)
    80003654:	00813403          	ld	s0,8(sp)
    80003658:	01010113          	addi	sp,sp,16
    8000365c:	00008067          	ret
    80003660:	0000006f          	j	80003660 <uartputc_sync+0x40>

0000000080003664 <uartstart>:
    80003664:	ff010113          	addi	sp,sp,-16
    80003668:	00813423          	sd	s0,8(sp)
    8000366c:	01010413          	addi	s0,sp,16
    80003670:	00002617          	auipc	a2,0x2
    80003674:	36060613          	addi	a2,a2,864 # 800059d0 <uart_tx_r>
    80003678:	00002517          	auipc	a0,0x2
    8000367c:	36050513          	addi	a0,a0,864 # 800059d8 <uart_tx_w>
    80003680:	00063783          	ld	a5,0(a2)
    80003684:	00053703          	ld	a4,0(a0)
    80003688:	04f70263          	beq	a4,a5,800036cc <uartstart+0x68>
    8000368c:	100005b7          	lui	a1,0x10000
    80003690:	00003817          	auipc	a6,0x3
    80003694:	5d080813          	addi	a6,a6,1488 # 80006c60 <uart_tx_buf>
    80003698:	01c0006f          	j	800036b4 <uartstart+0x50>
    8000369c:	0006c703          	lbu	a4,0(a3)
    800036a0:	00f63023          	sd	a5,0(a2)
    800036a4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800036a8:	00063783          	ld	a5,0(a2)
    800036ac:	00053703          	ld	a4,0(a0)
    800036b0:	00f70e63          	beq	a4,a5,800036cc <uartstart+0x68>
    800036b4:	01f7f713          	andi	a4,a5,31
    800036b8:	00e806b3          	add	a3,a6,a4
    800036bc:	0055c703          	lbu	a4,5(a1)
    800036c0:	00178793          	addi	a5,a5,1
    800036c4:	02077713          	andi	a4,a4,32
    800036c8:	fc071ae3          	bnez	a4,8000369c <uartstart+0x38>
    800036cc:	00813403          	ld	s0,8(sp)
    800036d0:	01010113          	addi	sp,sp,16
    800036d4:	00008067          	ret

00000000800036d8 <uartgetc>:
    800036d8:	ff010113          	addi	sp,sp,-16
    800036dc:	00813423          	sd	s0,8(sp)
    800036e0:	01010413          	addi	s0,sp,16
    800036e4:	10000737          	lui	a4,0x10000
    800036e8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800036ec:	0017f793          	andi	a5,a5,1
    800036f0:	00078c63          	beqz	a5,80003708 <uartgetc+0x30>
    800036f4:	00074503          	lbu	a0,0(a4)
    800036f8:	0ff57513          	andi	a0,a0,255
    800036fc:	00813403          	ld	s0,8(sp)
    80003700:	01010113          	addi	sp,sp,16
    80003704:	00008067          	ret
    80003708:	fff00513          	li	a0,-1
    8000370c:	ff1ff06f          	j	800036fc <uartgetc+0x24>

0000000080003710 <uartintr>:
    80003710:	100007b7          	lui	a5,0x10000
    80003714:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003718:	0017f793          	andi	a5,a5,1
    8000371c:	0a078463          	beqz	a5,800037c4 <uartintr+0xb4>
    80003720:	fe010113          	addi	sp,sp,-32
    80003724:	00813823          	sd	s0,16(sp)
    80003728:	00913423          	sd	s1,8(sp)
    8000372c:	00113c23          	sd	ra,24(sp)
    80003730:	02010413          	addi	s0,sp,32
    80003734:	100004b7          	lui	s1,0x10000
    80003738:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000373c:	0ff57513          	andi	a0,a0,255
    80003740:	fffff097          	auipc	ra,0xfffff
    80003744:	534080e7          	jalr	1332(ra) # 80002c74 <consoleintr>
    80003748:	0054c783          	lbu	a5,5(s1)
    8000374c:	0017f793          	andi	a5,a5,1
    80003750:	fe0794e3          	bnez	a5,80003738 <uartintr+0x28>
    80003754:	00002617          	auipc	a2,0x2
    80003758:	27c60613          	addi	a2,a2,636 # 800059d0 <uart_tx_r>
    8000375c:	00002517          	auipc	a0,0x2
    80003760:	27c50513          	addi	a0,a0,636 # 800059d8 <uart_tx_w>
    80003764:	00063783          	ld	a5,0(a2)
    80003768:	00053703          	ld	a4,0(a0)
    8000376c:	04f70263          	beq	a4,a5,800037b0 <uartintr+0xa0>
    80003770:	100005b7          	lui	a1,0x10000
    80003774:	00003817          	auipc	a6,0x3
    80003778:	4ec80813          	addi	a6,a6,1260 # 80006c60 <uart_tx_buf>
    8000377c:	01c0006f          	j	80003798 <uartintr+0x88>
    80003780:	0006c703          	lbu	a4,0(a3)
    80003784:	00f63023          	sd	a5,0(a2)
    80003788:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000378c:	00063783          	ld	a5,0(a2)
    80003790:	00053703          	ld	a4,0(a0)
    80003794:	00f70e63          	beq	a4,a5,800037b0 <uartintr+0xa0>
    80003798:	01f7f713          	andi	a4,a5,31
    8000379c:	00e806b3          	add	a3,a6,a4
    800037a0:	0055c703          	lbu	a4,5(a1)
    800037a4:	00178793          	addi	a5,a5,1
    800037a8:	02077713          	andi	a4,a4,32
    800037ac:	fc071ae3          	bnez	a4,80003780 <uartintr+0x70>
    800037b0:	01813083          	ld	ra,24(sp)
    800037b4:	01013403          	ld	s0,16(sp)
    800037b8:	00813483          	ld	s1,8(sp)
    800037bc:	02010113          	addi	sp,sp,32
    800037c0:	00008067          	ret
    800037c4:	00002617          	auipc	a2,0x2
    800037c8:	20c60613          	addi	a2,a2,524 # 800059d0 <uart_tx_r>
    800037cc:	00002517          	auipc	a0,0x2
    800037d0:	20c50513          	addi	a0,a0,524 # 800059d8 <uart_tx_w>
    800037d4:	00063783          	ld	a5,0(a2)
    800037d8:	00053703          	ld	a4,0(a0)
    800037dc:	04f70263          	beq	a4,a5,80003820 <uartintr+0x110>
    800037e0:	100005b7          	lui	a1,0x10000
    800037e4:	00003817          	auipc	a6,0x3
    800037e8:	47c80813          	addi	a6,a6,1148 # 80006c60 <uart_tx_buf>
    800037ec:	01c0006f          	j	80003808 <uartintr+0xf8>
    800037f0:	0006c703          	lbu	a4,0(a3)
    800037f4:	00f63023          	sd	a5,0(a2)
    800037f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800037fc:	00063783          	ld	a5,0(a2)
    80003800:	00053703          	ld	a4,0(a0)
    80003804:	02f70063          	beq	a4,a5,80003824 <uartintr+0x114>
    80003808:	01f7f713          	andi	a4,a5,31
    8000380c:	00e806b3          	add	a3,a6,a4
    80003810:	0055c703          	lbu	a4,5(a1)
    80003814:	00178793          	addi	a5,a5,1
    80003818:	02077713          	andi	a4,a4,32
    8000381c:	fc071ae3          	bnez	a4,800037f0 <uartintr+0xe0>
    80003820:	00008067          	ret
    80003824:	00008067          	ret

0000000080003828 <kinit>:
    80003828:	fc010113          	addi	sp,sp,-64
    8000382c:	02913423          	sd	s1,40(sp)
    80003830:	fffff7b7          	lui	a5,0xfffff
    80003834:	00004497          	auipc	s1,0x4
    80003838:	44b48493          	addi	s1,s1,1099 # 80007c7f <end+0xfff>
    8000383c:	02813823          	sd	s0,48(sp)
    80003840:	01313c23          	sd	s3,24(sp)
    80003844:	00f4f4b3          	and	s1,s1,a5
    80003848:	02113c23          	sd	ra,56(sp)
    8000384c:	03213023          	sd	s2,32(sp)
    80003850:	01413823          	sd	s4,16(sp)
    80003854:	01513423          	sd	s5,8(sp)
    80003858:	04010413          	addi	s0,sp,64
    8000385c:	000017b7          	lui	a5,0x1
    80003860:	01100993          	li	s3,17
    80003864:	00f487b3          	add	a5,s1,a5
    80003868:	01b99993          	slli	s3,s3,0x1b
    8000386c:	06f9e063          	bltu	s3,a5,800038cc <kinit+0xa4>
    80003870:	00003a97          	auipc	s5,0x3
    80003874:	410a8a93          	addi	s5,s5,1040 # 80006c80 <end>
    80003878:	0754ec63          	bltu	s1,s5,800038f0 <kinit+0xc8>
    8000387c:	0734fa63          	bgeu	s1,s3,800038f0 <kinit+0xc8>
    80003880:	00088a37          	lui	s4,0x88
    80003884:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003888:	00002917          	auipc	s2,0x2
    8000388c:	15890913          	addi	s2,s2,344 # 800059e0 <kmem>
    80003890:	00ca1a13          	slli	s4,s4,0xc
    80003894:	0140006f          	j	800038a8 <kinit+0x80>
    80003898:	000017b7          	lui	a5,0x1
    8000389c:	00f484b3          	add	s1,s1,a5
    800038a0:	0554e863          	bltu	s1,s5,800038f0 <kinit+0xc8>
    800038a4:	0534f663          	bgeu	s1,s3,800038f0 <kinit+0xc8>
    800038a8:	00001637          	lui	a2,0x1
    800038ac:	00100593          	li	a1,1
    800038b0:	00048513          	mv	a0,s1
    800038b4:	00000097          	auipc	ra,0x0
    800038b8:	5e4080e7          	jalr	1508(ra) # 80003e98 <__memset>
    800038bc:	00093783          	ld	a5,0(s2)
    800038c0:	00f4b023          	sd	a5,0(s1)
    800038c4:	00993023          	sd	s1,0(s2)
    800038c8:	fd4498e3          	bne	s1,s4,80003898 <kinit+0x70>
    800038cc:	03813083          	ld	ra,56(sp)
    800038d0:	03013403          	ld	s0,48(sp)
    800038d4:	02813483          	ld	s1,40(sp)
    800038d8:	02013903          	ld	s2,32(sp)
    800038dc:	01813983          	ld	s3,24(sp)
    800038e0:	01013a03          	ld	s4,16(sp)
    800038e4:	00813a83          	ld	s5,8(sp)
    800038e8:	04010113          	addi	sp,sp,64
    800038ec:	00008067          	ret
    800038f0:	00002517          	auipc	a0,0x2
    800038f4:	8c850513          	addi	a0,a0,-1848 # 800051b8 <digits+0x18>
    800038f8:	fffff097          	auipc	ra,0xfffff
    800038fc:	4b4080e7          	jalr	1204(ra) # 80002dac <panic>

0000000080003900 <freerange>:
    80003900:	fc010113          	addi	sp,sp,-64
    80003904:	000017b7          	lui	a5,0x1
    80003908:	02913423          	sd	s1,40(sp)
    8000390c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003910:	009504b3          	add	s1,a0,s1
    80003914:	fffff537          	lui	a0,0xfffff
    80003918:	02813823          	sd	s0,48(sp)
    8000391c:	02113c23          	sd	ra,56(sp)
    80003920:	03213023          	sd	s2,32(sp)
    80003924:	01313c23          	sd	s3,24(sp)
    80003928:	01413823          	sd	s4,16(sp)
    8000392c:	01513423          	sd	s5,8(sp)
    80003930:	01613023          	sd	s6,0(sp)
    80003934:	04010413          	addi	s0,sp,64
    80003938:	00a4f4b3          	and	s1,s1,a0
    8000393c:	00f487b3          	add	a5,s1,a5
    80003940:	06f5e463          	bltu	a1,a5,800039a8 <freerange+0xa8>
    80003944:	00003a97          	auipc	s5,0x3
    80003948:	33ca8a93          	addi	s5,s5,828 # 80006c80 <end>
    8000394c:	0954e263          	bltu	s1,s5,800039d0 <freerange+0xd0>
    80003950:	01100993          	li	s3,17
    80003954:	01b99993          	slli	s3,s3,0x1b
    80003958:	0734fc63          	bgeu	s1,s3,800039d0 <freerange+0xd0>
    8000395c:	00058a13          	mv	s4,a1
    80003960:	00002917          	auipc	s2,0x2
    80003964:	08090913          	addi	s2,s2,128 # 800059e0 <kmem>
    80003968:	00002b37          	lui	s6,0x2
    8000396c:	0140006f          	j	80003980 <freerange+0x80>
    80003970:	000017b7          	lui	a5,0x1
    80003974:	00f484b3          	add	s1,s1,a5
    80003978:	0554ec63          	bltu	s1,s5,800039d0 <freerange+0xd0>
    8000397c:	0534fa63          	bgeu	s1,s3,800039d0 <freerange+0xd0>
    80003980:	00001637          	lui	a2,0x1
    80003984:	00100593          	li	a1,1
    80003988:	00048513          	mv	a0,s1
    8000398c:	00000097          	auipc	ra,0x0
    80003990:	50c080e7          	jalr	1292(ra) # 80003e98 <__memset>
    80003994:	00093703          	ld	a4,0(s2)
    80003998:	016487b3          	add	a5,s1,s6
    8000399c:	00e4b023          	sd	a4,0(s1)
    800039a0:	00993023          	sd	s1,0(s2)
    800039a4:	fcfa76e3          	bgeu	s4,a5,80003970 <freerange+0x70>
    800039a8:	03813083          	ld	ra,56(sp)
    800039ac:	03013403          	ld	s0,48(sp)
    800039b0:	02813483          	ld	s1,40(sp)
    800039b4:	02013903          	ld	s2,32(sp)
    800039b8:	01813983          	ld	s3,24(sp)
    800039bc:	01013a03          	ld	s4,16(sp)
    800039c0:	00813a83          	ld	s5,8(sp)
    800039c4:	00013b03          	ld	s6,0(sp)
    800039c8:	04010113          	addi	sp,sp,64
    800039cc:	00008067          	ret
    800039d0:	00001517          	auipc	a0,0x1
    800039d4:	7e850513          	addi	a0,a0,2024 # 800051b8 <digits+0x18>
    800039d8:	fffff097          	auipc	ra,0xfffff
    800039dc:	3d4080e7          	jalr	980(ra) # 80002dac <panic>

00000000800039e0 <kfree>:
    800039e0:	fe010113          	addi	sp,sp,-32
    800039e4:	00813823          	sd	s0,16(sp)
    800039e8:	00113c23          	sd	ra,24(sp)
    800039ec:	00913423          	sd	s1,8(sp)
    800039f0:	02010413          	addi	s0,sp,32
    800039f4:	03451793          	slli	a5,a0,0x34
    800039f8:	04079c63          	bnez	a5,80003a50 <kfree+0x70>
    800039fc:	00003797          	auipc	a5,0x3
    80003a00:	28478793          	addi	a5,a5,644 # 80006c80 <end>
    80003a04:	00050493          	mv	s1,a0
    80003a08:	04f56463          	bltu	a0,a5,80003a50 <kfree+0x70>
    80003a0c:	01100793          	li	a5,17
    80003a10:	01b79793          	slli	a5,a5,0x1b
    80003a14:	02f57e63          	bgeu	a0,a5,80003a50 <kfree+0x70>
    80003a18:	00001637          	lui	a2,0x1
    80003a1c:	00100593          	li	a1,1
    80003a20:	00000097          	auipc	ra,0x0
    80003a24:	478080e7          	jalr	1144(ra) # 80003e98 <__memset>
    80003a28:	00002797          	auipc	a5,0x2
    80003a2c:	fb878793          	addi	a5,a5,-72 # 800059e0 <kmem>
    80003a30:	0007b703          	ld	a4,0(a5)
    80003a34:	01813083          	ld	ra,24(sp)
    80003a38:	01013403          	ld	s0,16(sp)
    80003a3c:	00e4b023          	sd	a4,0(s1)
    80003a40:	0097b023          	sd	s1,0(a5)
    80003a44:	00813483          	ld	s1,8(sp)
    80003a48:	02010113          	addi	sp,sp,32
    80003a4c:	00008067          	ret
    80003a50:	00001517          	auipc	a0,0x1
    80003a54:	76850513          	addi	a0,a0,1896 # 800051b8 <digits+0x18>
    80003a58:	fffff097          	auipc	ra,0xfffff
    80003a5c:	354080e7          	jalr	852(ra) # 80002dac <panic>

0000000080003a60 <kalloc>:
    80003a60:	fe010113          	addi	sp,sp,-32
    80003a64:	00813823          	sd	s0,16(sp)
    80003a68:	00913423          	sd	s1,8(sp)
    80003a6c:	00113c23          	sd	ra,24(sp)
    80003a70:	02010413          	addi	s0,sp,32
    80003a74:	00002797          	auipc	a5,0x2
    80003a78:	f6c78793          	addi	a5,a5,-148 # 800059e0 <kmem>
    80003a7c:	0007b483          	ld	s1,0(a5)
    80003a80:	02048063          	beqz	s1,80003aa0 <kalloc+0x40>
    80003a84:	0004b703          	ld	a4,0(s1)
    80003a88:	00001637          	lui	a2,0x1
    80003a8c:	00500593          	li	a1,5
    80003a90:	00048513          	mv	a0,s1
    80003a94:	00e7b023          	sd	a4,0(a5)
    80003a98:	00000097          	auipc	ra,0x0
    80003a9c:	400080e7          	jalr	1024(ra) # 80003e98 <__memset>
    80003aa0:	01813083          	ld	ra,24(sp)
    80003aa4:	01013403          	ld	s0,16(sp)
    80003aa8:	00048513          	mv	a0,s1
    80003aac:	00813483          	ld	s1,8(sp)
    80003ab0:	02010113          	addi	sp,sp,32
    80003ab4:	00008067          	ret

0000000080003ab8 <initlock>:
    80003ab8:	ff010113          	addi	sp,sp,-16
    80003abc:	00813423          	sd	s0,8(sp)
    80003ac0:	01010413          	addi	s0,sp,16
    80003ac4:	00813403          	ld	s0,8(sp)
    80003ac8:	00b53423          	sd	a1,8(a0)
    80003acc:	00052023          	sw	zero,0(a0)
    80003ad0:	00053823          	sd	zero,16(a0)
    80003ad4:	01010113          	addi	sp,sp,16
    80003ad8:	00008067          	ret

0000000080003adc <acquire>:
    80003adc:	fe010113          	addi	sp,sp,-32
    80003ae0:	00813823          	sd	s0,16(sp)
    80003ae4:	00913423          	sd	s1,8(sp)
    80003ae8:	00113c23          	sd	ra,24(sp)
    80003aec:	01213023          	sd	s2,0(sp)
    80003af0:	02010413          	addi	s0,sp,32
    80003af4:	00050493          	mv	s1,a0
    80003af8:	10002973          	csrr	s2,sstatus
    80003afc:	100027f3          	csrr	a5,sstatus
    80003b00:	ffd7f793          	andi	a5,a5,-3
    80003b04:	10079073          	csrw	sstatus,a5
    80003b08:	fffff097          	auipc	ra,0xfffff
    80003b0c:	8e0080e7          	jalr	-1824(ra) # 800023e8 <mycpu>
    80003b10:	07852783          	lw	a5,120(a0)
    80003b14:	06078e63          	beqz	a5,80003b90 <acquire+0xb4>
    80003b18:	fffff097          	auipc	ra,0xfffff
    80003b1c:	8d0080e7          	jalr	-1840(ra) # 800023e8 <mycpu>
    80003b20:	07852783          	lw	a5,120(a0)
    80003b24:	0004a703          	lw	a4,0(s1)
    80003b28:	0017879b          	addiw	a5,a5,1
    80003b2c:	06f52c23          	sw	a5,120(a0)
    80003b30:	04071063          	bnez	a4,80003b70 <acquire+0x94>
    80003b34:	00100713          	li	a4,1
    80003b38:	00070793          	mv	a5,a4
    80003b3c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003b40:	0007879b          	sext.w	a5,a5
    80003b44:	fe079ae3          	bnez	a5,80003b38 <acquire+0x5c>
    80003b48:	0ff0000f          	fence
    80003b4c:	fffff097          	auipc	ra,0xfffff
    80003b50:	89c080e7          	jalr	-1892(ra) # 800023e8 <mycpu>
    80003b54:	01813083          	ld	ra,24(sp)
    80003b58:	01013403          	ld	s0,16(sp)
    80003b5c:	00a4b823          	sd	a0,16(s1)
    80003b60:	00013903          	ld	s2,0(sp)
    80003b64:	00813483          	ld	s1,8(sp)
    80003b68:	02010113          	addi	sp,sp,32
    80003b6c:	00008067          	ret
    80003b70:	0104b903          	ld	s2,16(s1)
    80003b74:	fffff097          	auipc	ra,0xfffff
    80003b78:	874080e7          	jalr	-1932(ra) # 800023e8 <mycpu>
    80003b7c:	faa91ce3          	bne	s2,a0,80003b34 <acquire+0x58>
    80003b80:	00001517          	auipc	a0,0x1
    80003b84:	64050513          	addi	a0,a0,1600 # 800051c0 <digits+0x20>
    80003b88:	fffff097          	auipc	ra,0xfffff
    80003b8c:	224080e7          	jalr	548(ra) # 80002dac <panic>
    80003b90:	00195913          	srli	s2,s2,0x1
    80003b94:	fffff097          	auipc	ra,0xfffff
    80003b98:	854080e7          	jalr	-1964(ra) # 800023e8 <mycpu>
    80003b9c:	00197913          	andi	s2,s2,1
    80003ba0:	07252e23          	sw	s2,124(a0)
    80003ba4:	f75ff06f          	j	80003b18 <acquire+0x3c>

0000000080003ba8 <release>:
    80003ba8:	fe010113          	addi	sp,sp,-32
    80003bac:	00813823          	sd	s0,16(sp)
    80003bb0:	00113c23          	sd	ra,24(sp)
    80003bb4:	00913423          	sd	s1,8(sp)
    80003bb8:	01213023          	sd	s2,0(sp)
    80003bbc:	02010413          	addi	s0,sp,32
    80003bc0:	00052783          	lw	a5,0(a0)
    80003bc4:	00079a63          	bnez	a5,80003bd8 <release+0x30>
    80003bc8:	00001517          	auipc	a0,0x1
    80003bcc:	60050513          	addi	a0,a0,1536 # 800051c8 <digits+0x28>
    80003bd0:	fffff097          	auipc	ra,0xfffff
    80003bd4:	1dc080e7          	jalr	476(ra) # 80002dac <panic>
    80003bd8:	01053903          	ld	s2,16(a0)
    80003bdc:	00050493          	mv	s1,a0
    80003be0:	fffff097          	auipc	ra,0xfffff
    80003be4:	808080e7          	jalr	-2040(ra) # 800023e8 <mycpu>
    80003be8:	fea910e3          	bne	s2,a0,80003bc8 <release+0x20>
    80003bec:	0004b823          	sd	zero,16(s1)
    80003bf0:	0ff0000f          	fence
    80003bf4:	0f50000f          	fence	iorw,ow
    80003bf8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003bfc:	ffffe097          	auipc	ra,0xffffe
    80003c00:	7ec080e7          	jalr	2028(ra) # 800023e8 <mycpu>
    80003c04:	100027f3          	csrr	a5,sstatus
    80003c08:	0027f793          	andi	a5,a5,2
    80003c0c:	04079a63          	bnez	a5,80003c60 <release+0xb8>
    80003c10:	07852783          	lw	a5,120(a0)
    80003c14:	02f05e63          	blez	a5,80003c50 <release+0xa8>
    80003c18:	fff7871b          	addiw	a4,a5,-1
    80003c1c:	06e52c23          	sw	a4,120(a0)
    80003c20:	00071c63          	bnez	a4,80003c38 <release+0x90>
    80003c24:	07c52783          	lw	a5,124(a0)
    80003c28:	00078863          	beqz	a5,80003c38 <release+0x90>
    80003c2c:	100027f3          	csrr	a5,sstatus
    80003c30:	0027e793          	ori	a5,a5,2
    80003c34:	10079073          	csrw	sstatus,a5
    80003c38:	01813083          	ld	ra,24(sp)
    80003c3c:	01013403          	ld	s0,16(sp)
    80003c40:	00813483          	ld	s1,8(sp)
    80003c44:	00013903          	ld	s2,0(sp)
    80003c48:	02010113          	addi	sp,sp,32
    80003c4c:	00008067          	ret
    80003c50:	00001517          	auipc	a0,0x1
    80003c54:	59850513          	addi	a0,a0,1432 # 800051e8 <digits+0x48>
    80003c58:	fffff097          	auipc	ra,0xfffff
    80003c5c:	154080e7          	jalr	340(ra) # 80002dac <panic>
    80003c60:	00001517          	auipc	a0,0x1
    80003c64:	57050513          	addi	a0,a0,1392 # 800051d0 <digits+0x30>
    80003c68:	fffff097          	auipc	ra,0xfffff
    80003c6c:	144080e7          	jalr	324(ra) # 80002dac <panic>

0000000080003c70 <holding>:
    80003c70:	00052783          	lw	a5,0(a0)
    80003c74:	00079663          	bnez	a5,80003c80 <holding+0x10>
    80003c78:	00000513          	li	a0,0
    80003c7c:	00008067          	ret
    80003c80:	fe010113          	addi	sp,sp,-32
    80003c84:	00813823          	sd	s0,16(sp)
    80003c88:	00913423          	sd	s1,8(sp)
    80003c8c:	00113c23          	sd	ra,24(sp)
    80003c90:	02010413          	addi	s0,sp,32
    80003c94:	01053483          	ld	s1,16(a0)
    80003c98:	ffffe097          	auipc	ra,0xffffe
    80003c9c:	750080e7          	jalr	1872(ra) # 800023e8 <mycpu>
    80003ca0:	01813083          	ld	ra,24(sp)
    80003ca4:	01013403          	ld	s0,16(sp)
    80003ca8:	40a48533          	sub	a0,s1,a0
    80003cac:	00153513          	seqz	a0,a0
    80003cb0:	00813483          	ld	s1,8(sp)
    80003cb4:	02010113          	addi	sp,sp,32
    80003cb8:	00008067          	ret

0000000080003cbc <push_off>:
    80003cbc:	fe010113          	addi	sp,sp,-32
    80003cc0:	00813823          	sd	s0,16(sp)
    80003cc4:	00113c23          	sd	ra,24(sp)
    80003cc8:	00913423          	sd	s1,8(sp)
    80003ccc:	02010413          	addi	s0,sp,32
    80003cd0:	100024f3          	csrr	s1,sstatus
    80003cd4:	100027f3          	csrr	a5,sstatus
    80003cd8:	ffd7f793          	andi	a5,a5,-3
    80003cdc:	10079073          	csrw	sstatus,a5
    80003ce0:	ffffe097          	auipc	ra,0xffffe
    80003ce4:	708080e7          	jalr	1800(ra) # 800023e8 <mycpu>
    80003ce8:	07852783          	lw	a5,120(a0)
    80003cec:	02078663          	beqz	a5,80003d18 <push_off+0x5c>
    80003cf0:	ffffe097          	auipc	ra,0xffffe
    80003cf4:	6f8080e7          	jalr	1784(ra) # 800023e8 <mycpu>
    80003cf8:	07852783          	lw	a5,120(a0)
    80003cfc:	01813083          	ld	ra,24(sp)
    80003d00:	01013403          	ld	s0,16(sp)
    80003d04:	0017879b          	addiw	a5,a5,1
    80003d08:	06f52c23          	sw	a5,120(a0)
    80003d0c:	00813483          	ld	s1,8(sp)
    80003d10:	02010113          	addi	sp,sp,32
    80003d14:	00008067          	ret
    80003d18:	0014d493          	srli	s1,s1,0x1
    80003d1c:	ffffe097          	auipc	ra,0xffffe
    80003d20:	6cc080e7          	jalr	1740(ra) # 800023e8 <mycpu>
    80003d24:	0014f493          	andi	s1,s1,1
    80003d28:	06952e23          	sw	s1,124(a0)
    80003d2c:	fc5ff06f          	j	80003cf0 <push_off+0x34>

0000000080003d30 <pop_off>:
    80003d30:	ff010113          	addi	sp,sp,-16
    80003d34:	00813023          	sd	s0,0(sp)
    80003d38:	00113423          	sd	ra,8(sp)
    80003d3c:	01010413          	addi	s0,sp,16
    80003d40:	ffffe097          	auipc	ra,0xffffe
    80003d44:	6a8080e7          	jalr	1704(ra) # 800023e8 <mycpu>
    80003d48:	100027f3          	csrr	a5,sstatus
    80003d4c:	0027f793          	andi	a5,a5,2
    80003d50:	04079663          	bnez	a5,80003d9c <pop_off+0x6c>
    80003d54:	07852783          	lw	a5,120(a0)
    80003d58:	02f05a63          	blez	a5,80003d8c <pop_off+0x5c>
    80003d5c:	fff7871b          	addiw	a4,a5,-1
    80003d60:	06e52c23          	sw	a4,120(a0)
    80003d64:	00071c63          	bnez	a4,80003d7c <pop_off+0x4c>
    80003d68:	07c52783          	lw	a5,124(a0)
    80003d6c:	00078863          	beqz	a5,80003d7c <pop_off+0x4c>
    80003d70:	100027f3          	csrr	a5,sstatus
    80003d74:	0027e793          	ori	a5,a5,2
    80003d78:	10079073          	csrw	sstatus,a5
    80003d7c:	00813083          	ld	ra,8(sp)
    80003d80:	00013403          	ld	s0,0(sp)
    80003d84:	01010113          	addi	sp,sp,16
    80003d88:	00008067          	ret
    80003d8c:	00001517          	auipc	a0,0x1
    80003d90:	45c50513          	addi	a0,a0,1116 # 800051e8 <digits+0x48>
    80003d94:	fffff097          	auipc	ra,0xfffff
    80003d98:	018080e7          	jalr	24(ra) # 80002dac <panic>
    80003d9c:	00001517          	auipc	a0,0x1
    80003da0:	43450513          	addi	a0,a0,1076 # 800051d0 <digits+0x30>
    80003da4:	fffff097          	auipc	ra,0xfffff
    80003da8:	008080e7          	jalr	8(ra) # 80002dac <panic>

0000000080003dac <push_on>:
    80003dac:	fe010113          	addi	sp,sp,-32
    80003db0:	00813823          	sd	s0,16(sp)
    80003db4:	00113c23          	sd	ra,24(sp)
    80003db8:	00913423          	sd	s1,8(sp)
    80003dbc:	02010413          	addi	s0,sp,32
    80003dc0:	100024f3          	csrr	s1,sstatus
    80003dc4:	100027f3          	csrr	a5,sstatus
    80003dc8:	0027e793          	ori	a5,a5,2
    80003dcc:	10079073          	csrw	sstatus,a5
    80003dd0:	ffffe097          	auipc	ra,0xffffe
    80003dd4:	618080e7          	jalr	1560(ra) # 800023e8 <mycpu>
    80003dd8:	07852783          	lw	a5,120(a0)
    80003ddc:	02078663          	beqz	a5,80003e08 <push_on+0x5c>
    80003de0:	ffffe097          	auipc	ra,0xffffe
    80003de4:	608080e7          	jalr	1544(ra) # 800023e8 <mycpu>
    80003de8:	07852783          	lw	a5,120(a0)
    80003dec:	01813083          	ld	ra,24(sp)
    80003df0:	01013403          	ld	s0,16(sp)
    80003df4:	0017879b          	addiw	a5,a5,1
    80003df8:	06f52c23          	sw	a5,120(a0)
    80003dfc:	00813483          	ld	s1,8(sp)
    80003e00:	02010113          	addi	sp,sp,32
    80003e04:	00008067          	ret
    80003e08:	0014d493          	srli	s1,s1,0x1
    80003e0c:	ffffe097          	auipc	ra,0xffffe
    80003e10:	5dc080e7          	jalr	1500(ra) # 800023e8 <mycpu>
    80003e14:	0014f493          	andi	s1,s1,1
    80003e18:	06952e23          	sw	s1,124(a0)
    80003e1c:	fc5ff06f          	j	80003de0 <push_on+0x34>

0000000080003e20 <pop_on>:
    80003e20:	ff010113          	addi	sp,sp,-16
    80003e24:	00813023          	sd	s0,0(sp)
    80003e28:	00113423          	sd	ra,8(sp)
    80003e2c:	01010413          	addi	s0,sp,16
    80003e30:	ffffe097          	auipc	ra,0xffffe
    80003e34:	5b8080e7          	jalr	1464(ra) # 800023e8 <mycpu>
    80003e38:	100027f3          	csrr	a5,sstatus
    80003e3c:	0027f793          	andi	a5,a5,2
    80003e40:	04078463          	beqz	a5,80003e88 <pop_on+0x68>
    80003e44:	07852783          	lw	a5,120(a0)
    80003e48:	02f05863          	blez	a5,80003e78 <pop_on+0x58>
    80003e4c:	fff7879b          	addiw	a5,a5,-1
    80003e50:	06f52c23          	sw	a5,120(a0)
    80003e54:	07853783          	ld	a5,120(a0)
    80003e58:	00079863          	bnez	a5,80003e68 <pop_on+0x48>
    80003e5c:	100027f3          	csrr	a5,sstatus
    80003e60:	ffd7f793          	andi	a5,a5,-3
    80003e64:	10079073          	csrw	sstatus,a5
    80003e68:	00813083          	ld	ra,8(sp)
    80003e6c:	00013403          	ld	s0,0(sp)
    80003e70:	01010113          	addi	sp,sp,16
    80003e74:	00008067          	ret
    80003e78:	00001517          	auipc	a0,0x1
    80003e7c:	39850513          	addi	a0,a0,920 # 80005210 <digits+0x70>
    80003e80:	fffff097          	auipc	ra,0xfffff
    80003e84:	f2c080e7          	jalr	-212(ra) # 80002dac <panic>
    80003e88:	00001517          	auipc	a0,0x1
    80003e8c:	36850513          	addi	a0,a0,872 # 800051f0 <digits+0x50>
    80003e90:	fffff097          	auipc	ra,0xfffff
    80003e94:	f1c080e7          	jalr	-228(ra) # 80002dac <panic>

0000000080003e98 <__memset>:
    80003e98:	ff010113          	addi	sp,sp,-16
    80003e9c:	00813423          	sd	s0,8(sp)
    80003ea0:	01010413          	addi	s0,sp,16
    80003ea4:	1a060e63          	beqz	a2,80004060 <__memset+0x1c8>
    80003ea8:	40a007b3          	neg	a5,a0
    80003eac:	0077f793          	andi	a5,a5,7
    80003eb0:	00778693          	addi	a3,a5,7
    80003eb4:	00b00813          	li	a6,11
    80003eb8:	0ff5f593          	andi	a1,a1,255
    80003ebc:	fff6071b          	addiw	a4,a2,-1
    80003ec0:	1b06e663          	bltu	a3,a6,8000406c <__memset+0x1d4>
    80003ec4:	1cd76463          	bltu	a4,a3,8000408c <__memset+0x1f4>
    80003ec8:	1a078e63          	beqz	a5,80004084 <__memset+0x1ec>
    80003ecc:	00b50023          	sb	a1,0(a0)
    80003ed0:	00100713          	li	a4,1
    80003ed4:	1ae78463          	beq	a5,a4,8000407c <__memset+0x1e4>
    80003ed8:	00b500a3          	sb	a1,1(a0)
    80003edc:	00200713          	li	a4,2
    80003ee0:	1ae78a63          	beq	a5,a4,80004094 <__memset+0x1fc>
    80003ee4:	00b50123          	sb	a1,2(a0)
    80003ee8:	00300713          	li	a4,3
    80003eec:	18e78463          	beq	a5,a4,80004074 <__memset+0x1dc>
    80003ef0:	00b501a3          	sb	a1,3(a0)
    80003ef4:	00400713          	li	a4,4
    80003ef8:	1ae78263          	beq	a5,a4,8000409c <__memset+0x204>
    80003efc:	00b50223          	sb	a1,4(a0)
    80003f00:	00500713          	li	a4,5
    80003f04:	1ae78063          	beq	a5,a4,800040a4 <__memset+0x20c>
    80003f08:	00b502a3          	sb	a1,5(a0)
    80003f0c:	00700713          	li	a4,7
    80003f10:	18e79e63          	bne	a5,a4,800040ac <__memset+0x214>
    80003f14:	00b50323          	sb	a1,6(a0)
    80003f18:	00700e93          	li	t4,7
    80003f1c:	00859713          	slli	a4,a1,0x8
    80003f20:	00e5e733          	or	a4,a1,a4
    80003f24:	01059e13          	slli	t3,a1,0x10
    80003f28:	01c76e33          	or	t3,a4,t3
    80003f2c:	01859313          	slli	t1,a1,0x18
    80003f30:	006e6333          	or	t1,t3,t1
    80003f34:	02059893          	slli	a7,a1,0x20
    80003f38:	40f60e3b          	subw	t3,a2,a5
    80003f3c:	011368b3          	or	a7,t1,a7
    80003f40:	02859813          	slli	a6,a1,0x28
    80003f44:	0108e833          	or	a6,a7,a6
    80003f48:	03059693          	slli	a3,a1,0x30
    80003f4c:	003e589b          	srliw	a7,t3,0x3
    80003f50:	00d866b3          	or	a3,a6,a3
    80003f54:	03859713          	slli	a4,a1,0x38
    80003f58:	00389813          	slli	a6,a7,0x3
    80003f5c:	00f507b3          	add	a5,a0,a5
    80003f60:	00e6e733          	or	a4,a3,a4
    80003f64:	000e089b          	sext.w	a7,t3
    80003f68:	00f806b3          	add	a3,a6,a5
    80003f6c:	00e7b023          	sd	a4,0(a5)
    80003f70:	00878793          	addi	a5,a5,8
    80003f74:	fed79ce3          	bne	a5,a3,80003f6c <__memset+0xd4>
    80003f78:	ff8e7793          	andi	a5,t3,-8
    80003f7c:	0007871b          	sext.w	a4,a5
    80003f80:	01d787bb          	addw	a5,a5,t4
    80003f84:	0ce88e63          	beq	a7,a4,80004060 <__memset+0x1c8>
    80003f88:	00f50733          	add	a4,a0,a5
    80003f8c:	00b70023          	sb	a1,0(a4)
    80003f90:	0017871b          	addiw	a4,a5,1
    80003f94:	0cc77663          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80003f98:	00e50733          	add	a4,a0,a4
    80003f9c:	00b70023          	sb	a1,0(a4)
    80003fa0:	0027871b          	addiw	a4,a5,2
    80003fa4:	0ac77e63          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80003fa8:	00e50733          	add	a4,a0,a4
    80003fac:	00b70023          	sb	a1,0(a4)
    80003fb0:	0037871b          	addiw	a4,a5,3
    80003fb4:	0ac77663          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80003fb8:	00e50733          	add	a4,a0,a4
    80003fbc:	00b70023          	sb	a1,0(a4)
    80003fc0:	0047871b          	addiw	a4,a5,4
    80003fc4:	08c77e63          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80003fc8:	00e50733          	add	a4,a0,a4
    80003fcc:	00b70023          	sb	a1,0(a4)
    80003fd0:	0057871b          	addiw	a4,a5,5
    80003fd4:	08c77663          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80003fd8:	00e50733          	add	a4,a0,a4
    80003fdc:	00b70023          	sb	a1,0(a4)
    80003fe0:	0067871b          	addiw	a4,a5,6
    80003fe4:	06c77e63          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80003fe8:	00e50733          	add	a4,a0,a4
    80003fec:	00b70023          	sb	a1,0(a4)
    80003ff0:	0077871b          	addiw	a4,a5,7
    80003ff4:	06c77663          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80003ff8:	00e50733          	add	a4,a0,a4
    80003ffc:	00b70023          	sb	a1,0(a4)
    80004000:	0087871b          	addiw	a4,a5,8
    80004004:	04c77e63          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80004008:	00e50733          	add	a4,a0,a4
    8000400c:	00b70023          	sb	a1,0(a4)
    80004010:	0097871b          	addiw	a4,a5,9
    80004014:	04c77663          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80004018:	00e50733          	add	a4,a0,a4
    8000401c:	00b70023          	sb	a1,0(a4)
    80004020:	00a7871b          	addiw	a4,a5,10
    80004024:	02c77e63          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80004028:	00e50733          	add	a4,a0,a4
    8000402c:	00b70023          	sb	a1,0(a4)
    80004030:	00b7871b          	addiw	a4,a5,11
    80004034:	02c77663          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80004038:	00e50733          	add	a4,a0,a4
    8000403c:	00b70023          	sb	a1,0(a4)
    80004040:	00c7871b          	addiw	a4,a5,12
    80004044:	00c77e63          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80004048:	00e50733          	add	a4,a0,a4
    8000404c:	00b70023          	sb	a1,0(a4)
    80004050:	00d7879b          	addiw	a5,a5,13
    80004054:	00c7f663          	bgeu	a5,a2,80004060 <__memset+0x1c8>
    80004058:	00f507b3          	add	a5,a0,a5
    8000405c:	00b78023          	sb	a1,0(a5)
    80004060:	00813403          	ld	s0,8(sp)
    80004064:	01010113          	addi	sp,sp,16
    80004068:	00008067          	ret
    8000406c:	00b00693          	li	a3,11
    80004070:	e55ff06f          	j	80003ec4 <__memset+0x2c>
    80004074:	00300e93          	li	t4,3
    80004078:	ea5ff06f          	j	80003f1c <__memset+0x84>
    8000407c:	00100e93          	li	t4,1
    80004080:	e9dff06f          	j	80003f1c <__memset+0x84>
    80004084:	00000e93          	li	t4,0
    80004088:	e95ff06f          	j	80003f1c <__memset+0x84>
    8000408c:	00000793          	li	a5,0
    80004090:	ef9ff06f          	j	80003f88 <__memset+0xf0>
    80004094:	00200e93          	li	t4,2
    80004098:	e85ff06f          	j	80003f1c <__memset+0x84>
    8000409c:	00400e93          	li	t4,4
    800040a0:	e7dff06f          	j	80003f1c <__memset+0x84>
    800040a4:	00500e93          	li	t4,5
    800040a8:	e75ff06f          	j	80003f1c <__memset+0x84>
    800040ac:	00600e93          	li	t4,6
    800040b0:	e6dff06f          	j	80003f1c <__memset+0x84>

00000000800040b4 <__memmove>:
    800040b4:	ff010113          	addi	sp,sp,-16
    800040b8:	00813423          	sd	s0,8(sp)
    800040bc:	01010413          	addi	s0,sp,16
    800040c0:	0e060863          	beqz	a2,800041b0 <__memmove+0xfc>
    800040c4:	fff6069b          	addiw	a3,a2,-1
    800040c8:	0006881b          	sext.w	a6,a3
    800040cc:	0ea5e863          	bltu	a1,a0,800041bc <__memmove+0x108>
    800040d0:	00758713          	addi	a4,a1,7
    800040d4:	00a5e7b3          	or	a5,a1,a0
    800040d8:	40a70733          	sub	a4,a4,a0
    800040dc:	0077f793          	andi	a5,a5,7
    800040e0:	00f73713          	sltiu	a4,a4,15
    800040e4:	00174713          	xori	a4,a4,1
    800040e8:	0017b793          	seqz	a5,a5
    800040ec:	00e7f7b3          	and	a5,a5,a4
    800040f0:	10078863          	beqz	a5,80004200 <__memmove+0x14c>
    800040f4:	00900793          	li	a5,9
    800040f8:	1107f463          	bgeu	a5,a6,80004200 <__memmove+0x14c>
    800040fc:	0036581b          	srliw	a6,a2,0x3
    80004100:	fff8081b          	addiw	a6,a6,-1
    80004104:	02081813          	slli	a6,a6,0x20
    80004108:	01d85893          	srli	a7,a6,0x1d
    8000410c:	00858813          	addi	a6,a1,8
    80004110:	00058793          	mv	a5,a1
    80004114:	00050713          	mv	a4,a0
    80004118:	01088833          	add	a6,a7,a6
    8000411c:	0007b883          	ld	a7,0(a5)
    80004120:	00878793          	addi	a5,a5,8
    80004124:	00870713          	addi	a4,a4,8
    80004128:	ff173c23          	sd	a7,-8(a4)
    8000412c:	ff0798e3          	bne	a5,a6,8000411c <__memmove+0x68>
    80004130:	ff867713          	andi	a4,a2,-8
    80004134:	02071793          	slli	a5,a4,0x20
    80004138:	0207d793          	srli	a5,a5,0x20
    8000413c:	00f585b3          	add	a1,a1,a5
    80004140:	40e686bb          	subw	a3,a3,a4
    80004144:	00f507b3          	add	a5,a0,a5
    80004148:	06e60463          	beq	a2,a4,800041b0 <__memmove+0xfc>
    8000414c:	0005c703          	lbu	a4,0(a1)
    80004150:	00e78023          	sb	a4,0(a5)
    80004154:	04068e63          	beqz	a3,800041b0 <__memmove+0xfc>
    80004158:	0015c603          	lbu	a2,1(a1)
    8000415c:	00100713          	li	a4,1
    80004160:	00c780a3          	sb	a2,1(a5)
    80004164:	04e68663          	beq	a3,a4,800041b0 <__memmove+0xfc>
    80004168:	0025c603          	lbu	a2,2(a1)
    8000416c:	00200713          	li	a4,2
    80004170:	00c78123          	sb	a2,2(a5)
    80004174:	02e68e63          	beq	a3,a4,800041b0 <__memmove+0xfc>
    80004178:	0035c603          	lbu	a2,3(a1)
    8000417c:	00300713          	li	a4,3
    80004180:	00c781a3          	sb	a2,3(a5)
    80004184:	02e68663          	beq	a3,a4,800041b0 <__memmove+0xfc>
    80004188:	0045c603          	lbu	a2,4(a1)
    8000418c:	00400713          	li	a4,4
    80004190:	00c78223          	sb	a2,4(a5)
    80004194:	00e68e63          	beq	a3,a4,800041b0 <__memmove+0xfc>
    80004198:	0055c603          	lbu	a2,5(a1)
    8000419c:	00500713          	li	a4,5
    800041a0:	00c782a3          	sb	a2,5(a5)
    800041a4:	00e68663          	beq	a3,a4,800041b0 <__memmove+0xfc>
    800041a8:	0065c703          	lbu	a4,6(a1)
    800041ac:	00e78323          	sb	a4,6(a5)
    800041b0:	00813403          	ld	s0,8(sp)
    800041b4:	01010113          	addi	sp,sp,16
    800041b8:	00008067          	ret
    800041bc:	02061713          	slli	a4,a2,0x20
    800041c0:	02075713          	srli	a4,a4,0x20
    800041c4:	00e587b3          	add	a5,a1,a4
    800041c8:	f0f574e3          	bgeu	a0,a5,800040d0 <__memmove+0x1c>
    800041cc:	02069613          	slli	a2,a3,0x20
    800041d0:	02065613          	srli	a2,a2,0x20
    800041d4:	fff64613          	not	a2,a2
    800041d8:	00e50733          	add	a4,a0,a4
    800041dc:	00c78633          	add	a2,a5,a2
    800041e0:	fff7c683          	lbu	a3,-1(a5)
    800041e4:	fff78793          	addi	a5,a5,-1
    800041e8:	fff70713          	addi	a4,a4,-1
    800041ec:	00d70023          	sb	a3,0(a4)
    800041f0:	fec798e3          	bne	a5,a2,800041e0 <__memmove+0x12c>
    800041f4:	00813403          	ld	s0,8(sp)
    800041f8:	01010113          	addi	sp,sp,16
    800041fc:	00008067          	ret
    80004200:	02069713          	slli	a4,a3,0x20
    80004204:	02075713          	srli	a4,a4,0x20
    80004208:	00170713          	addi	a4,a4,1
    8000420c:	00e50733          	add	a4,a0,a4
    80004210:	00050793          	mv	a5,a0
    80004214:	0005c683          	lbu	a3,0(a1)
    80004218:	00178793          	addi	a5,a5,1
    8000421c:	00158593          	addi	a1,a1,1
    80004220:	fed78fa3          	sb	a3,-1(a5)
    80004224:	fee798e3          	bne	a5,a4,80004214 <__memmove+0x160>
    80004228:	f89ff06f          	j	800041b0 <__memmove+0xfc>

000000008000422c <__putc>:
    8000422c:	fe010113          	addi	sp,sp,-32
    80004230:	00813823          	sd	s0,16(sp)
    80004234:	00113c23          	sd	ra,24(sp)
    80004238:	02010413          	addi	s0,sp,32
    8000423c:	00050793          	mv	a5,a0
    80004240:	fef40593          	addi	a1,s0,-17
    80004244:	00100613          	li	a2,1
    80004248:	00000513          	li	a0,0
    8000424c:	fef407a3          	sb	a5,-17(s0)
    80004250:	fffff097          	auipc	ra,0xfffff
    80004254:	b3c080e7          	jalr	-1220(ra) # 80002d8c <console_write>
    80004258:	01813083          	ld	ra,24(sp)
    8000425c:	01013403          	ld	s0,16(sp)
    80004260:	02010113          	addi	sp,sp,32
    80004264:	00008067          	ret

0000000080004268 <__getc>:
    80004268:	fe010113          	addi	sp,sp,-32
    8000426c:	00813823          	sd	s0,16(sp)
    80004270:	00113c23          	sd	ra,24(sp)
    80004274:	02010413          	addi	s0,sp,32
    80004278:	fe840593          	addi	a1,s0,-24
    8000427c:	00100613          	li	a2,1
    80004280:	00000513          	li	a0,0
    80004284:	fffff097          	auipc	ra,0xfffff
    80004288:	ae8080e7          	jalr	-1304(ra) # 80002d6c <console_read>
    8000428c:	fe844503          	lbu	a0,-24(s0)
    80004290:	01813083          	ld	ra,24(sp)
    80004294:	01013403          	ld	s0,16(sp)
    80004298:	02010113          	addi	sp,sp,32
    8000429c:	00008067          	ret

00000000800042a0 <console_handler>:
    800042a0:	fe010113          	addi	sp,sp,-32
    800042a4:	00813823          	sd	s0,16(sp)
    800042a8:	00113c23          	sd	ra,24(sp)
    800042ac:	00913423          	sd	s1,8(sp)
    800042b0:	02010413          	addi	s0,sp,32
    800042b4:	14202773          	csrr	a4,scause
    800042b8:	100027f3          	csrr	a5,sstatus
    800042bc:	0027f793          	andi	a5,a5,2
    800042c0:	06079e63          	bnez	a5,8000433c <console_handler+0x9c>
    800042c4:	00074c63          	bltz	a4,800042dc <console_handler+0x3c>
    800042c8:	01813083          	ld	ra,24(sp)
    800042cc:	01013403          	ld	s0,16(sp)
    800042d0:	00813483          	ld	s1,8(sp)
    800042d4:	02010113          	addi	sp,sp,32
    800042d8:	00008067          	ret
    800042dc:	0ff77713          	andi	a4,a4,255
    800042e0:	00900793          	li	a5,9
    800042e4:	fef712e3          	bne	a4,a5,800042c8 <console_handler+0x28>
    800042e8:	ffffe097          	auipc	ra,0xffffe
    800042ec:	6dc080e7          	jalr	1756(ra) # 800029c4 <plic_claim>
    800042f0:	00a00793          	li	a5,10
    800042f4:	00050493          	mv	s1,a0
    800042f8:	02f50c63          	beq	a0,a5,80004330 <console_handler+0x90>
    800042fc:	fc0506e3          	beqz	a0,800042c8 <console_handler+0x28>
    80004300:	00050593          	mv	a1,a0
    80004304:	00001517          	auipc	a0,0x1
    80004308:	e1450513          	addi	a0,a0,-492 # 80005118 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    8000430c:	fffff097          	auipc	ra,0xfffff
    80004310:	afc080e7          	jalr	-1284(ra) # 80002e08 <__printf>
    80004314:	01013403          	ld	s0,16(sp)
    80004318:	01813083          	ld	ra,24(sp)
    8000431c:	00048513          	mv	a0,s1
    80004320:	00813483          	ld	s1,8(sp)
    80004324:	02010113          	addi	sp,sp,32
    80004328:	ffffe317          	auipc	t1,0xffffe
    8000432c:	6d430067          	jr	1748(t1) # 800029fc <plic_complete>
    80004330:	fffff097          	auipc	ra,0xfffff
    80004334:	3e0080e7          	jalr	992(ra) # 80003710 <uartintr>
    80004338:	fddff06f          	j	80004314 <console_handler+0x74>
    8000433c:	00001517          	auipc	a0,0x1
    80004340:	edc50513          	addi	a0,a0,-292 # 80005218 <digits+0x78>
    80004344:	fffff097          	auipc	ra,0xfffff
    80004348:	a68080e7          	jalr	-1432(ra) # 80002dac <panic>
	...
