
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	de813103          	ld	sp,-536(sp) # 80005de8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7b4020ef          	jal	ra,800027d0 <start>

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
    80001080:	070010ef          	jal	ra,800020f0 <_ZN5Riscv20handleSupervisorTrapEv>

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
    Riscv::printString("Runner started...\n");
    80001354:	00004517          	auipc	a0,0x4
    80001358:	ccc50513          	addi	a0,a0,-820 # 80005020 <CONSOLE_STATUS+0x10>
    8000135c:	00001097          	auipc	ra,0x1
    80001360:	c58080e7          	jalr	-936(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    80001364:	00001097          	auipc	ra,0x1
    80001368:	c30080e7          	jalr	-976(ra) # 80001f94 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    8000136c:	00005497          	auipc	s1,0x5
    80001370:	ad448493          	addi	s1,s1,-1324 # 80005e40 <_ZN3PCB7runningE>
    80001374:	0004b783          	ld	a5,0(s1)
    80001378:	0087b703          	ld	a4,8(a5)
    8000137c:	0107b503          	ld	a0,16(a5)
    80001380:	000700e7          	jalr	a4
    running->setFinished(true);
    80001384:	0004b783          	ld	a5,0(s1)

    static uint64 timeSliceCounter;

    uint64 getTimeSlice() { return timeSlice;}

    void setFinished(bool f) {finished = f;}
    80001388:	00100713          	li	a4,1
    8000138c:	02e78823          	sb	a4,48(a5)
    Riscv::printString("Thread finished\n");
    80001390:	00004517          	auipc	a0,0x4
    80001394:	ca850513          	addi	a0,a0,-856 # 80005038 <CONSOLE_STATUS+0x28>
    80001398:	00001097          	auipc	ra,0x1
    8000139c:	c1c080e7          	jalr	-996(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
    thread_dispatch();
    800013a0:	00000097          	auipc	ra,0x0
    800013a4:	f58080e7          	jalr	-168(ra) # 800012f8 <thread_dispatch>
}
    800013a8:	01813083          	ld	ra,24(sp)
    800013ac:	01013403          	ld	s0,16(sp)
    800013b0:	00813483          	ld	s1,8(sp)
    800013b4:	02010113          	addi	sp,sp,32
    800013b8:	00008067          	ret

00000000800013bc <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800013bc:	ff010113          	addi	sp,sp,-16
    800013c0:	00813423          	sd	s0,8(sp)
    800013c4:	01010413          	addi	s0,sp,16
    })
    800013c8:	00e53023          	sd	a4,0(a0)
    800013cc:	00b53423          	sd	a1,8(a0)
    800013d0:	00c53823          	sd	a2,16(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800013d4:	000017b7          	lui	a5,0x1
    800013d8:	00f686b3          	add	a3,a3,a5
    })
    800013dc:	00d53c23          	sd	a3,24(a0)
    800013e0:	00000797          	auipc	a5,0x0
    800013e4:	f6078793          	addi	a5,a5,-160 # 80001340 <_ZN3PCB6runnerEv>
    800013e8:	02f53023          	sd	a5,32(a0)
    800013ec:	02050823          	sb	zero,48(a0)
}
    800013f0:	00813403          	ld	s0,8(sp)
    800013f4:	01010113          	addi	sp,sp,16
    800013f8:	00008067          	ret

00000000800013fc <_ZN3PCB5sleepEm>:
{
    800013fc:	ff010113          	addi	sp,sp,-16
    80001400:	00813423          	sd	s0,8(sp)
    80001404:	01010413          	addi	s0,sp,16
}
    80001408:	00813403          	ld	s0,8(sp)
    8000140c:	01010113          	addi	sp,sp,16
    80001410:	00008067          	ret

0000000080001414 <_ZN3PCB5startEv>:
{
    80001414:	ff010113          	addi	sp,sp,-16
    80001418:	00113423          	sd	ra,8(sp)
    8000141c:	00813023          	sd	s0,0(sp)
    80001420:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80001424:	00000097          	auipc	ra,0x0
    80001428:	258080e7          	jalr	600(ra) # 8000167c <_ZN9Scheduler3putEP3PCB>
}
    8000142c:	00813083          	ld	ra,8(sp)
    80001430:	00013403          	ld	s0,0(sp)
    80001434:	01010113          	addi	sp,sp,16
    80001438:	00008067          	ret

000000008000143c <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    8000143c:	fe010113          	addi	sp,sp,-32
    80001440:	00113c23          	sd	ra,24(sp)
    80001444:	00813823          	sd	s0,16(sp)
    80001448:	00913423          	sd	s1,8(sp)
    8000144c:	01213023          	sd	s2,0(sp)
    80001450:	02010413          	addi	s0,sp,32
    Riscv::printString("Dispatch called...\n");
    80001454:	00004517          	auipc	a0,0x4
    80001458:	bfc50513          	addi	a0,a0,-1028 # 80005050 <CONSOLE_STATUS+0x40>
    8000145c:	00001097          	auipc	ra,0x1
    80001460:	b58080e7          	jalr	-1192(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
    PCB* old = running;
    80001464:	00005497          	auipc	s1,0x5
    80001468:	9dc4b483          	ld	s1,-1572(s1) # 80005e40 <_ZN3PCB7runningE>
    if(!old->finished) Scheduler::put(old);
    8000146c:	0304c783          	lbu	a5,48(s1)
    80001470:	04078a63          	beqz	a5,800014c4 <_ZN3PCB8dispatchEv+0x88>
    PCB::running = Scheduler::get();
    80001474:	00000097          	auipc	ra,0x0
    80001478:	288080e7          	jalr	648(ra) # 800016fc <_ZN9Scheduler3getEv>
    8000147c:	00005917          	auipc	s2,0x5
    80001480:	9c490913          	addi	s2,s2,-1596 # 80005e40 <_ZN3PCB7runningE>
    80001484:	00a93023          	sd	a0,0(s2)

    Riscv::printString("Switching context...\n");
    80001488:	00004517          	auipc	a0,0x4
    8000148c:	be050513          	addi	a0,a0,-1056 # 80005068 <CONSOLE_STATUS+0x58>
    80001490:	00001097          	auipc	ra,0x1
    80001494:	b24080e7          	jalr	-1244(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>

    PCB::contextSwitch(&old->context, &running->context);
    80001498:	00093583          	ld	a1,0(s2)
    8000149c:	01858593          	addi	a1,a1,24
    800014a0:	01848513          	addi	a0,s1,24
    800014a4:	00000097          	auipc	ra,0x0
    800014a8:	d64080e7          	jalr	-668(ra) # 80001208 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800014ac:	01813083          	ld	ra,24(sp)
    800014b0:	01013403          	ld	s0,16(sp)
    800014b4:	00813483          	ld	s1,8(sp)
    800014b8:	00013903          	ld	s2,0(sp)
    800014bc:	02010113          	addi	sp,sp,32
    800014c0:	00008067          	ret
    if(!old->finished) Scheduler::put(old);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00000097          	auipc	ra,0x0
    800014cc:	1b4080e7          	jalr	436(ra) # 8000167c <_ZN9Scheduler3putEP3PCB>
    800014d0:	fa5ff06f          	j	80001474 <_ZN3PCB8dispatchEv+0x38>

00000000800014d4 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800014d4:	ff010113          	addi	sp,sp,-16
    800014d8:	00113423          	sd	ra,8(sp)
    800014dc:	00813023          	sd	s0,0(sp)
    800014e0:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800014e4:	00001097          	auipc	ra,0x1
    800014e8:	114080e7          	jalr	276(ra) # 800025f8 <_Z7kmallocm>
}
    800014ec:	00813083          	ld	ra,8(sp)
    800014f0:	00013403          	ld	s0,0(sp)
    800014f4:	01010113          	addi	sp,sp,16
    800014f8:	00008067          	ret

00000000800014fc <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    800014fc:	ff010113          	addi	sp,sp,-16
    80001500:	00813423          	sd	s0,8(sp)
    80001504:	01010413          	addi	s0,sp,16
    //todo
    //kfree(p);
}
    80001508:	00813403          	ld	s0,8(sp)
    8000150c:	01010113          	addi	sp,sp,16
    80001510:	00008067          	ret

0000000080001514 <_ZN5Queue3popEv>:
// Created by os on 5/3/22.
//

#include "../h/Queue.h"

void Queue::pop() {
    80001514:	ff010113          	addi	sp,sp,-16
    80001518:	00813423          	sd	s0,8(sp)
    8000151c:	01010413          	addi	s0,sp,16
    Elem* newFirst = first->next;
    80001520:	00053783          	ld	a5,0(a0)
    80001524:	0087b783          	ld	a5,8(a5)
    //kfree(first);
    first = newFirst;
    80001528:	00f53023          	sd	a5,0(a0)
    if(first == 0)
    8000152c:	00078863          	beqz	a5,8000153c <_ZN5Queue3popEv+0x28>
        first = last = 0;
}
    80001530:	00813403          	ld	s0,8(sp)
    80001534:	01010113          	addi	sp,sp,16
    80001538:	00008067          	ret
        first = last = 0;
    8000153c:	00053423          	sd	zero,8(a0)
    80001540:	00053023          	sd	zero,0(a0)
}
    80001544:	fedff06f          	j	80001530 <_ZN5Queue3popEv+0x1c>

0000000080001548 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    80001548:	fe010113          	addi	sp,sp,-32
    8000154c:	00113c23          	sd	ra,24(sp)
    80001550:	00813823          	sd	s0,16(sp)
    80001554:	00913423          	sd	s1,8(sp)
    80001558:	01213023          	sd	s2,0(sp)
    8000155c:	02010413          	addi	s0,sp,32
    80001560:	00050493          	mv	s1,a0
    80001564:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80001568:	01000513          	li	a0,16
    8000156c:	00001097          	auipc	ra,0x1
    80001570:	08c080e7          	jalr	140(ra) # 800025f8 <_Z7kmallocm>
    newElem->data = t;
    80001574:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80001578:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    8000157c:	0004b783          	ld	a5,0(s1)
    80001580:	02078463          	beqz	a5,800015a8 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80001584:	0084b783          	ld	a5,8(s1)
    80001588:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    8000158c:	00a4b423          	sd	a0,8(s1)
    }
}
    80001590:	01813083          	ld	ra,24(sp)
    80001594:	01013403          	ld	s0,16(sp)
    80001598:	00813483          	ld	s1,8(sp)
    8000159c:	00013903          	ld	s2,0(sp)
    800015a0:	02010113          	addi	sp,sp,32
    800015a4:	00008067          	ret
        first = newElem;
    800015a8:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    800015ac:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    800015b0:	00053423          	sd	zero,8(a0)
    800015b4:	0004b783          	ld	a5,0(s1)
    800015b8:	0007b423          	sd	zero,8(a5)
    800015bc:	fd5ff06f          	j	80001590 <_ZN5Queue4pushEP3PCB+0x48>

00000000800015c0 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    800015c0:	ff010113          	addi	sp,sp,-16
    800015c4:	00813423          	sd	s0,8(sp)
    800015c8:	01010413          	addi	s0,sp,16
    if(first == 0)
    800015cc:	00053503          	ld	a0,0(a0)
    800015d0:	00050463          	beqz	a0,800015d8 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    800015d4:	00053503          	ld	a0,0(a0)
}
    800015d8:	00813403          	ld	s0,8(sp)
    800015dc:	01010113          	addi	sp,sp,16
    800015e0:	00008067          	ret

00000000800015e4 <_ZN5QueueC1Ev>:

Queue::Queue() {
    800015e4:	ff010113          	addi	sp,sp,-16
    800015e8:	00813423          	sd	s0,8(sp)
    800015ec:	01010413          	addi	s0,sp,16
    first = last = 0;
    800015f0:	00053423          	sd	zero,8(a0)
    800015f4:	00053023          	sd	zero,0(a0)
}
    800015f8:	00813403          	ld	s0,8(sp)
    800015fc:	01010113          	addi	sp,sp,16
    80001600:	00008067          	ret

0000000080001604 <_ZN5QueueD1Ev>:

Queue::~Queue() {
    80001604:	ff010113          	addi	sp,sp,-16
    80001608:	00813423          	sd	s0,8(sp)
    8000160c:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80001610:	00053783          	ld	a5,0(a0)
    while(curr != 0)
    80001614:	00079063          	bnez	a5,80001614 <_ZN5QueueD1Ev+0x10>
        //sad je zakomentarisano zbog kfree
        //Elem* old = curr;
        //curr = curr->next;
        //kfree(old);
    }
}
    80001618:	00813403          	ld	s0,8(sp)
    8000161c:	01010113          	addi	sp,sp,16
    80001620:	00008067          	ret

0000000080001624 <_ZN5Queue4sizeEv>:

int Queue::size() {
    80001624:	ff010113          	addi	sp,sp,-16
    80001628:	00813423          	sd	s0,8(sp)
    8000162c:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80001630:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    80001634:	00000513          	li	a0,0
    while(curr != 0)
    80001638:	00078863          	beqz	a5,80001648 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    8000163c:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80001640:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80001644:	ff5ff06f          	j	80001638 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80001648:	00813403          	ld	s0,8(sp)
    8000164c:	01010113          	addi	sp,sp,16
    80001650:	00008067          	ret

0000000080001654 <_ZN9SchedulernwEm>:
    PCB* fr = scheduler->queuePCB.front();
    scheduler->queuePCB.pop();
    return fr;
}

void *Scheduler::operator new(size_t size) {
    80001654:	ff010113          	addi	sp,sp,-16
    80001658:	00113423          	sd	ra,8(sp)
    8000165c:	00813023          	sd	s0,0(sp)
    80001660:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80001664:	00001097          	auipc	ra,0x1
    80001668:	f94080e7          	jalr	-108(ra) # 800025f8 <_Z7kmallocm>
}
    8000166c:	00813083          	ld	ra,8(sp)
    80001670:	00013403          	ld	s0,0(sp)
    80001674:	01010113          	addi	sp,sp,16
    80001678:	00008067          	ret

000000008000167c <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *pcb) {
    8000167c:	fe010113          	addi	sp,sp,-32
    80001680:	00113c23          	sd	ra,24(sp)
    80001684:	00813823          	sd	s0,16(sp)
    80001688:	00913423          	sd	s1,8(sp)
    8000168c:	01213023          	sd	s2,0(sp)
    80001690:	02010413          	addi	s0,sp,32
    80001694:	00050493          	mv	s1,a0
    if(scheduler == 0)
    80001698:	00004797          	auipc	a5,0x4
    8000169c:	7b87b783          	ld	a5,1976(a5) # 80005e50 <_ZN9Scheduler9schedulerE>
    800016a0:	02078863          	beqz	a5,800016d0 <_ZN9Scheduler3putEP3PCB+0x54>
    scheduler->queuePCB.push(pcb);
    800016a4:	00048593          	mv	a1,s1
    800016a8:	00004517          	auipc	a0,0x4
    800016ac:	7a853503          	ld	a0,1960(a0) # 80005e50 <_ZN9Scheduler9schedulerE>
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	e98080e7          	jalr	-360(ra) # 80001548 <_ZN5Queue4pushEP3PCB>
}
    800016b8:	01813083          	ld	ra,24(sp)
    800016bc:	01013403          	ld	s0,16(sp)
    800016c0:	00813483          	ld	s1,8(sp)
    800016c4:	00013903          	ld	s2,0(sp)
    800016c8:	02010113          	addi	sp,sp,32
    800016cc:	00008067          	ret
        scheduler = new Scheduler();
    800016d0:	01000513          	li	a0,16
    800016d4:	00000097          	auipc	ra,0x0
    800016d8:	f80080e7          	jalr	-128(ra) # 80001654 <_ZN9SchedulernwEm>
    800016dc:	00050913          	mv	s2,a0
    800016e0:	00053023          	sd	zero,0(a0)
    800016e4:	00053423          	sd	zero,8(a0)
#include "MemoryAllocator.h"
#include "Queue.h"

class PCB;

class Scheduler
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	efc080e7          	jalr	-260(ra) # 800015e4 <_ZN5QueueC1Ev>
    800016f0:	00004797          	auipc	a5,0x4
    800016f4:	7727b023          	sd	s2,1888(a5) # 80005e50 <_ZN9Scheduler9schedulerE>
    800016f8:	fadff06f          	j	800016a4 <_ZN9Scheduler3putEP3PCB+0x28>

00000000800016fc <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    800016fc:	fe010113          	addi	sp,sp,-32
    80001700:	00113c23          	sd	ra,24(sp)
    80001704:	00813823          	sd	s0,16(sp)
    80001708:	00913423          	sd	s1,8(sp)
    8000170c:	01213023          	sd	s2,0(sp)
    80001710:	02010413          	addi	s0,sp,32
    if(scheduler == 0)
    80001714:	00004797          	auipc	a5,0x4
    80001718:	73c7b783          	ld	a5,1852(a5) # 80005e50 <_ZN9Scheduler9schedulerE>
    8000171c:	04078263          	beqz	a5,80001760 <_ZN9Scheduler3getEv+0x64>
    PCB* fr = scheduler->queuePCB.front();
    80001720:	00004917          	auipc	s2,0x4
    80001724:	73090913          	addi	s2,s2,1840 # 80005e50 <_ZN9Scheduler9schedulerE>
    80001728:	00093503          	ld	a0,0(s2)
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	e94080e7          	jalr	-364(ra) # 800015c0 <_ZN5Queue5frontEv>
    80001734:	00050493          	mv	s1,a0
    scheduler->queuePCB.pop();
    80001738:	00093503          	ld	a0,0(s2)
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	dd8080e7          	jalr	-552(ra) # 80001514 <_ZN5Queue3popEv>
}
    80001744:	00048513          	mv	a0,s1
    80001748:	01813083          	ld	ra,24(sp)
    8000174c:	01013403          	ld	s0,16(sp)
    80001750:	00813483          	ld	s1,8(sp)
    80001754:	00013903          	ld	s2,0(sp)
    80001758:	02010113          	addi	sp,sp,32
    8000175c:	00008067          	ret
        scheduler = new Scheduler();
    80001760:	01000513          	li	a0,16
    80001764:	00000097          	auipc	ra,0x0
    80001768:	ef0080e7          	jalr	-272(ra) # 80001654 <_ZN9SchedulernwEm>
    8000176c:	00050493          	mv	s1,a0
    80001770:	00053023          	sd	zero,0(a0)
    80001774:	00053423          	sd	zero,8(a0)
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	e6c080e7          	jalr	-404(ra) # 800015e4 <_ZN5QueueC1Ev>
    80001780:	00004797          	auipc	a5,0x4
    80001784:	6c97b823          	sd	s1,1744(a5) # 80005e50 <_ZN9Scheduler9schedulerE>
    80001788:	f99ff06f          	j	80001720 <_ZN9Scheduler3getEv+0x24>

000000008000178c <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p) {
    8000178c:	ff010113          	addi	sp,sp,-16
    80001790:	00813423          	sd	s0,8(sp)
    80001794:	01010413          	addi	s0,sp,16
    //kfree(p);
}
    80001798:	00813403          	ld	s0,8(sp)
    8000179c:	01010113          	addi	sp,sp,16
    800017a0:	00008067          	ret

00000000800017a4 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize() {
    800017a4:	fe010113          	addi	sp,sp,-32
    800017a8:	00113c23          	sd	ra,24(sp)
    800017ac:	00813823          	sd	s0,16(sp)
    800017b0:	00913423          	sd	s1,8(sp)
    800017b4:	02010413          	addi	s0,sp,32
    if(scheduler == 0)
    800017b8:	00004797          	auipc	a5,0x4
    800017bc:	6987b783          	ld	a5,1688(a5) # 80005e50 <_ZN9Scheduler9schedulerE>
    800017c0:	02078463          	beqz	a5,800017e8 <_ZN9Scheduler7getSizeEv+0x44>
        scheduler = new Scheduler();
    return scheduler->queuePCB.size();
    800017c4:	00004517          	auipc	a0,0x4
    800017c8:	68c53503          	ld	a0,1676(a0) # 80005e50 <_ZN9Scheduler9schedulerE>
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	e58080e7          	jalr	-424(ra) # 80001624 <_ZN5Queue4sizeEv>
}
    800017d4:	01813083          	ld	ra,24(sp)
    800017d8:	01013403          	ld	s0,16(sp)
    800017dc:	00813483          	ld	s1,8(sp)
    800017e0:	02010113          	addi	sp,sp,32
    800017e4:	00008067          	ret
        scheduler = new Scheduler();
    800017e8:	01000513          	li	a0,16
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	e68080e7          	jalr	-408(ra) # 80001654 <_ZN9SchedulernwEm>
    800017f4:	00050493          	mv	s1,a0
    800017f8:	00053023          	sd	zero,0(a0)
    800017fc:	00053423          	sd	zero,8(a0)
    80001800:	00000097          	auipc	ra,0x0
    80001804:	de4080e7          	jalr	-540(ra) # 800015e4 <_ZN5QueueC1Ev>
    80001808:	00004797          	auipc	a5,0x4
    8000180c:	6497b423          	sd	s1,1608(a5) # 80005e50 <_ZN9Scheduler9schedulerE>
    80001810:	fb5ff06f          	j	800017c4 <_ZN9Scheduler7getSizeEv+0x20>

0000000080001814 <_Z15thread1FunctionPv>:
    Riscv::printInteger(x);
    Riscv::printString("\n");*/
}

