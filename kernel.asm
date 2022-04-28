
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	88813103          	ld	sp,-1912(sp) # 80005888 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	625010ef          	jal	ra,80001e40 <start>

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
    80001080:	035000ef          	jal	ra,800018b4 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001304:	468080e7          	jalr	1128(ra) # 80001768 <_ZN5Riscv10popSppSpieEv>
   running->body(running->args);
    80001308:	00004497          	auipc	s1,0x4
    8000130c:	5e848493          	addi	s1,s1,1512 # 800058f0 <_ZN3PCB7runningE>
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
    800013e0:	5144b483          	ld	s1,1300(s1) # 800058f0 <_ZN3PCB7runningE>
    if(!old->finished) Scheduler::put(old);
    800013e4:	0304c783          	lbu	a5,48(s1)
    800013e8:	04078063          	beqz	a5,80001428 <_ZN3PCB8dispatchEv+0x68>
    running = Scheduler::get();
    800013ec:	00000097          	auipc	ra,0x0
    800013f0:	11c080e7          	jalr	284(ra) # 80001508 <_ZN9Scheduler3getEv>
    800013f4:	00004797          	auipc	a5,0x4
    800013f8:	4ea7be23          	sd	a0,1276(a5) # 800058f0 <_ZN3PCB7runningE>

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
    8000144c:	9a8080e7          	jalr	-1624(ra) # 80001df0 <_Z7kmallocm>
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
    80001474:	9a8080e7          	jalr	-1624(ra) # 80001e18 <_Z5kfreePv>
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
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	7c0080e7          	jalr	1984(ra) # 80001c74 <_ZN15MemoryAllocator9mem_allocEm>
    800014bc:	00004797          	auipc	a5,0x4
    800014c0:	44a7b223          	sd	a0,1092(a5) # 80005900 <_ZN9Scheduler8queuePCBE>
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
    800014ec:	41853503          	ld	a0,1048(a0) # 80005900 <_ZN9Scheduler8queuePCBE>
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
    80001524:	3e093903          	ld	s2,992(s2) # 80005900 <_ZN9Scheduler8queuePCBE>
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
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	6c4080e7          	jalr	1732(ra) # 80001c74 <_ZN15MemoryAllocator9mem_allocEm>
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
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	79c080e7          	jalr	1948(ra) # 80001dc8 <_ZN15MemoryAllocator8mem_freeEPv>
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
#include "../h/syscall_cpp.h"
#include "../lib/console.h"
#include "../h/Riscv.h"

void main()
{
    80001660:	ff010113          	addi	sp,sp,-16
    80001664:	00113423          	sd	ra,8(sp)
    80001668:	00813023          	sd	s0,0(sp)
    8000166c:	01010413          	addi	s0,sp,16
    Riscv::initSystem();
    80001670:	00000097          	auipc	ra,0x0
    80001674:	0d4080e7          	jalr	212(ra) # 80001744 <_ZN5Riscv10initSystemEv>




    80001678:	00813083          	ld	ra,8(sp)
    8000167c:	00013403          	ld	s0,0(sp)
    80001680:	01010113          	addi	sp,sp,16
    80001684:	00008067          	ret

0000000080001688 <_Znwm>:

#include "../h/syscall_cpp.h"

//general
void * operator new(size_t size)
{
    80001688:	ff010113          	addi	sp,sp,-16
    8000168c:	00113423          	sd	ra,8(sp)
    80001690:	00813023          	sd	s0,0(sp)
    80001694:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001698:	00000097          	auipc	ra,0x0
    8000169c:	b84080e7          	jalr	-1148(ra) # 8000121c <mem_alloc>
}
    800016a0:	00813083          	ld	ra,8(sp)
    800016a4:	00013403          	ld	s0,0(sp)
    800016a8:	01010113          	addi	sp,sp,16
    800016ac:	00008067          	ret

00000000800016b0 <_ZdlPv>:

void operator delete(void * p)
{
    800016b0:	ff010113          	addi	sp,sp,-16
    800016b4:	00113423          	sd	ra,8(sp)
    800016b8:	00813023          	sd	s0,0(sp)
    800016bc:	01010413          	addi	s0,sp,16
   mem_free(p);
    800016c0:	00000097          	auipc	ra,0x0
    800016c4:	b8c080e7          	jalr	-1140(ra) # 8000124c <mem_free>
}
    800016c8:	00813083          	ld	ra,8(sp)
    800016cc:	00013403          	ld	s0,0(sp)
    800016d0:	01010113          	addi	sp,sp,16
    800016d4:	00008067          	ret

00000000800016d8 <_ZN6Thread5startEv>:

//Thread

void Thread::start() {
    800016d8:	ff010113          	addi	sp,sp,-16
    800016dc:	00113423          	sd	ra,8(sp)
    800016e0:	00813023          	sd	s0,0(sp)
    800016e4:	01010413          	addi	s0,sp,16
    myHandle->start();
    800016e8:	00053503          	ld	a0,0(a0)
    800016ec:	00000097          	auipc	ra,0x0
    800016f0:	cac080e7          	jalr	-852(ra) # 80001398 <_ZN3PCB5startEv>
}
    800016f4:	00813083          	ld	ra,8(sp)
    800016f8:	00013403          	ld	s0,0(sp)
    800016fc:	01010113          	addi	sp,sp,16
    80001700:	00008067          	ret

0000000080001704 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80001704:	ff010113          	addi	sp,sp,-16
    80001708:	00813423          	sd	s0,8(sp)
    8000170c:	01010413          	addi	s0,sp,16
    //PCB::dispatch();
}
    80001710:	00813403          	ld	s0,8(sp)
    80001714:	01010113          	addi	sp,sp,16
    80001718:	00008067          	ret

000000008000171c <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    8000171c:	ff010113          	addi	sp,sp,-16
    80001720:	00113423          	sd	ra,8(sp)
    80001724:	00813023          	sd	s0,0(sp)
    80001728:	01010413          	addi	s0,sp,16
    PCB::sleep(time);
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	c54080e7          	jalr	-940(ra) # 80001380 <_ZN3PCB5sleepEm>
}
    80001734:	00813083          	ld	ra,8(sp)
    80001738:	00013403          	ld	s0,0(sp)
    8000173c:	01010113          	addi	sp,sp,16
    80001740:	00008067          	ret

0000000080001744 <_ZN5Riscv10initSystemEv>:
#include "../h/PCB.h"
#include "../lib/console.h"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem() {
    80001744:	ff010113          	addi	sp,sp,-16
    80001748:	00813423          	sd	s0,8(sp)
    8000174c:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80001750:	00004797          	auipc	a5,0x4
    80001754:	1287b783          	ld	a5,296(a5) # 80005878 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80001758:	10579073          	csrw	stvec,a5
    //todo
    //no need for comment, but sync context switch
    //should be tested
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
}
    8000175c:	00813403          	ld	s0,8(sp)
    80001760:	01010113          	addi	sp,sp,16
    80001764:	00008067          	ret

0000000080001768 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80001768:	ff010113          	addi	sp,sp,-16
    8000176c:	00813423          	sd	s0,8(sp)
    80001770:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001774:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001778:	10200073          	sret
}
    8000177c:	00813403          	ld	s0,8(sp)
    80001780:	01010113          	addi	sp,sp,16
    80001784:	00008067          	ret

0000000080001788 <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    80001788:	fd010113          	addi	sp,sp,-48
    8000178c:	02113423          	sd	ra,40(sp)
    80001790:	02813023          	sd	s0,32(sp)
    80001794:	00913c23          	sd	s1,24(sp)
    80001798:	01213823          	sd	s2,16(sp)
    8000179c:	03010413          	addi	s0,sp,48
    800017a0:	00050493          	mv	s1,a0
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800017a4:	100027f3          	csrr	a5,sstatus
    800017a8:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800017ac:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800017b0:	00200793          	li	a5,2
    800017b4:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    800017b8:	0004c503          	lbu	a0,0(s1)
    800017bc:	00050a63          	beqz	a0,800017d0 <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    800017c0:	00002097          	auipc	ra,0x2
    800017c4:	73c080e7          	jalr	1852(ra) # 80003efc <__putc>
        string++;
    800017c8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800017cc:	fedff06f          	j	800017b8 <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800017d0:	0009091b          	sext.w	s2,s2
    800017d4:	00297913          	andi	s2,s2,2
    800017d8:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800017dc:	10092073          	csrs	sstatus,s2
}
    800017e0:	02813083          	ld	ra,40(sp)
    800017e4:	02013403          	ld	s0,32(sp)
    800017e8:	01813483          	ld	s1,24(sp)
    800017ec:	01013903          	ld	s2,16(sp)
    800017f0:	03010113          	addi	sp,sp,48
    800017f4:	00008067          	ret

00000000800017f8 <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    800017f8:	fc010113          	addi	sp,sp,-64
    800017fc:	02113c23          	sd	ra,56(sp)
    80001800:	02813823          	sd	s0,48(sp)
    80001804:	02913423          	sd	s1,40(sp)
    80001808:	03213023          	sd	s2,32(sp)
    8000180c:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001810:	100027f3          	csrr	a5,sstatus
    80001814:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001818:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    8000181c:	00200793          	li	a5,2
    80001820:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80001824:	0005051b          	sext.w	a0,a0

    i = 0;
    80001828:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    8000182c:	00a00613          	li	a2,10
    80001830:	02c5773b          	remuw	a4,a0,a2
    80001834:	02071693          	slli	a3,a4,0x20
    80001838:	0206d693          	srli	a3,a3,0x20
    8000183c:	00003717          	auipc	a4,0x3
    80001840:	7e470713          	addi	a4,a4,2020 # 80005020 <_ZZN5Riscv12printIntegerEmE6digits>
    80001844:	00d70733          	add	a4,a4,a3
    80001848:	00074703          	lbu	a4,0(a4)
    8000184c:	fe040693          	addi	a3,s0,-32
    80001850:	009687b3          	add	a5,a3,s1
    80001854:	0014849b          	addiw	s1,s1,1
    80001858:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    8000185c:	0005071b          	sext.w	a4,a0
    80001860:	02c5553b          	divuw	a0,a0,a2
    80001864:	00900793          	li	a5,9
    80001868:	fce7e2e3          	bltu	a5,a4,8000182c <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    8000186c:	fff4849b          	addiw	s1,s1,-1
    80001870:	0004ce63          	bltz	s1,8000188c <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80001874:	fe040793          	addi	a5,s0,-32
    80001878:	009787b3          	add	a5,a5,s1
    8000187c:	ff07c503          	lbu	a0,-16(a5)
    80001880:	00002097          	auipc	ra,0x2
    80001884:	67c080e7          	jalr	1660(ra) # 80003efc <__putc>
    80001888:	fe5ff06f          	j	8000186c <_ZN5Riscv12printIntegerEm+0x74>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    8000188c:	0009091b          	sext.w	s2,s2
    80001890:	00297913          	andi	s2,s2,2
    80001894:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80001898:	10092073          	csrs	sstatus,s2
}
    8000189c:	03813083          	ld	ra,56(sp)
    800018a0:	03013403          	ld	s0,48(sp)
    800018a4:	02813483          	ld	s1,40(sp)
    800018a8:	02013903          	ld	s2,32(sp)
    800018ac:	04010113          	addi	sp,sp,64
    800018b0:	00008067          	ret

00000000800018b4 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    800018b4:	f9010113          	addi	sp,sp,-112
    800018b8:	06113423          	sd	ra,104(sp)
    800018bc:	06813023          	sd	s0,96(sp)
    800018c0:	04913c23          	sd	s1,88(sp)
    800018c4:	05213823          	sd	s2,80(sp)
    800018c8:	05313423          	sd	s3,72(sp)
    800018cc:	05413023          	sd	s4,64(sp)
    800018d0:	03513c23          	sd	s5,56(sp)
    800018d4:	07010413          	addi	s0,sp,112
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    800018d8:	142027f3          	csrr	a5,scause
    800018dc:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    800018e0:	f9843703          	ld	a4,-104(s0)

    uint64 scause = Riscv::r_scause();
    switch(scause) {
    800018e4:	00900793          	li	a5,9
    800018e8:	0af70063          	beq	a4,a5,80001988 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
    800018ec:	fff00793          	li	a5,-1
    800018f0:	03f79793          	slli	a5,a5,0x3f
    800018f4:	00878793          	addi	a5,a5,8
    800018f8:	02f71a63          	bne	a4,a5,8000192c <_ZN5Riscv20handleSupervisorTrapEv+0x78>

        case timerInterrupt:

            PCB::timeSliceCounter++;
    800018fc:	00004717          	auipc	a4,0x4
    80001900:	f8473703          	ld	a4,-124(a4) # 80005880 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001904:	00073783          	ld	a5,0(a4)
    80001908:	00178793          	addi	a5,a5,1
    8000190c:	00f73023          	sd	a5,0(a4)
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice()) {
    80001910:	00004717          	auipc	a4,0x4
    80001914:	f8073703          	ld	a4,-128(a4) # 80005890 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001918:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() { return timeSlice;}
    8000191c:	00073703          	ld	a4,0(a4)
    80001920:	02e7f863          	bgeu	a5,a4,80001950 <_ZN5Riscv20handleSupervisorTrapEv+0x9c>
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80001924:	00200793          	li	a5,2
    80001928:	1447b073          	csrc	sip,a5

            break;
    }

    //console_handler();
}
    8000192c:	06813083          	ld	ra,104(sp)
    80001930:	06013403          	ld	s0,96(sp)
    80001934:	05813483          	ld	s1,88(sp)
    80001938:	05013903          	ld	s2,80(sp)
    8000193c:	04813983          	ld	s3,72(sp)
    80001940:	04013a03          	ld	s4,64(sp)
    80001944:	03813a83          	ld	s5,56(sp)
    80001948:	07010113          	addi	sp,sp,112
    8000194c:	00008067          	ret
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001950:	141027f3          	csrr	a5,sepc
    80001954:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80001958:	fa843483          	ld	s1,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000195c:	100027f3          	csrr	a5,sstatus
    80001960:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80001964:	fa043903          	ld	s2,-96(s0)
                PCB::timeSliceCounter = 0;
    80001968:	00004797          	auipc	a5,0x4
    8000196c:	f187b783          	ld	a5,-232(a5) # 80005880 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001970:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80001974:	00000097          	auipc	ra,0x0
    80001978:	a4c080e7          	jalr	-1460(ra) # 800013c0 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    8000197c:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80001980:	14149073          	csrw	sepc,s1
}
    80001984:	fa1ff06f          	j	80001924 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80001988:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000198c:	14102773          	csrr	a4,sepc
    80001990:	fae43823          	sd	a4,-80(s0)
    return sepc;
    80001994:	fb043483          	ld	s1,-80(s0)
            sepc+=4;
    80001998:	00448493          	addi	s1,s1,4
            if(operation == MemoryAllocator::MEM_ALLOC) {
    8000199c:	00100713          	li	a4,1
    800019a0:	02e78263          	beq	a5,a4,800019c4 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            else if(operation == MemoryAllocator::MEM_FREE) {
    800019a4:	00200713          	li	a4,2
    800019a8:	02e78a63          	beq	a5,a4,800019dc <_ZN5Riscv20handleSupervisorTrapEv+0x128>
            else if(operation == PCB::THREAD_CREATE)
    800019ac:	01100713          	li	a4,17
    800019b0:	04e78063          	beq	a5,a4,800019f0 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
            else if(operation == PCB::THREAD_DISPATCH)
    800019b4:	01300713          	li	a4,19
    800019b8:	08e78063          	beq	a5,a4,80001a38 <_ZN5Riscv20handleSupervisorTrapEv+0x184>
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800019bc:	14149073          	csrw	sepc,s1
}
    800019c0:	f6dff06f          	j	8000192c <_ZN5Riscv20handleSupervisorTrapEv+0x78>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    800019c4:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    800019c8:	00651513          	slli	a0,a0,0x6
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	424080e7          	jalr	1060(ra) # 80001df0 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800019d4:	00050513          	mv	a0,a0
    800019d8:	fe5ff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    800019dc:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	438080e7          	jalr	1080(ra) # 80001e18 <_Z5kfreePv>
                __asm__ volatile("mv a1,%0" : :"r"(retval));
    800019e8:	00050593          	mv	a1,a0
    800019ec:	fd1ff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                __asm__ volatile("mv %0, a1" : "=r"(start_routine));
    800019f0:	00058993          	mv	s3,a1
                __asm__ volatile("mv %0, a2" : "=r"(args));
    800019f4:	00060a13          	mv	s4,a2
                __asm__ volatile("mv %0, a3" : "=r"(stack_space));
    800019f8:	00068a93          	mv	s5,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)stack_space);
    800019fc:	04000513          	li	a0,64
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	a38080e7          	jalr	-1480(ra) # 80001438 <_ZN3PCBnwEm>
    80001a08:	00050913          	mv	s2,a0
    80001a0c:	000a8693          	mv	a3,s5
    80001a10:	000a0613          	mv	a2,s4
    80001a14:	00098593          	mv	a1,s3
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	92c080e7          	jalr	-1748(ra) # 80001344 <_ZN3PCBC1EPFvPvES0_S0_>
                if(newPCB == 0)
    80001a20:	00090863          	beqz	s2,80001a30 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    __asm__ volatile("li a0, 0");
    80001a24:	00000513          	li	a0,0
                    __asm__ volatile("mv a1, %0" : :"r"((uint64)newPCB));
    80001a28:	00090593          	mv	a1,s2
    80001a2c:	f91ff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80001a30:	fff00513          	li	a0,-1
    80001a34:	f89ff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEv+0x108>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001a38:	100027f3          	csrr	a5,sstatus
    80001a3c:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80001a40:	fb843903          	ld	s2,-72(s0)
                PCB::timeSliceCounter = 0;
    80001a44:	00004797          	auipc	a5,0x4
    80001a48:	e3c7b783          	ld	a5,-452(a5) # 80005880 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001a4c:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	970080e7          	jalr	-1680(ra) # 800013c0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80001a58:	10091073          	csrw	sstatus,s2
}
    80001a5c:	f61ff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEv+0x108>
    80001a60:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)stack_space);
    80001a64:	00090513          	mv	a0,s2
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	9f8080e7          	jalr	-1544(ra) # 80001460 <_ZN3PCBdlEPv>
    80001a70:	00048513          	mv	a0,s1
    80001a74:	00005097          	auipc	ra,0x5
    80001a78:	f74080e7          	jalr	-140(ra) # 800069e8 <_Unwind_Resume>

0000000080001a7c <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80001a7c:	ff010113          	addi	sp,sp,-16
    80001a80:	00813423          	sd	s0,8(sp)
    80001a84:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80001a88:	00004717          	auipc	a4,0x4
    80001a8c:	e8072703          	lw	a4,-384(a4) # 80005908 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80001a90:	00100793          	li	a5,1
    80001a94:	04f70263          	beq	a4,a5,80001ad8 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80001a98:	00004797          	auipc	a5,0x4
    80001a9c:	e7078793          	addi	a5,a5,-400 # 80005908 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80001aa0:	00100713          	li	a4,1
    80001aa4:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80001aa8:	0007b423          	sd	zero,8(a5)
    headFree = (FreeFragment*)HEAP_START_ADDR;
    80001aac:	00004717          	auipc	a4,0x4
    80001ab0:	dc473703          	ld	a4,-572(a4) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001ab4:	00073703          	ld	a4,0(a4)
    80001ab8:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80001abc:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1);
    80001ac0:	00004797          	auipc	a5,0x4
    80001ac4:	dd87b783          	ld	a5,-552(a5) # 80005898 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ac8:	0007b783          	ld	a5,0(a5)
    80001acc:	40e787b3          	sub	a5,a5,a4
    80001ad0:	00178793          	addi	a5,a5,1
    80001ad4:	00f73023          	sd	a5,0(a4)
}
    80001ad8:	00813403          	ld	s0,8(sp)
    80001adc:	01010113          	addi	sp,sp,16
    80001ae0:	00008067          	ret

