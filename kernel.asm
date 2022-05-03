
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	db813103          	ld	sp,-584(sp) # 80005db8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7a0020ef          	jal	ra,800027bc <start>

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
    80001080:	0f0010ef          	jal	ra,80002170 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001278:	fd010113          	addi	sp,sp,-48
    8000127c:	02113423          	sd	ra,40(sp)
    80001280:	02813023          	sd	s0,32(sp)
    80001284:	00913c23          	sd	s1,24(sp)
    80001288:	01213823          	sd	s2,16(sp)
    8000128c:	01313423          	sd	s3,8(sp)
    80001290:	03010413          	addi	s0,sp,48
    80001294:	00050493          	mv	s1,a0
    80001298:	00058913          	mv	s2,a1
    8000129c:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800012a0:	00001537          	lui	a0,0x1
    800012a4:	00000097          	auipc	ra,0x0
    800012a8:	f78080e7          	jalr	-136(ra) # 8000121c <mem_alloc>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    800012ac:	04050263          	beqz	a0,800012f0 <thread_create+0x78>
        return -1;

    //initialize registers

    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800012b0:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800012b4:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800012b8:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800012bc:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800012c0:	01100793          	li	a5,17
    800012c4:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    800012c8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800012cc:	00050513          	mv	a0,a0

    return result;
    800012d0:	0005051b          	sext.w	a0,a0
}
    800012d4:	02813083          	ld	ra,40(sp)
    800012d8:	02013403          	ld	s0,32(sp)
    800012dc:	01813483          	ld	s1,24(sp)
    800012e0:	01013903          	ld	s2,16(sp)
    800012e4:	00813983          	ld	s3,8(sp)
    800012e8:	03010113          	addi	sp,sp,48
    800012ec:	00008067          	ret
        return -1;
    800012f0:	fff00513          	li	a0,-1
    800012f4:	fe1ff06f          	j	800012d4 <thread_create+0x5c>

00000000800012f8 <thread_dispatch>:

#ifdef __cplusplus
extern "C"
#endif
void thread_dispatch(){
    800012f8:	ff010113          	addi	sp,sp,-16
    800012fc:	00813423          	sd	s0,8(sp)
    80001300:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001304:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001308:	00000073          	ecall
}
    8000130c:	00813403          	ld	s0,8(sp)
    80001310:	01010113          	addi	sp,sp,16
    80001314:	00008067          	ret

0000000080001318 <thread_exit>:

#ifdef __cplusplus
extern "C"
#endif
int thread_exit()
{
    80001318:	ff010113          	addi	sp,sp,-16
    8000131c:	00813423          	sd	s0,8(sp)
    80001320:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001324:	01300513          	li	a0,19

    __asm__ volatile("ecall");
    80001328:	00000073          	ecall

    //returning the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000132c:	00050513          	mv	a0,a0

    return result;
}
    80001330:	0005051b          	sext.w	a0,a0
    80001334:	00813403          	ld	s0,8(sp)
    80001338:	01010113          	addi	sp,sp,16
    8000133c:	00008067          	ret

0000000080001340 <_ZN3PCB6runnerEv>:
    Scheduler::put(this);
}

//todo
void PCB::runner()
{
    80001340:	fe010113          	addi	sp,sp,-32
    80001344:	00113c23          	sd	ra,24(sp)
    80001348:	00813823          	sd	s0,16(sp)
    8000134c:	00913423          	sd	s1,8(sp)
    80001350:	02010413          	addi	s0,sp,32
    Riscv::printString("runner started...\n");
    80001354:	00004517          	auipc	a0,0x4
    80001358:	ccc50513          	addi	a0,a0,-820 # 80005020 <CONSOLE_STATUS+0x10>
    8000135c:	00001097          	auipc	ra,0x1
    80001360:	cd8080e7          	jalr	-808(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
   Riscv::popSppSpie();
    80001364:	00001097          	auipc	ra,0x1
    80001368:	cb0080e7          	jalr	-848(ra) # 80002014 <_ZN5Riscv10popSppSpieEv>
   running->body(running->args);
    8000136c:	00005497          	auipc	s1,0x5
    80001370:	aa448493          	addi	s1,s1,-1372 # 80005e10 <_ZN3PCB7runningE>
    80001374:	0004b783          	ld	a5,0(s1)
    80001378:	0087b703          	ld	a4,8(a5)
    8000137c:	0107b503          	ld	a0,16(a5)
    80001380:	000700e7          	jalr	a4
   running->setFinished(false);
    80001384:	0004b783          	ld	a5,0(s1)

    static uint64 timeSliceCounter;

    uint64 getTimeSlice() { return timeSlice;}

    void setFinished(bool f) {finished = f;}
    80001388:	02078823          	sb	zero,48(a5)
   thread_dispatch();
    8000138c:	00000097          	auipc	ra,0x0
    80001390:	f6c080e7          	jalr	-148(ra) # 800012f8 <thread_dispatch>
}
    80001394:	01813083          	ld	ra,24(sp)
    80001398:	01013403          	ld	s0,16(sp)
    8000139c:	00813483          	ld	s1,8(sp)
    800013a0:	02010113          	addi	sp,sp,32
    800013a4:	00008067          	ret

00000000800013a8 <_ZN3PCBC1EPFvPvES0_S0_>:
PCB::PCB(Body body, void *args, void* stack_space) :
    800013a8:	ff010113          	addi	sp,sp,-16
    800013ac:	00813423          	sd	s0,8(sp)
    800013b0:	01010413          	addi	s0,sp,16
    })
    800013b4:	00b53423          	sd	a1,8(a0)
    800013b8:	00c53823          	sd	a2,16(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800013bc:	000017b7          	lui	a5,0x1
    800013c0:	00f686b3          	add	a3,a3,a5
    })
    800013c4:	00d53c23          	sd	a3,24(a0)
    800013c8:	00000797          	auipc	a5,0x0
    800013cc:	f7878793          	addi	a5,a5,-136 # 80001340 <_ZN3PCB6runnerEv>
    800013d0:	02f53023          	sd	a5,32(a0)
    800013d4:	02050823          	sb	zero,48(a0)
}
    800013d8:	00813403          	ld	s0,8(sp)
    800013dc:	01010113          	addi	sp,sp,16
    800013e0:	00008067          	ret

00000000800013e4 <_ZN3PCB5sleepEm>:
{
    800013e4:	ff010113          	addi	sp,sp,-16
    800013e8:	00813423          	sd	s0,8(sp)
    800013ec:	01010413          	addi	s0,sp,16
}
    800013f0:	00813403          	ld	s0,8(sp)
    800013f4:	01010113          	addi	sp,sp,16
    800013f8:	00008067          	ret

00000000800013fc <_ZN3PCB5startEv>:
{
    800013fc:	ff010113          	addi	sp,sp,-16
    80001400:	00113423          	sd	ra,8(sp)
    80001404:	00813023          	sd	s0,0(sp)
    80001408:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    8000140c:	00000097          	auipc	ra,0x0
    80001410:	2cc080e7          	jalr	716(ra) # 800016d8 <_ZN9Scheduler3putEP3PCB>
}
    80001414:	00813083          	ld	ra,8(sp)
    80001418:	00013403          	ld	s0,0(sp)
    8000141c:	01010113          	addi	sp,sp,16
    80001420:	00008067          	ret

0000000080001424 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80001424:	fe010113          	addi	sp,sp,-32
    80001428:	00113c23          	sd	ra,24(sp)
    8000142c:	00813823          	sd	s0,16(sp)
    80001430:	00913423          	sd	s1,8(sp)
    80001434:	01213023          	sd	s2,0(sp)
    80001438:	02010413          	addi	s0,sp,32
    //Riscv::pushRegisters();

    PCB* old = running;
    8000143c:	00005497          	auipc	s1,0x5
    80001440:	9d44b483          	ld	s1,-1580(s1) # 80005e10 <_ZN3PCB7runningE>
    if(!old->finished) Scheduler::put(old);
    80001444:	0304c783          	lbu	a5,48(s1)
    80001448:	04078a63          	beqz	a5,8000149c <_ZN3PCB8dispatchEv+0x78>
    PCB::running = Scheduler::get();
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	328080e7          	jalr	808(ra) # 80001774 <_ZN9Scheduler3getEv>
    80001454:	00005917          	auipc	s2,0x5
    80001458:	9bc90913          	addi	s2,s2,-1604 # 80005e10 <_ZN3PCB7runningE>
    8000145c:	00a93023          	sd	a0,0(s2)
    Riscv::printString("got the new thread\n");
    80001460:	00004517          	auipc	a0,0x4
    80001464:	bd850513          	addi	a0,a0,-1064 # 80005038 <CONSOLE_STATUS+0x28>
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	bcc080e7          	jalr	-1076(ra) # 80002034 <_ZN5Riscv11printStringEPKc>

    PCB::contextSwitch(&old->context, &running->context);
    80001470:	00093583          	ld	a1,0(s2)
    80001474:	01858593          	addi	a1,a1,24
    80001478:	01848513          	addi	a0,s1,24
    8000147c:	00000097          	auipc	ra,0x0
    80001480:	d8c080e7          	jalr	-628(ra) # 80001208 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>

    //Riscv::popRegisters();
}
    80001484:	01813083          	ld	ra,24(sp)
    80001488:	01013403          	ld	s0,16(sp)
    8000148c:	00813483          	ld	s1,8(sp)
    80001490:	00013903          	ld	s2,0(sp)
    80001494:	02010113          	addi	sp,sp,32
    80001498:	00008067          	ret
    if(!old->finished) Scheduler::put(old);
    8000149c:	00048513          	mv	a0,s1
    800014a0:	00000097          	auipc	ra,0x0
    800014a4:	238080e7          	jalr	568(ra) # 800016d8 <_ZN9Scheduler3putEP3PCB>
    800014a8:	fa5ff06f          	j	8000144c <_ZN3PCB8dispatchEv+0x28>

00000000800014ac <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800014ac:	ff010113          	addi	sp,sp,-16
    800014b0:	00113423          	sd	ra,8(sp)
    800014b4:	00813023          	sd	s0,0(sp)
    800014b8:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800014bc:	00001097          	auipc	ra,0x1
    800014c0:	20c080e7          	jalr	524(ra) # 800026c8 <_Z7kmallocm>
}
    800014c4:	00813083          	ld	ra,8(sp)
    800014c8:	00013403          	ld	s0,0(sp)
    800014cc:	01010113          	addi	sp,sp,16
    800014d0:	00008067          	ret

00000000800014d4 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    800014d4:	ff010113          	addi	sp,sp,-16
    800014d8:	00113423          	sd	ra,8(sp)
    800014dc:	00813023          	sd	s0,0(sp)
    800014e0:	01010413          	addi	s0,sp,16
    kfree(p);
    800014e4:	00001097          	auipc	ra,0x1
    800014e8:	20c080e7          	jalr	524(ra) # 800026f0 <_Z5kfreePv>
}
    800014ec:	00813083          	ld	ra,8(sp)
    800014f0:	00013403          	ld	s0,0(sp)
    800014f4:	01010113          	addi	sp,sp,16
    800014f8:	00008067          	ret

00000000800014fc <_ZN5Queue3popEv>:
// Created by os on 5/3/22.
//

#include "../h/Queue.h"

void Queue::pop() {
    800014fc:	fe010113          	addi	sp,sp,-32
    80001500:	00113c23          	sd	ra,24(sp)
    80001504:	00813823          	sd	s0,16(sp)
    80001508:	00913423          	sd	s1,8(sp)
    8000150c:	01213023          	sd	s2,0(sp)
    80001510:	02010413          	addi	s0,sp,32
    80001514:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80001518:	00053503          	ld	a0,0(a0)
    8000151c:	00853903          	ld	s2,8(a0)
    kfree(first);
    80001520:	00001097          	auipc	ra,0x1
    80001524:	1d0080e7          	jalr	464(ra) # 800026f0 <_Z5kfreePv>
    first = newFirst;
    80001528:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    8000152c:	00090e63          	beqz	s2,80001548 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80001530:	01813083          	ld	ra,24(sp)
    80001534:	01013403          	ld	s0,16(sp)
    80001538:	00813483          	ld	s1,8(sp)
    8000153c:	00013903          	ld	s2,0(sp)
    80001540:	02010113          	addi	sp,sp,32
    80001544:	00008067          	ret
        first = last = 0;
    80001548:	0004b423          	sd	zero,8(s1)
    8000154c:	0004b023          	sd	zero,0(s1)
}
    80001550:	fe1ff06f          	j	80001530 <_ZN5Queue3popEv+0x34>

0000000080001554 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    80001554:	fe010113          	addi	sp,sp,-32
    80001558:	00113c23          	sd	ra,24(sp)
    8000155c:	00813823          	sd	s0,16(sp)
    80001560:	00913423          	sd	s1,8(sp)
    80001564:	01213023          	sd	s2,0(sp)
    80001568:	02010413          	addi	s0,sp,32
    8000156c:	00050493          	mv	s1,a0
    80001570:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80001574:	01000513          	li	a0,16
    80001578:	00001097          	auipc	ra,0x1
    8000157c:	150080e7          	jalr	336(ra) # 800026c8 <_Z7kmallocm>
    newElem->data = t;
    80001580:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80001584:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80001588:	0004b783          	ld	a5,0(s1)
    8000158c:	02078463          	beqz	a5,800015b4 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80001590:	0084b783          	ld	a5,8(s1)
    80001594:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80001598:	00a4b423          	sd	a0,8(s1)
    }
}
    8000159c:	01813083          	ld	ra,24(sp)
    800015a0:	01013403          	ld	s0,16(sp)
    800015a4:	00813483          	ld	s1,8(sp)
    800015a8:	00013903          	ld	s2,0(sp)
    800015ac:	02010113          	addi	sp,sp,32
    800015b0:	00008067          	ret
        first = newElem;
    800015b4:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    800015b8:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    800015bc:	00053423          	sd	zero,8(a0)
    800015c0:	0004b783          	ld	a5,0(s1)
    800015c4:	0007b423          	sd	zero,8(a5)
    800015c8:	fd5ff06f          	j	8000159c <_ZN5Queue4pushEP3PCB+0x48>

00000000800015cc <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    800015cc:	ff010113          	addi	sp,sp,-16
    800015d0:	00813423          	sd	s0,8(sp)
    800015d4:	01010413          	addi	s0,sp,16
    if(first == 0)
    800015d8:	00053503          	ld	a0,0(a0)
    800015dc:	00050463          	beqz	a0,800015e4 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    800015e0:	00053503          	ld	a0,0(a0)
}
    800015e4:	00813403          	ld	s0,8(sp)
    800015e8:	01010113          	addi	sp,sp,16
    800015ec:	00008067          	ret

00000000800015f0 <_ZN5QueueC1Ev>:

Queue::Queue() {
    800015f0:	ff010113          	addi	sp,sp,-16
    800015f4:	00813423          	sd	s0,8(sp)
    800015f8:	01010413          	addi	s0,sp,16
    first = last = 0;
    800015fc:	00053423          	sd	zero,8(a0)
    80001600:	00053023          	sd	zero,0(a0)
}
    80001604:	00813403          	ld	s0,8(sp)
    80001608:	01010113          	addi	sp,sp,16
    8000160c:	00008067          	ret

0000000080001610 <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    80001610:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80001614:	04050063          	beqz	a0,80001654 <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    80001618:	fe010113          	addi	sp,sp,-32
    8000161c:	00113c23          	sd	ra,24(sp)
    80001620:	00813823          	sd	s0,16(sp)
    80001624:	00913423          	sd	s1,8(sp)
    80001628:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    8000162c:	00853483          	ld	s1,8(a0)
        kfree(old);
    80001630:	00001097          	auipc	ra,0x1
    80001634:	0c0080e7          	jalr	192(ra) # 800026f0 <_Z5kfreePv>
        curr = curr->next;
    80001638:	00048513          	mv	a0,s1
    while(curr != 0)
    8000163c:	fe0498e3          	bnez	s1,8000162c <_ZN5QueueD1Ev+0x1c>
    }
}
    80001640:	01813083          	ld	ra,24(sp)
    80001644:	01013403          	ld	s0,16(sp)
    80001648:	00813483          	ld	s1,8(sp)
    8000164c:	02010113          	addi	sp,sp,32
    80001650:	00008067          	ret
    80001654:	00008067          	ret

0000000080001658 <_ZN5Queue4sizeEv>:

int Queue::size() {
    80001658:	ff010113          	addi	sp,sp,-16
    8000165c:	00813423          	sd	s0,8(sp)
    80001660:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80001664:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    80001668:	00000513          	li	a0,0
    while(curr != 0)
    8000166c:	00078863          	beqz	a5,8000167c <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    80001670:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80001674:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80001678:	ff5ff06f          	j	8000166c <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    8000167c:	00813403          	ld	s0,8(sp)
    80001680:	01010113          	addi	sp,sp,16
    80001684:	00008067          	ret

0000000080001688 <_ZN9SchedulernwEm>:
    PCB* fr = scheduler->queuePCB.front();
    scheduler->queuePCB.pop();
    return fr;
}

void *Scheduler::operator new(size_t size) {
    80001688:	ff010113          	addi	sp,sp,-16
    8000168c:	00113423          	sd	ra,8(sp)
    80001690:	00813023          	sd	s0,0(sp)
    80001694:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80001698:	00001097          	auipc	ra,0x1
    8000169c:	030080e7          	jalr	48(ra) # 800026c8 <_Z7kmallocm>
}
    800016a0:	00813083          	ld	ra,8(sp)
    800016a4:	00013403          	ld	s0,0(sp)
    800016a8:	01010113          	addi	sp,sp,16
    800016ac:	00008067          	ret

00000000800016b0 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p) {
    800016b0:	ff010113          	addi	sp,sp,-16
    800016b4:	00113423          	sd	ra,8(sp)
    800016b8:	00813023          	sd	s0,0(sp)
    800016bc:	01010413          	addi	s0,sp,16
    kfree(p);
    800016c0:	00001097          	auipc	ra,0x1
    800016c4:	030080e7          	jalr	48(ra) # 800026f0 <_Z5kfreePv>
}
    800016c8:	00813083          	ld	ra,8(sp)
    800016cc:	00013403          	ld	s0,0(sp)
    800016d0:	01010113          	addi	sp,sp,16
    800016d4:	00008067          	ret

00000000800016d8 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *pcb) {
    800016d8:	fe010113          	addi	sp,sp,-32
    800016dc:	00113c23          	sd	ra,24(sp)
    800016e0:	00813823          	sd	s0,16(sp)
    800016e4:	00913423          	sd	s1,8(sp)
    800016e8:	01213023          	sd	s2,0(sp)
    800016ec:	02010413          	addi	s0,sp,32
    800016f0:	00050493          	mv	s1,a0
    if(scheduler == 0)
    800016f4:	00004797          	auipc	a5,0x4
    800016f8:	72c7b783          	ld	a5,1836(a5) # 80005e20 <_ZN9Scheduler9schedulerE>
    800016fc:	02078863          	beqz	a5,8000172c <_ZN9Scheduler3putEP3PCB+0x54>
    scheduler->queuePCB.push(pcb);
    80001700:	00048593          	mv	a1,s1
    80001704:	00004517          	auipc	a0,0x4
    80001708:	71c53503          	ld	a0,1820(a0) # 80005e20 <_ZN9Scheduler9schedulerE>
    8000170c:	00000097          	auipc	ra,0x0
    80001710:	e48080e7          	jalr	-440(ra) # 80001554 <_ZN5Queue4pushEP3PCB>
}
    80001714:	01813083          	ld	ra,24(sp)
    80001718:	01013403          	ld	s0,16(sp)
    8000171c:	00813483          	ld	s1,8(sp)
    80001720:	00013903          	ld	s2,0(sp)
    80001724:	02010113          	addi	sp,sp,32
    80001728:	00008067          	ret
        scheduler = new Scheduler();
    8000172c:	01000513          	li	a0,16
    80001730:	00000097          	auipc	ra,0x0
    80001734:	f58080e7          	jalr	-168(ra) # 80001688 <_ZN9SchedulernwEm>
    80001738:	00050913          	mv	s2,a0
    8000173c:	00053023          	sd	zero,0(a0)
    80001740:	00053423          	sd	zero,8(a0)
#include "MemoryAllocator.h"
#include "Queue.h"

class PCB;

class Scheduler
    80001744:	00000097          	auipc	ra,0x0
    80001748:	eac080e7          	jalr	-340(ra) # 800015f0 <_ZN5QueueC1Ev>
    8000174c:	00004797          	auipc	a5,0x4
    80001750:	6d27ba23          	sd	s2,1748(a5) # 80005e20 <_ZN9Scheduler9schedulerE>
    80001754:	fadff06f          	j	80001700 <_ZN9Scheduler3putEP3PCB+0x28>
    80001758:	00050493          	mv	s1,a0
    8000175c:	00090513          	mv	a0,s2
    80001760:	00000097          	auipc	ra,0x0
    80001764:	f50080e7          	jalr	-176(ra) # 800016b0 <_ZN9SchedulerdlEPv>
    80001768:	00048513          	mv	a0,s1
    8000176c:	00005097          	auipc	ra,0x5
    80001770:	79c080e7          	jalr	1948(ra) # 80006f08 <_Unwind_Resume>

0000000080001774 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    80001774:	fe010113          	addi	sp,sp,-32
    80001778:	00113c23          	sd	ra,24(sp)
    8000177c:	00813823          	sd	s0,16(sp)
    80001780:	00913423          	sd	s1,8(sp)
    80001784:	01213023          	sd	s2,0(sp)
    80001788:	02010413          	addi	s0,sp,32
    if(scheduler == 0)
    8000178c:	00004797          	auipc	a5,0x4
    80001790:	6947b783          	ld	a5,1684(a5) # 80005e20 <_ZN9Scheduler9schedulerE>
    80001794:	04078263          	beqz	a5,800017d8 <_ZN9Scheduler3getEv+0x64>
    PCB* fr = scheduler->queuePCB.front();
    80001798:	00004917          	auipc	s2,0x4
    8000179c:	68890913          	addi	s2,s2,1672 # 80005e20 <_ZN9Scheduler9schedulerE>
    800017a0:	00093503          	ld	a0,0(s2)
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	e28080e7          	jalr	-472(ra) # 800015cc <_ZN5Queue5frontEv>
    800017ac:	00050493          	mv	s1,a0
    scheduler->queuePCB.pop();
    800017b0:	00093503          	ld	a0,0(s2)
    800017b4:	00000097          	auipc	ra,0x0
    800017b8:	d48080e7          	jalr	-696(ra) # 800014fc <_ZN5Queue3popEv>
}
    800017bc:	00048513          	mv	a0,s1
    800017c0:	01813083          	ld	ra,24(sp)
    800017c4:	01013403          	ld	s0,16(sp)
    800017c8:	00813483          	ld	s1,8(sp)
    800017cc:	00013903          	ld	s2,0(sp)
    800017d0:	02010113          	addi	sp,sp,32
    800017d4:	00008067          	ret
        scheduler = new Scheduler();
    800017d8:	01000513          	li	a0,16
    800017dc:	00000097          	auipc	ra,0x0
    800017e0:	eac080e7          	jalr	-340(ra) # 80001688 <_ZN9SchedulernwEm>
    800017e4:	00050493          	mv	s1,a0
    800017e8:	00053023          	sd	zero,0(a0)
    800017ec:	00053423          	sd	zero,8(a0)
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	e00080e7          	jalr	-512(ra) # 800015f0 <_ZN5QueueC1Ev>
    800017f8:	00004797          	auipc	a5,0x4
    800017fc:	6297b423          	sd	s1,1576(a5) # 80005e20 <_ZN9Scheduler9schedulerE>
    80001800:	f99ff06f          	j	80001798 <_ZN9Scheduler3getEv+0x24>
    80001804:	00050913          	mv	s2,a0
    80001808:	00048513          	mv	a0,s1
    8000180c:	00000097          	auipc	ra,0x0
    80001810:	ea4080e7          	jalr	-348(ra) # 800016b0 <_ZN9SchedulerdlEPv>
    80001814:	00090513          	mv	a0,s2
    80001818:	00005097          	auipc	ra,0x5
    8000181c:	6f0080e7          	jalr	1776(ra) # 80006f08 <_Unwind_Resume>

0000000080001820 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize() {
    80001820:	fe010113          	addi	sp,sp,-32
    80001824:	00113c23          	sd	ra,24(sp)
    80001828:	00813823          	sd	s0,16(sp)
    8000182c:	00913423          	sd	s1,8(sp)
    80001830:	01213023          	sd	s2,0(sp)
    80001834:	02010413          	addi	s0,sp,32
    if(scheduler == 0)
    80001838:	00004797          	auipc	a5,0x4
    8000183c:	5e87b783          	ld	a5,1512(a5) # 80005e20 <_ZN9Scheduler9schedulerE>
    80001840:	02078663          	beqz	a5,8000186c <_ZN9Scheduler7getSizeEv+0x4c>
        scheduler = new Scheduler();
    return scheduler->queuePCB.size();
    80001844:	00004517          	auipc	a0,0x4
    80001848:	5dc53503          	ld	a0,1500(a0) # 80005e20 <_ZN9Scheduler9schedulerE>
    8000184c:	00000097          	auipc	ra,0x0
    80001850:	e0c080e7          	jalr	-500(ra) # 80001658 <_ZN5Queue4sizeEv>
}
    80001854:	01813083          	ld	ra,24(sp)
    80001858:	01013403          	ld	s0,16(sp)
    8000185c:	00813483          	ld	s1,8(sp)
    80001860:	00013903          	ld	s2,0(sp)
    80001864:	02010113          	addi	sp,sp,32
    80001868:	00008067          	ret
        scheduler = new Scheduler();
    8000186c:	01000513          	li	a0,16
    80001870:	00000097          	auipc	ra,0x0
    80001874:	e18080e7          	jalr	-488(ra) # 80001688 <_ZN9SchedulernwEm>
    80001878:	00050493          	mv	s1,a0
    8000187c:	00053023          	sd	zero,0(a0)
    80001880:	00053423          	sd	zero,8(a0)
    80001884:	00000097          	auipc	ra,0x0
    80001888:	d6c080e7          	jalr	-660(ra) # 800015f0 <_ZN5QueueC1Ev>
    8000188c:	00004797          	auipc	a5,0x4
    80001890:	5897ba23          	sd	s1,1428(a5) # 80005e20 <_ZN9Scheduler9schedulerE>
    80001894:	fb1ff06f          	j	80001844 <_ZN9Scheduler7getSizeEv+0x24>
    80001898:	00050913          	mv	s2,a0
    8000189c:	00048513          	mv	a0,s1
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	e10080e7          	jalr	-496(ra) # 800016b0 <_ZN9SchedulerdlEPv>
    800018a8:	00090513          	mv	a0,s2
    800018ac:	00005097          	auipc	ra,0x5
    800018b0:	65c080e7          	jalr	1628(ra) # 80006f08 <_Unwind_Resume>

00000000800018b4 <_Z15thread1FunctionPv>:
    Riscv::printInteger(x);
    Riscv::printString("\n");*/
}

