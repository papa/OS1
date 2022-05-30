
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
    8000001c:	029060ef          	jal	ra,80006844 <start>

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
    80001088:	4dd020ef          	jal	ra,80003d64 <_ZN5Riscv20handleSupervisorTrapEv>

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
}
    80001550:	00813403          	ld	s0,8(sp)
    80001554:	01010113          	addi	sp,sp,16
    80001558:	00008067          	ret

000000008000155c <sysCallGetCharOutput>:

char sysCallGetCharOutput()
{
    8000155c:	ff010113          	addi	sp,sp,-16
    80001560:	00813423          	sd	s0,8(sp)
    80001564:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80001568:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    8000156c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001570:	00050513          	mv	a0,a0
    return (char)result;
}
    80001574:	0ff57513          	andi	a0,a0,255
    80001578:	00813403          	ld	s0,8(sp)
    8000157c:	01010113          	addi	sp,sp,16
    80001580:	00008067          	ret

0000000080001584 <_Z4idlePv>:
#include "../h/Tests.hpp"
#include "../lib/console.h"
#include "../test/printing.hpp"

void idle(void* args)
{
    80001584:	ff010113          	addi	sp,sp,-16
    80001588:	00113423          	sd	ra,8(sp)
    8000158c:	00813023          	sd	s0,0(sp)
    80001590:	01010413          	addi	s0,sp,16
    while(true)
    {
        printString("Idle\n");
    80001594:	00008517          	auipc	a0,0x8
    80001598:	a8c50513          	addi	a0,a0,-1396 # 80009020 <CONSOLE_STATUS+0x10>
    8000159c:	00004097          	auipc	ra,0x4
    800015a0:	790080e7          	jalr	1936(ra) # 80005d2c <_Z11printStringPKc>
        thread_dispatch();
    800015a4:	00000097          	auipc	ra,0x0
    800015a8:	d90080e7          	jalr	-624(ra) # 80001334 <thread_dispatch>
    while(true)
    800015ac:	fe9ff06f          	j	80001594 <_Z4idlePv+0x10>

00000000800015b0 <_Z15thread1FunctionPv>:
    }
}

void thread1Function(void* p)
{
    800015b0:	fe010113          	addi	sp,sp,-32
    800015b4:	00113c23          	sd	ra,24(sp)
    800015b8:	00813823          	sd	s0,16(sp)
    800015bc:	00913423          	sd	s1,8(sp)
    800015c0:	02010413          	addi	s0,sp,32
    printString("Thread 1 started...\n");
    800015c4:	00008517          	auipc	a0,0x8
    800015c8:	a6450513          	addi	a0,a0,-1436 # 80009028 <CONSOLE_STATUS+0x18>
    800015cc:	00004097          	auipc	ra,0x4
    800015d0:	760080e7          	jalr	1888(ra) # 80005d2c <_Z11printStringPKc>
    uint64 num = 10000;
    for(uint64 i = 0; i < num;i++)
    800015d4:	00000493          	li	s1,0
    800015d8:	0440006f          	j	8000161c <_Z15thread1FunctionPv+0x6c>
    {
        if(i % 150 == 0 && i > 0)
            thread_dispatch();
    800015dc:	00000097          	auipc	ra,0x0
    800015e0:	d58080e7          	jalr	-680(ra) # 80001334 <thread_dispatch>
        printString("i : ");
    800015e4:	00008517          	auipc	a0,0x8
    800015e8:	a5c50513          	addi	a0,a0,-1444 # 80009040 <CONSOLE_STATUS+0x30>
    800015ec:	00004097          	auipc	ra,0x4
    800015f0:	740080e7          	jalr	1856(ra) # 80005d2c <_Z11printStringPKc>
        printInt(i);
    800015f4:	00000613          	li	a2,0
    800015f8:	00a00593          	li	a1,10
    800015fc:	0004851b          	sext.w	a0,s1
    80001600:	00005097          	auipc	ra,0x5
    80001604:	8c4080e7          	jalr	-1852(ra) # 80005ec4 <_Z8printIntiii>
        printString("\n");
    80001608:	00008517          	auipc	a0,0x8
    8000160c:	af850513          	addi	a0,a0,-1288 # 80009100 <CONSOLE_STATUS+0xf0>
    80001610:	00004097          	auipc	ra,0x4
    80001614:	71c080e7          	jalr	1820(ra) # 80005d2c <_Z11printStringPKc>
    for(uint64 i = 0; i < num;i++)
    80001618:	00148493          	addi	s1,s1,1
    8000161c:	000027b7          	lui	a5,0x2
    80001620:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001624:	0097ec63          	bltu	a5,s1,8000163c <_Z15thread1FunctionPv+0x8c>
        if(i % 150 == 0 && i > 0)
    80001628:	09600793          	li	a5,150
    8000162c:	02f4f7b3          	remu	a5,s1,a5
    80001630:	fa079ae3          	bnez	a5,800015e4 <_Z15thread1FunctionPv+0x34>
    80001634:	fa0488e3          	beqz	s1,800015e4 <_Z15thread1FunctionPv+0x34>
    80001638:	fa5ff06f          	j	800015dc <_Z15thread1FunctionPv+0x2c>
    }
}
    8000163c:	01813083          	ld	ra,24(sp)
    80001640:	01013403          	ld	s0,16(sp)
    80001644:	00813483          	ld	s1,8(sp)
    80001648:	02010113          	addi	sp,sp,32
    8000164c:	00008067          	ret

0000000080001650 <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    80001650:	fe010113          	addi	sp,sp,-32
    80001654:	00113c23          	sd	ra,24(sp)
    80001658:	00813823          	sd	s0,16(sp)
    8000165c:	00913423          	sd	s1,8(sp)
    80001660:	02010413          	addi	s0,sp,32
    printString("Thread 2 started...\n");
    80001664:	00008517          	auipc	a0,0x8
    80001668:	9e450513          	addi	a0,a0,-1564 # 80009048 <CONSOLE_STATUS+0x38>
    8000166c:	00004097          	auipc	ra,0x4
    80001670:	6c0080e7          	jalr	1728(ra) # 80005d2c <_Z11printStringPKc>
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    80001674:	00000493          	li	s1,0
    80001678:	0440006f          	j	800016bc <_Z15thread2FunctionPv+0x6c>
    {
        if(j % 50 == 0 && j > 0)
            thread_dispatch();
    8000167c:	00000097          	auipc	ra,0x0
    80001680:	cb8080e7          	jalr	-840(ra) # 80001334 <thread_dispatch>
        printString("j : ");
    80001684:	00008517          	auipc	a0,0x8
    80001688:	9dc50513          	addi	a0,a0,-1572 # 80009060 <CONSOLE_STATUS+0x50>
    8000168c:	00004097          	auipc	ra,0x4
    80001690:	6a0080e7          	jalr	1696(ra) # 80005d2c <_Z11printStringPKc>
        printInt(j);
    80001694:	00000613          	li	a2,0
    80001698:	00a00593          	li	a1,10
    8000169c:	0004851b          	sext.w	a0,s1
    800016a0:	00005097          	auipc	ra,0x5
    800016a4:	824080e7          	jalr	-2012(ra) # 80005ec4 <_Z8printIntiii>
        printString("\n");
    800016a8:	00008517          	auipc	a0,0x8
    800016ac:	a5850513          	addi	a0,a0,-1448 # 80009100 <CONSOLE_STATUS+0xf0>
    800016b0:	00004097          	auipc	ra,0x4
    800016b4:	67c080e7          	jalr	1660(ra) # 80005d2c <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    800016b8:	00148493          	addi	s1,s1,1
    800016bc:	000027b7          	lui	a5,0x2
    800016c0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800016c4:	0097ec63          	bltu	a5,s1,800016dc <_Z15thread2FunctionPv+0x8c>
        if(j % 50 == 0 && j > 0)
    800016c8:	03200793          	li	a5,50
    800016cc:	02f4f7b3          	remu	a5,s1,a5
    800016d0:	fa079ae3          	bnez	a5,80001684 <_Z15thread2FunctionPv+0x34>
    800016d4:	fa0488e3          	beqz	s1,80001684 <_Z15thread2FunctionPv+0x34>
    800016d8:	fa5ff06f          	j	8000167c <_Z15thread2FunctionPv+0x2c>
    }
}
    800016dc:	01813083          	ld	ra,24(sp)
    800016e0:	01013403          	ld	s0,16(sp)
    800016e4:	00813483          	ld	s1,8(sp)
    800016e8:	02010113          	addi	sp,sp,32
    800016ec:	00008067          	ret

00000000800016f0 <_ZN12TestPeriodic18periodicActivationEv>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {

}

void TestPeriodic::periodicActivation()
{
    800016f0:	fe010113          	addi	sp,sp,-32
    800016f4:	00113c23          	sd	ra,24(sp)
    800016f8:	00813823          	sd	s0,16(sp)
    800016fc:	00913423          	sd	s1,8(sp)
    80001700:	02010413          	addi	s0,sp,32
    for(int i = 0 ; i < 10000;i++)
    80001704:	00000493          	li	s1,0
    80001708:	000027b7          	lui	a5,0x2
    8000170c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001710:	0297c863          	blt	a5,s1,80001740 <_ZN12TestPeriodic18periodicActivationEv+0x50>
    {
        printString("i : ");
    80001714:	00008517          	auipc	a0,0x8
    80001718:	92c50513          	addi	a0,a0,-1748 # 80009040 <CONSOLE_STATUS+0x30>
    8000171c:	00004097          	auipc	ra,0x4
    80001720:	610080e7          	jalr	1552(ra) # 80005d2c <_Z11printStringPKc>
        printInt(i);
    80001724:	00000613          	li	a2,0
    80001728:	00a00593          	li	a1,10
    8000172c:	00048513          	mv	a0,s1
    80001730:	00004097          	auipc	ra,0x4
    80001734:	794080e7          	jalr	1940(ra) # 80005ec4 <_Z8printIntiii>
    for(int i = 0 ; i < 10000;i++)
    80001738:	0014849b          	addiw	s1,s1,1
    8000173c:	fcdff06f          	j	80001708 <_ZN12TestPeriodic18periodicActivationEv+0x18>
    }
}
    80001740:	01813083          	ld	ra,24(sp)
    80001744:	01013403          	ld	s0,16(sp)
    80001748:	00813483          	ld	s1,8(sp)
    8000174c:	02010113          	addi	sp,sp,32
    80001750:	00008067          	ret

0000000080001754 <_Z20thread2FunctionTest2Pv>:
{
    80001754:	fe010113          	addi	sp,sp,-32
    80001758:	00113c23          	sd	ra,24(sp)
    8000175c:	00813823          	sd	s0,16(sp)
    80001760:	00913423          	sd	s1,8(sp)
    80001764:	02010413          	addi	s0,sp,32
    printString("Thread 2 started...\n");
    80001768:	00008517          	auipc	a0,0x8
    8000176c:	8e050513          	addi	a0,a0,-1824 # 80009048 <CONSOLE_STATUS+0x38>
    80001770:	00004097          	auipc	ra,0x4
    80001774:	5bc080e7          	jalr	1468(ra) # 80005d2c <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    80001778:	00000493          	li	s1,0
    8000177c:	0500006f          	j	800017cc <_Z20thread2FunctionTest2Pv+0x78>
            thread_exit();
    80001780:	00000097          	auipc	ra,0x0
    80001784:	bd4080e7          	jalr	-1068(ra) # 80001354 <thread_exit>
    80001788:	0580006f          	j	800017e0 <_Z20thread2FunctionTest2Pv+0x8c>
            thread_dispatch();
    8000178c:	00000097          	auipc	ra,0x0
    80001790:	ba8080e7          	jalr	-1112(ra) # 80001334 <thread_dispatch>
        printString("j : ");
    80001794:	00008517          	auipc	a0,0x8
    80001798:	8cc50513          	addi	a0,a0,-1844 # 80009060 <CONSOLE_STATUS+0x50>
    8000179c:	00004097          	auipc	ra,0x4
    800017a0:	590080e7          	jalr	1424(ra) # 80005d2c <_Z11printStringPKc>
        printInt(j);
    800017a4:	00000613          	li	a2,0
    800017a8:	00a00593          	li	a1,10
    800017ac:	0004851b          	sext.w	a0,s1
    800017b0:	00004097          	auipc	ra,0x4
    800017b4:	714080e7          	jalr	1812(ra) # 80005ec4 <_Z8printIntiii>
        printString("\n");
    800017b8:	00008517          	auipc	a0,0x8
    800017bc:	94850513          	addi	a0,a0,-1720 # 80009100 <CONSOLE_STATUS+0xf0>
    800017c0:	00004097          	auipc	ra,0x4
    800017c4:	56c080e7          	jalr	1388(ra) # 80005d2c <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    800017c8:	00148493          	addi	s1,s1,1
    800017cc:	000027b7          	lui	a5,0x2
    800017d0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800017d4:	0297e063          	bltu	a5,s1,800017f4 <_Z20thread2FunctionTest2Pv+0xa0>
        if(j == 200)
    800017d8:	0c800793          	li	a5,200
    800017dc:	faf482e3          	beq	s1,a5,80001780 <_Z20thread2FunctionTest2Pv+0x2c>
        if(j % 50 == 0 && j > 0)
    800017e0:	03200793          	li	a5,50
    800017e4:	02f4f7b3          	remu	a5,s1,a5
    800017e8:	fa0796e3          	bnez	a5,80001794 <_Z20thread2FunctionTest2Pv+0x40>
    800017ec:	fa0484e3          	beqz	s1,80001794 <_Z20thread2FunctionTest2Pv+0x40>
    800017f0:	f9dff06f          	j	8000178c <_Z20thread2FunctionTest2Pv+0x38>
}
    800017f4:	01813083          	ld	ra,24(sp)
    800017f8:	01013403          	ld	s0,16(sp)
    800017fc:	00813483          	ld	s1,8(sp)
    80001800:	02010113          	addi	sp,sp,32
    80001804:	00008067          	ret

0000000080001808 <_Z9consumerAPv>:
sem_t spaceAvailable, itemAvailable;
char string[11] = "this is ni";

void consumerA(void *arg)
{
    while(head!=10)
    80001808:	0000a717          	auipc	a4,0xa
    8000180c:	3f872703          	lw	a4,1016(a4) # 8000bc00 <head>
    80001810:	00a00793          	li	a5,10
    80001814:	06f70c63          	beq	a4,a5,8000188c <_Z9consumerAPv+0x84>
{
    80001818:	fe010113          	addi	sp,sp,-32
    8000181c:	00113c23          	sd	ra,24(sp)
    80001820:	00813823          	sd	s0,16(sp)
    80001824:	00913423          	sd	s1,8(sp)
    80001828:	02010413          	addi	s0,sp,32
    {
        sem_wait(itemAvailable);
    8000182c:	0000a497          	auipc	s1,0xa
    80001830:	3d448493          	addi	s1,s1,980 # 8000bc00 <head>
    80001834:	0084b503          	ld	a0,8(s1)
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	ba8080e7          	jalr	-1112(ra) # 800013e0 <sem_wait>
        __putc(buffer[head++]);
    80001840:	0004a783          	lw	a5,0(s1)
    80001844:	0017871b          	addiw	a4,a5,1
    80001848:	00e4a023          	sw	a4,0(s1)
    8000184c:	00f487b3          	add	a5,s1,a5
    80001850:	0107c503          	lbu	a0,16(a5)
    80001854:	00007097          	auipc	ra,0x7
    80001858:	0b8080e7          	jalr	184(ra) # 8000890c <__putc>
        sem_signal(spaceAvailable);
    8000185c:	0204b503          	ld	a0,32(s1)
    80001860:	00000097          	auipc	ra,0x0
    80001864:	bac080e7          	jalr	-1108(ra) # 8000140c <sem_signal>
    while(head!=10)
    80001868:	0000a717          	auipc	a4,0xa
    8000186c:	39872703          	lw	a4,920(a4) # 8000bc00 <head>
    80001870:	00a00793          	li	a5,10
    80001874:	faf71ce3          	bne	a4,a5,8000182c <_Z9consumerAPv+0x24>
    }
}
    80001878:	01813083          	ld	ra,24(sp)
    8000187c:	01013403          	ld	s0,16(sp)
    80001880:	00813483          	ld	s1,8(sp)
    80001884:	02010113          	addi	sp,sp,32
    80001888:	00008067          	ret
    8000188c:	00008067          	ret

0000000080001890 <_Z9producerAPv>:

void producerA(void *arg)
{
    while(tail!=10)
    80001890:	0000a717          	auipc	a4,0xa
    80001894:	39872703          	lw	a4,920(a4) # 8000bc28 <tail>
    80001898:	00a00793          	li	a5,10
    8000189c:	08f70063          	beq	a4,a5,8000191c <_Z9producerAPv+0x8c>
{
    800018a0:	fe010113          	addi	sp,sp,-32
    800018a4:	00113c23          	sd	ra,24(sp)
    800018a8:	00813823          	sd	s0,16(sp)
    800018ac:	00913423          	sd	s1,8(sp)
    800018b0:	02010413          	addi	s0,sp,32
    {
        sem_wait(spaceAvailable);
    800018b4:	0000a497          	auipc	s1,0xa
    800018b8:	34c48493          	addi	s1,s1,844 # 8000bc00 <head>
    800018bc:	0204b503          	ld	a0,32(s1)
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	b20080e7          	jalr	-1248(ra) # 800013e0 <sem_wait>
        buffer[tail] = string[tail];
    800018c8:	0284a783          	lw	a5,40(s1)
    800018cc:	0000a717          	auipc	a4,0xa
    800018d0:	11470713          	addi	a4,a4,276 # 8000b9e0 <string>
    800018d4:	00f70733          	add	a4,a4,a5
    800018d8:	00074683          	lbu	a3,0(a4)
    800018dc:	00f48733          	add	a4,s1,a5
    800018e0:	00d70823          	sb	a3,16(a4)
        tail++;
    800018e4:	0017879b          	addiw	a5,a5,1
    800018e8:	02f4a423          	sw	a5,40(s1)
        sem_signal(itemAvailable);
    800018ec:	0084b503          	ld	a0,8(s1)
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	b1c080e7          	jalr	-1252(ra) # 8000140c <sem_signal>
    while(tail!=10)
    800018f8:	0000a717          	auipc	a4,0xa
    800018fc:	33072703          	lw	a4,816(a4) # 8000bc28 <tail>
    80001900:	00a00793          	li	a5,10
    80001904:	faf718e3          	bne	a4,a5,800018b4 <_Z9producerAPv+0x24>
    }
}
    80001908:	01813083          	ld	ra,24(sp)
    8000190c:	01013403          	ld	s0,16(sp)
    80001910:	00813483          	ld	s1,8(sp)
    80001914:	02010113          	addi	sp,sp,32
    80001918:	00008067          	ret
    8000191c:	00008067          	ret

0000000080001920 <_Z11threadTest1v>:
{
    80001920:	fe010113          	addi	sp,sp,-32
    80001924:	00113c23          	sd	ra,24(sp)
    80001928:	00813823          	sd	s0,16(sp)
    8000192c:	00913423          	sd	s1,8(sp)
    80001930:	01213023          	sd	s2,0(sp)
    80001934:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    80001938:	01000513          	li	a0,16
    8000193c:	00002097          	auipc	ra,0x2
    80001940:	de8080e7          	jalr	-536(ra) # 80003724 <_Znwm>
    80001944:	00050493          	mv	s1,a0
    80001948:	00000613          	li	a2,0
    8000194c:	00000597          	auipc	a1,0x0
    80001950:	c6458593          	addi	a1,a1,-924 # 800015b0 <_Z15thread1FunctionPv>
    80001954:	00002097          	auipc	ra,0x2
    80001958:	f68080e7          	jalr	-152(ra) # 800038bc <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    8000195c:	00048513          	mv	a0,s1
    80001960:	00002097          	auipc	ra,0x2
    80001964:	e94080e7          	jalr	-364(ra) # 800037f4 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001968:	01000513          	li	a0,16
    8000196c:	00002097          	auipc	ra,0x2
    80001970:	db8080e7          	jalr	-584(ra) # 80003724 <_Znwm>
    80001974:	00050493          	mv	s1,a0
    80001978:	00000613          	li	a2,0
    8000197c:	00000597          	auipc	a1,0x0
    80001980:	cd458593          	addi	a1,a1,-812 # 80001650 <_Z15thread2FunctionPv>
    80001984:	00002097          	auipc	ra,0x2
    80001988:	f38080e7          	jalr	-200(ra) # 800038bc <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    8000198c:	00048513          	mv	a0,s1
    80001990:	00002097          	auipc	ra,0x2
    80001994:	e64080e7          	jalr	-412(ra) # 800037f4 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001998:	00002097          	auipc	ra,0x2
    8000199c:	164080e7          	jalr	356(ra) # 80003afc <_ZN5Riscv16enableInterruptsEv>
    printString("End...\n");
    800019a0:	00007517          	auipc	a0,0x7
    800019a4:	6c850513          	addi	a0,a0,1736 # 80009068 <CONSOLE_STATUS+0x58>
    800019a8:	00004097          	auipc	ra,0x4
    800019ac:	384080e7          	jalr	900(ra) # 80005d2c <_Z11printStringPKc>
    Riscv::disableInterrupts();
    800019b0:	00002097          	auipc	ra,0x2
    800019b4:	16c080e7          	jalr	364(ra) # 80003b1c <_ZN5Riscv17disableInterruptsEv>
}
    800019b8:	01813083          	ld	ra,24(sp)
    800019bc:	01013403          	ld	s0,16(sp)
    800019c0:	00813483          	ld	s1,8(sp)
    800019c4:	00013903          	ld	s2,0(sp)
    800019c8:	02010113          	addi	sp,sp,32
    800019cc:	00008067          	ret
    800019d0:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    800019d4:	00048513          	mv	a0,s1
    800019d8:	00002097          	auipc	ra,0x2
    800019dc:	d74080e7          	jalr	-652(ra) # 8000374c <_ZdlPv>
    800019e0:	00090513          	mv	a0,s2
    800019e4:	0000f097          	auipc	ra,0xf
    800019e8:	3e4080e7          	jalr	996(ra) # 80010dc8 <_Unwind_Resume>
    800019ec:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800019f0:	00048513          	mv	a0,s1
    800019f4:	00002097          	auipc	ra,0x2
    800019f8:	d58080e7          	jalr	-680(ra) # 8000374c <_ZdlPv>
    800019fc:	00090513          	mv	a0,s2
    80001a00:	0000f097          	auipc	ra,0xf
    80001a04:	3c8080e7          	jalr	968(ra) # 80010dc8 <_Unwind_Resume>

0000000080001a08 <_Z11threadTest2v>:
{
    80001a08:	fe010113          	addi	sp,sp,-32
    80001a0c:	00113c23          	sd	ra,24(sp)
    80001a10:	00813823          	sd	s0,16(sp)
    80001a14:	00913423          	sd	s1,8(sp)
    80001a18:	01213023          	sd	s2,0(sp)
    80001a1c:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    80001a20:	01000513          	li	a0,16
    80001a24:	00002097          	auipc	ra,0x2
    80001a28:	d00080e7          	jalr	-768(ra) # 80003724 <_Znwm>
    80001a2c:	00050493          	mv	s1,a0
    80001a30:	00000613          	li	a2,0
    80001a34:	00000597          	auipc	a1,0x0
    80001a38:	b5058593          	addi	a1,a1,-1200 # 80001584 <_Z4idlePv>
    80001a3c:	00002097          	auipc	ra,0x2
    80001a40:	e80080e7          	jalr	-384(ra) # 800038bc <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001a44:	00048513          	mv	a0,s1
    80001a48:	00002097          	auipc	ra,0x2
    80001a4c:	dac080e7          	jalr	-596(ra) # 800037f4 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a50:	01000513          	li	a0,16
    80001a54:	00002097          	auipc	ra,0x2
    80001a58:	cd0080e7          	jalr	-816(ra) # 80003724 <_Znwm>
    80001a5c:	00050493          	mv	s1,a0
    80001a60:	00000613          	li	a2,0
    80001a64:	00000597          	auipc	a1,0x0
    80001a68:	b4c58593          	addi	a1,a1,-1204 # 800015b0 <_Z15thread1FunctionPv>
    80001a6c:	00002097          	auipc	ra,0x2
    80001a70:	e50080e7          	jalr	-432(ra) # 800038bc <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001a74:	00048513          	mv	a0,s1
    80001a78:	00002097          	auipc	ra,0x2
    80001a7c:	d7c080e7          	jalr	-644(ra) # 800037f4 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a80:	01000513          	li	a0,16
    80001a84:	00002097          	auipc	ra,0x2
    80001a88:	ca0080e7          	jalr	-864(ra) # 80003724 <_Znwm>
    80001a8c:	00050493          	mv	s1,a0
    80001a90:	00000613          	li	a2,0
    80001a94:	00000597          	auipc	a1,0x0
    80001a98:	cc058593          	addi	a1,a1,-832 # 80001754 <_Z20thread2FunctionTest2Pv>
    80001a9c:	00002097          	auipc	ra,0x2
    80001aa0:	e20080e7          	jalr	-480(ra) # 800038bc <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001aa4:	00048513          	mv	a0,s1
    80001aa8:	00002097          	auipc	ra,0x2
    80001aac:	d4c080e7          	jalr	-692(ra) # 800037f4 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001ab0:	00002097          	auipc	ra,0x2
    80001ab4:	04c080e7          	jalr	76(ra) # 80003afc <_ZN5Riscv16enableInterruptsEv>
    printString("End...\n");
    80001ab8:	00007517          	auipc	a0,0x7
    80001abc:	5b050513          	addi	a0,a0,1456 # 80009068 <CONSOLE_STATUS+0x58>
    80001ac0:	00004097          	auipc	ra,0x4
    80001ac4:	26c080e7          	jalr	620(ra) # 80005d2c <_Z11printStringPKc>
    Riscv::disableInterrupts();
    80001ac8:	00002097          	auipc	ra,0x2
    80001acc:	054080e7          	jalr	84(ra) # 80003b1c <_ZN5Riscv17disableInterruptsEv>
}
    80001ad0:	01813083          	ld	ra,24(sp)
    80001ad4:	01013403          	ld	s0,16(sp)
    80001ad8:	00813483          	ld	s1,8(sp)
    80001adc:	00013903          	ld	s2,0(sp)
    80001ae0:	02010113          	addi	sp,sp,32
    80001ae4:	00008067          	ret
    80001ae8:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    80001aec:	00048513          	mv	a0,s1
    80001af0:	00002097          	auipc	ra,0x2
    80001af4:	c5c080e7          	jalr	-932(ra) # 8000374c <_ZdlPv>
    80001af8:	00090513          	mv	a0,s2
    80001afc:	0000f097          	auipc	ra,0xf
    80001b00:	2cc080e7          	jalr	716(ra) # 80010dc8 <_Unwind_Resume>
    80001b04:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001b08:	00048513          	mv	a0,s1
    80001b0c:	00002097          	auipc	ra,0x2
    80001b10:	c40080e7          	jalr	-960(ra) # 8000374c <_ZdlPv>
    80001b14:	00090513          	mv	a0,s2
    80001b18:	0000f097          	auipc	ra,0xf
    80001b1c:	2b0080e7          	jalr	688(ra) # 80010dc8 <_Unwind_Resume>
    80001b20:	00050913          	mv	s2,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001b24:	00048513          	mv	a0,s1
    80001b28:	00002097          	auipc	ra,0x2
    80001b2c:	c24080e7          	jalr	-988(ra) # 8000374c <_ZdlPv>
    80001b30:	00090513          	mv	a0,s2
    80001b34:	0000f097          	auipc	ra,0xf
    80001b38:	294080e7          	jalr	660(ra) # 80010dc8 <_Unwind_Resume>

0000000080001b3c <_Z10mallocFreev>:
{
    80001b3c:	cc010113          	addi	sp,sp,-832
    80001b40:	32113c23          	sd	ra,824(sp)
    80001b44:	32813823          	sd	s0,816(sp)
    80001b48:	32913423          	sd	s1,808(sp)
    80001b4c:	34010413          	addi	s0,sp,832
    printString("mallocFree\n");
    80001b50:	00007517          	auipc	a0,0x7
    80001b54:	52050513          	addi	a0,a0,1312 # 80009070 <CONSOLE_STATUS+0x60>
    80001b58:	00004097          	auipc	ra,0x4
    80001b5c:	1d4080e7          	jalr	468(ra) # 80005d2c <_Z11printStringPKc>
    for(int i = 0; i < num;i++)
    80001b60:	00000493          	li	s1,0
    80001b64:	0080006f          	j	80001b6c <_Z10mallocFreev+0x30>
    80001b68:	0014849b          	addiw	s1,s1,1
    80001b6c:	06300793          	li	a5,99
    80001b70:	0497c463          	blt	a5,s1,80001bb8 <_Z10mallocFreev+0x7c>
        addrs[i] = mem_alloc(100);
    80001b74:	06400513          	li	a0,100
    80001b78:	fffff097          	auipc	ra,0xfffff
    80001b7c:	6e0080e7          	jalr	1760(ra) # 80001258 <mem_alloc>
    80001b80:	00349793          	slli	a5,s1,0x3
    80001b84:	fe040713          	addi	a4,s0,-32
    80001b88:	00f707b3          	add	a5,a4,a5
    80001b8c:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001b90:	fc051ce3          	bnez	a0,80001b68 <_Z10mallocFreev+0x2c>
            printString("not OK\n");
    80001b94:	00007517          	auipc	a0,0x7
    80001b98:	4ec50513          	addi	a0,a0,1260 # 80009080 <CONSOLE_STATUS+0x70>
    80001b9c:	00004097          	auipc	ra,0x4
    80001ba0:	190080e7          	jalr	400(ra) # 80005d2c <_Z11printStringPKc>
}
    80001ba4:	33813083          	ld	ra,824(sp)
    80001ba8:	33013403          	ld	s0,816(sp)
    80001bac:	32813483          	ld	s1,808(sp)
    80001bb0:	34010113          	addi	sp,sp,832
    80001bb4:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001bb8:	00000493          	li	s1,0
    80001bbc:	06300793          	li	a5,99
    80001bc0:	0297ce63          	blt	a5,s1,80001bfc <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001bc4:	00349793          	slli	a5,s1,0x3
    80001bc8:	fe040713          	addi	a4,s0,-32
    80001bcc:	00f707b3          	add	a5,a4,a5
    80001bd0:	ce07b503          	ld	a0,-800(a5)
    80001bd4:	fffff097          	auipc	ra,0xfffff
    80001bd8:	6b4080e7          	jalr	1716(ra) # 80001288 <mem_free>
        if(retval != 0)
    80001bdc:	00051663          	bnez	a0,80001be8 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001be0:	0024849b          	addiw	s1,s1,2
    80001be4:	fd9ff06f          	j	80001bbc <_Z10mallocFreev+0x80>
            printString("not OK\n");
    80001be8:	00007517          	auipc	a0,0x7
    80001bec:	49850513          	addi	a0,a0,1176 # 80009080 <CONSOLE_STATUS+0x70>
    80001bf0:	00004097          	auipc	ra,0x4
    80001bf4:	13c080e7          	jalr	316(ra) # 80005d2c <_Z11printStringPKc>
            return;
    80001bf8:	fadff06f          	j	80001ba4 <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001bfc:	00000493          	li	s1,0
    80001c00:	0080006f          	j	80001c08 <_Z10mallocFreev+0xcc>
    80001c04:	0024849b          	addiw	s1,s1,2
    80001c08:	06300793          	li	a5,99
    80001c0c:	0297cc63          	blt	a5,s1,80001c44 <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001c10:	01400513          	li	a0,20
    80001c14:	fffff097          	auipc	ra,0xfffff
    80001c18:	644080e7          	jalr	1604(ra) # 80001258 <mem_alloc>
    80001c1c:	00349793          	slli	a5,s1,0x3
    80001c20:	fe040713          	addi	a4,s0,-32
    80001c24:	00f707b3          	add	a5,a4,a5
    80001c28:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001c2c:	fc051ce3          	bnez	a0,80001c04 <_Z10mallocFreev+0xc8>
            printString("not OK\n");
    80001c30:	00007517          	auipc	a0,0x7
    80001c34:	45050513          	addi	a0,a0,1104 # 80009080 <CONSOLE_STATUS+0x70>
    80001c38:	00004097          	auipc	ra,0x4
    80001c3c:	0f4080e7          	jalr	244(ra) # 80005d2c <_Z11printStringPKc>
            return;
    80001c40:	f65ff06f          	j	80001ba4 <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001c44:	00000493          	li	s1,0
    80001c48:	06300793          	li	a5,99
    80001c4c:	0297ce63          	blt	a5,s1,80001c88 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001c50:	00349793          	slli	a5,s1,0x3
    80001c54:	fe040713          	addi	a4,s0,-32
    80001c58:	00f707b3          	add	a5,a4,a5
    80001c5c:	ce07b503          	ld	a0,-800(a5)
    80001c60:	fffff097          	auipc	ra,0xfffff
    80001c64:	628080e7          	jalr	1576(ra) # 80001288 <mem_free>
        if(retval != 0)
    80001c68:	00051663          	bnez	a0,80001c74 <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001c6c:	0014849b          	addiw	s1,s1,1
    80001c70:	fd9ff06f          	j	80001c48 <_Z10mallocFreev+0x10c>
            printString("not OK\n");
    80001c74:	00007517          	auipc	a0,0x7
    80001c78:	40c50513          	addi	a0,a0,1036 # 80009080 <CONSOLE_STATUS+0x70>
    80001c7c:	00004097          	auipc	ra,0x4
    80001c80:	0b0080e7          	jalr	176(ra) # 80005d2c <_Z11printStringPKc>
            return;
    80001c84:	f21ff06f          	j	80001ba4 <_Z10mallocFreev+0x68>
    printString("OK\n");
    80001c88:	00007517          	auipc	a0,0x7
    80001c8c:	40050513          	addi	a0,a0,1024 # 80009088 <CONSOLE_STATUS+0x78>
    80001c90:	00004097          	auipc	ra,0x4
    80001c94:	09c080e7          	jalr	156(ra) # 80005d2c <_Z11printStringPKc>
    80001c98:	f0dff06f          	j	80001ba4 <_Z10mallocFreev+0x68>

0000000080001c9c <_Z9bigMallocv>:
{
    80001c9c:	ff010113          	addi	sp,sp,-16
    80001ca0:	00113423          	sd	ra,8(sp)
    80001ca4:	00813023          	sd	s0,0(sp)
    80001ca8:	01010413          	addi	s0,sp,16
    printString("bigMalloc\n");
    80001cac:	00007517          	auipc	a0,0x7
    80001cb0:	3e450513          	addi	a0,a0,996 # 80009090 <CONSOLE_STATUS+0x80>
    80001cb4:	00004097          	auipc	ra,0x4
    80001cb8:	078080e7          	jalr	120(ra) # 80005d2c <_Z11printStringPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001cbc:	0000a797          	auipc	a5,0xa
    80001cc0:	ef47b783          	ld	a5,-268(a5) # 8000bbb0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80001cc4:	0007b503          	ld	a0,0(a5)
    80001cc8:	0000a797          	auipc	a5,0xa
    80001ccc:	e907b783          	ld	a5,-368(a5) # 8000bb58 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001cd0:	0007b783          	ld	a5,0(a5)
    80001cd4:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001cd8:	06450513          	addi	a0,a0,100
    80001cdc:	fffff097          	auipc	ra,0xfffff
    80001ce0:	57c080e7          	jalr	1404(ra) # 80001258 <mem_alloc>
    if(p == 0)
    80001ce4:	02050263          	beqz	a0,80001d08 <_Z9bigMallocv+0x6c>
        printString("not OK\n");
    80001ce8:	00007517          	auipc	a0,0x7
    80001cec:	39850513          	addi	a0,a0,920 # 80009080 <CONSOLE_STATUS+0x70>
    80001cf0:	00004097          	auipc	ra,0x4
    80001cf4:	03c080e7          	jalr	60(ra) # 80005d2c <_Z11printStringPKc>
}
    80001cf8:	00813083          	ld	ra,8(sp)
    80001cfc:	00013403          	ld	s0,0(sp)
    80001d00:	01010113          	addi	sp,sp,16
    80001d04:	00008067          	ret
        printString("OK\n");
    80001d08:	00007517          	auipc	a0,0x7
    80001d0c:	38050513          	addi	a0,a0,896 # 80009088 <CONSOLE_STATUS+0x78>
    80001d10:	00004097          	auipc	ra,0x4
    80001d14:	01c080e7          	jalr	28(ra) # 80005d2c <_Z11printStringPKc>
    80001d18:	fe1ff06f          	j	80001cf8 <_Z9bigMallocv+0x5c>

0000000080001d1c <_Z17lotOfSmallMallocsv>:
{
    80001d1c:	fd010113          	addi	sp,sp,-48
    80001d20:	02113423          	sd	ra,40(sp)
    80001d24:	02813023          	sd	s0,32(sp)
    80001d28:	00913c23          	sd	s1,24(sp)
    80001d2c:	01213823          	sd	s2,16(sp)
    80001d30:	01313423          	sd	s3,8(sp)
    80001d34:	03010413          	addi	s0,sp,48
    printString("lotOfSmallMallocs\n");
    80001d38:	00007517          	auipc	a0,0x7
    80001d3c:	36850513          	addi	a0,a0,872 # 800090a0 <CONSOLE_STATUS+0x90>
    80001d40:	00004097          	auipc	ra,0x4
    80001d44:	fec080e7          	jalr	-20(ra) # 80005d2c <_Z11printStringPKc>
    for(uint64 i = 0; i < N;i++)
    80001d48:	00000493          	li	s1,0
    uint64 sum = 0;
    80001d4c:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001d50:	00000913          	li	s2,0
    80001d54:	0180006f          	j	80001d6c <_Z17lotOfSmallMallocsv+0x50>
        t->a = X;
    80001d58:	00a00793          	li	a5,10
    80001d5c:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001d60:	00a98993          	addi	s3,s3,10
        cnt++;
    80001d64:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001d68:	00148493          	addi	s1,s1,1
    80001d6c:	000027b7          	lui	a5,0x2
    80001d70:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001d74:	0097ea63          	bltu	a5,s1,80001d88 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001d78:	00800513          	li	a0,8
    80001d7c:	fffff097          	auipc	ra,0xfffff
    80001d80:	4dc080e7          	jalr	1244(ra) # 80001258 <mem_alloc>
        if(t == 0)
    80001d84:	fc051ae3          	bnez	a0,80001d58 <_Z17lotOfSmallMallocsv+0x3c>
    printInt(cnt);
    80001d88:	00000613          	li	a2,0
    80001d8c:	00a00593          	li	a1,10
    80001d90:	0009051b          	sext.w	a0,s2
    80001d94:	00004097          	auipc	ra,0x4
    80001d98:	130080e7          	jalr	304(ra) # 80005ec4 <_Z8printIntiii>
    printString("\n");
    80001d9c:	00007517          	auipc	a0,0x7
    80001da0:	36450513          	addi	a0,a0,868 # 80009100 <CONSOLE_STATUS+0xf0>
    80001da4:	00004097          	auipc	ra,0x4
    80001da8:	f88080e7          	jalr	-120(ra) # 80005d2c <_Z11printStringPKc>
    if(sum == X*cnt)
    80001dac:	00291793          	slli	a5,s2,0x2
    80001db0:	01278933          	add	s2,a5,s2
    80001db4:	00191913          	slli	s2,s2,0x1
    80001db8:	03390863          	beq	s2,s3,80001de8 <_Z17lotOfSmallMallocsv+0xcc>
        printString("not OK\n");
    80001dbc:	00007517          	auipc	a0,0x7
    80001dc0:	2c450513          	addi	a0,a0,708 # 80009080 <CONSOLE_STATUS+0x70>
    80001dc4:	00004097          	auipc	ra,0x4
    80001dc8:	f68080e7          	jalr	-152(ra) # 80005d2c <_Z11printStringPKc>
}
    80001dcc:	02813083          	ld	ra,40(sp)
    80001dd0:	02013403          	ld	s0,32(sp)
    80001dd4:	01813483          	ld	s1,24(sp)
    80001dd8:	01013903          	ld	s2,16(sp)
    80001ddc:	00813983          	ld	s3,8(sp)
    80001de0:	03010113          	addi	sp,sp,48
    80001de4:	00008067          	ret
        printString("OK\n");
    80001de8:	00007517          	auipc	a0,0x7
    80001dec:	2a050513          	addi	a0,a0,672 # 80009088 <CONSOLE_STATUS+0x78>
    80001df0:	00004097          	auipc	ra,0x4
    80001df4:	f3c080e7          	jalr	-196(ra) # 80005d2c <_Z11printStringPKc>
    80001df8:	fd5ff06f          	j	80001dcc <_Z17lotOfSmallMallocsv+0xb0>

0000000080001dfc <_Z7badFreev>:
{
    80001dfc:	ff010113          	addi	sp,sp,-16
    80001e00:	00113423          	sd	ra,8(sp)
    80001e04:	00813023          	sd	s0,0(sp)
    80001e08:	01010413          	addi	s0,sp,16
    printString("badFree\n");
    80001e0c:	00007517          	auipc	a0,0x7
    80001e10:	2ac50513          	addi	a0,a0,684 # 800090b8 <CONSOLE_STATUS+0xa8>
    80001e14:	00004097          	auipc	ra,0x4
    80001e18:	f18080e7          	jalr	-232(ra) # 80005d2c <_Z11printStringPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001e1c:	00800513          	li	a0,8
    80001e20:	fffff097          	auipc	ra,0xfffff
    80001e24:	438080e7          	jalr	1080(ra) # 80001258 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001e28:	00250513          	addi	a0,a0,2
    80001e2c:	fffff097          	auipc	ra,0xfffff
    80001e30:	45c080e7          	jalr	1116(ra) # 80001288 <mem_free>
    if(retval == 0)
    80001e34:	02051263          	bnez	a0,80001e58 <_Z7badFreev+0x5c>
        printString("not OK\n");
    80001e38:	00007517          	auipc	a0,0x7
    80001e3c:	24850513          	addi	a0,a0,584 # 80009080 <CONSOLE_STATUS+0x70>
    80001e40:	00004097          	auipc	ra,0x4
    80001e44:	eec080e7          	jalr	-276(ra) # 80005d2c <_Z11printStringPKc>
}
    80001e48:	00813083          	ld	ra,8(sp)
    80001e4c:	00013403          	ld	s0,0(sp)
    80001e50:	01010113          	addi	sp,sp,16
    80001e54:	00008067          	ret
         printString("OK\n");
    80001e58:	00007517          	auipc	a0,0x7
    80001e5c:	23050513          	addi	a0,a0,560 # 80009088 <CONSOLE_STATUS+0x78>
    80001e60:	00004097          	auipc	ra,0x4
    80001e64:	ecc080e7          	jalr	-308(ra) # 80005d2c <_Z11printStringPKc>
}
    80001e68:	fe1ff06f          	j	80001e48 <_Z7badFreev+0x4c>

0000000080001e6c <_Z13stressTestingv>:
{
    80001e6c:	cc010113          	addi	sp,sp,-832
    80001e70:	32113c23          	sd	ra,824(sp)
    80001e74:	32813823          	sd	s0,816(sp)
    80001e78:	32913423          	sd	s1,808(sp)
    80001e7c:	33213023          	sd	s2,800(sp)
    80001e80:	34010413          	addi	s0,sp,832
    printString("stressTesting\n");
    80001e84:	00007517          	auipc	a0,0x7
    80001e88:	24450513          	addi	a0,a0,580 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001e8c:	00004097          	auipc	ra,0x4
    80001e90:	ea0080e7          	jalr	-352(ra) # 80005d2c <_Z11printStringPKc>
    for(int i = 0; i < num;i++)
    80001e94:	00000493          	li	s1,0
    80001e98:	0080006f          	j	80001ea0 <_Z13stressTestingv+0x34>
    80001e9c:	0014849b          	addiw	s1,s1,1
    80001ea0:	06300793          	li	a5,99
    80001ea4:	0497c663          	blt	a5,s1,80001ef0 <_Z13stressTestingv+0x84>
        addrs[i] = mem_alloc(1);
    80001ea8:	00100513          	li	a0,1
    80001eac:	fffff097          	auipc	ra,0xfffff
    80001eb0:	3ac080e7          	jalr	940(ra) # 80001258 <mem_alloc>
    80001eb4:	00349793          	slli	a5,s1,0x3
    80001eb8:	fe040713          	addi	a4,s0,-32
    80001ebc:	00f707b3          	add	a5,a4,a5
    80001ec0:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001ec4:	fc051ce3          	bnez	a0,80001e9c <_Z13stressTestingv+0x30>
            printString("not OK\n");
    80001ec8:	00007517          	auipc	a0,0x7
    80001ecc:	1b850513          	addi	a0,a0,440 # 80009080 <CONSOLE_STATUS+0x70>
    80001ed0:	00004097          	auipc	ra,0x4
    80001ed4:	e5c080e7          	jalr	-420(ra) # 80005d2c <_Z11printStringPKc>
}
    80001ed8:	33813083          	ld	ra,824(sp)
    80001edc:	33013403          	ld	s0,816(sp)
    80001ee0:	32813483          	ld	s1,808(sp)
    80001ee4:	32013903          	ld	s2,800(sp)
    80001ee8:	34010113          	addi	sp,sp,832
    80001eec:	00008067          	ret
    int sz = 300;
    80001ef0:	12c00913          	li	s2,300
    while(sz > 0)
    80001ef4:	11205263          	blez	s2,80001ff8 <_Z13stressTestingv+0x18c>
        for(int i = 0 ; i < num;i+=2)
    80001ef8:	00000493          	li	s1,0
    80001efc:	06300793          	li	a5,99
    80001f00:	0697cc63          	blt	a5,s1,80001f78 <_Z13stressTestingv+0x10c>
            int retval = mem_free(addrs[i]);
    80001f04:	00349793          	slli	a5,s1,0x3
    80001f08:	fe040713          	addi	a4,s0,-32
    80001f0c:	00f707b3          	add	a5,a4,a5
    80001f10:	ce07b503          	ld	a0,-800(a5)
    80001f14:	fffff097          	auipc	ra,0xfffff
    80001f18:	374080e7          	jalr	884(ra) # 80001288 <mem_free>
            if(retval != 0)
    80001f1c:	02051a63          	bnez	a0,80001f50 <_Z13stressTestingv+0xe4>
            addrs[i] = mem_alloc(sz/2);
    80001f20:	01f9551b          	srliw	a0,s2,0x1f
    80001f24:	0125053b          	addw	a0,a0,s2
    80001f28:	4015551b          	sraiw	a0,a0,0x1
    80001f2c:	fffff097          	auipc	ra,0xfffff
    80001f30:	32c080e7          	jalr	812(ra) # 80001258 <mem_alloc>
    80001f34:	00349793          	slli	a5,s1,0x3
    80001f38:	fe040713          	addi	a4,s0,-32
    80001f3c:	00f707b3          	add	a5,a4,a5
    80001f40:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001f44:	02050063          	beqz	a0,80001f64 <_Z13stressTestingv+0xf8>
        for(int i = 0 ; i < num;i+=2)
    80001f48:	0024849b          	addiw	s1,s1,2
    80001f4c:	fb1ff06f          	j	80001efc <_Z13stressTestingv+0x90>
                printString("not OK\n");
    80001f50:	00007517          	auipc	a0,0x7
    80001f54:	13050513          	addi	a0,a0,304 # 80009080 <CONSOLE_STATUS+0x70>
    80001f58:	00004097          	auipc	ra,0x4
    80001f5c:	dd4080e7          	jalr	-556(ra) # 80005d2c <_Z11printStringPKc>
                return;
    80001f60:	f79ff06f          	j	80001ed8 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001f64:	00007517          	auipc	a0,0x7
    80001f68:	17450513          	addi	a0,a0,372 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001f6c:	00004097          	auipc	ra,0x4
    80001f70:	dc0080e7          	jalr	-576(ra) # 80005d2c <_Z11printStringPKc>
                return;
    80001f74:	f65ff06f          	j	80001ed8 <_Z13stressTestingv+0x6c>
        for(int i = 1 ; i < num;i+=2)
    80001f78:	00100493          	li	s1,1
    80001f7c:	06300793          	li	a5,99
    80001f80:	0697c863          	blt	a5,s1,80001ff0 <_Z13stressTestingv+0x184>
            int retval = mem_free(addrs[i]);
    80001f84:	00349793          	slli	a5,s1,0x3
    80001f88:	fe040713          	addi	a4,s0,-32
    80001f8c:	00f707b3          	add	a5,a4,a5
    80001f90:	ce07b503          	ld	a0,-800(a5)
    80001f94:	fffff097          	auipc	ra,0xfffff
    80001f98:	2f4080e7          	jalr	756(ra) # 80001288 <mem_free>
            if(retval != 0)
    80001f9c:	02051663          	bnez	a0,80001fc8 <_Z13stressTestingv+0x15c>
            addrs[i] = mem_alloc(sz);
    80001fa0:	00090513          	mv	a0,s2
    80001fa4:	fffff097          	auipc	ra,0xfffff
    80001fa8:	2b4080e7          	jalr	692(ra) # 80001258 <mem_alloc>
    80001fac:	00349793          	slli	a5,s1,0x3
    80001fb0:	fe040713          	addi	a4,s0,-32
    80001fb4:	00f707b3          	add	a5,a4,a5
    80001fb8:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001fbc:	02050063          	beqz	a0,80001fdc <_Z13stressTestingv+0x170>
        for(int i = 1 ; i < num;i+=2)
    80001fc0:	0024849b          	addiw	s1,s1,2
    80001fc4:	fb9ff06f          	j	80001f7c <_Z13stressTestingv+0x110>
                printString("not OK\n");
    80001fc8:	00007517          	auipc	a0,0x7
    80001fcc:	0b850513          	addi	a0,a0,184 # 80009080 <CONSOLE_STATUS+0x70>
    80001fd0:	00004097          	auipc	ra,0x4
    80001fd4:	d5c080e7          	jalr	-676(ra) # 80005d2c <_Z11printStringPKc>
                return;
    80001fd8:	f01ff06f          	j	80001ed8 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001fdc:	00007517          	auipc	a0,0x7
    80001fe0:	0fc50513          	addi	a0,a0,252 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001fe4:	00004097          	auipc	ra,0x4
    80001fe8:	d48080e7          	jalr	-696(ra) # 80005d2c <_Z11printStringPKc>
                return;
    80001fec:	eedff06f          	j	80001ed8 <_Z13stressTestingv+0x6c>
        sz-=10;
    80001ff0:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001ff4:	f01ff06f          	j	80001ef4 <_Z13stressTestingv+0x88>
    printString("OK\n");
    80001ff8:	00007517          	auipc	a0,0x7
    80001ffc:	09050513          	addi	a0,a0,144 # 80009088 <CONSOLE_STATUS+0x78>
    80002000:	00004097          	auipc	ra,0x4
    80002004:	d2c080e7          	jalr	-724(ra) # 80005d2c <_Z11printStringPKc>
    80002008:	ed1ff06f          	j	80001ed8 <_Z13stressTestingv+0x6c>

000000008000200c <_ZN12TestPeriodicC1Em>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {
    8000200c:	fe010113          	addi	sp,sp,-32
    80002010:	00113c23          	sd	ra,24(sp)
    80002014:	00813823          	sd	s0,16(sp)
    80002018:	00913423          	sd	s1,8(sp)
    8000201c:	02010413          	addi	s0,sp,32
    80002020:	00050493          	mv	s1,a0
    80002024:	00002097          	auipc	ra,0x2
    80002028:	a04080e7          	jalr	-1532(ra) # 80003a28 <_ZN14PeriodicThreadC1Em>
    8000202c:	0000a797          	auipc	a5,0xa
    80002030:	a0478793          	addi	a5,a5,-1532 # 8000ba30 <_ZTV12TestPeriodic+0x10>
    80002034:	00f4b023          	sd	a5,0(s1)
}
    80002038:	01813083          	ld	ra,24(sp)
    8000203c:	01013403          	ld	s0,16(sp)
    80002040:	00813483          	ld	s1,8(sp)
    80002044:	02010113          	addi	sp,sp,32
    80002048:	00008067          	ret

000000008000204c <_Z11threadTest3v>:
{
    8000204c:	fe010113          	addi	sp,sp,-32
    80002050:	00113c23          	sd	ra,24(sp)
    80002054:	00813823          	sd	s0,16(sp)
    80002058:	00913423          	sd	s1,8(sp)
    8000205c:	01213023          	sd	s2,0(sp)
    80002060:	02010413          	addi	s0,sp,32
    Thread* t = new TestPeriodic(50);
    80002064:	01000513          	li	a0,16
    80002068:	00001097          	auipc	ra,0x1
    8000206c:	6bc080e7          	jalr	1724(ra) # 80003724 <_Znwm>
    80002070:	00050913          	mv	s2,a0
    80002074:	03200593          	li	a1,50
    80002078:	00000097          	auipc	ra,0x0
    8000207c:	f94080e7          	jalr	-108(ra) # 8000200c <_ZN12TestPeriodicC1Em>
    t->start();
    80002080:	00090513          	mv	a0,s2
    80002084:	00001097          	auipc	ra,0x1
    80002088:	770080e7          	jalr	1904(ra) # 800037f4 <_ZN6Thread5startEv>
    while(true)
    8000208c:	0000006f          	j	8000208c <_Z11threadTest3v+0x40>
    80002090:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80002094:	00090513          	mv	a0,s2
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	6b4080e7          	jalr	1716(ra) # 8000374c <_ZdlPv>
    800020a0:	00048513          	mv	a0,s1
    800020a4:	0000f097          	auipc	ra,0xf
    800020a8:	d24080e7          	jalr	-732(ra) # 80010dc8 <_Unwind_Resume>

00000000800020ac <_Z11threadTestsv>:
{
    800020ac:	ff010113          	addi	sp,sp,-16
    800020b0:	00113423          	sd	ra,8(sp)
    800020b4:	00813023          	sd	s0,0(sp)
    800020b8:	01010413          	addi	s0,sp,16
    threadTest3();
    800020bc:	00000097          	auipc	ra,0x0
    800020c0:	f90080e7          	jalr	-112(ra) # 8000204c <_Z11threadTest3v>

00000000800020c4 <_Z10mallocTestv>:
{
    800020c4:	fc010113          	addi	sp,sp,-64
    800020c8:	02113c23          	sd	ra,56(sp)
    800020cc:	02813823          	sd	s0,48(sp)
    800020d0:	02913423          	sd	s1,40(sp)
    800020d4:	03213023          	sd	s2,32(sp)
    800020d8:	01313c23          	sd	s3,24(sp)
    800020dc:	01413823          	sd	s4,16(sp)
    800020e0:	01513423          	sd	s5,8(sp)
    800020e4:	01613023          	sd	s6,0(sp)
    800020e8:	04010413          	addi	s0,sp,64
    printString("Testing a few mallocs and frees\n\n");
    800020ec:	00007517          	auipc	a0,0x7
    800020f0:	ff450513          	addi	a0,a0,-12 # 800090e0 <CONSOLE_STATUS+0xd0>
    800020f4:	00004097          	auipc	ra,0x4
    800020f8:	c38080e7          	jalr	-968(ra) # 80005d2c <_Z11printStringPKc>
    object* o = new object;
    800020fc:	02c00513          	li	a0,44
    80002100:	00001097          	auipc	ra,0x1
    80002104:	624080e7          	jalr	1572(ra) # 80003724 <_Znwm>
    80002108:	00050493          	mv	s1,a0
    o->a = 3;
    8000210c:	00300793          	li	a5,3
    80002110:	00f52023          	sw	a5,0(a0)
    void* m1 = mem_alloc(10);
    80002114:	00a00513          	li	a0,10
    80002118:	fffff097          	auipc	ra,0xfffff
    8000211c:	140080e7          	jalr	320(ra) # 80001258 <mem_alloc>
    80002120:	00050913          	mv	s2,a0
    void* m2 = mem_alloc(100);
    80002124:	06400513          	li	a0,100
    80002128:	fffff097          	auipc	ra,0xfffff
    8000212c:	130080e7          	jalr	304(ra) # 80001258 <mem_alloc>
    80002130:	00050993          	mv	s3,a0
    void* m3 = mem_alloc(1000);
    80002134:	3e800513          	li	a0,1000
    80002138:	fffff097          	auipc	ra,0xfffff
    8000213c:	120080e7          	jalr	288(ra) # 80001258 <mem_alloc>
    80002140:	00050a13          	mv	s4,a0
    void* m4 = mem_alloc(10000);
    80002144:	00002537          	lui	a0,0x2
    80002148:	71050513          	addi	a0,a0,1808 # 2710 <_entry-0x7fffd8f0>
    8000214c:	fffff097          	auipc	ra,0xfffff
    80002150:	10c080e7          	jalr	268(ra) # 80001258 <mem_alloc>
    80002154:	00050a93          	mv	s5,a0
    void* m5 = mem_alloc(1);
    80002158:	00100513          	li	a0,1
    8000215c:	fffff097          	auipc	ra,0xfffff
    80002160:	0fc080e7          	jalr	252(ra) # 80001258 <mem_alloc>
    if(!m1 || !m2 || !m3 || !m4 || !m5){
    80002164:	06090c63          	beqz	s2,800021dc <_Z10mallocTestv+0x118>
    80002168:	00050b13          	mv	s6,a0
    8000216c:	06098863          	beqz	s3,800021dc <_Z10mallocTestv+0x118>
    80002170:	060a0663          	beqz	s4,800021dc <_Z10mallocTestv+0x118>
    80002174:	060a8463          	beqz	s5,800021dc <_Z10mallocTestv+0x118>
    80002178:	06050263          	beqz	a0,800021dc <_Z10mallocTestv+0x118>
    delete (uint64*)m1;
    8000217c:	00090513          	mv	a0,s2
    80002180:	00001097          	auipc	ra,0x1
    80002184:	5cc080e7          	jalr	1484(ra) # 8000374c <_ZdlPv>
    delete (uint64*)m3;
    80002188:	000a0513          	mv	a0,s4
    8000218c:	00001097          	auipc	ra,0x1
    80002190:	5c0080e7          	jalr	1472(ra) # 8000374c <_ZdlPv>
    delete (uint64*)m4;
    80002194:	000a8513          	mv	a0,s5
    80002198:	00001097          	auipc	ra,0x1
    8000219c:	5b4080e7          	jalr	1460(ra) # 8000374c <_ZdlPv>
    delete (uint64*)m2;
    800021a0:	00098513          	mv	a0,s3
    800021a4:	00001097          	auipc	ra,0x1
    800021a8:	5a8080e7          	jalr	1448(ra) # 8000374c <_ZdlPv>
    delete (uint64*)m5;
    800021ac:	000b0513          	mv	a0,s6
    800021b0:	00001097          	auipc	ra,0x1
    800021b4:	59c080e7          	jalr	1436(ra) # 8000374c <_ZdlPv>
    delete o;
    800021b8:	00048863          	beqz	s1,800021c8 <_Z10mallocTestv+0x104>
    800021bc:	00048513          	mv	a0,s1
    800021c0:	00001097          	auipc	ra,0x1
    800021c4:	58c080e7          	jalr	1420(ra) # 8000374c <_ZdlPv>
    printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    800021c8:	00007517          	auipc	a0,0x7
    800021cc:	f4050513          	addi	a0,a0,-192 # 80009108 <CONSOLE_STATUS+0xf8>
    800021d0:	00004097          	auipc	ra,0x4
    800021d4:	b5c080e7          	jalr	-1188(ra) # 80005d2c <_Z11printStringPKc>
    800021d8:	0140006f          	j	800021ec <_Z10mallocTestv+0x128>
        printString("not OK\n");
    800021dc:	00007517          	auipc	a0,0x7
    800021e0:	ea450513          	addi	a0,a0,-348 # 80009080 <CONSOLE_STATUS+0x70>
    800021e4:	00004097          	auipc	ra,0x4
    800021e8:	b48080e7          	jalr	-1208(ra) # 80005d2c <_Z11printStringPKc>
}
    800021ec:	03813083          	ld	ra,56(sp)
    800021f0:	03013403          	ld	s0,48(sp)
    800021f4:	02813483          	ld	s1,40(sp)
    800021f8:	02013903          	ld	s2,32(sp)
    800021fc:	01813983          	ld	s3,24(sp)
    80002200:	01013a03          	ld	s4,16(sp)
    80002204:	00813a83          	ld	s5,8(sp)
    80002208:	00013b03          	ld	s6,0(sp)
    8000220c:	04010113          	addi	sp,sp,64
    80002210:	00008067          	ret

0000000080002214 <_Z16mallocEverythingv>:
{
    80002214:	fe010113          	addi	sp,sp,-32
    80002218:	00113c23          	sd	ra,24(sp)
    8000221c:	00813823          	sd	s0,16(sp)
    80002220:	00913423          	sd	s1,8(sp)
    80002224:	02010413          	addi	s0,sp,32
    printString("Testing allocating whole address space\n\n");
    80002228:	00007517          	auipc	a0,0x7
    8000222c:	f1050513          	addi	a0,a0,-240 # 80009138 <CONSOLE_STATUS+0x128>
    80002230:	00004097          	auipc	ra,0x4
    80002234:	afc080e7          	jalr	-1284(ra) # 80005d2c <_Z11printStringPKc>
    uint64 neg_size = (uint64)HEAP_START_ADDR - (uint64)HEAP_END_ADDR -sizeof(MemoryAllocator::BlockHeader);
    80002238:	0000a797          	auipc	a5,0xa
    8000223c:	9207b783          	ld	a5,-1760(a5) # 8000bb58 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002240:	0007b503          	ld	a0,0(a5)
    80002244:	0000a797          	auipc	a5,0xa
    80002248:	96c7b783          	ld	a5,-1684(a5) # 8000bbb0 <_GLOBAL_OFFSET_TABLE_+0x70>
    8000224c:	0007b783          	ld	a5,0(a5)
    80002250:	40f50533          	sub	a0,a0,a5
    void* m = mem_alloc(neg_size);
    80002254:	ff050513          	addi	a0,a0,-16
    80002258:	fffff097          	auipc	ra,0xfffff
    8000225c:	000080e7          	jalr	ra # 80001258 <mem_alloc>
    if(m!=nullptr){
    80002260:	02050463          	beqz	a0,80002288 <_Z16mallocEverythingv+0x74>
        printString("not OK\n");
    80002264:	00007517          	auipc	a0,0x7
    80002268:	e1c50513          	addi	a0,a0,-484 # 80009080 <CONSOLE_STATUS+0x70>
    8000226c:	00004097          	auipc	ra,0x4
    80002270:	ac0080e7          	jalr	-1344(ra) # 80005d2c <_Z11printStringPKc>
}
    80002274:	01813083          	ld	ra,24(sp)
    80002278:	01013403          	ld	s0,16(sp)
    8000227c:	00813483          	ld	s1,8(sp)
    80002280:	02010113          	addi	sp,sp,32
    80002284:	00008067          	ret
    uint64 blockSize = (((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR - sizeof(MemoryAllocator::BlockHeader))>>6)-300;
    80002288:	0000a797          	auipc	a5,0xa
    8000228c:	9287b783          	ld	a5,-1752(a5) # 8000bbb0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002290:	0007b503          	ld	a0,0(a5)
    80002294:	0000a797          	auipc	a5,0xa
    80002298:	8c47b783          	ld	a5,-1852(a5) # 8000bb58 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000229c:	0007b783          	ld	a5,0(a5)
    800022a0:	40f50533          	sub	a0,a0,a5
    800022a4:	ff050513          	addi	a0,a0,-16
    800022a8:	00655513          	srli	a0,a0,0x6
    800022ac:	ed450513          	addi	a0,a0,-300
    m = mem_alloc(blockSize<<6);
    800022b0:	00651513          	slli	a0,a0,0x6
    800022b4:	fffff097          	auipc	ra,0xfffff
    800022b8:	fa4080e7          	jalr	-92(ra) # 80001258 <mem_alloc>
    800022bc:	00050493          	mv	s1,a0
    if(m==nullptr){
    800022c0:	02050a63          	beqz	a0,800022f4 <_Z16mallocEverythingv+0xe0>
    void *small_chunk = mem_alloc(1);
    800022c4:	00100513          	li	a0,1
    800022c8:	fffff097          	auipc	ra,0xfffff
    800022cc:	f90080e7          	jalr	-112(ra) # 80001258 <mem_alloc>
    if(small_chunk == nullptr){
    800022d0:	02050c63          	beqz	a0,80002308 <_Z16mallocEverythingv+0xf4>
    delete (uint64*)m;
    800022d4:	00048513          	mv	a0,s1
    800022d8:	00001097          	auipc	ra,0x1
    800022dc:	474080e7          	jalr	1140(ra) # 8000374c <_ZdlPv>
    printString("SUCCESSFUL: Testing allocating whole address space\n\n");
    800022e0:	00007517          	auipc	a0,0x7
    800022e4:	e8850513          	addi	a0,a0,-376 # 80009168 <CONSOLE_STATUS+0x158>
    800022e8:	00004097          	auipc	ra,0x4
    800022ec:	a44080e7          	jalr	-1468(ra) # 80005d2c <_Z11printStringPKc>
    800022f0:	f85ff06f          	j	80002274 <_Z16mallocEverythingv+0x60>
        printString("not OK\n");
    800022f4:	00007517          	auipc	a0,0x7
    800022f8:	d8c50513          	addi	a0,a0,-628 # 80009080 <CONSOLE_STATUS+0x70>
    800022fc:	00004097          	auipc	ra,0x4
    80002300:	a30080e7          	jalr	-1488(ra) # 80005d2c <_Z11printStringPKc>
        return;
    80002304:	f71ff06f          	j	80002274 <_Z16mallocEverythingv+0x60>
        printString("not OK\n");
    80002308:	00007517          	auipc	a0,0x7
    8000230c:	d7850513          	addi	a0,a0,-648 # 80009080 <CONSOLE_STATUS+0x70>
    80002310:	00004097          	auipc	ra,0x4
    80002314:	a1c080e7          	jalr	-1508(ra) # 80005d2c <_Z11printStringPKc>
        return;
    80002318:	f5dff06f          	j	80002274 <_Z16mallocEverythingv+0x60>

000000008000231c <_Z17mallocGapFillTestv>:
{
    8000231c:	f6010113          	addi	sp,sp,-160
    80002320:	08113c23          	sd	ra,152(sp)
    80002324:	08813823          	sd	s0,144(sp)
    80002328:	08913423          	sd	s1,136(sp)
    8000232c:	09213023          	sd	s2,128(sp)
    80002330:	07313c23          	sd	s3,120(sp)
    80002334:	07413823          	sd	s4,112(sp)
    80002338:	07513423          	sd	s5,104(sp)
    8000233c:	07613023          	sd	s6,96(sp)
    80002340:	05713c23          	sd	s7,88(sp)
    80002344:	05813823          	sd	s8,80(sp)
    80002348:	0a010413          	addi	s0,sp,160
    printString("Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    8000234c:	00007517          	auipc	a0,0x7
    80002350:	e5450513          	addi	a0,a0,-428 # 800091a0 <CONSOLE_STATUS+0x190>
    80002354:	00004097          	auipc	ra,0x4
    80002358:	9d8080e7          	jalr	-1576(ra) # 80005d2c <_Z11printStringPKc>
    for(int i=0;i<N;i++)
    8000235c:	00000493          	li	s1,0
    80002360:	00900793          	li	a5,9
    80002364:	0697c863          	blt	a5,s1,800023d4 <_Z17mallocGapFillTestv+0xb8>
        m[i] = mem_alloc((i<<6)+1);
    80002368:	0064951b          	slliw	a0,s1,0x6
    8000236c:	0015051b          	addiw	a0,a0,1
    80002370:	fffff097          	auipc	ra,0xfffff
    80002374:	ee8080e7          	jalr	-280(ra) # 80001258 <mem_alloc>
    80002378:	00349793          	slli	a5,s1,0x3
    8000237c:	fb040713          	addi	a4,s0,-80
    80002380:	00f707b3          	add	a5,a4,a5
    80002384:	faa7b823          	sd	a0,-80(a5)
        if(m[i] == nullptr){
    80002388:	00050663          	beqz	a0,80002394 <_Z17mallocGapFillTestv+0x78>
    for(int i=0;i<N;i++)
    8000238c:	0014849b          	addiw	s1,s1,1
    80002390:	fd1ff06f          	j	80002360 <_Z17mallocGapFillTestv+0x44>
            printString("not OK\n");
    80002394:	00007517          	auipc	a0,0x7
    80002398:	cec50513          	addi	a0,a0,-788 # 80009080 <CONSOLE_STATUS+0x70>
    8000239c:	00004097          	auipc	ra,0x4
    800023a0:	990080e7          	jalr	-1648(ra) # 80005d2c <_Z11printStringPKc>
}
    800023a4:	09813083          	ld	ra,152(sp)
    800023a8:	09013403          	ld	s0,144(sp)
    800023ac:	08813483          	ld	s1,136(sp)
    800023b0:	08013903          	ld	s2,128(sp)
    800023b4:	07813983          	ld	s3,120(sp)
    800023b8:	07013a03          	ld	s4,112(sp)
    800023bc:	06813a83          	ld	s5,104(sp)
    800023c0:	06013b03          	ld	s6,96(sp)
    800023c4:	05813b83          	ld	s7,88(sp)
    800023c8:	05013c03          	ld	s8,80(sp)
    800023cc:	0a010113          	addi	sp,sp,160
    800023d0:	00008067          	ret
    delete (uint64*)m[2];
    800023d4:	f7043503          	ld	a0,-144(s0)
    800023d8:	00050663          	beqz	a0,800023e4 <_Z17mallocGapFillTestv+0xc8>
    800023dc:	00001097          	auipc	ra,0x1
    800023e0:	370080e7          	jalr	880(ra) # 8000374c <_ZdlPv>
    void* tmp1 = mem_alloc(1);
    800023e4:	00100513          	li	a0,1
    800023e8:	fffff097          	auipc	ra,0xfffff
    800023ec:	e70080e7          	jalr	-400(ra) # 80001258 <mem_alloc>
    800023f0:	00050493          	mv	s1,a0
    void* tmp2 = mem_alloc(1);
    800023f4:	00100513          	li	a0,1
    800023f8:	fffff097          	auipc	ra,0xfffff
    800023fc:	e60080e7          	jalr	-416(ra) # 80001258 <mem_alloc>
    80002400:	00050913          	mv	s2,a0
    void* tmp3 = mem_alloc(1);
    80002404:	00100513          	li	a0,1
    80002408:	fffff097          	auipc	ra,0xfffff
    8000240c:	e50080e7          	jalr	-432(ra) # 80001258 <mem_alloc>
    80002410:	00050993          	mv	s3,a0
    if(!tmp1 || !tmp2 || !tmp3)
    80002414:	08048863          	beqz	s1,800024a4 <_Z17mallocGapFillTestv+0x188>
    80002418:	08090663          	beqz	s2,800024a4 <_Z17mallocGapFillTestv+0x188>
    8000241c:	08050463          	beqz	a0,800024a4 <_Z17mallocGapFillTestv+0x188>
    uint64 im1 = (uint64)m[1];
    80002420:	f6843783          	ld	a5,-152(s0)
    uint64 im3 = (uint64)m[3];
    80002424:	f7843503          	ld	a0,-136(s0)
    uint64 im5 = (uint64)m[5];
    80002428:	f8843b03          	ld	s6,-120(s0)
    uint64 imN = (uint64)m[N];
    8000242c:	fb043603          	ld	a2,-80(s0)
    uint64 itmp2 = (uint64)tmp2;
    80002430:	00090a13          	mv	s4,s2
    uint64 itmp3 = (uint64)tmp3;
    80002434:	00098a93          	mv	s5,s3
    if(!(im1<itmp1 && itmp1<im3 && im1<itmp2 && itmp2<im3 && itmp3>imN))
    80002438:	0897f063          	bgeu	a5,s1,800024b8 <_Z17mallocGapFillTestv+0x19c>
    8000243c:	06a4fe63          	bgeu	s1,a0,800024b8 <_Z17mallocGapFillTestv+0x19c>
    80002440:	0727fc63          	bgeu	a5,s2,800024b8 <_Z17mallocGapFillTestv+0x19c>
    80002444:	06a97a63          	bgeu	s2,a0,800024b8 <_Z17mallocGapFillTestv+0x19c>
    80002448:	07367863          	bgeu	a2,s3,800024b8 <_Z17mallocGapFillTestv+0x19c>
    delete (uint64*)m[3];
    8000244c:	00050663          	beqz	a0,80002458 <_Z17mallocGapFillTestv+0x13c>
    80002450:	00001097          	auipc	ra,0x1
    80002454:	2fc080e7          	jalr	764(ra) # 8000374c <_ZdlPv>
    delete (uint64*)m[4];
    80002458:	f8043503          	ld	a0,-128(s0)
    8000245c:	00050663          	beqz	a0,80002468 <_Z17mallocGapFillTestv+0x14c>
    80002460:	00001097          	auipc	ra,0x1
    80002464:	2ec080e7          	jalr	748(ra) # 8000374c <_ZdlPv>
    void* tmp4 = mem_alloc(640);
    80002468:	28000513          	li	a0,640
    8000246c:	fffff097          	auipc	ra,0xfffff
    80002470:	dec080e7          	jalr	-532(ra) # 80001258 <mem_alloc>
    80002474:	00050c13          	mv	s8,a0
    void* tmp5 = mem_alloc(576);
    80002478:	24000513          	li	a0,576
    8000247c:	fffff097          	auipc	ra,0xfffff
    80002480:	ddc080e7          	jalr	-548(ra) # 80001258 <mem_alloc>
    80002484:	00050b93          	mv	s7,a0
    if(!tmp4 || !tmp5){
    80002488:	040c0263          	beqz	s8,800024cc <_Z17mallocGapFillTestv+0x1b0>
    8000248c:	04050063          	beqz	a0,800024cc <_Z17mallocGapFillTestv+0x1b0>
    if(!(itmp5>itmp2 && itmp5>im5 && itmp4<itmp3)){
    80002490:	04aa7863          	bgeu	s4,a0,800024e0 <_Z17mallocGapFillTestv+0x1c4>
    80002494:	04ab7663          	bgeu	s6,a0,800024e0 <_Z17mallocGapFillTestv+0x1c4>
    80002498:	055c7463          	bgeu	s8,s5,800024e0 <_Z17mallocGapFillTestv+0x1c4>
    for(int i=0;i<N;i++){
    8000249c:	00000a13          	li	s4,0
    800024a0:	0580006f          	j	800024f8 <_Z17mallocGapFillTestv+0x1dc>
        printString("not OK\n");
    800024a4:	00007517          	auipc	a0,0x7
    800024a8:	bdc50513          	addi	a0,a0,-1060 # 80009080 <CONSOLE_STATUS+0x70>
    800024ac:	00004097          	auipc	ra,0x4
    800024b0:	880080e7          	jalr	-1920(ra) # 80005d2c <_Z11printStringPKc>
        return;
    800024b4:	ef1ff06f          	j	800023a4 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024b8:	00007517          	auipc	a0,0x7
    800024bc:	bc850513          	addi	a0,a0,-1080 # 80009080 <CONSOLE_STATUS+0x70>
    800024c0:	00004097          	auipc	ra,0x4
    800024c4:	86c080e7          	jalr	-1940(ra) # 80005d2c <_Z11printStringPKc>
        return;
    800024c8:	eddff06f          	j	800023a4 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024cc:	00007517          	auipc	a0,0x7
    800024d0:	bb450513          	addi	a0,a0,-1100 # 80009080 <CONSOLE_STATUS+0x70>
    800024d4:	00004097          	auipc	ra,0x4
    800024d8:	858080e7          	jalr	-1960(ra) # 80005d2c <_Z11printStringPKc>
        return;
    800024dc:	ec9ff06f          	j	800023a4 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024e0:	00007517          	auipc	a0,0x7
    800024e4:	ba050513          	addi	a0,a0,-1120 # 80009080 <CONSOLE_STATUS+0x70>
    800024e8:	00004097          	auipc	ra,0x4
    800024ec:	844080e7          	jalr	-1980(ra) # 80005d2c <_Z11printStringPKc>
        return;
    800024f0:	eb5ff06f          	j	800023a4 <_Z17mallocGapFillTestv+0x88>
    for(int i=0;i<N;i++){
    800024f4:	001a0a1b          	addiw	s4,s4,1
    800024f8:	00900793          	li	a5,9
    800024fc:	0347c263          	blt	a5,s4,80002520 <_Z17mallocGapFillTestv+0x204>
        delete (uint64*)m[i];
    80002500:	003a1793          	slli	a5,s4,0x3
    80002504:	fb040713          	addi	a4,s0,-80
    80002508:	00f707b3          	add	a5,a4,a5
    8000250c:	fb07b503          	ld	a0,-80(a5)
    80002510:	fe0502e3          	beqz	a0,800024f4 <_Z17mallocGapFillTestv+0x1d8>
    80002514:	00001097          	auipc	ra,0x1
    80002518:	238080e7          	jalr	568(ra) # 8000374c <_ZdlPv>
    8000251c:	fd9ff06f          	j	800024f4 <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    80002520:	00048513          	mv	a0,s1
    80002524:	00001097          	auipc	ra,0x1
    80002528:	228080e7          	jalr	552(ra) # 8000374c <_ZdlPv>
    delete (uint64*)tmp2;
    8000252c:	00090513          	mv	a0,s2
    80002530:	00001097          	auipc	ra,0x1
    80002534:	21c080e7          	jalr	540(ra) # 8000374c <_ZdlPv>
    delete (uint64*)tmp3;
    80002538:	00098513          	mv	a0,s3
    8000253c:	00001097          	auipc	ra,0x1
    80002540:	210080e7          	jalr	528(ra) # 8000374c <_ZdlPv>
    delete (uint64*)tmp4;
    80002544:	000c0513          	mv	a0,s8
    80002548:	00001097          	auipc	ra,0x1
    8000254c:	204080e7          	jalr	516(ra) # 8000374c <_ZdlPv>
    delete (uint64*)tmp5;
    80002550:	000b8513          	mv	a0,s7
    80002554:	00001097          	auipc	ra,0x1
    80002558:	1f8080e7          	jalr	504(ra) # 8000374c <_ZdlPv>
    printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    8000255c:	00007517          	auipc	a0,0x7
    80002560:	c8c50513          	addi	a0,a0,-884 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80002564:	00003097          	auipc	ra,0x3
    80002568:	7c8080e7          	jalr	1992(ra) # 80005d2c <_Z11printStringPKc>
    8000256c:	e39ff06f          	j	800023a4 <_Z17mallocGapFillTestv+0x88>

0000000080002570 <_Z21memoryAllocationTestsv>:
{
    80002570:	ff010113          	addi	sp,sp,-16
    80002574:	00113423          	sd	ra,8(sp)
    80002578:	00813023          	sd	s0,0(sp)
    8000257c:	01010413          	addi	s0,sp,16
    mallocGapFillTest();
    80002580:	00000097          	auipc	ra,0x0
    80002584:	d9c080e7          	jalr	-612(ra) # 8000231c <_Z17mallocGapFillTestv>
}
    80002588:	00813083          	ld	ra,8(sp)
    8000258c:	00013403          	ld	s0,0(sp)
    80002590:	01010113          	addi	sp,sp,16
    80002594:	00008067          	ret

0000000080002598 <_Z8semTest1v>:

void semTest1()
{
    80002598:	fe010113          	addi	sp,sp,-32
    8000259c:	00113c23          	sd	ra,24(sp)
    800025a0:	00813823          	sd	s0,16(sp)
    800025a4:	02010413          	addi	s0,sp,32
    sem_open(&spaceAvailable, 10);
    800025a8:	00a00593          	li	a1,10
    800025ac:	00009517          	auipc	a0,0x9
    800025b0:	67450513          	addi	a0,a0,1652 # 8000bc20 <spaceAvailable>
    800025b4:	fffff097          	auipc	ra,0xfffff
    800025b8:	dc8080e7          	jalr	-568(ra) # 8000137c <sem_open>

    sem_open(&itemAvailable, 0);
    800025bc:	00000593          	li	a1,0
    800025c0:	00009517          	auipc	a0,0x9
    800025c4:	64850513          	addi	a0,a0,1608 # 8000bc08 <itemAvailable>
    800025c8:	fffff097          	auipc	ra,0xfffff
    800025cc:	db4080e7          	jalr	-588(ra) # 8000137c <sem_open>

    thread_t threadA, threadB;

    thread_create(&threadA, producerA, nullptr);
    800025d0:	00000613          	li	a2,0
    800025d4:	fffff597          	auipc	a1,0xfffff
    800025d8:	2bc58593          	addi	a1,a1,700 # 80001890 <_Z9producerAPv>
    800025dc:	fe840513          	addi	a0,s0,-24
    800025e0:	fffff097          	auipc	ra,0xfffff
    800025e4:	cd4080e7          	jalr	-812(ra) # 800012b4 <thread_create>

    thread_create(&threadB, consumerA, nullptr);
    800025e8:	00000613          	li	a2,0
    800025ec:	fffff597          	auipc	a1,0xfffff
    800025f0:	21c58593          	addi	a1,a1,540 # 80001808 <_Z9consumerAPv>
    800025f4:	fe040513          	addi	a0,s0,-32
    800025f8:	fffff097          	auipc	ra,0xfffff
    800025fc:	cbc080e7          	jalr	-836(ra) # 800012b4 <thread_create>
    80002600:	00c0006f          	j	8000260c <_Z8semTest1v+0x74>

    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
        thread_dispatch();
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	d30080e7          	jalr	-720(ra) # 80001334 <thread_dispatch>
    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
    8000260c:	fe843503          	ld	a0,-24(s0)
    80002610:	00000097          	auipc	ra,0x0
    80002614:	51c080e7          	jalr	1308(ra) # 80002b2c <_ZN3PCB10isFinishedEv>
    80002618:	fe0506e3          	beqz	a0,80002604 <_Z8semTest1v+0x6c>
    8000261c:	fe843503          	ld	a0,-24(s0)
    80002620:	00000097          	auipc	ra,0x0
    80002624:	50c080e7          	jalr	1292(ra) # 80002b2c <_ZN3PCB10isFinishedEv>
    80002628:	fc050ee3          	beqz	a0,80002604 <_Z8semTest1v+0x6c>
}
    8000262c:	01813083          	ld	ra,24(sp)
    80002630:	01013403          	ld	s0,16(sp)
    80002634:	02010113          	addi	sp,sp,32
    80002638:	00008067          	ret

000000008000263c <_Z14semaphoreTestsv>:
{
    8000263c:	ff010113          	addi	sp,sp,-16
    80002640:	00113423          	sd	ra,8(sp)
    80002644:	00813023          	sd	s0,0(sp)
    80002648:	01010413          	addi	s0,sp,16
    semTest1();
    8000264c:	00000097          	auipc	ra,0x0
    80002650:	f4c080e7          	jalr	-180(ra) # 80002598 <_Z8semTest1v>
}
    80002654:	00813083          	ld	ra,8(sp)
    80002658:	00013403          	ld	s0,0(sp)
    8000265c:	01010113          	addi	sp,sp,16
    80002660:	00008067          	ret

0000000080002664 <_Z12consoleTest1v>:

void consoleTest1()
{
    80002664:	fe010113          	addi	sp,sp,-32
    80002668:	00113c23          	sd	ra,24(sp)
    8000266c:	00813823          	sd	s0,16(sp)
    80002670:	00913423          	sd	s1,8(sp)
    80002674:	02010413          	addi	s0,sp,32
    for(int i = 0; i < 100;i++)
    80002678:	00000493          	li	s1,0
    8000267c:	06300793          	li	a5,99
    80002680:	0097ca63          	blt	a5,s1,80002694 <_Z12consoleTest1v+0x30>
    {
        getc();
    80002684:	fffff097          	auipc	ra,0xfffff
    80002688:	e8c080e7          	jalr	-372(ra) # 80001510 <getc>
    for(int i = 0; i < 100;i++)
    8000268c:	0014849b          	addiw	s1,s1,1
    80002690:	fedff06f          	j	8000267c <_Z12consoleTest1v+0x18>
    }
}
    80002694:	01813083          	ld	ra,24(sp)
    80002698:	01013403          	ld	s0,16(sp)
    8000269c:	00813483          	ld	s1,8(sp)
    800026a0:	02010113          	addi	sp,sp,32
    800026a4:	00008067          	ret

00000000800026a8 <_Z12consoleTestsv>:

void consoleTests()
{
    800026a8:	ff010113          	addi	sp,sp,-16
    800026ac:	00113423          	sd	ra,8(sp)
    800026b0:	00813023          	sd	s0,0(sp)
    800026b4:	01010413          	addi	s0,sp,16
    consoleTest1();
    800026b8:	00000097          	auipc	ra,0x0
    800026bc:	fac080e7          	jalr	-84(ra) # 80002664 <_Z12consoleTest1v>
}
    800026c0:	00813083          	ld	ra,8(sp)
    800026c4:	00013403          	ld	s0,0(sp)
    800026c8:	01010113          	addi	sp,sp,16
    800026cc:	00008067          	ret

00000000800026d0 <_Z15changeModeTest1v>:


void changeModeTest1()
{
    800026d0:	ff010113          	addi	sp,sp,-16
    800026d4:	00813423          	sd	s0,8(sp)
    800026d8:	01010413          	addi	s0,sp,16
    // u user niti smo
    __asm__ volatile("csrr a0, sstatus"); //treba da pukne
    800026dc:	10002573          	csrr	a0,sstatus
}
    800026e0:	00813403          	ld	s0,8(sp)
    800026e4:	01010113          	addi	sp,sp,16
    800026e8:	00008067          	ret

00000000800026ec <_Z15changeModeTestsv>:

void changeModeTests()
{
    800026ec:	ff010113          	addi	sp,sp,-16
    800026f0:	00113423          	sd	ra,8(sp)
    800026f4:	00813023          	sd	s0,0(sp)
    800026f8:	01010413          	addi	s0,sp,16
    changeModeTest1();
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	fd4080e7          	jalr	-44(ra) # 800026d0 <_Z15changeModeTest1v>
}
    80002704:	00813083          	ld	ra,8(sp)
    80002708:	00013403          	ld	s0,0(sp)
    8000270c:	01010113          	addi	sp,sp,16
    80002710:	00008067          	ret

0000000080002714 <_Z7myTestsv>:
{
    80002714:	ff010113          	addi	sp,sp,-16
    80002718:	00113423          	sd	ra,8(sp)
    8000271c:	00813023          	sd	s0,0(sp)
    80002720:	01010413          	addi	s0,sp,16
    changeModeTests();
    80002724:	00000097          	auipc	ra,0x0
    80002728:	fc8080e7          	jalr	-56(ra) # 800026ec <_Z15changeModeTestsv>
}
    8000272c:	00813083          	ld	ra,8(sp)
    80002730:	00013403          	ld	s0,0(sp)
    80002734:	01010113          	addi	sp,sp,16
    80002738:	00008067          	ret

000000008000273c <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    8000273c:	ff010113          	addi	sp,sp,-16
    80002740:	00813423          	sd	s0,8(sp)
    80002744:	01010413          	addi	s0,sp,16
    80002748:	00813403          	ld	s0,8(sp)
    8000274c:	01010113          	addi	sp,sp,16
    80002750:	00008067          	ret

0000000080002754 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80002754:	ff010113          	addi	sp,sp,-16
    80002758:	00813423          	sd	s0,8(sp)
    8000275c:	01010413          	addi	s0,sp,16
    80002760:	00813403          	ld	s0,8(sp)
    80002764:	01010113          	addi	sp,sp,16
    80002768:	00008067          	ret

000000008000276c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    8000276c:	ff010113          	addi	sp,sp,-16
    80002770:	00113423          	sd	ra,8(sp)
    80002774:	00813023          	sd	s0,0(sp)
    80002778:	01010413          	addi	s0,sp,16
    8000277c:	00009797          	auipc	a5,0x9
    80002780:	28478793          	addi	a5,a5,644 # 8000ba00 <_ZTV14PeriodicThread+0x10>
    80002784:	00f53023          	sd	a5,0(a0)
    80002788:	00001097          	auipc	ra,0x1
    8000278c:	f2c080e7          	jalr	-212(ra) # 800036b4 <_ZN6ThreadD1Ev>
    80002790:	00813083          	ld	ra,8(sp)
    80002794:	00013403          	ld	s0,0(sp)
    80002798:	01010113          	addi	sp,sp,16
    8000279c:	00008067          	ret

00000000800027a0 <_ZN14PeriodicThreadD0Ev>:
    800027a0:	fe010113          	addi	sp,sp,-32
    800027a4:	00113c23          	sd	ra,24(sp)
    800027a8:	00813823          	sd	s0,16(sp)
    800027ac:	00913423          	sd	s1,8(sp)
    800027b0:	02010413          	addi	s0,sp,32
    800027b4:	00050493          	mv	s1,a0
    800027b8:	00009797          	auipc	a5,0x9
    800027bc:	24878793          	addi	a5,a5,584 # 8000ba00 <_ZTV14PeriodicThread+0x10>
    800027c0:	00f53023          	sd	a5,0(a0)
    800027c4:	00001097          	auipc	ra,0x1
    800027c8:	ef0080e7          	jalr	-272(ra) # 800036b4 <_ZN6ThreadD1Ev>
    800027cc:	00048513          	mv	a0,s1
    800027d0:	00001097          	auipc	ra,0x1
    800027d4:	f7c080e7          	jalr	-132(ra) # 8000374c <_ZdlPv>
    800027d8:	01813083          	ld	ra,24(sp)
    800027dc:	01013403          	ld	s0,16(sp)
    800027e0:	00813483          	ld	s1,8(sp)
    800027e4:	02010113          	addi	sp,sp,32
    800027e8:	00008067          	ret

00000000800027ec <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    800027ec:	ff010113          	addi	sp,sp,-16
    800027f0:	00113423          	sd	ra,8(sp)
    800027f4:	00813023          	sd	s0,0(sp)
    800027f8:	01010413          	addi	s0,sp,16
    800027fc:	00009797          	auipc	a5,0x9
    80002800:	20478793          	addi	a5,a5,516 # 8000ba00 <_ZTV14PeriodicThread+0x10>
    80002804:	00f53023          	sd	a5,0(a0)
    80002808:	00001097          	auipc	ra,0x1
    8000280c:	eac080e7          	jalr	-340(ra) # 800036b4 <_ZN6ThreadD1Ev>
    80002810:	00813083          	ld	ra,8(sp)
    80002814:	00013403          	ld	s0,0(sp)
    80002818:	01010113          	addi	sp,sp,16
    8000281c:	00008067          	ret

0000000080002820 <_ZN12TestPeriodicD0Ev>:
    80002820:	fe010113          	addi	sp,sp,-32
    80002824:	00113c23          	sd	ra,24(sp)
    80002828:	00813823          	sd	s0,16(sp)
    8000282c:	00913423          	sd	s1,8(sp)
    80002830:	02010413          	addi	s0,sp,32
    80002834:	00050493          	mv	s1,a0
    80002838:	00009797          	auipc	a5,0x9
    8000283c:	1c878793          	addi	a5,a5,456 # 8000ba00 <_ZTV14PeriodicThread+0x10>
    80002840:	00f53023          	sd	a5,0(a0)
    80002844:	00001097          	auipc	ra,0x1
    80002848:	e70080e7          	jalr	-400(ra) # 800036b4 <_ZN6ThreadD1Ev>
    8000284c:	00048513          	mv	a0,s1
    80002850:	00001097          	auipc	ra,0x1
    80002854:	efc080e7          	jalr	-260(ra) # 8000374c <_ZdlPv>
    80002858:	01813083          	ld	ra,24(sp)
    8000285c:	01013403          	ld	s0,16(sp)
    80002860:	00813483          	ld	s1,8(sp)
    80002864:	02010113          	addi	sp,sp,32
    80002868:	00008067          	ret

000000008000286c <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    8000286c:	ff010113          	addi	sp,sp,-16
    80002870:	00113423          	sd	ra,8(sp)
    80002874:	00813023          	sd	s0,0(sp)
    80002878:	01010413          	addi	s0,sp,16
    //trapPrintString("Runner started...\n");
    Riscv::popSppSpie();
    8000287c:	00001097          	auipc	ra,0x1
    80002880:	2e8080e7          	jalr	744(ra) # 80003b64 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    80002884:	00009797          	auipc	a5,0x9
    80002888:	3ac7b783          	ld	a5,940(a5) # 8000bc30 <_ZN3PCB7runningE>
    8000288c:	0287b703          	ld	a4,40(a5)
    80002890:	0307b503          	ld	a0,48(a5)
    80002894:	000700e7          	jalr	a4

    //printString("Runner ended...\n");

    thread_exit();
    80002898:	fffff097          	auipc	ra,0xfffff
    8000289c:	abc080e7          	jalr	-1348(ra) # 80001354 <thread_exit>
}
    800028a0:	00813083          	ld	ra,8(sp)
    800028a4:	00013403          	ld	s0,0(sp)
    800028a8:	01010113          	addi	sp,sp,16
    800028ac:	00008067          	ret

00000000800028b0 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800028b0:	ff010113          	addi	sp,sp,-16
    800028b4:	00813423          	sd	s0,8(sp)
    800028b8:	01010413          	addi	s0,sp,16
    })
    800028bc:	00050023          	sb	zero,0(a0)
    800028c0:	00e53c23          	sd	a4,24(a0)
    800028c4:	02053023          	sd	zero,32(a0)
    800028c8:	02b53423          	sd	a1,40(a0)
    800028cc:	02c53823          	sd	a2,48(a0)
    800028d0:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800028d4:	000017b7          	lui	a5,0x1
    800028d8:	00f686b3          	add	a3,a3,a5
    })
    800028dc:	04d53423          	sd	a3,72(a0)
    800028e0:	00000797          	auipc	a5,0x0
    800028e4:	f8c78793          	addi	a5,a5,-116 # 8000286c <_ZN3PCB6runnerEv>
    800028e8:	04f53823          	sd	a5,80(a0)
    nextPCB = 0;
    800028ec:	00053423          	sd	zero,8(a0)
}
    800028f0:	00813403          	ld	s0,8(sp)
    800028f4:	01010113          	addi	sp,sp,16
    800028f8:	00008067          	ret

00000000800028fc <_ZN3PCB5sleepEm>:
{
    800028fc:	ff010113          	addi	sp,sp,-16
    80002900:	00813423          	sd	s0,8(sp)
    80002904:	01010413          	addi	s0,sp,16
}
    80002908:	00813403          	ld	s0,8(sp)
    8000290c:	01010113          	addi	sp,sp,16
    80002910:	00008067          	ret

0000000080002914 <_ZN3PCB5startEv>:
{
    80002914:	ff010113          	addi	sp,sp,-16
    80002918:	00113423          	sd	ra,8(sp)
    8000291c:	00813023          	sd	s0,0(sp)
    80002920:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002924:	00001097          	auipc	ra,0x1
    80002928:	c2c080e7          	jalr	-980(ra) # 80003550 <_ZN9Scheduler3putEP3PCB>
}
    8000292c:	00813083          	ld	ra,8(sp)
    80002930:	00013403          	ld	s0,0(sp)
    80002934:	01010113          	addi	sp,sp,16
    80002938:	00008067          	ret

000000008000293c <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    8000293c:	fe010113          	addi	sp,sp,-32
    80002940:	00113c23          	sd	ra,24(sp)
    80002944:	00813823          	sd	s0,16(sp)
    80002948:	00913423          	sd	s1,8(sp)
    8000294c:	01213023          	sd	s2,0(sp)
    80002950:	02010413          	addi	s0,sp,32
    //trapPrintString("Dispatch called...\n");
    PCB* old = running;
    80002954:	00009497          	auipc	s1,0x9
    80002958:	2dc4b483          	ld	s1,732(s1) # 8000bc30 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    8000295c:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    80002960:	00100793          	li	a5,1
    80002964:	04f70a63          	beq	a4,a5,800029b8 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002968:	00001097          	auipc	ra,0x1
    8000296c:	c3c080e7          	jalr	-964(ra) # 800035a4 <_ZN9Scheduler3getEv>
    80002970:	00009917          	auipc	s2,0x9
    80002974:	2c090913          	addi	s2,s2,704 # 8000bc30 <_ZN3PCB7runningE>
    80002978:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    8000297c:	00100793          	li	a5,1
    80002980:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);
    //trapPrintString("Switching context...\n");

    Riscv::changePrivMode();
    80002984:	00001097          	auipc	ra,0x1
    80002988:	3a0080e7          	jalr	928(ra) # 80003d24 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    8000298c:	00093583          	ld	a1,0(s2)
    80002990:	04858593          	addi	a1,a1,72
    80002994:	04848513          	addi	a0,s1,72
    80002998:	fffff097          	auipc	ra,0xfffff
    8000299c:	8a0080e7          	jalr	-1888(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800029a0:	01813083          	ld	ra,24(sp)
    800029a4:	01013403          	ld	s0,16(sp)
    800029a8:	00813483          	ld	s1,8(sp)
    800029ac:	00013903          	ld	s2,0(sp)
    800029b0:	02010113          	addi	sp,sp,32
    800029b4:	00008067          	ret
        Scheduler::put(old);
    800029b8:	00048513          	mv	a0,s1
    800029bc:	00001097          	auipc	ra,0x1
    800029c0:	b94080e7          	jalr	-1132(ra) # 80003550 <_ZN9Scheduler3putEP3PCB>
    800029c4:	fa5ff06f          	j	80002968 <_ZN3PCB8dispatchEv+0x2c>

00000000800029c8 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800029c8:	ff010113          	addi	sp,sp,-16
    800029cc:	00113423          	sd	ra,8(sp)
    800029d0:	00813023          	sd	s0,0(sp)
    800029d4:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800029d8:	00002097          	auipc	ra,0x2
    800029dc:	a70080e7          	jalr	-1424(ra) # 80004448 <_Z7kmallocm>
}
    800029e0:	00813083          	ld	ra,8(sp)
    800029e4:	00013403          	ld	s0,0(sp)
    800029e8:	01010113          	addi	sp,sp,16
    800029ec:	00008067          	ret

00000000800029f0 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    800029f0:	ff010113          	addi	sp,sp,-16
    800029f4:	00113423          	sd	ra,8(sp)
    800029f8:	00813023          	sd	s0,0(sp)
    800029fc:	01010413          	addi	s0,sp,16
    kfree(p);
    80002a00:	00002097          	auipc	ra,0x2
    80002a04:	aac080e7          	jalr	-1364(ra) # 800044ac <_Z5kfreePv>
}
    80002a08:	00813083          	ld	ra,8(sp)
    80002a0c:	00013403          	ld	s0,0(sp)
    80002a10:	01010113          	addi	sp,sp,16
    80002a14:	00008067          	ret

0000000080002a18 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80002a18:	ff010113          	addi	sp,sp,-16
    80002a1c:	00113423          	sd	ra,8(sp)
    80002a20:	00813023          	sd	s0,0(sp)
    80002a24:	01010413          	addi	s0,sp,16
{
    kfree(beginSP);
    80002a28:	03853503          	ld	a0,56(a0)
    80002a2c:	00002097          	auipc	ra,0x2
    80002a30:	a80080e7          	jalr	-1408(ra) # 800044ac <_Z5kfreePv>
}
    80002a34:	00813083          	ld	ra,8(sp)
    80002a38:	00013403          	ld	s0,0(sp)
    80002a3c:	01010113          	addi	sp,sp,16
    80002a40:	00008067          	ret

0000000080002a44 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    80002a44:	fd010113          	addi	sp,sp,-48
    80002a48:	02113423          	sd	ra,40(sp)
    80002a4c:	02813023          	sd	s0,32(sp)
    80002a50:	00913c23          	sd	s1,24(sp)
    80002a54:	01213823          	sd	s2,16(sp)
    80002a58:	01313423          	sd	s3,8(sp)
    80002a5c:	01413023          	sd	s4,0(sp)
    80002a60:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002a64:	05800513          	li	a0,88
    80002a68:	00000097          	auipc	ra,0x0
    80002a6c:	f60080e7          	jalr	-160(ra) # 800029c8 <_ZN3PCBnwEm>
    80002a70:	00050493          	mv	s1,a0
    80002a74:	00000713          	li	a4,0
    80002a78:	00000693          	li	a3,0
    80002a7c:	00000613          	li	a2,0
    80002a80:	00000593          	li	a1,0
    80002a84:	00000097          	auipc	ra,0x0
    80002a88:	e2c080e7          	jalr	-468(ra) # 800028b0 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->start();
    80002a8c:	00048513          	mv	a0,s1
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	e84080e7          	jalr	-380(ra) # 80002914 <_ZN3PCB5startEv>
    mainSystem->systemThread = true;
    80002a98:	00100793          	li	a5,1
    80002a9c:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    80002aa0:	00001097          	auipc	ra,0x1
    80002aa4:	b04080e7          	jalr	-1276(ra) # 800035a4 <_ZN9Scheduler3getEv>
    80002aa8:	00009917          	auipc	s2,0x9
    80002aac:	18890913          	addi	s2,s2,392 # 8000bc30 <_ZN3PCB7runningE>
    80002ab0:	00a93023          	sd	a0,0(s2)
    80002ab4:	00100a13          	li	s4,1
    80002ab8:	05452023          	sw	s4,64(a0)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002abc:	00001537          	lui	a0,0x1
    80002ac0:	00002097          	auipc	ra,0x2
    80002ac4:	988080e7          	jalr	-1656(ra) # 80004448 <_Z7kmallocm>
    80002ac8:	00050993          	mv	s3,a0
    80002acc:	05800513          	li	a0,88
    80002ad0:	00000097          	auipc	ra,0x0
    80002ad4:	ef8080e7          	jalr	-264(ra) # 800029c8 <_ZN3PCBnwEm>
    80002ad8:	00050493          	mv	s1,a0
    80002adc:	00200713          	li	a4,2
    80002ae0:	00098693          	mv	a3,s3
    80002ae4:	00000613          	li	a2,0
    80002ae8:	00009597          	auipc	a1,0x9
    80002aec:	0a85b583          	ld	a1,168(a1) # 8000bb90 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002af0:	00000097          	auipc	ra,0x0
    80002af4:	dc0080e7          	jalr	-576(ra) # 800028b0 <_ZN3PCBC1EPFvPvES0_S0_m>
    80002af8:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80002afc:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    80002b00:	00893503          	ld	a0,8(s2)
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	e10080e7          	jalr	-496(ra) # 80002914 <_ZN3PCB5startEv>
}
    80002b0c:	02813083          	ld	ra,40(sp)
    80002b10:	02013403          	ld	s0,32(sp)
    80002b14:	01813483          	ld	s1,24(sp)
    80002b18:	01013903          	ld	s2,16(sp)
    80002b1c:	00813983          	ld	s3,8(sp)
    80002b20:	00013a03          	ld	s4,0(sp)
    80002b24:	03010113          	addi	sp,sp,48
    80002b28:	00008067          	ret

0000000080002b2c <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002b2c:	ff010113          	addi	sp,sp,-16
    80002b30:	00813423          	sd	s0,8(sp)
    80002b34:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002b38:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    80002b3c:	ffd50513          	addi	a0,a0,-3
}
    80002b40:	00153513          	seqz	a0,a0
    80002b44:	00813403          	ld	s0,8(sp)
    80002b48:	01010113          	addi	sp,sp,16
    80002b4c:	00008067          	ret

0000000080002b50 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002b50:	ff010113          	addi	sp,sp,-16
    80002b54:	00113423          	sd	ra,8(sp)
    80002b58:	00813023          	sd	s0,0(sp)
    80002b5c:	01010413          	addi	s0,sp,16
    trapPrintString("Exiting thread...\n");
    80002b60:	00006517          	auipc	a0,0x6
    80002b64:	6e050513          	addi	a0,a0,1760 # 80009240 <CONSOLE_STATUS+0x230>
    80002b68:	00003097          	auipc	ra,0x3
    80002b6c:	470080e7          	jalr	1136(ra) # 80005fd8 <_Z15trapPrintStringPKc>
    PCB::timeSliceCounter = 0;
    80002b70:	00009797          	auipc	a5,0x9
    80002b74:	0c078793          	addi	a5,a5,192 # 8000bc30 <_ZN3PCB7runningE>
    80002b78:	0007b823          	sd	zero,16(a5)
    PCB::running->setState(PCB::FINISHED);
    80002b7c:	0007b783          	ld	a5,0(a5)
    80002b80:	00300713          	li	a4,3
    80002b84:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    80002b88:	00000097          	auipc	ra,0x0
    80002b8c:	db4080e7          	jalr	-588(ra) # 8000293c <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80002b90:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002b94:	00001097          	auipc	ra,0x1
    80002b98:	158080e7          	jalr	344(ra) # 80003cec <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b9c:	00813083          	ld	ra,8(sp)
    80002ba0:	00013403          	ld	s0,0(sp)
    80002ba4:	01010113          	addi	sp,sp,16
    80002ba8:	00008067          	ret

0000000080002bac <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002bac:	ff010113          	addi	sp,sp,-16
    80002bb0:	00113423          	sd	ra,8(sp)
    80002bb4:	00813023          	sd	s0,0(sp)
    80002bb8:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002bbc:	00009797          	auipc	a5,0x9
    80002bc0:	0807b223          	sd	zero,132(a5) # 8000bc40 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	d78080e7          	jalr	-648(ra) # 8000293c <_ZN3PCB8dispatchEv>
}
    80002bcc:	00813083          	ld	ra,8(sp)
    80002bd0:	00013403          	ld	s0,0(sp)
    80002bd4:	01010113          	addi	sp,sp,16
    80002bd8:	00008067          	ret

0000000080002bdc <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002bdc:	ff010113          	addi	sp,sp,-16
    80002be0:	00113423          	sd	ra,8(sp)
    80002be4:	00813023          	sd	s0,0(sp)
    80002be8:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002bec:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002bf0:	00009717          	auipc	a4,0x9
    80002bf4:	04070713          	addi	a4,a4,64 # 8000bc30 <_ZN3PCB7runningE>
    80002bf8:	00073823          	sd	zero,16(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002bfc:	00073703          	ld	a4,0(a4)
    80002c00:	00009697          	auipc	a3,0x9
    80002c04:	f886b683          	ld	a3,-120(a3) # 8000bb88 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002c08:	0006b683          	ld	a3,0(a3)
    80002c0c:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002c10:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002c14:	00000097          	auipc	ra,0x0
    80002c18:	634080e7          	jalr	1588(ra) # 80003248 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002c1c:	00000097          	auipc	ra,0x0
    80002c20:	d20080e7          	jalr	-736(ra) # 8000293c <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002c24:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002c28:	00001097          	auipc	ra,0x1
    80002c2c:	0c4080e7          	jalr	196(ra) # 80003cec <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c30:	00813083          	ld	ra,8(sp)
    80002c34:	00013403          	ld	s0,0(sp)
    80002c38:	01010113          	addi	sp,sp,16
    80002c3c:	00008067          	ret

0000000080002c40 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002c40:	fd010113          	addi	sp,sp,-48
    80002c44:	02113423          	sd	ra,40(sp)
    80002c48:	02813023          	sd	s0,32(sp)
    80002c4c:	00913c23          	sd	s1,24(sp)
    80002c50:	01213823          	sd	s2,16(sp)
    80002c54:	01313423          	sd	s3,8(sp)
    80002c58:	01413023          	sd	s4,0(sp)
    80002c5c:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002c60:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002c64:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002c68:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002c6c:	05800513          	li	a0,88
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	d58080e7          	jalr	-680(ra) # 800029c8 <_ZN3PCBnwEm>
    80002c78:	00050493          	mv	s1,a0
    80002c7c:	00200713          	li	a4,2
    80002c80:	00009697          	auipc	a3,0x9
    80002c84:	fc86b683          	ld	a3,-56(a3) # 8000bc48 <_ZN3PCB10savedRegA4E>
    80002c88:	000a0613          	mv	a2,s4
    80002c8c:	00098593          	mv	a1,s3
    80002c90:	00000097          	auipc	ra,0x0
    80002c94:	c20080e7          	jalr	-992(ra) # 800028b0 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002c98:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002c9c:	02048e63          	beqz	s1,80002cd8 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002ca0:	00048513          	mv	a0,s1
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	c70080e7          	jalr	-912(ra) # 80002914 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002cac:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002cb0:	00001097          	auipc	ra,0x1
    80002cb4:	03c080e7          	jalr	60(ra) # 80003cec <_ZN5Riscv13w_a0_sscratchEv>
}
    80002cb8:	02813083          	ld	ra,40(sp)
    80002cbc:	02013403          	ld	s0,32(sp)
    80002cc0:	01813483          	ld	s1,24(sp)
    80002cc4:	01013903          	ld	s2,16(sp)
    80002cc8:	00813983          	ld	s3,8(sp)
    80002ccc:	00013a03          	ld	s4,0(sp)
    80002cd0:	03010113          	addi	sp,sp,48
    80002cd4:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002cd8:	fff00513          	li	a0,-1
    80002cdc:	fd5ff06f          	j	80002cb0 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002ce0 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002ce0:	ff010113          	addi	sp,sp,-16
    80002ce4:	00113423          	sd	ra,8(sp)
    80002ce8:	00813023          	sd	s0,0(sp)
    80002cec:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002cf0:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002cf4:	02050463          	beqz	a0,80002d1c <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002cf8:	00000097          	auipc	ra,0x0
    80002cfc:	c1c080e7          	jalr	-996(ra) # 80002914 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002d00:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002d04:	00001097          	auipc	ra,0x1
    80002d08:	fe8080e7          	jalr	-24(ra) # 80003cec <_ZN5Riscv13w_a0_sscratchEv>
}
    80002d0c:	00813083          	ld	ra,8(sp)
    80002d10:	00013403          	ld	s0,0(sp)
    80002d14:	01010113          	addi	sp,sp,16
    80002d18:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002d1c:	fff00513          	li	a0,-1
    80002d20:	fe5ff06f          	j	80002d04 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002d24 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002d24:	fd010113          	addi	sp,sp,-48
    80002d28:	02113423          	sd	ra,40(sp)
    80002d2c:	02813023          	sd	s0,32(sp)
    80002d30:	00913c23          	sd	s1,24(sp)
    80002d34:	01213823          	sd	s2,16(sp)
    80002d38:	01313423          	sd	s3,8(sp)
    80002d3c:	01413023          	sd	s4,0(sp)
    80002d40:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002d44:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002d48:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002d4c:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002d50:	05800513          	li	a0,88
    80002d54:	00000097          	auipc	ra,0x0
    80002d58:	c74080e7          	jalr	-908(ra) # 800029c8 <_ZN3PCBnwEm>
    80002d5c:	00050493          	mv	s1,a0
    80002d60:	00200713          	li	a4,2
    80002d64:	00009697          	auipc	a3,0x9
    80002d68:	ee46b683          	ld	a3,-284(a3) # 8000bc48 <_ZN3PCB10savedRegA4E>
    80002d6c:	000a0613          	mv	a2,s4
    80002d70:	00098593          	mv	a1,s3
    80002d74:	00000097          	auipc	ra,0x0
    80002d78:	b3c080e7          	jalr	-1220(ra) # 800028b0 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002d7c:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002d80:	02048863          	beqz	s1,80002db0 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80002d84:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002d88:	00001097          	auipc	ra,0x1
    80002d8c:	f64080e7          	jalr	-156(ra) # 80003cec <_ZN5Riscv13w_a0_sscratchEv>
}
    80002d90:	02813083          	ld	ra,40(sp)
    80002d94:	02013403          	ld	s0,32(sp)
    80002d98:	01813483          	ld	s1,24(sp)
    80002d9c:	01013903          	ld	s2,16(sp)
    80002da0:	00813983          	ld	s3,8(sp)
    80002da4:	00013a03          	ld	s4,0(sp)
    80002da8:	03010113          	addi	sp,sp,48
    80002dac:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002db0:	fff00513          	li	a0,-1
    80002db4:	fd5ff06f          	j	80002d88 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002db8 <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    80002db8:	fe010113          	addi	sp,sp,-32
    80002dbc:	00113c23          	sd	ra,24(sp)
    80002dc0:	00813823          	sd	s0,16(sp)
    80002dc4:	00913423          	sd	s1,8(sp)
    80002dc8:	01213023          	sd	s2,0(sp)
    80002dcc:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002dd0:	01800513          	li	a0,24
    80002dd4:	00002097          	auipc	ra,0x2
    80002dd8:	988080e7          	jalr	-1656(ra) # 8000475c <_ZN10KSemaphorenwEm>
    80002ddc:	00050493          	mv	s1,a0
    80002de0:	00000593          	li	a1,0
    80002de4:	00001097          	auipc	ra,0x1
    80002de8:	728080e7          	jalr	1832(ra) # 8000450c <_ZN10KSemaphoreC1Ei>
    80002dec:	00009797          	auipc	a5,0x9
    80002df0:	e697b223          	sd	s1,-412(a5) # 8000bc50 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002df4:	01800513          	li	a0,24
    80002df8:	00002097          	auipc	ra,0x2
    80002dfc:	964080e7          	jalr	-1692(ra) # 8000475c <_ZN10KSemaphorenwEm>
    80002e00:	00050493          	mv	s1,a0
    80002e04:	00000593          	li	a1,0
    80002e08:	00001097          	auipc	ra,0x1
    80002e0c:	704080e7          	jalr	1796(ra) # 8000450c <_ZN10KSemaphoreC1Ei>
    80002e10:	00009797          	auipc	a5,0x9
    80002e14:	e497b423          	sd	s1,-440(a5) # 8000bc58 <_ZN8KConsole19hasCharactersOutputE>
}
    80002e18:	01813083          	ld	ra,24(sp)
    80002e1c:	01013403          	ld	s0,16(sp)
    80002e20:	00813483          	ld	s1,8(sp)
    80002e24:	00013903          	ld	s2,0(sp)
    80002e28:	02010113          	addi	sp,sp,32
    80002e2c:	00008067          	ret
    80002e30:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002e34:	00048513          	mv	a0,s1
    80002e38:	00002097          	auipc	ra,0x2
    80002e3c:	9bc080e7          	jalr	-1604(ra) # 800047f4 <_ZN10KSemaphoredlEPv>
    80002e40:	00090513          	mv	a0,s2
    80002e44:	0000e097          	auipc	ra,0xe
    80002e48:	f84080e7          	jalr	-124(ra) # 80010dc8 <_Unwind_Resume>
    80002e4c:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002e50:	00048513          	mv	a0,s1
    80002e54:	00002097          	auipc	ra,0x2
    80002e58:	9a0080e7          	jalr	-1632(ra) # 800047f4 <_ZN10KSemaphoredlEPv>
    80002e5c:	00090513          	mv	a0,s2
    80002e60:	0000e097          	auipc	ra,0xe
    80002e64:	f68080e7          	jalr	-152(ra) # 80010dc8 <_Unwind_Resume>

0000000080002e68 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80002e68:	00009697          	auipc	a3,0x9
    80002e6c:	de868693          	addi	a3,a3,-536 # 8000bc50 <_ZN8KConsole18hasCharactersInputE>
    80002e70:	0106b603          	ld	a2,16(a3)
    80002e74:	00160793          	addi	a5,a2,1
    80002e78:	00002737          	lui	a4,0x2
    80002e7c:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002e80:	00e7f7b3          	and	a5,a5,a4
    80002e84:	0186b703          	ld	a4,24(a3)
    80002e88:	04e78263          	beq	a5,a4,80002ecc <_ZN8KConsole17putCharacterInputEc+0x64>
{
    80002e8c:	ff010113          	addi	sp,sp,-16
    80002e90:	00113423          	sd	ra,8(sp)
    80002e94:	00813023          	sd	s0,0(sp)
    80002e98:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80002e9c:	0000b717          	auipc	a4,0xb
    80002ea0:	df470713          	addi	a4,a4,-524 # 8000dc90 <_ZN8KConsole11inputBufferE>
    80002ea4:	00c70633          	add	a2,a4,a2
    80002ea8:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80002eac:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    80002eb0:	0006b503          	ld	a0,0(a3)
    80002eb4:	00002097          	auipc	ra,0x2
    80002eb8:	860080e7          	jalr	-1952(ra) # 80004714 <_ZN10KSemaphore6signalEv>
}
    80002ebc:	00813083          	ld	ra,8(sp)
    80002ec0:	00013403          	ld	s0,0(sp)
    80002ec4:	01010113          	addi	sp,sp,16
    80002ec8:	00008067          	ret
    80002ecc:	00008067          	ret

0000000080002ed0 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002ed0:	fe010113          	addi	sp,sp,-32
    80002ed4:	00113c23          	sd	ra,24(sp)
    80002ed8:	00813823          	sd	s0,16(sp)
    80002edc:	00913423          	sd	s1,8(sp)
    80002ee0:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80002ee4:	00009497          	auipc	s1,0x9
    80002ee8:	d6c48493          	addi	s1,s1,-660 # 8000bc50 <_ZN8KConsole18hasCharactersInputE>
    80002eec:	0004b503          	ld	a0,0(s1)
    80002ef0:	00001097          	auipc	ra,0x1
    80002ef4:	6c4080e7          	jalr	1732(ra) # 800045b4 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80002ef8:	0184b783          	ld	a5,24(s1)
    80002efc:	0104b703          	ld	a4,16(s1)
    80002f00:	04e78063          	beq	a5,a4,80002f40 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80002f04:	0000b717          	auipc	a4,0xb
    80002f08:	d8c70713          	addi	a4,a4,-628 # 8000dc90 <_ZN8KConsole11inputBufferE>
    80002f0c:	00f70733          	add	a4,a4,a5
    80002f10:	00074503          	lbu	a0,0(a4)

    inputHead = (inputHead+1)%bufferSize;
    80002f14:	00178793          	addi	a5,a5,1
    80002f18:	00002737          	lui	a4,0x2
    80002f1c:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002f20:	00e7f7b3          	and	a5,a5,a4
    80002f24:	00009717          	auipc	a4,0x9
    80002f28:	d4f73223          	sd	a5,-700(a4) # 8000bc68 <_ZN8KConsole9inputHeadE>

    return c;
}
    80002f2c:	01813083          	ld	ra,24(sp)
    80002f30:	01013403          	ld	s0,16(sp)
    80002f34:	00813483          	ld	s1,8(sp)
    80002f38:	02010113          	addi	sp,sp,32
    80002f3c:	00008067          	ret
        return -1;
    80002f40:	0ff00513          	li	a0,255
    80002f44:	fe9ff06f          	j	80002f2c <_ZN8KConsole17getCharacterInputEv+0x5c>

0000000080002f48 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80002f48:	00009697          	auipc	a3,0x9
    80002f4c:	d0868693          	addi	a3,a3,-760 # 8000bc50 <_ZN8KConsole18hasCharactersInputE>
    80002f50:	0206b603          	ld	a2,32(a3)
    80002f54:	00160793          	addi	a5,a2,1
    80002f58:	00002737          	lui	a4,0x2
    80002f5c:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002f60:	00e7f7b3          	and	a5,a5,a4
    80002f64:	0286b703          	ld	a4,40(a3)
    80002f68:	04e78a63          	beq	a5,a4,80002fbc <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80002f6c:	ff010113          	addi	sp,sp,-16
    80002f70:	00113423          	sd	ra,8(sp)
    80002f74:	00813023          	sd	s0,0(sp)
    80002f78:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80002f7c:	00068713          	mv	a4,a3
    80002f80:	0306b683          	ld	a3,48(a3)
    80002f84:	00168693          	addi	a3,a3,1
    80002f88:	02d73823          	sd	a3,48(a4)
    outputBuffer[outputTail] = c;
    80002f8c:	00009697          	auipc	a3,0x9
    80002f90:	d0468693          	addi	a3,a3,-764 # 8000bc90 <_ZN8KConsole12outputBufferE>
    80002f94:	00c68633          	add	a2,a3,a2
    80002f98:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80002f9c:	02f73023          	sd	a5,32(a4)
    hasCharactersOutput->signal();
    80002fa0:	00873503          	ld	a0,8(a4)
    80002fa4:	00001097          	auipc	ra,0x1
    80002fa8:	770080e7          	jalr	1904(ra) # 80004714 <_ZN10KSemaphore6signalEv>
}
    80002fac:	00813083          	ld	ra,8(sp)
    80002fb0:	00013403          	ld	s0,0(sp)
    80002fb4:	01010113          	addi	sp,sp,16
    80002fb8:	00008067          	ret
    80002fbc:	00008067          	ret

0000000080002fc0 <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80002fc0:	00009797          	auipc	a5,0x9
    80002fc4:	b907b783          	ld	a5,-1136(a5) # 8000bb50 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002fc8:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002fcc:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002fd0:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002fd4:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002fd8:	0017f793          	andi	a5,a5,1
    80002fdc:	08078063          	beqz	a5,8000305c <_ZN8KConsole24getCharactersFromConsoleEPv+0x9c>
{
    80002fe0:	fe010113          	addi	sp,sp,-32
    80002fe4:	00113c23          	sd	ra,24(sp)
    80002fe8:	00813823          	sd	s0,16(sp)
    80002fec:	00913423          	sd	s1,8(sp)
    80002ff0:	02010413          	addi	s0,sp,32
            x = CONSOLE_TX_DATA;
    80002ff4:	00009797          	auipc	a5,0x9
    80002ff8:	b7c7b783          	ld	a5,-1156(a5) # 8000bb70 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002ffc:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003000:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1,0(a0)");
    80003004:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003008:	00058493          	mv	s1,a1
    8000300c:	0ff4f493          	andi	s1,s1,255
            putCharacterInput(c);
    80003010:	00048513          	mv	a0,s1
    80003014:	00000097          	auipc	ra,0x0
    80003018:	e54080e7          	jalr	-428(ra) # 80002e68 <_ZN8KConsole17putCharacterInputEc>
            putCharacterOutput(c);
    8000301c:	00048513          	mv	a0,s1
    80003020:	00000097          	auipc	ra,0x0
    80003024:	f28080e7          	jalr	-216(ra) # 80002f48 <_ZN8KConsole18putCharacterOutputEc>
        uint64 x = CONSOLE_STATUS;
    80003028:	00009797          	auipc	a5,0x9
    8000302c:	b287b783          	ld	a5,-1240(a5) # 8000bb50 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003030:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80003034:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80003038:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    8000303c:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80003040:	0017f793          	andi	a5,a5,1
    80003044:	fa0798e3          	bnez	a5,80002ff4 <_ZN8KConsole24getCharactersFromConsoleEPv+0x34>
}
    80003048:	01813083          	ld	ra,24(sp)
    8000304c:	01013403          	ld	s0,16(sp)
    80003050:	00813483          	ld	s1,8(sp)
    80003054:	02010113          	addi	sp,sp,32
    80003058:	00008067          	ret
    8000305c:	00008067          	ret

0000000080003060 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80003060:	fe010113          	addi	sp,sp,-32
    80003064:	00113c23          	sd	ra,24(sp)
    80003068:	00813823          	sd	s0,16(sp)
    8000306c:	00913423          	sd	s1,8(sp)
    80003070:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80003074:	00009497          	auipc	s1,0x9
    80003078:	bdc48493          	addi	s1,s1,-1060 # 8000bc50 <_ZN8KConsole18hasCharactersInputE>
    8000307c:	0084b503          	ld	a0,8(s1)
    80003080:	00001097          	auipc	ra,0x1
    80003084:	534080e7          	jalr	1332(ra) # 800045b4 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80003088:	0284b783          	ld	a5,40(s1)
    8000308c:	0204b703          	ld	a4,32(s1)
    80003090:	04e78063          	beq	a5,a4,800030d0 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;

    char c = outputBuffer[outputHead];
    80003094:	00009717          	auipc	a4,0x9
    80003098:	bfc70713          	addi	a4,a4,-1028 # 8000bc90 <_ZN8KConsole12outputBufferE>
    8000309c:	00f70733          	add	a4,a4,a5
    800030a0:	00074503          	lbu	a0,0(a4)

    outputHead = (outputHead+1)%bufferSize;
    800030a4:	00178793          	addi	a5,a5,1
    800030a8:	00002737          	lui	a4,0x2
    800030ac:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800030b0:	00e7f7b3          	and	a5,a5,a4
    800030b4:	00009717          	auipc	a4,0x9
    800030b8:	bcf73223          	sd	a5,-1084(a4) # 8000bc78 <_ZN8KConsole10outputHeadE>

    return c;
}
    800030bc:	01813083          	ld	ra,24(sp)
    800030c0:	01013403          	ld	s0,16(sp)
    800030c4:	00813483          	ld	s1,8(sp)
    800030c8:	02010113          	addi	sp,sp,32
    800030cc:	00008067          	ret
        return -1;
    800030d0:	0ff00513          	li	a0,255
    800030d4:	fe9ff06f          	j	800030bc <_ZN8KConsole18getCharacterOutputEv+0x5c>

00000000800030d8 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    800030d8:	ff010113          	addi	sp,sp,-16
    800030dc:	00113423          	sd	ra,8(sp)
    800030e0:	00813023          	sd	s0,0(sp)
    800030e4:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    800030e8:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    800030ec:	0ff57513          	andi	a0,a0,255
    800030f0:	00000097          	auipc	ra,0x0
    800030f4:	e58080e7          	jalr	-424(ra) # 80002f48 <_ZN8KConsole18putCharacterOutputEc>
}
    800030f8:	00813083          	ld	ra,8(sp)
    800030fc:	00013403          	ld	s0,0(sp)
    80003100:	01010113          	addi	sp,sp,16
    80003104:	00008067          	ret

0000000080003108 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80003108:	ff010113          	addi	sp,sp,-16
    8000310c:	00113423          	sd	ra,8(sp)
    80003110:	00813023          	sd	s0,0(sp)
    80003114:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterInput();
    80003118:	00000097          	auipc	ra,0x0
    8000311c:	db8080e7          	jalr	-584(ra) # 80002ed0 <_ZN8KConsole17getCharacterInputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003120:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003124:	00001097          	auipc	ra,0x1
    80003128:	bc8080e7          	jalr	-1080(ra) # 80003cec <_ZN5Riscv13w_a0_sscratchEv>
}
    8000312c:	00813083          	ld	ra,8(sp)
    80003130:	00013403          	ld	s0,0(sp)
    80003134:	01010113          	addi	sp,sp,16
    80003138:	00008067          	ret

000000008000313c <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    8000313c:	ff010113          	addi	sp,sp,-16
    80003140:	00813423          	sd	s0,8(sp)
    80003144:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80003148:	00009517          	auipc	a0,0x9
    8000314c:	b3853503          	ld	a0,-1224(a0) # 8000bc80 <_ZN8KConsole11pendingPutcE>
    80003150:	00153513          	seqz	a0,a0
    80003154:	00813403          	ld	s0,8(sp)
    80003158:	01010113          	addi	sp,sp,16
    8000315c:	00008067          	ret

0000000080003160 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    80003160:	fe010113          	addi	sp,sp,-32
    80003164:	00113c23          	sd	ra,24(sp)
    80003168:	00813823          	sd	s0,16(sp)
    8000316c:	02010413          	addi	s0,sp,32
    80003170:	0640006f          	j	800031d4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x74>
            uint64 x = CONSOLE_STATUS;
    80003174:	00009797          	auipc	a5,0x9
    80003178:	9dc7b783          	ld	a5,-1572(a5) # 8000bb50 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000317c:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003180:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003184:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003188:	00058793          	mv	a5,a1
            if (operation & STATUS_WRITE_MASK)
    8000318c:	0207f793          	andi	a5,a5,32
    80003190:	06078c63          	beqz	a5,80003208 <_ZN8KConsole23sendCharactersToConsoleEPv+0xa8>
                char volatile c = sysCallGetCharOutput();
    80003194:	ffffe097          	auipc	ra,0xffffe
    80003198:	3c8080e7          	jalr	968(ra) # 8000155c <sysCallGetCharOutput>
    8000319c:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    800031a0:	00009717          	auipc	a4,0x9
    800031a4:	ab070713          	addi	a4,a4,-1360 # 8000bc50 <_ZN8KConsole18hasCharactersInputE>
    800031a8:	03073783          	ld	a5,48(a4)
    800031ac:	fff78793          	addi	a5,a5,-1
    800031b0:	02f73823          	sd	a5,48(a4)
                x = CONSOLE_RX_DATA;
    800031b4:	00009797          	auipc	a5,0x9
    800031b8:	9947b783          	ld	a5,-1644(a5) # 8000bb48 <_GLOBAL_OFFSET_TABLE_+0x8>
    800031bc:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    800031c0:	00078513          	mv	a0,a5
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    800031c4:	fef44783          	lbu	a5,-17(s0)
    800031c8:	0ff7f793          	andi	a5,a5,255
    800031cc:	00078593          	mv	a1,a5
                __asm__ volatile("sb a1,0(a0)");
    800031d0:	00b50023          	sb	a1,0(a0)
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    800031d4:	00009797          	auipc	a5,0x9
    800031d8:	9cc7b783          	ld	a5,-1588(a5) # 8000bba0 <_GLOBAL_OFFSET_TABLE_+0x60>
    800031dc:	0007c783          	lbu	a5,0(a5)
    800031e0:	f8078ae3          	beqz	a5,80003174 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
    800031e4:	00000097          	auipc	ra,0x0
    800031e8:	f58080e7          	jalr	-168(ra) # 8000313c <_ZN8KConsole17outputBufferEmptyEv>
    800031ec:	f80504e3          	beqz	a0,80003174 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
    800031f0:	00009797          	auipc	a5,0x9
    800031f4:	a987b783          	ld	a5,-1384(a5) # 8000bc88 <_ZN8KConsole11pendingGetcE>
    800031f8:	f6079ee3          	bnez	a5,80003174 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
                thread_exit();
    800031fc:	ffffe097          	auipc	ra,0xffffe
    80003200:	158080e7          	jalr	344(ra) # 80001354 <thread_exit>
    80003204:	f71ff06f          	j	80003174 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
                thread_dispatch();
    80003208:	ffffe097          	auipc	ra,0xffffe
    8000320c:	12c080e7          	jalr	300(ra) # 80001334 <thread_dispatch>
    80003210:	fc5ff06f          	j	800031d4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x74>

0000000080003214 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    80003214:	ff010113          	addi	sp,sp,-16
    80003218:	00113423          	sd	ra,8(sp)
    8000321c:	00813023          	sd	s0,0(sp)
    80003220:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80003224:	00000097          	auipc	ra,0x0
    80003228:	e3c080e7          	jalr	-452(ra) # 80003060 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    8000322c:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003230:	00001097          	auipc	ra,0x1
    80003234:	abc080e7          	jalr	-1348(ra) # 80003cec <_ZN5Riscv13w_a0_sscratchEv>
}
    80003238:	00813083          	ld	ra,8(sp)
    8000323c:	00013403          	ld	s0,0(sp)
    80003240:	01010113          	addi	sp,sp,16
    80003244:	00008067          	ret

0000000080003248 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003248:	ff010113          	addi	sp,sp,-16
    8000324c:	00813423          	sd	s0,8(sp)
    80003250:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003254:	00009797          	auipc	a5,0x9
    80003258:	9547b783          	ld	a5,-1708(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000325c:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003260:	00500793          	li	a5,5
    80003264:	04f62023          	sw	a5,64(a2)
    //trapPrintString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003268:	0000d797          	auipc	a5,0xd
    8000326c:	a287b783          	ld	a5,-1496(a5) # 8000fc90 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003270:	00000593          	li	a1,0
    while(curr != 0)
    80003274:	02078063          	beqz	a5,80003294 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003278:	02063683          	ld	a3,32(a2)
    8000327c:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003280:	00e6e863          	bltu	a3,a4,80003290 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003284:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003288:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000328c:	fe9ff06f          	j	80003274 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003290:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80003294:	00058a63          	beqz	a1,800032a8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80003298:	00c5b423          	sd	a2,8(a1)
}
    8000329c:	00813403          	ld	s0,8(sp)
    800032a0:	01010113          	addi	sp,sp,16
    800032a4:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800032a8:	0000d797          	auipc	a5,0xd
    800032ac:	9ec7b423          	sd	a2,-1560(a5) # 8000fc90 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800032b0:	fedff06f          	j	8000329c <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

00000000800032b4 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //trapPrintString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    800032b4:	0000d517          	auipc	a0,0xd
    800032b8:	9dc53503          	ld	a0,-1572(a0) # 8000fc90 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    800032bc:	06050e63          	beqz	a0,80003338 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    {
        //trapPrintString("No sleeping PCBs...\n");
        return;
    }
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800032c0:	06050c63          	beqz	a0,80003338 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    800032c4:	02053783          	ld	a5,32(a0)
    800032c8:	00009717          	auipc	a4,0x9
    800032cc:	8c073703          	ld	a4,-1856(a4) # 8000bb88 <_GLOBAL_OFFSET_TABLE_+0x48>
    800032d0:	00073703          	ld	a4,0(a4)
    800032d4:	06f76263          	bltu	a4,a5,80003338 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    800032d8:	fe010113          	addi	sp,sp,-32
    800032dc:	00113c23          	sd	ra,24(sp)
    800032e0:	00813823          	sd	s0,16(sp)
    800032e4:	00913423          	sd	s1,8(sp)
    800032e8:	02010413          	addi	s0,sp,32
    800032ec:	0180006f          	j	80003304 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    800032f0:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800032f4:	00009717          	auipc	a4,0x9
    800032f8:	89473703          	ld	a4,-1900(a4) # 8000bb88 <_GLOBAL_OFFSET_TABLE_+0x48>
    800032fc:	00073703          	ld	a4,0(a4)
    80003300:	02f76263          	bltu	a4,a5,80003324 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80003304:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80003308:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    8000330c:	00000097          	auipc	ra,0x0
    80003310:	244080e7          	jalr	580(ra) # 80003550 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003314:	0000d797          	auipc	a5,0xd
    80003318:	9697be23          	sd	s1,-1668(a5) # 8000fc90 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    8000331c:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003320:	fc0498e3          	bnez	s1,800032f0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    80003324:	01813083          	ld	ra,24(sp)
    80003328:	01013403          	ld	s0,16(sp)
    8000332c:	00813483          	ld	s1,8(sp)
    80003330:	02010113          	addi	sp,sp,32
    80003334:	00008067          	ret
    80003338:	00008067          	ret

000000008000333c <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    8000333c:	fe010113          	addi	sp,sp,-32
    80003340:	00113c23          	sd	ra,24(sp)
    80003344:	00813823          	sd	s0,16(sp)
    80003348:	00913423          	sd	s1,8(sp)
    8000334c:	01213023          	sd	s2,0(sp)
    80003350:	02010413          	addi	s0,sp,32
    80003354:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80003358:	00053503          	ld	a0,0(a0)
    8000335c:	00853903          	ld	s2,8(a0)
    kfree(first);
    80003360:	00001097          	auipc	ra,0x1
    80003364:	14c080e7          	jalr	332(ra) # 800044ac <_Z5kfreePv>
    first = newFirst;
    80003368:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    8000336c:	00090e63          	beqz	s2,80003388 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80003370:	01813083          	ld	ra,24(sp)
    80003374:	01013403          	ld	s0,16(sp)
    80003378:	00813483          	ld	s1,8(sp)
    8000337c:	00013903          	ld	s2,0(sp)
    80003380:	02010113          	addi	sp,sp,32
    80003384:	00008067          	ret
        first = last = 0;
    80003388:	0004b423          	sd	zero,8(s1)
    8000338c:	0004b023          	sd	zero,0(s1)
}
    80003390:	fe1ff06f          	j	80003370 <_ZN5Queue3popEv+0x34>

0000000080003394 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t)
{
    80003394:	fe010113          	addi	sp,sp,-32
    80003398:	00113c23          	sd	ra,24(sp)
    8000339c:	00813823          	sd	s0,16(sp)
    800033a0:	00913423          	sd	s1,8(sp)
    800033a4:	01213023          	sd	s2,0(sp)
    800033a8:	02010413          	addi	s0,sp,32
    800033ac:	00050493          	mv	s1,a0
    800033b0:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    800033b4:	01000513          	li	a0,16
    800033b8:	00001097          	auipc	ra,0x1
    800033bc:	090080e7          	jalr	144(ra) # 80004448 <_Z7kmallocm>
    newElem->data = t;
    800033c0:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    800033c4:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    800033c8:	0004b783          	ld	a5,0(s1)
    800033cc:	02078463          	beqz	a5,800033f4 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    800033d0:	0084b783          	ld	a5,8(s1)
    800033d4:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    800033d8:	00a4b423          	sd	a0,8(s1)
    }
}
    800033dc:	01813083          	ld	ra,24(sp)
    800033e0:	01013403          	ld	s0,16(sp)
    800033e4:	00813483          	ld	s1,8(sp)
    800033e8:	00013903          	ld	s2,0(sp)
    800033ec:	02010113          	addi	sp,sp,32
    800033f0:	00008067          	ret
        first = newElem;
    800033f4:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    800033f8:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    800033fc:	00053423          	sd	zero,8(a0)
    80003400:	0004b783          	ld	a5,0(s1)
    80003404:	0007b423          	sd	zero,8(a5)
    80003408:	fd5ff06f          	j	800033dc <_ZN5Queue4pushEP3PCB+0x48>

000000008000340c <_ZN5Queue5frontEv>:


PCB* Queue::front()
{
    8000340c:	ff010113          	addi	sp,sp,-16
    80003410:	00813423          	sd	s0,8(sp)
    80003414:	01010413          	addi	s0,sp,16
    if(first == 0)
    80003418:	00053503          	ld	a0,0(a0)
    8000341c:	00050463          	beqz	a0,80003424 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80003420:	00053503          	ld	a0,0(a0)
}
    80003424:	00813403          	ld	s0,8(sp)
    80003428:	01010113          	addi	sp,sp,16
    8000342c:	00008067          	ret

0000000080003430 <_ZN5QueueC1Ev>:

Queue::Queue()
    80003430:	ff010113          	addi	sp,sp,-16
    80003434:	00813423          	sd	s0,8(sp)
    80003438:	01010413          	addi	s0,sp,16
{
    first = last = 0;
    8000343c:	00053423          	sd	zero,8(a0)
    80003440:	00053023          	sd	zero,0(a0)
}
    80003444:	00813403          	ld	s0,8(sp)
    80003448:	01010113          	addi	sp,sp,16
    8000344c:	00008067          	ret

0000000080003450 <_ZN5QueueD1Ev>:

Queue::~Queue()
{
    Elem* curr = first;
    80003450:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80003454:	04050063          	beqz	a0,80003494 <_ZN5QueueD1Ev+0x44>
Queue::~Queue()
    80003458:	fe010113          	addi	sp,sp,-32
    8000345c:	00113c23          	sd	ra,24(sp)
    80003460:	00813823          	sd	s0,16(sp)
    80003464:	00913423          	sd	s1,8(sp)
    80003468:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    8000346c:	00853483          	ld	s1,8(a0)
        kfree(old);
    80003470:	00001097          	auipc	ra,0x1
    80003474:	03c080e7          	jalr	60(ra) # 800044ac <_Z5kfreePv>
        curr = curr->next;
    80003478:	00048513          	mv	a0,s1
    while(curr != 0)
    8000347c:	fe0498e3          	bnez	s1,8000346c <_ZN5QueueD1Ev+0x1c>
    }
}
    80003480:	01813083          	ld	ra,24(sp)
    80003484:	01013403          	ld	s0,16(sp)
    80003488:	00813483          	ld	s1,8(sp)
    8000348c:	02010113          	addi	sp,sp,32
    80003490:	00008067          	ret
    80003494:	00008067          	ret

0000000080003498 <_ZN5Queue4sizeEv>:

int Queue::size()
{
    80003498:	ff010113          	addi	sp,sp,-16
    8000349c:	00813423          	sd	s0,8(sp)
    800034a0:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    800034a4:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    800034a8:	00000513          	li	a0,0
    while(curr != 0)
    800034ac:	00078863          	beqz	a5,800034bc <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    800034b0:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    800034b4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800034b8:	ff5ff06f          	j	800034ac <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    800034bc:	00813403          	ld	s0,8(sp)
    800034c0:	01010113          	addi	sp,sp,16
    800034c4:	00008067          	ret

00000000800034c8 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    800034c8:	ff010113          	addi	sp,sp,-16
    800034cc:	00113423          	sd	ra,8(sp)
    800034d0:	00813023          	sd	s0,0(sp)
    800034d4:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800034d8:	00001097          	auipc	ra,0x1
    800034dc:	f70080e7          	jalr	-144(ra) # 80004448 <_Z7kmallocm>
}
    800034e0:	00813083          	ld	ra,8(sp)
    800034e4:	00013403          	ld	s0,0(sp)
    800034e8:	01010113          	addi	sp,sp,16
    800034ec:	00008067          	ret

00000000800034f0 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800034f0:	ff010113          	addi	sp,sp,-16
    800034f4:	00113423          	sd	ra,8(sp)
    800034f8:	00813023          	sd	s0,0(sp)
    800034fc:	01010413          	addi	s0,sp,16
    kfree(p);
    80003500:	00001097          	auipc	ra,0x1
    80003504:	fac080e7          	jalr	-84(ra) # 800044ac <_Z5kfreePv>
}
    80003508:	00813083          	ld	ra,8(sp)
    8000350c:	00013403          	ld	s0,0(sp)
    80003510:	01010113          	addi	sp,sp,16
    80003514:	00008067          	ret

0000000080003518 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003518:	ff010113          	addi	sp,sp,-16
    8000351c:	00813423          	sd	s0,8(sp)
    80003520:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003524:	0000c797          	auipc	a5,0xc
    80003528:	7747b783          	ld	a5,1908(a5) # 8000fc98 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    8000352c:	00000513          	li	a0,0
    while(curr != 0)
    80003530:	00078863          	beqz	a5,80003540 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003534:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003538:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000353c:	ff5ff06f          	j	80003530 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003540:	0005051b          	sext.w	a0,a0
    80003544:	00813403          	ld	s0,8(sp)
    80003548:	01010113          	addi	sp,sp,16
    8000354c:	00008067          	ret

0000000080003550 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003550:	ff010113          	addi	sp,sp,-16
    80003554:	00813423          	sd	s0,8(sp)
    80003558:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    8000355c:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003560:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003564:	0000c797          	auipc	a5,0xc
    80003568:	7347b783          	ld	a5,1844(a5) # 8000fc98 <_ZN9Scheduler16schedulerPCBHeadE>
    8000356c:	02078263          	beqz	a5,80003590 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003570:	0000c797          	auipc	a5,0xc
    80003574:	72878793          	addi	a5,a5,1832 # 8000fc98 <_ZN9Scheduler16schedulerPCBHeadE>
    80003578:	0087b703          	ld	a4,8(a5)
    8000357c:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003580:	00a7b423          	sd	a0,8(a5)
    }
}
    80003584:	00813403          	ld	s0,8(sp)
    80003588:	01010113          	addi	sp,sp,16
    8000358c:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003590:	0000c797          	auipc	a5,0xc
    80003594:	70878793          	addi	a5,a5,1800 # 8000fc98 <_ZN9Scheduler16schedulerPCBHeadE>
    80003598:	00a7b423          	sd	a0,8(a5)
    8000359c:	00a7b023          	sd	a0,0(a5)
    800035a0:	fe5ff06f          	j	80003584 <_ZN9Scheduler3putEP3PCB+0x34>

00000000800035a4 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    800035a4:	ff010113          	addi	sp,sp,-16
    800035a8:	00813423          	sd	s0,8(sp)
    800035ac:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800035b0:	0000c517          	auipc	a0,0xc
    800035b4:	6e853503          	ld	a0,1768(a0) # 8000fc98 <_ZN9Scheduler16schedulerPCBHeadE>
    800035b8:	00050c63          	beqz	a0,800035d0 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    800035bc:	00853783          	ld	a5,8(a0)
    800035c0:	00078e63          	beqz	a5,800035dc <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    800035c4:	0000c717          	auipc	a4,0xc
    800035c8:	6cf73a23          	sd	a5,1748(a4) # 8000fc98 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    800035cc:	00053423          	sd	zero,8(a0)
    return retval;
}
    800035d0:	00813403          	ld	s0,8(sp)
    800035d4:	01010113          	addi	sp,sp,16
    800035d8:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    800035dc:	0000c797          	auipc	a5,0xc
    800035e0:	6bc78793          	addi	a5,a5,1724 # 8000fc98 <_ZN9Scheduler16schedulerPCBHeadE>
    800035e4:	0007b423          	sd	zero,8(a5)
    800035e8:	0007b023          	sd	zero,0(a5)
    800035ec:	fe1ff06f          	j	800035cc <_ZN9Scheduler3getEv+0x28>

00000000800035f0 <_ZN9Scheduler5printEv>:

void Scheduler::print() {
    800035f0:	fe010113          	addi	sp,sp,-32
    800035f4:	00113c23          	sd	ra,24(sp)
    800035f8:	00813823          	sd	s0,16(sp)
    800035fc:	00913423          	sd	s1,8(sp)
    80003600:	02010413          	addi	s0,sp,32
    trapPrintString("Scheduler print\n");
    80003604:	00006517          	auipc	a0,0x6
    80003608:	c5450513          	addi	a0,a0,-940 # 80009258 <CONSOLE_STATUS+0x248>
    8000360c:	00003097          	auipc	ra,0x3
    80003610:	9cc080e7          	jalr	-1588(ra) # 80005fd8 <_Z15trapPrintStringPKc>
    PCB* curr = schedulerPCBHead;
    80003614:	0000c497          	auipc	s1,0xc
    80003618:	6844b483          	ld	s1,1668(s1) # 8000fc98 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    8000361c:	02048863          	beqz	s1,8000364c <_ZN9Scheduler5printEv+0x5c>
    {
        printInt((uint64)curr, 16);
    80003620:	00000613          	li	a2,0
    80003624:	01000593          	li	a1,16
    80003628:	0004851b          	sext.w	a0,s1
    8000362c:	00003097          	auipc	ra,0x3
    80003630:	898080e7          	jalr	-1896(ra) # 80005ec4 <_Z8printIntiii>
        printString("\n");
    80003634:	00006517          	auipc	a0,0x6
    80003638:	acc50513          	addi	a0,a0,-1332 # 80009100 <CONSOLE_STATUS+0xf0>
    8000363c:	00002097          	auipc	ra,0x2
    80003640:	6f0080e7          	jalr	1776(ra) # 80005d2c <_Z11printStringPKc>
        curr = curr->nextPCB;
    80003644:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003648:	fd5ff06f          	j	8000361c <_ZN9Scheduler5printEv+0x2c>
    }
}
    8000364c:	01813083          	ld	ra,24(sp)
    80003650:	01013403          	ld	s0,16(sp)
    80003654:	00813483          	ld	s1,8(sp)
    80003658:	02010113          	addi	sp,sp,32
    8000365c:	00008067          	ret

0000000080003660 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80003660:	ff010113          	addi	sp,sp,-16
    80003664:	00113423          	sd	ra,8(sp)
    80003668:	00813023          	sd	s0,0(sp)
    8000366c:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003670:	00000097          	auipc	ra,0x0
    80003674:	514080e7          	jalr	1300(ra) # 80003b84 <_ZN5Riscv10kernelMainEv>
    80003678:	00813083          	ld	ra,8(sp)
    8000367c:	00013403          	ld	s0,0(sp)
    80003680:	01010113          	addi	sp,sp,16
    80003684:	00008067          	ret

0000000080003688 <_ZN6Thread6runnerEPv>:
{
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80003688:	ff010113          	addi	sp,sp,-16
    8000368c:	00113423          	sd	ra,8(sp)
    80003690:	00813023          	sd	s0,0(sp)
    80003694:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80003698:	00053783          	ld	a5,0(a0)
    8000369c:	0107b783          	ld	a5,16(a5)
    800036a0:	000780e7          	jalr	a5
}
    800036a4:	00813083          	ld	ra,8(sp)
    800036a8:	00013403          	ld	s0,0(sp)
    800036ac:	01010113          	addi	sp,sp,16
    800036b0:	00008067          	ret

00000000800036b4 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    800036b4:	ff010113          	addi	sp,sp,-16
    800036b8:	00113423          	sd	ra,8(sp)
    800036bc:	00813023          	sd	s0,0(sp)
    800036c0:	01010413          	addi	s0,sp,16
    800036c4:	00008797          	auipc	a5,0x8
    800036c8:	3a478793          	addi	a5,a5,932 # 8000ba68 <_ZTV6Thread+0x10>
    800036cc:	00f53023          	sd	a5,0(a0)
{
    mem_free(myHandle);
    800036d0:	00853503          	ld	a0,8(a0)
    800036d4:	ffffe097          	auipc	ra,0xffffe
    800036d8:	bb4080e7          	jalr	-1100(ra) # 80001288 <mem_free>
}
    800036dc:	00813083          	ld	ra,8(sp)
    800036e0:	00013403          	ld	s0,0(sp)
    800036e4:	01010113          	addi	sp,sp,16
    800036e8:	00008067          	ret

00000000800036ec <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    800036ec:	ff010113          	addi	sp,sp,-16
    800036f0:	00113423          	sd	ra,8(sp)
    800036f4:	00813023          	sd	s0,0(sp)
    800036f8:	01010413          	addi	s0,sp,16
    800036fc:	00008797          	auipc	a5,0x8
    80003700:	39478793          	addi	a5,a5,916 # 8000ba90 <_ZTV9Semaphore+0x10>
    80003704:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80003708:	00853503          	ld	a0,8(a0)
    8000370c:	ffffe097          	auipc	ra,0xffffe
    80003710:	b7c080e7          	jalr	-1156(ra) # 80001288 <mem_free>
}
    80003714:	00813083          	ld	ra,8(sp)
    80003718:	00013403          	ld	s0,0(sp)
    8000371c:	01010113          	addi	sp,sp,16
    80003720:	00008067          	ret

0000000080003724 <_Znwm>:
{
    80003724:	ff010113          	addi	sp,sp,-16
    80003728:	00113423          	sd	ra,8(sp)
    8000372c:	00813023          	sd	s0,0(sp)
    80003730:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003734:	ffffe097          	auipc	ra,0xffffe
    80003738:	b24080e7          	jalr	-1244(ra) # 80001258 <mem_alloc>
}
    8000373c:	00813083          	ld	ra,8(sp)
    80003740:	00013403          	ld	s0,0(sp)
    80003744:	01010113          	addi	sp,sp,16
    80003748:	00008067          	ret

000000008000374c <_ZdlPv>:
{
    8000374c:	ff010113          	addi	sp,sp,-16
    80003750:	00113423          	sd	ra,8(sp)
    80003754:	00813023          	sd	s0,0(sp)
    80003758:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	b2c080e7          	jalr	-1236(ra) # 80001288 <mem_free>
}
    80003764:	00813083          	ld	ra,8(sp)
    80003768:	00013403          	ld	s0,0(sp)
    8000376c:	01010113          	addi	sp,sp,16
    80003770:	00008067          	ret

0000000080003774 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80003774:	fe010113          	addi	sp,sp,-32
    80003778:	00113c23          	sd	ra,24(sp)
    8000377c:	00813823          	sd	s0,16(sp)
    80003780:	00913423          	sd	s1,8(sp)
    80003784:	02010413          	addi	s0,sp,32
    80003788:	00050493          	mv	s1,a0
}
    8000378c:	00000097          	auipc	ra,0x0
    80003790:	f28080e7          	jalr	-216(ra) # 800036b4 <_ZN6ThreadD1Ev>
    80003794:	00048513          	mv	a0,s1
    80003798:	00000097          	auipc	ra,0x0
    8000379c:	fb4080e7          	jalr	-76(ra) # 8000374c <_ZdlPv>
    800037a0:	01813083          	ld	ra,24(sp)
    800037a4:	01013403          	ld	s0,16(sp)
    800037a8:	00813483          	ld	s1,8(sp)
    800037ac:	02010113          	addi	sp,sp,32
    800037b0:	00008067          	ret

00000000800037b4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800037b4:	fe010113          	addi	sp,sp,-32
    800037b8:	00113c23          	sd	ra,24(sp)
    800037bc:	00813823          	sd	s0,16(sp)
    800037c0:	00913423          	sd	s1,8(sp)
    800037c4:	02010413          	addi	s0,sp,32
    800037c8:	00050493          	mv	s1,a0
}
    800037cc:	00000097          	auipc	ra,0x0
    800037d0:	f20080e7          	jalr	-224(ra) # 800036ec <_ZN9SemaphoreD1Ev>
    800037d4:	00048513          	mv	a0,s1
    800037d8:	00000097          	auipc	ra,0x0
    800037dc:	f74080e7          	jalr	-140(ra) # 8000374c <_ZdlPv>
    800037e0:	01813083          	ld	ra,24(sp)
    800037e4:	01013403          	ld	s0,16(sp)
    800037e8:	00813483          	ld	s1,8(sp)
    800037ec:	02010113          	addi	sp,sp,32
    800037f0:	00008067          	ret

00000000800037f4 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    800037f4:	00853503          	ld	a0,8(a0)
    800037f8:	02050663          	beqz	a0,80003824 <_ZN6Thread5startEv+0x30>
{
    800037fc:	ff010113          	addi	sp,sp,-16
    80003800:	00113423          	sd	ra,8(sp)
    80003804:	00813023          	sd	s0,0(sp)
    80003808:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    8000380c:	ffffe097          	auipc	ra,0xffffe
    80003810:	c58080e7          	jalr	-936(ra) # 80001464 <thread_start>
}
    80003814:	00813083          	ld	ra,8(sp)
    80003818:	00013403          	ld	s0,0(sp)
    8000381c:	01010113          	addi	sp,sp,16
    80003820:	00008067          	ret
        return -1;
    80003824:	fff00513          	li	a0,-1
}
    80003828:	00008067          	ret

000000008000382c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000382c:	ff010113          	addi	sp,sp,-16
    80003830:	00113423          	sd	ra,8(sp)
    80003834:	00813023          	sd	s0,0(sp)
    80003838:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000383c:	ffffe097          	auipc	ra,0xffffe
    80003840:	af8080e7          	jalr	-1288(ra) # 80001334 <thread_dispatch>
}
    80003844:	00813083          	ld	ra,8(sp)
    80003848:	00013403          	ld	s0,0(sp)
    8000384c:	01010113          	addi	sp,sp,16
    80003850:	00008067          	ret

0000000080003854 <_ZN6Thread5sleepEm>:
{
    80003854:	ff010113          	addi	sp,sp,-16
    80003858:	00113423          	sd	ra,8(sp)
    8000385c:	00813023          	sd	s0,0(sp)
    80003860:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003864:	ffffe097          	auipc	ra,0xffffe
    80003868:	bd4080e7          	jalr	-1068(ra) # 80001438 <time_sleep>
}
    8000386c:	00813083          	ld	ra,8(sp)
    80003870:	00013403          	ld	s0,0(sp)
    80003874:	01010113          	addi	sp,sp,16
    80003878:	00008067          	ret

000000008000387c <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    8000387c:	fe010113          	addi	sp,sp,-32
    80003880:	00113c23          	sd	ra,24(sp)
    80003884:	00813823          	sd	s0,16(sp)
    80003888:	00913423          	sd	s1,8(sp)
    8000388c:	01213023          	sd	s2,0(sp)
    80003890:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80003894:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80003898:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    8000389c:	0004b783          	ld	a5,0(s1)
    800038a0:	0187b783          	ld	a5,24(a5)
    800038a4:	00048513          	mv	a0,s1
    800038a8:	000780e7          	jalr	a5
        Thread::sleep(time);
    800038ac:	00090513          	mv	a0,s2
    800038b0:	00000097          	auipc	ra,0x0
    800038b4:	fa4080e7          	jalr	-92(ra) # 80003854 <_ZN6Thread5sleepEm>
    while(true)
    800038b8:	fe5ff06f          	j	8000389c <_ZN14PeriodicThread6runnerEPv+0x20>

00000000800038bc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    800038bc:	ff010113          	addi	sp,sp,-16
    800038c0:	00113423          	sd	ra,8(sp)
    800038c4:	00813023          	sd	s0,0(sp)
    800038c8:	01010413          	addi	s0,sp,16
    800038cc:	00008797          	auipc	a5,0x8
    800038d0:	19c78793          	addi	a5,a5,412 # 8000ba68 <_ZTV6Thread+0x10>
    800038d4:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, body, args);
    800038d8:	00850513          	addi	a0,a0,8
    800038dc:	ffffe097          	auipc	ra,0xffffe
    800038e0:	bb4080e7          	jalr	-1100(ra) # 80001490 <thread_make_pcb>
}
    800038e4:	00813083          	ld	ra,8(sp)
    800038e8:	00013403          	ld	s0,0(sp)
    800038ec:	01010113          	addi	sp,sp,16
    800038f0:	00008067          	ret

00000000800038f4 <_ZN6ThreadC1Ev>:
Thread::Thread()
    800038f4:	ff010113          	addi	sp,sp,-16
    800038f8:	00113423          	sd	ra,8(sp)
    800038fc:	00813023          	sd	s0,0(sp)
    80003900:	01010413          	addi	s0,sp,16
    80003904:	00008797          	auipc	a5,0x8
    80003908:	16478793          	addi	a5,a5,356 # 8000ba68 <_ZTV6Thread+0x10>
    8000390c:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80003910:	00050613          	mv	a2,a0
    80003914:	00000597          	auipc	a1,0x0
    80003918:	d7458593          	addi	a1,a1,-652 # 80003688 <_ZN6Thread6runnerEPv>
    8000391c:	00850513          	addi	a0,a0,8
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	b70080e7          	jalr	-1168(ra) # 80001490 <thread_make_pcb>
}
    80003928:	00813083          	ld	ra,8(sp)
    8000392c:	00013403          	ld	s0,0(sp)
    80003930:	01010113          	addi	sp,sp,16
    80003934:	00008067          	ret

0000000080003938 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003938:	00853503          	ld	a0,8(a0)
    8000393c:	02050663          	beqz	a0,80003968 <_ZN9Semaphore4waitEv+0x30>
{
    80003940:	ff010113          	addi	sp,sp,-16
    80003944:	00113423          	sd	ra,8(sp)
    80003948:	00813023          	sd	s0,0(sp)
    8000394c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003950:	ffffe097          	auipc	ra,0xffffe
    80003954:	a90080e7          	jalr	-1392(ra) # 800013e0 <sem_wait>
}
    80003958:	00813083          	ld	ra,8(sp)
    8000395c:	00013403          	ld	s0,0(sp)
    80003960:	01010113          	addi	sp,sp,16
    80003964:	00008067          	ret
        return -1;
    80003968:	fff00513          	li	a0,-1
}
    8000396c:	00008067          	ret

0000000080003970 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80003970:	fe010113          	addi	sp,sp,-32
    80003974:	00113c23          	sd	ra,24(sp)
    80003978:	00813823          	sd	s0,16(sp)
    8000397c:	00913423          	sd	s1,8(sp)
    80003980:	02010413          	addi	s0,sp,32
    80003984:	00050493          	mv	s1,a0
    80003988:	00008797          	auipc	a5,0x8
    8000398c:	10878793          	addi	a5,a5,264 # 8000ba90 <_ZTV9Semaphore+0x10>
    80003990:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80003994:	00850513          	addi	a0,a0,8
    80003998:	ffffe097          	auipc	ra,0xffffe
    8000399c:	9e4080e7          	jalr	-1564(ra) # 8000137c <sem_open>
    if(retval != 0)
    800039a0:	00050463          	beqz	a0,800039a8 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    800039a4:	0004b423          	sd	zero,8(s1)
}
    800039a8:	01813083          	ld	ra,24(sp)
    800039ac:	01013403          	ld	s0,16(sp)
    800039b0:	00813483          	ld	s1,8(sp)
    800039b4:	02010113          	addi	sp,sp,32
    800039b8:	00008067          	ret

00000000800039bc <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    800039bc:	00853503          	ld	a0,8(a0)
    800039c0:	02050663          	beqz	a0,800039ec <_ZN9Semaphore6signalEv+0x30>
{
    800039c4:	ff010113          	addi	sp,sp,-16
    800039c8:	00113423          	sd	ra,8(sp)
    800039cc:	00813023          	sd	s0,0(sp)
    800039d0:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800039d4:	ffffe097          	auipc	ra,0xffffe
    800039d8:	a38080e7          	jalr	-1480(ra) # 8000140c <sem_signal>
}
    800039dc:	00813083          	ld	ra,8(sp)
    800039e0:	00013403          	ld	s0,0(sp)
    800039e4:	01010113          	addi	sp,sp,16
    800039e8:	00008067          	ret
        return -1;
    800039ec:	fff00513          	li	a0,-1
}
    800039f0:	00008067          	ret

00000000800039f4 <_ZN7Console4getcEv>:
{
    800039f4:	ff010113          	addi	sp,sp,-16
    800039f8:	00813423          	sd	s0,8(sp)
    800039fc:	01010413          	addi	s0,sp,16
}
    80003a00:	00000513          	li	a0,0
    80003a04:	00813403          	ld	s0,8(sp)
    80003a08:	01010113          	addi	sp,sp,16
    80003a0c:	00008067          	ret

0000000080003a10 <_ZN7Console4putcEc>:
{
    80003a10:	ff010113          	addi	sp,sp,-16
    80003a14:	00813423          	sd	s0,8(sp)
    80003a18:	01010413          	addi	s0,sp,16
}
    80003a1c:	00813403          	ld	s0,8(sp)
    80003a20:	01010113          	addi	sp,sp,16
    80003a24:	00008067          	ret

0000000080003a28 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003a28:	fe010113          	addi	sp,sp,-32
    80003a2c:	00113c23          	sd	ra,24(sp)
    80003a30:	00813823          	sd	s0,16(sp)
    80003a34:	00913423          	sd	s1,8(sp)
    80003a38:	01213023          	sd	s2,0(sp)
    80003a3c:	02010413          	addi	s0,sp,32
    80003a40:	00050493          	mv	s1,a0
    80003a44:	00058913          	mv	s2,a1
    80003a48:	01000513          	li	a0,16
    80003a4c:	00000097          	auipc	ra,0x0
    80003a50:	cd8080e7          	jalr	-808(ra) # 80003724 <_Znwm>
    80003a54:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80003a58:	00953023          	sd	s1,0(a0)
    80003a5c:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003a60:	00000597          	auipc	a1,0x0
    80003a64:	e1c58593          	addi	a1,a1,-484 # 8000387c <_ZN14PeriodicThread6runnerEPv>
    80003a68:	00048513          	mv	a0,s1
    80003a6c:	00000097          	auipc	ra,0x0
    80003a70:	e50080e7          	jalr	-432(ra) # 800038bc <_ZN6ThreadC1EPFvPvES0_>
    80003a74:	00008797          	auipc	a5,0x8
    80003a78:	f8c78793          	addi	a5,a5,-116 # 8000ba00 <_ZTV14PeriodicThread+0x10>
    80003a7c:	00f4b023          	sd	a5,0(s1)
}
    80003a80:	01813083          	ld	ra,24(sp)
    80003a84:	01013403          	ld	s0,16(sp)
    80003a88:	00813483          	ld	s1,8(sp)
    80003a8c:	00013903          	ld	s2,0(sp)
    80003a90:	02010113          	addi	sp,sp,32
    80003a94:	00008067          	ret

0000000080003a98 <_ZN5Riscv15userMainWrapperEPv>:
    disableInterrupts();
    endSystem();
}

void Riscv::userMainWrapper(void* )
{
    80003a98:	ff010113          	addi	sp,sp,-16
    80003a9c:	00113423          	sd	ra,8(sp)
    80003aa0:	00813023          	sd	s0,0(sp)
    80003aa4:	01010413          	addi	s0,sp,16
    userMain();
    80003aa8:	00003097          	auipc	ra,0x3
    80003aac:	9e8080e7          	jalr	-1560(ra) # 80006490 <_Z8userMainv>
}
    80003ab0:	00813083          	ld	ra,8(sp)
    80003ab4:	00013403          	ld	s0,0(sp)
    80003ab8:	01010113          	addi	sp,sp,16
    80003abc:	00008067          	ret

0000000080003ac0 <_ZN5Riscv10initSystemEv>:
{
    80003ac0:	ff010113          	addi	sp,sp,-16
    80003ac4:	00113423          	sd	ra,8(sp)
    80003ac8:	00813023          	sd	s0,0(sp)
    80003acc:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003ad0:	00008797          	auipc	a5,0x8
    80003ad4:	0907b783          	ld	a5,144(a5) # 8000bb60 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003ad8:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003adc:	fffff097          	auipc	ra,0xfffff
    80003ae0:	f68080e7          	jalr	-152(ra) # 80002a44 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003ae4:	fffff097          	auipc	ra,0xfffff
    80003ae8:	2d4080e7          	jalr	724(ra) # 80002db8 <_ZN8KConsole10initializeEv>
}
    80003aec:	00813083          	ld	ra,8(sp)
    80003af0:	00013403          	ld	s0,0(sp)
    80003af4:	01010113          	addi	sp,sp,16
    80003af8:	00008067          	ret

0000000080003afc <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    80003afc:	ff010113          	addi	sp,sp,-16
    80003b00:	00813423          	sd	s0,8(sp)
    80003b04:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003b08:	00200793          	li	a5,2
    80003b0c:	1007a073          	csrs	sstatus,a5
}
    80003b10:	00813403          	ld	s0,8(sp)
    80003b14:	01010113          	addi	sp,sp,16
    80003b18:	00008067          	ret

0000000080003b1c <_ZN5Riscv17disableInterruptsEv>:
{
    80003b1c:	ff010113          	addi	sp,sp,-16
    80003b20:	00813423          	sd	s0,8(sp)
    80003b24:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003b28:	00200793          	li	a5,2
    80003b2c:	1007b073          	csrc	sstatus,a5
}
    80003b30:	00813403          	ld	s0,8(sp)
    80003b34:	01010113          	addi	sp,sp,16
    80003b38:	00008067          	ret

0000000080003b3c <_ZN5Riscv9endSystemEv>:
{
    80003b3c:	ff010113          	addi	sp,sp,-16
    80003b40:	00113423          	sd	ra,8(sp)
    80003b44:	00813023          	sd	s0,0(sp)
    80003b48:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003b4c:	00000097          	auipc	ra,0x0
    80003b50:	fd0080e7          	jalr	-48(ra) # 80003b1c <_ZN5Riscv17disableInterruptsEv>
}
    80003b54:	00813083          	ld	ra,8(sp)
    80003b58:	00013403          	ld	s0,0(sp)
    80003b5c:	01010113          	addi	sp,sp,16
    80003b60:	00008067          	ret

0000000080003b64 <_ZN5Riscv10popSppSpieEv>:
{
    80003b64:	ff010113          	addi	sp,sp,-16
    80003b68:	00813423          	sd	s0,8(sp)
    80003b6c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003b70:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003b74:	10200073          	sret
}
    80003b78:	00813403          	ld	s0,8(sp)
    80003b7c:	01010113          	addi	sp,sp,16
    80003b80:	00008067          	ret

0000000080003b84 <_ZN5Riscv10kernelMainEv>:
{
    80003b84:	fe010113          	addi	sp,sp,-32
    80003b88:	00113c23          	sd	ra,24(sp)
    80003b8c:	00813823          	sd	s0,16(sp)
    80003b90:	00913423          	sd	s1,8(sp)
    80003b94:	01213023          	sd	s2,0(sp)
    80003b98:	02010413          	addi	s0,sp,32
    initSystem();
    80003b9c:	00000097          	auipc	ra,0x0
    80003ba0:	f24080e7          	jalr	-220(ra) # 80003ac0 <_ZN5Riscv10initSystemEv>
    enableInterrupts();
    80003ba4:	00000097          	auipc	ra,0x0
    80003ba8:	f58080e7          	jalr	-168(ra) # 80003afc <_ZN5Riscv16enableInterruptsEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003bac:	00001537          	lui	a0,0x1
    80003bb0:	00001097          	auipc	ra,0x1
    80003bb4:	898080e7          	jalr	-1896(ra) # 80004448 <_Z7kmallocm>
    80003bb8:	00050913          	mv	s2,a0
    80003bbc:	05800513          	li	a0,88
    80003bc0:	fffff097          	auipc	ra,0xfffff
    80003bc4:	e08080e7          	jalr	-504(ra) # 800029c8 <_ZN3PCBnwEm>
    80003bc8:	00050493          	mv	s1,a0
    80003bcc:	00200713          	li	a4,2
    80003bd0:	00090693          	mv	a3,s2
    80003bd4:	00000613          	li	a2,0
    80003bd8:	00000597          	auipc	a1,0x0
    80003bdc:	ec058593          	addi	a1,a1,-320 # 80003a98 <_ZN5Riscv15userMainWrapperEPv>
    80003be0:	fffff097          	auipc	ra,0xfffff
    80003be4:	cd0080e7          	jalr	-816(ra) # 800028b0 <_ZN3PCBC1EPFvPvES0_S0_m>
    userPCB->start();
    80003be8:	00048513          	mv	a0,s1
    80003bec:	fffff097          	auipc	ra,0xfffff
    80003bf0:	d28080e7          	jalr	-728(ra) # 80002914 <_ZN3PCB5startEv>
    while(!userPCB->isFinished())
    80003bf4:	00048513          	mv	a0,s1
    80003bf8:	fffff097          	auipc	ra,0xfffff
    80003bfc:	f34080e7          	jalr	-204(ra) # 80002b2c <_ZN3PCB10isFinishedEv>
    80003c00:	00051863          	bnez	a0,80003c10 <_ZN5Riscv10kernelMainEv+0x8c>
        thread_dispatch();
    80003c04:	ffffd097          	auipc	ra,0xffffd
    80003c08:	730080e7          	jalr	1840(ra) # 80001334 <thread_dispatch>
    while(!userPCB->isFinished())
    80003c0c:	fe9ff06f          	j	80003bf4 <_ZN5Riscv10kernelMainEv+0x70>
    finishSystem = true;
    80003c10:	00100793          	li	a5,1
    80003c14:	0000c717          	auipc	a4,0xc
    80003c18:	08f70a23          	sb	a5,148(a4) # 8000fca8 <_ZN5Riscv12finishSystemE>
    ::printString("End...\n");
    80003c1c:	00005517          	auipc	a0,0x5
    80003c20:	44c50513          	addi	a0,a0,1100 # 80009068 <CONSOLE_STATUS+0x58>
    80003c24:	00002097          	auipc	ra,0x2
    80003c28:	108080e7          	jalr	264(ra) # 80005d2c <_Z11printStringPKc>
    while(!PCB::consolePCB->isFinished())
    80003c2c:	00008797          	auipc	a5,0x8
    80003c30:	f6c7b783          	ld	a5,-148(a5) # 8000bb98 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003c34:	0007b503          	ld	a0,0(a5)
    80003c38:	fffff097          	auipc	ra,0xfffff
    80003c3c:	ef4080e7          	jalr	-268(ra) # 80002b2c <_ZN3PCB10isFinishedEv>
    80003c40:	00051863          	bnez	a0,80003c50 <_ZN5Riscv10kernelMainEv+0xcc>
        thread_dispatch();
    80003c44:	ffffd097          	auipc	ra,0xffffd
    80003c48:	6f0080e7          	jalr	1776(ra) # 80001334 <thread_dispatch>
    while(!PCB::consolePCB->isFinished())
    80003c4c:	fe1ff06f          	j	80003c2c <_ZN5Riscv10kernelMainEv+0xa8>
    disableInterrupts();
    80003c50:	00000097          	auipc	ra,0x0
    80003c54:	ecc080e7          	jalr	-308(ra) # 80003b1c <_ZN5Riscv17disableInterruptsEv>
    endSystem();
    80003c58:	00000097          	auipc	ra,0x0
    80003c5c:	ee4080e7          	jalr	-284(ra) # 80003b3c <_ZN5Riscv9endSystemEv>
}
    80003c60:	01813083          	ld	ra,24(sp)
    80003c64:	01013403          	ld	s0,16(sp)
    80003c68:	00813483          	ld	s1,8(sp)
    80003c6c:	00013903          	ld	s2,0(sp)
    80003c70:	02010113          	addi	sp,sp,32
    80003c74:	00008067          	ret
    80003c78:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003c7c:	00048513          	mv	a0,s1
    80003c80:	fffff097          	auipc	ra,0xfffff
    80003c84:	d70080e7          	jalr	-656(ra) # 800029f0 <_ZN3PCBdlEPv>
    80003c88:	00090513          	mv	a0,s2
    80003c8c:	0000d097          	auipc	ra,0xd
    80003c90:	13c080e7          	jalr	316(ra) # 80010dc8 <_Unwind_Resume>

0000000080003c94 <_ZN5Riscv14myTestsWrapperEPv>:

void Riscv::myTestsWrapper(void* p)
{
    80003c94:	ff010113          	addi	sp,sp,-16
    80003c98:	00113423          	sd	ra,8(sp)
    80003c9c:	00813023          	sd	s0,0(sp)
    80003ca0:	01010413          	addi	s0,sp,16
    myTests();
    80003ca4:	fffff097          	auipc	ra,0xfffff
    80003ca8:	a70080e7          	jalr	-1424(ra) # 80002714 <_Z7myTestsv>
}
    80003cac:	00813083          	ld	ra,8(sp)
    80003cb0:	00013403          	ld	s0,0(sp)
    80003cb4:	01010113          	addi	sp,sp,16
    80003cb8:	00008067          	ret

0000000080003cbc <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80003cbc:	ff010113          	addi	sp,sp,-16
    80003cc0:	00813423          	sd	s0,8(sp)
    80003cc4:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80003cc8:	00200793          	li	a5,2
    80003ccc:	1047b073          	csrc	sie,a5
}
    80003cd0:	00813403          	ld	s0,8(sp)
    80003cd4:	01010113          	addi	sp,sp,16
    80003cd8:	00008067          	ret

0000000080003cdc <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    80003cdc:	ff010113          	addi	sp,sp,-16
    80003ce0:	00813423          	sd	s0,8(sp)
    80003ce4:	01010413          	addi	s0,sp,16
    while(true)
    80003ce8:	0000006f          	j	80003ce8 <_ZN5Riscv9idleRiscvEPv+0xc>

0000000080003cec <_ZN5Riscv13w_a0_sscratchEv>:

    }
}

void Riscv::w_a0_sscratch()
{
    80003cec:	ff010113          	addi	sp,sp,-16
    80003cf0:	00813423          	sd	s0,8(sp)
    80003cf4:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80003cf8:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80003cfc:	00008717          	auipc	a4,0x8
    80003d00:	eac73703          	ld	a4,-340(a4) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003d04:	00073703          	ld	a4,0(a4)
    80003d08:	01073703          	ld	a4,16(a4)
    80003d0c:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80003d10:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80003d14:	00078593          	mv	a1,a5
}
    80003d18:	00813403          	ld	s0,8(sp)
    80003d1c:	01010113          	addi	sp,sp,16
    80003d20:	00008067          	ret

0000000080003d24 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80003d24:	ff010113          	addi	sp,sp,-16
    80003d28:	00813423          	sd	s0,8(sp)
    80003d2c:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80003d30:	00008797          	auipc	a5,0x8
    80003d34:	e787b783          	ld	a5,-392(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003d38:	0007b783          	ld	a5,0(a5)
    80003d3c:	0007c783          	lbu	a5,0(a5)
    80003d40:	00078c63          	beqz	a5,80003d58 <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003d44:	10000793          	li	a5,256
    80003d48:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80003d4c:	00813403          	ld	s0,8(sp)
    80003d50:	01010113          	addi	sp,sp,16
    80003d54:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003d58:	10000793          	li	a5,256
    80003d5c:	1007b073          	csrc	sstatus,a5
    80003d60:	fedff06f          	j	80003d4c <_ZN5Riscv14changePrivModeEv+0x28>

0000000080003d64 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80003d64:	f9010113          	addi	sp,sp,-112
    80003d68:	06113423          	sd	ra,104(sp)
    80003d6c:	06813023          	sd	s0,96(sp)
    80003d70:	04913c23          	sd	s1,88(sp)
    80003d74:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003d78:	00070713          	mv	a4,a4
    80003d7c:	00008797          	auipc	a5,0x8
    80003d80:	e3c7b783          	ld	a5,-452(a5) # 8000bbb8 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003d84:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80003d88:	00008797          	auipc	a5,0x8
    80003d8c:	e207b783          	ld	a5,-480(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003d90:	0007b783          	ld	a5,0(a5)
    80003d94:	14002773          	csrr	a4,sscratch
    80003d98:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003d9c:	142027f3          	csrr	a5,scause
    80003da0:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80003da4:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003da8:	00900713          	li	a4,9
    80003dac:	04f76e63          	bltu	a4,a5,80003e08 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
    80003db0:	00800713          	li	a4,8
    80003db4:	1ce7f463          	bgeu	a5,a4,80003f7c <_ZN5Riscv20handleSupervisorTrapEv+0x218>
    80003db8:	00500713          	li	a4,5
    80003dbc:	1ae78263          	beq	a5,a4,80003f60 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
    80003dc0:	00700713          	li	a4,7
    80003dc4:	02e79063          	bne	a5,a4,80003de4 <_ZN5Riscv20handleSupervisorTrapEv+0x80>
            trapPrintString("write interrupt\n");
    80003dc8:	00005517          	auipc	a0,0x5
    80003dcc:	4d050513          	addi	a0,a0,1232 # 80009298 <CONSOLE_STATUS+0x288>
    80003dd0:	00002097          	auipc	ra,0x2
    80003dd4:	208080e7          	jalr	520(ra) # 80005fd8 <_Z15trapPrintStringPKc>
            thread_exit();
    80003dd8:	ffffd097          	auipc	ra,0xffffd
    80003ddc:	57c080e7          	jalr	1404(ra) # 80001354 <thread_exit>
            break;
    80003de0:	1300006f          	j	80003f10 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
    switch(scause)
    80003de4:	00200713          	li	a4,2
    80003de8:	12e79463          	bne	a5,a4,80003f10 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
            trapPrintString("operation interrupt\n");
    80003dec:	00005517          	auipc	a0,0x5
    80003df0:	48450513          	addi	a0,a0,1156 # 80009270 <CONSOLE_STATUS+0x260>
    80003df4:	00002097          	auipc	ra,0x2
    80003df8:	1e4080e7          	jalr	484(ra) # 80005fd8 <_Z15trapPrintStringPKc>
            thread_exit();
    80003dfc:	ffffd097          	auipc	ra,0xffffd
    80003e00:	558080e7          	jalr	1368(ra) # 80001354 <thread_exit>
            break;
    80003e04:	10c0006f          	j	80003f10 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
    switch(scause)
    80003e08:	fff00713          	li	a4,-1
    80003e0c:	03f71713          	slli	a4,a4,0x3f
    80003e10:	00170713          	addi	a4,a4,1
    80003e14:	06e78a63          	beq	a5,a4,80003e88 <_ZN5Riscv20handleSupervisorTrapEv+0x124>
    80003e18:	fff00713          	li	a4,-1
    80003e1c:	03f71713          	slli	a4,a4,0x3f
    80003e20:	00970713          	addi	a4,a4,9
    80003e24:	0ee79663          	bne	a5,a4,80003f10 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
            uint64 x = CONSOLE_STATUS;
    80003e28:	00008797          	auipc	a5,0x8
    80003e2c:	d287b783          	ld	a5,-728(a5) # 8000bb50 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003e30:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003e34:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003e38:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003e3c:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80003e40:	0017f793          	andi	a5,a5,1
    80003e44:	02078863          	beqz	a5,80003e74 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
                x = CONSOLE_TX_DATA;
    80003e48:	00008797          	auipc	a5,0x8
    80003e4c:	d287b783          	ld	a5,-728(a5) # 8000bb70 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003e50:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003e54:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003e58:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003e5c:	00058513          	mv	a0,a1
    80003e60:	0ff57493          	andi	s1,a0,255
                if(KConsole::pendingGetc > 0)
    80003e64:	00008797          	auipc	a5,0x8
    80003e68:	d047b783          	ld	a5,-764(a5) # 8000bb68 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003e6c:	0007b783          	ld	a5,0(a5)
    80003e70:	0c079263          	bnez	a5,80003f34 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
            plic_complete(plic_claim());
    80003e74:	00003097          	auipc	ra,0x3
    80003e78:	230080e7          	jalr	560(ra) # 800070a4 <plic_claim>
    80003e7c:	00003097          	auipc	ra,0x3
    80003e80:	260080e7          	jalr	608(ra) # 800070dc <plic_complete>
            break;
    80003e84:	08c0006f          	j	80003f10 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003e88:	141027f3          	csrr	a5,sepc
    80003e8c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003e90:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003e94:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003e98:	100027f3          	csrr	a5,sstatus
    80003e9c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003ea0:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003ea4:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003ea8:	00200793          	li	a5,2
    80003eac:	1447b073          	csrc	sip,a5
            totalTime++;
    80003eb0:	0000c717          	auipc	a4,0xc
    80003eb4:	df870713          	addi	a4,a4,-520 # 8000fca8 <_ZN5Riscv12finishSystemE>
    80003eb8:	00873783          	ld	a5,8(a4)
    80003ebc:	00178793          	addi	a5,a5,1
    80003ec0:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80003ec4:	00008497          	auipc	s1,0x8
    80003ec8:	cb44b483          	ld	s1,-844(s1) # 8000bb78 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003ecc:	0004b783          	ld	a5,0(s1)
    80003ed0:	00178793          	addi	a5,a5,1
    80003ed4:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003ed8:	fffff097          	auipc	ra,0xfffff
    80003edc:	3dc080e7          	jalr	988(ra) # 800032b4 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003ee0:	00008797          	auipc	a5,0x8
    80003ee4:	cc87b783          	ld	a5,-824(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003ee8:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003eec:	0187b783          	ld	a5,24(a5)
    80003ef0:	0004b703          	ld	a4,0(s1)
    80003ef4:	02f77863          	bgeu	a4,a5,80003f24 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            Riscv::w_sstatus(sstatus);
    80003ef8:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003efc:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003f00:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003f04:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003f08:	00000097          	auipc	ra,0x0
    80003f0c:	e1c080e7          	jalr	-484(ra) # 80003d24 <_ZN5Riscv14changePrivModeEv>
}
    80003f10:	06813083          	ld	ra,104(sp)
    80003f14:	06013403          	ld	s0,96(sp)
    80003f18:	05813483          	ld	s1,88(sp)
    80003f1c:	07010113          	addi	sp,sp,112
    80003f20:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80003f24:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003f28:	fffff097          	auipc	ra,0xfffff
    80003f2c:	a14080e7          	jalr	-1516(ra) # 8000293c <_ZN3PCB8dispatchEv>
    80003f30:	fc9ff06f          	j	80003ef8 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
                    KConsole::pendingGetc--;
    80003f34:	fff78793          	addi	a5,a5,-1
    80003f38:	00008717          	auipc	a4,0x8
    80003f3c:	c3073703          	ld	a4,-976(a4) # 8000bb68 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003f40:	00f73023          	sd	a5,0(a4)
                    KConsole::putCharacterInput(c);
    80003f44:	00048513          	mv	a0,s1
    80003f48:	fffff097          	auipc	ra,0xfffff
    80003f4c:	f20080e7          	jalr	-224(ra) # 80002e68 <_ZN8KConsole17putCharacterInputEc>
                    KConsole::putCharacterOutput(c);
    80003f50:	00048513          	mv	a0,s1
    80003f54:	fffff097          	auipc	ra,0xfffff
    80003f58:	ff4080e7          	jalr	-12(ra) # 80002f48 <_ZN8KConsole18putCharacterOutputEc>
    80003f5c:	f19ff06f          	j	80003e74 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            trapPrintString("read interrupt\n");
    80003f60:	00005517          	auipc	a0,0x5
    80003f64:	32850513          	addi	a0,a0,808 # 80009288 <CONSOLE_STATUS+0x278>
    80003f68:	00002097          	auipc	ra,0x2
    80003f6c:	070080e7          	jalr	112(ra) # 80005fd8 <_Z15trapPrintStringPKc>
            thread_exit();
    80003f70:	ffffd097          	auipc	ra,0xffffd
    80003f74:	3e4080e7          	jalr	996(ra) # 80001354 <thread_exit>
            break;
    80003f78:	f99ff06f          	j	80003f10 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003f7c:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003f80:	14102773          	csrr	a4,sepc
    80003f84:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003f88:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003f8c:	00470713          	addi	a4,a4,4
    80003f90:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003f94:	10002773          	csrr	a4,sstatus
    80003f98:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003f9c:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003fa0:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003fa4:	04300713          	li	a4,67
    80003fa8:	02f76463          	bltu	a4,a5,80003fd0 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
    80003fac:	00279793          	slli	a5,a5,0x2
    80003fb0:	00005717          	auipc	a4,0x5
    80003fb4:	2fc70713          	addi	a4,a4,764 # 800092ac <CONSOLE_STATUS+0x29c>
    80003fb8:	00e787b3          	add	a5,a5,a4
    80003fbc:	0007a783          	lw	a5,0(a5)
    80003fc0:	00e787b3          	add	a5,a5,a4
    80003fc4:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80003fc8:	00000097          	auipc	ra,0x0
    80003fcc:	4a8080e7          	jalr	1192(ra) # 80004470 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003fd0:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003fd4:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003fd8:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003fdc:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003fe0:	00000097          	auipc	ra,0x0
    80003fe4:	d44080e7          	jalr	-700(ra) # 80003d24 <_ZN5Riscv14changePrivModeEv>
}
    80003fe8:	f29ff06f          	j	80003f10 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                    MemoryAllocator::memFreeHandler();
    80003fec:	00000097          	auipc	ra,0x0
    80003ff0:	4e8080e7          	jalr	1256(ra) # 800044d4 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003ff4:	fddff06f          	j	80003fd0 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    PCB::threadMakePCBHandler();
    80003ff8:	fffff097          	auipc	ra,0xfffff
    80003ffc:	d2c080e7          	jalr	-724(ra) # 80002d24 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80004000:	fd1ff06f          	j	80003fd0 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    PCB::threadCreateHandler();
    80004004:	fffff097          	auipc	ra,0xfffff
    80004008:	c3c080e7          	jalr	-964(ra) # 80002c40 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    8000400c:	fc5ff06f          	j	80003fd0 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    PCB::threadStartHandler();
    80004010:	fffff097          	auipc	ra,0xfffff
    80004014:	cd0080e7          	jalr	-816(ra) # 80002ce0 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80004018:	fb9ff06f          	j	80003fd0 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    PCB::threadDispatchHandler();
    8000401c:	fffff097          	auipc	ra,0xfffff
    80004020:	b90080e7          	jalr	-1136(ra) # 80002bac <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80004024:	fadff06f          	j	80003fd0 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    PCB::threadExitHandler();
    80004028:	fffff097          	auipc	ra,0xfffff
    8000402c:	b28080e7          	jalr	-1240(ra) # 80002b50 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80004030:	fa1ff06f          	j	80003fd0 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    PCB::threadSleepHandler();
    80004034:	fffff097          	auipc	ra,0xfffff
    80004038:	ba8080e7          	jalr	-1112(ra) # 80002bdc <_ZN3PCB18threadSleepHandlerEv>
                    break;
    8000403c:	f95ff06f          	j	80003fd0 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    KSemaphore::semOpenHandler();
    80004040:	00000097          	auipc	ra,0x0
    80004044:	744080e7          	jalr	1860(ra) # 80004784 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80004048:	f89ff06f          	j	80003fd0 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    KSemaphore::semWaitHandler();
    8000404c:	00000097          	auipc	ra,0x0
    80004050:	7d0080e7          	jalr	2000(ra) # 8000481c <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80004054:	f7dff06f          	j	80003fd0 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    KSemaphore::semSignalHandler();
    80004058:	00001097          	auipc	ra,0x1
    8000405c:	804080e7          	jalr	-2044(ra) # 8000485c <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80004060:	f71ff06f          	j	80003fd0 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    KSemaphore::semCloseHandler();
    80004064:	00001097          	auipc	ra,0x1
    80004068:	838080e7          	jalr	-1992(ra) # 8000489c <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    8000406c:	f65ff06f          	j	80003fd0 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    KConsole::getcHandler();
    80004070:	fffff097          	auipc	ra,0xfffff
    80004074:	098080e7          	jalr	152(ra) # 80003108 <_ZN8KConsole11getcHandlerEv>
                    break;
    80004078:	f59ff06f          	j	80003fd0 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    KConsole::putcHandler();
    8000407c:	fffff097          	auipc	ra,0xfffff
    80004080:	05c080e7          	jalr	92(ra) # 800030d8 <_ZN8KConsole11putcHandlerEv>
                    break;
    80004084:	f4dff06f          	j	80003fd0 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    KConsole::getCharHandler();
    80004088:	fffff097          	auipc	ra,0xfffff
    8000408c:	18c080e7          	jalr	396(ra) # 80003214 <_ZN8KConsole14getCharHandlerEv>
                    break;
    80004090:	f41ff06f          	j	80003fd0 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>

0000000080004094 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80004094:	ff010113          	addi	sp,sp,-16
    80004098:	00813423          	sd	s0,8(sp)
    8000409c:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    800040a0:	0000c717          	auipc	a4,0xc
    800040a4:	c1872703          	lw	a4,-1000(a4) # 8000fcb8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800040a8:	00100793          	li	a5,1
    800040ac:	04f70263          	beq	a4,a5,800040f0 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    800040b0:	0000c797          	auipc	a5,0xc
    800040b4:	c0878793          	addi	a5,a5,-1016 # 8000fcb8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800040b8:	00100713          	li	a4,1
    800040bc:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800040c0:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    800040c4:	00008717          	auipc	a4,0x8
    800040c8:	a9473703          	ld	a4,-1388(a4) # 8000bb58 <_GLOBAL_OFFSET_TABLE_+0x18>
    800040cc:	00073703          	ld	a4,0(a4)
    800040d0:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    800040d4:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    800040d8:	00008797          	auipc	a5,0x8
    800040dc:	ad87b783          	ld	a5,-1320(a5) # 8000bbb0 <_GLOBAL_OFFSET_TABLE_+0x70>
    800040e0:	0007b783          	ld	a5,0(a5)
    800040e4:	40e787b3          	sub	a5,a5,a4
    800040e8:	ff178793          	addi	a5,a5,-15
    800040ec:	00f73023          	sd	a5,0(a4)
}
    800040f0:	00813403          	ld	s0,8(sp)
    800040f4:	01010113          	addi	sp,sp,16
    800040f8:	00008067          	ret

00000000800040fc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    800040fc:	fe010113          	addi	sp,sp,-32
    80004100:	00113c23          	sd	ra,24(sp)
    80004104:	00813823          	sd	s0,16(sp)
    80004108:	00913423          	sd	s1,8(sp)
    8000410c:	01213023          	sd	s2,0(sp)
    80004110:	02010413          	addi	s0,sp,32
    80004114:	00050493          	mv	s1,a0
    80004118:	00058913          	mv	s2,a1
    initMemory();
    8000411c:	00000097          	auipc	ra,0x0
    80004120:	f78080e7          	jalr	-136(ra) # 80004094 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004124:	0000c797          	auipc	a5,0xc
    80004128:	b9c7b783          	ld	a5,-1124(a5) # 8000fcc0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    8000412c:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80004130:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80004134:	00000713          	li	a4,0
    while(curr != 0)
    80004138:	00078c63          	beqz	a5,80004150 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    8000413c:	00f4e863          	bltu	s1,a5,8000414c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004140:	00078713          	mv	a4,a5
        curr = curr->next;
    80004144:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004148:	ff1ff06f          	j	80004138 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    8000414c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80004150:	02070063          	beqz	a4,80004170 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004154:	00973423          	sd	s1,8(a4)
}
    80004158:	01813083          	ld	ra,24(sp)
    8000415c:	01013403          	ld	s0,16(sp)
    80004160:	00813483          	ld	s1,8(sp)
    80004164:	00013903          	ld	s2,0(sp)
    80004168:	02010113          	addi	sp,sp,32
    8000416c:	00008067          	ret
        headAllocated = newAllocated;
    80004170:	0000c797          	auipc	a5,0xc
    80004174:	b497b823          	sd	s1,-1200(a5) # 8000fcc0 <_ZN15MemoryAllocator13headAllocatedE>
    80004178:	fe1ff06f          	j	80004158 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

000000008000417c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    8000417c:	fe010113          	addi	sp,sp,-32
    80004180:	00113c23          	sd	ra,24(sp)
    80004184:	00813823          	sd	s0,16(sp)
    80004188:	00913423          	sd	s1,8(sp)
    8000418c:	01213023          	sd	s2,0(sp)
    80004190:	02010413          	addi	s0,sp,32
    80004194:	00050913          	mv	s2,a0
    initMemory();
    80004198:	00000097          	auipc	ra,0x0
    8000419c:	efc080e7          	jalr	-260(ra) # 80004094 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800041a0:	0000c497          	auipc	s1,0xc
    800041a4:	b284b483          	ld	s1,-1240(s1) # 8000fcc8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    800041a8:	00000713          	li	a4,0
    while(curr != 0)
    800041ac:	0a048863          	beqz	s1,8000425c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    800041b0:	0004b783          	ld	a5,0(s1)
    800041b4:	0127f863          	bgeu	a5,s2,800041c4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    800041b8:	00048713          	mv	a4,s1
        curr = curr->next;
    800041bc:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800041c0:	fedff06f          	j	800041ac <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    800041c4:	01090693          	addi	a3,s2,16
    800041c8:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    800041cc:	00008617          	auipc	a2,0x8
    800041d0:	9e463603          	ld	a2,-1564(a2) # 8000bbb0 <_GLOBAL_OFFSET_TABLE_+0x70>
    800041d4:	00063603          	ld	a2,0(a2)
    800041d8:	04d66c63          	bltu	a2,a3,80004230 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    800041dc:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    800041e0:	01000613          	li	a2,16
    800041e4:	02f67663          	bgeu	a2,a5,80004210 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    800041e8:	0084b603          	ld	a2,8(s1)
    800041ec:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    800041f0:	ff078793          	addi	a5,a5,-16
    800041f4:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    800041f8:	00070663          	beqz	a4,80004204 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    800041fc:	00d73423          	sd	a3,8(a4)
    80004200:	0380006f          	j	80004238 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80004204:	0000c797          	auipc	a5,0xc
    80004208:	acd7b223          	sd	a3,-1340(a5) # 8000fcc8 <_ZN15MemoryAllocator8headFreeE>
    8000420c:	02c0006f          	j	80004238 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80004210:	00070863          	beqz	a4,80004220 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80004214:	0084b783          	ld	a5,8(s1)
    80004218:	00f73423          	sd	a5,8(a4)
    8000421c:	01c0006f          	j	80004238 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80004220:	0084b783          	ld	a5,8(s1)
    80004224:	0000c717          	auipc	a4,0xc
    80004228:	aaf73223          	sd	a5,-1372(a4) # 8000fcc8 <_ZN15MemoryAllocator8headFreeE>
    8000422c:	00c0006f          	j	80004238 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80004230:	02070063          	beqz	a4,80004250 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80004234:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80004238:	00090593          	mv	a1,s2
    8000423c:	00048513          	mv	a0,s1
    80004240:	00000097          	auipc	ra,0x0
    80004244:	ebc080e7          	jalr	-324(ra) # 800040fc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004248:	01048513          	addi	a0,s1,16
            break;
    8000424c:	0140006f          	j	80004260 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80004250:	0000c797          	auipc	a5,0xc
    80004254:	a607bc23          	sd	zero,-1416(a5) # 8000fcc8 <_ZN15MemoryAllocator8headFreeE>
    80004258:	fe1ff06f          	j	80004238 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    8000425c:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004260:	01813083          	ld	ra,24(sp)
    80004264:	01013403          	ld	s0,16(sp)
    80004268:	00813483          	ld	s1,8(sp)
    8000426c:	00013903          	ld	s2,0(sp)
    80004270:	02010113          	addi	sp,sp,32
    80004274:	00008067          	ret

0000000080004278 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004278:	ff010113          	addi	sp,sp,-16
    8000427c:	00113423          	sd	ra,8(sp)
    80004280:	00813023          	sd	s0,0(sp)
    80004284:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004288:	00000097          	auipc	ra,0x0
    8000428c:	ef4080e7          	jalr	-268(ra) # 8000417c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004290:	00813083          	ld	ra,8(sp)
    80004294:	00013403          	ld	s0,0(sp)
    80004298:	01010113          	addi	sp,sp,16
    8000429c:	00008067          	ret

00000000800042a0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800042a0:	fe010113          	addi	sp,sp,-32
    800042a4:	00113c23          	sd	ra,24(sp)
    800042a8:	00813823          	sd	s0,16(sp)
    800042ac:	00913423          	sd	s1,8(sp)
    800042b0:	01213023          	sd	s2,0(sp)
    800042b4:	02010413          	addi	s0,sp,32
    800042b8:	00050493          	mv	s1,a0
    800042bc:	00058913          	mv	s2,a1
    initMemory();
    800042c0:	00000097          	auipc	ra,0x0
    800042c4:	dd4080e7          	jalr	-556(ra) # 80004094 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800042c8:	0000c797          	auipc	a5,0xc
    800042cc:	a007b783          	ld	a5,-1536(a5) # 8000fcc8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800042d0:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800042d4:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    800042d8:	00000713          	li	a4,0
    while(curr != 0)
    800042dc:	00078c63          	beqz	a5,800042f4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800042e0:	00f4e863          	bltu	s1,a5,800042f0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800042e4:	00078713          	mv	a4,a5
        curr = curr->next;
    800042e8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800042ec:	ff1ff06f          	j	800042dc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    800042f0:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800042f4:	04070663          	beqz	a4,80004340 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    800042f8:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    800042fc:	0084b783          	ld	a5,8(s1)
    80004300:	00078a63          	beqz	a5,80004314 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80004304:	0004b603          	ld	a2,0(s1)
    80004308:	01060693          	addi	a3,a2,16
    8000430c:	00d486b3          	add	a3,s1,a3
    80004310:	02d78e63          	beq	a5,a3,8000434c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004314:	00070a63          	beqz	a4,80004328 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80004318:	00073683          	ld	a3,0(a4)
    8000431c:	01068793          	addi	a5,a3,16
    80004320:	00f707b3          	add	a5,a4,a5
    80004324:	04978263          	beq	a5,s1,80004368 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004328:	01813083          	ld	ra,24(sp)
    8000432c:	01013403          	ld	s0,16(sp)
    80004330:	00813483          	ld	s1,8(sp)
    80004334:	00013903          	ld	s2,0(sp)
    80004338:	02010113          	addi	sp,sp,32
    8000433c:	00008067          	ret
        headFree = newSegment;
    80004340:	0000c797          	auipc	a5,0xc
    80004344:	9897b423          	sd	s1,-1656(a5) # 8000fcc8 <_ZN15MemoryAllocator8headFreeE>
    80004348:	fb5ff06f          	j	800042fc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    8000434c:	0007b683          	ld	a3,0(a5)
    80004350:	00d60633          	add	a2,a2,a3
    80004354:	01060613          	addi	a2,a2,16
    80004358:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    8000435c:	0087b783          	ld	a5,8(a5)
    80004360:	00f4b423          	sd	a5,8(s1)
    80004364:	fb1ff06f          	j	80004314 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004368:	0004b783          	ld	a5,0(s1)
    8000436c:	00f686b3          	add	a3,a3,a5
    80004370:	01068693          	addi	a3,a3,16
    80004374:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004378:	0084b783          	ld	a5,8(s1)
    8000437c:	00f73423          	sd	a5,8(a4)
}
    80004380:	fa9ff06f          	j	80004328 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080004384 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80004384:	fe010113          	addi	sp,sp,-32
    80004388:	00113c23          	sd	ra,24(sp)
    8000438c:	00813823          	sd	s0,16(sp)
    80004390:	00913423          	sd	s1,8(sp)
    80004394:	01213023          	sd	s2,0(sp)
    80004398:	02010413          	addi	s0,sp,32
    8000439c:	00050913          	mv	s2,a0
    initMemory();
    800043a0:	00000097          	auipc	ra,0x0
    800043a4:	cf4080e7          	jalr	-780(ra) # 80004094 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    800043a8:	0000c497          	auipc	s1,0xc
    800043ac:	9184b483          	ld	s1,-1768(s1) # 8000fcc0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    800043b0:	00000713          	li	a4,0
    while(curr != 0)
    800043b4:	02048a63          	beqz	s1,800043e8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    800043b8:	01048793          	addi	a5,s1,16
    800043bc:	01278863          	beq	a5,s2,800043cc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    800043c0:	00048713          	mv	a4,s1
        curr = curr->next;
    800043c4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800043c8:	fedff06f          	j	800043b4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    800043cc:	02070e63          	beqz	a4,80004408 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    800043d0:	0084b783          	ld	a5,8(s1)
    800043d4:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    800043d8:	0004b583          	ld	a1,0(s1)
    800043dc:	00048513          	mv	a0,s1
    800043e0:	00000097          	auipc	ra,0x0
    800043e4:	ec0080e7          	jalr	-320(ra) # 800042a0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800043e8:	02048863          	beqz	s1,80004418 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    800043ec:	00000513          	li	a0,0
    else
        return 1;
}
    800043f0:	01813083          	ld	ra,24(sp)
    800043f4:	01013403          	ld	s0,16(sp)
    800043f8:	00813483          	ld	s1,8(sp)
    800043fc:	00013903          	ld	s2,0(sp)
    80004400:	02010113          	addi	sp,sp,32
    80004404:	00008067          	ret
                headAllocated = curr->next;
    80004408:	0084b783          	ld	a5,8(s1)
    8000440c:	0000c717          	auipc	a4,0xc
    80004410:	8af73a23          	sd	a5,-1868(a4) # 8000fcc0 <_ZN15MemoryAllocator13headAllocatedE>
    80004414:	fc5ff06f          	j	800043d8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80004418:	00100513          	li	a0,1
    8000441c:	fd5ff06f          	j	800043f0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080004420 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004420:	ff010113          	addi	sp,sp,-16
    80004424:	00113423          	sd	ra,8(sp)
    80004428:	00813023          	sd	s0,0(sp)
    8000442c:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004430:	00000097          	auipc	ra,0x0
    80004434:	f54080e7          	jalr	-172(ra) # 80004384 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004438:	00813083          	ld	ra,8(sp)
    8000443c:	00013403          	ld	s0,0(sp)
    80004440:	01010113          	addi	sp,sp,16
    80004444:	00008067          	ret

0000000080004448 <_Z7kmallocm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* kmalloc(size_t size)
{
    80004448:	ff010113          	addi	sp,sp,-16
    8000444c:	00113423          	sd	ra,8(sp)
    80004450:	00813023          	sd	s0,0(sp)
    80004454:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004458:	00000097          	auipc	ra,0x0
    8000445c:	e20080e7          	jalr	-480(ra) # 80004278 <_ZN15MemoryAllocator9mem_allocEm>
}
    80004460:	00813083          	ld	ra,8(sp)
    80004464:	00013403          	ld	s0,0(sp)
    80004468:	01010113          	addi	sp,sp,16
    8000446c:	00008067          	ret

0000000080004470 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004470:	ff010113          	addi	sp,sp,-16
    80004474:	00113423          	sd	ra,8(sp)
    80004478:	00813023          	sd	s0,0(sp)
    8000447c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004480:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004484:	00651513          	slli	a0,a0,0x6
    80004488:	00000097          	auipc	ra,0x0
    8000448c:	fc0080e7          	jalr	-64(ra) # 80004448 <_Z7kmallocm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004490:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004494:	00000097          	auipc	ra,0x0
    80004498:	858080e7          	jalr	-1960(ra) # 80003cec <_ZN5Riscv13w_a0_sscratchEv>
}
    8000449c:	00813083          	ld	ra,8(sp)
    800044a0:	00013403          	ld	s0,0(sp)
    800044a4:	01010113          	addi	sp,sp,16
    800044a8:	00008067          	ret

00000000800044ac <_Z5kfreePv>:

uint64 kfree(void* p)
{
    800044ac:	ff010113          	addi	sp,sp,-16
    800044b0:	00113423          	sd	ra,8(sp)
    800044b4:	00813023          	sd	s0,0(sp)
    800044b8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    800044bc:	00000097          	auipc	ra,0x0
    800044c0:	f64080e7          	jalr	-156(ra) # 80004420 <_ZN15MemoryAllocator8mem_freeEPv>
    800044c4:	00813083          	ld	ra,8(sp)
    800044c8:	00013403          	ld	s0,0(sp)
    800044cc:	01010113          	addi	sp,sp,16
    800044d0:	00008067          	ret

00000000800044d4 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    800044d4:	ff010113          	addi	sp,sp,-16
    800044d8:	00113423          	sd	ra,8(sp)
    800044dc:	00813023          	sd	s0,0(sp)
    800044e0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    800044e4:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    800044e8:	00000097          	auipc	ra,0x0
    800044ec:	fc4080e7          	jalr	-60(ra) # 800044ac <_Z5kfreePv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800044f0:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800044f4:	fffff097          	auipc	ra,0xfffff
    800044f8:	7f8080e7          	jalr	2040(ra) # 80003cec <_ZN5Riscv13w_a0_sscratchEv>
}
    800044fc:	00813083          	ld	ra,8(sp)
    80004500:	00013403          	ld	s0,0(sp)
    80004504:	01010113          	addi	sp,sp,16
    80004508:	00008067          	ret

000000008000450c <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    8000450c:	ff010113          	addi	sp,sp,-16
    80004510:	00813423          	sd	s0,8(sp)
    80004514:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80004518:	00b52a23          	sw	a1,20(a0)
    8000451c:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004520:	00053423          	sd	zero,8(a0)
    80004524:	00053023          	sd	zero,0(a0)
}
    80004528:	00813403          	ld	s0,8(sp)
    8000452c:	01010113          	addi	sp,sp,16
    80004530:	00008067          	ret

0000000080004534 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004534:	ff010113          	addi	sp,sp,-16
    80004538:	00813423          	sd	s0,8(sp)
    8000453c:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004540:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004544:	00053783          	ld	a5,0(a0)
    80004548:	00078e63          	beqz	a5,80004564 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    8000454c:	00853783          	ld	a5,8(a0)
    80004550:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004554:	00b53423          	sd	a1,8(a0)
    }
}
    80004558:	00813403          	ld	s0,8(sp)
    8000455c:	01010113          	addi	sp,sp,16
    80004560:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004564:	00b53423          	sd	a1,8(a0)
    80004568:	00b53023          	sd	a1,0(a0)
    8000456c:	fedff06f          	j	80004558 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004570 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80004570:	ff010113          	addi	sp,sp,-16
    80004574:	00113423          	sd	ra,8(sp)
    80004578:	00813023          	sd	s0,0(sp)
    8000457c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004580:	00007797          	auipc	a5,0x7
    80004584:	6287b783          	ld	a5,1576(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004588:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    8000458c:	00200793          	li	a5,2
    80004590:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    80004594:	00000097          	auipc	ra,0x0
    80004598:	fa0080e7          	jalr	-96(ra) # 80004534 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    8000459c:	ffffe097          	auipc	ra,0xffffe
    800045a0:	3a0080e7          	jalr	928(ra) # 8000293c <_ZN3PCB8dispatchEv>
}
    800045a4:	00813083          	ld	ra,8(sp)
    800045a8:	00013403          	ld	s0,0(sp)
    800045ac:	01010113          	addi	sp,sp,16
    800045b0:	00008067          	ret

00000000800045b4 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    800045b4:	01052783          	lw	a5,16(a0)
    800045b8:	fff7879b          	addiw	a5,a5,-1
    800045bc:	00f52823          	sw	a5,16(a0)
    800045c0:	02079713          	slli	a4,a5,0x20
    800045c4:	00074663          	bltz	a4,800045d0 <_ZN10KSemaphore4waitEv+0x1c>
}
    800045c8:	00000513          	li	a0,0
    800045cc:	00008067          	ret
uint64 KSemaphore::wait() {
    800045d0:	ff010113          	addi	sp,sp,-16
    800045d4:	00113423          	sd	ra,8(sp)
    800045d8:	00813023          	sd	s0,0(sp)
    800045dc:	01010413          	addi	s0,sp,16
        block();
    800045e0:	00000097          	auipc	ra,0x0
    800045e4:	f90080e7          	jalr	-112(ra) # 80004570 <_ZN10KSemaphore5blockEv>
}
    800045e8:	00000513          	li	a0,0
    800045ec:	00813083          	ld	ra,8(sp)
    800045f0:	00013403          	ld	s0,0(sp)
    800045f4:	01010113          	addi	sp,sp,16
    800045f8:	00008067          	ret

00000000800045fc <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    800045fc:	ff010113          	addi	sp,sp,-16
    80004600:	00813423          	sd	s0,8(sp)
    80004604:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004608:	00053503          	ld	a0,0(a0)
    8000460c:	00813403          	ld	s0,8(sp)
    80004610:	01010113          	addi	sp,sp,16
    80004614:	00008067          	ret

0000000080004618 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004618:	ff010113          	addi	sp,sp,-16
    8000461c:	00813423          	sd	s0,8(sp)
    80004620:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004624:	00053783          	ld	a5,0(a0)
    80004628:	00078c63          	beqz	a5,80004640 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    8000462c:	0087b703          	ld	a4,8(a5)
    80004630:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004634:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004638:	00053783          	ld	a5,0(a0)
    8000463c:	00078863          	beqz	a5,8000464c <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004640:	00813403          	ld	s0,8(sp)
    80004644:	01010113          	addi	sp,sp,16
    80004648:	00008067          	ret
        tailBlocked =0;
    8000464c:	00053423          	sd	zero,8(a0)
    80004650:	ff1ff06f          	j	80004640 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004654 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004654:	fe010113          	addi	sp,sp,-32
    80004658:	00113c23          	sd	ra,24(sp)
    8000465c:	00813823          	sd	s0,16(sp)
    80004660:	00913423          	sd	s1,8(sp)
    80004664:	01213023          	sd	s2,0(sp)
    80004668:	02010413          	addi	s0,sp,32
    8000466c:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004670:	00090513          	mv	a0,s2
    80004674:	00000097          	auipc	ra,0x0
    80004678:	f88080e7          	jalr	-120(ra) # 800045fc <_ZN10KSemaphore15getFirstBlockedEv>
    8000467c:	00050493          	mv	s1,a0
    80004680:	02050063          	beqz	a0,800046a0 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    80004684:	00090513          	mv	a0,s2
    80004688:	00000097          	auipc	ra,0x0
    8000468c:	f90080e7          	jalr	-112(ra) # 80004618 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    80004690:	00048513          	mv	a0,s1
    80004694:	fffff097          	auipc	ra,0xfffff
    80004698:	ebc080e7          	jalr	-324(ra) # 80003550 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    8000469c:	fd5ff06f          	j	80004670 <_ZN10KSemaphoreD1Ev+0x1c>
}
    800046a0:	01813083          	ld	ra,24(sp)
    800046a4:	01013403          	ld	s0,16(sp)
    800046a8:	00813483          	ld	s1,8(sp)
    800046ac:	00013903          	ld	s2,0(sp)
    800046b0:	02010113          	addi	sp,sp,32
    800046b4:	00008067          	ret

00000000800046b8 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800046b8:	fe010113          	addi	sp,sp,-32
    800046bc:	00113c23          	sd	ra,24(sp)
    800046c0:	00813823          	sd	s0,16(sp)
    800046c4:	00913423          	sd	s1,8(sp)
    800046c8:	01213023          	sd	s2,0(sp)
    800046cc:	02010413          	addi	s0,sp,32
    800046d0:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    800046d4:	00000097          	auipc	ra,0x0
    800046d8:	f28080e7          	jalr	-216(ra) # 800045fc <_ZN10KSemaphore15getFirstBlockedEv>
    800046dc:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800046e0:	00090513          	mv	a0,s2
    800046e4:	00000097          	auipc	ra,0x0
    800046e8:	f34080e7          	jalr	-204(ra) # 80004618 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    800046ec:	00048863          	beqz	s1,800046fc <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    800046f0:	00048513          	mv	a0,s1
    800046f4:	fffff097          	auipc	ra,0xfffff
    800046f8:	e5c080e7          	jalr	-420(ra) # 80003550 <_ZN9Scheduler3putEP3PCB>
    }
}
    800046fc:	01813083          	ld	ra,24(sp)
    80004700:	01013403          	ld	s0,16(sp)
    80004704:	00813483          	ld	s1,8(sp)
    80004708:	00013903          	ld	s2,0(sp)
    8000470c:	02010113          	addi	sp,sp,32
    80004710:	00008067          	ret

0000000080004714 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004714:	01052783          	lw	a5,16(a0)
    80004718:	0017879b          	addiw	a5,a5,1
    8000471c:	0007871b          	sext.w	a4,a5
    80004720:	00f52823          	sw	a5,16(a0)
    80004724:	00e05663          	blez	a4,80004730 <_ZN10KSemaphore6signalEv+0x1c>
}
    80004728:	00000513          	li	a0,0
    8000472c:	00008067          	ret
uint64 KSemaphore::signal() {
    80004730:	ff010113          	addi	sp,sp,-16
    80004734:	00113423          	sd	ra,8(sp)
    80004738:	00813023          	sd	s0,0(sp)
    8000473c:	01010413          	addi	s0,sp,16
        unblock();
    80004740:	00000097          	auipc	ra,0x0
    80004744:	f78080e7          	jalr	-136(ra) # 800046b8 <_ZN10KSemaphore7unblockEv>
}
    80004748:	00000513          	li	a0,0
    8000474c:	00813083          	ld	ra,8(sp)
    80004750:	00013403          	ld	s0,0(sp)
    80004754:	01010113          	addi	sp,sp,16
    80004758:	00008067          	ret

000000008000475c <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    8000475c:	ff010113          	addi	sp,sp,-16
    80004760:	00113423          	sd	ra,8(sp)
    80004764:	00813023          	sd	s0,0(sp)
    80004768:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    8000476c:	00000097          	auipc	ra,0x0
    80004770:	cdc080e7          	jalr	-804(ra) # 80004448 <_Z7kmallocm>
}
    80004774:	00813083          	ld	ra,8(sp)
    80004778:	00013403          	ld	s0,0(sp)
    8000477c:	01010113          	addi	sp,sp,16
    80004780:	00008067          	ret

0000000080004784 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80004784:	fd010113          	addi	sp,sp,-48
    80004788:	02113423          	sd	ra,40(sp)
    8000478c:	02813023          	sd	s0,32(sp)
    80004790:	00913c23          	sd	s1,24(sp)
    80004794:	01213823          	sd	s2,16(sp)
    80004798:	01313423          	sd	s3,8(sp)
    8000479c:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800047a0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800047a4:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800047a8:	01800513          	li	a0,24
    800047ac:	00000097          	auipc	ra,0x0
    800047b0:	fb0080e7          	jalr	-80(ra) # 8000475c <_ZN10KSemaphorenwEm>
    800047b4:	00050493          	mv	s1,a0
    800047b8:	0009859b          	sext.w	a1,s3
    800047bc:	00000097          	auipc	ra,0x0
    800047c0:	d50080e7          	jalr	-688(ra) # 8000450c <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800047c4:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800047c8:	02048263          	beqz	s1,800047ec <_ZN10KSemaphore14semOpenHandlerEv+0x68>
            __asm__ volatile("li a0, 0");
    800047cc:	00000513          	li	a0,0
}
    800047d0:	02813083          	ld	ra,40(sp)
    800047d4:	02013403          	ld	s0,32(sp)
    800047d8:	01813483          	ld	s1,24(sp)
    800047dc:	01013903          	ld	s2,16(sp)
    800047e0:	00813983          	ld	s3,8(sp)
    800047e4:	03010113          	addi	sp,sp,48
    800047e8:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    800047ec:	fff00513          	li	a0,-1
    800047f0:	fe1ff06f          	j	800047d0 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

00000000800047f4 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    800047f4:	ff010113          	addi	sp,sp,-16
    800047f8:	00113423          	sd	ra,8(sp)
    800047fc:	00813023          	sd	s0,0(sp)
    80004800:	01010413          	addi	s0,sp,16
    kfree(p);
    80004804:	00000097          	auipc	ra,0x0
    80004808:	ca8080e7          	jalr	-856(ra) # 800044ac <_Z5kfreePv>
}
    8000480c:	00813083          	ld	ra,8(sp)
    80004810:	00013403          	ld	s0,0(sp)
    80004814:	01010113          	addi	sp,sp,16
    80004818:	00008067          	ret

000000008000481c <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    8000481c:	fe010113          	addi	sp,sp,-32
    80004820:	00113c23          	sd	ra,24(sp)
    80004824:	00813823          	sd	s0,16(sp)
    80004828:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000482c:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->wait();
    80004830:	00000097          	auipc	ra,0x0
    80004834:	d84080e7          	jalr	-636(ra) # 800045b4 <_ZN10KSemaphore4waitEv>
    80004838:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    8000483c:	fe843783          	ld	a5,-24(s0)
    80004840:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    80004844:	fffff097          	auipc	ra,0xfffff
    80004848:	4a8080e7          	jalr	1192(ra) # 80003cec <_ZN5Riscv13w_a0_sscratchEv>
}
    8000484c:	01813083          	ld	ra,24(sp)
    80004850:	01013403          	ld	s0,16(sp)
    80004854:	02010113          	addi	sp,sp,32
    80004858:	00008067          	ret

000000008000485c <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler()
{
    8000485c:	fe010113          	addi	sp,sp,-32
    80004860:	00113c23          	sd	ra,24(sp)
    80004864:	00813823          	sd	s0,16(sp)
    80004868:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000486c:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->signal();
    80004870:	00000097          	auipc	ra,0x0
    80004874:	ea4080e7          	jalr	-348(ra) # 80004714 <_ZN10KSemaphore6signalEv>
    80004878:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    8000487c:	fe843783          	ld	a5,-24(s0)
    80004880:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    80004884:	fffff097          	auipc	ra,0xfffff
    80004888:	468080e7          	jalr	1128(ra) # 80003cec <_ZN5Riscv13w_a0_sscratchEv>
}
    8000488c:	01813083          	ld	ra,24(sp)
    80004890:	01013403          	ld	s0,16(sp)
    80004894:	02010113          	addi	sp,sp,32
    80004898:	00008067          	ret

000000008000489c <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    8000489c:	fe010113          	addi	sp,sp,-32
    800048a0:	00113c23          	sd	ra,24(sp)
    800048a4:	00813823          	sd	s0,16(sp)
    800048a8:	00913423          	sd	s1,8(sp)
    800048ac:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800048b0:	00058493          	mv	s1,a1
    delete kSem;
    800048b4:	00048e63          	beqz	s1,800048d0 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800048b8:	00048513          	mv	a0,s1
    800048bc:	00000097          	auipc	ra,0x0
    800048c0:	d98080e7          	jalr	-616(ra) # 80004654 <_ZN10KSemaphoreD1Ev>
    800048c4:	00048513          	mv	a0,s1
    800048c8:	00000097          	auipc	ra,0x0
    800048cc:	f2c080e7          	jalr	-212(ra) # 800047f4 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    800048d0:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800048d4:	fffff097          	auipc	ra,0xfffff
    800048d8:	418080e7          	jalr	1048(ra) # 80003cec <_ZN5Riscv13w_a0_sscratchEv>
}
    800048dc:	01813083          	ld	ra,24(sp)
    800048e0:	01013403          	ld	s0,16(sp)
    800048e4:	00813483          	ld	s1,8(sp)
    800048e8:	02010113          	addi	sp,sp,32
    800048ec:	00008067          	ret

00000000800048f0 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    800048f0:	fe010113          	addi	sp,sp,-32
    800048f4:	00113c23          	sd	ra,24(sp)
    800048f8:	00813823          	sd	s0,16(sp)
    800048fc:	00913423          	sd	s1,8(sp)
    80004900:	01213023          	sd	s2,0(sp)
    80004904:	02010413          	addi	s0,sp,32
    80004908:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000490c:	00000913          	li	s2,0
    80004910:	00c0006f          	j	8000491c <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004914:	ffffd097          	auipc	ra,0xffffd
    80004918:	a20080e7          	jalr	-1504(ra) # 80001334 <thread_dispatch>
    while ((key = getc()) != 'q') {
    8000491c:	ffffd097          	auipc	ra,0xffffd
    80004920:	bf4080e7          	jalr	-1036(ra) # 80001510 <getc>
    80004924:	0005059b          	sext.w	a1,a0
    80004928:	07100793          	li	a5,113
    8000492c:	02f58a63          	beq	a1,a5,80004960 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80004930:	0084b503          	ld	a0,8(s1)
    80004934:	00002097          	auipc	ra,0x2
    80004938:	df4080e7          	jalr	-524(ra) # 80006728 <_ZN6Buffer3putEi>
        i++;
    8000493c:	0019071b          	addiw	a4,s2,1
    80004940:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004944:	0004a683          	lw	a3,0(s1)
    80004948:	0026979b          	slliw	a5,a3,0x2
    8000494c:	00d787bb          	addw	a5,a5,a3
    80004950:	0017979b          	slliw	a5,a5,0x1
    80004954:	02f767bb          	remw	a5,a4,a5
    80004958:	fc0792e3          	bnez	a5,8000491c <_Z16producerKeyboardPv+0x2c>
    8000495c:	fb9ff06f          	j	80004914 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80004960:	00100793          	li	a5,1
    80004964:	0000b717          	auipc	a4,0xb
    80004968:	36f72623          	sw	a5,876(a4) # 8000fcd0 <threadEnd>

    delete data->buffer;
    8000496c:	0084b903          	ld	s2,8(s1)
    80004970:	00090e63          	beqz	s2,8000498c <_Z16producerKeyboardPv+0x9c>
    80004974:	00090513          	mv	a0,s2
    80004978:	00002097          	auipc	ra,0x2
    8000497c:	cf4080e7          	jalr	-780(ra) # 8000666c <_ZN6BufferD1Ev>
    80004980:	00090513          	mv	a0,s2
    80004984:	fffff097          	auipc	ra,0xfffff
    80004988:	dc8080e7          	jalr	-568(ra) # 8000374c <_ZdlPv>

    sem_signal(data->wait);
    8000498c:	0104b503          	ld	a0,16(s1)
    80004990:	ffffd097          	auipc	ra,0xffffd
    80004994:	a7c080e7          	jalr	-1412(ra) # 8000140c <sem_signal>
}
    80004998:	01813083          	ld	ra,24(sp)
    8000499c:	01013403          	ld	s0,16(sp)
    800049a0:	00813483          	ld	s1,8(sp)
    800049a4:	00013903          	ld	s2,0(sp)
    800049a8:	02010113          	addi	sp,sp,32
    800049ac:	00008067          	ret

00000000800049b0 <_Z8producerPv>:

void producer(void *arg) {
    800049b0:	fe010113          	addi	sp,sp,-32
    800049b4:	00113c23          	sd	ra,24(sp)
    800049b8:	00813823          	sd	s0,16(sp)
    800049bc:	00913423          	sd	s1,8(sp)
    800049c0:	01213023          	sd	s2,0(sp)
    800049c4:	02010413          	addi	s0,sp,32
    800049c8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800049cc:	00000913          	li	s2,0
    800049d0:	00c0006f          	j	800049dc <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800049d4:	ffffd097          	auipc	ra,0xffffd
    800049d8:	960080e7          	jalr	-1696(ra) # 80001334 <thread_dispatch>
    while (!threadEnd) {
    800049dc:	0000b797          	auipc	a5,0xb
    800049e0:	2f47a783          	lw	a5,756(a5) # 8000fcd0 <threadEnd>
    800049e4:	02079e63          	bnez	a5,80004a20 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800049e8:	0004a583          	lw	a1,0(s1)
    800049ec:	0305859b          	addiw	a1,a1,48
    800049f0:	0084b503          	ld	a0,8(s1)
    800049f4:	00002097          	auipc	ra,0x2
    800049f8:	d34080e7          	jalr	-716(ra) # 80006728 <_ZN6Buffer3putEi>
        i++;
    800049fc:	0019071b          	addiw	a4,s2,1
    80004a00:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004a04:	0004a683          	lw	a3,0(s1)
    80004a08:	0026979b          	slliw	a5,a3,0x2
    80004a0c:	00d787bb          	addw	a5,a5,a3
    80004a10:	0017979b          	slliw	a5,a5,0x1
    80004a14:	02f767bb          	remw	a5,a4,a5
    80004a18:	fc0792e3          	bnez	a5,800049dc <_Z8producerPv+0x2c>
    80004a1c:	fb9ff06f          	j	800049d4 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80004a20:	0104b503          	ld	a0,16(s1)
    80004a24:	ffffd097          	auipc	ra,0xffffd
    80004a28:	9e8080e7          	jalr	-1560(ra) # 8000140c <sem_signal>
}
    80004a2c:	01813083          	ld	ra,24(sp)
    80004a30:	01013403          	ld	s0,16(sp)
    80004a34:	00813483          	ld	s1,8(sp)
    80004a38:	00013903          	ld	s2,0(sp)
    80004a3c:	02010113          	addi	sp,sp,32
    80004a40:	00008067          	ret

0000000080004a44 <_Z8consumerPv>:

void consumer(void *arg) {
    80004a44:	fd010113          	addi	sp,sp,-48
    80004a48:	02113423          	sd	ra,40(sp)
    80004a4c:	02813023          	sd	s0,32(sp)
    80004a50:	00913c23          	sd	s1,24(sp)
    80004a54:	01213823          	sd	s2,16(sp)
    80004a58:	01313423          	sd	s3,8(sp)
    80004a5c:	03010413          	addi	s0,sp,48
    80004a60:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;


    int i = 0;
    80004a64:	00000993          	li	s3,0
    80004a68:	01c0006f          	j	80004a84 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80004a6c:	ffffd097          	auipc	ra,0xffffd
    80004a70:	8c8080e7          	jalr	-1848(ra) # 80001334 <thread_dispatch>
    80004a74:	0500006f          	j	80004ac4 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004a78:	00a00513          	li	a0,10
    80004a7c:	ffffd097          	auipc	ra,0xffffd
    80004a80:	abc080e7          	jalr	-1348(ra) # 80001538 <putc>
    while (!threadEnd) {
    80004a84:	0000b797          	auipc	a5,0xb
    80004a88:	24c7a783          	lw	a5,588(a5) # 8000fcd0 <threadEnd>
    80004a8c:	04079463          	bnez	a5,80004ad4 <_Z8consumerPv+0x90>
        int key = data->buffer->get();
    80004a90:	00893503          	ld	a0,8(s2)
    80004a94:	00002097          	auipc	ra,0x2
    80004a98:	d24080e7          	jalr	-732(ra) # 800067b8 <_ZN6Buffer3getEv>
        i++;
    80004a9c:	0019849b          	addiw	s1,s3,1
    80004aa0:	0004899b          	sext.w	s3,s1
        putc(key);
    80004aa4:	0ff57513          	andi	a0,a0,255
    80004aa8:	ffffd097          	auipc	ra,0xffffd
    80004aac:	a90080e7          	jalr	-1392(ra) # 80001538 <putc>
        if (i % (5 * data->id) == 0) {
    80004ab0:	00092703          	lw	a4,0(s2)
    80004ab4:	0027179b          	slliw	a5,a4,0x2
    80004ab8:	00e787bb          	addw	a5,a5,a4
    80004abc:	02f4e7bb          	remw	a5,s1,a5
    80004ac0:	fa0786e3          	beqz	a5,80004a6c <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    80004ac4:	05000793          	li	a5,80
    80004ac8:	02f4e4bb          	remw	s1,s1,a5
    80004acc:	fa049ce3          	bnez	s1,80004a84 <_Z8consumerPv+0x40>
    80004ad0:	fa9ff06f          	j	80004a78 <_Z8consumerPv+0x34>
        }
    }

    sem_signal(data->wait);
    80004ad4:	01093503          	ld	a0,16(s2)
    80004ad8:	ffffd097          	auipc	ra,0xffffd
    80004adc:	934080e7          	jalr	-1740(ra) # 8000140c <sem_signal>
}
    80004ae0:	02813083          	ld	ra,40(sp)
    80004ae4:	02013403          	ld	s0,32(sp)
    80004ae8:	01813483          	ld	s1,24(sp)
    80004aec:	01013903          	ld	s2,16(sp)
    80004af0:	00813983          	ld	s3,8(sp)
    80004af4:	03010113          	addi	sp,sp,48
    80004af8:	00008067          	ret

0000000080004afc <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80004afc:	f9010113          	addi	sp,sp,-112
    80004b00:	06113423          	sd	ra,104(sp)
    80004b04:	06813023          	sd	s0,96(sp)
    80004b08:	04913c23          	sd	s1,88(sp)
    80004b0c:	05213823          	sd	s2,80(sp)
    80004b10:	05313423          	sd	s3,72(sp)
    80004b14:	05413023          	sd	s4,64(sp)
    80004b18:	03513c23          	sd	s5,56(sp)
    80004b1c:	07010413          	addi	s0,sp,112
    char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004b20:	00005517          	auipc	a0,0x5
    80004b24:	8a050513          	addi	a0,a0,-1888 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80004b28:	00001097          	auipc	ra,0x1
    80004b2c:	204080e7          	jalr	516(ra) # 80005d2c <_Z11printStringPKc>
    getString(input, 30);
    80004b30:	01e00593          	li	a1,30
    80004b34:	fa040493          	addi	s1,s0,-96
    80004b38:	00048513          	mv	a0,s1
    80004b3c:	00001097          	auipc	ra,0x1
    80004b40:	26c080e7          	jalr	620(ra) # 80005da8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004b44:	00048513          	mv	a0,s1
    80004b48:	00001097          	auipc	ra,0x1
    80004b4c:	32c080e7          	jalr	812(ra) # 80005e74 <_Z11stringToIntPKc>
    80004b50:	00050913          	mv	s2,a0

    printString("Unesite velicinu bafera?\n");
    80004b54:	00005517          	auipc	a0,0x5
    80004b58:	88c50513          	addi	a0,a0,-1908 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80004b5c:	00001097          	auipc	ra,0x1
    80004b60:	1d0080e7          	jalr	464(ra) # 80005d2c <_Z11printStringPKc>
    getString(input, 30);
    80004b64:	01e00593          	li	a1,30
    80004b68:	00048513          	mv	a0,s1
    80004b6c:	00001097          	auipc	ra,0x1
    80004b70:	23c080e7          	jalr	572(ra) # 80005da8 <_Z9getStringPci>
    n = stringToInt(input);
    80004b74:	00048513          	mv	a0,s1
    80004b78:	00001097          	auipc	ra,0x1
    80004b7c:	2fc080e7          	jalr	764(ra) # 80005e74 <_Z11stringToIntPKc>
    80004b80:	00050493          	mv	s1,a0

    printString("Broj proizvodjaca "); printInt(threadNum);
    80004b84:	00005517          	auipc	a0,0x5
    80004b88:	87c50513          	addi	a0,a0,-1924 # 80009400 <CONSOLE_STATUS+0x3f0>
    80004b8c:	00001097          	auipc	ra,0x1
    80004b90:	1a0080e7          	jalr	416(ra) # 80005d2c <_Z11printStringPKc>
    80004b94:	00000613          	li	a2,0
    80004b98:	00a00593          	li	a1,10
    80004b9c:	00090513          	mv	a0,s2
    80004ba0:	00001097          	auipc	ra,0x1
    80004ba4:	324080e7          	jalr	804(ra) # 80005ec4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004ba8:	00005517          	auipc	a0,0x5
    80004bac:	87050513          	addi	a0,a0,-1936 # 80009418 <CONSOLE_STATUS+0x408>
    80004bb0:	00001097          	auipc	ra,0x1
    80004bb4:	17c080e7          	jalr	380(ra) # 80005d2c <_Z11printStringPKc>
    80004bb8:	00000613          	li	a2,0
    80004bbc:	00a00593          	li	a1,10
    80004bc0:	00048513          	mv	a0,s1
    80004bc4:	00001097          	auipc	ra,0x1
    80004bc8:	300080e7          	jalr	768(ra) # 80005ec4 <_Z8printIntiii>
    printString(".\n");
    80004bcc:	00004517          	auipc	a0,0x4
    80004bd0:	68450513          	addi	a0,a0,1668 # 80009250 <CONSOLE_STATUS+0x240>
    80004bd4:	00001097          	auipc	ra,0x1
    80004bd8:	158080e7          	jalr	344(ra) # 80005d2c <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80004bdc:	03800513          	li	a0,56
    80004be0:	fffff097          	auipc	ra,0xfffff
    80004be4:	b44080e7          	jalr	-1212(ra) # 80003724 <_Znwm>
    80004be8:	00050a13          	mv	s4,a0
    80004bec:	00048593          	mv	a1,s1
    80004bf0:	00002097          	auipc	ra,0x2
    80004bf4:	9f4080e7          	jalr	-1548(ra) # 800065e4 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004bf8:	00000593          	li	a1,0
    80004bfc:	0000b517          	auipc	a0,0xb
    80004c00:	0dc50513          	addi	a0,a0,220 # 8000fcd8 <waitForAll>
    80004c04:	ffffc097          	auipc	ra,0xffffc
    80004c08:	778080e7          	jalr	1912(ra) # 8000137c <sem_open>

    thread_t threads[threadNum];
    80004c0c:	00391793          	slli	a5,s2,0x3
    80004c10:	00f78793          	addi	a5,a5,15
    80004c14:	ff07f793          	andi	a5,a5,-16
    80004c18:	40f10133          	sub	sp,sp,a5
    80004c1c:	00010a93          	mv	s5,sp
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];
    80004c20:	0019071b          	addiw	a4,s2,1
    80004c24:	00171793          	slli	a5,a4,0x1
    80004c28:	00e787b3          	add	a5,a5,a4
    80004c2c:	00379793          	slli	a5,a5,0x3
    80004c30:	00f78793          	addi	a5,a5,15
    80004c34:	ff07f793          	andi	a5,a5,-16
    80004c38:	40f10133          	sub	sp,sp,a5
    80004c3c:	00010993          	mv	s3,sp

    data[threadNum].id = threadNum;
    80004c40:	00191613          	slli	a2,s2,0x1
    80004c44:	012607b3          	add	a5,a2,s2
    80004c48:	00379793          	slli	a5,a5,0x3
    80004c4c:	00f987b3          	add	a5,s3,a5
    80004c50:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004c54:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80004c58:	0000b717          	auipc	a4,0xb
    80004c5c:	08073703          	ld	a4,128(a4) # 8000fcd8 <waitForAll>
    80004c60:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004c64:	00078613          	mv	a2,a5
    80004c68:	00000597          	auipc	a1,0x0
    80004c6c:	ddc58593          	addi	a1,a1,-548 # 80004a44 <_Z8consumerPv>
    80004c70:	f9840513          	addi	a0,s0,-104
    80004c74:	ffffc097          	auipc	ra,0xffffc
    80004c78:	640080e7          	jalr	1600(ra) # 800012b4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80004c7c:	00000493          	li	s1,0
    80004c80:	0280006f          	j	80004ca8 <_Z22producerConsumer_C_APIv+0x1ac>
        data[i].id = i;
        data[i].buffer = buffer;
        data[i].wait = waitForAll;

        thread_create(threads + i,
    80004c84:	00000597          	auipc	a1,0x0
    80004c88:	c6c58593          	addi	a1,a1,-916 # 800048f0 <_Z16producerKeyboardPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    80004c8c:	00179613          	slli	a2,a5,0x1
    80004c90:	00f60633          	add	a2,a2,a5
    80004c94:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004c98:	00c98633          	add	a2,s3,a2
    80004c9c:	ffffc097          	auipc	ra,0xffffc
    80004ca0:	618080e7          	jalr	1560(ra) # 800012b4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004ca4:	0014849b          	addiw	s1,s1,1
    80004ca8:	0524d263          	bge	s1,s2,80004cec <_Z22producerConsumer_C_APIv+0x1f0>
        data[i].id = i;
    80004cac:	00149793          	slli	a5,s1,0x1
    80004cb0:	009787b3          	add	a5,a5,s1
    80004cb4:	00379793          	slli	a5,a5,0x3
    80004cb8:	00f987b3          	add	a5,s3,a5
    80004cbc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004cc0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80004cc4:	0000b717          	auipc	a4,0xb
    80004cc8:	01473703          	ld	a4,20(a4) # 8000fcd8 <waitForAll>
    80004ccc:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80004cd0:	00048793          	mv	a5,s1
    80004cd4:	00349513          	slli	a0,s1,0x3
    80004cd8:	00aa8533          	add	a0,s5,a0
    80004cdc:	fa9054e3          	blez	s1,80004c84 <_Z22producerConsumer_C_APIv+0x188>
    80004ce0:	00000597          	auipc	a1,0x0
    80004ce4:	cd058593          	addi	a1,a1,-816 # 800049b0 <_Z8producerPv>
    80004ce8:	fa5ff06f          	j	80004c8c <_Z22producerConsumer_C_APIv+0x190>
    }

    thread_dispatch();
    80004cec:	ffffc097          	auipc	ra,0xffffc
    80004cf0:	648080e7          	jalr	1608(ra) # 80001334 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80004cf4:	00000493          	li	s1,0
    80004cf8:	00994e63          	blt	s2,s1,80004d14 <_Z22producerConsumer_C_APIv+0x218>
        sem_wait(waitForAll);
    80004cfc:	0000b517          	auipc	a0,0xb
    80004d00:	fdc53503          	ld	a0,-36(a0) # 8000fcd8 <waitForAll>
    80004d04:	ffffc097          	auipc	ra,0xffffc
    80004d08:	6dc080e7          	jalr	1756(ra) # 800013e0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80004d0c:	0014849b          	addiw	s1,s1,1
    80004d10:	fe9ff06f          	j	80004cf8 <_Z22producerConsumer_C_APIv+0x1fc>
    }

    sem_close(waitForAll);
    80004d14:	0000b517          	auipc	a0,0xb
    80004d18:	fc453503          	ld	a0,-60(a0) # 8000fcd8 <waitForAll>
    80004d1c:	ffffc097          	auipc	ra,0xffffc
    80004d20:	698080e7          	jalr	1688(ra) # 800013b4 <sem_close>
    80004d24:	f9040113          	addi	sp,s0,-112
    80004d28:	06813083          	ld	ra,104(sp)
    80004d2c:	06013403          	ld	s0,96(sp)
    80004d30:	05813483          	ld	s1,88(sp)
    80004d34:	05013903          	ld	s2,80(sp)
    80004d38:	04813983          	ld	s3,72(sp)
    80004d3c:	04013a03          	ld	s4,64(sp)
    80004d40:	03813a83          	ld	s5,56(sp)
    80004d44:	07010113          	addi	sp,sp,112
    80004d48:	00008067          	ret
    80004d4c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004d50:	000a0513          	mv	a0,s4
    80004d54:	fffff097          	auipc	ra,0xfffff
    80004d58:	9f8080e7          	jalr	-1544(ra) # 8000374c <_ZdlPv>
    80004d5c:	00048513          	mv	a0,s1
    80004d60:	0000c097          	auipc	ra,0xc
    80004d64:	068080e7          	jalr	104(ra) # 80010dc8 <_Unwind_Resume>

0000000080004d68 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004d68:	fe010113          	addi	sp,sp,-32
    80004d6c:	00113c23          	sd	ra,24(sp)
    80004d70:	00813823          	sd	s0,16(sp)
    80004d74:	00913423          	sd	s1,8(sp)
    80004d78:	01213023          	sd	s2,0(sp)
    80004d7c:	02010413          	addi	s0,sp,32
    80004d80:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004d84:	00100793          	li	a5,1
    80004d88:	02a7f863          	bgeu	a5,a0,80004db8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004d8c:	00a00793          	li	a5,10
    80004d90:	02f577b3          	remu	a5,a0,a5
    80004d94:	02078e63          	beqz	a5,80004dd0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004d98:	fff48513          	addi	a0,s1,-1
    80004d9c:	00000097          	auipc	ra,0x0
    80004da0:	fcc080e7          	jalr	-52(ra) # 80004d68 <_ZL9fibonaccim>
    80004da4:	00050913          	mv	s2,a0
    80004da8:	ffe48513          	addi	a0,s1,-2
    80004dac:	00000097          	auipc	ra,0x0
    80004db0:	fbc080e7          	jalr	-68(ra) # 80004d68 <_ZL9fibonaccim>
    80004db4:	00a90533          	add	a0,s2,a0
}
    80004db8:	01813083          	ld	ra,24(sp)
    80004dbc:	01013403          	ld	s0,16(sp)
    80004dc0:	00813483          	ld	s1,8(sp)
    80004dc4:	00013903          	ld	s2,0(sp)
    80004dc8:	02010113          	addi	sp,sp,32
    80004dcc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004dd0:	ffffc097          	auipc	ra,0xffffc
    80004dd4:	564080e7          	jalr	1380(ra) # 80001334 <thread_dispatch>
    80004dd8:	fc1ff06f          	j	80004d98 <_ZL9fibonaccim+0x30>

0000000080004ddc <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004ddc:	fe010113          	addi	sp,sp,-32
    80004de0:	00113c23          	sd	ra,24(sp)
    80004de4:	00813823          	sd	s0,16(sp)
    80004de8:	00913423          	sd	s1,8(sp)
    80004dec:	01213023          	sd	s2,0(sp)
    80004df0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004df4:	00000913          	li	s2,0
    80004df8:	0380006f          	j	80004e30 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004dfc:	ffffc097          	auipc	ra,0xffffc
    80004e00:	538080e7          	jalr	1336(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004e04:	00148493          	addi	s1,s1,1
    80004e08:	000027b7          	lui	a5,0x2
    80004e0c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004e10:	0097ee63          	bltu	a5,s1,80004e2c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004e14:	00000713          	li	a4,0
    80004e18:	000077b7          	lui	a5,0x7
    80004e1c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004e20:	fce7eee3          	bltu	a5,a4,80004dfc <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004e24:	00170713          	addi	a4,a4,1
    80004e28:	ff1ff06f          	j	80004e18 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004e2c:	00190913          	addi	s2,s2,1
    80004e30:	00900793          	li	a5,9
    80004e34:	0527e063          	bltu	a5,s2,80004e74 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004e38:	00004517          	auipc	a0,0x4
    80004e3c:	5f850513          	addi	a0,a0,1528 # 80009430 <CONSOLE_STATUS+0x420>
    80004e40:	00001097          	auipc	ra,0x1
    80004e44:	eec080e7          	jalr	-276(ra) # 80005d2c <_Z11printStringPKc>
    80004e48:	00000613          	li	a2,0
    80004e4c:	00a00593          	li	a1,10
    80004e50:	0009051b          	sext.w	a0,s2
    80004e54:	00001097          	auipc	ra,0x1
    80004e58:	070080e7          	jalr	112(ra) # 80005ec4 <_Z8printIntiii>
    80004e5c:	00004517          	auipc	a0,0x4
    80004e60:	2a450513          	addi	a0,a0,676 # 80009100 <CONSOLE_STATUS+0xf0>
    80004e64:	00001097          	auipc	ra,0x1
    80004e68:	ec8080e7          	jalr	-312(ra) # 80005d2c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004e6c:	00000493          	li	s1,0
    80004e70:	f99ff06f          	j	80004e08 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004e74:	00004517          	auipc	a0,0x4
    80004e78:	5c450513          	addi	a0,a0,1476 # 80009438 <CONSOLE_STATUS+0x428>
    80004e7c:	00001097          	auipc	ra,0x1
    80004e80:	eb0080e7          	jalr	-336(ra) # 80005d2c <_Z11printStringPKc>
    finishedA = true;
    80004e84:	00100793          	li	a5,1
    80004e88:	0000b717          	auipc	a4,0xb
    80004e8c:	e4f70c23          	sb	a5,-424(a4) # 8000fce0 <_ZL9finishedA>
}
    80004e90:	01813083          	ld	ra,24(sp)
    80004e94:	01013403          	ld	s0,16(sp)
    80004e98:	00813483          	ld	s1,8(sp)
    80004e9c:	00013903          	ld	s2,0(sp)
    80004ea0:	02010113          	addi	sp,sp,32
    80004ea4:	00008067          	ret

0000000080004ea8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg)
{
    80004ea8:	fe010113          	addi	sp,sp,-32
    80004eac:	00113c23          	sd	ra,24(sp)
    80004eb0:	00813823          	sd	s0,16(sp)
    80004eb4:	00913423          	sd	s1,8(sp)
    80004eb8:	01213023          	sd	s2,0(sp)
    80004ebc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004ec0:	00000913          	li	s2,0
    80004ec4:	0380006f          	j	80004efc <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004ec8:	ffffc097          	auipc	ra,0xffffc
    80004ecc:	46c080e7          	jalr	1132(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004ed0:	00148493          	addi	s1,s1,1
    80004ed4:	000027b7          	lui	a5,0x2
    80004ed8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004edc:	0097ee63          	bltu	a5,s1,80004ef8 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004ee0:	00000713          	li	a4,0
    80004ee4:	000077b7          	lui	a5,0x7
    80004ee8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004eec:	fce7eee3          	bltu	a5,a4,80004ec8 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004ef0:	00170713          	addi	a4,a4,1
    80004ef4:	ff1ff06f          	j	80004ee4 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004ef8:	00190913          	addi	s2,s2,1
    80004efc:	00f00793          	li	a5,15
    80004f00:	0527e063          	bltu	a5,s2,80004f40 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004f04:	00004517          	auipc	a0,0x4
    80004f08:	54450513          	addi	a0,a0,1348 # 80009448 <CONSOLE_STATUS+0x438>
    80004f0c:	00001097          	auipc	ra,0x1
    80004f10:	e20080e7          	jalr	-480(ra) # 80005d2c <_Z11printStringPKc>
    80004f14:	00000613          	li	a2,0
    80004f18:	00a00593          	li	a1,10
    80004f1c:	0009051b          	sext.w	a0,s2
    80004f20:	00001097          	auipc	ra,0x1
    80004f24:	fa4080e7          	jalr	-92(ra) # 80005ec4 <_Z8printIntiii>
    80004f28:	00004517          	auipc	a0,0x4
    80004f2c:	1d850513          	addi	a0,a0,472 # 80009100 <CONSOLE_STATUS+0xf0>
    80004f30:	00001097          	auipc	ra,0x1
    80004f34:	dfc080e7          	jalr	-516(ra) # 80005d2c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004f38:	00000493          	li	s1,0
    80004f3c:	f99ff06f          	j	80004ed4 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    thread_dispatch();
    80004f40:	ffffc097          	auipc	ra,0xffffc
    80004f44:	3f4080e7          	jalr	1012(ra) # 80001334 <thread_dispatch>
    printString("B finished!\n");
    80004f48:	00004517          	auipc	a0,0x4
    80004f4c:	50850513          	addi	a0,a0,1288 # 80009450 <CONSOLE_STATUS+0x440>
    80004f50:	00001097          	auipc	ra,0x1
    80004f54:	ddc080e7          	jalr	-548(ra) # 80005d2c <_Z11printStringPKc>
    finishedB = true;
    80004f58:	00100793          	li	a5,1
    80004f5c:	0000b717          	auipc	a4,0xb
    80004f60:	d8f702a3          	sb	a5,-635(a4) # 8000fce1 <_ZL9finishedB>
}
    80004f64:	01813083          	ld	ra,24(sp)
    80004f68:	01013403          	ld	s0,16(sp)
    80004f6c:	00813483          	ld	s1,8(sp)
    80004f70:	00013903          	ld	s2,0(sp)
    80004f74:	02010113          	addi	sp,sp,32
    80004f78:	00008067          	ret

0000000080004f7c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004f7c:	fe010113          	addi	sp,sp,-32
    80004f80:	00113c23          	sd	ra,24(sp)
    80004f84:	00813823          	sd	s0,16(sp)
    80004f88:	00913423          	sd	s1,8(sp)
    80004f8c:	01213023          	sd	s2,0(sp)
    80004f90:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004f94:	00000493          	li	s1,0
    80004f98:	0400006f          	j	80004fd8 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004f9c:	00004517          	auipc	a0,0x4
    80004fa0:	4c450513          	addi	a0,a0,1220 # 80009460 <CONSOLE_STATUS+0x450>
    80004fa4:	00001097          	auipc	ra,0x1
    80004fa8:	d88080e7          	jalr	-632(ra) # 80005d2c <_Z11printStringPKc>
    80004fac:	00000613          	li	a2,0
    80004fb0:	00a00593          	li	a1,10
    80004fb4:	00048513          	mv	a0,s1
    80004fb8:	00001097          	auipc	ra,0x1
    80004fbc:	f0c080e7          	jalr	-244(ra) # 80005ec4 <_Z8printIntiii>
    80004fc0:	00004517          	auipc	a0,0x4
    80004fc4:	14050513          	addi	a0,a0,320 # 80009100 <CONSOLE_STATUS+0xf0>
    80004fc8:	00001097          	auipc	ra,0x1
    80004fcc:	d64080e7          	jalr	-668(ra) # 80005d2c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004fd0:	0014849b          	addiw	s1,s1,1
    80004fd4:	0ff4f493          	andi	s1,s1,255
    80004fd8:	00200793          	li	a5,2
    80004fdc:	fc97f0e3          	bgeu	a5,s1,80004f9c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004fe0:	00004517          	auipc	a0,0x4
    80004fe4:	48850513          	addi	a0,a0,1160 # 80009468 <CONSOLE_STATUS+0x458>
    80004fe8:	00001097          	auipc	ra,0x1
    80004fec:	d44080e7          	jalr	-700(ra) # 80005d2c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004ff0:	00700313          	li	t1,7
    thread_dispatch();
    80004ff4:	ffffc097          	auipc	ra,0xffffc
    80004ff8:	340080e7          	jalr	832(ra) # 80001334 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004ffc:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005000:	00004517          	auipc	a0,0x4
    80005004:	47850513          	addi	a0,a0,1144 # 80009478 <CONSOLE_STATUS+0x468>
    80005008:	00001097          	auipc	ra,0x1
    8000500c:	d24080e7          	jalr	-732(ra) # 80005d2c <_Z11printStringPKc>
    80005010:	00000613          	li	a2,0
    80005014:	00a00593          	li	a1,10
    80005018:	0009051b          	sext.w	a0,s2
    8000501c:	00001097          	auipc	ra,0x1
    80005020:	ea8080e7          	jalr	-344(ra) # 80005ec4 <_Z8printIntiii>
    80005024:	00004517          	auipc	a0,0x4
    80005028:	0dc50513          	addi	a0,a0,220 # 80009100 <CONSOLE_STATUS+0xf0>
    8000502c:	00001097          	auipc	ra,0x1
    80005030:	d00080e7          	jalr	-768(ra) # 80005d2c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005034:	00c00513          	li	a0,12
    80005038:	00000097          	auipc	ra,0x0
    8000503c:	d30080e7          	jalr	-720(ra) # 80004d68 <_ZL9fibonaccim>
    80005040:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005044:	00004517          	auipc	a0,0x4
    80005048:	43c50513          	addi	a0,a0,1084 # 80009480 <CONSOLE_STATUS+0x470>
    8000504c:	00001097          	auipc	ra,0x1
    80005050:	ce0080e7          	jalr	-800(ra) # 80005d2c <_Z11printStringPKc>
    80005054:	00000613          	li	a2,0
    80005058:	00a00593          	li	a1,10
    8000505c:	0009051b          	sext.w	a0,s2
    80005060:	00001097          	auipc	ra,0x1
    80005064:	e64080e7          	jalr	-412(ra) # 80005ec4 <_Z8printIntiii>
    80005068:	00004517          	auipc	a0,0x4
    8000506c:	09850513          	addi	a0,a0,152 # 80009100 <CONSOLE_STATUS+0xf0>
    80005070:	00001097          	auipc	ra,0x1
    80005074:	cbc080e7          	jalr	-836(ra) # 80005d2c <_Z11printStringPKc>
    80005078:	0400006f          	j	800050b8 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000507c:	00004517          	auipc	a0,0x4
    80005080:	3e450513          	addi	a0,a0,996 # 80009460 <CONSOLE_STATUS+0x450>
    80005084:	00001097          	auipc	ra,0x1
    80005088:	ca8080e7          	jalr	-856(ra) # 80005d2c <_Z11printStringPKc>
    8000508c:	00000613          	li	a2,0
    80005090:	00a00593          	li	a1,10
    80005094:	00048513          	mv	a0,s1
    80005098:	00001097          	auipc	ra,0x1
    8000509c:	e2c080e7          	jalr	-468(ra) # 80005ec4 <_Z8printIntiii>
    800050a0:	00004517          	auipc	a0,0x4
    800050a4:	06050513          	addi	a0,a0,96 # 80009100 <CONSOLE_STATUS+0xf0>
    800050a8:	00001097          	auipc	ra,0x1
    800050ac:	c84080e7          	jalr	-892(ra) # 80005d2c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800050b0:	0014849b          	addiw	s1,s1,1
    800050b4:	0ff4f493          	andi	s1,s1,255
    800050b8:	00500793          	li	a5,5
    800050bc:	fc97f0e3          	bgeu	a5,s1,8000507c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    thread_dispatch();
    800050c0:	ffffc097          	auipc	ra,0xffffc
    800050c4:	274080e7          	jalr	628(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    800050c8:	00004517          	auipc	a0,0x4
    800050cc:	3c850513          	addi	a0,a0,968 # 80009490 <CONSOLE_STATUS+0x480>
    800050d0:	00001097          	auipc	ra,0x1
    800050d4:	c5c080e7          	jalr	-932(ra) # 80005d2c <_Z11printStringPKc>
    finishedC = true;
    800050d8:	00100793          	li	a5,1
    800050dc:	0000b717          	auipc	a4,0xb
    800050e0:	c0f70323          	sb	a5,-1018(a4) # 8000fce2 <_ZL9finishedC>
}
    800050e4:	01813083          	ld	ra,24(sp)
    800050e8:	01013403          	ld	s0,16(sp)
    800050ec:	00813483          	ld	s1,8(sp)
    800050f0:	00013903          	ld	s2,0(sp)
    800050f4:	02010113          	addi	sp,sp,32
    800050f8:	00008067          	ret

00000000800050fc <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800050fc:	fe010113          	addi	sp,sp,-32
    80005100:	00113c23          	sd	ra,24(sp)
    80005104:	00813823          	sd	s0,16(sp)
    80005108:	00913423          	sd	s1,8(sp)
    8000510c:	01213023          	sd	s2,0(sp)
    80005110:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005114:	00a00493          	li	s1,10
    80005118:	0400006f          	j	80005158 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000511c:	00004517          	auipc	a0,0x4
    80005120:	38450513          	addi	a0,a0,900 # 800094a0 <CONSOLE_STATUS+0x490>
    80005124:	00001097          	auipc	ra,0x1
    80005128:	c08080e7          	jalr	-1016(ra) # 80005d2c <_Z11printStringPKc>
    8000512c:	00000613          	li	a2,0
    80005130:	00a00593          	li	a1,10
    80005134:	00048513          	mv	a0,s1
    80005138:	00001097          	auipc	ra,0x1
    8000513c:	d8c080e7          	jalr	-628(ra) # 80005ec4 <_Z8printIntiii>
    80005140:	00004517          	auipc	a0,0x4
    80005144:	fc050513          	addi	a0,a0,-64 # 80009100 <CONSOLE_STATUS+0xf0>
    80005148:	00001097          	auipc	ra,0x1
    8000514c:	be4080e7          	jalr	-1052(ra) # 80005d2c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005150:	0014849b          	addiw	s1,s1,1
    80005154:	0ff4f493          	andi	s1,s1,255
    80005158:	00c00793          	li	a5,12
    8000515c:	fc97f0e3          	bgeu	a5,s1,8000511c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80005160:	00004517          	auipc	a0,0x4
    80005164:	34850513          	addi	a0,a0,840 # 800094a8 <CONSOLE_STATUS+0x498>
    80005168:	00001097          	auipc	ra,0x1
    8000516c:	bc4080e7          	jalr	-1084(ra) # 80005d2c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005170:	00500313          	li	t1,5
    thread_dispatch();
    80005174:	ffffc097          	auipc	ra,0xffffc
    80005178:	1c0080e7          	jalr	448(ra) # 80001334 <thread_dispatch>

    uint64 result = fibonacci(16);
    8000517c:	01000513          	li	a0,16
    80005180:	00000097          	auipc	ra,0x0
    80005184:	be8080e7          	jalr	-1048(ra) # 80004d68 <_ZL9fibonaccim>
    80005188:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000518c:	00004517          	auipc	a0,0x4
    80005190:	32c50513          	addi	a0,a0,812 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80005194:	00001097          	auipc	ra,0x1
    80005198:	b98080e7          	jalr	-1128(ra) # 80005d2c <_Z11printStringPKc>
    8000519c:	00000613          	li	a2,0
    800051a0:	00a00593          	li	a1,10
    800051a4:	0009051b          	sext.w	a0,s2
    800051a8:	00001097          	auipc	ra,0x1
    800051ac:	d1c080e7          	jalr	-740(ra) # 80005ec4 <_Z8printIntiii>
    800051b0:	00004517          	auipc	a0,0x4
    800051b4:	f5050513          	addi	a0,a0,-176 # 80009100 <CONSOLE_STATUS+0xf0>
    800051b8:	00001097          	auipc	ra,0x1
    800051bc:	b74080e7          	jalr	-1164(ra) # 80005d2c <_Z11printStringPKc>
    800051c0:	0400006f          	j	80005200 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800051c4:	00004517          	auipc	a0,0x4
    800051c8:	2dc50513          	addi	a0,a0,732 # 800094a0 <CONSOLE_STATUS+0x490>
    800051cc:	00001097          	auipc	ra,0x1
    800051d0:	b60080e7          	jalr	-1184(ra) # 80005d2c <_Z11printStringPKc>
    800051d4:	00000613          	li	a2,0
    800051d8:	00a00593          	li	a1,10
    800051dc:	00048513          	mv	a0,s1
    800051e0:	00001097          	auipc	ra,0x1
    800051e4:	ce4080e7          	jalr	-796(ra) # 80005ec4 <_Z8printIntiii>
    800051e8:	00004517          	auipc	a0,0x4
    800051ec:	f1850513          	addi	a0,a0,-232 # 80009100 <CONSOLE_STATUS+0xf0>
    800051f0:	00001097          	auipc	ra,0x1
    800051f4:	b3c080e7          	jalr	-1220(ra) # 80005d2c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800051f8:	0014849b          	addiw	s1,s1,1
    800051fc:	0ff4f493          	andi	s1,s1,255
    80005200:	00f00793          	li	a5,15
    80005204:	fc97f0e3          	bgeu	a5,s1,800051c4 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    thread_dispatch();
    80005208:	ffffc097          	auipc	ra,0xffffc
    8000520c:	12c080e7          	jalr	300(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    80005210:	00004517          	auipc	a0,0x4
    80005214:	2b850513          	addi	a0,a0,696 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80005218:	00001097          	auipc	ra,0x1
    8000521c:	b14080e7          	jalr	-1260(ra) # 80005d2c <_Z11printStringPKc>
    finishedD = true;
    80005220:	00100793          	li	a5,1
    80005224:	0000b717          	auipc	a4,0xb
    80005228:	aaf70fa3          	sb	a5,-1345(a4) # 8000fce3 <_ZL9finishedD>
}
    8000522c:	01813083          	ld	ra,24(sp)
    80005230:	01013403          	ld	s0,16(sp)
    80005234:	00813483          	ld	s1,8(sp)
    80005238:	00013903          	ld	s2,0(sp)
    8000523c:	02010113          	addi	sp,sp,32
    80005240:	00008067          	ret

0000000080005244 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80005244:	fc010113          	addi	sp,sp,-64
    80005248:	02113c23          	sd	ra,56(sp)
    8000524c:	02813823          	sd	s0,48(sp)
    80005250:	02913423          	sd	s1,40(sp)
    80005254:	03213023          	sd	s2,32(sp)
    80005258:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    //Riscv::printString("Got here\n");
    threads[0] = new WorkerA();
    8000525c:	01000513          	li	a0,16
    80005260:	ffffe097          	auipc	ra,0xffffe
    80005264:	4c4080e7          	jalr	1220(ra) # 80003724 <_Znwm>
    80005268:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    8000526c:	ffffe097          	auipc	ra,0xffffe
    80005270:	688080e7          	jalr	1672(ra) # 800038f4 <_ZN6ThreadC1Ev>
    80005274:	00007797          	auipc	a5,0x7
    80005278:	83c78793          	addi	a5,a5,-1988 # 8000bab0 <_ZTV7WorkerA+0x10>
    8000527c:	00f4b023          	sd	a5,0(s1)
    80005280:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80005284:	00004517          	auipc	a0,0x4
    80005288:	25450513          	addi	a0,a0,596 # 800094d8 <CONSOLE_STATUS+0x4c8>
    8000528c:	00001097          	auipc	ra,0x1
    80005290:	aa0080e7          	jalr	-1376(ra) # 80005d2c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80005294:	01000513          	li	a0,16
    80005298:	ffffe097          	auipc	ra,0xffffe
    8000529c:	48c080e7          	jalr	1164(ra) # 80003724 <_Znwm>
    800052a0:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    800052a4:	ffffe097          	auipc	ra,0xffffe
    800052a8:	650080e7          	jalr	1616(ra) # 800038f4 <_ZN6ThreadC1Ev>
    800052ac:	00007797          	auipc	a5,0x7
    800052b0:	82c78793          	addi	a5,a5,-2004 # 8000bad8 <_ZTV7WorkerB+0x10>
    800052b4:	00f4b023          	sd	a5,0(s1)
    800052b8:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800052bc:	00004517          	auipc	a0,0x4
    800052c0:	23450513          	addi	a0,a0,564 # 800094f0 <CONSOLE_STATUS+0x4e0>
    800052c4:	00001097          	auipc	ra,0x1
    800052c8:	a68080e7          	jalr	-1432(ra) # 80005d2c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800052cc:	01000513          	li	a0,16
    800052d0:	ffffe097          	auipc	ra,0xffffe
    800052d4:	454080e7          	jalr	1108(ra) # 80003724 <_Znwm>
    800052d8:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    800052dc:	ffffe097          	auipc	ra,0xffffe
    800052e0:	618080e7          	jalr	1560(ra) # 800038f4 <_ZN6ThreadC1Ev>
    800052e4:	00007797          	auipc	a5,0x7
    800052e8:	81c78793          	addi	a5,a5,-2020 # 8000bb00 <_ZTV7WorkerC+0x10>
    800052ec:	00f4b023          	sd	a5,0(s1)
    800052f0:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800052f4:	00004517          	auipc	a0,0x4
    800052f8:	21450513          	addi	a0,a0,532 # 80009508 <CONSOLE_STATUS+0x4f8>
    800052fc:	00001097          	auipc	ra,0x1
    80005300:	a30080e7          	jalr	-1488(ra) # 80005d2c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80005304:	01000513          	li	a0,16
    80005308:	ffffe097          	auipc	ra,0xffffe
    8000530c:	41c080e7          	jalr	1052(ra) # 80003724 <_Znwm>
    80005310:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80005314:	ffffe097          	auipc	ra,0xffffe
    80005318:	5e0080e7          	jalr	1504(ra) # 800038f4 <_ZN6ThreadC1Ev>
    8000531c:	00007797          	auipc	a5,0x7
    80005320:	80c78793          	addi	a5,a5,-2036 # 8000bb28 <_ZTV7WorkerD+0x10>
    80005324:	00f4b023          	sd	a5,0(s1)
    80005328:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000532c:	00004517          	auipc	a0,0x4
    80005330:	1f450513          	addi	a0,a0,500 # 80009520 <CONSOLE_STATUS+0x510>
    80005334:	00001097          	auipc	ra,0x1
    80005338:	9f8080e7          	jalr	-1544(ra) # 80005d2c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000533c:	00000493          	li	s1,0
    80005340:	00300793          	li	a5,3
    80005344:	0297c663          	blt	a5,s1,80005370 <_Z20Threads_CPP_API_testv+0x12c>
        //Riscv::printString("Starting...\n");
        threads[i]->start();
    80005348:	00349793          	slli	a5,s1,0x3
    8000534c:	fe040713          	addi	a4,s0,-32
    80005350:	00f707b3          	add	a5,a4,a5
    80005354:	fe07b503          	ld	a0,-32(a5)
    80005358:	ffffe097          	auipc	ra,0xffffe
    8000535c:	49c080e7          	jalr	1180(ra) # 800037f4 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80005360:	0014849b          	addiw	s1,s1,1
    80005364:	fddff06f          	j	80005340 <_Z20Threads_CPP_API_testv+0xfc>
    }

    //Riscv::printString("Thread started\n");
    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80005368:	ffffe097          	auipc	ra,0xffffe
    8000536c:	4c4080e7          	jalr	1220(ra) # 8000382c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005370:	0000b797          	auipc	a5,0xb
    80005374:	9707c783          	lbu	a5,-1680(a5) # 8000fce0 <_ZL9finishedA>
    80005378:	fe0788e3          	beqz	a5,80005368 <_Z20Threads_CPP_API_testv+0x124>
    8000537c:	0000b797          	auipc	a5,0xb
    80005380:	9657c783          	lbu	a5,-1691(a5) # 8000fce1 <_ZL9finishedB>
    80005384:	fe0782e3          	beqz	a5,80005368 <_Z20Threads_CPP_API_testv+0x124>
    80005388:	0000b797          	auipc	a5,0xb
    8000538c:	95a7c783          	lbu	a5,-1702(a5) # 8000fce2 <_ZL9finishedC>
    80005390:	fc078ce3          	beqz	a5,80005368 <_Z20Threads_CPP_API_testv+0x124>
    80005394:	0000b797          	auipc	a5,0xb
    80005398:	94f7c783          	lbu	a5,-1713(a5) # 8000fce3 <_ZL9finishedD>
    8000539c:	fc0786e3          	beqz	a5,80005368 <_Z20Threads_CPP_API_testv+0x124>
        //Riscv::printString("main\n");
    }
    for (auto thread: threads) { delete thread; }
    800053a0:	fc040493          	addi	s1,s0,-64
    800053a4:	0080006f          	j	800053ac <_Z20Threads_CPP_API_testv+0x168>
    800053a8:	00848493          	addi	s1,s1,8
    800053ac:	fe040793          	addi	a5,s0,-32
    800053b0:	08f48663          	beq	s1,a5,8000543c <_Z20Threads_CPP_API_testv+0x1f8>
    800053b4:	0004b503          	ld	a0,0(s1)
    800053b8:	fe0508e3          	beqz	a0,800053a8 <_Z20Threads_CPP_API_testv+0x164>
    800053bc:	00053783          	ld	a5,0(a0)
    800053c0:	0087b783          	ld	a5,8(a5)
    800053c4:	000780e7          	jalr	a5
    800053c8:	fe1ff06f          	j	800053a8 <_Z20Threads_CPP_API_testv+0x164>
    800053cc:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800053d0:	00048513          	mv	a0,s1
    800053d4:	ffffe097          	auipc	ra,0xffffe
    800053d8:	378080e7          	jalr	888(ra) # 8000374c <_ZdlPv>
    800053dc:	00090513          	mv	a0,s2
    800053e0:	0000c097          	auipc	ra,0xc
    800053e4:	9e8080e7          	jalr	-1560(ra) # 80010dc8 <_Unwind_Resume>
    800053e8:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800053ec:	00048513          	mv	a0,s1
    800053f0:	ffffe097          	auipc	ra,0xffffe
    800053f4:	35c080e7          	jalr	860(ra) # 8000374c <_ZdlPv>
    800053f8:	00090513          	mv	a0,s2
    800053fc:	0000c097          	auipc	ra,0xc
    80005400:	9cc080e7          	jalr	-1588(ra) # 80010dc8 <_Unwind_Resume>
    80005404:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80005408:	00048513          	mv	a0,s1
    8000540c:	ffffe097          	auipc	ra,0xffffe
    80005410:	340080e7          	jalr	832(ra) # 8000374c <_ZdlPv>
    80005414:	00090513          	mv	a0,s2
    80005418:	0000c097          	auipc	ra,0xc
    8000541c:	9b0080e7          	jalr	-1616(ra) # 80010dc8 <_Unwind_Resume>
    80005420:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80005424:	00048513          	mv	a0,s1
    80005428:	ffffe097          	auipc	ra,0xffffe
    8000542c:	324080e7          	jalr	804(ra) # 8000374c <_ZdlPv>
    80005430:	00090513          	mv	a0,s2
    80005434:	0000c097          	auipc	ra,0xc
    80005438:	994080e7          	jalr	-1644(ra) # 80010dc8 <_Unwind_Resume>
    8000543c:	03813083          	ld	ra,56(sp)
    80005440:	03013403          	ld	s0,48(sp)
    80005444:	02813483          	ld	s1,40(sp)
    80005448:	02013903          	ld	s2,32(sp)
    8000544c:	04010113          	addi	sp,sp,64
    80005450:	00008067          	ret

0000000080005454 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80005454:	ff010113          	addi	sp,sp,-16
    80005458:	00113423          	sd	ra,8(sp)
    8000545c:	00813023          	sd	s0,0(sp)
    80005460:	01010413          	addi	s0,sp,16
    80005464:	00006797          	auipc	a5,0x6
    80005468:	64c78793          	addi	a5,a5,1612 # 8000bab0 <_ZTV7WorkerA+0x10>
    8000546c:	00f53023          	sd	a5,0(a0)
    80005470:	ffffe097          	auipc	ra,0xffffe
    80005474:	244080e7          	jalr	580(ra) # 800036b4 <_ZN6ThreadD1Ev>
    80005478:	00813083          	ld	ra,8(sp)
    8000547c:	00013403          	ld	s0,0(sp)
    80005480:	01010113          	addi	sp,sp,16
    80005484:	00008067          	ret

0000000080005488 <_ZN7WorkerAD0Ev>:
    80005488:	fe010113          	addi	sp,sp,-32
    8000548c:	00113c23          	sd	ra,24(sp)
    80005490:	00813823          	sd	s0,16(sp)
    80005494:	00913423          	sd	s1,8(sp)
    80005498:	02010413          	addi	s0,sp,32
    8000549c:	00050493          	mv	s1,a0
    800054a0:	00006797          	auipc	a5,0x6
    800054a4:	61078793          	addi	a5,a5,1552 # 8000bab0 <_ZTV7WorkerA+0x10>
    800054a8:	00f53023          	sd	a5,0(a0)
    800054ac:	ffffe097          	auipc	ra,0xffffe
    800054b0:	208080e7          	jalr	520(ra) # 800036b4 <_ZN6ThreadD1Ev>
    800054b4:	00048513          	mv	a0,s1
    800054b8:	ffffe097          	auipc	ra,0xffffe
    800054bc:	294080e7          	jalr	660(ra) # 8000374c <_ZdlPv>
    800054c0:	01813083          	ld	ra,24(sp)
    800054c4:	01013403          	ld	s0,16(sp)
    800054c8:	00813483          	ld	s1,8(sp)
    800054cc:	02010113          	addi	sp,sp,32
    800054d0:	00008067          	ret

00000000800054d4 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800054d4:	ff010113          	addi	sp,sp,-16
    800054d8:	00113423          	sd	ra,8(sp)
    800054dc:	00813023          	sd	s0,0(sp)
    800054e0:	01010413          	addi	s0,sp,16
    800054e4:	00006797          	auipc	a5,0x6
    800054e8:	5f478793          	addi	a5,a5,1524 # 8000bad8 <_ZTV7WorkerB+0x10>
    800054ec:	00f53023          	sd	a5,0(a0)
    800054f0:	ffffe097          	auipc	ra,0xffffe
    800054f4:	1c4080e7          	jalr	452(ra) # 800036b4 <_ZN6ThreadD1Ev>
    800054f8:	00813083          	ld	ra,8(sp)
    800054fc:	00013403          	ld	s0,0(sp)
    80005500:	01010113          	addi	sp,sp,16
    80005504:	00008067          	ret

0000000080005508 <_ZN7WorkerBD0Ev>:
    80005508:	fe010113          	addi	sp,sp,-32
    8000550c:	00113c23          	sd	ra,24(sp)
    80005510:	00813823          	sd	s0,16(sp)
    80005514:	00913423          	sd	s1,8(sp)
    80005518:	02010413          	addi	s0,sp,32
    8000551c:	00050493          	mv	s1,a0
    80005520:	00006797          	auipc	a5,0x6
    80005524:	5b878793          	addi	a5,a5,1464 # 8000bad8 <_ZTV7WorkerB+0x10>
    80005528:	00f53023          	sd	a5,0(a0)
    8000552c:	ffffe097          	auipc	ra,0xffffe
    80005530:	188080e7          	jalr	392(ra) # 800036b4 <_ZN6ThreadD1Ev>
    80005534:	00048513          	mv	a0,s1
    80005538:	ffffe097          	auipc	ra,0xffffe
    8000553c:	214080e7          	jalr	532(ra) # 8000374c <_ZdlPv>
    80005540:	01813083          	ld	ra,24(sp)
    80005544:	01013403          	ld	s0,16(sp)
    80005548:	00813483          	ld	s1,8(sp)
    8000554c:	02010113          	addi	sp,sp,32
    80005550:	00008067          	ret

0000000080005554 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80005554:	ff010113          	addi	sp,sp,-16
    80005558:	00113423          	sd	ra,8(sp)
    8000555c:	00813023          	sd	s0,0(sp)
    80005560:	01010413          	addi	s0,sp,16
    80005564:	00006797          	auipc	a5,0x6
    80005568:	59c78793          	addi	a5,a5,1436 # 8000bb00 <_ZTV7WorkerC+0x10>
    8000556c:	00f53023          	sd	a5,0(a0)
    80005570:	ffffe097          	auipc	ra,0xffffe
    80005574:	144080e7          	jalr	324(ra) # 800036b4 <_ZN6ThreadD1Ev>
    80005578:	00813083          	ld	ra,8(sp)
    8000557c:	00013403          	ld	s0,0(sp)
    80005580:	01010113          	addi	sp,sp,16
    80005584:	00008067          	ret

0000000080005588 <_ZN7WorkerCD0Ev>:
    80005588:	fe010113          	addi	sp,sp,-32
    8000558c:	00113c23          	sd	ra,24(sp)
    80005590:	00813823          	sd	s0,16(sp)
    80005594:	00913423          	sd	s1,8(sp)
    80005598:	02010413          	addi	s0,sp,32
    8000559c:	00050493          	mv	s1,a0
    800055a0:	00006797          	auipc	a5,0x6
    800055a4:	56078793          	addi	a5,a5,1376 # 8000bb00 <_ZTV7WorkerC+0x10>
    800055a8:	00f53023          	sd	a5,0(a0)
    800055ac:	ffffe097          	auipc	ra,0xffffe
    800055b0:	108080e7          	jalr	264(ra) # 800036b4 <_ZN6ThreadD1Ev>
    800055b4:	00048513          	mv	a0,s1
    800055b8:	ffffe097          	auipc	ra,0xffffe
    800055bc:	194080e7          	jalr	404(ra) # 8000374c <_ZdlPv>
    800055c0:	01813083          	ld	ra,24(sp)
    800055c4:	01013403          	ld	s0,16(sp)
    800055c8:	00813483          	ld	s1,8(sp)
    800055cc:	02010113          	addi	sp,sp,32
    800055d0:	00008067          	ret

00000000800055d4 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800055d4:	ff010113          	addi	sp,sp,-16
    800055d8:	00113423          	sd	ra,8(sp)
    800055dc:	00813023          	sd	s0,0(sp)
    800055e0:	01010413          	addi	s0,sp,16
    800055e4:	00006797          	auipc	a5,0x6
    800055e8:	54478793          	addi	a5,a5,1348 # 8000bb28 <_ZTV7WorkerD+0x10>
    800055ec:	00f53023          	sd	a5,0(a0)
    800055f0:	ffffe097          	auipc	ra,0xffffe
    800055f4:	0c4080e7          	jalr	196(ra) # 800036b4 <_ZN6ThreadD1Ev>
    800055f8:	00813083          	ld	ra,8(sp)
    800055fc:	00013403          	ld	s0,0(sp)
    80005600:	01010113          	addi	sp,sp,16
    80005604:	00008067          	ret

0000000080005608 <_ZN7WorkerDD0Ev>:
    80005608:	fe010113          	addi	sp,sp,-32
    8000560c:	00113c23          	sd	ra,24(sp)
    80005610:	00813823          	sd	s0,16(sp)
    80005614:	00913423          	sd	s1,8(sp)
    80005618:	02010413          	addi	s0,sp,32
    8000561c:	00050493          	mv	s1,a0
    80005620:	00006797          	auipc	a5,0x6
    80005624:	50878793          	addi	a5,a5,1288 # 8000bb28 <_ZTV7WorkerD+0x10>
    80005628:	00f53023          	sd	a5,0(a0)
    8000562c:	ffffe097          	auipc	ra,0xffffe
    80005630:	088080e7          	jalr	136(ra) # 800036b4 <_ZN6ThreadD1Ev>
    80005634:	00048513          	mv	a0,s1
    80005638:	ffffe097          	auipc	ra,0xffffe
    8000563c:	114080e7          	jalr	276(ra) # 8000374c <_ZdlPv>
    80005640:	01813083          	ld	ra,24(sp)
    80005644:	01013403          	ld	s0,16(sp)
    80005648:	00813483          	ld	s1,8(sp)
    8000564c:	02010113          	addi	sp,sp,32
    80005650:	00008067          	ret

0000000080005654 <_ZN7WorkerA3runEv>:
    void run() override {
    80005654:	ff010113          	addi	sp,sp,-16
    80005658:	00113423          	sd	ra,8(sp)
    8000565c:	00813023          	sd	s0,0(sp)
    80005660:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80005664:	00000593          	li	a1,0
    80005668:	fffff097          	auipc	ra,0xfffff
    8000566c:	774080e7          	jalr	1908(ra) # 80004ddc <_ZN7WorkerA11workerBodyAEPv>
    }
    80005670:	00813083          	ld	ra,8(sp)
    80005674:	00013403          	ld	s0,0(sp)
    80005678:	01010113          	addi	sp,sp,16
    8000567c:	00008067          	ret

0000000080005680 <_ZN7WorkerB3runEv>:
    void run() override {
    80005680:	ff010113          	addi	sp,sp,-16
    80005684:	00113423          	sd	ra,8(sp)
    80005688:	00813023          	sd	s0,0(sp)
    8000568c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80005690:	00000593          	li	a1,0
    80005694:	00000097          	auipc	ra,0x0
    80005698:	814080e7          	jalr	-2028(ra) # 80004ea8 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000569c:	00813083          	ld	ra,8(sp)
    800056a0:	00013403          	ld	s0,0(sp)
    800056a4:	01010113          	addi	sp,sp,16
    800056a8:	00008067          	ret

00000000800056ac <_ZN7WorkerC3runEv>:
    void run() override {
    800056ac:	ff010113          	addi	sp,sp,-16
    800056b0:	00113423          	sd	ra,8(sp)
    800056b4:	00813023          	sd	s0,0(sp)
    800056b8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800056bc:	00000593          	li	a1,0
    800056c0:	00000097          	auipc	ra,0x0
    800056c4:	8bc080e7          	jalr	-1860(ra) # 80004f7c <_ZN7WorkerC11workerBodyCEPv>
    }
    800056c8:	00813083          	ld	ra,8(sp)
    800056cc:	00013403          	ld	s0,0(sp)
    800056d0:	01010113          	addi	sp,sp,16
    800056d4:	00008067          	ret

00000000800056d8 <_ZN7WorkerD3runEv>:

    void run() override {
    800056d8:	ff010113          	addi	sp,sp,-16
    800056dc:	00113423          	sd	ra,8(sp)
    800056e0:	00813023          	sd	s0,0(sp)
    800056e4:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800056e8:	00000593          	li	a1,0
    800056ec:	00000097          	auipc	ra,0x0
    800056f0:	a10080e7          	jalr	-1520(ra) # 800050fc <_ZN7WorkerD11workerBodyDEPv>
    }
    800056f4:	00813083          	ld	ra,8(sp)
    800056f8:	00013403          	ld	s0,0(sp)
    800056fc:	01010113          	addi	sp,sp,16
    80005700:	00008067          	ret

0000000080005704 <_Z11workerBodyAPv>:
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg)
{
    80005704:	fe010113          	addi	sp,sp,-32
    80005708:	00113c23          	sd	ra,24(sp)
    8000570c:	00813823          	sd	s0,16(sp)
    80005710:	00913423          	sd	s1,8(sp)
    80005714:	01213023          	sd	s2,0(sp)
    80005718:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    8000571c:	00000913          	li	s2,0
    80005720:	0380006f          	j	80005758 <_Z11workerBodyAPv+0x54>
    {
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005724:	ffffc097          	auipc	ra,0xffffc
    80005728:	c10080e7          	jalr	-1008(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    8000572c:	00148493          	addi	s1,s1,1
    80005730:	000027b7          	lui	a5,0x2
    80005734:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005738:	0097ee63          	bltu	a5,s1,80005754 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000573c:	00000713          	li	a4,0
    80005740:	000077b7          	lui	a5,0x7
    80005744:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005748:	fce7eee3          	bltu	a5,a4,80005724 <_Z11workerBodyAPv+0x20>
    8000574c:	00170713          	addi	a4,a4,1
    80005750:	ff1ff06f          	j	80005740 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++)
    80005754:	00190913          	addi	s2,s2,1
    80005758:	00900793          	li	a5,9
    8000575c:	0527e063          	bltu	a5,s2,8000579c <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005760:	00004517          	auipc	a0,0x4
    80005764:	cd050513          	addi	a0,a0,-816 # 80009430 <CONSOLE_STATUS+0x420>
    80005768:	00000097          	auipc	ra,0x0
    8000576c:	5c4080e7          	jalr	1476(ra) # 80005d2c <_Z11printStringPKc>
    80005770:	00000613          	li	a2,0
    80005774:	00a00593          	li	a1,10
    80005778:	0009051b          	sext.w	a0,s2
    8000577c:	00000097          	auipc	ra,0x0
    80005780:	748080e7          	jalr	1864(ra) # 80005ec4 <_Z8printIntiii>
    80005784:	00004517          	auipc	a0,0x4
    80005788:	97c50513          	addi	a0,a0,-1668 # 80009100 <CONSOLE_STATUS+0xf0>
    8000578c:	00000097          	auipc	ra,0x0
    80005790:	5a0080e7          	jalr	1440(ra) # 80005d2c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80005794:	00000493          	li	s1,0
    80005798:	f99ff06f          	j	80005730 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    8000579c:	00004517          	auipc	a0,0x4
    800057a0:	c9c50513          	addi	a0,a0,-868 # 80009438 <CONSOLE_STATUS+0x428>
    800057a4:	00000097          	auipc	ra,0x0
    800057a8:	588080e7          	jalr	1416(ra) # 80005d2c <_Z11printStringPKc>
    finishedA = true;
    800057ac:	00100793          	li	a5,1
    800057b0:	0000a717          	auipc	a4,0xa
    800057b4:	52f70a23          	sb	a5,1332(a4) # 8000fce4 <_ZL9finishedA>
}
    800057b8:	01813083          	ld	ra,24(sp)
    800057bc:	01013403          	ld	s0,16(sp)
    800057c0:	00813483          	ld	s1,8(sp)
    800057c4:	00013903          	ld	s2,0(sp)
    800057c8:	02010113          	addi	sp,sp,32
    800057cc:	00008067          	ret

00000000800057d0 <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    800057d0:	fe010113          	addi	sp,sp,-32
    800057d4:	00113c23          	sd	ra,24(sp)
    800057d8:	00813823          	sd	s0,16(sp)
    800057dc:	00913423          	sd	s1,8(sp)
    800057e0:	01213023          	sd	s2,0(sp)
    800057e4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800057e8:	00000913          	li	s2,0
    800057ec:	0380006f          	j	80005824 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800057f0:	ffffc097          	auipc	ra,0xffffc
    800057f4:	b44080e7          	jalr	-1212(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    800057f8:	00148493          	addi	s1,s1,1
    800057fc:	000027b7          	lui	a5,0x2
    80005800:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005804:	0097ee63          	bltu	a5,s1,80005820 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005808:	00000713          	li	a4,0
    8000580c:	000077b7          	lui	a5,0x7
    80005810:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005814:	fce7eee3          	bltu	a5,a4,800057f0 <_Z11workerBodyBPv+0x20>
    80005818:	00170713          	addi	a4,a4,1
    8000581c:	ff1ff06f          	j	8000580c <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005820:	00190913          	addi	s2,s2,1
    80005824:	00f00793          	li	a5,15
    80005828:	0527e063          	bltu	a5,s2,80005868 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000582c:	00004517          	auipc	a0,0x4
    80005830:	c1c50513          	addi	a0,a0,-996 # 80009448 <CONSOLE_STATUS+0x438>
    80005834:	00000097          	auipc	ra,0x0
    80005838:	4f8080e7          	jalr	1272(ra) # 80005d2c <_Z11printStringPKc>
    8000583c:	00000613          	li	a2,0
    80005840:	00a00593          	li	a1,10
    80005844:	0009051b          	sext.w	a0,s2
    80005848:	00000097          	auipc	ra,0x0
    8000584c:	67c080e7          	jalr	1660(ra) # 80005ec4 <_Z8printIntiii>
    80005850:	00004517          	auipc	a0,0x4
    80005854:	8b050513          	addi	a0,a0,-1872 # 80009100 <CONSOLE_STATUS+0xf0>
    80005858:	00000097          	auipc	ra,0x0
    8000585c:	4d4080e7          	jalr	1236(ra) # 80005d2c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80005860:	00000493          	li	s1,0
    80005864:	f99ff06f          	j	800057fc <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    80005868:	ffffc097          	auipc	ra,0xffffc
    8000586c:	acc080e7          	jalr	-1332(ra) # 80001334 <thread_dispatch>
    printString("B finished!\n");
    80005870:	00004517          	auipc	a0,0x4
    80005874:	be050513          	addi	a0,a0,-1056 # 80009450 <CONSOLE_STATUS+0x440>
    80005878:	00000097          	auipc	ra,0x0
    8000587c:	4b4080e7          	jalr	1204(ra) # 80005d2c <_Z11printStringPKc>
    finishedB = true;
    80005880:	00100793          	li	a5,1
    80005884:	0000a717          	auipc	a4,0xa
    80005888:	46f700a3          	sb	a5,1121(a4) # 8000fce5 <_ZL9finishedB>
}
    8000588c:	01813083          	ld	ra,24(sp)
    80005890:	01013403          	ld	s0,16(sp)
    80005894:	00813483          	ld	s1,8(sp)
    80005898:	00013903          	ld	s2,0(sp)
    8000589c:	02010113          	addi	sp,sp,32
    800058a0:	00008067          	ret

00000000800058a4 <_ZL9fibonaccim>:
{
    800058a4:	fe010113          	addi	sp,sp,-32
    800058a8:	00113c23          	sd	ra,24(sp)
    800058ac:	00813823          	sd	s0,16(sp)
    800058b0:	00913423          	sd	s1,8(sp)
    800058b4:	01213023          	sd	s2,0(sp)
    800058b8:	02010413          	addi	s0,sp,32
    800058bc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) {return n; }
    800058c0:	00100793          	li	a5,1
    800058c4:	02a7f863          	bgeu	a5,a0,800058f4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800058c8:	00a00793          	li	a5,10
    800058cc:	02f577b3          	remu	a5,a0,a5
    800058d0:	02078e63          	beqz	a5,8000590c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800058d4:	fff48513          	addi	a0,s1,-1
    800058d8:	00000097          	auipc	ra,0x0
    800058dc:	fcc080e7          	jalr	-52(ra) # 800058a4 <_ZL9fibonaccim>
    800058e0:	00050913          	mv	s2,a0
    800058e4:	ffe48513          	addi	a0,s1,-2
    800058e8:	00000097          	auipc	ra,0x0
    800058ec:	fbc080e7          	jalr	-68(ra) # 800058a4 <_ZL9fibonaccim>
    800058f0:	00a90533          	add	a0,s2,a0
}
    800058f4:	01813083          	ld	ra,24(sp)
    800058f8:	01013403          	ld	s0,16(sp)
    800058fc:	00813483          	ld	s1,8(sp)
    80005900:	00013903          	ld	s2,0(sp)
    80005904:	02010113          	addi	sp,sp,32
    80005908:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000590c:	ffffc097          	auipc	ra,0xffffc
    80005910:	a28080e7          	jalr	-1496(ra) # 80001334 <thread_dispatch>
    80005914:	fc1ff06f          	j	800058d4 <_ZL9fibonaccim+0x30>

0000000080005918 <_Z11workerBodyCPv>:

void workerBodyC(void* arg)
{
    80005918:	fe010113          	addi	sp,sp,-32
    8000591c:	00113c23          	sd	ra,24(sp)
    80005920:	00813823          	sd	s0,16(sp)
    80005924:	00913423          	sd	s1,8(sp)
    80005928:	01213023          	sd	s2,0(sp)
    8000592c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005930:	00000493          	li	s1,0
    80005934:	0400006f          	j	80005974 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i="); printInt(i); printString("\n");
    80005938:	00004517          	auipc	a0,0x4
    8000593c:	b2850513          	addi	a0,a0,-1240 # 80009460 <CONSOLE_STATUS+0x450>
    80005940:	00000097          	auipc	ra,0x0
    80005944:	3ec080e7          	jalr	1004(ra) # 80005d2c <_Z11printStringPKc>
    80005948:	00000613          	li	a2,0
    8000594c:	00a00593          	li	a1,10
    80005950:	00048513          	mv	a0,s1
    80005954:	00000097          	auipc	ra,0x0
    80005958:	570080e7          	jalr	1392(ra) # 80005ec4 <_Z8printIntiii>
    8000595c:	00003517          	auipc	a0,0x3
    80005960:	7a450513          	addi	a0,a0,1956 # 80009100 <CONSOLE_STATUS+0xf0>
    80005964:	00000097          	auipc	ra,0x0
    80005968:	3c8080e7          	jalr	968(ra) # 80005d2c <_Z11printStringPKc>
    for (; i < 3; i++)
    8000596c:	0014849b          	addiw	s1,s1,1
    80005970:	0ff4f493          	andi	s1,s1,255
    80005974:	00200793          	li	a5,2
    80005978:	fc97f0e3          	bgeu	a5,s1,80005938 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    8000597c:	00004517          	auipc	a0,0x4
    80005980:	aec50513          	addi	a0,a0,-1300 # 80009468 <CONSOLE_STATUS+0x458>
    80005984:	00000097          	auipc	ra,0x0
    80005988:	3a8080e7          	jalr	936(ra) # 80005d2c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000598c:	00700313          	li	t1,7
    thread_dispatch();
    80005990:	ffffc097          	auipc	ra,0xffffc
    80005994:	9a4080e7          	jalr	-1628(ra) # 80001334 <thread_dispatch>
    printString("C: returned\n");
    80005998:	00004517          	auipc	a0,0x4
    8000599c:	ba050513          	addi	a0,a0,-1120 # 80009538 <CONSOLE_STATUS+0x528>
    800059a0:	00000097          	auipc	ra,0x0
    800059a4:	38c080e7          	jalr	908(ra) # 80005d2c <_Z11printStringPKc>
    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800059a8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800059ac:	00004517          	auipc	a0,0x4
    800059b0:	acc50513          	addi	a0,a0,-1332 # 80009478 <CONSOLE_STATUS+0x468>
    800059b4:	00000097          	auipc	ra,0x0
    800059b8:	378080e7          	jalr	888(ra) # 80005d2c <_Z11printStringPKc>
    800059bc:	00000613          	li	a2,0
    800059c0:	00a00593          	li	a1,10
    800059c4:	0009051b          	sext.w	a0,s2
    800059c8:	00000097          	auipc	ra,0x0
    800059cc:	4fc080e7          	jalr	1276(ra) # 80005ec4 <_Z8printIntiii>
    800059d0:	00003517          	auipc	a0,0x3
    800059d4:	73050513          	addi	a0,a0,1840 # 80009100 <CONSOLE_STATUS+0xf0>
    800059d8:	00000097          	auipc	ra,0x0
    800059dc:	354080e7          	jalr	852(ra) # 80005d2c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800059e0:	00c00513          	li	a0,12
    800059e4:	00000097          	auipc	ra,0x0
    800059e8:	ec0080e7          	jalr	-320(ra) # 800058a4 <_ZL9fibonaccim>
    800059ec:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800059f0:	00004517          	auipc	a0,0x4
    800059f4:	a9050513          	addi	a0,a0,-1392 # 80009480 <CONSOLE_STATUS+0x470>
    800059f8:	00000097          	auipc	ra,0x0
    800059fc:	334080e7          	jalr	820(ra) # 80005d2c <_Z11printStringPKc>
    80005a00:	00000613          	li	a2,0
    80005a04:	00a00593          	li	a1,10
    80005a08:	0009051b          	sext.w	a0,s2
    80005a0c:	00000097          	auipc	ra,0x0
    80005a10:	4b8080e7          	jalr	1208(ra) # 80005ec4 <_Z8printIntiii>
    80005a14:	00003517          	auipc	a0,0x3
    80005a18:	6ec50513          	addi	a0,a0,1772 # 80009100 <CONSOLE_STATUS+0xf0>
    80005a1c:	00000097          	auipc	ra,0x0
    80005a20:	310080e7          	jalr	784(ra) # 80005d2c <_Z11printStringPKc>
    80005a24:	0400006f          	j	80005a64 <_Z11workerBodyCPv+0x14c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005a28:	00004517          	auipc	a0,0x4
    80005a2c:	a3850513          	addi	a0,a0,-1480 # 80009460 <CONSOLE_STATUS+0x450>
    80005a30:	00000097          	auipc	ra,0x0
    80005a34:	2fc080e7          	jalr	764(ra) # 80005d2c <_Z11printStringPKc>
    80005a38:	00000613          	li	a2,0
    80005a3c:	00a00593          	li	a1,10
    80005a40:	00048513          	mv	a0,s1
    80005a44:	00000097          	auipc	ra,0x0
    80005a48:	480080e7          	jalr	1152(ra) # 80005ec4 <_Z8printIntiii>
    80005a4c:	00003517          	auipc	a0,0x3
    80005a50:	6b450513          	addi	a0,a0,1716 # 80009100 <CONSOLE_STATUS+0xf0>
    80005a54:	00000097          	auipc	ra,0x0
    80005a58:	2d8080e7          	jalr	728(ra) # 80005d2c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005a5c:	0014849b          	addiw	s1,s1,1
    80005a60:	0ff4f493          	andi	s1,s1,255
    80005a64:	00500793          	li	a5,5
    80005a68:	fc97f0e3          	bgeu	a5,s1,80005a28 <_Z11workerBodyCPv+0x110>
    }

    thread_dispatch();
    80005a6c:	ffffc097          	auipc	ra,0xffffc
    80005a70:	8c8080e7          	jalr	-1848(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    80005a74:	00004517          	auipc	a0,0x4
    80005a78:	a1c50513          	addi	a0,a0,-1508 # 80009490 <CONSOLE_STATUS+0x480>
    80005a7c:	00000097          	auipc	ra,0x0
    80005a80:	2b0080e7          	jalr	688(ra) # 80005d2c <_Z11printStringPKc>
    finishedC = true;
    80005a84:	00100793          	li	a5,1
    80005a88:	0000a717          	auipc	a4,0xa
    80005a8c:	24f70f23          	sb	a5,606(a4) # 8000fce6 <_ZL9finishedC>
}
    80005a90:	01813083          	ld	ra,24(sp)
    80005a94:	01013403          	ld	s0,16(sp)
    80005a98:	00813483          	ld	s1,8(sp)
    80005a9c:	00013903          	ld	s2,0(sp)
    80005aa0:	02010113          	addi	sp,sp,32
    80005aa4:	00008067          	ret

0000000080005aa8 <_Z11workerBodyDPv>:

void workerBodyD(void* arg)
{
    80005aa8:	fe010113          	addi	sp,sp,-32
    80005aac:	00113c23          	sd	ra,24(sp)
    80005ab0:	00813823          	sd	s0,16(sp)
    80005ab4:	00913423          	sd	s1,8(sp)
    80005ab8:	01213023          	sd	s2,0(sp)
    80005abc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005ac0:	00a00493          	li	s1,10
    80005ac4:	0400006f          	j	80005b04 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005ac8:	00004517          	auipc	a0,0x4
    80005acc:	9d850513          	addi	a0,a0,-1576 # 800094a0 <CONSOLE_STATUS+0x490>
    80005ad0:	00000097          	auipc	ra,0x0
    80005ad4:	25c080e7          	jalr	604(ra) # 80005d2c <_Z11printStringPKc>
    80005ad8:	00000613          	li	a2,0
    80005adc:	00a00593          	li	a1,10
    80005ae0:	00048513          	mv	a0,s1
    80005ae4:	00000097          	auipc	ra,0x0
    80005ae8:	3e0080e7          	jalr	992(ra) # 80005ec4 <_Z8printIntiii>
    80005aec:	00003517          	auipc	a0,0x3
    80005af0:	61450513          	addi	a0,a0,1556 # 80009100 <CONSOLE_STATUS+0xf0>
    80005af4:	00000097          	auipc	ra,0x0
    80005af8:	238080e7          	jalr	568(ra) # 80005d2c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005afc:	0014849b          	addiw	s1,s1,1
    80005b00:	0ff4f493          	andi	s1,s1,255
    80005b04:	00c00793          	li	a5,12
    80005b08:	fc97f0e3          	bgeu	a5,s1,80005ac8 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005b0c:	00004517          	auipc	a0,0x4
    80005b10:	99c50513          	addi	a0,a0,-1636 # 800094a8 <CONSOLE_STATUS+0x498>
    80005b14:	00000097          	auipc	ra,0x0
    80005b18:	218080e7          	jalr	536(ra) # 80005d2c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005b1c:	00500313          	li	t1,5
    thread_dispatch();
    80005b20:	ffffc097          	auipc	ra,0xffffc
    80005b24:	814080e7          	jalr	-2028(ra) # 80001334 <thread_dispatch>
    printString("D: returned\n");
    80005b28:	00004517          	auipc	a0,0x4
    80005b2c:	a2050513          	addi	a0,a0,-1504 # 80009548 <CONSOLE_STATUS+0x538>
    80005b30:	00000097          	auipc	ra,0x0
    80005b34:	1fc080e7          	jalr	508(ra) # 80005d2c <_Z11printStringPKc>
    uint64 result = fibonacci(16);
    80005b38:	01000513          	li	a0,16
    80005b3c:	00000097          	auipc	ra,0x0
    80005b40:	d68080e7          	jalr	-664(ra) # 800058a4 <_ZL9fibonaccim>
    80005b44:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005b48:	00004517          	auipc	a0,0x4
    80005b4c:	97050513          	addi	a0,a0,-1680 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80005b50:	00000097          	auipc	ra,0x0
    80005b54:	1dc080e7          	jalr	476(ra) # 80005d2c <_Z11printStringPKc>
    80005b58:	00000613          	li	a2,0
    80005b5c:	00a00593          	li	a1,10
    80005b60:	0009051b          	sext.w	a0,s2
    80005b64:	00000097          	auipc	ra,0x0
    80005b68:	360080e7          	jalr	864(ra) # 80005ec4 <_Z8printIntiii>
    80005b6c:	00003517          	auipc	a0,0x3
    80005b70:	59450513          	addi	a0,a0,1428 # 80009100 <CONSOLE_STATUS+0xf0>
    80005b74:	00000097          	auipc	ra,0x0
    80005b78:	1b8080e7          	jalr	440(ra) # 80005d2c <_Z11printStringPKc>
    80005b7c:	0400006f          	j	80005bbc <_Z11workerBodyDPv+0x114>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005b80:	00004517          	auipc	a0,0x4
    80005b84:	92050513          	addi	a0,a0,-1760 # 800094a0 <CONSOLE_STATUS+0x490>
    80005b88:	00000097          	auipc	ra,0x0
    80005b8c:	1a4080e7          	jalr	420(ra) # 80005d2c <_Z11printStringPKc>
    80005b90:	00000613          	li	a2,0
    80005b94:	00a00593          	li	a1,10
    80005b98:	00048513          	mv	a0,s1
    80005b9c:	00000097          	auipc	ra,0x0
    80005ba0:	328080e7          	jalr	808(ra) # 80005ec4 <_Z8printIntiii>
    80005ba4:	00003517          	auipc	a0,0x3
    80005ba8:	55c50513          	addi	a0,a0,1372 # 80009100 <CONSOLE_STATUS+0xf0>
    80005bac:	00000097          	auipc	ra,0x0
    80005bb0:	180080e7          	jalr	384(ra) # 80005d2c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005bb4:	0014849b          	addiw	s1,s1,1
    80005bb8:	0ff4f493          	andi	s1,s1,255
    80005bbc:	00f00793          	li	a5,15
    80005bc0:	fc97f0e3          	bgeu	a5,s1,80005b80 <_Z11workerBodyDPv+0xd8>
    }

    thread_dispatch();
    80005bc4:	ffffb097          	auipc	ra,0xffffb
    80005bc8:	770080e7          	jalr	1904(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    80005bcc:	00004517          	auipc	a0,0x4
    80005bd0:	8fc50513          	addi	a0,a0,-1796 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80005bd4:	00000097          	auipc	ra,0x0
    80005bd8:	158080e7          	jalr	344(ra) # 80005d2c <_Z11printStringPKc>
    finishedD = true;
    80005bdc:	00100793          	li	a5,1
    80005be0:	0000a717          	auipc	a4,0xa
    80005be4:	10f703a3          	sb	a5,263(a4) # 8000fce7 <_ZL9finishedD>
}
    80005be8:	01813083          	ld	ra,24(sp)
    80005bec:	01013403          	ld	s0,16(sp)
    80005bf0:	00813483          	ld	s1,8(sp)
    80005bf4:	00013903          	ld	s2,0(sp)
    80005bf8:	02010113          	addi	sp,sp,32
    80005bfc:	00008067          	ret

0000000080005c00 <_Z18Threads_C_API_testv>:


void Threads_C_API_test()
{
    80005c00:	fc010113          	addi	sp,sp,-64
    80005c04:	02113c23          	sd	ra,56(sp)
    80005c08:	02813823          	sd	s0,48(sp)
    80005c0c:	02913423          	sd	s1,40(sp)
    80005c10:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005c14:	00000613          	li	a2,0
    80005c18:	00000597          	auipc	a1,0x0
    80005c1c:	aec58593          	addi	a1,a1,-1300 # 80005704 <_Z11workerBodyAPv>
    80005c20:	fc040513          	addi	a0,s0,-64
    80005c24:	ffffb097          	auipc	ra,0xffffb
    80005c28:	690080e7          	jalr	1680(ra) # 800012b4 <thread_create>
    printString("ThreadA created\n");
    80005c2c:	00004517          	auipc	a0,0x4
    80005c30:	8ac50513          	addi	a0,a0,-1876 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80005c34:	00000097          	auipc	ra,0x0
    80005c38:	0f8080e7          	jalr	248(ra) # 80005d2c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005c3c:	00000613          	li	a2,0
    80005c40:	00000597          	auipc	a1,0x0
    80005c44:	b9058593          	addi	a1,a1,-1136 # 800057d0 <_Z11workerBodyBPv>
    80005c48:	fc840513          	addi	a0,s0,-56
    80005c4c:	ffffb097          	auipc	ra,0xffffb
    80005c50:	668080e7          	jalr	1640(ra) # 800012b4 <thread_create>
    printString("ThreadB created\n");
    80005c54:	00004517          	auipc	a0,0x4
    80005c58:	89c50513          	addi	a0,a0,-1892 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80005c5c:	00000097          	auipc	ra,0x0
    80005c60:	0d0080e7          	jalr	208(ra) # 80005d2c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005c64:	00000613          	li	a2,0
    80005c68:	00000597          	auipc	a1,0x0
    80005c6c:	cb058593          	addi	a1,a1,-848 # 80005918 <_Z11workerBodyCPv>
    80005c70:	fd040513          	addi	a0,s0,-48
    80005c74:	ffffb097          	auipc	ra,0xffffb
    80005c78:	640080e7          	jalr	1600(ra) # 800012b4 <thread_create>
    printString("ThreadC created\n");
    80005c7c:	00004517          	auipc	a0,0x4
    80005c80:	88c50513          	addi	a0,a0,-1908 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005c84:	00000097          	auipc	ra,0x0
    80005c88:	0a8080e7          	jalr	168(ra) # 80005d2c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005c8c:	00000613          	li	a2,0
    80005c90:	00000597          	auipc	a1,0x0
    80005c94:	e1858593          	addi	a1,a1,-488 # 80005aa8 <_Z11workerBodyDPv>
    80005c98:	fd840513          	addi	a0,s0,-40
    80005c9c:	ffffb097          	auipc	ra,0xffffb
    80005ca0:	618080e7          	jalr	1560(ra) # 800012b4 <thread_create>
    printString("ThreadD created\n");
    80005ca4:	00004517          	auipc	a0,0x4
    80005ca8:	87c50513          	addi	a0,a0,-1924 # 80009520 <CONSOLE_STATUS+0x510>
    80005cac:	00000097          	auipc	ra,0x0
    80005cb0:	080080e7          	jalr	128(ra) # 80005d2c <_Z11printStringPKc>
    80005cb4:	00c0006f          	j	80005cc0 <_Z18Threads_C_API_testv+0xc0>

    while (!finishedA || !finishedB || !finishedC || !finishedD)
    {
        //printString("Main thread\n");
        thread_dispatch();
    80005cb8:	ffffb097          	auipc	ra,0xffffb
    80005cbc:	67c080e7          	jalr	1660(ra) # 80001334 <thread_dispatch>
    while (!finishedA || !finishedB || !finishedC || !finishedD)
    80005cc0:	0000a797          	auipc	a5,0xa
    80005cc4:	0247c783          	lbu	a5,36(a5) # 8000fce4 <_ZL9finishedA>
    80005cc8:	fe0788e3          	beqz	a5,80005cb8 <_Z18Threads_C_API_testv+0xb8>
    80005ccc:	0000a797          	auipc	a5,0xa
    80005cd0:	0197c783          	lbu	a5,25(a5) # 8000fce5 <_ZL9finishedB>
    80005cd4:	fe0782e3          	beqz	a5,80005cb8 <_Z18Threads_C_API_testv+0xb8>
    80005cd8:	0000a797          	auipc	a5,0xa
    80005cdc:	00e7c783          	lbu	a5,14(a5) # 8000fce6 <_ZL9finishedC>
    80005ce0:	fc078ce3          	beqz	a5,80005cb8 <_Z18Threads_C_API_testv+0xb8>
    80005ce4:	0000a797          	auipc	a5,0xa
    80005ce8:	0037c783          	lbu	a5,3(a5) # 8000fce7 <_ZL9finishedD>
    80005cec:	fc0786e3          	beqz	a5,80005cb8 <_Z18Threads_C_API_testv+0xb8>
    }
    for (auto &thread: threads)
    80005cf0:	fc040493          	addi	s1,s0,-64
    80005cf4:	0080006f          	j	80005cfc <_Z18Threads_C_API_testv+0xfc>
    80005cf8:	00848493          	addi	s1,s1,8
    80005cfc:	fe040793          	addi	a5,s0,-32
    80005d00:	00f48c63          	beq	s1,a5,80005d18 <_Z18Threads_C_API_testv+0x118>
    {
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (uint64*)thread;
    80005d04:	0004b503          	ld	a0,0(s1)
    80005d08:	fe0508e3          	beqz	a0,80005cf8 <_Z18Threads_C_API_testv+0xf8>
    80005d0c:	ffffe097          	auipc	ra,0xffffe
    80005d10:	a40080e7          	jalr	-1472(ra) # 8000374c <_ZdlPv>
    80005d14:	fe5ff06f          	j	80005cf8 <_Z18Threads_C_API_testv+0xf8>
    }
}
    80005d18:	03813083          	ld	ra,56(sp)
    80005d1c:	03013403          	ld	s0,48(sp)
    80005d20:	02813483          	ld	s1,40(sp)
    80005d24:	04010113          	addi	sp,sp,64
    80005d28:	00008067          	ret

0000000080005d2c <_Z11printStringPKc>:
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string)
{
    80005d2c:	fe010113          	addi	sp,sp,-32
    80005d30:	00113c23          	sd	ra,24(sp)
    80005d34:	00813823          	sd	s0,16(sp)
    80005d38:	00913423          	sd	s1,8(sp)
    80005d3c:	02010413          	addi	s0,sp,32
    80005d40:	00050493          	mv	s1,a0
    LOCK();
    80005d44:	00100613          	li	a2,1
    80005d48:	00000593          	li	a1,0
    80005d4c:	0000a517          	auipc	a0,0xa
    80005d50:	f9c50513          	addi	a0,a0,-100 # 8000fce8 <lockPrint>
    80005d54:	ffffb097          	auipc	ra,0xffffb
    80005d58:	4c4080e7          	jalr	1220(ra) # 80001218 <copy_and_swap>
    80005d5c:	fe0514e3          	bnez	a0,80005d44 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80005d60:	0004c503          	lbu	a0,0(s1)
    80005d64:	00050a63          	beqz	a0,80005d78 <_Z11printStringPKc+0x4c>
        putc(*string);
    80005d68:	ffffb097          	auipc	ra,0xffffb
    80005d6c:	7d0080e7          	jalr	2000(ra) # 80001538 <putc>
        string++;
    80005d70:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005d74:	fedff06f          	j	80005d60 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005d78:	00000613          	li	a2,0
    80005d7c:	00100593          	li	a1,1
    80005d80:	0000a517          	auipc	a0,0xa
    80005d84:	f6850513          	addi	a0,a0,-152 # 8000fce8 <lockPrint>
    80005d88:	ffffb097          	auipc	ra,0xffffb
    80005d8c:	490080e7          	jalr	1168(ra) # 80001218 <copy_and_swap>
    80005d90:	fe0514e3          	bnez	a0,80005d78 <_Z11printStringPKc+0x4c>
}
    80005d94:	01813083          	ld	ra,24(sp)
    80005d98:	01013403          	ld	s0,16(sp)
    80005d9c:	00813483          	ld	s1,8(sp)
    80005da0:	02010113          	addi	sp,sp,32
    80005da4:	00008067          	ret

0000000080005da8 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005da8:	fd010113          	addi	sp,sp,-48
    80005dac:	02113423          	sd	ra,40(sp)
    80005db0:	02813023          	sd	s0,32(sp)
    80005db4:	00913c23          	sd	s1,24(sp)
    80005db8:	01213823          	sd	s2,16(sp)
    80005dbc:	01313423          	sd	s3,8(sp)
    80005dc0:	01413023          	sd	s4,0(sp)
    80005dc4:	03010413          	addi	s0,sp,48
    80005dc8:	00050993          	mv	s3,a0
    80005dcc:	00058a13          	mv	s4,a1
    LOCK();
    80005dd0:	00100613          	li	a2,1
    80005dd4:	00000593          	li	a1,0
    80005dd8:	0000a517          	auipc	a0,0xa
    80005ddc:	f1050513          	addi	a0,a0,-240 # 8000fce8 <lockPrint>
    80005de0:	ffffb097          	auipc	ra,0xffffb
    80005de4:	438080e7          	jalr	1080(ra) # 80001218 <copy_and_swap>
    80005de8:	fe0514e3          	bnez	a0,80005dd0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80005dec:	00000913          	li	s2,0
    80005df0:	00090493          	mv	s1,s2
    80005df4:	0019091b          	addiw	s2,s2,1
    80005df8:	03495a63          	bge	s2,s4,80005e2c <_Z9getStringPci+0x84>
        cc = getc();
    80005dfc:	ffffb097          	auipc	ra,0xffffb
    80005e00:	714080e7          	jalr	1812(ra) # 80001510 <getc>
        if (cc < 1)
    80005e04:	02050463          	beqz	a0,80005e2c <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005e08:	009984b3          	add	s1,s3,s1
    80005e0c:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80005e10:	00a00793          	li	a5,10
    80005e14:	00f50a63          	beq	a0,a5,80005e28 <_Z9getStringPci+0x80>
    80005e18:	00d00793          	li	a5,13
    80005e1c:	fcf51ae3          	bne	a0,a5,80005df0 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005e20:	00090493          	mv	s1,s2
    80005e24:	0080006f          	j	80005e2c <_Z9getStringPci+0x84>
    80005e28:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005e2c:	009984b3          	add	s1,s3,s1
    80005e30:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005e34:	00000613          	li	a2,0
    80005e38:	00100593          	li	a1,1
    80005e3c:	0000a517          	auipc	a0,0xa
    80005e40:	eac50513          	addi	a0,a0,-340 # 8000fce8 <lockPrint>
    80005e44:	ffffb097          	auipc	ra,0xffffb
    80005e48:	3d4080e7          	jalr	980(ra) # 80001218 <copy_and_swap>
    80005e4c:	fe0514e3          	bnez	a0,80005e34 <_Z9getStringPci+0x8c>
    return buf;
}
    80005e50:	00098513          	mv	a0,s3
    80005e54:	02813083          	ld	ra,40(sp)
    80005e58:	02013403          	ld	s0,32(sp)
    80005e5c:	01813483          	ld	s1,24(sp)
    80005e60:	01013903          	ld	s2,16(sp)
    80005e64:	00813983          	ld	s3,8(sp)
    80005e68:	00013a03          	ld	s4,0(sp)
    80005e6c:	03010113          	addi	sp,sp,48
    80005e70:	00008067          	ret

0000000080005e74 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005e74:	ff010113          	addi	sp,sp,-16
    80005e78:	00813423          	sd	s0,8(sp)
    80005e7c:	01010413          	addi	s0,sp,16
    80005e80:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005e84:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005e88:	0006c603          	lbu	a2,0(a3)
    80005e8c:	fd06071b          	addiw	a4,a2,-48
    80005e90:	0ff77713          	andi	a4,a4,255
    80005e94:	00900793          	li	a5,9
    80005e98:	02e7e063          	bltu	a5,a4,80005eb8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005e9c:	0025179b          	slliw	a5,a0,0x2
    80005ea0:	00a787bb          	addw	a5,a5,a0
    80005ea4:	0017979b          	slliw	a5,a5,0x1
    80005ea8:	00168693          	addi	a3,a3,1
    80005eac:	00c787bb          	addw	a5,a5,a2
    80005eb0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005eb4:	fd5ff06f          	j	80005e88 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005eb8:	00813403          	ld	s0,8(sp)
    80005ebc:	01010113          	addi	sp,sp,16
    80005ec0:	00008067          	ret

0000000080005ec4 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005ec4:	fc010113          	addi	sp,sp,-64
    80005ec8:	02113c23          	sd	ra,56(sp)
    80005ecc:	02813823          	sd	s0,48(sp)
    80005ed0:	02913423          	sd	s1,40(sp)
    80005ed4:	03213023          	sd	s2,32(sp)
    80005ed8:	01313c23          	sd	s3,24(sp)
    80005edc:	04010413          	addi	s0,sp,64
    80005ee0:	00050493          	mv	s1,a0
    80005ee4:	00058913          	mv	s2,a1
    80005ee8:	00060993          	mv	s3,a2
    LOCK();
    80005eec:	00100613          	li	a2,1
    80005ef0:	00000593          	li	a1,0
    80005ef4:	0000a517          	auipc	a0,0xa
    80005ef8:	df450513          	addi	a0,a0,-524 # 8000fce8 <lockPrint>
    80005efc:	ffffb097          	auipc	ra,0xffffb
    80005f00:	31c080e7          	jalr	796(ra) # 80001218 <copy_and_swap>
    80005f04:	fe0514e3          	bnez	a0,80005eec <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005f08:	00098463          	beqz	s3,80005f10 <_Z8printIntiii+0x4c>
    80005f0c:	0804c463          	bltz	s1,80005f94 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005f10:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005f14:	00000593          	li	a1,0
    }

    i = 0;
    80005f18:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005f1c:	0009079b          	sext.w	a5,s2
    80005f20:	0325773b          	remuw	a4,a0,s2
    80005f24:	00048613          	mv	a2,s1
    80005f28:	0014849b          	addiw	s1,s1,1
    80005f2c:	02071693          	slli	a3,a4,0x20
    80005f30:	0206d693          	srli	a3,a3,0x20
    80005f34:	00003717          	auipc	a4,0x3
    80005f38:	62470713          	addi	a4,a4,1572 # 80009558 <_ZL6digits>
    80005f3c:	00d70733          	add	a4,a4,a3
    80005f40:	00074683          	lbu	a3,0(a4)
    80005f44:	fd040713          	addi	a4,s0,-48
    80005f48:	00c70733          	add	a4,a4,a2
    80005f4c:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005f50:	0005071b          	sext.w	a4,a0
    80005f54:	0325553b          	divuw	a0,a0,s2
    80005f58:	fcf772e3          	bgeu	a4,a5,80005f1c <_Z8printIntiii+0x58>
    if (neg)
    80005f5c:	00058c63          	beqz	a1,80005f74 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005f60:	fd040793          	addi	a5,s0,-48
    80005f64:	009784b3          	add	s1,a5,s1
    80005f68:	02d00793          	li	a5,45
    80005f6c:	fef48823          	sb	a5,-16(s1)
    80005f70:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005f74:	fff4849b          	addiw	s1,s1,-1
    80005f78:	0204c463          	bltz	s1,80005fa0 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005f7c:	fd040793          	addi	a5,s0,-48
    80005f80:	009787b3          	add	a5,a5,s1
    80005f84:	ff07c503          	lbu	a0,-16(a5)
    80005f88:	ffffb097          	auipc	ra,0xffffb
    80005f8c:	5b0080e7          	jalr	1456(ra) # 80001538 <putc>
    80005f90:	fe5ff06f          	j	80005f74 <_Z8printIntiii+0xb0>
        x = -xx;
    80005f94:	4090053b          	negw	a0,s1
        neg = 1;
    80005f98:	00100593          	li	a1,1
        x = -xx;
    80005f9c:	f7dff06f          	j	80005f18 <_Z8printIntiii+0x54>
    UNLOCK();
    80005fa0:	00000613          	li	a2,0
    80005fa4:	00100593          	li	a1,1
    80005fa8:	0000a517          	auipc	a0,0xa
    80005fac:	d4050513          	addi	a0,a0,-704 # 8000fce8 <lockPrint>
    80005fb0:	ffffb097          	auipc	ra,0xffffb
    80005fb4:	268080e7          	jalr	616(ra) # 80001218 <copy_and_swap>
    80005fb8:	fe0514e3          	bnez	a0,80005fa0 <_Z8printIntiii+0xdc>
}
    80005fbc:	03813083          	ld	ra,56(sp)
    80005fc0:	03013403          	ld	s0,48(sp)
    80005fc4:	02813483          	ld	s1,40(sp)
    80005fc8:	02013903          	ld	s2,32(sp)
    80005fcc:	01813983          	ld	s3,24(sp)
    80005fd0:	04010113          	addi	sp,sp,64
    80005fd4:	00008067          	ret

0000000080005fd8 <_Z15trapPrintStringPKc>:

void trapPrintString(char const* string)
{
    80005fd8:	fe010113          	addi	sp,sp,-32
    80005fdc:	00113c23          	sd	ra,24(sp)
    80005fe0:	00813823          	sd	s0,16(sp)
    80005fe4:	00913423          	sd	s1,8(sp)
    80005fe8:	02010413          	addi	s0,sp,32
    80005fec:	00050493          	mv	s1,a0
    LOCK();
    80005ff0:	00100613          	li	a2,1
    80005ff4:	00000593          	li	a1,0
    80005ff8:	0000a517          	auipc	a0,0xa
    80005ffc:	cf050513          	addi	a0,a0,-784 # 8000fce8 <lockPrint>
    80006000:	ffffb097          	auipc	ra,0xffffb
    80006004:	218080e7          	jalr	536(ra) # 80001218 <copy_and_swap>
    80006008:	fe0514e3          	bnez	a0,80005ff0 <_Z15trapPrintStringPKc+0x18>
    while (*string != '\0') {
    8000600c:	0004c503          	lbu	a0,0(s1)
    80006010:	00050a63          	beqz	a0,80006024 <_Z15trapPrintStringPKc+0x4c>
        KConsole::putCharacterOutput(*string);
    80006014:	ffffd097          	auipc	ra,0xffffd
    80006018:	f34080e7          	jalr	-204(ra) # 80002f48 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    8000601c:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80006020:	fedff06f          	j	8000600c <_Z15trapPrintStringPKc+0x34>
    }
    UNLOCK();
    80006024:	00000613          	li	a2,0
    80006028:	00100593          	li	a1,1
    8000602c:	0000a517          	auipc	a0,0xa
    80006030:	cbc50513          	addi	a0,a0,-836 # 8000fce8 <lockPrint>
    80006034:	ffffb097          	auipc	ra,0xffffb
    80006038:	1e4080e7          	jalr	484(ra) # 80001218 <copy_and_swap>
    8000603c:	fe0514e3          	bnez	a0,80006024 <_Z15trapPrintStringPKc+0x4c>
}
    80006040:	01813083          	ld	ra,24(sp)
    80006044:	01013403          	ld	s0,16(sp)
    80006048:	00813483          	ld	s1,8(sp)
    8000604c:	02010113          	addi	sp,sp,32
    80006050:	00008067          	ret

0000000080006054 <_Z12trapPrintIntiii>:

void trapPrintInt(int xx, int base, int sgn)
{
    80006054:	fc010113          	addi	sp,sp,-64
    80006058:	02113c23          	sd	ra,56(sp)
    8000605c:	02813823          	sd	s0,48(sp)
    80006060:	02913423          	sd	s1,40(sp)
    80006064:	03213023          	sd	s2,32(sp)
    80006068:	01313c23          	sd	s3,24(sp)
    8000606c:	04010413          	addi	s0,sp,64
    80006070:	00050493          	mv	s1,a0
    80006074:	00058913          	mv	s2,a1
    80006078:	00060993          	mv	s3,a2
    LOCK();
    8000607c:	00100613          	li	a2,1
    80006080:	00000593          	li	a1,0
    80006084:	0000a517          	auipc	a0,0xa
    80006088:	c6450513          	addi	a0,a0,-924 # 8000fce8 <lockPrint>
    8000608c:	ffffb097          	auipc	ra,0xffffb
    80006090:	18c080e7          	jalr	396(ra) # 80001218 <copy_and_swap>
    80006094:	fe0514e3          	bnez	a0,8000607c <_Z12trapPrintIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80006098:	00098463          	beqz	s3,800060a0 <_Z12trapPrintIntiii+0x4c>
    8000609c:	0804c463          	bltz	s1,80006124 <_Z12trapPrintIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800060a0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800060a4:	00000593          	li	a1,0
    }

    i = 0;
    800060a8:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    800060ac:	0009079b          	sext.w	a5,s2
    800060b0:	0325773b          	remuw	a4,a0,s2
    800060b4:	00048613          	mv	a2,s1
    800060b8:	0014849b          	addiw	s1,s1,1
    800060bc:	02071693          	slli	a3,a4,0x20
    800060c0:	0206d693          	srli	a3,a3,0x20
    800060c4:	00003717          	auipc	a4,0x3
    800060c8:	49470713          	addi	a4,a4,1172 # 80009558 <_ZL6digits>
    800060cc:	00d70733          	add	a4,a4,a3
    800060d0:	00074683          	lbu	a3,0(a4)
    800060d4:	fd040713          	addi	a4,s0,-48
    800060d8:	00c70733          	add	a4,a4,a2
    800060dc:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    800060e0:	0005071b          	sext.w	a4,a0
    800060e4:	0325553b          	divuw	a0,a0,s2
    800060e8:	fcf772e3          	bgeu	a4,a5,800060ac <_Z12trapPrintIntiii+0x58>
    if (neg)
    800060ec:	00058c63          	beqz	a1,80006104 <_Z12trapPrintIntiii+0xb0>
        buf[i++] = '-';
    800060f0:	fd040793          	addi	a5,s0,-48
    800060f4:	009784b3          	add	s1,a5,s1
    800060f8:	02d00793          	li	a5,45
    800060fc:	fef48823          	sb	a5,-16(s1)
    80006100:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80006104:	fff4849b          	addiw	s1,s1,-1
    80006108:	0204c463          	bltz	s1,80006130 <_Z12trapPrintIntiii+0xdc>
        KConsole::putCharacterOutput(buf[i]);
    8000610c:	fd040793          	addi	a5,s0,-48
    80006110:	009787b3          	add	a5,a5,s1
    80006114:	ff07c503          	lbu	a0,-16(a5)
    80006118:	ffffd097          	auipc	ra,0xffffd
    8000611c:	e30080e7          	jalr	-464(ra) # 80002f48 <_ZN8KConsole18putCharacterOutputEc>
    80006120:	fe5ff06f          	j	80006104 <_Z12trapPrintIntiii+0xb0>
        x = -xx;
    80006124:	4090053b          	negw	a0,s1
        neg = 1;
    80006128:	00100593          	li	a1,1
        x = -xx;
    8000612c:	f7dff06f          	j	800060a8 <_Z12trapPrintIntiii+0x54>
    UNLOCK();
    80006130:	00000613          	li	a2,0
    80006134:	00100593          	li	a1,1
    80006138:	0000a517          	auipc	a0,0xa
    8000613c:	bb050513          	addi	a0,a0,-1104 # 8000fce8 <lockPrint>
    80006140:	ffffb097          	auipc	ra,0xffffb
    80006144:	0d8080e7          	jalr	216(ra) # 80001218 <copy_and_swap>
    80006148:	fe0514e3          	bnez	a0,80006130 <_Z12trapPrintIntiii+0xdc>
}
    8000614c:	03813083          	ld	ra,56(sp)
    80006150:	03013403          	ld	s0,48(sp)
    80006154:	02813483          	ld	s1,40(sp)
    80006158:	02013903          	ld	s2,32(sp)
    8000615c:	01813983          	ld	s3,24(sp)
    80006160:	04010113          	addi	sp,sp,64
    80006164:	00008067          	ret

0000000080006168 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80006168:	fe010113          	addi	sp,sp,-32
    8000616c:	00113c23          	sd	ra,24(sp)
    80006170:	00813823          	sd	s0,16(sp)
    80006174:	00913423          	sd	s1,8(sp)
    80006178:	01213023          	sd	s2,0(sp)
    8000617c:	02010413          	addi	s0,sp,32
    80006180:	00050493          	mv	s1,a0
    80006184:	00b52023          	sw	a1,0(a0)
    80006188:	00052823          	sw	zero,16(a0)
    8000618c:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006190:	00259513          	slli	a0,a1,0x2
    80006194:	ffffb097          	auipc	ra,0xffffb
    80006198:	0c4080e7          	jalr	196(ra) # 80001258 <mem_alloc>
    8000619c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800061a0:	01000513          	li	a0,16
    800061a4:	ffffd097          	auipc	ra,0xffffd
    800061a8:	580080e7          	jalr	1408(ra) # 80003724 <_Znwm>
    800061ac:	00050913          	mv	s2,a0
    800061b0:	00000593          	li	a1,0
    800061b4:	ffffd097          	auipc	ra,0xffffd
    800061b8:	7bc080e7          	jalr	1980(ra) # 80003970 <_ZN9SemaphoreC1Ej>
    800061bc:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    800061c0:	01000513          	li	a0,16
    800061c4:	ffffd097          	auipc	ra,0xffffd
    800061c8:	560080e7          	jalr	1376(ra) # 80003724 <_Znwm>
    800061cc:	00050913          	mv	s2,a0
    800061d0:	0004a583          	lw	a1,0(s1)
    800061d4:	ffffd097          	auipc	ra,0xffffd
    800061d8:	79c080e7          	jalr	1948(ra) # 80003970 <_ZN9SemaphoreC1Ej>
    800061dc:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    800061e0:	01000513          	li	a0,16
    800061e4:	ffffd097          	auipc	ra,0xffffd
    800061e8:	540080e7          	jalr	1344(ra) # 80003724 <_Znwm>
    800061ec:	00050913          	mv	s2,a0
    800061f0:	00100593          	li	a1,1
    800061f4:	ffffd097          	auipc	ra,0xffffd
    800061f8:	77c080e7          	jalr	1916(ra) # 80003970 <_ZN9SemaphoreC1Ej>
    800061fc:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006200:	01000513          	li	a0,16
    80006204:	ffffd097          	auipc	ra,0xffffd
    80006208:	520080e7          	jalr	1312(ra) # 80003724 <_Znwm>
    8000620c:	00050913          	mv	s2,a0
    80006210:	00100593          	li	a1,1
    80006214:	ffffd097          	auipc	ra,0xffffd
    80006218:	75c080e7          	jalr	1884(ra) # 80003970 <_ZN9SemaphoreC1Ej>
    8000621c:	0324b823          	sd	s2,48(s1)
}
    80006220:	01813083          	ld	ra,24(sp)
    80006224:	01013403          	ld	s0,16(sp)
    80006228:	00813483          	ld	s1,8(sp)
    8000622c:	00013903          	ld	s2,0(sp)
    80006230:	02010113          	addi	sp,sp,32
    80006234:	00008067          	ret
    80006238:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000623c:	00090513          	mv	a0,s2
    80006240:	ffffd097          	auipc	ra,0xffffd
    80006244:	50c080e7          	jalr	1292(ra) # 8000374c <_ZdlPv>
    80006248:	00048513          	mv	a0,s1
    8000624c:	0000b097          	auipc	ra,0xb
    80006250:	b7c080e7          	jalr	-1156(ra) # 80010dc8 <_Unwind_Resume>
    80006254:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80006258:	00090513          	mv	a0,s2
    8000625c:	ffffd097          	auipc	ra,0xffffd
    80006260:	4f0080e7          	jalr	1264(ra) # 8000374c <_ZdlPv>
    80006264:	00048513          	mv	a0,s1
    80006268:	0000b097          	auipc	ra,0xb
    8000626c:	b60080e7          	jalr	-1184(ra) # 80010dc8 <_Unwind_Resume>
    80006270:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006274:	00090513          	mv	a0,s2
    80006278:	ffffd097          	auipc	ra,0xffffd
    8000627c:	4d4080e7          	jalr	1236(ra) # 8000374c <_ZdlPv>
    80006280:	00048513          	mv	a0,s1
    80006284:	0000b097          	auipc	ra,0xb
    80006288:	b44080e7          	jalr	-1212(ra) # 80010dc8 <_Unwind_Resume>
    8000628c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006290:	00090513          	mv	a0,s2
    80006294:	ffffd097          	auipc	ra,0xffffd
    80006298:	4b8080e7          	jalr	1208(ra) # 8000374c <_ZdlPv>
    8000629c:	00048513          	mv	a0,s1
    800062a0:	0000b097          	auipc	ra,0xb
    800062a4:	b28080e7          	jalr	-1240(ra) # 80010dc8 <_Unwind_Resume>

00000000800062a8 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    800062a8:	fe010113          	addi	sp,sp,-32
    800062ac:	00113c23          	sd	ra,24(sp)
    800062b0:	00813823          	sd	s0,16(sp)
    800062b4:	00913423          	sd	s1,8(sp)
    800062b8:	02010413          	addi	s0,sp,32
    800062bc:	00050493          	mv	s1,a0
    putc('\n');
    800062c0:	00a00513          	li	a0,10
    800062c4:	ffffb097          	auipc	ra,0xffffb
    800062c8:	274080e7          	jalr	628(ra) # 80001538 <putc>
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    800062cc:	0104a783          	lw	a5,16(s1)
    800062d0:	0144a703          	lw	a4,20(s1)
    800062d4:	00e78c63          	beq	a5,a4,800062ec <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800062d8:	0017879b          	addiw	a5,a5,1
    800062dc:	0004a703          	lw	a4,0(s1)
    800062e0:	02e7e7bb          	remw	a5,a5,a4
    800062e4:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800062e8:	fe5ff06f          	j	800062cc <_ZN9BufferCPPD1Ev+0x24>
    }
    putc('!');
    800062ec:	02100513          	li	a0,33
    800062f0:	ffffb097          	auipc	ra,0xffffb
    800062f4:	248080e7          	jalr	584(ra) # 80001538 <putc>
    putc('\n');
    800062f8:	00a00513          	li	a0,10
    800062fc:	ffffb097          	auipc	ra,0xffffb
    80006300:	23c080e7          	jalr	572(ra) # 80001538 <putc>

    mem_free(buffer);
    80006304:	0084b503          	ld	a0,8(s1)
    80006308:	ffffb097          	auipc	ra,0xffffb
    8000630c:	f80080e7          	jalr	-128(ra) # 80001288 <mem_free>
    delete itemAvailable;
    80006310:	0204b503          	ld	a0,32(s1)
    80006314:	00050863          	beqz	a0,80006324 <_ZN9BufferCPPD1Ev+0x7c>
    80006318:	00053783          	ld	a5,0(a0)
    8000631c:	0087b783          	ld	a5,8(a5)
    80006320:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006324:	0184b503          	ld	a0,24(s1)
    80006328:	00050863          	beqz	a0,80006338 <_ZN9BufferCPPD1Ev+0x90>
    8000632c:	00053783          	ld	a5,0(a0)
    80006330:	0087b783          	ld	a5,8(a5)
    80006334:	000780e7          	jalr	a5
    delete mutexTail;
    80006338:	0304b503          	ld	a0,48(s1)
    8000633c:	00050863          	beqz	a0,8000634c <_ZN9BufferCPPD1Ev+0xa4>
    80006340:	00053783          	ld	a5,0(a0)
    80006344:	0087b783          	ld	a5,8(a5)
    80006348:	000780e7          	jalr	a5
    delete mutexHead;
    8000634c:	0284b503          	ld	a0,40(s1)
    80006350:	00050863          	beqz	a0,80006360 <_ZN9BufferCPPD1Ev+0xb8>
    80006354:	00053783          	ld	a5,0(a0)
    80006358:	0087b783          	ld	a5,8(a5)
    8000635c:	000780e7          	jalr	a5

}
    80006360:	01813083          	ld	ra,24(sp)
    80006364:	01013403          	ld	s0,16(sp)
    80006368:	00813483          	ld	s1,8(sp)
    8000636c:	02010113          	addi	sp,sp,32
    80006370:	00008067          	ret

0000000080006374 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80006374:	fe010113          	addi	sp,sp,-32
    80006378:	00113c23          	sd	ra,24(sp)
    8000637c:	00813823          	sd	s0,16(sp)
    80006380:	00913423          	sd	s1,8(sp)
    80006384:	01213023          	sd	s2,0(sp)
    80006388:	02010413          	addi	s0,sp,32
    8000638c:	00050493          	mv	s1,a0
    80006390:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006394:	01853503          	ld	a0,24(a0)
    80006398:	ffffd097          	auipc	ra,0xffffd
    8000639c:	5a0080e7          	jalr	1440(ra) # 80003938 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800063a0:	0304b503          	ld	a0,48(s1)
    800063a4:	ffffd097          	auipc	ra,0xffffd
    800063a8:	594080e7          	jalr	1428(ra) # 80003938 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800063ac:	0084b783          	ld	a5,8(s1)
    800063b0:	0144a703          	lw	a4,20(s1)
    800063b4:	00271713          	slli	a4,a4,0x2
    800063b8:	00e787b3          	add	a5,a5,a4
    800063bc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800063c0:	0144a783          	lw	a5,20(s1)
    800063c4:	0017879b          	addiw	a5,a5,1
    800063c8:	0004a703          	lw	a4,0(s1)
    800063cc:	02e7e7bb          	remw	a5,a5,a4
    800063d0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800063d4:	0304b503          	ld	a0,48(s1)
    800063d8:	ffffd097          	auipc	ra,0xffffd
    800063dc:	5e4080e7          	jalr	1508(ra) # 800039bc <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800063e0:	0204b503          	ld	a0,32(s1)
    800063e4:	ffffd097          	auipc	ra,0xffffd
    800063e8:	5d8080e7          	jalr	1496(ra) # 800039bc <_ZN9Semaphore6signalEv>

}
    800063ec:	01813083          	ld	ra,24(sp)
    800063f0:	01013403          	ld	s0,16(sp)
    800063f4:	00813483          	ld	s1,8(sp)
    800063f8:	00013903          	ld	s2,0(sp)
    800063fc:	02010113          	addi	sp,sp,32
    80006400:	00008067          	ret

0000000080006404 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006404:	fe010113          	addi	sp,sp,-32
    80006408:	00113c23          	sd	ra,24(sp)
    8000640c:	00813823          	sd	s0,16(sp)
    80006410:	00913423          	sd	s1,8(sp)
    80006414:	01213023          	sd	s2,0(sp)
    80006418:	02010413          	addi	s0,sp,32
    8000641c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006420:	02053503          	ld	a0,32(a0)
    80006424:	ffffd097          	auipc	ra,0xffffd
    80006428:	514080e7          	jalr	1300(ra) # 80003938 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000642c:	0284b503          	ld	a0,40(s1)
    80006430:	ffffd097          	auipc	ra,0xffffd
    80006434:	508080e7          	jalr	1288(ra) # 80003938 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006438:	0084b703          	ld	a4,8(s1)
    8000643c:	0104a783          	lw	a5,16(s1)
    80006440:	00279693          	slli	a3,a5,0x2
    80006444:	00d70733          	add	a4,a4,a3
    80006448:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000644c:	0017879b          	addiw	a5,a5,1
    80006450:	0004a703          	lw	a4,0(s1)
    80006454:	02e7e7bb          	remw	a5,a5,a4
    80006458:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000645c:	0284b503          	ld	a0,40(s1)
    80006460:	ffffd097          	auipc	ra,0xffffd
    80006464:	55c080e7          	jalr	1372(ra) # 800039bc <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006468:	0184b503          	ld	a0,24(s1)
    8000646c:	ffffd097          	auipc	ra,0xffffd
    80006470:	550080e7          	jalr	1360(ra) # 800039bc <_ZN9Semaphore6signalEv>

    return ret;
}
    80006474:	00090513          	mv	a0,s2
    80006478:	01813083          	ld	ra,24(sp)
    8000647c:	01013403          	ld	s0,16(sp)
    80006480:	00813483          	ld	s1,8(sp)
    80006484:	00013903          	ld	s2,0(sp)
    80006488:	02010113          	addi	sp,sp,32
    8000648c:	00008067          	ret

0000000080006490 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80006490:	ff010113          	addi	sp,sp,-16
    80006494:	00113423          	sd	ra,8(sp)
    80006498:	00813023          	sd	s0,0(sp)
    8000649c:	01010413          	addi	s0,sp,16
    //__asm__ volatile("csrr a0, sstatus");
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta
    800064a0:	fffff097          	auipc	ra,0xfffff
    800064a4:	da4080e7          	jalr	-604(ra) # 80005244 <_Z20Threads_CPP_API_testv>
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    800064a8:	00813083          	ld	ra,8(sp)
    800064ac:	00013403          	ld	s0,0(sp)
    800064b0:	01010113          	addi	sp,sp,16
    800064b4:	00008067          	ret

00000000800064b8 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    800064b8:	fe010113          	addi	sp,sp,-32
    800064bc:	00113c23          	sd	ra,24(sp)
    800064c0:	00813823          	sd	s0,16(sp)
    800064c4:	00913423          	sd	s1,8(sp)
    800064c8:	01213023          	sd	s2,0(sp)
    800064cc:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800064d0:	00053903          	ld	s2,0(a0)
    int i = 6;
    800064d4:	00600493          	li	s1,6
    while (--i > 0) {
    800064d8:	fff4849b          	addiw	s1,s1,-1
    800064dc:	04905463          	blez	s1,80006524 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    800064e0:	00003517          	auipc	a0,0x3
    800064e4:	09050513          	addi	a0,a0,144 # 80009570 <_ZL6digits+0x18>
    800064e8:	00000097          	auipc	ra,0x0
    800064ec:	844080e7          	jalr	-1980(ra) # 80005d2c <_Z11printStringPKc>
        printInt(sleep_time);
    800064f0:	00000613          	li	a2,0
    800064f4:	00a00593          	li	a1,10
    800064f8:	0009051b          	sext.w	a0,s2
    800064fc:	00000097          	auipc	ra,0x0
    80006500:	9c8080e7          	jalr	-1592(ra) # 80005ec4 <_Z8printIntiii>
        printString(" !\n");
    80006504:	00003517          	auipc	a0,0x3
    80006508:	07450513          	addi	a0,a0,116 # 80009578 <_ZL6digits+0x20>
    8000650c:	00000097          	auipc	ra,0x0
    80006510:	820080e7          	jalr	-2016(ra) # 80005d2c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006514:	00090513          	mv	a0,s2
    80006518:	ffffb097          	auipc	ra,0xffffb
    8000651c:	f20080e7          	jalr	-224(ra) # 80001438 <time_sleep>
    while (--i > 0) {
    80006520:	fb9ff06f          	j	800064d8 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006524:	00a00793          	li	a5,10
    80006528:	02f95933          	divu	s2,s2,a5
    8000652c:	fff90913          	addi	s2,s2,-1
    80006530:	00009797          	auipc	a5,0x9
    80006534:	7c078793          	addi	a5,a5,1984 # 8000fcf0 <finished>
    80006538:	01278933          	add	s2,a5,s2
    8000653c:	00100793          	li	a5,1
    80006540:	00f90023          	sb	a5,0(s2)
}
    80006544:	01813083          	ld	ra,24(sp)
    80006548:	01013403          	ld	s0,16(sp)
    8000654c:	00813483          	ld	s1,8(sp)
    80006550:	00013903          	ld	s2,0(sp)
    80006554:	02010113          	addi	sp,sp,32
    80006558:	00008067          	ret

000000008000655c <_Z12testSleepingv>:

void testSleeping()
{
    8000655c:	fc010113          	addi	sp,sp,-64
    80006560:	02113c23          	sd	ra,56(sp)
    80006564:	02813823          	sd	s0,48(sp)
    80006568:	02913423          	sd	s1,40(sp)
    8000656c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006570:	00a00793          	li	a5,10
    80006574:	fcf43823          	sd	a5,-48(s0)
    80006578:	01400793          	li	a5,20
    8000657c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006580:	00000493          	li	s1,0
    80006584:	02c0006f          	j	800065b0 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006588:	00349793          	slli	a5,s1,0x3
    8000658c:	fd040613          	addi	a2,s0,-48
    80006590:	00f60633          	add	a2,a2,a5
    80006594:	00000597          	auipc	a1,0x0
    80006598:	f2458593          	addi	a1,a1,-220 # 800064b8 <_Z9sleepyRunPv>
    8000659c:	fc040513          	addi	a0,s0,-64
    800065a0:	00f50533          	add	a0,a0,a5
    800065a4:	ffffb097          	auipc	ra,0xffffb
    800065a8:	d10080e7          	jalr	-752(ra) # 800012b4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800065ac:	0014849b          	addiw	s1,s1,1
    800065b0:	00100793          	li	a5,1
    800065b4:	fc97dae3          	bge	a5,s1,80006588 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {
    800065b8:	00009797          	auipc	a5,0x9
    800065bc:	7387c783          	lbu	a5,1848(a5) # 8000fcf0 <finished>
    800065c0:	fe078ce3          	beqz	a5,800065b8 <_Z12testSleepingv+0x5c>
    800065c4:	00009797          	auipc	a5,0x9
    800065c8:	72d7c783          	lbu	a5,1837(a5) # 8000fcf1 <finished+0x1>
    800065cc:	fe0786e3          	beqz	a5,800065b8 <_Z12testSleepingv+0x5c>
        //thread_dispatch();
    }
}
    800065d0:	03813083          	ld	ra,56(sp)
    800065d4:	03013403          	ld	s0,48(sp)
    800065d8:	02813483          	ld	s1,40(sp)
    800065dc:	04010113          	addi	sp,sp,64
    800065e0:	00008067          	ret

00000000800065e4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    800065e4:	fe010113          	addi	sp,sp,-32
    800065e8:	00113c23          	sd	ra,24(sp)
    800065ec:	00813823          	sd	s0,16(sp)
    800065f0:	00913423          	sd	s1,8(sp)
    800065f4:	02010413          	addi	s0,sp,32
    800065f8:	00050493          	mv	s1,a0
    800065fc:	00b52023          	sw	a1,0(a0)
    80006600:	00052823          	sw	zero,16(a0)
    80006604:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006608:	00259513          	slli	a0,a1,0x2
    8000660c:	ffffb097          	auipc	ra,0xffffb
    80006610:	c4c080e7          	jalr	-948(ra) # 80001258 <mem_alloc>
    80006614:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006618:	00000593          	li	a1,0
    8000661c:	02048513          	addi	a0,s1,32
    80006620:	ffffb097          	auipc	ra,0xffffb
    80006624:	d5c080e7          	jalr	-676(ra) # 8000137c <sem_open>
    sem_open(&spaceAvailable, cap);
    80006628:	0004a583          	lw	a1,0(s1)
    8000662c:	01848513          	addi	a0,s1,24
    80006630:	ffffb097          	auipc	ra,0xffffb
    80006634:	d4c080e7          	jalr	-692(ra) # 8000137c <sem_open>
    sem_open(&mutexHead, 1);
    80006638:	00100593          	li	a1,1
    8000663c:	02848513          	addi	a0,s1,40
    80006640:	ffffb097          	auipc	ra,0xffffb
    80006644:	d3c080e7          	jalr	-708(ra) # 8000137c <sem_open>
    sem_open(&mutexTail, 1);
    80006648:	00100593          	li	a1,1
    8000664c:	03048513          	addi	a0,s1,48
    80006650:	ffffb097          	auipc	ra,0xffffb
    80006654:	d2c080e7          	jalr	-724(ra) # 8000137c <sem_open>
}
    80006658:	01813083          	ld	ra,24(sp)
    8000665c:	01013403          	ld	s0,16(sp)
    80006660:	00813483          	ld	s1,8(sp)
    80006664:	02010113          	addi	sp,sp,32
    80006668:	00008067          	ret

000000008000666c <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    8000666c:	fe010113          	addi	sp,sp,-32
    80006670:	00113c23          	sd	ra,24(sp)
    80006674:	00813823          	sd	s0,16(sp)
    80006678:	00913423          	sd	s1,8(sp)
    8000667c:	02010413          	addi	s0,sp,32
    80006680:	00050493          	mv	s1,a0
    putc('\n');
    80006684:	00a00513          	li	a0,10
    80006688:	ffffb097          	auipc	ra,0xffffb
    8000668c:	eb0080e7          	jalr	-336(ra) # 80001538 <putc>
    //todo
    //placeholder
    printString("Buffer deleted!\n");
    80006690:	00003517          	auipc	a0,0x3
    80006694:	ef050513          	addi	a0,a0,-272 # 80009580 <_ZL6digits+0x28>
    80006698:	fffff097          	auipc	ra,0xfffff
    8000669c:	694080e7          	jalr	1684(ra) # 80005d2c <_Z11printStringPKc>
    while (head != tail) {
    800066a0:	0104a783          	lw	a5,16(s1)
    800066a4:	0144a703          	lw	a4,20(s1)
    800066a8:	00e78c63          	beq	a5,a4,800066c0 <_ZN6BufferD1Ev+0x54>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800066ac:	0017879b          	addiw	a5,a5,1
    800066b0:	0004a703          	lw	a4,0(s1)
    800066b4:	02e7e7bb          	remw	a5,a5,a4
    800066b8:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800066bc:	fe5ff06f          	j	800066a0 <_ZN6BufferD1Ev+0x34>
    }
    putc('!');
    800066c0:	02100513          	li	a0,33
    800066c4:	ffffb097          	auipc	ra,0xffffb
    800066c8:	e74080e7          	jalr	-396(ra) # 80001538 <putc>
    putc('\n');
    800066cc:	00a00513          	li	a0,10
    800066d0:	ffffb097          	auipc	ra,0xffffb
    800066d4:	e68080e7          	jalr	-408(ra) # 80001538 <putc>

    mem_free(buffer);
    800066d8:	0084b503          	ld	a0,8(s1)
    800066dc:	ffffb097          	auipc	ra,0xffffb
    800066e0:	bac080e7          	jalr	-1108(ra) # 80001288 <mem_free>
    sem_close(itemAvailable);
    800066e4:	0204b503          	ld	a0,32(s1)
    800066e8:	ffffb097          	auipc	ra,0xffffb
    800066ec:	ccc080e7          	jalr	-820(ra) # 800013b4 <sem_close>
    sem_close(spaceAvailable);
    800066f0:	0184b503          	ld	a0,24(s1)
    800066f4:	ffffb097          	auipc	ra,0xffffb
    800066f8:	cc0080e7          	jalr	-832(ra) # 800013b4 <sem_close>
    sem_close(mutexTail);
    800066fc:	0304b503          	ld	a0,48(s1)
    80006700:	ffffb097          	auipc	ra,0xffffb
    80006704:	cb4080e7          	jalr	-844(ra) # 800013b4 <sem_close>
    sem_close(mutexHead);
    80006708:	0284b503          	ld	a0,40(s1)
    8000670c:	ffffb097          	auipc	ra,0xffffb
    80006710:	ca8080e7          	jalr	-856(ra) # 800013b4 <sem_close>
}
    80006714:	01813083          	ld	ra,24(sp)
    80006718:	01013403          	ld	s0,16(sp)
    8000671c:	00813483          	ld	s1,8(sp)
    80006720:	02010113          	addi	sp,sp,32
    80006724:	00008067          	ret

0000000080006728 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    80006728:	fe010113          	addi	sp,sp,-32
    8000672c:	00113c23          	sd	ra,24(sp)
    80006730:	00813823          	sd	s0,16(sp)
    80006734:	00913423          	sd	s1,8(sp)
    80006738:	01213023          	sd	s2,0(sp)
    8000673c:	02010413          	addi	s0,sp,32
    80006740:	00050493          	mv	s1,a0
    80006744:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006748:	01853503          	ld	a0,24(a0)
    8000674c:	ffffb097          	auipc	ra,0xffffb
    80006750:	c94080e7          	jalr	-876(ra) # 800013e0 <sem_wait>

    sem_wait(mutexTail);
    80006754:	0304b503          	ld	a0,48(s1)
    80006758:	ffffb097          	auipc	ra,0xffffb
    8000675c:	c88080e7          	jalr	-888(ra) # 800013e0 <sem_wait>
    buffer[tail] = val;
    80006760:	0084b783          	ld	a5,8(s1)
    80006764:	0144a703          	lw	a4,20(s1)
    80006768:	00271713          	slli	a4,a4,0x2
    8000676c:	00e787b3          	add	a5,a5,a4
    80006770:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006774:	0144a783          	lw	a5,20(s1)
    80006778:	0017879b          	addiw	a5,a5,1
    8000677c:	0004a703          	lw	a4,0(s1)
    80006780:	02e7e7bb          	remw	a5,a5,a4
    80006784:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006788:	0304b503          	ld	a0,48(s1)
    8000678c:	ffffb097          	auipc	ra,0xffffb
    80006790:	c80080e7          	jalr	-896(ra) # 8000140c <sem_signal>

    sem_signal(itemAvailable);
    80006794:	0204b503          	ld	a0,32(s1)
    80006798:	ffffb097          	auipc	ra,0xffffb
    8000679c:	c74080e7          	jalr	-908(ra) # 8000140c <sem_signal>

}
    800067a0:	01813083          	ld	ra,24(sp)
    800067a4:	01013403          	ld	s0,16(sp)
    800067a8:	00813483          	ld	s1,8(sp)
    800067ac:	00013903          	ld	s2,0(sp)
    800067b0:	02010113          	addi	sp,sp,32
    800067b4:	00008067          	ret

00000000800067b8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800067b8:	fe010113          	addi	sp,sp,-32
    800067bc:	00113c23          	sd	ra,24(sp)
    800067c0:	00813823          	sd	s0,16(sp)
    800067c4:	00913423          	sd	s1,8(sp)
    800067c8:	01213023          	sd	s2,0(sp)
    800067cc:	02010413          	addi	s0,sp,32
    800067d0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800067d4:	02053503          	ld	a0,32(a0)
    800067d8:	ffffb097          	auipc	ra,0xffffb
    800067dc:	c08080e7          	jalr	-1016(ra) # 800013e0 <sem_wait>

    sem_wait(mutexHead);
    800067e0:	0284b503          	ld	a0,40(s1)
    800067e4:	ffffb097          	auipc	ra,0xffffb
    800067e8:	bfc080e7          	jalr	-1028(ra) # 800013e0 <sem_wait>

    int ret = buffer[head];
    800067ec:	0084b703          	ld	a4,8(s1)
    800067f0:	0104a783          	lw	a5,16(s1)
    800067f4:	00279693          	slli	a3,a5,0x2
    800067f8:	00d70733          	add	a4,a4,a3
    800067fc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006800:	0017879b          	addiw	a5,a5,1
    80006804:	0004a703          	lw	a4,0(s1)
    80006808:	02e7e7bb          	remw	a5,a5,a4
    8000680c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006810:	0284b503          	ld	a0,40(s1)
    80006814:	ffffb097          	auipc	ra,0xffffb
    80006818:	bf8080e7          	jalr	-1032(ra) # 8000140c <sem_signal>

    sem_signal(spaceAvailable);
    8000681c:	0184b503          	ld	a0,24(s1)
    80006820:	ffffb097          	auipc	ra,0xffffb
    80006824:	bec080e7          	jalr	-1044(ra) # 8000140c <sem_signal>

    return ret;
}
    80006828:	00090513          	mv	a0,s2
    8000682c:	01813083          	ld	ra,24(sp)
    80006830:	01013403          	ld	s0,16(sp)
    80006834:	00813483          	ld	s1,8(sp)
    80006838:	00013903          	ld	s2,0(sp)
    8000683c:	02010113          	addi	sp,sp,32
    80006840:	00008067          	ret

0000000080006844 <start>:
    80006844:	ff010113          	addi	sp,sp,-16
    80006848:	00813423          	sd	s0,8(sp)
    8000684c:	01010413          	addi	s0,sp,16
    80006850:	300027f3          	csrr	a5,mstatus
    80006854:	ffffe737          	lui	a4,0xffffe
    80006858:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffed89f>
    8000685c:	00e7f7b3          	and	a5,a5,a4
    80006860:	00001737          	lui	a4,0x1
    80006864:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006868:	00e7e7b3          	or	a5,a5,a4
    8000686c:	30079073          	csrw	mstatus,a5
    80006870:	00000797          	auipc	a5,0x0
    80006874:	16078793          	addi	a5,a5,352 # 800069d0 <system_main>
    80006878:	34179073          	csrw	mepc,a5
    8000687c:	00000793          	li	a5,0
    80006880:	18079073          	csrw	satp,a5
    80006884:	000107b7          	lui	a5,0x10
    80006888:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000688c:	30279073          	csrw	medeleg,a5
    80006890:	30379073          	csrw	mideleg,a5
    80006894:	104027f3          	csrr	a5,sie
    80006898:	2227e793          	ori	a5,a5,546
    8000689c:	10479073          	csrw	sie,a5
    800068a0:	fff00793          	li	a5,-1
    800068a4:	00a7d793          	srli	a5,a5,0xa
    800068a8:	3b079073          	csrw	pmpaddr0,a5
    800068ac:	00f00793          	li	a5,15
    800068b0:	3a079073          	csrw	pmpcfg0,a5
    800068b4:	f14027f3          	csrr	a5,mhartid
    800068b8:	0200c737          	lui	a4,0x200c
    800068bc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800068c0:	0007869b          	sext.w	a3,a5
    800068c4:	00269713          	slli	a4,a3,0x2
    800068c8:	000f4637          	lui	a2,0xf4
    800068cc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800068d0:	00d70733          	add	a4,a4,a3
    800068d4:	0037979b          	slliw	a5,a5,0x3
    800068d8:	020046b7          	lui	a3,0x2004
    800068dc:	00d787b3          	add	a5,a5,a3
    800068e0:	00c585b3          	add	a1,a1,a2
    800068e4:	00371693          	slli	a3,a4,0x3
    800068e8:	00009717          	auipc	a4,0x9
    800068ec:	41870713          	addi	a4,a4,1048 # 8000fd00 <timer_scratch>
    800068f0:	00b7b023          	sd	a1,0(a5)
    800068f4:	00d70733          	add	a4,a4,a3
    800068f8:	00f73c23          	sd	a5,24(a4)
    800068fc:	02c73023          	sd	a2,32(a4)
    80006900:	34071073          	csrw	mscratch,a4
    80006904:	00000797          	auipc	a5,0x0
    80006908:	6ec78793          	addi	a5,a5,1772 # 80006ff0 <timervec>
    8000690c:	30579073          	csrw	mtvec,a5
    80006910:	300027f3          	csrr	a5,mstatus
    80006914:	0087e793          	ori	a5,a5,8
    80006918:	30079073          	csrw	mstatus,a5
    8000691c:	304027f3          	csrr	a5,mie
    80006920:	0807e793          	ori	a5,a5,128
    80006924:	30479073          	csrw	mie,a5
    80006928:	f14027f3          	csrr	a5,mhartid
    8000692c:	0007879b          	sext.w	a5,a5
    80006930:	00078213          	mv	tp,a5
    80006934:	30200073          	mret
    80006938:	00813403          	ld	s0,8(sp)
    8000693c:	01010113          	addi	sp,sp,16
    80006940:	00008067          	ret

0000000080006944 <timerinit>:
    80006944:	ff010113          	addi	sp,sp,-16
    80006948:	00813423          	sd	s0,8(sp)
    8000694c:	01010413          	addi	s0,sp,16
    80006950:	f14027f3          	csrr	a5,mhartid
    80006954:	0200c737          	lui	a4,0x200c
    80006958:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000695c:	0007869b          	sext.w	a3,a5
    80006960:	00269713          	slli	a4,a3,0x2
    80006964:	000f4637          	lui	a2,0xf4
    80006968:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000696c:	00d70733          	add	a4,a4,a3
    80006970:	0037979b          	slliw	a5,a5,0x3
    80006974:	020046b7          	lui	a3,0x2004
    80006978:	00d787b3          	add	a5,a5,a3
    8000697c:	00c585b3          	add	a1,a1,a2
    80006980:	00371693          	slli	a3,a4,0x3
    80006984:	00009717          	auipc	a4,0x9
    80006988:	37c70713          	addi	a4,a4,892 # 8000fd00 <timer_scratch>
    8000698c:	00b7b023          	sd	a1,0(a5)
    80006990:	00d70733          	add	a4,a4,a3
    80006994:	00f73c23          	sd	a5,24(a4)
    80006998:	02c73023          	sd	a2,32(a4)
    8000699c:	34071073          	csrw	mscratch,a4
    800069a0:	00000797          	auipc	a5,0x0
    800069a4:	65078793          	addi	a5,a5,1616 # 80006ff0 <timervec>
    800069a8:	30579073          	csrw	mtvec,a5
    800069ac:	300027f3          	csrr	a5,mstatus
    800069b0:	0087e793          	ori	a5,a5,8
    800069b4:	30079073          	csrw	mstatus,a5
    800069b8:	304027f3          	csrr	a5,mie
    800069bc:	0807e793          	ori	a5,a5,128
    800069c0:	30479073          	csrw	mie,a5
    800069c4:	00813403          	ld	s0,8(sp)
    800069c8:	01010113          	addi	sp,sp,16
    800069cc:	00008067          	ret

00000000800069d0 <system_main>:
    800069d0:	fe010113          	addi	sp,sp,-32
    800069d4:	00813823          	sd	s0,16(sp)
    800069d8:	00913423          	sd	s1,8(sp)
    800069dc:	00113c23          	sd	ra,24(sp)
    800069e0:	02010413          	addi	s0,sp,32
    800069e4:	00000097          	auipc	ra,0x0
    800069e8:	0c4080e7          	jalr	196(ra) # 80006aa8 <cpuid>
    800069ec:	00005497          	auipc	s1,0x5
    800069f0:	1e448493          	addi	s1,s1,484 # 8000bbd0 <started>
    800069f4:	02050263          	beqz	a0,80006a18 <system_main+0x48>
    800069f8:	0004a783          	lw	a5,0(s1)
    800069fc:	0007879b          	sext.w	a5,a5
    80006a00:	fe078ce3          	beqz	a5,800069f8 <system_main+0x28>
    80006a04:	0ff0000f          	fence
    80006a08:	00003517          	auipc	a0,0x3
    80006a0c:	bc050513          	addi	a0,a0,-1088 # 800095c8 <_ZL6digits+0x70>
    80006a10:	00001097          	auipc	ra,0x1
    80006a14:	a7c080e7          	jalr	-1412(ra) # 8000748c <panic>
    80006a18:	00001097          	auipc	ra,0x1
    80006a1c:	9d0080e7          	jalr	-1584(ra) # 800073e8 <consoleinit>
    80006a20:	00001097          	auipc	ra,0x1
    80006a24:	15c080e7          	jalr	348(ra) # 80007b7c <printfinit>
    80006a28:	00002517          	auipc	a0,0x2
    80006a2c:	6d850513          	addi	a0,a0,1752 # 80009100 <CONSOLE_STATUS+0xf0>
    80006a30:	00001097          	auipc	ra,0x1
    80006a34:	ab8080e7          	jalr	-1352(ra) # 800074e8 <__printf>
    80006a38:	00003517          	auipc	a0,0x3
    80006a3c:	b6050513          	addi	a0,a0,-1184 # 80009598 <_ZL6digits+0x40>
    80006a40:	00001097          	auipc	ra,0x1
    80006a44:	aa8080e7          	jalr	-1368(ra) # 800074e8 <__printf>
    80006a48:	00002517          	auipc	a0,0x2
    80006a4c:	6b850513          	addi	a0,a0,1720 # 80009100 <CONSOLE_STATUS+0xf0>
    80006a50:	00001097          	auipc	ra,0x1
    80006a54:	a98080e7          	jalr	-1384(ra) # 800074e8 <__printf>
    80006a58:	00001097          	auipc	ra,0x1
    80006a5c:	4b0080e7          	jalr	1200(ra) # 80007f08 <kinit>
    80006a60:	00000097          	auipc	ra,0x0
    80006a64:	148080e7          	jalr	328(ra) # 80006ba8 <trapinit>
    80006a68:	00000097          	auipc	ra,0x0
    80006a6c:	16c080e7          	jalr	364(ra) # 80006bd4 <trapinithart>
    80006a70:	00000097          	auipc	ra,0x0
    80006a74:	5c0080e7          	jalr	1472(ra) # 80007030 <plicinit>
    80006a78:	00000097          	auipc	ra,0x0
    80006a7c:	5e0080e7          	jalr	1504(ra) # 80007058 <plicinithart>
    80006a80:	00000097          	auipc	ra,0x0
    80006a84:	078080e7          	jalr	120(ra) # 80006af8 <userinit>
    80006a88:	0ff0000f          	fence
    80006a8c:	00100793          	li	a5,1
    80006a90:	00003517          	auipc	a0,0x3
    80006a94:	b2050513          	addi	a0,a0,-1248 # 800095b0 <_ZL6digits+0x58>
    80006a98:	00f4a023          	sw	a5,0(s1)
    80006a9c:	00001097          	auipc	ra,0x1
    80006aa0:	a4c080e7          	jalr	-1460(ra) # 800074e8 <__printf>
    80006aa4:	0000006f          	j	80006aa4 <system_main+0xd4>

0000000080006aa8 <cpuid>:
    80006aa8:	ff010113          	addi	sp,sp,-16
    80006aac:	00813423          	sd	s0,8(sp)
    80006ab0:	01010413          	addi	s0,sp,16
    80006ab4:	00020513          	mv	a0,tp
    80006ab8:	00813403          	ld	s0,8(sp)
    80006abc:	0005051b          	sext.w	a0,a0
    80006ac0:	01010113          	addi	sp,sp,16
    80006ac4:	00008067          	ret

0000000080006ac8 <mycpu>:
    80006ac8:	ff010113          	addi	sp,sp,-16
    80006acc:	00813423          	sd	s0,8(sp)
    80006ad0:	01010413          	addi	s0,sp,16
    80006ad4:	00020793          	mv	a5,tp
    80006ad8:	00813403          	ld	s0,8(sp)
    80006adc:	0007879b          	sext.w	a5,a5
    80006ae0:	00779793          	slli	a5,a5,0x7
    80006ae4:	0000a517          	auipc	a0,0xa
    80006ae8:	24c50513          	addi	a0,a0,588 # 80010d30 <cpus>
    80006aec:	00f50533          	add	a0,a0,a5
    80006af0:	01010113          	addi	sp,sp,16
    80006af4:	00008067          	ret

0000000080006af8 <userinit>:
    80006af8:	ff010113          	addi	sp,sp,-16
    80006afc:	00813423          	sd	s0,8(sp)
    80006b00:	01010413          	addi	s0,sp,16
    80006b04:	00813403          	ld	s0,8(sp)
    80006b08:	01010113          	addi	sp,sp,16
    80006b0c:	ffffd317          	auipc	t1,0xffffd
    80006b10:	b5430067          	jr	-1196(t1) # 80003660 <main>

0000000080006b14 <either_copyout>:
    80006b14:	ff010113          	addi	sp,sp,-16
    80006b18:	00813023          	sd	s0,0(sp)
    80006b1c:	00113423          	sd	ra,8(sp)
    80006b20:	01010413          	addi	s0,sp,16
    80006b24:	02051663          	bnez	a0,80006b50 <either_copyout+0x3c>
    80006b28:	00058513          	mv	a0,a1
    80006b2c:	00060593          	mv	a1,a2
    80006b30:	0006861b          	sext.w	a2,a3
    80006b34:	00002097          	auipc	ra,0x2
    80006b38:	c60080e7          	jalr	-928(ra) # 80008794 <__memmove>
    80006b3c:	00813083          	ld	ra,8(sp)
    80006b40:	00013403          	ld	s0,0(sp)
    80006b44:	00000513          	li	a0,0
    80006b48:	01010113          	addi	sp,sp,16
    80006b4c:	00008067          	ret
    80006b50:	00003517          	auipc	a0,0x3
    80006b54:	aa050513          	addi	a0,a0,-1376 # 800095f0 <_ZL6digits+0x98>
    80006b58:	00001097          	auipc	ra,0x1
    80006b5c:	934080e7          	jalr	-1740(ra) # 8000748c <panic>

0000000080006b60 <either_copyin>:
    80006b60:	ff010113          	addi	sp,sp,-16
    80006b64:	00813023          	sd	s0,0(sp)
    80006b68:	00113423          	sd	ra,8(sp)
    80006b6c:	01010413          	addi	s0,sp,16
    80006b70:	02059463          	bnez	a1,80006b98 <either_copyin+0x38>
    80006b74:	00060593          	mv	a1,a2
    80006b78:	0006861b          	sext.w	a2,a3
    80006b7c:	00002097          	auipc	ra,0x2
    80006b80:	c18080e7          	jalr	-1000(ra) # 80008794 <__memmove>
    80006b84:	00813083          	ld	ra,8(sp)
    80006b88:	00013403          	ld	s0,0(sp)
    80006b8c:	00000513          	li	a0,0
    80006b90:	01010113          	addi	sp,sp,16
    80006b94:	00008067          	ret
    80006b98:	00003517          	auipc	a0,0x3
    80006b9c:	a8050513          	addi	a0,a0,-1408 # 80009618 <_ZL6digits+0xc0>
    80006ba0:	00001097          	auipc	ra,0x1
    80006ba4:	8ec080e7          	jalr	-1812(ra) # 8000748c <panic>

0000000080006ba8 <trapinit>:
    80006ba8:	ff010113          	addi	sp,sp,-16
    80006bac:	00813423          	sd	s0,8(sp)
    80006bb0:	01010413          	addi	s0,sp,16
    80006bb4:	00813403          	ld	s0,8(sp)
    80006bb8:	00003597          	auipc	a1,0x3
    80006bbc:	a8858593          	addi	a1,a1,-1400 # 80009640 <_ZL6digits+0xe8>
    80006bc0:	0000a517          	auipc	a0,0xa
    80006bc4:	1f050513          	addi	a0,a0,496 # 80010db0 <tickslock>
    80006bc8:	01010113          	addi	sp,sp,16
    80006bcc:	00001317          	auipc	t1,0x1
    80006bd0:	5cc30067          	jr	1484(t1) # 80008198 <initlock>

0000000080006bd4 <trapinithart>:
    80006bd4:	ff010113          	addi	sp,sp,-16
    80006bd8:	00813423          	sd	s0,8(sp)
    80006bdc:	01010413          	addi	s0,sp,16
    80006be0:	00000797          	auipc	a5,0x0
    80006be4:	30078793          	addi	a5,a5,768 # 80006ee0 <kernelvec>
    80006be8:	10579073          	csrw	stvec,a5
    80006bec:	00813403          	ld	s0,8(sp)
    80006bf0:	01010113          	addi	sp,sp,16
    80006bf4:	00008067          	ret

0000000080006bf8 <usertrap>:
    80006bf8:	ff010113          	addi	sp,sp,-16
    80006bfc:	00813423          	sd	s0,8(sp)
    80006c00:	01010413          	addi	s0,sp,16
    80006c04:	00813403          	ld	s0,8(sp)
    80006c08:	01010113          	addi	sp,sp,16
    80006c0c:	00008067          	ret

0000000080006c10 <usertrapret>:
    80006c10:	ff010113          	addi	sp,sp,-16
    80006c14:	00813423          	sd	s0,8(sp)
    80006c18:	01010413          	addi	s0,sp,16
    80006c1c:	00813403          	ld	s0,8(sp)
    80006c20:	01010113          	addi	sp,sp,16
    80006c24:	00008067          	ret

0000000080006c28 <kerneltrap>:
    80006c28:	fe010113          	addi	sp,sp,-32
    80006c2c:	00813823          	sd	s0,16(sp)
    80006c30:	00113c23          	sd	ra,24(sp)
    80006c34:	00913423          	sd	s1,8(sp)
    80006c38:	02010413          	addi	s0,sp,32
    80006c3c:	142025f3          	csrr	a1,scause
    80006c40:	100027f3          	csrr	a5,sstatus
    80006c44:	0027f793          	andi	a5,a5,2
    80006c48:	10079c63          	bnez	a5,80006d60 <kerneltrap+0x138>
    80006c4c:	142027f3          	csrr	a5,scause
    80006c50:	0207ce63          	bltz	a5,80006c8c <kerneltrap+0x64>
    80006c54:	00003517          	auipc	a0,0x3
    80006c58:	a3450513          	addi	a0,a0,-1484 # 80009688 <_ZL6digits+0x130>
    80006c5c:	00001097          	auipc	ra,0x1
    80006c60:	88c080e7          	jalr	-1908(ra) # 800074e8 <__printf>
    80006c64:	141025f3          	csrr	a1,sepc
    80006c68:	14302673          	csrr	a2,stval
    80006c6c:	00003517          	auipc	a0,0x3
    80006c70:	a2c50513          	addi	a0,a0,-1492 # 80009698 <_ZL6digits+0x140>
    80006c74:	00001097          	auipc	ra,0x1
    80006c78:	874080e7          	jalr	-1932(ra) # 800074e8 <__printf>
    80006c7c:	00003517          	auipc	a0,0x3
    80006c80:	a3450513          	addi	a0,a0,-1484 # 800096b0 <_ZL6digits+0x158>
    80006c84:	00001097          	auipc	ra,0x1
    80006c88:	808080e7          	jalr	-2040(ra) # 8000748c <panic>
    80006c8c:	0ff7f713          	andi	a4,a5,255
    80006c90:	00900693          	li	a3,9
    80006c94:	04d70063          	beq	a4,a3,80006cd4 <kerneltrap+0xac>
    80006c98:	fff00713          	li	a4,-1
    80006c9c:	03f71713          	slli	a4,a4,0x3f
    80006ca0:	00170713          	addi	a4,a4,1
    80006ca4:	fae798e3          	bne	a5,a4,80006c54 <kerneltrap+0x2c>
    80006ca8:	00000097          	auipc	ra,0x0
    80006cac:	e00080e7          	jalr	-512(ra) # 80006aa8 <cpuid>
    80006cb0:	06050663          	beqz	a0,80006d1c <kerneltrap+0xf4>
    80006cb4:	144027f3          	csrr	a5,sip
    80006cb8:	ffd7f793          	andi	a5,a5,-3
    80006cbc:	14479073          	csrw	sip,a5
    80006cc0:	01813083          	ld	ra,24(sp)
    80006cc4:	01013403          	ld	s0,16(sp)
    80006cc8:	00813483          	ld	s1,8(sp)
    80006ccc:	02010113          	addi	sp,sp,32
    80006cd0:	00008067          	ret
    80006cd4:	00000097          	auipc	ra,0x0
    80006cd8:	3d0080e7          	jalr	976(ra) # 800070a4 <plic_claim>
    80006cdc:	00a00793          	li	a5,10
    80006ce0:	00050493          	mv	s1,a0
    80006ce4:	06f50863          	beq	a0,a5,80006d54 <kerneltrap+0x12c>
    80006ce8:	fc050ce3          	beqz	a0,80006cc0 <kerneltrap+0x98>
    80006cec:	00050593          	mv	a1,a0
    80006cf0:	00003517          	auipc	a0,0x3
    80006cf4:	97850513          	addi	a0,a0,-1672 # 80009668 <_ZL6digits+0x110>
    80006cf8:	00000097          	auipc	ra,0x0
    80006cfc:	7f0080e7          	jalr	2032(ra) # 800074e8 <__printf>
    80006d00:	01013403          	ld	s0,16(sp)
    80006d04:	01813083          	ld	ra,24(sp)
    80006d08:	00048513          	mv	a0,s1
    80006d0c:	00813483          	ld	s1,8(sp)
    80006d10:	02010113          	addi	sp,sp,32
    80006d14:	00000317          	auipc	t1,0x0
    80006d18:	3c830067          	jr	968(t1) # 800070dc <plic_complete>
    80006d1c:	0000a517          	auipc	a0,0xa
    80006d20:	09450513          	addi	a0,a0,148 # 80010db0 <tickslock>
    80006d24:	00001097          	auipc	ra,0x1
    80006d28:	498080e7          	jalr	1176(ra) # 800081bc <acquire>
    80006d2c:	00005717          	auipc	a4,0x5
    80006d30:	ea870713          	addi	a4,a4,-344 # 8000bbd4 <ticks>
    80006d34:	00072783          	lw	a5,0(a4)
    80006d38:	0000a517          	auipc	a0,0xa
    80006d3c:	07850513          	addi	a0,a0,120 # 80010db0 <tickslock>
    80006d40:	0017879b          	addiw	a5,a5,1
    80006d44:	00f72023          	sw	a5,0(a4)
    80006d48:	00001097          	auipc	ra,0x1
    80006d4c:	540080e7          	jalr	1344(ra) # 80008288 <release>
    80006d50:	f65ff06f          	j	80006cb4 <kerneltrap+0x8c>
    80006d54:	00001097          	auipc	ra,0x1
    80006d58:	09c080e7          	jalr	156(ra) # 80007df0 <uartintr>
    80006d5c:	fa5ff06f          	j	80006d00 <kerneltrap+0xd8>
    80006d60:	00003517          	auipc	a0,0x3
    80006d64:	8e850513          	addi	a0,a0,-1816 # 80009648 <_ZL6digits+0xf0>
    80006d68:	00000097          	auipc	ra,0x0
    80006d6c:	724080e7          	jalr	1828(ra) # 8000748c <panic>

0000000080006d70 <clockintr>:
    80006d70:	fe010113          	addi	sp,sp,-32
    80006d74:	00813823          	sd	s0,16(sp)
    80006d78:	00913423          	sd	s1,8(sp)
    80006d7c:	00113c23          	sd	ra,24(sp)
    80006d80:	02010413          	addi	s0,sp,32
    80006d84:	0000a497          	auipc	s1,0xa
    80006d88:	02c48493          	addi	s1,s1,44 # 80010db0 <tickslock>
    80006d8c:	00048513          	mv	a0,s1
    80006d90:	00001097          	auipc	ra,0x1
    80006d94:	42c080e7          	jalr	1068(ra) # 800081bc <acquire>
    80006d98:	00005717          	auipc	a4,0x5
    80006d9c:	e3c70713          	addi	a4,a4,-452 # 8000bbd4 <ticks>
    80006da0:	00072783          	lw	a5,0(a4)
    80006da4:	01013403          	ld	s0,16(sp)
    80006da8:	01813083          	ld	ra,24(sp)
    80006dac:	00048513          	mv	a0,s1
    80006db0:	0017879b          	addiw	a5,a5,1
    80006db4:	00813483          	ld	s1,8(sp)
    80006db8:	00f72023          	sw	a5,0(a4)
    80006dbc:	02010113          	addi	sp,sp,32
    80006dc0:	00001317          	auipc	t1,0x1
    80006dc4:	4c830067          	jr	1224(t1) # 80008288 <release>

0000000080006dc8 <devintr>:
    80006dc8:	142027f3          	csrr	a5,scause
    80006dcc:	00000513          	li	a0,0
    80006dd0:	0007c463          	bltz	a5,80006dd8 <devintr+0x10>
    80006dd4:	00008067          	ret
    80006dd8:	fe010113          	addi	sp,sp,-32
    80006ddc:	00813823          	sd	s0,16(sp)
    80006de0:	00113c23          	sd	ra,24(sp)
    80006de4:	00913423          	sd	s1,8(sp)
    80006de8:	02010413          	addi	s0,sp,32
    80006dec:	0ff7f713          	andi	a4,a5,255
    80006df0:	00900693          	li	a3,9
    80006df4:	04d70c63          	beq	a4,a3,80006e4c <devintr+0x84>
    80006df8:	fff00713          	li	a4,-1
    80006dfc:	03f71713          	slli	a4,a4,0x3f
    80006e00:	00170713          	addi	a4,a4,1
    80006e04:	00e78c63          	beq	a5,a4,80006e1c <devintr+0x54>
    80006e08:	01813083          	ld	ra,24(sp)
    80006e0c:	01013403          	ld	s0,16(sp)
    80006e10:	00813483          	ld	s1,8(sp)
    80006e14:	02010113          	addi	sp,sp,32
    80006e18:	00008067          	ret
    80006e1c:	00000097          	auipc	ra,0x0
    80006e20:	c8c080e7          	jalr	-884(ra) # 80006aa8 <cpuid>
    80006e24:	06050663          	beqz	a0,80006e90 <devintr+0xc8>
    80006e28:	144027f3          	csrr	a5,sip
    80006e2c:	ffd7f793          	andi	a5,a5,-3
    80006e30:	14479073          	csrw	sip,a5
    80006e34:	01813083          	ld	ra,24(sp)
    80006e38:	01013403          	ld	s0,16(sp)
    80006e3c:	00813483          	ld	s1,8(sp)
    80006e40:	00200513          	li	a0,2
    80006e44:	02010113          	addi	sp,sp,32
    80006e48:	00008067          	ret
    80006e4c:	00000097          	auipc	ra,0x0
    80006e50:	258080e7          	jalr	600(ra) # 800070a4 <plic_claim>
    80006e54:	00a00793          	li	a5,10
    80006e58:	00050493          	mv	s1,a0
    80006e5c:	06f50663          	beq	a0,a5,80006ec8 <devintr+0x100>
    80006e60:	00100513          	li	a0,1
    80006e64:	fa0482e3          	beqz	s1,80006e08 <devintr+0x40>
    80006e68:	00048593          	mv	a1,s1
    80006e6c:	00002517          	auipc	a0,0x2
    80006e70:	7fc50513          	addi	a0,a0,2044 # 80009668 <_ZL6digits+0x110>
    80006e74:	00000097          	auipc	ra,0x0
    80006e78:	674080e7          	jalr	1652(ra) # 800074e8 <__printf>
    80006e7c:	00048513          	mv	a0,s1
    80006e80:	00000097          	auipc	ra,0x0
    80006e84:	25c080e7          	jalr	604(ra) # 800070dc <plic_complete>
    80006e88:	00100513          	li	a0,1
    80006e8c:	f7dff06f          	j	80006e08 <devintr+0x40>
    80006e90:	0000a517          	auipc	a0,0xa
    80006e94:	f2050513          	addi	a0,a0,-224 # 80010db0 <tickslock>
    80006e98:	00001097          	auipc	ra,0x1
    80006e9c:	324080e7          	jalr	804(ra) # 800081bc <acquire>
    80006ea0:	00005717          	auipc	a4,0x5
    80006ea4:	d3470713          	addi	a4,a4,-716 # 8000bbd4 <ticks>
    80006ea8:	00072783          	lw	a5,0(a4)
    80006eac:	0000a517          	auipc	a0,0xa
    80006eb0:	f0450513          	addi	a0,a0,-252 # 80010db0 <tickslock>
    80006eb4:	0017879b          	addiw	a5,a5,1
    80006eb8:	00f72023          	sw	a5,0(a4)
    80006ebc:	00001097          	auipc	ra,0x1
    80006ec0:	3cc080e7          	jalr	972(ra) # 80008288 <release>
    80006ec4:	f65ff06f          	j	80006e28 <devintr+0x60>
    80006ec8:	00001097          	auipc	ra,0x1
    80006ecc:	f28080e7          	jalr	-216(ra) # 80007df0 <uartintr>
    80006ed0:	fadff06f          	j	80006e7c <devintr+0xb4>
	...

0000000080006ee0 <kernelvec>:
    80006ee0:	f0010113          	addi	sp,sp,-256
    80006ee4:	00113023          	sd	ra,0(sp)
    80006ee8:	00213423          	sd	sp,8(sp)
    80006eec:	00313823          	sd	gp,16(sp)
    80006ef0:	00413c23          	sd	tp,24(sp)
    80006ef4:	02513023          	sd	t0,32(sp)
    80006ef8:	02613423          	sd	t1,40(sp)
    80006efc:	02713823          	sd	t2,48(sp)
    80006f00:	02813c23          	sd	s0,56(sp)
    80006f04:	04913023          	sd	s1,64(sp)
    80006f08:	04a13423          	sd	a0,72(sp)
    80006f0c:	04b13823          	sd	a1,80(sp)
    80006f10:	04c13c23          	sd	a2,88(sp)
    80006f14:	06d13023          	sd	a3,96(sp)
    80006f18:	06e13423          	sd	a4,104(sp)
    80006f1c:	06f13823          	sd	a5,112(sp)
    80006f20:	07013c23          	sd	a6,120(sp)
    80006f24:	09113023          	sd	a7,128(sp)
    80006f28:	09213423          	sd	s2,136(sp)
    80006f2c:	09313823          	sd	s3,144(sp)
    80006f30:	09413c23          	sd	s4,152(sp)
    80006f34:	0b513023          	sd	s5,160(sp)
    80006f38:	0b613423          	sd	s6,168(sp)
    80006f3c:	0b713823          	sd	s7,176(sp)
    80006f40:	0b813c23          	sd	s8,184(sp)
    80006f44:	0d913023          	sd	s9,192(sp)
    80006f48:	0da13423          	sd	s10,200(sp)
    80006f4c:	0db13823          	sd	s11,208(sp)
    80006f50:	0dc13c23          	sd	t3,216(sp)
    80006f54:	0fd13023          	sd	t4,224(sp)
    80006f58:	0fe13423          	sd	t5,232(sp)
    80006f5c:	0ff13823          	sd	t6,240(sp)
    80006f60:	cc9ff0ef          	jal	ra,80006c28 <kerneltrap>
    80006f64:	00013083          	ld	ra,0(sp)
    80006f68:	00813103          	ld	sp,8(sp)
    80006f6c:	01013183          	ld	gp,16(sp)
    80006f70:	02013283          	ld	t0,32(sp)
    80006f74:	02813303          	ld	t1,40(sp)
    80006f78:	03013383          	ld	t2,48(sp)
    80006f7c:	03813403          	ld	s0,56(sp)
    80006f80:	04013483          	ld	s1,64(sp)
    80006f84:	04813503          	ld	a0,72(sp)
    80006f88:	05013583          	ld	a1,80(sp)
    80006f8c:	05813603          	ld	a2,88(sp)
    80006f90:	06013683          	ld	a3,96(sp)
    80006f94:	06813703          	ld	a4,104(sp)
    80006f98:	07013783          	ld	a5,112(sp)
    80006f9c:	07813803          	ld	a6,120(sp)
    80006fa0:	08013883          	ld	a7,128(sp)
    80006fa4:	08813903          	ld	s2,136(sp)
    80006fa8:	09013983          	ld	s3,144(sp)
    80006fac:	09813a03          	ld	s4,152(sp)
    80006fb0:	0a013a83          	ld	s5,160(sp)
    80006fb4:	0a813b03          	ld	s6,168(sp)
    80006fb8:	0b013b83          	ld	s7,176(sp)
    80006fbc:	0b813c03          	ld	s8,184(sp)
    80006fc0:	0c013c83          	ld	s9,192(sp)
    80006fc4:	0c813d03          	ld	s10,200(sp)
    80006fc8:	0d013d83          	ld	s11,208(sp)
    80006fcc:	0d813e03          	ld	t3,216(sp)
    80006fd0:	0e013e83          	ld	t4,224(sp)
    80006fd4:	0e813f03          	ld	t5,232(sp)
    80006fd8:	0f013f83          	ld	t6,240(sp)
    80006fdc:	10010113          	addi	sp,sp,256
    80006fe0:	10200073          	sret
    80006fe4:	00000013          	nop
    80006fe8:	00000013          	nop
    80006fec:	00000013          	nop

0000000080006ff0 <timervec>:
    80006ff0:	34051573          	csrrw	a0,mscratch,a0
    80006ff4:	00b53023          	sd	a1,0(a0)
    80006ff8:	00c53423          	sd	a2,8(a0)
    80006ffc:	00d53823          	sd	a3,16(a0)
    80007000:	01853583          	ld	a1,24(a0)
    80007004:	02053603          	ld	a2,32(a0)
    80007008:	0005b683          	ld	a3,0(a1)
    8000700c:	00c686b3          	add	a3,a3,a2
    80007010:	00d5b023          	sd	a3,0(a1)
    80007014:	00200593          	li	a1,2
    80007018:	14459073          	csrw	sip,a1
    8000701c:	01053683          	ld	a3,16(a0)
    80007020:	00853603          	ld	a2,8(a0)
    80007024:	00053583          	ld	a1,0(a0)
    80007028:	34051573          	csrrw	a0,mscratch,a0
    8000702c:	30200073          	mret

0000000080007030 <plicinit>:
    80007030:	ff010113          	addi	sp,sp,-16
    80007034:	00813423          	sd	s0,8(sp)
    80007038:	01010413          	addi	s0,sp,16
    8000703c:	00813403          	ld	s0,8(sp)
    80007040:	0c0007b7          	lui	a5,0xc000
    80007044:	00100713          	li	a4,1
    80007048:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000704c:	00e7a223          	sw	a4,4(a5)
    80007050:	01010113          	addi	sp,sp,16
    80007054:	00008067          	ret

0000000080007058 <plicinithart>:
    80007058:	ff010113          	addi	sp,sp,-16
    8000705c:	00813023          	sd	s0,0(sp)
    80007060:	00113423          	sd	ra,8(sp)
    80007064:	01010413          	addi	s0,sp,16
    80007068:	00000097          	auipc	ra,0x0
    8000706c:	a40080e7          	jalr	-1472(ra) # 80006aa8 <cpuid>
    80007070:	0085171b          	slliw	a4,a0,0x8
    80007074:	0c0027b7          	lui	a5,0xc002
    80007078:	00e787b3          	add	a5,a5,a4
    8000707c:	40200713          	li	a4,1026
    80007080:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007084:	00813083          	ld	ra,8(sp)
    80007088:	00013403          	ld	s0,0(sp)
    8000708c:	00d5151b          	slliw	a0,a0,0xd
    80007090:	0c2017b7          	lui	a5,0xc201
    80007094:	00a78533          	add	a0,a5,a0
    80007098:	00052023          	sw	zero,0(a0)
    8000709c:	01010113          	addi	sp,sp,16
    800070a0:	00008067          	ret

00000000800070a4 <plic_claim>:
    800070a4:	ff010113          	addi	sp,sp,-16
    800070a8:	00813023          	sd	s0,0(sp)
    800070ac:	00113423          	sd	ra,8(sp)
    800070b0:	01010413          	addi	s0,sp,16
    800070b4:	00000097          	auipc	ra,0x0
    800070b8:	9f4080e7          	jalr	-1548(ra) # 80006aa8 <cpuid>
    800070bc:	00813083          	ld	ra,8(sp)
    800070c0:	00013403          	ld	s0,0(sp)
    800070c4:	00d5151b          	slliw	a0,a0,0xd
    800070c8:	0c2017b7          	lui	a5,0xc201
    800070cc:	00a78533          	add	a0,a5,a0
    800070d0:	00452503          	lw	a0,4(a0)
    800070d4:	01010113          	addi	sp,sp,16
    800070d8:	00008067          	ret

00000000800070dc <plic_complete>:
    800070dc:	fe010113          	addi	sp,sp,-32
    800070e0:	00813823          	sd	s0,16(sp)
    800070e4:	00913423          	sd	s1,8(sp)
    800070e8:	00113c23          	sd	ra,24(sp)
    800070ec:	02010413          	addi	s0,sp,32
    800070f0:	00050493          	mv	s1,a0
    800070f4:	00000097          	auipc	ra,0x0
    800070f8:	9b4080e7          	jalr	-1612(ra) # 80006aa8 <cpuid>
    800070fc:	01813083          	ld	ra,24(sp)
    80007100:	01013403          	ld	s0,16(sp)
    80007104:	00d5179b          	slliw	a5,a0,0xd
    80007108:	0c201737          	lui	a4,0xc201
    8000710c:	00f707b3          	add	a5,a4,a5
    80007110:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007114:	00813483          	ld	s1,8(sp)
    80007118:	02010113          	addi	sp,sp,32
    8000711c:	00008067          	ret

0000000080007120 <consolewrite>:
    80007120:	fb010113          	addi	sp,sp,-80
    80007124:	04813023          	sd	s0,64(sp)
    80007128:	04113423          	sd	ra,72(sp)
    8000712c:	02913c23          	sd	s1,56(sp)
    80007130:	03213823          	sd	s2,48(sp)
    80007134:	03313423          	sd	s3,40(sp)
    80007138:	03413023          	sd	s4,32(sp)
    8000713c:	01513c23          	sd	s5,24(sp)
    80007140:	05010413          	addi	s0,sp,80
    80007144:	06c05c63          	blez	a2,800071bc <consolewrite+0x9c>
    80007148:	00060993          	mv	s3,a2
    8000714c:	00050a13          	mv	s4,a0
    80007150:	00058493          	mv	s1,a1
    80007154:	00000913          	li	s2,0
    80007158:	fff00a93          	li	s5,-1
    8000715c:	01c0006f          	j	80007178 <consolewrite+0x58>
    80007160:	fbf44503          	lbu	a0,-65(s0)
    80007164:	0019091b          	addiw	s2,s2,1
    80007168:	00148493          	addi	s1,s1,1
    8000716c:	00001097          	auipc	ra,0x1
    80007170:	a9c080e7          	jalr	-1380(ra) # 80007c08 <uartputc>
    80007174:	03298063          	beq	s3,s2,80007194 <consolewrite+0x74>
    80007178:	00048613          	mv	a2,s1
    8000717c:	00100693          	li	a3,1
    80007180:	000a0593          	mv	a1,s4
    80007184:	fbf40513          	addi	a0,s0,-65
    80007188:	00000097          	auipc	ra,0x0
    8000718c:	9d8080e7          	jalr	-1576(ra) # 80006b60 <either_copyin>
    80007190:	fd5518e3          	bne	a0,s5,80007160 <consolewrite+0x40>
    80007194:	04813083          	ld	ra,72(sp)
    80007198:	04013403          	ld	s0,64(sp)
    8000719c:	03813483          	ld	s1,56(sp)
    800071a0:	02813983          	ld	s3,40(sp)
    800071a4:	02013a03          	ld	s4,32(sp)
    800071a8:	01813a83          	ld	s5,24(sp)
    800071ac:	00090513          	mv	a0,s2
    800071b0:	03013903          	ld	s2,48(sp)
    800071b4:	05010113          	addi	sp,sp,80
    800071b8:	00008067          	ret
    800071bc:	00000913          	li	s2,0
    800071c0:	fd5ff06f          	j	80007194 <consolewrite+0x74>

00000000800071c4 <consoleread>:
    800071c4:	f9010113          	addi	sp,sp,-112
    800071c8:	06813023          	sd	s0,96(sp)
    800071cc:	04913c23          	sd	s1,88(sp)
    800071d0:	05213823          	sd	s2,80(sp)
    800071d4:	05313423          	sd	s3,72(sp)
    800071d8:	05413023          	sd	s4,64(sp)
    800071dc:	03513c23          	sd	s5,56(sp)
    800071e0:	03613823          	sd	s6,48(sp)
    800071e4:	03713423          	sd	s7,40(sp)
    800071e8:	03813023          	sd	s8,32(sp)
    800071ec:	06113423          	sd	ra,104(sp)
    800071f0:	01913c23          	sd	s9,24(sp)
    800071f4:	07010413          	addi	s0,sp,112
    800071f8:	00060b93          	mv	s7,a2
    800071fc:	00050913          	mv	s2,a0
    80007200:	00058c13          	mv	s8,a1
    80007204:	00060b1b          	sext.w	s6,a2
    80007208:	0000a497          	auipc	s1,0xa
    8000720c:	bd048493          	addi	s1,s1,-1072 # 80010dd8 <cons>
    80007210:	00400993          	li	s3,4
    80007214:	fff00a13          	li	s4,-1
    80007218:	00a00a93          	li	s5,10
    8000721c:	05705e63          	blez	s7,80007278 <consoleread+0xb4>
    80007220:	09c4a703          	lw	a4,156(s1)
    80007224:	0984a783          	lw	a5,152(s1)
    80007228:	0007071b          	sext.w	a4,a4
    8000722c:	08e78463          	beq	a5,a4,800072b4 <consoleread+0xf0>
    80007230:	07f7f713          	andi	a4,a5,127
    80007234:	00e48733          	add	a4,s1,a4
    80007238:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000723c:	0017869b          	addiw	a3,a5,1
    80007240:	08d4ac23          	sw	a3,152(s1)
    80007244:	00070c9b          	sext.w	s9,a4
    80007248:	0b370663          	beq	a4,s3,800072f4 <consoleread+0x130>
    8000724c:	00100693          	li	a3,1
    80007250:	f9f40613          	addi	a2,s0,-97
    80007254:	000c0593          	mv	a1,s8
    80007258:	00090513          	mv	a0,s2
    8000725c:	f8e40fa3          	sb	a4,-97(s0)
    80007260:	00000097          	auipc	ra,0x0
    80007264:	8b4080e7          	jalr	-1868(ra) # 80006b14 <either_copyout>
    80007268:	01450863          	beq	a0,s4,80007278 <consoleread+0xb4>
    8000726c:	001c0c13          	addi	s8,s8,1
    80007270:	fffb8b9b          	addiw	s7,s7,-1
    80007274:	fb5c94e3          	bne	s9,s5,8000721c <consoleread+0x58>
    80007278:	000b851b          	sext.w	a0,s7
    8000727c:	06813083          	ld	ra,104(sp)
    80007280:	06013403          	ld	s0,96(sp)
    80007284:	05813483          	ld	s1,88(sp)
    80007288:	05013903          	ld	s2,80(sp)
    8000728c:	04813983          	ld	s3,72(sp)
    80007290:	04013a03          	ld	s4,64(sp)
    80007294:	03813a83          	ld	s5,56(sp)
    80007298:	02813b83          	ld	s7,40(sp)
    8000729c:	02013c03          	ld	s8,32(sp)
    800072a0:	01813c83          	ld	s9,24(sp)
    800072a4:	40ab053b          	subw	a0,s6,a0
    800072a8:	03013b03          	ld	s6,48(sp)
    800072ac:	07010113          	addi	sp,sp,112
    800072b0:	00008067          	ret
    800072b4:	00001097          	auipc	ra,0x1
    800072b8:	1d8080e7          	jalr	472(ra) # 8000848c <push_on>
    800072bc:	0984a703          	lw	a4,152(s1)
    800072c0:	09c4a783          	lw	a5,156(s1)
    800072c4:	0007879b          	sext.w	a5,a5
    800072c8:	fef70ce3          	beq	a4,a5,800072c0 <consoleread+0xfc>
    800072cc:	00001097          	auipc	ra,0x1
    800072d0:	234080e7          	jalr	564(ra) # 80008500 <pop_on>
    800072d4:	0984a783          	lw	a5,152(s1)
    800072d8:	07f7f713          	andi	a4,a5,127
    800072dc:	00e48733          	add	a4,s1,a4
    800072e0:	01874703          	lbu	a4,24(a4)
    800072e4:	0017869b          	addiw	a3,a5,1
    800072e8:	08d4ac23          	sw	a3,152(s1)
    800072ec:	00070c9b          	sext.w	s9,a4
    800072f0:	f5371ee3          	bne	a4,s3,8000724c <consoleread+0x88>
    800072f4:	000b851b          	sext.w	a0,s7
    800072f8:	f96bf2e3          	bgeu	s7,s6,8000727c <consoleread+0xb8>
    800072fc:	08f4ac23          	sw	a5,152(s1)
    80007300:	f7dff06f          	j	8000727c <consoleread+0xb8>

0000000080007304 <consputc>:
    80007304:	10000793          	li	a5,256
    80007308:	00f50663          	beq	a0,a5,80007314 <consputc+0x10>
    8000730c:	00001317          	auipc	t1,0x1
    80007310:	9f430067          	jr	-1548(t1) # 80007d00 <uartputc_sync>
    80007314:	ff010113          	addi	sp,sp,-16
    80007318:	00113423          	sd	ra,8(sp)
    8000731c:	00813023          	sd	s0,0(sp)
    80007320:	01010413          	addi	s0,sp,16
    80007324:	00800513          	li	a0,8
    80007328:	00001097          	auipc	ra,0x1
    8000732c:	9d8080e7          	jalr	-1576(ra) # 80007d00 <uartputc_sync>
    80007330:	02000513          	li	a0,32
    80007334:	00001097          	auipc	ra,0x1
    80007338:	9cc080e7          	jalr	-1588(ra) # 80007d00 <uartputc_sync>
    8000733c:	00013403          	ld	s0,0(sp)
    80007340:	00813083          	ld	ra,8(sp)
    80007344:	00800513          	li	a0,8
    80007348:	01010113          	addi	sp,sp,16
    8000734c:	00001317          	auipc	t1,0x1
    80007350:	9b430067          	jr	-1612(t1) # 80007d00 <uartputc_sync>

0000000080007354 <consoleintr>:
    80007354:	fe010113          	addi	sp,sp,-32
    80007358:	00813823          	sd	s0,16(sp)
    8000735c:	00913423          	sd	s1,8(sp)
    80007360:	01213023          	sd	s2,0(sp)
    80007364:	00113c23          	sd	ra,24(sp)
    80007368:	02010413          	addi	s0,sp,32
    8000736c:	0000a917          	auipc	s2,0xa
    80007370:	a6c90913          	addi	s2,s2,-1428 # 80010dd8 <cons>
    80007374:	00050493          	mv	s1,a0
    80007378:	00090513          	mv	a0,s2
    8000737c:	00001097          	auipc	ra,0x1
    80007380:	e40080e7          	jalr	-448(ra) # 800081bc <acquire>
    80007384:	02048c63          	beqz	s1,800073bc <consoleintr+0x68>
    80007388:	0a092783          	lw	a5,160(s2)
    8000738c:	09892703          	lw	a4,152(s2)
    80007390:	07f00693          	li	a3,127
    80007394:	40e7873b          	subw	a4,a5,a4
    80007398:	02e6e263          	bltu	a3,a4,800073bc <consoleintr+0x68>
    8000739c:	00d00713          	li	a4,13
    800073a0:	04e48063          	beq	s1,a4,800073e0 <consoleintr+0x8c>
    800073a4:	07f7f713          	andi	a4,a5,127
    800073a8:	00e90733          	add	a4,s2,a4
    800073ac:	0017879b          	addiw	a5,a5,1
    800073b0:	0af92023          	sw	a5,160(s2)
    800073b4:	00970c23          	sb	s1,24(a4)
    800073b8:	08f92e23          	sw	a5,156(s2)
    800073bc:	01013403          	ld	s0,16(sp)
    800073c0:	01813083          	ld	ra,24(sp)
    800073c4:	00813483          	ld	s1,8(sp)
    800073c8:	00013903          	ld	s2,0(sp)
    800073cc:	0000a517          	auipc	a0,0xa
    800073d0:	a0c50513          	addi	a0,a0,-1524 # 80010dd8 <cons>
    800073d4:	02010113          	addi	sp,sp,32
    800073d8:	00001317          	auipc	t1,0x1
    800073dc:	eb030067          	jr	-336(t1) # 80008288 <release>
    800073e0:	00a00493          	li	s1,10
    800073e4:	fc1ff06f          	j	800073a4 <consoleintr+0x50>

00000000800073e8 <consoleinit>:
    800073e8:	fe010113          	addi	sp,sp,-32
    800073ec:	00113c23          	sd	ra,24(sp)
    800073f0:	00813823          	sd	s0,16(sp)
    800073f4:	00913423          	sd	s1,8(sp)
    800073f8:	02010413          	addi	s0,sp,32
    800073fc:	0000a497          	auipc	s1,0xa
    80007400:	9dc48493          	addi	s1,s1,-1572 # 80010dd8 <cons>
    80007404:	00048513          	mv	a0,s1
    80007408:	00002597          	auipc	a1,0x2
    8000740c:	2b858593          	addi	a1,a1,696 # 800096c0 <_ZL6digits+0x168>
    80007410:	00001097          	auipc	ra,0x1
    80007414:	d88080e7          	jalr	-632(ra) # 80008198 <initlock>
    80007418:	00000097          	auipc	ra,0x0
    8000741c:	7ac080e7          	jalr	1964(ra) # 80007bc4 <uartinit>
    80007420:	01813083          	ld	ra,24(sp)
    80007424:	01013403          	ld	s0,16(sp)
    80007428:	00000797          	auipc	a5,0x0
    8000742c:	d9c78793          	addi	a5,a5,-612 # 800071c4 <consoleread>
    80007430:	0af4bc23          	sd	a5,184(s1)
    80007434:	00000797          	auipc	a5,0x0
    80007438:	cec78793          	addi	a5,a5,-788 # 80007120 <consolewrite>
    8000743c:	0cf4b023          	sd	a5,192(s1)
    80007440:	00813483          	ld	s1,8(sp)
    80007444:	02010113          	addi	sp,sp,32
    80007448:	00008067          	ret

000000008000744c <console_read>:
    8000744c:	ff010113          	addi	sp,sp,-16
    80007450:	00813423          	sd	s0,8(sp)
    80007454:	01010413          	addi	s0,sp,16
    80007458:	00813403          	ld	s0,8(sp)
    8000745c:	0000a317          	auipc	t1,0xa
    80007460:	a3433303          	ld	t1,-1484(t1) # 80010e90 <devsw+0x10>
    80007464:	01010113          	addi	sp,sp,16
    80007468:	00030067          	jr	t1

000000008000746c <console_write>:
    8000746c:	ff010113          	addi	sp,sp,-16
    80007470:	00813423          	sd	s0,8(sp)
    80007474:	01010413          	addi	s0,sp,16
    80007478:	00813403          	ld	s0,8(sp)
    8000747c:	0000a317          	auipc	t1,0xa
    80007480:	a1c33303          	ld	t1,-1508(t1) # 80010e98 <devsw+0x18>
    80007484:	01010113          	addi	sp,sp,16
    80007488:	00030067          	jr	t1

000000008000748c <panic>:
    8000748c:	fe010113          	addi	sp,sp,-32
    80007490:	00113c23          	sd	ra,24(sp)
    80007494:	00813823          	sd	s0,16(sp)
    80007498:	00913423          	sd	s1,8(sp)
    8000749c:	02010413          	addi	s0,sp,32
    800074a0:	00050493          	mv	s1,a0
    800074a4:	00002517          	auipc	a0,0x2
    800074a8:	22450513          	addi	a0,a0,548 # 800096c8 <_ZL6digits+0x170>
    800074ac:	0000a797          	auipc	a5,0xa
    800074b0:	a807a623          	sw	zero,-1396(a5) # 80010f38 <pr+0x18>
    800074b4:	00000097          	auipc	ra,0x0
    800074b8:	034080e7          	jalr	52(ra) # 800074e8 <__printf>
    800074bc:	00048513          	mv	a0,s1
    800074c0:	00000097          	auipc	ra,0x0
    800074c4:	028080e7          	jalr	40(ra) # 800074e8 <__printf>
    800074c8:	00002517          	auipc	a0,0x2
    800074cc:	c3850513          	addi	a0,a0,-968 # 80009100 <CONSOLE_STATUS+0xf0>
    800074d0:	00000097          	auipc	ra,0x0
    800074d4:	018080e7          	jalr	24(ra) # 800074e8 <__printf>
    800074d8:	00100793          	li	a5,1
    800074dc:	00004717          	auipc	a4,0x4
    800074e0:	6ef72e23          	sw	a5,1788(a4) # 8000bbd8 <panicked>
    800074e4:	0000006f          	j	800074e4 <panic+0x58>

00000000800074e8 <__printf>:
    800074e8:	f3010113          	addi	sp,sp,-208
    800074ec:	08813023          	sd	s0,128(sp)
    800074f0:	07313423          	sd	s3,104(sp)
    800074f4:	09010413          	addi	s0,sp,144
    800074f8:	05813023          	sd	s8,64(sp)
    800074fc:	08113423          	sd	ra,136(sp)
    80007500:	06913c23          	sd	s1,120(sp)
    80007504:	07213823          	sd	s2,112(sp)
    80007508:	07413023          	sd	s4,96(sp)
    8000750c:	05513c23          	sd	s5,88(sp)
    80007510:	05613823          	sd	s6,80(sp)
    80007514:	05713423          	sd	s7,72(sp)
    80007518:	03913c23          	sd	s9,56(sp)
    8000751c:	03a13823          	sd	s10,48(sp)
    80007520:	03b13423          	sd	s11,40(sp)
    80007524:	0000a317          	auipc	t1,0xa
    80007528:	9fc30313          	addi	t1,t1,-1540 # 80010f20 <pr>
    8000752c:	01832c03          	lw	s8,24(t1)
    80007530:	00b43423          	sd	a1,8(s0)
    80007534:	00c43823          	sd	a2,16(s0)
    80007538:	00d43c23          	sd	a3,24(s0)
    8000753c:	02e43023          	sd	a4,32(s0)
    80007540:	02f43423          	sd	a5,40(s0)
    80007544:	03043823          	sd	a6,48(s0)
    80007548:	03143c23          	sd	a7,56(s0)
    8000754c:	00050993          	mv	s3,a0
    80007550:	4a0c1663          	bnez	s8,800079fc <__printf+0x514>
    80007554:	60098c63          	beqz	s3,80007b6c <__printf+0x684>
    80007558:	0009c503          	lbu	a0,0(s3)
    8000755c:	00840793          	addi	a5,s0,8
    80007560:	f6f43c23          	sd	a5,-136(s0)
    80007564:	00000493          	li	s1,0
    80007568:	22050063          	beqz	a0,80007788 <__printf+0x2a0>
    8000756c:	00002a37          	lui	s4,0x2
    80007570:	00018ab7          	lui	s5,0x18
    80007574:	000f4b37          	lui	s6,0xf4
    80007578:	00989bb7          	lui	s7,0x989
    8000757c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007580:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007584:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007588:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000758c:	00148c9b          	addiw	s9,s1,1
    80007590:	02500793          	li	a5,37
    80007594:	01998933          	add	s2,s3,s9
    80007598:	38f51263          	bne	a0,a5,8000791c <__printf+0x434>
    8000759c:	00094783          	lbu	a5,0(s2)
    800075a0:	00078c9b          	sext.w	s9,a5
    800075a4:	1e078263          	beqz	a5,80007788 <__printf+0x2a0>
    800075a8:	0024849b          	addiw	s1,s1,2
    800075ac:	07000713          	li	a4,112
    800075b0:	00998933          	add	s2,s3,s1
    800075b4:	38e78a63          	beq	a5,a4,80007948 <__printf+0x460>
    800075b8:	20f76863          	bltu	a4,a5,800077c8 <__printf+0x2e0>
    800075bc:	42a78863          	beq	a5,a0,800079ec <__printf+0x504>
    800075c0:	06400713          	li	a4,100
    800075c4:	40e79663          	bne	a5,a4,800079d0 <__printf+0x4e8>
    800075c8:	f7843783          	ld	a5,-136(s0)
    800075cc:	0007a603          	lw	a2,0(a5)
    800075d0:	00878793          	addi	a5,a5,8
    800075d4:	f6f43c23          	sd	a5,-136(s0)
    800075d8:	42064a63          	bltz	a2,80007a0c <__printf+0x524>
    800075dc:	00a00713          	li	a4,10
    800075e0:	02e677bb          	remuw	a5,a2,a4
    800075e4:	00002d97          	auipc	s11,0x2
    800075e8:	10cd8d93          	addi	s11,s11,268 # 800096f0 <digits>
    800075ec:	00900593          	li	a1,9
    800075f0:	0006051b          	sext.w	a0,a2
    800075f4:	00000c93          	li	s9,0
    800075f8:	02079793          	slli	a5,a5,0x20
    800075fc:	0207d793          	srli	a5,a5,0x20
    80007600:	00fd87b3          	add	a5,s11,a5
    80007604:	0007c783          	lbu	a5,0(a5)
    80007608:	02e656bb          	divuw	a3,a2,a4
    8000760c:	f8f40023          	sb	a5,-128(s0)
    80007610:	14c5d863          	bge	a1,a2,80007760 <__printf+0x278>
    80007614:	06300593          	li	a1,99
    80007618:	00100c93          	li	s9,1
    8000761c:	02e6f7bb          	remuw	a5,a3,a4
    80007620:	02079793          	slli	a5,a5,0x20
    80007624:	0207d793          	srli	a5,a5,0x20
    80007628:	00fd87b3          	add	a5,s11,a5
    8000762c:	0007c783          	lbu	a5,0(a5)
    80007630:	02e6d73b          	divuw	a4,a3,a4
    80007634:	f8f400a3          	sb	a5,-127(s0)
    80007638:	12a5f463          	bgeu	a1,a0,80007760 <__printf+0x278>
    8000763c:	00a00693          	li	a3,10
    80007640:	00900593          	li	a1,9
    80007644:	02d777bb          	remuw	a5,a4,a3
    80007648:	02079793          	slli	a5,a5,0x20
    8000764c:	0207d793          	srli	a5,a5,0x20
    80007650:	00fd87b3          	add	a5,s11,a5
    80007654:	0007c503          	lbu	a0,0(a5)
    80007658:	02d757bb          	divuw	a5,a4,a3
    8000765c:	f8a40123          	sb	a0,-126(s0)
    80007660:	48e5f263          	bgeu	a1,a4,80007ae4 <__printf+0x5fc>
    80007664:	06300513          	li	a0,99
    80007668:	02d7f5bb          	remuw	a1,a5,a3
    8000766c:	02059593          	slli	a1,a1,0x20
    80007670:	0205d593          	srli	a1,a1,0x20
    80007674:	00bd85b3          	add	a1,s11,a1
    80007678:	0005c583          	lbu	a1,0(a1)
    8000767c:	02d7d7bb          	divuw	a5,a5,a3
    80007680:	f8b401a3          	sb	a1,-125(s0)
    80007684:	48e57263          	bgeu	a0,a4,80007b08 <__printf+0x620>
    80007688:	3e700513          	li	a0,999
    8000768c:	02d7f5bb          	remuw	a1,a5,a3
    80007690:	02059593          	slli	a1,a1,0x20
    80007694:	0205d593          	srli	a1,a1,0x20
    80007698:	00bd85b3          	add	a1,s11,a1
    8000769c:	0005c583          	lbu	a1,0(a1)
    800076a0:	02d7d7bb          	divuw	a5,a5,a3
    800076a4:	f8b40223          	sb	a1,-124(s0)
    800076a8:	46e57663          	bgeu	a0,a4,80007b14 <__printf+0x62c>
    800076ac:	02d7f5bb          	remuw	a1,a5,a3
    800076b0:	02059593          	slli	a1,a1,0x20
    800076b4:	0205d593          	srli	a1,a1,0x20
    800076b8:	00bd85b3          	add	a1,s11,a1
    800076bc:	0005c583          	lbu	a1,0(a1)
    800076c0:	02d7d7bb          	divuw	a5,a5,a3
    800076c4:	f8b402a3          	sb	a1,-123(s0)
    800076c8:	46ea7863          	bgeu	s4,a4,80007b38 <__printf+0x650>
    800076cc:	02d7f5bb          	remuw	a1,a5,a3
    800076d0:	02059593          	slli	a1,a1,0x20
    800076d4:	0205d593          	srli	a1,a1,0x20
    800076d8:	00bd85b3          	add	a1,s11,a1
    800076dc:	0005c583          	lbu	a1,0(a1)
    800076e0:	02d7d7bb          	divuw	a5,a5,a3
    800076e4:	f8b40323          	sb	a1,-122(s0)
    800076e8:	3eeaf863          	bgeu	s5,a4,80007ad8 <__printf+0x5f0>
    800076ec:	02d7f5bb          	remuw	a1,a5,a3
    800076f0:	02059593          	slli	a1,a1,0x20
    800076f4:	0205d593          	srli	a1,a1,0x20
    800076f8:	00bd85b3          	add	a1,s11,a1
    800076fc:	0005c583          	lbu	a1,0(a1)
    80007700:	02d7d7bb          	divuw	a5,a5,a3
    80007704:	f8b403a3          	sb	a1,-121(s0)
    80007708:	42eb7e63          	bgeu	s6,a4,80007b44 <__printf+0x65c>
    8000770c:	02d7f5bb          	remuw	a1,a5,a3
    80007710:	02059593          	slli	a1,a1,0x20
    80007714:	0205d593          	srli	a1,a1,0x20
    80007718:	00bd85b3          	add	a1,s11,a1
    8000771c:	0005c583          	lbu	a1,0(a1)
    80007720:	02d7d7bb          	divuw	a5,a5,a3
    80007724:	f8b40423          	sb	a1,-120(s0)
    80007728:	42ebfc63          	bgeu	s7,a4,80007b60 <__printf+0x678>
    8000772c:	02079793          	slli	a5,a5,0x20
    80007730:	0207d793          	srli	a5,a5,0x20
    80007734:	00fd8db3          	add	s11,s11,a5
    80007738:	000dc703          	lbu	a4,0(s11)
    8000773c:	00a00793          	li	a5,10
    80007740:	00900c93          	li	s9,9
    80007744:	f8e404a3          	sb	a4,-119(s0)
    80007748:	00065c63          	bgez	a2,80007760 <__printf+0x278>
    8000774c:	f9040713          	addi	a4,s0,-112
    80007750:	00f70733          	add	a4,a4,a5
    80007754:	02d00693          	li	a3,45
    80007758:	fed70823          	sb	a3,-16(a4)
    8000775c:	00078c93          	mv	s9,a5
    80007760:	f8040793          	addi	a5,s0,-128
    80007764:	01978cb3          	add	s9,a5,s9
    80007768:	f7f40d13          	addi	s10,s0,-129
    8000776c:	000cc503          	lbu	a0,0(s9)
    80007770:	fffc8c93          	addi	s9,s9,-1
    80007774:	00000097          	auipc	ra,0x0
    80007778:	b90080e7          	jalr	-1136(ra) # 80007304 <consputc>
    8000777c:	ffac98e3          	bne	s9,s10,8000776c <__printf+0x284>
    80007780:	00094503          	lbu	a0,0(s2)
    80007784:	e00514e3          	bnez	a0,8000758c <__printf+0xa4>
    80007788:	1a0c1663          	bnez	s8,80007934 <__printf+0x44c>
    8000778c:	08813083          	ld	ra,136(sp)
    80007790:	08013403          	ld	s0,128(sp)
    80007794:	07813483          	ld	s1,120(sp)
    80007798:	07013903          	ld	s2,112(sp)
    8000779c:	06813983          	ld	s3,104(sp)
    800077a0:	06013a03          	ld	s4,96(sp)
    800077a4:	05813a83          	ld	s5,88(sp)
    800077a8:	05013b03          	ld	s6,80(sp)
    800077ac:	04813b83          	ld	s7,72(sp)
    800077b0:	04013c03          	ld	s8,64(sp)
    800077b4:	03813c83          	ld	s9,56(sp)
    800077b8:	03013d03          	ld	s10,48(sp)
    800077bc:	02813d83          	ld	s11,40(sp)
    800077c0:	0d010113          	addi	sp,sp,208
    800077c4:	00008067          	ret
    800077c8:	07300713          	li	a4,115
    800077cc:	1ce78a63          	beq	a5,a4,800079a0 <__printf+0x4b8>
    800077d0:	07800713          	li	a4,120
    800077d4:	1ee79e63          	bne	a5,a4,800079d0 <__printf+0x4e8>
    800077d8:	f7843783          	ld	a5,-136(s0)
    800077dc:	0007a703          	lw	a4,0(a5)
    800077e0:	00878793          	addi	a5,a5,8
    800077e4:	f6f43c23          	sd	a5,-136(s0)
    800077e8:	28074263          	bltz	a4,80007a6c <__printf+0x584>
    800077ec:	00002d97          	auipc	s11,0x2
    800077f0:	f04d8d93          	addi	s11,s11,-252 # 800096f0 <digits>
    800077f4:	00f77793          	andi	a5,a4,15
    800077f8:	00fd87b3          	add	a5,s11,a5
    800077fc:	0007c683          	lbu	a3,0(a5)
    80007800:	00f00613          	li	a2,15
    80007804:	0007079b          	sext.w	a5,a4
    80007808:	f8d40023          	sb	a3,-128(s0)
    8000780c:	0047559b          	srliw	a1,a4,0x4
    80007810:	0047569b          	srliw	a3,a4,0x4
    80007814:	00000c93          	li	s9,0
    80007818:	0ee65063          	bge	a2,a4,800078f8 <__printf+0x410>
    8000781c:	00f6f693          	andi	a3,a3,15
    80007820:	00dd86b3          	add	a3,s11,a3
    80007824:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007828:	0087d79b          	srliw	a5,a5,0x8
    8000782c:	00100c93          	li	s9,1
    80007830:	f8d400a3          	sb	a3,-127(s0)
    80007834:	0cb67263          	bgeu	a2,a1,800078f8 <__printf+0x410>
    80007838:	00f7f693          	andi	a3,a5,15
    8000783c:	00dd86b3          	add	a3,s11,a3
    80007840:	0006c583          	lbu	a1,0(a3)
    80007844:	00f00613          	li	a2,15
    80007848:	0047d69b          	srliw	a3,a5,0x4
    8000784c:	f8b40123          	sb	a1,-126(s0)
    80007850:	0047d593          	srli	a1,a5,0x4
    80007854:	28f67e63          	bgeu	a2,a5,80007af0 <__printf+0x608>
    80007858:	00f6f693          	andi	a3,a3,15
    8000785c:	00dd86b3          	add	a3,s11,a3
    80007860:	0006c503          	lbu	a0,0(a3)
    80007864:	0087d813          	srli	a6,a5,0x8
    80007868:	0087d69b          	srliw	a3,a5,0x8
    8000786c:	f8a401a3          	sb	a0,-125(s0)
    80007870:	28b67663          	bgeu	a2,a1,80007afc <__printf+0x614>
    80007874:	00f6f693          	andi	a3,a3,15
    80007878:	00dd86b3          	add	a3,s11,a3
    8000787c:	0006c583          	lbu	a1,0(a3)
    80007880:	00c7d513          	srli	a0,a5,0xc
    80007884:	00c7d69b          	srliw	a3,a5,0xc
    80007888:	f8b40223          	sb	a1,-124(s0)
    8000788c:	29067a63          	bgeu	a2,a6,80007b20 <__printf+0x638>
    80007890:	00f6f693          	andi	a3,a3,15
    80007894:	00dd86b3          	add	a3,s11,a3
    80007898:	0006c583          	lbu	a1,0(a3)
    8000789c:	0107d813          	srli	a6,a5,0x10
    800078a0:	0107d69b          	srliw	a3,a5,0x10
    800078a4:	f8b402a3          	sb	a1,-123(s0)
    800078a8:	28a67263          	bgeu	a2,a0,80007b2c <__printf+0x644>
    800078ac:	00f6f693          	andi	a3,a3,15
    800078b0:	00dd86b3          	add	a3,s11,a3
    800078b4:	0006c683          	lbu	a3,0(a3)
    800078b8:	0147d79b          	srliw	a5,a5,0x14
    800078bc:	f8d40323          	sb	a3,-122(s0)
    800078c0:	21067663          	bgeu	a2,a6,80007acc <__printf+0x5e4>
    800078c4:	02079793          	slli	a5,a5,0x20
    800078c8:	0207d793          	srli	a5,a5,0x20
    800078cc:	00fd8db3          	add	s11,s11,a5
    800078d0:	000dc683          	lbu	a3,0(s11)
    800078d4:	00800793          	li	a5,8
    800078d8:	00700c93          	li	s9,7
    800078dc:	f8d403a3          	sb	a3,-121(s0)
    800078e0:	00075c63          	bgez	a4,800078f8 <__printf+0x410>
    800078e4:	f9040713          	addi	a4,s0,-112
    800078e8:	00f70733          	add	a4,a4,a5
    800078ec:	02d00693          	li	a3,45
    800078f0:	fed70823          	sb	a3,-16(a4)
    800078f4:	00078c93          	mv	s9,a5
    800078f8:	f8040793          	addi	a5,s0,-128
    800078fc:	01978cb3          	add	s9,a5,s9
    80007900:	f7f40d13          	addi	s10,s0,-129
    80007904:	000cc503          	lbu	a0,0(s9)
    80007908:	fffc8c93          	addi	s9,s9,-1
    8000790c:	00000097          	auipc	ra,0x0
    80007910:	9f8080e7          	jalr	-1544(ra) # 80007304 <consputc>
    80007914:	ff9d18e3          	bne	s10,s9,80007904 <__printf+0x41c>
    80007918:	0100006f          	j	80007928 <__printf+0x440>
    8000791c:	00000097          	auipc	ra,0x0
    80007920:	9e8080e7          	jalr	-1560(ra) # 80007304 <consputc>
    80007924:	000c8493          	mv	s1,s9
    80007928:	00094503          	lbu	a0,0(s2)
    8000792c:	c60510e3          	bnez	a0,8000758c <__printf+0xa4>
    80007930:	e40c0ee3          	beqz	s8,8000778c <__printf+0x2a4>
    80007934:	00009517          	auipc	a0,0x9
    80007938:	5ec50513          	addi	a0,a0,1516 # 80010f20 <pr>
    8000793c:	00001097          	auipc	ra,0x1
    80007940:	94c080e7          	jalr	-1716(ra) # 80008288 <release>
    80007944:	e49ff06f          	j	8000778c <__printf+0x2a4>
    80007948:	f7843783          	ld	a5,-136(s0)
    8000794c:	03000513          	li	a0,48
    80007950:	01000d13          	li	s10,16
    80007954:	00878713          	addi	a4,a5,8
    80007958:	0007bc83          	ld	s9,0(a5)
    8000795c:	f6e43c23          	sd	a4,-136(s0)
    80007960:	00000097          	auipc	ra,0x0
    80007964:	9a4080e7          	jalr	-1628(ra) # 80007304 <consputc>
    80007968:	07800513          	li	a0,120
    8000796c:	00000097          	auipc	ra,0x0
    80007970:	998080e7          	jalr	-1640(ra) # 80007304 <consputc>
    80007974:	00002d97          	auipc	s11,0x2
    80007978:	d7cd8d93          	addi	s11,s11,-644 # 800096f0 <digits>
    8000797c:	03ccd793          	srli	a5,s9,0x3c
    80007980:	00fd87b3          	add	a5,s11,a5
    80007984:	0007c503          	lbu	a0,0(a5)
    80007988:	fffd0d1b          	addiw	s10,s10,-1
    8000798c:	004c9c93          	slli	s9,s9,0x4
    80007990:	00000097          	auipc	ra,0x0
    80007994:	974080e7          	jalr	-1676(ra) # 80007304 <consputc>
    80007998:	fe0d12e3          	bnez	s10,8000797c <__printf+0x494>
    8000799c:	f8dff06f          	j	80007928 <__printf+0x440>
    800079a0:	f7843783          	ld	a5,-136(s0)
    800079a4:	0007bc83          	ld	s9,0(a5)
    800079a8:	00878793          	addi	a5,a5,8
    800079ac:	f6f43c23          	sd	a5,-136(s0)
    800079b0:	000c9a63          	bnez	s9,800079c4 <__printf+0x4dc>
    800079b4:	1080006f          	j	80007abc <__printf+0x5d4>
    800079b8:	001c8c93          	addi	s9,s9,1
    800079bc:	00000097          	auipc	ra,0x0
    800079c0:	948080e7          	jalr	-1720(ra) # 80007304 <consputc>
    800079c4:	000cc503          	lbu	a0,0(s9)
    800079c8:	fe0518e3          	bnez	a0,800079b8 <__printf+0x4d0>
    800079cc:	f5dff06f          	j	80007928 <__printf+0x440>
    800079d0:	02500513          	li	a0,37
    800079d4:	00000097          	auipc	ra,0x0
    800079d8:	930080e7          	jalr	-1744(ra) # 80007304 <consputc>
    800079dc:	000c8513          	mv	a0,s9
    800079e0:	00000097          	auipc	ra,0x0
    800079e4:	924080e7          	jalr	-1756(ra) # 80007304 <consputc>
    800079e8:	f41ff06f          	j	80007928 <__printf+0x440>
    800079ec:	02500513          	li	a0,37
    800079f0:	00000097          	auipc	ra,0x0
    800079f4:	914080e7          	jalr	-1772(ra) # 80007304 <consputc>
    800079f8:	f31ff06f          	j	80007928 <__printf+0x440>
    800079fc:	00030513          	mv	a0,t1
    80007a00:	00000097          	auipc	ra,0x0
    80007a04:	7bc080e7          	jalr	1980(ra) # 800081bc <acquire>
    80007a08:	b4dff06f          	j	80007554 <__printf+0x6c>
    80007a0c:	40c0053b          	negw	a0,a2
    80007a10:	00a00713          	li	a4,10
    80007a14:	02e576bb          	remuw	a3,a0,a4
    80007a18:	00002d97          	auipc	s11,0x2
    80007a1c:	cd8d8d93          	addi	s11,s11,-808 # 800096f0 <digits>
    80007a20:	ff700593          	li	a1,-9
    80007a24:	02069693          	slli	a3,a3,0x20
    80007a28:	0206d693          	srli	a3,a3,0x20
    80007a2c:	00dd86b3          	add	a3,s11,a3
    80007a30:	0006c683          	lbu	a3,0(a3)
    80007a34:	02e557bb          	divuw	a5,a0,a4
    80007a38:	f8d40023          	sb	a3,-128(s0)
    80007a3c:	10b65e63          	bge	a2,a1,80007b58 <__printf+0x670>
    80007a40:	06300593          	li	a1,99
    80007a44:	02e7f6bb          	remuw	a3,a5,a4
    80007a48:	02069693          	slli	a3,a3,0x20
    80007a4c:	0206d693          	srli	a3,a3,0x20
    80007a50:	00dd86b3          	add	a3,s11,a3
    80007a54:	0006c683          	lbu	a3,0(a3)
    80007a58:	02e7d73b          	divuw	a4,a5,a4
    80007a5c:	00200793          	li	a5,2
    80007a60:	f8d400a3          	sb	a3,-127(s0)
    80007a64:	bca5ece3          	bltu	a1,a0,8000763c <__printf+0x154>
    80007a68:	ce5ff06f          	j	8000774c <__printf+0x264>
    80007a6c:	40e007bb          	negw	a5,a4
    80007a70:	00002d97          	auipc	s11,0x2
    80007a74:	c80d8d93          	addi	s11,s11,-896 # 800096f0 <digits>
    80007a78:	00f7f693          	andi	a3,a5,15
    80007a7c:	00dd86b3          	add	a3,s11,a3
    80007a80:	0006c583          	lbu	a1,0(a3)
    80007a84:	ff100613          	li	a2,-15
    80007a88:	0047d69b          	srliw	a3,a5,0x4
    80007a8c:	f8b40023          	sb	a1,-128(s0)
    80007a90:	0047d59b          	srliw	a1,a5,0x4
    80007a94:	0ac75e63          	bge	a4,a2,80007b50 <__printf+0x668>
    80007a98:	00f6f693          	andi	a3,a3,15
    80007a9c:	00dd86b3          	add	a3,s11,a3
    80007aa0:	0006c603          	lbu	a2,0(a3)
    80007aa4:	00f00693          	li	a3,15
    80007aa8:	0087d79b          	srliw	a5,a5,0x8
    80007aac:	f8c400a3          	sb	a2,-127(s0)
    80007ab0:	d8b6e4e3          	bltu	a3,a1,80007838 <__printf+0x350>
    80007ab4:	00200793          	li	a5,2
    80007ab8:	e2dff06f          	j	800078e4 <__printf+0x3fc>
    80007abc:	00002c97          	auipc	s9,0x2
    80007ac0:	c14c8c93          	addi	s9,s9,-1004 # 800096d0 <_ZL6digits+0x178>
    80007ac4:	02800513          	li	a0,40
    80007ac8:	ef1ff06f          	j	800079b8 <__printf+0x4d0>
    80007acc:	00700793          	li	a5,7
    80007ad0:	00600c93          	li	s9,6
    80007ad4:	e0dff06f          	j	800078e0 <__printf+0x3f8>
    80007ad8:	00700793          	li	a5,7
    80007adc:	00600c93          	li	s9,6
    80007ae0:	c69ff06f          	j	80007748 <__printf+0x260>
    80007ae4:	00300793          	li	a5,3
    80007ae8:	00200c93          	li	s9,2
    80007aec:	c5dff06f          	j	80007748 <__printf+0x260>
    80007af0:	00300793          	li	a5,3
    80007af4:	00200c93          	li	s9,2
    80007af8:	de9ff06f          	j	800078e0 <__printf+0x3f8>
    80007afc:	00400793          	li	a5,4
    80007b00:	00300c93          	li	s9,3
    80007b04:	dddff06f          	j	800078e0 <__printf+0x3f8>
    80007b08:	00400793          	li	a5,4
    80007b0c:	00300c93          	li	s9,3
    80007b10:	c39ff06f          	j	80007748 <__printf+0x260>
    80007b14:	00500793          	li	a5,5
    80007b18:	00400c93          	li	s9,4
    80007b1c:	c2dff06f          	j	80007748 <__printf+0x260>
    80007b20:	00500793          	li	a5,5
    80007b24:	00400c93          	li	s9,4
    80007b28:	db9ff06f          	j	800078e0 <__printf+0x3f8>
    80007b2c:	00600793          	li	a5,6
    80007b30:	00500c93          	li	s9,5
    80007b34:	dadff06f          	j	800078e0 <__printf+0x3f8>
    80007b38:	00600793          	li	a5,6
    80007b3c:	00500c93          	li	s9,5
    80007b40:	c09ff06f          	j	80007748 <__printf+0x260>
    80007b44:	00800793          	li	a5,8
    80007b48:	00700c93          	li	s9,7
    80007b4c:	bfdff06f          	j	80007748 <__printf+0x260>
    80007b50:	00100793          	li	a5,1
    80007b54:	d91ff06f          	j	800078e4 <__printf+0x3fc>
    80007b58:	00100793          	li	a5,1
    80007b5c:	bf1ff06f          	j	8000774c <__printf+0x264>
    80007b60:	00900793          	li	a5,9
    80007b64:	00800c93          	li	s9,8
    80007b68:	be1ff06f          	j	80007748 <__printf+0x260>
    80007b6c:	00002517          	auipc	a0,0x2
    80007b70:	b6c50513          	addi	a0,a0,-1172 # 800096d8 <_ZL6digits+0x180>
    80007b74:	00000097          	auipc	ra,0x0
    80007b78:	918080e7          	jalr	-1768(ra) # 8000748c <panic>

0000000080007b7c <printfinit>:
    80007b7c:	fe010113          	addi	sp,sp,-32
    80007b80:	00813823          	sd	s0,16(sp)
    80007b84:	00913423          	sd	s1,8(sp)
    80007b88:	00113c23          	sd	ra,24(sp)
    80007b8c:	02010413          	addi	s0,sp,32
    80007b90:	00009497          	auipc	s1,0x9
    80007b94:	39048493          	addi	s1,s1,912 # 80010f20 <pr>
    80007b98:	00048513          	mv	a0,s1
    80007b9c:	00002597          	auipc	a1,0x2
    80007ba0:	b4c58593          	addi	a1,a1,-1204 # 800096e8 <_ZL6digits+0x190>
    80007ba4:	00000097          	auipc	ra,0x0
    80007ba8:	5f4080e7          	jalr	1524(ra) # 80008198 <initlock>
    80007bac:	01813083          	ld	ra,24(sp)
    80007bb0:	01013403          	ld	s0,16(sp)
    80007bb4:	0004ac23          	sw	zero,24(s1)
    80007bb8:	00813483          	ld	s1,8(sp)
    80007bbc:	02010113          	addi	sp,sp,32
    80007bc0:	00008067          	ret

0000000080007bc4 <uartinit>:
    80007bc4:	ff010113          	addi	sp,sp,-16
    80007bc8:	00813423          	sd	s0,8(sp)
    80007bcc:	01010413          	addi	s0,sp,16
    80007bd0:	100007b7          	lui	a5,0x10000
    80007bd4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007bd8:	f8000713          	li	a4,-128
    80007bdc:	00e781a3          	sb	a4,3(a5)
    80007be0:	00300713          	li	a4,3
    80007be4:	00e78023          	sb	a4,0(a5)
    80007be8:	000780a3          	sb	zero,1(a5)
    80007bec:	00e781a3          	sb	a4,3(a5)
    80007bf0:	00700693          	li	a3,7
    80007bf4:	00d78123          	sb	a3,2(a5)
    80007bf8:	00e780a3          	sb	a4,1(a5)
    80007bfc:	00813403          	ld	s0,8(sp)
    80007c00:	01010113          	addi	sp,sp,16
    80007c04:	00008067          	ret

0000000080007c08 <uartputc>:
    80007c08:	00004797          	auipc	a5,0x4
    80007c0c:	fd07a783          	lw	a5,-48(a5) # 8000bbd8 <panicked>
    80007c10:	00078463          	beqz	a5,80007c18 <uartputc+0x10>
    80007c14:	0000006f          	j	80007c14 <uartputc+0xc>
    80007c18:	fd010113          	addi	sp,sp,-48
    80007c1c:	02813023          	sd	s0,32(sp)
    80007c20:	00913c23          	sd	s1,24(sp)
    80007c24:	01213823          	sd	s2,16(sp)
    80007c28:	01313423          	sd	s3,8(sp)
    80007c2c:	02113423          	sd	ra,40(sp)
    80007c30:	03010413          	addi	s0,sp,48
    80007c34:	00004917          	auipc	s2,0x4
    80007c38:	fac90913          	addi	s2,s2,-84 # 8000bbe0 <uart_tx_r>
    80007c3c:	00093783          	ld	a5,0(s2)
    80007c40:	00004497          	auipc	s1,0x4
    80007c44:	fa848493          	addi	s1,s1,-88 # 8000bbe8 <uart_tx_w>
    80007c48:	0004b703          	ld	a4,0(s1)
    80007c4c:	02078693          	addi	a3,a5,32
    80007c50:	00050993          	mv	s3,a0
    80007c54:	02e69c63          	bne	a3,a4,80007c8c <uartputc+0x84>
    80007c58:	00001097          	auipc	ra,0x1
    80007c5c:	834080e7          	jalr	-1996(ra) # 8000848c <push_on>
    80007c60:	00093783          	ld	a5,0(s2)
    80007c64:	0004b703          	ld	a4,0(s1)
    80007c68:	02078793          	addi	a5,a5,32
    80007c6c:	00e79463          	bne	a5,a4,80007c74 <uartputc+0x6c>
    80007c70:	0000006f          	j	80007c70 <uartputc+0x68>
    80007c74:	00001097          	auipc	ra,0x1
    80007c78:	88c080e7          	jalr	-1908(ra) # 80008500 <pop_on>
    80007c7c:	00093783          	ld	a5,0(s2)
    80007c80:	0004b703          	ld	a4,0(s1)
    80007c84:	02078693          	addi	a3,a5,32
    80007c88:	fce688e3          	beq	a3,a4,80007c58 <uartputc+0x50>
    80007c8c:	01f77693          	andi	a3,a4,31
    80007c90:	00009597          	auipc	a1,0x9
    80007c94:	2b058593          	addi	a1,a1,688 # 80010f40 <uart_tx_buf>
    80007c98:	00d586b3          	add	a3,a1,a3
    80007c9c:	00170713          	addi	a4,a4,1
    80007ca0:	01368023          	sb	s3,0(a3)
    80007ca4:	00e4b023          	sd	a4,0(s1)
    80007ca8:	10000637          	lui	a2,0x10000
    80007cac:	02f71063          	bne	a4,a5,80007ccc <uartputc+0xc4>
    80007cb0:	0340006f          	j	80007ce4 <uartputc+0xdc>
    80007cb4:	00074703          	lbu	a4,0(a4)
    80007cb8:	00f93023          	sd	a5,0(s2)
    80007cbc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007cc0:	00093783          	ld	a5,0(s2)
    80007cc4:	0004b703          	ld	a4,0(s1)
    80007cc8:	00f70e63          	beq	a4,a5,80007ce4 <uartputc+0xdc>
    80007ccc:	00564683          	lbu	a3,5(a2)
    80007cd0:	01f7f713          	andi	a4,a5,31
    80007cd4:	00e58733          	add	a4,a1,a4
    80007cd8:	0206f693          	andi	a3,a3,32
    80007cdc:	00178793          	addi	a5,a5,1
    80007ce0:	fc069ae3          	bnez	a3,80007cb4 <uartputc+0xac>
    80007ce4:	02813083          	ld	ra,40(sp)
    80007ce8:	02013403          	ld	s0,32(sp)
    80007cec:	01813483          	ld	s1,24(sp)
    80007cf0:	01013903          	ld	s2,16(sp)
    80007cf4:	00813983          	ld	s3,8(sp)
    80007cf8:	03010113          	addi	sp,sp,48
    80007cfc:	00008067          	ret

0000000080007d00 <uartputc_sync>:
    80007d00:	ff010113          	addi	sp,sp,-16
    80007d04:	00813423          	sd	s0,8(sp)
    80007d08:	01010413          	addi	s0,sp,16
    80007d0c:	00004717          	auipc	a4,0x4
    80007d10:	ecc72703          	lw	a4,-308(a4) # 8000bbd8 <panicked>
    80007d14:	02071663          	bnez	a4,80007d40 <uartputc_sync+0x40>
    80007d18:	00050793          	mv	a5,a0
    80007d1c:	100006b7          	lui	a3,0x10000
    80007d20:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007d24:	02077713          	andi	a4,a4,32
    80007d28:	fe070ce3          	beqz	a4,80007d20 <uartputc_sync+0x20>
    80007d2c:	0ff7f793          	andi	a5,a5,255
    80007d30:	00f68023          	sb	a5,0(a3)
    80007d34:	00813403          	ld	s0,8(sp)
    80007d38:	01010113          	addi	sp,sp,16
    80007d3c:	00008067          	ret
    80007d40:	0000006f          	j	80007d40 <uartputc_sync+0x40>

0000000080007d44 <uartstart>:
    80007d44:	ff010113          	addi	sp,sp,-16
    80007d48:	00813423          	sd	s0,8(sp)
    80007d4c:	01010413          	addi	s0,sp,16
    80007d50:	00004617          	auipc	a2,0x4
    80007d54:	e9060613          	addi	a2,a2,-368 # 8000bbe0 <uart_tx_r>
    80007d58:	00004517          	auipc	a0,0x4
    80007d5c:	e9050513          	addi	a0,a0,-368 # 8000bbe8 <uart_tx_w>
    80007d60:	00063783          	ld	a5,0(a2)
    80007d64:	00053703          	ld	a4,0(a0)
    80007d68:	04f70263          	beq	a4,a5,80007dac <uartstart+0x68>
    80007d6c:	100005b7          	lui	a1,0x10000
    80007d70:	00009817          	auipc	a6,0x9
    80007d74:	1d080813          	addi	a6,a6,464 # 80010f40 <uart_tx_buf>
    80007d78:	01c0006f          	j	80007d94 <uartstart+0x50>
    80007d7c:	0006c703          	lbu	a4,0(a3)
    80007d80:	00f63023          	sd	a5,0(a2)
    80007d84:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007d88:	00063783          	ld	a5,0(a2)
    80007d8c:	00053703          	ld	a4,0(a0)
    80007d90:	00f70e63          	beq	a4,a5,80007dac <uartstart+0x68>
    80007d94:	01f7f713          	andi	a4,a5,31
    80007d98:	00e806b3          	add	a3,a6,a4
    80007d9c:	0055c703          	lbu	a4,5(a1)
    80007da0:	00178793          	addi	a5,a5,1
    80007da4:	02077713          	andi	a4,a4,32
    80007da8:	fc071ae3          	bnez	a4,80007d7c <uartstart+0x38>
    80007dac:	00813403          	ld	s0,8(sp)
    80007db0:	01010113          	addi	sp,sp,16
    80007db4:	00008067          	ret

0000000080007db8 <uartgetc>:
    80007db8:	ff010113          	addi	sp,sp,-16
    80007dbc:	00813423          	sd	s0,8(sp)
    80007dc0:	01010413          	addi	s0,sp,16
    80007dc4:	10000737          	lui	a4,0x10000
    80007dc8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007dcc:	0017f793          	andi	a5,a5,1
    80007dd0:	00078c63          	beqz	a5,80007de8 <uartgetc+0x30>
    80007dd4:	00074503          	lbu	a0,0(a4)
    80007dd8:	0ff57513          	andi	a0,a0,255
    80007ddc:	00813403          	ld	s0,8(sp)
    80007de0:	01010113          	addi	sp,sp,16
    80007de4:	00008067          	ret
    80007de8:	fff00513          	li	a0,-1
    80007dec:	ff1ff06f          	j	80007ddc <uartgetc+0x24>

0000000080007df0 <uartintr>:
    80007df0:	100007b7          	lui	a5,0x10000
    80007df4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007df8:	0017f793          	andi	a5,a5,1
    80007dfc:	0a078463          	beqz	a5,80007ea4 <uartintr+0xb4>
    80007e00:	fe010113          	addi	sp,sp,-32
    80007e04:	00813823          	sd	s0,16(sp)
    80007e08:	00913423          	sd	s1,8(sp)
    80007e0c:	00113c23          	sd	ra,24(sp)
    80007e10:	02010413          	addi	s0,sp,32
    80007e14:	100004b7          	lui	s1,0x10000
    80007e18:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007e1c:	0ff57513          	andi	a0,a0,255
    80007e20:	fffff097          	auipc	ra,0xfffff
    80007e24:	534080e7          	jalr	1332(ra) # 80007354 <consoleintr>
    80007e28:	0054c783          	lbu	a5,5(s1)
    80007e2c:	0017f793          	andi	a5,a5,1
    80007e30:	fe0794e3          	bnez	a5,80007e18 <uartintr+0x28>
    80007e34:	00004617          	auipc	a2,0x4
    80007e38:	dac60613          	addi	a2,a2,-596 # 8000bbe0 <uart_tx_r>
    80007e3c:	00004517          	auipc	a0,0x4
    80007e40:	dac50513          	addi	a0,a0,-596 # 8000bbe8 <uart_tx_w>
    80007e44:	00063783          	ld	a5,0(a2)
    80007e48:	00053703          	ld	a4,0(a0)
    80007e4c:	04f70263          	beq	a4,a5,80007e90 <uartintr+0xa0>
    80007e50:	100005b7          	lui	a1,0x10000
    80007e54:	00009817          	auipc	a6,0x9
    80007e58:	0ec80813          	addi	a6,a6,236 # 80010f40 <uart_tx_buf>
    80007e5c:	01c0006f          	j	80007e78 <uartintr+0x88>
    80007e60:	0006c703          	lbu	a4,0(a3)
    80007e64:	00f63023          	sd	a5,0(a2)
    80007e68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007e6c:	00063783          	ld	a5,0(a2)
    80007e70:	00053703          	ld	a4,0(a0)
    80007e74:	00f70e63          	beq	a4,a5,80007e90 <uartintr+0xa0>
    80007e78:	01f7f713          	andi	a4,a5,31
    80007e7c:	00e806b3          	add	a3,a6,a4
    80007e80:	0055c703          	lbu	a4,5(a1)
    80007e84:	00178793          	addi	a5,a5,1
    80007e88:	02077713          	andi	a4,a4,32
    80007e8c:	fc071ae3          	bnez	a4,80007e60 <uartintr+0x70>
    80007e90:	01813083          	ld	ra,24(sp)
    80007e94:	01013403          	ld	s0,16(sp)
    80007e98:	00813483          	ld	s1,8(sp)
    80007e9c:	02010113          	addi	sp,sp,32
    80007ea0:	00008067          	ret
    80007ea4:	00004617          	auipc	a2,0x4
    80007ea8:	d3c60613          	addi	a2,a2,-708 # 8000bbe0 <uart_tx_r>
    80007eac:	00004517          	auipc	a0,0x4
    80007eb0:	d3c50513          	addi	a0,a0,-708 # 8000bbe8 <uart_tx_w>
    80007eb4:	00063783          	ld	a5,0(a2)
    80007eb8:	00053703          	ld	a4,0(a0)
    80007ebc:	04f70263          	beq	a4,a5,80007f00 <uartintr+0x110>
    80007ec0:	100005b7          	lui	a1,0x10000
    80007ec4:	00009817          	auipc	a6,0x9
    80007ec8:	07c80813          	addi	a6,a6,124 # 80010f40 <uart_tx_buf>
    80007ecc:	01c0006f          	j	80007ee8 <uartintr+0xf8>
    80007ed0:	0006c703          	lbu	a4,0(a3)
    80007ed4:	00f63023          	sd	a5,0(a2)
    80007ed8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007edc:	00063783          	ld	a5,0(a2)
    80007ee0:	00053703          	ld	a4,0(a0)
    80007ee4:	02f70063          	beq	a4,a5,80007f04 <uartintr+0x114>
    80007ee8:	01f7f713          	andi	a4,a5,31
    80007eec:	00e806b3          	add	a3,a6,a4
    80007ef0:	0055c703          	lbu	a4,5(a1)
    80007ef4:	00178793          	addi	a5,a5,1
    80007ef8:	02077713          	andi	a4,a4,32
    80007efc:	fc071ae3          	bnez	a4,80007ed0 <uartintr+0xe0>
    80007f00:	00008067          	ret
    80007f04:	00008067          	ret

0000000080007f08 <kinit>:
    80007f08:	fc010113          	addi	sp,sp,-64
    80007f0c:	02913423          	sd	s1,40(sp)
    80007f10:	fffff7b7          	lui	a5,0xfffff
    80007f14:	0000a497          	auipc	s1,0xa
    80007f18:	04b48493          	addi	s1,s1,75 # 80011f5f <end+0xfff>
    80007f1c:	02813823          	sd	s0,48(sp)
    80007f20:	01313c23          	sd	s3,24(sp)
    80007f24:	00f4f4b3          	and	s1,s1,a5
    80007f28:	02113c23          	sd	ra,56(sp)
    80007f2c:	03213023          	sd	s2,32(sp)
    80007f30:	01413823          	sd	s4,16(sp)
    80007f34:	01513423          	sd	s5,8(sp)
    80007f38:	04010413          	addi	s0,sp,64
    80007f3c:	000017b7          	lui	a5,0x1
    80007f40:	01100993          	li	s3,17
    80007f44:	00f487b3          	add	a5,s1,a5
    80007f48:	01b99993          	slli	s3,s3,0x1b
    80007f4c:	06f9e063          	bltu	s3,a5,80007fac <kinit+0xa4>
    80007f50:	00009a97          	auipc	s5,0x9
    80007f54:	010a8a93          	addi	s5,s5,16 # 80010f60 <end>
    80007f58:	0754ec63          	bltu	s1,s5,80007fd0 <kinit+0xc8>
    80007f5c:	0734fa63          	bgeu	s1,s3,80007fd0 <kinit+0xc8>
    80007f60:	00088a37          	lui	s4,0x88
    80007f64:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007f68:	00004917          	auipc	s2,0x4
    80007f6c:	c8890913          	addi	s2,s2,-888 # 8000bbf0 <kmem>
    80007f70:	00ca1a13          	slli	s4,s4,0xc
    80007f74:	0140006f          	j	80007f88 <kinit+0x80>
    80007f78:	000017b7          	lui	a5,0x1
    80007f7c:	00f484b3          	add	s1,s1,a5
    80007f80:	0554e863          	bltu	s1,s5,80007fd0 <kinit+0xc8>
    80007f84:	0534f663          	bgeu	s1,s3,80007fd0 <kinit+0xc8>
    80007f88:	00001637          	lui	a2,0x1
    80007f8c:	00100593          	li	a1,1
    80007f90:	00048513          	mv	a0,s1
    80007f94:	00000097          	auipc	ra,0x0
    80007f98:	5e4080e7          	jalr	1508(ra) # 80008578 <__memset>
    80007f9c:	00093783          	ld	a5,0(s2)
    80007fa0:	00f4b023          	sd	a5,0(s1)
    80007fa4:	00993023          	sd	s1,0(s2)
    80007fa8:	fd4498e3          	bne	s1,s4,80007f78 <kinit+0x70>
    80007fac:	03813083          	ld	ra,56(sp)
    80007fb0:	03013403          	ld	s0,48(sp)
    80007fb4:	02813483          	ld	s1,40(sp)
    80007fb8:	02013903          	ld	s2,32(sp)
    80007fbc:	01813983          	ld	s3,24(sp)
    80007fc0:	01013a03          	ld	s4,16(sp)
    80007fc4:	00813a83          	ld	s5,8(sp)
    80007fc8:	04010113          	addi	sp,sp,64
    80007fcc:	00008067          	ret
    80007fd0:	00001517          	auipc	a0,0x1
    80007fd4:	73850513          	addi	a0,a0,1848 # 80009708 <digits+0x18>
    80007fd8:	fffff097          	auipc	ra,0xfffff
    80007fdc:	4b4080e7          	jalr	1204(ra) # 8000748c <panic>

0000000080007fe0 <freerange>:
    80007fe0:	fc010113          	addi	sp,sp,-64
    80007fe4:	000017b7          	lui	a5,0x1
    80007fe8:	02913423          	sd	s1,40(sp)
    80007fec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007ff0:	009504b3          	add	s1,a0,s1
    80007ff4:	fffff537          	lui	a0,0xfffff
    80007ff8:	02813823          	sd	s0,48(sp)
    80007ffc:	02113c23          	sd	ra,56(sp)
    80008000:	03213023          	sd	s2,32(sp)
    80008004:	01313c23          	sd	s3,24(sp)
    80008008:	01413823          	sd	s4,16(sp)
    8000800c:	01513423          	sd	s5,8(sp)
    80008010:	01613023          	sd	s6,0(sp)
    80008014:	04010413          	addi	s0,sp,64
    80008018:	00a4f4b3          	and	s1,s1,a0
    8000801c:	00f487b3          	add	a5,s1,a5
    80008020:	06f5e463          	bltu	a1,a5,80008088 <freerange+0xa8>
    80008024:	00009a97          	auipc	s5,0x9
    80008028:	f3ca8a93          	addi	s5,s5,-196 # 80010f60 <end>
    8000802c:	0954e263          	bltu	s1,s5,800080b0 <freerange+0xd0>
    80008030:	01100993          	li	s3,17
    80008034:	01b99993          	slli	s3,s3,0x1b
    80008038:	0734fc63          	bgeu	s1,s3,800080b0 <freerange+0xd0>
    8000803c:	00058a13          	mv	s4,a1
    80008040:	00004917          	auipc	s2,0x4
    80008044:	bb090913          	addi	s2,s2,-1104 # 8000bbf0 <kmem>
    80008048:	00002b37          	lui	s6,0x2
    8000804c:	0140006f          	j	80008060 <freerange+0x80>
    80008050:	000017b7          	lui	a5,0x1
    80008054:	00f484b3          	add	s1,s1,a5
    80008058:	0554ec63          	bltu	s1,s5,800080b0 <freerange+0xd0>
    8000805c:	0534fa63          	bgeu	s1,s3,800080b0 <freerange+0xd0>
    80008060:	00001637          	lui	a2,0x1
    80008064:	00100593          	li	a1,1
    80008068:	00048513          	mv	a0,s1
    8000806c:	00000097          	auipc	ra,0x0
    80008070:	50c080e7          	jalr	1292(ra) # 80008578 <__memset>
    80008074:	00093703          	ld	a4,0(s2)
    80008078:	016487b3          	add	a5,s1,s6
    8000807c:	00e4b023          	sd	a4,0(s1)
    80008080:	00993023          	sd	s1,0(s2)
    80008084:	fcfa76e3          	bgeu	s4,a5,80008050 <freerange+0x70>
    80008088:	03813083          	ld	ra,56(sp)
    8000808c:	03013403          	ld	s0,48(sp)
    80008090:	02813483          	ld	s1,40(sp)
    80008094:	02013903          	ld	s2,32(sp)
    80008098:	01813983          	ld	s3,24(sp)
    8000809c:	01013a03          	ld	s4,16(sp)
    800080a0:	00813a83          	ld	s5,8(sp)
    800080a4:	00013b03          	ld	s6,0(sp)
    800080a8:	04010113          	addi	sp,sp,64
    800080ac:	00008067          	ret
    800080b0:	00001517          	auipc	a0,0x1
    800080b4:	65850513          	addi	a0,a0,1624 # 80009708 <digits+0x18>
    800080b8:	fffff097          	auipc	ra,0xfffff
    800080bc:	3d4080e7          	jalr	980(ra) # 8000748c <panic>

00000000800080c0 <kfree>:
    800080c0:	fe010113          	addi	sp,sp,-32
    800080c4:	00813823          	sd	s0,16(sp)
    800080c8:	00113c23          	sd	ra,24(sp)
    800080cc:	00913423          	sd	s1,8(sp)
    800080d0:	02010413          	addi	s0,sp,32
    800080d4:	03451793          	slli	a5,a0,0x34
    800080d8:	04079c63          	bnez	a5,80008130 <kfree+0x70>
    800080dc:	00009797          	auipc	a5,0x9
    800080e0:	e8478793          	addi	a5,a5,-380 # 80010f60 <end>
    800080e4:	00050493          	mv	s1,a0
    800080e8:	04f56463          	bltu	a0,a5,80008130 <kfree+0x70>
    800080ec:	01100793          	li	a5,17
    800080f0:	01b79793          	slli	a5,a5,0x1b
    800080f4:	02f57e63          	bgeu	a0,a5,80008130 <kfree+0x70>
    800080f8:	00001637          	lui	a2,0x1
    800080fc:	00100593          	li	a1,1
    80008100:	00000097          	auipc	ra,0x0
    80008104:	478080e7          	jalr	1144(ra) # 80008578 <__memset>
    80008108:	00004797          	auipc	a5,0x4
    8000810c:	ae878793          	addi	a5,a5,-1304 # 8000bbf0 <kmem>
    80008110:	0007b703          	ld	a4,0(a5)
    80008114:	01813083          	ld	ra,24(sp)
    80008118:	01013403          	ld	s0,16(sp)
    8000811c:	00e4b023          	sd	a4,0(s1)
    80008120:	0097b023          	sd	s1,0(a5)
    80008124:	00813483          	ld	s1,8(sp)
    80008128:	02010113          	addi	sp,sp,32
    8000812c:	00008067          	ret
    80008130:	00001517          	auipc	a0,0x1
    80008134:	5d850513          	addi	a0,a0,1496 # 80009708 <digits+0x18>
    80008138:	fffff097          	auipc	ra,0xfffff
    8000813c:	354080e7          	jalr	852(ra) # 8000748c <panic>

0000000080008140 <kalloc>:
    80008140:	fe010113          	addi	sp,sp,-32
    80008144:	00813823          	sd	s0,16(sp)
    80008148:	00913423          	sd	s1,8(sp)
    8000814c:	00113c23          	sd	ra,24(sp)
    80008150:	02010413          	addi	s0,sp,32
    80008154:	00004797          	auipc	a5,0x4
    80008158:	a9c78793          	addi	a5,a5,-1380 # 8000bbf0 <kmem>
    8000815c:	0007b483          	ld	s1,0(a5)
    80008160:	02048063          	beqz	s1,80008180 <kalloc+0x40>
    80008164:	0004b703          	ld	a4,0(s1)
    80008168:	00001637          	lui	a2,0x1
    8000816c:	00500593          	li	a1,5
    80008170:	00048513          	mv	a0,s1
    80008174:	00e7b023          	sd	a4,0(a5)
    80008178:	00000097          	auipc	ra,0x0
    8000817c:	400080e7          	jalr	1024(ra) # 80008578 <__memset>
    80008180:	01813083          	ld	ra,24(sp)
    80008184:	01013403          	ld	s0,16(sp)
    80008188:	00048513          	mv	a0,s1
    8000818c:	00813483          	ld	s1,8(sp)
    80008190:	02010113          	addi	sp,sp,32
    80008194:	00008067          	ret

0000000080008198 <initlock>:
    80008198:	ff010113          	addi	sp,sp,-16
    8000819c:	00813423          	sd	s0,8(sp)
    800081a0:	01010413          	addi	s0,sp,16
    800081a4:	00813403          	ld	s0,8(sp)
    800081a8:	00b53423          	sd	a1,8(a0)
    800081ac:	00052023          	sw	zero,0(a0)
    800081b0:	00053823          	sd	zero,16(a0)
    800081b4:	01010113          	addi	sp,sp,16
    800081b8:	00008067          	ret

00000000800081bc <acquire>:
    800081bc:	fe010113          	addi	sp,sp,-32
    800081c0:	00813823          	sd	s0,16(sp)
    800081c4:	00913423          	sd	s1,8(sp)
    800081c8:	00113c23          	sd	ra,24(sp)
    800081cc:	01213023          	sd	s2,0(sp)
    800081d0:	02010413          	addi	s0,sp,32
    800081d4:	00050493          	mv	s1,a0
    800081d8:	10002973          	csrr	s2,sstatus
    800081dc:	100027f3          	csrr	a5,sstatus
    800081e0:	ffd7f793          	andi	a5,a5,-3
    800081e4:	10079073          	csrw	sstatus,a5
    800081e8:	fffff097          	auipc	ra,0xfffff
    800081ec:	8e0080e7          	jalr	-1824(ra) # 80006ac8 <mycpu>
    800081f0:	07852783          	lw	a5,120(a0)
    800081f4:	06078e63          	beqz	a5,80008270 <acquire+0xb4>
    800081f8:	fffff097          	auipc	ra,0xfffff
    800081fc:	8d0080e7          	jalr	-1840(ra) # 80006ac8 <mycpu>
    80008200:	07852783          	lw	a5,120(a0)
    80008204:	0004a703          	lw	a4,0(s1)
    80008208:	0017879b          	addiw	a5,a5,1
    8000820c:	06f52c23          	sw	a5,120(a0)
    80008210:	04071063          	bnez	a4,80008250 <acquire+0x94>
    80008214:	00100713          	li	a4,1
    80008218:	00070793          	mv	a5,a4
    8000821c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008220:	0007879b          	sext.w	a5,a5
    80008224:	fe079ae3          	bnez	a5,80008218 <acquire+0x5c>
    80008228:	0ff0000f          	fence
    8000822c:	fffff097          	auipc	ra,0xfffff
    80008230:	89c080e7          	jalr	-1892(ra) # 80006ac8 <mycpu>
    80008234:	01813083          	ld	ra,24(sp)
    80008238:	01013403          	ld	s0,16(sp)
    8000823c:	00a4b823          	sd	a0,16(s1)
    80008240:	00013903          	ld	s2,0(sp)
    80008244:	00813483          	ld	s1,8(sp)
    80008248:	02010113          	addi	sp,sp,32
    8000824c:	00008067          	ret
    80008250:	0104b903          	ld	s2,16(s1)
    80008254:	fffff097          	auipc	ra,0xfffff
    80008258:	874080e7          	jalr	-1932(ra) # 80006ac8 <mycpu>
    8000825c:	faa91ce3          	bne	s2,a0,80008214 <acquire+0x58>
    80008260:	00001517          	auipc	a0,0x1
    80008264:	4b050513          	addi	a0,a0,1200 # 80009710 <digits+0x20>
    80008268:	fffff097          	auipc	ra,0xfffff
    8000826c:	224080e7          	jalr	548(ra) # 8000748c <panic>
    80008270:	00195913          	srli	s2,s2,0x1
    80008274:	fffff097          	auipc	ra,0xfffff
    80008278:	854080e7          	jalr	-1964(ra) # 80006ac8 <mycpu>
    8000827c:	00197913          	andi	s2,s2,1
    80008280:	07252e23          	sw	s2,124(a0)
    80008284:	f75ff06f          	j	800081f8 <acquire+0x3c>

0000000080008288 <release>:
    80008288:	fe010113          	addi	sp,sp,-32
    8000828c:	00813823          	sd	s0,16(sp)
    80008290:	00113c23          	sd	ra,24(sp)
    80008294:	00913423          	sd	s1,8(sp)
    80008298:	01213023          	sd	s2,0(sp)
    8000829c:	02010413          	addi	s0,sp,32
    800082a0:	00052783          	lw	a5,0(a0)
    800082a4:	00079a63          	bnez	a5,800082b8 <release+0x30>
    800082a8:	00001517          	auipc	a0,0x1
    800082ac:	47050513          	addi	a0,a0,1136 # 80009718 <digits+0x28>
    800082b0:	fffff097          	auipc	ra,0xfffff
    800082b4:	1dc080e7          	jalr	476(ra) # 8000748c <panic>
    800082b8:	01053903          	ld	s2,16(a0)
    800082bc:	00050493          	mv	s1,a0
    800082c0:	fffff097          	auipc	ra,0xfffff
    800082c4:	808080e7          	jalr	-2040(ra) # 80006ac8 <mycpu>
    800082c8:	fea910e3          	bne	s2,a0,800082a8 <release+0x20>
    800082cc:	0004b823          	sd	zero,16(s1)
    800082d0:	0ff0000f          	fence
    800082d4:	0f50000f          	fence	iorw,ow
    800082d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800082dc:	ffffe097          	auipc	ra,0xffffe
    800082e0:	7ec080e7          	jalr	2028(ra) # 80006ac8 <mycpu>
    800082e4:	100027f3          	csrr	a5,sstatus
    800082e8:	0027f793          	andi	a5,a5,2
    800082ec:	04079a63          	bnez	a5,80008340 <release+0xb8>
    800082f0:	07852783          	lw	a5,120(a0)
    800082f4:	02f05e63          	blez	a5,80008330 <release+0xa8>
    800082f8:	fff7871b          	addiw	a4,a5,-1
    800082fc:	06e52c23          	sw	a4,120(a0)
    80008300:	00071c63          	bnez	a4,80008318 <release+0x90>
    80008304:	07c52783          	lw	a5,124(a0)
    80008308:	00078863          	beqz	a5,80008318 <release+0x90>
    8000830c:	100027f3          	csrr	a5,sstatus
    80008310:	0027e793          	ori	a5,a5,2
    80008314:	10079073          	csrw	sstatus,a5
    80008318:	01813083          	ld	ra,24(sp)
    8000831c:	01013403          	ld	s0,16(sp)
    80008320:	00813483          	ld	s1,8(sp)
    80008324:	00013903          	ld	s2,0(sp)
    80008328:	02010113          	addi	sp,sp,32
    8000832c:	00008067          	ret
    80008330:	00001517          	auipc	a0,0x1
    80008334:	40850513          	addi	a0,a0,1032 # 80009738 <digits+0x48>
    80008338:	fffff097          	auipc	ra,0xfffff
    8000833c:	154080e7          	jalr	340(ra) # 8000748c <panic>
    80008340:	00001517          	auipc	a0,0x1
    80008344:	3e050513          	addi	a0,a0,992 # 80009720 <digits+0x30>
    80008348:	fffff097          	auipc	ra,0xfffff
    8000834c:	144080e7          	jalr	324(ra) # 8000748c <panic>

0000000080008350 <holding>:
    80008350:	00052783          	lw	a5,0(a0)
    80008354:	00079663          	bnez	a5,80008360 <holding+0x10>
    80008358:	00000513          	li	a0,0
    8000835c:	00008067          	ret
    80008360:	fe010113          	addi	sp,sp,-32
    80008364:	00813823          	sd	s0,16(sp)
    80008368:	00913423          	sd	s1,8(sp)
    8000836c:	00113c23          	sd	ra,24(sp)
    80008370:	02010413          	addi	s0,sp,32
    80008374:	01053483          	ld	s1,16(a0)
    80008378:	ffffe097          	auipc	ra,0xffffe
    8000837c:	750080e7          	jalr	1872(ra) # 80006ac8 <mycpu>
    80008380:	01813083          	ld	ra,24(sp)
    80008384:	01013403          	ld	s0,16(sp)
    80008388:	40a48533          	sub	a0,s1,a0
    8000838c:	00153513          	seqz	a0,a0
    80008390:	00813483          	ld	s1,8(sp)
    80008394:	02010113          	addi	sp,sp,32
    80008398:	00008067          	ret

000000008000839c <push_off>:
    8000839c:	fe010113          	addi	sp,sp,-32
    800083a0:	00813823          	sd	s0,16(sp)
    800083a4:	00113c23          	sd	ra,24(sp)
    800083a8:	00913423          	sd	s1,8(sp)
    800083ac:	02010413          	addi	s0,sp,32
    800083b0:	100024f3          	csrr	s1,sstatus
    800083b4:	100027f3          	csrr	a5,sstatus
    800083b8:	ffd7f793          	andi	a5,a5,-3
    800083bc:	10079073          	csrw	sstatus,a5
    800083c0:	ffffe097          	auipc	ra,0xffffe
    800083c4:	708080e7          	jalr	1800(ra) # 80006ac8 <mycpu>
    800083c8:	07852783          	lw	a5,120(a0)
    800083cc:	02078663          	beqz	a5,800083f8 <push_off+0x5c>
    800083d0:	ffffe097          	auipc	ra,0xffffe
    800083d4:	6f8080e7          	jalr	1784(ra) # 80006ac8 <mycpu>
    800083d8:	07852783          	lw	a5,120(a0)
    800083dc:	01813083          	ld	ra,24(sp)
    800083e0:	01013403          	ld	s0,16(sp)
    800083e4:	0017879b          	addiw	a5,a5,1
    800083e8:	06f52c23          	sw	a5,120(a0)
    800083ec:	00813483          	ld	s1,8(sp)
    800083f0:	02010113          	addi	sp,sp,32
    800083f4:	00008067          	ret
    800083f8:	0014d493          	srli	s1,s1,0x1
    800083fc:	ffffe097          	auipc	ra,0xffffe
    80008400:	6cc080e7          	jalr	1740(ra) # 80006ac8 <mycpu>
    80008404:	0014f493          	andi	s1,s1,1
    80008408:	06952e23          	sw	s1,124(a0)
    8000840c:	fc5ff06f          	j	800083d0 <push_off+0x34>

0000000080008410 <pop_off>:
    80008410:	ff010113          	addi	sp,sp,-16
    80008414:	00813023          	sd	s0,0(sp)
    80008418:	00113423          	sd	ra,8(sp)
    8000841c:	01010413          	addi	s0,sp,16
    80008420:	ffffe097          	auipc	ra,0xffffe
    80008424:	6a8080e7          	jalr	1704(ra) # 80006ac8 <mycpu>
    80008428:	100027f3          	csrr	a5,sstatus
    8000842c:	0027f793          	andi	a5,a5,2
    80008430:	04079663          	bnez	a5,8000847c <pop_off+0x6c>
    80008434:	07852783          	lw	a5,120(a0)
    80008438:	02f05a63          	blez	a5,8000846c <pop_off+0x5c>
    8000843c:	fff7871b          	addiw	a4,a5,-1
    80008440:	06e52c23          	sw	a4,120(a0)
    80008444:	00071c63          	bnez	a4,8000845c <pop_off+0x4c>
    80008448:	07c52783          	lw	a5,124(a0)
    8000844c:	00078863          	beqz	a5,8000845c <pop_off+0x4c>
    80008450:	100027f3          	csrr	a5,sstatus
    80008454:	0027e793          	ori	a5,a5,2
    80008458:	10079073          	csrw	sstatus,a5
    8000845c:	00813083          	ld	ra,8(sp)
    80008460:	00013403          	ld	s0,0(sp)
    80008464:	01010113          	addi	sp,sp,16
    80008468:	00008067          	ret
    8000846c:	00001517          	auipc	a0,0x1
    80008470:	2cc50513          	addi	a0,a0,716 # 80009738 <digits+0x48>
    80008474:	fffff097          	auipc	ra,0xfffff
    80008478:	018080e7          	jalr	24(ra) # 8000748c <panic>
    8000847c:	00001517          	auipc	a0,0x1
    80008480:	2a450513          	addi	a0,a0,676 # 80009720 <digits+0x30>
    80008484:	fffff097          	auipc	ra,0xfffff
    80008488:	008080e7          	jalr	8(ra) # 8000748c <panic>

000000008000848c <push_on>:
    8000848c:	fe010113          	addi	sp,sp,-32
    80008490:	00813823          	sd	s0,16(sp)
    80008494:	00113c23          	sd	ra,24(sp)
    80008498:	00913423          	sd	s1,8(sp)
    8000849c:	02010413          	addi	s0,sp,32
    800084a0:	100024f3          	csrr	s1,sstatus
    800084a4:	100027f3          	csrr	a5,sstatus
    800084a8:	0027e793          	ori	a5,a5,2
    800084ac:	10079073          	csrw	sstatus,a5
    800084b0:	ffffe097          	auipc	ra,0xffffe
    800084b4:	618080e7          	jalr	1560(ra) # 80006ac8 <mycpu>
    800084b8:	07852783          	lw	a5,120(a0)
    800084bc:	02078663          	beqz	a5,800084e8 <push_on+0x5c>
    800084c0:	ffffe097          	auipc	ra,0xffffe
    800084c4:	608080e7          	jalr	1544(ra) # 80006ac8 <mycpu>
    800084c8:	07852783          	lw	a5,120(a0)
    800084cc:	01813083          	ld	ra,24(sp)
    800084d0:	01013403          	ld	s0,16(sp)
    800084d4:	0017879b          	addiw	a5,a5,1
    800084d8:	06f52c23          	sw	a5,120(a0)
    800084dc:	00813483          	ld	s1,8(sp)
    800084e0:	02010113          	addi	sp,sp,32
    800084e4:	00008067          	ret
    800084e8:	0014d493          	srli	s1,s1,0x1
    800084ec:	ffffe097          	auipc	ra,0xffffe
    800084f0:	5dc080e7          	jalr	1500(ra) # 80006ac8 <mycpu>
    800084f4:	0014f493          	andi	s1,s1,1
    800084f8:	06952e23          	sw	s1,124(a0)
    800084fc:	fc5ff06f          	j	800084c0 <push_on+0x34>

0000000080008500 <pop_on>:
    80008500:	ff010113          	addi	sp,sp,-16
    80008504:	00813023          	sd	s0,0(sp)
    80008508:	00113423          	sd	ra,8(sp)
    8000850c:	01010413          	addi	s0,sp,16
    80008510:	ffffe097          	auipc	ra,0xffffe
    80008514:	5b8080e7          	jalr	1464(ra) # 80006ac8 <mycpu>
    80008518:	100027f3          	csrr	a5,sstatus
    8000851c:	0027f793          	andi	a5,a5,2
    80008520:	04078463          	beqz	a5,80008568 <pop_on+0x68>
    80008524:	07852783          	lw	a5,120(a0)
    80008528:	02f05863          	blez	a5,80008558 <pop_on+0x58>
    8000852c:	fff7879b          	addiw	a5,a5,-1
    80008530:	06f52c23          	sw	a5,120(a0)
    80008534:	07853783          	ld	a5,120(a0)
    80008538:	00079863          	bnez	a5,80008548 <pop_on+0x48>
    8000853c:	100027f3          	csrr	a5,sstatus
    80008540:	ffd7f793          	andi	a5,a5,-3
    80008544:	10079073          	csrw	sstatus,a5
    80008548:	00813083          	ld	ra,8(sp)
    8000854c:	00013403          	ld	s0,0(sp)
    80008550:	01010113          	addi	sp,sp,16
    80008554:	00008067          	ret
    80008558:	00001517          	auipc	a0,0x1
    8000855c:	20850513          	addi	a0,a0,520 # 80009760 <digits+0x70>
    80008560:	fffff097          	auipc	ra,0xfffff
    80008564:	f2c080e7          	jalr	-212(ra) # 8000748c <panic>
    80008568:	00001517          	auipc	a0,0x1
    8000856c:	1d850513          	addi	a0,a0,472 # 80009740 <digits+0x50>
    80008570:	fffff097          	auipc	ra,0xfffff
    80008574:	f1c080e7          	jalr	-228(ra) # 8000748c <panic>

0000000080008578 <__memset>:
    80008578:	ff010113          	addi	sp,sp,-16
    8000857c:	00813423          	sd	s0,8(sp)
    80008580:	01010413          	addi	s0,sp,16
    80008584:	1a060e63          	beqz	a2,80008740 <__memset+0x1c8>
    80008588:	40a007b3          	neg	a5,a0
    8000858c:	0077f793          	andi	a5,a5,7
    80008590:	00778693          	addi	a3,a5,7
    80008594:	00b00813          	li	a6,11
    80008598:	0ff5f593          	andi	a1,a1,255
    8000859c:	fff6071b          	addiw	a4,a2,-1
    800085a0:	1b06e663          	bltu	a3,a6,8000874c <__memset+0x1d4>
    800085a4:	1cd76463          	bltu	a4,a3,8000876c <__memset+0x1f4>
    800085a8:	1a078e63          	beqz	a5,80008764 <__memset+0x1ec>
    800085ac:	00b50023          	sb	a1,0(a0)
    800085b0:	00100713          	li	a4,1
    800085b4:	1ae78463          	beq	a5,a4,8000875c <__memset+0x1e4>
    800085b8:	00b500a3          	sb	a1,1(a0)
    800085bc:	00200713          	li	a4,2
    800085c0:	1ae78a63          	beq	a5,a4,80008774 <__memset+0x1fc>
    800085c4:	00b50123          	sb	a1,2(a0)
    800085c8:	00300713          	li	a4,3
    800085cc:	18e78463          	beq	a5,a4,80008754 <__memset+0x1dc>
    800085d0:	00b501a3          	sb	a1,3(a0)
    800085d4:	00400713          	li	a4,4
    800085d8:	1ae78263          	beq	a5,a4,8000877c <__memset+0x204>
    800085dc:	00b50223          	sb	a1,4(a0)
    800085e0:	00500713          	li	a4,5
    800085e4:	1ae78063          	beq	a5,a4,80008784 <__memset+0x20c>
    800085e8:	00b502a3          	sb	a1,5(a0)
    800085ec:	00700713          	li	a4,7
    800085f0:	18e79e63          	bne	a5,a4,8000878c <__memset+0x214>
    800085f4:	00b50323          	sb	a1,6(a0)
    800085f8:	00700e93          	li	t4,7
    800085fc:	00859713          	slli	a4,a1,0x8
    80008600:	00e5e733          	or	a4,a1,a4
    80008604:	01059e13          	slli	t3,a1,0x10
    80008608:	01c76e33          	or	t3,a4,t3
    8000860c:	01859313          	slli	t1,a1,0x18
    80008610:	006e6333          	or	t1,t3,t1
    80008614:	02059893          	slli	a7,a1,0x20
    80008618:	40f60e3b          	subw	t3,a2,a5
    8000861c:	011368b3          	or	a7,t1,a7
    80008620:	02859813          	slli	a6,a1,0x28
    80008624:	0108e833          	or	a6,a7,a6
    80008628:	03059693          	slli	a3,a1,0x30
    8000862c:	003e589b          	srliw	a7,t3,0x3
    80008630:	00d866b3          	or	a3,a6,a3
    80008634:	03859713          	slli	a4,a1,0x38
    80008638:	00389813          	slli	a6,a7,0x3
    8000863c:	00f507b3          	add	a5,a0,a5
    80008640:	00e6e733          	or	a4,a3,a4
    80008644:	000e089b          	sext.w	a7,t3
    80008648:	00f806b3          	add	a3,a6,a5
    8000864c:	00e7b023          	sd	a4,0(a5)
    80008650:	00878793          	addi	a5,a5,8
    80008654:	fed79ce3          	bne	a5,a3,8000864c <__memset+0xd4>
    80008658:	ff8e7793          	andi	a5,t3,-8
    8000865c:	0007871b          	sext.w	a4,a5
    80008660:	01d787bb          	addw	a5,a5,t4
    80008664:	0ce88e63          	beq	a7,a4,80008740 <__memset+0x1c8>
    80008668:	00f50733          	add	a4,a0,a5
    8000866c:	00b70023          	sb	a1,0(a4)
    80008670:	0017871b          	addiw	a4,a5,1
    80008674:	0cc77663          	bgeu	a4,a2,80008740 <__memset+0x1c8>
    80008678:	00e50733          	add	a4,a0,a4
    8000867c:	00b70023          	sb	a1,0(a4)
    80008680:	0027871b          	addiw	a4,a5,2
    80008684:	0ac77e63          	bgeu	a4,a2,80008740 <__memset+0x1c8>
    80008688:	00e50733          	add	a4,a0,a4
    8000868c:	00b70023          	sb	a1,0(a4)
    80008690:	0037871b          	addiw	a4,a5,3
    80008694:	0ac77663          	bgeu	a4,a2,80008740 <__memset+0x1c8>
    80008698:	00e50733          	add	a4,a0,a4
    8000869c:	00b70023          	sb	a1,0(a4)
    800086a0:	0047871b          	addiw	a4,a5,4
    800086a4:	08c77e63          	bgeu	a4,a2,80008740 <__memset+0x1c8>
    800086a8:	00e50733          	add	a4,a0,a4
    800086ac:	00b70023          	sb	a1,0(a4)
    800086b0:	0057871b          	addiw	a4,a5,5
    800086b4:	08c77663          	bgeu	a4,a2,80008740 <__memset+0x1c8>
    800086b8:	00e50733          	add	a4,a0,a4
    800086bc:	00b70023          	sb	a1,0(a4)
    800086c0:	0067871b          	addiw	a4,a5,6
    800086c4:	06c77e63          	bgeu	a4,a2,80008740 <__memset+0x1c8>
    800086c8:	00e50733          	add	a4,a0,a4
    800086cc:	00b70023          	sb	a1,0(a4)
    800086d0:	0077871b          	addiw	a4,a5,7
    800086d4:	06c77663          	bgeu	a4,a2,80008740 <__memset+0x1c8>
    800086d8:	00e50733          	add	a4,a0,a4
    800086dc:	00b70023          	sb	a1,0(a4)
    800086e0:	0087871b          	addiw	a4,a5,8
    800086e4:	04c77e63          	bgeu	a4,a2,80008740 <__memset+0x1c8>
    800086e8:	00e50733          	add	a4,a0,a4
    800086ec:	00b70023          	sb	a1,0(a4)
    800086f0:	0097871b          	addiw	a4,a5,9
    800086f4:	04c77663          	bgeu	a4,a2,80008740 <__memset+0x1c8>
    800086f8:	00e50733          	add	a4,a0,a4
    800086fc:	00b70023          	sb	a1,0(a4)
    80008700:	00a7871b          	addiw	a4,a5,10
    80008704:	02c77e63          	bgeu	a4,a2,80008740 <__memset+0x1c8>
    80008708:	00e50733          	add	a4,a0,a4
    8000870c:	00b70023          	sb	a1,0(a4)
    80008710:	00b7871b          	addiw	a4,a5,11
    80008714:	02c77663          	bgeu	a4,a2,80008740 <__memset+0x1c8>
    80008718:	00e50733          	add	a4,a0,a4
    8000871c:	00b70023          	sb	a1,0(a4)
    80008720:	00c7871b          	addiw	a4,a5,12
    80008724:	00c77e63          	bgeu	a4,a2,80008740 <__memset+0x1c8>
    80008728:	00e50733          	add	a4,a0,a4
    8000872c:	00b70023          	sb	a1,0(a4)
    80008730:	00d7879b          	addiw	a5,a5,13
    80008734:	00c7f663          	bgeu	a5,a2,80008740 <__memset+0x1c8>
    80008738:	00f507b3          	add	a5,a0,a5
    8000873c:	00b78023          	sb	a1,0(a5)
    80008740:	00813403          	ld	s0,8(sp)
    80008744:	01010113          	addi	sp,sp,16
    80008748:	00008067          	ret
    8000874c:	00b00693          	li	a3,11
    80008750:	e55ff06f          	j	800085a4 <__memset+0x2c>
    80008754:	00300e93          	li	t4,3
    80008758:	ea5ff06f          	j	800085fc <__memset+0x84>
    8000875c:	00100e93          	li	t4,1
    80008760:	e9dff06f          	j	800085fc <__memset+0x84>
    80008764:	00000e93          	li	t4,0
    80008768:	e95ff06f          	j	800085fc <__memset+0x84>
    8000876c:	00000793          	li	a5,0
    80008770:	ef9ff06f          	j	80008668 <__memset+0xf0>
    80008774:	00200e93          	li	t4,2
    80008778:	e85ff06f          	j	800085fc <__memset+0x84>
    8000877c:	00400e93          	li	t4,4
    80008780:	e7dff06f          	j	800085fc <__memset+0x84>
    80008784:	00500e93          	li	t4,5
    80008788:	e75ff06f          	j	800085fc <__memset+0x84>
    8000878c:	00600e93          	li	t4,6
    80008790:	e6dff06f          	j	800085fc <__memset+0x84>

0000000080008794 <__memmove>:
    80008794:	ff010113          	addi	sp,sp,-16
    80008798:	00813423          	sd	s0,8(sp)
    8000879c:	01010413          	addi	s0,sp,16
    800087a0:	0e060863          	beqz	a2,80008890 <__memmove+0xfc>
    800087a4:	fff6069b          	addiw	a3,a2,-1
    800087a8:	0006881b          	sext.w	a6,a3
    800087ac:	0ea5e863          	bltu	a1,a0,8000889c <__memmove+0x108>
    800087b0:	00758713          	addi	a4,a1,7
    800087b4:	00a5e7b3          	or	a5,a1,a0
    800087b8:	40a70733          	sub	a4,a4,a0
    800087bc:	0077f793          	andi	a5,a5,7
    800087c0:	00f73713          	sltiu	a4,a4,15
    800087c4:	00174713          	xori	a4,a4,1
    800087c8:	0017b793          	seqz	a5,a5
    800087cc:	00e7f7b3          	and	a5,a5,a4
    800087d0:	10078863          	beqz	a5,800088e0 <__memmove+0x14c>
    800087d4:	00900793          	li	a5,9
    800087d8:	1107f463          	bgeu	a5,a6,800088e0 <__memmove+0x14c>
    800087dc:	0036581b          	srliw	a6,a2,0x3
    800087e0:	fff8081b          	addiw	a6,a6,-1
    800087e4:	02081813          	slli	a6,a6,0x20
    800087e8:	01d85893          	srli	a7,a6,0x1d
    800087ec:	00858813          	addi	a6,a1,8
    800087f0:	00058793          	mv	a5,a1
    800087f4:	00050713          	mv	a4,a0
    800087f8:	01088833          	add	a6,a7,a6
    800087fc:	0007b883          	ld	a7,0(a5)
    80008800:	00878793          	addi	a5,a5,8
    80008804:	00870713          	addi	a4,a4,8
    80008808:	ff173c23          	sd	a7,-8(a4)
    8000880c:	ff0798e3          	bne	a5,a6,800087fc <__memmove+0x68>
    80008810:	ff867713          	andi	a4,a2,-8
    80008814:	02071793          	slli	a5,a4,0x20
    80008818:	0207d793          	srli	a5,a5,0x20
    8000881c:	00f585b3          	add	a1,a1,a5
    80008820:	40e686bb          	subw	a3,a3,a4
    80008824:	00f507b3          	add	a5,a0,a5
    80008828:	06e60463          	beq	a2,a4,80008890 <__memmove+0xfc>
    8000882c:	0005c703          	lbu	a4,0(a1)
    80008830:	00e78023          	sb	a4,0(a5)
    80008834:	04068e63          	beqz	a3,80008890 <__memmove+0xfc>
    80008838:	0015c603          	lbu	a2,1(a1)
    8000883c:	00100713          	li	a4,1
    80008840:	00c780a3          	sb	a2,1(a5)
    80008844:	04e68663          	beq	a3,a4,80008890 <__memmove+0xfc>
    80008848:	0025c603          	lbu	a2,2(a1)
    8000884c:	00200713          	li	a4,2
    80008850:	00c78123          	sb	a2,2(a5)
    80008854:	02e68e63          	beq	a3,a4,80008890 <__memmove+0xfc>
    80008858:	0035c603          	lbu	a2,3(a1)
    8000885c:	00300713          	li	a4,3
    80008860:	00c781a3          	sb	a2,3(a5)
    80008864:	02e68663          	beq	a3,a4,80008890 <__memmove+0xfc>
    80008868:	0045c603          	lbu	a2,4(a1)
    8000886c:	00400713          	li	a4,4
    80008870:	00c78223          	sb	a2,4(a5)
    80008874:	00e68e63          	beq	a3,a4,80008890 <__memmove+0xfc>
    80008878:	0055c603          	lbu	a2,5(a1)
    8000887c:	00500713          	li	a4,5
    80008880:	00c782a3          	sb	a2,5(a5)
    80008884:	00e68663          	beq	a3,a4,80008890 <__memmove+0xfc>
    80008888:	0065c703          	lbu	a4,6(a1)
    8000888c:	00e78323          	sb	a4,6(a5)
    80008890:	00813403          	ld	s0,8(sp)
    80008894:	01010113          	addi	sp,sp,16
    80008898:	00008067          	ret
    8000889c:	02061713          	slli	a4,a2,0x20
    800088a0:	02075713          	srli	a4,a4,0x20
    800088a4:	00e587b3          	add	a5,a1,a4
    800088a8:	f0f574e3          	bgeu	a0,a5,800087b0 <__memmove+0x1c>
    800088ac:	02069613          	slli	a2,a3,0x20
    800088b0:	02065613          	srli	a2,a2,0x20
    800088b4:	fff64613          	not	a2,a2
    800088b8:	00e50733          	add	a4,a0,a4
    800088bc:	00c78633          	add	a2,a5,a2
    800088c0:	fff7c683          	lbu	a3,-1(a5)
    800088c4:	fff78793          	addi	a5,a5,-1
    800088c8:	fff70713          	addi	a4,a4,-1
    800088cc:	00d70023          	sb	a3,0(a4)
    800088d0:	fec798e3          	bne	a5,a2,800088c0 <__memmove+0x12c>
    800088d4:	00813403          	ld	s0,8(sp)
    800088d8:	01010113          	addi	sp,sp,16
    800088dc:	00008067          	ret
    800088e0:	02069713          	slli	a4,a3,0x20
    800088e4:	02075713          	srli	a4,a4,0x20
    800088e8:	00170713          	addi	a4,a4,1
    800088ec:	00e50733          	add	a4,a0,a4
    800088f0:	00050793          	mv	a5,a0
    800088f4:	0005c683          	lbu	a3,0(a1)
    800088f8:	00178793          	addi	a5,a5,1
    800088fc:	00158593          	addi	a1,a1,1
    80008900:	fed78fa3          	sb	a3,-1(a5)
    80008904:	fee798e3          	bne	a5,a4,800088f4 <__memmove+0x160>
    80008908:	f89ff06f          	j	80008890 <__memmove+0xfc>

000000008000890c <__putc>:
    8000890c:	fe010113          	addi	sp,sp,-32
    80008910:	00813823          	sd	s0,16(sp)
    80008914:	00113c23          	sd	ra,24(sp)
    80008918:	02010413          	addi	s0,sp,32
    8000891c:	00050793          	mv	a5,a0
    80008920:	fef40593          	addi	a1,s0,-17
    80008924:	00100613          	li	a2,1
    80008928:	00000513          	li	a0,0
    8000892c:	fef407a3          	sb	a5,-17(s0)
    80008930:	fffff097          	auipc	ra,0xfffff
    80008934:	b3c080e7          	jalr	-1220(ra) # 8000746c <console_write>
    80008938:	01813083          	ld	ra,24(sp)
    8000893c:	01013403          	ld	s0,16(sp)
    80008940:	02010113          	addi	sp,sp,32
    80008944:	00008067          	ret

0000000080008948 <__getc>:
    80008948:	fe010113          	addi	sp,sp,-32
    8000894c:	00813823          	sd	s0,16(sp)
    80008950:	00113c23          	sd	ra,24(sp)
    80008954:	02010413          	addi	s0,sp,32
    80008958:	fe840593          	addi	a1,s0,-24
    8000895c:	00100613          	li	a2,1
    80008960:	00000513          	li	a0,0
    80008964:	fffff097          	auipc	ra,0xfffff
    80008968:	ae8080e7          	jalr	-1304(ra) # 8000744c <console_read>
    8000896c:	fe844503          	lbu	a0,-24(s0)
    80008970:	01813083          	ld	ra,24(sp)
    80008974:	01013403          	ld	s0,16(sp)
    80008978:	02010113          	addi	sp,sp,32
    8000897c:	00008067          	ret

0000000080008980 <console_handler>:
    80008980:	fe010113          	addi	sp,sp,-32
    80008984:	00813823          	sd	s0,16(sp)
    80008988:	00113c23          	sd	ra,24(sp)
    8000898c:	00913423          	sd	s1,8(sp)
    80008990:	02010413          	addi	s0,sp,32
    80008994:	14202773          	csrr	a4,scause
    80008998:	100027f3          	csrr	a5,sstatus
    8000899c:	0027f793          	andi	a5,a5,2
    800089a0:	06079e63          	bnez	a5,80008a1c <console_handler+0x9c>
    800089a4:	00074c63          	bltz	a4,800089bc <console_handler+0x3c>
    800089a8:	01813083          	ld	ra,24(sp)
    800089ac:	01013403          	ld	s0,16(sp)
    800089b0:	00813483          	ld	s1,8(sp)
    800089b4:	02010113          	addi	sp,sp,32
    800089b8:	00008067          	ret
    800089bc:	0ff77713          	andi	a4,a4,255
    800089c0:	00900793          	li	a5,9
    800089c4:	fef712e3          	bne	a4,a5,800089a8 <console_handler+0x28>
    800089c8:	ffffe097          	auipc	ra,0xffffe
    800089cc:	6dc080e7          	jalr	1756(ra) # 800070a4 <plic_claim>
    800089d0:	00a00793          	li	a5,10
    800089d4:	00050493          	mv	s1,a0
    800089d8:	02f50c63          	beq	a0,a5,80008a10 <console_handler+0x90>
    800089dc:	fc0506e3          	beqz	a0,800089a8 <console_handler+0x28>
    800089e0:	00050593          	mv	a1,a0
    800089e4:	00001517          	auipc	a0,0x1
    800089e8:	c8450513          	addi	a0,a0,-892 # 80009668 <_ZL6digits+0x110>
    800089ec:	fffff097          	auipc	ra,0xfffff
    800089f0:	afc080e7          	jalr	-1284(ra) # 800074e8 <__printf>
    800089f4:	01013403          	ld	s0,16(sp)
    800089f8:	01813083          	ld	ra,24(sp)
    800089fc:	00048513          	mv	a0,s1
    80008a00:	00813483          	ld	s1,8(sp)
    80008a04:	02010113          	addi	sp,sp,32
    80008a08:	ffffe317          	auipc	t1,0xffffe
    80008a0c:	6d430067          	jr	1748(t1) # 800070dc <plic_complete>
    80008a10:	fffff097          	auipc	ra,0xfffff
    80008a14:	3e0080e7          	jalr	992(ra) # 80007df0 <uartintr>
    80008a18:	fddff06f          	j	800089f4 <console_handler+0x74>
    80008a1c:	00001517          	auipc	a0,0x1
    80008a20:	d4c50513          	addi	a0,a0,-692 # 80009768 <digits+0x78>
    80008a24:	fffff097          	auipc	ra,0xfffff
    80008a28:	a68080e7          	jalr	-1432(ra) # 8000748c <panic>
	...