void thread1Function(void* p)
{
    80001814:	fe010113          	addi	sp,sp,-32
    80001818:	00113c23          	sd	ra,24(sp)
    8000181c:	00813823          	sd	s0,16(sp)
    80001820:	00913423          	sd	s1,8(sp)
    80001824:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 1 started...\n");
    80001828:	00004517          	auipc	a0,0x4
    8000182c:	85850513          	addi	a0,a0,-1960 # 80005080 <CONSOLE_STATUS+0x70>
    80001830:	00000097          	auipc	ra,0x0
    80001834:	784080e7          	jalr	1924(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < 10;i++)
    80001838:	00000493          	li	s1,0
    8000183c:	0340006f          	j	80001870 <_Z15thread1FunctionPv+0x5c>
    {
        Riscv::printInteger(Scheduler::getSize());
        if(i % 4 == 0 && i > 0)
            thread_dispatch();
        Riscv::printString("i : ");
    80001840:	00004517          	auipc	a0,0x4
    80001844:	85850513          	addi	a0,a0,-1960 # 80005098 <CONSOLE_STATUS+0x88>
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	76c080e7          	jalr	1900(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    80001850:	00048513          	mv	a0,s1
    80001854:	00000097          	auipc	ra,0x0
    80001858:	7d0080e7          	jalr	2000(ra) # 80002024 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    8000185c:	00004517          	auipc	a0,0x4
    80001860:	9e450513          	addi	a0,a0,-1564 # 80005240 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001864:	00000097          	auipc	ra,0x0
    80001868:	750080e7          	jalr	1872(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < 10;i++)
    8000186c:	0014849b          	addiw	s1,s1,1
    80001870:	00900793          	li	a5,9
    80001874:	0297c663          	blt	a5,s1,800018a0 <_Z15thread1FunctionPv+0x8c>
        Riscv::printInteger(Scheduler::getSize());
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	f2c080e7          	jalr	-212(ra) # 800017a4 <_ZN9Scheduler7getSizeEv>
    80001880:	00000097          	auipc	ra,0x0
    80001884:	7a4080e7          	jalr	1956(ra) # 80002024 <_ZN5Riscv12printIntegerEm>
        if(i % 4 == 0 && i > 0)
    80001888:	0034f793          	andi	a5,s1,3
    8000188c:	fa079ae3          	bnez	a5,80001840 <_Z15thread1FunctionPv+0x2c>
    80001890:	fa9058e3          	blez	s1,80001840 <_Z15thread1FunctionPv+0x2c>
            thread_dispatch();
    80001894:	00000097          	auipc	ra,0x0
    80001898:	a64080e7          	jalr	-1436(ra) # 800012f8 <thread_dispatch>
    8000189c:	fa5ff06f          	j	80001840 <_Z15thread1FunctionPv+0x2c>
    }
}
    800018a0:	01813083          	ld	ra,24(sp)
    800018a4:	01013403          	ld	s0,16(sp)
    800018a8:	00813483          	ld	s1,8(sp)
    800018ac:	02010113          	addi	sp,sp,32
    800018b0:	00008067          	ret

00000000800018b4 <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    800018b4:	fe010113          	addi	sp,sp,-32
    800018b8:	00113c23          	sd	ra,24(sp)
    800018bc:	00813823          	sd	s0,16(sp)
    800018c0:	00913423          	sd	s1,8(sp)
    800018c4:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    800018c8:	00003517          	auipc	a0,0x3
    800018cc:	7d850513          	addi	a0,a0,2008 # 800050a0 <CONSOLE_STATUS+0x90>
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	6e4080e7          	jalr	1764(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
    for(int j = 0; j < 10;j++)
    800018d8:	00000493          	li	s1,0
    800018dc:	0340006f          	j	80001910 <_Z15thread2FunctionPv+0x5c>
    {
        Riscv::printInteger(Scheduler::getSize());
        if(j % 5 == 0 && j > 0)
            thread_dispatch();
        Riscv::printString("j : ");
    800018e0:	00003517          	auipc	a0,0x3
    800018e4:	7d850513          	addi	a0,a0,2008 # 800050b8 <CONSOLE_STATUS+0xa8>
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	6cc080e7          	jalr	1740(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    800018f0:	00048513          	mv	a0,s1
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	730080e7          	jalr	1840(ra) # 80002024 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800018fc:	00004517          	auipc	a0,0x4
    80001900:	94450513          	addi	a0,a0,-1724 # 80005240 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001904:	00000097          	auipc	ra,0x0
    80001908:	6b0080e7          	jalr	1712(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
    for(int j = 0; j < 10;j++)
    8000190c:	0014849b          	addiw	s1,s1,1
    80001910:	00900793          	li	a5,9
    80001914:	0297c863          	blt	a5,s1,80001944 <_Z15thread2FunctionPv+0x90>
        Riscv::printInteger(Scheduler::getSize());
    80001918:	00000097          	auipc	ra,0x0
    8000191c:	e8c080e7          	jalr	-372(ra) # 800017a4 <_ZN9Scheduler7getSizeEv>
    80001920:	00000097          	auipc	ra,0x0
    80001924:	704080e7          	jalr	1796(ra) # 80002024 <_ZN5Riscv12printIntegerEm>
        if(j % 5 == 0 && j > 0)
    80001928:	00500793          	li	a5,5
    8000192c:	02f4e7bb          	remw	a5,s1,a5
    80001930:	fa0798e3          	bnez	a5,800018e0 <_Z15thread2FunctionPv+0x2c>
    80001934:	fa9056e3          	blez	s1,800018e0 <_Z15thread2FunctionPv+0x2c>
            thread_dispatch();
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	9c0080e7          	jalr	-1600(ra) # 800012f8 <thread_dispatch>
    80001940:	fa1ff06f          	j	800018e0 <_Z15thread2FunctionPv+0x2c>
    }
}
    80001944:	01813083          	ld	ra,24(sp)
    80001948:	01013403          	ld	s0,16(sp)
    8000194c:	00813483          	ld	s1,8(sp)
    80001950:	02010113          	addi	sp,sp,32
    80001954:	00008067          	ret

0000000080001958 <_Z9testQueuev>:
{
    80001958:	ff010113          	addi	sp,sp,-16
    8000195c:	00813423          	sd	s0,8(sp)
    80001960:	01010413          	addi	s0,sp,16
}
    80001964:	00813403          	ld	s0,8(sp)
    80001968:	01010113          	addi	sp,sp,16
    8000196c:	00008067          	ret

0000000080001970 <_Z11threadTestsv>:

void threadTests()
{
    80001970:	fe010113          	addi	sp,sp,-32
    80001974:	00113c23          	sd	ra,24(sp)
    80001978:	00813823          	sd	s0,16(sp)
    8000197c:	00913423          	sd	s1,8(sp)
    80001980:	01213023          	sd	s2,0(sp)
    80001984:	02010413          	addi	s0,sp,32
    Thread* t = new Thread(0, 0);
    80001988:	00800513          	li	a0,8
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	4ac080e7          	jalr	1196(ra) # 80001e38 <_Znwm>
    80001994:	00050493          	mv	s1,a0
    80001998:	00000613          	li	a2,0
    8000199c:	00000593          	li	a1,0
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	550080e7          	jalr	1360(ra) # 80001ef0 <_ZN6ThreadC1EPFvPvES0_>
    PCB::running = t->myHandle;
    800019a8:	0004b703          	ld	a4,0(s1)
    800019ac:	00004797          	auipc	a5,0x4
    800019b0:	4447b783          	ld	a5,1092(a5) # 80005df0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800019b4:	00e7b023          	sd	a4,0(a5)
    Thread* t1 = new Thread(&thread1Function, 0);
    800019b8:	00800513          	li	a0,8
    800019bc:	00000097          	auipc	ra,0x0
    800019c0:	47c080e7          	jalr	1148(ra) # 80001e38 <_Znwm>
    800019c4:	00050493          	mv	s1,a0
    800019c8:	00000613          	li	a2,0
    800019cc:	00000597          	auipc	a1,0x0
    800019d0:	e4858593          	addi	a1,a1,-440 # 80001814 <_Z15thread1FunctionPv>
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	51c080e7          	jalr	1308(ra) # 80001ef0 <_ZN6ThreadC1EPFvPvES0_>
    Scheduler::put(t1->myHandle);
    800019dc:	0004b503          	ld	a0,0(s1)
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	c9c080e7          	jalr	-868(ra) # 8000167c <_ZN9Scheduler3putEP3PCB>
    Thread* t2 = new Thread(&thread2Function, 0);
    800019e8:	00800513          	li	a0,8
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	44c080e7          	jalr	1100(ra) # 80001e38 <_Znwm>
    800019f4:	00050913          	mv	s2,a0
    800019f8:	00000613          	li	a2,0
    800019fc:	00000597          	auipc	a1,0x0
    80001a00:	eb858593          	addi	a1,a1,-328 # 800018b4 <_Z15thread2FunctionPv>
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	4ec080e7          	jalr	1260(ra) # 80001ef0 <_ZN6ThreadC1EPFvPvES0_>
    Scheduler::put(t2->myHandle);
    80001a0c:	00093503          	ld	a0,0(s2)
    80001a10:	00000097          	auipc	ra,0x0
    80001a14:	c6c080e7          	jalr	-916(ra) # 8000167c <_ZN9Scheduler3putEP3PCB>
    80001a18:	00c0006f          	j	80001a24 <_Z11threadTestsv+0xb4>
    //Riscv::enableInterrupts();

    while(!t1->myHandle->getFinished()
        || !t2->myHandle->getFinished())
    {
        thread_dispatch();
    80001a1c:	00000097          	auipc	ra,0x0
    80001a20:	8dc080e7          	jalr	-1828(ra) # 800012f8 <thread_dispatch>
    while(!t1->myHandle->getFinished()
    80001a24:	0004b783          	ld	a5,0(s1)

    bool getFinished() { return finished;}
    80001a28:	0307c783          	lbu	a5,48(a5)
        || !t2->myHandle->getFinished())
    80001a2c:	fe0788e3          	beqz	a5,80001a1c <_Z11threadTestsv+0xac>
    80001a30:	00093783          	ld	a5,0(s2)
    80001a34:	0307c783          	lbu	a5,48(a5)
    80001a38:	fe0782e3          	beqz	a5,80001a1c <_Z11threadTestsv+0xac>
    }

    Riscv::printString("End...");
    80001a3c:	00003517          	auipc	a0,0x3
    80001a40:	68450513          	addi	a0,a0,1668 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001a44:	00000097          	auipc	ra,0x0
    80001a48:	570080e7          	jalr	1392(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
}
    80001a4c:	01813083          	ld	ra,24(sp)
    80001a50:	01013403          	ld	s0,16(sp)
    80001a54:	00813483          	ld	s1,8(sp)
    80001a58:	00013903          	ld	s2,0(sp)
    80001a5c:	02010113          	addi	sp,sp,32
    80001a60:	00008067          	ret
    80001a64:	00050913          	mv	s2,a0
    Thread* t = new Thread(0, 0);
    80001a68:	00048513          	mv	a0,s1
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	3f4080e7          	jalr	1012(ra) # 80001e60 <_ZdlPv>
    80001a74:	00090513          	mv	a0,s2
    80001a78:	00005097          	auipc	ra,0x5
    80001a7c:	4c0080e7          	jalr	1216(ra) # 80006f38 <_Unwind_Resume>
    80001a80:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a84:	00048513          	mv	a0,s1
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	3d8080e7          	jalr	984(ra) # 80001e60 <_ZdlPv>
    80001a90:	00090513          	mv	a0,s2
    80001a94:	00005097          	auipc	ra,0x5
    80001a98:	4a4080e7          	jalr	1188(ra) # 80006f38 <_Unwind_Resume>
    80001a9c:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    80001aa0:	00090513          	mv	a0,s2
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	3bc080e7          	jalr	956(ra) # 80001e60 <_ZdlPv>
    80001aac:	00048513          	mv	a0,s1
    80001ab0:	00005097          	auipc	ra,0x5
    80001ab4:	488080e7          	jalr	1160(ra) # 80006f38 <_Unwind_Resume>

0000000080001ab8 <main>:
{
    80001ab8:	ff010113          	addi	sp,sp,-16
    80001abc:	00113423          	sd	ra,8(sp)
    80001ac0:	00813023          	sd	s0,0(sp)
    80001ac4:	01010413          	addi	s0,sp,16
    Riscv::initSystem();
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	468080e7          	jalr	1128(ra) # 80001f30 <_ZN5Riscv10initSystemEv>
    threadTests();
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	ea0080e7          	jalr	-352(ra) # 80001970 <_Z11threadTestsv>
}
    80001ad8:	00813083          	ld	ra,8(sp)
    80001adc:	00013403          	ld	s0,0(sp)
    80001ae0:	01010113          	addi	sp,sp,16
    80001ae4:	00008067          	ret

0000000080001ae8 <_Z10mallocFreev>:


//memory (de)allocation tests
void mallocFree()
{
    80001ae8:	cc010113          	addi	sp,sp,-832
    80001aec:	32113c23          	sd	ra,824(sp)
    80001af0:	32813823          	sd	s0,816(sp)
    80001af4:	32913423          	sd	s1,808(sp)
    80001af8:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    80001afc:	00003517          	auipc	a0,0x3
    80001b00:	5cc50513          	addi	a0,a0,1484 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001b04:	00000097          	auipc	ra,0x0
    80001b08:	4b0080e7          	jalr	1200(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    80001b0c:	00000493          	li	s1,0
    80001b10:	0080006f          	j	80001b18 <_Z10mallocFreev+0x30>
    80001b14:	0014849b          	addiw	s1,s1,1
    80001b18:	06300793          	li	a5,99
    80001b1c:	0497c463          	blt	a5,s1,80001b64 <_Z10mallocFreev+0x7c>
    {
        addrs[i] = mem_alloc(100);
    80001b20:	06400513          	li	a0,100
    80001b24:	fffff097          	auipc	ra,0xfffff
    80001b28:	6f8080e7          	jalr	1784(ra) # 8000121c <mem_alloc>
    80001b2c:	00349793          	slli	a5,s1,0x3
    80001b30:	fe040713          	addi	a4,s0,-32
    80001b34:	00f707b3          	add	a5,a4,a5
    80001b38:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001b3c:	fc051ce3          	bnez	a0,80001b14 <_Z10mallocFreev+0x2c>
        {
            Riscv::printString("not OK\n");
    80001b40:	00003517          	auipc	a0,0x3
    80001b44:	59850513          	addi	a0,a0,1432 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	46c080e7          	jalr	1132(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
            return;
        }
    }

    Riscv::printString("OK\n");
}
    80001b50:	33813083          	ld	ra,824(sp)
    80001b54:	33013403          	ld	s0,816(sp)
    80001b58:	32813483          	ld	s1,808(sp)
    80001b5c:	34010113          	addi	sp,sp,832
    80001b60:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001b64:	00000493          	li	s1,0
    80001b68:	06300793          	li	a5,99
    80001b6c:	0297ce63          	blt	a5,s1,80001ba8 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001b70:	00349793          	slli	a5,s1,0x3
    80001b74:	fe040713          	addi	a4,s0,-32
    80001b78:	00f707b3          	add	a5,a4,a5
    80001b7c:	ce07b503          	ld	a0,-800(a5)
    80001b80:	fffff097          	auipc	ra,0xfffff
    80001b84:	6cc080e7          	jalr	1740(ra) # 8000124c <mem_free>
        if(retval != 0)
    80001b88:	00051663          	bnez	a0,80001b94 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001b8c:	0024849b          	addiw	s1,s1,2
    80001b90:	fd9ff06f          	j	80001b68 <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    80001b94:	00003517          	auipc	a0,0x3
    80001b98:	54450513          	addi	a0,a0,1348 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	418080e7          	jalr	1048(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
            return;
    80001ba4:	fadff06f          	j	80001b50 <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001ba8:	00000493          	li	s1,0
    80001bac:	0080006f          	j	80001bb4 <_Z10mallocFreev+0xcc>
    80001bb0:	0024849b          	addiw	s1,s1,2
    80001bb4:	06300793          	li	a5,99
    80001bb8:	0297cc63          	blt	a5,s1,80001bf0 <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001bbc:	01400513          	li	a0,20
    80001bc0:	fffff097          	auipc	ra,0xfffff
    80001bc4:	65c080e7          	jalr	1628(ra) # 8000121c <mem_alloc>
    80001bc8:	00349793          	slli	a5,s1,0x3
    80001bcc:	fe040713          	addi	a4,s0,-32
    80001bd0:	00f707b3          	add	a5,a4,a5
    80001bd4:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001bd8:	fc051ce3          	bnez	a0,80001bb0 <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    80001bdc:	00003517          	auipc	a0,0x3
    80001be0:	4fc50513          	addi	a0,a0,1276 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	3d0080e7          	jalr	976(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
            return;
    80001bec:	f65ff06f          	j	80001b50 <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001bf0:	00000493          	li	s1,0
    80001bf4:	06300793          	li	a5,99
    80001bf8:	0297ce63          	blt	a5,s1,80001c34 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001bfc:	00349793          	slli	a5,s1,0x3
    80001c00:	fe040713          	addi	a4,s0,-32
    80001c04:	00f707b3          	add	a5,a4,a5
    80001c08:	ce07b503          	ld	a0,-800(a5)
    80001c0c:	fffff097          	auipc	ra,0xfffff
    80001c10:	640080e7          	jalr	1600(ra) # 8000124c <mem_free>
        if(retval != 0)
    80001c14:	00051663          	bnez	a0,80001c20 <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001c18:	0014849b          	addiw	s1,s1,1
    80001c1c:	fd9ff06f          	j	80001bf4 <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    80001c20:	00003517          	auipc	a0,0x3
    80001c24:	4b850513          	addi	a0,a0,1208 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	38c080e7          	jalr	908(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
            return;
    80001c30:	f21ff06f          	j	80001b50 <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001c34:	00003517          	auipc	a0,0x3
    80001c38:	4ac50513          	addi	a0,a0,1196 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001c3c:	00000097          	auipc	ra,0x0
    80001c40:	378080e7          	jalr	888(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
    80001c44:	f0dff06f          	j	80001b50 <_Z10mallocFreev+0x68>

0000000080001c48 <_Z9bigMallocv>:
void bigMalloc()
{
    80001c48:	ff010113          	addi	sp,sp,-16
    80001c4c:	00113423          	sd	ra,8(sp)
    80001c50:	00813023          	sd	s0,0(sp)
    80001c54:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    80001c58:	00003517          	auipc	a0,0x3
    80001c5c:	49050513          	addi	a0,a0,1168 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001c60:	00000097          	auipc	ra,0x0
    80001c64:	354080e7          	jalr	852(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001c68:	00004797          	auipc	a5,0x4
    80001c6c:	1907b783          	ld	a5,400(a5) # 80005df8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c70:	0007b503          	ld	a0,0(a5)
    80001c74:	00004797          	auipc	a5,0x4
    80001c78:	15c7b783          	ld	a5,348(a5) # 80005dd0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c7c:	0007b783          	ld	a5,0(a5)
    80001c80:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001c84:	06450513          	addi	a0,a0,100
    80001c88:	fffff097          	auipc	ra,0xfffff
    80001c8c:	594080e7          	jalr	1428(ra) # 8000121c <mem_alloc>
    if(p == 0)
    80001c90:	02050263          	beqz	a0,80001cb4 <_Z9bigMallocv+0x6c>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    80001c94:	00003517          	auipc	a0,0x3
    80001c98:	44450513          	addi	a0,a0,1092 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	318080e7          	jalr	792(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
}
    80001ca4:	00813083          	ld	ra,8(sp)
    80001ca8:	00013403          	ld	s0,0(sp)
    80001cac:	01010113          	addi	sp,sp,16
    80001cb0:	00008067          	ret
        Riscv::printString("OK\n");
    80001cb4:	00003517          	auipc	a0,0x3
    80001cb8:	42c50513          	addi	a0,a0,1068 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	2f8080e7          	jalr	760(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
    80001cc4:	fe1ff06f          	j	80001ca4 <_Z9bigMallocv+0x5c>

0000000080001cc8 <_Z17lotOfSmallMallocsv>:

void lotOfSmallMallocs()
{
    80001cc8:	fd010113          	addi	sp,sp,-48
    80001ccc:	02113423          	sd	ra,40(sp)
    80001cd0:	02813023          	sd	s0,32(sp)
    80001cd4:	00913c23          	sd	s1,24(sp)
    80001cd8:	01213823          	sd	s2,16(sp)
    80001cdc:	01313423          	sd	s3,8(sp)
    80001ce0:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001ce4:	00003517          	auipc	a0,0x3
    80001ce8:	41450513          	addi	a0,a0,1044 # 800050f8 <CONSOLE_STATUS+0xe8>
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	2c8080e7          	jalr	712(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
    uint64 cnt = 0;
    uint64 sum = 0;
    uint64 N = 10000UL;
    uint64 X = 10UL;
    for(uint64 i = 0; i < N;i++)
    80001cf4:	00000493          	li	s1,0
    uint64 sum = 0;
    80001cf8:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001cfc:	00000913          	li	s2,0
    80001d00:	0180006f          	j	80001d18 <_Z17lotOfSmallMallocsv+0x50>
    {
        Test* t = (Test*)mem_alloc(sizeof(Test));
        if(t == 0)
            break;
        t->a = X;
    80001d04:	00a00793          	li	a5,10
    80001d08:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001d0c:	00a98993          	addi	s3,s3,10
        cnt++;
    80001d10:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001d14:	00148493          	addi	s1,s1,1
    80001d18:	000027b7          	lui	a5,0x2
    80001d1c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001d20:	0097ea63          	bltu	a5,s1,80001d34 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001d24:	00800513          	li	a0,8
    80001d28:	fffff097          	auipc	ra,0xfffff
    80001d2c:	4f4080e7          	jalr	1268(ra) # 8000121c <mem_alloc>
        if(t == 0)
    80001d30:	fc051ae3          	bnez	a0,80001d04 <_Z17lotOfSmallMallocsv+0x3c>
    }
    Riscv::printInteger(cnt);
    80001d34:	00090513          	mv	a0,s2
    80001d38:	00000097          	auipc	ra,0x0
    80001d3c:	2ec080e7          	jalr	748(ra) # 80002024 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001d40:	00003517          	auipc	a0,0x3
    80001d44:	50050513          	addi	a0,a0,1280 # 80005240 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	26c080e7          	jalr	620(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001d50:	00291793          	slli	a5,s2,0x2
    80001d54:	01278933          	add	s2,a5,s2
    80001d58:	00191913          	slli	s2,s2,0x1
    80001d5c:	03390863          	beq	s2,s3,80001d8c <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    80001d60:	00003517          	auipc	a0,0x3
    80001d64:	37850513          	addi	a0,a0,888 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001d68:	00000097          	auipc	ra,0x0
    80001d6c:	24c080e7          	jalr	588(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
}
    80001d70:	02813083          	ld	ra,40(sp)
    80001d74:	02013403          	ld	s0,32(sp)
    80001d78:	01813483          	ld	s1,24(sp)
    80001d7c:	01013903          	ld	s2,16(sp)
    80001d80:	00813983          	ld	s3,8(sp)
    80001d84:	03010113          	addi	sp,sp,48
    80001d88:	00008067          	ret
        Riscv::printString("OK\n");
    80001d8c:	00003517          	auipc	a0,0x3
    80001d90:	35450513          	addi	a0,a0,852 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001d94:	00000097          	auipc	ra,0x0
    80001d98:	220080e7          	jalr	544(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
    80001d9c:	fd5ff06f          	j	80001d70 <_Z17lotOfSmallMallocsv+0xa8>

0000000080001da0 <_Z7badFreev>:
void badFree()
{
    80001da0:	ff010113          	addi	sp,sp,-16
    80001da4:	00113423          	sd	ra,8(sp)
    80001da8:	00813023          	sd	s0,0(sp)
    80001dac:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001db0:	00003517          	auipc	a0,0x3
    80001db4:	36050513          	addi	a0,a0,864 # 80005110 <CONSOLE_STATUS+0x100>
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	1fc080e7          	jalr	508(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001dc0:	00800513          	li	a0,8
    80001dc4:	fffff097          	auipc	ra,0xfffff
    80001dc8:	458080e7          	jalr	1112(ra) # 8000121c <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001dcc:	00250513          	addi	a0,a0,2
    80001dd0:	fffff097          	auipc	ra,0xfffff
    80001dd4:	47c080e7          	jalr	1148(ra) # 8000124c <mem_free>
    if(retval == 0)
    80001dd8:	02051263          	bnez	a0,80001dfc <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001ddc:	00003517          	auipc	a0,0x3
    80001de0:	2fc50513          	addi	a0,a0,764 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001de4:	00000097          	auipc	ra,0x0
    80001de8:	1d0080e7          	jalr	464(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
    else
        Riscv::printString("OK\n");
}
    80001dec:	00813083          	ld	ra,8(sp)
    80001df0:	00013403          	ld	s0,0(sp)
    80001df4:	01010113          	addi	sp,sp,16
    80001df8:	00008067          	ret
        Riscv::printString("OK\n");
    80001dfc:	00003517          	auipc	a0,0x3
    80001e00:	2e450513          	addi	a0,a0,740 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001e04:	00000097          	auipc	ra,0x0
    80001e08:	1b0080e7          	jalr	432(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>
}
    80001e0c:	fe1ff06f          	j	80001dec <_Z7badFreev+0x4c>

0000000080001e10 <_Z21memoryAllocationTestsv>:

void memoryAllocationTests()
{
    80001e10:	ff010113          	addi	sp,sp,-16
    80001e14:	00113423          	sd	ra,8(sp)
    80001e18:	00813023          	sd	s0,0(sp)
    80001e1c:	01010413          	addi	s0,sp,16
    //bigMalloc();
    //lotOfSmallMallocs();
    //mallocFree();
    badFree();
    80001e20:	00000097          	auipc	ra,0x0
    80001e24:	f80080e7          	jalr	-128(ra) # 80001da0 <_Z7badFreev>
}
    80001e28:	00813083          	ld	ra,8(sp)
    80001e2c:	00013403          	ld	s0,0(sp)
    80001e30:	01010113          	addi	sp,sp,16
    80001e34:	00008067          	ret

0000000080001e38 <_Znwm>:

#include "../h/syscall_cpp.h"

//general
void * operator new(size_t size)
{
    80001e38:	ff010113          	addi	sp,sp,-16
    80001e3c:	00113423          	sd	ra,8(sp)
    80001e40:	00813023          	sd	s0,0(sp)
    80001e44:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001e48:	fffff097          	auipc	ra,0xfffff
    80001e4c:	3d4080e7          	jalr	980(ra) # 8000121c <mem_alloc>
}
    80001e50:	00813083          	ld	ra,8(sp)
    80001e54:	00013403          	ld	s0,0(sp)
    80001e58:	01010113          	addi	sp,sp,16
    80001e5c:	00008067          	ret

0000000080001e60 <_ZdlPv>:

void operator delete(void * p)
{
    80001e60:	ff010113          	addi	sp,sp,-16
    80001e64:	00113423          	sd	ra,8(sp)
    80001e68:	00813023          	sd	s0,0(sp)
    80001e6c:	01010413          	addi	s0,sp,16
   mem_free(p);
    80001e70:	fffff097          	auipc	ra,0xfffff
    80001e74:	3dc080e7          	jalr	988(ra) # 8000124c <mem_free>
}
    80001e78:	00813083          	ld	ra,8(sp)
    80001e7c:	00013403          	ld	s0,0(sp)
    80001e80:	01010113          	addi	sp,sp,16
    80001e84:	00008067          	ret

0000000080001e88 <_ZN6Thread5startEv>:

//Thread

//todo
//diskusija u os1 proj sheet-u
void Thread::start() {
    80001e88:	ff010113          	addi	sp,sp,-16
    80001e8c:	00813423          	sd	s0,8(sp)
    80001e90:	01010413          	addi	s0,sp,16
    //int retval = thread_create(&myHandle, )
}
    80001e94:	00813403          	ld	s0,8(sp)
    80001e98:	01010113          	addi	sp,sp,16
    80001e9c:	00008067          	ret

0000000080001ea0 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80001ea0:	ff010113          	addi	sp,sp,-16
    80001ea4:	00113423          	sd	ra,8(sp)
    80001ea8:	00813023          	sd	s0,0(sp)
    80001eac:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001eb0:	fffff097          	auipc	ra,0xfffff
    80001eb4:	448080e7          	jalr	1096(ra) # 800012f8 <thread_dispatch>
}
    80001eb8:	00813083          	ld	ra,8(sp)
    80001ebc:	00013403          	ld	s0,0(sp)
    80001ec0:	01010113          	addi	sp,sp,16
    80001ec4:	00008067          	ret

0000000080001ec8 <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    80001ec8:	ff010113          	addi	sp,sp,-16
    80001ecc:	00113423          	sd	ra,8(sp)
    80001ed0:	00813023          	sd	s0,0(sp)
    80001ed4:	01010413          	addi	s0,sp,16
    PCB::sleep(time);
    80001ed8:	fffff097          	auipc	ra,0xfffff
    80001edc:	524080e7          	jalr	1316(ra) # 800013fc <_ZN3PCB5sleepEm>
}
    80001ee0:	00813083          	ld	ra,8(sp)
    80001ee4:	00013403          	ld	s0,0(sp)
    80001ee8:	01010113          	addi	sp,sp,16
    80001eec:	00008067          	ret

0000000080001ef0 <_ZN6ThreadC1EPFvPvES0_>:

Thread::Thread(void (*body)(void *), void *args) {
    80001ef0:	ff010113          	addi	sp,sp,-16
    80001ef4:	00113423          	sd	ra,8(sp)
    80001ef8:	00813023          	sd	s0,0(sp)
    80001efc:	01010413          	addi	s0,sp,16
    int retval = thread_create((void**)&myHandle, body, args);
    80001f00:	fffff097          	auipc	ra,0xfffff
    80001f04:	378080e7          	jalr	888(ra) # 80001278 <thread_create>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    80001f08:	00813083          	ld	ra,8(sp)
    80001f0c:	00013403          	ld	s0,0(sp)
    80001f10:	01010113          	addi	sp,sp,16
    80001f14:	00008067          	ret

0000000080001f18 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    80001f18:	ff010113          	addi	sp,sp,-16
    80001f1c:	00813423          	sd	s0,8(sp)
    80001f20:	01010413          	addi	s0,sp,16

}
    80001f24:	00813403          	ld	s0,8(sp)
    80001f28:	01010113          	addi	sp,sp,16
    80001f2c:	00008067          	ret

0000000080001f30 <_ZN5Riscv10initSystemEv>:
#include "../h/PCB.h"
#include "../lib/console.h"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem() {
    80001f30:	ff010113          	addi	sp,sp,-16
    80001f34:	00813423          	sd	s0,8(sp)
    80001f38:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80001f3c:	00004797          	auipc	a5,0x4
    80001f40:	e9c7b783          	ld	a5,-356(a5) # 80005dd8 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80001f44:	10579073          	csrw	stvec,a5
    //todo
    //no need for comment, but sync context switch
    //should be tested, before hardware interrupts are enabled
    //Riscv::enableInterrupts();
}
    80001f48:	00813403          	ld	s0,8(sp)
    80001f4c:	01010113          	addi	sp,sp,16
    80001f50:	00008067          	ret

0000000080001f54 <_ZN5Riscv16enableInterruptsEv>:

void Riscv::enableInterrupts() {
    80001f54:	ff010113          	addi	sp,sp,-16
    80001f58:	00813423          	sd	s0,8(sp)
    80001f5c:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80001f60:	00200793          	li	a5,2
    80001f64:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
}
    80001f68:	00813403          	ld	s0,8(sp)
    80001f6c:	01010113          	addi	sp,sp,16
    80001f70:	00008067          	ret

0000000080001f74 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80001f74:	ff010113          	addi	sp,sp,-16
    80001f78:	00813423          	sd	s0,8(sp)
    80001f7c:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80001f80:	00200793          	li	a5,2
    80001f84:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
}
    80001f88:	00813403          	ld	s0,8(sp)
    80001f8c:	01010113          	addi	sp,sp,16
    80001f90:	00008067          	ret

0000000080001f94 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80001f94:	ff010113          	addi	sp,sp,-16
    80001f98:	00813423          	sd	s0,8(sp)
    80001f9c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001fa0:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001fa4:	10200073          	sret
}
    80001fa8:	00813403          	ld	s0,8(sp)
    80001fac:	01010113          	addi	sp,sp,16
    80001fb0:	00008067          	ret

0000000080001fb4 <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    80001fb4:	fd010113          	addi	sp,sp,-48
    80001fb8:	02113423          	sd	ra,40(sp)
    80001fbc:	02813023          	sd	s0,32(sp)
    80001fc0:	00913c23          	sd	s1,24(sp)
    80001fc4:	01213823          	sd	s2,16(sp)
    80001fc8:	03010413          	addi	s0,sp,48
    80001fcc:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001fd0:	100027f3          	csrr	a5,sstatus
    80001fd4:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001fd8:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80001fdc:	00200793          	li	a5,2
    80001fe0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    80001fe4:	0004c503          	lbu	a0,0(s1)
    80001fe8:	00050a63          	beqz	a0,80001ffc <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    80001fec:	00003097          	auipc	ra,0x3
    80001ff0:	8a0080e7          	jalr	-1888(ra) # 8000488c <__putc>
        string++;
    80001ff4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001ff8:	fedff06f          	j	80001fe4 <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80001ffc:	0009091b          	sext.w	s2,s2
    80002000:	00297913          	andi	s2,s2,2
    80002004:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002008:	10092073          	csrs	sstatus,s2
}
    8000200c:	02813083          	ld	ra,40(sp)
    80002010:	02013403          	ld	s0,32(sp)
    80002014:	01813483          	ld	s1,24(sp)
    80002018:	01013903          	ld	s2,16(sp)
    8000201c:	03010113          	addi	sp,sp,48
    80002020:	00008067          	ret

0000000080002024 <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    80002024:	fc010113          	addi	sp,sp,-64
    80002028:	02113c23          	sd	ra,56(sp)
    8000202c:	02813823          	sd	s0,48(sp)
    80002030:	02913423          	sd	s1,40(sp)
    80002034:	03213023          	sd	s2,32(sp)
    80002038:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000203c:	100027f3          	csrr	a5,sstatus
    80002040:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002044:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002048:	00200793          	li	a5,2
    8000204c:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80002050:	0005051b          	sext.w	a0,a0

    i = 0;
    80002054:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    80002058:	00a00613          	li	a2,10
    8000205c:	02c5773b          	remuw	a4,a0,a2
    80002060:	02071693          	slli	a3,a4,0x20
    80002064:	0206d693          	srli	a3,a3,0x20
    80002068:	00003717          	auipc	a4,0x3
    8000206c:	0b870713          	addi	a4,a4,184 # 80005120 <_ZZN5Riscv12printIntegerEmE6digits>
    80002070:	00d70733          	add	a4,a4,a3
    80002074:	00074703          	lbu	a4,0(a4)
    80002078:	fe040693          	addi	a3,s0,-32
    8000207c:	009687b3          	add	a5,a3,s1
    80002080:	0014849b          	addiw	s1,s1,1
    80002084:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80002088:	0005071b          	sext.w	a4,a0
    8000208c:	02c5553b          	divuw	a0,a0,a2
    80002090:	00900793          	li	a5,9
    80002094:	fce7e2e3          	bltu	a5,a4,80002058 <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80002098:	fff4849b          	addiw	s1,s1,-1
    8000209c:	0004ce63          	bltz	s1,800020b8 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    800020a0:	fe040793          	addi	a5,s0,-32
    800020a4:	009787b3          	add	a5,a5,s1
    800020a8:	ff07c503          	lbu	a0,-16(a5)
    800020ac:	00002097          	auipc	ra,0x2
    800020b0:	7e0080e7          	jalr	2016(ra) # 8000488c <__putc>
    800020b4:	fe5ff06f          	j	80002098 <_ZN5Riscv12printIntegerEm+0x74>

    Riscv::printString("\n");
    800020b8:	00003517          	auipc	a0,0x3
    800020bc:	18850513          	addi	a0,a0,392 # 80005240 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800020c0:	00000097          	auipc	ra,0x0
    800020c4:	ef4080e7          	jalr	-268(ra) # 80001fb4 <_ZN5Riscv11printStringEPKc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800020c8:	0009091b          	sext.w	s2,s2
    800020cc:	00297913          	andi	s2,s2,2
    800020d0:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800020d4:	10092073          	csrs	sstatus,s2
}
    800020d8:	03813083          	ld	ra,56(sp)
    800020dc:	03013403          	ld	s0,48(sp)
    800020e0:	02813483          	ld	s1,40(sp)
    800020e4:	02013903          	ld	s2,32(sp)
    800020e8:	04010113          	addi	sp,sp,64
    800020ec:	00008067          	ret

00000000800020f0 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    800020f0:	f9010113          	addi	sp,sp,-112
    800020f4:	06113423          	sd	ra,104(sp)
    800020f8:	06813023          	sd	s0,96(sp)
    800020fc:	04913c23          	sd	s1,88(sp)
    80002100:	05213823          	sd	s2,80(sp)
    80002104:	05313423          	sd	s3,72(sp)
    80002108:	05413023          	sd	s4,64(sp)
    8000210c:	03513c23          	sd	s5,56(sp)
    80002110:	03613823          	sd	s6,48(sp)
    80002114:	07010413          	addi	s0,sp,112

    uint64 a4;
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002118:	00070913          	mv	s2,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    8000211c:	142027f3          	csrr	a5,scause
    80002120:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    80002124:	f9843703          	ld	a4,-104(s0)

    uint64 scause = Riscv::r_scause();
    switch(scause) {
    80002128:	00900793          	li	a5,9
    8000212c:	08f70263          	beq	a4,a5,800021b0 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
    80002130:	fff00793          	li	a5,-1
    80002134:	03f79793          	slli	a5,a5,0x3f
    80002138:	00178793          	addi	a5,a5,1
    8000213c:	0af71663          	bne	a4,a5,800021e8 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>

        case timerInterrupt:

            //Riscv::printString("timerInterrupt\n");
            PCB::timeSliceCounter++;
    80002140:	00004717          	auipc	a4,0x4
    80002144:	ca073703          	ld	a4,-864(a4) # 80005de0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002148:	00073783          	ld	a5,0(a4)
    8000214c:	00178793          	addi	a5,a5,1
    80002150:	00f73023          	sd	a5,0(a4)
            if(PCB::running == 0)
    80002154:	00004717          	auipc	a4,0x4
    80002158:	c9c73703          	ld	a4,-868(a4) # 80005df0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000215c:	00073703          	ld	a4,0(a4)
    80002160:	08070463          	beqz	a4,800021e8 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    uint64 getTimeSlice() { return timeSlice;}
    80002164:	00073703          	ld	a4,0(a4)
                break;
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice()) {
    80002168:	00e7f863          	bgeu	a5,a4,80002178 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    8000216c:	00200793          	li	a5,2
    80002170:	1447b073          	csrc	sip,a5
}
    80002174:	0740006f          	j	800021e8 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002178:	141027f3          	csrr	a5,sepc
    8000217c:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80002180:	fa843483          	ld	s1,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002184:	100027f3          	csrr	a5,sstatus
    80002188:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    8000218c:	fa043903          	ld	s2,-96(s0)
                uint64 sepc = Riscv::r_sepc();
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
    80002190:	00004797          	auipc	a5,0x4
    80002194:	c507b783          	ld	a5,-944(a5) # 80005de0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002198:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    8000219c:	fffff097          	auipc	ra,0xfffff
    800021a0:	2a0080e7          	jalr	672(ra) # 8000143c <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800021a4:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800021a8:	14149073          	csrw	sepc,s1
}
    800021ac:	fc1ff06f          	j	8000216c <_ZN5Riscv20handleSupervisorTrapEv+0x7c>
            break;

        case ecallSystemInterupt:

            uint64 operation;
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    800021b0:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800021b4:	14102773          	csrr	a4,sepc
    800021b8:	fae43823          	sd	a4,-80(s0)
    return sepc;
    800021bc:	fb043483          	ld	s1,-80(s0)

            uint64 sepc = Riscv::r_sepc();
            sepc+=4;
    800021c0:	00448493          	addi	s1,s1,4

            if(operation == MemoryAllocator::MEM_ALLOC) {
    800021c4:	00100713          	li	a4,1
    800021c8:	04e78463          	beq	a5,a4,80002210 <_ZN5Riscv20handleSupervisorTrapEv+0x120>
                __asm__ volatile("mv %0, a1" : "=r"(size));
                size*=MEM_BLOCK_SIZE;
                void* allocatedAddr = kmalloc(size);
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
            }
            else if(operation == MemoryAllocator::MEM_FREE) {
    800021cc:	00200713          	li	a4,2
    800021d0:	04e78c63          	beq	a5,a4,80002228 <_ZN5Riscv20handleSupervisorTrapEv+0x138>
                //todo
                //only for testing
                uint64 retval = 0;
                __asm__ volatile("mv a0,%0" : :"r"(retval));
            }
            else if(operation == PCB::THREAD_CREATE)
    800021d4:	01100713          	li	a4,17
    800021d8:	06e78063          	beq	a5,a4,80002238 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    __asm__ volatile("li a0, 0");
                    //__asm__ volatile("mv a1, %0" : :"r"((uint64)newPCB));
                }

            }
            else if(operation == PCB::THREAD_DISPATCH)
    800021dc:	01300713          	li	a4,19
    800021e0:	0ae78263          	beq	a5,a4,80002284 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800021e4:	14149073          	csrw	sepc,s1

            break;
    }

    //console_handler();
}
    800021e8:	06813083          	ld	ra,104(sp)
    800021ec:	06013403          	ld	s0,96(sp)
    800021f0:	05813483          	ld	s1,88(sp)
    800021f4:	05013903          	ld	s2,80(sp)
    800021f8:	04813983          	ld	s3,72(sp)
    800021fc:	04013a03          	ld	s4,64(sp)
    80002200:	03813a83          	ld	s5,56(sp)
    80002204:	03013b03          	ld	s6,48(sp)
    80002208:	07010113          	addi	sp,sp,112
    8000220c:	00008067          	ret
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80002210:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    80002214:	00651513          	slli	a0,a0,0x6
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	3e0080e7          	jalr	992(ra) # 800025f8 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80002220:	00050513          	mv	a0,a0
    80002224:	fc1ff06f          	j	800021e4 <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    80002228:	00058793          	mv	a5,a1
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    8000222c:	00000793          	li	a5,0
    80002230:	00078513          	mv	a0,a5
    80002234:	fb1ff06f          	j	800021e4 <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002238:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    8000223c:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    80002240:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, 2UL);
    80002244:	04000513          	li	a0,64
    80002248:	fffff097          	auipc	ra,0xfffff
    8000224c:	28c080e7          	jalr	652(ra) # 800014d4 <_ZN3PCBnwEm>
    80002250:	00050993          	mv	s3,a0
    80002254:	00200713          	li	a4,2
    80002258:	00090693          	mv	a3,s2
    8000225c:	000b0613          	mv	a2,s6
    80002260:	000a8593          	mv	a1,s5
    80002264:	fffff097          	auipc	ra,0xfffff
    80002268:	158080e7          	jalr	344(ra) # 800013bc <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    8000226c:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    80002270:	00098663          	beqz	s3,8000227c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
                    __asm__ volatile("li a0, 0");
    80002274:	00000513          	li	a0,0
    80002278:	f6dff06f          	j	800021e4 <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    8000227c:	fff00513          	li	a0,-1
    80002280:	f65ff06f          	j	800021e4 <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002284:	100027f3          	csrr	a5,sstatus
    80002288:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    8000228c:	fb843903          	ld	s2,-72(s0)
                PCB::timeSliceCounter = 0;
    80002290:	00004797          	auipc	a5,0x4
    80002294:	b507b783          	ld	a5,-1200(a5) # 80005de0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002298:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    8000229c:	fffff097          	auipc	ra,0xfffff
    800022a0:	1a0080e7          	jalr	416(ra) # 8000143c <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800022a4:	10091073          	csrw	sstatus,s2
}
    800022a8:	f3dff06f          	j	800021e4 <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
    800022ac:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, 2UL);
    800022b0:	00098513          	mv	a0,s3
    800022b4:	fffff097          	auipc	ra,0xfffff
    800022b8:	248080e7          	jalr	584(ra) # 800014fc <_ZN3PCBdlEPv>
    800022bc:	00048513          	mv	a0,s1
    800022c0:	00005097          	auipc	ra,0x5
    800022c4:	c78080e7          	jalr	-904(ra) # 80006f38 <_Unwind_Resume>

00000000800022c8 <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    800022c8:	ff010113          	addi	sp,sp,-16
    800022cc:	00813423          	sd	s0,8(sp)
    800022d0:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    800022d4:	00004717          	auipc	a4,0x4
    800022d8:	b8472703          	lw	a4,-1148(a4) # 80005e58 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800022dc:	00100793          	li	a5,1
    800022e0:	04f70263          	beq	a4,a5,80002324 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    800022e4:	00004797          	auipc	a5,0x4
    800022e8:	b7478793          	addi	a5,a5,-1164 # 80005e58 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800022ec:	00100713          	li	a4,1
    800022f0:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800022f4:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    800022f8:	00004717          	auipc	a4,0x4
    800022fc:	ad873703          	ld	a4,-1320(a4) # 80005dd0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002300:	00073703          	ld	a4,0(a4)
    80002304:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80002308:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    8000230c:	00004797          	auipc	a5,0x4
    80002310:	aec7b783          	ld	a5,-1300(a5) # 80005df8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002314:	0007b783          	ld	a5,0(a5)
    80002318:	40e787b3          	sub	a5,a5,a4
    8000231c:	ff178793          	addi	a5,a5,-15
    80002320:	00f73023          	sd	a5,0(a4)
}
    80002324:	00813403          	ld	s0,8(sp)
    80002328:	01010113          	addi	sp,sp,16
    8000232c:	00008067          	ret

0000000080002330 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    80002330:	fe010113          	addi	sp,sp,-32
    80002334:	00113c23          	sd	ra,24(sp)
    80002338:	00813823          	sd	s0,16(sp)
    8000233c:	00913423          	sd	s1,8(sp)
    80002340:	01213023          	sd	s2,0(sp)
    80002344:	02010413          	addi	s0,sp,32
    80002348:	00050493          	mv	s1,a0
    8000234c:	00058913          	mv	s2,a1

    initMemory();
    80002350:	00000097          	auipc	ra,0x0
    80002354:	f78080e7          	jalr	-136(ra) # 800022c8 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80002358:	00004797          	auipc	a5,0x4
    8000235c:	b087b783          	ld	a5,-1272(a5) # 80005e60 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80002360:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80002364:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80002368:	00000713          	li	a4,0
    while(curr != 0)
    8000236c:	00078c63          	beqz	a5,80002384 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80002370:	00f4e863          	bltu	s1,a5,80002380 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80002374:	00078713          	mv	a4,a5
        curr = curr->next;
    80002378:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000237c:	ff1ff06f          	j	8000236c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80002380:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80002384:	02070063          	beqz	a4,800023a4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80002388:	00973423          	sd	s1,8(a4)
}
    8000238c:	01813083          	ld	ra,24(sp)
    80002390:	01013403          	ld	s0,16(sp)
    80002394:	00813483          	ld	s1,8(sp)
    80002398:	00013903          	ld	s2,0(sp)
    8000239c:	02010113          	addi	sp,sp,32
    800023a0:	00008067          	ret
        headAllocated = newAllocated;
    800023a4:	00004797          	auipc	a5,0x4
    800023a8:	aa97be23          	sd	s1,-1348(a5) # 80005e60 <_ZN15MemoryAllocator13headAllocatedE>
    800023ac:	fe1ff06f          	j	8000238c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

00000000800023b0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    800023b0:	fe010113          	addi	sp,sp,-32
    800023b4:	00113c23          	sd	ra,24(sp)
    800023b8:	00813823          	sd	s0,16(sp)
    800023bc:	00913423          	sd	s1,8(sp)
    800023c0:	01213023          	sd	s2,0(sp)
    800023c4:	02010413          	addi	s0,sp,32
    800023c8:	00050913          	mv	s2,a0
    initMemory();
    800023cc:	00000097          	auipc	ra,0x0
    800023d0:	efc080e7          	jalr	-260(ra) # 800022c8 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800023d4:	00004497          	auipc	s1,0x4
    800023d8:	a944b483          	ld	s1,-1388(s1) # 80005e68 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    800023dc:	00000713          	li	a4,0
    while(curr != 0) {
    800023e0:	08048863          	beqz	s1,80002470 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc0>

        if(curr->size >= size) {
    800023e4:	0004b783          	ld	a5,0(s1)
    800023e8:	0127f863          	bgeu	a5,s2,800023f8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    800023ec:	00048713          	mv	a4,s1
        curr = curr->next;
    800023f0:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    800023f4:	fedff06f          	j	800023e0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    800023f8:	01090693          	addi	a3,s2,16
    800023fc:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80002400:	00004617          	auipc	a2,0x4
    80002404:	9f863603          	ld	a2,-1544(a2) # 80005df8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002408:	00063603          	ld	a2,0(a2)
    8000240c:	02d66c63          	bltu	a2,a3,80002444 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                uint64 size2 = curr->size - size;
    80002410:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80002414:	01000613          	li	a2,16
    80002418:	02f67a63          	bgeu	a2,a5,8000244c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    8000241c:	0084b603          	ld	a2,8(s1)
    80002420:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80002424:	ff078793          	addi	a5,a5,-16
    80002428:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    8000242c:	00070663          	beqz	a4,80002438 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80002430:	00d73423          	sd	a3,8(a4)
    80002434:	0180006f          	j	8000244c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                        headFree = newFree;
    80002438:	00004797          	auipc	a5,0x4
    8000243c:	a2d7b823          	sd	a3,-1488(a5) # 80005e68 <_ZN15MemoryAllocator8headFreeE>
    80002440:	00c0006f          	j	8000244c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                if(prev != 0)
    80002444:	02070063          	beqz	a4,80002464 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                    prev->next = 0;
    80002448:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    8000244c:	00090593          	mv	a1,s2
    80002450:	00048513          	mv	a0,s1
    80002454:	00000097          	auipc	ra,0x0
    80002458:	edc080e7          	jalr	-292(ra) # 80002330 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    8000245c:	01048513          	addi	a0,s1,16
            break;
    80002460:	0140006f          	j	80002474 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                    headFree = 0;
    80002464:	00004797          	auipc	a5,0x4
    80002468:	a007b223          	sd	zero,-1532(a5) # 80005e68 <_ZN15MemoryAllocator8headFreeE>
    8000246c:	fe1ff06f          	j	8000244c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
    uint64 retval = 0;
    80002470:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80002474:	01813083          	ld	ra,24(sp)
    80002478:	01013403          	ld	s0,16(sp)
    8000247c:	00813483          	ld	s1,8(sp)
    80002480:	00013903          	ld	s2,0(sp)
    80002484:	02010113          	addi	sp,sp,32
    80002488:	00008067          	ret

000000008000248c <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    8000248c:	ff010113          	addi	sp,sp,-16
    80002490:	00113423          	sd	ra,8(sp)
    80002494:	00813023          	sd	s0,0(sp)
    80002498:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    8000249c:	00000097          	auipc	ra,0x0
    800024a0:	f14080e7          	jalr	-236(ra) # 800023b0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    800024a4:	00813083          	ld	ra,8(sp)
    800024a8:	00013403          	ld	s0,0(sp)
    800024ac:	01010113          	addi	sp,sp,16
    800024b0:	00008067          	ret

00000000800024b4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800024b4:	fe010113          	addi	sp,sp,-32
    800024b8:	00113c23          	sd	ra,24(sp)
    800024bc:	00813823          	sd	s0,16(sp)
    800024c0:	00913423          	sd	s1,8(sp)
    800024c4:	01213023          	sd	s2,0(sp)
    800024c8:	02010413          	addi	s0,sp,32
    800024cc:	00050493          	mv	s1,a0
    800024d0:	00058913          	mv	s2,a1
    initMemory();
    800024d4:	00000097          	auipc	ra,0x0
    800024d8:	df4080e7          	jalr	-524(ra) # 800022c8 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800024dc:	00004797          	auipc	a5,0x4
    800024e0:	98c7b783          	ld	a5,-1652(a5) # 80005e68 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800024e4:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800024e8:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    800024ec:	00000713          	li	a4,0
    while(curr != 0)
    800024f0:	00078c63          	beqz	a5,80002508 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800024f4:	00f4e863          	bltu	s1,a5,80002504 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800024f8:	00078713          	mv	a4,a5
        curr = curr->next;
    800024fc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002500:	ff1ff06f          	j	800024f0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80002504:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80002508:	02070063          	beqz	a4,80002528 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        headFree = newSegment;
    else
        prev->next = newSegment;
    8000250c:	00973423          	sd	s1,8(a4)
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }*/

}
    80002510:	01813083          	ld	ra,24(sp)
    80002514:	01013403          	ld	s0,16(sp)
    80002518:	00813483          	ld	s1,8(sp)
    8000251c:	00013903          	ld	s2,0(sp)
    80002520:	02010113          	addi	sp,sp,32
    80002524:	00008067          	ret
        headFree = newSegment;
    80002528:	00004797          	auipc	a5,0x4
    8000252c:	9497b023          	sd	s1,-1728(a5) # 80005e68 <_ZN15MemoryAllocator8headFreeE>
    80002530:	fe1ff06f          	j	80002510 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>

0000000080002534 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80002534:	fe010113          	addi	sp,sp,-32
    80002538:	00113c23          	sd	ra,24(sp)
    8000253c:	00813823          	sd	s0,16(sp)
    80002540:	00913423          	sd	s1,8(sp)
    80002544:	01213023          	sd	s2,0(sp)
    80002548:	02010413          	addi	s0,sp,32
    8000254c:	00050913          	mv	s2,a0
    initMemory();
    80002550:	00000097          	auipc	ra,0x0
    80002554:	d78080e7          	jalr	-648(ra) # 800022c8 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80002558:	00004497          	auipc	s1,0x4
    8000255c:	9084b483          	ld	s1,-1784(s1) # 80005e60 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80002560:	00000713          	li	a4,0
    while(curr != 0)
    80002564:	02048a63          	beqz	s1,80002598 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80002568:	01048793          	addi	a5,s1,16
    8000256c:	01278863          	beq	a5,s2,8000257c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80002570:	00048713          	mv	a4,s1
        curr = curr->next;
    80002574:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80002578:	fedff06f          	j	80002564 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    8000257c:	02070e63          	beqz	a4,800025b8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80002580:	0084b783          	ld	a5,8(s1)
    80002584:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80002588:	0004b583          	ld	a1,0(s1)
    8000258c:	00048513          	mv	a0,s1
    80002590:	00000097          	auipc	ra,0x0
    80002594:	f24080e7          	jalr	-220(ra) # 800024b4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80002598:	02048863          	beqz	s1,800025c8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    8000259c:	00000513          	li	a0,0
    else
        return 1;
}
    800025a0:	01813083          	ld	ra,24(sp)
    800025a4:	01013403          	ld	s0,16(sp)
    800025a8:	00813483          	ld	s1,8(sp)
    800025ac:	00013903          	ld	s2,0(sp)
    800025b0:	02010113          	addi	sp,sp,32
    800025b4:	00008067          	ret
                headAllocated = curr->next;
    800025b8:	0084b783          	ld	a5,8(s1)
    800025bc:	00004717          	auipc	a4,0x4
    800025c0:	8af73223          	sd	a5,-1884(a4) # 80005e60 <_ZN15MemoryAllocator13headAllocatedE>
    800025c4:	fc5ff06f          	j	80002588 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    800025c8:	00100513          	li	a0,1
    800025cc:	fd5ff06f          	j	800025a0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