void thread1Function(void* p)
{
    800018b4:	fe010113          	addi	sp,sp,-32
    800018b8:	00113c23          	sd	ra,24(sp)
    800018bc:	00813823          	sd	s0,16(sp)
    800018c0:	00913423          	sd	s1,8(sp)
    800018c4:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 1 started...");
    800018c8:	00003517          	auipc	a0,0x3
    800018cc:	78850513          	addi	a0,a0,1928 # 80005050 <CONSOLE_STATUS+0x40>
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	764080e7          	jalr	1892(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < 10;i++)
    800018d8:	00000493          	li	s1,0
    800018dc:	0340006f          	j	80001910 <_Z15thread1FunctionPv+0x5c>
    {
        Riscv::printInteger(Scheduler::getSize());
        if(i % 4 == 0 && i > 0)
            thread_dispatch();
        Riscv::printString("i : ");
    800018e0:	00003517          	auipc	a0,0x3
    800018e4:	78850513          	addi	a0,a0,1928 # 80005068 <CONSOLE_STATUS+0x58>
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	74c080e7          	jalr	1868(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800018f0:	00048513          	mv	a0,s1
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	7b0080e7          	jalr	1968(ra) # 800020a4 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800018fc:	00004517          	auipc	a0,0x4
    80001900:	91450513          	addi	a0,a0,-1772 # 80005210 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001904:	00000097          	auipc	ra,0x0
    80001908:	730080e7          	jalr	1840(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < 10;i++)
    8000190c:	0014849b          	addiw	s1,s1,1
    80001910:	00900793          	li	a5,9
    80001914:	0297c663          	blt	a5,s1,80001940 <_Z15thread1FunctionPv+0x8c>
        Riscv::printInteger(Scheduler::getSize());
    80001918:	00000097          	auipc	ra,0x0
    8000191c:	f08080e7          	jalr	-248(ra) # 80001820 <_ZN9Scheduler7getSizeEv>
    80001920:	00000097          	auipc	ra,0x0
    80001924:	784080e7          	jalr	1924(ra) # 800020a4 <_ZN5Riscv12printIntegerEm>
        if(i % 4 == 0 && i > 0)
    80001928:	0034f793          	andi	a5,s1,3
    8000192c:	fa079ae3          	bnez	a5,800018e0 <_Z15thread1FunctionPv+0x2c>
    80001930:	fa9058e3          	blez	s1,800018e0 <_Z15thread1FunctionPv+0x2c>
            thread_dispatch();
    80001934:	00000097          	auipc	ra,0x0
    80001938:	9c4080e7          	jalr	-1596(ra) # 800012f8 <thread_dispatch>
    8000193c:	fa5ff06f          	j	800018e0 <_Z15thread1FunctionPv+0x2c>
    }

    Thread::dispatch();
    80001940:	00000097          	auipc	ra,0x0
    80001944:	620080e7          	jalr	1568(ra) # 80001f60 <_ZN6Thread8dispatchEv>
}
    80001948:	01813083          	ld	ra,24(sp)
    8000194c:	01013403          	ld	s0,16(sp)
    80001950:	00813483          	ld	s1,8(sp)
    80001954:	02010113          	addi	sp,sp,32
    80001958:	00008067          	ret

000000008000195c <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    8000195c:	fe010113          	addi	sp,sp,-32
    80001960:	00113c23          	sd	ra,24(sp)
    80001964:	00813823          	sd	s0,16(sp)
    80001968:	00913423          	sd	s1,8(sp)
    8000196c:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...");
    80001970:	00003517          	auipc	a0,0x3
    80001974:	70050513          	addi	a0,a0,1792 # 80005070 <CONSOLE_STATUS+0x60>
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	6bc080e7          	jalr	1724(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
    for(int j = 0; j < 10;j++)
    80001980:	00000493          	li	s1,0
    80001984:	0340006f          	j	800019b8 <_Z15thread2FunctionPv+0x5c>
    {
        Riscv::printInteger(Scheduler::getSize());
        if(j % 5 == 0 && j > 0)
            thread_dispatch();
        Riscv::printString("j : ");
    80001988:	00003517          	auipc	a0,0x3
    8000198c:	70050513          	addi	a0,a0,1792 # 80005088 <CONSOLE_STATUS+0x78>
    80001990:	00000097          	auipc	ra,0x0
    80001994:	6a4080e7          	jalr	1700(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001998:	00048513          	mv	a0,s1
    8000199c:	00000097          	auipc	ra,0x0
    800019a0:	708080e7          	jalr	1800(ra) # 800020a4 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800019a4:	00004517          	auipc	a0,0x4
    800019a8:	86c50513          	addi	a0,a0,-1940 # 80005210 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	688080e7          	jalr	1672(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
    for(int j = 0; j < 10;j++)
    800019b4:	0014849b          	addiw	s1,s1,1
    800019b8:	00900793          	li	a5,9
    800019bc:	0297c863          	blt	a5,s1,800019ec <_Z15thread2FunctionPv+0x90>
        Riscv::printInteger(Scheduler::getSize());
    800019c0:	00000097          	auipc	ra,0x0
    800019c4:	e60080e7          	jalr	-416(ra) # 80001820 <_ZN9Scheduler7getSizeEv>
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	6dc080e7          	jalr	1756(ra) # 800020a4 <_ZN5Riscv12printIntegerEm>
        if(j % 5 == 0 && j > 0)
    800019d0:	00500793          	li	a5,5
    800019d4:	02f4e7bb          	remw	a5,s1,a5
    800019d8:	fa0798e3          	bnez	a5,80001988 <_Z15thread2FunctionPv+0x2c>
    800019dc:	fa9056e3          	blez	s1,80001988 <_Z15thread2FunctionPv+0x2c>
            thread_dispatch();
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	918080e7          	jalr	-1768(ra) # 800012f8 <thread_dispatch>
    800019e8:	fa1ff06f          	j	80001988 <_Z15thread2FunctionPv+0x2c>
    }

    Thread::dispatch();
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	574080e7          	jalr	1396(ra) # 80001f60 <_ZN6Thread8dispatchEv>
}
    800019f4:	01813083          	ld	ra,24(sp)
    800019f8:	01013403          	ld	s0,16(sp)
    800019fc:	00813483          	ld	s1,8(sp)
    80001a00:	02010113          	addi	sp,sp,32
    80001a04:	00008067          	ret

0000000080001a08 <_Z9testQueuev>:
{
    80001a08:	ff010113          	addi	sp,sp,-16
    80001a0c:	00813423          	sd	s0,8(sp)
    80001a10:	01010413          	addi	s0,sp,16
}
    80001a14:	00813403          	ld	s0,8(sp)
    80001a18:	01010113          	addi	sp,sp,16
    80001a1c:	00008067          	ret

0000000080001a20 <_Z11threadTestsv>:

void threadTests()
{
    80001a20:	fe010113          	addi	sp,sp,-32
    80001a24:	00113c23          	sd	ra,24(sp)
    80001a28:	00813823          	sd	s0,16(sp)
    80001a2c:	00913423          	sd	s1,8(sp)
    80001a30:	01213023          	sd	s2,0(sp)
    80001a34:	02010413          	addi	s0,sp,32
    Thread* t = new Thread(0, 0);
    80001a38:	00800513          	li	a0,8
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	4bc080e7          	jalr	1212(ra) # 80001ef8 <_Znwm>
    80001a44:	00050493          	mv	s1,a0
    80001a48:	00000613          	li	a2,0
    80001a4c:	00000593          	li	a1,0
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	560080e7          	jalr	1376(ra) # 80001fb0 <_ZN6ThreadC1EPFvPvES0_>
    PCB::running = t->myHandle;
    80001a58:	0004b703          	ld	a4,0(s1)
    80001a5c:	00004797          	auipc	a5,0x4
    80001a60:	3647b783          	ld	a5,868(a5) # 80005dc0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a64:	00e7b023          	sd	a4,0(a5)
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a68:	00800513          	li	a0,8
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	48c080e7          	jalr	1164(ra) # 80001ef8 <_Znwm>
    80001a74:	00050493          	mv	s1,a0
    80001a78:	00000613          	li	a2,0
    80001a7c:	00000597          	auipc	a1,0x0
    80001a80:	e3858593          	addi	a1,a1,-456 # 800018b4 <_Z15thread1FunctionPv>
    80001a84:	00000097          	auipc	ra,0x0
    80001a88:	52c080e7          	jalr	1324(ra) # 80001fb0 <_ZN6ThreadC1EPFvPvES0_>
    Scheduler::put(t1->myHandle);
    80001a8c:	0004b503          	ld	a0,0(s1)
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	c48080e7          	jalr	-952(ra) # 800016d8 <_ZN9Scheduler3putEP3PCB>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001a98:	00800513          	li	a0,8
    80001a9c:	00000097          	auipc	ra,0x0
    80001aa0:	45c080e7          	jalr	1116(ra) # 80001ef8 <_Znwm>
    80001aa4:	00050913          	mv	s2,a0
    80001aa8:	00000613          	li	a2,0
    80001aac:	00000597          	auipc	a1,0x0
    80001ab0:	eb058593          	addi	a1,a1,-336 # 8000195c <_Z15thread2FunctionPv>
    80001ab4:	00000097          	auipc	ra,0x0
    80001ab8:	4fc080e7          	jalr	1276(ra) # 80001fb0 <_ZN6ThreadC1EPFvPvES0_>
    Scheduler::put(t2->myHandle);
    80001abc:	00093503          	ld	a0,0(s2)
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	c18080e7          	jalr	-1000(ra) # 800016d8 <_ZN9Scheduler3putEP3PCB>

    Riscv::printInteger(Scheduler::getSize());
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	d58080e7          	jalr	-680(ra) # 80001820 <_ZN9Scheduler7getSizeEv>
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	5d4080e7          	jalr	1492(ra) # 800020a4 <_ZN5Riscv12printIntegerEm>

    while(!t1->myHandle->getFinished()
    80001ad8:	0004b783          	ld	a5,0(s1)

    bool getFinished() { return finished;}
    80001adc:	0307c783          	lbu	a5,48(a5)
        && !t2->myHandle->getFinished())
    80001ae0:	00079e63          	bnez	a5,80001afc <_Z11threadTestsv+0xdc>
    80001ae4:	00093783          	ld	a5,0(s2)
    80001ae8:	0307c783          	lbu	a5,48(a5)
    80001aec:	00079863          	bnez	a5,80001afc <_Z11threadTestsv+0xdc>
    {
        thread_dispatch();
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	808080e7          	jalr	-2040(ra) # 800012f8 <thread_dispatch>
    while(!t1->myHandle->getFinished()
    80001af8:	fe1ff06f          	j	80001ad8 <_Z11threadTestsv+0xb8>
    }

    Riscv::printString("End...");
    80001afc:	00003517          	auipc	a0,0x3
    80001b00:	59450513          	addi	a0,a0,1428 # 80005090 <CONSOLE_STATUS+0x80>
    80001b04:	00000097          	auipc	ra,0x0
    80001b08:	530080e7          	jalr	1328(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
}
    80001b0c:	01813083          	ld	ra,24(sp)
    80001b10:	01013403          	ld	s0,16(sp)
    80001b14:	00813483          	ld	s1,8(sp)
    80001b18:	00013903          	ld	s2,0(sp)
    80001b1c:	02010113          	addi	sp,sp,32
    80001b20:	00008067          	ret
    80001b24:	00050913          	mv	s2,a0
    Thread* t = new Thread(0, 0);
    80001b28:	00048513          	mv	a0,s1
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	3f4080e7          	jalr	1012(ra) # 80001f20 <_ZdlPv>
    80001b34:	00090513          	mv	a0,s2
    80001b38:	00005097          	auipc	ra,0x5
    80001b3c:	3d0080e7          	jalr	976(ra) # 80006f08 <_Unwind_Resume>
    80001b40:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001b44:	00048513          	mv	a0,s1
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	3d8080e7          	jalr	984(ra) # 80001f20 <_ZdlPv>
    80001b50:	00090513          	mv	a0,s2
    80001b54:	00005097          	auipc	ra,0x5
    80001b58:	3b4080e7          	jalr	948(ra) # 80006f08 <_Unwind_Resume>
    80001b5c:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    80001b60:	00090513          	mv	a0,s2
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	3bc080e7          	jalr	956(ra) # 80001f20 <_ZdlPv>
    80001b6c:	00048513          	mv	a0,s1
    80001b70:	00005097          	auipc	ra,0x5
    80001b74:	398080e7          	jalr	920(ra) # 80006f08 <_Unwind_Resume>

0000000080001b78 <main>:
{
    80001b78:	ff010113          	addi	sp,sp,-16
    80001b7c:	00113423          	sd	ra,8(sp)
    80001b80:	00813023          	sd	s0,0(sp)
    80001b84:	01010413          	addi	s0,sp,16
    Riscv::initSystem();
    80001b88:	00000097          	auipc	ra,0x0
    80001b8c:	468080e7          	jalr	1128(ra) # 80001ff0 <_ZN5Riscv10initSystemEv>
    threadTests();
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	e90080e7          	jalr	-368(ra) # 80001a20 <_Z11threadTestsv>
}
    80001b98:	00813083          	ld	ra,8(sp)
    80001b9c:	00013403          	ld	s0,0(sp)
    80001ba0:	01010113          	addi	sp,sp,16
    80001ba4:	00008067          	ret

0000000080001ba8 <_Z10mallocFreev>:


//memory (de)allocation tests
void mallocFree()
{
    80001ba8:	cc010113          	addi	sp,sp,-832
    80001bac:	32113c23          	sd	ra,824(sp)
    80001bb0:	32813823          	sd	s0,816(sp)
    80001bb4:	32913423          	sd	s1,808(sp)
    80001bb8:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    80001bbc:	00003517          	auipc	a0,0x3
    80001bc0:	4dc50513          	addi	a0,a0,1244 # 80005098 <CONSOLE_STATUS+0x88>
    80001bc4:	00000097          	auipc	ra,0x0
    80001bc8:	470080e7          	jalr	1136(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    80001bcc:	00000493          	li	s1,0
    80001bd0:	0080006f          	j	80001bd8 <_Z10mallocFreev+0x30>
    80001bd4:	0014849b          	addiw	s1,s1,1
    80001bd8:	06300793          	li	a5,99
    80001bdc:	0497c463          	blt	a5,s1,80001c24 <_Z10mallocFreev+0x7c>
    {
        addrs[i] = mem_alloc(100);
    80001be0:	06400513          	li	a0,100
    80001be4:	fffff097          	auipc	ra,0xfffff
    80001be8:	638080e7          	jalr	1592(ra) # 8000121c <mem_alloc>
    80001bec:	00349793          	slli	a5,s1,0x3
    80001bf0:	fe040713          	addi	a4,s0,-32
    80001bf4:	00f707b3          	add	a5,a4,a5
    80001bf8:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001bfc:	fc051ce3          	bnez	a0,80001bd4 <_Z10mallocFreev+0x2c>
        {
            Riscv::printString("not OK\n");
    80001c00:	00003517          	auipc	a0,0x3
    80001c04:	4a850513          	addi	a0,a0,1192 # 800050a8 <CONSOLE_STATUS+0x98>
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	42c080e7          	jalr	1068(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
            return;
        }
    }

    Riscv::printString("OK\n");
}
    80001c10:	33813083          	ld	ra,824(sp)
    80001c14:	33013403          	ld	s0,816(sp)
    80001c18:	32813483          	ld	s1,808(sp)
    80001c1c:	34010113          	addi	sp,sp,832
    80001c20:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001c24:	00000493          	li	s1,0
    80001c28:	06300793          	li	a5,99
    80001c2c:	0297ce63          	blt	a5,s1,80001c68 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001c30:	00349793          	slli	a5,s1,0x3
    80001c34:	fe040713          	addi	a4,s0,-32
    80001c38:	00f707b3          	add	a5,a4,a5
    80001c3c:	ce07b503          	ld	a0,-800(a5)
    80001c40:	fffff097          	auipc	ra,0xfffff
    80001c44:	60c080e7          	jalr	1548(ra) # 8000124c <mem_free>
        if(retval != 0)
    80001c48:	00051663          	bnez	a0,80001c54 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001c4c:	0024849b          	addiw	s1,s1,2
    80001c50:	fd9ff06f          	j	80001c28 <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    80001c54:	00003517          	auipc	a0,0x3
    80001c58:	45450513          	addi	a0,a0,1108 # 800050a8 <CONSOLE_STATUS+0x98>
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	3d8080e7          	jalr	984(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
            return;
    80001c64:	fadff06f          	j	80001c10 <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001c68:	00000493          	li	s1,0
    80001c6c:	0080006f          	j	80001c74 <_Z10mallocFreev+0xcc>
    80001c70:	0024849b          	addiw	s1,s1,2
    80001c74:	06300793          	li	a5,99
    80001c78:	0297cc63          	blt	a5,s1,80001cb0 <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001c7c:	01400513          	li	a0,20
    80001c80:	fffff097          	auipc	ra,0xfffff
    80001c84:	59c080e7          	jalr	1436(ra) # 8000121c <mem_alloc>
    80001c88:	00349793          	slli	a5,s1,0x3
    80001c8c:	fe040713          	addi	a4,s0,-32
    80001c90:	00f707b3          	add	a5,a4,a5
    80001c94:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001c98:	fc051ce3          	bnez	a0,80001c70 <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    80001c9c:	00003517          	auipc	a0,0x3
    80001ca0:	40c50513          	addi	a0,a0,1036 # 800050a8 <CONSOLE_STATUS+0x98>
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	390080e7          	jalr	912(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
            return;
    80001cac:	f65ff06f          	j	80001c10 <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001cb0:	00000493          	li	s1,0
    80001cb4:	06300793          	li	a5,99
    80001cb8:	0297ce63          	blt	a5,s1,80001cf4 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001cbc:	00349793          	slli	a5,s1,0x3
    80001cc0:	fe040713          	addi	a4,s0,-32
    80001cc4:	00f707b3          	add	a5,a4,a5
    80001cc8:	ce07b503          	ld	a0,-800(a5)
    80001ccc:	fffff097          	auipc	ra,0xfffff
    80001cd0:	580080e7          	jalr	1408(ra) # 8000124c <mem_free>
        if(retval != 0)
    80001cd4:	00051663          	bnez	a0,80001ce0 <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001cd8:	0014849b          	addiw	s1,s1,1
    80001cdc:	fd9ff06f          	j	80001cb4 <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    80001ce0:	00003517          	auipc	a0,0x3
    80001ce4:	3c850513          	addi	a0,a0,968 # 800050a8 <CONSOLE_STATUS+0x98>
    80001ce8:	00000097          	auipc	ra,0x0
    80001cec:	34c080e7          	jalr	844(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
            return;
    80001cf0:	f21ff06f          	j	80001c10 <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001cf4:	00003517          	auipc	a0,0x3
    80001cf8:	3bc50513          	addi	a0,a0,956 # 800050b0 <CONSOLE_STATUS+0xa0>
    80001cfc:	00000097          	auipc	ra,0x0
    80001d00:	338080e7          	jalr	824(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
    80001d04:	f0dff06f          	j	80001c10 <_Z10mallocFreev+0x68>

0000000080001d08 <_Z9bigMallocv>:
void bigMalloc()
{
    80001d08:	ff010113          	addi	sp,sp,-16
    80001d0c:	00113423          	sd	ra,8(sp)
    80001d10:	00813023          	sd	s0,0(sp)
    80001d14:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    80001d18:	00003517          	auipc	a0,0x3
    80001d1c:	3a050513          	addi	a0,a0,928 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001d20:	00000097          	auipc	ra,0x0
    80001d24:	314080e7          	jalr	788(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001d28:	00004797          	auipc	a5,0x4
    80001d2c:	0a07b783          	ld	a5,160(a5) # 80005dc8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d30:	0007b503          	ld	a0,0(a5)
    80001d34:	00004797          	auipc	a5,0x4
    80001d38:	06c7b783          	ld	a5,108(a5) # 80005da0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001d3c:	0007b783          	ld	a5,0(a5)
    80001d40:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001d44:	06450513          	addi	a0,a0,100
    80001d48:	fffff097          	auipc	ra,0xfffff
    80001d4c:	4d4080e7          	jalr	1236(ra) # 8000121c <mem_alloc>
    if(p == 0)
    80001d50:	02050263          	beqz	a0,80001d74 <_Z9bigMallocv+0x6c>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    80001d54:	00003517          	auipc	a0,0x3
    80001d58:	35450513          	addi	a0,a0,852 # 800050a8 <CONSOLE_STATUS+0x98>
    80001d5c:	00000097          	auipc	ra,0x0
    80001d60:	2d8080e7          	jalr	728(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
}
    80001d64:	00813083          	ld	ra,8(sp)
    80001d68:	00013403          	ld	s0,0(sp)
    80001d6c:	01010113          	addi	sp,sp,16
    80001d70:	00008067          	ret
        Riscv::printString("OK\n");
    80001d74:	00003517          	auipc	a0,0x3
    80001d78:	33c50513          	addi	a0,a0,828 # 800050b0 <CONSOLE_STATUS+0xa0>
    80001d7c:	00000097          	auipc	ra,0x0
    80001d80:	2b8080e7          	jalr	696(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
    80001d84:	fe1ff06f          	j	80001d64 <_Z9bigMallocv+0x5c>

0000000080001d88 <_Z17lotOfSmallMallocsv>:

void lotOfSmallMallocs()
{
    80001d88:	fd010113          	addi	sp,sp,-48
    80001d8c:	02113423          	sd	ra,40(sp)
    80001d90:	02813023          	sd	s0,32(sp)
    80001d94:	00913c23          	sd	s1,24(sp)
    80001d98:	01213823          	sd	s2,16(sp)
    80001d9c:	01313423          	sd	s3,8(sp)
    80001da0:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001da4:	00003517          	auipc	a0,0x3
    80001da8:	32450513          	addi	a0,a0,804 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001dac:	00000097          	auipc	ra,0x0
    80001db0:	288080e7          	jalr	648(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
    uint64 cnt = 0;
    uint64 sum = 0;
    uint64 N = 10000UL;
    uint64 X = 10UL;
    for(uint64 i = 0; i < N;i++)
    80001db4:	00000493          	li	s1,0
    uint64 sum = 0;
    80001db8:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001dbc:	00000913          	li	s2,0
    80001dc0:	0180006f          	j	80001dd8 <_Z17lotOfSmallMallocsv+0x50>
    {
        Test* t = (Test*)mem_alloc(sizeof(Test));
        if(t == 0)
            break;
        t->a = X;
    80001dc4:	00a00793          	li	a5,10
    80001dc8:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001dcc:	00a98993          	addi	s3,s3,10
        cnt++;
    80001dd0:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001dd4:	00148493          	addi	s1,s1,1
    80001dd8:	000027b7          	lui	a5,0x2
    80001ddc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001de0:	0097ea63          	bltu	a5,s1,80001df4 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001de4:	00800513          	li	a0,8
    80001de8:	fffff097          	auipc	ra,0xfffff
    80001dec:	434080e7          	jalr	1076(ra) # 8000121c <mem_alloc>
        if(t == 0)
    80001df0:	fc051ae3          	bnez	a0,80001dc4 <_Z17lotOfSmallMallocsv+0x3c>
    }
    Riscv::printInteger(cnt);
    80001df4:	00090513          	mv	a0,s2
    80001df8:	00000097          	auipc	ra,0x0
    80001dfc:	2ac080e7          	jalr	684(ra) # 800020a4 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001e00:	00003517          	auipc	a0,0x3
    80001e04:	41050513          	addi	a0,a0,1040 # 80005210 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	22c080e7          	jalr	556(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001e10:	00291793          	slli	a5,s2,0x2
    80001e14:	01278933          	add	s2,a5,s2
    80001e18:	00191913          	slli	s2,s2,0x1
    80001e1c:	03390863          	beq	s2,s3,80001e4c <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    80001e20:	00003517          	auipc	a0,0x3
    80001e24:	28850513          	addi	a0,a0,648 # 800050a8 <CONSOLE_STATUS+0x98>
    80001e28:	00000097          	auipc	ra,0x0
    80001e2c:	20c080e7          	jalr	524(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
}
    80001e30:	02813083          	ld	ra,40(sp)
    80001e34:	02013403          	ld	s0,32(sp)
    80001e38:	01813483          	ld	s1,24(sp)
    80001e3c:	01013903          	ld	s2,16(sp)
    80001e40:	00813983          	ld	s3,8(sp)
    80001e44:	03010113          	addi	sp,sp,48
    80001e48:	00008067          	ret
        Riscv::printString("OK\n");
    80001e4c:	00003517          	auipc	a0,0x3
    80001e50:	26450513          	addi	a0,a0,612 # 800050b0 <CONSOLE_STATUS+0xa0>
    80001e54:	00000097          	auipc	ra,0x0
    80001e58:	1e0080e7          	jalr	480(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
    80001e5c:	fd5ff06f          	j	80001e30 <_Z17lotOfSmallMallocsv+0xa8>

0000000080001e60 <_Z7badFreev>:
void badFree()
{
    80001e60:	ff010113          	addi	sp,sp,-16
    80001e64:	00113423          	sd	ra,8(sp)
    80001e68:	00813023          	sd	s0,0(sp)
    80001e6c:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001e70:	00003517          	auipc	a0,0x3
    80001e74:	27050513          	addi	a0,a0,624 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001e78:	00000097          	auipc	ra,0x0
    80001e7c:	1bc080e7          	jalr	444(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001e80:	00800513          	li	a0,8
    80001e84:	fffff097          	auipc	ra,0xfffff
    80001e88:	398080e7          	jalr	920(ra) # 8000121c <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001e8c:	00250513          	addi	a0,a0,2
    80001e90:	fffff097          	auipc	ra,0xfffff
    80001e94:	3bc080e7          	jalr	956(ra) # 8000124c <mem_free>
    if(retval == 0)
    80001e98:	02051263          	bnez	a0,80001ebc <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001e9c:	00003517          	auipc	a0,0x3
    80001ea0:	20c50513          	addi	a0,a0,524 # 800050a8 <CONSOLE_STATUS+0x98>
    80001ea4:	00000097          	auipc	ra,0x0
    80001ea8:	190080e7          	jalr	400(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
    else
        Riscv::printString("OK\n");
}
    80001eac:	00813083          	ld	ra,8(sp)
    80001eb0:	00013403          	ld	s0,0(sp)
    80001eb4:	01010113          	addi	sp,sp,16
    80001eb8:	00008067          	ret
        Riscv::printString("OK\n");
    80001ebc:	00003517          	auipc	a0,0x3
    80001ec0:	1f450513          	addi	a0,a0,500 # 800050b0 <CONSOLE_STATUS+0xa0>
    80001ec4:	00000097          	auipc	ra,0x0
    80001ec8:	170080e7          	jalr	368(ra) # 80002034 <_ZN5Riscv11printStringEPKc>
}
    80001ecc:	fe1ff06f          	j	80001eac <_Z7badFreev+0x4c>

0000000080001ed0 <_Z21memoryAllocationTestsv>:

void memoryAllocationTests()
{
    80001ed0:	ff010113          	addi	sp,sp,-16
    80001ed4:	00113423          	sd	ra,8(sp)
    80001ed8:	00813023          	sd	s0,0(sp)
    80001edc:	01010413          	addi	s0,sp,16
    //bigMalloc();
    //lotOfSmallMallocs();
    //mallocFree();
    badFree();
    80001ee0:	00000097          	auipc	ra,0x0
    80001ee4:	f80080e7          	jalr	-128(ra) # 80001e60 <_Z7badFreev>
}
    80001ee8:	00813083          	ld	ra,8(sp)
    80001eec:	00013403          	ld	s0,0(sp)
    80001ef0:	01010113          	addi	sp,sp,16
    80001ef4:	00008067          	ret

0000000080001ef8 <_Znwm>:

#include "../h/syscall_cpp.h"

//general
void * operator new(size_t size)
{
    80001ef8:	ff010113          	addi	sp,sp,-16
    80001efc:	00113423          	sd	ra,8(sp)
    80001f00:	00813023          	sd	s0,0(sp)
    80001f04:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001f08:	fffff097          	auipc	ra,0xfffff
    80001f0c:	314080e7          	jalr	788(ra) # 8000121c <mem_alloc>
}
    80001f10:	00813083          	ld	ra,8(sp)
    80001f14:	00013403          	ld	s0,0(sp)
    80001f18:	01010113          	addi	sp,sp,16
    80001f1c:	00008067          	ret

0000000080001f20 <_ZdlPv>:

void operator delete(void * p)
{
    80001f20:	ff010113          	addi	sp,sp,-16
    80001f24:	00113423          	sd	ra,8(sp)
    80001f28:	00813023          	sd	s0,0(sp)
    80001f2c:	01010413          	addi	s0,sp,16
   mem_free(p);
    80001f30:	fffff097          	auipc	ra,0xfffff
    80001f34:	31c080e7          	jalr	796(ra) # 8000124c <mem_free>
}
    80001f38:	00813083          	ld	ra,8(sp)
    80001f3c:	00013403          	ld	s0,0(sp)
    80001f40:	01010113          	addi	sp,sp,16
    80001f44:	00008067          	ret

0000000080001f48 <_ZN6Thread5startEv>:

//Thread

//todo
//diskusija u os1 proj sheet-u
void Thread::start() {
    80001f48:	ff010113          	addi	sp,sp,-16
    80001f4c:	00813423          	sd	s0,8(sp)
    80001f50:	01010413          	addi	s0,sp,16
    //int retval = thread_create(&myHandle, )
}
    80001f54:	00813403          	ld	s0,8(sp)
    80001f58:	01010113          	addi	sp,sp,16
    80001f5c:	00008067          	ret

0000000080001f60 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80001f60:	ff010113          	addi	sp,sp,-16
    80001f64:	00113423          	sd	ra,8(sp)
    80001f68:	00813023          	sd	s0,0(sp)
    80001f6c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001f70:	fffff097          	auipc	ra,0xfffff
    80001f74:	388080e7          	jalr	904(ra) # 800012f8 <thread_dispatch>
}
    80001f78:	00813083          	ld	ra,8(sp)
    80001f7c:	00013403          	ld	s0,0(sp)
    80001f80:	01010113          	addi	sp,sp,16
    80001f84:	00008067          	ret

0000000080001f88 <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    80001f88:	ff010113          	addi	sp,sp,-16
    80001f8c:	00113423          	sd	ra,8(sp)
    80001f90:	00813023          	sd	s0,0(sp)
    80001f94:	01010413          	addi	s0,sp,16
    PCB::sleep(time);
    80001f98:	fffff097          	auipc	ra,0xfffff
    80001f9c:	44c080e7          	jalr	1100(ra) # 800013e4 <_ZN3PCB5sleepEm>
}
    80001fa0:	00813083          	ld	ra,8(sp)
    80001fa4:	00013403          	ld	s0,0(sp)
    80001fa8:	01010113          	addi	sp,sp,16
    80001fac:	00008067          	ret

0000000080001fb0 <_ZN6ThreadC1EPFvPvES0_>:

Thread::Thread(void (*body)(void *), void *args) {
    80001fb0:	ff010113          	addi	sp,sp,-16
    80001fb4:	00113423          	sd	ra,8(sp)
    80001fb8:	00813023          	sd	s0,0(sp)
    80001fbc:	01010413          	addi	s0,sp,16
    int retval = thread_create((void**)&myHandle, body, args);
    80001fc0:	fffff097          	auipc	ra,0xfffff
    80001fc4:	2b8080e7          	jalr	696(ra) # 80001278 <thread_create>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    80001fc8:	00813083          	ld	ra,8(sp)
    80001fcc:	00013403          	ld	s0,0(sp)
    80001fd0:	01010113          	addi	sp,sp,16
    80001fd4:	00008067          	ret

0000000080001fd8 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    80001fd8:	ff010113          	addi	sp,sp,-16
    80001fdc:	00813423          	sd	s0,8(sp)
    80001fe0:	01010413          	addi	s0,sp,16

}
    80001fe4:	00813403          	ld	s0,8(sp)
    80001fe8:	01010113          	addi	sp,sp,16
    80001fec:	00008067          	ret

0000000080001ff0 <_ZN5Riscv10initSystemEv>:
#include "../h/PCB.h"
#include "../lib/console.h"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem() {
    80001ff0:	ff010113          	addi	sp,sp,-16
    80001ff4:	00813423          	sd	s0,8(sp)
    80001ff8:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80001ffc:	00004797          	auipc	a5,0x4
    80002000:	dac7b783          	ld	a5,-596(a5) # 80005da8 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80002004:	10579073          	csrw	stvec,a5
    //todo
    //no need for comment, but sync context switch
    //should be tested, before hardware interrupts are enabled
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
}
    80002008:	00813403          	ld	s0,8(sp)
    8000200c:	01010113          	addi	sp,sp,16
    80002010:	00008067          	ret

0000000080002014 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80002014:	ff010113          	addi	sp,sp,-16
    80002018:	00813423          	sd	s0,8(sp)
    8000201c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002020:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002024:	10200073          	sret
}
    80002028:	00813403          	ld	s0,8(sp)
    8000202c:	01010113          	addi	sp,sp,16
    80002030:	00008067          	ret

0000000080002034 <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    80002034:	fd010113          	addi	sp,sp,-48
    80002038:	02113423          	sd	ra,40(sp)
    8000203c:	02813023          	sd	s0,32(sp)
    80002040:	00913c23          	sd	s1,24(sp)
    80002044:	01213823          	sd	s2,16(sp)
    80002048:	03010413          	addi	s0,sp,48
    8000204c:	00050493          	mv	s1,a0
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002050:	100027f3          	csrr	a5,sstatus
    80002054:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002058:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    8000205c:	00200793          	li	a5,2
    80002060:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    80002064:	0004c503          	lbu	a0,0(s1)
    80002068:	00050a63          	beqz	a0,8000207c <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    8000206c:	00003097          	auipc	ra,0x3
    80002070:	810080e7          	jalr	-2032(ra) # 8000487c <__putc>
        string++;
    80002074:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002078:	fedff06f          	j	80002064 <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    8000207c:	0009091b          	sext.w	s2,s2
    80002080:	00297913          	andi	s2,s2,2
    80002084:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002088:	10092073          	csrs	sstatus,s2
}
    8000208c:	02813083          	ld	ra,40(sp)
    80002090:	02013403          	ld	s0,32(sp)
    80002094:	01813483          	ld	s1,24(sp)
    80002098:	01013903          	ld	s2,16(sp)
    8000209c:	03010113          	addi	sp,sp,48
    800020a0:	00008067          	ret

00000000800020a4 <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    800020a4:	fc010113          	addi	sp,sp,-64
    800020a8:	02113c23          	sd	ra,56(sp)
    800020ac:	02813823          	sd	s0,48(sp)
    800020b0:	02913423          	sd	s1,40(sp)
    800020b4:	03213023          	sd	s2,32(sp)
    800020b8:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800020bc:	100027f3          	csrr	a5,sstatus
    800020c0:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800020c4:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800020c8:	00200793          	li	a5,2
    800020cc:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    800020d0:	0005051b          	sext.w	a0,a0

    i = 0;
    800020d4:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    800020d8:	00a00613          	li	a2,10
    800020dc:	02c5773b          	remuw	a4,a0,a2
    800020e0:	02071693          	slli	a3,a4,0x20
    800020e4:	0206d693          	srli	a3,a3,0x20
    800020e8:	00003717          	auipc	a4,0x3
    800020ec:	00870713          	addi	a4,a4,8 # 800050f0 <_ZZN5Riscv12printIntegerEmE6digits>
    800020f0:	00d70733          	add	a4,a4,a3
    800020f4:	00074703          	lbu	a4,0(a4)
    800020f8:	fe040693          	addi	a3,s0,-32
    800020fc:	009687b3          	add	a5,a3,s1
    80002100:	0014849b          	addiw	s1,s1,1
    80002104:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80002108:	0005071b          	sext.w	a4,a0
    8000210c:	02c5553b          	divuw	a0,a0,a2
    80002110:	00900793          	li	a5,9
    80002114:	fce7e2e3          	bltu	a5,a4,800020d8 <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80002118:	fff4849b          	addiw	s1,s1,-1
    8000211c:	0004ce63          	bltz	s1,80002138 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80002120:	fe040793          	addi	a5,s0,-32
    80002124:	009787b3          	add	a5,a5,s1
    80002128:	ff07c503          	lbu	a0,-16(a5)
    8000212c:	00002097          	auipc	ra,0x2
    80002130:	750080e7          	jalr	1872(ra) # 8000487c <__putc>
    80002134:	fe5ff06f          	j	80002118 <_ZN5Riscv12printIntegerEm+0x74>

    Riscv::printString("\n");
    80002138:	00003517          	auipc	a0,0x3
    8000213c:	0d850513          	addi	a0,a0,216 # 80005210 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80002140:	00000097          	auipc	ra,0x0
    80002144:	ef4080e7          	jalr	-268(ra) # 80002034 <_ZN5Riscv11printStringEPKc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80002148:	0009091b          	sext.w	s2,s2
    8000214c:	00297913          	andi	s2,s2,2
    80002150:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002154:	10092073          	csrs	sstatus,s2
}
    80002158:	03813083          	ld	ra,56(sp)
    8000215c:	03013403          	ld	s0,48(sp)
    80002160:	02813483          	ld	s1,40(sp)
    80002164:	02013903          	ld	s2,32(sp)
    80002168:	04010113          	addi	sp,sp,64
    8000216c:	00008067          	ret

0000000080002170 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80002170:	f9010113          	addi	sp,sp,-112
    80002174:	06113423          	sd	ra,104(sp)
    80002178:	06813023          	sd	s0,96(sp)
    8000217c:	04913c23          	sd	s1,88(sp)
    80002180:	05213823          	sd	s2,80(sp)
    80002184:	05313423          	sd	s3,72(sp)
    80002188:	05413023          	sd	s4,64(sp)
    8000218c:	03513c23          	sd	s5,56(sp)
    80002190:	03613823          	sd	s6,48(sp)
    80002194:	07010413          	addi	s0,sp,112

    uint64 a4;
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002198:	00070913          	mv	s2,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    8000219c:	142027f3          	csrr	a5,scause
    800021a0:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    800021a4:	f9843703          	ld	a4,-104(s0)

    uint64 scause = Riscv::r_scause();
    switch(scause) {
    800021a8:	00900793          	li	a5,9
    800021ac:	0af70263          	beq	a4,a5,80002250 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
    800021b0:	fff00793          	li	a5,-1
    800021b4:	03f79793          	slli	a5,a5,0x3f
    800021b8:	00878793          	addi	a5,a5,8
    800021bc:	02f71a63          	bne	a4,a5,800021f0 <_ZN5Riscv20handleSupervisorTrapEv+0x80>

        case timerInterrupt:

            PCB::timeSliceCounter++;
    800021c0:	00004717          	auipc	a4,0x4
    800021c4:	bf073703          	ld	a4,-1040(a4) # 80005db0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800021c8:	00073783          	ld	a5,0(a4)
    800021cc:	00178793          	addi	a5,a5,1
    800021d0:	00f73023          	sd	a5,0(a4)
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice()) {
    800021d4:	00004717          	auipc	a4,0x4
    800021d8:	bec73703          	ld	a4,-1044(a4) # 80005dc0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800021dc:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() { return timeSlice;}
    800021e0:	00073703          	ld	a4,0(a4)
    800021e4:	02e7fa63          	bgeu	a5,a4,80002218 <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    800021e8:	00200793          	li	a5,2
    800021ec:	1447b073          	csrc	sip,a5

            break;
    }

    //console_handler();
}
    800021f0:	06813083          	ld	ra,104(sp)
    800021f4:	06013403          	ld	s0,96(sp)
    800021f8:	05813483          	ld	s1,88(sp)
    800021fc:	05013903          	ld	s2,80(sp)
    80002200:	04813983          	ld	s3,72(sp)
    80002204:	04013a03          	ld	s4,64(sp)
    80002208:	03813a83          	ld	s5,56(sp)
    8000220c:	03013b03          	ld	s6,48(sp)
    80002210:	07010113          	addi	sp,sp,112
    80002214:	00008067          	ret
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002218:	141027f3          	csrr	a5,sepc
    8000221c:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80002220:	fa843483          	ld	s1,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002224:	100027f3          	csrr	a5,sstatus
    80002228:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    8000222c:	fa043903          	ld	s2,-96(s0)
                PCB::timeSliceCounter = 0;
    80002230:	00004797          	auipc	a5,0x4
    80002234:	b807b783          	ld	a5,-1152(a5) # 80005db0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002238:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    8000223c:	fffff097          	auipc	ra,0xfffff
    80002240:	1e8080e7          	jalr	488(ra) # 80001424 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002244:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002248:	14149073          	csrw	sepc,s1
}
    8000224c:	f9dff06f          	j	800021e8 <_ZN5Riscv20handleSupervisorTrapEv+0x78>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002250:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002254:	14102773          	csrr	a4,sepc
    80002258:	fae43823          	sd	a4,-80(s0)
    return sepc;
    8000225c:	fb043483          	ld	s1,-80(s0)
            sepc+=4;
    80002260:	00448493          	addi	s1,s1,4
            if(operation == MemoryAllocator::MEM_ALLOC) {
    80002264:	00100713          	li	a4,1
    80002268:	02e78263          	beq	a5,a4,8000228c <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
            else if(operation == MemoryAllocator::MEM_FREE) {
    8000226c:	00200713          	li	a4,2
    80002270:	02e78a63          	beq	a5,a4,800022a4 <_ZN5Riscv20handleSupervisorTrapEv+0x134>
            else if(operation == PCB::THREAD_CREATE)
    80002274:	01100713          	li	a4,17
    80002278:	04e78063          	beq	a5,a4,800022b8 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            else if(operation == PCB::THREAD_DISPATCH)
    8000227c:	01300713          	li	a4,19
    80002280:	08e78063          	beq	a5,a4,80002300 <_ZN5Riscv20handleSupervisorTrapEv+0x190>
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002284:	14149073          	csrw	sepc,s1
}
    80002288:	f69ff06f          	j	800021f0 <_ZN5Riscv20handleSupervisorTrapEv+0x80>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    8000228c:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    80002290:	00651513          	slli	a0,a0,0x6
    80002294:	00000097          	auipc	ra,0x0
    80002298:	434080e7          	jalr	1076(ra) # 800026c8 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    8000229c:	00050513          	mv	a0,a0
    800022a0:	fe5ff06f          	j	80002284 <_ZN5Riscv20handleSupervisorTrapEv+0x114>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    800022a4:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    800022a8:	00000097          	auipc	ra,0x0
    800022ac:	448080e7          	jalr	1096(ra) # 800026f0 <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    800022b0:	00050513          	mv	a0,a0
    800022b4:	fd1ff06f          	j	80002284 <_ZN5Riscv20handleSupervisorTrapEv+0x114>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800022b8:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800022bc:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    800022c0:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4);
    800022c4:	04000513          	li	a0,64
    800022c8:	fffff097          	auipc	ra,0xfffff
    800022cc:	1e4080e7          	jalr	484(ra) # 800014ac <_ZN3PCBnwEm>
    800022d0:	00050993          	mv	s3,a0
    800022d4:	00090693          	mv	a3,s2
    800022d8:	000b0613          	mv	a2,s6
    800022dc:	000a8593          	mv	a1,s5
    800022e0:	fffff097          	auipc	ra,0xfffff
    800022e4:	0c8080e7          	jalr	200(ra) # 800013a8 <_ZN3PCBC1EPFvPvES0_S0_>
                (*threadHandle) = newPCB;
    800022e8:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    800022ec:	00098663          	beqz	s3,800022f8 <_ZN5Riscv20handleSupervisorTrapEv+0x188>
                    __asm__ volatile("li a0, 0");
    800022f0:	00000513          	li	a0,0
    800022f4:	f91ff06f          	j	80002284 <_ZN5Riscv20handleSupervisorTrapEv+0x114>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    800022f8:	fff00513          	li	a0,-1
    800022fc:	f89ff06f          	j	80002284 <_ZN5Riscv20handleSupervisorTrapEv+0x114>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002300:	100027f3          	csrr	a5,sstatus
    80002304:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80002308:	fb843903          	ld	s2,-72(s0)
                PCB::timeSliceCounter = 0;
    8000230c:	00004797          	auipc	a5,0x4
    80002310:	aa47b783          	ld	a5,-1372(a5) # 80005db0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002314:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80002318:	fffff097          	auipc	ra,0xfffff
    8000231c:	10c080e7          	jalr	268(ra) # 80001424 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002320:	10091073          	csrw	sstatus,s2
}
    80002324:	f61ff06f          	j	80002284 <_ZN5Riscv20handleSupervisorTrapEv+0x114>
    80002328:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4);
    8000232c:	00098513          	mv	a0,s3
    80002330:	fffff097          	auipc	ra,0xfffff
    80002334:	1a4080e7          	jalr	420(ra) # 800014d4 <_ZN3PCBdlEPv>
    80002338:	00048513          	mv	a0,s1
    8000233c:	00005097          	auipc	ra,0x5
    80002340:	bcc080e7          	jalr	-1076(ra) # 80006f08 <_Unwind_Resume>

0000000080002344 <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80002344:	ff010113          	addi	sp,sp,-16
    80002348:	00813423          	sd	s0,8(sp)
    8000234c:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80002350:	00004717          	auipc	a4,0x4
    80002354:	ad872703          	lw	a4,-1320(a4) # 80005e28 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80002358:	00100793          	li	a5,1
    8000235c:	04f70263          	beq	a4,a5,800023a0 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80002360:	00004797          	auipc	a5,0x4
    80002364:	ac878793          	addi	a5,a5,-1336 # 80005e28 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80002368:	00100713          	li	a4,1
    8000236c:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80002370:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80002374:	00004717          	auipc	a4,0x4
    80002378:	a2c73703          	ld	a4,-1492(a4) # 80005da0 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000237c:	00073703          	ld	a4,0(a4)
    80002380:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80002384:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80002388:	00004797          	auipc	a5,0x4
    8000238c:	a407b783          	ld	a5,-1472(a5) # 80005dc8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002390:	0007b783          	ld	a5,0(a5)
    80002394:	40e787b3          	sub	a5,a5,a4
    80002398:	ff178793          	addi	a5,a5,-15
    8000239c:	00f73023          	sd	a5,0(a4)
}
    800023a0:	00813403          	ld	s0,8(sp)
    800023a4:	01010113          	addi	sp,sp,16
    800023a8:	00008067          	ret

00000000800023ac <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    800023ac:	fe010113          	addi	sp,sp,-32
    800023b0:	00113c23          	sd	ra,24(sp)
    800023b4:	00813823          	sd	s0,16(sp)
    800023b8:	00913423          	sd	s1,8(sp)
    800023bc:	01213023          	sd	s2,0(sp)
    800023c0:	02010413          	addi	s0,sp,32
    800023c4:	00050493          	mv	s1,a0
    800023c8:	00058913          	mv	s2,a1

    initMemory();
    800023cc:	00000097          	auipc	ra,0x0
    800023d0:	f78080e7          	jalr	-136(ra) # 80002344 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* after =  headAllocated;
    800023d4:	00004797          	auipc	a5,0x4
    800023d8:	a5c7b783          	ld	a5,-1444(a5) # 80005e30 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    800023dc:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    800023e0:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    800023e4:	00000713          	li	a4,0
    while(after != 0)
    800023e8:	00078c63          	beqz	a5,80002400 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)after > addr)
    800023ec:	00f4e863          	bltu	s1,a5,800023fc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = after;
            break;
        }
        prev = after;
    800023f0:	00078713          	mv	a4,a5
        after = after->next;
    800023f4:	0087b783          	ld	a5,8(a5)
    while(after != 0)
    800023f8:	ff1ff06f          	j	800023e8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = after;
    800023fc:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80002400:	02070063          	beqz	a4,80002420 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80002404:	00973423          	sd	s1,8(a4)
}
    80002408:	01813083          	ld	ra,24(sp)
    8000240c:	01013403          	ld	s0,16(sp)
    80002410:	00813483          	ld	s1,8(sp)
    80002414:	00013903          	ld	s2,0(sp)
    80002418:	02010113          	addi	sp,sp,32
    8000241c:	00008067          	ret
        headAllocated = newAllocated;
    80002420:	00004797          	auipc	a5,0x4
    80002424:	a097b823          	sd	s1,-1520(a5) # 80005e30 <_ZN15MemoryAllocator13headAllocatedE>
    80002428:	fe1ff06f          	j	80002408 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

000000008000242c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    8000242c:	fe010113          	addi	sp,sp,-32
    80002430:	00113c23          	sd	ra,24(sp)
    80002434:	00813823          	sd	s0,16(sp)
    80002438:	00913423          	sd	s1,8(sp)
    8000243c:	01213023          	sd	s2,0(sp)
    80002440:	02010413          	addi	s0,sp,32
    80002444:	00050913          	mv	s2,a0
    initMemory();
    80002448:	00000097          	auipc	ra,0x0
    8000244c:	efc080e7          	jalr	-260(ra) # 80002344 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80002450:	00004497          	auipc	s1,0x4
    80002454:	9e84b483          	ld	s1,-1560(s1) # 80005e38 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80002458:	00000713          	li	a4,0
    //uint64 newSize = size + sizeof(BlockHeader);
    uint64 newSize = size;
    while(curr != 0) {
    8000245c:	08048863          	beqz	s1,800024ec <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc0>

        if(curr->size >= newSize) {
    80002460:	0004b783          	ld	a5,0(s1)
    80002464:	0127f863          	bgeu	a5,s2,80002474 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80002468:	00048713          	mv	a4,s1
        curr = curr->next;
    8000246c:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    80002470:	fedff06f          	j	8000245c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80002474:	01090693          	addi	a3,s2,16
    80002478:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR) {
    8000247c:	00004617          	auipc	a2,0x4
    80002480:	94c63603          	ld	a2,-1716(a2) # 80005dc8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002484:	00063603          	ld	a2,0(a2)
    80002488:	02d66c63          	bltu	a2,a3,800024c0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                uint64 size2 = curr->size - size;
    8000248c:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80002490:	01000613          	li	a2,16
    80002494:	02f67a63          	bgeu	a2,a5,800024c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    80002498:	0084b603          	ld	a2,8(s1)
    8000249c:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    800024a0:	ff078793          	addi	a5,a5,-16
    800024a4:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    800024a8:	00070663          	beqz	a4,800024b4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    800024ac:	00d73423          	sd	a3,8(a4)
    800024b0:	0180006f          	j	800024c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                        headFree = newFree;
    800024b4:	00004797          	auipc	a5,0x4
    800024b8:	98d7b223          	sd	a3,-1660(a5) # 80005e38 <_ZN15MemoryAllocator8headFreeE>
    800024bc:	00c0006f          	j	800024c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                if(prev != 0)
    800024c0:	02070063          	beqz	a4,800024e0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                    prev->next = 0;
    800024c4:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    800024c8:	00090593          	mv	a1,s2
    800024cc:	00048513          	mv	a0,s1
    800024d0:	00000097          	auipc	ra,0x0
    800024d4:	edc080e7          	jalr	-292(ra) # 800023ac <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    800024d8:	01048513          	addi	a0,s1,16
            break;
    800024dc:	0140006f          	j	800024f0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                    headFree = 0;
    800024e0:	00004797          	auipc	a5,0x4
    800024e4:	9407bc23          	sd	zero,-1704(a5) # 80005e38 <_ZN15MemoryAllocator8headFreeE>
    800024e8:	fe1ff06f          	j	800024c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
    uint64 retval = 0;
    800024ec:	00000513          	li	a0,0
        uint64 x = 2;
        x++;
    }

    return (void*)retval;
}
    800024f0:	01813083          	ld	ra,24(sp)
    800024f4:	01013403          	ld	s0,16(sp)
    800024f8:	00813483          	ld	s1,8(sp)
    800024fc:	00013903          	ld	s2,0(sp)
    80002500:	02010113          	addi	sp,sp,32
    80002504:	00008067          	ret

0000000080002508 <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    80002508:	ff010113          	addi	sp,sp,-16
    8000250c:	00113423          	sd	ra,8(sp)
    80002510:	00813023          	sd	s0,0(sp)
    80002514:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	f14080e7          	jalr	-236(ra) # 8000242c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80002520:	00813083          	ld	ra,8(sp)
    80002524:	00013403          	ld	s0,0(sp)
    80002528:	01010113          	addi	sp,sp,16
    8000252c:	00008067          	ret

0000000080002530 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80002530:	fe010113          	addi	sp,sp,-32
    80002534:	00113c23          	sd	ra,24(sp)
    80002538:	00813823          	sd	s0,16(sp)
    8000253c:	00913423          	sd	s1,8(sp)
    80002540:	01213023          	sd	s2,0(sp)
    80002544:	02010413          	addi	s0,sp,32
    80002548:	00050493          	mv	s1,a0
    8000254c:	00058913          	mv	s2,a1
    initMemory();
    80002550:	00000097          	auipc	ra,0x0
    80002554:	df4080e7          	jalr	-524(ra) # 80002344 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80002558:	00004797          	auipc	a5,0x4
    8000255c:	8e07b783          	ld	a5,-1824(a5) # 80005e38 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*) addr;
    newSegment->size = size;
    80002560:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80002564:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80002568:	00000713          	li	a4,0
    while(curr != 0)
    8000256c:	00078c63          	beqz	a5,80002584 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80002570:	00f4e863          	bltu	s1,a5,80002580 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80002574:	00078713          	mv	a4,a5
        curr = curr->next;
    80002578:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000257c:	ff1ff06f          	j	8000256c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80002580:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80002584:	04070663          	beqz	a4,800025d0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80002588:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    8000258c:	0084b783          	ld	a5,8(s1)
    80002590:	00078a63          	beqz	a5,800025a4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80002594:	0004b603          	ld	a2,0(s1)
    80002598:	01060693          	addi	a3,a2,16
    8000259c:	00d486b3          	add	a3,s1,a3
    800025a0:	02d78e63          	beq	a5,a3,800025dc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    800025a4:	00070a63          	beqz	a4,800025b8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    800025a8:	00073683          	ld	a3,0(a4)
    800025ac:	01068793          	addi	a5,a3,16
    800025b0:	00f707b3          	add	a5,a4,a5
    800025b4:	04978263          	beq	a5,s1,800025f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }

}
    800025b8:	01813083          	ld	ra,24(sp)
    800025bc:	01013403          	ld	s0,16(sp)
    800025c0:	00813483          	ld	s1,8(sp)
    800025c4:	00013903          	ld	s2,0(sp)
    800025c8:	02010113          	addi	sp,sp,32
    800025cc:	00008067          	ret
        headFree = newSegment;
    800025d0:	00004797          	auipc	a5,0x4
    800025d4:	8697b423          	sd	s1,-1944(a5) # 80005e38 <_ZN15MemoryAllocator8headFreeE>
    800025d8:	fb5ff06f          	j	8000258c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    800025dc:	0007b683          	ld	a3,0(a5)
    800025e0:	00d60633          	add	a2,a2,a3
    800025e4:	01060613          	addi	a2,a2,16
    800025e8:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    800025ec:	0087b783          	ld	a5,8(a5)
    800025f0:	00f4b423          	sd	a5,8(s1)
    800025f4:	fb1ff06f          	j	800025a4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    800025f8:	0004b783          	ld	a5,0(s1)
    800025fc:	00f686b3          	add	a3,a3,a5
    80002600:	01068693          	addi	a3,a3,16
    80002604:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80002608:	0084b783          	ld	a5,8(s1)
    8000260c:	00f73423          	sd	a5,8(a4)
}
    80002610:	fa9ff06f          	j	800025b8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080002614 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80002614:	fe010113          	addi	sp,sp,-32
    80002618:	00113c23          	sd	ra,24(sp)
    8000261c:	00813823          	sd	s0,16(sp)
    80002620:	00913423          	sd	s1,8(sp)
    80002624:	02010413          	addi	s0,sp,32
    80002628:	00050493          	mv	s1,a0
    initMemory();
    8000262c:	00000097          	auipc	ra,0x0
    80002630:	d18080e7          	jalr	-744(ra) # 80002344 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80002634:	00003517          	auipc	a0,0x3
    80002638:	7fc53503          	ld	a0,2044(a0) # 80005e30 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    8000263c:	00000713          	li	a4,0
    int found = 0;
    while(curr != 0)
    80002640:	04050463          	beqz	a0,80002688 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x74>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80002644:	01050793          	addi	a5,a0,16
    80002648:	00978863          	beq	a5,s1,80002658 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>

            found = 1;
            break;
        }

        prev = curr;
    8000264c:	00050713          	mv	a4,a0
        curr = curr->next;
    80002650:	00853503          	ld	a0,8(a0)
    while(curr != 0)
    80002654:	fedff06f          	j	80002640 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x2c>
            if(prev != 0)
    80002658:	02070063          	beqz	a4,80002678 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
                prev->next = curr->next;
    8000265c:	00853783          	ld	a5,8(a0)
    80002660:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80002664:	00053583          	ld	a1,0(a0)
    80002668:	00000097          	auipc	ra,0x0
    8000266c:	ec8080e7          	jalr	-312(ra) # 80002530 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(found)
        return 0;
    80002670:	00000513          	li	a0,0
    80002674:	0180006f          	j	8000268c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x78>
                headAllocated = curr->next;
    80002678:	00853783          	ld	a5,8(a0)
    8000267c:	00003717          	auipc	a4,0x3
    80002680:	7af73a23          	sd	a5,1972(a4) # 80005e30 <_ZN15MemoryAllocator13headAllocatedE>
    80002684:	fe1ff06f          	j	80002664 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x50>
    else
        return 1;
    80002688:	00100513          	li	a0,1
}
    8000268c:	01813083          	ld	ra,24(sp)
    80002690:	01013403          	ld	s0,16(sp)
    80002694:	00813483          	ld	s1,8(sp)
    80002698:	02010113          	addi	sp,sp,32
    8000269c:	00008067          	ret

