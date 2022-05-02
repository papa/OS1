
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	dd813103          	ld	sp,-552(sp) # 80005dd8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	051020ef          	jal	ra,8000286c <start>

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
    80001080:	174010ef          	jal	ra,800021f4 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001360:	d5c080e7          	jalr	-676(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
   Riscv::popSppSpie();
    80001364:	00001097          	auipc	ra,0x1
    80001368:	d34080e7          	jalr	-716(ra) # 80002098 <_ZN5Riscv10popSppSpieEv>
   running->body(running->args);
    8000136c:	00005497          	auipc	s1,0x5
    80001370:	ac448493          	addi	s1,s1,-1340 # 80005e30 <_ZN3PCB7runningE>
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
    800013ac:	00113423          	sd	ra,8(sp)
    800013b0:	00813023          	sd	s0,0(sp)
    800013b4:	01010413          	addi	s0,sp,16
    })
    800013b8:	00b53423          	sd	a1,8(a0)
    800013bc:	00c53823          	sd	a2,16(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE - 1),
    800013c0:	00001737          	lui	a4,0x1
    800013c4:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    800013c8:	00e686b3          	add	a3,a3,a4
    })
    800013cc:	00d53c23          	sd	a3,24(a0)
    800013d0:	00000717          	auipc	a4,0x0
    800013d4:	f7070713          	addi	a4,a4,-144 # 80001340 <_ZN3PCB6runnerEv>
    800013d8:	02e53023          	sd	a4,32(a0)
    800013dc:	02050823          	sb	zero,48(a0)
    Scheduler::put(this);
    800013e0:	00000097          	auipc	ra,0x0
    800013e4:	180080e7          	jalr	384(ra) # 80001560 <_ZN9Scheduler3putEP3PCB>
}
    800013e8:	00813083          	ld	ra,8(sp)
    800013ec:	00013403          	ld	s0,0(sp)
    800013f0:	01010113          	addi	sp,sp,16
    800013f4:	00008067          	ret

00000000800013f8 <_ZN3PCB5sleepEm>:
{
    800013f8:	ff010113          	addi	sp,sp,-16
    800013fc:	00813423          	sd	s0,8(sp)
    80001400:	01010413          	addi	s0,sp,16
}
    80001404:	00813403          	ld	s0,8(sp)
    80001408:	01010113          	addi	sp,sp,16
    8000140c:	00008067          	ret

0000000080001410 <_ZN3PCB5startEv>:
{
    80001410:	ff010113          	addi	sp,sp,-16
    80001414:	00113423          	sd	ra,8(sp)
    80001418:	00813023          	sd	s0,0(sp)
    8000141c:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80001420:	00000097          	auipc	ra,0x0
    80001424:	140080e7          	jalr	320(ra) # 80001560 <_ZN9Scheduler3putEP3PCB>
}
    80001428:	00813083          	ld	ra,8(sp)
    8000142c:	00013403          	ld	s0,0(sp)
    80001430:	01010113          	addi	sp,sp,16
    80001434:	00008067          	ret

0000000080001438 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80001438:	fe010113          	addi	sp,sp,-32
    8000143c:	00113c23          	sd	ra,24(sp)
    80001440:	00813823          	sd	s0,16(sp)
    80001444:	00913423          	sd	s1,8(sp)
    80001448:	01213023          	sd	s2,0(sp)
    8000144c:	02010413          	addi	s0,sp,32
    //Riscv::pushRegisters();

    PCB* old = running;
    80001450:	00005497          	auipc	s1,0x5
    80001454:	9e04b483          	ld	s1,-1568(s1) # 80005e30 <_ZN3PCB7runningE>
    if(!old->finished) Scheduler::put(old);
    80001458:	0304c783          	lbu	a5,48(s1)
    8000145c:	04078a63          	beqz	a5,800014b0 <_ZN3PCB8dispatchEv+0x78>
    running = Scheduler::get();
    80001460:	00000097          	auipc	ra,0x0
    80001464:	1ac080e7          	jalr	428(ra) # 8000160c <_ZN9Scheduler3getEv>
    80001468:	00005917          	auipc	s2,0x5
    8000146c:	9c890913          	addi	s2,s2,-1592 # 80005e30 <_ZN3PCB7runningE>
    80001470:	00a93023          	sd	a0,0(s2)
    Riscv::printString("got the new thread\n");
    80001474:	00004517          	auipc	a0,0x4
    80001478:	bc450513          	addi	a0,a0,-1084 # 80005038 <CONSOLE_STATUS+0x28>
    8000147c:	00001097          	auipc	ra,0x1
    80001480:	c3c080e7          	jalr	-964(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
    PCB::contextSwitch(&old->context, &running->context);
    80001484:	00093583          	ld	a1,0(s2)
    80001488:	01858593          	addi	a1,a1,24
    8000148c:	01848513          	addi	a0,s1,24
    80001490:	00000097          	auipc	ra,0x0
    80001494:	d78080e7          	jalr	-648(ra) # 80001208 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>

    //Riscv::popRegisters();
}
    80001498:	01813083          	ld	ra,24(sp)
    8000149c:	01013403          	ld	s0,16(sp)
    800014a0:	00813483          	ld	s1,8(sp)
    800014a4:	00013903          	ld	s2,0(sp)
    800014a8:	02010113          	addi	sp,sp,32
    800014ac:	00008067          	ret
    if(!old->finished) Scheduler::put(old);
    800014b0:	00048513          	mv	a0,s1
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	0ac080e7          	jalr	172(ra) # 80001560 <_ZN9Scheduler3putEP3PCB>
    800014bc:	fa5ff06f          	j	80001460 <_ZN3PCB8dispatchEv+0x28>

00000000800014c0 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800014c0:	ff010113          	addi	sp,sp,-16
    800014c4:	00113423          	sd	ra,8(sp)
    800014c8:	00813023          	sd	s0,0(sp)
    800014cc:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800014d0:	00001097          	auipc	ra,0x1
    800014d4:	2c4080e7          	jalr	708(ra) # 80002794 <_Z7kmallocm>
}
    800014d8:	00813083          	ld	ra,8(sp)
    800014dc:	00013403          	ld	s0,0(sp)
    800014e0:	01010113          	addi	sp,sp,16
    800014e4:	00008067          	ret

00000000800014e8 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    800014e8:	ff010113          	addi	sp,sp,-16
    800014ec:	00113423          	sd	ra,8(sp)
    800014f0:	00813023          	sd	s0,0(sp)
    800014f4:	01010413          	addi	s0,sp,16
    kfree(p);
    800014f8:	00001097          	auipc	ra,0x1
    800014fc:	2c4080e7          	jalr	708(ra) # 800027bc <_Z5kfreePv>
}
    80001500:	00813083          	ld	ra,8(sp)
    80001504:	00013403          	ld	s0,0(sp)
    80001508:	01010113          	addi	sp,sp,16
    8000150c:	00008067          	ret

0000000080001510 <_ZN9SchedulernwEm>:
    PCB* fr = scheduler->queuePCB.front();
    scheduler->queuePCB.pop();
    return fr;
}

void *Scheduler::operator new(size_t size) {
    80001510:	ff010113          	addi	sp,sp,-16
    80001514:	00113423          	sd	ra,8(sp)
    80001518:	00813023          	sd	s0,0(sp)
    8000151c:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80001520:	00001097          	auipc	ra,0x1
    80001524:	274080e7          	jalr	628(ra) # 80002794 <_Z7kmallocm>
}
    80001528:	00813083          	ld	ra,8(sp)
    8000152c:	00013403          	ld	s0,0(sp)
    80001530:	01010113          	addi	sp,sp,16
    80001534:	00008067          	ret

0000000080001538 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p) {
    80001538:	ff010113          	addi	sp,sp,-16
    8000153c:	00113423          	sd	ra,8(sp)
    80001540:	00813023          	sd	s0,0(sp)
    80001544:	01010413          	addi	s0,sp,16
    kfree(p);
    80001548:	00001097          	auipc	ra,0x1
    8000154c:	274080e7          	jalr	628(ra) # 800027bc <_Z5kfreePv>
}
    80001550:	00813083          	ld	ra,8(sp)
    80001554:	00013403          	ld	s0,0(sp)
    80001558:	01010113          	addi	sp,sp,16
    8000155c:	00008067          	ret

0000000080001560 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *pcb) {
    80001560:	fe010113          	addi	sp,sp,-32
    80001564:	00113c23          	sd	ra,24(sp)
    80001568:	00813823          	sd	s0,16(sp)
    8000156c:	00913423          	sd	s1,8(sp)
    80001570:	01213023          	sd	s2,0(sp)
    80001574:	02010413          	addi	s0,sp,32
    80001578:	00050493          	mv	s1,a0
    Riscv::printInteger(sizeof(Scheduler));
    8000157c:	01000513          	li	a0,16
    80001580:	00001097          	auipc	ra,0x1
    80001584:	ba8080e7          	jalr	-1112(ra) # 80002128 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("needs to put\n");
    80001588:	00004517          	auipc	a0,0x4
    8000158c:	ac850513          	addi	a0,a0,-1336 # 80005050 <CONSOLE_STATUS+0x40>
    80001590:	00001097          	auipc	ra,0x1
    80001594:	b28080e7          	jalr	-1240(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
    if(scheduler == 0)
    80001598:	00005797          	auipc	a5,0x5
    8000159c:	8a87b783          	ld	a5,-1880(a5) # 80005e40 <_ZN9Scheduler9schedulerE>
    800015a0:	04078063          	beqz	a5,800015e0 <_ZN9Scheduler3putEP3PCB+0x80>
    scheduler->queuePCB.push(pcb);
    800015a4:	00048593          	mv	a1,s1
    800015a8:	00005517          	auipc	a0,0x5
    800015ac:	89853503          	ld	a0,-1896(a0) # 80005e40 <_ZN9Scheduler9schedulerE>
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	10c080e7          	jalr	268(ra) # 800016bc <_ZN5QueueIP3PCBE4pushES1_>
    Riscv::printString("put\n");
    800015b8:	00004517          	auipc	a0,0x4
    800015bc:	aa850513          	addi	a0,a0,-1368 # 80005060 <CONSOLE_STATUS+0x50>
    800015c0:	00001097          	auipc	ra,0x1
    800015c4:	af8080e7          	jalr	-1288(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
}
    800015c8:	01813083          	ld	ra,24(sp)
    800015cc:	01013403          	ld	s0,16(sp)
    800015d0:	00813483          	ld	s1,8(sp)
    800015d4:	00013903          	ld	s2,0(sp)
    800015d8:	02010113          	addi	sp,sp,32
    800015dc:	00008067          	ret
        scheduler = new Scheduler();
    800015e0:	01000513          	li	a0,16
    800015e4:	00000097          	auipc	ra,0x0
    800015e8:	f2c080e7          	jalr	-212(ra) # 80001510 <_ZN9SchedulernwEm>
    800015ec:	00050913          	mv	s2,a0
    800015f0:	00053023          	sd	zero,0(a0)
    800015f4:	00053423          	sd	zero,8(a0)
#include "MemoryAllocator.h"
#include "Queue.h"

class PCB;

class Scheduler
    800015f8:	00000097          	auipc	ra,0x0
    800015fc:	0a4080e7          	jalr	164(ra) # 8000169c <_ZN5QueueIP3PCBEC1Ev>
    80001600:	00005797          	auipc	a5,0x5
    80001604:	8527b023          	sd	s2,-1984(a5) # 80005e40 <_ZN9Scheduler9schedulerE>
    80001608:	f9dff06f          	j	800015a4 <_ZN9Scheduler3putEP3PCB+0x44>

000000008000160c <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    8000160c:	fe010113          	addi	sp,sp,-32
    80001610:	00113c23          	sd	ra,24(sp)
    80001614:	00813823          	sd	s0,16(sp)
    80001618:	00913423          	sd	s1,8(sp)
    8000161c:	01213023          	sd	s2,0(sp)
    80001620:	02010413          	addi	s0,sp,32
    if(scheduler == 0)
    80001624:	00005797          	auipc	a5,0x5
    80001628:	81c7b783          	ld	a5,-2020(a5) # 80005e40 <_ZN9Scheduler9schedulerE>
    8000162c:	04078263          	beqz	a5,80001670 <_ZN9Scheduler3getEv+0x64>
    PCB* fr = scheduler->queuePCB.front();
    80001630:	00005917          	auipc	s2,0x5
    80001634:	81093903          	ld	s2,-2032(s2) # 80005e40 <_ZN9Scheduler9schedulerE>
    80001638:	00090513          	mv	a0,s2
    8000163c:	00000097          	auipc	ra,0x0
    80001640:	0e4080e7          	jalr	228(ra) # 80001720 <_ZN5QueueIP3PCBE5frontEv>
    80001644:	00050493          	mv	s1,a0
    scheduler->queuePCB.pop();
    80001648:	00090513          	mv	a0,s2
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	0f8080e7          	jalr	248(ra) # 80001744 <_ZN5QueueIP3PCBE3popEv>
}
    80001654:	00048513          	mv	a0,s1
    80001658:	01813083          	ld	ra,24(sp)
    8000165c:	01013403          	ld	s0,16(sp)
    80001660:	00813483          	ld	s1,8(sp)
    80001664:	00013903          	ld	s2,0(sp)
    80001668:	02010113          	addi	sp,sp,32
    8000166c:	00008067          	ret
        scheduler = new Scheduler();
    80001670:	01000513          	li	a0,16
    80001674:	00000097          	auipc	ra,0x0
    80001678:	e9c080e7          	jalr	-356(ra) # 80001510 <_ZN9SchedulernwEm>
    8000167c:	00050493          	mv	s1,a0
    80001680:	00053023          	sd	zero,0(a0)
    80001684:	00053423          	sd	zero,8(a0)
    80001688:	00000097          	auipc	ra,0x0
    8000168c:	014080e7          	jalr	20(ra) # 8000169c <_ZN5QueueIP3PCBEC1Ev>
    80001690:	00004797          	auipc	a5,0x4
    80001694:	7a97b823          	sd	s1,1968(a5) # 80005e40 <_ZN9Scheduler9schedulerE>
    80001698:	f99ff06f          	j	80001630 <_ZN9Scheduler3getEv+0x24>

000000008000169c <_ZN5QueueIP3PCBEC1Ev>:
        return 0;
    return first->data;
}

template<typename T>
Queue<T>::Queue() {
    8000169c:	ff010113          	addi	sp,sp,-16
    800016a0:	00813423          	sd	s0,8(sp)
    800016a4:	01010413          	addi	s0,sp,16
    first = last = 0;
    800016a8:	00053423          	sd	zero,8(a0)
    800016ac:	00053023          	sd	zero,0(a0)
}
    800016b0:	00813403          	ld	s0,8(sp)
    800016b4:	01010113          	addi	sp,sp,16
    800016b8:	00008067          	ret

00000000800016bc <_ZN5QueueIP3PCBE4pushES1_>:
void Queue<T>::push(T t) {
    800016bc:	fe010113          	addi	sp,sp,-32
    800016c0:	00113c23          	sd	ra,24(sp)
    800016c4:	00813823          	sd	s0,16(sp)
    800016c8:	00913423          	sd	s1,8(sp)
    800016cc:	01213023          	sd	s2,0(sp)
    800016d0:	02010413          	addi	s0,sp,32
    800016d4:	00050493          	mv	s1,a0
    800016d8:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    800016dc:	01000513          	li	a0,16
    800016e0:	00001097          	auipc	ra,0x1
    800016e4:	0b4080e7          	jalr	180(ra) # 80002794 <_Z7kmallocm>
    newElem->data = t;
    800016e8:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    800016ec:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    800016f0:	0004b783          	ld	a5,0(s1)
    800016f4:	00078e63          	beqz	a5,80001710 <_ZN5QueueIP3PCBE4pushES1_+0x54>
}
    800016f8:	01813083          	ld	ra,24(sp)
    800016fc:	01013403          	ld	s0,16(sp)
    80001700:	00813483          	ld	s1,8(sp)
    80001704:	00013903          	ld	s2,0(sp)
    80001708:	02010113          	addi	sp,sp,32
    8000170c:	00008067          	ret
        first = newElem;
    80001710:	00a4b023          	sd	a0,0(s1)
        last = 0;
    80001714:	0004b423          	sd	zero,8(s1)
        first->next = last;
    80001718:	00053423          	sd	zero,8(a0)
}
    8000171c:	fddff06f          	j	800016f8 <_ZN5QueueIP3PCBE4pushES1_+0x3c>

0000000080001720 <_ZN5QueueIP3PCBE5frontEv>:
T Queue<T>::front() {
    80001720:	ff010113          	addi	sp,sp,-16
    80001724:	00813423          	sd	s0,8(sp)
    80001728:	01010413          	addi	s0,sp,16
    if(first == 0)
    8000172c:	00053503          	ld	a0,0(a0)
    80001730:	00050463          	beqz	a0,80001738 <_ZN5QueueIP3PCBE5frontEv+0x18>
    return first->data;
    80001734:	00053503          	ld	a0,0(a0)
}
    80001738:	00813403          	ld	s0,8(sp)
    8000173c:	01010113          	addi	sp,sp,16
    80001740:	00008067          	ret

0000000080001744 <_ZN5QueueIP3PCBE3popEv>:
void Queue<T>::pop() {
    80001744:	fe010113          	addi	sp,sp,-32
    80001748:	00113c23          	sd	ra,24(sp)
    8000174c:	00813823          	sd	s0,16(sp)
    80001750:	00913423          	sd	s1,8(sp)
    80001754:	01213023          	sd	s2,0(sp)
    80001758:	02010413          	addi	s0,sp,32
    8000175c:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80001760:	00053503          	ld	a0,0(a0)
    80001764:	00853903          	ld	s2,8(a0)
    kfree(first);
    80001768:	00001097          	auipc	ra,0x1
    8000176c:	054080e7          	jalr	84(ra) # 800027bc <_Z5kfreePv>
    first = newFirst;
    80001770:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80001774:	00090e63          	beqz	s2,80001790 <_ZN5QueueIP3PCBE3popEv+0x4c>
}
    80001778:	01813083          	ld	ra,24(sp)
    8000177c:	01013403          	ld	s0,16(sp)
    80001780:	00813483          	ld	s1,8(sp)
    80001784:	00013903          	ld	s2,0(sp)
    80001788:	02010113          	addi	sp,sp,32
    8000178c:	00008067          	ret
        first = last = 0;
    80001790:	0004b423          	sd	zero,8(s1)
    80001794:	0004b023          	sd	zero,0(s1)
}
    80001798:	fe1ff06f          	j	80001778 <_ZN5QueueIP3PCBE3popEv+0x34>

000000008000179c <_Z15thread1FunctionPv>:
    Riscv::printInteger(x);
    Riscv::printString("\n");
}