00000000800025d0 <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    800025d0:	ff010113          	addi	sp,sp,-16
    800025d4:	00113423          	sd	ra,8(sp)
    800025d8:	00813023          	sd	s0,0(sp)
    800025dc:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    800025e0:	00000097          	auipc	ra,0x0
    800025e4:	f54080e7          	jalr	-172(ra) # 80002534 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    800025e8:	00813083          	ld	ra,8(sp)
    800025ec:	00013403          	ld	s0,0(sp)
    800025f0:	01010113          	addi	sp,sp,16
    800025f4:	00008067          	ret

00000000800025f8 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    800025f8:	ff010113          	addi	sp,sp,-16
    800025fc:	00113423          	sd	ra,8(sp)
    80002600:	00813023          	sd	s0,0(sp)
    80002604:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80002608:	00000097          	auipc	ra,0x0
    8000260c:	e84080e7          	jalr	-380(ra) # 8000248c <_ZN15MemoryAllocator9mem_allocEm>
}
    80002610:	00813083          	ld	ra,8(sp)
    80002614:	00013403          	ld	s0,0(sp)
    80002618:	01010113          	addi	sp,sp,16
    8000261c:	00008067          	ret

0000000080002620 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80002620:	ff010113          	addi	sp,sp,-16
    80002624:	00113423          	sd	ra,8(sp)
    80002628:	00813023          	sd	s0,0(sp)
    8000262c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80002630:	00000097          	auipc	ra,0x0
    80002634:	fa0080e7          	jalr	-96(ra) # 800025d0 <_ZN15MemoryAllocator8mem_freeEPv>
    80002638:	00813083          	ld	ra,8(sp)
    8000263c:	00013403          	ld	s0,0(sp)
    80002640:	01010113          	addi	sp,sp,16
    80002644:	00008067          	ret

0000000080002648 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.h"
#include "../h/MemoryAllocator.h"

KSemaphore::KSemaphore(int val) {
    80002648:	fe010113          	addi	sp,sp,-32
    8000264c:	00113c23          	sd	ra,24(sp)
    80002650:	00813823          	sd	s0,16(sp)
    80002654:	00913423          	sd	s1,8(sp)
    80002658:	01213023          	sd	s2,0(sp)
    8000265c:	02010413          	addi	s0,sp,32
    80002660:	00050493          	mv	s1,a0
    80002664:	00058913          	mv	s2,a1
    80002668:	00850513          	addi	a0,a0,8
    8000266c:	fffff097          	auipc	ra,0xfffff
    80002670:	f78080e7          	jalr	-136(ra) # 800015e4 <_ZN5QueueC1Ev>
    this->val = this->beginVal = val;
    80002674:	0124a223          	sw	s2,4(s1)
    80002678:	0124a023          	sw	s2,0(s1)
    //queueBlocked = (Queue<PCB*>*)kmalloc(sizeof(Queue<PCB*>));
}
    8000267c:	01813083          	ld	ra,24(sp)
    80002680:	01013403          	ld	s0,16(sp)
    80002684:	00813483          	ld	s1,8(sp)
    80002688:	00013903          	ld	s2,0(sp)
    8000268c:	02010113          	addi	sp,sp,32
    80002690:	00008067          	ret

0000000080002694 <_ZN10KSemaphoreD1Ev>:
        unblock();
    else
        val = beginVal;
}

KSemaphore::~KSemaphore() {
    80002694:	ff010113          	addi	sp,sp,-16
    80002698:	00113423          	sd	ra,8(sp)
    8000269c:	00813023          	sd	s0,0(sp)
    800026a0:	01010413          	addi	s0,sp,16
    800026a4:	00850513          	addi	a0,a0,8
    800026a8:	fffff097          	auipc	ra,0xfffff
    800026ac:	f5c080e7          	jalr	-164(ra) # 80001604 <_ZN5QueueD1Ev>
    //todo
}
    800026b0:	00813083          	ld	ra,8(sp)
    800026b4:	00013403          	ld	s0,0(sp)
    800026b8:	01010113          	addi	sp,sp,16
    800026bc:	00008067          	ret

00000000800026c0 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    800026c0:	ff010113          	addi	sp,sp,-16
    800026c4:	00113423          	sd	ra,8(sp)
    800026c8:	00813023          	sd	s0,0(sp)
    800026cc:	01010413          	addi	s0,sp,16
    //todo
    //postavi stanje
    PCB::dispatch();
    800026d0:	fffff097          	auipc	ra,0xfffff
    800026d4:	d6c080e7          	jalr	-660(ra) # 8000143c <_ZN3PCB8dispatchEv>
}
    800026d8:	00813083          	ld	ra,8(sp)
    800026dc:	00013403          	ld	s0,0(sp)
    800026e0:	01010113          	addi	sp,sp,16
    800026e4:	00008067          	ret

00000000800026e8 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    800026e8:	00052783          	lw	a5,0(a0)
    800026ec:	fff7879b          	addiw	a5,a5,-1
    800026f0:	00f52023          	sw	a5,0(a0)
    800026f4:	02079713          	slli	a4,a5,0x20
    800026f8:	00074463          	bltz	a4,80002700 <_ZN10KSemaphore4waitEv+0x18>
    800026fc:	00008067          	ret
void KSemaphore::wait() {
    80002700:	ff010113          	addi	sp,sp,-16
    80002704:	00113423          	sd	ra,8(sp)
    80002708:	00813023          	sd	s0,0(sp)
    8000270c:	01010413          	addi	s0,sp,16
        block();
    80002710:	00000097          	auipc	ra,0x0
    80002714:	fb0080e7          	jalr	-80(ra) # 800026c0 <_ZN10KSemaphore5blockEv>
}
    80002718:	00813083          	ld	ra,8(sp)
    8000271c:	00013403          	ld	s0,0(sp)
    80002720:	01010113          	addi	sp,sp,16
    80002724:	00008067          	ret

0000000080002728 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80002728:	fe010113          	addi	sp,sp,-32
    8000272c:	00113c23          	sd	ra,24(sp)
    80002730:	00813823          	sd	s0,16(sp)
    80002734:	00913423          	sd	s1,8(sp)
    80002738:	01213023          	sd	s2,0(sp)
    8000273c:	02010413          	addi	s0,sp,32
    PCB* fr = queueBlocked.front();
    80002740:	00850493          	addi	s1,a0,8
    80002744:	00048513          	mv	a0,s1
    80002748:	fffff097          	auipc	ra,0xfffff
    8000274c:	e78080e7          	jalr	-392(ra) # 800015c0 <_ZN5Queue5frontEv>
    80002750:	00050913          	mv	s2,a0
    queueBlocked.pop();
    80002754:	00048513          	mv	a0,s1
    80002758:	fffff097          	auipc	ra,0xfffff
    8000275c:	dbc080e7          	jalr	-580(ra) # 80001514 <_ZN5Queue3popEv>
    if(fr != 0)
    80002760:	00090863          	beqz	s2,80002770 <_ZN10KSemaphore7unblockEv+0x48>
    {
        //todo
        //postavi stanje
        Scheduler::put(fr);
    80002764:	00090513          	mv	a0,s2
    80002768:	fffff097          	auipc	ra,0xfffff
    8000276c:	f14080e7          	jalr	-236(ra) # 8000167c <_ZN9Scheduler3putEP3PCB>
    }

}
    80002770:	01813083          	ld	ra,24(sp)
    80002774:	01013403          	ld	s0,16(sp)
    80002778:	00813483          	ld	s1,8(sp)
    8000277c:	00013903          	ld	s2,0(sp)
    80002780:	02010113          	addi	sp,sp,32
    80002784:	00008067          	ret