00000000800026a0 <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    800026a0:	ff010113          	addi	sp,sp,-16
    800026a4:	00113423          	sd	ra,8(sp)
    800026a8:	00813023          	sd	s0,0(sp)
    800026ac:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    800026b0:	00000097          	auipc	ra,0x0
    800026b4:	f64080e7          	jalr	-156(ra) # 80002614 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    800026b8:	00813083          	ld	ra,8(sp)
    800026bc:	00013403          	ld	s0,0(sp)
    800026c0:	01010113          	addi	sp,sp,16
    800026c4:	00008067          	ret

00000000800026c8 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    800026c8:	ff010113          	addi	sp,sp,-16
    800026cc:	00113423          	sd	ra,8(sp)
    800026d0:	00813023          	sd	s0,0(sp)
    800026d4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	e30080e7          	jalr	-464(ra) # 80002508 <_ZN15MemoryAllocator9mem_allocEm>
}
    800026e0:	00813083          	ld	ra,8(sp)
    800026e4:	00013403          	ld	s0,0(sp)
    800026e8:	01010113          	addi	sp,sp,16
    800026ec:	00008067          	ret

00000000800026f0 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    800026f0:	ff010113          	addi	sp,sp,-16
    800026f4:	00113423          	sd	ra,8(sp)
    800026f8:	00813023          	sd	s0,0(sp)
    800026fc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80002700:	00000097          	auipc	ra,0x0
    80002704:	fa0080e7          	jalr	-96(ra) # 800026a0 <_ZN15MemoryAllocator8mem_freeEPv>
    80002708:	00813083          	ld	ra,8(sp)
    8000270c:	00013403          	ld	s0,0(sp)
    80002710:	01010113          	addi	sp,sp,16
    80002714:	00008067          	ret