0000000080001ae4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void* addr, size_t size) {
    80001ae4:	fe010113          	addi	sp,sp,-32
    80001ae8:	00113c23          	sd	ra,24(sp)
    80001aec:	00813823          	sd	s0,16(sp)
    80001af0:	00913423          	sd	s1,8(sp)
    80001af4:	01213023          	sd	s2,0(sp)
    80001af8:	02010413          	addi	s0,sp,32
    80001afc:	00050493          	mv	s1,a0
    80001b00:	00058913          	mv	s2,a1

    initMemory();
    80001b04:	00000097          	auipc	ra,0x0
    80001b08:	f78080e7          	jalr	-136(ra) # 80001a7c <_ZN15MemoryAllocator10initMemoryEv>
    AllocatedFragment* prev = 0;
    AllocatedFragment* after =  headAllocated;
    80001b0c:	00004797          	auipc	a5,0x4
    80001b10:	e047b783          	ld	a5,-508(a5) # 80005910 <_ZN15MemoryAllocator13headAllocatedE>
    AllocatedFragment* prev = 0;
    80001b14:	00000713          	li	a4,0
    while(after != 0) {
    80001b18:	00078a63          	beqz	a5,80001b2c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x48>
        if((void*)after > addr)
    80001b1c:	00f4e863          	bltu	s1,a5,80001b2c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x48>
            break;

        prev = after;
    80001b20:	00078713          	mv	a4,a5
        after = after->next;
    80001b24:	0087b783          	ld	a5,8(a5)
    while(after != 0) {
    80001b28:	ff1ff06f          	j	80001b18 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x34>
    }

    AllocatedFragment* newAllocated = (AllocatedFragment*)addr;
    newAllocated->next = 0;
    80001b2c:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80001b30:	0124b023          	sd	s2,0(s1)
    if(after == 0) {
    80001b34:	02078463          	beqz	a5,80001b5c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x78>
            headAllocated = newAllocated;
        else
            prev->next = newAllocated;
    }
    else {
        if(prev == 0) {
    80001b38:	02070e63          	beqz	a4,80001b74 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x90>
            newAllocated->next = headAllocated;
            headAllocated = newAllocated;
        }
        else {
            newAllocated->next = after;
    80001b3c:	00f4b423          	sd	a5,8(s1)
            prev->next = newAllocated;
    80001b40:	00973423          	sd	s1,8(a4)
        }
    }
}
    80001b44:	01813083          	ld	ra,24(sp)
    80001b48:	01013403          	ld	s0,16(sp)
    80001b4c:	00813483          	ld	s1,8(sp)
    80001b50:	00013903          	ld	s2,0(sp)
    80001b54:	02010113          	addi	sp,sp,32
    80001b58:	00008067          	ret
        if(prev == 0)
    80001b5c:	00070663          	beqz	a4,80001b68 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x84>
            prev->next = newAllocated;
    80001b60:	00973423          	sd	s1,8(a4)
    80001b64:	fe1ff06f          	j	80001b44 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>
            headAllocated = newAllocated;
    80001b68:	00004797          	auipc	a5,0x4
    80001b6c:	da97b423          	sd	s1,-600(a5) # 80005910 <_ZN15MemoryAllocator13headAllocatedE>
    80001b70:	fd5ff06f          	j	80001b44 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>
            newAllocated->next = headAllocated;
    80001b74:	00004797          	auipc	a5,0x4
    80001b78:	d9478793          	addi	a5,a5,-620 # 80005908 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80001b7c:	0087b703          	ld	a4,8(a5)
    80001b80:	00e4b423          	sd	a4,8(s1)
            headAllocated = newAllocated;
    80001b84:	0097b423          	sd	s1,8(a5)
    80001b88:	fbdff06f          	j	80001b44 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>

0000000080001b8c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    80001b8c:	fe010113          	addi	sp,sp,-32
    80001b90:	00113c23          	sd	ra,24(sp)
    80001b94:	00813823          	sd	s0,16(sp)
    80001b98:	00913423          	sd	s1,8(sp)
    80001b9c:	01213023          	sd	s2,0(sp)
    80001ba0:	02010413          	addi	s0,sp,32
    80001ba4:	00050913          	mv	s2,a0
    initMemory();
    80001ba8:	00000097          	auipc	ra,0x0
    80001bac:	ed4080e7          	jalr	-300(ra) # 80001a7c <_ZN15MemoryAllocator10initMemoryEv>
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    80001bb0:	00004497          	auipc	s1,0x4
    80001bb4:	d684b483          	ld	s1,-664(s1) # 80005918 <_ZN15MemoryAllocator8headFreeE>
    uint64 newSize = size + sizeof(AllocatedFragment);
    80001bb8:	01090693          	addi	a3,s2,16
    FreeFragment* prev = 0;
    80001bbc:	00000713          	li	a4,0
    80001bc0:	0880006f          	j	80001c48 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
            void* newAddr = ((char*)curr + newSize);
            if(newAddr <= HEAP_END_ADDR) {

                FreeFragment *newFree = (FreeFragment *) newAddr;

                if (prev != 0)
    80001bc4:	04070e63          	beqz	a4,80001c20 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    prev->next = newFree;
    80001bc8:	00f73423          	sd	a5,8(a4)
                else
                    headFree = newFree;

                newFree->next = curr->next;
    80001bcc:	0084b603          	ld	a2,8(s1)
    80001bd0:	00c7b423          	sd	a2,8(a5)
                newFree->size = curr->size - newSize;
    80001bd4:	0004b603          	ld	a2,0(s1)
    80001bd8:	40d606b3          	sub	a3,a2,a3
    80001bdc:	00d7b023          	sd	a3,0(a5)

                if(newFree->size == 0)
    80001be0:	00069863          	bnez	a3,80001bf0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x64>
                {
                    if(prev != 0)
    80001be4:	04070463          	beqz	a4,80001c2c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa0>
                        prev->next = curr->next;
    80001be8:	0084b783          	ld	a5,8(s1)
    80001bec:	00f73423          	sd	a5,8(a4)
                    else
                        headFree = 0;
                }

                insertNewAllocatedFragment(oldAddr, size);
    80001bf0:	00090593          	mv	a1,s2
    80001bf4:	00048513          	mv	a0,s1
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	eec080e7          	jalr	-276(ra) # 80001ae4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>



                uint64 oldA = (uint64) ((char*)oldAddr + sizeof(AllocatedFragment));
    80001c00:	01048493          	addi	s1,s1,16
        prev = curr;
        curr = curr->next;
    }

    return 0;
}
    80001c04:	00048513          	mv	a0,s1
    80001c08:	01813083          	ld	ra,24(sp)
    80001c0c:	01013403          	ld	s0,16(sp)
    80001c10:	00813483          	ld	s1,8(sp)
    80001c14:	00013903          	ld	s2,0(sp)
    80001c18:	02010113          	addi	sp,sp,32
    80001c1c:	00008067          	ret
                    headFree = newFree;
    80001c20:	00004617          	auipc	a2,0x4
    80001c24:	cef63c23          	sd	a5,-776(a2) # 80005918 <_ZN15MemoryAllocator8headFreeE>
    80001c28:	fa5ff06f          	j	80001bcc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x40>
                        headFree = 0;
    80001c2c:	00004797          	auipc	a5,0x4
    80001c30:	ce07b623          	sd	zero,-788(a5) # 80005918 <_ZN15MemoryAllocator8headFreeE>
    80001c34:	fbdff06f          	j	80001bf0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x64>
                    headFree = 0;
    80001c38:	00004797          	auipc	a5,0x4
    80001c3c:	ce07b023          	sd	zero,-800(a5) # 80005918 <_ZN15MemoryAllocator8headFreeE>
        prev = curr;
    80001c40:	00048713          	mv	a4,s1
        curr = curr->next;
    80001c44:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    80001c48:	fa048ee3          	beqz	s1,80001c04 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x78>
        if(curr->size >= newSize) {
    80001c4c:	0004b783          	ld	a5,0(s1)
    80001c50:	fed7e8e3          	bltu	a5,a3,80001c40 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
            void* newAddr = ((char*)curr + newSize);
    80001c54:	00d487b3          	add	a5,s1,a3
            if(newAddr <= HEAP_END_ADDR) {
    80001c58:	00004617          	auipc	a2,0x4
    80001c5c:	c4063603          	ld	a2,-960(a2) # 80005898 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c60:	00063603          	ld	a2,0(a2)
    80001c64:	f6f670e3          	bgeu	a2,a5,80001bc4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x38>
                if(prev != 0)
    80001c68:	fc0708e3          	beqz	a4,80001c38 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xac>
                    prev->next = 0;
    80001c6c:	00073423          	sd	zero,8(a4)
    80001c70:	fd1ff06f          	j	80001c40 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>

0000000080001c74 <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    80001c74:	ff010113          	addi	sp,sp,-16
    80001c78:	00113423          	sd	ra,8(sp)
    80001c7c:	00813023          	sd	s0,0(sp)
    80001c80:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	f08080e7          	jalr	-248(ra) # 80001b8c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80001c8c:	00813083          	ld	ra,8(sp)
    80001c90:	00013403          	ld	s0,0(sp)
    80001c94:	01010113          	addi	sp,sp,16
    80001c98:	00008067          	ret

0000000080001c9c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80001c9c:	fe010113          	addi	sp,sp,-32
    80001ca0:	00113c23          	sd	ra,24(sp)
    80001ca4:	00813823          	sd	s0,16(sp)
    80001ca8:	00913423          	sd	s1,8(sp)
    80001cac:	01213023          	sd	s2,0(sp)
    80001cb0:	02010413          	addi	s0,sp,32
    80001cb4:	00050493          	mv	s1,a0
    80001cb8:	00058913          	mv	s2,a1
    initMemory();
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	dc0080e7          	jalr	-576(ra) # 80001a7c <_ZN15MemoryAllocator10initMemoryEv>
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    80001cc4:	00004797          	auipc	a5,0x4
    80001cc8:	c547b783          	ld	a5,-940(a5) # 80005918 <_ZN15MemoryAllocator8headFreeE>
    FreeFragment* newSegment = (FreeFragment*) addr;
    newSegment->size = size;
    80001ccc:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80001cd0:	0004b423          	sd	zero,8(s1)
    FreeFragment* prev = 0;
    80001cd4:	00000713          	li	a4,0
    while(curr != 0)
    80001cd8:	00078c63          	beqz	a5,80001cf0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80001cdc:	00f4e863          	bltu	s1,a5,80001cec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80001ce0:	00078713          	mv	a4,a5
        curr = curr->next;
    80001ce4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80001ce8:	ff1ff06f          	j	80001cd8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80001cec:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80001cf0:	02070063          	beqz	a4,80001d10 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80001cf4:	00973423          	sd	s1,8(a4)
}
    80001cf8:	01813083          	ld	ra,24(sp)
    80001cfc:	01013403          	ld	s0,16(sp)
    80001d00:	00813483          	ld	s1,8(sp)
    80001d04:	00013903          	ld	s2,0(sp)
    80001d08:	02010113          	addi	sp,sp,32
    80001d0c:	00008067          	ret
        headFree = newSegment;
    80001d10:	00004797          	auipc	a5,0x4
    80001d14:	c097b423          	sd	s1,-1016(a5) # 80005918 <_ZN15MemoryAllocator8headFreeE>
    80001d18:	fe1ff06f          	j	80001cf8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>

0000000080001d1c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80001d1c:	fe010113          	addi	sp,sp,-32
    80001d20:	00113c23          	sd	ra,24(sp)
    80001d24:	00813823          	sd	s0,16(sp)
    80001d28:	00913423          	sd	s1,8(sp)
    80001d2c:	01213023          	sd	s2,0(sp)
    80001d30:	02010413          	addi	s0,sp,32
    80001d34:	00050913          	mv	s2,a0
    initMemory();
    80001d38:	00000097          	auipc	ra,0x0
    80001d3c:	d44080e7          	jalr	-700(ra) # 80001a7c <_ZN15MemoryAllocator10initMemoryEv>
    AllocatedFragment* prev = 0;
    AllocatedFragment* curr = headAllocated;
    80001d40:	00004497          	auipc	s1,0x4
    80001d44:	bd04b483          	ld	s1,-1072(s1) # 80005910 <_ZN15MemoryAllocator13headAllocatedE>
    int found = 0;
    80001d48:	00000693          	li	a3,0
    AllocatedFragment* prev = 0;
    80001d4c:	00000713          	li	a4,0
    80001d50:	0300006f          	j	80001d80 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
        {
            if(prev != 0) {
                prev->next = curr->next;
            }
            else {
                headAllocated = curr->next;
    80001d54:	0084b783          	ld	a5,8(s1)
    80001d58:	00004717          	auipc	a4,0x4
    80001d5c:	baf73c23          	sd	a5,-1096(a4) # 80005910 <_ZN15MemoryAllocator13headAllocatedE>
            }

            insertNewFreeSegment((void*)curr, curr->size + sizeof(AllocatedFragment));
    80001d60:	0004b583          	ld	a1,0(s1)
    80001d64:	01058593          	addi	a1,a1,16
    80001d68:	00048513          	mv	a0,s1
    80001d6c:	00000097          	auipc	ra,0x0
    80001d70:	f30080e7          	jalr	-208(ra) # 80001c9c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>

            found = 1;
    80001d74:	00100693          	li	a3,1
        }

        prev = curr;
    80001d78:	00048713          	mv	a4,s1
        curr = curr->next;
    80001d7c:	0084b483          	ld	s1,8(s1)
    while(curr != 0 && !found)
    80001d80:	02048063          	beqz	s1,80001da0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
    80001d84:	00069e63          	bnez	a3,80001da0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
        if(addr == (void*)((char*)curr + sizeof(AllocatedFragment)))
    80001d88:	01048793          	addi	a5,s1,16
    80001d8c:	ff2796e3          	bne	a5,s2,80001d78 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x5c>
            if(prev != 0) {
    80001d90:	fc0702e3          	beqz	a4,80001d54 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x38>
                prev->next = curr->next;
    80001d94:	0084b783          	ld	a5,8(s1)
    80001d98:	00f73423          	sd	a5,8(a4)
    80001d9c:	fc5ff06f          	j	80001d60 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
    }

    if(found)
    80001da0:	02068063          	beqz	a3,80001dc0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0xa4>
        return 0;
    80001da4:	00000513          	li	a0,0
    else
        return 1;
}
    80001da8:	01813083          	ld	ra,24(sp)
    80001dac:	01013403          	ld	s0,16(sp)
    80001db0:	00813483          	ld	s1,8(sp)
    80001db4:	00013903          	ld	s2,0(sp)
    80001db8:	02010113          	addi	sp,sp,32
    80001dbc:	00008067          	ret
        return 1;
    80001dc0:	00100513          	li	a0,1
    80001dc4:	fe5ff06f          	j	80001da8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>

0000000080001dc8 <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    80001dc8:	ff010113          	addi	sp,sp,-16
    80001dcc:	00113423          	sd	ra,8(sp)
    80001dd0:	00813023          	sd	s0,0(sp)
    80001dd4:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	f44080e7          	jalr	-188(ra) # 80001d1c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80001de0:	00813083          	ld	ra,8(sp)
    80001de4:	00013403          	ld	s0,0(sp)
    80001de8:	01010113          	addi	sp,sp,16
    80001dec:	00008067          	ret

0000000080001df0 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    80001df0:	ff010113          	addi	sp,sp,-16
    80001df4:	00113423          	sd	ra,8(sp)
    80001df8:	00813023          	sd	s0,0(sp)
    80001dfc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80001e00:	00000097          	auipc	ra,0x0
    80001e04:	e74080e7          	jalr	-396(ra) # 80001c74 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001e08:	00813083          	ld	ra,8(sp)
    80001e0c:	00013403          	ld	s0,0(sp)
    80001e10:	01010113          	addi	sp,sp,16
    80001e14:	00008067          	ret

0000000080001e18 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80001e18:	ff010113          	addi	sp,sp,-16
    80001e1c:	00113423          	sd	ra,8(sp)
    80001e20:	00813023          	sd	s0,0(sp)
    80001e24:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80001e28:	00000097          	auipc	ra,0x0
    80001e2c:	fa0080e7          	jalr	-96(ra) # 80001dc8 <_ZN15MemoryAllocator8mem_freeEPv>
    80001e30:	00813083          	ld	ra,8(sp)
    80001e34:	00013403          	ld	s0,0(sp)
    80001e38:	01010113          	addi	sp,sp,16
    80001e3c:	00008067          	ret

0000000080001e40 <start>:
    80001e40:	ff010113          	addi	sp,sp,-16
    80001e44:	00813423          	sd	s0,8(sp)
    80001e48:	01010413          	addi	s0,sp,16
    80001e4c:	300027f3          	csrr	a5,mstatus
    80001e50:	ffffe737          	lui	a4,0xffffe
    80001e54:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c7f>
    80001e58:	00e7f7b3          	and	a5,a5,a4
    80001e5c:	00001737          	lui	a4,0x1
    80001e60:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001e64:	00e7e7b3          	or	a5,a5,a4
    80001e68:	30079073          	csrw	mstatus,a5
    80001e6c:	00000797          	auipc	a5,0x0
    80001e70:	16078793          	addi	a5,a5,352 # 80001fcc <system_main>
    80001e74:	34179073          	csrw	mepc,a5
    80001e78:	00000793          	li	a5,0
    80001e7c:	18079073          	csrw	satp,a5
    80001e80:	000107b7          	lui	a5,0x10
    80001e84:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001e88:	30279073          	csrw	medeleg,a5
    80001e8c:	30379073          	csrw	mideleg,a5
    80001e90:	104027f3          	csrr	a5,sie
    80001e94:	2227e793          	ori	a5,a5,546
    80001e98:	10479073          	csrw	sie,a5
    80001e9c:	fff00793          	li	a5,-1
    80001ea0:	00a7d793          	srli	a5,a5,0xa
    80001ea4:	3b079073          	csrw	pmpaddr0,a5
    80001ea8:	00f00793          	li	a5,15
    80001eac:	3a079073          	csrw	pmpcfg0,a5
    80001eb0:	f14027f3          	csrr	a5,mhartid
    80001eb4:	0200c737          	lui	a4,0x200c
    80001eb8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001ebc:	0007869b          	sext.w	a3,a5
    80001ec0:	00269713          	slli	a4,a3,0x2
    80001ec4:	000f4637          	lui	a2,0xf4
    80001ec8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001ecc:	00d70733          	add	a4,a4,a3
    80001ed0:	0037979b          	slliw	a5,a5,0x3
    80001ed4:	020046b7          	lui	a3,0x2004
    80001ed8:	00d787b3          	add	a5,a5,a3
    80001edc:	00c585b3          	add	a1,a1,a2
    80001ee0:	00371693          	slli	a3,a4,0x3
    80001ee4:	00004717          	auipc	a4,0x4
    80001ee8:	a3c70713          	addi	a4,a4,-1476 # 80005920 <timer_scratch>
    80001eec:	00b7b023          	sd	a1,0(a5)
    80001ef0:	00d70733          	add	a4,a4,a3
    80001ef4:	00f73c23          	sd	a5,24(a4)
    80001ef8:	02c73023          	sd	a2,32(a4)
    80001efc:	34071073          	csrw	mscratch,a4
    80001f00:	00000797          	auipc	a5,0x0
    80001f04:	6e078793          	addi	a5,a5,1760 # 800025e0 <timervec>
    80001f08:	30579073          	csrw	mtvec,a5
    80001f0c:	300027f3          	csrr	a5,mstatus
    80001f10:	0087e793          	ori	a5,a5,8
    80001f14:	30079073          	csrw	mstatus,a5
    80001f18:	304027f3          	csrr	a5,mie
    80001f1c:	0807e793          	ori	a5,a5,128
    80001f20:	30479073          	csrw	mie,a5
    80001f24:	f14027f3          	csrr	a5,mhartid
    80001f28:	0007879b          	sext.w	a5,a5
    80001f2c:	00078213          	mv	tp,a5
    80001f30:	30200073          	mret
    80001f34:	00813403          	ld	s0,8(sp)
    80001f38:	01010113          	addi	sp,sp,16
    80001f3c:	00008067          	ret

0000000080001f40 <timerinit>:
    80001f40:	ff010113          	addi	sp,sp,-16
    80001f44:	00813423          	sd	s0,8(sp)
    80001f48:	01010413          	addi	s0,sp,16
    80001f4c:	f14027f3          	csrr	a5,mhartid
    80001f50:	0200c737          	lui	a4,0x200c
    80001f54:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001f58:	0007869b          	sext.w	a3,a5
    80001f5c:	00269713          	slli	a4,a3,0x2
    80001f60:	000f4637          	lui	a2,0xf4
    80001f64:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001f68:	00d70733          	add	a4,a4,a3
    80001f6c:	0037979b          	slliw	a5,a5,0x3
    80001f70:	020046b7          	lui	a3,0x2004
    80001f74:	00d787b3          	add	a5,a5,a3
    80001f78:	00c585b3          	add	a1,a1,a2
    80001f7c:	00371693          	slli	a3,a4,0x3
    80001f80:	00004717          	auipc	a4,0x4
    80001f84:	9a070713          	addi	a4,a4,-1632 # 80005920 <timer_scratch>
    80001f88:	00b7b023          	sd	a1,0(a5)
    80001f8c:	00d70733          	add	a4,a4,a3
    80001f90:	00f73c23          	sd	a5,24(a4)
    80001f94:	02c73023          	sd	a2,32(a4)
    80001f98:	34071073          	csrw	mscratch,a4
    80001f9c:	00000797          	auipc	a5,0x0
    80001fa0:	64478793          	addi	a5,a5,1604 # 800025e0 <timervec>
    80001fa4:	30579073          	csrw	mtvec,a5
    80001fa8:	300027f3          	csrr	a5,mstatus
    80001fac:	0087e793          	ori	a5,a5,8
    80001fb0:	30079073          	csrw	mstatus,a5
    80001fb4:	304027f3          	csrr	a5,mie
    80001fb8:	0807e793          	ori	a5,a5,128
    80001fbc:	30479073          	csrw	mie,a5
    80001fc0:	00813403          	ld	s0,8(sp)
    80001fc4:	01010113          	addi	sp,sp,16
    80001fc8:	00008067          	ret