0000000080002788 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80002788:	00052783          	lw	a5,0(a0)
    8000278c:	0017879b          	addiw	a5,a5,1
    80002790:	0007871b          	sext.w	a4,a5
    80002794:	00f52023          	sw	a5,0(a0)
    80002798:	00e05863          	blez	a4,800027a8 <_ZN10KSemaphore6signalEv+0x20>
        val = beginVal;
    8000279c:	00452783          	lw	a5,4(a0)
    800027a0:	00f52023          	sw	a5,0(a0)
    800027a4:	00008067          	ret
void KSemaphore::signal() {
    800027a8:	ff010113          	addi	sp,sp,-16
    800027ac:	00113423          	sd	ra,8(sp)
    800027b0:	00813023          	sd	s0,0(sp)
    800027b4:	01010413          	addi	s0,sp,16
        unblock();
    800027b8:	00000097          	auipc	ra,0x0
    800027bc:	f70080e7          	jalr	-144(ra) # 80002728 <_ZN10KSemaphore7unblockEv>
}
    800027c0:	00813083          	ld	ra,8(sp)
    800027c4:	00013403          	ld	s0,0(sp)
    800027c8:	01010113          	addi	sp,sp,16
    800027cc:	00008067          	ret

00000000800027d0 <start>:
    800027d0:	ff010113          	addi	sp,sp,-16
    800027d4:	00813423          	sd	s0,8(sp)
    800027d8:	01010413          	addi	s0,sp,16
    800027dc:	300027f3          	csrr	a5,mstatus
    800027e0:	ffffe737          	lui	a4,0xffffe
    800027e4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff772f>
    800027e8:	00e7f7b3          	and	a5,a5,a4
    800027ec:	00001737          	lui	a4,0x1
    800027f0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800027f4:	00e7e7b3          	or	a5,a5,a4
    800027f8:	30079073          	csrw	mstatus,a5
    800027fc:	00000797          	auipc	a5,0x0
    80002800:	16078793          	addi	a5,a5,352 # 8000295c <system_main>
    80002804:	34179073          	csrw	mepc,a5
    80002808:	00000793          	li	a5,0
    8000280c:	18079073          	csrw	satp,a5
    80002810:	000107b7          	lui	a5,0x10
    80002814:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002818:	30279073          	csrw	medeleg,a5
    8000281c:	30379073          	csrw	mideleg,a5
    80002820:	104027f3          	csrr	a5,sie
    80002824:	2227e793          	ori	a5,a5,546
    80002828:	10479073          	csrw	sie,a5
    8000282c:	fff00793          	li	a5,-1
    80002830:	00a7d793          	srli	a5,a5,0xa
    80002834:	3b079073          	csrw	pmpaddr0,a5
    80002838:	00f00793          	li	a5,15
    8000283c:	3a079073          	csrw	pmpcfg0,a5
    80002840:	f14027f3          	csrr	a5,mhartid
    80002844:	0200c737          	lui	a4,0x200c
    80002848:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000284c:	0007869b          	sext.w	a3,a5
    80002850:	00269713          	slli	a4,a3,0x2
    80002854:	000f4637          	lui	a2,0xf4
    80002858:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000285c:	00d70733          	add	a4,a4,a3
    80002860:	0037979b          	slliw	a5,a5,0x3
    80002864:	020046b7          	lui	a3,0x2004
    80002868:	00d787b3          	add	a5,a5,a3
    8000286c:	00c585b3          	add	a1,a1,a2
    80002870:	00371693          	slli	a3,a4,0x3
    80002874:	00003717          	auipc	a4,0x3
    80002878:	5fc70713          	addi	a4,a4,1532 # 80005e70 <timer_scratch>
    8000287c:	00b7b023          	sd	a1,0(a5)
    80002880:	00d70733          	add	a4,a4,a3
    80002884:	00f73c23          	sd	a5,24(a4)
    80002888:	02c73023          	sd	a2,32(a4)
    8000288c:	34071073          	csrw	mscratch,a4
    80002890:	00000797          	auipc	a5,0x0
    80002894:	6e078793          	addi	a5,a5,1760 # 80002f70 <timervec>
    80002898:	30579073          	csrw	mtvec,a5
    8000289c:	300027f3          	csrr	a5,mstatus
    800028a0:	0087e793          	ori	a5,a5,8
    800028a4:	30079073          	csrw	mstatus,a5
    800028a8:	304027f3          	csrr	a5,mie
    800028ac:	0807e793          	ori	a5,a5,128
    800028b0:	30479073          	csrw	mie,a5
    800028b4:	f14027f3          	csrr	a5,mhartid
    800028b8:	0007879b          	sext.w	a5,a5
    800028bc:	00078213          	mv	tp,a5
    800028c0:	30200073          	mret
    800028c4:	00813403          	ld	s0,8(sp)
    800028c8:	01010113          	addi	sp,sp,16
    800028cc:	00008067          	ret

00000000800028d0 <timerinit>:
    800028d0:	ff010113          	addi	sp,sp,-16
    800028d4:	00813423          	sd	s0,8(sp)
    800028d8:	01010413          	addi	s0,sp,16
    800028dc:	f14027f3          	csrr	a5,mhartid
    800028e0:	0200c737          	lui	a4,0x200c
    800028e4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800028e8:	0007869b          	sext.w	a3,a5
    800028ec:	00269713          	slli	a4,a3,0x2
    800028f0:	000f4637          	lui	a2,0xf4
    800028f4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800028f8:	00d70733          	add	a4,a4,a3
    800028fc:	0037979b          	slliw	a5,a5,0x3
    80002900:	020046b7          	lui	a3,0x2004
    80002904:	00d787b3          	add	a5,a5,a3
    80002908:	00c585b3          	add	a1,a1,a2
    8000290c:	00371693          	slli	a3,a4,0x3
    80002910:	00003717          	auipc	a4,0x3
    80002914:	56070713          	addi	a4,a4,1376 # 80005e70 <timer_scratch>
    80002918:	00b7b023          	sd	a1,0(a5)
    8000291c:	00d70733          	add	a4,a4,a3
    80002920:	00f73c23          	sd	a5,24(a4)
    80002924:	02c73023          	sd	a2,32(a4)
    80002928:	34071073          	csrw	mscratch,a4
    8000292c:	00000797          	auipc	a5,0x0
    80002930:	64478793          	addi	a5,a5,1604 # 80002f70 <timervec>
    80002934:	30579073          	csrw	mtvec,a5
    80002938:	300027f3          	csrr	a5,mstatus
    8000293c:	0087e793          	ori	a5,a5,8
    80002940:	30079073          	csrw	mstatus,a5
    80002944:	304027f3          	csrr	a5,mie
    80002948:	0807e793          	ori	a5,a5,128
    8000294c:	30479073          	csrw	mie,a5
    80002950:	00813403          	ld	s0,8(sp)
    80002954:	01010113          	addi	sp,sp,16
    80002958:	00008067          	ret

000000008000295c <system_main>:
    8000295c:	fe010113          	addi	sp,sp,-32
    80002960:	00813823          	sd	s0,16(sp)
    80002964:	00913423          	sd	s1,8(sp)
    80002968:	00113c23          	sd	ra,24(sp)
    8000296c:	02010413          	addi	s0,sp,32
    80002970:	00000097          	auipc	ra,0x0
    80002974:	0c4080e7          	jalr	196(ra) # 80002a34 <cpuid>
    80002978:	00003497          	auipc	s1,0x3
    8000297c:	49848493          	addi	s1,s1,1176 # 80005e10 <started>
    80002980:	02050263          	beqz	a0,800029a4 <system_main+0x48>
    80002984:	0004a783          	lw	a5,0(s1)
    80002988:	0007879b          	sext.w	a5,a5
    8000298c:	fe078ce3          	beqz	a5,80002984 <system_main+0x28>
    80002990:	0ff0000f          	fence
    80002994:	00002517          	auipc	a0,0x2
    80002998:	7cc50513          	addi	a0,a0,1996 # 80005160 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    8000299c:	00001097          	auipc	ra,0x1
    800029a0:	a70080e7          	jalr	-1424(ra) # 8000340c <panic>
    800029a4:	00001097          	auipc	ra,0x1
    800029a8:	9c4080e7          	jalr	-1596(ra) # 80003368 <consoleinit>
    800029ac:	00001097          	auipc	ra,0x1
    800029b0:	150080e7          	jalr	336(ra) # 80003afc <printfinit>
    800029b4:	00003517          	auipc	a0,0x3
    800029b8:	88c50513          	addi	a0,a0,-1908 # 80005240 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800029bc:	00001097          	auipc	ra,0x1
    800029c0:	aac080e7          	jalr	-1364(ra) # 80003468 <__printf>
    800029c4:	00002517          	auipc	a0,0x2
    800029c8:	76c50513          	addi	a0,a0,1900 # 80005130 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    800029cc:	00001097          	auipc	ra,0x1
    800029d0:	a9c080e7          	jalr	-1380(ra) # 80003468 <__printf>
    800029d4:	00003517          	auipc	a0,0x3
    800029d8:	86c50513          	addi	a0,a0,-1940 # 80005240 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800029dc:	00001097          	auipc	ra,0x1
    800029e0:	a8c080e7          	jalr	-1396(ra) # 80003468 <__printf>
    800029e4:	00001097          	auipc	ra,0x1
    800029e8:	4a4080e7          	jalr	1188(ra) # 80003e88 <kinit>
    800029ec:	00000097          	auipc	ra,0x0
    800029f0:	148080e7          	jalr	328(ra) # 80002b34 <trapinit>
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	16c080e7          	jalr	364(ra) # 80002b60 <trapinithart>
    800029fc:	00000097          	auipc	ra,0x0
    80002a00:	5b4080e7          	jalr	1460(ra) # 80002fb0 <plicinit>
    80002a04:	00000097          	auipc	ra,0x0
    80002a08:	5d4080e7          	jalr	1492(ra) # 80002fd8 <plicinithart>
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	078080e7          	jalr	120(ra) # 80002a84 <userinit>
    80002a14:	0ff0000f          	fence
    80002a18:	00100793          	li	a5,1
    80002a1c:	00002517          	auipc	a0,0x2
    80002a20:	72c50513          	addi	a0,a0,1836 # 80005148 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    80002a24:	00f4a023          	sw	a5,0(s1)
    80002a28:	00001097          	auipc	ra,0x1
    80002a2c:	a40080e7          	jalr	-1472(ra) # 80003468 <__printf>
    80002a30:	0000006f          	j	80002a30 <system_main+0xd4>

0000000080002a34 <cpuid>:
    80002a34:	ff010113          	addi	sp,sp,-16
    80002a38:	00813423          	sd	s0,8(sp)
    80002a3c:	01010413          	addi	s0,sp,16
    80002a40:	00020513          	mv	a0,tp
    80002a44:	00813403          	ld	s0,8(sp)
    80002a48:	0005051b          	sext.w	a0,a0
    80002a4c:	01010113          	addi	sp,sp,16
    80002a50:	00008067          	ret

0000000080002a54 <mycpu>:
    80002a54:	ff010113          	addi	sp,sp,-16
    80002a58:	00813423          	sd	s0,8(sp)
    80002a5c:	01010413          	addi	s0,sp,16
    80002a60:	00020793          	mv	a5,tp
    80002a64:	00813403          	ld	s0,8(sp)
    80002a68:	0007879b          	sext.w	a5,a5
    80002a6c:	00779793          	slli	a5,a5,0x7
    80002a70:	00004517          	auipc	a0,0x4
    80002a74:	43050513          	addi	a0,a0,1072 # 80006ea0 <cpus>
    80002a78:	00f50533          	add	a0,a0,a5
    80002a7c:	01010113          	addi	sp,sp,16
    80002a80:	00008067          	ret

0000000080002a84 <userinit>:
    80002a84:	ff010113          	addi	sp,sp,-16
    80002a88:	00813423          	sd	s0,8(sp)
    80002a8c:	01010413          	addi	s0,sp,16
    80002a90:	00813403          	ld	s0,8(sp)
    80002a94:	01010113          	addi	sp,sp,16
    80002a98:	fffff317          	auipc	t1,0xfffff
    80002a9c:	02030067          	jr	32(t1) # 80001ab8 <main>

0000000080002aa0 <either_copyout>:
    80002aa0:	ff010113          	addi	sp,sp,-16
    80002aa4:	00813023          	sd	s0,0(sp)
    80002aa8:	00113423          	sd	ra,8(sp)
    80002aac:	01010413          	addi	s0,sp,16
    80002ab0:	02051663          	bnez	a0,80002adc <either_copyout+0x3c>
    80002ab4:	00058513          	mv	a0,a1
    80002ab8:	00060593          	mv	a1,a2
    80002abc:	0006861b          	sext.w	a2,a3
    80002ac0:	00002097          	auipc	ra,0x2
    80002ac4:	c54080e7          	jalr	-940(ra) # 80004714 <__memmove>
    80002ac8:	00813083          	ld	ra,8(sp)
    80002acc:	00013403          	ld	s0,0(sp)
    80002ad0:	00000513          	li	a0,0
    80002ad4:	01010113          	addi	sp,sp,16
    80002ad8:	00008067          	ret
    80002adc:	00002517          	auipc	a0,0x2
    80002ae0:	6ac50513          	addi	a0,a0,1708 # 80005188 <_ZZN5Riscv12printIntegerEmE6digits+0x68>
    80002ae4:	00001097          	auipc	ra,0x1
    80002ae8:	928080e7          	jalr	-1752(ra) # 8000340c <panic>

0000000080002aec <either_copyin>:
    80002aec:	ff010113          	addi	sp,sp,-16
    80002af0:	00813023          	sd	s0,0(sp)
    80002af4:	00113423          	sd	ra,8(sp)
    80002af8:	01010413          	addi	s0,sp,16
    80002afc:	02059463          	bnez	a1,80002b24 <either_copyin+0x38>
    80002b00:	00060593          	mv	a1,a2
    80002b04:	0006861b          	sext.w	a2,a3
    80002b08:	00002097          	auipc	ra,0x2
    80002b0c:	c0c080e7          	jalr	-1012(ra) # 80004714 <__memmove>
    80002b10:	00813083          	ld	ra,8(sp)
    80002b14:	00013403          	ld	s0,0(sp)
    80002b18:	00000513          	li	a0,0
    80002b1c:	01010113          	addi	sp,sp,16
    80002b20:	00008067          	ret
    80002b24:	00002517          	auipc	a0,0x2
    80002b28:	68c50513          	addi	a0,a0,1676 # 800051b0 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80002b2c:	00001097          	auipc	ra,0x1
    80002b30:	8e0080e7          	jalr	-1824(ra) # 8000340c <panic>

0000000080002b34 <trapinit>:
    80002b34:	ff010113          	addi	sp,sp,-16
    80002b38:	00813423          	sd	s0,8(sp)
    80002b3c:	01010413          	addi	s0,sp,16
    80002b40:	00813403          	ld	s0,8(sp)
    80002b44:	00002597          	auipc	a1,0x2
    80002b48:	69458593          	addi	a1,a1,1684 # 800051d8 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80002b4c:	00004517          	auipc	a0,0x4
    80002b50:	3d450513          	addi	a0,a0,980 # 80006f20 <tickslock>
    80002b54:	01010113          	addi	sp,sp,16
    80002b58:	00001317          	auipc	t1,0x1
    80002b5c:	5c030067          	jr	1472(t1) # 80004118 <initlock>

0000000080002b60 <trapinithart>:
    80002b60:	ff010113          	addi	sp,sp,-16
    80002b64:	00813423          	sd	s0,8(sp)
    80002b68:	01010413          	addi	s0,sp,16
    80002b6c:	00000797          	auipc	a5,0x0
    80002b70:	2f478793          	addi	a5,a5,756 # 80002e60 <kernelvec>
    80002b74:	10579073          	csrw	stvec,a5
    80002b78:	00813403          	ld	s0,8(sp)
    80002b7c:	01010113          	addi	sp,sp,16
    80002b80:	00008067          	ret

0000000080002b84 <usertrap>:
    80002b84:	ff010113          	addi	sp,sp,-16
    80002b88:	00813423          	sd	s0,8(sp)
    80002b8c:	01010413          	addi	s0,sp,16
    80002b90:	00813403          	ld	s0,8(sp)
    80002b94:	01010113          	addi	sp,sp,16
    80002b98:	00008067          	ret

0000000080002b9c <usertrapret>:
    80002b9c:	ff010113          	addi	sp,sp,-16
    80002ba0:	00813423          	sd	s0,8(sp)
    80002ba4:	01010413          	addi	s0,sp,16
    80002ba8:	00813403          	ld	s0,8(sp)
    80002bac:	01010113          	addi	sp,sp,16
    80002bb0:	00008067          	ret

0000000080002bb4 <kerneltrap>:
    80002bb4:	fe010113          	addi	sp,sp,-32
    80002bb8:	00813823          	sd	s0,16(sp)
    80002bbc:	00113c23          	sd	ra,24(sp)
    80002bc0:	00913423          	sd	s1,8(sp)
    80002bc4:	02010413          	addi	s0,sp,32
    80002bc8:	142025f3          	csrr	a1,scause
    80002bcc:	100027f3          	csrr	a5,sstatus
    80002bd0:	0027f793          	andi	a5,a5,2
    80002bd4:	10079c63          	bnez	a5,80002cec <kerneltrap+0x138>
    80002bd8:	142027f3          	csrr	a5,scause
    80002bdc:	0207ce63          	bltz	a5,80002c18 <kerneltrap+0x64>
    80002be0:	00002517          	auipc	a0,0x2
    80002be4:	64050513          	addi	a0,a0,1600 # 80005220 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80002be8:	00001097          	auipc	ra,0x1
    80002bec:	880080e7          	jalr	-1920(ra) # 80003468 <__printf>
    80002bf0:	141025f3          	csrr	a1,sepc
    80002bf4:	14302673          	csrr	a2,stval
    80002bf8:	00002517          	auipc	a0,0x2
    80002bfc:	63850513          	addi	a0,a0,1592 # 80005230 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80002c00:	00001097          	auipc	ra,0x1
    80002c04:	868080e7          	jalr	-1944(ra) # 80003468 <__printf>
    80002c08:	00002517          	auipc	a0,0x2
    80002c0c:	64050513          	addi	a0,a0,1600 # 80005248 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80002c10:	00000097          	auipc	ra,0x0
    80002c14:	7fc080e7          	jalr	2044(ra) # 8000340c <panic>
    80002c18:	0ff7f713          	andi	a4,a5,255
    80002c1c:	00900693          	li	a3,9
    80002c20:	04d70063          	beq	a4,a3,80002c60 <kerneltrap+0xac>
    80002c24:	fff00713          	li	a4,-1
    80002c28:	03f71713          	slli	a4,a4,0x3f
    80002c2c:	00170713          	addi	a4,a4,1
    80002c30:	fae798e3          	bne	a5,a4,80002be0 <kerneltrap+0x2c>
    80002c34:	00000097          	auipc	ra,0x0
    80002c38:	e00080e7          	jalr	-512(ra) # 80002a34 <cpuid>
    80002c3c:	06050663          	beqz	a0,80002ca8 <kerneltrap+0xf4>
    80002c40:	144027f3          	csrr	a5,sip
    80002c44:	ffd7f793          	andi	a5,a5,-3
    80002c48:	14479073          	csrw	sip,a5
    80002c4c:	01813083          	ld	ra,24(sp)
    80002c50:	01013403          	ld	s0,16(sp)
    80002c54:	00813483          	ld	s1,8(sp)
    80002c58:	02010113          	addi	sp,sp,32
    80002c5c:	00008067          	ret
    80002c60:	00000097          	auipc	ra,0x0
    80002c64:	3c4080e7          	jalr	964(ra) # 80003024 <plic_claim>
    80002c68:	00a00793          	li	a5,10
    80002c6c:	00050493          	mv	s1,a0
    80002c70:	06f50863          	beq	a0,a5,80002ce0 <kerneltrap+0x12c>
    80002c74:	fc050ce3          	beqz	a0,80002c4c <kerneltrap+0x98>
    80002c78:	00050593          	mv	a1,a0
    80002c7c:	00002517          	auipc	a0,0x2
    80002c80:	58450513          	addi	a0,a0,1412 # 80005200 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80002c84:	00000097          	auipc	ra,0x0
    80002c88:	7e4080e7          	jalr	2020(ra) # 80003468 <__printf>
    80002c8c:	01013403          	ld	s0,16(sp)
    80002c90:	01813083          	ld	ra,24(sp)
    80002c94:	00048513          	mv	a0,s1
    80002c98:	00813483          	ld	s1,8(sp)
    80002c9c:	02010113          	addi	sp,sp,32
    80002ca0:	00000317          	auipc	t1,0x0
    80002ca4:	3bc30067          	jr	956(t1) # 8000305c <plic_complete>
    80002ca8:	00004517          	auipc	a0,0x4
    80002cac:	27850513          	addi	a0,a0,632 # 80006f20 <tickslock>
    80002cb0:	00001097          	auipc	ra,0x1
    80002cb4:	48c080e7          	jalr	1164(ra) # 8000413c <acquire>
    80002cb8:	00003717          	auipc	a4,0x3
    80002cbc:	15c70713          	addi	a4,a4,348 # 80005e14 <ticks>
    80002cc0:	00072783          	lw	a5,0(a4)
    80002cc4:	00004517          	auipc	a0,0x4
    80002cc8:	25c50513          	addi	a0,a0,604 # 80006f20 <tickslock>
    80002ccc:	0017879b          	addiw	a5,a5,1
    80002cd0:	00f72023          	sw	a5,0(a4)
    80002cd4:	00001097          	auipc	ra,0x1
    80002cd8:	534080e7          	jalr	1332(ra) # 80004208 <release>
    80002cdc:	f65ff06f          	j	80002c40 <kerneltrap+0x8c>
    80002ce0:	00001097          	auipc	ra,0x1
    80002ce4:	090080e7          	jalr	144(ra) # 80003d70 <uartintr>
    80002ce8:	fa5ff06f          	j	80002c8c <kerneltrap+0xd8>
    80002cec:	00002517          	auipc	a0,0x2
    80002cf0:	4f450513          	addi	a0,a0,1268 # 800051e0 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    80002cf4:	00000097          	auipc	ra,0x0
    80002cf8:	718080e7          	jalr	1816(ra) # 8000340c <panic>

0000000080002cfc <clockintr>:
    80002cfc:	fe010113          	addi	sp,sp,-32
    80002d00:	00813823          	sd	s0,16(sp)
    80002d04:	00913423          	sd	s1,8(sp)
    80002d08:	00113c23          	sd	ra,24(sp)
    80002d0c:	02010413          	addi	s0,sp,32
    80002d10:	00004497          	auipc	s1,0x4
    80002d14:	21048493          	addi	s1,s1,528 # 80006f20 <tickslock>
    80002d18:	00048513          	mv	a0,s1
    80002d1c:	00001097          	auipc	ra,0x1
    80002d20:	420080e7          	jalr	1056(ra) # 8000413c <acquire>
    80002d24:	00003717          	auipc	a4,0x3
    80002d28:	0f070713          	addi	a4,a4,240 # 80005e14 <ticks>
    80002d2c:	00072783          	lw	a5,0(a4)
    80002d30:	01013403          	ld	s0,16(sp)
    80002d34:	01813083          	ld	ra,24(sp)
    80002d38:	00048513          	mv	a0,s1
    80002d3c:	0017879b          	addiw	a5,a5,1
    80002d40:	00813483          	ld	s1,8(sp)
    80002d44:	00f72023          	sw	a5,0(a4)
    80002d48:	02010113          	addi	sp,sp,32
    80002d4c:	00001317          	auipc	t1,0x1
    80002d50:	4bc30067          	jr	1212(t1) # 80004208 <release>

0000000080002d54 <devintr>:
    80002d54:	142027f3          	csrr	a5,scause
    80002d58:	00000513          	li	a0,0
    80002d5c:	0007c463          	bltz	a5,80002d64 <devintr+0x10>
    80002d60:	00008067          	ret
    80002d64:	fe010113          	addi	sp,sp,-32
    80002d68:	00813823          	sd	s0,16(sp)
    80002d6c:	00113c23          	sd	ra,24(sp)
    80002d70:	00913423          	sd	s1,8(sp)
    80002d74:	02010413          	addi	s0,sp,32
    80002d78:	0ff7f713          	andi	a4,a5,255
    80002d7c:	00900693          	li	a3,9
    80002d80:	04d70c63          	beq	a4,a3,80002dd8 <devintr+0x84>
    80002d84:	fff00713          	li	a4,-1
    80002d88:	03f71713          	slli	a4,a4,0x3f
    80002d8c:	00170713          	addi	a4,a4,1
    80002d90:	00e78c63          	beq	a5,a4,80002da8 <devintr+0x54>
    80002d94:	01813083          	ld	ra,24(sp)
    80002d98:	01013403          	ld	s0,16(sp)
    80002d9c:	00813483          	ld	s1,8(sp)
    80002da0:	02010113          	addi	sp,sp,32
    80002da4:	00008067          	ret
    80002da8:	00000097          	auipc	ra,0x0
    80002dac:	c8c080e7          	jalr	-884(ra) # 80002a34 <cpuid>
    80002db0:	06050663          	beqz	a0,80002e1c <devintr+0xc8>
    80002db4:	144027f3          	csrr	a5,sip
    80002db8:	ffd7f793          	andi	a5,a5,-3
    80002dbc:	14479073          	csrw	sip,a5
    80002dc0:	01813083          	ld	ra,24(sp)
    80002dc4:	01013403          	ld	s0,16(sp)
    80002dc8:	00813483          	ld	s1,8(sp)
    80002dcc:	00200513          	li	a0,2
    80002dd0:	02010113          	addi	sp,sp,32
    80002dd4:	00008067          	ret
    80002dd8:	00000097          	auipc	ra,0x0
    80002ddc:	24c080e7          	jalr	588(ra) # 80003024 <plic_claim>
    80002de0:	00a00793          	li	a5,10
    80002de4:	00050493          	mv	s1,a0
    80002de8:	06f50663          	beq	a0,a5,80002e54 <devintr+0x100>
    80002dec:	00100513          	li	a0,1
    80002df0:	fa0482e3          	beqz	s1,80002d94 <devintr+0x40>
    80002df4:	00048593          	mv	a1,s1
    80002df8:	00002517          	auipc	a0,0x2
    80002dfc:	40850513          	addi	a0,a0,1032 # 80005200 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80002e00:	00000097          	auipc	ra,0x0
    80002e04:	668080e7          	jalr	1640(ra) # 80003468 <__printf>
    80002e08:	00048513          	mv	a0,s1
    80002e0c:	00000097          	auipc	ra,0x0
    80002e10:	250080e7          	jalr	592(ra) # 8000305c <plic_complete>
    80002e14:	00100513          	li	a0,1
    80002e18:	f7dff06f          	j	80002d94 <devintr+0x40>
    80002e1c:	00004517          	auipc	a0,0x4
    80002e20:	10450513          	addi	a0,a0,260 # 80006f20 <tickslock>
    80002e24:	00001097          	auipc	ra,0x1
    80002e28:	318080e7          	jalr	792(ra) # 8000413c <acquire>
    80002e2c:	00003717          	auipc	a4,0x3
    80002e30:	fe870713          	addi	a4,a4,-24 # 80005e14 <ticks>
    80002e34:	00072783          	lw	a5,0(a4)
    80002e38:	00004517          	auipc	a0,0x4
    80002e3c:	0e850513          	addi	a0,a0,232 # 80006f20 <tickslock>
    80002e40:	0017879b          	addiw	a5,a5,1
    80002e44:	00f72023          	sw	a5,0(a4)
    80002e48:	00001097          	auipc	ra,0x1
    80002e4c:	3c0080e7          	jalr	960(ra) # 80004208 <release>
    80002e50:	f65ff06f          	j	80002db4 <devintr+0x60>
    80002e54:	00001097          	auipc	ra,0x1
    80002e58:	f1c080e7          	jalr	-228(ra) # 80003d70 <uartintr>
    80002e5c:	fadff06f          	j	80002e08 <devintr+0xb4>