0000000080002718 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.h"
#include "../h/MemoryAllocator.h"

KSemaphore::KSemaphore(int val) {
    80002718:	fe010113          	addi	sp,sp,-32
    8000271c:	00113c23          	sd	ra,24(sp)
    80002720:	00813823          	sd	s0,16(sp)
    80002724:	00913423          	sd	s1,8(sp)
    80002728:	01213023          	sd	s2,0(sp)
    8000272c:	02010413          	addi	s0,sp,32
    80002730:	00050493          	mv	s1,a0
    80002734:	00058913          	mv	s2,a1
    80002738:	00850513          	addi	a0,a0,8
    8000273c:	fffff097          	auipc	ra,0xfffff
    80002740:	eb4080e7          	jalr	-332(ra) # 800015f0 <_ZN5QueueC1Ev>
    this->val = val;
    80002744:	0124a023          	sw	s2,0(s1)
    //queueBlocked = (Queue<PCB*>*)kmalloc(sizeof(Queue<PCB*>));
}
    80002748:	01813083          	ld	ra,24(sp)
    8000274c:	01013403          	ld	s0,16(sp)
    80002750:	00813483          	ld	s1,8(sp)
    80002754:	00013903          	ld	s2,0(sp)
    80002758:	02010113          	addi	sp,sp,32
    8000275c:	00008067          	ret

0000000080002760 <_ZN10KSemaphore4waitEv>:

void KSemaphore::wait() {
    80002760:	ff010113          	addi	sp,sp,-16
    80002764:	00813423          	sd	s0,8(sp)
    80002768:	01010413          	addi	s0,sp,16
    //todo
}
    8000276c:	00813403          	ld	s0,8(sp)
    80002770:	01010113          	addi	sp,sp,16
    80002774:	00008067          	ret

0000000080002778 <_ZN10KSemaphore6signalEv>:

void KSemaphore::signal() {
    80002778:	ff010113          	addi	sp,sp,-16
    8000277c:	00813423          	sd	s0,8(sp)
    80002780:	01010413          	addi	s0,sp,16
    //todo
}
    80002784:	00813403          	ld	s0,8(sp)
    80002788:	01010113          	addi	sp,sp,16
    8000278c:	00008067          	ret

0000000080002790 <_ZN10KSemaphoreD1Ev>:

KSemaphore::~KSemaphore() {
    80002790:	ff010113          	addi	sp,sp,-16
    80002794:	00113423          	sd	ra,8(sp)
    80002798:	00813023          	sd	s0,0(sp)
    8000279c:	01010413          	addi	s0,sp,16
    800027a0:	00850513          	addi	a0,a0,8
    800027a4:	fffff097          	auipc	ra,0xfffff
    800027a8:	e6c080e7          	jalr	-404(ra) # 80001610 <_ZN5QueueD1Ev>
    //todo
}
    800027ac:	00813083          	ld	ra,8(sp)
    800027b0:	00013403          	ld	s0,0(sp)
    800027b4:	01010113          	addi	sp,sp,16
    800027b8:	00008067          	ret

00000000800027bc <start>:
    800027bc:	ff010113          	addi	sp,sp,-16
    800027c0:	00813423          	sd	s0,8(sp)
    800027c4:	01010413          	addi	s0,sp,16
    800027c8:	300027f3          	csrr	a5,mstatus
    800027cc:	ffffe737          	lui	a4,0xffffe
    800027d0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff775f>
    800027d4:	00e7f7b3          	and	a5,a5,a4
    800027d8:	00001737          	lui	a4,0x1
    800027dc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800027e0:	00e7e7b3          	or	a5,a5,a4
    800027e4:	30079073          	csrw	mstatus,a5
    800027e8:	00000797          	auipc	a5,0x0
    800027ec:	16078793          	addi	a5,a5,352 # 80002948 <system_main>
    800027f0:	34179073          	csrw	mepc,a5
    800027f4:	00000793          	li	a5,0
    800027f8:	18079073          	csrw	satp,a5
    800027fc:	000107b7          	lui	a5,0x10
    80002800:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002804:	30279073          	csrw	medeleg,a5
    80002808:	30379073          	csrw	mideleg,a5
    8000280c:	104027f3          	csrr	a5,sie
    80002810:	2227e793          	ori	a5,a5,546
    80002814:	10479073          	csrw	sie,a5
    80002818:	fff00793          	li	a5,-1
    8000281c:	00a7d793          	srli	a5,a5,0xa
    80002820:	3b079073          	csrw	pmpaddr0,a5
    80002824:	00f00793          	li	a5,15
    80002828:	3a079073          	csrw	pmpcfg0,a5
    8000282c:	f14027f3          	csrr	a5,mhartid
    80002830:	0200c737          	lui	a4,0x200c
    80002834:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002838:	0007869b          	sext.w	a3,a5
    8000283c:	00269713          	slli	a4,a3,0x2
    80002840:	000f4637          	lui	a2,0xf4
    80002844:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002848:	00d70733          	add	a4,a4,a3
    8000284c:	0037979b          	slliw	a5,a5,0x3
    80002850:	020046b7          	lui	a3,0x2004
    80002854:	00d787b3          	add	a5,a5,a3
    80002858:	00c585b3          	add	a1,a1,a2
    8000285c:	00371693          	slli	a3,a4,0x3
    80002860:	00003717          	auipc	a4,0x3
    80002864:	5e070713          	addi	a4,a4,1504 # 80005e40 <timer_scratch>
    80002868:	00b7b023          	sd	a1,0(a5)
    8000286c:	00d70733          	add	a4,a4,a3
    80002870:	00f73c23          	sd	a5,24(a4)
    80002874:	02c73023          	sd	a2,32(a4)
    80002878:	34071073          	csrw	mscratch,a4
    8000287c:	00000797          	auipc	a5,0x0
    80002880:	6e478793          	addi	a5,a5,1764 # 80002f60 <timervec>
    80002884:	30579073          	csrw	mtvec,a5
    80002888:	300027f3          	csrr	a5,mstatus
    8000288c:	0087e793          	ori	a5,a5,8
    80002890:	30079073          	csrw	mstatus,a5
    80002894:	304027f3          	csrr	a5,mie
    80002898:	0807e793          	ori	a5,a5,128
    8000289c:	30479073          	csrw	mie,a5
    800028a0:	f14027f3          	csrr	a5,mhartid
    800028a4:	0007879b          	sext.w	a5,a5
    800028a8:	00078213          	mv	tp,a5
    800028ac:	30200073          	mret
    800028b0:	00813403          	ld	s0,8(sp)
    800028b4:	01010113          	addi	sp,sp,16
    800028b8:	00008067          	ret

00000000800028bc <timerinit>:
    800028bc:	ff010113          	addi	sp,sp,-16
    800028c0:	00813423          	sd	s0,8(sp)
    800028c4:	01010413          	addi	s0,sp,16
    800028c8:	f14027f3          	csrr	a5,mhartid
    800028cc:	0200c737          	lui	a4,0x200c
    800028d0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800028d4:	0007869b          	sext.w	a3,a5
    800028d8:	00269713          	slli	a4,a3,0x2
    800028dc:	000f4637          	lui	a2,0xf4
    800028e0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800028e4:	00d70733          	add	a4,a4,a3
    800028e8:	0037979b          	slliw	a5,a5,0x3
    800028ec:	020046b7          	lui	a3,0x2004
    800028f0:	00d787b3          	add	a5,a5,a3
    800028f4:	00c585b3          	add	a1,a1,a2
    800028f8:	00371693          	slli	a3,a4,0x3
    800028fc:	00003717          	auipc	a4,0x3
    80002900:	54470713          	addi	a4,a4,1348 # 80005e40 <timer_scratch>
    80002904:	00b7b023          	sd	a1,0(a5)
    80002908:	00d70733          	add	a4,a4,a3
    8000290c:	00f73c23          	sd	a5,24(a4)
    80002910:	02c73023          	sd	a2,32(a4)
    80002914:	34071073          	csrw	mscratch,a4
    80002918:	00000797          	auipc	a5,0x0
    8000291c:	64878793          	addi	a5,a5,1608 # 80002f60 <timervec>
    80002920:	30579073          	csrw	mtvec,a5
    80002924:	300027f3          	csrr	a5,mstatus
    80002928:	0087e793          	ori	a5,a5,8
    8000292c:	30079073          	csrw	mstatus,a5
    80002930:	304027f3          	csrr	a5,mie
    80002934:	0807e793          	ori	a5,a5,128
    80002938:	30479073          	csrw	mie,a5
    8000293c:	00813403          	ld	s0,8(sp)
    80002940:	01010113          	addi	sp,sp,16
    80002944:	00008067          	ret

0000000080002948 <system_main>:
    80002948:	fe010113          	addi	sp,sp,-32
    8000294c:	00813823          	sd	s0,16(sp)
    80002950:	00913423          	sd	s1,8(sp)
    80002954:	00113c23          	sd	ra,24(sp)
    80002958:	02010413          	addi	s0,sp,32
    8000295c:	00000097          	auipc	ra,0x0
    80002960:	0c4080e7          	jalr	196(ra) # 80002a20 <cpuid>
    80002964:	00003497          	auipc	s1,0x3
    80002968:	47c48493          	addi	s1,s1,1148 # 80005de0 <started>
    8000296c:	02050263          	beqz	a0,80002990 <system_main+0x48>
    80002970:	0004a783          	lw	a5,0(s1)
    80002974:	0007879b          	sext.w	a5,a5
    80002978:	fe078ce3          	beqz	a5,80002970 <system_main+0x28>
    8000297c:	0ff0000f          	fence
    80002980:	00002517          	auipc	a0,0x2
    80002984:	7b050513          	addi	a0,a0,1968 # 80005130 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80002988:	00001097          	auipc	ra,0x1
    8000298c:	a74080e7          	jalr	-1420(ra) # 800033fc <panic>
    80002990:	00001097          	auipc	ra,0x1
    80002994:	9c8080e7          	jalr	-1592(ra) # 80003358 <consoleinit>
    80002998:	00001097          	auipc	ra,0x1
    8000299c:	154080e7          	jalr	340(ra) # 80003aec <printfinit>
    800029a0:	00003517          	auipc	a0,0x3
    800029a4:	87050513          	addi	a0,a0,-1936 # 80005210 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800029a8:	00001097          	auipc	ra,0x1
    800029ac:	ab0080e7          	jalr	-1360(ra) # 80003458 <__printf>
    800029b0:	00002517          	auipc	a0,0x2
    800029b4:	75050513          	addi	a0,a0,1872 # 80005100 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    800029b8:	00001097          	auipc	ra,0x1
    800029bc:	aa0080e7          	jalr	-1376(ra) # 80003458 <__printf>
    800029c0:	00003517          	auipc	a0,0x3
    800029c4:	85050513          	addi	a0,a0,-1968 # 80005210 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800029c8:	00001097          	auipc	ra,0x1
    800029cc:	a90080e7          	jalr	-1392(ra) # 80003458 <__printf>
    800029d0:	00001097          	auipc	ra,0x1
    800029d4:	4a8080e7          	jalr	1192(ra) # 80003e78 <kinit>
    800029d8:	00000097          	auipc	ra,0x0
    800029dc:	148080e7          	jalr	328(ra) # 80002b20 <trapinit>
    800029e0:	00000097          	auipc	ra,0x0
    800029e4:	16c080e7          	jalr	364(ra) # 80002b4c <trapinithart>
    800029e8:	00000097          	auipc	ra,0x0
    800029ec:	5b8080e7          	jalr	1464(ra) # 80002fa0 <plicinit>
    800029f0:	00000097          	auipc	ra,0x0
    800029f4:	5d8080e7          	jalr	1496(ra) # 80002fc8 <plicinithart>
    800029f8:	00000097          	auipc	ra,0x0
    800029fc:	078080e7          	jalr	120(ra) # 80002a70 <userinit>
    80002a00:	0ff0000f          	fence
    80002a04:	00100793          	li	a5,1
    80002a08:	00002517          	auipc	a0,0x2
    80002a0c:	71050513          	addi	a0,a0,1808 # 80005118 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    80002a10:	00f4a023          	sw	a5,0(s1)
    80002a14:	00001097          	auipc	ra,0x1
    80002a18:	a44080e7          	jalr	-1468(ra) # 80003458 <__printf>
    80002a1c:	0000006f          	j	80002a1c <system_main+0xd4>

0000000080002a20 <cpuid>:
    80002a20:	ff010113          	addi	sp,sp,-16
    80002a24:	00813423          	sd	s0,8(sp)
    80002a28:	01010413          	addi	s0,sp,16
    80002a2c:	00020513          	mv	a0,tp
    80002a30:	00813403          	ld	s0,8(sp)
    80002a34:	0005051b          	sext.w	a0,a0
    80002a38:	01010113          	addi	sp,sp,16
    80002a3c:	00008067          	ret

0000000080002a40 <mycpu>:
    80002a40:	ff010113          	addi	sp,sp,-16
    80002a44:	00813423          	sd	s0,8(sp)
    80002a48:	01010413          	addi	s0,sp,16
    80002a4c:	00020793          	mv	a5,tp
    80002a50:	00813403          	ld	s0,8(sp)
    80002a54:	0007879b          	sext.w	a5,a5
    80002a58:	00779793          	slli	a5,a5,0x7
    80002a5c:	00004517          	auipc	a0,0x4
    80002a60:	41450513          	addi	a0,a0,1044 # 80006e70 <cpus>
    80002a64:	00f50533          	add	a0,a0,a5
    80002a68:	01010113          	addi	sp,sp,16
    80002a6c:	00008067          	ret

0000000080002a70 <userinit>:
    80002a70:	ff010113          	addi	sp,sp,-16
    80002a74:	00813423          	sd	s0,8(sp)
    80002a78:	01010413          	addi	s0,sp,16
    80002a7c:	00813403          	ld	s0,8(sp)
    80002a80:	01010113          	addi	sp,sp,16
    80002a84:	fffff317          	auipc	t1,0xfffff
    80002a88:	0f430067          	jr	244(t1) # 80001b78 <main>

0000000080002a8c <either_copyout>:
    80002a8c:	ff010113          	addi	sp,sp,-16
    80002a90:	00813023          	sd	s0,0(sp)
    80002a94:	00113423          	sd	ra,8(sp)
    80002a98:	01010413          	addi	s0,sp,16
    80002a9c:	02051663          	bnez	a0,80002ac8 <either_copyout+0x3c>
    80002aa0:	00058513          	mv	a0,a1
    80002aa4:	00060593          	mv	a1,a2
    80002aa8:	0006861b          	sext.w	a2,a3
    80002aac:	00002097          	auipc	ra,0x2
    80002ab0:	c58080e7          	jalr	-936(ra) # 80004704 <__memmove>
    80002ab4:	00813083          	ld	ra,8(sp)
    80002ab8:	00013403          	ld	s0,0(sp)
    80002abc:	00000513          	li	a0,0
    80002ac0:	01010113          	addi	sp,sp,16
    80002ac4:	00008067          	ret
    80002ac8:	00002517          	auipc	a0,0x2
    80002acc:	69050513          	addi	a0,a0,1680 # 80005158 <_ZZN5Riscv12printIntegerEmE6digits+0x68>
    80002ad0:	00001097          	auipc	ra,0x1
    80002ad4:	92c080e7          	jalr	-1748(ra) # 800033fc <panic>

0000000080002ad8 <either_copyin>:
    80002ad8:	ff010113          	addi	sp,sp,-16
    80002adc:	00813023          	sd	s0,0(sp)
    80002ae0:	00113423          	sd	ra,8(sp)
    80002ae4:	01010413          	addi	s0,sp,16
    80002ae8:	02059463          	bnez	a1,80002b10 <either_copyin+0x38>
    80002aec:	00060593          	mv	a1,a2
    80002af0:	0006861b          	sext.w	a2,a3
    80002af4:	00002097          	auipc	ra,0x2
    80002af8:	c10080e7          	jalr	-1008(ra) # 80004704 <__memmove>
    80002afc:	00813083          	ld	ra,8(sp)
    80002b00:	00013403          	ld	s0,0(sp)
    80002b04:	00000513          	li	a0,0
    80002b08:	01010113          	addi	sp,sp,16
    80002b0c:	00008067          	ret
    80002b10:	00002517          	auipc	a0,0x2
    80002b14:	67050513          	addi	a0,a0,1648 # 80005180 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80002b18:	00001097          	auipc	ra,0x1
    80002b1c:	8e4080e7          	jalr	-1820(ra) # 800033fc <panic>

0000000080002b20 <trapinit>:
    80002b20:	ff010113          	addi	sp,sp,-16
    80002b24:	00813423          	sd	s0,8(sp)
    80002b28:	01010413          	addi	s0,sp,16
    80002b2c:	00813403          	ld	s0,8(sp)
    80002b30:	00002597          	auipc	a1,0x2
    80002b34:	67858593          	addi	a1,a1,1656 # 800051a8 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80002b38:	00004517          	auipc	a0,0x4
    80002b3c:	3b850513          	addi	a0,a0,952 # 80006ef0 <tickslock>
    80002b40:	01010113          	addi	sp,sp,16
    80002b44:	00001317          	auipc	t1,0x1
    80002b48:	5c430067          	jr	1476(t1) # 80004108 <initlock>

0000000080002b4c <trapinithart>:
    80002b4c:	ff010113          	addi	sp,sp,-16
    80002b50:	00813423          	sd	s0,8(sp)
    80002b54:	01010413          	addi	s0,sp,16
    80002b58:	00000797          	auipc	a5,0x0
    80002b5c:	2f878793          	addi	a5,a5,760 # 80002e50 <kernelvec>
    80002b60:	10579073          	csrw	stvec,a5
    80002b64:	00813403          	ld	s0,8(sp)
    80002b68:	01010113          	addi	sp,sp,16
    80002b6c:	00008067          	ret

0000000080002b70 <usertrap>:
    80002b70:	ff010113          	addi	sp,sp,-16
    80002b74:	00813423          	sd	s0,8(sp)
    80002b78:	01010413          	addi	s0,sp,16
    80002b7c:	00813403          	ld	s0,8(sp)
    80002b80:	01010113          	addi	sp,sp,16
    80002b84:	00008067          	ret

0000000080002b88 <usertrapret>:
    80002b88:	ff010113          	addi	sp,sp,-16
    80002b8c:	00813423          	sd	s0,8(sp)
    80002b90:	01010413          	addi	s0,sp,16
    80002b94:	00813403          	ld	s0,8(sp)
    80002b98:	01010113          	addi	sp,sp,16
    80002b9c:	00008067          	ret

0000000080002ba0 <kerneltrap>:
    80002ba0:	fe010113          	addi	sp,sp,-32
    80002ba4:	00813823          	sd	s0,16(sp)
    80002ba8:	00113c23          	sd	ra,24(sp)
    80002bac:	00913423          	sd	s1,8(sp)
    80002bb0:	02010413          	addi	s0,sp,32
    80002bb4:	142025f3          	csrr	a1,scause
    80002bb8:	100027f3          	csrr	a5,sstatus
    80002bbc:	0027f793          	andi	a5,a5,2
    80002bc0:	10079c63          	bnez	a5,80002cd8 <kerneltrap+0x138>
    80002bc4:	142027f3          	csrr	a5,scause
    80002bc8:	0207ce63          	bltz	a5,80002c04 <kerneltrap+0x64>
    80002bcc:	00002517          	auipc	a0,0x2
    80002bd0:	62450513          	addi	a0,a0,1572 # 800051f0 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80002bd4:	00001097          	auipc	ra,0x1
    80002bd8:	884080e7          	jalr	-1916(ra) # 80003458 <__printf>
    80002bdc:	141025f3          	csrr	a1,sepc
    80002be0:	14302673          	csrr	a2,stval
    80002be4:	00002517          	auipc	a0,0x2
    80002be8:	61c50513          	addi	a0,a0,1564 # 80005200 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80002bec:	00001097          	auipc	ra,0x1
    80002bf0:	86c080e7          	jalr	-1940(ra) # 80003458 <__printf>
    80002bf4:	00002517          	auipc	a0,0x2
    80002bf8:	62450513          	addi	a0,a0,1572 # 80005218 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80002bfc:	00001097          	auipc	ra,0x1
    80002c00:	800080e7          	jalr	-2048(ra) # 800033fc <panic>
    80002c04:	0ff7f713          	andi	a4,a5,255
    80002c08:	00900693          	li	a3,9
    80002c0c:	04d70063          	beq	a4,a3,80002c4c <kerneltrap+0xac>
    80002c10:	fff00713          	li	a4,-1
    80002c14:	03f71713          	slli	a4,a4,0x3f
    80002c18:	00170713          	addi	a4,a4,1
    80002c1c:	fae798e3          	bne	a5,a4,80002bcc <kerneltrap+0x2c>
    80002c20:	00000097          	auipc	ra,0x0
    80002c24:	e00080e7          	jalr	-512(ra) # 80002a20 <cpuid>
    80002c28:	06050663          	beqz	a0,80002c94 <kerneltrap+0xf4>
    80002c2c:	144027f3          	csrr	a5,sip
    80002c30:	ffd7f793          	andi	a5,a5,-3
    80002c34:	14479073          	csrw	sip,a5
    80002c38:	01813083          	ld	ra,24(sp)
    80002c3c:	01013403          	ld	s0,16(sp)
    80002c40:	00813483          	ld	s1,8(sp)
    80002c44:	02010113          	addi	sp,sp,32
    80002c48:	00008067          	ret
    80002c4c:	00000097          	auipc	ra,0x0
    80002c50:	3c8080e7          	jalr	968(ra) # 80003014 <plic_claim>
    80002c54:	00a00793          	li	a5,10
    80002c58:	00050493          	mv	s1,a0
    80002c5c:	06f50863          	beq	a0,a5,80002ccc <kerneltrap+0x12c>
    80002c60:	fc050ce3          	beqz	a0,80002c38 <kerneltrap+0x98>
    80002c64:	00050593          	mv	a1,a0
    80002c68:	00002517          	auipc	a0,0x2
    80002c6c:	56850513          	addi	a0,a0,1384 # 800051d0 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	7e8080e7          	jalr	2024(ra) # 80003458 <__printf>
    80002c78:	01013403          	ld	s0,16(sp)
    80002c7c:	01813083          	ld	ra,24(sp)
    80002c80:	00048513          	mv	a0,s1
    80002c84:	00813483          	ld	s1,8(sp)
    80002c88:	02010113          	addi	sp,sp,32
    80002c8c:	00000317          	auipc	t1,0x0
    80002c90:	3c030067          	jr	960(t1) # 8000304c <plic_complete>
    80002c94:	00004517          	auipc	a0,0x4
    80002c98:	25c50513          	addi	a0,a0,604 # 80006ef0 <tickslock>
    80002c9c:	00001097          	auipc	ra,0x1
    80002ca0:	490080e7          	jalr	1168(ra) # 8000412c <acquire>
    80002ca4:	00003717          	auipc	a4,0x3
    80002ca8:	14070713          	addi	a4,a4,320 # 80005de4 <ticks>
    80002cac:	00072783          	lw	a5,0(a4)
    80002cb0:	00004517          	auipc	a0,0x4
    80002cb4:	24050513          	addi	a0,a0,576 # 80006ef0 <tickslock>
    80002cb8:	0017879b          	addiw	a5,a5,1
    80002cbc:	00f72023          	sw	a5,0(a4)
    80002cc0:	00001097          	auipc	ra,0x1
    80002cc4:	538080e7          	jalr	1336(ra) # 800041f8 <release>
    80002cc8:	f65ff06f          	j	80002c2c <kerneltrap+0x8c>
    80002ccc:	00001097          	auipc	ra,0x1
    80002cd0:	094080e7          	jalr	148(ra) # 80003d60 <uartintr>
    80002cd4:	fa5ff06f          	j	80002c78 <kerneltrap+0xd8>
    80002cd8:	00002517          	auipc	a0,0x2
    80002cdc:	4d850513          	addi	a0,a0,1240 # 800051b0 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    80002ce0:	00000097          	auipc	ra,0x0
    80002ce4:	71c080e7          	jalr	1820(ra) # 800033fc <panic>

0000000080002ce8 <clockintr>:
    80002ce8:	fe010113          	addi	sp,sp,-32
    80002cec:	00813823          	sd	s0,16(sp)
    80002cf0:	00913423          	sd	s1,8(sp)
    80002cf4:	00113c23          	sd	ra,24(sp)
    80002cf8:	02010413          	addi	s0,sp,32
    80002cfc:	00004497          	auipc	s1,0x4
    80002d00:	1f448493          	addi	s1,s1,500 # 80006ef0 <tickslock>
    80002d04:	00048513          	mv	a0,s1
    80002d08:	00001097          	auipc	ra,0x1
    80002d0c:	424080e7          	jalr	1060(ra) # 8000412c <acquire>
    80002d10:	00003717          	auipc	a4,0x3
    80002d14:	0d470713          	addi	a4,a4,212 # 80005de4 <ticks>
    80002d18:	00072783          	lw	a5,0(a4)
    80002d1c:	01013403          	ld	s0,16(sp)
    80002d20:	01813083          	ld	ra,24(sp)
    80002d24:	00048513          	mv	a0,s1
    80002d28:	0017879b          	addiw	a5,a5,1
    80002d2c:	00813483          	ld	s1,8(sp)
    80002d30:	00f72023          	sw	a5,0(a4)
    80002d34:	02010113          	addi	sp,sp,32
    80002d38:	00001317          	auipc	t1,0x1
    80002d3c:	4c030067          	jr	1216(t1) # 800041f8 <release>