0000000080001fcc <system_main>:
    80001fcc:	fe010113          	addi	sp,sp,-32
    80001fd0:	00813823          	sd	s0,16(sp)
    80001fd4:	00913423          	sd	s1,8(sp)
    80001fd8:	00113c23          	sd	ra,24(sp)
    80001fdc:	02010413          	addi	s0,sp,32
    80001fe0:	00000097          	auipc	ra,0x0
    80001fe4:	0c4080e7          	jalr	196(ra) # 800020a4 <cpuid>
    80001fe8:	00004497          	auipc	s1,0x4
    80001fec:	8d848493          	addi	s1,s1,-1832 # 800058c0 <started>
    80001ff0:	02050263          	beqz	a0,80002014 <system_main+0x48>
    80001ff4:	0004a783          	lw	a5,0(s1)
    80001ff8:	0007879b          	sext.w	a5,a5
    80001ffc:	fe078ce3          	beqz	a5,80001ff4 <system_main+0x28>
    80002000:	0ff0000f          	fence
    80002004:	00003517          	auipc	a0,0x3
    80002008:	05c50513          	addi	a0,a0,92 # 80005060 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    8000200c:	00001097          	auipc	ra,0x1
    80002010:	a70080e7          	jalr	-1424(ra) # 80002a7c <panic>
    80002014:	00001097          	auipc	ra,0x1
    80002018:	9c4080e7          	jalr	-1596(ra) # 800029d8 <consoleinit>
    8000201c:	00001097          	auipc	ra,0x1
    80002020:	150080e7          	jalr	336(ra) # 8000316c <printfinit>
    80002024:	00003517          	auipc	a0,0x3
    80002028:	11c50513          	addi	a0,a0,284 # 80005140 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    8000202c:	00001097          	auipc	ra,0x1
    80002030:	aac080e7          	jalr	-1364(ra) # 80002ad8 <__printf>
    80002034:	00003517          	auipc	a0,0x3
    80002038:	ffc50513          	addi	a0,a0,-4 # 80005030 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    8000203c:	00001097          	auipc	ra,0x1
    80002040:	a9c080e7          	jalr	-1380(ra) # 80002ad8 <__printf>
    80002044:	00003517          	auipc	a0,0x3
    80002048:	0fc50513          	addi	a0,a0,252 # 80005140 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    8000204c:	00001097          	auipc	ra,0x1
    80002050:	a8c080e7          	jalr	-1396(ra) # 80002ad8 <__printf>
    80002054:	00001097          	auipc	ra,0x1
    80002058:	4a4080e7          	jalr	1188(ra) # 800034f8 <kinit>
    8000205c:	00000097          	auipc	ra,0x0
    80002060:	148080e7          	jalr	328(ra) # 800021a4 <trapinit>
    80002064:	00000097          	auipc	ra,0x0
    80002068:	16c080e7          	jalr	364(ra) # 800021d0 <trapinithart>
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	5b4080e7          	jalr	1460(ra) # 80002620 <plicinit>
    80002074:	00000097          	auipc	ra,0x0
    80002078:	5d4080e7          	jalr	1492(ra) # 80002648 <plicinithart>
    8000207c:	00000097          	auipc	ra,0x0
    80002080:	078080e7          	jalr	120(ra) # 800020f4 <userinit>
    80002084:	0ff0000f          	fence
    80002088:	00100793          	li	a5,1
    8000208c:	00003517          	auipc	a0,0x3
    80002090:	fbc50513          	addi	a0,a0,-68 # 80005048 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    80002094:	00f4a023          	sw	a5,0(s1)
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	a40080e7          	jalr	-1472(ra) # 80002ad8 <__printf>
    800020a0:	0000006f          	j	800020a0 <system_main+0xd4>

00000000800020a4 <cpuid>:
    800020a4:	ff010113          	addi	sp,sp,-16
    800020a8:	00813423          	sd	s0,8(sp)
    800020ac:	01010413          	addi	s0,sp,16
    800020b0:	00020513          	mv	a0,tp
    800020b4:	00813403          	ld	s0,8(sp)
    800020b8:	0005051b          	sext.w	a0,a0
    800020bc:	01010113          	addi	sp,sp,16
    800020c0:	00008067          	ret

00000000800020c4 <mycpu>:
    800020c4:	ff010113          	addi	sp,sp,-16
    800020c8:	00813423          	sd	s0,8(sp)
    800020cc:	01010413          	addi	s0,sp,16
    800020d0:	00020793          	mv	a5,tp
    800020d4:	00813403          	ld	s0,8(sp)
    800020d8:	0007879b          	sext.w	a5,a5
    800020dc:	00779793          	slli	a5,a5,0x7
    800020e0:	00005517          	auipc	a0,0x5
    800020e4:	87050513          	addi	a0,a0,-1936 # 80006950 <cpus>
    800020e8:	00f50533          	add	a0,a0,a5
    800020ec:	01010113          	addi	sp,sp,16
    800020f0:	00008067          	ret

00000000800020f4 <userinit>:
    800020f4:	ff010113          	addi	sp,sp,-16
    800020f8:	00813423          	sd	s0,8(sp)
    800020fc:	01010413          	addi	s0,sp,16
    80002100:	00813403          	ld	s0,8(sp)
    80002104:	01010113          	addi	sp,sp,16
    80002108:	fffff317          	auipc	t1,0xfffff
    8000210c:	55830067          	jr	1368(t1) # 80001660 <main>

0000000080002110 <either_copyout>:
    80002110:	ff010113          	addi	sp,sp,-16
    80002114:	00813023          	sd	s0,0(sp)
    80002118:	00113423          	sd	ra,8(sp)
    8000211c:	01010413          	addi	s0,sp,16
    80002120:	02051663          	bnez	a0,8000214c <either_copyout+0x3c>
    80002124:	00058513          	mv	a0,a1
    80002128:	00060593          	mv	a1,a2
    8000212c:	0006861b          	sext.w	a2,a3
    80002130:	00002097          	auipc	ra,0x2
    80002134:	c54080e7          	jalr	-940(ra) # 80003d84 <__memmove>
    80002138:	00813083          	ld	ra,8(sp)
    8000213c:	00013403          	ld	s0,0(sp)
    80002140:	00000513          	li	a0,0
    80002144:	01010113          	addi	sp,sp,16
    80002148:	00008067          	ret
    8000214c:	00003517          	auipc	a0,0x3
    80002150:	f3c50513          	addi	a0,a0,-196 # 80005088 <_ZZN5Riscv12printIntegerEmE6digits+0x68>
    80002154:	00001097          	auipc	ra,0x1
    80002158:	928080e7          	jalr	-1752(ra) # 80002a7c <panic>

000000008000215c <either_copyin>:
    8000215c:	ff010113          	addi	sp,sp,-16
    80002160:	00813023          	sd	s0,0(sp)
    80002164:	00113423          	sd	ra,8(sp)
    80002168:	01010413          	addi	s0,sp,16
    8000216c:	02059463          	bnez	a1,80002194 <either_copyin+0x38>
    80002170:	00060593          	mv	a1,a2
    80002174:	0006861b          	sext.w	a2,a3
    80002178:	00002097          	auipc	ra,0x2
    8000217c:	c0c080e7          	jalr	-1012(ra) # 80003d84 <__memmove>
    80002180:	00813083          	ld	ra,8(sp)
    80002184:	00013403          	ld	s0,0(sp)
    80002188:	00000513          	li	a0,0
    8000218c:	01010113          	addi	sp,sp,16
    80002190:	00008067          	ret
    80002194:	00003517          	auipc	a0,0x3
    80002198:	f1c50513          	addi	a0,a0,-228 # 800050b0 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    8000219c:	00001097          	auipc	ra,0x1
    800021a0:	8e0080e7          	jalr	-1824(ra) # 80002a7c <panic>

00000000800021a4 <trapinit>:
    800021a4:	ff010113          	addi	sp,sp,-16
    800021a8:	00813423          	sd	s0,8(sp)
    800021ac:	01010413          	addi	s0,sp,16
    800021b0:	00813403          	ld	s0,8(sp)
    800021b4:	00003597          	auipc	a1,0x3
    800021b8:	f2458593          	addi	a1,a1,-220 # 800050d8 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    800021bc:	00005517          	auipc	a0,0x5
    800021c0:	81450513          	addi	a0,a0,-2028 # 800069d0 <tickslock>
    800021c4:	01010113          	addi	sp,sp,16
    800021c8:	00001317          	auipc	t1,0x1
    800021cc:	5c030067          	jr	1472(t1) # 80003788 <initlock>

00000000800021d0 <trapinithart>:
    800021d0:	ff010113          	addi	sp,sp,-16
    800021d4:	00813423          	sd	s0,8(sp)
    800021d8:	01010413          	addi	s0,sp,16
    800021dc:	00000797          	auipc	a5,0x0
    800021e0:	2f478793          	addi	a5,a5,756 # 800024d0 <kernelvec>
    800021e4:	10579073          	csrw	stvec,a5
    800021e8:	00813403          	ld	s0,8(sp)
    800021ec:	01010113          	addi	sp,sp,16
    800021f0:	00008067          	ret

00000000800021f4 <usertrap>:
    800021f4:	ff010113          	addi	sp,sp,-16
    800021f8:	00813423          	sd	s0,8(sp)
    800021fc:	01010413          	addi	s0,sp,16
    80002200:	00813403          	ld	s0,8(sp)
    80002204:	01010113          	addi	sp,sp,16
    80002208:	00008067          	ret

000000008000220c <usertrapret>:
    8000220c:	ff010113          	addi	sp,sp,-16
    80002210:	00813423          	sd	s0,8(sp)
    80002214:	01010413          	addi	s0,sp,16
    80002218:	00813403          	ld	s0,8(sp)
    8000221c:	01010113          	addi	sp,sp,16
    80002220:	00008067          	ret

0000000080002224 <kerneltrap>:
    80002224:	fe010113          	addi	sp,sp,-32
    80002228:	00813823          	sd	s0,16(sp)
    8000222c:	00113c23          	sd	ra,24(sp)
    80002230:	00913423          	sd	s1,8(sp)
    80002234:	02010413          	addi	s0,sp,32
    80002238:	142025f3          	csrr	a1,scause
    8000223c:	100027f3          	csrr	a5,sstatus
    80002240:	0027f793          	andi	a5,a5,2
    80002244:	10079c63          	bnez	a5,8000235c <kerneltrap+0x138>
    80002248:	142027f3          	csrr	a5,scause
    8000224c:	0207ce63          	bltz	a5,80002288 <kerneltrap+0x64>
    80002250:	00003517          	auipc	a0,0x3
    80002254:	ed050513          	addi	a0,a0,-304 # 80005120 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80002258:	00001097          	auipc	ra,0x1
    8000225c:	880080e7          	jalr	-1920(ra) # 80002ad8 <__printf>
    80002260:	141025f3          	csrr	a1,sepc
    80002264:	14302673          	csrr	a2,stval
    80002268:	00003517          	auipc	a0,0x3
    8000226c:	ec850513          	addi	a0,a0,-312 # 80005130 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80002270:	00001097          	auipc	ra,0x1
    80002274:	868080e7          	jalr	-1944(ra) # 80002ad8 <__printf>
    80002278:	00003517          	auipc	a0,0x3
    8000227c:	ed050513          	addi	a0,a0,-304 # 80005148 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80002280:	00000097          	auipc	ra,0x0
    80002284:	7fc080e7          	jalr	2044(ra) # 80002a7c <panic>
    80002288:	0ff7f713          	andi	a4,a5,255
    8000228c:	00900693          	li	a3,9
    80002290:	04d70063          	beq	a4,a3,800022d0 <kerneltrap+0xac>
    80002294:	fff00713          	li	a4,-1
    80002298:	03f71713          	slli	a4,a4,0x3f
    8000229c:	00170713          	addi	a4,a4,1
    800022a0:	fae798e3          	bne	a5,a4,80002250 <kerneltrap+0x2c>
    800022a4:	00000097          	auipc	ra,0x0
    800022a8:	e00080e7          	jalr	-512(ra) # 800020a4 <cpuid>
    800022ac:	06050663          	beqz	a0,80002318 <kerneltrap+0xf4>
    800022b0:	144027f3          	csrr	a5,sip
    800022b4:	ffd7f793          	andi	a5,a5,-3
    800022b8:	14479073          	csrw	sip,a5
    800022bc:	01813083          	ld	ra,24(sp)
    800022c0:	01013403          	ld	s0,16(sp)
    800022c4:	00813483          	ld	s1,8(sp)
    800022c8:	02010113          	addi	sp,sp,32
    800022cc:	00008067          	ret
    800022d0:	00000097          	auipc	ra,0x0
    800022d4:	3c4080e7          	jalr	964(ra) # 80002694 <plic_claim>
    800022d8:	00a00793          	li	a5,10
    800022dc:	00050493          	mv	s1,a0
    800022e0:	06f50863          	beq	a0,a5,80002350 <kerneltrap+0x12c>
    800022e4:	fc050ce3          	beqz	a0,800022bc <kerneltrap+0x98>
    800022e8:	00050593          	mv	a1,a0
    800022ec:	00003517          	auipc	a0,0x3
    800022f0:	e1450513          	addi	a0,a0,-492 # 80005100 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    800022f4:	00000097          	auipc	ra,0x0
    800022f8:	7e4080e7          	jalr	2020(ra) # 80002ad8 <__printf>
    800022fc:	01013403          	ld	s0,16(sp)
    80002300:	01813083          	ld	ra,24(sp)
    80002304:	00048513          	mv	a0,s1
    80002308:	00813483          	ld	s1,8(sp)
    8000230c:	02010113          	addi	sp,sp,32
    80002310:	00000317          	auipc	t1,0x0
    80002314:	3bc30067          	jr	956(t1) # 800026cc <plic_complete>
    80002318:	00004517          	auipc	a0,0x4
    8000231c:	6b850513          	addi	a0,a0,1720 # 800069d0 <tickslock>
    80002320:	00001097          	auipc	ra,0x1
    80002324:	48c080e7          	jalr	1164(ra) # 800037ac <acquire>
    80002328:	00003717          	auipc	a4,0x3
    8000232c:	59c70713          	addi	a4,a4,1436 # 800058c4 <ticks>
    80002330:	00072783          	lw	a5,0(a4)
    80002334:	00004517          	auipc	a0,0x4
    80002338:	69c50513          	addi	a0,a0,1692 # 800069d0 <tickslock>
    8000233c:	0017879b          	addiw	a5,a5,1
    80002340:	00f72023          	sw	a5,0(a4)
    80002344:	00001097          	auipc	ra,0x1
    80002348:	534080e7          	jalr	1332(ra) # 80003878 <release>
    8000234c:	f65ff06f          	j	800022b0 <kerneltrap+0x8c>
    80002350:	00001097          	auipc	ra,0x1
    80002354:	090080e7          	jalr	144(ra) # 800033e0 <uartintr>
    80002358:	fa5ff06f          	j	800022fc <kerneltrap+0xd8>
    8000235c:	00003517          	auipc	a0,0x3
    80002360:	d8450513          	addi	a0,a0,-636 # 800050e0 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    80002364:	00000097          	auipc	ra,0x0
    80002368:	718080e7          	jalr	1816(ra) # 80002a7c <panic>

000000008000236c <clockintr>:
    8000236c:	fe010113          	addi	sp,sp,-32
    80002370:	00813823          	sd	s0,16(sp)
    80002374:	00913423          	sd	s1,8(sp)
    80002378:	00113c23          	sd	ra,24(sp)
    8000237c:	02010413          	addi	s0,sp,32
    80002380:	00004497          	auipc	s1,0x4
    80002384:	65048493          	addi	s1,s1,1616 # 800069d0 <tickslock>
    80002388:	00048513          	mv	a0,s1
    8000238c:	00001097          	auipc	ra,0x1
    80002390:	420080e7          	jalr	1056(ra) # 800037ac <acquire>
    80002394:	00003717          	auipc	a4,0x3
    80002398:	53070713          	addi	a4,a4,1328 # 800058c4 <ticks>
    8000239c:	00072783          	lw	a5,0(a4)
    800023a0:	01013403          	ld	s0,16(sp)
    800023a4:	01813083          	ld	ra,24(sp)
    800023a8:	00048513          	mv	a0,s1
    800023ac:	0017879b          	addiw	a5,a5,1
    800023b0:	00813483          	ld	s1,8(sp)
    800023b4:	00f72023          	sw	a5,0(a4)
    800023b8:	02010113          	addi	sp,sp,32
    800023bc:	00001317          	auipc	t1,0x1
    800023c0:	4bc30067          	jr	1212(t1) # 80003878 <release>

00000000800023c4 <devintr>:
    800023c4:	142027f3          	csrr	a5,scause
    800023c8:	00000513          	li	a0,0
    800023cc:	0007c463          	bltz	a5,800023d4 <devintr+0x10>
    800023d0:	00008067          	ret
    800023d4:	fe010113          	addi	sp,sp,-32
    800023d8:	00813823          	sd	s0,16(sp)
    800023dc:	00113c23          	sd	ra,24(sp)
    800023e0:	00913423          	sd	s1,8(sp)
    800023e4:	02010413          	addi	s0,sp,32
    800023e8:	0ff7f713          	andi	a4,a5,255
    800023ec:	00900693          	li	a3,9
    800023f0:	04d70c63          	beq	a4,a3,80002448 <devintr+0x84>
    800023f4:	fff00713          	li	a4,-1
    800023f8:	03f71713          	slli	a4,a4,0x3f
    800023fc:	00170713          	addi	a4,a4,1
    80002400:	00e78c63          	beq	a5,a4,80002418 <devintr+0x54>
    80002404:	01813083          	ld	ra,24(sp)
    80002408:	01013403          	ld	s0,16(sp)
    8000240c:	00813483          	ld	s1,8(sp)
    80002410:	02010113          	addi	sp,sp,32
    80002414:	00008067          	ret
    80002418:	00000097          	auipc	ra,0x0
    8000241c:	c8c080e7          	jalr	-884(ra) # 800020a4 <cpuid>
    80002420:	06050663          	beqz	a0,8000248c <devintr+0xc8>
    80002424:	144027f3          	csrr	a5,sip
    80002428:	ffd7f793          	andi	a5,a5,-3
    8000242c:	14479073          	csrw	sip,a5
    80002430:	01813083          	ld	ra,24(sp)
    80002434:	01013403          	ld	s0,16(sp)
    80002438:	00813483          	ld	s1,8(sp)
    8000243c:	00200513          	li	a0,2
    80002440:	02010113          	addi	sp,sp,32
    80002444:	00008067          	ret
    80002448:	00000097          	auipc	ra,0x0
    8000244c:	24c080e7          	jalr	588(ra) # 80002694 <plic_claim>
    80002450:	00a00793          	li	a5,10
    80002454:	00050493          	mv	s1,a0
    80002458:	06f50663          	beq	a0,a5,800024c4 <devintr+0x100>
    8000245c:	00100513          	li	a0,1
    80002460:	fa0482e3          	beqz	s1,80002404 <devintr+0x40>
    80002464:	00048593          	mv	a1,s1
    80002468:	00003517          	auipc	a0,0x3
    8000246c:	c9850513          	addi	a0,a0,-872 # 80005100 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80002470:	00000097          	auipc	ra,0x0
    80002474:	668080e7          	jalr	1640(ra) # 80002ad8 <__printf>
    80002478:	00048513          	mv	a0,s1
    8000247c:	00000097          	auipc	ra,0x0
    80002480:	250080e7          	jalr	592(ra) # 800026cc <plic_complete>
    80002484:	00100513          	li	a0,1
    80002488:	f7dff06f          	j	80002404 <devintr+0x40>
    8000248c:	00004517          	auipc	a0,0x4
    80002490:	54450513          	addi	a0,a0,1348 # 800069d0 <tickslock>
    80002494:	00001097          	auipc	ra,0x1
    80002498:	318080e7          	jalr	792(ra) # 800037ac <acquire>
    8000249c:	00003717          	auipc	a4,0x3
    800024a0:	42870713          	addi	a4,a4,1064 # 800058c4 <ticks>
    800024a4:	00072783          	lw	a5,0(a4)
    800024a8:	00004517          	auipc	a0,0x4
    800024ac:	52850513          	addi	a0,a0,1320 # 800069d0 <tickslock>
    800024b0:	0017879b          	addiw	a5,a5,1
    800024b4:	00f72023          	sw	a5,0(a4)
    800024b8:	00001097          	auipc	ra,0x1
    800024bc:	3c0080e7          	jalr	960(ra) # 80003878 <release>
    800024c0:	f65ff06f          	j	80002424 <devintr+0x60>
    800024c4:	00001097          	auipc	ra,0x1
    800024c8:	f1c080e7          	jalr	-228(ra) # 800033e0 <uartintr>
    800024cc:	fadff06f          	j	80002478 <devintr+0xb4>

00000000800024d0 <kernelvec>:
    800024d0:	f0010113          	addi	sp,sp,-256
    800024d4:	00113023          	sd	ra,0(sp)
    800024d8:	00213423          	sd	sp,8(sp)
    800024dc:	00313823          	sd	gp,16(sp)
    800024e0:	00413c23          	sd	tp,24(sp)
    800024e4:	02513023          	sd	t0,32(sp)
    800024e8:	02613423          	sd	t1,40(sp)
    800024ec:	02713823          	sd	t2,48(sp)
    800024f0:	02813c23          	sd	s0,56(sp)
    800024f4:	04913023          	sd	s1,64(sp)
    800024f8:	04a13423          	sd	a0,72(sp)
    800024fc:	04b13823          	sd	a1,80(sp)
    80002500:	04c13c23          	sd	a2,88(sp)
    80002504:	06d13023          	sd	a3,96(sp)
    80002508:	06e13423          	sd	a4,104(sp)
    8000250c:	06f13823          	sd	a5,112(sp)
    80002510:	07013c23          	sd	a6,120(sp)
    80002514:	09113023          	sd	a7,128(sp)
    80002518:	09213423          	sd	s2,136(sp)
    8000251c:	09313823          	sd	s3,144(sp)
    80002520:	09413c23          	sd	s4,152(sp)
    80002524:	0b513023          	sd	s5,160(sp)
    80002528:	0b613423          	sd	s6,168(sp)
    8000252c:	0b713823          	sd	s7,176(sp)
    80002530:	0b813c23          	sd	s8,184(sp)
    80002534:	0d913023          	sd	s9,192(sp)
    80002538:	0da13423          	sd	s10,200(sp)
    8000253c:	0db13823          	sd	s11,208(sp)
    80002540:	0dc13c23          	sd	t3,216(sp)
    80002544:	0fd13023          	sd	t4,224(sp)
    80002548:	0fe13423          	sd	t5,232(sp)
    8000254c:	0ff13823          	sd	t6,240(sp)
    80002550:	cd5ff0ef          	jal	ra,80002224 <kerneltrap>
    80002554:	00013083          	ld	ra,0(sp)
    80002558:	00813103          	ld	sp,8(sp)
    8000255c:	01013183          	ld	gp,16(sp)
    80002560:	02013283          	ld	t0,32(sp)
    80002564:	02813303          	ld	t1,40(sp)
    80002568:	03013383          	ld	t2,48(sp)
    8000256c:	03813403          	ld	s0,56(sp)
    80002570:	04013483          	ld	s1,64(sp)
    80002574:	04813503          	ld	a0,72(sp)
    80002578:	05013583          	ld	a1,80(sp)
    8000257c:	05813603          	ld	a2,88(sp)
    80002580:	06013683          	ld	a3,96(sp)
    80002584:	06813703          	ld	a4,104(sp)
    80002588:	07013783          	ld	a5,112(sp)
    8000258c:	07813803          	ld	a6,120(sp)
    80002590:	08013883          	ld	a7,128(sp)
    80002594:	08813903          	ld	s2,136(sp)
    80002598:	09013983          	ld	s3,144(sp)
    8000259c:	09813a03          	ld	s4,152(sp)
    800025a0:	0a013a83          	ld	s5,160(sp)
    800025a4:	0a813b03          	ld	s6,168(sp)
    800025a8:	0b013b83          	ld	s7,176(sp)
    800025ac:	0b813c03          	ld	s8,184(sp)
    800025b0:	0c013c83          	ld	s9,192(sp)
    800025b4:	0c813d03          	ld	s10,200(sp)
    800025b8:	0d013d83          	ld	s11,208(sp)
    800025bc:	0d813e03          	ld	t3,216(sp)
    800025c0:	0e013e83          	ld	t4,224(sp)
    800025c4:	0e813f03          	ld	t5,232(sp)
    800025c8:	0f013f83          	ld	t6,240(sp)
    800025cc:	10010113          	addi	sp,sp,256
    800025d0:	10200073          	sret
    800025d4:	00000013          	nop
    800025d8:	00000013          	nop
    800025dc:	00000013          	nop