0000000080002e60 <kernelvec>:
    80002e60:	f0010113          	addi	sp,sp,-256
    80002e64:	00113023          	sd	ra,0(sp)
    80002e68:	00213423          	sd	sp,8(sp)
    80002e6c:	00313823          	sd	gp,16(sp)
    80002e70:	00413c23          	sd	tp,24(sp)
    80002e74:	02513023          	sd	t0,32(sp)
    80002e78:	02613423          	sd	t1,40(sp)
    80002e7c:	02713823          	sd	t2,48(sp)
    80002e80:	02813c23          	sd	s0,56(sp)
    80002e84:	04913023          	sd	s1,64(sp)
    80002e88:	04a13423          	sd	a0,72(sp)
    80002e8c:	04b13823          	sd	a1,80(sp)
    80002e90:	04c13c23          	sd	a2,88(sp)
    80002e94:	06d13023          	sd	a3,96(sp)
    80002e98:	06e13423          	sd	a4,104(sp)
    80002e9c:	06f13823          	sd	a5,112(sp)
    80002ea0:	07013c23          	sd	a6,120(sp)
    80002ea4:	09113023          	sd	a7,128(sp)
    80002ea8:	09213423          	sd	s2,136(sp)
    80002eac:	09313823          	sd	s3,144(sp)
    80002eb0:	09413c23          	sd	s4,152(sp)
    80002eb4:	0b513023          	sd	s5,160(sp)
    80002eb8:	0b613423          	sd	s6,168(sp)
    80002ebc:	0b713823          	sd	s7,176(sp)
    80002ec0:	0b813c23          	sd	s8,184(sp)
    80002ec4:	0d913023          	sd	s9,192(sp)
    80002ec8:	0da13423          	sd	s10,200(sp)
    80002ecc:	0db13823          	sd	s11,208(sp)
    80002ed0:	0dc13c23          	sd	t3,216(sp)
    80002ed4:	0fd13023          	sd	t4,224(sp)
    80002ed8:	0fe13423          	sd	t5,232(sp)
    80002edc:	0ff13823          	sd	t6,240(sp)
    80002ee0:	cd5ff0ef          	jal	ra,80002bb4 <kerneltrap>
    80002ee4:	00013083          	ld	ra,0(sp)
    80002ee8:	00813103          	ld	sp,8(sp)
    80002eec:	01013183          	ld	gp,16(sp)
    80002ef0:	02013283          	ld	t0,32(sp)
    80002ef4:	02813303          	ld	t1,40(sp)
    80002ef8:	03013383          	ld	t2,48(sp)
    80002efc:	03813403          	ld	s0,56(sp)
    80002f00:	04013483          	ld	s1,64(sp)
    80002f04:	04813503          	ld	a0,72(sp)
    80002f08:	05013583          	ld	a1,80(sp)
    80002f0c:	05813603          	ld	a2,88(sp)
    80002f10:	06013683          	ld	a3,96(sp)
    80002f14:	06813703          	ld	a4,104(sp)
    80002f18:	07013783          	ld	a5,112(sp)
    80002f1c:	07813803          	ld	a6,120(sp)
    80002f20:	08013883          	ld	a7,128(sp)
    80002f24:	08813903          	ld	s2,136(sp)
    80002f28:	09013983          	ld	s3,144(sp)
    80002f2c:	09813a03          	ld	s4,152(sp)
    80002f30:	0a013a83          	ld	s5,160(sp)
    80002f34:	0a813b03          	ld	s6,168(sp)
    80002f38:	0b013b83          	ld	s7,176(sp)
    80002f3c:	0b813c03          	ld	s8,184(sp)
    80002f40:	0c013c83          	ld	s9,192(sp)
    80002f44:	0c813d03          	ld	s10,200(sp)
    80002f48:	0d013d83          	ld	s11,208(sp)
    80002f4c:	0d813e03          	ld	t3,216(sp)
    80002f50:	0e013e83          	ld	t4,224(sp)
    80002f54:	0e813f03          	ld	t5,232(sp)
    80002f58:	0f013f83          	ld	t6,240(sp)
    80002f5c:	10010113          	addi	sp,sp,256
    80002f60:	10200073          	sret
    80002f64:	00000013          	nop
    80002f68:	00000013          	nop
    80002f6c:	00000013          	nop

0000000080002f70 <timervec>:
    80002f70:	34051573          	csrrw	a0,mscratch,a0
    80002f74:	00b53023          	sd	a1,0(a0)
    80002f78:	00c53423          	sd	a2,8(a0)
    80002f7c:	00d53823          	sd	a3,16(a0)
    80002f80:	01853583          	ld	a1,24(a0)
    80002f84:	02053603          	ld	a2,32(a0)
    80002f88:	0005b683          	ld	a3,0(a1)
    80002f8c:	00c686b3          	add	a3,a3,a2
    80002f90:	00d5b023          	sd	a3,0(a1)
    80002f94:	00200593          	li	a1,2
    80002f98:	14459073          	csrw	sip,a1
    80002f9c:	01053683          	ld	a3,16(a0)
    80002fa0:	00853603          	ld	a2,8(a0)
    80002fa4:	00053583          	ld	a1,0(a0)
    80002fa8:	34051573          	csrrw	a0,mscratch,a0
    80002fac:	30200073          	mret

0000000080002fb0 <plicinit>:
    80002fb0:	ff010113          	addi	sp,sp,-16
    80002fb4:	00813423          	sd	s0,8(sp)
    80002fb8:	01010413          	addi	s0,sp,16
    80002fbc:	00813403          	ld	s0,8(sp)
    80002fc0:	0c0007b7          	lui	a5,0xc000
    80002fc4:	00100713          	li	a4,1
    80002fc8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002fcc:	00e7a223          	sw	a4,4(a5)
    80002fd0:	01010113          	addi	sp,sp,16
    80002fd4:	00008067          	ret

0000000080002fd8 <plicinithart>:
    80002fd8:	ff010113          	addi	sp,sp,-16
    80002fdc:	00813023          	sd	s0,0(sp)
    80002fe0:	00113423          	sd	ra,8(sp)
    80002fe4:	01010413          	addi	s0,sp,16
    80002fe8:	00000097          	auipc	ra,0x0
    80002fec:	a4c080e7          	jalr	-1460(ra) # 80002a34 <cpuid>
    80002ff0:	0085171b          	slliw	a4,a0,0x8
    80002ff4:	0c0027b7          	lui	a5,0xc002
    80002ff8:	00e787b3          	add	a5,a5,a4
    80002ffc:	40200713          	li	a4,1026
    80003000:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003004:	00813083          	ld	ra,8(sp)
    80003008:	00013403          	ld	s0,0(sp)
    8000300c:	00d5151b          	slliw	a0,a0,0xd
    80003010:	0c2017b7          	lui	a5,0xc201
    80003014:	00a78533          	add	a0,a5,a0
    80003018:	00052023          	sw	zero,0(a0)
    8000301c:	01010113          	addi	sp,sp,16
    80003020:	00008067          	ret

0000000080003024 <plic_claim>:
    80003024:	ff010113          	addi	sp,sp,-16
    80003028:	00813023          	sd	s0,0(sp)
    8000302c:	00113423          	sd	ra,8(sp)
    80003030:	01010413          	addi	s0,sp,16
    80003034:	00000097          	auipc	ra,0x0
    80003038:	a00080e7          	jalr	-1536(ra) # 80002a34 <cpuid>
    8000303c:	00813083          	ld	ra,8(sp)
    80003040:	00013403          	ld	s0,0(sp)
    80003044:	00d5151b          	slliw	a0,a0,0xd
    80003048:	0c2017b7          	lui	a5,0xc201
    8000304c:	00a78533          	add	a0,a5,a0
    80003050:	00452503          	lw	a0,4(a0)
    80003054:	01010113          	addi	sp,sp,16
    80003058:	00008067          	ret

000000008000305c <plic_complete>:
    8000305c:	fe010113          	addi	sp,sp,-32
    80003060:	00813823          	sd	s0,16(sp)
    80003064:	00913423          	sd	s1,8(sp)
    80003068:	00113c23          	sd	ra,24(sp)
    8000306c:	02010413          	addi	s0,sp,32
    80003070:	00050493          	mv	s1,a0
    80003074:	00000097          	auipc	ra,0x0
    80003078:	9c0080e7          	jalr	-1600(ra) # 80002a34 <cpuid>
    8000307c:	01813083          	ld	ra,24(sp)
    80003080:	01013403          	ld	s0,16(sp)
    80003084:	00d5179b          	slliw	a5,a0,0xd
    80003088:	0c201737          	lui	a4,0xc201
    8000308c:	00f707b3          	add	a5,a4,a5
    80003090:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003094:	00813483          	ld	s1,8(sp)
    80003098:	02010113          	addi	sp,sp,32
    8000309c:	00008067          	ret

00000000800030a0 <consolewrite>:
    800030a0:	fb010113          	addi	sp,sp,-80
    800030a4:	04813023          	sd	s0,64(sp)
    800030a8:	04113423          	sd	ra,72(sp)
    800030ac:	02913c23          	sd	s1,56(sp)
    800030b0:	03213823          	sd	s2,48(sp)
    800030b4:	03313423          	sd	s3,40(sp)
    800030b8:	03413023          	sd	s4,32(sp)
    800030bc:	01513c23          	sd	s5,24(sp)
    800030c0:	05010413          	addi	s0,sp,80
    800030c4:	06c05c63          	blez	a2,8000313c <consolewrite+0x9c>
    800030c8:	00060993          	mv	s3,a2
    800030cc:	00050a13          	mv	s4,a0
    800030d0:	00058493          	mv	s1,a1
    800030d4:	00000913          	li	s2,0
    800030d8:	fff00a93          	li	s5,-1
    800030dc:	01c0006f          	j	800030f8 <consolewrite+0x58>
    800030e0:	fbf44503          	lbu	a0,-65(s0)
    800030e4:	0019091b          	addiw	s2,s2,1
    800030e8:	00148493          	addi	s1,s1,1
    800030ec:	00001097          	auipc	ra,0x1
    800030f0:	a9c080e7          	jalr	-1380(ra) # 80003b88 <uartputc>
    800030f4:	03298063          	beq	s3,s2,80003114 <consolewrite+0x74>
    800030f8:	00048613          	mv	a2,s1
    800030fc:	00100693          	li	a3,1
    80003100:	000a0593          	mv	a1,s4
    80003104:	fbf40513          	addi	a0,s0,-65
    80003108:	00000097          	auipc	ra,0x0
    8000310c:	9e4080e7          	jalr	-1564(ra) # 80002aec <either_copyin>
    80003110:	fd5518e3          	bne	a0,s5,800030e0 <consolewrite+0x40>
    80003114:	04813083          	ld	ra,72(sp)
    80003118:	04013403          	ld	s0,64(sp)
    8000311c:	03813483          	ld	s1,56(sp)
    80003120:	02813983          	ld	s3,40(sp)
    80003124:	02013a03          	ld	s4,32(sp)
    80003128:	01813a83          	ld	s5,24(sp)
    8000312c:	00090513          	mv	a0,s2
    80003130:	03013903          	ld	s2,48(sp)
    80003134:	05010113          	addi	sp,sp,80
    80003138:	00008067          	ret
    8000313c:	00000913          	li	s2,0
    80003140:	fd5ff06f          	j	80003114 <consolewrite+0x74>

0000000080003144 <consoleread>:
    80003144:	f9010113          	addi	sp,sp,-112
    80003148:	06813023          	sd	s0,96(sp)
    8000314c:	04913c23          	sd	s1,88(sp)
    80003150:	05213823          	sd	s2,80(sp)
    80003154:	05313423          	sd	s3,72(sp)
    80003158:	05413023          	sd	s4,64(sp)
    8000315c:	03513c23          	sd	s5,56(sp)
    80003160:	03613823          	sd	s6,48(sp)
    80003164:	03713423          	sd	s7,40(sp)
    80003168:	03813023          	sd	s8,32(sp)
    8000316c:	06113423          	sd	ra,104(sp)
    80003170:	01913c23          	sd	s9,24(sp)
    80003174:	07010413          	addi	s0,sp,112
    80003178:	00060b93          	mv	s7,a2
    8000317c:	00050913          	mv	s2,a0
    80003180:	00058c13          	mv	s8,a1
    80003184:	00060b1b          	sext.w	s6,a2
    80003188:	00004497          	auipc	s1,0x4
    8000318c:	dc048493          	addi	s1,s1,-576 # 80006f48 <cons>
    80003190:	00400993          	li	s3,4
    80003194:	fff00a13          	li	s4,-1
    80003198:	00a00a93          	li	s5,10
    8000319c:	05705e63          	blez	s7,800031f8 <consoleread+0xb4>
    800031a0:	09c4a703          	lw	a4,156(s1)
    800031a4:	0984a783          	lw	a5,152(s1)
    800031a8:	0007071b          	sext.w	a4,a4
    800031ac:	08e78463          	beq	a5,a4,80003234 <consoleread+0xf0>
    800031b0:	07f7f713          	andi	a4,a5,127
    800031b4:	00e48733          	add	a4,s1,a4
    800031b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800031bc:	0017869b          	addiw	a3,a5,1
    800031c0:	08d4ac23          	sw	a3,152(s1)
    800031c4:	00070c9b          	sext.w	s9,a4
    800031c8:	0b370663          	beq	a4,s3,80003274 <consoleread+0x130>
    800031cc:	00100693          	li	a3,1
    800031d0:	f9f40613          	addi	a2,s0,-97
    800031d4:	000c0593          	mv	a1,s8
    800031d8:	00090513          	mv	a0,s2
    800031dc:	f8e40fa3          	sb	a4,-97(s0)
    800031e0:	00000097          	auipc	ra,0x0
    800031e4:	8c0080e7          	jalr	-1856(ra) # 80002aa0 <either_copyout>
    800031e8:	01450863          	beq	a0,s4,800031f8 <consoleread+0xb4>
    800031ec:	001c0c13          	addi	s8,s8,1
    800031f0:	fffb8b9b          	addiw	s7,s7,-1
    800031f4:	fb5c94e3          	bne	s9,s5,8000319c <consoleread+0x58>
    800031f8:	000b851b          	sext.w	a0,s7
    800031fc:	06813083          	ld	ra,104(sp)
    80003200:	06013403          	ld	s0,96(sp)
    80003204:	05813483          	ld	s1,88(sp)
    80003208:	05013903          	ld	s2,80(sp)
    8000320c:	04813983          	ld	s3,72(sp)
    80003210:	04013a03          	ld	s4,64(sp)
    80003214:	03813a83          	ld	s5,56(sp)
    80003218:	02813b83          	ld	s7,40(sp)
    8000321c:	02013c03          	ld	s8,32(sp)
    80003220:	01813c83          	ld	s9,24(sp)
    80003224:	40ab053b          	subw	a0,s6,a0
    80003228:	03013b03          	ld	s6,48(sp)
    8000322c:	07010113          	addi	sp,sp,112
    80003230:	00008067          	ret
    80003234:	00001097          	auipc	ra,0x1
    80003238:	1d8080e7          	jalr	472(ra) # 8000440c <push_on>
    8000323c:	0984a703          	lw	a4,152(s1)
    80003240:	09c4a783          	lw	a5,156(s1)
    80003244:	0007879b          	sext.w	a5,a5
    80003248:	fef70ce3          	beq	a4,a5,80003240 <consoleread+0xfc>
    8000324c:	00001097          	auipc	ra,0x1
    80003250:	234080e7          	jalr	564(ra) # 80004480 <pop_on>
    80003254:	0984a783          	lw	a5,152(s1)
    80003258:	07f7f713          	andi	a4,a5,127
    8000325c:	00e48733          	add	a4,s1,a4
    80003260:	01874703          	lbu	a4,24(a4)
    80003264:	0017869b          	addiw	a3,a5,1
    80003268:	08d4ac23          	sw	a3,152(s1)
    8000326c:	00070c9b          	sext.w	s9,a4
    80003270:	f5371ee3          	bne	a4,s3,800031cc <consoleread+0x88>
    80003274:	000b851b          	sext.w	a0,s7
    80003278:	f96bf2e3          	bgeu	s7,s6,800031fc <consoleread+0xb8>
    8000327c:	08f4ac23          	sw	a5,152(s1)
    80003280:	f7dff06f          	j	800031fc <consoleread+0xb8>

0000000080003284 <consputc>:
    80003284:	10000793          	li	a5,256
    80003288:	00f50663          	beq	a0,a5,80003294 <consputc+0x10>
    8000328c:	00001317          	auipc	t1,0x1
    80003290:	9f430067          	jr	-1548(t1) # 80003c80 <uartputc_sync>
    80003294:	ff010113          	addi	sp,sp,-16
    80003298:	00113423          	sd	ra,8(sp)
    8000329c:	00813023          	sd	s0,0(sp)
    800032a0:	01010413          	addi	s0,sp,16
    800032a4:	00800513          	li	a0,8
    800032a8:	00001097          	auipc	ra,0x1
    800032ac:	9d8080e7          	jalr	-1576(ra) # 80003c80 <uartputc_sync>
    800032b0:	02000513          	li	a0,32
    800032b4:	00001097          	auipc	ra,0x1
    800032b8:	9cc080e7          	jalr	-1588(ra) # 80003c80 <uartputc_sync>
    800032bc:	00013403          	ld	s0,0(sp)
    800032c0:	00813083          	ld	ra,8(sp)
    800032c4:	00800513          	li	a0,8
    800032c8:	01010113          	addi	sp,sp,16
    800032cc:	00001317          	auipc	t1,0x1
    800032d0:	9b430067          	jr	-1612(t1) # 80003c80 <uartputc_sync>

00000000800032d4 <consoleintr>:
    800032d4:	fe010113          	addi	sp,sp,-32
    800032d8:	00813823          	sd	s0,16(sp)
    800032dc:	00913423          	sd	s1,8(sp)
    800032e0:	01213023          	sd	s2,0(sp)
    800032e4:	00113c23          	sd	ra,24(sp)
    800032e8:	02010413          	addi	s0,sp,32
    800032ec:	00004917          	auipc	s2,0x4
    800032f0:	c5c90913          	addi	s2,s2,-932 # 80006f48 <cons>
    800032f4:	00050493          	mv	s1,a0
    800032f8:	00090513          	mv	a0,s2
    800032fc:	00001097          	auipc	ra,0x1
    80003300:	e40080e7          	jalr	-448(ra) # 8000413c <acquire>
    80003304:	02048c63          	beqz	s1,8000333c <consoleintr+0x68>
    80003308:	0a092783          	lw	a5,160(s2)
    8000330c:	09892703          	lw	a4,152(s2)
    80003310:	07f00693          	li	a3,127
    80003314:	40e7873b          	subw	a4,a5,a4
    80003318:	02e6e263          	bltu	a3,a4,8000333c <consoleintr+0x68>
    8000331c:	00d00713          	li	a4,13
    80003320:	04e48063          	beq	s1,a4,80003360 <consoleintr+0x8c>
    80003324:	07f7f713          	andi	a4,a5,127
    80003328:	00e90733          	add	a4,s2,a4
    8000332c:	0017879b          	addiw	a5,a5,1
    80003330:	0af92023          	sw	a5,160(s2)
    80003334:	00970c23          	sb	s1,24(a4)
    80003338:	08f92e23          	sw	a5,156(s2)
    8000333c:	01013403          	ld	s0,16(sp)
    80003340:	01813083          	ld	ra,24(sp)
    80003344:	00813483          	ld	s1,8(sp)
    80003348:	00013903          	ld	s2,0(sp)
    8000334c:	00004517          	auipc	a0,0x4
    80003350:	bfc50513          	addi	a0,a0,-1028 # 80006f48 <cons>
    80003354:	02010113          	addi	sp,sp,32
    80003358:	00001317          	auipc	t1,0x1
    8000335c:	eb030067          	jr	-336(t1) # 80004208 <release>
    80003360:	00a00493          	li	s1,10
    80003364:	fc1ff06f          	j	80003324 <consoleintr+0x50>

0000000080003368 <consoleinit>:
    80003368:	fe010113          	addi	sp,sp,-32
    8000336c:	00113c23          	sd	ra,24(sp)
    80003370:	00813823          	sd	s0,16(sp)
    80003374:	00913423          	sd	s1,8(sp)
    80003378:	02010413          	addi	s0,sp,32
    8000337c:	00004497          	auipc	s1,0x4
    80003380:	bcc48493          	addi	s1,s1,-1076 # 80006f48 <cons>
    80003384:	00048513          	mv	a0,s1
    80003388:	00002597          	auipc	a1,0x2
    8000338c:	ed058593          	addi	a1,a1,-304 # 80005258 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80003390:	00001097          	auipc	ra,0x1
    80003394:	d88080e7          	jalr	-632(ra) # 80004118 <initlock>
    80003398:	00000097          	auipc	ra,0x0
    8000339c:	7ac080e7          	jalr	1964(ra) # 80003b44 <uartinit>
    800033a0:	01813083          	ld	ra,24(sp)
    800033a4:	01013403          	ld	s0,16(sp)
    800033a8:	00000797          	auipc	a5,0x0
    800033ac:	d9c78793          	addi	a5,a5,-612 # 80003144 <consoleread>
    800033b0:	0af4bc23          	sd	a5,184(s1)
    800033b4:	00000797          	auipc	a5,0x0
    800033b8:	cec78793          	addi	a5,a5,-788 # 800030a0 <consolewrite>
    800033bc:	0cf4b023          	sd	a5,192(s1)
    800033c0:	00813483          	ld	s1,8(sp)
    800033c4:	02010113          	addi	sp,sp,32
    800033c8:	00008067          	ret

00000000800033cc <console_read>:
    800033cc:	ff010113          	addi	sp,sp,-16
    800033d0:	00813423          	sd	s0,8(sp)
    800033d4:	01010413          	addi	s0,sp,16
    800033d8:	00813403          	ld	s0,8(sp)
    800033dc:	00004317          	auipc	t1,0x4
    800033e0:	c2433303          	ld	t1,-988(t1) # 80007000 <devsw+0x10>
    800033e4:	01010113          	addi	sp,sp,16
    800033e8:	00030067          	jr	t1

00000000800033ec <console_write>:
    800033ec:	ff010113          	addi	sp,sp,-16
    800033f0:	00813423          	sd	s0,8(sp)
    800033f4:	01010413          	addi	s0,sp,16
    800033f8:	00813403          	ld	s0,8(sp)
    800033fc:	00004317          	auipc	t1,0x4
    80003400:	c0c33303          	ld	t1,-1012(t1) # 80007008 <devsw+0x18>
    80003404:	01010113          	addi	sp,sp,16
    80003408:	00030067          	jr	t1

000000008000340c <panic>:
    8000340c:	fe010113          	addi	sp,sp,-32
    80003410:	00113c23          	sd	ra,24(sp)
    80003414:	00813823          	sd	s0,16(sp)
    80003418:	00913423          	sd	s1,8(sp)
    8000341c:	02010413          	addi	s0,sp,32
    80003420:	00050493          	mv	s1,a0
    80003424:	00002517          	auipc	a0,0x2
    80003428:	e3c50513          	addi	a0,a0,-452 # 80005260 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    8000342c:	00004797          	auipc	a5,0x4
    80003430:	c607ae23          	sw	zero,-900(a5) # 800070a8 <pr+0x18>
    80003434:	00000097          	auipc	ra,0x0
    80003438:	034080e7          	jalr	52(ra) # 80003468 <__printf>
    8000343c:	00048513          	mv	a0,s1
    80003440:	00000097          	auipc	ra,0x0
    80003444:	028080e7          	jalr	40(ra) # 80003468 <__printf>
    80003448:	00002517          	auipc	a0,0x2
    8000344c:	df850513          	addi	a0,a0,-520 # 80005240 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80003450:	00000097          	auipc	ra,0x0
    80003454:	018080e7          	jalr	24(ra) # 80003468 <__printf>
    80003458:	00100793          	li	a5,1
    8000345c:	00003717          	auipc	a4,0x3
    80003460:	9af72e23          	sw	a5,-1604(a4) # 80005e18 <panicked>
    80003464:	0000006f          	j	80003464 <panic+0x58>