0000000080002d40 <devintr>:
    80002d40:	142027f3          	csrr	a5,scause
    80002d44:	00000513          	li	a0,0
    80002d48:	0007c463          	bltz	a5,80002d50 <devintr+0x10>
    80002d4c:	00008067          	ret
    80002d50:	fe010113          	addi	sp,sp,-32
    80002d54:	00813823          	sd	s0,16(sp)
    80002d58:	00113c23          	sd	ra,24(sp)
    80002d5c:	00913423          	sd	s1,8(sp)
    80002d60:	02010413          	addi	s0,sp,32
    80002d64:	0ff7f713          	andi	a4,a5,255
    80002d68:	00900693          	li	a3,9
    80002d6c:	04d70c63          	beq	a4,a3,80002dc4 <devintr+0x84>
    80002d70:	fff00713          	li	a4,-1
    80002d74:	03f71713          	slli	a4,a4,0x3f
    80002d78:	00170713          	addi	a4,a4,1
    80002d7c:	00e78c63          	beq	a5,a4,80002d94 <devintr+0x54>
    80002d80:	01813083          	ld	ra,24(sp)
    80002d84:	01013403          	ld	s0,16(sp)
    80002d88:	00813483          	ld	s1,8(sp)
    80002d8c:	02010113          	addi	sp,sp,32
    80002d90:	00008067          	ret
    80002d94:	00000097          	auipc	ra,0x0
    80002d98:	c8c080e7          	jalr	-884(ra) # 80002a20 <cpuid>
    80002d9c:	06050663          	beqz	a0,80002e08 <devintr+0xc8>
    80002da0:	144027f3          	csrr	a5,sip
    80002da4:	ffd7f793          	andi	a5,a5,-3
    80002da8:	14479073          	csrw	sip,a5
    80002dac:	01813083          	ld	ra,24(sp)
    80002db0:	01013403          	ld	s0,16(sp)
    80002db4:	00813483          	ld	s1,8(sp)
    80002db8:	00200513          	li	a0,2
    80002dbc:	02010113          	addi	sp,sp,32
    80002dc0:	00008067          	ret
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	250080e7          	jalr	592(ra) # 80003014 <plic_claim>
    80002dcc:	00a00793          	li	a5,10
    80002dd0:	00050493          	mv	s1,a0
    80002dd4:	06f50663          	beq	a0,a5,80002e40 <devintr+0x100>
    80002dd8:	00100513          	li	a0,1
    80002ddc:	fa0482e3          	beqz	s1,80002d80 <devintr+0x40>
    80002de0:	00048593          	mv	a1,s1
    80002de4:	00002517          	auipc	a0,0x2
    80002de8:	3ec50513          	addi	a0,a0,1004 # 800051d0 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80002dec:	00000097          	auipc	ra,0x0
    80002df0:	66c080e7          	jalr	1644(ra) # 80003458 <__printf>
    80002df4:	00048513          	mv	a0,s1
    80002df8:	00000097          	auipc	ra,0x0
    80002dfc:	254080e7          	jalr	596(ra) # 8000304c <plic_complete>
    80002e00:	00100513          	li	a0,1
    80002e04:	f7dff06f          	j	80002d80 <devintr+0x40>
    80002e08:	00004517          	auipc	a0,0x4
    80002e0c:	0e850513          	addi	a0,a0,232 # 80006ef0 <tickslock>
    80002e10:	00001097          	auipc	ra,0x1
    80002e14:	31c080e7          	jalr	796(ra) # 8000412c <acquire>
    80002e18:	00003717          	auipc	a4,0x3
    80002e1c:	fcc70713          	addi	a4,a4,-52 # 80005de4 <ticks>
    80002e20:	00072783          	lw	a5,0(a4)
    80002e24:	00004517          	auipc	a0,0x4
    80002e28:	0cc50513          	addi	a0,a0,204 # 80006ef0 <tickslock>
    80002e2c:	0017879b          	addiw	a5,a5,1
    80002e30:	00f72023          	sw	a5,0(a4)
    80002e34:	00001097          	auipc	ra,0x1
    80002e38:	3c4080e7          	jalr	964(ra) # 800041f8 <release>
    80002e3c:	f65ff06f          	j	80002da0 <devintr+0x60>
    80002e40:	00001097          	auipc	ra,0x1
    80002e44:	f20080e7          	jalr	-224(ra) # 80003d60 <uartintr>
    80002e48:	fadff06f          	j	80002df4 <devintr+0xb4>
    80002e4c:	0000                	unimp
	...

0000000080002e50 <kernelvec>:
    80002e50:	f0010113          	addi	sp,sp,-256
    80002e54:	00113023          	sd	ra,0(sp)
    80002e58:	00213423          	sd	sp,8(sp)
    80002e5c:	00313823          	sd	gp,16(sp)
    80002e60:	00413c23          	sd	tp,24(sp)
    80002e64:	02513023          	sd	t0,32(sp)
    80002e68:	02613423          	sd	t1,40(sp)
    80002e6c:	02713823          	sd	t2,48(sp)
    80002e70:	02813c23          	sd	s0,56(sp)
    80002e74:	04913023          	sd	s1,64(sp)
    80002e78:	04a13423          	sd	a0,72(sp)
    80002e7c:	04b13823          	sd	a1,80(sp)
    80002e80:	04c13c23          	sd	a2,88(sp)
    80002e84:	06d13023          	sd	a3,96(sp)
    80002e88:	06e13423          	sd	a4,104(sp)
    80002e8c:	06f13823          	sd	a5,112(sp)
    80002e90:	07013c23          	sd	a6,120(sp)
    80002e94:	09113023          	sd	a7,128(sp)
    80002e98:	09213423          	sd	s2,136(sp)
    80002e9c:	09313823          	sd	s3,144(sp)
    80002ea0:	09413c23          	sd	s4,152(sp)
    80002ea4:	0b513023          	sd	s5,160(sp)
    80002ea8:	0b613423          	sd	s6,168(sp)
    80002eac:	0b713823          	sd	s7,176(sp)
    80002eb0:	0b813c23          	sd	s8,184(sp)
    80002eb4:	0d913023          	sd	s9,192(sp)
    80002eb8:	0da13423          	sd	s10,200(sp)
    80002ebc:	0db13823          	sd	s11,208(sp)
    80002ec0:	0dc13c23          	sd	t3,216(sp)
    80002ec4:	0fd13023          	sd	t4,224(sp)
    80002ec8:	0fe13423          	sd	t5,232(sp)
    80002ecc:	0ff13823          	sd	t6,240(sp)
    80002ed0:	cd1ff0ef          	jal	ra,80002ba0 <kerneltrap>
    80002ed4:	00013083          	ld	ra,0(sp)
    80002ed8:	00813103          	ld	sp,8(sp)
    80002edc:	01013183          	ld	gp,16(sp)
    80002ee0:	02013283          	ld	t0,32(sp)
    80002ee4:	02813303          	ld	t1,40(sp)
    80002ee8:	03013383          	ld	t2,48(sp)
    80002eec:	03813403          	ld	s0,56(sp)
    80002ef0:	04013483          	ld	s1,64(sp)
    80002ef4:	04813503          	ld	a0,72(sp)
    80002ef8:	05013583          	ld	a1,80(sp)
    80002efc:	05813603          	ld	a2,88(sp)
    80002f00:	06013683          	ld	a3,96(sp)
    80002f04:	06813703          	ld	a4,104(sp)
    80002f08:	07013783          	ld	a5,112(sp)
    80002f0c:	07813803          	ld	a6,120(sp)
    80002f10:	08013883          	ld	a7,128(sp)
    80002f14:	08813903          	ld	s2,136(sp)
    80002f18:	09013983          	ld	s3,144(sp)
    80002f1c:	09813a03          	ld	s4,152(sp)
    80002f20:	0a013a83          	ld	s5,160(sp)
    80002f24:	0a813b03          	ld	s6,168(sp)
    80002f28:	0b013b83          	ld	s7,176(sp)
    80002f2c:	0b813c03          	ld	s8,184(sp)
    80002f30:	0c013c83          	ld	s9,192(sp)
    80002f34:	0c813d03          	ld	s10,200(sp)
    80002f38:	0d013d83          	ld	s11,208(sp)
    80002f3c:	0d813e03          	ld	t3,216(sp)
    80002f40:	0e013e83          	ld	t4,224(sp)
    80002f44:	0e813f03          	ld	t5,232(sp)
    80002f48:	0f013f83          	ld	t6,240(sp)
    80002f4c:	10010113          	addi	sp,sp,256
    80002f50:	10200073          	sret
    80002f54:	00000013          	nop
    80002f58:	00000013          	nop
    80002f5c:	00000013          	nop

0000000080002f60 <timervec>:
    80002f60:	34051573          	csrrw	a0,mscratch,a0
    80002f64:	00b53023          	sd	a1,0(a0)
    80002f68:	00c53423          	sd	a2,8(a0)
    80002f6c:	00d53823          	sd	a3,16(a0)
    80002f70:	01853583          	ld	a1,24(a0)
    80002f74:	02053603          	ld	a2,32(a0)
    80002f78:	0005b683          	ld	a3,0(a1)
    80002f7c:	00c686b3          	add	a3,a3,a2
    80002f80:	00d5b023          	sd	a3,0(a1)
    80002f84:	00200593          	li	a1,2
    80002f88:	14459073          	csrw	sip,a1
    80002f8c:	01053683          	ld	a3,16(a0)
    80002f90:	00853603          	ld	a2,8(a0)
    80002f94:	00053583          	ld	a1,0(a0)
    80002f98:	34051573          	csrrw	a0,mscratch,a0
    80002f9c:	30200073          	mret

0000000080002fa0 <plicinit>:
    80002fa0:	ff010113          	addi	sp,sp,-16
    80002fa4:	00813423          	sd	s0,8(sp)
    80002fa8:	01010413          	addi	s0,sp,16
    80002fac:	00813403          	ld	s0,8(sp)
    80002fb0:	0c0007b7          	lui	a5,0xc000
    80002fb4:	00100713          	li	a4,1
    80002fb8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002fbc:	00e7a223          	sw	a4,4(a5)
    80002fc0:	01010113          	addi	sp,sp,16
    80002fc4:	00008067          	ret

0000000080002fc8 <plicinithart>:
    80002fc8:	ff010113          	addi	sp,sp,-16
    80002fcc:	00813023          	sd	s0,0(sp)
    80002fd0:	00113423          	sd	ra,8(sp)
    80002fd4:	01010413          	addi	s0,sp,16
    80002fd8:	00000097          	auipc	ra,0x0
    80002fdc:	a48080e7          	jalr	-1464(ra) # 80002a20 <cpuid>
    80002fe0:	0085171b          	slliw	a4,a0,0x8
    80002fe4:	0c0027b7          	lui	a5,0xc002
    80002fe8:	00e787b3          	add	a5,a5,a4
    80002fec:	40200713          	li	a4,1026
    80002ff0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002ff4:	00813083          	ld	ra,8(sp)
    80002ff8:	00013403          	ld	s0,0(sp)
    80002ffc:	00d5151b          	slliw	a0,a0,0xd
    80003000:	0c2017b7          	lui	a5,0xc201
    80003004:	00a78533          	add	a0,a5,a0
    80003008:	00052023          	sw	zero,0(a0)
    8000300c:	01010113          	addi	sp,sp,16
    80003010:	00008067          	ret

0000000080003014 <plic_claim>:
    80003014:	ff010113          	addi	sp,sp,-16
    80003018:	00813023          	sd	s0,0(sp)
    8000301c:	00113423          	sd	ra,8(sp)
    80003020:	01010413          	addi	s0,sp,16
    80003024:	00000097          	auipc	ra,0x0
    80003028:	9fc080e7          	jalr	-1540(ra) # 80002a20 <cpuid>
    8000302c:	00813083          	ld	ra,8(sp)
    80003030:	00013403          	ld	s0,0(sp)
    80003034:	00d5151b          	slliw	a0,a0,0xd
    80003038:	0c2017b7          	lui	a5,0xc201
    8000303c:	00a78533          	add	a0,a5,a0
    80003040:	00452503          	lw	a0,4(a0)
    80003044:	01010113          	addi	sp,sp,16
    80003048:	00008067          	ret

000000008000304c <plic_complete>:
    8000304c:	fe010113          	addi	sp,sp,-32
    80003050:	00813823          	sd	s0,16(sp)
    80003054:	00913423          	sd	s1,8(sp)
    80003058:	00113c23          	sd	ra,24(sp)
    8000305c:	02010413          	addi	s0,sp,32
    80003060:	00050493          	mv	s1,a0
    80003064:	00000097          	auipc	ra,0x0
    80003068:	9bc080e7          	jalr	-1604(ra) # 80002a20 <cpuid>
    8000306c:	01813083          	ld	ra,24(sp)
    80003070:	01013403          	ld	s0,16(sp)
    80003074:	00d5179b          	slliw	a5,a0,0xd
    80003078:	0c201737          	lui	a4,0xc201
    8000307c:	00f707b3          	add	a5,a4,a5
    80003080:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003084:	00813483          	ld	s1,8(sp)
    80003088:	02010113          	addi	sp,sp,32
    8000308c:	00008067          	ret

0000000080003090 <consolewrite>:
    80003090:	fb010113          	addi	sp,sp,-80
    80003094:	04813023          	sd	s0,64(sp)
    80003098:	04113423          	sd	ra,72(sp)
    8000309c:	02913c23          	sd	s1,56(sp)
    800030a0:	03213823          	sd	s2,48(sp)
    800030a4:	03313423          	sd	s3,40(sp)
    800030a8:	03413023          	sd	s4,32(sp)
    800030ac:	01513c23          	sd	s5,24(sp)
    800030b0:	05010413          	addi	s0,sp,80
    800030b4:	06c05c63          	blez	a2,8000312c <consolewrite+0x9c>
    800030b8:	00060993          	mv	s3,a2
    800030bc:	00050a13          	mv	s4,a0
    800030c0:	00058493          	mv	s1,a1
    800030c4:	00000913          	li	s2,0
    800030c8:	fff00a93          	li	s5,-1
    800030cc:	01c0006f          	j	800030e8 <consolewrite+0x58>
    800030d0:	fbf44503          	lbu	a0,-65(s0)
    800030d4:	0019091b          	addiw	s2,s2,1
    800030d8:	00148493          	addi	s1,s1,1
    800030dc:	00001097          	auipc	ra,0x1
    800030e0:	a9c080e7          	jalr	-1380(ra) # 80003b78 <uartputc>
    800030e4:	03298063          	beq	s3,s2,80003104 <consolewrite+0x74>
    800030e8:	00048613          	mv	a2,s1
    800030ec:	00100693          	li	a3,1
    800030f0:	000a0593          	mv	a1,s4
    800030f4:	fbf40513          	addi	a0,s0,-65
    800030f8:	00000097          	auipc	ra,0x0
    800030fc:	9e0080e7          	jalr	-1568(ra) # 80002ad8 <either_copyin>
    80003100:	fd5518e3          	bne	a0,s5,800030d0 <consolewrite+0x40>
    80003104:	04813083          	ld	ra,72(sp)
    80003108:	04013403          	ld	s0,64(sp)
    8000310c:	03813483          	ld	s1,56(sp)
    80003110:	02813983          	ld	s3,40(sp)
    80003114:	02013a03          	ld	s4,32(sp)
    80003118:	01813a83          	ld	s5,24(sp)
    8000311c:	00090513          	mv	a0,s2
    80003120:	03013903          	ld	s2,48(sp)
    80003124:	05010113          	addi	sp,sp,80
    80003128:	00008067          	ret
    8000312c:	00000913          	li	s2,0
    80003130:	fd5ff06f          	j	80003104 <consolewrite+0x74>

0000000080003134 <consoleread>:
    80003134:	f9010113          	addi	sp,sp,-112
    80003138:	06813023          	sd	s0,96(sp)
    8000313c:	04913c23          	sd	s1,88(sp)
    80003140:	05213823          	sd	s2,80(sp)
    80003144:	05313423          	sd	s3,72(sp)
    80003148:	05413023          	sd	s4,64(sp)
    8000314c:	03513c23          	sd	s5,56(sp)
    80003150:	03613823          	sd	s6,48(sp)
    80003154:	03713423          	sd	s7,40(sp)
    80003158:	03813023          	sd	s8,32(sp)
    8000315c:	06113423          	sd	ra,104(sp)
    80003160:	01913c23          	sd	s9,24(sp)
    80003164:	07010413          	addi	s0,sp,112
    80003168:	00060b93          	mv	s7,a2
    8000316c:	00050913          	mv	s2,a0
    80003170:	00058c13          	mv	s8,a1
    80003174:	00060b1b          	sext.w	s6,a2
    80003178:	00004497          	auipc	s1,0x4
    8000317c:	da048493          	addi	s1,s1,-608 # 80006f18 <cons>
    80003180:	00400993          	li	s3,4
    80003184:	fff00a13          	li	s4,-1
    80003188:	00a00a93          	li	s5,10
    8000318c:	05705e63          	blez	s7,800031e8 <consoleread+0xb4>
    80003190:	09c4a703          	lw	a4,156(s1)
    80003194:	0984a783          	lw	a5,152(s1)
    80003198:	0007071b          	sext.w	a4,a4
    8000319c:	08e78463          	beq	a5,a4,80003224 <consoleread+0xf0>
    800031a0:	07f7f713          	andi	a4,a5,127
    800031a4:	00e48733          	add	a4,s1,a4
    800031a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800031ac:	0017869b          	addiw	a3,a5,1
    800031b0:	08d4ac23          	sw	a3,152(s1)
    800031b4:	00070c9b          	sext.w	s9,a4
    800031b8:	0b370663          	beq	a4,s3,80003264 <consoleread+0x130>
    800031bc:	00100693          	li	a3,1
    800031c0:	f9f40613          	addi	a2,s0,-97
    800031c4:	000c0593          	mv	a1,s8
    800031c8:	00090513          	mv	a0,s2
    800031cc:	f8e40fa3          	sb	a4,-97(s0)
    800031d0:	00000097          	auipc	ra,0x0
    800031d4:	8bc080e7          	jalr	-1860(ra) # 80002a8c <either_copyout>
    800031d8:	01450863          	beq	a0,s4,800031e8 <consoleread+0xb4>
    800031dc:	001c0c13          	addi	s8,s8,1
    800031e0:	fffb8b9b          	addiw	s7,s7,-1
    800031e4:	fb5c94e3          	bne	s9,s5,8000318c <consoleread+0x58>
    800031e8:	000b851b          	sext.w	a0,s7
    800031ec:	06813083          	ld	ra,104(sp)
    800031f0:	06013403          	ld	s0,96(sp)
    800031f4:	05813483          	ld	s1,88(sp)
    800031f8:	05013903          	ld	s2,80(sp)
    800031fc:	04813983          	ld	s3,72(sp)
    80003200:	04013a03          	ld	s4,64(sp)
    80003204:	03813a83          	ld	s5,56(sp)
    80003208:	02813b83          	ld	s7,40(sp)
    8000320c:	02013c03          	ld	s8,32(sp)
    80003210:	01813c83          	ld	s9,24(sp)
    80003214:	40ab053b          	subw	a0,s6,a0
    80003218:	03013b03          	ld	s6,48(sp)
    8000321c:	07010113          	addi	sp,sp,112
    80003220:	00008067          	ret
    80003224:	00001097          	auipc	ra,0x1
    80003228:	1d8080e7          	jalr	472(ra) # 800043fc <push_on>
    8000322c:	0984a703          	lw	a4,152(s1)
    80003230:	09c4a783          	lw	a5,156(s1)
    80003234:	0007879b          	sext.w	a5,a5
    80003238:	fef70ce3          	beq	a4,a5,80003230 <consoleread+0xfc>
    8000323c:	00001097          	auipc	ra,0x1
    80003240:	234080e7          	jalr	564(ra) # 80004470 <pop_on>
    80003244:	0984a783          	lw	a5,152(s1)
    80003248:	07f7f713          	andi	a4,a5,127
    8000324c:	00e48733          	add	a4,s1,a4
    80003250:	01874703          	lbu	a4,24(a4)
    80003254:	0017869b          	addiw	a3,a5,1
    80003258:	08d4ac23          	sw	a3,152(s1)
    8000325c:	00070c9b          	sext.w	s9,a4
    80003260:	f5371ee3          	bne	a4,s3,800031bc <consoleread+0x88>
    80003264:	000b851b          	sext.w	a0,s7
    80003268:	f96bf2e3          	bgeu	s7,s6,800031ec <consoleread+0xb8>
    8000326c:	08f4ac23          	sw	a5,152(s1)
    80003270:	f7dff06f          	j	800031ec <consoleread+0xb8>

0000000080003274 <consputc>:
    80003274:	10000793          	li	a5,256
    80003278:	00f50663          	beq	a0,a5,80003284 <consputc+0x10>
    8000327c:	00001317          	auipc	t1,0x1
    80003280:	9f430067          	jr	-1548(t1) # 80003c70 <uartputc_sync>
    80003284:	ff010113          	addi	sp,sp,-16
    80003288:	00113423          	sd	ra,8(sp)
    8000328c:	00813023          	sd	s0,0(sp)
    80003290:	01010413          	addi	s0,sp,16
    80003294:	00800513          	li	a0,8
    80003298:	00001097          	auipc	ra,0x1
    8000329c:	9d8080e7          	jalr	-1576(ra) # 80003c70 <uartputc_sync>
    800032a0:	02000513          	li	a0,32
    800032a4:	00001097          	auipc	ra,0x1
    800032a8:	9cc080e7          	jalr	-1588(ra) # 80003c70 <uartputc_sync>
    800032ac:	00013403          	ld	s0,0(sp)
    800032b0:	00813083          	ld	ra,8(sp)
    800032b4:	00800513          	li	a0,8
    800032b8:	01010113          	addi	sp,sp,16
    800032bc:	00001317          	auipc	t1,0x1
    800032c0:	9b430067          	jr	-1612(t1) # 80003c70 <uartputc_sync>

00000000800032c4 <consoleintr>:
    800032c4:	fe010113          	addi	sp,sp,-32
    800032c8:	00813823          	sd	s0,16(sp)
    800032cc:	00913423          	sd	s1,8(sp)
    800032d0:	01213023          	sd	s2,0(sp)
    800032d4:	00113c23          	sd	ra,24(sp)
    800032d8:	02010413          	addi	s0,sp,32
    800032dc:	00004917          	auipc	s2,0x4
    800032e0:	c3c90913          	addi	s2,s2,-964 # 80006f18 <cons>
    800032e4:	00050493          	mv	s1,a0
    800032e8:	00090513          	mv	a0,s2
    800032ec:	00001097          	auipc	ra,0x1
    800032f0:	e40080e7          	jalr	-448(ra) # 8000412c <acquire>
    800032f4:	02048c63          	beqz	s1,8000332c <consoleintr+0x68>
    800032f8:	0a092783          	lw	a5,160(s2)
    800032fc:	09892703          	lw	a4,152(s2)
    80003300:	07f00693          	li	a3,127
    80003304:	40e7873b          	subw	a4,a5,a4
    80003308:	02e6e263          	bltu	a3,a4,8000332c <consoleintr+0x68>
    8000330c:	00d00713          	li	a4,13
    80003310:	04e48063          	beq	s1,a4,80003350 <consoleintr+0x8c>
    80003314:	07f7f713          	andi	a4,a5,127
    80003318:	00e90733          	add	a4,s2,a4
    8000331c:	0017879b          	addiw	a5,a5,1
    80003320:	0af92023          	sw	a5,160(s2)
    80003324:	00970c23          	sb	s1,24(a4)
    80003328:	08f92e23          	sw	a5,156(s2)
    8000332c:	01013403          	ld	s0,16(sp)
    80003330:	01813083          	ld	ra,24(sp)
    80003334:	00813483          	ld	s1,8(sp)
    80003338:	00013903          	ld	s2,0(sp)
    8000333c:	00004517          	auipc	a0,0x4
    80003340:	bdc50513          	addi	a0,a0,-1060 # 80006f18 <cons>
    80003344:	02010113          	addi	sp,sp,32
    80003348:	00001317          	auipc	t1,0x1
    8000334c:	eb030067          	jr	-336(t1) # 800041f8 <release>
    80003350:	00a00493          	li	s1,10
    80003354:	fc1ff06f          	j	80003314 <consoleintr+0x50>

0000000080003358 <consoleinit>:
    80003358:	fe010113          	addi	sp,sp,-32
    8000335c:	00113c23          	sd	ra,24(sp)
    80003360:	00813823          	sd	s0,16(sp)
    80003364:	00913423          	sd	s1,8(sp)
    80003368:	02010413          	addi	s0,sp,32
    8000336c:	00004497          	auipc	s1,0x4
    80003370:	bac48493          	addi	s1,s1,-1108 # 80006f18 <cons>
    80003374:	00048513          	mv	a0,s1
    80003378:	00002597          	auipc	a1,0x2
    8000337c:	eb058593          	addi	a1,a1,-336 # 80005228 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80003380:	00001097          	auipc	ra,0x1
    80003384:	d88080e7          	jalr	-632(ra) # 80004108 <initlock>
    80003388:	00000097          	auipc	ra,0x0
    8000338c:	7ac080e7          	jalr	1964(ra) # 80003b34 <uartinit>
    80003390:	01813083          	ld	ra,24(sp)
    80003394:	01013403          	ld	s0,16(sp)
    80003398:	00000797          	auipc	a5,0x0
    8000339c:	d9c78793          	addi	a5,a5,-612 # 80003134 <consoleread>
    800033a0:	0af4bc23          	sd	a5,184(s1)
    800033a4:	00000797          	auipc	a5,0x0
    800033a8:	cec78793          	addi	a5,a5,-788 # 80003090 <consolewrite>
    800033ac:	0cf4b023          	sd	a5,192(s1)
    800033b0:	00813483          	ld	s1,8(sp)
    800033b4:	02010113          	addi	sp,sp,32
    800033b8:	00008067          	ret

00000000800033bc <console_read>:
    800033bc:	ff010113          	addi	sp,sp,-16
    800033c0:	00813423          	sd	s0,8(sp)
    800033c4:	01010413          	addi	s0,sp,16
    800033c8:	00813403          	ld	s0,8(sp)
    800033cc:	00004317          	auipc	t1,0x4
    800033d0:	c0433303          	ld	t1,-1020(t1) # 80006fd0 <devsw+0x10>
    800033d4:	01010113          	addi	sp,sp,16
    800033d8:	00030067          	jr	t1

00000000800033dc <console_write>:
    800033dc:	ff010113          	addi	sp,sp,-16
    800033e0:	00813423          	sd	s0,8(sp)
    800033e4:	01010413          	addi	s0,sp,16
    800033e8:	00813403          	ld	s0,8(sp)
    800033ec:	00004317          	auipc	t1,0x4
    800033f0:	bec33303          	ld	t1,-1044(t1) # 80006fd8 <devsw+0x18>
    800033f4:	01010113          	addi	sp,sp,16
    800033f8:	00030067          	jr	t1

00000000800033fc <panic>:
    800033fc:	fe010113          	addi	sp,sp,-32
    80003400:	00113c23          	sd	ra,24(sp)
    80003404:	00813823          	sd	s0,16(sp)
    80003408:	00913423          	sd	s1,8(sp)
    8000340c:	02010413          	addi	s0,sp,32
    80003410:	00050493          	mv	s1,a0
    80003414:	00002517          	auipc	a0,0x2
    80003418:	e1c50513          	addi	a0,a0,-484 # 80005230 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    8000341c:	00004797          	auipc	a5,0x4
    80003420:	c407ae23          	sw	zero,-932(a5) # 80007078 <pr+0x18>
    80003424:	00000097          	auipc	ra,0x0
    80003428:	034080e7          	jalr	52(ra) # 80003458 <__printf>
    8000342c:	00048513          	mv	a0,s1
    80003430:	00000097          	auipc	ra,0x0
    80003434:	028080e7          	jalr	40(ra) # 80003458 <__printf>
    80003438:	00002517          	auipc	a0,0x2
    8000343c:	dd850513          	addi	a0,a0,-552 # 80005210 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80003440:	00000097          	auipc	ra,0x0
    80003444:	018080e7          	jalr	24(ra) # 80003458 <__printf>
    80003448:	00100793          	li	a5,1
    8000344c:	00003717          	auipc	a4,0x3
    80003450:	98f72e23          	sw	a5,-1636(a4) # 80005de8 <panicked>
    80003454:	0000006f          	j	80003454 <panic+0x58>