void thread1Function(void* p)
{
    8000179c:	fe010113          	addi	sp,sp,-32
    800017a0:	00113c23          	sd	ra,24(sp)
    800017a4:	00813823          	sd	s0,16(sp)
    800017a8:	00913423          	sd	s1,8(sp)
    800017ac:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 1 started...");
    800017b0:	00004517          	auipc	a0,0x4
    800017b4:	8b850513          	addi	a0,a0,-1864 # 80005068 <CONSOLE_STATUS+0x58>
    800017b8:	00001097          	auipc	ra,0x1
    800017bc:	900080e7          	jalr	-1792(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < 10;i++)
    800017c0:	00000493          	li	s1,0
    800017c4:	03c0006f          	j	80001800 <_Z15thread1FunctionPv+0x64>
    {
        if(i % 4 == 0)
            thread_dispatch();
    800017c8:	00000097          	auipc	ra,0x0
    800017cc:	b30080e7          	jalr	-1232(ra) # 800012f8 <thread_dispatch>
        Riscv::printString("i : ");
    800017d0:	00004517          	auipc	a0,0x4
    800017d4:	8b050513          	addi	a0,a0,-1872 # 80005080 <CONSOLE_STATUS+0x70>
    800017d8:	00001097          	auipc	ra,0x1
    800017dc:	8e0080e7          	jalr	-1824(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800017e0:	00048513          	mv	a0,s1
    800017e4:	00001097          	auipc	ra,0x1
    800017e8:	944080e7          	jalr	-1724(ra) # 80002128 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800017ec:	00004517          	auipc	a0,0x4
    800017f0:	a3c50513          	addi	a0,a0,-1476 # 80005228 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800017f4:	00001097          	auipc	ra,0x1
    800017f8:	8c4080e7          	jalr	-1852(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < 10;i++)
    800017fc:	0014849b          	addiw	s1,s1,1
    80001800:	00900793          	li	a5,9
    80001804:	0097c863          	blt	a5,s1,80001814 <_Z15thread1FunctionPv+0x78>
        if(i % 4 == 0)
    80001808:	0034f793          	andi	a5,s1,3
    8000180c:	fc0792e3          	bnez	a5,800017d0 <_Z15thread1FunctionPv+0x34>
    80001810:	fb9ff06f          	j	800017c8 <_Z15thread1FunctionPv+0x2c>
    }

    Thread::dispatch();
    80001814:	00000097          	auipc	ra,0x0
    80001818:	7d0080e7          	jalr	2000(ra) # 80001fe4 <_ZN6Thread8dispatchEv>
}
    8000181c:	01813083          	ld	ra,24(sp)
    80001820:	01013403          	ld	s0,16(sp)
    80001824:	00813483          	ld	s1,8(sp)
    80001828:	02010113          	addi	sp,sp,32
    8000182c:	00008067          	ret

0000000080001830 <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    80001830:	fe010113          	addi	sp,sp,-32
    80001834:	00113c23          	sd	ra,24(sp)
    80001838:	00813823          	sd	s0,16(sp)
    8000183c:	00913423          	sd	s1,8(sp)
    80001840:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...");
    80001844:	00004517          	auipc	a0,0x4
    80001848:	84450513          	addi	a0,a0,-1980 # 80005088 <CONSOLE_STATUS+0x78>
    8000184c:	00001097          	auipc	ra,0x1
    80001850:	86c080e7          	jalr	-1940(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
    for(int j = 0; j < 10;j++)
    80001854:	00000493          	li	s1,0
    80001858:	03c0006f          	j	80001894 <_Z15thread2FunctionPv+0x64>
    {
        if(j % 5 == 0)
            thread_dispatch();
    8000185c:	00000097          	auipc	ra,0x0
    80001860:	a9c080e7          	jalr	-1380(ra) # 800012f8 <thread_dispatch>
        Riscv::printString("j : ");
    80001864:	00004517          	auipc	a0,0x4
    80001868:	83c50513          	addi	a0,a0,-1988 # 800050a0 <CONSOLE_STATUS+0x90>
    8000186c:	00001097          	auipc	ra,0x1
    80001870:	84c080e7          	jalr	-1972(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001874:	00048513          	mv	a0,s1
    80001878:	00001097          	auipc	ra,0x1
    8000187c:	8b0080e7          	jalr	-1872(ra) # 80002128 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001880:	00004517          	auipc	a0,0x4
    80001884:	9a850513          	addi	a0,a0,-1624 # 80005228 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001888:	00001097          	auipc	ra,0x1
    8000188c:	830080e7          	jalr	-2000(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
    for(int j = 0; j < 10;j++)
    80001890:	0014849b          	addiw	s1,s1,1
    80001894:	00900793          	li	a5,9
    80001898:	0097ca63          	blt	a5,s1,800018ac <_Z15thread2FunctionPv+0x7c>
        if(j % 5 == 0)
    8000189c:	00500793          	li	a5,5
    800018a0:	02f4e7bb          	remw	a5,s1,a5
    800018a4:	fc0790e3          	bnez	a5,80001864 <_Z15thread2FunctionPv+0x34>
    800018a8:	fb5ff06f          	j	8000185c <_Z15thread2FunctionPv+0x2c>
    }

    Thread::dispatch();
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	738080e7          	jalr	1848(ra) # 80001fe4 <_ZN6Thread8dispatchEv>
}
    800018b4:	01813083          	ld	ra,24(sp)
    800018b8:	01013403          	ld	s0,16(sp)
    800018bc:	00813483          	ld	s1,8(sp)
    800018c0:	02010113          	addi	sp,sp,32
    800018c4:	00008067          	ret

00000000800018c8 <_Z11threadTestsv>:

void threadTests()
{
    800018c8:	fe010113          	addi	sp,sp,-32
    800018cc:	00113c23          	sd	ra,24(sp)
    800018d0:	00813823          	sd	s0,16(sp)
    800018d4:	00913423          	sd	s1,8(sp)
    800018d8:	01213023          	sd	s2,0(sp)
    800018dc:	02010413          	addi	s0,sp,32
    Thread* t = new Thread(0, 0);
    800018e0:	00800513          	li	a0,8
    800018e4:	00000097          	auipc	ra,0x0
    800018e8:	698080e7          	jalr	1688(ra) # 80001f7c <_Znwm>
    800018ec:	00050493          	mv	s1,a0
    800018f0:	00000613          	li	a2,0
    800018f4:	00000593          	li	a1,0
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	73c080e7          	jalr	1852(ra) # 80002034 <_ZN6ThreadC1EPFvPvES0_>
    PCB::running = t->myHandle;
    80001900:	0004b703          	ld	a4,0(s1)
    80001904:	00004797          	auipc	a5,0x4
    80001908:	4dc7b783          	ld	a5,1244(a5) # 80005de0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000190c:	00e7b023          	sd	a4,0(a5)
    Thread* t1 = new Thread(&thread1Function, 0);
    80001910:	00800513          	li	a0,8
    80001914:	00000097          	auipc	ra,0x0
    80001918:	668080e7          	jalr	1640(ra) # 80001f7c <_Znwm>
    8000191c:	00050493          	mv	s1,a0
    80001920:	00000613          	li	a2,0
    80001924:	00000597          	auipc	a1,0x0
    80001928:	e7858593          	addi	a1,a1,-392 # 8000179c <_Z15thread1FunctionPv>
    8000192c:	00000097          	auipc	ra,0x0
    80001930:	708080e7          	jalr	1800(ra) # 80002034 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001934:	00800513          	li	a0,8
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	644080e7          	jalr	1604(ra) # 80001f7c <_Znwm>
    80001940:	00050913          	mv	s2,a0
    80001944:	00000613          	li	a2,0
    80001948:	00000597          	auipc	a1,0x0
    8000194c:	ee858593          	addi	a1,a1,-280 # 80001830 <_Z15thread2FunctionPv>
    80001950:	00000097          	auipc	ra,0x0
    80001954:	6e4080e7          	jalr	1764(ra) # 80002034 <_ZN6ThreadC1EPFvPvES0_>

    while(!t1->myHandle->getFinished()
    80001958:	0004b783          	ld	a5,0(s1)

    bool getFinished() { return finished;}
    8000195c:	0307c783          	lbu	a5,48(a5)
        && !t2->myHandle->getFinished())
    80001960:	00079e63          	bnez	a5,8000197c <_Z11threadTestsv+0xb4>
    80001964:	00093783          	ld	a5,0(s2)
    80001968:	0307c783          	lbu	a5,48(a5)
    8000196c:	00079863          	bnez	a5,8000197c <_Z11threadTestsv+0xb4>
    {
        thread_dispatch();
    80001970:	00000097          	auipc	ra,0x0
    80001974:	988080e7          	jalr	-1656(ra) # 800012f8 <thread_dispatch>
    while(!t1->myHandle->getFinished()
    80001978:	fe1ff06f          	j	80001958 <_Z11threadTestsv+0x90>
    }

    Riscv::printString("End...");
    8000197c:	00003517          	auipc	a0,0x3
    80001980:	72c50513          	addi	a0,a0,1836 # 800050a8 <CONSOLE_STATUS+0x98>
    80001984:	00000097          	auipc	ra,0x0
    80001988:	734080e7          	jalr	1844(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
}
    8000198c:	01813083          	ld	ra,24(sp)
    80001990:	01013403          	ld	s0,16(sp)
    80001994:	00813483          	ld	s1,8(sp)
    80001998:	00013903          	ld	s2,0(sp)
    8000199c:	02010113          	addi	sp,sp,32
    800019a0:	00008067          	ret
    800019a4:	00050913          	mv	s2,a0
    Thread* t = new Thread(0, 0);
    800019a8:	00048513          	mv	a0,s1
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	5f8080e7          	jalr	1528(ra) # 80001fa4 <_ZdlPv>
    800019b4:	00090513          	mv	a0,s2
    800019b8:	00005097          	auipc	ra,0x5
    800019bc:	570080e7          	jalr	1392(ra) # 80006f28 <_Unwind_Resume>
    800019c0:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    800019c4:	00048513          	mv	a0,s1
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	5dc080e7          	jalr	1500(ra) # 80001fa4 <_ZdlPv>
    800019d0:	00090513          	mv	a0,s2
    800019d4:	00005097          	auipc	ra,0x5
    800019d8:	554080e7          	jalr	1364(ra) # 80006f28 <_Unwind_Resume>
    800019dc:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800019e0:	00090513          	mv	a0,s2
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	5c0080e7          	jalr	1472(ra) # 80001fa4 <_ZdlPv>
    800019ec:	00048513          	mv	a0,s1
    800019f0:	00005097          	auipc	ra,0x5
    800019f4:	538080e7          	jalr	1336(ra) # 80006f28 <_Unwind_Resume>

00000000800019f8 <main>:
{
    800019f8:	ff010113          	addi	sp,sp,-16
    800019fc:	00113423          	sd	ra,8(sp)
    80001a00:	00813023          	sd	s0,0(sp)
    80001a04:	01010413          	addi	s0,sp,16
    Riscv::initSystem();
    80001a08:	00000097          	auipc	ra,0x0
    80001a0c:	66c080e7          	jalr	1644(ra) # 80002074 <_ZN5Riscv10initSystemEv>
    threadTests();
    80001a10:	00000097          	auipc	ra,0x0
    80001a14:	eb8080e7          	jalr	-328(ra) # 800018c8 <_Z11threadTestsv>
}
    80001a18:	00813083          	ld	ra,8(sp)
    80001a1c:	00013403          	ld	s0,0(sp)
    80001a20:	01010113          	addi	sp,sp,16
    80001a24:	00008067          	ret

0000000080001a28 <_Z10mallocFreev>:


//memory (de)allocation tests
void mallocFree()
{
    80001a28:	cc010113          	addi	sp,sp,-832
    80001a2c:	32113c23          	sd	ra,824(sp)
    80001a30:	32813823          	sd	s0,816(sp)
    80001a34:	32913423          	sd	s1,808(sp)
    80001a38:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    80001a3c:	00003517          	auipc	a0,0x3
    80001a40:	67450513          	addi	a0,a0,1652 # 800050b0 <CONSOLE_STATUS+0xa0>
    80001a44:	00000097          	auipc	ra,0x0
    80001a48:	674080e7          	jalr	1652(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    80001a4c:	00000493          	li	s1,0
    80001a50:	0080006f          	j	80001a58 <_Z10mallocFreev+0x30>
    80001a54:	0014849b          	addiw	s1,s1,1
    80001a58:	06300793          	li	a5,99
    80001a5c:	0497c463          	blt	a5,s1,80001aa4 <_Z10mallocFreev+0x7c>
    {
        addrs[i] = mem_alloc(100);
    80001a60:	06400513          	li	a0,100
    80001a64:	fffff097          	auipc	ra,0xfffff
    80001a68:	7b8080e7          	jalr	1976(ra) # 8000121c <mem_alloc>
    80001a6c:	00349793          	slli	a5,s1,0x3
    80001a70:	fe040713          	addi	a4,s0,-32
    80001a74:	00f707b3          	add	a5,a4,a5
    80001a78:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001a7c:	fc051ce3          	bnez	a0,80001a54 <_Z10mallocFreev+0x2c>
        {
            Riscv::printString("not OK\n");
    80001a80:	00003517          	auipc	a0,0x3
    80001a84:	64050513          	addi	a0,a0,1600 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	630080e7          	jalr	1584(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
            return;
        }
    }

    Riscv::printString("OK\n");
}
    80001a90:	33813083          	ld	ra,824(sp)
    80001a94:	33013403          	ld	s0,816(sp)
    80001a98:	32813483          	ld	s1,808(sp)
    80001a9c:	34010113          	addi	sp,sp,832
    80001aa0:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001aa4:	00000493          	li	s1,0
    80001aa8:	06300793          	li	a5,99
    80001aac:	0297ce63          	blt	a5,s1,80001ae8 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001ab0:	00349793          	slli	a5,s1,0x3
    80001ab4:	fe040713          	addi	a4,s0,-32
    80001ab8:	00f707b3          	add	a5,a4,a5
    80001abc:	ce07b503          	ld	a0,-800(a5)
    80001ac0:	fffff097          	auipc	ra,0xfffff
    80001ac4:	78c080e7          	jalr	1932(ra) # 8000124c <mem_free>
        if(retval != 0)
    80001ac8:	00051663          	bnez	a0,80001ad4 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001acc:	0024849b          	addiw	s1,s1,2
    80001ad0:	fd9ff06f          	j	80001aa8 <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    80001ad4:	00003517          	auipc	a0,0x3
    80001ad8:	5ec50513          	addi	a0,a0,1516 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	5dc080e7          	jalr	1500(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
            return;
    80001ae4:	fadff06f          	j	80001a90 <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001ae8:	00000493          	li	s1,0
    80001aec:	0080006f          	j	80001af4 <_Z10mallocFreev+0xcc>
    80001af0:	0024849b          	addiw	s1,s1,2
    80001af4:	06300793          	li	a5,99
    80001af8:	0297cc63          	blt	a5,s1,80001b30 <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001afc:	01400513          	li	a0,20
    80001b00:	fffff097          	auipc	ra,0xfffff
    80001b04:	71c080e7          	jalr	1820(ra) # 8000121c <mem_alloc>
    80001b08:	00349793          	slli	a5,s1,0x3
    80001b0c:	fe040713          	addi	a4,s0,-32
    80001b10:	00f707b3          	add	a5,a4,a5
    80001b14:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001b18:	fc051ce3          	bnez	a0,80001af0 <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    80001b1c:	00003517          	auipc	a0,0x3
    80001b20:	5a450513          	addi	a0,a0,1444 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001b24:	00000097          	auipc	ra,0x0
    80001b28:	594080e7          	jalr	1428(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
            return;
    80001b2c:	f65ff06f          	j	80001a90 <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001b30:	00000493          	li	s1,0
    80001b34:	06300793          	li	a5,99
    80001b38:	0297ce63          	blt	a5,s1,80001b74 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001b3c:	00349793          	slli	a5,s1,0x3
    80001b40:	fe040713          	addi	a4,s0,-32
    80001b44:	00f707b3          	add	a5,a4,a5
    80001b48:	ce07b503          	ld	a0,-800(a5)
    80001b4c:	fffff097          	auipc	ra,0xfffff
    80001b50:	700080e7          	jalr	1792(ra) # 8000124c <mem_free>
        if(retval != 0)
    80001b54:	00051663          	bnez	a0,80001b60 <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001b58:	0014849b          	addiw	s1,s1,1
    80001b5c:	fd9ff06f          	j	80001b34 <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    80001b60:	00003517          	auipc	a0,0x3
    80001b64:	56050513          	addi	a0,a0,1376 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	550080e7          	jalr	1360(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
            return;
    80001b70:	f21ff06f          	j	80001a90 <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001b74:	00003517          	auipc	a0,0x3
    80001b78:	55450513          	addi	a0,a0,1364 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001b7c:	00000097          	auipc	ra,0x0
    80001b80:	53c080e7          	jalr	1340(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
    80001b84:	f0dff06f          	j	80001a90 <_Z10mallocFreev+0x68>

0000000080001b88 <_Z9bigMallocv>:
void bigMalloc()
{
    80001b88:	ff010113          	addi	sp,sp,-16
    80001b8c:	00113423          	sd	ra,8(sp)
    80001b90:	00813023          	sd	s0,0(sp)
    80001b94:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    80001b98:	00003517          	auipc	a0,0x3
    80001b9c:	53850513          	addi	a0,a0,1336 # 800050d0 <CONSOLE_STATUS+0xc0>
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	518080e7          	jalr	1304(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001ba8:	00004797          	auipc	a5,0x4
    80001bac:	2407b783          	ld	a5,576(a5) # 80005de8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001bb0:	0007b503          	ld	a0,0(a5)
    80001bb4:	00004797          	auipc	a5,0x4
    80001bb8:	20c7b783          	ld	a5,524(a5) # 80005dc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001bbc:	0007b783          	ld	a5,0(a5)
    80001bc0:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001bc4:	06450513          	addi	a0,a0,100
    80001bc8:	fffff097          	auipc	ra,0xfffff
    80001bcc:	654080e7          	jalr	1620(ra) # 8000121c <mem_alloc>
    if(p == 0)
    80001bd0:	02050263          	beqz	a0,80001bf4 <_Z9bigMallocv+0x6c>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    80001bd4:	00003517          	auipc	a0,0x3
    80001bd8:	4ec50513          	addi	a0,a0,1260 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	4dc080e7          	jalr	1244(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
}
    80001be4:	00813083          	ld	ra,8(sp)
    80001be8:	00013403          	ld	s0,0(sp)
    80001bec:	01010113          	addi	sp,sp,16
    80001bf0:	00008067          	ret
        Riscv::printString("OK\n");
    80001bf4:	00003517          	auipc	a0,0x3
    80001bf8:	4d450513          	addi	a0,a0,1236 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001bfc:	00000097          	auipc	ra,0x0
    80001c00:	4bc080e7          	jalr	1212(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
    80001c04:	fe1ff06f          	j	80001be4 <_Z9bigMallocv+0x5c>

0000000080001c08 <_Z17lotOfSmallMallocsv>:

void lotOfSmallMallocs()
{
    80001c08:	fd010113          	addi	sp,sp,-48
    80001c0c:	02113423          	sd	ra,40(sp)
    80001c10:	02813023          	sd	s0,32(sp)
    80001c14:	00913c23          	sd	s1,24(sp)
    80001c18:	01213823          	sd	s2,16(sp)
    80001c1c:	01313423          	sd	s3,8(sp)
    80001c20:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001c24:	00003517          	auipc	a0,0x3
    80001c28:	4bc50513          	addi	a0,a0,1212 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001c2c:	00000097          	auipc	ra,0x0
    80001c30:	48c080e7          	jalr	1164(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
    uint64 cnt = 0;
    uint64 sum = 0;
    uint64 N = 10000UL;
    uint64 X = 10UL;
    for(uint64 i = 0; i < N;i++)
    80001c34:	00000493          	li	s1,0
    uint64 sum = 0;
    80001c38:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001c3c:	00000913          	li	s2,0
    80001c40:	0180006f          	j	80001c58 <_Z17lotOfSmallMallocsv+0x50>
    {
        Test* t = (Test*)mem_alloc(sizeof(Test));
        if(t == 0)
            break;
        t->a = X;
    80001c44:	00a00793          	li	a5,10
    80001c48:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001c4c:	00a98993          	addi	s3,s3,10
        cnt++;
    80001c50:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001c54:	00148493          	addi	s1,s1,1
    80001c58:	000027b7          	lui	a5,0x2
    80001c5c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001c60:	0097ea63          	bltu	a5,s1,80001c74 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001c64:	00800513          	li	a0,8
    80001c68:	fffff097          	auipc	ra,0xfffff
    80001c6c:	5b4080e7          	jalr	1460(ra) # 8000121c <mem_alloc>
        if(t == 0)
    80001c70:	fc051ae3          	bnez	a0,80001c44 <_Z17lotOfSmallMallocsv+0x3c>
    }
    Riscv::printInteger(cnt);
    80001c74:	00090513          	mv	a0,s2
    80001c78:	00000097          	auipc	ra,0x0
    80001c7c:	4b0080e7          	jalr	1200(ra) # 80002128 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001c80:	00003517          	auipc	a0,0x3
    80001c84:	5a850513          	addi	a0,a0,1448 # 80005228 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001c88:	00000097          	auipc	ra,0x0
    80001c8c:	430080e7          	jalr	1072(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001c90:	00291793          	slli	a5,s2,0x2
    80001c94:	01278933          	add	s2,a5,s2
    80001c98:	00191913          	slli	s2,s2,0x1
    80001c9c:	03390863          	beq	s2,s3,80001ccc <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    80001ca0:	00003517          	auipc	a0,0x3
    80001ca4:	42050513          	addi	a0,a0,1056 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	410080e7          	jalr	1040(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
}
    80001cb0:	02813083          	ld	ra,40(sp)
    80001cb4:	02013403          	ld	s0,32(sp)
    80001cb8:	01813483          	ld	s1,24(sp)
    80001cbc:	01013903          	ld	s2,16(sp)
    80001cc0:	00813983          	ld	s3,8(sp)
    80001cc4:	03010113          	addi	sp,sp,48
    80001cc8:	00008067          	ret
        Riscv::printString("OK\n");
    80001ccc:	00003517          	auipc	a0,0x3
    80001cd0:	3fc50513          	addi	a0,a0,1020 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001cd4:	00000097          	auipc	ra,0x0
    80001cd8:	3e4080e7          	jalr	996(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
    80001cdc:	fd5ff06f          	j	80001cb0 <_Z17lotOfSmallMallocsv+0xa8>

0000000080001ce0 <_Z7badFreev>:
void badFree()
{
    80001ce0:	ff010113          	addi	sp,sp,-16
    80001ce4:	00113423          	sd	ra,8(sp)
    80001ce8:	00813023          	sd	s0,0(sp)
    80001cec:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001cf0:	00003517          	auipc	a0,0x3
    80001cf4:	40850513          	addi	a0,a0,1032 # 800050f8 <CONSOLE_STATUS+0xe8>
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	3c0080e7          	jalr	960(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001d00:	00800513          	li	a0,8
    80001d04:	fffff097          	auipc	ra,0xfffff
    80001d08:	518080e7          	jalr	1304(ra) # 8000121c <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001d0c:	00250513          	addi	a0,a0,2
    80001d10:	fffff097          	auipc	ra,0xfffff
    80001d14:	53c080e7          	jalr	1340(ra) # 8000124c <mem_free>
    if(retval == 0)
    80001d18:	02051263          	bnez	a0,80001d3c <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001d1c:	00003517          	auipc	a0,0x3
    80001d20:	3a450513          	addi	a0,a0,932 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001d24:	00000097          	auipc	ra,0x0
    80001d28:	394080e7          	jalr	916(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
    else
        Riscv::printString("OK\n");
}
    80001d2c:	00813083          	ld	ra,8(sp)
    80001d30:	00013403          	ld	s0,0(sp)
    80001d34:	01010113          	addi	sp,sp,16
    80001d38:	00008067          	ret
        Riscv::printString("OK\n");
    80001d3c:	00003517          	auipc	a0,0x3
    80001d40:	38c50513          	addi	a0,a0,908 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001d44:	00000097          	auipc	ra,0x0
    80001d48:	374080e7          	jalr	884(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
}
    80001d4c:	fe1ff06f          	j	80001d2c <_Z7badFreev+0x4c>

0000000080001d50 <_Z21memoryAllocationTestsv>:

void memoryAllocationTests()
{
    80001d50:	ff010113          	addi	sp,sp,-16
    80001d54:	00813423          	sd	s0,8(sp)
    80001d58:	01010413          	addi	s0,sp,16
    //bigMalloc();
    //lotOfSmallMallocs();
    //mallocFree();
    //badFree();
}
    80001d5c:	00813403          	ld	s0,8(sp)
    80001d60:	01010113          	addi	sp,sp,16
    80001d64:	00008067          	ret

0000000080001d68 <_Z9testQueuev>:
{
    80001d68:	fd010113          	addi	sp,sp,-48
    80001d6c:	02113423          	sd	ra,40(sp)
    80001d70:	02813023          	sd	s0,32(sp)
    80001d74:	00913c23          	sd	s1,24(sp)
    80001d78:	01213823          	sd	s2,16(sp)
    80001d7c:	03010413          	addi	s0,sp,48
    Queue<uint64> q;
    80001d80:	fd040493          	addi	s1,s0,-48
    80001d84:	00048513          	mv	a0,s1
    80001d88:	00000097          	auipc	ra,0x0
    80001d8c:	0a4080e7          	jalr	164(ra) # 80001e2c <_ZN5QueueImEC1Ev>
    q.push(1);
    80001d90:	00100593          	li	a1,1
    80001d94:	00048513          	mv	a0,s1
    80001d98:	00000097          	auipc	ra,0x0
    80001d9c:	0fc080e7          	jalr	252(ra) # 80001e94 <_ZN5QueueImE4pushEm>
    q.push(2);
    80001da0:	00200593          	li	a1,2
    80001da4:	00048513          	mv	a0,s1
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	0ec080e7          	jalr	236(ra) # 80001e94 <_ZN5QueueImE4pushEm>
    uint64 x = q.front();
    80001db0:	00048913          	mv	s2,s1
    80001db4:	00048513          	mv	a0,s1
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	140080e7          	jalr	320(ra) # 80001ef8 <_ZN5QueueImE5frontEv>
    80001dc0:	00050493          	mv	s1,a0
    q.pop();
    80001dc4:	00090513          	mv	a0,s2
    80001dc8:	00000097          	auipc	ra,0x0
    80001dcc:	15c080e7          	jalr	348(ra) # 80001f24 <_ZN5QueueImE3popEv>
    Riscv::printInteger(x);
    80001dd0:	00048513          	mv	a0,s1
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	354080e7          	jalr	852(ra) # 80002128 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001ddc:	00003517          	auipc	a0,0x3
    80001de0:	44c50513          	addi	a0,a0,1100 # 80005228 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001de4:	00000097          	auipc	ra,0x0
    80001de8:	2d4080e7          	jalr	724(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>
    Queue<uint64> q;
    80001dec:	00090513          	mv	a0,s2
    80001df0:	00000097          	auipc	ra,0x0
    80001df4:	05c080e7          	jalr	92(ra) # 80001e4c <_ZN5QueueImED1Ev>
}
    80001df8:	02813083          	ld	ra,40(sp)
    80001dfc:	02013403          	ld	s0,32(sp)
    80001e00:	01813483          	ld	s1,24(sp)
    80001e04:	01013903          	ld	s2,16(sp)
    80001e08:	03010113          	addi	sp,sp,48
    80001e0c:	00008067          	ret
    80001e10:	00050493          	mv	s1,a0
    Queue<uint64> q;
    80001e14:	fd040513          	addi	a0,s0,-48
    80001e18:	00000097          	auipc	ra,0x0
    80001e1c:	034080e7          	jalr	52(ra) # 80001e4c <_ZN5QueueImED1Ev>
    80001e20:	00048513          	mv	a0,s1
    80001e24:	00005097          	auipc	ra,0x5
    80001e28:	104080e7          	jalr	260(ra) # 80006f28 <_Unwind_Resume>

0000000080001e2c <_ZN5QueueImEC1Ev>:
Queue<T>::Queue() {
    80001e2c:	ff010113          	addi	sp,sp,-16
    80001e30:	00813423          	sd	s0,8(sp)
    80001e34:	01010413          	addi	s0,sp,16
    first = last = 0;
    80001e38:	00053423          	sd	zero,8(a0)
    80001e3c:	00053023          	sd	zero,0(a0)
}
    80001e40:	00813403          	ld	s0,8(sp)
    80001e44:	01010113          	addi	sp,sp,16
    80001e48:	00008067          	ret

0000000080001e4c <_ZN5QueueImED1Ev>:

template<typename T>
Queue<T>::~Queue() {
    Elem* curr = first;
    80001e4c:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80001e50:	04050063          	beqz	a0,80001e90 <_ZN5QueueImED1Ev+0x44>
Queue<T>::~Queue() {
    80001e54:	fe010113          	addi	sp,sp,-32
    80001e58:	00113c23          	sd	ra,24(sp)
    80001e5c:	00813823          	sd	s0,16(sp)
    80001e60:	00913423          	sd	s1,8(sp)
    80001e64:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    80001e68:	00853483          	ld	s1,8(a0)
        kfree(old);
    80001e6c:	00001097          	auipc	ra,0x1
    80001e70:	950080e7          	jalr	-1712(ra) # 800027bc <_Z5kfreePv>
        curr = curr->next;
    80001e74:	00048513          	mv	a0,s1
    while(curr != 0)
    80001e78:	fe0498e3          	bnez	s1,80001e68 <_ZN5QueueImED1Ev+0x1c>
    }
}
    80001e7c:	01813083          	ld	ra,24(sp)
    80001e80:	01013403          	ld	s0,16(sp)
    80001e84:	00813483          	ld	s1,8(sp)
    80001e88:	02010113          	addi	sp,sp,32
    80001e8c:	00008067          	ret
    80001e90:	00008067          	ret

0000000080001e94 <_ZN5QueueImE4pushEm>:
void Queue<T>::push(T t) {
    80001e94:	fe010113          	addi	sp,sp,-32
    80001e98:	00113c23          	sd	ra,24(sp)
    80001e9c:	00813823          	sd	s0,16(sp)
    80001ea0:	00913423          	sd	s1,8(sp)
    80001ea4:	01213023          	sd	s2,0(sp)
    80001ea8:	02010413          	addi	s0,sp,32
    80001eac:	00050493          	mv	s1,a0
    80001eb0:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80001eb4:	01000513          	li	a0,16
    80001eb8:	00001097          	auipc	ra,0x1
    80001ebc:	8dc080e7          	jalr	-1828(ra) # 80002794 <_Z7kmallocm>
    newElem->data = t;
    80001ec0:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80001ec4:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80001ec8:	0004b783          	ld	a5,0(s1)
    80001ecc:	00078e63          	beqz	a5,80001ee8 <_ZN5QueueImE4pushEm+0x54>
}
    80001ed0:	01813083          	ld	ra,24(sp)
    80001ed4:	01013403          	ld	s0,16(sp)
    80001ed8:	00813483          	ld	s1,8(sp)
    80001edc:	00013903          	ld	s2,0(sp)
    80001ee0:	02010113          	addi	sp,sp,32
    80001ee4:	00008067          	ret
        first = newElem;
    80001ee8:	00a4b023          	sd	a0,0(s1)
        last = 0;
    80001eec:	0004b423          	sd	zero,8(s1)
        first->next = last;
    80001ef0:	00053423          	sd	zero,8(a0)
}
    80001ef4:	fddff06f          	j	80001ed0 <_ZN5QueueImE4pushEm+0x3c>

0000000080001ef8 <_ZN5QueueImE5frontEv>:
T Queue<T>::front() {
    80001ef8:	ff010113          	addi	sp,sp,-16
    80001efc:	00813423          	sd	s0,8(sp)
    80001f00:	01010413          	addi	s0,sp,16
    if(first == 0)
    80001f04:	00053783          	ld	a5,0(a0)
    80001f08:	00078a63          	beqz	a5,80001f1c <_ZN5QueueImE5frontEv+0x24>
    return first->data;
    80001f0c:	0007b503          	ld	a0,0(a5)
}
    80001f10:	00813403          	ld	s0,8(sp)
    80001f14:	01010113          	addi	sp,sp,16
    80001f18:	00008067          	ret
        return 0;
    80001f1c:	00000513          	li	a0,0
    80001f20:	ff1ff06f          	j	80001f10 <_ZN5QueueImE5frontEv+0x18>

0000000080001f24 <_ZN5QueueImE3popEv>:
void Queue<T>::pop() {
    80001f24:	fe010113          	addi	sp,sp,-32
    80001f28:	00113c23          	sd	ra,24(sp)
    80001f2c:	00813823          	sd	s0,16(sp)
    80001f30:	00913423          	sd	s1,8(sp)
    80001f34:	01213023          	sd	s2,0(sp)
    80001f38:	02010413          	addi	s0,sp,32
    80001f3c:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80001f40:	00053503          	ld	a0,0(a0)
    80001f44:	00853903          	ld	s2,8(a0)
    kfree(first);
    80001f48:	00001097          	auipc	ra,0x1
    80001f4c:	874080e7          	jalr	-1932(ra) # 800027bc <_Z5kfreePv>
    first = newFirst;
    80001f50:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80001f54:	00090e63          	beqz	s2,80001f70 <_ZN5QueueImE3popEv+0x4c>
}
    80001f58:	01813083          	ld	ra,24(sp)
    80001f5c:	01013403          	ld	s0,16(sp)
    80001f60:	00813483          	ld	s1,8(sp)
    80001f64:	00013903          	ld	s2,0(sp)
    80001f68:	02010113          	addi	sp,sp,32
    80001f6c:	00008067          	ret
        first = last = 0;
    80001f70:	0004b423          	sd	zero,8(s1)
    80001f74:	0004b023          	sd	zero,0(s1)
}
    80001f78:	fe1ff06f          	j	80001f58 <_ZN5QueueImE3popEv+0x34>

0000000080001f7c <_Znwm>:

#include "../h/syscall_cpp.h"

//general
void * operator new(size_t size)
{
    80001f7c:	ff010113          	addi	sp,sp,-16
    80001f80:	00113423          	sd	ra,8(sp)
    80001f84:	00813023          	sd	s0,0(sp)
    80001f88:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001f8c:	fffff097          	auipc	ra,0xfffff
    80001f90:	290080e7          	jalr	656(ra) # 8000121c <mem_alloc>
}
    80001f94:	00813083          	ld	ra,8(sp)
    80001f98:	00013403          	ld	s0,0(sp)
    80001f9c:	01010113          	addi	sp,sp,16
    80001fa0:	00008067          	ret

0000000080001fa4 <_ZdlPv>:

void operator delete(void * p)
{
    80001fa4:	ff010113          	addi	sp,sp,-16
    80001fa8:	00113423          	sd	ra,8(sp)
    80001fac:	00813023          	sd	s0,0(sp)
    80001fb0:	01010413          	addi	s0,sp,16
   mem_free(p);
    80001fb4:	fffff097          	auipc	ra,0xfffff
    80001fb8:	298080e7          	jalr	664(ra) # 8000124c <mem_free>
}
    80001fbc:	00813083          	ld	ra,8(sp)
    80001fc0:	00013403          	ld	s0,0(sp)
    80001fc4:	01010113          	addi	sp,sp,16
    80001fc8:	00008067          	ret

0000000080001fcc <_ZN6Thread5startEv>:

//Thread

//todo
//diskusija u os1 proj sheet-u
void Thread::start() {
    80001fcc:	ff010113          	addi	sp,sp,-16
    80001fd0:	00813423          	sd	s0,8(sp)
    80001fd4:	01010413          	addi	s0,sp,16
    //int retval = thread_create(&myHandle, )
}
    80001fd8:	00813403          	ld	s0,8(sp)
    80001fdc:	01010113          	addi	sp,sp,16
    80001fe0:	00008067          	ret

0000000080001fe4 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80001fe4:	ff010113          	addi	sp,sp,-16
    80001fe8:	00113423          	sd	ra,8(sp)
    80001fec:	00813023          	sd	s0,0(sp)
    80001ff0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001ff4:	fffff097          	auipc	ra,0xfffff
    80001ff8:	304080e7          	jalr	772(ra) # 800012f8 <thread_dispatch>
}
    80001ffc:	00813083          	ld	ra,8(sp)
    80002000:	00013403          	ld	s0,0(sp)
    80002004:	01010113          	addi	sp,sp,16
    80002008:	00008067          	ret

000000008000200c <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    8000200c:	ff010113          	addi	sp,sp,-16
    80002010:	00113423          	sd	ra,8(sp)
    80002014:	00813023          	sd	s0,0(sp)
    80002018:	01010413          	addi	s0,sp,16
    PCB::sleep(time);
    8000201c:	fffff097          	auipc	ra,0xfffff
    80002020:	3dc080e7          	jalr	988(ra) # 800013f8 <_ZN3PCB5sleepEm>
}
    80002024:	00813083          	ld	ra,8(sp)
    80002028:	00013403          	ld	s0,0(sp)
    8000202c:	01010113          	addi	sp,sp,16
    80002030:	00008067          	ret

0000000080002034 <_ZN6ThreadC1EPFvPvES0_>:

Thread::Thread(void (*body)(void *), void *args) {
    80002034:	ff010113          	addi	sp,sp,-16
    80002038:	00113423          	sd	ra,8(sp)
    8000203c:	00813023          	sd	s0,0(sp)
    80002040:	01010413          	addi	s0,sp,16
    int retval = thread_create((void**)&myHandle, body, args);
    80002044:	fffff097          	auipc	ra,0xfffff
    80002048:	234080e7          	jalr	564(ra) # 80001278 <thread_create>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    8000204c:	00813083          	ld	ra,8(sp)
    80002050:	00013403          	ld	s0,0(sp)
    80002054:	01010113          	addi	sp,sp,16
    80002058:	00008067          	ret

000000008000205c <_ZN6ThreadC1Ev>:

Thread::Thread() {
    8000205c:	ff010113          	addi	sp,sp,-16
    80002060:	00813423          	sd	s0,8(sp)
    80002064:	01010413          	addi	s0,sp,16

}
    80002068:	00813403          	ld	s0,8(sp)
    8000206c:	01010113          	addi	sp,sp,16
    80002070:	00008067          	ret

0000000080002074 <_ZN5Riscv10initSystemEv>:
#include "../h/PCB.h"
#include "../lib/console.h"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem() {
    80002074:	ff010113          	addi	sp,sp,-16
    80002078:	00813423          	sd	s0,8(sp)
    8000207c:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80002080:	00004797          	auipc	a5,0x4
    80002084:	d487b783          	ld	a5,-696(a5) # 80005dc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80002088:	10579073          	csrw	stvec,a5
    //todo
    //no need for comment, but sync context switch
    //should be tested, before hardware interrupts are enabled
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
}
    8000208c:	00813403          	ld	s0,8(sp)
    80002090:	01010113          	addi	sp,sp,16
    80002094:	00008067          	ret

0000000080002098 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80002098:	ff010113          	addi	sp,sp,-16
    8000209c:	00813423          	sd	s0,8(sp)
    800020a0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800020a4:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800020a8:	10200073          	sret
}
    800020ac:	00813403          	ld	s0,8(sp)
    800020b0:	01010113          	addi	sp,sp,16
    800020b4:	00008067          	ret

00000000800020b8 <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    800020b8:	fd010113          	addi	sp,sp,-48
    800020bc:	02113423          	sd	ra,40(sp)
    800020c0:	02813023          	sd	s0,32(sp)
    800020c4:	00913c23          	sd	s1,24(sp)
    800020c8:	01213823          	sd	s2,16(sp)
    800020cc:	03010413          	addi	s0,sp,48
    800020d0:	00050493          	mv	s1,a0
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800020d4:	100027f3          	csrr	a5,sstatus
    800020d8:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800020dc:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800020e0:	00200793          	li	a5,2
    800020e4:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    800020e8:	0004c503          	lbu	a0,0(s1)
    800020ec:	00050a63          	beqz	a0,80002100 <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    800020f0:	00003097          	auipc	ra,0x3
    800020f4:	83c080e7          	jalr	-1988(ra) # 8000492c <__putc>
        string++;
    800020f8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800020fc:	fedff06f          	j	800020e8 <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80002100:	0009091b          	sext.w	s2,s2
    80002104:	00297913          	andi	s2,s2,2
    80002108:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    8000210c:	10092073          	csrs	sstatus,s2
}
    80002110:	02813083          	ld	ra,40(sp)
    80002114:	02013403          	ld	s0,32(sp)
    80002118:	01813483          	ld	s1,24(sp)
    8000211c:	01013903          	ld	s2,16(sp)
    80002120:	03010113          	addi	sp,sp,48
    80002124:	00008067          	ret

0000000080002128 <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    80002128:	fc010113          	addi	sp,sp,-64
    8000212c:	02113c23          	sd	ra,56(sp)
    80002130:	02813823          	sd	s0,48(sp)
    80002134:	02913423          	sd	s1,40(sp)
    80002138:	03213023          	sd	s2,32(sp)
    8000213c:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002140:	100027f3          	csrr	a5,sstatus
    80002144:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002148:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    8000214c:	00200793          	li	a5,2
    80002150:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80002154:	0005051b          	sext.w	a0,a0

    i = 0;
    80002158:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    8000215c:	00a00613          	li	a2,10
    80002160:	02c5773b          	remuw	a4,a0,a2
    80002164:	02071693          	slli	a3,a4,0x20
    80002168:	0206d693          	srli	a3,a3,0x20
    8000216c:	00003717          	auipc	a4,0x3
    80002170:	f9c70713          	addi	a4,a4,-100 # 80005108 <_ZZN5Riscv12printIntegerEmE6digits>
    80002174:	00d70733          	add	a4,a4,a3
    80002178:	00074703          	lbu	a4,0(a4)
    8000217c:	fe040693          	addi	a3,s0,-32
    80002180:	009687b3          	add	a5,a3,s1
    80002184:	0014849b          	addiw	s1,s1,1
    80002188:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    8000218c:	0005071b          	sext.w	a4,a0
    80002190:	02c5553b          	divuw	a0,a0,a2
    80002194:	00900793          	li	a5,9
    80002198:	fce7e2e3          	bltu	a5,a4,8000215c <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    8000219c:	fff4849b          	addiw	s1,s1,-1
    800021a0:	0004ce63          	bltz	s1,800021bc <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    800021a4:	fe040793          	addi	a5,s0,-32
    800021a8:	009787b3          	add	a5,a5,s1
    800021ac:	ff07c503          	lbu	a0,-16(a5)
    800021b0:	00002097          	auipc	ra,0x2
    800021b4:	77c080e7          	jalr	1916(ra) # 8000492c <__putc>
    800021b8:	fe5ff06f          	j	8000219c <_ZN5Riscv12printIntegerEm+0x74>

    Riscv::printString("\n");
    800021bc:	00003517          	auipc	a0,0x3
    800021c0:	06c50513          	addi	a0,a0,108 # 80005228 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800021c4:	00000097          	auipc	ra,0x0
    800021c8:	ef4080e7          	jalr	-268(ra) # 800020b8 <_ZN5Riscv11printStringEPKc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800021cc:	0009091b          	sext.w	s2,s2
    800021d0:	00297913          	andi	s2,s2,2
    800021d4:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800021d8:	10092073          	csrs	sstatus,s2
}
    800021dc:	03813083          	ld	ra,56(sp)
    800021e0:	03013403          	ld	s0,48(sp)
    800021e4:	02813483          	ld	s1,40(sp)
    800021e8:	02013903          	ld	s2,32(sp)
    800021ec:	04010113          	addi	sp,sp,64
    800021f0:	00008067          	ret

00000000800021f4 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    800021f4:	f9010113          	addi	sp,sp,-112
    800021f8:	06113423          	sd	ra,104(sp)
    800021fc:	06813023          	sd	s0,96(sp)
    80002200:	04913c23          	sd	s1,88(sp)
    80002204:	05213823          	sd	s2,80(sp)
    80002208:	05313423          	sd	s3,72(sp)
    8000220c:	05413023          	sd	s4,64(sp)
    80002210:	03513c23          	sd	s5,56(sp)
    80002214:	03613823          	sd	s6,48(sp)
    80002218:	07010413          	addi	s0,sp,112
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    8000221c:	142027f3          	csrr	a5,scause
    80002220:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    80002224:	f9843703          	ld	a4,-104(s0)

    uint64 scause = Riscv::r_scause();
    switch(scause) {
    80002228:	00900793          	li	a5,9
    8000222c:	0af70263          	beq	a4,a5,800022d0 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
    80002230:	fff00793          	li	a5,-1
    80002234:	03f79793          	slli	a5,a5,0x3f
    80002238:	00878793          	addi	a5,a5,8
    8000223c:	02f71a63          	bne	a4,a5,80002270 <_ZN5Riscv20handleSupervisorTrapEv+0x7c>

        case timerInterrupt:

            PCB::timeSliceCounter++;
    80002240:	00004717          	auipc	a4,0x4
    80002244:	b9073703          	ld	a4,-1136(a4) # 80005dd0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002248:	00073783          	ld	a5,0(a4)
    8000224c:	00178793          	addi	a5,a5,1
    80002250:	00f73023          	sd	a5,0(a4)
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice()) {
    80002254:	00004717          	auipc	a4,0x4
    80002258:	b8c73703          	ld	a4,-1140(a4) # 80005de0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000225c:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() { return timeSlice;}
    80002260:	00073703          	ld	a4,0(a4)
    80002264:	02e7fa63          	bgeu	a5,a4,80002298 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80002268:	00200793          	li	a5,2
    8000226c:	1447b073          	csrc	sip,a5

            break;
    }

    //console_handler();
}
    80002270:	06813083          	ld	ra,104(sp)
    80002274:	06013403          	ld	s0,96(sp)
    80002278:	05813483          	ld	s1,88(sp)
    8000227c:	05013903          	ld	s2,80(sp)
    80002280:	04813983          	ld	s3,72(sp)
    80002284:	04013a03          	ld	s4,64(sp)
    80002288:	03813a83          	ld	s5,56(sp)
    8000228c:	03013b03          	ld	s6,48(sp)
    80002290:	07010113          	addi	sp,sp,112
    80002294:	00008067          	ret
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002298:	141027f3          	csrr	a5,sepc
    8000229c:	faf43423          	sd	a5,-88(s0)
    return sepc;
    800022a0:	fa843483          	ld	s1,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800022a4:	100027f3          	csrr	a5,sstatus
    800022a8:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    800022ac:	fa043903          	ld	s2,-96(s0)
                PCB::timeSliceCounter = 0;
    800022b0:	00004797          	auipc	a5,0x4
    800022b4:	b207b783          	ld	a5,-1248(a5) # 80005dd0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800022b8:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    800022bc:	fffff097          	auipc	ra,0xfffff
    800022c0:	17c080e7          	jalr	380(ra) # 80001438 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800022c4:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800022c8:	14149073          	csrw	sepc,s1
}
    800022cc:	f9dff06f          	j	80002268 <_ZN5Riscv20handleSupervisorTrapEv+0x74>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    800022d0:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800022d4:	14102773          	csrr	a4,sepc
    800022d8:	fae43823          	sd	a4,-80(s0)
    return sepc;
    800022dc:	fb043483          	ld	s1,-80(s0)
            sepc+=4;
    800022e0:	00448493          	addi	s1,s1,4
            if(operation == MemoryAllocator::MEM_ALLOC) {
    800022e4:	00100713          	li	a4,1
    800022e8:	02e78263          	beq	a5,a4,8000230c <_ZN5Riscv20handleSupervisorTrapEv+0x118>
            else if(operation == MemoryAllocator::MEM_FREE) {
    800022ec:	00200713          	li	a4,2
    800022f0:	02e78a63          	beq	a5,a4,80002324 <_ZN5Riscv20handleSupervisorTrapEv+0x130>
            else if(operation == PCB::THREAD_CREATE)
    800022f4:	01100713          	li	a4,17
    800022f8:	04e78063          	beq	a5,a4,80002338 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
            else if(operation == PCB::THREAD_DISPATCH)
    800022fc:	01300713          	li	a4,19
    80002300:	08e78263          	beq	a5,a4,80002384 <_ZN5Riscv20handleSupervisorTrapEv+0x190>
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002304:	14149073          	csrw	sepc,s1
}
    80002308:	f69ff06f          	j	80002270 <_ZN5Riscv20handleSupervisorTrapEv+0x7c>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    8000230c:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    80002310:	00651513          	slli	a0,a0,0x6
    80002314:	00000097          	auipc	ra,0x0
    80002318:	480080e7          	jalr	1152(ra) # 80002794 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    8000231c:	00050513          	mv	a0,a0
    80002320:	fe5ff06f          	j	80002304 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    80002324:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    80002328:	00000097          	auipc	ra,0x0
    8000232c:	494080e7          	jalr	1172(ra) # 800027bc <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80002330:	00050513          	mv	a0,a0
    80002334:	fd1ff06f          	j	80002304 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002338:	00058993          	mv	s3,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    8000233c:	00060a13          	mv	s4,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    80002340:	00068a93          	mv	s5,a3
                __asm__ volatile("mv %0, a4" : "=r"(stack_space));
    80002344:	00070b13          	mv	s6,a4
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)stack_space);
    80002348:	04000513          	li	a0,64
    8000234c:	fffff097          	auipc	ra,0xfffff
    80002350:	174080e7          	jalr	372(ra) # 800014c0 <_ZN3PCBnwEm>
    80002354:	00050913          	mv	s2,a0
    80002358:	000b0693          	mv	a3,s6
    8000235c:	000a8613          	mv	a2,s5
    80002360:	000a0593          	mv	a1,s4
    80002364:	fffff097          	auipc	ra,0xfffff
    80002368:	044080e7          	jalr	68(ra) # 800013a8 <_ZN3PCBC1EPFvPvES0_S0_>
                (*threadHandle) = newPCB;
    8000236c:	0129b023          	sd	s2,0(s3)
                if(newPCB == 0)
    80002370:	00090663          	beqz	s2,8000237c <_ZN5Riscv20handleSupervisorTrapEv+0x188>
                    __asm__ volatile("li a0, 0");
    80002374:	00000513          	li	a0,0
    80002378:	f8dff06f          	j	80002304 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    8000237c:	fff00513          	li	a0,-1
    80002380:	f85ff06f          	j	80002304 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002384:	100027f3          	csrr	a5,sstatus
    80002388:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    8000238c:	fb843903          	ld	s2,-72(s0)
                PCB::timeSliceCounter = 0;
    80002390:	00004797          	auipc	a5,0x4
    80002394:	a407b783          	ld	a5,-1472(a5) # 80005dd0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002398:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    8000239c:	fffff097          	auipc	ra,0xfffff
    800023a0:	09c080e7          	jalr	156(ra) # 80001438 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800023a4:	10091073          	csrw	sstatus,s2
}
    800023a8:	f5dff06f          	j	80002304 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
    800023ac:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)stack_space);
    800023b0:	00090513          	mv	a0,s2
    800023b4:	fffff097          	auipc	ra,0xfffff
    800023b8:	134080e7          	jalr	308(ra) # 800014e8 <_ZN3PCBdlEPv>
    800023bc:	00048513          	mv	a0,s1
    800023c0:	00005097          	auipc	ra,0x5
    800023c4:	b68080e7          	jalr	-1176(ra) # 80006f28 <_Unwind_Resume>

00000000800023c8 <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    800023c8:	ff010113          	addi	sp,sp,-16
    800023cc:	00813423          	sd	s0,8(sp)
    800023d0:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    800023d4:	00004717          	auipc	a4,0x4
    800023d8:	a7472703          	lw	a4,-1420(a4) # 80005e48 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800023dc:	00100793          	li	a5,1
    800023e0:	04f70263          	beq	a4,a5,80002424 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    800023e4:	00004797          	auipc	a5,0x4
    800023e8:	a6478793          	addi	a5,a5,-1436 # 80005e48 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800023ec:	00100713          	li	a4,1
    800023f0:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800023f4:	0007b423          	sd	zero,8(a5)
    headFree = (FreeFragment*)HEAP_START_ADDR;
    800023f8:	00004717          	auipc	a4,0x4
    800023fc:	9c873703          	ld	a4,-1592(a4) # 80005dc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002400:	00073703          	ld	a4,0(a4)
    80002404:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80002408:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1);
    8000240c:	00004797          	auipc	a5,0x4
    80002410:	9dc7b783          	ld	a5,-1572(a5) # 80005de8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002414:	0007b783          	ld	a5,0(a5)
    80002418:	40e787b3          	sub	a5,a5,a4
    8000241c:	00178793          	addi	a5,a5,1
    80002420:	00f73023          	sd	a5,0(a4)
}
    80002424:	00813403          	ld	s0,8(sp)
    80002428:	01010113          	addi	sp,sp,16
    8000242c:	00008067          	ret

0000000080002430 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void* addr, size_t size) {
    80002430:	fe010113          	addi	sp,sp,-32
    80002434:	00113c23          	sd	ra,24(sp)
    80002438:	00813823          	sd	s0,16(sp)
    8000243c:	00913423          	sd	s1,8(sp)
    80002440:	01213023          	sd	s2,0(sp)
    80002444:	02010413          	addi	s0,sp,32
    80002448:	00050493          	mv	s1,a0
    8000244c:	00058913          	mv	s2,a1

    initMemory();
    80002450:	00000097          	auipc	ra,0x0
    80002454:	f78080e7          	jalr	-136(ra) # 800023c8 <_ZN15MemoryAllocator10initMemoryEv>
    AllocatedFragment* prev = 0;
    AllocatedFragment* after =  headAllocated;
    80002458:	00004797          	auipc	a5,0x4
    8000245c:	9f87b783          	ld	a5,-1544(a5) # 80005e50 <_ZN15MemoryAllocator13headAllocatedE>
    AllocatedFragment* prev = 0;
    80002460:	00000713          	li	a4,0
    while(after != 0) {
    80002464:	00078a63          	beqz	a5,80002478 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x48>
        if((void*)after > addr)
    80002468:	00f4e863          	bltu	s1,a5,80002478 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x48>
            break;

        prev = after;
    8000246c:	00078713          	mv	a4,a5
        after = after->next;
    80002470:	0087b783          	ld	a5,8(a5)
    while(after != 0) {
    80002474:	ff1ff06f          	j	80002464 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x34>
    }

    AllocatedFragment* newAllocated = (AllocatedFragment*)addr;
    newAllocated->next = 0;
    80002478:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    8000247c:	0124b023          	sd	s2,0(s1)
    if(after == 0) {
    80002480:	02078463          	beqz	a5,800024a8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x78>
            headAllocated = newAllocated;
        else
            prev->next = newAllocated;
    }
    else {
        if(prev == 0) {
    80002484:	02070e63          	beqz	a4,800024c0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x90>
            newAllocated->next = headAllocated;
            headAllocated = newAllocated;
        }
        else {
            newAllocated->next = after;
    80002488:	00f4b423          	sd	a5,8(s1)
            prev->next = newAllocated;
    8000248c:	00973423          	sd	s1,8(a4)
        }
    }
}
    80002490:	01813083          	ld	ra,24(sp)
    80002494:	01013403          	ld	s0,16(sp)
    80002498:	00813483          	ld	s1,8(sp)
    8000249c:	00013903          	ld	s2,0(sp)
    800024a0:	02010113          	addi	sp,sp,32
    800024a4:	00008067          	ret
        if(prev == 0)
    800024a8:	00070663          	beqz	a4,800024b4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x84>
            prev->next = newAllocated;
    800024ac:	00973423          	sd	s1,8(a4)
    800024b0:	fe1ff06f          	j	80002490 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>
            headAllocated = newAllocated;
    800024b4:	00004797          	auipc	a5,0x4
    800024b8:	9897be23          	sd	s1,-1636(a5) # 80005e50 <_ZN15MemoryAllocator13headAllocatedE>
    800024bc:	fd5ff06f          	j	80002490 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>
            newAllocated->next = headAllocated;
    800024c0:	00004797          	auipc	a5,0x4
    800024c4:	98878793          	addi	a5,a5,-1656 # 80005e48 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800024c8:	0087b703          	ld	a4,8(a5)
    800024cc:	00e4b423          	sd	a4,8(s1)
            headAllocated = newAllocated;
    800024d0:	0097b423          	sd	s1,8(a5)
    800024d4:	fbdff06f          	j	80002490 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x60>

00000000800024d8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    800024d8:	fe010113          	addi	sp,sp,-32
    800024dc:	00113c23          	sd	ra,24(sp)
    800024e0:	00813823          	sd	s0,16(sp)
    800024e4:	00913423          	sd	s1,8(sp)
    800024e8:	01213023          	sd	s2,0(sp)
    800024ec:	02010413          	addi	s0,sp,32
    800024f0:	00050913          	mv	s2,a0
    initMemory();
    800024f4:	00000097          	auipc	ra,0x0
    800024f8:	ed4080e7          	jalr	-300(ra) # 800023c8 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    800024fc:	00004497          	auipc	s1,0x4
    80002500:	95c4b483          	ld	s1,-1700(s1) # 80005e58 <_ZN15MemoryAllocator8headFreeE>
    uint64 newSize = size + sizeof(AllocatedFragment);
    80002504:	01090693          	addi	a3,s2,16
    FreeFragment* prev = 0;
    80002508:	00000713          	li	a4,0
    8000250c:	0700006f          	j	8000257c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
            void* newAddr = ((char*)curr + newSize);
            if(newAddr <= HEAP_END_ADDR) {

                FreeFragment *newFree = (FreeFragment *) newAddr;

                if (prev != 0)
    80002510:	04070263          	beqz	a4,80002554 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x7c>
                    prev->next = newFree;
    80002514:	00f73423          	sd	a5,8(a4)
                else
                    headFree = newFree;

                newFree->next = curr->next;
    80002518:	0084b603          	ld	a2,8(s1)
    8000251c:	00c7b423          	sd	a2,8(a5)
                newFree->size = curr->size - newSize;
    80002520:	0004b603          	ld	a2,0(s1)
    80002524:	40d606b3          	sub	a3,a2,a3
    80002528:	00d7b023          	sd	a3,0(a5)

                if(newFree->size == 0)
    8000252c:	00069863          	bnez	a3,8000253c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x64>
                {
                    if(prev != 0)
    80002530:	02070863          	beqz	a4,80002560 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = curr->next;
    80002534:	0084b783          	ld	a5,8(s1)
    80002538:	00f73423          	sd	a5,8(a4)
                    else
                        headFree = 0;
                }

                insertNewAllocatedFragment(oldAddr, size);
    8000253c:	00090593          	mv	a1,s2
    80002540:	00048513          	mv	a0,s1
    80002544:	00000097          	auipc	ra,0x0
    80002548:	eec080e7          	jalr	-276(ra) # 80002430 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>

                uint64 oldA = (uint64)((char*)oldAddr) + sizeof(AllocatedFragment);
    8000254c:	01048513          	addi	a0,s1,16

                retval = oldA;
                break;
    80002550:	05c0006f          	j	800025ac <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    headFree = newFree;
    80002554:	00004617          	auipc	a2,0x4
    80002558:	90f63223          	sd	a5,-1788(a2) # 80005e58 <_ZN15MemoryAllocator8headFreeE>
    8000255c:	fbdff06f          	j	80002518 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x40>
                        headFree = 0;
    80002560:	00004797          	auipc	a5,0x4
    80002564:	8e07bc23          	sd	zero,-1800(a5) # 80005e58 <_ZN15MemoryAllocator8headFreeE>
    80002568:	fd5ff06f          	j	8000253c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x64>
                {
                    prev->next = 0;
                }
                else
                {
                    headFree = 0;
    8000256c:	00004797          	auipc	a5,0x4
    80002570:	8e07b623          	sd	zero,-1812(a5) # 80005e58 <_ZN15MemoryAllocator8headFreeE>
                }
            }
        }
        prev = curr;
    80002574:	00048713          	mv	a4,s1
        curr = curr->next;
    80002578:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    8000257c:	02048663          	beqz	s1,800025a8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd0>
        if(curr->size >= newSize) {
    80002580:	0004b783          	ld	a5,0(s1)
    80002584:	fed7e8e3          	bltu	a5,a3,80002574 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
            void* newAddr = ((char*)curr + newSize);
    80002588:	00d487b3          	add	a5,s1,a3
            if(newAddr <= HEAP_END_ADDR) {
    8000258c:	00004617          	auipc	a2,0x4
    80002590:	85c63603          	ld	a2,-1956(a2) # 80005de8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002594:	00063603          	ld	a2,0(a2)
    80002598:	f6f67ce3          	bgeu	a2,a5,80002510 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x38>
                if(prev != 0)
    8000259c:	fc0708e3          	beqz	a4,8000256c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    prev->next = 0;
    800025a0:	00073423          	sd	zero,8(a4)
    800025a4:	fd1ff06f          	j	80002574 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
    uint64 retval = 0;
    800025a8:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    800025ac:	01813083          	ld	ra,24(sp)
    800025b0:	01013403          	ld	s0,16(sp)
    800025b4:	00813483          	ld	s1,8(sp)
    800025b8:	00013903          	ld	s2,0(sp)
    800025bc:	02010113          	addi	sp,sp,32
    800025c0:	00008067          	ret

00000000800025c4 <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    800025c4:	ff010113          	addi	sp,sp,-16
    800025c8:	00113423          	sd	ra,8(sp)
    800025cc:	00813023          	sd	s0,0(sp)
    800025d0:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    800025d4:	00000097          	auipc	ra,0x0
    800025d8:	f04080e7          	jalr	-252(ra) # 800024d8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    800025dc:	00813083          	ld	ra,8(sp)
    800025e0:	00013403          	ld	s0,0(sp)
    800025e4:	01010113          	addi	sp,sp,16
    800025e8:	00008067          	ret

00000000800025ec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800025ec:	fe010113          	addi	sp,sp,-32
    800025f0:	00113c23          	sd	ra,24(sp)
    800025f4:	00813823          	sd	s0,16(sp)
    800025f8:	00913423          	sd	s1,8(sp)
    800025fc:	01213023          	sd	s2,0(sp)
    80002600:	02010413          	addi	s0,sp,32
    80002604:	00050493          	mv	s1,a0
    80002608:	00058913          	mv	s2,a1
    initMemory();
    8000260c:	00000097          	auipc	ra,0x0
    80002610:	dbc080e7          	jalr	-580(ra) # 800023c8 <_ZN15MemoryAllocator10initMemoryEv>
    FreeFragment* prev = 0;
    FreeFragment* curr = headFree;
    80002614:	00004797          	auipc	a5,0x4
    80002618:	8447b783          	ld	a5,-1980(a5) # 80005e58 <_ZN15MemoryAllocator8headFreeE>
    FreeFragment* newSegment = (FreeFragment*) addr;
    newSegment->size = size;
    8000261c:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80002620:	0004b423          	sd	zero,8(s1)
    FreeFragment* prev = 0;
    80002624:	00000713          	li	a4,0
    while(curr != 0)
    80002628:	00078c63          	beqz	a5,80002640 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    8000262c:	00f4e863          	bltu	s1,a5,8000263c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80002630:	00078713          	mv	a4,a5
        curr = curr->next;
    80002634:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002638:	ff1ff06f          	j	80002628 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    8000263c:	00f4b423          	sd	a5,8(s1)
    }



    if(prev == 0)
    80002640:	04070263          	beqz	a4,80002684 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x98>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80002644:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size)
    80002648:	0084b783          	ld	a5,8(s1)
    8000264c:	00078863          	beqz	a5,8000265c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x70>
    80002650:	0004b683          	ld	a3,0(s1)
    80002654:	00d48633          	add	a2,s1,a3
    80002658:	02c78c63          	beq	a5,a2,80002690 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa4>
    {
        newSegment->size += newSegment->next->size;
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size)
    8000265c:	00070863          	beqz	a4,8000266c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x80>
    80002660:	00073783          	ld	a5,0(a4)
    80002664:	00f706b3          	add	a3,a4,a5
    80002668:	04968063          	beq	a3,s1,800026a8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xbc>
    {
        prev->size+=newSegment->size;
        prev->next = newSegment->next;
    }

}
    8000266c:	01813083          	ld	ra,24(sp)
    80002670:	01013403          	ld	s0,16(sp)
    80002674:	00813483          	ld	s1,8(sp)
    80002678:	00013903          	ld	s2,0(sp)
    8000267c:	02010113          	addi	sp,sp,32
    80002680:	00008067          	ret
        headFree = newSegment;
    80002684:	00003797          	auipc	a5,0x3
    80002688:	7c97ba23          	sd	s1,2004(a5) # 80005e58 <_ZN15MemoryAllocator8headFreeE>
    8000268c:	fbdff06f          	j	80002648 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size;
    80002690:	0007b603          	ld	a2,0(a5)
    80002694:	00c686b3          	add	a3,a3,a2
    80002698:	00d4b023          	sd	a3,0(s1)
        newSegment->next = newSegment->next->next;
    8000269c:	0087b783          	ld	a5,8(a5)
    800026a0:	00f4b423          	sd	a5,8(s1)
    800026a4:	fb9ff06f          	j	8000265c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x70>
        prev->size+=newSegment->size;
    800026a8:	0004b683          	ld	a3,0(s1)
    800026ac:	00d787b3          	add	a5,a5,a3
    800026b0:	00f73023          	sd	a5,0(a4)
        prev->next = newSegment->next;
    800026b4:	0084b783          	ld	a5,8(s1)
    800026b8:	00f73423          	sd	a5,8(a4)
}
    800026bc:	fb1ff06f          	j	8000266c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x80>

00000000800026c0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    800026c0:	fe010113          	addi	sp,sp,-32
    800026c4:	00113c23          	sd	ra,24(sp)
    800026c8:	00813823          	sd	s0,16(sp)
    800026cc:	00913423          	sd	s1,8(sp)
    800026d0:	01213023          	sd	s2,0(sp)
    800026d4:	02010413          	addi	s0,sp,32
    800026d8:	00050913          	mv	s2,a0
    initMemory();
    800026dc:	00000097          	auipc	ra,0x0
    800026e0:	cec080e7          	jalr	-788(ra) # 800023c8 <_ZN15MemoryAllocator10initMemoryEv>
    AllocatedFragment* prev = 0;
    AllocatedFragment* curr = headAllocated;
    800026e4:	00003497          	auipc	s1,0x3
    800026e8:	76c4b483          	ld	s1,1900(s1) # 80005e50 <_ZN15MemoryAllocator13headAllocatedE>
    int found = 0;
    800026ec:	00000693          	li	a3,0
    AllocatedFragment* prev = 0;
    800026f0:	00000713          	li	a4,0
    800026f4:	0300006f          	j	80002724 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
        {
            if(prev != 0) {
                prev->next = curr->next;
            }
            else {
                headAllocated = curr->next;
    800026f8:	0084b783          	ld	a5,8(s1)
    800026fc:	00003717          	auipc	a4,0x3
    80002700:	74f73a23          	sd	a5,1876(a4) # 80005e50 <_ZN15MemoryAllocator13headAllocatedE>
            }

            insertNewFreeSegment((void*)curr, curr->size + sizeof(AllocatedFragment));
    80002704:	0004b583          	ld	a1,0(s1)
    80002708:	01058593          	addi	a1,a1,16
    8000270c:	00048513          	mv	a0,s1
    80002710:	00000097          	auipc	ra,0x0
    80002714:	edc080e7          	jalr	-292(ra) # 800025ec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>

            found = 1;
    80002718:	00100693          	li	a3,1
        }

        prev = curr;
    8000271c:	00048713          	mv	a4,s1
        curr = curr->next;
    80002720:	0084b483          	ld	s1,8(s1)
    while(curr != 0 && !found)
    80002724:	02048063          	beqz	s1,80002744 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
    80002728:	00069e63          	bnez	a3,80002744 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
        if(addr == (void*)((char*)curr + sizeof(AllocatedFragment)))
    8000272c:	01048793          	addi	a5,s1,16
    80002730:	ff2796e3          	bne	a5,s2,8000271c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x5c>
            if(prev != 0) {
    80002734:	fc0702e3          	beqz	a4,800026f8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x38>
                prev->next = curr->next;
    80002738:	0084b783          	ld	a5,8(s1)
    8000273c:	00f73423          	sd	a5,8(a4)
    80002740:	fc5ff06f          	j	80002704 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
    }

    if(found)
    80002744:	02068063          	beqz	a3,80002764 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0xa4>
        return 0;
    80002748:	00000513          	li	a0,0
    else
        return 1;
}
    8000274c:	01813083          	ld	ra,24(sp)
    80002750:	01013403          	ld	s0,16(sp)
    80002754:	00813483          	ld	s1,8(sp)
    80002758:	00013903          	ld	s2,0(sp)
    8000275c:	02010113          	addi	sp,sp,32
    80002760:	00008067          	ret
        return 1;
    80002764:	00100513          	li	a0,1
    80002768:	fe5ff06f          	j	8000274c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>

000000008000276c <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    8000276c:	ff010113          	addi	sp,sp,-16
    80002770:	00113423          	sd	ra,8(sp)
    80002774:	00813023          	sd	s0,0(sp)
    80002778:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    8000277c:	00000097          	auipc	ra,0x0
    80002780:	f44080e7          	jalr	-188(ra) # 800026c0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80002784:	00813083          	ld	ra,8(sp)
    80002788:	00013403          	ld	s0,0(sp)
    8000278c:	01010113          	addi	sp,sp,16
    80002790:	00008067          	ret

0000000080002794 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    80002794:	ff010113          	addi	sp,sp,-16
    80002798:	00113423          	sd	ra,8(sp)
    8000279c:	00813023          	sd	s0,0(sp)
    800027a0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	e20080e7          	jalr	-480(ra) # 800025c4 <_ZN15MemoryAllocator9mem_allocEm>
}
    800027ac:	00813083          	ld	ra,8(sp)
    800027b0:	00013403          	ld	s0,0(sp)
    800027b4:	01010113          	addi	sp,sp,16
    800027b8:	00008067          	ret

00000000800027bc <_Z5kfreePv>:

uint64 kfree(void* p)
{
    800027bc:	ff010113          	addi	sp,sp,-16
    800027c0:	00113423          	sd	ra,8(sp)
    800027c4:	00813023          	sd	s0,0(sp)
    800027c8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    800027cc:	00000097          	auipc	ra,0x0
    800027d0:	fa0080e7          	jalr	-96(ra) # 8000276c <_ZN15MemoryAllocator8mem_freeEPv>
    800027d4:	00813083          	ld	ra,8(sp)
    800027d8:	00013403          	ld	s0,0(sp)
    800027dc:	01010113          	addi	sp,sp,16
    800027e0:	00008067          	ret

00000000800027e4 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.h"
#include "../h/MemoryAllocator.h"

KSemaphore::KSemaphore(int val) {
    800027e4:	fe010113          	addi	sp,sp,-32
    800027e8:	00113c23          	sd	ra,24(sp)
    800027ec:	00813823          	sd	s0,16(sp)
    800027f0:	00913423          	sd	s1,8(sp)
    800027f4:	02010413          	addi	s0,sp,32
    800027f8:	00050493          	mv	s1,a0
    this->val = val;
    800027fc:	00b52023          	sw	a1,0(a0)
    queueBlocked = (Queue<PCB*>*)kmalloc(sizeof(Queue<PCB*>));
    80002800:	01000513          	li	a0,16
    80002804:	00000097          	auipc	ra,0x0
    80002808:	f90080e7          	jalr	-112(ra) # 80002794 <_Z7kmallocm>
    8000280c:	00a4b423          	sd	a0,8(s1)
}
    80002810:	01813083          	ld	ra,24(sp)
    80002814:	01013403          	ld	s0,16(sp)
    80002818:	00813483          	ld	s1,8(sp)
    8000281c:	02010113          	addi	sp,sp,32
    80002820:	00008067          	ret

0000000080002824 <_ZN10KSemaphore4waitEv>:

void KSemaphore::wait() {
    80002824:	ff010113          	addi	sp,sp,-16
    80002828:	00813423          	sd	s0,8(sp)
    8000282c:	01010413          	addi	s0,sp,16
    //todo
}
    80002830:	00813403          	ld	s0,8(sp)
    80002834:	01010113          	addi	sp,sp,16
    80002838:	00008067          	ret

000000008000283c <_ZN10KSemaphore6signalEv>:

void KSemaphore::signal() {
    8000283c:	ff010113          	addi	sp,sp,-16
    80002840:	00813423          	sd	s0,8(sp)
    80002844:	01010413          	addi	s0,sp,16
    //todo
}
    80002848:	00813403          	ld	s0,8(sp)
    8000284c:	01010113          	addi	sp,sp,16
    80002850:	00008067          	ret

0000000080002854 <_ZN10KSemaphoreD1Ev>:

KSemaphore::~KSemaphore() {
    80002854:	ff010113          	addi	sp,sp,-16
    80002858:	00813423          	sd	s0,8(sp)
    8000285c:	01010413          	addi	s0,sp,16
    //todo
}
    80002860:	00813403          	ld	s0,8(sp)
    80002864:	01010113          	addi	sp,sp,16
    80002868:	00008067          	ret

000000008000286c <start>:
    8000286c:	ff010113          	addi	sp,sp,-16
    80002870:	00813423          	sd	s0,8(sp)
    80002874:	01010413          	addi	s0,sp,16
    80002878:	300027f3          	csrr	a5,mstatus
    8000287c:	ffffe737          	lui	a4,0xffffe
    80002880:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff773f>
    80002884:	00e7f7b3          	and	a5,a5,a4
    80002888:	00001737          	lui	a4,0x1
    8000288c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002890:	00e7e7b3          	or	a5,a5,a4
    80002894:	30079073          	csrw	mstatus,a5
    80002898:	00000797          	auipc	a5,0x0
    8000289c:	16078793          	addi	a5,a5,352 # 800029f8 <system_main>
    800028a0:	34179073          	csrw	mepc,a5
    800028a4:	00000793          	li	a5,0
    800028a8:	18079073          	csrw	satp,a5
    800028ac:	000107b7          	lui	a5,0x10
    800028b0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800028b4:	30279073          	csrw	medeleg,a5
    800028b8:	30379073          	csrw	mideleg,a5
    800028bc:	104027f3          	csrr	a5,sie
    800028c0:	2227e793          	ori	a5,a5,546
    800028c4:	10479073          	csrw	sie,a5
    800028c8:	fff00793          	li	a5,-1
    800028cc:	00a7d793          	srli	a5,a5,0xa
    800028d0:	3b079073          	csrw	pmpaddr0,a5
    800028d4:	00f00793          	li	a5,15
    800028d8:	3a079073          	csrw	pmpcfg0,a5
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
    80002914:	55070713          	addi	a4,a4,1360 # 80005e60 <timer_scratch>
    80002918:	00b7b023          	sd	a1,0(a5)
    8000291c:	00d70733          	add	a4,a4,a3
    80002920:	00f73c23          	sd	a5,24(a4)
    80002924:	02c73023          	sd	a2,32(a4)
    80002928:	34071073          	csrw	mscratch,a4
    8000292c:	00000797          	auipc	a5,0x0
    80002930:	6e478793          	addi	a5,a5,1764 # 80003010 <timervec>
    80002934:	30579073          	csrw	mtvec,a5
    80002938:	300027f3          	csrr	a5,mstatus
    8000293c:	0087e793          	ori	a5,a5,8
    80002940:	30079073          	csrw	mstatus,a5
    80002944:	304027f3          	csrr	a5,mie
    80002948:	0807e793          	ori	a5,a5,128
    8000294c:	30479073          	csrw	mie,a5
    80002950:	f14027f3          	csrr	a5,mhartid
    80002954:	0007879b          	sext.w	a5,a5
    80002958:	00078213          	mv	tp,a5
    8000295c:	30200073          	mret
    80002960:	00813403          	ld	s0,8(sp)
    80002964:	01010113          	addi	sp,sp,16
    80002968:	00008067          	ret

000000008000296c <timerinit>:
    8000296c:	ff010113          	addi	sp,sp,-16
    80002970:	00813423          	sd	s0,8(sp)
    80002974:	01010413          	addi	s0,sp,16
    80002978:	f14027f3          	csrr	a5,mhartid
    8000297c:	0200c737          	lui	a4,0x200c
    80002980:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002984:	0007869b          	sext.w	a3,a5
    80002988:	00269713          	slli	a4,a3,0x2
    8000298c:	000f4637          	lui	a2,0xf4
    80002990:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002994:	00d70733          	add	a4,a4,a3
    80002998:	0037979b          	slliw	a5,a5,0x3
    8000299c:	020046b7          	lui	a3,0x2004
    800029a0:	00d787b3          	add	a5,a5,a3
    800029a4:	00c585b3          	add	a1,a1,a2
    800029a8:	00371693          	slli	a3,a4,0x3
    800029ac:	00003717          	auipc	a4,0x3
    800029b0:	4b470713          	addi	a4,a4,1204 # 80005e60 <timer_scratch>
    800029b4:	00b7b023          	sd	a1,0(a5)
    800029b8:	00d70733          	add	a4,a4,a3
    800029bc:	00f73c23          	sd	a5,24(a4)
    800029c0:	02c73023          	sd	a2,32(a4)
    800029c4:	34071073          	csrw	mscratch,a4
    800029c8:	00000797          	auipc	a5,0x0
    800029cc:	64878793          	addi	a5,a5,1608 # 80003010 <timervec>
    800029d0:	30579073          	csrw	mtvec,a5
    800029d4:	300027f3          	csrr	a5,mstatus
    800029d8:	0087e793          	ori	a5,a5,8
    800029dc:	30079073          	csrw	mstatus,a5
    800029e0:	304027f3          	csrr	a5,mie
    800029e4:	0807e793          	ori	a5,a5,128
    800029e8:	30479073          	csrw	mie,a5
    800029ec:	00813403          	ld	s0,8(sp)
    800029f0:	01010113          	addi	sp,sp,16
    800029f4:	00008067          	ret

00000000800029f8 <system_main>:
    800029f8:	fe010113          	addi	sp,sp,-32
    800029fc:	00813823          	sd	s0,16(sp)
    80002a00:	00913423          	sd	s1,8(sp)
    80002a04:	00113c23          	sd	ra,24(sp)
    80002a08:	02010413          	addi	s0,sp,32
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	0c4080e7          	jalr	196(ra) # 80002ad0 <cpuid>
    80002a14:	00003497          	auipc	s1,0x3
    80002a18:	3ec48493          	addi	s1,s1,1004 # 80005e00 <started>
    80002a1c:	02050263          	beqz	a0,80002a40 <system_main+0x48>
    80002a20:	0004a783          	lw	a5,0(s1)
    80002a24:	0007879b          	sext.w	a5,a5
    80002a28:	fe078ce3          	beqz	a5,80002a20 <system_main+0x28>
    80002a2c:	0ff0000f          	fence
    80002a30:	00002517          	auipc	a0,0x2
    80002a34:	71850513          	addi	a0,a0,1816 # 80005148 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80002a38:	00001097          	auipc	ra,0x1
    80002a3c:	a74080e7          	jalr	-1420(ra) # 800034ac <panic>
    80002a40:	00001097          	auipc	ra,0x1
    80002a44:	9c8080e7          	jalr	-1592(ra) # 80003408 <consoleinit>
    80002a48:	00001097          	auipc	ra,0x1
    80002a4c:	154080e7          	jalr	340(ra) # 80003b9c <printfinit>
    80002a50:	00002517          	auipc	a0,0x2
    80002a54:	7d850513          	addi	a0,a0,2008 # 80005228 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80002a58:	00001097          	auipc	ra,0x1
    80002a5c:	ab0080e7          	jalr	-1360(ra) # 80003508 <__printf>
    80002a60:	00002517          	auipc	a0,0x2
    80002a64:	6b850513          	addi	a0,a0,1720 # 80005118 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80002a68:	00001097          	auipc	ra,0x1
    80002a6c:	aa0080e7          	jalr	-1376(ra) # 80003508 <__printf>
    80002a70:	00002517          	auipc	a0,0x2
    80002a74:	7b850513          	addi	a0,a0,1976 # 80005228 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80002a78:	00001097          	auipc	ra,0x1
    80002a7c:	a90080e7          	jalr	-1392(ra) # 80003508 <__printf>
    80002a80:	00001097          	auipc	ra,0x1
    80002a84:	4a8080e7          	jalr	1192(ra) # 80003f28 <kinit>
    80002a88:	00000097          	auipc	ra,0x0
    80002a8c:	148080e7          	jalr	328(ra) # 80002bd0 <trapinit>
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	16c080e7          	jalr	364(ra) # 80002bfc <trapinithart>
    80002a98:	00000097          	auipc	ra,0x0
    80002a9c:	5b8080e7          	jalr	1464(ra) # 80003050 <plicinit>
    80002aa0:	00000097          	auipc	ra,0x0
    80002aa4:	5d8080e7          	jalr	1496(ra) # 80003078 <plicinithart>
    80002aa8:	00000097          	auipc	ra,0x0
    80002aac:	078080e7          	jalr	120(ra) # 80002b20 <userinit>
    80002ab0:	0ff0000f          	fence
    80002ab4:	00100793          	li	a5,1
    80002ab8:	00002517          	auipc	a0,0x2
    80002abc:	67850513          	addi	a0,a0,1656 # 80005130 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    80002ac0:	00f4a023          	sw	a5,0(s1)
    80002ac4:	00001097          	auipc	ra,0x1
    80002ac8:	a44080e7          	jalr	-1468(ra) # 80003508 <__printf>
    80002acc:	0000006f          	j	80002acc <system_main+0xd4>

0000000080002ad0 <cpuid>:
    80002ad0:	ff010113          	addi	sp,sp,-16
    80002ad4:	00813423          	sd	s0,8(sp)
    80002ad8:	01010413          	addi	s0,sp,16
    80002adc:	00020513          	mv	a0,tp
    80002ae0:	00813403          	ld	s0,8(sp)
    80002ae4:	0005051b          	sext.w	a0,a0
    80002ae8:	01010113          	addi	sp,sp,16
    80002aec:	00008067          	ret

0000000080002af0 <mycpu>:
    80002af0:	ff010113          	addi	sp,sp,-16
    80002af4:	00813423          	sd	s0,8(sp)
    80002af8:	01010413          	addi	s0,sp,16
    80002afc:	00020793          	mv	a5,tp
    80002b00:	00813403          	ld	s0,8(sp)
    80002b04:	0007879b          	sext.w	a5,a5
    80002b08:	00779793          	slli	a5,a5,0x7
    80002b0c:	00004517          	auipc	a0,0x4
    80002b10:	38450513          	addi	a0,a0,900 # 80006e90 <cpus>
    80002b14:	00f50533          	add	a0,a0,a5
    80002b18:	01010113          	addi	sp,sp,16
    80002b1c:	00008067          	ret

0000000080002b20 <userinit>:
    80002b20:	ff010113          	addi	sp,sp,-16
    80002b24:	00813423          	sd	s0,8(sp)
    80002b28:	01010413          	addi	s0,sp,16
    80002b2c:	00813403          	ld	s0,8(sp)
    80002b30:	01010113          	addi	sp,sp,16
    80002b34:	fffff317          	auipc	t1,0xfffff
    80002b38:	ec430067          	jr	-316(t1) # 800019f8 <main>

0000000080002b3c <either_copyout>:
    80002b3c:	ff010113          	addi	sp,sp,-16
    80002b40:	00813023          	sd	s0,0(sp)
    80002b44:	00113423          	sd	ra,8(sp)
    80002b48:	01010413          	addi	s0,sp,16
    80002b4c:	02051663          	bnez	a0,80002b78 <either_copyout+0x3c>
    80002b50:	00058513          	mv	a0,a1
    80002b54:	00060593          	mv	a1,a2
    80002b58:	0006861b          	sext.w	a2,a3
    80002b5c:	00002097          	auipc	ra,0x2
    80002b60:	c58080e7          	jalr	-936(ra) # 800047b4 <__memmove>
    80002b64:	00813083          	ld	ra,8(sp)
    80002b68:	00013403          	ld	s0,0(sp)
    80002b6c:	00000513          	li	a0,0
    80002b70:	01010113          	addi	sp,sp,16
    80002b74:	00008067          	ret
    80002b78:	00002517          	auipc	a0,0x2
    80002b7c:	5f850513          	addi	a0,a0,1528 # 80005170 <_ZZN5Riscv12printIntegerEmE6digits+0x68>
    80002b80:	00001097          	auipc	ra,0x1
    80002b84:	92c080e7          	jalr	-1748(ra) # 800034ac <panic>

0000000080002b88 <either_copyin>:
    80002b88:	ff010113          	addi	sp,sp,-16
    80002b8c:	00813023          	sd	s0,0(sp)
    80002b90:	00113423          	sd	ra,8(sp)
    80002b94:	01010413          	addi	s0,sp,16
    80002b98:	02059463          	bnez	a1,80002bc0 <either_copyin+0x38>
    80002b9c:	00060593          	mv	a1,a2
    80002ba0:	0006861b          	sext.w	a2,a3
    80002ba4:	00002097          	auipc	ra,0x2
    80002ba8:	c10080e7          	jalr	-1008(ra) # 800047b4 <__memmove>
    80002bac:	00813083          	ld	ra,8(sp)
    80002bb0:	00013403          	ld	s0,0(sp)
    80002bb4:	00000513          	li	a0,0
    80002bb8:	01010113          	addi	sp,sp,16
    80002bbc:	00008067          	ret
    80002bc0:	00002517          	auipc	a0,0x2
    80002bc4:	5d850513          	addi	a0,a0,1496 # 80005198 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80002bc8:	00001097          	auipc	ra,0x1
    80002bcc:	8e4080e7          	jalr	-1820(ra) # 800034ac <panic>

0000000080002bd0 <trapinit>:
    80002bd0:	ff010113          	addi	sp,sp,-16
    80002bd4:	00813423          	sd	s0,8(sp)
    80002bd8:	01010413          	addi	s0,sp,16
    80002bdc:	00813403          	ld	s0,8(sp)
    80002be0:	00002597          	auipc	a1,0x2
    80002be4:	5e058593          	addi	a1,a1,1504 # 800051c0 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80002be8:	00004517          	auipc	a0,0x4
    80002bec:	32850513          	addi	a0,a0,808 # 80006f10 <tickslock>
    80002bf0:	01010113          	addi	sp,sp,16
    80002bf4:	00001317          	auipc	t1,0x1
    80002bf8:	5c430067          	jr	1476(t1) # 800041b8 <initlock>

0000000080002bfc <trapinithart>:
    80002bfc:	ff010113          	addi	sp,sp,-16
    80002c00:	00813423          	sd	s0,8(sp)
    80002c04:	01010413          	addi	s0,sp,16
    80002c08:	00000797          	auipc	a5,0x0
    80002c0c:	2f878793          	addi	a5,a5,760 # 80002f00 <kernelvec>
    80002c10:	10579073          	csrw	stvec,a5
    80002c14:	00813403          	ld	s0,8(sp)
    80002c18:	01010113          	addi	sp,sp,16
    80002c1c:	00008067          	ret

0000000080002c20 <usertrap>:
    80002c20:	ff010113          	addi	sp,sp,-16
    80002c24:	00813423          	sd	s0,8(sp)
    80002c28:	01010413          	addi	s0,sp,16
    80002c2c:	00813403          	ld	s0,8(sp)
    80002c30:	01010113          	addi	sp,sp,16
    80002c34:	00008067          	ret

0000000080002c38 <usertrapret>:
    80002c38:	ff010113          	addi	sp,sp,-16
    80002c3c:	00813423          	sd	s0,8(sp)
    80002c40:	01010413          	addi	s0,sp,16
    80002c44:	00813403          	ld	s0,8(sp)
    80002c48:	01010113          	addi	sp,sp,16
    80002c4c:	00008067          	ret

0000000080002c50 <kerneltrap>:
    80002c50:	fe010113          	addi	sp,sp,-32
    80002c54:	00813823          	sd	s0,16(sp)
    80002c58:	00113c23          	sd	ra,24(sp)
    80002c5c:	00913423          	sd	s1,8(sp)
    80002c60:	02010413          	addi	s0,sp,32
    80002c64:	142025f3          	csrr	a1,scause
    80002c68:	100027f3          	csrr	a5,sstatus
    80002c6c:	0027f793          	andi	a5,a5,2
    80002c70:	10079c63          	bnez	a5,80002d88 <kerneltrap+0x138>
    80002c74:	142027f3          	csrr	a5,scause
    80002c78:	0207ce63          	bltz	a5,80002cb4 <kerneltrap+0x64>
    80002c7c:	00002517          	auipc	a0,0x2
    80002c80:	58c50513          	addi	a0,a0,1420 # 80005208 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80002c84:	00001097          	auipc	ra,0x1
    80002c88:	884080e7          	jalr	-1916(ra) # 80003508 <__printf>
    80002c8c:	141025f3          	csrr	a1,sepc
    80002c90:	14302673          	csrr	a2,stval
    80002c94:	00002517          	auipc	a0,0x2
    80002c98:	58450513          	addi	a0,a0,1412 # 80005218 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80002c9c:	00001097          	auipc	ra,0x1
    80002ca0:	86c080e7          	jalr	-1940(ra) # 80003508 <__printf>
    80002ca4:	00002517          	auipc	a0,0x2
    80002ca8:	58c50513          	addi	a0,a0,1420 # 80005230 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80002cac:	00001097          	auipc	ra,0x1
    80002cb0:	800080e7          	jalr	-2048(ra) # 800034ac <panic>
    80002cb4:	0ff7f713          	andi	a4,a5,255
    80002cb8:	00900693          	li	a3,9
    80002cbc:	04d70063          	beq	a4,a3,80002cfc <kerneltrap+0xac>
    80002cc0:	fff00713          	li	a4,-1
    80002cc4:	03f71713          	slli	a4,a4,0x3f
    80002cc8:	00170713          	addi	a4,a4,1
    80002ccc:	fae798e3          	bne	a5,a4,80002c7c <kerneltrap+0x2c>
    80002cd0:	00000097          	auipc	ra,0x0
    80002cd4:	e00080e7          	jalr	-512(ra) # 80002ad0 <cpuid>
    80002cd8:	06050663          	beqz	a0,80002d44 <kerneltrap+0xf4>
    80002cdc:	144027f3          	csrr	a5,sip
    80002ce0:	ffd7f793          	andi	a5,a5,-3
    80002ce4:	14479073          	csrw	sip,a5
    80002ce8:	01813083          	ld	ra,24(sp)
    80002cec:	01013403          	ld	s0,16(sp)
    80002cf0:	00813483          	ld	s1,8(sp)
    80002cf4:	02010113          	addi	sp,sp,32
    80002cf8:	00008067          	ret
    80002cfc:	00000097          	auipc	ra,0x0
    80002d00:	3c8080e7          	jalr	968(ra) # 800030c4 <plic_claim>
    80002d04:	00a00793          	li	a5,10
    80002d08:	00050493          	mv	s1,a0
    80002d0c:	06f50863          	beq	a0,a5,80002d7c <kerneltrap+0x12c>
    80002d10:	fc050ce3          	beqz	a0,80002ce8 <kerneltrap+0x98>
    80002d14:	00050593          	mv	a1,a0
    80002d18:	00002517          	auipc	a0,0x2
    80002d1c:	4d050513          	addi	a0,a0,1232 # 800051e8 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80002d20:	00000097          	auipc	ra,0x0
    80002d24:	7e8080e7          	jalr	2024(ra) # 80003508 <__printf>
    80002d28:	01013403          	ld	s0,16(sp)
    80002d2c:	01813083          	ld	ra,24(sp)
    80002d30:	00048513          	mv	a0,s1
    80002d34:	00813483          	ld	s1,8(sp)
    80002d38:	02010113          	addi	sp,sp,32
    80002d3c:	00000317          	auipc	t1,0x0
    80002d40:	3c030067          	jr	960(t1) # 800030fc <plic_complete>
    80002d44:	00004517          	auipc	a0,0x4
    80002d48:	1cc50513          	addi	a0,a0,460 # 80006f10 <tickslock>
    80002d4c:	00001097          	auipc	ra,0x1
    80002d50:	490080e7          	jalr	1168(ra) # 800041dc <acquire>
    80002d54:	00003717          	auipc	a4,0x3
    80002d58:	0b070713          	addi	a4,a4,176 # 80005e04 <ticks>
    80002d5c:	00072783          	lw	a5,0(a4)
    80002d60:	00004517          	auipc	a0,0x4
    80002d64:	1b050513          	addi	a0,a0,432 # 80006f10 <tickslock>
    80002d68:	0017879b          	addiw	a5,a5,1
    80002d6c:	00f72023          	sw	a5,0(a4)
    80002d70:	00001097          	auipc	ra,0x1
    80002d74:	538080e7          	jalr	1336(ra) # 800042a8 <release>
    80002d78:	f65ff06f          	j	80002cdc <kerneltrap+0x8c>
    80002d7c:	00001097          	auipc	ra,0x1
    80002d80:	094080e7          	jalr	148(ra) # 80003e10 <uartintr>
    80002d84:	fa5ff06f          	j	80002d28 <kerneltrap+0xd8>
    80002d88:	00002517          	auipc	a0,0x2
    80002d8c:	44050513          	addi	a0,a0,1088 # 800051c8 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    80002d90:	00000097          	auipc	ra,0x0
    80002d94:	71c080e7          	jalr	1820(ra) # 800034ac <panic>

0000000080002d98 <clockintr>:
    80002d98:	fe010113          	addi	sp,sp,-32
    80002d9c:	00813823          	sd	s0,16(sp)
    80002da0:	00913423          	sd	s1,8(sp)
    80002da4:	00113c23          	sd	ra,24(sp)
    80002da8:	02010413          	addi	s0,sp,32
    80002dac:	00004497          	auipc	s1,0x4
    80002db0:	16448493          	addi	s1,s1,356 # 80006f10 <tickslock>
    80002db4:	00048513          	mv	a0,s1
    80002db8:	00001097          	auipc	ra,0x1
    80002dbc:	424080e7          	jalr	1060(ra) # 800041dc <acquire>
    80002dc0:	00003717          	auipc	a4,0x3
    80002dc4:	04470713          	addi	a4,a4,68 # 80005e04 <ticks>
    80002dc8:	00072783          	lw	a5,0(a4)
    80002dcc:	01013403          	ld	s0,16(sp)
    80002dd0:	01813083          	ld	ra,24(sp)
    80002dd4:	00048513          	mv	a0,s1
    80002dd8:	0017879b          	addiw	a5,a5,1
    80002ddc:	00813483          	ld	s1,8(sp)
    80002de0:	00f72023          	sw	a5,0(a4)
    80002de4:	02010113          	addi	sp,sp,32
    80002de8:	00001317          	auipc	t1,0x1
    80002dec:	4c030067          	jr	1216(t1) # 800042a8 <release>

0000000080002df0 <devintr>:
    80002df0:	142027f3          	csrr	a5,scause
    80002df4:	00000513          	li	a0,0
    80002df8:	0007c463          	bltz	a5,80002e00 <devintr+0x10>
    80002dfc:	00008067          	ret
    80002e00:	fe010113          	addi	sp,sp,-32
    80002e04:	00813823          	sd	s0,16(sp)
    80002e08:	00113c23          	sd	ra,24(sp)
    80002e0c:	00913423          	sd	s1,8(sp)
    80002e10:	02010413          	addi	s0,sp,32
    80002e14:	0ff7f713          	andi	a4,a5,255
    80002e18:	00900693          	li	a3,9
    80002e1c:	04d70c63          	beq	a4,a3,80002e74 <devintr+0x84>
    80002e20:	fff00713          	li	a4,-1
    80002e24:	03f71713          	slli	a4,a4,0x3f
    80002e28:	00170713          	addi	a4,a4,1
    80002e2c:	00e78c63          	beq	a5,a4,80002e44 <devintr+0x54>
    80002e30:	01813083          	ld	ra,24(sp)
    80002e34:	01013403          	ld	s0,16(sp)
    80002e38:	00813483          	ld	s1,8(sp)
    80002e3c:	02010113          	addi	sp,sp,32
    80002e40:	00008067          	ret
    80002e44:	00000097          	auipc	ra,0x0
    80002e48:	c8c080e7          	jalr	-884(ra) # 80002ad0 <cpuid>
    80002e4c:	06050663          	beqz	a0,80002eb8 <devintr+0xc8>
    80002e50:	144027f3          	csrr	a5,sip
    80002e54:	ffd7f793          	andi	a5,a5,-3
    80002e58:	14479073          	csrw	sip,a5
    80002e5c:	01813083          	ld	ra,24(sp)
    80002e60:	01013403          	ld	s0,16(sp)
    80002e64:	00813483          	ld	s1,8(sp)
    80002e68:	00200513          	li	a0,2
    80002e6c:	02010113          	addi	sp,sp,32
    80002e70:	00008067          	ret
    80002e74:	00000097          	auipc	ra,0x0
    80002e78:	250080e7          	jalr	592(ra) # 800030c4 <plic_claim>
    80002e7c:	00a00793          	li	a5,10
    80002e80:	00050493          	mv	s1,a0
    80002e84:	06f50663          	beq	a0,a5,80002ef0 <devintr+0x100>
    80002e88:	00100513          	li	a0,1
    80002e8c:	fa0482e3          	beqz	s1,80002e30 <devintr+0x40>
    80002e90:	00048593          	mv	a1,s1
    80002e94:	00002517          	auipc	a0,0x2
    80002e98:	35450513          	addi	a0,a0,852 # 800051e8 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80002e9c:	00000097          	auipc	ra,0x0
    80002ea0:	66c080e7          	jalr	1644(ra) # 80003508 <__printf>
    80002ea4:	00048513          	mv	a0,s1
    80002ea8:	00000097          	auipc	ra,0x0
    80002eac:	254080e7          	jalr	596(ra) # 800030fc <plic_complete>
    80002eb0:	00100513          	li	a0,1
    80002eb4:	f7dff06f          	j	80002e30 <devintr+0x40>
    80002eb8:	00004517          	auipc	a0,0x4
    80002ebc:	05850513          	addi	a0,a0,88 # 80006f10 <tickslock>
    80002ec0:	00001097          	auipc	ra,0x1
    80002ec4:	31c080e7          	jalr	796(ra) # 800041dc <acquire>
    80002ec8:	00003717          	auipc	a4,0x3
    80002ecc:	f3c70713          	addi	a4,a4,-196 # 80005e04 <ticks>
    80002ed0:	00072783          	lw	a5,0(a4)
    80002ed4:	00004517          	auipc	a0,0x4
    80002ed8:	03c50513          	addi	a0,a0,60 # 80006f10 <tickslock>
    80002edc:	0017879b          	addiw	a5,a5,1
    80002ee0:	00f72023          	sw	a5,0(a4)
    80002ee4:	00001097          	auipc	ra,0x1
    80002ee8:	3c4080e7          	jalr	964(ra) # 800042a8 <release>
    80002eec:	f65ff06f          	j	80002e50 <devintr+0x60>
    80002ef0:	00001097          	auipc	ra,0x1
    80002ef4:	f20080e7          	jalr	-224(ra) # 80003e10 <uartintr>
    80002ef8:	fadff06f          	j	80002ea4 <devintr+0xb4>
    80002efc:	0000                	unimp
	...

0000000080002f00 <kernelvec>:
    80002f00:	f0010113          	addi	sp,sp,-256
    80002f04:	00113023          	sd	ra,0(sp)
    80002f08:	00213423          	sd	sp,8(sp)
    80002f0c:	00313823          	sd	gp,16(sp)
    80002f10:	00413c23          	sd	tp,24(sp)
    80002f14:	02513023          	sd	t0,32(sp)
    80002f18:	02613423          	sd	t1,40(sp)
    80002f1c:	02713823          	sd	t2,48(sp)
    80002f20:	02813c23          	sd	s0,56(sp)
    80002f24:	04913023          	sd	s1,64(sp)
    80002f28:	04a13423          	sd	a0,72(sp)
    80002f2c:	04b13823          	sd	a1,80(sp)
    80002f30:	04c13c23          	sd	a2,88(sp)
    80002f34:	06d13023          	sd	a3,96(sp)
    80002f38:	06e13423          	sd	a4,104(sp)
    80002f3c:	06f13823          	sd	a5,112(sp)
    80002f40:	07013c23          	sd	a6,120(sp)
    80002f44:	09113023          	sd	a7,128(sp)
    80002f48:	09213423          	sd	s2,136(sp)
    80002f4c:	09313823          	sd	s3,144(sp)
    80002f50:	09413c23          	sd	s4,152(sp)
    80002f54:	0b513023          	sd	s5,160(sp)
    80002f58:	0b613423          	sd	s6,168(sp)
    80002f5c:	0b713823          	sd	s7,176(sp)
    80002f60:	0b813c23          	sd	s8,184(sp)
    80002f64:	0d913023          	sd	s9,192(sp)
    80002f68:	0da13423          	sd	s10,200(sp)
    80002f6c:	0db13823          	sd	s11,208(sp)
    80002f70:	0dc13c23          	sd	t3,216(sp)
    80002f74:	0fd13023          	sd	t4,224(sp)
    80002f78:	0fe13423          	sd	t5,232(sp)
    80002f7c:	0ff13823          	sd	t6,240(sp)
    80002f80:	cd1ff0ef          	jal	ra,80002c50 <kerneltrap>
    80002f84:	00013083          	ld	ra,0(sp)
    80002f88:	00813103          	ld	sp,8(sp)
    80002f8c:	01013183          	ld	gp,16(sp)
    80002f90:	02013283          	ld	t0,32(sp)
    80002f94:	02813303          	ld	t1,40(sp)
    80002f98:	03013383          	ld	t2,48(sp)
    80002f9c:	03813403          	ld	s0,56(sp)
    80002fa0:	04013483          	ld	s1,64(sp)
    80002fa4:	04813503          	ld	a0,72(sp)
    80002fa8:	05013583          	ld	a1,80(sp)
    80002fac:	05813603          	ld	a2,88(sp)
    80002fb0:	06013683          	ld	a3,96(sp)
    80002fb4:	06813703          	ld	a4,104(sp)
    80002fb8:	07013783          	ld	a5,112(sp)
    80002fbc:	07813803          	ld	a6,120(sp)
    80002fc0:	08013883          	ld	a7,128(sp)
    80002fc4:	08813903          	ld	s2,136(sp)
    80002fc8:	09013983          	ld	s3,144(sp)
    80002fcc:	09813a03          	ld	s4,152(sp)
    80002fd0:	0a013a83          	ld	s5,160(sp)
    80002fd4:	0a813b03          	ld	s6,168(sp)
    80002fd8:	0b013b83          	ld	s7,176(sp)
    80002fdc:	0b813c03          	ld	s8,184(sp)
    80002fe0:	0c013c83          	ld	s9,192(sp)
    80002fe4:	0c813d03          	ld	s10,200(sp)
    80002fe8:	0d013d83          	ld	s11,208(sp)
    80002fec:	0d813e03          	ld	t3,216(sp)
    80002ff0:	0e013e83          	ld	t4,224(sp)
    80002ff4:	0e813f03          	ld	t5,232(sp)
    80002ff8:	0f013f83          	ld	t6,240(sp)
    80002ffc:	10010113          	addi	sp,sp,256
    80003000:	10200073          	sret
    80003004:	00000013          	nop
    80003008:	00000013          	nop
    8000300c:	00000013          	nop

0000000080003010 <timervec>:
    80003010:	34051573          	csrrw	a0,mscratch,a0
    80003014:	00b53023          	sd	a1,0(a0)
    80003018:	00c53423          	sd	a2,8(a0)
    8000301c:	00d53823          	sd	a3,16(a0)
    80003020:	01853583          	ld	a1,24(a0)
    80003024:	02053603          	ld	a2,32(a0)
    80003028:	0005b683          	ld	a3,0(a1)
    8000302c:	00c686b3          	add	a3,a3,a2
    80003030:	00d5b023          	sd	a3,0(a1)
    80003034:	00200593          	li	a1,2
    80003038:	14459073          	csrw	sip,a1
    8000303c:	01053683          	ld	a3,16(a0)
    80003040:	00853603          	ld	a2,8(a0)
    80003044:	00053583          	ld	a1,0(a0)
    80003048:	34051573          	csrrw	a0,mscratch,a0
    8000304c:	30200073          	mret

0000000080003050 <plicinit>:
    80003050:	ff010113          	addi	sp,sp,-16
    80003054:	00813423          	sd	s0,8(sp)
    80003058:	01010413          	addi	s0,sp,16
    8000305c:	00813403          	ld	s0,8(sp)
    80003060:	0c0007b7          	lui	a5,0xc000
    80003064:	00100713          	li	a4,1
    80003068:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000306c:	00e7a223          	sw	a4,4(a5)
    80003070:	01010113          	addi	sp,sp,16
    80003074:	00008067          	ret

0000000080003078 <plicinithart>:
    80003078:	ff010113          	addi	sp,sp,-16
    8000307c:	00813023          	sd	s0,0(sp)
    80003080:	00113423          	sd	ra,8(sp)
    80003084:	01010413          	addi	s0,sp,16
    80003088:	00000097          	auipc	ra,0x0
    8000308c:	a48080e7          	jalr	-1464(ra) # 80002ad0 <cpuid>
    80003090:	0085171b          	slliw	a4,a0,0x8
    80003094:	0c0027b7          	lui	a5,0xc002
    80003098:	00e787b3          	add	a5,a5,a4
    8000309c:	40200713          	li	a4,1026
    800030a0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800030a4:	00813083          	ld	ra,8(sp)
    800030a8:	00013403          	ld	s0,0(sp)
    800030ac:	00d5151b          	slliw	a0,a0,0xd
    800030b0:	0c2017b7          	lui	a5,0xc201
    800030b4:	00a78533          	add	a0,a5,a0
    800030b8:	00052023          	sw	zero,0(a0)
    800030bc:	01010113          	addi	sp,sp,16
    800030c0:	00008067          	ret

00000000800030c4 <plic_claim>:
    800030c4:	ff010113          	addi	sp,sp,-16
    800030c8:	00813023          	sd	s0,0(sp)
    800030cc:	00113423          	sd	ra,8(sp)
    800030d0:	01010413          	addi	s0,sp,16
    800030d4:	00000097          	auipc	ra,0x0
    800030d8:	9fc080e7          	jalr	-1540(ra) # 80002ad0 <cpuid>
    800030dc:	00813083          	ld	ra,8(sp)
    800030e0:	00013403          	ld	s0,0(sp)
    800030e4:	00d5151b          	slliw	a0,a0,0xd
    800030e8:	0c2017b7          	lui	a5,0xc201
    800030ec:	00a78533          	add	a0,a5,a0
    800030f0:	00452503          	lw	a0,4(a0)
    800030f4:	01010113          	addi	sp,sp,16
    800030f8:	00008067          	ret

00000000800030fc <plic_complete>:
    800030fc:	fe010113          	addi	sp,sp,-32
    80003100:	00813823          	sd	s0,16(sp)
    80003104:	00913423          	sd	s1,8(sp)
    80003108:	00113c23          	sd	ra,24(sp)
    8000310c:	02010413          	addi	s0,sp,32
    80003110:	00050493          	mv	s1,a0
    80003114:	00000097          	auipc	ra,0x0
    80003118:	9bc080e7          	jalr	-1604(ra) # 80002ad0 <cpuid>
    8000311c:	01813083          	ld	ra,24(sp)
    80003120:	01013403          	ld	s0,16(sp)
    80003124:	00d5179b          	slliw	a5,a0,0xd
    80003128:	0c201737          	lui	a4,0xc201
    8000312c:	00f707b3          	add	a5,a4,a5
    80003130:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003134:	00813483          	ld	s1,8(sp)
    80003138:	02010113          	addi	sp,sp,32
    8000313c:	00008067          	ret

0000000080003140 <consolewrite>:
    80003140:	fb010113          	addi	sp,sp,-80
    80003144:	04813023          	sd	s0,64(sp)
    80003148:	04113423          	sd	ra,72(sp)
    8000314c:	02913c23          	sd	s1,56(sp)
    80003150:	03213823          	sd	s2,48(sp)
    80003154:	03313423          	sd	s3,40(sp)
    80003158:	03413023          	sd	s4,32(sp)
    8000315c:	01513c23          	sd	s5,24(sp)
    80003160:	05010413          	addi	s0,sp,80
    80003164:	06c05c63          	blez	a2,800031dc <consolewrite+0x9c>
    80003168:	00060993          	mv	s3,a2
    8000316c:	00050a13          	mv	s4,a0
    80003170:	00058493          	mv	s1,a1
    80003174:	00000913          	li	s2,0
    80003178:	fff00a93          	li	s5,-1
    8000317c:	01c0006f          	j	80003198 <consolewrite+0x58>
    80003180:	fbf44503          	lbu	a0,-65(s0)
    80003184:	0019091b          	addiw	s2,s2,1
    80003188:	00148493          	addi	s1,s1,1
    8000318c:	00001097          	auipc	ra,0x1
    80003190:	a9c080e7          	jalr	-1380(ra) # 80003c28 <uartputc>
    80003194:	03298063          	beq	s3,s2,800031b4 <consolewrite+0x74>
    80003198:	00048613          	mv	a2,s1
    8000319c:	00100693          	li	a3,1
    800031a0:	000a0593          	mv	a1,s4
    800031a4:	fbf40513          	addi	a0,s0,-65
    800031a8:	00000097          	auipc	ra,0x0
    800031ac:	9e0080e7          	jalr	-1568(ra) # 80002b88 <either_copyin>
    800031b0:	fd5518e3          	bne	a0,s5,80003180 <consolewrite+0x40>
    800031b4:	04813083          	ld	ra,72(sp)
    800031b8:	04013403          	ld	s0,64(sp)
    800031bc:	03813483          	ld	s1,56(sp)
    800031c0:	02813983          	ld	s3,40(sp)
    800031c4:	02013a03          	ld	s4,32(sp)
    800031c8:	01813a83          	ld	s5,24(sp)
    800031cc:	00090513          	mv	a0,s2
    800031d0:	03013903          	ld	s2,48(sp)
    800031d4:	05010113          	addi	sp,sp,80
    800031d8:	00008067          	ret
    800031dc:	00000913          	li	s2,0
    800031e0:	fd5ff06f          	j	800031b4 <consolewrite+0x74>

00000000800031e4 <consoleread>:
    800031e4:	f9010113          	addi	sp,sp,-112
    800031e8:	06813023          	sd	s0,96(sp)
    800031ec:	04913c23          	sd	s1,88(sp)
    800031f0:	05213823          	sd	s2,80(sp)
    800031f4:	05313423          	sd	s3,72(sp)
    800031f8:	05413023          	sd	s4,64(sp)
    800031fc:	03513c23          	sd	s5,56(sp)
    80003200:	03613823          	sd	s6,48(sp)
    80003204:	03713423          	sd	s7,40(sp)
    80003208:	03813023          	sd	s8,32(sp)
    8000320c:	06113423          	sd	ra,104(sp)
    80003210:	01913c23          	sd	s9,24(sp)
    80003214:	07010413          	addi	s0,sp,112
    80003218:	00060b93          	mv	s7,a2
    8000321c:	00050913          	mv	s2,a0
    80003220:	00058c13          	mv	s8,a1
    80003224:	00060b1b          	sext.w	s6,a2
    80003228:	00004497          	auipc	s1,0x4
    8000322c:	d1048493          	addi	s1,s1,-752 # 80006f38 <cons>
    80003230:	00400993          	li	s3,4
    80003234:	fff00a13          	li	s4,-1
    80003238:	00a00a93          	li	s5,10
    8000323c:	05705e63          	blez	s7,80003298 <consoleread+0xb4>
    80003240:	09c4a703          	lw	a4,156(s1)
    80003244:	0984a783          	lw	a5,152(s1)
    80003248:	0007071b          	sext.w	a4,a4
    8000324c:	08e78463          	beq	a5,a4,800032d4 <consoleread+0xf0>
    80003250:	07f7f713          	andi	a4,a5,127
    80003254:	00e48733          	add	a4,s1,a4
    80003258:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000325c:	0017869b          	addiw	a3,a5,1
    80003260:	08d4ac23          	sw	a3,152(s1)
    80003264:	00070c9b          	sext.w	s9,a4
    80003268:	0b370663          	beq	a4,s3,80003314 <consoleread+0x130>
    8000326c:	00100693          	li	a3,1
    80003270:	f9f40613          	addi	a2,s0,-97
    80003274:	000c0593          	mv	a1,s8
    80003278:	00090513          	mv	a0,s2
    8000327c:	f8e40fa3          	sb	a4,-97(s0)
    80003280:	00000097          	auipc	ra,0x0
    80003284:	8bc080e7          	jalr	-1860(ra) # 80002b3c <either_copyout>
    80003288:	01450863          	beq	a0,s4,80003298 <consoleread+0xb4>
    8000328c:	001c0c13          	addi	s8,s8,1
    80003290:	fffb8b9b          	addiw	s7,s7,-1
    80003294:	fb5c94e3          	bne	s9,s5,8000323c <consoleread+0x58>
    80003298:	000b851b          	sext.w	a0,s7
    8000329c:	06813083          	ld	ra,104(sp)
    800032a0:	06013403          	ld	s0,96(sp)
    800032a4:	05813483          	ld	s1,88(sp)
    800032a8:	05013903          	ld	s2,80(sp)
    800032ac:	04813983          	ld	s3,72(sp)
    800032b0:	04013a03          	ld	s4,64(sp)
    800032b4:	03813a83          	ld	s5,56(sp)
    800032b8:	02813b83          	ld	s7,40(sp)
    800032bc:	02013c03          	ld	s8,32(sp)
    800032c0:	01813c83          	ld	s9,24(sp)
    800032c4:	40ab053b          	subw	a0,s6,a0
    800032c8:	03013b03          	ld	s6,48(sp)
    800032cc:	07010113          	addi	sp,sp,112
    800032d0:	00008067          	ret
    800032d4:	00001097          	auipc	ra,0x1
    800032d8:	1d8080e7          	jalr	472(ra) # 800044ac <push_on>
    800032dc:	0984a703          	lw	a4,152(s1)
    800032e0:	09c4a783          	lw	a5,156(s1)
    800032e4:	0007879b          	sext.w	a5,a5
    800032e8:	fef70ce3          	beq	a4,a5,800032e0 <consoleread+0xfc>
    800032ec:	00001097          	auipc	ra,0x1
    800032f0:	234080e7          	jalr	564(ra) # 80004520 <pop_on>
    800032f4:	0984a783          	lw	a5,152(s1)
    800032f8:	07f7f713          	andi	a4,a5,127
    800032fc:	00e48733          	add	a4,s1,a4
    80003300:	01874703          	lbu	a4,24(a4)
    80003304:	0017869b          	addiw	a3,a5,1
    80003308:	08d4ac23          	sw	a3,152(s1)
    8000330c:	00070c9b          	sext.w	s9,a4
    80003310:	f5371ee3          	bne	a4,s3,8000326c <consoleread+0x88>
    80003314:	000b851b          	sext.w	a0,s7
    80003318:	f96bf2e3          	bgeu	s7,s6,8000329c <consoleread+0xb8>
    8000331c:	08f4ac23          	sw	a5,152(s1)
    80003320:	f7dff06f          	j	8000329c <consoleread+0xb8>

0000000080003324 <consputc>:
    80003324:	10000793          	li	a5,256
    80003328:	00f50663          	beq	a0,a5,80003334 <consputc+0x10>
    8000332c:	00001317          	auipc	t1,0x1
    80003330:	9f430067          	jr	-1548(t1) # 80003d20 <uartputc_sync>
    80003334:	ff010113          	addi	sp,sp,-16
    80003338:	00113423          	sd	ra,8(sp)
    8000333c:	00813023          	sd	s0,0(sp)
    80003340:	01010413          	addi	s0,sp,16
    80003344:	00800513          	li	a0,8
    80003348:	00001097          	auipc	ra,0x1
    8000334c:	9d8080e7          	jalr	-1576(ra) # 80003d20 <uartputc_sync>
    80003350:	02000513          	li	a0,32
    80003354:	00001097          	auipc	ra,0x1
    80003358:	9cc080e7          	jalr	-1588(ra) # 80003d20 <uartputc_sync>
    8000335c:	00013403          	ld	s0,0(sp)
    80003360:	00813083          	ld	ra,8(sp)
    80003364:	00800513          	li	a0,8
    80003368:	01010113          	addi	sp,sp,16
    8000336c:	00001317          	auipc	t1,0x1
    80003370:	9b430067          	jr	-1612(t1) # 80003d20 <uartputc_sync>

0000000080003374 <consoleintr>:
    80003374:	fe010113          	addi	sp,sp,-32
    80003378:	00813823          	sd	s0,16(sp)
    8000337c:	00913423          	sd	s1,8(sp)
    80003380:	01213023          	sd	s2,0(sp)
    80003384:	00113c23          	sd	ra,24(sp)
    80003388:	02010413          	addi	s0,sp,32
    8000338c:	00004917          	auipc	s2,0x4
    80003390:	bac90913          	addi	s2,s2,-1108 # 80006f38 <cons>
    80003394:	00050493          	mv	s1,a0
    80003398:	00090513          	mv	a0,s2
    8000339c:	00001097          	auipc	ra,0x1
    800033a0:	e40080e7          	jalr	-448(ra) # 800041dc <acquire>
    800033a4:	02048c63          	beqz	s1,800033dc <consoleintr+0x68>
    800033a8:	0a092783          	lw	a5,160(s2)
    800033ac:	09892703          	lw	a4,152(s2)
    800033b0:	07f00693          	li	a3,127
    800033b4:	40e7873b          	subw	a4,a5,a4
    800033b8:	02e6e263          	bltu	a3,a4,800033dc <consoleintr+0x68>
    800033bc:	00d00713          	li	a4,13
    800033c0:	04e48063          	beq	s1,a4,80003400 <consoleintr+0x8c>
    800033c4:	07f7f713          	andi	a4,a5,127
    800033c8:	00e90733          	add	a4,s2,a4
    800033cc:	0017879b          	addiw	a5,a5,1
    800033d0:	0af92023          	sw	a5,160(s2)
    800033d4:	00970c23          	sb	s1,24(a4)
    800033d8:	08f92e23          	sw	a5,156(s2)
    800033dc:	01013403          	ld	s0,16(sp)
    800033e0:	01813083          	ld	ra,24(sp)
    800033e4:	00813483          	ld	s1,8(sp)
    800033e8:	00013903          	ld	s2,0(sp)
    800033ec:	00004517          	auipc	a0,0x4
    800033f0:	b4c50513          	addi	a0,a0,-1204 # 80006f38 <cons>
    800033f4:	02010113          	addi	sp,sp,32
    800033f8:	00001317          	auipc	t1,0x1
    800033fc:	eb030067          	jr	-336(t1) # 800042a8 <release>
    80003400:	00a00493          	li	s1,10
    80003404:	fc1ff06f          	j	800033c4 <consoleintr+0x50>

0000000080003408 <consoleinit>:
    80003408:	fe010113          	addi	sp,sp,-32
    8000340c:	00113c23          	sd	ra,24(sp)
    80003410:	00813823          	sd	s0,16(sp)
    80003414:	00913423          	sd	s1,8(sp)
    80003418:	02010413          	addi	s0,sp,32
    8000341c:	00004497          	auipc	s1,0x4
    80003420:	b1c48493          	addi	s1,s1,-1252 # 80006f38 <cons>
    80003424:	00048513          	mv	a0,s1
    80003428:	00002597          	auipc	a1,0x2
    8000342c:	e1858593          	addi	a1,a1,-488 # 80005240 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80003430:	00001097          	auipc	ra,0x1
    80003434:	d88080e7          	jalr	-632(ra) # 800041b8 <initlock>
    80003438:	00000097          	auipc	ra,0x0
    8000343c:	7ac080e7          	jalr	1964(ra) # 80003be4 <uartinit>
    80003440:	01813083          	ld	ra,24(sp)
    80003444:	01013403          	ld	s0,16(sp)
    80003448:	00000797          	auipc	a5,0x0
    8000344c:	d9c78793          	addi	a5,a5,-612 # 800031e4 <consoleread>
    80003450:	0af4bc23          	sd	a5,184(s1)
    80003454:	00000797          	auipc	a5,0x0
    80003458:	cec78793          	addi	a5,a5,-788 # 80003140 <consolewrite>
    8000345c:	0cf4b023          	sd	a5,192(s1)
    80003460:	00813483          	ld	s1,8(sp)
    80003464:	02010113          	addi	sp,sp,32
    80003468:	00008067          	ret

000000008000346c <console_read>:
    8000346c:	ff010113          	addi	sp,sp,-16
    80003470:	00813423          	sd	s0,8(sp)
    80003474:	01010413          	addi	s0,sp,16
    80003478:	00813403          	ld	s0,8(sp)
    8000347c:	00004317          	auipc	t1,0x4
    80003480:	b7433303          	ld	t1,-1164(t1) # 80006ff0 <devsw+0x10>
    80003484:	01010113          	addi	sp,sp,16
    80003488:	00030067          	jr	t1

000000008000348c <console_write>:
    8000348c:	ff010113          	addi	sp,sp,-16
    80003490:	00813423          	sd	s0,8(sp)
    80003494:	01010413          	addi	s0,sp,16
    80003498:	00813403          	ld	s0,8(sp)
    8000349c:	00004317          	auipc	t1,0x4
    800034a0:	b5c33303          	ld	t1,-1188(t1) # 80006ff8 <devsw+0x18>
    800034a4:	01010113          	addi	sp,sp,16
    800034a8:	00030067          	jr	t1

00000000800034ac <panic>:
    800034ac:	fe010113          	addi	sp,sp,-32
    800034b0:	00113c23          	sd	ra,24(sp)
    800034b4:	00813823          	sd	s0,16(sp)
    800034b8:	00913423          	sd	s1,8(sp)
    800034bc:	02010413          	addi	s0,sp,32
    800034c0:	00050493          	mv	s1,a0
    800034c4:	00002517          	auipc	a0,0x2
    800034c8:	d8450513          	addi	a0,a0,-636 # 80005248 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    800034cc:	00004797          	auipc	a5,0x4
    800034d0:	bc07a623          	sw	zero,-1076(a5) # 80007098 <pr+0x18>
    800034d4:	00000097          	auipc	ra,0x0
    800034d8:	034080e7          	jalr	52(ra) # 80003508 <__printf>
    800034dc:	00048513          	mv	a0,s1
    800034e0:	00000097          	auipc	ra,0x0
    800034e4:	028080e7          	jalr	40(ra) # 80003508 <__printf>
    800034e8:	00002517          	auipc	a0,0x2
    800034ec:	d4050513          	addi	a0,a0,-704 # 80005228 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800034f0:	00000097          	auipc	ra,0x0
    800034f4:	018080e7          	jalr	24(ra) # 80003508 <__printf>
    800034f8:	00100793          	li	a5,1
    800034fc:	00003717          	auipc	a4,0x3
    80003500:	90f72623          	sw	a5,-1780(a4) # 80005e08 <panicked>
    80003504:	0000006f          	j	80003504 <panic+0x58>

0000000080003508 <__printf>:
    80003508:	f3010113          	addi	sp,sp,-208
    8000350c:	08813023          	sd	s0,128(sp)
    80003510:	07313423          	sd	s3,104(sp)
    80003514:	09010413          	addi	s0,sp,144
    80003518:	05813023          	sd	s8,64(sp)
    8000351c:	08113423          	sd	ra,136(sp)
    80003520:	06913c23          	sd	s1,120(sp)
    80003524:	07213823          	sd	s2,112(sp)
    80003528:	07413023          	sd	s4,96(sp)
    8000352c:	05513c23          	sd	s5,88(sp)
    80003530:	05613823          	sd	s6,80(sp)
    80003534:	05713423          	sd	s7,72(sp)
    80003538:	03913c23          	sd	s9,56(sp)
    8000353c:	03a13823          	sd	s10,48(sp)
    80003540:	03b13423          	sd	s11,40(sp)
    80003544:	00004317          	auipc	t1,0x4
    80003548:	b3c30313          	addi	t1,t1,-1220 # 80007080 <pr>
    8000354c:	01832c03          	lw	s8,24(t1)
    80003550:	00b43423          	sd	a1,8(s0)
    80003554:	00c43823          	sd	a2,16(s0)
    80003558:	00d43c23          	sd	a3,24(s0)
    8000355c:	02e43023          	sd	a4,32(s0)
    80003560:	02f43423          	sd	a5,40(s0)
    80003564:	03043823          	sd	a6,48(s0)
    80003568:	03143c23          	sd	a7,56(s0)
    8000356c:	00050993          	mv	s3,a0
    80003570:	4a0c1663          	bnez	s8,80003a1c <__printf+0x514>
    80003574:	60098c63          	beqz	s3,80003b8c <__printf+0x684>
    80003578:	0009c503          	lbu	a0,0(s3)
    8000357c:	00840793          	addi	a5,s0,8
    80003580:	f6f43c23          	sd	a5,-136(s0)
    80003584:	00000493          	li	s1,0
    80003588:	22050063          	beqz	a0,800037a8 <__printf+0x2a0>
    8000358c:	00002a37          	lui	s4,0x2
    80003590:	00018ab7          	lui	s5,0x18
    80003594:	000f4b37          	lui	s6,0xf4
    80003598:	00989bb7          	lui	s7,0x989
    8000359c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800035a0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800035a4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800035a8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800035ac:	00148c9b          	addiw	s9,s1,1
    800035b0:	02500793          	li	a5,37
    800035b4:	01998933          	add	s2,s3,s9
    800035b8:	38f51263          	bne	a0,a5,8000393c <__printf+0x434>
    800035bc:	00094783          	lbu	a5,0(s2)
    800035c0:	00078c9b          	sext.w	s9,a5
    800035c4:	1e078263          	beqz	a5,800037a8 <__printf+0x2a0>
    800035c8:	0024849b          	addiw	s1,s1,2
    800035cc:	07000713          	li	a4,112
    800035d0:	00998933          	add	s2,s3,s1
    800035d4:	38e78a63          	beq	a5,a4,80003968 <__printf+0x460>
    800035d8:	20f76863          	bltu	a4,a5,800037e8 <__printf+0x2e0>
    800035dc:	42a78863          	beq	a5,a0,80003a0c <__printf+0x504>
    800035e0:	06400713          	li	a4,100
    800035e4:	40e79663          	bne	a5,a4,800039f0 <__printf+0x4e8>
    800035e8:	f7843783          	ld	a5,-136(s0)
    800035ec:	0007a603          	lw	a2,0(a5)
    800035f0:	00878793          	addi	a5,a5,8
    800035f4:	f6f43c23          	sd	a5,-136(s0)
    800035f8:	42064a63          	bltz	a2,80003a2c <__printf+0x524>
    800035fc:	00a00713          	li	a4,10
    80003600:	02e677bb          	remuw	a5,a2,a4
    80003604:	00002d97          	auipc	s11,0x2
    80003608:	c6cd8d93          	addi	s11,s11,-916 # 80005270 <digits>
    8000360c:	00900593          	li	a1,9
    80003610:	0006051b          	sext.w	a0,a2
    80003614:	00000c93          	li	s9,0
    80003618:	02079793          	slli	a5,a5,0x20
    8000361c:	0207d793          	srli	a5,a5,0x20
    80003620:	00fd87b3          	add	a5,s11,a5
    80003624:	0007c783          	lbu	a5,0(a5)
    80003628:	02e656bb          	divuw	a3,a2,a4
    8000362c:	f8f40023          	sb	a5,-128(s0)
    80003630:	14c5d863          	bge	a1,a2,80003780 <__printf+0x278>
    80003634:	06300593          	li	a1,99
    80003638:	00100c93          	li	s9,1
    8000363c:	02e6f7bb          	remuw	a5,a3,a4
    80003640:	02079793          	slli	a5,a5,0x20
    80003644:	0207d793          	srli	a5,a5,0x20
    80003648:	00fd87b3          	add	a5,s11,a5
    8000364c:	0007c783          	lbu	a5,0(a5)
    80003650:	02e6d73b          	divuw	a4,a3,a4
    80003654:	f8f400a3          	sb	a5,-127(s0)
    80003658:	12a5f463          	bgeu	a1,a0,80003780 <__printf+0x278>
    8000365c:	00a00693          	li	a3,10
    80003660:	00900593          	li	a1,9
    80003664:	02d777bb          	remuw	a5,a4,a3
    80003668:	02079793          	slli	a5,a5,0x20
    8000366c:	0207d793          	srli	a5,a5,0x20
    80003670:	00fd87b3          	add	a5,s11,a5
    80003674:	0007c503          	lbu	a0,0(a5)
    80003678:	02d757bb          	divuw	a5,a4,a3
    8000367c:	f8a40123          	sb	a0,-126(s0)
    80003680:	48e5f263          	bgeu	a1,a4,80003b04 <__printf+0x5fc>
    80003684:	06300513          	li	a0,99
    80003688:	02d7f5bb          	remuw	a1,a5,a3
    8000368c:	02059593          	slli	a1,a1,0x20
    80003690:	0205d593          	srli	a1,a1,0x20
    80003694:	00bd85b3          	add	a1,s11,a1
    80003698:	0005c583          	lbu	a1,0(a1)
    8000369c:	02d7d7bb          	divuw	a5,a5,a3
    800036a0:	f8b401a3          	sb	a1,-125(s0)
    800036a4:	48e57263          	bgeu	a0,a4,80003b28 <__printf+0x620>
    800036a8:	3e700513          	li	a0,999
    800036ac:	02d7f5bb          	remuw	a1,a5,a3
    800036b0:	02059593          	slli	a1,a1,0x20
    800036b4:	0205d593          	srli	a1,a1,0x20
    800036b8:	00bd85b3          	add	a1,s11,a1
    800036bc:	0005c583          	lbu	a1,0(a1)
    800036c0:	02d7d7bb          	divuw	a5,a5,a3
    800036c4:	f8b40223          	sb	a1,-124(s0)
    800036c8:	46e57663          	bgeu	a0,a4,80003b34 <__printf+0x62c>
    800036cc:	02d7f5bb          	remuw	a1,a5,a3
    800036d0:	02059593          	slli	a1,a1,0x20
    800036d4:	0205d593          	srli	a1,a1,0x20
    800036d8:	00bd85b3          	add	a1,s11,a1
    800036dc:	0005c583          	lbu	a1,0(a1)
    800036e0:	02d7d7bb          	divuw	a5,a5,a3
    800036e4:	f8b402a3          	sb	a1,-123(s0)
    800036e8:	46ea7863          	bgeu	s4,a4,80003b58 <__printf+0x650>
    800036ec:	02d7f5bb          	remuw	a1,a5,a3
    800036f0:	02059593          	slli	a1,a1,0x20
    800036f4:	0205d593          	srli	a1,a1,0x20
    800036f8:	00bd85b3          	add	a1,s11,a1
    800036fc:	0005c583          	lbu	a1,0(a1)
    80003700:	02d7d7bb          	divuw	a5,a5,a3
    80003704:	f8b40323          	sb	a1,-122(s0)
    80003708:	3eeaf863          	bgeu	s5,a4,80003af8 <__printf+0x5f0>
    8000370c:	02d7f5bb          	remuw	a1,a5,a3
    80003710:	02059593          	slli	a1,a1,0x20
    80003714:	0205d593          	srli	a1,a1,0x20
    80003718:	00bd85b3          	add	a1,s11,a1
    8000371c:	0005c583          	lbu	a1,0(a1)
    80003720:	02d7d7bb          	divuw	a5,a5,a3
    80003724:	f8b403a3          	sb	a1,-121(s0)
    80003728:	42eb7e63          	bgeu	s6,a4,80003b64 <__printf+0x65c>
    8000372c:	02d7f5bb          	remuw	a1,a5,a3
    80003730:	02059593          	slli	a1,a1,0x20
    80003734:	0205d593          	srli	a1,a1,0x20
    80003738:	00bd85b3          	add	a1,s11,a1
    8000373c:	0005c583          	lbu	a1,0(a1)
    80003740:	02d7d7bb          	divuw	a5,a5,a3
    80003744:	f8b40423          	sb	a1,-120(s0)
    80003748:	42ebfc63          	bgeu	s7,a4,80003b80 <__printf+0x678>
    8000374c:	02079793          	slli	a5,a5,0x20
    80003750:	0207d793          	srli	a5,a5,0x20
    80003754:	00fd8db3          	add	s11,s11,a5
    80003758:	000dc703          	lbu	a4,0(s11)
    8000375c:	00a00793          	li	a5,10
    80003760:	00900c93          	li	s9,9
    80003764:	f8e404a3          	sb	a4,-119(s0)
    80003768:	00065c63          	bgez	a2,80003780 <__printf+0x278>
    8000376c:	f9040713          	addi	a4,s0,-112
    80003770:	00f70733          	add	a4,a4,a5
    80003774:	02d00693          	li	a3,45
    80003778:	fed70823          	sb	a3,-16(a4)
    8000377c:	00078c93          	mv	s9,a5
    80003780:	f8040793          	addi	a5,s0,-128
    80003784:	01978cb3          	add	s9,a5,s9
    80003788:	f7f40d13          	addi	s10,s0,-129
    8000378c:	000cc503          	lbu	a0,0(s9)
    80003790:	fffc8c93          	addi	s9,s9,-1
    80003794:	00000097          	auipc	ra,0x0
    80003798:	b90080e7          	jalr	-1136(ra) # 80003324 <consputc>
    8000379c:	ffac98e3          	bne	s9,s10,8000378c <__printf+0x284>
    800037a0:	00094503          	lbu	a0,0(s2)
    800037a4:	e00514e3          	bnez	a0,800035ac <__printf+0xa4>
    800037a8:	1a0c1663          	bnez	s8,80003954 <__printf+0x44c>
    800037ac:	08813083          	ld	ra,136(sp)
    800037b0:	08013403          	ld	s0,128(sp)
    800037b4:	07813483          	ld	s1,120(sp)
    800037b8:	07013903          	ld	s2,112(sp)
    800037bc:	06813983          	ld	s3,104(sp)
    800037c0:	06013a03          	ld	s4,96(sp)
    800037c4:	05813a83          	ld	s5,88(sp)
    800037c8:	05013b03          	ld	s6,80(sp)
    800037cc:	04813b83          	ld	s7,72(sp)
    800037d0:	04013c03          	ld	s8,64(sp)
    800037d4:	03813c83          	ld	s9,56(sp)
    800037d8:	03013d03          	ld	s10,48(sp)
    800037dc:	02813d83          	ld	s11,40(sp)
    800037e0:	0d010113          	addi	sp,sp,208
    800037e4:	00008067          	ret
    800037e8:	07300713          	li	a4,115
    800037ec:	1ce78a63          	beq	a5,a4,800039c0 <__printf+0x4b8>
    800037f0:	07800713          	li	a4,120
    800037f4:	1ee79e63          	bne	a5,a4,800039f0 <__printf+0x4e8>
    800037f8:	f7843783          	ld	a5,-136(s0)
    800037fc:	0007a703          	lw	a4,0(a5)
    80003800:	00878793          	addi	a5,a5,8
    80003804:	f6f43c23          	sd	a5,-136(s0)
    80003808:	28074263          	bltz	a4,80003a8c <__printf+0x584>
    8000380c:	00002d97          	auipc	s11,0x2
    80003810:	a64d8d93          	addi	s11,s11,-1436 # 80005270 <digits>
    80003814:	00f77793          	andi	a5,a4,15
    80003818:	00fd87b3          	add	a5,s11,a5
    8000381c:	0007c683          	lbu	a3,0(a5)
    80003820:	00f00613          	li	a2,15
    80003824:	0007079b          	sext.w	a5,a4
    80003828:	f8d40023          	sb	a3,-128(s0)
    8000382c:	0047559b          	srliw	a1,a4,0x4
    80003830:	0047569b          	srliw	a3,a4,0x4
    80003834:	00000c93          	li	s9,0
    80003838:	0ee65063          	bge	a2,a4,80003918 <__printf+0x410>
    8000383c:	00f6f693          	andi	a3,a3,15
    80003840:	00dd86b3          	add	a3,s11,a3
    80003844:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003848:	0087d79b          	srliw	a5,a5,0x8
    8000384c:	00100c93          	li	s9,1
    80003850:	f8d400a3          	sb	a3,-127(s0)
    80003854:	0cb67263          	bgeu	a2,a1,80003918 <__printf+0x410>
    80003858:	00f7f693          	andi	a3,a5,15
    8000385c:	00dd86b3          	add	a3,s11,a3
    80003860:	0006c583          	lbu	a1,0(a3)
    80003864:	00f00613          	li	a2,15
    80003868:	0047d69b          	srliw	a3,a5,0x4
    8000386c:	f8b40123          	sb	a1,-126(s0)
    80003870:	0047d593          	srli	a1,a5,0x4
    80003874:	28f67e63          	bgeu	a2,a5,80003b10 <__printf+0x608>
    80003878:	00f6f693          	andi	a3,a3,15
    8000387c:	00dd86b3          	add	a3,s11,a3
    80003880:	0006c503          	lbu	a0,0(a3)
    80003884:	0087d813          	srli	a6,a5,0x8
    80003888:	0087d69b          	srliw	a3,a5,0x8
    8000388c:	f8a401a3          	sb	a0,-125(s0)
    80003890:	28b67663          	bgeu	a2,a1,80003b1c <__printf+0x614>
    80003894:	00f6f693          	andi	a3,a3,15
    80003898:	00dd86b3          	add	a3,s11,a3
    8000389c:	0006c583          	lbu	a1,0(a3)
    800038a0:	00c7d513          	srli	a0,a5,0xc
    800038a4:	00c7d69b          	srliw	a3,a5,0xc
    800038a8:	f8b40223          	sb	a1,-124(s0)
    800038ac:	29067a63          	bgeu	a2,a6,80003b40 <__printf+0x638>
    800038b0:	00f6f693          	andi	a3,a3,15
    800038b4:	00dd86b3          	add	a3,s11,a3
    800038b8:	0006c583          	lbu	a1,0(a3)
    800038bc:	0107d813          	srli	a6,a5,0x10
    800038c0:	0107d69b          	srliw	a3,a5,0x10
    800038c4:	f8b402a3          	sb	a1,-123(s0)
    800038c8:	28a67263          	bgeu	a2,a0,80003b4c <__printf+0x644>
    800038cc:	00f6f693          	andi	a3,a3,15
    800038d0:	00dd86b3          	add	a3,s11,a3
    800038d4:	0006c683          	lbu	a3,0(a3)
    800038d8:	0147d79b          	srliw	a5,a5,0x14
    800038dc:	f8d40323          	sb	a3,-122(s0)
    800038e0:	21067663          	bgeu	a2,a6,80003aec <__printf+0x5e4>
    800038e4:	02079793          	slli	a5,a5,0x20
    800038e8:	0207d793          	srli	a5,a5,0x20
    800038ec:	00fd8db3          	add	s11,s11,a5
    800038f0:	000dc683          	lbu	a3,0(s11)
    800038f4:	00800793          	li	a5,8
    800038f8:	00700c93          	li	s9,7
    800038fc:	f8d403a3          	sb	a3,-121(s0)
    80003900:	00075c63          	bgez	a4,80003918 <__printf+0x410>
    80003904:	f9040713          	addi	a4,s0,-112
    80003908:	00f70733          	add	a4,a4,a5
    8000390c:	02d00693          	li	a3,45
    80003910:	fed70823          	sb	a3,-16(a4)
    80003914:	00078c93          	mv	s9,a5
    80003918:	f8040793          	addi	a5,s0,-128
    8000391c:	01978cb3          	add	s9,a5,s9
    80003920:	f7f40d13          	addi	s10,s0,-129
    80003924:	000cc503          	lbu	a0,0(s9)
    80003928:	fffc8c93          	addi	s9,s9,-1
    8000392c:	00000097          	auipc	ra,0x0
    80003930:	9f8080e7          	jalr	-1544(ra) # 80003324 <consputc>
    80003934:	ff9d18e3          	bne	s10,s9,80003924 <__printf+0x41c>
    80003938:	0100006f          	j	80003948 <__printf+0x440>
    8000393c:	00000097          	auipc	ra,0x0
    80003940:	9e8080e7          	jalr	-1560(ra) # 80003324 <consputc>
    80003944:	000c8493          	mv	s1,s9
    80003948:	00094503          	lbu	a0,0(s2)
    8000394c:	c60510e3          	bnez	a0,800035ac <__printf+0xa4>
    80003950:	e40c0ee3          	beqz	s8,800037ac <__printf+0x2a4>
    80003954:	00003517          	auipc	a0,0x3
    80003958:	72c50513          	addi	a0,a0,1836 # 80007080 <pr>
    8000395c:	00001097          	auipc	ra,0x1
    80003960:	94c080e7          	jalr	-1716(ra) # 800042a8 <release>
    80003964:	e49ff06f          	j	800037ac <__printf+0x2a4>
    80003968:	f7843783          	ld	a5,-136(s0)
    8000396c:	03000513          	li	a0,48
    80003970:	01000d13          	li	s10,16
    80003974:	00878713          	addi	a4,a5,8
    80003978:	0007bc83          	ld	s9,0(a5)
    8000397c:	f6e43c23          	sd	a4,-136(s0)
    80003980:	00000097          	auipc	ra,0x0
    80003984:	9a4080e7          	jalr	-1628(ra) # 80003324 <consputc>
    80003988:	07800513          	li	a0,120
    8000398c:	00000097          	auipc	ra,0x0
    80003990:	998080e7          	jalr	-1640(ra) # 80003324 <consputc>
    80003994:	00002d97          	auipc	s11,0x2
    80003998:	8dcd8d93          	addi	s11,s11,-1828 # 80005270 <digits>
    8000399c:	03ccd793          	srli	a5,s9,0x3c
    800039a0:	00fd87b3          	add	a5,s11,a5
    800039a4:	0007c503          	lbu	a0,0(a5)
    800039a8:	fffd0d1b          	addiw	s10,s10,-1
    800039ac:	004c9c93          	slli	s9,s9,0x4
    800039b0:	00000097          	auipc	ra,0x0
    800039b4:	974080e7          	jalr	-1676(ra) # 80003324 <consputc>
    800039b8:	fe0d12e3          	bnez	s10,8000399c <__printf+0x494>
    800039bc:	f8dff06f          	j	80003948 <__printf+0x440>
    800039c0:	f7843783          	ld	a5,-136(s0)
    800039c4:	0007bc83          	ld	s9,0(a5)
    800039c8:	00878793          	addi	a5,a5,8
    800039cc:	f6f43c23          	sd	a5,-136(s0)
    800039d0:	000c9a63          	bnez	s9,800039e4 <__printf+0x4dc>
    800039d4:	1080006f          	j	80003adc <__printf+0x5d4>
    800039d8:	001c8c93          	addi	s9,s9,1
    800039dc:	00000097          	auipc	ra,0x0
    800039e0:	948080e7          	jalr	-1720(ra) # 80003324 <consputc>
    800039e4:	000cc503          	lbu	a0,0(s9)
    800039e8:	fe0518e3          	bnez	a0,800039d8 <__printf+0x4d0>
    800039ec:	f5dff06f          	j	80003948 <__printf+0x440>
    800039f0:	02500513          	li	a0,37
    800039f4:	00000097          	auipc	ra,0x0
    800039f8:	930080e7          	jalr	-1744(ra) # 80003324 <consputc>
    800039fc:	000c8513          	mv	a0,s9
    80003a00:	00000097          	auipc	ra,0x0
    80003a04:	924080e7          	jalr	-1756(ra) # 80003324 <consputc>
    80003a08:	f41ff06f          	j	80003948 <__printf+0x440>
    80003a0c:	02500513          	li	a0,37
    80003a10:	00000097          	auipc	ra,0x0
    80003a14:	914080e7          	jalr	-1772(ra) # 80003324 <consputc>
    80003a18:	f31ff06f          	j	80003948 <__printf+0x440>
    80003a1c:	00030513          	mv	a0,t1
    80003a20:	00000097          	auipc	ra,0x0
    80003a24:	7bc080e7          	jalr	1980(ra) # 800041dc <acquire>
    80003a28:	b4dff06f          	j	80003574 <__printf+0x6c>
    80003a2c:	40c0053b          	negw	a0,a2
    80003a30:	00a00713          	li	a4,10
    80003a34:	02e576bb          	remuw	a3,a0,a4
    80003a38:	00002d97          	auipc	s11,0x2
    80003a3c:	838d8d93          	addi	s11,s11,-1992 # 80005270 <digits>
    80003a40:	ff700593          	li	a1,-9
    80003a44:	02069693          	slli	a3,a3,0x20
    80003a48:	0206d693          	srli	a3,a3,0x20
    80003a4c:	00dd86b3          	add	a3,s11,a3
    80003a50:	0006c683          	lbu	a3,0(a3)
    80003a54:	02e557bb          	divuw	a5,a0,a4
    80003a58:	f8d40023          	sb	a3,-128(s0)
    80003a5c:	10b65e63          	bge	a2,a1,80003b78 <__printf+0x670>
    80003a60:	06300593          	li	a1,99
    80003a64:	02e7f6bb          	remuw	a3,a5,a4
    80003a68:	02069693          	slli	a3,a3,0x20
    80003a6c:	0206d693          	srli	a3,a3,0x20
    80003a70:	00dd86b3          	add	a3,s11,a3
    80003a74:	0006c683          	lbu	a3,0(a3)
    80003a78:	02e7d73b          	divuw	a4,a5,a4
    80003a7c:	00200793          	li	a5,2
    80003a80:	f8d400a3          	sb	a3,-127(s0)
    80003a84:	bca5ece3          	bltu	a1,a0,8000365c <__printf+0x154>
    80003a88:	ce5ff06f          	j	8000376c <__printf+0x264>
    80003a8c:	40e007bb          	negw	a5,a4
    80003a90:	00001d97          	auipc	s11,0x1
    80003a94:	7e0d8d93          	addi	s11,s11,2016 # 80005270 <digits>
    80003a98:	00f7f693          	andi	a3,a5,15
    80003a9c:	00dd86b3          	add	a3,s11,a3
    80003aa0:	0006c583          	lbu	a1,0(a3)
    80003aa4:	ff100613          	li	a2,-15
    80003aa8:	0047d69b          	srliw	a3,a5,0x4
    80003aac:	f8b40023          	sb	a1,-128(s0)
    80003ab0:	0047d59b          	srliw	a1,a5,0x4
    80003ab4:	0ac75e63          	bge	a4,a2,80003b70 <__printf+0x668>
    80003ab8:	00f6f693          	andi	a3,a3,15
    80003abc:	00dd86b3          	add	a3,s11,a3
    80003ac0:	0006c603          	lbu	a2,0(a3)
    80003ac4:	00f00693          	li	a3,15
    80003ac8:	0087d79b          	srliw	a5,a5,0x8
    80003acc:	f8c400a3          	sb	a2,-127(s0)
    80003ad0:	d8b6e4e3          	bltu	a3,a1,80003858 <__printf+0x350>
    80003ad4:	00200793          	li	a5,2
    80003ad8:	e2dff06f          	j	80003904 <__printf+0x3fc>
    80003adc:	00001c97          	auipc	s9,0x1
    80003ae0:	774c8c93          	addi	s9,s9,1908 # 80005250 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80003ae4:	02800513          	li	a0,40
    80003ae8:	ef1ff06f          	j	800039d8 <__printf+0x4d0>
    80003aec:	00700793          	li	a5,7
    80003af0:	00600c93          	li	s9,6
    80003af4:	e0dff06f          	j	80003900 <__printf+0x3f8>
    80003af8:	00700793          	li	a5,7
    80003afc:	00600c93          	li	s9,6
    80003b00:	c69ff06f          	j	80003768 <__printf+0x260>
    80003b04:	00300793          	li	a5,3
    80003b08:	00200c93          	li	s9,2
    80003b0c:	c5dff06f          	j	80003768 <__printf+0x260>
    80003b10:	00300793          	li	a5,3
    80003b14:	00200c93          	li	s9,2
    80003b18:	de9ff06f          	j	80003900 <__printf+0x3f8>
    80003b1c:	00400793          	li	a5,4
    80003b20:	00300c93          	li	s9,3
    80003b24:	dddff06f          	j	80003900 <__printf+0x3f8>
    80003b28:	00400793          	li	a5,4
    80003b2c:	00300c93          	li	s9,3
    80003b30:	c39ff06f          	j	80003768 <__printf+0x260>
    80003b34:	00500793          	li	a5,5
    80003b38:	00400c93          	li	s9,4
    80003b3c:	c2dff06f          	j	80003768 <__printf+0x260>
    80003b40:	00500793          	li	a5,5
    80003b44:	00400c93          	li	s9,4
    80003b48:	db9ff06f          	j	80003900 <__printf+0x3f8>
    80003b4c:	00600793          	li	a5,6
    80003b50:	00500c93          	li	s9,5
    80003b54:	dadff06f          	j	80003900 <__printf+0x3f8>
    80003b58:	00600793          	li	a5,6
    80003b5c:	00500c93          	li	s9,5
    80003b60:	c09ff06f          	j	80003768 <__printf+0x260>
    80003b64:	00800793          	li	a5,8
    80003b68:	00700c93          	li	s9,7
    80003b6c:	bfdff06f          	j	80003768 <__printf+0x260>
    80003b70:	00100793          	li	a5,1
    80003b74:	d91ff06f          	j	80003904 <__printf+0x3fc>
    80003b78:	00100793          	li	a5,1
    80003b7c:	bf1ff06f          	j	8000376c <__printf+0x264>
    80003b80:	00900793          	li	a5,9
    80003b84:	00800c93          	li	s9,8
    80003b88:	be1ff06f          	j	80003768 <__printf+0x260>
    80003b8c:	00001517          	auipc	a0,0x1
    80003b90:	6cc50513          	addi	a0,a0,1740 # 80005258 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80003b94:	00000097          	auipc	ra,0x0
    80003b98:	918080e7          	jalr	-1768(ra) # 800034ac <panic>

0000000080003b9c <printfinit>:
    80003b9c:	fe010113          	addi	sp,sp,-32
    80003ba0:	00813823          	sd	s0,16(sp)
    80003ba4:	00913423          	sd	s1,8(sp)
    80003ba8:	00113c23          	sd	ra,24(sp)
    80003bac:	02010413          	addi	s0,sp,32
    80003bb0:	00003497          	auipc	s1,0x3
    80003bb4:	4d048493          	addi	s1,s1,1232 # 80007080 <pr>
    80003bb8:	00048513          	mv	a0,s1
    80003bbc:	00001597          	auipc	a1,0x1
    80003bc0:	6ac58593          	addi	a1,a1,1708 # 80005268 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80003bc4:	00000097          	auipc	ra,0x0
    80003bc8:	5f4080e7          	jalr	1524(ra) # 800041b8 <initlock>
    80003bcc:	01813083          	ld	ra,24(sp)
    80003bd0:	01013403          	ld	s0,16(sp)
    80003bd4:	0004ac23          	sw	zero,24(s1)
    80003bd8:	00813483          	ld	s1,8(sp)
    80003bdc:	02010113          	addi	sp,sp,32
    80003be0:	00008067          	ret

0000000080003be4 <uartinit>:
    80003be4:	ff010113          	addi	sp,sp,-16
    80003be8:	00813423          	sd	s0,8(sp)
    80003bec:	01010413          	addi	s0,sp,16
    80003bf0:	100007b7          	lui	a5,0x10000
    80003bf4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003bf8:	f8000713          	li	a4,-128
    80003bfc:	00e781a3          	sb	a4,3(a5)
    80003c00:	00300713          	li	a4,3
    80003c04:	00e78023          	sb	a4,0(a5)
    80003c08:	000780a3          	sb	zero,1(a5)
    80003c0c:	00e781a3          	sb	a4,3(a5)
    80003c10:	00700693          	li	a3,7
    80003c14:	00d78123          	sb	a3,2(a5)
    80003c18:	00e780a3          	sb	a4,1(a5)
    80003c1c:	00813403          	ld	s0,8(sp)
    80003c20:	01010113          	addi	sp,sp,16
    80003c24:	00008067          	ret

0000000080003c28 <uartputc>:
    80003c28:	00002797          	auipc	a5,0x2
    80003c2c:	1e07a783          	lw	a5,480(a5) # 80005e08 <panicked>
    80003c30:	00078463          	beqz	a5,80003c38 <uartputc+0x10>
    80003c34:	0000006f          	j	80003c34 <uartputc+0xc>
    80003c38:	fd010113          	addi	sp,sp,-48
    80003c3c:	02813023          	sd	s0,32(sp)
    80003c40:	00913c23          	sd	s1,24(sp)
    80003c44:	01213823          	sd	s2,16(sp)
    80003c48:	01313423          	sd	s3,8(sp)
    80003c4c:	02113423          	sd	ra,40(sp)
    80003c50:	03010413          	addi	s0,sp,48
    80003c54:	00002917          	auipc	s2,0x2
    80003c58:	1bc90913          	addi	s2,s2,444 # 80005e10 <uart_tx_r>
    80003c5c:	00093783          	ld	a5,0(s2)
    80003c60:	00002497          	auipc	s1,0x2
    80003c64:	1b848493          	addi	s1,s1,440 # 80005e18 <uart_tx_w>
    80003c68:	0004b703          	ld	a4,0(s1)
    80003c6c:	02078693          	addi	a3,a5,32
    80003c70:	00050993          	mv	s3,a0
    80003c74:	02e69c63          	bne	a3,a4,80003cac <uartputc+0x84>
    80003c78:	00001097          	auipc	ra,0x1
    80003c7c:	834080e7          	jalr	-1996(ra) # 800044ac <push_on>
    80003c80:	00093783          	ld	a5,0(s2)
    80003c84:	0004b703          	ld	a4,0(s1)
    80003c88:	02078793          	addi	a5,a5,32
    80003c8c:	00e79463          	bne	a5,a4,80003c94 <uartputc+0x6c>
    80003c90:	0000006f          	j	80003c90 <uartputc+0x68>
    80003c94:	00001097          	auipc	ra,0x1
    80003c98:	88c080e7          	jalr	-1908(ra) # 80004520 <pop_on>
    80003c9c:	00093783          	ld	a5,0(s2)
    80003ca0:	0004b703          	ld	a4,0(s1)
    80003ca4:	02078693          	addi	a3,a5,32
    80003ca8:	fce688e3          	beq	a3,a4,80003c78 <uartputc+0x50>
    80003cac:	01f77693          	andi	a3,a4,31
    80003cb0:	00003597          	auipc	a1,0x3
    80003cb4:	3f058593          	addi	a1,a1,1008 # 800070a0 <uart_tx_buf>
    80003cb8:	00d586b3          	add	a3,a1,a3
    80003cbc:	00170713          	addi	a4,a4,1
    80003cc0:	01368023          	sb	s3,0(a3)
    80003cc4:	00e4b023          	sd	a4,0(s1)
    80003cc8:	10000637          	lui	a2,0x10000
    80003ccc:	02f71063          	bne	a4,a5,80003cec <uartputc+0xc4>
    80003cd0:	0340006f          	j	80003d04 <uartputc+0xdc>
    80003cd4:	00074703          	lbu	a4,0(a4)
    80003cd8:	00f93023          	sd	a5,0(s2)
    80003cdc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003ce0:	00093783          	ld	a5,0(s2)
    80003ce4:	0004b703          	ld	a4,0(s1)
    80003ce8:	00f70e63          	beq	a4,a5,80003d04 <uartputc+0xdc>
    80003cec:	00564683          	lbu	a3,5(a2)
    80003cf0:	01f7f713          	andi	a4,a5,31
    80003cf4:	00e58733          	add	a4,a1,a4
    80003cf8:	0206f693          	andi	a3,a3,32
    80003cfc:	00178793          	addi	a5,a5,1
    80003d00:	fc069ae3          	bnez	a3,80003cd4 <uartputc+0xac>
    80003d04:	02813083          	ld	ra,40(sp)
    80003d08:	02013403          	ld	s0,32(sp)
    80003d0c:	01813483          	ld	s1,24(sp)
    80003d10:	01013903          	ld	s2,16(sp)
    80003d14:	00813983          	ld	s3,8(sp)
    80003d18:	03010113          	addi	sp,sp,48
    80003d1c:	00008067          	ret

0000000080003d20 <uartputc_sync>:
    80003d20:	ff010113          	addi	sp,sp,-16
    80003d24:	00813423          	sd	s0,8(sp)
    80003d28:	01010413          	addi	s0,sp,16
    80003d2c:	00002717          	auipc	a4,0x2
    80003d30:	0dc72703          	lw	a4,220(a4) # 80005e08 <panicked>
    80003d34:	02071663          	bnez	a4,80003d60 <uartputc_sync+0x40>
    80003d38:	00050793          	mv	a5,a0
    80003d3c:	100006b7          	lui	a3,0x10000
    80003d40:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003d44:	02077713          	andi	a4,a4,32
    80003d48:	fe070ce3          	beqz	a4,80003d40 <uartputc_sync+0x20>
    80003d4c:	0ff7f793          	andi	a5,a5,255
    80003d50:	00f68023          	sb	a5,0(a3)
    80003d54:	00813403          	ld	s0,8(sp)
    80003d58:	01010113          	addi	sp,sp,16
    80003d5c:	00008067          	ret
    80003d60:	0000006f          	j	80003d60 <uartputc_sync+0x40>

0000000080003d64 <uartstart>:
    80003d64:	ff010113          	addi	sp,sp,-16
    80003d68:	00813423          	sd	s0,8(sp)
    80003d6c:	01010413          	addi	s0,sp,16
    80003d70:	00002617          	auipc	a2,0x2
    80003d74:	0a060613          	addi	a2,a2,160 # 80005e10 <uart_tx_r>
    80003d78:	00002517          	auipc	a0,0x2
    80003d7c:	0a050513          	addi	a0,a0,160 # 80005e18 <uart_tx_w>
    80003d80:	00063783          	ld	a5,0(a2)
    80003d84:	00053703          	ld	a4,0(a0)
    80003d88:	04f70263          	beq	a4,a5,80003dcc <uartstart+0x68>
    80003d8c:	100005b7          	lui	a1,0x10000
    80003d90:	00003817          	auipc	a6,0x3
    80003d94:	31080813          	addi	a6,a6,784 # 800070a0 <uart_tx_buf>
    80003d98:	01c0006f          	j	80003db4 <uartstart+0x50>
    80003d9c:	0006c703          	lbu	a4,0(a3)
    80003da0:	00f63023          	sd	a5,0(a2)
    80003da4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003da8:	00063783          	ld	a5,0(a2)
    80003dac:	00053703          	ld	a4,0(a0)
    80003db0:	00f70e63          	beq	a4,a5,80003dcc <uartstart+0x68>
    80003db4:	01f7f713          	andi	a4,a5,31
    80003db8:	00e806b3          	add	a3,a6,a4
    80003dbc:	0055c703          	lbu	a4,5(a1)
    80003dc0:	00178793          	addi	a5,a5,1
    80003dc4:	02077713          	andi	a4,a4,32
    80003dc8:	fc071ae3          	bnez	a4,80003d9c <uartstart+0x38>
    80003dcc:	00813403          	ld	s0,8(sp)
    80003dd0:	01010113          	addi	sp,sp,16
    80003dd4:	00008067          	ret

0000000080003dd8 <uartgetc>:
    80003dd8:	ff010113          	addi	sp,sp,-16
    80003ddc:	00813423          	sd	s0,8(sp)
    80003de0:	01010413          	addi	s0,sp,16
    80003de4:	10000737          	lui	a4,0x10000
    80003de8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003dec:	0017f793          	andi	a5,a5,1
    80003df0:	00078c63          	beqz	a5,80003e08 <uartgetc+0x30>
    80003df4:	00074503          	lbu	a0,0(a4)
    80003df8:	0ff57513          	andi	a0,a0,255
    80003dfc:	00813403          	ld	s0,8(sp)
    80003e00:	01010113          	addi	sp,sp,16
    80003e04:	00008067          	ret
    80003e08:	fff00513          	li	a0,-1
    80003e0c:	ff1ff06f          	j	80003dfc <uartgetc+0x24>

0000000080003e10 <uartintr>:
    80003e10:	100007b7          	lui	a5,0x10000
    80003e14:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003e18:	0017f793          	andi	a5,a5,1
    80003e1c:	0a078463          	beqz	a5,80003ec4 <uartintr+0xb4>
    80003e20:	fe010113          	addi	sp,sp,-32
    80003e24:	00813823          	sd	s0,16(sp)
    80003e28:	00913423          	sd	s1,8(sp)
    80003e2c:	00113c23          	sd	ra,24(sp)
    80003e30:	02010413          	addi	s0,sp,32
    80003e34:	100004b7          	lui	s1,0x10000
    80003e38:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003e3c:	0ff57513          	andi	a0,a0,255
    80003e40:	fffff097          	auipc	ra,0xfffff
    80003e44:	534080e7          	jalr	1332(ra) # 80003374 <consoleintr>
    80003e48:	0054c783          	lbu	a5,5(s1)
    80003e4c:	0017f793          	andi	a5,a5,1
    80003e50:	fe0794e3          	bnez	a5,80003e38 <uartintr+0x28>
    80003e54:	00002617          	auipc	a2,0x2
    80003e58:	fbc60613          	addi	a2,a2,-68 # 80005e10 <uart_tx_r>
    80003e5c:	00002517          	auipc	a0,0x2
    80003e60:	fbc50513          	addi	a0,a0,-68 # 80005e18 <uart_tx_w>
    80003e64:	00063783          	ld	a5,0(a2)
    80003e68:	00053703          	ld	a4,0(a0)
    80003e6c:	04f70263          	beq	a4,a5,80003eb0 <uartintr+0xa0>
    80003e70:	100005b7          	lui	a1,0x10000
    80003e74:	00003817          	auipc	a6,0x3
    80003e78:	22c80813          	addi	a6,a6,556 # 800070a0 <uart_tx_buf>
    80003e7c:	01c0006f          	j	80003e98 <uartintr+0x88>
    80003e80:	0006c703          	lbu	a4,0(a3)
    80003e84:	00f63023          	sd	a5,0(a2)
    80003e88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003e8c:	00063783          	ld	a5,0(a2)
    80003e90:	00053703          	ld	a4,0(a0)
    80003e94:	00f70e63          	beq	a4,a5,80003eb0 <uartintr+0xa0>
    80003e98:	01f7f713          	andi	a4,a5,31
    80003e9c:	00e806b3          	add	a3,a6,a4
    80003ea0:	0055c703          	lbu	a4,5(a1)
    80003ea4:	00178793          	addi	a5,a5,1
    80003ea8:	02077713          	andi	a4,a4,32
    80003eac:	fc071ae3          	bnez	a4,80003e80 <uartintr+0x70>
    80003eb0:	01813083          	ld	ra,24(sp)
    80003eb4:	01013403          	ld	s0,16(sp)
    80003eb8:	00813483          	ld	s1,8(sp)
    80003ebc:	02010113          	addi	sp,sp,32
    80003ec0:	00008067          	ret
    80003ec4:	00002617          	auipc	a2,0x2
    80003ec8:	f4c60613          	addi	a2,a2,-180 # 80005e10 <uart_tx_r>
    80003ecc:	00002517          	auipc	a0,0x2
    80003ed0:	f4c50513          	addi	a0,a0,-180 # 80005e18 <uart_tx_w>
    80003ed4:	00063783          	ld	a5,0(a2)
    80003ed8:	00053703          	ld	a4,0(a0)
    80003edc:	04f70263          	beq	a4,a5,80003f20 <uartintr+0x110>
    80003ee0:	100005b7          	lui	a1,0x10000
    80003ee4:	00003817          	auipc	a6,0x3
    80003ee8:	1bc80813          	addi	a6,a6,444 # 800070a0 <uart_tx_buf>
    80003eec:	01c0006f          	j	80003f08 <uartintr+0xf8>
    80003ef0:	0006c703          	lbu	a4,0(a3)
    80003ef4:	00f63023          	sd	a5,0(a2)
    80003ef8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003efc:	00063783          	ld	a5,0(a2)
    80003f00:	00053703          	ld	a4,0(a0)
    80003f04:	02f70063          	beq	a4,a5,80003f24 <uartintr+0x114>
    80003f08:	01f7f713          	andi	a4,a5,31
    80003f0c:	00e806b3          	add	a3,a6,a4
    80003f10:	0055c703          	lbu	a4,5(a1)
    80003f14:	00178793          	addi	a5,a5,1
    80003f18:	02077713          	andi	a4,a4,32
    80003f1c:	fc071ae3          	bnez	a4,80003ef0 <uartintr+0xe0>
    80003f20:	00008067          	ret
    80003f24:	00008067          	ret

0000000080003f28 <kinit>:
    80003f28:	fc010113          	addi	sp,sp,-64
    80003f2c:	02913423          	sd	s1,40(sp)
    80003f30:	fffff7b7          	lui	a5,0xfffff
    80003f34:	00004497          	auipc	s1,0x4
    80003f38:	18b48493          	addi	s1,s1,395 # 800080bf <end+0xfff>
    80003f3c:	02813823          	sd	s0,48(sp)
    80003f40:	01313c23          	sd	s3,24(sp)
    80003f44:	00f4f4b3          	and	s1,s1,a5
    80003f48:	02113c23          	sd	ra,56(sp)
    80003f4c:	03213023          	sd	s2,32(sp)
    80003f50:	01413823          	sd	s4,16(sp)
    80003f54:	01513423          	sd	s5,8(sp)
    80003f58:	04010413          	addi	s0,sp,64
    80003f5c:	000017b7          	lui	a5,0x1
    80003f60:	01100993          	li	s3,17
    80003f64:	00f487b3          	add	a5,s1,a5
    80003f68:	01b99993          	slli	s3,s3,0x1b
    80003f6c:	06f9e063          	bltu	s3,a5,80003fcc <kinit+0xa4>
    80003f70:	00003a97          	auipc	s5,0x3
    80003f74:	150a8a93          	addi	s5,s5,336 # 800070c0 <end>
    80003f78:	0754ec63          	bltu	s1,s5,80003ff0 <kinit+0xc8>
    80003f7c:	0734fa63          	bgeu	s1,s3,80003ff0 <kinit+0xc8>
    80003f80:	00088a37          	lui	s4,0x88
    80003f84:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003f88:	00002917          	auipc	s2,0x2
    80003f8c:	e9890913          	addi	s2,s2,-360 # 80005e20 <kmem>
    80003f90:	00ca1a13          	slli	s4,s4,0xc
    80003f94:	0140006f          	j	80003fa8 <kinit+0x80>
    80003f98:	000017b7          	lui	a5,0x1
    80003f9c:	00f484b3          	add	s1,s1,a5
    80003fa0:	0554e863          	bltu	s1,s5,80003ff0 <kinit+0xc8>
    80003fa4:	0534f663          	bgeu	s1,s3,80003ff0 <kinit+0xc8>
    80003fa8:	00001637          	lui	a2,0x1
    80003fac:	00100593          	li	a1,1
    80003fb0:	00048513          	mv	a0,s1
    80003fb4:	00000097          	auipc	ra,0x0
    80003fb8:	5e4080e7          	jalr	1508(ra) # 80004598 <__memset>
    80003fbc:	00093783          	ld	a5,0(s2)
    80003fc0:	00f4b023          	sd	a5,0(s1)
    80003fc4:	00993023          	sd	s1,0(s2)
    80003fc8:	fd4498e3          	bne	s1,s4,80003f98 <kinit+0x70>
    80003fcc:	03813083          	ld	ra,56(sp)
    80003fd0:	03013403          	ld	s0,48(sp)
    80003fd4:	02813483          	ld	s1,40(sp)
    80003fd8:	02013903          	ld	s2,32(sp)
    80003fdc:	01813983          	ld	s3,24(sp)
    80003fe0:	01013a03          	ld	s4,16(sp)
    80003fe4:	00813a83          	ld	s5,8(sp)
    80003fe8:	04010113          	addi	sp,sp,64
    80003fec:	00008067          	ret
    80003ff0:	00001517          	auipc	a0,0x1
    80003ff4:	29850513          	addi	a0,a0,664 # 80005288 <digits+0x18>
    80003ff8:	fffff097          	auipc	ra,0xfffff
    80003ffc:	4b4080e7          	jalr	1204(ra) # 800034ac <panic>

0000000080004000 <freerange>:
    80004000:	fc010113          	addi	sp,sp,-64
    80004004:	000017b7          	lui	a5,0x1
    80004008:	02913423          	sd	s1,40(sp)
    8000400c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004010:	009504b3          	add	s1,a0,s1
    80004014:	fffff537          	lui	a0,0xfffff
    80004018:	02813823          	sd	s0,48(sp)
    8000401c:	02113c23          	sd	ra,56(sp)
    80004020:	03213023          	sd	s2,32(sp)
    80004024:	01313c23          	sd	s3,24(sp)
    80004028:	01413823          	sd	s4,16(sp)
    8000402c:	01513423          	sd	s5,8(sp)
    80004030:	01613023          	sd	s6,0(sp)
    80004034:	04010413          	addi	s0,sp,64
    80004038:	00a4f4b3          	and	s1,s1,a0
    8000403c:	00f487b3          	add	a5,s1,a5
    80004040:	06f5e463          	bltu	a1,a5,800040a8 <freerange+0xa8>
    80004044:	00003a97          	auipc	s5,0x3
    80004048:	07ca8a93          	addi	s5,s5,124 # 800070c0 <end>
    8000404c:	0954e263          	bltu	s1,s5,800040d0 <freerange+0xd0>
    80004050:	01100993          	li	s3,17
    80004054:	01b99993          	slli	s3,s3,0x1b
    80004058:	0734fc63          	bgeu	s1,s3,800040d0 <freerange+0xd0>
    8000405c:	00058a13          	mv	s4,a1
    80004060:	00002917          	auipc	s2,0x2
    80004064:	dc090913          	addi	s2,s2,-576 # 80005e20 <kmem>
    80004068:	00002b37          	lui	s6,0x2
    8000406c:	0140006f          	j	80004080 <freerange+0x80>
    80004070:	000017b7          	lui	a5,0x1
    80004074:	00f484b3          	add	s1,s1,a5
    80004078:	0554ec63          	bltu	s1,s5,800040d0 <freerange+0xd0>
    8000407c:	0534fa63          	bgeu	s1,s3,800040d0 <freerange+0xd0>
    80004080:	00001637          	lui	a2,0x1
    80004084:	00100593          	li	a1,1
    80004088:	00048513          	mv	a0,s1
    8000408c:	00000097          	auipc	ra,0x0
    80004090:	50c080e7          	jalr	1292(ra) # 80004598 <__memset>
    80004094:	00093703          	ld	a4,0(s2)
    80004098:	016487b3          	add	a5,s1,s6
    8000409c:	00e4b023          	sd	a4,0(s1)
    800040a0:	00993023          	sd	s1,0(s2)
    800040a4:	fcfa76e3          	bgeu	s4,a5,80004070 <freerange+0x70>
    800040a8:	03813083          	ld	ra,56(sp)
    800040ac:	03013403          	ld	s0,48(sp)
    800040b0:	02813483          	ld	s1,40(sp)
    800040b4:	02013903          	ld	s2,32(sp)
    800040b8:	01813983          	ld	s3,24(sp)
    800040bc:	01013a03          	ld	s4,16(sp)
    800040c0:	00813a83          	ld	s5,8(sp)
    800040c4:	00013b03          	ld	s6,0(sp)
    800040c8:	04010113          	addi	sp,sp,64
    800040cc:	00008067          	ret
    800040d0:	00001517          	auipc	a0,0x1
    800040d4:	1b850513          	addi	a0,a0,440 # 80005288 <digits+0x18>
    800040d8:	fffff097          	auipc	ra,0xfffff
    800040dc:	3d4080e7          	jalr	980(ra) # 800034ac <panic>

00000000800040e0 <kfree>:
    800040e0:	fe010113          	addi	sp,sp,-32
    800040e4:	00813823          	sd	s0,16(sp)
    800040e8:	00113c23          	sd	ra,24(sp)
    800040ec:	00913423          	sd	s1,8(sp)
    800040f0:	02010413          	addi	s0,sp,32
    800040f4:	03451793          	slli	a5,a0,0x34
    800040f8:	04079c63          	bnez	a5,80004150 <kfree+0x70>
    800040fc:	00003797          	auipc	a5,0x3
    80004100:	fc478793          	addi	a5,a5,-60 # 800070c0 <end>
    80004104:	00050493          	mv	s1,a0
    80004108:	04f56463          	bltu	a0,a5,80004150 <kfree+0x70>
    8000410c:	01100793          	li	a5,17
    80004110:	01b79793          	slli	a5,a5,0x1b
    80004114:	02f57e63          	bgeu	a0,a5,80004150 <kfree+0x70>
    80004118:	00001637          	lui	a2,0x1
    8000411c:	00100593          	li	a1,1
    80004120:	00000097          	auipc	ra,0x0
    80004124:	478080e7          	jalr	1144(ra) # 80004598 <__memset>
    80004128:	00002797          	auipc	a5,0x2
    8000412c:	cf878793          	addi	a5,a5,-776 # 80005e20 <kmem>
    80004130:	0007b703          	ld	a4,0(a5)
    80004134:	01813083          	ld	ra,24(sp)
    80004138:	01013403          	ld	s0,16(sp)
    8000413c:	00e4b023          	sd	a4,0(s1)
    80004140:	0097b023          	sd	s1,0(a5)
    80004144:	00813483          	ld	s1,8(sp)
    80004148:	02010113          	addi	sp,sp,32
    8000414c:	00008067          	ret
    80004150:	00001517          	auipc	a0,0x1
    80004154:	13850513          	addi	a0,a0,312 # 80005288 <digits+0x18>
    80004158:	fffff097          	auipc	ra,0xfffff
    8000415c:	354080e7          	jalr	852(ra) # 800034ac <panic>

0000000080004160 <kalloc>:
    80004160:	fe010113          	addi	sp,sp,-32
    80004164:	00813823          	sd	s0,16(sp)
    80004168:	00913423          	sd	s1,8(sp)
    8000416c:	00113c23          	sd	ra,24(sp)
    80004170:	02010413          	addi	s0,sp,32
    80004174:	00002797          	auipc	a5,0x2
    80004178:	cac78793          	addi	a5,a5,-852 # 80005e20 <kmem>
    8000417c:	0007b483          	ld	s1,0(a5)
    80004180:	02048063          	beqz	s1,800041a0 <kalloc+0x40>
    80004184:	0004b703          	ld	a4,0(s1)
    80004188:	00001637          	lui	a2,0x1
    8000418c:	00500593          	li	a1,5
    80004190:	00048513          	mv	a0,s1
    80004194:	00e7b023          	sd	a4,0(a5)
    80004198:	00000097          	auipc	ra,0x0
    8000419c:	400080e7          	jalr	1024(ra) # 80004598 <__memset>
    800041a0:	01813083          	ld	ra,24(sp)
    800041a4:	01013403          	ld	s0,16(sp)
    800041a8:	00048513          	mv	a0,s1
    800041ac:	00813483          	ld	s1,8(sp)
    800041b0:	02010113          	addi	sp,sp,32
    800041b4:	00008067          	ret

00000000800041b8 <initlock>:
    800041b8:	ff010113          	addi	sp,sp,-16
    800041bc:	00813423          	sd	s0,8(sp)
    800041c0:	01010413          	addi	s0,sp,16
    800041c4:	00813403          	ld	s0,8(sp)
    800041c8:	00b53423          	sd	a1,8(a0)
    800041cc:	00052023          	sw	zero,0(a0)
    800041d0:	00053823          	sd	zero,16(a0)
    800041d4:	01010113          	addi	sp,sp,16
    800041d8:	00008067          	ret

00000000800041dc <acquire>:
    800041dc:	fe010113          	addi	sp,sp,-32
    800041e0:	00813823          	sd	s0,16(sp)
    800041e4:	00913423          	sd	s1,8(sp)
    800041e8:	00113c23          	sd	ra,24(sp)
    800041ec:	01213023          	sd	s2,0(sp)
    800041f0:	02010413          	addi	s0,sp,32
    800041f4:	00050493          	mv	s1,a0
    800041f8:	10002973          	csrr	s2,sstatus
    800041fc:	100027f3          	csrr	a5,sstatus
    80004200:	ffd7f793          	andi	a5,a5,-3
    80004204:	10079073          	csrw	sstatus,a5
    80004208:	fffff097          	auipc	ra,0xfffff
    8000420c:	8e8080e7          	jalr	-1816(ra) # 80002af0 <mycpu>
    80004210:	07852783          	lw	a5,120(a0)
    80004214:	06078e63          	beqz	a5,80004290 <acquire+0xb4>
    80004218:	fffff097          	auipc	ra,0xfffff
    8000421c:	8d8080e7          	jalr	-1832(ra) # 80002af0 <mycpu>
    80004220:	07852783          	lw	a5,120(a0)
    80004224:	0004a703          	lw	a4,0(s1)
    80004228:	0017879b          	addiw	a5,a5,1
    8000422c:	06f52c23          	sw	a5,120(a0)
    80004230:	04071063          	bnez	a4,80004270 <acquire+0x94>
    80004234:	00100713          	li	a4,1
    80004238:	00070793          	mv	a5,a4
    8000423c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004240:	0007879b          	sext.w	a5,a5
    80004244:	fe079ae3          	bnez	a5,80004238 <acquire+0x5c>
    80004248:	0ff0000f          	fence
    8000424c:	fffff097          	auipc	ra,0xfffff
    80004250:	8a4080e7          	jalr	-1884(ra) # 80002af0 <mycpu>
    80004254:	01813083          	ld	ra,24(sp)
    80004258:	01013403          	ld	s0,16(sp)
    8000425c:	00a4b823          	sd	a0,16(s1)
    80004260:	00013903          	ld	s2,0(sp)
    80004264:	00813483          	ld	s1,8(sp)
    80004268:	02010113          	addi	sp,sp,32
    8000426c:	00008067          	ret
    80004270:	0104b903          	ld	s2,16(s1)
    80004274:	fffff097          	auipc	ra,0xfffff
    80004278:	87c080e7          	jalr	-1924(ra) # 80002af0 <mycpu>
    8000427c:	faa91ce3          	bne	s2,a0,80004234 <acquire+0x58>
    80004280:	00001517          	auipc	a0,0x1
    80004284:	01050513          	addi	a0,a0,16 # 80005290 <digits+0x20>
    80004288:	fffff097          	auipc	ra,0xfffff
    8000428c:	224080e7          	jalr	548(ra) # 800034ac <panic>
    80004290:	00195913          	srli	s2,s2,0x1
    80004294:	fffff097          	auipc	ra,0xfffff
    80004298:	85c080e7          	jalr	-1956(ra) # 80002af0 <mycpu>
    8000429c:	00197913          	andi	s2,s2,1
    800042a0:	07252e23          	sw	s2,124(a0)
    800042a4:	f75ff06f          	j	80004218 <acquire+0x3c>

00000000800042a8 <release>:
    800042a8:	fe010113          	addi	sp,sp,-32
    800042ac:	00813823          	sd	s0,16(sp)
    800042b0:	00113c23          	sd	ra,24(sp)
    800042b4:	00913423          	sd	s1,8(sp)
    800042b8:	01213023          	sd	s2,0(sp)
    800042bc:	02010413          	addi	s0,sp,32
    800042c0:	00052783          	lw	a5,0(a0)
    800042c4:	00079a63          	bnez	a5,800042d8 <release+0x30>
    800042c8:	00001517          	auipc	a0,0x1
    800042cc:	fd050513          	addi	a0,a0,-48 # 80005298 <digits+0x28>
    800042d0:	fffff097          	auipc	ra,0xfffff
    800042d4:	1dc080e7          	jalr	476(ra) # 800034ac <panic>
    800042d8:	01053903          	ld	s2,16(a0)
    800042dc:	00050493          	mv	s1,a0
    800042e0:	fffff097          	auipc	ra,0xfffff
    800042e4:	810080e7          	jalr	-2032(ra) # 80002af0 <mycpu>
    800042e8:	fea910e3          	bne	s2,a0,800042c8 <release+0x20>
    800042ec:	0004b823          	sd	zero,16(s1)
    800042f0:	0ff0000f          	fence
    800042f4:	0f50000f          	fence	iorw,ow
    800042f8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800042fc:	ffffe097          	auipc	ra,0xffffe
    80004300:	7f4080e7          	jalr	2036(ra) # 80002af0 <mycpu>
    80004304:	100027f3          	csrr	a5,sstatus
    80004308:	0027f793          	andi	a5,a5,2
    8000430c:	04079a63          	bnez	a5,80004360 <release+0xb8>
    80004310:	07852783          	lw	a5,120(a0)
    80004314:	02f05e63          	blez	a5,80004350 <release+0xa8>
    80004318:	fff7871b          	addiw	a4,a5,-1
    8000431c:	06e52c23          	sw	a4,120(a0)
    80004320:	00071c63          	bnez	a4,80004338 <release+0x90>
    80004324:	07c52783          	lw	a5,124(a0)
    80004328:	00078863          	beqz	a5,80004338 <release+0x90>
    8000432c:	100027f3          	csrr	a5,sstatus
    80004330:	0027e793          	ori	a5,a5,2
    80004334:	10079073          	csrw	sstatus,a5
    80004338:	01813083          	ld	ra,24(sp)
    8000433c:	01013403          	ld	s0,16(sp)
    80004340:	00813483          	ld	s1,8(sp)
    80004344:	00013903          	ld	s2,0(sp)
    80004348:	02010113          	addi	sp,sp,32
    8000434c:	00008067          	ret
    80004350:	00001517          	auipc	a0,0x1
    80004354:	f6850513          	addi	a0,a0,-152 # 800052b8 <digits+0x48>
    80004358:	fffff097          	auipc	ra,0xfffff
    8000435c:	154080e7          	jalr	340(ra) # 800034ac <panic>
    80004360:	00001517          	auipc	a0,0x1
    80004364:	f4050513          	addi	a0,a0,-192 # 800052a0 <digits+0x30>
    80004368:	fffff097          	auipc	ra,0xfffff
    8000436c:	144080e7          	jalr	324(ra) # 800034ac <panic>

0000000080004370 <holding>:
    80004370:	00052783          	lw	a5,0(a0)
    80004374:	00079663          	bnez	a5,80004380 <holding+0x10>
    80004378:	00000513          	li	a0,0
    8000437c:	00008067          	ret
    80004380:	fe010113          	addi	sp,sp,-32
    80004384:	00813823          	sd	s0,16(sp)
    80004388:	00913423          	sd	s1,8(sp)
    8000438c:	00113c23          	sd	ra,24(sp)
    80004390:	02010413          	addi	s0,sp,32
    80004394:	01053483          	ld	s1,16(a0)
    80004398:	ffffe097          	auipc	ra,0xffffe
    8000439c:	758080e7          	jalr	1880(ra) # 80002af0 <mycpu>
    800043a0:	01813083          	ld	ra,24(sp)
    800043a4:	01013403          	ld	s0,16(sp)
    800043a8:	40a48533          	sub	a0,s1,a0
    800043ac:	00153513          	seqz	a0,a0
    800043b0:	00813483          	ld	s1,8(sp)
    800043b4:	02010113          	addi	sp,sp,32
    800043b8:	00008067          	ret

00000000800043bc <push_off>:
    800043bc:	fe010113          	addi	sp,sp,-32
    800043c0:	00813823          	sd	s0,16(sp)
    800043c4:	00113c23          	sd	ra,24(sp)
    800043c8:	00913423          	sd	s1,8(sp)
    800043cc:	02010413          	addi	s0,sp,32
    800043d0:	100024f3          	csrr	s1,sstatus
    800043d4:	100027f3          	csrr	a5,sstatus
    800043d8:	ffd7f793          	andi	a5,a5,-3
    800043dc:	10079073          	csrw	sstatus,a5
    800043e0:	ffffe097          	auipc	ra,0xffffe
    800043e4:	710080e7          	jalr	1808(ra) # 80002af0 <mycpu>
    800043e8:	07852783          	lw	a5,120(a0)
    800043ec:	02078663          	beqz	a5,80004418 <push_off+0x5c>
    800043f0:	ffffe097          	auipc	ra,0xffffe
    800043f4:	700080e7          	jalr	1792(ra) # 80002af0 <mycpu>
    800043f8:	07852783          	lw	a5,120(a0)
    800043fc:	01813083          	ld	ra,24(sp)
    80004400:	01013403          	ld	s0,16(sp)
    80004404:	0017879b          	addiw	a5,a5,1
    80004408:	06f52c23          	sw	a5,120(a0)
    8000440c:	00813483          	ld	s1,8(sp)
    80004410:	02010113          	addi	sp,sp,32
    80004414:	00008067          	ret
    80004418:	0014d493          	srli	s1,s1,0x1
    8000441c:	ffffe097          	auipc	ra,0xffffe
    80004420:	6d4080e7          	jalr	1748(ra) # 80002af0 <mycpu>
    80004424:	0014f493          	andi	s1,s1,1
    80004428:	06952e23          	sw	s1,124(a0)
    8000442c:	fc5ff06f          	j	800043f0 <push_off+0x34>

0000000080004430 <pop_off>:
    80004430:	ff010113          	addi	sp,sp,-16
    80004434:	00813023          	sd	s0,0(sp)
    80004438:	00113423          	sd	ra,8(sp)
    8000443c:	01010413          	addi	s0,sp,16
    80004440:	ffffe097          	auipc	ra,0xffffe
    80004444:	6b0080e7          	jalr	1712(ra) # 80002af0 <mycpu>
    80004448:	100027f3          	csrr	a5,sstatus
    8000444c:	0027f793          	andi	a5,a5,2
    80004450:	04079663          	bnez	a5,8000449c <pop_off+0x6c>
    80004454:	07852783          	lw	a5,120(a0)
    80004458:	02f05a63          	blez	a5,8000448c <pop_off+0x5c>
    8000445c:	fff7871b          	addiw	a4,a5,-1
    80004460:	06e52c23          	sw	a4,120(a0)
    80004464:	00071c63          	bnez	a4,8000447c <pop_off+0x4c>
    80004468:	07c52783          	lw	a5,124(a0)
    8000446c:	00078863          	beqz	a5,8000447c <pop_off+0x4c>
    80004470:	100027f3          	csrr	a5,sstatus
    80004474:	0027e793          	ori	a5,a5,2
    80004478:	10079073          	csrw	sstatus,a5
    8000447c:	00813083          	ld	ra,8(sp)
    80004480:	00013403          	ld	s0,0(sp)
    80004484:	01010113          	addi	sp,sp,16
    80004488:	00008067          	ret
    8000448c:	00001517          	auipc	a0,0x1
    80004490:	e2c50513          	addi	a0,a0,-468 # 800052b8 <digits+0x48>
    80004494:	fffff097          	auipc	ra,0xfffff
    80004498:	018080e7          	jalr	24(ra) # 800034ac <panic>
    8000449c:	00001517          	auipc	a0,0x1
    800044a0:	e0450513          	addi	a0,a0,-508 # 800052a0 <digits+0x30>
    800044a4:	fffff097          	auipc	ra,0xfffff
    800044a8:	008080e7          	jalr	8(ra) # 800034ac <panic>

00000000800044ac <push_on>:
    800044ac:	fe010113          	addi	sp,sp,-32
    800044b0:	00813823          	sd	s0,16(sp)
    800044b4:	00113c23          	sd	ra,24(sp)
    800044b8:	00913423          	sd	s1,8(sp)
    800044bc:	02010413          	addi	s0,sp,32
    800044c0:	100024f3          	csrr	s1,sstatus
    800044c4:	100027f3          	csrr	a5,sstatus
    800044c8:	0027e793          	ori	a5,a5,2
    800044cc:	10079073          	csrw	sstatus,a5
    800044d0:	ffffe097          	auipc	ra,0xffffe
    800044d4:	620080e7          	jalr	1568(ra) # 80002af0 <mycpu>
    800044d8:	07852783          	lw	a5,120(a0)
    800044dc:	02078663          	beqz	a5,80004508 <push_on+0x5c>
    800044e0:	ffffe097          	auipc	ra,0xffffe
    800044e4:	610080e7          	jalr	1552(ra) # 80002af0 <mycpu>
    800044e8:	07852783          	lw	a5,120(a0)
    800044ec:	01813083          	ld	ra,24(sp)
    800044f0:	01013403          	ld	s0,16(sp)
    800044f4:	0017879b          	addiw	a5,a5,1
    800044f8:	06f52c23          	sw	a5,120(a0)
    800044fc:	00813483          	ld	s1,8(sp)
    80004500:	02010113          	addi	sp,sp,32
    80004504:	00008067          	ret
    80004508:	0014d493          	srli	s1,s1,0x1
    8000450c:	ffffe097          	auipc	ra,0xffffe
    80004510:	5e4080e7          	jalr	1508(ra) # 80002af0 <mycpu>
    80004514:	0014f493          	andi	s1,s1,1
    80004518:	06952e23          	sw	s1,124(a0)
    8000451c:	fc5ff06f          	j	800044e0 <push_on+0x34>

0000000080004520 <pop_on>:
    80004520:	ff010113          	addi	sp,sp,-16
    80004524:	00813023          	sd	s0,0(sp)
    80004528:	00113423          	sd	ra,8(sp)
    8000452c:	01010413          	addi	s0,sp,16
    80004530:	ffffe097          	auipc	ra,0xffffe
    80004534:	5c0080e7          	jalr	1472(ra) # 80002af0 <mycpu>
    80004538:	100027f3          	csrr	a5,sstatus
    8000453c:	0027f793          	andi	a5,a5,2
    80004540:	04078463          	beqz	a5,80004588 <pop_on+0x68>
    80004544:	07852783          	lw	a5,120(a0)
    80004548:	02f05863          	blez	a5,80004578 <pop_on+0x58>
    8000454c:	fff7879b          	addiw	a5,a5,-1
    80004550:	06f52c23          	sw	a5,120(a0)
    80004554:	07853783          	ld	a5,120(a0)
    80004558:	00079863          	bnez	a5,80004568 <pop_on+0x48>
    8000455c:	100027f3          	csrr	a5,sstatus
    80004560:	ffd7f793          	andi	a5,a5,-3
    80004564:	10079073          	csrw	sstatus,a5
    80004568:	00813083          	ld	ra,8(sp)
    8000456c:	00013403          	ld	s0,0(sp)
    80004570:	01010113          	addi	sp,sp,16
    80004574:	00008067          	ret
    80004578:	00001517          	auipc	a0,0x1
    8000457c:	d6850513          	addi	a0,a0,-664 # 800052e0 <digits+0x70>
    80004580:	fffff097          	auipc	ra,0xfffff
    80004584:	f2c080e7          	jalr	-212(ra) # 800034ac <panic>
    80004588:	00001517          	auipc	a0,0x1
    8000458c:	d3850513          	addi	a0,a0,-712 # 800052c0 <digits+0x50>
    80004590:	fffff097          	auipc	ra,0xfffff
    80004594:	f1c080e7          	jalr	-228(ra) # 800034ac <panic>

0000000080004598 <__memset>:
    80004598:	ff010113          	addi	sp,sp,-16
    8000459c:	00813423          	sd	s0,8(sp)
    800045a0:	01010413          	addi	s0,sp,16
    800045a4:	1a060e63          	beqz	a2,80004760 <__memset+0x1c8>
    800045a8:	40a007b3          	neg	a5,a0
    800045ac:	0077f793          	andi	a5,a5,7
    800045b0:	00778693          	addi	a3,a5,7
    800045b4:	00b00813          	li	a6,11
    800045b8:	0ff5f593          	andi	a1,a1,255
    800045bc:	fff6071b          	addiw	a4,a2,-1
    800045c0:	1b06e663          	bltu	a3,a6,8000476c <__memset+0x1d4>
    800045c4:	1cd76463          	bltu	a4,a3,8000478c <__memset+0x1f4>
    800045c8:	1a078e63          	beqz	a5,80004784 <__memset+0x1ec>
    800045cc:	00b50023          	sb	a1,0(a0)
    800045d0:	00100713          	li	a4,1
    800045d4:	1ae78463          	beq	a5,a4,8000477c <__memset+0x1e4>
    800045d8:	00b500a3          	sb	a1,1(a0)
    800045dc:	00200713          	li	a4,2
    800045e0:	1ae78a63          	beq	a5,a4,80004794 <__memset+0x1fc>
    800045e4:	00b50123          	sb	a1,2(a0)
    800045e8:	00300713          	li	a4,3
    800045ec:	18e78463          	beq	a5,a4,80004774 <__memset+0x1dc>
    800045f0:	00b501a3          	sb	a1,3(a0)
    800045f4:	00400713          	li	a4,4
    800045f8:	1ae78263          	beq	a5,a4,8000479c <__memset+0x204>
    800045fc:	00b50223          	sb	a1,4(a0)
    80004600:	00500713          	li	a4,5
    80004604:	1ae78063          	beq	a5,a4,800047a4 <__memset+0x20c>
    80004608:	00b502a3          	sb	a1,5(a0)
    8000460c:	00700713          	li	a4,7
    80004610:	18e79e63          	bne	a5,a4,800047ac <__memset+0x214>
    80004614:	00b50323          	sb	a1,6(a0)
    80004618:	00700e93          	li	t4,7
    8000461c:	00859713          	slli	a4,a1,0x8
    80004620:	00e5e733          	or	a4,a1,a4
    80004624:	01059e13          	slli	t3,a1,0x10
    80004628:	01c76e33          	or	t3,a4,t3
    8000462c:	01859313          	slli	t1,a1,0x18
    80004630:	006e6333          	or	t1,t3,t1
    80004634:	02059893          	slli	a7,a1,0x20
    80004638:	40f60e3b          	subw	t3,a2,a5
    8000463c:	011368b3          	or	a7,t1,a7
    80004640:	02859813          	slli	a6,a1,0x28
    80004644:	0108e833          	or	a6,a7,a6
    80004648:	03059693          	slli	a3,a1,0x30
    8000464c:	003e589b          	srliw	a7,t3,0x3
    80004650:	00d866b3          	or	a3,a6,a3
    80004654:	03859713          	slli	a4,a1,0x38
    80004658:	00389813          	slli	a6,a7,0x3
    8000465c:	00f507b3          	add	a5,a0,a5
    80004660:	00e6e733          	or	a4,a3,a4
    80004664:	000e089b          	sext.w	a7,t3
    80004668:	00f806b3          	add	a3,a6,a5
    8000466c:	00e7b023          	sd	a4,0(a5)
    80004670:	00878793          	addi	a5,a5,8
    80004674:	fed79ce3          	bne	a5,a3,8000466c <__memset+0xd4>
    80004678:	ff8e7793          	andi	a5,t3,-8
    8000467c:	0007871b          	sext.w	a4,a5
    80004680:	01d787bb          	addw	a5,a5,t4
    80004684:	0ce88e63          	beq	a7,a4,80004760 <__memset+0x1c8>
    80004688:	00f50733          	add	a4,a0,a5
    8000468c:	00b70023          	sb	a1,0(a4)
    80004690:	0017871b          	addiw	a4,a5,1
    80004694:	0cc77663          	bgeu	a4,a2,80004760 <__memset+0x1c8>
    80004698:	00e50733          	add	a4,a0,a4
    8000469c:	00b70023          	sb	a1,0(a4)
    800046a0:	0027871b          	addiw	a4,a5,2
    800046a4:	0ac77e63          	bgeu	a4,a2,80004760 <__memset+0x1c8>
    800046a8:	00e50733          	add	a4,a0,a4
    800046ac:	00b70023          	sb	a1,0(a4)
    800046b0:	0037871b          	addiw	a4,a5,3
    800046b4:	0ac77663          	bgeu	a4,a2,80004760 <__memset+0x1c8>
    800046b8:	00e50733          	add	a4,a0,a4
    800046bc:	00b70023          	sb	a1,0(a4)
    800046c0:	0047871b          	addiw	a4,a5,4
    800046c4:	08c77e63          	bgeu	a4,a2,80004760 <__memset+0x1c8>
    800046c8:	00e50733          	add	a4,a0,a4
    800046cc:	00b70023          	sb	a1,0(a4)
    800046d0:	0057871b          	addiw	a4,a5,5
    800046d4:	08c77663          	bgeu	a4,a2,80004760 <__memset+0x1c8>
    800046d8:	00e50733          	add	a4,a0,a4
    800046dc:	00b70023          	sb	a1,0(a4)
    800046e0:	0067871b          	addiw	a4,a5,6
    800046e4:	06c77e63          	bgeu	a4,a2,80004760 <__memset+0x1c8>
    800046e8:	00e50733          	add	a4,a0,a4
    800046ec:	00b70023          	sb	a1,0(a4)
    800046f0:	0077871b          	addiw	a4,a5,7
    800046f4:	06c77663          	bgeu	a4,a2,80004760 <__memset+0x1c8>
    800046f8:	00e50733          	add	a4,a0,a4
    800046fc:	00b70023          	sb	a1,0(a4)
    80004700:	0087871b          	addiw	a4,a5,8
    80004704:	04c77e63          	bgeu	a4,a2,80004760 <__memset+0x1c8>
    80004708:	00e50733          	add	a4,a0,a4
    8000470c:	00b70023          	sb	a1,0(a4)
    80004710:	0097871b          	addiw	a4,a5,9
    80004714:	04c77663          	bgeu	a4,a2,80004760 <__memset+0x1c8>
    80004718:	00e50733          	add	a4,a0,a4
    8000471c:	00b70023          	sb	a1,0(a4)
    80004720:	00a7871b          	addiw	a4,a5,10
    80004724:	02c77e63          	bgeu	a4,a2,80004760 <__memset+0x1c8>
    80004728:	00e50733          	add	a4,a0,a4
    8000472c:	00b70023          	sb	a1,0(a4)
    80004730:	00b7871b          	addiw	a4,a5,11
    80004734:	02c77663          	bgeu	a4,a2,80004760 <__memset+0x1c8>
    80004738:	00e50733          	add	a4,a0,a4
    8000473c:	00b70023          	sb	a1,0(a4)
    80004740:	00c7871b          	addiw	a4,a5,12
    80004744:	00c77e63          	bgeu	a4,a2,80004760 <__memset+0x1c8>
    80004748:	00e50733          	add	a4,a0,a4
    8000474c:	00b70023          	sb	a1,0(a4)
    80004750:	00d7879b          	addiw	a5,a5,13
    80004754:	00c7f663          	bgeu	a5,a2,80004760 <__memset+0x1c8>
    80004758:	00f507b3          	add	a5,a0,a5
    8000475c:	00b78023          	sb	a1,0(a5)
    80004760:	00813403          	ld	s0,8(sp)
    80004764:	01010113          	addi	sp,sp,16
    80004768:	00008067          	ret
    8000476c:	00b00693          	li	a3,11
    80004770:	e55ff06f          	j	800045c4 <__memset+0x2c>
    80004774:	00300e93          	li	t4,3
    80004778:	ea5ff06f          	j	8000461c <__memset+0x84>
    8000477c:	00100e93          	li	t4,1
    80004780:	e9dff06f          	j	8000461c <__memset+0x84>
    80004784:	00000e93          	li	t4,0
    80004788:	e95ff06f          	j	8000461c <__memset+0x84>
    8000478c:	00000793          	li	a5,0
    80004790:	ef9ff06f          	j	80004688 <__memset+0xf0>
    80004794:	00200e93          	li	t4,2
    80004798:	e85ff06f          	j	8000461c <__memset+0x84>
    8000479c:	00400e93          	li	t4,4
    800047a0:	e7dff06f          	j	8000461c <__memset+0x84>
    800047a4:	00500e93          	li	t4,5
    800047a8:	e75ff06f          	j	8000461c <__memset+0x84>
    800047ac:	00600e93          	li	t4,6
    800047b0:	e6dff06f          	j	8000461c <__memset+0x84>

00000000800047b4 <__memmove>:
    800047b4:	ff010113          	addi	sp,sp,-16
    800047b8:	00813423          	sd	s0,8(sp)
    800047bc:	01010413          	addi	s0,sp,16
    800047c0:	0e060863          	beqz	a2,800048b0 <__memmove+0xfc>
    800047c4:	fff6069b          	addiw	a3,a2,-1
    800047c8:	0006881b          	sext.w	a6,a3
    800047cc:	0ea5e863          	bltu	a1,a0,800048bc <__memmove+0x108>
    800047d0:	00758713          	addi	a4,a1,7
    800047d4:	00a5e7b3          	or	a5,a1,a0
    800047d8:	40a70733          	sub	a4,a4,a0
    800047dc:	0077f793          	andi	a5,a5,7
    800047e0:	00f73713          	sltiu	a4,a4,15
    800047e4:	00174713          	xori	a4,a4,1
    800047e8:	0017b793          	seqz	a5,a5
    800047ec:	00e7f7b3          	and	a5,a5,a4
    800047f0:	10078863          	beqz	a5,80004900 <__memmove+0x14c>
    800047f4:	00900793          	li	a5,9
    800047f8:	1107f463          	bgeu	a5,a6,80004900 <__memmove+0x14c>
    800047fc:	0036581b          	srliw	a6,a2,0x3
    80004800:	fff8081b          	addiw	a6,a6,-1
    80004804:	02081813          	slli	a6,a6,0x20
    80004808:	01d85893          	srli	a7,a6,0x1d
    8000480c:	00858813          	addi	a6,a1,8
    80004810:	00058793          	mv	a5,a1
    80004814:	00050713          	mv	a4,a0
    80004818:	01088833          	add	a6,a7,a6
    8000481c:	0007b883          	ld	a7,0(a5)
    80004820:	00878793          	addi	a5,a5,8
    80004824:	00870713          	addi	a4,a4,8
    80004828:	ff173c23          	sd	a7,-8(a4)
    8000482c:	ff0798e3          	bne	a5,a6,8000481c <__memmove+0x68>
    80004830:	ff867713          	andi	a4,a2,-8
    80004834:	02071793          	slli	a5,a4,0x20
    80004838:	0207d793          	srli	a5,a5,0x20
    8000483c:	00f585b3          	add	a1,a1,a5
    80004840:	40e686bb          	subw	a3,a3,a4
    80004844:	00f507b3          	add	a5,a0,a5
    80004848:	06e60463          	beq	a2,a4,800048b0 <__memmove+0xfc>
    8000484c:	0005c703          	lbu	a4,0(a1)
    80004850:	00e78023          	sb	a4,0(a5)
    80004854:	04068e63          	beqz	a3,800048b0 <__memmove+0xfc>
    80004858:	0015c603          	lbu	a2,1(a1)
    8000485c:	00100713          	li	a4,1
    80004860:	00c780a3          	sb	a2,1(a5)
    80004864:	04e68663          	beq	a3,a4,800048b0 <__memmove+0xfc>
    80004868:	0025c603          	lbu	a2,2(a1)
    8000486c:	00200713          	li	a4,2
    80004870:	00c78123          	sb	a2,2(a5)
    80004874:	02e68e63          	beq	a3,a4,800048b0 <__memmove+0xfc>
    80004878:	0035c603          	lbu	a2,3(a1)
    8000487c:	00300713          	li	a4,3
    80004880:	00c781a3          	sb	a2,3(a5)
    80004884:	02e68663          	beq	a3,a4,800048b0 <__memmove+0xfc>
    80004888:	0045c603          	lbu	a2,4(a1)
    8000488c:	00400713          	li	a4,4
    80004890:	00c78223          	sb	a2,4(a5)
    80004894:	00e68e63          	beq	a3,a4,800048b0 <__memmove+0xfc>
    80004898:	0055c603          	lbu	a2,5(a1)
    8000489c:	00500713          	li	a4,5
    800048a0:	00c782a3          	sb	a2,5(a5)
    800048a4:	00e68663          	beq	a3,a4,800048b0 <__memmove+0xfc>
    800048a8:	0065c703          	lbu	a4,6(a1)
    800048ac:	00e78323          	sb	a4,6(a5)
    800048b0:	00813403          	ld	s0,8(sp)
    800048b4:	01010113          	addi	sp,sp,16
    800048b8:	00008067          	ret
    800048bc:	02061713          	slli	a4,a2,0x20
    800048c0:	02075713          	srli	a4,a4,0x20
    800048c4:	00e587b3          	add	a5,a1,a4
    800048c8:	f0f574e3          	bgeu	a0,a5,800047d0 <__memmove+0x1c>
    800048cc:	02069613          	slli	a2,a3,0x20
    800048d0:	02065613          	srli	a2,a2,0x20
    800048d4:	fff64613          	not	a2,a2
    800048d8:	00e50733          	add	a4,a0,a4
    800048dc:	00c78633          	add	a2,a5,a2
    800048e0:	fff7c683          	lbu	a3,-1(a5)
    800048e4:	fff78793          	addi	a5,a5,-1
    800048e8:	fff70713          	addi	a4,a4,-1
    800048ec:	00d70023          	sb	a3,0(a4)
    800048f0:	fec798e3          	bne	a5,a2,800048e0 <__memmove+0x12c>
    800048f4:	00813403          	ld	s0,8(sp)
    800048f8:	01010113          	addi	sp,sp,16
    800048fc:	00008067          	ret
    80004900:	02069713          	slli	a4,a3,0x20
    80004904:	02075713          	srli	a4,a4,0x20
    80004908:	00170713          	addi	a4,a4,1
    8000490c:	00e50733          	add	a4,a0,a4
    80004910:	00050793          	mv	a5,a0
    80004914:	0005c683          	lbu	a3,0(a1)
    80004918:	00178793          	addi	a5,a5,1
    8000491c:	00158593          	addi	a1,a1,1
    80004920:	fed78fa3          	sb	a3,-1(a5)
    80004924:	fee798e3          	bne	a5,a4,80004914 <__memmove+0x160>
    80004928:	f89ff06f          	j	800048b0 <__memmove+0xfc>

000000008000492c <__putc>:
    8000492c:	fe010113          	addi	sp,sp,-32
    80004930:	00813823          	sd	s0,16(sp)
    80004934:	00113c23          	sd	ra,24(sp)
    80004938:	02010413          	addi	s0,sp,32
    8000493c:	00050793          	mv	a5,a0
    80004940:	fef40593          	addi	a1,s0,-17
    80004944:	00100613          	li	a2,1
    80004948:	00000513          	li	a0,0
    8000494c:	fef407a3          	sb	a5,-17(s0)
    80004950:	fffff097          	auipc	ra,0xfffff
    80004954:	b3c080e7          	jalr	-1220(ra) # 8000348c <console_write>
    80004958:	01813083          	ld	ra,24(sp)
    8000495c:	01013403          	ld	s0,16(sp)
    80004960:	02010113          	addi	sp,sp,32
    80004964:	00008067          	ret

0000000080004968 <__getc>:
    80004968:	fe010113          	addi	sp,sp,-32
    8000496c:	00813823          	sd	s0,16(sp)
    80004970:	00113c23          	sd	ra,24(sp)
    80004974:	02010413          	addi	s0,sp,32
    80004978:	fe840593          	addi	a1,s0,-24
    8000497c:	00100613          	li	a2,1
    80004980:	00000513          	li	a0,0
    80004984:	fffff097          	auipc	ra,0xfffff
    80004988:	ae8080e7          	jalr	-1304(ra) # 8000346c <console_read>
    8000498c:	fe844503          	lbu	a0,-24(s0)
    80004990:	01813083          	ld	ra,24(sp)
    80004994:	01013403          	ld	s0,16(sp)
    80004998:	02010113          	addi	sp,sp,32
    8000499c:	00008067          	ret

00000000800049a0 <console_handler>:
    800049a0:	fe010113          	addi	sp,sp,-32
    800049a4:	00813823          	sd	s0,16(sp)
    800049a8:	00113c23          	sd	ra,24(sp)
    800049ac:	00913423          	sd	s1,8(sp)
    800049b0:	02010413          	addi	s0,sp,32
    800049b4:	14202773          	csrr	a4,scause
    800049b8:	100027f3          	csrr	a5,sstatus
    800049bc:	0027f793          	andi	a5,a5,2
    800049c0:	06079e63          	bnez	a5,80004a3c <console_handler+0x9c>
    800049c4:	00074c63          	bltz	a4,800049dc <console_handler+0x3c>
    800049c8:	01813083          	ld	ra,24(sp)
    800049cc:	01013403          	ld	s0,16(sp)
    800049d0:	00813483          	ld	s1,8(sp)
    800049d4:	02010113          	addi	sp,sp,32
    800049d8:	00008067          	ret
    800049dc:	0ff77713          	andi	a4,a4,255
    800049e0:	00900793          	li	a5,9
    800049e4:	fef712e3          	bne	a4,a5,800049c8 <console_handler+0x28>
    800049e8:	ffffe097          	auipc	ra,0xffffe
    800049ec:	6dc080e7          	jalr	1756(ra) # 800030c4 <plic_claim>
    800049f0:	00a00793          	li	a5,10
    800049f4:	00050493          	mv	s1,a0
    800049f8:	02f50c63          	beq	a0,a5,80004a30 <console_handler+0x90>
    800049fc:	fc0506e3          	beqz	a0,800049c8 <console_handler+0x28>
    80004a00:	00050593          	mv	a1,a0
    80004a04:	00000517          	auipc	a0,0x0
    80004a08:	7e450513          	addi	a0,a0,2020 # 800051e8 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80004a0c:	fffff097          	auipc	ra,0xfffff
    80004a10:	afc080e7          	jalr	-1284(ra) # 80003508 <__printf>
    80004a14:	01013403          	ld	s0,16(sp)
    80004a18:	01813083          	ld	ra,24(sp)
    80004a1c:	00048513          	mv	a0,s1
    80004a20:	00813483          	ld	s1,8(sp)
    80004a24:	02010113          	addi	sp,sp,32
    80004a28:	ffffe317          	auipc	t1,0xffffe
    80004a2c:	6d430067          	jr	1748(t1) # 800030fc <plic_complete>
    80004a30:	fffff097          	auipc	ra,0xfffff
    80004a34:	3e0080e7          	jalr	992(ra) # 80003e10 <uartintr>
    80004a38:	fddff06f          	j	80004a14 <console_handler+0x74>
    80004a3c:	00001517          	auipc	a0,0x1
    80004a40:	8ac50513          	addi	a0,a0,-1876 # 800052e8 <digits+0x78>
    80004a44:	fffff097          	auipc	ra,0xfffff
    80004a48:	a68080e7          	jalr	-1432(ra) # 800034ac <panic>
	...
