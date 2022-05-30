
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
    8000001c:	03d060ef          	jal	ra,80006858 <start>

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
    80001088:	4f1020ef          	jal	ra,80003d78 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800015a0:	7a4080e7          	jalr	1956(ra) # 80005d40 <_Z11printStringPKc>
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
    800015d0:	774080e7          	jalr	1908(ra) # 80005d40 <_Z11printStringPKc>
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
    800015f0:	754080e7          	jalr	1876(ra) # 80005d40 <_Z11printStringPKc>
        printInt(i);
    800015f4:	00000613          	li	a2,0
    800015f8:	00a00593          	li	a1,10
    800015fc:	0004851b          	sext.w	a0,s1
    80001600:	00005097          	auipc	ra,0x5
    80001604:	8d8080e7          	jalr	-1832(ra) # 80005ed8 <_Z8printIntiii>
        printString("\n");
    80001608:	00008517          	auipc	a0,0x8
    8000160c:	af850513          	addi	a0,a0,-1288 # 80009100 <CONSOLE_STATUS+0xf0>
    80001610:	00004097          	auipc	ra,0x4
    80001614:	730080e7          	jalr	1840(ra) # 80005d40 <_Z11printStringPKc>
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
    80001670:	6d4080e7          	jalr	1748(ra) # 80005d40 <_Z11printStringPKc>
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
    80001690:	6b4080e7          	jalr	1716(ra) # 80005d40 <_Z11printStringPKc>
        printInt(j);
    80001694:	00000613          	li	a2,0
    80001698:	00a00593          	li	a1,10
    8000169c:	0004851b          	sext.w	a0,s1
    800016a0:	00005097          	auipc	ra,0x5
    800016a4:	838080e7          	jalr	-1992(ra) # 80005ed8 <_Z8printIntiii>
        printString("\n");
    800016a8:	00008517          	auipc	a0,0x8
    800016ac:	a5850513          	addi	a0,a0,-1448 # 80009100 <CONSOLE_STATUS+0xf0>
    800016b0:	00004097          	auipc	ra,0x4
    800016b4:	690080e7          	jalr	1680(ra) # 80005d40 <_Z11printStringPKc>
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
    80001720:	624080e7          	jalr	1572(ra) # 80005d40 <_Z11printStringPKc>
        printInt(i);
    80001724:	00000613          	li	a2,0
    80001728:	00a00593          	li	a1,10
    8000172c:	00048513          	mv	a0,s1
    80001730:	00004097          	auipc	ra,0x4
    80001734:	7a8080e7          	jalr	1960(ra) # 80005ed8 <_Z8printIntiii>
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
    80001774:	5d0080e7          	jalr	1488(ra) # 80005d40 <_Z11printStringPKc>
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
    800017a0:	5a4080e7          	jalr	1444(ra) # 80005d40 <_Z11printStringPKc>
        printInt(j);
    800017a4:	00000613          	li	a2,0
    800017a8:	00a00593          	li	a1,10
    800017ac:	0004851b          	sext.w	a0,s1
    800017b0:	00004097          	auipc	ra,0x4
    800017b4:	728080e7          	jalr	1832(ra) # 80005ed8 <_Z8printIntiii>
        printString("\n");
    800017b8:	00008517          	auipc	a0,0x8
    800017bc:	94850513          	addi	a0,a0,-1720 # 80009100 <CONSOLE_STATUS+0xf0>
    800017c0:	00004097          	auipc	ra,0x4
    800017c4:	580080e7          	jalr	1408(ra) # 80005d40 <_Z11printStringPKc>
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
    80001858:	0c8080e7          	jalr	200(ra) # 8000891c <__putc>
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
    80001940:	dfc080e7          	jalr	-516(ra) # 80003738 <_Znwm>
    80001944:	00050493          	mv	s1,a0
    80001948:	00000613          	li	a2,0
    8000194c:	00000597          	auipc	a1,0x0
    80001950:	c6458593          	addi	a1,a1,-924 # 800015b0 <_Z15thread1FunctionPv>
    80001954:	00002097          	auipc	ra,0x2
    80001958:	f7c080e7          	jalr	-132(ra) # 800038d0 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    8000195c:	00048513          	mv	a0,s1
    80001960:	00002097          	auipc	ra,0x2
    80001964:	ea8080e7          	jalr	-344(ra) # 80003808 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001968:	01000513          	li	a0,16
    8000196c:	00002097          	auipc	ra,0x2
    80001970:	dcc080e7          	jalr	-564(ra) # 80003738 <_Znwm>
    80001974:	00050493          	mv	s1,a0
    80001978:	00000613          	li	a2,0
    8000197c:	00000597          	auipc	a1,0x0
    80001980:	cd458593          	addi	a1,a1,-812 # 80001650 <_Z15thread2FunctionPv>
    80001984:	00002097          	auipc	ra,0x2
    80001988:	f4c080e7          	jalr	-180(ra) # 800038d0 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    8000198c:	00048513          	mv	a0,s1
    80001990:	00002097          	auipc	ra,0x2
    80001994:	e78080e7          	jalr	-392(ra) # 80003808 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001998:	00002097          	auipc	ra,0x2
    8000199c:	178080e7          	jalr	376(ra) # 80003b10 <_ZN5Riscv16enableInterruptsEv>
    printString("End...\n");
    800019a0:	00007517          	auipc	a0,0x7
    800019a4:	6c850513          	addi	a0,a0,1736 # 80009068 <CONSOLE_STATUS+0x58>
    800019a8:	00004097          	auipc	ra,0x4
    800019ac:	398080e7          	jalr	920(ra) # 80005d40 <_Z11printStringPKc>
    Riscv::disableInterrupts();
    800019b0:	00002097          	auipc	ra,0x2
    800019b4:	180080e7          	jalr	384(ra) # 80003b30 <_ZN5Riscv17disableInterruptsEv>
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
    800019dc:	d88080e7          	jalr	-632(ra) # 80003760 <_ZdlPv>
    800019e0:	00090513          	mv	a0,s2
    800019e4:	0000f097          	auipc	ra,0xf
    800019e8:	3e4080e7          	jalr	996(ra) # 80010dc8 <_Unwind_Resume>
    800019ec:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800019f0:	00048513          	mv	a0,s1
    800019f4:	00002097          	auipc	ra,0x2
    800019f8:	d6c080e7          	jalr	-660(ra) # 80003760 <_ZdlPv>
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
    80001a28:	d14080e7          	jalr	-748(ra) # 80003738 <_Znwm>
    80001a2c:	00050493          	mv	s1,a0
    80001a30:	00000613          	li	a2,0
    80001a34:	00000597          	auipc	a1,0x0
    80001a38:	b5058593          	addi	a1,a1,-1200 # 80001584 <_Z4idlePv>
    80001a3c:	00002097          	auipc	ra,0x2
    80001a40:	e94080e7          	jalr	-364(ra) # 800038d0 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001a44:	00048513          	mv	a0,s1
    80001a48:	00002097          	auipc	ra,0x2
    80001a4c:	dc0080e7          	jalr	-576(ra) # 80003808 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a50:	01000513          	li	a0,16
    80001a54:	00002097          	auipc	ra,0x2
    80001a58:	ce4080e7          	jalr	-796(ra) # 80003738 <_Znwm>
    80001a5c:	00050493          	mv	s1,a0
    80001a60:	00000613          	li	a2,0
    80001a64:	00000597          	auipc	a1,0x0
    80001a68:	b4c58593          	addi	a1,a1,-1204 # 800015b0 <_Z15thread1FunctionPv>
    80001a6c:	00002097          	auipc	ra,0x2
    80001a70:	e64080e7          	jalr	-412(ra) # 800038d0 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001a74:	00048513          	mv	a0,s1
    80001a78:	00002097          	auipc	ra,0x2
    80001a7c:	d90080e7          	jalr	-624(ra) # 80003808 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a80:	01000513          	li	a0,16
    80001a84:	00002097          	auipc	ra,0x2
    80001a88:	cb4080e7          	jalr	-844(ra) # 80003738 <_Znwm>
    80001a8c:	00050493          	mv	s1,a0
    80001a90:	00000613          	li	a2,0
    80001a94:	00000597          	auipc	a1,0x0
    80001a98:	cc058593          	addi	a1,a1,-832 # 80001754 <_Z20thread2FunctionTest2Pv>
    80001a9c:	00002097          	auipc	ra,0x2
    80001aa0:	e34080e7          	jalr	-460(ra) # 800038d0 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001aa4:	00048513          	mv	a0,s1
    80001aa8:	00002097          	auipc	ra,0x2
    80001aac:	d60080e7          	jalr	-672(ra) # 80003808 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001ab0:	00002097          	auipc	ra,0x2
    80001ab4:	060080e7          	jalr	96(ra) # 80003b10 <_ZN5Riscv16enableInterruptsEv>
    printString("End...\n");
    80001ab8:	00007517          	auipc	a0,0x7
    80001abc:	5b050513          	addi	a0,a0,1456 # 80009068 <CONSOLE_STATUS+0x58>
    80001ac0:	00004097          	auipc	ra,0x4
    80001ac4:	280080e7          	jalr	640(ra) # 80005d40 <_Z11printStringPKc>
    Riscv::disableInterrupts();
    80001ac8:	00002097          	auipc	ra,0x2
    80001acc:	068080e7          	jalr	104(ra) # 80003b30 <_ZN5Riscv17disableInterruptsEv>
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
    80001af4:	c70080e7          	jalr	-912(ra) # 80003760 <_ZdlPv>
    80001af8:	00090513          	mv	a0,s2
    80001afc:	0000f097          	auipc	ra,0xf
    80001b00:	2cc080e7          	jalr	716(ra) # 80010dc8 <_Unwind_Resume>
    80001b04:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001b08:	00048513          	mv	a0,s1
    80001b0c:	00002097          	auipc	ra,0x2
    80001b10:	c54080e7          	jalr	-940(ra) # 80003760 <_ZdlPv>
    80001b14:	00090513          	mv	a0,s2
    80001b18:	0000f097          	auipc	ra,0xf
    80001b1c:	2b0080e7          	jalr	688(ra) # 80010dc8 <_Unwind_Resume>
    80001b20:	00050913          	mv	s2,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001b24:	00048513          	mv	a0,s1
    80001b28:	00002097          	auipc	ra,0x2
    80001b2c:	c38080e7          	jalr	-968(ra) # 80003760 <_ZdlPv>
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
    80001b5c:	1e8080e7          	jalr	488(ra) # 80005d40 <_Z11printStringPKc>
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
    80001ba0:	1a4080e7          	jalr	420(ra) # 80005d40 <_Z11printStringPKc>
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
    80001bf4:	150080e7          	jalr	336(ra) # 80005d40 <_Z11printStringPKc>
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
    80001c3c:	108080e7          	jalr	264(ra) # 80005d40 <_Z11printStringPKc>
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
    80001c80:	0c4080e7          	jalr	196(ra) # 80005d40 <_Z11printStringPKc>
            return;
    80001c84:	f21ff06f          	j	80001ba4 <_Z10mallocFreev+0x68>
    printString("OK\n");
    80001c88:	00007517          	auipc	a0,0x7
    80001c8c:	40050513          	addi	a0,a0,1024 # 80009088 <CONSOLE_STATUS+0x78>
    80001c90:	00004097          	auipc	ra,0x4
    80001c94:	0b0080e7          	jalr	176(ra) # 80005d40 <_Z11printStringPKc>
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
    80001cb8:	08c080e7          	jalr	140(ra) # 80005d40 <_Z11printStringPKc>
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
    80001cf4:	050080e7          	jalr	80(ra) # 80005d40 <_Z11printStringPKc>
}
    80001cf8:	00813083          	ld	ra,8(sp)
    80001cfc:	00013403          	ld	s0,0(sp)
    80001d00:	01010113          	addi	sp,sp,16
    80001d04:	00008067          	ret
        printString("OK\n");
    80001d08:	00007517          	auipc	a0,0x7
    80001d0c:	38050513          	addi	a0,a0,896 # 80009088 <CONSOLE_STATUS+0x78>
    80001d10:	00004097          	auipc	ra,0x4
    80001d14:	030080e7          	jalr	48(ra) # 80005d40 <_Z11printStringPKc>
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
    80001d44:	000080e7          	jalr	ra # 80005d40 <_Z11printStringPKc>
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
    80001d98:	144080e7          	jalr	324(ra) # 80005ed8 <_Z8printIntiii>
    printString("\n");
    80001d9c:	00007517          	auipc	a0,0x7
    80001da0:	36450513          	addi	a0,a0,868 # 80009100 <CONSOLE_STATUS+0xf0>
    80001da4:	00004097          	auipc	ra,0x4
    80001da8:	f9c080e7          	jalr	-100(ra) # 80005d40 <_Z11printStringPKc>
    if(sum == X*cnt)
    80001dac:	00291793          	slli	a5,s2,0x2
    80001db0:	01278933          	add	s2,a5,s2
    80001db4:	00191913          	slli	s2,s2,0x1
    80001db8:	03390863          	beq	s2,s3,80001de8 <_Z17lotOfSmallMallocsv+0xcc>
        printString("not OK\n");
    80001dbc:	00007517          	auipc	a0,0x7
    80001dc0:	2c450513          	addi	a0,a0,708 # 80009080 <CONSOLE_STATUS+0x70>
    80001dc4:	00004097          	auipc	ra,0x4
    80001dc8:	f7c080e7          	jalr	-132(ra) # 80005d40 <_Z11printStringPKc>
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
    80001df4:	f50080e7          	jalr	-176(ra) # 80005d40 <_Z11printStringPKc>
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
    80001e18:	f2c080e7          	jalr	-212(ra) # 80005d40 <_Z11printStringPKc>
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
    80001e44:	f00080e7          	jalr	-256(ra) # 80005d40 <_Z11printStringPKc>
}
    80001e48:	00813083          	ld	ra,8(sp)
    80001e4c:	00013403          	ld	s0,0(sp)
    80001e50:	01010113          	addi	sp,sp,16
    80001e54:	00008067          	ret
         printString("OK\n");
    80001e58:	00007517          	auipc	a0,0x7
    80001e5c:	23050513          	addi	a0,a0,560 # 80009088 <CONSOLE_STATUS+0x78>
    80001e60:	00004097          	auipc	ra,0x4
    80001e64:	ee0080e7          	jalr	-288(ra) # 80005d40 <_Z11printStringPKc>
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
    80001e90:	eb4080e7          	jalr	-332(ra) # 80005d40 <_Z11printStringPKc>
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
    80001ed4:	e70080e7          	jalr	-400(ra) # 80005d40 <_Z11printStringPKc>
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
    80001f5c:	de8080e7          	jalr	-536(ra) # 80005d40 <_Z11printStringPKc>
                return;
    80001f60:	f79ff06f          	j	80001ed8 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001f64:	00007517          	auipc	a0,0x7
    80001f68:	17450513          	addi	a0,a0,372 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001f6c:	00004097          	auipc	ra,0x4
    80001f70:	dd4080e7          	jalr	-556(ra) # 80005d40 <_Z11printStringPKc>
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
    80001fd4:	d70080e7          	jalr	-656(ra) # 80005d40 <_Z11printStringPKc>
                return;
    80001fd8:	f01ff06f          	j	80001ed8 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001fdc:	00007517          	auipc	a0,0x7
    80001fe0:	0fc50513          	addi	a0,a0,252 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001fe4:	00004097          	auipc	ra,0x4
    80001fe8:	d5c080e7          	jalr	-676(ra) # 80005d40 <_Z11printStringPKc>
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
    80002004:	d40080e7          	jalr	-704(ra) # 80005d40 <_Z11printStringPKc>
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
    80002028:	a18080e7          	jalr	-1512(ra) # 80003a3c <_ZN14PeriodicThreadC1Em>
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
    8000206c:	6d0080e7          	jalr	1744(ra) # 80003738 <_Znwm>
    80002070:	00050913          	mv	s2,a0
    80002074:	03200593          	li	a1,50
    80002078:	00000097          	auipc	ra,0x0
    8000207c:	f94080e7          	jalr	-108(ra) # 8000200c <_ZN12TestPeriodicC1Em>
    t->start();
    80002080:	00090513          	mv	a0,s2
    80002084:	00001097          	auipc	ra,0x1
    80002088:	784080e7          	jalr	1924(ra) # 80003808 <_ZN6Thread5startEv>
    while(true)
    8000208c:	0000006f          	j	8000208c <_Z11threadTest3v+0x40>
    80002090:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80002094:	00090513          	mv	a0,s2
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	6c8080e7          	jalr	1736(ra) # 80003760 <_ZdlPv>
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
    800020f8:	c4c080e7          	jalr	-948(ra) # 80005d40 <_Z11printStringPKc>
    object* o = new object;
    800020fc:	02c00513          	li	a0,44
    80002100:	00001097          	auipc	ra,0x1
    80002104:	638080e7          	jalr	1592(ra) # 80003738 <_Znwm>
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
    80002184:	5e0080e7          	jalr	1504(ra) # 80003760 <_ZdlPv>
    delete (uint64*)m3;
    80002188:	000a0513          	mv	a0,s4
    8000218c:	00001097          	auipc	ra,0x1
    80002190:	5d4080e7          	jalr	1492(ra) # 80003760 <_ZdlPv>
    delete (uint64*)m4;
    80002194:	000a8513          	mv	a0,s5
    80002198:	00001097          	auipc	ra,0x1
    8000219c:	5c8080e7          	jalr	1480(ra) # 80003760 <_ZdlPv>
    delete (uint64*)m2;
    800021a0:	00098513          	mv	a0,s3
    800021a4:	00001097          	auipc	ra,0x1
    800021a8:	5bc080e7          	jalr	1468(ra) # 80003760 <_ZdlPv>
    delete (uint64*)m5;
    800021ac:	000b0513          	mv	a0,s6
    800021b0:	00001097          	auipc	ra,0x1
    800021b4:	5b0080e7          	jalr	1456(ra) # 80003760 <_ZdlPv>
    delete o;
    800021b8:	00048863          	beqz	s1,800021c8 <_Z10mallocTestv+0x104>
    800021bc:	00048513          	mv	a0,s1
    800021c0:	00001097          	auipc	ra,0x1
    800021c4:	5a0080e7          	jalr	1440(ra) # 80003760 <_ZdlPv>
    printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    800021c8:	00007517          	auipc	a0,0x7
    800021cc:	f4050513          	addi	a0,a0,-192 # 80009108 <CONSOLE_STATUS+0xf8>
    800021d0:	00004097          	auipc	ra,0x4
    800021d4:	b70080e7          	jalr	-1168(ra) # 80005d40 <_Z11printStringPKc>
    800021d8:	0140006f          	j	800021ec <_Z10mallocTestv+0x128>
        printString("not OK\n");
    800021dc:	00007517          	auipc	a0,0x7
    800021e0:	ea450513          	addi	a0,a0,-348 # 80009080 <CONSOLE_STATUS+0x70>
    800021e4:	00004097          	auipc	ra,0x4
    800021e8:	b5c080e7          	jalr	-1188(ra) # 80005d40 <_Z11printStringPKc>
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
    80002234:	b10080e7          	jalr	-1264(ra) # 80005d40 <_Z11printStringPKc>
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
    80002270:	ad4080e7          	jalr	-1324(ra) # 80005d40 <_Z11printStringPKc>
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
    800022dc:	488080e7          	jalr	1160(ra) # 80003760 <_ZdlPv>
    printString("SUCCESSFUL: Testing allocating whole address space\n\n");
    800022e0:	00007517          	auipc	a0,0x7
    800022e4:	e8850513          	addi	a0,a0,-376 # 80009168 <CONSOLE_STATUS+0x158>
    800022e8:	00004097          	auipc	ra,0x4
    800022ec:	a58080e7          	jalr	-1448(ra) # 80005d40 <_Z11printStringPKc>
    800022f0:	f85ff06f          	j	80002274 <_Z16mallocEverythingv+0x60>
        printString("not OK\n");
    800022f4:	00007517          	auipc	a0,0x7
    800022f8:	d8c50513          	addi	a0,a0,-628 # 80009080 <CONSOLE_STATUS+0x70>
    800022fc:	00004097          	auipc	ra,0x4
    80002300:	a44080e7          	jalr	-1468(ra) # 80005d40 <_Z11printStringPKc>
        return;
    80002304:	f71ff06f          	j	80002274 <_Z16mallocEverythingv+0x60>
        printString("not OK\n");
    80002308:	00007517          	auipc	a0,0x7
    8000230c:	d7850513          	addi	a0,a0,-648 # 80009080 <CONSOLE_STATUS+0x70>
    80002310:	00004097          	auipc	ra,0x4
    80002314:	a30080e7          	jalr	-1488(ra) # 80005d40 <_Z11printStringPKc>
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
    80002358:	9ec080e7          	jalr	-1556(ra) # 80005d40 <_Z11printStringPKc>
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
    800023a0:	9a4080e7          	jalr	-1628(ra) # 80005d40 <_Z11printStringPKc>
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
    800023e0:	384080e7          	jalr	900(ra) # 80003760 <_ZdlPv>
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
    80002454:	310080e7          	jalr	784(ra) # 80003760 <_ZdlPv>
    delete (uint64*)m[4];
    80002458:	f8043503          	ld	a0,-128(s0)
    8000245c:	00050663          	beqz	a0,80002468 <_Z17mallocGapFillTestv+0x14c>
    80002460:	00001097          	auipc	ra,0x1
    80002464:	300080e7          	jalr	768(ra) # 80003760 <_ZdlPv>
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
    800024b0:	894080e7          	jalr	-1900(ra) # 80005d40 <_Z11printStringPKc>
        return;
    800024b4:	ef1ff06f          	j	800023a4 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024b8:	00007517          	auipc	a0,0x7
    800024bc:	bc850513          	addi	a0,a0,-1080 # 80009080 <CONSOLE_STATUS+0x70>
    800024c0:	00004097          	auipc	ra,0x4
    800024c4:	880080e7          	jalr	-1920(ra) # 80005d40 <_Z11printStringPKc>
        return;
    800024c8:	eddff06f          	j	800023a4 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024cc:	00007517          	auipc	a0,0x7
    800024d0:	bb450513          	addi	a0,a0,-1100 # 80009080 <CONSOLE_STATUS+0x70>
    800024d4:	00004097          	auipc	ra,0x4
    800024d8:	86c080e7          	jalr	-1940(ra) # 80005d40 <_Z11printStringPKc>
        return;
    800024dc:	ec9ff06f          	j	800023a4 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024e0:	00007517          	auipc	a0,0x7
    800024e4:	ba050513          	addi	a0,a0,-1120 # 80009080 <CONSOLE_STATUS+0x70>
    800024e8:	00004097          	auipc	ra,0x4
    800024ec:	858080e7          	jalr	-1960(ra) # 80005d40 <_Z11printStringPKc>
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
    80002518:	24c080e7          	jalr	588(ra) # 80003760 <_ZdlPv>
    8000251c:	fd9ff06f          	j	800024f4 <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    80002520:	00048513          	mv	a0,s1
    80002524:	00001097          	auipc	ra,0x1
    80002528:	23c080e7          	jalr	572(ra) # 80003760 <_ZdlPv>
    delete (uint64*)tmp2;
    8000252c:	00090513          	mv	a0,s2
    80002530:	00001097          	auipc	ra,0x1
    80002534:	230080e7          	jalr	560(ra) # 80003760 <_ZdlPv>
    delete (uint64*)tmp3;
    80002538:	00098513          	mv	a0,s3
    8000253c:	00001097          	auipc	ra,0x1
    80002540:	224080e7          	jalr	548(ra) # 80003760 <_ZdlPv>
    delete (uint64*)tmp4;
    80002544:	000c0513          	mv	a0,s8
    80002548:	00001097          	auipc	ra,0x1
    8000254c:	218080e7          	jalr	536(ra) # 80003760 <_ZdlPv>
    delete (uint64*)tmp5;
    80002550:	000b8513          	mv	a0,s7
    80002554:	00001097          	auipc	ra,0x1
    80002558:	20c080e7          	jalr	524(ra) # 80003760 <_ZdlPv>
    printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    8000255c:	00007517          	auipc	a0,0x7
    80002560:	c8c50513          	addi	a0,a0,-884 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80002564:	00003097          	auipc	ra,0x3
    80002568:	7dc080e7          	jalr	2012(ra) # 80005d40 <_Z11printStringPKc>
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

00000000800026d0 <_Z7myTestsv>:
{
    800026d0:	ff010113          	addi	sp,sp,-16
    800026d4:	00113423          	sd	ra,8(sp)
    800026d8:	00813023          	sd	s0,0(sp)
    800026dc:	01010413          	addi	s0,sp,16
    consoleTests();
    800026e0:	00000097          	auipc	ra,0x0
    800026e4:	fc8080e7          	jalr	-56(ra) # 800026a8 <_Z12consoleTestsv>
}
    800026e8:	00813083          	ld	ra,8(sp)
    800026ec:	00013403          	ld	s0,0(sp)
    800026f0:	01010113          	addi	sp,sp,16
    800026f4:	00008067          	ret

00000000800026f8 <_Z15changeModeTest1v>:


void changeModeTest1()
{
    800026f8:	ff010113          	addi	sp,sp,-16
    800026fc:	00813423          	sd	s0,8(sp)
    80002700:	01010413          	addi	s0,sp,16
    // u user niti smo
    __asm__ volatile("csrr a0, sstatus"); //treba da pukne
    80002704:	10002573          	csrr	a0,sstatus
}
    80002708:	00813403          	ld	s0,8(sp)
    8000270c:	01010113          	addi	sp,sp,16
    80002710:	00008067          	ret

0000000080002714 <_Z15changeModeTestsv>:

void changeModeTests()
{
    80002714:	ff010113          	addi	sp,sp,-16
    80002718:	00113423          	sd	ra,8(sp)
    8000271c:	00813023          	sd	s0,0(sp)
    80002720:	01010413          	addi	s0,sp,16
    changeModeTest1();
    80002724:	00000097          	auipc	ra,0x0
    80002728:	fd4080e7          	jalr	-44(ra) # 800026f8 <_Z15changeModeTest1v>
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
    8000278c:	f40080e7          	jalr	-192(ra) # 800036c8 <_ZN6ThreadD1Ev>
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
    800027c8:	f04080e7          	jalr	-252(ra) # 800036c8 <_ZN6ThreadD1Ev>
    800027cc:	00048513          	mv	a0,s1
    800027d0:	00001097          	auipc	ra,0x1
    800027d4:	f90080e7          	jalr	-112(ra) # 80003760 <_ZdlPv>
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
    8000280c:	ec0080e7          	jalr	-320(ra) # 800036c8 <_ZN6ThreadD1Ev>
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
    80002848:	e84080e7          	jalr	-380(ra) # 800036c8 <_ZN6ThreadD1Ev>
    8000284c:	00048513          	mv	a0,s1
    80002850:	00001097          	auipc	ra,0x1
    80002854:	f10080e7          	jalr	-240(ra) # 80003760 <_ZdlPv>
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
    80002880:	2fc080e7          	jalr	764(ra) # 80003b78 <_ZN5Riscv10popSppSpieEv>

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
    80002928:	c40080e7          	jalr	-960(ra) # 80003564 <_ZN9Scheduler3putEP3PCB>
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
    8000296c:	c50080e7          	jalr	-944(ra) # 800035b8 <_ZN9Scheduler3getEv>
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
    80002988:	3b4080e7          	jalr	948(ra) # 80003d38 <_ZN5Riscv14changePrivModeEv>

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
    800029c0:	ba8080e7          	jalr	-1112(ra) # 80003564 <_ZN9Scheduler3putEP3PCB>
    800029c4:	fa5ff06f          	j	80002968 <_ZN3PCB8dispatchEv+0x2c>

00000000800029c8 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800029c8:	ff010113          	addi	sp,sp,-16
    800029cc:	00113423          	sd	ra,8(sp)
    800029d0:	00813023          	sd	s0,0(sp)
    800029d4:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800029d8:	00002097          	auipc	ra,0x2
    800029dc:	a84080e7          	jalr	-1404(ra) # 8000445c <_Z7kmallocm>
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
    80002a04:	ac0080e7          	jalr	-1344(ra) # 800044c0 <_Z5kfreePv>
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
    80002a30:	a94080e7          	jalr	-1388(ra) # 800044c0 <_Z5kfreePv>
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
    80002aa4:	b18080e7          	jalr	-1256(ra) # 800035b8 <_ZN9Scheduler3getEv>
    80002aa8:	00009917          	auipc	s2,0x9
    80002aac:	18890913          	addi	s2,s2,392 # 8000bc30 <_ZN3PCB7runningE>
    80002ab0:	00a93023          	sd	a0,0(s2)
    80002ab4:	00100a13          	li	s4,1
    80002ab8:	05452023          	sw	s4,64(a0)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002abc:	00001537          	lui	a0,0x1
    80002ac0:	00002097          	auipc	ra,0x2
    80002ac4:	99c080e7          	jalr	-1636(ra) # 8000445c <_Z7kmallocm>
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
    80002b6c:	484080e7          	jalr	1156(ra) # 80005fec <_Z15trapPrintStringPKc>
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
    80002b98:	16c080e7          	jalr	364(ra) # 80003d00 <_ZN5Riscv13w_a0_sscratchEv>
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
    80002c18:	648080e7          	jalr	1608(ra) # 8000325c <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002c1c:	00000097          	auipc	ra,0x0
    80002c20:	d20080e7          	jalr	-736(ra) # 8000293c <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002c24:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002c28:	00001097          	auipc	ra,0x1
    80002c2c:	0d8080e7          	jalr	216(ra) # 80003d00 <_ZN5Riscv13w_a0_sscratchEv>
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
    80002cb4:	050080e7          	jalr	80(ra) # 80003d00 <_ZN5Riscv13w_a0_sscratchEv>
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
    80002d08:	ffc080e7          	jalr	-4(ra) # 80003d00 <_ZN5Riscv13w_a0_sscratchEv>
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
    80002d8c:	f78080e7          	jalr	-136(ra) # 80003d00 <_ZN5Riscv13w_a0_sscratchEv>
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
    80002dd8:	99c080e7          	jalr	-1636(ra) # 80004770 <_ZN10KSemaphorenwEm>
    80002ddc:	00050493          	mv	s1,a0
    80002de0:	00000593          	li	a1,0
    80002de4:	00001097          	auipc	ra,0x1
    80002de8:	73c080e7          	jalr	1852(ra) # 80004520 <_ZN10KSemaphoreC1Ei>
    80002dec:	00009797          	auipc	a5,0x9
    80002df0:	e697b223          	sd	s1,-412(a5) # 8000bc50 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002df4:	01800513          	li	a0,24
    80002df8:	00002097          	auipc	ra,0x2
    80002dfc:	978080e7          	jalr	-1672(ra) # 80004770 <_ZN10KSemaphorenwEm>
    80002e00:	00050493          	mv	s1,a0
    80002e04:	00000593          	li	a1,0
    80002e08:	00001097          	auipc	ra,0x1
    80002e0c:	718080e7          	jalr	1816(ra) # 80004520 <_ZN10KSemaphoreC1Ei>
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
    80002e3c:	9d0080e7          	jalr	-1584(ra) # 80004808 <_ZN10KSemaphoredlEPv>
    80002e40:	00090513          	mv	a0,s2
    80002e44:	0000e097          	auipc	ra,0xe
    80002e48:	f84080e7          	jalr	-124(ra) # 80010dc8 <_Unwind_Resume>
    80002e4c:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002e50:	00048513          	mv	a0,s1
    80002e54:	00002097          	auipc	ra,0x2
    80002e58:	9b4080e7          	jalr	-1612(ra) # 80004808 <_ZN10KSemaphoredlEPv>
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
    80002eb8:	874080e7          	jalr	-1932(ra) # 80004728 <_ZN10KSemaphore6signalEv>
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
    80002ef4:	6d8080e7          	jalr	1752(ra) # 800045c8 <_ZN10KSemaphore4waitEv>
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
    80002fa8:	784080e7          	jalr	1924(ra) # 80004728 <_ZN10KSemaphore6signalEv>
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
    80003084:	548080e7          	jalr	1352(ra) # 800045c8 <_ZN10KSemaphore4waitEv>
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
    pendingGetc++;
    80003118:	00009717          	auipc	a4,0x9
    8000311c:	b3870713          	addi	a4,a4,-1224 # 8000bc50 <_ZN8KConsole18hasCharactersInputE>
    80003120:	03873783          	ld	a5,56(a4)
    80003124:	00178793          	addi	a5,a5,1
    80003128:	02f73c23          	sd	a5,56(a4)
    char ch;
    ch = getCharacterInput();
    8000312c:	00000097          	auipc	ra,0x0
    80003130:	da4080e7          	jalr	-604(ra) # 80002ed0 <_ZN8KConsole17getCharacterInputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003134:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003138:	00001097          	auipc	ra,0x1
    8000313c:	bc8080e7          	jalr	-1080(ra) # 80003d00 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003140:	00813083          	ld	ra,8(sp)
    80003144:	00013403          	ld	s0,0(sp)
    80003148:	01010113          	addi	sp,sp,16
    8000314c:	00008067          	ret

0000000080003150 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80003150:	ff010113          	addi	sp,sp,-16
    80003154:	00813423          	sd	s0,8(sp)
    80003158:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    8000315c:	00009517          	auipc	a0,0x9
    80003160:	b2453503          	ld	a0,-1244(a0) # 8000bc80 <_ZN8KConsole11pendingPutcE>
    80003164:	00153513          	seqz	a0,a0
    80003168:	00813403          	ld	s0,8(sp)
    8000316c:	01010113          	addi	sp,sp,16
    80003170:	00008067          	ret

0000000080003174 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    80003174:	fe010113          	addi	sp,sp,-32
    80003178:	00113c23          	sd	ra,24(sp)
    8000317c:	00813823          	sd	s0,16(sp)
    80003180:	02010413          	addi	s0,sp,32
    80003184:	0640006f          	j	800031e8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x74>
            uint64 x = CONSOLE_STATUS;
    80003188:	00009797          	auipc	a5,0x9
    8000318c:	9c87b783          	ld	a5,-1592(a5) # 8000bb50 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003190:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003194:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003198:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    8000319c:	00058793          	mv	a5,a1
            if (operation & STATUS_WRITE_MASK)
    800031a0:	0207f793          	andi	a5,a5,32
    800031a4:	06078c63          	beqz	a5,8000321c <_ZN8KConsole23sendCharactersToConsoleEPv+0xa8>
                char volatile c = sysCallGetCharOutput();
    800031a8:	ffffe097          	auipc	ra,0xffffe
    800031ac:	3b4080e7          	jalr	948(ra) # 8000155c <sysCallGetCharOutput>
    800031b0:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    800031b4:	00009717          	auipc	a4,0x9
    800031b8:	a9c70713          	addi	a4,a4,-1380 # 8000bc50 <_ZN8KConsole18hasCharactersInputE>
    800031bc:	03073783          	ld	a5,48(a4)
    800031c0:	fff78793          	addi	a5,a5,-1
    800031c4:	02f73823          	sd	a5,48(a4)
                x = CONSOLE_RX_DATA;
    800031c8:	00009797          	auipc	a5,0x9
    800031cc:	9807b783          	ld	a5,-1664(a5) # 8000bb48 <_GLOBAL_OFFSET_TABLE_+0x8>
    800031d0:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    800031d4:	00078513          	mv	a0,a5
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    800031d8:	fef44783          	lbu	a5,-17(s0)
    800031dc:	0ff7f793          	andi	a5,a5,255
    800031e0:	00078593          	mv	a1,a5
                __asm__ volatile("sb a1,0(a0)");
    800031e4:	00b50023          	sb	a1,0(a0)
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    800031e8:	00009797          	auipc	a5,0x9
    800031ec:	9b87b783          	ld	a5,-1608(a5) # 8000bba0 <_GLOBAL_OFFSET_TABLE_+0x60>
    800031f0:	0007c783          	lbu	a5,0(a5)
    800031f4:	f8078ae3          	beqz	a5,80003188 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
    800031f8:	00000097          	auipc	ra,0x0
    800031fc:	f58080e7          	jalr	-168(ra) # 80003150 <_ZN8KConsole17outputBufferEmptyEv>
    80003200:	f80504e3          	beqz	a0,80003188 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
    80003204:	00009797          	auipc	a5,0x9
    80003208:	a847b783          	ld	a5,-1404(a5) # 8000bc88 <_ZN8KConsole11pendingGetcE>
    8000320c:	f6079ee3          	bnez	a5,80003188 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
                thread_exit();
    80003210:	ffffe097          	auipc	ra,0xffffe
    80003214:	144080e7          	jalr	324(ra) # 80001354 <thread_exit>
    80003218:	f71ff06f          	j	80003188 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
                thread_dispatch();
    8000321c:	ffffe097          	auipc	ra,0xffffe
    80003220:	118080e7          	jalr	280(ra) # 80001334 <thread_dispatch>
    80003224:	fc5ff06f          	j	800031e8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x74>

0000000080003228 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    80003228:	ff010113          	addi	sp,sp,-16
    8000322c:	00113423          	sd	ra,8(sp)
    80003230:	00813023          	sd	s0,0(sp)
    80003234:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80003238:	00000097          	auipc	ra,0x0
    8000323c:	e28080e7          	jalr	-472(ra) # 80003060 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003240:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003244:	00001097          	auipc	ra,0x1
    80003248:	abc080e7          	jalr	-1348(ra) # 80003d00 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000324c:	00813083          	ld	ra,8(sp)
    80003250:	00013403          	ld	s0,0(sp)
    80003254:	01010113          	addi	sp,sp,16
    80003258:	00008067          	ret

000000008000325c <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    8000325c:	ff010113          	addi	sp,sp,-16
    80003260:	00813423          	sd	s0,8(sp)
    80003264:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003268:	00009797          	auipc	a5,0x9
    8000326c:	9407b783          	ld	a5,-1728(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003270:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003274:	00500793          	li	a5,5
    80003278:	04f62023          	sw	a5,64(a2)
    //trapPrintString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    8000327c:	0000d797          	auipc	a5,0xd
    80003280:	a147b783          	ld	a5,-1516(a5) # 8000fc90 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003284:	00000593          	li	a1,0
    while(curr != 0)
    80003288:	02078063          	beqz	a5,800032a8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    8000328c:	02063683          	ld	a3,32(a2)
    80003290:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003294:	00e6e863          	bltu	a3,a4,800032a4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003298:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    8000329c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800032a0:	fe9ff06f          	j	80003288 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800032a4:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    800032a8:	00058a63          	beqz	a1,800032bc <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    800032ac:	00c5b423          	sd	a2,8(a1)
}
    800032b0:	00813403          	ld	s0,8(sp)
    800032b4:	01010113          	addi	sp,sp,16
    800032b8:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800032bc:	0000d797          	auipc	a5,0xd
    800032c0:	9cc7ba23          	sd	a2,-1580(a5) # 8000fc90 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800032c4:	fedff06f          	j	800032b0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

00000000800032c8 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //trapPrintString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    800032c8:	0000d517          	auipc	a0,0xd
    800032cc:	9c853503          	ld	a0,-1592(a0) # 8000fc90 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    800032d0:	06050e63          	beqz	a0,8000334c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    {
        //trapPrintString("No sleeping PCBs...\n");
        return;
    }
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800032d4:	06050c63          	beqz	a0,8000334c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    800032d8:	02053783          	ld	a5,32(a0)
    800032dc:	00009717          	auipc	a4,0x9
    800032e0:	8ac73703          	ld	a4,-1876(a4) # 8000bb88 <_GLOBAL_OFFSET_TABLE_+0x48>
    800032e4:	00073703          	ld	a4,0(a4)
    800032e8:	06f76263          	bltu	a4,a5,8000334c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    800032ec:	fe010113          	addi	sp,sp,-32
    800032f0:	00113c23          	sd	ra,24(sp)
    800032f4:	00813823          	sd	s0,16(sp)
    800032f8:	00913423          	sd	s1,8(sp)
    800032fc:	02010413          	addi	s0,sp,32
    80003300:	0180006f          	j	80003318 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003304:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003308:	00009717          	auipc	a4,0x9
    8000330c:	88073703          	ld	a4,-1920(a4) # 8000bb88 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003310:	00073703          	ld	a4,0(a4)
    80003314:	02f76263          	bltu	a4,a5,80003338 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80003318:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    8000331c:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80003320:	00000097          	auipc	ra,0x0
    80003324:	244080e7          	jalr	580(ra) # 80003564 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003328:	0000d797          	auipc	a5,0xd
    8000332c:	9697b423          	sd	s1,-1688(a5) # 8000fc90 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80003330:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003334:	fc0498e3          	bnez	s1,80003304 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    80003338:	01813083          	ld	ra,24(sp)
    8000333c:	01013403          	ld	s0,16(sp)
    80003340:	00813483          	ld	s1,8(sp)
    80003344:	02010113          	addi	sp,sp,32
    80003348:	00008067          	ret
    8000334c:	00008067          	ret

0000000080003350 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80003350:	fe010113          	addi	sp,sp,-32
    80003354:	00113c23          	sd	ra,24(sp)
    80003358:	00813823          	sd	s0,16(sp)
    8000335c:	00913423          	sd	s1,8(sp)
    80003360:	01213023          	sd	s2,0(sp)
    80003364:	02010413          	addi	s0,sp,32
    80003368:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    8000336c:	00053503          	ld	a0,0(a0)
    80003370:	00853903          	ld	s2,8(a0)
    kfree(first);
    80003374:	00001097          	auipc	ra,0x1
    80003378:	14c080e7          	jalr	332(ra) # 800044c0 <_Z5kfreePv>
    first = newFirst;
    8000337c:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80003380:	00090e63          	beqz	s2,8000339c <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80003384:	01813083          	ld	ra,24(sp)
    80003388:	01013403          	ld	s0,16(sp)
    8000338c:	00813483          	ld	s1,8(sp)
    80003390:	00013903          	ld	s2,0(sp)
    80003394:	02010113          	addi	sp,sp,32
    80003398:	00008067          	ret
        first = last = 0;
    8000339c:	0004b423          	sd	zero,8(s1)
    800033a0:	0004b023          	sd	zero,0(s1)
}
    800033a4:	fe1ff06f          	j	80003384 <_ZN5Queue3popEv+0x34>

00000000800033a8 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t)
{
    800033a8:	fe010113          	addi	sp,sp,-32
    800033ac:	00113c23          	sd	ra,24(sp)
    800033b0:	00813823          	sd	s0,16(sp)
    800033b4:	00913423          	sd	s1,8(sp)
    800033b8:	01213023          	sd	s2,0(sp)
    800033bc:	02010413          	addi	s0,sp,32
    800033c0:	00050493          	mv	s1,a0
    800033c4:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    800033c8:	01000513          	li	a0,16
    800033cc:	00001097          	auipc	ra,0x1
    800033d0:	090080e7          	jalr	144(ra) # 8000445c <_Z7kmallocm>
    newElem->data = t;
    800033d4:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    800033d8:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    800033dc:	0004b783          	ld	a5,0(s1)
    800033e0:	02078463          	beqz	a5,80003408 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    800033e4:	0084b783          	ld	a5,8(s1)
    800033e8:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    800033ec:	00a4b423          	sd	a0,8(s1)
    }
}
    800033f0:	01813083          	ld	ra,24(sp)
    800033f4:	01013403          	ld	s0,16(sp)
    800033f8:	00813483          	ld	s1,8(sp)
    800033fc:	00013903          	ld	s2,0(sp)
    80003400:	02010113          	addi	sp,sp,32
    80003404:	00008067          	ret
        first = newElem;
    80003408:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    8000340c:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80003410:	00053423          	sd	zero,8(a0)
    80003414:	0004b783          	ld	a5,0(s1)
    80003418:	0007b423          	sd	zero,8(a5)
    8000341c:	fd5ff06f          	j	800033f0 <_ZN5Queue4pushEP3PCB+0x48>

0000000080003420 <_ZN5Queue5frontEv>:


PCB* Queue::front()
{
    80003420:	ff010113          	addi	sp,sp,-16
    80003424:	00813423          	sd	s0,8(sp)
    80003428:	01010413          	addi	s0,sp,16
    if(first == 0)
    8000342c:	00053503          	ld	a0,0(a0)
    80003430:	00050463          	beqz	a0,80003438 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80003434:	00053503          	ld	a0,0(a0)
}
    80003438:	00813403          	ld	s0,8(sp)
    8000343c:	01010113          	addi	sp,sp,16
    80003440:	00008067          	ret

0000000080003444 <_ZN5QueueC1Ev>:

Queue::Queue()
    80003444:	ff010113          	addi	sp,sp,-16
    80003448:	00813423          	sd	s0,8(sp)
    8000344c:	01010413          	addi	s0,sp,16
{
    first = last = 0;
    80003450:	00053423          	sd	zero,8(a0)
    80003454:	00053023          	sd	zero,0(a0)
}
    80003458:	00813403          	ld	s0,8(sp)
    8000345c:	01010113          	addi	sp,sp,16
    80003460:	00008067          	ret

0000000080003464 <_ZN5QueueD1Ev>:

Queue::~Queue()
{
    Elem* curr = first;
    80003464:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80003468:	04050063          	beqz	a0,800034a8 <_ZN5QueueD1Ev+0x44>
Queue::~Queue()
    8000346c:	fe010113          	addi	sp,sp,-32
    80003470:	00113c23          	sd	ra,24(sp)
    80003474:	00813823          	sd	s0,16(sp)
    80003478:	00913423          	sd	s1,8(sp)
    8000347c:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    80003480:	00853483          	ld	s1,8(a0)
        kfree(old);
    80003484:	00001097          	auipc	ra,0x1
    80003488:	03c080e7          	jalr	60(ra) # 800044c0 <_Z5kfreePv>
        curr = curr->next;
    8000348c:	00048513          	mv	a0,s1
    while(curr != 0)
    80003490:	fe0498e3          	bnez	s1,80003480 <_ZN5QueueD1Ev+0x1c>
    }
}
    80003494:	01813083          	ld	ra,24(sp)
    80003498:	01013403          	ld	s0,16(sp)
    8000349c:	00813483          	ld	s1,8(sp)
    800034a0:	02010113          	addi	sp,sp,32
    800034a4:	00008067          	ret
    800034a8:	00008067          	ret

00000000800034ac <_ZN5Queue4sizeEv>:

int Queue::size()
{
    800034ac:	ff010113          	addi	sp,sp,-16
    800034b0:	00813423          	sd	s0,8(sp)
    800034b4:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    800034b8:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    800034bc:	00000513          	li	a0,0
    while(curr != 0)
    800034c0:	00078863          	beqz	a5,800034d0 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    800034c4:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    800034c8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800034cc:	ff5ff06f          	j	800034c0 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    800034d0:	00813403          	ld	s0,8(sp)
    800034d4:	01010113          	addi	sp,sp,16
    800034d8:	00008067          	ret

00000000800034dc <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    800034dc:	ff010113          	addi	sp,sp,-16
    800034e0:	00113423          	sd	ra,8(sp)
    800034e4:	00813023          	sd	s0,0(sp)
    800034e8:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800034ec:	00001097          	auipc	ra,0x1
    800034f0:	f70080e7          	jalr	-144(ra) # 8000445c <_Z7kmallocm>
}
    800034f4:	00813083          	ld	ra,8(sp)
    800034f8:	00013403          	ld	s0,0(sp)
    800034fc:	01010113          	addi	sp,sp,16
    80003500:	00008067          	ret

0000000080003504 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003504:	ff010113          	addi	sp,sp,-16
    80003508:	00113423          	sd	ra,8(sp)
    8000350c:	00813023          	sd	s0,0(sp)
    80003510:	01010413          	addi	s0,sp,16
    kfree(p);
    80003514:	00001097          	auipc	ra,0x1
    80003518:	fac080e7          	jalr	-84(ra) # 800044c0 <_Z5kfreePv>
}
    8000351c:	00813083          	ld	ra,8(sp)
    80003520:	00013403          	ld	s0,0(sp)
    80003524:	01010113          	addi	sp,sp,16
    80003528:	00008067          	ret

000000008000352c <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    8000352c:	ff010113          	addi	sp,sp,-16
    80003530:	00813423          	sd	s0,8(sp)
    80003534:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003538:	0000c797          	auipc	a5,0xc
    8000353c:	7607b783          	ld	a5,1888(a5) # 8000fc98 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003540:	00000513          	li	a0,0
    while(curr != 0)
    80003544:	00078863          	beqz	a5,80003554 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003548:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    8000354c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003550:	ff5ff06f          	j	80003544 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003554:	0005051b          	sext.w	a0,a0
    80003558:	00813403          	ld	s0,8(sp)
    8000355c:	01010113          	addi	sp,sp,16
    80003560:	00008067          	ret

0000000080003564 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003564:	ff010113          	addi	sp,sp,-16
    80003568:	00813423          	sd	s0,8(sp)
    8000356c:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003570:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003574:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003578:	0000c797          	auipc	a5,0xc
    8000357c:	7207b783          	ld	a5,1824(a5) # 8000fc98 <_ZN9Scheduler16schedulerPCBHeadE>
    80003580:	02078263          	beqz	a5,800035a4 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003584:	0000c797          	auipc	a5,0xc
    80003588:	71478793          	addi	a5,a5,1812 # 8000fc98 <_ZN9Scheduler16schedulerPCBHeadE>
    8000358c:	0087b703          	ld	a4,8(a5)
    80003590:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003594:	00a7b423          	sd	a0,8(a5)
    }
}
    80003598:	00813403          	ld	s0,8(sp)
    8000359c:	01010113          	addi	sp,sp,16
    800035a0:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    800035a4:	0000c797          	auipc	a5,0xc
    800035a8:	6f478793          	addi	a5,a5,1780 # 8000fc98 <_ZN9Scheduler16schedulerPCBHeadE>
    800035ac:	00a7b423          	sd	a0,8(a5)
    800035b0:	00a7b023          	sd	a0,0(a5)
    800035b4:	fe5ff06f          	j	80003598 <_ZN9Scheduler3putEP3PCB+0x34>

00000000800035b8 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    800035b8:	ff010113          	addi	sp,sp,-16
    800035bc:	00813423          	sd	s0,8(sp)
    800035c0:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800035c4:	0000c517          	auipc	a0,0xc
    800035c8:	6d453503          	ld	a0,1748(a0) # 8000fc98 <_ZN9Scheduler16schedulerPCBHeadE>
    800035cc:	00050c63          	beqz	a0,800035e4 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    800035d0:	00853783          	ld	a5,8(a0)
    800035d4:	00078e63          	beqz	a5,800035f0 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    800035d8:	0000c717          	auipc	a4,0xc
    800035dc:	6cf73023          	sd	a5,1728(a4) # 8000fc98 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    800035e0:	00053423          	sd	zero,8(a0)
    return retval;
}
    800035e4:	00813403          	ld	s0,8(sp)
    800035e8:	01010113          	addi	sp,sp,16
    800035ec:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    800035f0:	0000c797          	auipc	a5,0xc
    800035f4:	6a878793          	addi	a5,a5,1704 # 8000fc98 <_ZN9Scheduler16schedulerPCBHeadE>
    800035f8:	0007b423          	sd	zero,8(a5)
    800035fc:	0007b023          	sd	zero,0(a5)
    80003600:	fe1ff06f          	j	800035e0 <_ZN9Scheduler3getEv+0x28>

0000000080003604 <_ZN9Scheduler5printEv>:

void Scheduler::print() {
    80003604:	fe010113          	addi	sp,sp,-32
    80003608:	00113c23          	sd	ra,24(sp)
    8000360c:	00813823          	sd	s0,16(sp)
    80003610:	00913423          	sd	s1,8(sp)
    80003614:	02010413          	addi	s0,sp,32
    trapPrintString("Scheduler print\n");
    80003618:	00006517          	auipc	a0,0x6
    8000361c:	c4050513          	addi	a0,a0,-960 # 80009258 <CONSOLE_STATUS+0x248>
    80003620:	00003097          	auipc	ra,0x3
    80003624:	9cc080e7          	jalr	-1588(ra) # 80005fec <_Z15trapPrintStringPKc>
    PCB* curr = schedulerPCBHead;
    80003628:	0000c497          	auipc	s1,0xc
    8000362c:	6704b483          	ld	s1,1648(s1) # 8000fc98 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003630:	02048863          	beqz	s1,80003660 <_ZN9Scheduler5printEv+0x5c>
    {
        printInt((uint64)curr, 16);
    80003634:	00000613          	li	a2,0
    80003638:	01000593          	li	a1,16
    8000363c:	0004851b          	sext.w	a0,s1
    80003640:	00003097          	auipc	ra,0x3
    80003644:	898080e7          	jalr	-1896(ra) # 80005ed8 <_Z8printIntiii>
        printString("\n");
    80003648:	00006517          	auipc	a0,0x6
    8000364c:	ab850513          	addi	a0,a0,-1352 # 80009100 <CONSOLE_STATUS+0xf0>
    80003650:	00002097          	auipc	ra,0x2
    80003654:	6f0080e7          	jalr	1776(ra) # 80005d40 <_Z11printStringPKc>
        curr = curr->nextPCB;
    80003658:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    8000365c:	fd5ff06f          	j	80003630 <_ZN9Scheduler5printEv+0x2c>
    }
}
    80003660:	01813083          	ld	ra,24(sp)
    80003664:	01013403          	ld	s0,16(sp)
    80003668:	00813483          	ld	s1,8(sp)
    8000366c:	02010113          	addi	sp,sp,32
    80003670:	00008067          	ret

0000000080003674 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80003674:	ff010113          	addi	sp,sp,-16
    80003678:	00113423          	sd	ra,8(sp)
    8000367c:	00813023          	sd	s0,0(sp)
    80003680:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003684:	00000097          	auipc	ra,0x0
    80003688:	514080e7          	jalr	1300(ra) # 80003b98 <_ZN5Riscv10kernelMainEv>
    8000368c:	00813083          	ld	ra,8(sp)
    80003690:	00013403          	ld	s0,0(sp)
    80003694:	01010113          	addi	sp,sp,16
    80003698:	00008067          	ret

000000008000369c <_ZN6Thread6runnerEPv>:
{
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    8000369c:	ff010113          	addi	sp,sp,-16
    800036a0:	00113423          	sd	ra,8(sp)
    800036a4:	00813023          	sd	s0,0(sp)
    800036a8:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    800036ac:	00053783          	ld	a5,0(a0)
    800036b0:	0107b783          	ld	a5,16(a5)
    800036b4:	000780e7          	jalr	a5
}
    800036b8:	00813083          	ld	ra,8(sp)
    800036bc:	00013403          	ld	s0,0(sp)
    800036c0:	01010113          	addi	sp,sp,16
    800036c4:	00008067          	ret

00000000800036c8 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    800036c8:	ff010113          	addi	sp,sp,-16
    800036cc:	00113423          	sd	ra,8(sp)
    800036d0:	00813023          	sd	s0,0(sp)
    800036d4:	01010413          	addi	s0,sp,16
    800036d8:	00008797          	auipc	a5,0x8
    800036dc:	39078793          	addi	a5,a5,912 # 8000ba68 <_ZTV6Thread+0x10>
    800036e0:	00f53023          	sd	a5,0(a0)
{
    mem_free(myHandle);
    800036e4:	00853503          	ld	a0,8(a0)
    800036e8:	ffffe097          	auipc	ra,0xffffe
    800036ec:	ba0080e7          	jalr	-1120(ra) # 80001288 <mem_free>
}
    800036f0:	00813083          	ld	ra,8(sp)
    800036f4:	00013403          	ld	s0,0(sp)
    800036f8:	01010113          	addi	sp,sp,16
    800036fc:	00008067          	ret

0000000080003700 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003700:	ff010113          	addi	sp,sp,-16
    80003704:	00113423          	sd	ra,8(sp)
    80003708:	00813023          	sd	s0,0(sp)
    8000370c:	01010413          	addi	s0,sp,16
    80003710:	00008797          	auipc	a5,0x8
    80003714:	38078793          	addi	a5,a5,896 # 8000ba90 <_ZTV9Semaphore+0x10>
    80003718:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    8000371c:	00853503          	ld	a0,8(a0)
    80003720:	ffffe097          	auipc	ra,0xffffe
    80003724:	b68080e7          	jalr	-1176(ra) # 80001288 <mem_free>
}
    80003728:	00813083          	ld	ra,8(sp)
    8000372c:	00013403          	ld	s0,0(sp)
    80003730:	01010113          	addi	sp,sp,16
    80003734:	00008067          	ret

0000000080003738 <_Znwm>:
{
    80003738:	ff010113          	addi	sp,sp,-16
    8000373c:	00113423          	sd	ra,8(sp)
    80003740:	00813023          	sd	s0,0(sp)
    80003744:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003748:	ffffe097          	auipc	ra,0xffffe
    8000374c:	b10080e7          	jalr	-1264(ra) # 80001258 <mem_alloc>
}
    80003750:	00813083          	ld	ra,8(sp)
    80003754:	00013403          	ld	s0,0(sp)
    80003758:	01010113          	addi	sp,sp,16
    8000375c:	00008067          	ret

0000000080003760 <_ZdlPv>:
{
    80003760:	ff010113          	addi	sp,sp,-16
    80003764:	00113423          	sd	ra,8(sp)
    80003768:	00813023          	sd	s0,0(sp)
    8000376c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80003770:	ffffe097          	auipc	ra,0xffffe
    80003774:	b18080e7          	jalr	-1256(ra) # 80001288 <mem_free>
}
    80003778:	00813083          	ld	ra,8(sp)
    8000377c:	00013403          	ld	s0,0(sp)
    80003780:	01010113          	addi	sp,sp,16
    80003784:	00008067          	ret

0000000080003788 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80003788:	fe010113          	addi	sp,sp,-32
    8000378c:	00113c23          	sd	ra,24(sp)
    80003790:	00813823          	sd	s0,16(sp)
    80003794:	00913423          	sd	s1,8(sp)
    80003798:	02010413          	addi	s0,sp,32
    8000379c:	00050493          	mv	s1,a0
}
    800037a0:	00000097          	auipc	ra,0x0
    800037a4:	f28080e7          	jalr	-216(ra) # 800036c8 <_ZN6ThreadD1Ev>
    800037a8:	00048513          	mv	a0,s1
    800037ac:	00000097          	auipc	ra,0x0
    800037b0:	fb4080e7          	jalr	-76(ra) # 80003760 <_ZdlPv>
    800037b4:	01813083          	ld	ra,24(sp)
    800037b8:	01013403          	ld	s0,16(sp)
    800037bc:	00813483          	ld	s1,8(sp)
    800037c0:	02010113          	addi	sp,sp,32
    800037c4:	00008067          	ret

00000000800037c8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800037c8:	fe010113          	addi	sp,sp,-32
    800037cc:	00113c23          	sd	ra,24(sp)
    800037d0:	00813823          	sd	s0,16(sp)
    800037d4:	00913423          	sd	s1,8(sp)
    800037d8:	02010413          	addi	s0,sp,32
    800037dc:	00050493          	mv	s1,a0
}
    800037e0:	00000097          	auipc	ra,0x0
    800037e4:	f20080e7          	jalr	-224(ra) # 80003700 <_ZN9SemaphoreD1Ev>
    800037e8:	00048513          	mv	a0,s1
    800037ec:	00000097          	auipc	ra,0x0
    800037f0:	f74080e7          	jalr	-140(ra) # 80003760 <_ZdlPv>
    800037f4:	01813083          	ld	ra,24(sp)
    800037f8:	01013403          	ld	s0,16(sp)
    800037fc:	00813483          	ld	s1,8(sp)
    80003800:	02010113          	addi	sp,sp,32
    80003804:	00008067          	ret

0000000080003808 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    80003808:	00853503          	ld	a0,8(a0)
    8000380c:	02050663          	beqz	a0,80003838 <_ZN6Thread5startEv+0x30>
{
    80003810:	ff010113          	addi	sp,sp,-16
    80003814:	00113423          	sd	ra,8(sp)
    80003818:	00813023          	sd	s0,0(sp)
    8000381c:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	c44080e7          	jalr	-956(ra) # 80001464 <thread_start>
}
    80003828:	00813083          	ld	ra,8(sp)
    8000382c:	00013403          	ld	s0,0(sp)
    80003830:	01010113          	addi	sp,sp,16
    80003834:	00008067          	ret
        return -1;
    80003838:	fff00513          	li	a0,-1
}
    8000383c:	00008067          	ret

0000000080003840 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003840:	ff010113          	addi	sp,sp,-16
    80003844:	00113423          	sd	ra,8(sp)
    80003848:	00813023          	sd	s0,0(sp)
    8000384c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003850:	ffffe097          	auipc	ra,0xffffe
    80003854:	ae4080e7          	jalr	-1308(ra) # 80001334 <thread_dispatch>
}
    80003858:	00813083          	ld	ra,8(sp)
    8000385c:	00013403          	ld	s0,0(sp)
    80003860:	01010113          	addi	sp,sp,16
    80003864:	00008067          	ret

0000000080003868 <_ZN6Thread5sleepEm>:
{
    80003868:	ff010113          	addi	sp,sp,-16
    8000386c:	00113423          	sd	ra,8(sp)
    80003870:	00813023          	sd	s0,0(sp)
    80003874:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003878:	ffffe097          	auipc	ra,0xffffe
    8000387c:	bc0080e7          	jalr	-1088(ra) # 80001438 <time_sleep>
}
    80003880:	00813083          	ld	ra,8(sp)
    80003884:	00013403          	ld	s0,0(sp)
    80003888:	01010113          	addi	sp,sp,16
    8000388c:	00008067          	ret

0000000080003890 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80003890:	fe010113          	addi	sp,sp,-32
    80003894:	00113c23          	sd	ra,24(sp)
    80003898:	00813823          	sd	s0,16(sp)
    8000389c:	00913423          	sd	s1,8(sp)
    800038a0:	01213023          	sd	s2,0(sp)
    800038a4:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    800038a8:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    800038ac:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    800038b0:	0004b783          	ld	a5,0(s1)
    800038b4:	0187b783          	ld	a5,24(a5)
    800038b8:	00048513          	mv	a0,s1
    800038bc:	000780e7          	jalr	a5
        Thread::sleep(time);
    800038c0:	00090513          	mv	a0,s2
    800038c4:	00000097          	auipc	ra,0x0
    800038c8:	fa4080e7          	jalr	-92(ra) # 80003868 <_ZN6Thread5sleepEm>
    while(true)
    800038cc:	fe5ff06f          	j	800038b0 <_ZN14PeriodicThread6runnerEPv+0x20>

00000000800038d0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    800038d0:	ff010113          	addi	sp,sp,-16
    800038d4:	00113423          	sd	ra,8(sp)
    800038d8:	00813023          	sd	s0,0(sp)
    800038dc:	01010413          	addi	s0,sp,16
    800038e0:	00008797          	auipc	a5,0x8
    800038e4:	18878793          	addi	a5,a5,392 # 8000ba68 <_ZTV6Thread+0x10>
    800038e8:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, body, args);
    800038ec:	00850513          	addi	a0,a0,8
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	ba0080e7          	jalr	-1120(ra) # 80001490 <thread_make_pcb>
}
    800038f8:	00813083          	ld	ra,8(sp)
    800038fc:	00013403          	ld	s0,0(sp)
    80003900:	01010113          	addi	sp,sp,16
    80003904:	00008067          	ret

0000000080003908 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003908:	ff010113          	addi	sp,sp,-16
    8000390c:	00113423          	sd	ra,8(sp)
    80003910:	00813023          	sd	s0,0(sp)
    80003914:	01010413          	addi	s0,sp,16
    80003918:	00008797          	auipc	a5,0x8
    8000391c:	15078793          	addi	a5,a5,336 # 8000ba68 <_ZTV6Thread+0x10>
    80003920:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80003924:	00050613          	mv	a2,a0
    80003928:	00000597          	auipc	a1,0x0
    8000392c:	d7458593          	addi	a1,a1,-652 # 8000369c <_ZN6Thread6runnerEPv>
    80003930:	00850513          	addi	a0,a0,8
    80003934:	ffffe097          	auipc	ra,0xffffe
    80003938:	b5c080e7          	jalr	-1188(ra) # 80001490 <thread_make_pcb>
}
    8000393c:	00813083          	ld	ra,8(sp)
    80003940:	00013403          	ld	s0,0(sp)
    80003944:	01010113          	addi	sp,sp,16
    80003948:	00008067          	ret

000000008000394c <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    8000394c:	00853503          	ld	a0,8(a0)
    80003950:	02050663          	beqz	a0,8000397c <_ZN9Semaphore4waitEv+0x30>
{
    80003954:	ff010113          	addi	sp,sp,-16
    80003958:	00113423          	sd	ra,8(sp)
    8000395c:	00813023          	sd	s0,0(sp)
    80003960:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003964:	ffffe097          	auipc	ra,0xffffe
    80003968:	a7c080e7          	jalr	-1412(ra) # 800013e0 <sem_wait>
}
    8000396c:	00813083          	ld	ra,8(sp)
    80003970:	00013403          	ld	s0,0(sp)
    80003974:	01010113          	addi	sp,sp,16
    80003978:	00008067          	ret
        return -1;
    8000397c:	fff00513          	li	a0,-1
}
    80003980:	00008067          	ret

0000000080003984 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80003984:	fe010113          	addi	sp,sp,-32
    80003988:	00113c23          	sd	ra,24(sp)
    8000398c:	00813823          	sd	s0,16(sp)
    80003990:	00913423          	sd	s1,8(sp)
    80003994:	02010413          	addi	s0,sp,32
    80003998:	00050493          	mv	s1,a0
    8000399c:	00008797          	auipc	a5,0x8
    800039a0:	0f478793          	addi	a5,a5,244 # 8000ba90 <_ZTV9Semaphore+0x10>
    800039a4:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    800039a8:	00850513          	addi	a0,a0,8
    800039ac:	ffffe097          	auipc	ra,0xffffe
    800039b0:	9d0080e7          	jalr	-1584(ra) # 8000137c <sem_open>
    if(retval != 0)
    800039b4:	00050463          	beqz	a0,800039bc <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    800039b8:	0004b423          	sd	zero,8(s1)
}
    800039bc:	01813083          	ld	ra,24(sp)
    800039c0:	01013403          	ld	s0,16(sp)
    800039c4:	00813483          	ld	s1,8(sp)
    800039c8:	02010113          	addi	sp,sp,32
    800039cc:	00008067          	ret

00000000800039d0 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    800039d0:	00853503          	ld	a0,8(a0)
    800039d4:	02050663          	beqz	a0,80003a00 <_ZN9Semaphore6signalEv+0x30>
{
    800039d8:	ff010113          	addi	sp,sp,-16
    800039dc:	00113423          	sd	ra,8(sp)
    800039e0:	00813023          	sd	s0,0(sp)
    800039e4:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	a24080e7          	jalr	-1500(ra) # 8000140c <sem_signal>
}
    800039f0:	00813083          	ld	ra,8(sp)
    800039f4:	00013403          	ld	s0,0(sp)
    800039f8:	01010113          	addi	sp,sp,16
    800039fc:	00008067          	ret
        return -1;
    80003a00:	fff00513          	li	a0,-1
}
    80003a04:	00008067          	ret

0000000080003a08 <_ZN7Console4getcEv>:
{
    80003a08:	ff010113          	addi	sp,sp,-16
    80003a0c:	00813423          	sd	s0,8(sp)
    80003a10:	01010413          	addi	s0,sp,16
}
    80003a14:	00000513          	li	a0,0
    80003a18:	00813403          	ld	s0,8(sp)
    80003a1c:	01010113          	addi	sp,sp,16
    80003a20:	00008067          	ret

0000000080003a24 <_ZN7Console4putcEc>:
{
    80003a24:	ff010113          	addi	sp,sp,-16
    80003a28:	00813423          	sd	s0,8(sp)
    80003a2c:	01010413          	addi	s0,sp,16
}
    80003a30:	00813403          	ld	s0,8(sp)
    80003a34:	01010113          	addi	sp,sp,16
    80003a38:	00008067          	ret

0000000080003a3c <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003a3c:	fe010113          	addi	sp,sp,-32
    80003a40:	00113c23          	sd	ra,24(sp)
    80003a44:	00813823          	sd	s0,16(sp)
    80003a48:	00913423          	sd	s1,8(sp)
    80003a4c:	01213023          	sd	s2,0(sp)
    80003a50:	02010413          	addi	s0,sp,32
    80003a54:	00050493          	mv	s1,a0
    80003a58:	00058913          	mv	s2,a1
    80003a5c:	01000513          	li	a0,16
    80003a60:	00000097          	auipc	ra,0x0
    80003a64:	cd8080e7          	jalr	-808(ra) # 80003738 <_Znwm>
    80003a68:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80003a6c:	00953023          	sd	s1,0(a0)
    80003a70:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003a74:	00000597          	auipc	a1,0x0
    80003a78:	e1c58593          	addi	a1,a1,-484 # 80003890 <_ZN14PeriodicThread6runnerEPv>
    80003a7c:	00048513          	mv	a0,s1
    80003a80:	00000097          	auipc	ra,0x0
    80003a84:	e50080e7          	jalr	-432(ra) # 800038d0 <_ZN6ThreadC1EPFvPvES0_>
    80003a88:	00008797          	auipc	a5,0x8
    80003a8c:	f7878793          	addi	a5,a5,-136 # 8000ba00 <_ZTV14PeriodicThread+0x10>
    80003a90:	00f4b023          	sd	a5,0(s1)
}
    80003a94:	01813083          	ld	ra,24(sp)
    80003a98:	01013403          	ld	s0,16(sp)
    80003a9c:	00813483          	ld	s1,8(sp)
    80003aa0:	00013903          	ld	s2,0(sp)
    80003aa4:	02010113          	addi	sp,sp,32
    80003aa8:	00008067          	ret

0000000080003aac <_ZN5Riscv14myTestsWrapperEPv>:
{
    userMain();
}

void Riscv::myTestsWrapper(void* p)
{
    80003aac:	ff010113          	addi	sp,sp,-16
    80003ab0:	00113423          	sd	ra,8(sp)
    80003ab4:	00813023          	sd	s0,0(sp)
    80003ab8:	01010413          	addi	s0,sp,16
    myTests();
    80003abc:	fffff097          	auipc	ra,0xfffff
    80003ac0:	c14080e7          	jalr	-1004(ra) # 800026d0 <_Z7myTestsv>
}
    80003ac4:	00813083          	ld	ra,8(sp)
    80003ac8:	00013403          	ld	s0,0(sp)
    80003acc:	01010113          	addi	sp,sp,16
    80003ad0:	00008067          	ret

0000000080003ad4 <_ZN5Riscv10initSystemEv>:
{
    80003ad4:	ff010113          	addi	sp,sp,-16
    80003ad8:	00113423          	sd	ra,8(sp)
    80003adc:	00813023          	sd	s0,0(sp)
    80003ae0:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003ae4:	00008797          	auipc	a5,0x8
    80003ae8:	07c7b783          	ld	a5,124(a5) # 8000bb60 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003aec:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003af0:	fffff097          	auipc	ra,0xfffff
    80003af4:	f54080e7          	jalr	-172(ra) # 80002a44 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003af8:	fffff097          	auipc	ra,0xfffff
    80003afc:	2c0080e7          	jalr	704(ra) # 80002db8 <_ZN8KConsole10initializeEv>
}
    80003b00:	00813083          	ld	ra,8(sp)
    80003b04:	00013403          	ld	s0,0(sp)
    80003b08:	01010113          	addi	sp,sp,16
    80003b0c:	00008067          	ret

0000000080003b10 <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    80003b10:	ff010113          	addi	sp,sp,-16
    80003b14:	00813423          	sd	s0,8(sp)
    80003b18:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003b1c:	00200793          	li	a5,2
    80003b20:	1007a073          	csrs	sstatus,a5
}
    80003b24:	00813403          	ld	s0,8(sp)
    80003b28:	01010113          	addi	sp,sp,16
    80003b2c:	00008067          	ret

0000000080003b30 <_ZN5Riscv17disableInterruptsEv>:
{
    80003b30:	ff010113          	addi	sp,sp,-16
    80003b34:	00813423          	sd	s0,8(sp)
    80003b38:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003b3c:	00200793          	li	a5,2
    80003b40:	1007b073          	csrc	sstatus,a5
}
    80003b44:	00813403          	ld	s0,8(sp)
    80003b48:	01010113          	addi	sp,sp,16
    80003b4c:	00008067          	ret

0000000080003b50 <_ZN5Riscv9endSystemEv>:
{
    80003b50:	ff010113          	addi	sp,sp,-16
    80003b54:	00113423          	sd	ra,8(sp)
    80003b58:	00813023          	sd	s0,0(sp)
    80003b5c:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003b60:	00000097          	auipc	ra,0x0
    80003b64:	fd0080e7          	jalr	-48(ra) # 80003b30 <_ZN5Riscv17disableInterruptsEv>
}
    80003b68:	00813083          	ld	ra,8(sp)
    80003b6c:	00013403          	ld	s0,0(sp)
    80003b70:	01010113          	addi	sp,sp,16
    80003b74:	00008067          	ret

0000000080003b78 <_ZN5Riscv10popSppSpieEv>:
{
    80003b78:	ff010113          	addi	sp,sp,-16
    80003b7c:	00813423          	sd	s0,8(sp)
    80003b80:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003b84:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003b88:	10200073          	sret
}
    80003b8c:	00813403          	ld	s0,8(sp)
    80003b90:	01010113          	addi	sp,sp,16
    80003b94:	00008067          	ret

0000000080003b98 <_ZN5Riscv10kernelMainEv>:
{
    80003b98:	fe010113          	addi	sp,sp,-32
    80003b9c:	00113c23          	sd	ra,24(sp)
    80003ba0:	00813823          	sd	s0,16(sp)
    80003ba4:	00913423          	sd	s1,8(sp)
    80003ba8:	01213023          	sd	s2,0(sp)
    80003bac:	02010413          	addi	s0,sp,32
    initSystem();
    80003bb0:	00000097          	auipc	ra,0x0
    80003bb4:	f24080e7          	jalr	-220(ra) # 80003ad4 <_ZN5Riscv10initSystemEv>
    PCB* userPCB = new PCB(&Riscv::myTestsWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003bb8:	00001537          	lui	a0,0x1
    80003bbc:	00001097          	auipc	ra,0x1
    80003bc0:	8a0080e7          	jalr	-1888(ra) # 8000445c <_Z7kmallocm>
    80003bc4:	00050913          	mv	s2,a0
    80003bc8:	05800513          	li	a0,88
    80003bcc:	fffff097          	auipc	ra,0xfffff
    80003bd0:	dfc080e7          	jalr	-516(ra) # 800029c8 <_ZN3PCBnwEm>
    80003bd4:	00050493          	mv	s1,a0
    80003bd8:	00200713          	li	a4,2
    80003bdc:	00090693          	mv	a3,s2
    80003be0:	00000613          	li	a2,0
    80003be4:	00000597          	auipc	a1,0x0
    80003be8:	ec858593          	addi	a1,a1,-312 # 80003aac <_ZN5Riscv14myTestsWrapperEPv>
    80003bec:	fffff097          	auipc	ra,0xfffff
    80003bf0:	cc4080e7          	jalr	-828(ra) # 800028b0 <_ZN3PCBC1EPFvPvES0_S0_m>
    userPCB->start();
    80003bf4:	00048513          	mv	a0,s1
    80003bf8:	fffff097          	auipc	ra,0xfffff
    80003bfc:	d1c080e7          	jalr	-740(ra) # 80002914 <_ZN3PCB5startEv>
    enableInterrupts();
    80003c00:	00000097          	auipc	ra,0x0
    80003c04:	f10080e7          	jalr	-240(ra) # 80003b10 <_ZN5Riscv16enableInterruptsEv>
    while(!userPCB->isFinished())
    80003c08:	00048513          	mv	a0,s1
    80003c0c:	fffff097          	auipc	ra,0xfffff
    80003c10:	f20080e7          	jalr	-224(ra) # 80002b2c <_ZN3PCB10isFinishedEv>
    80003c14:	00051863          	bnez	a0,80003c24 <_ZN5Riscv10kernelMainEv+0x8c>
        thread_dispatch();
    80003c18:	ffffd097          	auipc	ra,0xffffd
    80003c1c:	71c080e7          	jalr	1820(ra) # 80001334 <thread_dispatch>
    while(!userPCB->isFinished())
    80003c20:	fe9ff06f          	j	80003c08 <_ZN5Riscv10kernelMainEv+0x70>
    finishSystem = true;
    80003c24:	00100793          	li	a5,1
    80003c28:	0000c717          	auipc	a4,0xc
    80003c2c:	08f70023          	sb	a5,128(a4) # 8000fca8 <_ZN5Riscv12finishSystemE>
    ::printString("End...\n");
    80003c30:	00005517          	auipc	a0,0x5
    80003c34:	43850513          	addi	a0,a0,1080 # 80009068 <CONSOLE_STATUS+0x58>
    80003c38:	00002097          	auipc	ra,0x2
    80003c3c:	108080e7          	jalr	264(ra) # 80005d40 <_Z11printStringPKc>
    while(!PCB::consolePCB->isFinished())
    80003c40:	00008797          	auipc	a5,0x8
    80003c44:	f587b783          	ld	a5,-168(a5) # 8000bb98 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003c48:	0007b503          	ld	a0,0(a5)
    80003c4c:	fffff097          	auipc	ra,0xfffff
    80003c50:	ee0080e7          	jalr	-288(ra) # 80002b2c <_ZN3PCB10isFinishedEv>
    80003c54:	00051863          	bnez	a0,80003c64 <_ZN5Riscv10kernelMainEv+0xcc>
        thread_dispatch();
    80003c58:	ffffd097          	auipc	ra,0xffffd
    80003c5c:	6dc080e7          	jalr	1756(ra) # 80001334 <thread_dispatch>
    while(!PCB::consolePCB->isFinished())
    80003c60:	fe1ff06f          	j	80003c40 <_ZN5Riscv10kernelMainEv+0xa8>
    disableInterrupts();
    80003c64:	00000097          	auipc	ra,0x0
    80003c68:	ecc080e7          	jalr	-308(ra) # 80003b30 <_ZN5Riscv17disableInterruptsEv>
    endSystem();
    80003c6c:	00000097          	auipc	ra,0x0
    80003c70:	ee4080e7          	jalr	-284(ra) # 80003b50 <_ZN5Riscv9endSystemEv>
}
    80003c74:	01813083          	ld	ra,24(sp)
    80003c78:	01013403          	ld	s0,16(sp)
    80003c7c:	00813483          	ld	s1,8(sp)
    80003c80:	00013903          	ld	s2,0(sp)
    80003c84:	02010113          	addi	sp,sp,32
    80003c88:	00008067          	ret
    80003c8c:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::myTestsWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003c90:	00048513          	mv	a0,s1
    80003c94:	fffff097          	auipc	ra,0xfffff
    80003c98:	d5c080e7          	jalr	-676(ra) # 800029f0 <_ZN3PCBdlEPv>
    80003c9c:	00090513          	mv	a0,s2
    80003ca0:	0000d097          	auipc	ra,0xd
    80003ca4:	128080e7          	jalr	296(ra) # 80010dc8 <_Unwind_Resume>

0000000080003ca8 <_ZN5Riscv15userMainWrapperEPv>:
{
    80003ca8:	ff010113          	addi	sp,sp,-16
    80003cac:	00113423          	sd	ra,8(sp)
    80003cb0:	00813023          	sd	s0,0(sp)
    80003cb4:	01010413          	addi	s0,sp,16
    userMain();
    80003cb8:	00002097          	auipc	ra,0x2
    80003cbc:	7ec080e7          	jalr	2028(ra) # 800064a4 <_Z8userMainv>
}
    80003cc0:	00813083          	ld	ra,8(sp)
    80003cc4:	00013403          	ld	s0,0(sp)
    80003cc8:	01010113          	addi	sp,sp,16
    80003ccc:	00008067          	ret

0000000080003cd0 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80003cd0:	ff010113          	addi	sp,sp,-16
    80003cd4:	00813423          	sd	s0,8(sp)
    80003cd8:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80003cdc:	00200793          	li	a5,2
    80003ce0:	1047b073          	csrc	sie,a5
}
    80003ce4:	00813403          	ld	s0,8(sp)
    80003ce8:	01010113          	addi	sp,sp,16
    80003cec:	00008067          	ret

0000000080003cf0 <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    80003cf0:	ff010113          	addi	sp,sp,-16
    80003cf4:	00813423          	sd	s0,8(sp)
    80003cf8:	01010413          	addi	s0,sp,16
    while(true)
    80003cfc:	0000006f          	j	80003cfc <_ZN5Riscv9idleRiscvEPv+0xc>

0000000080003d00 <_ZN5Riscv13w_a0_sscratchEv>:

    }
}

void Riscv::w_a0_sscratch()
{
    80003d00:	ff010113          	addi	sp,sp,-16
    80003d04:	00813423          	sd	s0,8(sp)
    80003d08:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80003d0c:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80003d10:	00008717          	auipc	a4,0x8
    80003d14:	e9873703          	ld	a4,-360(a4) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003d18:	00073703          	ld	a4,0(a4)
    80003d1c:	01073703          	ld	a4,16(a4)
    80003d20:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80003d24:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80003d28:	00078593          	mv	a1,a5
}
    80003d2c:	00813403          	ld	s0,8(sp)
    80003d30:	01010113          	addi	sp,sp,16
    80003d34:	00008067          	ret

0000000080003d38 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80003d38:	ff010113          	addi	sp,sp,-16
    80003d3c:	00813423          	sd	s0,8(sp)
    80003d40:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80003d44:	00008797          	auipc	a5,0x8
    80003d48:	e647b783          	ld	a5,-412(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003d4c:	0007b783          	ld	a5,0(a5)
    80003d50:	0007c783          	lbu	a5,0(a5)
    80003d54:	00078c63          	beqz	a5,80003d6c <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003d58:	10000793          	li	a5,256
    80003d5c:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80003d60:	00813403          	ld	s0,8(sp)
    80003d64:	01010113          	addi	sp,sp,16
    80003d68:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003d6c:	10000793          	li	a5,256
    80003d70:	1007b073          	csrc	sstatus,a5
    80003d74:	fedff06f          	j	80003d60 <_ZN5Riscv14changePrivModeEv+0x28>

0000000080003d78 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80003d78:	f9010113          	addi	sp,sp,-112
    80003d7c:	06113423          	sd	ra,104(sp)
    80003d80:	06813023          	sd	s0,96(sp)
    80003d84:	04913c23          	sd	s1,88(sp)
    80003d88:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003d8c:	00070713          	mv	a4,a4
    80003d90:	00008797          	auipc	a5,0x8
    80003d94:	e287b783          	ld	a5,-472(a5) # 8000bbb8 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003d98:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80003d9c:	00008797          	auipc	a5,0x8
    80003da0:	e0c7b783          	ld	a5,-500(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003da4:	0007b783          	ld	a5,0(a5)
    80003da8:	14002773          	csrr	a4,sscratch
    80003dac:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003db0:	142027f3          	csrr	a5,scause
    80003db4:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80003db8:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003dbc:	00900713          	li	a4,9
    80003dc0:	04f76e63          	bltu	a4,a5,80003e1c <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
    80003dc4:	00800713          	li	a4,8
    80003dc8:	1ce7f463          	bgeu	a5,a4,80003f90 <_ZN5Riscv20handleSupervisorTrapEv+0x218>
    80003dcc:	00500713          	li	a4,5
    80003dd0:	1ae78263          	beq	a5,a4,80003f74 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
    80003dd4:	00700713          	li	a4,7
    80003dd8:	02e79063          	bne	a5,a4,80003df8 <_ZN5Riscv20handleSupervisorTrapEv+0x80>
            trapPrintString("write interrupt\n");
    80003ddc:	00005517          	auipc	a0,0x5
    80003de0:	4bc50513          	addi	a0,a0,1212 # 80009298 <CONSOLE_STATUS+0x288>
    80003de4:	00002097          	auipc	ra,0x2
    80003de8:	208080e7          	jalr	520(ra) # 80005fec <_Z15trapPrintStringPKc>
            thread_exit();
    80003dec:	ffffd097          	auipc	ra,0xffffd
    80003df0:	568080e7          	jalr	1384(ra) # 80001354 <thread_exit>
            break;
    80003df4:	1300006f          	j	80003f24 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
    switch(scause)
    80003df8:	00200713          	li	a4,2
    80003dfc:	12e79463          	bne	a5,a4,80003f24 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
            trapPrintString("operation interrupt\n");
    80003e00:	00005517          	auipc	a0,0x5
    80003e04:	47050513          	addi	a0,a0,1136 # 80009270 <CONSOLE_STATUS+0x260>
    80003e08:	00002097          	auipc	ra,0x2
    80003e0c:	1e4080e7          	jalr	484(ra) # 80005fec <_Z15trapPrintStringPKc>
            thread_exit();
    80003e10:	ffffd097          	auipc	ra,0xffffd
    80003e14:	544080e7          	jalr	1348(ra) # 80001354 <thread_exit>
            break;
    80003e18:	10c0006f          	j	80003f24 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
    switch(scause)
    80003e1c:	fff00713          	li	a4,-1
    80003e20:	03f71713          	slli	a4,a4,0x3f
    80003e24:	00170713          	addi	a4,a4,1
    80003e28:	06e78a63          	beq	a5,a4,80003e9c <_ZN5Riscv20handleSupervisorTrapEv+0x124>
    80003e2c:	fff00713          	li	a4,-1
    80003e30:	03f71713          	slli	a4,a4,0x3f
    80003e34:	00970713          	addi	a4,a4,9
    80003e38:	0ee79663          	bne	a5,a4,80003f24 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
            uint64 x = CONSOLE_STATUS;
    80003e3c:	00008797          	auipc	a5,0x8
    80003e40:	d147b783          	ld	a5,-748(a5) # 8000bb50 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003e44:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003e48:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003e4c:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003e50:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80003e54:	0017f793          	andi	a5,a5,1
    80003e58:	02078863          	beqz	a5,80003e88 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
                x = CONSOLE_TX_DATA;
    80003e5c:	00008797          	auipc	a5,0x8
    80003e60:	d147b783          	ld	a5,-748(a5) # 8000bb70 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003e64:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003e68:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003e6c:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003e70:	00058513          	mv	a0,a1
    80003e74:	0ff57493          	andi	s1,a0,255
                if(KConsole::pendingGetc > 0)
    80003e78:	00008797          	auipc	a5,0x8
    80003e7c:	cf07b783          	ld	a5,-784(a5) # 8000bb68 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003e80:	0007b783          	ld	a5,0(a5)
    80003e84:	0c079263          	bnez	a5,80003f48 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
            plic_complete(plic_claim());
    80003e88:	00003097          	auipc	ra,0x3
    80003e8c:	22c080e7          	jalr	556(ra) # 800070b4 <plic_claim>
    80003e90:	00003097          	auipc	ra,0x3
    80003e94:	25c080e7          	jalr	604(ra) # 800070ec <plic_complete>
            break;
    80003e98:	08c0006f          	j	80003f24 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003e9c:	141027f3          	csrr	a5,sepc
    80003ea0:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003ea4:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003ea8:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003eac:	100027f3          	csrr	a5,sstatus
    80003eb0:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003eb4:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003eb8:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003ebc:	00200793          	li	a5,2
    80003ec0:	1447b073          	csrc	sip,a5
            totalTime++;
    80003ec4:	0000c717          	auipc	a4,0xc
    80003ec8:	de470713          	addi	a4,a4,-540 # 8000fca8 <_ZN5Riscv12finishSystemE>
    80003ecc:	00873783          	ld	a5,8(a4)
    80003ed0:	00178793          	addi	a5,a5,1
    80003ed4:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80003ed8:	00008497          	auipc	s1,0x8
    80003edc:	ca04b483          	ld	s1,-864(s1) # 8000bb78 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003ee0:	0004b783          	ld	a5,0(s1)
    80003ee4:	00178793          	addi	a5,a5,1
    80003ee8:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003eec:	fffff097          	auipc	ra,0xfffff
    80003ef0:	3dc080e7          	jalr	988(ra) # 800032c8 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003ef4:	00008797          	auipc	a5,0x8
    80003ef8:	cb47b783          	ld	a5,-844(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003efc:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003f00:	0187b783          	ld	a5,24(a5)
    80003f04:	0004b703          	ld	a4,0(s1)
    80003f08:	02f77863          	bgeu	a4,a5,80003f38 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            Riscv::w_sstatus(sstatus);
    80003f0c:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003f10:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003f14:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003f18:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003f1c:	00000097          	auipc	ra,0x0
    80003f20:	e1c080e7          	jalr	-484(ra) # 80003d38 <_ZN5Riscv14changePrivModeEv>
}
    80003f24:	06813083          	ld	ra,104(sp)
    80003f28:	06013403          	ld	s0,96(sp)
    80003f2c:	05813483          	ld	s1,88(sp)
    80003f30:	07010113          	addi	sp,sp,112
    80003f34:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80003f38:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003f3c:	fffff097          	auipc	ra,0xfffff
    80003f40:	a00080e7          	jalr	-1536(ra) # 8000293c <_ZN3PCB8dispatchEv>
    80003f44:	fc9ff06f          	j	80003f0c <_ZN5Riscv20handleSupervisorTrapEv+0x194>
                    KConsole::pendingGetc--;
    80003f48:	fff78793          	addi	a5,a5,-1
    80003f4c:	00008717          	auipc	a4,0x8
    80003f50:	c1c73703          	ld	a4,-996(a4) # 8000bb68 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003f54:	00f73023          	sd	a5,0(a4)
                    KConsole::putCharacterInput(c);
    80003f58:	00048513          	mv	a0,s1
    80003f5c:	fffff097          	auipc	ra,0xfffff
    80003f60:	f0c080e7          	jalr	-244(ra) # 80002e68 <_ZN8KConsole17putCharacterInputEc>
                    KConsole::putCharacterOutput(c);
    80003f64:	00048513          	mv	a0,s1
    80003f68:	fffff097          	auipc	ra,0xfffff
    80003f6c:	fe0080e7          	jalr	-32(ra) # 80002f48 <_ZN8KConsole18putCharacterOutputEc>
    80003f70:	f19ff06f          	j	80003e88 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            trapPrintString("read interrupt\n");
    80003f74:	00005517          	auipc	a0,0x5
    80003f78:	31450513          	addi	a0,a0,788 # 80009288 <CONSOLE_STATUS+0x278>
    80003f7c:	00002097          	auipc	ra,0x2
    80003f80:	070080e7          	jalr	112(ra) # 80005fec <_Z15trapPrintStringPKc>
            thread_exit();
    80003f84:	ffffd097          	auipc	ra,0xffffd
    80003f88:	3d0080e7          	jalr	976(ra) # 80001354 <thread_exit>
            break;
    80003f8c:	f99ff06f          	j	80003f24 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003f90:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003f94:	14102773          	csrr	a4,sepc
    80003f98:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003f9c:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003fa0:	00470713          	addi	a4,a4,4
    80003fa4:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003fa8:	10002773          	csrr	a4,sstatus
    80003fac:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003fb0:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003fb4:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003fb8:	04300713          	li	a4,67
    80003fbc:	02f76463          	bltu	a4,a5,80003fe4 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
    80003fc0:	00279793          	slli	a5,a5,0x2
    80003fc4:	00005717          	auipc	a4,0x5
    80003fc8:	2e870713          	addi	a4,a4,744 # 800092ac <CONSOLE_STATUS+0x29c>
    80003fcc:	00e787b3          	add	a5,a5,a4
    80003fd0:	0007a783          	lw	a5,0(a5)
    80003fd4:	00e787b3          	add	a5,a5,a4
    80003fd8:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80003fdc:	00000097          	auipc	ra,0x0
    80003fe0:	4a8080e7          	jalr	1192(ra) # 80004484 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003fe4:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003fe8:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003fec:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003ff0:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003ff4:	00000097          	auipc	ra,0x0
    80003ff8:	d44080e7          	jalr	-700(ra) # 80003d38 <_ZN5Riscv14changePrivModeEv>
}
    80003ffc:	f29ff06f          	j	80003f24 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                    MemoryAllocator::memFreeHandler();
    80004000:	00000097          	auipc	ra,0x0
    80004004:	4e8080e7          	jalr	1256(ra) # 800044e8 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80004008:	fddff06f          	j	80003fe4 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    PCB::threadMakePCBHandler();
    8000400c:	fffff097          	auipc	ra,0xfffff
    80004010:	d18080e7          	jalr	-744(ra) # 80002d24 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80004014:	fd1ff06f          	j	80003fe4 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    PCB::threadCreateHandler();
    80004018:	fffff097          	auipc	ra,0xfffff
    8000401c:	c28080e7          	jalr	-984(ra) # 80002c40 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80004020:	fc5ff06f          	j	80003fe4 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    PCB::threadStartHandler();
    80004024:	fffff097          	auipc	ra,0xfffff
    80004028:	cbc080e7          	jalr	-836(ra) # 80002ce0 <_ZN3PCB18threadStartHandlerEv>
                    break;
    8000402c:	fb9ff06f          	j	80003fe4 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    PCB::threadDispatchHandler();
    80004030:	fffff097          	auipc	ra,0xfffff
    80004034:	b7c080e7          	jalr	-1156(ra) # 80002bac <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80004038:	fadff06f          	j	80003fe4 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    PCB::threadExitHandler();
    8000403c:	fffff097          	auipc	ra,0xfffff
    80004040:	b14080e7          	jalr	-1260(ra) # 80002b50 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80004044:	fa1ff06f          	j	80003fe4 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    PCB::threadSleepHandler();
    80004048:	fffff097          	auipc	ra,0xfffff
    8000404c:	b94080e7          	jalr	-1132(ra) # 80002bdc <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80004050:	f95ff06f          	j	80003fe4 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    KSemaphore::semOpenHandler();
    80004054:	00000097          	auipc	ra,0x0
    80004058:	744080e7          	jalr	1860(ra) # 80004798 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    8000405c:	f89ff06f          	j	80003fe4 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    KSemaphore::semWaitHandler();
    80004060:	00000097          	auipc	ra,0x0
    80004064:	7d0080e7          	jalr	2000(ra) # 80004830 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80004068:	f7dff06f          	j	80003fe4 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    KSemaphore::semSignalHandler();
    8000406c:	00001097          	auipc	ra,0x1
    80004070:	804080e7          	jalr	-2044(ra) # 80004870 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80004074:	f71ff06f          	j	80003fe4 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    KSemaphore::semCloseHandler();
    80004078:	00001097          	auipc	ra,0x1
    8000407c:	838080e7          	jalr	-1992(ra) # 800048b0 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80004080:	f65ff06f          	j	80003fe4 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    KConsole::getcHandler();
    80004084:	fffff097          	auipc	ra,0xfffff
    80004088:	084080e7          	jalr	132(ra) # 80003108 <_ZN8KConsole11getcHandlerEv>
                    break;
    8000408c:	f59ff06f          	j	80003fe4 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    KConsole::putcHandler();
    80004090:	fffff097          	auipc	ra,0xfffff
    80004094:	048080e7          	jalr	72(ra) # 800030d8 <_ZN8KConsole11putcHandlerEv>
                    break;
    80004098:	f4dff06f          	j	80003fe4 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    KConsole::getCharHandler();
    8000409c:	fffff097          	auipc	ra,0xfffff
    800040a0:	18c080e7          	jalr	396(ra) # 80003228 <_ZN8KConsole14getCharHandlerEv>
                    break;
    800040a4:	f41ff06f          	j	80003fe4 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>

00000000800040a8 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    800040a8:	ff010113          	addi	sp,sp,-16
    800040ac:	00813423          	sd	s0,8(sp)
    800040b0:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    800040b4:	0000c717          	auipc	a4,0xc
    800040b8:	c0472703          	lw	a4,-1020(a4) # 8000fcb8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800040bc:	00100793          	li	a5,1
    800040c0:	04f70263          	beq	a4,a5,80004104 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    800040c4:	0000c797          	auipc	a5,0xc
    800040c8:	bf478793          	addi	a5,a5,-1036 # 8000fcb8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800040cc:	00100713          	li	a4,1
    800040d0:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800040d4:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    800040d8:	00008717          	auipc	a4,0x8
    800040dc:	a8073703          	ld	a4,-1408(a4) # 8000bb58 <_GLOBAL_OFFSET_TABLE_+0x18>
    800040e0:	00073703          	ld	a4,0(a4)
    800040e4:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    800040e8:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    800040ec:	00008797          	auipc	a5,0x8
    800040f0:	ac47b783          	ld	a5,-1340(a5) # 8000bbb0 <_GLOBAL_OFFSET_TABLE_+0x70>
    800040f4:	0007b783          	ld	a5,0(a5)
    800040f8:	40e787b3          	sub	a5,a5,a4
    800040fc:	ff178793          	addi	a5,a5,-15
    80004100:	00f73023          	sd	a5,0(a4)
}
    80004104:	00813403          	ld	s0,8(sp)
    80004108:	01010113          	addi	sp,sp,16
    8000410c:	00008067          	ret

0000000080004110 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80004110:	fe010113          	addi	sp,sp,-32
    80004114:	00113c23          	sd	ra,24(sp)
    80004118:	00813823          	sd	s0,16(sp)
    8000411c:	00913423          	sd	s1,8(sp)
    80004120:	01213023          	sd	s2,0(sp)
    80004124:	02010413          	addi	s0,sp,32
    80004128:	00050493          	mv	s1,a0
    8000412c:	00058913          	mv	s2,a1
    initMemory();
    80004130:	00000097          	auipc	ra,0x0
    80004134:	f78080e7          	jalr	-136(ra) # 800040a8 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004138:	0000c797          	auipc	a5,0xc
    8000413c:	b887b783          	ld	a5,-1144(a5) # 8000fcc0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004140:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80004144:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80004148:	00000713          	li	a4,0
    while(curr != 0)
    8000414c:	00078c63          	beqz	a5,80004164 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80004150:	00f4e863          	bltu	s1,a5,80004160 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004154:	00078713          	mv	a4,a5
        curr = curr->next;
    80004158:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000415c:	ff1ff06f          	j	8000414c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80004160:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80004164:	02070063          	beqz	a4,80004184 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004168:	00973423          	sd	s1,8(a4)
}
    8000416c:	01813083          	ld	ra,24(sp)
    80004170:	01013403          	ld	s0,16(sp)
    80004174:	00813483          	ld	s1,8(sp)
    80004178:	00013903          	ld	s2,0(sp)
    8000417c:	02010113          	addi	sp,sp,32
    80004180:	00008067          	ret
        headAllocated = newAllocated;
    80004184:	0000c797          	auipc	a5,0xc
    80004188:	b297be23          	sd	s1,-1220(a5) # 8000fcc0 <_ZN15MemoryAllocator13headAllocatedE>
    8000418c:	fe1ff06f          	j	8000416c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080004190 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80004190:	fe010113          	addi	sp,sp,-32
    80004194:	00113c23          	sd	ra,24(sp)
    80004198:	00813823          	sd	s0,16(sp)
    8000419c:	00913423          	sd	s1,8(sp)
    800041a0:	01213023          	sd	s2,0(sp)
    800041a4:	02010413          	addi	s0,sp,32
    800041a8:	00050913          	mv	s2,a0
    initMemory();
    800041ac:	00000097          	auipc	ra,0x0
    800041b0:	efc080e7          	jalr	-260(ra) # 800040a8 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800041b4:	0000c497          	auipc	s1,0xc
    800041b8:	b144b483          	ld	s1,-1260(s1) # 8000fcc8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    800041bc:	00000713          	li	a4,0
    while(curr != 0)
    800041c0:	0a048863          	beqz	s1,80004270 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    800041c4:	0004b783          	ld	a5,0(s1)
    800041c8:	0127f863          	bgeu	a5,s2,800041d8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    800041cc:	00048713          	mv	a4,s1
        curr = curr->next;
    800041d0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800041d4:	fedff06f          	j	800041c0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    800041d8:	01090693          	addi	a3,s2,16
    800041dc:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    800041e0:	00008617          	auipc	a2,0x8
    800041e4:	9d063603          	ld	a2,-1584(a2) # 8000bbb0 <_GLOBAL_OFFSET_TABLE_+0x70>
    800041e8:	00063603          	ld	a2,0(a2)
    800041ec:	04d66c63          	bltu	a2,a3,80004244 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    800041f0:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    800041f4:	01000613          	li	a2,16
    800041f8:	02f67663          	bgeu	a2,a5,80004224 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    800041fc:	0084b603          	ld	a2,8(s1)
    80004200:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80004204:	ff078793          	addi	a5,a5,-16
    80004208:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    8000420c:	00070663          	beqz	a4,80004218 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80004210:	00d73423          	sd	a3,8(a4)
    80004214:	0380006f          	j	8000424c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80004218:	0000c797          	auipc	a5,0xc
    8000421c:	aad7b823          	sd	a3,-1360(a5) # 8000fcc8 <_ZN15MemoryAllocator8headFreeE>
    80004220:	02c0006f          	j	8000424c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80004224:	00070863          	beqz	a4,80004234 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80004228:	0084b783          	ld	a5,8(s1)
    8000422c:	00f73423          	sd	a5,8(a4)
    80004230:	01c0006f          	j	8000424c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80004234:	0084b783          	ld	a5,8(s1)
    80004238:	0000c717          	auipc	a4,0xc
    8000423c:	a8f73823          	sd	a5,-1392(a4) # 8000fcc8 <_ZN15MemoryAllocator8headFreeE>
    80004240:	00c0006f          	j	8000424c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80004244:	02070063          	beqz	a4,80004264 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80004248:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    8000424c:	00090593          	mv	a1,s2
    80004250:	00048513          	mv	a0,s1
    80004254:	00000097          	auipc	ra,0x0
    80004258:	ebc080e7          	jalr	-324(ra) # 80004110 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    8000425c:	01048513          	addi	a0,s1,16
            break;
    80004260:	0140006f          	j	80004274 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80004264:	0000c797          	auipc	a5,0xc
    80004268:	a607b223          	sd	zero,-1436(a5) # 8000fcc8 <_ZN15MemoryAllocator8headFreeE>
    8000426c:	fe1ff06f          	j	8000424c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80004270:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004274:	01813083          	ld	ra,24(sp)
    80004278:	01013403          	ld	s0,16(sp)
    8000427c:	00813483          	ld	s1,8(sp)
    80004280:	00013903          	ld	s2,0(sp)
    80004284:	02010113          	addi	sp,sp,32
    80004288:	00008067          	ret

000000008000428c <_ZN15MemoryAllocator9mem_allocEm>:
{
    8000428c:	ff010113          	addi	sp,sp,-16
    80004290:	00113423          	sd	ra,8(sp)
    80004294:	00813023          	sd	s0,0(sp)
    80004298:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    8000429c:	00000097          	auipc	ra,0x0
    800042a0:	ef4080e7          	jalr	-268(ra) # 80004190 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    800042a4:	00813083          	ld	ra,8(sp)
    800042a8:	00013403          	ld	s0,0(sp)
    800042ac:	01010113          	addi	sp,sp,16
    800042b0:	00008067          	ret

00000000800042b4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800042b4:	fe010113          	addi	sp,sp,-32
    800042b8:	00113c23          	sd	ra,24(sp)
    800042bc:	00813823          	sd	s0,16(sp)
    800042c0:	00913423          	sd	s1,8(sp)
    800042c4:	01213023          	sd	s2,0(sp)
    800042c8:	02010413          	addi	s0,sp,32
    800042cc:	00050493          	mv	s1,a0
    800042d0:	00058913          	mv	s2,a1
    initMemory();
    800042d4:	00000097          	auipc	ra,0x0
    800042d8:	dd4080e7          	jalr	-556(ra) # 800040a8 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800042dc:	0000c797          	auipc	a5,0xc
    800042e0:	9ec7b783          	ld	a5,-1556(a5) # 8000fcc8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800042e4:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800042e8:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    800042ec:	00000713          	li	a4,0
    while(curr != 0)
    800042f0:	00078c63          	beqz	a5,80004308 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800042f4:	00f4e863          	bltu	s1,a5,80004304 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800042f8:	00078713          	mv	a4,a5
        curr = curr->next;
    800042fc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004300:	ff1ff06f          	j	800042f0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80004304:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80004308:	04070663          	beqz	a4,80004354 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    8000430c:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004310:	0084b783          	ld	a5,8(s1)
    80004314:	00078a63          	beqz	a5,80004328 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80004318:	0004b603          	ld	a2,0(s1)
    8000431c:	01060693          	addi	a3,a2,16
    80004320:	00d486b3          	add	a3,s1,a3
    80004324:	02d78e63          	beq	a5,a3,80004360 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004328:	00070a63          	beqz	a4,8000433c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    8000432c:	00073683          	ld	a3,0(a4)
    80004330:	01068793          	addi	a5,a3,16
    80004334:	00f707b3          	add	a5,a4,a5
    80004338:	04978263          	beq	a5,s1,8000437c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    8000433c:	01813083          	ld	ra,24(sp)
    80004340:	01013403          	ld	s0,16(sp)
    80004344:	00813483          	ld	s1,8(sp)
    80004348:	00013903          	ld	s2,0(sp)
    8000434c:	02010113          	addi	sp,sp,32
    80004350:	00008067          	ret
        headFree = newSegment;
    80004354:	0000c797          	auipc	a5,0xc
    80004358:	9697ba23          	sd	s1,-1676(a5) # 8000fcc8 <_ZN15MemoryAllocator8headFreeE>
    8000435c:	fb5ff06f          	j	80004310 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004360:	0007b683          	ld	a3,0(a5)
    80004364:	00d60633          	add	a2,a2,a3
    80004368:	01060613          	addi	a2,a2,16
    8000436c:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80004370:	0087b783          	ld	a5,8(a5)
    80004374:	00f4b423          	sd	a5,8(s1)
    80004378:	fb1ff06f          	j	80004328 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    8000437c:	0004b783          	ld	a5,0(s1)
    80004380:	00f686b3          	add	a3,a3,a5
    80004384:	01068693          	addi	a3,a3,16
    80004388:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    8000438c:	0084b783          	ld	a5,8(s1)
    80004390:	00f73423          	sd	a5,8(a4)
}
    80004394:	fa9ff06f          	j	8000433c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080004398 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80004398:	fe010113          	addi	sp,sp,-32
    8000439c:	00113c23          	sd	ra,24(sp)
    800043a0:	00813823          	sd	s0,16(sp)
    800043a4:	00913423          	sd	s1,8(sp)
    800043a8:	01213023          	sd	s2,0(sp)
    800043ac:	02010413          	addi	s0,sp,32
    800043b0:	00050913          	mv	s2,a0
    initMemory();
    800043b4:	00000097          	auipc	ra,0x0
    800043b8:	cf4080e7          	jalr	-780(ra) # 800040a8 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    800043bc:	0000c497          	auipc	s1,0xc
    800043c0:	9044b483          	ld	s1,-1788(s1) # 8000fcc0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    800043c4:	00000713          	li	a4,0
    while(curr != 0)
    800043c8:	02048a63          	beqz	s1,800043fc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    800043cc:	01048793          	addi	a5,s1,16
    800043d0:	01278863          	beq	a5,s2,800043e0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    800043d4:	00048713          	mv	a4,s1
        curr = curr->next;
    800043d8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800043dc:	fedff06f          	j	800043c8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    800043e0:	02070e63          	beqz	a4,8000441c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    800043e4:	0084b783          	ld	a5,8(s1)
    800043e8:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    800043ec:	0004b583          	ld	a1,0(s1)
    800043f0:	00048513          	mv	a0,s1
    800043f4:	00000097          	auipc	ra,0x0
    800043f8:	ec0080e7          	jalr	-320(ra) # 800042b4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800043fc:	02048863          	beqz	s1,8000442c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004400:	00000513          	li	a0,0
    else
        return 1;
}
    80004404:	01813083          	ld	ra,24(sp)
    80004408:	01013403          	ld	s0,16(sp)
    8000440c:	00813483          	ld	s1,8(sp)
    80004410:	00013903          	ld	s2,0(sp)
    80004414:	02010113          	addi	sp,sp,32
    80004418:	00008067          	ret
                headAllocated = curr->next;
    8000441c:	0084b783          	ld	a5,8(s1)
    80004420:	0000c717          	auipc	a4,0xc
    80004424:	8af73023          	sd	a5,-1888(a4) # 8000fcc0 <_ZN15MemoryAllocator13headAllocatedE>
    80004428:	fc5ff06f          	j	800043ec <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    8000442c:	00100513          	li	a0,1
    80004430:	fd5ff06f          	j	80004404 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080004434 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004434:	ff010113          	addi	sp,sp,-16
    80004438:	00113423          	sd	ra,8(sp)
    8000443c:	00813023          	sd	s0,0(sp)
    80004440:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004444:	00000097          	auipc	ra,0x0
    80004448:	f54080e7          	jalr	-172(ra) # 80004398 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    8000444c:	00813083          	ld	ra,8(sp)
    80004450:	00013403          	ld	s0,0(sp)
    80004454:	01010113          	addi	sp,sp,16
    80004458:	00008067          	ret

000000008000445c <_Z7kmallocm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* kmalloc(size_t size)
{
    8000445c:	ff010113          	addi	sp,sp,-16
    80004460:	00113423          	sd	ra,8(sp)
    80004464:	00813023          	sd	s0,0(sp)
    80004468:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    8000446c:	00000097          	auipc	ra,0x0
    80004470:	e20080e7          	jalr	-480(ra) # 8000428c <_ZN15MemoryAllocator9mem_allocEm>
}
    80004474:	00813083          	ld	ra,8(sp)
    80004478:	00013403          	ld	s0,0(sp)
    8000447c:	01010113          	addi	sp,sp,16
    80004480:	00008067          	ret

0000000080004484 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004484:	ff010113          	addi	sp,sp,-16
    80004488:	00113423          	sd	ra,8(sp)
    8000448c:	00813023          	sd	s0,0(sp)
    80004490:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004494:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004498:	00651513          	slli	a0,a0,0x6
    8000449c:	00000097          	auipc	ra,0x0
    800044a0:	fc0080e7          	jalr	-64(ra) # 8000445c <_Z7kmallocm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800044a4:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800044a8:	00000097          	auipc	ra,0x0
    800044ac:	858080e7          	jalr	-1960(ra) # 80003d00 <_ZN5Riscv13w_a0_sscratchEv>
}
    800044b0:	00813083          	ld	ra,8(sp)
    800044b4:	00013403          	ld	s0,0(sp)
    800044b8:	01010113          	addi	sp,sp,16
    800044bc:	00008067          	ret

00000000800044c0 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    800044c0:	ff010113          	addi	sp,sp,-16
    800044c4:	00113423          	sd	ra,8(sp)
    800044c8:	00813023          	sd	s0,0(sp)
    800044cc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    800044d0:	00000097          	auipc	ra,0x0
    800044d4:	f64080e7          	jalr	-156(ra) # 80004434 <_ZN15MemoryAllocator8mem_freeEPv>
    800044d8:	00813083          	ld	ra,8(sp)
    800044dc:	00013403          	ld	s0,0(sp)
    800044e0:	01010113          	addi	sp,sp,16
    800044e4:	00008067          	ret

00000000800044e8 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    800044e8:	ff010113          	addi	sp,sp,-16
    800044ec:	00113423          	sd	ra,8(sp)
    800044f0:	00813023          	sd	s0,0(sp)
    800044f4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    800044f8:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    800044fc:	00000097          	auipc	ra,0x0
    80004500:	fc4080e7          	jalr	-60(ra) # 800044c0 <_Z5kfreePv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004504:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004508:	fffff097          	auipc	ra,0xfffff
    8000450c:	7f8080e7          	jalr	2040(ra) # 80003d00 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004510:	00813083          	ld	ra,8(sp)
    80004514:	00013403          	ld	s0,0(sp)
    80004518:	01010113          	addi	sp,sp,16
    8000451c:	00008067          	ret

0000000080004520 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80004520:	ff010113          	addi	sp,sp,-16
    80004524:	00813423          	sd	s0,8(sp)
    80004528:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    8000452c:	00b52a23          	sw	a1,20(a0)
    80004530:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004534:	00053423          	sd	zero,8(a0)
    80004538:	00053023          	sd	zero,0(a0)
}
    8000453c:	00813403          	ld	s0,8(sp)
    80004540:	01010113          	addi	sp,sp,16
    80004544:	00008067          	ret

0000000080004548 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004548:	ff010113          	addi	sp,sp,-16
    8000454c:	00813423          	sd	s0,8(sp)
    80004550:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004554:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004558:	00053783          	ld	a5,0(a0)
    8000455c:	00078e63          	beqz	a5,80004578 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004560:	00853783          	ld	a5,8(a0)
    80004564:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004568:	00b53423          	sd	a1,8(a0)
    }
}
    8000456c:	00813403          	ld	s0,8(sp)
    80004570:	01010113          	addi	sp,sp,16
    80004574:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004578:	00b53423          	sd	a1,8(a0)
    8000457c:	00b53023          	sd	a1,0(a0)
    80004580:	fedff06f          	j	8000456c <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004584 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80004584:	ff010113          	addi	sp,sp,-16
    80004588:	00113423          	sd	ra,8(sp)
    8000458c:	00813023          	sd	s0,0(sp)
    80004590:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004594:	00007797          	auipc	a5,0x7
    80004598:	6147b783          	ld	a5,1556(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000459c:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800045a0:	00200793          	li	a5,2
    800045a4:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    800045a8:	00000097          	auipc	ra,0x0
    800045ac:	fa0080e7          	jalr	-96(ra) # 80004548 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800045b0:	ffffe097          	auipc	ra,0xffffe
    800045b4:	38c080e7          	jalr	908(ra) # 8000293c <_ZN3PCB8dispatchEv>
}
    800045b8:	00813083          	ld	ra,8(sp)
    800045bc:	00013403          	ld	s0,0(sp)
    800045c0:	01010113          	addi	sp,sp,16
    800045c4:	00008067          	ret

00000000800045c8 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    800045c8:	01052783          	lw	a5,16(a0)
    800045cc:	fff7879b          	addiw	a5,a5,-1
    800045d0:	00f52823          	sw	a5,16(a0)
    800045d4:	02079713          	slli	a4,a5,0x20
    800045d8:	00074663          	bltz	a4,800045e4 <_ZN10KSemaphore4waitEv+0x1c>
}
    800045dc:	00000513          	li	a0,0
    800045e0:	00008067          	ret
uint64 KSemaphore::wait() {
    800045e4:	ff010113          	addi	sp,sp,-16
    800045e8:	00113423          	sd	ra,8(sp)
    800045ec:	00813023          	sd	s0,0(sp)
    800045f0:	01010413          	addi	s0,sp,16
        block();
    800045f4:	00000097          	auipc	ra,0x0
    800045f8:	f90080e7          	jalr	-112(ra) # 80004584 <_ZN10KSemaphore5blockEv>
}
    800045fc:	00000513          	li	a0,0
    80004600:	00813083          	ld	ra,8(sp)
    80004604:	00013403          	ld	s0,0(sp)
    80004608:	01010113          	addi	sp,sp,16
    8000460c:	00008067          	ret

0000000080004610 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004610:	ff010113          	addi	sp,sp,-16
    80004614:	00813423          	sd	s0,8(sp)
    80004618:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    8000461c:	00053503          	ld	a0,0(a0)
    80004620:	00813403          	ld	s0,8(sp)
    80004624:	01010113          	addi	sp,sp,16
    80004628:	00008067          	ret

000000008000462c <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    8000462c:	ff010113          	addi	sp,sp,-16
    80004630:	00813423          	sd	s0,8(sp)
    80004634:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004638:	00053783          	ld	a5,0(a0)
    8000463c:	00078c63          	beqz	a5,80004654 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004640:	0087b703          	ld	a4,8(a5)
    80004644:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004648:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    8000464c:	00053783          	ld	a5,0(a0)
    80004650:	00078863          	beqz	a5,80004660 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004654:	00813403          	ld	s0,8(sp)
    80004658:	01010113          	addi	sp,sp,16
    8000465c:	00008067          	ret
        tailBlocked =0;
    80004660:	00053423          	sd	zero,8(a0)
    80004664:	ff1ff06f          	j	80004654 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004668 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004668:	fe010113          	addi	sp,sp,-32
    8000466c:	00113c23          	sd	ra,24(sp)
    80004670:	00813823          	sd	s0,16(sp)
    80004674:	00913423          	sd	s1,8(sp)
    80004678:	01213023          	sd	s2,0(sp)
    8000467c:	02010413          	addi	s0,sp,32
    80004680:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004684:	00090513          	mv	a0,s2
    80004688:	00000097          	auipc	ra,0x0
    8000468c:	f88080e7          	jalr	-120(ra) # 80004610 <_ZN10KSemaphore15getFirstBlockedEv>
    80004690:	00050493          	mv	s1,a0
    80004694:	02050063          	beqz	a0,800046b4 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    80004698:	00090513          	mv	a0,s2
    8000469c:	00000097          	auipc	ra,0x0
    800046a0:	f90080e7          	jalr	-112(ra) # 8000462c <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    800046a4:	00048513          	mv	a0,s1
    800046a8:	fffff097          	auipc	ra,0xfffff
    800046ac:	ebc080e7          	jalr	-324(ra) # 80003564 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800046b0:	fd5ff06f          	j	80004684 <_ZN10KSemaphoreD1Ev+0x1c>
}
    800046b4:	01813083          	ld	ra,24(sp)
    800046b8:	01013403          	ld	s0,16(sp)
    800046bc:	00813483          	ld	s1,8(sp)
    800046c0:	00013903          	ld	s2,0(sp)
    800046c4:	02010113          	addi	sp,sp,32
    800046c8:	00008067          	ret

00000000800046cc <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800046cc:	fe010113          	addi	sp,sp,-32
    800046d0:	00113c23          	sd	ra,24(sp)
    800046d4:	00813823          	sd	s0,16(sp)
    800046d8:	00913423          	sd	s1,8(sp)
    800046dc:	01213023          	sd	s2,0(sp)
    800046e0:	02010413          	addi	s0,sp,32
    800046e4:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    800046e8:	00000097          	auipc	ra,0x0
    800046ec:	f28080e7          	jalr	-216(ra) # 80004610 <_ZN10KSemaphore15getFirstBlockedEv>
    800046f0:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800046f4:	00090513          	mv	a0,s2
    800046f8:	00000097          	auipc	ra,0x0
    800046fc:	f34080e7          	jalr	-204(ra) # 8000462c <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004700:	00048863          	beqz	s1,80004710 <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    80004704:	00048513          	mv	a0,s1
    80004708:	fffff097          	auipc	ra,0xfffff
    8000470c:	e5c080e7          	jalr	-420(ra) # 80003564 <_ZN9Scheduler3putEP3PCB>
    }
}
    80004710:	01813083          	ld	ra,24(sp)
    80004714:	01013403          	ld	s0,16(sp)
    80004718:	00813483          	ld	s1,8(sp)
    8000471c:	00013903          	ld	s2,0(sp)
    80004720:	02010113          	addi	sp,sp,32
    80004724:	00008067          	ret

0000000080004728 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004728:	01052783          	lw	a5,16(a0)
    8000472c:	0017879b          	addiw	a5,a5,1
    80004730:	0007871b          	sext.w	a4,a5
    80004734:	00f52823          	sw	a5,16(a0)
    80004738:	00e05663          	blez	a4,80004744 <_ZN10KSemaphore6signalEv+0x1c>
}
    8000473c:	00000513          	li	a0,0
    80004740:	00008067          	ret
uint64 KSemaphore::signal() {
    80004744:	ff010113          	addi	sp,sp,-16
    80004748:	00113423          	sd	ra,8(sp)
    8000474c:	00813023          	sd	s0,0(sp)
    80004750:	01010413          	addi	s0,sp,16
        unblock();
    80004754:	00000097          	auipc	ra,0x0
    80004758:	f78080e7          	jalr	-136(ra) # 800046cc <_ZN10KSemaphore7unblockEv>
}
    8000475c:	00000513          	li	a0,0
    80004760:	00813083          	ld	ra,8(sp)
    80004764:	00013403          	ld	s0,0(sp)
    80004768:	01010113          	addi	sp,sp,16
    8000476c:	00008067          	ret

0000000080004770 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80004770:	ff010113          	addi	sp,sp,-16
    80004774:	00113423          	sd	ra,8(sp)
    80004778:	00813023          	sd	s0,0(sp)
    8000477c:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80004780:	00000097          	auipc	ra,0x0
    80004784:	cdc080e7          	jalr	-804(ra) # 8000445c <_Z7kmallocm>
}
    80004788:	00813083          	ld	ra,8(sp)
    8000478c:	00013403          	ld	s0,0(sp)
    80004790:	01010113          	addi	sp,sp,16
    80004794:	00008067          	ret

0000000080004798 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80004798:	fd010113          	addi	sp,sp,-48
    8000479c:	02113423          	sd	ra,40(sp)
    800047a0:	02813023          	sd	s0,32(sp)
    800047a4:	00913c23          	sd	s1,24(sp)
    800047a8:	01213823          	sd	s2,16(sp)
    800047ac:	01313423          	sd	s3,8(sp)
    800047b0:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800047b4:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800047b8:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800047bc:	01800513          	li	a0,24
    800047c0:	00000097          	auipc	ra,0x0
    800047c4:	fb0080e7          	jalr	-80(ra) # 80004770 <_ZN10KSemaphorenwEm>
    800047c8:	00050493          	mv	s1,a0
    800047cc:	0009859b          	sext.w	a1,s3
    800047d0:	00000097          	auipc	ra,0x0
    800047d4:	d50080e7          	jalr	-688(ra) # 80004520 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800047d8:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800047dc:	02048263          	beqz	s1,80004800 <_ZN10KSemaphore14semOpenHandlerEv+0x68>
            __asm__ volatile("li a0, 0");
    800047e0:	00000513          	li	a0,0
}
    800047e4:	02813083          	ld	ra,40(sp)
    800047e8:	02013403          	ld	s0,32(sp)
    800047ec:	01813483          	ld	s1,24(sp)
    800047f0:	01013903          	ld	s2,16(sp)
    800047f4:	00813983          	ld	s3,8(sp)
    800047f8:	03010113          	addi	sp,sp,48
    800047fc:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80004800:	fff00513          	li	a0,-1
    80004804:	fe1ff06f          	j	800047e4 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080004808 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80004808:	ff010113          	addi	sp,sp,-16
    8000480c:	00113423          	sd	ra,8(sp)
    80004810:	00813023          	sd	s0,0(sp)
    80004814:	01010413          	addi	s0,sp,16
    kfree(p);
    80004818:	00000097          	auipc	ra,0x0
    8000481c:	ca8080e7          	jalr	-856(ra) # 800044c0 <_Z5kfreePv>
}
    80004820:	00813083          	ld	ra,8(sp)
    80004824:	00013403          	ld	s0,0(sp)
    80004828:	01010113          	addi	sp,sp,16
    8000482c:	00008067          	ret

0000000080004830 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80004830:	fe010113          	addi	sp,sp,-32
    80004834:	00113c23          	sd	ra,24(sp)
    80004838:	00813823          	sd	s0,16(sp)
    8000483c:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004840:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->wait();
    80004844:	00000097          	auipc	ra,0x0
    80004848:	d84080e7          	jalr	-636(ra) # 800045c8 <_ZN10KSemaphore4waitEv>
    8000484c:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004850:	fe843783          	ld	a5,-24(s0)
    80004854:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    80004858:	fffff097          	auipc	ra,0xfffff
    8000485c:	4a8080e7          	jalr	1192(ra) # 80003d00 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004860:	01813083          	ld	ra,24(sp)
    80004864:	01013403          	ld	s0,16(sp)
    80004868:	02010113          	addi	sp,sp,32
    8000486c:	00008067          	ret

0000000080004870 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler()
{
    80004870:	fe010113          	addi	sp,sp,-32
    80004874:	00113c23          	sd	ra,24(sp)
    80004878:	00813823          	sd	s0,16(sp)
    8000487c:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004880:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->signal();
    80004884:	00000097          	auipc	ra,0x0
    80004888:	ea4080e7          	jalr	-348(ra) # 80004728 <_ZN10KSemaphore6signalEv>
    8000488c:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004890:	fe843783          	ld	a5,-24(s0)
    80004894:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    80004898:	fffff097          	auipc	ra,0xfffff
    8000489c:	468080e7          	jalr	1128(ra) # 80003d00 <_ZN5Riscv13w_a0_sscratchEv>
}
    800048a0:	01813083          	ld	ra,24(sp)
    800048a4:	01013403          	ld	s0,16(sp)
    800048a8:	02010113          	addi	sp,sp,32
    800048ac:	00008067          	ret

00000000800048b0 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    800048b0:	fe010113          	addi	sp,sp,-32
    800048b4:	00113c23          	sd	ra,24(sp)
    800048b8:	00813823          	sd	s0,16(sp)
    800048bc:	00913423          	sd	s1,8(sp)
    800048c0:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800048c4:	00058493          	mv	s1,a1
    delete kSem;
    800048c8:	00048e63          	beqz	s1,800048e4 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800048cc:	00048513          	mv	a0,s1
    800048d0:	00000097          	auipc	ra,0x0
    800048d4:	d98080e7          	jalr	-616(ra) # 80004668 <_ZN10KSemaphoreD1Ev>
    800048d8:	00048513          	mv	a0,s1
    800048dc:	00000097          	auipc	ra,0x0
    800048e0:	f2c080e7          	jalr	-212(ra) # 80004808 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    800048e4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800048e8:	fffff097          	auipc	ra,0xfffff
    800048ec:	418080e7          	jalr	1048(ra) # 80003d00 <_ZN5Riscv13w_a0_sscratchEv>
}
    800048f0:	01813083          	ld	ra,24(sp)
    800048f4:	01013403          	ld	s0,16(sp)
    800048f8:	00813483          	ld	s1,8(sp)
    800048fc:	02010113          	addi	sp,sp,32
    80004900:	00008067          	ret

0000000080004904 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    80004904:	fe010113          	addi	sp,sp,-32
    80004908:	00113c23          	sd	ra,24(sp)
    8000490c:	00813823          	sd	s0,16(sp)
    80004910:	00913423          	sd	s1,8(sp)
    80004914:	01213023          	sd	s2,0(sp)
    80004918:	02010413          	addi	s0,sp,32
    8000491c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004920:	00000913          	li	s2,0
    80004924:	00c0006f          	j	80004930 <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004928:	ffffd097          	auipc	ra,0xffffd
    8000492c:	a0c080e7          	jalr	-1524(ra) # 80001334 <thread_dispatch>
    while ((key = getc()) != 'q') {
    80004930:	ffffd097          	auipc	ra,0xffffd
    80004934:	be0080e7          	jalr	-1056(ra) # 80001510 <getc>
    80004938:	0005059b          	sext.w	a1,a0
    8000493c:	07100793          	li	a5,113
    80004940:	02f58a63          	beq	a1,a5,80004974 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80004944:	0084b503          	ld	a0,8(s1)
    80004948:	00002097          	auipc	ra,0x2
    8000494c:	df4080e7          	jalr	-524(ra) # 8000673c <_ZN6Buffer3putEi>
        i++;
    80004950:	0019071b          	addiw	a4,s2,1
    80004954:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004958:	0004a683          	lw	a3,0(s1)
    8000495c:	0026979b          	slliw	a5,a3,0x2
    80004960:	00d787bb          	addw	a5,a5,a3
    80004964:	0017979b          	slliw	a5,a5,0x1
    80004968:	02f767bb          	remw	a5,a4,a5
    8000496c:	fc0792e3          	bnez	a5,80004930 <_Z16producerKeyboardPv+0x2c>
    80004970:	fb9ff06f          	j	80004928 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80004974:	00100793          	li	a5,1
    80004978:	0000b717          	auipc	a4,0xb
    8000497c:	34f72c23          	sw	a5,856(a4) # 8000fcd0 <threadEnd>

    delete data->buffer;
    80004980:	0084b903          	ld	s2,8(s1)
    80004984:	00090e63          	beqz	s2,800049a0 <_Z16producerKeyboardPv+0x9c>
    80004988:	00090513          	mv	a0,s2
    8000498c:	00002097          	auipc	ra,0x2
    80004990:	cf4080e7          	jalr	-780(ra) # 80006680 <_ZN6BufferD1Ev>
    80004994:	00090513          	mv	a0,s2
    80004998:	fffff097          	auipc	ra,0xfffff
    8000499c:	dc8080e7          	jalr	-568(ra) # 80003760 <_ZdlPv>

    sem_signal(data->wait);
    800049a0:	0104b503          	ld	a0,16(s1)
    800049a4:	ffffd097          	auipc	ra,0xffffd
    800049a8:	a68080e7          	jalr	-1432(ra) # 8000140c <sem_signal>
}
    800049ac:	01813083          	ld	ra,24(sp)
    800049b0:	01013403          	ld	s0,16(sp)
    800049b4:	00813483          	ld	s1,8(sp)
    800049b8:	00013903          	ld	s2,0(sp)
    800049bc:	02010113          	addi	sp,sp,32
    800049c0:	00008067          	ret

00000000800049c4 <_Z8producerPv>:

void producer(void *arg) {
    800049c4:	fe010113          	addi	sp,sp,-32
    800049c8:	00113c23          	sd	ra,24(sp)
    800049cc:	00813823          	sd	s0,16(sp)
    800049d0:	00913423          	sd	s1,8(sp)
    800049d4:	01213023          	sd	s2,0(sp)
    800049d8:	02010413          	addi	s0,sp,32
    800049dc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800049e0:	00000913          	li	s2,0
    800049e4:	00c0006f          	j	800049f0 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800049e8:	ffffd097          	auipc	ra,0xffffd
    800049ec:	94c080e7          	jalr	-1716(ra) # 80001334 <thread_dispatch>
    while (!threadEnd) {
    800049f0:	0000b797          	auipc	a5,0xb
    800049f4:	2e07a783          	lw	a5,736(a5) # 8000fcd0 <threadEnd>
    800049f8:	02079e63          	bnez	a5,80004a34 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800049fc:	0004a583          	lw	a1,0(s1)
    80004a00:	0305859b          	addiw	a1,a1,48
    80004a04:	0084b503          	ld	a0,8(s1)
    80004a08:	00002097          	auipc	ra,0x2
    80004a0c:	d34080e7          	jalr	-716(ra) # 8000673c <_ZN6Buffer3putEi>
        i++;
    80004a10:	0019071b          	addiw	a4,s2,1
    80004a14:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004a18:	0004a683          	lw	a3,0(s1)
    80004a1c:	0026979b          	slliw	a5,a3,0x2
    80004a20:	00d787bb          	addw	a5,a5,a3
    80004a24:	0017979b          	slliw	a5,a5,0x1
    80004a28:	02f767bb          	remw	a5,a4,a5
    80004a2c:	fc0792e3          	bnez	a5,800049f0 <_Z8producerPv+0x2c>
    80004a30:	fb9ff06f          	j	800049e8 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80004a34:	0104b503          	ld	a0,16(s1)
    80004a38:	ffffd097          	auipc	ra,0xffffd
    80004a3c:	9d4080e7          	jalr	-1580(ra) # 8000140c <sem_signal>
}
    80004a40:	01813083          	ld	ra,24(sp)
    80004a44:	01013403          	ld	s0,16(sp)
    80004a48:	00813483          	ld	s1,8(sp)
    80004a4c:	00013903          	ld	s2,0(sp)
    80004a50:	02010113          	addi	sp,sp,32
    80004a54:	00008067          	ret

0000000080004a58 <_Z8consumerPv>:

void consumer(void *arg) {
    80004a58:	fd010113          	addi	sp,sp,-48
    80004a5c:	02113423          	sd	ra,40(sp)
    80004a60:	02813023          	sd	s0,32(sp)
    80004a64:	00913c23          	sd	s1,24(sp)
    80004a68:	01213823          	sd	s2,16(sp)
    80004a6c:	01313423          	sd	s3,8(sp)
    80004a70:	03010413          	addi	s0,sp,48
    80004a74:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;


    int i = 0;
    80004a78:	00000993          	li	s3,0
    80004a7c:	01c0006f          	j	80004a98 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80004a80:	ffffd097          	auipc	ra,0xffffd
    80004a84:	8b4080e7          	jalr	-1868(ra) # 80001334 <thread_dispatch>
    80004a88:	0500006f          	j	80004ad8 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004a8c:	00a00513          	li	a0,10
    80004a90:	ffffd097          	auipc	ra,0xffffd
    80004a94:	aa8080e7          	jalr	-1368(ra) # 80001538 <putc>
    while (!threadEnd) {
    80004a98:	0000b797          	auipc	a5,0xb
    80004a9c:	2387a783          	lw	a5,568(a5) # 8000fcd0 <threadEnd>
    80004aa0:	04079463          	bnez	a5,80004ae8 <_Z8consumerPv+0x90>
        int key = data->buffer->get();
    80004aa4:	00893503          	ld	a0,8(s2)
    80004aa8:	00002097          	auipc	ra,0x2
    80004aac:	d24080e7          	jalr	-732(ra) # 800067cc <_ZN6Buffer3getEv>
        i++;
    80004ab0:	0019849b          	addiw	s1,s3,1
    80004ab4:	0004899b          	sext.w	s3,s1
        putc(key);
    80004ab8:	0ff57513          	andi	a0,a0,255
    80004abc:	ffffd097          	auipc	ra,0xffffd
    80004ac0:	a7c080e7          	jalr	-1412(ra) # 80001538 <putc>
        if (i % (5 * data->id) == 0) {
    80004ac4:	00092703          	lw	a4,0(s2)
    80004ac8:	0027179b          	slliw	a5,a4,0x2
    80004acc:	00e787bb          	addw	a5,a5,a4
    80004ad0:	02f4e7bb          	remw	a5,s1,a5
    80004ad4:	fa0786e3          	beqz	a5,80004a80 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    80004ad8:	05000793          	li	a5,80
    80004adc:	02f4e4bb          	remw	s1,s1,a5
    80004ae0:	fa049ce3          	bnez	s1,80004a98 <_Z8consumerPv+0x40>
    80004ae4:	fa9ff06f          	j	80004a8c <_Z8consumerPv+0x34>
        }
    }

    sem_signal(data->wait);
    80004ae8:	01093503          	ld	a0,16(s2)
    80004aec:	ffffd097          	auipc	ra,0xffffd
    80004af0:	920080e7          	jalr	-1760(ra) # 8000140c <sem_signal>
}
    80004af4:	02813083          	ld	ra,40(sp)
    80004af8:	02013403          	ld	s0,32(sp)
    80004afc:	01813483          	ld	s1,24(sp)
    80004b00:	01013903          	ld	s2,16(sp)
    80004b04:	00813983          	ld	s3,8(sp)
    80004b08:	03010113          	addi	sp,sp,48
    80004b0c:	00008067          	ret

0000000080004b10 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80004b10:	f9010113          	addi	sp,sp,-112
    80004b14:	06113423          	sd	ra,104(sp)
    80004b18:	06813023          	sd	s0,96(sp)
    80004b1c:	04913c23          	sd	s1,88(sp)
    80004b20:	05213823          	sd	s2,80(sp)
    80004b24:	05313423          	sd	s3,72(sp)
    80004b28:	05413023          	sd	s4,64(sp)
    80004b2c:	03513c23          	sd	s5,56(sp)
    80004b30:	07010413          	addi	s0,sp,112
    char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004b34:	00005517          	auipc	a0,0x5
    80004b38:	88c50513          	addi	a0,a0,-1908 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80004b3c:	00001097          	auipc	ra,0x1
    80004b40:	204080e7          	jalr	516(ra) # 80005d40 <_Z11printStringPKc>
    getString(input, 30);
    80004b44:	01e00593          	li	a1,30
    80004b48:	fa040493          	addi	s1,s0,-96
    80004b4c:	00048513          	mv	a0,s1
    80004b50:	00001097          	auipc	ra,0x1
    80004b54:	26c080e7          	jalr	620(ra) # 80005dbc <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004b58:	00048513          	mv	a0,s1
    80004b5c:	00001097          	auipc	ra,0x1
    80004b60:	32c080e7          	jalr	812(ra) # 80005e88 <_Z11stringToIntPKc>
    80004b64:	00050913          	mv	s2,a0

    printString("Unesite velicinu bafera?\n");
    80004b68:	00005517          	auipc	a0,0x5
    80004b6c:	87850513          	addi	a0,a0,-1928 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80004b70:	00001097          	auipc	ra,0x1
    80004b74:	1d0080e7          	jalr	464(ra) # 80005d40 <_Z11printStringPKc>
    getString(input, 30);
    80004b78:	01e00593          	li	a1,30
    80004b7c:	00048513          	mv	a0,s1
    80004b80:	00001097          	auipc	ra,0x1
    80004b84:	23c080e7          	jalr	572(ra) # 80005dbc <_Z9getStringPci>
    n = stringToInt(input);
    80004b88:	00048513          	mv	a0,s1
    80004b8c:	00001097          	auipc	ra,0x1
    80004b90:	2fc080e7          	jalr	764(ra) # 80005e88 <_Z11stringToIntPKc>
    80004b94:	00050493          	mv	s1,a0

    printString("Broj proizvodjaca "); printInt(threadNum);
    80004b98:	00005517          	auipc	a0,0x5
    80004b9c:	86850513          	addi	a0,a0,-1944 # 80009400 <CONSOLE_STATUS+0x3f0>
    80004ba0:	00001097          	auipc	ra,0x1
    80004ba4:	1a0080e7          	jalr	416(ra) # 80005d40 <_Z11printStringPKc>
    80004ba8:	00000613          	li	a2,0
    80004bac:	00a00593          	li	a1,10
    80004bb0:	00090513          	mv	a0,s2
    80004bb4:	00001097          	auipc	ra,0x1
    80004bb8:	324080e7          	jalr	804(ra) # 80005ed8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004bbc:	00005517          	auipc	a0,0x5
    80004bc0:	85c50513          	addi	a0,a0,-1956 # 80009418 <CONSOLE_STATUS+0x408>
    80004bc4:	00001097          	auipc	ra,0x1
    80004bc8:	17c080e7          	jalr	380(ra) # 80005d40 <_Z11printStringPKc>
    80004bcc:	00000613          	li	a2,0
    80004bd0:	00a00593          	li	a1,10
    80004bd4:	00048513          	mv	a0,s1
    80004bd8:	00001097          	auipc	ra,0x1
    80004bdc:	300080e7          	jalr	768(ra) # 80005ed8 <_Z8printIntiii>
    printString(".\n");
    80004be0:	00004517          	auipc	a0,0x4
    80004be4:	67050513          	addi	a0,a0,1648 # 80009250 <CONSOLE_STATUS+0x240>
    80004be8:	00001097          	auipc	ra,0x1
    80004bec:	158080e7          	jalr	344(ra) # 80005d40 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80004bf0:	03800513          	li	a0,56
    80004bf4:	fffff097          	auipc	ra,0xfffff
    80004bf8:	b44080e7          	jalr	-1212(ra) # 80003738 <_Znwm>
    80004bfc:	00050a13          	mv	s4,a0
    80004c00:	00048593          	mv	a1,s1
    80004c04:	00002097          	auipc	ra,0x2
    80004c08:	9f4080e7          	jalr	-1548(ra) # 800065f8 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004c0c:	00000593          	li	a1,0
    80004c10:	0000b517          	auipc	a0,0xb
    80004c14:	0c850513          	addi	a0,a0,200 # 8000fcd8 <waitForAll>
    80004c18:	ffffc097          	auipc	ra,0xffffc
    80004c1c:	764080e7          	jalr	1892(ra) # 8000137c <sem_open>

    thread_t threads[threadNum];
    80004c20:	00391793          	slli	a5,s2,0x3
    80004c24:	00f78793          	addi	a5,a5,15
    80004c28:	ff07f793          	andi	a5,a5,-16
    80004c2c:	40f10133          	sub	sp,sp,a5
    80004c30:	00010a93          	mv	s5,sp
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];
    80004c34:	0019071b          	addiw	a4,s2,1
    80004c38:	00171793          	slli	a5,a4,0x1
    80004c3c:	00e787b3          	add	a5,a5,a4
    80004c40:	00379793          	slli	a5,a5,0x3
    80004c44:	00f78793          	addi	a5,a5,15
    80004c48:	ff07f793          	andi	a5,a5,-16
    80004c4c:	40f10133          	sub	sp,sp,a5
    80004c50:	00010993          	mv	s3,sp

    data[threadNum].id = threadNum;
    80004c54:	00191613          	slli	a2,s2,0x1
    80004c58:	012607b3          	add	a5,a2,s2
    80004c5c:	00379793          	slli	a5,a5,0x3
    80004c60:	00f987b3          	add	a5,s3,a5
    80004c64:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004c68:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80004c6c:	0000b717          	auipc	a4,0xb
    80004c70:	06c73703          	ld	a4,108(a4) # 8000fcd8 <waitForAll>
    80004c74:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004c78:	00078613          	mv	a2,a5
    80004c7c:	00000597          	auipc	a1,0x0
    80004c80:	ddc58593          	addi	a1,a1,-548 # 80004a58 <_Z8consumerPv>
    80004c84:	f9840513          	addi	a0,s0,-104
    80004c88:	ffffc097          	auipc	ra,0xffffc
    80004c8c:	62c080e7          	jalr	1580(ra) # 800012b4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80004c90:	00000493          	li	s1,0
    80004c94:	0280006f          	j	80004cbc <_Z22producerConsumer_C_APIv+0x1ac>
        data[i].id = i;
        data[i].buffer = buffer;
        data[i].wait = waitForAll;

        thread_create(threads + i,
    80004c98:	00000597          	auipc	a1,0x0
    80004c9c:	c6c58593          	addi	a1,a1,-916 # 80004904 <_Z16producerKeyboardPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    80004ca0:	00179613          	slli	a2,a5,0x1
    80004ca4:	00f60633          	add	a2,a2,a5
    80004ca8:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004cac:	00c98633          	add	a2,s3,a2
    80004cb0:	ffffc097          	auipc	ra,0xffffc
    80004cb4:	604080e7          	jalr	1540(ra) # 800012b4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004cb8:	0014849b          	addiw	s1,s1,1
    80004cbc:	0524d263          	bge	s1,s2,80004d00 <_Z22producerConsumer_C_APIv+0x1f0>
        data[i].id = i;
    80004cc0:	00149793          	slli	a5,s1,0x1
    80004cc4:	009787b3          	add	a5,a5,s1
    80004cc8:	00379793          	slli	a5,a5,0x3
    80004ccc:	00f987b3          	add	a5,s3,a5
    80004cd0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004cd4:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80004cd8:	0000b717          	auipc	a4,0xb
    80004cdc:	00073703          	ld	a4,0(a4) # 8000fcd8 <waitForAll>
    80004ce0:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80004ce4:	00048793          	mv	a5,s1
    80004ce8:	00349513          	slli	a0,s1,0x3
    80004cec:	00aa8533          	add	a0,s5,a0
    80004cf0:	fa9054e3          	blez	s1,80004c98 <_Z22producerConsumer_C_APIv+0x188>
    80004cf4:	00000597          	auipc	a1,0x0
    80004cf8:	cd058593          	addi	a1,a1,-816 # 800049c4 <_Z8producerPv>
    80004cfc:	fa5ff06f          	j	80004ca0 <_Z22producerConsumer_C_APIv+0x190>
    }

    thread_dispatch();
    80004d00:	ffffc097          	auipc	ra,0xffffc
    80004d04:	634080e7          	jalr	1588(ra) # 80001334 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80004d08:	00000493          	li	s1,0
    80004d0c:	00994e63          	blt	s2,s1,80004d28 <_Z22producerConsumer_C_APIv+0x218>
        sem_wait(waitForAll);
    80004d10:	0000b517          	auipc	a0,0xb
    80004d14:	fc853503          	ld	a0,-56(a0) # 8000fcd8 <waitForAll>
    80004d18:	ffffc097          	auipc	ra,0xffffc
    80004d1c:	6c8080e7          	jalr	1736(ra) # 800013e0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80004d20:	0014849b          	addiw	s1,s1,1
    80004d24:	fe9ff06f          	j	80004d0c <_Z22producerConsumer_C_APIv+0x1fc>
    }

    sem_close(waitForAll);
    80004d28:	0000b517          	auipc	a0,0xb
    80004d2c:	fb053503          	ld	a0,-80(a0) # 8000fcd8 <waitForAll>
    80004d30:	ffffc097          	auipc	ra,0xffffc
    80004d34:	684080e7          	jalr	1668(ra) # 800013b4 <sem_close>
    80004d38:	f9040113          	addi	sp,s0,-112
    80004d3c:	06813083          	ld	ra,104(sp)
    80004d40:	06013403          	ld	s0,96(sp)
    80004d44:	05813483          	ld	s1,88(sp)
    80004d48:	05013903          	ld	s2,80(sp)
    80004d4c:	04813983          	ld	s3,72(sp)
    80004d50:	04013a03          	ld	s4,64(sp)
    80004d54:	03813a83          	ld	s5,56(sp)
    80004d58:	07010113          	addi	sp,sp,112
    80004d5c:	00008067          	ret
    80004d60:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004d64:	000a0513          	mv	a0,s4
    80004d68:	fffff097          	auipc	ra,0xfffff
    80004d6c:	9f8080e7          	jalr	-1544(ra) # 80003760 <_ZdlPv>
    80004d70:	00048513          	mv	a0,s1
    80004d74:	0000c097          	auipc	ra,0xc
    80004d78:	054080e7          	jalr	84(ra) # 80010dc8 <_Unwind_Resume>

0000000080004d7c <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004d7c:	fe010113          	addi	sp,sp,-32
    80004d80:	00113c23          	sd	ra,24(sp)
    80004d84:	00813823          	sd	s0,16(sp)
    80004d88:	00913423          	sd	s1,8(sp)
    80004d8c:	01213023          	sd	s2,0(sp)
    80004d90:	02010413          	addi	s0,sp,32
    80004d94:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004d98:	00100793          	li	a5,1
    80004d9c:	02a7f863          	bgeu	a5,a0,80004dcc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004da0:	00a00793          	li	a5,10
    80004da4:	02f577b3          	remu	a5,a0,a5
    80004da8:	02078e63          	beqz	a5,80004de4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004dac:	fff48513          	addi	a0,s1,-1
    80004db0:	00000097          	auipc	ra,0x0
    80004db4:	fcc080e7          	jalr	-52(ra) # 80004d7c <_ZL9fibonaccim>
    80004db8:	00050913          	mv	s2,a0
    80004dbc:	ffe48513          	addi	a0,s1,-2
    80004dc0:	00000097          	auipc	ra,0x0
    80004dc4:	fbc080e7          	jalr	-68(ra) # 80004d7c <_ZL9fibonaccim>
    80004dc8:	00a90533          	add	a0,s2,a0
}
    80004dcc:	01813083          	ld	ra,24(sp)
    80004dd0:	01013403          	ld	s0,16(sp)
    80004dd4:	00813483          	ld	s1,8(sp)
    80004dd8:	00013903          	ld	s2,0(sp)
    80004ddc:	02010113          	addi	sp,sp,32
    80004de0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004de4:	ffffc097          	auipc	ra,0xffffc
    80004de8:	550080e7          	jalr	1360(ra) # 80001334 <thread_dispatch>
    80004dec:	fc1ff06f          	j	80004dac <_ZL9fibonaccim+0x30>

0000000080004df0 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004df0:	fe010113          	addi	sp,sp,-32
    80004df4:	00113c23          	sd	ra,24(sp)
    80004df8:	00813823          	sd	s0,16(sp)
    80004dfc:	00913423          	sd	s1,8(sp)
    80004e00:	01213023          	sd	s2,0(sp)
    80004e04:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004e08:	00000913          	li	s2,0
    80004e0c:	0380006f          	j	80004e44 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004e10:	ffffc097          	auipc	ra,0xffffc
    80004e14:	524080e7          	jalr	1316(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004e18:	00148493          	addi	s1,s1,1
    80004e1c:	000027b7          	lui	a5,0x2
    80004e20:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004e24:	0097ee63          	bltu	a5,s1,80004e40 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004e28:	00000713          	li	a4,0
    80004e2c:	000077b7          	lui	a5,0x7
    80004e30:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004e34:	fce7eee3          	bltu	a5,a4,80004e10 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004e38:	00170713          	addi	a4,a4,1
    80004e3c:	ff1ff06f          	j	80004e2c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004e40:	00190913          	addi	s2,s2,1
    80004e44:	00900793          	li	a5,9
    80004e48:	0527e063          	bltu	a5,s2,80004e88 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004e4c:	00004517          	auipc	a0,0x4
    80004e50:	5e450513          	addi	a0,a0,1508 # 80009430 <CONSOLE_STATUS+0x420>
    80004e54:	00001097          	auipc	ra,0x1
    80004e58:	eec080e7          	jalr	-276(ra) # 80005d40 <_Z11printStringPKc>
    80004e5c:	00000613          	li	a2,0
    80004e60:	00a00593          	li	a1,10
    80004e64:	0009051b          	sext.w	a0,s2
    80004e68:	00001097          	auipc	ra,0x1
    80004e6c:	070080e7          	jalr	112(ra) # 80005ed8 <_Z8printIntiii>
    80004e70:	00004517          	auipc	a0,0x4
    80004e74:	29050513          	addi	a0,a0,656 # 80009100 <CONSOLE_STATUS+0xf0>
    80004e78:	00001097          	auipc	ra,0x1
    80004e7c:	ec8080e7          	jalr	-312(ra) # 80005d40 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004e80:	00000493          	li	s1,0
    80004e84:	f99ff06f          	j	80004e1c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004e88:	00004517          	auipc	a0,0x4
    80004e8c:	5b050513          	addi	a0,a0,1456 # 80009438 <CONSOLE_STATUS+0x428>
    80004e90:	00001097          	auipc	ra,0x1
    80004e94:	eb0080e7          	jalr	-336(ra) # 80005d40 <_Z11printStringPKc>
    finishedA = true;
    80004e98:	00100793          	li	a5,1
    80004e9c:	0000b717          	auipc	a4,0xb
    80004ea0:	e4f70223          	sb	a5,-444(a4) # 8000fce0 <_ZL9finishedA>
}
    80004ea4:	01813083          	ld	ra,24(sp)
    80004ea8:	01013403          	ld	s0,16(sp)
    80004eac:	00813483          	ld	s1,8(sp)
    80004eb0:	00013903          	ld	s2,0(sp)
    80004eb4:	02010113          	addi	sp,sp,32
    80004eb8:	00008067          	ret

0000000080004ebc <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg)
{
    80004ebc:	fe010113          	addi	sp,sp,-32
    80004ec0:	00113c23          	sd	ra,24(sp)
    80004ec4:	00813823          	sd	s0,16(sp)
    80004ec8:	00913423          	sd	s1,8(sp)
    80004ecc:	01213023          	sd	s2,0(sp)
    80004ed0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004ed4:	00000913          	li	s2,0
    80004ed8:	0380006f          	j	80004f10 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004edc:	ffffc097          	auipc	ra,0xffffc
    80004ee0:	458080e7          	jalr	1112(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004ee4:	00148493          	addi	s1,s1,1
    80004ee8:	000027b7          	lui	a5,0x2
    80004eec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004ef0:	0097ee63          	bltu	a5,s1,80004f0c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004ef4:	00000713          	li	a4,0
    80004ef8:	000077b7          	lui	a5,0x7
    80004efc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004f00:	fce7eee3          	bltu	a5,a4,80004edc <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004f04:	00170713          	addi	a4,a4,1
    80004f08:	ff1ff06f          	j	80004ef8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004f0c:	00190913          	addi	s2,s2,1
    80004f10:	00f00793          	li	a5,15
    80004f14:	0527e063          	bltu	a5,s2,80004f54 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004f18:	00004517          	auipc	a0,0x4
    80004f1c:	53050513          	addi	a0,a0,1328 # 80009448 <CONSOLE_STATUS+0x438>
    80004f20:	00001097          	auipc	ra,0x1
    80004f24:	e20080e7          	jalr	-480(ra) # 80005d40 <_Z11printStringPKc>
    80004f28:	00000613          	li	a2,0
    80004f2c:	00a00593          	li	a1,10
    80004f30:	0009051b          	sext.w	a0,s2
    80004f34:	00001097          	auipc	ra,0x1
    80004f38:	fa4080e7          	jalr	-92(ra) # 80005ed8 <_Z8printIntiii>
    80004f3c:	00004517          	auipc	a0,0x4
    80004f40:	1c450513          	addi	a0,a0,452 # 80009100 <CONSOLE_STATUS+0xf0>
    80004f44:	00001097          	auipc	ra,0x1
    80004f48:	dfc080e7          	jalr	-516(ra) # 80005d40 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004f4c:	00000493          	li	s1,0
    80004f50:	f99ff06f          	j	80004ee8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    thread_dispatch();
    80004f54:	ffffc097          	auipc	ra,0xffffc
    80004f58:	3e0080e7          	jalr	992(ra) # 80001334 <thread_dispatch>
    printString("B finished!\n");
    80004f5c:	00004517          	auipc	a0,0x4
    80004f60:	4f450513          	addi	a0,a0,1268 # 80009450 <CONSOLE_STATUS+0x440>
    80004f64:	00001097          	auipc	ra,0x1
    80004f68:	ddc080e7          	jalr	-548(ra) # 80005d40 <_Z11printStringPKc>
    finishedB = true;
    80004f6c:	00100793          	li	a5,1
    80004f70:	0000b717          	auipc	a4,0xb
    80004f74:	d6f708a3          	sb	a5,-655(a4) # 8000fce1 <_ZL9finishedB>
}
    80004f78:	01813083          	ld	ra,24(sp)
    80004f7c:	01013403          	ld	s0,16(sp)
    80004f80:	00813483          	ld	s1,8(sp)
    80004f84:	00013903          	ld	s2,0(sp)
    80004f88:	02010113          	addi	sp,sp,32
    80004f8c:	00008067          	ret

0000000080004f90 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004f90:	fe010113          	addi	sp,sp,-32
    80004f94:	00113c23          	sd	ra,24(sp)
    80004f98:	00813823          	sd	s0,16(sp)
    80004f9c:	00913423          	sd	s1,8(sp)
    80004fa0:	01213023          	sd	s2,0(sp)
    80004fa4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004fa8:	00000493          	li	s1,0
    80004fac:	0400006f          	j	80004fec <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004fb0:	00004517          	auipc	a0,0x4
    80004fb4:	4b050513          	addi	a0,a0,1200 # 80009460 <CONSOLE_STATUS+0x450>
    80004fb8:	00001097          	auipc	ra,0x1
    80004fbc:	d88080e7          	jalr	-632(ra) # 80005d40 <_Z11printStringPKc>
    80004fc0:	00000613          	li	a2,0
    80004fc4:	00a00593          	li	a1,10
    80004fc8:	00048513          	mv	a0,s1
    80004fcc:	00001097          	auipc	ra,0x1
    80004fd0:	f0c080e7          	jalr	-244(ra) # 80005ed8 <_Z8printIntiii>
    80004fd4:	00004517          	auipc	a0,0x4
    80004fd8:	12c50513          	addi	a0,a0,300 # 80009100 <CONSOLE_STATUS+0xf0>
    80004fdc:	00001097          	auipc	ra,0x1
    80004fe0:	d64080e7          	jalr	-668(ra) # 80005d40 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004fe4:	0014849b          	addiw	s1,s1,1
    80004fe8:	0ff4f493          	andi	s1,s1,255
    80004fec:	00200793          	li	a5,2
    80004ff0:	fc97f0e3          	bgeu	a5,s1,80004fb0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004ff4:	00004517          	auipc	a0,0x4
    80004ff8:	47450513          	addi	a0,a0,1140 # 80009468 <CONSOLE_STATUS+0x458>
    80004ffc:	00001097          	auipc	ra,0x1
    80005000:	d44080e7          	jalr	-700(ra) # 80005d40 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005004:	00700313          	li	t1,7
    thread_dispatch();
    80005008:	ffffc097          	auipc	ra,0xffffc
    8000500c:	32c080e7          	jalr	812(ra) # 80001334 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005010:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005014:	00004517          	auipc	a0,0x4
    80005018:	46450513          	addi	a0,a0,1124 # 80009478 <CONSOLE_STATUS+0x468>
    8000501c:	00001097          	auipc	ra,0x1
    80005020:	d24080e7          	jalr	-732(ra) # 80005d40 <_Z11printStringPKc>
    80005024:	00000613          	li	a2,0
    80005028:	00a00593          	li	a1,10
    8000502c:	0009051b          	sext.w	a0,s2
    80005030:	00001097          	auipc	ra,0x1
    80005034:	ea8080e7          	jalr	-344(ra) # 80005ed8 <_Z8printIntiii>
    80005038:	00004517          	auipc	a0,0x4
    8000503c:	0c850513          	addi	a0,a0,200 # 80009100 <CONSOLE_STATUS+0xf0>
    80005040:	00001097          	auipc	ra,0x1
    80005044:	d00080e7          	jalr	-768(ra) # 80005d40 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005048:	00c00513          	li	a0,12
    8000504c:	00000097          	auipc	ra,0x0
    80005050:	d30080e7          	jalr	-720(ra) # 80004d7c <_ZL9fibonaccim>
    80005054:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005058:	00004517          	auipc	a0,0x4
    8000505c:	42850513          	addi	a0,a0,1064 # 80009480 <CONSOLE_STATUS+0x470>
    80005060:	00001097          	auipc	ra,0x1
    80005064:	ce0080e7          	jalr	-800(ra) # 80005d40 <_Z11printStringPKc>
    80005068:	00000613          	li	a2,0
    8000506c:	00a00593          	li	a1,10
    80005070:	0009051b          	sext.w	a0,s2
    80005074:	00001097          	auipc	ra,0x1
    80005078:	e64080e7          	jalr	-412(ra) # 80005ed8 <_Z8printIntiii>
    8000507c:	00004517          	auipc	a0,0x4
    80005080:	08450513          	addi	a0,a0,132 # 80009100 <CONSOLE_STATUS+0xf0>
    80005084:	00001097          	auipc	ra,0x1
    80005088:	cbc080e7          	jalr	-836(ra) # 80005d40 <_Z11printStringPKc>
    8000508c:	0400006f          	j	800050cc <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005090:	00004517          	auipc	a0,0x4
    80005094:	3d050513          	addi	a0,a0,976 # 80009460 <CONSOLE_STATUS+0x450>
    80005098:	00001097          	auipc	ra,0x1
    8000509c:	ca8080e7          	jalr	-856(ra) # 80005d40 <_Z11printStringPKc>
    800050a0:	00000613          	li	a2,0
    800050a4:	00a00593          	li	a1,10
    800050a8:	00048513          	mv	a0,s1
    800050ac:	00001097          	auipc	ra,0x1
    800050b0:	e2c080e7          	jalr	-468(ra) # 80005ed8 <_Z8printIntiii>
    800050b4:	00004517          	auipc	a0,0x4
    800050b8:	04c50513          	addi	a0,a0,76 # 80009100 <CONSOLE_STATUS+0xf0>
    800050bc:	00001097          	auipc	ra,0x1
    800050c0:	c84080e7          	jalr	-892(ra) # 80005d40 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800050c4:	0014849b          	addiw	s1,s1,1
    800050c8:	0ff4f493          	andi	s1,s1,255
    800050cc:	00500793          	li	a5,5
    800050d0:	fc97f0e3          	bgeu	a5,s1,80005090 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    thread_dispatch();
    800050d4:	ffffc097          	auipc	ra,0xffffc
    800050d8:	260080e7          	jalr	608(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    800050dc:	00004517          	auipc	a0,0x4
    800050e0:	3b450513          	addi	a0,a0,948 # 80009490 <CONSOLE_STATUS+0x480>
    800050e4:	00001097          	auipc	ra,0x1
    800050e8:	c5c080e7          	jalr	-932(ra) # 80005d40 <_Z11printStringPKc>
    finishedC = true;
    800050ec:	00100793          	li	a5,1
    800050f0:	0000b717          	auipc	a4,0xb
    800050f4:	bef70923          	sb	a5,-1038(a4) # 8000fce2 <_ZL9finishedC>
}
    800050f8:	01813083          	ld	ra,24(sp)
    800050fc:	01013403          	ld	s0,16(sp)
    80005100:	00813483          	ld	s1,8(sp)
    80005104:	00013903          	ld	s2,0(sp)
    80005108:	02010113          	addi	sp,sp,32
    8000510c:	00008067          	ret

0000000080005110 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80005110:	fe010113          	addi	sp,sp,-32
    80005114:	00113c23          	sd	ra,24(sp)
    80005118:	00813823          	sd	s0,16(sp)
    8000511c:	00913423          	sd	s1,8(sp)
    80005120:	01213023          	sd	s2,0(sp)
    80005124:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005128:	00a00493          	li	s1,10
    8000512c:	0400006f          	j	8000516c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005130:	00004517          	auipc	a0,0x4
    80005134:	37050513          	addi	a0,a0,880 # 800094a0 <CONSOLE_STATUS+0x490>
    80005138:	00001097          	auipc	ra,0x1
    8000513c:	c08080e7          	jalr	-1016(ra) # 80005d40 <_Z11printStringPKc>
    80005140:	00000613          	li	a2,0
    80005144:	00a00593          	li	a1,10
    80005148:	00048513          	mv	a0,s1
    8000514c:	00001097          	auipc	ra,0x1
    80005150:	d8c080e7          	jalr	-628(ra) # 80005ed8 <_Z8printIntiii>
    80005154:	00004517          	auipc	a0,0x4
    80005158:	fac50513          	addi	a0,a0,-84 # 80009100 <CONSOLE_STATUS+0xf0>
    8000515c:	00001097          	auipc	ra,0x1
    80005160:	be4080e7          	jalr	-1052(ra) # 80005d40 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005164:	0014849b          	addiw	s1,s1,1
    80005168:	0ff4f493          	andi	s1,s1,255
    8000516c:	00c00793          	li	a5,12
    80005170:	fc97f0e3          	bgeu	a5,s1,80005130 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80005174:	00004517          	auipc	a0,0x4
    80005178:	33450513          	addi	a0,a0,820 # 800094a8 <CONSOLE_STATUS+0x498>
    8000517c:	00001097          	auipc	ra,0x1
    80005180:	bc4080e7          	jalr	-1084(ra) # 80005d40 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005184:	00500313          	li	t1,5
    thread_dispatch();
    80005188:	ffffc097          	auipc	ra,0xffffc
    8000518c:	1ac080e7          	jalr	428(ra) # 80001334 <thread_dispatch>

    uint64 result = fibonacci(16);
    80005190:	01000513          	li	a0,16
    80005194:	00000097          	auipc	ra,0x0
    80005198:	be8080e7          	jalr	-1048(ra) # 80004d7c <_ZL9fibonaccim>
    8000519c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800051a0:	00004517          	auipc	a0,0x4
    800051a4:	31850513          	addi	a0,a0,792 # 800094b8 <CONSOLE_STATUS+0x4a8>
    800051a8:	00001097          	auipc	ra,0x1
    800051ac:	b98080e7          	jalr	-1128(ra) # 80005d40 <_Z11printStringPKc>
    800051b0:	00000613          	li	a2,0
    800051b4:	00a00593          	li	a1,10
    800051b8:	0009051b          	sext.w	a0,s2
    800051bc:	00001097          	auipc	ra,0x1
    800051c0:	d1c080e7          	jalr	-740(ra) # 80005ed8 <_Z8printIntiii>
    800051c4:	00004517          	auipc	a0,0x4
    800051c8:	f3c50513          	addi	a0,a0,-196 # 80009100 <CONSOLE_STATUS+0xf0>
    800051cc:	00001097          	auipc	ra,0x1
    800051d0:	b74080e7          	jalr	-1164(ra) # 80005d40 <_Z11printStringPKc>
    800051d4:	0400006f          	j	80005214 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800051d8:	00004517          	auipc	a0,0x4
    800051dc:	2c850513          	addi	a0,a0,712 # 800094a0 <CONSOLE_STATUS+0x490>
    800051e0:	00001097          	auipc	ra,0x1
    800051e4:	b60080e7          	jalr	-1184(ra) # 80005d40 <_Z11printStringPKc>
    800051e8:	00000613          	li	a2,0
    800051ec:	00a00593          	li	a1,10
    800051f0:	00048513          	mv	a0,s1
    800051f4:	00001097          	auipc	ra,0x1
    800051f8:	ce4080e7          	jalr	-796(ra) # 80005ed8 <_Z8printIntiii>
    800051fc:	00004517          	auipc	a0,0x4
    80005200:	f0450513          	addi	a0,a0,-252 # 80009100 <CONSOLE_STATUS+0xf0>
    80005204:	00001097          	auipc	ra,0x1
    80005208:	b3c080e7          	jalr	-1220(ra) # 80005d40 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000520c:	0014849b          	addiw	s1,s1,1
    80005210:	0ff4f493          	andi	s1,s1,255
    80005214:	00f00793          	li	a5,15
    80005218:	fc97f0e3          	bgeu	a5,s1,800051d8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    thread_dispatch();
    8000521c:	ffffc097          	auipc	ra,0xffffc
    80005220:	118080e7          	jalr	280(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    80005224:	00004517          	auipc	a0,0x4
    80005228:	2a450513          	addi	a0,a0,676 # 800094c8 <CONSOLE_STATUS+0x4b8>
    8000522c:	00001097          	auipc	ra,0x1
    80005230:	b14080e7          	jalr	-1260(ra) # 80005d40 <_Z11printStringPKc>
    finishedD = true;
    80005234:	00100793          	li	a5,1
    80005238:	0000b717          	auipc	a4,0xb
    8000523c:	aaf705a3          	sb	a5,-1365(a4) # 8000fce3 <_ZL9finishedD>
}
    80005240:	01813083          	ld	ra,24(sp)
    80005244:	01013403          	ld	s0,16(sp)
    80005248:	00813483          	ld	s1,8(sp)
    8000524c:	00013903          	ld	s2,0(sp)
    80005250:	02010113          	addi	sp,sp,32
    80005254:	00008067          	ret

0000000080005258 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80005258:	fc010113          	addi	sp,sp,-64
    8000525c:	02113c23          	sd	ra,56(sp)
    80005260:	02813823          	sd	s0,48(sp)
    80005264:	02913423          	sd	s1,40(sp)
    80005268:	03213023          	sd	s2,32(sp)
    8000526c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    //Riscv::printString("Got here\n");
    threads[0] = new WorkerA();
    80005270:	01000513          	li	a0,16
    80005274:	ffffe097          	auipc	ra,0xffffe
    80005278:	4c4080e7          	jalr	1220(ra) # 80003738 <_Znwm>
    8000527c:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80005280:	ffffe097          	auipc	ra,0xffffe
    80005284:	688080e7          	jalr	1672(ra) # 80003908 <_ZN6ThreadC1Ev>
    80005288:	00007797          	auipc	a5,0x7
    8000528c:	82878793          	addi	a5,a5,-2008 # 8000bab0 <_ZTV7WorkerA+0x10>
    80005290:	00f4b023          	sd	a5,0(s1)
    80005294:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80005298:	00004517          	auipc	a0,0x4
    8000529c:	24050513          	addi	a0,a0,576 # 800094d8 <CONSOLE_STATUS+0x4c8>
    800052a0:	00001097          	auipc	ra,0x1
    800052a4:	aa0080e7          	jalr	-1376(ra) # 80005d40 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800052a8:	01000513          	li	a0,16
    800052ac:	ffffe097          	auipc	ra,0xffffe
    800052b0:	48c080e7          	jalr	1164(ra) # 80003738 <_Znwm>
    800052b4:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    800052b8:	ffffe097          	auipc	ra,0xffffe
    800052bc:	650080e7          	jalr	1616(ra) # 80003908 <_ZN6ThreadC1Ev>
    800052c0:	00007797          	auipc	a5,0x7
    800052c4:	81878793          	addi	a5,a5,-2024 # 8000bad8 <_ZTV7WorkerB+0x10>
    800052c8:	00f4b023          	sd	a5,0(s1)
    800052cc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800052d0:	00004517          	auipc	a0,0x4
    800052d4:	22050513          	addi	a0,a0,544 # 800094f0 <CONSOLE_STATUS+0x4e0>
    800052d8:	00001097          	auipc	ra,0x1
    800052dc:	a68080e7          	jalr	-1432(ra) # 80005d40 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800052e0:	01000513          	li	a0,16
    800052e4:	ffffe097          	auipc	ra,0xffffe
    800052e8:	454080e7          	jalr	1108(ra) # 80003738 <_Znwm>
    800052ec:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    800052f0:	ffffe097          	auipc	ra,0xffffe
    800052f4:	618080e7          	jalr	1560(ra) # 80003908 <_ZN6ThreadC1Ev>
    800052f8:	00007797          	auipc	a5,0x7
    800052fc:	80878793          	addi	a5,a5,-2040 # 8000bb00 <_ZTV7WorkerC+0x10>
    80005300:	00f4b023          	sd	a5,0(s1)
    80005304:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80005308:	00004517          	auipc	a0,0x4
    8000530c:	20050513          	addi	a0,a0,512 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005310:	00001097          	auipc	ra,0x1
    80005314:	a30080e7          	jalr	-1488(ra) # 80005d40 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80005318:	01000513          	li	a0,16
    8000531c:	ffffe097          	auipc	ra,0xffffe
    80005320:	41c080e7          	jalr	1052(ra) # 80003738 <_Znwm>
    80005324:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80005328:	ffffe097          	auipc	ra,0xffffe
    8000532c:	5e0080e7          	jalr	1504(ra) # 80003908 <_ZN6ThreadC1Ev>
    80005330:	00006797          	auipc	a5,0x6
    80005334:	7f878793          	addi	a5,a5,2040 # 8000bb28 <_ZTV7WorkerD+0x10>
    80005338:	00f4b023          	sd	a5,0(s1)
    8000533c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80005340:	00004517          	auipc	a0,0x4
    80005344:	1e050513          	addi	a0,a0,480 # 80009520 <CONSOLE_STATUS+0x510>
    80005348:	00001097          	auipc	ra,0x1
    8000534c:	9f8080e7          	jalr	-1544(ra) # 80005d40 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80005350:	00000493          	li	s1,0
    80005354:	00300793          	li	a5,3
    80005358:	0297c663          	blt	a5,s1,80005384 <_Z20Threads_CPP_API_testv+0x12c>
        //Riscv::printString("Starting...\n");
        threads[i]->start();
    8000535c:	00349793          	slli	a5,s1,0x3
    80005360:	fe040713          	addi	a4,s0,-32
    80005364:	00f707b3          	add	a5,a4,a5
    80005368:	fe07b503          	ld	a0,-32(a5)
    8000536c:	ffffe097          	auipc	ra,0xffffe
    80005370:	49c080e7          	jalr	1180(ra) # 80003808 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80005374:	0014849b          	addiw	s1,s1,1
    80005378:	fddff06f          	j	80005354 <_Z20Threads_CPP_API_testv+0xfc>
    }

    //Riscv::printString("Thread started\n");
    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000537c:	ffffe097          	auipc	ra,0xffffe
    80005380:	4c4080e7          	jalr	1220(ra) # 80003840 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005384:	0000b797          	auipc	a5,0xb
    80005388:	95c7c783          	lbu	a5,-1700(a5) # 8000fce0 <_ZL9finishedA>
    8000538c:	fe0788e3          	beqz	a5,8000537c <_Z20Threads_CPP_API_testv+0x124>
    80005390:	0000b797          	auipc	a5,0xb
    80005394:	9517c783          	lbu	a5,-1711(a5) # 8000fce1 <_ZL9finishedB>
    80005398:	fe0782e3          	beqz	a5,8000537c <_Z20Threads_CPP_API_testv+0x124>
    8000539c:	0000b797          	auipc	a5,0xb
    800053a0:	9467c783          	lbu	a5,-1722(a5) # 8000fce2 <_ZL9finishedC>
    800053a4:	fc078ce3          	beqz	a5,8000537c <_Z20Threads_CPP_API_testv+0x124>
    800053a8:	0000b797          	auipc	a5,0xb
    800053ac:	93b7c783          	lbu	a5,-1733(a5) # 8000fce3 <_ZL9finishedD>
    800053b0:	fc0786e3          	beqz	a5,8000537c <_Z20Threads_CPP_API_testv+0x124>
        //Riscv::printString("main\n");
    }
    for (auto thread: threads) { delete thread; }
    800053b4:	fc040493          	addi	s1,s0,-64
    800053b8:	0080006f          	j	800053c0 <_Z20Threads_CPP_API_testv+0x168>
    800053bc:	00848493          	addi	s1,s1,8
    800053c0:	fe040793          	addi	a5,s0,-32
    800053c4:	08f48663          	beq	s1,a5,80005450 <_Z20Threads_CPP_API_testv+0x1f8>
    800053c8:	0004b503          	ld	a0,0(s1)
    800053cc:	fe0508e3          	beqz	a0,800053bc <_Z20Threads_CPP_API_testv+0x164>
    800053d0:	00053783          	ld	a5,0(a0)
    800053d4:	0087b783          	ld	a5,8(a5)
    800053d8:	000780e7          	jalr	a5
    800053dc:	fe1ff06f          	j	800053bc <_Z20Threads_CPP_API_testv+0x164>
    800053e0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800053e4:	00048513          	mv	a0,s1
    800053e8:	ffffe097          	auipc	ra,0xffffe
    800053ec:	378080e7          	jalr	888(ra) # 80003760 <_ZdlPv>
    800053f0:	00090513          	mv	a0,s2
    800053f4:	0000c097          	auipc	ra,0xc
    800053f8:	9d4080e7          	jalr	-1580(ra) # 80010dc8 <_Unwind_Resume>
    800053fc:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80005400:	00048513          	mv	a0,s1
    80005404:	ffffe097          	auipc	ra,0xffffe
    80005408:	35c080e7          	jalr	860(ra) # 80003760 <_ZdlPv>
    8000540c:	00090513          	mv	a0,s2
    80005410:	0000c097          	auipc	ra,0xc
    80005414:	9b8080e7          	jalr	-1608(ra) # 80010dc8 <_Unwind_Resume>
    80005418:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000541c:	00048513          	mv	a0,s1
    80005420:	ffffe097          	auipc	ra,0xffffe
    80005424:	340080e7          	jalr	832(ra) # 80003760 <_ZdlPv>
    80005428:	00090513          	mv	a0,s2
    8000542c:	0000c097          	auipc	ra,0xc
    80005430:	99c080e7          	jalr	-1636(ra) # 80010dc8 <_Unwind_Resume>
    80005434:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80005438:	00048513          	mv	a0,s1
    8000543c:	ffffe097          	auipc	ra,0xffffe
    80005440:	324080e7          	jalr	804(ra) # 80003760 <_ZdlPv>
    80005444:	00090513          	mv	a0,s2
    80005448:	0000c097          	auipc	ra,0xc
    8000544c:	980080e7          	jalr	-1664(ra) # 80010dc8 <_Unwind_Resume>
    80005450:	03813083          	ld	ra,56(sp)
    80005454:	03013403          	ld	s0,48(sp)
    80005458:	02813483          	ld	s1,40(sp)
    8000545c:	02013903          	ld	s2,32(sp)
    80005460:	04010113          	addi	sp,sp,64
    80005464:	00008067          	ret

0000000080005468 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80005468:	ff010113          	addi	sp,sp,-16
    8000546c:	00113423          	sd	ra,8(sp)
    80005470:	00813023          	sd	s0,0(sp)
    80005474:	01010413          	addi	s0,sp,16
    80005478:	00006797          	auipc	a5,0x6
    8000547c:	63878793          	addi	a5,a5,1592 # 8000bab0 <_ZTV7WorkerA+0x10>
    80005480:	00f53023          	sd	a5,0(a0)
    80005484:	ffffe097          	auipc	ra,0xffffe
    80005488:	244080e7          	jalr	580(ra) # 800036c8 <_ZN6ThreadD1Ev>
    8000548c:	00813083          	ld	ra,8(sp)
    80005490:	00013403          	ld	s0,0(sp)
    80005494:	01010113          	addi	sp,sp,16
    80005498:	00008067          	ret

000000008000549c <_ZN7WorkerAD0Ev>:
    8000549c:	fe010113          	addi	sp,sp,-32
    800054a0:	00113c23          	sd	ra,24(sp)
    800054a4:	00813823          	sd	s0,16(sp)
    800054a8:	00913423          	sd	s1,8(sp)
    800054ac:	02010413          	addi	s0,sp,32
    800054b0:	00050493          	mv	s1,a0
    800054b4:	00006797          	auipc	a5,0x6
    800054b8:	5fc78793          	addi	a5,a5,1532 # 8000bab0 <_ZTV7WorkerA+0x10>
    800054bc:	00f53023          	sd	a5,0(a0)
    800054c0:	ffffe097          	auipc	ra,0xffffe
    800054c4:	208080e7          	jalr	520(ra) # 800036c8 <_ZN6ThreadD1Ev>
    800054c8:	00048513          	mv	a0,s1
    800054cc:	ffffe097          	auipc	ra,0xffffe
    800054d0:	294080e7          	jalr	660(ra) # 80003760 <_ZdlPv>
    800054d4:	01813083          	ld	ra,24(sp)
    800054d8:	01013403          	ld	s0,16(sp)
    800054dc:	00813483          	ld	s1,8(sp)
    800054e0:	02010113          	addi	sp,sp,32
    800054e4:	00008067          	ret

00000000800054e8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800054e8:	ff010113          	addi	sp,sp,-16
    800054ec:	00113423          	sd	ra,8(sp)
    800054f0:	00813023          	sd	s0,0(sp)
    800054f4:	01010413          	addi	s0,sp,16
    800054f8:	00006797          	auipc	a5,0x6
    800054fc:	5e078793          	addi	a5,a5,1504 # 8000bad8 <_ZTV7WorkerB+0x10>
    80005500:	00f53023          	sd	a5,0(a0)
    80005504:	ffffe097          	auipc	ra,0xffffe
    80005508:	1c4080e7          	jalr	452(ra) # 800036c8 <_ZN6ThreadD1Ev>
    8000550c:	00813083          	ld	ra,8(sp)
    80005510:	00013403          	ld	s0,0(sp)
    80005514:	01010113          	addi	sp,sp,16
    80005518:	00008067          	ret

000000008000551c <_ZN7WorkerBD0Ev>:
    8000551c:	fe010113          	addi	sp,sp,-32
    80005520:	00113c23          	sd	ra,24(sp)
    80005524:	00813823          	sd	s0,16(sp)
    80005528:	00913423          	sd	s1,8(sp)
    8000552c:	02010413          	addi	s0,sp,32
    80005530:	00050493          	mv	s1,a0
    80005534:	00006797          	auipc	a5,0x6
    80005538:	5a478793          	addi	a5,a5,1444 # 8000bad8 <_ZTV7WorkerB+0x10>
    8000553c:	00f53023          	sd	a5,0(a0)
    80005540:	ffffe097          	auipc	ra,0xffffe
    80005544:	188080e7          	jalr	392(ra) # 800036c8 <_ZN6ThreadD1Ev>
    80005548:	00048513          	mv	a0,s1
    8000554c:	ffffe097          	auipc	ra,0xffffe
    80005550:	214080e7          	jalr	532(ra) # 80003760 <_ZdlPv>
    80005554:	01813083          	ld	ra,24(sp)
    80005558:	01013403          	ld	s0,16(sp)
    8000555c:	00813483          	ld	s1,8(sp)
    80005560:	02010113          	addi	sp,sp,32
    80005564:	00008067          	ret

0000000080005568 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80005568:	ff010113          	addi	sp,sp,-16
    8000556c:	00113423          	sd	ra,8(sp)
    80005570:	00813023          	sd	s0,0(sp)
    80005574:	01010413          	addi	s0,sp,16
    80005578:	00006797          	auipc	a5,0x6
    8000557c:	58878793          	addi	a5,a5,1416 # 8000bb00 <_ZTV7WorkerC+0x10>
    80005580:	00f53023          	sd	a5,0(a0)
    80005584:	ffffe097          	auipc	ra,0xffffe
    80005588:	144080e7          	jalr	324(ra) # 800036c8 <_ZN6ThreadD1Ev>
    8000558c:	00813083          	ld	ra,8(sp)
    80005590:	00013403          	ld	s0,0(sp)
    80005594:	01010113          	addi	sp,sp,16
    80005598:	00008067          	ret

000000008000559c <_ZN7WorkerCD0Ev>:
    8000559c:	fe010113          	addi	sp,sp,-32
    800055a0:	00113c23          	sd	ra,24(sp)
    800055a4:	00813823          	sd	s0,16(sp)
    800055a8:	00913423          	sd	s1,8(sp)
    800055ac:	02010413          	addi	s0,sp,32
    800055b0:	00050493          	mv	s1,a0
    800055b4:	00006797          	auipc	a5,0x6
    800055b8:	54c78793          	addi	a5,a5,1356 # 8000bb00 <_ZTV7WorkerC+0x10>
    800055bc:	00f53023          	sd	a5,0(a0)
    800055c0:	ffffe097          	auipc	ra,0xffffe
    800055c4:	108080e7          	jalr	264(ra) # 800036c8 <_ZN6ThreadD1Ev>
    800055c8:	00048513          	mv	a0,s1
    800055cc:	ffffe097          	auipc	ra,0xffffe
    800055d0:	194080e7          	jalr	404(ra) # 80003760 <_ZdlPv>
    800055d4:	01813083          	ld	ra,24(sp)
    800055d8:	01013403          	ld	s0,16(sp)
    800055dc:	00813483          	ld	s1,8(sp)
    800055e0:	02010113          	addi	sp,sp,32
    800055e4:	00008067          	ret

00000000800055e8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800055e8:	ff010113          	addi	sp,sp,-16
    800055ec:	00113423          	sd	ra,8(sp)
    800055f0:	00813023          	sd	s0,0(sp)
    800055f4:	01010413          	addi	s0,sp,16
    800055f8:	00006797          	auipc	a5,0x6
    800055fc:	53078793          	addi	a5,a5,1328 # 8000bb28 <_ZTV7WorkerD+0x10>
    80005600:	00f53023          	sd	a5,0(a0)
    80005604:	ffffe097          	auipc	ra,0xffffe
    80005608:	0c4080e7          	jalr	196(ra) # 800036c8 <_ZN6ThreadD1Ev>
    8000560c:	00813083          	ld	ra,8(sp)
    80005610:	00013403          	ld	s0,0(sp)
    80005614:	01010113          	addi	sp,sp,16
    80005618:	00008067          	ret

000000008000561c <_ZN7WorkerDD0Ev>:
    8000561c:	fe010113          	addi	sp,sp,-32
    80005620:	00113c23          	sd	ra,24(sp)
    80005624:	00813823          	sd	s0,16(sp)
    80005628:	00913423          	sd	s1,8(sp)
    8000562c:	02010413          	addi	s0,sp,32
    80005630:	00050493          	mv	s1,a0
    80005634:	00006797          	auipc	a5,0x6
    80005638:	4f478793          	addi	a5,a5,1268 # 8000bb28 <_ZTV7WorkerD+0x10>
    8000563c:	00f53023          	sd	a5,0(a0)
    80005640:	ffffe097          	auipc	ra,0xffffe
    80005644:	088080e7          	jalr	136(ra) # 800036c8 <_ZN6ThreadD1Ev>
    80005648:	00048513          	mv	a0,s1
    8000564c:	ffffe097          	auipc	ra,0xffffe
    80005650:	114080e7          	jalr	276(ra) # 80003760 <_ZdlPv>
    80005654:	01813083          	ld	ra,24(sp)
    80005658:	01013403          	ld	s0,16(sp)
    8000565c:	00813483          	ld	s1,8(sp)
    80005660:	02010113          	addi	sp,sp,32
    80005664:	00008067          	ret

0000000080005668 <_ZN7WorkerA3runEv>:
    void run() override {
    80005668:	ff010113          	addi	sp,sp,-16
    8000566c:	00113423          	sd	ra,8(sp)
    80005670:	00813023          	sd	s0,0(sp)
    80005674:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80005678:	00000593          	li	a1,0
    8000567c:	fffff097          	auipc	ra,0xfffff
    80005680:	774080e7          	jalr	1908(ra) # 80004df0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80005684:	00813083          	ld	ra,8(sp)
    80005688:	00013403          	ld	s0,0(sp)
    8000568c:	01010113          	addi	sp,sp,16
    80005690:	00008067          	ret

0000000080005694 <_ZN7WorkerB3runEv>:
    void run() override {
    80005694:	ff010113          	addi	sp,sp,-16
    80005698:	00113423          	sd	ra,8(sp)
    8000569c:	00813023          	sd	s0,0(sp)
    800056a0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800056a4:	00000593          	li	a1,0
    800056a8:	00000097          	auipc	ra,0x0
    800056ac:	814080e7          	jalr	-2028(ra) # 80004ebc <_ZN7WorkerB11workerBodyBEPv>
    }
    800056b0:	00813083          	ld	ra,8(sp)
    800056b4:	00013403          	ld	s0,0(sp)
    800056b8:	01010113          	addi	sp,sp,16
    800056bc:	00008067          	ret

00000000800056c0 <_ZN7WorkerC3runEv>:
    void run() override {
    800056c0:	ff010113          	addi	sp,sp,-16
    800056c4:	00113423          	sd	ra,8(sp)
    800056c8:	00813023          	sd	s0,0(sp)
    800056cc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800056d0:	00000593          	li	a1,0
    800056d4:	00000097          	auipc	ra,0x0
    800056d8:	8bc080e7          	jalr	-1860(ra) # 80004f90 <_ZN7WorkerC11workerBodyCEPv>
    }
    800056dc:	00813083          	ld	ra,8(sp)
    800056e0:	00013403          	ld	s0,0(sp)
    800056e4:	01010113          	addi	sp,sp,16
    800056e8:	00008067          	ret

00000000800056ec <_ZN7WorkerD3runEv>:

    void run() override {
    800056ec:	ff010113          	addi	sp,sp,-16
    800056f0:	00113423          	sd	ra,8(sp)
    800056f4:	00813023          	sd	s0,0(sp)
    800056f8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800056fc:	00000593          	li	a1,0
    80005700:	00000097          	auipc	ra,0x0
    80005704:	a10080e7          	jalr	-1520(ra) # 80005110 <_ZN7WorkerD11workerBodyDEPv>
    }
    80005708:	00813083          	ld	ra,8(sp)
    8000570c:	00013403          	ld	s0,0(sp)
    80005710:	01010113          	addi	sp,sp,16
    80005714:	00008067          	ret

0000000080005718 <_Z11workerBodyAPv>:
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg)
{
    80005718:	fe010113          	addi	sp,sp,-32
    8000571c:	00113c23          	sd	ra,24(sp)
    80005720:	00813823          	sd	s0,16(sp)
    80005724:	00913423          	sd	s1,8(sp)
    80005728:	01213023          	sd	s2,0(sp)
    8000572c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80005730:	00000913          	li	s2,0
    80005734:	0380006f          	j	8000576c <_Z11workerBodyAPv+0x54>
    {
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005738:	ffffc097          	auipc	ra,0xffffc
    8000573c:	bfc080e7          	jalr	-1028(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    80005740:	00148493          	addi	s1,s1,1
    80005744:	000027b7          	lui	a5,0x2
    80005748:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000574c:	0097ee63          	bltu	a5,s1,80005768 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005750:	00000713          	li	a4,0
    80005754:	000077b7          	lui	a5,0x7
    80005758:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000575c:	fce7eee3          	bltu	a5,a4,80005738 <_Z11workerBodyAPv+0x20>
    80005760:	00170713          	addi	a4,a4,1
    80005764:	ff1ff06f          	j	80005754 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++)
    80005768:	00190913          	addi	s2,s2,1
    8000576c:	00900793          	li	a5,9
    80005770:	0527e063          	bltu	a5,s2,800057b0 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005774:	00004517          	auipc	a0,0x4
    80005778:	cbc50513          	addi	a0,a0,-836 # 80009430 <CONSOLE_STATUS+0x420>
    8000577c:	00000097          	auipc	ra,0x0
    80005780:	5c4080e7          	jalr	1476(ra) # 80005d40 <_Z11printStringPKc>
    80005784:	00000613          	li	a2,0
    80005788:	00a00593          	li	a1,10
    8000578c:	0009051b          	sext.w	a0,s2
    80005790:	00000097          	auipc	ra,0x0
    80005794:	748080e7          	jalr	1864(ra) # 80005ed8 <_Z8printIntiii>
    80005798:	00004517          	auipc	a0,0x4
    8000579c:	96850513          	addi	a0,a0,-1688 # 80009100 <CONSOLE_STATUS+0xf0>
    800057a0:	00000097          	auipc	ra,0x0
    800057a4:	5a0080e7          	jalr	1440(ra) # 80005d40 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800057a8:	00000493          	li	s1,0
    800057ac:	f99ff06f          	j	80005744 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    800057b0:	00004517          	auipc	a0,0x4
    800057b4:	c8850513          	addi	a0,a0,-888 # 80009438 <CONSOLE_STATUS+0x428>
    800057b8:	00000097          	auipc	ra,0x0
    800057bc:	588080e7          	jalr	1416(ra) # 80005d40 <_Z11printStringPKc>
    finishedA = true;
    800057c0:	00100793          	li	a5,1
    800057c4:	0000a717          	auipc	a4,0xa
    800057c8:	52f70023          	sb	a5,1312(a4) # 8000fce4 <_ZL9finishedA>
}
    800057cc:	01813083          	ld	ra,24(sp)
    800057d0:	01013403          	ld	s0,16(sp)
    800057d4:	00813483          	ld	s1,8(sp)
    800057d8:	00013903          	ld	s2,0(sp)
    800057dc:	02010113          	addi	sp,sp,32
    800057e0:	00008067          	ret

00000000800057e4 <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    800057e4:	fe010113          	addi	sp,sp,-32
    800057e8:	00113c23          	sd	ra,24(sp)
    800057ec:	00813823          	sd	s0,16(sp)
    800057f0:	00913423          	sd	s1,8(sp)
    800057f4:	01213023          	sd	s2,0(sp)
    800057f8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800057fc:	00000913          	li	s2,0
    80005800:	0380006f          	j	80005838 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005804:	ffffc097          	auipc	ra,0xffffc
    80005808:	b30080e7          	jalr	-1232(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    8000580c:	00148493          	addi	s1,s1,1
    80005810:	000027b7          	lui	a5,0x2
    80005814:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005818:	0097ee63          	bltu	a5,s1,80005834 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000581c:	00000713          	li	a4,0
    80005820:	000077b7          	lui	a5,0x7
    80005824:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005828:	fce7eee3          	bltu	a5,a4,80005804 <_Z11workerBodyBPv+0x20>
    8000582c:	00170713          	addi	a4,a4,1
    80005830:	ff1ff06f          	j	80005820 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005834:	00190913          	addi	s2,s2,1
    80005838:	00f00793          	li	a5,15
    8000583c:	0527e063          	bltu	a5,s2,8000587c <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005840:	00004517          	auipc	a0,0x4
    80005844:	c0850513          	addi	a0,a0,-1016 # 80009448 <CONSOLE_STATUS+0x438>
    80005848:	00000097          	auipc	ra,0x0
    8000584c:	4f8080e7          	jalr	1272(ra) # 80005d40 <_Z11printStringPKc>
    80005850:	00000613          	li	a2,0
    80005854:	00a00593          	li	a1,10
    80005858:	0009051b          	sext.w	a0,s2
    8000585c:	00000097          	auipc	ra,0x0
    80005860:	67c080e7          	jalr	1660(ra) # 80005ed8 <_Z8printIntiii>
    80005864:	00004517          	auipc	a0,0x4
    80005868:	89c50513          	addi	a0,a0,-1892 # 80009100 <CONSOLE_STATUS+0xf0>
    8000586c:	00000097          	auipc	ra,0x0
    80005870:	4d4080e7          	jalr	1236(ra) # 80005d40 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80005874:	00000493          	li	s1,0
    80005878:	f99ff06f          	j	80005810 <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    8000587c:	ffffc097          	auipc	ra,0xffffc
    80005880:	ab8080e7          	jalr	-1352(ra) # 80001334 <thread_dispatch>
    printString("B finished!\n");
    80005884:	00004517          	auipc	a0,0x4
    80005888:	bcc50513          	addi	a0,a0,-1076 # 80009450 <CONSOLE_STATUS+0x440>
    8000588c:	00000097          	auipc	ra,0x0
    80005890:	4b4080e7          	jalr	1204(ra) # 80005d40 <_Z11printStringPKc>
    finishedB = true;
    80005894:	00100793          	li	a5,1
    80005898:	0000a717          	auipc	a4,0xa
    8000589c:	44f706a3          	sb	a5,1101(a4) # 8000fce5 <_ZL9finishedB>
}
    800058a0:	01813083          	ld	ra,24(sp)
    800058a4:	01013403          	ld	s0,16(sp)
    800058a8:	00813483          	ld	s1,8(sp)
    800058ac:	00013903          	ld	s2,0(sp)
    800058b0:	02010113          	addi	sp,sp,32
    800058b4:	00008067          	ret

00000000800058b8 <_ZL9fibonaccim>:
{
    800058b8:	fe010113          	addi	sp,sp,-32
    800058bc:	00113c23          	sd	ra,24(sp)
    800058c0:	00813823          	sd	s0,16(sp)
    800058c4:	00913423          	sd	s1,8(sp)
    800058c8:	01213023          	sd	s2,0(sp)
    800058cc:	02010413          	addi	s0,sp,32
    800058d0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) {return n; }
    800058d4:	00100793          	li	a5,1
    800058d8:	02a7f863          	bgeu	a5,a0,80005908 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800058dc:	00a00793          	li	a5,10
    800058e0:	02f577b3          	remu	a5,a0,a5
    800058e4:	02078e63          	beqz	a5,80005920 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800058e8:	fff48513          	addi	a0,s1,-1
    800058ec:	00000097          	auipc	ra,0x0
    800058f0:	fcc080e7          	jalr	-52(ra) # 800058b8 <_ZL9fibonaccim>
    800058f4:	00050913          	mv	s2,a0
    800058f8:	ffe48513          	addi	a0,s1,-2
    800058fc:	00000097          	auipc	ra,0x0
    80005900:	fbc080e7          	jalr	-68(ra) # 800058b8 <_ZL9fibonaccim>
    80005904:	00a90533          	add	a0,s2,a0
}
    80005908:	01813083          	ld	ra,24(sp)
    8000590c:	01013403          	ld	s0,16(sp)
    80005910:	00813483          	ld	s1,8(sp)
    80005914:	00013903          	ld	s2,0(sp)
    80005918:	02010113          	addi	sp,sp,32
    8000591c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005920:	ffffc097          	auipc	ra,0xffffc
    80005924:	a14080e7          	jalr	-1516(ra) # 80001334 <thread_dispatch>
    80005928:	fc1ff06f          	j	800058e8 <_ZL9fibonaccim+0x30>

000000008000592c <_Z11workerBodyCPv>:

void workerBodyC(void* arg)
{
    8000592c:	fe010113          	addi	sp,sp,-32
    80005930:	00113c23          	sd	ra,24(sp)
    80005934:	00813823          	sd	s0,16(sp)
    80005938:	00913423          	sd	s1,8(sp)
    8000593c:	01213023          	sd	s2,0(sp)
    80005940:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005944:	00000493          	li	s1,0
    80005948:	0400006f          	j	80005988 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i="); printInt(i); printString("\n");
    8000594c:	00004517          	auipc	a0,0x4
    80005950:	b1450513          	addi	a0,a0,-1260 # 80009460 <CONSOLE_STATUS+0x450>
    80005954:	00000097          	auipc	ra,0x0
    80005958:	3ec080e7          	jalr	1004(ra) # 80005d40 <_Z11printStringPKc>
    8000595c:	00000613          	li	a2,0
    80005960:	00a00593          	li	a1,10
    80005964:	00048513          	mv	a0,s1
    80005968:	00000097          	auipc	ra,0x0
    8000596c:	570080e7          	jalr	1392(ra) # 80005ed8 <_Z8printIntiii>
    80005970:	00003517          	auipc	a0,0x3
    80005974:	79050513          	addi	a0,a0,1936 # 80009100 <CONSOLE_STATUS+0xf0>
    80005978:	00000097          	auipc	ra,0x0
    8000597c:	3c8080e7          	jalr	968(ra) # 80005d40 <_Z11printStringPKc>
    for (; i < 3; i++)
    80005980:	0014849b          	addiw	s1,s1,1
    80005984:	0ff4f493          	andi	s1,s1,255
    80005988:	00200793          	li	a5,2
    8000598c:	fc97f0e3          	bgeu	a5,s1,8000594c <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005990:	00004517          	auipc	a0,0x4
    80005994:	ad850513          	addi	a0,a0,-1320 # 80009468 <CONSOLE_STATUS+0x458>
    80005998:	00000097          	auipc	ra,0x0
    8000599c:	3a8080e7          	jalr	936(ra) # 80005d40 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800059a0:	00700313          	li	t1,7
    thread_dispatch();
    800059a4:	ffffc097          	auipc	ra,0xffffc
    800059a8:	990080e7          	jalr	-1648(ra) # 80001334 <thread_dispatch>
    printString("C: returned\n");
    800059ac:	00004517          	auipc	a0,0x4
    800059b0:	b8c50513          	addi	a0,a0,-1140 # 80009538 <CONSOLE_STATUS+0x528>
    800059b4:	00000097          	auipc	ra,0x0
    800059b8:	38c080e7          	jalr	908(ra) # 80005d40 <_Z11printStringPKc>
    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800059bc:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800059c0:	00004517          	auipc	a0,0x4
    800059c4:	ab850513          	addi	a0,a0,-1352 # 80009478 <CONSOLE_STATUS+0x468>
    800059c8:	00000097          	auipc	ra,0x0
    800059cc:	378080e7          	jalr	888(ra) # 80005d40 <_Z11printStringPKc>
    800059d0:	00000613          	li	a2,0
    800059d4:	00a00593          	li	a1,10
    800059d8:	0009051b          	sext.w	a0,s2
    800059dc:	00000097          	auipc	ra,0x0
    800059e0:	4fc080e7          	jalr	1276(ra) # 80005ed8 <_Z8printIntiii>
    800059e4:	00003517          	auipc	a0,0x3
    800059e8:	71c50513          	addi	a0,a0,1820 # 80009100 <CONSOLE_STATUS+0xf0>
    800059ec:	00000097          	auipc	ra,0x0
    800059f0:	354080e7          	jalr	852(ra) # 80005d40 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800059f4:	00c00513          	li	a0,12
    800059f8:	00000097          	auipc	ra,0x0
    800059fc:	ec0080e7          	jalr	-320(ra) # 800058b8 <_ZL9fibonaccim>
    80005a00:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005a04:	00004517          	auipc	a0,0x4
    80005a08:	a7c50513          	addi	a0,a0,-1412 # 80009480 <CONSOLE_STATUS+0x470>
    80005a0c:	00000097          	auipc	ra,0x0
    80005a10:	334080e7          	jalr	820(ra) # 80005d40 <_Z11printStringPKc>
    80005a14:	00000613          	li	a2,0
    80005a18:	00a00593          	li	a1,10
    80005a1c:	0009051b          	sext.w	a0,s2
    80005a20:	00000097          	auipc	ra,0x0
    80005a24:	4b8080e7          	jalr	1208(ra) # 80005ed8 <_Z8printIntiii>
    80005a28:	00003517          	auipc	a0,0x3
    80005a2c:	6d850513          	addi	a0,a0,1752 # 80009100 <CONSOLE_STATUS+0xf0>
    80005a30:	00000097          	auipc	ra,0x0
    80005a34:	310080e7          	jalr	784(ra) # 80005d40 <_Z11printStringPKc>
    80005a38:	0400006f          	j	80005a78 <_Z11workerBodyCPv+0x14c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005a3c:	00004517          	auipc	a0,0x4
    80005a40:	a2450513          	addi	a0,a0,-1500 # 80009460 <CONSOLE_STATUS+0x450>
    80005a44:	00000097          	auipc	ra,0x0
    80005a48:	2fc080e7          	jalr	764(ra) # 80005d40 <_Z11printStringPKc>
    80005a4c:	00000613          	li	a2,0
    80005a50:	00a00593          	li	a1,10
    80005a54:	00048513          	mv	a0,s1
    80005a58:	00000097          	auipc	ra,0x0
    80005a5c:	480080e7          	jalr	1152(ra) # 80005ed8 <_Z8printIntiii>
    80005a60:	00003517          	auipc	a0,0x3
    80005a64:	6a050513          	addi	a0,a0,1696 # 80009100 <CONSOLE_STATUS+0xf0>
    80005a68:	00000097          	auipc	ra,0x0
    80005a6c:	2d8080e7          	jalr	728(ra) # 80005d40 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005a70:	0014849b          	addiw	s1,s1,1
    80005a74:	0ff4f493          	andi	s1,s1,255
    80005a78:	00500793          	li	a5,5
    80005a7c:	fc97f0e3          	bgeu	a5,s1,80005a3c <_Z11workerBodyCPv+0x110>
    }

    thread_dispatch();
    80005a80:	ffffc097          	auipc	ra,0xffffc
    80005a84:	8b4080e7          	jalr	-1868(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    80005a88:	00004517          	auipc	a0,0x4
    80005a8c:	a0850513          	addi	a0,a0,-1528 # 80009490 <CONSOLE_STATUS+0x480>
    80005a90:	00000097          	auipc	ra,0x0
    80005a94:	2b0080e7          	jalr	688(ra) # 80005d40 <_Z11printStringPKc>
    finishedC = true;
    80005a98:	00100793          	li	a5,1
    80005a9c:	0000a717          	auipc	a4,0xa
    80005aa0:	24f70523          	sb	a5,586(a4) # 8000fce6 <_ZL9finishedC>
}
    80005aa4:	01813083          	ld	ra,24(sp)
    80005aa8:	01013403          	ld	s0,16(sp)
    80005aac:	00813483          	ld	s1,8(sp)
    80005ab0:	00013903          	ld	s2,0(sp)
    80005ab4:	02010113          	addi	sp,sp,32
    80005ab8:	00008067          	ret

0000000080005abc <_Z11workerBodyDPv>:

void workerBodyD(void* arg)
{
    80005abc:	fe010113          	addi	sp,sp,-32
    80005ac0:	00113c23          	sd	ra,24(sp)
    80005ac4:	00813823          	sd	s0,16(sp)
    80005ac8:	00913423          	sd	s1,8(sp)
    80005acc:	01213023          	sd	s2,0(sp)
    80005ad0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005ad4:	00a00493          	li	s1,10
    80005ad8:	0400006f          	j	80005b18 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005adc:	00004517          	auipc	a0,0x4
    80005ae0:	9c450513          	addi	a0,a0,-1596 # 800094a0 <CONSOLE_STATUS+0x490>
    80005ae4:	00000097          	auipc	ra,0x0
    80005ae8:	25c080e7          	jalr	604(ra) # 80005d40 <_Z11printStringPKc>
    80005aec:	00000613          	li	a2,0
    80005af0:	00a00593          	li	a1,10
    80005af4:	00048513          	mv	a0,s1
    80005af8:	00000097          	auipc	ra,0x0
    80005afc:	3e0080e7          	jalr	992(ra) # 80005ed8 <_Z8printIntiii>
    80005b00:	00003517          	auipc	a0,0x3
    80005b04:	60050513          	addi	a0,a0,1536 # 80009100 <CONSOLE_STATUS+0xf0>
    80005b08:	00000097          	auipc	ra,0x0
    80005b0c:	238080e7          	jalr	568(ra) # 80005d40 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005b10:	0014849b          	addiw	s1,s1,1
    80005b14:	0ff4f493          	andi	s1,s1,255
    80005b18:	00c00793          	li	a5,12
    80005b1c:	fc97f0e3          	bgeu	a5,s1,80005adc <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005b20:	00004517          	auipc	a0,0x4
    80005b24:	98850513          	addi	a0,a0,-1656 # 800094a8 <CONSOLE_STATUS+0x498>
    80005b28:	00000097          	auipc	ra,0x0
    80005b2c:	218080e7          	jalr	536(ra) # 80005d40 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005b30:	00500313          	li	t1,5
    thread_dispatch();
    80005b34:	ffffc097          	auipc	ra,0xffffc
    80005b38:	800080e7          	jalr	-2048(ra) # 80001334 <thread_dispatch>
    printString("D: returned\n");
    80005b3c:	00004517          	auipc	a0,0x4
    80005b40:	a0c50513          	addi	a0,a0,-1524 # 80009548 <CONSOLE_STATUS+0x538>
    80005b44:	00000097          	auipc	ra,0x0
    80005b48:	1fc080e7          	jalr	508(ra) # 80005d40 <_Z11printStringPKc>
    uint64 result = fibonacci(16);
    80005b4c:	01000513          	li	a0,16
    80005b50:	00000097          	auipc	ra,0x0
    80005b54:	d68080e7          	jalr	-664(ra) # 800058b8 <_ZL9fibonaccim>
    80005b58:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005b5c:	00004517          	auipc	a0,0x4
    80005b60:	95c50513          	addi	a0,a0,-1700 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80005b64:	00000097          	auipc	ra,0x0
    80005b68:	1dc080e7          	jalr	476(ra) # 80005d40 <_Z11printStringPKc>
    80005b6c:	00000613          	li	a2,0
    80005b70:	00a00593          	li	a1,10
    80005b74:	0009051b          	sext.w	a0,s2
    80005b78:	00000097          	auipc	ra,0x0
    80005b7c:	360080e7          	jalr	864(ra) # 80005ed8 <_Z8printIntiii>
    80005b80:	00003517          	auipc	a0,0x3
    80005b84:	58050513          	addi	a0,a0,1408 # 80009100 <CONSOLE_STATUS+0xf0>
    80005b88:	00000097          	auipc	ra,0x0
    80005b8c:	1b8080e7          	jalr	440(ra) # 80005d40 <_Z11printStringPKc>
    80005b90:	0400006f          	j	80005bd0 <_Z11workerBodyDPv+0x114>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005b94:	00004517          	auipc	a0,0x4
    80005b98:	90c50513          	addi	a0,a0,-1780 # 800094a0 <CONSOLE_STATUS+0x490>
    80005b9c:	00000097          	auipc	ra,0x0
    80005ba0:	1a4080e7          	jalr	420(ra) # 80005d40 <_Z11printStringPKc>
    80005ba4:	00000613          	li	a2,0
    80005ba8:	00a00593          	li	a1,10
    80005bac:	00048513          	mv	a0,s1
    80005bb0:	00000097          	auipc	ra,0x0
    80005bb4:	328080e7          	jalr	808(ra) # 80005ed8 <_Z8printIntiii>
    80005bb8:	00003517          	auipc	a0,0x3
    80005bbc:	54850513          	addi	a0,a0,1352 # 80009100 <CONSOLE_STATUS+0xf0>
    80005bc0:	00000097          	auipc	ra,0x0
    80005bc4:	180080e7          	jalr	384(ra) # 80005d40 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005bc8:	0014849b          	addiw	s1,s1,1
    80005bcc:	0ff4f493          	andi	s1,s1,255
    80005bd0:	00f00793          	li	a5,15
    80005bd4:	fc97f0e3          	bgeu	a5,s1,80005b94 <_Z11workerBodyDPv+0xd8>
    }

    thread_dispatch();
    80005bd8:	ffffb097          	auipc	ra,0xffffb
    80005bdc:	75c080e7          	jalr	1884(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    80005be0:	00004517          	auipc	a0,0x4
    80005be4:	8e850513          	addi	a0,a0,-1816 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80005be8:	00000097          	auipc	ra,0x0
    80005bec:	158080e7          	jalr	344(ra) # 80005d40 <_Z11printStringPKc>
    finishedD = true;
    80005bf0:	00100793          	li	a5,1
    80005bf4:	0000a717          	auipc	a4,0xa
    80005bf8:	0ef709a3          	sb	a5,243(a4) # 8000fce7 <_ZL9finishedD>
}
    80005bfc:	01813083          	ld	ra,24(sp)
    80005c00:	01013403          	ld	s0,16(sp)
    80005c04:	00813483          	ld	s1,8(sp)
    80005c08:	00013903          	ld	s2,0(sp)
    80005c0c:	02010113          	addi	sp,sp,32
    80005c10:	00008067          	ret

0000000080005c14 <_Z18Threads_C_API_testv>:


void Threads_C_API_test()
{
    80005c14:	fc010113          	addi	sp,sp,-64
    80005c18:	02113c23          	sd	ra,56(sp)
    80005c1c:	02813823          	sd	s0,48(sp)
    80005c20:	02913423          	sd	s1,40(sp)
    80005c24:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005c28:	00000613          	li	a2,0
    80005c2c:	00000597          	auipc	a1,0x0
    80005c30:	aec58593          	addi	a1,a1,-1300 # 80005718 <_Z11workerBodyAPv>
    80005c34:	fc040513          	addi	a0,s0,-64
    80005c38:	ffffb097          	auipc	ra,0xffffb
    80005c3c:	67c080e7          	jalr	1660(ra) # 800012b4 <thread_create>
    printString("ThreadA created\n");
    80005c40:	00004517          	auipc	a0,0x4
    80005c44:	89850513          	addi	a0,a0,-1896 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80005c48:	00000097          	auipc	ra,0x0
    80005c4c:	0f8080e7          	jalr	248(ra) # 80005d40 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005c50:	00000613          	li	a2,0
    80005c54:	00000597          	auipc	a1,0x0
    80005c58:	b9058593          	addi	a1,a1,-1136 # 800057e4 <_Z11workerBodyBPv>
    80005c5c:	fc840513          	addi	a0,s0,-56
    80005c60:	ffffb097          	auipc	ra,0xffffb
    80005c64:	654080e7          	jalr	1620(ra) # 800012b4 <thread_create>
    printString("ThreadB created\n");
    80005c68:	00004517          	auipc	a0,0x4
    80005c6c:	88850513          	addi	a0,a0,-1912 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80005c70:	00000097          	auipc	ra,0x0
    80005c74:	0d0080e7          	jalr	208(ra) # 80005d40 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005c78:	00000613          	li	a2,0
    80005c7c:	00000597          	auipc	a1,0x0
    80005c80:	cb058593          	addi	a1,a1,-848 # 8000592c <_Z11workerBodyCPv>
    80005c84:	fd040513          	addi	a0,s0,-48
    80005c88:	ffffb097          	auipc	ra,0xffffb
    80005c8c:	62c080e7          	jalr	1580(ra) # 800012b4 <thread_create>
    printString("ThreadC created\n");
    80005c90:	00004517          	auipc	a0,0x4
    80005c94:	87850513          	addi	a0,a0,-1928 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005c98:	00000097          	auipc	ra,0x0
    80005c9c:	0a8080e7          	jalr	168(ra) # 80005d40 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005ca0:	00000613          	li	a2,0
    80005ca4:	00000597          	auipc	a1,0x0
    80005ca8:	e1858593          	addi	a1,a1,-488 # 80005abc <_Z11workerBodyDPv>
    80005cac:	fd840513          	addi	a0,s0,-40
    80005cb0:	ffffb097          	auipc	ra,0xffffb
    80005cb4:	604080e7          	jalr	1540(ra) # 800012b4 <thread_create>
    printString("ThreadD created\n");
    80005cb8:	00004517          	auipc	a0,0x4
    80005cbc:	86850513          	addi	a0,a0,-1944 # 80009520 <CONSOLE_STATUS+0x510>
    80005cc0:	00000097          	auipc	ra,0x0
    80005cc4:	080080e7          	jalr	128(ra) # 80005d40 <_Z11printStringPKc>
    80005cc8:	00c0006f          	j	80005cd4 <_Z18Threads_C_API_testv+0xc0>

    while (!finishedA || !finishedB || !finishedC || !finishedD)
    {
        //printString("Main thread\n");
        thread_dispatch();
    80005ccc:	ffffb097          	auipc	ra,0xffffb
    80005cd0:	668080e7          	jalr	1640(ra) # 80001334 <thread_dispatch>
    while (!finishedA || !finishedB || !finishedC || !finishedD)
    80005cd4:	0000a797          	auipc	a5,0xa
    80005cd8:	0107c783          	lbu	a5,16(a5) # 8000fce4 <_ZL9finishedA>
    80005cdc:	fe0788e3          	beqz	a5,80005ccc <_Z18Threads_C_API_testv+0xb8>
    80005ce0:	0000a797          	auipc	a5,0xa
    80005ce4:	0057c783          	lbu	a5,5(a5) # 8000fce5 <_ZL9finishedB>
    80005ce8:	fe0782e3          	beqz	a5,80005ccc <_Z18Threads_C_API_testv+0xb8>
    80005cec:	0000a797          	auipc	a5,0xa
    80005cf0:	ffa7c783          	lbu	a5,-6(a5) # 8000fce6 <_ZL9finishedC>
    80005cf4:	fc078ce3          	beqz	a5,80005ccc <_Z18Threads_C_API_testv+0xb8>
    80005cf8:	0000a797          	auipc	a5,0xa
    80005cfc:	fef7c783          	lbu	a5,-17(a5) # 8000fce7 <_ZL9finishedD>
    80005d00:	fc0786e3          	beqz	a5,80005ccc <_Z18Threads_C_API_testv+0xb8>
    }
    for (auto &thread: threads)
    80005d04:	fc040493          	addi	s1,s0,-64
    80005d08:	0080006f          	j	80005d10 <_Z18Threads_C_API_testv+0xfc>
    80005d0c:	00848493          	addi	s1,s1,8
    80005d10:	fe040793          	addi	a5,s0,-32
    80005d14:	00f48c63          	beq	s1,a5,80005d2c <_Z18Threads_C_API_testv+0x118>
    {
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (uint64*)thread;
    80005d18:	0004b503          	ld	a0,0(s1)
    80005d1c:	fe0508e3          	beqz	a0,80005d0c <_Z18Threads_C_API_testv+0xf8>
    80005d20:	ffffe097          	auipc	ra,0xffffe
    80005d24:	a40080e7          	jalr	-1472(ra) # 80003760 <_ZdlPv>
    80005d28:	fe5ff06f          	j	80005d0c <_Z18Threads_C_API_testv+0xf8>
    }
}
    80005d2c:	03813083          	ld	ra,56(sp)
    80005d30:	03013403          	ld	s0,48(sp)
    80005d34:	02813483          	ld	s1,40(sp)
    80005d38:	04010113          	addi	sp,sp,64
    80005d3c:	00008067          	ret

0000000080005d40 <_Z11printStringPKc>:
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string)
{
    80005d40:	fe010113          	addi	sp,sp,-32
    80005d44:	00113c23          	sd	ra,24(sp)
    80005d48:	00813823          	sd	s0,16(sp)
    80005d4c:	00913423          	sd	s1,8(sp)
    80005d50:	02010413          	addi	s0,sp,32
    80005d54:	00050493          	mv	s1,a0
    LOCK();
    80005d58:	00100613          	li	a2,1
    80005d5c:	00000593          	li	a1,0
    80005d60:	0000a517          	auipc	a0,0xa
    80005d64:	f8850513          	addi	a0,a0,-120 # 8000fce8 <lockPrint>
    80005d68:	ffffb097          	auipc	ra,0xffffb
    80005d6c:	4b0080e7          	jalr	1200(ra) # 80001218 <copy_and_swap>
    80005d70:	fe0514e3          	bnez	a0,80005d58 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80005d74:	0004c503          	lbu	a0,0(s1)
    80005d78:	00050a63          	beqz	a0,80005d8c <_Z11printStringPKc+0x4c>
        putc(*string);
    80005d7c:	ffffb097          	auipc	ra,0xffffb
    80005d80:	7bc080e7          	jalr	1980(ra) # 80001538 <putc>
        string++;
    80005d84:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005d88:	fedff06f          	j	80005d74 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005d8c:	00000613          	li	a2,0
    80005d90:	00100593          	li	a1,1
    80005d94:	0000a517          	auipc	a0,0xa
    80005d98:	f5450513          	addi	a0,a0,-172 # 8000fce8 <lockPrint>
    80005d9c:	ffffb097          	auipc	ra,0xffffb
    80005da0:	47c080e7          	jalr	1148(ra) # 80001218 <copy_and_swap>
    80005da4:	fe0514e3          	bnez	a0,80005d8c <_Z11printStringPKc+0x4c>
}
    80005da8:	01813083          	ld	ra,24(sp)
    80005dac:	01013403          	ld	s0,16(sp)
    80005db0:	00813483          	ld	s1,8(sp)
    80005db4:	02010113          	addi	sp,sp,32
    80005db8:	00008067          	ret

0000000080005dbc <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005dbc:	fd010113          	addi	sp,sp,-48
    80005dc0:	02113423          	sd	ra,40(sp)
    80005dc4:	02813023          	sd	s0,32(sp)
    80005dc8:	00913c23          	sd	s1,24(sp)
    80005dcc:	01213823          	sd	s2,16(sp)
    80005dd0:	01313423          	sd	s3,8(sp)
    80005dd4:	01413023          	sd	s4,0(sp)
    80005dd8:	03010413          	addi	s0,sp,48
    80005ddc:	00050993          	mv	s3,a0
    80005de0:	00058a13          	mv	s4,a1
    LOCK();
    80005de4:	00100613          	li	a2,1
    80005de8:	00000593          	li	a1,0
    80005dec:	0000a517          	auipc	a0,0xa
    80005df0:	efc50513          	addi	a0,a0,-260 # 8000fce8 <lockPrint>
    80005df4:	ffffb097          	auipc	ra,0xffffb
    80005df8:	424080e7          	jalr	1060(ra) # 80001218 <copy_and_swap>
    80005dfc:	fe0514e3          	bnez	a0,80005de4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80005e00:	00000913          	li	s2,0
    80005e04:	00090493          	mv	s1,s2
    80005e08:	0019091b          	addiw	s2,s2,1
    80005e0c:	03495a63          	bge	s2,s4,80005e40 <_Z9getStringPci+0x84>
        cc = getc();
    80005e10:	ffffb097          	auipc	ra,0xffffb
    80005e14:	700080e7          	jalr	1792(ra) # 80001510 <getc>
        if (cc < 1)
    80005e18:	02050463          	beqz	a0,80005e40 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005e1c:	009984b3          	add	s1,s3,s1
    80005e20:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80005e24:	00a00793          	li	a5,10
    80005e28:	00f50a63          	beq	a0,a5,80005e3c <_Z9getStringPci+0x80>
    80005e2c:	00d00793          	li	a5,13
    80005e30:	fcf51ae3          	bne	a0,a5,80005e04 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005e34:	00090493          	mv	s1,s2
    80005e38:	0080006f          	j	80005e40 <_Z9getStringPci+0x84>
    80005e3c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005e40:	009984b3          	add	s1,s3,s1
    80005e44:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005e48:	00000613          	li	a2,0
    80005e4c:	00100593          	li	a1,1
    80005e50:	0000a517          	auipc	a0,0xa
    80005e54:	e9850513          	addi	a0,a0,-360 # 8000fce8 <lockPrint>
    80005e58:	ffffb097          	auipc	ra,0xffffb
    80005e5c:	3c0080e7          	jalr	960(ra) # 80001218 <copy_and_swap>
    80005e60:	fe0514e3          	bnez	a0,80005e48 <_Z9getStringPci+0x8c>
    return buf;
}
    80005e64:	00098513          	mv	a0,s3
    80005e68:	02813083          	ld	ra,40(sp)
    80005e6c:	02013403          	ld	s0,32(sp)
    80005e70:	01813483          	ld	s1,24(sp)
    80005e74:	01013903          	ld	s2,16(sp)
    80005e78:	00813983          	ld	s3,8(sp)
    80005e7c:	00013a03          	ld	s4,0(sp)
    80005e80:	03010113          	addi	sp,sp,48
    80005e84:	00008067          	ret

0000000080005e88 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005e88:	ff010113          	addi	sp,sp,-16
    80005e8c:	00813423          	sd	s0,8(sp)
    80005e90:	01010413          	addi	s0,sp,16
    80005e94:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005e98:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005e9c:	0006c603          	lbu	a2,0(a3)
    80005ea0:	fd06071b          	addiw	a4,a2,-48
    80005ea4:	0ff77713          	andi	a4,a4,255
    80005ea8:	00900793          	li	a5,9
    80005eac:	02e7e063          	bltu	a5,a4,80005ecc <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005eb0:	0025179b          	slliw	a5,a0,0x2
    80005eb4:	00a787bb          	addw	a5,a5,a0
    80005eb8:	0017979b          	slliw	a5,a5,0x1
    80005ebc:	00168693          	addi	a3,a3,1
    80005ec0:	00c787bb          	addw	a5,a5,a2
    80005ec4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005ec8:	fd5ff06f          	j	80005e9c <_Z11stringToIntPKc+0x14>
    return n;
}
    80005ecc:	00813403          	ld	s0,8(sp)
    80005ed0:	01010113          	addi	sp,sp,16
    80005ed4:	00008067          	ret

0000000080005ed8 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005ed8:	fc010113          	addi	sp,sp,-64
    80005edc:	02113c23          	sd	ra,56(sp)
    80005ee0:	02813823          	sd	s0,48(sp)
    80005ee4:	02913423          	sd	s1,40(sp)
    80005ee8:	03213023          	sd	s2,32(sp)
    80005eec:	01313c23          	sd	s3,24(sp)
    80005ef0:	04010413          	addi	s0,sp,64
    80005ef4:	00050493          	mv	s1,a0
    80005ef8:	00058913          	mv	s2,a1
    80005efc:	00060993          	mv	s3,a2
    LOCK();
    80005f00:	00100613          	li	a2,1
    80005f04:	00000593          	li	a1,0
    80005f08:	0000a517          	auipc	a0,0xa
    80005f0c:	de050513          	addi	a0,a0,-544 # 8000fce8 <lockPrint>
    80005f10:	ffffb097          	auipc	ra,0xffffb
    80005f14:	308080e7          	jalr	776(ra) # 80001218 <copy_and_swap>
    80005f18:	fe0514e3          	bnez	a0,80005f00 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005f1c:	00098463          	beqz	s3,80005f24 <_Z8printIntiii+0x4c>
    80005f20:	0804c463          	bltz	s1,80005fa8 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005f24:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005f28:	00000593          	li	a1,0
    }

    i = 0;
    80005f2c:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005f30:	0009079b          	sext.w	a5,s2
    80005f34:	0325773b          	remuw	a4,a0,s2
    80005f38:	00048613          	mv	a2,s1
    80005f3c:	0014849b          	addiw	s1,s1,1
    80005f40:	02071693          	slli	a3,a4,0x20
    80005f44:	0206d693          	srli	a3,a3,0x20
    80005f48:	00003717          	auipc	a4,0x3
    80005f4c:	61070713          	addi	a4,a4,1552 # 80009558 <_ZL6digits>
    80005f50:	00d70733          	add	a4,a4,a3
    80005f54:	00074683          	lbu	a3,0(a4)
    80005f58:	fd040713          	addi	a4,s0,-48
    80005f5c:	00c70733          	add	a4,a4,a2
    80005f60:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005f64:	0005071b          	sext.w	a4,a0
    80005f68:	0325553b          	divuw	a0,a0,s2
    80005f6c:	fcf772e3          	bgeu	a4,a5,80005f30 <_Z8printIntiii+0x58>
    if (neg)
    80005f70:	00058c63          	beqz	a1,80005f88 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005f74:	fd040793          	addi	a5,s0,-48
    80005f78:	009784b3          	add	s1,a5,s1
    80005f7c:	02d00793          	li	a5,45
    80005f80:	fef48823          	sb	a5,-16(s1)
    80005f84:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005f88:	fff4849b          	addiw	s1,s1,-1
    80005f8c:	0204c463          	bltz	s1,80005fb4 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005f90:	fd040793          	addi	a5,s0,-48
    80005f94:	009787b3          	add	a5,a5,s1
    80005f98:	ff07c503          	lbu	a0,-16(a5)
    80005f9c:	ffffb097          	auipc	ra,0xffffb
    80005fa0:	59c080e7          	jalr	1436(ra) # 80001538 <putc>
    80005fa4:	fe5ff06f          	j	80005f88 <_Z8printIntiii+0xb0>
        x = -xx;
    80005fa8:	4090053b          	negw	a0,s1
        neg = 1;
    80005fac:	00100593          	li	a1,1
        x = -xx;
    80005fb0:	f7dff06f          	j	80005f2c <_Z8printIntiii+0x54>
    UNLOCK();
    80005fb4:	00000613          	li	a2,0
    80005fb8:	00100593          	li	a1,1
    80005fbc:	0000a517          	auipc	a0,0xa
    80005fc0:	d2c50513          	addi	a0,a0,-724 # 8000fce8 <lockPrint>
    80005fc4:	ffffb097          	auipc	ra,0xffffb
    80005fc8:	254080e7          	jalr	596(ra) # 80001218 <copy_and_swap>
    80005fcc:	fe0514e3          	bnez	a0,80005fb4 <_Z8printIntiii+0xdc>
}
    80005fd0:	03813083          	ld	ra,56(sp)
    80005fd4:	03013403          	ld	s0,48(sp)
    80005fd8:	02813483          	ld	s1,40(sp)
    80005fdc:	02013903          	ld	s2,32(sp)
    80005fe0:	01813983          	ld	s3,24(sp)
    80005fe4:	04010113          	addi	sp,sp,64
    80005fe8:	00008067          	ret

0000000080005fec <_Z15trapPrintStringPKc>:

void trapPrintString(char const* string)
{
    80005fec:	fe010113          	addi	sp,sp,-32
    80005ff0:	00113c23          	sd	ra,24(sp)
    80005ff4:	00813823          	sd	s0,16(sp)
    80005ff8:	00913423          	sd	s1,8(sp)
    80005ffc:	02010413          	addi	s0,sp,32
    80006000:	00050493          	mv	s1,a0
    LOCK();
    80006004:	00100613          	li	a2,1
    80006008:	00000593          	li	a1,0
    8000600c:	0000a517          	auipc	a0,0xa
    80006010:	cdc50513          	addi	a0,a0,-804 # 8000fce8 <lockPrint>
    80006014:	ffffb097          	auipc	ra,0xffffb
    80006018:	204080e7          	jalr	516(ra) # 80001218 <copy_and_swap>
    8000601c:	fe0514e3          	bnez	a0,80006004 <_Z15trapPrintStringPKc+0x18>
    while (*string != '\0') {
    80006020:	0004c503          	lbu	a0,0(s1)
    80006024:	00050a63          	beqz	a0,80006038 <_Z15trapPrintStringPKc+0x4c>
        KConsole::putCharacterOutput(*string);
    80006028:	ffffd097          	auipc	ra,0xffffd
    8000602c:	f20080e7          	jalr	-224(ra) # 80002f48 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80006030:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80006034:	fedff06f          	j	80006020 <_Z15trapPrintStringPKc+0x34>
    }
    UNLOCK();
    80006038:	00000613          	li	a2,0
    8000603c:	00100593          	li	a1,1
    80006040:	0000a517          	auipc	a0,0xa
    80006044:	ca850513          	addi	a0,a0,-856 # 8000fce8 <lockPrint>
    80006048:	ffffb097          	auipc	ra,0xffffb
    8000604c:	1d0080e7          	jalr	464(ra) # 80001218 <copy_and_swap>
    80006050:	fe0514e3          	bnez	a0,80006038 <_Z15trapPrintStringPKc+0x4c>
}
    80006054:	01813083          	ld	ra,24(sp)
    80006058:	01013403          	ld	s0,16(sp)
    8000605c:	00813483          	ld	s1,8(sp)
    80006060:	02010113          	addi	sp,sp,32
    80006064:	00008067          	ret

0000000080006068 <_Z12trapPrintIntiii>:

void trapPrintInt(int xx, int base, int sgn)
{
    80006068:	fc010113          	addi	sp,sp,-64
    8000606c:	02113c23          	sd	ra,56(sp)
    80006070:	02813823          	sd	s0,48(sp)
    80006074:	02913423          	sd	s1,40(sp)
    80006078:	03213023          	sd	s2,32(sp)
    8000607c:	01313c23          	sd	s3,24(sp)
    80006080:	04010413          	addi	s0,sp,64
    80006084:	00050493          	mv	s1,a0
    80006088:	00058913          	mv	s2,a1
    8000608c:	00060993          	mv	s3,a2
    LOCK();
    80006090:	00100613          	li	a2,1
    80006094:	00000593          	li	a1,0
    80006098:	0000a517          	auipc	a0,0xa
    8000609c:	c5050513          	addi	a0,a0,-944 # 8000fce8 <lockPrint>
    800060a0:	ffffb097          	auipc	ra,0xffffb
    800060a4:	178080e7          	jalr	376(ra) # 80001218 <copy_and_swap>
    800060a8:	fe0514e3          	bnez	a0,80006090 <_Z12trapPrintIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    800060ac:	00098463          	beqz	s3,800060b4 <_Z12trapPrintIntiii+0x4c>
    800060b0:	0804c463          	bltz	s1,80006138 <_Z12trapPrintIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800060b4:	0004851b          	sext.w	a0,s1
    neg = 0;
    800060b8:	00000593          	li	a1,0
    }

    i = 0;
    800060bc:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    800060c0:	0009079b          	sext.w	a5,s2
    800060c4:	0325773b          	remuw	a4,a0,s2
    800060c8:	00048613          	mv	a2,s1
    800060cc:	0014849b          	addiw	s1,s1,1
    800060d0:	02071693          	slli	a3,a4,0x20
    800060d4:	0206d693          	srli	a3,a3,0x20
    800060d8:	00003717          	auipc	a4,0x3
    800060dc:	48070713          	addi	a4,a4,1152 # 80009558 <_ZL6digits>
    800060e0:	00d70733          	add	a4,a4,a3
    800060e4:	00074683          	lbu	a3,0(a4)
    800060e8:	fd040713          	addi	a4,s0,-48
    800060ec:	00c70733          	add	a4,a4,a2
    800060f0:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    800060f4:	0005071b          	sext.w	a4,a0
    800060f8:	0325553b          	divuw	a0,a0,s2
    800060fc:	fcf772e3          	bgeu	a4,a5,800060c0 <_Z12trapPrintIntiii+0x58>
    if (neg)
    80006100:	00058c63          	beqz	a1,80006118 <_Z12trapPrintIntiii+0xb0>
        buf[i++] = '-';
    80006104:	fd040793          	addi	a5,s0,-48
    80006108:	009784b3          	add	s1,a5,s1
    8000610c:	02d00793          	li	a5,45
    80006110:	fef48823          	sb	a5,-16(s1)
    80006114:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80006118:	fff4849b          	addiw	s1,s1,-1
    8000611c:	0204c463          	bltz	s1,80006144 <_Z12trapPrintIntiii+0xdc>
        KConsole::putCharacterOutput(buf[i]);
    80006120:	fd040793          	addi	a5,s0,-48
    80006124:	009787b3          	add	a5,a5,s1
    80006128:	ff07c503          	lbu	a0,-16(a5)
    8000612c:	ffffd097          	auipc	ra,0xffffd
    80006130:	e1c080e7          	jalr	-484(ra) # 80002f48 <_ZN8KConsole18putCharacterOutputEc>
    80006134:	fe5ff06f          	j	80006118 <_Z12trapPrintIntiii+0xb0>
        x = -xx;
    80006138:	4090053b          	negw	a0,s1
        neg = 1;
    8000613c:	00100593          	li	a1,1
        x = -xx;
    80006140:	f7dff06f          	j	800060bc <_Z12trapPrintIntiii+0x54>
    UNLOCK();
    80006144:	00000613          	li	a2,0
    80006148:	00100593          	li	a1,1
    8000614c:	0000a517          	auipc	a0,0xa
    80006150:	b9c50513          	addi	a0,a0,-1124 # 8000fce8 <lockPrint>
    80006154:	ffffb097          	auipc	ra,0xffffb
    80006158:	0c4080e7          	jalr	196(ra) # 80001218 <copy_and_swap>
    8000615c:	fe0514e3          	bnez	a0,80006144 <_Z12trapPrintIntiii+0xdc>
}
    80006160:	03813083          	ld	ra,56(sp)
    80006164:	03013403          	ld	s0,48(sp)
    80006168:	02813483          	ld	s1,40(sp)
    8000616c:	02013903          	ld	s2,32(sp)
    80006170:	01813983          	ld	s3,24(sp)
    80006174:	04010113          	addi	sp,sp,64
    80006178:	00008067          	ret

000000008000617c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    8000617c:	fe010113          	addi	sp,sp,-32
    80006180:	00113c23          	sd	ra,24(sp)
    80006184:	00813823          	sd	s0,16(sp)
    80006188:	00913423          	sd	s1,8(sp)
    8000618c:	01213023          	sd	s2,0(sp)
    80006190:	02010413          	addi	s0,sp,32
    80006194:	00050493          	mv	s1,a0
    80006198:	00b52023          	sw	a1,0(a0)
    8000619c:	00052823          	sw	zero,16(a0)
    800061a0:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800061a4:	00259513          	slli	a0,a1,0x2
    800061a8:	ffffb097          	auipc	ra,0xffffb
    800061ac:	0b0080e7          	jalr	176(ra) # 80001258 <mem_alloc>
    800061b0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800061b4:	01000513          	li	a0,16
    800061b8:	ffffd097          	auipc	ra,0xffffd
    800061bc:	580080e7          	jalr	1408(ra) # 80003738 <_Znwm>
    800061c0:	00050913          	mv	s2,a0
    800061c4:	00000593          	li	a1,0
    800061c8:	ffffd097          	auipc	ra,0xffffd
    800061cc:	7bc080e7          	jalr	1980(ra) # 80003984 <_ZN9SemaphoreC1Ej>
    800061d0:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    800061d4:	01000513          	li	a0,16
    800061d8:	ffffd097          	auipc	ra,0xffffd
    800061dc:	560080e7          	jalr	1376(ra) # 80003738 <_Znwm>
    800061e0:	00050913          	mv	s2,a0
    800061e4:	0004a583          	lw	a1,0(s1)
    800061e8:	ffffd097          	auipc	ra,0xffffd
    800061ec:	79c080e7          	jalr	1948(ra) # 80003984 <_ZN9SemaphoreC1Ej>
    800061f0:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    800061f4:	01000513          	li	a0,16
    800061f8:	ffffd097          	auipc	ra,0xffffd
    800061fc:	540080e7          	jalr	1344(ra) # 80003738 <_Znwm>
    80006200:	00050913          	mv	s2,a0
    80006204:	00100593          	li	a1,1
    80006208:	ffffd097          	auipc	ra,0xffffd
    8000620c:	77c080e7          	jalr	1916(ra) # 80003984 <_ZN9SemaphoreC1Ej>
    80006210:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006214:	01000513          	li	a0,16
    80006218:	ffffd097          	auipc	ra,0xffffd
    8000621c:	520080e7          	jalr	1312(ra) # 80003738 <_Znwm>
    80006220:	00050913          	mv	s2,a0
    80006224:	00100593          	li	a1,1
    80006228:	ffffd097          	auipc	ra,0xffffd
    8000622c:	75c080e7          	jalr	1884(ra) # 80003984 <_ZN9SemaphoreC1Ej>
    80006230:	0324b823          	sd	s2,48(s1)
}
    80006234:	01813083          	ld	ra,24(sp)
    80006238:	01013403          	ld	s0,16(sp)
    8000623c:	00813483          	ld	s1,8(sp)
    80006240:	00013903          	ld	s2,0(sp)
    80006244:	02010113          	addi	sp,sp,32
    80006248:	00008067          	ret
    8000624c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006250:	00090513          	mv	a0,s2
    80006254:	ffffd097          	auipc	ra,0xffffd
    80006258:	50c080e7          	jalr	1292(ra) # 80003760 <_ZdlPv>
    8000625c:	00048513          	mv	a0,s1
    80006260:	0000b097          	auipc	ra,0xb
    80006264:	b68080e7          	jalr	-1176(ra) # 80010dc8 <_Unwind_Resume>
    80006268:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    8000626c:	00090513          	mv	a0,s2
    80006270:	ffffd097          	auipc	ra,0xffffd
    80006274:	4f0080e7          	jalr	1264(ra) # 80003760 <_ZdlPv>
    80006278:	00048513          	mv	a0,s1
    8000627c:	0000b097          	auipc	ra,0xb
    80006280:	b4c080e7          	jalr	-1204(ra) # 80010dc8 <_Unwind_Resume>
    80006284:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006288:	00090513          	mv	a0,s2
    8000628c:	ffffd097          	auipc	ra,0xffffd
    80006290:	4d4080e7          	jalr	1236(ra) # 80003760 <_ZdlPv>
    80006294:	00048513          	mv	a0,s1
    80006298:	0000b097          	auipc	ra,0xb
    8000629c:	b30080e7          	jalr	-1232(ra) # 80010dc8 <_Unwind_Resume>
    800062a0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800062a4:	00090513          	mv	a0,s2
    800062a8:	ffffd097          	auipc	ra,0xffffd
    800062ac:	4b8080e7          	jalr	1208(ra) # 80003760 <_ZdlPv>
    800062b0:	00048513          	mv	a0,s1
    800062b4:	0000b097          	auipc	ra,0xb
    800062b8:	b14080e7          	jalr	-1260(ra) # 80010dc8 <_Unwind_Resume>

00000000800062bc <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    800062bc:	fe010113          	addi	sp,sp,-32
    800062c0:	00113c23          	sd	ra,24(sp)
    800062c4:	00813823          	sd	s0,16(sp)
    800062c8:	00913423          	sd	s1,8(sp)
    800062cc:	02010413          	addi	s0,sp,32
    800062d0:	00050493          	mv	s1,a0
    putc('\n');
    800062d4:	00a00513          	li	a0,10
    800062d8:	ffffb097          	auipc	ra,0xffffb
    800062dc:	260080e7          	jalr	608(ra) # 80001538 <putc>
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    800062e0:	0104a783          	lw	a5,16(s1)
    800062e4:	0144a703          	lw	a4,20(s1)
    800062e8:	00e78c63          	beq	a5,a4,80006300 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800062ec:	0017879b          	addiw	a5,a5,1
    800062f0:	0004a703          	lw	a4,0(s1)
    800062f4:	02e7e7bb          	remw	a5,a5,a4
    800062f8:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800062fc:	fe5ff06f          	j	800062e0 <_ZN9BufferCPPD1Ev+0x24>
    }
    putc('!');
    80006300:	02100513          	li	a0,33
    80006304:	ffffb097          	auipc	ra,0xffffb
    80006308:	234080e7          	jalr	564(ra) # 80001538 <putc>
    putc('\n');
    8000630c:	00a00513          	li	a0,10
    80006310:	ffffb097          	auipc	ra,0xffffb
    80006314:	228080e7          	jalr	552(ra) # 80001538 <putc>

    mem_free(buffer);
    80006318:	0084b503          	ld	a0,8(s1)
    8000631c:	ffffb097          	auipc	ra,0xffffb
    80006320:	f6c080e7          	jalr	-148(ra) # 80001288 <mem_free>
    delete itemAvailable;
    80006324:	0204b503          	ld	a0,32(s1)
    80006328:	00050863          	beqz	a0,80006338 <_ZN9BufferCPPD1Ev+0x7c>
    8000632c:	00053783          	ld	a5,0(a0)
    80006330:	0087b783          	ld	a5,8(a5)
    80006334:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006338:	0184b503          	ld	a0,24(s1)
    8000633c:	00050863          	beqz	a0,8000634c <_ZN9BufferCPPD1Ev+0x90>
    80006340:	00053783          	ld	a5,0(a0)
    80006344:	0087b783          	ld	a5,8(a5)
    80006348:	000780e7          	jalr	a5
    delete mutexTail;
    8000634c:	0304b503          	ld	a0,48(s1)
    80006350:	00050863          	beqz	a0,80006360 <_ZN9BufferCPPD1Ev+0xa4>
    80006354:	00053783          	ld	a5,0(a0)
    80006358:	0087b783          	ld	a5,8(a5)
    8000635c:	000780e7          	jalr	a5
    delete mutexHead;
    80006360:	0284b503          	ld	a0,40(s1)
    80006364:	00050863          	beqz	a0,80006374 <_ZN9BufferCPPD1Ev+0xb8>
    80006368:	00053783          	ld	a5,0(a0)
    8000636c:	0087b783          	ld	a5,8(a5)
    80006370:	000780e7          	jalr	a5

}
    80006374:	01813083          	ld	ra,24(sp)
    80006378:	01013403          	ld	s0,16(sp)
    8000637c:	00813483          	ld	s1,8(sp)
    80006380:	02010113          	addi	sp,sp,32
    80006384:	00008067          	ret

0000000080006388 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80006388:	fe010113          	addi	sp,sp,-32
    8000638c:	00113c23          	sd	ra,24(sp)
    80006390:	00813823          	sd	s0,16(sp)
    80006394:	00913423          	sd	s1,8(sp)
    80006398:	01213023          	sd	s2,0(sp)
    8000639c:	02010413          	addi	s0,sp,32
    800063a0:	00050493          	mv	s1,a0
    800063a4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800063a8:	01853503          	ld	a0,24(a0)
    800063ac:	ffffd097          	auipc	ra,0xffffd
    800063b0:	5a0080e7          	jalr	1440(ra) # 8000394c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800063b4:	0304b503          	ld	a0,48(s1)
    800063b8:	ffffd097          	auipc	ra,0xffffd
    800063bc:	594080e7          	jalr	1428(ra) # 8000394c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800063c0:	0084b783          	ld	a5,8(s1)
    800063c4:	0144a703          	lw	a4,20(s1)
    800063c8:	00271713          	slli	a4,a4,0x2
    800063cc:	00e787b3          	add	a5,a5,a4
    800063d0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800063d4:	0144a783          	lw	a5,20(s1)
    800063d8:	0017879b          	addiw	a5,a5,1
    800063dc:	0004a703          	lw	a4,0(s1)
    800063e0:	02e7e7bb          	remw	a5,a5,a4
    800063e4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800063e8:	0304b503          	ld	a0,48(s1)
    800063ec:	ffffd097          	auipc	ra,0xffffd
    800063f0:	5e4080e7          	jalr	1508(ra) # 800039d0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800063f4:	0204b503          	ld	a0,32(s1)
    800063f8:	ffffd097          	auipc	ra,0xffffd
    800063fc:	5d8080e7          	jalr	1496(ra) # 800039d0 <_ZN9Semaphore6signalEv>

}
    80006400:	01813083          	ld	ra,24(sp)
    80006404:	01013403          	ld	s0,16(sp)
    80006408:	00813483          	ld	s1,8(sp)
    8000640c:	00013903          	ld	s2,0(sp)
    80006410:	02010113          	addi	sp,sp,32
    80006414:	00008067          	ret

0000000080006418 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006418:	fe010113          	addi	sp,sp,-32
    8000641c:	00113c23          	sd	ra,24(sp)
    80006420:	00813823          	sd	s0,16(sp)
    80006424:	00913423          	sd	s1,8(sp)
    80006428:	01213023          	sd	s2,0(sp)
    8000642c:	02010413          	addi	s0,sp,32
    80006430:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006434:	02053503          	ld	a0,32(a0)
    80006438:	ffffd097          	auipc	ra,0xffffd
    8000643c:	514080e7          	jalr	1300(ra) # 8000394c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006440:	0284b503          	ld	a0,40(s1)
    80006444:	ffffd097          	auipc	ra,0xffffd
    80006448:	508080e7          	jalr	1288(ra) # 8000394c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000644c:	0084b703          	ld	a4,8(s1)
    80006450:	0104a783          	lw	a5,16(s1)
    80006454:	00279693          	slli	a3,a5,0x2
    80006458:	00d70733          	add	a4,a4,a3
    8000645c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006460:	0017879b          	addiw	a5,a5,1
    80006464:	0004a703          	lw	a4,0(s1)
    80006468:	02e7e7bb          	remw	a5,a5,a4
    8000646c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006470:	0284b503          	ld	a0,40(s1)
    80006474:	ffffd097          	auipc	ra,0xffffd
    80006478:	55c080e7          	jalr	1372(ra) # 800039d0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000647c:	0184b503          	ld	a0,24(s1)
    80006480:	ffffd097          	auipc	ra,0xffffd
    80006484:	550080e7          	jalr	1360(ra) # 800039d0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006488:	00090513          	mv	a0,s2
    8000648c:	01813083          	ld	ra,24(sp)
    80006490:	01013403          	ld	s0,16(sp)
    80006494:	00813483          	ld	s1,8(sp)
    80006498:	00013903          	ld	s2,0(sp)
    8000649c:	02010113          	addi	sp,sp,32
    800064a0:	00008067          	ret

00000000800064a4 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    800064a4:	ff010113          	addi	sp,sp,-16
    800064a8:	00113423          	sd	ra,8(sp)
    800064ac:	00813023          	sd	s0,0(sp)
    800064b0:	01010413          	addi	s0,sp,16
    //__asm__ volatile("csrr a0, sstatus");
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta
    800064b4:	fffff097          	auipc	ra,0xfffff
    800064b8:	da4080e7          	jalr	-604(ra) # 80005258 <_Z20Threads_CPP_API_testv>
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    800064bc:	00813083          	ld	ra,8(sp)
    800064c0:	00013403          	ld	s0,0(sp)
    800064c4:	01010113          	addi	sp,sp,16
    800064c8:	00008067          	ret

00000000800064cc <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    800064cc:	fe010113          	addi	sp,sp,-32
    800064d0:	00113c23          	sd	ra,24(sp)
    800064d4:	00813823          	sd	s0,16(sp)
    800064d8:	00913423          	sd	s1,8(sp)
    800064dc:	01213023          	sd	s2,0(sp)
    800064e0:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800064e4:	00053903          	ld	s2,0(a0)
    int i = 6;
    800064e8:	00600493          	li	s1,6
    while (--i > 0) {
    800064ec:	fff4849b          	addiw	s1,s1,-1
    800064f0:	04905463          	blez	s1,80006538 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    800064f4:	00003517          	auipc	a0,0x3
    800064f8:	07c50513          	addi	a0,a0,124 # 80009570 <_ZL6digits+0x18>
    800064fc:	00000097          	auipc	ra,0x0
    80006500:	844080e7          	jalr	-1980(ra) # 80005d40 <_Z11printStringPKc>
        printInt(sleep_time);
    80006504:	00000613          	li	a2,0
    80006508:	00a00593          	li	a1,10
    8000650c:	0009051b          	sext.w	a0,s2
    80006510:	00000097          	auipc	ra,0x0
    80006514:	9c8080e7          	jalr	-1592(ra) # 80005ed8 <_Z8printIntiii>
        printString(" !\n");
    80006518:	00003517          	auipc	a0,0x3
    8000651c:	06050513          	addi	a0,a0,96 # 80009578 <_ZL6digits+0x20>
    80006520:	00000097          	auipc	ra,0x0
    80006524:	820080e7          	jalr	-2016(ra) # 80005d40 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006528:	00090513          	mv	a0,s2
    8000652c:	ffffb097          	auipc	ra,0xffffb
    80006530:	f0c080e7          	jalr	-244(ra) # 80001438 <time_sleep>
    while (--i > 0) {
    80006534:	fb9ff06f          	j	800064ec <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006538:	00a00793          	li	a5,10
    8000653c:	02f95933          	divu	s2,s2,a5
    80006540:	fff90913          	addi	s2,s2,-1
    80006544:	00009797          	auipc	a5,0x9
    80006548:	7ac78793          	addi	a5,a5,1964 # 8000fcf0 <finished>
    8000654c:	01278933          	add	s2,a5,s2
    80006550:	00100793          	li	a5,1
    80006554:	00f90023          	sb	a5,0(s2)
}
    80006558:	01813083          	ld	ra,24(sp)
    8000655c:	01013403          	ld	s0,16(sp)
    80006560:	00813483          	ld	s1,8(sp)
    80006564:	00013903          	ld	s2,0(sp)
    80006568:	02010113          	addi	sp,sp,32
    8000656c:	00008067          	ret

0000000080006570 <_Z12testSleepingv>:

void testSleeping()
{
    80006570:	fc010113          	addi	sp,sp,-64
    80006574:	02113c23          	sd	ra,56(sp)
    80006578:	02813823          	sd	s0,48(sp)
    8000657c:	02913423          	sd	s1,40(sp)
    80006580:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006584:	00a00793          	li	a5,10
    80006588:	fcf43823          	sd	a5,-48(s0)
    8000658c:	01400793          	li	a5,20
    80006590:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006594:	00000493          	li	s1,0
    80006598:	02c0006f          	j	800065c4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000659c:	00349793          	slli	a5,s1,0x3
    800065a0:	fd040613          	addi	a2,s0,-48
    800065a4:	00f60633          	add	a2,a2,a5
    800065a8:	00000597          	auipc	a1,0x0
    800065ac:	f2458593          	addi	a1,a1,-220 # 800064cc <_Z9sleepyRunPv>
    800065b0:	fc040513          	addi	a0,s0,-64
    800065b4:	00f50533          	add	a0,a0,a5
    800065b8:	ffffb097          	auipc	ra,0xffffb
    800065bc:	cfc080e7          	jalr	-772(ra) # 800012b4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800065c0:	0014849b          	addiw	s1,s1,1
    800065c4:	00100793          	li	a5,1
    800065c8:	fc97dae3          	bge	a5,s1,8000659c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {
    800065cc:	00009797          	auipc	a5,0x9
    800065d0:	7247c783          	lbu	a5,1828(a5) # 8000fcf0 <finished>
    800065d4:	fe078ce3          	beqz	a5,800065cc <_Z12testSleepingv+0x5c>
    800065d8:	00009797          	auipc	a5,0x9
    800065dc:	7197c783          	lbu	a5,1817(a5) # 8000fcf1 <finished+0x1>
    800065e0:	fe0786e3          	beqz	a5,800065cc <_Z12testSleepingv+0x5c>
        //thread_dispatch();
    }
}
    800065e4:	03813083          	ld	ra,56(sp)
    800065e8:	03013403          	ld	s0,48(sp)
    800065ec:	02813483          	ld	s1,40(sp)
    800065f0:	04010113          	addi	sp,sp,64
    800065f4:	00008067          	ret

00000000800065f8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    800065f8:	fe010113          	addi	sp,sp,-32
    800065fc:	00113c23          	sd	ra,24(sp)
    80006600:	00813823          	sd	s0,16(sp)
    80006604:	00913423          	sd	s1,8(sp)
    80006608:	02010413          	addi	s0,sp,32
    8000660c:	00050493          	mv	s1,a0
    80006610:	00b52023          	sw	a1,0(a0)
    80006614:	00052823          	sw	zero,16(a0)
    80006618:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000661c:	00259513          	slli	a0,a1,0x2
    80006620:	ffffb097          	auipc	ra,0xffffb
    80006624:	c38080e7          	jalr	-968(ra) # 80001258 <mem_alloc>
    80006628:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000662c:	00000593          	li	a1,0
    80006630:	02048513          	addi	a0,s1,32
    80006634:	ffffb097          	auipc	ra,0xffffb
    80006638:	d48080e7          	jalr	-696(ra) # 8000137c <sem_open>
    sem_open(&spaceAvailable, cap);
    8000663c:	0004a583          	lw	a1,0(s1)
    80006640:	01848513          	addi	a0,s1,24
    80006644:	ffffb097          	auipc	ra,0xffffb
    80006648:	d38080e7          	jalr	-712(ra) # 8000137c <sem_open>
    sem_open(&mutexHead, 1);
    8000664c:	00100593          	li	a1,1
    80006650:	02848513          	addi	a0,s1,40
    80006654:	ffffb097          	auipc	ra,0xffffb
    80006658:	d28080e7          	jalr	-728(ra) # 8000137c <sem_open>
    sem_open(&mutexTail, 1);
    8000665c:	00100593          	li	a1,1
    80006660:	03048513          	addi	a0,s1,48
    80006664:	ffffb097          	auipc	ra,0xffffb
    80006668:	d18080e7          	jalr	-744(ra) # 8000137c <sem_open>
}
    8000666c:	01813083          	ld	ra,24(sp)
    80006670:	01013403          	ld	s0,16(sp)
    80006674:	00813483          	ld	s1,8(sp)
    80006678:	02010113          	addi	sp,sp,32
    8000667c:	00008067          	ret

0000000080006680 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    80006680:	fe010113          	addi	sp,sp,-32
    80006684:	00113c23          	sd	ra,24(sp)
    80006688:	00813823          	sd	s0,16(sp)
    8000668c:	00913423          	sd	s1,8(sp)
    80006690:	02010413          	addi	s0,sp,32
    80006694:	00050493          	mv	s1,a0
    putc('\n');
    80006698:	00a00513          	li	a0,10
    8000669c:	ffffb097          	auipc	ra,0xffffb
    800066a0:	e9c080e7          	jalr	-356(ra) # 80001538 <putc>
    //todo
    //placeholder
    printString("Buffer deleted!\n");
    800066a4:	00003517          	auipc	a0,0x3
    800066a8:	edc50513          	addi	a0,a0,-292 # 80009580 <_ZL6digits+0x28>
    800066ac:	fffff097          	auipc	ra,0xfffff
    800066b0:	694080e7          	jalr	1684(ra) # 80005d40 <_Z11printStringPKc>
    while (head != tail) {
    800066b4:	0104a783          	lw	a5,16(s1)
    800066b8:	0144a703          	lw	a4,20(s1)
    800066bc:	00e78c63          	beq	a5,a4,800066d4 <_ZN6BufferD1Ev+0x54>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800066c0:	0017879b          	addiw	a5,a5,1
    800066c4:	0004a703          	lw	a4,0(s1)
    800066c8:	02e7e7bb          	remw	a5,a5,a4
    800066cc:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800066d0:	fe5ff06f          	j	800066b4 <_ZN6BufferD1Ev+0x34>
    }
    putc('!');
    800066d4:	02100513          	li	a0,33
    800066d8:	ffffb097          	auipc	ra,0xffffb
    800066dc:	e60080e7          	jalr	-416(ra) # 80001538 <putc>
    putc('\n');
    800066e0:	00a00513          	li	a0,10
    800066e4:	ffffb097          	auipc	ra,0xffffb
    800066e8:	e54080e7          	jalr	-428(ra) # 80001538 <putc>

    mem_free(buffer);
    800066ec:	0084b503          	ld	a0,8(s1)
    800066f0:	ffffb097          	auipc	ra,0xffffb
    800066f4:	b98080e7          	jalr	-1128(ra) # 80001288 <mem_free>
    sem_close(itemAvailable);
    800066f8:	0204b503          	ld	a0,32(s1)
    800066fc:	ffffb097          	auipc	ra,0xffffb
    80006700:	cb8080e7          	jalr	-840(ra) # 800013b4 <sem_close>
    sem_close(spaceAvailable);
    80006704:	0184b503          	ld	a0,24(s1)
    80006708:	ffffb097          	auipc	ra,0xffffb
    8000670c:	cac080e7          	jalr	-852(ra) # 800013b4 <sem_close>
    sem_close(mutexTail);
    80006710:	0304b503          	ld	a0,48(s1)
    80006714:	ffffb097          	auipc	ra,0xffffb
    80006718:	ca0080e7          	jalr	-864(ra) # 800013b4 <sem_close>
    sem_close(mutexHead);
    8000671c:	0284b503          	ld	a0,40(s1)
    80006720:	ffffb097          	auipc	ra,0xffffb
    80006724:	c94080e7          	jalr	-876(ra) # 800013b4 <sem_close>
}
    80006728:	01813083          	ld	ra,24(sp)
    8000672c:	01013403          	ld	s0,16(sp)
    80006730:	00813483          	ld	s1,8(sp)
    80006734:	02010113          	addi	sp,sp,32
    80006738:	00008067          	ret

000000008000673c <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    8000673c:	fe010113          	addi	sp,sp,-32
    80006740:	00113c23          	sd	ra,24(sp)
    80006744:	00813823          	sd	s0,16(sp)
    80006748:	00913423          	sd	s1,8(sp)
    8000674c:	01213023          	sd	s2,0(sp)
    80006750:	02010413          	addi	s0,sp,32
    80006754:	00050493          	mv	s1,a0
    80006758:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000675c:	01853503          	ld	a0,24(a0)
    80006760:	ffffb097          	auipc	ra,0xffffb
    80006764:	c80080e7          	jalr	-896(ra) # 800013e0 <sem_wait>

    sem_wait(mutexTail);
    80006768:	0304b503          	ld	a0,48(s1)
    8000676c:	ffffb097          	auipc	ra,0xffffb
    80006770:	c74080e7          	jalr	-908(ra) # 800013e0 <sem_wait>
    buffer[tail] = val;
    80006774:	0084b783          	ld	a5,8(s1)
    80006778:	0144a703          	lw	a4,20(s1)
    8000677c:	00271713          	slli	a4,a4,0x2
    80006780:	00e787b3          	add	a5,a5,a4
    80006784:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006788:	0144a783          	lw	a5,20(s1)
    8000678c:	0017879b          	addiw	a5,a5,1
    80006790:	0004a703          	lw	a4,0(s1)
    80006794:	02e7e7bb          	remw	a5,a5,a4
    80006798:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000679c:	0304b503          	ld	a0,48(s1)
    800067a0:	ffffb097          	auipc	ra,0xffffb
    800067a4:	c6c080e7          	jalr	-916(ra) # 8000140c <sem_signal>

    sem_signal(itemAvailable);
    800067a8:	0204b503          	ld	a0,32(s1)
    800067ac:	ffffb097          	auipc	ra,0xffffb
    800067b0:	c60080e7          	jalr	-928(ra) # 8000140c <sem_signal>

}
    800067b4:	01813083          	ld	ra,24(sp)
    800067b8:	01013403          	ld	s0,16(sp)
    800067bc:	00813483          	ld	s1,8(sp)
    800067c0:	00013903          	ld	s2,0(sp)
    800067c4:	02010113          	addi	sp,sp,32
    800067c8:	00008067          	ret

00000000800067cc <_ZN6Buffer3getEv>:

int Buffer::get() {
    800067cc:	fe010113          	addi	sp,sp,-32
    800067d0:	00113c23          	sd	ra,24(sp)
    800067d4:	00813823          	sd	s0,16(sp)
    800067d8:	00913423          	sd	s1,8(sp)
    800067dc:	01213023          	sd	s2,0(sp)
    800067e0:	02010413          	addi	s0,sp,32
    800067e4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800067e8:	02053503          	ld	a0,32(a0)
    800067ec:	ffffb097          	auipc	ra,0xffffb
    800067f0:	bf4080e7          	jalr	-1036(ra) # 800013e0 <sem_wait>

    sem_wait(mutexHead);
    800067f4:	0284b503          	ld	a0,40(s1)
    800067f8:	ffffb097          	auipc	ra,0xffffb
    800067fc:	be8080e7          	jalr	-1048(ra) # 800013e0 <sem_wait>

    int ret = buffer[head];
    80006800:	0084b703          	ld	a4,8(s1)
    80006804:	0104a783          	lw	a5,16(s1)
    80006808:	00279693          	slli	a3,a5,0x2
    8000680c:	00d70733          	add	a4,a4,a3
    80006810:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006814:	0017879b          	addiw	a5,a5,1
    80006818:	0004a703          	lw	a4,0(s1)
    8000681c:	02e7e7bb          	remw	a5,a5,a4
    80006820:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006824:	0284b503          	ld	a0,40(s1)
    80006828:	ffffb097          	auipc	ra,0xffffb
    8000682c:	be4080e7          	jalr	-1052(ra) # 8000140c <sem_signal>

    sem_signal(spaceAvailable);
    80006830:	0184b503          	ld	a0,24(s1)
    80006834:	ffffb097          	auipc	ra,0xffffb
    80006838:	bd8080e7          	jalr	-1064(ra) # 8000140c <sem_signal>

    return ret;
}
    8000683c:	00090513          	mv	a0,s2
    80006840:	01813083          	ld	ra,24(sp)
    80006844:	01013403          	ld	s0,16(sp)
    80006848:	00813483          	ld	s1,8(sp)
    8000684c:	00013903          	ld	s2,0(sp)
    80006850:	02010113          	addi	sp,sp,32
    80006854:	00008067          	ret

0000000080006858 <start>:
    80006858:	ff010113          	addi	sp,sp,-16
    8000685c:	00813423          	sd	s0,8(sp)
    80006860:	01010413          	addi	s0,sp,16
    80006864:	300027f3          	csrr	a5,mstatus
    80006868:	ffffe737          	lui	a4,0xffffe
    8000686c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffed89f>
    80006870:	00e7f7b3          	and	a5,a5,a4
    80006874:	00001737          	lui	a4,0x1
    80006878:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000687c:	00e7e7b3          	or	a5,a5,a4
    80006880:	30079073          	csrw	mstatus,a5
    80006884:	00000797          	auipc	a5,0x0
    80006888:	16078793          	addi	a5,a5,352 # 800069e4 <system_main>
    8000688c:	34179073          	csrw	mepc,a5
    80006890:	00000793          	li	a5,0
    80006894:	18079073          	csrw	satp,a5
    80006898:	000107b7          	lui	a5,0x10
    8000689c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800068a0:	30279073          	csrw	medeleg,a5
    800068a4:	30379073          	csrw	mideleg,a5
    800068a8:	104027f3          	csrr	a5,sie
    800068ac:	2227e793          	ori	a5,a5,546
    800068b0:	10479073          	csrw	sie,a5
    800068b4:	fff00793          	li	a5,-1
    800068b8:	00a7d793          	srli	a5,a5,0xa
    800068bc:	3b079073          	csrw	pmpaddr0,a5
    800068c0:	00f00793          	li	a5,15
    800068c4:	3a079073          	csrw	pmpcfg0,a5
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
    800068fc:	00009717          	auipc	a4,0x9
    80006900:	40470713          	addi	a4,a4,1028 # 8000fd00 <timer_scratch>
    80006904:	00b7b023          	sd	a1,0(a5)
    80006908:	00d70733          	add	a4,a4,a3
    8000690c:	00f73c23          	sd	a5,24(a4)
    80006910:	02c73023          	sd	a2,32(a4)
    80006914:	34071073          	csrw	mscratch,a4
    80006918:	00000797          	auipc	a5,0x0
    8000691c:	6e878793          	addi	a5,a5,1768 # 80007000 <timervec>
    80006920:	30579073          	csrw	mtvec,a5
    80006924:	300027f3          	csrr	a5,mstatus
    80006928:	0087e793          	ori	a5,a5,8
    8000692c:	30079073          	csrw	mstatus,a5
    80006930:	304027f3          	csrr	a5,mie
    80006934:	0807e793          	ori	a5,a5,128
    80006938:	30479073          	csrw	mie,a5
    8000693c:	f14027f3          	csrr	a5,mhartid
    80006940:	0007879b          	sext.w	a5,a5
    80006944:	00078213          	mv	tp,a5
    80006948:	30200073          	mret
    8000694c:	00813403          	ld	s0,8(sp)
    80006950:	01010113          	addi	sp,sp,16
    80006954:	00008067          	ret

0000000080006958 <timerinit>:
    80006958:	ff010113          	addi	sp,sp,-16
    8000695c:	00813423          	sd	s0,8(sp)
    80006960:	01010413          	addi	s0,sp,16
    80006964:	f14027f3          	csrr	a5,mhartid
    80006968:	0200c737          	lui	a4,0x200c
    8000696c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006970:	0007869b          	sext.w	a3,a5
    80006974:	00269713          	slli	a4,a3,0x2
    80006978:	000f4637          	lui	a2,0xf4
    8000697c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006980:	00d70733          	add	a4,a4,a3
    80006984:	0037979b          	slliw	a5,a5,0x3
    80006988:	020046b7          	lui	a3,0x2004
    8000698c:	00d787b3          	add	a5,a5,a3
    80006990:	00c585b3          	add	a1,a1,a2
    80006994:	00371693          	slli	a3,a4,0x3
    80006998:	00009717          	auipc	a4,0x9
    8000699c:	36870713          	addi	a4,a4,872 # 8000fd00 <timer_scratch>
    800069a0:	00b7b023          	sd	a1,0(a5)
    800069a4:	00d70733          	add	a4,a4,a3
    800069a8:	00f73c23          	sd	a5,24(a4)
    800069ac:	02c73023          	sd	a2,32(a4)
    800069b0:	34071073          	csrw	mscratch,a4
    800069b4:	00000797          	auipc	a5,0x0
    800069b8:	64c78793          	addi	a5,a5,1612 # 80007000 <timervec>
    800069bc:	30579073          	csrw	mtvec,a5
    800069c0:	300027f3          	csrr	a5,mstatus
    800069c4:	0087e793          	ori	a5,a5,8
    800069c8:	30079073          	csrw	mstatus,a5
    800069cc:	304027f3          	csrr	a5,mie
    800069d0:	0807e793          	ori	a5,a5,128
    800069d4:	30479073          	csrw	mie,a5
    800069d8:	00813403          	ld	s0,8(sp)
    800069dc:	01010113          	addi	sp,sp,16
    800069e0:	00008067          	ret

00000000800069e4 <system_main>:
    800069e4:	fe010113          	addi	sp,sp,-32
    800069e8:	00813823          	sd	s0,16(sp)
    800069ec:	00913423          	sd	s1,8(sp)
    800069f0:	00113c23          	sd	ra,24(sp)
    800069f4:	02010413          	addi	s0,sp,32
    800069f8:	00000097          	auipc	ra,0x0
    800069fc:	0c4080e7          	jalr	196(ra) # 80006abc <cpuid>
    80006a00:	00005497          	auipc	s1,0x5
    80006a04:	1d048493          	addi	s1,s1,464 # 8000bbd0 <started>
    80006a08:	02050263          	beqz	a0,80006a2c <system_main+0x48>
    80006a0c:	0004a783          	lw	a5,0(s1)
    80006a10:	0007879b          	sext.w	a5,a5
    80006a14:	fe078ce3          	beqz	a5,80006a0c <system_main+0x28>
    80006a18:	0ff0000f          	fence
    80006a1c:	00003517          	auipc	a0,0x3
    80006a20:	bac50513          	addi	a0,a0,-1108 # 800095c8 <_ZL6digits+0x70>
    80006a24:	00001097          	auipc	ra,0x1
    80006a28:	a78080e7          	jalr	-1416(ra) # 8000749c <panic>
    80006a2c:	00001097          	auipc	ra,0x1
    80006a30:	9cc080e7          	jalr	-1588(ra) # 800073f8 <consoleinit>
    80006a34:	00001097          	auipc	ra,0x1
    80006a38:	158080e7          	jalr	344(ra) # 80007b8c <printfinit>
    80006a3c:	00002517          	auipc	a0,0x2
    80006a40:	6c450513          	addi	a0,a0,1732 # 80009100 <CONSOLE_STATUS+0xf0>
    80006a44:	00001097          	auipc	ra,0x1
    80006a48:	ab4080e7          	jalr	-1356(ra) # 800074f8 <__printf>
    80006a4c:	00003517          	auipc	a0,0x3
    80006a50:	b4c50513          	addi	a0,a0,-1204 # 80009598 <_ZL6digits+0x40>
    80006a54:	00001097          	auipc	ra,0x1
    80006a58:	aa4080e7          	jalr	-1372(ra) # 800074f8 <__printf>
    80006a5c:	00002517          	auipc	a0,0x2
    80006a60:	6a450513          	addi	a0,a0,1700 # 80009100 <CONSOLE_STATUS+0xf0>
    80006a64:	00001097          	auipc	ra,0x1
    80006a68:	a94080e7          	jalr	-1388(ra) # 800074f8 <__printf>
    80006a6c:	00001097          	auipc	ra,0x1
    80006a70:	4ac080e7          	jalr	1196(ra) # 80007f18 <kinit>
    80006a74:	00000097          	auipc	ra,0x0
    80006a78:	148080e7          	jalr	328(ra) # 80006bbc <trapinit>
    80006a7c:	00000097          	auipc	ra,0x0
    80006a80:	16c080e7          	jalr	364(ra) # 80006be8 <trapinithart>
    80006a84:	00000097          	auipc	ra,0x0
    80006a88:	5bc080e7          	jalr	1468(ra) # 80007040 <plicinit>
    80006a8c:	00000097          	auipc	ra,0x0
    80006a90:	5dc080e7          	jalr	1500(ra) # 80007068 <plicinithart>
    80006a94:	00000097          	auipc	ra,0x0
    80006a98:	078080e7          	jalr	120(ra) # 80006b0c <userinit>
    80006a9c:	0ff0000f          	fence
    80006aa0:	00100793          	li	a5,1
    80006aa4:	00003517          	auipc	a0,0x3
    80006aa8:	b0c50513          	addi	a0,a0,-1268 # 800095b0 <_ZL6digits+0x58>
    80006aac:	00f4a023          	sw	a5,0(s1)
    80006ab0:	00001097          	auipc	ra,0x1
    80006ab4:	a48080e7          	jalr	-1464(ra) # 800074f8 <__printf>
    80006ab8:	0000006f          	j	80006ab8 <system_main+0xd4>

0000000080006abc <cpuid>:
    80006abc:	ff010113          	addi	sp,sp,-16
    80006ac0:	00813423          	sd	s0,8(sp)
    80006ac4:	01010413          	addi	s0,sp,16
    80006ac8:	00020513          	mv	a0,tp
    80006acc:	00813403          	ld	s0,8(sp)
    80006ad0:	0005051b          	sext.w	a0,a0
    80006ad4:	01010113          	addi	sp,sp,16
    80006ad8:	00008067          	ret

0000000080006adc <mycpu>:
    80006adc:	ff010113          	addi	sp,sp,-16
    80006ae0:	00813423          	sd	s0,8(sp)
    80006ae4:	01010413          	addi	s0,sp,16
    80006ae8:	00020793          	mv	a5,tp
    80006aec:	00813403          	ld	s0,8(sp)
    80006af0:	0007879b          	sext.w	a5,a5
    80006af4:	00779793          	slli	a5,a5,0x7
    80006af8:	0000a517          	auipc	a0,0xa
    80006afc:	23850513          	addi	a0,a0,568 # 80010d30 <cpus>
    80006b00:	00f50533          	add	a0,a0,a5
    80006b04:	01010113          	addi	sp,sp,16
    80006b08:	00008067          	ret

0000000080006b0c <userinit>:
    80006b0c:	ff010113          	addi	sp,sp,-16
    80006b10:	00813423          	sd	s0,8(sp)
    80006b14:	01010413          	addi	s0,sp,16
    80006b18:	00813403          	ld	s0,8(sp)
    80006b1c:	01010113          	addi	sp,sp,16
    80006b20:	ffffd317          	auipc	t1,0xffffd
    80006b24:	b5430067          	jr	-1196(t1) # 80003674 <main>

0000000080006b28 <either_copyout>:
    80006b28:	ff010113          	addi	sp,sp,-16
    80006b2c:	00813023          	sd	s0,0(sp)
    80006b30:	00113423          	sd	ra,8(sp)
    80006b34:	01010413          	addi	s0,sp,16
    80006b38:	02051663          	bnez	a0,80006b64 <either_copyout+0x3c>
    80006b3c:	00058513          	mv	a0,a1
    80006b40:	00060593          	mv	a1,a2
    80006b44:	0006861b          	sext.w	a2,a3
    80006b48:	00002097          	auipc	ra,0x2
    80006b4c:	c5c080e7          	jalr	-932(ra) # 800087a4 <__memmove>
    80006b50:	00813083          	ld	ra,8(sp)
    80006b54:	00013403          	ld	s0,0(sp)
    80006b58:	00000513          	li	a0,0
    80006b5c:	01010113          	addi	sp,sp,16
    80006b60:	00008067          	ret
    80006b64:	00003517          	auipc	a0,0x3
    80006b68:	a8c50513          	addi	a0,a0,-1396 # 800095f0 <_ZL6digits+0x98>
    80006b6c:	00001097          	auipc	ra,0x1
    80006b70:	930080e7          	jalr	-1744(ra) # 8000749c <panic>

0000000080006b74 <either_copyin>:
    80006b74:	ff010113          	addi	sp,sp,-16
    80006b78:	00813023          	sd	s0,0(sp)
    80006b7c:	00113423          	sd	ra,8(sp)
    80006b80:	01010413          	addi	s0,sp,16
    80006b84:	02059463          	bnez	a1,80006bac <either_copyin+0x38>
    80006b88:	00060593          	mv	a1,a2
    80006b8c:	0006861b          	sext.w	a2,a3
    80006b90:	00002097          	auipc	ra,0x2
    80006b94:	c14080e7          	jalr	-1004(ra) # 800087a4 <__memmove>
    80006b98:	00813083          	ld	ra,8(sp)
    80006b9c:	00013403          	ld	s0,0(sp)
    80006ba0:	00000513          	li	a0,0
    80006ba4:	01010113          	addi	sp,sp,16
    80006ba8:	00008067          	ret
    80006bac:	00003517          	auipc	a0,0x3
    80006bb0:	a6c50513          	addi	a0,a0,-1428 # 80009618 <_ZL6digits+0xc0>
    80006bb4:	00001097          	auipc	ra,0x1
    80006bb8:	8e8080e7          	jalr	-1816(ra) # 8000749c <panic>

0000000080006bbc <trapinit>:
    80006bbc:	ff010113          	addi	sp,sp,-16
    80006bc0:	00813423          	sd	s0,8(sp)
    80006bc4:	01010413          	addi	s0,sp,16
    80006bc8:	00813403          	ld	s0,8(sp)
    80006bcc:	00003597          	auipc	a1,0x3
    80006bd0:	a7458593          	addi	a1,a1,-1420 # 80009640 <_ZL6digits+0xe8>
    80006bd4:	0000a517          	auipc	a0,0xa
    80006bd8:	1dc50513          	addi	a0,a0,476 # 80010db0 <tickslock>
    80006bdc:	01010113          	addi	sp,sp,16
    80006be0:	00001317          	auipc	t1,0x1
    80006be4:	5c830067          	jr	1480(t1) # 800081a8 <initlock>

0000000080006be8 <trapinithart>:
    80006be8:	ff010113          	addi	sp,sp,-16
    80006bec:	00813423          	sd	s0,8(sp)
    80006bf0:	01010413          	addi	s0,sp,16
    80006bf4:	00000797          	auipc	a5,0x0
    80006bf8:	2fc78793          	addi	a5,a5,764 # 80006ef0 <kernelvec>
    80006bfc:	10579073          	csrw	stvec,a5
    80006c00:	00813403          	ld	s0,8(sp)
    80006c04:	01010113          	addi	sp,sp,16
    80006c08:	00008067          	ret

0000000080006c0c <usertrap>:
    80006c0c:	ff010113          	addi	sp,sp,-16
    80006c10:	00813423          	sd	s0,8(sp)
    80006c14:	01010413          	addi	s0,sp,16
    80006c18:	00813403          	ld	s0,8(sp)
    80006c1c:	01010113          	addi	sp,sp,16
    80006c20:	00008067          	ret

0000000080006c24 <usertrapret>:
    80006c24:	ff010113          	addi	sp,sp,-16
    80006c28:	00813423          	sd	s0,8(sp)
    80006c2c:	01010413          	addi	s0,sp,16
    80006c30:	00813403          	ld	s0,8(sp)
    80006c34:	01010113          	addi	sp,sp,16
    80006c38:	00008067          	ret

0000000080006c3c <kerneltrap>:
    80006c3c:	fe010113          	addi	sp,sp,-32
    80006c40:	00813823          	sd	s0,16(sp)
    80006c44:	00113c23          	sd	ra,24(sp)
    80006c48:	00913423          	sd	s1,8(sp)
    80006c4c:	02010413          	addi	s0,sp,32
    80006c50:	142025f3          	csrr	a1,scause
    80006c54:	100027f3          	csrr	a5,sstatus
    80006c58:	0027f793          	andi	a5,a5,2
    80006c5c:	10079c63          	bnez	a5,80006d74 <kerneltrap+0x138>
    80006c60:	142027f3          	csrr	a5,scause
    80006c64:	0207ce63          	bltz	a5,80006ca0 <kerneltrap+0x64>
    80006c68:	00003517          	auipc	a0,0x3
    80006c6c:	a2050513          	addi	a0,a0,-1504 # 80009688 <_ZL6digits+0x130>
    80006c70:	00001097          	auipc	ra,0x1
    80006c74:	888080e7          	jalr	-1912(ra) # 800074f8 <__printf>
    80006c78:	141025f3          	csrr	a1,sepc
    80006c7c:	14302673          	csrr	a2,stval
    80006c80:	00003517          	auipc	a0,0x3
    80006c84:	a1850513          	addi	a0,a0,-1512 # 80009698 <_ZL6digits+0x140>
    80006c88:	00001097          	auipc	ra,0x1
    80006c8c:	870080e7          	jalr	-1936(ra) # 800074f8 <__printf>
    80006c90:	00003517          	auipc	a0,0x3
    80006c94:	a2050513          	addi	a0,a0,-1504 # 800096b0 <_ZL6digits+0x158>
    80006c98:	00001097          	auipc	ra,0x1
    80006c9c:	804080e7          	jalr	-2044(ra) # 8000749c <panic>
    80006ca0:	0ff7f713          	andi	a4,a5,255
    80006ca4:	00900693          	li	a3,9
    80006ca8:	04d70063          	beq	a4,a3,80006ce8 <kerneltrap+0xac>
    80006cac:	fff00713          	li	a4,-1
    80006cb0:	03f71713          	slli	a4,a4,0x3f
    80006cb4:	00170713          	addi	a4,a4,1
    80006cb8:	fae798e3          	bne	a5,a4,80006c68 <kerneltrap+0x2c>
    80006cbc:	00000097          	auipc	ra,0x0
    80006cc0:	e00080e7          	jalr	-512(ra) # 80006abc <cpuid>
    80006cc4:	06050663          	beqz	a0,80006d30 <kerneltrap+0xf4>
    80006cc8:	144027f3          	csrr	a5,sip
    80006ccc:	ffd7f793          	andi	a5,a5,-3
    80006cd0:	14479073          	csrw	sip,a5
    80006cd4:	01813083          	ld	ra,24(sp)
    80006cd8:	01013403          	ld	s0,16(sp)
    80006cdc:	00813483          	ld	s1,8(sp)
    80006ce0:	02010113          	addi	sp,sp,32
    80006ce4:	00008067          	ret
    80006ce8:	00000097          	auipc	ra,0x0
    80006cec:	3cc080e7          	jalr	972(ra) # 800070b4 <plic_claim>
    80006cf0:	00a00793          	li	a5,10
    80006cf4:	00050493          	mv	s1,a0
    80006cf8:	06f50863          	beq	a0,a5,80006d68 <kerneltrap+0x12c>
    80006cfc:	fc050ce3          	beqz	a0,80006cd4 <kerneltrap+0x98>
    80006d00:	00050593          	mv	a1,a0
    80006d04:	00003517          	auipc	a0,0x3
    80006d08:	96450513          	addi	a0,a0,-1692 # 80009668 <_ZL6digits+0x110>
    80006d0c:	00000097          	auipc	ra,0x0
    80006d10:	7ec080e7          	jalr	2028(ra) # 800074f8 <__printf>
    80006d14:	01013403          	ld	s0,16(sp)
    80006d18:	01813083          	ld	ra,24(sp)
    80006d1c:	00048513          	mv	a0,s1
    80006d20:	00813483          	ld	s1,8(sp)
    80006d24:	02010113          	addi	sp,sp,32
    80006d28:	00000317          	auipc	t1,0x0
    80006d2c:	3c430067          	jr	964(t1) # 800070ec <plic_complete>
    80006d30:	0000a517          	auipc	a0,0xa
    80006d34:	08050513          	addi	a0,a0,128 # 80010db0 <tickslock>
    80006d38:	00001097          	auipc	ra,0x1
    80006d3c:	494080e7          	jalr	1172(ra) # 800081cc <acquire>
    80006d40:	00005717          	auipc	a4,0x5
    80006d44:	e9470713          	addi	a4,a4,-364 # 8000bbd4 <ticks>
    80006d48:	00072783          	lw	a5,0(a4)
    80006d4c:	0000a517          	auipc	a0,0xa
    80006d50:	06450513          	addi	a0,a0,100 # 80010db0 <tickslock>
    80006d54:	0017879b          	addiw	a5,a5,1
    80006d58:	00f72023          	sw	a5,0(a4)
    80006d5c:	00001097          	auipc	ra,0x1
    80006d60:	53c080e7          	jalr	1340(ra) # 80008298 <release>
    80006d64:	f65ff06f          	j	80006cc8 <kerneltrap+0x8c>
    80006d68:	00001097          	auipc	ra,0x1
    80006d6c:	098080e7          	jalr	152(ra) # 80007e00 <uartintr>
    80006d70:	fa5ff06f          	j	80006d14 <kerneltrap+0xd8>
    80006d74:	00003517          	auipc	a0,0x3
    80006d78:	8d450513          	addi	a0,a0,-1836 # 80009648 <_ZL6digits+0xf0>
    80006d7c:	00000097          	auipc	ra,0x0
    80006d80:	720080e7          	jalr	1824(ra) # 8000749c <panic>

0000000080006d84 <clockintr>:
    80006d84:	fe010113          	addi	sp,sp,-32
    80006d88:	00813823          	sd	s0,16(sp)
    80006d8c:	00913423          	sd	s1,8(sp)
    80006d90:	00113c23          	sd	ra,24(sp)
    80006d94:	02010413          	addi	s0,sp,32
    80006d98:	0000a497          	auipc	s1,0xa
    80006d9c:	01848493          	addi	s1,s1,24 # 80010db0 <tickslock>
    80006da0:	00048513          	mv	a0,s1
    80006da4:	00001097          	auipc	ra,0x1
    80006da8:	428080e7          	jalr	1064(ra) # 800081cc <acquire>
    80006dac:	00005717          	auipc	a4,0x5
    80006db0:	e2870713          	addi	a4,a4,-472 # 8000bbd4 <ticks>
    80006db4:	00072783          	lw	a5,0(a4)
    80006db8:	01013403          	ld	s0,16(sp)
    80006dbc:	01813083          	ld	ra,24(sp)
    80006dc0:	00048513          	mv	a0,s1
    80006dc4:	0017879b          	addiw	a5,a5,1
    80006dc8:	00813483          	ld	s1,8(sp)
    80006dcc:	00f72023          	sw	a5,0(a4)
    80006dd0:	02010113          	addi	sp,sp,32
    80006dd4:	00001317          	auipc	t1,0x1
    80006dd8:	4c430067          	jr	1220(t1) # 80008298 <release>

0000000080006ddc <devintr>:
    80006ddc:	142027f3          	csrr	a5,scause
    80006de0:	00000513          	li	a0,0
    80006de4:	0007c463          	bltz	a5,80006dec <devintr+0x10>
    80006de8:	00008067          	ret
    80006dec:	fe010113          	addi	sp,sp,-32
    80006df0:	00813823          	sd	s0,16(sp)
    80006df4:	00113c23          	sd	ra,24(sp)
    80006df8:	00913423          	sd	s1,8(sp)
    80006dfc:	02010413          	addi	s0,sp,32
    80006e00:	0ff7f713          	andi	a4,a5,255
    80006e04:	00900693          	li	a3,9
    80006e08:	04d70c63          	beq	a4,a3,80006e60 <devintr+0x84>
    80006e0c:	fff00713          	li	a4,-1
    80006e10:	03f71713          	slli	a4,a4,0x3f
    80006e14:	00170713          	addi	a4,a4,1
    80006e18:	00e78c63          	beq	a5,a4,80006e30 <devintr+0x54>
    80006e1c:	01813083          	ld	ra,24(sp)
    80006e20:	01013403          	ld	s0,16(sp)
    80006e24:	00813483          	ld	s1,8(sp)
    80006e28:	02010113          	addi	sp,sp,32
    80006e2c:	00008067          	ret
    80006e30:	00000097          	auipc	ra,0x0
    80006e34:	c8c080e7          	jalr	-884(ra) # 80006abc <cpuid>
    80006e38:	06050663          	beqz	a0,80006ea4 <devintr+0xc8>
    80006e3c:	144027f3          	csrr	a5,sip
    80006e40:	ffd7f793          	andi	a5,a5,-3
    80006e44:	14479073          	csrw	sip,a5
    80006e48:	01813083          	ld	ra,24(sp)
    80006e4c:	01013403          	ld	s0,16(sp)
    80006e50:	00813483          	ld	s1,8(sp)
    80006e54:	00200513          	li	a0,2
    80006e58:	02010113          	addi	sp,sp,32
    80006e5c:	00008067          	ret
    80006e60:	00000097          	auipc	ra,0x0
    80006e64:	254080e7          	jalr	596(ra) # 800070b4 <plic_claim>
    80006e68:	00a00793          	li	a5,10
    80006e6c:	00050493          	mv	s1,a0
    80006e70:	06f50663          	beq	a0,a5,80006edc <devintr+0x100>
    80006e74:	00100513          	li	a0,1
    80006e78:	fa0482e3          	beqz	s1,80006e1c <devintr+0x40>
    80006e7c:	00048593          	mv	a1,s1
    80006e80:	00002517          	auipc	a0,0x2
    80006e84:	7e850513          	addi	a0,a0,2024 # 80009668 <_ZL6digits+0x110>
    80006e88:	00000097          	auipc	ra,0x0
    80006e8c:	670080e7          	jalr	1648(ra) # 800074f8 <__printf>
    80006e90:	00048513          	mv	a0,s1
    80006e94:	00000097          	auipc	ra,0x0
    80006e98:	258080e7          	jalr	600(ra) # 800070ec <plic_complete>
    80006e9c:	00100513          	li	a0,1
    80006ea0:	f7dff06f          	j	80006e1c <devintr+0x40>
    80006ea4:	0000a517          	auipc	a0,0xa
    80006ea8:	f0c50513          	addi	a0,a0,-244 # 80010db0 <tickslock>
    80006eac:	00001097          	auipc	ra,0x1
    80006eb0:	320080e7          	jalr	800(ra) # 800081cc <acquire>
    80006eb4:	00005717          	auipc	a4,0x5
    80006eb8:	d2070713          	addi	a4,a4,-736 # 8000bbd4 <ticks>
    80006ebc:	00072783          	lw	a5,0(a4)
    80006ec0:	0000a517          	auipc	a0,0xa
    80006ec4:	ef050513          	addi	a0,a0,-272 # 80010db0 <tickslock>
    80006ec8:	0017879b          	addiw	a5,a5,1
    80006ecc:	00f72023          	sw	a5,0(a4)
    80006ed0:	00001097          	auipc	ra,0x1
    80006ed4:	3c8080e7          	jalr	968(ra) # 80008298 <release>
    80006ed8:	f65ff06f          	j	80006e3c <devintr+0x60>
    80006edc:	00001097          	auipc	ra,0x1
    80006ee0:	f24080e7          	jalr	-220(ra) # 80007e00 <uartintr>
    80006ee4:	fadff06f          	j	80006e90 <devintr+0xb4>
	...

0000000080006ef0 <kernelvec>:
    80006ef0:	f0010113          	addi	sp,sp,-256
    80006ef4:	00113023          	sd	ra,0(sp)
    80006ef8:	00213423          	sd	sp,8(sp)
    80006efc:	00313823          	sd	gp,16(sp)
    80006f00:	00413c23          	sd	tp,24(sp)
    80006f04:	02513023          	sd	t0,32(sp)
    80006f08:	02613423          	sd	t1,40(sp)
    80006f0c:	02713823          	sd	t2,48(sp)
    80006f10:	02813c23          	sd	s0,56(sp)
    80006f14:	04913023          	sd	s1,64(sp)
    80006f18:	04a13423          	sd	a0,72(sp)
    80006f1c:	04b13823          	sd	a1,80(sp)
    80006f20:	04c13c23          	sd	a2,88(sp)
    80006f24:	06d13023          	sd	a3,96(sp)
    80006f28:	06e13423          	sd	a4,104(sp)
    80006f2c:	06f13823          	sd	a5,112(sp)
    80006f30:	07013c23          	sd	a6,120(sp)
    80006f34:	09113023          	sd	a7,128(sp)
    80006f38:	09213423          	sd	s2,136(sp)
    80006f3c:	09313823          	sd	s3,144(sp)
    80006f40:	09413c23          	sd	s4,152(sp)
    80006f44:	0b513023          	sd	s5,160(sp)
    80006f48:	0b613423          	sd	s6,168(sp)
    80006f4c:	0b713823          	sd	s7,176(sp)
    80006f50:	0b813c23          	sd	s8,184(sp)
    80006f54:	0d913023          	sd	s9,192(sp)
    80006f58:	0da13423          	sd	s10,200(sp)
    80006f5c:	0db13823          	sd	s11,208(sp)
    80006f60:	0dc13c23          	sd	t3,216(sp)
    80006f64:	0fd13023          	sd	t4,224(sp)
    80006f68:	0fe13423          	sd	t5,232(sp)
    80006f6c:	0ff13823          	sd	t6,240(sp)
    80006f70:	ccdff0ef          	jal	ra,80006c3c <kerneltrap>
    80006f74:	00013083          	ld	ra,0(sp)
    80006f78:	00813103          	ld	sp,8(sp)
    80006f7c:	01013183          	ld	gp,16(sp)
    80006f80:	02013283          	ld	t0,32(sp)
    80006f84:	02813303          	ld	t1,40(sp)
    80006f88:	03013383          	ld	t2,48(sp)
    80006f8c:	03813403          	ld	s0,56(sp)
    80006f90:	04013483          	ld	s1,64(sp)
    80006f94:	04813503          	ld	a0,72(sp)
    80006f98:	05013583          	ld	a1,80(sp)
    80006f9c:	05813603          	ld	a2,88(sp)
    80006fa0:	06013683          	ld	a3,96(sp)
    80006fa4:	06813703          	ld	a4,104(sp)
    80006fa8:	07013783          	ld	a5,112(sp)
    80006fac:	07813803          	ld	a6,120(sp)
    80006fb0:	08013883          	ld	a7,128(sp)
    80006fb4:	08813903          	ld	s2,136(sp)
    80006fb8:	09013983          	ld	s3,144(sp)
    80006fbc:	09813a03          	ld	s4,152(sp)
    80006fc0:	0a013a83          	ld	s5,160(sp)
    80006fc4:	0a813b03          	ld	s6,168(sp)
    80006fc8:	0b013b83          	ld	s7,176(sp)
    80006fcc:	0b813c03          	ld	s8,184(sp)
    80006fd0:	0c013c83          	ld	s9,192(sp)
    80006fd4:	0c813d03          	ld	s10,200(sp)
    80006fd8:	0d013d83          	ld	s11,208(sp)
    80006fdc:	0d813e03          	ld	t3,216(sp)
    80006fe0:	0e013e83          	ld	t4,224(sp)
    80006fe4:	0e813f03          	ld	t5,232(sp)
    80006fe8:	0f013f83          	ld	t6,240(sp)
    80006fec:	10010113          	addi	sp,sp,256
    80006ff0:	10200073          	sret
    80006ff4:	00000013          	nop
    80006ff8:	00000013          	nop
    80006ffc:	00000013          	nop

0000000080007000 <timervec>:
    80007000:	34051573          	csrrw	a0,mscratch,a0
    80007004:	00b53023          	sd	a1,0(a0)
    80007008:	00c53423          	sd	a2,8(a0)
    8000700c:	00d53823          	sd	a3,16(a0)
    80007010:	01853583          	ld	a1,24(a0)
    80007014:	02053603          	ld	a2,32(a0)
    80007018:	0005b683          	ld	a3,0(a1)
    8000701c:	00c686b3          	add	a3,a3,a2
    80007020:	00d5b023          	sd	a3,0(a1)
    80007024:	00200593          	li	a1,2
    80007028:	14459073          	csrw	sip,a1
    8000702c:	01053683          	ld	a3,16(a0)
    80007030:	00853603          	ld	a2,8(a0)
    80007034:	00053583          	ld	a1,0(a0)
    80007038:	34051573          	csrrw	a0,mscratch,a0
    8000703c:	30200073          	mret

0000000080007040 <plicinit>:
    80007040:	ff010113          	addi	sp,sp,-16
    80007044:	00813423          	sd	s0,8(sp)
    80007048:	01010413          	addi	s0,sp,16
    8000704c:	00813403          	ld	s0,8(sp)
    80007050:	0c0007b7          	lui	a5,0xc000
    80007054:	00100713          	li	a4,1
    80007058:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000705c:	00e7a223          	sw	a4,4(a5)
    80007060:	01010113          	addi	sp,sp,16
    80007064:	00008067          	ret

0000000080007068 <plicinithart>:
    80007068:	ff010113          	addi	sp,sp,-16
    8000706c:	00813023          	sd	s0,0(sp)
    80007070:	00113423          	sd	ra,8(sp)
    80007074:	01010413          	addi	s0,sp,16
    80007078:	00000097          	auipc	ra,0x0
    8000707c:	a44080e7          	jalr	-1468(ra) # 80006abc <cpuid>
    80007080:	0085171b          	slliw	a4,a0,0x8
    80007084:	0c0027b7          	lui	a5,0xc002
    80007088:	00e787b3          	add	a5,a5,a4
    8000708c:	40200713          	li	a4,1026
    80007090:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007094:	00813083          	ld	ra,8(sp)
    80007098:	00013403          	ld	s0,0(sp)
    8000709c:	00d5151b          	slliw	a0,a0,0xd
    800070a0:	0c2017b7          	lui	a5,0xc201
    800070a4:	00a78533          	add	a0,a5,a0
    800070a8:	00052023          	sw	zero,0(a0)
    800070ac:	01010113          	addi	sp,sp,16
    800070b0:	00008067          	ret

00000000800070b4 <plic_claim>:
    800070b4:	ff010113          	addi	sp,sp,-16
    800070b8:	00813023          	sd	s0,0(sp)
    800070bc:	00113423          	sd	ra,8(sp)
    800070c0:	01010413          	addi	s0,sp,16
    800070c4:	00000097          	auipc	ra,0x0
    800070c8:	9f8080e7          	jalr	-1544(ra) # 80006abc <cpuid>
    800070cc:	00813083          	ld	ra,8(sp)
    800070d0:	00013403          	ld	s0,0(sp)
    800070d4:	00d5151b          	slliw	a0,a0,0xd
    800070d8:	0c2017b7          	lui	a5,0xc201
    800070dc:	00a78533          	add	a0,a5,a0
    800070e0:	00452503          	lw	a0,4(a0)
    800070e4:	01010113          	addi	sp,sp,16
    800070e8:	00008067          	ret

00000000800070ec <plic_complete>:
    800070ec:	fe010113          	addi	sp,sp,-32
    800070f0:	00813823          	sd	s0,16(sp)
    800070f4:	00913423          	sd	s1,8(sp)
    800070f8:	00113c23          	sd	ra,24(sp)
    800070fc:	02010413          	addi	s0,sp,32
    80007100:	00050493          	mv	s1,a0
    80007104:	00000097          	auipc	ra,0x0
    80007108:	9b8080e7          	jalr	-1608(ra) # 80006abc <cpuid>
    8000710c:	01813083          	ld	ra,24(sp)
    80007110:	01013403          	ld	s0,16(sp)
    80007114:	00d5179b          	slliw	a5,a0,0xd
    80007118:	0c201737          	lui	a4,0xc201
    8000711c:	00f707b3          	add	a5,a4,a5
    80007120:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007124:	00813483          	ld	s1,8(sp)
    80007128:	02010113          	addi	sp,sp,32
    8000712c:	00008067          	ret

0000000080007130 <consolewrite>:
    80007130:	fb010113          	addi	sp,sp,-80
    80007134:	04813023          	sd	s0,64(sp)
    80007138:	04113423          	sd	ra,72(sp)
    8000713c:	02913c23          	sd	s1,56(sp)
    80007140:	03213823          	sd	s2,48(sp)
    80007144:	03313423          	sd	s3,40(sp)
    80007148:	03413023          	sd	s4,32(sp)
    8000714c:	01513c23          	sd	s5,24(sp)
    80007150:	05010413          	addi	s0,sp,80
    80007154:	06c05c63          	blez	a2,800071cc <consolewrite+0x9c>
    80007158:	00060993          	mv	s3,a2
    8000715c:	00050a13          	mv	s4,a0
    80007160:	00058493          	mv	s1,a1
    80007164:	00000913          	li	s2,0
    80007168:	fff00a93          	li	s5,-1
    8000716c:	01c0006f          	j	80007188 <consolewrite+0x58>
    80007170:	fbf44503          	lbu	a0,-65(s0)
    80007174:	0019091b          	addiw	s2,s2,1
    80007178:	00148493          	addi	s1,s1,1
    8000717c:	00001097          	auipc	ra,0x1
    80007180:	a9c080e7          	jalr	-1380(ra) # 80007c18 <uartputc>
    80007184:	03298063          	beq	s3,s2,800071a4 <consolewrite+0x74>
    80007188:	00048613          	mv	a2,s1
    8000718c:	00100693          	li	a3,1
    80007190:	000a0593          	mv	a1,s4
    80007194:	fbf40513          	addi	a0,s0,-65
    80007198:	00000097          	auipc	ra,0x0
    8000719c:	9dc080e7          	jalr	-1572(ra) # 80006b74 <either_copyin>
    800071a0:	fd5518e3          	bne	a0,s5,80007170 <consolewrite+0x40>
    800071a4:	04813083          	ld	ra,72(sp)
    800071a8:	04013403          	ld	s0,64(sp)
    800071ac:	03813483          	ld	s1,56(sp)
    800071b0:	02813983          	ld	s3,40(sp)
    800071b4:	02013a03          	ld	s4,32(sp)
    800071b8:	01813a83          	ld	s5,24(sp)
    800071bc:	00090513          	mv	a0,s2
    800071c0:	03013903          	ld	s2,48(sp)
    800071c4:	05010113          	addi	sp,sp,80
    800071c8:	00008067          	ret
    800071cc:	00000913          	li	s2,0
    800071d0:	fd5ff06f          	j	800071a4 <consolewrite+0x74>

00000000800071d4 <consoleread>:
    800071d4:	f9010113          	addi	sp,sp,-112
    800071d8:	06813023          	sd	s0,96(sp)
    800071dc:	04913c23          	sd	s1,88(sp)
    800071e0:	05213823          	sd	s2,80(sp)
    800071e4:	05313423          	sd	s3,72(sp)
    800071e8:	05413023          	sd	s4,64(sp)
    800071ec:	03513c23          	sd	s5,56(sp)
    800071f0:	03613823          	sd	s6,48(sp)
    800071f4:	03713423          	sd	s7,40(sp)
    800071f8:	03813023          	sd	s8,32(sp)
    800071fc:	06113423          	sd	ra,104(sp)
    80007200:	01913c23          	sd	s9,24(sp)
    80007204:	07010413          	addi	s0,sp,112
    80007208:	00060b93          	mv	s7,a2
    8000720c:	00050913          	mv	s2,a0
    80007210:	00058c13          	mv	s8,a1
    80007214:	00060b1b          	sext.w	s6,a2
    80007218:	0000a497          	auipc	s1,0xa
    8000721c:	bc048493          	addi	s1,s1,-1088 # 80010dd8 <cons>
    80007220:	00400993          	li	s3,4
    80007224:	fff00a13          	li	s4,-1
    80007228:	00a00a93          	li	s5,10
    8000722c:	05705e63          	blez	s7,80007288 <consoleread+0xb4>
    80007230:	09c4a703          	lw	a4,156(s1)
    80007234:	0984a783          	lw	a5,152(s1)
    80007238:	0007071b          	sext.w	a4,a4
    8000723c:	08e78463          	beq	a5,a4,800072c4 <consoleread+0xf0>
    80007240:	07f7f713          	andi	a4,a5,127
    80007244:	00e48733          	add	a4,s1,a4
    80007248:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000724c:	0017869b          	addiw	a3,a5,1
    80007250:	08d4ac23          	sw	a3,152(s1)
    80007254:	00070c9b          	sext.w	s9,a4
    80007258:	0b370663          	beq	a4,s3,80007304 <consoleread+0x130>
    8000725c:	00100693          	li	a3,1
    80007260:	f9f40613          	addi	a2,s0,-97
    80007264:	000c0593          	mv	a1,s8
    80007268:	00090513          	mv	a0,s2
    8000726c:	f8e40fa3          	sb	a4,-97(s0)
    80007270:	00000097          	auipc	ra,0x0
    80007274:	8b8080e7          	jalr	-1864(ra) # 80006b28 <either_copyout>
    80007278:	01450863          	beq	a0,s4,80007288 <consoleread+0xb4>
    8000727c:	001c0c13          	addi	s8,s8,1
    80007280:	fffb8b9b          	addiw	s7,s7,-1
    80007284:	fb5c94e3          	bne	s9,s5,8000722c <consoleread+0x58>
    80007288:	000b851b          	sext.w	a0,s7
    8000728c:	06813083          	ld	ra,104(sp)
    80007290:	06013403          	ld	s0,96(sp)
    80007294:	05813483          	ld	s1,88(sp)
    80007298:	05013903          	ld	s2,80(sp)
    8000729c:	04813983          	ld	s3,72(sp)
    800072a0:	04013a03          	ld	s4,64(sp)
    800072a4:	03813a83          	ld	s5,56(sp)
    800072a8:	02813b83          	ld	s7,40(sp)
    800072ac:	02013c03          	ld	s8,32(sp)
    800072b0:	01813c83          	ld	s9,24(sp)
    800072b4:	40ab053b          	subw	a0,s6,a0
    800072b8:	03013b03          	ld	s6,48(sp)
    800072bc:	07010113          	addi	sp,sp,112
    800072c0:	00008067          	ret
    800072c4:	00001097          	auipc	ra,0x1
    800072c8:	1d8080e7          	jalr	472(ra) # 8000849c <push_on>
    800072cc:	0984a703          	lw	a4,152(s1)
    800072d0:	09c4a783          	lw	a5,156(s1)
    800072d4:	0007879b          	sext.w	a5,a5
    800072d8:	fef70ce3          	beq	a4,a5,800072d0 <consoleread+0xfc>
    800072dc:	00001097          	auipc	ra,0x1
    800072e0:	234080e7          	jalr	564(ra) # 80008510 <pop_on>
    800072e4:	0984a783          	lw	a5,152(s1)
    800072e8:	07f7f713          	andi	a4,a5,127
    800072ec:	00e48733          	add	a4,s1,a4
    800072f0:	01874703          	lbu	a4,24(a4)
    800072f4:	0017869b          	addiw	a3,a5,1
    800072f8:	08d4ac23          	sw	a3,152(s1)
    800072fc:	00070c9b          	sext.w	s9,a4
    80007300:	f5371ee3          	bne	a4,s3,8000725c <consoleread+0x88>
    80007304:	000b851b          	sext.w	a0,s7
    80007308:	f96bf2e3          	bgeu	s7,s6,8000728c <consoleread+0xb8>
    8000730c:	08f4ac23          	sw	a5,152(s1)
    80007310:	f7dff06f          	j	8000728c <consoleread+0xb8>

0000000080007314 <consputc>:
    80007314:	10000793          	li	a5,256
    80007318:	00f50663          	beq	a0,a5,80007324 <consputc+0x10>
    8000731c:	00001317          	auipc	t1,0x1
    80007320:	9f430067          	jr	-1548(t1) # 80007d10 <uartputc_sync>
    80007324:	ff010113          	addi	sp,sp,-16
    80007328:	00113423          	sd	ra,8(sp)
    8000732c:	00813023          	sd	s0,0(sp)
    80007330:	01010413          	addi	s0,sp,16
    80007334:	00800513          	li	a0,8
    80007338:	00001097          	auipc	ra,0x1
    8000733c:	9d8080e7          	jalr	-1576(ra) # 80007d10 <uartputc_sync>
    80007340:	02000513          	li	a0,32
    80007344:	00001097          	auipc	ra,0x1
    80007348:	9cc080e7          	jalr	-1588(ra) # 80007d10 <uartputc_sync>
    8000734c:	00013403          	ld	s0,0(sp)
    80007350:	00813083          	ld	ra,8(sp)
    80007354:	00800513          	li	a0,8
    80007358:	01010113          	addi	sp,sp,16
    8000735c:	00001317          	auipc	t1,0x1
    80007360:	9b430067          	jr	-1612(t1) # 80007d10 <uartputc_sync>

0000000080007364 <consoleintr>:
    80007364:	fe010113          	addi	sp,sp,-32
    80007368:	00813823          	sd	s0,16(sp)
    8000736c:	00913423          	sd	s1,8(sp)
    80007370:	01213023          	sd	s2,0(sp)
    80007374:	00113c23          	sd	ra,24(sp)
    80007378:	02010413          	addi	s0,sp,32
    8000737c:	0000a917          	auipc	s2,0xa
    80007380:	a5c90913          	addi	s2,s2,-1444 # 80010dd8 <cons>
    80007384:	00050493          	mv	s1,a0
    80007388:	00090513          	mv	a0,s2
    8000738c:	00001097          	auipc	ra,0x1
    80007390:	e40080e7          	jalr	-448(ra) # 800081cc <acquire>
    80007394:	02048c63          	beqz	s1,800073cc <consoleintr+0x68>
    80007398:	0a092783          	lw	a5,160(s2)
    8000739c:	09892703          	lw	a4,152(s2)
    800073a0:	07f00693          	li	a3,127
    800073a4:	40e7873b          	subw	a4,a5,a4
    800073a8:	02e6e263          	bltu	a3,a4,800073cc <consoleintr+0x68>
    800073ac:	00d00713          	li	a4,13
    800073b0:	04e48063          	beq	s1,a4,800073f0 <consoleintr+0x8c>
    800073b4:	07f7f713          	andi	a4,a5,127
    800073b8:	00e90733          	add	a4,s2,a4
    800073bc:	0017879b          	addiw	a5,a5,1
    800073c0:	0af92023          	sw	a5,160(s2)
    800073c4:	00970c23          	sb	s1,24(a4)
    800073c8:	08f92e23          	sw	a5,156(s2)
    800073cc:	01013403          	ld	s0,16(sp)
    800073d0:	01813083          	ld	ra,24(sp)
    800073d4:	00813483          	ld	s1,8(sp)
    800073d8:	00013903          	ld	s2,0(sp)
    800073dc:	0000a517          	auipc	a0,0xa
    800073e0:	9fc50513          	addi	a0,a0,-1540 # 80010dd8 <cons>
    800073e4:	02010113          	addi	sp,sp,32
    800073e8:	00001317          	auipc	t1,0x1
    800073ec:	eb030067          	jr	-336(t1) # 80008298 <release>
    800073f0:	00a00493          	li	s1,10
    800073f4:	fc1ff06f          	j	800073b4 <consoleintr+0x50>

00000000800073f8 <consoleinit>:
    800073f8:	fe010113          	addi	sp,sp,-32
    800073fc:	00113c23          	sd	ra,24(sp)
    80007400:	00813823          	sd	s0,16(sp)
    80007404:	00913423          	sd	s1,8(sp)
    80007408:	02010413          	addi	s0,sp,32
    8000740c:	0000a497          	auipc	s1,0xa
    80007410:	9cc48493          	addi	s1,s1,-1588 # 80010dd8 <cons>
    80007414:	00048513          	mv	a0,s1
    80007418:	00002597          	auipc	a1,0x2
    8000741c:	2a858593          	addi	a1,a1,680 # 800096c0 <_ZL6digits+0x168>
    80007420:	00001097          	auipc	ra,0x1
    80007424:	d88080e7          	jalr	-632(ra) # 800081a8 <initlock>
    80007428:	00000097          	auipc	ra,0x0
    8000742c:	7ac080e7          	jalr	1964(ra) # 80007bd4 <uartinit>
    80007430:	01813083          	ld	ra,24(sp)
    80007434:	01013403          	ld	s0,16(sp)
    80007438:	00000797          	auipc	a5,0x0
    8000743c:	d9c78793          	addi	a5,a5,-612 # 800071d4 <consoleread>
    80007440:	0af4bc23          	sd	a5,184(s1)
    80007444:	00000797          	auipc	a5,0x0
    80007448:	cec78793          	addi	a5,a5,-788 # 80007130 <consolewrite>
    8000744c:	0cf4b023          	sd	a5,192(s1)
    80007450:	00813483          	ld	s1,8(sp)
    80007454:	02010113          	addi	sp,sp,32
    80007458:	00008067          	ret

000000008000745c <console_read>:
    8000745c:	ff010113          	addi	sp,sp,-16
    80007460:	00813423          	sd	s0,8(sp)
    80007464:	01010413          	addi	s0,sp,16
    80007468:	00813403          	ld	s0,8(sp)
    8000746c:	0000a317          	auipc	t1,0xa
    80007470:	a2433303          	ld	t1,-1500(t1) # 80010e90 <devsw+0x10>
    80007474:	01010113          	addi	sp,sp,16
    80007478:	00030067          	jr	t1

000000008000747c <console_write>:
    8000747c:	ff010113          	addi	sp,sp,-16
    80007480:	00813423          	sd	s0,8(sp)
    80007484:	01010413          	addi	s0,sp,16
    80007488:	00813403          	ld	s0,8(sp)
    8000748c:	0000a317          	auipc	t1,0xa
    80007490:	a0c33303          	ld	t1,-1524(t1) # 80010e98 <devsw+0x18>
    80007494:	01010113          	addi	sp,sp,16
    80007498:	00030067          	jr	t1

000000008000749c <panic>:
    8000749c:	fe010113          	addi	sp,sp,-32
    800074a0:	00113c23          	sd	ra,24(sp)
    800074a4:	00813823          	sd	s0,16(sp)
    800074a8:	00913423          	sd	s1,8(sp)
    800074ac:	02010413          	addi	s0,sp,32
    800074b0:	00050493          	mv	s1,a0
    800074b4:	00002517          	auipc	a0,0x2
    800074b8:	21450513          	addi	a0,a0,532 # 800096c8 <_ZL6digits+0x170>
    800074bc:	0000a797          	auipc	a5,0xa
    800074c0:	a607ae23          	sw	zero,-1412(a5) # 80010f38 <pr+0x18>
    800074c4:	00000097          	auipc	ra,0x0
    800074c8:	034080e7          	jalr	52(ra) # 800074f8 <__printf>
    800074cc:	00048513          	mv	a0,s1
    800074d0:	00000097          	auipc	ra,0x0
    800074d4:	028080e7          	jalr	40(ra) # 800074f8 <__printf>
    800074d8:	00002517          	auipc	a0,0x2
    800074dc:	c2850513          	addi	a0,a0,-984 # 80009100 <CONSOLE_STATUS+0xf0>
    800074e0:	00000097          	auipc	ra,0x0
    800074e4:	018080e7          	jalr	24(ra) # 800074f8 <__printf>
    800074e8:	00100793          	li	a5,1
    800074ec:	00004717          	auipc	a4,0x4
    800074f0:	6ef72623          	sw	a5,1772(a4) # 8000bbd8 <panicked>
    800074f4:	0000006f          	j	800074f4 <panic+0x58>

00000000800074f8 <__printf>:
    800074f8:	f3010113          	addi	sp,sp,-208
    800074fc:	08813023          	sd	s0,128(sp)
    80007500:	07313423          	sd	s3,104(sp)
    80007504:	09010413          	addi	s0,sp,144
    80007508:	05813023          	sd	s8,64(sp)
    8000750c:	08113423          	sd	ra,136(sp)
    80007510:	06913c23          	sd	s1,120(sp)
    80007514:	07213823          	sd	s2,112(sp)
    80007518:	07413023          	sd	s4,96(sp)
    8000751c:	05513c23          	sd	s5,88(sp)
    80007520:	05613823          	sd	s6,80(sp)
    80007524:	05713423          	sd	s7,72(sp)
    80007528:	03913c23          	sd	s9,56(sp)
    8000752c:	03a13823          	sd	s10,48(sp)
    80007530:	03b13423          	sd	s11,40(sp)
    80007534:	0000a317          	auipc	t1,0xa
    80007538:	9ec30313          	addi	t1,t1,-1556 # 80010f20 <pr>
    8000753c:	01832c03          	lw	s8,24(t1)
    80007540:	00b43423          	sd	a1,8(s0)
    80007544:	00c43823          	sd	a2,16(s0)
    80007548:	00d43c23          	sd	a3,24(s0)
    8000754c:	02e43023          	sd	a4,32(s0)
    80007550:	02f43423          	sd	a5,40(s0)
    80007554:	03043823          	sd	a6,48(s0)
    80007558:	03143c23          	sd	a7,56(s0)
    8000755c:	00050993          	mv	s3,a0
    80007560:	4a0c1663          	bnez	s8,80007a0c <__printf+0x514>
    80007564:	60098c63          	beqz	s3,80007b7c <__printf+0x684>
    80007568:	0009c503          	lbu	a0,0(s3)
    8000756c:	00840793          	addi	a5,s0,8
    80007570:	f6f43c23          	sd	a5,-136(s0)
    80007574:	00000493          	li	s1,0
    80007578:	22050063          	beqz	a0,80007798 <__printf+0x2a0>
    8000757c:	00002a37          	lui	s4,0x2
    80007580:	00018ab7          	lui	s5,0x18
    80007584:	000f4b37          	lui	s6,0xf4
    80007588:	00989bb7          	lui	s7,0x989
    8000758c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007590:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007594:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007598:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000759c:	00148c9b          	addiw	s9,s1,1
    800075a0:	02500793          	li	a5,37
    800075a4:	01998933          	add	s2,s3,s9
    800075a8:	38f51263          	bne	a0,a5,8000792c <__printf+0x434>
    800075ac:	00094783          	lbu	a5,0(s2)
    800075b0:	00078c9b          	sext.w	s9,a5
    800075b4:	1e078263          	beqz	a5,80007798 <__printf+0x2a0>
    800075b8:	0024849b          	addiw	s1,s1,2
    800075bc:	07000713          	li	a4,112
    800075c0:	00998933          	add	s2,s3,s1
    800075c4:	38e78a63          	beq	a5,a4,80007958 <__printf+0x460>
    800075c8:	20f76863          	bltu	a4,a5,800077d8 <__printf+0x2e0>
    800075cc:	42a78863          	beq	a5,a0,800079fc <__printf+0x504>
    800075d0:	06400713          	li	a4,100
    800075d4:	40e79663          	bne	a5,a4,800079e0 <__printf+0x4e8>
    800075d8:	f7843783          	ld	a5,-136(s0)
    800075dc:	0007a603          	lw	a2,0(a5)
    800075e0:	00878793          	addi	a5,a5,8
    800075e4:	f6f43c23          	sd	a5,-136(s0)
    800075e8:	42064a63          	bltz	a2,80007a1c <__printf+0x524>
    800075ec:	00a00713          	li	a4,10
    800075f0:	02e677bb          	remuw	a5,a2,a4
    800075f4:	00002d97          	auipc	s11,0x2
    800075f8:	0fcd8d93          	addi	s11,s11,252 # 800096f0 <digits>
    800075fc:	00900593          	li	a1,9
    80007600:	0006051b          	sext.w	a0,a2
    80007604:	00000c93          	li	s9,0
    80007608:	02079793          	slli	a5,a5,0x20
    8000760c:	0207d793          	srli	a5,a5,0x20
    80007610:	00fd87b3          	add	a5,s11,a5
    80007614:	0007c783          	lbu	a5,0(a5)
    80007618:	02e656bb          	divuw	a3,a2,a4
    8000761c:	f8f40023          	sb	a5,-128(s0)
    80007620:	14c5d863          	bge	a1,a2,80007770 <__printf+0x278>
    80007624:	06300593          	li	a1,99
    80007628:	00100c93          	li	s9,1
    8000762c:	02e6f7bb          	remuw	a5,a3,a4
    80007630:	02079793          	slli	a5,a5,0x20
    80007634:	0207d793          	srli	a5,a5,0x20
    80007638:	00fd87b3          	add	a5,s11,a5
    8000763c:	0007c783          	lbu	a5,0(a5)
    80007640:	02e6d73b          	divuw	a4,a3,a4
    80007644:	f8f400a3          	sb	a5,-127(s0)
    80007648:	12a5f463          	bgeu	a1,a0,80007770 <__printf+0x278>
    8000764c:	00a00693          	li	a3,10
    80007650:	00900593          	li	a1,9
    80007654:	02d777bb          	remuw	a5,a4,a3
    80007658:	02079793          	slli	a5,a5,0x20
    8000765c:	0207d793          	srli	a5,a5,0x20
    80007660:	00fd87b3          	add	a5,s11,a5
    80007664:	0007c503          	lbu	a0,0(a5)
    80007668:	02d757bb          	divuw	a5,a4,a3
    8000766c:	f8a40123          	sb	a0,-126(s0)
    80007670:	48e5f263          	bgeu	a1,a4,80007af4 <__printf+0x5fc>
    80007674:	06300513          	li	a0,99
    80007678:	02d7f5bb          	remuw	a1,a5,a3
    8000767c:	02059593          	slli	a1,a1,0x20
    80007680:	0205d593          	srli	a1,a1,0x20
    80007684:	00bd85b3          	add	a1,s11,a1
    80007688:	0005c583          	lbu	a1,0(a1)
    8000768c:	02d7d7bb          	divuw	a5,a5,a3
    80007690:	f8b401a3          	sb	a1,-125(s0)
    80007694:	48e57263          	bgeu	a0,a4,80007b18 <__printf+0x620>
    80007698:	3e700513          	li	a0,999
    8000769c:	02d7f5bb          	remuw	a1,a5,a3
    800076a0:	02059593          	slli	a1,a1,0x20
    800076a4:	0205d593          	srli	a1,a1,0x20
    800076a8:	00bd85b3          	add	a1,s11,a1
    800076ac:	0005c583          	lbu	a1,0(a1)
    800076b0:	02d7d7bb          	divuw	a5,a5,a3
    800076b4:	f8b40223          	sb	a1,-124(s0)
    800076b8:	46e57663          	bgeu	a0,a4,80007b24 <__printf+0x62c>
    800076bc:	02d7f5bb          	remuw	a1,a5,a3
    800076c0:	02059593          	slli	a1,a1,0x20
    800076c4:	0205d593          	srli	a1,a1,0x20
    800076c8:	00bd85b3          	add	a1,s11,a1
    800076cc:	0005c583          	lbu	a1,0(a1)
    800076d0:	02d7d7bb          	divuw	a5,a5,a3
    800076d4:	f8b402a3          	sb	a1,-123(s0)
    800076d8:	46ea7863          	bgeu	s4,a4,80007b48 <__printf+0x650>
    800076dc:	02d7f5bb          	remuw	a1,a5,a3
    800076e0:	02059593          	slli	a1,a1,0x20
    800076e4:	0205d593          	srli	a1,a1,0x20
    800076e8:	00bd85b3          	add	a1,s11,a1
    800076ec:	0005c583          	lbu	a1,0(a1)
    800076f0:	02d7d7bb          	divuw	a5,a5,a3
    800076f4:	f8b40323          	sb	a1,-122(s0)
    800076f8:	3eeaf863          	bgeu	s5,a4,80007ae8 <__printf+0x5f0>
    800076fc:	02d7f5bb          	remuw	a1,a5,a3
    80007700:	02059593          	slli	a1,a1,0x20
    80007704:	0205d593          	srli	a1,a1,0x20
    80007708:	00bd85b3          	add	a1,s11,a1
    8000770c:	0005c583          	lbu	a1,0(a1)
    80007710:	02d7d7bb          	divuw	a5,a5,a3
    80007714:	f8b403a3          	sb	a1,-121(s0)
    80007718:	42eb7e63          	bgeu	s6,a4,80007b54 <__printf+0x65c>
    8000771c:	02d7f5bb          	remuw	a1,a5,a3
    80007720:	02059593          	slli	a1,a1,0x20
    80007724:	0205d593          	srli	a1,a1,0x20
    80007728:	00bd85b3          	add	a1,s11,a1
    8000772c:	0005c583          	lbu	a1,0(a1)
    80007730:	02d7d7bb          	divuw	a5,a5,a3
    80007734:	f8b40423          	sb	a1,-120(s0)
    80007738:	42ebfc63          	bgeu	s7,a4,80007b70 <__printf+0x678>
    8000773c:	02079793          	slli	a5,a5,0x20
    80007740:	0207d793          	srli	a5,a5,0x20
    80007744:	00fd8db3          	add	s11,s11,a5
    80007748:	000dc703          	lbu	a4,0(s11)
    8000774c:	00a00793          	li	a5,10
    80007750:	00900c93          	li	s9,9
    80007754:	f8e404a3          	sb	a4,-119(s0)
    80007758:	00065c63          	bgez	a2,80007770 <__printf+0x278>
    8000775c:	f9040713          	addi	a4,s0,-112
    80007760:	00f70733          	add	a4,a4,a5
    80007764:	02d00693          	li	a3,45
    80007768:	fed70823          	sb	a3,-16(a4)
    8000776c:	00078c93          	mv	s9,a5
    80007770:	f8040793          	addi	a5,s0,-128
    80007774:	01978cb3          	add	s9,a5,s9
    80007778:	f7f40d13          	addi	s10,s0,-129
    8000777c:	000cc503          	lbu	a0,0(s9)
    80007780:	fffc8c93          	addi	s9,s9,-1
    80007784:	00000097          	auipc	ra,0x0
    80007788:	b90080e7          	jalr	-1136(ra) # 80007314 <consputc>
    8000778c:	ffac98e3          	bne	s9,s10,8000777c <__printf+0x284>
    80007790:	00094503          	lbu	a0,0(s2)
    80007794:	e00514e3          	bnez	a0,8000759c <__printf+0xa4>
    80007798:	1a0c1663          	bnez	s8,80007944 <__printf+0x44c>
    8000779c:	08813083          	ld	ra,136(sp)
    800077a0:	08013403          	ld	s0,128(sp)
    800077a4:	07813483          	ld	s1,120(sp)
    800077a8:	07013903          	ld	s2,112(sp)
    800077ac:	06813983          	ld	s3,104(sp)
    800077b0:	06013a03          	ld	s4,96(sp)
    800077b4:	05813a83          	ld	s5,88(sp)
    800077b8:	05013b03          	ld	s6,80(sp)
    800077bc:	04813b83          	ld	s7,72(sp)
    800077c0:	04013c03          	ld	s8,64(sp)
    800077c4:	03813c83          	ld	s9,56(sp)
    800077c8:	03013d03          	ld	s10,48(sp)
    800077cc:	02813d83          	ld	s11,40(sp)
    800077d0:	0d010113          	addi	sp,sp,208
    800077d4:	00008067          	ret
    800077d8:	07300713          	li	a4,115
    800077dc:	1ce78a63          	beq	a5,a4,800079b0 <__printf+0x4b8>
    800077e0:	07800713          	li	a4,120
    800077e4:	1ee79e63          	bne	a5,a4,800079e0 <__printf+0x4e8>
    800077e8:	f7843783          	ld	a5,-136(s0)
    800077ec:	0007a703          	lw	a4,0(a5)
    800077f0:	00878793          	addi	a5,a5,8
    800077f4:	f6f43c23          	sd	a5,-136(s0)
    800077f8:	28074263          	bltz	a4,80007a7c <__printf+0x584>
    800077fc:	00002d97          	auipc	s11,0x2
    80007800:	ef4d8d93          	addi	s11,s11,-268 # 800096f0 <digits>
    80007804:	00f77793          	andi	a5,a4,15
    80007808:	00fd87b3          	add	a5,s11,a5
    8000780c:	0007c683          	lbu	a3,0(a5)
    80007810:	00f00613          	li	a2,15
    80007814:	0007079b          	sext.w	a5,a4
    80007818:	f8d40023          	sb	a3,-128(s0)
    8000781c:	0047559b          	srliw	a1,a4,0x4
    80007820:	0047569b          	srliw	a3,a4,0x4
    80007824:	00000c93          	li	s9,0
    80007828:	0ee65063          	bge	a2,a4,80007908 <__printf+0x410>
    8000782c:	00f6f693          	andi	a3,a3,15
    80007830:	00dd86b3          	add	a3,s11,a3
    80007834:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007838:	0087d79b          	srliw	a5,a5,0x8
    8000783c:	00100c93          	li	s9,1
    80007840:	f8d400a3          	sb	a3,-127(s0)
    80007844:	0cb67263          	bgeu	a2,a1,80007908 <__printf+0x410>
    80007848:	00f7f693          	andi	a3,a5,15
    8000784c:	00dd86b3          	add	a3,s11,a3
    80007850:	0006c583          	lbu	a1,0(a3)
    80007854:	00f00613          	li	a2,15
    80007858:	0047d69b          	srliw	a3,a5,0x4
    8000785c:	f8b40123          	sb	a1,-126(s0)
    80007860:	0047d593          	srli	a1,a5,0x4
    80007864:	28f67e63          	bgeu	a2,a5,80007b00 <__printf+0x608>
    80007868:	00f6f693          	andi	a3,a3,15
    8000786c:	00dd86b3          	add	a3,s11,a3
    80007870:	0006c503          	lbu	a0,0(a3)
    80007874:	0087d813          	srli	a6,a5,0x8
    80007878:	0087d69b          	srliw	a3,a5,0x8
    8000787c:	f8a401a3          	sb	a0,-125(s0)
    80007880:	28b67663          	bgeu	a2,a1,80007b0c <__printf+0x614>
    80007884:	00f6f693          	andi	a3,a3,15
    80007888:	00dd86b3          	add	a3,s11,a3
    8000788c:	0006c583          	lbu	a1,0(a3)
    80007890:	00c7d513          	srli	a0,a5,0xc
    80007894:	00c7d69b          	srliw	a3,a5,0xc
    80007898:	f8b40223          	sb	a1,-124(s0)
    8000789c:	29067a63          	bgeu	a2,a6,80007b30 <__printf+0x638>
    800078a0:	00f6f693          	andi	a3,a3,15
    800078a4:	00dd86b3          	add	a3,s11,a3
    800078a8:	0006c583          	lbu	a1,0(a3)
    800078ac:	0107d813          	srli	a6,a5,0x10
    800078b0:	0107d69b          	srliw	a3,a5,0x10
    800078b4:	f8b402a3          	sb	a1,-123(s0)
    800078b8:	28a67263          	bgeu	a2,a0,80007b3c <__printf+0x644>
    800078bc:	00f6f693          	andi	a3,a3,15
    800078c0:	00dd86b3          	add	a3,s11,a3
    800078c4:	0006c683          	lbu	a3,0(a3)
    800078c8:	0147d79b          	srliw	a5,a5,0x14
    800078cc:	f8d40323          	sb	a3,-122(s0)
    800078d0:	21067663          	bgeu	a2,a6,80007adc <__printf+0x5e4>
    800078d4:	02079793          	slli	a5,a5,0x20
    800078d8:	0207d793          	srli	a5,a5,0x20
    800078dc:	00fd8db3          	add	s11,s11,a5
    800078e0:	000dc683          	lbu	a3,0(s11)
    800078e4:	00800793          	li	a5,8
    800078e8:	00700c93          	li	s9,7
    800078ec:	f8d403a3          	sb	a3,-121(s0)
    800078f0:	00075c63          	bgez	a4,80007908 <__printf+0x410>
    800078f4:	f9040713          	addi	a4,s0,-112
    800078f8:	00f70733          	add	a4,a4,a5
    800078fc:	02d00693          	li	a3,45
    80007900:	fed70823          	sb	a3,-16(a4)
    80007904:	00078c93          	mv	s9,a5
    80007908:	f8040793          	addi	a5,s0,-128
    8000790c:	01978cb3          	add	s9,a5,s9
    80007910:	f7f40d13          	addi	s10,s0,-129
    80007914:	000cc503          	lbu	a0,0(s9)
    80007918:	fffc8c93          	addi	s9,s9,-1
    8000791c:	00000097          	auipc	ra,0x0
    80007920:	9f8080e7          	jalr	-1544(ra) # 80007314 <consputc>
    80007924:	ff9d18e3          	bne	s10,s9,80007914 <__printf+0x41c>
    80007928:	0100006f          	j	80007938 <__printf+0x440>
    8000792c:	00000097          	auipc	ra,0x0
    80007930:	9e8080e7          	jalr	-1560(ra) # 80007314 <consputc>
    80007934:	000c8493          	mv	s1,s9
    80007938:	00094503          	lbu	a0,0(s2)
    8000793c:	c60510e3          	bnez	a0,8000759c <__printf+0xa4>
    80007940:	e40c0ee3          	beqz	s8,8000779c <__printf+0x2a4>
    80007944:	00009517          	auipc	a0,0x9
    80007948:	5dc50513          	addi	a0,a0,1500 # 80010f20 <pr>
    8000794c:	00001097          	auipc	ra,0x1
    80007950:	94c080e7          	jalr	-1716(ra) # 80008298 <release>
    80007954:	e49ff06f          	j	8000779c <__printf+0x2a4>
    80007958:	f7843783          	ld	a5,-136(s0)
    8000795c:	03000513          	li	a0,48
    80007960:	01000d13          	li	s10,16
    80007964:	00878713          	addi	a4,a5,8
    80007968:	0007bc83          	ld	s9,0(a5)
    8000796c:	f6e43c23          	sd	a4,-136(s0)
    80007970:	00000097          	auipc	ra,0x0
    80007974:	9a4080e7          	jalr	-1628(ra) # 80007314 <consputc>
    80007978:	07800513          	li	a0,120
    8000797c:	00000097          	auipc	ra,0x0
    80007980:	998080e7          	jalr	-1640(ra) # 80007314 <consputc>
    80007984:	00002d97          	auipc	s11,0x2
    80007988:	d6cd8d93          	addi	s11,s11,-660 # 800096f0 <digits>
    8000798c:	03ccd793          	srli	a5,s9,0x3c
    80007990:	00fd87b3          	add	a5,s11,a5
    80007994:	0007c503          	lbu	a0,0(a5)
    80007998:	fffd0d1b          	addiw	s10,s10,-1
    8000799c:	004c9c93          	slli	s9,s9,0x4
    800079a0:	00000097          	auipc	ra,0x0
    800079a4:	974080e7          	jalr	-1676(ra) # 80007314 <consputc>
    800079a8:	fe0d12e3          	bnez	s10,8000798c <__printf+0x494>
    800079ac:	f8dff06f          	j	80007938 <__printf+0x440>
    800079b0:	f7843783          	ld	a5,-136(s0)
    800079b4:	0007bc83          	ld	s9,0(a5)
    800079b8:	00878793          	addi	a5,a5,8
    800079bc:	f6f43c23          	sd	a5,-136(s0)
    800079c0:	000c9a63          	bnez	s9,800079d4 <__printf+0x4dc>
    800079c4:	1080006f          	j	80007acc <__printf+0x5d4>
    800079c8:	001c8c93          	addi	s9,s9,1
    800079cc:	00000097          	auipc	ra,0x0
    800079d0:	948080e7          	jalr	-1720(ra) # 80007314 <consputc>
    800079d4:	000cc503          	lbu	a0,0(s9)
    800079d8:	fe0518e3          	bnez	a0,800079c8 <__printf+0x4d0>
    800079dc:	f5dff06f          	j	80007938 <__printf+0x440>
    800079e0:	02500513          	li	a0,37
    800079e4:	00000097          	auipc	ra,0x0
    800079e8:	930080e7          	jalr	-1744(ra) # 80007314 <consputc>
    800079ec:	000c8513          	mv	a0,s9
    800079f0:	00000097          	auipc	ra,0x0
    800079f4:	924080e7          	jalr	-1756(ra) # 80007314 <consputc>
    800079f8:	f41ff06f          	j	80007938 <__printf+0x440>
    800079fc:	02500513          	li	a0,37
    80007a00:	00000097          	auipc	ra,0x0
    80007a04:	914080e7          	jalr	-1772(ra) # 80007314 <consputc>
    80007a08:	f31ff06f          	j	80007938 <__printf+0x440>
    80007a0c:	00030513          	mv	a0,t1
    80007a10:	00000097          	auipc	ra,0x0
    80007a14:	7bc080e7          	jalr	1980(ra) # 800081cc <acquire>
    80007a18:	b4dff06f          	j	80007564 <__printf+0x6c>
    80007a1c:	40c0053b          	negw	a0,a2
    80007a20:	00a00713          	li	a4,10
    80007a24:	02e576bb          	remuw	a3,a0,a4
    80007a28:	00002d97          	auipc	s11,0x2
    80007a2c:	cc8d8d93          	addi	s11,s11,-824 # 800096f0 <digits>
    80007a30:	ff700593          	li	a1,-9
    80007a34:	02069693          	slli	a3,a3,0x20
    80007a38:	0206d693          	srli	a3,a3,0x20
    80007a3c:	00dd86b3          	add	a3,s11,a3
    80007a40:	0006c683          	lbu	a3,0(a3)
    80007a44:	02e557bb          	divuw	a5,a0,a4
    80007a48:	f8d40023          	sb	a3,-128(s0)
    80007a4c:	10b65e63          	bge	a2,a1,80007b68 <__printf+0x670>
    80007a50:	06300593          	li	a1,99
    80007a54:	02e7f6bb          	remuw	a3,a5,a4
    80007a58:	02069693          	slli	a3,a3,0x20
    80007a5c:	0206d693          	srli	a3,a3,0x20
    80007a60:	00dd86b3          	add	a3,s11,a3
    80007a64:	0006c683          	lbu	a3,0(a3)
    80007a68:	02e7d73b          	divuw	a4,a5,a4
    80007a6c:	00200793          	li	a5,2
    80007a70:	f8d400a3          	sb	a3,-127(s0)
    80007a74:	bca5ece3          	bltu	a1,a0,8000764c <__printf+0x154>
    80007a78:	ce5ff06f          	j	8000775c <__printf+0x264>
    80007a7c:	40e007bb          	negw	a5,a4
    80007a80:	00002d97          	auipc	s11,0x2
    80007a84:	c70d8d93          	addi	s11,s11,-912 # 800096f0 <digits>
    80007a88:	00f7f693          	andi	a3,a5,15
    80007a8c:	00dd86b3          	add	a3,s11,a3
    80007a90:	0006c583          	lbu	a1,0(a3)
    80007a94:	ff100613          	li	a2,-15
    80007a98:	0047d69b          	srliw	a3,a5,0x4
    80007a9c:	f8b40023          	sb	a1,-128(s0)
    80007aa0:	0047d59b          	srliw	a1,a5,0x4
    80007aa4:	0ac75e63          	bge	a4,a2,80007b60 <__printf+0x668>
    80007aa8:	00f6f693          	andi	a3,a3,15
    80007aac:	00dd86b3          	add	a3,s11,a3
    80007ab0:	0006c603          	lbu	a2,0(a3)
    80007ab4:	00f00693          	li	a3,15
    80007ab8:	0087d79b          	srliw	a5,a5,0x8
    80007abc:	f8c400a3          	sb	a2,-127(s0)
    80007ac0:	d8b6e4e3          	bltu	a3,a1,80007848 <__printf+0x350>
    80007ac4:	00200793          	li	a5,2
    80007ac8:	e2dff06f          	j	800078f4 <__printf+0x3fc>
    80007acc:	00002c97          	auipc	s9,0x2
    80007ad0:	c04c8c93          	addi	s9,s9,-1020 # 800096d0 <_ZL6digits+0x178>
    80007ad4:	02800513          	li	a0,40
    80007ad8:	ef1ff06f          	j	800079c8 <__printf+0x4d0>
    80007adc:	00700793          	li	a5,7
    80007ae0:	00600c93          	li	s9,6
    80007ae4:	e0dff06f          	j	800078f0 <__printf+0x3f8>
    80007ae8:	00700793          	li	a5,7
    80007aec:	00600c93          	li	s9,6
    80007af0:	c69ff06f          	j	80007758 <__printf+0x260>
    80007af4:	00300793          	li	a5,3
    80007af8:	00200c93          	li	s9,2
    80007afc:	c5dff06f          	j	80007758 <__printf+0x260>
    80007b00:	00300793          	li	a5,3
    80007b04:	00200c93          	li	s9,2
    80007b08:	de9ff06f          	j	800078f0 <__printf+0x3f8>
    80007b0c:	00400793          	li	a5,4
    80007b10:	00300c93          	li	s9,3
    80007b14:	dddff06f          	j	800078f0 <__printf+0x3f8>
    80007b18:	00400793          	li	a5,4
    80007b1c:	00300c93          	li	s9,3
    80007b20:	c39ff06f          	j	80007758 <__printf+0x260>
    80007b24:	00500793          	li	a5,5
    80007b28:	00400c93          	li	s9,4
    80007b2c:	c2dff06f          	j	80007758 <__printf+0x260>
    80007b30:	00500793          	li	a5,5
    80007b34:	00400c93          	li	s9,4
    80007b38:	db9ff06f          	j	800078f0 <__printf+0x3f8>
    80007b3c:	00600793          	li	a5,6
    80007b40:	00500c93          	li	s9,5
    80007b44:	dadff06f          	j	800078f0 <__printf+0x3f8>
    80007b48:	00600793          	li	a5,6
    80007b4c:	00500c93          	li	s9,5
    80007b50:	c09ff06f          	j	80007758 <__printf+0x260>
    80007b54:	00800793          	li	a5,8
    80007b58:	00700c93          	li	s9,7
    80007b5c:	bfdff06f          	j	80007758 <__printf+0x260>
    80007b60:	00100793          	li	a5,1
    80007b64:	d91ff06f          	j	800078f4 <__printf+0x3fc>
    80007b68:	00100793          	li	a5,1
    80007b6c:	bf1ff06f          	j	8000775c <__printf+0x264>
    80007b70:	00900793          	li	a5,9
    80007b74:	00800c93          	li	s9,8
    80007b78:	be1ff06f          	j	80007758 <__printf+0x260>
    80007b7c:	00002517          	auipc	a0,0x2
    80007b80:	b5c50513          	addi	a0,a0,-1188 # 800096d8 <_ZL6digits+0x180>
    80007b84:	00000097          	auipc	ra,0x0
    80007b88:	918080e7          	jalr	-1768(ra) # 8000749c <panic>

0000000080007b8c <printfinit>:
    80007b8c:	fe010113          	addi	sp,sp,-32
    80007b90:	00813823          	sd	s0,16(sp)
    80007b94:	00913423          	sd	s1,8(sp)
    80007b98:	00113c23          	sd	ra,24(sp)
    80007b9c:	02010413          	addi	s0,sp,32
    80007ba0:	00009497          	auipc	s1,0x9
    80007ba4:	38048493          	addi	s1,s1,896 # 80010f20 <pr>
    80007ba8:	00048513          	mv	a0,s1
    80007bac:	00002597          	auipc	a1,0x2
    80007bb0:	b3c58593          	addi	a1,a1,-1220 # 800096e8 <_ZL6digits+0x190>
    80007bb4:	00000097          	auipc	ra,0x0
    80007bb8:	5f4080e7          	jalr	1524(ra) # 800081a8 <initlock>
    80007bbc:	01813083          	ld	ra,24(sp)
    80007bc0:	01013403          	ld	s0,16(sp)
    80007bc4:	0004ac23          	sw	zero,24(s1)
    80007bc8:	00813483          	ld	s1,8(sp)
    80007bcc:	02010113          	addi	sp,sp,32
    80007bd0:	00008067          	ret

0000000080007bd4 <uartinit>:
    80007bd4:	ff010113          	addi	sp,sp,-16
    80007bd8:	00813423          	sd	s0,8(sp)
    80007bdc:	01010413          	addi	s0,sp,16
    80007be0:	100007b7          	lui	a5,0x10000
    80007be4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007be8:	f8000713          	li	a4,-128
    80007bec:	00e781a3          	sb	a4,3(a5)
    80007bf0:	00300713          	li	a4,3
    80007bf4:	00e78023          	sb	a4,0(a5)
    80007bf8:	000780a3          	sb	zero,1(a5)
    80007bfc:	00e781a3          	sb	a4,3(a5)
    80007c00:	00700693          	li	a3,7
    80007c04:	00d78123          	sb	a3,2(a5)
    80007c08:	00e780a3          	sb	a4,1(a5)
    80007c0c:	00813403          	ld	s0,8(sp)
    80007c10:	01010113          	addi	sp,sp,16
    80007c14:	00008067          	ret

0000000080007c18 <uartputc>:
    80007c18:	00004797          	auipc	a5,0x4
    80007c1c:	fc07a783          	lw	a5,-64(a5) # 8000bbd8 <panicked>
    80007c20:	00078463          	beqz	a5,80007c28 <uartputc+0x10>
    80007c24:	0000006f          	j	80007c24 <uartputc+0xc>
    80007c28:	fd010113          	addi	sp,sp,-48
    80007c2c:	02813023          	sd	s0,32(sp)
    80007c30:	00913c23          	sd	s1,24(sp)
    80007c34:	01213823          	sd	s2,16(sp)
    80007c38:	01313423          	sd	s3,8(sp)
    80007c3c:	02113423          	sd	ra,40(sp)
    80007c40:	03010413          	addi	s0,sp,48
    80007c44:	00004917          	auipc	s2,0x4
    80007c48:	f9c90913          	addi	s2,s2,-100 # 8000bbe0 <uart_tx_r>
    80007c4c:	00093783          	ld	a5,0(s2)
    80007c50:	00004497          	auipc	s1,0x4
    80007c54:	f9848493          	addi	s1,s1,-104 # 8000bbe8 <uart_tx_w>
    80007c58:	0004b703          	ld	a4,0(s1)
    80007c5c:	02078693          	addi	a3,a5,32
    80007c60:	00050993          	mv	s3,a0
    80007c64:	02e69c63          	bne	a3,a4,80007c9c <uartputc+0x84>
    80007c68:	00001097          	auipc	ra,0x1
    80007c6c:	834080e7          	jalr	-1996(ra) # 8000849c <push_on>
    80007c70:	00093783          	ld	a5,0(s2)
    80007c74:	0004b703          	ld	a4,0(s1)
    80007c78:	02078793          	addi	a5,a5,32
    80007c7c:	00e79463          	bne	a5,a4,80007c84 <uartputc+0x6c>
    80007c80:	0000006f          	j	80007c80 <uartputc+0x68>
    80007c84:	00001097          	auipc	ra,0x1
    80007c88:	88c080e7          	jalr	-1908(ra) # 80008510 <pop_on>
    80007c8c:	00093783          	ld	a5,0(s2)
    80007c90:	0004b703          	ld	a4,0(s1)
    80007c94:	02078693          	addi	a3,a5,32
    80007c98:	fce688e3          	beq	a3,a4,80007c68 <uartputc+0x50>
    80007c9c:	01f77693          	andi	a3,a4,31
    80007ca0:	00009597          	auipc	a1,0x9
    80007ca4:	2a058593          	addi	a1,a1,672 # 80010f40 <uart_tx_buf>
    80007ca8:	00d586b3          	add	a3,a1,a3
    80007cac:	00170713          	addi	a4,a4,1
    80007cb0:	01368023          	sb	s3,0(a3)
    80007cb4:	00e4b023          	sd	a4,0(s1)
    80007cb8:	10000637          	lui	a2,0x10000
    80007cbc:	02f71063          	bne	a4,a5,80007cdc <uartputc+0xc4>
    80007cc0:	0340006f          	j	80007cf4 <uartputc+0xdc>
    80007cc4:	00074703          	lbu	a4,0(a4)
    80007cc8:	00f93023          	sd	a5,0(s2)
    80007ccc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007cd0:	00093783          	ld	a5,0(s2)
    80007cd4:	0004b703          	ld	a4,0(s1)
    80007cd8:	00f70e63          	beq	a4,a5,80007cf4 <uartputc+0xdc>
    80007cdc:	00564683          	lbu	a3,5(a2)
    80007ce0:	01f7f713          	andi	a4,a5,31
    80007ce4:	00e58733          	add	a4,a1,a4
    80007ce8:	0206f693          	andi	a3,a3,32
    80007cec:	00178793          	addi	a5,a5,1
    80007cf0:	fc069ae3          	bnez	a3,80007cc4 <uartputc+0xac>
    80007cf4:	02813083          	ld	ra,40(sp)
    80007cf8:	02013403          	ld	s0,32(sp)
    80007cfc:	01813483          	ld	s1,24(sp)
    80007d00:	01013903          	ld	s2,16(sp)
    80007d04:	00813983          	ld	s3,8(sp)
    80007d08:	03010113          	addi	sp,sp,48
    80007d0c:	00008067          	ret

0000000080007d10 <uartputc_sync>:
    80007d10:	ff010113          	addi	sp,sp,-16
    80007d14:	00813423          	sd	s0,8(sp)
    80007d18:	01010413          	addi	s0,sp,16
    80007d1c:	00004717          	auipc	a4,0x4
    80007d20:	ebc72703          	lw	a4,-324(a4) # 8000bbd8 <panicked>
    80007d24:	02071663          	bnez	a4,80007d50 <uartputc_sync+0x40>
    80007d28:	00050793          	mv	a5,a0
    80007d2c:	100006b7          	lui	a3,0x10000
    80007d30:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007d34:	02077713          	andi	a4,a4,32
    80007d38:	fe070ce3          	beqz	a4,80007d30 <uartputc_sync+0x20>
    80007d3c:	0ff7f793          	andi	a5,a5,255
    80007d40:	00f68023          	sb	a5,0(a3)
    80007d44:	00813403          	ld	s0,8(sp)
    80007d48:	01010113          	addi	sp,sp,16
    80007d4c:	00008067          	ret
    80007d50:	0000006f          	j	80007d50 <uartputc_sync+0x40>

0000000080007d54 <uartstart>:
    80007d54:	ff010113          	addi	sp,sp,-16
    80007d58:	00813423          	sd	s0,8(sp)
    80007d5c:	01010413          	addi	s0,sp,16
    80007d60:	00004617          	auipc	a2,0x4
    80007d64:	e8060613          	addi	a2,a2,-384 # 8000bbe0 <uart_tx_r>
    80007d68:	00004517          	auipc	a0,0x4
    80007d6c:	e8050513          	addi	a0,a0,-384 # 8000bbe8 <uart_tx_w>
    80007d70:	00063783          	ld	a5,0(a2)
    80007d74:	00053703          	ld	a4,0(a0)
    80007d78:	04f70263          	beq	a4,a5,80007dbc <uartstart+0x68>
    80007d7c:	100005b7          	lui	a1,0x10000
    80007d80:	00009817          	auipc	a6,0x9
    80007d84:	1c080813          	addi	a6,a6,448 # 80010f40 <uart_tx_buf>
    80007d88:	01c0006f          	j	80007da4 <uartstart+0x50>
    80007d8c:	0006c703          	lbu	a4,0(a3)
    80007d90:	00f63023          	sd	a5,0(a2)
    80007d94:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007d98:	00063783          	ld	a5,0(a2)
    80007d9c:	00053703          	ld	a4,0(a0)
    80007da0:	00f70e63          	beq	a4,a5,80007dbc <uartstart+0x68>
    80007da4:	01f7f713          	andi	a4,a5,31
    80007da8:	00e806b3          	add	a3,a6,a4
    80007dac:	0055c703          	lbu	a4,5(a1)
    80007db0:	00178793          	addi	a5,a5,1
    80007db4:	02077713          	andi	a4,a4,32
    80007db8:	fc071ae3          	bnez	a4,80007d8c <uartstart+0x38>
    80007dbc:	00813403          	ld	s0,8(sp)
    80007dc0:	01010113          	addi	sp,sp,16
    80007dc4:	00008067          	ret

0000000080007dc8 <uartgetc>:
    80007dc8:	ff010113          	addi	sp,sp,-16
    80007dcc:	00813423          	sd	s0,8(sp)
    80007dd0:	01010413          	addi	s0,sp,16
    80007dd4:	10000737          	lui	a4,0x10000
    80007dd8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007ddc:	0017f793          	andi	a5,a5,1
    80007de0:	00078c63          	beqz	a5,80007df8 <uartgetc+0x30>
    80007de4:	00074503          	lbu	a0,0(a4)
    80007de8:	0ff57513          	andi	a0,a0,255
    80007dec:	00813403          	ld	s0,8(sp)
    80007df0:	01010113          	addi	sp,sp,16
    80007df4:	00008067          	ret
    80007df8:	fff00513          	li	a0,-1
    80007dfc:	ff1ff06f          	j	80007dec <uartgetc+0x24>

0000000080007e00 <uartintr>:
    80007e00:	100007b7          	lui	a5,0x10000
    80007e04:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007e08:	0017f793          	andi	a5,a5,1
    80007e0c:	0a078463          	beqz	a5,80007eb4 <uartintr+0xb4>
    80007e10:	fe010113          	addi	sp,sp,-32
    80007e14:	00813823          	sd	s0,16(sp)
    80007e18:	00913423          	sd	s1,8(sp)
    80007e1c:	00113c23          	sd	ra,24(sp)
    80007e20:	02010413          	addi	s0,sp,32
    80007e24:	100004b7          	lui	s1,0x10000
    80007e28:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007e2c:	0ff57513          	andi	a0,a0,255
    80007e30:	fffff097          	auipc	ra,0xfffff
    80007e34:	534080e7          	jalr	1332(ra) # 80007364 <consoleintr>
    80007e38:	0054c783          	lbu	a5,5(s1)
    80007e3c:	0017f793          	andi	a5,a5,1
    80007e40:	fe0794e3          	bnez	a5,80007e28 <uartintr+0x28>
    80007e44:	00004617          	auipc	a2,0x4
    80007e48:	d9c60613          	addi	a2,a2,-612 # 8000bbe0 <uart_tx_r>
    80007e4c:	00004517          	auipc	a0,0x4
    80007e50:	d9c50513          	addi	a0,a0,-612 # 8000bbe8 <uart_tx_w>
    80007e54:	00063783          	ld	a5,0(a2)
    80007e58:	00053703          	ld	a4,0(a0)
    80007e5c:	04f70263          	beq	a4,a5,80007ea0 <uartintr+0xa0>
    80007e60:	100005b7          	lui	a1,0x10000
    80007e64:	00009817          	auipc	a6,0x9
    80007e68:	0dc80813          	addi	a6,a6,220 # 80010f40 <uart_tx_buf>
    80007e6c:	01c0006f          	j	80007e88 <uartintr+0x88>
    80007e70:	0006c703          	lbu	a4,0(a3)
    80007e74:	00f63023          	sd	a5,0(a2)
    80007e78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007e7c:	00063783          	ld	a5,0(a2)
    80007e80:	00053703          	ld	a4,0(a0)
    80007e84:	00f70e63          	beq	a4,a5,80007ea0 <uartintr+0xa0>
    80007e88:	01f7f713          	andi	a4,a5,31
    80007e8c:	00e806b3          	add	a3,a6,a4
    80007e90:	0055c703          	lbu	a4,5(a1)
    80007e94:	00178793          	addi	a5,a5,1
    80007e98:	02077713          	andi	a4,a4,32
    80007e9c:	fc071ae3          	bnez	a4,80007e70 <uartintr+0x70>
    80007ea0:	01813083          	ld	ra,24(sp)
    80007ea4:	01013403          	ld	s0,16(sp)
    80007ea8:	00813483          	ld	s1,8(sp)
    80007eac:	02010113          	addi	sp,sp,32
    80007eb0:	00008067          	ret
    80007eb4:	00004617          	auipc	a2,0x4
    80007eb8:	d2c60613          	addi	a2,a2,-724 # 8000bbe0 <uart_tx_r>
    80007ebc:	00004517          	auipc	a0,0x4
    80007ec0:	d2c50513          	addi	a0,a0,-724 # 8000bbe8 <uart_tx_w>
    80007ec4:	00063783          	ld	a5,0(a2)
    80007ec8:	00053703          	ld	a4,0(a0)
    80007ecc:	04f70263          	beq	a4,a5,80007f10 <uartintr+0x110>
    80007ed0:	100005b7          	lui	a1,0x10000
    80007ed4:	00009817          	auipc	a6,0x9
    80007ed8:	06c80813          	addi	a6,a6,108 # 80010f40 <uart_tx_buf>
    80007edc:	01c0006f          	j	80007ef8 <uartintr+0xf8>
    80007ee0:	0006c703          	lbu	a4,0(a3)
    80007ee4:	00f63023          	sd	a5,0(a2)
    80007ee8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007eec:	00063783          	ld	a5,0(a2)
    80007ef0:	00053703          	ld	a4,0(a0)
    80007ef4:	02f70063          	beq	a4,a5,80007f14 <uartintr+0x114>
    80007ef8:	01f7f713          	andi	a4,a5,31
    80007efc:	00e806b3          	add	a3,a6,a4
    80007f00:	0055c703          	lbu	a4,5(a1)
    80007f04:	00178793          	addi	a5,a5,1
    80007f08:	02077713          	andi	a4,a4,32
    80007f0c:	fc071ae3          	bnez	a4,80007ee0 <uartintr+0xe0>
    80007f10:	00008067          	ret
    80007f14:	00008067          	ret

0000000080007f18 <kinit>:
    80007f18:	fc010113          	addi	sp,sp,-64
    80007f1c:	02913423          	sd	s1,40(sp)
    80007f20:	fffff7b7          	lui	a5,0xfffff
    80007f24:	0000a497          	auipc	s1,0xa
    80007f28:	03b48493          	addi	s1,s1,59 # 80011f5f <end+0xfff>
    80007f2c:	02813823          	sd	s0,48(sp)
    80007f30:	01313c23          	sd	s3,24(sp)
    80007f34:	00f4f4b3          	and	s1,s1,a5
    80007f38:	02113c23          	sd	ra,56(sp)
    80007f3c:	03213023          	sd	s2,32(sp)
    80007f40:	01413823          	sd	s4,16(sp)
    80007f44:	01513423          	sd	s5,8(sp)
    80007f48:	04010413          	addi	s0,sp,64
    80007f4c:	000017b7          	lui	a5,0x1
    80007f50:	01100993          	li	s3,17
    80007f54:	00f487b3          	add	a5,s1,a5
    80007f58:	01b99993          	slli	s3,s3,0x1b
    80007f5c:	06f9e063          	bltu	s3,a5,80007fbc <kinit+0xa4>
    80007f60:	00009a97          	auipc	s5,0x9
    80007f64:	000a8a93          	mv	s5,s5
    80007f68:	0754ec63          	bltu	s1,s5,80007fe0 <kinit+0xc8>
    80007f6c:	0734fa63          	bgeu	s1,s3,80007fe0 <kinit+0xc8>
    80007f70:	00088a37          	lui	s4,0x88
    80007f74:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007f78:	00004917          	auipc	s2,0x4
    80007f7c:	c7890913          	addi	s2,s2,-904 # 8000bbf0 <kmem>
    80007f80:	00ca1a13          	slli	s4,s4,0xc
    80007f84:	0140006f          	j	80007f98 <kinit+0x80>
    80007f88:	000017b7          	lui	a5,0x1
    80007f8c:	00f484b3          	add	s1,s1,a5
    80007f90:	0554e863          	bltu	s1,s5,80007fe0 <kinit+0xc8>
    80007f94:	0534f663          	bgeu	s1,s3,80007fe0 <kinit+0xc8>
    80007f98:	00001637          	lui	a2,0x1
    80007f9c:	00100593          	li	a1,1
    80007fa0:	00048513          	mv	a0,s1
    80007fa4:	00000097          	auipc	ra,0x0
    80007fa8:	5e4080e7          	jalr	1508(ra) # 80008588 <__memset>
    80007fac:	00093783          	ld	a5,0(s2)
    80007fb0:	00f4b023          	sd	a5,0(s1)
    80007fb4:	00993023          	sd	s1,0(s2)
    80007fb8:	fd4498e3          	bne	s1,s4,80007f88 <kinit+0x70>
    80007fbc:	03813083          	ld	ra,56(sp)
    80007fc0:	03013403          	ld	s0,48(sp)
    80007fc4:	02813483          	ld	s1,40(sp)
    80007fc8:	02013903          	ld	s2,32(sp)
    80007fcc:	01813983          	ld	s3,24(sp)
    80007fd0:	01013a03          	ld	s4,16(sp)
    80007fd4:	00813a83          	ld	s5,8(sp)
    80007fd8:	04010113          	addi	sp,sp,64
    80007fdc:	00008067          	ret
    80007fe0:	00001517          	auipc	a0,0x1
    80007fe4:	72850513          	addi	a0,a0,1832 # 80009708 <digits+0x18>
    80007fe8:	fffff097          	auipc	ra,0xfffff
    80007fec:	4b4080e7          	jalr	1204(ra) # 8000749c <panic>

0000000080007ff0 <freerange>:
    80007ff0:	fc010113          	addi	sp,sp,-64
    80007ff4:	000017b7          	lui	a5,0x1
    80007ff8:	02913423          	sd	s1,40(sp)
    80007ffc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008000:	009504b3          	add	s1,a0,s1
    80008004:	fffff537          	lui	a0,0xfffff
    80008008:	02813823          	sd	s0,48(sp)
    8000800c:	02113c23          	sd	ra,56(sp)
    80008010:	03213023          	sd	s2,32(sp)
    80008014:	01313c23          	sd	s3,24(sp)
    80008018:	01413823          	sd	s4,16(sp)
    8000801c:	01513423          	sd	s5,8(sp)
    80008020:	01613023          	sd	s6,0(sp)
    80008024:	04010413          	addi	s0,sp,64
    80008028:	00a4f4b3          	and	s1,s1,a0
    8000802c:	00f487b3          	add	a5,s1,a5
    80008030:	06f5e463          	bltu	a1,a5,80008098 <freerange+0xa8>
    80008034:	00009a97          	auipc	s5,0x9
    80008038:	f2ca8a93          	addi	s5,s5,-212 # 80010f60 <end>
    8000803c:	0954e263          	bltu	s1,s5,800080c0 <freerange+0xd0>
    80008040:	01100993          	li	s3,17
    80008044:	01b99993          	slli	s3,s3,0x1b
    80008048:	0734fc63          	bgeu	s1,s3,800080c0 <freerange+0xd0>
    8000804c:	00058a13          	mv	s4,a1
    80008050:	00004917          	auipc	s2,0x4
    80008054:	ba090913          	addi	s2,s2,-1120 # 8000bbf0 <kmem>
    80008058:	00002b37          	lui	s6,0x2
    8000805c:	0140006f          	j	80008070 <freerange+0x80>
    80008060:	000017b7          	lui	a5,0x1
    80008064:	00f484b3          	add	s1,s1,a5
    80008068:	0554ec63          	bltu	s1,s5,800080c0 <freerange+0xd0>
    8000806c:	0534fa63          	bgeu	s1,s3,800080c0 <freerange+0xd0>
    80008070:	00001637          	lui	a2,0x1
    80008074:	00100593          	li	a1,1
    80008078:	00048513          	mv	a0,s1
    8000807c:	00000097          	auipc	ra,0x0
    80008080:	50c080e7          	jalr	1292(ra) # 80008588 <__memset>
    80008084:	00093703          	ld	a4,0(s2)
    80008088:	016487b3          	add	a5,s1,s6
    8000808c:	00e4b023          	sd	a4,0(s1)
    80008090:	00993023          	sd	s1,0(s2)
    80008094:	fcfa76e3          	bgeu	s4,a5,80008060 <freerange+0x70>
    80008098:	03813083          	ld	ra,56(sp)
    8000809c:	03013403          	ld	s0,48(sp)
    800080a0:	02813483          	ld	s1,40(sp)
    800080a4:	02013903          	ld	s2,32(sp)
    800080a8:	01813983          	ld	s3,24(sp)
    800080ac:	01013a03          	ld	s4,16(sp)
    800080b0:	00813a83          	ld	s5,8(sp)
    800080b4:	00013b03          	ld	s6,0(sp)
    800080b8:	04010113          	addi	sp,sp,64
    800080bc:	00008067          	ret
    800080c0:	00001517          	auipc	a0,0x1
    800080c4:	64850513          	addi	a0,a0,1608 # 80009708 <digits+0x18>
    800080c8:	fffff097          	auipc	ra,0xfffff
    800080cc:	3d4080e7          	jalr	980(ra) # 8000749c <panic>

00000000800080d0 <kfree>:
    800080d0:	fe010113          	addi	sp,sp,-32
    800080d4:	00813823          	sd	s0,16(sp)
    800080d8:	00113c23          	sd	ra,24(sp)
    800080dc:	00913423          	sd	s1,8(sp)
    800080e0:	02010413          	addi	s0,sp,32
    800080e4:	03451793          	slli	a5,a0,0x34
    800080e8:	04079c63          	bnez	a5,80008140 <kfree+0x70>
    800080ec:	00009797          	auipc	a5,0x9
    800080f0:	e7478793          	addi	a5,a5,-396 # 80010f60 <end>
    800080f4:	00050493          	mv	s1,a0
    800080f8:	04f56463          	bltu	a0,a5,80008140 <kfree+0x70>
    800080fc:	01100793          	li	a5,17
    80008100:	01b79793          	slli	a5,a5,0x1b
    80008104:	02f57e63          	bgeu	a0,a5,80008140 <kfree+0x70>
    80008108:	00001637          	lui	a2,0x1
    8000810c:	00100593          	li	a1,1
    80008110:	00000097          	auipc	ra,0x0
    80008114:	478080e7          	jalr	1144(ra) # 80008588 <__memset>
    80008118:	00004797          	auipc	a5,0x4
    8000811c:	ad878793          	addi	a5,a5,-1320 # 8000bbf0 <kmem>
    80008120:	0007b703          	ld	a4,0(a5)
    80008124:	01813083          	ld	ra,24(sp)
    80008128:	01013403          	ld	s0,16(sp)
    8000812c:	00e4b023          	sd	a4,0(s1)
    80008130:	0097b023          	sd	s1,0(a5)
    80008134:	00813483          	ld	s1,8(sp)
    80008138:	02010113          	addi	sp,sp,32
    8000813c:	00008067          	ret
    80008140:	00001517          	auipc	a0,0x1
    80008144:	5c850513          	addi	a0,a0,1480 # 80009708 <digits+0x18>
    80008148:	fffff097          	auipc	ra,0xfffff
    8000814c:	354080e7          	jalr	852(ra) # 8000749c <panic>

0000000080008150 <kalloc>:
    80008150:	fe010113          	addi	sp,sp,-32
    80008154:	00813823          	sd	s0,16(sp)
    80008158:	00913423          	sd	s1,8(sp)
    8000815c:	00113c23          	sd	ra,24(sp)
    80008160:	02010413          	addi	s0,sp,32
    80008164:	00004797          	auipc	a5,0x4
    80008168:	a8c78793          	addi	a5,a5,-1396 # 8000bbf0 <kmem>
    8000816c:	0007b483          	ld	s1,0(a5)
    80008170:	02048063          	beqz	s1,80008190 <kalloc+0x40>
    80008174:	0004b703          	ld	a4,0(s1)
    80008178:	00001637          	lui	a2,0x1
    8000817c:	00500593          	li	a1,5
    80008180:	00048513          	mv	a0,s1
    80008184:	00e7b023          	sd	a4,0(a5)
    80008188:	00000097          	auipc	ra,0x0
    8000818c:	400080e7          	jalr	1024(ra) # 80008588 <__memset>
    80008190:	01813083          	ld	ra,24(sp)
    80008194:	01013403          	ld	s0,16(sp)
    80008198:	00048513          	mv	a0,s1
    8000819c:	00813483          	ld	s1,8(sp)
    800081a0:	02010113          	addi	sp,sp,32
    800081a4:	00008067          	ret

00000000800081a8 <initlock>:
    800081a8:	ff010113          	addi	sp,sp,-16
    800081ac:	00813423          	sd	s0,8(sp)
    800081b0:	01010413          	addi	s0,sp,16
    800081b4:	00813403          	ld	s0,8(sp)
    800081b8:	00b53423          	sd	a1,8(a0)
    800081bc:	00052023          	sw	zero,0(a0)
    800081c0:	00053823          	sd	zero,16(a0)
    800081c4:	01010113          	addi	sp,sp,16
    800081c8:	00008067          	ret

00000000800081cc <acquire>:
    800081cc:	fe010113          	addi	sp,sp,-32
    800081d0:	00813823          	sd	s0,16(sp)
    800081d4:	00913423          	sd	s1,8(sp)
    800081d8:	00113c23          	sd	ra,24(sp)
    800081dc:	01213023          	sd	s2,0(sp)
    800081e0:	02010413          	addi	s0,sp,32
    800081e4:	00050493          	mv	s1,a0
    800081e8:	10002973          	csrr	s2,sstatus
    800081ec:	100027f3          	csrr	a5,sstatus
    800081f0:	ffd7f793          	andi	a5,a5,-3
    800081f4:	10079073          	csrw	sstatus,a5
    800081f8:	fffff097          	auipc	ra,0xfffff
    800081fc:	8e4080e7          	jalr	-1820(ra) # 80006adc <mycpu>
    80008200:	07852783          	lw	a5,120(a0)
    80008204:	06078e63          	beqz	a5,80008280 <acquire+0xb4>
    80008208:	fffff097          	auipc	ra,0xfffff
    8000820c:	8d4080e7          	jalr	-1836(ra) # 80006adc <mycpu>
    80008210:	07852783          	lw	a5,120(a0)
    80008214:	0004a703          	lw	a4,0(s1)
    80008218:	0017879b          	addiw	a5,a5,1
    8000821c:	06f52c23          	sw	a5,120(a0)
    80008220:	04071063          	bnez	a4,80008260 <acquire+0x94>
    80008224:	00100713          	li	a4,1
    80008228:	00070793          	mv	a5,a4
    8000822c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008230:	0007879b          	sext.w	a5,a5
    80008234:	fe079ae3          	bnez	a5,80008228 <acquire+0x5c>
    80008238:	0ff0000f          	fence
    8000823c:	fffff097          	auipc	ra,0xfffff
    80008240:	8a0080e7          	jalr	-1888(ra) # 80006adc <mycpu>
    80008244:	01813083          	ld	ra,24(sp)
    80008248:	01013403          	ld	s0,16(sp)
    8000824c:	00a4b823          	sd	a0,16(s1)
    80008250:	00013903          	ld	s2,0(sp)
    80008254:	00813483          	ld	s1,8(sp)
    80008258:	02010113          	addi	sp,sp,32
    8000825c:	00008067          	ret
    80008260:	0104b903          	ld	s2,16(s1)
    80008264:	fffff097          	auipc	ra,0xfffff
    80008268:	878080e7          	jalr	-1928(ra) # 80006adc <mycpu>
    8000826c:	faa91ce3          	bne	s2,a0,80008224 <acquire+0x58>
    80008270:	00001517          	auipc	a0,0x1
    80008274:	4a050513          	addi	a0,a0,1184 # 80009710 <digits+0x20>
    80008278:	fffff097          	auipc	ra,0xfffff
    8000827c:	224080e7          	jalr	548(ra) # 8000749c <panic>
    80008280:	00195913          	srli	s2,s2,0x1
    80008284:	fffff097          	auipc	ra,0xfffff
    80008288:	858080e7          	jalr	-1960(ra) # 80006adc <mycpu>
    8000828c:	00197913          	andi	s2,s2,1
    80008290:	07252e23          	sw	s2,124(a0)
    80008294:	f75ff06f          	j	80008208 <acquire+0x3c>

0000000080008298 <release>:
    80008298:	fe010113          	addi	sp,sp,-32
    8000829c:	00813823          	sd	s0,16(sp)
    800082a0:	00113c23          	sd	ra,24(sp)
    800082a4:	00913423          	sd	s1,8(sp)
    800082a8:	01213023          	sd	s2,0(sp)
    800082ac:	02010413          	addi	s0,sp,32
    800082b0:	00052783          	lw	a5,0(a0)
    800082b4:	00079a63          	bnez	a5,800082c8 <release+0x30>
    800082b8:	00001517          	auipc	a0,0x1
    800082bc:	46050513          	addi	a0,a0,1120 # 80009718 <digits+0x28>
    800082c0:	fffff097          	auipc	ra,0xfffff
    800082c4:	1dc080e7          	jalr	476(ra) # 8000749c <panic>
    800082c8:	01053903          	ld	s2,16(a0)
    800082cc:	00050493          	mv	s1,a0
    800082d0:	fffff097          	auipc	ra,0xfffff
    800082d4:	80c080e7          	jalr	-2036(ra) # 80006adc <mycpu>
    800082d8:	fea910e3          	bne	s2,a0,800082b8 <release+0x20>
    800082dc:	0004b823          	sd	zero,16(s1)
    800082e0:	0ff0000f          	fence
    800082e4:	0f50000f          	fence	iorw,ow
    800082e8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800082ec:	ffffe097          	auipc	ra,0xffffe
    800082f0:	7f0080e7          	jalr	2032(ra) # 80006adc <mycpu>
    800082f4:	100027f3          	csrr	a5,sstatus
    800082f8:	0027f793          	andi	a5,a5,2
    800082fc:	04079a63          	bnez	a5,80008350 <release+0xb8>
    80008300:	07852783          	lw	a5,120(a0)
    80008304:	02f05e63          	blez	a5,80008340 <release+0xa8>
    80008308:	fff7871b          	addiw	a4,a5,-1
    8000830c:	06e52c23          	sw	a4,120(a0)
    80008310:	00071c63          	bnez	a4,80008328 <release+0x90>
    80008314:	07c52783          	lw	a5,124(a0)
    80008318:	00078863          	beqz	a5,80008328 <release+0x90>
    8000831c:	100027f3          	csrr	a5,sstatus
    80008320:	0027e793          	ori	a5,a5,2
    80008324:	10079073          	csrw	sstatus,a5
    80008328:	01813083          	ld	ra,24(sp)
    8000832c:	01013403          	ld	s0,16(sp)
    80008330:	00813483          	ld	s1,8(sp)
    80008334:	00013903          	ld	s2,0(sp)
    80008338:	02010113          	addi	sp,sp,32
    8000833c:	00008067          	ret
    80008340:	00001517          	auipc	a0,0x1
    80008344:	3f850513          	addi	a0,a0,1016 # 80009738 <digits+0x48>
    80008348:	fffff097          	auipc	ra,0xfffff
    8000834c:	154080e7          	jalr	340(ra) # 8000749c <panic>
    80008350:	00001517          	auipc	a0,0x1
    80008354:	3d050513          	addi	a0,a0,976 # 80009720 <digits+0x30>
    80008358:	fffff097          	auipc	ra,0xfffff
    8000835c:	144080e7          	jalr	324(ra) # 8000749c <panic>

0000000080008360 <holding>:
    80008360:	00052783          	lw	a5,0(a0)
    80008364:	00079663          	bnez	a5,80008370 <holding+0x10>
    80008368:	00000513          	li	a0,0
    8000836c:	00008067          	ret
    80008370:	fe010113          	addi	sp,sp,-32
    80008374:	00813823          	sd	s0,16(sp)
    80008378:	00913423          	sd	s1,8(sp)
    8000837c:	00113c23          	sd	ra,24(sp)
    80008380:	02010413          	addi	s0,sp,32
    80008384:	01053483          	ld	s1,16(a0)
    80008388:	ffffe097          	auipc	ra,0xffffe
    8000838c:	754080e7          	jalr	1876(ra) # 80006adc <mycpu>
    80008390:	01813083          	ld	ra,24(sp)
    80008394:	01013403          	ld	s0,16(sp)
    80008398:	40a48533          	sub	a0,s1,a0
    8000839c:	00153513          	seqz	a0,a0
    800083a0:	00813483          	ld	s1,8(sp)
    800083a4:	02010113          	addi	sp,sp,32
    800083a8:	00008067          	ret

00000000800083ac <push_off>:
    800083ac:	fe010113          	addi	sp,sp,-32
    800083b0:	00813823          	sd	s0,16(sp)
    800083b4:	00113c23          	sd	ra,24(sp)
    800083b8:	00913423          	sd	s1,8(sp)
    800083bc:	02010413          	addi	s0,sp,32
    800083c0:	100024f3          	csrr	s1,sstatus
    800083c4:	100027f3          	csrr	a5,sstatus
    800083c8:	ffd7f793          	andi	a5,a5,-3
    800083cc:	10079073          	csrw	sstatus,a5
    800083d0:	ffffe097          	auipc	ra,0xffffe
    800083d4:	70c080e7          	jalr	1804(ra) # 80006adc <mycpu>
    800083d8:	07852783          	lw	a5,120(a0)
    800083dc:	02078663          	beqz	a5,80008408 <push_off+0x5c>
    800083e0:	ffffe097          	auipc	ra,0xffffe
    800083e4:	6fc080e7          	jalr	1788(ra) # 80006adc <mycpu>
    800083e8:	07852783          	lw	a5,120(a0)
    800083ec:	01813083          	ld	ra,24(sp)
    800083f0:	01013403          	ld	s0,16(sp)
    800083f4:	0017879b          	addiw	a5,a5,1
    800083f8:	06f52c23          	sw	a5,120(a0)
    800083fc:	00813483          	ld	s1,8(sp)
    80008400:	02010113          	addi	sp,sp,32
    80008404:	00008067          	ret
    80008408:	0014d493          	srli	s1,s1,0x1
    8000840c:	ffffe097          	auipc	ra,0xffffe
    80008410:	6d0080e7          	jalr	1744(ra) # 80006adc <mycpu>
    80008414:	0014f493          	andi	s1,s1,1
    80008418:	06952e23          	sw	s1,124(a0)
    8000841c:	fc5ff06f          	j	800083e0 <push_off+0x34>

0000000080008420 <pop_off>:
    80008420:	ff010113          	addi	sp,sp,-16
    80008424:	00813023          	sd	s0,0(sp)
    80008428:	00113423          	sd	ra,8(sp)
    8000842c:	01010413          	addi	s0,sp,16
    80008430:	ffffe097          	auipc	ra,0xffffe
    80008434:	6ac080e7          	jalr	1708(ra) # 80006adc <mycpu>
    80008438:	100027f3          	csrr	a5,sstatus
    8000843c:	0027f793          	andi	a5,a5,2
    80008440:	04079663          	bnez	a5,8000848c <pop_off+0x6c>
    80008444:	07852783          	lw	a5,120(a0)
    80008448:	02f05a63          	blez	a5,8000847c <pop_off+0x5c>
    8000844c:	fff7871b          	addiw	a4,a5,-1
    80008450:	06e52c23          	sw	a4,120(a0)
    80008454:	00071c63          	bnez	a4,8000846c <pop_off+0x4c>
    80008458:	07c52783          	lw	a5,124(a0)
    8000845c:	00078863          	beqz	a5,8000846c <pop_off+0x4c>
    80008460:	100027f3          	csrr	a5,sstatus
    80008464:	0027e793          	ori	a5,a5,2
    80008468:	10079073          	csrw	sstatus,a5
    8000846c:	00813083          	ld	ra,8(sp)
    80008470:	00013403          	ld	s0,0(sp)
    80008474:	01010113          	addi	sp,sp,16
    80008478:	00008067          	ret
    8000847c:	00001517          	auipc	a0,0x1
    80008480:	2bc50513          	addi	a0,a0,700 # 80009738 <digits+0x48>
    80008484:	fffff097          	auipc	ra,0xfffff
    80008488:	018080e7          	jalr	24(ra) # 8000749c <panic>
    8000848c:	00001517          	auipc	a0,0x1
    80008490:	29450513          	addi	a0,a0,660 # 80009720 <digits+0x30>
    80008494:	fffff097          	auipc	ra,0xfffff
    80008498:	008080e7          	jalr	8(ra) # 8000749c <panic>

000000008000849c <push_on>:
    8000849c:	fe010113          	addi	sp,sp,-32
    800084a0:	00813823          	sd	s0,16(sp)
    800084a4:	00113c23          	sd	ra,24(sp)
    800084a8:	00913423          	sd	s1,8(sp)
    800084ac:	02010413          	addi	s0,sp,32
    800084b0:	100024f3          	csrr	s1,sstatus
    800084b4:	100027f3          	csrr	a5,sstatus
    800084b8:	0027e793          	ori	a5,a5,2
    800084bc:	10079073          	csrw	sstatus,a5
    800084c0:	ffffe097          	auipc	ra,0xffffe
    800084c4:	61c080e7          	jalr	1564(ra) # 80006adc <mycpu>
    800084c8:	07852783          	lw	a5,120(a0)
    800084cc:	02078663          	beqz	a5,800084f8 <push_on+0x5c>
    800084d0:	ffffe097          	auipc	ra,0xffffe
    800084d4:	60c080e7          	jalr	1548(ra) # 80006adc <mycpu>
    800084d8:	07852783          	lw	a5,120(a0)
    800084dc:	01813083          	ld	ra,24(sp)
    800084e0:	01013403          	ld	s0,16(sp)
    800084e4:	0017879b          	addiw	a5,a5,1
    800084e8:	06f52c23          	sw	a5,120(a0)
    800084ec:	00813483          	ld	s1,8(sp)
    800084f0:	02010113          	addi	sp,sp,32
    800084f4:	00008067          	ret
    800084f8:	0014d493          	srli	s1,s1,0x1
    800084fc:	ffffe097          	auipc	ra,0xffffe
    80008500:	5e0080e7          	jalr	1504(ra) # 80006adc <mycpu>
    80008504:	0014f493          	andi	s1,s1,1
    80008508:	06952e23          	sw	s1,124(a0)
    8000850c:	fc5ff06f          	j	800084d0 <push_on+0x34>

0000000080008510 <pop_on>:
    80008510:	ff010113          	addi	sp,sp,-16
    80008514:	00813023          	sd	s0,0(sp)
    80008518:	00113423          	sd	ra,8(sp)
    8000851c:	01010413          	addi	s0,sp,16
    80008520:	ffffe097          	auipc	ra,0xffffe
    80008524:	5bc080e7          	jalr	1468(ra) # 80006adc <mycpu>
    80008528:	100027f3          	csrr	a5,sstatus
    8000852c:	0027f793          	andi	a5,a5,2
    80008530:	04078463          	beqz	a5,80008578 <pop_on+0x68>
    80008534:	07852783          	lw	a5,120(a0)
    80008538:	02f05863          	blez	a5,80008568 <pop_on+0x58>
    8000853c:	fff7879b          	addiw	a5,a5,-1
    80008540:	06f52c23          	sw	a5,120(a0)
    80008544:	07853783          	ld	a5,120(a0)
    80008548:	00079863          	bnez	a5,80008558 <pop_on+0x48>
    8000854c:	100027f3          	csrr	a5,sstatus
    80008550:	ffd7f793          	andi	a5,a5,-3
    80008554:	10079073          	csrw	sstatus,a5
    80008558:	00813083          	ld	ra,8(sp)
    8000855c:	00013403          	ld	s0,0(sp)
    80008560:	01010113          	addi	sp,sp,16
    80008564:	00008067          	ret
    80008568:	00001517          	auipc	a0,0x1
    8000856c:	1f850513          	addi	a0,a0,504 # 80009760 <digits+0x70>
    80008570:	fffff097          	auipc	ra,0xfffff
    80008574:	f2c080e7          	jalr	-212(ra) # 8000749c <panic>
    80008578:	00001517          	auipc	a0,0x1
    8000857c:	1c850513          	addi	a0,a0,456 # 80009740 <digits+0x50>
    80008580:	fffff097          	auipc	ra,0xfffff
    80008584:	f1c080e7          	jalr	-228(ra) # 8000749c <panic>

0000000080008588 <__memset>:
    80008588:	ff010113          	addi	sp,sp,-16
    8000858c:	00813423          	sd	s0,8(sp)
    80008590:	01010413          	addi	s0,sp,16
    80008594:	1a060e63          	beqz	a2,80008750 <__memset+0x1c8>
    80008598:	40a007b3          	neg	a5,a0
    8000859c:	0077f793          	andi	a5,a5,7
    800085a0:	00778693          	addi	a3,a5,7
    800085a4:	00b00813          	li	a6,11
    800085a8:	0ff5f593          	andi	a1,a1,255
    800085ac:	fff6071b          	addiw	a4,a2,-1
    800085b0:	1b06e663          	bltu	a3,a6,8000875c <__memset+0x1d4>
    800085b4:	1cd76463          	bltu	a4,a3,8000877c <__memset+0x1f4>
    800085b8:	1a078e63          	beqz	a5,80008774 <__memset+0x1ec>
    800085bc:	00b50023          	sb	a1,0(a0)
    800085c0:	00100713          	li	a4,1
    800085c4:	1ae78463          	beq	a5,a4,8000876c <__memset+0x1e4>
    800085c8:	00b500a3          	sb	a1,1(a0)
    800085cc:	00200713          	li	a4,2
    800085d0:	1ae78a63          	beq	a5,a4,80008784 <__memset+0x1fc>
    800085d4:	00b50123          	sb	a1,2(a0)
    800085d8:	00300713          	li	a4,3
    800085dc:	18e78463          	beq	a5,a4,80008764 <__memset+0x1dc>
    800085e0:	00b501a3          	sb	a1,3(a0)
    800085e4:	00400713          	li	a4,4
    800085e8:	1ae78263          	beq	a5,a4,8000878c <__memset+0x204>
    800085ec:	00b50223          	sb	a1,4(a0)
    800085f0:	00500713          	li	a4,5
    800085f4:	1ae78063          	beq	a5,a4,80008794 <__memset+0x20c>
    800085f8:	00b502a3          	sb	a1,5(a0)
    800085fc:	00700713          	li	a4,7
    80008600:	18e79e63          	bne	a5,a4,8000879c <__memset+0x214>
    80008604:	00b50323          	sb	a1,6(a0)
    80008608:	00700e93          	li	t4,7
    8000860c:	00859713          	slli	a4,a1,0x8
    80008610:	00e5e733          	or	a4,a1,a4
    80008614:	01059e13          	slli	t3,a1,0x10
    80008618:	01c76e33          	or	t3,a4,t3
    8000861c:	01859313          	slli	t1,a1,0x18
    80008620:	006e6333          	or	t1,t3,t1
    80008624:	02059893          	slli	a7,a1,0x20
    80008628:	40f60e3b          	subw	t3,a2,a5
    8000862c:	011368b3          	or	a7,t1,a7
    80008630:	02859813          	slli	a6,a1,0x28
    80008634:	0108e833          	or	a6,a7,a6
    80008638:	03059693          	slli	a3,a1,0x30
    8000863c:	003e589b          	srliw	a7,t3,0x3
    80008640:	00d866b3          	or	a3,a6,a3
    80008644:	03859713          	slli	a4,a1,0x38
    80008648:	00389813          	slli	a6,a7,0x3
    8000864c:	00f507b3          	add	a5,a0,a5
    80008650:	00e6e733          	or	a4,a3,a4
    80008654:	000e089b          	sext.w	a7,t3
    80008658:	00f806b3          	add	a3,a6,a5
    8000865c:	00e7b023          	sd	a4,0(a5)
    80008660:	00878793          	addi	a5,a5,8
    80008664:	fed79ce3          	bne	a5,a3,8000865c <__memset+0xd4>
    80008668:	ff8e7793          	andi	a5,t3,-8
    8000866c:	0007871b          	sext.w	a4,a5
    80008670:	01d787bb          	addw	a5,a5,t4
    80008674:	0ce88e63          	beq	a7,a4,80008750 <__memset+0x1c8>
    80008678:	00f50733          	add	a4,a0,a5
    8000867c:	00b70023          	sb	a1,0(a4)
    80008680:	0017871b          	addiw	a4,a5,1
    80008684:	0cc77663          	bgeu	a4,a2,80008750 <__memset+0x1c8>
    80008688:	00e50733          	add	a4,a0,a4
    8000868c:	00b70023          	sb	a1,0(a4)
    80008690:	0027871b          	addiw	a4,a5,2
    80008694:	0ac77e63          	bgeu	a4,a2,80008750 <__memset+0x1c8>
    80008698:	00e50733          	add	a4,a0,a4
    8000869c:	00b70023          	sb	a1,0(a4)
    800086a0:	0037871b          	addiw	a4,a5,3
    800086a4:	0ac77663          	bgeu	a4,a2,80008750 <__memset+0x1c8>
    800086a8:	00e50733          	add	a4,a0,a4
    800086ac:	00b70023          	sb	a1,0(a4)
    800086b0:	0047871b          	addiw	a4,a5,4
    800086b4:	08c77e63          	bgeu	a4,a2,80008750 <__memset+0x1c8>
    800086b8:	00e50733          	add	a4,a0,a4
    800086bc:	00b70023          	sb	a1,0(a4)
    800086c0:	0057871b          	addiw	a4,a5,5
    800086c4:	08c77663          	bgeu	a4,a2,80008750 <__memset+0x1c8>
    800086c8:	00e50733          	add	a4,a0,a4
    800086cc:	00b70023          	sb	a1,0(a4)
    800086d0:	0067871b          	addiw	a4,a5,6
    800086d4:	06c77e63          	bgeu	a4,a2,80008750 <__memset+0x1c8>
    800086d8:	00e50733          	add	a4,a0,a4
    800086dc:	00b70023          	sb	a1,0(a4)
    800086e0:	0077871b          	addiw	a4,a5,7
    800086e4:	06c77663          	bgeu	a4,a2,80008750 <__memset+0x1c8>
    800086e8:	00e50733          	add	a4,a0,a4
    800086ec:	00b70023          	sb	a1,0(a4)
    800086f0:	0087871b          	addiw	a4,a5,8
    800086f4:	04c77e63          	bgeu	a4,a2,80008750 <__memset+0x1c8>
    800086f8:	00e50733          	add	a4,a0,a4
    800086fc:	00b70023          	sb	a1,0(a4)
    80008700:	0097871b          	addiw	a4,a5,9
    80008704:	04c77663          	bgeu	a4,a2,80008750 <__memset+0x1c8>
    80008708:	00e50733          	add	a4,a0,a4
    8000870c:	00b70023          	sb	a1,0(a4)
    80008710:	00a7871b          	addiw	a4,a5,10
    80008714:	02c77e63          	bgeu	a4,a2,80008750 <__memset+0x1c8>
    80008718:	00e50733          	add	a4,a0,a4
    8000871c:	00b70023          	sb	a1,0(a4)
    80008720:	00b7871b          	addiw	a4,a5,11
    80008724:	02c77663          	bgeu	a4,a2,80008750 <__memset+0x1c8>
    80008728:	00e50733          	add	a4,a0,a4
    8000872c:	00b70023          	sb	a1,0(a4)
    80008730:	00c7871b          	addiw	a4,a5,12
    80008734:	00c77e63          	bgeu	a4,a2,80008750 <__memset+0x1c8>
    80008738:	00e50733          	add	a4,a0,a4
    8000873c:	00b70023          	sb	a1,0(a4)
    80008740:	00d7879b          	addiw	a5,a5,13
    80008744:	00c7f663          	bgeu	a5,a2,80008750 <__memset+0x1c8>
    80008748:	00f507b3          	add	a5,a0,a5
    8000874c:	00b78023          	sb	a1,0(a5)
    80008750:	00813403          	ld	s0,8(sp)
    80008754:	01010113          	addi	sp,sp,16
    80008758:	00008067          	ret
    8000875c:	00b00693          	li	a3,11
    80008760:	e55ff06f          	j	800085b4 <__memset+0x2c>
    80008764:	00300e93          	li	t4,3
    80008768:	ea5ff06f          	j	8000860c <__memset+0x84>
    8000876c:	00100e93          	li	t4,1
    80008770:	e9dff06f          	j	8000860c <__memset+0x84>
    80008774:	00000e93          	li	t4,0
    80008778:	e95ff06f          	j	8000860c <__memset+0x84>
    8000877c:	00000793          	li	a5,0
    80008780:	ef9ff06f          	j	80008678 <__memset+0xf0>
    80008784:	00200e93          	li	t4,2
    80008788:	e85ff06f          	j	8000860c <__memset+0x84>
    8000878c:	00400e93          	li	t4,4
    80008790:	e7dff06f          	j	8000860c <__memset+0x84>
    80008794:	00500e93          	li	t4,5
    80008798:	e75ff06f          	j	8000860c <__memset+0x84>
    8000879c:	00600e93          	li	t4,6
    800087a0:	e6dff06f          	j	8000860c <__memset+0x84>

00000000800087a4 <__memmove>:
    800087a4:	ff010113          	addi	sp,sp,-16
    800087a8:	00813423          	sd	s0,8(sp)
    800087ac:	01010413          	addi	s0,sp,16
    800087b0:	0e060863          	beqz	a2,800088a0 <__memmove+0xfc>
    800087b4:	fff6069b          	addiw	a3,a2,-1
    800087b8:	0006881b          	sext.w	a6,a3
    800087bc:	0ea5e863          	bltu	a1,a0,800088ac <__memmove+0x108>
    800087c0:	00758713          	addi	a4,a1,7
    800087c4:	00a5e7b3          	or	a5,a1,a0
    800087c8:	40a70733          	sub	a4,a4,a0
    800087cc:	0077f793          	andi	a5,a5,7
    800087d0:	00f73713          	sltiu	a4,a4,15
    800087d4:	00174713          	xori	a4,a4,1
    800087d8:	0017b793          	seqz	a5,a5
    800087dc:	00e7f7b3          	and	a5,a5,a4
    800087e0:	10078863          	beqz	a5,800088f0 <__memmove+0x14c>
    800087e4:	00900793          	li	a5,9
    800087e8:	1107f463          	bgeu	a5,a6,800088f0 <__memmove+0x14c>
    800087ec:	0036581b          	srliw	a6,a2,0x3
    800087f0:	fff8081b          	addiw	a6,a6,-1
    800087f4:	02081813          	slli	a6,a6,0x20
    800087f8:	01d85893          	srli	a7,a6,0x1d
    800087fc:	00858813          	addi	a6,a1,8
    80008800:	00058793          	mv	a5,a1
    80008804:	00050713          	mv	a4,a0
    80008808:	01088833          	add	a6,a7,a6
    8000880c:	0007b883          	ld	a7,0(a5)
    80008810:	00878793          	addi	a5,a5,8
    80008814:	00870713          	addi	a4,a4,8
    80008818:	ff173c23          	sd	a7,-8(a4)
    8000881c:	ff0798e3          	bne	a5,a6,8000880c <__memmove+0x68>
    80008820:	ff867713          	andi	a4,a2,-8
    80008824:	02071793          	slli	a5,a4,0x20
    80008828:	0207d793          	srli	a5,a5,0x20
    8000882c:	00f585b3          	add	a1,a1,a5
    80008830:	40e686bb          	subw	a3,a3,a4
    80008834:	00f507b3          	add	a5,a0,a5
    80008838:	06e60463          	beq	a2,a4,800088a0 <__memmove+0xfc>
    8000883c:	0005c703          	lbu	a4,0(a1)
    80008840:	00e78023          	sb	a4,0(a5)
    80008844:	04068e63          	beqz	a3,800088a0 <__memmove+0xfc>
    80008848:	0015c603          	lbu	a2,1(a1)
    8000884c:	00100713          	li	a4,1
    80008850:	00c780a3          	sb	a2,1(a5)
    80008854:	04e68663          	beq	a3,a4,800088a0 <__memmove+0xfc>
    80008858:	0025c603          	lbu	a2,2(a1)
    8000885c:	00200713          	li	a4,2
    80008860:	00c78123          	sb	a2,2(a5)
    80008864:	02e68e63          	beq	a3,a4,800088a0 <__memmove+0xfc>
    80008868:	0035c603          	lbu	a2,3(a1)
    8000886c:	00300713          	li	a4,3
    80008870:	00c781a3          	sb	a2,3(a5)
    80008874:	02e68663          	beq	a3,a4,800088a0 <__memmove+0xfc>
    80008878:	0045c603          	lbu	a2,4(a1)
    8000887c:	00400713          	li	a4,4
    80008880:	00c78223          	sb	a2,4(a5)
    80008884:	00e68e63          	beq	a3,a4,800088a0 <__memmove+0xfc>
    80008888:	0055c603          	lbu	a2,5(a1)
    8000888c:	00500713          	li	a4,5
    80008890:	00c782a3          	sb	a2,5(a5)
    80008894:	00e68663          	beq	a3,a4,800088a0 <__memmove+0xfc>
    80008898:	0065c703          	lbu	a4,6(a1)
    8000889c:	00e78323          	sb	a4,6(a5)
    800088a0:	00813403          	ld	s0,8(sp)
    800088a4:	01010113          	addi	sp,sp,16
    800088a8:	00008067          	ret
    800088ac:	02061713          	slli	a4,a2,0x20
    800088b0:	02075713          	srli	a4,a4,0x20
    800088b4:	00e587b3          	add	a5,a1,a4
    800088b8:	f0f574e3          	bgeu	a0,a5,800087c0 <__memmove+0x1c>
    800088bc:	02069613          	slli	a2,a3,0x20
    800088c0:	02065613          	srli	a2,a2,0x20
    800088c4:	fff64613          	not	a2,a2
    800088c8:	00e50733          	add	a4,a0,a4
    800088cc:	00c78633          	add	a2,a5,a2
    800088d0:	fff7c683          	lbu	a3,-1(a5)
    800088d4:	fff78793          	addi	a5,a5,-1
    800088d8:	fff70713          	addi	a4,a4,-1
    800088dc:	00d70023          	sb	a3,0(a4)
    800088e0:	fec798e3          	bne	a5,a2,800088d0 <__memmove+0x12c>
    800088e4:	00813403          	ld	s0,8(sp)
    800088e8:	01010113          	addi	sp,sp,16
    800088ec:	00008067          	ret
    800088f0:	02069713          	slli	a4,a3,0x20
    800088f4:	02075713          	srli	a4,a4,0x20
    800088f8:	00170713          	addi	a4,a4,1
    800088fc:	00e50733          	add	a4,a0,a4
    80008900:	00050793          	mv	a5,a0
    80008904:	0005c683          	lbu	a3,0(a1)
    80008908:	00178793          	addi	a5,a5,1
    8000890c:	00158593          	addi	a1,a1,1
    80008910:	fed78fa3          	sb	a3,-1(a5)
    80008914:	fee798e3          	bne	a5,a4,80008904 <__memmove+0x160>
    80008918:	f89ff06f          	j	800088a0 <__memmove+0xfc>

000000008000891c <__putc>:
    8000891c:	fe010113          	addi	sp,sp,-32
    80008920:	00813823          	sd	s0,16(sp)
    80008924:	00113c23          	sd	ra,24(sp)
    80008928:	02010413          	addi	s0,sp,32
    8000892c:	00050793          	mv	a5,a0
    80008930:	fef40593          	addi	a1,s0,-17
    80008934:	00100613          	li	a2,1
    80008938:	00000513          	li	a0,0
    8000893c:	fef407a3          	sb	a5,-17(s0)
    80008940:	fffff097          	auipc	ra,0xfffff
    80008944:	b3c080e7          	jalr	-1220(ra) # 8000747c <console_write>
    80008948:	01813083          	ld	ra,24(sp)
    8000894c:	01013403          	ld	s0,16(sp)
    80008950:	02010113          	addi	sp,sp,32
    80008954:	00008067          	ret

0000000080008958 <__getc>:
    80008958:	fe010113          	addi	sp,sp,-32
    8000895c:	00813823          	sd	s0,16(sp)
    80008960:	00113c23          	sd	ra,24(sp)
    80008964:	02010413          	addi	s0,sp,32
    80008968:	fe840593          	addi	a1,s0,-24
    8000896c:	00100613          	li	a2,1
    80008970:	00000513          	li	a0,0
    80008974:	fffff097          	auipc	ra,0xfffff
    80008978:	ae8080e7          	jalr	-1304(ra) # 8000745c <console_read>
    8000897c:	fe844503          	lbu	a0,-24(s0)
    80008980:	01813083          	ld	ra,24(sp)
    80008984:	01013403          	ld	s0,16(sp)
    80008988:	02010113          	addi	sp,sp,32
    8000898c:	00008067          	ret

0000000080008990 <console_handler>:
    80008990:	fe010113          	addi	sp,sp,-32
    80008994:	00813823          	sd	s0,16(sp)
    80008998:	00113c23          	sd	ra,24(sp)
    8000899c:	00913423          	sd	s1,8(sp)
    800089a0:	02010413          	addi	s0,sp,32
    800089a4:	14202773          	csrr	a4,scause
    800089a8:	100027f3          	csrr	a5,sstatus
    800089ac:	0027f793          	andi	a5,a5,2
    800089b0:	06079e63          	bnez	a5,80008a2c <console_handler+0x9c>
    800089b4:	00074c63          	bltz	a4,800089cc <console_handler+0x3c>
    800089b8:	01813083          	ld	ra,24(sp)
    800089bc:	01013403          	ld	s0,16(sp)
    800089c0:	00813483          	ld	s1,8(sp)
    800089c4:	02010113          	addi	sp,sp,32
    800089c8:	00008067          	ret
    800089cc:	0ff77713          	andi	a4,a4,255
    800089d0:	00900793          	li	a5,9
    800089d4:	fef712e3          	bne	a4,a5,800089b8 <console_handler+0x28>
    800089d8:	ffffe097          	auipc	ra,0xffffe
    800089dc:	6dc080e7          	jalr	1756(ra) # 800070b4 <plic_claim>
    800089e0:	00a00793          	li	a5,10
    800089e4:	00050493          	mv	s1,a0
    800089e8:	02f50c63          	beq	a0,a5,80008a20 <console_handler+0x90>
    800089ec:	fc0506e3          	beqz	a0,800089b8 <console_handler+0x28>
    800089f0:	00050593          	mv	a1,a0
    800089f4:	00001517          	auipc	a0,0x1
    800089f8:	c7450513          	addi	a0,a0,-908 # 80009668 <_ZL6digits+0x110>
    800089fc:	fffff097          	auipc	ra,0xfffff
    80008a00:	afc080e7          	jalr	-1284(ra) # 800074f8 <__printf>
    80008a04:	01013403          	ld	s0,16(sp)
    80008a08:	01813083          	ld	ra,24(sp)
    80008a0c:	00048513          	mv	a0,s1
    80008a10:	00813483          	ld	s1,8(sp)
    80008a14:	02010113          	addi	sp,sp,32
    80008a18:	ffffe317          	auipc	t1,0xffffe
    80008a1c:	6d430067          	jr	1748(t1) # 800070ec <plic_complete>
    80008a20:	fffff097          	auipc	ra,0xfffff
    80008a24:	3e0080e7          	jalr	992(ra) # 80007e00 <uartintr>
    80008a28:	fddff06f          	j	80008a04 <console_handler+0x74>
    80008a2c:	00001517          	auipc	a0,0x1
    80008a30:	d3c50513          	addi	a0,a0,-708 # 80009768 <digits+0x78>
    80008a34:	fffff097          	auipc	ra,0xfffff
    80008a38:	a68080e7          	jalr	-1432(ra) # 8000749c <panic>
	...