0000000080003458 <__printf>:
    80003458:	f3010113          	addi	sp,sp,-208
    8000345c:	08813023          	sd	s0,128(sp)
    80003460:	07313423          	sd	s3,104(sp)
    80003464:	09010413          	addi	s0,sp,144
    80003468:	05813023          	sd	s8,64(sp)
    8000346c:	08113423          	sd	ra,136(sp)
    80003470:	06913c23          	sd	s1,120(sp)
    80003474:	07213823          	sd	s2,112(sp)
    80003478:	07413023          	sd	s4,96(sp)
    8000347c:	05513c23          	sd	s5,88(sp)
    80003480:	05613823          	sd	s6,80(sp)
    80003484:	05713423          	sd	s7,72(sp)
    80003488:	03913c23          	sd	s9,56(sp)
    8000348c:	03a13823          	sd	s10,48(sp)
    80003490:	03b13423          	sd	s11,40(sp)
    80003494:	00004317          	auipc	t1,0x4
    80003498:	bcc30313          	addi	t1,t1,-1076 # 80007060 <pr>
    8000349c:	01832c03          	lw	s8,24(t1)
    800034a0:	00b43423          	sd	a1,8(s0)
    800034a4:	00c43823          	sd	a2,16(s0)
    800034a8:	00d43c23          	sd	a3,24(s0)
    800034ac:	02e43023          	sd	a4,32(s0)
    800034b0:	02f43423          	sd	a5,40(s0)
    800034b4:	03043823          	sd	a6,48(s0)
    800034b8:	03143c23          	sd	a7,56(s0)
    800034bc:	00050993          	mv	s3,a0
    800034c0:	4a0c1663          	bnez	s8,8000396c <__printf+0x514>
    800034c4:	60098c63          	beqz	s3,80003adc <__printf+0x684>
    800034c8:	0009c503          	lbu	a0,0(s3)
    800034cc:	00840793          	addi	a5,s0,8
    800034d0:	f6f43c23          	sd	a5,-136(s0)
    800034d4:	00000493          	li	s1,0
    800034d8:	22050063          	beqz	a0,800036f8 <__printf+0x2a0>
    800034dc:	00002a37          	lui	s4,0x2
    800034e0:	00018ab7          	lui	s5,0x18
    800034e4:	000f4b37          	lui	s6,0xf4
    800034e8:	00989bb7          	lui	s7,0x989
    800034ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800034f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800034f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800034f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800034fc:	00148c9b          	addiw	s9,s1,1
    80003500:	02500793          	li	a5,37
    80003504:	01998933          	add	s2,s3,s9
    80003508:	38f51263          	bne	a0,a5,8000388c <__printf+0x434>
    8000350c:	00094783          	lbu	a5,0(s2)
    80003510:	00078c9b          	sext.w	s9,a5
    80003514:	1e078263          	beqz	a5,800036f8 <__printf+0x2a0>
    80003518:	0024849b          	addiw	s1,s1,2
    8000351c:	07000713          	li	a4,112
    80003520:	00998933          	add	s2,s3,s1
    80003524:	38e78a63          	beq	a5,a4,800038b8 <__printf+0x460>
    80003528:	20f76863          	bltu	a4,a5,80003738 <__printf+0x2e0>
    8000352c:	42a78863          	beq	a5,a0,8000395c <__printf+0x504>
    80003530:	06400713          	li	a4,100
    80003534:	40e79663          	bne	a5,a4,80003940 <__printf+0x4e8>
    80003538:	f7843783          	ld	a5,-136(s0)
    8000353c:	0007a603          	lw	a2,0(a5)
    80003540:	00878793          	addi	a5,a5,8
    80003544:	f6f43c23          	sd	a5,-136(s0)
    80003548:	42064a63          	bltz	a2,8000397c <__printf+0x524>
    8000354c:	00a00713          	li	a4,10
    80003550:	02e677bb          	remuw	a5,a2,a4
    80003554:	00002d97          	auipc	s11,0x2
    80003558:	d04d8d93          	addi	s11,s11,-764 # 80005258 <digits>
    8000355c:	00900593          	li	a1,9
    80003560:	0006051b          	sext.w	a0,a2
    80003564:	00000c93          	li	s9,0
    80003568:	02079793          	slli	a5,a5,0x20
    8000356c:	0207d793          	srli	a5,a5,0x20
    80003570:	00fd87b3          	add	a5,s11,a5
    80003574:	0007c783          	lbu	a5,0(a5)
    80003578:	02e656bb          	divuw	a3,a2,a4
    8000357c:	f8f40023          	sb	a5,-128(s0)
    80003580:	14c5d863          	bge	a1,a2,800036d0 <__printf+0x278>
    80003584:	06300593          	li	a1,99
    80003588:	00100c93          	li	s9,1
    8000358c:	02e6f7bb          	remuw	a5,a3,a4
    80003590:	02079793          	slli	a5,a5,0x20
    80003594:	0207d793          	srli	a5,a5,0x20
    80003598:	00fd87b3          	add	a5,s11,a5
    8000359c:	0007c783          	lbu	a5,0(a5)
    800035a0:	02e6d73b          	divuw	a4,a3,a4
    800035a4:	f8f400a3          	sb	a5,-127(s0)
    800035a8:	12a5f463          	bgeu	a1,a0,800036d0 <__printf+0x278>
    800035ac:	00a00693          	li	a3,10
    800035b0:	00900593          	li	a1,9
    800035b4:	02d777bb          	remuw	a5,a4,a3
    800035b8:	02079793          	slli	a5,a5,0x20
    800035bc:	0207d793          	srli	a5,a5,0x20
    800035c0:	00fd87b3          	add	a5,s11,a5
    800035c4:	0007c503          	lbu	a0,0(a5)
    800035c8:	02d757bb          	divuw	a5,a4,a3
    800035cc:	f8a40123          	sb	a0,-126(s0)
    800035d0:	48e5f263          	bgeu	a1,a4,80003a54 <__printf+0x5fc>
    800035d4:	06300513          	li	a0,99
    800035d8:	02d7f5bb          	remuw	a1,a5,a3
    800035dc:	02059593          	slli	a1,a1,0x20
    800035e0:	0205d593          	srli	a1,a1,0x20
    800035e4:	00bd85b3          	add	a1,s11,a1
    800035e8:	0005c583          	lbu	a1,0(a1)
    800035ec:	02d7d7bb          	divuw	a5,a5,a3
    800035f0:	f8b401a3          	sb	a1,-125(s0)
    800035f4:	48e57263          	bgeu	a0,a4,80003a78 <__printf+0x620>
    800035f8:	3e700513          	li	a0,999
    800035fc:	02d7f5bb          	remuw	a1,a5,a3
    80003600:	02059593          	slli	a1,a1,0x20
    80003604:	0205d593          	srli	a1,a1,0x20
    80003608:	00bd85b3          	add	a1,s11,a1
    8000360c:	0005c583          	lbu	a1,0(a1)
    80003610:	02d7d7bb          	divuw	a5,a5,a3
    80003614:	f8b40223          	sb	a1,-124(s0)
    80003618:	46e57663          	bgeu	a0,a4,80003a84 <__printf+0x62c>
    8000361c:	02d7f5bb          	remuw	a1,a5,a3
    80003620:	02059593          	slli	a1,a1,0x20
    80003624:	0205d593          	srli	a1,a1,0x20
    80003628:	00bd85b3          	add	a1,s11,a1
    8000362c:	0005c583          	lbu	a1,0(a1)
    80003630:	02d7d7bb          	divuw	a5,a5,a3
    80003634:	f8b402a3          	sb	a1,-123(s0)
    80003638:	46ea7863          	bgeu	s4,a4,80003aa8 <__printf+0x650>
    8000363c:	02d7f5bb          	remuw	a1,a5,a3
    80003640:	02059593          	slli	a1,a1,0x20
    80003644:	0205d593          	srli	a1,a1,0x20
    80003648:	00bd85b3          	add	a1,s11,a1
    8000364c:	0005c583          	lbu	a1,0(a1)
    80003650:	02d7d7bb          	divuw	a5,a5,a3
    80003654:	f8b40323          	sb	a1,-122(s0)
    80003658:	3eeaf863          	bgeu	s5,a4,80003a48 <__printf+0x5f0>
    8000365c:	02d7f5bb          	remuw	a1,a5,a3
    80003660:	02059593          	slli	a1,a1,0x20
    80003664:	0205d593          	srli	a1,a1,0x20
    80003668:	00bd85b3          	add	a1,s11,a1
    8000366c:	0005c583          	lbu	a1,0(a1)
    80003670:	02d7d7bb          	divuw	a5,a5,a3
    80003674:	f8b403a3          	sb	a1,-121(s0)
    80003678:	42eb7e63          	bgeu	s6,a4,80003ab4 <__printf+0x65c>
    8000367c:	02d7f5bb          	remuw	a1,a5,a3
    80003680:	02059593          	slli	a1,a1,0x20
    80003684:	0205d593          	srli	a1,a1,0x20
    80003688:	00bd85b3          	add	a1,s11,a1
    8000368c:	0005c583          	lbu	a1,0(a1)
    80003690:	02d7d7bb          	divuw	a5,a5,a3
    80003694:	f8b40423          	sb	a1,-120(s0)
    80003698:	42ebfc63          	bgeu	s7,a4,80003ad0 <__printf+0x678>
    8000369c:	02079793          	slli	a5,a5,0x20
    800036a0:	0207d793          	srli	a5,a5,0x20
    800036a4:	00fd8db3          	add	s11,s11,a5
    800036a8:	000dc703          	lbu	a4,0(s11)
    800036ac:	00a00793          	li	a5,10
    800036b0:	00900c93          	li	s9,9
    800036b4:	f8e404a3          	sb	a4,-119(s0)
    800036b8:	00065c63          	bgez	a2,800036d0 <__printf+0x278>
    800036bc:	f9040713          	addi	a4,s0,-112
    800036c0:	00f70733          	add	a4,a4,a5
    800036c4:	02d00693          	li	a3,45
    800036c8:	fed70823          	sb	a3,-16(a4)
    800036cc:	00078c93          	mv	s9,a5
    800036d0:	f8040793          	addi	a5,s0,-128
    800036d4:	01978cb3          	add	s9,a5,s9
    800036d8:	f7f40d13          	addi	s10,s0,-129
    800036dc:	000cc503          	lbu	a0,0(s9)
    800036e0:	fffc8c93          	addi	s9,s9,-1
    800036e4:	00000097          	auipc	ra,0x0
    800036e8:	b90080e7          	jalr	-1136(ra) # 80003274 <consputc>
    800036ec:	ffac98e3          	bne	s9,s10,800036dc <__printf+0x284>
    800036f0:	00094503          	lbu	a0,0(s2)
    800036f4:	e00514e3          	bnez	a0,800034fc <__printf+0xa4>
    800036f8:	1a0c1663          	bnez	s8,800038a4 <__printf+0x44c>
    800036fc:	08813083          	ld	ra,136(sp)
    80003700:	08013403          	ld	s0,128(sp)
    80003704:	07813483          	ld	s1,120(sp)
    80003708:	07013903          	ld	s2,112(sp)
    8000370c:	06813983          	ld	s3,104(sp)
    80003710:	06013a03          	ld	s4,96(sp)
    80003714:	05813a83          	ld	s5,88(sp)
    80003718:	05013b03          	ld	s6,80(sp)
    8000371c:	04813b83          	ld	s7,72(sp)
    80003720:	04013c03          	ld	s8,64(sp)
    80003724:	03813c83          	ld	s9,56(sp)
    80003728:	03013d03          	ld	s10,48(sp)
    8000372c:	02813d83          	ld	s11,40(sp)
    80003730:	0d010113          	addi	sp,sp,208
    80003734:	00008067          	ret
    80003738:	07300713          	li	a4,115
    8000373c:	1ce78a63          	beq	a5,a4,80003910 <__printf+0x4b8>
    80003740:	07800713          	li	a4,120
    80003744:	1ee79e63          	bne	a5,a4,80003940 <__printf+0x4e8>
    80003748:	f7843783          	ld	a5,-136(s0)
    8000374c:	0007a703          	lw	a4,0(a5)
    80003750:	00878793          	addi	a5,a5,8
    80003754:	f6f43c23          	sd	a5,-136(s0)
    80003758:	28074263          	bltz	a4,800039dc <__printf+0x584>
    8000375c:	00002d97          	auipc	s11,0x2
    80003760:	afcd8d93          	addi	s11,s11,-1284 # 80005258 <digits>
    80003764:	00f77793          	andi	a5,a4,15
    80003768:	00fd87b3          	add	a5,s11,a5
    8000376c:	0007c683          	lbu	a3,0(a5)
    80003770:	00f00613          	li	a2,15
    80003774:	0007079b          	sext.w	a5,a4
    80003778:	f8d40023          	sb	a3,-128(s0)
    8000377c:	0047559b          	srliw	a1,a4,0x4
    80003780:	0047569b          	srliw	a3,a4,0x4
    80003784:	00000c93          	li	s9,0
    80003788:	0ee65063          	bge	a2,a4,80003868 <__printf+0x410>
    8000378c:	00f6f693          	andi	a3,a3,15
    80003790:	00dd86b3          	add	a3,s11,a3
    80003794:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003798:	0087d79b          	srliw	a5,a5,0x8
    8000379c:	00100c93          	li	s9,1
    800037a0:	f8d400a3          	sb	a3,-127(s0)
    800037a4:	0cb67263          	bgeu	a2,a1,80003868 <__printf+0x410>
    800037a8:	00f7f693          	andi	a3,a5,15
    800037ac:	00dd86b3          	add	a3,s11,a3
    800037b0:	0006c583          	lbu	a1,0(a3)
    800037b4:	00f00613          	li	a2,15
    800037b8:	0047d69b          	srliw	a3,a5,0x4
    800037bc:	f8b40123          	sb	a1,-126(s0)
    800037c0:	0047d593          	srli	a1,a5,0x4
    800037c4:	28f67e63          	bgeu	a2,a5,80003a60 <__printf+0x608>
    800037c8:	00f6f693          	andi	a3,a3,15
    800037cc:	00dd86b3          	add	a3,s11,a3
    800037d0:	0006c503          	lbu	a0,0(a3)
    800037d4:	0087d813          	srli	a6,a5,0x8
    800037d8:	0087d69b          	srliw	a3,a5,0x8
    800037dc:	f8a401a3          	sb	a0,-125(s0)
    800037e0:	28b67663          	bgeu	a2,a1,80003a6c <__printf+0x614>
    800037e4:	00f6f693          	andi	a3,a3,15
    800037e8:	00dd86b3          	add	a3,s11,a3
    800037ec:	0006c583          	lbu	a1,0(a3)
    800037f0:	00c7d513          	srli	a0,a5,0xc
    800037f4:	00c7d69b          	srliw	a3,a5,0xc
    800037f8:	f8b40223          	sb	a1,-124(s0)
    800037fc:	29067a63          	bgeu	a2,a6,80003a90 <__printf+0x638>
    80003800:	00f6f693          	andi	a3,a3,15
    80003804:	00dd86b3          	add	a3,s11,a3
    80003808:	0006c583          	lbu	a1,0(a3)
    8000380c:	0107d813          	srli	a6,a5,0x10
    80003810:	0107d69b          	srliw	a3,a5,0x10
    80003814:	f8b402a3          	sb	a1,-123(s0)
    80003818:	28a67263          	bgeu	a2,a0,80003a9c <__printf+0x644>
    8000381c:	00f6f693          	andi	a3,a3,15
    80003820:	00dd86b3          	add	a3,s11,a3
    80003824:	0006c683          	lbu	a3,0(a3)
    80003828:	0147d79b          	srliw	a5,a5,0x14
    8000382c:	f8d40323          	sb	a3,-122(s0)
    80003830:	21067663          	bgeu	a2,a6,80003a3c <__printf+0x5e4>
    80003834:	02079793          	slli	a5,a5,0x20
    80003838:	0207d793          	srli	a5,a5,0x20
    8000383c:	00fd8db3          	add	s11,s11,a5
    80003840:	000dc683          	lbu	a3,0(s11)
    80003844:	00800793          	li	a5,8
    80003848:	00700c93          	li	s9,7
    8000384c:	f8d403a3          	sb	a3,-121(s0)
    80003850:	00075c63          	bgez	a4,80003868 <__printf+0x410>
    80003854:	f9040713          	addi	a4,s0,-112
    80003858:	00f70733          	add	a4,a4,a5
    8000385c:	02d00693          	li	a3,45
    80003860:	fed70823          	sb	a3,-16(a4)
    80003864:	00078c93          	mv	s9,a5
    80003868:	f8040793          	addi	a5,s0,-128
    8000386c:	01978cb3          	add	s9,a5,s9
    80003870:	f7f40d13          	addi	s10,s0,-129
    80003874:	000cc503          	lbu	a0,0(s9)
    80003878:	fffc8c93          	addi	s9,s9,-1
    8000387c:	00000097          	auipc	ra,0x0
    80003880:	9f8080e7          	jalr	-1544(ra) # 80003274 <consputc>
    80003884:	ff9d18e3          	bne	s10,s9,80003874 <__printf+0x41c>
    80003888:	0100006f          	j	80003898 <__printf+0x440>
    8000388c:	00000097          	auipc	ra,0x0
    80003890:	9e8080e7          	jalr	-1560(ra) # 80003274 <consputc>
    80003894:	000c8493          	mv	s1,s9
    80003898:	00094503          	lbu	a0,0(s2)
    8000389c:	c60510e3          	bnez	a0,800034fc <__printf+0xa4>
    800038a0:	e40c0ee3          	beqz	s8,800036fc <__printf+0x2a4>
    800038a4:	00003517          	auipc	a0,0x3
    800038a8:	7bc50513          	addi	a0,a0,1980 # 80007060 <pr>
    800038ac:	00001097          	auipc	ra,0x1
    800038b0:	94c080e7          	jalr	-1716(ra) # 800041f8 <release>
    800038b4:	e49ff06f          	j	800036fc <__printf+0x2a4>
    800038b8:	f7843783          	ld	a5,-136(s0)
    800038bc:	03000513          	li	a0,48
    800038c0:	01000d13          	li	s10,16
    800038c4:	00878713          	addi	a4,a5,8
    800038c8:	0007bc83          	ld	s9,0(a5)
    800038cc:	f6e43c23          	sd	a4,-136(s0)
    800038d0:	00000097          	auipc	ra,0x0
    800038d4:	9a4080e7          	jalr	-1628(ra) # 80003274 <consputc>
    800038d8:	07800513          	li	a0,120
    800038dc:	00000097          	auipc	ra,0x0
    800038e0:	998080e7          	jalr	-1640(ra) # 80003274 <consputc>
    800038e4:	00002d97          	auipc	s11,0x2
    800038e8:	974d8d93          	addi	s11,s11,-1676 # 80005258 <digits>
    800038ec:	03ccd793          	srli	a5,s9,0x3c
    800038f0:	00fd87b3          	add	a5,s11,a5
    800038f4:	0007c503          	lbu	a0,0(a5)
    800038f8:	fffd0d1b          	addiw	s10,s10,-1
    800038fc:	004c9c93          	slli	s9,s9,0x4
    80003900:	00000097          	auipc	ra,0x0
    80003904:	974080e7          	jalr	-1676(ra) # 80003274 <consputc>
    80003908:	fe0d12e3          	bnez	s10,800038ec <__printf+0x494>
    8000390c:	f8dff06f          	j	80003898 <__printf+0x440>
    80003910:	f7843783          	ld	a5,-136(s0)
    80003914:	0007bc83          	ld	s9,0(a5)
    80003918:	00878793          	addi	a5,a5,8
    8000391c:	f6f43c23          	sd	a5,-136(s0)
    80003920:	000c9a63          	bnez	s9,80003934 <__printf+0x4dc>
    80003924:	1080006f          	j	80003a2c <__printf+0x5d4>
    80003928:	001c8c93          	addi	s9,s9,1
    8000392c:	00000097          	auipc	ra,0x0
    80003930:	948080e7          	jalr	-1720(ra) # 80003274 <consputc>
    80003934:	000cc503          	lbu	a0,0(s9)
    80003938:	fe0518e3          	bnez	a0,80003928 <__printf+0x4d0>
    8000393c:	f5dff06f          	j	80003898 <__printf+0x440>
    80003940:	02500513          	li	a0,37
    80003944:	00000097          	auipc	ra,0x0
    80003948:	930080e7          	jalr	-1744(ra) # 80003274 <consputc>
    8000394c:	000c8513          	mv	a0,s9
    80003950:	00000097          	auipc	ra,0x0
    80003954:	924080e7          	jalr	-1756(ra) # 80003274 <consputc>
    80003958:	f41ff06f          	j	80003898 <__printf+0x440>
    8000395c:	02500513          	li	a0,37
    80003960:	00000097          	auipc	ra,0x0
    80003964:	914080e7          	jalr	-1772(ra) # 80003274 <consputc>
    80003968:	f31ff06f          	j	80003898 <__printf+0x440>
    8000396c:	00030513          	mv	a0,t1
    80003970:	00000097          	auipc	ra,0x0
    80003974:	7bc080e7          	jalr	1980(ra) # 8000412c <acquire>
    80003978:	b4dff06f          	j	800034c4 <__printf+0x6c>
    8000397c:	40c0053b          	negw	a0,a2
    80003980:	00a00713          	li	a4,10
    80003984:	02e576bb          	remuw	a3,a0,a4
    80003988:	00002d97          	auipc	s11,0x2
    8000398c:	8d0d8d93          	addi	s11,s11,-1840 # 80005258 <digits>
    80003990:	ff700593          	li	a1,-9
    80003994:	02069693          	slli	a3,a3,0x20
    80003998:	0206d693          	srli	a3,a3,0x20
    8000399c:	00dd86b3          	add	a3,s11,a3
    800039a0:	0006c683          	lbu	a3,0(a3)
    800039a4:	02e557bb          	divuw	a5,a0,a4
    800039a8:	f8d40023          	sb	a3,-128(s0)
    800039ac:	10b65e63          	bge	a2,a1,80003ac8 <__printf+0x670>
    800039b0:	06300593          	li	a1,99
    800039b4:	02e7f6bb          	remuw	a3,a5,a4
    800039b8:	02069693          	slli	a3,a3,0x20
    800039bc:	0206d693          	srli	a3,a3,0x20
    800039c0:	00dd86b3          	add	a3,s11,a3
    800039c4:	0006c683          	lbu	a3,0(a3)
    800039c8:	02e7d73b          	divuw	a4,a5,a4
    800039cc:	00200793          	li	a5,2
    800039d0:	f8d400a3          	sb	a3,-127(s0)
    800039d4:	bca5ece3          	bltu	a1,a0,800035ac <__printf+0x154>
    800039d8:	ce5ff06f          	j	800036bc <__printf+0x264>
    800039dc:	40e007bb          	negw	a5,a4
    800039e0:	00002d97          	auipc	s11,0x2
    800039e4:	878d8d93          	addi	s11,s11,-1928 # 80005258 <digits>
    800039e8:	00f7f693          	andi	a3,a5,15
    800039ec:	00dd86b3          	add	a3,s11,a3
    800039f0:	0006c583          	lbu	a1,0(a3)
    800039f4:	ff100613          	li	a2,-15
    800039f8:	0047d69b          	srliw	a3,a5,0x4
    800039fc:	f8b40023          	sb	a1,-128(s0)
    80003a00:	0047d59b          	srliw	a1,a5,0x4
    80003a04:	0ac75e63          	bge	a4,a2,80003ac0 <__printf+0x668>
    80003a08:	00f6f693          	andi	a3,a3,15
    80003a0c:	00dd86b3          	add	a3,s11,a3
    80003a10:	0006c603          	lbu	a2,0(a3)
    80003a14:	00f00693          	li	a3,15
    80003a18:	0087d79b          	srliw	a5,a5,0x8
    80003a1c:	f8c400a3          	sb	a2,-127(s0)
    80003a20:	d8b6e4e3          	bltu	a3,a1,800037a8 <__printf+0x350>
    80003a24:	00200793          	li	a5,2
    80003a28:	e2dff06f          	j	80003854 <__printf+0x3fc>
    80003a2c:	00002c97          	auipc	s9,0x2
    80003a30:	80cc8c93          	addi	s9,s9,-2036 # 80005238 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80003a34:	02800513          	li	a0,40
    80003a38:	ef1ff06f          	j	80003928 <__printf+0x4d0>
    80003a3c:	00700793          	li	a5,7
    80003a40:	00600c93          	li	s9,6
    80003a44:	e0dff06f          	j	80003850 <__printf+0x3f8>
    80003a48:	00700793          	li	a5,7
    80003a4c:	00600c93          	li	s9,6
    80003a50:	c69ff06f          	j	800036b8 <__printf+0x260>
    80003a54:	00300793          	li	a5,3
    80003a58:	00200c93          	li	s9,2
    80003a5c:	c5dff06f          	j	800036b8 <__printf+0x260>
    80003a60:	00300793          	li	a5,3
    80003a64:	00200c93          	li	s9,2
    80003a68:	de9ff06f          	j	80003850 <__printf+0x3f8>
    80003a6c:	00400793          	li	a5,4
    80003a70:	00300c93          	li	s9,3
    80003a74:	dddff06f          	j	80003850 <__printf+0x3f8>
    80003a78:	00400793          	li	a5,4
    80003a7c:	00300c93          	li	s9,3
    80003a80:	c39ff06f          	j	800036b8 <__printf+0x260>
    80003a84:	00500793          	li	a5,5
    80003a88:	00400c93          	li	s9,4
    80003a8c:	c2dff06f          	j	800036b8 <__printf+0x260>
    80003a90:	00500793          	li	a5,5
    80003a94:	00400c93          	li	s9,4
    80003a98:	db9ff06f          	j	80003850 <__printf+0x3f8>
    80003a9c:	00600793          	li	a5,6
    80003aa0:	00500c93          	li	s9,5
    80003aa4:	dadff06f          	j	80003850 <__printf+0x3f8>
    80003aa8:	00600793          	li	a5,6
    80003aac:	00500c93          	li	s9,5
    80003ab0:	c09ff06f          	j	800036b8 <__printf+0x260>
    80003ab4:	00800793          	li	a5,8
    80003ab8:	00700c93          	li	s9,7
    80003abc:	bfdff06f          	j	800036b8 <__printf+0x260>
    80003ac0:	00100793          	li	a5,1
    80003ac4:	d91ff06f          	j	80003854 <__printf+0x3fc>
    80003ac8:	00100793          	li	a5,1
    80003acc:	bf1ff06f          	j	800036bc <__printf+0x264>
    80003ad0:	00900793          	li	a5,9
    80003ad4:	00800c93          	li	s9,8
    80003ad8:	be1ff06f          	j	800036b8 <__printf+0x260>
    80003adc:	00001517          	auipc	a0,0x1
    80003ae0:	76450513          	addi	a0,a0,1892 # 80005240 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80003ae4:	00000097          	auipc	ra,0x0
    80003ae8:	918080e7          	jalr	-1768(ra) # 800033fc <panic>

0000000080003aec <printfinit>:
    80003aec:	fe010113          	addi	sp,sp,-32
    80003af0:	00813823          	sd	s0,16(sp)
    80003af4:	00913423          	sd	s1,8(sp)
    80003af8:	00113c23          	sd	ra,24(sp)
    80003afc:	02010413          	addi	s0,sp,32
    80003b00:	00003497          	auipc	s1,0x3
    80003b04:	56048493          	addi	s1,s1,1376 # 80007060 <pr>
    80003b08:	00048513          	mv	a0,s1
    80003b0c:	00001597          	auipc	a1,0x1
    80003b10:	74458593          	addi	a1,a1,1860 # 80005250 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80003b14:	00000097          	auipc	ra,0x0
    80003b18:	5f4080e7          	jalr	1524(ra) # 80004108 <initlock>
    80003b1c:	01813083          	ld	ra,24(sp)
    80003b20:	01013403          	ld	s0,16(sp)
    80003b24:	0004ac23          	sw	zero,24(s1)
    80003b28:	00813483          	ld	s1,8(sp)
    80003b2c:	02010113          	addi	sp,sp,32
    80003b30:	00008067          	ret

0000000080003b34 <uartinit>:
    80003b34:	ff010113          	addi	sp,sp,-16
    80003b38:	00813423          	sd	s0,8(sp)
    80003b3c:	01010413          	addi	s0,sp,16
    80003b40:	100007b7          	lui	a5,0x10000
    80003b44:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003b48:	f8000713          	li	a4,-128
    80003b4c:	00e781a3          	sb	a4,3(a5)
    80003b50:	00300713          	li	a4,3
    80003b54:	00e78023          	sb	a4,0(a5)
    80003b58:	000780a3          	sb	zero,1(a5)
    80003b5c:	00e781a3          	sb	a4,3(a5)
    80003b60:	00700693          	li	a3,7
    80003b64:	00d78123          	sb	a3,2(a5)
    80003b68:	00e780a3          	sb	a4,1(a5)
    80003b6c:	00813403          	ld	s0,8(sp)
    80003b70:	01010113          	addi	sp,sp,16
    80003b74:	00008067          	ret