00000000800025e0 <timervec>:
    800025e0:	34051573          	csrrw	a0,mscratch,a0
    800025e4:	00b53023          	sd	a1,0(a0)
    800025e8:	00c53423          	sd	a2,8(a0)
    800025ec:	00d53823          	sd	a3,16(a0)
    800025f0:	01853583          	ld	a1,24(a0)
    800025f4:	02053603          	ld	a2,32(a0)
    800025f8:	0005b683          	ld	a3,0(a1)
    800025fc:	00c686b3          	add	a3,a3,a2
    80002600:	00d5b023          	sd	a3,0(a1)
    80002604:	00200593          	li	a1,2
    80002608:	14459073          	csrw	sip,a1
    8000260c:	01053683          	ld	a3,16(a0)
    80002610:	00853603          	ld	a2,8(a0)
    80002614:	00053583          	ld	a1,0(a0)
    80002618:	34051573          	csrrw	a0,mscratch,a0
    8000261c:	30200073          	mret

0000000080002620 <plicinit>:
    80002620:	ff010113          	addi	sp,sp,-16
    80002624:	00813423          	sd	s0,8(sp)
    80002628:	01010413          	addi	s0,sp,16
    8000262c:	00813403          	ld	s0,8(sp)
    80002630:	0c0007b7          	lui	a5,0xc000
    80002634:	00100713          	li	a4,1
    80002638:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000263c:	00e7a223          	sw	a4,4(a5)
    80002640:	01010113          	addi	sp,sp,16
    80002644:	00008067          	ret

0000000080002648 <plicinithart>:
    80002648:	ff010113          	addi	sp,sp,-16
    8000264c:	00813023          	sd	s0,0(sp)
    80002650:	00113423          	sd	ra,8(sp)
    80002654:	01010413          	addi	s0,sp,16
    80002658:	00000097          	auipc	ra,0x0
    8000265c:	a4c080e7          	jalr	-1460(ra) # 800020a4 <cpuid>
    80002660:	0085171b          	slliw	a4,a0,0x8
    80002664:	0c0027b7          	lui	a5,0xc002
    80002668:	00e787b3          	add	a5,a5,a4
    8000266c:	40200713          	li	a4,1026
    80002670:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002674:	00813083          	ld	ra,8(sp)
    80002678:	00013403          	ld	s0,0(sp)
    8000267c:	00d5151b          	slliw	a0,a0,0xd
    80002680:	0c2017b7          	lui	a5,0xc201
    80002684:	00a78533          	add	a0,a5,a0
    80002688:	00052023          	sw	zero,0(a0)
    8000268c:	01010113          	addi	sp,sp,16
    80002690:	00008067          	ret

0000000080002694 <plic_claim>:
    80002694:	ff010113          	addi	sp,sp,-16
    80002698:	00813023          	sd	s0,0(sp)
    8000269c:	00113423          	sd	ra,8(sp)
    800026a0:	01010413          	addi	s0,sp,16
    800026a4:	00000097          	auipc	ra,0x0
    800026a8:	a00080e7          	jalr	-1536(ra) # 800020a4 <cpuid>
    800026ac:	00813083          	ld	ra,8(sp)
    800026b0:	00013403          	ld	s0,0(sp)
    800026b4:	00d5151b          	slliw	a0,a0,0xd
    800026b8:	0c2017b7          	lui	a5,0xc201
    800026bc:	00a78533          	add	a0,a5,a0
    800026c0:	00452503          	lw	a0,4(a0)
    800026c4:	01010113          	addi	sp,sp,16
    800026c8:	00008067          	ret

00000000800026cc <plic_complete>:
    800026cc:	fe010113          	addi	sp,sp,-32
    800026d0:	00813823          	sd	s0,16(sp)
    800026d4:	00913423          	sd	s1,8(sp)
    800026d8:	00113c23          	sd	ra,24(sp)
    800026dc:	02010413          	addi	s0,sp,32
    800026e0:	00050493          	mv	s1,a0
    800026e4:	00000097          	auipc	ra,0x0
    800026e8:	9c0080e7          	jalr	-1600(ra) # 800020a4 <cpuid>
    800026ec:	01813083          	ld	ra,24(sp)
    800026f0:	01013403          	ld	s0,16(sp)
    800026f4:	00d5179b          	slliw	a5,a0,0xd
    800026f8:	0c201737          	lui	a4,0xc201
    800026fc:	00f707b3          	add	a5,a4,a5
    80002700:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002704:	00813483          	ld	s1,8(sp)
    80002708:	02010113          	addi	sp,sp,32
    8000270c:	00008067          	ret

0000000080002710 <consolewrite>:
    80002710:	fb010113          	addi	sp,sp,-80
    80002714:	04813023          	sd	s0,64(sp)
    80002718:	04113423          	sd	ra,72(sp)
    8000271c:	02913c23          	sd	s1,56(sp)
    80002720:	03213823          	sd	s2,48(sp)
    80002724:	03313423          	sd	s3,40(sp)
    80002728:	03413023          	sd	s4,32(sp)
    8000272c:	01513c23          	sd	s5,24(sp)
    80002730:	05010413          	addi	s0,sp,80
    80002734:	06c05c63          	blez	a2,800027ac <consolewrite+0x9c>
    80002738:	00060993          	mv	s3,a2
    8000273c:	00050a13          	mv	s4,a0
    80002740:	00058493          	mv	s1,a1
    80002744:	00000913          	li	s2,0
    80002748:	fff00a93          	li	s5,-1
    8000274c:	01c0006f          	j	80002768 <consolewrite+0x58>
    80002750:	fbf44503          	lbu	a0,-65(s0)
    80002754:	0019091b          	addiw	s2,s2,1
    80002758:	00148493          	addi	s1,s1,1
    8000275c:	00001097          	auipc	ra,0x1
    80002760:	a9c080e7          	jalr	-1380(ra) # 800031f8 <uartputc>
    80002764:	03298063          	beq	s3,s2,80002784 <consolewrite+0x74>
    80002768:	00048613          	mv	a2,s1
    8000276c:	00100693          	li	a3,1
    80002770:	000a0593          	mv	a1,s4
    80002774:	fbf40513          	addi	a0,s0,-65
    80002778:	00000097          	auipc	ra,0x0
    8000277c:	9e4080e7          	jalr	-1564(ra) # 8000215c <either_copyin>
    80002780:	fd5518e3          	bne	a0,s5,80002750 <consolewrite+0x40>
    80002784:	04813083          	ld	ra,72(sp)
    80002788:	04013403          	ld	s0,64(sp)
    8000278c:	03813483          	ld	s1,56(sp)
    80002790:	02813983          	ld	s3,40(sp)
    80002794:	02013a03          	ld	s4,32(sp)
    80002798:	01813a83          	ld	s5,24(sp)
    8000279c:	00090513          	mv	a0,s2
    800027a0:	03013903          	ld	s2,48(sp)
    800027a4:	05010113          	addi	sp,sp,80
    800027a8:	00008067          	ret
    800027ac:	00000913          	li	s2,0
    800027b0:	fd5ff06f          	j	80002784 <consolewrite+0x74>

00000000800027b4 <consoleread>:
    800027b4:	f9010113          	addi	sp,sp,-112
    800027b8:	06813023          	sd	s0,96(sp)
    800027bc:	04913c23          	sd	s1,88(sp)
    800027c0:	05213823          	sd	s2,80(sp)
    800027c4:	05313423          	sd	s3,72(sp)
    800027c8:	05413023          	sd	s4,64(sp)
    800027cc:	03513c23          	sd	s5,56(sp)
    800027d0:	03613823          	sd	s6,48(sp)
    800027d4:	03713423          	sd	s7,40(sp)
    800027d8:	03813023          	sd	s8,32(sp)
    800027dc:	06113423          	sd	ra,104(sp)
    800027e0:	01913c23          	sd	s9,24(sp)
    800027e4:	07010413          	addi	s0,sp,112
    800027e8:	00060b93          	mv	s7,a2
    800027ec:	00050913          	mv	s2,a0
    800027f0:	00058c13          	mv	s8,a1
    800027f4:	00060b1b          	sext.w	s6,a2
    800027f8:	00004497          	auipc	s1,0x4
    800027fc:	20048493          	addi	s1,s1,512 # 800069f8 <cons>
    80002800:	00400993          	li	s3,4
    80002804:	fff00a13          	li	s4,-1
    80002808:	00a00a93          	li	s5,10
    8000280c:	05705e63          	blez	s7,80002868 <consoleread+0xb4>
    80002810:	09c4a703          	lw	a4,156(s1)
    80002814:	0984a783          	lw	a5,152(s1)
    80002818:	0007071b          	sext.w	a4,a4
    8000281c:	08e78463          	beq	a5,a4,800028a4 <consoleread+0xf0>
    80002820:	07f7f713          	andi	a4,a5,127
    80002824:	00e48733          	add	a4,s1,a4
    80002828:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000282c:	0017869b          	addiw	a3,a5,1
    80002830:	08d4ac23          	sw	a3,152(s1)
    80002834:	00070c9b          	sext.w	s9,a4
    80002838:	0b370663          	beq	a4,s3,800028e4 <consoleread+0x130>
    8000283c:	00100693          	li	a3,1
    80002840:	f9f40613          	addi	a2,s0,-97
    80002844:	000c0593          	mv	a1,s8
    80002848:	00090513          	mv	a0,s2
    8000284c:	f8e40fa3          	sb	a4,-97(s0)
    80002850:	00000097          	auipc	ra,0x0
    80002854:	8c0080e7          	jalr	-1856(ra) # 80002110 <either_copyout>
    80002858:	01450863          	beq	a0,s4,80002868 <consoleread+0xb4>
    8000285c:	001c0c13          	addi	s8,s8,1
    80002860:	fffb8b9b          	addiw	s7,s7,-1
    80002864:	fb5c94e3          	bne	s9,s5,8000280c <consoleread+0x58>
    80002868:	000b851b          	sext.w	a0,s7
    8000286c:	06813083          	ld	ra,104(sp)
    80002870:	06013403          	ld	s0,96(sp)
    80002874:	05813483          	ld	s1,88(sp)
    80002878:	05013903          	ld	s2,80(sp)
    8000287c:	04813983          	ld	s3,72(sp)
    80002880:	04013a03          	ld	s4,64(sp)
    80002884:	03813a83          	ld	s5,56(sp)
    80002888:	02813b83          	ld	s7,40(sp)
    8000288c:	02013c03          	ld	s8,32(sp)
    80002890:	01813c83          	ld	s9,24(sp)
    80002894:	40ab053b          	subw	a0,s6,a0
    80002898:	03013b03          	ld	s6,48(sp)
    8000289c:	07010113          	addi	sp,sp,112
    800028a0:	00008067          	ret
    800028a4:	00001097          	auipc	ra,0x1
    800028a8:	1d8080e7          	jalr	472(ra) # 80003a7c <push_on>
    800028ac:	0984a703          	lw	a4,152(s1)
    800028b0:	09c4a783          	lw	a5,156(s1)
    800028b4:	0007879b          	sext.w	a5,a5
    800028b8:	fef70ce3          	beq	a4,a5,800028b0 <consoleread+0xfc>
    800028bc:	00001097          	auipc	ra,0x1
    800028c0:	234080e7          	jalr	564(ra) # 80003af0 <pop_on>
    800028c4:	0984a783          	lw	a5,152(s1)
    800028c8:	07f7f713          	andi	a4,a5,127
    800028cc:	00e48733          	add	a4,s1,a4
    800028d0:	01874703          	lbu	a4,24(a4)
    800028d4:	0017869b          	addiw	a3,a5,1
    800028d8:	08d4ac23          	sw	a3,152(s1)
    800028dc:	00070c9b          	sext.w	s9,a4
    800028e0:	f5371ee3          	bne	a4,s3,8000283c <consoleread+0x88>
    800028e4:	000b851b          	sext.w	a0,s7
    800028e8:	f96bf2e3          	bgeu	s7,s6,8000286c <consoleread+0xb8>
    800028ec:	08f4ac23          	sw	a5,152(s1)
    800028f0:	f7dff06f          	j	8000286c <consoleread+0xb8>

00000000800028f4 <consputc>:
    800028f4:	10000793          	li	a5,256
    800028f8:	00f50663          	beq	a0,a5,80002904 <consputc+0x10>
    800028fc:	00001317          	auipc	t1,0x1
    80002900:	9f430067          	jr	-1548(t1) # 800032f0 <uartputc_sync>
    80002904:	ff010113          	addi	sp,sp,-16
    80002908:	00113423          	sd	ra,8(sp)
    8000290c:	00813023          	sd	s0,0(sp)
    80002910:	01010413          	addi	s0,sp,16
    80002914:	00800513          	li	a0,8
    80002918:	00001097          	auipc	ra,0x1
    8000291c:	9d8080e7          	jalr	-1576(ra) # 800032f0 <uartputc_sync>
    80002920:	02000513          	li	a0,32
    80002924:	00001097          	auipc	ra,0x1
    80002928:	9cc080e7          	jalr	-1588(ra) # 800032f0 <uartputc_sync>
    8000292c:	00013403          	ld	s0,0(sp)
    80002930:	00813083          	ld	ra,8(sp)
    80002934:	00800513          	li	a0,8
    80002938:	01010113          	addi	sp,sp,16
    8000293c:	00001317          	auipc	t1,0x1
    80002940:	9b430067          	jr	-1612(t1) # 800032f0 <uartputc_sync>

0000000080002944 <consoleintr>:
    80002944:	fe010113          	addi	sp,sp,-32
    80002948:	00813823          	sd	s0,16(sp)
    8000294c:	00913423          	sd	s1,8(sp)
    80002950:	01213023          	sd	s2,0(sp)
    80002954:	00113c23          	sd	ra,24(sp)
    80002958:	02010413          	addi	s0,sp,32
    8000295c:	00004917          	auipc	s2,0x4
    80002960:	09c90913          	addi	s2,s2,156 # 800069f8 <cons>
    80002964:	00050493          	mv	s1,a0
    80002968:	00090513          	mv	a0,s2
    8000296c:	00001097          	auipc	ra,0x1
    80002970:	e40080e7          	jalr	-448(ra) # 800037ac <acquire>
    80002974:	02048c63          	beqz	s1,800029ac <consoleintr+0x68>
    80002978:	0a092783          	lw	a5,160(s2)
    8000297c:	09892703          	lw	a4,152(s2)
    80002980:	07f00693          	li	a3,127
    80002984:	40e7873b          	subw	a4,a5,a4
    80002988:	02e6e263          	bltu	a3,a4,800029ac <consoleintr+0x68>
    8000298c:	00d00713          	li	a4,13
    80002990:	04e48063          	beq	s1,a4,800029d0 <consoleintr+0x8c>
    80002994:	07f7f713          	andi	a4,a5,127
    80002998:	00e90733          	add	a4,s2,a4
    8000299c:	0017879b          	addiw	a5,a5,1
    800029a0:	0af92023          	sw	a5,160(s2)
    800029a4:	00970c23          	sb	s1,24(a4)
    800029a8:	08f92e23          	sw	a5,156(s2)
    800029ac:	01013403          	ld	s0,16(sp)
    800029b0:	01813083          	ld	ra,24(sp)
    800029b4:	00813483          	ld	s1,8(sp)
    800029b8:	00013903          	ld	s2,0(sp)
    800029bc:	00004517          	auipc	a0,0x4
    800029c0:	03c50513          	addi	a0,a0,60 # 800069f8 <cons>
    800029c4:	02010113          	addi	sp,sp,32
    800029c8:	00001317          	auipc	t1,0x1
    800029cc:	eb030067          	jr	-336(t1) # 80003878 <release>
    800029d0:	00a00493          	li	s1,10
    800029d4:	fc1ff06f          	j	80002994 <consoleintr+0x50>

00000000800029d8 <consoleinit>:
    800029d8:	fe010113          	addi	sp,sp,-32
    800029dc:	00113c23          	sd	ra,24(sp)
    800029e0:	00813823          	sd	s0,16(sp)
    800029e4:	00913423          	sd	s1,8(sp)
    800029e8:	02010413          	addi	s0,sp,32
    800029ec:	00004497          	auipc	s1,0x4
    800029f0:	00c48493          	addi	s1,s1,12 # 800069f8 <cons>
    800029f4:	00048513          	mv	a0,s1
    800029f8:	00002597          	auipc	a1,0x2
    800029fc:	76058593          	addi	a1,a1,1888 # 80005158 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80002a00:	00001097          	auipc	ra,0x1
    80002a04:	d88080e7          	jalr	-632(ra) # 80003788 <initlock>
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	7ac080e7          	jalr	1964(ra) # 800031b4 <uartinit>
    80002a10:	01813083          	ld	ra,24(sp)
    80002a14:	01013403          	ld	s0,16(sp)
    80002a18:	00000797          	auipc	a5,0x0
    80002a1c:	d9c78793          	addi	a5,a5,-612 # 800027b4 <consoleread>
    80002a20:	0af4bc23          	sd	a5,184(s1)
    80002a24:	00000797          	auipc	a5,0x0
    80002a28:	cec78793          	addi	a5,a5,-788 # 80002710 <consolewrite>
    80002a2c:	0cf4b023          	sd	a5,192(s1)
    80002a30:	00813483          	ld	s1,8(sp)
    80002a34:	02010113          	addi	sp,sp,32
    80002a38:	00008067          	ret

0000000080002a3c <console_read>:
    80002a3c:	ff010113          	addi	sp,sp,-16
    80002a40:	00813423          	sd	s0,8(sp)
    80002a44:	01010413          	addi	s0,sp,16
    80002a48:	00813403          	ld	s0,8(sp)
    80002a4c:	00004317          	auipc	t1,0x4
    80002a50:	06433303          	ld	t1,100(t1) # 80006ab0 <devsw+0x10>
    80002a54:	01010113          	addi	sp,sp,16
    80002a58:	00030067          	jr	t1

0000000080002a5c <console_write>:
    80002a5c:	ff010113          	addi	sp,sp,-16
    80002a60:	00813423          	sd	s0,8(sp)
    80002a64:	01010413          	addi	s0,sp,16
    80002a68:	00813403          	ld	s0,8(sp)
    80002a6c:	00004317          	auipc	t1,0x4
    80002a70:	04c33303          	ld	t1,76(t1) # 80006ab8 <devsw+0x18>
    80002a74:	01010113          	addi	sp,sp,16
    80002a78:	00030067          	jr	t1

0000000080002a7c <panic>:
    80002a7c:	fe010113          	addi	sp,sp,-32
    80002a80:	00113c23          	sd	ra,24(sp)
    80002a84:	00813823          	sd	s0,16(sp)
    80002a88:	00913423          	sd	s1,8(sp)
    80002a8c:	02010413          	addi	s0,sp,32
    80002a90:	00050493          	mv	s1,a0
    80002a94:	00002517          	auipc	a0,0x2
    80002a98:	6cc50513          	addi	a0,a0,1740 # 80005160 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    80002a9c:	00004797          	auipc	a5,0x4
    80002aa0:	0a07ae23          	sw	zero,188(a5) # 80006b58 <pr+0x18>
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	034080e7          	jalr	52(ra) # 80002ad8 <__printf>
    80002aac:	00048513          	mv	a0,s1
    80002ab0:	00000097          	auipc	ra,0x0
    80002ab4:	028080e7          	jalr	40(ra) # 80002ad8 <__printf>
    80002ab8:	00002517          	auipc	a0,0x2
    80002abc:	68850513          	addi	a0,a0,1672 # 80005140 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80002ac0:	00000097          	auipc	ra,0x0
    80002ac4:	018080e7          	jalr	24(ra) # 80002ad8 <__printf>
    80002ac8:	00100793          	li	a5,1
    80002acc:	00003717          	auipc	a4,0x3
    80002ad0:	def72e23          	sw	a5,-516(a4) # 800058c8 <panicked>
    80002ad4:	0000006f          	j	80002ad4 <panic+0x58>

