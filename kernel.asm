
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
    8000001c:	7d0060ef          	jal	ra,800067ec <start>

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
    80001088:	4d1020ef          	jal	ra,80003d58 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001578:	740080e7          	jalr	1856(ra) # 80005cb4 <_Z11printStringPKc>
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
    800015a8:	710080e7          	jalr	1808(ra) # 80005cb4 <_Z11printStringPKc>
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
    800015c8:	6f0080e7          	jalr	1776(ra) # 80005cb4 <_Z11printStringPKc>
        printInt(i);
    800015cc:	00000613          	li	a2,0
    800015d0:	00a00593          	li	a1,10
    800015d4:	0004851b          	sext.w	a0,s1
    800015d8:	00005097          	auipc	ra,0x5
    800015dc:	874080e7          	jalr	-1932(ra) # 80005e4c <_Z8printIntiii>
        printString("\n");
    800015e0:	00008517          	auipc	a0,0x8
    800015e4:	b2050513          	addi	a0,a0,-1248 # 80009100 <CONSOLE_STATUS+0xf0>
    800015e8:	00004097          	auipc	ra,0x4
    800015ec:	6cc080e7          	jalr	1740(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001648:	670080e7          	jalr	1648(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001668:	650080e7          	jalr	1616(ra) # 80005cb4 <_Z11printStringPKc>
        printInt(j);
    8000166c:	00000613          	li	a2,0
    80001670:	00a00593          	li	a1,10
    80001674:	0004851b          	sext.w	a0,s1
    80001678:	00004097          	auipc	ra,0x4
    8000167c:	7d4080e7          	jalr	2004(ra) # 80005e4c <_Z8printIntiii>
        printString("\n");
    80001680:	00008517          	auipc	a0,0x8
    80001684:	a8050513          	addi	a0,a0,-1408 # 80009100 <CONSOLE_STATUS+0xf0>
    80001688:	00004097          	auipc	ra,0x4
    8000168c:	62c080e7          	jalr	1580(ra) # 80005cb4 <_Z11printStringPKc>
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
    800016f8:	5c0080e7          	jalr	1472(ra) # 80005cb4 <_Z11printStringPKc>
        printInt(i);
    800016fc:	00000613          	li	a2,0
    80001700:	00a00593          	li	a1,10
    80001704:	00048513          	mv	a0,s1
    80001708:	00004097          	auipc	ra,0x4
    8000170c:	744080e7          	jalr	1860(ra) # 80005e4c <_Z8printIntiii>
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
    8000174c:	56c080e7          	jalr	1388(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001778:	540080e7          	jalr	1344(ra) # 80005cb4 <_Z11printStringPKc>
        printInt(j);
    8000177c:	00000613          	li	a2,0
    80001780:	00a00593          	li	a1,10
    80001784:	0004851b          	sext.w	a0,s1
    80001788:	00004097          	auipc	ra,0x4
    8000178c:	6c4080e7          	jalr	1732(ra) # 80005e4c <_Z8printIntiii>
        printString("\n");
    80001790:	00008517          	auipc	a0,0x8
    80001794:	97050513          	addi	a0,a0,-1680 # 80009100 <CONSOLE_STATUS+0xf0>
    80001798:	00004097          	auipc	ra,0x4
    8000179c:	51c080e7          	jalr	1308(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001830:	080080e7          	jalr	128(ra) # 800088ac <__putc>
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
    80001918:	e04080e7          	jalr	-508(ra) # 80003718 <_Znwm>
    8000191c:	00050493          	mv	s1,a0
    80001920:	00000613          	li	a2,0
    80001924:	00000597          	auipc	a1,0x0
    80001928:	c6458593          	addi	a1,a1,-924 # 80001588 <_Z15thread1FunctionPv>
    8000192c:	00002097          	auipc	ra,0x2
    80001930:	f84080e7          	jalr	-124(ra) # 800038b0 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001934:	00048513          	mv	a0,s1
    80001938:	00002097          	auipc	ra,0x2
    8000193c:	eb0080e7          	jalr	-336(ra) # 800037e8 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001940:	01000513          	li	a0,16
    80001944:	00002097          	auipc	ra,0x2
    80001948:	dd4080e7          	jalr	-556(ra) # 80003718 <_Znwm>
    8000194c:	00050493          	mv	s1,a0
    80001950:	00000613          	li	a2,0
    80001954:	00000597          	auipc	a1,0x0
    80001958:	cd458593          	addi	a1,a1,-812 # 80001628 <_Z15thread2FunctionPv>
    8000195c:	00002097          	auipc	ra,0x2
    80001960:	f54080e7          	jalr	-172(ra) # 800038b0 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001964:	00048513          	mv	a0,s1
    80001968:	00002097          	auipc	ra,0x2
    8000196c:	e80080e7          	jalr	-384(ra) # 800037e8 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001970:	00002097          	auipc	ra,0x2
    80001974:	180080e7          	jalr	384(ra) # 80003af0 <_ZN5Riscv16enableInterruptsEv>
    printString("End...\n");
    80001978:	00007517          	auipc	a0,0x7
    8000197c:	6f050513          	addi	a0,a0,1776 # 80009068 <CONSOLE_STATUS+0x58>
    80001980:	00004097          	auipc	ra,0x4
    80001984:	334080e7          	jalr	820(ra) # 80005cb4 <_Z11printStringPKc>
    Riscv::disableInterrupts();
    80001988:	00002097          	auipc	ra,0x2
    8000198c:	188080e7          	jalr	392(ra) # 80003b10 <_ZN5Riscv17disableInterruptsEv>
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
    800019b4:	d90080e7          	jalr	-624(ra) # 80003740 <_ZdlPv>
    800019b8:	00090513          	mv	a0,s2
    800019bc:	0000b097          	auipc	ra,0xb
    800019c0:	3fc080e7          	jalr	1020(ra) # 8000cdb8 <_Unwind_Resume>
    800019c4:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800019c8:	00048513          	mv	a0,s1
    800019cc:	00002097          	auipc	ra,0x2
    800019d0:	d74080e7          	jalr	-652(ra) # 80003740 <_ZdlPv>
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
    80001a00:	d1c080e7          	jalr	-740(ra) # 80003718 <_Znwm>
    80001a04:	00050493          	mv	s1,a0
    80001a08:	00000613          	li	a2,0
    80001a0c:	00000597          	auipc	a1,0x0
    80001a10:	b5058593          	addi	a1,a1,-1200 # 8000155c <_Z4idlePv>
    80001a14:	00002097          	auipc	ra,0x2
    80001a18:	e9c080e7          	jalr	-356(ra) # 800038b0 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001a1c:	00048513          	mv	a0,s1
    80001a20:	00002097          	auipc	ra,0x2
    80001a24:	dc8080e7          	jalr	-568(ra) # 800037e8 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a28:	01000513          	li	a0,16
    80001a2c:	00002097          	auipc	ra,0x2
    80001a30:	cec080e7          	jalr	-788(ra) # 80003718 <_Znwm>
    80001a34:	00050493          	mv	s1,a0
    80001a38:	00000613          	li	a2,0
    80001a3c:	00000597          	auipc	a1,0x0
    80001a40:	b4c58593          	addi	a1,a1,-1204 # 80001588 <_Z15thread1FunctionPv>
    80001a44:	00002097          	auipc	ra,0x2
    80001a48:	e6c080e7          	jalr	-404(ra) # 800038b0 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001a4c:	00048513          	mv	a0,s1
    80001a50:	00002097          	auipc	ra,0x2
    80001a54:	d98080e7          	jalr	-616(ra) # 800037e8 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a58:	01000513          	li	a0,16
    80001a5c:	00002097          	auipc	ra,0x2
    80001a60:	cbc080e7          	jalr	-836(ra) # 80003718 <_Znwm>
    80001a64:	00050493          	mv	s1,a0
    80001a68:	00000613          	li	a2,0
    80001a6c:	00000597          	auipc	a1,0x0
    80001a70:	cc058593          	addi	a1,a1,-832 # 8000172c <_Z20thread2FunctionTest2Pv>
    80001a74:	00002097          	auipc	ra,0x2
    80001a78:	e3c080e7          	jalr	-452(ra) # 800038b0 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001a7c:	00048513          	mv	a0,s1
    80001a80:	00002097          	auipc	ra,0x2
    80001a84:	d68080e7          	jalr	-664(ra) # 800037e8 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001a88:	00002097          	auipc	ra,0x2
    80001a8c:	068080e7          	jalr	104(ra) # 80003af0 <_ZN5Riscv16enableInterruptsEv>
    printString("End...\n");
    80001a90:	00007517          	auipc	a0,0x7
    80001a94:	5d850513          	addi	a0,a0,1496 # 80009068 <CONSOLE_STATUS+0x58>
    80001a98:	00004097          	auipc	ra,0x4
    80001a9c:	21c080e7          	jalr	540(ra) # 80005cb4 <_Z11printStringPKc>
    Riscv::disableInterrupts();
    80001aa0:	00002097          	auipc	ra,0x2
    80001aa4:	070080e7          	jalr	112(ra) # 80003b10 <_ZN5Riscv17disableInterruptsEv>
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
    80001acc:	c78080e7          	jalr	-904(ra) # 80003740 <_ZdlPv>
    80001ad0:	00090513          	mv	a0,s2
    80001ad4:	0000b097          	auipc	ra,0xb
    80001ad8:	2e4080e7          	jalr	740(ra) # 8000cdb8 <_Unwind_Resume>
    80001adc:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001ae0:	00048513          	mv	a0,s1
    80001ae4:	00002097          	auipc	ra,0x2
    80001ae8:	c5c080e7          	jalr	-932(ra) # 80003740 <_ZdlPv>
    80001aec:	00090513          	mv	a0,s2
    80001af0:	0000b097          	auipc	ra,0xb
    80001af4:	2c8080e7          	jalr	712(ra) # 8000cdb8 <_Unwind_Resume>
    80001af8:	00050913          	mv	s2,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001afc:	00048513          	mv	a0,s1
    80001b00:	00002097          	auipc	ra,0x2
    80001b04:	c40080e7          	jalr	-960(ra) # 80003740 <_ZdlPv>
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
    80001b34:	184080e7          	jalr	388(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001b78:	140080e7          	jalr	320(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001bcc:	0ec080e7          	jalr	236(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001c14:	0a4080e7          	jalr	164(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001c58:	060080e7          	jalr	96(ra) # 80005cb4 <_Z11printStringPKc>
            return;
    80001c5c:	f21ff06f          	j	80001b7c <_Z10mallocFreev+0x68>
    printString("OK\n");
    80001c60:	00007517          	auipc	a0,0x7
    80001c64:	42850513          	addi	a0,a0,1064 # 80009088 <CONSOLE_STATUS+0x78>
    80001c68:	00004097          	auipc	ra,0x4
    80001c6c:	04c080e7          	jalr	76(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001c90:	028080e7          	jalr	40(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001ccc:	fec080e7          	jalr	-20(ra) # 80005cb4 <_Z11printStringPKc>
}
    80001cd0:	00813083          	ld	ra,8(sp)
    80001cd4:	00013403          	ld	s0,0(sp)
    80001cd8:	01010113          	addi	sp,sp,16
    80001cdc:	00008067          	ret
        printString("OK\n");
    80001ce0:	00007517          	auipc	a0,0x7
    80001ce4:	3a850513          	addi	a0,a0,936 # 80009088 <CONSOLE_STATUS+0x78>
    80001ce8:	00004097          	auipc	ra,0x4
    80001cec:	fcc080e7          	jalr	-52(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001d1c:	f9c080e7          	jalr	-100(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001d70:	0e0080e7          	jalr	224(ra) # 80005e4c <_Z8printIntiii>
    printString("\n");
    80001d74:	00007517          	auipc	a0,0x7
    80001d78:	38c50513          	addi	a0,a0,908 # 80009100 <CONSOLE_STATUS+0xf0>
    80001d7c:	00004097          	auipc	ra,0x4
    80001d80:	f38080e7          	jalr	-200(ra) # 80005cb4 <_Z11printStringPKc>
    if(sum == X*cnt)
    80001d84:	00291793          	slli	a5,s2,0x2
    80001d88:	01278933          	add	s2,a5,s2
    80001d8c:	00191913          	slli	s2,s2,0x1
    80001d90:	03390863          	beq	s2,s3,80001dc0 <_Z17lotOfSmallMallocsv+0xcc>
        printString("not OK\n");
    80001d94:	00007517          	auipc	a0,0x7
    80001d98:	2ec50513          	addi	a0,a0,748 # 80009080 <CONSOLE_STATUS+0x70>
    80001d9c:	00004097          	auipc	ra,0x4
    80001da0:	f18080e7          	jalr	-232(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001dcc:	eec080e7          	jalr	-276(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001df0:	ec8080e7          	jalr	-312(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001e1c:	e9c080e7          	jalr	-356(ra) # 80005cb4 <_Z11printStringPKc>
}
    80001e20:	00813083          	ld	ra,8(sp)
    80001e24:	00013403          	ld	s0,0(sp)
    80001e28:	01010113          	addi	sp,sp,16
    80001e2c:	00008067          	ret
         printString("OK\n");
    80001e30:	00007517          	auipc	a0,0x7
    80001e34:	25850513          	addi	a0,a0,600 # 80009088 <CONSOLE_STATUS+0x78>
    80001e38:	00004097          	auipc	ra,0x4
    80001e3c:	e7c080e7          	jalr	-388(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001e68:	e50080e7          	jalr	-432(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001eac:	e0c080e7          	jalr	-500(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001f34:	d84080e7          	jalr	-636(ra) # 80005cb4 <_Z11printStringPKc>
                return;
    80001f38:	f79ff06f          	j	80001eb0 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001f3c:	00007517          	auipc	a0,0x7
    80001f40:	19c50513          	addi	a0,a0,412 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001f44:	00004097          	auipc	ra,0x4
    80001f48:	d70080e7          	jalr	-656(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001fac:	d0c080e7          	jalr	-756(ra) # 80005cb4 <_Z11printStringPKc>
                return;
    80001fb0:	f01ff06f          	j	80001eb0 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001fb4:	00007517          	auipc	a0,0x7
    80001fb8:	12450513          	addi	a0,a0,292 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001fbc:	00004097          	auipc	ra,0x4
    80001fc0:	cf8080e7          	jalr	-776(ra) # 80005cb4 <_Z11printStringPKc>
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
    80001fdc:	cdc080e7          	jalr	-804(ra) # 80005cb4 <_Z11printStringPKc>
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
    80002000:	a20080e7          	jalr	-1504(ra) # 80003a1c <_ZN14PeriodicThreadC1Em>
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
    80002044:	6d8080e7          	jalr	1752(ra) # 80003718 <_Znwm>
    80002048:	00050913          	mv	s2,a0
    8000204c:	03200593          	li	a1,50
    80002050:	00000097          	auipc	ra,0x0
    80002054:	f94080e7          	jalr	-108(ra) # 80001fe4 <_ZN12TestPeriodicC1Em>
    t->start();
    80002058:	00090513          	mv	a0,s2
    8000205c:	00001097          	auipc	ra,0x1
    80002060:	78c080e7          	jalr	1932(ra) # 800037e8 <_ZN6Thread5startEv>
    while(true)
    80002064:	0000006f          	j	80002064 <_Z11threadTest3v+0x40>
    80002068:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    8000206c:	00090513          	mv	a0,s2
    80002070:	00001097          	auipc	ra,0x1
    80002074:	6d0080e7          	jalr	1744(ra) # 80003740 <_ZdlPv>
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
    800020d0:	be8080e7          	jalr	-1048(ra) # 80005cb4 <_Z11printStringPKc>
    object* o = new object;
    800020d4:	02c00513          	li	a0,44
    800020d8:	00001097          	auipc	ra,0x1
    800020dc:	640080e7          	jalr	1600(ra) # 80003718 <_Znwm>
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
    8000215c:	5e8080e7          	jalr	1512(ra) # 80003740 <_ZdlPv>
    delete (uint64*)m3;
    80002160:	000a0513          	mv	a0,s4
    80002164:	00001097          	auipc	ra,0x1
    80002168:	5dc080e7          	jalr	1500(ra) # 80003740 <_ZdlPv>
    delete (uint64*)m4;
    8000216c:	000a8513          	mv	a0,s5
    80002170:	00001097          	auipc	ra,0x1
    80002174:	5d0080e7          	jalr	1488(ra) # 80003740 <_ZdlPv>
    delete (uint64*)m2;
    80002178:	00098513          	mv	a0,s3
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	5c4080e7          	jalr	1476(ra) # 80003740 <_ZdlPv>
    delete (uint64*)m5;
    80002184:	000b0513          	mv	a0,s6
    80002188:	00001097          	auipc	ra,0x1
    8000218c:	5b8080e7          	jalr	1464(ra) # 80003740 <_ZdlPv>
    delete o;
    80002190:	00048863          	beqz	s1,800021a0 <_Z10mallocTestv+0x104>
    80002194:	00048513          	mv	a0,s1
    80002198:	00001097          	auipc	ra,0x1
    8000219c:	5a8080e7          	jalr	1448(ra) # 80003740 <_ZdlPv>
    printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    800021a0:	00007517          	auipc	a0,0x7
    800021a4:	f6850513          	addi	a0,a0,-152 # 80009108 <CONSOLE_STATUS+0xf8>
    800021a8:	00004097          	auipc	ra,0x4
    800021ac:	b0c080e7          	jalr	-1268(ra) # 80005cb4 <_Z11printStringPKc>
    800021b0:	0140006f          	j	800021c4 <_Z10mallocTestv+0x128>
        printString("not OK\n");
    800021b4:	00007517          	auipc	a0,0x7
    800021b8:	ecc50513          	addi	a0,a0,-308 # 80009080 <CONSOLE_STATUS+0x70>
    800021bc:	00004097          	auipc	ra,0x4
    800021c0:	af8080e7          	jalr	-1288(ra) # 80005cb4 <_Z11printStringPKc>
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
    8000220c:	aac080e7          	jalr	-1364(ra) # 80005cb4 <_Z11printStringPKc>
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
    80002248:	a70080e7          	jalr	-1424(ra) # 80005cb4 <_Z11printStringPKc>
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
    800022b4:	490080e7          	jalr	1168(ra) # 80003740 <_ZdlPv>
    printString("SUCCESSFUL: Testing allocating whole address space\n\n");
    800022b8:	00007517          	auipc	a0,0x7
    800022bc:	eb050513          	addi	a0,a0,-336 # 80009168 <CONSOLE_STATUS+0x158>
    800022c0:	00004097          	auipc	ra,0x4
    800022c4:	9f4080e7          	jalr	-1548(ra) # 80005cb4 <_Z11printStringPKc>
    800022c8:	f85ff06f          	j	8000224c <_Z16mallocEverythingv+0x60>
        printString("not OK\n");
    800022cc:	00007517          	auipc	a0,0x7
    800022d0:	db450513          	addi	a0,a0,-588 # 80009080 <CONSOLE_STATUS+0x70>
    800022d4:	00004097          	auipc	ra,0x4
    800022d8:	9e0080e7          	jalr	-1568(ra) # 80005cb4 <_Z11printStringPKc>
        return;
    800022dc:	f71ff06f          	j	8000224c <_Z16mallocEverythingv+0x60>
        printString("not OK\n");
    800022e0:	00007517          	auipc	a0,0x7
    800022e4:	da050513          	addi	a0,a0,-608 # 80009080 <CONSOLE_STATUS+0x70>
    800022e8:	00004097          	auipc	ra,0x4
    800022ec:	9cc080e7          	jalr	-1588(ra) # 80005cb4 <_Z11printStringPKc>
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
    80002330:	988080e7          	jalr	-1656(ra) # 80005cb4 <_Z11printStringPKc>
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
    80002378:	940080e7          	jalr	-1728(ra) # 80005cb4 <_Z11printStringPKc>
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
    800023b8:	38c080e7          	jalr	908(ra) # 80003740 <_ZdlPv>
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
    8000242c:	318080e7          	jalr	792(ra) # 80003740 <_ZdlPv>
    delete (uint64*)m[4];
    80002430:	f8043503          	ld	a0,-128(s0)
    80002434:	00050663          	beqz	a0,80002440 <_Z17mallocGapFillTestv+0x14c>
    80002438:	00001097          	auipc	ra,0x1
    8000243c:	308080e7          	jalr	776(ra) # 80003740 <_ZdlPv>
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
    80002488:	830080e7          	jalr	-2000(ra) # 80005cb4 <_Z11printStringPKc>
        return;
    8000248c:	ef1ff06f          	j	8000237c <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    80002490:	00007517          	auipc	a0,0x7
    80002494:	bf050513          	addi	a0,a0,-1040 # 80009080 <CONSOLE_STATUS+0x70>
    80002498:	00004097          	auipc	ra,0x4
    8000249c:	81c080e7          	jalr	-2020(ra) # 80005cb4 <_Z11printStringPKc>
        return;
    800024a0:	eddff06f          	j	8000237c <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024a4:	00007517          	auipc	a0,0x7
    800024a8:	bdc50513          	addi	a0,a0,-1060 # 80009080 <CONSOLE_STATUS+0x70>
    800024ac:	00004097          	auipc	ra,0x4
    800024b0:	808080e7          	jalr	-2040(ra) # 80005cb4 <_Z11printStringPKc>
        return;
    800024b4:	ec9ff06f          	j	8000237c <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024b8:	00007517          	auipc	a0,0x7
    800024bc:	bc850513          	addi	a0,a0,-1080 # 80009080 <CONSOLE_STATUS+0x70>
    800024c0:	00003097          	auipc	ra,0x3
    800024c4:	7f4080e7          	jalr	2036(ra) # 80005cb4 <_Z11printStringPKc>
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
    800024f0:	254080e7          	jalr	596(ra) # 80003740 <_ZdlPv>
    800024f4:	fd9ff06f          	j	800024cc <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    800024f8:	00048513          	mv	a0,s1
    800024fc:	00001097          	auipc	ra,0x1
    80002500:	244080e7          	jalr	580(ra) # 80003740 <_ZdlPv>
    delete (uint64*)tmp2;
    80002504:	00090513          	mv	a0,s2
    80002508:	00001097          	auipc	ra,0x1
    8000250c:	238080e7          	jalr	568(ra) # 80003740 <_ZdlPv>
    delete (uint64*)tmp3;
    80002510:	00098513          	mv	a0,s3
    80002514:	00001097          	auipc	ra,0x1
    80002518:	22c080e7          	jalr	556(ra) # 80003740 <_ZdlPv>
    delete (uint64*)tmp4;
    8000251c:	000c0513          	mv	a0,s8
    80002520:	00001097          	auipc	ra,0x1
    80002524:	220080e7          	jalr	544(ra) # 80003740 <_ZdlPv>
    delete (uint64*)tmp5;
    80002528:	000b8513          	mv	a0,s7
    8000252c:	00001097          	auipc	ra,0x1
    80002530:	214080e7          	jalr	532(ra) # 80003740 <_ZdlPv>
    printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80002534:	00007517          	auipc	a0,0x7
    80002538:	cb450513          	addi	a0,a0,-844 # 800091e8 <CONSOLE_STATUS+0x1d8>
    8000253c:	00003097          	auipc	ra,0x3
    80002540:	778080e7          	jalr	1912(ra) # 80005cb4 <_Z11printStringPKc>
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
    800025ec:	4e8080e7          	jalr	1256(ra) # 80002ad0 <_ZN3PCB10isFinishedEv>
    800025f0:	fe0506e3          	beqz	a0,800025dc <_Z8semTest1v+0x6c>
    800025f4:	fe843503          	ld	a0,-24(s0)
    800025f8:	00000097          	auipc	ra,0x0
    800025fc:	4d8080e7          	jalr	1240(ra) # 80002ad0 <_ZN3PCB10isFinishedEv>
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
    80002720:	f8c080e7          	jalr	-116(ra) # 800036a8 <_ZN6ThreadD1Ev>
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
    8000275c:	f50080e7          	jalr	-176(ra) # 800036a8 <_ZN6ThreadD1Ev>
    80002760:	00048513          	mv	a0,s1
    80002764:	00001097          	auipc	ra,0x1
    80002768:	fdc080e7          	jalr	-36(ra) # 80003740 <_ZdlPv>
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
    800027a0:	f0c080e7          	jalr	-244(ra) # 800036a8 <_ZN6ThreadD1Ev>
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
    800027dc:	ed0080e7          	jalr	-304(ra) # 800036a8 <_ZN6ThreadD1Ev>
    800027e0:	00048513          	mv	a0,s1
    800027e4:	00001097          	auipc	ra,0x1
    800027e8:	f5c080e7          	jalr	-164(ra) # 80003740 <_ZdlPv>
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
    8000281c:	748080e7          	jalr	1864(ra) # 80005f60 <_Z15trapPrintStringPKc>
    Riscv::popSppSpie();
    80002820:	00001097          	auipc	ra,0x1
    80002824:	338080e7          	jalr	824(ra) # 80003b58 <_ZN5Riscv10popSppSpieEv>

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
    800028cc:	c7c080e7          	jalr	-900(ra) # 80003544 <_ZN9Scheduler3putEP3PCB>
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
    800028f0:	01213023          	sd	s2,0(sp)
    800028f4:	02010413          	addi	s0,sp,32
    //trapPrintString("Dispatch called...\n");
    PCB* old = running;
    800028f8:	00009497          	auipc	s1,0x9
    800028fc:	3384b483          	ld	s1,824(s1) # 8000bc30 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80002900:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    80002904:	00100793          	li	a5,1
    80002908:	04f70a63          	beq	a4,a5,8000295c <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    8000290c:	00001097          	auipc	ra,0x1
    80002910:	c8c080e7          	jalr	-884(ra) # 80003598 <_ZN9Scheduler3getEv>
    80002914:	00009917          	auipc	s2,0x9
    80002918:	31c90913          	addi	s2,s2,796 # 8000bc30 <_ZN3PCB7runningE>
    8000291c:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    80002920:	00100793          	li	a5,1
    80002924:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);
    //trapPrintString("Switching context...\n");

    Riscv::changePrivMode();
    80002928:	00001097          	auipc	ra,0x1
    8000292c:	3f0080e7          	jalr	1008(ra) # 80003d18 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    80002930:	00093583          	ld	a1,0(s2)
    80002934:	04858593          	addi	a1,a1,72
    80002938:	04848513          	addi	a0,s1,72
    8000293c:	fffff097          	auipc	ra,0xfffff
    80002940:	8fc080e7          	jalr	-1796(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80002944:	01813083          	ld	ra,24(sp)
    80002948:	01013403          	ld	s0,16(sp)
    8000294c:	00813483          	ld	s1,8(sp)
    80002950:	00013903          	ld	s2,0(sp)
    80002954:	02010113          	addi	sp,sp,32
    80002958:	00008067          	ret
        Scheduler::put(old);
    8000295c:	00048513          	mv	a0,s1
    80002960:	00001097          	auipc	ra,0x1
    80002964:	be4080e7          	jalr	-1052(ra) # 80003544 <_ZN9Scheduler3putEP3PCB>
    80002968:	fa5ff06f          	j	8000290c <_ZN3PCB8dispatchEv+0x2c>

000000008000296c <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    8000296c:	ff010113          	addi	sp,sp,-16
    80002970:	00113423          	sd	ra,8(sp)
    80002974:	00813023          	sd	s0,0(sp)
    80002978:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    8000297c:	00002097          	auipc	ra,0x2
    80002980:	a54080e7          	jalr	-1452(ra) # 800043d0 <_Z7kmallocm>
}
    80002984:	00813083          	ld	ra,8(sp)
    80002988:	00013403          	ld	s0,0(sp)
    8000298c:	01010113          	addi	sp,sp,16
    80002990:	00008067          	ret

0000000080002994 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002994:	ff010113          	addi	sp,sp,-16
    80002998:	00113423          	sd	ra,8(sp)
    8000299c:	00813023          	sd	s0,0(sp)
    800029a0:	01010413          	addi	s0,sp,16
    kfree(p);
    800029a4:	00002097          	auipc	ra,0x2
    800029a8:	a90080e7          	jalr	-1392(ra) # 80004434 <_Z5kfreePv>
}
    800029ac:	00813083          	ld	ra,8(sp)
    800029b0:	00013403          	ld	s0,0(sp)
    800029b4:	01010113          	addi	sp,sp,16
    800029b8:	00008067          	ret

00000000800029bc <_ZN3PCBD1Ev>:

PCB::~PCB()
    800029bc:	ff010113          	addi	sp,sp,-16
    800029c0:	00113423          	sd	ra,8(sp)
    800029c4:	00813023          	sd	s0,0(sp)
    800029c8:	01010413          	addi	s0,sp,16
{
    kfree(beginSP);
    800029cc:	03853503          	ld	a0,56(a0)
    800029d0:	00002097          	auipc	ra,0x2
    800029d4:	a64080e7          	jalr	-1436(ra) # 80004434 <_Z5kfreePv>
}
    800029d8:	00813083          	ld	ra,8(sp)
    800029dc:	00013403          	ld	s0,0(sp)
    800029e0:	01010113          	addi	sp,sp,16
    800029e4:	00008067          	ret

00000000800029e8 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800029e8:	fd010113          	addi	sp,sp,-48
    800029ec:	02113423          	sd	ra,40(sp)
    800029f0:	02813023          	sd	s0,32(sp)
    800029f4:	00913c23          	sd	s1,24(sp)
    800029f8:	01213823          	sd	s2,16(sp)
    800029fc:	01313423          	sd	s3,8(sp)
    80002a00:	01413023          	sd	s4,0(sp)
    80002a04:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002a08:	05800513          	li	a0,88
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	f60080e7          	jalr	-160(ra) # 8000296c <_ZN3PCBnwEm>
    80002a14:	00050493          	mv	s1,a0
    80002a18:	00000713          	li	a4,0
    80002a1c:	00000693          	li	a3,0
    80002a20:	00000613          	li	a2,0
    80002a24:	00000593          	li	a1,0
    80002a28:	00000097          	auipc	ra,0x0
    80002a2c:	e2c080e7          	jalr	-468(ra) # 80002854 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->start();
    80002a30:	00048513          	mv	a0,s1
    80002a34:	00000097          	auipc	ra,0x0
    80002a38:	e84080e7          	jalr	-380(ra) # 800028b8 <_ZN3PCB5startEv>
    mainSystem->systemThread = true;
    80002a3c:	00100793          	li	a5,1
    80002a40:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    80002a44:	00001097          	auipc	ra,0x1
    80002a48:	b54080e7          	jalr	-1196(ra) # 80003598 <_ZN9Scheduler3getEv>
    80002a4c:	00009917          	auipc	s2,0x9
    80002a50:	1e490913          	addi	s2,s2,484 # 8000bc30 <_ZN3PCB7runningE>
    80002a54:	00a93023          	sd	a0,0(s2)
    80002a58:	00100a13          	li	s4,1
    80002a5c:	05452023          	sw	s4,64(a0)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002a60:	00001537          	lui	a0,0x1
    80002a64:	00002097          	auipc	ra,0x2
    80002a68:	96c080e7          	jalr	-1684(ra) # 800043d0 <_Z7kmallocm>
    80002a6c:	00050993          	mv	s3,a0
    80002a70:	05800513          	li	a0,88
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	ef8080e7          	jalr	-264(ra) # 8000296c <_ZN3PCBnwEm>
    80002a7c:	00050493          	mv	s1,a0
    80002a80:	00200713          	li	a4,2
    80002a84:	00098693          	mv	a3,s3
    80002a88:	00000613          	li	a2,0
    80002a8c:	00009597          	auipc	a1,0x9
    80002a90:	1045b583          	ld	a1,260(a1) # 8000bb90 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002a94:	00000097          	auipc	ra,0x0
    80002a98:	dc0080e7          	jalr	-576(ra) # 80002854 <_ZN3PCBC1EPFvPvES0_S0_m>
    80002a9c:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80002aa0:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    80002aa4:	00893503          	ld	a0,8(s2)
    80002aa8:	00000097          	auipc	ra,0x0
    80002aac:	e10080e7          	jalr	-496(ra) # 800028b8 <_ZN3PCB5startEv>
}
    80002ab0:	02813083          	ld	ra,40(sp)
    80002ab4:	02013403          	ld	s0,32(sp)
    80002ab8:	01813483          	ld	s1,24(sp)
    80002abc:	01013903          	ld	s2,16(sp)
    80002ac0:	00813983          	ld	s3,8(sp)
    80002ac4:	00013a03          	ld	s4,0(sp)
    80002ac8:	03010113          	addi	sp,sp,48
    80002acc:	00008067          	ret

0000000080002ad0 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002ad0:	ff010113          	addi	sp,sp,-16
    80002ad4:	00813423          	sd	s0,8(sp)
    80002ad8:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002adc:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    80002ae0:	ffd50513          	addi	a0,a0,-3
}
    80002ae4:	00153513          	seqz	a0,a0
    80002ae8:	00813403          	ld	s0,8(sp)
    80002aec:	01010113          	addi	sp,sp,16
    80002af0:	00008067          	ret

0000000080002af4 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002af4:	ff010113          	addi	sp,sp,-16
    80002af8:	00113423          	sd	ra,8(sp)
    80002afc:	00813023          	sd	s0,0(sp)
    80002b00:	01010413          	addi	s0,sp,16
    trapPrintString("Exiting thread...\n");
    80002b04:	00006517          	auipc	a0,0x6
    80002b08:	75450513          	addi	a0,a0,1876 # 80009258 <CONSOLE_STATUS+0x248>
    80002b0c:	00003097          	auipc	ra,0x3
    80002b10:	454080e7          	jalr	1108(ra) # 80005f60 <_Z15trapPrintStringPKc>
    PCB::timeSliceCounter = 0;
    80002b14:	00009797          	auipc	a5,0x9
    80002b18:	11c78793          	addi	a5,a5,284 # 8000bc30 <_ZN3PCB7runningE>
    80002b1c:	0007b823          	sd	zero,16(a5)
    PCB::running->setState(PCB::FINISHED);
    80002b20:	0007b783          	ld	a5,0(a5)
    80002b24:	00300713          	li	a4,3
    80002b28:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    80002b2c:	00000097          	auipc	ra,0x0
    80002b30:	db4080e7          	jalr	-588(ra) # 800028e0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80002b34:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002b38:	00001097          	auipc	ra,0x1
    80002b3c:	1a8080e7          	jalr	424(ra) # 80003ce0 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b40:	00813083          	ld	ra,8(sp)
    80002b44:	00013403          	ld	s0,0(sp)
    80002b48:	01010113          	addi	sp,sp,16
    80002b4c:	00008067          	ret

0000000080002b50 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002b50:	ff010113          	addi	sp,sp,-16
    80002b54:	00113423          	sd	ra,8(sp)
    80002b58:	00813023          	sd	s0,0(sp)
    80002b5c:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002b60:	00009797          	auipc	a5,0x9
    80002b64:	0e07b023          	sd	zero,224(a5) # 8000bc40 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002b68:	00000097          	auipc	ra,0x0
    80002b6c:	d78080e7          	jalr	-648(ra) # 800028e0 <_ZN3PCB8dispatchEv>
}
    80002b70:	00813083          	ld	ra,8(sp)
    80002b74:	00013403          	ld	s0,0(sp)
    80002b78:	01010113          	addi	sp,sp,16
    80002b7c:	00008067          	ret

0000000080002b80 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002b80:	ff010113          	addi	sp,sp,-16
    80002b84:	00113423          	sd	ra,8(sp)
    80002b88:	00813023          	sd	s0,0(sp)
    80002b8c:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002b90:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002b94:	00009717          	auipc	a4,0x9
    80002b98:	09c70713          	addi	a4,a4,156 # 8000bc30 <_ZN3PCB7runningE>
    80002b9c:	00073823          	sd	zero,16(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002ba0:	00073703          	ld	a4,0(a4)
    80002ba4:	00009697          	auipc	a3,0x9
    80002ba8:	fe46b683          	ld	a3,-28(a3) # 8000bb88 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002bac:	0006b683          	ld	a3,0(a3)
    80002bb0:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002bb4:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002bb8:	00000097          	auipc	ra,0x0
    80002bbc:	684080e7          	jalr	1668(ra) # 8000323c <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002bc0:	00000097          	auipc	ra,0x0
    80002bc4:	d20080e7          	jalr	-736(ra) # 800028e0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002bc8:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002bcc:	00001097          	auipc	ra,0x1
    80002bd0:	114080e7          	jalr	276(ra) # 80003ce0 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002bd4:	00813083          	ld	ra,8(sp)
    80002bd8:	00013403          	ld	s0,0(sp)
    80002bdc:	01010113          	addi	sp,sp,16
    80002be0:	00008067          	ret

0000000080002be4 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002be4:	fd010113          	addi	sp,sp,-48
    80002be8:	02113423          	sd	ra,40(sp)
    80002bec:	02813023          	sd	s0,32(sp)
    80002bf0:	00913c23          	sd	s1,24(sp)
    80002bf4:	01213823          	sd	s2,16(sp)
    80002bf8:	01313423          	sd	s3,8(sp)
    80002bfc:	01413023          	sd	s4,0(sp)
    80002c00:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002c04:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002c08:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002c0c:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002c10:	05800513          	li	a0,88
    80002c14:	00000097          	auipc	ra,0x0
    80002c18:	d58080e7          	jalr	-680(ra) # 8000296c <_ZN3PCBnwEm>
    80002c1c:	00050493          	mv	s1,a0
    80002c20:	00200713          	li	a4,2
    80002c24:	00009697          	auipc	a3,0x9
    80002c28:	0246b683          	ld	a3,36(a3) # 8000bc48 <_ZN3PCB10savedRegA4E>
    80002c2c:	000a0613          	mv	a2,s4
    80002c30:	00098593          	mv	a1,s3
    80002c34:	00000097          	auipc	ra,0x0
    80002c38:	c20080e7          	jalr	-992(ra) # 80002854 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002c3c:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002c40:	02048e63          	beqz	s1,80002c7c <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002c44:	00048513          	mv	a0,s1
    80002c48:	00000097          	auipc	ra,0x0
    80002c4c:	c70080e7          	jalr	-912(ra) # 800028b8 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002c50:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002c54:	00001097          	auipc	ra,0x1
    80002c58:	08c080e7          	jalr	140(ra) # 80003ce0 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c5c:	02813083          	ld	ra,40(sp)
    80002c60:	02013403          	ld	s0,32(sp)
    80002c64:	01813483          	ld	s1,24(sp)
    80002c68:	01013903          	ld	s2,16(sp)
    80002c6c:	00813983          	ld	s3,8(sp)
    80002c70:	00013a03          	ld	s4,0(sp)
    80002c74:	03010113          	addi	sp,sp,48
    80002c78:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002c7c:	fff00513          	li	a0,-1
    80002c80:	fd5ff06f          	j	80002c54 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002c84 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002c84:	ff010113          	addi	sp,sp,-16
    80002c88:	00113423          	sd	ra,8(sp)
    80002c8c:	00813023          	sd	s0,0(sp)
    80002c90:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002c94:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002c98:	02050463          	beqz	a0,80002cc0 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002c9c:	00000097          	auipc	ra,0x0
    80002ca0:	c1c080e7          	jalr	-996(ra) # 800028b8 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002ca4:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002ca8:	00001097          	auipc	ra,0x1
    80002cac:	038080e7          	jalr	56(ra) # 80003ce0 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002cb0:	00813083          	ld	ra,8(sp)
    80002cb4:	00013403          	ld	s0,0(sp)
    80002cb8:	01010113          	addi	sp,sp,16
    80002cbc:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002cc0:	fff00513          	li	a0,-1
    80002cc4:	fe5ff06f          	j	80002ca8 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002cc8 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002cc8:	fd010113          	addi	sp,sp,-48
    80002ccc:	02113423          	sd	ra,40(sp)
    80002cd0:	02813023          	sd	s0,32(sp)
    80002cd4:	00913c23          	sd	s1,24(sp)
    80002cd8:	01213823          	sd	s2,16(sp)
    80002cdc:	01313423          	sd	s3,8(sp)
    80002ce0:	01413023          	sd	s4,0(sp)
    80002ce4:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002ce8:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002cec:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002cf0:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002cf4:	05800513          	li	a0,88
    80002cf8:	00000097          	auipc	ra,0x0
    80002cfc:	c74080e7          	jalr	-908(ra) # 8000296c <_ZN3PCBnwEm>
    80002d00:	00050493          	mv	s1,a0
    80002d04:	00200713          	li	a4,2
    80002d08:	00009697          	auipc	a3,0x9
    80002d0c:	f406b683          	ld	a3,-192(a3) # 8000bc48 <_ZN3PCB10savedRegA4E>
    80002d10:	000a0613          	mv	a2,s4
    80002d14:	00098593          	mv	a1,s3
    80002d18:	00000097          	auipc	ra,0x0
    80002d1c:	b3c080e7          	jalr	-1220(ra) # 80002854 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002d20:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002d24:	02048863          	beqz	s1,80002d54 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80002d28:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002d2c:	00001097          	auipc	ra,0x1
    80002d30:	fb4080e7          	jalr	-76(ra) # 80003ce0 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002d34:	02813083          	ld	ra,40(sp)
    80002d38:	02013403          	ld	s0,32(sp)
    80002d3c:	01813483          	ld	s1,24(sp)
    80002d40:	01013903          	ld	s2,16(sp)
    80002d44:	00813983          	ld	s3,8(sp)
    80002d48:	00013a03          	ld	s4,0(sp)
    80002d4c:	03010113          	addi	sp,sp,48
    80002d50:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002d54:	fff00513          	li	a0,-1
    80002d58:	fd5ff06f          	j	80002d2c <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002d5c <_ZN8KConsole7putCharEcRPNS_4ElemES2_>:
KSemaphore* KConsole::hasCharactersOutput = 0;
KSemaphore* KConsole::hasCharactersInput = 0;
uint64 KConsole::pendingGetc = 0;

void KConsole::putChar(char c, Elem*& head, Elem*& tail)
{
    80002d5c:	fd010113          	addi	sp,sp,-48
    80002d60:	02113423          	sd	ra,40(sp)
    80002d64:	02813023          	sd	s0,32(sp)
    80002d68:	00913c23          	sd	s1,24(sp)
    80002d6c:	01213823          	sd	s2,16(sp)
    80002d70:	01313423          	sd	s3,8(sp)
    80002d74:	03010413          	addi	s0,sp,48
    80002d78:	00050993          	mv	s3,a0
    80002d7c:	00058913          	mv	s2,a1
    80002d80:	00060493          	mv	s1,a2
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    80002d84:	01000513          	li	a0,16
    80002d88:	00001097          	auipc	ra,0x1
    80002d8c:	648080e7          	jalr	1608(ra) # 800043d0 <_Z7kmallocm>
    newElem->next = 0;
    80002d90:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    80002d94:	01350423          	sb	s3,8(a0)
    if(head == 0)
    80002d98:	00093783          	ld	a5,0(s2)
    80002d9c:	02078663          	beqz	a5,80002dc8 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x6c>
    {
        head = tail = newElem;
    }
    else
    {
        tail->next = newElem;
    80002da0:	0004b783          	ld	a5,0(s1)
    80002da4:	00a7b023          	sd	a0,0(a5)
        tail = newElem;
    80002da8:	00a4b023          	sd	a0,0(s1)
    }
}
    80002dac:	02813083          	ld	ra,40(sp)
    80002db0:	02013403          	ld	s0,32(sp)
    80002db4:	01813483          	ld	s1,24(sp)
    80002db8:	01013903          	ld	s2,16(sp)
    80002dbc:	00813983          	ld	s3,8(sp)
    80002dc0:	03010113          	addi	sp,sp,48
    80002dc4:	00008067          	ret
        head = tail = newElem;
    80002dc8:	00a4b023          	sd	a0,0(s1)
    80002dcc:	00a93023          	sd	a0,0(s2)
    80002dd0:	fddff06f          	j	80002dac <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x50>

0000000080002dd4 <_ZN8KConsole7getCharERPNS_4ElemES2_>:

char KConsole::getChar(Elem*& head, Elem*& tail)
{
    80002dd4:	fe010113          	addi	sp,sp,-32
    80002dd8:	00113c23          	sd	ra,24(sp)
    80002ddc:	00813823          	sd	s0,16(sp)
    80002de0:	00913423          	sd	s1,8(sp)
    80002de4:	02010413          	addi	s0,sp,32
    80002de8:	00050793          	mv	a5,a0
    if(head == 0)
    80002dec:	00053503          	ld	a0,0(a0)
    80002df0:	02050e63          	beqz	a0,80002e2c <_ZN8KConsole7getCharERPNS_4ElemES2_+0x58>
        return 0;

    Elem* ret = head;
    head = head->next;
    80002df4:	00053703          	ld	a4,0(a0)
    80002df8:	00e7b023          	sd	a4,0(a5)
    if(head == 0)
    80002dfc:	02070463          	beqz	a4,80002e24 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x50>
        tail = 0;

    char c = ret->data;
    80002e00:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    80002e04:	00001097          	auipc	ra,0x1
    80002e08:	630080e7          	jalr	1584(ra) # 80004434 <_Z5kfreePv>
    return c;
}
    80002e0c:	00048513          	mv	a0,s1
    80002e10:	01813083          	ld	ra,24(sp)
    80002e14:	01013403          	ld	s0,16(sp)
    80002e18:	00813483          	ld	s1,8(sp)
    80002e1c:	02010113          	addi	sp,sp,32
    80002e20:	00008067          	ret
        tail = 0;
    80002e24:	0005b023          	sd	zero,0(a1)
    80002e28:	fd9ff06f          	j	80002e00 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x2c>
        return 0;
    80002e2c:	00000493          	li	s1,0
    80002e30:	fddff06f          	j	80002e0c <_ZN8KConsole7getCharERPNS_4ElemES2_+0x38>

0000000080002e34 <_ZN8KConsole10initializeEv>:

void KConsole::initialize()
{
    80002e34:	fe010113          	addi	sp,sp,-32
    80002e38:	00113c23          	sd	ra,24(sp)
    80002e3c:	00813823          	sd	s0,16(sp)
    80002e40:	00913423          	sd	s1,8(sp)
    80002e44:	01213023          	sd	s2,0(sp)
    80002e48:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002e4c:	01800513          	li	a0,24
    80002e50:	00002097          	auipc	ra,0x2
    80002e54:	894080e7          	jalr	-1900(ra) # 800046e4 <_ZN10KSemaphorenwEm>
    80002e58:	00050493          	mv	s1,a0
    80002e5c:	00000593          	li	a1,0
    80002e60:	00001097          	auipc	ra,0x1
    80002e64:	634080e7          	jalr	1588(ra) # 80004494 <_ZN10KSemaphoreC1Ei>
    80002e68:	00009797          	auipc	a5,0x9
    80002e6c:	de97b423          	sd	s1,-536(a5) # 8000bc50 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002e70:	01800513          	li	a0,24
    80002e74:	00002097          	auipc	ra,0x2
    80002e78:	870080e7          	jalr	-1936(ra) # 800046e4 <_ZN10KSemaphorenwEm>
    80002e7c:	00050493          	mv	s1,a0
    80002e80:	00000593          	li	a1,0
    80002e84:	00001097          	auipc	ra,0x1
    80002e88:	610080e7          	jalr	1552(ra) # 80004494 <_ZN10KSemaphoreC1Ei>
    80002e8c:	00009797          	auipc	a5,0x9
    80002e90:	dc97b623          	sd	s1,-564(a5) # 8000bc58 <_ZN8KConsole19hasCharactersOutputE>
}
    80002e94:	01813083          	ld	ra,24(sp)
    80002e98:	01013403          	ld	s0,16(sp)
    80002e9c:	00813483          	ld	s1,8(sp)
    80002ea0:	00013903          	ld	s2,0(sp)
    80002ea4:	02010113          	addi	sp,sp,32
    80002ea8:	00008067          	ret
    80002eac:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002eb0:	00048513          	mv	a0,s1
    80002eb4:	00002097          	auipc	ra,0x2
    80002eb8:	8c8080e7          	jalr	-1848(ra) # 8000477c <_ZN10KSemaphoredlEPv>
    80002ebc:	00090513          	mv	a0,s2
    80002ec0:	0000a097          	auipc	ra,0xa
    80002ec4:	ef8080e7          	jalr	-264(ra) # 8000cdb8 <_Unwind_Resume>
    80002ec8:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002ecc:	00048513          	mv	a0,s1
    80002ed0:	00002097          	auipc	ra,0x2
    80002ed4:	8ac080e7          	jalr	-1876(ra) # 8000477c <_ZN10KSemaphoredlEPv>
    80002ed8:	00090513          	mv	a0,s2
    80002edc:	0000a097          	auipc	ra,0xa
    80002ee0:	edc080e7          	jalr	-292(ra) # 8000cdb8 <_Unwind_Resume>

0000000080002ee4 <_ZN8KConsole17putCharacterInputEc>:
                thread_dispatch();
    }
}

void KConsole::putCharacterInput(char c)
{
    80002ee4:	ff010113          	addi	sp,sp,-16
    80002ee8:	00113423          	sd	ra,8(sp)
    80002eec:	00813023          	sd	s0,0(sp)
    80002ef0:	01010413          	addi	s0,sp,16
    putChar(c, headInput, tailInput);
    80002ef4:	00009617          	auipc	a2,0x9
    80002ef8:	d6c60613          	addi	a2,a2,-660 # 8000bc60 <_ZN8KConsole9tailInputE>
    80002efc:	00009597          	auipc	a1,0x9
    80002f00:	d6c58593          	addi	a1,a1,-660 # 8000bc68 <_ZN8KConsole9headInputE>
    80002f04:	00000097          	auipc	ra,0x0
    80002f08:	e58080e7          	jalr	-424(ra) # 80002d5c <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersInput->signal();
    80002f0c:	00009517          	auipc	a0,0x9
    80002f10:	d4453503          	ld	a0,-700(a0) # 8000bc50 <_ZN8KConsole18hasCharactersInputE>
    80002f14:	00001097          	auipc	ra,0x1
    80002f18:	788080e7          	jalr	1928(ra) # 8000469c <_ZN10KSemaphore6signalEv>
}
    80002f1c:	00813083          	ld	ra,8(sp)
    80002f20:	00013403          	ld	s0,0(sp)
    80002f24:	01010113          	addi	sp,sp,16
    80002f28:	00008067          	ret

0000000080002f2c <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002f2c:	ff010113          	addi	sp,sp,-16
    80002f30:	00113423          	sd	ra,8(sp)
    80002f34:	00813023          	sd	s0,0(sp)
    80002f38:	01010413          	addi	s0,sp,16
    hasCharactersInput->wait();
    80002f3c:	00009517          	auipc	a0,0x9
    80002f40:	d1453503          	ld	a0,-748(a0) # 8000bc50 <_ZN8KConsole18hasCharactersInputE>
    80002f44:	00001097          	auipc	ra,0x1
    80002f48:	5f8080e7          	jalr	1528(ra) # 8000453c <_ZN10KSemaphore4waitEv>
    return getChar(headInput, tailInput);
    80002f4c:	00009597          	auipc	a1,0x9
    80002f50:	d1458593          	addi	a1,a1,-748 # 8000bc60 <_ZN8KConsole9tailInputE>
    80002f54:	00009517          	auipc	a0,0x9
    80002f58:	d1450513          	addi	a0,a0,-748 # 8000bc68 <_ZN8KConsole9headInputE>
    80002f5c:	00000097          	auipc	ra,0x0
    80002f60:	e78080e7          	jalr	-392(ra) # 80002dd4 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002f64:	00813083          	ld	ra,8(sp)
    80002f68:	00013403          	ld	s0,0(sp)
    80002f6c:	01010113          	addi	sp,sp,16
    80002f70:	00008067          	ret

0000000080002f74 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    80002f74:	ff010113          	addi	sp,sp,-16
    80002f78:	00113423          	sd	ra,8(sp)
    80002f7c:	00813023          	sd	s0,0(sp)
    80002f80:	01010413          	addi	s0,sp,16
    putChar(c, headOutput, tailOutput);
    80002f84:	00009617          	auipc	a2,0x9
    80002f88:	cec60613          	addi	a2,a2,-788 # 8000bc70 <_ZN8KConsole10tailOutputE>
    80002f8c:	00009597          	auipc	a1,0x9
    80002f90:	cec58593          	addi	a1,a1,-788 # 8000bc78 <_ZN8KConsole10headOutputE>
    80002f94:	00000097          	auipc	ra,0x0
    80002f98:	dc8080e7          	jalr	-568(ra) # 80002d5c <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersOutput->signal();
    80002f9c:	00009517          	auipc	a0,0x9
    80002fa0:	cbc53503          	ld	a0,-836(a0) # 8000bc58 <_ZN8KConsole19hasCharactersOutputE>
    80002fa4:	00001097          	auipc	ra,0x1
    80002fa8:	6f8080e7          	jalr	1784(ra) # 8000469c <_ZN10KSemaphore6signalEv>
}
    80002fac:	00813083          	ld	ra,8(sp)
    80002fb0:	00013403          	ld	s0,0(sp)
    80002fb4:	01010113          	addi	sp,sp,16
    80002fb8:	00008067          	ret

0000000080002fbc <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80002fbc:	00009797          	auipc	a5,0x9
    80002fc0:	b947b783          	ld	a5,-1132(a5) # 8000bb50 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002fc4:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002fc8:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002fcc:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002fd0:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002fd4:	0017f793          	andi	a5,a5,1
    80002fd8:	08078063          	beqz	a5,80003058 <_ZN8KConsole24getCharactersFromConsoleEPv+0x9c>
{
    80002fdc:	fe010113          	addi	sp,sp,-32
    80002fe0:	00113c23          	sd	ra,24(sp)
    80002fe4:	00813823          	sd	s0,16(sp)
    80002fe8:	00913423          	sd	s1,8(sp)
    80002fec:	02010413          	addi	s0,sp,32
            x = CONSOLE_TX_DATA;
    80002ff0:	00009797          	auipc	a5,0x9
    80002ff4:	b807b783          	ld	a5,-1152(a5) # 8000bb70 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002ff8:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002ffc:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1,0(a0)");
    80003000:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003004:	00058493          	mv	s1,a1
    80003008:	0ff4f493          	andi	s1,s1,255
            putCharacterInput(c);
    8000300c:	00048513          	mv	a0,s1
    80003010:	00000097          	auipc	ra,0x0
    80003014:	ed4080e7          	jalr	-300(ra) # 80002ee4 <_ZN8KConsole17putCharacterInputEc>
            putCharacterOutput(c);
    80003018:	00048513          	mv	a0,s1
    8000301c:	00000097          	auipc	ra,0x0
    80003020:	f58080e7          	jalr	-168(ra) # 80002f74 <_ZN8KConsole18putCharacterOutputEc>
        uint64 x = CONSOLE_STATUS;
    80003024:	00009797          	auipc	a5,0x9
    80003028:	b2c7b783          	ld	a5,-1236(a5) # 8000bb50 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000302c:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80003030:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80003034:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003038:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    8000303c:	0017f793          	andi	a5,a5,1
    80003040:	fa0798e3          	bnez	a5,80002ff0 <_ZN8KConsole24getCharactersFromConsoleEPv+0x34>
}
    80003044:	01813083          	ld	ra,24(sp)
    80003048:	01013403          	ld	s0,16(sp)
    8000304c:	00813483          	ld	s1,8(sp)
    80003050:	02010113          	addi	sp,sp,32
    80003054:	00008067          	ret
    80003058:	00008067          	ret

000000008000305c <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    8000305c:	ff010113          	addi	sp,sp,-16
    80003060:	00113423          	sd	ra,8(sp)
    80003064:	00813023          	sd	s0,0(sp)
    80003068:	01010413          	addi	s0,sp,16
    hasCharactersOutput->wait();
    8000306c:	00009517          	auipc	a0,0x9
    80003070:	bec53503          	ld	a0,-1044(a0) # 8000bc58 <_ZN8KConsole19hasCharactersOutputE>
    80003074:	00001097          	auipc	ra,0x1
    80003078:	4c8080e7          	jalr	1224(ra) # 8000453c <_ZN10KSemaphore4waitEv>
    return getChar(headOutput, tailOutput);
    8000307c:	00009597          	auipc	a1,0x9
    80003080:	bf458593          	addi	a1,a1,-1036 # 8000bc70 <_ZN8KConsole10tailOutputE>
    80003084:	00009517          	auipc	a0,0x9
    80003088:	bf450513          	addi	a0,a0,-1036 # 8000bc78 <_ZN8KConsole10headOutputE>
    8000308c:	00000097          	auipc	ra,0x0
    80003090:	d48080e7          	jalr	-696(ra) # 80002dd4 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80003094:	00813083          	ld	ra,8(sp)
    80003098:	00013403          	ld	s0,0(sp)
    8000309c:	01010113          	addi	sp,sp,16
    800030a0:	00008067          	ret

00000000800030a4 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    800030a4:	ff010113          	addi	sp,sp,-16
    800030a8:	00113423          	sd	ra,8(sp)
    800030ac:	00813023          	sd	s0,0(sp)
    800030b0:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    800030b4:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    800030b8:	0ff57513          	andi	a0,a0,255
    800030bc:	00000097          	auipc	ra,0x0
    800030c0:	eb8080e7          	jalr	-328(ra) # 80002f74 <_ZN8KConsole18putCharacterOutputEc>
    Elem* curr = headOutput;
    800030c4:	00009797          	auipc	a5,0x9
    800030c8:	bb47b783          	ld	a5,-1100(a5) # 8000bc78 <_ZN8KConsole10headOutputE>
    while(curr != 0)
    800030cc:	00078663          	beqz	a5,800030d8 <_ZN8KConsole11putcHandlerEv+0x34>
    {
        curr = curr->next;
    800030d0:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    800030d4:	ff9ff06f          	j	800030cc <_ZN8KConsole11putcHandlerEv+0x28>
    }
}
    800030d8:	00813083          	ld	ra,8(sp)
    800030dc:	00013403          	ld	s0,0(sp)
    800030e0:	01010113          	addi	sp,sp,16
    800030e4:	00008067          	ret

00000000800030e8 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    800030e8:	ff010113          	addi	sp,sp,-16
    800030ec:	00113423          	sd	ra,8(sp)
    800030f0:	00813023          	sd	s0,0(sp)
    800030f4:	01010413          	addi	s0,sp,16
    pendingGetc++;
    800030f8:	00009717          	auipc	a4,0x9
    800030fc:	b5870713          	addi	a4,a4,-1192 # 8000bc50 <_ZN8KConsole18hasCharactersInputE>
    80003100:	03073783          	ld	a5,48(a4)
    80003104:	00178793          	addi	a5,a5,1
    80003108:	02f73823          	sd	a5,48(a4)
    char ch;
    ch = getCharacterInput();
    8000310c:	00000097          	auipc	ra,0x0
    80003110:	e20080e7          	jalr	-480(ra) # 80002f2c <_ZN8KConsole17getCharacterInputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003114:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003118:	00001097          	auipc	ra,0x1
    8000311c:	bc8080e7          	jalr	-1080(ra) # 80003ce0 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003120:	00813083          	ld	ra,8(sp)
    80003124:	00013403          	ld	s0,0(sp)
    80003128:	01010113          	addi	sp,sp,16
    8000312c:	00008067          	ret

0000000080003130 <_ZN8KConsole11printBufferEv>:

void KConsole::printBuffer()
{
    80003130:	fe010113          	addi	sp,sp,-32
    80003134:	00113c23          	sd	ra,24(sp)
    80003138:	00813823          	sd	s0,16(sp)
    8000313c:	00913423          	sd	s1,8(sp)
    80003140:	02010413          	addi	s0,sp,32
    Elem* curr = headInput;
    80003144:	00009497          	auipc	s1,0x9
    80003148:	b244b483          	ld	s1,-1244(s1) # 8000bc68 <_ZN8KConsole9headInputE>
    while(curr != 0)
    8000314c:	00048c63          	beqz	s1,80003164 <_ZN8KConsole11printBufferEv+0x34>
    {
        putc(curr->data);
    80003150:	0084c503          	lbu	a0,8(s1)
    80003154:	ffffe097          	auipc	ra,0xffffe
    80003158:	3e4080e7          	jalr	996(ra) # 80001538 <putc>
        curr = curr->next;
    8000315c:	0004b483          	ld	s1,0(s1)
    while(curr != 0)
    80003160:	fedff06f          	j	8000314c <_ZN8KConsole11printBufferEv+0x1c>
    }
}
    80003164:	01813083          	ld	ra,24(sp)
    80003168:	01013403          	ld	s0,16(sp)
    8000316c:	00813483          	ld	s1,8(sp)
    80003170:	02010113          	addi	sp,sp,32
    80003174:	00008067          	ret

0000000080003178 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80003178:	ff010113          	addi	sp,sp,-16
    8000317c:	00813423          	sd	s0,8(sp)
    80003180:	01010413          	addi	s0,sp,16
    return headOutput == 0;
}
    80003184:	00009517          	auipc	a0,0x9
    80003188:	af453503          	ld	a0,-1292(a0) # 8000bc78 <_ZN8KConsole10headOutputE>
    8000318c:	00153513          	seqz	a0,a0
    80003190:	00813403          	ld	s0,8(sp)
    80003194:	01010113          	addi	sp,sp,16
    80003198:	00008067          	ret

000000008000319c <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    8000319c:	fe010113          	addi	sp,sp,-32
    800031a0:	00113c23          	sd	ra,24(sp)
    800031a4:	00813823          	sd	s0,16(sp)
    800031a8:	02010413          	addi	s0,sp,32
    800031ac:	0500006f          	j	800031fc <_ZN8KConsole23sendCharactersToConsoleEPv+0x60>
            uint64 x = CONSOLE_STATUS;
    800031b0:	00009797          	auipc	a5,0x9
    800031b4:	9a07b783          	ld	a5,-1632(a5) # 8000bb50 <_GLOBAL_OFFSET_TABLE_+0x10>
    800031b8:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    800031bc:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    800031c0:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    800031c4:	00058793          	mv	a5,a1
            if (operation & STATUS_WRITE_MASK)
    800031c8:	0207f793          	andi	a5,a5,32
    800031cc:	06078263          	beqz	a5,80003230 <_ZN8KConsole23sendCharactersToConsoleEPv+0x94>
                char volatile c = getCharacterOutput();
    800031d0:	00000097          	auipc	ra,0x0
    800031d4:	e8c080e7          	jalr	-372(ra) # 8000305c <_ZN8KConsole18getCharacterOutputEv>
    800031d8:	fea407a3          	sb	a0,-17(s0)
                x = CONSOLE_RX_DATA;
    800031dc:	00009797          	auipc	a5,0x9
    800031e0:	96c7b783          	ld	a5,-1684(a5) # 8000bb48 <_GLOBAL_OFFSET_TABLE_+0x8>
    800031e4:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    800031e8:	00078513          	mv	a0,a5
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    800031ec:	fef44783          	lbu	a5,-17(s0)
    800031f0:	0ff7f793          	andi	a5,a5,255
    800031f4:	00078593          	mv	a1,a5
                __asm__ volatile("sb a1,0(a0)");
    800031f8:	00b50023          	sb	a1,0(a0)
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    800031fc:	00009797          	auipc	a5,0x9
    80003200:	9a47b783          	ld	a5,-1628(a5) # 8000bba0 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003204:	0007c783          	lbu	a5,0(a5)
    80003208:	fa0784e3          	beqz	a5,800031b0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
    8000320c:	00000097          	auipc	ra,0x0
    80003210:	f6c080e7          	jalr	-148(ra) # 80003178 <_ZN8KConsole17outputBufferEmptyEv>
    80003214:	f8050ee3          	beqz	a0,800031b0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
    80003218:	00009797          	auipc	a5,0x9
    8000321c:	a687b783          	ld	a5,-1432(a5) # 8000bc80 <_ZN8KConsole11pendingGetcE>
    80003220:	f80798e3          	bnez	a5,800031b0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
                thread_exit();
    80003224:	ffffe097          	auipc	ra,0xffffe
    80003228:	130080e7          	jalr	304(ra) # 80001354 <thread_exit>
    8000322c:	f85ff06f          	j	800031b0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
                thread_dispatch();
    80003230:	ffffe097          	auipc	ra,0xffffe
    80003234:	104080e7          	jalr	260(ra) # 80001334 <thread_dispatch>
    80003238:	fc5ff06f          	j	800031fc <_ZN8KConsole23sendCharactersToConsoleEPv+0x60>

000000008000323c <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    8000323c:	ff010113          	addi	sp,sp,-16
    80003240:	00813423          	sd	s0,8(sp)
    80003244:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003248:	00009797          	auipc	a5,0x9
    8000324c:	9607b783          	ld	a5,-1696(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003250:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003254:	00500793          	li	a5,5
    80003258:	04f62023          	sw	a5,64(a2)
    //trapPrintString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    8000325c:	00009797          	auipc	a5,0x9
    80003260:	a2c7b783          	ld	a5,-1492(a5) # 8000bc88 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003264:	00000593          	li	a1,0
    while(curr != 0)
    80003268:	02078063          	beqz	a5,80003288 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    8000326c:	02063683          	ld	a3,32(a2)
    80003270:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003274:	00e6e863          	bltu	a3,a4,80003284 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003278:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    8000327c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003280:	fe9ff06f          	j	80003268 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003284:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80003288:	00058a63          	beqz	a1,8000329c <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    8000328c:	00c5b423          	sd	a2,8(a1)
}
    80003290:	00813403          	ld	s0,8(sp)
    80003294:	01010113          	addi	sp,sp,16
    80003298:	00008067          	ret
        sleepingPCBHead = PCB::running;
    8000329c:	00009797          	auipc	a5,0x9
    800032a0:	9ec7b623          	sd	a2,-1556(a5) # 8000bc88 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800032a4:	fedff06f          	j	80003290 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

00000000800032a8 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //trapPrintString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    800032a8:	00009517          	auipc	a0,0x9
    800032ac:	9e053503          	ld	a0,-1568(a0) # 8000bc88 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    800032b0:	06050e63          	beqz	a0,8000332c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    {
        //trapPrintString("No sleeping PCBs...\n");
        return;
    }
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800032b4:	06050c63          	beqz	a0,8000332c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    800032b8:	02053783          	ld	a5,32(a0)
    800032bc:	00009717          	auipc	a4,0x9
    800032c0:	8cc73703          	ld	a4,-1844(a4) # 8000bb88 <_GLOBAL_OFFSET_TABLE_+0x48>
    800032c4:	00073703          	ld	a4,0(a4)
    800032c8:	06f76263          	bltu	a4,a5,8000332c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    800032cc:	fe010113          	addi	sp,sp,-32
    800032d0:	00113c23          	sd	ra,24(sp)
    800032d4:	00813823          	sd	s0,16(sp)
    800032d8:	00913423          	sd	s1,8(sp)
    800032dc:	02010413          	addi	s0,sp,32
    800032e0:	0180006f          	j	800032f8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    800032e4:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800032e8:	00009717          	auipc	a4,0x9
    800032ec:	8a073703          	ld	a4,-1888(a4) # 8000bb88 <_GLOBAL_OFFSET_TABLE_+0x48>
    800032f0:	00073703          	ld	a4,0(a4)
    800032f4:	02f76263          	bltu	a4,a5,80003318 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    800032f8:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    800032fc:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80003300:	00000097          	auipc	ra,0x0
    80003304:	244080e7          	jalr	580(ra) # 80003544 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003308:	00009797          	auipc	a5,0x9
    8000330c:	9897b023          	sd	s1,-1664(a5) # 8000bc88 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80003310:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003314:	fc0498e3          	bnez	s1,800032e4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    80003318:	01813083          	ld	ra,24(sp)
    8000331c:	01013403          	ld	s0,16(sp)
    80003320:	00813483          	ld	s1,8(sp)
    80003324:	02010113          	addi	sp,sp,32
    80003328:	00008067          	ret
    8000332c:	00008067          	ret

0000000080003330 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80003330:	fe010113          	addi	sp,sp,-32
    80003334:	00113c23          	sd	ra,24(sp)
    80003338:	00813823          	sd	s0,16(sp)
    8000333c:	00913423          	sd	s1,8(sp)
    80003340:	01213023          	sd	s2,0(sp)
    80003344:	02010413          	addi	s0,sp,32
    80003348:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    8000334c:	00053503          	ld	a0,0(a0)
    80003350:	00853903          	ld	s2,8(a0)
    kfree(first);
    80003354:	00001097          	auipc	ra,0x1
    80003358:	0e0080e7          	jalr	224(ra) # 80004434 <_Z5kfreePv>
    first = newFirst;
    8000335c:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80003360:	00090e63          	beqz	s2,8000337c <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80003364:	01813083          	ld	ra,24(sp)
    80003368:	01013403          	ld	s0,16(sp)
    8000336c:	00813483          	ld	s1,8(sp)
    80003370:	00013903          	ld	s2,0(sp)
    80003374:	02010113          	addi	sp,sp,32
    80003378:	00008067          	ret
        first = last = 0;
    8000337c:	0004b423          	sd	zero,8(s1)
    80003380:	0004b023          	sd	zero,0(s1)
}
    80003384:	fe1ff06f          	j	80003364 <_ZN5Queue3popEv+0x34>

0000000080003388 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t)
{
    80003388:	fe010113          	addi	sp,sp,-32
    8000338c:	00113c23          	sd	ra,24(sp)
    80003390:	00813823          	sd	s0,16(sp)
    80003394:	00913423          	sd	s1,8(sp)
    80003398:	01213023          	sd	s2,0(sp)
    8000339c:	02010413          	addi	s0,sp,32
    800033a0:	00050493          	mv	s1,a0
    800033a4:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    800033a8:	01000513          	li	a0,16
    800033ac:	00001097          	auipc	ra,0x1
    800033b0:	024080e7          	jalr	36(ra) # 800043d0 <_Z7kmallocm>
    newElem->data = t;
    800033b4:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    800033b8:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    800033bc:	0004b783          	ld	a5,0(s1)
    800033c0:	02078463          	beqz	a5,800033e8 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    800033c4:	0084b783          	ld	a5,8(s1)
    800033c8:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    800033cc:	00a4b423          	sd	a0,8(s1)
    }
}
    800033d0:	01813083          	ld	ra,24(sp)
    800033d4:	01013403          	ld	s0,16(sp)
    800033d8:	00813483          	ld	s1,8(sp)
    800033dc:	00013903          	ld	s2,0(sp)
    800033e0:	02010113          	addi	sp,sp,32
    800033e4:	00008067          	ret
        first = newElem;
    800033e8:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    800033ec:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    800033f0:	00053423          	sd	zero,8(a0)
    800033f4:	0004b783          	ld	a5,0(s1)
    800033f8:	0007b423          	sd	zero,8(a5)
    800033fc:	fd5ff06f          	j	800033d0 <_ZN5Queue4pushEP3PCB+0x48>

0000000080003400 <_ZN5Queue5frontEv>:


PCB* Queue::front()
{
    80003400:	ff010113          	addi	sp,sp,-16
    80003404:	00813423          	sd	s0,8(sp)
    80003408:	01010413          	addi	s0,sp,16
    if(first == 0)
    8000340c:	00053503          	ld	a0,0(a0)
    80003410:	00050463          	beqz	a0,80003418 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80003414:	00053503          	ld	a0,0(a0)
}
    80003418:	00813403          	ld	s0,8(sp)
    8000341c:	01010113          	addi	sp,sp,16
    80003420:	00008067          	ret

0000000080003424 <_ZN5QueueC1Ev>:

Queue::Queue()
    80003424:	ff010113          	addi	sp,sp,-16
    80003428:	00813423          	sd	s0,8(sp)
    8000342c:	01010413          	addi	s0,sp,16
{
    first = last = 0;
    80003430:	00053423          	sd	zero,8(a0)
    80003434:	00053023          	sd	zero,0(a0)
}
    80003438:	00813403          	ld	s0,8(sp)
    8000343c:	01010113          	addi	sp,sp,16
    80003440:	00008067          	ret

0000000080003444 <_ZN5QueueD1Ev>:

Queue::~Queue()
{
    Elem* curr = first;
    80003444:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80003448:	04050063          	beqz	a0,80003488 <_ZN5QueueD1Ev+0x44>
Queue::~Queue()
    8000344c:	fe010113          	addi	sp,sp,-32
    80003450:	00113c23          	sd	ra,24(sp)
    80003454:	00813823          	sd	s0,16(sp)
    80003458:	00913423          	sd	s1,8(sp)
    8000345c:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    80003460:	00853483          	ld	s1,8(a0)
        kfree(old);
    80003464:	00001097          	auipc	ra,0x1
    80003468:	fd0080e7          	jalr	-48(ra) # 80004434 <_Z5kfreePv>
        curr = curr->next;
    8000346c:	00048513          	mv	a0,s1
    while(curr != 0)
    80003470:	fe0498e3          	bnez	s1,80003460 <_ZN5QueueD1Ev+0x1c>
    }
}
    80003474:	01813083          	ld	ra,24(sp)
    80003478:	01013403          	ld	s0,16(sp)
    8000347c:	00813483          	ld	s1,8(sp)
    80003480:	02010113          	addi	sp,sp,32
    80003484:	00008067          	ret
    80003488:	00008067          	ret

000000008000348c <_ZN5Queue4sizeEv>:

int Queue::size()
{
    8000348c:	ff010113          	addi	sp,sp,-16
    80003490:	00813423          	sd	s0,8(sp)
    80003494:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80003498:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    8000349c:	00000513          	li	a0,0
    while(curr != 0)
    800034a0:	00078863          	beqz	a5,800034b0 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    800034a4:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    800034a8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800034ac:	ff5ff06f          	j	800034a0 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    800034b0:	00813403          	ld	s0,8(sp)
    800034b4:	01010113          	addi	sp,sp,16
    800034b8:	00008067          	ret

00000000800034bc <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    800034bc:	ff010113          	addi	sp,sp,-16
    800034c0:	00113423          	sd	ra,8(sp)
    800034c4:	00813023          	sd	s0,0(sp)
    800034c8:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800034cc:	00001097          	auipc	ra,0x1
    800034d0:	f04080e7          	jalr	-252(ra) # 800043d0 <_Z7kmallocm>
}
    800034d4:	00813083          	ld	ra,8(sp)
    800034d8:	00013403          	ld	s0,0(sp)
    800034dc:	01010113          	addi	sp,sp,16
    800034e0:	00008067          	ret

00000000800034e4 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800034e4:	ff010113          	addi	sp,sp,-16
    800034e8:	00113423          	sd	ra,8(sp)
    800034ec:	00813023          	sd	s0,0(sp)
    800034f0:	01010413          	addi	s0,sp,16
    kfree(p);
    800034f4:	00001097          	auipc	ra,0x1
    800034f8:	f40080e7          	jalr	-192(ra) # 80004434 <_Z5kfreePv>
}
    800034fc:	00813083          	ld	ra,8(sp)
    80003500:	00013403          	ld	s0,0(sp)
    80003504:	01010113          	addi	sp,sp,16
    80003508:	00008067          	ret

000000008000350c <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    8000350c:	ff010113          	addi	sp,sp,-16
    80003510:	00813423          	sd	s0,8(sp)
    80003514:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003518:	00008797          	auipc	a5,0x8
    8000351c:	7787b783          	ld	a5,1912(a5) # 8000bc90 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003520:	00000513          	li	a0,0
    while(curr != 0)
    80003524:	00078863          	beqz	a5,80003534 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003528:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    8000352c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003530:	ff5ff06f          	j	80003524 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003534:	0005051b          	sext.w	a0,a0
    80003538:	00813403          	ld	s0,8(sp)
    8000353c:	01010113          	addi	sp,sp,16
    80003540:	00008067          	ret

0000000080003544 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003544:	ff010113          	addi	sp,sp,-16
    80003548:	00813423          	sd	s0,8(sp)
    8000354c:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003550:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003554:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003558:	00008797          	auipc	a5,0x8
    8000355c:	7387b783          	ld	a5,1848(a5) # 8000bc90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003560:	02078263          	beqz	a5,80003584 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003564:	00008797          	auipc	a5,0x8
    80003568:	72c78793          	addi	a5,a5,1836 # 8000bc90 <_ZN9Scheduler16schedulerPCBHeadE>
    8000356c:	0087b703          	ld	a4,8(a5)
    80003570:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003574:	00a7b423          	sd	a0,8(a5)
    }
}
    80003578:	00813403          	ld	s0,8(sp)
    8000357c:	01010113          	addi	sp,sp,16
    80003580:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003584:	00008797          	auipc	a5,0x8
    80003588:	70c78793          	addi	a5,a5,1804 # 8000bc90 <_ZN9Scheduler16schedulerPCBHeadE>
    8000358c:	00a7b423          	sd	a0,8(a5)
    80003590:	00a7b023          	sd	a0,0(a5)
    80003594:	fe5ff06f          	j	80003578 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003598 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003598:	ff010113          	addi	sp,sp,-16
    8000359c:	00813423          	sd	s0,8(sp)
    800035a0:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800035a4:	00008517          	auipc	a0,0x8
    800035a8:	6ec53503          	ld	a0,1772(a0) # 8000bc90 <_ZN9Scheduler16schedulerPCBHeadE>
    800035ac:	00050c63          	beqz	a0,800035c4 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    800035b0:	00853783          	ld	a5,8(a0)
    800035b4:	00078e63          	beqz	a5,800035d0 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    800035b8:	00008717          	auipc	a4,0x8
    800035bc:	6cf73c23          	sd	a5,1752(a4) # 8000bc90 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    800035c0:	00053423          	sd	zero,8(a0)
    return retval;
}
    800035c4:	00813403          	ld	s0,8(sp)
    800035c8:	01010113          	addi	sp,sp,16
    800035cc:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    800035d0:	00008797          	auipc	a5,0x8
    800035d4:	6c078793          	addi	a5,a5,1728 # 8000bc90 <_ZN9Scheduler16schedulerPCBHeadE>
    800035d8:	0007b423          	sd	zero,8(a5)
    800035dc:	0007b023          	sd	zero,0(a5)
    800035e0:	fe1ff06f          	j	800035c0 <_ZN9Scheduler3getEv+0x28>

00000000800035e4 <_ZN9Scheduler5printEv>:

void Scheduler::print() {
    800035e4:	fe010113          	addi	sp,sp,-32
    800035e8:	00113c23          	sd	ra,24(sp)
    800035ec:	00813823          	sd	s0,16(sp)
    800035f0:	00913423          	sd	s1,8(sp)
    800035f4:	02010413          	addi	s0,sp,32
    trapPrintString("Scheduler print\n");
    800035f8:	00006517          	auipc	a0,0x6
    800035fc:	c7850513          	addi	a0,a0,-904 # 80009270 <CONSOLE_STATUS+0x260>
    80003600:	00003097          	auipc	ra,0x3
    80003604:	960080e7          	jalr	-1696(ra) # 80005f60 <_Z15trapPrintStringPKc>
    PCB* curr = schedulerPCBHead;
    80003608:	00008497          	auipc	s1,0x8
    8000360c:	6884b483          	ld	s1,1672(s1) # 8000bc90 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003610:	02048863          	beqz	s1,80003640 <_ZN9Scheduler5printEv+0x5c>
    {
        printInt((uint64)curr, 16);
    80003614:	00000613          	li	a2,0
    80003618:	01000593          	li	a1,16
    8000361c:	0004851b          	sext.w	a0,s1
    80003620:	00003097          	auipc	ra,0x3
    80003624:	82c080e7          	jalr	-2004(ra) # 80005e4c <_Z8printIntiii>
        printString("\n");
    80003628:	00006517          	auipc	a0,0x6
    8000362c:	ad850513          	addi	a0,a0,-1320 # 80009100 <CONSOLE_STATUS+0xf0>
    80003630:	00002097          	auipc	ra,0x2
    80003634:	684080e7          	jalr	1668(ra) # 80005cb4 <_Z11printStringPKc>
        curr = curr->nextPCB;
    80003638:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    8000363c:	fd5ff06f          	j	80003610 <_ZN9Scheduler5printEv+0x2c>
    }
}
    80003640:	01813083          	ld	ra,24(sp)
    80003644:	01013403          	ld	s0,16(sp)
    80003648:	00813483          	ld	s1,8(sp)
    8000364c:	02010113          	addi	sp,sp,32
    80003650:	00008067          	ret

0000000080003654 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80003654:	ff010113          	addi	sp,sp,-16
    80003658:	00113423          	sd	ra,8(sp)
    8000365c:	00813023          	sd	s0,0(sp)
    80003660:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003664:	00000097          	auipc	ra,0x0
    80003668:	514080e7          	jalr	1300(ra) # 80003b78 <_ZN5Riscv10kernelMainEv>
    8000366c:	00813083          	ld	ra,8(sp)
    80003670:	00013403          	ld	s0,0(sp)
    80003674:	01010113          	addi	sp,sp,16
    80003678:	00008067          	ret

000000008000367c <_ZN6Thread6runnerEPv>:
{
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    8000367c:	ff010113          	addi	sp,sp,-16
    80003680:	00113423          	sd	ra,8(sp)
    80003684:	00813023          	sd	s0,0(sp)
    80003688:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    8000368c:	00053783          	ld	a5,0(a0)
    80003690:	0107b783          	ld	a5,16(a5)
    80003694:	000780e7          	jalr	a5
}
    80003698:	00813083          	ld	ra,8(sp)
    8000369c:	00013403          	ld	s0,0(sp)
    800036a0:	01010113          	addi	sp,sp,16
    800036a4:	00008067          	ret

00000000800036a8 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    800036a8:	ff010113          	addi	sp,sp,-16
    800036ac:	00113423          	sd	ra,8(sp)
    800036b0:	00813023          	sd	s0,0(sp)
    800036b4:	01010413          	addi	s0,sp,16
    800036b8:	00008797          	auipc	a5,0x8
    800036bc:	3b078793          	addi	a5,a5,944 # 8000ba68 <_ZTV6Thread+0x10>
    800036c0:	00f53023          	sd	a5,0(a0)
{
    mem_free(myHandle);
    800036c4:	00853503          	ld	a0,8(a0)
    800036c8:	ffffe097          	auipc	ra,0xffffe
    800036cc:	bc0080e7          	jalr	-1088(ra) # 80001288 <mem_free>
}
    800036d0:	00813083          	ld	ra,8(sp)
    800036d4:	00013403          	ld	s0,0(sp)
    800036d8:	01010113          	addi	sp,sp,16
    800036dc:	00008067          	ret

00000000800036e0 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    800036e0:	ff010113          	addi	sp,sp,-16
    800036e4:	00113423          	sd	ra,8(sp)
    800036e8:	00813023          	sd	s0,0(sp)
    800036ec:	01010413          	addi	s0,sp,16
    800036f0:	00008797          	auipc	a5,0x8
    800036f4:	3a078793          	addi	a5,a5,928 # 8000ba90 <_ZTV9Semaphore+0x10>
    800036f8:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    800036fc:	00853503          	ld	a0,8(a0)
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	b88080e7          	jalr	-1144(ra) # 80001288 <mem_free>
}
    80003708:	00813083          	ld	ra,8(sp)
    8000370c:	00013403          	ld	s0,0(sp)
    80003710:	01010113          	addi	sp,sp,16
    80003714:	00008067          	ret

0000000080003718 <_Znwm>:
{
    80003718:	ff010113          	addi	sp,sp,-16
    8000371c:	00113423          	sd	ra,8(sp)
    80003720:	00813023          	sd	s0,0(sp)
    80003724:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003728:	ffffe097          	auipc	ra,0xffffe
    8000372c:	b30080e7          	jalr	-1232(ra) # 80001258 <mem_alloc>
}
    80003730:	00813083          	ld	ra,8(sp)
    80003734:	00013403          	ld	s0,0(sp)
    80003738:	01010113          	addi	sp,sp,16
    8000373c:	00008067          	ret

0000000080003740 <_ZdlPv>:
{
    80003740:	ff010113          	addi	sp,sp,-16
    80003744:	00113423          	sd	ra,8(sp)
    80003748:	00813023          	sd	s0,0(sp)
    8000374c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	b38080e7          	jalr	-1224(ra) # 80001288 <mem_free>
}
    80003758:	00813083          	ld	ra,8(sp)
    8000375c:	00013403          	ld	s0,0(sp)
    80003760:	01010113          	addi	sp,sp,16
    80003764:	00008067          	ret

0000000080003768 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80003768:	fe010113          	addi	sp,sp,-32
    8000376c:	00113c23          	sd	ra,24(sp)
    80003770:	00813823          	sd	s0,16(sp)
    80003774:	00913423          	sd	s1,8(sp)
    80003778:	02010413          	addi	s0,sp,32
    8000377c:	00050493          	mv	s1,a0
}
    80003780:	00000097          	auipc	ra,0x0
    80003784:	f28080e7          	jalr	-216(ra) # 800036a8 <_ZN6ThreadD1Ev>
    80003788:	00048513          	mv	a0,s1
    8000378c:	00000097          	auipc	ra,0x0
    80003790:	fb4080e7          	jalr	-76(ra) # 80003740 <_ZdlPv>
    80003794:	01813083          	ld	ra,24(sp)
    80003798:	01013403          	ld	s0,16(sp)
    8000379c:	00813483          	ld	s1,8(sp)
    800037a0:	02010113          	addi	sp,sp,32
    800037a4:	00008067          	ret

00000000800037a8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800037a8:	fe010113          	addi	sp,sp,-32
    800037ac:	00113c23          	sd	ra,24(sp)
    800037b0:	00813823          	sd	s0,16(sp)
    800037b4:	00913423          	sd	s1,8(sp)
    800037b8:	02010413          	addi	s0,sp,32
    800037bc:	00050493          	mv	s1,a0
}
    800037c0:	00000097          	auipc	ra,0x0
    800037c4:	f20080e7          	jalr	-224(ra) # 800036e0 <_ZN9SemaphoreD1Ev>
    800037c8:	00048513          	mv	a0,s1
    800037cc:	00000097          	auipc	ra,0x0
    800037d0:	f74080e7          	jalr	-140(ra) # 80003740 <_ZdlPv>
    800037d4:	01813083          	ld	ra,24(sp)
    800037d8:	01013403          	ld	s0,16(sp)
    800037dc:	00813483          	ld	s1,8(sp)
    800037e0:	02010113          	addi	sp,sp,32
    800037e4:	00008067          	ret

00000000800037e8 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    800037e8:	00853503          	ld	a0,8(a0)
    800037ec:	02050663          	beqz	a0,80003818 <_ZN6Thread5startEv+0x30>
{
    800037f0:	ff010113          	addi	sp,sp,-16
    800037f4:	00113423          	sd	ra,8(sp)
    800037f8:	00813023          	sd	s0,0(sp)
    800037fc:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80003800:	ffffe097          	auipc	ra,0xffffe
    80003804:	c64080e7          	jalr	-924(ra) # 80001464 <thread_start>
}
    80003808:	00813083          	ld	ra,8(sp)
    8000380c:	00013403          	ld	s0,0(sp)
    80003810:	01010113          	addi	sp,sp,16
    80003814:	00008067          	ret
        return -1;
    80003818:	fff00513          	li	a0,-1
}
    8000381c:	00008067          	ret

0000000080003820 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003820:	ff010113          	addi	sp,sp,-16
    80003824:	00113423          	sd	ra,8(sp)
    80003828:	00813023          	sd	s0,0(sp)
    8000382c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003830:	ffffe097          	auipc	ra,0xffffe
    80003834:	b04080e7          	jalr	-1276(ra) # 80001334 <thread_dispatch>
}
    80003838:	00813083          	ld	ra,8(sp)
    8000383c:	00013403          	ld	s0,0(sp)
    80003840:	01010113          	addi	sp,sp,16
    80003844:	00008067          	ret

0000000080003848 <_ZN6Thread5sleepEm>:
{
    80003848:	ff010113          	addi	sp,sp,-16
    8000384c:	00113423          	sd	ra,8(sp)
    80003850:	00813023          	sd	s0,0(sp)
    80003854:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003858:	ffffe097          	auipc	ra,0xffffe
    8000385c:	be0080e7          	jalr	-1056(ra) # 80001438 <time_sleep>
}
    80003860:	00813083          	ld	ra,8(sp)
    80003864:	00013403          	ld	s0,0(sp)
    80003868:	01010113          	addi	sp,sp,16
    8000386c:	00008067          	ret

0000000080003870 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80003870:	fe010113          	addi	sp,sp,-32
    80003874:	00113c23          	sd	ra,24(sp)
    80003878:	00813823          	sd	s0,16(sp)
    8000387c:	00913423          	sd	s1,8(sp)
    80003880:	01213023          	sd	s2,0(sp)
    80003884:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80003888:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    8000388c:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80003890:	0004b783          	ld	a5,0(s1)
    80003894:	0187b783          	ld	a5,24(a5)
    80003898:	00048513          	mv	a0,s1
    8000389c:	000780e7          	jalr	a5
        Thread::sleep(time);
    800038a0:	00090513          	mv	a0,s2
    800038a4:	00000097          	auipc	ra,0x0
    800038a8:	fa4080e7          	jalr	-92(ra) # 80003848 <_ZN6Thread5sleepEm>
    while(true)
    800038ac:	fe5ff06f          	j	80003890 <_ZN14PeriodicThread6runnerEPv+0x20>

00000000800038b0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    800038b0:	ff010113          	addi	sp,sp,-16
    800038b4:	00113423          	sd	ra,8(sp)
    800038b8:	00813023          	sd	s0,0(sp)
    800038bc:	01010413          	addi	s0,sp,16
    800038c0:	00008797          	auipc	a5,0x8
    800038c4:	1a878793          	addi	a5,a5,424 # 8000ba68 <_ZTV6Thread+0x10>
    800038c8:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, body, args);
    800038cc:	00850513          	addi	a0,a0,8
    800038d0:	ffffe097          	auipc	ra,0xffffe
    800038d4:	bc0080e7          	jalr	-1088(ra) # 80001490 <thread_make_pcb>
}
    800038d8:	00813083          	ld	ra,8(sp)
    800038dc:	00013403          	ld	s0,0(sp)
    800038e0:	01010113          	addi	sp,sp,16
    800038e4:	00008067          	ret

00000000800038e8 <_ZN6ThreadC1Ev>:
Thread::Thread()
    800038e8:	ff010113          	addi	sp,sp,-16
    800038ec:	00113423          	sd	ra,8(sp)
    800038f0:	00813023          	sd	s0,0(sp)
    800038f4:	01010413          	addi	s0,sp,16
    800038f8:	00008797          	auipc	a5,0x8
    800038fc:	17078793          	addi	a5,a5,368 # 8000ba68 <_ZTV6Thread+0x10>
    80003900:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80003904:	00050613          	mv	a2,a0
    80003908:	00000597          	auipc	a1,0x0
    8000390c:	d7458593          	addi	a1,a1,-652 # 8000367c <_ZN6Thread6runnerEPv>
    80003910:	00850513          	addi	a0,a0,8
    80003914:	ffffe097          	auipc	ra,0xffffe
    80003918:	b7c080e7          	jalr	-1156(ra) # 80001490 <thread_make_pcb>
}
    8000391c:	00813083          	ld	ra,8(sp)
    80003920:	00013403          	ld	s0,0(sp)
    80003924:	01010113          	addi	sp,sp,16
    80003928:	00008067          	ret

000000008000392c <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    8000392c:	00853503          	ld	a0,8(a0)
    80003930:	02050663          	beqz	a0,8000395c <_ZN9Semaphore4waitEv+0x30>
{
    80003934:	ff010113          	addi	sp,sp,-16
    80003938:	00113423          	sd	ra,8(sp)
    8000393c:	00813023          	sd	s0,0(sp)
    80003940:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003944:	ffffe097          	auipc	ra,0xffffe
    80003948:	a9c080e7          	jalr	-1380(ra) # 800013e0 <sem_wait>
}
    8000394c:	00813083          	ld	ra,8(sp)
    80003950:	00013403          	ld	s0,0(sp)
    80003954:	01010113          	addi	sp,sp,16
    80003958:	00008067          	ret
        return -1;
    8000395c:	fff00513          	li	a0,-1
}
    80003960:	00008067          	ret

0000000080003964 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80003964:	fe010113          	addi	sp,sp,-32
    80003968:	00113c23          	sd	ra,24(sp)
    8000396c:	00813823          	sd	s0,16(sp)
    80003970:	00913423          	sd	s1,8(sp)
    80003974:	02010413          	addi	s0,sp,32
    80003978:	00050493          	mv	s1,a0
    8000397c:	00008797          	auipc	a5,0x8
    80003980:	11478793          	addi	a5,a5,276 # 8000ba90 <_ZTV9Semaphore+0x10>
    80003984:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80003988:	00850513          	addi	a0,a0,8
    8000398c:	ffffe097          	auipc	ra,0xffffe
    80003990:	9f0080e7          	jalr	-1552(ra) # 8000137c <sem_open>
    if(retval != 0)
    80003994:	00050463          	beqz	a0,8000399c <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80003998:	0004b423          	sd	zero,8(s1)
}
    8000399c:	01813083          	ld	ra,24(sp)
    800039a0:	01013403          	ld	s0,16(sp)
    800039a4:	00813483          	ld	s1,8(sp)
    800039a8:	02010113          	addi	sp,sp,32
    800039ac:	00008067          	ret

00000000800039b0 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    800039b0:	00853503          	ld	a0,8(a0)
    800039b4:	02050663          	beqz	a0,800039e0 <_ZN9Semaphore6signalEv+0x30>
{
    800039b8:	ff010113          	addi	sp,sp,-16
    800039bc:	00113423          	sd	ra,8(sp)
    800039c0:	00813023          	sd	s0,0(sp)
    800039c4:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800039c8:	ffffe097          	auipc	ra,0xffffe
    800039cc:	a44080e7          	jalr	-1468(ra) # 8000140c <sem_signal>
}
    800039d0:	00813083          	ld	ra,8(sp)
    800039d4:	00013403          	ld	s0,0(sp)
    800039d8:	01010113          	addi	sp,sp,16
    800039dc:	00008067          	ret
        return -1;
    800039e0:	fff00513          	li	a0,-1
}
    800039e4:	00008067          	ret

00000000800039e8 <_ZN7Console4getcEv>:
{
    800039e8:	ff010113          	addi	sp,sp,-16
    800039ec:	00813423          	sd	s0,8(sp)
    800039f0:	01010413          	addi	s0,sp,16
}
    800039f4:	00000513          	li	a0,0
    800039f8:	00813403          	ld	s0,8(sp)
    800039fc:	01010113          	addi	sp,sp,16
    80003a00:	00008067          	ret

0000000080003a04 <_ZN7Console4putcEc>:
{
    80003a04:	ff010113          	addi	sp,sp,-16
    80003a08:	00813423          	sd	s0,8(sp)
    80003a0c:	01010413          	addi	s0,sp,16
}
    80003a10:	00813403          	ld	s0,8(sp)
    80003a14:	01010113          	addi	sp,sp,16
    80003a18:	00008067          	ret

0000000080003a1c <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003a1c:	fe010113          	addi	sp,sp,-32
    80003a20:	00113c23          	sd	ra,24(sp)
    80003a24:	00813823          	sd	s0,16(sp)
    80003a28:	00913423          	sd	s1,8(sp)
    80003a2c:	01213023          	sd	s2,0(sp)
    80003a30:	02010413          	addi	s0,sp,32
    80003a34:	00050493          	mv	s1,a0
    80003a38:	00058913          	mv	s2,a1
    80003a3c:	01000513          	li	a0,16
    80003a40:	00000097          	auipc	ra,0x0
    80003a44:	cd8080e7          	jalr	-808(ra) # 80003718 <_Znwm>
    80003a48:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80003a4c:	00953023          	sd	s1,0(a0)
    80003a50:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003a54:	00000597          	auipc	a1,0x0
    80003a58:	e1c58593          	addi	a1,a1,-484 # 80003870 <_ZN14PeriodicThread6runnerEPv>
    80003a5c:	00048513          	mv	a0,s1
    80003a60:	00000097          	auipc	ra,0x0
    80003a64:	e50080e7          	jalr	-432(ra) # 800038b0 <_ZN6ThreadC1EPFvPvES0_>
    80003a68:	00008797          	auipc	a5,0x8
    80003a6c:	f9878793          	addi	a5,a5,-104 # 8000ba00 <_ZTV14PeriodicThread+0x10>
    80003a70:	00f4b023          	sd	a5,0(s1)
}
    80003a74:	01813083          	ld	ra,24(sp)
    80003a78:	01013403          	ld	s0,16(sp)
    80003a7c:	00813483          	ld	s1,8(sp)
    80003a80:	00013903          	ld	s2,0(sp)
    80003a84:	02010113          	addi	sp,sp,32
    80003a88:	00008067          	ret

0000000080003a8c <_ZN5Riscv15userMainWrapperEPv>:
    disableInterrupts();
    endSystem();
}

void Riscv::userMainWrapper(void* )
{
    80003a8c:	ff010113          	addi	sp,sp,-16
    80003a90:	00113423          	sd	ra,8(sp)
    80003a94:	00813023          	sd	s0,0(sp)
    80003a98:	01010413          	addi	s0,sp,16
    userMain();
    80003a9c:	00003097          	auipc	ra,0x3
    80003aa0:	97c080e7          	jalr	-1668(ra) # 80006418 <_Z8userMainv>
}
    80003aa4:	00813083          	ld	ra,8(sp)
    80003aa8:	00013403          	ld	s0,0(sp)
    80003aac:	01010113          	addi	sp,sp,16
    80003ab0:	00008067          	ret

0000000080003ab4 <_ZN5Riscv10initSystemEv>:
{
    80003ab4:	ff010113          	addi	sp,sp,-16
    80003ab8:	00113423          	sd	ra,8(sp)
    80003abc:	00813023          	sd	s0,0(sp)
    80003ac0:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003ac4:	00008797          	auipc	a5,0x8
    80003ac8:	09c7b783          	ld	a5,156(a5) # 8000bb60 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003acc:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003ad0:	fffff097          	auipc	ra,0xfffff
    80003ad4:	f18080e7          	jalr	-232(ra) # 800029e8 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003ad8:	fffff097          	auipc	ra,0xfffff
    80003adc:	35c080e7          	jalr	860(ra) # 80002e34 <_ZN8KConsole10initializeEv>
}
    80003ae0:	00813083          	ld	ra,8(sp)
    80003ae4:	00013403          	ld	s0,0(sp)
    80003ae8:	01010113          	addi	sp,sp,16
    80003aec:	00008067          	ret

0000000080003af0 <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    80003af0:	ff010113          	addi	sp,sp,-16
    80003af4:	00813423          	sd	s0,8(sp)
    80003af8:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003afc:	00200793          	li	a5,2
    80003b00:	1007a073          	csrs	sstatus,a5
}
    80003b04:	00813403          	ld	s0,8(sp)
    80003b08:	01010113          	addi	sp,sp,16
    80003b0c:	00008067          	ret

0000000080003b10 <_ZN5Riscv17disableInterruptsEv>:
{
    80003b10:	ff010113          	addi	sp,sp,-16
    80003b14:	00813423          	sd	s0,8(sp)
    80003b18:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003b1c:	00200793          	li	a5,2
    80003b20:	1007b073          	csrc	sstatus,a5
}
    80003b24:	00813403          	ld	s0,8(sp)
    80003b28:	01010113          	addi	sp,sp,16
    80003b2c:	00008067          	ret

0000000080003b30 <_ZN5Riscv9endSystemEv>:
{
    80003b30:	ff010113          	addi	sp,sp,-16
    80003b34:	00113423          	sd	ra,8(sp)
    80003b38:	00813023          	sd	s0,0(sp)
    80003b3c:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003b40:	00000097          	auipc	ra,0x0
    80003b44:	fd0080e7          	jalr	-48(ra) # 80003b10 <_ZN5Riscv17disableInterruptsEv>
}
    80003b48:	00813083          	ld	ra,8(sp)
    80003b4c:	00013403          	ld	s0,0(sp)
    80003b50:	01010113          	addi	sp,sp,16
    80003b54:	00008067          	ret

0000000080003b58 <_ZN5Riscv10popSppSpieEv>:
{
    80003b58:	ff010113          	addi	sp,sp,-16
    80003b5c:	00813423          	sd	s0,8(sp)
    80003b60:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003b64:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003b68:	10200073          	sret
}
    80003b6c:	00813403          	ld	s0,8(sp)
    80003b70:	01010113          	addi	sp,sp,16
    80003b74:	00008067          	ret

0000000080003b78 <_ZN5Riscv10kernelMainEv>:
{
    80003b78:	fe010113          	addi	sp,sp,-32
    80003b7c:	00113c23          	sd	ra,24(sp)
    80003b80:	00813823          	sd	s0,16(sp)
    80003b84:	00913423          	sd	s1,8(sp)
    80003b88:	01213023          	sd	s2,0(sp)
    80003b8c:	02010413          	addi	s0,sp,32
    initSystem();
    80003b90:	00000097          	auipc	ra,0x0
    80003b94:	f24080e7          	jalr	-220(ra) # 80003ab4 <_ZN5Riscv10initSystemEv>
    enableInterrupts();
    80003b98:	00000097          	auipc	ra,0x0
    80003b9c:	f58080e7          	jalr	-168(ra) # 80003af0 <_ZN5Riscv16enableInterruptsEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003ba0:	00001537          	lui	a0,0x1
    80003ba4:	00001097          	auipc	ra,0x1
    80003ba8:	82c080e7          	jalr	-2004(ra) # 800043d0 <_Z7kmallocm>
    80003bac:	00050913          	mv	s2,a0
    80003bb0:	05800513          	li	a0,88
    80003bb4:	fffff097          	auipc	ra,0xfffff
    80003bb8:	db8080e7          	jalr	-584(ra) # 8000296c <_ZN3PCBnwEm>
    80003bbc:	00050493          	mv	s1,a0
    80003bc0:	00200713          	li	a4,2
    80003bc4:	00090693          	mv	a3,s2
    80003bc8:	00000613          	li	a2,0
    80003bcc:	00000597          	auipc	a1,0x0
    80003bd0:	ec058593          	addi	a1,a1,-320 # 80003a8c <_ZN5Riscv15userMainWrapperEPv>
    80003bd4:	fffff097          	auipc	ra,0xfffff
    80003bd8:	c80080e7          	jalr	-896(ra) # 80002854 <_ZN3PCBC1EPFvPvES0_S0_m>
    userPCB->start();
    80003bdc:	00048513          	mv	a0,s1
    80003be0:	fffff097          	auipc	ra,0xfffff
    80003be4:	cd8080e7          	jalr	-808(ra) # 800028b8 <_ZN3PCB5startEv>
    while(!userPCB->isFinished())
    80003be8:	00048513          	mv	a0,s1
    80003bec:	fffff097          	auipc	ra,0xfffff
    80003bf0:	ee4080e7          	jalr	-284(ra) # 80002ad0 <_ZN3PCB10isFinishedEv>
    80003bf4:	00051863          	bnez	a0,80003c04 <_ZN5Riscv10kernelMainEv+0x8c>
        thread_dispatch();
    80003bf8:	ffffd097          	auipc	ra,0xffffd
    80003bfc:	73c080e7          	jalr	1852(ra) # 80001334 <thread_dispatch>
    while(!userPCB->isFinished())
    80003c00:	fe9ff06f          	j	80003be8 <_ZN5Riscv10kernelMainEv+0x70>
    finishSystem = true;
    80003c04:	00100793          	li	a5,1
    80003c08:	00008717          	auipc	a4,0x8
    80003c0c:	08f70c23          	sb	a5,152(a4) # 8000bca0 <_ZN5Riscv12finishSystemE>
    ::printString("End...\n");
    80003c10:	00005517          	auipc	a0,0x5
    80003c14:	45850513          	addi	a0,a0,1112 # 80009068 <CONSOLE_STATUS+0x58>
    80003c18:	00002097          	auipc	ra,0x2
    80003c1c:	09c080e7          	jalr	156(ra) # 80005cb4 <_Z11printStringPKc>
    while(!PCB::consolePCB->isFinished())
    80003c20:	00008797          	auipc	a5,0x8
    80003c24:	f787b783          	ld	a5,-136(a5) # 8000bb98 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003c28:	0007b503          	ld	a0,0(a5)
    80003c2c:	fffff097          	auipc	ra,0xfffff
    80003c30:	ea4080e7          	jalr	-348(ra) # 80002ad0 <_ZN3PCB10isFinishedEv>
    80003c34:	00051863          	bnez	a0,80003c44 <_ZN5Riscv10kernelMainEv+0xcc>
        thread_dispatch();
    80003c38:	ffffd097          	auipc	ra,0xffffd
    80003c3c:	6fc080e7          	jalr	1788(ra) # 80001334 <thread_dispatch>
    while(!PCB::consolePCB->isFinished())
    80003c40:	fe1ff06f          	j	80003c20 <_ZN5Riscv10kernelMainEv+0xa8>
    disableInterrupts();
    80003c44:	00000097          	auipc	ra,0x0
    80003c48:	ecc080e7          	jalr	-308(ra) # 80003b10 <_ZN5Riscv17disableInterruptsEv>
    endSystem();
    80003c4c:	00000097          	auipc	ra,0x0
    80003c50:	ee4080e7          	jalr	-284(ra) # 80003b30 <_ZN5Riscv9endSystemEv>
}
    80003c54:	01813083          	ld	ra,24(sp)
    80003c58:	01013403          	ld	s0,16(sp)
    80003c5c:	00813483          	ld	s1,8(sp)
    80003c60:	00013903          	ld	s2,0(sp)
    80003c64:	02010113          	addi	sp,sp,32
    80003c68:	00008067          	ret
    80003c6c:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003c70:	00048513          	mv	a0,s1
    80003c74:	fffff097          	auipc	ra,0xfffff
    80003c78:	d20080e7          	jalr	-736(ra) # 80002994 <_ZN3PCBdlEPv>
    80003c7c:	00090513          	mv	a0,s2
    80003c80:	00009097          	auipc	ra,0x9
    80003c84:	138080e7          	jalr	312(ra) # 8000cdb8 <_Unwind_Resume>

0000000080003c88 <_ZN5Riscv14myTestsWrapperEPv>:

void Riscv::myTestsWrapper(void* p)
{
    80003c88:	ff010113          	addi	sp,sp,-16
    80003c8c:	00113423          	sd	ra,8(sp)
    80003c90:	00813023          	sd	s0,0(sp)
    80003c94:	01010413          	addi	s0,sp,16
    myTests();
    80003c98:	fffff097          	auipc	ra,0xfffff
    80003c9c:	a10080e7          	jalr	-1520(ra) # 800026a8 <_Z7myTestsv>
}
    80003ca0:	00813083          	ld	ra,8(sp)
    80003ca4:	00013403          	ld	s0,0(sp)
    80003ca8:	01010113          	addi	sp,sp,16
    80003cac:	00008067          	ret

0000000080003cb0 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80003cb0:	ff010113          	addi	sp,sp,-16
    80003cb4:	00813423          	sd	s0,8(sp)
    80003cb8:	01010413          	addi	s0,sp,16
    //uint64 x = 0x200;
    //__asm__ volatile("csrs sie, %0"::"r"(x));
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80003cbc:	00200793          	li	a5,2
    80003cc0:	1047b073          	csrc	sie,a5
}
    80003cc4:	00813403          	ld	s0,8(sp)
    80003cc8:	01010113          	addi	sp,sp,16
    80003ccc:	00008067          	ret

0000000080003cd0 <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    80003cd0:	ff010113          	addi	sp,sp,-16
    80003cd4:	00813423          	sd	s0,8(sp)
    80003cd8:	01010413          	addi	s0,sp,16
    while(true)
    80003cdc:	0000006f          	j	80003cdc <_ZN5Riscv9idleRiscvEPv+0xc>

0000000080003ce0 <_ZN5Riscv13w_a0_sscratchEv>:

    }
}

void Riscv::w_a0_sscratch()
{
    80003ce0:	ff010113          	addi	sp,sp,-16
    80003ce4:	00813423          	sd	s0,8(sp)
    80003ce8:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80003cec:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80003cf0:	00008717          	auipc	a4,0x8
    80003cf4:	eb873703          	ld	a4,-328(a4) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003cf8:	00073703          	ld	a4,0(a4)
    80003cfc:	01073703          	ld	a4,16(a4)
    80003d00:	00070593          	mv	a1,a4
    //__asm__ volatile("csrr a1, sscratch");
    __asm__ volatile("sd a0, 80(a1)");
    80003d04:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80003d08:	00078593          	mv	a1,a5
}
    80003d0c:	00813403          	ld	s0,8(sp)
    80003d10:	01010113          	addi	sp,sp,16
    80003d14:	00008067          	ret

0000000080003d18 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80003d18:	ff010113          	addi	sp,sp,-16
    80003d1c:	00813423          	sd	s0,8(sp)
    80003d20:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80003d24:	00008797          	auipc	a5,0x8
    80003d28:	e847b783          	ld	a5,-380(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003d2c:	0007b783          	ld	a5,0(a5)
    80003d30:	0007c783          	lbu	a5,0(a5)
    80003d34:	00078c63          	beqz	a5,80003d4c <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003d38:	10000793          	li	a5,256
    80003d3c:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80003d40:	00813403          	ld	s0,8(sp)
    80003d44:	01010113          	addi	sp,sp,16
    80003d48:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003d4c:	10000793          	li	a5,256
    80003d50:	1007b073          	csrc	sstatus,a5
    80003d54:	fedff06f          	j	80003d40 <_ZN5Riscv14changePrivModeEv+0x28>

0000000080003d58 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80003d58:	f9010113          	addi	sp,sp,-112
    80003d5c:	06113423          	sd	ra,104(sp)
    80003d60:	06813023          	sd	s0,96(sp)
    80003d64:	04913c23          	sd	s1,88(sp)
    80003d68:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003d6c:	00070713          	mv	a4,a4
    80003d70:	00008797          	auipc	a5,0x8
    80003d74:	e487b783          	ld	a5,-440(a5) # 8000bbb8 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003d78:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80003d7c:	00008797          	auipc	a5,0x8
    80003d80:	e2c7b783          	ld	a5,-468(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003d84:	0007b783          	ld	a5,0(a5)
    80003d88:	14002773          	csrr	a4,sscratch
    80003d8c:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003d90:	142027f3          	csrr	a5,scause
    80003d94:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80003d98:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003d9c:	fff00713          	li	a4,-1
    80003da0:	03f71713          	slli	a4,a4,0x3f
    80003da4:	00170713          	addi	a4,a4,1
    80003da8:	0ce78e63          	beq	a5,a4,80003e84 <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
    80003dac:	fff00713          	li	a4,-1
    80003db0:	03f71713          	slli	a4,a4,0x3f
    80003db4:	00170713          	addi	a4,a4,1
    80003db8:	04f76e63          	bltu	a4,a5,80003e14 <_ZN5Riscv20handleSupervisorTrapEv+0xbc>
    80003dbc:	ff878793          	addi	a5,a5,-8
    80003dc0:	00100713          	li	a4,1
    80003dc4:	1af76463          	bltu	a4,a5,80003f6c <_ZN5Riscv20handleSupervisorTrapEv+0x214>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003dc8:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003dcc:	14102773          	csrr	a4,sepc
    80003dd0:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003dd4:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003dd8:	00470713          	addi	a4,a4,4
    80003ddc:	fae43423          	sd	a4,-88(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003de0:	10002773          	csrr	a4,sstatus
    80003de4:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003de8:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003dec:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003df0:	04200713          	li	a4,66
    80003df4:	16f76063          	bltu	a4,a5,80003f54 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
    80003df8:	00279793          	slli	a5,a5,0x2
    80003dfc:	00005717          	auipc	a4,0x5
    80003e00:	48870713          	addi	a4,a4,1160 # 80009284 <CONSOLE_STATUS+0x274>
    80003e04:	00e787b3          	add	a5,a5,a4
    80003e08:	0007a783          	lw	a5,0(a5)
    80003e0c:	00e787b3          	add	a5,a5,a4
    80003e10:	00078067          	jr	a5
    switch(scause)
    80003e14:	fff00713          	li	a4,-1
    80003e18:	03f71713          	slli	a4,a4,0x3f
    80003e1c:	00970713          	addi	a4,a4,9
    80003e20:	14e79663          	bne	a5,a4,80003f6c <_ZN5Riscv20handleSupervisorTrapEv+0x214>
            uint64 x = CONSOLE_STATUS;
    80003e24:	00008797          	auipc	a5,0x8
    80003e28:	d2c7b783          	ld	a5,-724(a5) # 8000bb50 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003e2c:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003e30:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003e34:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003e38:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80003e3c:	0017f793          	andi	a5,a5,1
    80003e40:	02078863          	beqz	a5,80003e70 <_ZN5Riscv20handleSupervisorTrapEv+0x118>
                x = CONSOLE_TX_DATA;
    80003e44:	00008797          	auipc	a5,0x8
    80003e48:	d2c7b783          	ld	a5,-724(a5) # 8000bb70 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003e4c:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003e50:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003e54:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003e58:	00058513          	mv	a0,a1
    80003e5c:	0ff57493          	andi	s1,a0,255
                if(KConsole::pendingGetc > 0)
    80003e60:	00008797          	auipc	a5,0x8
    80003e64:	d087b783          	ld	a5,-760(a5) # 8000bb68 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003e68:	0007b783          	ld	a5,0(a5)
    80003e6c:	0a079a63          	bnez	a5,80003f20 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
            plic_complete(plic_claim());
    80003e70:	00003097          	auipc	ra,0x3
    80003e74:	1d4080e7          	jalr	468(ra) # 80007044 <plic_claim>
    80003e78:	00003097          	auipc	ra,0x3
    80003e7c:	204080e7          	jalr	516(ra) # 8000707c <plic_complete>
            break;
    80003e80:	0ec0006f          	j	80003f6c <_ZN5Riscv20handleSupervisorTrapEv+0x214>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003e84:	141027f3          	csrr	a5,sepc
    80003e88:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003e8c:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003e90:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003e94:	100027f3          	csrr	a5,sstatus
    80003e98:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003e9c:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003ea0:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003ea4:	00200793          	li	a5,2
    80003ea8:	1447b073          	csrc	sip,a5
            totalTime++;
    80003eac:	00008717          	auipc	a4,0x8
    80003eb0:	df470713          	addi	a4,a4,-524 # 8000bca0 <_ZN5Riscv12finishSystemE>
    80003eb4:	00873783          	ld	a5,8(a4)
    80003eb8:	00178793          	addi	a5,a5,1
    80003ebc:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80003ec0:	00008497          	auipc	s1,0x8
    80003ec4:	cb84b483          	ld	s1,-840(s1) # 8000bb78 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003ec8:	0004b783          	ld	a5,0(s1)
    80003ecc:	00178793          	addi	a5,a5,1
    80003ed0:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003ed4:	fffff097          	auipc	ra,0xfffff
    80003ed8:	3d4080e7          	jalr	980(ra) # 800032a8 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003edc:	00008797          	auipc	a5,0x8
    80003ee0:	ccc7b783          	ld	a5,-820(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003ee4:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003ee8:	0187b783          	ld	a5,24(a5)
    80003eec:	0004b703          	ld	a4,0(s1)
    80003ef0:	02f77063          	bgeu	a4,a5,80003f10 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
            Riscv::w_sstatus(sstatus);
    80003ef4:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003ef8:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003efc:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003f00:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003f04:	00000097          	auipc	ra,0x0
    80003f08:	e14080e7          	jalr	-492(ra) # 80003d18 <_ZN5Riscv14changePrivModeEv>
            break;
    80003f0c:	0600006f          	j	80003f6c <_ZN5Riscv20handleSupervisorTrapEv+0x214>
                PCB::timeSliceCounter = 0;
    80003f10:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003f14:	fffff097          	auipc	ra,0xfffff
    80003f18:	9cc080e7          	jalr	-1588(ra) # 800028e0 <_ZN3PCB8dispatchEv>
    80003f1c:	fd9ff06f          	j	80003ef4 <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                    KConsole::pendingGetc--;
    80003f20:	fff78793          	addi	a5,a5,-1
    80003f24:	00008717          	auipc	a4,0x8
    80003f28:	c4473703          	ld	a4,-956(a4) # 8000bb68 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003f2c:	00f73023          	sd	a5,0(a4)
                    KConsole::putCharacterInput(c);
    80003f30:	00048513          	mv	a0,s1
    80003f34:	fffff097          	auipc	ra,0xfffff
    80003f38:	fb0080e7          	jalr	-80(ra) # 80002ee4 <_ZN8KConsole17putCharacterInputEc>
                    KConsole::putCharacterOutput(c);
    80003f3c:	00048513          	mv	a0,s1
    80003f40:	fffff097          	auipc	ra,0xfffff
    80003f44:	034080e7          	jalr	52(ra) # 80002f74 <_ZN8KConsole18putCharacterOutputEc>
    80003f48:	f29ff06f          	j	80003e70 <_ZN5Riscv20handleSupervisorTrapEv+0x118>
                    MemoryAllocator::memAllocHandler();
    80003f4c:	00000097          	auipc	ra,0x0
    80003f50:	4ac080e7          	jalr	1196(ra) # 800043f8 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003f54:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003f58:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003f5c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003f60:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003f64:	00000097          	auipc	ra,0x0
    80003f68:	db4080e7          	jalr	-588(ra) # 80003d18 <_ZN5Riscv14changePrivModeEv>
}
    80003f6c:	06813083          	ld	ra,104(sp)
    80003f70:	06013403          	ld	s0,96(sp)
    80003f74:	05813483          	ld	s1,88(sp)
    80003f78:	07010113          	addi	sp,sp,112
    80003f7c:	00008067          	ret
                    MemoryAllocator::memFreeHandler();
    80003f80:	00000097          	auipc	ra,0x0
    80003f84:	4dc080e7          	jalr	1244(ra) # 8000445c <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003f88:	fcdff06f          	j	80003f54 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadMakePCBHandler();
    80003f8c:	fffff097          	auipc	ra,0xfffff
    80003f90:	d3c080e7          	jalr	-708(ra) # 80002cc8 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003f94:	fc1ff06f          	j	80003f54 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadCreateHandler();
    80003f98:	fffff097          	auipc	ra,0xfffff
    80003f9c:	c4c080e7          	jalr	-948(ra) # 80002be4 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003fa0:	fb5ff06f          	j	80003f54 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadStartHandler();
    80003fa4:	fffff097          	auipc	ra,0xfffff
    80003fa8:	ce0080e7          	jalr	-800(ra) # 80002c84 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80003fac:	fa9ff06f          	j	80003f54 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadDispatchHandler();
    80003fb0:	fffff097          	auipc	ra,0xfffff
    80003fb4:	ba0080e7          	jalr	-1120(ra) # 80002b50 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80003fb8:	f9dff06f          	j	80003f54 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadExitHandler();
    80003fbc:	fffff097          	auipc	ra,0xfffff
    80003fc0:	b38080e7          	jalr	-1224(ra) # 80002af4 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003fc4:	f91ff06f          	j	80003f54 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadSleepHandler();
    80003fc8:	fffff097          	auipc	ra,0xfffff
    80003fcc:	bb8080e7          	jalr	-1096(ra) # 80002b80 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003fd0:	f85ff06f          	j	80003f54 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semOpenHandler();
    80003fd4:	00000097          	auipc	ra,0x0
    80003fd8:	738080e7          	jalr	1848(ra) # 8000470c <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003fdc:	f79ff06f          	j	80003f54 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semWaitHandler();
    80003fe0:	00000097          	auipc	ra,0x0
    80003fe4:	7c4080e7          	jalr	1988(ra) # 800047a4 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003fe8:	f6dff06f          	j	80003f54 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semSignalHandler();
    80003fec:	00000097          	auipc	ra,0x0
    80003ff0:	7f8080e7          	jalr	2040(ra) # 800047e4 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003ff4:	f61ff06f          	j	80003f54 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semCloseHandler();
    80003ff8:	00001097          	auipc	ra,0x1
    80003ffc:	82c080e7          	jalr	-2004(ra) # 80004824 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80004000:	f55ff06f          	j	80003f54 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::getcHandler();
    80004004:	fffff097          	auipc	ra,0xfffff
    80004008:	0e4080e7          	jalr	228(ra) # 800030e8 <_ZN8KConsole11getcHandlerEv>
                    break;
    8000400c:	f49ff06f          	j	80003f54 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::putcHandler();
    80004010:	fffff097          	auipc	ra,0xfffff
    80004014:	094080e7          	jalr	148(ra) # 800030a4 <_ZN8KConsole11putcHandlerEv>
                    break;
    80004018:	f3dff06f          	j	80003f54 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>

000000008000401c <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    8000401c:	ff010113          	addi	sp,sp,-16
    80004020:	00813423          	sd	s0,8(sp)
    80004024:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80004028:	00008717          	auipc	a4,0x8
    8000402c:	c8872703          	lw	a4,-888(a4) # 8000bcb0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004030:	00100793          	li	a5,1
    80004034:	04f70263          	beq	a4,a5,80004078 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80004038:	00008797          	auipc	a5,0x8
    8000403c:	c7878793          	addi	a5,a5,-904 # 8000bcb0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004040:	00100713          	li	a4,1
    80004044:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80004048:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    8000404c:	00008717          	auipc	a4,0x8
    80004050:	b0c73703          	ld	a4,-1268(a4) # 8000bb58 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004054:	00073703          	ld	a4,0(a4)
    80004058:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    8000405c:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80004060:	00008797          	auipc	a5,0x8
    80004064:	b507b783          	ld	a5,-1200(a5) # 8000bbb0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80004068:	0007b783          	ld	a5,0(a5)
    8000406c:	40e787b3          	sub	a5,a5,a4
    80004070:	ff178793          	addi	a5,a5,-15
    80004074:	00f73023          	sd	a5,0(a4)
}
    80004078:	00813403          	ld	s0,8(sp)
    8000407c:	01010113          	addi	sp,sp,16
    80004080:	00008067          	ret

0000000080004084 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80004084:	fe010113          	addi	sp,sp,-32
    80004088:	00113c23          	sd	ra,24(sp)
    8000408c:	00813823          	sd	s0,16(sp)
    80004090:	00913423          	sd	s1,8(sp)
    80004094:	01213023          	sd	s2,0(sp)
    80004098:	02010413          	addi	s0,sp,32
    8000409c:	00050493          	mv	s1,a0
    800040a0:	00058913          	mv	s2,a1
    initMemory();
    800040a4:	00000097          	auipc	ra,0x0
    800040a8:	f78080e7          	jalr	-136(ra) # 8000401c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    800040ac:	00008797          	auipc	a5,0x8
    800040b0:	c0c7b783          	ld	a5,-1012(a5) # 8000bcb8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    800040b4:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    800040b8:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    800040bc:	00000713          	li	a4,0
    while(curr != 0)
    800040c0:	00078c63          	beqz	a5,800040d8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800040c4:	00f4e863          	bltu	s1,a5,800040d4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    800040c8:	00078713          	mv	a4,a5
        curr = curr->next;
    800040cc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800040d0:	ff1ff06f          	j	800040c0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    800040d4:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800040d8:	02070063          	beqz	a4,800040f8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    800040dc:	00973423          	sd	s1,8(a4)
}
    800040e0:	01813083          	ld	ra,24(sp)
    800040e4:	01013403          	ld	s0,16(sp)
    800040e8:	00813483          	ld	s1,8(sp)
    800040ec:	00013903          	ld	s2,0(sp)
    800040f0:	02010113          	addi	sp,sp,32
    800040f4:	00008067          	ret
        headAllocated = newAllocated;
    800040f8:	00008797          	auipc	a5,0x8
    800040fc:	bc97b023          	sd	s1,-1088(a5) # 8000bcb8 <_ZN15MemoryAllocator13headAllocatedE>
    80004100:	fe1ff06f          	j	800040e0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080004104 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80004104:	fe010113          	addi	sp,sp,-32
    80004108:	00113c23          	sd	ra,24(sp)
    8000410c:	00813823          	sd	s0,16(sp)
    80004110:	00913423          	sd	s1,8(sp)
    80004114:	01213023          	sd	s2,0(sp)
    80004118:	02010413          	addi	s0,sp,32
    8000411c:	00050913          	mv	s2,a0
    initMemory();
    80004120:	00000097          	auipc	ra,0x0
    80004124:	efc080e7          	jalr	-260(ra) # 8000401c <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004128:	00008497          	auipc	s1,0x8
    8000412c:	b984b483          	ld	s1,-1128(s1) # 8000bcc0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80004130:	00000713          	li	a4,0
    while(curr != 0)
    80004134:	0a048863          	beqz	s1,800041e4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80004138:	0004b783          	ld	a5,0(s1)
    8000413c:	0127f863          	bgeu	a5,s2,8000414c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80004140:	00048713          	mv	a4,s1
        curr = curr->next;
    80004144:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004148:	fedff06f          	j	80004134 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    8000414c:	01090693          	addi	a3,s2,16
    80004150:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80004154:	00008617          	auipc	a2,0x8
    80004158:	a5c63603          	ld	a2,-1444(a2) # 8000bbb0 <_GLOBAL_OFFSET_TABLE_+0x70>
    8000415c:	00063603          	ld	a2,0(a2)
    80004160:	04d66c63          	bltu	a2,a3,800041b8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80004164:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80004168:	01000613          	li	a2,16
    8000416c:	02f67663          	bgeu	a2,a5,80004198 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80004170:	0084b603          	ld	a2,8(s1)
    80004174:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80004178:	ff078793          	addi	a5,a5,-16
    8000417c:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80004180:	00070663          	beqz	a4,8000418c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80004184:	00d73423          	sd	a3,8(a4)
    80004188:	0380006f          	j	800041c0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    8000418c:	00008797          	auipc	a5,0x8
    80004190:	b2d7ba23          	sd	a3,-1228(a5) # 8000bcc0 <_ZN15MemoryAllocator8headFreeE>
    80004194:	02c0006f          	j	800041c0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80004198:	00070863          	beqz	a4,800041a8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    8000419c:	0084b783          	ld	a5,8(s1)
    800041a0:	00f73423          	sd	a5,8(a4)
    800041a4:	01c0006f          	j	800041c0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    800041a8:	0084b783          	ld	a5,8(s1)
    800041ac:	00008717          	auipc	a4,0x8
    800041b0:	b0f73a23          	sd	a5,-1260(a4) # 8000bcc0 <_ZN15MemoryAllocator8headFreeE>
    800041b4:	00c0006f          	j	800041c0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    800041b8:	02070063          	beqz	a4,800041d8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    800041bc:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    800041c0:	00090593          	mv	a1,s2
    800041c4:	00048513          	mv	a0,s1
    800041c8:	00000097          	auipc	ra,0x0
    800041cc:	ebc080e7          	jalr	-324(ra) # 80004084 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    800041d0:	01048513          	addi	a0,s1,16
            break;
    800041d4:	0140006f          	j	800041e8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    800041d8:	00008797          	auipc	a5,0x8
    800041dc:	ae07b423          	sd	zero,-1304(a5) # 8000bcc0 <_ZN15MemoryAllocator8headFreeE>
    800041e0:	fe1ff06f          	j	800041c0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    800041e4:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    800041e8:	01813083          	ld	ra,24(sp)
    800041ec:	01013403          	ld	s0,16(sp)
    800041f0:	00813483          	ld	s1,8(sp)
    800041f4:	00013903          	ld	s2,0(sp)
    800041f8:	02010113          	addi	sp,sp,32
    800041fc:	00008067          	ret

0000000080004200 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004200:	ff010113          	addi	sp,sp,-16
    80004204:	00113423          	sd	ra,8(sp)
    80004208:	00813023          	sd	s0,0(sp)
    8000420c:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004210:	00000097          	auipc	ra,0x0
    80004214:	ef4080e7          	jalr	-268(ra) # 80004104 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004218:	00813083          	ld	ra,8(sp)
    8000421c:	00013403          	ld	s0,0(sp)
    80004220:	01010113          	addi	sp,sp,16
    80004224:	00008067          	ret

0000000080004228 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004228:	fe010113          	addi	sp,sp,-32
    8000422c:	00113c23          	sd	ra,24(sp)
    80004230:	00813823          	sd	s0,16(sp)
    80004234:	00913423          	sd	s1,8(sp)
    80004238:	01213023          	sd	s2,0(sp)
    8000423c:	02010413          	addi	s0,sp,32
    80004240:	00050493          	mv	s1,a0
    80004244:	00058913          	mv	s2,a1
    initMemory();
    80004248:	00000097          	auipc	ra,0x0
    8000424c:	dd4080e7          	jalr	-556(ra) # 8000401c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004250:	00008797          	auipc	a5,0x8
    80004254:	a707b783          	ld	a5,-1424(a5) # 8000bcc0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80004258:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    8000425c:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80004260:	00000713          	li	a4,0
    while(curr != 0)
    80004264:	00078c63          	beqz	a5,8000427c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80004268:	00f4e863          	bltu	s1,a5,80004278 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    8000426c:	00078713          	mv	a4,a5
        curr = curr->next;
    80004270:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004274:	ff1ff06f          	j	80004264 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80004278:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    8000427c:	04070663          	beqz	a4,800042c8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004280:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004284:	0084b783          	ld	a5,8(s1)
    80004288:	00078a63          	beqz	a5,8000429c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    8000428c:	0004b603          	ld	a2,0(s1)
    80004290:	01060693          	addi	a3,a2,16
    80004294:	00d486b3          	add	a3,s1,a3
    80004298:	02d78e63          	beq	a5,a3,800042d4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    8000429c:	00070a63          	beqz	a4,800042b0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    800042a0:	00073683          	ld	a3,0(a4)
    800042a4:	01068793          	addi	a5,a3,16
    800042a8:	00f707b3          	add	a5,a4,a5
    800042ac:	04978263          	beq	a5,s1,800042f0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    800042b0:	01813083          	ld	ra,24(sp)
    800042b4:	01013403          	ld	s0,16(sp)
    800042b8:	00813483          	ld	s1,8(sp)
    800042bc:	00013903          	ld	s2,0(sp)
    800042c0:	02010113          	addi	sp,sp,32
    800042c4:	00008067          	ret
        headFree = newSegment;
    800042c8:	00008797          	auipc	a5,0x8
    800042cc:	9e97bc23          	sd	s1,-1544(a5) # 8000bcc0 <_ZN15MemoryAllocator8headFreeE>
    800042d0:	fb5ff06f          	j	80004284 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    800042d4:	0007b683          	ld	a3,0(a5)
    800042d8:	00d60633          	add	a2,a2,a3
    800042dc:	01060613          	addi	a2,a2,16
    800042e0:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    800042e4:	0087b783          	ld	a5,8(a5)
    800042e8:	00f4b423          	sd	a5,8(s1)
    800042ec:	fb1ff06f          	j	8000429c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    800042f0:	0004b783          	ld	a5,0(s1)
    800042f4:	00f686b3          	add	a3,a3,a5
    800042f8:	01068693          	addi	a3,a3,16
    800042fc:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004300:	0084b783          	ld	a5,8(s1)
    80004304:	00f73423          	sd	a5,8(a4)
}
    80004308:	fa9ff06f          	j	800042b0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

000000008000430c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    8000430c:	fe010113          	addi	sp,sp,-32
    80004310:	00113c23          	sd	ra,24(sp)
    80004314:	00813823          	sd	s0,16(sp)
    80004318:	00913423          	sd	s1,8(sp)
    8000431c:	01213023          	sd	s2,0(sp)
    80004320:	02010413          	addi	s0,sp,32
    80004324:	00050913          	mv	s2,a0
    initMemory();
    80004328:	00000097          	auipc	ra,0x0
    8000432c:	cf4080e7          	jalr	-780(ra) # 8000401c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004330:	00008497          	auipc	s1,0x8
    80004334:	9884b483          	ld	s1,-1656(s1) # 8000bcb8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004338:	00000713          	li	a4,0
    while(curr != 0)
    8000433c:	02048a63          	beqz	s1,80004370 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004340:	01048793          	addi	a5,s1,16
    80004344:	01278863          	beq	a5,s2,80004354 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004348:	00048713          	mv	a4,s1
        curr = curr->next;
    8000434c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004350:	fedff06f          	j	8000433c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80004354:	02070e63          	beqz	a4,80004390 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80004358:	0084b783          	ld	a5,8(s1)
    8000435c:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004360:	0004b583          	ld	a1,0(s1)
    80004364:	00048513          	mv	a0,s1
    80004368:	00000097          	auipc	ra,0x0
    8000436c:	ec0080e7          	jalr	-320(ra) # 80004228 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004370:	02048863          	beqz	s1,800043a0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004374:	00000513          	li	a0,0
    else
        return 1;
}
    80004378:	01813083          	ld	ra,24(sp)
    8000437c:	01013403          	ld	s0,16(sp)
    80004380:	00813483          	ld	s1,8(sp)
    80004384:	00013903          	ld	s2,0(sp)
    80004388:	02010113          	addi	sp,sp,32
    8000438c:	00008067          	ret
                headAllocated = curr->next;
    80004390:	0084b783          	ld	a5,8(s1)
    80004394:	00008717          	auipc	a4,0x8
    80004398:	92f73223          	sd	a5,-1756(a4) # 8000bcb8 <_ZN15MemoryAllocator13headAllocatedE>
    8000439c:	fc5ff06f          	j	80004360 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    800043a0:	00100513          	li	a0,1
    800043a4:	fd5ff06f          	j	80004378 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

00000000800043a8 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    800043a8:	ff010113          	addi	sp,sp,-16
    800043ac:	00113423          	sd	ra,8(sp)
    800043b0:	00813023          	sd	s0,0(sp)
    800043b4:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    800043b8:	00000097          	auipc	ra,0x0
    800043bc:	f54080e7          	jalr	-172(ra) # 8000430c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    800043c0:	00813083          	ld	ra,8(sp)
    800043c4:	00013403          	ld	s0,0(sp)
    800043c8:	01010113          	addi	sp,sp,16
    800043cc:	00008067          	ret

00000000800043d0 <_Z7kmallocm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* kmalloc(size_t size)
{
    800043d0:	ff010113          	addi	sp,sp,-16
    800043d4:	00113423          	sd	ra,8(sp)
    800043d8:	00813023          	sd	s0,0(sp)
    800043dc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800043e0:	00000097          	auipc	ra,0x0
    800043e4:	e20080e7          	jalr	-480(ra) # 80004200 <_ZN15MemoryAllocator9mem_allocEm>
}
    800043e8:	00813083          	ld	ra,8(sp)
    800043ec:	00013403          	ld	s0,0(sp)
    800043f0:	01010113          	addi	sp,sp,16
    800043f4:	00008067          	ret

00000000800043f8 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    800043f8:	ff010113          	addi	sp,sp,-16
    800043fc:	00113423          	sd	ra,8(sp)
    80004400:	00813023          	sd	s0,0(sp)
    80004404:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004408:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    8000440c:	00651513          	slli	a0,a0,0x6
    80004410:	00000097          	auipc	ra,0x0
    80004414:	fc0080e7          	jalr	-64(ra) # 800043d0 <_Z7kmallocm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004418:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    8000441c:	00000097          	auipc	ra,0x0
    80004420:	8c4080e7          	jalr	-1852(ra) # 80003ce0 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004424:	00813083          	ld	ra,8(sp)
    80004428:	00013403          	ld	s0,0(sp)
    8000442c:	01010113          	addi	sp,sp,16
    80004430:	00008067          	ret

0000000080004434 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80004434:	ff010113          	addi	sp,sp,-16
    80004438:	00113423          	sd	ra,8(sp)
    8000443c:	00813023          	sd	s0,0(sp)
    80004440:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004444:	00000097          	auipc	ra,0x0
    80004448:	f64080e7          	jalr	-156(ra) # 800043a8 <_ZN15MemoryAllocator8mem_freeEPv>
    8000444c:	00813083          	ld	ra,8(sp)
    80004450:	00013403          	ld	s0,0(sp)
    80004454:	01010113          	addi	sp,sp,16
    80004458:	00008067          	ret

000000008000445c <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    8000445c:	ff010113          	addi	sp,sp,-16
    80004460:	00113423          	sd	ra,8(sp)
    80004464:	00813023          	sd	s0,0(sp)
    80004468:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    8000446c:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004470:	00000097          	auipc	ra,0x0
    80004474:	fc4080e7          	jalr	-60(ra) # 80004434 <_Z5kfreePv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004478:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    8000447c:	00000097          	auipc	ra,0x0
    80004480:	864080e7          	jalr	-1948(ra) # 80003ce0 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004484:	00813083          	ld	ra,8(sp)
    80004488:	00013403          	ld	s0,0(sp)
    8000448c:	01010113          	addi	sp,sp,16
    80004490:	00008067          	ret

0000000080004494 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80004494:	ff010113          	addi	sp,sp,-16
    80004498:	00813423          	sd	s0,8(sp)
    8000449c:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    800044a0:	00b52a23          	sw	a1,20(a0)
    800044a4:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    800044a8:	00053423          	sd	zero,8(a0)
    800044ac:	00053023          	sd	zero,0(a0)
}
    800044b0:	00813403          	ld	s0,8(sp)
    800044b4:	01010113          	addi	sp,sp,16
    800044b8:	00008067          	ret

00000000800044bc <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    800044bc:	ff010113          	addi	sp,sp,-16
    800044c0:	00813423          	sd	s0,8(sp)
    800044c4:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    800044c8:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    800044cc:	00053783          	ld	a5,0(a0)
    800044d0:	00078e63          	beqz	a5,800044ec <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    800044d4:	00853783          	ld	a5,8(a0)
    800044d8:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    800044dc:	00b53423          	sd	a1,8(a0)
    }
}
    800044e0:	00813403          	ld	s0,8(sp)
    800044e4:	01010113          	addi	sp,sp,16
    800044e8:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    800044ec:	00b53423          	sd	a1,8(a0)
    800044f0:	00b53023          	sd	a1,0(a0)
    800044f4:	fedff06f          	j	800044e0 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

00000000800044f8 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    800044f8:	ff010113          	addi	sp,sp,-16
    800044fc:	00113423          	sd	ra,8(sp)
    80004500:	00813023          	sd	s0,0(sp)
    80004504:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004508:	00007797          	auipc	a5,0x7
    8000450c:	6a07b783          	ld	a5,1696(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004510:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80004514:	00200793          	li	a5,2
    80004518:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    8000451c:	00000097          	auipc	ra,0x0
    80004520:	fa0080e7          	jalr	-96(ra) # 800044bc <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80004524:	ffffe097          	auipc	ra,0xffffe
    80004528:	3bc080e7          	jalr	956(ra) # 800028e0 <_ZN3PCB8dispatchEv>
}
    8000452c:	00813083          	ld	ra,8(sp)
    80004530:	00013403          	ld	s0,0(sp)
    80004534:	01010113          	addi	sp,sp,16
    80004538:	00008067          	ret

000000008000453c <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    8000453c:	01052783          	lw	a5,16(a0)
    80004540:	fff7879b          	addiw	a5,a5,-1
    80004544:	00f52823          	sw	a5,16(a0)
    80004548:	02079713          	slli	a4,a5,0x20
    8000454c:	00074663          	bltz	a4,80004558 <_ZN10KSemaphore4waitEv+0x1c>
}
    80004550:	00000513          	li	a0,0
    80004554:	00008067          	ret
uint64 KSemaphore::wait() {
    80004558:	ff010113          	addi	sp,sp,-16
    8000455c:	00113423          	sd	ra,8(sp)
    80004560:	00813023          	sd	s0,0(sp)
    80004564:	01010413          	addi	s0,sp,16
        block();
    80004568:	00000097          	auipc	ra,0x0
    8000456c:	f90080e7          	jalr	-112(ra) # 800044f8 <_ZN10KSemaphore5blockEv>
}
    80004570:	00000513          	li	a0,0
    80004574:	00813083          	ld	ra,8(sp)
    80004578:	00013403          	ld	s0,0(sp)
    8000457c:	01010113          	addi	sp,sp,16
    80004580:	00008067          	ret

0000000080004584 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004584:	ff010113          	addi	sp,sp,-16
    80004588:	00813423          	sd	s0,8(sp)
    8000458c:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004590:	00053503          	ld	a0,0(a0)
    80004594:	00813403          	ld	s0,8(sp)
    80004598:	01010113          	addi	sp,sp,16
    8000459c:	00008067          	ret

00000000800045a0 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    800045a0:	ff010113          	addi	sp,sp,-16
    800045a4:	00813423          	sd	s0,8(sp)
    800045a8:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    800045ac:	00053783          	ld	a5,0(a0)
    800045b0:	00078c63          	beqz	a5,800045c8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    800045b4:	0087b703          	ld	a4,8(a5)
    800045b8:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    800045bc:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    800045c0:	00053783          	ld	a5,0(a0)
    800045c4:	00078863          	beqz	a5,800045d4 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800045c8:	00813403          	ld	s0,8(sp)
    800045cc:	01010113          	addi	sp,sp,16
    800045d0:	00008067          	ret
        tailBlocked =0;
    800045d4:	00053423          	sd	zero,8(a0)
    800045d8:	ff1ff06f          	j	800045c8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

00000000800045dc <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    800045dc:	fe010113          	addi	sp,sp,-32
    800045e0:	00113c23          	sd	ra,24(sp)
    800045e4:	00813823          	sd	s0,16(sp)
    800045e8:	00913423          	sd	s1,8(sp)
    800045ec:	01213023          	sd	s2,0(sp)
    800045f0:	02010413          	addi	s0,sp,32
    800045f4:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    800045f8:	00090513          	mv	a0,s2
    800045fc:	00000097          	auipc	ra,0x0
    80004600:	f88080e7          	jalr	-120(ra) # 80004584 <_ZN10KSemaphore15getFirstBlockedEv>
    80004604:	00050493          	mv	s1,a0
    80004608:	02050063          	beqz	a0,80004628 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    8000460c:	00090513          	mv	a0,s2
    80004610:	00000097          	auipc	ra,0x0
    80004614:	f90080e7          	jalr	-112(ra) # 800045a0 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    80004618:	00048513          	mv	a0,s1
    8000461c:	fffff097          	auipc	ra,0xfffff
    80004620:	f28080e7          	jalr	-216(ra) # 80003544 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004624:	fd5ff06f          	j	800045f8 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80004628:	01813083          	ld	ra,24(sp)
    8000462c:	01013403          	ld	s0,16(sp)
    80004630:	00813483          	ld	s1,8(sp)
    80004634:	00013903          	ld	s2,0(sp)
    80004638:	02010113          	addi	sp,sp,32
    8000463c:	00008067          	ret

0000000080004640 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80004640:	fe010113          	addi	sp,sp,-32
    80004644:	00113c23          	sd	ra,24(sp)
    80004648:	00813823          	sd	s0,16(sp)
    8000464c:	00913423          	sd	s1,8(sp)
    80004650:	01213023          	sd	s2,0(sp)
    80004654:	02010413          	addi	s0,sp,32
    80004658:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    8000465c:	00000097          	auipc	ra,0x0
    80004660:	f28080e7          	jalr	-216(ra) # 80004584 <_ZN10KSemaphore15getFirstBlockedEv>
    80004664:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80004668:	00090513          	mv	a0,s2
    8000466c:	00000097          	auipc	ra,0x0
    80004670:	f34080e7          	jalr	-204(ra) # 800045a0 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004674:	00048863          	beqz	s1,80004684 <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    80004678:	00048513          	mv	a0,s1
    8000467c:	fffff097          	auipc	ra,0xfffff
    80004680:	ec8080e7          	jalr	-312(ra) # 80003544 <_ZN9Scheduler3putEP3PCB>
    }
}
    80004684:	01813083          	ld	ra,24(sp)
    80004688:	01013403          	ld	s0,16(sp)
    8000468c:	00813483          	ld	s1,8(sp)
    80004690:	00013903          	ld	s2,0(sp)
    80004694:	02010113          	addi	sp,sp,32
    80004698:	00008067          	ret

000000008000469c <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    8000469c:	01052783          	lw	a5,16(a0)
    800046a0:	0017879b          	addiw	a5,a5,1
    800046a4:	0007871b          	sext.w	a4,a5
    800046a8:	00f52823          	sw	a5,16(a0)
    800046ac:	00e05663          	blez	a4,800046b8 <_ZN10KSemaphore6signalEv+0x1c>
}
    800046b0:	00000513          	li	a0,0
    800046b4:	00008067          	ret
uint64 KSemaphore::signal() {
    800046b8:	ff010113          	addi	sp,sp,-16
    800046bc:	00113423          	sd	ra,8(sp)
    800046c0:	00813023          	sd	s0,0(sp)
    800046c4:	01010413          	addi	s0,sp,16
        unblock();
    800046c8:	00000097          	auipc	ra,0x0
    800046cc:	f78080e7          	jalr	-136(ra) # 80004640 <_ZN10KSemaphore7unblockEv>
}
    800046d0:	00000513          	li	a0,0
    800046d4:	00813083          	ld	ra,8(sp)
    800046d8:	00013403          	ld	s0,0(sp)
    800046dc:	01010113          	addi	sp,sp,16
    800046e0:	00008067          	ret

00000000800046e4 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    800046e4:	ff010113          	addi	sp,sp,-16
    800046e8:	00113423          	sd	ra,8(sp)
    800046ec:	00813023          	sd	s0,0(sp)
    800046f0:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800046f4:	00000097          	auipc	ra,0x0
    800046f8:	cdc080e7          	jalr	-804(ra) # 800043d0 <_Z7kmallocm>
}
    800046fc:	00813083          	ld	ra,8(sp)
    80004700:	00013403          	ld	s0,0(sp)
    80004704:	01010113          	addi	sp,sp,16
    80004708:	00008067          	ret

000000008000470c <_ZN10KSemaphore14semOpenHandlerEv>:
{
    8000470c:	fd010113          	addi	sp,sp,-48
    80004710:	02113423          	sd	ra,40(sp)
    80004714:	02813023          	sd	s0,32(sp)
    80004718:	00913c23          	sd	s1,24(sp)
    8000471c:	01213823          	sd	s2,16(sp)
    80004720:	01313423          	sd	s3,8(sp)
    80004724:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80004728:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    8000472c:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80004730:	01800513          	li	a0,24
    80004734:	00000097          	auipc	ra,0x0
    80004738:	fb0080e7          	jalr	-80(ra) # 800046e4 <_ZN10KSemaphorenwEm>
    8000473c:	00050493          	mv	s1,a0
    80004740:	0009859b          	sext.w	a1,s3
    80004744:	00000097          	auipc	ra,0x0
    80004748:	d50080e7          	jalr	-688(ra) # 80004494 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    8000474c:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80004750:	02048263          	beqz	s1,80004774 <_ZN10KSemaphore14semOpenHandlerEv+0x68>
            __asm__ volatile("li a0, 0");
    80004754:	00000513          	li	a0,0
}
    80004758:	02813083          	ld	ra,40(sp)
    8000475c:	02013403          	ld	s0,32(sp)
    80004760:	01813483          	ld	s1,24(sp)
    80004764:	01013903          	ld	s2,16(sp)
    80004768:	00813983          	ld	s3,8(sp)
    8000476c:	03010113          	addi	sp,sp,48
    80004770:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80004774:	fff00513          	li	a0,-1
    80004778:	fe1ff06f          	j	80004758 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

000000008000477c <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    8000477c:	ff010113          	addi	sp,sp,-16
    80004780:	00113423          	sd	ra,8(sp)
    80004784:	00813023          	sd	s0,0(sp)
    80004788:	01010413          	addi	s0,sp,16
    kfree(p);
    8000478c:	00000097          	auipc	ra,0x0
    80004790:	ca8080e7          	jalr	-856(ra) # 80004434 <_Z5kfreePv>
}
    80004794:	00813083          	ld	ra,8(sp)
    80004798:	00013403          	ld	s0,0(sp)
    8000479c:	01010113          	addi	sp,sp,16
    800047a0:	00008067          	ret

00000000800047a4 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    800047a4:	fe010113          	addi	sp,sp,-32
    800047a8:	00113c23          	sd	ra,24(sp)
    800047ac:	00813823          	sd	s0,16(sp)
    800047b0:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800047b4:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->wait();
    800047b8:	00000097          	auipc	ra,0x0
    800047bc:	d84080e7          	jalr	-636(ra) # 8000453c <_ZN10KSemaphore4waitEv>
    800047c0:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800047c4:	fe843783          	ld	a5,-24(s0)
    800047c8:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    800047cc:	fffff097          	auipc	ra,0xfffff
    800047d0:	514080e7          	jalr	1300(ra) # 80003ce0 <_ZN5Riscv13w_a0_sscratchEv>
}
    800047d4:	01813083          	ld	ra,24(sp)
    800047d8:	01013403          	ld	s0,16(sp)
    800047dc:	02010113          	addi	sp,sp,32
    800047e0:	00008067          	ret

00000000800047e4 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler()
{
    800047e4:	fe010113          	addi	sp,sp,-32
    800047e8:	00113c23          	sd	ra,24(sp)
    800047ec:	00813823          	sd	s0,16(sp)
    800047f0:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800047f4:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->signal();
    800047f8:	00000097          	auipc	ra,0x0
    800047fc:	ea4080e7          	jalr	-348(ra) # 8000469c <_ZN10KSemaphore6signalEv>
    80004800:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004804:	fe843783          	ld	a5,-24(s0)
    80004808:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    8000480c:	fffff097          	auipc	ra,0xfffff
    80004810:	4d4080e7          	jalr	1236(ra) # 80003ce0 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004814:	01813083          	ld	ra,24(sp)
    80004818:	01013403          	ld	s0,16(sp)
    8000481c:	02010113          	addi	sp,sp,32
    80004820:	00008067          	ret

0000000080004824 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80004824:	fe010113          	addi	sp,sp,-32
    80004828:	00113c23          	sd	ra,24(sp)
    8000482c:	00813823          	sd	s0,16(sp)
    80004830:	00913423          	sd	s1,8(sp)
    80004834:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004838:	00058493          	mv	s1,a1
    delete kSem;
    8000483c:	00048e63          	beqz	s1,80004858 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80004840:	00048513          	mv	a0,s1
    80004844:	00000097          	auipc	ra,0x0
    80004848:	d98080e7          	jalr	-616(ra) # 800045dc <_ZN10KSemaphoreD1Ev>
    8000484c:	00048513          	mv	a0,s1
    80004850:	00000097          	auipc	ra,0x0
    80004854:	f2c080e7          	jalr	-212(ra) # 8000477c <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80004858:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    8000485c:	fffff097          	auipc	ra,0xfffff
    80004860:	484080e7          	jalr	1156(ra) # 80003ce0 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004864:	01813083          	ld	ra,24(sp)
    80004868:	01013403          	ld	s0,16(sp)
    8000486c:	00813483          	ld	s1,8(sp)
    80004870:	02010113          	addi	sp,sp,32
    80004874:	00008067          	ret

0000000080004878 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    80004878:	fe010113          	addi	sp,sp,-32
    8000487c:	00113c23          	sd	ra,24(sp)
    80004880:	00813823          	sd	s0,16(sp)
    80004884:	00913423          	sd	s1,8(sp)
    80004888:	01213023          	sd	s2,0(sp)
    8000488c:	02010413          	addi	s0,sp,32
    80004890:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004894:	00000913          	li	s2,0
    80004898:	00c0006f          	j	800048a4 <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000489c:	ffffd097          	auipc	ra,0xffffd
    800048a0:	a98080e7          	jalr	-1384(ra) # 80001334 <thread_dispatch>
    while ((key = getc()) != 'q') {
    800048a4:	ffffd097          	auipc	ra,0xffffd
    800048a8:	c6c080e7          	jalr	-916(ra) # 80001510 <getc>
    800048ac:	0005059b          	sext.w	a1,a0
    800048b0:	07100793          	li	a5,113
    800048b4:	02f58a63          	beq	a1,a5,800048e8 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800048b8:	0084b503          	ld	a0,8(s1)
    800048bc:	00002097          	auipc	ra,0x2
    800048c0:	e14080e7          	jalr	-492(ra) # 800066d0 <_ZN6Buffer3putEi>
        i++;
    800048c4:	0019071b          	addiw	a4,s2,1
    800048c8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800048cc:	0004a683          	lw	a3,0(s1)
    800048d0:	0026979b          	slliw	a5,a3,0x2
    800048d4:	00d787bb          	addw	a5,a5,a3
    800048d8:	0017979b          	slliw	a5,a5,0x1
    800048dc:	02f767bb          	remw	a5,a4,a5
    800048e0:	fc0792e3          	bnez	a5,800048a4 <_Z16producerKeyboardPv+0x2c>
    800048e4:	fb9ff06f          	j	8000489c <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800048e8:	00100793          	li	a5,1
    800048ec:	00007717          	auipc	a4,0x7
    800048f0:	3cf72e23          	sw	a5,988(a4) # 8000bcc8 <threadEnd>

    delete data->buffer;
    800048f4:	0084b903          	ld	s2,8(s1)
    800048f8:	00090e63          	beqz	s2,80004914 <_Z16producerKeyboardPv+0x9c>
    800048fc:	00090513          	mv	a0,s2
    80004900:	00002097          	auipc	ra,0x2
    80004904:	d14080e7          	jalr	-748(ra) # 80006614 <_ZN6BufferD1Ev>
    80004908:	00090513          	mv	a0,s2
    8000490c:	fffff097          	auipc	ra,0xfffff
    80004910:	e34080e7          	jalr	-460(ra) # 80003740 <_ZdlPv>

    sem_signal(data->wait);
    80004914:	0104b503          	ld	a0,16(s1)
    80004918:	ffffd097          	auipc	ra,0xffffd
    8000491c:	af4080e7          	jalr	-1292(ra) # 8000140c <sem_signal>
}
    80004920:	01813083          	ld	ra,24(sp)
    80004924:	01013403          	ld	s0,16(sp)
    80004928:	00813483          	ld	s1,8(sp)
    8000492c:	00013903          	ld	s2,0(sp)
    80004930:	02010113          	addi	sp,sp,32
    80004934:	00008067          	ret

0000000080004938 <_Z8producerPv>:

void producer(void *arg) {
    80004938:	fe010113          	addi	sp,sp,-32
    8000493c:	00113c23          	sd	ra,24(sp)
    80004940:	00813823          	sd	s0,16(sp)
    80004944:	00913423          	sd	s1,8(sp)
    80004948:	01213023          	sd	s2,0(sp)
    8000494c:	02010413          	addi	s0,sp,32
    80004950:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004954:	00000913          	li	s2,0
    80004958:	00c0006f          	j	80004964 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000495c:	ffffd097          	auipc	ra,0xffffd
    80004960:	9d8080e7          	jalr	-1576(ra) # 80001334 <thread_dispatch>
    while (!threadEnd) {
    80004964:	00007797          	auipc	a5,0x7
    80004968:	3647a783          	lw	a5,868(a5) # 8000bcc8 <threadEnd>
    8000496c:	02079e63          	bnez	a5,800049a8 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80004970:	0004a583          	lw	a1,0(s1)
    80004974:	0305859b          	addiw	a1,a1,48
    80004978:	0084b503          	ld	a0,8(s1)
    8000497c:	00002097          	auipc	ra,0x2
    80004980:	d54080e7          	jalr	-684(ra) # 800066d0 <_ZN6Buffer3putEi>
        i++;
    80004984:	0019071b          	addiw	a4,s2,1
    80004988:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000498c:	0004a683          	lw	a3,0(s1)
    80004990:	0026979b          	slliw	a5,a3,0x2
    80004994:	00d787bb          	addw	a5,a5,a3
    80004998:	0017979b          	slliw	a5,a5,0x1
    8000499c:	02f767bb          	remw	a5,a4,a5
    800049a0:	fc0792e3          	bnez	a5,80004964 <_Z8producerPv+0x2c>
    800049a4:	fb9ff06f          	j	8000495c <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800049a8:	0104b503          	ld	a0,16(s1)
    800049ac:	ffffd097          	auipc	ra,0xffffd
    800049b0:	a60080e7          	jalr	-1440(ra) # 8000140c <sem_signal>
}
    800049b4:	01813083          	ld	ra,24(sp)
    800049b8:	01013403          	ld	s0,16(sp)
    800049bc:	00813483          	ld	s1,8(sp)
    800049c0:	00013903          	ld	s2,0(sp)
    800049c4:	02010113          	addi	sp,sp,32
    800049c8:	00008067          	ret

00000000800049cc <_Z8consumerPv>:

void consumer(void *arg) {
    800049cc:	fd010113          	addi	sp,sp,-48
    800049d0:	02113423          	sd	ra,40(sp)
    800049d4:	02813023          	sd	s0,32(sp)
    800049d8:	00913c23          	sd	s1,24(sp)
    800049dc:	01213823          	sd	s2,16(sp)
    800049e0:	01313423          	sd	s3,8(sp)
    800049e4:	03010413          	addi	s0,sp,48
    800049e8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;


    int i = 0;
    800049ec:	00000993          	li	s3,0
    800049f0:	01c0006f          	j	80004a0c <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800049f4:	ffffd097          	auipc	ra,0xffffd
    800049f8:	940080e7          	jalr	-1728(ra) # 80001334 <thread_dispatch>
    800049fc:	0500006f          	j	80004a4c <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004a00:	00a00513          	li	a0,10
    80004a04:	ffffd097          	auipc	ra,0xffffd
    80004a08:	b34080e7          	jalr	-1228(ra) # 80001538 <putc>
    while (!threadEnd) {
    80004a0c:	00007797          	auipc	a5,0x7
    80004a10:	2bc7a783          	lw	a5,700(a5) # 8000bcc8 <threadEnd>
    80004a14:	04079463          	bnez	a5,80004a5c <_Z8consumerPv+0x90>
        int key = data->buffer->get();
    80004a18:	00893503          	ld	a0,8(s2)
    80004a1c:	00002097          	auipc	ra,0x2
    80004a20:	d44080e7          	jalr	-700(ra) # 80006760 <_ZN6Buffer3getEv>
        i++;
    80004a24:	0019849b          	addiw	s1,s3,1
    80004a28:	0004899b          	sext.w	s3,s1
        putc(key);
    80004a2c:	0ff57513          	andi	a0,a0,255
    80004a30:	ffffd097          	auipc	ra,0xffffd
    80004a34:	b08080e7          	jalr	-1272(ra) # 80001538 <putc>
        if (i % (5 * data->id) == 0) {
    80004a38:	00092703          	lw	a4,0(s2)
    80004a3c:	0027179b          	slliw	a5,a4,0x2
    80004a40:	00e787bb          	addw	a5,a5,a4
    80004a44:	02f4e7bb          	remw	a5,s1,a5
    80004a48:	fa0786e3          	beqz	a5,800049f4 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    80004a4c:	05000793          	li	a5,80
    80004a50:	02f4e4bb          	remw	s1,s1,a5
    80004a54:	fa049ce3          	bnez	s1,80004a0c <_Z8consumerPv+0x40>
    80004a58:	fa9ff06f          	j	80004a00 <_Z8consumerPv+0x34>
        }
    }

    sem_signal(data->wait);
    80004a5c:	01093503          	ld	a0,16(s2)
    80004a60:	ffffd097          	auipc	ra,0xffffd
    80004a64:	9ac080e7          	jalr	-1620(ra) # 8000140c <sem_signal>
}
    80004a68:	02813083          	ld	ra,40(sp)
    80004a6c:	02013403          	ld	s0,32(sp)
    80004a70:	01813483          	ld	s1,24(sp)
    80004a74:	01013903          	ld	s2,16(sp)
    80004a78:	00813983          	ld	s3,8(sp)
    80004a7c:	03010113          	addi	sp,sp,48
    80004a80:	00008067          	ret

0000000080004a84 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80004a84:	f9010113          	addi	sp,sp,-112
    80004a88:	06113423          	sd	ra,104(sp)
    80004a8c:	06813023          	sd	s0,96(sp)
    80004a90:	04913c23          	sd	s1,88(sp)
    80004a94:	05213823          	sd	s2,80(sp)
    80004a98:	05313423          	sd	s3,72(sp)
    80004a9c:	05413023          	sd	s4,64(sp)
    80004aa0:	03513c23          	sd	s5,56(sp)
    80004aa4:	07010413          	addi	s0,sp,112
    char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004aa8:	00005517          	auipc	a0,0x5
    80004aac:	8e850513          	addi	a0,a0,-1816 # 80009390 <CONSOLE_STATUS+0x380>
    80004ab0:	00001097          	auipc	ra,0x1
    80004ab4:	204080e7          	jalr	516(ra) # 80005cb4 <_Z11printStringPKc>
    getString(input, 30);
    80004ab8:	01e00593          	li	a1,30
    80004abc:	fa040493          	addi	s1,s0,-96
    80004ac0:	00048513          	mv	a0,s1
    80004ac4:	00001097          	auipc	ra,0x1
    80004ac8:	26c080e7          	jalr	620(ra) # 80005d30 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004acc:	00048513          	mv	a0,s1
    80004ad0:	00001097          	auipc	ra,0x1
    80004ad4:	32c080e7          	jalr	812(ra) # 80005dfc <_Z11stringToIntPKc>
    80004ad8:	00050913          	mv	s2,a0

    printString("Unesite velicinu bafera?\n");
    80004adc:	00005517          	auipc	a0,0x5
    80004ae0:	8d450513          	addi	a0,a0,-1836 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80004ae4:	00001097          	auipc	ra,0x1
    80004ae8:	1d0080e7          	jalr	464(ra) # 80005cb4 <_Z11printStringPKc>
    getString(input, 30);
    80004aec:	01e00593          	li	a1,30
    80004af0:	00048513          	mv	a0,s1
    80004af4:	00001097          	auipc	ra,0x1
    80004af8:	23c080e7          	jalr	572(ra) # 80005d30 <_Z9getStringPci>
    n = stringToInt(input);
    80004afc:	00048513          	mv	a0,s1
    80004b00:	00001097          	auipc	ra,0x1
    80004b04:	2fc080e7          	jalr	764(ra) # 80005dfc <_Z11stringToIntPKc>
    80004b08:	00050493          	mv	s1,a0

    printString("Broj proizvodjaca "); printInt(threadNum);
    80004b0c:	00005517          	auipc	a0,0x5
    80004b10:	8c450513          	addi	a0,a0,-1852 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80004b14:	00001097          	auipc	ra,0x1
    80004b18:	1a0080e7          	jalr	416(ra) # 80005cb4 <_Z11printStringPKc>
    80004b1c:	00000613          	li	a2,0
    80004b20:	00a00593          	li	a1,10
    80004b24:	00090513          	mv	a0,s2
    80004b28:	00001097          	auipc	ra,0x1
    80004b2c:	324080e7          	jalr	804(ra) # 80005e4c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004b30:	00005517          	auipc	a0,0x5
    80004b34:	8b850513          	addi	a0,a0,-1864 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80004b38:	00001097          	auipc	ra,0x1
    80004b3c:	17c080e7          	jalr	380(ra) # 80005cb4 <_Z11printStringPKc>
    80004b40:	00000613          	li	a2,0
    80004b44:	00a00593          	li	a1,10
    80004b48:	00048513          	mv	a0,s1
    80004b4c:	00001097          	auipc	ra,0x1
    80004b50:	300080e7          	jalr	768(ra) # 80005e4c <_Z8printIntiii>
    printString(".\n");
    80004b54:	00004517          	auipc	a0,0x4
    80004b58:	71450513          	addi	a0,a0,1812 # 80009268 <CONSOLE_STATUS+0x258>
    80004b5c:	00001097          	auipc	ra,0x1
    80004b60:	158080e7          	jalr	344(ra) # 80005cb4 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80004b64:	03800513          	li	a0,56
    80004b68:	fffff097          	auipc	ra,0xfffff
    80004b6c:	bb0080e7          	jalr	-1104(ra) # 80003718 <_Znwm>
    80004b70:	00050a13          	mv	s4,a0
    80004b74:	00048593          	mv	a1,s1
    80004b78:	00002097          	auipc	ra,0x2
    80004b7c:	a14080e7          	jalr	-1516(ra) # 8000658c <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004b80:	00000593          	li	a1,0
    80004b84:	00007517          	auipc	a0,0x7
    80004b88:	14c50513          	addi	a0,a0,332 # 8000bcd0 <waitForAll>
    80004b8c:	ffffc097          	auipc	ra,0xffffc
    80004b90:	7f0080e7          	jalr	2032(ra) # 8000137c <sem_open>

    thread_t threads[threadNum];
    80004b94:	00391793          	slli	a5,s2,0x3
    80004b98:	00f78793          	addi	a5,a5,15
    80004b9c:	ff07f793          	andi	a5,a5,-16
    80004ba0:	40f10133          	sub	sp,sp,a5
    80004ba4:	00010a93          	mv	s5,sp
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];
    80004ba8:	0019071b          	addiw	a4,s2,1
    80004bac:	00171793          	slli	a5,a4,0x1
    80004bb0:	00e787b3          	add	a5,a5,a4
    80004bb4:	00379793          	slli	a5,a5,0x3
    80004bb8:	00f78793          	addi	a5,a5,15
    80004bbc:	ff07f793          	andi	a5,a5,-16
    80004bc0:	40f10133          	sub	sp,sp,a5
    80004bc4:	00010993          	mv	s3,sp

    data[threadNum].id = threadNum;
    80004bc8:	00191613          	slli	a2,s2,0x1
    80004bcc:	012607b3          	add	a5,a2,s2
    80004bd0:	00379793          	slli	a5,a5,0x3
    80004bd4:	00f987b3          	add	a5,s3,a5
    80004bd8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004bdc:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80004be0:	00007717          	auipc	a4,0x7
    80004be4:	0f073703          	ld	a4,240(a4) # 8000bcd0 <waitForAll>
    80004be8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004bec:	00078613          	mv	a2,a5
    80004bf0:	00000597          	auipc	a1,0x0
    80004bf4:	ddc58593          	addi	a1,a1,-548 # 800049cc <_Z8consumerPv>
    80004bf8:	f9840513          	addi	a0,s0,-104
    80004bfc:	ffffc097          	auipc	ra,0xffffc
    80004c00:	6b8080e7          	jalr	1720(ra) # 800012b4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80004c04:	00000493          	li	s1,0
    80004c08:	0280006f          	j	80004c30 <_Z22producerConsumer_C_APIv+0x1ac>
        data[i].id = i;
        data[i].buffer = buffer;
        data[i].wait = waitForAll;

        thread_create(threads + i,
    80004c0c:	00000597          	auipc	a1,0x0
    80004c10:	c6c58593          	addi	a1,a1,-916 # 80004878 <_Z16producerKeyboardPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    80004c14:	00179613          	slli	a2,a5,0x1
    80004c18:	00f60633          	add	a2,a2,a5
    80004c1c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004c20:	00c98633          	add	a2,s3,a2
    80004c24:	ffffc097          	auipc	ra,0xffffc
    80004c28:	690080e7          	jalr	1680(ra) # 800012b4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004c2c:	0014849b          	addiw	s1,s1,1
    80004c30:	0524d263          	bge	s1,s2,80004c74 <_Z22producerConsumer_C_APIv+0x1f0>
        data[i].id = i;
    80004c34:	00149793          	slli	a5,s1,0x1
    80004c38:	009787b3          	add	a5,a5,s1
    80004c3c:	00379793          	slli	a5,a5,0x3
    80004c40:	00f987b3          	add	a5,s3,a5
    80004c44:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004c48:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80004c4c:	00007717          	auipc	a4,0x7
    80004c50:	08473703          	ld	a4,132(a4) # 8000bcd0 <waitForAll>
    80004c54:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80004c58:	00048793          	mv	a5,s1
    80004c5c:	00349513          	slli	a0,s1,0x3
    80004c60:	00aa8533          	add	a0,s5,a0
    80004c64:	fa9054e3          	blez	s1,80004c0c <_Z22producerConsumer_C_APIv+0x188>
    80004c68:	00000597          	auipc	a1,0x0
    80004c6c:	cd058593          	addi	a1,a1,-816 # 80004938 <_Z8producerPv>
    80004c70:	fa5ff06f          	j	80004c14 <_Z22producerConsumer_C_APIv+0x190>
    }

    thread_dispatch();
    80004c74:	ffffc097          	auipc	ra,0xffffc
    80004c78:	6c0080e7          	jalr	1728(ra) # 80001334 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80004c7c:	00000493          	li	s1,0
    80004c80:	00994e63          	blt	s2,s1,80004c9c <_Z22producerConsumer_C_APIv+0x218>
        sem_wait(waitForAll);
    80004c84:	00007517          	auipc	a0,0x7
    80004c88:	04c53503          	ld	a0,76(a0) # 8000bcd0 <waitForAll>
    80004c8c:	ffffc097          	auipc	ra,0xffffc
    80004c90:	754080e7          	jalr	1876(ra) # 800013e0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80004c94:	0014849b          	addiw	s1,s1,1
    80004c98:	fe9ff06f          	j	80004c80 <_Z22producerConsumer_C_APIv+0x1fc>
    }

    sem_close(waitForAll);
    80004c9c:	00007517          	auipc	a0,0x7
    80004ca0:	03453503          	ld	a0,52(a0) # 8000bcd0 <waitForAll>
    80004ca4:	ffffc097          	auipc	ra,0xffffc
    80004ca8:	710080e7          	jalr	1808(ra) # 800013b4 <sem_close>
    80004cac:	f9040113          	addi	sp,s0,-112
    80004cb0:	06813083          	ld	ra,104(sp)
    80004cb4:	06013403          	ld	s0,96(sp)
    80004cb8:	05813483          	ld	s1,88(sp)
    80004cbc:	05013903          	ld	s2,80(sp)
    80004cc0:	04813983          	ld	s3,72(sp)
    80004cc4:	04013a03          	ld	s4,64(sp)
    80004cc8:	03813a83          	ld	s5,56(sp)
    80004ccc:	07010113          	addi	sp,sp,112
    80004cd0:	00008067          	ret
    80004cd4:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004cd8:	000a0513          	mv	a0,s4
    80004cdc:	fffff097          	auipc	ra,0xfffff
    80004ce0:	a64080e7          	jalr	-1436(ra) # 80003740 <_ZdlPv>
    80004ce4:	00048513          	mv	a0,s1
    80004ce8:	00008097          	auipc	ra,0x8
    80004cec:	0d0080e7          	jalr	208(ra) # 8000cdb8 <_Unwind_Resume>

0000000080004cf0 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004cf0:	fe010113          	addi	sp,sp,-32
    80004cf4:	00113c23          	sd	ra,24(sp)
    80004cf8:	00813823          	sd	s0,16(sp)
    80004cfc:	00913423          	sd	s1,8(sp)
    80004d00:	01213023          	sd	s2,0(sp)
    80004d04:	02010413          	addi	s0,sp,32
    80004d08:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004d0c:	00100793          	li	a5,1
    80004d10:	02a7f863          	bgeu	a5,a0,80004d40 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004d14:	00a00793          	li	a5,10
    80004d18:	02f577b3          	remu	a5,a0,a5
    80004d1c:	02078e63          	beqz	a5,80004d58 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004d20:	fff48513          	addi	a0,s1,-1
    80004d24:	00000097          	auipc	ra,0x0
    80004d28:	fcc080e7          	jalr	-52(ra) # 80004cf0 <_ZL9fibonaccim>
    80004d2c:	00050913          	mv	s2,a0
    80004d30:	ffe48513          	addi	a0,s1,-2
    80004d34:	00000097          	auipc	ra,0x0
    80004d38:	fbc080e7          	jalr	-68(ra) # 80004cf0 <_ZL9fibonaccim>
    80004d3c:	00a90533          	add	a0,s2,a0
}
    80004d40:	01813083          	ld	ra,24(sp)
    80004d44:	01013403          	ld	s0,16(sp)
    80004d48:	00813483          	ld	s1,8(sp)
    80004d4c:	00013903          	ld	s2,0(sp)
    80004d50:	02010113          	addi	sp,sp,32
    80004d54:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004d58:	ffffc097          	auipc	ra,0xffffc
    80004d5c:	5dc080e7          	jalr	1500(ra) # 80001334 <thread_dispatch>
    80004d60:	fc1ff06f          	j	80004d20 <_ZL9fibonaccim+0x30>

0000000080004d64 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004d64:	fe010113          	addi	sp,sp,-32
    80004d68:	00113c23          	sd	ra,24(sp)
    80004d6c:	00813823          	sd	s0,16(sp)
    80004d70:	00913423          	sd	s1,8(sp)
    80004d74:	01213023          	sd	s2,0(sp)
    80004d78:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004d7c:	00000913          	li	s2,0
    80004d80:	0380006f          	j	80004db8 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004d84:	ffffc097          	auipc	ra,0xffffc
    80004d88:	5b0080e7          	jalr	1456(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004d8c:	00148493          	addi	s1,s1,1
    80004d90:	000027b7          	lui	a5,0x2
    80004d94:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d98:	0097ee63          	bltu	a5,s1,80004db4 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d9c:	00000713          	li	a4,0
    80004da0:	000077b7          	lui	a5,0x7
    80004da4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004da8:	fce7eee3          	bltu	a5,a4,80004d84 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004dac:	00170713          	addi	a4,a4,1
    80004db0:	ff1ff06f          	j	80004da0 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004db4:	00190913          	addi	s2,s2,1
    80004db8:	00900793          	li	a5,9
    80004dbc:	0527e063          	bltu	a5,s2,80004dfc <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004dc0:	00004517          	auipc	a0,0x4
    80004dc4:	64050513          	addi	a0,a0,1600 # 80009400 <CONSOLE_STATUS+0x3f0>
    80004dc8:	00001097          	auipc	ra,0x1
    80004dcc:	eec080e7          	jalr	-276(ra) # 80005cb4 <_Z11printStringPKc>
    80004dd0:	00000613          	li	a2,0
    80004dd4:	00a00593          	li	a1,10
    80004dd8:	0009051b          	sext.w	a0,s2
    80004ddc:	00001097          	auipc	ra,0x1
    80004de0:	070080e7          	jalr	112(ra) # 80005e4c <_Z8printIntiii>
    80004de4:	00004517          	auipc	a0,0x4
    80004de8:	31c50513          	addi	a0,a0,796 # 80009100 <CONSOLE_STATUS+0xf0>
    80004dec:	00001097          	auipc	ra,0x1
    80004df0:	ec8080e7          	jalr	-312(ra) # 80005cb4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004df4:	00000493          	li	s1,0
    80004df8:	f99ff06f          	j	80004d90 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004dfc:	00004517          	auipc	a0,0x4
    80004e00:	60c50513          	addi	a0,a0,1548 # 80009408 <CONSOLE_STATUS+0x3f8>
    80004e04:	00001097          	auipc	ra,0x1
    80004e08:	eb0080e7          	jalr	-336(ra) # 80005cb4 <_Z11printStringPKc>
    finishedA = true;
    80004e0c:	00100793          	li	a5,1
    80004e10:	00007717          	auipc	a4,0x7
    80004e14:	ecf70423          	sb	a5,-312(a4) # 8000bcd8 <_ZL9finishedA>
}
    80004e18:	01813083          	ld	ra,24(sp)
    80004e1c:	01013403          	ld	s0,16(sp)
    80004e20:	00813483          	ld	s1,8(sp)
    80004e24:	00013903          	ld	s2,0(sp)
    80004e28:	02010113          	addi	sp,sp,32
    80004e2c:	00008067          	ret

0000000080004e30 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg)
{
    80004e30:	fe010113          	addi	sp,sp,-32
    80004e34:	00113c23          	sd	ra,24(sp)
    80004e38:	00813823          	sd	s0,16(sp)
    80004e3c:	00913423          	sd	s1,8(sp)
    80004e40:	01213023          	sd	s2,0(sp)
    80004e44:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004e48:	00000913          	li	s2,0
    80004e4c:	0380006f          	j	80004e84 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004e50:	ffffc097          	auipc	ra,0xffffc
    80004e54:	4e4080e7          	jalr	1252(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004e58:	00148493          	addi	s1,s1,1
    80004e5c:	000027b7          	lui	a5,0x2
    80004e60:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004e64:	0097ee63          	bltu	a5,s1,80004e80 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004e68:	00000713          	li	a4,0
    80004e6c:	000077b7          	lui	a5,0x7
    80004e70:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004e74:	fce7eee3          	bltu	a5,a4,80004e50 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004e78:	00170713          	addi	a4,a4,1
    80004e7c:	ff1ff06f          	j	80004e6c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004e80:	00190913          	addi	s2,s2,1
    80004e84:	00f00793          	li	a5,15
    80004e88:	0527e063          	bltu	a5,s2,80004ec8 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004e8c:	00004517          	auipc	a0,0x4
    80004e90:	58c50513          	addi	a0,a0,1420 # 80009418 <CONSOLE_STATUS+0x408>
    80004e94:	00001097          	auipc	ra,0x1
    80004e98:	e20080e7          	jalr	-480(ra) # 80005cb4 <_Z11printStringPKc>
    80004e9c:	00000613          	li	a2,0
    80004ea0:	00a00593          	li	a1,10
    80004ea4:	0009051b          	sext.w	a0,s2
    80004ea8:	00001097          	auipc	ra,0x1
    80004eac:	fa4080e7          	jalr	-92(ra) # 80005e4c <_Z8printIntiii>
    80004eb0:	00004517          	auipc	a0,0x4
    80004eb4:	25050513          	addi	a0,a0,592 # 80009100 <CONSOLE_STATUS+0xf0>
    80004eb8:	00001097          	auipc	ra,0x1
    80004ebc:	dfc080e7          	jalr	-516(ra) # 80005cb4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004ec0:	00000493          	li	s1,0
    80004ec4:	f99ff06f          	j	80004e5c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    thread_dispatch();
    80004ec8:	ffffc097          	auipc	ra,0xffffc
    80004ecc:	46c080e7          	jalr	1132(ra) # 80001334 <thread_dispatch>
    printString("B finished!\n");
    80004ed0:	00004517          	auipc	a0,0x4
    80004ed4:	55050513          	addi	a0,a0,1360 # 80009420 <CONSOLE_STATUS+0x410>
    80004ed8:	00001097          	auipc	ra,0x1
    80004edc:	ddc080e7          	jalr	-548(ra) # 80005cb4 <_Z11printStringPKc>
    finishedB = true;
    80004ee0:	00100793          	li	a5,1
    80004ee4:	00007717          	auipc	a4,0x7
    80004ee8:	def70aa3          	sb	a5,-523(a4) # 8000bcd9 <_ZL9finishedB>
}
    80004eec:	01813083          	ld	ra,24(sp)
    80004ef0:	01013403          	ld	s0,16(sp)
    80004ef4:	00813483          	ld	s1,8(sp)
    80004ef8:	00013903          	ld	s2,0(sp)
    80004efc:	02010113          	addi	sp,sp,32
    80004f00:	00008067          	ret

0000000080004f04 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004f04:	fe010113          	addi	sp,sp,-32
    80004f08:	00113c23          	sd	ra,24(sp)
    80004f0c:	00813823          	sd	s0,16(sp)
    80004f10:	00913423          	sd	s1,8(sp)
    80004f14:	01213023          	sd	s2,0(sp)
    80004f18:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004f1c:	00000493          	li	s1,0
    80004f20:	0400006f          	j	80004f60 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004f24:	00004517          	auipc	a0,0x4
    80004f28:	50c50513          	addi	a0,a0,1292 # 80009430 <CONSOLE_STATUS+0x420>
    80004f2c:	00001097          	auipc	ra,0x1
    80004f30:	d88080e7          	jalr	-632(ra) # 80005cb4 <_Z11printStringPKc>
    80004f34:	00000613          	li	a2,0
    80004f38:	00a00593          	li	a1,10
    80004f3c:	00048513          	mv	a0,s1
    80004f40:	00001097          	auipc	ra,0x1
    80004f44:	f0c080e7          	jalr	-244(ra) # 80005e4c <_Z8printIntiii>
    80004f48:	00004517          	auipc	a0,0x4
    80004f4c:	1b850513          	addi	a0,a0,440 # 80009100 <CONSOLE_STATUS+0xf0>
    80004f50:	00001097          	auipc	ra,0x1
    80004f54:	d64080e7          	jalr	-668(ra) # 80005cb4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004f58:	0014849b          	addiw	s1,s1,1
    80004f5c:	0ff4f493          	andi	s1,s1,255
    80004f60:	00200793          	li	a5,2
    80004f64:	fc97f0e3          	bgeu	a5,s1,80004f24 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004f68:	00004517          	auipc	a0,0x4
    80004f6c:	4d050513          	addi	a0,a0,1232 # 80009438 <CONSOLE_STATUS+0x428>
    80004f70:	00001097          	auipc	ra,0x1
    80004f74:	d44080e7          	jalr	-700(ra) # 80005cb4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004f78:	00700313          	li	t1,7
    thread_dispatch();
    80004f7c:	ffffc097          	auipc	ra,0xffffc
    80004f80:	3b8080e7          	jalr	952(ra) # 80001334 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004f84:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004f88:	00004517          	auipc	a0,0x4
    80004f8c:	4c050513          	addi	a0,a0,1216 # 80009448 <CONSOLE_STATUS+0x438>
    80004f90:	00001097          	auipc	ra,0x1
    80004f94:	d24080e7          	jalr	-732(ra) # 80005cb4 <_Z11printStringPKc>
    80004f98:	00000613          	li	a2,0
    80004f9c:	00a00593          	li	a1,10
    80004fa0:	0009051b          	sext.w	a0,s2
    80004fa4:	00001097          	auipc	ra,0x1
    80004fa8:	ea8080e7          	jalr	-344(ra) # 80005e4c <_Z8printIntiii>
    80004fac:	00004517          	auipc	a0,0x4
    80004fb0:	15450513          	addi	a0,a0,340 # 80009100 <CONSOLE_STATUS+0xf0>
    80004fb4:	00001097          	auipc	ra,0x1
    80004fb8:	d00080e7          	jalr	-768(ra) # 80005cb4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004fbc:	00c00513          	li	a0,12
    80004fc0:	00000097          	auipc	ra,0x0
    80004fc4:	d30080e7          	jalr	-720(ra) # 80004cf0 <_ZL9fibonaccim>
    80004fc8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004fcc:	00004517          	auipc	a0,0x4
    80004fd0:	48450513          	addi	a0,a0,1156 # 80009450 <CONSOLE_STATUS+0x440>
    80004fd4:	00001097          	auipc	ra,0x1
    80004fd8:	ce0080e7          	jalr	-800(ra) # 80005cb4 <_Z11printStringPKc>
    80004fdc:	00000613          	li	a2,0
    80004fe0:	00a00593          	li	a1,10
    80004fe4:	0009051b          	sext.w	a0,s2
    80004fe8:	00001097          	auipc	ra,0x1
    80004fec:	e64080e7          	jalr	-412(ra) # 80005e4c <_Z8printIntiii>
    80004ff0:	00004517          	auipc	a0,0x4
    80004ff4:	11050513          	addi	a0,a0,272 # 80009100 <CONSOLE_STATUS+0xf0>
    80004ff8:	00001097          	auipc	ra,0x1
    80004ffc:	cbc080e7          	jalr	-836(ra) # 80005cb4 <_Z11printStringPKc>
    80005000:	0400006f          	j	80005040 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005004:	00004517          	auipc	a0,0x4
    80005008:	42c50513          	addi	a0,a0,1068 # 80009430 <CONSOLE_STATUS+0x420>
    8000500c:	00001097          	auipc	ra,0x1
    80005010:	ca8080e7          	jalr	-856(ra) # 80005cb4 <_Z11printStringPKc>
    80005014:	00000613          	li	a2,0
    80005018:	00a00593          	li	a1,10
    8000501c:	00048513          	mv	a0,s1
    80005020:	00001097          	auipc	ra,0x1
    80005024:	e2c080e7          	jalr	-468(ra) # 80005e4c <_Z8printIntiii>
    80005028:	00004517          	auipc	a0,0x4
    8000502c:	0d850513          	addi	a0,a0,216 # 80009100 <CONSOLE_STATUS+0xf0>
    80005030:	00001097          	auipc	ra,0x1
    80005034:	c84080e7          	jalr	-892(ra) # 80005cb4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005038:	0014849b          	addiw	s1,s1,1
    8000503c:	0ff4f493          	andi	s1,s1,255
    80005040:	00500793          	li	a5,5
    80005044:	fc97f0e3          	bgeu	a5,s1,80005004 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    thread_dispatch();
    80005048:	ffffc097          	auipc	ra,0xffffc
    8000504c:	2ec080e7          	jalr	748(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    80005050:	00004517          	auipc	a0,0x4
    80005054:	41050513          	addi	a0,a0,1040 # 80009460 <CONSOLE_STATUS+0x450>
    80005058:	00001097          	auipc	ra,0x1
    8000505c:	c5c080e7          	jalr	-932(ra) # 80005cb4 <_Z11printStringPKc>
    finishedC = true;
    80005060:	00100793          	li	a5,1
    80005064:	00007717          	auipc	a4,0x7
    80005068:	c6f70b23          	sb	a5,-906(a4) # 8000bcda <_ZL9finishedC>
}
    8000506c:	01813083          	ld	ra,24(sp)
    80005070:	01013403          	ld	s0,16(sp)
    80005074:	00813483          	ld	s1,8(sp)
    80005078:	00013903          	ld	s2,0(sp)
    8000507c:	02010113          	addi	sp,sp,32
    80005080:	00008067          	ret

0000000080005084 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80005084:	fe010113          	addi	sp,sp,-32
    80005088:	00113c23          	sd	ra,24(sp)
    8000508c:	00813823          	sd	s0,16(sp)
    80005090:	00913423          	sd	s1,8(sp)
    80005094:	01213023          	sd	s2,0(sp)
    80005098:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000509c:	00a00493          	li	s1,10
    800050a0:	0400006f          	j	800050e0 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800050a4:	00004517          	auipc	a0,0x4
    800050a8:	3cc50513          	addi	a0,a0,972 # 80009470 <CONSOLE_STATUS+0x460>
    800050ac:	00001097          	auipc	ra,0x1
    800050b0:	c08080e7          	jalr	-1016(ra) # 80005cb4 <_Z11printStringPKc>
    800050b4:	00000613          	li	a2,0
    800050b8:	00a00593          	li	a1,10
    800050bc:	00048513          	mv	a0,s1
    800050c0:	00001097          	auipc	ra,0x1
    800050c4:	d8c080e7          	jalr	-628(ra) # 80005e4c <_Z8printIntiii>
    800050c8:	00004517          	auipc	a0,0x4
    800050cc:	03850513          	addi	a0,a0,56 # 80009100 <CONSOLE_STATUS+0xf0>
    800050d0:	00001097          	auipc	ra,0x1
    800050d4:	be4080e7          	jalr	-1052(ra) # 80005cb4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800050d8:	0014849b          	addiw	s1,s1,1
    800050dc:	0ff4f493          	andi	s1,s1,255
    800050e0:	00c00793          	li	a5,12
    800050e4:	fc97f0e3          	bgeu	a5,s1,800050a4 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800050e8:	00004517          	auipc	a0,0x4
    800050ec:	39050513          	addi	a0,a0,912 # 80009478 <CONSOLE_STATUS+0x468>
    800050f0:	00001097          	auipc	ra,0x1
    800050f4:	bc4080e7          	jalr	-1084(ra) # 80005cb4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800050f8:	00500313          	li	t1,5
    thread_dispatch();
    800050fc:	ffffc097          	auipc	ra,0xffffc
    80005100:	238080e7          	jalr	568(ra) # 80001334 <thread_dispatch>

    uint64 result = fibonacci(16);
    80005104:	01000513          	li	a0,16
    80005108:	00000097          	auipc	ra,0x0
    8000510c:	be8080e7          	jalr	-1048(ra) # 80004cf0 <_ZL9fibonaccim>
    80005110:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005114:	00004517          	auipc	a0,0x4
    80005118:	37450513          	addi	a0,a0,884 # 80009488 <CONSOLE_STATUS+0x478>
    8000511c:	00001097          	auipc	ra,0x1
    80005120:	b98080e7          	jalr	-1128(ra) # 80005cb4 <_Z11printStringPKc>
    80005124:	00000613          	li	a2,0
    80005128:	00a00593          	li	a1,10
    8000512c:	0009051b          	sext.w	a0,s2
    80005130:	00001097          	auipc	ra,0x1
    80005134:	d1c080e7          	jalr	-740(ra) # 80005e4c <_Z8printIntiii>
    80005138:	00004517          	auipc	a0,0x4
    8000513c:	fc850513          	addi	a0,a0,-56 # 80009100 <CONSOLE_STATUS+0xf0>
    80005140:	00001097          	auipc	ra,0x1
    80005144:	b74080e7          	jalr	-1164(ra) # 80005cb4 <_Z11printStringPKc>
    80005148:	0400006f          	j	80005188 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000514c:	00004517          	auipc	a0,0x4
    80005150:	32450513          	addi	a0,a0,804 # 80009470 <CONSOLE_STATUS+0x460>
    80005154:	00001097          	auipc	ra,0x1
    80005158:	b60080e7          	jalr	-1184(ra) # 80005cb4 <_Z11printStringPKc>
    8000515c:	00000613          	li	a2,0
    80005160:	00a00593          	li	a1,10
    80005164:	00048513          	mv	a0,s1
    80005168:	00001097          	auipc	ra,0x1
    8000516c:	ce4080e7          	jalr	-796(ra) # 80005e4c <_Z8printIntiii>
    80005170:	00004517          	auipc	a0,0x4
    80005174:	f9050513          	addi	a0,a0,-112 # 80009100 <CONSOLE_STATUS+0xf0>
    80005178:	00001097          	auipc	ra,0x1
    8000517c:	b3c080e7          	jalr	-1220(ra) # 80005cb4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005180:	0014849b          	addiw	s1,s1,1
    80005184:	0ff4f493          	andi	s1,s1,255
    80005188:	00f00793          	li	a5,15
    8000518c:	fc97f0e3          	bgeu	a5,s1,8000514c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    thread_dispatch();
    80005190:	ffffc097          	auipc	ra,0xffffc
    80005194:	1a4080e7          	jalr	420(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    80005198:	00004517          	auipc	a0,0x4
    8000519c:	30050513          	addi	a0,a0,768 # 80009498 <CONSOLE_STATUS+0x488>
    800051a0:	00001097          	auipc	ra,0x1
    800051a4:	b14080e7          	jalr	-1260(ra) # 80005cb4 <_Z11printStringPKc>
    finishedD = true;
    800051a8:	00100793          	li	a5,1
    800051ac:	00007717          	auipc	a4,0x7
    800051b0:	b2f707a3          	sb	a5,-1233(a4) # 8000bcdb <_ZL9finishedD>
}
    800051b4:	01813083          	ld	ra,24(sp)
    800051b8:	01013403          	ld	s0,16(sp)
    800051bc:	00813483          	ld	s1,8(sp)
    800051c0:	00013903          	ld	s2,0(sp)
    800051c4:	02010113          	addi	sp,sp,32
    800051c8:	00008067          	ret

00000000800051cc <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800051cc:	fc010113          	addi	sp,sp,-64
    800051d0:	02113c23          	sd	ra,56(sp)
    800051d4:	02813823          	sd	s0,48(sp)
    800051d8:	02913423          	sd	s1,40(sp)
    800051dc:	03213023          	sd	s2,32(sp)
    800051e0:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    //Riscv::printString("Got here\n");
    threads[0] = new WorkerA();
    800051e4:	01000513          	li	a0,16
    800051e8:	ffffe097          	auipc	ra,0xffffe
    800051ec:	530080e7          	jalr	1328(ra) # 80003718 <_Znwm>
    800051f0:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    800051f4:	ffffe097          	auipc	ra,0xffffe
    800051f8:	6f4080e7          	jalr	1780(ra) # 800038e8 <_ZN6ThreadC1Ev>
    800051fc:	00007797          	auipc	a5,0x7
    80005200:	8b478793          	addi	a5,a5,-1868 # 8000bab0 <_ZTV7WorkerA+0x10>
    80005204:	00f4b023          	sd	a5,0(s1)
    80005208:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    8000520c:	00004517          	auipc	a0,0x4
    80005210:	29c50513          	addi	a0,a0,668 # 800094a8 <CONSOLE_STATUS+0x498>
    80005214:	00001097          	auipc	ra,0x1
    80005218:	aa0080e7          	jalr	-1376(ra) # 80005cb4 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    8000521c:	01000513          	li	a0,16
    80005220:	ffffe097          	auipc	ra,0xffffe
    80005224:	4f8080e7          	jalr	1272(ra) # 80003718 <_Znwm>
    80005228:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    8000522c:	ffffe097          	auipc	ra,0xffffe
    80005230:	6bc080e7          	jalr	1724(ra) # 800038e8 <_ZN6ThreadC1Ev>
    80005234:	00007797          	auipc	a5,0x7
    80005238:	8a478793          	addi	a5,a5,-1884 # 8000bad8 <_ZTV7WorkerB+0x10>
    8000523c:	00f4b023          	sd	a5,0(s1)
    80005240:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80005244:	00004517          	auipc	a0,0x4
    80005248:	27c50513          	addi	a0,a0,636 # 800094c0 <CONSOLE_STATUS+0x4b0>
    8000524c:	00001097          	auipc	ra,0x1
    80005250:	a68080e7          	jalr	-1432(ra) # 80005cb4 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80005254:	01000513          	li	a0,16
    80005258:	ffffe097          	auipc	ra,0xffffe
    8000525c:	4c0080e7          	jalr	1216(ra) # 80003718 <_Znwm>
    80005260:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    80005264:	ffffe097          	auipc	ra,0xffffe
    80005268:	684080e7          	jalr	1668(ra) # 800038e8 <_ZN6ThreadC1Ev>
    8000526c:	00007797          	auipc	a5,0x7
    80005270:	89478793          	addi	a5,a5,-1900 # 8000bb00 <_ZTV7WorkerC+0x10>
    80005274:	00f4b023          	sd	a5,0(s1)
    80005278:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    8000527c:	00004517          	auipc	a0,0x4
    80005280:	25c50513          	addi	a0,a0,604 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80005284:	00001097          	auipc	ra,0x1
    80005288:	a30080e7          	jalr	-1488(ra) # 80005cb4 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    8000528c:	01000513          	li	a0,16
    80005290:	ffffe097          	auipc	ra,0xffffe
    80005294:	488080e7          	jalr	1160(ra) # 80003718 <_Znwm>
    80005298:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    8000529c:	ffffe097          	auipc	ra,0xffffe
    800052a0:	64c080e7          	jalr	1612(ra) # 800038e8 <_ZN6ThreadC1Ev>
    800052a4:	00007797          	auipc	a5,0x7
    800052a8:	88478793          	addi	a5,a5,-1916 # 8000bb28 <_ZTV7WorkerD+0x10>
    800052ac:	00f4b023          	sd	a5,0(s1)
    800052b0:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800052b4:	00004517          	auipc	a0,0x4
    800052b8:	23c50513          	addi	a0,a0,572 # 800094f0 <CONSOLE_STATUS+0x4e0>
    800052bc:	00001097          	auipc	ra,0x1
    800052c0:	9f8080e7          	jalr	-1544(ra) # 80005cb4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800052c4:	00000493          	li	s1,0
    800052c8:	00300793          	li	a5,3
    800052cc:	0297c663          	blt	a5,s1,800052f8 <_Z20Threads_CPP_API_testv+0x12c>
        //Riscv::printString("Starting...\n");
        threads[i]->start();
    800052d0:	00349793          	slli	a5,s1,0x3
    800052d4:	fe040713          	addi	a4,s0,-32
    800052d8:	00f707b3          	add	a5,a4,a5
    800052dc:	fe07b503          	ld	a0,-32(a5)
    800052e0:	ffffe097          	auipc	ra,0xffffe
    800052e4:	508080e7          	jalr	1288(ra) # 800037e8 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800052e8:	0014849b          	addiw	s1,s1,1
    800052ec:	fddff06f          	j	800052c8 <_Z20Threads_CPP_API_testv+0xfc>
    }

    //Riscv::printString("Thread started\n");
    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800052f0:	ffffe097          	auipc	ra,0xffffe
    800052f4:	530080e7          	jalr	1328(ra) # 80003820 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800052f8:	00007797          	auipc	a5,0x7
    800052fc:	9e07c783          	lbu	a5,-1568(a5) # 8000bcd8 <_ZL9finishedA>
    80005300:	fe0788e3          	beqz	a5,800052f0 <_Z20Threads_CPP_API_testv+0x124>
    80005304:	00007797          	auipc	a5,0x7
    80005308:	9d57c783          	lbu	a5,-1579(a5) # 8000bcd9 <_ZL9finishedB>
    8000530c:	fe0782e3          	beqz	a5,800052f0 <_Z20Threads_CPP_API_testv+0x124>
    80005310:	00007797          	auipc	a5,0x7
    80005314:	9ca7c783          	lbu	a5,-1590(a5) # 8000bcda <_ZL9finishedC>
    80005318:	fc078ce3          	beqz	a5,800052f0 <_Z20Threads_CPP_API_testv+0x124>
    8000531c:	00007797          	auipc	a5,0x7
    80005320:	9bf7c783          	lbu	a5,-1601(a5) # 8000bcdb <_ZL9finishedD>
    80005324:	fc0786e3          	beqz	a5,800052f0 <_Z20Threads_CPP_API_testv+0x124>
        //Riscv::printString("main\n");
    }
    for (auto thread: threads) { delete thread; }
    80005328:	fc040493          	addi	s1,s0,-64
    8000532c:	0080006f          	j	80005334 <_Z20Threads_CPP_API_testv+0x168>
    80005330:	00848493          	addi	s1,s1,8
    80005334:	fe040793          	addi	a5,s0,-32
    80005338:	08f48663          	beq	s1,a5,800053c4 <_Z20Threads_CPP_API_testv+0x1f8>
    8000533c:	0004b503          	ld	a0,0(s1)
    80005340:	fe0508e3          	beqz	a0,80005330 <_Z20Threads_CPP_API_testv+0x164>
    80005344:	00053783          	ld	a5,0(a0)
    80005348:	0087b783          	ld	a5,8(a5)
    8000534c:	000780e7          	jalr	a5
    80005350:	fe1ff06f          	j	80005330 <_Z20Threads_CPP_API_testv+0x164>
    80005354:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80005358:	00048513          	mv	a0,s1
    8000535c:	ffffe097          	auipc	ra,0xffffe
    80005360:	3e4080e7          	jalr	996(ra) # 80003740 <_ZdlPv>
    80005364:	00090513          	mv	a0,s2
    80005368:	00008097          	auipc	ra,0x8
    8000536c:	a50080e7          	jalr	-1456(ra) # 8000cdb8 <_Unwind_Resume>
    80005370:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80005374:	00048513          	mv	a0,s1
    80005378:	ffffe097          	auipc	ra,0xffffe
    8000537c:	3c8080e7          	jalr	968(ra) # 80003740 <_ZdlPv>
    80005380:	00090513          	mv	a0,s2
    80005384:	00008097          	auipc	ra,0x8
    80005388:	a34080e7          	jalr	-1484(ra) # 8000cdb8 <_Unwind_Resume>
    8000538c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80005390:	00048513          	mv	a0,s1
    80005394:	ffffe097          	auipc	ra,0xffffe
    80005398:	3ac080e7          	jalr	940(ra) # 80003740 <_ZdlPv>
    8000539c:	00090513          	mv	a0,s2
    800053a0:	00008097          	auipc	ra,0x8
    800053a4:	a18080e7          	jalr	-1512(ra) # 8000cdb8 <_Unwind_Resume>
    800053a8:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800053ac:	00048513          	mv	a0,s1
    800053b0:	ffffe097          	auipc	ra,0xffffe
    800053b4:	390080e7          	jalr	912(ra) # 80003740 <_ZdlPv>
    800053b8:	00090513          	mv	a0,s2
    800053bc:	00008097          	auipc	ra,0x8
    800053c0:	9fc080e7          	jalr	-1540(ra) # 8000cdb8 <_Unwind_Resume>
    800053c4:	03813083          	ld	ra,56(sp)
    800053c8:	03013403          	ld	s0,48(sp)
    800053cc:	02813483          	ld	s1,40(sp)
    800053d0:	02013903          	ld	s2,32(sp)
    800053d4:	04010113          	addi	sp,sp,64
    800053d8:	00008067          	ret

00000000800053dc <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800053dc:	ff010113          	addi	sp,sp,-16
    800053e0:	00113423          	sd	ra,8(sp)
    800053e4:	00813023          	sd	s0,0(sp)
    800053e8:	01010413          	addi	s0,sp,16
    800053ec:	00006797          	auipc	a5,0x6
    800053f0:	6c478793          	addi	a5,a5,1732 # 8000bab0 <_ZTV7WorkerA+0x10>
    800053f4:	00f53023          	sd	a5,0(a0)
    800053f8:	ffffe097          	auipc	ra,0xffffe
    800053fc:	2b0080e7          	jalr	688(ra) # 800036a8 <_ZN6ThreadD1Ev>
    80005400:	00813083          	ld	ra,8(sp)
    80005404:	00013403          	ld	s0,0(sp)
    80005408:	01010113          	addi	sp,sp,16
    8000540c:	00008067          	ret

0000000080005410 <_ZN7WorkerAD0Ev>:
    80005410:	fe010113          	addi	sp,sp,-32
    80005414:	00113c23          	sd	ra,24(sp)
    80005418:	00813823          	sd	s0,16(sp)
    8000541c:	00913423          	sd	s1,8(sp)
    80005420:	02010413          	addi	s0,sp,32
    80005424:	00050493          	mv	s1,a0
    80005428:	00006797          	auipc	a5,0x6
    8000542c:	68878793          	addi	a5,a5,1672 # 8000bab0 <_ZTV7WorkerA+0x10>
    80005430:	00f53023          	sd	a5,0(a0)
    80005434:	ffffe097          	auipc	ra,0xffffe
    80005438:	274080e7          	jalr	628(ra) # 800036a8 <_ZN6ThreadD1Ev>
    8000543c:	00048513          	mv	a0,s1
    80005440:	ffffe097          	auipc	ra,0xffffe
    80005444:	300080e7          	jalr	768(ra) # 80003740 <_ZdlPv>
    80005448:	01813083          	ld	ra,24(sp)
    8000544c:	01013403          	ld	s0,16(sp)
    80005450:	00813483          	ld	s1,8(sp)
    80005454:	02010113          	addi	sp,sp,32
    80005458:	00008067          	ret

000000008000545c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    8000545c:	ff010113          	addi	sp,sp,-16
    80005460:	00113423          	sd	ra,8(sp)
    80005464:	00813023          	sd	s0,0(sp)
    80005468:	01010413          	addi	s0,sp,16
    8000546c:	00006797          	auipc	a5,0x6
    80005470:	66c78793          	addi	a5,a5,1644 # 8000bad8 <_ZTV7WorkerB+0x10>
    80005474:	00f53023          	sd	a5,0(a0)
    80005478:	ffffe097          	auipc	ra,0xffffe
    8000547c:	230080e7          	jalr	560(ra) # 800036a8 <_ZN6ThreadD1Ev>
    80005480:	00813083          	ld	ra,8(sp)
    80005484:	00013403          	ld	s0,0(sp)
    80005488:	01010113          	addi	sp,sp,16
    8000548c:	00008067          	ret

0000000080005490 <_ZN7WorkerBD0Ev>:
    80005490:	fe010113          	addi	sp,sp,-32
    80005494:	00113c23          	sd	ra,24(sp)
    80005498:	00813823          	sd	s0,16(sp)
    8000549c:	00913423          	sd	s1,8(sp)
    800054a0:	02010413          	addi	s0,sp,32
    800054a4:	00050493          	mv	s1,a0
    800054a8:	00006797          	auipc	a5,0x6
    800054ac:	63078793          	addi	a5,a5,1584 # 8000bad8 <_ZTV7WorkerB+0x10>
    800054b0:	00f53023          	sd	a5,0(a0)
    800054b4:	ffffe097          	auipc	ra,0xffffe
    800054b8:	1f4080e7          	jalr	500(ra) # 800036a8 <_ZN6ThreadD1Ev>
    800054bc:	00048513          	mv	a0,s1
    800054c0:	ffffe097          	auipc	ra,0xffffe
    800054c4:	280080e7          	jalr	640(ra) # 80003740 <_ZdlPv>
    800054c8:	01813083          	ld	ra,24(sp)
    800054cc:	01013403          	ld	s0,16(sp)
    800054d0:	00813483          	ld	s1,8(sp)
    800054d4:	02010113          	addi	sp,sp,32
    800054d8:	00008067          	ret

00000000800054dc <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800054dc:	ff010113          	addi	sp,sp,-16
    800054e0:	00113423          	sd	ra,8(sp)
    800054e4:	00813023          	sd	s0,0(sp)
    800054e8:	01010413          	addi	s0,sp,16
    800054ec:	00006797          	auipc	a5,0x6
    800054f0:	61478793          	addi	a5,a5,1556 # 8000bb00 <_ZTV7WorkerC+0x10>
    800054f4:	00f53023          	sd	a5,0(a0)
    800054f8:	ffffe097          	auipc	ra,0xffffe
    800054fc:	1b0080e7          	jalr	432(ra) # 800036a8 <_ZN6ThreadD1Ev>
    80005500:	00813083          	ld	ra,8(sp)
    80005504:	00013403          	ld	s0,0(sp)
    80005508:	01010113          	addi	sp,sp,16
    8000550c:	00008067          	ret

0000000080005510 <_ZN7WorkerCD0Ev>:
    80005510:	fe010113          	addi	sp,sp,-32
    80005514:	00113c23          	sd	ra,24(sp)
    80005518:	00813823          	sd	s0,16(sp)
    8000551c:	00913423          	sd	s1,8(sp)
    80005520:	02010413          	addi	s0,sp,32
    80005524:	00050493          	mv	s1,a0
    80005528:	00006797          	auipc	a5,0x6
    8000552c:	5d878793          	addi	a5,a5,1496 # 8000bb00 <_ZTV7WorkerC+0x10>
    80005530:	00f53023          	sd	a5,0(a0)
    80005534:	ffffe097          	auipc	ra,0xffffe
    80005538:	174080e7          	jalr	372(ra) # 800036a8 <_ZN6ThreadD1Ev>
    8000553c:	00048513          	mv	a0,s1
    80005540:	ffffe097          	auipc	ra,0xffffe
    80005544:	200080e7          	jalr	512(ra) # 80003740 <_ZdlPv>
    80005548:	01813083          	ld	ra,24(sp)
    8000554c:	01013403          	ld	s0,16(sp)
    80005550:	00813483          	ld	s1,8(sp)
    80005554:	02010113          	addi	sp,sp,32
    80005558:	00008067          	ret

000000008000555c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    8000555c:	ff010113          	addi	sp,sp,-16
    80005560:	00113423          	sd	ra,8(sp)
    80005564:	00813023          	sd	s0,0(sp)
    80005568:	01010413          	addi	s0,sp,16
    8000556c:	00006797          	auipc	a5,0x6
    80005570:	5bc78793          	addi	a5,a5,1468 # 8000bb28 <_ZTV7WorkerD+0x10>
    80005574:	00f53023          	sd	a5,0(a0)
    80005578:	ffffe097          	auipc	ra,0xffffe
    8000557c:	130080e7          	jalr	304(ra) # 800036a8 <_ZN6ThreadD1Ev>
    80005580:	00813083          	ld	ra,8(sp)
    80005584:	00013403          	ld	s0,0(sp)
    80005588:	01010113          	addi	sp,sp,16
    8000558c:	00008067          	ret

0000000080005590 <_ZN7WorkerDD0Ev>:
    80005590:	fe010113          	addi	sp,sp,-32
    80005594:	00113c23          	sd	ra,24(sp)
    80005598:	00813823          	sd	s0,16(sp)
    8000559c:	00913423          	sd	s1,8(sp)
    800055a0:	02010413          	addi	s0,sp,32
    800055a4:	00050493          	mv	s1,a0
    800055a8:	00006797          	auipc	a5,0x6
    800055ac:	58078793          	addi	a5,a5,1408 # 8000bb28 <_ZTV7WorkerD+0x10>
    800055b0:	00f53023          	sd	a5,0(a0)
    800055b4:	ffffe097          	auipc	ra,0xffffe
    800055b8:	0f4080e7          	jalr	244(ra) # 800036a8 <_ZN6ThreadD1Ev>
    800055bc:	00048513          	mv	a0,s1
    800055c0:	ffffe097          	auipc	ra,0xffffe
    800055c4:	180080e7          	jalr	384(ra) # 80003740 <_ZdlPv>
    800055c8:	01813083          	ld	ra,24(sp)
    800055cc:	01013403          	ld	s0,16(sp)
    800055d0:	00813483          	ld	s1,8(sp)
    800055d4:	02010113          	addi	sp,sp,32
    800055d8:	00008067          	ret

00000000800055dc <_ZN7WorkerA3runEv>:
    void run() override {
    800055dc:	ff010113          	addi	sp,sp,-16
    800055e0:	00113423          	sd	ra,8(sp)
    800055e4:	00813023          	sd	s0,0(sp)
    800055e8:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800055ec:	00000593          	li	a1,0
    800055f0:	fffff097          	auipc	ra,0xfffff
    800055f4:	774080e7          	jalr	1908(ra) # 80004d64 <_ZN7WorkerA11workerBodyAEPv>
    }
    800055f8:	00813083          	ld	ra,8(sp)
    800055fc:	00013403          	ld	s0,0(sp)
    80005600:	01010113          	addi	sp,sp,16
    80005604:	00008067          	ret

0000000080005608 <_ZN7WorkerB3runEv>:
    void run() override {
    80005608:	ff010113          	addi	sp,sp,-16
    8000560c:	00113423          	sd	ra,8(sp)
    80005610:	00813023          	sd	s0,0(sp)
    80005614:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80005618:	00000593          	li	a1,0
    8000561c:	00000097          	auipc	ra,0x0
    80005620:	814080e7          	jalr	-2028(ra) # 80004e30 <_ZN7WorkerB11workerBodyBEPv>
    }
    80005624:	00813083          	ld	ra,8(sp)
    80005628:	00013403          	ld	s0,0(sp)
    8000562c:	01010113          	addi	sp,sp,16
    80005630:	00008067          	ret

0000000080005634 <_ZN7WorkerC3runEv>:
    void run() override {
    80005634:	ff010113          	addi	sp,sp,-16
    80005638:	00113423          	sd	ra,8(sp)
    8000563c:	00813023          	sd	s0,0(sp)
    80005640:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80005644:	00000593          	li	a1,0
    80005648:	00000097          	auipc	ra,0x0
    8000564c:	8bc080e7          	jalr	-1860(ra) # 80004f04 <_ZN7WorkerC11workerBodyCEPv>
    }
    80005650:	00813083          	ld	ra,8(sp)
    80005654:	00013403          	ld	s0,0(sp)
    80005658:	01010113          	addi	sp,sp,16
    8000565c:	00008067          	ret

0000000080005660 <_ZN7WorkerD3runEv>:

    void run() override {
    80005660:	ff010113          	addi	sp,sp,-16
    80005664:	00113423          	sd	ra,8(sp)
    80005668:	00813023          	sd	s0,0(sp)
    8000566c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80005670:	00000593          	li	a1,0
    80005674:	00000097          	auipc	ra,0x0
    80005678:	a10080e7          	jalr	-1520(ra) # 80005084 <_ZN7WorkerD11workerBodyDEPv>
    }
    8000567c:	00813083          	ld	ra,8(sp)
    80005680:	00013403          	ld	s0,0(sp)
    80005684:	01010113          	addi	sp,sp,16
    80005688:	00008067          	ret

000000008000568c <_Z11workerBodyAPv>:
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg)
{
    8000568c:	fe010113          	addi	sp,sp,-32
    80005690:	00113c23          	sd	ra,24(sp)
    80005694:	00813823          	sd	s0,16(sp)
    80005698:	00913423          	sd	s1,8(sp)
    8000569c:	01213023          	sd	s2,0(sp)
    800056a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800056a4:	00000913          	li	s2,0
    800056a8:	0380006f          	j	800056e0 <_Z11workerBodyAPv+0x54>
    {
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800056ac:	ffffc097          	auipc	ra,0xffffc
    800056b0:	c88080e7          	jalr	-888(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    800056b4:	00148493          	addi	s1,s1,1
    800056b8:	000027b7          	lui	a5,0x2
    800056bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800056c0:	0097ee63          	bltu	a5,s1,800056dc <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800056c4:	00000713          	li	a4,0
    800056c8:	000077b7          	lui	a5,0x7
    800056cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800056d0:	fce7eee3          	bltu	a5,a4,800056ac <_Z11workerBodyAPv+0x20>
    800056d4:	00170713          	addi	a4,a4,1
    800056d8:	ff1ff06f          	j	800056c8 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++)
    800056dc:	00190913          	addi	s2,s2,1
    800056e0:	00900793          	li	a5,9
    800056e4:	0527e063          	bltu	a5,s2,80005724 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800056e8:	00004517          	auipc	a0,0x4
    800056ec:	d1850513          	addi	a0,a0,-744 # 80009400 <CONSOLE_STATUS+0x3f0>
    800056f0:	00000097          	auipc	ra,0x0
    800056f4:	5c4080e7          	jalr	1476(ra) # 80005cb4 <_Z11printStringPKc>
    800056f8:	00000613          	li	a2,0
    800056fc:	00a00593          	li	a1,10
    80005700:	0009051b          	sext.w	a0,s2
    80005704:	00000097          	auipc	ra,0x0
    80005708:	748080e7          	jalr	1864(ra) # 80005e4c <_Z8printIntiii>
    8000570c:	00004517          	auipc	a0,0x4
    80005710:	9f450513          	addi	a0,a0,-1548 # 80009100 <CONSOLE_STATUS+0xf0>
    80005714:	00000097          	auipc	ra,0x0
    80005718:	5a0080e7          	jalr	1440(ra) # 80005cb4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    8000571c:	00000493          	li	s1,0
    80005720:	f99ff06f          	j	800056b8 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80005724:	00004517          	auipc	a0,0x4
    80005728:	ce450513          	addi	a0,a0,-796 # 80009408 <CONSOLE_STATUS+0x3f8>
    8000572c:	00000097          	auipc	ra,0x0
    80005730:	588080e7          	jalr	1416(ra) # 80005cb4 <_Z11printStringPKc>
    finishedA = true;
    80005734:	00100793          	li	a5,1
    80005738:	00006717          	auipc	a4,0x6
    8000573c:	5af70223          	sb	a5,1444(a4) # 8000bcdc <_ZL9finishedA>
}
    80005740:	01813083          	ld	ra,24(sp)
    80005744:	01013403          	ld	s0,16(sp)
    80005748:	00813483          	ld	s1,8(sp)
    8000574c:	00013903          	ld	s2,0(sp)
    80005750:	02010113          	addi	sp,sp,32
    80005754:	00008067          	ret

0000000080005758 <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    80005758:	fe010113          	addi	sp,sp,-32
    8000575c:	00113c23          	sd	ra,24(sp)
    80005760:	00813823          	sd	s0,16(sp)
    80005764:	00913423          	sd	s1,8(sp)
    80005768:	01213023          	sd	s2,0(sp)
    8000576c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005770:	00000913          	li	s2,0
    80005774:	0380006f          	j	800057ac <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005778:	ffffc097          	auipc	ra,0xffffc
    8000577c:	bbc080e7          	jalr	-1092(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    80005780:	00148493          	addi	s1,s1,1
    80005784:	000027b7          	lui	a5,0x2
    80005788:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000578c:	0097ee63          	bltu	a5,s1,800057a8 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005790:	00000713          	li	a4,0
    80005794:	000077b7          	lui	a5,0x7
    80005798:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000579c:	fce7eee3          	bltu	a5,a4,80005778 <_Z11workerBodyBPv+0x20>
    800057a0:	00170713          	addi	a4,a4,1
    800057a4:	ff1ff06f          	j	80005794 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800057a8:	00190913          	addi	s2,s2,1
    800057ac:	00f00793          	li	a5,15
    800057b0:	0527e063          	bltu	a5,s2,800057f0 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800057b4:	00004517          	auipc	a0,0x4
    800057b8:	c6450513          	addi	a0,a0,-924 # 80009418 <CONSOLE_STATUS+0x408>
    800057bc:	00000097          	auipc	ra,0x0
    800057c0:	4f8080e7          	jalr	1272(ra) # 80005cb4 <_Z11printStringPKc>
    800057c4:	00000613          	li	a2,0
    800057c8:	00a00593          	li	a1,10
    800057cc:	0009051b          	sext.w	a0,s2
    800057d0:	00000097          	auipc	ra,0x0
    800057d4:	67c080e7          	jalr	1660(ra) # 80005e4c <_Z8printIntiii>
    800057d8:	00004517          	auipc	a0,0x4
    800057dc:	92850513          	addi	a0,a0,-1752 # 80009100 <CONSOLE_STATUS+0xf0>
    800057e0:	00000097          	auipc	ra,0x0
    800057e4:	4d4080e7          	jalr	1236(ra) # 80005cb4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800057e8:	00000493          	li	s1,0
    800057ec:	f99ff06f          	j	80005784 <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    800057f0:	ffffc097          	auipc	ra,0xffffc
    800057f4:	b44080e7          	jalr	-1212(ra) # 80001334 <thread_dispatch>
    printString("B finished!\n");
    800057f8:	00004517          	auipc	a0,0x4
    800057fc:	c2850513          	addi	a0,a0,-984 # 80009420 <CONSOLE_STATUS+0x410>
    80005800:	00000097          	auipc	ra,0x0
    80005804:	4b4080e7          	jalr	1204(ra) # 80005cb4 <_Z11printStringPKc>
    finishedB = true;
    80005808:	00100793          	li	a5,1
    8000580c:	00006717          	auipc	a4,0x6
    80005810:	4cf708a3          	sb	a5,1233(a4) # 8000bcdd <_ZL9finishedB>
}
    80005814:	01813083          	ld	ra,24(sp)
    80005818:	01013403          	ld	s0,16(sp)
    8000581c:	00813483          	ld	s1,8(sp)
    80005820:	00013903          	ld	s2,0(sp)
    80005824:	02010113          	addi	sp,sp,32
    80005828:	00008067          	ret

000000008000582c <_ZL9fibonaccim>:
{
    8000582c:	fe010113          	addi	sp,sp,-32
    80005830:	00113c23          	sd	ra,24(sp)
    80005834:	00813823          	sd	s0,16(sp)
    80005838:	00913423          	sd	s1,8(sp)
    8000583c:	01213023          	sd	s2,0(sp)
    80005840:	02010413          	addi	s0,sp,32
    80005844:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) {return n; }
    80005848:	00100793          	li	a5,1
    8000584c:	02a7f863          	bgeu	a5,a0,8000587c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005850:	00a00793          	li	a5,10
    80005854:	02f577b3          	remu	a5,a0,a5
    80005858:	02078e63          	beqz	a5,80005894 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000585c:	fff48513          	addi	a0,s1,-1
    80005860:	00000097          	auipc	ra,0x0
    80005864:	fcc080e7          	jalr	-52(ra) # 8000582c <_ZL9fibonaccim>
    80005868:	00050913          	mv	s2,a0
    8000586c:	ffe48513          	addi	a0,s1,-2
    80005870:	00000097          	auipc	ra,0x0
    80005874:	fbc080e7          	jalr	-68(ra) # 8000582c <_ZL9fibonaccim>
    80005878:	00a90533          	add	a0,s2,a0
}
    8000587c:	01813083          	ld	ra,24(sp)
    80005880:	01013403          	ld	s0,16(sp)
    80005884:	00813483          	ld	s1,8(sp)
    80005888:	00013903          	ld	s2,0(sp)
    8000588c:	02010113          	addi	sp,sp,32
    80005890:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005894:	ffffc097          	auipc	ra,0xffffc
    80005898:	aa0080e7          	jalr	-1376(ra) # 80001334 <thread_dispatch>
    8000589c:	fc1ff06f          	j	8000585c <_ZL9fibonaccim+0x30>

00000000800058a0 <_Z11workerBodyCPv>:

void workerBodyC(void* arg)
{
    800058a0:	fe010113          	addi	sp,sp,-32
    800058a4:	00113c23          	sd	ra,24(sp)
    800058a8:	00813823          	sd	s0,16(sp)
    800058ac:	00913423          	sd	s1,8(sp)
    800058b0:	01213023          	sd	s2,0(sp)
    800058b4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800058b8:	00000493          	li	s1,0
    800058bc:	0400006f          	j	800058fc <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i="); printInt(i); printString("\n");
    800058c0:	00004517          	auipc	a0,0x4
    800058c4:	b7050513          	addi	a0,a0,-1168 # 80009430 <CONSOLE_STATUS+0x420>
    800058c8:	00000097          	auipc	ra,0x0
    800058cc:	3ec080e7          	jalr	1004(ra) # 80005cb4 <_Z11printStringPKc>
    800058d0:	00000613          	li	a2,0
    800058d4:	00a00593          	li	a1,10
    800058d8:	00048513          	mv	a0,s1
    800058dc:	00000097          	auipc	ra,0x0
    800058e0:	570080e7          	jalr	1392(ra) # 80005e4c <_Z8printIntiii>
    800058e4:	00004517          	auipc	a0,0x4
    800058e8:	81c50513          	addi	a0,a0,-2020 # 80009100 <CONSOLE_STATUS+0xf0>
    800058ec:	00000097          	auipc	ra,0x0
    800058f0:	3c8080e7          	jalr	968(ra) # 80005cb4 <_Z11printStringPKc>
    for (; i < 3; i++)
    800058f4:	0014849b          	addiw	s1,s1,1
    800058f8:	0ff4f493          	andi	s1,s1,255
    800058fc:	00200793          	li	a5,2
    80005900:	fc97f0e3          	bgeu	a5,s1,800058c0 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005904:	00004517          	auipc	a0,0x4
    80005908:	b3450513          	addi	a0,a0,-1228 # 80009438 <CONSOLE_STATUS+0x428>
    8000590c:	00000097          	auipc	ra,0x0
    80005910:	3a8080e7          	jalr	936(ra) # 80005cb4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005914:	00700313          	li	t1,7
    thread_dispatch();
    80005918:	ffffc097          	auipc	ra,0xffffc
    8000591c:	a1c080e7          	jalr	-1508(ra) # 80001334 <thread_dispatch>
    printString("C: returned\n");
    80005920:	00004517          	auipc	a0,0x4
    80005924:	be850513          	addi	a0,a0,-1048 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005928:	00000097          	auipc	ra,0x0
    8000592c:	38c080e7          	jalr	908(ra) # 80005cb4 <_Z11printStringPKc>
    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005930:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005934:	00004517          	auipc	a0,0x4
    80005938:	b1450513          	addi	a0,a0,-1260 # 80009448 <CONSOLE_STATUS+0x438>
    8000593c:	00000097          	auipc	ra,0x0
    80005940:	378080e7          	jalr	888(ra) # 80005cb4 <_Z11printStringPKc>
    80005944:	00000613          	li	a2,0
    80005948:	00a00593          	li	a1,10
    8000594c:	0009051b          	sext.w	a0,s2
    80005950:	00000097          	auipc	ra,0x0
    80005954:	4fc080e7          	jalr	1276(ra) # 80005e4c <_Z8printIntiii>
    80005958:	00003517          	auipc	a0,0x3
    8000595c:	7a850513          	addi	a0,a0,1960 # 80009100 <CONSOLE_STATUS+0xf0>
    80005960:	00000097          	auipc	ra,0x0
    80005964:	354080e7          	jalr	852(ra) # 80005cb4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005968:	00c00513          	li	a0,12
    8000596c:	00000097          	auipc	ra,0x0
    80005970:	ec0080e7          	jalr	-320(ra) # 8000582c <_ZL9fibonaccim>
    80005974:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005978:	00004517          	auipc	a0,0x4
    8000597c:	ad850513          	addi	a0,a0,-1320 # 80009450 <CONSOLE_STATUS+0x440>
    80005980:	00000097          	auipc	ra,0x0
    80005984:	334080e7          	jalr	820(ra) # 80005cb4 <_Z11printStringPKc>
    80005988:	00000613          	li	a2,0
    8000598c:	00a00593          	li	a1,10
    80005990:	0009051b          	sext.w	a0,s2
    80005994:	00000097          	auipc	ra,0x0
    80005998:	4b8080e7          	jalr	1208(ra) # 80005e4c <_Z8printIntiii>
    8000599c:	00003517          	auipc	a0,0x3
    800059a0:	76450513          	addi	a0,a0,1892 # 80009100 <CONSOLE_STATUS+0xf0>
    800059a4:	00000097          	auipc	ra,0x0
    800059a8:	310080e7          	jalr	784(ra) # 80005cb4 <_Z11printStringPKc>
    800059ac:	0400006f          	j	800059ec <_Z11workerBodyCPv+0x14c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800059b0:	00004517          	auipc	a0,0x4
    800059b4:	a8050513          	addi	a0,a0,-1408 # 80009430 <CONSOLE_STATUS+0x420>
    800059b8:	00000097          	auipc	ra,0x0
    800059bc:	2fc080e7          	jalr	764(ra) # 80005cb4 <_Z11printStringPKc>
    800059c0:	00000613          	li	a2,0
    800059c4:	00a00593          	li	a1,10
    800059c8:	00048513          	mv	a0,s1
    800059cc:	00000097          	auipc	ra,0x0
    800059d0:	480080e7          	jalr	1152(ra) # 80005e4c <_Z8printIntiii>
    800059d4:	00003517          	auipc	a0,0x3
    800059d8:	72c50513          	addi	a0,a0,1836 # 80009100 <CONSOLE_STATUS+0xf0>
    800059dc:	00000097          	auipc	ra,0x0
    800059e0:	2d8080e7          	jalr	728(ra) # 80005cb4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800059e4:	0014849b          	addiw	s1,s1,1
    800059e8:	0ff4f493          	andi	s1,s1,255
    800059ec:	00500793          	li	a5,5
    800059f0:	fc97f0e3          	bgeu	a5,s1,800059b0 <_Z11workerBodyCPv+0x110>
    }

    thread_dispatch();
    800059f4:	ffffc097          	auipc	ra,0xffffc
    800059f8:	940080e7          	jalr	-1728(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    800059fc:	00004517          	auipc	a0,0x4
    80005a00:	a6450513          	addi	a0,a0,-1436 # 80009460 <CONSOLE_STATUS+0x450>
    80005a04:	00000097          	auipc	ra,0x0
    80005a08:	2b0080e7          	jalr	688(ra) # 80005cb4 <_Z11printStringPKc>
    finishedC = true;
    80005a0c:	00100793          	li	a5,1
    80005a10:	00006717          	auipc	a4,0x6
    80005a14:	2cf70723          	sb	a5,718(a4) # 8000bcde <_ZL9finishedC>
}
    80005a18:	01813083          	ld	ra,24(sp)
    80005a1c:	01013403          	ld	s0,16(sp)
    80005a20:	00813483          	ld	s1,8(sp)
    80005a24:	00013903          	ld	s2,0(sp)
    80005a28:	02010113          	addi	sp,sp,32
    80005a2c:	00008067          	ret

0000000080005a30 <_Z11workerBodyDPv>:

void workerBodyD(void* arg)
{
    80005a30:	fe010113          	addi	sp,sp,-32
    80005a34:	00113c23          	sd	ra,24(sp)
    80005a38:	00813823          	sd	s0,16(sp)
    80005a3c:	00913423          	sd	s1,8(sp)
    80005a40:	01213023          	sd	s2,0(sp)
    80005a44:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005a48:	00a00493          	li	s1,10
    80005a4c:	0400006f          	j	80005a8c <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005a50:	00004517          	auipc	a0,0x4
    80005a54:	a2050513          	addi	a0,a0,-1504 # 80009470 <CONSOLE_STATUS+0x460>
    80005a58:	00000097          	auipc	ra,0x0
    80005a5c:	25c080e7          	jalr	604(ra) # 80005cb4 <_Z11printStringPKc>
    80005a60:	00000613          	li	a2,0
    80005a64:	00a00593          	li	a1,10
    80005a68:	00048513          	mv	a0,s1
    80005a6c:	00000097          	auipc	ra,0x0
    80005a70:	3e0080e7          	jalr	992(ra) # 80005e4c <_Z8printIntiii>
    80005a74:	00003517          	auipc	a0,0x3
    80005a78:	68c50513          	addi	a0,a0,1676 # 80009100 <CONSOLE_STATUS+0xf0>
    80005a7c:	00000097          	auipc	ra,0x0
    80005a80:	238080e7          	jalr	568(ra) # 80005cb4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005a84:	0014849b          	addiw	s1,s1,1
    80005a88:	0ff4f493          	andi	s1,s1,255
    80005a8c:	00c00793          	li	a5,12
    80005a90:	fc97f0e3          	bgeu	a5,s1,80005a50 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005a94:	00004517          	auipc	a0,0x4
    80005a98:	9e450513          	addi	a0,a0,-1564 # 80009478 <CONSOLE_STATUS+0x468>
    80005a9c:	00000097          	auipc	ra,0x0
    80005aa0:	218080e7          	jalr	536(ra) # 80005cb4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005aa4:	00500313          	li	t1,5
    thread_dispatch();
    80005aa8:	ffffc097          	auipc	ra,0xffffc
    80005aac:	88c080e7          	jalr	-1908(ra) # 80001334 <thread_dispatch>
    printString("D: returned\n");
    80005ab0:	00004517          	auipc	a0,0x4
    80005ab4:	a6850513          	addi	a0,a0,-1432 # 80009518 <CONSOLE_STATUS+0x508>
    80005ab8:	00000097          	auipc	ra,0x0
    80005abc:	1fc080e7          	jalr	508(ra) # 80005cb4 <_Z11printStringPKc>
    uint64 result = fibonacci(16);
    80005ac0:	01000513          	li	a0,16
    80005ac4:	00000097          	auipc	ra,0x0
    80005ac8:	d68080e7          	jalr	-664(ra) # 8000582c <_ZL9fibonaccim>
    80005acc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005ad0:	00004517          	auipc	a0,0x4
    80005ad4:	9b850513          	addi	a0,a0,-1608 # 80009488 <CONSOLE_STATUS+0x478>
    80005ad8:	00000097          	auipc	ra,0x0
    80005adc:	1dc080e7          	jalr	476(ra) # 80005cb4 <_Z11printStringPKc>
    80005ae0:	00000613          	li	a2,0
    80005ae4:	00a00593          	li	a1,10
    80005ae8:	0009051b          	sext.w	a0,s2
    80005aec:	00000097          	auipc	ra,0x0
    80005af0:	360080e7          	jalr	864(ra) # 80005e4c <_Z8printIntiii>
    80005af4:	00003517          	auipc	a0,0x3
    80005af8:	60c50513          	addi	a0,a0,1548 # 80009100 <CONSOLE_STATUS+0xf0>
    80005afc:	00000097          	auipc	ra,0x0
    80005b00:	1b8080e7          	jalr	440(ra) # 80005cb4 <_Z11printStringPKc>
    80005b04:	0400006f          	j	80005b44 <_Z11workerBodyDPv+0x114>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005b08:	00004517          	auipc	a0,0x4
    80005b0c:	96850513          	addi	a0,a0,-1688 # 80009470 <CONSOLE_STATUS+0x460>
    80005b10:	00000097          	auipc	ra,0x0
    80005b14:	1a4080e7          	jalr	420(ra) # 80005cb4 <_Z11printStringPKc>
    80005b18:	00000613          	li	a2,0
    80005b1c:	00a00593          	li	a1,10
    80005b20:	00048513          	mv	a0,s1
    80005b24:	00000097          	auipc	ra,0x0
    80005b28:	328080e7          	jalr	808(ra) # 80005e4c <_Z8printIntiii>
    80005b2c:	00003517          	auipc	a0,0x3
    80005b30:	5d450513          	addi	a0,a0,1492 # 80009100 <CONSOLE_STATUS+0xf0>
    80005b34:	00000097          	auipc	ra,0x0
    80005b38:	180080e7          	jalr	384(ra) # 80005cb4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005b3c:	0014849b          	addiw	s1,s1,1
    80005b40:	0ff4f493          	andi	s1,s1,255
    80005b44:	00f00793          	li	a5,15
    80005b48:	fc97f0e3          	bgeu	a5,s1,80005b08 <_Z11workerBodyDPv+0xd8>
    }

    thread_dispatch();
    80005b4c:	ffffb097          	auipc	ra,0xffffb
    80005b50:	7e8080e7          	jalr	2024(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    80005b54:	00004517          	auipc	a0,0x4
    80005b58:	94450513          	addi	a0,a0,-1724 # 80009498 <CONSOLE_STATUS+0x488>
    80005b5c:	00000097          	auipc	ra,0x0
    80005b60:	158080e7          	jalr	344(ra) # 80005cb4 <_Z11printStringPKc>
    finishedD = true;
    80005b64:	00100793          	li	a5,1
    80005b68:	00006717          	auipc	a4,0x6
    80005b6c:	16f70ba3          	sb	a5,375(a4) # 8000bcdf <_ZL9finishedD>
}
    80005b70:	01813083          	ld	ra,24(sp)
    80005b74:	01013403          	ld	s0,16(sp)
    80005b78:	00813483          	ld	s1,8(sp)
    80005b7c:	00013903          	ld	s2,0(sp)
    80005b80:	02010113          	addi	sp,sp,32
    80005b84:	00008067          	ret

0000000080005b88 <_Z18Threads_C_API_testv>:


void Threads_C_API_test()
{
    80005b88:	fc010113          	addi	sp,sp,-64
    80005b8c:	02113c23          	sd	ra,56(sp)
    80005b90:	02813823          	sd	s0,48(sp)
    80005b94:	02913423          	sd	s1,40(sp)
    80005b98:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005b9c:	00000613          	li	a2,0
    80005ba0:	00000597          	auipc	a1,0x0
    80005ba4:	aec58593          	addi	a1,a1,-1300 # 8000568c <_Z11workerBodyAPv>
    80005ba8:	fc040513          	addi	a0,s0,-64
    80005bac:	ffffb097          	auipc	ra,0xffffb
    80005bb0:	708080e7          	jalr	1800(ra) # 800012b4 <thread_create>
    printString("ThreadA created\n");
    80005bb4:	00004517          	auipc	a0,0x4
    80005bb8:	8f450513          	addi	a0,a0,-1804 # 800094a8 <CONSOLE_STATUS+0x498>
    80005bbc:	00000097          	auipc	ra,0x0
    80005bc0:	0f8080e7          	jalr	248(ra) # 80005cb4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005bc4:	00000613          	li	a2,0
    80005bc8:	00000597          	auipc	a1,0x0
    80005bcc:	b9058593          	addi	a1,a1,-1136 # 80005758 <_Z11workerBodyBPv>
    80005bd0:	fc840513          	addi	a0,s0,-56
    80005bd4:	ffffb097          	auipc	ra,0xffffb
    80005bd8:	6e0080e7          	jalr	1760(ra) # 800012b4 <thread_create>
    printString("ThreadB created\n");
    80005bdc:	00004517          	auipc	a0,0x4
    80005be0:	8e450513          	addi	a0,a0,-1820 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80005be4:	00000097          	auipc	ra,0x0
    80005be8:	0d0080e7          	jalr	208(ra) # 80005cb4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005bec:	00000613          	li	a2,0
    80005bf0:	00000597          	auipc	a1,0x0
    80005bf4:	cb058593          	addi	a1,a1,-848 # 800058a0 <_Z11workerBodyCPv>
    80005bf8:	fd040513          	addi	a0,s0,-48
    80005bfc:	ffffb097          	auipc	ra,0xffffb
    80005c00:	6b8080e7          	jalr	1720(ra) # 800012b4 <thread_create>
    printString("ThreadC created\n");
    80005c04:	00004517          	auipc	a0,0x4
    80005c08:	8d450513          	addi	a0,a0,-1836 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80005c0c:	00000097          	auipc	ra,0x0
    80005c10:	0a8080e7          	jalr	168(ra) # 80005cb4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005c14:	00000613          	li	a2,0
    80005c18:	00000597          	auipc	a1,0x0
    80005c1c:	e1858593          	addi	a1,a1,-488 # 80005a30 <_Z11workerBodyDPv>
    80005c20:	fd840513          	addi	a0,s0,-40
    80005c24:	ffffb097          	auipc	ra,0xffffb
    80005c28:	690080e7          	jalr	1680(ra) # 800012b4 <thread_create>
    printString("ThreadD created\n");
    80005c2c:	00004517          	auipc	a0,0x4
    80005c30:	8c450513          	addi	a0,a0,-1852 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80005c34:	00000097          	auipc	ra,0x0
    80005c38:	080080e7          	jalr	128(ra) # 80005cb4 <_Z11printStringPKc>
    80005c3c:	00c0006f          	j	80005c48 <_Z18Threads_C_API_testv+0xc0>

    while (!finishedA || !finishedB || !finishedC || !finishedD)
    {
        //printString("Main thread\n");
        thread_dispatch();
    80005c40:	ffffb097          	auipc	ra,0xffffb
    80005c44:	6f4080e7          	jalr	1780(ra) # 80001334 <thread_dispatch>
    while (!finishedA || !finishedB || !finishedC || !finishedD)
    80005c48:	00006797          	auipc	a5,0x6
    80005c4c:	0947c783          	lbu	a5,148(a5) # 8000bcdc <_ZL9finishedA>
    80005c50:	fe0788e3          	beqz	a5,80005c40 <_Z18Threads_C_API_testv+0xb8>
    80005c54:	00006797          	auipc	a5,0x6
    80005c58:	0897c783          	lbu	a5,137(a5) # 8000bcdd <_ZL9finishedB>
    80005c5c:	fe0782e3          	beqz	a5,80005c40 <_Z18Threads_C_API_testv+0xb8>
    80005c60:	00006797          	auipc	a5,0x6
    80005c64:	07e7c783          	lbu	a5,126(a5) # 8000bcde <_ZL9finishedC>
    80005c68:	fc078ce3          	beqz	a5,80005c40 <_Z18Threads_C_API_testv+0xb8>
    80005c6c:	00006797          	auipc	a5,0x6
    80005c70:	0737c783          	lbu	a5,115(a5) # 8000bcdf <_ZL9finishedD>
    80005c74:	fc0786e3          	beqz	a5,80005c40 <_Z18Threads_C_API_testv+0xb8>
    }
    for (auto &thread: threads)
    80005c78:	fc040493          	addi	s1,s0,-64
    80005c7c:	0080006f          	j	80005c84 <_Z18Threads_C_API_testv+0xfc>
    80005c80:	00848493          	addi	s1,s1,8
    80005c84:	fe040793          	addi	a5,s0,-32
    80005c88:	00f48c63          	beq	s1,a5,80005ca0 <_Z18Threads_C_API_testv+0x118>
    {
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (uint64*)thread;
    80005c8c:	0004b503          	ld	a0,0(s1)
    80005c90:	fe0508e3          	beqz	a0,80005c80 <_Z18Threads_C_API_testv+0xf8>
    80005c94:	ffffe097          	auipc	ra,0xffffe
    80005c98:	aac080e7          	jalr	-1364(ra) # 80003740 <_ZdlPv>
    80005c9c:	fe5ff06f          	j	80005c80 <_Z18Threads_C_API_testv+0xf8>
    }
}
    80005ca0:	03813083          	ld	ra,56(sp)
    80005ca4:	03013403          	ld	s0,48(sp)
    80005ca8:	02813483          	ld	s1,40(sp)
    80005cac:	04010113          	addi	sp,sp,64
    80005cb0:	00008067          	ret

0000000080005cb4 <_Z11printStringPKc>:
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string)
{
    80005cb4:	fe010113          	addi	sp,sp,-32
    80005cb8:	00113c23          	sd	ra,24(sp)
    80005cbc:	00813823          	sd	s0,16(sp)
    80005cc0:	00913423          	sd	s1,8(sp)
    80005cc4:	02010413          	addi	s0,sp,32
    80005cc8:	00050493          	mv	s1,a0
    LOCK();
    80005ccc:	00100613          	li	a2,1
    80005cd0:	00000593          	li	a1,0
    80005cd4:	00006517          	auipc	a0,0x6
    80005cd8:	00c50513          	addi	a0,a0,12 # 8000bce0 <lockPrint>
    80005cdc:	ffffb097          	auipc	ra,0xffffb
    80005ce0:	53c080e7          	jalr	1340(ra) # 80001218 <copy_and_swap>
    80005ce4:	fe0514e3          	bnez	a0,80005ccc <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80005ce8:	0004c503          	lbu	a0,0(s1)
    80005cec:	00050a63          	beqz	a0,80005d00 <_Z11printStringPKc+0x4c>
        putc(*string);
    80005cf0:	ffffc097          	auipc	ra,0xffffc
    80005cf4:	848080e7          	jalr	-1976(ra) # 80001538 <putc>
        string++;
    80005cf8:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005cfc:	fedff06f          	j	80005ce8 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005d00:	00000613          	li	a2,0
    80005d04:	00100593          	li	a1,1
    80005d08:	00006517          	auipc	a0,0x6
    80005d0c:	fd850513          	addi	a0,a0,-40 # 8000bce0 <lockPrint>
    80005d10:	ffffb097          	auipc	ra,0xffffb
    80005d14:	508080e7          	jalr	1288(ra) # 80001218 <copy_and_swap>
    80005d18:	fe0514e3          	bnez	a0,80005d00 <_Z11printStringPKc+0x4c>
}
    80005d1c:	01813083          	ld	ra,24(sp)
    80005d20:	01013403          	ld	s0,16(sp)
    80005d24:	00813483          	ld	s1,8(sp)
    80005d28:	02010113          	addi	sp,sp,32
    80005d2c:	00008067          	ret

0000000080005d30 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005d30:	fd010113          	addi	sp,sp,-48
    80005d34:	02113423          	sd	ra,40(sp)
    80005d38:	02813023          	sd	s0,32(sp)
    80005d3c:	00913c23          	sd	s1,24(sp)
    80005d40:	01213823          	sd	s2,16(sp)
    80005d44:	01313423          	sd	s3,8(sp)
    80005d48:	01413023          	sd	s4,0(sp)
    80005d4c:	03010413          	addi	s0,sp,48
    80005d50:	00050993          	mv	s3,a0
    80005d54:	00058a13          	mv	s4,a1
    LOCK();
    80005d58:	00100613          	li	a2,1
    80005d5c:	00000593          	li	a1,0
    80005d60:	00006517          	auipc	a0,0x6
    80005d64:	f8050513          	addi	a0,a0,-128 # 8000bce0 <lockPrint>
    80005d68:	ffffb097          	auipc	ra,0xffffb
    80005d6c:	4b0080e7          	jalr	1200(ra) # 80001218 <copy_and_swap>
    80005d70:	fe0514e3          	bnez	a0,80005d58 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80005d74:	00000913          	li	s2,0
    80005d78:	00090493          	mv	s1,s2
    80005d7c:	0019091b          	addiw	s2,s2,1
    80005d80:	03495a63          	bge	s2,s4,80005db4 <_Z9getStringPci+0x84>
        cc = getc();
    80005d84:	ffffb097          	auipc	ra,0xffffb
    80005d88:	78c080e7          	jalr	1932(ra) # 80001510 <getc>
        if (cc < 1)
    80005d8c:	02050463          	beqz	a0,80005db4 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005d90:	009984b3          	add	s1,s3,s1
    80005d94:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80005d98:	00a00793          	li	a5,10
    80005d9c:	00f50a63          	beq	a0,a5,80005db0 <_Z9getStringPci+0x80>
    80005da0:	00d00793          	li	a5,13
    80005da4:	fcf51ae3          	bne	a0,a5,80005d78 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005da8:	00090493          	mv	s1,s2
    80005dac:	0080006f          	j	80005db4 <_Z9getStringPci+0x84>
    80005db0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005db4:	009984b3          	add	s1,s3,s1
    80005db8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005dbc:	00000613          	li	a2,0
    80005dc0:	00100593          	li	a1,1
    80005dc4:	00006517          	auipc	a0,0x6
    80005dc8:	f1c50513          	addi	a0,a0,-228 # 8000bce0 <lockPrint>
    80005dcc:	ffffb097          	auipc	ra,0xffffb
    80005dd0:	44c080e7          	jalr	1100(ra) # 80001218 <copy_and_swap>
    80005dd4:	fe0514e3          	bnez	a0,80005dbc <_Z9getStringPci+0x8c>
    return buf;
}
    80005dd8:	00098513          	mv	a0,s3
    80005ddc:	02813083          	ld	ra,40(sp)
    80005de0:	02013403          	ld	s0,32(sp)
    80005de4:	01813483          	ld	s1,24(sp)
    80005de8:	01013903          	ld	s2,16(sp)
    80005dec:	00813983          	ld	s3,8(sp)
    80005df0:	00013a03          	ld	s4,0(sp)
    80005df4:	03010113          	addi	sp,sp,48
    80005df8:	00008067          	ret

0000000080005dfc <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005dfc:	ff010113          	addi	sp,sp,-16
    80005e00:	00813423          	sd	s0,8(sp)
    80005e04:	01010413          	addi	s0,sp,16
    80005e08:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005e0c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005e10:	0006c603          	lbu	a2,0(a3)
    80005e14:	fd06071b          	addiw	a4,a2,-48
    80005e18:	0ff77713          	andi	a4,a4,255
    80005e1c:	00900793          	li	a5,9
    80005e20:	02e7e063          	bltu	a5,a4,80005e40 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005e24:	0025179b          	slliw	a5,a0,0x2
    80005e28:	00a787bb          	addw	a5,a5,a0
    80005e2c:	0017979b          	slliw	a5,a5,0x1
    80005e30:	00168693          	addi	a3,a3,1
    80005e34:	00c787bb          	addw	a5,a5,a2
    80005e38:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005e3c:	fd5ff06f          	j	80005e10 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005e40:	00813403          	ld	s0,8(sp)
    80005e44:	01010113          	addi	sp,sp,16
    80005e48:	00008067          	ret

0000000080005e4c <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005e4c:	fc010113          	addi	sp,sp,-64
    80005e50:	02113c23          	sd	ra,56(sp)
    80005e54:	02813823          	sd	s0,48(sp)
    80005e58:	02913423          	sd	s1,40(sp)
    80005e5c:	03213023          	sd	s2,32(sp)
    80005e60:	01313c23          	sd	s3,24(sp)
    80005e64:	04010413          	addi	s0,sp,64
    80005e68:	00050493          	mv	s1,a0
    80005e6c:	00058913          	mv	s2,a1
    80005e70:	00060993          	mv	s3,a2
    LOCK();
    80005e74:	00100613          	li	a2,1
    80005e78:	00000593          	li	a1,0
    80005e7c:	00006517          	auipc	a0,0x6
    80005e80:	e6450513          	addi	a0,a0,-412 # 8000bce0 <lockPrint>
    80005e84:	ffffb097          	auipc	ra,0xffffb
    80005e88:	394080e7          	jalr	916(ra) # 80001218 <copy_and_swap>
    80005e8c:	fe0514e3          	bnez	a0,80005e74 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005e90:	00098463          	beqz	s3,80005e98 <_Z8printIntiii+0x4c>
    80005e94:	0804c463          	bltz	s1,80005f1c <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005e98:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005e9c:	00000593          	li	a1,0
    }

    i = 0;
    80005ea0:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005ea4:	0009079b          	sext.w	a5,s2
    80005ea8:	0325773b          	remuw	a4,a0,s2
    80005eac:	00048613          	mv	a2,s1
    80005eb0:	0014849b          	addiw	s1,s1,1
    80005eb4:	02071693          	slli	a3,a4,0x20
    80005eb8:	0206d693          	srli	a3,a3,0x20
    80005ebc:	00003717          	auipc	a4,0x3
    80005ec0:	66c70713          	addi	a4,a4,1644 # 80009528 <_ZL6digits>
    80005ec4:	00d70733          	add	a4,a4,a3
    80005ec8:	00074683          	lbu	a3,0(a4)
    80005ecc:	fd040713          	addi	a4,s0,-48
    80005ed0:	00c70733          	add	a4,a4,a2
    80005ed4:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005ed8:	0005071b          	sext.w	a4,a0
    80005edc:	0325553b          	divuw	a0,a0,s2
    80005ee0:	fcf772e3          	bgeu	a4,a5,80005ea4 <_Z8printIntiii+0x58>
    if (neg)
    80005ee4:	00058c63          	beqz	a1,80005efc <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005ee8:	fd040793          	addi	a5,s0,-48
    80005eec:	009784b3          	add	s1,a5,s1
    80005ef0:	02d00793          	li	a5,45
    80005ef4:	fef48823          	sb	a5,-16(s1)
    80005ef8:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005efc:	fff4849b          	addiw	s1,s1,-1
    80005f00:	0204c463          	bltz	s1,80005f28 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005f04:	fd040793          	addi	a5,s0,-48
    80005f08:	009787b3          	add	a5,a5,s1
    80005f0c:	ff07c503          	lbu	a0,-16(a5)
    80005f10:	ffffb097          	auipc	ra,0xffffb
    80005f14:	628080e7          	jalr	1576(ra) # 80001538 <putc>
    80005f18:	fe5ff06f          	j	80005efc <_Z8printIntiii+0xb0>
        x = -xx;
    80005f1c:	4090053b          	negw	a0,s1
        neg = 1;
    80005f20:	00100593          	li	a1,1
        x = -xx;
    80005f24:	f7dff06f          	j	80005ea0 <_Z8printIntiii+0x54>
    UNLOCK();
    80005f28:	00000613          	li	a2,0
    80005f2c:	00100593          	li	a1,1
    80005f30:	00006517          	auipc	a0,0x6
    80005f34:	db050513          	addi	a0,a0,-592 # 8000bce0 <lockPrint>
    80005f38:	ffffb097          	auipc	ra,0xffffb
    80005f3c:	2e0080e7          	jalr	736(ra) # 80001218 <copy_and_swap>
    80005f40:	fe0514e3          	bnez	a0,80005f28 <_Z8printIntiii+0xdc>
}
    80005f44:	03813083          	ld	ra,56(sp)
    80005f48:	03013403          	ld	s0,48(sp)
    80005f4c:	02813483          	ld	s1,40(sp)
    80005f50:	02013903          	ld	s2,32(sp)
    80005f54:	01813983          	ld	s3,24(sp)
    80005f58:	04010113          	addi	sp,sp,64
    80005f5c:	00008067          	ret

0000000080005f60 <_Z15trapPrintStringPKc>:

void trapPrintString(char const* string)
{
    80005f60:	fe010113          	addi	sp,sp,-32
    80005f64:	00113c23          	sd	ra,24(sp)
    80005f68:	00813823          	sd	s0,16(sp)
    80005f6c:	00913423          	sd	s1,8(sp)
    80005f70:	02010413          	addi	s0,sp,32
    80005f74:	00050493          	mv	s1,a0
    LOCK();
    80005f78:	00100613          	li	a2,1
    80005f7c:	00000593          	li	a1,0
    80005f80:	00006517          	auipc	a0,0x6
    80005f84:	d6050513          	addi	a0,a0,-672 # 8000bce0 <lockPrint>
    80005f88:	ffffb097          	auipc	ra,0xffffb
    80005f8c:	290080e7          	jalr	656(ra) # 80001218 <copy_and_swap>
    80005f90:	fe0514e3          	bnez	a0,80005f78 <_Z15trapPrintStringPKc+0x18>
    while (*string != '\0') {
    80005f94:	0004c503          	lbu	a0,0(s1)
    80005f98:	00050a63          	beqz	a0,80005fac <_Z15trapPrintStringPKc+0x4c>
        KConsole::putCharacterOutput(*string);
    80005f9c:	ffffd097          	auipc	ra,0xffffd
    80005fa0:	fd8080e7          	jalr	-40(ra) # 80002f74 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80005fa4:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005fa8:	fedff06f          	j	80005f94 <_Z15trapPrintStringPKc+0x34>
    }
    UNLOCK();
    80005fac:	00000613          	li	a2,0
    80005fb0:	00100593          	li	a1,1
    80005fb4:	00006517          	auipc	a0,0x6
    80005fb8:	d2c50513          	addi	a0,a0,-724 # 8000bce0 <lockPrint>
    80005fbc:	ffffb097          	auipc	ra,0xffffb
    80005fc0:	25c080e7          	jalr	604(ra) # 80001218 <copy_and_swap>
    80005fc4:	fe0514e3          	bnez	a0,80005fac <_Z15trapPrintStringPKc+0x4c>
}
    80005fc8:	01813083          	ld	ra,24(sp)
    80005fcc:	01013403          	ld	s0,16(sp)
    80005fd0:	00813483          	ld	s1,8(sp)
    80005fd4:	02010113          	addi	sp,sp,32
    80005fd8:	00008067          	ret

0000000080005fdc <_Z12trapPrintIntiii>:

void trapPrintInt(int xx, int base, int sgn)
{
    80005fdc:	fc010113          	addi	sp,sp,-64
    80005fe0:	02113c23          	sd	ra,56(sp)
    80005fe4:	02813823          	sd	s0,48(sp)
    80005fe8:	02913423          	sd	s1,40(sp)
    80005fec:	03213023          	sd	s2,32(sp)
    80005ff0:	01313c23          	sd	s3,24(sp)
    80005ff4:	04010413          	addi	s0,sp,64
    80005ff8:	00050493          	mv	s1,a0
    80005ffc:	00058913          	mv	s2,a1
    80006000:	00060993          	mv	s3,a2
    LOCK();
    80006004:	00100613          	li	a2,1
    80006008:	00000593          	li	a1,0
    8000600c:	00006517          	auipc	a0,0x6
    80006010:	cd450513          	addi	a0,a0,-812 # 8000bce0 <lockPrint>
    80006014:	ffffb097          	auipc	ra,0xffffb
    80006018:	204080e7          	jalr	516(ra) # 80001218 <copy_and_swap>
    8000601c:	fe0514e3          	bnez	a0,80006004 <_Z12trapPrintIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80006020:	00098463          	beqz	s3,80006028 <_Z12trapPrintIntiii+0x4c>
    80006024:	0804c463          	bltz	s1,800060ac <_Z12trapPrintIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80006028:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000602c:	00000593          	li	a1,0
    }

    i = 0;
    80006030:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80006034:	0009079b          	sext.w	a5,s2
    80006038:	0325773b          	remuw	a4,a0,s2
    8000603c:	00048613          	mv	a2,s1
    80006040:	0014849b          	addiw	s1,s1,1
    80006044:	02071693          	slli	a3,a4,0x20
    80006048:	0206d693          	srli	a3,a3,0x20
    8000604c:	00003717          	auipc	a4,0x3
    80006050:	4dc70713          	addi	a4,a4,1244 # 80009528 <_ZL6digits>
    80006054:	00d70733          	add	a4,a4,a3
    80006058:	00074683          	lbu	a3,0(a4)
    8000605c:	fd040713          	addi	a4,s0,-48
    80006060:	00c70733          	add	a4,a4,a2
    80006064:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80006068:	0005071b          	sext.w	a4,a0
    8000606c:	0325553b          	divuw	a0,a0,s2
    80006070:	fcf772e3          	bgeu	a4,a5,80006034 <_Z12trapPrintIntiii+0x58>
    if (neg)
    80006074:	00058c63          	beqz	a1,8000608c <_Z12trapPrintIntiii+0xb0>
        buf[i++] = '-';
    80006078:	fd040793          	addi	a5,s0,-48
    8000607c:	009784b3          	add	s1,a5,s1
    80006080:	02d00793          	li	a5,45
    80006084:	fef48823          	sb	a5,-16(s1)
    80006088:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    8000608c:	fff4849b          	addiw	s1,s1,-1
    80006090:	0204c463          	bltz	s1,800060b8 <_Z12trapPrintIntiii+0xdc>
        KConsole::putCharacterOutput(buf[i]);
    80006094:	fd040793          	addi	a5,s0,-48
    80006098:	009787b3          	add	a5,a5,s1
    8000609c:	ff07c503          	lbu	a0,-16(a5)
    800060a0:	ffffd097          	auipc	ra,0xffffd
    800060a4:	ed4080e7          	jalr	-300(ra) # 80002f74 <_ZN8KConsole18putCharacterOutputEc>
    800060a8:	fe5ff06f          	j	8000608c <_Z12trapPrintIntiii+0xb0>
        x = -xx;
    800060ac:	4090053b          	negw	a0,s1
        neg = 1;
    800060b0:	00100593          	li	a1,1
        x = -xx;
    800060b4:	f7dff06f          	j	80006030 <_Z12trapPrintIntiii+0x54>
    UNLOCK();
    800060b8:	00000613          	li	a2,0
    800060bc:	00100593          	li	a1,1
    800060c0:	00006517          	auipc	a0,0x6
    800060c4:	c2050513          	addi	a0,a0,-992 # 8000bce0 <lockPrint>
    800060c8:	ffffb097          	auipc	ra,0xffffb
    800060cc:	150080e7          	jalr	336(ra) # 80001218 <copy_and_swap>
    800060d0:	fe0514e3          	bnez	a0,800060b8 <_Z12trapPrintIntiii+0xdc>
}
    800060d4:	03813083          	ld	ra,56(sp)
    800060d8:	03013403          	ld	s0,48(sp)
    800060dc:	02813483          	ld	s1,40(sp)
    800060e0:	02013903          	ld	s2,32(sp)
    800060e4:	01813983          	ld	s3,24(sp)
    800060e8:	04010113          	addi	sp,sp,64
    800060ec:	00008067          	ret

00000000800060f0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    800060f0:	fe010113          	addi	sp,sp,-32
    800060f4:	00113c23          	sd	ra,24(sp)
    800060f8:	00813823          	sd	s0,16(sp)
    800060fc:	00913423          	sd	s1,8(sp)
    80006100:	01213023          	sd	s2,0(sp)
    80006104:	02010413          	addi	s0,sp,32
    80006108:	00050493          	mv	s1,a0
    8000610c:	00b52023          	sw	a1,0(a0)
    80006110:	00052823          	sw	zero,16(a0)
    80006114:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006118:	00259513          	slli	a0,a1,0x2
    8000611c:	ffffb097          	auipc	ra,0xffffb
    80006120:	13c080e7          	jalr	316(ra) # 80001258 <mem_alloc>
    80006124:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80006128:	01000513          	li	a0,16
    8000612c:	ffffd097          	auipc	ra,0xffffd
    80006130:	5ec080e7          	jalr	1516(ra) # 80003718 <_Znwm>
    80006134:	00050913          	mv	s2,a0
    80006138:	00000593          	li	a1,0
    8000613c:	ffffe097          	auipc	ra,0xffffe
    80006140:	828080e7          	jalr	-2008(ra) # 80003964 <_ZN9SemaphoreC1Ej>
    80006144:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    80006148:	01000513          	li	a0,16
    8000614c:	ffffd097          	auipc	ra,0xffffd
    80006150:	5cc080e7          	jalr	1484(ra) # 80003718 <_Znwm>
    80006154:	00050913          	mv	s2,a0
    80006158:	0004a583          	lw	a1,0(s1)
    8000615c:	ffffe097          	auipc	ra,0xffffe
    80006160:	808080e7          	jalr	-2040(ra) # 80003964 <_ZN9SemaphoreC1Ej>
    80006164:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80006168:	01000513          	li	a0,16
    8000616c:	ffffd097          	auipc	ra,0xffffd
    80006170:	5ac080e7          	jalr	1452(ra) # 80003718 <_Znwm>
    80006174:	00050913          	mv	s2,a0
    80006178:	00100593          	li	a1,1
    8000617c:	ffffd097          	auipc	ra,0xffffd
    80006180:	7e8080e7          	jalr	2024(ra) # 80003964 <_ZN9SemaphoreC1Ej>
    80006184:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006188:	01000513          	li	a0,16
    8000618c:	ffffd097          	auipc	ra,0xffffd
    80006190:	58c080e7          	jalr	1420(ra) # 80003718 <_Znwm>
    80006194:	00050913          	mv	s2,a0
    80006198:	00100593          	li	a1,1
    8000619c:	ffffd097          	auipc	ra,0xffffd
    800061a0:	7c8080e7          	jalr	1992(ra) # 80003964 <_ZN9SemaphoreC1Ej>
    800061a4:	0324b823          	sd	s2,48(s1)
}
    800061a8:	01813083          	ld	ra,24(sp)
    800061ac:	01013403          	ld	s0,16(sp)
    800061b0:	00813483          	ld	s1,8(sp)
    800061b4:	00013903          	ld	s2,0(sp)
    800061b8:	02010113          	addi	sp,sp,32
    800061bc:	00008067          	ret
    800061c0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800061c4:	00090513          	mv	a0,s2
    800061c8:	ffffd097          	auipc	ra,0xffffd
    800061cc:	578080e7          	jalr	1400(ra) # 80003740 <_ZdlPv>
    800061d0:	00048513          	mv	a0,s1
    800061d4:	00007097          	auipc	ra,0x7
    800061d8:	be4080e7          	jalr	-1052(ra) # 8000cdb8 <_Unwind_Resume>
    800061dc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    800061e0:	00090513          	mv	a0,s2
    800061e4:	ffffd097          	auipc	ra,0xffffd
    800061e8:	55c080e7          	jalr	1372(ra) # 80003740 <_ZdlPv>
    800061ec:	00048513          	mv	a0,s1
    800061f0:	00007097          	auipc	ra,0x7
    800061f4:	bc8080e7          	jalr	-1080(ra) # 8000cdb8 <_Unwind_Resume>
    800061f8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800061fc:	00090513          	mv	a0,s2
    80006200:	ffffd097          	auipc	ra,0xffffd
    80006204:	540080e7          	jalr	1344(ra) # 80003740 <_ZdlPv>
    80006208:	00048513          	mv	a0,s1
    8000620c:	00007097          	auipc	ra,0x7
    80006210:	bac080e7          	jalr	-1108(ra) # 8000cdb8 <_Unwind_Resume>
    80006214:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006218:	00090513          	mv	a0,s2
    8000621c:	ffffd097          	auipc	ra,0xffffd
    80006220:	524080e7          	jalr	1316(ra) # 80003740 <_ZdlPv>
    80006224:	00048513          	mv	a0,s1
    80006228:	00007097          	auipc	ra,0x7
    8000622c:	b90080e7          	jalr	-1136(ra) # 8000cdb8 <_Unwind_Resume>

0000000080006230 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    80006230:	fe010113          	addi	sp,sp,-32
    80006234:	00113c23          	sd	ra,24(sp)
    80006238:	00813823          	sd	s0,16(sp)
    8000623c:	00913423          	sd	s1,8(sp)
    80006240:	02010413          	addi	s0,sp,32
    80006244:	00050493          	mv	s1,a0
    putc('\n');
    80006248:	00a00513          	li	a0,10
    8000624c:	ffffb097          	auipc	ra,0xffffb
    80006250:	2ec080e7          	jalr	748(ra) # 80001538 <putc>
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80006254:	0104a783          	lw	a5,16(s1)
    80006258:	0144a703          	lw	a4,20(s1)
    8000625c:	00e78c63          	beq	a5,a4,80006274 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80006260:	0017879b          	addiw	a5,a5,1
    80006264:	0004a703          	lw	a4,0(s1)
    80006268:	02e7e7bb          	remw	a5,a5,a4
    8000626c:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80006270:	fe5ff06f          	j	80006254 <_ZN9BufferCPPD1Ev+0x24>
    }
    putc('!');
    80006274:	02100513          	li	a0,33
    80006278:	ffffb097          	auipc	ra,0xffffb
    8000627c:	2c0080e7          	jalr	704(ra) # 80001538 <putc>
    putc('\n');
    80006280:	00a00513          	li	a0,10
    80006284:	ffffb097          	auipc	ra,0xffffb
    80006288:	2b4080e7          	jalr	692(ra) # 80001538 <putc>

    mem_free(buffer);
    8000628c:	0084b503          	ld	a0,8(s1)
    80006290:	ffffb097          	auipc	ra,0xffffb
    80006294:	ff8080e7          	jalr	-8(ra) # 80001288 <mem_free>
    delete itemAvailable;
    80006298:	0204b503          	ld	a0,32(s1)
    8000629c:	00050863          	beqz	a0,800062ac <_ZN9BufferCPPD1Ev+0x7c>
    800062a0:	00053783          	ld	a5,0(a0)
    800062a4:	0087b783          	ld	a5,8(a5)
    800062a8:	000780e7          	jalr	a5
    delete spaceAvailable;
    800062ac:	0184b503          	ld	a0,24(s1)
    800062b0:	00050863          	beqz	a0,800062c0 <_ZN9BufferCPPD1Ev+0x90>
    800062b4:	00053783          	ld	a5,0(a0)
    800062b8:	0087b783          	ld	a5,8(a5)
    800062bc:	000780e7          	jalr	a5
    delete mutexTail;
    800062c0:	0304b503          	ld	a0,48(s1)
    800062c4:	00050863          	beqz	a0,800062d4 <_ZN9BufferCPPD1Ev+0xa4>
    800062c8:	00053783          	ld	a5,0(a0)
    800062cc:	0087b783          	ld	a5,8(a5)
    800062d0:	000780e7          	jalr	a5
    delete mutexHead;
    800062d4:	0284b503          	ld	a0,40(s1)
    800062d8:	00050863          	beqz	a0,800062e8 <_ZN9BufferCPPD1Ev+0xb8>
    800062dc:	00053783          	ld	a5,0(a0)
    800062e0:	0087b783          	ld	a5,8(a5)
    800062e4:	000780e7          	jalr	a5

}
    800062e8:	01813083          	ld	ra,24(sp)
    800062ec:	01013403          	ld	s0,16(sp)
    800062f0:	00813483          	ld	s1,8(sp)
    800062f4:	02010113          	addi	sp,sp,32
    800062f8:	00008067          	ret

00000000800062fc <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    800062fc:	fe010113          	addi	sp,sp,-32
    80006300:	00113c23          	sd	ra,24(sp)
    80006304:	00813823          	sd	s0,16(sp)
    80006308:	00913423          	sd	s1,8(sp)
    8000630c:	01213023          	sd	s2,0(sp)
    80006310:	02010413          	addi	s0,sp,32
    80006314:	00050493          	mv	s1,a0
    80006318:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000631c:	01853503          	ld	a0,24(a0)
    80006320:	ffffd097          	auipc	ra,0xffffd
    80006324:	60c080e7          	jalr	1548(ra) # 8000392c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006328:	0304b503          	ld	a0,48(s1)
    8000632c:	ffffd097          	auipc	ra,0xffffd
    80006330:	600080e7          	jalr	1536(ra) # 8000392c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006334:	0084b783          	ld	a5,8(s1)
    80006338:	0144a703          	lw	a4,20(s1)
    8000633c:	00271713          	slli	a4,a4,0x2
    80006340:	00e787b3          	add	a5,a5,a4
    80006344:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006348:	0144a783          	lw	a5,20(s1)
    8000634c:	0017879b          	addiw	a5,a5,1
    80006350:	0004a703          	lw	a4,0(s1)
    80006354:	02e7e7bb          	remw	a5,a5,a4
    80006358:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000635c:	0304b503          	ld	a0,48(s1)
    80006360:	ffffd097          	auipc	ra,0xffffd
    80006364:	650080e7          	jalr	1616(ra) # 800039b0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006368:	0204b503          	ld	a0,32(s1)
    8000636c:	ffffd097          	auipc	ra,0xffffd
    80006370:	644080e7          	jalr	1604(ra) # 800039b0 <_ZN9Semaphore6signalEv>

}
    80006374:	01813083          	ld	ra,24(sp)
    80006378:	01013403          	ld	s0,16(sp)
    8000637c:	00813483          	ld	s1,8(sp)
    80006380:	00013903          	ld	s2,0(sp)
    80006384:	02010113          	addi	sp,sp,32
    80006388:	00008067          	ret

000000008000638c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000638c:	fe010113          	addi	sp,sp,-32
    80006390:	00113c23          	sd	ra,24(sp)
    80006394:	00813823          	sd	s0,16(sp)
    80006398:	00913423          	sd	s1,8(sp)
    8000639c:	01213023          	sd	s2,0(sp)
    800063a0:	02010413          	addi	s0,sp,32
    800063a4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800063a8:	02053503          	ld	a0,32(a0)
    800063ac:	ffffd097          	auipc	ra,0xffffd
    800063b0:	580080e7          	jalr	1408(ra) # 8000392c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800063b4:	0284b503          	ld	a0,40(s1)
    800063b8:	ffffd097          	auipc	ra,0xffffd
    800063bc:	574080e7          	jalr	1396(ra) # 8000392c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800063c0:	0084b703          	ld	a4,8(s1)
    800063c4:	0104a783          	lw	a5,16(s1)
    800063c8:	00279693          	slli	a3,a5,0x2
    800063cc:	00d70733          	add	a4,a4,a3
    800063d0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800063d4:	0017879b          	addiw	a5,a5,1
    800063d8:	0004a703          	lw	a4,0(s1)
    800063dc:	02e7e7bb          	remw	a5,a5,a4
    800063e0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800063e4:	0284b503          	ld	a0,40(s1)
    800063e8:	ffffd097          	auipc	ra,0xffffd
    800063ec:	5c8080e7          	jalr	1480(ra) # 800039b0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800063f0:	0184b503          	ld	a0,24(s1)
    800063f4:	ffffd097          	auipc	ra,0xffffd
    800063f8:	5bc080e7          	jalr	1468(ra) # 800039b0 <_ZN9Semaphore6signalEv>

    return ret;
}
    800063fc:	00090513          	mv	a0,s2
    80006400:	01813083          	ld	ra,24(sp)
    80006404:	01013403          	ld	s0,16(sp)
    80006408:	00813483          	ld	s1,8(sp)
    8000640c:	00013903          	ld	s2,0(sp)
    80006410:	02010113          	addi	sp,sp,32
    80006414:	00008067          	ret

0000000080006418 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80006418:	ff010113          	addi	sp,sp,-16
    8000641c:	00113423          	sd	ra,8(sp)
    80006420:	00813023          	sd	s0,0(sp)
    80006424:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    80006428:	00000097          	auipc	ra,0x0
    8000642c:	0dc080e7          	jalr	220(ra) # 80006504 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80006430:	00813083          	ld	ra,8(sp)
    80006434:	00013403          	ld	s0,0(sp)
    80006438:	01010113          	addi	sp,sp,16
    8000643c:	00008067          	ret

0000000080006440 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80006440:	fe010113          	addi	sp,sp,-32
    80006444:	00113c23          	sd	ra,24(sp)
    80006448:	00813823          	sd	s0,16(sp)
    8000644c:	00913423          	sd	s1,8(sp)
    80006450:	01213023          	sd	s2,0(sp)
    80006454:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006458:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000645c:	00600493          	li	s1,6
    while (--i > 0) {
    80006460:	fff4849b          	addiw	s1,s1,-1
    80006464:	04905c63          	blez	s1,800064bc <_Z9sleepyRunPv+0x7c>

        printString("Hello ");
    80006468:	00003517          	auipc	a0,0x3
    8000646c:	0d850513          	addi	a0,a0,216 # 80009540 <_ZL6digits+0x18>
    80006470:	00000097          	auipc	ra,0x0
    80006474:	844080e7          	jalr	-1980(ra) # 80005cb4 <_Z11printStringPKc>
        printInt(sleep_time);
    80006478:	00000613          	li	a2,0
    8000647c:	00a00593          	li	a1,10
    80006480:	0009051b          	sext.w	a0,s2
    80006484:	00000097          	auipc	ra,0x0
    80006488:	9c8080e7          	jalr	-1592(ra) # 80005e4c <_Z8printIntiii>
        printString(" !\n");
    8000648c:	00003517          	auipc	a0,0x3
    80006490:	0bc50513          	addi	a0,a0,188 # 80009548 <_ZL6digits+0x20>
    80006494:	00000097          	auipc	ra,0x0
    80006498:	820080e7          	jalr	-2016(ra) # 80005cb4 <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000649c:	00090513          	mv	a0,s2
    800064a0:	ffffb097          	auipc	ra,0xffffb
    800064a4:	f98080e7          	jalr	-104(ra) # 80001438 <time_sleep>
        printString("woke...\n");
    800064a8:	00003517          	auipc	a0,0x3
    800064ac:	0a850513          	addi	a0,a0,168 # 80009550 <_ZL6digits+0x28>
    800064b0:	00000097          	auipc	ra,0x0
    800064b4:	804080e7          	jalr	-2044(ra) # 80005cb4 <_Z11printStringPKc>
    while (--i > 0) {
    800064b8:	fa9ff06f          	j	80006460 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800064bc:	00a00793          	li	a5,10
    800064c0:	02f95933          	divu	s2,s2,a5
    800064c4:	fff90913          	addi	s2,s2,-1
    800064c8:	00006797          	auipc	a5,0x6
    800064cc:	82078793          	addi	a5,a5,-2016 # 8000bce8 <finished>
    800064d0:	01278933          	add	s2,a5,s2
    800064d4:	00100793          	li	a5,1
    800064d8:	00f90023          	sb	a5,0(s2)
    printString("Finished...\n");
    800064dc:	00003517          	auipc	a0,0x3
    800064e0:	08450513          	addi	a0,a0,132 # 80009560 <_ZL6digits+0x38>
    800064e4:	fffff097          	auipc	ra,0xfffff
    800064e8:	7d0080e7          	jalr	2000(ra) # 80005cb4 <_Z11printStringPKc>
}
    800064ec:	01813083          	ld	ra,24(sp)
    800064f0:	01013403          	ld	s0,16(sp)
    800064f4:	00813483          	ld	s1,8(sp)
    800064f8:	00013903          	ld	s2,0(sp)
    800064fc:	02010113          	addi	sp,sp,32
    80006500:	00008067          	ret

0000000080006504 <_Z12testSleepingv>:

void testSleeping()
{
    80006504:	fc010113          	addi	sp,sp,-64
    80006508:	02113c23          	sd	ra,56(sp)
    8000650c:	02813823          	sd	s0,48(sp)
    80006510:	02913423          	sd	s1,40(sp)
    80006514:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006518:	00a00793          	li	a5,10
    8000651c:	fcf43823          	sd	a5,-48(s0)
    80006520:	01400793          	li	a5,20
    80006524:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006528:	00000493          	li	s1,0
    8000652c:	02c0006f          	j	80006558 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006530:	00349793          	slli	a5,s1,0x3
    80006534:	fd040613          	addi	a2,s0,-48
    80006538:	00f60633          	add	a2,a2,a5
    8000653c:	00000597          	auipc	a1,0x0
    80006540:	f0458593          	addi	a1,a1,-252 # 80006440 <_Z9sleepyRunPv>
    80006544:	fc040513          	addi	a0,s0,-64
    80006548:	00f50533          	add	a0,a0,a5
    8000654c:	ffffb097          	auipc	ra,0xffffb
    80006550:	d68080e7          	jalr	-664(ra) # 800012b4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006554:	0014849b          	addiw	s1,s1,1
    80006558:	00100793          	li	a5,1
    8000655c:	fc97dae3          	bge	a5,s1,80006530 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006560:	00005797          	auipc	a5,0x5
    80006564:	7887c783          	lbu	a5,1928(a5) # 8000bce8 <finished>
    80006568:	fe078ce3          	beqz	a5,80006560 <_Z12testSleepingv+0x5c>
    8000656c:	00005797          	auipc	a5,0x5
    80006570:	77d7c783          	lbu	a5,1917(a5) # 8000bce9 <finished+0x1>
    80006574:	fe0786e3          	beqz	a5,80006560 <_Z12testSleepingv+0x5c>
}
    80006578:	03813083          	ld	ra,56(sp)
    8000657c:	03013403          	ld	s0,48(sp)
    80006580:	02813483          	ld	s1,40(sp)
    80006584:	04010113          	addi	sp,sp,64
    80006588:	00008067          	ret

000000008000658c <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    8000658c:	fe010113          	addi	sp,sp,-32
    80006590:	00113c23          	sd	ra,24(sp)
    80006594:	00813823          	sd	s0,16(sp)
    80006598:	00913423          	sd	s1,8(sp)
    8000659c:	02010413          	addi	s0,sp,32
    800065a0:	00050493          	mv	s1,a0
    800065a4:	00b52023          	sw	a1,0(a0)
    800065a8:	00052823          	sw	zero,16(a0)
    800065ac:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800065b0:	00259513          	slli	a0,a1,0x2
    800065b4:	ffffb097          	auipc	ra,0xffffb
    800065b8:	ca4080e7          	jalr	-860(ra) # 80001258 <mem_alloc>
    800065bc:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800065c0:	00000593          	li	a1,0
    800065c4:	02048513          	addi	a0,s1,32
    800065c8:	ffffb097          	auipc	ra,0xffffb
    800065cc:	db4080e7          	jalr	-588(ra) # 8000137c <sem_open>
    sem_open(&spaceAvailable, cap);
    800065d0:	0004a583          	lw	a1,0(s1)
    800065d4:	01848513          	addi	a0,s1,24
    800065d8:	ffffb097          	auipc	ra,0xffffb
    800065dc:	da4080e7          	jalr	-604(ra) # 8000137c <sem_open>
    sem_open(&mutexHead, 1);
    800065e0:	00100593          	li	a1,1
    800065e4:	02848513          	addi	a0,s1,40
    800065e8:	ffffb097          	auipc	ra,0xffffb
    800065ec:	d94080e7          	jalr	-620(ra) # 8000137c <sem_open>
    sem_open(&mutexTail, 1);
    800065f0:	00100593          	li	a1,1
    800065f4:	03048513          	addi	a0,s1,48
    800065f8:	ffffb097          	auipc	ra,0xffffb
    800065fc:	d84080e7          	jalr	-636(ra) # 8000137c <sem_open>
}
    80006600:	01813083          	ld	ra,24(sp)
    80006604:	01013403          	ld	s0,16(sp)
    80006608:	00813483          	ld	s1,8(sp)
    8000660c:	02010113          	addi	sp,sp,32
    80006610:	00008067          	ret

0000000080006614 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    80006614:	fe010113          	addi	sp,sp,-32
    80006618:	00113c23          	sd	ra,24(sp)
    8000661c:	00813823          	sd	s0,16(sp)
    80006620:	00913423          	sd	s1,8(sp)
    80006624:	02010413          	addi	s0,sp,32
    80006628:	00050493          	mv	s1,a0
    putc('\n');
    8000662c:	00a00513          	li	a0,10
    80006630:	ffffb097          	auipc	ra,0xffffb
    80006634:	f08080e7          	jalr	-248(ra) # 80001538 <putc>
    //todo
    //placeholder
    printString("Buffer deleted!\n");
    80006638:	00003517          	auipc	a0,0x3
    8000663c:	f3850513          	addi	a0,a0,-200 # 80009570 <_ZL6digits+0x48>
    80006640:	fffff097          	auipc	ra,0xfffff
    80006644:	674080e7          	jalr	1652(ra) # 80005cb4 <_Z11printStringPKc>
    while (head != tail) {
    80006648:	0104a783          	lw	a5,16(s1)
    8000664c:	0144a703          	lw	a4,20(s1)
    80006650:	00e78c63          	beq	a5,a4,80006668 <_ZN6BufferD1Ev+0x54>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80006654:	0017879b          	addiw	a5,a5,1
    80006658:	0004a703          	lw	a4,0(s1)
    8000665c:	02e7e7bb          	remw	a5,a5,a4
    80006660:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80006664:	fe5ff06f          	j	80006648 <_ZN6BufferD1Ev+0x34>
    }
    putc('!');
    80006668:	02100513          	li	a0,33
    8000666c:	ffffb097          	auipc	ra,0xffffb
    80006670:	ecc080e7          	jalr	-308(ra) # 80001538 <putc>
    putc('\n');
    80006674:	00a00513          	li	a0,10
    80006678:	ffffb097          	auipc	ra,0xffffb
    8000667c:	ec0080e7          	jalr	-320(ra) # 80001538 <putc>

    mem_free(buffer);
    80006680:	0084b503          	ld	a0,8(s1)
    80006684:	ffffb097          	auipc	ra,0xffffb
    80006688:	c04080e7          	jalr	-1020(ra) # 80001288 <mem_free>
    sem_close(itemAvailable);
    8000668c:	0204b503          	ld	a0,32(s1)
    80006690:	ffffb097          	auipc	ra,0xffffb
    80006694:	d24080e7          	jalr	-732(ra) # 800013b4 <sem_close>
    sem_close(spaceAvailable);
    80006698:	0184b503          	ld	a0,24(s1)
    8000669c:	ffffb097          	auipc	ra,0xffffb
    800066a0:	d18080e7          	jalr	-744(ra) # 800013b4 <sem_close>
    sem_close(mutexTail);
    800066a4:	0304b503          	ld	a0,48(s1)
    800066a8:	ffffb097          	auipc	ra,0xffffb
    800066ac:	d0c080e7          	jalr	-756(ra) # 800013b4 <sem_close>
    sem_close(mutexHead);
    800066b0:	0284b503          	ld	a0,40(s1)
    800066b4:	ffffb097          	auipc	ra,0xffffb
    800066b8:	d00080e7          	jalr	-768(ra) # 800013b4 <sem_close>
}
    800066bc:	01813083          	ld	ra,24(sp)
    800066c0:	01013403          	ld	s0,16(sp)
    800066c4:	00813483          	ld	s1,8(sp)
    800066c8:	02010113          	addi	sp,sp,32
    800066cc:	00008067          	ret

00000000800066d0 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    800066d0:	fe010113          	addi	sp,sp,-32
    800066d4:	00113c23          	sd	ra,24(sp)
    800066d8:	00813823          	sd	s0,16(sp)
    800066dc:	00913423          	sd	s1,8(sp)
    800066e0:	01213023          	sd	s2,0(sp)
    800066e4:	02010413          	addi	s0,sp,32
    800066e8:	00050493          	mv	s1,a0
    800066ec:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800066f0:	01853503          	ld	a0,24(a0)
    800066f4:	ffffb097          	auipc	ra,0xffffb
    800066f8:	cec080e7          	jalr	-788(ra) # 800013e0 <sem_wait>

    sem_wait(mutexTail);
    800066fc:	0304b503          	ld	a0,48(s1)
    80006700:	ffffb097          	auipc	ra,0xffffb
    80006704:	ce0080e7          	jalr	-800(ra) # 800013e0 <sem_wait>
    buffer[tail] = val;
    80006708:	0084b783          	ld	a5,8(s1)
    8000670c:	0144a703          	lw	a4,20(s1)
    80006710:	00271713          	slli	a4,a4,0x2
    80006714:	00e787b3          	add	a5,a5,a4
    80006718:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000671c:	0144a783          	lw	a5,20(s1)
    80006720:	0017879b          	addiw	a5,a5,1
    80006724:	0004a703          	lw	a4,0(s1)
    80006728:	02e7e7bb          	remw	a5,a5,a4
    8000672c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006730:	0304b503          	ld	a0,48(s1)
    80006734:	ffffb097          	auipc	ra,0xffffb
    80006738:	cd8080e7          	jalr	-808(ra) # 8000140c <sem_signal>

    sem_signal(itemAvailable);
    8000673c:	0204b503          	ld	a0,32(s1)
    80006740:	ffffb097          	auipc	ra,0xffffb
    80006744:	ccc080e7          	jalr	-820(ra) # 8000140c <sem_signal>

}
    80006748:	01813083          	ld	ra,24(sp)
    8000674c:	01013403          	ld	s0,16(sp)
    80006750:	00813483          	ld	s1,8(sp)
    80006754:	00013903          	ld	s2,0(sp)
    80006758:	02010113          	addi	sp,sp,32
    8000675c:	00008067          	ret

0000000080006760 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006760:	fe010113          	addi	sp,sp,-32
    80006764:	00113c23          	sd	ra,24(sp)
    80006768:	00813823          	sd	s0,16(sp)
    8000676c:	00913423          	sd	s1,8(sp)
    80006770:	01213023          	sd	s2,0(sp)
    80006774:	02010413          	addi	s0,sp,32
    80006778:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000677c:	02053503          	ld	a0,32(a0)
    80006780:	ffffb097          	auipc	ra,0xffffb
    80006784:	c60080e7          	jalr	-928(ra) # 800013e0 <sem_wait>

    sem_wait(mutexHead);
    80006788:	0284b503          	ld	a0,40(s1)
    8000678c:	ffffb097          	auipc	ra,0xffffb
    80006790:	c54080e7          	jalr	-940(ra) # 800013e0 <sem_wait>

    int ret = buffer[head];
    80006794:	0084b703          	ld	a4,8(s1)
    80006798:	0104a783          	lw	a5,16(s1)
    8000679c:	00279693          	slli	a3,a5,0x2
    800067a0:	00d70733          	add	a4,a4,a3
    800067a4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800067a8:	0017879b          	addiw	a5,a5,1
    800067ac:	0004a703          	lw	a4,0(s1)
    800067b0:	02e7e7bb          	remw	a5,a5,a4
    800067b4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800067b8:	0284b503          	ld	a0,40(s1)
    800067bc:	ffffb097          	auipc	ra,0xffffb
    800067c0:	c50080e7          	jalr	-944(ra) # 8000140c <sem_signal>

    sem_signal(spaceAvailable);
    800067c4:	0184b503          	ld	a0,24(s1)
    800067c8:	ffffb097          	auipc	ra,0xffffb
    800067cc:	c44080e7          	jalr	-956(ra) # 8000140c <sem_signal>

    return ret;
}
    800067d0:	00090513          	mv	a0,s2
    800067d4:	01813083          	ld	ra,24(sp)
    800067d8:	01013403          	ld	s0,16(sp)
    800067dc:	00813483          	ld	s1,8(sp)
    800067e0:	00013903          	ld	s2,0(sp)
    800067e4:	02010113          	addi	sp,sp,32
    800067e8:	00008067          	ret

00000000800067ec <start>:
    800067ec:	ff010113          	addi	sp,sp,-16
    800067f0:	00813423          	sd	s0,8(sp)
    800067f4:	01010413          	addi	s0,sp,16
    800067f8:	300027f3          	csrr	a5,mstatus
    800067fc:	ffffe737          	lui	a4,0xffffe
    80006800:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff18af>
    80006804:	00e7f7b3          	and	a5,a5,a4
    80006808:	00001737          	lui	a4,0x1
    8000680c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006810:	00e7e7b3          	or	a5,a5,a4
    80006814:	30079073          	csrw	mstatus,a5
    80006818:	00000797          	auipc	a5,0x0
    8000681c:	16078793          	addi	a5,a5,352 # 80006978 <system_main>
    80006820:	34179073          	csrw	mepc,a5
    80006824:	00000793          	li	a5,0
    80006828:	18079073          	csrw	satp,a5
    8000682c:	000107b7          	lui	a5,0x10
    80006830:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006834:	30279073          	csrw	medeleg,a5
    80006838:	30379073          	csrw	mideleg,a5
    8000683c:	104027f3          	csrr	a5,sie
    80006840:	2227e793          	ori	a5,a5,546
    80006844:	10479073          	csrw	sie,a5
    80006848:	fff00793          	li	a5,-1
    8000684c:	00a7d793          	srli	a5,a5,0xa
    80006850:	3b079073          	csrw	pmpaddr0,a5
    80006854:	00f00793          	li	a5,15
    80006858:	3a079073          	csrw	pmpcfg0,a5
    8000685c:	f14027f3          	csrr	a5,mhartid
    80006860:	0200c737          	lui	a4,0x200c
    80006864:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006868:	0007869b          	sext.w	a3,a5
    8000686c:	00269713          	slli	a4,a3,0x2
    80006870:	000f4637          	lui	a2,0xf4
    80006874:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006878:	00d70733          	add	a4,a4,a3
    8000687c:	0037979b          	slliw	a5,a5,0x3
    80006880:	020046b7          	lui	a3,0x2004
    80006884:	00d787b3          	add	a5,a5,a3
    80006888:	00c585b3          	add	a1,a1,a2
    8000688c:	00371693          	slli	a3,a4,0x3
    80006890:	00005717          	auipc	a4,0x5
    80006894:	46070713          	addi	a4,a4,1120 # 8000bcf0 <timer_scratch>
    80006898:	00b7b023          	sd	a1,0(a5)
    8000689c:	00d70733          	add	a4,a4,a3
    800068a0:	00f73c23          	sd	a5,24(a4)
    800068a4:	02c73023          	sd	a2,32(a4)
    800068a8:	34071073          	csrw	mscratch,a4
    800068ac:	00000797          	auipc	a5,0x0
    800068b0:	6e478793          	addi	a5,a5,1764 # 80006f90 <timervec>
    800068b4:	30579073          	csrw	mtvec,a5
    800068b8:	300027f3          	csrr	a5,mstatus
    800068bc:	0087e793          	ori	a5,a5,8
    800068c0:	30079073          	csrw	mstatus,a5
    800068c4:	304027f3          	csrr	a5,mie
    800068c8:	0807e793          	ori	a5,a5,128
    800068cc:	30479073          	csrw	mie,a5
    800068d0:	f14027f3          	csrr	a5,mhartid
    800068d4:	0007879b          	sext.w	a5,a5
    800068d8:	00078213          	mv	tp,a5
    800068dc:	30200073          	mret
    800068e0:	00813403          	ld	s0,8(sp)
    800068e4:	01010113          	addi	sp,sp,16
    800068e8:	00008067          	ret

00000000800068ec <timerinit>:
    800068ec:	ff010113          	addi	sp,sp,-16
    800068f0:	00813423          	sd	s0,8(sp)
    800068f4:	01010413          	addi	s0,sp,16
    800068f8:	f14027f3          	csrr	a5,mhartid
    800068fc:	0200c737          	lui	a4,0x200c
    80006900:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006904:	0007869b          	sext.w	a3,a5
    80006908:	00269713          	slli	a4,a3,0x2
    8000690c:	000f4637          	lui	a2,0xf4
    80006910:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006914:	00d70733          	add	a4,a4,a3
    80006918:	0037979b          	slliw	a5,a5,0x3
    8000691c:	020046b7          	lui	a3,0x2004
    80006920:	00d787b3          	add	a5,a5,a3
    80006924:	00c585b3          	add	a1,a1,a2
    80006928:	00371693          	slli	a3,a4,0x3
    8000692c:	00005717          	auipc	a4,0x5
    80006930:	3c470713          	addi	a4,a4,964 # 8000bcf0 <timer_scratch>
    80006934:	00b7b023          	sd	a1,0(a5)
    80006938:	00d70733          	add	a4,a4,a3
    8000693c:	00f73c23          	sd	a5,24(a4)
    80006940:	02c73023          	sd	a2,32(a4)
    80006944:	34071073          	csrw	mscratch,a4
    80006948:	00000797          	auipc	a5,0x0
    8000694c:	64878793          	addi	a5,a5,1608 # 80006f90 <timervec>
    80006950:	30579073          	csrw	mtvec,a5
    80006954:	300027f3          	csrr	a5,mstatus
    80006958:	0087e793          	ori	a5,a5,8
    8000695c:	30079073          	csrw	mstatus,a5
    80006960:	304027f3          	csrr	a5,mie
    80006964:	0807e793          	ori	a5,a5,128
    80006968:	30479073          	csrw	mie,a5
    8000696c:	00813403          	ld	s0,8(sp)
    80006970:	01010113          	addi	sp,sp,16
    80006974:	00008067          	ret

0000000080006978 <system_main>:
    80006978:	fe010113          	addi	sp,sp,-32
    8000697c:	00813823          	sd	s0,16(sp)
    80006980:	00913423          	sd	s1,8(sp)
    80006984:	00113c23          	sd	ra,24(sp)
    80006988:	02010413          	addi	s0,sp,32
    8000698c:	00000097          	auipc	ra,0x0
    80006990:	0c4080e7          	jalr	196(ra) # 80006a50 <cpuid>
    80006994:	00005497          	auipc	s1,0x5
    80006998:	23c48493          	addi	s1,s1,572 # 8000bbd0 <started>
    8000699c:	02050263          	beqz	a0,800069c0 <system_main+0x48>
    800069a0:	0004a783          	lw	a5,0(s1)
    800069a4:	0007879b          	sext.w	a5,a5
    800069a8:	fe078ce3          	beqz	a5,800069a0 <system_main+0x28>
    800069ac:	0ff0000f          	fence
    800069b0:	00003517          	auipc	a0,0x3
    800069b4:	c0850513          	addi	a0,a0,-1016 # 800095b8 <_ZL6digits+0x90>
    800069b8:	00001097          	auipc	ra,0x1
    800069bc:	a74080e7          	jalr	-1420(ra) # 8000742c <panic>
    800069c0:	00001097          	auipc	ra,0x1
    800069c4:	9c8080e7          	jalr	-1592(ra) # 80007388 <consoleinit>
    800069c8:	00001097          	auipc	ra,0x1
    800069cc:	154080e7          	jalr	340(ra) # 80007b1c <printfinit>
    800069d0:	00002517          	auipc	a0,0x2
    800069d4:	73050513          	addi	a0,a0,1840 # 80009100 <CONSOLE_STATUS+0xf0>
    800069d8:	00001097          	auipc	ra,0x1
    800069dc:	ab0080e7          	jalr	-1360(ra) # 80007488 <__printf>
    800069e0:	00003517          	auipc	a0,0x3
    800069e4:	ba850513          	addi	a0,a0,-1112 # 80009588 <_ZL6digits+0x60>
    800069e8:	00001097          	auipc	ra,0x1
    800069ec:	aa0080e7          	jalr	-1376(ra) # 80007488 <__printf>
    800069f0:	00002517          	auipc	a0,0x2
    800069f4:	71050513          	addi	a0,a0,1808 # 80009100 <CONSOLE_STATUS+0xf0>
    800069f8:	00001097          	auipc	ra,0x1
    800069fc:	a90080e7          	jalr	-1392(ra) # 80007488 <__printf>
    80006a00:	00001097          	auipc	ra,0x1
    80006a04:	4a8080e7          	jalr	1192(ra) # 80007ea8 <kinit>
    80006a08:	00000097          	auipc	ra,0x0
    80006a0c:	148080e7          	jalr	328(ra) # 80006b50 <trapinit>
    80006a10:	00000097          	auipc	ra,0x0
    80006a14:	16c080e7          	jalr	364(ra) # 80006b7c <trapinithart>
    80006a18:	00000097          	auipc	ra,0x0
    80006a1c:	5b8080e7          	jalr	1464(ra) # 80006fd0 <plicinit>
    80006a20:	00000097          	auipc	ra,0x0
    80006a24:	5d8080e7          	jalr	1496(ra) # 80006ff8 <plicinithart>
    80006a28:	00000097          	auipc	ra,0x0
    80006a2c:	078080e7          	jalr	120(ra) # 80006aa0 <userinit>
    80006a30:	0ff0000f          	fence
    80006a34:	00100793          	li	a5,1
    80006a38:	00003517          	auipc	a0,0x3
    80006a3c:	b6850513          	addi	a0,a0,-1176 # 800095a0 <_ZL6digits+0x78>
    80006a40:	00f4a023          	sw	a5,0(s1)
    80006a44:	00001097          	auipc	ra,0x1
    80006a48:	a44080e7          	jalr	-1468(ra) # 80007488 <__printf>
    80006a4c:	0000006f          	j	80006a4c <system_main+0xd4>

0000000080006a50 <cpuid>:
    80006a50:	ff010113          	addi	sp,sp,-16
    80006a54:	00813423          	sd	s0,8(sp)
    80006a58:	01010413          	addi	s0,sp,16
    80006a5c:	00020513          	mv	a0,tp
    80006a60:	00813403          	ld	s0,8(sp)
    80006a64:	0005051b          	sext.w	a0,a0
    80006a68:	01010113          	addi	sp,sp,16
    80006a6c:	00008067          	ret

0000000080006a70 <mycpu>:
    80006a70:	ff010113          	addi	sp,sp,-16
    80006a74:	00813423          	sd	s0,8(sp)
    80006a78:	01010413          	addi	s0,sp,16
    80006a7c:	00020793          	mv	a5,tp
    80006a80:	00813403          	ld	s0,8(sp)
    80006a84:	0007879b          	sext.w	a5,a5
    80006a88:	00779793          	slli	a5,a5,0x7
    80006a8c:	00006517          	auipc	a0,0x6
    80006a90:	29450513          	addi	a0,a0,660 # 8000cd20 <cpus>
    80006a94:	00f50533          	add	a0,a0,a5
    80006a98:	01010113          	addi	sp,sp,16
    80006a9c:	00008067          	ret

0000000080006aa0 <userinit>:
    80006aa0:	ff010113          	addi	sp,sp,-16
    80006aa4:	00813423          	sd	s0,8(sp)
    80006aa8:	01010413          	addi	s0,sp,16
    80006aac:	00813403          	ld	s0,8(sp)
    80006ab0:	01010113          	addi	sp,sp,16
    80006ab4:	ffffd317          	auipc	t1,0xffffd
    80006ab8:	ba030067          	jr	-1120(t1) # 80003654 <main>

0000000080006abc <either_copyout>:
    80006abc:	ff010113          	addi	sp,sp,-16
    80006ac0:	00813023          	sd	s0,0(sp)
    80006ac4:	00113423          	sd	ra,8(sp)
    80006ac8:	01010413          	addi	s0,sp,16
    80006acc:	02051663          	bnez	a0,80006af8 <either_copyout+0x3c>
    80006ad0:	00058513          	mv	a0,a1
    80006ad4:	00060593          	mv	a1,a2
    80006ad8:	0006861b          	sext.w	a2,a3
    80006adc:	00002097          	auipc	ra,0x2
    80006ae0:	c58080e7          	jalr	-936(ra) # 80008734 <__memmove>
    80006ae4:	00813083          	ld	ra,8(sp)
    80006ae8:	00013403          	ld	s0,0(sp)
    80006aec:	00000513          	li	a0,0
    80006af0:	01010113          	addi	sp,sp,16
    80006af4:	00008067          	ret
    80006af8:	00003517          	auipc	a0,0x3
    80006afc:	ae850513          	addi	a0,a0,-1304 # 800095e0 <_ZL6digits+0xb8>
    80006b00:	00001097          	auipc	ra,0x1
    80006b04:	92c080e7          	jalr	-1748(ra) # 8000742c <panic>

0000000080006b08 <either_copyin>:
    80006b08:	ff010113          	addi	sp,sp,-16
    80006b0c:	00813023          	sd	s0,0(sp)
    80006b10:	00113423          	sd	ra,8(sp)
    80006b14:	01010413          	addi	s0,sp,16
    80006b18:	02059463          	bnez	a1,80006b40 <either_copyin+0x38>
    80006b1c:	00060593          	mv	a1,a2
    80006b20:	0006861b          	sext.w	a2,a3
    80006b24:	00002097          	auipc	ra,0x2
    80006b28:	c10080e7          	jalr	-1008(ra) # 80008734 <__memmove>
    80006b2c:	00813083          	ld	ra,8(sp)
    80006b30:	00013403          	ld	s0,0(sp)
    80006b34:	00000513          	li	a0,0
    80006b38:	01010113          	addi	sp,sp,16
    80006b3c:	00008067          	ret
    80006b40:	00003517          	auipc	a0,0x3
    80006b44:	ac850513          	addi	a0,a0,-1336 # 80009608 <_ZL6digits+0xe0>
    80006b48:	00001097          	auipc	ra,0x1
    80006b4c:	8e4080e7          	jalr	-1820(ra) # 8000742c <panic>

0000000080006b50 <trapinit>:
    80006b50:	ff010113          	addi	sp,sp,-16
    80006b54:	00813423          	sd	s0,8(sp)
    80006b58:	01010413          	addi	s0,sp,16
    80006b5c:	00813403          	ld	s0,8(sp)
    80006b60:	00003597          	auipc	a1,0x3
    80006b64:	ad058593          	addi	a1,a1,-1328 # 80009630 <_ZL6digits+0x108>
    80006b68:	00006517          	auipc	a0,0x6
    80006b6c:	23850513          	addi	a0,a0,568 # 8000cda0 <tickslock>
    80006b70:	01010113          	addi	sp,sp,16
    80006b74:	00001317          	auipc	t1,0x1
    80006b78:	5c430067          	jr	1476(t1) # 80008138 <initlock>

0000000080006b7c <trapinithart>:
    80006b7c:	ff010113          	addi	sp,sp,-16
    80006b80:	00813423          	sd	s0,8(sp)
    80006b84:	01010413          	addi	s0,sp,16
    80006b88:	00000797          	auipc	a5,0x0
    80006b8c:	2f878793          	addi	a5,a5,760 # 80006e80 <kernelvec>
    80006b90:	10579073          	csrw	stvec,a5
    80006b94:	00813403          	ld	s0,8(sp)
    80006b98:	01010113          	addi	sp,sp,16
    80006b9c:	00008067          	ret

0000000080006ba0 <usertrap>:
    80006ba0:	ff010113          	addi	sp,sp,-16
    80006ba4:	00813423          	sd	s0,8(sp)
    80006ba8:	01010413          	addi	s0,sp,16
    80006bac:	00813403          	ld	s0,8(sp)
    80006bb0:	01010113          	addi	sp,sp,16
    80006bb4:	00008067          	ret

0000000080006bb8 <usertrapret>:
    80006bb8:	ff010113          	addi	sp,sp,-16
    80006bbc:	00813423          	sd	s0,8(sp)
    80006bc0:	01010413          	addi	s0,sp,16
    80006bc4:	00813403          	ld	s0,8(sp)
    80006bc8:	01010113          	addi	sp,sp,16
    80006bcc:	00008067          	ret

0000000080006bd0 <kerneltrap>:
    80006bd0:	fe010113          	addi	sp,sp,-32
    80006bd4:	00813823          	sd	s0,16(sp)
    80006bd8:	00113c23          	sd	ra,24(sp)
    80006bdc:	00913423          	sd	s1,8(sp)
    80006be0:	02010413          	addi	s0,sp,32
    80006be4:	142025f3          	csrr	a1,scause
    80006be8:	100027f3          	csrr	a5,sstatus
    80006bec:	0027f793          	andi	a5,a5,2
    80006bf0:	10079c63          	bnez	a5,80006d08 <kerneltrap+0x138>
    80006bf4:	142027f3          	csrr	a5,scause
    80006bf8:	0207ce63          	bltz	a5,80006c34 <kerneltrap+0x64>
    80006bfc:	00003517          	auipc	a0,0x3
    80006c00:	a7c50513          	addi	a0,a0,-1412 # 80009678 <_ZL6digits+0x150>
    80006c04:	00001097          	auipc	ra,0x1
    80006c08:	884080e7          	jalr	-1916(ra) # 80007488 <__printf>
    80006c0c:	141025f3          	csrr	a1,sepc
    80006c10:	14302673          	csrr	a2,stval
    80006c14:	00003517          	auipc	a0,0x3
    80006c18:	a7450513          	addi	a0,a0,-1420 # 80009688 <_ZL6digits+0x160>
    80006c1c:	00001097          	auipc	ra,0x1
    80006c20:	86c080e7          	jalr	-1940(ra) # 80007488 <__printf>
    80006c24:	00003517          	auipc	a0,0x3
    80006c28:	a7c50513          	addi	a0,a0,-1412 # 800096a0 <_ZL6digits+0x178>
    80006c2c:	00001097          	auipc	ra,0x1
    80006c30:	800080e7          	jalr	-2048(ra) # 8000742c <panic>
    80006c34:	0ff7f713          	andi	a4,a5,255
    80006c38:	00900693          	li	a3,9
    80006c3c:	04d70063          	beq	a4,a3,80006c7c <kerneltrap+0xac>
    80006c40:	fff00713          	li	a4,-1
    80006c44:	03f71713          	slli	a4,a4,0x3f
    80006c48:	00170713          	addi	a4,a4,1
    80006c4c:	fae798e3          	bne	a5,a4,80006bfc <kerneltrap+0x2c>
    80006c50:	00000097          	auipc	ra,0x0
    80006c54:	e00080e7          	jalr	-512(ra) # 80006a50 <cpuid>
    80006c58:	06050663          	beqz	a0,80006cc4 <kerneltrap+0xf4>
    80006c5c:	144027f3          	csrr	a5,sip
    80006c60:	ffd7f793          	andi	a5,a5,-3
    80006c64:	14479073          	csrw	sip,a5
    80006c68:	01813083          	ld	ra,24(sp)
    80006c6c:	01013403          	ld	s0,16(sp)
    80006c70:	00813483          	ld	s1,8(sp)
    80006c74:	02010113          	addi	sp,sp,32
    80006c78:	00008067          	ret
    80006c7c:	00000097          	auipc	ra,0x0
    80006c80:	3c8080e7          	jalr	968(ra) # 80007044 <plic_claim>
    80006c84:	00a00793          	li	a5,10
    80006c88:	00050493          	mv	s1,a0
    80006c8c:	06f50863          	beq	a0,a5,80006cfc <kerneltrap+0x12c>
    80006c90:	fc050ce3          	beqz	a0,80006c68 <kerneltrap+0x98>
    80006c94:	00050593          	mv	a1,a0
    80006c98:	00003517          	auipc	a0,0x3
    80006c9c:	9c050513          	addi	a0,a0,-1600 # 80009658 <_ZL6digits+0x130>
    80006ca0:	00000097          	auipc	ra,0x0
    80006ca4:	7e8080e7          	jalr	2024(ra) # 80007488 <__printf>
    80006ca8:	01013403          	ld	s0,16(sp)
    80006cac:	01813083          	ld	ra,24(sp)
    80006cb0:	00048513          	mv	a0,s1
    80006cb4:	00813483          	ld	s1,8(sp)
    80006cb8:	02010113          	addi	sp,sp,32
    80006cbc:	00000317          	auipc	t1,0x0
    80006cc0:	3c030067          	jr	960(t1) # 8000707c <plic_complete>
    80006cc4:	00006517          	auipc	a0,0x6
    80006cc8:	0dc50513          	addi	a0,a0,220 # 8000cda0 <tickslock>
    80006ccc:	00001097          	auipc	ra,0x1
    80006cd0:	490080e7          	jalr	1168(ra) # 8000815c <acquire>
    80006cd4:	00005717          	auipc	a4,0x5
    80006cd8:	f0070713          	addi	a4,a4,-256 # 8000bbd4 <ticks>
    80006cdc:	00072783          	lw	a5,0(a4)
    80006ce0:	00006517          	auipc	a0,0x6
    80006ce4:	0c050513          	addi	a0,a0,192 # 8000cda0 <tickslock>
    80006ce8:	0017879b          	addiw	a5,a5,1
    80006cec:	00f72023          	sw	a5,0(a4)
    80006cf0:	00001097          	auipc	ra,0x1
    80006cf4:	538080e7          	jalr	1336(ra) # 80008228 <release>
    80006cf8:	f65ff06f          	j	80006c5c <kerneltrap+0x8c>
    80006cfc:	00001097          	auipc	ra,0x1
    80006d00:	094080e7          	jalr	148(ra) # 80007d90 <uartintr>
    80006d04:	fa5ff06f          	j	80006ca8 <kerneltrap+0xd8>
    80006d08:	00003517          	auipc	a0,0x3
    80006d0c:	93050513          	addi	a0,a0,-1744 # 80009638 <_ZL6digits+0x110>
    80006d10:	00000097          	auipc	ra,0x0
    80006d14:	71c080e7          	jalr	1820(ra) # 8000742c <panic>

0000000080006d18 <clockintr>:
    80006d18:	fe010113          	addi	sp,sp,-32
    80006d1c:	00813823          	sd	s0,16(sp)
    80006d20:	00913423          	sd	s1,8(sp)
    80006d24:	00113c23          	sd	ra,24(sp)
    80006d28:	02010413          	addi	s0,sp,32
    80006d2c:	00006497          	auipc	s1,0x6
    80006d30:	07448493          	addi	s1,s1,116 # 8000cda0 <tickslock>
    80006d34:	00048513          	mv	a0,s1
    80006d38:	00001097          	auipc	ra,0x1
    80006d3c:	424080e7          	jalr	1060(ra) # 8000815c <acquire>
    80006d40:	00005717          	auipc	a4,0x5
    80006d44:	e9470713          	addi	a4,a4,-364 # 8000bbd4 <ticks>
    80006d48:	00072783          	lw	a5,0(a4)
    80006d4c:	01013403          	ld	s0,16(sp)
    80006d50:	01813083          	ld	ra,24(sp)
    80006d54:	00048513          	mv	a0,s1
    80006d58:	0017879b          	addiw	a5,a5,1
    80006d5c:	00813483          	ld	s1,8(sp)
    80006d60:	00f72023          	sw	a5,0(a4)
    80006d64:	02010113          	addi	sp,sp,32
    80006d68:	00001317          	auipc	t1,0x1
    80006d6c:	4c030067          	jr	1216(t1) # 80008228 <release>

0000000080006d70 <devintr>:
    80006d70:	142027f3          	csrr	a5,scause
    80006d74:	00000513          	li	a0,0
    80006d78:	0007c463          	bltz	a5,80006d80 <devintr+0x10>
    80006d7c:	00008067          	ret
    80006d80:	fe010113          	addi	sp,sp,-32
    80006d84:	00813823          	sd	s0,16(sp)
    80006d88:	00113c23          	sd	ra,24(sp)
    80006d8c:	00913423          	sd	s1,8(sp)
    80006d90:	02010413          	addi	s0,sp,32
    80006d94:	0ff7f713          	andi	a4,a5,255
    80006d98:	00900693          	li	a3,9
    80006d9c:	04d70c63          	beq	a4,a3,80006df4 <devintr+0x84>
    80006da0:	fff00713          	li	a4,-1
    80006da4:	03f71713          	slli	a4,a4,0x3f
    80006da8:	00170713          	addi	a4,a4,1
    80006dac:	00e78c63          	beq	a5,a4,80006dc4 <devintr+0x54>
    80006db0:	01813083          	ld	ra,24(sp)
    80006db4:	01013403          	ld	s0,16(sp)
    80006db8:	00813483          	ld	s1,8(sp)
    80006dbc:	02010113          	addi	sp,sp,32
    80006dc0:	00008067          	ret
    80006dc4:	00000097          	auipc	ra,0x0
    80006dc8:	c8c080e7          	jalr	-884(ra) # 80006a50 <cpuid>
    80006dcc:	06050663          	beqz	a0,80006e38 <devintr+0xc8>
    80006dd0:	144027f3          	csrr	a5,sip
    80006dd4:	ffd7f793          	andi	a5,a5,-3
    80006dd8:	14479073          	csrw	sip,a5
    80006ddc:	01813083          	ld	ra,24(sp)
    80006de0:	01013403          	ld	s0,16(sp)
    80006de4:	00813483          	ld	s1,8(sp)
    80006de8:	00200513          	li	a0,2
    80006dec:	02010113          	addi	sp,sp,32
    80006df0:	00008067          	ret
    80006df4:	00000097          	auipc	ra,0x0
    80006df8:	250080e7          	jalr	592(ra) # 80007044 <plic_claim>
    80006dfc:	00a00793          	li	a5,10
    80006e00:	00050493          	mv	s1,a0
    80006e04:	06f50663          	beq	a0,a5,80006e70 <devintr+0x100>
    80006e08:	00100513          	li	a0,1
    80006e0c:	fa0482e3          	beqz	s1,80006db0 <devintr+0x40>
    80006e10:	00048593          	mv	a1,s1
    80006e14:	00003517          	auipc	a0,0x3
    80006e18:	84450513          	addi	a0,a0,-1980 # 80009658 <_ZL6digits+0x130>
    80006e1c:	00000097          	auipc	ra,0x0
    80006e20:	66c080e7          	jalr	1644(ra) # 80007488 <__printf>
    80006e24:	00048513          	mv	a0,s1
    80006e28:	00000097          	auipc	ra,0x0
    80006e2c:	254080e7          	jalr	596(ra) # 8000707c <plic_complete>
    80006e30:	00100513          	li	a0,1
    80006e34:	f7dff06f          	j	80006db0 <devintr+0x40>
    80006e38:	00006517          	auipc	a0,0x6
    80006e3c:	f6850513          	addi	a0,a0,-152 # 8000cda0 <tickslock>
    80006e40:	00001097          	auipc	ra,0x1
    80006e44:	31c080e7          	jalr	796(ra) # 8000815c <acquire>
    80006e48:	00005717          	auipc	a4,0x5
    80006e4c:	d8c70713          	addi	a4,a4,-628 # 8000bbd4 <ticks>
    80006e50:	00072783          	lw	a5,0(a4)
    80006e54:	00006517          	auipc	a0,0x6
    80006e58:	f4c50513          	addi	a0,a0,-180 # 8000cda0 <tickslock>
    80006e5c:	0017879b          	addiw	a5,a5,1
    80006e60:	00f72023          	sw	a5,0(a4)
    80006e64:	00001097          	auipc	ra,0x1
    80006e68:	3c4080e7          	jalr	964(ra) # 80008228 <release>
    80006e6c:	f65ff06f          	j	80006dd0 <devintr+0x60>
    80006e70:	00001097          	auipc	ra,0x1
    80006e74:	f20080e7          	jalr	-224(ra) # 80007d90 <uartintr>
    80006e78:	fadff06f          	j	80006e24 <devintr+0xb4>
    80006e7c:	0000                	unimp
	...

0000000080006e80 <kernelvec>:
    80006e80:	f0010113          	addi	sp,sp,-256
    80006e84:	00113023          	sd	ra,0(sp)
    80006e88:	00213423          	sd	sp,8(sp)
    80006e8c:	00313823          	sd	gp,16(sp)
    80006e90:	00413c23          	sd	tp,24(sp)
    80006e94:	02513023          	sd	t0,32(sp)
    80006e98:	02613423          	sd	t1,40(sp)
    80006e9c:	02713823          	sd	t2,48(sp)
    80006ea0:	02813c23          	sd	s0,56(sp)
    80006ea4:	04913023          	sd	s1,64(sp)
    80006ea8:	04a13423          	sd	a0,72(sp)
    80006eac:	04b13823          	sd	a1,80(sp)
    80006eb0:	04c13c23          	sd	a2,88(sp)
    80006eb4:	06d13023          	sd	a3,96(sp)
    80006eb8:	06e13423          	sd	a4,104(sp)
    80006ebc:	06f13823          	sd	a5,112(sp)
    80006ec0:	07013c23          	sd	a6,120(sp)
    80006ec4:	09113023          	sd	a7,128(sp)
    80006ec8:	09213423          	sd	s2,136(sp)
    80006ecc:	09313823          	sd	s3,144(sp)
    80006ed0:	09413c23          	sd	s4,152(sp)
    80006ed4:	0b513023          	sd	s5,160(sp)
    80006ed8:	0b613423          	sd	s6,168(sp)
    80006edc:	0b713823          	sd	s7,176(sp)
    80006ee0:	0b813c23          	sd	s8,184(sp)
    80006ee4:	0d913023          	sd	s9,192(sp)
    80006ee8:	0da13423          	sd	s10,200(sp)
    80006eec:	0db13823          	sd	s11,208(sp)
    80006ef0:	0dc13c23          	sd	t3,216(sp)
    80006ef4:	0fd13023          	sd	t4,224(sp)
    80006ef8:	0fe13423          	sd	t5,232(sp)
    80006efc:	0ff13823          	sd	t6,240(sp)
    80006f00:	cd1ff0ef          	jal	ra,80006bd0 <kerneltrap>
    80006f04:	00013083          	ld	ra,0(sp)
    80006f08:	00813103          	ld	sp,8(sp)
    80006f0c:	01013183          	ld	gp,16(sp)
    80006f10:	02013283          	ld	t0,32(sp)
    80006f14:	02813303          	ld	t1,40(sp)
    80006f18:	03013383          	ld	t2,48(sp)
    80006f1c:	03813403          	ld	s0,56(sp)
    80006f20:	04013483          	ld	s1,64(sp)
    80006f24:	04813503          	ld	a0,72(sp)
    80006f28:	05013583          	ld	a1,80(sp)
    80006f2c:	05813603          	ld	a2,88(sp)
    80006f30:	06013683          	ld	a3,96(sp)
    80006f34:	06813703          	ld	a4,104(sp)
    80006f38:	07013783          	ld	a5,112(sp)
    80006f3c:	07813803          	ld	a6,120(sp)
    80006f40:	08013883          	ld	a7,128(sp)
    80006f44:	08813903          	ld	s2,136(sp)
    80006f48:	09013983          	ld	s3,144(sp)
    80006f4c:	09813a03          	ld	s4,152(sp)
    80006f50:	0a013a83          	ld	s5,160(sp)
    80006f54:	0a813b03          	ld	s6,168(sp)
    80006f58:	0b013b83          	ld	s7,176(sp)
    80006f5c:	0b813c03          	ld	s8,184(sp)
    80006f60:	0c013c83          	ld	s9,192(sp)
    80006f64:	0c813d03          	ld	s10,200(sp)
    80006f68:	0d013d83          	ld	s11,208(sp)
    80006f6c:	0d813e03          	ld	t3,216(sp)
    80006f70:	0e013e83          	ld	t4,224(sp)
    80006f74:	0e813f03          	ld	t5,232(sp)
    80006f78:	0f013f83          	ld	t6,240(sp)
    80006f7c:	10010113          	addi	sp,sp,256
    80006f80:	10200073          	sret
    80006f84:	00000013          	nop
    80006f88:	00000013          	nop
    80006f8c:	00000013          	nop

0000000080006f90 <timervec>:
    80006f90:	34051573          	csrrw	a0,mscratch,a0
    80006f94:	00b53023          	sd	a1,0(a0)
    80006f98:	00c53423          	sd	a2,8(a0)
    80006f9c:	00d53823          	sd	a3,16(a0)
    80006fa0:	01853583          	ld	a1,24(a0)
    80006fa4:	02053603          	ld	a2,32(a0)
    80006fa8:	0005b683          	ld	a3,0(a1)
    80006fac:	00c686b3          	add	a3,a3,a2
    80006fb0:	00d5b023          	sd	a3,0(a1)
    80006fb4:	00200593          	li	a1,2
    80006fb8:	14459073          	csrw	sip,a1
    80006fbc:	01053683          	ld	a3,16(a0)
    80006fc0:	00853603          	ld	a2,8(a0)
    80006fc4:	00053583          	ld	a1,0(a0)
    80006fc8:	34051573          	csrrw	a0,mscratch,a0
    80006fcc:	30200073          	mret

0000000080006fd0 <plicinit>:
    80006fd0:	ff010113          	addi	sp,sp,-16
    80006fd4:	00813423          	sd	s0,8(sp)
    80006fd8:	01010413          	addi	s0,sp,16
    80006fdc:	00813403          	ld	s0,8(sp)
    80006fe0:	0c0007b7          	lui	a5,0xc000
    80006fe4:	00100713          	li	a4,1
    80006fe8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006fec:	00e7a223          	sw	a4,4(a5)
    80006ff0:	01010113          	addi	sp,sp,16
    80006ff4:	00008067          	ret

0000000080006ff8 <plicinithart>:
    80006ff8:	ff010113          	addi	sp,sp,-16
    80006ffc:	00813023          	sd	s0,0(sp)
    80007000:	00113423          	sd	ra,8(sp)
    80007004:	01010413          	addi	s0,sp,16
    80007008:	00000097          	auipc	ra,0x0
    8000700c:	a48080e7          	jalr	-1464(ra) # 80006a50 <cpuid>
    80007010:	0085171b          	slliw	a4,a0,0x8
    80007014:	0c0027b7          	lui	a5,0xc002
    80007018:	00e787b3          	add	a5,a5,a4
    8000701c:	40200713          	li	a4,1026
    80007020:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007024:	00813083          	ld	ra,8(sp)
    80007028:	00013403          	ld	s0,0(sp)
    8000702c:	00d5151b          	slliw	a0,a0,0xd
    80007030:	0c2017b7          	lui	a5,0xc201
    80007034:	00a78533          	add	a0,a5,a0
    80007038:	00052023          	sw	zero,0(a0)
    8000703c:	01010113          	addi	sp,sp,16
    80007040:	00008067          	ret

0000000080007044 <plic_claim>:
    80007044:	ff010113          	addi	sp,sp,-16
    80007048:	00813023          	sd	s0,0(sp)
    8000704c:	00113423          	sd	ra,8(sp)
    80007050:	01010413          	addi	s0,sp,16
    80007054:	00000097          	auipc	ra,0x0
    80007058:	9fc080e7          	jalr	-1540(ra) # 80006a50 <cpuid>
    8000705c:	00813083          	ld	ra,8(sp)
    80007060:	00013403          	ld	s0,0(sp)
    80007064:	00d5151b          	slliw	a0,a0,0xd
    80007068:	0c2017b7          	lui	a5,0xc201
    8000706c:	00a78533          	add	a0,a5,a0
    80007070:	00452503          	lw	a0,4(a0)
    80007074:	01010113          	addi	sp,sp,16
    80007078:	00008067          	ret

000000008000707c <plic_complete>:
    8000707c:	fe010113          	addi	sp,sp,-32
    80007080:	00813823          	sd	s0,16(sp)
    80007084:	00913423          	sd	s1,8(sp)
    80007088:	00113c23          	sd	ra,24(sp)
    8000708c:	02010413          	addi	s0,sp,32
    80007090:	00050493          	mv	s1,a0
    80007094:	00000097          	auipc	ra,0x0
    80007098:	9bc080e7          	jalr	-1604(ra) # 80006a50 <cpuid>
    8000709c:	01813083          	ld	ra,24(sp)
    800070a0:	01013403          	ld	s0,16(sp)
    800070a4:	00d5179b          	slliw	a5,a0,0xd
    800070a8:	0c201737          	lui	a4,0xc201
    800070ac:	00f707b3          	add	a5,a4,a5
    800070b0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800070b4:	00813483          	ld	s1,8(sp)
    800070b8:	02010113          	addi	sp,sp,32
    800070bc:	00008067          	ret

00000000800070c0 <consolewrite>:
    800070c0:	fb010113          	addi	sp,sp,-80
    800070c4:	04813023          	sd	s0,64(sp)
    800070c8:	04113423          	sd	ra,72(sp)
    800070cc:	02913c23          	sd	s1,56(sp)
    800070d0:	03213823          	sd	s2,48(sp)
    800070d4:	03313423          	sd	s3,40(sp)
    800070d8:	03413023          	sd	s4,32(sp)
    800070dc:	01513c23          	sd	s5,24(sp)
    800070e0:	05010413          	addi	s0,sp,80
    800070e4:	06c05c63          	blez	a2,8000715c <consolewrite+0x9c>
    800070e8:	00060993          	mv	s3,a2
    800070ec:	00050a13          	mv	s4,a0
    800070f0:	00058493          	mv	s1,a1
    800070f4:	00000913          	li	s2,0
    800070f8:	fff00a93          	li	s5,-1
    800070fc:	01c0006f          	j	80007118 <consolewrite+0x58>
    80007100:	fbf44503          	lbu	a0,-65(s0)
    80007104:	0019091b          	addiw	s2,s2,1
    80007108:	00148493          	addi	s1,s1,1
    8000710c:	00001097          	auipc	ra,0x1
    80007110:	a9c080e7          	jalr	-1380(ra) # 80007ba8 <uartputc>
    80007114:	03298063          	beq	s3,s2,80007134 <consolewrite+0x74>
    80007118:	00048613          	mv	a2,s1
    8000711c:	00100693          	li	a3,1
    80007120:	000a0593          	mv	a1,s4
    80007124:	fbf40513          	addi	a0,s0,-65
    80007128:	00000097          	auipc	ra,0x0
    8000712c:	9e0080e7          	jalr	-1568(ra) # 80006b08 <either_copyin>
    80007130:	fd5518e3          	bne	a0,s5,80007100 <consolewrite+0x40>
    80007134:	04813083          	ld	ra,72(sp)
    80007138:	04013403          	ld	s0,64(sp)
    8000713c:	03813483          	ld	s1,56(sp)
    80007140:	02813983          	ld	s3,40(sp)
    80007144:	02013a03          	ld	s4,32(sp)
    80007148:	01813a83          	ld	s5,24(sp)
    8000714c:	00090513          	mv	a0,s2
    80007150:	03013903          	ld	s2,48(sp)
    80007154:	05010113          	addi	sp,sp,80
    80007158:	00008067          	ret
    8000715c:	00000913          	li	s2,0
    80007160:	fd5ff06f          	j	80007134 <consolewrite+0x74>

0000000080007164 <consoleread>:
    80007164:	f9010113          	addi	sp,sp,-112
    80007168:	06813023          	sd	s0,96(sp)
    8000716c:	04913c23          	sd	s1,88(sp)
    80007170:	05213823          	sd	s2,80(sp)
    80007174:	05313423          	sd	s3,72(sp)
    80007178:	05413023          	sd	s4,64(sp)
    8000717c:	03513c23          	sd	s5,56(sp)
    80007180:	03613823          	sd	s6,48(sp)
    80007184:	03713423          	sd	s7,40(sp)
    80007188:	03813023          	sd	s8,32(sp)
    8000718c:	06113423          	sd	ra,104(sp)
    80007190:	01913c23          	sd	s9,24(sp)
    80007194:	07010413          	addi	s0,sp,112
    80007198:	00060b93          	mv	s7,a2
    8000719c:	00050913          	mv	s2,a0
    800071a0:	00058c13          	mv	s8,a1
    800071a4:	00060b1b          	sext.w	s6,a2
    800071a8:	00006497          	auipc	s1,0x6
    800071ac:	c2048493          	addi	s1,s1,-992 # 8000cdc8 <cons>
    800071b0:	00400993          	li	s3,4
    800071b4:	fff00a13          	li	s4,-1
    800071b8:	00a00a93          	li	s5,10
    800071bc:	05705e63          	blez	s7,80007218 <consoleread+0xb4>
    800071c0:	09c4a703          	lw	a4,156(s1)
    800071c4:	0984a783          	lw	a5,152(s1)
    800071c8:	0007071b          	sext.w	a4,a4
    800071cc:	08e78463          	beq	a5,a4,80007254 <consoleread+0xf0>
    800071d0:	07f7f713          	andi	a4,a5,127
    800071d4:	00e48733          	add	a4,s1,a4
    800071d8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800071dc:	0017869b          	addiw	a3,a5,1
    800071e0:	08d4ac23          	sw	a3,152(s1)
    800071e4:	00070c9b          	sext.w	s9,a4
    800071e8:	0b370663          	beq	a4,s3,80007294 <consoleread+0x130>
    800071ec:	00100693          	li	a3,1
    800071f0:	f9f40613          	addi	a2,s0,-97
    800071f4:	000c0593          	mv	a1,s8
    800071f8:	00090513          	mv	a0,s2
    800071fc:	f8e40fa3          	sb	a4,-97(s0)
    80007200:	00000097          	auipc	ra,0x0
    80007204:	8bc080e7          	jalr	-1860(ra) # 80006abc <either_copyout>
    80007208:	01450863          	beq	a0,s4,80007218 <consoleread+0xb4>
    8000720c:	001c0c13          	addi	s8,s8,1
    80007210:	fffb8b9b          	addiw	s7,s7,-1
    80007214:	fb5c94e3          	bne	s9,s5,800071bc <consoleread+0x58>
    80007218:	000b851b          	sext.w	a0,s7
    8000721c:	06813083          	ld	ra,104(sp)
    80007220:	06013403          	ld	s0,96(sp)
    80007224:	05813483          	ld	s1,88(sp)
    80007228:	05013903          	ld	s2,80(sp)
    8000722c:	04813983          	ld	s3,72(sp)
    80007230:	04013a03          	ld	s4,64(sp)
    80007234:	03813a83          	ld	s5,56(sp)
    80007238:	02813b83          	ld	s7,40(sp)
    8000723c:	02013c03          	ld	s8,32(sp)
    80007240:	01813c83          	ld	s9,24(sp)
    80007244:	40ab053b          	subw	a0,s6,a0
    80007248:	03013b03          	ld	s6,48(sp)
    8000724c:	07010113          	addi	sp,sp,112
    80007250:	00008067          	ret
    80007254:	00001097          	auipc	ra,0x1
    80007258:	1d8080e7          	jalr	472(ra) # 8000842c <push_on>
    8000725c:	0984a703          	lw	a4,152(s1)
    80007260:	09c4a783          	lw	a5,156(s1)
    80007264:	0007879b          	sext.w	a5,a5
    80007268:	fef70ce3          	beq	a4,a5,80007260 <consoleread+0xfc>
    8000726c:	00001097          	auipc	ra,0x1
    80007270:	234080e7          	jalr	564(ra) # 800084a0 <pop_on>
    80007274:	0984a783          	lw	a5,152(s1)
    80007278:	07f7f713          	andi	a4,a5,127
    8000727c:	00e48733          	add	a4,s1,a4
    80007280:	01874703          	lbu	a4,24(a4)
    80007284:	0017869b          	addiw	a3,a5,1
    80007288:	08d4ac23          	sw	a3,152(s1)
    8000728c:	00070c9b          	sext.w	s9,a4
    80007290:	f5371ee3          	bne	a4,s3,800071ec <consoleread+0x88>
    80007294:	000b851b          	sext.w	a0,s7
    80007298:	f96bf2e3          	bgeu	s7,s6,8000721c <consoleread+0xb8>
    8000729c:	08f4ac23          	sw	a5,152(s1)
    800072a0:	f7dff06f          	j	8000721c <consoleread+0xb8>

00000000800072a4 <consputc>:
    800072a4:	10000793          	li	a5,256
    800072a8:	00f50663          	beq	a0,a5,800072b4 <consputc+0x10>
    800072ac:	00001317          	auipc	t1,0x1
    800072b0:	9f430067          	jr	-1548(t1) # 80007ca0 <uartputc_sync>
    800072b4:	ff010113          	addi	sp,sp,-16
    800072b8:	00113423          	sd	ra,8(sp)
    800072bc:	00813023          	sd	s0,0(sp)
    800072c0:	01010413          	addi	s0,sp,16
    800072c4:	00800513          	li	a0,8
    800072c8:	00001097          	auipc	ra,0x1
    800072cc:	9d8080e7          	jalr	-1576(ra) # 80007ca0 <uartputc_sync>
    800072d0:	02000513          	li	a0,32
    800072d4:	00001097          	auipc	ra,0x1
    800072d8:	9cc080e7          	jalr	-1588(ra) # 80007ca0 <uartputc_sync>
    800072dc:	00013403          	ld	s0,0(sp)
    800072e0:	00813083          	ld	ra,8(sp)
    800072e4:	00800513          	li	a0,8
    800072e8:	01010113          	addi	sp,sp,16
    800072ec:	00001317          	auipc	t1,0x1
    800072f0:	9b430067          	jr	-1612(t1) # 80007ca0 <uartputc_sync>

00000000800072f4 <consoleintr>:
    800072f4:	fe010113          	addi	sp,sp,-32
    800072f8:	00813823          	sd	s0,16(sp)
    800072fc:	00913423          	sd	s1,8(sp)
    80007300:	01213023          	sd	s2,0(sp)
    80007304:	00113c23          	sd	ra,24(sp)
    80007308:	02010413          	addi	s0,sp,32
    8000730c:	00006917          	auipc	s2,0x6
    80007310:	abc90913          	addi	s2,s2,-1348 # 8000cdc8 <cons>
    80007314:	00050493          	mv	s1,a0
    80007318:	00090513          	mv	a0,s2
    8000731c:	00001097          	auipc	ra,0x1
    80007320:	e40080e7          	jalr	-448(ra) # 8000815c <acquire>
    80007324:	02048c63          	beqz	s1,8000735c <consoleintr+0x68>
    80007328:	0a092783          	lw	a5,160(s2)
    8000732c:	09892703          	lw	a4,152(s2)
    80007330:	07f00693          	li	a3,127
    80007334:	40e7873b          	subw	a4,a5,a4
    80007338:	02e6e263          	bltu	a3,a4,8000735c <consoleintr+0x68>
    8000733c:	00d00713          	li	a4,13
    80007340:	04e48063          	beq	s1,a4,80007380 <consoleintr+0x8c>
    80007344:	07f7f713          	andi	a4,a5,127
    80007348:	00e90733          	add	a4,s2,a4
    8000734c:	0017879b          	addiw	a5,a5,1
    80007350:	0af92023          	sw	a5,160(s2)
    80007354:	00970c23          	sb	s1,24(a4)
    80007358:	08f92e23          	sw	a5,156(s2)
    8000735c:	01013403          	ld	s0,16(sp)
    80007360:	01813083          	ld	ra,24(sp)
    80007364:	00813483          	ld	s1,8(sp)
    80007368:	00013903          	ld	s2,0(sp)
    8000736c:	00006517          	auipc	a0,0x6
    80007370:	a5c50513          	addi	a0,a0,-1444 # 8000cdc8 <cons>
    80007374:	02010113          	addi	sp,sp,32
    80007378:	00001317          	auipc	t1,0x1
    8000737c:	eb030067          	jr	-336(t1) # 80008228 <release>
    80007380:	00a00493          	li	s1,10
    80007384:	fc1ff06f          	j	80007344 <consoleintr+0x50>

0000000080007388 <consoleinit>:
    80007388:	fe010113          	addi	sp,sp,-32
    8000738c:	00113c23          	sd	ra,24(sp)
    80007390:	00813823          	sd	s0,16(sp)
    80007394:	00913423          	sd	s1,8(sp)
    80007398:	02010413          	addi	s0,sp,32
    8000739c:	00006497          	auipc	s1,0x6
    800073a0:	a2c48493          	addi	s1,s1,-1492 # 8000cdc8 <cons>
    800073a4:	00048513          	mv	a0,s1
    800073a8:	00002597          	auipc	a1,0x2
    800073ac:	30858593          	addi	a1,a1,776 # 800096b0 <_ZL6digits+0x188>
    800073b0:	00001097          	auipc	ra,0x1
    800073b4:	d88080e7          	jalr	-632(ra) # 80008138 <initlock>
    800073b8:	00000097          	auipc	ra,0x0
    800073bc:	7ac080e7          	jalr	1964(ra) # 80007b64 <uartinit>
    800073c0:	01813083          	ld	ra,24(sp)
    800073c4:	01013403          	ld	s0,16(sp)
    800073c8:	00000797          	auipc	a5,0x0
    800073cc:	d9c78793          	addi	a5,a5,-612 # 80007164 <consoleread>
    800073d0:	0af4bc23          	sd	a5,184(s1)
    800073d4:	00000797          	auipc	a5,0x0
    800073d8:	cec78793          	addi	a5,a5,-788 # 800070c0 <consolewrite>
    800073dc:	0cf4b023          	sd	a5,192(s1)
    800073e0:	00813483          	ld	s1,8(sp)
    800073e4:	02010113          	addi	sp,sp,32
    800073e8:	00008067          	ret

00000000800073ec <console_read>:
    800073ec:	ff010113          	addi	sp,sp,-16
    800073f0:	00813423          	sd	s0,8(sp)
    800073f4:	01010413          	addi	s0,sp,16
    800073f8:	00813403          	ld	s0,8(sp)
    800073fc:	00006317          	auipc	t1,0x6
    80007400:	a8433303          	ld	t1,-1404(t1) # 8000ce80 <devsw+0x10>
    80007404:	01010113          	addi	sp,sp,16
    80007408:	00030067          	jr	t1

000000008000740c <console_write>:
    8000740c:	ff010113          	addi	sp,sp,-16
    80007410:	00813423          	sd	s0,8(sp)
    80007414:	01010413          	addi	s0,sp,16
    80007418:	00813403          	ld	s0,8(sp)
    8000741c:	00006317          	auipc	t1,0x6
    80007420:	a6c33303          	ld	t1,-1428(t1) # 8000ce88 <devsw+0x18>
    80007424:	01010113          	addi	sp,sp,16
    80007428:	00030067          	jr	t1

000000008000742c <panic>:
    8000742c:	fe010113          	addi	sp,sp,-32
    80007430:	00113c23          	sd	ra,24(sp)
    80007434:	00813823          	sd	s0,16(sp)
    80007438:	00913423          	sd	s1,8(sp)
    8000743c:	02010413          	addi	s0,sp,32
    80007440:	00050493          	mv	s1,a0
    80007444:	00002517          	auipc	a0,0x2
    80007448:	27450513          	addi	a0,a0,628 # 800096b8 <_ZL6digits+0x190>
    8000744c:	00006797          	auipc	a5,0x6
    80007450:	ac07ae23          	sw	zero,-1316(a5) # 8000cf28 <pr+0x18>
    80007454:	00000097          	auipc	ra,0x0
    80007458:	034080e7          	jalr	52(ra) # 80007488 <__printf>
    8000745c:	00048513          	mv	a0,s1
    80007460:	00000097          	auipc	ra,0x0
    80007464:	028080e7          	jalr	40(ra) # 80007488 <__printf>
    80007468:	00002517          	auipc	a0,0x2
    8000746c:	c9850513          	addi	a0,a0,-872 # 80009100 <CONSOLE_STATUS+0xf0>
    80007470:	00000097          	auipc	ra,0x0
    80007474:	018080e7          	jalr	24(ra) # 80007488 <__printf>
    80007478:	00100793          	li	a5,1
    8000747c:	00004717          	auipc	a4,0x4
    80007480:	74f72e23          	sw	a5,1884(a4) # 8000bbd8 <panicked>
    80007484:	0000006f          	j	80007484 <panic+0x58>

0000000080007488 <__printf>:
    80007488:	f3010113          	addi	sp,sp,-208
    8000748c:	08813023          	sd	s0,128(sp)
    80007490:	07313423          	sd	s3,104(sp)
    80007494:	09010413          	addi	s0,sp,144
    80007498:	05813023          	sd	s8,64(sp)
    8000749c:	08113423          	sd	ra,136(sp)
    800074a0:	06913c23          	sd	s1,120(sp)
    800074a4:	07213823          	sd	s2,112(sp)
    800074a8:	07413023          	sd	s4,96(sp)
    800074ac:	05513c23          	sd	s5,88(sp)
    800074b0:	05613823          	sd	s6,80(sp)
    800074b4:	05713423          	sd	s7,72(sp)
    800074b8:	03913c23          	sd	s9,56(sp)
    800074bc:	03a13823          	sd	s10,48(sp)
    800074c0:	03b13423          	sd	s11,40(sp)
    800074c4:	00006317          	auipc	t1,0x6
    800074c8:	a4c30313          	addi	t1,t1,-1460 # 8000cf10 <pr>
    800074cc:	01832c03          	lw	s8,24(t1)
    800074d0:	00b43423          	sd	a1,8(s0)
    800074d4:	00c43823          	sd	a2,16(s0)
    800074d8:	00d43c23          	sd	a3,24(s0)
    800074dc:	02e43023          	sd	a4,32(s0)
    800074e0:	02f43423          	sd	a5,40(s0)
    800074e4:	03043823          	sd	a6,48(s0)
    800074e8:	03143c23          	sd	a7,56(s0)
    800074ec:	00050993          	mv	s3,a0
    800074f0:	4a0c1663          	bnez	s8,8000799c <__printf+0x514>
    800074f4:	60098c63          	beqz	s3,80007b0c <__printf+0x684>
    800074f8:	0009c503          	lbu	a0,0(s3)
    800074fc:	00840793          	addi	a5,s0,8
    80007500:	f6f43c23          	sd	a5,-136(s0)
    80007504:	00000493          	li	s1,0
    80007508:	22050063          	beqz	a0,80007728 <__printf+0x2a0>
    8000750c:	00002a37          	lui	s4,0x2
    80007510:	00018ab7          	lui	s5,0x18
    80007514:	000f4b37          	lui	s6,0xf4
    80007518:	00989bb7          	lui	s7,0x989
    8000751c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007520:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007524:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007528:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000752c:	00148c9b          	addiw	s9,s1,1
    80007530:	02500793          	li	a5,37
    80007534:	01998933          	add	s2,s3,s9
    80007538:	38f51263          	bne	a0,a5,800078bc <__printf+0x434>
    8000753c:	00094783          	lbu	a5,0(s2)
    80007540:	00078c9b          	sext.w	s9,a5
    80007544:	1e078263          	beqz	a5,80007728 <__printf+0x2a0>
    80007548:	0024849b          	addiw	s1,s1,2
    8000754c:	07000713          	li	a4,112
    80007550:	00998933          	add	s2,s3,s1
    80007554:	38e78a63          	beq	a5,a4,800078e8 <__printf+0x460>
    80007558:	20f76863          	bltu	a4,a5,80007768 <__printf+0x2e0>
    8000755c:	42a78863          	beq	a5,a0,8000798c <__printf+0x504>
    80007560:	06400713          	li	a4,100
    80007564:	40e79663          	bne	a5,a4,80007970 <__printf+0x4e8>
    80007568:	f7843783          	ld	a5,-136(s0)
    8000756c:	0007a603          	lw	a2,0(a5)
    80007570:	00878793          	addi	a5,a5,8
    80007574:	f6f43c23          	sd	a5,-136(s0)
    80007578:	42064a63          	bltz	a2,800079ac <__printf+0x524>
    8000757c:	00a00713          	li	a4,10
    80007580:	02e677bb          	remuw	a5,a2,a4
    80007584:	00002d97          	auipc	s11,0x2
    80007588:	15cd8d93          	addi	s11,s11,348 # 800096e0 <digits>
    8000758c:	00900593          	li	a1,9
    80007590:	0006051b          	sext.w	a0,a2
    80007594:	00000c93          	li	s9,0
    80007598:	02079793          	slli	a5,a5,0x20
    8000759c:	0207d793          	srli	a5,a5,0x20
    800075a0:	00fd87b3          	add	a5,s11,a5
    800075a4:	0007c783          	lbu	a5,0(a5)
    800075a8:	02e656bb          	divuw	a3,a2,a4
    800075ac:	f8f40023          	sb	a5,-128(s0)
    800075b0:	14c5d863          	bge	a1,a2,80007700 <__printf+0x278>
    800075b4:	06300593          	li	a1,99
    800075b8:	00100c93          	li	s9,1
    800075bc:	02e6f7bb          	remuw	a5,a3,a4
    800075c0:	02079793          	slli	a5,a5,0x20
    800075c4:	0207d793          	srli	a5,a5,0x20
    800075c8:	00fd87b3          	add	a5,s11,a5
    800075cc:	0007c783          	lbu	a5,0(a5)
    800075d0:	02e6d73b          	divuw	a4,a3,a4
    800075d4:	f8f400a3          	sb	a5,-127(s0)
    800075d8:	12a5f463          	bgeu	a1,a0,80007700 <__printf+0x278>
    800075dc:	00a00693          	li	a3,10
    800075e0:	00900593          	li	a1,9
    800075e4:	02d777bb          	remuw	a5,a4,a3
    800075e8:	02079793          	slli	a5,a5,0x20
    800075ec:	0207d793          	srli	a5,a5,0x20
    800075f0:	00fd87b3          	add	a5,s11,a5
    800075f4:	0007c503          	lbu	a0,0(a5)
    800075f8:	02d757bb          	divuw	a5,a4,a3
    800075fc:	f8a40123          	sb	a0,-126(s0)
    80007600:	48e5f263          	bgeu	a1,a4,80007a84 <__printf+0x5fc>
    80007604:	06300513          	li	a0,99
    80007608:	02d7f5bb          	remuw	a1,a5,a3
    8000760c:	02059593          	slli	a1,a1,0x20
    80007610:	0205d593          	srli	a1,a1,0x20
    80007614:	00bd85b3          	add	a1,s11,a1
    80007618:	0005c583          	lbu	a1,0(a1)
    8000761c:	02d7d7bb          	divuw	a5,a5,a3
    80007620:	f8b401a3          	sb	a1,-125(s0)
    80007624:	48e57263          	bgeu	a0,a4,80007aa8 <__printf+0x620>
    80007628:	3e700513          	li	a0,999
    8000762c:	02d7f5bb          	remuw	a1,a5,a3
    80007630:	02059593          	slli	a1,a1,0x20
    80007634:	0205d593          	srli	a1,a1,0x20
    80007638:	00bd85b3          	add	a1,s11,a1
    8000763c:	0005c583          	lbu	a1,0(a1)
    80007640:	02d7d7bb          	divuw	a5,a5,a3
    80007644:	f8b40223          	sb	a1,-124(s0)
    80007648:	46e57663          	bgeu	a0,a4,80007ab4 <__printf+0x62c>
    8000764c:	02d7f5bb          	remuw	a1,a5,a3
    80007650:	02059593          	slli	a1,a1,0x20
    80007654:	0205d593          	srli	a1,a1,0x20
    80007658:	00bd85b3          	add	a1,s11,a1
    8000765c:	0005c583          	lbu	a1,0(a1)
    80007660:	02d7d7bb          	divuw	a5,a5,a3
    80007664:	f8b402a3          	sb	a1,-123(s0)
    80007668:	46ea7863          	bgeu	s4,a4,80007ad8 <__printf+0x650>
    8000766c:	02d7f5bb          	remuw	a1,a5,a3
    80007670:	02059593          	slli	a1,a1,0x20
    80007674:	0205d593          	srli	a1,a1,0x20
    80007678:	00bd85b3          	add	a1,s11,a1
    8000767c:	0005c583          	lbu	a1,0(a1)
    80007680:	02d7d7bb          	divuw	a5,a5,a3
    80007684:	f8b40323          	sb	a1,-122(s0)
    80007688:	3eeaf863          	bgeu	s5,a4,80007a78 <__printf+0x5f0>
    8000768c:	02d7f5bb          	remuw	a1,a5,a3
    80007690:	02059593          	slli	a1,a1,0x20
    80007694:	0205d593          	srli	a1,a1,0x20
    80007698:	00bd85b3          	add	a1,s11,a1
    8000769c:	0005c583          	lbu	a1,0(a1)
    800076a0:	02d7d7bb          	divuw	a5,a5,a3
    800076a4:	f8b403a3          	sb	a1,-121(s0)
    800076a8:	42eb7e63          	bgeu	s6,a4,80007ae4 <__printf+0x65c>
    800076ac:	02d7f5bb          	remuw	a1,a5,a3
    800076b0:	02059593          	slli	a1,a1,0x20
    800076b4:	0205d593          	srli	a1,a1,0x20
    800076b8:	00bd85b3          	add	a1,s11,a1
    800076bc:	0005c583          	lbu	a1,0(a1)
    800076c0:	02d7d7bb          	divuw	a5,a5,a3
    800076c4:	f8b40423          	sb	a1,-120(s0)
    800076c8:	42ebfc63          	bgeu	s7,a4,80007b00 <__printf+0x678>
    800076cc:	02079793          	slli	a5,a5,0x20
    800076d0:	0207d793          	srli	a5,a5,0x20
    800076d4:	00fd8db3          	add	s11,s11,a5
    800076d8:	000dc703          	lbu	a4,0(s11)
    800076dc:	00a00793          	li	a5,10
    800076e0:	00900c93          	li	s9,9
    800076e4:	f8e404a3          	sb	a4,-119(s0)
    800076e8:	00065c63          	bgez	a2,80007700 <__printf+0x278>
    800076ec:	f9040713          	addi	a4,s0,-112
    800076f0:	00f70733          	add	a4,a4,a5
    800076f4:	02d00693          	li	a3,45
    800076f8:	fed70823          	sb	a3,-16(a4)
    800076fc:	00078c93          	mv	s9,a5
    80007700:	f8040793          	addi	a5,s0,-128
    80007704:	01978cb3          	add	s9,a5,s9
    80007708:	f7f40d13          	addi	s10,s0,-129
    8000770c:	000cc503          	lbu	a0,0(s9)
    80007710:	fffc8c93          	addi	s9,s9,-1
    80007714:	00000097          	auipc	ra,0x0
    80007718:	b90080e7          	jalr	-1136(ra) # 800072a4 <consputc>
    8000771c:	ffac98e3          	bne	s9,s10,8000770c <__printf+0x284>
    80007720:	00094503          	lbu	a0,0(s2)
    80007724:	e00514e3          	bnez	a0,8000752c <__printf+0xa4>
    80007728:	1a0c1663          	bnez	s8,800078d4 <__printf+0x44c>
    8000772c:	08813083          	ld	ra,136(sp)
    80007730:	08013403          	ld	s0,128(sp)
    80007734:	07813483          	ld	s1,120(sp)
    80007738:	07013903          	ld	s2,112(sp)
    8000773c:	06813983          	ld	s3,104(sp)
    80007740:	06013a03          	ld	s4,96(sp)
    80007744:	05813a83          	ld	s5,88(sp)
    80007748:	05013b03          	ld	s6,80(sp)
    8000774c:	04813b83          	ld	s7,72(sp)
    80007750:	04013c03          	ld	s8,64(sp)
    80007754:	03813c83          	ld	s9,56(sp)
    80007758:	03013d03          	ld	s10,48(sp)
    8000775c:	02813d83          	ld	s11,40(sp)
    80007760:	0d010113          	addi	sp,sp,208
    80007764:	00008067          	ret
    80007768:	07300713          	li	a4,115
    8000776c:	1ce78a63          	beq	a5,a4,80007940 <__printf+0x4b8>
    80007770:	07800713          	li	a4,120
    80007774:	1ee79e63          	bne	a5,a4,80007970 <__printf+0x4e8>
    80007778:	f7843783          	ld	a5,-136(s0)
    8000777c:	0007a703          	lw	a4,0(a5)
    80007780:	00878793          	addi	a5,a5,8
    80007784:	f6f43c23          	sd	a5,-136(s0)
    80007788:	28074263          	bltz	a4,80007a0c <__printf+0x584>
    8000778c:	00002d97          	auipc	s11,0x2
    80007790:	f54d8d93          	addi	s11,s11,-172 # 800096e0 <digits>
    80007794:	00f77793          	andi	a5,a4,15
    80007798:	00fd87b3          	add	a5,s11,a5
    8000779c:	0007c683          	lbu	a3,0(a5)
    800077a0:	00f00613          	li	a2,15
    800077a4:	0007079b          	sext.w	a5,a4
    800077a8:	f8d40023          	sb	a3,-128(s0)
    800077ac:	0047559b          	srliw	a1,a4,0x4
    800077b0:	0047569b          	srliw	a3,a4,0x4
    800077b4:	00000c93          	li	s9,0
    800077b8:	0ee65063          	bge	a2,a4,80007898 <__printf+0x410>
    800077bc:	00f6f693          	andi	a3,a3,15
    800077c0:	00dd86b3          	add	a3,s11,a3
    800077c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800077c8:	0087d79b          	srliw	a5,a5,0x8
    800077cc:	00100c93          	li	s9,1
    800077d0:	f8d400a3          	sb	a3,-127(s0)
    800077d4:	0cb67263          	bgeu	a2,a1,80007898 <__printf+0x410>
    800077d8:	00f7f693          	andi	a3,a5,15
    800077dc:	00dd86b3          	add	a3,s11,a3
    800077e0:	0006c583          	lbu	a1,0(a3)
    800077e4:	00f00613          	li	a2,15
    800077e8:	0047d69b          	srliw	a3,a5,0x4
    800077ec:	f8b40123          	sb	a1,-126(s0)
    800077f0:	0047d593          	srli	a1,a5,0x4
    800077f4:	28f67e63          	bgeu	a2,a5,80007a90 <__printf+0x608>
    800077f8:	00f6f693          	andi	a3,a3,15
    800077fc:	00dd86b3          	add	a3,s11,a3
    80007800:	0006c503          	lbu	a0,0(a3)
    80007804:	0087d813          	srli	a6,a5,0x8
    80007808:	0087d69b          	srliw	a3,a5,0x8
    8000780c:	f8a401a3          	sb	a0,-125(s0)
    80007810:	28b67663          	bgeu	a2,a1,80007a9c <__printf+0x614>
    80007814:	00f6f693          	andi	a3,a3,15
    80007818:	00dd86b3          	add	a3,s11,a3
    8000781c:	0006c583          	lbu	a1,0(a3)
    80007820:	00c7d513          	srli	a0,a5,0xc
    80007824:	00c7d69b          	srliw	a3,a5,0xc
    80007828:	f8b40223          	sb	a1,-124(s0)
    8000782c:	29067a63          	bgeu	a2,a6,80007ac0 <__printf+0x638>
    80007830:	00f6f693          	andi	a3,a3,15
    80007834:	00dd86b3          	add	a3,s11,a3
    80007838:	0006c583          	lbu	a1,0(a3)
    8000783c:	0107d813          	srli	a6,a5,0x10
    80007840:	0107d69b          	srliw	a3,a5,0x10
    80007844:	f8b402a3          	sb	a1,-123(s0)
    80007848:	28a67263          	bgeu	a2,a0,80007acc <__printf+0x644>
    8000784c:	00f6f693          	andi	a3,a3,15
    80007850:	00dd86b3          	add	a3,s11,a3
    80007854:	0006c683          	lbu	a3,0(a3)
    80007858:	0147d79b          	srliw	a5,a5,0x14
    8000785c:	f8d40323          	sb	a3,-122(s0)
    80007860:	21067663          	bgeu	a2,a6,80007a6c <__printf+0x5e4>
    80007864:	02079793          	slli	a5,a5,0x20
    80007868:	0207d793          	srli	a5,a5,0x20
    8000786c:	00fd8db3          	add	s11,s11,a5
    80007870:	000dc683          	lbu	a3,0(s11)
    80007874:	00800793          	li	a5,8
    80007878:	00700c93          	li	s9,7
    8000787c:	f8d403a3          	sb	a3,-121(s0)
    80007880:	00075c63          	bgez	a4,80007898 <__printf+0x410>
    80007884:	f9040713          	addi	a4,s0,-112
    80007888:	00f70733          	add	a4,a4,a5
    8000788c:	02d00693          	li	a3,45
    80007890:	fed70823          	sb	a3,-16(a4)
    80007894:	00078c93          	mv	s9,a5
    80007898:	f8040793          	addi	a5,s0,-128
    8000789c:	01978cb3          	add	s9,a5,s9
    800078a0:	f7f40d13          	addi	s10,s0,-129
    800078a4:	000cc503          	lbu	a0,0(s9)
    800078a8:	fffc8c93          	addi	s9,s9,-1
    800078ac:	00000097          	auipc	ra,0x0
    800078b0:	9f8080e7          	jalr	-1544(ra) # 800072a4 <consputc>
    800078b4:	ff9d18e3          	bne	s10,s9,800078a4 <__printf+0x41c>
    800078b8:	0100006f          	j	800078c8 <__printf+0x440>
    800078bc:	00000097          	auipc	ra,0x0
    800078c0:	9e8080e7          	jalr	-1560(ra) # 800072a4 <consputc>
    800078c4:	000c8493          	mv	s1,s9
    800078c8:	00094503          	lbu	a0,0(s2)
    800078cc:	c60510e3          	bnez	a0,8000752c <__printf+0xa4>
    800078d0:	e40c0ee3          	beqz	s8,8000772c <__printf+0x2a4>
    800078d4:	00005517          	auipc	a0,0x5
    800078d8:	63c50513          	addi	a0,a0,1596 # 8000cf10 <pr>
    800078dc:	00001097          	auipc	ra,0x1
    800078e0:	94c080e7          	jalr	-1716(ra) # 80008228 <release>
    800078e4:	e49ff06f          	j	8000772c <__printf+0x2a4>
    800078e8:	f7843783          	ld	a5,-136(s0)
    800078ec:	03000513          	li	a0,48
    800078f0:	01000d13          	li	s10,16
    800078f4:	00878713          	addi	a4,a5,8
    800078f8:	0007bc83          	ld	s9,0(a5)
    800078fc:	f6e43c23          	sd	a4,-136(s0)
    80007900:	00000097          	auipc	ra,0x0
    80007904:	9a4080e7          	jalr	-1628(ra) # 800072a4 <consputc>
    80007908:	07800513          	li	a0,120
    8000790c:	00000097          	auipc	ra,0x0
    80007910:	998080e7          	jalr	-1640(ra) # 800072a4 <consputc>
    80007914:	00002d97          	auipc	s11,0x2
    80007918:	dccd8d93          	addi	s11,s11,-564 # 800096e0 <digits>
    8000791c:	03ccd793          	srli	a5,s9,0x3c
    80007920:	00fd87b3          	add	a5,s11,a5
    80007924:	0007c503          	lbu	a0,0(a5)
    80007928:	fffd0d1b          	addiw	s10,s10,-1
    8000792c:	004c9c93          	slli	s9,s9,0x4
    80007930:	00000097          	auipc	ra,0x0
    80007934:	974080e7          	jalr	-1676(ra) # 800072a4 <consputc>
    80007938:	fe0d12e3          	bnez	s10,8000791c <__printf+0x494>
    8000793c:	f8dff06f          	j	800078c8 <__printf+0x440>
    80007940:	f7843783          	ld	a5,-136(s0)
    80007944:	0007bc83          	ld	s9,0(a5)
    80007948:	00878793          	addi	a5,a5,8
    8000794c:	f6f43c23          	sd	a5,-136(s0)
    80007950:	000c9a63          	bnez	s9,80007964 <__printf+0x4dc>
    80007954:	1080006f          	j	80007a5c <__printf+0x5d4>
    80007958:	001c8c93          	addi	s9,s9,1
    8000795c:	00000097          	auipc	ra,0x0
    80007960:	948080e7          	jalr	-1720(ra) # 800072a4 <consputc>
    80007964:	000cc503          	lbu	a0,0(s9)
    80007968:	fe0518e3          	bnez	a0,80007958 <__printf+0x4d0>
    8000796c:	f5dff06f          	j	800078c8 <__printf+0x440>
    80007970:	02500513          	li	a0,37
    80007974:	00000097          	auipc	ra,0x0
    80007978:	930080e7          	jalr	-1744(ra) # 800072a4 <consputc>
    8000797c:	000c8513          	mv	a0,s9
    80007980:	00000097          	auipc	ra,0x0
    80007984:	924080e7          	jalr	-1756(ra) # 800072a4 <consputc>
    80007988:	f41ff06f          	j	800078c8 <__printf+0x440>
    8000798c:	02500513          	li	a0,37
    80007990:	00000097          	auipc	ra,0x0
    80007994:	914080e7          	jalr	-1772(ra) # 800072a4 <consputc>
    80007998:	f31ff06f          	j	800078c8 <__printf+0x440>
    8000799c:	00030513          	mv	a0,t1
    800079a0:	00000097          	auipc	ra,0x0
    800079a4:	7bc080e7          	jalr	1980(ra) # 8000815c <acquire>
    800079a8:	b4dff06f          	j	800074f4 <__printf+0x6c>
    800079ac:	40c0053b          	negw	a0,a2
    800079b0:	00a00713          	li	a4,10
    800079b4:	02e576bb          	remuw	a3,a0,a4
    800079b8:	00002d97          	auipc	s11,0x2
    800079bc:	d28d8d93          	addi	s11,s11,-728 # 800096e0 <digits>
    800079c0:	ff700593          	li	a1,-9
    800079c4:	02069693          	slli	a3,a3,0x20
    800079c8:	0206d693          	srli	a3,a3,0x20
    800079cc:	00dd86b3          	add	a3,s11,a3
    800079d0:	0006c683          	lbu	a3,0(a3)
    800079d4:	02e557bb          	divuw	a5,a0,a4
    800079d8:	f8d40023          	sb	a3,-128(s0)
    800079dc:	10b65e63          	bge	a2,a1,80007af8 <__printf+0x670>
    800079e0:	06300593          	li	a1,99
    800079e4:	02e7f6bb          	remuw	a3,a5,a4
    800079e8:	02069693          	slli	a3,a3,0x20
    800079ec:	0206d693          	srli	a3,a3,0x20
    800079f0:	00dd86b3          	add	a3,s11,a3
    800079f4:	0006c683          	lbu	a3,0(a3)
    800079f8:	02e7d73b          	divuw	a4,a5,a4
    800079fc:	00200793          	li	a5,2
    80007a00:	f8d400a3          	sb	a3,-127(s0)
    80007a04:	bca5ece3          	bltu	a1,a0,800075dc <__printf+0x154>
    80007a08:	ce5ff06f          	j	800076ec <__printf+0x264>
    80007a0c:	40e007bb          	negw	a5,a4
    80007a10:	00002d97          	auipc	s11,0x2
    80007a14:	cd0d8d93          	addi	s11,s11,-816 # 800096e0 <digits>
    80007a18:	00f7f693          	andi	a3,a5,15
    80007a1c:	00dd86b3          	add	a3,s11,a3
    80007a20:	0006c583          	lbu	a1,0(a3)
    80007a24:	ff100613          	li	a2,-15
    80007a28:	0047d69b          	srliw	a3,a5,0x4
    80007a2c:	f8b40023          	sb	a1,-128(s0)
    80007a30:	0047d59b          	srliw	a1,a5,0x4
    80007a34:	0ac75e63          	bge	a4,a2,80007af0 <__printf+0x668>
    80007a38:	00f6f693          	andi	a3,a3,15
    80007a3c:	00dd86b3          	add	a3,s11,a3
    80007a40:	0006c603          	lbu	a2,0(a3)
    80007a44:	00f00693          	li	a3,15
    80007a48:	0087d79b          	srliw	a5,a5,0x8
    80007a4c:	f8c400a3          	sb	a2,-127(s0)
    80007a50:	d8b6e4e3          	bltu	a3,a1,800077d8 <__printf+0x350>
    80007a54:	00200793          	li	a5,2
    80007a58:	e2dff06f          	j	80007884 <__printf+0x3fc>
    80007a5c:	00002c97          	auipc	s9,0x2
    80007a60:	c64c8c93          	addi	s9,s9,-924 # 800096c0 <_ZL6digits+0x198>
    80007a64:	02800513          	li	a0,40
    80007a68:	ef1ff06f          	j	80007958 <__printf+0x4d0>
    80007a6c:	00700793          	li	a5,7
    80007a70:	00600c93          	li	s9,6
    80007a74:	e0dff06f          	j	80007880 <__printf+0x3f8>
    80007a78:	00700793          	li	a5,7
    80007a7c:	00600c93          	li	s9,6
    80007a80:	c69ff06f          	j	800076e8 <__printf+0x260>
    80007a84:	00300793          	li	a5,3
    80007a88:	00200c93          	li	s9,2
    80007a8c:	c5dff06f          	j	800076e8 <__printf+0x260>
    80007a90:	00300793          	li	a5,3
    80007a94:	00200c93          	li	s9,2
    80007a98:	de9ff06f          	j	80007880 <__printf+0x3f8>
    80007a9c:	00400793          	li	a5,4
    80007aa0:	00300c93          	li	s9,3
    80007aa4:	dddff06f          	j	80007880 <__printf+0x3f8>
    80007aa8:	00400793          	li	a5,4
    80007aac:	00300c93          	li	s9,3
    80007ab0:	c39ff06f          	j	800076e8 <__printf+0x260>
    80007ab4:	00500793          	li	a5,5
    80007ab8:	00400c93          	li	s9,4
    80007abc:	c2dff06f          	j	800076e8 <__printf+0x260>
    80007ac0:	00500793          	li	a5,5
    80007ac4:	00400c93          	li	s9,4
    80007ac8:	db9ff06f          	j	80007880 <__printf+0x3f8>
    80007acc:	00600793          	li	a5,6
    80007ad0:	00500c93          	li	s9,5
    80007ad4:	dadff06f          	j	80007880 <__printf+0x3f8>
    80007ad8:	00600793          	li	a5,6
    80007adc:	00500c93          	li	s9,5
    80007ae0:	c09ff06f          	j	800076e8 <__printf+0x260>
    80007ae4:	00800793          	li	a5,8
    80007ae8:	00700c93          	li	s9,7
    80007aec:	bfdff06f          	j	800076e8 <__printf+0x260>
    80007af0:	00100793          	li	a5,1
    80007af4:	d91ff06f          	j	80007884 <__printf+0x3fc>
    80007af8:	00100793          	li	a5,1
    80007afc:	bf1ff06f          	j	800076ec <__printf+0x264>
    80007b00:	00900793          	li	a5,9
    80007b04:	00800c93          	li	s9,8
    80007b08:	be1ff06f          	j	800076e8 <__printf+0x260>
    80007b0c:	00002517          	auipc	a0,0x2
    80007b10:	bbc50513          	addi	a0,a0,-1092 # 800096c8 <_ZL6digits+0x1a0>
    80007b14:	00000097          	auipc	ra,0x0
    80007b18:	918080e7          	jalr	-1768(ra) # 8000742c <panic>

0000000080007b1c <printfinit>:
    80007b1c:	fe010113          	addi	sp,sp,-32
    80007b20:	00813823          	sd	s0,16(sp)
    80007b24:	00913423          	sd	s1,8(sp)
    80007b28:	00113c23          	sd	ra,24(sp)
    80007b2c:	02010413          	addi	s0,sp,32
    80007b30:	00005497          	auipc	s1,0x5
    80007b34:	3e048493          	addi	s1,s1,992 # 8000cf10 <pr>
    80007b38:	00048513          	mv	a0,s1
    80007b3c:	00002597          	auipc	a1,0x2
    80007b40:	b9c58593          	addi	a1,a1,-1124 # 800096d8 <_ZL6digits+0x1b0>
    80007b44:	00000097          	auipc	ra,0x0
    80007b48:	5f4080e7          	jalr	1524(ra) # 80008138 <initlock>
    80007b4c:	01813083          	ld	ra,24(sp)
    80007b50:	01013403          	ld	s0,16(sp)
    80007b54:	0004ac23          	sw	zero,24(s1)
    80007b58:	00813483          	ld	s1,8(sp)
    80007b5c:	02010113          	addi	sp,sp,32
    80007b60:	00008067          	ret

0000000080007b64 <uartinit>:
    80007b64:	ff010113          	addi	sp,sp,-16
    80007b68:	00813423          	sd	s0,8(sp)
    80007b6c:	01010413          	addi	s0,sp,16
    80007b70:	100007b7          	lui	a5,0x10000
    80007b74:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007b78:	f8000713          	li	a4,-128
    80007b7c:	00e781a3          	sb	a4,3(a5)
    80007b80:	00300713          	li	a4,3
    80007b84:	00e78023          	sb	a4,0(a5)
    80007b88:	000780a3          	sb	zero,1(a5)
    80007b8c:	00e781a3          	sb	a4,3(a5)
    80007b90:	00700693          	li	a3,7
    80007b94:	00d78123          	sb	a3,2(a5)
    80007b98:	00e780a3          	sb	a4,1(a5)
    80007b9c:	00813403          	ld	s0,8(sp)
    80007ba0:	01010113          	addi	sp,sp,16
    80007ba4:	00008067          	ret

0000000080007ba8 <uartputc>:
    80007ba8:	00004797          	auipc	a5,0x4
    80007bac:	0307a783          	lw	a5,48(a5) # 8000bbd8 <panicked>
    80007bb0:	00078463          	beqz	a5,80007bb8 <uartputc+0x10>
    80007bb4:	0000006f          	j	80007bb4 <uartputc+0xc>
    80007bb8:	fd010113          	addi	sp,sp,-48
    80007bbc:	02813023          	sd	s0,32(sp)
    80007bc0:	00913c23          	sd	s1,24(sp)
    80007bc4:	01213823          	sd	s2,16(sp)
    80007bc8:	01313423          	sd	s3,8(sp)
    80007bcc:	02113423          	sd	ra,40(sp)
    80007bd0:	03010413          	addi	s0,sp,48
    80007bd4:	00004917          	auipc	s2,0x4
    80007bd8:	00c90913          	addi	s2,s2,12 # 8000bbe0 <uart_tx_r>
    80007bdc:	00093783          	ld	a5,0(s2)
    80007be0:	00004497          	auipc	s1,0x4
    80007be4:	00848493          	addi	s1,s1,8 # 8000bbe8 <uart_tx_w>
    80007be8:	0004b703          	ld	a4,0(s1)
    80007bec:	02078693          	addi	a3,a5,32
    80007bf0:	00050993          	mv	s3,a0
    80007bf4:	02e69c63          	bne	a3,a4,80007c2c <uartputc+0x84>
    80007bf8:	00001097          	auipc	ra,0x1
    80007bfc:	834080e7          	jalr	-1996(ra) # 8000842c <push_on>
    80007c00:	00093783          	ld	a5,0(s2)
    80007c04:	0004b703          	ld	a4,0(s1)
    80007c08:	02078793          	addi	a5,a5,32
    80007c0c:	00e79463          	bne	a5,a4,80007c14 <uartputc+0x6c>
    80007c10:	0000006f          	j	80007c10 <uartputc+0x68>
    80007c14:	00001097          	auipc	ra,0x1
    80007c18:	88c080e7          	jalr	-1908(ra) # 800084a0 <pop_on>
    80007c1c:	00093783          	ld	a5,0(s2)
    80007c20:	0004b703          	ld	a4,0(s1)
    80007c24:	02078693          	addi	a3,a5,32
    80007c28:	fce688e3          	beq	a3,a4,80007bf8 <uartputc+0x50>
    80007c2c:	01f77693          	andi	a3,a4,31
    80007c30:	00005597          	auipc	a1,0x5
    80007c34:	30058593          	addi	a1,a1,768 # 8000cf30 <uart_tx_buf>
    80007c38:	00d586b3          	add	a3,a1,a3
    80007c3c:	00170713          	addi	a4,a4,1
    80007c40:	01368023          	sb	s3,0(a3)
    80007c44:	00e4b023          	sd	a4,0(s1)
    80007c48:	10000637          	lui	a2,0x10000
    80007c4c:	02f71063          	bne	a4,a5,80007c6c <uartputc+0xc4>
    80007c50:	0340006f          	j	80007c84 <uartputc+0xdc>
    80007c54:	00074703          	lbu	a4,0(a4)
    80007c58:	00f93023          	sd	a5,0(s2)
    80007c5c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007c60:	00093783          	ld	a5,0(s2)
    80007c64:	0004b703          	ld	a4,0(s1)
    80007c68:	00f70e63          	beq	a4,a5,80007c84 <uartputc+0xdc>
    80007c6c:	00564683          	lbu	a3,5(a2)
    80007c70:	01f7f713          	andi	a4,a5,31
    80007c74:	00e58733          	add	a4,a1,a4
    80007c78:	0206f693          	andi	a3,a3,32
    80007c7c:	00178793          	addi	a5,a5,1
    80007c80:	fc069ae3          	bnez	a3,80007c54 <uartputc+0xac>
    80007c84:	02813083          	ld	ra,40(sp)
    80007c88:	02013403          	ld	s0,32(sp)
    80007c8c:	01813483          	ld	s1,24(sp)
    80007c90:	01013903          	ld	s2,16(sp)
    80007c94:	00813983          	ld	s3,8(sp)
    80007c98:	03010113          	addi	sp,sp,48
    80007c9c:	00008067          	ret

0000000080007ca0 <uartputc_sync>:
    80007ca0:	ff010113          	addi	sp,sp,-16
    80007ca4:	00813423          	sd	s0,8(sp)
    80007ca8:	01010413          	addi	s0,sp,16
    80007cac:	00004717          	auipc	a4,0x4
    80007cb0:	f2c72703          	lw	a4,-212(a4) # 8000bbd8 <panicked>
    80007cb4:	02071663          	bnez	a4,80007ce0 <uartputc_sync+0x40>
    80007cb8:	00050793          	mv	a5,a0
    80007cbc:	100006b7          	lui	a3,0x10000
    80007cc0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007cc4:	02077713          	andi	a4,a4,32
    80007cc8:	fe070ce3          	beqz	a4,80007cc0 <uartputc_sync+0x20>
    80007ccc:	0ff7f793          	andi	a5,a5,255
    80007cd0:	00f68023          	sb	a5,0(a3)
    80007cd4:	00813403          	ld	s0,8(sp)
    80007cd8:	01010113          	addi	sp,sp,16
    80007cdc:	00008067          	ret
    80007ce0:	0000006f          	j	80007ce0 <uartputc_sync+0x40>

0000000080007ce4 <uartstart>:
    80007ce4:	ff010113          	addi	sp,sp,-16
    80007ce8:	00813423          	sd	s0,8(sp)
    80007cec:	01010413          	addi	s0,sp,16
    80007cf0:	00004617          	auipc	a2,0x4
    80007cf4:	ef060613          	addi	a2,a2,-272 # 8000bbe0 <uart_tx_r>
    80007cf8:	00004517          	auipc	a0,0x4
    80007cfc:	ef050513          	addi	a0,a0,-272 # 8000bbe8 <uart_tx_w>
    80007d00:	00063783          	ld	a5,0(a2)
    80007d04:	00053703          	ld	a4,0(a0)
    80007d08:	04f70263          	beq	a4,a5,80007d4c <uartstart+0x68>
    80007d0c:	100005b7          	lui	a1,0x10000
    80007d10:	00005817          	auipc	a6,0x5
    80007d14:	22080813          	addi	a6,a6,544 # 8000cf30 <uart_tx_buf>
    80007d18:	01c0006f          	j	80007d34 <uartstart+0x50>
    80007d1c:	0006c703          	lbu	a4,0(a3)
    80007d20:	00f63023          	sd	a5,0(a2)
    80007d24:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007d28:	00063783          	ld	a5,0(a2)
    80007d2c:	00053703          	ld	a4,0(a0)
    80007d30:	00f70e63          	beq	a4,a5,80007d4c <uartstart+0x68>
    80007d34:	01f7f713          	andi	a4,a5,31
    80007d38:	00e806b3          	add	a3,a6,a4
    80007d3c:	0055c703          	lbu	a4,5(a1)
    80007d40:	00178793          	addi	a5,a5,1
    80007d44:	02077713          	andi	a4,a4,32
    80007d48:	fc071ae3          	bnez	a4,80007d1c <uartstart+0x38>
    80007d4c:	00813403          	ld	s0,8(sp)
    80007d50:	01010113          	addi	sp,sp,16
    80007d54:	00008067          	ret

0000000080007d58 <uartgetc>:
    80007d58:	ff010113          	addi	sp,sp,-16
    80007d5c:	00813423          	sd	s0,8(sp)
    80007d60:	01010413          	addi	s0,sp,16
    80007d64:	10000737          	lui	a4,0x10000
    80007d68:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007d6c:	0017f793          	andi	a5,a5,1
    80007d70:	00078c63          	beqz	a5,80007d88 <uartgetc+0x30>
    80007d74:	00074503          	lbu	a0,0(a4)
    80007d78:	0ff57513          	andi	a0,a0,255
    80007d7c:	00813403          	ld	s0,8(sp)
    80007d80:	01010113          	addi	sp,sp,16
    80007d84:	00008067          	ret
    80007d88:	fff00513          	li	a0,-1
    80007d8c:	ff1ff06f          	j	80007d7c <uartgetc+0x24>

0000000080007d90 <uartintr>:
    80007d90:	100007b7          	lui	a5,0x10000
    80007d94:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007d98:	0017f793          	andi	a5,a5,1
    80007d9c:	0a078463          	beqz	a5,80007e44 <uartintr+0xb4>
    80007da0:	fe010113          	addi	sp,sp,-32
    80007da4:	00813823          	sd	s0,16(sp)
    80007da8:	00913423          	sd	s1,8(sp)
    80007dac:	00113c23          	sd	ra,24(sp)
    80007db0:	02010413          	addi	s0,sp,32
    80007db4:	100004b7          	lui	s1,0x10000
    80007db8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007dbc:	0ff57513          	andi	a0,a0,255
    80007dc0:	fffff097          	auipc	ra,0xfffff
    80007dc4:	534080e7          	jalr	1332(ra) # 800072f4 <consoleintr>
    80007dc8:	0054c783          	lbu	a5,5(s1)
    80007dcc:	0017f793          	andi	a5,a5,1
    80007dd0:	fe0794e3          	bnez	a5,80007db8 <uartintr+0x28>
    80007dd4:	00004617          	auipc	a2,0x4
    80007dd8:	e0c60613          	addi	a2,a2,-500 # 8000bbe0 <uart_tx_r>
    80007ddc:	00004517          	auipc	a0,0x4
    80007de0:	e0c50513          	addi	a0,a0,-500 # 8000bbe8 <uart_tx_w>
    80007de4:	00063783          	ld	a5,0(a2)
    80007de8:	00053703          	ld	a4,0(a0)
    80007dec:	04f70263          	beq	a4,a5,80007e30 <uartintr+0xa0>
    80007df0:	100005b7          	lui	a1,0x10000
    80007df4:	00005817          	auipc	a6,0x5
    80007df8:	13c80813          	addi	a6,a6,316 # 8000cf30 <uart_tx_buf>
    80007dfc:	01c0006f          	j	80007e18 <uartintr+0x88>
    80007e00:	0006c703          	lbu	a4,0(a3)
    80007e04:	00f63023          	sd	a5,0(a2)
    80007e08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007e0c:	00063783          	ld	a5,0(a2)
    80007e10:	00053703          	ld	a4,0(a0)
    80007e14:	00f70e63          	beq	a4,a5,80007e30 <uartintr+0xa0>
    80007e18:	01f7f713          	andi	a4,a5,31
    80007e1c:	00e806b3          	add	a3,a6,a4
    80007e20:	0055c703          	lbu	a4,5(a1)
    80007e24:	00178793          	addi	a5,a5,1
    80007e28:	02077713          	andi	a4,a4,32
    80007e2c:	fc071ae3          	bnez	a4,80007e00 <uartintr+0x70>
    80007e30:	01813083          	ld	ra,24(sp)
    80007e34:	01013403          	ld	s0,16(sp)
    80007e38:	00813483          	ld	s1,8(sp)
    80007e3c:	02010113          	addi	sp,sp,32
    80007e40:	00008067          	ret
    80007e44:	00004617          	auipc	a2,0x4
    80007e48:	d9c60613          	addi	a2,a2,-612 # 8000bbe0 <uart_tx_r>
    80007e4c:	00004517          	auipc	a0,0x4
    80007e50:	d9c50513          	addi	a0,a0,-612 # 8000bbe8 <uart_tx_w>
    80007e54:	00063783          	ld	a5,0(a2)
    80007e58:	00053703          	ld	a4,0(a0)
    80007e5c:	04f70263          	beq	a4,a5,80007ea0 <uartintr+0x110>
    80007e60:	100005b7          	lui	a1,0x10000
    80007e64:	00005817          	auipc	a6,0x5
    80007e68:	0cc80813          	addi	a6,a6,204 # 8000cf30 <uart_tx_buf>
    80007e6c:	01c0006f          	j	80007e88 <uartintr+0xf8>
    80007e70:	0006c703          	lbu	a4,0(a3)
    80007e74:	00f63023          	sd	a5,0(a2)
    80007e78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007e7c:	00063783          	ld	a5,0(a2)
    80007e80:	00053703          	ld	a4,0(a0)
    80007e84:	02f70063          	beq	a4,a5,80007ea4 <uartintr+0x114>
    80007e88:	01f7f713          	andi	a4,a5,31
    80007e8c:	00e806b3          	add	a3,a6,a4
    80007e90:	0055c703          	lbu	a4,5(a1)
    80007e94:	00178793          	addi	a5,a5,1
    80007e98:	02077713          	andi	a4,a4,32
    80007e9c:	fc071ae3          	bnez	a4,80007e70 <uartintr+0xe0>
    80007ea0:	00008067          	ret
    80007ea4:	00008067          	ret

0000000080007ea8 <kinit>:
    80007ea8:	fc010113          	addi	sp,sp,-64
    80007eac:	02913423          	sd	s1,40(sp)
    80007eb0:	fffff7b7          	lui	a5,0xfffff
    80007eb4:	00006497          	auipc	s1,0x6
    80007eb8:	09b48493          	addi	s1,s1,155 # 8000df4f <end+0xfff>
    80007ebc:	02813823          	sd	s0,48(sp)
    80007ec0:	01313c23          	sd	s3,24(sp)
    80007ec4:	00f4f4b3          	and	s1,s1,a5
    80007ec8:	02113c23          	sd	ra,56(sp)
    80007ecc:	03213023          	sd	s2,32(sp)
    80007ed0:	01413823          	sd	s4,16(sp)
    80007ed4:	01513423          	sd	s5,8(sp)
    80007ed8:	04010413          	addi	s0,sp,64
    80007edc:	000017b7          	lui	a5,0x1
    80007ee0:	01100993          	li	s3,17
    80007ee4:	00f487b3          	add	a5,s1,a5
    80007ee8:	01b99993          	slli	s3,s3,0x1b
    80007eec:	06f9e063          	bltu	s3,a5,80007f4c <kinit+0xa4>
    80007ef0:	00005a97          	auipc	s5,0x5
    80007ef4:	060a8a93          	addi	s5,s5,96 # 8000cf50 <end>
    80007ef8:	0754ec63          	bltu	s1,s5,80007f70 <kinit+0xc8>
    80007efc:	0734fa63          	bgeu	s1,s3,80007f70 <kinit+0xc8>
    80007f00:	00088a37          	lui	s4,0x88
    80007f04:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007f08:	00004917          	auipc	s2,0x4
    80007f0c:	ce890913          	addi	s2,s2,-792 # 8000bbf0 <kmem>
    80007f10:	00ca1a13          	slli	s4,s4,0xc
    80007f14:	0140006f          	j	80007f28 <kinit+0x80>
    80007f18:	000017b7          	lui	a5,0x1
    80007f1c:	00f484b3          	add	s1,s1,a5
    80007f20:	0554e863          	bltu	s1,s5,80007f70 <kinit+0xc8>
    80007f24:	0534f663          	bgeu	s1,s3,80007f70 <kinit+0xc8>
    80007f28:	00001637          	lui	a2,0x1
    80007f2c:	00100593          	li	a1,1
    80007f30:	00048513          	mv	a0,s1
    80007f34:	00000097          	auipc	ra,0x0
    80007f38:	5e4080e7          	jalr	1508(ra) # 80008518 <__memset>
    80007f3c:	00093783          	ld	a5,0(s2)
    80007f40:	00f4b023          	sd	a5,0(s1)
    80007f44:	00993023          	sd	s1,0(s2)
    80007f48:	fd4498e3          	bne	s1,s4,80007f18 <kinit+0x70>
    80007f4c:	03813083          	ld	ra,56(sp)
    80007f50:	03013403          	ld	s0,48(sp)
    80007f54:	02813483          	ld	s1,40(sp)
    80007f58:	02013903          	ld	s2,32(sp)
    80007f5c:	01813983          	ld	s3,24(sp)
    80007f60:	01013a03          	ld	s4,16(sp)
    80007f64:	00813a83          	ld	s5,8(sp)
    80007f68:	04010113          	addi	sp,sp,64
    80007f6c:	00008067          	ret
    80007f70:	00001517          	auipc	a0,0x1
    80007f74:	78850513          	addi	a0,a0,1928 # 800096f8 <digits+0x18>
    80007f78:	fffff097          	auipc	ra,0xfffff
    80007f7c:	4b4080e7          	jalr	1204(ra) # 8000742c <panic>

0000000080007f80 <freerange>:
    80007f80:	fc010113          	addi	sp,sp,-64
    80007f84:	000017b7          	lui	a5,0x1
    80007f88:	02913423          	sd	s1,40(sp)
    80007f8c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007f90:	009504b3          	add	s1,a0,s1
    80007f94:	fffff537          	lui	a0,0xfffff
    80007f98:	02813823          	sd	s0,48(sp)
    80007f9c:	02113c23          	sd	ra,56(sp)
    80007fa0:	03213023          	sd	s2,32(sp)
    80007fa4:	01313c23          	sd	s3,24(sp)
    80007fa8:	01413823          	sd	s4,16(sp)
    80007fac:	01513423          	sd	s5,8(sp)
    80007fb0:	01613023          	sd	s6,0(sp)
    80007fb4:	04010413          	addi	s0,sp,64
    80007fb8:	00a4f4b3          	and	s1,s1,a0
    80007fbc:	00f487b3          	add	a5,s1,a5
    80007fc0:	06f5e463          	bltu	a1,a5,80008028 <freerange+0xa8>
    80007fc4:	00005a97          	auipc	s5,0x5
    80007fc8:	f8ca8a93          	addi	s5,s5,-116 # 8000cf50 <end>
    80007fcc:	0954e263          	bltu	s1,s5,80008050 <freerange+0xd0>
    80007fd0:	01100993          	li	s3,17
    80007fd4:	01b99993          	slli	s3,s3,0x1b
    80007fd8:	0734fc63          	bgeu	s1,s3,80008050 <freerange+0xd0>
    80007fdc:	00058a13          	mv	s4,a1
    80007fe0:	00004917          	auipc	s2,0x4
    80007fe4:	c1090913          	addi	s2,s2,-1008 # 8000bbf0 <kmem>
    80007fe8:	00002b37          	lui	s6,0x2
    80007fec:	0140006f          	j	80008000 <freerange+0x80>
    80007ff0:	000017b7          	lui	a5,0x1
    80007ff4:	00f484b3          	add	s1,s1,a5
    80007ff8:	0554ec63          	bltu	s1,s5,80008050 <freerange+0xd0>
    80007ffc:	0534fa63          	bgeu	s1,s3,80008050 <freerange+0xd0>
    80008000:	00001637          	lui	a2,0x1
    80008004:	00100593          	li	a1,1
    80008008:	00048513          	mv	a0,s1
    8000800c:	00000097          	auipc	ra,0x0
    80008010:	50c080e7          	jalr	1292(ra) # 80008518 <__memset>
    80008014:	00093703          	ld	a4,0(s2)
    80008018:	016487b3          	add	a5,s1,s6
    8000801c:	00e4b023          	sd	a4,0(s1)
    80008020:	00993023          	sd	s1,0(s2)
    80008024:	fcfa76e3          	bgeu	s4,a5,80007ff0 <freerange+0x70>
    80008028:	03813083          	ld	ra,56(sp)
    8000802c:	03013403          	ld	s0,48(sp)
    80008030:	02813483          	ld	s1,40(sp)
    80008034:	02013903          	ld	s2,32(sp)
    80008038:	01813983          	ld	s3,24(sp)
    8000803c:	01013a03          	ld	s4,16(sp)
    80008040:	00813a83          	ld	s5,8(sp)
    80008044:	00013b03          	ld	s6,0(sp)
    80008048:	04010113          	addi	sp,sp,64
    8000804c:	00008067          	ret
    80008050:	00001517          	auipc	a0,0x1
    80008054:	6a850513          	addi	a0,a0,1704 # 800096f8 <digits+0x18>
    80008058:	fffff097          	auipc	ra,0xfffff
    8000805c:	3d4080e7          	jalr	980(ra) # 8000742c <panic>

0000000080008060 <kfree>:
    80008060:	fe010113          	addi	sp,sp,-32
    80008064:	00813823          	sd	s0,16(sp)
    80008068:	00113c23          	sd	ra,24(sp)
    8000806c:	00913423          	sd	s1,8(sp)
    80008070:	02010413          	addi	s0,sp,32
    80008074:	03451793          	slli	a5,a0,0x34
    80008078:	04079c63          	bnez	a5,800080d0 <kfree+0x70>
    8000807c:	00005797          	auipc	a5,0x5
    80008080:	ed478793          	addi	a5,a5,-300 # 8000cf50 <end>
    80008084:	00050493          	mv	s1,a0
    80008088:	04f56463          	bltu	a0,a5,800080d0 <kfree+0x70>
    8000808c:	01100793          	li	a5,17
    80008090:	01b79793          	slli	a5,a5,0x1b
    80008094:	02f57e63          	bgeu	a0,a5,800080d0 <kfree+0x70>
    80008098:	00001637          	lui	a2,0x1
    8000809c:	00100593          	li	a1,1
    800080a0:	00000097          	auipc	ra,0x0
    800080a4:	478080e7          	jalr	1144(ra) # 80008518 <__memset>
    800080a8:	00004797          	auipc	a5,0x4
    800080ac:	b4878793          	addi	a5,a5,-1208 # 8000bbf0 <kmem>
    800080b0:	0007b703          	ld	a4,0(a5)
    800080b4:	01813083          	ld	ra,24(sp)
    800080b8:	01013403          	ld	s0,16(sp)
    800080bc:	00e4b023          	sd	a4,0(s1)
    800080c0:	0097b023          	sd	s1,0(a5)
    800080c4:	00813483          	ld	s1,8(sp)
    800080c8:	02010113          	addi	sp,sp,32
    800080cc:	00008067          	ret
    800080d0:	00001517          	auipc	a0,0x1
    800080d4:	62850513          	addi	a0,a0,1576 # 800096f8 <digits+0x18>
    800080d8:	fffff097          	auipc	ra,0xfffff
    800080dc:	354080e7          	jalr	852(ra) # 8000742c <panic>

00000000800080e0 <kalloc>:
    800080e0:	fe010113          	addi	sp,sp,-32
    800080e4:	00813823          	sd	s0,16(sp)
    800080e8:	00913423          	sd	s1,8(sp)
    800080ec:	00113c23          	sd	ra,24(sp)
    800080f0:	02010413          	addi	s0,sp,32
    800080f4:	00004797          	auipc	a5,0x4
    800080f8:	afc78793          	addi	a5,a5,-1284 # 8000bbf0 <kmem>
    800080fc:	0007b483          	ld	s1,0(a5)
    80008100:	02048063          	beqz	s1,80008120 <kalloc+0x40>
    80008104:	0004b703          	ld	a4,0(s1)
    80008108:	00001637          	lui	a2,0x1
    8000810c:	00500593          	li	a1,5
    80008110:	00048513          	mv	a0,s1
    80008114:	00e7b023          	sd	a4,0(a5)
    80008118:	00000097          	auipc	ra,0x0
    8000811c:	400080e7          	jalr	1024(ra) # 80008518 <__memset>
    80008120:	01813083          	ld	ra,24(sp)
    80008124:	01013403          	ld	s0,16(sp)
    80008128:	00048513          	mv	a0,s1
    8000812c:	00813483          	ld	s1,8(sp)
    80008130:	02010113          	addi	sp,sp,32
    80008134:	00008067          	ret

0000000080008138 <initlock>:
    80008138:	ff010113          	addi	sp,sp,-16
    8000813c:	00813423          	sd	s0,8(sp)
    80008140:	01010413          	addi	s0,sp,16
    80008144:	00813403          	ld	s0,8(sp)
    80008148:	00b53423          	sd	a1,8(a0)
    8000814c:	00052023          	sw	zero,0(a0)
    80008150:	00053823          	sd	zero,16(a0)
    80008154:	01010113          	addi	sp,sp,16
    80008158:	00008067          	ret

000000008000815c <acquire>:
    8000815c:	fe010113          	addi	sp,sp,-32
    80008160:	00813823          	sd	s0,16(sp)
    80008164:	00913423          	sd	s1,8(sp)
    80008168:	00113c23          	sd	ra,24(sp)
    8000816c:	01213023          	sd	s2,0(sp)
    80008170:	02010413          	addi	s0,sp,32
    80008174:	00050493          	mv	s1,a0
    80008178:	10002973          	csrr	s2,sstatus
    8000817c:	100027f3          	csrr	a5,sstatus
    80008180:	ffd7f793          	andi	a5,a5,-3
    80008184:	10079073          	csrw	sstatus,a5
    80008188:	fffff097          	auipc	ra,0xfffff
    8000818c:	8e8080e7          	jalr	-1816(ra) # 80006a70 <mycpu>
    80008190:	07852783          	lw	a5,120(a0)
    80008194:	06078e63          	beqz	a5,80008210 <acquire+0xb4>
    80008198:	fffff097          	auipc	ra,0xfffff
    8000819c:	8d8080e7          	jalr	-1832(ra) # 80006a70 <mycpu>
    800081a0:	07852783          	lw	a5,120(a0)
    800081a4:	0004a703          	lw	a4,0(s1)
    800081a8:	0017879b          	addiw	a5,a5,1
    800081ac:	06f52c23          	sw	a5,120(a0)
    800081b0:	04071063          	bnez	a4,800081f0 <acquire+0x94>
    800081b4:	00100713          	li	a4,1
    800081b8:	00070793          	mv	a5,a4
    800081bc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800081c0:	0007879b          	sext.w	a5,a5
    800081c4:	fe079ae3          	bnez	a5,800081b8 <acquire+0x5c>
    800081c8:	0ff0000f          	fence
    800081cc:	fffff097          	auipc	ra,0xfffff
    800081d0:	8a4080e7          	jalr	-1884(ra) # 80006a70 <mycpu>
    800081d4:	01813083          	ld	ra,24(sp)
    800081d8:	01013403          	ld	s0,16(sp)
    800081dc:	00a4b823          	sd	a0,16(s1)
    800081e0:	00013903          	ld	s2,0(sp)
    800081e4:	00813483          	ld	s1,8(sp)
    800081e8:	02010113          	addi	sp,sp,32
    800081ec:	00008067          	ret
    800081f0:	0104b903          	ld	s2,16(s1)
    800081f4:	fffff097          	auipc	ra,0xfffff
    800081f8:	87c080e7          	jalr	-1924(ra) # 80006a70 <mycpu>
    800081fc:	faa91ce3          	bne	s2,a0,800081b4 <acquire+0x58>
    80008200:	00001517          	auipc	a0,0x1
    80008204:	50050513          	addi	a0,a0,1280 # 80009700 <digits+0x20>
    80008208:	fffff097          	auipc	ra,0xfffff
    8000820c:	224080e7          	jalr	548(ra) # 8000742c <panic>
    80008210:	00195913          	srli	s2,s2,0x1
    80008214:	fffff097          	auipc	ra,0xfffff
    80008218:	85c080e7          	jalr	-1956(ra) # 80006a70 <mycpu>
    8000821c:	00197913          	andi	s2,s2,1
    80008220:	07252e23          	sw	s2,124(a0)
    80008224:	f75ff06f          	j	80008198 <acquire+0x3c>

0000000080008228 <release>:
    80008228:	fe010113          	addi	sp,sp,-32
    8000822c:	00813823          	sd	s0,16(sp)
    80008230:	00113c23          	sd	ra,24(sp)
    80008234:	00913423          	sd	s1,8(sp)
    80008238:	01213023          	sd	s2,0(sp)
    8000823c:	02010413          	addi	s0,sp,32
    80008240:	00052783          	lw	a5,0(a0)
    80008244:	00079a63          	bnez	a5,80008258 <release+0x30>
    80008248:	00001517          	auipc	a0,0x1
    8000824c:	4c050513          	addi	a0,a0,1216 # 80009708 <digits+0x28>
    80008250:	fffff097          	auipc	ra,0xfffff
    80008254:	1dc080e7          	jalr	476(ra) # 8000742c <panic>
    80008258:	01053903          	ld	s2,16(a0)
    8000825c:	00050493          	mv	s1,a0
    80008260:	fffff097          	auipc	ra,0xfffff
    80008264:	810080e7          	jalr	-2032(ra) # 80006a70 <mycpu>
    80008268:	fea910e3          	bne	s2,a0,80008248 <release+0x20>
    8000826c:	0004b823          	sd	zero,16(s1)
    80008270:	0ff0000f          	fence
    80008274:	0f50000f          	fence	iorw,ow
    80008278:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000827c:	ffffe097          	auipc	ra,0xffffe
    80008280:	7f4080e7          	jalr	2036(ra) # 80006a70 <mycpu>
    80008284:	100027f3          	csrr	a5,sstatus
    80008288:	0027f793          	andi	a5,a5,2
    8000828c:	04079a63          	bnez	a5,800082e0 <release+0xb8>
    80008290:	07852783          	lw	a5,120(a0)
    80008294:	02f05e63          	blez	a5,800082d0 <release+0xa8>
    80008298:	fff7871b          	addiw	a4,a5,-1
    8000829c:	06e52c23          	sw	a4,120(a0)
    800082a0:	00071c63          	bnez	a4,800082b8 <release+0x90>
    800082a4:	07c52783          	lw	a5,124(a0)
    800082a8:	00078863          	beqz	a5,800082b8 <release+0x90>
    800082ac:	100027f3          	csrr	a5,sstatus
    800082b0:	0027e793          	ori	a5,a5,2
    800082b4:	10079073          	csrw	sstatus,a5
    800082b8:	01813083          	ld	ra,24(sp)
    800082bc:	01013403          	ld	s0,16(sp)
    800082c0:	00813483          	ld	s1,8(sp)
    800082c4:	00013903          	ld	s2,0(sp)
    800082c8:	02010113          	addi	sp,sp,32
    800082cc:	00008067          	ret
    800082d0:	00001517          	auipc	a0,0x1
    800082d4:	45850513          	addi	a0,a0,1112 # 80009728 <digits+0x48>
    800082d8:	fffff097          	auipc	ra,0xfffff
    800082dc:	154080e7          	jalr	340(ra) # 8000742c <panic>
    800082e0:	00001517          	auipc	a0,0x1
    800082e4:	43050513          	addi	a0,a0,1072 # 80009710 <digits+0x30>
    800082e8:	fffff097          	auipc	ra,0xfffff
    800082ec:	144080e7          	jalr	324(ra) # 8000742c <panic>

00000000800082f0 <holding>:
    800082f0:	00052783          	lw	a5,0(a0)
    800082f4:	00079663          	bnez	a5,80008300 <holding+0x10>
    800082f8:	00000513          	li	a0,0
    800082fc:	00008067          	ret
    80008300:	fe010113          	addi	sp,sp,-32
    80008304:	00813823          	sd	s0,16(sp)
    80008308:	00913423          	sd	s1,8(sp)
    8000830c:	00113c23          	sd	ra,24(sp)
    80008310:	02010413          	addi	s0,sp,32
    80008314:	01053483          	ld	s1,16(a0)
    80008318:	ffffe097          	auipc	ra,0xffffe
    8000831c:	758080e7          	jalr	1880(ra) # 80006a70 <mycpu>
    80008320:	01813083          	ld	ra,24(sp)
    80008324:	01013403          	ld	s0,16(sp)
    80008328:	40a48533          	sub	a0,s1,a0
    8000832c:	00153513          	seqz	a0,a0
    80008330:	00813483          	ld	s1,8(sp)
    80008334:	02010113          	addi	sp,sp,32
    80008338:	00008067          	ret

000000008000833c <push_off>:
    8000833c:	fe010113          	addi	sp,sp,-32
    80008340:	00813823          	sd	s0,16(sp)
    80008344:	00113c23          	sd	ra,24(sp)
    80008348:	00913423          	sd	s1,8(sp)
    8000834c:	02010413          	addi	s0,sp,32
    80008350:	100024f3          	csrr	s1,sstatus
    80008354:	100027f3          	csrr	a5,sstatus
    80008358:	ffd7f793          	andi	a5,a5,-3
    8000835c:	10079073          	csrw	sstatus,a5
    80008360:	ffffe097          	auipc	ra,0xffffe
    80008364:	710080e7          	jalr	1808(ra) # 80006a70 <mycpu>
    80008368:	07852783          	lw	a5,120(a0)
    8000836c:	02078663          	beqz	a5,80008398 <push_off+0x5c>
    80008370:	ffffe097          	auipc	ra,0xffffe
    80008374:	700080e7          	jalr	1792(ra) # 80006a70 <mycpu>
    80008378:	07852783          	lw	a5,120(a0)
    8000837c:	01813083          	ld	ra,24(sp)
    80008380:	01013403          	ld	s0,16(sp)
    80008384:	0017879b          	addiw	a5,a5,1
    80008388:	06f52c23          	sw	a5,120(a0)
    8000838c:	00813483          	ld	s1,8(sp)
    80008390:	02010113          	addi	sp,sp,32
    80008394:	00008067          	ret
    80008398:	0014d493          	srli	s1,s1,0x1
    8000839c:	ffffe097          	auipc	ra,0xffffe
    800083a0:	6d4080e7          	jalr	1748(ra) # 80006a70 <mycpu>
    800083a4:	0014f493          	andi	s1,s1,1
    800083a8:	06952e23          	sw	s1,124(a0)
    800083ac:	fc5ff06f          	j	80008370 <push_off+0x34>

00000000800083b0 <pop_off>:
    800083b0:	ff010113          	addi	sp,sp,-16
    800083b4:	00813023          	sd	s0,0(sp)
    800083b8:	00113423          	sd	ra,8(sp)
    800083bc:	01010413          	addi	s0,sp,16
    800083c0:	ffffe097          	auipc	ra,0xffffe
    800083c4:	6b0080e7          	jalr	1712(ra) # 80006a70 <mycpu>
    800083c8:	100027f3          	csrr	a5,sstatus
    800083cc:	0027f793          	andi	a5,a5,2
    800083d0:	04079663          	bnez	a5,8000841c <pop_off+0x6c>
    800083d4:	07852783          	lw	a5,120(a0)
    800083d8:	02f05a63          	blez	a5,8000840c <pop_off+0x5c>
    800083dc:	fff7871b          	addiw	a4,a5,-1
    800083e0:	06e52c23          	sw	a4,120(a0)
    800083e4:	00071c63          	bnez	a4,800083fc <pop_off+0x4c>
    800083e8:	07c52783          	lw	a5,124(a0)
    800083ec:	00078863          	beqz	a5,800083fc <pop_off+0x4c>
    800083f0:	100027f3          	csrr	a5,sstatus
    800083f4:	0027e793          	ori	a5,a5,2
    800083f8:	10079073          	csrw	sstatus,a5
    800083fc:	00813083          	ld	ra,8(sp)
    80008400:	00013403          	ld	s0,0(sp)
    80008404:	01010113          	addi	sp,sp,16
    80008408:	00008067          	ret
    8000840c:	00001517          	auipc	a0,0x1
    80008410:	31c50513          	addi	a0,a0,796 # 80009728 <digits+0x48>
    80008414:	fffff097          	auipc	ra,0xfffff
    80008418:	018080e7          	jalr	24(ra) # 8000742c <panic>
    8000841c:	00001517          	auipc	a0,0x1
    80008420:	2f450513          	addi	a0,a0,756 # 80009710 <digits+0x30>
    80008424:	fffff097          	auipc	ra,0xfffff
    80008428:	008080e7          	jalr	8(ra) # 8000742c <panic>

000000008000842c <push_on>:
    8000842c:	fe010113          	addi	sp,sp,-32
    80008430:	00813823          	sd	s0,16(sp)
    80008434:	00113c23          	sd	ra,24(sp)
    80008438:	00913423          	sd	s1,8(sp)
    8000843c:	02010413          	addi	s0,sp,32
    80008440:	100024f3          	csrr	s1,sstatus
    80008444:	100027f3          	csrr	a5,sstatus
    80008448:	0027e793          	ori	a5,a5,2
    8000844c:	10079073          	csrw	sstatus,a5
    80008450:	ffffe097          	auipc	ra,0xffffe
    80008454:	620080e7          	jalr	1568(ra) # 80006a70 <mycpu>
    80008458:	07852783          	lw	a5,120(a0)
    8000845c:	02078663          	beqz	a5,80008488 <push_on+0x5c>
    80008460:	ffffe097          	auipc	ra,0xffffe
    80008464:	610080e7          	jalr	1552(ra) # 80006a70 <mycpu>
    80008468:	07852783          	lw	a5,120(a0)
    8000846c:	01813083          	ld	ra,24(sp)
    80008470:	01013403          	ld	s0,16(sp)
    80008474:	0017879b          	addiw	a5,a5,1
    80008478:	06f52c23          	sw	a5,120(a0)
    8000847c:	00813483          	ld	s1,8(sp)
    80008480:	02010113          	addi	sp,sp,32
    80008484:	00008067          	ret
    80008488:	0014d493          	srli	s1,s1,0x1
    8000848c:	ffffe097          	auipc	ra,0xffffe
    80008490:	5e4080e7          	jalr	1508(ra) # 80006a70 <mycpu>
    80008494:	0014f493          	andi	s1,s1,1
    80008498:	06952e23          	sw	s1,124(a0)
    8000849c:	fc5ff06f          	j	80008460 <push_on+0x34>

00000000800084a0 <pop_on>:
    800084a0:	ff010113          	addi	sp,sp,-16
    800084a4:	00813023          	sd	s0,0(sp)
    800084a8:	00113423          	sd	ra,8(sp)
    800084ac:	01010413          	addi	s0,sp,16
    800084b0:	ffffe097          	auipc	ra,0xffffe
    800084b4:	5c0080e7          	jalr	1472(ra) # 80006a70 <mycpu>
    800084b8:	100027f3          	csrr	a5,sstatus
    800084bc:	0027f793          	andi	a5,a5,2
    800084c0:	04078463          	beqz	a5,80008508 <pop_on+0x68>
    800084c4:	07852783          	lw	a5,120(a0)
    800084c8:	02f05863          	blez	a5,800084f8 <pop_on+0x58>
    800084cc:	fff7879b          	addiw	a5,a5,-1
    800084d0:	06f52c23          	sw	a5,120(a0)
    800084d4:	07853783          	ld	a5,120(a0)
    800084d8:	00079863          	bnez	a5,800084e8 <pop_on+0x48>
    800084dc:	100027f3          	csrr	a5,sstatus
    800084e0:	ffd7f793          	andi	a5,a5,-3
    800084e4:	10079073          	csrw	sstatus,a5
    800084e8:	00813083          	ld	ra,8(sp)
    800084ec:	00013403          	ld	s0,0(sp)
    800084f0:	01010113          	addi	sp,sp,16
    800084f4:	00008067          	ret
    800084f8:	00001517          	auipc	a0,0x1
    800084fc:	25850513          	addi	a0,a0,600 # 80009750 <digits+0x70>
    80008500:	fffff097          	auipc	ra,0xfffff
    80008504:	f2c080e7          	jalr	-212(ra) # 8000742c <panic>
    80008508:	00001517          	auipc	a0,0x1
    8000850c:	22850513          	addi	a0,a0,552 # 80009730 <digits+0x50>
    80008510:	fffff097          	auipc	ra,0xfffff
    80008514:	f1c080e7          	jalr	-228(ra) # 8000742c <panic>

0000000080008518 <__memset>:
    80008518:	ff010113          	addi	sp,sp,-16
    8000851c:	00813423          	sd	s0,8(sp)
    80008520:	01010413          	addi	s0,sp,16
    80008524:	1a060e63          	beqz	a2,800086e0 <__memset+0x1c8>
    80008528:	40a007b3          	neg	a5,a0
    8000852c:	0077f793          	andi	a5,a5,7
    80008530:	00778693          	addi	a3,a5,7
    80008534:	00b00813          	li	a6,11
    80008538:	0ff5f593          	andi	a1,a1,255
    8000853c:	fff6071b          	addiw	a4,a2,-1
    80008540:	1b06e663          	bltu	a3,a6,800086ec <__memset+0x1d4>
    80008544:	1cd76463          	bltu	a4,a3,8000870c <__memset+0x1f4>
    80008548:	1a078e63          	beqz	a5,80008704 <__memset+0x1ec>
    8000854c:	00b50023          	sb	a1,0(a0)
    80008550:	00100713          	li	a4,1
    80008554:	1ae78463          	beq	a5,a4,800086fc <__memset+0x1e4>
    80008558:	00b500a3          	sb	a1,1(a0)
    8000855c:	00200713          	li	a4,2
    80008560:	1ae78a63          	beq	a5,a4,80008714 <__memset+0x1fc>
    80008564:	00b50123          	sb	a1,2(a0)
    80008568:	00300713          	li	a4,3
    8000856c:	18e78463          	beq	a5,a4,800086f4 <__memset+0x1dc>
    80008570:	00b501a3          	sb	a1,3(a0)
    80008574:	00400713          	li	a4,4
    80008578:	1ae78263          	beq	a5,a4,8000871c <__memset+0x204>
    8000857c:	00b50223          	sb	a1,4(a0)
    80008580:	00500713          	li	a4,5
    80008584:	1ae78063          	beq	a5,a4,80008724 <__memset+0x20c>
    80008588:	00b502a3          	sb	a1,5(a0)
    8000858c:	00700713          	li	a4,7
    80008590:	18e79e63          	bne	a5,a4,8000872c <__memset+0x214>
    80008594:	00b50323          	sb	a1,6(a0)
    80008598:	00700e93          	li	t4,7
    8000859c:	00859713          	slli	a4,a1,0x8
    800085a0:	00e5e733          	or	a4,a1,a4
    800085a4:	01059e13          	slli	t3,a1,0x10
    800085a8:	01c76e33          	or	t3,a4,t3
    800085ac:	01859313          	slli	t1,a1,0x18
    800085b0:	006e6333          	or	t1,t3,t1
    800085b4:	02059893          	slli	a7,a1,0x20
    800085b8:	40f60e3b          	subw	t3,a2,a5
    800085bc:	011368b3          	or	a7,t1,a7
    800085c0:	02859813          	slli	a6,a1,0x28
    800085c4:	0108e833          	or	a6,a7,a6
    800085c8:	03059693          	slli	a3,a1,0x30
    800085cc:	003e589b          	srliw	a7,t3,0x3
    800085d0:	00d866b3          	or	a3,a6,a3
    800085d4:	03859713          	slli	a4,a1,0x38
    800085d8:	00389813          	slli	a6,a7,0x3
    800085dc:	00f507b3          	add	a5,a0,a5
    800085e0:	00e6e733          	or	a4,a3,a4
    800085e4:	000e089b          	sext.w	a7,t3
    800085e8:	00f806b3          	add	a3,a6,a5
    800085ec:	00e7b023          	sd	a4,0(a5)
    800085f0:	00878793          	addi	a5,a5,8
    800085f4:	fed79ce3          	bne	a5,a3,800085ec <__memset+0xd4>
    800085f8:	ff8e7793          	andi	a5,t3,-8
    800085fc:	0007871b          	sext.w	a4,a5
    80008600:	01d787bb          	addw	a5,a5,t4
    80008604:	0ce88e63          	beq	a7,a4,800086e0 <__memset+0x1c8>
    80008608:	00f50733          	add	a4,a0,a5
    8000860c:	00b70023          	sb	a1,0(a4)
    80008610:	0017871b          	addiw	a4,a5,1
    80008614:	0cc77663          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    80008618:	00e50733          	add	a4,a0,a4
    8000861c:	00b70023          	sb	a1,0(a4)
    80008620:	0027871b          	addiw	a4,a5,2
    80008624:	0ac77e63          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    80008628:	00e50733          	add	a4,a0,a4
    8000862c:	00b70023          	sb	a1,0(a4)
    80008630:	0037871b          	addiw	a4,a5,3
    80008634:	0ac77663          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    80008638:	00e50733          	add	a4,a0,a4
    8000863c:	00b70023          	sb	a1,0(a4)
    80008640:	0047871b          	addiw	a4,a5,4
    80008644:	08c77e63          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    80008648:	00e50733          	add	a4,a0,a4
    8000864c:	00b70023          	sb	a1,0(a4)
    80008650:	0057871b          	addiw	a4,a5,5
    80008654:	08c77663          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    80008658:	00e50733          	add	a4,a0,a4
    8000865c:	00b70023          	sb	a1,0(a4)
    80008660:	0067871b          	addiw	a4,a5,6
    80008664:	06c77e63          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    80008668:	00e50733          	add	a4,a0,a4
    8000866c:	00b70023          	sb	a1,0(a4)
    80008670:	0077871b          	addiw	a4,a5,7
    80008674:	06c77663          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    80008678:	00e50733          	add	a4,a0,a4
    8000867c:	00b70023          	sb	a1,0(a4)
    80008680:	0087871b          	addiw	a4,a5,8
    80008684:	04c77e63          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    80008688:	00e50733          	add	a4,a0,a4
    8000868c:	00b70023          	sb	a1,0(a4)
    80008690:	0097871b          	addiw	a4,a5,9
    80008694:	04c77663          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    80008698:	00e50733          	add	a4,a0,a4
    8000869c:	00b70023          	sb	a1,0(a4)
    800086a0:	00a7871b          	addiw	a4,a5,10
    800086a4:	02c77e63          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    800086a8:	00e50733          	add	a4,a0,a4
    800086ac:	00b70023          	sb	a1,0(a4)
    800086b0:	00b7871b          	addiw	a4,a5,11
    800086b4:	02c77663          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    800086b8:	00e50733          	add	a4,a0,a4
    800086bc:	00b70023          	sb	a1,0(a4)
    800086c0:	00c7871b          	addiw	a4,a5,12
    800086c4:	00c77e63          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    800086c8:	00e50733          	add	a4,a0,a4
    800086cc:	00b70023          	sb	a1,0(a4)
    800086d0:	00d7879b          	addiw	a5,a5,13
    800086d4:	00c7f663          	bgeu	a5,a2,800086e0 <__memset+0x1c8>
    800086d8:	00f507b3          	add	a5,a0,a5
    800086dc:	00b78023          	sb	a1,0(a5)
    800086e0:	00813403          	ld	s0,8(sp)
    800086e4:	01010113          	addi	sp,sp,16
    800086e8:	00008067          	ret
    800086ec:	00b00693          	li	a3,11
    800086f0:	e55ff06f          	j	80008544 <__memset+0x2c>
    800086f4:	00300e93          	li	t4,3
    800086f8:	ea5ff06f          	j	8000859c <__memset+0x84>
    800086fc:	00100e93          	li	t4,1
    80008700:	e9dff06f          	j	8000859c <__memset+0x84>
    80008704:	00000e93          	li	t4,0
    80008708:	e95ff06f          	j	8000859c <__memset+0x84>
    8000870c:	00000793          	li	a5,0
    80008710:	ef9ff06f          	j	80008608 <__memset+0xf0>
    80008714:	00200e93          	li	t4,2
    80008718:	e85ff06f          	j	8000859c <__memset+0x84>
    8000871c:	00400e93          	li	t4,4
    80008720:	e7dff06f          	j	8000859c <__memset+0x84>
    80008724:	00500e93          	li	t4,5
    80008728:	e75ff06f          	j	8000859c <__memset+0x84>
    8000872c:	00600e93          	li	t4,6
    80008730:	e6dff06f          	j	8000859c <__memset+0x84>

0000000080008734 <__memmove>:
    80008734:	ff010113          	addi	sp,sp,-16
    80008738:	00813423          	sd	s0,8(sp)
    8000873c:	01010413          	addi	s0,sp,16
    80008740:	0e060863          	beqz	a2,80008830 <__memmove+0xfc>
    80008744:	fff6069b          	addiw	a3,a2,-1
    80008748:	0006881b          	sext.w	a6,a3
    8000874c:	0ea5e863          	bltu	a1,a0,8000883c <__memmove+0x108>
    80008750:	00758713          	addi	a4,a1,7
    80008754:	00a5e7b3          	or	a5,a1,a0
    80008758:	40a70733          	sub	a4,a4,a0
    8000875c:	0077f793          	andi	a5,a5,7
    80008760:	00f73713          	sltiu	a4,a4,15
    80008764:	00174713          	xori	a4,a4,1
    80008768:	0017b793          	seqz	a5,a5
    8000876c:	00e7f7b3          	and	a5,a5,a4
    80008770:	10078863          	beqz	a5,80008880 <__memmove+0x14c>
    80008774:	00900793          	li	a5,9
    80008778:	1107f463          	bgeu	a5,a6,80008880 <__memmove+0x14c>
    8000877c:	0036581b          	srliw	a6,a2,0x3
    80008780:	fff8081b          	addiw	a6,a6,-1
    80008784:	02081813          	slli	a6,a6,0x20
    80008788:	01d85893          	srli	a7,a6,0x1d
    8000878c:	00858813          	addi	a6,a1,8
    80008790:	00058793          	mv	a5,a1
    80008794:	00050713          	mv	a4,a0
    80008798:	01088833          	add	a6,a7,a6
    8000879c:	0007b883          	ld	a7,0(a5)
    800087a0:	00878793          	addi	a5,a5,8
    800087a4:	00870713          	addi	a4,a4,8
    800087a8:	ff173c23          	sd	a7,-8(a4)
    800087ac:	ff0798e3          	bne	a5,a6,8000879c <__memmove+0x68>
    800087b0:	ff867713          	andi	a4,a2,-8
    800087b4:	02071793          	slli	a5,a4,0x20
    800087b8:	0207d793          	srli	a5,a5,0x20
    800087bc:	00f585b3          	add	a1,a1,a5
    800087c0:	40e686bb          	subw	a3,a3,a4
    800087c4:	00f507b3          	add	a5,a0,a5
    800087c8:	06e60463          	beq	a2,a4,80008830 <__memmove+0xfc>
    800087cc:	0005c703          	lbu	a4,0(a1)
    800087d0:	00e78023          	sb	a4,0(a5)
    800087d4:	04068e63          	beqz	a3,80008830 <__memmove+0xfc>
    800087d8:	0015c603          	lbu	a2,1(a1)
    800087dc:	00100713          	li	a4,1
    800087e0:	00c780a3          	sb	a2,1(a5)
    800087e4:	04e68663          	beq	a3,a4,80008830 <__memmove+0xfc>
    800087e8:	0025c603          	lbu	a2,2(a1)
    800087ec:	00200713          	li	a4,2
    800087f0:	00c78123          	sb	a2,2(a5)
    800087f4:	02e68e63          	beq	a3,a4,80008830 <__memmove+0xfc>
    800087f8:	0035c603          	lbu	a2,3(a1)
    800087fc:	00300713          	li	a4,3
    80008800:	00c781a3          	sb	a2,3(a5)
    80008804:	02e68663          	beq	a3,a4,80008830 <__memmove+0xfc>
    80008808:	0045c603          	lbu	a2,4(a1)
    8000880c:	00400713          	li	a4,4
    80008810:	00c78223          	sb	a2,4(a5)
    80008814:	00e68e63          	beq	a3,a4,80008830 <__memmove+0xfc>
    80008818:	0055c603          	lbu	a2,5(a1)
    8000881c:	00500713          	li	a4,5
    80008820:	00c782a3          	sb	a2,5(a5)
    80008824:	00e68663          	beq	a3,a4,80008830 <__memmove+0xfc>
    80008828:	0065c703          	lbu	a4,6(a1)
    8000882c:	00e78323          	sb	a4,6(a5)
    80008830:	00813403          	ld	s0,8(sp)
    80008834:	01010113          	addi	sp,sp,16
    80008838:	00008067          	ret
    8000883c:	02061713          	slli	a4,a2,0x20
    80008840:	02075713          	srli	a4,a4,0x20
    80008844:	00e587b3          	add	a5,a1,a4
    80008848:	f0f574e3          	bgeu	a0,a5,80008750 <__memmove+0x1c>
    8000884c:	02069613          	slli	a2,a3,0x20
    80008850:	02065613          	srli	a2,a2,0x20
    80008854:	fff64613          	not	a2,a2
    80008858:	00e50733          	add	a4,a0,a4
    8000885c:	00c78633          	add	a2,a5,a2
    80008860:	fff7c683          	lbu	a3,-1(a5)
    80008864:	fff78793          	addi	a5,a5,-1
    80008868:	fff70713          	addi	a4,a4,-1
    8000886c:	00d70023          	sb	a3,0(a4)
    80008870:	fec798e3          	bne	a5,a2,80008860 <__memmove+0x12c>
    80008874:	00813403          	ld	s0,8(sp)
    80008878:	01010113          	addi	sp,sp,16
    8000887c:	00008067          	ret
    80008880:	02069713          	slli	a4,a3,0x20
    80008884:	02075713          	srli	a4,a4,0x20
    80008888:	00170713          	addi	a4,a4,1
    8000888c:	00e50733          	add	a4,a0,a4
    80008890:	00050793          	mv	a5,a0
    80008894:	0005c683          	lbu	a3,0(a1)
    80008898:	00178793          	addi	a5,a5,1
    8000889c:	00158593          	addi	a1,a1,1
    800088a0:	fed78fa3          	sb	a3,-1(a5)
    800088a4:	fee798e3          	bne	a5,a4,80008894 <__memmove+0x160>
    800088a8:	f89ff06f          	j	80008830 <__memmove+0xfc>

00000000800088ac <__putc>:
    800088ac:	fe010113          	addi	sp,sp,-32
    800088b0:	00813823          	sd	s0,16(sp)
    800088b4:	00113c23          	sd	ra,24(sp)
    800088b8:	02010413          	addi	s0,sp,32
    800088bc:	00050793          	mv	a5,a0
    800088c0:	fef40593          	addi	a1,s0,-17
    800088c4:	00100613          	li	a2,1
    800088c8:	00000513          	li	a0,0
    800088cc:	fef407a3          	sb	a5,-17(s0)
    800088d0:	fffff097          	auipc	ra,0xfffff
    800088d4:	b3c080e7          	jalr	-1220(ra) # 8000740c <console_write>
    800088d8:	01813083          	ld	ra,24(sp)
    800088dc:	01013403          	ld	s0,16(sp)
    800088e0:	02010113          	addi	sp,sp,32
    800088e4:	00008067          	ret

00000000800088e8 <__getc>:
    800088e8:	fe010113          	addi	sp,sp,-32
    800088ec:	00813823          	sd	s0,16(sp)
    800088f0:	00113c23          	sd	ra,24(sp)
    800088f4:	02010413          	addi	s0,sp,32
    800088f8:	fe840593          	addi	a1,s0,-24
    800088fc:	00100613          	li	a2,1
    80008900:	00000513          	li	a0,0
    80008904:	fffff097          	auipc	ra,0xfffff
    80008908:	ae8080e7          	jalr	-1304(ra) # 800073ec <console_read>
    8000890c:	fe844503          	lbu	a0,-24(s0)
    80008910:	01813083          	ld	ra,24(sp)
    80008914:	01013403          	ld	s0,16(sp)
    80008918:	02010113          	addi	sp,sp,32
    8000891c:	00008067          	ret

0000000080008920 <console_handler>:
    80008920:	fe010113          	addi	sp,sp,-32
    80008924:	00813823          	sd	s0,16(sp)
    80008928:	00113c23          	sd	ra,24(sp)
    8000892c:	00913423          	sd	s1,8(sp)
    80008930:	02010413          	addi	s0,sp,32
    80008934:	14202773          	csrr	a4,scause
    80008938:	100027f3          	csrr	a5,sstatus
    8000893c:	0027f793          	andi	a5,a5,2
    80008940:	06079e63          	bnez	a5,800089bc <console_handler+0x9c>
    80008944:	00074c63          	bltz	a4,8000895c <console_handler+0x3c>
    80008948:	01813083          	ld	ra,24(sp)
    8000894c:	01013403          	ld	s0,16(sp)
    80008950:	00813483          	ld	s1,8(sp)
    80008954:	02010113          	addi	sp,sp,32
    80008958:	00008067          	ret
    8000895c:	0ff77713          	andi	a4,a4,255
    80008960:	00900793          	li	a5,9
    80008964:	fef712e3          	bne	a4,a5,80008948 <console_handler+0x28>
    80008968:	ffffe097          	auipc	ra,0xffffe
    8000896c:	6dc080e7          	jalr	1756(ra) # 80007044 <plic_claim>
    80008970:	00a00793          	li	a5,10
    80008974:	00050493          	mv	s1,a0
    80008978:	02f50c63          	beq	a0,a5,800089b0 <console_handler+0x90>
    8000897c:	fc0506e3          	beqz	a0,80008948 <console_handler+0x28>
    80008980:	00050593          	mv	a1,a0
    80008984:	00001517          	auipc	a0,0x1
    80008988:	cd450513          	addi	a0,a0,-812 # 80009658 <_ZL6digits+0x130>
    8000898c:	fffff097          	auipc	ra,0xfffff
    80008990:	afc080e7          	jalr	-1284(ra) # 80007488 <__printf>
    80008994:	01013403          	ld	s0,16(sp)
    80008998:	01813083          	ld	ra,24(sp)
    8000899c:	00048513          	mv	a0,s1
    800089a0:	00813483          	ld	s1,8(sp)
    800089a4:	02010113          	addi	sp,sp,32
    800089a8:	ffffe317          	auipc	t1,0xffffe
    800089ac:	6d430067          	jr	1748(t1) # 8000707c <plic_complete>
    800089b0:	fffff097          	auipc	ra,0xfffff
    800089b4:	3e0080e7          	jalr	992(ra) # 80007d90 <uartintr>
    800089b8:	fddff06f          	j	80008994 <console_handler+0x74>
    800089bc:	00001517          	auipc	a0,0x1
    800089c0:	d9c50513          	addi	a0,a0,-612 # 80009758 <digits+0x78>
    800089c4:	fffff097          	auipc	ra,0xfffff
    800089c8:	a68080e7          	jalr	-1432(ra) # 8000742c <panic>
	...