0000000080003b78 <uartputc>:
    80003b78:	00002797          	auipc	a5,0x2
    80003b7c:	2707a783          	lw	a5,624(a5) # 80005de8 <panicked>
    80003b80:	00078463          	beqz	a5,80003b88 <uartputc+0x10>
    80003b84:	0000006f          	j	80003b84 <uartputc+0xc>
    80003b88:	fd010113          	addi	sp,sp,-48
    80003b8c:	02813023          	sd	s0,32(sp)
    80003b90:	00913c23          	sd	s1,24(sp)
    80003b94:	01213823          	sd	s2,16(sp)
    80003b98:	01313423          	sd	s3,8(sp)
    80003b9c:	02113423          	sd	ra,40(sp)
    80003ba0:	03010413          	addi	s0,sp,48
    80003ba4:	00002917          	auipc	s2,0x2
    80003ba8:	24c90913          	addi	s2,s2,588 # 80005df0 <uart_tx_r>
    80003bac:	00093783          	ld	a5,0(s2)
    80003bb0:	00002497          	auipc	s1,0x2
    80003bb4:	24848493          	addi	s1,s1,584 # 80005df8 <uart_tx_w>
    80003bb8:	0004b703          	ld	a4,0(s1)
    80003bbc:	02078693          	addi	a3,a5,32
    80003bc0:	00050993          	mv	s3,a0
    80003bc4:	02e69c63          	bne	a3,a4,80003bfc <uartputc+0x84>
    80003bc8:	00001097          	auipc	ra,0x1
    80003bcc:	834080e7          	jalr	-1996(ra) # 800043fc <push_on>
    80003bd0:	00093783          	ld	a5,0(s2)
    80003bd4:	0004b703          	ld	a4,0(s1)
    80003bd8:	02078793          	addi	a5,a5,32
    80003bdc:	00e79463          	bne	a5,a4,80003be4 <uartputc+0x6c>
    80003be0:	0000006f          	j	80003be0 <uartputc+0x68>
    80003be4:	00001097          	auipc	ra,0x1
    80003be8:	88c080e7          	jalr	-1908(ra) # 80004470 <pop_on>
    80003bec:	00093783          	ld	a5,0(s2)
    80003bf0:	0004b703          	ld	a4,0(s1)
    80003bf4:	02078693          	addi	a3,a5,32
    80003bf8:	fce688e3          	beq	a3,a4,80003bc8 <uartputc+0x50>
    80003bfc:	01f77693          	andi	a3,a4,31
    80003c00:	00003597          	auipc	a1,0x3
    80003c04:	48058593          	addi	a1,a1,1152 # 80007080 <uart_tx_buf>
    80003c08:	00d586b3          	add	a3,a1,a3
    80003c0c:	00170713          	addi	a4,a4,1
    80003c10:	01368023          	sb	s3,0(a3)
    80003c14:	00e4b023          	sd	a4,0(s1)
    80003c18:	10000637          	lui	a2,0x10000
    80003c1c:	02f71063          	bne	a4,a5,80003c3c <uartputc+0xc4>
    80003c20:	0340006f          	j	80003c54 <uartputc+0xdc>
    80003c24:	00074703          	lbu	a4,0(a4)
    80003c28:	00f93023          	sd	a5,0(s2)
    80003c2c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003c30:	00093783          	ld	a5,0(s2)
    80003c34:	0004b703          	ld	a4,0(s1)
    80003c38:	00f70e63          	beq	a4,a5,80003c54 <uartputc+0xdc>
    80003c3c:	00564683          	lbu	a3,5(a2)
    80003c40:	01f7f713          	andi	a4,a5,31
    80003c44:	00e58733          	add	a4,a1,a4
    80003c48:	0206f693          	andi	a3,a3,32
    80003c4c:	00178793          	addi	a5,a5,1
    80003c50:	fc069ae3          	bnez	a3,80003c24 <uartputc+0xac>
    80003c54:	02813083          	ld	ra,40(sp)
    80003c58:	02013403          	ld	s0,32(sp)
    80003c5c:	01813483          	ld	s1,24(sp)
    80003c60:	01013903          	ld	s2,16(sp)
    80003c64:	00813983          	ld	s3,8(sp)
    80003c68:	03010113          	addi	sp,sp,48
    80003c6c:	00008067          	ret

0000000080003c70 <uartputc_sync>:
    80003c70:	ff010113          	addi	sp,sp,-16
    80003c74:	00813423          	sd	s0,8(sp)
    80003c78:	01010413          	addi	s0,sp,16
    80003c7c:	00002717          	auipc	a4,0x2
    80003c80:	16c72703          	lw	a4,364(a4) # 80005de8 <panicked>
    80003c84:	02071663          	bnez	a4,80003cb0 <uartputc_sync+0x40>
    80003c88:	00050793          	mv	a5,a0
    80003c8c:	100006b7          	lui	a3,0x10000
    80003c90:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003c94:	02077713          	andi	a4,a4,32
    80003c98:	fe070ce3          	beqz	a4,80003c90 <uartputc_sync+0x20>
    80003c9c:	0ff7f793          	andi	a5,a5,255
    80003ca0:	00f68023          	sb	a5,0(a3)
    80003ca4:	00813403          	ld	s0,8(sp)
    80003ca8:	01010113          	addi	sp,sp,16
    80003cac:	00008067          	ret
    80003cb0:	0000006f          	j	80003cb0 <uartputc_sync+0x40>

0000000080003cb4 <uartstart>:
    80003cb4:	ff010113          	addi	sp,sp,-16
    80003cb8:	00813423          	sd	s0,8(sp)
    80003cbc:	01010413          	addi	s0,sp,16
    80003cc0:	00002617          	auipc	a2,0x2
    80003cc4:	13060613          	addi	a2,a2,304 # 80005df0 <uart_tx_r>
    80003cc8:	00002517          	auipc	a0,0x2
    80003ccc:	13050513          	addi	a0,a0,304 # 80005df8 <uart_tx_w>
    80003cd0:	00063783          	ld	a5,0(a2)
    80003cd4:	00053703          	ld	a4,0(a0)
    80003cd8:	04f70263          	beq	a4,a5,80003d1c <uartstart+0x68>
    80003cdc:	100005b7          	lui	a1,0x10000
    80003ce0:	00003817          	auipc	a6,0x3
    80003ce4:	3a080813          	addi	a6,a6,928 # 80007080 <uart_tx_buf>
    80003ce8:	01c0006f          	j	80003d04 <uartstart+0x50>
    80003cec:	0006c703          	lbu	a4,0(a3)
    80003cf0:	00f63023          	sd	a5,0(a2)
    80003cf4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003cf8:	00063783          	ld	a5,0(a2)
    80003cfc:	00053703          	ld	a4,0(a0)
    80003d00:	00f70e63          	beq	a4,a5,80003d1c <uartstart+0x68>
    80003d04:	01f7f713          	andi	a4,a5,31
    80003d08:	00e806b3          	add	a3,a6,a4
    80003d0c:	0055c703          	lbu	a4,5(a1)
    80003d10:	00178793          	addi	a5,a5,1
    80003d14:	02077713          	andi	a4,a4,32
    80003d18:	fc071ae3          	bnez	a4,80003cec <uartstart+0x38>
    80003d1c:	00813403          	ld	s0,8(sp)
    80003d20:	01010113          	addi	sp,sp,16
    80003d24:	00008067          	ret

0000000080003d28 <uartgetc>:
    80003d28:	ff010113          	addi	sp,sp,-16
    80003d2c:	00813423          	sd	s0,8(sp)
    80003d30:	01010413          	addi	s0,sp,16
    80003d34:	10000737          	lui	a4,0x10000
    80003d38:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003d3c:	0017f793          	andi	a5,a5,1
    80003d40:	00078c63          	beqz	a5,80003d58 <uartgetc+0x30>
    80003d44:	00074503          	lbu	a0,0(a4)
    80003d48:	0ff57513          	andi	a0,a0,255
    80003d4c:	00813403          	ld	s0,8(sp)
    80003d50:	01010113          	addi	sp,sp,16
    80003d54:	00008067          	ret
    80003d58:	fff00513          	li	a0,-1
    80003d5c:	ff1ff06f          	j	80003d4c <uartgetc+0x24>

0000000080003d60 <uartintr>:
    80003d60:	100007b7          	lui	a5,0x10000
    80003d64:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003d68:	0017f793          	andi	a5,a5,1
    80003d6c:	0a078463          	beqz	a5,80003e14 <uartintr+0xb4>
    80003d70:	fe010113          	addi	sp,sp,-32
    80003d74:	00813823          	sd	s0,16(sp)
    80003d78:	00913423          	sd	s1,8(sp)
    80003d7c:	00113c23          	sd	ra,24(sp)
    80003d80:	02010413          	addi	s0,sp,32
    80003d84:	100004b7          	lui	s1,0x10000
    80003d88:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003d8c:	0ff57513          	andi	a0,a0,255
    80003d90:	fffff097          	auipc	ra,0xfffff
    80003d94:	534080e7          	jalr	1332(ra) # 800032c4 <consoleintr>
    80003d98:	0054c783          	lbu	a5,5(s1)
    80003d9c:	0017f793          	andi	a5,a5,1
    80003da0:	fe0794e3          	bnez	a5,80003d88 <uartintr+0x28>
    80003da4:	00002617          	auipc	a2,0x2
    80003da8:	04c60613          	addi	a2,a2,76 # 80005df0 <uart_tx_r>
    80003dac:	00002517          	auipc	a0,0x2
    80003db0:	04c50513          	addi	a0,a0,76 # 80005df8 <uart_tx_w>
    80003db4:	00063783          	ld	a5,0(a2)
    80003db8:	00053703          	ld	a4,0(a0)
    80003dbc:	04f70263          	beq	a4,a5,80003e00 <uartintr+0xa0>
    80003dc0:	100005b7          	lui	a1,0x10000
    80003dc4:	00003817          	auipc	a6,0x3
    80003dc8:	2bc80813          	addi	a6,a6,700 # 80007080 <uart_tx_buf>
    80003dcc:	01c0006f          	j	80003de8 <uartintr+0x88>
    80003dd0:	0006c703          	lbu	a4,0(a3)
    80003dd4:	00f63023          	sd	a5,0(a2)
    80003dd8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003ddc:	00063783          	ld	a5,0(a2)
    80003de0:	00053703          	ld	a4,0(a0)
    80003de4:	00f70e63          	beq	a4,a5,80003e00 <uartintr+0xa0>
    80003de8:	01f7f713          	andi	a4,a5,31
    80003dec:	00e806b3          	add	a3,a6,a4
    80003df0:	0055c703          	lbu	a4,5(a1)
    80003df4:	00178793          	addi	a5,a5,1
    80003df8:	02077713          	andi	a4,a4,32
    80003dfc:	fc071ae3          	bnez	a4,80003dd0 <uartintr+0x70>
    80003e00:	01813083          	ld	ra,24(sp)
    80003e04:	01013403          	ld	s0,16(sp)
    80003e08:	00813483          	ld	s1,8(sp)
    80003e0c:	02010113          	addi	sp,sp,32
    80003e10:	00008067          	ret
    80003e14:	00002617          	auipc	a2,0x2
    80003e18:	fdc60613          	addi	a2,a2,-36 # 80005df0 <uart_tx_r>
    80003e1c:	00002517          	auipc	a0,0x2
    80003e20:	fdc50513          	addi	a0,a0,-36 # 80005df8 <uart_tx_w>
    80003e24:	00063783          	ld	a5,0(a2)
    80003e28:	00053703          	ld	a4,0(a0)
    80003e2c:	04f70263          	beq	a4,a5,80003e70 <uartintr+0x110>
    80003e30:	100005b7          	lui	a1,0x10000
    80003e34:	00003817          	auipc	a6,0x3
    80003e38:	24c80813          	addi	a6,a6,588 # 80007080 <uart_tx_buf>
    80003e3c:	01c0006f          	j	80003e58 <uartintr+0xf8>
    80003e40:	0006c703          	lbu	a4,0(a3)
    80003e44:	00f63023          	sd	a5,0(a2)
    80003e48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003e4c:	00063783          	ld	a5,0(a2)
    80003e50:	00053703          	ld	a4,0(a0)
    80003e54:	02f70063          	beq	a4,a5,80003e74 <uartintr+0x114>
    80003e58:	01f7f713          	andi	a4,a5,31
    80003e5c:	00e806b3          	add	a3,a6,a4
    80003e60:	0055c703          	lbu	a4,5(a1)
    80003e64:	00178793          	addi	a5,a5,1
    80003e68:	02077713          	andi	a4,a4,32
    80003e6c:	fc071ae3          	bnez	a4,80003e40 <uartintr+0xe0>
    80003e70:	00008067          	ret
    80003e74:	00008067          	ret

0000000080003e78 <kinit>:
    80003e78:	fc010113          	addi	sp,sp,-64
    80003e7c:	02913423          	sd	s1,40(sp)
    80003e80:	fffff7b7          	lui	a5,0xfffff
    80003e84:	00004497          	auipc	s1,0x4
    80003e88:	21b48493          	addi	s1,s1,539 # 8000809f <end+0xfff>
    80003e8c:	02813823          	sd	s0,48(sp)
    80003e90:	01313c23          	sd	s3,24(sp)
    80003e94:	00f4f4b3          	and	s1,s1,a5
    80003e98:	02113c23          	sd	ra,56(sp)
    80003e9c:	03213023          	sd	s2,32(sp)
    80003ea0:	01413823          	sd	s4,16(sp)
    80003ea4:	01513423          	sd	s5,8(sp)
    80003ea8:	04010413          	addi	s0,sp,64
    80003eac:	000017b7          	lui	a5,0x1
    80003eb0:	01100993          	li	s3,17
    80003eb4:	00f487b3          	add	a5,s1,a5
    80003eb8:	01b99993          	slli	s3,s3,0x1b
    80003ebc:	06f9e063          	bltu	s3,a5,80003f1c <kinit+0xa4>
    80003ec0:	00003a97          	auipc	s5,0x3
    80003ec4:	1e0a8a93          	addi	s5,s5,480 # 800070a0 <end>
    80003ec8:	0754ec63          	bltu	s1,s5,80003f40 <kinit+0xc8>
    80003ecc:	0734fa63          	bgeu	s1,s3,80003f40 <kinit+0xc8>
    80003ed0:	00088a37          	lui	s4,0x88
    80003ed4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003ed8:	00002917          	auipc	s2,0x2
    80003edc:	f2890913          	addi	s2,s2,-216 # 80005e00 <kmem>
    80003ee0:	00ca1a13          	slli	s4,s4,0xc
    80003ee4:	0140006f          	j	80003ef8 <kinit+0x80>
    80003ee8:	000017b7          	lui	a5,0x1
    80003eec:	00f484b3          	add	s1,s1,a5
    80003ef0:	0554e863          	bltu	s1,s5,80003f40 <kinit+0xc8>
    80003ef4:	0534f663          	bgeu	s1,s3,80003f40 <kinit+0xc8>
    80003ef8:	00001637          	lui	a2,0x1
    80003efc:	00100593          	li	a1,1
    80003f00:	00048513          	mv	a0,s1
    80003f04:	00000097          	auipc	ra,0x0
    80003f08:	5e4080e7          	jalr	1508(ra) # 800044e8 <__memset>
    80003f0c:	00093783          	ld	a5,0(s2)
    80003f10:	00f4b023          	sd	a5,0(s1)
    80003f14:	00993023          	sd	s1,0(s2)
    80003f18:	fd4498e3          	bne	s1,s4,80003ee8 <kinit+0x70>
    80003f1c:	03813083          	ld	ra,56(sp)
    80003f20:	03013403          	ld	s0,48(sp)
    80003f24:	02813483          	ld	s1,40(sp)
    80003f28:	02013903          	ld	s2,32(sp)
    80003f2c:	01813983          	ld	s3,24(sp)
    80003f30:	01013a03          	ld	s4,16(sp)
    80003f34:	00813a83          	ld	s5,8(sp)
    80003f38:	04010113          	addi	sp,sp,64
    80003f3c:	00008067          	ret
    80003f40:	00001517          	auipc	a0,0x1
    80003f44:	33050513          	addi	a0,a0,816 # 80005270 <digits+0x18>
    80003f48:	fffff097          	auipc	ra,0xfffff
    80003f4c:	4b4080e7          	jalr	1204(ra) # 800033fc <panic>

0000000080003f50 <freerange>:
    80003f50:	fc010113          	addi	sp,sp,-64
    80003f54:	000017b7          	lui	a5,0x1
    80003f58:	02913423          	sd	s1,40(sp)
    80003f5c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003f60:	009504b3          	add	s1,a0,s1
    80003f64:	fffff537          	lui	a0,0xfffff
    80003f68:	02813823          	sd	s0,48(sp)
    80003f6c:	02113c23          	sd	ra,56(sp)
    80003f70:	03213023          	sd	s2,32(sp)
    80003f74:	01313c23          	sd	s3,24(sp)
    80003f78:	01413823          	sd	s4,16(sp)
    80003f7c:	01513423          	sd	s5,8(sp)
    80003f80:	01613023          	sd	s6,0(sp)
    80003f84:	04010413          	addi	s0,sp,64
    80003f88:	00a4f4b3          	and	s1,s1,a0
    80003f8c:	00f487b3          	add	a5,s1,a5
    80003f90:	06f5e463          	bltu	a1,a5,80003ff8 <freerange+0xa8>
    80003f94:	00003a97          	auipc	s5,0x3
    80003f98:	10ca8a93          	addi	s5,s5,268 # 800070a0 <end>
    80003f9c:	0954e263          	bltu	s1,s5,80004020 <freerange+0xd0>
    80003fa0:	01100993          	li	s3,17
    80003fa4:	01b99993          	slli	s3,s3,0x1b
    80003fa8:	0734fc63          	bgeu	s1,s3,80004020 <freerange+0xd0>
    80003fac:	00058a13          	mv	s4,a1
    80003fb0:	00002917          	auipc	s2,0x2
    80003fb4:	e5090913          	addi	s2,s2,-432 # 80005e00 <kmem>
    80003fb8:	00002b37          	lui	s6,0x2
    80003fbc:	0140006f          	j	80003fd0 <freerange+0x80>
    80003fc0:	000017b7          	lui	a5,0x1
    80003fc4:	00f484b3          	add	s1,s1,a5
    80003fc8:	0554ec63          	bltu	s1,s5,80004020 <freerange+0xd0>
    80003fcc:	0534fa63          	bgeu	s1,s3,80004020 <freerange+0xd0>
    80003fd0:	00001637          	lui	a2,0x1
    80003fd4:	00100593          	li	a1,1
    80003fd8:	00048513          	mv	a0,s1
    80003fdc:	00000097          	auipc	ra,0x0
    80003fe0:	50c080e7          	jalr	1292(ra) # 800044e8 <__memset>
    80003fe4:	00093703          	ld	a4,0(s2)
    80003fe8:	016487b3          	add	a5,s1,s6
    80003fec:	00e4b023          	sd	a4,0(s1)
    80003ff0:	00993023          	sd	s1,0(s2)
    80003ff4:	fcfa76e3          	bgeu	s4,a5,80003fc0 <freerange+0x70>
    80003ff8:	03813083          	ld	ra,56(sp)
    80003ffc:	03013403          	ld	s0,48(sp)
    80004000:	02813483          	ld	s1,40(sp)
    80004004:	02013903          	ld	s2,32(sp)
    80004008:	01813983          	ld	s3,24(sp)
    8000400c:	01013a03          	ld	s4,16(sp)
    80004010:	00813a83          	ld	s5,8(sp)
    80004014:	00013b03          	ld	s6,0(sp)
    80004018:	04010113          	addi	sp,sp,64
    8000401c:	00008067          	ret
    80004020:	00001517          	auipc	a0,0x1
    80004024:	25050513          	addi	a0,a0,592 # 80005270 <digits+0x18>
    80004028:	fffff097          	auipc	ra,0xfffff
    8000402c:	3d4080e7          	jalr	980(ra) # 800033fc <panic>

0000000080004030 <kfree>:
    80004030:	fe010113          	addi	sp,sp,-32
    80004034:	00813823          	sd	s0,16(sp)
    80004038:	00113c23          	sd	ra,24(sp)
    8000403c:	00913423          	sd	s1,8(sp)
    80004040:	02010413          	addi	s0,sp,32
    80004044:	03451793          	slli	a5,a0,0x34
    80004048:	04079c63          	bnez	a5,800040a0 <kfree+0x70>
    8000404c:	00003797          	auipc	a5,0x3
    80004050:	05478793          	addi	a5,a5,84 # 800070a0 <end>
    80004054:	00050493          	mv	s1,a0
    80004058:	04f56463          	bltu	a0,a5,800040a0 <kfree+0x70>
    8000405c:	01100793          	li	a5,17
    80004060:	01b79793          	slli	a5,a5,0x1b
    80004064:	02f57e63          	bgeu	a0,a5,800040a0 <kfree+0x70>
    80004068:	00001637          	lui	a2,0x1
    8000406c:	00100593          	li	a1,1
    80004070:	00000097          	auipc	ra,0x0
    80004074:	478080e7          	jalr	1144(ra) # 800044e8 <__memset>
    80004078:	00002797          	auipc	a5,0x2
    8000407c:	d8878793          	addi	a5,a5,-632 # 80005e00 <kmem>
    80004080:	0007b703          	ld	a4,0(a5)
    80004084:	01813083          	ld	ra,24(sp)
    80004088:	01013403          	ld	s0,16(sp)
    8000408c:	00e4b023          	sd	a4,0(s1)
    80004090:	0097b023          	sd	s1,0(a5)
    80004094:	00813483          	ld	s1,8(sp)
    80004098:	02010113          	addi	sp,sp,32
    8000409c:	00008067          	ret
    800040a0:	00001517          	auipc	a0,0x1
    800040a4:	1d050513          	addi	a0,a0,464 # 80005270 <digits+0x18>
    800040a8:	fffff097          	auipc	ra,0xfffff
    800040ac:	354080e7          	jalr	852(ra) # 800033fc <panic>

00000000800040b0 <kalloc>:
    800040b0:	fe010113          	addi	sp,sp,-32
    800040b4:	00813823          	sd	s0,16(sp)
    800040b8:	00913423          	sd	s1,8(sp)
    800040bc:	00113c23          	sd	ra,24(sp)
    800040c0:	02010413          	addi	s0,sp,32
    800040c4:	00002797          	auipc	a5,0x2
    800040c8:	d3c78793          	addi	a5,a5,-708 # 80005e00 <kmem>
    800040cc:	0007b483          	ld	s1,0(a5)
    800040d0:	02048063          	beqz	s1,800040f0 <kalloc+0x40>
    800040d4:	0004b703          	ld	a4,0(s1)
    800040d8:	00001637          	lui	a2,0x1
    800040dc:	00500593          	li	a1,5
    800040e0:	00048513          	mv	a0,s1
    800040e4:	00e7b023          	sd	a4,0(a5)
    800040e8:	00000097          	auipc	ra,0x0
    800040ec:	400080e7          	jalr	1024(ra) # 800044e8 <__memset>
    800040f0:	01813083          	ld	ra,24(sp)
    800040f4:	01013403          	ld	s0,16(sp)
    800040f8:	00048513          	mv	a0,s1
    800040fc:	00813483          	ld	s1,8(sp)
    80004100:	02010113          	addi	sp,sp,32
    80004104:	00008067          	ret

0000000080004108 <initlock>:
    80004108:	ff010113          	addi	sp,sp,-16
    8000410c:	00813423          	sd	s0,8(sp)
    80004110:	01010413          	addi	s0,sp,16
    80004114:	00813403          	ld	s0,8(sp)
    80004118:	00b53423          	sd	a1,8(a0)
    8000411c:	00052023          	sw	zero,0(a0)
    80004120:	00053823          	sd	zero,16(a0)
    80004124:	01010113          	addi	sp,sp,16
    80004128:	00008067          	ret

000000008000412c <acquire>:
    8000412c:	fe010113          	addi	sp,sp,-32
    80004130:	00813823          	sd	s0,16(sp)
    80004134:	00913423          	sd	s1,8(sp)
    80004138:	00113c23          	sd	ra,24(sp)
    8000413c:	01213023          	sd	s2,0(sp)
    80004140:	02010413          	addi	s0,sp,32
    80004144:	00050493          	mv	s1,a0
    80004148:	10002973          	csrr	s2,sstatus
    8000414c:	100027f3          	csrr	a5,sstatus
    80004150:	ffd7f793          	andi	a5,a5,-3
    80004154:	10079073          	csrw	sstatus,a5
    80004158:	fffff097          	auipc	ra,0xfffff
    8000415c:	8e8080e7          	jalr	-1816(ra) # 80002a40 <mycpu>
    80004160:	07852783          	lw	a5,120(a0)
    80004164:	06078e63          	beqz	a5,800041e0 <acquire+0xb4>
    80004168:	fffff097          	auipc	ra,0xfffff
    8000416c:	8d8080e7          	jalr	-1832(ra) # 80002a40 <mycpu>
    80004170:	07852783          	lw	a5,120(a0)
    80004174:	0004a703          	lw	a4,0(s1)
    80004178:	0017879b          	addiw	a5,a5,1
    8000417c:	06f52c23          	sw	a5,120(a0)
    80004180:	04071063          	bnez	a4,800041c0 <acquire+0x94>
    80004184:	00100713          	li	a4,1
    80004188:	00070793          	mv	a5,a4
    8000418c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004190:	0007879b          	sext.w	a5,a5
    80004194:	fe079ae3          	bnez	a5,80004188 <acquire+0x5c>
    80004198:	0ff0000f          	fence
    8000419c:	fffff097          	auipc	ra,0xfffff
    800041a0:	8a4080e7          	jalr	-1884(ra) # 80002a40 <mycpu>
    800041a4:	01813083          	ld	ra,24(sp)
    800041a8:	01013403          	ld	s0,16(sp)
    800041ac:	00a4b823          	sd	a0,16(s1)
    800041b0:	00013903          	ld	s2,0(sp)
    800041b4:	00813483          	ld	s1,8(sp)
    800041b8:	02010113          	addi	sp,sp,32
    800041bc:	00008067          	ret
    800041c0:	0104b903          	ld	s2,16(s1)
    800041c4:	fffff097          	auipc	ra,0xfffff
    800041c8:	87c080e7          	jalr	-1924(ra) # 80002a40 <mycpu>
    800041cc:	faa91ce3          	bne	s2,a0,80004184 <acquire+0x58>
    800041d0:	00001517          	auipc	a0,0x1
    800041d4:	0a850513          	addi	a0,a0,168 # 80005278 <digits+0x20>
    800041d8:	fffff097          	auipc	ra,0xfffff
    800041dc:	224080e7          	jalr	548(ra) # 800033fc <panic>
    800041e0:	00195913          	srli	s2,s2,0x1
    800041e4:	fffff097          	auipc	ra,0xfffff
    800041e8:	85c080e7          	jalr	-1956(ra) # 80002a40 <mycpu>
    800041ec:	00197913          	andi	s2,s2,1
    800041f0:	07252e23          	sw	s2,124(a0)
    800041f4:	f75ff06f          	j	80004168 <acquire+0x3c>

00000000800041f8 <release>:
    800041f8:	fe010113          	addi	sp,sp,-32
    800041fc:	00813823          	sd	s0,16(sp)
    80004200:	00113c23          	sd	ra,24(sp)
    80004204:	00913423          	sd	s1,8(sp)
    80004208:	01213023          	sd	s2,0(sp)
    8000420c:	02010413          	addi	s0,sp,32
    80004210:	00052783          	lw	a5,0(a0)
    80004214:	00079a63          	bnez	a5,80004228 <release+0x30>
    80004218:	00001517          	auipc	a0,0x1
    8000421c:	06850513          	addi	a0,a0,104 # 80005280 <digits+0x28>
    80004220:	fffff097          	auipc	ra,0xfffff
    80004224:	1dc080e7          	jalr	476(ra) # 800033fc <panic>
    80004228:	01053903          	ld	s2,16(a0)
    8000422c:	00050493          	mv	s1,a0
    80004230:	fffff097          	auipc	ra,0xfffff
    80004234:	810080e7          	jalr	-2032(ra) # 80002a40 <mycpu>
    80004238:	fea910e3          	bne	s2,a0,80004218 <release+0x20>
    8000423c:	0004b823          	sd	zero,16(s1)
    80004240:	0ff0000f          	fence
    80004244:	0f50000f          	fence	iorw,ow
    80004248:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000424c:	ffffe097          	auipc	ra,0xffffe
    80004250:	7f4080e7          	jalr	2036(ra) # 80002a40 <mycpu>
    80004254:	100027f3          	csrr	a5,sstatus
    80004258:	0027f793          	andi	a5,a5,2
    8000425c:	04079a63          	bnez	a5,800042b0 <release+0xb8>
    80004260:	07852783          	lw	a5,120(a0)
    80004264:	02f05e63          	blez	a5,800042a0 <release+0xa8>
    80004268:	fff7871b          	addiw	a4,a5,-1
    8000426c:	06e52c23          	sw	a4,120(a0)
    80004270:	00071c63          	bnez	a4,80004288 <release+0x90>
    80004274:	07c52783          	lw	a5,124(a0)
    80004278:	00078863          	beqz	a5,80004288 <release+0x90>
    8000427c:	100027f3          	csrr	a5,sstatus
    80004280:	0027e793          	ori	a5,a5,2
    80004284:	10079073          	csrw	sstatus,a5
    80004288:	01813083          	ld	ra,24(sp)
    8000428c:	01013403          	ld	s0,16(sp)
    80004290:	00813483          	ld	s1,8(sp)
    80004294:	00013903          	ld	s2,0(sp)
    80004298:	02010113          	addi	sp,sp,32
    8000429c:	00008067          	ret
    800042a0:	00001517          	auipc	a0,0x1
    800042a4:	00050513          	mv	a0,a0
    800042a8:	fffff097          	auipc	ra,0xfffff
    800042ac:	154080e7          	jalr	340(ra) # 800033fc <panic>
    800042b0:	00001517          	auipc	a0,0x1
    800042b4:	fd850513          	addi	a0,a0,-40 # 80005288 <digits+0x30>
    800042b8:	fffff097          	auipc	ra,0xfffff
    800042bc:	144080e7          	jalr	324(ra) # 800033fc <panic>