0000000080002ad8 <__printf>:
    80002ad8:	f3010113          	addi	sp,sp,-208
    80002adc:	08813023          	sd	s0,128(sp)
    80002ae0:	07313423          	sd	s3,104(sp)
    80002ae4:	09010413          	addi	s0,sp,144
    80002ae8:	05813023          	sd	s8,64(sp)
    80002aec:	08113423          	sd	ra,136(sp)
    80002af0:	06913c23          	sd	s1,120(sp)
    80002af4:	07213823          	sd	s2,112(sp)
    80002af8:	07413023          	sd	s4,96(sp)
    80002afc:	05513c23          	sd	s5,88(sp)
    80002b00:	05613823          	sd	s6,80(sp)
    80002b04:	05713423          	sd	s7,72(sp)
    80002b08:	03913c23          	sd	s9,56(sp)
    80002b0c:	03a13823          	sd	s10,48(sp)
    80002b10:	03b13423          	sd	s11,40(sp)
    80002b14:	00004317          	auipc	t1,0x4
    80002b18:	02c30313          	addi	t1,t1,44 # 80006b40 <pr>
    80002b1c:	01832c03          	lw	s8,24(t1)
    80002b20:	00b43423          	sd	a1,8(s0)
    80002b24:	00c43823          	sd	a2,16(s0)
    80002b28:	00d43c23          	sd	a3,24(s0)
    80002b2c:	02e43023          	sd	a4,32(s0)
    80002b30:	02f43423          	sd	a5,40(s0)
    80002b34:	03043823          	sd	a6,48(s0)
    80002b38:	03143c23          	sd	a7,56(s0)
    80002b3c:	00050993          	mv	s3,a0
    80002b40:	4a0c1663          	bnez	s8,80002fec <__printf+0x514>
    80002b44:	60098c63          	beqz	s3,8000315c <__printf+0x684>
    80002b48:	0009c503          	lbu	a0,0(s3)
    80002b4c:	00840793          	addi	a5,s0,8
    80002b50:	f6f43c23          	sd	a5,-136(s0)
    80002b54:	00000493          	li	s1,0
    80002b58:	22050063          	beqz	a0,80002d78 <__printf+0x2a0>
    80002b5c:	00002a37          	lui	s4,0x2
    80002b60:	00018ab7          	lui	s5,0x18
    80002b64:	000f4b37          	lui	s6,0xf4
    80002b68:	00989bb7          	lui	s7,0x989
    80002b6c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002b70:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002b74:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002b78:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002b7c:	00148c9b          	addiw	s9,s1,1
    80002b80:	02500793          	li	a5,37
    80002b84:	01998933          	add	s2,s3,s9
    80002b88:	38f51263          	bne	a0,a5,80002f0c <__printf+0x434>
    80002b8c:	00094783          	lbu	a5,0(s2)
    80002b90:	00078c9b          	sext.w	s9,a5
    80002b94:	1e078263          	beqz	a5,80002d78 <__printf+0x2a0>
    80002b98:	0024849b          	addiw	s1,s1,2
    80002b9c:	07000713          	li	a4,112
    80002ba0:	00998933          	add	s2,s3,s1
    80002ba4:	38e78a63          	beq	a5,a4,80002f38 <__printf+0x460>
    80002ba8:	20f76863          	bltu	a4,a5,80002db8 <__printf+0x2e0>
    80002bac:	42a78863          	beq	a5,a0,80002fdc <__printf+0x504>
    80002bb0:	06400713          	li	a4,100
    80002bb4:	40e79663          	bne	a5,a4,80002fc0 <__printf+0x4e8>
    80002bb8:	f7843783          	ld	a5,-136(s0)
    80002bbc:	0007a603          	lw	a2,0(a5)
    80002bc0:	00878793          	addi	a5,a5,8
    80002bc4:	f6f43c23          	sd	a5,-136(s0)
    80002bc8:	42064a63          	bltz	a2,80002ffc <__printf+0x524>
    80002bcc:	00a00713          	li	a4,10
    80002bd0:	02e677bb          	remuw	a5,a2,a4
    80002bd4:	00002d97          	auipc	s11,0x2
    80002bd8:	5b4d8d93          	addi	s11,s11,1460 # 80005188 <digits>
    80002bdc:	00900593          	li	a1,9
    80002be0:	0006051b          	sext.w	a0,a2
    80002be4:	00000c93          	li	s9,0
    80002be8:	02079793          	slli	a5,a5,0x20
    80002bec:	0207d793          	srli	a5,a5,0x20
    80002bf0:	00fd87b3          	add	a5,s11,a5
    80002bf4:	0007c783          	lbu	a5,0(a5)
    80002bf8:	02e656bb          	divuw	a3,a2,a4
    80002bfc:	f8f40023          	sb	a5,-128(s0)
    80002c00:	14c5d863          	bge	a1,a2,80002d50 <__printf+0x278>
    80002c04:	06300593          	li	a1,99
    80002c08:	00100c93          	li	s9,1
    80002c0c:	02e6f7bb          	remuw	a5,a3,a4
    80002c10:	02079793          	slli	a5,a5,0x20
    80002c14:	0207d793          	srli	a5,a5,0x20
    80002c18:	00fd87b3          	add	a5,s11,a5
    80002c1c:	0007c783          	lbu	a5,0(a5)
    80002c20:	02e6d73b          	divuw	a4,a3,a4
    80002c24:	f8f400a3          	sb	a5,-127(s0)
    80002c28:	12a5f463          	bgeu	a1,a0,80002d50 <__printf+0x278>
    80002c2c:	00a00693          	li	a3,10
    80002c30:	00900593          	li	a1,9
    80002c34:	02d777bb          	remuw	a5,a4,a3
    80002c38:	02079793          	slli	a5,a5,0x20
    80002c3c:	0207d793          	srli	a5,a5,0x20
    80002c40:	00fd87b3          	add	a5,s11,a5
    80002c44:	0007c503          	lbu	a0,0(a5)
    80002c48:	02d757bb          	divuw	a5,a4,a3
    80002c4c:	f8a40123          	sb	a0,-126(s0)
    80002c50:	48e5f263          	bgeu	a1,a4,800030d4 <__printf+0x5fc>
    80002c54:	06300513          	li	a0,99
    80002c58:	02d7f5bb          	remuw	a1,a5,a3
    80002c5c:	02059593          	slli	a1,a1,0x20
    80002c60:	0205d593          	srli	a1,a1,0x20
    80002c64:	00bd85b3          	add	a1,s11,a1
    80002c68:	0005c583          	lbu	a1,0(a1)
    80002c6c:	02d7d7bb          	divuw	a5,a5,a3
    80002c70:	f8b401a3          	sb	a1,-125(s0)
    80002c74:	48e57263          	bgeu	a0,a4,800030f8 <__printf+0x620>
    80002c78:	3e700513          	li	a0,999
    80002c7c:	02d7f5bb          	remuw	a1,a5,a3
    80002c80:	02059593          	slli	a1,a1,0x20
    80002c84:	0205d593          	srli	a1,a1,0x20
    80002c88:	00bd85b3          	add	a1,s11,a1
    80002c8c:	0005c583          	lbu	a1,0(a1)
    80002c90:	02d7d7bb          	divuw	a5,a5,a3
    80002c94:	f8b40223          	sb	a1,-124(s0)
    80002c98:	46e57663          	bgeu	a0,a4,80003104 <__printf+0x62c>
    80002c9c:	02d7f5bb          	remuw	a1,a5,a3
    80002ca0:	02059593          	slli	a1,a1,0x20
    80002ca4:	0205d593          	srli	a1,a1,0x20
    80002ca8:	00bd85b3          	add	a1,s11,a1
    80002cac:	0005c583          	lbu	a1,0(a1)
    80002cb0:	02d7d7bb          	divuw	a5,a5,a3
    80002cb4:	f8b402a3          	sb	a1,-123(s0)
    80002cb8:	46ea7863          	bgeu	s4,a4,80003128 <__printf+0x650>
    80002cbc:	02d7f5bb          	remuw	a1,a5,a3
    80002cc0:	02059593          	slli	a1,a1,0x20
    80002cc4:	0205d593          	srli	a1,a1,0x20
    80002cc8:	00bd85b3          	add	a1,s11,a1
    80002ccc:	0005c583          	lbu	a1,0(a1)
    80002cd0:	02d7d7bb          	divuw	a5,a5,a3
    80002cd4:	f8b40323          	sb	a1,-122(s0)
    80002cd8:	3eeaf863          	bgeu	s5,a4,800030c8 <__printf+0x5f0>
    80002cdc:	02d7f5bb          	remuw	a1,a5,a3
    80002ce0:	02059593          	slli	a1,a1,0x20
    80002ce4:	0205d593          	srli	a1,a1,0x20
    80002ce8:	00bd85b3          	add	a1,s11,a1
    80002cec:	0005c583          	lbu	a1,0(a1)
    80002cf0:	02d7d7bb          	divuw	a5,a5,a3
    80002cf4:	f8b403a3          	sb	a1,-121(s0)
    80002cf8:	42eb7e63          	bgeu	s6,a4,80003134 <__printf+0x65c>
    80002cfc:	02d7f5bb          	remuw	a1,a5,a3
    80002d00:	02059593          	slli	a1,a1,0x20
    80002d04:	0205d593          	srli	a1,a1,0x20
    80002d08:	00bd85b3          	add	a1,s11,a1
    80002d0c:	0005c583          	lbu	a1,0(a1)
    80002d10:	02d7d7bb          	divuw	a5,a5,a3
    80002d14:	f8b40423          	sb	a1,-120(s0)
    80002d18:	42ebfc63          	bgeu	s7,a4,80003150 <__printf+0x678>
    80002d1c:	02079793          	slli	a5,a5,0x20
    80002d20:	0207d793          	srli	a5,a5,0x20
    80002d24:	00fd8db3          	add	s11,s11,a5
    80002d28:	000dc703          	lbu	a4,0(s11)
    80002d2c:	00a00793          	li	a5,10
    80002d30:	00900c93          	li	s9,9
    80002d34:	f8e404a3          	sb	a4,-119(s0)
    80002d38:	00065c63          	bgez	a2,80002d50 <__printf+0x278>
    80002d3c:	f9040713          	addi	a4,s0,-112
    80002d40:	00f70733          	add	a4,a4,a5
    80002d44:	02d00693          	li	a3,45
    80002d48:	fed70823          	sb	a3,-16(a4)
    80002d4c:	00078c93          	mv	s9,a5
    80002d50:	f8040793          	addi	a5,s0,-128
    80002d54:	01978cb3          	add	s9,a5,s9
    80002d58:	f7f40d13          	addi	s10,s0,-129
    80002d5c:	000cc503          	lbu	a0,0(s9)
    80002d60:	fffc8c93          	addi	s9,s9,-1
    80002d64:	00000097          	auipc	ra,0x0
    80002d68:	b90080e7          	jalr	-1136(ra) # 800028f4 <consputc>
    80002d6c:	ffac98e3          	bne	s9,s10,80002d5c <__printf+0x284>
    80002d70:	00094503          	lbu	a0,0(s2)
    80002d74:	e00514e3          	bnez	a0,80002b7c <__printf+0xa4>
    80002d78:	1a0c1663          	bnez	s8,80002f24 <__printf+0x44c>
    80002d7c:	08813083          	ld	ra,136(sp)
    80002d80:	08013403          	ld	s0,128(sp)
    80002d84:	07813483          	ld	s1,120(sp)
    80002d88:	07013903          	ld	s2,112(sp)
    80002d8c:	06813983          	ld	s3,104(sp)
    80002d90:	06013a03          	ld	s4,96(sp)
    80002d94:	05813a83          	ld	s5,88(sp)
    80002d98:	05013b03          	ld	s6,80(sp)
    80002d9c:	04813b83          	ld	s7,72(sp)
    80002da0:	04013c03          	ld	s8,64(sp)
    80002da4:	03813c83          	ld	s9,56(sp)
    80002da8:	03013d03          	ld	s10,48(sp)
    80002dac:	02813d83          	ld	s11,40(sp)
    80002db0:	0d010113          	addi	sp,sp,208
    80002db4:	00008067          	ret
    80002db8:	07300713          	li	a4,115
    80002dbc:	1ce78a63          	beq	a5,a4,80002f90 <__printf+0x4b8>
    80002dc0:	07800713          	li	a4,120
    80002dc4:	1ee79e63          	bne	a5,a4,80002fc0 <__printf+0x4e8>
    80002dc8:	f7843783          	ld	a5,-136(s0)
    80002dcc:	0007a703          	lw	a4,0(a5)
    80002dd0:	00878793          	addi	a5,a5,8
    80002dd4:	f6f43c23          	sd	a5,-136(s0)
    80002dd8:	28074263          	bltz	a4,8000305c <__printf+0x584>
    80002ddc:	00002d97          	auipc	s11,0x2
    80002de0:	3acd8d93          	addi	s11,s11,940 # 80005188 <digits>
    80002de4:	00f77793          	andi	a5,a4,15
    80002de8:	00fd87b3          	add	a5,s11,a5
    80002dec:	0007c683          	lbu	a3,0(a5)
    80002df0:	00f00613          	li	a2,15
    80002df4:	0007079b          	sext.w	a5,a4
    80002df8:	f8d40023          	sb	a3,-128(s0)
    80002dfc:	0047559b          	srliw	a1,a4,0x4
    80002e00:	0047569b          	srliw	a3,a4,0x4
    80002e04:	00000c93          	li	s9,0
    80002e08:	0ee65063          	bge	a2,a4,80002ee8 <__printf+0x410>
    80002e0c:	00f6f693          	andi	a3,a3,15
    80002e10:	00dd86b3          	add	a3,s11,a3
    80002e14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002e18:	0087d79b          	srliw	a5,a5,0x8
    80002e1c:	00100c93          	li	s9,1
    80002e20:	f8d400a3          	sb	a3,-127(s0)
    80002e24:	0cb67263          	bgeu	a2,a1,80002ee8 <__printf+0x410>
    80002e28:	00f7f693          	andi	a3,a5,15
    80002e2c:	00dd86b3          	add	a3,s11,a3
    80002e30:	0006c583          	lbu	a1,0(a3)
    80002e34:	00f00613          	li	a2,15
    80002e38:	0047d69b          	srliw	a3,a5,0x4
    80002e3c:	f8b40123          	sb	a1,-126(s0)
    80002e40:	0047d593          	srli	a1,a5,0x4
    80002e44:	28f67e63          	bgeu	a2,a5,800030e0 <__printf+0x608>
    80002e48:	00f6f693          	andi	a3,a3,15
    80002e4c:	00dd86b3          	add	a3,s11,a3
    80002e50:	0006c503          	lbu	a0,0(a3)
    80002e54:	0087d813          	srli	a6,a5,0x8
    80002e58:	0087d69b          	srliw	a3,a5,0x8
    80002e5c:	f8a401a3          	sb	a0,-125(s0)
    80002e60:	28b67663          	bgeu	a2,a1,800030ec <__printf+0x614>
    80002e64:	00f6f693          	andi	a3,a3,15
    80002e68:	00dd86b3          	add	a3,s11,a3
    80002e6c:	0006c583          	lbu	a1,0(a3)
    80002e70:	00c7d513          	srli	a0,a5,0xc
    80002e74:	00c7d69b          	srliw	a3,a5,0xc
    80002e78:	f8b40223          	sb	a1,-124(s0)
    80002e7c:	29067a63          	bgeu	a2,a6,80003110 <__printf+0x638>
    80002e80:	00f6f693          	andi	a3,a3,15
    80002e84:	00dd86b3          	add	a3,s11,a3
    80002e88:	0006c583          	lbu	a1,0(a3)
    80002e8c:	0107d813          	srli	a6,a5,0x10
    80002e90:	0107d69b          	srliw	a3,a5,0x10
    80002e94:	f8b402a3          	sb	a1,-123(s0)
    80002e98:	28a67263          	bgeu	a2,a0,8000311c <__printf+0x644>
    80002e9c:	00f6f693          	andi	a3,a3,15
    80002ea0:	00dd86b3          	add	a3,s11,a3
    80002ea4:	0006c683          	lbu	a3,0(a3)
    80002ea8:	0147d79b          	srliw	a5,a5,0x14
    80002eac:	f8d40323          	sb	a3,-122(s0)
    80002eb0:	21067663          	bgeu	a2,a6,800030bc <__printf+0x5e4>
    80002eb4:	02079793          	slli	a5,a5,0x20
    80002eb8:	0207d793          	srli	a5,a5,0x20
    80002ebc:	00fd8db3          	add	s11,s11,a5
    80002ec0:	000dc683          	lbu	a3,0(s11)
    80002ec4:	00800793          	li	a5,8
    80002ec8:	00700c93          	li	s9,7
    80002ecc:	f8d403a3          	sb	a3,-121(s0)
    80002ed0:	00075c63          	bgez	a4,80002ee8 <__printf+0x410>
    80002ed4:	f9040713          	addi	a4,s0,-112
    80002ed8:	00f70733          	add	a4,a4,a5
    80002edc:	02d00693          	li	a3,45
    80002ee0:	fed70823          	sb	a3,-16(a4)
    80002ee4:	00078c93          	mv	s9,a5
    80002ee8:	f8040793          	addi	a5,s0,-128
    80002eec:	01978cb3          	add	s9,a5,s9
    80002ef0:	f7f40d13          	addi	s10,s0,-129
    80002ef4:	000cc503          	lbu	a0,0(s9)
    80002ef8:	fffc8c93          	addi	s9,s9,-1
    80002efc:	00000097          	auipc	ra,0x0
    80002f00:	9f8080e7          	jalr	-1544(ra) # 800028f4 <consputc>
    80002f04:	ff9d18e3          	bne	s10,s9,80002ef4 <__printf+0x41c>
    80002f08:	0100006f          	j	80002f18 <__printf+0x440>
    80002f0c:	00000097          	auipc	ra,0x0
    80002f10:	9e8080e7          	jalr	-1560(ra) # 800028f4 <consputc>
    80002f14:	000c8493          	mv	s1,s9
    80002f18:	00094503          	lbu	a0,0(s2)
    80002f1c:	c60510e3          	bnez	a0,80002b7c <__printf+0xa4>
    80002f20:	e40c0ee3          	beqz	s8,80002d7c <__printf+0x2a4>
    80002f24:	00004517          	auipc	a0,0x4
    80002f28:	c1c50513          	addi	a0,a0,-996 # 80006b40 <pr>
    80002f2c:	00001097          	auipc	ra,0x1
    80002f30:	94c080e7          	jalr	-1716(ra) # 80003878 <release>
    80002f34:	e49ff06f          	j	80002d7c <__printf+0x2a4>
    80002f38:	f7843783          	ld	a5,-136(s0)
    80002f3c:	03000513          	li	a0,48
    80002f40:	01000d13          	li	s10,16
    80002f44:	00878713          	addi	a4,a5,8
    80002f48:	0007bc83          	ld	s9,0(a5)
    80002f4c:	f6e43c23          	sd	a4,-136(s0)
    80002f50:	00000097          	auipc	ra,0x0
    80002f54:	9a4080e7          	jalr	-1628(ra) # 800028f4 <consputc>
    80002f58:	07800513          	li	a0,120
    80002f5c:	00000097          	auipc	ra,0x0
    80002f60:	998080e7          	jalr	-1640(ra) # 800028f4 <consputc>
    80002f64:	00002d97          	auipc	s11,0x2
    80002f68:	224d8d93          	addi	s11,s11,548 # 80005188 <digits>
    80002f6c:	03ccd793          	srli	a5,s9,0x3c
    80002f70:	00fd87b3          	add	a5,s11,a5
    80002f74:	0007c503          	lbu	a0,0(a5)
    80002f78:	fffd0d1b          	addiw	s10,s10,-1
    80002f7c:	004c9c93          	slli	s9,s9,0x4
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	974080e7          	jalr	-1676(ra) # 800028f4 <consputc>
    80002f88:	fe0d12e3          	bnez	s10,80002f6c <__printf+0x494>
    80002f8c:	f8dff06f          	j	80002f18 <__printf+0x440>
    80002f90:	f7843783          	ld	a5,-136(s0)
    80002f94:	0007bc83          	ld	s9,0(a5)
    80002f98:	00878793          	addi	a5,a5,8
    80002f9c:	f6f43c23          	sd	a5,-136(s0)
    80002fa0:	000c9a63          	bnez	s9,80002fb4 <__printf+0x4dc>
    80002fa4:	1080006f          	j	800030ac <__printf+0x5d4>
    80002fa8:	001c8c93          	addi	s9,s9,1
    80002fac:	00000097          	auipc	ra,0x0
    80002fb0:	948080e7          	jalr	-1720(ra) # 800028f4 <consputc>
    80002fb4:	000cc503          	lbu	a0,0(s9)
    80002fb8:	fe0518e3          	bnez	a0,80002fa8 <__printf+0x4d0>
    80002fbc:	f5dff06f          	j	80002f18 <__printf+0x440>
    80002fc0:	02500513          	li	a0,37
    80002fc4:	00000097          	auipc	ra,0x0
    80002fc8:	930080e7          	jalr	-1744(ra) # 800028f4 <consputc>
    80002fcc:	000c8513          	mv	a0,s9
    80002fd0:	00000097          	auipc	ra,0x0
    80002fd4:	924080e7          	jalr	-1756(ra) # 800028f4 <consputc>
    80002fd8:	f41ff06f          	j	80002f18 <__printf+0x440>
    80002fdc:	02500513          	li	a0,37
    80002fe0:	00000097          	auipc	ra,0x0
    80002fe4:	914080e7          	jalr	-1772(ra) # 800028f4 <consputc>
    80002fe8:	f31ff06f          	j	80002f18 <__printf+0x440>
    80002fec:	00030513          	mv	a0,t1
    80002ff0:	00000097          	auipc	ra,0x0
    80002ff4:	7bc080e7          	jalr	1980(ra) # 800037ac <acquire>
    80002ff8:	b4dff06f          	j	80002b44 <__printf+0x6c>
    80002ffc:	40c0053b          	negw	a0,a2
    80003000:	00a00713          	li	a4,10
    80003004:	02e576bb          	remuw	a3,a0,a4
    80003008:	00002d97          	auipc	s11,0x2
    8000300c:	180d8d93          	addi	s11,s11,384 # 80005188 <digits>
    80003010:	ff700593          	li	a1,-9
    80003014:	02069693          	slli	a3,a3,0x20
    80003018:	0206d693          	srli	a3,a3,0x20
    8000301c:	00dd86b3          	add	a3,s11,a3
    80003020:	0006c683          	lbu	a3,0(a3)
    80003024:	02e557bb          	divuw	a5,a0,a4
    80003028:	f8d40023          	sb	a3,-128(s0)
    8000302c:	10b65e63          	bge	a2,a1,80003148 <__printf+0x670>
    80003030:	06300593          	li	a1,99
    80003034:	02e7f6bb          	remuw	a3,a5,a4
    80003038:	02069693          	slli	a3,a3,0x20
    8000303c:	0206d693          	srli	a3,a3,0x20
    80003040:	00dd86b3          	add	a3,s11,a3
    80003044:	0006c683          	lbu	a3,0(a3)
    80003048:	02e7d73b          	divuw	a4,a5,a4
    8000304c:	00200793          	li	a5,2
    80003050:	f8d400a3          	sb	a3,-127(s0)
    80003054:	bca5ece3          	bltu	a1,a0,80002c2c <__printf+0x154>
    80003058:	ce5ff06f          	j	80002d3c <__printf+0x264>
    8000305c:	40e007bb          	negw	a5,a4
    80003060:	00002d97          	auipc	s11,0x2
    80003064:	128d8d93          	addi	s11,s11,296 # 80005188 <digits>
    80003068:	00f7f693          	andi	a3,a5,15
    8000306c:	00dd86b3          	add	a3,s11,a3
    80003070:	0006c583          	lbu	a1,0(a3)
    80003074:	ff100613          	li	a2,-15
    80003078:	0047d69b          	srliw	a3,a5,0x4
    8000307c:	f8b40023          	sb	a1,-128(s0)
    80003080:	0047d59b          	srliw	a1,a5,0x4
    80003084:	0ac75e63          	bge	a4,a2,80003140 <__printf+0x668>
    80003088:	00f6f693          	andi	a3,a3,15
    8000308c:	00dd86b3          	add	a3,s11,a3
    80003090:	0006c603          	lbu	a2,0(a3)
    80003094:	00f00693          	li	a3,15
    80003098:	0087d79b          	srliw	a5,a5,0x8
    8000309c:	f8c400a3          	sb	a2,-127(s0)
    800030a0:	d8b6e4e3          	bltu	a3,a1,80002e28 <__printf+0x350>
    800030a4:	00200793          	li	a5,2
    800030a8:	e2dff06f          	j	80002ed4 <__printf+0x3fc>
    800030ac:	00002c97          	auipc	s9,0x2
    800030b0:	0bcc8c93          	addi	s9,s9,188 # 80005168 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    800030b4:	02800513          	li	a0,40
    800030b8:	ef1ff06f          	j	80002fa8 <__printf+0x4d0>
    800030bc:	00700793          	li	a5,7
    800030c0:	00600c93          	li	s9,6
    800030c4:	e0dff06f          	j	80002ed0 <__printf+0x3f8>
    800030c8:	00700793          	li	a5,7
    800030cc:	00600c93          	li	s9,6
    800030d0:	c69ff06f          	j	80002d38 <__printf+0x260>
    800030d4:	00300793          	li	a5,3
    800030d8:	00200c93          	li	s9,2
    800030dc:	c5dff06f          	j	80002d38 <__printf+0x260>
    800030e0:	00300793          	li	a5,3
    800030e4:	00200c93          	li	s9,2
    800030e8:	de9ff06f          	j	80002ed0 <__printf+0x3f8>
    800030ec:	00400793          	li	a5,4
    800030f0:	00300c93          	li	s9,3
    800030f4:	dddff06f          	j	80002ed0 <__printf+0x3f8>
    800030f8:	00400793          	li	a5,4
    800030fc:	00300c93          	li	s9,3
    80003100:	c39ff06f          	j	80002d38 <__printf+0x260>
    80003104:	00500793          	li	a5,5
    80003108:	00400c93          	li	s9,4
    8000310c:	c2dff06f          	j	80002d38 <__printf+0x260>
    80003110:	00500793          	li	a5,5
    80003114:	00400c93          	li	s9,4
    80003118:	db9ff06f          	j	80002ed0 <__printf+0x3f8>
    8000311c:	00600793          	li	a5,6
    80003120:	00500c93          	li	s9,5
    80003124:	dadff06f          	j	80002ed0 <__printf+0x3f8>
    80003128:	00600793          	li	a5,6
    8000312c:	00500c93          	li	s9,5
    80003130:	c09ff06f          	j	80002d38 <__printf+0x260>
    80003134:	00800793          	li	a5,8
    80003138:	00700c93          	li	s9,7
    8000313c:	bfdff06f          	j	80002d38 <__printf+0x260>
    80003140:	00100793          	li	a5,1
    80003144:	d91ff06f          	j	80002ed4 <__printf+0x3fc>
    80003148:	00100793          	li	a5,1
    8000314c:	bf1ff06f          	j	80002d3c <__printf+0x264>
    80003150:	00900793          	li	a5,9
    80003154:	00800c93          	li	s9,8
    80003158:	be1ff06f          	j	80002d38 <__printf+0x260>
    8000315c:	00002517          	auipc	a0,0x2
    80003160:	01450513          	addi	a0,a0,20 # 80005170 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80003164:	00000097          	auipc	ra,0x0
    80003168:	918080e7          	jalr	-1768(ra) # 80002a7c <panic>