0000000080003468 <__printf>:
    80003468:	f3010113          	addi	sp,sp,-208
    8000346c:	08813023          	sd	s0,128(sp)
    80003470:	07313423          	sd	s3,104(sp)
    80003474:	09010413          	addi	s0,sp,144
    80003478:	05813023          	sd	s8,64(sp)
    8000347c:	08113423          	sd	ra,136(sp)
    80003480:	06913c23          	sd	s1,120(sp)
    80003484:	07213823          	sd	s2,112(sp)
    80003488:	07413023          	sd	s4,96(sp)
    8000348c:	05513c23          	sd	s5,88(sp)
    80003490:	05613823          	sd	s6,80(sp)
    80003494:	05713423          	sd	s7,72(sp)
    80003498:	03913c23          	sd	s9,56(sp)
    8000349c:	03a13823          	sd	s10,48(sp)
    800034a0:	03b13423          	sd	s11,40(sp)
    800034a4:	00004317          	auipc	t1,0x4
    800034a8:	bec30313          	addi	t1,t1,-1044 # 80007090 <pr>
    800034ac:	01832c03          	lw	s8,24(t1)
    800034b0:	00b43423          	sd	a1,8(s0)
    800034b4:	00c43823          	sd	a2,16(s0)
    800034b8:	00d43c23          	sd	a3,24(s0)
    800034bc:	02e43023          	sd	a4,32(s0)
    800034c0:	02f43423          	sd	a5,40(s0)
    800034c4:	03043823          	sd	a6,48(s0)
    800034c8:	03143c23          	sd	a7,56(s0)
    800034cc:	00050993          	mv	s3,a0
    800034d0:	4a0c1663          	bnez	s8,8000397c <__printf+0x514>
    800034d4:	60098c63          	beqz	s3,80003aec <__printf+0x684>
    800034d8:	0009c503          	lbu	a0,0(s3)
    800034dc:	00840793          	addi	a5,s0,8
    800034e0:	f6f43c23          	sd	a5,-136(s0)
    800034e4:	00000493          	li	s1,0
    800034e8:	22050063          	beqz	a0,80003708 <__printf+0x2a0>
    800034ec:	00002a37          	lui	s4,0x2
    800034f0:	00018ab7          	lui	s5,0x18
    800034f4:	000f4b37          	lui	s6,0xf4
    800034f8:	00989bb7          	lui	s7,0x989
    800034fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003500:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003504:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003508:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000350c:	00148c9b          	addiw	s9,s1,1
    80003510:	02500793          	li	a5,37
    80003514:	01998933          	add	s2,s3,s9
    80003518:	38f51263          	bne	a0,a5,8000389c <__printf+0x434>
    8000351c:	00094783          	lbu	a5,0(s2)
    80003520:	00078c9b          	sext.w	s9,a5
    80003524:	1e078263          	beqz	a5,80003708 <__printf+0x2a0>
    80003528:	0024849b          	addiw	s1,s1,2
    8000352c:	07000713          	li	a4,112
    80003530:	00998933          	add	s2,s3,s1
    80003534:	38e78a63          	beq	a5,a4,800038c8 <__printf+0x460>
    80003538:	20f76863          	bltu	a4,a5,80003748 <__printf+0x2e0>
    8000353c:	42a78863          	beq	a5,a0,8000396c <__printf+0x504>
    80003540:	06400713          	li	a4,100
    80003544:	40e79663          	bne	a5,a4,80003950 <__printf+0x4e8>
    80003548:	f7843783          	ld	a5,-136(s0)
    8000354c:	0007a603          	lw	a2,0(a5)
    80003550:	00878793          	addi	a5,a5,8
    80003554:	f6f43c23          	sd	a5,-136(s0)
    80003558:	42064a63          	bltz	a2,8000398c <__printf+0x524>
    8000355c:	00a00713          	li	a4,10
    80003560:	02e677bb          	remuw	a5,a2,a4
    80003564:	00002d97          	auipc	s11,0x2
    80003568:	d24d8d93          	addi	s11,s11,-732 # 80005288 <digits>
    8000356c:	00900593          	li	a1,9
    80003570:	0006051b          	sext.w	a0,a2
    80003574:	00000c93          	li	s9,0
    80003578:	02079793          	slli	a5,a5,0x20
    8000357c:	0207d793          	srli	a5,a5,0x20
    80003580:	00fd87b3          	add	a5,s11,a5
    80003584:	0007c783          	lbu	a5,0(a5)
    80003588:	02e656bb          	divuw	a3,a2,a4
    8000358c:	f8f40023          	sb	a5,-128(s0)
    80003590:	14c5d863          	bge	a1,a2,800036e0 <__printf+0x278>
    80003594:	06300593          	li	a1,99
    80003598:	00100c93          	li	s9,1
    8000359c:	02e6f7bb          	remuw	a5,a3,a4
    800035a0:	02079793          	slli	a5,a5,0x20
    800035a4:	0207d793          	srli	a5,a5,0x20
    800035a8:	00fd87b3          	add	a5,s11,a5
    800035ac:	0007c783          	lbu	a5,0(a5)
    800035b0:	02e6d73b          	divuw	a4,a3,a4
    800035b4:	f8f400a3          	sb	a5,-127(s0)
    800035b8:	12a5f463          	bgeu	a1,a0,800036e0 <__printf+0x278>
    800035bc:	00a00693          	li	a3,10
    800035c0:	00900593          	li	a1,9
    800035c4:	02d777bb          	remuw	a5,a4,a3
    800035c8:	02079793          	slli	a5,a5,0x20
    800035cc:	0207d793          	srli	a5,a5,0x20
    800035d0:	00fd87b3          	add	a5,s11,a5
    800035d4:	0007c503          	lbu	a0,0(a5)
    800035d8:	02d757bb          	divuw	a5,a4,a3
    800035dc:	f8a40123          	sb	a0,-126(s0)
    800035e0:	48e5f263          	bgeu	a1,a4,80003a64 <__printf+0x5fc>
    800035e4:	06300513          	li	a0,99
    800035e8:	02d7f5bb          	remuw	a1,a5,a3
    800035ec:	02059593          	slli	a1,a1,0x20
    800035f0:	0205d593          	srli	a1,a1,0x20
    800035f4:	00bd85b3          	add	a1,s11,a1
    800035f8:	0005c583          	lbu	a1,0(a1)
    800035fc:	02d7d7bb          	divuw	a5,a5,a3
    80003600:	f8b401a3          	sb	a1,-125(s0)
    80003604:	48e57263          	bgeu	a0,a4,80003a88 <__printf+0x620>
    80003608:	3e700513          	li	a0,999
    8000360c:	02d7f5bb          	remuw	a1,a5,a3
    80003610:	02059593          	slli	a1,a1,0x20
    80003614:	0205d593          	srli	a1,a1,0x20
    80003618:	00bd85b3          	add	a1,s11,a1
    8000361c:	0005c583          	lbu	a1,0(a1)
    80003620:	02d7d7bb          	divuw	a5,a5,a3
    80003624:	f8b40223          	sb	a1,-124(s0)
    80003628:	46e57663          	bgeu	a0,a4,80003a94 <__printf+0x62c>
    8000362c:	02d7f5bb          	remuw	a1,a5,a3
    80003630:	02059593          	slli	a1,a1,0x20
    80003634:	0205d593          	srli	a1,a1,0x20
    80003638:	00bd85b3          	add	a1,s11,a1
    8000363c:	0005c583          	lbu	a1,0(a1)
    80003640:	02d7d7bb          	divuw	a5,a5,a3
    80003644:	f8b402a3          	sb	a1,-123(s0)
    80003648:	46ea7863          	bgeu	s4,a4,80003ab8 <__printf+0x650>
    8000364c:	02d7f5bb          	remuw	a1,a5,a3
    80003650:	02059593          	slli	a1,a1,0x20
    80003654:	0205d593          	srli	a1,a1,0x20
    80003658:	00bd85b3          	add	a1,s11,a1
    8000365c:	0005c583          	lbu	a1,0(a1)
    80003660:	02d7d7bb          	divuw	a5,a5,a3
    80003664:	f8b40323          	sb	a1,-122(s0)
    80003668:	3eeaf863          	bgeu	s5,a4,80003a58 <__printf+0x5f0>
    8000366c:	02d7f5bb          	remuw	a1,a5,a3
    80003670:	02059593          	slli	a1,a1,0x20
    80003674:	0205d593          	srli	a1,a1,0x20
    80003678:	00bd85b3          	add	a1,s11,a1
    8000367c:	0005c583          	lbu	a1,0(a1)
    80003680:	02d7d7bb          	divuw	a5,a5,a3
    80003684:	f8b403a3          	sb	a1,-121(s0)
    80003688:	42eb7e63          	bgeu	s6,a4,80003ac4 <__printf+0x65c>
    8000368c:	02d7f5bb          	remuw	a1,a5,a3
    80003690:	02059593          	slli	a1,a1,0x20
    80003694:	0205d593          	srli	a1,a1,0x20
    80003698:	00bd85b3          	add	a1,s11,a1
    8000369c:	0005c583          	lbu	a1,0(a1)
    800036a0:	02d7d7bb          	divuw	a5,a5,a3
    800036a4:	f8b40423          	sb	a1,-120(s0)
    800036a8:	42ebfc63          	bgeu	s7,a4,80003ae0 <__printf+0x678>
    800036ac:	02079793          	slli	a5,a5,0x20
    800036b0:	0207d793          	srli	a5,a5,0x20
    800036b4:	00fd8db3          	add	s11,s11,a5
    800036b8:	000dc703          	lbu	a4,0(s11)
    800036bc:	00a00793          	li	a5,10
    800036c0:	00900c93          	li	s9,9
    800036c4:	f8e404a3          	sb	a4,-119(s0)
    800036c8:	00065c63          	bgez	a2,800036e0 <__printf+0x278>
    800036cc:	f9040713          	addi	a4,s0,-112
    800036d0:	00f70733          	add	a4,a4,a5
    800036d4:	02d00693          	li	a3,45
    800036d8:	fed70823          	sb	a3,-16(a4)
    800036dc:	00078c93          	mv	s9,a5
    800036e0:	f8040793          	addi	a5,s0,-128
    800036e4:	01978cb3          	add	s9,a5,s9
    800036e8:	f7f40d13          	addi	s10,s0,-129
    800036ec:	000cc503          	lbu	a0,0(s9)
    800036f0:	fffc8c93          	addi	s9,s9,-1
    800036f4:	00000097          	auipc	ra,0x0
    800036f8:	b90080e7          	jalr	-1136(ra) # 80003284 <consputc>
    800036fc:	ffac98e3          	bne	s9,s10,800036ec <__printf+0x284>
    80003700:	00094503          	lbu	a0,0(s2)
    80003704:	e00514e3          	bnez	a0,8000350c <__printf+0xa4>
    80003708:	1a0c1663          	bnez	s8,800038b4 <__printf+0x44c>
    8000370c:	08813083          	ld	ra,136(sp)
    80003710:	08013403          	ld	s0,128(sp)
    80003714:	07813483          	ld	s1,120(sp)
    80003718:	07013903          	ld	s2,112(sp)
    8000371c:	06813983          	ld	s3,104(sp)
    80003720:	06013a03          	ld	s4,96(sp)
    80003724:	05813a83          	ld	s5,88(sp)
    80003728:	05013b03          	ld	s6,80(sp)
    8000372c:	04813b83          	ld	s7,72(sp)
    80003730:	04013c03          	ld	s8,64(sp)
    80003734:	03813c83          	ld	s9,56(sp)
    80003738:	03013d03          	ld	s10,48(sp)
    8000373c:	02813d83          	ld	s11,40(sp)
    80003740:	0d010113          	addi	sp,sp,208
    80003744:	00008067          	ret
    80003748:	07300713          	li	a4,115
    8000374c:	1ce78a63          	beq	a5,a4,80003920 <__printf+0x4b8>
    80003750:	07800713          	li	a4,120
    80003754:	1ee79e63          	bne	a5,a4,80003950 <__printf+0x4e8>
    80003758:	f7843783          	ld	a5,-136(s0)
    8000375c:	0007a703          	lw	a4,0(a5)
    80003760:	00878793          	addi	a5,a5,8
    80003764:	f6f43c23          	sd	a5,-136(s0)
    80003768:	28074263          	bltz	a4,800039ec <__printf+0x584>
    8000376c:	00002d97          	auipc	s11,0x2
    80003770:	b1cd8d93          	addi	s11,s11,-1252 # 80005288 <digits>
    80003774:	00f77793          	andi	a5,a4,15
    80003778:	00fd87b3          	add	a5,s11,a5
    8000377c:	0007c683          	lbu	a3,0(a5)
    80003780:	00f00613          	li	a2,15
    80003784:	0007079b          	sext.w	a5,a4
    80003788:	f8d40023          	sb	a3,-128(s0)
    8000378c:	0047559b          	srliw	a1,a4,0x4
    80003790:	0047569b          	srliw	a3,a4,0x4
    80003794:	00000c93          	li	s9,0
    80003798:	0ee65063          	bge	a2,a4,80003878 <__printf+0x410>
    8000379c:	00f6f693          	andi	a3,a3,15
    800037a0:	00dd86b3          	add	a3,s11,a3
    800037a4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800037a8:	0087d79b          	srliw	a5,a5,0x8
    800037ac:	00100c93          	li	s9,1
    800037b0:	f8d400a3          	sb	a3,-127(s0)
    800037b4:	0cb67263          	bgeu	a2,a1,80003878 <__printf+0x410>
    800037b8:	00f7f693          	andi	a3,a5,15
    800037bc:	00dd86b3          	add	a3,s11,a3
    800037c0:	0006c583          	lbu	a1,0(a3)
    800037c4:	00f00613          	li	a2,15
    800037c8:	0047d69b          	srliw	a3,a5,0x4
    800037cc:	f8b40123          	sb	a1,-126(s0)
    800037d0:	0047d593          	srli	a1,a5,0x4
    800037d4:	28f67e63          	bgeu	a2,a5,80003a70 <__printf+0x608>
    800037d8:	00f6f693          	andi	a3,a3,15
    800037dc:	00dd86b3          	add	a3,s11,a3
    800037e0:	0006c503          	lbu	a0,0(a3)
    800037e4:	0087d813          	srli	a6,a5,0x8
    800037e8:	0087d69b          	srliw	a3,a5,0x8
    800037ec:	f8a401a3          	sb	a0,-125(s0)
    800037f0:	28b67663          	bgeu	a2,a1,80003a7c <__printf+0x614>
    800037f4:	00f6f693          	andi	a3,a3,15
    800037f8:	00dd86b3          	add	a3,s11,a3
    800037fc:	0006c583          	lbu	a1,0(a3)
    80003800:	00c7d513          	srli	a0,a5,0xc
    80003804:	00c7d69b          	srliw	a3,a5,0xc
    80003808:	f8b40223          	sb	a1,-124(s0)
    8000380c:	29067a63          	bgeu	a2,a6,80003aa0 <__printf+0x638>
    80003810:	00f6f693          	andi	a3,a3,15
    80003814:	00dd86b3          	add	a3,s11,a3
    80003818:	0006c583          	lbu	a1,0(a3)
    8000381c:	0107d813          	srli	a6,a5,0x10
    80003820:	0107d69b          	srliw	a3,a5,0x10
    80003824:	f8b402a3          	sb	a1,-123(s0)
    80003828:	28a67263          	bgeu	a2,a0,80003aac <__printf+0x644>
    8000382c:	00f6f693          	andi	a3,a3,15
    80003830:	00dd86b3          	add	a3,s11,a3
    80003834:	0006c683          	lbu	a3,0(a3)
    80003838:	0147d79b          	srliw	a5,a5,0x14
    8000383c:	f8d40323          	sb	a3,-122(s0)
    80003840:	21067663          	bgeu	a2,a6,80003a4c <__printf+0x5e4>
    80003844:	02079793          	slli	a5,a5,0x20
    80003848:	0207d793          	srli	a5,a5,0x20
    8000384c:	00fd8db3          	add	s11,s11,a5
    80003850:	000dc683          	lbu	a3,0(s11)
    80003854:	00800793          	li	a5,8
    80003858:	00700c93          	li	s9,7
    8000385c:	f8d403a3          	sb	a3,-121(s0)
    80003860:	00075c63          	bgez	a4,80003878 <__printf+0x410>
    80003864:	f9040713          	addi	a4,s0,-112
    80003868:	00f70733          	add	a4,a4,a5
    8000386c:	02d00693          	li	a3,45
    80003870:	fed70823          	sb	a3,-16(a4)
    80003874:	00078c93          	mv	s9,a5
    80003878:	f8040793          	addi	a5,s0,-128
    8000387c:	01978cb3          	add	s9,a5,s9
    80003880:	f7f40d13          	addi	s10,s0,-129
    80003884:	000cc503          	lbu	a0,0(s9)
    80003888:	fffc8c93          	addi	s9,s9,-1
    8000388c:	00000097          	auipc	ra,0x0
    80003890:	9f8080e7          	jalr	-1544(ra) # 80003284 <consputc>
    80003894:	ff9d18e3          	bne	s10,s9,80003884 <__printf+0x41c>
    80003898:	0100006f          	j	800038a8 <__printf+0x440>
    8000389c:	00000097          	auipc	ra,0x0
    800038a0:	9e8080e7          	jalr	-1560(ra) # 80003284 <consputc>
    800038a4:	000c8493          	mv	s1,s9
    800038a8:	00094503          	lbu	a0,0(s2)
    800038ac:	c60510e3          	bnez	a0,8000350c <__printf+0xa4>
    800038b0:	e40c0ee3          	beqz	s8,8000370c <__printf+0x2a4>
    800038b4:	00003517          	auipc	a0,0x3
    800038b8:	7dc50513          	addi	a0,a0,2012 # 80007090 <pr>
    800038bc:	00001097          	auipc	ra,0x1
    800038c0:	94c080e7          	jalr	-1716(ra) # 80004208 <release>
    800038c4:	e49ff06f          	j	8000370c <__printf+0x2a4>
    800038c8:	f7843783          	ld	a5,-136(s0)
    800038cc:	03000513          	li	a0,48
    800038d0:	01000d13          	li	s10,16
    800038d4:	00878713          	addi	a4,a5,8
    800038d8:	0007bc83          	ld	s9,0(a5)
    800038dc:	f6e43c23          	sd	a4,-136(s0)
    800038e0:	00000097          	auipc	ra,0x0
    800038e4:	9a4080e7          	jalr	-1628(ra) # 80003284 <consputc>
    800038e8:	07800513          	li	a0,120
    800038ec:	00000097          	auipc	ra,0x0
    800038f0:	998080e7          	jalr	-1640(ra) # 80003284 <consputc>
    800038f4:	00002d97          	auipc	s11,0x2
    800038f8:	994d8d93          	addi	s11,s11,-1644 # 80005288 <digits>
    800038fc:	03ccd793          	srli	a5,s9,0x3c
    80003900:	00fd87b3          	add	a5,s11,a5
    80003904:	0007c503          	lbu	a0,0(a5)
    80003908:	fffd0d1b          	addiw	s10,s10,-1
    8000390c:	004c9c93          	slli	s9,s9,0x4
    80003910:	00000097          	auipc	ra,0x0
    80003914:	974080e7          	jalr	-1676(ra) # 80003284 <consputc>
    80003918:	fe0d12e3          	bnez	s10,800038fc <__printf+0x494>
    8000391c:	f8dff06f          	j	800038a8 <__printf+0x440>
    80003920:	f7843783          	ld	a5,-136(s0)
    80003924:	0007bc83          	ld	s9,0(a5)
    80003928:	00878793          	addi	a5,a5,8
    8000392c:	f6f43c23          	sd	a5,-136(s0)
    80003930:	000c9a63          	bnez	s9,80003944 <__printf+0x4dc>
    80003934:	1080006f          	j	80003a3c <__printf+0x5d4>
    80003938:	001c8c93          	addi	s9,s9,1
    8000393c:	00000097          	auipc	ra,0x0
    80003940:	948080e7          	jalr	-1720(ra) # 80003284 <consputc>
    80003944:	000cc503          	lbu	a0,0(s9)
    80003948:	fe0518e3          	bnez	a0,80003938 <__printf+0x4d0>
    8000394c:	f5dff06f          	j	800038a8 <__printf+0x440>
    80003950:	02500513          	li	a0,37
    80003954:	00000097          	auipc	ra,0x0
    80003958:	930080e7          	jalr	-1744(ra) # 80003284 <consputc>
    8000395c:	000c8513          	mv	a0,s9
    80003960:	00000097          	auipc	ra,0x0
    80003964:	924080e7          	jalr	-1756(ra) # 80003284 <consputc>
    80003968:	f41ff06f          	j	800038a8 <__printf+0x440>
    8000396c:	02500513          	li	a0,37
    80003970:	00000097          	auipc	ra,0x0
    80003974:	914080e7          	jalr	-1772(ra) # 80003284 <consputc>
    80003978:	f31ff06f          	j	800038a8 <__printf+0x440>
    8000397c:	00030513          	mv	a0,t1
    80003980:	00000097          	auipc	ra,0x0
    80003984:	7bc080e7          	jalr	1980(ra) # 8000413c <acquire>
    80003988:	b4dff06f          	j	800034d4 <__printf+0x6c>
    8000398c:	40c0053b          	negw	a0,a2
    80003990:	00a00713          	li	a4,10
    80003994:	02e576bb          	remuw	a3,a0,a4
    80003998:	00002d97          	auipc	s11,0x2
    8000399c:	8f0d8d93          	addi	s11,s11,-1808 # 80005288 <digits>
    800039a0:	ff700593          	li	a1,-9
    800039a4:	02069693          	slli	a3,a3,0x20
    800039a8:	0206d693          	srli	a3,a3,0x20
    800039ac:	00dd86b3          	add	a3,s11,a3
    800039b0:	0006c683          	lbu	a3,0(a3)
    800039b4:	02e557bb          	divuw	a5,a0,a4
    800039b8:	f8d40023          	sb	a3,-128(s0)
    800039bc:	10b65e63          	bge	a2,a1,80003ad8 <__printf+0x670>
    800039c0:	06300593          	li	a1,99
    800039c4:	02e7f6bb          	remuw	a3,a5,a4
    800039c8:	02069693          	slli	a3,a3,0x20
    800039cc:	0206d693          	srli	a3,a3,0x20
    800039d0:	00dd86b3          	add	a3,s11,a3
    800039d4:	0006c683          	lbu	a3,0(a3)
    800039d8:	02e7d73b          	divuw	a4,a5,a4
    800039dc:	00200793          	li	a5,2
    800039e0:	f8d400a3          	sb	a3,-127(s0)
    800039e4:	bca5ece3          	bltu	a1,a0,800035bc <__printf+0x154>
    800039e8:	ce5ff06f          	j	800036cc <__printf+0x264>
    800039ec:	40e007bb          	negw	a5,a4
    800039f0:	00002d97          	auipc	s11,0x2
    800039f4:	898d8d93          	addi	s11,s11,-1896 # 80005288 <digits>
    800039f8:	00f7f693          	andi	a3,a5,15
    800039fc:	00dd86b3          	add	a3,s11,a3
    80003a00:	0006c583          	lbu	a1,0(a3)
    80003a04:	ff100613          	li	a2,-15
    80003a08:	0047d69b          	srliw	a3,a5,0x4
    80003a0c:	f8b40023          	sb	a1,-128(s0)
    80003a10:	0047d59b          	srliw	a1,a5,0x4
    80003a14:	0ac75e63          	bge	a4,a2,80003ad0 <__printf+0x668>
    80003a18:	00f6f693          	andi	a3,a3,15
    80003a1c:	00dd86b3          	add	a3,s11,a3
    80003a20:	0006c603          	lbu	a2,0(a3)
    80003a24:	00f00693          	li	a3,15
    80003a28:	0087d79b          	srliw	a5,a5,0x8
    80003a2c:	f8c400a3          	sb	a2,-127(s0)
    80003a30:	d8b6e4e3          	bltu	a3,a1,800037b8 <__printf+0x350>
    80003a34:	00200793          	li	a5,2
    80003a38:	e2dff06f          	j	80003864 <__printf+0x3fc>
    80003a3c:	00002c97          	auipc	s9,0x2
    80003a40:	82cc8c93          	addi	s9,s9,-2004 # 80005268 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80003a44:	02800513          	li	a0,40
    80003a48:	ef1ff06f          	j	80003938 <__printf+0x4d0>
    80003a4c:	00700793          	li	a5,7
    80003a50:	00600c93          	li	s9,6
    80003a54:	e0dff06f          	j	80003860 <__printf+0x3f8>
    80003a58:	00700793          	li	a5,7
    80003a5c:	00600c93          	li	s9,6
    80003a60:	c69ff06f          	j	800036c8 <__printf+0x260>
    80003a64:	00300793          	li	a5,3
    80003a68:	00200c93          	li	s9,2
    80003a6c:	c5dff06f          	j	800036c8 <__printf+0x260>
    80003a70:	00300793          	li	a5,3
    80003a74:	00200c93          	li	s9,2
    80003a78:	de9ff06f          	j	80003860 <__printf+0x3f8>
    80003a7c:	00400793          	li	a5,4
    80003a80:	00300c93          	li	s9,3
    80003a84:	dddff06f          	j	80003860 <__printf+0x3f8>
    80003a88:	00400793          	li	a5,4
    80003a8c:	00300c93          	li	s9,3
    80003a90:	c39ff06f          	j	800036c8 <__printf+0x260>
    80003a94:	00500793          	li	a5,5
    80003a98:	00400c93          	li	s9,4
    80003a9c:	c2dff06f          	j	800036c8 <__printf+0x260>
    80003aa0:	00500793          	li	a5,5
    80003aa4:	00400c93          	li	s9,4
    80003aa8:	db9ff06f          	j	80003860 <__printf+0x3f8>
    80003aac:	00600793          	li	a5,6
    80003ab0:	00500c93          	li	s9,5
    80003ab4:	dadff06f          	j	80003860 <__printf+0x3f8>
    80003ab8:	00600793          	li	a5,6
    80003abc:	00500c93          	li	s9,5
    80003ac0:	c09ff06f          	j	800036c8 <__printf+0x260>
    80003ac4:	00800793          	li	a5,8
    80003ac8:	00700c93          	li	s9,7
    80003acc:	bfdff06f          	j	800036c8 <__printf+0x260>
    80003ad0:	00100793          	li	a5,1
    80003ad4:	d91ff06f          	j	80003864 <__printf+0x3fc>
    80003ad8:	00100793          	li	a5,1
    80003adc:	bf1ff06f          	j	800036cc <__printf+0x264>
    80003ae0:	00900793          	li	a5,9
    80003ae4:	00800c93          	li	s9,8
    80003ae8:	be1ff06f          	j	800036c8 <__printf+0x260>
    80003aec:	00001517          	auipc	a0,0x1
    80003af0:	78450513          	addi	a0,a0,1924 # 80005270 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80003af4:	00000097          	auipc	ra,0x0
    80003af8:	918080e7          	jalr	-1768(ra) # 8000340c <panic>

0000000080003afc <printfinit>:
    80003afc:	fe010113          	addi	sp,sp,-32
    80003b00:	00813823          	sd	s0,16(sp)
    80003b04:	00913423          	sd	s1,8(sp)
    80003b08:	00113c23          	sd	ra,24(sp)
    80003b0c:	02010413          	addi	s0,sp,32
    80003b10:	00003497          	auipc	s1,0x3
    80003b14:	58048493          	addi	s1,s1,1408 # 80007090 <pr>
    80003b18:	00048513          	mv	a0,s1
    80003b1c:	00001597          	auipc	a1,0x1
    80003b20:	76458593          	addi	a1,a1,1892 # 80005280 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80003b24:	00000097          	auipc	ra,0x0
    80003b28:	5f4080e7          	jalr	1524(ra) # 80004118 <initlock>
    80003b2c:	01813083          	ld	ra,24(sp)
    80003b30:	01013403          	ld	s0,16(sp)
    80003b34:	0004ac23          	sw	zero,24(s1)
    80003b38:	00813483          	ld	s1,8(sp)
    80003b3c:	02010113          	addi	sp,sp,32
    80003b40:	00008067          	ret

0000000080003b44 <uartinit>:
    80003b44:	ff010113          	addi	sp,sp,-16
    80003b48:	00813423          	sd	s0,8(sp)
    80003b4c:	01010413          	addi	s0,sp,16
    80003b50:	100007b7          	lui	a5,0x10000
    80003b54:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003b58:	f8000713          	li	a4,-128
    80003b5c:	00e781a3          	sb	a4,3(a5)
    80003b60:	00300713          	li	a4,3
    80003b64:	00e78023          	sb	a4,0(a5)
    80003b68:	000780a3          	sb	zero,1(a5)
    80003b6c:	00e781a3          	sb	a4,3(a5)
    80003b70:	00700693          	li	a3,7
    80003b74:	00d78123          	sb	a3,2(a5)
    80003b78:	00e780a3          	sb	a4,1(a5)
    80003b7c:	00813403          	ld	s0,8(sp)
    80003b80:	01010113          	addi	sp,sp,16
    80003b84:	00008067          	ret