00000000800042c0 <holding>:
    800042c0:	00052783          	lw	a5,0(a0)
    800042c4:	00079663          	bnez	a5,800042d0 <holding+0x10>
    800042c8:	00000513          	li	a0,0
    800042cc:	00008067          	ret
    800042d0:	fe010113          	addi	sp,sp,-32
    800042d4:	00813823          	sd	s0,16(sp)
    800042d8:	00913423          	sd	s1,8(sp)
    800042dc:	00113c23          	sd	ra,24(sp)
    800042e0:	02010413          	addi	s0,sp,32
    800042e4:	01053483          	ld	s1,16(a0)
    800042e8:	ffffe097          	auipc	ra,0xffffe
    800042ec:	758080e7          	jalr	1880(ra) # 80002a40 <mycpu>
    800042f0:	01813083          	ld	ra,24(sp)
    800042f4:	01013403          	ld	s0,16(sp)
    800042f8:	40a48533          	sub	a0,s1,a0
    800042fc:	00153513          	seqz	a0,a0
    80004300:	00813483          	ld	s1,8(sp)
    80004304:	02010113          	addi	sp,sp,32
    80004308:	00008067          	ret

000000008000430c <push_off>:
    8000430c:	fe010113          	addi	sp,sp,-32
    80004310:	00813823          	sd	s0,16(sp)
    80004314:	00113c23          	sd	ra,24(sp)
    80004318:	00913423          	sd	s1,8(sp)
    8000431c:	02010413          	addi	s0,sp,32
    80004320:	100024f3          	csrr	s1,sstatus
    80004324:	100027f3          	csrr	a5,sstatus
    80004328:	ffd7f793          	andi	a5,a5,-3
    8000432c:	10079073          	csrw	sstatus,a5
    80004330:	ffffe097          	auipc	ra,0xffffe
    80004334:	710080e7          	jalr	1808(ra) # 80002a40 <mycpu>
    80004338:	07852783          	lw	a5,120(a0)
    8000433c:	02078663          	beqz	a5,80004368 <push_off+0x5c>
    80004340:	ffffe097          	auipc	ra,0xffffe
    80004344:	700080e7          	jalr	1792(ra) # 80002a40 <mycpu>
    80004348:	07852783          	lw	a5,120(a0)
    8000434c:	01813083          	ld	ra,24(sp)
    80004350:	01013403          	ld	s0,16(sp)
    80004354:	0017879b          	addiw	a5,a5,1
    80004358:	06f52c23          	sw	a5,120(a0)
    8000435c:	00813483          	ld	s1,8(sp)
    80004360:	02010113          	addi	sp,sp,32
    80004364:	00008067          	ret
    80004368:	0014d493          	srli	s1,s1,0x1
    8000436c:	ffffe097          	auipc	ra,0xffffe
    80004370:	6d4080e7          	jalr	1748(ra) # 80002a40 <mycpu>
    80004374:	0014f493          	andi	s1,s1,1
    80004378:	06952e23          	sw	s1,124(a0)
    8000437c:	fc5ff06f          	j	80004340 <push_off+0x34>

0000000080004380 <pop_off>:
    80004380:	ff010113          	addi	sp,sp,-16
    80004384:	00813023          	sd	s0,0(sp)
    80004388:	00113423          	sd	ra,8(sp)
    8000438c:	01010413          	addi	s0,sp,16
    80004390:	ffffe097          	auipc	ra,0xffffe
    80004394:	6b0080e7          	jalr	1712(ra) # 80002a40 <mycpu>
    80004398:	100027f3          	csrr	a5,sstatus
    8000439c:	0027f793          	andi	a5,a5,2
    800043a0:	04079663          	bnez	a5,800043ec <pop_off+0x6c>
    800043a4:	07852783          	lw	a5,120(a0)
    800043a8:	02f05a63          	blez	a5,800043dc <pop_off+0x5c>
    800043ac:	fff7871b          	addiw	a4,a5,-1
    800043b0:	06e52c23          	sw	a4,120(a0)
    800043b4:	00071c63          	bnez	a4,800043cc <pop_off+0x4c>
    800043b8:	07c52783          	lw	a5,124(a0)
    800043bc:	00078863          	beqz	a5,800043cc <pop_off+0x4c>
    800043c0:	100027f3          	csrr	a5,sstatus
    800043c4:	0027e793          	ori	a5,a5,2
    800043c8:	10079073          	csrw	sstatus,a5
    800043cc:	00813083          	ld	ra,8(sp)
    800043d0:	00013403          	ld	s0,0(sp)
    800043d4:	01010113          	addi	sp,sp,16
    800043d8:	00008067          	ret
    800043dc:	00001517          	auipc	a0,0x1
    800043e0:	ec450513          	addi	a0,a0,-316 # 800052a0 <digits+0x48>
    800043e4:	fffff097          	auipc	ra,0xfffff
    800043e8:	018080e7          	jalr	24(ra) # 800033fc <panic>
    800043ec:	00001517          	auipc	a0,0x1
    800043f0:	e9c50513          	addi	a0,a0,-356 # 80005288 <digits+0x30>
    800043f4:	fffff097          	auipc	ra,0xfffff
    800043f8:	008080e7          	jalr	8(ra) # 800033fc <panic>

00000000800043fc <push_on>:
    800043fc:	fe010113          	addi	sp,sp,-32
    80004400:	00813823          	sd	s0,16(sp)
    80004404:	00113c23          	sd	ra,24(sp)
    80004408:	00913423          	sd	s1,8(sp)
    8000440c:	02010413          	addi	s0,sp,32
    80004410:	100024f3          	csrr	s1,sstatus
    80004414:	100027f3          	csrr	a5,sstatus
    80004418:	0027e793          	ori	a5,a5,2
    8000441c:	10079073          	csrw	sstatus,a5
    80004420:	ffffe097          	auipc	ra,0xffffe
    80004424:	620080e7          	jalr	1568(ra) # 80002a40 <mycpu>
    80004428:	07852783          	lw	a5,120(a0)
    8000442c:	02078663          	beqz	a5,80004458 <push_on+0x5c>
    80004430:	ffffe097          	auipc	ra,0xffffe
    80004434:	610080e7          	jalr	1552(ra) # 80002a40 <mycpu>
    80004438:	07852783          	lw	a5,120(a0)
    8000443c:	01813083          	ld	ra,24(sp)
    80004440:	01013403          	ld	s0,16(sp)
    80004444:	0017879b          	addiw	a5,a5,1
    80004448:	06f52c23          	sw	a5,120(a0)
    8000444c:	00813483          	ld	s1,8(sp)
    80004450:	02010113          	addi	sp,sp,32
    80004454:	00008067          	ret
    80004458:	0014d493          	srli	s1,s1,0x1
    8000445c:	ffffe097          	auipc	ra,0xffffe
    80004460:	5e4080e7          	jalr	1508(ra) # 80002a40 <mycpu>
    80004464:	0014f493          	andi	s1,s1,1
    80004468:	06952e23          	sw	s1,124(a0)
    8000446c:	fc5ff06f          	j	80004430 <push_on+0x34>

0000000080004470 <pop_on>:
    80004470:	ff010113          	addi	sp,sp,-16
    80004474:	00813023          	sd	s0,0(sp)
    80004478:	00113423          	sd	ra,8(sp)
    8000447c:	01010413          	addi	s0,sp,16
    80004480:	ffffe097          	auipc	ra,0xffffe
    80004484:	5c0080e7          	jalr	1472(ra) # 80002a40 <mycpu>
    80004488:	100027f3          	csrr	a5,sstatus
    8000448c:	0027f793          	andi	a5,a5,2
    80004490:	04078463          	beqz	a5,800044d8 <pop_on+0x68>
    80004494:	07852783          	lw	a5,120(a0)
    80004498:	02f05863          	blez	a5,800044c8 <pop_on+0x58>
    8000449c:	fff7879b          	addiw	a5,a5,-1
    800044a0:	06f52c23          	sw	a5,120(a0)
    800044a4:	07853783          	ld	a5,120(a0)
    800044a8:	00079863          	bnez	a5,800044b8 <pop_on+0x48>
    800044ac:	100027f3          	csrr	a5,sstatus
    800044b0:	ffd7f793          	andi	a5,a5,-3
    800044b4:	10079073          	csrw	sstatus,a5
    800044b8:	00813083          	ld	ra,8(sp)
    800044bc:	00013403          	ld	s0,0(sp)
    800044c0:	01010113          	addi	sp,sp,16
    800044c4:	00008067          	ret
    800044c8:	00001517          	auipc	a0,0x1
    800044cc:	e0050513          	addi	a0,a0,-512 # 800052c8 <digits+0x70>
    800044d0:	fffff097          	auipc	ra,0xfffff
    800044d4:	f2c080e7          	jalr	-212(ra) # 800033fc <panic>
    800044d8:	00001517          	auipc	a0,0x1
    800044dc:	dd050513          	addi	a0,a0,-560 # 800052a8 <digits+0x50>
    800044e0:	fffff097          	auipc	ra,0xfffff
    800044e4:	f1c080e7          	jalr	-228(ra) # 800033fc <panic>

00000000800044e8 <__memset>:
    800044e8:	ff010113          	addi	sp,sp,-16
    800044ec:	00813423          	sd	s0,8(sp)
    800044f0:	01010413          	addi	s0,sp,16
    800044f4:	1a060e63          	beqz	a2,800046b0 <__memset+0x1c8>
    800044f8:	40a007b3          	neg	a5,a0
    800044fc:	0077f793          	andi	a5,a5,7
    80004500:	00778693          	addi	a3,a5,7
    80004504:	00b00813          	li	a6,11
    80004508:	0ff5f593          	andi	a1,a1,255
    8000450c:	fff6071b          	addiw	a4,a2,-1
    80004510:	1b06e663          	bltu	a3,a6,800046bc <__memset+0x1d4>
    80004514:	1cd76463          	bltu	a4,a3,800046dc <__memset+0x1f4>
    80004518:	1a078e63          	beqz	a5,800046d4 <__memset+0x1ec>
    8000451c:	00b50023          	sb	a1,0(a0)
    80004520:	00100713          	li	a4,1
    80004524:	1ae78463          	beq	a5,a4,800046cc <__memset+0x1e4>
    80004528:	00b500a3          	sb	a1,1(a0)
    8000452c:	00200713          	li	a4,2
    80004530:	1ae78a63          	beq	a5,a4,800046e4 <__memset+0x1fc>
    80004534:	00b50123          	sb	a1,2(a0)
    80004538:	00300713          	li	a4,3
    8000453c:	18e78463          	beq	a5,a4,800046c4 <__memset+0x1dc>
    80004540:	00b501a3          	sb	a1,3(a0)
    80004544:	00400713          	li	a4,4
    80004548:	1ae78263          	beq	a5,a4,800046ec <__memset+0x204>
    8000454c:	00b50223          	sb	a1,4(a0)
    80004550:	00500713          	li	a4,5
    80004554:	1ae78063          	beq	a5,a4,800046f4 <__memset+0x20c>
    80004558:	00b502a3          	sb	a1,5(a0)
    8000455c:	00700713          	li	a4,7
    80004560:	18e79e63          	bne	a5,a4,800046fc <__memset+0x214>
    80004564:	00b50323          	sb	a1,6(a0)
    80004568:	00700e93          	li	t4,7
    8000456c:	00859713          	slli	a4,a1,0x8
    80004570:	00e5e733          	or	a4,a1,a4
    80004574:	01059e13          	slli	t3,a1,0x10
    80004578:	01c76e33          	or	t3,a4,t3
    8000457c:	01859313          	slli	t1,a1,0x18
    80004580:	006e6333          	or	t1,t3,t1
    80004584:	02059893          	slli	a7,a1,0x20
    80004588:	40f60e3b          	subw	t3,a2,a5
    8000458c:	011368b3          	or	a7,t1,a7
    80004590:	02859813          	slli	a6,a1,0x28
    80004594:	0108e833          	or	a6,a7,a6
    80004598:	03059693          	slli	a3,a1,0x30
    8000459c:	003e589b          	srliw	a7,t3,0x3
    800045a0:	00d866b3          	or	a3,a6,a3
    800045a4:	03859713          	slli	a4,a1,0x38
    800045a8:	00389813          	slli	a6,a7,0x3
    800045ac:	00f507b3          	add	a5,a0,a5
    800045b0:	00e6e733          	or	a4,a3,a4
    800045b4:	000e089b          	sext.w	a7,t3
    800045b8:	00f806b3          	add	a3,a6,a5
    800045bc:	00e7b023          	sd	a4,0(a5)
    800045c0:	00878793          	addi	a5,a5,8
    800045c4:	fed79ce3          	bne	a5,a3,800045bc <__memset+0xd4>
    800045c8:	ff8e7793          	andi	a5,t3,-8
    800045cc:	0007871b          	sext.w	a4,a5
    800045d0:	01d787bb          	addw	a5,a5,t4
    800045d4:	0ce88e63          	beq	a7,a4,800046b0 <__memset+0x1c8>
    800045d8:	00f50733          	add	a4,a0,a5
    800045dc:	00b70023          	sb	a1,0(a4)
    800045e0:	0017871b          	addiw	a4,a5,1
    800045e4:	0cc77663          	bgeu	a4,a2,800046b0 <__memset+0x1c8>
    800045e8:	00e50733          	add	a4,a0,a4
    800045ec:	00b70023          	sb	a1,0(a4)
    800045f0:	0027871b          	addiw	a4,a5,2
    800045f4:	0ac77e63          	bgeu	a4,a2,800046b0 <__memset+0x1c8>
    800045f8:	00e50733          	add	a4,a0,a4
    800045fc:	00b70023          	sb	a1,0(a4)
    80004600:	0037871b          	addiw	a4,a5,3
    80004604:	0ac77663          	bgeu	a4,a2,800046b0 <__memset+0x1c8>
    80004608:	00e50733          	add	a4,a0,a4
    8000460c:	00b70023          	sb	a1,0(a4)
    80004610:	0047871b          	addiw	a4,a5,4
    80004614:	08c77e63          	bgeu	a4,a2,800046b0 <__memset+0x1c8>
    80004618:	00e50733          	add	a4,a0,a4
    8000461c:	00b70023          	sb	a1,0(a4)
    80004620:	0057871b          	addiw	a4,a5,5
    80004624:	08c77663          	bgeu	a4,a2,800046b0 <__memset+0x1c8>
    80004628:	00e50733          	add	a4,a0,a4
    8000462c:	00b70023          	sb	a1,0(a4)
    80004630:	0067871b          	addiw	a4,a5,6
    80004634:	06c77e63          	bgeu	a4,a2,800046b0 <__memset+0x1c8>
    80004638:	00e50733          	add	a4,a0,a4
    8000463c:	00b70023          	sb	a1,0(a4)
    80004640:	0077871b          	addiw	a4,a5,7
    80004644:	06c77663          	bgeu	a4,a2,800046b0 <__memset+0x1c8>
    80004648:	00e50733          	add	a4,a0,a4
    8000464c:	00b70023          	sb	a1,0(a4)
    80004650:	0087871b          	addiw	a4,a5,8
    80004654:	04c77e63          	bgeu	a4,a2,800046b0 <__memset+0x1c8>
    80004658:	00e50733          	add	a4,a0,a4
    8000465c:	00b70023          	sb	a1,0(a4)
    80004660:	0097871b          	addiw	a4,a5,9
    80004664:	04c77663          	bgeu	a4,a2,800046b0 <__memset+0x1c8>
    80004668:	00e50733          	add	a4,a0,a4
    8000466c:	00b70023          	sb	a1,0(a4)
    80004670:	00a7871b          	addiw	a4,a5,10
    80004674:	02c77e63          	bgeu	a4,a2,800046b0 <__memset+0x1c8>
    80004678:	00e50733          	add	a4,a0,a4
    8000467c:	00b70023          	sb	a1,0(a4)
    80004680:	00b7871b          	addiw	a4,a5,11
    80004684:	02c77663          	bgeu	a4,a2,800046b0 <__memset+0x1c8>
    80004688:	00e50733          	add	a4,a0,a4
    8000468c:	00b70023          	sb	a1,0(a4)
    80004690:	00c7871b          	addiw	a4,a5,12
    80004694:	00c77e63          	bgeu	a4,a2,800046b0 <__memset+0x1c8>
    80004698:	00e50733          	add	a4,a0,a4
    8000469c:	00b70023          	sb	a1,0(a4)
    800046a0:	00d7879b          	addiw	a5,a5,13
    800046a4:	00c7f663          	bgeu	a5,a2,800046b0 <__memset+0x1c8>
    800046a8:	00f507b3          	add	a5,a0,a5
    800046ac:	00b78023          	sb	a1,0(a5)
    800046b0:	00813403          	ld	s0,8(sp)
    800046b4:	01010113          	addi	sp,sp,16
    800046b8:	00008067          	ret
    800046bc:	00b00693          	li	a3,11
    800046c0:	e55ff06f          	j	80004514 <__memset+0x2c>
    800046c4:	00300e93          	li	t4,3
    800046c8:	ea5ff06f          	j	8000456c <__memset+0x84>
    800046cc:	00100e93          	li	t4,1
    800046d0:	e9dff06f          	j	8000456c <__memset+0x84>
    800046d4:	00000e93          	li	t4,0
    800046d8:	e95ff06f          	j	8000456c <__memset+0x84>
    800046dc:	00000793          	li	a5,0
    800046e0:	ef9ff06f          	j	800045d8 <__memset+0xf0>
    800046e4:	00200e93          	li	t4,2
    800046e8:	e85ff06f          	j	8000456c <__memset+0x84>
    800046ec:	00400e93          	li	t4,4
    800046f0:	e7dff06f          	j	8000456c <__memset+0x84>
    800046f4:	00500e93          	li	t4,5
    800046f8:	e75ff06f          	j	8000456c <__memset+0x84>
    800046fc:	00600e93          	li	t4,6
    80004700:	e6dff06f          	j	8000456c <__memset+0x84>

0000000080004704 <__memmove>:
    80004704:	ff010113          	addi	sp,sp,-16
    80004708:	00813423          	sd	s0,8(sp)
    8000470c:	01010413          	addi	s0,sp,16
    80004710:	0e060863          	beqz	a2,80004800 <__memmove+0xfc>
    80004714:	fff6069b          	addiw	a3,a2,-1
    80004718:	0006881b          	sext.w	a6,a3
    8000471c:	0ea5e863          	bltu	a1,a0,8000480c <__memmove+0x108>
    80004720:	00758713          	addi	a4,a1,7
    80004724:	00a5e7b3          	or	a5,a1,a0
    80004728:	40a70733          	sub	a4,a4,a0
    8000472c:	0077f793          	andi	a5,a5,7
    80004730:	00f73713          	sltiu	a4,a4,15
    80004734:	00174713          	xori	a4,a4,1
    80004738:	0017b793          	seqz	a5,a5
    8000473c:	00e7f7b3          	and	a5,a5,a4
    80004740:	10078863          	beqz	a5,80004850 <__memmove+0x14c>
    80004744:	00900793          	li	a5,9
    80004748:	1107f463          	bgeu	a5,a6,80004850 <__memmove+0x14c>
    8000474c:	0036581b          	srliw	a6,a2,0x3
    80004750:	fff8081b          	addiw	a6,a6,-1
    80004754:	02081813          	slli	a6,a6,0x20
    80004758:	01d85893          	srli	a7,a6,0x1d
    8000475c:	00858813          	addi	a6,a1,8
    80004760:	00058793          	mv	a5,a1
    80004764:	00050713          	mv	a4,a0
    80004768:	01088833          	add	a6,a7,a6
    8000476c:	0007b883          	ld	a7,0(a5)
    80004770:	00878793          	addi	a5,a5,8
    80004774:	00870713          	addi	a4,a4,8
    80004778:	ff173c23          	sd	a7,-8(a4)
    8000477c:	ff0798e3          	bne	a5,a6,8000476c <__memmove+0x68>
    80004780:	ff867713          	andi	a4,a2,-8
    80004784:	02071793          	slli	a5,a4,0x20
    80004788:	0207d793          	srli	a5,a5,0x20
    8000478c:	00f585b3          	add	a1,a1,a5
    80004790:	40e686bb          	subw	a3,a3,a4
    80004794:	00f507b3          	add	a5,a0,a5
    80004798:	06e60463          	beq	a2,a4,80004800 <__memmove+0xfc>
    8000479c:	0005c703          	lbu	a4,0(a1)
    800047a0:	00e78023          	sb	a4,0(a5)
    800047a4:	04068e63          	beqz	a3,80004800 <__memmove+0xfc>
    800047a8:	0015c603          	lbu	a2,1(a1)
    800047ac:	00100713          	li	a4,1
    800047b0:	00c780a3          	sb	a2,1(a5)
    800047b4:	04e68663          	beq	a3,a4,80004800 <__memmove+0xfc>
    800047b8:	0025c603          	lbu	a2,2(a1)
    800047bc:	00200713          	li	a4,2
    800047c0:	00c78123          	sb	a2,2(a5)
    800047c4:	02e68e63          	beq	a3,a4,80004800 <__memmove+0xfc>
    800047c8:	0035c603          	lbu	a2,3(a1)
    800047cc:	00300713          	li	a4,3
    800047d0:	00c781a3          	sb	a2,3(a5)
    800047d4:	02e68663          	beq	a3,a4,80004800 <__memmove+0xfc>
    800047d8:	0045c603          	lbu	a2,4(a1)
    800047dc:	00400713          	li	a4,4
    800047e0:	00c78223          	sb	a2,4(a5)
    800047e4:	00e68e63          	beq	a3,a4,80004800 <__memmove+0xfc>
    800047e8:	0055c603          	lbu	a2,5(a1)
    800047ec:	00500713          	li	a4,5
    800047f0:	00c782a3          	sb	a2,5(a5)
    800047f4:	00e68663          	beq	a3,a4,80004800 <__memmove+0xfc>
    800047f8:	0065c703          	lbu	a4,6(a1)
    800047fc:	00e78323          	sb	a4,6(a5)
    80004800:	00813403          	ld	s0,8(sp)
    80004804:	01010113          	addi	sp,sp,16
    80004808:	00008067          	ret
    8000480c:	02061713          	slli	a4,a2,0x20
    80004810:	02075713          	srli	a4,a4,0x20
    80004814:	00e587b3          	add	a5,a1,a4
    80004818:	f0f574e3          	bgeu	a0,a5,80004720 <__memmove+0x1c>
    8000481c:	02069613          	slli	a2,a3,0x20
    80004820:	02065613          	srli	a2,a2,0x20
    80004824:	fff64613          	not	a2,a2
    80004828:	00e50733          	add	a4,a0,a4
    8000482c:	00c78633          	add	a2,a5,a2
    80004830:	fff7c683          	lbu	a3,-1(a5)
    80004834:	fff78793          	addi	a5,a5,-1
    80004838:	fff70713          	addi	a4,a4,-1
    8000483c:	00d70023          	sb	a3,0(a4)
    80004840:	fec798e3          	bne	a5,a2,80004830 <__memmove+0x12c>
    80004844:	00813403          	ld	s0,8(sp)
    80004848:	01010113          	addi	sp,sp,16
    8000484c:	00008067          	ret
    80004850:	02069713          	slli	a4,a3,0x20
    80004854:	02075713          	srli	a4,a4,0x20
    80004858:	00170713          	addi	a4,a4,1
    8000485c:	00e50733          	add	a4,a0,a4
    80004860:	00050793          	mv	a5,a0
    80004864:	0005c683          	lbu	a3,0(a1)
    80004868:	00178793          	addi	a5,a5,1
    8000486c:	00158593          	addi	a1,a1,1
    80004870:	fed78fa3          	sb	a3,-1(a5)
    80004874:	fee798e3          	bne	a5,a4,80004864 <__memmove+0x160>
    80004878:	f89ff06f          	j	80004800 <__memmove+0xfc>

000000008000487c <__putc>:
    8000487c:	fe010113          	addi	sp,sp,-32
    80004880:	00813823          	sd	s0,16(sp)
    80004884:	00113c23          	sd	ra,24(sp)
    80004888:	02010413          	addi	s0,sp,32
    8000488c:	00050793          	mv	a5,a0
    80004890:	fef40593          	addi	a1,s0,-17
    80004894:	00100613          	li	a2,1
    80004898:	00000513          	li	a0,0
    8000489c:	fef407a3          	sb	a5,-17(s0)
    800048a0:	fffff097          	auipc	ra,0xfffff
    800048a4:	b3c080e7          	jalr	-1220(ra) # 800033dc <console_write>
    800048a8:	01813083          	ld	ra,24(sp)
    800048ac:	01013403          	ld	s0,16(sp)
    800048b0:	02010113          	addi	sp,sp,32
    800048b4:	00008067          	ret

00000000800048b8 <__getc>:
    800048b8:	fe010113          	addi	sp,sp,-32
    800048bc:	00813823          	sd	s0,16(sp)
    800048c0:	00113c23          	sd	ra,24(sp)
    800048c4:	02010413          	addi	s0,sp,32
    800048c8:	fe840593          	addi	a1,s0,-24
    800048cc:	00100613          	li	a2,1
    800048d0:	00000513          	li	a0,0
    800048d4:	fffff097          	auipc	ra,0xfffff
    800048d8:	ae8080e7          	jalr	-1304(ra) # 800033bc <console_read>
    800048dc:	fe844503          	lbu	a0,-24(s0)
    800048e0:	01813083          	ld	ra,24(sp)
    800048e4:	01013403          	ld	s0,16(sp)
    800048e8:	02010113          	addi	sp,sp,32
    800048ec:	00008067          	ret

00000000800048f0 <console_handler>:
    800048f0:	fe010113          	addi	sp,sp,-32
    800048f4:	00813823          	sd	s0,16(sp)
    800048f8:	00113c23          	sd	ra,24(sp)
    800048fc:	00913423          	sd	s1,8(sp)
    80004900:	02010413          	addi	s0,sp,32
    80004904:	14202773          	csrr	a4,scause
    80004908:	100027f3          	csrr	a5,sstatus
    8000490c:	0027f793          	andi	a5,a5,2
    80004910:	06079e63          	bnez	a5,8000498c <console_handler+0x9c>
    80004914:	00074c63          	bltz	a4,8000492c <console_handler+0x3c>
    80004918:	01813083          	ld	ra,24(sp)
    8000491c:	01013403          	ld	s0,16(sp)
    80004920:	00813483          	ld	s1,8(sp)
    80004924:	02010113          	addi	sp,sp,32
    80004928:	00008067          	ret
    8000492c:	0ff77713          	andi	a4,a4,255
    80004930:	00900793          	li	a5,9
    80004934:	fef712e3          	bne	a4,a5,80004918 <console_handler+0x28>
    80004938:	ffffe097          	auipc	ra,0xffffe
    8000493c:	6dc080e7          	jalr	1756(ra) # 80003014 <plic_claim>
    80004940:	00a00793          	li	a5,10
    80004944:	00050493          	mv	s1,a0
    80004948:	02f50c63          	beq	a0,a5,80004980 <console_handler+0x90>
    8000494c:	fc0506e3          	beqz	a0,80004918 <console_handler+0x28>
    80004950:	00050593          	mv	a1,a0
    80004954:	00001517          	auipc	a0,0x1
    80004958:	87c50513          	addi	a0,a0,-1924 # 800051d0 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    8000495c:	fffff097          	auipc	ra,0xfffff
    80004960:	afc080e7          	jalr	-1284(ra) # 80003458 <__printf>
    80004964:	01013403          	ld	s0,16(sp)
    80004968:	01813083          	ld	ra,24(sp)
    8000496c:	00048513          	mv	a0,s1
    80004970:	00813483          	ld	s1,8(sp)
    80004974:	02010113          	addi	sp,sp,32
    80004978:	ffffe317          	auipc	t1,0xffffe
    8000497c:	6d430067          	jr	1748(t1) # 8000304c <plic_complete>
    80004980:	fffff097          	auipc	ra,0xfffff
    80004984:	3e0080e7          	jalr	992(ra) # 80003d60 <uartintr>
    80004988:	fddff06f          	j	80004964 <console_handler+0x74>
    8000498c:	00001517          	auipc	a0,0x1
    80004990:	94450513          	addi	a0,a0,-1724 # 800052d0 <digits+0x78>
    80004994:	fffff097          	auipc	ra,0xfffff
    80004998:	a68080e7          	jalr	-1432(ra) # 800033fc <panic>
	...