000000008000316c <printfinit>:
    8000316c:	fe010113          	addi	sp,sp,-32
    80003170:	00813823          	sd	s0,16(sp)
    80003174:	00913423          	sd	s1,8(sp)
    80003178:	00113c23          	sd	ra,24(sp)
    8000317c:	02010413          	addi	s0,sp,32
    80003180:	00004497          	auipc	s1,0x4
    80003184:	9c048493          	addi	s1,s1,-1600 # 80006b40 <pr>
    80003188:	00048513          	mv	a0,s1
    8000318c:	00002597          	auipc	a1,0x2
    80003190:	ff458593          	addi	a1,a1,-12 # 80005180 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80003194:	00000097          	auipc	ra,0x0
    80003198:	5f4080e7          	jalr	1524(ra) # 80003788 <initlock>
    8000319c:	01813083          	ld	ra,24(sp)
    800031a0:	01013403          	ld	s0,16(sp)
    800031a4:	0004ac23          	sw	zero,24(s1)
    800031a8:	00813483          	ld	s1,8(sp)
    800031ac:	02010113          	addi	sp,sp,32
    800031b0:	00008067          	ret

00000000800031b4 <uartinit>:
    800031b4:	ff010113          	addi	sp,sp,-16
    800031b8:	00813423          	sd	s0,8(sp)
    800031bc:	01010413          	addi	s0,sp,16
    800031c0:	100007b7          	lui	a5,0x10000
    800031c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800031c8:	f8000713          	li	a4,-128
    800031cc:	00e781a3          	sb	a4,3(a5)
    800031d0:	00300713          	li	a4,3
    800031d4:	00e78023          	sb	a4,0(a5)
    800031d8:	000780a3          	sb	zero,1(a5)
    800031dc:	00e781a3          	sb	a4,3(a5)
    800031e0:	00700693          	li	a3,7
    800031e4:	00d78123          	sb	a3,2(a5)
    800031e8:	00e780a3          	sb	a4,1(a5)
    800031ec:	00813403          	ld	s0,8(sp)
    800031f0:	01010113          	addi	sp,sp,16
    800031f4:	00008067          	ret

00000000800031f8 <uartputc>:
    800031f8:	00002797          	auipc	a5,0x2
    800031fc:	6d07a783          	lw	a5,1744(a5) # 800058c8 <panicked>
    80003200:	00078463          	beqz	a5,80003208 <uartputc+0x10>
    80003204:	0000006f          	j	80003204 <uartputc+0xc>
    80003208:	fd010113          	addi	sp,sp,-48
    8000320c:	02813023          	sd	s0,32(sp)
    80003210:	00913c23          	sd	s1,24(sp)
    80003214:	01213823          	sd	s2,16(sp)
    80003218:	01313423          	sd	s3,8(sp)
    8000321c:	02113423          	sd	ra,40(sp)
    80003220:	03010413          	addi	s0,sp,48
    80003224:	00002917          	auipc	s2,0x2
    80003228:	6ac90913          	addi	s2,s2,1708 # 800058d0 <uart_tx_r>
    8000322c:	00093783          	ld	a5,0(s2)
    80003230:	00002497          	auipc	s1,0x2
    80003234:	6a848493          	addi	s1,s1,1704 # 800058d8 <uart_tx_w>
    80003238:	0004b703          	ld	a4,0(s1)
    8000323c:	02078693          	addi	a3,a5,32
    80003240:	00050993          	mv	s3,a0
    80003244:	02e69c63          	bne	a3,a4,8000327c <uartputc+0x84>
    80003248:	00001097          	auipc	ra,0x1
    8000324c:	834080e7          	jalr	-1996(ra) # 80003a7c <push_on>
    80003250:	00093783          	ld	a5,0(s2)
    80003254:	0004b703          	ld	a4,0(s1)
    80003258:	02078793          	addi	a5,a5,32
    8000325c:	00e79463          	bne	a5,a4,80003264 <uartputc+0x6c>
    80003260:	0000006f          	j	80003260 <uartputc+0x68>
    80003264:	00001097          	auipc	ra,0x1
    80003268:	88c080e7          	jalr	-1908(ra) # 80003af0 <pop_on>
    8000326c:	00093783          	ld	a5,0(s2)
    80003270:	0004b703          	ld	a4,0(s1)
    80003274:	02078693          	addi	a3,a5,32
    80003278:	fce688e3          	beq	a3,a4,80003248 <uartputc+0x50>
    8000327c:	01f77693          	andi	a3,a4,31
    80003280:	00004597          	auipc	a1,0x4
    80003284:	8e058593          	addi	a1,a1,-1824 # 80006b60 <uart_tx_buf>
    80003288:	00d586b3          	add	a3,a1,a3
    8000328c:	00170713          	addi	a4,a4,1
    80003290:	01368023          	sb	s3,0(a3)
    80003294:	00e4b023          	sd	a4,0(s1)
    80003298:	10000637          	lui	a2,0x10000
    8000329c:	02f71063          	bne	a4,a5,800032bc <uartputc+0xc4>
    800032a0:	0340006f          	j	800032d4 <uartputc+0xdc>
    800032a4:	00074703          	lbu	a4,0(a4)
    800032a8:	00f93023          	sd	a5,0(s2)
    800032ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800032b0:	00093783          	ld	a5,0(s2)
    800032b4:	0004b703          	ld	a4,0(s1)
    800032b8:	00f70e63          	beq	a4,a5,800032d4 <uartputc+0xdc>
    800032bc:	00564683          	lbu	a3,5(a2)
    800032c0:	01f7f713          	andi	a4,a5,31
    800032c4:	00e58733          	add	a4,a1,a4
    800032c8:	0206f693          	andi	a3,a3,32
    800032cc:	00178793          	addi	a5,a5,1
    800032d0:	fc069ae3          	bnez	a3,800032a4 <uartputc+0xac>
    800032d4:	02813083          	ld	ra,40(sp)
    800032d8:	02013403          	ld	s0,32(sp)
    800032dc:	01813483          	ld	s1,24(sp)
    800032e0:	01013903          	ld	s2,16(sp)
    800032e4:	00813983          	ld	s3,8(sp)
    800032e8:	03010113          	addi	sp,sp,48
    800032ec:	00008067          	ret

00000000800032f0 <uartputc_sync>:
    800032f0:	ff010113          	addi	sp,sp,-16
    800032f4:	00813423          	sd	s0,8(sp)
    800032f8:	01010413          	addi	s0,sp,16
    800032fc:	00002717          	auipc	a4,0x2
    80003300:	5cc72703          	lw	a4,1484(a4) # 800058c8 <panicked>
    80003304:	02071663          	bnez	a4,80003330 <uartputc_sync+0x40>
    80003308:	00050793          	mv	a5,a0
    8000330c:	100006b7          	lui	a3,0x10000
    80003310:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003314:	02077713          	andi	a4,a4,32
    80003318:	fe070ce3          	beqz	a4,80003310 <uartputc_sync+0x20>
    8000331c:	0ff7f793          	andi	a5,a5,255
    80003320:	00f68023          	sb	a5,0(a3)
    80003324:	00813403          	ld	s0,8(sp)
    80003328:	01010113          	addi	sp,sp,16
    8000332c:	00008067          	ret
    80003330:	0000006f          	j	80003330 <uartputc_sync+0x40>

0000000080003334 <uartstart>:
    80003334:	ff010113          	addi	sp,sp,-16
    80003338:	00813423          	sd	s0,8(sp)
    8000333c:	01010413          	addi	s0,sp,16
    80003340:	00002617          	auipc	a2,0x2
    80003344:	59060613          	addi	a2,a2,1424 # 800058d0 <uart_tx_r>
    80003348:	00002517          	auipc	a0,0x2
    8000334c:	59050513          	addi	a0,a0,1424 # 800058d8 <uart_tx_w>
    80003350:	00063783          	ld	a5,0(a2)
    80003354:	00053703          	ld	a4,0(a0)
    80003358:	04f70263          	beq	a4,a5,8000339c <uartstart+0x68>
    8000335c:	100005b7          	lui	a1,0x10000
    80003360:	00004817          	auipc	a6,0x4
    80003364:	80080813          	addi	a6,a6,-2048 # 80006b60 <uart_tx_buf>
    80003368:	01c0006f          	j	80003384 <uartstart+0x50>
    8000336c:	0006c703          	lbu	a4,0(a3)
    80003370:	00f63023          	sd	a5,0(a2)
    80003374:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003378:	00063783          	ld	a5,0(a2)
    8000337c:	00053703          	ld	a4,0(a0)
    80003380:	00f70e63          	beq	a4,a5,8000339c <uartstart+0x68>
    80003384:	01f7f713          	andi	a4,a5,31
    80003388:	00e806b3          	add	a3,a6,a4
    8000338c:	0055c703          	lbu	a4,5(a1)
    80003390:	00178793          	addi	a5,a5,1
    80003394:	02077713          	andi	a4,a4,32
    80003398:	fc071ae3          	bnez	a4,8000336c <uartstart+0x38>
    8000339c:	00813403          	ld	s0,8(sp)
    800033a0:	01010113          	addi	sp,sp,16
    800033a4:	00008067          	ret

00000000800033a8 <uartgetc>:
    800033a8:	ff010113          	addi	sp,sp,-16
    800033ac:	00813423          	sd	s0,8(sp)
    800033b0:	01010413          	addi	s0,sp,16
    800033b4:	10000737          	lui	a4,0x10000
    800033b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800033bc:	0017f793          	andi	a5,a5,1
    800033c0:	00078c63          	beqz	a5,800033d8 <uartgetc+0x30>
    800033c4:	00074503          	lbu	a0,0(a4)
    800033c8:	0ff57513          	andi	a0,a0,255
    800033cc:	00813403          	ld	s0,8(sp)
    800033d0:	01010113          	addi	sp,sp,16
    800033d4:	00008067          	ret
    800033d8:	fff00513          	li	a0,-1
    800033dc:	ff1ff06f          	j	800033cc <uartgetc+0x24>

00000000800033e0 <uartintr>:
    800033e0:	100007b7          	lui	a5,0x10000
    800033e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800033e8:	0017f793          	andi	a5,a5,1
    800033ec:	0a078463          	beqz	a5,80003494 <uartintr+0xb4>
    800033f0:	fe010113          	addi	sp,sp,-32
    800033f4:	00813823          	sd	s0,16(sp)
    800033f8:	00913423          	sd	s1,8(sp)
    800033fc:	00113c23          	sd	ra,24(sp)
    80003400:	02010413          	addi	s0,sp,32
    80003404:	100004b7          	lui	s1,0x10000
    80003408:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000340c:	0ff57513          	andi	a0,a0,255
    80003410:	fffff097          	auipc	ra,0xfffff
    80003414:	534080e7          	jalr	1332(ra) # 80002944 <consoleintr>
    80003418:	0054c783          	lbu	a5,5(s1)
    8000341c:	0017f793          	andi	a5,a5,1
    80003420:	fe0794e3          	bnez	a5,80003408 <uartintr+0x28>
    80003424:	00002617          	auipc	a2,0x2
    80003428:	4ac60613          	addi	a2,a2,1196 # 800058d0 <uart_tx_r>
    8000342c:	00002517          	auipc	a0,0x2
    80003430:	4ac50513          	addi	a0,a0,1196 # 800058d8 <uart_tx_w>
    80003434:	00063783          	ld	a5,0(a2)
    80003438:	00053703          	ld	a4,0(a0)
    8000343c:	04f70263          	beq	a4,a5,80003480 <uartintr+0xa0>
    80003440:	100005b7          	lui	a1,0x10000
    80003444:	00003817          	auipc	a6,0x3
    80003448:	71c80813          	addi	a6,a6,1820 # 80006b60 <uart_tx_buf>
    8000344c:	01c0006f          	j	80003468 <uartintr+0x88>
    80003450:	0006c703          	lbu	a4,0(a3)
    80003454:	00f63023          	sd	a5,0(a2)
    80003458:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000345c:	00063783          	ld	a5,0(a2)
    80003460:	00053703          	ld	a4,0(a0)
    80003464:	00f70e63          	beq	a4,a5,80003480 <uartintr+0xa0>
    80003468:	01f7f713          	andi	a4,a5,31
    8000346c:	00e806b3          	add	a3,a6,a4
    80003470:	0055c703          	lbu	a4,5(a1)
    80003474:	00178793          	addi	a5,a5,1
    80003478:	02077713          	andi	a4,a4,32
    8000347c:	fc071ae3          	bnez	a4,80003450 <uartintr+0x70>
    80003480:	01813083          	ld	ra,24(sp)
    80003484:	01013403          	ld	s0,16(sp)
    80003488:	00813483          	ld	s1,8(sp)
    8000348c:	02010113          	addi	sp,sp,32
    80003490:	00008067          	ret
    80003494:	00002617          	auipc	a2,0x2
    80003498:	43c60613          	addi	a2,a2,1084 # 800058d0 <uart_tx_r>
    8000349c:	00002517          	auipc	a0,0x2
    800034a0:	43c50513          	addi	a0,a0,1084 # 800058d8 <uart_tx_w>
    800034a4:	00063783          	ld	a5,0(a2)
    800034a8:	00053703          	ld	a4,0(a0)
    800034ac:	04f70263          	beq	a4,a5,800034f0 <uartintr+0x110>
    800034b0:	100005b7          	lui	a1,0x10000
    800034b4:	00003817          	auipc	a6,0x3
    800034b8:	6ac80813          	addi	a6,a6,1708 # 80006b60 <uart_tx_buf>
    800034bc:	01c0006f          	j	800034d8 <uartintr+0xf8>
    800034c0:	0006c703          	lbu	a4,0(a3)
    800034c4:	00f63023          	sd	a5,0(a2)
    800034c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800034cc:	00063783          	ld	a5,0(a2)
    800034d0:	00053703          	ld	a4,0(a0)
    800034d4:	02f70063          	beq	a4,a5,800034f4 <uartintr+0x114>
    800034d8:	01f7f713          	andi	a4,a5,31
    800034dc:	00e806b3          	add	a3,a6,a4
    800034e0:	0055c703          	lbu	a4,5(a1)
    800034e4:	00178793          	addi	a5,a5,1
    800034e8:	02077713          	andi	a4,a4,32
    800034ec:	fc071ae3          	bnez	a4,800034c0 <uartintr+0xe0>
    800034f0:	00008067          	ret
    800034f4:	00008067          	ret

00000000800034f8 <kinit>:
    800034f8:	fc010113          	addi	sp,sp,-64
    800034fc:	02913423          	sd	s1,40(sp)
    80003500:	fffff7b7          	lui	a5,0xfffff
    80003504:	00004497          	auipc	s1,0x4
    80003508:	67b48493          	addi	s1,s1,1659 # 80007b7f <end+0xfff>
    8000350c:	02813823          	sd	s0,48(sp)
    80003510:	01313c23          	sd	s3,24(sp)
    80003514:	00f4f4b3          	and	s1,s1,a5
    80003518:	02113c23          	sd	ra,56(sp)
    8000351c:	03213023          	sd	s2,32(sp)
    80003520:	01413823          	sd	s4,16(sp)
    80003524:	01513423          	sd	s5,8(sp)
    80003528:	04010413          	addi	s0,sp,64
    8000352c:	000017b7          	lui	a5,0x1
    80003530:	01100993          	li	s3,17
    80003534:	00f487b3          	add	a5,s1,a5
    80003538:	01b99993          	slli	s3,s3,0x1b
    8000353c:	06f9e063          	bltu	s3,a5,8000359c <kinit+0xa4>
    80003540:	00003a97          	auipc	s5,0x3
    80003544:	640a8a93          	addi	s5,s5,1600 # 80006b80 <end>
    80003548:	0754ec63          	bltu	s1,s5,800035c0 <kinit+0xc8>
    8000354c:	0734fa63          	bgeu	s1,s3,800035c0 <kinit+0xc8>
    80003550:	00088a37          	lui	s4,0x88
    80003554:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003558:	00002917          	auipc	s2,0x2
    8000355c:	38890913          	addi	s2,s2,904 # 800058e0 <kmem>
    80003560:	00ca1a13          	slli	s4,s4,0xc
    80003564:	0140006f          	j	80003578 <kinit+0x80>
    80003568:	000017b7          	lui	a5,0x1
    8000356c:	00f484b3          	add	s1,s1,a5
    80003570:	0554e863          	bltu	s1,s5,800035c0 <kinit+0xc8>
    80003574:	0534f663          	bgeu	s1,s3,800035c0 <kinit+0xc8>
    80003578:	00001637          	lui	a2,0x1
    8000357c:	00100593          	li	a1,1
    80003580:	00048513          	mv	a0,s1
    80003584:	00000097          	auipc	ra,0x0
    80003588:	5e4080e7          	jalr	1508(ra) # 80003b68 <__memset>
    8000358c:	00093783          	ld	a5,0(s2)
    80003590:	00f4b023          	sd	a5,0(s1)
    80003594:	00993023          	sd	s1,0(s2)
    80003598:	fd4498e3          	bne	s1,s4,80003568 <kinit+0x70>
    8000359c:	03813083          	ld	ra,56(sp)
    800035a0:	03013403          	ld	s0,48(sp)
    800035a4:	02813483          	ld	s1,40(sp)
    800035a8:	02013903          	ld	s2,32(sp)
    800035ac:	01813983          	ld	s3,24(sp)
    800035b0:	01013a03          	ld	s4,16(sp)
    800035b4:	00813a83          	ld	s5,8(sp)
    800035b8:	04010113          	addi	sp,sp,64
    800035bc:	00008067          	ret
    800035c0:	00002517          	auipc	a0,0x2
    800035c4:	be050513          	addi	a0,a0,-1056 # 800051a0 <digits+0x18>
    800035c8:	fffff097          	auipc	ra,0xfffff
    800035cc:	4b4080e7          	jalr	1204(ra) # 80002a7c <panic>

