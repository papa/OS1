
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	b8013103          	ld	sp,-1152(sp) # 8000bb80 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7a0060ef          	jal	ra,800067bc <start>

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
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	2cd020ef          	jal	ra,80003b54 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001218:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000121c:	00b29a63          	bne	t0,a1,80001230 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001220:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001224:	fe029ae3          	bnez	t0,80001218 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001228:	00000513          	li	a0,0
    jr ra                  # Return.
    8000122c:	00008067          	ret

0000000080001230 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001230:	00100513          	li	a0,1
    80001234:	00008067          	ret

0000000080001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001238:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000123c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001240:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001244:	0085b083          	ld	ra,8(a1)

    ret
    80001248:	00008067          	ret

000000008000124c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000124c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001250:	00853083          	ld	ra,8(a0)

    80001254:	00008067          	ret

0000000080001258 <mem_alloc>:

#ifdef __cplusplus
extern "C"
#endif
void* mem_alloc(size_t size)
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001264:	03f50513          	addi	a0,a0,63
    80001268:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    8000126c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80001270:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80001274:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80001278:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    8000127c:	00813403          	ld	s0,8(sp)
    80001280:	01010113          	addi	sp,sp,16
    80001284:	00008067          	ret

0000000080001288 <mem_free>:

#ifdef __cplusplus
extern "C"
#endif
int mem_free(void* p)
{
    80001288:	ff010113          	addi	sp,sp,-16
    8000128c:	00813423          	sd	s0,8(sp)
    80001290:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80001294:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    80001298:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    8000129c:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800012a0:	00050513          	mv	a0,a0

    return result;
}
    800012a4:	0005051b          	sext.w	a0,a0
    800012a8:	00813403          	ld	s0,8(sp)
    800012ac:	01010113          	addi	sp,sp,16
    800012b0:	00008067          	ret

00000000800012b4 <thread_create>:

#ifdef __cplusplus
extern "C"
#endif
int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    800012b4:	fd010113          	addi	sp,sp,-48
    800012b8:	02113423          	sd	ra,40(sp)
    800012bc:	02813023          	sd	s0,32(sp)
    800012c0:	00913c23          	sd	s1,24(sp)
    800012c4:	01213823          	sd	s2,16(sp)
    800012c8:	01313423          	sd	s3,8(sp)
    800012cc:	03010413          	addi	s0,sp,48
    800012d0:	00050493          	mv	s1,a0
    800012d4:	00058913          	mv	s2,a1
    800012d8:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800012dc:	00001537          	lui	a0,0x1
    800012e0:	00000097          	auipc	ra,0x0
    800012e4:	f78080e7          	jalr	-136(ra) # 80001258 <mem_alloc>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    800012e8:	04050263          	beqz	a0,8000132c <thread_create+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800012ec:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800012f0:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800012f4:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800012f8:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800012fc:	01100793          	li	a5,17
    80001300:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    80001304:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001308:	00050513          	mv	a0,a0

    return result;
    8000130c:	0005051b          	sext.w	a0,a0
}
    80001310:	02813083          	ld	ra,40(sp)
    80001314:	02013403          	ld	s0,32(sp)
    80001318:	01813483          	ld	s1,24(sp)
    8000131c:	01013903          	ld	s2,16(sp)
    80001320:	00813983          	ld	s3,8(sp)
    80001324:	03010113          	addi	sp,sp,48
    80001328:	00008067          	ret
        return -1;
    8000132c:	fff00513          	li	a0,-1
    80001330:	fe1ff06f          	j	80001310 <thread_create+0x5c>

0000000080001334 <thread_dispatch>:

#ifdef __cplusplus
extern "C"
#endif
void thread_dispatch()
{
    80001334:	ff010113          	addi	sp,sp,-16
    80001338:	00813423          	sd	s0,8(sp)
    8000133c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001340:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001344:	00000073          	ecall
}
    80001348:	00813403          	ld	s0,8(sp)
    8000134c:	01010113          	addi	sp,sp,16
    80001350:	00008067          	ret

0000000080001354 <thread_exit>:

#ifdef __cplusplus
extern "C"
#endif
int thread_exit()
{
    80001354:	ff010113          	addi	sp,sp,-16
    80001358:	00813423          	sd	s0,8(sp)
    8000135c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80001360:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001364:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001368:	00050513          	mv	a0,a0
    return result;
}
    8000136c:	0005051b          	sext.w	a0,a0
    80001370:	00813403          	ld	s0,8(sp)
    80001374:	01010113          	addi	sp,sp,16
    80001378:	00008067          	ret

000000008000137c <sem_open>:

typedef void* sem_t;
int sem_open(sem_t* handle, unsigned int x)
{
    8000137c:	ff010113          	addi	sp,sp,-16
    80001380:	00813423          	sd	s0,8(sp)
    80001384:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    80001388:	02059593          	slli	a1,a1,0x20
    8000138c:	0205d593          	srli	a1,a1,0x20
    80001390:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001394:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80001398:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    8000139c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800013a0:	00050513          	mv	a0,a0
    return result;
}
    800013a4:	0005051b          	sext.w	a0,a0
    800013a8:	00813403          	ld	s0,8(sp)
    800013ac:	01010113          	addi	sp,sp,16
    800013b0:	00008067          	ret

00000000800013b4 <sem_close>:


int sem_close(sem_t handle)
{
    800013b4:	ff010113          	addi	sp,sp,-16
    800013b8:	00813423          	sd	s0,8(sp)
    800013bc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    800013c0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    800013c4:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    800013c8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800013cc:	00050513          	mv	a0,a0
    return result;
}
    800013d0:	0005051b          	sext.w	a0,a0
    800013d4:	00813403          	ld	s0,8(sp)
    800013d8:	01010113          	addi	sp,sp,16
    800013dc:	00008067          	ret

00000000800013e0 <sem_wait>:

int sem_wait(sem_t id)
{
    800013e0:	ff010113          	addi	sp,sp,-16
    800013e4:	00813423          	sd	s0,8(sp)
    800013e8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800013ec:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800013f0:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    800013f4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800013f8:	00050513          	mv	a0,a0
    return result;
}
    800013fc:	0005051b          	sext.w	a0,a0
    80001400:	00813403          	ld	s0,8(sp)
    80001404:	01010113          	addi	sp,sp,16
    80001408:	00008067          	ret

000000008000140c <sem_signal>:

int sem_signal(sem_t id)
{
    8000140c:	ff010113          	addi	sp,sp,-16
    80001410:	00813423          	sd	s0,8(sp)
    80001414:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    80001418:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    8000141c:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    80001420:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001424:	00050513          	mv	a0,a0
    return result;
}
    80001428:	0005051b          	sext.w	a0,a0
    8000142c:	00813403          	ld	s0,8(sp)
    80001430:	01010113          	addi	sp,sp,16
    80001434:	00008067          	ret

0000000080001438 <time_sleep>:

int time_sleep(uint64 time)
{
    80001438:	ff010113          	addi	sp,sp,-16
    8000143c:	00813423          	sd	s0,8(sp)
    80001440:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    80001444:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80001448:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    8000144c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001450:	00050513          	mv	a0,a0
    return result;
}
    80001454:	0005051b          	sext.w	a0,a0
    80001458:	00813403          	ld	s0,8(sp)
    8000145c:	01010113          	addi	sp,sp,16
    80001460:	00008067          	ret

0000000080001464 <thread_start>:

int thread_start(void* p)
{
    80001464:	ff010113          	addi	sp,sp,-16
    80001468:	00813423          	sd	s0,8(sp)
    8000146c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80001470:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    80001474:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    80001478:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000147c:	00050513          	mv	a0,a0
    return result;
}
    80001480:	0005051b          	sext.w	a0,a0
    80001484:	00813403          	ld	s0,8(sp)
    80001488:	01010113          	addi	sp,sp,16
    8000148c:	00008067          	ret

0000000080001490 <thread_make_pcb>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    80001490:	fd010113          	addi	sp,sp,-48
    80001494:	02113423          	sd	ra,40(sp)
    80001498:	02813023          	sd	s0,32(sp)
    8000149c:	00913c23          	sd	s1,24(sp)
    800014a0:	01213823          	sd	s2,16(sp)
    800014a4:	01313423          	sd	s3,8(sp)
    800014a8:	03010413          	addi	s0,sp,48
    800014ac:	00050493          	mv	s1,a0
    800014b0:	00058913          	mv	s2,a1
    800014b4:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800014b8:	00001537          	lui	a0,0x1
    800014bc:	00000097          	auipc	ra,0x0
    800014c0:	d9c080e7          	jalr	-612(ra) # 80001258 <mem_alloc>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    800014c4:	04050263          	beqz	a0,80001508 <thread_make_pcb+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800014c8:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800014cc:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800014d0:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800014d4:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800014d8:	01400793          	li	a5,20
    800014dc:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800014e0:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800014e4:	00050513          	mv	a0,a0
    return result;
    800014e8:	0005051b          	sext.w	a0,a0
}
    800014ec:	02813083          	ld	ra,40(sp)
    800014f0:	02013403          	ld	s0,32(sp)
    800014f4:	01813483          	ld	s1,24(sp)
    800014f8:	01013903          	ld	s2,16(sp)
    800014fc:	00813983          	ld	s3,8(sp)
    80001500:	03010113          	addi	sp,sp,48
    80001504:	00008067          	ret
        return -1;
    80001508:	fff00513          	li	a0,-1
    8000150c:	fe1ff06f          	j	800014ec <thread_make_pcb+0x5c>

0000000080001510 <getc>:

char getc()
{
    80001510:	ff010113          	addi	sp,sp,-16
    80001514:	00813423          	sd	s0,8(sp)
    80001518:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    8000151c:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    80001520:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001524:	00050513          	mv	a0,a0
    return (char)result;
}
    80001528:	0ff57513          	andi	a0,a0,255
    8000152c:	00813403          	ld	s0,8(sp)
    80001530:	01010113          	addi	sp,sp,16
    80001534:	00008067          	ret

0000000080001538 <putc>:

void putc(char c)
{
    80001538:	ff010113          	addi	sp,sp,-16
    8000153c:	00813423          	sd	s0,8(sp)
    80001540:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    80001544:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80001548:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    8000154c:	00000073          	ecall
    80001550:	00813403          	ld	s0,8(sp)
    80001554:	01010113          	addi	sp,sp,16
    80001558:	00008067          	ret

000000008000155c <_Z4idlePv>:
#include "../h/Tests.hpp"
#include "../lib/console.h"
#include "../test/printing.hpp"

void idle(void* args)
{
    8000155c:	ff010113          	addi	sp,sp,-16
    80001560:	00113423          	sd	ra,8(sp)
    80001564:	00813023          	sd	s0,0(sp)
    80001568:	01010413          	addi	s0,sp,16
    while(true)
    {
        printString("Idle\n");
    8000156c:	00008517          	auipc	a0,0x8
    80001570:	ab450513          	addi	a0,a0,-1356 # 80009020 <CONSOLE_STATUS+0x10>
    80001574:	00004097          	auipc	ra,0x4
    80001578:	710080e7          	jalr	1808(ra) # 80005c84 <_Z11printStringPKc>
        thread_dispatch();
    8000157c:	00000097          	auipc	ra,0x0
    80001580:	db8080e7          	jalr	-584(ra) # 80001334 <thread_dispatch>
    while(true)
    80001584:	fe9ff06f          	j	8000156c <_Z4idlePv+0x10>

0000000080001588 <_Z15thread1FunctionPv>:
    }
}

void thread1Function(void* p)
{
    80001588:	fe010113          	addi	sp,sp,-32
    8000158c:	00113c23          	sd	ra,24(sp)
    80001590:	00813823          	sd	s0,16(sp)
    80001594:	00913423          	sd	s1,8(sp)
    80001598:	02010413          	addi	s0,sp,32
    printString("Thread 1 started...\n");
    8000159c:	00008517          	auipc	a0,0x8
    800015a0:	a8c50513          	addi	a0,a0,-1396 # 80009028 <CONSOLE_STATUS+0x18>
    800015a4:	00004097          	auipc	ra,0x4
    800015a8:	6e0080e7          	jalr	1760(ra) # 80005c84 <_Z11printStringPKc>
    uint64 num = 10000;
    for(uint64 i = 0; i < num;i++)
    800015ac:	00000493          	li	s1,0
    800015b0:	0440006f          	j	800015f4 <_Z15thread1FunctionPv+0x6c>
    {
        if(i % 150 == 0 && i > 0)
            thread_dispatch();
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	d80080e7          	jalr	-640(ra) # 80001334 <thread_dispatch>
        printString("i : ");
    800015bc:	00008517          	auipc	a0,0x8
    800015c0:	a8450513          	addi	a0,a0,-1404 # 80009040 <CONSOLE_STATUS+0x30>
    800015c4:	00004097          	auipc	ra,0x4
    800015c8:	6c0080e7          	jalr	1728(ra) # 80005c84 <_Z11printStringPKc>
        printInt(i);
    800015cc:	00000613          	li	a2,0
    800015d0:	00a00593          	li	a1,10
    800015d4:	0004851b          	sext.w	a0,s1
    800015d8:	00005097          	auipc	ra,0x5
    800015dc:	844080e7          	jalr	-1980(ra) # 80005e1c <_Z8printIntiii>
        printString("\n");
    800015e0:	00008517          	auipc	a0,0x8
    800015e4:	b2050513          	addi	a0,a0,-1248 # 80009100 <CONSOLE_STATUS+0xf0>
    800015e8:	00004097          	auipc	ra,0x4
    800015ec:	69c080e7          	jalr	1692(ra) # 80005c84 <_Z11printStringPKc>
    for(uint64 i = 0; i < num;i++)
    800015f0:	00148493          	addi	s1,s1,1
    800015f4:	000027b7          	lui	a5,0x2
    800015f8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800015fc:	0097ec63          	bltu	a5,s1,80001614 <_Z15thread1FunctionPv+0x8c>
        if(i % 150 == 0 && i > 0)
    80001600:	09600793          	li	a5,150
    80001604:	02f4f7b3          	remu	a5,s1,a5
    80001608:	fa079ae3          	bnez	a5,800015bc <_Z15thread1FunctionPv+0x34>
    8000160c:	fa0488e3          	beqz	s1,800015bc <_Z15thread1FunctionPv+0x34>
    80001610:	fa5ff06f          	j	800015b4 <_Z15thread1FunctionPv+0x2c>
    }
}
    80001614:	01813083          	ld	ra,24(sp)
    80001618:	01013403          	ld	s0,16(sp)
    8000161c:	00813483          	ld	s1,8(sp)
    80001620:	02010113          	addi	sp,sp,32
    80001624:	00008067          	ret

0000000080001628 <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    80001628:	fe010113          	addi	sp,sp,-32
    8000162c:	00113c23          	sd	ra,24(sp)
    80001630:	00813823          	sd	s0,16(sp)
    80001634:	00913423          	sd	s1,8(sp)
    80001638:	02010413          	addi	s0,sp,32
    printString("Thread 2 started...\n");
    8000163c:	00008517          	auipc	a0,0x8
    80001640:	a0c50513          	addi	a0,a0,-1524 # 80009048 <CONSOLE_STATUS+0x38>
    80001644:	00004097          	auipc	ra,0x4
    80001648:	640080e7          	jalr	1600(ra) # 80005c84 <_Z11printStringPKc>
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    8000164c:	00000493          	li	s1,0
    80001650:	0440006f          	j	80001694 <_Z15thread2FunctionPv+0x6c>
    {
        if(j % 50 == 0 && j > 0)
            thread_dispatch();
    80001654:	00000097          	auipc	ra,0x0
    80001658:	ce0080e7          	jalr	-800(ra) # 80001334 <thread_dispatch>
        printString("j : ");
    8000165c:	00008517          	auipc	a0,0x8
    80001660:	a0450513          	addi	a0,a0,-1532 # 80009060 <CONSOLE_STATUS+0x50>
    80001664:	00004097          	auipc	ra,0x4
    80001668:	620080e7          	jalr	1568(ra) # 80005c84 <_Z11printStringPKc>
        printInt(j);
    8000166c:	00000613          	li	a2,0
    80001670:	00a00593          	li	a1,10
    80001674:	0004851b          	sext.w	a0,s1
    80001678:	00004097          	auipc	ra,0x4
    8000167c:	7a4080e7          	jalr	1956(ra) # 80005e1c <_Z8printIntiii>
        printString("\n");
    80001680:	00008517          	auipc	a0,0x8
    80001684:	a8050513          	addi	a0,a0,-1408 # 80009100 <CONSOLE_STATUS+0xf0>
    80001688:	00004097          	auipc	ra,0x4
    8000168c:	5fc080e7          	jalr	1532(ra) # 80005c84 <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    80001690:	00148493          	addi	s1,s1,1
    80001694:	000027b7          	lui	a5,0x2
    80001698:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000169c:	0097ec63          	bltu	a5,s1,800016b4 <_Z15thread2FunctionPv+0x8c>
        if(j % 50 == 0 && j > 0)
    800016a0:	03200793          	li	a5,50
    800016a4:	02f4f7b3          	remu	a5,s1,a5
    800016a8:	fa079ae3          	bnez	a5,8000165c <_Z15thread2FunctionPv+0x34>
    800016ac:	fa0488e3          	beqz	s1,8000165c <_Z15thread2FunctionPv+0x34>
    800016b0:	fa5ff06f          	j	80001654 <_Z15thread2FunctionPv+0x2c>
    }
}
    800016b4:	01813083          	ld	ra,24(sp)
    800016b8:	01013403          	ld	s0,16(sp)
    800016bc:	00813483          	ld	s1,8(sp)
    800016c0:	02010113          	addi	sp,sp,32
    800016c4:	00008067          	ret

00000000800016c8 <_ZN12TestPeriodic18periodicActivationEv>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {

}

void TestPeriodic::periodicActivation()
{
    800016c8:	fe010113          	addi	sp,sp,-32
    800016cc:	00113c23          	sd	ra,24(sp)
    800016d0:	00813823          	sd	s0,16(sp)
    800016d4:	00913423          	sd	s1,8(sp)
    800016d8:	02010413          	addi	s0,sp,32
    for(int i = 0 ; i < 10000;i++)
    800016dc:	00000493          	li	s1,0
    800016e0:	000027b7          	lui	a5,0x2
    800016e4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800016e8:	0297c863          	blt	a5,s1,80001718 <_ZN12TestPeriodic18periodicActivationEv+0x50>
    {
        printString("i : ");
    800016ec:	00008517          	auipc	a0,0x8
    800016f0:	95450513          	addi	a0,a0,-1708 # 80009040 <CONSOLE_STATUS+0x30>
    800016f4:	00004097          	auipc	ra,0x4
    800016f8:	590080e7          	jalr	1424(ra) # 80005c84 <_Z11printStringPKc>
        printInt(i);
    800016fc:	00000613          	li	a2,0
    80001700:	00a00593          	li	a1,10
    80001704:	00048513          	mv	a0,s1
    80001708:	00004097          	auipc	ra,0x4
    8000170c:	714080e7          	jalr	1812(ra) # 80005e1c <_Z8printIntiii>
    for(int i = 0 ; i < 10000;i++)
    80001710:	0014849b          	addiw	s1,s1,1
    80001714:	fcdff06f          	j	800016e0 <_ZN12TestPeriodic18periodicActivationEv+0x18>
    }
}
    80001718:	01813083          	ld	ra,24(sp)
    8000171c:	01013403          	ld	s0,16(sp)
    80001720:	00813483          	ld	s1,8(sp)
    80001724:	02010113          	addi	sp,sp,32
    80001728:	00008067          	ret

000000008000172c <_Z20thread2FunctionTest2Pv>:
{
    8000172c:	fe010113          	addi	sp,sp,-32
    80001730:	00113c23          	sd	ra,24(sp)
    80001734:	00813823          	sd	s0,16(sp)
    80001738:	00913423          	sd	s1,8(sp)
    8000173c:	02010413          	addi	s0,sp,32
    printString("Thread 2 started...\n");
    80001740:	00008517          	auipc	a0,0x8
    80001744:	90850513          	addi	a0,a0,-1784 # 80009048 <CONSOLE_STATUS+0x38>
    80001748:	00004097          	auipc	ra,0x4
    8000174c:	53c080e7          	jalr	1340(ra) # 80005c84 <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    80001750:	00000493          	li	s1,0
    80001754:	0500006f          	j	800017a4 <_Z20thread2FunctionTest2Pv+0x78>
            thread_exit();
    80001758:	00000097          	auipc	ra,0x0
    8000175c:	bfc080e7          	jalr	-1028(ra) # 80001354 <thread_exit>
    80001760:	0580006f          	j	800017b8 <_Z20thread2FunctionTest2Pv+0x8c>
            thread_dispatch();
    80001764:	00000097          	auipc	ra,0x0
    80001768:	bd0080e7          	jalr	-1072(ra) # 80001334 <thread_dispatch>
        printString("j : ");
    8000176c:	00008517          	auipc	a0,0x8
    80001770:	8f450513          	addi	a0,a0,-1804 # 80009060 <CONSOLE_STATUS+0x50>
    80001774:	00004097          	auipc	ra,0x4
    80001778:	510080e7          	jalr	1296(ra) # 80005c84 <_Z11printStringPKc>
        printInt(j);
    8000177c:	00000613          	li	a2,0
    80001780:	00a00593          	li	a1,10
    80001784:	0004851b          	sext.w	a0,s1
    80001788:	00004097          	auipc	ra,0x4
    8000178c:	694080e7          	jalr	1684(ra) # 80005e1c <_Z8printIntiii>
        printString("\n");
    80001790:	00008517          	auipc	a0,0x8
    80001794:	97050513          	addi	a0,a0,-1680 # 80009100 <CONSOLE_STATUS+0xf0>
    80001798:	00004097          	auipc	ra,0x4
    8000179c:	4ec080e7          	jalr	1260(ra) # 80005c84 <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    800017a0:	00148493          	addi	s1,s1,1
    800017a4:	000027b7          	lui	a5,0x2
    800017a8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800017ac:	0297e063          	bltu	a5,s1,800017cc <_Z20thread2FunctionTest2Pv+0xa0>
        if(j == 200)
    800017b0:	0c800793          	li	a5,200
    800017b4:	faf482e3          	beq	s1,a5,80001758 <_Z20thread2FunctionTest2Pv+0x2c>
        if(j % 50 == 0 && j > 0)
    800017b8:	03200793          	li	a5,50
    800017bc:	02f4f7b3          	remu	a5,s1,a5
    800017c0:	fa0796e3          	bnez	a5,8000176c <_Z20thread2FunctionTest2Pv+0x40>
    800017c4:	fa0484e3          	beqz	s1,8000176c <_Z20thread2FunctionTest2Pv+0x40>
    800017c8:	f9dff06f          	j	80001764 <_Z20thread2FunctionTest2Pv+0x38>
}
    800017cc:	01813083          	ld	ra,24(sp)
    800017d0:	01013403          	ld	s0,16(sp)
    800017d4:	00813483          	ld	s1,8(sp)
    800017d8:	02010113          	addi	sp,sp,32
    800017dc:	00008067          	ret

00000000800017e0 <_Z9consumerAPv>:
sem_t spaceAvailable, itemAvailable;
char string[11] = "this is ni";

void consumerA(void *arg)
{
    while(head!=10)
    800017e0:	0000a717          	auipc	a4,0xa
    800017e4:	42072703          	lw	a4,1056(a4) # 8000bc00 <head>
    800017e8:	00a00793          	li	a5,10
    800017ec:	06f70c63          	beq	a4,a5,80001864 <_Z9consumerAPv+0x84>
{
    800017f0:	fe010113          	addi	sp,sp,-32
    800017f4:	00113c23          	sd	ra,24(sp)
    800017f8:	00813823          	sd	s0,16(sp)
    800017fc:	00913423          	sd	s1,8(sp)
    80001800:	02010413          	addi	s0,sp,32
    {
        sem_wait(itemAvailable);
    80001804:	0000a497          	auipc	s1,0xa
    80001808:	3fc48493          	addi	s1,s1,1020 # 8000bc00 <head>
    8000180c:	0084b503          	ld	a0,8(s1)
    80001810:	00000097          	auipc	ra,0x0
    80001814:	bd0080e7          	jalr	-1072(ra) # 800013e0 <sem_wait>
        __putc(buffer[head++]);
    80001818:	0004a783          	lw	a5,0(s1)
    8000181c:	0017871b          	addiw	a4,a5,1
    80001820:	00e4a023          	sw	a4,0(s1)
    80001824:	00f487b3          	add	a5,s1,a5
    80001828:	0107c503          	lbu	a0,16(a5)
    8000182c:	00007097          	auipc	ra,0x7
    80001830:	050080e7          	jalr	80(ra) # 8000887c <__putc>
        sem_signal(spaceAvailable);
    80001834:	0204b503          	ld	a0,32(s1)
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	bd4080e7          	jalr	-1068(ra) # 8000140c <sem_signal>
    while(head!=10)
    80001840:	0000a717          	auipc	a4,0xa
    80001844:	3c072703          	lw	a4,960(a4) # 8000bc00 <head>
    80001848:	00a00793          	li	a5,10
    8000184c:	faf71ce3          	bne	a4,a5,80001804 <_Z9consumerAPv+0x24>
    }
}
    80001850:	01813083          	ld	ra,24(sp)
    80001854:	01013403          	ld	s0,16(sp)
    80001858:	00813483          	ld	s1,8(sp)
    8000185c:	02010113          	addi	sp,sp,32
    80001860:	00008067          	ret
    80001864:	00008067          	ret

0000000080001868 <_Z9producerAPv>:

void producerA(void *arg)
{
    while(tail!=10)
    80001868:	0000a717          	auipc	a4,0xa
    8000186c:	3c072703          	lw	a4,960(a4) # 8000bc28 <tail>
    80001870:	00a00793          	li	a5,10
    80001874:	08f70063          	beq	a4,a5,800018f4 <_Z9producerAPv+0x8c>
{
    80001878:	fe010113          	addi	sp,sp,-32
    8000187c:	00113c23          	sd	ra,24(sp)
    80001880:	00813823          	sd	s0,16(sp)
    80001884:	00913423          	sd	s1,8(sp)
    80001888:	02010413          	addi	s0,sp,32
    {
        sem_wait(spaceAvailable);
    8000188c:	0000a497          	auipc	s1,0xa
    80001890:	37448493          	addi	s1,s1,884 # 8000bc00 <head>
    80001894:	0204b503          	ld	a0,32(s1)
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	b48080e7          	jalr	-1208(ra) # 800013e0 <sem_wait>
        buffer[tail] = string[tail];
    800018a0:	0284a783          	lw	a5,40(s1)
    800018a4:	0000a717          	auipc	a4,0xa
    800018a8:	13c70713          	addi	a4,a4,316 # 8000b9e0 <string>
    800018ac:	00f70733          	add	a4,a4,a5
    800018b0:	00074683          	lbu	a3,0(a4)
    800018b4:	00f48733          	add	a4,s1,a5
    800018b8:	00d70823          	sb	a3,16(a4)
        tail++;
    800018bc:	0017879b          	addiw	a5,a5,1
    800018c0:	02f4a423          	sw	a5,40(s1)
        sem_signal(itemAvailable);
    800018c4:	0084b503          	ld	a0,8(s1)
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	b44080e7          	jalr	-1212(ra) # 8000140c <sem_signal>
    while(tail!=10)
    800018d0:	0000a717          	auipc	a4,0xa
    800018d4:	35872703          	lw	a4,856(a4) # 8000bc28 <tail>
    800018d8:	00a00793          	li	a5,10
    800018dc:	faf718e3          	bne	a4,a5,8000188c <_Z9producerAPv+0x24>
    }
}
    800018e0:	01813083          	ld	ra,24(sp)
    800018e4:	01013403          	ld	s0,16(sp)
    800018e8:	00813483          	ld	s1,8(sp)
    800018ec:	02010113          	addi	sp,sp,32
    800018f0:	00008067          	ret
    800018f4:	00008067          	ret

00000000800018f8 <_Z11threadTest1v>:
{
    800018f8:	fe010113          	addi	sp,sp,-32
    800018fc:	00113c23          	sd	ra,24(sp)
    80001900:	00813823          	sd	s0,16(sp)
    80001904:	00913423          	sd	s1,8(sp)
    80001908:	01213023          	sd	s2,0(sp)
    8000190c:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    80001910:	01000513          	li	a0,16
    80001914:	00002097          	auipc	ra,0x2
    80001918:	de0080e7          	jalr	-544(ra) # 800036f4 <_Znwm>
    8000191c:	00050493          	mv	s1,a0
    80001920:	00000613          	li	a2,0
    80001924:	00000597          	auipc	a1,0x0
    80001928:	c6458593          	addi	a1,a1,-924 # 80001588 <_Z15thread1FunctionPv>
    8000192c:	00002097          	auipc	ra,0x2
    80001930:	f60080e7          	jalr	-160(ra) # 8000388c <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001934:	00048513          	mv	a0,s1
    80001938:	00002097          	auipc	ra,0x2
    8000193c:	e8c080e7          	jalr	-372(ra) # 800037c4 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001940:	01000513          	li	a0,16
    80001944:	00002097          	auipc	ra,0x2
    80001948:	db0080e7          	jalr	-592(ra) # 800036f4 <_Znwm>
    8000194c:	00050493          	mv	s1,a0
    80001950:	00000613          	li	a2,0
    80001954:	00000597          	auipc	a1,0x0
    80001958:	cd458593          	addi	a1,a1,-812 # 80001628 <_Z15thread2FunctionPv>
    8000195c:	00002097          	auipc	ra,0x2
    80001960:	f30080e7          	jalr	-208(ra) # 8000388c <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001964:	00048513          	mv	a0,s1
    80001968:	00002097          	auipc	ra,0x2
    8000196c:	e5c080e7          	jalr	-420(ra) # 800037c4 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001970:	00002097          	auipc	ra,0x2
    80001974:	15c080e7          	jalr	348(ra) # 80003acc <_ZN5Riscv16enableInterruptsEv>
    printString("End...\n");
    80001978:	00007517          	auipc	a0,0x7
    8000197c:	6f050513          	addi	a0,a0,1776 # 80009068 <CONSOLE_STATUS+0x58>
    80001980:	00004097          	auipc	ra,0x4
    80001984:	304080e7          	jalr	772(ra) # 80005c84 <_Z11printStringPKc>
    Riscv::disableInterrupts();
    80001988:	00002097          	auipc	ra,0x2
    8000198c:	164080e7          	jalr	356(ra) # 80003aec <_ZN5Riscv17disableInterruptsEv>
}
    80001990:	01813083          	ld	ra,24(sp)
    80001994:	01013403          	ld	s0,16(sp)
    80001998:	00813483          	ld	s1,8(sp)
    8000199c:	00013903          	ld	s2,0(sp)
    800019a0:	02010113          	addi	sp,sp,32
    800019a4:	00008067          	ret
    800019a8:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    800019ac:	00048513          	mv	a0,s1
    800019b0:	00002097          	auipc	ra,0x2
    800019b4:	d6c080e7          	jalr	-660(ra) # 8000371c <_ZdlPv>
    800019b8:	00090513          	mv	a0,s2
    800019bc:	0000b097          	auipc	ra,0xb
    800019c0:	3fc080e7          	jalr	1020(ra) # 8000cdb8 <_Unwind_Resume>
    800019c4:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800019c8:	00048513          	mv	a0,s1
    800019cc:	00002097          	auipc	ra,0x2
    800019d0:	d50080e7          	jalr	-688(ra) # 8000371c <_ZdlPv>
    800019d4:	00090513          	mv	a0,s2
    800019d8:	0000b097          	auipc	ra,0xb
    800019dc:	3e0080e7          	jalr	992(ra) # 8000cdb8 <_Unwind_Resume>

00000000800019e0 <_Z11threadTest2v>:
{
    800019e0:	fe010113          	addi	sp,sp,-32
    800019e4:	00113c23          	sd	ra,24(sp)
    800019e8:	00813823          	sd	s0,16(sp)
    800019ec:	00913423          	sd	s1,8(sp)
    800019f0:	01213023          	sd	s2,0(sp)
    800019f4:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    800019f8:	01000513          	li	a0,16
    800019fc:	00002097          	auipc	ra,0x2
    80001a00:	cf8080e7          	jalr	-776(ra) # 800036f4 <_Znwm>
    80001a04:	00050493          	mv	s1,a0
    80001a08:	00000613          	li	a2,0
    80001a0c:	00000597          	auipc	a1,0x0
    80001a10:	b5058593          	addi	a1,a1,-1200 # 8000155c <_Z4idlePv>
    80001a14:	00002097          	auipc	ra,0x2
    80001a18:	e78080e7          	jalr	-392(ra) # 8000388c <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001a1c:	00048513          	mv	a0,s1
    80001a20:	00002097          	auipc	ra,0x2
    80001a24:	da4080e7          	jalr	-604(ra) # 800037c4 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a28:	01000513          	li	a0,16
    80001a2c:	00002097          	auipc	ra,0x2
    80001a30:	cc8080e7          	jalr	-824(ra) # 800036f4 <_Znwm>
    80001a34:	00050493          	mv	s1,a0
    80001a38:	00000613          	li	a2,0
    80001a3c:	00000597          	auipc	a1,0x0
    80001a40:	b4c58593          	addi	a1,a1,-1204 # 80001588 <_Z15thread1FunctionPv>
    80001a44:	00002097          	auipc	ra,0x2
    80001a48:	e48080e7          	jalr	-440(ra) # 8000388c <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001a4c:	00048513          	mv	a0,s1
    80001a50:	00002097          	auipc	ra,0x2
    80001a54:	d74080e7          	jalr	-652(ra) # 800037c4 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a58:	01000513          	li	a0,16
    80001a5c:	00002097          	auipc	ra,0x2
    80001a60:	c98080e7          	jalr	-872(ra) # 800036f4 <_Znwm>
    80001a64:	00050493          	mv	s1,a0
    80001a68:	00000613          	li	a2,0
    80001a6c:	00000597          	auipc	a1,0x0
    80001a70:	cc058593          	addi	a1,a1,-832 # 8000172c <_Z20thread2FunctionTest2Pv>
    80001a74:	00002097          	auipc	ra,0x2
    80001a78:	e18080e7          	jalr	-488(ra) # 8000388c <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001a7c:	00048513          	mv	a0,s1
    80001a80:	00002097          	auipc	ra,0x2
    80001a84:	d44080e7          	jalr	-700(ra) # 800037c4 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001a88:	00002097          	auipc	ra,0x2
    80001a8c:	044080e7          	jalr	68(ra) # 80003acc <_ZN5Riscv16enableInterruptsEv>
    printString("End...\n");
    80001a90:	00007517          	auipc	a0,0x7
    80001a94:	5d850513          	addi	a0,a0,1496 # 80009068 <CONSOLE_STATUS+0x58>
    80001a98:	00004097          	auipc	ra,0x4
    80001a9c:	1ec080e7          	jalr	492(ra) # 80005c84 <_Z11printStringPKc>
    Riscv::disableInterrupts();
    80001aa0:	00002097          	auipc	ra,0x2
    80001aa4:	04c080e7          	jalr	76(ra) # 80003aec <_ZN5Riscv17disableInterruptsEv>
}
    80001aa8:	01813083          	ld	ra,24(sp)
    80001aac:	01013403          	ld	s0,16(sp)
    80001ab0:	00813483          	ld	s1,8(sp)
    80001ab4:	00013903          	ld	s2,0(sp)
    80001ab8:	02010113          	addi	sp,sp,32
    80001abc:	00008067          	ret
    80001ac0:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    80001ac4:	00048513          	mv	a0,s1
    80001ac8:	00002097          	auipc	ra,0x2
    80001acc:	c54080e7          	jalr	-940(ra) # 8000371c <_ZdlPv>
    80001ad0:	00090513          	mv	a0,s2
    80001ad4:	0000b097          	auipc	ra,0xb
    80001ad8:	2e4080e7          	jalr	740(ra) # 8000cdb8 <_Unwind_Resume>
    80001adc:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001ae0:	00048513          	mv	a0,s1
    80001ae4:	00002097          	auipc	ra,0x2
    80001ae8:	c38080e7          	jalr	-968(ra) # 8000371c <_ZdlPv>
    80001aec:	00090513          	mv	a0,s2
    80001af0:	0000b097          	auipc	ra,0xb
    80001af4:	2c8080e7          	jalr	712(ra) # 8000cdb8 <_Unwind_Resume>
    80001af8:	00050913          	mv	s2,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001afc:	00048513          	mv	a0,s1
    80001b00:	00002097          	auipc	ra,0x2
    80001b04:	c1c080e7          	jalr	-996(ra) # 8000371c <_ZdlPv>
    80001b08:	00090513          	mv	a0,s2
    80001b0c:	0000b097          	auipc	ra,0xb
    80001b10:	2ac080e7          	jalr	684(ra) # 8000cdb8 <_Unwind_Resume>

0000000080001b14 <_Z10mallocFreev>:
{
    80001b14:	cc010113          	addi	sp,sp,-832
    80001b18:	32113c23          	sd	ra,824(sp)
    80001b1c:	32813823          	sd	s0,816(sp)
    80001b20:	32913423          	sd	s1,808(sp)
    80001b24:	34010413          	addi	s0,sp,832
    printString("mallocFree\n");
    80001b28:	00007517          	auipc	a0,0x7
    80001b2c:	54850513          	addi	a0,a0,1352 # 80009070 <CONSOLE_STATUS+0x60>
    80001b30:	00004097          	auipc	ra,0x4
    80001b34:	154080e7          	jalr	340(ra) # 80005c84 <_Z11printStringPKc>
    for(int i = 0; i < num;i++)
    80001b38:	00000493          	li	s1,0
    80001b3c:	0080006f          	j	80001b44 <_Z10mallocFreev+0x30>
    80001b40:	0014849b          	addiw	s1,s1,1
    80001b44:	06300793          	li	a5,99
    80001b48:	0497c463          	blt	a5,s1,80001b90 <_Z10mallocFreev+0x7c>
        addrs[i] = mem_alloc(100);
    80001b4c:	06400513          	li	a0,100
    80001b50:	fffff097          	auipc	ra,0xfffff
    80001b54:	708080e7          	jalr	1800(ra) # 80001258 <mem_alloc>
    80001b58:	00349793          	slli	a5,s1,0x3
    80001b5c:	fe040713          	addi	a4,s0,-32
    80001b60:	00f707b3          	add	a5,a4,a5
    80001b64:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001b68:	fc051ce3          	bnez	a0,80001b40 <_Z10mallocFreev+0x2c>
            printString("not OK\n");
    80001b6c:	00007517          	auipc	a0,0x7
    80001b70:	51450513          	addi	a0,a0,1300 # 80009080 <CONSOLE_STATUS+0x70>
    80001b74:	00004097          	auipc	ra,0x4
    80001b78:	110080e7          	jalr	272(ra) # 80005c84 <_Z11printStringPKc>
}
    80001b7c:	33813083          	ld	ra,824(sp)
    80001b80:	33013403          	ld	s0,816(sp)
    80001b84:	32813483          	ld	s1,808(sp)
    80001b88:	34010113          	addi	sp,sp,832
    80001b8c:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001b90:	00000493          	li	s1,0
    80001b94:	06300793          	li	a5,99
    80001b98:	0297ce63          	blt	a5,s1,80001bd4 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001b9c:	00349793          	slli	a5,s1,0x3
    80001ba0:	fe040713          	addi	a4,s0,-32
    80001ba4:	00f707b3          	add	a5,a4,a5
    80001ba8:	ce07b503          	ld	a0,-800(a5)
    80001bac:	fffff097          	auipc	ra,0xfffff
    80001bb0:	6dc080e7          	jalr	1756(ra) # 80001288 <mem_free>
        if(retval != 0)
    80001bb4:	00051663          	bnez	a0,80001bc0 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001bb8:	0024849b          	addiw	s1,s1,2
    80001bbc:	fd9ff06f          	j	80001b94 <_Z10mallocFreev+0x80>
            printString("not OK\n");
    80001bc0:	00007517          	auipc	a0,0x7
    80001bc4:	4c050513          	addi	a0,a0,1216 # 80009080 <CONSOLE_STATUS+0x70>
    80001bc8:	00004097          	auipc	ra,0x4
    80001bcc:	0bc080e7          	jalr	188(ra) # 80005c84 <_Z11printStringPKc>
            return;
    80001bd0:	fadff06f          	j	80001b7c <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001bd4:	00000493          	li	s1,0
    80001bd8:	0080006f          	j	80001be0 <_Z10mallocFreev+0xcc>
    80001bdc:	0024849b          	addiw	s1,s1,2
    80001be0:	06300793          	li	a5,99
    80001be4:	0297cc63          	blt	a5,s1,80001c1c <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001be8:	01400513          	li	a0,20
    80001bec:	fffff097          	auipc	ra,0xfffff
    80001bf0:	66c080e7          	jalr	1644(ra) # 80001258 <mem_alloc>
    80001bf4:	00349793          	slli	a5,s1,0x3
    80001bf8:	fe040713          	addi	a4,s0,-32
    80001bfc:	00f707b3          	add	a5,a4,a5
    80001c00:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001c04:	fc051ce3          	bnez	a0,80001bdc <_Z10mallocFreev+0xc8>
            printString("not OK\n");
    80001c08:	00007517          	auipc	a0,0x7
    80001c0c:	47850513          	addi	a0,a0,1144 # 80009080 <CONSOLE_STATUS+0x70>
    80001c10:	00004097          	auipc	ra,0x4
    80001c14:	074080e7          	jalr	116(ra) # 80005c84 <_Z11printStringPKc>
            return;
    80001c18:	f65ff06f          	j	80001b7c <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001c1c:	00000493          	li	s1,0
    80001c20:	06300793          	li	a5,99
    80001c24:	0297ce63          	blt	a5,s1,80001c60 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001c28:	00349793          	slli	a5,s1,0x3
    80001c2c:	fe040713          	addi	a4,s0,-32
    80001c30:	00f707b3          	add	a5,a4,a5
    80001c34:	ce07b503          	ld	a0,-800(a5)
    80001c38:	fffff097          	auipc	ra,0xfffff
    80001c3c:	650080e7          	jalr	1616(ra) # 80001288 <mem_free>
        if(retval != 0)
    80001c40:	00051663          	bnez	a0,80001c4c <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001c44:	0014849b          	addiw	s1,s1,1
    80001c48:	fd9ff06f          	j	80001c20 <_Z10mallocFreev+0x10c>
            printString("not OK\n");
    80001c4c:	00007517          	auipc	a0,0x7
    80001c50:	43450513          	addi	a0,a0,1076 # 80009080 <CONSOLE_STATUS+0x70>
    80001c54:	00004097          	auipc	ra,0x4
    80001c58:	030080e7          	jalr	48(ra) # 80005c84 <_Z11printStringPKc>
            return;
    80001c5c:	f21ff06f          	j	80001b7c <_Z10mallocFreev+0x68>
    printString("OK\n");
    80001c60:	00007517          	auipc	a0,0x7
    80001c64:	42850513          	addi	a0,a0,1064 # 80009088 <CONSOLE_STATUS+0x78>
    80001c68:	00004097          	auipc	ra,0x4
    80001c6c:	01c080e7          	jalr	28(ra) # 80005c84 <_Z11printStringPKc>
    80001c70:	f0dff06f          	j	80001b7c <_Z10mallocFreev+0x68>

0000000080001c74 <_Z9bigMallocv>:
{
    80001c74:	ff010113          	addi	sp,sp,-16
    80001c78:	00113423          	sd	ra,8(sp)
    80001c7c:	00813023          	sd	s0,0(sp)
    80001c80:	01010413          	addi	s0,sp,16
    printString("bigMalloc\n");
    80001c84:	00007517          	auipc	a0,0x7
    80001c88:	40c50513          	addi	a0,a0,1036 # 80009090 <CONSOLE_STATUS+0x80>
    80001c8c:	00004097          	auipc	ra,0x4
    80001c90:	ff8080e7          	jalr	-8(ra) # 80005c84 <_Z11printStringPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001c94:	0000a797          	auipc	a5,0xa
    80001c98:	f1c7b783          	ld	a5,-228(a5) # 8000bbb0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80001c9c:	0007b503          	ld	a0,0(a5)
    80001ca0:	0000a797          	auipc	a5,0xa
    80001ca4:	eb87b783          	ld	a5,-328(a5) # 8000bb58 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001ca8:	0007b783          	ld	a5,0(a5)
    80001cac:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001cb0:	06450513          	addi	a0,a0,100
    80001cb4:	fffff097          	auipc	ra,0xfffff
    80001cb8:	5a4080e7          	jalr	1444(ra) # 80001258 <mem_alloc>
    if(p == 0)
    80001cbc:	02050263          	beqz	a0,80001ce0 <_Z9bigMallocv+0x6c>
        printString("not OK\n");
    80001cc0:	00007517          	auipc	a0,0x7
    80001cc4:	3c050513          	addi	a0,a0,960 # 80009080 <CONSOLE_STATUS+0x70>
    80001cc8:	00004097          	auipc	ra,0x4
    80001ccc:	fbc080e7          	jalr	-68(ra) # 80005c84 <_Z11printStringPKc>
}
    80001cd0:	00813083          	ld	ra,8(sp)
    80001cd4:	00013403          	ld	s0,0(sp)
    80001cd8:	01010113          	addi	sp,sp,16
    80001cdc:	00008067          	ret
        printString("OK\n");
    80001ce0:	00007517          	auipc	a0,0x7
    80001ce4:	3a850513          	addi	a0,a0,936 # 80009088 <CONSOLE_STATUS+0x78>
    80001ce8:	00004097          	auipc	ra,0x4
    80001cec:	f9c080e7          	jalr	-100(ra) # 80005c84 <_Z11printStringPKc>
    80001cf0:	fe1ff06f          	j	80001cd0 <_Z9bigMallocv+0x5c>

0000000080001cf4 <_Z17lotOfSmallMallocsv>:
{
    80001cf4:	fd010113          	addi	sp,sp,-48
    80001cf8:	02113423          	sd	ra,40(sp)
    80001cfc:	02813023          	sd	s0,32(sp)
    80001d00:	00913c23          	sd	s1,24(sp)
    80001d04:	01213823          	sd	s2,16(sp)
    80001d08:	01313423          	sd	s3,8(sp)
    80001d0c:	03010413          	addi	s0,sp,48
    printString("lotOfSmallMallocs\n");
    80001d10:	00007517          	auipc	a0,0x7
    80001d14:	39050513          	addi	a0,a0,912 # 800090a0 <CONSOLE_STATUS+0x90>
    80001d18:	00004097          	auipc	ra,0x4
    80001d1c:	f6c080e7          	jalr	-148(ra) # 80005c84 <_Z11printStringPKc>
    for(uint64 i = 0; i < N;i++)
    80001d20:	00000493          	li	s1,0
    uint64 sum = 0;
    80001d24:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001d28:	00000913          	li	s2,0
    80001d2c:	0180006f          	j	80001d44 <_Z17lotOfSmallMallocsv+0x50>
        t->a = X;
    80001d30:	00a00793          	li	a5,10
    80001d34:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001d38:	00a98993          	addi	s3,s3,10
        cnt++;
    80001d3c:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001d40:	00148493          	addi	s1,s1,1
    80001d44:	000027b7          	lui	a5,0x2
    80001d48:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001d4c:	0097ea63          	bltu	a5,s1,80001d60 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001d50:	00800513          	li	a0,8
    80001d54:	fffff097          	auipc	ra,0xfffff
    80001d58:	504080e7          	jalr	1284(ra) # 80001258 <mem_alloc>
        if(t == 0)
    80001d5c:	fc051ae3          	bnez	a0,80001d30 <_Z17lotOfSmallMallocsv+0x3c>
    printInt(cnt);
    80001d60:	00000613          	li	a2,0
    80001d64:	00a00593          	li	a1,10
    80001d68:	0009051b          	sext.w	a0,s2
    80001d6c:	00004097          	auipc	ra,0x4
    80001d70:	0b0080e7          	jalr	176(ra) # 80005e1c <_Z8printIntiii>
    printString("\n");
    80001d74:	00007517          	auipc	a0,0x7
    80001d78:	38c50513          	addi	a0,a0,908 # 80009100 <CONSOLE_STATUS+0xf0>
    80001d7c:	00004097          	auipc	ra,0x4
    80001d80:	f08080e7          	jalr	-248(ra) # 80005c84 <_Z11printStringPKc>
    if(sum == X*cnt)
    80001d84:	00291793          	slli	a5,s2,0x2
    80001d88:	01278933          	add	s2,a5,s2
    80001d8c:	00191913          	slli	s2,s2,0x1
    80001d90:	03390863          	beq	s2,s3,80001dc0 <_Z17lotOfSmallMallocsv+0xcc>
        printString("not OK\n");
    80001d94:	00007517          	auipc	a0,0x7
    80001d98:	2ec50513          	addi	a0,a0,748 # 80009080 <CONSOLE_STATUS+0x70>
    80001d9c:	00004097          	auipc	ra,0x4
    80001da0:	ee8080e7          	jalr	-280(ra) # 80005c84 <_Z11printStringPKc>
}
    80001da4:	02813083          	ld	ra,40(sp)
    80001da8:	02013403          	ld	s0,32(sp)
    80001dac:	01813483          	ld	s1,24(sp)
    80001db0:	01013903          	ld	s2,16(sp)
    80001db4:	00813983          	ld	s3,8(sp)
    80001db8:	03010113          	addi	sp,sp,48
    80001dbc:	00008067          	ret
        printString("OK\n");
    80001dc0:	00007517          	auipc	a0,0x7
    80001dc4:	2c850513          	addi	a0,a0,712 # 80009088 <CONSOLE_STATUS+0x78>
    80001dc8:	00004097          	auipc	ra,0x4
    80001dcc:	ebc080e7          	jalr	-324(ra) # 80005c84 <_Z11printStringPKc>
    80001dd0:	fd5ff06f          	j	80001da4 <_Z17lotOfSmallMallocsv+0xb0>

0000000080001dd4 <_Z7badFreev>:
{
    80001dd4:	ff010113          	addi	sp,sp,-16
    80001dd8:	00113423          	sd	ra,8(sp)
    80001ddc:	00813023          	sd	s0,0(sp)
    80001de0:	01010413          	addi	s0,sp,16
    printString("badFree\n");
    80001de4:	00007517          	auipc	a0,0x7
    80001de8:	2d450513          	addi	a0,a0,724 # 800090b8 <CONSOLE_STATUS+0xa8>
    80001dec:	00004097          	auipc	ra,0x4
    80001df0:	e98080e7          	jalr	-360(ra) # 80005c84 <_Z11printStringPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001df4:	00800513          	li	a0,8
    80001df8:	fffff097          	auipc	ra,0xfffff
    80001dfc:	460080e7          	jalr	1120(ra) # 80001258 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001e00:	00250513          	addi	a0,a0,2
    80001e04:	fffff097          	auipc	ra,0xfffff
    80001e08:	484080e7          	jalr	1156(ra) # 80001288 <mem_free>
    if(retval == 0)
    80001e0c:	02051263          	bnez	a0,80001e30 <_Z7badFreev+0x5c>
        printString("not OK\n");
    80001e10:	00007517          	auipc	a0,0x7
    80001e14:	27050513          	addi	a0,a0,624 # 80009080 <CONSOLE_STATUS+0x70>
    80001e18:	00004097          	auipc	ra,0x4
    80001e1c:	e6c080e7          	jalr	-404(ra) # 80005c84 <_Z11printStringPKc>
}
    80001e20:	00813083          	ld	ra,8(sp)
    80001e24:	00013403          	ld	s0,0(sp)
    80001e28:	01010113          	addi	sp,sp,16
    80001e2c:	00008067          	ret
         printString("OK\n");
    80001e30:	00007517          	auipc	a0,0x7
    80001e34:	25850513          	addi	a0,a0,600 # 80009088 <CONSOLE_STATUS+0x78>
    80001e38:	00004097          	auipc	ra,0x4
    80001e3c:	e4c080e7          	jalr	-436(ra) # 80005c84 <_Z11printStringPKc>
}
    80001e40:	fe1ff06f          	j	80001e20 <_Z7badFreev+0x4c>

0000000080001e44 <_Z13stressTestingv>:
{
    80001e44:	cc010113          	addi	sp,sp,-832
    80001e48:	32113c23          	sd	ra,824(sp)
    80001e4c:	32813823          	sd	s0,816(sp)
    80001e50:	32913423          	sd	s1,808(sp)
    80001e54:	33213023          	sd	s2,800(sp)
    80001e58:	34010413          	addi	s0,sp,832
    printString("stressTesting\n");
    80001e5c:	00007517          	auipc	a0,0x7
    80001e60:	26c50513          	addi	a0,a0,620 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001e64:	00004097          	auipc	ra,0x4
    80001e68:	e20080e7          	jalr	-480(ra) # 80005c84 <_Z11printStringPKc>
    for(int i = 0; i < num;i++)
    80001e6c:	00000493          	li	s1,0
    80001e70:	0080006f          	j	80001e78 <_Z13stressTestingv+0x34>
    80001e74:	0014849b          	addiw	s1,s1,1
    80001e78:	06300793          	li	a5,99
    80001e7c:	0497c663          	blt	a5,s1,80001ec8 <_Z13stressTestingv+0x84>
        addrs[i] = mem_alloc(1);
    80001e80:	00100513          	li	a0,1
    80001e84:	fffff097          	auipc	ra,0xfffff
    80001e88:	3d4080e7          	jalr	980(ra) # 80001258 <mem_alloc>
    80001e8c:	00349793          	slli	a5,s1,0x3
    80001e90:	fe040713          	addi	a4,s0,-32
    80001e94:	00f707b3          	add	a5,a4,a5
    80001e98:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001e9c:	fc051ce3          	bnez	a0,80001e74 <_Z13stressTestingv+0x30>
            printString("not OK\n");
    80001ea0:	00007517          	auipc	a0,0x7
    80001ea4:	1e050513          	addi	a0,a0,480 # 80009080 <CONSOLE_STATUS+0x70>
    80001ea8:	00004097          	auipc	ra,0x4
    80001eac:	ddc080e7          	jalr	-548(ra) # 80005c84 <_Z11printStringPKc>
}
    80001eb0:	33813083          	ld	ra,824(sp)
    80001eb4:	33013403          	ld	s0,816(sp)
    80001eb8:	32813483          	ld	s1,808(sp)
    80001ebc:	32013903          	ld	s2,800(sp)
    80001ec0:	34010113          	addi	sp,sp,832
    80001ec4:	00008067          	ret
    int sz = 300;
    80001ec8:	12c00913          	li	s2,300
    while(sz > 0)
    80001ecc:	11205263          	blez	s2,80001fd0 <_Z13stressTestingv+0x18c>
        for(int i = 0 ; i < num;i+=2)
    80001ed0:	00000493          	li	s1,0
    80001ed4:	06300793          	li	a5,99
    80001ed8:	0697cc63          	blt	a5,s1,80001f50 <_Z13stressTestingv+0x10c>
            int retval = mem_free(addrs[i]);
    80001edc:	00349793          	slli	a5,s1,0x3
    80001ee0:	fe040713          	addi	a4,s0,-32
    80001ee4:	00f707b3          	add	a5,a4,a5
    80001ee8:	ce07b503          	ld	a0,-800(a5)
    80001eec:	fffff097          	auipc	ra,0xfffff
    80001ef0:	39c080e7          	jalr	924(ra) # 80001288 <mem_free>
            if(retval != 0)
    80001ef4:	02051a63          	bnez	a0,80001f28 <_Z13stressTestingv+0xe4>
            addrs[i] = mem_alloc(sz/2);
    80001ef8:	01f9551b          	srliw	a0,s2,0x1f
    80001efc:	0125053b          	addw	a0,a0,s2
    80001f00:	4015551b          	sraiw	a0,a0,0x1
    80001f04:	fffff097          	auipc	ra,0xfffff
    80001f08:	354080e7          	jalr	852(ra) # 80001258 <mem_alloc>
    80001f0c:	00349793          	slli	a5,s1,0x3
    80001f10:	fe040713          	addi	a4,s0,-32
    80001f14:	00f707b3          	add	a5,a4,a5
    80001f18:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001f1c:	02050063          	beqz	a0,80001f3c <_Z13stressTestingv+0xf8>
        for(int i = 0 ; i < num;i+=2)
    80001f20:	0024849b          	addiw	s1,s1,2
    80001f24:	fb1ff06f          	j	80001ed4 <_Z13stressTestingv+0x90>
                printString("not OK\n");
    80001f28:	00007517          	auipc	a0,0x7
    80001f2c:	15850513          	addi	a0,a0,344 # 80009080 <CONSOLE_STATUS+0x70>
    80001f30:	00004097          	auipc	ra,0x4
    80001f34:	d54080e7          	jalr	-684(ra) # 80005c84 <_Z11printStringPKc>
                return;
    80001f38:	f79ff06f          	j	80001eb0 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001f3c:	00007517          	auipc	a0,0x7
    80001f40:	19c50513          	addi	a0,a0,412 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001f44:	00004097          	auipc	ra,0x4
    80001f48:	d40080e7          	jalr	-704(ra) # 80005c84 <_Z11printStringPKc>
                return;
    80001f4c:	f65ff06f          	j	80001eb0 <_Z13stressTestingv+0x6c>
        for(int i = 1 ; i < num;i+=2)
    80001f50:	00100493          	li	s1,1
    80001f54:	06300793          	li	a5,99
    80001f58:	0697c863          	blt	a5,s1,80001fc8 <_Z13stressTestingv+0x184>
            int retval = mem_free(addrs[i]);
    80001f5c:	00349793          	slli	a5,s1,0x3
    80001f60:	fe040713          	addi	a4,s0,-32
    80001f64:	00f707b3          	add	a5,a4,a5
    80001f68:	ce07b503          	ld	a0,-800(a5)
    80001f6c:	fffff097          	auipc	ra,0xfffff
    80001f70:	31c080e7          	jalr	796(ra) # 80001288 <mem_free>
            if(retval != 0)
    80001f74:	02051663          	bnez	a0,80001fa0 <_Z13stressTestingv+0x15c>
            addrs[i] = mem_alloc(sz);
    80001f78:	00090513          	mv	a0,s2
    80001f7c:	fffff097          	auipc	ra,0xfffff
    80001f80:	2dc080e7          	jalr	732(ra) # 80001258 <mem_alloc>
    80001f84:	00349793          	slli	a5,s1,0x3
    80001f88:	fe040713          	addi	a4,s0,-32
    80001f8c:	00f707b3          	add	a5,a4,a5
    80001f90:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001f94:	02050063          	beqz	a0,80001fb4 <_Z13stressTestingv+0x170>
        for(int i = 1 ; i < num;i+=2)
    80001f98:	0024849b          	addiw	s1,s1,2
    80001f9c:	fb9ff06f          	j	80001f54 <_Z13stressTestingv+0x110>
                printString("not OK\n");
    80001fa0:	00007517          	auipc	a0,0x7
    80001fa4:	0e050513          	addi	a0,a0,224 # 80009080 <CONSOLE_STATUS+0x70>
    80001fa8:	00004097          	auipc	ra,0x4
    80001fac:	cdc080e7          	jalr	-804(ra) # 80005c84 <_Z11printStringPKc>
                return;
    80001fb0:	f01ff06f          	j	80001eb0 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001fb4:	00007517          	auipc	a0,0x7
    80001fb8:	12450513          	addi	a0,a0,292 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001fbc:	00004097          	auipc	ra,0x4
    80001fc0:	cc8080e7          	jalr	-824(ra) # 80005c84 <_Z11printStringPKc>
                return;
    80001fc4:	eedff06f          	j	80001eb0 <_Z13stressTestingv+0x6c>
        sz-=10;
    80001fc8:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001fcc:	f01ff06f          	j	80001ecc <_Z13stressTestingv+0x88>
    printString("OK\n");
    80001fd0:	00007517          	auipc	a0,0x7
    80001fd4:	0b850513          	addi	a0,a0,184 # 80009088 <CONSOLE_STATUS+0x78>
    80001fd8:	00004097          	auipc	ra,0x4
    80001fdc:	cac080e7          	jalr	-852(ra) # 80005c84 <_Z11printStringPKc>
    80001fe0:	ed1ff06f          	j	80001eb0 <_Z13stressTestingv+0x6c>

0000000080001fe4 <_ZN12TestPeriodicC1Em>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {
    80001fe4:	fe010113          	addi	sp,sp,-32
    80001fe8:	00113c23          	sd	ra,24(sp)
    80001fec:	00813823          	sd	s0,16(sp)
    80001ff0:	00913423          	sd	s1,8(sp)
    80001ff4:	02010413          	addi	s0,sp,32
    80001ff8:	00050493          	mv	s1,a0
    80001ffc:	00002097          	auipc	ra,0x2
    80002000:	9fc080e7          	jalr	-1540(ra) # 800039f8 <_ZN14PeriodicThreadC1Em>
    80002004:	0000a797          	auipc	a5,0xa
    80002008:	a2c78793          	addi	a5,a5,-1492 # 8000ba30 <_ZTV12TestPeriodic+0x10>
    8000200c:	00f4b023          	sd	a5,0(s1)
}
    80002010:	01813083          	ld	ra,24(sp)
    80002014:	01013403          	ld	s0,16(sp)
    80002018:	00813483          	ld	s1,8(sp)
    8000201c:	02010113          	addi	sp,sp,32
    80002020:	00008067          	ret

0000000080002024 <_Z11threadTest3v>:
{
    80002024:	fe010113          	addi	sp,sp,-32
    80002028:	00113c23          	sd	ra,24(sp)
    8000202c:	00813823          	sd	s0,16(sp)
    80002030:	00913423          	sd	s1,8(sp)
    80002034:	01213023          	sd	s2,0(sp)
    80002038:	02010413          	addi	s0,sp,32
    Thread* t = new TestPeriodic(50);
    8000203c:	01000513          	li	a0,16
    80002040:	00001097          	auipc	ra,0x1
    80002044:	6b4080e7          	jalr	1716(ra) # 800036f4 <_Znwm>
    80002048:	00050913          	mv	s2,a0
    8000204c:	03200593          	li	a1,50
    80002050:	00000097          	auipc	ra,0x0
    80002054:	f94080e7          	jalr	-108(ra) # 80001fe4 <_ZN12TestPeriodicC1Em>
    t->start();
    80002058:	00090513          	mv	a0,s2
    8000205c:	00001097          	auipc	ra,0x1
    80002060:	768080e7          	jalr	1896(ra) # 800037c4 <_ZN6Thread5startEv>
    while(true)
    80002064:	0000006f          	j	80002064 <_Z11threadTest3v+0x40>
    80002068:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    8000206c:	00090513          	mv	a0,s2
    80002070:	00001097          	auipc	ra,0x1
    80002074:	6ac080e7          	jalr	1708(ra) # 8000371c <_ZdlPv>
    80002078:	00048513          	mv	a0,s1
    8000207c:	0000b097          	auipc	ra,0xb
    80002080:	d3c080e7          	jalr	-708(ra) # 8000cdb8 <_Unwind_Resume>

0000000080002084 <_Z11threadTestsv>:
{
    80002084:	ff010113          	addi	sp,sp,-16
    80002088:	00113423          	sd	ra,8(sp)
    8000208c:	00813023          	sd	s0,0(sp)
    80002090:	01010413          	addi	s0,sp,16
    threadTest3();
    80002094:	00000097          	auipc	ra,0x0
    80002098:	f90080e7          	jalr	-112(ra) # 80002024 <_Z11threadTest3v>

000000008000209c <_Z10mallocTestv>:
{
    8000209c:	fc010113          	addi	sp,sp,-64
    800020a0:	02113c23          	sd	ra,56(sp)
    800020a4:	02813823          	sd	s0,48(sp)
    800020a8:	02913423          	sd	s1,40(sp)
    800020ac:	03213023          	sd	s2,32(sp)
    800020b0:	01313c23          	sd	s3,24(sp)
    800020b4:	01413823          	sd	s4,16(sp)
    800020b8:	01513423          	sd	s5,8(sp)
    800020bc:	01613023          	sd	s6,0(sp)
    800020c0:	04010413          	addi	s0,sp,64
    printString("Testing a few mallocs and frees\n\n");
    800020c4:	00007517          	auipc	a0,0x7
    800020c8:	01c50513          	addi	a0,a0,28 # 800090e0 <CONSOLE_STATUS+0xd0>
    800020cc:	00004097          	auipc	ra,0x4
    800020d0:	bb8080e7          	jalr	-1096(ra) # 80005c84 <_Z11printStringPKc>
    object* o = new object;
    800020d4:	02c00513          	li	a0,44
    800020d8:	00001097          	auipc	ra,0x1
    800020dc:	61c080e7          	jalr	1564(ra) # 800036f4 <_Znwm>
    800020e0:	00050493          	mv	s1,a0
    o->a = 3;
    800020e4:	00300793          	li	a5,3
    800020e8:	00f52023          	sw	a5,0(a0)
    void* m1 = mem_alloc(10);
    800020ec:	00a00513          	li	a0,10
    800020f0:	fffff097          	auipc	ra,0xfffff
    800020f4:	168080e7          	jalr	360(ra) # 80001258 <mem_alloc>
    800020f8:	00050913          	mv	s2,a0
    void* m2 = mem_alloc(100);
    800020fc:	06400513          	li	a0,100
    80002100:	fffff097          	auipc	ra,0xfffff
    80002104:	158080e7          	jalr	344(ra) # 80001258 <mem_alloc>
    80002108:	00050993          	mv	s3,a0
    void* m3 = mem_alloc(1000);
    8000210c:	3e800513          	li	a0,1000
    80002110:	fffff097          	auipc	ra,0xfffff
    80002114:	148080e7          	jalr	328(ra) # 80001258 <mem_alloc>
    80002118:	00050a13          	mv	s4,a0
    void* m4 = mem_alloc(10000);
    8000211c:	00002537          	lui	a0,0x2
    80002120:	71050513          	addi	a0,a0,1808 # 2710 <_entry-0x7fffd8f0>
    80002124:	fffff097          	auipc	ra,0xfffff
    80002128:	134080e7          	jalr	308(ra) # 80001258 <mem_alloc>
    8000212c:	00050a93          	mv	s5,a0
    void* m5 = mem_alloc(1);
    80002130:	00100513          	li	a0,1
    80002134:	fffff097          	auipc	ra,0xfffff
    80002138:	124080e7          	jalr	292(ra) # 80001258 <mem_alloc>
    if(!m1 || !m2 || !m3 || !m4 || !m5){
    8000213c:	06090c63          	beqz	s2,800021b4 <_Z10mallocTestv+0x118>
    80002140:	00050b13          	mv	s6,a0
    80002144:	06098863          	beqz	s3,800021b4 <_Z10mallocTestv+0x118>
    80002148:	060a0663          	beqz	s4,800021b4 <_Z10mallocTestv+0x118>
    8000214c:	060a8463          	beqz	s5,800021b4 <_Z10mallocTestv+0x118>
    80002150:	06050263          	beqz	a0,800021b4 <_Z10mallocTestv+0x118>
    delete (uint64*)m1;
    80002154:	00090513          	mv	a0,s2
    80002158:	00001097          	auipc	ra,0x1
    8000215c:	5c4080e7          	jalr	1476(ra) # 8000371c <_ZdlPv>
    delete (uint64*)m3;
    80002160:	000a0513          	mv	a0,s4
    80002164:	00001097          	auipc	ra,0x1
    80002168:	5b8080e7          	jalr	1464(ra) # 8000371c <_ZdlPv>
    delete (uint64*)m4;
    8000216c:	000a8513          	mv	a0,s5
    80002170:	00001097          	auipc	ra,0x1
    80002174:	5ac080e7          	jalr	1452(ra) # 8000371c <_ZdlPv>
    delete (uint64*)m2;
    80002178:	00098513          	mv	a0,s3
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	5a0080e7          	jalr	1440(ra) # 8000371c <_ZdlPv>
    delete (uint64*)m5;
    80002184:	000b0513          	mv	a0,s6
    80002188:	00001097          	auipc	ra,0x1
    8000218c:	594080e7          	jalr	1428(ra) # 8000371c <_ZdlPv>
    delete o;
    80002190:	00048863          	beqz	s1,800021a0 <_Z10mallocTestv+0x104>
    80002194:	00048513          	mv	a0,s1
    80002198:	00001097          	auipc	ra,0x1
    8000219c:	584080e7          	jalr	1412(ra) # 8000371c <_ZdlPv>
    printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    800021a0:	00007517          	auipc	a0,0x7
    800021a4:	f6850513          	addi	a0,a0,-152 # 80009108 <CONSOLE_STATUS+0xf8>
    800021a8:	00004097          	auipc	ra,0x4
    800021ac:	adc080e7          	jalr	-1316(ra) # 80005c84 <_Z11printStringPKc>
    800021b0:	0140006f          	j	800021c4 <_Z10mallocTestv+0x128>
        printString("not OK\n");
    800021b4:	00007517          	auipc	a0,0x7
    800021b8:	ecc50513          	addi	a0,a0,-308 # 80009080 <CONSOLE_STATUS+0x70>
    800021bc:	00004097          	auipc	ra,0x4
    800021c0:	ac8080e7          	jalr	-1336(ra) # 80005c84 <_Z11printStringPKc>
}
    800021c4:	03813083          	ld	ra,56(sp)
    800021c8:	03013403          	ld	s0,48(sp)
    800021cc:	02813483          	ld	s1,40(sp)
    800021d0:	02013903          	ld	s2,32(sp)
    800021d4:	01813983          	ld	s3,24(sp)
    800021d8:	01013a03          	ld	s4,16(sp)
    800021dc:	00813a83          	ld	s5,8(sp)
    800021e0:	00013b03          	ld	s6,0(sp)
    800021e4:	04010113          	addi	sp,sp,64
    800021e8:	00008067          	ret

00000000800021ec <_Z16mallocEverythingv>:
{
    800021ec:	fe010113          	addi	sp,sp,-32
    800021f0:	00113c23          	sd	ra,24(sp)
    800021f4:	00813823          	sd	s0,16(sp)
    800021f8:	00913423          	sd	s1,8(sp)
    800021fc:	02010413          	addi	s0,sp,32
    printString("Testing allocating whole address space\n\n");
    80002200:	00007517          	auipc	a0,0x7
    80002204:	f3850513          	addi	a0,a0,-200 # 80009138 <CONSOLE_STATUS+0x128>
    80002208:	00004097          	auipc	ra,0x4
    8000220c:	a7c080e7          	jalr	-1412(ra) # 80005c84 <_Z11printStringPKc>
    uint64 neg_size = (uint64)HEAP_START_ADDR - (uint64)HEAP_END_ADDR -sizeof(MemoryAllocator::BlockHeader);
    80002210:	0000a797          	auipc	a5,0xa
    80002214:	9487b783          	ld	a5,-1720(a5) # 8000bb58 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002218:	0007b503          	ld	a0,0(a5)
    8000221c:	0000a797          	auipc	a5,0xa
    80002220:	9947b783          	ld	a5,-1644(a5) # 8000bbb0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002224:	0007b783          	ld	a5,0(a5)
    80002228:	40f50533          	sub	a0,a0,a5
    void* m = mem_alloc(neg_size);
    8000222c:	ff050513          	addi	a0,a0,-16
    80002230:	fffff097          	auipc	ra,0xfffff
    80002234:	028080e7          	jalr	40(ra) # 80001258 <mem_alloc>
    if(m!=nullptr){
    80002238:	02050463          	beqz	a0,80002260 <_Z16mallocEverythingv+0x74>
        printString("not OK\n");
    8000223c:	00007517          	auipc	a0,0x7
    80002240:	e4450513          	addi	a0,a0,-444 # 80009080 <CONSOLE_STATUS+0x70>
    80002244:	00004097          	auipc	ra,0x4
    80002248:	a40080e7          	jalr	-1472(ra) # 80005c84 <_Z11printStringPKc>
}
    8000224c:	01813083          	ld	ra,24(sp)
    80002250:	01013403          	ld	s0,16(sp)
    80002254:	00813483          	ld	s1,8(sp)
    80002258:	02010113          	addi	sp,sp,32
    8000225c:	00008067          	ret
    uint64 blockSize = (((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR - sizeof(MemoryAllocator::BlockHeader))>>6)-300;
    80002260:	0000a797          	auipc	a5,0xa
    80002264:	9507b783          	ld	a5,-1712(a5) # 8000bbb0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002268:	0007b503          	ld	a0,0(a5)
    8000226c:	0000a797          	auipc	a5,0xa
    80002270:	8ec7b783          	ld	a5,-1812(a5) # 8000bb58 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002274:	0007b783          	ld	a5,0(a5)
    80002278:	40f50533          	sub	a0,a0,a5
    8000227c:	ff050513          	addi	a0,a0,-16
    80002280:	00655513          	srli	a0,a0,0x6
    80002284:	ed450513          	addi	a0,a0,-300
    m = mem_alloc(blockSize<<6);
    80002288:	00651513          	slli	a0,a0,0x6
    8000228c:	fffff097          	auipc	ra,0xfffff
    80002290:	fcc080e7          	jalr	-52(ra) # 80001258 <mem_alloc>
    80002294:	00050493          	mv	s1,a0
    if(m==nullptr){
    80002298:	02050a63          	beqz	a0,800022cc <_Z16mallocEverythingv+0xe0>
    void *small_chunk = mem_alloc(1);
    8000229c:	00100513          	li	a0,1
    800022a0:	fffff097          	auipc	ra,0xfffff
    800022a4:	fb8080e7          	jalr	-72(ra) # 80001258 <mem_alloc>
    if(small_chunk == nullptr){
    800022a8:	02050c63          	beqz	a0,800022e0 <_Z16mallocEverythingv+0xf4>
    delete (uint64*)m;
    800022ac:	00048513          	mv	a0,s1
    800022b0:	00001097          	auipc	ra,0x1
    800022b4:	46c080e7          	jalr	1132(ra) # 8000371c <_ZdlPv>
    printString("SUCCESSFUL: Testing allocating whole address space\n\n");
    800022b8:	00007517          	auipc	a0,0x7
    800022bc:	eb050513          	addi	a0,a0,-336 # 80009168 <CONSOLE_STATUS+0x158>
    800022c0:	00004097          	auipc	ra,0x4
    800022c4:	9c4080e7          	jalr	-1596(ra) # 80005c84 <_Z11printStringPKc>
    800022c8:	f85ff06f          	j	8000224c <_Z16mallocEverythingv+0x60>
        printString("not OK\n");
    800022cc:	00007517          	auipc	a0,0x7
    800022d0:	db450513          	addi	a0,a0,-588 # 80009080 <CONSOLE_STATUS+0x70>
    800022d4:	00004097          	auipc	ra,0x4
    800022d8:	9b0080e7          	jalr	-1616(ra) # 80005c84 <_Z11printStringPKc>
        return;
    800022dc:	f71ff06f          	j	8000224c <_Z16mallocEverythingv+0x60>
        printString("not OK\n");
    800022e0:	00007517          	auipc	a0,0x7
    800022e4:	da050513          	addi	a0,a0,-608 # 80009080 <CONSOLE_STATUS+0x70>
    800022e8:	00004097          	auipc	ra,0x4
    800022ec:	99c080e7          	jalr	-1636(ra) # 80005c84 <_Z11printStringPKc>
        return;
    800022f0:	f5dff06f          	j	8000224c <_Z16mallocEverythingv+0x60>

00000000800022f4 <_Z17mallocGapFillTestv>:
{
    800022f4:	f6010113          	addi	sp,sp,-160
    800022f8:	08113c23          	sd	ra,152(sp)
    800022fc:	08813823          	sd	s0,144(sp)
    80002300:	08913423          	sd	s1,136(sp)
    80002304:	09213023          	sd	s2,128(sp)
    80002308:	07313c23          	sd	s3,120(sp)
    8000230c:	07413823          	sd	s4,112(sp)
    80002310:	07513423          	sd	s5,104(sp)
    80002314:	07613023          	sd	s6,96(sp)
    80002318:	05713c23          	sd	s7,88(sp)
    8000231c:	05813823          	sd	s8,80(sp)
    80002320:	0a010413          	addi	s0,sp,160
    printString("Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80002324:	00007517          	auipc	a0,0x7
    80002328:	e7c50513          	addi	a0,a0,-388 # 800091a0 <CONSOLE_STATUS+0x190>
    8000232c:	00004097          	auipc	ra,0x4
    80002330:	958080e7          	jalr	-1704(ra) # 80005c84 <_Z11printStringPKc>
    for(int i=0;i<N;i++)
    80002334:	00000493          	li	s1,0
    80002338:	00900793          	li	a5,9
    8000233c:	0697c863          	blt	a5,s1,800023ac <_Z17mallocGapFillTestv+0xb8>
        m[i] = mem_alloc((i<<6)+1);
    80002340:	0064951b          	slliw	a0,s1,0x6
    80002344:	0015051b          	addiw	a0,a0,1
    80002348:	fffff097          	auipc	ra,0xfffff
    8000234c:	f10080e7          	jalr	-240(ra) # 80001258 <mem_alloc>
    80002350:	00349793          	slli	a5,s1,0x3
    80002354:	fb040713          	addi	a4,s0,-80
    80002358:	00f707b3          	add	a5,a4,a5
    8000235c:	faa7b823          	sd	a0,-80(a5)
        if(m[i] == nullptr){
    80002360:	00050663          	beqz	a0,8000236c <_Z17mallocGapFillTestv+0x78>
    for(int i=0;i<N;i++)
    80002364:	0014849b          	addiw	s1,s1,1
    80002368:	fd1ff06f          	j	80002338 <_Z17mallocGapFillTestv+0x44>
            printString("not OK\n");
    8000236c:	00007517          	auipc	a0,0x7
    80002370:	d1450513          	addi	a0,a0,-748 # 80009080 <CONSOLE_STATUS+0x70>
    80002374:	00004097          	auipc	ra,0x4
    80002378:	910080e7          	jalr	-1776(ra) # 80005c84 <_Z11printStringPKc>
}
    8000237c:	09813083          	ld	ra,152(sp)
    80002380:	09013403          	ld	s0,144(sp)
    80002384:	08813483          	ld	s1,136(sp)
    80002388:	08013903          	ld	s2,128(sp)
    8000238c:	07813983          	ld	s3,120(sp)
    80002390:	07013a03          	ld	s4,112(sp)
    80002394:	06813a83          	ld	s5,104(sp)
    80002398:	06013b03          	ld	s6,96(sp)
    8000239c:	05813b83          	ld	s7,88(sp)
    800023a0:	05013c03          	ld	s8,80(sp)
    800023a4:	0a010113          	addi	sp,sp,160
    800023a8:	00008067          	ret
    delete (uint64*)m[2];
    800023ac:	f7043503          	ld	a0,-144(s0)
    800023b0:	00050663          	beqz	a0,800023bc <_Z17mallocGapFillTestv+0xc8>
    800023b4:	00001097          	auipc	ra,0x1
    800023b8:	368080e7          	jalr	872(ra) # 8000371c <_ZdlPv>
    void* tmp1 = mem_alloc(1);
    800023bc:	00100513          	li	a0,1
    800023c0:	fffff097          	auipc	ra,0xfffff
    800023c4:	e98080e7          	jalr	-360(ra) # 80001258 <mem_alloc>
    800023c8:	00050493          	mv	s1,a0
    void* tmp2 = mem_alloc(1);
    800023cc:	00100513          	li	a0,1
    800023d0:	fffff097          	auipc	ra,0xfffff
    800023d4:	e88080e7          	jalr	-376(ra) # 80001258 <mem_alloc>
    800023d8:	00050913          	mv	s2,a0
    void* tmp3 = mem_alloc(1);
    800023dc:	00100513          	li	a0,1
    800023e0:	fffff097          	auipc	ra,0xfffff
    800023e4:	e78080e7          	jalr	-392(ra) # 80001258 <mem_alloc>
    800023e8:	00050993          	mv	s3,a0
    if(!tmp1 || !tmp2 || !tmp3)
    800023ec:	08048863          	beqz	s1,8000247c <_Z17mallocGapFillTestv+0x188>
    800023f0:	08090663          	beqz	s2,8000247c <_Z17mallocGapFillTestv+0x188>
    800023f4:	08050463          	beqz	a0,8000247c <_Z17mallocGapFillTestv+0x188>
    uint64 im1 = (uint64)m[1];
    800023f8:	f6843783          	ld	a5,-152(s0)
    uint64 im3 = (uint64)m[3];
    800023fc:	f7843503          	ld	a0,-136(s0)
    uint64 im5 = (uint64)m[5];
    80002400:	f8843b03          	ld	s6,-120(s0)
    uint64 imN = (uint64)m[N];
    80002404:	fb043603          	ld	a2,-80(s0)
    uint64 itmp2 = (uint64)tmp2;
    80002408:	00090a13          	mv	s4,s2
    uint64 itmp3 = (uint64)tmp3;
    8000240c:	00098a93          	mv	s5,s3
    if(!(im1<itmp1 && itmp1<im3 && im1<itmp2 && itmp2<im3 && itmp3>imN))
    80002410:	0897f063          	bgeu	a5,s1,80002490 <_Z17mallocGapFillTestv+0x19c>
    80002414:	06a4fe63          	bgeu	s1,a0,80002490 <_Z17mallocGapFillTestv+0x19c>
    80002418:	0727fc63          	bgeu	a5,s2,80002490 <_Z17mallocGapFillTestv+0x19c>
    8000241c:	06a97a63          	bgeu	s2,a0,80002490 <_Z17mallocGapFillTestv+0x19c>
    80002420:	07367863          	bgeu	a2,s3,80002490 <_Z17mallocGapFillTestv+0x19c>
    delete (uint64*)m[3];
    80002424:	00050663          	beqz	a0,80002430 <_Z17mallocGapFillTestv+0x13c>
    80002428:	00001097          	auipc	ra,0x1
    8000242c:	2f4080e7          	jalr	756(ra) # 8000371c <_ZdlPv>
    delete (uint64*)m[4];
    80002430:	f8043503          	ld	a0,-128(s0)
    80002434:	00050663          	beqz	a0,80002440 <_Z17mallocGapFillTestv+0x14c>
    80002438:	00001097          	auipc	ra,0x1
    8000243c:	2e4080e7          	jalr	740(ra) # 8000371c <_ZdlPv>
    void* tmp4 = mem_alloc(640);
    80002440:	28000513          	li	a0,640
    80002444:	fffff097          	auipc	ra,0xfffff
    80002448:	e14080e7          	jalr	-492(ra) # 80001258 <mem_alloc>
    8000244c:	00050c13          	mv	s8,a0
    void* tmp5 = mem_alloc(576);
    80002450:	24000513          	li	a0,576
    80002454:	fffff097          	auipc	ra,0xfffff
    80002458:	e04080e7          	jalr	-508(ra) # 80001258 <mem_alloc>
    8000245c:	00050b93          	mv	s7,a0
    if(!tmp4 || !tmp5){
    80002460:	040c0263          	beqz	s8,800024a4 <_Z17mallocGapFillTestv+0x1b0>
    80002464:	04050063          	beqz	a0,800024a4 <_Z17mallocGapFillTestv+0x1b0>
    if(!(itmp5>itmp2 && itmp5>im5 && itmp4<itmp3)){
    80002468:	04aa7863          	bgeu	s4,a0,800024b8 <_Z17mallocGapFillTestv+0x1c4>
    8000246c:	04ab7663          	bgeu	s6,a0,800024b8 <_Z17mallocGapFillTestv+0x1c4>
    80002470:	055c7463          	bgeu	s8,s5,800024b8 <_Z17mallocGapFillTestv+0x1c4>
    for(int i=0;i<N;i++){
    80002474:	00000a13          	li	s4,0
    80002478:	0580006f          	j	800024d0 <_Z17mallocGapFillTestv+0x1dc>
        printString("not OK\n");
    8000247c:	00007517          	auipc	a0,0x7
    80002480:	c0450513          	addi	a0,a0,-1020 # 80009080 <CONSOLE_STATUS+0x70>
    80002484:	00004097          	auipc	ra,0x4
    80002488:	800080e7          	jalr	-2048(ra) # 80005c84 <_Z11printStringPKc>
        return;
    8000248c:	ef1ff06f          	j	8000237c <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    80002490:	00007517          	auipc	a0,0x7
    80002494:	bf050513          	addi	a0,a0,-1040 # 80009080 <CONSOLE_STATUS+0x70>
    80002498:	00003097          	auipc	ra,0x3
    8000249c:	7ec080e7          	jalr	2028(ra) # 80005c84 <_Z11printStringPKc>
        return;
    800024a0:	eddff06f          	j	8000237c <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024a4:	00007517          	auipc	a0,0x7
    800024a8:	bdc50513          	addi	a0,a0,-1060 # 80009080 <CONSOLE_STATUS+0x70>
    800024ac:	00003097          	auipc	ra,0x3
    800024b0:	7d8080e7          	jalr	2008(ra) # 80005c84 <_Z11printStringPKc>
        return;
    800024b4:	ec9ff06f          	j	8000237c <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024b8:	00007517          	auipc	a0,0x7
    800024bc:	bc850513          	addi	a0,a0,-1080 # 80009080 <CONSOLE_STATUS+0x70>
    800024c0:	00003097          	auipc	ra,0x3
    800024c4:	7c4080e7          	jalr	1988(ra) # 80005c84 <_Z11printStringPKc>
        return;
    800024c8:	eb5ff06f          	j	8000237c <_Z17mallocGapFillTestv+0x88>
    for(int i=0;i<N;i++){
    800024cc:	001a0a1b          	addiw	s4,s4,1
    800024d0:	00900793          	li	a5,9
    800024d4:	0347c263          	blt	a5,s4,800024f8 <_Z17mallocGapFillTestv+0x204>
        delete (uint64*)m[i];
    800024d8:	003a1793          	slli	a5,s4,0x3
    800024dc:	fb040713          	addi	a4,s0,-80
    800024e0:	00f707b3          	add	a5,a4,a5
    800024e4:	fb07b503          	ld	a0,-80(a5)
    800024e8:	fe0502e3          	beqz	a0,800024cc <_Z17mallocGapFillTestv+0x1d8>
    800024ec:	00001097          	auipc	ra,0x1
    800024f0:	230080e7          	jalr	560(ra) # 8000371c <_ZdlPv>
    800024f4:	fd9ff06f          	j	800024cc <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    800024f8:	00048513          	mv	a0,s1
    800024fc:	00001097          	auipc	ra,0x1
    80002500:	220080e7          	jalr	544(ra) # 8000371c <_ZdlPv>
    delete (uint64*)tmp2;
    80002504:	00090513          	mv	a0,s2
    80002508:	00001097          	auipc	ra,0x1
    8000250c:	214080e7          	jalr	532(ra) # 8000371c <_ZdlPv>
    delete (uint64*)tmp3;
    80002510:	00098513          	mv	a0,s3
    80002514:	00001097          	auipc	ra,0x1
    80002518:	208080e7          	jalr	520(ra) # 8000371c <_ZdlPv>
    delete (uint64*)tmp4;
    8000251c:	000c0513          	mv	a0,s8
    80002520:	00001097          	auipc	ra,0x1
    80002524:	1fc080e7          	jalr	508(ra) # 8000371c <_ZdlPv>
    delete (uint64*)tmp5;
    80002528:	000b8513          	mv	a0,s7
    8000252c:	00001097          	auipc	ra,0x1
    80002530:	1f0080e7          	jalr	496(ra) # 8000371c <_ZdlPv>
    printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80002534:	00007517          	auipc	a0,0x7
    80002538:	cb450513          	addi	a0,a0,-844 # 800091e8 <CONSOLE_STATUS+0x1d8>
    8000253c:	00003097          	auipc	ra,0x3
    80002540:	748080e7          	jalr	1864(ra) # 80005c84 <_Z11printStringPKc>
    80002544:	e39ff06f          	j	8000237c <_Z17mallocGapFillTestv+0x88>

0000000080002548 <_Z21memoryAllocationTestsv>:
{
    80002548:	ff010113          	addi	sp,sp,-16
    8000254c:	00113423          	sd	ra,8(sp)
    80002550:	00813023          	sd	s0,0(sp)
    80002554:	01010413          	addi	s0,sp,16
    mallocGapFillTest();
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	d9c080e7          	jalr	-612(ra) # 800022f4 <_Z17mallocGapFillTestv>
}
    80002560:	00813083          	ld	ra,8(sp)
    80002564:	00013403          	ld	s0,0(sp)
    80002568:	01010113          	addi	sp,sp,16
    8000256c:	00008067          	ret

0000000080002570 <_Z8semTest1v>:

void semTest1()
{
    80002570:	fe010113          	addi	sp,sp,-32
    80002574:	00113c23          	sd	ra,24(sp)
    80002578:	00813823          	sd	s0,16(sp)
    8000257c:	02010413          	addi	s0,sp,32
    sem_open(&spaceAvailable, 10);
    80002580:	00a00593          	li	a1,10
    80002584:	00009517          	auipc	a0,0x9
    80002588:	69c50513          	addi	a0,a0,1692 # 8000bc20 <spaceAvailable>
    8000258c:	fffff097          	auipc	ra,0xfffff
    80002590:	df0080e7          	jalr	-528(ra) # 8000137c <sem_open>

    sem_open(&itemAvailable, 0);
    80002594:	00000593          	li	a1,0
    80002598:	00009517          	auipc	a0,0x9
    8000259c:	67050513          	addi	a0,a0,1648 # 8000bc08 <itemAvailable>
    800025a0:	fffff097          	auipc	ra,0xfffff
    800025a4:	ddc080e7          	jalr	-548(ra) # 8000137c <sem_open>

    thread_t threadA, threadB;

    thread_create(&threadA, producerA, nullptr);
    800025a8:	00000613          	li	a2,0
    800025ac:	fffff597          	auipc	a1,0xfffff
    800025b0:	2bc58593          	addi	a1,a1,700 # 80001868 <_Z9producerAPv>
    800025b4:	fe840513          	addi	a0,s0,-24
    800025b8:	fffff097          	auipc	ra,0xfffff
    800025bc:	cfc080e7          	jalr	-772(ra) # 800012b4 <thread_create>

    thread_create(&threadB, consumerA, nullptr);
    800025c0:	00000613          	li	a2,0
    800025c4:	fffff597          	auipc	a1,0xfffff
    800025c8:	21c58593          	addi	a1,a1,540 # 800017e0 <_Z9consumerAPv>
    800025cc:	fe040513          	addi	a0,s0,-32
    800025d0:	fffff097          	auipc	ra,0xfffff
    800025d4:	ce4080e7          	jalr	-796(ra) # 800012b4 <thread_create>
    800025d8:	00c0006f          	j	800025e4 <_Z8semTest1v+0x74>

    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
        thread_dispatch();
    800025dc:	fffff097          	auipc	ra,0xfffff
    800025e0:	d58080e7          	jalr	-680(ra) # 80001334 <thread_dispatch>
    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
    800025e4:	fe843503          	ld	a0,-24(s0)
    800025e8:	00000097          	auipc	ra,0x0
    800025ec:	4d0080e7          	jalr	1232(ra) # 80002ab8 <_ZN3PCB10isFinishedEv>
    800025f0:	fe0506e3          	beqz	a0,800025dc <_Z8semTest1v+0x6c>
    800025f4:	fe843503          	ld	a0,-24(s0)
    800025f8:	00000097          	auipc	ra,0x0
    800025fc:	4c0080e7          	jalr	1216(ra) # 80002ab8 <_ZN3PCB10isFinishedEv>
    80002600:	fc050ee3          	beqz	a0,800025dc <_Z8semTest1v+0x6c>
}
    80002604:	01813083          	ld	ra,24(sp)
    80002608:	01013403          	ld	s0,16(sp)
    8000260c:	02010113          	addi	sp,sp,32
    80002610:	00008067          	ret

0000000080002614 <_Z14semaphoreTestsv>:
{
    80002614:	ff010113          	addi	sp,sp,-16
    80002618:	00113423          	sd	ra,8(sp)
    8000261c:	00813023          	sd	s0,0(sp)
    80002620:	01010413          	addi	s0,sp,16
    semTest1();
    80002624:	00000097          	auipc	ra,0x0
    80002628:	f4c080e7          	jalr	-180(ra) # 80002570 <_Z8semTest1v>
}
    8000262c:	00813083          	ld	ra,8(sp)
    80002630:	00013403          	ld	s0,0(sp)
    80002634:	01010113          	addi	sp,sp,16
    80002638:	00008067          	ret

000000008000263c <_Z12consoleTest1v>:

void consoleTest1()
{
    8000263c:	fe010113          	addi	sp,sp,-32
    80002640:	00113c23          	sd	ra,24(sp)
    80002644:	00813823          	sd	s0,16(sp)
    80002648:	00913423          	sd	s1,8(sp)
    8000264c:	02010413          	addi	s0,sp,32
    for(int i = 0; i < 100;i++)
    80002650:	00000493          	li	s1,0
    80002654:	06300793          	li	a5,99
    80002658:	0097ca63          	blt	a5,s1,8000266c <_Z12consoleTest1v+0x30>
    {
        getc();
    8000265c:	fffff097          	auipc	ra,0xfffff
    80002660:	eb4080e7          	jalr	-332(ra) # 80001510 <getc>
    for(int i = 0; i < 100;i++)
    80002664:	0014849b          	addiw	s1,s1,1
    80002668:	fedff06f          	j	80002654 <_Z12consoleTest1v+0x18>
    }
}
    8000266c:	01813083          	ld	ra,24(sp)
    80002670:	01013403          	ld	s0,16(sp)
    80002674:	00813483          	ld	s1,8(sp)
    80002678:	02010113          	addi	sp,sp,32
    8000267c:	00008067          	ret

0000000080002680 <_Z12consoleTestsv>:

void consoleTests()
{
    80002680:	ff010113          	addi	sp,sp,-16
    80002684:	00113423          	sd	ra,8(sp)
    80002688:	00813023          	sd	s0,0(sp)
    8000268c:	01010413          	addi	s0,sp,16
    consoleTest1();
    80002690:	00000097          	auipc	ra,0x0
    80002694:	fac080e7          	jalr	-84(ra) # 8000263c <_Z12consoleTest1v>
}
    80002698:	00813083          	ld	ra,8(sp)
    8000269c:	00013403          	ld	s0,0(sp)
    800026a0:	01010113          	addi	sp,sp,16
    800026a4:	00008067          	ret

00000000800026a8 <_Z7myTestsv>:
{
    800026a8:	ff010113          	addi	sp,sp,-16
    800026ac:	00113423          	sd	ra,8(sp)
    800026b0:	00813023          	sd	s0,0(sp)
    800026b4:	01010413          	addi	s0,sp,16
    consoleTests();
    800026b8:	00000097          	auipc	ra,0x0
    800026bc:	fc8080e7          	jalr	-56(ra) # 80002680 <_Z12consoleTestsv>
}
    800026c0:	00813083          	ld	ra,8(sp)
    800026c4:	00013403          	ld	s0,0(sp)
    800026c8:	01010113          	addi	sp,sp,16
    800026cc:	00008067          	ret

00000000800026d0 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    800026d0:	ff010113          	addi	sp,sp,-16
    800026d4:	00813423          	sd	s0,8(sp)
    800026d8:	01010413          	addi	s0,sp,16
    800026dc:	00813403          	ld	s0,8(sp)
    800026e0:	01010113          	addi	sp,sp,16
    800026e4:	00008067          	ret

00000000800026e8 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    800026e8:	ff010113          	addi	sp,sp,-16
    800026ec:	00813423          	sd	s0,8(sp)
    800026f0:	01010413          	addi	s0,sp,16
    800026f4:	00813403          	ld	s0,8(sp)
    800026f8:	01010113          	addi	sp,sp,16
    800026fc:	00008067          	ret

0000000080002700 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80002700:	ff010113          	addi	sp,sp,-16
    80002704:	00113423          	sd	ra,8(sp)
    80002708:	00813023          	sd	s0,0(sp)
    8000270c:	01010413          	addi	s0,sp,16
    80002710:	00009797          	auipc	a5,0x9
    80002714:	2f078793          	addi	a5,a5,752 # 8000ba00 <_ZTV14PeriodicThread+0x10>
    80002718:	00f53023          	sd	a5,0(a0)
    8000271c:	00001097          	auipc	ra,0x1
    80002720:	f68080e7          	jalr	-152(ra) # 80003684 <_ZN6ThreadD1Ev>
    80002724:	00813083          	ld	ra,8(sp)
    80002728:	00013403          	ld	s0,0(sp)
    8000272c:	01010113          	addi	sp,sp,16
    80002730:	00008067          	ret

0000000080002734 <_ZN14PeriodicThreadD0Ev>:
    80002734:	fe010113          	addi	sp,sp,-32
    80002738:	00113c23          	sd	ra,24(sp)
    8000273c:	00813823          	sd	s0,16(sp)
    80002740:	00913423          	sd	s1,8(sp)
    80002744:	02010413          	addi	s0,sp,32
    80002748:	00050493          	mv	s1,a0
    8000274c:	00009797          	auipc	a5,0x9
    80002750:	2b478793          	addi	a5,a5,692 # 8000ba00 <_ZTV14PeriodicThread+0x10>
    80002754:	00f53023          	sd	a5,0(a0)
    80002758:	00001097          	auipc	ra,0x1
    8000275c:	f2c080e7          	jalr	-212(ra) # 80003684 <_ZN6ThreadD1Ev>
    80002760:	00048513          	mv	a0,s1
    80002764:	00001097          	auipc	ra,0x1
    80002768:	fb8080e7          	jalr	-72(ra) # 8000371c <_ZdlPv>
    8000276c:	01813083          	ld	ra,24(sp)
    80002770:	01013403          	ld	s0,16(sp)
    80002774:	00813483          	ld	s1,8(sp)
    80002778:	02010113          	addi	sp,sp,32
    8000277c:	00008067          	ret

0000000080002780 <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    80002780:	ff010113          	addi	sp,sp,-16
    80002784:	00113423          	sd	ra,8(sp)
    80002788:	00813023          	sd	s0,0(sp)
    8000278c:	01010413          	addi	s0,sp,16
    80002790:	00009797          	auipc	a5,0x9
    80002794:	27078793          	addi	a5,a5,624 # 8000ba00 <_ZTV14PeriodicThread+0x10>
    80002798:	00f53023          	sd	a5,0(a0)
    8000279c:	00001097          	auipc	ra,0x1
    800027a0:	ee8080e7          	jalr	-280(ra) # 80003684 <_ZN6ThreadD1Ev>
    800027a4:	00813083          	ld	ra,8(sp)
    800027a8:	00013403          	ld	s0,0(sp)
    800027ac:	01010113          	addi	sp,sp,16
    800027b0:	00008067          	ret

00000000800027b4 <_ZN12TestPeriodicD0Ev>:
    800027b4:	fe010113          	addi	sp,sp,-32
    800027b8:	00113c23          	sd	ra,24(sp)
    800027bc:	00813823          	sd	s0,16(sp)
    800027c0:	00913423          	sd	s1,8(sp)
    800027c4:	02010413          	addi	s0,sp,32
    800027c8:	00050493          	mv	s1,a0
    800027cc:	00009797          	auipc	a5,0x9
    800027d0:	23478793          	addi	a5,a5,564 # 8000ba00 <_ZTV14PeriodicThread+0x10>
    800027d4:	00f53023          	sd	a5,0(a0)
    800027d8:	00001097          	auipc	ra,0x1
    800027dc:	eac080e7          	jalr	-340(ra) # 80003684 <_ZN6ThreadD1Ev>
    800027e0:	00048513          	mv	a0,s1
    800027e4:	00001097          	auipc	ra,0x1
    800027e8:	f38080e7          	jalr	-200(ra) # 8000371c <_ZdlPv>
    800027ec:	01813083          	ld	ra,24(sp)
    800027f0:	01013403          	ld	s0,16(sp)
    800027f4:	00813483          	ld	s1,8(sp)
    800027f8:	02010113          	addi	sp,sp,32
    800027fc:	00008067          	ret

0000000080002800 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    80002800:	ff010113          	addi	sp,sp,-16
    80002804:	00113423          	sd	ra,8(sp)
    80002808:	00813023          	sd	s0,0(sp)
    8000280c:	01010413          	addi	s0,sp,16
    trapPrintString("Runner started...\n");
    80002810:	00007517          	auipc	a0,0x7
    80002814:	a3050513          	addi	a0,a0,-1488 # 80009240 <CONSOLE_STATUS+0x230>
    80002818:	00003097          	auipc	ra,0x3
    8000281c:	718080e7          	jalr	1816(ra) # 80005f30 <_Z15trapPrintStringPKc>
    Riscv::popSppSpie();
    80002820:	00001097          	auipc	ra,0x1
    80002824:	314080e7          	jalr	788(ra) # 80003b34 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    80002828:	00009797          	auipc	a5,0x9
    8000282c:	4087b783          	ld	a5,1032(a5) # 8000bc30 <_ZN3PCB7runningE>
    80002830:	0287b703          	ld	a4,40(a5)
    80002834:	0307b503          	ld	a0,48(a5)
    80002838:	000700e7          	jalr	a4

    //printString("Runner ended...\n");

    thread_exit();
    8000283c:	fffff097          	auipc	ra,0xfffff
    80002840:	b18080e7          	jalr	-1256(ra) # 80001354 <thread_exit>
}
    80002844:	00813083          	ld	ra,8(sp)
    80002848:	00013403          	ld	s0,0(sp)
    8000284c:	01010113          	addi	sp,sp,16
    80002850:	00008067          	ret

0000000080002854 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80002854:	ff010113          	addi	sp,sp,-16
    80002858:	00813423          	sd	s0,8(sp)
    8000285c:	01010413          	addi	s0,sp,16
    })
    80002860:	00050023          	sb	zero,0(a0)
    80002864:	00e53c23          	sd	a4,24(a0)
    80002868:	02053023          	sd	zero,32(a0)
    8000286c:	02b53423          	sd	a1,40(a0)
    80002870:	02c53823          	sd	a2,48(a0)
    80002874:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002878:	000017b7          	lui	a5,0x1
    8000287c:	00f686b3          	add	a3,a3,a5
    })
    80002880:	04d53423          	sd	a3,72(a0)
    80002884:	00000797          	auipc	a5,0x0
    80002888:	f7c78793          	addi	a5,a5,-132 # 80002800 <_ZN3PCB6runnerEv>
    8000288c:	04f53823          	sd	a5,80(a0)
    nextPCB = 0;
    80002890:	00053423          	sd	zero,8(a0)
}
    80002894:	00813403          	ld	s0,8(sp)
    80002898:	01010113          	addi	sp,sp,16
    8000289c:	00008067          	ret

00000000800028a0 <_ZN3PCB5sleepEm>:
{
    800028a0:	ff010113          	addi	sp,sp,-16
    800028a4:	00813423          	sd	s0,8(sp)
    800028a8:	01010413          	addi	s0,sp,16
}
    800028ac:	00813403          	ld	s0,8(sp)
    800028b0:	01010113          	addi	sp,sp,16
    800028b4:	00008067          	ret

00000000800028b8 <_ZN3PCB5startEv>:
{
    800028b8:	ff010113          	addi	sp,sp,-16
    800028bc:	00113423          	sd	ra,8(sp)
    800028c0:	00813023          	sd	s0,0(sp)
    800028c4:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    800028c8:	00001097          	auipc	ra,0x1
    800028cc:	c58080e7          	jalr	-936(ra) # 80003520 <_ZN9Scheduler3putEP3PCB>
}
    800028d0:	00813083          	ld	ra,8(sp)
    800028d4:	00013403          	ld	s0,0(sp)
    800028d8:	01010113          	addi	sp,sp,16
    800028dc:	00008067          	ret

00000000800028e0 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    800028e0:	fe010113          	addi	sp,sp,-32
    800028e4:	00113c23          	sd	ra,24(sp)
    800028e8:	00813823          	sd	s0,16(sp)
    800028ec:	00913423          	sd	s1,8(sp)
    800028f0:	02010413          	addi	s0,sp,32
    //trapPrintString("Dispatch called...\n");
    PCB* old = running;
    800028f4:	00009497          	auipc	s1,0x9
    800028f8:	33c4b483          	ld	s1,828(s1) # 8000bc30 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800028fc:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    80002900:	00100793          	li	a5,1
    80002904:	04f70063          	beq	a4,a5,80002944 <_ZN3PCB8dispatchEv+0x64>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002908:	00001097          	auipc	ra,0x1
    8000290c:	c6c080e7          	jalr	-916(ra) # 80003574 <_ZN9Scheduler3getEv>
    80002910:	00009797          	auipc	a5,0x9
    80002914:	32a7b023          	sd	a0,800(a5) # 8000bc30 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    80002918:	00100793          	li	a5,1
    8000291c:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);
    //trapPrintString("Switching context...\n");

    //Riscv::changePrivMode();

    PCB::contextSwitch(&old->context, &running->context);
    80002920:	04850593          	addi	a1,a0,72
    80002924:	04848513          	addi	a0,s1,72
    80002928:	fffff097          	auipc	ra,0xfffff
    8000292c:	910080e7          	jalr	-1776(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80002930:	01813083          	ld	ra,24(sp)
    80002934:	01013403          	ld	s0,16(sp)
    80002938:	00813483          	ld	s1,8(sp)
    8000293c:	02010113          	addi	sp,sp,32
    80002940:	00008067          	ret
        Scheduler::put(old);
    80002944:	00048513          	mv	a0,s1
    80002948:	00001097          	auipc	ra,0x1
    8000294c:	bd8080e7          	jalr	-1064(ra) # 80003520 <_ZN9Scheduler3putEP3PCB>
    80002950:	fb9ff06f          	j	80002908 <_ZN3PCB8dispatchEv+0x28>

0000000080002954 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80002954:	ff010113          	addi	sp,sp,-16
    80002958:	00113423          	sd	ra,8(sp)
    8000295c:	00813023          	sd	s0,0(sp)
    80002960:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80002964:	00002097          	auipc	ra,0x2
    80002968:	a3c080e7          	jalr	-1476(ra) # 800043a0 <_Z7kmallocm>
}
    8000296c:	00813083          	ld	ra,8(sp)
    80002970:	00013403          	ld	s0,0(sp)
    80002974:	01010113          	addi	sp,sp,16
    80002978:	00008067          	ret

000000008000297c <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    8000297c:	ff010113          	addi	sp,sp,-16
    80002980:	00113423          	sd	ra,8(sp)
    80002984:	00813023          	sd	s0,0(sp)
    80002988:	01010413          	addi	s0,sp,16
    kfree(p);
    8000298c:	00002097          	auipc	ra,0x2
    80002990:	a78080e7          	jalr	-1416(ra) # 80004404 <_Z5kfreePv>
}
    80002994:	00813083          	ld	ra,8(sp)
    80002998:	00013403          	ld	s0,0(sp)
    8000299c:	01010113          	addi	sp,sp,16
    800029a0:	00008067          	ret

00000000800029a4 <_ZN3PCBD1Ev>:

PCB::~PCB()
    800029a4:	ff010113          	addi	sp,sp,-16
    800029a8:	00113423          	sd	ra,8(sp)
    800029ac:	00813023          	sd	s0,0(sp)
    800029b0:	01010413          	addi	s0,sp,16
{
    kfree(beginSP);
    800029b4:	03853503          	ld	a0,56(a0)
    800029b8:	00002097          	auipc	ra,0x2
    800029bc:	a4c080e7          	jalr	-1460(ra) # 80004404 <_Z5kfreePv>
}
    800029c0:	00813083          	ld	ra,8(sp)
    800029c4:	00013403          	ld	s0,0(sp)
    800029c8:	01010113          	addi	sp,sp,16
    800029cc:	00008067          	ret

00000000800029d0 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800029d0:	fd010113          	addi	sp,sp,-48
    800029d4:	02113423          	sd	ra,40(sp)
    800029d8:	02813023          	sd	s0,32(sp)
    800029dc:	00913c23          	sd	s1,24(sp)
    800029e0:	01213823          	sd	s2,16(sp)
    800029e4:	01313423          	sd	s3,8(sp)
    800029e8:	01413023          	sd	s4,0(sp)
    800029ec:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800029f0:	05800513          	li	a0,88
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	f60080e7          	jalr	-160(ra) # 80002954 <_ZN3PCBnwEm>
    800029fc:	00050493          	mv	s1,a0
    80002a00:	00000713          	li	a4,0
    80002a04:	00000693          	li	a3,0
    80002a08:	00000613          	li	a2,0
    80002a0c:	00000593          	li	a1,0
    80002a10:	00000097          	auipc	ra,0x0
    80002a14:	e44080e7          	jalr	-444(ra) # 80002854 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->start();
    80002a18:	00048513          	mv	a0,s1
    80002a1c:	00000097          	auipc	ra,0x0
    80002a20:	e9c080e7          	jalr	-356(ra) # 800028b8 <_ZN3PCB5startEv>
    mainSystem->systemThread = true;
    80002a24:	00100793          	li	a5,1
    80002a28:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    80002a2c:	00001097          	auipc	ra,0x1
    80002a30:	b48080e7          	jalr	-1208(ra) # 80003574 <_ZN9Scheduler3getEv>
    80002a34:	00009917          	auipc	s2,0x9
    80002a38:	1fc90913          	addi	s2,s2,508 # 8000bc30 <_ZN3PCB7runningE>
    80002a3c:	00a93023          	sd	a0,0(s2)
    80002a40:	00100a13          	li	s4,1
    80002a44:	05452023          	sw	s4,64(a0)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002a48:	00001537          	lui	a0,0x1
    80002a4c:	00002097          	auipc	ra,0x2
    80002a50:	954080e7          	jalr	-1708(ra) # 800043a0 <_Z7kmallocm>
    80002a54:	00050993          	mv	s3,a0
    80002a58:	05800513          	li	a0,88
    80002a5c:	00000097          	auipc	ra,0x0
    80002a60:	ef8080e7          	jalr	-264(ra) # 80002954 <_ZN3PCBnwEm>
    80002a64:	00050493          	mv	s1,a0
    80002a68:	00200713          	li	a4,2
    80002a6c:	00098693          	mv	a3,s3
    80002a70:	00000613          	li	a2,0
    80002a74:	00009597          	auipc	a1,0x9
    80002a78:	11c5b583          	ld	a1,284(a1) # 8000bb90 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002a7c:	00000097          	auipc	ra,0x0
    80002a80:	dd8080e7          	jalr	-552(ra) # 80002854 <_ZN3PCBC1EPFvPvES0_S0_m>
    80002a84:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80002a88:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    80002a8c:	00893503          	ld	a0,8(s2)
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	e28080e7          	jalr	-472(ra) # 800028b8 <_ZN3PCB5startEv>
    //PCB* idlePCB = new PCB(&Riscv::idleRiscv, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    //idlePCB->start();
    //idlePCB->systemThread = true;
}
    80002a98:	02813083          	ld	ra,40(sp)
    80002a9c:	02013403          	ld	s0,32(sp)
    80002aa0:	01813483          	ld	s1,24(sp)
    80002aa4:	01013903          	ld	s2,16(sp)
    80002aa8:	00813983          	ld	s3,8(sp)
    80002aac:	00013a03          	ld	s4,0(sp)
    80002ab0:	03010113          	addi	sp,sp,48
    80002ab4:	00008067          	ret

0000000080002ab8 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002ab8:	ff010113          	addi	sp,sp,-16
    80002abc:	00813423          	sd	s0,8(sp)
    80002ac0:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002ac4:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    80002ac8:	ffd50513          	addi	a0,a0,-3
}
    80002acc:	00153513          	seqz	a0,a0
    80002ad0:	00813403          	ld	s0,8(sp)
    80002ad4:	01010113          	addi	sp,sp,16
    80002ad8:	00008067          	ret

0000000080002adc <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002adc:	ff010113          	addi	sp,sp,-16
    80002ae0:	00113423          	sd	ra,8(sp)
    80002ae4:	00813023          	sd	s0,0(sp)
    80002ae8:	01010413          	addi	s0,sp,16
    trapPrintString("Exiting thread...\n");
    80002aec:	00006517          	auipc	a0,0x6
    80002af0:	76c50513          	addi	a0,a0,1900 # 80009258 <CONSOLE_STATUS+0x248>
    80002af4:	00003097          	auipc	ra,0x3
    80002af8:	43c080e7          	jalr	1084(ra) # 80005f30 <_Z15trapPrintStringPKc>
    PCB::timeSliceCounter = 0;
    80002afc:	00009797          	auipc	a5,0x9
    80002b00:	13478793          	addi	a5,a5,308 # 8000bc30 <_ZN3PCB7runningE>
    80002b04:	0007b823          	sd	zero,16(a5)
    PCB::running->setState(PCB::FINISHED);
    80002b08:	0007b783          	ld	a5,0(a5)
    80002b0c:	00300713          	li	a4,3
    80002b10:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    80002b14:	00000097          	auipc	ra,0x0
    80002b18:	dcc080e7          	jalr	-564(ra) # 800028e0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80002b1c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002b20:	00001097          	auipc	ra,0x1
    80002b24:	47c080e7          	jalr	1148(ra) # 80003f9c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b28:	00813083          	ld	ra,8(sp)
    80002b2c:	00013403          	ld	s0,0(sp)
    80002b30:	01010113          	addi	sp,sp,16
    80002b34:	00008067          	ret

0000000080002b38 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002b38:	ff010113          	addi	sp,sp,-16
    80002b3c:	00113423          	sd	ra,8(sp)
    80002b40:	00813023          	sd	s0,0(sp)
    80002b44:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002b48:	00009797          	auipc	a5,0x9
    80002b4c:	0e07bc23          	sd	zero,248(a5) # 8000bc40 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002b50:	00000097          	auipc	ra,0x0
    80002b54:	d90080e7          	jalr	-624(ra) # 800028e0 <_ZN3PCB8dispatchEv>
}
    80002b58:	00813083          	ld	ra,8(sp)
    80002b5c:	00013403          	ld	s0,0(sp)
    80002b60:	01010113          	addi	sp,sp,16
    80002b64:	00008067          	ret

0000000080002b68 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002b68:	ff010113          	addi	sp,sp,-16
    80002b6c:	00113423          	sd	ra,8(sp)
    80002b70:	00813023          	sd	s0,0(sp)
    80002b74:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002b78:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002b7c:	00009717          	auipc	a4,0x9
    80002b80:	0b470713          	addi	a4,a4,180 # 8000bc30 <_ZN3PCB7runningE>
    80002b84:	00073823          	sd	zero,16(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002b88:	00073703          	ld	a4,0(a4)
    80002b8c:	00009697          	auipc	a3,0x9
    80002b90:	ffc6b683          	ld	a3,-4(a3) # 8000bb88 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002b94:	0006b683          	ld	a3,0(a3)
    80002b98:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002b9c:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002ba0:	00000097          	auipc	ra,0x0
    80002ba4:	678080e7          	jalr	1656(ra) # 80003218 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002ba8:	00000097          	auipc	ra,0x0
    80002bac:	d38080e7          	jalr	-712(ra) # 800028e0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002bb0:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002bb4:	00001097          	auipc	ra,0x1
    80002bb8:	3e8080e7          	jalr	1000(ra) # 80003f9c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002bbc:	00813083          	ld	ra,8(sp)
    80002bc0:	00013403          	ld	s0,0(sp)
    80002bc4:	01010113          	addi	sp,sp,16
    80002bc8:	00008067          	ret

0000000080002bcc <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002bcc:	fd010113          	addi	sp,sp,-48
    80002bd0:	02113423          	sd	ra,40(sp)
    80002bd4:	02813023          	sd	s0,32(sp)
    80002bd8:	00913c23          	sd	s1,24(sp)
    80002bdc:	01213823          	sd	s2,16(sp)
    80002be0:	01313423          	sd	s3,8(sp)
    80002be4:	01413023          	sd	s4,0(sp)
    80002be8:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002bec:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002bf0:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002bf4:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002bf8:	05800513          	li	a0,88
    80002bfc:	00000097          	auipc	ra,0x0
    80002c00:	d58080e7          	jalr	-680(ra) # 80002954 <_ZN3PCBnwEm>
    80002c04:	00050493          	mv	s1,a0
    80002c08:	00200713          	li	a4,2
    80002c0c:	00009697          	auipc	a3,0x9
    80002c10:	03c6b683          	ld	a3,60(a3) # 8000bc48 <_ZN3PCB10savedRegA4E>
    80002c14:	000a0613          	mv	a2,s4
    80002c18:	00098593          	mv	a1,s3
    80002c1c:	00000097          	auipc	ra,0x0
    80002c20:	c38080e7          	jalr	-968(ra) # 80002854 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002c24:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002c28:	02048e63          	beqz	s1,80002c64 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002c2c:	00048513          	mv	a0,s1
    80002c30:	00000097          	auipc	ra,0x0
    80002c34:	c88080e7          	jalr	-888(ra) # 800028b8 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002c38:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002c3c:	00001097          	auipc	ra,0x1
    80002c40:	360080e7          	jalr	864(ra) # 80003f9c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c44:	02813083          	ld	ra,40(sp)
    80002c48:	02013403          	ld	s0,32(sp)
    80002c4c:	01813483          	ld	s1,24(sp)
    80002c50:	01013903          	ld	s2,16(sp)
    80002c54:	00813983          	ld	s3,8(sp)
    80002c58:	00013a03          	ld	s4,0(sp)
    80002c5c:	03010113          	addi	sp,sp,48
    80002c60:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002c64:	fff00513          	li	a0,-1
    80002c68:	fd5ff06f          	j	80002c3c <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002c6c <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002c6c:	ff010113          	addi	sp,sp,-16
    80002c70:	00113423          	sd	ra,8(sp)
    80002c74:	00813023          	sd	s0,0(sp)
    80002c78:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002c7c:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002c80:	02050463          	beqz	a0,80002ca8 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002c84:	00000097          	auipc	ra,0x0
    80002c88:	c34080e7          	jalr	-972(ra) # 800028b8 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002c8c:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002c90:	00001097          	auipc	ra,0x1
    80002c94:	30c080e7          	jalr	780(ra) # 80003f9c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c98:	00813083          	ld	ra,8(sp)
    80002c9c:	00013403          	ld	s0,0(sp)
    80002ca0:	01010113          	addi	sp,sp,16
    80002ca4:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002ca8:	fff00513          	li	a0,-1
    80002cac:	fe5ff06f          	j	80002c90 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002cb0 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002cb0:	fd010113          	addi	sp,sp,-48
    80002cb4:	02113423          	sd	ra,40(sp)
    80002cb8:	02813023          	sd	s0,32(sp)
    80002cbc:	00913c23          	sd	s1,24(sp)
    80002cc0:	01213823          	sd	s2,16(sp)
    80002cc4:	01313423          	sd	s3,8(sp)
    80002cc8:	01413023          	sd	s4,0(sp)
    80002ccc:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002cd0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002cd4:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002cd8:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002cdc:	05800513          	li	a0,88
    80002ce0:	00000097          	auipc	ra,0x0
    80002ce4:	c74080e7          	jalr	-908(ra) # 80002954 <_ZN3PCBnwEm>
    80002ce8:	00050493          	mv	s1,a0
    80002cec:	00200713          	li	a4,2
    80002cf0:	00009697          	auipc	a3,0x9
    80002cf4:	f586b683          	ld	a3,-168(a3) # 8000bc48 <_ZN3PCB10savedRegA4E>
    80002cf8:	000a0613          	mv	a2,s4
    80002cfc:	00098593          	mv	a1,s3
    80002d00:	00000097          	auipc	ra,0x0
    80002d04:	b54080e7          	jalr	-1196(ra) # 80002854 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002d08:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002d0c:	02048863          	beqz	s1,80002d3c <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80002d10:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002d14:	00001097          	auipc	ra,0x1
    80002d18:	288080e7          	jalr	648(ra) # 80003f9c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002d1c:	02813083          	ld	ra,40(sp)
    80002d20:	02013403          	ld	s0,32(sp)
    80002d24:	01813483          	ld	s1,24(sp)
    80002d28:	01013903          	ld	s2,16(sp)
    80002d2c:	00813983          	ld	s3,8(sp)
    80002d30:	00013a03          	ld	s4,0(sp)
    80002d34:	03010113          	addi	sp,sp,48
    80002d38:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002d3c:	fff00513          	li	a0,-1
    80002d40:	fd5ff06f          	j	80002d14 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002d44 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>:
KSemaphore* KConsole::hasCharactersOutput = 0;
KSemaphore* KConsole::hasCharactersInput = 0;
uint64 KConsole::pendingGetc = 0;

void KConsole::putChar(char c, Elem*& head, Elem*& tail)
{
    80002d44:	fd010113          	addi	sp,sp,-48
    80002d48:	02113423          	sd	ra,40(sp)
    80002d4c:	02813023          	sd	s0,32(sp)
    80002d50:	00913c23          	sd	s1,24(sp)
    80002d54:	01213823          	sd	s2,16(sp)
    80002d58:	01313423          	sd	s3,8(sp)
    80002d5c:	03010413          	addi	s0,sp,48
    80002d60:	00050993          	mv	s3,a0
    80002d64:	00058913          	mv	s2,a1
    80002d68:	00060493          	mv	s1,a2
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    80002d6c:	01000513          	li	a0,16
    80002d70:	00001097          	auipc	ra,0x1
    80002d74:	630080e7          	jalr	1584(ra) # 800043a0 <_Z7kmallocm>
    newElem->next = 0;
    80002d78:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    80002d7c:	01350423          	sb	s3,8(a0)
    if(head == 0)
    80002d80:	00093783          	ld	a5,0(s2)
    80002d84:	02078663          	beqz	a5,80002db0 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x6c>
    {
        head = tail = newElem;
    }
    else
    {
        tail->next = newElem;
    80002d88:	0004b783          	ld	a5,0(s1)
    80002d8c:	00a7b023          	sd	a0,0(a5)
        tail = newElem;
    80002d90:	00a4b023          	sd	a0,0(s1)
    }
}
    80002d94:	02813083          	ld	ra,40(sp)
    80002d98:	02013403          	ld	s0,32(sp)
    80002d9c:	01813483          	ld	s1,24(sp)
    80002da0:	01013903          	ld	s2,16(sp)
    80002da4:	00813983          	ld	s3,8(sp)
    80002da8:	03010113          	addi	sp,sp,48
    80002dac:	00008067          	ret
        head = tail = newElem;
    80002db0:	00a4b023          	sd	a0,0(s1)
    80002db4:	00a93023          	sd	a0,0(s2)
    80002db8:	fddff06f          	j	80002d94 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x50>

0000000080002dbc <_ZN8KConsole7getCharERPNS_4ElemES2_>:

char KConsole::getChar(Elem*& head, Elem*& tail)
{
    80002dbc:	fe010113          	addi	sp,sp,-32
    80002dc0:	00113c23          	sd	ra,24(sp)
    80002dc4:	00813823          	sd	s0,16(sp)
    80002dc8:	00913423          	sd	s1,8(sp)
    80002dcc:	02010413          	addi	s0,sp,32
    80002dd0:	00050793          	mv	a5,a0
    if(head == 0)
    80002dd4:	00053503          	ld	a0,0(a0)
    80002dd8:	02050e63          	beqz	a0,80002e14 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x58>
        return 0;

    Elem* ret = head;
    head = head->next;
    80002ddc:	00053703          	ld	a4,0(a0)
    80002de0:	00e7b023          	sd	a4,0(a5)
    if(head == 0)
    80002de4:	02070463          	beqz	a4,80002e0c <_ZN8KConsole7getCharERPNS_4ElemES2_+0x50>
        tail = 0;

    char c = ret->data;
    80002de8:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    80002dec:	00001097          	auipc	ra,0x1
    80002df0:	618080e7          	jalr	1560(ra) # 80004404 <_Z5kfreePv>
    return c;
}
    80002df4:	00048513          	mv	a0,s1
    80002df8:	01813083          	ld	ra,24(sp)
    80002dfc:	01013403          	ld	s0,16(sp)
    80002e00:	00813483          	ld	s1,8(sp)
    80002e04:	02010113          	addi	sp,sp,32
    80002e08:	00008067          	ret
        tail = 0;
    80002e0c:	0005b023          	sd	zero,0(a1)
    80002e10:	fd9ff06f          	j	80002de8 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x2c>
        return 0;
    80002e14:	00000493          	li	s1,0
    80002e18:	fddff06f          	j	80002df4 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x38>

0000000080002e1c <_ZN8KConsole10initializeEv>:

void KConsole::initialize()
{
    80002e1c:	fe010113          	addi	sp,sp,-32
    80002e20:	00113c23          	sd	ra,24(sp)
    80002e24:	00813823          	sd	s0,16(sp)
    80002e28:	00913423          	sd	s1,8(sp)
    80002e2c:	01213023          	sd	s2,0(sp)
    80002e30:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002e34:	01800513          	li	a0,24
    80002e38:	00002097          	auipc	ra,0x2
    80002e3c:	87c080e7          	jalr	-1924(ra) # 800046b4 <_ZN10KSemaphorenwEm>
    80002e40:	00050493          	mv	s1,a0
    80002e44:	00000593          	li	a1,0
    80002e48:	00001097          	auipc	ra,0x1
    80002e4c:	61c080e7          	jalr	1564(ra) # 80004464 <_ZN10KSemaphoreC1Ei>
    80002e50:	00009797          	auipc	a5,0x9
    80002e54:	e097b023          	sd	s1,-512(a5) # 8000bc50 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002e58:	01800513          	li	a0,24
    80002e5c:	00002097          	auipc	ra,0x2
    80002e60:	858080e7          	jalr	-1960(ra) # 800046b4 <_ZN10KSemaphorenwEm>
    80002e64:	00050493          	mv	s1,a0
    80002e68:	00000593          	li	a1,0
    80002e6c:	00001097          	auipc	ra,0x1
    80002e70:	5f8080e7          	jalr	1528(ra) # 80004464 <_ZN10KSemaphoreC1Ei>
    80002e74:	00009797          	auipc	a5,0x9
    80002e78:	de97b223          	sd	s1,-540(a5) # 8000bc58 <_ZN8KConsole19hasCharactersOutputE>
}
    80002e7c:	01813083          	ld	ra,24(sp)
    80002e80:	01013403          	ld	s0,16(sp)
    80002e84:	00813483          	ld	s1,8(sp)
    80002e88:	00013903          	ld	s2,0(sp)
    80002e8c:	02010113          	addi	sp,sp,32
    80002e90:	00008067          	ret
    80002e94:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002e98:	00048513          	mv	a0,s1
    80002e9c:	00002097          	auipc	ra,0x2
    80002ea0:	8b0080e7          	jalr	-1872(ra) # 8000474c <_ZN10KSemaphoredlEPv>
    80002ea4:	00090513          	mv	a0,s2
    80002ea8:	0000a097          	auipc	ra,0xa
    80002eac:	f10080e7          	jalr	-240(ra) # 8000cdb8 <_Unwind_Resume>
    80002eb0:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002eb4:	00048513          	mv	a0,s1
    80002eb8:	00002097          	auipc	ra,0x2
    80002ebc:	894080e7          	jalr	-1900(ra) # 8000474c <_ZN10KSemaphoredlEPv>
    80002ec0:	00090513          	mv	a0,s2
    80002ec4:	0000a097          	auipc	ra,0xa
    80002ec8:	ef4080e7          	jalr	-268(ra) # 8000cdb8 <_Unwind_Resume>

0000000080002ecc <_ZN8KConsole17putCharacterInputEc>:
                thread_dispatch();
    }
}

void KConsole::putCharacterInput(char c)
{
    80002ecc:	ff010113          	addi	sp,sp,-16
    80002ed0:	00113423          	sd	ra,8(sp)
    80002ed4:	00813023          	sd	s0,0(sp)
    80002ed8:	01010413          	addi	s0,sp,16
    putChar(c, headInput, tailInput);
    80002edc:	00009617          	auipc	a2,0x9
    80002ee0:	d8460613          	addi	a2,a2,-636 # 8000bc60 <_ZN8KConsole9tailInputE>
    80002ee4:	00009597          	auipc	a1,0x9
    80002ee8:	d8458593          	addi	a1,a1,-636 # 8000bc68 <_ZN8KConsole9headInputE>
    80002eec:	00000097          	auipc	ra,0x0
    80002ef0:	e58080e7          	jalr	-424(ra) # 80002d44 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersInput->signal();
    80002ef4:	00009517          	auipc	a0,0x9
    80002ef8:	d5c53503          	ld	a0,-676(a0) # 8000bc50 <_ZN8KConsole18hasCharactersInputE>
    80002efc:	00001097          	auipc	ra,0x1
    80002f00:	770080e7          	jalr	1904(ra) # 8000466c <_ZN10KSemaphore6signalEv>
}
    80002f04:	00813083          	ld	ra,8(sp)
    80002f08:	00013403          	ld	s0,0(sp)
    80002f0c:	01010113          	addi	sp,sp,16
    80002f10:	00008067          	ret

0000000080002f14 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002f14:	ff010113          	addi	sp,sp,-16
    80002f18:	00113423          	sd	ra,8(sp)
    80002f1c:	00813023          	sd	s0,0(sp)
    80002f20:	01010413          	addi	s0,sp,16
    hasCharactersInput->wait();
    80002f24:	00009517          	auipc	a0,0x9
    80002f28:	d2c53503          	ld	a0,-724(a0) # 8000bc50 <_ZN8KConsole18hasCharactersInputE>
    80002f2c:	00001097          	auipc	ra,0x1
    80002f30:	5e0080e7          	jalr	1504(ra) # 8000450c <_ZN10KSemaphore4waitEv>
    return getChar(headInput, tailInput);
    80002f34:	00009597          	auipc	a1,0x9
    80002f38:	d2c58593          	addi	a1,a1,-724 # 8000bc60 <_ZN8KConsole9tailInputE>
    80002f3c:	00009517          	auipc	a0,0x9
    80002f40:	d2c50513          	addi	a0,a0,-724 # 8000bc68 <_ZN8KConsole9headInputE>
    80002f44:	00000097          	auipc	ra,0x0
    80002f48:	e78080e7          	jalr	-392(ra) # 80002dbc <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002f4c:	00813083          	ld	ra,8(sp)
    80002f50:	00013403          	ld	s0,0(sp)
    80002f54:	01010113          	addi	sp,sp,16
    80002f58:	00008067          	ret

0000000080002f5c <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    80002f5c:	ff010113          	addi	sp,sp,-16
    80002f60:	00113423          	sd	ra,8(sp)
    80002f64:	00813023          	sd	s0,0(sp)
    80002f68:	01010413          	addi	s0,sp,16
    putChar(c, headOutput, tailOutput);
    80002f6c:	00009617          	auipc	a2,0x9
    80002f70:	d0460613          	addi	a2,a2,-764 # 8000bc70 <_ZN8KConsole10tailOutputE>
    80002f74:	00009597          	auipc	a1,0x9
    80002f78:	d0458593          	addi	a1,a1,-764 # 8000bc78 <_ZN8KConsole10headOutputE>
    80002f7c:	00000097          	auipc	ra,0x0
    80002f80:	dc8080e7          	jalr	-568(ra) # 80002d44 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersOutput->signal();
    80002f84:	00009517          	auipc	a0,0x9
    80002f88:	cd453503          	ld	a0,-812(a0) # 8000bc58 <_ZN8KConsole19hasCharactersOutputE>
    80002f8c:	00001097          	auipc	ra,0x1
    80002f90:	6e0080e7          	jalr	1760(ra) # 8000466c <_ZN10KSemaphore6signalEv>
}
    80002f94:	00813083          	ld	ra,8(sp)
    80002f98:	00013403          	ld	s0,0(sp)
    80002f9c:	01010113          	addi	sp,sp,16
    80002fa0:	00008067          	ret

0000000080002fa4 <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80002fa4:	00009797          	auipc	a5,0x9
    80002fa8:	bac7b783          	ld	a5,-1108(a5) # 8000bb50 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002fac:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002fb0:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002fb4:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002fb8:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002fbc:	0017f793          	andi	a5,a5,1
    80002fc0:	08078063          	beqz	a5,80003040 <_ZN8KConsole24getCharactersFromConsoleEPv+0x9c>
{
    80002fc4:	fe010113          	addi	sp,sp,-32
    80002fc8:	00113c23          	sd	ra,24(sp)
    80002fcc:	00813823          	sd	s0,16(sp)
    80002fd0:	00913423          	sd	s1,8(sp)
    80002fd4:	02010413          	addi	s0,sp,32
            x = CONSOLE_TX_DATA;
    80002fd8:	00009797          	auipc	a5,0x9
    80002fdc:	b987b783          	ld	a5,-1128(a5) # 8000bb70 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002fe0:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002fe4:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1,0(a0)");
    80002fe8:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(c));
    80002fec:	00058493          	mv	s1,a1
    80002ff0:	0ff4f493          	andi	s1,s1,255
            putCharacterInput(c);
    80002ff4:	00048513          	mv	a0,s1
    80002ff8:	00000097          	auipc	ra,0x0
    80002ffc:	ed4080e7          	jalr	-300(ra) # 80002ecc <_ZN8KConsole17putCharacterInputEc>
            putCharacterOutput(c);
    80003000:	00048513          	mv	a0,s1
    80003004:	00000097          	auipc	ra,0x0
    80003008:	f58080e7          	jalr	-168(ra) # 80002f5c <_ZN8KConsole18putCharacterOutputEc>
        uint64 x = CONSOLE_STATUS;
    8000300c:	00009797          	auipc	a5,0x9
    80003010:	b447b783          	ld	a5,-1212(a5) # 8000bb50 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003014:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80003018:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    8000301c:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003020:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80003024:	0017f793          	andi	a5,a5,1
    80003028:	fa0798e3          	bnez	a5,80002fd8 <_ZN8KConsole24getCharactersFromConsoleEPv+0x34>
}
    8000302c:	01813083          	ld	ra,24(sp)
    80003030:	01013403          	ld	s0,16(sp)
    80003034:	00813483          	ld	s1,8(sp)
    80003038:	02010113          	addi	sp,sp,32
    8000303c:	00008067          	ret
    80003040:	00008067          	ret

0000000080003044 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80003044:	ff010113          	addi	sp,sp,-16
    80003048:	00113423          	sd	ra,8(sp)
    8000304c:	00813023          	sd	s0,0(sp)
    80003050:	01010413          	addi	s0,sp,16
    hasCharactersOutput->wait();
    80003054:	00009517          	auipc	a0,0x9
    80003058:	c0453503          	ld	a0,-1020(a0) # 8000bc58 <_ZN8KConsole19hasCharactersOutputE>
    8000305c:	00001097          	auipc	ra,0x1
    80003060:	4b0080e7          	jalr	1200(ra) # 8000450c <_ZN10KSemaphore4waitEv>
    return getChar(headOutput, tailOutput);
    80003064:	00009597          	auipc	a1,0x9
    80003068:	c0c58593          	addi	a1,a1,-1012 # 8000bc70 <_ZN8KConsole10tailOutputE>
    8000306c:	00009517          	auipc	a0,0x9
    80003070:	c0c50513          	addi	a0,a0,-1012 # 8000bc78 <_ZN8KConsole10headOutputE>
    80003074:	00000097          	auipc	ra,0x0
    80003078:	d48080e7          	jalr	-696(ra) # 80002dbc <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    8000307c:	00813083          	ld	ra,8(sp)
    80003080:	00013403          	ld	s0,0(sp)
    80003084:	01010113          	addi	sp,sp,16
    80003088:	00008067          	ret

000000008000308c <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    8000308c:	ff010113          	addi	sp,sp,-16
    80003090:	00113423          	sd	ra,8(sp)
    80003094:	00813023          	sd	s0,0(sp)
    80003098:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    8000309c:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    800030a0:	0ff57513          	andi	a0,a0,255
    800030a4:	00000097          	auipc	ra,0x0
    800030a8:	eb8080e7          	jalr	-328(ra) # 80002f5c <_ZN8KConsole18putCharacterOutputEc>
    Elem* curr = headOutput;
    800030ac:	00009797          	auipc	a5,0x9
    800030b0:	bcc7b783          	ld	a5,-1076(a5) # 8000bc78 <_ZN8KConsole10headOutputE>
    while(curr != 0)
    800030b4:	00078663          	beqz	a5,800030c0 <_ZN8KConsole11putcHandlerEv+0x34>
    {
        curr = curr->next;
    800030b8:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    800030bc:	ff9ff06f          	j	800030b4 <_ZN8KConsole11putcHandlerEv+0x28>
    }
}
    800030c0:	00813083          	ld	ra,8(sp)
    800030c4:	00013403          	ld	s0,0(sp)
    800030c8:	01010113          	addi	sp,sp,16
    800030cc:	00008067          	ret

00000000800030d0 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    800030d0:	ff010113          	addi	sp,sp,-16
    800030d4:	00113423          	sd	ra,8(sp)
    800030d8:	00813023          	sd	s0,0(sp)
    800030dc:	01010413          	addi	s0,sp,16
    pendingGetc++;
    800030e0:	00009717          	auipc	a4,0x9
    800030e4:	b7070713          	addi	a4,a4,-1168 # 8000bc50 <_ZN8KConsole18hasCharactersInputE>
    800030e8:	03073783          	ld	a5,48(a4)
    800030ec:	00178793          	addi	a5,a5,1
    800030f0:	02f73823          	sd	a5,48(a4)
    char ch;
    ch = getCharacterInput();
    800030f4:	00000097          	auipc	ra,0x0
    800030f8:	e20080e7          	jalr	-480(ra) # 80002f14 <_ZN8KConsole17getCharacterInputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    800030fc:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003100:	00001097          	auipc	ra,0x1
    80003104:	e9c080e7          	jalr	-356(ra) # 80003f9c <_ZN5Riscv13w_a0_sscratchEv>
}
    80003108:	00813083          	ld	ra,8(sp)
    8000310c:	00013403          	ld	s0,0(sp)
    80003110:	01010113          	addi	sp,sp,16
    80003114:	00008067          	ret

0000000080003118 <_ZN8KConsole11printBufferEv>:

void KConsole::printBuffer()
{
    80003118:	fe010113          	addi	sp,sp,-32
    8000311c:	00113c23          	sd	ra,24(sp)
    80003120:	00813823          	sd	s0,16(sp)
    80003124:	00913423          	sd	s1,8(sp)
    80003128:	02010413          	addi	s0,sp,32
    Elem* curr = headInput;
    8000312c:	00009497          	auipc	s1,0x9
    80003130:	b3c4b483          	ld	s1,-1220(s1) # 8000bc68 <_ZN8KConsole9headInputE>
    while(curr != 0)
    80003134:	00048c63          	beqz	s1,8000314c <_ZN8KConsole11printBufferEv+0x34>
    {
        putc(curr->data);
    80003138:	0084c503          	lbu	a0,8(s1)
    8000313c:	ffffe097          	auipc	ra,0xffffe
    80003140:	3fc080e7          	jalr	1020(ra) # 80001538 <putc>
        curr = curr->next;
    80003144:	0004b483          	ld	s1,0(s1)
    while(curr != 0)
    80003148:	fedff06f          	j	80003134 <_ZN8KConsole11printBufferEv+0x1c>
    }
}
    8000314c:	01813083          	ld	ra,24(sp)
    80003150:	01013403          	ld	s0,16(sp)
    80003154:	00813483          	ld	s1,8(sp)
    80003158:	02010113          	addi	sp,sp,32
    8000315c:	00008067          	ret

0000000080003160 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty() {
    80003160:	ff010113          	addi	sp,sp,-16
    80003164:	00813423          	sd	s0,8(sp)
    80003168:	01010413          	addi	s0,sp,16
    return headOutput == 0;
}
    8000316c:	00009517          	auipc	a0,0x9
    80003170:	b0c53503          	ld	a0,-1268(a0) # 8000bc78 <_ZN8KConsole10headOutputE>
    80003174:	00153513          	seqz	a0,a0
    80003178:	00813403          	ld	s0,8(sp)
    8000317c:	01010113          	addi	sp,sp,16
    80003180:	00008067          	ret

0000000080003184 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    80003184:	fe010113          	addi	sp,sp,-32
    80003188:	00113c23          	sd	ra,24(sp)
    8000318c:	00813823          	sd	s0,16(sp)
    80003190:	02010413          	addi	s0,sp,32
    80003194:	0580006f          	j	800031ec <_ZN8KConsole23sendCharactersToConsoleEPv+0x68>
                thread_exit();
    80003198:	ffffe097          	auipc	ra,0xffffe
    8000319c:	1bc080e7          	jalr	444(ra) # 80001354 <thread_exit>
            uint64 x = CONSOLE_STATUS;
    800031a0:	00009797          	auipc	a5,0x9
    800031a4:	9b07b783          	ld	a5,-1616(a5) # 8000bb50 <_GLOBAL_OFFSET_TABLE_+0x10>
    800031a8:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    800031ac:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    800031b0:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    800031b4:	00058793          	mv	a5,a1
            if (operation & STATUS_WRITE_MASK)
    800031b8:	0207f793          	andi	a5,a5,32
    800031bc:	04078863          	beqz	a5,8000320c <_ZN8KConsole23sendCharactersToConsoleEPv+0x88>
                char volatile c = getCharacterOutput();
    800031c0:	00000097          	auipc	ra,0x0
    800031c4:	e84080e7          	jalr	-380(ra) # 80003044 <_ZN8KConsole18getCharacterOutputEv>
    800031c8:	fea407a3          	sb	a0,-17(s0)
                x = CONSOLE_RX_DATA;
    800031cc:	00009797          	auipc	a5,0x9
    800031d0:	97c7b783          	ld	a5,-1668(a5) # 8000bb48 <_GLOBAL_OFFSET_TABLE_+0x8>
    800031d4:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    800031d8:	00078513          	mv	a0,a5
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    800031dc:	fef44783          	lbu	a5,-17(s0)
    800031e0:	0ff7f793          	andi	a5,a5,255
    800031e4:	00078593          	mv	a1,a5
                __asm__ volatile("sb a1,0(a0)");
    800031e8:	00b50023          	sb	a1,0(a0)
            if(Riscv::finishSystem && KConsole::outputBufferEmpty())
    800031ec:	00009797          	auipc	a5,0x9
    800031f0:	9b47b783          	ld	a5,-1612(a5) # 8000bba0 <_GLOBAL_OFFSET_TABLE_+0x60>
    800031f4:	0007c783          	lbu	a5,0(a5)
    800031f8:	fa0784e3          	beqz	a5,800031a0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x1c>
    800031fc:	00000097          	auipc	ra,0x0
    80003200:	f64080e7          	jalr	-156(ra) # 80003160 <_ZN8KConsole17outputBufferEmptyEv>
    80003204:	f8050ee3          	beqz	a0,800031a0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x1c>
    80003208:	f91ff06f          	j	80003198 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
                thread_dispatch();
    8000320c:	ffffe097          	auipc	ra,0xffffe
    80003210:	128080e7          	jalr	296(ra) # 80001334 <thread_dispatch>
    80003214:	fd9ff06f          	j	800031ec <_ZN8KConsole23sendCharactersToConsoleEPv+0x68>

0000000080003218 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003218:	ff010113          	addi	sp,sp,-16
    8000321c:	00813423          	sd	s0,8(sp)
    80003220:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003224:	00009797          	auipc	a5,0x9
    80003228:	9847b783          	ld	a5,-1660(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000322c:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003230:	00500793          	li	a5,5
    80003234:	04f62023          	sw	a5,64(a2)
    //trapPrintString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003238:	00009797          	auipc	a5,0x9
    8000323c:	a507b783          	ld	a5,-1456(a5) # 8000bc88 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003240:	00000593          	li	a1,0
    while(curr != 0)
    80003244:	02078063          	beqz	a5,80003264 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003248:	02063683          	ld	a3,32(a2)
    8000324c:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003250:	00e6e863          	bltu	a3,a4,80003260 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003254:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003258:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000325c:	fe9ff06f          	j	80003244 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003260:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80003264:	00058a63          	beqz	a1,80003278 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80003268:	00c5b423          	sd	a2,8(a1)
}
    8000326c:	00813403          	ld	s0,8(sp)
    80003270:	01010113          	addi	sp,sp,16
    80003274:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80003278:	00009797          	auipc	a5,0x9
    8000327c:	a0c7b823          	sd	a2,-1520(a5) # 8000bc88 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003280:	fedff06f          	j	8000326c <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

0000000080003284 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //trapPrintString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    80003284:	00009517          	auipc	a0,0x9
    80003288:	a0453503          	ld	a0,-1532(a0) # 8000bc88 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    8000328c:	06050e63          	beqz	a0,80003308 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    {
        //trapPrintString("No sleeping PCBs...\n");
        return;
    }
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003290:	06050c63          	beqz	a0,80003308 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003294:	02053783          	ld	a5,32(a0)
    80003298:	00009717          	auipc	a4,0x9
    8000329c:	8f073703          	ld	a4,-1808(a4) # 8000bb88 <_GLOBAL_OFFSET_TABLE_+0x48>
    800032a0:	00073703          	ld	a4,0(a4)
    800032a4:	06f76263          	bltu	a4,a5,80003308 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    800032a8:	fe010113          	addi	sp,sp,-32
    800032ac:	00113c23          	sd	ra,24(sp)
    800032b0:	00813823          	sd	s0,16(sp)
    800032b4:	00913423          	sd	s1,8(sp)
    800032b8:	02010413          	addi	s0,sp,32
    800032bc:	0180006f          	j	800032d4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    800032c0:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800032c4:	00009717          	auipc	a4,0x9
    800032c8:	8c473703          	ld	a4,-1852(a4) # 8000bb88 <_GLOBAL_OFFSET_TABLE_+0x48>
    800032cc:	00073703          	ld	a4,0(a4)
    800032d0:	02f76263          	bltu	a4,a5,800032f4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    800032d4:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    800032d8:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    800032dc:	00000097          	auipc	ra,0x0
    800032e0:	244080e7          	jalr	580(ra) # 80003520 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    800032e4:	00009797          	auipc	a5,0x9
    800032e8:	9a97b223          	sd	s1,-1628(a5) # 8000bc88 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    800032ec:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800032f0:	fc0498e3          	bnez	s1,800032c0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    800032f4:	01813083          	ld	ra,24(sp)
    800032f8:	01013403          	ld	s0,16(sp)
    800032fc:	00813483          	ld	s1,8(sp)
    80003300:	02010113          	addi	sp,sp,32
    80003304:	00008067          	ret
    80003308:	00008067          	ret

000000008000330c <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    8000330c:	fe010113          	addi	sp,sp,-32
    80003310:	00113c23          	sd	ra,24(sp)
    80003314:	00813823          	sd	s0,16(sp)
    80003318:	00913423          	sd	s1,8(sp)
    8000331c:	01213023          	sd	s2,0(sp)
    80003320:	02010413          	addi	s0,sp,32
    80003324:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80003328:	00053503          	ld	a0,0(a0)
    8000332c:	00853903          	ld	s2,8(a0)
    kfree(first);
    80003330:	00001097          	auipc	ra,0x1
    80003334:	0d4080e7          	jalr	212(ra) # 80004404 <_Z5kfreePv>
    first = newFirst;
    80003338:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    8000333c:	00090e63          	beqz	s2,80003358 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80003340:	01813083          	ld	ra,24(sp)
    80003344:	01013403          	ld	s0,16(sp)
    80003348:	00813483          	ld	s1,8(sp)
    8000334c:	00013903          	ld	s2,0(sp)
    80003350:	02010113          	addi	sp,sp,32
    80003354:	00008067          	ret
        first = last = 0;
    80003358:	0004b423          	sd	zero,8(s1)
    8000335c:	0004b023          	sd	zero,0(s1)
}
    80003360:	fe1ff06f          	j	80003340 <_ZN5Queue3popEv+0x34>

0000000080003364 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t)
{
    80003364:	fe010113          	addi	sp,sp,-32
    80003368:	00113c23          	sd	ra,24(sp)
    8000336c:	00813823          	sd	s0,16(sp)
    80003370:	00913423          	sd	s1,8(sp)
    80003374:	01213023          	sd	s2,0(sp)
    80003378:	02010413          	addi	s0,sp,32
    8000337c:	00050493          	mv	s1,a0
    80003380:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80003384:	01000513          	li	a0,16
    80003388:	00001097          	auipc	ra,0x1
    8000338c:	018080e7          	jalr	24(ra) # 800043a0 <_Z7kmallocm>
    newElem->data = t;
    80003390:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80003394:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80003398:	0004b783          	ld	a5,0(s1)
    8000339c:	02078463          	beqz	a5,800033c4 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    800033a0:	0084b783          	ld	a5,8(s1)
    800033a4:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    800033a8:	00a4b423          	sd	a0,8(s1)
    }
}
    800033ac:	01813083          	ld	ra,24(sp)
    800033b0:	01013403          	ld	s0,16(sp)
    800033b4:	00813483          	ld	s1,8(sp)
    800033b8:	00013903          	ld	s2,0(sp)
    800033bc:	02010113          	addi	sp,sp,32
    800033c0:	00008067          	ret
        first = newElem;
    800033c4:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    800033c8:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    800033cc:	00053423          	sd	zero,8(a0)
    800033d0:	0004b783          	ld	a5,0(s1)
    800033d4:	0007b423          	sd	zero,8(a5)
    800033d8:	fd5ff06f          	j	800033ac <_ZN5Queue4pushEP3PCB+0x48>

00000000800033dc <_ZN5Queue5frontEv>:


PCB* Queue::front()
{
    800033dc:	ff010113          	addi	sp,sp,-16
    800033e0:	00813423          	sd	s0,8(sp)
    800033e4:	01010413          	addi	s0,sp,16
    if(first == 0)
    800033e8:	00053503          	ld	a0,0(a0)
    800033ec:	00050463          	beqz	a0,800033f4 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    800033f0:	00053503          	ld	a0,0(a0)
}
    800033f4:	00813403          	ld	s0,8(sp)
    800033f8:	01010113          	addi	sp,sp,16
    800033fc:	00008067          	ret

0000000080003400 <_ZN5QueueC1Ev>:

Queue::Queue()
    80003400:	ff010113          	addi	sp,sp,-16
    80003404:	00813423          	sd	s0,8(sp)
    80003408:	01010413          	addi	s0,sp,16
{
    first = last = 0;
    8000340c:	00053423          	sd	zero,8(a0)
    80003410:	00053023          	sd	zero,0(a0)
}
    80003414:	00813403          	ld	s0,8(sp)
    80003418:	01010113          	addi	sp,sp,16
    8000341c:	00008067          	ret

0000000080003420 <_ZN5QueueD1Ev>:

Queue::~Queue()
{
    Elem* curr = first;
    80003420:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80003424:	04050063          	beqz	a0,80003464 <_ZN5QueueD1Ev+0x44>
Queue::~Queue()
    80003428:	fe010113          	addi	sp,sp,-32
    8000342c:	00113c23          	sd	ra,24(sp)
    80003430:	00813823          	sd	s0,16(sp)
    80003434:	00913423          	sd	s1,8(sp)
    80003438:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    8000343c:	00853483          	ld	s1,8(a0)
        kfree(old);
    80003440:	00001097          	auipc	ra,0x1
    80003444:	fc4080e7          	jalr	-60(ra) # 80004404 <_Z5kfreePv>
        curr = curr->next;
    80003448:	00048513          	mv	a0,s1
    while(curr != 0)
    8000344c:	fe0498e3          	bnez	s1,8000343c <_ZN5QueueD1Ev+0x1c>
    }
}
    80003450:	01813083          	ld	ra,24(sp)
    80003454:	01013403          	ld	s0,16(sp)
    80003458:	00813483          	ld	s1,8(sp)
    8000345c:	02010113          	addi	sp,sp,32
    80003460:	00008067          	ret
    80003464:	00008067          	ret

0000000080003468 <_ZN5Queue4sizeEv>:

int Queue::size()
{
    80003468:	ff010113          	addi	sp,sp,-16
    8000346c:	00813423          	sd	s0,8(sp)
    80003470:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80003474:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    80003478:	00000513          	li	a0,0
    while(curr != 0)
    8000347c:	00078863          	beqz	a5,8000348c <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    80003480:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80003484:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003488:	ff5ff06f          	j	8000347c <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    8000348c:	00813403          	ld	s0,8(sp)
    80003490:	01010113          	addi	sp,sp,16
    80003494:	00008067          	ret

0000000080003498 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    80003498:	ff010113          	addi	sp,sp,-16
    8000349c:	00113423          	sd	ra,8(sp)
    800034a0:	00813023          	sd	s0,0(sp)
    800034a4:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800034a8:	00001097          	auipc	ra,0x1
    800034ac:	ef8080e7          	jalr	-264(ra) # 800043a0 <_Z7kmallocm>
}
    800034b0:	00813083          	ld	ra,8(sp)
    800034b4:	00013403          	ld	s0,0(sp)
    800034b8:	01010113          	addi	sp,sp,16
    800034bc:	00008067          	ret

00000000800034c0 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800034c0:	ff010113          	addi	sp,sp,-16
    800034c4:	00113423          	sd	ra,8(sp)
    800034c8:	00813023          	sd	s0,0(sp)
    800034cc:	01010413          	addi	s0,sp,16
    kfree(p);
    800034d0:	00001097          	auipc	ra,0x1
    800034d4:	f34080e7          	jalr	-204(ra) # 80004404 <_Z5kfreePv>
}
    800034d8:	00813083          	ld	ra,8(sp)
    800034dc:	00013403          	ld	s0,0(sp)
    800034e0:	01010113          	addi	sp,sp,16
    800034e4:	00008067          	ret

00000000800034e8 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    800034e8:	ff010113          	addi	sp,sp,-16
    800034ec:	00813423          	sd	s0,8(sp)
    800034f0:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    800034f4:	00008797          	auipc	a5,0x8
    800034f8:	79c7b783          	ld	a5,1948(a5) # 8000bc90 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    800034fc:	00000513          	li	a0,0
    while(curr != 0)
    80003500:	00078863          	beqz	a5,80003510 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003504:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003508:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000350c:	ff5ff06f          	j	80003500 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003510:	0005051b          	sext.w	a0,a0
    80003514:	00813403          	ld	s0,8(sp)
    80003518:	01010113          	addi	sp,sp,16
    8000351c:	00008067          	ret

0000000080003520 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003520:	ff010113          	addi	sp,sp,-16
    80003524:	00813423          	sd	s0,8(sp)
    80003528:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    8000352c:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003530:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003534:	00008797          	auipc	a5,0x8
    80003538:	75c7b783          	ld	a5,1884(a5) # 8000bc90 <_ZN9Scheduler16schedulerPCBHeadE>
    8000353c:	02078263          	beqz	a5,80003560 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003540:	00008797          	auipc	a5,0x8
    80003544:	75078793          	addi	a5,a5,1872 # 8000bc90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003548:	0087b703          	ld	a4,8(a5)
    8000354c:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003550:	00a7b423          	sd	a0,8(a5)
    }
}
    80003554:	00813403          	ld	s0,8(sp)
    80003558:	01010113          	addi	sp,sp,16
    8000355c:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003560:	00008797          	auipc	a5,0x8
    80003564:	73078793          	addi	a5,a5,1840 # 8000bc90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003568:	00a7b423          	sd	a0,8(a5)
    8000356c:	00a7b023          	sd	a0,0(a5)
    80003570:	fe5ff06f          	j	80003554 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003574 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003574:	ff010113          	addi	sp,sp,-16
    80003578:	00813423          	sd	s0,8(sp)
    8000357c:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80003580:	00008517          	auipc	a0,0x8
    80003584:	71053503          	ld	a0,1808(a0) # 8000bc90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003588:	00050c63          	beqz	a0,800035a0 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    8000358c:	00853783          	ld	a5,8(a0)
    80003590:	00078e63          	beqz	a5,800035ac <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003594:	00008717          	auipc	a4,0x8
    80003598:	6ef73e23          	sd	a5,1788(a4) # 8000bc90 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    8000359c:	00053423          	sd	zero,8(a0)
    return retval;
}
    800035a0:	00813403          	ld	s0,8(sp)
    800035a4:	01010113          	addi	sp,sp,16
    800035a8:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    800035ac:	00008797          	auipc	a5,0x8
    800035b0:	6e478793          	addi	a5,a5,1764 # 8000bc90 <_ZN9Scheduler16schedulerPCBHeadE>
    800035b4:	0007b423          	sd	zero,8(a5)
    800035b8:	0007b023          	sd	zero,0(a5)
    800035bc:	fe1ff06f          	j	8000359c <_ZN9Scheduler3getEv+0x28>

00000000800035c0 <_ZN9Scheduler5printEv>:

void Scheduler::print() {
    800035c0:	fe010113          	addi	sp,sp,-32
    800035c4:	00113c23          	sd	ra,24(sp)
    800035c8:	00813823          	sd	s0,16(sp)
    800035cc:	00913423          	sd	s1,8(sp)
    800035d0:	02010413          	addi	s0,sp,32
    trapPrintString("Scheduler print\n");
    800035d4:	00006517          	auipc	a0,0x6
    800035d8:	c9c50513          	addi	a0,a0,-868 # 80009270 <CONSOLE_STATUS+0x260>
    800035dc:	00003097          	auipc	ra,0x3
    800035e0:	954080e7          	jalr	-1708(ra) # 80005f30 <_Z15trapPrintStringPKc>
    PCB* curr = schedulerPCBHead;
    800035e4:	00008497          	auipc	s1,0x8
    800035e8:	6ac4b483          	ld	s1,1708(s1) # 8000bc90 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    800035ec:	02048863          	beqz	s1,8000361c <_ZN9Scheduler5printEv+0x5c>
    {
        printInt((uint64)curr, 16);
    800035f0:	00000613          	li	a2,0
    800035f4:	01000593          	li	a1,16
    800035f8:	0004851b          	sext.w	a0,s1
    800035fc:	00003097          	auipc	ra,0x3
    80003600:	820080e7          	jalr	-2016(ra) # 80005e1c <_Z8printIntiii>
        printString("\n");
    80003604:	00006517          	auipc	a0,0x6
    80003608:	afc50513          	addi	a0,a0,-1284 # 80009100 <CONSOLE_STATUS+0xf0>
    8000360c:	00002097          	auipc	ra,0x2
    80003610:	678080e7          	jalr	1656(ra) # 80005c84 <_Z11printStringPKc>
        curr = curr->nextPCB;
    80003614:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003618:	fd5ff06f          	j	800035ec <_ZN9Scheduler5printEv+0x2c>
    }
}
    8000361c:	01813083          	ld	ra,24(sp)
    80003620:	01013403          	ld	s0,16(sp)
    80003624:	00813483          	ld	s1,8(sp)
    80003628:	02010113          	addi	sp,sp,32
    8000362c:	00008067          	ret

0000000080003630 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80003630:	ff010113          	addi	sp,sp,-16
    80003634:	00113423          	sd	ra,8(sp)
    80003638:	00813023          	sd	s0,0(sp)
    8000363c:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003640:	00001097          	auipc	ra,0x1
    80003644:	824080e7          	jalr	-2012(ra) # 80003e64 <_ZN5Riscv10kernelMainEv>
    80003648:	00813083          	ld	ra,8(sp)
    8000364c:	00013403          	ld	s0,0(sp)
    80003650:	01010113          	addi	sp,sp,16
    80003654:	00008067          	ret

0000000080003658 <_ZN6Thread6runnerEPv>:
{
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80003658:	ff010113          	addi	sp,sp,-16
    8000365c:	00113423          	sd	ra,8(sp)
    80003660:	00813023          	sd	s0,0(sp)
    80003664:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80003668:	00053783          	ld	a5,0(a0)
    8000366c:	0107b783          	ld	a5,16(a5)
    80003670:	000780e7          	jalr	a5
}
    80003674:	00813083          	ld	ra,8(sp)
    80003678:	00013403          	ld	s0,0(sp)
    8000367c:	01010113          	addi	sp,sp,16
    80003680:	00008067          	ret

0000000080003684 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80003684:	ff010113          	addi	sp,sp,-16
    80003688:	00113423          	sd	ra,8(sp)
    8000368c:	00813023          	sd	s0,0(sp)
    80003690:	01010413          	addi	s0,sp,16
    80003694:	00008797          	auipc	a5,0x8
    80003698:	3d478793          	addi	a5,a5,980 # 8000ba68 <_ZTV6Thread+0x10>
    8000369c:	00f53023          	sd	a5,0(a0)
{
    mem_free(myHandle);
    800036a0:	00853503          	ld	a0,8(a0)
    800036a4:	ffffe097          	auipc	ra,0xffffe
    800036a8:	be4080e7          	jalr	-1052(ra) # 80001288 <mem_free>
}
    800036ac:	00813083          	ld	ra,8(sp)
    800036b0:	00013403          	ld	s0,0(sp)
    800036b4:	01010113          	addi	sp,sp,16
    800036b8:	00008067          	ret

00000000800036bc <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    800036bc:	ff010113          	addi	sp,sp,-16
    800036c0:	00113423          	sd	ra,8(sp)
    800036c4:	00813023          	sd	s0,0(sp)
    800036c8:	01010413          	addi	s0,sp,16
    800036cc:	00008797          	auipc	a5,0x8
    800036d0:	3c478793          	addi	a5,a5,964 # 8000ba90 <_ZTV9Semaphore+0x10>
    800036d4:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    800036d8:	00853503          	ld	a0,8(a0)
    800036dc:	ffffe097          	auipc	ra,0xffffe
    800036e0:	bac080e7          	jalr	-1108(ra) # 80001288 <mem_free>
}
    800036e4:	00813083          	ld	ra,8(sp)
    800036e8:	00013403          	ld	s0,0(sp)
    800036ec:	01010113          	addi	sp,sp,16
    800036f0:	00008067          	ret

00000000800036f4 <_Znwm>:
{
    800036f4:	ff010113          	addi	sp,sp,-16
    800036f8:	00113423          	sd	ra,8(sp)
    800036fc:	00813023          	sd	s0,0(sp)
    80003700:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003704:	ffffe097          	auipc	ra,0xffffe
    80003708:	b54080e7          	jalr	-1196(ra) # 80001258 <mem_alloc>
}
    8000370c:	00813083          	ld	ra,8(sp)
    80003710:	00013403          	ld	s0,0(sp)
    80003714:	01010113          	addi	sp,sp,16
    80003718:	00008067          	ret

000000008000371c <_ZdlPv>:
{
    8000371c:	ff010113          	addi	sp,sp,-16
    80003720:	00113423          	sd	ra,8(sp)
    80003724:	00813023          	sd	s0,0(sp)
    80003728:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000372c:	ffffe097          	auipc	ra,0xffffe
    80003730:	b5c080e7          	jalr	-1188(ra) # 80001288 <mem_free>
}
    80003734:	00813083          	ld	ra,8(sp)
    80003738:	00013403          	ld	s0,0(sp)
    8000373c:	01010113          	addi	sp,sp,16
    80003740:	00008067          	ret

0000000080003744 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80003744:	fe010113          	addi	sp,sp,-32
    80003748:	00113c23          	sd	ra,24(sp)
    8000374c:	00813823          	sd	s0,16(sp)
    80003750:	00913423          	sd	s1,8(sp)
    80003754:	02010413          	addi	s0,sp,32
    80003758:	00050493          	mv	s1,a0
}
    8000375c:	00000097          	auipc	ra,0x0
    80003760:	f28080e7          	jalr	-216(ra) # 80003684 <_ZN6ThreadD1Ev>
    80003764:	00048513          	mv	a0,s1
    80003768:	00000097          	auipc	ra,0x0
    8000376c:	fb4080e7          	jalr	-76(ra) # 8000371c <_ZdlPv>
    80003770:	01813083          	ld	ra,24(sp)
    80003774:	01013403          	ld	s0,16(sp)
    80003778:	00813483          	ld	s1,8(sp)
    8000377c:	02010113          	addi	sp,sp,32
    80003780:	00008067          	ret

0000000080003784 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003784:	fe010113          	addi	sp,sp,-32
    80003788:	00113c23          	sd	ra,24(sp)
    8000378c:	00813823          	sd	s0,16(sp)
    80003790:	00913423          	sd	s1,8(sp)
    80003794:	02010413          	addi	s0,sp,32
    80003798:	00050493          	mv	s1,a0
}
    8000379c:	00000097          	auipc	ra,0x0
    800037a0:	f20080e7          	jalr	-224(ra) # 800036bc <_ZN9SemaphoreD1Ev>
    800037a4:	00048513          	mv	a0,s1
    800037a8:	00000097          	auipc	ra,0x0
    800037ac:	f74080e7          	jalr	-140(ra) # 8000371c <_ZdlPv>
    800037b0:	01813083          	ld	ra,24(sp)
    800037b4:	01013403          	ld	s0,16(sp)
    800037b8:	00813483          	ld	s1,8(sp)
    800037bc:	02010113          	addi	sp,sp,32
    800037c0:	00008067          	ret

00000000800037c4 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    800037c4:	00853503          	ld	a0,8(a0)
    800037c8:	02050663          	beqz	a0,800037f4 <_ZN6Thread5startEv+0x30>
{
    800037cc:	ff010113          	addi	sp,sp,-16
    800037d0:	00113423          	sd	ra,8(sp)
    800037d4:	00813023          	sd	s0,0(sp)
    800037d8:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    800037dc:	ffffe097          	auipc	ra,0xffffe
    800037e0:	c88080e7          	jalr	-888(ra) # 80001464 <thread_start>
}
    800037e4:	00813083          	ld	ra,8(sp)
    800037e8:	00013403          	ld	s0,0(sp)
    800037ec:	01010113          	addi	sp,sp,16
    800037f0:	00008067          	ret
        return -1;
    800037f4:	fff00513          	li	a0,-1
}
    800037f8:	00008067          	ret

00000000800037fc <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800037fc:	ff010113          	addi	sp,sp,-16
    80003800:	00113423          	sd	ra,8(sp)
    80003804:	00813023          	sd	s0,0(sp)
    80003808:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000380c:	ffffe097          	auipc	ra,0xffffe
    80003810:	b28080e7          	jalr	-1240(ra) # 80001334 <thread_dispatch>
}
    80003814:	00813083          	ld	ra,8(sp)
    80003818:	00013403          	ld	s0,0(sp)
    8000381c:	01010113          	addi	sp,sp,16
    80003820:	00008067          	ret

0000000080003824 <_ZN6Thread5sleepEm>:
{
    80003824:	ff010113          	addi	sp,sp,-16
    80003828:	00113423          	sd	ra,8(sp)
    8000382c:	00813023          	sd	s0,0(sp)
    80003830:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003834:	ffffe097          	auipc	ra,0xffffe
    80003838:	c04080e7          	jalr	-1020(ra) # 80001438 <time_sleep>
}
    8000383c:	00813083          	ld	ra,8(sp)
    80003840:	00013403          	ld	s0,0(sp)
    80003844:	01010113          	addi	sp,sp,16
    80003848:	00008067          	ret

000000008000384c <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    8000384c:	fe010113          	addi	sp,sp,-32
    80003850:	00113c23          	sd	ra,24(sp)
    80003854:	00813823          	sd	s0,16(sp)
    80003858:	00913423          	sd	s1,8(sp)
    8000385c:	01213023          	sd	s2,0(sp)
    80003860:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80003864:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80003868:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    8000386c:	0004b783          	ld	a5,0(s1)
    80003870:	0187b783          	ld	a5,24(a5)
    80003874:	00048513          	mv	a0,s1
    80003878:	000780e7          	jalr	a5
        Thread::sleep(time);
    8000387c:	00090513          	mv	a0,s2
    80003880:	00000097          	auipc	ra,0x0
    80003884:	fa4080e7          	jalr	-92(ra) # 80003824 <_ZN6Thread5sleepEm>
    while(true)
    80003888:	fe5ff06f          	j	8000386c <_ZN14PeriodicThread6runnerEPv+0x20>

000000008000388c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    8000388c:	ff010113          	addi	sp,sp,-16
    80003890:	00113423          	sd	ra,8(sp)
    80003894:	00813023          	sd	s0,0(sp)
    80003898:	01010413          	addi	s0,sp,16
    8000389c:	00008797          	auipc	a5,0x8
    800038a0:	1cc78793          	addi	a5,a5,460 # 8000ba68 <_ZTV6Thread+0x10>
    800038a4:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, body, args);
    800038a8:	00850513          	addi	a0,a0,8
    800038ac:	ffffe097          	auipc	ra,0xffffe
    800038b0:	be4080e7          	jalr	-1052(ra) # 80001490 <thread_make_pcb>
}
    800038b4:	00813083          	ld	ra,8(sp)
    800038b8:	00013403          	ld	s0,0(sp)
    800038bc:	01010113          	addi	sp,sp,16
    800038c0:	00008067          	ret

00000000800038c4 <_ZN6ThreadC1Ev>:
Thread::Thread()
    800038c4:	ff010113          	addi	sp,sp,-16
    800038c8:	00113423          	sd	ra,8(sp)
    800038cc:	00813023          	sd	s0,0(sp)
    800038d0:	01010413          	addi	s0,sp,16
    800038d4:	00008797          	auipc	a5,0x8
    800038d8:	19478793          	addi	a5,a5,404 # 8000ba68 <_ZTV6Thread+0x10>
    800038dc:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    800038e0:	00050613          	mv	a2,a0
    800038e4:	00000597          	auipc	a1,0x0
    800038e8:	d7458593          	addi	a1,a1,-652 # 80003658 <_ZN6Thread6runnerEPv>
    800038ec:	00850513          	addi	a0,a0,8
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	ba0080e7          	jalr	-1120(ra) # 80001490 <thread_make_pcb>
}
    800038f8:	00813083          	ld	ra,8(sp)
    800038fc:	00013403          	ld	s0,0(sp)
    80003900:	01010113          	addi	sp,sp,16
    80003904:	00008067          	ret

0000000080003908 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003908:	00853503          	ld	a0,8(a0)
    8000390c:	02050663          	beqz	a0,80003938 <_ZN9Semaphore4waitEv+0x30>
{
    80003910:	ff010113          	addi	sp,sp,-16
    80003914:	00113423          	sd	ra,8(sp)
    80003918:	00813023          	sd	s0,0(sp)
    8000391c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	ac0080e7          	jalr	-1344(ra) # 800013e0 <sem_wait>
}
    80003928:	00813083          	ld	ra,8(sp)
    8000392c:	00013403          	ld	s0,0(sp)
    80003930:	01010113          	addi	sp,sp,16
    80003934:	00008067          	ret
        return -1;
    80003938:	fff00513          	li	a0,-1
}
    8000393c:	00008067          	ret

0000000080003940 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80003940:	fe010113          	addi	sp,sp,-32
    80003944:	00113c23          	sd	ra,24(sp)
    80003948:	00813823          	sd	s0,16(sp)
    8000394c:	00913423          	sd	s1,8(sp)
    80003950:	02010413          	addi	s0,sp,32
    80003954:	00050493          	mv	s1,a0
    80003958:	00008797          	auipc	a5,0x8
    8000395c:	13878793          	addi	a5,a5,312 # 8000ba90 <_ZTV9Semaphore+0x10>
    80003960:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80003964:	00850513          	addi	a0,a0,8
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	a14080e7          	jalr	-1516(ra) # 8000137c <sem_open>
    if(retval != 0)
    80003970:	00050463          	beqz	a0,80003978 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80003974:	0004b423          	sd	zero,8(s1)
}
    80003978:	01813083          	ld	ra,24(sp)
    8000397c:	01013403          	ld	s0,16(sp)
    80003980:	00813483          	ld	s1,8(sp)
    80003984:	02010113          	addi	sp,sp,32
    80003988:	00008067          	ret

000000008000398c <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    8000398c:	00853503          	ld	a0,8(a0)
    80003990:	02050663          	beqz	a0,800039bc <_ZN9Semaphore6signalEv+0x30>
{
    80003994:	ff010113          	addi	sp,sp,-16
    80003998:	00113423          	sd	ra,8(sp)
    8000399c:	00813023          	sd	s0,0(sp)
    800039a0:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800039a4:	ffffe097          	auipc	ra,0xffffe
    800039a8:	a68080e7          	jalr	-1432(ra) # 8000140c <sem_signal>
}
    800039ac:	00813083          	ld	ra,8(sp)
    800039b0:	00013403          	ld	s0,0(sp)
    800039b4:	01010113          	addi	sp,sp,16
    800039b8:	00008067          	ret
        return -1;
    800039bc:	fff00513          	li	a0,-1
}
    800039c0:	00008067          	ret

00000000800039c4 <_ZN7Console4getcEv>:
{
    800039c4:	ff010113          	addi	sp,sp,-16
    800039c8:	00813423          	sd	s0,8(sp)
    800039cc:	01010413          	addi	s0,sp,16
}
    800039d0:	00000513          	li	a0,0
    800039d4:	00813403          	ld	s0,8(sp)
    800039d8:	01010113          	addi	sp,sp,16
    800039dc:	00008067          	ret

00000000800039e0 <_ZN7Console4putcEc>:
{
    800039e0:	ff010113          	addi	sp,sp,-16
    800039e4:	00813423          	sd	s0,8(sp)
    800039e8:	01010413          	addi	s0,sp,16
}
    800039ec:	00813403          	ld	s0,8(sp)
    800039f0:	01010113          	addi	sp,sp,16
    800039f4:	00008067          	ret

00000000800039f8 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800039f8:	fe010113          	addi	sp,sp,-32
    800039fc:	00113c23          	sd	ra,24(sp)
    80003a00:	00813823          	sd	s0,16(sp)
    80003a04:	00913423          	sd	s1,8(sp)
    80003a08:	01213023          	sd	s2,0(sp)
    80003a0c:	02010413          	addi	s0,sp,32
    80003a10:	00050493          	mv	s1,a0
    80003a14:	00058913          	mv	s2,a1
    80003a18:	01000513          	li	a0,16
    80003a1c:	00000097          	auipc	ra,0x0
    80003a20:	cd8080e7          	jalr	-808(ra) # 800036f4 <_Znwm>
    80003a24:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80003a28:	00953023          	sd	s1,0(a0)
    80003a2c:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003a30:	00000597          	auipc	a1,0x0
    80003a34:	e1c58593          	addi	a1,a1,-484 # 8000384c <_ZN14PeriodicThread6runnerEPv>
    80003a38:	00048513          	mv	a0,s1
    80003a3c:	00000097          	auipc	ra,0x0
    80003a40:	e50080e7          	jalr	-432(ra) # 8000388c <_ZN6ThreadC1EPFvPvES0_>
    80003a44:	00008797          	auipc	a5,0x8
    80003a48:	fbc78793          	addi	a5,a5,-68 # 8000ba00 <_ZTV14PeriodicThread+0x10>
    80003a4c:	00f4b023          	sd	a5,0(s1)
}
    80003a50:	01813083          	ld	ra,24(sp)
    80003a54:	01013403          	ld	s0,16(sp)
    80003a58:	00813483          	ld	s1,8(sp)
    80003a5c:	00013903          	ld	s2,0(sp)
    80003a60:	02010113          	addi	sp,sp,32
    80003a64:	00008067          	ret

0000000080003a68 <_ZN5Riscv15userMainWrapperEPv>:
    disableInterrupts();
    endSystem();
}

void Riscv::userMainWrapper(void* )
{
    80003a68:	ff010113          	addi	sp,sp,-16
    80003a6c:	00113423          	sd	ra,8(sp)
    80003a70:	00813023          	sd	s0,0(sp)
    80003a74:	01010413          	addi	s0,sp,16
    userMain();
    80003a78:	00003097          	auipc	ra,0x3
    80003a7c:	970080e7          	jalr	-1680(ra) # 800063e8 <_Z8userMainv>
}
    80003a80:	00813083          	ld	ra,8(sp)
    80003a84:	00013403          	ld	s0,0(sp)
    80003a88:	01010113          	addi	sp,sp,16
    80003a8c:	00008067          	ret

0000000080003a90 <_ZN5Riscv10initSystemEv>:
{
    80003a90:	ff010113          	addi	sp,sp,-16
    80003a94:	00113423          	sd	ra,8(sp)
    80003a98:	00813023          	sd	s0,0(sp)
    80003a9c:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003aa0:	00008797          	auipc	a5,0x8
    80003aa4:	0c07b783          	ld	a5,192(a5) # 8000bb60 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003aa8:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003aac:	fffff097          	auipc	ra,0xfffff
    80003ab0:	f24080e7          	jalr	-220(ra) # 800029d0 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003ab4:	fffff097          	auipc	ra,0xfffff
    80003ab8:	368080e7          	jalr	872(ra) # 80002e1c <_ZN8KConsole10initializeEv>
}
    80003abc:	00813083          	ld	ra,8(sp)
    80003ac0:	00013403          	ld	s0,0(sp)
    80003ac4:	01010113          	addi	sp,sp,16
    80003ac8:	00008067          	ret

0000000080003acc <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    80003acc:	ff010113          	addi	sp,sp,-16
    80003ad0:	00813423          	sd	s0,8(sp)
    80003ad4:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003ad8:	00200793          	li	a5,2
    80003adc:	1007a073          	csrs	sstatus,a5
}
    80003ae0:	00813403          	ld	s0,8(sp)
    80003ae4:	01010113          	addi	sp,sp,16
    80003ae8:	00008067          	ret

0000000080003aec <_ZN5Riscv17disableInterruptsEv>:
{
    80003aec:	ff010113          	addi	sp,sp,-16
    80003af0:	00813423          	sd	s0,8(sp)
    80003af4:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003af8:	00200793          	li	a5,2
    80003afc:	1007b073          	csrc	sstatus,a5
}
    80003b00:	00813403          	ld	s0,8(sp)
    80003b04:	01010113          	addi	sp,sp,16
    80003b08:	00008067          	ret

0000000080003b0c <_ZN5Riscv9endSystemEv>:
{
    80003b0c:	ff010113          	addi	sp,sp,-16
    80003b10:	00113423          	sd	ra,8(sp)
    80003b14:	00813023          	sd	s0,0(sp)
    80003b18:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003b1c:	00000097          	auipc	ra,0x0
    80003b20:	fd0080e7          	jalr	-48(ra) # 80003aec <_ZN5Riscv17disableInterruptsEv>
}
    80003b24:	00813083          	ld	ra,8(sp)
    80003b28:	00013403          	ld	s0,0(sp)
    80003b2c:	01010113          	addi	sp,sp,16
    80003b30:	00008067          	ret

0000000080003b34 <_ZN5Riscv10popSppSpieEv>:
{
    80003b34:	ff010113          	addi	sp,sp,-16
    80003b38:	00813423          	sd	s0,8(sp)
    80003b3c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003b40:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003b44:	10200073          	sret
}
    80003b48:	00813403          	ld	s0,8(sp)
    80003b4c:	01010113          	addi	sp,sp,16
    80003b50:	00008067          	ret

0000000080003b54 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80003b54:	f9010113          	addi	sp,sp,-112
    80003b58:	06113423          	sd	ra,104(sp)
    80003b5c:	06813023          	sd	s0,96(sp)
    80003b60:	04913c23          	sd	s1,88(sp)
    80003b64:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003b68:	00070713          	mv	a4,a4
    80003b6c:	00008797          	auipc	a5,0x8
    80003b70:	04c7b783          	ld	a5,76(a5) # 8000bbb8 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003b74:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80003b78:	00008797          	auipc	a5,0x8
    80003b7c:	0307b783          	ld	a5,48(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003b80:	0007b783          	ld	a5,0(a5)
    80003b84:	14002773          	csrr	a4,sscratch
    80003b88:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003b8c:	142027f3          	csrr	a5,scause
    80003b90:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80003b94:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003b98:	fff00713          	li	a4,-1
    80003b9c:	03f71713          	slli	a4,a4,0x3f
    80003ba0:	00170713          	addi	a4,a4,1
    80003ba4:	0ce78e63          	beq	a5,a4,80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
    80003ba8:	fff00713          	li	a4,-1
    80003bac:	03f71713          	slli	a4,a4,0x3f
    80003bb0:	00170713          	addi	a4,a4,1
    80003bb4:	04f76e63          	bltu	a4,a5,80003c10 <_ZN5Riscv20handleSupervisorTrapEv+0xbc>
    80003bb8:	ff878793          	addi	a5,a5,-8
    80003bbc:	00100713          	li	a4,1
    80003bc0:	1af76663          	bltu	a4,a5,80003d6c <_ZN5Riscv20handleSupervisorTrapEv+0x218>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003bc4:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003bc8:	14102773          	csrr	a4,sepc
    80003bcc:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003bd0:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003bd4:	00470713          	addi	a4,a4,4
    80003bd8:	fae43423          	sd	a4,-88(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003bdc:	10002773          	csrr	a4,sstatus
    80003be0:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003be4:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003be8:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003bec:	04200713          	li	a4,66
    80003bf0:	16f76663          	bltu	a4,a5,80003d5c <_ZN5Riscv20handleSupervisorTrapEv+0x208>
    80003bf4:	00279793          	slli	a5,a5,0x2
    80003bf8:	00005717          	auipc	a4,0x5
    80003bfc:	68c70713          	addi	a4,a4,1676 # 80009284 <CONSOLE_STATUS+0x274>
    80003c00:	00e787b3          	add	a5,a5,a4
    80003c04:	0007a783          	lw	a5,0(a5)
    80003c08:	00e787b3          	add	a5,a5,a4
    80003c0c:	00078067          	jr	a5
    switch(scause)
    80003c10:	fff00713          	li	a4,-1
    80003c14:	03f71713          	slli	a4,a4,0x3f
    80003c18:	00970713          	addi	a4,a4,9
    80003c1c:	14e79863          	bne	a5,a4,80003d6c <_ZN5Riscv20handleSupervisorTrapEv+0x218>
            uint64 x = CONSOLE_STATUS;
    80003c20:	00008797          	auipc	a5,0x8
    80003c24:	f307b783          	ld	a5,-208(a5) # 8000bb50 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003c28:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003c2c:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003c30:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003c34:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80003c38:	0017f793          	andi	a5,a5,1
    80003c3c:	02078863          	beqz	a5,80003c6c <_ZN5Riscv20handleSupervisorTrapEv+0x118>
                x = CONSOLE_TX_DATA;
    80003c40:	00008797          	auipc	a5,0x8
    80003c44:	f307b783          	ld	a5,-208(a5) # 8000bb70 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003c48:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003c4c:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003c50:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003c54:	00058513          	mv	a0,a1
    80003c58:	0ff57493          	andi	s1,a0,255
                if(KConsole::pendingGetc > 0)
    80003c5c:	00008797          	auipc	a5,0x8
    80003c60:	f0c7b783          	ld	a5,-244(a5) # 8000bb68 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003c64:	0007b783          	ld	a5,0(a5)
    80003c68:	0c079063          	bnez	a5,80003d28 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
            plic_complete(plic_claim());
    80003c6c:	00003097          	auipc	ra,0x3
    80003c70:	3a8080e7          	jalr	936(ra) # 80007014 <plic_claim>
    80003c74:	00003097          	auipc	ra,0x3
    80003c78:	3d8080e7          	jalr	984(ra) # 8000704c <plic_complete>
            break;
    80003c7c:	0f00006f          	j	80003d6c <_ZN5Riscv20handleSupervisorTrapEv+0x218>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003c80:	141027f3          	csrr	a5,sepc
    80003c84:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003c88:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003c8c:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003c90:	100027f3          	csrr	a5,sstatus
    80003c94:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003c98:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003c9c:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003ca0:	00200793          	li	a5,2
    80003ca4:	1447b073          	csrc	sip,a5
            totalTime++;
    80003ca8:	00008797          	auipc	a5,0x8
    80003cac:	ff878793          	addi	a5,a5,-8 # 8000bca0 <_ZN5Riscv9totalTimeE>
    80003cb0:	0007b503          	ld	a0,0(a5)
    80003cb4:	00150513          	addi	a0,a0,1
    80003cb8:	00a7b023          	sd	a0,0(a5)
            trapPrintInt(totalTime);
    80003cbc:	00000613          	li	a2,0
    80003cc0:	00100593          	li	a1,1
    80003cc4:	0005051b          	sext.w	a0,a0
    80003cc8:	00002097          	auipc	ra,0x2
    80003ccc:	2e4080e7          	jalr	740(ra) # 80005fac <_Z12trapPrintIntiii>
            PCB::timeSliceCounter++;
    80003cd0:	00008497          	auipc	s1,0x8
    80003cd4:	ea84b483          	ld	s1,-344(s1) # 8000bb78 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003cd8:	0004b783          	ld	a5,0(s1)
    80003cdc:	00178793          	addi	a5,a5,1
    80003ce0:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003ce4:	fffff097          	auipc	ra,0xfffff
    80003ce8:	5a0080e7          	jalr	1440(ra) # 80003284 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003cec:	00008797          	auipc	a5,0x8
    80003cf0:	ebc7b783          	ld	a5,-324(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003cf4:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003cf8:	0187b783          	ld	a5,24(a5)
    80003cfc:	0004b703          	ld	a4,0(s1)
    80003d00:	00f77c63          	bgeu	a4,a5,80003d18 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
            Riscv::w_sstatus(sstatus);
    80003d04:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003d08:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003d0c:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003d10:	14179073          	csrw	sepc,a5
}
    80003d14:	0580006f          	j	80003d6c <_ZN5Riscv20handleSupervisorTrapEv+0x218>
                PCB::timeSliceCounter = 0;
    80003d18:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003d1c:	fffff097          	auipc	ra,0xfffff
    80003d20:	bc4080e7          	jalr	-1084(ra) # 800028e0 <_ZN3PCB8dispatchEv>
    80003d24:	fe1ff06f          	j	80003d04 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                    KConsole::pendingGetc--;
    80003d28:	fff78793          	addi	a5,a5,-1
    80003d2c:	00008717          	auipc	a4,0x8
    80003d30:	e3c73703          	ld	a4,-452(a4) # 8000bb68 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003d34:	00f73023          	sd	a5,0(a4)
                    KConsole::putCharacterInput(c);
    80003d38:	00048513          	mv	a0,s1
    80003d3c:	fffff097          	auipc	ra,0xfffff
    80003d40:	190080e7          	jalr	400(ra) # 80002ecc <_ZN8KConsole17putCharacterInputEc>
                    KConsole::putCharacterOutput(c);
    80003d44:	00048513          	mv	a0,s1
    80003d48:	fffff097          	auipc	ra,0xfffff
    80003d4c:	214080e7          	jalr	532(ra) # 80002f5c <_ZN8KConsole18putCharacterOutputEc>
    80003d50:	f1dff06f          	j	80003c6c <_ZN5Riscv20handleSupervisorTrapEv+0x118>
                    MemoryAllocator::memAllocHandler();
    80003d54:	00000097          	auipc	ra,0x0
    80003d58:	674080e7          	jalr	1652(ra) # 800043c8 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003d5c:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003d60:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003d64:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003d68:	14179073          	csrw	sepc,a5
}
    80003d6c:	06813083          	ld	ra,104(sp)
    80003d70:	06013403          	ld	s0,96(sp)
    80003d74:	05813483          	ld	s1,88(sp)
    80003d78:	07010113          	addi	sp,sp,112
    80003d7c:	00008067          	ret
                    MemoryAllocator::memFreeHandler();
    80003d80:	00000097          	auipc	ra,0x0
    80003d84:	6ac080e7          	jalr	1708(ra) # 8000442c <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003d88:	fd5ff06f          	j	80003d5c <_ZN5Riscv20handleSupervisorTrapEv+0x208>
                    PCB::threadMakePCBHandler();
    80003d8c:	fffff097          	auipc	ra,0xfffff
    80003d90:	f24080e7          	jalr	-220(ra) # 80002cb0 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003d94:	fc9ff06f          	j	80003d5c <_ZN5Riscv20handleSupervisorTrapEv+0x208>
                    PCB::threadCreateHandler();
    80003d98:	fffff097          	auipc	ra,0xfffff
    80003d9c:	e34080e7          	jalr	-460(ra) # 80002bcc <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003da0:	fbdff06f          	j	80003d5c <_ZN5Riscv20handleSupervisorTrapEv+0x208>
                    PCB::threadStartHandler();
    80003da4:	fffff097          	auipc	ra,0xfffff
    80003da8:	ec8080e7          	jalr	-312(ra) # 80002c6c <_ZN3PCB18threadStartHandlerEv>
                    break;
    80003dac:	fb1ff06f          	j	80003d5c <_ZN5Riscv20handleSupervisorTrapEv+0x208>
                    PCB::threadDispatchHandler();
    80003db0:	fffff097          	auipc	ra,0xfffff
    80003db4:	d88080e7          	jalr	-632(ra) # 80002b38 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80003db8:	fa5ff06f          	j	80003d5c <_ZN5Riscv20handleSupervisorTrapEv+0x208>
                    PCB::threadExitHandler();
    80003dbc:	fffff097          	auipc	ra,0xfffff
    80003dc0:	d20080e7          	jalr	-736(ra) # 80002adc <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003dc4:	f99ff06f          	j	80003d5c <_ZN5Riscv20handleSupervisorTrapEv+0x208>
                    PCB::threadSleepHandler();
    80003dc8:	fffff097          	auipc	ra,0xfffff
    80003dcc:	da0080e7          	jalr	-608(ra) # 80002b68 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003dd0:	f8dff06f          	j	80003d5c <_ZN5Riscv20handleSupervisorTrapEv+0x208>
                    KSemaphore::semOpenHandler();
    80003dd4:	00001097          	auipc	ra,0x1
    80003dd8:	908080e7          	jalr	-1784(ra) # 800046dc <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003ddc:	f81ff06f          	j	80003d5c <_ZN5Riscv20handleSupervisorTrapEv+0x208>
                    KSemaphore::semWaitHandler();
    80003de0:	00001097          	auipc	ra,0x1
    80003de4:	994080e7          	jalr	-1644(ra) # 80004774 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003de8:	f75ff06f          	j	80003d5c <_ZN5Riscv20handleSupervisorTrapEv+0x208>
                    KSemaphore::semSignalHandler();
    80003dec:	00001097          	auipc	ra,0x1
    80003df0:	9c8080e7          	jalr	-1592(ra) # 800047b4 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003df4:	f69ff06f          	j	80003d5c <_ZN5Riscv20handleSupervisorTrapEv+0x208>
                    KSemaphore::semCloseHandler();
    80003df8:	00001097          	auipc	ra,0x1
    80003dfc:	9fc080e7          	jalr	-1540(ra) # 800047f4 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80003e00:	f5dff06f          	j	80003d5c <_ZN5Riscv20handleSupervisorTrapEv+0x208>
                    KConsole::getcHandler();
    80003e04:	fffff097          	auipc	ra,0xfffff
    80003e08:	2cc080e7          	jalr	716(ra) # 800030d0 <_ZN8KConsole11getcHandlerEv>
                    break;
    80003e0c:	f51ff06f          	j	80003d5c <_ZN5Riscv20handleSupervisorTrapEv+0x208>
                    KConsole::putcHandler();
    80003e10:	fffff097          	auipc	ra,0xfffff
    80003e14:	27c080e7          	jalr	636(ra) # 8000308c <_ZN8KConsole11putcHandlerEv>
                    break;
    80003e18:	f45ff06f          	j	80003d5c <_ZN5Riscv20handleSupervisorTrapEv+0x208>

0000000080003e1c <_ZN5Riscv14myTestsWrapperEPv>:

void Riscv::myTestsWrapper(void* p)
{
    80003e1c:	ff010113          	addi	sp,sp,-16
    80003e20:	00113423          	sd	ra,8(sp)
    80003e24:	00813023          	sd	s0,0(sp)
    80003e28:	01010413          	addi	s0,sp,16
    myTests();
    80003e2c:	fffff097          	auipc	ra,0xfffff
    80003e30:	87c080e7          	jalr	-1924(ra) # 800026a8 <_Z7myTestsv>
}
    80003e34:	00813083          	ld	ra,8(sp)
    80003e38:	00013403          	ld	s0,0(sp)
    80003e3c:	01010113          	addi	sp,sp,16
    80003e40:	00008067          	ret

0000000080003e44 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80003e44:	ff010113          	addi	sp,sp,-16
    80003e48:	00813423          	sd	s0,8(sp)
    80003e4c:	01010413          	addi	s0,sp,16
    //uint64 x = 0x200;
    //__asm__ volatile("csrs sie, %0"::"r"(x));
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80003e50:	00200793          	li	a5,2
    80003e54:	1047b073          	csrc	sie,a5
}
    80003e58:	00813403          	ld	s0,8(sp)
    80003e5c:	01010113          	addi	sp,sp,16
    80003e60:	00008067          	ret

0000000080003e64 <_ZN5Riscv10kernelMainEv>:
{
    80003e64:	fe010113          	addi	sp,sp,-32
    80003e68:	00113c23          	sd	ra,24(sp)
    80003e6c:	00813823          	sd	s0,16(sp)
    80003e70:	00913423          	sd	s1,8(sp)
    80003e74:	01213023          	sd	s2,0(sp)
    80003e78:	02010413          	addi	s0,sp,32
    initSystem();
    80003e7c:	00000097          	auipc	ra,0x0
    80003e80:	c14080e7          	jalr	-1004(ra) # 80003a90 <_ZN5Riscv10initSystemEv>
    disableTimerInterrupts();
    80003e84:	00000097          	auipc	ra,0x0
    80003e88:	fc0080e7          	jalr	-64(ra) # 80003e44 <_ZN5Riscv22disableTimerInterruptsEv>
    enableInterrupts();
    80003e8c:	00000097          	auipc	ra,0x0
    80003e90:	c40080e7          	jalr	-960(ra) # 80003acc <_ZN5Riscv16enableInterruptsEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003e94:	00001537          	lui	a0,0x1
    80003e98:	00000097          	auipc	ra,0x0
    80003e9c:	508080e7          	jalr	1288(ra) # 800043a0 <_Z7kmallocm>
    80003ea0:	00050913          	mv	s2,a0
    80003ea4:	05800513          	li	a0,88
    80003ea8:	fffff097          	auipc	ra,0xfffff
    80003eac:	aac080e7          	jalr	-1364(ra) # 80002954 <_ZN3PCBnwEm>
    80003eb0:	00050493          	mv	s1,a0
    80003eb4:	00200713          	li	a4,2
    80003eb8:	00090693          	mv	a3,s2
    80003ebc:	00000613          	li	a2,0
    80003ec0:	00000597          	auipc	a1,0x0
    80003ec4:	ba858593          	addi	a1,a1,-1112 # 80003a68 <_ZN5Riscv15userMainWrapperEPv>
    80003ec8:	fffff097          	auipc	ra,0xfffff
    80003ecc:	98c080e7          	jalr	-1652(ra) # 80002854 <_ZN3PCBC1EPFvPvES0_S0_m>
    userPCB->start();
    80003ed0:	00048513          	mv	a0,s1
    80003ed4:	fffff097          	auipc	ra,0xfffff
    80003ed8:	9e4080e7          	jalr	-1564(ra) # 800028b8 <_ZN3PCB5startEv>
    while(!userPCB->isFinished())
    80003edc:	00048513          	mv	a0,s1
    80003ee0:	fffff097          	auipc	ra,0xfffff
    80003ee4:	bd8080e7          	jalr	-1064(ra) # 80002ab8 <_ZN3PCB10isFinishedEv>
    80003ee8:	00051863          	bnez	a0,80003ef8 <_ZN5Riscv10kernelMainEv+0x94>
        thread_dispatch();
    80003eec:	ffffd097          	auipc	ra,0xffffd
    80003ef0:	448080e7          	jalr	1096(ra) # 80001334 <thread_dispatch>
    while(!userPCB->isFinished())
    80003ef4:	fe9ff06f          	j	80003edc <_ZN5Riscv10kernelMainEv+0x78>
    finishSystem = true;
    80003ef8:	00100793          	li	a5,1
    80003efc:	00008717          	auipc	a4,0x8
    80003f00:	daf70623          	sb	a5,-596(a4) # 8000bca8 <_ZN5Riscv12finishSystemE>
    ::printString("End...\n");
    80003f04:	00005517          	auipc	a0,0x5
    80003f08:	16450513          	addi	a0,a0,356 # 80009068 <CONSOLE_STATUS+0x58>
    80003f0c:	00002097          	auipc	ra,0x2
    80003f10:	d78080e7          	jalr	-648(ra) # 80005c84 <_Z11printStringPKc>
    80003f14:	00c0006f          	j	80003f20 <_ZN5Riscv10kernelMainEv+0xbc>
        thread_dispatch();
    80003f18:	ffffd097          	auipc	ra,0xffffd
    80003f1c:	41c080e7          	jalr	1052(ra) # 80001334 <thread_dispatch>
    while(!PCB::consolePCB->isFinished() || KConsole::pendingGetc > 0)
    80003f20:	00008797          	auipc	a5,0x8
    80003f24:	c787b783          	ld	a5,-904(a5) # 8000bb98 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003f28:	0007b503          	ld	a0,0(a5)
    80003f2c:	fffff097          	auipc	ra,0xfffff
    80003f30:	b8c080e7          	jalr	-1140(ra) # 80002ab8 <_ZN3PCB10isFinishedEv>
    80003f34:	fe0502e3          	beqz	a0,80003f18 <_ZN5Riscv10kernelMainEv+0xb4>
    80003f38:	00008797          	auipc	a5,0x8
    80003f3c:	c307b783          	ld	a5,-976(a5) # 8000bb68 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003f40:	0007b783          	ld	a5,0(a5)
    80003f44:	fc079ae3          	bnez	a5,80003f18 <_ZN5Riscv10kernelMainEv+0xb4>
    disableInterrupts();
    80003f48:	00000097          	auipc	ra,0x0
    80003f4c:	ba4080e7          	jalr	-1116(ra) # 80003aec <_ZN5Riscv17disableInterruptsEv>
    endSystem();
    80003f50:	00000097          	auipc	ra,0x0
    80003f54:	bbc080e7          	jalr	-1092(ra) # 80003b0c <_ZN5Riscv9endSystemEv>
}
    80003f58:	01813083          	ld	ra,24(sp)
    80003f5c:	01013403          	ld	s0,16(sp)
    80003f60:	00813483          	ld	s1,8(sp)
    80003f64:	00013903          	ld	s2,0(sp)
    80003f68:	02010113          	addi	sp,sp,32
    80003f6c:	00008067          	ret
    80003f70:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003f74:	00048513          	mv	a0,s1
    80003f78:	fffff097          	auipc	ra,0xfffff
    80003f7c:	a04080e7          	jalr	-1532(ra) # 8000297c <_ZN3PCBdlEPv>
    80003f80:	00090513          	mv	a0,s2
    80003f84:	00009097          	auipc	ra,0x9
    80003f88:	e34080e7          	jalr	-460(ra) # 8000cdb8 <_Unwind_Resume>

0000000080003f8c <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    80003f8c:	ff010113          	addi	sp,sp,-16
    80003f90:	00813423          	sd	s0,8(sp)
    80003f94:	01010413          	addi	s0,sp,16
    while(true)
    80003f98:	0000006f          	j	80003f98 <_ZN5Riscv9idleRiscvEPv+0xc>

0000000080003f9c <_ZN5Riscv13w_a0_sscratchEv>:

    }
}

void Riscv::w_a0_sscratch()
{
    80003f9c:	ff010113          	addi	sp,sp,-16
    80003fa0:	00813423          	sd	s0,8(sp)
    80003fa4:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80003fa8:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80003fac:	00008717          	auipc	a4,0x8
    80003fb0:	bfc73703          	ld	a4,-1028(a4) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003fb4:	00073703          	ld	a4,0(a4)
    80003fb8:	01073703          	ld	a4,16(a4)
    80003fbc:	00070593          	mv	a1,a4
    //__asm__ volatile("csrr a1, sscratch");
    __asm__ volatile("sd a0, 80(a1)");
    80003fc0:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80003fc4:	00078593          	mv	a1,a5
}
    80003fc8:	00813403          	ld	s0,8(sp)
    80003fcc:	01010113          	addi	sp,sp,16
    80003fd0:	00008067          	ret

0000000080003fd4 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80003fd4:	ff010113          	addi	sp,sp,-16
    80003fd8:	00813423          	sd	s0,8(sp)
    80003fdc:	01010413          	addi	s0,sp,16
    //if(PCB::running->systemThread)
    //    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    //else
    //    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80003fe0:	00813403          	ld	s0,8(sp)
    80003fe4:	01010113          	addi	sp,sp,16
    80003fe8:	00008067          	ret

0000000080003fec <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003fec:	ff010113          	addi	sp,sp,-16
    80003ff0:	00813423          	sd	s0,8(sp)
    80003ff4:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003ff8:	00008717          	auipc	a4,0x8
    80003ffc:	cb872703          	lw	a4,-840(a4) # 8000bcb0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004000:	00100793          	li	a5,1
    80004004:	04f70263          	beq	a4,a5,80004048 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80004008:	00008797          	auipc	a5,0x8
    8000400c:	ca878793          	addi	a5,a5,-856 # 8000bcb0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004010:	00100713          	li	a4,1
    80004014:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80004018:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    8000401c:	00008717          	auipc	a4,0x8
    80004020:	b3c73703          	ld	a4,-1220(a4) # 8000bb58 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004024:	00073703          	ld	a4,0(a4)
    80004028:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    8000402c:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80004030:	00008797          	auipc	a5,0x8
    80004034:	b807b783          	ld	a5,-1152(a5) # 8000bbb0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80004038:	0007b783          	ld	a5,0(a5)
    8000403c:	40e787b3          	sub	a5,a5,a4
    80004040:	ff178793          	addi	a5,a5,-15
    80004044:	00f73023          	sd	a5,0(a4)
}
    80004048:	00813403          	ld	s0,8(sp)
    8000404c:	01010113          	addi	sp,sp,16
    80004050:	00008067          	ret

0000000080004054 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80004054:	fe010113          	addi	sp,sp,-32
    80004058:	00113c23          	sd	ra,24(sp)
    8000405c:	00813823          	sd	s0,16(sp)
    80004060:	00913423          	sd	s1,8(sp)
    80004064:	01213023          	sd	s2,0(sp)
    80004068:	02010413          	addi	s0,sp,32
    8000406c:	00050493          	mv	s1,a0
    80004070:	00058913          	mv	s2,a1
    initMemory();
    80004074:	00000097          	auipc	ra,0x0
    80004078:	f78080e7          	jalr	-136(ra) # 80003fec <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    8000407c:	00008797          	auipc	a5,0x8
    80004080:	c3c7b783          	ld	a5,-964(a5) # 8000bcb8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004084:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80004088:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    8000408c:	00000713          	li	a4,0
    while(curr != 0)
    80004090:	00078c63          	beqz	a5,800040a8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80004094:	00f4e863          	bltu	s1,a5,800040a4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004098:	00078713          	mv	a4,a5
        curr = curr->next;
    8000409c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800040a0:	ff1ff06f          	j	80004090 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    800040a4:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800040a8:	02070063          	beqz	a4,800040c8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    800040ac:	00973423          	sd	s1,8(a4)
}
    800040b0:	01813083          	ld	ra,24(sp)
    800040b4:	01013403          	ld	s0,16(sp)
    800040b8:	00813483          	ld	s1,8(sp)
    800040bc:	00013903          	ld	s2,0(sp)
    800040c0:	02010113          	addi	sp,sp,32
    800040c4:	00008067          	ret
        headAllocated = newAllocated;
    800040c8:	00008797          	auipc	a5,0x8
    800040cc:	be97b823          	sd	s1,-1040(a5) # 8000bcb8 <_ZN15MemoryAllocator13headAllocatedE>
    800040d0:	fe1ff06f          	j	800040b0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

00000000800040d4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    800040d4:	fe010113          	addi	sp,sp,-32
    800040d8:	00113c23          	sd	ra,24(sp)
    800040dc:	00813823          	sd	s0,16(sp)
    800040e0:	00913423          	sd	s1,8(sp)
    800040e4:	01213023          	sd	s2,0(sp)
    800040e8:	02010413          	addi	s0,sp,32
    800040ec:	00050913          	mv	s2,a0
    initMemory();
    800040f0:	00000097          	auipc	ra,0x0
    800040f4:	efc080e7          	jalr	-260(ra) # 80003fec <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800040f8:	00008497          	auipc	s1,0x8
    800040fc:	bc84b483          	ld	s1,-1080(s1) # 8000bcc0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80004100:	00000713          	li	a4,0
    while(curr != 0)
    80004104:	0a048863          	beqz	s1,800041b4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80004108:	0004b783          	ld	a5,0(s1)
    8000410c:	0127f863          	bgeu	a5,s2,8000411c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80004110:	00048713          	mv	a4,s1
        curr = curr->next;
    80004114:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004118:	fedff06f          	j	80004104 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    8000411c:	01090693          	addi	a3,s2,16
    80004120:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80004124:	00008617          	auipc	a2,0x8
    80004128:	a8c63603          	ld	a2,-1396(a2) # 8000bbb0 <_GLOBAL_OFFSET_TABLE_+0x70>
    8000412c:	00063603          	ld	a2,0(a2)
    80004130:	04d66c63          	bltu	a2,a3,80004188 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80004134:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80004138:	01000613          	li	a2,16
    8000413c:	02f67663          	bgeu	a2,a5,80004168 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80004140:	0084b603          	ld	a2,8(s1)
    80004144:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80004148:	ff078793          	addi	a5,a5,-16
    8000414c:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80004150:	00070663          	beqz	a4,8000415c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80004154:	00d73423          	sd	a3,8(a4)
    80004158:	0380006f          	j	80004190 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    8000415c:	00008797          	auipc	a5,0x8
    80004160:	b6d7b223          	sd	a3,-1180(a5) # 8000bcc0 <_ZN15MemoryAllocator8headFreeE>
    80004164:	02c0006f          	j	80004190 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80004168:	00070863          	beqz	a4,80004178 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    8000416c:	0084b783          	ld	a5,8(s1)
    80004170:	00f73423          	sd	a5,8(a4)
    80004174:	01c0006f          	j	80004190 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80004178:	0084b783          	ld	a5,8(s1)
    8000417c:	00008717          	auipc	a4,0x8
    80004180:	b4f73223          	sd	a5,-1212(a4) # 8000bcc0 <_ZN15MemoryAllocator8headFreeE>
    80004184:	00c0006f          	j	80004190 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80004188:	02070063          	beqz	a4,800041a8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    8000418c:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80004190:	00090593          	mv	a1,s2
    80004194:	00048513          	mv	a0,s1
    80004198:	00000097          	auipc	ra,0x0
    8000419c:	ebc080e7          	jalr	-324(ra) # 80004054 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    800041a0:	01048513          	addi	a0,s1,16
            break;
    800041a4:	0140006f          	j	800041b8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    800041a8:	00008797          	auipc	a5,0x8
    800041ac:	b007bc23          	sd	zero,-1256(a5) # 8000bcc0 <_ZN15MemoryAllocator8headFreeE>
    800041b0:	fe1ff06f          	j	80004190 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    800041b4:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    800041b8:	01813083          	ld	ra,24(sp)
    800041bc:	01013403          	ld	s0,16(sp)
    800041c0:	00813483          	ld	s1,8(sp)
    800041c4:	00013903          	ld	s2,0(sp)
    800041c8:	02010113          	addi	sp,sp,32
    800041cc:	00008067          	ret

00000000800041d0 <_ZN15MemoryAllocator9mem_allocEm>:
{
    800041d0:	ff010113          	addi	sp,sp,-16
    800041d4:	00113423          	sd	ra,8(sp)
    800041d8:	00813023          	sd	s0,0(sp)
    800041dc:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    800041e0:	00000097          	auipc	ra,0x0
    800041e4:	ef4080e7          	jalr	-268(ra) # 800040d4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    800041e8:	00813083          	ld	ra,8(sp)
    800041ec:	00013403          	ld	s0,0(sp)
    800041f0:	01010113          	addi	sp,sp,16
    800041f4:	00008067          	ret

00000000800041f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800041f8:	fe010113          	addi	sp,sp,-32
    800041fc:	00113c23          	sd	ra,24(sp)
    80004200:	00813823          	sd	s0,16(sp)
    80004204:	00913423          	sd	s1,8(sp)
    80004208:	01213023          	sd	s2,0(sp)
    8000420c:	02010413          	addi	s0,sp,32
    80004210:	00050493          	mv	s1,a0
    80004214:	00058913          	mv	s2,a1
    initMemory();
    80004218:	00000097          	auipc	ra,0x0
    8000421c:	dd4080e7          	jalr	-556(ra) # 80003fec <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004220:	00008797          	auipc	a5,0x8
    80004224:	aa07b783          	ld	a5,-1376(a5) # 8000bcc0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80004228:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    8000422c:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80004230:	00000713          	li	a4,0
    while(curr != 0)
    80004234:	00078c63          	beqz	a5,8000424c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80004238:	00f4e863          	bltu	s1,a5,80004248 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    8000423c:	00078713          	mv	a4,a5
        curr = curr->next;
    80004240:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004244:	ff1ff06f          	j	80004234 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80004248:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    8000424c:	04070663          	beqz	a4,80004298 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004250:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004254:	0084b783          	ld	a5,8(s1)
    80004258:	00078a63          	beqz	a5,8000426c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    8000425c:	0004b603          	ld	a2,0(s1)
    80004260:	01060693          	addi	a3,a2,16
    80004264:	00d486b3          	add	a3,s1,a3
    80004268:	02d78e63          	beq	a5,a3,800042a4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    8000426c:	00070a63          	beqz	a4,80004280 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80004270:	00073683          	ld	a3,0(a4)
    80004274:	01068793          	addi	a5,a3,16
    80004278:	00f707b3          	add	a5,a4,a5
    8000427c:	04978263          	beq	a5,s1,800042c0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004280:	01813083          	ld	ra,24(sp)
    80004284:	01013403          	ld	s0,16(sp)
    80004288:	00813483          	ld	s1,8(sp)
    8000428c:	00013903          	ld	s2,0(sp)
    80004290:	02010113          	addi	sp,sp,32
    80004294:	00008067          	ret
        headFree = newSegment;
    80004298:	00008797          	auipc	a5,0x8
    8000429c:	a297b423          	sd	s1,-1496(a5) # 8000bcc0 <_ZN15MemoryAllocator8headFreeE>
    800042a0:	fb5ff06f          	j	80004254 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    800042a4:	0007b683          	ld	a3,0(a5)
    800042a8:	00d60633          	add	a2,a2,a3
    800042ac:	01060613          	addi	a2,a2,16
    800042b0:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    800042b4:	0087b783          	ld	a5,8(a5)
    800042b8:	00f4b423          	sd	a5,8(s1)
    800042bc:	fb1ff06f          	j	8000426c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    800042c0:	0004b783          	ld	a5,0(s1)
    800042c4:	00f686b3          	add	a3,a3,a5
    800042c8:	01068693          	addi	a3,a3,16
    800042cc:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    800042d0:	0084b783          	ld	a5,8(s1)
    800042d4:	00f73423          	sd	a5,8(a4)
}
    800042d8:	fa9ff06f          	j	80004280 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

00000000800042dc <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    800042dc:	fe010113          	addi	sp,sp,-32
    800042e0:	00113c23          	sd	ra,24(sp)
    800042e4:	00813823          	sd	s0,16(sp)
    800042e8:	00913423          	sd	s1,8(sp)
    800042ec:	01213023          	sd	s2,0(sp)
    800042f0:	02010413          	addi	s0,sp,32
    800042f4:	00050913          	mv	s2,a0
    initMemory();
    800042f8:	00000097          	auipc	ra,0x0
    800042fc:	cf4080e7          	jalr	-780(ra) # 80003fec <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004300:	00008497          	auipc	s1,0x8
    80004304:	9b84b483          	ld	s1,-1608(s1) # 8000bcb8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004308:	00000713          	li	a4,0
    while(curr != 0)
    8000430c:	02048a63          	beqz	s1,80004340 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004310:	01048793          	addi	a5,s1,16
    80004314:	01278863          	beq	a5,s2,80004324 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004318:	00048713          	mv	a4,s1
        curr = curr->next;
    8000431c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004320:	fedff06f          	j	8000430c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80004324:	02070e63          	beqz	a4,80004360 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80004328:	0084b783          	ld	a5,8(s1)
    8000432c:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004330:	0004b583          	ld	a1,0(s1)
    80004334:	00048513          	mv	a0,s1
    80004338:	00000097          	auipc	ra,0x0
    8000433c:	ec0080e7          	jalr	-320(ra) # 800041f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004340:	02048863          	beqz	s1,80004370 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004344:	00000513          	li	a0,0
    else
        return 1;
}
    80004348:	01813083          	ld	ra,24(sp)
    8000434c:	01013403          	ld	s0,16(sp)
    80004350:	00813483          	ld	s1,8(sp)
    80004354:	00013903          	ld	s2,0(sp)
    80004358:	02010113          	addi	sp,sp,32
    8000435c:	00008067          	ret
                headAllocated = curr->next;
    80004360:	0084b783          	ld	a5,8(s1)
    80004364:	00008717          	auipc	a4,0x8
    80004368:	94f73a23          	sd	a5,-1708(a4) # 8000bcb8 <_ZN15MemoryAllocator13headAllocatedE>
    8000436c:	fc5ff06f          	j	80004330 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80004370:	00100513          	li	a0,1
    80004374:	fd5ff06f          	j	80004348 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080004378 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004378:	ff010113          	addi	sp,sp,-16
    8000437c:	00113423          	sd	ra,8(sp)
    80004380:	00813023          	sd	s0,0(sp)
    80004384:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004388:	00000097          	auipc	ra,0x0
    8000438c:	f54080e7          	jalr	-172(ra) # 800042dc <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004390:	00813083          	ld	ra,8(sp)
    80004394:	00013403          	ld	s0,0(sp)
    80004398:	01010113          	addi	sp,sp,16
    8000439c:	00008067          	ret

00000000800043a0 <_Z7kmallocm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* kmalloc(size_t size)
{
    800043a0:	ff010113          	addi	sp,sp,-16
    800043a4:	00113423          	sd	ra,8(sp)
    800043a8:	00813023          	sd	s0,0(sp)
    800043ac:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800043b0:	00000097          	auipc	ra,0x0
    800043b4:	e20080e7          	jalr	-480(ra) # 800041d0 <_ZN15MemoryAllocator9mem_allocEm>
}
    800043b8:	00813083          	ld	ra,8(sp)
    800043bc:	00013403          	ld	s0,0(sp)
    800043c0:	01010113          	addi	sp,sp,16
    800043c4:	00008067          	ret

00000000800043c8 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    800043c8:	ff010113          	addi	sp,sp,-16
    800043cc:	00113423          	sd	ra,8(sp)
    800043d0:	00813023          	sd	s0,0(sp)
    800043d4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    800043d8:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    800043dc:	00651513          	slli	a0,a0,0x6
    800043e0:	00000097          	auipc	ra,0x0
    800043e4:	fc0080e7          	jalr	-64(ra) # 800043a0 <_Z7kmallocm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800043e8:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800043ec:	00000097          	auipc	ra,0x0
    800043f0:	bb0080e7          	jalr	-1104(ra) # 80003f9c <_ZN5Riscv13w_a0_sscratchEv>
}
    800043f4:	00813083          	ld	ra,8(sp)
    800043f8:	00013403          	ld	s0,0(sp)
    800043fc:	01010113          	addi	sp,sp,16
    80004400:	00008067          	ret

0000000080004404 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80004404:	ff010113          	addi	sp,sp,-16
    80004408:	00113423          	sd	ra,8(sp)
    8000440c:	00813023          	sd	s0,0(sp)
    80004410:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004414:	00000097          	auipc	ra,0x0
    80004418:	f64080e7          	jalr	-156(ra) # 80004378 <_ZN15MemoryAllocator8mem_freeEPv>
    8000441c:	00813083          	ld	ra,8(sp)
    80004420:	00013403          	ld	s0,0(sp)
    80004424:	01010113          	addi	sp,sp,16
    80004428:	00008067          	ret

000000008000442c <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    8000442c:	ff010113          	addi	sp,sp,-16
    80004430:	00113423          	sd	ra,8(sp)
    80004434:	00813023          	sd	s0,0(sp)
    80004438:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    8000443c:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004440:	00000097          	auipc	ra,0x0
    80004444:	fc4080e7          	jalr	-60(ra) # 80004404 <_Z5kfreePv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004448:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    8000444c:	00000097          	auipc	ra,0x0
    80004450:	b50080e7          	jalr	-1200(ra) # 80003f9c <_ZN5Riscv13w_a0_sscratchEv>
}
    80004454:	00813083          	ld	ra,8(sp)
    80004458:	00013403          	ld	s0,0(sp)
    8000445c:	01010113          	addi	sp,sp,16
    80004460:	00008067          	ret

0000000080004464 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80004464:	ff010113          	addi	sp,sp,-16
    80004468:	00813423          	sd	s0,8(sp)
    8000446c:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80004470:	00b52a23          	sw	a1,20(a0)
    80004474:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004478:	00053423          	sd	zero,8(a0)
    8000447c:	00053023          	sd	zero,0(a0)
}
    80004480:	00813403          	ld	s0,8(sp)
    80004484:	01010113          	addi	sp,sp,16
    80004488:	00008067          	ret

000000008000448c <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    8000448c:	ff010113          	addi	sp,sp,-16
    80004490:	00813423          	sd	s0,8(sp)
    80004494:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004498:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    8000449c:	00053783          	ld	a5,0(a0)
    800044a0:	00078e63          	beqz	a5,800044bc <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    800044a4:	00853783          	ld	a5,8(a0)
    800044a8:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    800044ac:	00b53423          	sd	a1,8(a0)
    }
}
    800044b0:	00813403          	ld	s0,8(sp)
    800044b4:	01010113          	addi	sp,sp,16
    800044b8:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    800044bc:	00b53423          	sd	a1,8(a0)
    800044c0:	00b53023          	sd	a1,0(a0)
    800044c4:	fedff06f          	j	800044b0 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

00000000800044c8 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    800044c8:	ff010113          	addi	sp,sp,-16
    800044cc:	00113423          	sd	ra,8(sp)
    800044d0:	00813023          	sd	s0,0(sp)
    800044d4:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    800044d8:	00007797          	auipc	a5,0x7
    800044dc:	6d07b783          	ld	a5,1744(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    800044e0:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800044e4:	00200793          	li	a5,2
    800044e8:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    800044ec:	00000097          	auipc	ra,0x0
    800044f0:	fa0080e7          	jalr	-96(ra) # 8000448c <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800044f4:	ffffe097          	auipc	ra,0xffffe
    800044f8:	3ec080e7          	jalr	1004(ra) # 800028e0 <_ZN3PCB8dispatchEv>
}
    800044fc:	00813083          	ld	ra,8(sp)
    80004500:	00013403          	ld	s0,0(sp)
    80004504:	01010113          	addi	sp,sp,16
    80004508:	00008067          	ret

000000008000450c <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    8000450c:	01052783          	lw	a5,16(a0)
    80004510:	fff7879b          	addiw	a5,a5,-1
    80004514:	00f52823          	sw	a5,16(a0)
    80004518:	02079713          	slli	a4,a5,0x20
    8000451c:	00074663          	bltz	a4,80004528 <_ZN10KSemaphore4waitEv+0x1c>
}
    80004520:	00000513          	li	a0,0
    80004524:	00008067          	ret
uint64 KSemaphore::wait() {
    80004528:	ff010113          	addi	sp,sp,-16
    8000452c:	00113423          	sd	ra,8(sp)
    80004530:	00813023          	sd	s0,0(sp)
    80004534:	01010413          	addi	s0,sp,16
        block();
    80004538:	00000097          	auipc	ra,0x0
    8000453c:	f90080e7          	jalr	-112(ra) # 800044c8 <_ZN10KSemaphore5blockEv>
}
    80004540:	00000513          	li	a0,0
    80004544:	00813083          	ld	ra,8(sp)
    80004548:	00013403          	ld	s0,0(sp)
    8000454c:	01010113          	addi	sp,sp,16
    80004550:	00008067          	ret

0000000080004554 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004554:	ff010113          	addi	sp,sp,-16
    80004558:	00813423          	sd	s0,8(sp)
    8000455c:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004560:	00053503          	ld	a0,0(a0)
    80004564:	00813403          	ld	s0,8(sp)
    80004568:	01010113          	addi	sp,sp,16
    8000456c:	00008067          	ret

0000000080004570 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004570:	ff010113          	addi	sp,sp,-16
    80004574:	00813423          	sd	s0,8(sp)
    80004578:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    8000457c:	00053783          	ld	a5,0(a0)
    80004580:	00078c63          	beqz	a5,80004598 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004584:	0087b703          	ld	a4,8(a5)
    80004588:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    8000458c:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004590:	00053783          	ld	a5,0(a0)
    80004594:	00078863          	beqz	a5,800045a4 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004598:	00813403          	ld	s0,8(sp)
    8000459c:	01010113          	addi	sp,sp,16
    800045a0:	00008067          	ret
        tailBlocked =0;
    800045a4:	00053423          	sd	zero,8(a0)
    800045a8:	ff1ff06f          	j	80004598 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

00000000800045ac <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    800045ac:	fe010113          	addi	sp,sp,-32
    800045b0:	00113c23          	sd	ra,24(sp)
    800045b4:	00813823          	sd	s0,16(sp)
    800045b8:	00913423          	sd	s1,8(sp)
    800045bc:	01213023          	sd	s2,0(sp)
    800045c0:	02010413          	addi	s0,sp,32
    800045c4:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    800045c8:	00090513          	mv	a0,s2
    800045cc:	00000097          	auipc	ra,0x0
    800045d0:	f88080e7          	jalr	-120(ra) # 80004554 <_ZN10KSemaphore15getFirstBlockedEv>
    800045d4:	00050493          	mv	s1,a0
    800045d8:	02050063          	beqz	a0,800045f8 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    800045dc:	00090513          	mv	a0,s2
    800045e0:	00000097          	auipc	ra,0x0
    800045e4:	f90080e7          	jalr	-112(ra) # 80004570 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    800045e8:	00048513          	mv	a0,s1
    800045ec:	fffff097          	auipc	ra,0xfffff
    800045f0:	f34080e7          	jalr	-204(ra) # 80003520 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800045f4:	fd5ff06f          	j	800045c8 <_ZN10KSemaphoreD1Ev+0x1c>
}
    800045f8:	01813083          	ld	ra,24(sp)
    800045fc:	01013403          	ld	s0,16(sp)
    80004600:	00813483          	ld	s1,8(sp)
    80004604:	00013903          	ld	s2,0(sp)
    80004608:	02010113          	addi	sp,sp,32
    8000460c:	00008067          	ret

0000000080004610 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80004610:	fe010113          	addi	sp,sp,-32
    80004614:	00113c23          	sd	ra,24(sp)
    80004618:	00813823          	sd	s0,16(sp)
    8000461c:	00913423          	sd	s1,8(sp)
    80004620:	01213023          	sd	s2,0(sp)
    80004624:	02010413          	addi	s0,sp,32
    80004628:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    8000462c:	00000097          	auipc	ra,0x0
    80004630:	f28080e7          	jalr	-216(ra) # 80004554 <_ZN10KSemaphore15getFirstBlockedEv>
    80004634:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80004638:	00090513          	mv	a0,s2
    8000463c:	00000097          	auipc	ra,0x0
    80004640:	f34080e7          	jalr	-204(ra) # 80004570 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004644:	00048863          	beqz	s1,80004654 <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    80004648:	00048513          	mv	a0,s1
    8000464c:	fffff097          	auipc	ra,0xfffff
    80004650:	ed4080e7          	jalr	-300(ra) # 80003520 <_ZN9Scheduler3putEP3PCB>
    }
}
    80004654:	01813083          	ld	ra,24(sp)
    80004658:	01013403          	ld	s0,16(sp)
    8000465c:	00813483          	ld	s1,8(sp)
    80004660:	00013903          	ld	s2,0(sp)
    80004664:	02010113          	addi	sp,sp,32
    80004668:	00008067          	ret

000000008000466c <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    8000466c:	01052783          	lw	a5,16(a0)
    80004670:	0017879b          	addiw	a5,a5,1
    80004674:	0007871b          	sext.w	a4,a5
    80004678:	00f52823          	sw	a5,16(a0)
    8000467c:	00e05663          	blez	a4,80004688 <_ZN10KSemaphore6signalEv+0x1c>
}
    80004680:	00000513          	li	a0,0
    80004684:	00008067          	ret
uint64 KSemaphore::signal() {
    80004688:	ff010113          	addi	sp,sp,-16
    8000468c:	00113423          	sd	ra,8(sp)
    80004690:	00813023          	sd	s0,0(sp)
    80004694:	01010413          	addi	s0,sp,16
        unblock();
    80004698:	00000097          	auipc	ra,0x0
    8000469c:	f78080e7          	jalr	-136(ra) # 80004610 <_ZN10KSemaphore7unblockEv>
}
    800046a0:	00000513          	li	a0,0
    800046a4:	00813083          	ld	ra,8(sp)
    800046a8:	00013403          	ld	s0,0(sp)
    800046ac:	01010113          	addi	sp,sp,16
    800046b0:	00008067          	ret

00000000800046b4 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    800046b4:	ff010113          	addi	sp,sp,-16
    800046b8:	00113423          	sd	ra,8(sp)
    800046bc:	00813023          	sd	s0,0(sp)
    800046c0:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800046c4:	00000097          	auipc	ra,0x0
    800046c8:	cdc080e7          	jalr	-804(ra) # 800043a0 <_Z7kmallocm>
}
    800046cc:	00813083          	ld	ra,8(sp)
    800046d0:	00013403          	ld	s0,0(sp)
    800046d4:	01010113          	addi	sp,sp,16
    800046d8:	00008067          	ret

00000000800046dc <_ZN10KSemaphore14semOpenHandlerEv>:
{
    800046dc:	fd010113          	addi	sp,sp,-48
    800046e0:	02113423          	sd	ra,40(sp)
    800046e4:	02813023          	sd	s0,32(sp)
    800046e8:	00913c23          	sd	s1,24(sp)
    800046ec:	01213823          	sd	s2,16(sp)
    800046f0:	01313423          	sd	s3,8(sp)
    800046f4:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800046f8:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800046fc:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80004700:	01800513          	li	a0,24
    80004704:	00000097          	auipc	ra,0x0
    80004708:	fb0080e7          	jalr	-80(ra) # 800046b4 <_ZN10KSemaphorenwEm>
    8000470c:	00050493          	mv	s1,a0
    80004710:	0009859b          	sext.w	a1,s3
    80004714:	00000097          	auipc	ra,0x0
    80004718:	d50080e7          	jalr	-688(ra) # 80004464 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    8000471c:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80004720:	02048263          	beqz	s1,80004744 <_ZN10KSemaphore14semOpenHandlerEv+0x68>
            __asm__ volatile("li a0, 0");
    80004724:	00000513          	li	a0,0
}
    80004728:	02813083          	ld	ra,40(sp)
    8000472c:	02013403          	ld	s0,32(sp)
    80004730:	01813483          	ld	s1,24(sp)
    80004734:	01013903          	ld	s2,16(sp)
    80004738:	00813983          	ld	s3,8(sp)
    8000473c:	03010113          	addi	sp,sp,48
    80004740:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80004744:	fff00513          	li	a0,-1
    80004748:	fe1ff06f          	j	80004728 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

000000008000474c <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    8000474c:	ff010113          	addi	sp,sp,-16
    80004750:	00113423          	sd	ra,8(sp)
    80004754:	00813023          	sd	s0,0(sp)
    80004758:	01010413          	addi	s0,sp,16
    kfree(p);
    8000475c:	00000097          	auipc	ra,0x0
    80004760:	ca8080e7          	jalr	-856(ra) # 80004404 <_Z5kfreePv>
}
    80004764:	00813083          	ld	ra,8(sp)
    80004768:	00013403          	ld	s0,0(sp)
    8000476c:	01010113          	addi	sp,sp,16
    80004770:	00008067          	ret

0000000080004774 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80004774:	fe010113          	addi	sp,sp,-32
    80004778:	00113c23          	sd	ra,24(sp)
    8000477c:	00813823          	sd	s0,16(sp)
    80004780:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004784:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->wait();
    80004788:	00000097          	auipc	ra,0x0
    8000478c:	d84080e7          	jalr	-636(ra) # 8000450c <_ZN10KSemaphore4waitEv>
    80004790:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004794:	fe843783          	ld	a5,-24(s0)
    80004798:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    8000479c:	00000097          	auipc	ra,0x0
    800047a0:	800080e7          	jalr	-2048(ra) # 80003f9c <_ZN5Riscv13w_a0_sscratchEv>
}
    800047a4:	01813083          	ld	ra,24(sp)
    800047a8:	01013403          	ld	s0,16(sp)
    800047ac:	02010113          	addi	sp,sp,32
    800047b0:	00008067          	ret

00000000800047b4 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler()
{
    800047b4:	fe010113          	addi	sp,sp,-32
    800047b8:	00113c23          	sd	ra,24(sp)
    800047bc:	00813823          	sd	s0,16(sp)
    800047c0:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800047c4:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->signal();
    800047c8:	00000097          	auipc	ra,0x0
    800047cc:	ea4080e7          	jalr	-348(ra) # 8000466c <_ZN10KSemaphore6signalEv>
    800047d0:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800047d4:	fe843783          	ld	a5,-24(s0)
    800047d8:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    800047dc:	fffff097          	auipc	ra,0xfffff
    800047e0:	7c0080e7          	jalr	1984(ra) # 80003f9c <_ZN5Riscv13w_a0_sscratchEv>
}
    800047e4:	01813083          	ld	ra,24(sp)
    800047e8:	01013403          	ld	s0,16(sp)
    800047ec:	02010113          	addi	sp,sp,32
    800047f0:	00008067          	ret

00000000800047f4 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    800047f4:	fe010113          	addi	sp,sp,-32
    800047f8:	00113c23          	sd	ra,24(sp)
    800047fc:	00813823          	sd	s0,16(sp)
    80004800:	00913423          	sd	s1,8(sp)
    80004804:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004808:	00058493          	mv	s1,a1
    delete kSem;
    8000480c:	00048e63          	beqz	s1,80004828 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80004810:	00048513          	mv	a0,s1
    80004814:	00000097          	auipc	ra,0x0
    80004818:	d98080e7          	jalr	-616(ra) # 800045ac <_ZN10KSemaphoreD1Ev>
    8000481c:	00048513          	mv	a0,s1
    80004820:	00000097          	auipc	ra,0x0
    80004824:	f2c080e7          	jalr	-212(ra) # 8000474c <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80004828:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    8000482c:	fffff097          	auipc	ra,0xfffff
    80004830:	770080e7          	jalr	1904(ra) # 80003f9c <_ZN5Riscv13w_a0_sscratchEv>
}
    80004834:	01813083          	ld	ra,24(sp)
    80004838:	01013403          	ld	s0,16(sp)
    8000483c:	00813483          	ld	s1,8(sp)
    80004840:	02010113          	addi	sp,sp,32
    80004844:	00008067          	ret

0000000080004848 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    80004848:	fe010113          	addi	sp,sp,-32
    8000484c:	00113c23          	sd	ra,24(sp)
    80004850:	00813823          	sd	s0,16(sp)
    80004854:	00913423          	sd	s1,8(sp)
    80004858:	01213023          	sd	s2,0(sp)
    8000485c:	02010413          	addi	s0,sp,32
    80004860:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004864:	00000913          	li	s2,0
    80004868:	00c0006f          	j	80004874 <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000486c:	ffffd097          	auipc	ra,0xffffd
    80004870:	ac8080e7          	jalr	-1336(ra) # 80001334 <thread_dispatch>
    while ((key = getc()) != 'q') {
    80004874:	ffffd097          	auipc	ra,0xffffd
    80004878:	c9c080e7          	jalr	-868(ra) # 80001510 <getc>
    8000487c:	0005059b          	sext.w	a1,a0
    80004880:	07100793          	li	a5,113
    80004884:	02f58a63          	beq	a1,a5,800048b8 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80004888:	0084b503          	ld	a0,8(s1)
    8000488c:	00002097          	auipc	ra,0x2
    80004890:	e14080e7          	jalr	-492(ra) # 800066a0 <_ZN6Buffer3putEi>
        i++;
    80004894:	0019071b          	addiw	a4,s2,1
    80004898:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000489c:	0004a683          	lw	a3,0(s1)
    800048a0:	0026979b          	slliw	a5,a3,0x2
    800048a4:	00d787bb          	addw	a5,a5,a3
    800048a8:	0017979b          	slliw	a5,a5,0x1
    800048ac:	02f767bb          	remw	a5,a4,a5
    800048b0:	fc0792e3          	bnez	a5,80004874 <_Z16producerKeyboardPv+0x2c>
    800048b4:	fb9ff06f          	j	8000486c <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800048b8:	00100793          	li	a5,1
    800048bc:	00007717          	auipc	a4,0x7
    800048c0:	40f72623          	sw	a5,1036(a4) # 8000bcc8 <threadEnd>

    delete data->buffer;
    800048c4:	0084b903          	ld	s2,8(s1)
    800048c8:	00090e63          	beqz	s2,800048e4 <_Z16producerKeyboardPv+0x9c>
    800048cc:	00090513          	mv	a0,s2
    800048d0:	00002097          	auipc	ra,0x2
    800048d4:	d14080e7          	jalr	-748(ra) # 800065e4 <_ZN6BufferD1Ev>
    800048d8:	00090513          	mv	a0,s2
    800048dc:	fffff097          	auipc	ra,0xfffff
    800048e0:	e40080e7          	jalr	-448(ra) # 8000371c <_ZdlPv>

    sem_signal(data->wait);
    800048e4:	0104b503          	ld	a0,16(s1)
    800048e8:	ffffd097          	auipc	ra,0xffffd
    800048ec:	b24080e7          	jalr	-1244(ra) # 8000140c <sem_signal>
}
    800048f0:	01813083          	ld	ra,24(sp)
    800048f4:	01013403          	ld	s0,16(sp)
    800048f8:	00813483          	ld	s1,8(sp)
    800048fc:	00013903          	ld	s2,0(sp)
    80004900:	02010113          	addi	sp,sp,32
    80004904:	00008067          	ret

0000000080004908 <_Z8producerPv>:

void producer(void *arg) {
    80004908:	fe010113          	addi	sp,sp,-32
    8000490c:	00113c23          	sd	ra,24(sp)
    80004910:	00813823          	sd	s0,16(sp)
    80004914:	00913423          	sd	s1,8(sp)
    80004918:	01213023          	sd	s2,0(sp)
    8000491c:	02010413          	addi	s0,sp,32
    80004920:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004924:	00000913          	li	s2,0
    80004928:	00c0006f          	j	80004934 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000492c:	ffffd097          	auipc	ra,0xffffd
    80004930:	a08080e7          	jalr	-1528(ra) # 80001334 <thread_dispatch>
    while (!threadEnd) {
    80004934:	00007797          	auipc	a5,0x7
    80004938:	3947a783          	lw	a5,916(a5) # 8000bcc8 <threadEnd>
    8000493c:	02079e63          	bnez	a5,80004978 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80004940:	0004a583          	lw	a1,0(s1)
    80004944:	0305859b          	addiw	a1,a1,48
    80004948:	0084b503          	ld	a0,8(s1)
    8000494c:	00002097          	auipc	ra,0x2
    80004950:	d54080e7          	jalr	-684(ra) # 800066a0 <_ZN6Buffer3putEi>
        i++;
    80004954:	0019071b          	addiw	a4,s2,1
    80004958:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000495c:	0004a683          	lw	a3,0(s1)
    80004960:	0026979b          	slliw	a5,a3,0x2
    80004964:	00d787bb          	addw	a5,a5,a3
    80004968:	0017979b          	slliw	a5,a5,0x1
    8000496c:	02f767bb          	remw	a5,a4,a5
    80004970:	fc0792e3          	bnez	a5,80004934 <_Z8producerPv+0x2c>
    80004974:	fb9ff06f          	j	8000492c <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80004978:	0104b503          	ld	a0,16(s1)
    8000497c:	ffffd097          	auipc	ra,0xffffd
    80004980:	a90080e7          	jalr	-1392(ra) # 8000140c <sem_signal>
}
    80004984:	01813083          	ld	ra,24(sp)
    80004988:	01013403          	ld	s0,16(sp)
    8000498c:	00813483          	ld	s1,8(sp)
    80004990:	00013903          	ld	s2,0(sp)
    80004994:	02010113          	addi	sp,sp,32
    80004998:	00008067          	ret

000000008000499c <_Z8consumerPv>:

void consumer(void *arg) {
    8000499c:	fd010113          	addi	sp,sp,-48
    800049a0:	02113423          	sd	ra,40(sp)
    800049a4:	02813023          	sd	s0,32(sp)
    800049a8:	00913c23          	sd	s1,24(sp)
    800049ac:	01213823          	sd	s2,16(sp)
    800049b0:	01313423          	sd	s3,8(sp)
    800049b4:	03010413          	addi	s0,sp,48
    800049b8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;


    int i = 0;
    800049bc:	00000993          	li	s3,0
    800049c0:	01c0006f          	j	800049dc <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800049c4:	ffffd097          	auipc	ra,0xffffd
    800049c8:	970080e7          	jalr	-1680(ra) # 80001334 <thread_dispatch>
    800049cc:	0500006f          	j	80004a1c <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800049d0:	00a00513          	li	a0,10
    800049d4:	ffffd097          	auipc	ra,0xffffd
    800049d8:	b64080e7          	jalr	-1180(ra) # 80001538 <putc>
    while (!threadEnd) {
    800049dc:	00007797          	auipc	a5,0x7
    800049e0:	2ec7a783          	lw	a5,748(a5) # 8000bcc8 <threadEnd>
    800049e4:	04079463          	bnez	a5,80004a2c <_Z8consumerPv+0x90>
        int key = data->buffer->get();
    800049e8:	00893503          	ld	a0,8(s2)
    800049ec:	00002097          	auipc	ra,0x2
    800049f0:	d44080e7          	jalr	-700(ra) # 80006730 <_ZN6Buffer3getEv>
        i++;
    800049f4:	0019849b          	addiw	s1,s3,1
    800049f8:	0004899b          	sext.w	s3,s1
        putc(key);
    800049fc:	0ff57513          	andi	a0,a0,255
    80004a00:	ffffd097          	auipc	ra,0xffffd
    80004a04:	b38080e7          	jalr	-1224(ra) # 80001538 <putc>
        if (i % (5 * data->id) == 0) {
    80004a08:	00092703          	lw	a4,0(s2)
    80004a0c:	0027179b          	slliw	a5,a4,0x2
    80004a10:	00e787bb          	addw	a5,a5,a4
    80004a14:	02f4e7bb          	remw	a5,s1,a5
    80004a18:	fa0786e3          	beqz	a5,800049c4 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    80004a1c:	05000793          	li	a5,80
    80004a20:	02f4e4bb          	remw	s1,s1,a5
    80004a24:	fa049ce3          	bnez	s1,800049dc <_Z8consumerPv+0x40>
    80004a28:	fa9ff06f          	j	800049d0 <_Z8consumerPv+0x34>
        }
    }

    sem_signal(data->wait);
    80004a2c:	01093503          	ld	a0,16(s2)
    80004a30:	ffffd097          	auipc	ra,0xffffd
    80004a34:	9dc080e7          	jalr	-1572(ra) # 8000140c <sem_signal>
}
    80004a38:	02813083          	ld	ra,40(sp)
    80004a3c:	02013403          	ld	s0,32(sp)
    80004a40:	01813483          	ld	s1,24(sp)
    80004a44:	01013903          	ld	s2,16(sp)
    80004a48:	00813983          	ld	s3,8(sp)
    80004a4c:	03010113          	addi	sp,sp,48
    80004a50:	00008067          	ret

0000000080004a54 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80004a54:	f9010113          	addi	sp,sp,-112
    80004a58:	06113423          	sd	ra,104(sp)
    80004a5c:	06813023          	sd	s0,96(sp)
    80004a60:	04913c23          	sd	s1,88(sp)
    80004a64:	05213823          	sd	s2,80(sp)
    80004a68:	05313423          	sd	s3,72(sp)
    80004a6c:	05413023          	sd	s4,64(sp)
    80004a70:	03513c23          	sd	s5,56(sp)
    80004a74:	07010413          	addi	s0,sp,112
    char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004a78:	00005517          	auipc	a0,0x5
    80004a7c:	91850513          	addi	a0,a0,-1768 # 80009390 <CONSOLE_STATUS+0x380>
    80004a80:	00001097          	auipc	ra,0x1
    80004a84:	204080e7          	jalr	516(ra) # 80005c84 <_Z11printStringPKc>
    getString(input, 30);
    80004a88:	01e00593          	li	a1,30
    80004a8c:	fa040493          	addi	s1,s0,-96
    80004a90:	00048513          	mv	a0,s1
    80004a94:	00001097          	auipc	ra,0x1
    80004a98:	26c080e7          	jalr	620(ra) # 80005d00 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004a9c:	00048513          	mv	a0,s1
    80004aa0:	00001097          	auipc	ra,0x1
    80004aa4:	32c080e7          	jalr	812(ra) # 80005dcc <_Z11stringToIntPKc>
    80004aa8:	00050913          	mv	s2,a0

    printString("Unesite velicinu bafera?\n");
    80004aac:	00005517          	auipc	a0,0x5
    80004ab0:	90450513          	addi	a0,a0,-1788 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80004ab4:	00001097          	auipc	ra,0x1
    80004ab8:	1d0080e7          	jalr	464(ra) # 80005c84 <_Z11printStringPKc>
    getString(input, 30);
    80004abc:	01e00593          	li	a1,30
    80004ac0:	00048513          	mv	a0,s1
    80004ac4:	00001097          	auipc	ra,0x1
    80004ac8:	23c080e7          	jalr	572(ra) # 80005d00 <_Z9getStringPci>
    n = stringToInt(input);
    80004acc:	00048513          	mv	a0,s1
    80004ad0:	00001097          	auipc	ra,0x1
    80004ad4:	2fc080e7          	jalr	764(ra) # 80005dcc <_Z11stringToIntPKc>
    80004ad8:	00050493          	mv	s1,a0

    printString("Broj proizvodjaca "); printInt(threadNum);
    80004adc:	00005517          	auipc	a0,0x5
    80004ae0:	8f450513          	addi	a0,a0,-1804 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80004ae4:	00001097          	auipc	ra,0x1
    80004ae8:	1a0080e7          	jalr	416(ra) # 80005c84 <_Z11printStringPKc>
    80004aec:	00000613          	li	a2,0
    80004af0:	00a00593          	li	a1,10
    80004af4:	00090513          	mv	a0,s2
    80004af8:	00001097          	auipc	ra,0x1
    80004afc:	324080e7          	jalr	804(ra) # 80005e1c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004b00:	00005517          	auipc	a0,0x5
    80004b04:	8e850513          	addi	a0,a0,-1816 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80004b08:	00001097          	auipc	ra,0x1
    80004b0c:	17c080e7          	jalr	380(ra) # 80005c84 <_Z11printStringPKc>
    80004b10:	00000613          	li	a2,0
    80004b14:	00a00593          	li	a1,10
    80004b18:	00048513          	mv	a0,s1
    80004b1c:	00001097          	auipc	ra,0x1
    80004b20:	300080e7          	jalr	768(ra) # 80005e1c <_Z8printIntiii>
    printString(".\n");
    80004b24:	00004517          	auipc	a0,0x4
    80004b28:	74450513          	addi	a0,a0,1860 # 80009268 <CONSOLE_STATUS+0x258>
    80004b2c:	00001097          	auipc	ra,0x1
    80004b30:	158080e7          	jalr	344(ra) # 80005c84 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80004b34:	03800513          	li	a0,56
    80004b38:	fffff097          	auipc	ra,0xfffff
    80004b3c:	bbc080e7          	jalr	-1092(ra) # 800036f4 <_Znwm>
    80004b40:	00050a13          	mv	s4,a0
    80004b44:	00048593          	mv	a1,s1
    80004b48:	00002097          	auipc	ra,0x2
    80004b4c:	a14080e7          	jalr	-1516(ra) # 8000655c <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004b50:	00000593          	li	a1,0
    80004b54:	00007517          	auipc	a0,0x7
    80004b58:	17c50513          	addi	a0,a0,380 # 8000bcd0 <waitForAll>
    80004b5c:	ffffd097          	auipc	ra,0xffffd
    80004b60:	820080e7          	jalr	-2016(ra) # 8000137c <sem_open>

    thread_t threads[threadNum];
    80004b64:	00391793          	slli	a5,s2,0x3
    80004b68:	00f78793          	addi	a5,a5,15
    80004b6c:	ff07f793          	andi	a5,a5,-16
    80004b70:	40f10133          	sub	sp,sp,a5
    80004b74:	00010a93          	mv	s5,sp
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];
    80004b78:	0019071b          	addiw	a4,s2,1
    80004b7c:	00171793          	slli	a5,a4,0x1
    80004b80:	00e787b3          	add	a5,a5,a4
    80004b84:	00379793          	slli	a5,a5,0x3
    80004b88:	00f78793          	addi	a5,a5,15
    80004b8c:	ff07f793          	andi	a5,a5,-16
    80004b90:	40f10133          	sub	sp,sp,a5
    80004b94:	00010993          	mv	s3,sp

    data[threadNum].id = threadNum;
    80004b98:	00191613          	slli	a2,s2,0x1
    80004b9c:	012607b3          	add	a5,a2,s2
    80004ba0:	00379793          	slli	a5,a5,0x3
    80004ba4:	00f987b3          	add	a5,s3,a5
    80004ba8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004bac:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80004bb0:	00007717          	auipc	a4,0x7
    80004bb4:	12073703          	ld	a4,288(a4) # 8000bcd0 <waitForAll>
    80004bb8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004bbc:	00078613          	mv	a2,a5
    80004bc0:	00000597          	auipc	a1,0x0
    80004bc4:	ddc58593          	addi	a1,a1,-548 # 8000499c <_Z8consumerPv>
    80004bc8:	f9840513          	addi	a0,s0,-104
    80004bcc:	ffffc097          	auipc	ra,0xffffc
    80004bd0:	6e8080e7          	jalr	1768(ra) # 800012b4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80004bd4:	00000493          	li	s1,0
    80004bd8:	0280006f          	j	80004c00 <_Z22producerConsumer_C_APIv+0x1ac>
        data[i].id = i;
        data[i].buffer = buffer;
        data[i].wait = waitForAll;

        thread_create(threads + i,
    80004bdc:	00000597          	auipc	a1,0x0
    80004be0:	c6c58593          	addi	a1,a1,-916 # 80004848 <_Z16producerKeyboardPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    80004be4:	00179613          	slli	a2,a5,0x1
    80004be8:	00f60633          	add	a2,a2,a5
    80004bec:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004bf0:	00c98633          	add	a2,s3,a2
    80004bf4:	ffffc097          	auipc	ra,0xffffc
    80004bf8:	6c0080e7          	jalr	1728(ra) # 800012b4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004bfc:	0014849b          	addiw	s1,s1,1
    80004c00:	0524d263          	bge	s1,s2,80004c44 <_Z22producerConsumer_C_APIv+0x1f0>
        data[i].id = i;
    80004c04:	00149793          	slli	a5,s1,0x1
    80004c08:	009787b3          	add	a5,a5,s1
    80004c0c:	00379793          	slli	a5,a5,0x3
    80004c10:	00f987b3          	add	a5,s3,a5
    80004c14:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004c18:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80004c1c:	00007717          	auipc	a4,0x7
    80004c20:	0b473703          	ld	a4,180(a4) # 8000bcd0 <waitForAll>
    80004c24:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80004c28:	00048793          	mv	a5,s1
    80004c2c:	00349513          	slli	a0,s1,0x3
    80004c30:	00aa8533          	add	a0,s5,a0
    80004c34:	fa9054e3          	blez	s1,80004bdc <_Z22producerConsumer_C_APIv+0x188>
    80004c38:	00000597          	auipc	a1,0x0
    80004c3c:	cd058593          	addi	a1,a1,-816 # 80004908 <_Z8producerPv>
    80004c40:	fa5ff06f          	j	80004be4 <_Z22producerConsumer_C_APIv+0x190>
    }

    thread_dispatch();
    80004c44:	ffffc097          	auipc	ra,0xffffc
    80004c48:	6f0080e7          	jalr	1776(ra) # 80001334 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80004c4c:	00000493          	li	s1,0
    80004c50:	00994e63          	blt	s2,s1,80004c6c <_Z22producerConsumer_C_APIv+0x218>
        sem_wait(waitForAll);
    80004c54:	00007517          	auipc	a0,0x7
    80004c58:	07c53503          	ld	a0,124(a0) # 8000bcd0 <waitForAll>
    80004c5c:	ffffc097          	auipc	ra,0xffffc
    80004c60:	784080e7          	jalr	1924(ra) # 800013e0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80004c64:	0014849b          	addiw	s1,s1,1
    80004c68:	fe9ff06f          	j	80004c50 <_Z22producerConsumer_C_APIv+0x1fc>
    }

    sem_close(waitForAll);
    80004c6c:	00007517          	auipc	a0,0x7
    80004c70:	06453503          	ld	a0,100(a0) # 8000bcd0 <waitForAll>
    80004c74:	ffffc097          	auipc	ra,0xffffc
    80004c78:	740080e7          	jalr	1856(ra) # 800013b4 <sem_close>
    80004c7c:	f9040113          	addi	sp,s0,-112
    80004c80:	06813083          	ld	ra,104(sp)
    80004c84:	06013403          	ld	s0,96(sp)
    80004c88:	05813483          	ld	s1,88(sp)
    80004c8c:	05013903          	ld	s2,80(sp)
    80004c90:	04813983          	ld	s3,72(sp)
    80004c94:	04013a03          	ld	s4,64(sp)
    80004c98:	03813a83          	ld	s5,56(sp)
    80004c9c:	07010113          	addi	sp,sp,112
    80004ca0:	00008067          	ret
    80004ca4:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004ca8:	000a0513          	mv	a0,s4
    80004cac:	fffff097          	auipc	ra,0xfffff
    80004cb0:	a70080e7          	jalr	-1424(ra) # 8000371c <_ZdlPv>
    80004cb4:	00048513          	mv	a0,s1
    80004cb8:	00008097          	auipc	ra,0x8
    80004cbc:	100080e7          	jalr	256(ra) # 8000cdb8 <_Unwind_Resume>

0000000080004cc0 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004cc0:	fe010113          	addi	sp,sp,-32
    80004cc4:	00113c23          	sd	ra,24(sp)
    80004cc8:	00813823          	sd	s0,16(sp)
    80004ccc:	00913423          	sd	s1,8(sp)
    80004cd0:	01213023          	sd	s2,0(sp)
    80004cd4:	02010413          	addi	s0,sp,32
    80004cd8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004cdc:	00100793          	li	a5,1
    80004ce0:	02a7f863          	bgeu	a5,a0,80004d10 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004ce4:	00a00793          	li	a5,10
    80004ce8:	02f577b3          	remu	a5,a0,a5
    80004cec:	02078e63          	beqz	a5,80004d28 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004cf0:	fff48513          	addi	a0,s1,-1
    80004cf4:	00000097          	auipc	ra,0x0
    80004cf8:	fcc080e7          	jalr	-52(ra) # 80004cc0 <_ZL9fibonaccim>
    80004cfc:	00050913          	mv	s2,a0
    80004d00:	ffe48513          	addi	a0,s1,-2
    80004d04:	00000097          	auipc	ra,0x0
    80004d08:	fbc080e7          	jalr	-68(ra) # 80004cc0 <_ZL9fibonaccim>
    80004d0c:	00a90533          	add	a0,s2,a0
}
    80004d10:	01813083          	ld	ra,24(sp)
    80004d14:	01013403          	ld	s0,16(sp)
    80004d18:	00813483          	ld	s1,8(sp)
    80004d1c:	00013903          	ld	s2,0(sp)
    80004d20:	02010113          	addi	sp,sp,32
    80004d24:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004d28:	ffffc097          	auipc	ra,0xffffc
    80004d2c:	60c080e7          	jalr	1548(ra) # 80001334 <thread_dispatch>
    80004d30:	fc1ff06f          	j	80004cf0 <_ZL9fibonaccim+0x30>

0000000080004d34 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004d34:	fe010113          	addi	sp,sp,-32
    80004d38:	00113c23          	sd	ra,24(sp)
    80004d3c:	00813823          	sd	s0,16(sp)
    80004d40:	00913423          	sd	s1,8(sp)
    80004d44:	01213023          	sd	s2,0(sp)
    80004d48:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004d4c:	00000913          	li	s2,0
    80004d50:	0380006f          	j	80004d88 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004d54:	ffffc097          	auipc	ra,0xffffc
    80004d58:	5e0080e7          	jalr	1504(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004d5c:	00148493          	addi	s1,s1,1
    80004d60:	000027b7          	lui	a5,0x2
    80004d64:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d68:	0097ee63          	bltu	a5,s1,80004d84 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d6c:	00000713          	li	a4,0
    80004d70:	000077b7          	lui	a5,0x7
    80004d74:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d78:	fce7eee3          	bltu	a5,a4,80004d54 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004d7c:	00170713          	addi	a4,a4,1
    80004d80:	ff1ff06f          	j	80004d70 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004d84:	00190913          	addi	s2,s2,1
    80004d88:	00900793          	li	a5,9
    80004d8c:	0527e063          	bltu	a5,s2,80004dcc <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004d90:	00004517          	auipc	a0,0x4
    80004d94:	67050513          	addi	a0,a0,1648 # 80009400 <CONSOLE_STATUS+0x3f0>
    80004d98:	00001097          	auipc	ra,0x1
    80004d9c:	eec080e7          	jalr	-276(ra) # 80005c84 <_Z11printStringPKc>
    80004da0:	00000613          	li	a2,0
    80004da4:	00a00593          	li	a1,10
    80004da8:	0009051b          	sext.w	a0,s2
    80004dac:	00001097          	auipc	ra,0x1
    80004db0:	070080e7          	jalr	112(ra) # 80005e1c <_Z8printIntiii>
    80004db4:	00004517          	auipc	a0,0x4
    80004db8:	34c50513          	addi	a0,a0,844 # 80009100 <CONSOLE_STATUS+0xf0>
    80004dbc:	00001097          	auipc	ra,0x1
    80004dc0:	ec8080e7          	jalr	-312(ra) # 80005c84 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004dc4:	00000493          	li	s1,0
    80004dc8:	f99ff06f          	j	80004d60 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004dcc:	00004517          	auipc	a0,0x4
    80004dd0:	63c50513          	addi	a0,a0,1596 # 80009408 <CONSOLE_STATUS+0x3f8>
    80004dd4:	00001097          	auipc	ra,0x1
    80004dd8:	eb0080e7          	jalr	-336(ra) # 80005c84 <_Z11printStringPKc>
    finishedA = true;
    80004ddc:	00100793          	li	a5,1
    80004de0:	00007717          	auipc	a4,0x7
    80004de4:	eef70c23          	sb	a5,-264(a4) # 8000bcd8 <_ZL9finishedA>
}
    80004de8:	01813083          	ld	ra,24(sp)
    80004dec:	01013403          	ld	s0,16(sp)
    80004df0:	00813483          	ld	s1,8(sp)
    80004df4:	00013903          	ld	s2,0(sp)
    80004df8:	02010113          	addi	sp,sp,32
    80004dfc:	00008067          	ret

0000000080004e00 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg)
{
    80004e00:	fe010113          	addi	sp,sp,-32
    80004e04:	00113c23          	sd	ra,24(sp)
    80004e08:	00813823          	sd	s0,16(sp)
    80004e0c:	00913423          	sd	s1,8(sp)
    80004e10:	01213023          	sd	s2,0(sp)
    80004e14:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004e18:	00000913          	li	s2,0
    80004e1c:	0380006f          	j	80004e54 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004e20:	ffffc097          	auipc	ra,0xffffc
    80004e24:	514080e7          	jalr	1300(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004e28:	00148493          	addi	s1,s1,1
    80004e2c:	000027b7          	lui	a5,0x2
    80004e30:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004e34:	0097ee63          	bltu	a5,s1,80004e50 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004e38:	00000713          	li	a4,0
    80004e3c:	000077b7          	lui	a5,0x7
    80004e40:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004e44:	fce7eee3          	bltu	a5,a4,80004e20 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004e48:	00170713          	addi	a4,a4,1
    80004e4c:	ff1ff06f          	j	80004e3c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004e50:	00190913          	addi	s2,s2,1
    80004e54:	00f00793          	li	a5,15
    80004e58:	0527e063          	bltu	a5,s2,80004e98 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004e5c:	00004517          	auipc	a0,0x4
    80004e60:	5bc50513          	addi	a0,a0,1468 # 80009418 <CONSOLE_STATUS+0x408>
    80004e64:	00001097          	auipc	ra,0x1
    80004e68:	e20080e7          	jalr	-480(ra) # 80005c84 <_Z11printStringPKc>
    80004e6c:	00000613          	li	a2,0
    80004e70:	00a00593          	li	a1,10
    80004e74:	0009051b          	sext.w	a0,s2
    80004e78:	00001097          	auipc	ra,0x1
    80004e7c:	fa4080e7          	jalr	-92(ra) # 80005e1c <_Z8printIntiii>
    80004e80:	00004517          	auipc	a0,0x4
    80004e84:	28050513          	addi	a0,a0,640 # 80009100 <CONSOLE_STATUS+0xf0>
    80004e88:	00001097          	auipc	ra,0x1
    80004e8c:	dfc080e7          	jalr	-516(ra) # 80005c84 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004e90:	00000493          	li	s1,0
    80004e94:	f99ff06f          	j	80004e2c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    thread_dispatch();
    80004e98:	ffffc097          	auipc	ra,0xffffc
    80004e9c:	49c080e7          	jalr	1180(ra) # 80001334 <thread_dispatch>
    printString("B finished!\n");
    80004ea0:	00004517          	auipc	a0,0x4
    80004ea4:	58050513          	addi	a0,a0,1408 # 80009420 <CONSOLE_STATUS+0x410>
    80004ea8:	00001097          	auipc	ra,0x1
    80004eac:	ddc080e7          	jalr	-548(ra) # 80005c84 <_Z11printStringPKc>
    finishedB = true;
    80004eb0:	00100793          	li	a5,1
    80004eb4:	00007717          	auipc	a4,0x7
    80004eb8:	e2f702a3          	sb	a5,-475(a4) # 8000bcd9 <_ZL9finishedB>
}
    80004ebc:	01813083          	ld	ra,24(sp)
    80004ec0:	01013403          	ld	s0,16(sp)
    80004ec4:	00813483          	ld	s1,8(sp)
    80004ec8:	00013903          	ld	s2,0(sp)
    80004ecc:	02010113          	addi	sp,sp,32
    80004ed0:	00008067          	ret

0000000080004ed4 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004ed4:	fe010113          	addi	sp,sp,-32
    80004ed8:	00113c23          	sd	ra,24(sp)
    80004edc:	00813823          	sd	s0,16(sp)
    80004ee0:	00913423          	sd	s1,8(sp)
    80004ee4:	01213023          	sd	s2,0(sp)
    80004ee8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004eec:	00000493          	li	s1,0
    80004ef0:	0400006f          	j	80004f30 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004ef4:	00004517          	auipc	a0,0x4
    80004ef8:	53c50513          	addi	a0,a0,1340 # 80009430 <CONSOLE_STATUS+0x420>
    80004efc:	00001097          	auipc	ra,0x1
    80004f00:	d88080e7          	jalr	-632(ra) # 80005c84 <_Z11printStringPKc>
    80004f04:	00000613          	li	a2,0
    80004f08:	00a00593          	li	a1,10
    80004f0c:	00048513          	mv	a0,s1
    80004f10:	00001097          	auipc	ra,0x1
    80004f14:	f0c080e7          	jalr	-244(ra) # 80005e1c <_Z8printIntiii>
    80004f18:	00004517          	auipc	a0,0x4
    80004f1c:	1e850513          	addi	a0,a0,488 # 80009100 <CONSOLE_STATUS+0xf0>
    80004f20:	00001097          	auipc	ra,0x1
    80004f24:	d64080e7          	jalr	-668(ra) # 80005c84 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004f28:	0014849b          	addiw	s1,s1,1
    80004f2c:	0ff4f493          	andi	s1,s1,255
    80004f30:	00200793          	li	a5,2
    80004f34:	fc97f0e3          	bgeu	a5,s1,80004ef4 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004f38:	00004517          	auipc	a0,0x4
    80004f3c:	50050513          	addi	a0,a0,1280 # 80009438 <CONSOLE_STATUS+0x428>
    80004f40:	00001097          	auipc	ra,0x1
    80004f44:	d44080e7          	jalr	-700(ra) # 80005c84 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004f48:	00700313          	li	t1,7
    thread_dispatch();
    80004f4c:	ffffc097          	auipc	ra,0xffffc
    80004f50:	3e8080e7          	jalr	1000(ra) # 80001334 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004f54:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004f58:	00004517          	auipc	a0,0x4
    80004f5c:	4f050513          	addi	a0,a0,1264 # 80009448 <CONSOLE_STATUS+0x438>
    80004f60:	00001097          	auipc	ra,0x1
    80004f64:	d24080e7          	jalr	-732(ra) # 80005c84 <_Z11printStringPKc>
    80004f68:	00000613          	li	a2,0
    80004f6c:	00a00593          	li	a1,10
    80004f70:	0009051b          	sext.w	a0,s2
    80004f74:	00001097          	auipc	ra,0x1
    80004f78:	ea8080e7          	jalr	-344(ra) # 80005e1c <_Z8printIntiii>
    80004f7c:	00004517          	auipc	a0,0x4
    80004f80:	18450513          	addi	a0,a0,388 # 80009100 <CONSOLE_STATUS+0xf0>
    80004f84:	00001097          	auipc	ra,0x1
    80004f88:	d00080e7          	jalr	-768(ra) # 80005c84 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004f8c:	00c00513          	li	a0,12
    80004f90:	00000097          	auipc	ra,0x0
    80004f94:	d30080e7          	jalr	-720(ra) # 80004cc0 <_ZL9fibonaccim>
    80004f98:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004f9c:	00004517          	auipc	a0,0x4
    80004fa0:	4b450513          	addi	a0,a0,1204 # 80009450 <CONSOLE_STATUS+0x440>
    80004fa4:	00001097          	auipc	ra,0x1
    80004fa8:	ce0080e7          	jalr	-800(ra) # 80005c84 <_Z11printStringPKc>
    80004fac:	00000613          	li	a2,0
    80004fb0:	00a00593          	li	a1,10
    80004fb4:	0009051b          	sext.w	a0,s2
    80004fb8:	00001097          	auipc	ra,0x1
    80004fbc:	e64080e7          	jalr	-412(ra) # 80005e1c <_Z8printIntiii>
    80004fc0:	00004517          	auipc	a0,0x4
    80004fc4:	14050513          	addi	a0,a0,320 # 80009100 <CONSOLE_STATUS+0xf0>
    80004fc8:	00001097          	auipc	ra,0x1
    80004fcc:	cbc080e7          	jalr	-836(ra) # 80005c84 <_Z11printStringPKc>
    80004fd0:	0400006f          	j	80005010 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004fd4:	00004517          	auipc	a0,0x4
    80004fd8:	45c50513          	addi	a0,a0,1116 # 80009430 <CONSOLE_STATUS+0x420>
    80004fdc:	00001097          	auipc	ra,0x1
    80004fe0:	ca8080e7          	jalr	-856(ra) # 80005c84 <_Z11printStringPKc>
    80004fe4:	00000613          	li	a2,0
    80004fe8:	00a00593          	li	a1,10
    80004fec:	00048513          	mv	a0,s1
    80004ff0:	00001097          	auipc	ra,0x1
    80004ff4:	e2c080e7          	jalr	-468(ra) # 80005e1c <_Z8printIntiii>
    80004ff8:	00004517          	auipc	a0,0x4
    80004ffc:	10850513          	addi	a0,a0,264 # 80009100 <CONSOLE_STATUS+0xf0>
    80005000:	00001097          	auipc	ra,0x1
    80005004:	c84080e7          	jalr	-892(ra) # 80005c84 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005008:	0014849b          	addiw	s1,s1,1
    8000500c:	0ff4f493          	andi	s1,s1,255
    80005010:	00500793          	li	a5,5
    80005014:	fc97f0e3          	bgeu	a5,s1,80004fd4 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    thread_dispatch();
    80005018:	ffffc097          	auipc	ra,0xffffc
    8000501c:	31c080e7          	jalr	796(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    80005020:	00004517          	auipc	a0,0x4
    80005024:	44050513          	addi	a0,a0,1088 # 80009460 <CONSOLE_STATUS+0x450>
    80005028:	00001097          	auipc	ra,0x1
    8000502c:	c5c080e7          	jalr	-932(ra) # 80005c84 <_Z11printStringPKc>
    finishedC = true;
    80005030:	00100793          	li	a5,1
    80005034:	00007717          	auipc	a4,0x7
    80005038:	caf70323          	sb	a5,-858(a4) # 8000bcda <_ZL9finishedC>
}
    8000503c:	01813083          	ld	ra,24(sp)
    80005040:	01013403          	ld	s0,16(sp)
    80005044:	00813483          	ld	s1,8(sp)
    80005048:	00013903          	ld	s2,0(sp)
    8000504c:	02010113          	addi	sp,sp,32
    80005050:	00008067          	ret

0000000080005054 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80005054:	fe010113          	addi	sp,sp,-32
    80005058:	00113c23          	sd	ra,24(sp)
    8000505c:	00813823          	sd	s0,16(sp)
    80005060:	00913423          	sd	s1,8(sp)
    80005064:	01213023          	sd	s2,0(sp)
    80005068:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000506c:	00a00493          	li	s1,10
    80005070:	0400006f          	j	800050b0 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005074:	00004517          	auipc	a0,0x4
    80005078:	3fc50513          	addi	a0,a0,1020 # 80009470 <CONSOLE_STATUS+0x460>
    8000507c:	00001097          	auipc	ra,0x1
    80005080:	c08080e7          	jalr	-1016(ra) # 80005c84 <_Z11printStringPKc>
    80005084:	00000613          	li	a2,0
    80005088:	00a00593          	li	a1,10
    8000508c:	00048513          	mv	a0,s1
    80005090:	00001097          	auipc	ra,0x1
    80005094:	d8c080e7          	jalr	-628(ra) # 80005e1c <_Z8printIntiii>
    80005098:	00004517          	auipc	a0,0x4
    8000509c:	06850513          	addi	a0,a0,104 # 80009100 <CONSOLE_STATUS+0xf0>
    800050a0:	00001097          	auipc	ra,0x1
    800050a4:	be4080e7          	jalr	-1052(ra) # 80005c84 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800050a8:	0014849b          	addiw	s1,s1,1
    800050ac:	0ff4f493          	andi	s1,s1,255
    800050b0:	00c00793          	li	a5,12
    800050b4:	fc97f0e3          	bgeu	a5,s1,80005074 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800050b8:	00004517          	auipc	a0,0x4
    800050bc:	3c050513          	addi	a0,a0,960 # 80009478 <CONSOLE_STATUS+0x468>
    800050c0:	00001097          	auipc	ra,0x1
    800050c4:	bc4080e7          	jalr	-1084(ra) # 80005c84 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800050c8:	00500313          	li	t1,5
    thread_dispatch();
    800050cc:	ffffc097          	auipc	ra,0xffffc
    800050d0:	268080e7          	jalr	616(ra) # 80001334 <thread_dispatch>

    uint64 result = fibonacci(16);
    800050d4:	01000513          	li	a0,16
    800050d8:	00000097          	auipc	ra,0x0
    800050dc:	be8080e7          	jalr	-1048(ra) # 80004cc0 <_ZL9fibonaccim>
    800050e0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800050e4:	00004517          	auipc	a0,0x4
    800050e8:	3a450513          	addi	a0,a0,932 # 80009488 <CONSOLE_STATUS+0x478>
    800050ec:	00001097          	auipc	ra,0x1
    800050f0:	b98080e7          	jalr	-1128(ra) # 80005c84 <_Z11printStringPKc>
    800050f4:	00000613          	li	a2,0
    800050f8:	00a00593          	li	a1,10
    800050fc:	0009051b          	sext.w	a0,s2
    80005100:	00001097          	auipc	ra,0x1
    80005104:	d1c080e7          	jalr	-740(ra) # 80005e1c <_Z8printIntiii>
    80005108:	00004517          	auipc	a0,0x4
    8000510c:	ff850513          	addi	a0,a0,-8 # 80009100 <CONSOLE_STATUS+0xf0>
    80005110:	00001097          	auipc	ra,0x1
    80005114:	b74080e7          	jalr	-1164(ra) # 80005c84 <_Z11printStringPKc>
    80005118:	0400006f          	j	80005158 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000511c:	00004517          	auipc	a0,0x4
    80005120:	35450513          	addi	a0,a0,852 # 80009470 <CONSOLE_STATUS+0x460>
    80005124:	00001097          	auipc	ra,0x1
    80005128:	b60080e7          	jalr	-1184(ra) # 80005c84 <_Z11printStringPKc>
    8000512c:	00000613          	li	a2,0
    80005130:	00a00593          	li	a1,10
    80005134:	00048513          	mv	a0,s1
    80005138:	00001097          	auipc	ra,0x1
    8000513c:	ce4080e7          	jalr	-796(ra) # 80005e1c <_Z8printIntiii>
    80005140:	00004517          	auipc	a0,0x4
    80005144:	fc050513          	addi	a0,a0,-64 # 80009100 <CONSOLE_STATUS+0xf0>
    80005148:	00001097          	auipc	ra,0x1
    8000514c:	b3c080e7          	jalr	-1220(ra) # 80005c84 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005150:	0014849b          	addiw	s1,s1,1
    80005154:	0ff4f493          	andi	s1,s1,255
    80005158:	00f00793          	li	a5,15
    8000515c:	fc97f0e3          	bgeu	a5,s1,8000511c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    thread_dispatch();
    80005160:	ffffc097          	auipc	ra,0xffffc
    80005164:	1d4080e7          	jalr	468(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    80005168:	00004517          	auipc	a0,0x4
    8000516c:	33050513          	addi	a0,a0,816 # 80009498 <CONSOLE_STATUS+0x488>
    80005170:	00001097          	auipc	ra,0x1
    80005174:	b14080e7          	jalr	-1260(ra) # 80005c84 <_Z11printStringPKc>
    finishedD = true;
    80005178:	00100793          	li	a5,1
    8000517c:	00007717          	auipc	a4,0x7
    80005180:	b4f70fa3          	sb	a5,-1185(a4) # 8000bcdb <_ZL9finishedD>
}
    80005184:	01813083          	ld	ra,24(sp)
    80005188:	01013403          	ld	s0,16(sp)
    8000518c:	00813483          	ld	s1,8(sp)
    80005190:	00013903          	ld	s2,0(sp)
    80005194:	02010113          	addi	sp,sp,32
    80005198:	00008067          	ret

000000008000519c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    8000519c:	fc010113          	addi	sp,sp,-64
    800051a0:	02113c23          	sd	ra,56(sp)
    800051a4:	02813823          	sd	s0,48(sp)
    800051a8:	02913423          	sd	s1,40(sp)
    800051ac:	03213023          	sd	s2,32(sp)
    800051b0:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    //Riscv::printString("Got here\n");
    threads[0] = new WorkerA();
    800051b4:	01000513          	li	a0,16
    800051b8:	ffffe097          	auipc	ra,0xffffe
    800051bc:	53c080e7          	jalr	1340(ra) # 800036f4 <_Znwm>
    800051c0:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    800051c4:	ffffe097          	auipc	ra,0xffffe
    800051c8:	700080e7          	jalr	1792(ra) # 800038c4 <_ZN6ThreadC1Ev>
    800051cc:	00007797          	auipc	a5,0x7
    800051d0:	8e478793          	addi	a5,a5,-1820 # 8000bab0 <_ZTV7WorkerA+0x10>
    800051d4:	00f4b023          	sd	a5,0(s1)
    800051d8:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800051dc:	00004517          	auipc	a0,0x4
    800051e0:	2cc50513          	addi	a0,a0,716 # 800094a8 <CONSOLE_STATUS+0x498>
    800051e4:	00001097          	auipc	ra,0x1
    800051e8:	aa0080e7          	jalr	-1376(ra) # 80005c84 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800051ec:	01000513          	li	a0,16
    800051f0:	ffffe097          	auipc	ra,0xffffe
    800051f4:	504080e7          	jalr	1284(ra) # 800036f4 <_Znwm>
    800051f8:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    800051fc:	ffffe097          	auipc	ra,0xffffe
    80005200:	6c8080e7          	jalr	1736(ra) # 800038c4 <_ZN6ThreadC1Ev>
    80005204:	00007797          	auipc	a5,0x7
    80005208:	8d478793          	addi	a5,a5,-1836 # 8000bad8 <_ZTV7WorkerB+0x10>
    8000520c:	00f4b023          	sd	a5,0(s1)
    80005210:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80005214:	00004517          	auipc	a0,0x4
    80005218:	2ac50513          	addi	a0,a0,684 # 800094c0 <CONSOLE_STATUS+0x4b0>
    8000521c:	00001097          	auipc	ra,0x1
    80005220:	a68080e7          	jalr	-1432(ra) # 80005c84 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80005224:	01000513          	li	a0,16
    80005228:	ffffe097          	auipc	ra,0xffffe
    8000522c:	4cc080e7          	jalr	1228(ra) # 800036f4 <_Znwm>
    80005230:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    80005234:	ffffe097          	auipc	ra,0xffffe
    80005238:	690080e7          	jalr	1680(ra) # 800038c4 <_ZN6ThreadC1Ev>
    8000523c:	00007797          	auipc	a5,0x7
    80005240:	8c478793          	addi	a5,a5,-1852 # 8000bb00 <_ZTV7WorkerC+0x10>
    80005244:	00f4b023          	sd	a5,0(s1)
    80005248:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    8000524c:	00004517          	auipc	a0,0x4
    80005250:	28c50513          	addi	a0,a0,652 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80005254:	00001097          	auipc	ra,0x1
    80005258:	a30080e7          	jalr	-1488(ra) # 80005c84 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    8000525c:	01000513          	li	a0,16
    80005260:	ffffe097          	auipc	ra,0xffffe
    80005264:	494080e7          	jalr	1172(ra) # 800036f4 <_Znwm>
    80005268:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    8000526c:	ffffe097          	auipc	ra,0xffffe
    80005270:	658080e7          	jalr	1624(ra) # 800038c4 <_ZN6ThreadC1Ev>
    80005274:	00007797          	auipc	a5,0x7
    80005278:	8b478793          	addi	a5,a5,-1868 # 8000bb28 <_ZTV7WorkerD+0x10>
    8000527c:	00f4b023          	sd	a5,0(s1)
    80005280:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80005284:	00004517          	auipc	a0,0x4
    80005288:	26c50513          	addi	a0,a0,620 # 800094f0 <CONSOLE_STATUS+0x4e0>
    8000528c:	00001097          	auipc	ra,0x1
    80005290:	9f8080e7          	jalr	-1544(ra) # 80005c84 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80005294:	00000493          	li	s1,0
    80005298:	00300793          	li	a5,3
    8000529c:	0297c663          	blt	a5,s1,800052c8 <_Z20Threads_CPP_API_testv+0x12c>
        //Riscv::printString("Starting...\n");
        threads[i]->start();
    800052a0:	00349793          	slli	a5,s1,0x3
    800052a4:	fe040713          	addi	a4,s0,-32
    800052a8:	00f707b3          	add	a5,a4,a5
    800052ac:	fe07b503          	ld	a0,-32(a5)
    800052b0:	ffffe097          	auipc	ra,0xffffe
    800052b4:	514080e7          	jalr	1300(ra) # 800037c4 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800052b8:	0014849b          	addiw	s1,s1,1
    800052bc:	fddff06f          	j	80005298 <_Z20Threads_CPP_API_testv+0xfc>
    }

    //Riscv::printString("Thread started\n");
    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800052c0:	ffffe097          	auipc	ra,0xffffe
    800052c4:	53c080e7          	jalr	1340(ra) # 800037fc <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800052c8:	00007797          	auipc	a5,0x7
    800052cc:	a107c783          	lbu	a5,-1520(a5) # 8000bcd8 <_ZL9finishedA>
    800052d0:	fe0788e3          	beqz	a5,800052c0 <_Z20Threads_CPP_API_testv+0x124>
    800052d4:	00007797          	auipc	a5,0x7
    800052d8:	a057c783          	lbu	a5,-1531(a5) # 8000bcd9 <_ZL9finishedB>
    800052dc:	fe0782e3          	beqz	a5,800052c0 <_Z20Threads_CPP_API_testv+0x124>
    800052e0:	00007797          	auipc	a5,0x7
    800052e4:	9fa7c783          	lbu	a5,-1542(a5) # 8000bcda <_ZL9finishedC>
    800052e8:	fc078ce3          	beqz	a5,800052c0 <_Z20Threads_CPP_API_testv+0x124>
    800052ec:	00007797          	auipc	a5,0x7
    800052f0:	9ef7c783          	lbu	a5,-1553(a5) # 8000bcdb <_ZL9finishedD>
    800052f4:	fc0786e3          	beqz	a5,800052c0 <_Z20Threads_CPP_API_testv+0x124>
        //Riscv::printString("main\n");
    }
    for (auto thread: threads) { delete thread; }
    800052f8:	fc040493          	addi	s1,s0,-64
    800052fc:	0080006f          	j	80005304 <_Z20Threads_CPP_API_testv+0x168>
    80005300:	00848493          	addi	s1,s1,8
    80005304:	fe040793          	addi	a5,s0,-32
    80005308:	08f48663          	beq	s1,a5,80005394 <_Z20Threads_CPP_API_testv+0x1f8>
    8000530c:	0004b503          	ld	a0,0(s1)
    80005310:	fe0508e3          	beqz	a0,80005300 <_Z20Threads_CPP_API_testv+0x164>
    80005314:	00053783          	ld	a5,0(a0)
    80005318:	0087b783          	ld	a5,8(a5)
    8000531c:	000780e7          	jalr	a5
    80005320:	fe1ff06f          	j	80005300 <_Z20Threads_CPP_API_testv+0x164>
    80005324:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80005328:	00048513          	mv	a0,s1
    8000532c:	ffffe097          	auipc	ra,0xffffe
    80005330:	3f0080e7          	jalr	1008(ra) # 8000371c <_ZdlPv>
    80005334:	00090513          	mv	a0,s2
    80005338:	00008097          	auipc	ra,0x8
    8000533c:	a80080e7          	jalr	-1408(ra) # 8000cdb8 <_Unwind_Resume>
    80005340:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80005344:	00048513          	mv	a0,s1
    80005348:	ffffe097          	auipc	ra,0xffffe
    8000534c:	3d4080e7          	jalr	980(ra) # 8000371c <_ZdlPv>
    80005350:	00090513          	mv	a0,s2
    80005354:	00008097          	auipc	ra,0x8
    80005358:	a64080e7          	jalr	-1436(ra) # 8000cdb8 <_Unwind_Resume>
    8000535c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80005360:	00048513          	mv	a0,s1
    80005364:	ffffe097          	auipc	ra,0xffffe
    80005368:	3b8080e7          	jalr	952(ra) # 8000371c <_ZdlPv>
    8000536c:	00090513          	mv	a0,s2
    80005370:	00008097          	auipc	ra,0x8
    80005374:	a48080e7          	jalr	-1464(ra) # 8000cdb8 <_Unwind_Resume>
    80005378:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    8000537c:	00048513          	mv	a0,s1
    80005380:	ffffe097          	auipc	ra,0xffffe
    80005384:	39c080e7          	jalr	924(ra) # 8000371c <_ZdlPv>
    80005388:	00090513          	mv	a0,s2
    8000538c:	00008097          	auipc	ra,0x8
    80005390:	a2c080e7          	jalr	-1492(ra) # 8000cdb8 <_Unwind_Resume>
    80005394:	03813083          	ld	ra,56(sp)
    80005398:	03013403          	ld	s0,48(sp)
    8000539c:	02813483          	ld	s1,40(sp)
    800053a0:	02013903          	ld	s2,32(sp)
    800053a4:	04010113          	addi	sp,sp,64
    800053a8:	00008067          	ret

00000000800053ac <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800053ac:	ff010113          	addi	sp,sp,-16
    800053b0:	00113423          	sd	ra,8(sp)
    800053b4:	00813023          	sd	s0,0(sp)
    800053b8:	01010413          	addi	s0,sp,16
    800053bc:	00006797          	auipc	a5,0x6
    800053c0:	6f478793          	addi	a5,a5,1780 # 8000bab0 <_ZTV7WorkerA+0x10>
    800053c4:	00f53023          	sd	a5,0(a0)
    800053c8:	ffffe097          	auipc	ra,0xffffe
    800053cc:	2bc080e7          	jalr	700(ra) # 80003684 <_ZN6ThreadD1Ev>
    800053d0:	00813083          	ld	ra,8(sp)
    800053d4:	00013403          	ld	s0,0(sp)
    800053d8:	01010113          	addi	sp,sp,16
    800053dc:	00008067          	ret

00000000800053e0 <_ZN7WorkerAD0Ev>:
    800053e0:	fe010113          	addi	sp,sp,-32
    800053e4:	00113c23          	sd	ra,24(sp)
    800053e8:	00813823          	sd	s0,16(sp)
    800053ec:	00913423          	sd	s1,8(sp)
    800053f0:	02010413          	addi	s0,sp,32
    800053f4:	00050493          	mv	s1,a0
    800053f8:	00006797          	auipc	a5,0x6
    800053fc:	6b878793          	addi	a5,a5,1720 # 8000bab0 <_ZTV7WorkerA+0x10>
    80005400:	00f53023          	sd	a5,0(a0)
    80005404:	ffffe097          	auipc	ra,0xffffe
    80005408:	280080e7          	jalr	640(ra) # 80003684 <_ZN6ThreadD1Ev>
    8000540c:	00048513          	mv	a0,s1
    80005410:	ffffe097          	auipc	ra,0xffffe
    80005414:	30c080e7          	jalr	780(ra) # 8000371c <_ZdlPv>
    80005418:	01813083          	ld	ra,24(sp)
    8000541c:	01013403          	ld	s0,16(sp)
    80005420:	00813483          	ld	s1,8(sp)
    80005424:	02010113          	addi	sp,sp,32
    80005428:	00008067          	ret

000000008000542c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    8000542c:	ff010113          	addi	sp,sp,-16
    80005430:	00113423          	sd	ra,8(sp)
    80005434:	00813023          	sd	s0,0(sp)
    80005438:	01010413          	addi	s0,sp,16
    8000543c:	00006797          	auipc	a5,0x6
    80005440:	69c78793          	addi	a5,a5,1692 # 8000bad8 <_ZTV7WorkerB+0x10>
    80005444:	00f53023          	sd	a5,0(a0)
    80005448:	ffffe097          	auipc	ra,0xffffe
    8000544c:	23c080e7          	jalr	572(ra) # 80003684 <_ZN6ThreadD1Ev>
    80005450:	00813083          	ld	ra,8(sp)
    80005454:	00013403          	ld	s0,0(sp)
    80005458:	01010113          	addi	sp,sp,16
    8000545c:	00008067          	ret

0000000080005460 <_ZN7WorkerBD0Ev>:
    80005460:	fe010113          	addi	sp,sp,-32
    80005464:	00113c23          	sd	ra,24(sp)
    80005468:	00813823          	sd	s0,16(sp)
    8000546c:	00913423          	sd	s1,8(sp)
    80005470:	02010413          	addi	s0,sp,32
    80005474:	00050493          	mv	s1,a0
    80005478:	00006797          	auipc	a5,0x6
    8000547c:	66078793          	addi	a5,a5,1632 # 8000bad8 <_ZTV7WorkerB+0x10>
    80005480:	00f53023          	sd	a5,0(a0)
    80005484:	ffffe097          	auipc	ra,0xffffe
    80005488:	200080e7          	jalr	512(ra) # 80003684 <_ZN6ThreadD1Ev>
    8000548c:	00048513          	mv	a0,s1
    80005490:	ffffe097          	auipc	ra,0xffffe
    80005494:	28c080e7          	jalr	652(ra) # 8000371c <_ZdlPv>
    80005498:	01813083          	ld	ra,24(sp)
    8000549c:	01013403          	ld	s0,16(sp)
    800054a0:	00813483          	ld	s1,8(sp)
    800054a4:	02010113          	addi	sp,sp,32
    800054a8:	00008067          	ret

00000000800054ac <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800054ac:	ff010113          	addi	sp,sp,-16
    800054b0:	00113423          	sd	ra,8(sp)
    800054b4:	00813023          	sd	s0,0(sp)
    800054b8:	01010413          	addi	s0,sp,16
    800054bc:	00006797          	auipc	a5,0x6
    800054c0:	64478793          	addi	a5,a5,1604 # 8000bb00 <_ZTV7WorkerC+0x10>
    800054c4:	00f53023          	sd	a5,0(a0)
    800054c8:	ffffe097          	auipc	ra,0xffffe
    800054cc:	1bc080e7          	jalr	444(ra) # 80003684 <_ZN6ThreadD1Ev>
    800054d0:	00813083          	ld	ra,8(sp)
    800054d4:	00013403          	ld	s0,0(sp)
    800054d8:	01010113          	addi	sp,sp,16
    800054dc:	00008067          	ret

00000000800054e0 <_ZN7WorkerCD0Ev>:
    800054e0:	fe010113          	addi	sp,sp,-32
    800054e4:	00113c23          	sd	ra,24(sp)
    800054e8:	00813823          	sd	s0,16(sp)
    800054ec:	00913423          	sd	s1,8(sp)
    800054f0:	02010413          	addi	s0,sp,32
    800054f4:	00050493          	mv	s1,a0
    800054f8:	00006797          	auipc	a5,0x6
    800054fc:	60878793          	addi	a5,a5,1544 # 8000bb00 <_ZTV7WorkerC+0x10>
    80005500:	00f53023          	sd	a5,0(a0)
    80005504:	ffffe097          	auipc	ra,0xffffe
    80005508:	180080e7          	jalr	384(ra) # 80003684 <_ZN6ThreadD1Ev>
    8000550c:	00048513          	mv	a0,s1
    80005510:	ffffe097          	auipc	ra,0xffffe
    80005514:	20c080e7          	jalr	524(ra) # 8000371c <_ZdlPv>
    80005518:	01813083          	ld	ra,24(sp)
    8000551c:	01013403          	ld	s0,16(sp)
    80005520:	00813483          	ld	s1,8(sp)
    80005524:	02010113          	addi	sp,sp,32
    80005528:	00008067          	ret

000000008000552c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    8000552c:	ff010113          	addi	sp,sp,-16
    80005530:	00113423          	sd	ra,8(sp)
    80005534:	00813023          	sd	s0,0(sp)
    80005538:	01010413          	addi	s0,sp,16
    8000553c:	00006797          	auipc	a5,0x6
    80005540:	5ec78793          	addi	a5,a5,1516 # 8000bb28 <_ZTV7WorkerD+0x10>
    80005544:	00f53023          	sd	a5,0(a0)
    80005548:	ffffe097          	auipc	ra,0xffffe
    8000554c:	13c080e7          	jalr	316(ra) # 80003684 <_ZN6ThreadD1Ev>
    80005550:	00813083          	ld	ra,8(sp)
    80005554:	00013403          	ld	s0,0(sp)
    80005558:	01010113          	addi	sp,sp,16
    8000555c:	00008067          	ret

0000000080005560 <_ZN7WorkerDD0Ev>:
    80005560:	fe010113          	addi	sp,sp,-32
    80005564:	00113c23          	sd	ra,24(sp)
    80005568:	00813823          	sd	s0,16(sp)
    8000556c:	00913423          	sd	s1,8(sp)
    80005570:	02010413          	addi	s0,sp,32
    80005574:	00050493          	mv	s1,a0
    80005578:	00006797          	auipc	a5,0x6
    8000557c:	5b078793          	addi	a5,a5,1456 # 8000bb28 <_ZTV7WorkerD+0x10>
    80005580:	00f53023          	sd	a5,0(a0)
    80005584:	ffffe097          	auipc	ra,0xffffe
    80005588:	100080e7          	jalr	256(ra) # 80003684 <_ZN6ThreadD1Ev>
    8000558c:	00048513          	mv	a0,s1
    80005590:	ffffe097          	auipc	ra,0xffffe
    80005594:	18c080e7          	jalr	396(ra) # 8000371c <_ZdlPv>
    80005598:	01813083          	ld	ra,24(sp)
    8000559c:	01013403          	ld	s0,16(sp)
    800055a0:	00813483          	ld	s1,8(sp)
    800055a4:	02010113          	addi	sp,sp,32
    800055a8:	00008067          	ret

00000000800055ac <_ZN7WorkerA3runEv>:
    void run() override {
    800055ac:	ff010113          	addi	sp,sp,-16
    800055b0:	00113423          	sd	ra,8(sp)
    800055b4:	00813023          	sd	s0,0(sp)
    800055b8:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800055bc:	00000593          	li	a1,0
    800055c0:	fffff097          	auipc	ra,0xfffff
    800055c4:	774080e7          	jalr	1908(ra) # 80004d34 <_ZN7WorkerA11workerBodyAEPv>
    }
    800055c8:	00813083          	ld	ra,8(sp)
    800055cc:	00013403          	ld	s0,0(sp)
    800055d0:	01010113          	addi	sp,sp,16
    800055d4:	00008067          	ret

00000000800055d8 <_ZN7WorkerB3runEv>:
    void run() override {
    800055d8:	ff010113          	addi	sp,sp,-16
    800055dc:	00113423          	sd	ra,8(sp)
    800055e0:	00813023          	sd	s0,0(sp)
    800055e4:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800055e8:	00000593          	li	a1,0
    800055ec:	00000097          	auipc	ra,0x0
    800055f0:	814080e7          	jalr	-2028(ra) # 80004e00 <_ZN7WorkerB11workerBodyBEPv>
    }
    800055f4:	00813083          	ld	ra,8(sp)
    800055f8:	00013403          	ld	s0,0(sp)
    800055fc:	01010113          	addi	sp,sp,16
    80005600:	00008067          	ret

0000000080005604 <_ZN7WorkerC3runEv>:
    void run() override {
    80005604:	ff010113          	addi	sp,sp,-16
    80005608:	00113423          	sd	ra,8(sp)
    8000560c:	00813023          	sd	s0,0(sp)
    80005610:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80005614:	00000593          	li	a1,0
    80005618:	00000097          	auipc	ra,0x0
    8000561c:	8bc080e7          	jalr	-1860(ra) # 80004ed4 <_ZN7WorkerC11workerBodyCEPv>
    }
    80005620:	00813083          	ld	ra,8(sp)
    80005624:	00013403          	ld	s0,0(sp)
    80005628:	01010113          	addi	sp,sp,16
    8000562c:	00008067          	ret

0000000080005630 <_ZN7WorkerD3runEv>:

    void run() override {
    80005630:	ff010113          	addi	sp,sp,-16
    80005634:	00113423          	sd	ra,8(sp)
    80005638:	00813023          	sd	s0,0(sp)
    8000563c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80005640:	00000593          	li	a1,0
    80005644:	00000097          	auipc	ra,0x0
    80005648:	a10080e7          	jalr	-1520(ra) # 80005054 <_ZN7WorkerD11workerBodyDEPv>
    }
    8000564c:	00813083          	ld	ra,8(sp)
    80005650:	00013403          	ld	s0,0(sp)
    80005654:	01010113          	addi	sp,sp,16
    80005658:	00008067          	ret

000000008000565c <_Z11workerBodyAPv>:
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg)
{
    8000565c:	fe010113          	addi	sp,sp,-32
    80005660:	00113c23          	sd	ra,24(sp)
    80005664:	00813823          	sd	s0,16(sp)
    80005668:	00913423          	sd	s1,8(sp)
    8000566c:	01213023          	sd	s2,0(sp)
    80005670:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80005674:	00000913          	li	s2,0
    80005678:	0380006f          	j	800056b0 <_Z11workerBodyAPv+0x54>
    {
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000567c:	ffffc097          	auipc	ra,0xffffc
    80005680:	cb8080e7          	jalr	-840(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    80005684:	00148493          	addi	s1,s1,1
    80005688:	000027b7          	lui	a5,0x2
    8000568c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005690:	0097ee63          	bltu	a5,s1,800056ac <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005694:	00000713          	li	a4,0
    80005698:	000077b7          	lui	a5,0x7
    8000569c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800056a0:	fce7eee3          	bltu	a5,a4,8000567c <_Z11workerBodyAPv+0x20>
    800056a4:	00170713          	addi	a4,a4,1
    800056a8:	ff1ff06f          	j	80005698 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++)
    800056ac:	00190913          	addi	s2,s2,1
    800056b0:	00900793          	li	a5,9
    800056b4:	0527e063          	bltu	a5,s2,800056f4 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800056b8:	00004517          	auipc	a0,0x4
    800056bc:	d4850513          	addi	a0,a0,-696 # 80009400 <CONSOLE_STATUS+0x3f0>
    800056c0:	00000097          	auipc	ra,0x0
    800056c4:	5c4080e7          	jalr	1476(ra) # 80005c84 <_Z11printStringPKc>
    800056c8:	00000613          	li	a2,0
    800056cc:	00a00593          	li	a1,10
    800056d0:	0009051b          	sext.w	a0,s2
    800056d4:	00000097          	auipc	ra,0x0
    800056d8:	748080e7          	jalr	1864(ra) # 80005e1c <_Z8printIntiii>
    800056dc:	00004517          	auipc	a0,0x4
    800056e0:	a2450513          	addi	a0,a0,-1500 # 80009100 <CONSOLE_STATUS+0xf0>
    800056e4:	00000097          	auipc	ra,0x0
    800056e8:	5a0080e7          	jalr	1440(ra) # 80005c84 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800056ec:	00000493          	li	s1,0
    800056f0:	f99ff06f          	j	80005688 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    800056f4:	00004517          	auipc	a0,0x4
    800056f8:	d1450513          	addi	a0,a0,-748 # 80009408 <CONSOLE_STATUS+0x3f8>
    800056fc:	00000097          	auipc	ra,0x0
    80005700:	588080e7          	jalr	1416(ra) # 80005c84 <_Z11printStringPKc>
    finishedA = true;
    80005704:	00100793          	li	a5,1
    80005708:	00006717          	auipc	a4,0x6
    8000570c:	5cf70a23          	sb	a5,1492(a4) # 8000bcdc <_ZL9finishedA>
}
    80005710:	01813083          	ld	ra,24(sp)
    80005714:	01013403          	ld	s0,16(sp)
    80005718:	00813483          	ld	s1,8(sp)
    8000571c:	00013903          	ld	s2,0(sp)
    80005720:	02010113          	addi	sp,sp,32
    80005724:	00008067          	ret

0000000080005728 <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    80005728:	fe010113          	addi	sp,sp,-32
    8000572c:	00113c23          	sd	ra,24(sp)
    80005730:	00813823          	sd	s0,16(sp)
    80005734:	00913423          	sd	s1,8(sp)
    80005738:	01213023          	sd	s2,0(sp)
    8000573c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005740:	00000913          	li	s2,0
    80005744:	0380006f          	j	8000577c <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005748:	ffffc097          	auipc	ra,0xffffc
    8000574c:	bec080e7          	jalr	-1044(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    80005750:	00148493          	addi	s1,s1,1
    80005754:	000027b7          	lui	a5,0x2
    80005758:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000575c:	0097ee63          	bltu	a5,s1,80005778 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005760:	00000713          	li	a4,0
    80005764:	000077b7          	lui	a5,0x7
    80005768:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000576c:	fce7eee3          	bltu	a5,a4,80005748 <_Z11workerBodyBPv+0x20>
    80005770:	00170713          	addi	a4,a4,1
    80005774:	ff1ff06f          	j	80005764 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005778:	00190913          	addi	s2,s2,1
    8000577c:	00f00793          	li	a5,15
    80005780:	0527e063          	bltu	a5,s2,800057c0 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005784:	00004517          	auipc	a0,0x4
    80005788:	c9450513          	addi	a0,a0,-876 # 80009418 <CONSOLE_STATUS+0x408>
    8000578c:	00000097          	auipc	ra,0x0
    80005790:	4f8080e7          	jalr	1272(ra) # 80005c84 <_Z11printStringPKc>
    80005794:	00000613          	li	a2,0
    80005798:	00a00593          	li	a1,10
    8000579c:	0009051b          	sext.w	a0,s2
    800057a0:	00000097          	auipc	ra,0x0
    800057a4:	67c080e7          	jalr	1660(ra) # 80005e1c <_Z8printIntiii>
    800057a8:	00004517          	auipc	a0,0x4
    800057ac:	95850513          	addi	a0,a0,-1704 # 80009100 <CONSOLE_STATUS+0xf0>
    800057b0:	00000097          	auipc	ra,0x0
    800057b4:	4d4080e7          	jalr	1236(ra) # 80005c84 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800057b8:	00000493          	li	s1,0
    800057bc:	f99ff06f          	j	80005754 <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    800057c0:	ffffc097          	auipc	ra,0xffffc
    800057c4:	b74080e7          	jalr	-1164(ra) # 80001334 <thread_dispatch>
    printString("B finished!\n");
    800057c8:	00004517          	auipc	a0,0x4
    800057cc:	c5850513          	addi	a0,a0,-936 # 80009420 <CONSOLE_STATUS+0x410>
    800057d0:	00000097          	auipc	ra,0x0
    800057d4:	4b4080e7          	jalr	1204(ra) # 80005c84 <_Z11printStringPKc>
    finishedB = true;
    800057d8:	00100793          	li	a5,1
    800057dc:	00006717          	auipc	a4,0x6
    800057e0:	50f700a3          	sb	a5,1281(a4) # 8000bcdd <_ZL9finishedB>
}
    800057e4:	01813083          	ld	ra,24(sp)
    800057e8:	01013403          	ld	s0,16(sp)
    800057ec:	00813483          	ld	s1,8(sp)
    800057f0:	00013903          	ld	s2,0(sp)
    800057f4:	02010113          	addi	sp,sp,32
    800057f8:	00008067          	ret

00000000800057fc <_ZL9fibonaccim>:
{
    800057fc:	fe010113          	addi	sp,sp,-32
    80005800:	00113c23          	sd	ra,24(sp)
    80005804:	00813823          	sd	s0,16(sp)
    80005808:	00913423          	sd	s1,8(sp)
    8000580c:	01213023          	sd	s2,0(sp)
    80005810:	02010413          	addi	s0,sp,32
    80005814:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) {return n; }
    80005818:	00100793          	li	a5,1
    8000581c:	02a7f863          	bgeu	a5,a0,8000584c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005820:	00a00793          	li	a5,10
    80005824:	02f577b3          	remu	a5,a0,a5
    80005828:	02078e63          	beqz	a5,80005864 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000582c:	fff48513          	addi	a0,s1,-1
    80005830:	00000097          	auipc	ra,0x0
    80005834:	fcc080e7          	jalr	-52(ra) # 800057fc <_ZL9fibonaccim>
    80005838:	00050913          	mv	s2,a0
    8000583c:	ffe48513          	addi	a0,s1,-2
    80005840:	00000097          	auipc	ra,0x0
    80005844:	fbc080e7          	jalr	-68(ra) # 800057fc <_ZL9fibonaccim>
    80005848:	00a90533          	add	a0,s2,a0
}
    8000584c:	01813083          	ld	ra,24(sp)
    80005850:	01013403          	ld	s0,16(sp)
    80005854:	00813483          	ld	s1,8(sp)
    80005858:	00013903          	ld	s2,0(sp)
    8000585c:	02010113          	addi	sp,sp,32
    80005860:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005864:	ffffc097          	auipc	ra,0xffffc
    80005868:	ad0080e7          	jalr	-1328(ra) # 80001334 <thread_dispatch>
    8000586c:	fc1ff06f          	j	8000582c <_ZL9fibonaccim+0x30>

0000000080005870 <_Z11workerBodyCPv>:

void workerBodyC(void* arg)
{
    80005870:	fe010113          	addi	sp,sp,-32
    80005874:	00113c23          	sd	ra,24(sp)
    80005878:	00813823          	sd	s0,16(sp)
    8000587c:	00913423          	sd	s1,8(sp)
    80005880:	01213023          	sd	s2,0(sp)
    80005884:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005888:	00000493          	li	s1,0
    8000588c:	0400006f          	j	800058cc <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i="); printInt(i); printString("\n");
    80005890:	00004517          	auipc	a0,0x4
    80005894:	ba050513          	addi	a0,a0,-1120 # 80009430 <CONSOLE_STATUS+0x420>
    80005898:	00000097          	auipc	ra,0x0
    8000589c:	3ec080e7          	jalr	1004(ra) # 80005c84 <_Z11printStringPKc>
    800058a0:	00000613          	li	a2,0
    800058a4:	00a00593          	li	a1,10
    800058a8:	00048513          	mv	a0,s1
    800058ac:	00000097          	auipc	ra,0x0
    800058b0:	570080e7          	jalr	1392(ra) # 80005e1c <_Z8printIntiii>
    800058b4:	00004517          	auipc	a0,0x4
    800058b8:	84c50513          	addi	a0,a0,-1972 # 80009100 <CONSOLE_STATUS+0xf0>
    800058bc:	00000097          	auipc	ra,0x0
    800058c0:	3c8080e7          	jalr	968(ra) # 80005c84 <_Z11printStringPKc>
    for (; i < 3; i++)
    800058c4:	0014849b          	addiw	s1,s1,1
    800058c8:	0ff4f493          	andi	s1,s1,255
    800058cc:	00200793          	li	a5,2
    800058d0:	fc97f0e3          	bgeu	a5,s1,80005890 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    800058d4:	00004517          	auipc	a0,0x4
    800058d8:	b6450513          	addi	a0,a0,-1180 # 80009438 <CONSOLE_STATUS+0x428>
    800058dc:	00000097          	auipc	ra,0x0
    800058e0:	3a8080e7          	jalr	936(ra) # 80005c84 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800058e4:	00700313          	li	t1,7
    thread_dispatch();
    800058e8:	ffffc097          	auipc	ra,0xffffc
    800058ec:	a4c080e7          	jalr	-1460(ra) # 80001334 <thread_dispatch>
    printString("C: returned\n");
    800058f0:	00004517          	auipc	a0,0x4
    800058f4:	c1850513          	addi	a0,a0,-1000 # 80009508 <CONSOLE_STATUS+0x4f8>
    800058f8:	00000097          	auipc	ra,0x0
    800058fc:	38c080e7          	jalr	908(ra) # 80005c84 <_Z11printStringPKc>
    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005900:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005904:	00004517          	auipc	a0,0x4
    80005908:	b4450513          	addi	a0,a0,-1212 # 80009448 <CONSOLE_STATUS+0x438>
    8000590c:	00000097          	auipc	ra,0x0
    80005910:	378080e7          	jalr	888(ra) # 80005c84 <_Z11printStringPKc>
    80005914:	00000613          	li	a2,0
    80005918:	00a00593          	li	a1,10
    8000591c:	0009051b          	sext.w	a0,s2
    80005920:	00000097          	auipc	ra,0x0
    80005924:	4fc080e7          	jalr	1276(ra) # 80005e1c <_Z8printIntiii>
    80005928:	00003517          	auipc	a0,0x3
    8000592c:	7d850513          	addi	a0,a0,2008 # 80009100 <CONSOLE_STATUS+0xf0>
    80005930:	00000097          	auipc	ra,0x0
    80005934:	354080e7          	jalr	852(ra) # 80005c84 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005938:	00c00513          	li	a0,12
    8000593c:	00000097          	auipc	ra,0x0
    80005940:	ec0080e7          	jalr	-320(ra) # 800057fc <_ZL9fibonaccim>
    80005944:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005948:	00004517          	auipc	a0,0x4
    8000594c:	b0850513          	addi	a0,a0,-1272 # 80009450 <CONSOLE_STATUS+0x440>
    80005950:	00000097          	auipc	ra,0x0
    80005954:	334080e7          	jalr	820(ra) # 80005c84 <_Z11printStringPKc>
    80005958:	00000613          	li	a2,0
    8000595c:	00a00593          	li	a1,10
    80005960:	0009051b          	sext.w	a0,s2
    80005964:	00000097          	auipc	ra,0x0
    80005968:	4b8080e7          	jalr	1208(ra) # 80005e1c <_Z8printIntiii>
    8000596c:	00003517          	auipc	a0,0x3
    80005970:	79450513          	addi	a0,a0,1940 # 80009100 <CONSOLE_STATUS+0xf0>
    80005974:	00000097          	auipc	ra,0x0
    80005978:	310080e7          	jalr	784(ra) # 80005c84 <_Z11printStringPKc>
    8000597c:	0400006f          	j	800059bc <_Z11workerBodyCPv+0x14c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005980:	00004517          	auipc	a0,0x4
    80005984:	ab050513          	addi	a0,a0,-1360 # 80009430 <CONSOLE_STATUS+0x420>
    80005988:	00000097          	auipc	ra,0x0
    8000598c:	2fc080e7          	jalr	764(ra) # 80005c84 <_Z11printStringPKc>
    80005990:	00000613          	li	a2,0
    80005994:	00a00593          	li	a1,10
    80005998:	00048513          	mv	a0,s1
    8000599c:	00000097          	auipc	ra,0x0
    800059a0:	480080e7          	jalr	1152(ra) # 80005e1c <_Z8printIntiii>
    800059a4:	00003517          	auipc	a0,0x3
    800059a8:	75c50513          	addi	a0,a0,1884 # 80009100 <CONSOLE_STATUS+0xf0>
    800059ac:	00000097          	auipc	ra,0x0
    800059b0:	2d8080e7          	jalr	728(ra) # 80005c84 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800059b4:	0014849b          	addiw	s1,s1,1
    800059b8:	0ff4f493          	andi	s1,s1,255
    800059bc:	00500793          	li	a5,5
    800059c0:	fc97f0e3          	bgeu	a5,s1,80005980 <_Z11workerBodyCPv+0x110>
    }

    thread_dispatch();
    800059c4:	ffffc097          	auipc	ra,0xffffc
    800059c8:	970080e7          	jalr	-1680(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    800059cc:	00004517          	auipc	a0,0x4
    800059d0:	a9450513          	addi	a0,a0,-1388 # 80009460 <CONSOLE_STATUS+0x450>
    800059d4:	00000097          	auipc	ra,0x0
    800059d8:	2b0080e7          	jalr	688(ra) # 80005c84 <_Z11printStringPKc>
    finishedC = true;
    800059dc:	00100793          	li	a5,1
    800059e0:	00006717          	auipc	a4,0x6
    800059e4:	2ef70f23          	sb	a5,766(a4) # 8000bcde <_ZL9finishedC>
}
    800059e8:	01813083          	ld	ra,24(sp)
    800059ec:	01013403          	ld	s0,16(sp)
    800059f0:	00813483          	ld	s1,8(sp)
    800059f4:	00013903          	ld	s2,0(sp)
    800059f8:	02010113          	addi	sp,sp,32
    800059fc:	00008067          	ret

0000000080005a00 <_Z11workerBodyDPv>:

void workerBodyD(void* arg)
{
    80005a00:	fe010113          	addi	sp,sp,-32
    80005a04:	00113c23          	sd	ra,24(sp)
    80005a08:	00813823          	sd	s0,16(sp)
    80005a0c:	00913423          	sd	s1,8(sp)
    80005a10:	01213023          	sd	s2,0(sp)
    80005a14:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005a18:	00a00493          	li	s1,10
    80005a1c:	0400006f          	j	80005a5c <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005a20:	00004517          	auipc	a0,0x4
    80005a24:	a5050513          	addi	a0,a0,-1456 # 80009470 <CONSOLE_STATUS+0x460>
    80005a28:	00000097          	auipc	ra,0x0
    80005a2c:	25c080e7          	jalr	604(ra) # 80005c84 <_Z11printStringPKc>
    80005a30:	00000613          	li	a2,0
    80005a34:	00a00593          	li	a1,10
    80005a38:	00048513          	mv	a0,s1
    80005a3c:	00000097          	auipc	ra,0x0
    80005a40:	3e0080e7          	jalr	992(ra) # 80005e1c <_Z8printIntiii>
    80005a44:	00003517          	auipc	a0,0x3
    80005a48:	6bc50513          	addi	a0,a0,1724 # 80009100 <CONSOLE_STATUS+0xf0>
    80005a4c:	00000097          	auipc	ra,0x0
    80005a50:	238080e7          	jalr	568(ra) # 80005c84 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005a54:	0014849b          	addiw	s1,s1,1
    80005a58:	0ff4f493          	andi	s1,s1,255
    80005a5c:	00c00793          	li	a5,12
    80005a60:	fc97f0e3          	bgeu	a5,s1,80005a20 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005a64:	00004517          	auipc	a0,0x4
    80005a68:	a1450513          	addi	a0,a0,-1516 # 80009478 <CONSOLE_STATUS+0x468>
    80005a6c:	00000097          	auipc	ra,0x0
    80005a70:	218080e7          	jalr	536(ra) # 80005c84 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005a74:	00500313          	li	t1,5
    thread_dispatch();
    80005a78:	ffffc097          	auipc	ra,0xffffc
    80005a7c:	8bc080e7          	jalr	-1860(ra) # 80001334 <thread_dispatch>
    printString("D: returned\n");
    80005a80:	00004517          	auipc	a0,0x4
    80005a84:	a9850513          	addi	a0,a0,-1384 # 80009518 <CONSOLE_STATUS+0x508>
    80005a88:	00000097          	auipc	ra,0x0
    80005a8c:	1fc080e7          	jalr	508(ra) # 80005c84 <_Z11printStringPKc>
    uint64 result = fibonacci(16);
    80005a90:	01000513          	li	a0,16
    80005a94:	00000097          	auipc	ra,0x0
    80005a98:	d68080e7          	jalr	-664(ra) # 800057fc <_ZL9fibonaccim>
    80005a9c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005aa0:	00004517          	auipc	a0,0x4
    80005aa4:	9e850513          	addi	a0,a0,-1560 # 80009488 <CONSOLE_STATUS+0x478>
    80005aa8:	00000097          	auipc	ra,0x0
    80005aac:	1dc080e7          	jalr	476(ra) # 80005c84 <_Z11printStringPKc>
    80005ab0:	00000613          	li	a2,0
    80005ab4:	00a00593          	li	a1,10
    80005ab8:	0009051b          	sext.w	a0,s2
    80005abc:	00000097          	auipc	ra,0x0
    80005ac0:	360080e7          	jalr	864(ra) # 80005e1c <_Z8printIntiii>
    80005ac4:	00003517          	auipc	a0,0x3
    80005ac8:	63c50513          	addi	a0,a0,1596 # 80009100 <CONSOLE_STATUS+0xf0>
    80005acc:	00000097          	auipc	ra,0x0
    80005ad0:	1b8080e7          	jalr	440(ra) # 80005c84 <_Z11printStringPKc>
    80005ad4:	0400006f          	j	80005b14 <_Z11workerBodyDPv+0x114>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005ad8:	00004517          	auipc	a0,0x4
    80005adc:	99850513          	addi	a0,a0,-1640 # 80009470 <CONSOLE_STATUS+0x460>
    80005ae0:	00000097          	auipc	ra,0x0
    80005ae4:	1a4080e7          	jalr	420(ra) # 80005c84 <_Z11printStringPKc>
    80005ae8:	00000613          	li	a2,0
    80005aec:	00a00593          	li	a1,10
    80005af0:	00048513          	mv	a0,s1
    80005af4:	00000097          	auipc	ra,0x0
    80005af8:	328080e7          	jalr	808(ra) # 80005e1c <_Z8printIntiii>
    80005afc:	00003517          	auipc	a0,0x3
    80005b00:	60450513          	addi	a0,a0,1540 # 80009100 <CONSOLE_STATUS+0xf0>
    80005b04:	00000097          	auipc	ra,0x0
    80005b08:	180080e7          	jalr	384(ra) # 80005c84 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005b0c:	0014849b          	addiw	s1,s1,1
    80005b10:	0ff4f493          	andi	s1,s1,255
    80005b14:	00f00793          	li	a5,15
    80005b18:	fc97f0e3          	bgeu	a5,s1,80005ad8 <_Z11workerBodyDPv+0xd8>
    }

    thread_dispatch();
    80005b1c:	ffffc097          	auipc	ra,0xffffc
    80005b20:	818080e7          	jalr	-2024(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    80005b24:	00004517          	auipc	a0,0x4
    80005b28:	97450513          	addi	a0,a0,-1676 # 80009498 <CONSOLE_STATUS+0x488>
    80005b2c:	00000097          	auipc	ra,0x0
    80005b30:	158080e7          	jalr	344(ra) # 80005c84 <_Z11printStringPKc>
    finishedD = true;
    80005b34:	00100793          	li	a5,1
    80005b38:	00006717          	auipc	a4,0x6
    80005b3c:	1af703a3          	sb	a5,423(a4) # 8000bcdf <_ZL9finishedD>
}
    80005b40:	01813083          	ld	ra,24(sp)
    80005b44:	01013403          	ld	s0,16(sp)
    80005b48:	00813483          	ld	s1,8(sp)
    80005b4c:	00013903          	ld	s2,0(sp)
    80005b50:	02010113          	addi	sp,sp,32
    80005b54:	00008067          	ret

0000000080005b58 <_Z18Threads_C_API_testv>:


void Threads_C_API_test()
{
    80005b58:	fc010113          	addi	sp,sp,-64
    80005b5c:	02113c23          	sd	ra,56(sp)
    80005b60:	02813823          	sd	s0,48(sp)
    80005b64:	02913423          	sd	s1,40(sp)
    80005b68:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005b6c:	00000613          	li	a2,0
    80005b70:	00000597          	auipc	a1,0x0
    80005b74:	aec58593          	addi	a1,a1,-1300 # 8000565c <_Z11workerBodyAPv>
    80005b78:	fc040513          	addi	a0,s0,-64
    80005b7c:	ffffb097          	auipc	ra,0xffffb
    80005b80:	738080e7          	jalr	1848(ra) # 800012b4 <thread_create>
    printString("ThreadA created\n");
    80005b84:	00004517          	auipc	a0,0x4
    80005b88:	92450513          	addi	a0,a0,-1756 # 800094a8 <CONSOLE_STATUS+0x498>
    80005b8c:	00000097          	auipc	ra,0x0
    80005b90:	0f8080e7          	jalr	248(ra) # 80005c84 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005b94:	00000613          	li	a2,0
    80005b98:	00000597          	auipc	a1,0x0
    80005b9c:	b9058593          	addi	a1,a1,-1136 # 80005728 <_Z11workerBodyBPv>
    80005ba0:	fc840513          	addi	a0,s0,-56
    80005ba4:	ffffb097          	auipc	ra,0xffffb
    80005ba8:	710080e7          	jalr	1808(ra) # 800012b4 <thread_create>
    printString("ThreadB created\n");
    80005bac:	00004517          	auipc	a0,0x4
    80005bb0:	91450513          	addi	a0,a0,-1772 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80005bb4:	00000097          	auipc	ra,0x0
    80005bb8:	0d0080e7          	jalr	208(ra) # 80005c84 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005bbc:	00000613          	li	a2,0
    80005bc0:	00000597          	auipc	a1,0x0
    80005bc4:	cb058593          	addi	a1,a1,-848 # 80005870 <_Z11workerBodyCPv>
    80005bc8:	fd040513          	addi	a0,s0,-48
    80005bcc:	ffffb097          	auipc	ra,0xffffb
    80005bd0:	6e8080e7          	jalr	1768(ra) # 800012b4 <thread_create>
    printString("ThreadC created\n");
    80005bd4:	00004517          	auipc	a0,0x4
    80005bd8:	90450513          	addi	a0,a0,-1788 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80005bdc:	00000097          	auipc	ra,0x0
    80005be0:	0a8080e7          	jalr	168(ra) # 80005c84 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005be4:	00000613          	li	a2,0
    80005be8:	00000597          	auipc	a1,0x0
    80005bec:	e1858593          	addi	a1,a1,-488 # 80005a00 <_Z11workerBodyDPv>
    80005bf0:	fd840513          	addi	a0,s0,-40
    80005bf4:	ffffb097          	auipc	ra,0xffffb
    80005bf8:	6c0080e7          	jalr	1728(ra) # 800012b4 <thread_create>
    printString("ThreadD created\n");
    80005bfc:	00004517          	auipc	a0,0x4
    80005c00:	8f450513          	addi	a0,a0,-1804 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80005c04:	00000097          	auipc	ra,0x0
    80005c08:	080080e7          	jalr	128(ra) # 80005c84 <_Z11printStringPKc>
    80005c0c:	00c0006f          	j	80005c18 <_Z18Threads_C_API_testv+0xc0>

    while (!finishedA || !finishedB || !finishedC || !finishedD)
    {
        //printString("Main thread\n");
        thread_dispatch();
    80005c10:	ffffb097          	auipc	ra,0xffffb
    80005c14:	724080e7          	jalr	1828(ra) # 80001334 <thread_dispatch>
    while (!finishedA || !finishedB || !finishedC || !finishedD)
    80005c18:	00006797          	auipc	a5,0x6
    80005c1c:	0c47c783          	lbu	a5,196(a5) # 8000bcdc <_ZL9finishedA>
    80005c20:	fe0788e3          	beqz	a5,80005c10 <_Z18Threads_C_API_testv+0xb8>
    80005c24:	00006797          	auipc	a5,0x6
    80005c28:	0b97c783          	lbu	a5,185(a5) # 8000bcdd <_ZL9finishedB>
    80005c2c:	fe0782e3          	beqz	a5,80005c10 <_Z18Threads_C_API_testv+0xb8>
    80005c30:	00006797          	auipc	a5,0x6
    80005c34:	0ae7c783          	lbu	a5,174(a5) # 8000bcde <_ZL9finishedC>
    80005c38:	fc078ce3          	beqz	a5,80005c10 <_Z18Threads_C_API_testv+0xb8>
    80005c3c:	00006797          	auipc	a5,0x6
    80005c40:	0a37c783          	lbu	a5,163(a5) # 8000bcdf <_ZL9finishedD>
    80005c44:	fc0786e3          	beqz	a5,80005c10 <_Z18Threads_C_API_testv+0xb8>
    }
    for (auto &thread: threads)
    80005c48:	fc040493          	addi	s1,s0,-64
    80005c4c:	0080006f          	j	80005c54 <_Z18Threads_C_API_testv+0xfc>
    80005c50:	00848493          	addi	s1,s1,8
    80005c54:	fe040793          	addi	a5,s0,-32
    80005c58:	00f48c63          	beq	s1,a5,80005c70 <_Z18Threads_C_API_testv+0x118>
    {
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (uint64*)thread;
    80005c5c:	0004b503          	ld	a0,0(s1)
    80005c60:	fe0508e3          	beqz	a0,80005c50 <_Z18Threads_C_API_testv+0xf8>
    80005c64:	ffffe097          	auipc	ra,0xffffe
    80005c68:	ab8080e7          	jalr	-1352(ra) # 8000371c <_ZdlPv>
    80005c6c:	fe5ff06f          	j	80005c50 <_Z18Threads_C_API_testv+0xf8>
    }
}
    80005c70:	03813083          	ld	ra,56(sp)
    80005c74:	03013403          	ld	s0,48(sp)
    80005c78:	02813483          	ld	s1,40(sp)
    80005c7c:	04010113          	addi	sp,sp,64
    80005c80:	00008067          	ret

0000000080005c84 <_Z11printStringPKc>:
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string)
{
    80005c84:	fe010113          	addi	sp,sp,-32
    80005c88:	00113c23          	sd	ra,24(sp)
    80005c8c:	00813823          	sd	s0,16(sp)
    80005c90:	00913423          	sd	s1,8(sp)
    80005c94:	02010413          	addi	s0,sp,32
    80005c98:	00050493          	mv	s1,a0
    LOCK();
    80005c9c:	00100613          	li	a2,1
    80005ca0:	00000593          	li	a1,0
    80005ca4:	00006517          	auipc	a0,0x6
    80005ca8:	03c50513          	addi	a0,a0,60 # 8000bce0 <lockPrint>
    80005cac:	ffffb097          	auipc	ra,0xffffb
    80005cb0:	56c080e7          	jalr	1388(ra) # 80001218 <copy_and_swap>
    80005cb4:	fe0514e3          	bnez	a0,80005c9c <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80005cb8:	0004c503          	lbu	a0,0(s1)
    80005cbc:	00050a63          	beqz	a0,80005cd0 <_Z11printStringPKc+0x4c>
        putc(*string);
    80005cc0:	ffffc097          	auipc	ra,0xffffc
    80005cc4:	878080e7          	jalr	-1928(ra) # 80001538 <putc>
        string++;
    80005cc8:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005ccc:	fedff06f          	j	80005cb8 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005cd0:	00000613          	li	a2,0
    80005cd4:	00100593          	li	a1,1
    80005cd8:	00006517          	auipc	a0,0x6
    80005cdc:	00850513          	addi	a0,a0,8 # 8000bce0 <lockPrint>
    80005ce0:	ffffb097          	auipc	ra,0xffffb
    80005ce4:	538080e7          	jalr	1336(ra) # 80001218 <copy_and_swap>
    80005ce8:	fe0514e3          	bnez	a0,80005cd0 <_Z11printStringPKc+0x4c>
}
    80005cec:	01813083          	ld	ra,24(sp)
    80005cf0:	01013403          	ld	s0,16(sp)
    80005cf4:	00813483          	ld	s1,8(sp)
    80005cf8:	02010113          	addi	sp,sp,32
    80005cfc:	00008067          	ret

0000000080005d00 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005d00:	fd010113          	addi	sp,sp,-48
    80005d04:	02113423          	sd	ra,40(sp)
    80005d08:	02813023          	sd	s0,32(sp)
    80005d0c:	00913c23          	sd	s1,24(sp)
    80005d10:	01213823          	sd	s2,16(sp)
    80005d14:	01313423          	sd	s3,8(sp)
    80005d18:	01413023          	sd	s4,0(sp)
    80005d1c:	03010413          	addi	s0,sp,48
    80005d20:	00050993          	mv	s3,a0
    80005d24:	00058a13          	mv	s4,a1
    LOCK();
    80005d28:	00100613          	li	a2,1
    80005d2c:	00000593          	li	a1,0
    80005d30:	00006517          	auipc	a0,0x6
    80005d34:	fb050513          	addi	a0,a0,-80 # 8000bce0 <lockPrint>
    80005d38:	ffffb097          	auipc	ra,0xffffb
    80005d3c:	4e0080e7          	jalr	1248(ra) # 80001218 <copy_and_swap>
    80005d40:	fe0514e3          	bnez	a0,80005d28 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80005d44:	00000913          	li	s2,0
    80005d48:	00090493          	mv	s1,s2
    80005d4c:	0019091b          	addiw	s2,s2,1
    80005d50:	03495a63          	bge	s2,s4,80005d84 <_Z9getStringPci+0x84>
        cc = getc();
    80005d54:	ffffb097          	auipc	ra,0xffffb
    80005d58:	7bc080e7          	jalr	1980(ra) # 80001510 <getc>
        if (cc < 1)
    80005d5c:	02050463          	beqz	a0,80005d84 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005d60:	009984b3          	add	s1,s3,s1
    80005d64:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80005d68:	00a00793          	li	a5,10
    80005d6c:	00f50a63          	beq	a0,a5,80005d80 <_Z9getStringPci+0x80>
    80005d70:	00d00793          	li	a5,13
    80005d74:	fcf51ae3          	bne	a0,a5,80005d48 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005d78:	00090493          	mv	s1,s2
    80005d7c:	0080006f          	j	80005d84 <_Z9getStringPci+0x84>
    80005d80:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005d84:	009984b3          	add	s1,s3,s1
    80005d88:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005d8c:	00000613          	li	a2,0
    80005d90:	00100593          	li	a1,1
    80005d94:	00006517          	auipc	a0,0x6
    80005d98:	f4c50513          	addi	a0,a0,-180 # 8000bce0 <lockPrint>
    80005d9c:	ffffb097          	auipc	ra,0xffffb
    80005da0:	47c080e7          	jalr	1148(ra) # 80001218 <copy_and_swap>
    80005da4:	fe0514e3          	bnez	a0,80005d8c <_Z9getStringPci+0x8c>
    return buf;
}
    80005da8:	00098513          	mv	a0,s3
    80005dac:	02813083          	ld	ra,40(sp)
    80005db0:	02013403          	ld	s0,32(sp)
    80005db4:	01813483          	ld	s1,24(sp)
    80005db8:	01013903          	ld	s2,16(sp)
    80005dbc:	00813983          	ld	s3,8(sp)
    80005dc0:	00013a03          	ld	s4,0(sp)
    80005dc4:	03010113          	addi	sp,sp,48
    80005dc8:	00008067          	ret

0000000080005dcc <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005dcc:	ff010113          	addi	sp,sp,-16
    80005dd0:	00813423          	sd	s0,8(sp)
    80005dd4:	01010413          	addi	s0,sp,16
    80005dd8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005ddc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005de0:	0006c603          	lbu	a2,0(a3)
    80005de4:	fd06071b          	addiw	a4,a2,-48
    80005de8:	0ff77713          	andi	a4,a4,255
    80005dec:	00900793          	li	a5,9
    80005df0:	02e7e063          	bltu	a5,a4,80005e10 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005df4:	0025179b          	slliw	a5,a0,0x2
    80005df8:	00a787bb          	addw	a5,a5,a0
    80005dfc:	0017979b          	slliw	a5,a5,0x1
    80005e00:	00168693          	addi	a3,a3,1
    80005e04:	00c787bb          	addw	a5,a5,a2
    80005e08:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005e0c:	fd5ff06f          	j	80005de0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005e10:	00813403          	ld	s0,8(sp)
    80005e14:	01010113          	addi	sp,sp,16
    80005e18:	00008067          	ret

0000000080005e1c <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005e1c:	fc010113          	addi	sp,sp,-64
    80005e20:	02113c23          	sd	ra,56(sp)
    80005e24:	02813823          	sd	s0,48(sp)
    80005e28:	02913423          	sd	s1,40(sp)
    80005e2c:	03213023          	sd	s2,32(sp)
    80005e30:	01313c23          	sd	s3,24(sp)
    80005e34:	04010413          	addi	s0,sp,64
    80005e38:	00050493          	mv	s1,a0
    80005e3c:	00058913          	mv	s2,a1
    80005e40:	00060993          	mv	s3,a2
    LOCK();
    80005e44:	00100613          	li	a2,1
    80005e48:	00000593          	li	a1,0
    80005e4c:	00006517          	auipc	a0,0x6
    80005e50:	e9450513          	addi	a0,a0,-364 # 8000bce0 <lockPrint>
    80005e54:	ffffb097          	auipc	ra,0xffffb
    80005e58:	3c4080e7          	jalr	964(ra) # 80001218 <copy_and_swap>
    80005e5c:	fe0514e3          	bnez	a0,80005e44 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005e60:	00098463          	beqz	s3,80005e68 <_Z8printIntiii+0x4c>
    80005e64:	0804c463          	bltz	s1,80005eec <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005e68:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005e6c:	00000593          	li	a1,0
    }

    i = 0;
    80005e70:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005e74:	0009079b          	sext.w	a5,s2
    80005e78:	0325773b          	remuw	a4,a0,s2
    80005e7c:	00048613          	mv	a2,s1
    80005e80:	0014849b          	addiw	s1,s1,1
    80005e84:	02071693          	slli	a3,a4,0x20
    80005e88:	0206d693          	srli	a3,a3,0x20
    80005e8c:	00003717          	auipc	a4,0x3
    80005e90:	69c70713          	addi	a4,a4,1692 # 80009528 <_ZL6digits>
    80005e94:	00d70733          	add	a4,a4,a3
    80005e98:	00074683          	lbu	a3,0(a4)
    80005e9c:	fd040713          	addi	a4,s0,-48
    80005ea0:	00c70733          	add	a4,a4,a2
    80005ea4:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005ea8:	0005071b          	sext.w	a4,a0
    80005eac:	0325553b          	divuw	a0,a0,s2
    80005eb0:	fcf772e3          	bgeu	a4,a5,80005e74 <_Z8printIntiii+0x58>
    if (neg)
    80005eb4:	00058c63          	beqz	a1,80005ecc <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005eb8:	fd040793          	addi	a5,s0,-48
    80005ebc:	009784b3          	add	s1,a5,s1
    80005ec0:	02d00793          	li	a5,45
    80005ec4:	fef48823          	sb	a5,-16(s1)
    80005ec8:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005ecc:	fff4849b          	addiw	s1,s1,-1
    80005ed0:	0204c463          	bltz	s1,80005ef8 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005ed4:	fd040793          	addi	a5,s0,-48
    80005ed8:	009787b3          	add	a5,a5,s1
    80005edc:	ff07c503          	lbu	a0,-16(a5)
    80005ee0:	ffffb097          	auipc	ra,0xffffb
    80005ee4:	658080e7          	jalr	1624(ra) # 80001538 <putc>
    80005ee8:	fe5ff06f          	j	80005ecc <_Z8printIntiii+0xb0>
        x = -xx;
    80005eec:	4090053b          	negw	a0,s1
        neg = 1;
    80005ef0:	00100593          	li	a1,1
        x = -xx;
    80005ef4:	f7dff06f          	j	80005e70 <_Z8printIntiii+0x54>
    UNLOCK();
    80005ef8:	00000613          	li	a2,0
    80005efc:	00100593          	li	a1,1
    80005f00:	00006517          	auipc	a0,0x6
    80005f04:	de050513          	addi	a0,a0,-544 # 8000bce0 <lockPrint>
    80005f08:	ffffb097          	auipc	ra,0xffffb
    80005f0c:	310080e7          	jalr	784(ra) # 80001218 <copy_and_swap>
    80005f10:	fe0514e3          	bnez	a0,80005ef8 <_Z8printIntiii+0xdc>
}
    80005f14:	03813083          	ld	ra,56(sp)
    80005f18:	03013403          	ld	s0,48(sp)
    80005f1c:	02813483          	ld	s1,40(sp)
    80005f20:	02013903          	ld	s2,32(sp)
    80005f24:	01813983          	ld	s3,24(sp)
    80005f28:	04010113          	addi	sp,sp,64
    80005f2c:	00008067          	ret

0000000080005f30 <_Z15trapPrintStringPKc>:

void trapPrintString(char const* string)
{
    80005f30:	fe010113          	addi	sp,sp,-32
    80005f34:	00113c23          	sd	ra,24(sp)
    80005f38:	00813823          	sd	s0,16(sp)
    80005f3c:	00913423          	sd	s1,8(sp)
    80005f40:	02010413          	addi	s0,sp,32
    80005f44:	00050493          	mv	s1,a0
    LOCK();
    80005f48:	00100613          	li	a2,1
    80005f4c:	00000593          	li	a1,0
    80005f50:	00006517          	auipc	a0,0x6
    80005f54:	d9050513          	addi	a0,a0,-624 # 8000bce0 <lockPrint>
    80005f58:	ffffb097          	auipc	ra,0xffffb
    80005f5c:	2c0080e7          	jalr	704(ra) # 80001218 <copy_and_swap>
    80005f60:	fe0514e3          	bnez	a0,80005f48 <_Z15trapPrintStringPKc+0x18>
    while (*string != '\0') {
    80005f64:	0004c503          	lbu	a0,0(s1)
    80005f68:	00050a63          	beqz	a0,80005f7c <_Z15trapPrintStringPKc+0x4c>
        KConsole::putCharacterOutput(*string);
    80005f6c:	ffffd097          	auipc	ra,0xffffd
    80005f70:	ff0080e7          	jalr	-16(ra) # 80002f5c <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80005f74:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005f78:	fedff06f          	j	80005f64 <_Z15trapPrintStringPKc+0x34>
    }
    UNLOCK();
    80005f7c:	00000613          	li	a2,0
    80005f80:	00100593          	li	a1,1
    80005f84:	00006517          	auipc	a0,0x6
    80005f88:	d5c50513          	addi	a0,a0,-676 # 8000bce0 <lockPrint>
    80005f8c:	ffffb097          	auipc	ra,0xffffb
    80005f90:	28c080e7          	jalr	652(ra) # 80001218 <copy_and_swap>
    80005f94:	fe0514e3          	bnez	a0,80005f7c <_Z15trapPrintStringPKc+0x4c>
}
    80005f98:	01813083          	ld	ra,24(sp)
    80005f9c:	01013403          	ld	s0,16(sp)
    80005fa0:	00813483          	ld	s1,8(sp)
    80005fa4:	02010113          	addi	sp,sp,32
    80005fa8:	00008067          	ret

0000000080005fac <_Z12trapPrintIntiii>:

void trapPrintInt(int xx, int base, int sgn)
{
    80005fac:	fc010113          	addi	sp,sp,-64
    80005fb0:	02113c23          	sd	ra,56(sp)
    80005fb4:	02813823          	sd	s0,48(sp)
    80005fb8:	02913423          	sd	s1,40(sp)
    80005fbc:	03213023          	sd	s2,32(sp)
    80005fc0:	01313c23          	sd	s3,24(sp)
    80005fc4:	04010413          	addi	s0,sp,64
    80005fc8:	00050493          	mv	s1,a0
    80005fcc:	00058913          	mv	s2,a1
    80005fd0:	00060993          	mv	s3,a2
    LOCK();
    80005fd4:	00100613          	li	a2,1
    80005fd8:	00000593          	li	a1,0
    80005fdc:	00006517          	auipc	a0,0x6
    80005fe0:	d0450513          	addi	a0,a0,-764 # 8000bce0 <lockPrint>
    80005fe4:	ffffb097          	auipc	ra,0xffffb
    80005fe8:	234080e7          	jalr	564(ra) # 80001218 <copy_and_swap>
    80005fec:	fe0514e3          	bnez	a0,80005fd4 <_Z12trapPrintIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005ff0:	00098463          	beqz	s3,80005ff8 <_Z12trapPrintIntiii+0x4c>
    80005ff4:	0804c463          	bltz	s1,8000607c <_Z12trapPrintIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005ff8:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005ffc:	00000593          	li	a1,0
    }

    i = 0;
    80006000:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80006004:	0009079b          	sext.w	a5,s2
    80006008:	0325773b          	remuw	a4,a0,s2
    8000600c:	00048613          	mv	a2,s1
    80006010:	0014849b          	addiw	s1,s1,1
    80006014:	02071693          	slli	a3,a4,0x20
    80006018:	0206d693          	srli	a3,a3,0x20
    8000601c:	00003717          	auipc	a4,0x3
    80006020:	50c70713          	addi	a4,a4,1292 # 80009528 <_ZL6digits>
    80006024:	00d70733          	add	a4,a4,a3
    80006028:	00074683          	lbu	a3,0(a4)
    8000602c:	fd040713          	addi	a4,s0,-48
    80006030:	00c70733          	add	a4,a4,a2
    80006034:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80006038:	0005071b          	sext.w	a4,a0
    8000603c:	0325553b          	divuw	a0,a0,s2
    80006040:	fcf772e3          	bgeu	a4,a5,80006004 <_Z12trapPrintIntiii+0x58>
    if (neg)
    80006044:	00058c63          	beqz	a1,8000605c <_Z12trapPrintIntiii+0xb0>
        buf[i++] = '-';
    80006048:	fd040793          	addi	a5,s0,-48
    8000604c:	009784b3          	add	s1,a5,s1
    80006050:	02d00793          	li	a5,45
    80006054:	fef48823          	sb	a5,-16(s1)
    80006058:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    8000605c:	fff4849b          	addiw	s1,s1,-1
    80006060:	0204c463          	bltz	s1,80006088 <_Z12trapPrintIntiii+0xdc>
        KConsole::putCharacterOutput(buf[i]);
    80006064:	fd040793          	addi	a5,s0,-48
    80006068:	009787b3          	add	a5,a5,s1
    8000606c:	ff07c503          	lbu	a0,-16(a5)
    80006070:	ffffd097          	auipc	ra,0xffffd
    80006074:	eec080e7          	jalr	-276(ra) # 80002f5c <_ZN8KConsole18putCharacterOutputEc>
    80006078:	fe5ff06f          	j	8000605c <_Z12trapPrintIntiii+0xb0>
        x = -xx;
    8000607c:	4090053b          	negw	a0,s1
        neg = 1;
    80006080:	00100593          	li	a1,1
        x = -xx;
    80006084:	f7dff06f          	j	80006000 <_Z12trapPrintIntiii+0x54>
    UNLOCK();
    80006088:	00000613          	li	a2,0
    8000608c:	00100593          	li	a1,1
    80006090:	00006517          	auipc	a0,0x6
    80006094:	c5050513          	addi	a0,a0,-944 # 8000bce0 <lockPrint>
    80006098:	ffffb097          	auipc	ra,0xffffb
    8000609c:	180080e7          	jalr	384(ra) # 80001218 <copy_and_swap>
    800060a0:	fe0514e3          	bnez	a0,80006088 <_Z12trapPrintIntiii+0xdc>
}
    800060a4:	03813083          	ld	ra,56(sp)
    800060a8:	03013403          	ld	s0,48(sp)
    800060ac:	02813483          	ld	s1,40(sp)
    800060b0:	02013903          	ld	s2,32(sp)
    800060b4:	01813983          	ld	s3,24(sp)
    800060b8:	04010113          	addi	sp,sp,64
    800060bc:	00008067          	ret

00000000800060c0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    800060c0:	fe010113          	addi	sp,sp,-32
    800060c4:	00113c23          	sd	ra,24(sp)
    800060c8:	00813823          	sd	s0,16(sp)
    800060cc:	00913423          	sd	s1,8(sp)
    800060d0:	01213023          	sd	s2,0(sp)
    800060d4:	02010413          	addi	s0,sp,32
    800060d8:	00050493          	mv	s1,a0
    800060dc:	00b52023          	sw	a1,0(a0)
    800060e0:	00052823          	sw	zero,16(a0)
    800060e4:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800060e8:	00259513          	slli	a0,a1,0x2
    800060ec:	ffffb097          	auipc	ra,0xffffb
    800060f0:	16c080e7          	jalr	364(ra) # 80001258 <mem_alloc>
    800060f4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800060f8:	01000513          	li	a0,16
    800060fc:	ffffd097          	auipc	ra,0xffffd
    80006100:	5f8080e7          	jalr	1528(ra) # 800036f4 <_Znwm>
    80006104:	00050913          	mv	s2,a0
    80006108:	00000593          	li	a1,0
    8000610c:	ffffe097          	auipc	ra,0xffffe
    80006110:	834080e7          	jalr	-1996(ra) # 80003940 <_ZN9SemaphoreC1Ej>
    80006114:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    80006118:	01000513          	li	a0,16
    8000611c:	ffffd097          	auipc	ra,0xffffd
    80006120:	5d8080e7          	jalr	1496(ra) # 800036f4 <_Znwm>
    80006124:	00050913          	mv	s2,a0
    80006128:	0004a583          	lw	a1,0(s1)
    8000612c:	ffffe097          	auipc	ra,0xffffe
    80006130:	814080e7          	jalr	-2028(ra) # 80003940 <_ZN9SemaphoreC1Ej>
    80006134:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80006138:	01000513          	li	a0,16
    8000613c:	ffffd097          	auipc	ra,0xffffd
    80006140:	5b8080e7          	jalr	1464(ra) # 800036f4 <_Znwm>
    80006144:	00050913          	mv	s2,a0
    80006148:	00100593          	li	a1,1
    8000614c:	ffffd097          	auipc	ra,0xffffd
    80006150:	7f4080e7          	jalr	2036(ra) # 80003940 <_ZN9SemaphoreC1Ej>
    80006154:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006158:	01000513          	li	a0,16
    8000615c:	ffffd097          	auipc	ra,0xffffd
    80006160:	598080e7          	jalr	1432(ra) # 800036f4 <_Znwm>
    80006164:	00050913          	mv	s2,a0
    80006168:	00100593          	li	a1,1
    8000616c:	ffffd097          	auipc	ra,0xffffd
    80006170:	7d4080e7          	jalr	2004(ra) # 80003940 <_ZN9SemaphoreC1Ej>
    80006174:	0324b823          	sd	s2,48(s1)
}
    80006178:	01813083          	ld	ra,24(sp)
    8000617c:	01013403          	ld	s0,16(sp)
    80006180:	00813483          	ld	s1,8(sp)
    80006184:	00013903          	ld	s2,0(sp)
    80006188:	02010113          	addi	sp,sp,32
    8000618c:	00008067          	ret
    80006190:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006194:	00090513          	mv	a0,s2
    80006198:	ffffd097          	auipc	ra,0xffffd
    8000619c:	584080e7          	jalr	1412(ra) # 8000371c <_ZdlPv>
    800061a0:	00048513          	mv	a0,s1
    800061a4:	00007097          	auipc	ra,0x7
    800061a8:	c14080e7          	jalr	-1004(ra) # 8000cdb8 <_Unwind_Resume>
    800061ac:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    800061b0:	00090513          	mv	a0,s2
    800061b4:	ffffd097          	auipc	ra,0xffffd
    800061b8:	568080e7          	jalr	1384(ra) # 8000371c <_ZdlPv>
    800061bc:	00048513          	mv	a0,s1
    800061c0:	00007097          	auipc	ra,0x7
    800061c4:	bf8080e7          	jalr	-1032(ra) # 8000cdb8 <_Unwind_Resume>
    800061c8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800061cc:	00090513          	mv	a0,s2
    800061d0:	ffffd097          	auipc	ra,0xffffd
    800061d4:	54c080e7          	jalr	1356(ra) # 8000371c <_ZdlPv>
    800061d8:	00048513          	mv	a0,s1
    800061dc:	00007097          	auipc	ra,0x7
    800061e0:	bdc080e7          	jalr	-1060(ra) # 8000cdb8 <_Unwind_Resume>
    800061e4:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800061e8:	00090513          	mv	a0,s2
    800061ec:	ffffd097          	auipc	ra,0xffffd
    800061f0:	530080e7          	jalr	1328(ra) # 8000371c <_ZdlPv>
    800061f4:	00048513          	mv	a0,s1
    800061f8:	00007097          	auipc	ra,0x7
    800061fc:	bc0080e7          	jalr	-1088(ra) # 8000cdb8 <_Unwind_Resume>

0000000080006200 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    80006200:	fe010113          	addi	sp,sp,-32
    80006204:	00113c23          	sd	ra,24(sp)
    80006208:	00813823          	sd	s0,16(sp)
    8000620c:	00913423          	sd	s1,8(sp)
    80006210:	02010413          	addi	s0,sp,32
    80006214:	00050493          	mv	s1,a0
    putc('\n');
    80006218:	00a00513          	li	a0,10
    8000621c:	ffffb097          	auipc	ra,0xffffb
    80006220:	31c080e7          	jalr	796(ra) # 80001538 <putc>
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80006224:	0104a783          	lw	a5,16(s1)
    80006228:	0144a703          	lw	a4,20(s1)
    8000622c:	00e78c63          	beq	a5,a4,80006244 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80006230:	0017879b          	addiw	a5,a5,1
    80006234:	0004a703          	lw	a4,0(s1)
    80006238:	02e7e7bb          	remw	a5,a5,a4
    8000623c:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80006240:	fe5ff06f          	j	80006224 <_ZN9BufferCPPD1Ev+0x24>
    }
    putc('!');
    80006244:	02100513          	li	a0,33
    80006248:	ffffb097          	auipc	ra,0xffffb
    8000624c:	2f0080e7          	jalr	752(ra) # 80001538 <putc>
    putc('\n');
    80006250:	00a00513          	li	a0,10
    80006254:	ffffb097          	auipc	ra,0xffffb
    80006258:	2e4080e7          	jalr	740(ra) # 80001538 <putc>

    mem_free(buffer);
    8000625c:	0084b503          	ld	a0,8(s1)
    80006260:	ffffb097          	auipc	ra,0xffffb
    80006264:	028080e7          	jalr	40(ra) # 80001288 <mem_free>
    delete itemAvailable;
    80006268:	0204b503          	ld	a0,32(s1)
    8000626c:	00050863          	beqz	a0,8000627c <_ZN9BufferCPPD1Ev+0x7c>
    80006270:	00053783          	ld	a5,0(a0)
    80006274:	0087b783          	ld	a5,8(a5)
    80006278:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000627c:	0184b503          	ld	a0,24(s1)
    80006280:	00050863          	beqz	a0,80006290 <_ZN9BufferCPPD1Ev+0x90>
    80006284:	00053783          	ld	a5,0(a0)
    80006288:	0087b783          	ld	a5,8(a5)
    8000628c:	000780e7          	jalr	a5
    delete mutexTail;
    80006290:	0304b503          	ld	a0,48(s1)
    80006294:	00050863          	beqz	a0,800062a4 <_ZN9BufferCPPD1Ev+0xa4>
    80006298:	00053783          	ld	a5,0(a0)
    8000629c:	0087b783          	ld	a5,8(a5)
    800062a0:	000780e7          	jalr	a5
    delete mutexHead;
    800062a4:	0284b503          	ld	a0,40(s1)
    800062a8:	00050863          	beqz	a0,800062b8 <_ZN9BufferCPPD1Ev+0xb8>
    800062ac:	00053783          	ld	a5,0(a0)
    800062b0:	0087b783          	ld	a5,8(a5)
    800062b4:	000780e7          	jalr	a5

}
    800062b8:	01813083          	ld	ra,24(sp)
    800062bc:	01013403          	ld	s0,16(sp)
    800062c0:	00813483          	ld	s1,8(sp)
    800062c4:	02010113          	addi	sp,sp,32
    800062c8:	00008067          	ret

00000000800062cc <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    800062cc:	fe010113          	addi	sp,sp,-32
    800062d0:	00113c23          	sd	ra,24(sp)
    800062d4:	00813823          	sd	s0,16(sp)
    800062d8:	00913423          	sd	s1,8(sp)
    800062dc:	01213023          	sd	s2,0(sp)
    800062e0:	02010413          	addi	s0,sp,32
    800062e4:	00050493          	mv	s1,a0
    800062e8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800062ec:	01853503          	ld	a0,24(a0)
    800062f0:	ffffd097          	auipc	ra,0xffffd
    800062f4:	618080e7          	jalr	1560(ra) # 80003908 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800062f8:	0304b503          	ld	a0,48(s1)
    800062fc:	ffffd097          	auipc	ra,0xffffd
    80006300:	60c080e7          	jalr	1548(ra) # 80003908 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006304:	0084b783          	ld	a5,8(s1)
    80006308:	0144a703          	lw	a4,20(s1)
    8000630c:	00271713          	slli	a4,a4,0x2
    80006310:	00e787b3          	add	a5,a5,a4
    80006314:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006318:	0144a783          	lw	a5,20(s1)
    8000631c:	0017879b          	addiw	a5,a5,1
    80006320:	0004a703          	lw	a4,0(s1)
    80006324:	02e7e7bb          	remw	a5,a5,a4
    80006328:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000632c:	0304b503          	ld	a0,48(s1)
    80006330:	ffffd097          	auipc	ra,0xffffd
    80006334:	65c080e7          	jalr	1628(ra) # 8000398c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006338:	0204b503          	ld	a0,32(s1)
    8000633c:	ffffd097          	auipc	ra,0xffffd
    80006340:	650080e7          	jalr	1616(ra) # 8000398c <_ZN9Semaphore6signalEv>

}
    80006344:	01813083          	ld	ra,24(sp)
    80006348:	01013403          	ld	s0,16(sp)
    8000634c:	00813483          	ld	s1,8(sp)
    80006350:	00013903          	ld	s2,0(sp)
    80006354:	02010113          	addi	sp,sp,32
    80006358:	00008067          	ret

000000008000635c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000635c:	fe010113          	addi	sp,sp,-32
    80006360:	00113c23          	sd	ra,24(sp)
    80006364:	00813823          	sd	s0,16(sp)
    80006368:	00913423          	sd	s1,8(sp)
    8000636c:	01213023          	sd	s2,0(sp)
    80006370:	02010413          	addi	s0,sp,32
    80006374:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006378:	02053503          	ld	a0,32(a0)
    8000637c:	ffffd097          	auipc	ra,0xffffd
    80006380:	58c080e7          	jalr	1420(ra) # 80003908 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006384:	0284b503          	ld	a0,40(s1)
    80006388:	ffffd097          	auipc	ra,0xffffd
    8000638c:	580080e7          	jalr	1408(ra) # 80003908 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006390:	0084b703          	ld	a4,8(s1)
    80006394:	0104a783          	lw	a5,16(s1)
    80006398:	00279693          	slli	a3,a5,0x2
    8000639c:	00d70733          	add	a4,a4,a3
    800063a0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800063a4:	0017879b          	addiw	a5,a5,1
    800063a8:	0004a703          	lw	a4,0(s1)
    800063ac:	02e7e7bb          	remw	a5,a5,a4
    800063b0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800063b4:	0284b503          	ld	a0,40(s1)
    800063b8:	ffffd097          	auipc	ra,0xffffd
    800063bc:	5d4080e7          	jalr	1492(ra) # 8000398c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800063c0:	0184b503          	ld	a0,24(s1)
    800063c4:	ffffd097          	auipc	ra,0xffffd
    800063c8:	5c8080e7          	jalr	1480(ra) # 8000398c <_ZN9Semaphore6signalEv>

    return ret;
}
    800063cc:	00090513          	mv	a0,s2
    800063d0:	01813083          	ld	ra,24(sp)
    800063d4:	01013403          	ld	s0,16(sp)
    800063d8:	00813483          	ld	s1,8(sp)
    800063dc:	00013903          	ld	s2,0(sp)
    800063e0:	02010113          	addi	sp,sp,32
    800063e4:	00008067          	ret

00000000800063e8 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    800063e8:	ff010113          	addi	sp,sp,-16
    800063ec:	00113423          	sd	ra,8(sp)
    800063f0:	00813023          	sd	s0,0(sp)
    800063f4:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    800063f8:	fffff097          	auipc	ra,0xfffff
    800063fc:	760080e7          	jalr	1888(ra) # 80005b58 <_Z18Threads_C_API_testv>
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80006400:	00813083          	ld	ra,8(sp)
    80006404:	00013403          	ld	s0,0(sp)
    80006408:	01010113          	addi	sp,sp,16
    8000640c:	00008067          	ret

0000000080006410 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80006410:	fe010113          	addi	sp,sp,-32
    80006414:	00113c23          	sd	ra,24(sp)
    80006418:	00813823          	sd	s0,16(sp)
    8000641c:	00913423          	sd	s1,8(sp)
    80006420:	01213023          	sd	s2,0(sp)
    80006424:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006428:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000642c:	00600493          	li	s1,6
    while (--i > 0) {
    80006430:	fff4849b          	addiw	s1,s1,-1
    80006434:	04905c63          	blez	s1,8000648c <_Z9sleepyRunPv+0x7c>

        printString("Hello ");
    80006438:	00003517          	auipc	a0,0x3
    8000643c:	10850513          	addi	a0,a0,264 # 80009540 <_ZL6digits+0x18>
    80006440:	00000097          	auipc	ra,0x0
    80006444:	844080e7          	jalr	-1980(ra) # 80005c84 <_Z11printStringPKc>
        printInt(sleep_time);
    80006448:	00000613          	li	a2,0
    8000644c:	00a00593          	li	a1,10
    80006450:	0009051b          	sext.w	a0,s2
    80006454:	00000097          	auipc	ra,0x0
    80006458:	9c8080e7          	jalr	-1592(ra) # 80005e1c <_Z8printIntiii>
        printString(" !\n");
    8000645c:	00003517          	auipc	a0,0x3
    80006460:	0ec50513          	addi	a0,a0,236 # 80009548 <_ZL6digits+0x20>
    80006464:	00000097          	auipc	ra,0x0
    80006468:	820080e7          	jalr	-2016(ra) # 80005c84 <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000646c:	00090513          	mv	a0,s2
    80006470:	ffffb097          	auipc	ra,0xffffb
    80006474:	fc8080e7          	jalr	-56(ra) # 80001438 <time_sleep>
        printString("woke...\n");
    80006478:	00003517          	auipc	a0,0x3
    8000647c:	0d850513          	addi	a0,a0,216 # 80009550 <_ZL6digits+0x28>
    80006480:	00000097          	auipc	ra,0x0
    80006484:	804080e7          	jalr	-2044(ra) # 80005c84 <_Z11printStringPKc>
    while (--i > 0) {
    80006488:	fa9ff06f          	j	80006430 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    8000648c:	00a00793          	li	a5,10
    80006490:	02f95933          	divu	s2,s2,a5
    80006494:	fff90913          	addi	s2,s2,-1
    80006498:	00006797          	auipc	a5,0x6
    8000649c:	85078793          	addi	a5,a5,-1968 # 8000bce8 <finished>
    800064a0:	01278933          	add	s2,a5,s2
    800064a4:	00100793          	li	a5,1
    800064a8:	00f90023          	sb	a5,0(s2)
    printString("Finished...\n");
    800064ac:	00003517          	auipc	a0,0x3
    800064b0:	0b450513          	addi	a0,a0,180 # 80009560 <_ZL6digits+0x38>
    800064b4:	fffff097          	auipc	ra,0xfffff
    800064b8:	7d0080e7          	jalr	2000(ra) # 80005c84 <_Z11printStringPKc>
}
    800064bc:	01813083          	ld	ra,24(sp)
    800064c0:	01013403          	ld	s0,16(sp)
    800064c4:	00813483          	ld	s1,8(sp)
    800064c8:	00013903          	ld	s2,0(sp)
    800064cc:	02010113          	addi	sp,sp,32
    800064d0:	00008067          	ret

00000000800064d4 <_Z12testSleepingv>:

void testSleeping()
{
    800064d4:	fc010113          	addi	sp,sp,-64
    800064d8:	02113c23          	sd	ra,56(sp)
    800064dc:	02813823          	sd	s0,48(sp)
    800064e0:	02913423          	sd	s1,40(sp)
    800064e4:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800064e8:	00a00793          	li	a5,10
    800064ec:	fcf43823          	sd	a5,-48(s0)
    800064f0:	01400793          	li	a5,20
    800064f4:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800064f8:	00000493          	li	s1,0
    800064fc:	02c0006f          	j	80006528 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006500:	00349793          	slli	a5,s1,0x3
    80006504:	fd040613          	addi	a2,s0,-48
    80006508:	00f60633          	add	a2,a2,a5
    8000650c:	00000597          	auipc	a1,0x0
    80006510:	f0458593          	addi	a1,a1,-252 # 80006410 <_Z9sleepyRunPv>
    80006514:	fc040513          	addi	a0,s0,-64
    80006518:	00f50533          	add	a0,a0,a5
    8000651c:	ffffb097          	auipc	ra,0xffffb
    80006520:	d98080e7          	jalr	-616(ra) # 800012b4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006524:	0014849b          	addiw	s1,s1,1
    80006528:	00100793          	li	a5,1
    8000652c:	fc97dae3          	bge	a5,s1,80006500 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006530:	00005797          	auipc	a5,0x5
    80006534:	7b87c783          	lbu	a5,1976(a5) # 8000bce8 <finished>
    80006538:	fe078ce3          	beqz	a5,80006530 <_Z12testSleepingv+0x5c>
    8000653c:	00005797          	auipc	a5,0x5
    80006540:	7ad7c783          	lbu	a5,1965(a5) # 8000bce9 <finished+0x1>
    80006544:	fe0786e3          	beqz	a5,80006530 <_Z12testSleepingv+0x5c>
}
    80006548:	03813083          	ld	ra,56(sp)
    8000654c:	03013403          	ld	s0,48(sp)
    80006550:	02813483          	ld	s1,40(sp)
    80006554:	04010113          	addi	sp,sp,64
    80006558:	00008067          	ret

000000008000655c <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    8000655c:	fe010113          	addi	sp,sp,-32
    80006560:	00113c23          	sd	ra,24(sp)
    80006564:	00813823          	sd	s0,16(sp)
    80006568:	00913423          	sd	s1,8(sp)
    8000656c:	02010413          	addi	s0,sp,32
    80006570:	00050493          	mv	s1,a0
    80006574:	00b52023          	sw	a1,0(a0)
    80006578:	00052823          	sw	zero,16(a0)
    8000657c:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006580:	00259513          	slli	a0,a1,0x2
    80006584:	ffffb097          	auipc	ra,0xffffb
    80006588:	cd4080e7          	jalr	-812(ra) # 80001258 <mem_alloc>
    8000658c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006590:	00000593          	li	a1,0
    80006594:	02048513          	addi	a0,s1,32
    80006598:	ffffb097          	auipc	ra,0xffffb
    8000659c:	de4080e7          	jalr	-540(ra) # 8000137c <sem_open>
    sem_open(&spaceAvailable, cap);
    800065a0:	0004a583          	lw	a1,0(s1)
    800065a4:	01848513          	addi	a0,s1,24
    800065a8:	ffffb097          	auipc	ra,0xffffb
    800065ac:	dd4080e7          	jalr	-556(ra) # 8000137c <sem_open>
    sem_open(&mutexHead, 1);
    800065b0:	00100593          	li	a1,1
    800065b4:	02848513          	addi	a0,s1,40
    800065b8:	ffffb097          	auipc	ra,0xffffb
    800065bc:	dc4080e7          	jalr	-572(ra) # 8000137c <sem_open>
    sem_open(&mutexTail, 1);
    800065c0:	00100593          	li	a1,1
    800065c4:	03048513          	addi	a0,s1,48
    800065c8:	ffffb097          	auipc	ra,0xffffb
    800065cc:	db4080e7          	jalr	-588(ra) # 8000137c <sem_open>
}
    800065d0:	01813083          	ld	ra,24(sp)
    800065d4:	01013403          	ld	s0,16(sp)
    800065d8:	00813483          	ld	s1,8(sp)
    800065dc:	02010113          	addi	sp,sp,32
    800065e0:	00008067          	ret

00000000800065e4 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    800065e4:	fe010113          	addi	sp,sp,-32
    800065e8:	00113c23          	sd	ra,24(sp)
    800065ec:	00813823          	sd	s0,16(sp)
    800065f0:	00913423          	sd	s1,8(sp)
    800065f4:	02010413          	addi	s0,sp,32
    800065f8:	00050493          	mv	s1,a0
    putc('\n');
    800065fc:	00a00513          	li	a0,10
    80006600:	ffffb097          	auipc	ra,0xffffb
    80006604:	f38080e7          	jalr	-200(ra) # 80001538 <putc>
    //todo
    //placeholder
    printString("Buffer deleted!\n");
    80006608:	00003517          	auipc	a0,0x3
    8000660c:	f6850513          	addi	a0,a0,-152 # 80009570 <_ZL6digits+0x48>
    80006610:	fffff097          	auipc	ra,0xfffff
    80006614:	674080e7          	jalr	1652(ra) # 80005c84 <_Z11printStringPKc>
    while (head != tail) {
    80006618:	0104a783          	lw	a5,16(s1)
    8000661c:	0144a703          	lw	a4,20(s1)
    80006620:	00e78c63          	beq	a5,a4,80006638 <_ZN6BufferD1Ev+0x54>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80006624:	0017879b          	addiw	a5,a5,1
    80006628:	0004a703          	lw	a4,0(s1)
    8000662c:	02e7e7bb          	remw	a5,a5,a4
    80006630:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80006634:	fe5ff06f          	j	80006618 <_ZN6BufferD1Ev+0x34>
    }
    putc('!');
    80006638:	02100513          	li	a0,33
    8000663c:	ffffb097          	auipc	ra,0xffffb
    80006640:	efc080e7          	jalr	-260(ra) # 80001538 <putc>
    putc('\n');
    80006644:	00a00513          	li	a0,10
    80006648:	ffffb097          	auipc	ra,0xffffb
    8000664c:	ef0080e7          	jalr	-272(ra) # 80001538 <putc>

    mem_free(buffer);
    80006650:	0084b503          	ld	a0,8(s1)
    80006654:	ffffb097          	auipc	ra,0xffffb
    80006658:	c34080e7          	jalr	-972(ra) # 80001288 <mem_free>
    sem_close(itemAvailable);
    8000665c:	0204b503          	ld	a0,32(s1)
    80006660:	ffffb097          	auipc	ra,0xffffb
    80006664:	d54080e7          	jalr	-684(ra) # 800013b4 <sem_close>
    sem_close(spaceAvailable);
    80006668:	0184b503          	ld	a0,24(s1)
    8000666c:	ffffb097          	auipc	ra,0xffffb
    80006670:	d48080e7          	jalr	-696(ra) # 800013b4 <sem_close>
    sem_close(mutexTail);
    80006674:	0304b503          	ld	a0,48(s1)
    80006678:	ffffb097          	auipc	ra,0xffffb
    8000667c:	d3c080e7          	jalr	-708(ra) # 800013b4 <sem_close>
    sem_close(mutexHead);
    80006680:	0284b503          	ld	a0,40(s1)
    80006684:	ffffb097          	auipc	ra,0xffffb
    80006688:	d30080e7          	jalr	-720(ra) # 800013b4 <sem_close>
}
    8000668c:	01813083          	ld	ra,24(sp)
    80006690:	01013403          	ld	s0,16(sp)
    80006694:	00813483          	ld	s1,8(sp)
    80006698:	02010113          	addi	sp,sp,32
    8000669c:	00008067          	ret

00000000800066a0 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    800066a0:	fe010113          	addi	sp,sp,-32
    800066a4:	00113c23          	sd	ra,24(sp)
    800066a8:	00813823          	sd	s0,16(sp)
    800066ac:	00913423          	sd	s1,8(sp)
    800066b0:	01213023          	sd	s2,0(sp)
    800066b4:	02010413          	addi	s0,sp,32
    800066b8:	00050493          	mv	s1,a0
    800066bc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800066c0:	01853503          	ld	a0,24(a0)
    800066c4:	ffffb097          	auipc	ra,0xffffb
    800066c8:	d1c080e7          	jalr	-740(ra) # 800013e0 <sem_wait>

    sem_wait(mutexTail);
    800066cc:	0304b503          	ld	a0,48(s1)
    800066d0:	ffffb097          	auipc	ra,0xffffb
    800066d4:	d10080e7          	jalr	-752(ra) # 800013e0 <sem_wait>
    buffer[tail] = val;
    800066d8:	0084b783          	ld	a5,8(s1)
    800066dc:	0144a703          	lw	a4,20(s1)
    800066e0:	00271713          	slli	a4,a4,0x2
    800066e4:	00e787b3          	add	a5,a5,a4
    800066e8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800066ec:	0144a783          	lw	a5,20(s1)
    800066f0:	0017879b          	addiw	a5,a5,1
    800066f4:	0004a703          	lw	a4,0(s1)
    800066f8:	02e7e7bb          	remw	a5,a5,a4
    800066fc:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006700:	0304b503          	ld	a0,48(s1)
    80006704:	ffffb097          	auipc	ra,0xffffb
    80006708:	d08080e7          	jalr	-760(ra) # 8000140c <sem_signal>

    sem_signal(itemAvailable);
    8000670c:	0204b503          	ld	a0,32(s1)
    80006710:	ffffb097          	auipc	ra,0xffffb
    80006714:	cfc080e7          	jalr	-772(ra) # 8000140c <sem_signal>

}
    80006718:	01813083          	ld	ra,24(sp)
    8000671c:	01013403          	ld	s0,16(sp)
    80006720:	00813483          	ld	s1,8(sp)
    80006724:	00013903          	ld	s2,0(sp)
    80006728:	02010113          	addi	sp,sp,32
    8000672c:	00008067          	ret

0000000080006730 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006730:	fe010113          	addi	sp,sp,-32
    80006734:	00113c23          	sd	ra,24(sp)
    80006738:	00813823          	sd	s0,16(sp)
    8000673c:	00913423          	sd	s1,8(sp)
    80006740:	01213023          	sd	s2,0(sp)
    80006744:	02010413          	addi	s0,sp,32
    80006748:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000674c:	02053503          	ld	a0,32(a0)
    80006750:	ffffb097          	auipc	ra,0xffffb
    80006754:	c90080e7          	jalr	-880(ra) # 800013e0 <sem_wait>

    sem_wait(mutexHead);
    80006758:	0284b503          	ld	a0,40(s1)
    8000675c:	ffffb097          	auipc	ra,0xffffb
    80006760:	c84080e7          	jalr	-892(ra) # 800013e0 <sem_wait>

    int ret = buffer[head];
    80006764:	0084b703          	ld	a4,8(s1)
    80006768:	0104a783          	lw	a5,16(s1)
    8000676c:	00279693          	slli	a3,a5,0x2
    80006770:	00d70733          	add	a4,a4,a3
    80006774:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006778:	0017879b          	addiw	a5,a5,1
    8000677c:	0004a703          	lw	a4,0(s1)
    80006780:	02e7e7bb          	remw	a5,a5,a4
    80006784:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006788:	0284b503          	ld	a0,40(s1)
    8000678c:	ffffb097          	auipc	ra,0xffffb
    80006790:	c80080e7          	jalr	-896(ra) # 8000140c <sem_signal>

    sem_signal(spaceAvailable);
    80006794:	0184b503          	ld	a0,24(s1)
    80006798:	ffffb097          	auipc	ra,0xffffb
    8000679c:	c74080e7          	jalr	-908(ra) # 8000140c <sem_signal>

    return ret;
}
    800067a0:	00090513          	mv	a0,s2
    800067a4:	01813083          	ld	ra,24(sp)
    800067a8:	01013403          	ld	s0,16(sp)
    800067ac:	00813483          	ld	s1,8(sp)
    800067b0:	00013903          	ld	s2,0(sp)
    800067b4:	02010113          	addi	sp,sp,32
    800067b8:	00008067          	ret

00000000800067bc <start>:
    800067bc:	ff010113          	addi	sp,sp,-16
    800067c0:	00813423          	sd	s0,8(sp)
    800067c4:	01010413          	addi	s0,sp,16
    800067c8:	300027f3          	csrr	a5,mstatus
    800067cc:	ffffe737          	lui	a4,0xffffe
    800067d0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff18af>
    800067d4:	00e7f7b3          	and	a5,a5,a4
    800067d8:	00001737          	lui	a4,0x1
    800067dc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800067e0:	00e7e7b3          	or	a5,a5,a4
    800067e4:	30079073          	csrw	mstatus,a5
    800067e8:	00000797          	auipc	a5,0x0
    800067ec:	16078793          	addi	a5,a5,352 # 80006948 <system_main>
    800067f0:	34179073          	csrw	mepc,a5
    800067f4:	00000793          	li	a5,0
    800067f8:	18079073          	csrw	satp,a5
    800067fc:	000107b7          	lui	a5,0x10
    80006800:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006804:	30279073          	csrw	medeleg,a5
    80006808:	30379073          	csrw	mideleg,a5
    8000680c:	104027f3          	csrr	a5,sie
    80006810:	2227e793          	ori	a5,a5,546
    80006814:	10479073          	csrw	sie,a5
    80006818:	fff00793          	li	a5,-1
    8000681c:	00a7d793          	srli	a5,a5,0xa
    80006820:	3b079073          	csrw	pmpaddr0,a5
    80006824:	00f00793          	li	a5,15
    80006828:	3a079073          	csrw	pmpcfg0,a5
    8000682c:	f14027f3          	csrr	a5,mhartid
    80006830:	0200c737          	lui	a4,0x200c
    80006834:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006838:	0007869b          	sext.w	a3,a5
    8000683c:	00269713          	slli	a4,a3,0x2
    80006840:	000f4637          	lui	a2,0xf4
    80006844:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006848:	00d70733          	add	a4,a4,a3
    8000684c:	0037979b          	slliw	a5,a5,0x3
    80006850:	020046b7          	lui	a3,0x2004
    80006854:	00d787b3          	add	a5,a5,a3
    80006858:	00c585b3          	add	a1,a1,a2
    8000685c:	00371693          	slli	a3,a4,0x3
    80006860:	00005717          	auipc	a4,0x5
    80006864:	49070713          	addi	a4,a4,1168 # 8000bcf0 <timer_scratch>
    80006868:	00b7b023          	sd	a1,0(a5)
    8000686c:	00d70733          	add	a4,a4,a3
    80006870:	00f73c23          	sd	a5,24(a4)
    80006874:	02c73023          	sd	a2,32(a4)
    80006878:	34071073          	csrw	mscratch,a4
    8000687c:	00000797          	auipc	a5,0x0
    80006880:	6e478793          	addi	a5,a5,1764 # 80006f60 <timervec>
    80006884:	30579073          	csrw	mtvec,a5
    80006888:	300027f3          	csrr	a5,mstatus
    8000688c:	0087e793          	ori	a5,a5,8
    80006890:	30079073          	csrw	mstatus,a5
    80006894:	304027f3          	csrr	a5,mie
    80006898:	0807e793          	ori	a5,a5,128
    8000689c:	30479073          	csrw	mie,a5
    800068a0:	f14027f3          	csrr	a5,mhartid
    800068a4:	0007879b          	sext.w	a5,a5
    800068a8:	00078213          	mv	tp,a5
    800068ac:	30200073          	mret
    800068b0:	00813403          	ld	s0,8(sp)
    800068b4:	01010113          	addi	sp,sp,16
    800068b8:	00008067          	ret

00000000800068bc <timerinit>:
    800068bc:	ff010113          	addi	sp,sp,-16
    800068c0:	00813423          	sd	s0,8(sp)
    800068c4:	01010413          	addi	s0,sp,16
    800068c8:	f14027f3          	csrr	a5,mhartid
    800068cc:	0200c737          	lui	a4,0x200c
    800068d0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800068d4:	0007869b          	sext.w	a3,a5
    800068d8:	00269713          	slli	a4,a3,0x2
    800068dc:	000f4637          	lui	a2,0xf4
    800068e0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800068e4:	00d70733          	add	a4,a4,a3
    800068e8:	0037979b          	slliw	a5,a5,0x3
    800068ec:	020046b7          	lui	a3,0x2004
    800068f0:	00d787b3          	add	a5,a5,a3
    800068f4:	00c585b3          	add	a1,a1,a2
    800068f8:	00371693          	slli	a3,a4,0x3
    800068fc:	00005717          	auipc	a4,0x5
    80006900:	3f470713          	addi	a4,a4,1012 # 8000bcf0 <timer_scratch>
    80006904:	00b7b023          	sd	a1,0(a5)
    80006908:	00d70733          	add	a4,a4,a3
    8000690c:	00f73c23          	sd	a5,24(a4)
    80006910:	02c73023          	sd	a2,32(a4)
    80006914:	34071073          	csrw	mscratch,a4
    80006918:	00000797          	auipc	a5,0x0
    8000691c:	64878793          	addi	a5,a5,1608 # 80006f60 <timervec>
    80006920:	30579073          	csrw	mtvec,a5
    80006924:	300027f3          	csrr	a5,mstatus
    80006928:	0087e793          	ori	a5,a5,8
    8000692c:	30079073          	csrw	mstatus,a5
    80006930:	304027f3          	csrr	a5,mie
    80006934:	0807e793          	ori	a5,a5,128
    80006938:	30479073          	csrw	mie,a5
    8000693c:	00813403          	ld	s0,8(sp)
    80006940:	01010113          	addi	sp,sp,16
    80006944:	00008067          	ret

0000000080006948 <system_main>:
    80006948:	fe010113          	addi	sp,sp,-32
    8000694c:	00813823          	sd	s0,16(sp)
    80006950:	00913423          	sd	s1,8(sp)
    80006954:	00113c23          	sd	ra,24(sp)
    80006958:	02010413          	addi	s0,sp,32
    8000695c:	00000097          	auipc	ra,0x0
    80006960:	0c4080e7          	jalr	196(ra) # 80006a20 <cpuid>
    80006964:	00005497          	auipc	s1,0x5
    80006968:	26c48493          	addi	s1,s1,620 # 8000bbd0 <started>
    8000696c:	02050263          	beqz	a0,80006990 <system_main+0x48>
    80006970:	0004a783          	lw	a5,0(s1)
    80006974:	0007879b          	sext.w	a5,a5
    80006978:	fe078ce3          	beqz	a5,80006970 <system_main+0x28>
    8000697c:	0ff0000f          	fence
    80006980:	00003517          	auipc	a0,0x3
    80006984:	c3850513          	addi	a0,a0,-968 # 800095b8 <_ZL6digits+0x90>
    80006988:	00001097          	auipc	ra,0x1
    8000698c:	a74080e7          	jalr	-1420(ra) # 800073fc <panic>
    80006990:	00001097          	auipc	ra,0x1
    80006994:	9c8080e7          	jalr	-1592(ra) # 80007358 <consoleinit>
    80006998:	00001097          	auipc	ra,0x1
    8000699c:	154080e7          	jalr	340(ra) # 80007aec <printfinit>
    800069a0:	00002517          	auipc	a0,0x2
    800069a4:	76050513          	addi	a0,a0,1888 # 80009100 <CONSOLE_STATUS+0xf0>
    800069a8:	00001097          	auipc	ra,0x1
    800069ac:	ab0080e7          	jalr	-1360(ra) # 80007458 <__printf>
    800069b0:	00003517          	auipc	a0,0x3
    800069b4:	bd850513          	addi	a0,a0,-1064 # 80009588 <_ZL6digits+0x60>
    800069b8:	00001097          	auipc	ra,0x1
    800069bc:	aa0080e7          	jalr	-1376(ra) # 80007458 <__printf>
    800069c0:	00002517          	auipc	a0,0x2
    800069c4:	74050513          	addi	a0,a0,1856 # 80009100 <CONSOLE_STATUS+0xf0>
    800069c8:	00001097          	auipc	ra,0x1
    800069cc:	a90080e7          	jalr	-1392(ra) # 80007458 <__printf>
    800069d0:	00001097          	auipc	ra,0x1
    800069d4:	4a8080e7          	jalr	1192(ra) # 80007e78 <kinit>
    800069d8:	00000097          	auipc	ra,0x0
    800069dc:	148080e7          	jalr	328(ra) # 80006b20 <trapinit>
    800069e0:	00000097          	auipc	ra,0x0
    800069e4:	16c080e7          	jalr	364(ra) # 80006b4c <trapinithart>
    800069e8:	00000097          	auipc	ra,0x0
    800069ec:	5b8080e7          	jalr	1464(ra) # 80006fa0 <plicinit>
    800069f0:	00000097          	auipc	ra,0x0
    800069f4:	5d8080e7          	jalr	1496(ra) # 80006fc8 <plicinithart>
    800069f8:	00000097          	auipc	ra,0x0
    800069fc:	078080e7          	jalr	120(ra) # 80006a70 <userinit>
    80006a00:	0ff0000f          	fence
    80006a04:	00100793          	li	a5,1
    80006a08:	00003517          	auipc	a0,0x3
    80006a0c:	b9850513          	addi	a0,a0,-1128 # 800095a0 <_ZL6digits+0x78>
    80006a10:	00f4a023          	sw	a5,0(s1)
    80006a14:	00001097          	auipc	ra,0x1
    80006a18:	a44080e7          	jalr	-1468(ra) # 80007458 <__printf>
    80006a1c:	0000006f          	j	80006a1c <system_main+0xd4>

0000000080006a20 <cpuid>:
    80006a20:	ff010113          	addi	sp,sp,-16
    80006a24:	00813423          	sd	s0,8(sp)
    80006a28:	01010413          	addi	s0,sp,16
    80006a2c:	00020513          	mv	a0,tp
    80006a30:	00813403          	ld	s0,8(sp)
    80006a34:	0005051b          	sext.w	a0,a0
    80006a38:	01010113          	addi	sp,sp,16
    80006a3c:	00008067          	ret

0000000080006a40 <mycpu>:
    80006a40:	ff010113          	addi	sp,sp,-16
    80006a44:	00813423          	sd	s0,8(sp)
    80006a48:	01010413          	addi	s0,sp,16
    80006a4c:	00020793          	mv	a5,tp
    80006a50:	00813403          	ld	s0,8(sp)
    80006a54:	0007879b          	sext.w	a5,a5
    80006a58:	00779793          	slli	a5,a5,0x7
    80006a5c:	00006517          	auipc	a0,0x6
    80006a60:	2c450513          	addi	a0,a0,708 # 8000cd20 <cpus>
    80006a64:	00f50533          	add	a0,a0,a5
    80006a68:	01010113          	addi	sp,sp,16
    80006a6c:	00008067          	ret

0000000080006a70 <userinit>:
    80006a70:	ff010113          	addi	sp,sp,-16
    80006a74:	00813423          	sd	s0,8(sp)
    80006a78:	01010413          	addi	s0,sp,16
    80006a7c:	00813403          	ld	s0,8(sp)
    80006a80:	01010113          	addi	sp,sp,16
    80006a84:	ffffd317          	auipc	t1,0xffffd
    80006a88:	bac30067          	jr	-1108(t1) # 80003630 <main>

0000000080006a8c <either_copyout>:
    80006a8c:	ff010113          	addi	sp,sp,-16
    80006a90:	00813023          	sd	s0,0(sp)
    80006a94:	00113423          	sd	ra,8(sp)
    80006a98:	01010413          	addi	s0,sp,16
    80006a9c:	02051663          	bnez	a0,80006ac8 <either_copyout+0x3c>
    80006aa0:	00058513          	mv	a0,a1
    80006aa4:	00060593          	mv	a1,a2
    80006aa8:	0006861b          	sext.w	a2,a3
    80006aac:	00002097          	auipc	ra,0x2
    80006ab0:	c58080e7          	jalr	-936(ra) # 80008704 <__memmove>
    80006ab4:	00813083          	ld	ra,8(sp)
    80006ab8:	00013403          	ld	s0,0(sp)
    80006abc:	00000513          	li	a0,0
    80006ac0:	01010113          	addi	sp,sp,16
    80006ac4:	00008067          	ret
    80006ac8:	00003517          	auipc	a0,0x3
    80006acc:	b1850513          	addi	a0,a0,-1256 # 800095e0 <_ZL6digits+0xb8>
    80006ad0:	00001097          	auipc	ra,0x1
    80006ad4:	92c080e7          	jalr	-1748(ra) # 800073fc <panic>

0000000080006ad8 <either_copyin>:
    80006ad8:	ff010113          	addi	sp,sp,-16
    80006adc:	00813023          	sd	s0,0(sp)
    80006ae0:	00113423          	sd	ra,8(sp)
    80006ae4:	01010413          	addi	s0,sp,16
    80006ae8:	02059463          	bnez	a1,80006b10 <either_copyin+0x38>
    80006aec:	00060593          	mv	a1,a2
    80006af0:	0006861b          	sext.w	a2,a3
    80006af4:	00002097          	auipc	ra,0x2
    80006af8:	c10080e7          	jalr	-1008(ra) # 80008704 <__memmove>
    80006afc:	00813083          	ld	ra,8(sp)
    80006b00:	00013403          	ld	s0,0(sp)
    80006b04:	00000513          	li	a0,0
    80006b08:	01010113          	addi	sp,sp,16
    80006b0c:	00008067          	ret
    80006b10:	00003517          	auipc	a0,0x3
    80006b14:	af850513          	addi	a0,a0,-1288 # 80009608 <_ZL6digits+0xe0>
    80006b18:	00001097          	auipc	ra,0x1
    80006b1c:	8e4080e7          	jalr	-1820(ra) # 800073fc <panic>

0000000080006b20 <trapinit>:
    80006b20:	ff010113          	addi	sp,sp,-16
    80006b24:	00813423          	sd	s0,8(sp)
    80006b28:	01010413          	addi	s0,sp,16
    80006b2c:	00813403          	ld	s0,8(sp)
    80006b30:	00003597          	auipc	a1,0x3
    80006b34:	b0058593          	addi	a1,a1,-1280 # 80009630 <_ZL6digits+0x108>
    80006b38:	00006517          	auipc	a0,0x6
    80006b3c:	26850513          	addi	a0,a0,616 # 8000cda0 <tickslock>
    80006b40:	01010113          	addi	sp,sp,16
    80006b44:	00001317          	auipc	t1,0x1
    80006b48:	5c430067          	jr	1476(t1) # 80008108 <initlock>

0000000080006b4c <trapinithart>:
    80006b4c:	ff010113          	addi	sp,sp,-16
    80006b50:	00813423          	sd	s0,8(sp)
    80006b54:	01010413          	addi	s0,sp,16
    80006b58:	00000797          	auipc	a5,0x0
    80006b5c:	2f878793          	addi	a5,a5,760 # 80006e50 <kernelvec>
    80006b60:	10579073          	csrw	stvec,a5
    80006b64:	00813403          	ld	s0,8(sp)
    80006b68:	01010113          	addi	sp,sp,16
    80006b6c:	00008067          	ret

0000000080006b70 <usertrap>:
    80006b70:	ff010113          	addi	sp,sp,-16
    80006b74:	00813423          	sd	s0,8(sp)
    80006b78:	01010413          	addi	s0,sp,16
    80006b7c:	00813403          	ld	s0,8(sp)
    80006b80:	01010113          	addi	sp,sp,16
    80006b84:	00008067          	ret

0000000080006b88 <usertrapret>:
    80006b88:	ff010113          	addi	sp,sp,-16
    80006b8c:	00813423          	sd	s0,8(sp)
    80006b90:	01010413          	addi	s0,sp,16
    80006b94:	00813403          	ld	s0,8(sp)
    80006b98:	01010113          	addi	sp,sp,16
    80006b9c:	00008067          	ret

0000000080006ba0 <kerneltrap>:
    80006ba0:	fe010113          	addi	sp,sp,-32
    80006ba4:	00813823          	sd	s0,16(sp)
    80006ba8:	00113c23          	sd	ra,24(sp)
    80006bac:	00913423          	sd	s1,8(sp)
    80006bb0:	02010413          	addi	s0,sp,32
    80006bb4:	142025f3          	csrr	a1,scause
    80006bb8:	100027f3          	csrr	a5,sstatus
    80006bbc:	0027f793          	andi	a5,a5,2
    80006bc0:	10079c63          	bnez	a5,80006cd8 <kerneltrap+0x138>
    80006bc4:	142027f3          	csrr	a5,scause
    80006bc8:	0207ce63          	bltz	a5,80006c04 <kerneltrap+0x64>
    80006bcc:	00003517          	auipc	a0,0x3
    80006bd0:	aac50513          	addi	a0,a0,-1364 # 80009678 <_ZL6digits+0x150>
    80006bd4:	00001097          	auipc	ra,0x1
    80006bd8:	884080e7          	jalr	-1916(ra) # 80007458 <__printf>
    80006bdc:	141025f3          	csrr	a1,sepc
    80006be0:	14302673          	csrr	a2,stval
    80006be4:	00003517          	auipc	a0,0x3
    80006be8:	aa450513          	addi	a0,a0,-1372 # 80009688 <_ZL6digits+0x160>
    80006bec:	00001097          	auipc	ra,0x1
    80006bf0:	86c080e7          	jalr	-1940(ra) # 80007458 <__printf>
    80006bf4:	00003517          	auipc	a0,0x3
    80006bf8:	aac50513          	addi	a0,a0,-1364 # 800096a0 <_ZL6digits+0x178>
    80006bfc:	00001097          	auipc	ra,0x1
    80006c00:	800080e7          	jalr	-2048(ra) # 800073fc <panic>
    80006c04:	0ff7f713          	andi	a4,a5,255
    80006c08:	00900693          	li	a3,9
    80006c0c:	04d70063          	beq	a4,a3,80006c4c <kerneltrap+0xac>
    80006c10:	fff00713          	li	a4,-1
    80006c14:	03f71713          	slli	a4,a4,0x3f
    80006c18:	00170713          	addi	a4,a4,1
    80006c1c:	fae798e3          	bne	a5,a4,80006bcc <kerneltrap+0x2c>
    80006c20:	00000097          	auipc	ra,0x0
    80006c24:	e00080e7          	jalr	-512(ra) # 80006a20 <cpuid>
    80006c28:	06050663          	beqz	a0,80006c94 <kerneltrap+0xf4>
    80006c2c:	144027f3          	csrr	a5,sip
    80006c30:	ffd7f793          	andi	a5,a5,-3
    80006c34:	14479073          	csrw	sip,a5
    80006c38:	01813083          	ld	ra,24(sp)
    80006c3c:	01013403          	ld	s0,16(sp)
    80006c40:	00813483          	ld	s1,8(sp)
    80006c44:	02010113          	addi	sp,sp,32
    80006c48:	00008067          	ret
    80006c4c:	00000097          	auipc	ra,0x0
    80006c50:	3c8080e7          	jalr	968(ra) # 80007014 <plic_claim>
    80006c54:	00a00793          	li	a5,10
    80006c58:	00050493          	mv	s1,a0
    80006c5c:	06f50863          	beq	a0,a5,80006ccc <kerneltrap+0x12c>
    80006c60:	fc050ce3          	beqz	a0,80006c38 <kerneltrap+0x98>
    80006c64:	00050593          	mv	a1,a0
    80006c68:	00003517          	auipc	a0,0x3
    80006c6c:	9f050513          	addi	a0,a0,-1552 # 80009658 <_ZL6digits+0x130>
    80006c70:	00000097          	auipc	ra,0x0
    80006c74:	7e8080e7          	jalr	2024(ra) # 80007458 <__printf>
    80006c78:	01013403          	ld	s0,16(sp)
    80006c7c:	01813083          	ld	ra,24(sp)
    80006c80:	00048513          	mv	a0,s1
    80006c84:	00813483          	ld	s1,8(sp)
    80006c88:	02010113          	addi	sp,sp,32
    80006c8c:	00000317          	auipc	t1,0x0
    80006c90:	3c030067          	jr	960(t1) # 8000704c <plic_complete>
    80006c94:	00006517          	auipc	a0,0x6
    80006c98:	10c50513          	addi	a0,a0,268 # 8000cda0 <tickslock>
    80006c9c:	00001097          	auipc	ra,0x1
    80006ca0:	490080e7          	jalr	1168(ra) # 8000812c <acquire>
    80006ca4:	00005717          	auipc	a4,0x5
    80006ca8:	f3070713          	addi	a4,a4,-208 # 8000bbd4 <ticks>
    80006cac:	00072783          	lw	a5,0(a4)
    80006cb0:	00006517          	auipc	a0,0x6
    80006cb4:	0f050513          	addi	a0,a0,240 # 8000cda0 <tickslock>
    80006cb8:	0017879b          	addiw	a5,a5,1
    80006cbc:	00f72023          	sw	a5,0(a4)
    80006cc0:	00001097          	auipc	ra,0x1
    80006cc4:	538080e7          	jalr	1336(ra) # 800081f8 <release>
    80006cc8:	f65ff06f          	j	80006c2c <kerneltrap+0x8c>
    80006ccc:	00001097          	auipc	ra,0x1
    80006cd0:	094080e7          	jalr	148(ra) # 80007d60 <uartintr>
    80006cd4:	fa5ff06f          	j	80006c78 <kerneltrap+0xd8>
    80006cd8:	00003517          	auipc	a0,0x3
    80006cdc:	96050513          	addi	a0,a0,-1696 # 80009638 <_ZL6digits+0x110>
    80006ce0:	00000097          	auipc	ra,0x0
    80006ce4:	71c080e7          	jalr	1820(ra) # 800073fc <panic>

0000000080006ce8 <clockintr>:
    80006ce8:	fe010113          	addi	sp,sp,-32
    80006cec:	00813823          	sd	s0,16(sp)
    80006cf0:	00913423          	sd	s1,8(sp)
    80006cf4:	00113c23          	sd	ra,24(sp)
    80006cf8:	02010413          	addi	s0,sp,32
    80006cfc:	00006497          	auipc	s1,0x6
    80006d00:	0a448493          	addi	s1,s1,164 # 8000cda0 <tickslock>
    80006d04:	00048513          	mv	a0,s1
    80006d08:	00001097          	auipc	ra,0x1
    80006d0c:	424080e7          	jalr	1060(ra) # 8000812c <acquire>
    80006d10:	00005717          	auipc	a4,0x5
    80006d14:	ec470713          	addi	a4,a4,-316 # 8000bbd4 <ticks>
    80006d18:	00072783          	lw	a5,0(a4)
    80006d1c:	01013403          	ld	s0,16(sp)
    80006d20:	01813083          	ld	ra,24(sp)
    80006d24:	00048513          	mv	a0,s1
    80006d28:	0017879b          	addiw	a5,a5,1
    80006d2c:	00813483          	ld	s1,8(sp)
    80006d30:	00f72023          	sw	a5,0(a4)
    80006d34:	02010113          	addi	sp,sp,32
    80006d38:	00001317          	auipc	t1,0x1
    80006d3c:	4c030067          	jr	1216(t1) # 800081f8 <release>

0000000080006d40 <devintr>:
    80006d40:	142027f3          	csrr	a5,scause
    80006d44:	00000513          	li	a0,0
    80006d48:	0007c463          	bltz	a5,80006d50 <devintr+0x10>
    80006d4c:	00008067          	ret
    80006d50:	fe010113          	addi	sp,sp,-32
    80006d54:	00813823          	sd	s0,16(sp)
    80006d58:	00113c23          	sd	ra,24(sp)
    80006d5c:	00913423          	sd	s1,8(sp)
    80006d60:	02010413          	addi	s0,sp,32
    80006d64:	0ff7f713          	andi	a4,a5,255
    80006d68:	00900693          	li	a3,9
    80006d6c:	04d70c63          	beq	a4,a3,80006dc4 <devintr+0x84>
    80006d70:	fff00713          	li	a4,-1
    80006d74:	03f71713          	slli	a4,a4,0x3f
    80006d78:	00170713          	addi	a4,a4,1
    80006d7c:	00e78c63          	beq	a5,a4,80006d94 <devintr+0x54>
    80006d80:	01813083          	ld	ra,24(sp)
    80006d84:	01013403          	ld	s0,16(sp)
    80006d88:	00813483          	ld	s1,8(sp)
    80006d8c:	02010113          	addi	sp,sp,32
    80006d90:	00008067          	ret
    80006d94:	00000097          	auipc	ra,0x0
    80006d98:	c8c080e7          	jalr	-884(ra) # 80006a20 <cpuid>
    80006d9c:	06050663          	beqz	a0,80006e08 <devintr+0xc8>
    80006da0:	144027f3          	csrr	a5,sip
    80006da4:	ffd7f793          	andi	a5,a5,-3
    80006da8:	14479073          	csrw	sip,a5
    80006dac:	01813083          	ld	ra,24(sp)
    80006db0:	01013403          	ld	s0,16(sp)
    80006db4:	00813483          	ld	s1,8(sp)
    80006db8:	00200513          	li	a0,2
    80006dbc:	02010113          	addi	sp,sp,32
    80006dc0:	00008067          	ret
    80006dc4:	00000097          	auipc	ra,0x0
    80006dc8:	250080e7          	jalr	592(ra) # 80007014 <plic_claim>
    80006dcc:	00a00793          	li	a5,10
    80006dd0:	00050493          	mv	s1,a0
    80006dd4:	06f50663          	beq	a0,a5,80006e40 <devintr+0x100>
    80006dd8:	00100513          	li	a0,1
    80006ddc:	fa0482e3          	beqz	s1,80006d80 <devintr+0x40>
    80006de0:	00048593          	mv	a1,s1
    80006de4:	00003517          	auipc	a0,0x3
    80006de8:	87450513          	addi	a0,a0,-1932 # 80009658 <_ZL6digits+0x130>
    80006dec:	00000097          	auipc	ra,0x0
    80006df0:	66c080e7          	jalr	1644(ra) # 80007458 <__printf>
    80006df4:	00048513          	mv	a0,s1
    80006df8:	00000097          	auipc	ra,0x0
    80006dfc:	254080e7          	jalr	596(ra) # 8000704c <plic_complete>
    80006e00:	00100513          	li	a0,1
    80006e04:	f7dff06f          	j	80006d80 <devintr+0x40>
    80006e08:	00006517          	auipc	a0,0x6
    80006e0c:	f9850513          	addi	a0,a0,-104 # 8000cda0 <tickslock>
    80006e10:	00001097          	auipc	ra,0x1
    80006e14:	31c080e7          	jalr	796(ra) # 8000812c <acquire>
    80006e18:	00005717          	auipc	a4,0x5
    80006e1c:	dbc70713          	addi	a4,a4,-580 # 8000bbd4 <ticks>
    80006e20:	00072783          	lw	a5,0(a4)
    80006e24:	00006517          	auipc	a0,0x6
    80006e28:	f7c50513          	addi	a0,a0,-132 # 8000cda0 <tickslock>
    80006e2c:	0017879b          	addiw	a5,a5,1
    80006e30:	00f72023          	sw	a5,0(a4)
    80006e34:	00001097          	auipc	ra,0x1
    80006e38:	3c4080e7          	jalr	964(ra) # 800081f8 <release>
    80006e3c:	f65ff06f          	j	80006da0 <devintr+0x60>
    80006e40:	00001097          	auipc	ra,0x1
    80006e44:	f20080e7          	jalr	-224(ra) # 80007d60 <uartintr>
    80006e48:	fadff06f          	j	80006df4 <devintr+0xb4>
    80006e4c:	0000                	unimp
	...

0000000080006e50 <kernelvec>:
    80006e50:	f0010113          	addi	sp,sp,-256
    80006e54:	00113023          	sd	ra,0(sp)
    80006e58:	00213423          	sd	sp,8(sp)
    80006e5c:	00313823          	sd	gp,16(sp)
    80006e60:	00413c23          	sd	tp,24(sp)
    80006e64:	02513023          	sd	t0,32(sp)
    80006e68:	02613423          	sd	t1,40(sp)
    80006e6c:	02713823          	sd	t2,48(sp)
    80006e70:	02813c23          	sd	s0,56(sp)
    80006e74:	04913023          	sd	s1,64(sp)
    80006e78:	04a13423          	sd	a0,72(sp)
    80006e7c:	04b13823          	sd	a1,80(sp)
    80006e80:	04c13c23          	sd	a2,88(sp)
    80006e84:	06d13023          	sd	a3,96(sp)
    80006e88:	06e13423          	sd	a4,104(sp)
    80006e8c:	06f13823          	sd	a5,112(sp)
    80006e90:	07013c23          	sd	a6,120(sp)
    80006e94:	09113023          	sd	a7,128(sp)
    80006e98:	09213423          	sd	s2,136(sp)
    80006e9c:	09313823          	sd	s3,144(sp)
    80006ea0:	09413c23          	sd	s4,152(sp)
    80006ea4:	0b513023          	sd	s5,160(sp)
    80006ea8:	0b613423          	sd	s6,168(sp)
    80006eac:	0b713823          	sd	s7,176(sp)
    80006eb0:	0b813c23          	sd	s8,184(sp)
    80006eb4:	0d913023          	sd	s9,192(sp)
    80006eb8:	0da13423          	sd	s10,200(sp)
    80006ebc:	0db13823          	sd	s11,208(sp)
    80006ec0:	0dc13c23          	sd	t3,216(sp)
    80006ec4:	0fd13023          	sd	t4,224(sp)
    80006ec8:	0fe13423          	sd	t5,232(sp)
    80006ecc:	0ff13823          	sd	t6,240(sp)
    80006ed0:	cd1ff0ef          	jal	ra,80006ba0 <kerneltrap>
    80006ed4:	00013083          	ld	ra,0(sp)
    80006ed8:	00813103          	ld	sp,8(sp)
    80006edc:	01013183          	ld	gp,16(sp)
    80006ee0:	02013283          	ld	t0,32(sp)
    80006ee4:	02813303          	ld	t1,40(sp)
    80006ee8:	03013383          	ld	t2,48(sp)
    80006eec:	03813403          	ld	s0,56(sp)
    80006ef0:	04013483          	ld	s1,64(sp)
    80006ef4:	04813503          	ld	a0,72(sp)
    80006ef8:	05013583          	ld	a1,80(sp)
    80006efc:	05813603          	ld	a2,88(sp)
    80006f00:	06013683          	ld	a3,96(sp)
    80006f04:	06813703          	ld	a4,104(sp)
    80006f08:	07013783          	ld	a5,112(sp)
    80006f0c:	07813803          	ld	a6,120(sp)
    80006f10:	08013883          	ld	a7,128(sp)
    80006f14:	08813903          	ld	s2,136(sp)
    80006f18:	09013983          	ld	s3,144(sp)
    80006f1c:	09813a03          	ld	s4,152(sp)
    80006f20:	0a013a83          	ld	s5,160(sp)
    80006f24:	0a813b03          	ld	s6,168(sp)
    80006f28:	0b013b83          	ld	s7,176(sp)
    80006f2c:	0b813c03          	ld	s8,184(sp)
    80006f30:	0c013c83          	ld	s9,192(sp)
    80006f34:	0c813d03          	ld	s10,200(sp)
    80006f38:	0d013d83          	ld	s11,208(sp)
    80006f3c:	0d813e03          	ld	t3,216(sp)
    80006f40:	0e013e83          	ld	t4,224(sp)
    80006f44:	0e813f03          	ld	t5,232(sp)
    80006f48:	0f013f83          	ld	t6,240(sp)
    80006f4c:	10010113          	addi	sp,sp,256
    80006f50:	10200073          	sret
    80006f54:	00000013          	nop
    80006f58:	00000013          	nop
    80006f5c:	00000013          	nop

0000000080006f60 <timervec>:
    80006f60:	34051573          	csrrw	a0,mscratch,a0
    80006f64:	00b53023          	sd	a1,0(a0)
    80006f68:	00c53423          	sd	a2,8(a0)
    80006f6c:	00d53823          	sd	a3,16(a0)
    80006f70:	01853583          	ld	a1,24(a0)
    80006f74:	02053603          	ld	a2,32(a0)
    80006f78:	0005b683          	ld	a3,0(a1)
    80006f7c:	00c686b3          	add	a3,a3,a2
    80006f80:	00d5b023          	sd	a3,0(a1)
    80006f84:	00200593          	li	a1,2
    80006f88:	14459073          	csrw	sip,a1
    80006f8c:	01053683          	ld	a3,16(a0)
    80006f90:	00853603          	ld	a2,8(a0)
    80006f94:	00053583          	ld	a1,0(a0)
    80006f98:	34051573          	csrrw	a0,mscratch,a0
    80006f9c:	30200073          	mret

0000000080006fa0 <plicinit>:
    80006fa0:	ff010113          	addi	sp,sp,-16
    80006fa4:	00813423          	sd	s0,8(sp)
    80006fa8:	01010413          	addi	s0,sp,16
    80006fac:	00813403          	ld	s0,8(sp)
    80006fb0:	0c0007b7          	lui	a5,0xc000
    80006fb4:	00100713          	li	a4,1
    80006fb8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006fbc:	00e7a223          	sw	a4,4(a5)
    80006fc0:	01010113          	addi	sp,sp,16
    80006fc4:	00008067          	ret

0000000080006fc8 <plicinithart>:
    80006fc8:	ff010113          	addi	sp,sp,-16
    80006fcc:	00813023          	sd	s0,0(sp)
    80006fd0:	00113423          	sd	ra,8(sp)
    80006fd4:	01010413          	addi	s0,sp,16
    80006fd8:	00000097          	auipc	ra,0x0
    80006fdc:	a48080e7          	jalr	-1464(ra) # 80006a20 <cpuid>
    80006fe0:	0085171b          	slliw	a4,a0,0x8
    80006fe4:	0c0027b7          	lui	a5,0xc002
    80006fe8:	00e787b3          	add	a5,a5,a4
    80006fec:	40200713          	li	a4,1026
    80006ff0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006ff4:	00813083          	ld	ra,8(sp)
    80006ff8:	00013403          	ld	s0,0(sp)
    80006ffc:	00d5151b          	slliw	a0,a0,0xd
    80007000:	0c2017b7          	lui	a5,0xc201
    80007004:	00a78533          	add	a0,a5,a0
    80007008:	00052023          	sw	zero,0(a0)
    8000700c:	01010113          	addi	sp,sp,16
    80007010:	00008067          	ret

0000000080007014 <plic_claim>:
    80007014:	ff010113          	addi	sp,sp,-16
    80007018:	00813023          	sd	s0,0(sp)
    8000701c:	00113423          	sd	ra,8(sp)
    80007020:	01010413          	addi	s0,sp,16
    80007024:	00000097          	auipc	ra,0x0
    80007028:	9fc080e7          	jalr	-1540(ra) # 80006a20 <cpuid>
    8000702c:	00813083          	ld	ra,8(sp)
    80007030:	00013403          	ld	s0,0(sp)
    80007034:	00d5151b          	slliw	a0,a0,0xd
    80007038:	0c2017b7          	lui	a5,0xc201
    8000703c:	00a78533          	add	a0,a5,a0
    80007040:	00452503          	lw	a0,4(a0)
    80007044:	01010113          	addi	sp,sp,16
    80007048:	00008067          	ret

000000008000704c <plic_complete>:
    8000704c:	fe010113          	addi	sp,sp,-32
    80007050:	00813823          	sd	s0,16(sp)
    80007054:	00913423          	sd	s1,8(sp)
    80007058:	00113c23          	sd	ra,24(sp)
    8000705c:	02010413          	addi	s0,sp,32
    80007060:	00050493          	mv	s1,a0
    80007064:	00000097          	auipc	ra,0x0
    80007068:	9bc080e7          	jalr	-1604(ra) # 80006a20 <cpuid>
    8000706c:	01813083          	ld	ra,24(sp)
    80007070:	01013403          	ld	s0,16(sp)
    80007074:	00d5179b          	slliw	a5,a0,0xd
    80007078:	0c201737          	lui	a4,0xc201
    8000707c:	00f707b3          	add	a5,a4,a5
    80007080:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007084:	00813483          	ld	s1,8(sp)
    80007088:	02010113          	addi	sp,sp,32
    8000708c:	00008067          	ret

0000000080007090 <consolewrite>:
    80007090:	fb010113          	addi	sp,sp,-80
    80007094:	04813023          	sd	s0,64(sp)
    80007098:	04113423          	sd	ra,72(sp)
    8000709c:	02913c23          	sd	s1,56(sp)
    800070a0:	03213823          	sd	s2,48(sp)
    800070a4:	03313423          	sd	s3,40(sp)
    800070a8:	03413023          	sd	s4,32(sp)
    800070ac:	01513c23          	sd	s5,24(sp)
    800070b0:	05010413          	addi	s0,sp,80
    800070b4:	06c05c63          	blez	a2,8000712c <consolewrite+0x9c>
    800070b8:	00060993          	mv	s3,a2
    800070bc:	00050a13          	mv	s4,a0
    800070c0:	00058493          	mv	s1,a1
    800070c4:	00000913          	li	s2,0
    800070c8:	fff00a93          	li	s5,-1
    800070cc:	01c0006f          	j	800070e8 <consolewrite+0x58>
    800070d0:	fbf44503          	lbu	a0,-65(s0)
    800070d4:	0019091b          	addiw	s2,s2,1
    800070d8:	00148493          	addi	s1,s1,1
    800070dc:	00001097          	auipc	ra,0x1
    800070e0:	a9c080e7          	jalr	-1380(ra) # 80007b78 <uartputc>
    800070e4:	03298063          	beq	s3,s2,80007104 <consolewrite+0x74>
    800070e8:	00048613          	mv	a2,s1
    800070ec:	00100693          	li	a3,1
    800070f0:	000a0593          	mv	a1,s4
    800070f4:	fbf40513          	addi	a0,s0,-65
    800070f8:	00000097          	auipc	ra,0x0
    800070fc:	9e0080e7          	jalr	-1568(ra) # 80006ad8 <either_copyin>
    80007100:	fd5518e3          	bne	a0,s5,800070d0 <consolewrite+0x40>
    80007104:	04813083          	ld	ra,72(sp)
    80007108:	04013403          	ld	s0,64(sp)
    8000710c:	03813483          	ld	s1,56(sp)
    80007110:	02813983          	ld	s3,40(sp)
    80007114:	02013a03          	ld	s4,32(sp)
    80007118:	01813a83          	ld	s5,24(sp)
    8000711c:	00090513          	mv	a0,s2
    80007120:	03013903          	ld	s2,48(sp)
    80007124:	05010113          	addi	sp,sp,80
    80007128:	00008067          	ret
    8000712c:	00000913          	li	s2,0
    80007130:	fd5ff06f          	j	80007104 <consolewrite+0x74>

0000000080007134 <consoleread>:
    80007134:	f9010113          	addi	sp,sp,-112
    80007138:	06813023          	sd	s0,96(sp)
    8000713c:	04913c23          	sd	s1,88(sp)
    80007140:	05213823          	sd	s2,80(sp)
    80007144:	05313423          	sd	s3,72(sp)
    80007148:	05413023          	sd	s4,64(sp)
    8000714c:	03513c23          	sd	s5,56(sp)
    80007150:	03613823          	sd	s6,48(sp)
    80007154:	03713423          	sd	s7,40(sp)
    80007158:	03813023          	sd	s8,32(sp)
    8000715c:	06113423          	sd	ra,104(sp)
    80007160:	01913c23          	sd	s9,24(sp)
    80007164:	07010413          	addi	s0,sp,112
    80007168:	00060b93          	mv	s7,a2
    8000716c:	00050913          	mv	s2,a0
    80007170:	00058c13          	mv	s8,a1
    80007174:	00060b1b          	sext.w	s6,a2
    80007178:	00006497          	auipc	s1,0x6
    8000717c:	c5048493          	addi	s1,s1,-944 # 8000cdc8 <cons>
    80007180:	00400993          	li	s3,4
    80007184:	fff00a13          	li	s4,-1
    80007188:	00a00a93          	li	s5,10
    8000718c:	05705e63          	blez	s7,800071e8 <consoleread+0xb4>
    80007190:	09c4a703          	lw	a4,156(s1)
    80007194:	0984a783          	lw	a5,152(s1)
    80007198:	0007071b          	sext.w	a4,a4
    8000719c:	08e78463          	beq	a5,a4,80007224 <consoleread+0xf0>
    800071a0:	07f7f713          	andi	a4,a5,127
    800071a4:	00e48733          	add	a4,s1,a4
    800071a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800071ac:	0017869b          	addiw	a3,a5,1
    800071b0:	08d4ac23          	sw	a3,152(s1)
    800071b4:	00070c9b          	sext.w	s9,a4
    800071b8:	0b370663          	beq	a4,s3,80007264 <consoleread+0x130>
    800071bc:	00100693          	li	a3,1
    800071c0:	f9f40613          	addi	a2,s0,-97
    800071c4:	000c0593          	mv	a1,s8
    800071c8:	00090513          	mv	a0,s2
    800071cc:	f8e40fa3          	sb	a4,-97(s0)
    800071d0:	00000097          	auipc	ra,0x0
    800071d4:	8bc080e7          	jalr	-1860(ra) # 80006a8c <either_copyout>
    800071d8:	01450863          	beq	a0,s4,800071e8 <consoleread+0xb4>
    800071dc:	001c0c13          	addi	s8,s8,1
    800071e0:	fffb8b9b          	addiw	s7,s7,-1
    800071e4:	fb5c94e3          	bne	s9,s5,8000718c <consoleread+0x58>
    800071e8:	000b851b          	sext.w	a0,s7
    800071ec:	06813083          	ld	ra,104(sp)
    800071f0:	06013403          	ld	s0,96(sp)
    800071f4:	05813483          	ld	s1,88(sp)
    800071f8:	05013903          	ld	s2,80(sp)
    800071fc:	04813983          	ld	s3,72(sp)
    80007200:	04013a03          	ld	s4,64(sp)
    80007204:	03813a83          	ld	s5,56(sp)
    80007208:	02813b83          	ld	s7,40(sp)
    8000720c:	02013c03          	ld	s8,32(sp)
    80007210:	01813c83          	ld	s9,24(sp)
    80007214:	40ab053b          	subw	a0,s6,a0
    80007218:	03013b03          	ld	s6,48(sp)
    8000721c:	07010113          	addi	sp,sp,112
    80007220:	00008067          	ret
    80007224:	00001097          	auipc	ra,0x1
    80007228:	1d8080e7          	jalr	472(ra) # 800083fc <push_on>
    8000722c:	0984a703          	lw	a4,152(s1)
    80007230:	09c4a783          	lw	a5,156(s1)
    80007234:	0007879b          	sext.w	a5,a5
    80007238:	fef70ce3          	beq	a4,a5,80007230 <consoleread+0xfc>
    8000723c:	00001097          	auipc	ra,0x1
    80007240:	234080e7          	jalr	564(ra) # 80008470 <pop_on>
    80007244:	0984a783          	lw	a5,152(s1)
    80007248:	07f7f713          	andi	a4,a5,127
    8000724c:	00e48733          	add	a4,s1,a4
    80007250:	01874703          	lbu	a4,24(a4)
    80007254:	0017869b          	addiw	a3,a5,1
    80007258:	08d4ac23          	sw	a3,152(s1)
    8000725c:	00070c9b          	sext.w	s9,a4
    80007260:	f5371ee3          	bne	a4,s3,800071bc <consoleread+0x88>
    80007264:	000b851b          	sext.w	a0,s7
    80007268:	f96bf2e3          	bgeu	s7,s6,800071ec <consoleread+0xb8>
    8000726c:	08f4ac23          	sw	a5,152(s1)
    80007270:	f7dff06f          	j	800071ec <consoleread+0xb8>

0000000080007274 <consputc>:
    80007274:	10000793          	li	a5,256
    80007278:	00f50663          	beq	a0,a5,80007284 <consputc+0x10>
    8000727c:	00001317          	auipc	t1,0x1
    80007280:	9f430067          	jr	-1548(t1) # 80007c70 <uartputc_sync>
    80007284:	ff010113          	addi	sp,sp,-16
    80007288:	00113423          	sd	ra,8(sp)
    8000728c:	00813023          	sd	s0,0(sp)
    80007290:	01010413          	addi	s0,sp,16
    80007294:	00800513          	li	a0,8
    80007298:	00001097          	auipc	ra,0x1
    8000729c:	9d8080e7          	jalr	-1576(ra) # 80007c70 <uartputc_sync>
    800072a0:	02000513          	li	a0,32
    800072a4:	00001097          	auipc	ra,0x1
    800072a8:	9cc080e7          	jalr	-1588(ra) # 80007c70 <uartputc_sync>
    800072ac:	00013403          	ld	s0,0(sp)
    800072b0:	00813083          	ld	ra,8(sp)
    800072b4:	00800513          	li	a0,8
    800072b8:	01010113          	addi	sp,sp,16
    800072bc:	00001317          	auipc	t1,0x1
    800072c0:	9b430067          	jr	-1612(t1) # 80007c70 <uartputc_sync>

00000000800072c4 <consoleintr>:
    800072c4:	fe010113          	addi	sp,sp,-32
    800072c8:	00813823          	sd	s0,16(sp)
    800072cc:	00913423          	sd	s1,8(sp)
    800072d0:	01213023          	sd	s2,0(sp)
    800072d4:	00113c23          	sd	ra,24(sp)
    800072d8:	02010413          	addi	s0,sp,32
    800072dc:	00006917          	auipc	s2,0x6
    800072e0:	aec90913          	addi	s2,s2,-1300 # 8000cdc8 <cons>
    800072e4:	00050493          	mv	s1,a0
    800072e8:	00090513          	mv	a0,s2
    800072ec:	00001097          	auipc	ra,0x1
    800072f0:	e40080e7          	jalr	-448(ra) # 8000812c <acquire>
    800072f4:	02048c63          	beqz	s1,8000732c <consoleintr+0x68>
    800072f8:	0a092783          	lw	a5,160(s2)
    800072fc:	09892703          	lw	a4,152(s2)
    80007300:	07f00693          	li	a3,127
    80007304:	40e7873b          	subw	a4,a5,a4
    80007308:	02e6e263          	bltu	a3,a4,8000732c <consoleintr+0x68>
    8000730c:	00d00713          	li	a4,13
    80007310:	04e48063          	beq	s1,a4,80007350 <consoleintr+0x8c>
    80007314:	07f7f713          	andi	a4,a5,127
    80007318:	00e90733          	add	a4,s2,a4
    8000731c:	0017879b          	addiw	a5,a5,1
    80007320:	0af92023          	sw	a5,160(s2)
    80007324:	00970c23          	sb	s1,24(a4)
    80007328:	08f92e23          	sw	a5,156(s2)
    8000732c:	01013403          	ld	s0,16(sp)
    80007330:	01813083          	ld	ra,24(sp)
    80007334:	00813483          	ld	s1,8(sp)
    80007338:	00013903          	ld	s2,0(sp)
    8000733c:	00006517          	auipc	a0,0x6
    80007340:	a8c50513          	addi	a0,a0,-1396 # 8000cdc8 <cons>
    80007344:	02010113          	addi	sp,sp,32
    80007348:	00001317          	auipc	t1,0x1
    8000734c:	eb030067          	jr	-336(t1) # 800081f8 <release>
    80007350:	00a00493          	li	s1,10
    80007354:	fc1ff06f          	j	80007314 <consoleintr+0x50>

0000000080007358 <consoleinit>:
    80007358:	fe010113          	addi	sp,sp,-32
    8000735c:	00113c23          	sd	ra,24(sp)
    80007360:	00813823          	sd	s0,16(sp)
    80007364:	00913423          	sd	s1,8(sp)
    80007368:	02010413          	addi	s0,sp,32
    8000736c:	00006497          	auipc	s1,0x6
    80007370:	a5c48493          	addi	s1,s1,-1444 # 8000cdc8 <cons>
    80007374:	00048513          	mv	a0,s1
    80007378:	00002597          	auipc	a1,0x2
    8000737c:	33858593          	addi	a1,a1,824 # 800096b0 <_ZL6digits+0x188>
    80007380:	00001097          	auipc	ra,0x1
    80007384:	d88080e7          	jalr	-632(ra) # 80008108 <initlock>
    80007388:	00000097          	auipc	ra,0x0
    8000738c:	7ac080e7          	jalr	1964(ra) # 80007b34 <uartinit>
    80007390:	01813083          	ld	ra,24(sp)
    80007394:	01013403          	ld	s0,16(sp)
    80007398:	00000797          	auipc	a5,0x0
    8000739c:	d9c78793          	addi	a5,a5,-612 # 80007134 <consoleread>
    800073a0:	0af4bc23          	sd	a5,184(s1)
    800073a4:	00000797          	auipc	a5,0x0
    800073a8:	cec78793          	addi	a5,a5,-788 # 80007090 <consolewrite>
    800073ac:	0cf4b023          	sd	a5,192(s1)
    800073b0:	00813483          	ld	s1,8(sp)
    800073b4:	02010113          	addi	sp,sp,32
    800073b8:	00008067          	ret

00000000800073bc <console_read>:
    800073bc:	ff010113          	addi	sp,sp,-16
    800073c0:	00813423          	sd	s0,8(sp)
    800073c4:	01010413          	addi	s0,sp,16
    800073c8:	00813403          	ld	s0,8(sp)
    800073cc:	00006317          	auipc	t1,0x6
    800073d0:	ab433303          	ld	t1,-1356(t1) # 8000ce80 <devsw+0x10>
    800073d4:	01010113          	addi	sp,sp,16
    800073d8:	00030067          	jr	t1

00000000800073dc <console_write>:
    800073dc:	ff010113          	addi	sp,sp,-16
    800073e0:	00813423          	sd	s0,8(sp)
    800073e4:	01010413          	addi	s0,sp,16
    800073e8:	00813403          	ld	s0,8(sp)
    800073ec:	00006317          	auipc	t1,0x6
    800073f0:	a9c33303          	ld	t1,-1380(t1) # 8000ce88 <devsw+0x18>
    800073f4:	01010113          	addi	sp,sp,16
    800073f8:	00030067          	jr	t1

00000000800073fc <panic>:
    800073fc:	fe010113          	addi	sp,sp,-32
    80007400:	00113c23          	sd	ra,24(sp)
    80007404:	00813823          	sd	s0,16(sp)
    80007408:	00913423          	sd	s1,8(sp)
    8000740c:	02010413          	addi	s0,sp,32
    80007410:	00050493          	mv	s1,a0
    80007414:	00002517          	auipc	a0,0x2
    80007418:	2a450513          	addi	a0,a0,676 # 800096b8 <_ZL6digits+0x190>
    8000741c:	00006797          	auipc	a5,0x6
    80007420:	b007a623          	sw	zero,-1268(a5) # 8000cf28 <pr+0x18>
    80007424:	00000097          	auipc	ra,0x0
    80007428:	034080e7          	jalr	52(ra) # 80007458 <__printf>
    8000742c:	00048513          	mv	a0,s1
    80007430:	00000097          	auipc	ra,0x0
    80007434:	028080e7          	jalr	40(ra) # 80007458 <__printf>
    80007438:	00002517          	auipc	a0,0x2
    8000743c:	cc850513          	addi	a0,a0,-824 # 80009100 <CONSOLE_STATUS+0xf0>
    80007440:	00000097          	auipc	ra,0x0
    80007444:	018080e7          	jalr	24(ra) # 80007458 <__printf>
    80007448:	00100793          	li	a5,1
    8000744c:	00004717          	auipc	a4,0x4
    80007450:	78f72623          	sw	a5,1932(a4) # 8000bbd8 <panicked>
    80007454:	0000006f          	j	80007454 <panic+0x58>

0000000080007458 <__printf>:
    80007458:	f3010113          	addi	sp,sp,-208
    8000745c:	08813023          	sd	s0,128(sp)
    80007460:	07313423          	sd	s3,104(sp)
    80007464:	09010413          	addi	s0,sp,144
    80007468:	05813023          	sd	s8,64(sp)
    8000746c:	08113423          	sd	ra,136(sp)
    80007470:	06913c23          	sd	s1,120(sp)
    80007474:	07213823          	sd	s2,112(sp)
    80007478:	07413023          	sd	s4,96(sp)
    8000747c:	05513c23          	sd	s5,88(sp)
    80007480:	05613823          	sd	s6,80(sp)
    80007484:	05713423          	sd	s7,72(sp)
    80007488:	03913c23          	sd	s9,56(sp)
    8000748c:	03a13823          	sd	s10,48(sp)
    80007490:	03b13423          	sd	s11,40(sp)
    80007494:	00006317          	auipc	t1,0x6
    80007498:	a7c30313          	addi	t1,t1,-1412 # 8000cf10 <pr>
    8000749c:	01832c03          	lw	s8,24(t1)
    800074a0:	00b43423          	sd	a1,8(s0)
    800074a4:	00c43823          	sd	a2,16(s0)
    800074a8:	00d43c23          	sd	a3,24(s0)
    800074ac:	02e43023          	sd	a4,32(s0)
    800074b0:	02f43423          	sd	a5,40(s0)
    800074b4:	03043823          	sd	a6,48(s0)
    800074b8:	03143c23          	sd	a7,56(s0)
    800074bc:	00050993          	mv	s3,a0
    800074c0:	4a0c1663          	bnez	s8,8000796c <__printf+0x514>
    800074c4:	60098c63          	beqz	s3,80007adc <__printf+0x684>
    800074c8:	0009c503          	lbu	a0,0(s3)
    800074cc:	00840793          	addi	a5,s0,8
    800074d0:	f6f43c23          	sd	a5,-136(s0)
    800074d4:	00000493          	li	s1,0
    800074d8:	22050063          	beqz	a0,800076f8 <__printf+0x2a0>
    800074dc:	00002a37          	lui	s4,0x2
    800074e0:	00018ab7          	lui	s5,0x18
    800074e4:	000f4b37          	lui	s6,0xf4
    800074e8:	00989bb7          	lui	s7,0x989
    800074ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800074f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800074f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800074f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800074fc:	00148c9b          	addiw	s9,s1,1
    80007500:	02500793          	li	a5,37
    80007504:	01998933          	add	s2,s3,s9
    80007508:	38f51263          	bne	a0,a5,8000788c <__printf+0x434>
    8000750c:	00094783          	lbu	a5,0(s2)
    80007510:	00078c9b          	sext.w	s9,a5
    80007514:	1e078263          	beqz	a5,800076f8 <__printf+0x2a0>
    80007518:	0024849b          	addiw	s1,s1,2
    8000751c:	07000713          	li	a4,112
    80007520:	00998933          	add	s2,s3,s1
    80007524:	38e78a63          	beq	a5,a4,800078b8 <__printf+0x460>
    80007528:	20f76863          	bltu	a4,a5,80007738 <__printf+0x2e0>
    8000752c:	42a78863          	beq	a5,a0,8000795c <__printf+0x504>
    80007530:	06400713          	li	a4,100
    80007534:	40e79663          	bne	a5,a4,80007940 <__printf+0x4e8>
    80007538:	f7843783          	ld	a5,-136(s0)
    8000753c:	0007a603          	lw	a2,0(a5)
    80007540:	00878793          	addi	a5,a5,8
    80007544:	f6f43c23          	sd	a5,-136(s0)
    80007548:	42064a63          	bltz	a2,8000797c <__printf+0x524>
    8000754c:	00a00713          	li	a4,10
    80007550:	02e677bb          	remuw	a5,a2,a4
    80007554:	00002d97          	auipc	s11,0x2
    80007558:	18cd8d93          	addi	s11,s11,396 # 800096e0 <digits>
    8000755c:	00900593          	li	a1,9
    80007560:	0006051b          	sext.w	a0,a2
    80007564:	00000c93          	li	s9,0
    80007568:	02079793          	slli	a5,a5,0x20
    8000756c:	0207d793          	srli	a5,a5,0x20
    80007570:	00fd87b3          	add	a5,s11,a5
    80007574:	0007c783          	lbu	a5,0(a5)
    80007578:	02e656bb          	divuw	a3,a2,a4
    8000757c:	f8f40023          	sb	a5,-128(s0)
    80007580:	14c5d863          	bge	a1,a2,800076d0 <__printf+0x278>
    80007584:	06300593          	li	a1,99
    80007588:	00100c93          	li	s9,1
    8000758c:	02e6f7bb          	remuw	a5,a3,a4
    80007590:	02079793          	slli	a5,a5,0x20
    80007594:	0207d793          	srli	a5,a5,0x20
    80007598:	00fd87b3          	add	a5,s11,a5
    8000759c:	0007c783          	lbu	a5,0(a5)
    800075a0:	02e6d73b          	divuw	a4,a3,a4
    800075a4:	f8f400a3          	sb	a5,-127(s0)
    800075a8:	12a5f463          	bgeu	a1,a0,800076d0 <__printf+0x278>
    800075ac:	00a00693          	li	a3,10
    800075b0:	00900593          	li	a1,9
    800075b4:	02d777bb          	remuw	a5,a4,a3
    800075b8:	02079793          	slli	a5,a5,0x20
    800075bc:	0207d793          	srli	a5,a5,0x20
    800075c0:	00fd87b3          	add	a5,s11,a5
    800075c4:	0007c503          	lbu	a0,0(a5)
    800075c8:	02d757bb          	divuw	a5,a4,a3
    800075cc:	f8a40123          	sb	a0,-126(s0)
    800075d0:	48e5f263          	bgeu	a1,a4,80007a54 <__printf+0x5fc>
    800075d4:	06300513          	li	a0,99
    800075d8:	02d7f5bb          	remuw	a1,a5,a3
    800075dc:	02059593          	slli	a1,a1,0x20
    800075e0:	0205d593          	srli	a1,a1,0x20
    800075e4:	00bd85b3          	add	a1,s11,a1
    800075e8:	0005c583          	lbu	a1,0(a1)
    800075ec:	02d7d7bb          	divuw	a5,a5,a3
    800075f0:	f8b401a3          	sb	a1,-125(s0)
    800075f4:	48e57263          	bgeu	a0,a4,80007a78 <__printf+0x620>
    800075f8:	3e700513          	li	a0,999
    800075fc:	02d7f5bb          	remuw	a1,a5,a3
    80007600:	02059593          	slli	a1,a1,0x20
    80007604:	0205d593          	srli	a1,a1,0x20
    80007608:	00bd85b3          	add	a1,s11,a1
    8000760c:	0005c583          	lbu	a1,0(a1)
    80007610:	02d7d7bb          	divuw	a5,a5,a3
    80007614:	f8b40223          	sb	a1,-124(s0)
    80007618:	46e57663          	bgeu	a0,a4,80007a84 <__printf+0x62c>
    8000761c:	02d7f5bb          	remuw	a1,a5,a3
    80007620:	02059593          	slli	a1,a1,0x20
    80007624:	0205d593          	srli	a1,a1,0x20
    80007628:	00bd85b3          	add	a1,s11,a1
    8000762c:	0005c583          	lbu	a1,0(a1)
    80007630:	02d7d7bb          	divuw	a5,a5,a3
    80007634:	f8b402a3          	sb	a1,-123(s0)
    80007638:	46ea7863          	bgeu	s4,a4,80007aa8 <__printf+0x650>
    8000763c:	02d7f5bb          	remuw	a1,a5,a3
    80007640:	02059593          	slli	a1,a1,0x20
    80007644:	0205d593          	srli	a1,a1,0x20
    80007648:	00bd85b3          	add	a1,s11,a1
    8000764c:	0005c583          	lbu	a1,0(a1)
    80007650:	02d7d7bb          	divuw	a5,a5,a3
    80007654:	f8b40323          	sb	a1,-122(s0)
    80007658:	3eeaf863          	bgeu	s5,a4,80007a48 <__printf+0x5f0>
    8000765c:	02d7f5bb          	remuw	a1,a5,a3
    80007660:	02059593          	slli	a1,a1,0x20
    80007664:	0205d593          	srli	a1,a1,0x20
    80007668:	00bd85b3          	add	a1,s11,a1
    8000766c:	0005c583          	lbu	a1,0(a1)
    80007670:	02d7d7bb          	divuw	a5,a5,a3
    80007674:	f8b403a3          	sb	a1,-121(s0)
    80007678:	42eb7e63          	bgeu	s6,a4,80007ab4 <__printf+0x65c>
    8000767c:	02d7f5bb          	remuw	a1,a5,a3
    80007680:	02059593          	slli	a1,a1,0x20
    80007684:	0205d593          	srli	a1,a1,0x20
    80007688:	00bd85b3          	add	a1,s11,a1
    8000768c:	0005c583          	lbu	a1,0(a1)
    80007690:	02d7d7bb          	divuw	a5,a5,a3
    80007694:	f8b40423          	sb	a1,-120(s0)
    80007698:	42ebfc63          	bgeu	s7,a4,80007ad0 <__printf+0x678>
    8000769c:	02079793          	slli	a5,a5,0x20
    800076a0:	0207d793          	srli	a5,a5,0x20
    800076a4:	00fd8db3          	add	s11,s11,a5
    800076a8:	000dc703          	lbu	a4,0(s11)
    800076ac:	00a00793          	li	a5,10
    800076b0:	00900c93          	li	s9,9
    800076b4:	f8e404a3          	sb	a4,-119(s0)
    800076b8:	00065c63          	bgez	a2,800076d0 <__printf+0x278>
    800076bc:	f9040713          	addi	a4,s0,-112
    800076c0:	00f70733          	add	a4,a4,a5
    800076c4:	02d00693          	li	a3,45
    800076c8:	fed70823          	sb	a3,-16(a4)
    800076cc:	00078c93          	mv	s9,a5
    800076d0:	f8040793          	addi	a5,s0,-128
    800076d4:	01978cb3          	add	s9,a5,s9
    800076d8:	f7f40d13          	addi	s10,s0,-129
    800076dc:	000cc503          	lbu	a0,0(s9)
    800076e0:	fffc8c93          	addi	s9,s9,-1
    800076e4:	00000097          	auipc	ra,0x0
    800076e8:	b90080e7          	jalr	-1136(ra) # 80007274 <consputc>
    800076ec:	ffac98e3          	bne	s9,s10,800076dc <__printf+0x284>
    800076f0:	00094503          	lbu	a0,0(s2)
    800076f4:	e00514e3          	bnez	a0,800074fc <__printf+0xa4>
    800076f8:	1a0c1663          	bnez	s8,800078a4 <__printf+0x44c>
    800076fc:	08813083          	ld	ra,136(sp)
    80007700:	08013403          	ld	s0,128(sp)
    80007704:	07813483          	ld	s1,120(sp)
    80007708:	07013903          	ld	s2,112(sp)
    8000770c:	06813983          	ld	s3,104(sp)
    80007710:	06013a03          	ld	s4,96(sp)
    80007714:	05813a83          	ld	s5,88(sp)
    80007718:	05013b03          	ld	s6,80(sp)
    8000771c:	04813b83          	ld	s7,72(sp)
    80007720:	04013c03          	ld	s8,64(sp)
    80007724:	03813c83          	ld	s9,56(sp)
    80007728:	03013d03          	ld	s10,48(sp)
    8000772c:	02813d83          	ld	s11,40(sp)
    80007730:	0d010113          	addi	sp,sp,208
    80007734:	00008067          	ret
    80007738:	07300713          	li	a4,115
    8000773c:	1ce78a63          	beq	a5,a4,80007910 <__printf+0x4b8>
    80007740:	07800713          	li	a4,120
    80007744:	1ee79e63          	bne	a5,a4,80007940 <__printf+0x4e8>
    80007748:	f7843783          	ld	a5,-136(s0)
    8000774c:	0007a703          	lw	a4,0(a5)
    80007750:	00878793          	addi	a5,a5,8
    80007754:	f6f43c23          	sd	a5,-136(s0)
    80007758:	28074263          	bltz	a4,800079dc <__printf+0x584>
    8000775c:	00002d97          	auipc	s11,0x2
    80007760:	f84d8d93          	addi	s11,s11,-124 # 800096e0 <digits>
    80007764:	00f77793          	andi	a5,a4,15
    80007768:	00fd87b3          	add	a5,s11,a5
    8000776c:	0007c683          	lbu	a3,0(a5)
    80007770:	00f00613          	li	a2,15
    80007774:	0007079b          	sext.w	a5,a4
    80007778:	f8d40023          	sb	a3,-128(s0)
    8000777c:	0047559b          	srliw	a1,a4,0x4
    80007780:	0047569b          	srliw	a3,a4,0x4
    80007784:	00000c93          	li	s9,0
    80007788:	0ee65063          	bge	a2,a4,80007868 <__printf+0x410>
    8000778c:	00f6f693          	andi	a3,a3,15
    80007790:	00dd86b3          	add	a3,s11,a3
    80007794:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007798:	0087d79b          	srliw	a5,a5,0x8
    8000779c:	00100c93          	li	s9,1
    800077a0:	f8d400a3          	sb	a3,-127(s0)
    800077a4:	0cb67263          	bgeu	a2,a1,80007868 <__printf+0x410>
    800077a8:	00f7f693          	andi	a3,a5,15
    800077ac:	00dd86b3          	add	a3,s11,a3
    800077b0:	0006c583          	lbu	a1,0(a3)
    800077b4:	00f00613          	li	a2,15
    800077b8:	0047d69b          	srliw	a3,a5,0x4
    800077bc:	f8b40123          	sb	a1,-126(s0)
    800077c0:	0047d593          	srli	a1,a5,0x4
    800077c4:	28f67e63          	bgeu	a2,a5,80007a60 <__printf+0x608>
    800077c8:	00f6f693          	andi	a3,a3,15
    800077cc:	00dd86b3          	add	a3,s11,a3
    800077d0:	0006c503          	lbu	a0,0(a3)
    800077d4:	0087d813          	srli	a6,a5,0x8
    800077d8:	0087d69b          	srliw	a3,a5,0x8
    800077dc:	f8a401a3          	sb	a0,-125(s0)
    800077e0:	28b67663          	bgeu	a2,a1,80007a6c <__printf+0x614>
    800077e4:	00f6f693          	andi	a3,a3,15
    800077e8:	00dd86b3          	add	a3,s11,a3
    800077ec:	0006c583          	lbu	a1,0(a3)
    800077f0:	00c7d513          	srli	a0,a5,0xc
    800077f4:	00c7d69b          	srliw	a3,a5,0xc
    800077f8:	f8b40223          	sb	a1,-124(s0)
    800077fc:	29067a63          	bgeu	a2,a6,80007a90 <__printf+0x638>
    80007800:	00f6f693          	andi	a3,a3,15
    80007804:	00dd86b3          	add	a3,s11,a3
    80007808:	0006c583          	lbu	a1,0(a3)
    8000780c:	0107d813          	srli	a6,a5,0x10
    80007810:	0107d69b          	srliw	a3,a5,0x10
    80007814:	f8b402a3          	sb	a1,-123(s0)
    80007818:	28a67263          	bgeu	a2,a0,80007a9c <__printf+0x644>
    8000781c:	00f6f693          	andi	a3,a3,15
    80007820:	00dd86b3          	add	a3,s11,a3
    80007824:	0006c683          	lbu	a3,0(a3)
    80007828:	0147d79b          	srliw	a5,a5,0x14
    8000782c:	f8d40323          	sb	a3,-122(s0)
    80007830:	21067663          	bgeu	a2,a6,80007a3c <__printf+0x5e4>
    80007834:	02079793          	slli	a5,a5,0x20
    80007838:	0207d793          	srli	a5,a5,0x20
    8000783c:	00fd8db3          	add	s11,s11,a5
    80007840:	000dc683          	lbu	a3,0(s11)
    80007844:	00800793          	li	a5,8
    80007848:	00700c93          	li	s9,7
    8000784c:	f8d403a3          	sb	a3,-121(s0)
    80007850:	00075c63          	bgez	a4,80007868 <__printf+0x410>
    80007854:	f9040713          	addi	a4,s0,-112
    80007858:	00f70733          	add	a4,a4,a5
    8000785c:	02d00693          	li	a3,45
    80007860:	fed70823          	sb	a3,-16(a4)
    80007864:	00078c93          	mv	s9,a5
    80007868:	f8040793          	addi	a5,s0,-128
    8000786c:	01978cb3          	add	s9,a5,s9
    80007870:	f7f40d13          	addi	s10,s0,-129
    80007874:	000cc503          	lbu	a0,0(s9)
    80007878:	fffc8c93          	addi	s9,s9,-1
    8000787c:	00000097          	auipc	ra,0x0
    80007880:	9f8080e7          	jalr	-1544(ra) # 80007274 <consputc>
    80007884:	ff9d18e3          	bne	s10,s9,80007874 <__printf+0x41c>
    80007888:	0100006f          	j	80007898 <__printf+0x440>
    8000788c:	00000097          	auipc	ra,0x0
    80007890:	9e8080e7          	jalr	-1560(ra) # 80007274 <consputc>
    80007894:	000c8493          	mv	s1,s9
    80007898:	00094503          	lbu	a0,0(s2)
    8000789c:	c60510e3          	bnez	a0,800074fc <__printf+0xa4>
    800078a0:	e40c0ee3          	beqz	s8,800076fc <__printf+0x2a4>
    800078a4:	00005517          	auipc	a0,0x5
    800078a8:	66c50513          	addi	a0,a0,1644 # 8000cf10 <pr>
    800078ac:	00001097          	auipc	ra,0x1
    800078b0:	94c080e7          	jalr	-1716(ra) # 800081f8 <release>
    800078b4:	e49ff06f          	j	800076fc <__printf+0x2a4>
    800078b8:	f7843783          	ld	a5,-136(s0)
    800078bc:	03000513          	li	a0,48
    800078c0:	01000d13          	li	s10,16
    800078c4:	00878713          	addi	a4,a5,8
    800078c8:	0007bc83          	ld	s9,0(a5)
    800078cc:	f6e43c23          	sd	a4,-136(s0)
    800078d0:	00000097          	auipc	ra,0x0
    800078d4:	9a4080e7          	jalr	-1628(ra) # 80007274 <consputc>
    800078d8:	07800513          	li	a0,120
    800078dc:	00000097          	auipc	ra,0x0
    800078e0:	998080e7          	jalr	-1640(ra) # 80007274 <consputc>
    800078e4:	00002d97          	auipc	s11,0x2
    800078e8:	dfcd8d93          	addi	s11,s11,-516 # 800096e0 <digits>
    800078ec:	03ccd793          	srli	a5,s9,0x3c
    800078f0:	00fd87b3          	add	a5,s11,a5
    800078f4:	0007c503          	lbu	a0,0(a5)
    800078f8:	fffd0d1b          	addiw	s10,s10,-1
    800078fc:	004c9c93          	slli	s9,s9,0x4
    80007900:	00000097          	auipc	ra,0x0
    80007904:	974080e7          	jalr	-1676(ra) # 80007274 <consputc>
    80007908:	fe0d12e3          	bnez	s10,800078ec <__printf+0x494>
    8000790c:	f8dff06f          	j	80007898 <__printf+0x440>
    80007910:	f7843783          	ld	a5,-136(s0)
    80007914:	0007bc83          	ld	s9,0(a5)
    80007918:	00878793          	addi	a5,a5,8
    8000791c:	f6f43c23          	sd	a5,-136(s0)
    80007920:	000c9a63          	bnez	s9,80007934 <__printf+0x4dc>
    80007924:	1080006f          	j	80007a2c <__printf+0x5d4>
    80007928:	001c8c93          	addi	s9,s9,1
    8000792c:	00000097          	auipc	ra,0x0
    80007930:	948080e7          	jalr	-1720(ra) # 80007274 <consputc>
    80007934:	000cc503          	lbu	a0,0(s9)
    80007938:	fe0518e3          	bnez	a0,80007928 <__printf+0x4d0>
    8000793c:	f5dff06f          	j	80007898 <__printf+0x440>
    80007940:	02500513          	li	a0,37
    80007944:	00000097          	auipc	ra,0x0
    80007948:	930080e7          	jalr	-1744(ra) # 80007274 <consputc>
    8000794c:	000c8513          	mv	a0,s9
    80007950:	00000097          	auipc	ra,0x0
    80007954:	924080e7          	jalr	-1756(ra) # 80007274 <consputc>
    80007958:	f41ff06f          	j	80007898 <__printf+0x440>
    8000795c:	02500513          	li	a0,37
    80007960:	00000097          	auipc	ra,0x0
    80007964:	914080e7          	jalr	-1772(ra) # 80007274 <consputc>
    80007968:	f31ff06f          	j	80007898 <__printf+0x440>
    8000796c:	00030513          	mv	a0,t1
    80007970:	00000097          	auipc	ra,0x0
    80007974:	7bc080e7          	jalr	1980(ra) # 8000812c <acquire>
    80007978:	b4dff06f          	j	800074c4 <__printf+0x6c>
    8000797c:	40c0053b          	negw	a0,a2
    80007980:	00a00713          	li	a4,10
    80007984:	02e576bb          	remuw	a3,a0,a4
    80007988:	00002d97          	auipc	s11,0x2
    8000798c:	d58d8d93          	addi	s11,s11,-680 # 800096e0 <digits>
    80007990:	ff700593          	li	a1,-9
    80007994:	02069693          	slli	a3,a3,0x20
    80007998:	0206d693          	srli	a3,a3,0x20
    8000799c:	00dd86b3          	add	a3,s11,a3
    800079a0:	0006c683          	lbu	a3,0(a3)
    800079a4:	02e557bb          	divuw	a5,a0,a4
    800079a8:	f8d40023          	sb	a3,-128(s0)
    800079ac:	10b65e63          	bge	a2,a1,80007ac8 <__printf+0x670>
    800079b0:	06300593          	li	a1,99
    800079b4:	02e7f6bb          	remuw	a3,a5,a4
    800079b8:	02069693          	slli	a3,a3,0x20
    800079bc:	0206d693          	srli	a3,a3,0x20
    800079c0:	00dd86b3          	add	a3,s11,a3
    800079c4:	0006c683          	lbu	a3,0(a3)
    800079c8:	02e7d73b          	divuw	a4,a5,a4
    800079cc:	00200793          	li	a5,2
    800079d0:	f8d400a3          	sb	a3,-127(s0)
    800079d4:	bca5ece3          	bltu	a1,a0,800075ac <__printf+0x154>
    800079d8:	ce5ff06f          	j	800076bc <__printf+0x264>
    800079dc:	40e007bb          	negw	a5,a4
    800079e0:	00002d97          	auipc	s11,0x2
    800079e4:	d00d8d93          	addi	s11,s11,-768 # 800096e0 <digits>
    800079e8:	00f7f693          	andi	a3,a5,15
    800079ec:	00dd86b3          	add	a3,s11,a3
    800079f0:	0006c583          	lbu	a1,0(a3)
    800079f4:	ff100613          	li	a2,-15
    800079f8:	0047d69b          	srliw	a3,a5,0x4
    800079fc:	f8b40023          	sb	a1,-128(s0)
    80007a00:	0047d59b          	srliw	a1,a5,0x4
    80007a04:	0ac75e63          	bge	a4,a2,80007ac0 <__printf+0x668>
    80007a08:	00f6f693          	andi	a3,a3,15
    80007a0c:	00dd86b3          	add	a3,s11,a3
    80007a10:	0006c603          	lbu	a2,0(a3)
    80007a14:	00f00693          	li	a3,15
    80007a18:	0087d79b          	srliw	a5,a5,0x8
    80007a1c:	f8c400a3          	sb	a2,-127(s0)
    80007a20:	d8b6e4e3          	bltu	a3,a1,800077a8 <__printf+0x350>
    80007a24:	00200793          	li	a5,2
    80007a28:	e2dff06f          	j	80007854 <__printf+0x3fc>
    80007a2c:	00002c97          	auipc	s9,0x2
    80007a30:	c94c8c93          	addi	s9,s9,-876 # 800096c0 <_ZL6digits+0x198>
    80007a34:	02800513          	li	a0,40
    80007a38:	ef1ff06f          	j	80007928 <__printf+0x4d0>
    80007a3c:	00700793          	li	a5,7
    80007a40:	00600c93          	li	s9,6
    80007a44:	e0dff06f          	j	80007850 <__printf+0x3f8>
    80007a48:	00700793          	li	a5,7
    80007a4c:	00600c93          	li	s9,6
    80007a50:	c69ff06f          	j	800076b8 <__printf+0x260>
    80007a54:	00300793          	li	a5,3
    80007a58:	00200c93          	li	s9,2
    80007a5c:	c5dff06f          	j	800076b8 <__printf+0x260>
    80007a60:	00300793          	li	a5,3
    80007a64:	00200c93          	li	s9,2
    80007a68:	de9ff06f          	j	80007850 <__printf+0x3f8>
    80007a6c:	00400793          	li	a5,4
    80007a70:	00300c93          	li	s9,3
    80007a74:	dddff06f          	j	80007850 <__printf+0x3f8>
    80007a78:	00400793          	li	a5,4
    80007a7c:	00300c93          	li	s9,3
    80007a80:	c39ff06f          	j	800076b8 <__printf+0x260>
    80007a84:	00500793          	li	a5,5
    80007a88:	00400c93          	li	s9,4
    80007a8c:	c2dff06f          	j	800076b8 <__printf+0x260>
    80007a90:	00500793          	li	a5,5
    80007a94:	00400c93          	li	s9,4
    80007a98:	db9ff06f          	j	80007850 <__printf+0x3f8>
    80007a9c:	00600793          	li	a5,6
    80007aa0:	00500c93          	li	s9,5
    80007aa4:	dadff06f          	j	80007850 <__printf+0x3f8>
    80007aa8:	00600793          	li	a5,6
    80007aac:	00500c93          	li	s9,5
    80007ab0:	c09ff06f          	j	800076b8 <__printf+0x260>
    80007ab4:	00800793          	li	a5,8
    80007ab8:	00700c93          	li	s9,7
    80007abc:	bfdff06f          	j	800076b8 <__printf+0x260>
    80007ac0:	00100793          	li	a5,1
    80007ac4:	d91ff06f          	j	80007854 <__printf+0x3fc>
    80007ac8:	00100793          	li	a5,1
    80007acc:	bf1ff06f          	j	800076bc <__printf+0x264>
    80007ad0:	00900793          	li	a5,9
    80007ad4:	00800c93          	li	s9,8
    80007ad8:	be1ff06f          	j	800076b8 <__printf+0x260>
    80007adc:	00002517          	auipc	a0,0x2
    80007ae0:	bec50513          	addi	a0,a0,-1044 # 800096c8 <_ZL6digits+0x1a0>
    80007ae4:	00000097          	auipc	ra,0x0
    80007ae8:	918080e7          	jalr	-1768(ra) # 800073fc <panic>

0000000080007aec <printfinit>:
    80007aec:	fe010113          	addi	sp,sp,-32
    80007af0:	00813823          	sd	s0,16(sp)
    80007af4:	00913423          	sd	s1,8(sp)
    80007af8:	00113c23          	sd	ra,24(sp)
    80007afc:	02010413          	addi	s0,sp,32
    80007b00:	00005497          	auipc	s1,0x5
    80007b04:	41048493          	addi	s1,s1,1040 # 8000cf10 <pr>
    80007b08:	00048513          	mv	a0,s1
    80007b0c:	00002597          	auipc	a1,0x2
    80007b10:	bcc58593          	addi	a1,a1,-1076 # 800096d8 <_ZL6digits+0x1b0>
    80007b14:	00000097          	auipc	ra,0x0
    80007b18:	5f4080e7          	jalr	1524(ra) # 80008108 <initlock>
    80007b1c:	01813083          	ld	ra,24(sp)
    80007b20:	01013403          	ld	s0,16(sp)
    80007b24:	0004ac23          	sw	zero,24(s1)
    80007b28:	00813483          	ld	s1,8(sp)
    80007b2c:	02010113          	addi	sp,sp,32
    80007b30:	00008067          	ret

0000000080007b34 <uartinit>:
    80007b34:	ff010113          	addi	sp,sp,-16
    80007b38:	00813423          	sd	s0,8(sp)
    80007b3c:	01010413          	addi	s0,sp,16
    80007b40:	100007b7          	lui	a5,0x10000
    80007b44:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007b48:	f8000713          	li	a4,-128
    80007b4c:	00e781a3          	sb	a4,3(a5)
    80007b50:	00300713          	li	a4,3
    80007b54:	00e78023          	sb	a4,0(a5)
    80007b58:	000780a3          	sb	zero,1(a5)
    80007b5c:	00e781a3          	sb	a4,3(a5)
    80007b60:	00700693          	li	a3,7
    80007b64:	00d78123          	sb	a3,2(a5)
    80007b68:	00e780a3          	sb	a4,1(a5)
    80007b6c:	00813403          	ld	s0,8(sp)
    80007b70:	01010113          	addi	sp,sp,16
    80007b74:	00008067          	ret

0000000080007b78 <uartputc>:
    80007b78:	00004797          	auipc	a5,0x4
    80007b7c:	0607a783          	lw	a5,96(a5) # 8000bbd8 <panicked>
    80007b80:	00078463          	beqz	a5,80007b88 <uartputc+0x10>
    80007b84:	0000006f          	j	80007b84 <uartputc+0xc>
    80007b88:	fd010113          	addi	sp,sp,-48
    80007b8c:	02813023          	sd	s0,32(sp)
    80007b90:	00913c23          	sd	s1,24(sp)
    80007b94:	01213823          	sd	s2,16(sp)
    80007b98:	01313423          	sd	s3,8(sp)
    80007b9c:	02113423          	sd	ra,40(sp)
    80007ba0:	03010413          	addi	s0,sp,48
    80007ba4:	00004917          	auipc	s2,0x4
    80007ba8:	03c90913          	addi	s2,s2,60 # 8000bbe0 <uart_tx_r>
    80007bac:	00093783          	ld	a5,0(s2)
    80007bb0:	00004497          	auipc	s1,0x4
    80007bb4:	03848493          	addi	s1,s1,56 # 8000bbe8 <uart_tx_w>
    80007bb8:	0004b703          	ld	a4,0(s1)
    80007bbc:	02078693          	addi	a3,a5,32
    80007bc0:	00050993          	mv	s3,a0
    80007bc4:	02e69c63          	bne	a3,a4,80007bfc <uartputc+0x84>
    80007bc8:	00001097          	auipc	ra,0x1
    80007bcc:	834080e7          	jalr	-1996(ra) # 800083fc <push_on>
    80007bd0:	00093783          	ld	a5,0(s2)
    80007bd4:	0004b703          	ld	a4,0(s1)
    80007bd8:	02078793          	addi	a5,a5,32
    80007bdc:	00e79463          	bne	a5,a4,80007be4 <uartputc+0x6c>
    80007be0:	0000006f          	j	80007be0 <uartputc+0x68>
    80007be4:	00001097          	auipc	ra,0x1
    80007be8:	88c080e7          	jalr	-1908(ra) # 80008470 <pop_on>
    80007bec:	00093783          	ld	a5,0(s2)
    80007bf0:	0004b703          	ld	a4,0(s1)
    80007bf4:	02078693          	addi	a3,a5,32
    80007bf8:	fce688e3          	beq	a3,a4,80007bc8 <uartputc+0x50>
    80007bfc:	01f77693          	andi	a3,a4,31
    80007c00:	00005597          	auipc	a1,0x5
    80007c04:	33058593          	addi	a1,a1,816 # 8000cf30 <uart_tx_buf>
    80007c08:	00d586b3          	add	a3,a1,a3
    80007c0c:	00170713          	addi	a4,a4,1
    80007c10:	01368023          	sb	s3,0(a3)
    80007c14:	00e4b023          	sd	a4,0(s1)
    80007c18:	10000637          	lui	a2,0x10000
    80007c1c:	02f71063          	bne	a4,a5,80007c3c <uartputc+0xc4>
    80007c20:	0340006f          	j	80007c54 <uartputc+0xdc>
    80007c24:	00074703          	lbu	a4,0(a4)
    80007c28:	00f93023          	sd	a5,0(s2)
    80007c2c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007c30:	00093783          	ld	a5,0(s2)
    80007c34:	0004b703          	ld	a4,0(s1)
    80007c38:	00f70e63          	beq	a4,a5,80007c54 <uartputc+0xdc>
    80007c3c:	00564683          	lbu	a3,5(a2)
    80007c40:	01f7f713          	andi	a4,a5,31
    80007c44:	00e58733          	add	a4,a1,a4
    80007c48:	0206f693          	andi	a3,a3,32
    80007c4c:	00178793          	addi	a5,a5,1
    80007c50:	fc069ae3          	bnez	a3,80007c24 <uartputc+0xac>
    80007c54:	02813083          	ld	ra,40(sp)
    80007c58:	02013403          	ld	s0,32(sp)
    80007c5c:	01813483          	ld	s1,24(sp)
    80007c60:	01013903          	ld	s2,16(sp)
    80007c64:	00813983          	ld	s3,8(sp)
    80007c68:	03010113          	addi	sp,sp,48
    80007c6c:	00008067          	ret

0000000080007c70 <uartputc_sync>:
    80007c70:	ff010113          	addi	sp,sp,-16
    80007c74:	00813423          	sd	s0,8(sp)
    80007c78:	01010413          	addi	s0,sp,16
    80007c7c:	00004717          	auipc	a4,0x4
    80007c80:	f5c72703          	lw	a4,-164(a4) # 8000bbd8 <panicked>
    80007c84:	02071663          	bnez	a4,80007cb0 <uartputc_sync+0x40>
    80007c88:	00050793          	mv	a5,a0
    80007c8c:	100006b7          	lui	a3,0x10000
    80007c90:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007c94:	02077713          	andi	a4,a4,32
    80007c98:	fe070ce3          	beqz	a4,80007c90 <uartputc_sync+0x20>
    80007c9c:	0ff7f793          	andi	a5,a5,255
    80007ca0:	00f68023          	sb	a5,0(a3)
    80007ca4:	00813403          	ld	s0,8(sp)
    80007ca8:	01010113          	addi	sp,sp,16
    80007cac:	00008067          	ret
    80007cb0:	0000006f          	j	80007cb0 <uartputc_sync+0x40>

0000000080007cb4 <uartstart>:
    80007cb4:	ff010113          	addi	sp,sp,-16
    80007cb8:	00813423          	sd	s0,8(sp)
    80007cbc:	01010413          	addi	s0,sp,16
    80007cc0:	00004617          	auipc	a2,0x4
    80007cc4:	f2060613          	addi	a2,a2,-224 # 8000bbe0 <uart_tx_r>
    80007cc8:	00004517          	auipc	a0,0x4
    80007ccc:	f2050513          	addi	a0,a0,-224 # 8000bbe8 <uart_tx_w>
    80007cd0:	00063783          	ld	a5,0(a2)
    80007cd4:	00053703          	ld	a4,0(a0)
    80007cd8:	04f70263          	beq	a4,a5,80007d1c <uartstart+0x68>
    80007cdc:	100005b7          	lui	a1,0x10000
    80007ce0:	00005817          	auipc	a6,0x5
    80007ce4:	25080813          	addi	a6,a6,592 # 8000cf30 <uart_tx_buf>
    80007ce8:	01c0006f          	j	80007d04 <uartstart+0x50>
    80007cec:	0006c703          	lbu	a4,0(a3)
    80007cf0:	00f63023          	sd	a5,0(a2)
    80007cf4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007cf8:	00063783          	ld	a5,0(a2)
    80007cfc:	00053703          	ld	a4,0(a0)
    80007d00:	00f70e63          	beq	a4,a5,80007d1c <uartstart+0x68>
    80007d04:	01f7f713          	andi	a4,a5,31
    80007d08:	00e806b3          	add	a3,a6,a4
    80007d0c:	0055c703          	lbu	a4,5(a1)
    80007d10:	00178793          	addi	a5,a5,1
    80007d14:	02077713          	andi	a4,a4,32
    80007d18:	fc071ae3          	bnez	a4,80007cec <uartstart+0x38>
    80007d1c:	00813403          	ld	s0,8(sp)
    80007d20:	01010113          	addi	sp,sp,16
    80007d24:	00008067          	ret

0000000080007d28 <uartgetc>:
    80007d28:	ff010113          	addi	sp,sp,-16
    80007d2c:	00813423          	sd	s0,8(sp)
    80007d30:	01010413          	addi	s0,sp,16
    80007d34:	10000737          	lui	a4,0x10000
    80007d38:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007d3c:	0017f793          	andi	a5,a5,1
    80007d40:	00078c63          	beqz	a5,80007d58 <uartgetc+0x30>
    80007d44:	00074503          	lbu	a0,0(a4)
    80007d48:	0ff57513          	andi	a0,a0,255
    80007d4c:	00813403          	ld	s0,8(sp)
    80007d50:	01010113          	addi	sp,sp,16
    80007d54:	00008067          	ret
    80007d58:	fff00513          	li	a0,-1
    80007d5c:	ff1ff06f          	j	80007d4c <uartgetc+0x24>

0000000080007d60 <uartintr>:
    80007d60:	100007b7          	lui	a5,0x10000
    80007d64:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007d68:	0017f793          	andi	a5,a5,1
    80007d6c:	0a078463          	beqz	a5,80007e14 <uartintr+0xb4>
    80007d70:	fe010113          	addi	sp,sp,-32
    80007d74:	00813823          	sd	s0,16(sp)
    80007d78:	00913423          	sd	s1,8(sp)
    80007d7c:	00113c23          	sd	ra,24(sp)
    80007d80:	02010413          	addi	s0,sp,32
    80007d84:	100004b7          	lui	s1,0x10000
    80007d88:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007d8c:	0ff57513          	andi	a0,a0,255
    80007d90:	fffff097          	auipc	ra,0xfffff
    80007d94:	534080e7          	jalr	1332(ra) # 800072c4 <consoleintr>
    80007d98:	0054c783          	lbu	a5,5(s1)
    80007d9c:	0017f793          	andi	a5,a5,1
    80007da0:	fe0794e3          	bnez	a5,80007d88 <uartintr+0x28>
    80007da4:	00004617          	auipc	a2,0x4
    80007da8:	e3c60613          	addi	a2,a2,-452 # 8000bbe0 <uart_tx_r>
    80007dac:	00004517          	auipc	a0,0x4
    80007db0:	e3c50513          	addi	a0,a0,-452 # 8000bbe8 <uart_tx_w>
    80007db4:	00063783          	ld	a5,0(a2)
    80007db8:	00053703          	ld	a4,0(a0)
    80007dbc:	04f70263          	beq	a4,a5,80007e00 <uartintr+0xa0>
    80007dc0:	100005b7          	lui	a1,0x10000
    80007dc4:	00005817          	auipc	a6,0x5
    80007dc8:	16c80813          	addi	a6,a6,364 # 8000cf30 <uart_tx_buf>
    80007dcc:	01c0006f          	j	80007de8 <uartintr+0x88>
    80007dd0:	0006c703          	lbu	a4,0(a3)
    80007dd4:	00f63023          	sd	a5,0(a2)
    80007dd8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007ddc:	00063783          	ld	a5,0(a2)
    80007de0:	00053703          	ld	a4,0(a0)
    80007de4:	00f70e63          	beq	a4,a5,80007e00 <uartintr+0xa0>
    80007de8:	01f7f713          	andi	a4,a5,31
    80007dec:	00e806b3          	add	a3,a6,a4
    80007df0:	0055c703          	lbu	a4,5(a1)
    80007df4:	00178793          	addi	a5,a5,1
    80007df8:	02077713          	andi	a4,a4,32
    80007dfc:	fc071ae3          	bnez	a4,80007dd0 <uartintr+0x70>
    80007e00:	01813083          	ld	ra,24(sp)
    80007e04:	01013403          	ld	s0,16(sp)
    80007e08:	00813483          	ld	s1,8(sp)
    80007e0c:	02010113          	addi	sp,sp,32
    80007e10:	00008067          	ret
    80007e14:	00004617          	auipc	a2,0x4
    80007e18:	dcc60613          	addi	a2,a2,-564 # 8000bbe0 <uart_tx_r>
    80007e1c:	00004517          	auipc	a0,0x4
    80007e20:	dcc50513          	addi	a0,a0,-564 # 8000bbe8 <uart_tx_w>
    80007e24:	00063783          	ld	a5,0(a2)
    80007e28:	00053703          	ld	a4,0(a0)
    80007e2c:	04f70263          	beq	a4,a5,80007e70 <uartintr+0x110>
    80007e30:	100005b7          	lui	a1,0x10000
    80007e34:	00005817          	auipc	a6,0x5
    80007e38:	0fc80813          	addi	a6,a6,252 # 8000cf30 <uart_tx_buf>
    80007e3c:	01c0006f          	j	80007e58 <uartintr+0xf8>
    80007e40:	0006c703          	lbu	a4,0(a3)
    80007e44:	00f63023          	sd	a5,0(a2)
    80007e48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007e4c:	00063783          	ld	a5,0(a2)
    80007e50:	00053703          	ld	a4,0(a0)
    80007e54:	02f70063          	beq	a4,a5,80007e74 <uartintr+0x114>
    80007e58:	01f7f713          	andi	a4,a5,31
    80007e5c:	00e806b3          	add	a3,a6,a4
    80007e60:	0055c703          	lbu	a4,5(a1)
    80007e64:	00178793          	addi	a5,a5,1
    80007e68:	02077713          	andi	a4,a4,32
    80007e6c:	fc071ae3          	bnez	a4,80007e40 <uartintr+0xe0>
    80007e70:	00008067          	ret
    80007e74:	00008067          	ret

0000000080007e78 <kinit>:
    80007e78:	fc010113          	addi	sp,sp,-64
    80007e7c:	02913423          	sd	s1,40(sp)
    80007e80:	fffff7b7          	lui	a5,0xfffff
    80007e84:	00006497          	auipc	s1,0x6
    80007e88:	0cb48493          	addi	s1,s1,203 # 8000df4f <end+0xfff>
    80007e8c:	02813823          	sd	s0,48(sp)
    80007e90:	01313c23          	sd	s3,24(sp)
    80007e94:	00f4f4b3          	and	s1,s1,a5
    80007e98:	02113c23          	sd	ra,56(sp)
    80007e9c:	03213023          	sd	s2,32(sp)
    80007ea0:	01413823          	sd	s4,16(sp)
    80007ea4:	01513423          	sd	s5,8(sp)
    80007ea8:	04010413          	addi	s0,sp,64
    80007eac:	000017b7          	lui	a5,0x1
    80007eb0:	01100993          	li	s3,17
    80007eb4:	00f487b3          	add	a5,s1,a5
    80007eb8:	01b99993          	slli	s3,s3,0x1b
    80007ebc:	06f9e063          	bltu	s3,a5,80007f1c <kinit+0xa4>
    80007ec0:	00005a97          	auipc	s5,0x5
    80007ec4:	090a8a93          	addi	s5,s5,144 # 8000cf50 <end>
    80007ec8:	0754ec63          	bltu	s1,s5,80007f40 <kinit+0xc8>
    80007ecc:	0734fa63          	bgeu	s1,s3,80007f40 <kinit+0xc8>
    80007ed0:	00088a37          	lui	s4,0x88
    80007ed4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007ed8:	00004917          	auipc	s2,0x4
    80007edc:	d1890913          	addi	s2,s2,-744 # 8000bbf0 <kmem>
    80007ee0:	00ca1a13          	slli	s4,s4,0xc
    80007ee4:	0140006f          	j	80007ef8 <kinit+0x80>
    80007ee8:	000017b7          	lui	a5,0x1
    80007eec:	00f484b3          	add	s1,s1,a5
    80007ef0:	0554e863          	bltu	s1,s5,80007f40 <kinit+0xc8>
    80007ef4:	0534f663          	bgeu	s1,s3,80007f40 <kinit+0xc8>
    80007ef8:	00001637          	lui	a2,0x1
    80007efc:	00100593          	li	a1,1
    80007f00:	00048513          	mv	a0,s1
    80007f04:	00000097          	auipc	ra,0x0
    80007f08:	5e4080e7          	jalr	1508(ra) # 800084e8 <__memset>
    80007f0c:	00093783          	ld	a5,0(s2)
    80007f10:	00f4b023          	sd	a5,0(s1)
    80007f14:	00993023          	sd	s1,0(s2)
    80007f18:	fd4498e3          	bne	s1,s4,80007ee8 <kinit+0x70>
    80007f1c:	03813083          	ld	ra,56(sp)
    80007f20:	03013403          	ld	s0,48(sp)
    80007f24:	02813483          	ld	s1,40(sp)
    80007f28:	02013903          	ld	s2,32(sp)
    80007f2c:	01813983          	ld	s3,24(sp)
    80007f30:	01013a03          	ld	s4,16(sp)
    80007f34:	00813a83          	ld	s5,8(sp)
    80007f38:	04010113          	addi	sp,sp,64
    80007f3c:	00008067          	ret
    80007f40:	00001517          	auipc	a0,0x1
    80007f44:	7b850513          	addi	a0,a0,1976 # 800096f8 <digits+0x18>
    80007f48:	fffff097          	auipc	ra,0xfffff
    80007f4c:	4b4080e7          	jalr	1204(ra) # 800073fc <panic>

0000000080007f50 <freerange>:
    80007f50:	fc010113          	addi	sp,sp,-64
    80007f54:	000017b7          	lui	a5,0x1
    80007f58:	02913423          	sd	s1,40(sp)
    80007f5c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007f60:	009504b3          	add	s1,a0,s1
    80007f64:	fffff537          	lui	a0,0xfffff
    80007f68:	02813823          	sd	s0,48(sp)
    80007f6c:	02113c23          	sd	ra,56(sp)
    80007f70:	03213023          	sd	s2,32(sp)
    80007f74:	01313c23          	sd	s3,24(sp)
    80007f78:	01413823          	sd	s4,16(sp)
    80007f7c:	01513423          	sd	s5,8(sp)
    80007f80:	01613023          	sd	s6,0(sp)
    80007f84:	04010413          	addi	s0,sp,64
    80007f88:	00a4f4b3          	and	s1,s1,a0
    80007f8c:	00f487b3          	add	a5,s1,a5
    80007f90:	06f5e463          	bltu	a1,a5,80007ff8 <freerange+0xa8>
    80007f94:	00005a97          	auipc	s5,0x5
    80007f98:	fbca8a93          	addi	s5,s5,-68 # 8000cf50 <end>
    80007f9c:	0954e263          	bltu	s1,s5,80008020 <freerange+0xd0>
    80007fa0:	01100993          	li	s3,17
    80007fa4:	01b99993          	slli	s3,s3,0x1b
    80007fa8:	0734fc63          	bgeu	s1,s3,80008020 <freerange+0xd0>
    80007fac:	00058a13          	mv	s4,a1
    80007fb0:	00004917          	auipc	s2,0x4
    80007fb4:	c4090913          	addi	s2,s2,-960 # 8000bbf0 <kmem>
    80007fb8:	00002b37          	lui	s6,0x2
    80007fbc:	0140006f          	j	80007fd0 <freerange+0x80>
    80007fc0:	000017b7          	lui	a5,0x1
    80007fc4:	00f484b3          	add	s1,s1,a5
    80007fc8:	0554ec63          	bltu	s1,s5,80008020 <freerange+0xd0>
    80007fcc:	0534fa63          	bgeu	s1,s3,80008020 <freerange+0xd0>
    80007fd0:	00001637          	lui	a2,0x1
    80007fd4:	00100593          	li	a1,1
    80007fd8:	00048513          	mv	a0,s1
    80007fdc:	00000097          	auipc	ra,0x0
    80007fe0:	50c080e7          	jalr	1292(ra) # 800084e8 <__memset>
    80007fe4:	00093703          	ld	a4,0(s2)
    80007fe8:	016487b3          	add	a5,s1,s6
    80007fec:	00e4b023          	sd	a4,0(s1)
    80007ff0:	00993023          	sd	s1,0(s2)
    80007ff4:	fcfa76e3          	bgeu	s4,a5,80007fc0 <freerange+0x70>
    80007ff8:	03813083          	ld	ra,56(sp)
    80007ffc:	03013403          	ld	s0,48(sp)
    80008000:	02813483          	ld	s1,40(sp)
    80008004:	02013903          	ld	s2,32(sp)
    80008008:	01813983          	ld	s3,24(sp)
    8000800c:	01013a03          	ld	s4,16(sp)
    80008010:	00813a83          	ld	s5,8(sp)
    80008014:	00013b03          	ld	s6,0(sp)
    80008018:	04010113          	addi	sp,sp,64
    8000801c:	00008067          	ret
    80008020:	00001517          	auipc	a0,0x1
    80008024:	6d850513          	addi	a0,a0,1752 # 800096f8 <digits+0x18>
    80008028:	fffff097          	auipc	ra,0xfffff
    8000802c:	3d4080e7          	jalr	980(ra) # 800073fc <panic>

0000000080008030 <kfree>:
    80008030:	fe010113          	addi	sp,sp,-32
    80008034:	00813823          	sd	s0,16(sp)
    80008038:	00113c23          	sd	ra,24(sp)
    8000803c:	00913423          	sd	s1,8(sp)
    80008040:	02010413          	addi	s0,sp,32
    80008044:	03451793          	slli	a5,a0,0x34
    80008048:	04079c63          	bnez	a5,800080a0 <kfree+0x70>
    8000804c:	00005797          	auipc	a5,0x5
    80008050:	f0478793          	addi	a5,a5,-252 # 8000cf50 <end>
    80008054:	00050493          	mv	s1,a0
    80008058:	04f56463          	bltu	a0,a5,800080a0 <kfree+0x70>
    8000805c:	01100793          	li	a5,17
    80008060:	01b79793          	slli	a5,a5,0x1b
    80008064:	02f57e63          	bgeu	a0,a5,800080a0 <kfree+0x70>
    80008068:	00001637          	lui	a2,0x1
    8000806c:	00100593          	li	a1,1
    80008070:	00000097          	auipc	ra,0x0
    80008074:	478080e7          	jalr	1144(ra) # 800084e8 <__memset>
    80008078:	00004797          	auipc	a5,0x4
    8000807c:	b7878793          	addi	a5,a5,-1160 # 8000bbf0 <kmem>
    80008080:	0007b703          	ld	a4,0(a5)
    80008084:	01813083          	ld	ra,24(sp)
    80008088:	01013403          	ld	s0,16(sp)
    8000808c:	00e4b023          	sd	a4,0(s1)
    80008090:	0097b023          	sd	s1,0(a5)
    80008094:	00813483          	ld	s1,8(sp)
    80008098:	02010113          	addi	sp,sp,32
    8000809c:	00008067          	ret
    800080a0:	00001517          	auipc	a0,0x1
    800080a4:	65850513          	addi	a0,a0,1624 # 800096f8 <digits+0x18>
    800080a8:	fffff097          	auipc	ra,0xfffff
    800080ac:	354080e7          	jalr	852(ra) # 800073fc <panic>

00000000800080b0 <kalloc>:
    800080b0:	fe010113          	addi	sp,sp,-32
    800080b4:	00813823          	sd	s0,16(sp)
    800080b8:	00913423          	sd	s1,8(sp)
    800080bc:	00113c23          	sd	ra,24(sp)
    800080c0:	02010413          	addi	s0,sp,32
    800080c4:	00004797          	auipc	a5,0x4
    800080c8:	b2c78793          	addi	a5,a5,-1236 # 8000bbf0 <kmem>
    800080cc:	0007b483          	ld	s1,0(a5)
    800080d0:	02048063          	beqz	s1,800080f0 <kalloc+0x40>
    800080d4:	0004b703          	ld	a4,0(s1)
    800080d8:	00001637          	lui	a2,0x1
    800080dc:	00500593          	li	a1,5
    800080e0:	00048513          	mv	a0,s1
    800080e4:	00e7b023          	sd	a4,0(a5)
    800080e8:	00000097          	auipc	ra,0x0
    800080ec:	400080e7          	jalr	1024(ra) # 800084e8 <__memset>
    800080f0:	01813083          	ld	ra,24(sp)
    800080f4:	01013403          	ld	s0,16(sp)
    800080f8:	00048513          	mv	a0,s1
    800080fc:	00813483          	ld	s1,8(sp)
    80008100:	02010113          	addi	sp,sp,32
    80008104:	00008067          	ret

0000000080008108 <initlock>:
    80008108:	ff010113          	addi	sp,sp,-16
    8000810c:	00813423          	sd	s0,8(sp)
    80008110:	01010413          	addi	s0,sp,16
    80008114:	00813403          	ld	s0,8(sp)
    80008118:	00b53423          	sd	a1,8(a0)
    8000811c:	00052023          	sw	zero,0(a0)
    80008120:	00053823          	sd	zero,16(a0)
    80008124:	01010113          	addi	sp,sp,16
    80008128:	00008067          	ret

000000008000812c <acquire>:
    8000812c:	fe010113          	addi	sp,sp,-32
    80008130:	00813823          	sd	s0,16(sp)
    80008134:	00913423          	sd	s1,8(sp)
    80008138:	00113c23          	sd	ra,24(sp)
    8000813c:	01213023          	sd	s2,0(sp)
    80008140:	02010413          	addi	s0,sp,32
    80008144:	00050493          	mv	s1,a0
    80008148:	10002973          	csrr	s2,sstatus
    8000814c:	100027f3          	csrr	a5,sstatus
    80008150:	ffd7f793          	andi	a5,a5,-3
    80008154:	10079073          	csrw	sstatus,a5
    80008158:	fffff097          	auipc	ra,0xfffff
    8000815c:	8e8080e7          	jalr	-1816(ra) # 80006a40 <mycpu>
    80008160:	07852783          	lw	a5,120(a0)
    80008164:	06078e63          	beqz	a5,800081e0 <acquire+0xb4>
    80008168:	fffff097          	auipc	ra,0xfffff
    8000816c:	8d8080e7          	jalr	-1832(ra) # 80006a40 <mycpu>
    80008170:	07852783          	lw	a5,120(a0)
    80008174:	0004a703          	lw	a4,0(s1)
    80008178:	0017879b          	addiw	a5,a5,1
    8000817c:	06f52c23          	sw	a5,120(a0)
    80008180:	04071063          	bnez	a4,800081c0 <acquire+0x94>
    80008184:	00100713          	li	a4,1
    80008188:	00070793          	mv	a5,a4
    8000818c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008190:	0007879b          	sext.w	a5,a5
    80008194:	fe079ae3          	bnez	a5,80008188 <acquire+0x5c>
    80008198:	0ff0000f          	fence
    8000819c:	fffff097          	auipc	ra,0xfffff
    800081a0:	8a4080e7          	jalr	-1884(ra) # 80006a40 <mycpu>
    800081a4:	01813083          	ld	ra,24(sp)
    800081a8:	01013403          	ld	s0,16(sp)
    800081ac:	00a4b823          	sd	a0,16(s1)
    800081b0:	00013903          	ld	s2,0(sp)
    800081b4:	00813483          	ld	s1,8(sp)
    800081b8:	02010113          	addi	sp,sp,32
    800081bc:	00008067          	ret
    800081c0:	0104b903          	ld	s2,16(s1)
    800081c4:	fffff097          	auipc	ra,0xfffff
    800081c8:	87c080e7          	jalr	-1924(ra) # 80006a40 <mycpu>
    800081cc:	faa91ce3          	bne	s2,a0,80008184 <acquire+0x58>
    800081d0:	00001517          	auipc	a0,0x1
    800081d4:	53050513          	addi	a0,a0,1328 # 80009700 <digits+0x20>
    800081d8:	fffff097          	auipc	ra,0xfffff
    800081dc:	224080e7          	jalr	548(ra) # 800073fc <panic>
    800081e0:	00195913          	srli	s2,s2,0x1
    800081e4:	fffff097          	auipc	ra,0xfffff
    800081e8:	85c080e7          	jalr	-1956(ra) # 80006a40 <mycpu>
    800081ec:	00197913          	andi	s2,s2,1
    800081f0:	07252e23          	sw	s2,124(a0)
    800081f4:	f75ff06f          	j	80008168 <acquire+0x3c>

00000000800081f8 <release>:
    800081f8:	fe010113          	addi	sp,sp,-32
    800081fc:	00813823          	sd	s0,16(sp)
    80008200:	00113c23          	sd	ra,24(sp)
    80008204:	00913423          	sd	s1,8(sp)
    80008208:	01213023          	sd	s2,0(sp)
    8000820c:	02010413          	addi	s0,sp,32
    80008210:	00052783          	lw	a5,0(a0)
    80008214:	00079a63          	bnez	a5,80008228 <release+0x30>
    80008218:	00001517          	auipc	a0,0x1
    8000821c:	4f050513          	addi	a0,a0,1264 # 80009708 <digits+0x28>
    80008220:	fffff097          	auipc	ra,0xfffff
    80008224:	1dc080e7          	jalr	476(ra) # 800073fc <panic>
    80008228:	01053903          	ld	s2,16(a0)
    8000822c:	00050493          	mv	s1,a0
    80008230:	fffff097          	auipc	ra,0xfffff
    80008234:	810080e7          	jalr	-2032(ra) # 80006a40 <mycpu>
    80008238:	fea910e3          	bne	s2,a0,80008218 <release+0x20>
    8000823c:	0004b823          	sd	zero,16(s1)
    80008240:	0ff0000f          	fence
    80008244:	0f50000f          	fence	iorw,ow
    80008248:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000824c:	ffffe097          	auipc	ra,0xffffe
    80008250:	7f4080e7          	jalr	2036(ra) # 80006a40 <mycpu>
    80008254:	100027f3          	csrr	a5,sstatus
    80008258:	0027f793          	andi	a5,a5,2
    8000825c:	04079a63          	bnez	a5,800082b0 <release+0xb8>
    80008260:	07852783          	lw	a5,120(a0)
    80008264:	02f05e63          	blez	a5,800082a0 <release+0xa8>
    80008268:	fff7871b          	addiw	a4,a5,-1
    8000826c:	06e52c23          	sw	a4,120(a0)
    80008270:	00071c63          	bnez	a4,80008288 <release+0x90>
    80008274:	07c52783          	lw	a5,124(a0)
    80008278:	00078863          	beqz	a5,80008288 <release+0x90>
    8000827c:	100027f3          	csrr	a5,sstatus
    80008280:	0027e793          	ori	a5,a5,2
    80008284:	10079073          	csrw	sstatus,a5
    80008288:	01813083          	ld	ra,24(sp)
    8000828c:	01013403          	ld	s0,16(sp)
    80008290:	00813483          	ld	s1,8(sp)
    80008294:	00013903          	ld	s2,0(sp)
    80008298:	02010113          	addi	sp,sp,32
    8000829c:	00008067          	ret
    800082a0:	00001517          	auipc	a0,0x1
    800082a4:	48850513          	addi	a0,a0,1160 # 80009728 <digits+0x48>
    800082a8:	fffff097          	auipc	ra,0xfffff
    800082ac:	154080e7          	jalr	340(ra) # 800073fc <panic>
    800082b0:	00001517          	auipc	a0,0x1
    800082b4:	46050513          	addi	a0,a0,1120 # 80009710 <digits+0x30>
    800082b8:	fffff097          	auipc	ra,0xfffff
    800082bc:	144080e7          	jalr	324(ra) # 800073fc <panic>

00000000800082c0 <holding>:
    800082c0:	00052783          	lw	a5,0(a0)
    800082c4:	00079663          	bnez	a5,800082d0 <holding+0x10>
    800082c8:	00000513          	li	a0,0
    800082cc:	00008067          	ret
    800082d0:	fe010113          	addi	sp,sp,-32
    800082d4:	00813823          	sd	s0,16(sp)
    800082d8:	00913423          	sd	s1,8(sp)
    800082dc:	00113c23          	sd	ra,24(sp)
    800082e0:	02010413          	addi	s0,sp,32
    800082e4:	01053483          	ld	s1,16(a0)
    800082e8:	ffffe097          	auipc	ra,0xffffe
    800082ec:	758080e7          	jalr	1880(ra) # 80006a40 <mycpu>
    800082f0:	01813083          	ld	ra,24(sp)
    800082f4:	01013403          	ld	s0,16(sp)
    800082f8:	40a48533          	sub	a0,s1,a0
    800082fc:	00153513          	seqz	a0,a0
    80008300:	00813483          	ld	s1,8(sp)
    80008304:	02010113          	addi	sp,sp,32
    80008308:	00008067          	ret

000000008000830c <push_off>:
    8000830c:	fe010113          	addi	sp,sp,-32
    80008310:	00813823          	sd	s0,16(sp)
    80008314:	00113c23          	sd	ra,24(sp)
    80008318:	00913423          	sd	s1,8(sp)
    8000831c:	02010413          	addi	s0,sp,32
    80008320:	100024f3          	csrr	s1,sstatus
    80008324:	100027f3          	csrr	a5,sstatus
    80008328:	ffd7f793          	andi	a5,a5,-3
    8000832c:	10079073          	csrw	sstatus,a5
    80008330:	ffffe097          	auipc	ra,0xffffe
    80008334:	710080e7          	jalr	1808(ra) # 80006a40 <mycpu>
    80008338:	07852783          	lw	a5,120(a0)
    8000833c:	02078663          	beqz	a5,80008368 <push_off+0x5c>
    80008340:	ffffe097          	auipc	ra,0xffffe
    80008344:	700080e7          	jalr	1792(ra) # 80006a40 <mycpu>
    80008348:	07852783          	lw	a5,120(a0)
    8000834c:	01813083          	ld	ra,24(sp)
    80008350:	01013403          	ld	s0,16(sp)
    80008354:	0017879b          	addiw	a5,a5,1
    80008358:	06f52c23          	sw	a5,120(a0)
    8000835c:	00813483          	ld	s1,8(sp)
    80008360:	02010113          	addi	sp,sp,32
    80008364:	00008067          	ret
    80008368:	0014d493          	srli	s1,s1,0x1
    8000836c:	ffffe097          	auipc	ra,0xffffe
    80008370:	6d4080e7          	jalr	1748(ra) # 80006a40 <mycpu>
    80008374:	0014f493          	andi	s1,s1,1
    80008378:	06952e23          	sw	s1,124(a0)
    8000837c:	fc5ff06f          	j	80008340 <push_off+0x34>

0000000080008380 <pop_off>:
    80008380:	ff010113          	addi	sp,sp,-16
    80008384:	00813023          	sd	s0,0(sp)
    80008388:	00113423          	sd	ra,8(sp)
    8000838c:	01010413          	addi	s0,sp,16
    80008390:	ffffe097          	auipc	ra,0xffffe
    80008394:	6b0080e7          	jalr	1712(ra) # 80006a40 <mycpu>
    80008398:	100027f3          	csrr	a5,sstatus
    8000839c:	0027f793          	andi	a5,a5,2
    800083a0:	04079663          	bnez	a5,800083ec <pop_off+0x6c>
    800083a4:	07852783          	lw	a5,120(a0)
    800083a8:	02f05a63          	blez	a5,800083dc <pop_off+0x5c>
    800083ac:	fff7871b          	addiw	a4,a5,-1
    800083b0:	06e52c23          	sw	a4,120(a0)
    800083b4:	00071c63          	bnez	a4,800083cc <pop_off+0x4c>
    800083b8:	07c52783          	lw	a5,124(a0)
    800083bc:	00078863          	beqz	a5,800083cc <pop_off+0x4c>
    800083c0:	100027f3          	csrr	a5,sstatus
    800083c4:	0027e793          	ori	a5,a5,2
    800083c8:	10079073          	csrw	sstatus,a5
    800083cc:	00813083          	ld	ra,8(sp)
    800083d0:	00013403          	ld	s0,0(sp)
    800083d4:	01010113          	addi	sp,sp,16
    800083d8:	00008067          	ret
    800083dc:	00001517          	auipc	a0,0x1
    800083e0:	34c50513          	addi	a0,a0,844 # 80009728 <digits+0x48>
    800083e4:	fffff097          	auipc	ra,0xfffff
    800083e8:	018080e7          	jalr	24(ra) # 800073fc <panic>
    800083ec:	00001517          	auipc	a0,0x1
    800083f0:	32450513          	addi	a0,a0,804 # 80009710 <digits+0x30>
    800083f4:	fffff097          	auipc	ra,0xfffff
    800083f8:	008080e7          	jalr	8(ra) # 800073fc <panic>

00000000800083fc <push_on>:
    800083fc:	fe010113          	addi	sp,sp,-32
    80008400:	00813823          	sd	s0,16(sp)
    80008404:	00113c23          	sd	ra,24(sp)
    80008408:	00913423          	sd	s1,8(sp)
    8000840c:	02010413          	addi	s0,sp,32
    80008410:	100024f3          	csrr	s1,sstatus
    80008414:	100027f3          	csrr	a5,sstatus
    80008418:	0027e793          	ori	a5,a5,2
    8000841c:	10079073          	csrw	sstatus,a5
    80008420:	ffffe097          	auipc	ra,0xffffe
    80008424:	620080e7          	jalr	1568(ra) # 80006a40 <mycpu>
    80008428:	07852783          	lw	a5,120(a0)
    8000842c:	02078663          	beqz	a5,80008458 <push_on+0x5c>
    80008430:	ffffe097          	auipc	ra,0xffffe
    80008434:	610080e7          	jalr	1552(ra) # 80006a40 <mycpu>
    80008438:	07852783          	lw	a5,120(a0)
    8000843c:	01813083          	ld	ra,24(sp)
    80008440:	01013403          	ld	s0,16(sp)
    80008444:	0017879b          	addiw	a5,a5,1
    80008448:	06f52c23          	sw	a5,120(a0)
    8000844c:	00813483          	ld	s1,8(sp)
    80008450:	02010113          	addi	sp,sp,32
    80008454:	00008067          	ret
    80008458:	0014d493          	srli	s1,s1,0x1
    8000845c:	ffffe097          	auipc	ra,0xffffe
    80008460:	5e4080e7          	jalr	1508(ra) # 80006a40 <mycpu>
    80008464:	0014f493          	andi	s1,s1,1
    80008468:	06952e23          	sw	s1,124(a0)
    8000846c:	fc5ff06f          	j	80008430 <push_on+0x34>

0000000080008470 <pop_on>:
    80008470:	ff010113          	addi	sp,sp,-16
    80008474:	00813023          	sd	s0,0(sp)
    80008478:	00113423          	sd	ra,8(sp)
    8000847c:	01010413          	addi	s0,sp,16
    80008480:	ffffe097          	auipc	ra,0xffffe
    80008484:	5c0080e7          	jalr	1472(ra) # 80006a40 <mycpu>
    80008488:	100027f3          	csrr	a5,sstatus
    8000848c:	0027f793          	andi	a5,a5,2
    80008490:	04078463          	beqz	a5,800084d8 <pop_on+0x68>
    80008494:	07852783          	lw	a5,120(a0)
    80008498:	02f05863          	blez	a5,800084c8 <pop_on+0x58>
    8000849c:	fff7879b          	addiw	a5,a5,-1
    800084a0:	06f52c23          	sw	a5,120(a0)
    800084a4:	07853783          	ld	a5,120(a0)
    800084a8:	00079863          	bnez	a5,800084b8 <pop_on+0x48>
    800084ac:	100027f3          	csrr	a5,sstatus
    800084b0:	ffd7f793          	andi	a5,a5,-3
    800084b4:	10079073          	csrw	sstatus,a5
    800084b8:	00813083          	ld	ra,8(sp)
    800084bc:	00013403          	ld	s0,0(sp)
    800084c0:	01010113          	addi	sp,sp,16
    800084c4:	00008067          	ret
    800084c8:	00001517          	auipc	a0,0x1
    800084cc:	28850513          	addi	a0,a0,648 # 80009750 <digits+0x70>
    800084d0:	fffff097          	auipc	ra,0xfffff
    800084d4:	f2c080e7          	jalr	-212(ra) # 800073fc <panic>
    800084d8:	00001517          	auipc	a0,0x1
    800084dc:	25850513          	addi	a0,a0,600 # 80009730 <digits+0x50>
    800084e0:	fffff097          	auipc	ra,0xfffff
    800084e4:	f1c080e7          	jalr	-228(ra) # 800073fc <panic>

00000000800084e8 <__memset>:
    800084e8:	ff010113          	addi	sp,sp,-16
    800084ec:	00813423          	sd	s0,8(sp)
    800084f0:	01010413          	addi	s0,sp,16
    800084f4:	1a060e63          	beqz	a2,800086b0 <__memset+0x1c8>
    800084f8:	40a007b3          	neg	a5,a0
    800084fc:	0077f793          	andi	a5,a5,7
    80008500:	00778693          	addi	a3,a5,7
    80008504:	00b00813          	li	a6,11
    80008508:	0ff5f593          	andi	a1,a1,255
    8000850c:	fff6071b          	addiw	a4,a2,-1
    80008510:	1b06e663          	bltu	a3,a6,800086bc <__memset+0x1d4>
    80008514:	1cd76463          	bltu	a4,a3,800086dc <__memset+0x1f4>
    80008518:	1a078e63          	beqz	a5,800086d4 <__memset+0x1ec>
    8000851c:	00b50023          	sb	a1,0(a0)
    80008520:	00100713          	li	a4,1
    80008524:	1ae78463          	beq	a5,a4,800086cc <__memset+0x1e4>
    80008528:	00b500a3          	sb	a1,1(a0)
    8000852c:	00200713          	li	a4,2
    80008530:	1ae78a63          	beq	a5,a4,800086e4 <__memset+0x1fc>
    80008534:	00b50123          	sb	a1,2(a0)
    80008538:	00300713          	li	a4,3
    8000853c:	18e78463          	beq	a5,a4,800086c4 <__memset+0x1dc>
    80008540:	00b501a3          	sb	a1,3(a0)
    80008544:	00400713          	li	a4,4
    80008548:	1ae78263          	beq	a5,a4,800086ec <__memset+0x204>
    8000854c:	00b50223          	sb	a1,4(a0)
    80008550:	00500713          	li	a4,5
    80008554:	1ae78063          	beq	a5,a4,800086f4 <__memset+0x20c>
    80008558:	00b502a3          	sb	a1,5(a0)
    8000855c:	00700713          	li	a4,7
    80008560:	18e79e63          	bne	a5,a4,800086fc <__memset+0x214>
    80008564:	00b50323          	sb	a1,6(a0)
    80008568:	00700e93          	li	t4,7
    8000856c:	00859713          	slli	a4,a1,0x8
    80008570:	00e5e733          	or	a4,a1,a4
    80008574:	01059e13          	slli	t3,a1,0x10
    80008578:	01c76e33          	or	t3,a4,t3
    8000857c:	01859313          	slli	t1,a1,0x18
    80008580:	006e6333          	or	t1,t3,t1
    80008584:	02059893          	slli	a7,a1,0x20
    80008588:	40f60e3b          	subw	t3,a2,a5
    8000858c:	011368b3          	or	a7,t1,a7
    80008590:	02859813          	slli	a6,a1,0x28
    80008594:	0108e833          	or	a6,a7,a6
    80008598:	03059693          	slli	a3,a1,0x30
    8000859c:	003e589b          	srliw	a7,t3,0x3
    800085a0:	00d866b3          	or	a3,a6,a3
    800085a4:	03859713          	slli	a4,a1,0x38
    800085a8:	00389813          	slli	a6,a7,0x3
    800085ac:	00f507b3          	add	a5,a0,a5
    800085b0:	00e6e733          	or	a4,a3,a4
    800085b4:	000e089b          	sext.w	a7,t3
    800085b8:	00f806b3          	add	a3,a6,a5
    800085bc:	00e7b023          	sd	a4,0(a5)
    800085c0:	00878793          	addi	a5,a5,8
    800085c4:	fed79ce3          	bne	a5,a3,800085bc <__memset+0xd4>
    800085c8:	ff8e7793          	andi	a5,t3,-8
    800085cc:	0007871b          	sext.w	a4,a5
    800085d0:	01d787bb          	addw	a5,a5,t4
    800085d4:	0ce88e63          	beq	a7,a4,800086b0 <__memset+0x1c8>
    800085d8:	00f50733          	add	a4,a0,a5
    800085dc:	00b70023          	sb	a1,0(a4)
    800085e0:	0017871b          	addiw	a4,a5,1
    800085e4:	0cc77663          	bgeu	a4,a2,800086b0 <__memset+0x1c8>
    800085e8:	00e50733          	add	a4,a0,a4
    800085ec:	00b70023          	sb	a1,0(a4)
    800085f0:	0027871b          	addiw	a4,a5,2
    800085f4:	0ac77e63          	bgeu	a4,a2,800086b0 <__memset+0x1c8>
    800085f8:	00e50733          	add	a4,a0,a4
    800085fc:	00b70023          	sb	a1,0(a4)
    80008600:	0037871b          	addiw	a4,a5,3
    80008604:	0ac77663          	bgeu	a4,a2,800086b0 <__memset+0x1c8>
    80008608:	00e50733          	add	a4,a0,a4
    8000860c:	00b70023          	sb	a1,0(a4)
    80008610:	0047871b          	addiw	a4,a5,4
    80008614:	08c77e63          	bgeu	a4,a2,800086b0 <__memset+0x1c8>
    80008618:	00e50733          	add	a4,a0,a4
    8000861c:	00b70023          	sb	a1,0(a4)
    80008620:	0057871b          	addiw	a4,a5,5
    80008624:	08c77663          	bgeu	a4,a2,800086b0 <__memset+0x1c8>
    80008628:	00e50733          	add	a4,a0,a4
    8000862c:	00b70023          	sb	a1,0(a4)
    80008630:	0067871b          	addiw	a4,a5,6
    80008634:	06c77e63          	bgeu	a4,a2,800086b0 <__memset+0x1c8>
    80008638:	00e50733          	add	a4,a0,a4
    8000863c:	00b70023          	sb	a1,0(a4)
    80008640:	0077871b          	addiw	a4,a5,7
    80008644:	06c77663          	bgeu	a4,a2,800086b0 <__memset+0x1c8>
    80008648:	00e50733          	add	a4,a0,a4
    8000864c:	00b70023          	sb	a1,0(a4)
    80008650:	0087871b          	addiw	a4,a5,8
    80008654:	04c77e63          	bgeu	a4,a2,800086b0 <__memset+0x1c8>
    80008658:	00e50733          	add	a4,a0,a4
    8000865c:	00b70023          	sb	a1,0(a4)
    80008660:	0097871b          	addiw	a4,a5,9
    80008664:	04c77663          	bgeu	a4,a2,800086b0 <__memset+0x1c8>
    80008668:	00e50733          	add	a4,a0,a4
    8000866c:	00b70023          	sb	a1,0(a4)
    80008670:	00a7871b          	addiw	a4,a5,10
    80008674:	02c77e63          	bgeu	a4,a2,800086b0 <__memset+0x1c8>
    80008678:	00e50733          	add	a4,a0,a4
    8000867c:	00b70023          	sb	a1,0(a4)
    80008680:	00b7871b          	addiw	a4,a5,11
    80008684:	02c77663          	bgeu	a4,a2,800086b0 <__memset+0x1c8>
    80008688:	00e50733          	add	a4,a0,a4
    8000868c:	00b70023          	sb	a1,0(a4)
    80008690:	00c7871b          	addiw	a4,a5,12
    80008694:	00c77e63          	bgeu	a4,a2,800086b0 <__memset+0x1c8>
    80008698:	00e50733          	add	a4,a0,a4
    8000869c:	00b70023          	sb	a1,0(a4)
    800086a0:	00d7879b          	addiw	a5,a5,13
    800086a4:	00c7f663          	bgeu	a5,a2,800086b0 <__memset+0x1c8>
    800086a8:	00f507b3          	add	a5,a0,a5
    800086ac:	00b78023          	sb	a1,0(a5)
    800086b0:	00813403          	ld	s0,8(sp)
    800086b4:	01010113          	addi	sp,sp,16
    800086b8:	00008067          	ret
    800086bc:	00b00693          	li	a3,11
    800086c0:	e55ff06f          	j	80008514 <__memset+0x2c>
    800086c4:	00300e93          	li	t4,3
    800086c8:	ea5ff06f          	j	8000856c <__memset+0x84>
    800086cc:	00100e93          	li	t4,1
    800086d0:	e9dff06f          	j	8000856c <__memset+0x84>
    800086d4:	00000e93          	li	t4,0
    800086d8:	e95ff06f          	j	8000856c <__memset+0x84>
    800086dc:	00000793          	li	a5,0
    800086e0:	ef9ff06f          	j	800085d8 <__memset+0xf0>
    800086e4:	00200e93          	li	t4,2
    800086e8:	e85ff06f          	j	8000856c <__memset+0x84>
    800086ec:	00400e93          	li	t4,4
    800086f0:	e7dff06f          	j	8000856c <__memset+0x84>
    800086f4:	00500e93          	li	t4,5
    800086f8:	e75ff06f          	j	8000856c <__memset+0x84>
    800086fc:	00600e93          	li	t4,6
    80008700:	e6dff06f          	j	8000856c <__memset+0x84>

0000000080008704 <__memmove>:
    80008704:	ff010113          	addi	sp,sp,-16
    80008708:	00813423          	sd	s0,8(sp)
    8000870c:	01010413          	addi	s0,sp,16
    80008710:	0e060863          	beqz	a2,80008800 <__memmove+0xfc>
    80008714:	fff6069b          	addiw	a3,a2,-1
    80008718:	0006881b          	sext.w	a6,a3
    8000871c:	0ea5e863          	bltu	a1,a0,8000880c <__memmove+0x108>
    80008720:	00758713          	addi	a4,a1,7
    80008724:	00a5e7b3          	or	a5,a1,a0
    80008728:	40a70733          	sub	a4,a4,a0
    8000872c:	0077f793          	andi	a5,a5,7
    80008730:	00f73713          	sltiu	a4,a4,15
    80008734:	00174713          	xori	a4,a4,1
    80008738:	0017b793          	seqz	a5,a5
    8000873c:	00e7f7b3          	and	a5,a5,a4
    80008740:	10078863          	beqz	a5,80008850 <__memmove+0x14c>
    80008744:	00900793          	li	a5,9
    80008748:	1107f463          	bgeu	a5,a6,80008850 <__memmove+0x14c>
    8000874c:	0036581b          	srliw	a6,a2,0x3
    80008750:	fff8081b          	addiw	a6,a6,-1
    80008754:	02081813          	slli	a6,a6,0x20
    80008758:	01d85893          	srli	a7,a6,0x1d
    8000875c:	00858813          	addi	a6,a1,8
    80008760:	00058793          	mv	a5,a1
    80008764:	00050713          	mv	a4,a0
    80008768:	01088833          	add	a6,a7,a6
    8000876c:	0007b883          	ld	a7,0(a5)
    80008770:	00878793          	addi	a5,a5,8
    80008774:	00870713          	addi	a4,a4,8
    80008778:	ff173c23          	sd	a7,-8(a4)
    8000877c:	ff0798e3          	bne	a5,a6,8000876c <__memmove+0x68>
    80008780:	ff867713          	andi	a4,a2,-8
    80008784:	02071793          	slli	a5,a4,0x20
    80008788:	0207d793          	srli	a5,a5,0x20
    8000878c:	00f585b3          	add	a1,a1,a5
    80008790:	40e686bb          	subw	a3,a3,a4
    80008794:	00f507b3          	add	a5,a0,a5
    80008798:	06e60463          	beq	a2,a4,80008800 <__memmove+0xfc>
    8000879c:	0005c703          	lbu	a4,0(a1)
    800087a0:	00e78023          	sb	a4,0(a5)
    800087a4:	04068e63          	beqz	a3,80008800 <__memmove+0xfc>
    800087a8:	0015c603          	lbu	a2,1(a1)
    800087ac:	00100713          	li	a4,1
    800087b0:	00c780a3          	sb	a2,1(a5)
    800087b4:	04e68663          	beq	a3,a4,80008800 <__memmove+0xfc>
    800087b8:	0025c603          	lbu	a2,2(a1)
    800087bc:	00200713          	li	a4,2
    800087c0:	00c78123          	sb	a2,2(a5)
    800087c4:	02e68e63          	beq	a3,a4,80008800 <__memmove+0xfc>
    800087c8:	0035c603          	lbu	a2,3(a1)
    800087cc:	00300713          	li	a4,3
    800087d0:	00c781a3          	sb	a2,3(a5)
    800087d4:	02e68663          	beq	a3,a4,80008800 <__memmove+0xfc>
    800087d8:	0045c603          	lbu	a2,4(a1)
    800087dc:	00400713          	li	a4,4
    800087e0:	00c78223          	sb	a2,4(a5)
    800087e4:	00e68e63          	beq	a3,a4,80008800 <__memmove+0xfc>
    800087e8:	0055c603          	lbu	a2,5(a1)
    800087ec:	00500713          	li	a4,5
    800087f0:	00c782a3          	sb	a2,5(a5)
    800087f4:	00e68663          	beq	a3,a4,80008800 <__memmove+0xfc>
    800087f8:	0065c703          	lbu	a4,6(a1)
    800087fc:	00e78323          	sb	a4,6(a5)
    80008800:	00813403          	ld	s0,8(sp)
    80008804:	01010113          	addi	sp,sp,16
    80008808:	00008067          	ret
    8000880c:	02061713          	slli	a4,a2,0x20
    80008810:	02075713          	srli	a4,a4,0x20
    80008814:	00e587b3          	add	a5,a1,a4
    80008818:	f0f574e3          	bgeu	a0,a5,80008720 <__memmove+0x1c>
    8000881c:	02069613          	slli	a2,a3,0x20
    80008820:	02065613          	srli	a2,a2,0x20
    80008824:	fff64613          	not	a2,a2
    80008828:	00e50733          	add	a4,a0,a4
    8000882c:	00c78633          	add	a2,a5,a2
    80008830:	fff7c683          	lbu	a3,-1(a5)
    80008834:	fff78793          	addi	a5,a5,-1
    80008838:	fff70713          	addi	a4,a4,-1
    8000883c:	00d70023          	sb	a3,0(a4)
    80008840:	fec798e3          	bne	a5,a2,80008830 <__memmove+0x12c>
    80008844:	00813403          	ld	s0,8(sp)
    80008848:	01010113          	addi	sp,sp,16
    8000884c:	00008067          	ret
    80008850:	02069713          	slli	a4,a3,0x20
    80008854:	02075713          	srli	a4,a4,0x20
    80008858:	00170713          	addi	a4,a4,1
    8000885c:	00e50733          	add	a4,a0,a4
    80008860:	00050793          	mv	a5,a0
    80008864:	0005c683          	lbu	a3,0(a1)
    80008868:	00178793          	addi	a5,a5,1
    8000886c:	00158593          	addi	a1,a1,1
    80008870:	fed78fa3          	sb	a3,-1(a5)
    80008874:	fee798e3          	bne	a5,a4,80008864 <__memmove+0x160>
    80008878:	f89ff06f          	j	80008800 <__memmove+0xfc>

000000008000887c <__putc>:
    8000887c:	fe010113          	addi	sp,sp,-32
    80008880:	00813823          	sd	s0,16(sp)
    80008884:	00113c23          	sd	ra,24(sp)
    80008888:	02010413          	addi	s0,sp,32
    8000888c:	00050793          	mv	a5,a0
    80008890:	fef40593          	addi	a1,s0,-17
    80008894:	00100613          	li	a2,1
    80008898:	00000513          	li	a0,0
    8000889c:	fef407a3          	sb	a5,-17(s0)
    800088a0:	fffff097          	auipc	ra,0xfffff
    800088a4:	b3c080e7          	jalr	-1220(ra) # 800073dc <console_write>
    800088a8:	01813083          	ld	ra,24(sp)
    800088ac:	01013403          	ld	s0,16(sp)
    800088b0:	02010113          	addi	sp,sp,32
    800088b4:	00008067          	ret

00000000800088b8 <__getc>:
    800088b8:	fe010113          	addi	sp,sp,-32
    800088bc:	00813823          	sd	s0,16(sp)
    800088c0:	00113c23          	sd	ra,24(sp)
    800088c4:	02010413          	addi	s0,sp,32
    800088c8:	fe840593          	addi	a1,s0,-24
    800088cc:	00100613          	li	a2,1
    800088d0:	00000513          	li	a0,0
    800088d4:	fffff097          	auipc	ra,0xfffff
    800088d8:	ae8080e7          	jalr	-1304(ra) # 800073bc <console_read>
    800088dc:	fe844503          	lbu	a0,-24(s0)
    800088e0:	01813083          	ld	ra,24(sp)
    800088e4:	01013403          	ld	s0,16(sp)
    800088e8:	02010113          	addi	sp,sp,32
    800088ec:	00008067          	ret

00000000800088f0 <console_handler>:
    800088f0:	fe010113          	addi	sp,sp,-32
    800088f4:	00813823          	sd	s0,16(sp)
    800088f8:	00113c23          	sd	ra,24(sp)
    800088fc:	00913423          	sd	s1,8(sp)
    80008900:	02010413          	addi	s0,sp,32
    80008904:	14202773          	csrr	a4,scause
    80008908:	100027f3          	csrr	a5,sstatus
    8000890c:	0027f793          	andi	a5,a5,2
    80008910:	06079e63          	bnez	a5,8000898c <console_handler+0x9c>
    80008914:	00074c63          	bltz	a4,8000892c <console_handler+0x3c>
    80008918:	01813083          	ld	ra,24(sp)
    8000891c:	01013403          	ld	s0,16(sp)
    80008920:	00813483          	ld	s1,8(sp)
    80008924:	02010113          	addi	sp,sp,32
    80008928:	00008067          	ret
    8000892c:	0ff77713          	andi	a4,a4,255
    80008930:	00900793          	li	a5,9
    80008934:	fef712e3          	bne	a4,a5,80008918 <console_handler+0x28>
    80008938:	ffffe097          	auipc	ra,0xffffe
    8000893c:	6dc080e7          	jalr	1756(ra) # 80007014 <plic_claim>
    80008940:	00a00793          	li	a5,10
    80008944:	00050493          	mv	s1,a0
    80008948:	02f50c63          	beq	a0,a5,80008980 <console_handler+0x90>
    8000894c:	fc0506e3          	beqz	a0,80008918 <console_handler+0x28>
    80008950:	00050593          	mv	a1,a0
    80008954:	00001517          	auipc	a0,0x1
    80008958:	d0450513          	addi	a0,a0,-764 # 80009658 <_ZL6digits+0x130>
    8000895c:	fffff097          	auipc	ra,0xfffff
    80008960:	afc080e7          	jalr	-1284(ra) # 80007458 <__printf>
    80008964:	01013403          	ld	s0,16(sp)
    80008968:	01813083          	ld	ra,24(sp)
    8000896c:	00048513          	mv	a0,s1
    80008970:	00813483          	ld	s1,8(sp)
    80008974:	02010113          	addi	sp,sp,32
    80008978:	ffffe317          	auipc	t1,0xffffe
    8000897c:	6d430067          	jr	1748(t1) # 8000704c <plic_complete>
    80008980:	fffff097          	auipc	ra,0xfffff
    80008984:	3e0080e7          	jalr	992(ra) # 80007d60 <uartintr>
    80008988:	fddff06f          	j	80008964 <console_handler+0x74>
    8000898c:	00001517          	auipc	a0,0x1
    80008990:	dcc50513          	addi	a0,a0,-564 # 80009758 <digits+0x78>
    80008994:	fffff097          	auipc	ra,0xfffff
    80008998:	a68080e7          	jalr	-1432(ra) # 800073fc <panic>
	...