0000000080003b88 <uartputc>:
    80003b88:	00002797          	auipc	a5,0x2
    80003b8c:	2907a783          	lw	a5,656(a5) # 80005e18 <panicked>
    80003b90:	00078463          	beqz	a5,80003b98 <uartputc+0x10>
    80003b94:	0000006f          	j	80003b94 <uartputc+0xc>
    80003b98:	fd010113          	addi	sp,sp,-48
    80003b9c:	02813023          	sd	s0,32(sp)
    80003ba0:	00913c23          	sd	s1,24(sp)
    80003ba4:	01213823          	sd	s2,16(sp)
    80003ba8:	01313423          	sd	s3,8(sp)
    80003bac:	02113423          	sd	ra,40(sp)
    80003bb0:	03010413          	addi	s0,sp,48
    80003bb4:	00002917          	auipc	s2,0x2
    80003bb8:	26c90913          	addi	s2,s2,620 # 80005e20 <uart_tx_r>
    80003bbc:	00093783          	ld	a5,0(s2)
    80003bc0:	00002497          	auipc	s1,0x2
    80003bc4:	26848493          	addi	s1,s1,616 # 80005e28 <uart_tx_w>
    80003bc8:	0004b703          	ld	a4,0(s1)
    80003bcc:	02078693          	addi	a3,a5,32
    80003bd0:	00050993          	mv	s3,a0
    80003bd4:	02e69c63          	bne	a3,a4,80003c0c <uartputc+0x84>
    80003bd8:	00001097          	auipc	ra,0x1
    80003bdc:	834080e7          	jalr	-1996(ra) # 8000440c <push_on>
    80003be0:	00093783          	ld	a5,0(s2)
    80003be4:	0004b703          	ld	a4,0(s1)
    80003be8:	02078793          	addi	a5,a5,32
    80003bec:	00e79463          	bne	a5,a4,80003bf4 <uartputc+0x6c>
    80003bf0:	0000006f          	j	80003bf0 <uartputc+0x68>
    80003bf4:	00001097          	auipc	ra,0x1
    80003bf8:	88c080e7          	jalr	-1908(ra) # 80004480 <pop_on>
    80003bfc:	00093783          	ld	a5,0(s2)
    80003c00:	0004b703          	ld	a4,0(s1)
    80003c04:	02078693          	addi	a3,a5,32
    80003c08:	fce688e3          	beq	a3,a4,80003bd8 <uartputc+0x50>
    80003c0c:	01f77693          	andi	a3,a4,31
    80003c10:	00003597          	auipc	a1,0x3
    80003c14:	4a058593          	addi	a1,a1,1184 # 800070b0 <uart_tx_buf>
    80003c18:	00d586b3          	add	a3,a1,a3
    80003c1c:	00170713          	addi	a4,a4,1
    80003c20:	01368023          	sb	s3,0(a3)
    80003c24:	00e4b023          	sd	a4,0(s1)
    80003c28:	10000637          	lui	a2,0x10000
    80003c2c:	02f71063          	bne	a4,a5,80003c4c <uartputc+0xc4>
    80003c30:	0340006f          	j	80003c64 <uartputc+0xdc>
    80003c34:	00074703          	lbu	a4,0(a4)
    80003c38:	00f93023          	sd	a5,0(s2)
    80003c3c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003c40:	00093783          	ld	a5,0(s2)
    80003c44:	0004b703          	ld	a4,0(s1)
    80003c48:	00f70e63          	beq	a4,a5,80003c64 <uartputc+0xdc>
    80003c4c:	00564683          	lbu	a3,5(a2)
    80003c50:	01f7f713          	andi	a4,a5,31
    80003c54:	00e58733          	add	a4,a1,a4
    80003c58:	0206f693          	andi	a3,a3,32
    80003c5c:	00178793          	addi	a5,a5,1
    80003c60:	fc069ae3          	bnez	a3,80003c34 <uartputc+0xac>
    80003c64:	02813083          	ld	ra,40(sp)
    80003c68:	02013403          	ld	s0,32(sp)
    80003c6c:	01813483          	ld	s1,24(sp)
    80003c70:	01013903          	ld	s2,16(sp)
    80003c74:	00813983          	ld	s3,8(sp)
    80003c78:	03010113          	addi	sp,sp,48
    80003c7c:	00008067          	ret

0000000080003c80 <uartputc_sync>:
    80003c80:	ff010113          	addi	sp,sp,-16
    80003c84:	00813423          	sd	s0,8(sp)
    80003c88:	01010413          	addi	s0,sp,16
    80003c8c:	00002717          	auipc	a4,0x2
    80003c90:	18c72703          	lw	a4,396(a4) # 80005e18 <panicked>
    80003c94:	02071663          	bnez	a4,80003cc0 <uartputc_sync+0x40>
    80003c98:	00050793          	mv	a5,a0
    80003c9c:	100006b7          	lui	a3,0x10000
    80003ca0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003ca4:	02077713          	andi	a4,a4,32
    80003ca8:	fe070ce3          	beqz	a4,80003ca0 <uartputc_sync+0x20>
    80003cac:	0ff7f793          	andi	a5,a5,255
    80003cb0:	00f68023          	sb	a5,0(a3)
    80003cb4:	00813403          	ld	s0,8(sp)
    80003cb8:	01010113          	addi	sp,sp,16
    80003cbc:	00008067          	ret
    80003cc0:	0000006f          	j	80003cc0 <uartputc_sync+0x40>

0000000080003cc4 <uartstart>:
    80003cc4:	ff010113          	addi	sp,sp,-16
    80003cc8:	00813423          	sd	s0,8(sp)
    80003ccc:	01010413          	addi	s0,sp,16
    80003cd0:	00002617          	auipc	a2,0x2
    80003cd4:	15060613          	addi	a2,a2,336 # 80005e20 <uart_tx_r>
    80003cd8:	00002517          	auipc	a0,0x2
    80003cdc:	15050513          	addi	a0,a0,336 # 80005e28 <uart_tx_w>
    80003ce0:	00063783          	ld	a5,0(a2)
    80003ce4:	00053703          	ld	a4,0(a0)
    80003ce8:	04f70263          	beq	a4,a5,80003d2c <uartstart+0x68>
    80003cec:	100005b7          	lui	a1,0x10000
    80003cf0:	00003817          	auipc	a6,0x3
    80003cf4:	3c080813          	addi	a6,a6,960 # 800070b0 <uart_tx_buf>
    80003cf8:	01c0006f          	j	80003d14 <uartstart+0x50>
    80003cfc:	0006c703          	lbu	a4,0(a3)
    80003d00:	00f63023          	sd	a5,0(a2)
    80003d04:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003d08:	00063783          	ld	a5,0(a2)
    80003d0c:	00053703          	ld	a4,0(a0)
    80003d10:	00f70e63          	beq	a4,a5,80003d2c <uartstart+0x68>
    80003d14:	01f7f713          	andi	a4,a5,31
    80003d18:	00e806b3          	add	a3,a6,a4
    80003d1c:	0055c703          	lbu	a4,5(a1)
    80003d20:	00178793          	addi	a5,a5,1
    80003d24:	02077713          	andi	a4,a4,32
    80003d28:	fc071ae3          	bnez	a4,80003cfc <uartstart+0x38>
    80003d2c:	00813403          	ld	s0,8(sp)
    80003d30:	01010113          	addi	sp,sp,16
    80003d34:	00008067          	ret

0000000080003d38 <uartgetc>:
    80003d38:	ff010113          	addi	sp,sp,-16
    80003d3c:	00813423          	sd	s0,8(sp)
    80003d40:	01010413          	addi	s0,sp,16
    80003d44:	10000737          	lui	a4,0x10000
    80003d48:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003d4c:	0017f793          	andi	a5,a5,1
    80003d50:	00078c63          	beqz	a5,80003d68 <uartgetc+0x30>
    80003d54:	00074503          	lbu	a0,0(a4)
    80003d58:	0ff57513          	andi	a0,a0,255
    80003d5c:	00813403          	ld	s0,8(sp)
    80003d60:	01010113          	addi	sp,sp,16
    80003d64:	00008067          	ret
    80003d68:	fff00513          	li	a0,-1
    80003d6c:	ff1ff06f          	j	80003d5c <uartgetc+0x24>

0000000080003d70 <uartintr>:
    80003d70:	100007b7          	lui	a5,0x10000
    80003d74:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003d78:	0017f793          	andi	a5,a5,1
    80003d7c:	0a078463          	beqz	a5,80003e24 <uartintr+0xb4>
    80003d80:	fe010113          	addi	sp,sp,-32
    80003d84:	00813823          	sd	s0,16(sp)
    80003d88:	00913423          	sd	s1,8(sp)
    80003d8c:	00113c23          	sd	ra,24(sp)
    80003d90:	02010413          	addi	s0,sp,32
    80003d94:	100004b7          	lui	s1,0x10000
    80003d98:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003d9c:	0ff57513          	andi	a0,a0,255
    80003da0:	fffff097          	auipc	ra,0xfffff
    80003da4:	534080e7          	jalr	1332(ra) # 800032d4 <consoleintr>
    80003da8:	0054c783          	lbu	a5,5(s1)
    80003dac:	0017f793          	andi	a5,a5,1
    80003db0:	fe0794e3          	bnez	a5,80003d98 <uartintr+0x28>
    80003db4:	00002617          	auipc	a2,0x2
    80003db8:	06c60613          	addi	a2,a2,108 # 80005e20 <uart_tx_r>
    80003dbc:	00002517          	auipc	a0,0x2
    80003dc0:	06c50513          	addi	a0,a0,108 # 80005e28 <uart_tx_w>
    80003dc4:	00063783          	ld	a5,0(a2)
    80003dc8:	00053703          	ld	a4,0(a0)
    80003dcc:	04f70263          	beq	a4,a5,80003e10 <uartintr+0xa0>
    80003dd0:	100005b7          	lui	a1,0x10000
    80003dd4:	00003817          	auipc	a6,0x3
    80003dd8:	2dc80813          	addi	a6,a6,732 # 800070b0 <uart_tx_buf>
    80003ddc:	01c0006f          	j	80003df8 <uartintr+0x88>
    80003de0:	0006c703          	lbu	a4,0(a3)
    80003de4:	00f63023          	sd	a5,0(a2)
    80003de8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003dec:	00063783          	ld	a5,0(a2)
    80003df0:	00053703          	ld	a4,0(a0)
    80003df4:	00f70e63          	beq	a4,a5,80003e10 <uartintr+0xa0>
    80003df8:	01f7f713          	andi	a4,a5,31
    80003dfc:	00e806b3          	add	a3,a6,a4
    80003e00:	0055c703          	lbu	a4,5(a1)
    80003e04:	00178793          	addi	a5,a5,1
    80003e08:	02077713          	andi	a4,a4,32
    80003e0c:	fc071ae3          	bnez	a4,80003de0 <uartintr+0x70>
    80003e10:	01813083          	ld	ra,24(sp)
    80003e14:	01013403          	ld	s0,16(sp)
    80003e18:	00813483          	ld	s1,8(sp)
    80003e1c:	02010113          	addi	sp,sp,32
    80003e20:	00008067          	ret
    80003e24:	00002617          	auipc	a2,0x2
    80003e28:	ffc60613          	addi	a2,a2,-4 # 80005e20 <uart_tx_r>
    80003e2c:	00002517          	auipc	a0,0x2
    80003e30:	ffc50513          	addi	a0,a0,-4 # 80005e28 <uart_tx_w>
    80003e34:	00063783          	ld	a5,0(a2)
    80003e38:	00053703          	ld	a4,0(a0)
    80003e3c:	04f70263          	beq	a4,a5,80003e80 <uartintr+0x110>
    80003e40:	100005b7          	lui	a1,0x10000
    80003e44:	00003817          	auipc	a6,0x3
    80003e48:	26c80813          	addi	a6,a6,620 # 800070b0 <uart_tx_buf>
    80003e4c:	01c0006f          	j	80003e68 <uartintr+0xf8>
    80003e50:	0006c703          	lbu	a4,0(a3)
    80003e54:	00f63023          	sd	a5,0(a2)
    80003e58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003e5c:	00063783          	ld	a5,0(a2)
    80003e60:	00053703          	ld	a4,0(a0)
    80003e64:	02f70063          	beq	a4,a5,80003e84 <uartintr+0x114>
    80003e68:	01f7f713          	andi	a4,a5,31
    80003e6c:	00e806b3          	add	a3,a6,a4
    80003e70:	0055c703          	lbu	a4,5(a1)
    80003e74:	00178793          	addi	a5,a5,1
    80003e78:	02077713          	andi	a4,a4,32
    80003e7c:	fc071ae3          	bnez	a4,80003e50 <uartintr+0xe0>
    80003e80:	00008067          	ret
    80003e84:	00008067          	ret

0000000080003e88 <kinit>:
    80003e88:	fc010113          	addi	sp,sp,-64
    80003e8c:	02913423          	sd	s1,40(sp)
    80003e90:	fffff7b7          	lui	a5,0xfffff
    80003e94:	00004497          	auipc	s1,0x4
    80003e98:	23b48493          	addi	s1,s1,571 # 800080cf <end+0xfff>
    80003e9c:	02813823          	sd	s0,48(sp)
    80003ea0:	01313c23          	sd	s3,24(sp)
    80003ea4:	00f4f4b3          	and	s1,s1,a5
    80003ea8:	02113c23          	sd	ra,56(sp)
    80003eac:	03213023          	sd	s2,32(sp)
    80003eb0:	01413823          	sd	s4,16(sp)
    80003eb4:	01513423          	sd	s5,8(sp)
    80003eb8:	04010413          	addi	s0,sp,64
    80003ebc:	000017b7          	lui	a5,0x1
    80003ec0:	01100993          	li	s3,17
    80003ec4:	00f487b3          	add	a5,s1,a5
    80003ec8:	01b99993          	slli	s3,s3,0x1b
    80003ecc:	06f9e063          	bltu	s3,a5,80003f2c <kinit+0xa4>
    80003ed0:	00003a97          	auipc	s5,0x3
    80003ed4:	200a8a93          	addi	s5,s5,512 # 800070d0 <end>
    80003ed8:	0754ec63          	bltu	s1,s5,80003f50 <kinit+0xc8>
    80003edc:	0734fa63          	bgeu	s1,s3,80003f50 <kinit+0xc8>
    80003ee0:	00088a37          	lui	s4,0x88
    80003ee4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003ee8:	00002917          	auipc	s2,0x2
    80003eec:	f4890913          	addi	s2,s2,-184 # 80005e30 <kmem>
    80003ef0:	00ca1a13          	slli	s4,s4,0xc
    80003ef4:	0140006f          	j	80003f08 <kinit+0x80>
    80003ef8:	000017b7          	lui	a5,0x1
    80003efc:	00f484b3          	add	s1,s1,a5
    80003f00:	0554e863          	bltu	s1,s5,80003f50 <kinit+0xc8>
    80003f04:	0534f663          	bgeu	s1,s3,80003f50 <kinit+0xc8>
    80003f08:	00001637          	lui	a2,0x1
    80003f0c:	00100593          	li	a1,1
    80003f10:	00048513          	mv	a0,s1
    80003f14:	00000097          	auipc	ra,0x0
    80003f18:	5e4080e7          	jalr	1508(ra) # 800044f8 <__memset>
    80003f1c:	00093783          	ld	a5,0(s2)
    80003f20:	00f4b023          	sd	a5,0(s1)
    80003f24:	00993023          	sd	s1,0(s2)
    80003f28:	fd4498e3          	bne	s1,s4,80003ef8 <kinit+0x70>
    80003f2c:	03813083          	ld	ra,56(sp)
    80003f30:	03013403          	ld	s0,48(sp)
    80003f34:	02813483          	ld	s1,40(sp)
    80003f38:	02013903          	ld	s2,32(sp)
    80003f3c:	01813983          	ld	s3,24(sp)
    80003f40:	01013a03          	ld	s4,16(sp)
    80003f44:	00813a83          	ld	s5,8(sp)
    80003f48:	04010113          	addi	sp,sp,64
    80003f4c:	00008067          	ret
    80003f50:	00001517          	auipc	a0,0x1
    80003f54:	35050513          	addi	a0,a0,848 # 800052a0 <digits+0x18>
    80003f58:	fffff097          	auipc	ra,0xfffff
    80003f5c:	4b4080e7          	jalr	1204(ra) # 8000340c <panic>

0000000080003f60 <freerange>:
    80003f60:	fc010113          	addi	sp,sp,-64
    80003f64:	000017b7          	lui	a5,0x1
    80003f68:	02913423          	sd	s1,40(sp)
    80003f6c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003f70:	009504b3          	add	s1,a0,s1
    80003f74:	fffff537          	lui	a0,0xfffff
    80003f78:	02813823          	sd	s0,48(sp)
    80003f7c:	02113c23          	sd	ra,56(sp)
    80003f80:	03213023          	sd	s2,32(sp)
    80003f84:	01313c23          	sd	s3,24(sp)
    80003f88:	01413823          	sd	s4,16(sp)
    80003f8c:	01513423          	sd	s5,8(sp)
    80003f90:	01613023          	sd	s6,0(sp)
    80003f94:	04010413          	addi	s0,sp,64
    80003f98:	00a4f4b3          	and	s1,s1,a0
    80003f9c:	00f487b3          	add	a5,s1,a5
    80003fa0:	06f5e463          	bltu	a1,a5,80004008 <freerange+0xa8>
    80003fa4:	00003a97          	auipc	s5,0x3
    80003fa8:	12ca8a93          	addi	s5,s5,300 # 800070d0 <end>
    80003fac:	0954e263          	bltu	s1,s5,80004030 <freerange+0xd0>
    80003fb0:	01100993          	li	s3,17
    80003fb4:	01b99993          	slli	s3,s3,0x1b
    80003fb8:	0734fc63          	bgeu	s1,s3,80004030 <freerange+0xd0>
    80003fbc:	00058a13          	mv	s4,a1
    80003fc0:	00002917          	auipc	s2,0x2
    80003fc4:	e7090913          	addi	s2,s2,-400 # 80005e30 <kmem>
    80003fc8:	00002b37          	lui	s6,0x2
    80003fcc:	0140006f          	j	80003fe0 <freerange+0x80>
    80003fd0:	000017b7          	lui	a5,0x1
    80003fd4:	00f484b3          	add	s1,s1,a5
    80003fd8:	0554ec63          	bltu	s1,s5,80004030 <freerange+0xd0>
    80003fdc:	0534fa63          	bgeu	s1,s3,80004030 <freerange+0xd0>
    80003fe0:	00001637          	lui	a2,0x1
    80003fe4:	00100593          	li	a1,1
    80003fe8:	00048513          	mv	a0,s1
    80003fec:	00000097          	auipc	ra,0x0
    80003ff0:	50c080e7          	jalr	1292(ra) # 800044f8 <__memset>
    80003ff4:	00093703          	ld	a4,0(s2)
    80003ff8:	016487b3          	add	a5,s1,s6
    80003ffc:	00e4b023          	sd	a4,0(s1)
    80004000:	00993023          	sd	s1,0(s2)
    80004004:	fcfa76e3          	bgeu	s4,a5,80003fd0 <freerange+0x70>
    80004008:	03813083          	ld	ra,56(sp)
    8000400c:	03013403          	ld	s0,48(sp)
    80004010:	02813483          	ld	s1,40(sp)
    80004014:	02013903          	ld	s2,32(sp)
    80004018:	01813983          	ld	s3,24(sp)
    8000401c:	01013a03          	ld	s4,16(sp)
    80004020:	00813a83          	ld	s5,8(sp)
    80004024:	00013b03          	ld	s6,0(sp)
    80004028:	04010113          	addi	sp,sp,64
    8000402c:	00008067          	ret
    80004030:	00001517          	auipc	a0,0x1
    80004034:	27050513          	addi	a0,a0,624 # 800052a0 <digits+0x18>
    80004038:	fffff097          	auipc	ra,0xfffff
    8000403c:	3d4080e7          	jalr	980(ra) # 8000340c <panic>

0000000080004040 <kfree>:
    80004040:	fe010113          	addi	sp,sp,-32
    80004044:	00813823          	sd	s0,16(sp)
    80004048:	00113c23          	sd	ra,24(sp)
    8000404c:	00913423          	sd	s1,8(sp)
    80004050:	02010413          	addi	s0,sp,32
    80004054:	03451793          	slli	a5,a0,0x34
    80004058:	04079c63          	bnez	a5,800040b0 <kfree+0x70>
    8000405c:	00003797          	auipc	a5,0x3
    80004060:	07478793          	addi	a5,a5,116 # 800070d0 <end>
    80004064:	00050493          	mv	s1,a0
    80004068:	04f56463          	bltu	a0,a5,800040b0 <kfree+0x70>
    8000406c:	01100793          	li	a5,17
    80004070:	01b79793          	slli	a5,a5,0x1b
    80004074:	02f57e63          	bgeu	a0,a5,800040b0 <kfree+0x70>
    80004078:	00001637          	lui	a2,0x1
    8000407c:	00100593          	li	a1,1
    80004080:	00000097          	auipc	ra,0x0
    80004084:	478080e7          	jalr	1144(ra) # 800044f8 <__memset>
    80004088:	00002797          	auipc	a5,0x2
    8000408c:	da878793          	addi	a5,a5,-600 # 80005e30 <kmem>
    80004090:	0007b703          	ld	a4,0(a5)
    80004094:	01813083          	ld	ra,24(sp)
    80004098:	01013403          	ld	s0,16(sp)
    8000409c:	00e4b023          	sd	a4,0(s1)
    800040a0:	0097b023          	sd	s1,0(a5)
    800040a4:	00813483          	ld	s1,8(sp)
    800040a8:	02010113          	addi	sp,sp,32
    800040ac:	00008067          	ret
    800040b0:	00001517          	auipc	a0,0x1
    800040b4:	1f050513          	addi	a0,a0,496 # 800052a0 <digits+0x18>
    800040b8:	fffff097          	auipc	ra,0xfffff
    800040bc:	354080e7          	jalr	852(ra) # 8000340c <panic>

00000000800040c0 <kalloc>:
    800040c0:	fe010113          	addi	sp,sp,-32
    800040c4:	00813823          	sd	s0,16(sp)
    800040c8:	00913423          	sd	s1,8(sp)
    800040cc:	00113c23          	sd	ra,24(sp)
    800040d0:	02010413          	addi	s0,sp,32
    800040d4:	00002797          	auipc	a5,0x2
    800040d8:	d5c78793          	addi	a5,a5,-676 # 80005e30 <kmem>
    800040dc:	0007b483          	ld	s1,0(a5)
    800040e0:	02048063          	beqz	s1,80004100 <kalloc+0x40>
    800040e4:	0004b703          	ld	a4,0(s1)
    800040e8:	00001637          	lui	a2,0x1
    800040ec:	00500593          	li	a1,5
    800040f0:	00048513          	mv	a0,s1
    800040f4:	00e7b023          	sd	a4,0(a5)
    800040f8:	00000097          	auipc	ra,0x0
    800040fc:	400080e7          	jalr	1024(ra) # 800044f8 <__memset>
    80004100:	01813083          	ld	ra,24(sp)
    80004104:	01013403          	ld	s0,16(sp)
    80004108:	00048513          	mv	a0,s1
    8000410c:	00813483          	ld	s1,8(sp)
    80004110:	02010113          	addi	sp,sp,32
    80004114:	00008067          	ret

0000000080004118 <initlock>:
    80004118:	ff010113          	addi	sp,sp,-16
    8000411c:	00813423          	sd	s0,8(sp)
    80004120:	01010413          	addi	s0,sp,16
    80004124:	00813403          	ld	s0,8(sp)
    80004128:	00b53423          	sd	a1,8(a0)
    8000412c:	00052023          	sw	zero,0(a0)
    80004130:	00053823          	sd	zero,16(a0)
    80004134:	01010113          	addi	sp,sp,16
    80004138:	00008067          	ret

000000008000413c <acquire>:
    8000413c:	fe010113          	addi	sp,sp,-32
    80004140:	00813823          	sd	s0,16(sp)
    80004144:	00913423          	sd	s1,8(sp)
    80004148:	00113c23          	sd	ra,24(sp)
    8000414c:	01213023          	sd	s2,0(sp)
    80004150:	02010413          	addi	s0,sp,32
    80004154:	00050493          	mv	s1,a0
    80004158:	10002973          	csrr	s2,sstatus
    8000415c:	100027f3          	csrr	a5,sstatus
    80004160:	ffd7f793          	andi	a5,a5,-3
    80004164:	10079073          	csrw	sstatus,a5
    80004168:	fffff097          	auipc	ra,0xfffff
    8000416c:	8ec080e7          	jalr	-1812(ra) # 80002a54 <mycpu>
    80004170:	07852783          	lw	a5,120(a0)
    80004174:	06078e63          	beqz	a5,800041f0 <acquire+0xb4>
    80004178:	fffff097          	auipc	ra,0xfffff
    8000417c:	8dc080e7          	jalr	-1828(ra) # 80002a54 <mycpu>
    80004180:	07852783          	lw	a5,120(a0)
    80004184:	0004a703          	lw	a4,0(s1)
    80004188:	0017879b          	addiw	a5,a5,1
    8000418c:	06f52c23          	sw	a5,120(a0)
    80004190:	04071063          	bnez	a4,800041d0 <acquire+0x94>
    80004194:	00100713          	li	a4,1
    80004198:	00070793          	mv	a5,a4
    8000419c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800041a0:	0007879b          	sext.w	a5,a5
    800041a4:	fe079ae3          	bnez	a5,80004198 <acquire+0x5c>
    800041a8:	0ff0000f          	fence
    800041ac:	fffff097          	auipc	ra,0xfffff
    800041b0:	8a8080e7          	jalr	-1880(ra) # 80002a54 <mycpu>
    800041b4:	01813083          	ld	ra,24(sp)
    800041b8:	01013403          	ld	s0,16(sp)
    800041bc:	00a4b823          	sd	a0,16(s1)
    800041c0:	00013903          	ld	s2,0(sp)
    800041c4:	00813483          	ld	s1,8(sp)
    800041c8:	02010113          	addi	sp,sp,32
    800041cc:	00008067          	ret
    800041d0:	0104b903          	ld	s2,16(s1)
    800041d4:	fffff097          	auipc	ra,0xfffff
    800041d8:	880080e7          	jalr	-1920(ra) # 80002a54 <mycpu>
    800041dc:	faa91ce3          	bne	s2,a0,80004194 <acquire+0x58>
    800041e0:	00001517          	auipc	a0,0x1
    800041e4:	0c850513          	addi	a0,a0,200 # 800052a8 <digits+0x20>
    800041e8:	fffff097          	auipc	ra,0xfffff
    800041ec:	224080e7          	jalr	548(ra) # 8000340c <panic>
    800041f0:	00195913          	srli	s2,s2,0x1
    800041f4:	fffff097          	auipc	ra,0xfffff
    800041f8:	860080e7          	jalr	-1952(ra) # 80002a54 <mycpu>
    800041fc:	00197913          	andi	s2,s2,1
    80004200:	07252e23          	sw	s2,124(a0)
    80004204:	f75ff06f          	j	80004178 <acquire+0x3c>

0000000080004208 <release>:
    80004208:	fe010113          	addi	sp,sp,-32
    8000420c:	00813823          	sd	s0,16(sp)
    80004210:	00113c23          	sd	ra,24(sp)
    80004214:	00913423          	sd	s1,8(sp)
    80004218:	01213023          	sd	s2,0(sp)
    8000421c:	02010413          	addi	s0,sp,32
    80004220:	00052783          	lw	a5,0(a0)
    80004224:	00079a63          	bnez	a5,80004238 <release+0x30>
    80004228:	00001517          	auipc	a0,0x1
    8000422c:	08850513          	addi	a0,a0,136 # 800052b0 <digits+0x28>
    80004230:	fffff097          	auipc	ra,0xfffff
    80004234:	1dc080e7          	jalr	476(ra) # 8000340c <panic>
    80004238:	01053903          	ld	s2,16(a0)
    8000423c:	00050493          	mv	s1,a0
    80004240:	fffff097          	auipc	ra,0xfffff
    80004244:	814080e7          	jalr	-2028(ra) # 80002a54 <mycpu>
    80004248:	fea910e3          	bne	s2,a0,80004228 <release+0x20>
    8000424c:	0004b823          	sd	zero,16(s1)
    80004250:	0ff0000f          	fence
    80004254:	0f50000f          	fence	iorw,ow
    80004258:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000425c:	ffffe097          	auipc	ra,0xffffe
    80004260:	7f8080e7          	jalr	2040(ra) # 80002a54 <mycpu>
    80004264:	100027f3          	csrr	a5,sstatus
    80004268:	0027f793          	andi	a5,a5,2
    8000426c:	04079a63          	bnez	a5,800042c0 <release+0xb8>
    80004270:	07852783          	lw	a5,120(a0)
    80004274:	02f05e63          	blez	a5,800042b0 <release+0xa8>
    80004278:	fff7871b          	addiw	a4,a5,-1
    8000427c:	06e52c23          	sw	a4,120(a0)
    80004280:	00071c63          	bnez	a4,80004298 <release+0x90>
    80004284:	07c52783          	lw	a5,124(a0)
    80004288:	00078863          	beqz	a5,80004298 <release+0x90>
    8000428c:	100027f3          	csrr	a5,sstatus
    80004290:	0027e793          	ori	a5,a5,2
    80004294:	10079073          	csrw	sstatus,a5
    80004298:	01813083          	ld	ra,24(sp)
    8000429c:	01013403          	ld	s0,16(sp)
    800042a0:	00813483          	ld	s1,8(sp)
    800042a4:	00013903          	ld	s2,0(sp)
    800042a8:	02010113          	addi	sp,sp,32
    800042ac:	00008067          	ret
    800042b0:	00001517          	auipc	a0,0x1
    800042b4:	02050513          	addi	a0,a0,32 # 800052d0 <digits+0x48>
    800042b8:	fffff097          	auipc	ra,0xfffff
    800042bc:	154080e7          	jalr	340(ra) # 8000340c <panic>
    800042c0:	00001517          	auipc	a0,0x1
    800042c4:	ff850513          	addi	a0,a0,-8 # 800052b8 <digits+0x30>
    800042c8:	fffff097          	auipc	ra,0xfffff
    800042cc:	144080e7          	jalr	324(ra) # 8000340c <panic>