00000000800035d0 <freerange>:
    800035d0:	fc010113          	addi	sp,sp,-64
    800035d4:	000017b7          	lui	a5,0x1
    800035d8:	02913423          	sd	s1,40(sp)
    800035dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800035e0:	009504b3          	add	s1,a0,s1
    800035e4:	fffff537          	lui	a0,0xfffff
    800035e8:	02813823          	sd	s0,48(sp)
    800035ec:	02113c23          	sd	ra,56(sp)
    800035f0:	03213023          	sd	s2,32(sp)
    800035f4:	01313c23          	sd	s3,24(sp)
    800035f8:	01413823          	sd	s4,16(sp)
    800035fc:	01513423          	sd	s5,8(sp)
    80003600:	01613023          	sd	s6,0(sp)
    80003604:	04010413          	addi	s0,sp,64
    80003608:	00a4f4b3          	and	s1,s1,a0
    8000360c:	00f487b3          	add	a5,s1,a5
    80003610:	06f5e463          	bltu	a1,a5,80003678 <freerange+0xa8>
    80003614:	00003a97          	auipc	s5,0x3
    80003618:	56ca8a93          	addi	s5,s5,1388 # 80006b80 <end>
    8000361c:	0954e263          	bltu	s1,s5,800036a0 <freerange+0xd0>
    80003620:	01100993          	li	s3,17
    80003624:	01b99993          	slli	s3,s3,0x1b
    80003628:	0734fc63          	bgeu	s1,s3,800036a0 <freerange+0xd0>
    8000362c:	00058a13          	mv	s4,a1
    80003630:	00002917          	auipc	s2,0x2
    80003634:	2b090913          	addi	s2,s2,688 # 800058e0 <kmem>
    80003638:	00002b37          	lui	s6,0x2
    8000363c:	0140006f          	j	80003650 <freerange+0x80>
    80003640:	000017b7          	lui	a5,0x1
    80003644:	00f484b3          	add	s1,s1,a5
    80003648:	0554ec63          	bltu	s1,s5,800036a0 <freerange+0xd0>
    8000364c:	0534fa63          	bgeu	s1,s3,800036a0 <freerange+0xd0>
    80003650:	00001637          	lui	a2,0x1
    80003654:	00100593          	li	a1,1
    80003658:	00048513          	mv	a0,s1
    8000365c:	00000097          	auipc	ra,0x0
    80003660:	50c080e7          	jalr	1292(ra) # 80003b68 <__memset>
    80003664:	00093703          	ld	a4,0(s2)
    80003668:	016487b3          	add	a5,s1,s6
    8000366c:	00e4b023          	sd	a4,0(s1)
    80003670:	00993023          	sd	s1,0(s2)
    80003674:	fcfa76e3          	bgeu	s4,a5,80003640 <freerange+0x70>
    80003678:	03813083          	ld	ra,56(sp)
    8000367c:	03013403          	ld	s0,48(sp)
    80003680:	02813483          	ld	s1,40(sp)
    80003684:	02013903          	ld	s2,32(sp)
    80003688:	01813983          	ld	s3,24(sp)
    8000368c:	01013a03          	ld	s4,16(sp)
    80003690:	00813a83          	ld	s5,8(sp)
    80003694:	00013b03          	ld	s6,0(sp)
    80003698:	04010113          	addi	sp,sp,64
    8000369c:	00008067          	ret
    800036a0:	00002517          	auipc	a0,0x2
    800036a4:	b0050513          	addi	a0,a0,-1280 # 800051a0 <digits+0x18>
    800036a8:	fffff097          	auipc	ra,0xfffff
    800036ac:	3d4080e7          	jalr	980(ra) # 80002a7c <panic>

00000000800036b0 <kfree>:
    800036b0:	fe010113          	addi	sp,sp,-32
    800036b4:	00813823          	sd	s0,16(sp)
    800036b8:	00113c23          	sd	ra,24(sp)
    800036bc:	00913423          	sd	s1,8(sp)
    800036c0:	02010413          	addi	s0,sp,32
    800036c4:	03451793          	slli	a5,a0,0x34
    800036c8:	04079c63          	bnez	a5,80003720 <kfree+0x70>
    800036cc:	00003797          	auipc	a5,0x3
    800036d0:	4b478793          	addi	a5,a5,1204 # 80006b80 <end>
    800036d4:	00050493          	mv	s1,a0
    800036d8:	04f56463          	bltu	a0,a5,80003720 <kfree+0x70>
    800036dc:	01100793          	li	a5,17
    800036e0:	01b79793          	slli	a5,a5,0x1b
    800036e4:	02f57e63          	bgeu	a0,a5,80003720 <kfree+0x70>
    800036e8:	00001637          	lui	a2,0x1
    800036ec:	00100593          	li	a1,1
    800036f0:	00000097          	auipc	ra,0x0
    800036f4:	478080e7          	jalr	1144(ra) # 80003b68 <__memset>
    800036f8:	00002797          	auipc	a5,0x2
    800036fc:	1e878793          	addi	a5,a5,488 # 800058e0 <kmem>
    80003700:	0007b703          	ld	a4,0(a5)
    80003704:	01813083          	ld	ra,24(sp)
    80003708:	01013403          	ld	s0,16(sp)
    8000370c:	00e4b023          	sd	a4,0(s1)
    80003710:	0097b023          	sd	s1,0(a5)
    80003714:	00813483          	ld	s1,8(sp)
    80003718:	02010113          	addi	sp,sp,32
    8000371c:	00008067          	ret
    80003720:	00002517          	auipc	a0,0x2
    80003724:	a8050513          	addi	a0,a0,-1408 # 800051a0 <digits+0x18>
    80003728:	fffff097          	auipc	ra,0xfffff
    8000372c:	354080e7          	jalr	852(ra) # 80002a7c <panic>

0000000080003730 <kalloc>:
    80003730:	fe010113          	addi	sp,sp,-32
    80003734:	00813823          	sd	s0,16(sp)
    80003738:	00913423          	sd	s1,8(sp)
    8000373c:	00113c23          	sd	ra,24(sp)
    80003740:	02010413          	addi	s0,sp,32
    80003744:	00002797          	auipc	a5,0x2
    80003748:	19c78793          	addi	a5,a5,412 # 800058e0 <kmem>
    8000374c:	0007b483          	ld	s1,0(a5)
    80003750:	02048063          	beqz	s1,80003770 <kalloc+0x40>
    80003754:	0004b703          	ld	a4,0(s1)
    80003758:	00001637          	lui	a2,0x1
    8000375c:	00500593          	li	a1,5
    80003760:	00048513          	mv	a0,s1
    80003764:	00e7b023          	sd	a4,0(a5)
    80003768:	00000097          	auipc	ra,0x0
    8000376c:	400080e7          	jalr	1024(ra) # 80003b68 <__memset>
    80003770:	01813083          	ld	ra,24(sp)
    80003774:	01013403          	ld	s0,16(sp)
    80003778:	00048513          	mv	a0,s1
    8000377c:	00813483          	ld	s1,8(sp)
    80003780:	02010113          	addi	sp,sp,32
    80003784:	00008067          	ret

0000000080003788 <initlock>:
    80003788:	ff010113          	addi	sp,sp,-16
    8000378c:	00813423          	sd	s0,8(sp)
    80003790:	01010413          	addi	s0,sp,16
    80003794:	00813403          	ld	s0,8(sp)
    80003798:	00b53423          	sd	a1,8(a0)
    8000379c:	00052023          	sw	zero,0(a0)
    800037a0:	00053823          	sd	zero,16(a0)
    800037a4:	01010113          	addi	sp,sp,16
    800037a8:	00008067          	ret

00000000800037ac <acquire>:
    800037ac:	fe010113          	addi	sp,sp,-32
    800037b0:	00813823          	sd	s0,16(sp)
    800037b4:	00913423          	sd	s1,8(sp)
    800037b8:	00113c23          	sd	ra,24(sp)
    800037bc:	01213023          	sd	s2,0(sp)
    800037c0:	02010413          	addi	s0,sp,32
    800037c4:	00050493          	mv	s1,a0
    800037c8:	10002973          	csrr	s2,sstatus
    800037cc:	100027f3          	csrr	a5,sstatus
    800037d0:	ffd7f793          	andi	a5,a5,-3
    800037d4:	10079073          	csrw	sstatus,a5
    800037d8:	fffff097          	auipc	ra,0xfffff
    800037dc:	8ec080e7          	jalr	-1812(ra) # 800020c4 <mycpu>
    800037e0:	07852783          	lw	a5,120(a0)
    800037e4:	06078e63          	beqz	a5,80003860 <acquire+0xb4>
    800037e8:	fffff097          	auipc	ra,0xfffff
    800037ec:	8dc080e7          	jalr	-1828(ra) # 800020c4 <mycpu>
    800037f0:	07852783          	lw	a5,120(a0)
    800037f4:	0004a703          	lw	a4,0(s1)
    800037f8:	0017879b          	addiw	a5,a5,1
    800037fc:	06f52c23          	sw	a5,120(a0)
    80003800:	04071063          	bnez	a4,80003840 <acquire+0x94>
    80003804:	00100713          	li	a4,1
    80003808:	00070793          	mv	a5,a4
    8000380c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003810:	0007879b          	sext.w	a5,a5
    80003814:	fe079ae3          	bnez	a5,80003808 <acquire+0x5c>
    80003818:	0ff0000f          	fence
    8000381c:	fffff097          	auipc	ra,0xfffff
    80003820:	8a8080e7          	jalr	-1880(ra) # 800020c4 <mycpu>
    80003824:	01813083          	ld	ra,24(sp)
    80003828:	01013403          	ld	s0,16(sp)
    8000382c:	00a4b823          	sd	a0,16(s1)
    80003830:	00013903          	ld	s2,0(sp)
    80003834:	00813483          	ld	s1,8(sp)
    80003838:	02010113          	addi	sp,sp,32
    8000383c:	00008067          	ret
    80003840:	0104b903          	ld	s2,16(s1)
    80003844:	fffff097          	auipc	ra,0xfffff
    80003848:	880080e7          	jalr	-1920(ra) # 800020c4 <mycpu>
    8000384c:	faa91ce3          	bne	s2,a0,80003804 <acquire+0x58>
    80003850:	00002517          	auipc	a0,0x2
    80003854:	95850513          	addi	a0,a0,-1704 # 800051a8 <digits+0x20>
    80003858:	fffff097          	auipc	ra,0xfffff
    8000385c:	224080e7          	jalr	548(ra) # 80002a7c <panic>
    80003860:	00195913          	srli	s2,s2,0x1
    80003864:	fffff097          	auipc	ra,0xfffff
    80003868:	860080e7          	jalr	-1952(ra) # 800020c4 <mycpu>
    8000386c:	00197913          	andi	s2,s2,1
    80003870:	07252e23          	sw	s2,124(a0)
    80003874:	f75ff06f          	j	800037e8 <acquire+0x3c>

0000000080003878 <release>:
    80003878:	fe010113          	addi	sp,sp,-32
    8000387c:	00813823          	sd	s0,16(sp)
    80003880:	00113c23          	sd	ra,24(sp)
    80003884:	00913423          	sd	s1,8(sp)
    80003888:	01213023          	sd	s2,0(sp)
    8000388c:	02010413          	addi	s0,sp,32
    80003890:	00052783          	lw	a5,0(a0)
    80003894:	00079a63          	bnez	a5,800038a8 <release+0x30>
    80003898:	00002517          	auipc	a0,0x2
    8000389c:	91850513          	addi	a0,a0,-1768 # 800051b0 <digits+0x28>
    800038a0:	fffff097          	auipc	ra,0xfffff
    800038a4:	1dc080e7          	jalr	476(ra) # 80002a7c <panic>
    800038a8:	01053903          	ld	s2,16(a0)
    800038ac:	00050493          	mv	s1,a0
    800038b0:	fffff097          	auipc	ra,0xfffff
    800038b4:	814080e7          	jalr	-2028(ra) # 800020c4 <mycpu>
    800038b8:	fea910e3          	bne	s2,a0,80003898 <release+0x20>
    800038bc:	0004b823          	sd	zero,16(s1)
    800038c0:	0ff0000f          	fence
    800038c4:	0f50000f          	fence	iorw,ow
    800038c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800038cc:	ffffe097          	auipc	ra,0xffffe
    800038d0:	7f8080e7          	jalr	2040(ra) # 800020c4 <mycpu>
    800038d4:	100027f3          	csrr	a5,sstatus
    800038d8:	0027f793          	andi	a5,a5,2
    800038dc:	04079a63          	bnez	a5,80003930 <release+0xb8>
    800038e0:	07852783          	lw	a5,120(a0)
    800038e4:	02f05e63          	blez	a5,80003920 <release+0xa8>
    800038e8:	fff7871b          	addiw	a4,a5,-1
    800038ec:	06e52c23          	sw	a4,120(a0)
    800038f0:	00071c63          	bnez	a4,80003908 <release+0x90>
    800038f4:	07c52783          	lw	a5,124(a0)
    800038f8:	00078863          	beqz	a5,80003908 <release+0x90>
    800038fc:	100027f3          	csrr	a5,sstatus
    80003900:	0027e793          	ori	a5,a5,2
    80003904:	10079073          	csrw	sstatus,a5
    80003908:	01813083          	ld	ra,24(sp)
    8000390c:	01013403          	ld	s0,16(sp)
    80003910:	00813483          	ld	s1,8(sp)
    80003914:	00013903          	ld	s2,0(sp)
    80003918:	02010113          	addi	sp,sp,32
    8000391c:	00008067          	ret
    80003920:	00002517          	auipc	a0,0x2
    80003924:	8b050513          	addi	a0,a0,-1872 # 800051d0 <digits+0x48>
    80003928:	fffff097          	auipc	ra,0xfffff
    8000392c:	154080e7          	jalr	340(ra) # 80002a7c <panic>
    80003930:	00002517          	auipc	a0,0x2
    80003934:	88850513          	addi	a0,a0,-1912 # 800051b8 <digits+0x30>
    80003938:	fffff097          	auipc	ra,0xfffff
    8000393c:	144080e7          	jalr	324(ra) # 80002a7c <panic>

0000000080003940 <holding>:
    80003940:	00052783          	lw	a5,0(a0)
    80003944:	00079663          	bnez	a5,80003950 <holding+0x10>
    80003948:	00000513          	li	a0,0
    8000394c:	00008067          	ret
    80003950:	fe010113          	addi	sp,sp,-32
    80003954:	00813823          	sd	s0,16(sp)
    80003958:	00913423          	sd	s1,8(sp)
    8000395c:	00113c23          	sd	ra,24(sp)
    80003960:	02010413          	addi	s0,sp,32
    80003964:	01053483          	ld	s1,16(a0)
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	75c080e7          	jalr	1884(ra) # 800020c4 <mycpu>
    80003970:	01813083          	ld	ra,24(sp)
    80003974:	01013403          	ld	s0,16(sp)
    80003978:	40a48533          	sub	a0,s1,a0
    8000397c:	00153513          	seqz	a0,a0
    80003980:	00813483          	ld	s1,8(sp)
    80003984:	02010113          	addi	sp,sp,32
    80003988:	00008067          	ret

000000008000398c <push_off>:
    8000398c:	fe010113          	addi	sp,sp,-32
    80003990:	00813823          	sd	s0,16(sp)
    80003994:	00113c23          	sd	ra,24(sp)
    80003998:	00913423          	sd	s1,8(sp)
    8000399c:	02010413          	addi	s0,sp,32
    800039a0:	100024f3          	csrr	s1,sstatus
    800039a4:	100027f3          	csrr	a5,sstatus
    800039a8:	ffd7f793          	andi	a5,a5,-3
    800039ac:	10079073          	csrw	sstatus,a5
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	714080e7          	jalr	1812(ra) # 800020c4 <mycpu>
    800039b8:	07852783          	lw	a5,120(a0)
    800039bc:	02078663          	beqz	a5,800039e8 <push_off+0x5c>
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	704080e7          	jalr	1796(ra) # 800020c4 <mycpu>
    800039c8:	07852783          	lw	a5,120(a0)
    800039cc:	01813083          	ld	ra,24(sp)
    800039d0:	01013403          	ld	s0,16(sp)
    800039d4:	0017879b          	addiw	a5,a5,1
    800039d8:	06f52c23          	sw	a5,120(a0)
    800039dc:	00813483          	ld	s1,8(sp)
    800039e0:	02010113          	addi	sp,sp,32
    800039e4:	00008067          	ret
    800039e8:	0014d493          	srli	s1,s1,0x1
    800039ec:	ffffe097          	auipc	ra,0xffffe
    800039f0:	6d8080e7          	jalr	1752(ra) # 800020c4 <mycpu>
    800039f4:	0014f493          	andi	s1,s1,1
    800039f8:	06952e23          	sw	s1,124(a0)
    800039fc:	fc5ff06f          	j	800039c0 <push_off+0x34>

0000000080003a00 <pop_off>:
    80003a00:	ff010113          	addi	sp,sp,-16
    80003a04:	00813023          	sd	s0,0(sp)
    80003a08:	00113423          	sd	ra,8(sp)
    80003a0c:	01010413          	addi	s0,sp,16
    80003a10:	ffffe097          	auipc	ra,0xffffe
    80003a14:	6b4080e7          	jalr	1716(ra) # 800020c4 <mycpu>
    80003a18:	100027f3          	csrr	a5,sstatus
    80003a1c:	0027f793          	andi	a5,a5,2
    80003a20:	04079663          	bnez	a5,80003a6c <pop_off+0x6c>
    80003a24:	07852783          	lw	a5,120(a0)
    80003a28:	02f05a63          	blez	a5,80003a5c <pop_off+0x5c>
    80003a2c:	fff7871b          	addiw	a4,a5,-1
    80003a30:	06e52c23          	sw	a4,120(a0)
    80003a34:	00071c63          	bnez	a4,80003a4c <pop_off+0x4c>
    80003a38:	07c52783          	lw	a5,124(a0)
    80003a3c:	00078863          	beqz	a5,80003a4c <pop_off+0x4c>
    80003a40:	100027f3          	csrr	a5,sstatus
    80003a44:	0027e793          	ori	a5,a5,2
    80003a48:	10079073          	csrw	sstatus,a5
    80003a4c:	00813083          	ld	ra,8(sp)
    80003a50:	00013403          	ld	s0,0(sp)
    80003a54:	01010113          	addi	sp,sp,16
    80003a58:	00008067          	ret
    80003a5c:	00001517          	auipc	a0,0x1
    80003a60:	77450513          	addi	a0,a0,1908 # 800051d0 <digits+0x48>
    80003a64:	fffff097          	auipc	ra,0xfffff
    80003a68:	018080e7          	jalr	24(ra) # 80002a7c <panic>
    80003a6c:	00001517          	auipc	a0,0x1
    80003a70:	74c50513          	addi	a0,a0,1868 # 800051b8 <digits+0x30>
    80003a74:	fffff097          	auipc	ra,0xfffff
    80003a78:	008080e7          	jalr	8(ra) # 80002a7c <panic>

0000000080003a7c <push_on>:
    80003a7c:	fe010113          	addi	sp,sp,-32
    80003a80:	00813823          	sd	s0,16(sp)
    80003a84:	00113c23          	sd	ra,24(sp)
    80003a88:	00913423          	sd	s1,8(sp)
    80003a8c:	02010413          	addi	s0,sp,32
    80003a90:	100024f3          	csrr	s1,sstatus
    80003a94:	100027f3          	csrr	a5,sstatus
    80003a98:	0027e793          	ori	a5,a5,2
    80003a9c:	10079073          	csrw	sstatus,a5
    80003aa0:	ffffe097          	auipc	ra,0xffffe
    80003aa4:	624080e7          	jalr	1572(ra) # 800020c4 <mycpu>
    80003aa8:	07852783          	lw	a5,120(a0)
    80003aac:	02078663          	beqz	a5,80003ad8 <push_on+0x5c>
    80003ab0:	ffffe097          	auipc	ra,0xffffe
    80003ab4:	614080e7          	jalr	1556(ra) # 800020c4 <mycpu>
    80003ab8:	07852783          	lw	a5,120(a0)
    80003abc:	01813083          	ld	ra,24(sp)
    80003ac0:	01013403          	ld	s0,16(sp)
    80003ac4:	0017879b          	addiw	a5,a5,1
    80003ac8:	06f52c23          	sw	a5,120(a0)
    80003acc:	00813483          	ld	s1,8(sp)
    80003ad0:	02010113          	addi	sp,sp,32
    80003ad4:	00008067          	ret
    80003ad8:	0014d493          	srli	s1,s1,0x1
    80003adc:	ffffe097          	auipc	ra,0xffffe
    80003ae0:	5e8080e7          	jalr	1512(ra) # 800020c4 <mycpu>
    80003ae4:	0014f493          	andi	s1,s1,1
    80003ae8:	06952e23          	sw	s1,124(a0)
    80003aec:	fc5ff06f          	j	80003ab0 <push_on+0x34>

0000000080003af0 <pop_on>:
    80003af0:	ff010113          	addi	sp,sp,-16
    80003af4:	00813023          	sd	s0,0(sp)
    80003af8:	00113423          	sd	ra,8(sp)
    80003afc:	01010413          	addi	s0,sp,16
    80003b00:	ffffe097          	auipc	ra,0xffffe
    80003b04:	5c4080e7          	jalr	1476(ra) # 800020c4 <mycpu>
    80003b08:	100027f3          	csrr	a5,sstatus
    80003b0c:	0027f793          	andi	a5,a5,2
    80003b10:	04078463          	beqz	a5,80003b58 <pop_on+0x68>
    80003b14:	07852783          	lw	a5,120(a0)
    80003b18:	02f05863          	blez	a5,80003b48 <pop_on+0x58>
    80003b1c:	fff7879b          	addiw	a5,a5,-1
    80003b20:	06f52c23          	sw	a5,120(a0)
    80003b24:	07853783          	ld	a5,120(a0)
    80003b28:	00079863          	bnez	a5,80003b38 <pop_on+0x48>
    80003b2c:	100027f3          	csrr	a5,sstatus
    80003b30:	ffd7f793          	andi	a5,a5,-3
    80003b34:	10079073          	csrw	sstatus,a5
    80003b38:	00813083          	ld	ra,8(sp)
    80003b3c:	00013403          	ld	s0,0(sp)
    80003b40:	01010113          	addi	sp,sp,16
    80003b44:	00008067          	ret
    80003b48:	00001517          	auipc	a0,0x1
    80003b4c:	6b050513          	addi	a0,a0,1712 # 800051f8 <digits+0x70>
    80003b50:	fffff097          	auipc	ra,0xfffff
    80003b54:	f2c080e7          	jalr	-212(ra) # 80002a7c <panic>
    80003b58:	00001517          	auipc	a0,0x1
    80003b5c:	68050513          	addi	a0,a0,1664 # 800051d8 <digits+0x50>
    80003b60:	fffff097          	auipc	ra,0xfffff
    80003b64:	f1c080e7          	jalr	-228(ra) # 80002a7c <panic>

0000000080003b68 <__memset>:
    80003b68:	ff010113          	addi	sp,sp,-16
    80003b6c:	00813423          	sd	s0,8(sp)
    80003b70:	01010413          	addi	s0,sp,16
    80003b74:	1a060e63          	beqz	a2,80003d30 <__memset+0x1c8>
    80003b78:	40a007b3          	neg	a5,a0
    80003b7c:	0077f793          	andi	a5,a5,7
    80003b80:	00778693          	addi	a3,a5,7
    80003b84:	00b00813          	li	a6,11
    80003b88:	0ff5f593          	andi	a1,a1,255
    80003b8c:	fff6071b          	addiw	a4,a2,-1
    80003b90:	1b06e663          	bltu	a3,a6,80003d3c <__memset+0x1d4>
    80003b94:	1cd76463          	bltu	a4,a3,80003d5c <__memset+0x1f4>
    80003b98:	1a078e63          	beqz	a5,80003d54 <__memset+0x1ec>
    80003b9c:	00b50023          	sb	a1,0(a0)
    80003ba0:	00100713          	li	a4,1
    80003ba4:	1ae78463          	beq	a5,a4,80003d4c <__memset+0x1e4>
    80003ba8:	00b500a3          	sb	a1,1(a0)
    80003bac:	00200713          	li	a4,2
    80003bb0:	1ae78a63          	beq	a5,a4,80003d64 <__memset+0x1fc>
    80003bb4:	00b50123          	sb	a1,2(a0)
    80003bb8:	00300713          	li	a4,3
    80003bbc:	18e78463          	beq	a5,a4,80003d44 <__memset+0x1dc>
    80003bc0:	00b501a3          	sb	a1,3(a0)
    80003bc4:	00400713          	li	a4,4
    80003bc8:	1ae78263          	beq	a5,a4,80003d6c <__memset+0x204>
    80003bcc:	00b50223          	sb	a1,4(a0)
    80003bd0:	00500713          	li	a4,5
    80003bd4:	1ae78063          	beq	a5,a4,80003d74 <__memset+0x20c>
    80003bd8:	00b502a3          	sb	a1,5(a0)
    80003bdc:	00700713          	li	a4,7
    80003be0:	18e79e63          	bne	a5,a4,80003d7c <__memset+0x214>
    80003be4:	00b50323          	sb	a1,6(a0)
    80003be8:	00700e93          	li	t4,7
    80003bec:	00859713          	slli	a4,a1,0x8
    80003bf0:	00e5e733          	or	a4,a1,a4
    80003bf4:	01059e13          	slli	t3,a1,0x10
    80003bf8:	01c76e33          	or	t3,a4,t3
    80003bfc:	01859313          	slli	t1,a1,0x18
    80003c00:	006e6333          	or	t1,t3,t1
    80003c04:	02059893          	slli	a7,a1,0x20
    80003c08:	40f60e3b          	subw	t3,a2,a5
    80003c0c:	011368b3          	or	a7,t1,a7
    80003c10:	02859813          	slli	a6,a1,0x28
    80003c14:	0108e833          	or	a6,a7,a6
    80003c18:	03059693          	slli	a3,a1,0x30
    80003c1c:	003e589b          	srliw	a7,t3,0x3
    80003c20:	00d866b3          	or	a3,a6,a3
    80003c24:	03859713          	slli	a4,a1,0x38
    80003c28:	00389813          	slli	a6,a7,0x3
    80003c2c:	00f507b3          	add	a5,a0,a5
    80003c30:	00e6e733          	or	a4,a3,a4
    80003c34:	000e089b          	sext.w	a7,t3
    80003c38:	00f806b3          	add	a3,a6,a5
    80003c3c:	00e7b023          	sd	a4,0(a5)
    80003c40:	00878793          	addi	a5,a5,8
    80003c44:	fed79ce3          	bne	a5,a3,80003c3c <__memset+0xd4>
    80003c48:	ff8e7793          	andi	a5,t3,-8
    80003c4c:	0007871b          	sext.w	a4,a5
    80003c50:	01d787bb          	addw	a5,a5,t4
    80003c54:	0ce88e63          	beq	a7,a4,80003d30 <__memset+0x1c8>
    80003c58:	00f50733          	add	a4,a0,a5
    80003c5c:	00b70023          	sb	a1,0(a4)
    80003c60:	0017871b          	addiw	a4,a5,1
    80003c64:	0cc77663          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003c68:	00e50733          	add	a4,a0,a4
    80003c6c:	00b70023          	sb	a1,0(a4)
    80003c70:	0027871b          	addiw	a4,a5,2
    80003c74:	0ac77e63          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003c78:	00e50733          	add	a4,a0,a4
    80003c7c:	00b70023          	sb	a1,0(a4)
    80003c80:	0037871b          	addiw	a4,a5,3
    80003c84:	0ac77663          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003c88:	00e50733          	add	a4,a0,a4
    80003c8c:	00b70023          	sb	a1,0(a4)
    80003c90:	0047871b          	addiw	a4,a5,4
    80003c94:	08c77e63          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003c98:	00e50733          	add	a4,a0,a4
    80003c9c:	00b70023          	sb	a1,0(a4)
    80003ca0:	0057871b          	addiw	a4,a5,5
    80003ca4:	08c77663          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003ca8:	00e50733          	add	a4,a0,a4
    80003cac:	00b70023          	sb	a1,0(a4)
    80003cb0:	0067871b          	addiw	a4,a5,6
    80003cb4:	06c77e63          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003cb8:	00e50733          	add	a4,a0,a4
    80003cbc:	00b70023          	sb	a1,0(a4)
    80003cc0:	0077871b          	addiw	a4,a5,7
    80003cc4:	06c77663          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003cc8:	00e50733          	add	a4,a0,a4
    80003ccc:	00b70023          	sb	a1,0(a4)
    80003cd0:	0087871b          	addiw	a4,a5,8
    80003cd4:	04c77e63          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003cd8:	00e50733          	add	a4,a0,a4
    80003cdc:	00b70023          	sb	a1,0(a4)
    80003ce0:	0097871b          	addiw	a4,a5,9
    80003ce4:	04c77663          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003ce8:	00e50733          	add	a4,a0,a4
    80003cec:	00b70023          	sb	a1,0(a4)
    80003cf0:	00a7871b          	addiw	a4,a5,10
    80003cf4:	02c77e63          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003cf8:	00e50733          	add	a4,a0,a4
    80003cfc:	00b70023          	sb	a1,0(a4)
    80003d00:	00b7871b          	addiw	a4,a5,11
    80003d04:	02c77663          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003d08:	00e50733          	add	a4,a0,a4
    80003d0c:	00b70023          	sb	a1,0(a4)
    80003d10:	00c7871b          	addiw	a4,a5,12
    80003d14:	00c77e63          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003d18:	00e50733          	add	a4,a0,a4
    80003d1c:	00b70023          	sb	a1,0(a4)
    80003d20:	00d7879b          	addiw	a5,a5,13
    80003d24:	00c7f663          	bgeu	a5,a2,80003d30 <__memset+0x1c8>
    80003d28:	00f507b3          	add	a5,a0,a5
    80003d2c:	00b78023          	sb	a1,0(a5)
    80003d30:	00813403          	ld	s0,8(sp)
    80003d34:	01010113          	addi	sp,sp,16
    80003d38:	00008067          	ret
    80003d3c:	00b00693          	li	a3,11
    80003d40:	e55ff06f          	j	80003b94 <__memset+0x2c>
    80003d44:	00300e93          	li	t4,3
    80003d48:	ea5ff06f          	j	80003bec <__memset+0x84>
    80003d4c:	00100e93          	li	t4,1
    80003d50:	e9dff06f          	j	80003bec <__memset+0x84>
    80003d54:	00000e93          	li	t4,0
    80003d58:	e95ff06f          	j	80003bec <__memset+0x84>
    80003d5c:	00000793          	li	a5,0
    80003d60:	ef9ff06f          	j	80003c58 <__memset+0xf0>
    80003d64:	00200e93          	li	t4,2
    80003d68:	e85ff06f          	j	80003bec <__memset+0x84>
    80003d6c:	00400e93          	li	t4,4
    80003d70:	e7dff06f          	j	80003bec <__memset+0x84>
    80003d74:	00500e93          	li	t4,5
    80003d78:	e75ff06f          	j	80003bec <__memset+0x84>
    80003d7c:	00600e93          	li	t4,6
    80003d80:	e6dff06f          	j	80003bec <__memset+0x84>

0000000080003d84 <__memmove>:
    80003d84:	ff010113          	addi	sp,sp,-16
    80003d88:	00813423          	sd	s0,8(sp)
    80003d8c:	01010413          	addi	s0,sp,16
    80003d90:	0e060863          	beqz	a2,80003e80 <__memmove+0xfc>
    80003d94:	fff6069b          	addiw	a3,a2,-1
    80003d98:	0006881b          	sext.w	a6,a3
    80003d9c:	0ea5e863          	bltu	a1,a0,80003e8c <__memmove+0x108>
    80003da0:	00758713          	addi	a4,a1,7
    80003da4:	00a5e7b3          	or	a5,a1,a0
    80003da8:	40a70733          	sub	a4,a4,a0
    80003dac:	0077f793          	andi	a5,a5,7
    80003db0:	00f73713          	sltiu	a4,a4,15
    80003db4:	00174713          	xori	a4,a4,1
    80003db8:	0017b793          	seqz	a5,a5
    80003dbc:	00e7f7b3          	and	a5,a5,a4
    80003dc0:	10078863          	beqz	a5,80003ed0 <__memmove+0x14c>
    80003dc4:	00900793          	li	a5,9
    80003dc8:	1107f463          	bgeu	a5,a6,80003ed0 <__memmove+0x14c>
    80003dcc:	0036581b          	srliw	a6,a2,0x3
    80003dd0:	fff8081b          	addiw	a6,a6,-1
    80003dd4:	02081813          	slli	a6,a6,0x20
    80003dd8:	01d85893          	srli	a7,a6,0x1d
    80003ddc:	00858813          	addi	a6,a1,8
    80003de0:	00058793          	mv	a5,a1
    80003de4:	00050713          	mv	a4,a0
    80003de8:	01088833          	add	a6,a7,a6
    80003dec:	0007b883          	ld	a7,0(a5)
    80003df0:	00878793          	addi	a5,a5,8
    80003df4:	00870713          	addi	a4,a4,8
    80003df8:	ff173c23          	sd	a7,-8(a4)
    80003dfc:	ff0798e3          	bne	a5,a6,80003dec <__memmove+0x68>
    80003e00:	ff867713          	andi	a4,a2,-8
    80003e04:	02071793          	slli	a5,a4,0x20
    80003e08:	0207d793          	srli	a5,a5,0x20
    80003e0c:	00f585b3          	add	a1,a1,a5
    80003e10:	40e686bb          	subw	a3,a3,a4
    80003e14:	00f507b3          	add	a5,a0,a5
    80003e18:	06e60463          	beq	a2,a4,80003e80 <__memmove+0xfc>
    80003e1c:	0005c703          	lbu	a4,0(a1)
    80003e20:	00e78023          	sb	a4,0(a5)
    80003e24:	04068e63          	beqz	a3,80003e80 <__memmove+0xfc>
    80003e28:	0015c603          	lbu	a2,1(a1)
    80003e2c:	00100713          	li	a4,1
    80003e30:	00c780a3          	sb	a2,1(a5)
    80003e34:	04e68663          	beq	a3,a4,80003e80 <__memmove+0xfc>
    80003e38:	0025c603          	lbu	a2,2(a1)
    80003e3c:	00200713          	li	a4,2
    80003e40:	00c78123          	sb	a2,2(a5)
    80003e44:	02e68e63          	beq	a3,a4,80003e80 <__memmove+0xfc>
    80003e48:	0035c603          	lbu	a2,3(a1)
    80003e4c:	00300713          	li	a4,3
    80003e50:	00c781a3          	sb	a2,3(a5)
    80003e54:	02e68663          	beq	a3,a4,80003e80 <__memmove+0xfc>
    80003e58:	0045c603          	lbu	a2,4(a1)
    80003e5c:	00400713          	li	a4,4
    80003e60:	00c78223          	sb	a2,4(a5)
    80003e64:	00e68e63          	beq	a3,a4,80003e80 <__memmove+0xfc>
    80003e68:	0055c603          	lbu	a2,5(a1)
    80003e6c:	00500713          	li	a4,5
    80003e70:	00c782a3          	sb	a2,5(a5)
    80003e74:	00e68663          	beq	a3,a4,80003e80 <__memmove+0xfc>
    80003e78:	0065c703          	lbu	a4,6(a1)
    80003e7c:	00e78323          	sb	a4,6(a5)
    80003e80:	00813403          	ld	s0,8(sp)
    80003e84:	01010113          	addi	sp,sp,16
    80003e88:	00008067          	ret
    80003e8c:	02061713          	slli	a4,a2,0x20
    80003e90:	02075713          	srli	a4,a4,0x20
    80003e94:	00e587b3          	add	a5,a1,a4
    80003e98:	f0f574e3          	bgeu	a0,a5,80003da0 <__memmove+0x1c>
    80003e9c:	02069613          	slli	a2,a3,0x20
    80003ea0:	02065613          	srli	a2,a2,0x20
    80003ea4:	fff64613          	not	a2,a2
    80003ea8:	00e50733          	add	a4,a0,a4
    80003eac:	00c78633          	add	a2,a5,a2
    80003eb0:	fff7c683          	lbu	a3,-1(a5)
    80003eb4:	fff78793          	addi	a5,a5,-1
    80003eb8:	fff70713          	addi	a4,a4,-1
    80003ebc:	00d70023          	sb	a3,0(a4)
    80003ec0:	fec798e3          	bne	a5,a2,80003eb0 <__memmove+0x12c>
    80003ec4:	00813403          	ld	s0,8(sp)
    80003ec8:	01010113          	addi	sp,sp,16
    80003ecc:	00008067          	ret
    80003ed0:	02069713          	slli	a4,a3,0x20
    80003ed4:	02075713          	srli	a4,a4,0x20
    80003ed8:	00170713          	addi	a4,a4,1
    80003edc:	00e50733          	add	a4,a0,a4
    80003ee0:	00050793          	mv	a5,a0
    80003ee4:	0005c683          	lbu	a3,0(a1)
    80003ee8:	00178793          	addi	a5,a5,1
    80003eec:	00158593          	addi	a1,a1,1
    80003ef0:	fed78fa3          	sb	a3,-1(a5)
    80003ef4:	fee798e3          	bne	a5,a4,80003ee4 <__memmove+0x160>
    80003ef8:	f89ff06f          	j	80003e80 <__memmove+0xfc>

0000000080003efc <__putc>:
    80003efc:	fe010113          	addi	sp,sp,-32
    80003f00:	00813823          	sd	s0,16(sp)
    80003f04:	00113c23          	sd	ra,24(sp)
    80003f08:	02010413          	addi	s0,sp,32
    80003f0c:	00050793          	mv	a5,a0
    80003f10:	fef40593          	addi	a1,s0,-17
    80003f14:	00100613          	li	a2,1
    80003f18:	00000513          	li	a0,0
    80003f1c:	fef407a3          	sb	a5,-17(s0)
    80003f20:	fffff097          	auipc	ra,0xfffff
    80003f24:	b3c080e7          	jalr	-1220(ra) # 80002a5c <console_write>
    80003f28:	01813083          	ld	ra,24(sp)
    80003f2c:	01013403          	ld	s0,16(sp)
    80003f30:	02010113          	addi	sp,sp,32
    80003f34:	00008067          	ret

0000000080003f38 <__getc>:
    80003f38:	fe010113          	addi	sp,sp,-32
    80003f3c:	00813823          	sd	s0,16(sp)
    80003f40:	00113c23          	sd	ra,24(sp)
    80003f44:	02010413          	addi	s0,sp,32
    80003f48:	fe840593          	addi	a1,s0,-24
    80003f4c:	00100613          	li	a2,1
    80003f50:	00000513          	li	a0,0
    80003f54:	fffff097          	auipc	ra,0xfffff
    80003f58:	ae8080e7          	jalr	-1304(ra) # 80002a3c <console_read>
    80003f5c:	fe844503          	lbu	a0,-24(s0)
    80003f60:	01813083          	ld	ra,24(sp)
    80003f64:	01013403          	ld	s0,16(sp)
    80003f68:	02010113          	addi	sp,sp,32
    80003f6c:	00008067          	ret

0000000080003f70 <console_handler>:
    80003f70:	fe010113          	addi	sp,sp,-32
    80003f74:	00813823          	sd	s0,16(sp)
    80003f78:	00113c23          	sd	ra,24(sp)
    80003f7c:	00913423          	sd	s1,8(sp)
    80003f80:	02010413          	addi	s0,sp,32
    80003f84:	14202773          	csrr	a4,scause
    80003f88:	100027f3          	csrr	a5,sstatus
    80003f8c:	0027f793          	andi	a5,a5,2
    80003f90:	06079e63          	bnez	a5,8000400c <console_handler+0x9c>
    80003f94:	00074c63          	bltz	a4,80003fac <console_handler+0x3c>
    80003f98:	01813083          	ld	ra,24(sp)
    80003f9c:	01013403          	ld	s0,16(sp)
    80003fa0:	00813483          	ld	s1,8(sp)
    80003fa4:	02010113          	addi	sp,sp,32
    80003fa8:	00008067          	ret
    80003fac:	0ff77713          	andi	a4,a4,255
    80003fb0:	00900793          	li	a5,9
    80003fb4:	fef712e3          	bne	a4,a5,80003f98 <console_handler+0x28>
    80003fb8:	ffffe097          	auipc	ra,0xffffe
    80003fbc:	6dc080e7          	jalr	1756(ra) # 80002694 <plic_claim>
    80003fc0:	00a00793          	li	a5,10
    80003fc4:	00050493          	mv	s1,a0
    80003fc8:	02f50c63          	beq	a0,a5,80004000 <console_handler+0x90>
    80003fcc:	fc0506e3          	beqz	a0,80003f98 <console_handler+0x28>
    80003fd0:	00050593          	mv	a1,a0
    80003fd4:	00001517          	auipc	a0,0x1
    80003fd8:	12c50513          	addi	a0,a0,300 # 80005100 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80003fdc:	fffff097          	auipc	ra,0xfffff
    80003fe0:	afc080e7          	jalr	-1284(ra) # 80002ad8 <__printf>
    80003fe4:	01013403          	ld	s0,16(sp)
    80003fe8:	01813083          	ld	ra,24(sp)
    80003fec:	00048513          	mv	a0,s1
    80003ff0:	00813483          	ld	s1,8(sp)
    80003ff4:	02010113          	addi	sp,sp,32
    80003ff8:	ffffe317          	auipc	t1,0xffffe
    80003ffc:	6d430067          	jr	1748(t1) # 800026cc <plic_complete>
    80004000:	fffff097          	auipc	ra,0xfffff
    80004004:	3e0080e7          	jalr	992(ra) # 800033e0 <uartintr>
    80004008:	fddff06f          	j	80003fe4 <console_handler+0x74>
    8000400c:	00001517          	auipc	a0,0x1
    80004010:	1f450513          	addi	a0,a0,500 # 80005200 <digits+0x78>
    80004014:	fffff097          	auipc	ra,0xfffff
    80004018:	a68080e7          	jalr	-1432(ra) # 80002a7c <panic>
	...