00000000800042d0 <holding>:
    800042d0:	00052783          	lw	a5,0(a0)
    800042d4:	00079663          	bnez	a5,800042e0 <holding+0x10>
    800042d8:	00000513          	li	a0,0
    800042dc:	00008067          	ret
    800042e0:	fe010113          	addi	sp,sp,-32
    800042e4:	00813823          	sd	s0,16(sp)
    800042e8:	00913423          	sd	s1,8(sp)
    800042ec:	00113c23          	sd	ra,24(sp)
    800042f0:	02010413          	addi	s0,sp,32
    800042f4:	01053483          	ld	s1,16(a0)
    800042f8:	ffffe097          	auipc	ra,0xffffe
    800042fc:	75c080e7          	jalr	1884(ra) # 80002a54 <mycpu>
    80004300:	01813083          	ld	ra,24(sp)
    80004304:	01013403          	ld	s0,16(sp)
    80004308:	40a48533          	sub	a0,s1,a0
    8000430c:	00153513          	seqz	a0,a0
    80004310:	00813483          	ld	s1,8(sp)
    80004314:	02010113          	addi	sp,sp,32
    80004318:	00008067          	ret

000000008000431c <push_off>:
    8000431c:	fe010113          	addi	sp,sp,-32
    80004320:	00813823          	sd	s0,16(sp)
    80004324:	00113c23          	sd	ra,24(sp)
    80004328:	00913423          	sd	s1,8(sp)
    8000432c:	02010413          	addi	s0,sp,32
    80004330:	100024f3          	csrr	s1,sstatus
    80004334:	100027f3          	csrr	a5,sstatus
    80004338:	ffd7f793          	andi	a5,a5,-3
    8000433c:	10079073          	csrw	sstatus,a5
    80004340:	ffffe097          	auipc	ra,0xffffe
    80004344:	714080e7          	jalr	1812(ra) # 80002a54 <mycpu>
    80004348:	07852783          	lw	a5,120(a0)
    8000434c:	02078663          	beqz	a5,80004378 <push_off+0x5c>
    80004350:	ffffe097          	auipc	ra,0xffffe
    80004354:	704080e7          	jalr	1796(ra) # 80002a54 <mycpu>
    80004358:	07852783          	lw	a5,120(a0)
    8000435c:	01813083          	ld	ra,24(sp)
    80004360:	01013403          	ld	s0,16(sp)
    80004364:	0017879b          	addiw	a5,a5,1
    80004368:	06f52c23          	sw	a5,120(a0)
    8000436c:	00813483          	ld	s1,8(sp)
    80004370:	02010113          	addi	sp,sp,32
    80004374:	00008067          	ret
    80004378:	0014d493          	srli	s1,s1,0x1
    8000437c:	ffffe097          	auipc	ra,0xffffe
    80004380:	6d8080e7          	jalr	1752(ra) # 80002a54 <mycpu>
    80004384:	0014f493          	andi	s1,s1,1
    80004388:	06952e23          	sw	s1,124(a0)
    8000438c:	fc5ff06f          	j	80004350 <push_off+0x34>

0000000080004390 <pop_off>:
    80004390:	ff010113          	addi	sp,sp,-16
    80004394:	00813023          	sd	s0,0(sp)
    80004398:	00113423          	sd	ra,8(sp)
    8000439c:	01010413          	addi	s0,sp,16
    800043a0:	ffffe097          	auipc	ra,0xffffe
    800043a4:	6b4080e7          	jalr	1716(ra) # 80002a54 <mycpu>
    800043a8:	100027f3          	csrr	a5,sstatus
    800043ac:	0027f793          	andi	a5,a5,2
    800043b0:	04079663          	bnez	a5,800043fc <pop_off+0x6c>
    800043b4:	07852783          	lw	a5,120(a0)
    800043b8:	02f05a63          	blez	a5,800043ec <pop_off+0x5c>
    800043bc:	fff7871b          	addiw	a4,a5,-1
    800043c0:	06e52c23          	sw	a4,120(a0)
    800043c4:	00071c63          	bnez	a4,800043dc <pop_off+0x4c>
    800043c8:	07c52783          	lw	a5,124(a0)
    800043cc:	00078863          	beqz	a5,800043dc <pop_off+0x4c>
    800043d0:	100027f3          	csrr	a5,sstatus
    800043d4:	0027e793          	ori	a5,a5,2
    800043d8:	10079073          	csrw	sstatus,a5
    800043dc:	00813083          	ld	ra,8(sp)
    800043e0:	00013403          	ld	s0,0(sp)
    800043e4:	01010113          	addi	sp,sp,16
    800043e8:	00008067          	ret
    800043ec:	00001517          	auipc	a0,0x1
    800043f0:	ee450513          	addi	a0,a0,-284 # 800052d0 <digits+0x48>
    800043f4:	fffff097          	auipc	ra,0xfffff
    800043f8:	018080e7          	jalr	24(ra) # 8000340c <panic>
    800043fc:	00001517          	auipc	a0,0x1
    80004400:	ebc50513          	addi	a0,a0,-324 # 800052b8 <digits+0x30>
    80004404:	fffff097          	auipc	ra,0xfffff
    80004408:	008080e7          	jalr	8(ra) # 8000340c <panic>

000000008000440c <push_on>:
    8000440c:	fe010113          	addi	sp,sp,-32
    80004410:	00813823          	sd	s0,16(sp)
    80004414:	00113c23          	sd	ra,24(sp)
    80004418:	00913423          	sd	s1,8(sp)
    8000441c:	02010413          	addi	s0,sp,32
    80004420:	100024f3          	csrr	s1,sstatus
    80004424:	100027f3          	csrr	a5,sstatus
    80004428:	0027e793          	ori	a5,a5,2
    8000442c:	10079073          	csrw	sstatus,a5
    80004430:	ffffe097          	auipc	ra,0xffffe
    80004434:	624080e7          	jalr	1572(ra) # 80002a54 <mycpu>
    80004438:	07852783          	lw	a5,120(a0)
    8000443c:	02078663          	beqz	a5,80004468 <push_on+0x5c>
    80004440:	ffffe097          	auipc	ra,0xffffe
    80004444:	614080e7          	jalr	1556(ra) # 80002a54 <mycpu>
    80004448:	07852783          	lw	a5,120(a0)
    8000444c:	01813083          	ld	ra,24(sp)
    80004450:	01013403          	ld	s0,16(sp)
    80004454:	0017879b          	addiw	a5,a5,1
    80004458:	06f52c23          	sw	a5,120(a0)
    8000445c:	00813483          	ld	s1,8(sp)
    80004460:	02010113          	addi	sp,sp,32
    80004464:	00008067          	ret
    80004468:	0014d493          	srli	s1,s1,0x1
    8000446c:	ffffe097          	auipc	ra,0xffffe
    80004470:	5e8080e7          	jalr	1512(ra) # 80002a54 <mycpu>
    80004474:	0014f493          	andi	s1,s1,1
    80004478:	06952e23          	sw	s1,124(a0)
    8000447c:	fc5ff06f          	j	80004440 <push_on+0x34>

0000000080004480 <pop_on>:
    80004480:	ff010113          	addi	sp,sp,-16
    80004484:	00813023          	sd	s0,0(sp)
    80004488:	00113423          	sd	ra,8(sp)
    8000448c:	01010413          	addi	s0,sp,16
    80004490:	ffffe097          	auipc	ra,0xffffe
    80004494:	5c4080e7          	jalr	1476(ra) # 80002a54 <mycpu>
    80004498:	100027f3          	csrr	a5,sstatus
    8000449c:	0027f793          	andi	a5,a5,2
    800044a0:	04078463          	beqz	a5,800044e8 <pop_on+0x68>
    800044a4:	07852783          	lw	a5,120(a0)
    800044a8:	02f05863          	blez	a5,800044d8 <pop_on+0x58>
    800044ac:	fff7879b          	addiw	a5,a5,-1
    800044b0:	06f52c23          	sw	a5,120(a0)
    800044b4:	07853783          	ld	a5,120(a0)
    800044b8:	00079863          	bnez	a5,800044c8 <pop_on+0x48>
    800044bc:	100027f3          	csrr	a5,sstatus
    800044c0:	ffd7f793          	andi	a5,a5,-3
    800044c4:	10079073          	csrw	sstatus,a5
    800044c8:	00813083          	ld	ra,8(sp)
    800044cc:	00013403          	ld	s0,0(sp)
    800044d0:	01010113          	addi	sp,sp,16
    800044d4:	00008067          	ret
    800044d8:	00001517          	auipc	a0,0x1
    800044dc:	e2050513          	addi	a0,a0,-480 # 800052f8 <digits+0x70>
    800044e0:	fffff097          	auipc	ra,0xfffff
    800044e4:	f2c080e7          	jalr	-212(ra) # 8000340c <panic>
    800044e8:	00001517          	auipc	a0,0x1
    800044ec:	df050513          	addi	a0,a0,-528 # 800052d8 <digits+0x50>
    800044f0:	fffff097          	auipc	ra,0xfffff
    800044f4:	f1c080e7          	jalr	-228(ra) # 8000340c <panic>

00000000800044f8 <__memset>:
    800044f8:	ff010113          	addi	sp,sp,-16
    800044fc:	00813423          	sd	s0,8(sp)
    80004500:	01010413          	addi	s0,sp,16
    80004504:	1a060e63          	beqz	a2,800046c0 <__memset+0x1c8>
    80004508:	40a007b3          	neg	a5,a0
    8000450c:	0077f793          	andi	a5,a5,7
    80004510:	00778693          	addi	a3,a5,7
    80004514:	00b00813          	li	a6,11
    80004518:	0ff5f593          	andi	a1,a1,255
    8000451c:	fff6071b          	addiw	a4,a2,-1
    80004520:	1b06e663          	bltu	a3,a6,800046cc <__memset+0x1d4>
    80004524:	1cd76463          	bltu	a4,a3,800046ec <__memset+0x1f4>
    80004528:	1a078e63          	beqz	a5,800046e4 <__memset+0x1ec>
    8000452c:	00b50023          	sb	a1,0(a0)
    80004530:	00100713          	li	a4,1
    80004534:	1ae78463          	beq	a5,a4,800046dc <__memset+0x1e4>
    80004538:	00b500a3          	sb	a1,1(a0)
    8000453c:	00200713          	li	a4,2
    80004540:	1ae78a63          	beq	a5,a4,800046f4 <__memset+0x1fc>
    80004544:	00b50123          	sb	a1,2(a0)
    80004548:	00300713          	li	a4,3
    8000454c:	18e78463          	beq	a5,a4,800046d4 <__memset+0x1dc>
    80004550:	00b501a3          	sb	a1,3(a0)
    80004554:	00400713          	li	a4,4
    80004558:	1ae78263          	beq	a5,a4,800046fc <__memset+0x204>
    8000455c:	00b50223          	sb	a1,4(a0)
    80004560:	00500713          	li	a4,5
    80004564:	1ae78063          	beq	a5,a4,80004704 <__memset+0x20c>
    80004568:	00b502a3          	sb	a1,5(a0)
    8000456c:	00700713          	li	a4,7
    80004570:	18e79e63          	bne	a5,a4,8000470c <__memset+0x214>
    80004574:	00b50323          	sb	a1,6(a0)
    80004578:	00700e93          	li	t4,7
    8000457c:	00859713          	slli	a4,a1,0x8
    80004580:	00e5e733          	or	a4,a1,a4
    80004584:	01059e13          	slli	t3,a1,0x10
    80004588:	01c76e33          	or	t3,a4,t3
    8000458c:	01859313          	slli	t1,a1,0x18
    80004590:	006e6333          	or	t1,t3,t1
    80004594:	02059893          	slli	a7,a1,0x20
    80004598:	40f60e3b          	subw	t3,a2,a5
    8000459c:	011368b3          	or	a7,t1,a7
    800045a0:	02859813          	slli	a6,a1,0x28
    800045a4:	0108e833          	or	a6,a7,a6
    800045a8:	03059693          	slli	a3,a1,0x30
    800045ac:	003e589b          	srliw	a7,t3,0x3
    800045b0:	00d866b3          	or	a3,a6,a3
    800045b4:	03859713          	slli	a4,a1,0x38
    800045b8:	00389813          	slli	a6,a7,0x3
    800045bc:	00f507b3          	add	a5,a0,a5
    800045c0:	00e6e733          	or	a4,a3,a4
    800045c4:	000e089b          	sext.w	a7,t3
    800045c8:	00f806b3          	add	a3,a6,a5
    800045cc:	00e7b023          	sd	a4,0(a5)
    800045d0:	00878793          	addi	a5,a5,8
    800045d4:	fed79ce3          	bne	a5,a3,800045cc <__memset+0xd4>
    800045d8:	ff8e7793          	andi	a5,t3,-8
    800045dc:	0007871b          	sext.w	a4,a5
    800045e0:	01d787bb          	addw	a5,a5,t4
    800045e4:	0ce88e63          	beq	a7,a4,800046c0 <__memset+0x1c8>
    800045e8:	00f50733          	add	a4,a0,a5
    800045ec:	00b70023          	sb	a1,0(a4)
    800045f0:	0017871b          	addiw	a4,a5,1
    800045f4:	0cc77663          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    800045f8:	00e50733          	add	a4,a0,a4
    800045fc:	00b70023          	sb	a1,0(a4)
    80004600:	0027871b          	addiw	a4,a5,2
    80004604:	0ac77e63          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004608:	00e50733          	add	a4,a0,a4
    8000460c:	00b70023          	sb	a1,0(a4)
    80004610:	0037871b          	addiw	a4,a5,3
    80004614:	0ac77663          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004618:	00e50733          	add	a4,a0,a4
    8000461c:	00b70023          	sb	a1,0(a4)
    80004620:	0047871b          	addiw	a4,a5,4
    80004624:	08c77e63          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004628:	00e50733          	add	a4,a0,a4
    8000462c:	00b70023          	sb	a1,0(a4)
    80004630:	0057871b          	addiw	a4,a5,5
    80004634:	08c77663          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004638:	00e50733          	add	a4,a0,a4
    8000463c:	00b70023          	sb	a1,0(a4)
    80004640:	0067871b          	addiw	a4,a5,6
    80004644:	06c77e63          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004648:	00e50733          	add	a4,a0,a4
    8000464c:	00b70023          	sb	a1,0(a4)
    80004650:	0077871b          	addiw	a4,a5,7
    80004654:	06c77663          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004658:	00e50733          	add	a4,a0,a4
    8000465c:	00b70023          	sb	a1,0(a4)
    80004660:	0087871b          	addiw	a4,a5,8
    80004664:	04c77e63          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004668:	00e50733          	add	a4,a0,a4
    8000466c:	00b70023          	sb	a1,0(a4)
    80004670:	0097871b          	addiw	a4,a5,9
    80004674:	04c77663          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004678:	00e50733          	add	a4,a0,a4
    8000467c:	00b70023          	sb	a1,0(a4)
    80004680:	00a7871b          	addiw	a4,a5,10
    80004684:	02c77e63          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004688:	00e50733          	add	a4,a0,a4
    8000468c:	00b70023          	sb	a1,0(a4)
    80004690:	00b7871b          	addiw	a4,a5,11
    80004694:	02c77663          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004698:	00e50733          	add	a4,a0,a4
    8000469c:	00b70023          	sb	a1,0(a4)
    800046a0:	00c7871b          	addiw	a4,a5,12
    800046a4:	00c77e63          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    800046a8:	00e50733          	add	a4,a0,a4
    800046ac:	00b70023          	sb	a1,0(a4)
    800046b0:	00d7879b          	addiw	a5,a5,13
    800046b4:	00c7f663          	bgeu	a5,a2,800046c0 <__memset+0x1c8>
    800046b8:	00f507b3          	add	a5,a0,a5
    800046bc:	00b78023          	sb	a1,0(a5)
    800046c0:	00813403          	ld	s0,8(sp)
    800046c4:	01010113          	addi	sp,sp,16
    800046c8:	00008067          	ret
    800046cc:	00b00693          	li	a3,11
    800046d0:	e55ff06f          	j	80004524 <__memset+0x2c>
    800046d4:	00300e93          	li	t4,3
    800046d8:	ea5ff06f          	j	8000457c <__memset+0x84>
    800046dc:	00100e93          	li	t4,1
    800046e0:	e9dff06f          	j	8000457c <__memset+0x84>
    800046e4:	00000e93          	li	t4,0
    800046e8:	e95ff06f          	j	8000457c <__memset+0x84>
    800046ec:	00000793          	li	a5,0
    800046f0:	ef9ff06f          	j	800045e8 <__memset+0xf0>
    800046f4:	00200e93          	li	t4,2
    800046f8:	e85ff06f          	j	8000457c <__memset+0x84>
    800046fc:	00400e93          	li	t4,4
    80004700:	e7dff06f          	j	8000457c <__memset+0x84>
    80004704:	00500e93          	li	t4,5
    80004708:	e75ff06f          	j	8000457c <__memset+0x84>
    8000470c:	00600e93          	li	t4,6
    80004710:	e6dff06f          	j	8000457c <__memset+0x84>

0000000080004714 <__memmove>:
    80004714:	ff010113          	addi	sp,sp,-16
    80004718:	00813423          	sd	s0,8(sp)
    8000471c:	01010413          	addi	s0,sp,16
    80004720:	0e060863          	beqz	a2,80004810 <__memmove+0xfc>
    80004724:	fff6069b          	addiw	a3,a2,-1
    80004728:	0006881b          	sext.w	a6,a3
    8000472c:	0ea5e863          	bltu	a1,a0,8000481c <__memmove+0x108>
    80004730:	00758713          	addi	a4,a1,7
    80004734:	00a5e7b3          	or	a5,a1,a0
    80004738:	40a70733          	sub	a4,a4,a0
    8000473c:	0077f793          	andi	a5,a5,7
    80004740:	00f73713          	sltiu	a4,a4,15
    80004744:	00174713          	xori	a4,a4,1
    80004748:	0017b793          	seqz	a5,a5
    8000474c:	00e7f7b3          	and	a5,a5,a4
    80004750:	10078863          	beqz	a5,80004860 <__memmove+0x14c>
    80004754:	00900793          	li	a5,9
    80004758:	1107f463          	bgeu	a5,a6,80004860 <__memmove+0x14c>
    8000475c:	0036581b          	srliw	a6,a2,0x3
    80004760:	fff8081b          	addiw	a6,a6,-1
    80004764:	02081813          	slli	a6,a6,0x20
    80004768:	01d85893          	srli	a7,a6,0x1d
    8000476c:	00858813          	addi	a6,a1,8
    80004770:	00058793          	mv	a5,a1
    80004774:	00050713          	mv	a4,a0
    80004778:	01088833          	add	a6,a7,a6
    8000477c:	0007b883          	ld	a7,0(a5)
    80004780:	00878793          	addi	a5,a5,8
    80004784:	00870713          	addi	a4,a4,8
    80004788:	ff173c23          	sd	a7,-8(a4)
    8000478c:	ff0798e3          	bne	a5,a6,8000477c <__memmove+0x68>
    80004790:	ff867713          	andi	a4,a2,-8
    80004794:	02071793          	slli	a5,a4,0x20
    80004798:	0207d793          	srli	a5,a5,0x20
    8000479c:	00f585b3          	add	a1,a1,a5
    800047a0:	40e686bb          	subw	a3,a3,a4
    800047a4:	00f507b3          	add	a5,a0,a5
    800047a8:	06e60463          	beq	a2,a4,80004810 <__memmove+0xfc>
    800047ac:	0005c703          	lbu	a4,0(a1)
    800047b0:	00e78023          	sb	a4,0(a5)
    800047b4:	04068e63          	beqz	a3,80004810 <__memmove+0xfc>
    800047b8:	0015c603          	lbu	a2,1(a1)
    800047bc:	00100713          	li	a4,1
    800047c0:	00c780a3          	sb	a2,1(a5)
    800047c4:	04e68663          	beq	a3,a4,80004810 <__memmove+0xfc>
    800047c8:	0025c603          	lbu	a2,2(a1)
    800047cc:	00200713          	li	a4,2
    800047d0:	00c78123          	sb	a2,2(a5)
    800047d4:	02e68e63          	beq	a3,a4,80004810 <__memmove+0xfc>
    800047d8:	0035c603          	lbu	a2,3(a1)
    800047dc:	00300713          	li	a4,3
    800047e0:	00c781a3          	sb	a2,3(a5)
    800047e4:	02e68663          	beq	a3,a4,80004810 <__memmove+0xfc>
    800047e8:	0045c603          	lbu	a2,4(a1)
    800047ec:	00400713          	li	a4,4
    800047f0:	00c78223          	sb	a2,4(a5)
    800047f4:	00e68e63          	beq	a3,a4,80004810 <__memmove+0xfc>
    800047f8:	0055c603          	lbu	a2,5(a1)
    800047fc:	00500713          	li	a4,5
    80004800:	00c782a3          	sb	a2,5(a5)
    80004804:	00e68663          	beq	a3,a4,80004810 <__memmove+0xfc>
    80004808:	0065c703          	lbu	a4,6(a1)
    8000480c:	00e78323          	sb	a4,6(a5)
    80004810:	00813403          	ld	s0,8(sp)
    80004814:	01010113          	addi	sp,sp,16
    80004818:	00008067          	ret
    8000481c:	02061713          	slli	a4,a2,0x20
    80004820:	02075713          	srli	a4,a4,0x20
    80004824:	00e587b3          	add	a5,a1,a4
    80004828:	f0f574e3          	bgeu	a0,a5,80004730 <__memmove+0x1c>
    8000482c:	02069613          	slli	a2,a3,0x20
    80004830:	02065613          	srli	a2,a2,0x20
    80004834:	fff64613          	not	a2,a2
    80004838:	00e50733          	add	a4,a0,a4
    8000483c:	00c78633          	add	a2,a5,a2
    80004840:	fff7c683          	lbu	a3,-1(a5)
    80004844:	fff78793          	addi	a5,a5,-1
    80004848:	fff70713          	addi	a4,a4,-1
    8000484c:	00d70023          	sb	a3,0(a4)
    80004850:	fec798e3          	bne	a5,a2,80004840 <__memmove+0x12c>
    80004854:	00813403          	ld	s0,8(sp)
    80004858:	01010113          	addi	sp,sp,16
    8000485c:	00008067          	ret
    80004860:	02069713          	slli	a4,a3,0x20
    80004864:	02075713          	srli	a4,a4,0x20
    80004868:	00170713          	addi	a4,a4,1
    8000486c:	00e50733          	add	a4,a0,a4
    80004870:	00050793          	mv	a5,a0
    80004874:	0005c683          	lbu	a3,0(a1)
    80004878:	00178793          	addi	a5,a5,1
    8000487c:	00158593          	addi	a1,a1,1
    80004880:	fed78fa3          	sb	a3,-1(a5)
    80004884:	fee798e3          	bne	a5,a4,80004874 <__memmove+0x160>
    80004888:	f89ff06f          	j	80004810 <__memmove+0xfc>

000000008000488c <__putc>:
    8000488c:	fe010113          	addi	sp,sp,-32
    80004890:	00813823          	sd	s0,16(sp)
    80004894:	00113c23          	sd	ra,24(sp)
    80004898:	02010413          	addi	s0,sp,32
    8000489c:	00050793          	mv	a5,a0
    800048a0:	fef40593          	addi	a1,s0,-17
    800048a4:	00100613          	li	a2,1
    800048a8:	00000513          	li	a0,0
    800048ac:	fef407a3          	sb	a5,-17(s0)
    800048b0:	fffff097          	auipc	ra,0xfffff
    800048b4:	b3c080e7          	jalr	-1220(ra) # 800033ec <console_write>
    800048b8:	01813083          	ld	ra,24(sp)
    800048bc:	01013403          	ld	s0,16(sp)
    800048c0:	02010113          	addi	sp,sp,32
    800048c4:	00008067          	ret

00000000800048c8 <__getc>:
    800048c8:	fe010113          	addi	sp,sp,-32
    800048cc:	00813823          	sd	s0,16(sp)
    800048d0:	00113c23          	sd	ra,24(sp)
    800048d4:	02010413          	addi	s0,sp,32
    800048d8:	fe840593          	addi	a1,s0,-24
    800048dc:	00100613          	li	a2,1
    800048e0:	00000513          	li	a0,0
    800048e4:	fffff097          	auipc	ra,0xfffff
    800048e8:	ae8080e7          	jalr	-1304(ra) # 800033cc <console_read>
    800048ec:	fe844503          	lbu	a0,-24(s0)
    800048f0:	01813083          	ld	ra,24(sp)
    800048f4:	01013403          	ld	s0,16(sp)
    800048f8:	02010113          	addi	sp,sp,32
    800048fc:	00008067          	ret

0000000080004900 <console_handler>:
    80004900:	fe010113          	addi	sp,sp,-32
    80004904:	00813823          	sd	s0,16(sp)
    80004908:	00113c23          	sd	ra,24(sp)
    8000490c:	00913423          	sd	s1,8(sp)
    80004910:	02010413          	addi	s0,sp,32
    80004914:	14202773          	csrr	a4,scause
    80004918:	100027f3          	csrr	a5,sstatus
    8000491c:	0027f793          	andi	a5,a5,2
    80004920:	06079e63          	bnez	a5,8000499c <console_handler+0x9c>
    80004924:	00074c63          	bltz	a4,8000493c <console_handler+0x3c>
    80004928:	01813083          	ld	ra,24(sp)
    8000492c:	01013403          	ld	s0,16(sp)
    80004930:	00813483          	ld	s1,8(sp)
    80004934:	02010113          	addi	sp,sp,32
    80004938:	00008067          	ret
    8000493c:	0ff77713          	andi	a4,a4,255
    80004940:	00900793          	li	a5,9
    80004944:	fef712e3          	bne	a4,a5,80004928 <console_handler+0x28>
    80004948:	ffffe097          	auipc	ra,0xffffe
    8000494c:	6dc080e7          	jalr	1756(ra) # 80003024 <plic_claim>
    80004950:	00a00793          	li	a5,10
    80004954:	00050493          	mv	s1,a0
    80004958:	02f50c63          	beq	a0,a5,80004990 <console_handler+0x90>
    8000495c:	fc0506e3          	beqz	a0,80004928 <console_handler+0x28>
    80004960:	00050593          	mv	a1,a0
    80004964:	00001517          	auipc	a0,0x1
    80004968:	89c50513          	addi	a0,a0,-1892 # 80005200 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    8000496c:	fffff097          	auipc	ra,0xfffff
    80004970:	afc080e7          	jalr	-1284(ra) # 80003468 <__printf>
    80004974:	01013403          	ld	s0,16(sp)
    80004978:	01813083          	ld	ra,24(sp)
    8000497c:	00048513          	mv	a0,s1
    80004980:	00813483          	ld	s1,8(sp)
    80004984:	02010113          	addi	sp,sp,32
    80004988:	ffffe317          	auipc	t1,0xffffe
    8000498c:	6d430067          	jr	1748(t1) # 8000305c <plic_complete>
    80004990:	fffff097          	auipc	ra,0xfffff
    80004994:	3e0080e7          	jalr	992(ra) # 80003d70 <uartintr>
    80004998:	fddff06f          	j	80004974 <console_handler+0x74>
    8000499c:	00001517          	auipc	a0,0x1
    800049a0:	96450513          	addi	a0,a0,-1692 # 80005300 <digits+0x78>
    800049a4:	fffff097          	auipc	ra,0xfffff
    800049a8:	a68080e7          	jalr	-1432(ra) # 8000340c <panic>
	...
