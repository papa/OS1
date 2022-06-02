
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	fd813103          	ld	sp,-40(sp) # 8000cfd8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	520070ef          	jal	ra,8000753c <start>

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
    80001088:	135020ef          	jal	ra,800039bc <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001584 <_ZN12TestPeriodic18periodicActivationEv>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {

}

void TestPeriodic::periodicActivation()
{
    80001584:	fe010113          	addi	sp,sp,-32
    80001588:	00113c23          	sd	ra,24(sp)
    8000158c:	00813823          	sd	s0,16(sp)
    80001590:	00913423          	sd	s1,8(sp)
    80001594:	02010413          	addi	s0,sp,32
    for(int i = 0 ; i < 10000;i++)
    80001598:	00000493          	li	s1,0
    8000159c:	000027b7          	lui	a5,0x2
    800015a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800015a4:	0297c863          	blt	a5,s1,800015d4 <_ZN12TestPeriodic18periodicActivationEv+0x50>
    {
        printString("i : ");
    800015a8:	00009517          	auipc	a0,0x9
    800015ac:	a7850513          	addi	a0,a0,-1416 # 8000a020 <CONSOLE_STATUS+0x10>
    800015b0:	00005097          	auipc	ra,0x5
    800015b4:	ce8080e7          	jalr	-792(ra) # 80006298 <_Z11printStringPKc>
        printInt(i);
    800015b8:	00000613          	li	a2,0
    800015bc:	00a00593          	li	a1,10
    800015c0:	00048513          	mv	a0,s1
    800015c4:	00005097          	auipc	ra,0x5
    800015c8:	e6c080e7          	jalr	-404(ra) # 80006430 <_Z8printIntiii>
    for(int i = 0 ; i < 10000;i++)
    800015cc:	0014849b          	addiw	s1,s1,1
    800015d0:	fcdff06f          	j	8000159c <_ZN12TestPeriodic18periodicActivationEv+0x18>
    }
}
    800015d4:	01813083          	ld	ra,24(sp)
    800015d8:	01013403          	ld	s0,16(sp)
    800015dc:	00813483          	ld	s1,8(sp)
    800015e0:	02010113          	addi	sp,sp,32
    800015e4:	00008067          	ret

00000000800015e8 <_Z4idlePv>:
{
    800015e8:	ff010113          	addi	sp,sp,-16
    800015ec:	00113423          	sd	ra,8(sp)
    800015f0:	00813023          	sd	s0,0(sp)
    800015f4:	01010413          	addi	s0,sp,16
        printString("Idle\n");
    800015f8:	00009517          	auipc	a0,0x9
    800015fc:	a3050513          	addi	a0,a0,-1488 # 8000a028 <CONSOLE_STATUS+0x18>
    80001600:	00005097          	auipc	ra,0x5
    80001604:	c98080e7          	jalr	-872(ra) # 80006298 <_Z11printStringPKc>
        thread_dispatch();
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	d2c080e7          	jalr	-724(ra) # 80001334 <thread_dispatch>
    while(true)
    80001610:	fe9ff06f          	j	800015f8 <_Z4idlePv+0x10>

0000000080001614 <_Z15thread1FunctionPv>:
{
    80001614:	fe010113          	addi	sp,sp,-32
    80001618:	00113c23          	sd	ra,24(sp)
    8000161c:	00813823          	sd	s0,16(sp)
    80001620:	00913423          	sd	s1,8(sp)
    80001624:	02010413          	addi	s0,sp,32
    printString("Thread 1 started...\n");
    80001628:	00009517          	auipc	a0,0x9
    8000162c:	a0850513          	addi	a0,a0,-1528 # 8000a030 <CONSOLE_STATUS+0x20>
    80001630:	00005097          	auipc	ra,0x5
    80001634:	c68080e7          	jalr	-920(ra) # 80006298 <_Z11printStringPKc>
    for(uint64 i = 0; i < num;i++)
    80001638:	00000493          	li	s1,0
    8000163c:	0440006f          	j	80001680 <_Z15thread1FunctionPv+0x6c>
            thread_dispatch();
    80001640:	00000097          	auipc	ra,0x0
    80001644:	cf4080e7          	jalr	-780(ra) # 80001334 <thread_dispatch>
        printString("i : ");
    80001648:	00009517          	auipc	a0,0x9
    8000164c:	9d850513          	addi	a0,a0,-1576 # 8000a020 <CONSOLE_STATUS+0x10>
    80001650:	00005097          	auipc	ra,0x5
    80001654:	c48080e7          	jalr	-952(ra) # 80006298 <_Z11printStringPKc>
        printInt(i);
    80001658:	00000613          	li	a2,0
    8000165c:	00a00593          	li	a1,10
    80001660:	0004851b          	sext.w	a0,s1
    80001664:	00005097          	auipc	ra,0x5
    80001668:	dcc080e7          	jalr	-564(ra) # 80006430 <_Z8printIntiii>
        printString("\n");
    8000166c:	00009517          	auipc	a0,0x9
    80001670:	a8c50513          	addi	a0,a0,-1396 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80001674:	00005097          	auipc	ra,0x5
    80001678:	c24080e7          	jalr	-988(ra) # 80006298 <_Z11printStringPKc>
    for(uint64 i = 0; i < num;i++)
    8000167c:	00148493          	addi	s1,s1,1
    80001680:	000027b7          	lui	a5,0x2
    80001684:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001688:	0097ec63          	bltu	a5,s1,800016a0 <_Z15thread1FunctionPv+0x8c>
        if(i % 150 == 0 && i > 0)
    8000168c:	09600793          	li	a5,150
    80001690:	02f4f7b3          	remu	a5,s1,a5
    80001694:	fa079ae3          	bnez	a5,80001648 <_Z15thread1FunctionPv+0x34>
    80001698:	fa0488e3          	beqz	s1,80001648 <_Z15thread1FunctionPv+0x34>
    8000169c:	fa5ff06f          	j	80001640 <_Z15thread1FunctionPv+0x2c>
}
    800016a0:	01813083          	ld	ra,24(sp)
    800016a4:	01013403          	ld	s0,16(sp)
    800016a8:	00813483          	ld	s1,8(sp)
    800016ac:	02010113          	addi	sp,sp,32
    800016b0:	00008067          	ret

00000000800016b4 <_Z15thread2FunctionPv>:
{
    800016b4:	fe010113          	addi	sp,sp,-32
    800016b8:	00113c23          	sd	ra,24(sp)
    800016bc:	00813823          	sd	s0,16(sp)
    800016c0:	00913423          	sd	s1,8(sp)
    800016c4:	02010413          	addi	s0,sp,32
    printString("Thread 2 started...\n");
    800016c8:	00009517          	auipc	a0,0x9
    800016cc:	98050513          	addi	a0,a0,-1664 # 8000a048 <CONSOLE_STATUS+0x38>
    800016d0:	00005097          	auipc	ra,0x5
    800016d4:	bc8080e7          	jalr	-1080(ra) # 80006298 <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    800016d8:	00000493          	li	s1,0
    800016dc:	0440006f          	j	80001720 <_Z15thread2FunctionPv+0x6c>
            thread_dispatch();
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	c54080e7          	jalr	-940(ra) # 80001334 <thread_dispatch>
        printString("j : ");
    800016e8:	00009517          	auipc	a0,0x9
    800016ec:	97850513          	addi	a0,a0,-1672 # 8000a060 <CONSOLE_STATUS+0x50>
    800016f0:	00005097          	auipc	ra,0x5
    800016f4:	ba8080e7          	jalr	-1112(ra) # 80006298 <_Z11printStringPKc>
        printInt(j);
    800016f8:	00000613          	li	a2,0
    800016fc:	00a00593          	li	a1,10
    80001700:	0004851b          	sext.w	a0,s1
    80001704:	00005097          	auipc	ra,0x5
    80001708:	d2c080e7          	jalr	-724(ra) # 80006430 <_Z8printIntiii>
        printString("\n");
    8000170c:	00009517          	auipc	a0,0x9
    80001710:	9ec50513          	addi	a0,a0,-1556 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80001714:	00005097          	auipc	ra,0x5
    80001718:	b84080e7          	jalr	-1148(ra) # 80006298 <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    8000171c:	00148493          	addi	s1,s1,1
    80001720:	000027b7          	lui	a5,0x2
    80001724:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001728:	0097ec63          	bltu	a5,s1,80001740 <_Z15thread2FunctionPv+0x8c>
        if(j % 50 == 0 && j > 0)
    8000172c:	03200793          	li	a5,50
    80001730:	02f4f7b3          	remu	a5,s1,a5
    80001734:	fa079ae3          	bnez	a5,800016e8 <_Z15thread2FunctionPv+0x34>
    80001738:	fa0488e3          	beqz	s1,800016e8 <_Z15thread2FunctionPv+0x34>
    8000173c:	fa5ff06f          	j	800016e0 <_Z15thread2FunctionPv+0x2c>
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
    80001768:	00009517          	auipc	a0,0x9
    8000176c:	8e050513          	addi	a0,a0,-1824 # 8000a048 <CONSOLE_STATUS+0x38>
    80001770:	00005097          	auipc	ra,0x5
    80001774:	b28080e7          	jalr	-1240(ra) # 80006298 <_Z11printStringPKc>
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
    80001794:	00009517          	auipc	a0,0x9
    80001798:	8cc50513          	addi	a0,a0,-1844 # 8000a060 <CONSOLE_STATUS+0x50>
    8000179c:	00005097          	auipc	ra,0x5
    800017a0:	afc080e7          	jalr	-1284(ra) # 80006298 <_Z11printStringPKc>
        printInt(j);
    800017a4:	00000613          	li	a2,0
    800017a8:	00a00593          	li	a1,10
    800017ac:	0004851b          	sext.w	a0,s1
    800017b0:	00005097          	auipc	ra,0x5
    800017b4:	c80080e7          	jalr	-896(ra) # 80006430 <_Z8printIntiii>
        printString("\n");
    800017b8:	00009517          	auipc	a0,0x9
    800017bc:	94050513          	addi	a0,a0,-1728 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    800017c0:	00005097          	auipc	ra,0x5
    800017c4:	ad8080e7          	jalr	-1320(ra) # 80006298 <_Z11printStringPKc>
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

0000000080001808 <_Z11threadTest1v>:
{
    80001808:	ff010113          	addi	sp,sp,-16
    8000180c:	00813423          	sd	s0,8(sp)
    80001810:	01010413          	addi	s0,sp,16
}
    80001814:	00813403          	ld	s0,8(sp)
    80001818:	01010113          	addi	sp,sp,16
    8000181c:	00008067          	ret

0000000080001820 <_Z11threadTest2v>:
{
    80001820:	ff010113          	addi	sp,sp,-16
    80001824:	00813423          	sd	s0,8(sp)
    80001828:	01010413          	addi	s0,sp,16
}
    8000182c:	00813403          	ld	s0,8(sp)
    80001830:	01010113          	addi	sp,sp,16
    80001834:	00008067          	ret

0000000080001838 <_Z10mallocFreev>:
{
    80001838:	cc010113          	addi	sp,sp,-832
    8000183c:	32113c23          	sd	ra,824(sp)
    80001840:	32813823          	sd	s0,816(sp)
    80001844:	32913423          	sd	s1,808(sp)
    80001848:	34010413          	addi	s0,sp,832
    printString("mallocFree\n");
    8000184c:	00009517          	auipc	a0,0x9
    80001850:	81c50513          	addi	a0,a0,-2020 # 8000a068 <CONSOLE_STATUS+0x58>
    80001854:	00005097          	auipc	ra,0x5
    80001858:	a44080e7          	jalr	-1468(ra) # 80006298 <_Z11printStringPKc>
    for(int i = 0; i < num;i++)
    8000185c:	00000493          	li	s1,0
    80001860:	0080006f          	j	80001868 <_Z10mallocFreev+0x30>
    80001864:	0014849b          	addiw	s1,s1,1
    80001868:	06300793          	li	a5,99
    8000186c:	0497c463          	blt	a5,s1,800018b4 <_Z10mallocFreev+0x7c>
        addrs[i] = mem_alloc(100);
    80001870:	06400513          	li	a0,100
    80001874:	00000097          	auipc	ra,0x0
    80001878:	9e4080e7          	jalr	-1564(ra) # 80001258 <mem_alloc>
    8000187c:	00349793          	slli	a5,s1,0x3
    80001880:	fe040713          	addi	a4,s0,-32
    80001884:	00f707b3          	add	a5,a4,a5
    80001888:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    8000188c:	fc051ce3          	bnez	a0,80001864 <_Z10mallocFreev+0x2c>
            printString("not OK\n");
    80001890:	00008517          	auipc	a0,0x8
    80001894:	7e850513          	addi	a0,a0,2024 # 8000a078 <CONSOLE_STATUS+0x68>
    80001898:	00005097          	auipc	ra,0x5
    8000189c:	a00080e7          	jalr	-1536(ra) # 80006298 <_Z11printStringPKc>
}
    800018a0:	33813083          	ld	ra,824(sp)
    800018a4:	33013403          	ld	s0,816(sp)
    800018a8:	32813483          	ld	s1,808(sp)
    800018ac:	34010113          	addi	sp,sp,832
    800018b0:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    800018b4:	00000493          	li	s1,0
    800018b8:	06300793          	li	a5,99
    800018bc:	0297ce63          	blt	a5,s1,800018f8 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    800018c0:	00349793          	slli	a5,s1,0x3
    800018c4:	fe040713          	addi	a4,s0,-32
    800018c8:	00f707b3          	add	a5,a4,a5
    800018cc:	ce07b503          	ld	a0,-800(a5)
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	9b8080e7          	jalr	-1608(ra) # 80001288 <mem_free>
        if(retval != 0)
    800018d8:	00051663          	bnez	a0,800018e4 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    800018dc:	0024849b          	addiw	s1,s1,2
    800018e0:	fd9ff06f          	j	800018b8 <_Z10mallocFreev+0x80>
            printString("not OK\n");
    800018e4:	00008517          	auipc	a0,0x8
    800018e8:	79450513          	addi	a0,a0,1940 # 8000a078 <CONSOLE_STATUS+0x68>
    800018ec:	00005097          	auipc	ra,0x5
    800018f0:	9ac080e7          	jalr	-1620(ra) # 80006298 <_Z11printStringPKc>
            return;
    800018f4:	fadff06f          	j	800018a0 <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    800018f8:	00000493          	li	s1,0
    800018fc:	0080006f          	j	80001904 <_Z10mallocFreev+0xcc>
    80001900:	0024849b          	addiw	s1,s1,2
    80001904:	06300793          	li	a5,99
    80001908:	0297cc63          	blt	a5,s1,80001940 <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    8000190c:	01400513          	li	a0,20
    80001910:	00000097          	auipc	ra,0x0
    80001914:	948080e7          	jalr	-1720(ra) # 80001258 <mem_alloc>
    80001918:	00349793          	slli	a5,s1,0x3
    8000191c:	fe040713          	addi	a4,s0,-32
    80001920:	00f707b3          	add	a5,a4,a5
    80001924:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001928:	fc051ce3          	bnez	a0,80001900 <_Z10mallocFreev+0xc8>
            printString("not OK\n");
    8000192c:	00008517          	auipc	a0,0x8
    80001930:	74c50513          	addi	a0,a0,1868 # 8000a078 <CONSOLE_STATUS+0x68>
    80001934:	00005097          	auipc	ra,0x5
    80001938:	964080e7          	jalr	-1692(ra) # 80006298 <_Z11printStringPKc>
            return;
    8000193c:	f65ff06f          	j	800018a0 <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001940:	00000493          	li	s1,0
    80001944:	06300793          	li	a5,99
    80001948:	0297ce63          	blt	a5,s1,80001984 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    8000194c:	00349793          	slli	a5,s1,0x3
    80001950:	fe040713          	addi	a4,s0,-32
    80001954:	00f707b3          	add	a5,a4,a5
    80001958:	ce07b503          	ld	a0,-800(a5)
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	92c080e7          	jalr	-1748(ra) # 80001288 <mem_free>
        if(retval != 0)
    80001964:	00051663          	bnez	a0,80001970 <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001968:	0014849b          	addiw	s1,s1,1
    8000196c:	fd9ff06f          	j	80001944 <_Z10mallocFreev+0x10c>
            printString("not OK\n");
    80001970:	00008517          	auipc	a0,0x8
    80001974:	70850513          	addi	a0,a0,1800 # 8000a078 <CONSOLE_STATUS+0x68>
    80001978:	00005097          	auipc	ra,0x5
    8000197c:	920080e7          	jalr	-1760(ra) # 80006298 <_Z11printStringPKc>
            return;
    80001980:	f21ff06f          	j	800018a0 <_Z10mallocFreev+0x68>
    printString("OK\n");
    80001984:	00008517          	auipc	a0,0x8
    80001988:	6fc50513          	addi	a0,a0,1788 # 8000a080 <CONSOLE_STATUS+0x70>
    8000198c:	00005097          	auipc	ra,0x5
    80001990:	90c080e7          	jalr	-1780(ra) # 80006298 <_Z11printStringPKc>
    80001994:	f0dff06f          	j	800018a0 <_Z10mallocFreev+0x68>

0000000080001998 <_Z9bigMallocv>:
{
    80001998:	ff010113          	addi	sp,sp,-16
    8000199c:	00113423          	sd	ra,8(sp)
    800019a0:	00813023          	sd	s0,0(sp)
    800019a4:	01010413          	addi	s0,sp,16
    printString("bigMalloc\n");
    800019a8:	00008517          	auipc	a0,0x8
    800019ac:	6e050513          	addi	a0,a0,1760 # 8000a088 <CONSOLE_STATUS+0x78>
    800019b0:	00005097          	auipc	ra,0x5
    800019b4:	8e8080e7          	jalr	-1816(ra) # 80006298 <_Z11printStringPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    800019b8:	0000b797          	auipc	a5,0xb
    800019bc:	6607b783          	ld	a5,1632(a5) # 8000d018 <_GLOBAL_OFFSET_TABLE_+0x80>
    800019c0:	0007b503          	ld	a0,0(a5)
    800019c4:	0000b797          	auipc	a5,0xb
    800019c8:	5ec7b783          	ld	a5,1516(a5) # 8000cfb0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800019cc:	0007b783          	ld	a5,0(a5)
    800019d0:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    800019d4:	06450513          	addi	a0,a0,100
    800019d8:	00000097          	auipc	ra,0x0
    800019dc:	880080e7          	jalr	-1920(ra) # 80001258 <mem_alloc>
    if(p == 0)
    800019e0:	02050263          	beqz	a0,80001a04 <_Z9bigMallocv+0x6c>
        printString("not OK\n");
    800019e4:	00008517          	auipc	a0,0x8
    800019e8:	69450513          	addi	a0,a0,1684 # 8000a078 <CONSOLE_STATUS+0x68>
    800019ec:	00005097          	auipc	ra,0x5
    800019f0:	8ac080e7          	jalr	-1876(ra) # 80006298 <_Z11printStringPKc>
}
    800019f4:	00813083          	ld	ra,8(sp)
    800019f8:	00013403          	ld	s0,0(sp)
    800019fc:	01010113          	addi	sp,sp,16
    80001a00:	00008067          	ret
        printString("OK\n");
    80001a04:	00008517          	auipc	a0,0x8
    80001a08:	67c50513          	addi	a0,a0,1660 # 8000a080 <CONSOLE_STATUS+0x70>
    80001a0c:	00005097          	auipc	ra,0x5
    80001a10:	88c080e7          	jalr	-1908(ra) # 80006298 <_Z11printStringPKc>
    80001a14:	fe1ff06f          	j	800019f4 <_Z9bigMallocv+0x5c>

0000000080001a18 <_Z17lotOfSmallMallocsv>:
{
    80001a18:	fd010113          	addi	sp,sp,-48
    80001a1c:	02113423          	sd	ra,40(sp)
    80001a20:	02813023          	sd	s0,32(sp)
    80001a24:	00913c23          	sd	s1,24(sp)
    80001a28:	01213823          	sd	s2,16(sp)
    80001a2c:	01313423          	sd	s3,8(sp)
    80001a30:	03010413          	addi	s0,sp,48
    printString("lotOfSmallMallocs\n");
    80001a34:	00008517          	auipc	a0,0x8
    80001a38:	66450513          	addi	a0,a0,1636 # 8000a098 <CONSOLE_STATUS+0x88>
    80001a3c:	00005097          	auipc	ra,0x5
    80001a40:	85c080e7          	jalr	-1956(ra) # 80006298 <_Z11printStringPKc>
    for(uint64 i = 0; i < N;i++)
    80001a44:	00000493          	li	s1,0
    uint64 sum = 0;
    80001a48:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001a4c:	00000913          	li	s2,0
    80001a50:	0180006f          	j	80001a68 <_Z17lotOfSmallMallocsv+0x50>
        t->a = X;
    80001a54:	00a00793          	li	a5,10
    80001a58:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001a5c:	00a98993          	addi	s3,s3,10
        cnt++;
    80001a60:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001a64:	00148493          	addi	s1,s1,1
    80001a68:	000027b7          	lui	a5,0x2
    80001a6c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001a70:	0097ea63          	bltu	a5,s1,80001a84 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001a74:	00800513          	li	a0,8
    80001a78:	fffff097          	auipc	ra,0xfffff
    80001a7c:	7e0080e7          	jalr	2016(ra) # 80001258 <mem_alloc>
        if(t == 0)
    80001a80:	fc051ae3          	bnez	a0,80001a54 <_Z17lotOfSmallMallocsv+0x3c>
    printInt(cnt);
    80001a84:	00000613          	li	a2,0
    80001a88:	00a00593          	li	a1,10
    80001a8c:	0009051b          	sext.w	a0,s2
    80001a90:	00005097          	auipc	ra,0x5
    80001a94:	9a0080e7          	jalr	-1632(ra) # 80006430 <_Z8printIntiii>
    printString("\n");
    80001a98:	00008517          	auipc	a0,0x8
    80001a9c:	66050513          	addi	a0,a0,1632 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80001aa0:	00004097          	auipc	ra,0x4
    80001aa4:	7f8080e7          	jalr	2040(ra) # 80006298 <_Z11printStringPKc>
    if(sum == X*cnt)
    80001aa8:	00291793          	slli	a5,s2,0x2
    80001aac:	01278933          	add	s2,a5,s2
    80001ab0:	00191913          	slli	s2,s2,0x1
    80001ab4:	03390863          	beq	s2,s3,80001ae4 <_Z17lotOfSmallMallocsv+0xcc>
        printString("not OK\n");
    80001ab8:	00008517          	auipc	a0,0x8
    80001abc:	5c050513          	addi	a0,a0,1472 # 8000a078 <CONSOLE_STATUS+0x68>
    80001ac0:	00004097          	auipc	ra,0x4
    80001ac4:	7d8080e7          	jalr	2008(ra) # 80006298 <_Z11printStringPKc>
}
    80001ac8:	02813083          	ld	ra,40(sp)
    80001acc:	02013403          	ld	s0,32(sp)
    80001ad0:	01813483          	ld	s1,24(sp)
    80001ad4:	01013903          	ld	s2,16(sp)
    80001ad8:	00813983          	ld	s3,8(sp)
    80001adc:	03010113          	addi	sp,sp,48
    80001ae0:	00008067          	ret
        printString("OK\n");
    80001ae4:	00008517          	auipc	a0,0x8
    80001ae8:	59c50513          	addi	a0,a0,1436 # 8000a080 <CONSOLE_STATUS+0x70>
    80001aec:	00004097          	auipc	ra,0x4
    80001af0:	7ac080e7          	jalr	1964(ra) # 80006298 <_Z11printStringPKc>
    80001af4:	fd5ff06f          	j	80001ac8 <_Z17lotOfSmallMallocsv+0xb0>

0000000080001af8 <_Z7badFreev>:
{
    80001af8:	ff010113          	addi	sp,sp,-16
    80001afc:	00113423          	sd	ra,8(sp)
    80001b00:	00813023          	sd	s0,0(sp)
    80001b04:	01010413          	addi	s0,sp,16
    printString("badFree\n");
    80001b08:	00008517          	auipc	a0,0x8
    80001b0c:	5a850513          	addi	a0,a0,1448 # 8000a0b0 <CONSOLE_STATUS+0xa0>
    80001b10:	00004097          	auipc	ra,0x4
    80001b14:	788080e7          	jalr	1928(ra) # 80006298 <_Z11printStringPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001b18:	00800513          	li	a0,8
    80001b1c:	fffff097          	auipc	ra,0xfffff
    80001b20:	73c080e7          	jalr	1852(ra) # 80001258 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001b24:	00250513          	addi	a0,a0,2
    80001b28:	fffff097          	auipc	ra,0xfffff
    80001b2c:	760080e7          	jalr	1888(ra) # 80001288 <mem_free>
    if(retval == 0)
    80001b30:	02051263          	bnez	a0,80001b54 <_Z7badFreev+0x5c>
        printString("not OK\n");
    80001b34:	00008517          	auipc	a0,0x8
    80001b38:	54450513          	addi	a0,a0,1348 # 8000a078 <CONSOLE_STATUS+0x68>
    80001b3c:	00004097          	auipc	ra,0x4
    80001b40:	75c080e7          	jalr	1884(ra) # 80006298 <_Z11printStringPKc>
}
    80001b44:	00813083          	ld	ra,8(sp)
    80001b48:	00013403          	ld	s0,0(sp)
    80001b4c:	01010113          	addi	sp,sp,16
    80001b50:	00008067          	ret
         printString("OK\n");
    80001b54:	00008517          	auipc	a0,0x8
    80001b58:	52c50513          	addi	a0,a0,1324 # 8000a080 <CONSOLE_STATUS+0x70>
    80001b5c:	00004097          	auipc	ra,0x4
    80001b60:	73c080e7          	jalr	1852(ra) # 80006298 <_Z11printStringPKc>
}
    80001b64:	fe1ff06f          	j	80001b44 <_Z7badFreev+0x4c>

0000000080001b68 <_Z13stressTestingv>:
{
    80001b68:	cc010113          	addi	sp,sp,-832
    80001b6c:	32113c23          	sd	ra,824(sp)
    80001b70:	32813823          	sd	s0,816(sp)
    80001b74:	32913423          	sd	s1,808(sp)
    80001b78:	33213023          	sd	s2,800(sp)
    80001b7c:	34010413          	addi	s0,sp,832
    printString("stressTesting\n");
    80001b80:	00008517          	auipc	a0,0x8
    80001b84:	54050513          	addi	a0,a0,1344 # 8000a0c0 <CONSOLE_STATUS+0xb0>
    80001b88:	00004097          	auipc	ra,0x4
    80001b8c:	710080e7          	jalr	1808(ra) # 80006298 <_Z11printStringPKc>
    for(int i = 0; i < num;i++)
    80001b90:	00000493          	li	s1,0
    80001b94:	0080006f          	j	80001b9c <_Z13stressTestingv+0x34>
    80001b98:	0014849b          	addiw	s1,s1,1
    80001b9c:	06300793          	li	a5,99
    80001ba0:	0497c663          	blt	a5,s1,80001bec <_Z13stressTestingv+0x84>
        addrs[i] = mem_alloc(1);
    80001ba4:	00100513          	li	a0,1
    80001ba8:	fffff097          	auipc	ra,0xfffff
    80001bac:	6b0080e7          	jalr	1712(ra) # 80001258 <mem_alloc>
    80001bb0:	00349793          	slli	a5,s1,0x3
    80001bb4:	fe040713          	addi	a4,s0,-32
    80001bb8:	00f707b3          	add	a5,a4,a5
    80001bbc:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001bc0:	fc051ce3          	bnez	a0,80001b98 <_Z13stressTestingv+0x30>
            printString("not OK\n");
    80001bc4:	00008517          	auipc	a0,0x8
    80001bc8:	4b450513          	addi	a0,a0,1204 # 8000a078 <CONSOLE_STATUS+0x68>
    80001bcc:	00004097          	auipc	ra,0x4
    80001bd0:	6cc080e7          	jalr	1740(ra) # 80006298 <_Z11printStringPKc>
}
    80001bd4:	33813083          	ld	ra,824(sp)
    80001bd8:	33013403          	ld	s0,816(sp)
    80001bdc:	32813483          	ld	s1,808(sp)
    80001be0:	32013903          	ld	s2,800(sp)
    80001be4:	34010113          	addi	sp,sp,832
    80001be8:	00008067          	ret
    int sz = 300;
    80001bec:	12c00913          	li	s2,300
    while(sz > 0)
    80001bf0:	11205263          	blez	s2,80001cf4 <_Z13stressTestingv+0x18c>
        for(int i = 0 ; i < num;i+=2)
    80001bf4:	00000493          	li	s1,0
    80001bf8:	06300793          	li	a5,99
    80001bfc:	0697cc63          	blt	a5,s1,80001c74 <_Z13stressTestingv+0x10c>
            int retval = mem_free(addrs[i]);
    80001c00:	00349793          	slli	a5,s1,0x3
    80001c04:	fe040713          	addi	a4,s0,-32
    80001c08:	00f707b3          	add	a5,a4,a5
    80001c0c:	ce07b503          	ld	a0,-800(a5)
    80001c10:	fffff097          	auipc	ra,0xfffff
    80001c14:	678080e7          	jalr	1656(ra) # 80001288 <mem_free>
            if(retval != 0)
    80001c18:	02051a63          	bnez	a0,80001c4c <_Z13stressTestingv+0xe4>
            addrs[i] = mem_alloc(sz/2);
    80001c1c:	01f9551b          	srliw	a0,s2,0x1f
    80001c20:	0125053b          	addw	a0,a0,s2
    80001c24:	4015551b          	sraiw	a0,a0,0x1
    80001c28:	fffff097          	auipc	ra,0xfffff
    80001c2c:	630080e7          	jalr	1584(ra) # 80001258 <mem_alloc>
    80001c30:	00349793          	slli	a5,s1,0x3
    80001c34:	fe040713          	addi	a4,s0,-32
    80001c38:	00f707b3          	add	a5,a4,a5
    80001c3c:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001c40:	02050063          	beqz	a0,80001c60 <_Z13stressTestingv+0xf8>
        for(int i = 0 ; i < num;i+=2)
    80001c44:	0024849b          	addiw	s1,s1,2
    80001c48:	fb1ff06f          	j	80001bf8 <_Z13stressTestingv+0x90>
                printString("not OK\n");
    80001c4c:	00008517          	auipc	a0,0x8
    80001c50:	42c50513          	addi	a0,a0,1068 # 8000a078 <CONSOLE_STATUS+0x68>
    80001c54:	00004097          	auipc	ra,0x4
    80001c58:	644080e7          	jalr	1604(ra) # 80006298 <_Z11printStringPKc>
                return;
    80001c5c:	f79ff06f          	j	80001bd4 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001c60:	00008517          	auipc	a0,0x8
    80001c64:	47050513          	addi	a0,a0,1136 # 8000a0d0 <CONSOLE_STATUS+0xc0>
    80001c68:	00004097          	auipc	ra,0x4
    80001c6c:	630080e7          	jalr	1584(ra) # 80006298 <_Z11printStringPKc>
                return;
    80001c70:	f65ff06f          	j	80001bd4 <_Z13stressTestingv+0x6c>
        for(int i = 1 ; i < num;i+=2)
    80001c74:	00100493          	li	s1,1
    80001c78:	06300793          	li	a5,99
    80001c7c:	0697c863          	blt	a5,s1,80001cec <_Z13stressTestingv+0x184>
            int retval = mem_free(addrs[i]);
    80001c80:	00349793          	slli	a5,s1,0x3
    80001c84:	fe040713          	addi	a4,s0,-32
    80001c88:	00f707b3          	add	a5,a4,a5
    80001c8c:	ce07b503          	ld	a0,-800(a5)
    80001c90:	fffff097          	auipc	ra,0xfffff
    80001c94:	5f8080e7          	jalr	1528(ra) # 80001288 <mem_free>
            if(retval != 0)
    80001c98:	02051663          	bnez	a0,80001cc4 <_Z13stressTestingv+0x15c>
            addrs[i] = mem_alloc(sz);
    80001c9c:	00090513          	mv	a0,s2
    80001ca0:	fffff097          	auipc	ra,0xfffff
    80001ca4:	5b8080e7          	jalr	1464(ra) # 80001258 <mem_alloc>
    80001ca8:	00349793          	slli	a5,s1,0x3
    80001cac:	fe040713          	addi	a4,s0,-32
    80001cb0:	00f707b3          	add	a5,a4,a5
    80001cb4:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001cb8:	02050063          	beqz	a0,80001cd8 <_Z13stressTestingv+0x170>
        for(int i = 1 ; i < num;i+=2)
    80001cbc:	0024849b          	addiw	s1,s1,2
    80001cc0:	fb9ff06f          	j	80001c78 <_Z13stressTestingv+0x110>
                printString("not OK\n");
    80001cc4:	00008517          	auipc	a0,0x8
    80001cc8:	3b450513          	addi	a0,a0,948 # 8000a078 <CONSOLE_STATUS+0x68>
    80001ccc:	00004097          	auipc	ra,0x4
    80001cd0:	5cc080e7          	jalr	1484(ra) # 80006298 <_Z11printStringPKc>
                return;
    80001cd4:	f01ff06f          	j	80001bd4 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001cd8:	00008517          	auipc	a0,0x8
    80001cdc:	3f850513          	addi	a0,a0,1016 # 8000a0d0 <CONSOLE_STATUS+0xc0>
    80001ce0:	00004097          	auipc	ra,0x4
    80001ce4:	5b8080e7          	jalr	1464(ra) # 80006298 <_Z11printStringPKc>
                return;
    80001ce8:	eedff06f          	j	80001bd4 <_Z13stressTestingv+0x6c>
        sz-=10;
    80001cec:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001cf0:	f01ff06f          	j	80001bf0 <_Z13stressTestingv+0x88>
    printString("OK\n");
    80001cf4:	00008517          	auipc	a0,0x8
    80001cf8:	38c50513          	addi	a0,a0,908 # 8000a080 <CONSOLE_STATUS+0x70>
    80001cfc:	00004097          	auipc	ra,0x4
    80001d00:	59c080e7          	jalr	1436(ra) # 80006298 <_Z11printStringPKc>
    80001d04:	ed1ff06f          	j	80001bd4 <_Z13stressTestingv+0x6c>

0000000080001d08 <_Z14semaphoreTestsv>:
{
    80001d08:	ff010113          	addi	sp,sp,-16
    80001d0c:	00813423          	sd	s0,8(sp)
    80001d10:	01010413          	addi	s0,sp,16
}
    80001d14:	00813403          	ld	s0,8(sp)
    80001d18:	01010113          	addi	sp,sp,16
    80001d1c:	00008067          	ret

0000000080001d20 <_ZN12TestPeriodicC1Em>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {
    80001d20:	fe010113          	addi	sp,sp,-32
    80001d24:	00113c23          	sd	ra,24(sp)
    80001d28:	00813823          	sd	s0,16(sp)
    80001d2c:	00913423          	sd	s1,8(sp)
    80001d30:	02010413          	addi	s0,sp,32
    80001d34:	00050493          	mv	s1,a0
    80001d38:	00002097          	auipc	ra,0x2
    80001d3c:	9a8080e7          	jalr	-1624(ra) # 800036e0 <_ZN14PeriodicThreadC1Em>
    80001d40:	0000b797          	auipc	a5,0xb
    80001d44:	04078793          	addi	a5,a5,64 # 8000cd80 <_ZTV12TestPeriodic+0x10>
    80001d48:	00f4b023          	sd	a5,0(s1)
}
    80001d4c:	01813083          	ld	ra,24(sp)
    80001d50:	01013403          	ld	s0,16(sp)
    80001d54:	00813483          	ld	s1,8(sp)
    80001d58:	02010113          	addi	sp,sp,32
    80001d5c:	00008067          	ret

0000000080001d60 <_Z11threadTest3v>:
{
    80001d60:	fe010113          	addi	sp,sp,-32
    80001d64:	00113c23          	sd	ra,24(sp)
    80001d68:	00813823          	sd	s0,16(sp)
    80001d6c:	00913423          	sd	s1,8(sp)
    80001d70:	01213023          	sd	s2,0(sp)
    80001d74:	02010413          	addi	s0,sp,32
    Thread* t = new TestPeriodic(50);
    80001d78:	01000513          	li	a0,16
    80001d7c:	00001097          	auipc	ra,0x1
    80001d80:	644080e7          	jalr	1604(ra) # 800033c0 <_Znwm>
    80001d84:	00050913          	mv	s2,a0
    80001d88:	03200593          	li	a1,50
    80001d8c:	00000097          	auipc	ra,0x0
    80001d90:	f94080e7          	jalr	-108(ra) # 80001d20 <_ZN12TestPeriodicC1Em>
    t->start();
    80001d94:	00090513          	mv	a0,s2
    80001d98:	00001097          	auipc	ra,0x1
    80001d9c:	6f8080e7          	jalr	1784(ra) # 80003490 <_ZN6Thread5startEv>
    while(true)
    80001da0:	0000006f          	j	80001da0 <_Z11threadTest3v+0x40>
    80001da4:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80001da8:	00090513          	mv	a0,s2
    80001dac:	00001097          	auipc	ra,0x1
    80001db0:	63c080e7          	jalr	1596(ra) # 800033e8 <_ZdlPv>
    80001db4:	00048513          	mv	a0,s1
    80001db8:	00010097          	auipc	ra,0x10
    80001dbc:	4a0080e7          	jalr	1184(ra) # 80012258 <_Unwind_Resume>

0000000080001dc0 <_Z11threadTestsv>:
{
    80001dc0:	ff010113          	addi	sp,sp,-16
    80001dc4:	00113423          	sd	ra,8(sp)
    80001dc8:	00813023          	sd	s0,0(sp)
    80001dcc:	01010413          	addi	s0,sp,16
    threadTest3();
    80001dd0:	00000097          	auipc	ra,0x0
    80001dd4:	f90080e7          	jalr	-112(ra) # 80001d60 <_Z11threadTest3v>

0000000080001dd8 <_Z10mallocTestv>:

void mallocTest()
{
    80001dd8:	fc010113          	addi	sp,sp,-64
    80001ddc:	02113c23          	sd	ra,56(sp)
    80001de0:	02813823          	sd	s0,48(sp)
    80001de4:	02913423          	sd	s1,40(sp)
    80001de8:	03213023          	sd	s2,32(sp)
    80001dec:	01313c23          	sd	s3,24(sp)
    80001df0:	01413823          	sd	s4,16(sp)
    80001df4:	01513423          	sd	s5,8(sp)
    80001df8:	01613023          	sd	s6,0(sp)
    80001dfc:	04010413          	addi	s0,sp,64
    printString("Testing a few mallocs and frees\n\n");
    80001e00:	00008517          	auipc	a0,0x8
    80001e04:	2d850513          	addi	a0,a0,728 # 8000a0d8 <CONSOLE_STATUS+0xc8>
    80001e08:	00004097          	auipc	ra,0x4
    80001e0c:	490080e7          	jalr	1168(ra) # 80006298 <_Z11printStringPKc>

    object* o = new object;
    80001e10:	02c00513          	li	a0,44
    80001e14:	00001097          	auipc	ra,0x1
    80001e18:	5ac080e7          	jalr	1452(ra) # 800033c0 <_Znwm>
    80001e1c:	00050493          	mv	s1,a0
    o->a = 3;
    80001e20:	00300793          	li	a5,3
    80001e24:	00f52023          	sw	a5,0(a0)
    void* m1 = mem_alloc(10);
    80001e28:	00a00513          	li	a0,10
    80001e2c:	fffff097          	auipc	ra,0xfffff
    80001e30:	42c080e7          	jalr	1068(ra) # 80001258 <mem_alloc>
    80001e34:	00050913          	mv	s2,a0
    void* m2 = mem_alloc(100);
    80001e38:	06400513          	li	a0,100
    80001e3c:	fffff097          	auipc	ra,0xfffff
    80001e40:	41c080e7          	jalr	1052(ra) # 80001258 <mem_alloc>
    80001e44:	00050993          	mv	s3,a0
    void* m3 = mem_alloc(1000);
    80001e48:	3e800513          	li	a0,1000
    80001e4c:	fffff097          	auipc	ra,0xfffff
    80001e50:	40c080e7          	jalr	1036(ra) # 80001258 <mem_alloc>
    80001e54:	00050a13          	mv	s4,a0
    void* m4 = mem_alloc(10000);
    80001e58:	00002537          	lui	a0,0x2
    80001e5c:	71050513          	addi	a0,a0,1808 # 2710 <_entry-0x7fffd8f0>
    80001e60:	fffff097          	auipc	ra,0xfffff
    80001e64:	3f8080e7          	jalr	1016(ra) # 80001258 <mem_alloc>
    80001e68:	00050a93          	mv	s5,a0
    void* m5 = mem_alloc(1);
    80001e6c:	00100513          	li	a0,1
    80001e70:	fffff097          	auipc	ra,0xfffff
    80001e74:	3e8080e7          	jalr	1000(ra) # 80001258 <mem_alloc>

    if(!m1 || !m2 || !m3 || !m4 || !m5){
    80001e78:	06090c63          	beqz	s2,80001ef0 <_Z10mallocTestv+0x118>
    80001e7c:	00050b13          	mv	s6,a0
    80001e80:	06098863          	beqz	s3,80001ef0 <_Z10mallocTestv+0x118>
    80001e84:	060a0663          	beqz	s4,80001ef0 <_Z10mallocTestv+0x118>
    80001e88:	060a8463          	beqz	s5,80001ef0 <_Z10mallocTestv+0x118>
    80001e8c:	06050263          	beqz	a0,80001ef0 <_Z10mallocTestv+0x118>
        printString("not OK\n");
        return;
    }

    delete (uint64*)m1;
    80001e90:	00090513          	mv	a0,s2
    80001e94:	00001097          	auipc	ra,0x1
    80001e98:	554080e7          	jalr	1364(ra) # 800033e8 <_ZdlPv>
    delete (uint64*)m3;
    80001e9c:	000a0513          	mv	a0,s4
    80001ea0:	00001097          	auipc	ra,0x1
    80001ea4:	548080e7          	jalr	1352(ra) # 800033e8 <_ZdlPv>
    delete (uint64*)m4;
    80001ea8:	000a8513          	mv	a0,s5
    80001eac:	00001097          	auipc	ra,0x1
    80001eb0:	53c080e7          	jalr	1340(ra) # 800033e8 <_ZdlPv>
    delete (uint64*)m2;
    80001eb4:	00098513          	mv	a0,s3
    80001eb8:	00001097          	auipc	ra,0x1
    80001ebc:	530080e7          	jalr	1328(ra) # 800033e8 <_ZdlPv>
    delete (uint64*)m5;
    80001ec0:	000b0513          	mv	a0,s6
    80001ec4:	00001097          	auipc	ra,0x1
    80001ec8:	524080e7          	jalr	1316(ra) # 800033e8 <_ZdlPv>
    delete o;
    80001ecc:	00048863          	beqz	s1,80001edc <_Z10mallocTestv+0x104>
    80001ed0:	00048513          	mv	a0,s1
    80001ed4:	00001097          	auipc	ra,0x1
    80001ed8:	514080e7          	jalr	1300(ra) # 800033e8 <_ZdlPv>

    printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    80001edc:	00008517          	auipc	a0,0x8
    80001ee0:	22450513          	addi	a0,a0,548 # 8000a100 <CONSOLE_STATUS+0xf0>
    80001ee4:	00004097          	auipc	ra,0x4
    80001ee8:	3b4080e7          	jalr	948(ra) # 80006298 <_Z11printStringPKc>
    80001eec:	0140006f          	j	80001f00 <_Z10mallocTestv+0x128>
        printString("not OK\n");
    80001ef0:	00008517          	auipc	a0,0x8
    80001ef4:	18850513          	addi	a0,a0,392 # 8000a078 <CONSOLE_STATUS+0x68>
    80001ef8:	00004097          	auipc	ra,0x4
    80001efc:	3a0080e7          	jalr	928(ra) # 80006298 <_Z11printStringPKc>
}
    80001f00:	03813083          	ld	ra,56(sp)
    80001f04:	03013403          	ld	s0,48(sp)
    80001f08:	02813483          	ld	s1,40(sp)
    80001f0c:	02013903          	ld	s2,32(sp)
    80001f10:	01813983          	ld	s3,24(sp)
    80001f14:	01013a03          	ld	s4,16(sp)
    80001f18:	00813a83          	ld	s5,8(sp)
    80001f1c:	00013b03          	ld	s6,0(sp)
    80001f20:	04010113          	addi	sp,sp,64
    80001f24:	00008067          	ret

0000000080001f28 <_Z16mallocEverythingv>:

void mallocEverything()
{
    80001f28:	ff010113          	addi	sp,sp,-16
    80001f2c:	00813423          	sd	s0,8(sp)
    80001f30:	01010413          	addi	s0,sp,16

    delete (uint64*)m;
    //delete (uint64*)small_chunk;

    printString("SUCCESSFUL: Testing allocating whole address space\n\n");*/
}
    80001f34:	00813403          	ld	s0,8(sp)
    80001f38:	01010113          	addi	sp,sp,16
    80001f3c:	00008067          	ret

0000000080001f40 <_Z17mallocGapFillTestv>:

void mallocGapFillTest()
{
    80001f40:	f6010113          	addi	sp,sp,-160
    80001f44:	08113c23          	sd	ra,152(sp)
    80001f48:	08813823          	sd	s0,144(sp)
    80001f4c:	08913423          	sd	s1,136(sp)
    80001f50:	09213023          	sd	s2,128(sp)
    80001f54:	07313c23          	sd	s3,120(sp)
    80001f58:	07413823          	sd	s4,112(sp)
    80001f5c:	07513423          	sd	s5,104(sp)
    80001f60:	07613023          	sd	s6,96(sp)
    80001f64:	05713c23          	sd	s7,88(sp)
    80001f68:	05813823          	sd	s8,80(sp)
    80001f6c:	0a010413          	addi	s0,sp,160
    printString("Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80001f70:	00008517          	auipc	a0,0x8
    80001f74:	1c050513          	addi	a0,a0,448 # 8000a130 <CONSOLE_STATUS+0x120>
    80001f78:	00004097          	auipc	ra,0x4
    80001f7c:	320080e7          	jalr	800(ra) # 80006298 <_Z11printStringPKc>

    const int N = 10;

    void *m[N];

    for(int i=0;i<N;i++)
    80001f80:	00000493          	li	s1,0
    80001f84:	00900793          	li	a5,9
    80001f88:	0697c863          	blt	a5,s1,80001ff8 <_Z17mallocGapFillTestv+0xb8>
    {
        m[i] = mem_alloc((i<<6)+1);
    80001f8c:	0064951b          	slliw	a0,s1,0x6
    80001f90:	0015051b          	addiw	a0,a0,1
    80001f94:	fffff097          	auipc	ra,0xfffff
    80001f98:	2c4080e7          	jalr	708(ra) # 80001258 <mem_alloc>
    80001f9c:	00349793          	slli	a5,s1,0x3
    80001fa0:	fb040713          	addi	a4,s0,-80
    80001fa4:	00f707b3          	add	a5,a4,a5
    80001fa8:	faa7b823          	sd	a0,-80(a5)
        if(m[i] == nullptr){
    80001fac:	00050663          	beqz	a0,80001fb8 <_Z17mallocGapFillTestv+0x78>
    for(int i=0;i<N;i++)
    80001fb0:	0014849b          	addiw	s1,s1,1
    80001fb4:	fd1ff06f          	j	80001f84 <_Z17mallocGapFillTestv+0x44>
            printString("not OK\n");
    80001fb8:	00008517          	auipc	a0,0x8
    80001fbc:	0c050513          	addi	a0,a0,192 # 8000a078 <CONSOLE_STATUS+0x68>
    80001fc0:	00004097          	auipc	ra,0x4
    80001fc4:	2d8080e7          	jalr	728(ra) # 80006298 <_Z11printStringPKc>
    delete (uint64*)tmp3;
    delete (uint64*)tmp4;
    delete (uint64*)tmp5;

    printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
}
    80001fc8:	09813083          	ld	ra,152(sp)
    80001fcc:	09013403          	ld	s0,144(sp)
    80001fd0:	08813483          	ld	s1,136(sp)
    80001fd4:	08013903          	ld	s2,128(sp)
    80001fd8:	07813983          	ld	s3,120(sp)
    80001fdc:	07013a03          	ld	s4,112(sp)
    80001fe0:	06813a83          	ld	s5,104(sp)
    80001fe4:	06013b03          	ld	s6,96(sp)
    80001fe8:	05813b83          	ld	s7,88(sp)
    80001fec:	05013c03          	ld	s8,80(sp)
    80001ff0:	0a010113          	addi	sp,sp,160
    80001ff4:	00008067          	ret
    delete (uint64*)m[2];
    80001ff8:	f7043503          	ld	a0,-144(s0)
    80001ffc:	00050663          	beqz	a0,80002008 <_Z17mallocGapFillTestv+0xc8>
    80002000:	00001097          	auipc	ra,0x1
    80002004:	3e8080e7          	jalr	1000(ra) # 800033e8 <_ZdlPv>
    void* tmp1 = mem_alloc(1);
    80002008:	00100513          	li	a0,1
    8000200c:	fffff097          	auipc	ra,0xfffff
    80002010:	24c080e7          	jalr	588(ra) # 80001258 <mem_alloc>
    80002014:	00050493          	mv	s1,a0
    void* tmp2 = mem_alloc(1);
    80002018:	00100513          	li	a0,1
    8000201c:	fffff097          	auipc	ra,0xfffff
    80002020:	23c080e7          	jalr	572(ra) # 80001258 <mem_alloc>
    80002024:	00050913          	mv	s2,a0
    void* tmp3 = mem_alloc(1);
    80002028:	00100513          	li	a0,1
    8000202c:	fffff097          	auipc	ra,0xfffff
    80002030:	22c080e7          	jalr	556(ra) # 80001258 <mem_alloc>
    80002034:	00050993          	mv	s3,a0
    if(!tmp1 || !tmp2 || !tmp3)
    80002038:	08048863          	beqz	s1,800020c8 <_Z17mallocGapFillTestv+0x188>
    8000203c:	08090663          	beqz	s2,800020c8 <_Z17mallocGapFillTestv+0x188>
    80002040:	08050463          	beqz	a0,800020c8 <_Z17mallocGapFillTestv+0x188>
    uint64 im1 = (uint64)m[1];
    80002044:	f6843783          	ld	a5,-152(s0)
    uint64 im3 = (uint64)m[3];
    80002048:	f7843503          	ld	a0,-136(s0)
    uint64 im5 = (uint64)m[5];
    8000204c:	f8843b03          	ld	s6,-120(s0)
    uint64 imN = (uint64)m[N];
    80002050:	fb043603          	ld	a2,-80(s0)
    uint64 itmp2 = (uint64)tmp2;
    80002054:	00090a13          	mv	s4,s2
    uint64 itmp3 = (uint64)tmp3;
    80002058:	00098a93          	mv	s5,s3
    if(!(im1<itmp1 && itmp1<im3 && im1<itmp2 && itmp2<im3 && itmp3>imN))
    8000205c:	0897f063          	bgeu	a5,s1,800020dc <_Z17mallocGapFillTestv+0x19c>
    80002060:	06a4fe63          	bgeu	s1,a0,800020dc <_Z17mallocGapFillTestv+0x19c>
    80002064:	0727fc63          	bgeu	a5,s2,800020dc <_Z17mallocGapFillTestv+0x19c>
    80002068:	06a97a63          	bgeu	s2,a0,800020dc <_Z17mallocGapFillTestv+0x19c>
    8000206c:	07367863          	bgeu	a2,s3,800020dc <_Z17mallocGapFillTestv+0x19c>
    delete (uint64*)m[3];
    80002070:	00050663          	beqz	a0,8000207c <_Z17mallocGapFillTestv+0x13c>
    80002074:	00001097          	auipc	ra,0x1
    80002078:	374080e7          	jalr	884(ra) # 800033e8 <_ZdlPv>
    delete (uint64*)m[4];
    8000207c:	f8043503          	ld	a0,-128(s0)
    80002080:	00050663          	beqz	a0,8000208c <_Z17mallocGapFillTestv+0x14c>
    80002084:	00001097          	auipc	ra,0x1
    80002088:	364080e7          	jalr	868(ra) # 800033e8 <_ZdlPv>
    void* tmp4 = mem_alloc(640);
    8000208c:	28000513          	li	a0,640
    80002090:	fffff097          	auipc	ra,0xfffff
    80002094:	1c8080e7          	jalr	456(ra) # 80001258 <mem_alloc>
    80002098:	00050c13          	mv	s8,a0
    void* tmp5 = mem_alloc(576);
    8000209c:	24000513          	li	a0,576
    800020a0:	fffff097          	auipc	ra,0xfffff
    800020a4:	1b8080e7          	jalr	440(ra) # 80001258 <mem_alloc>
    800020a8:	00050b93          	mv	s7,a0
    if(!tmp4 || !tmp5){
    800020ac:	040c0263          	beqz	s8,800020f0 <_Z17mallocGapFillTestv+0x1b0>
    800020b0:	04050063          	beqz	a0,800020f0 <_Z17mallocGapFillTestv+0x1b0>
    if(!(itmp5>itmp2 && itmp5>im5 && itmp4<itmp3)){
    800020b4:	04aa7863          	bgeu	s4,a0,80002104 <_Z17mallocGapFillTestv+0x1c4>
    800020b8:	04ab7663          	bgeu	s6,a0,80002104 <_Z17mallocGapFillTestv+0x1c4>
    800020bc:	055c7463          	bgeu	s8,s5,80002104 <_Z17mallocGapFillTestv+0x1c4>
    for(int i=0;i<N;i++){
    800020c0:	00000a13          	li	s4,0
    800020c4:	0580006f          	j	8000211c <_Z17mallocGapFillTestv+0x1dc>
        printString("not OK\n");
    800020c8:	00008517          	auipc	a0,0x8
    800020cc:	fb050513          	addi	a0,a0,-80 # 8000a078 <CONSOLE_STATUS+0x68>
    800020d0:	00004097          	auipc	ra,0x4
    800020d4:	1c8080e7          	jalr	456(ra) # 80006298 <_Z11printStringPKc>
        return;
    800020d8:	ef1ff06f          	j	80001fc8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800020dc:	00008517          	auipc	a0,0x8
    800020e0:	f9c50513          	addi	a0,a0,-100 # 8000a078 <CONSOLE_STATUS+0x68>
    800020e4:	00004097          	auipc	ra,0x4
    800020e8:	1b4080e7          	jalr	436(ra) # 80006298 <_Z11printStringPKc>
        return;
    800020ec:	eddff06f          	j	80001fc8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800020f0:	00008517          	auipc	a0,0x8
    800020f4:	f8850513          	addi	a0,a0,-120 # 8000a078 <CONSOLE_STATUS+0x68>
    800020f8:	00004097          	auipc	ra,0x4
    800020fc:	1a0080e7          	jalr	416(ra) # 80006298 <_Z11printStringPKc>
        return;
    80002100:	ec9ff06f          	j	80001fc8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    80002104:	00008517          	auipc	a0,0x8
    80002108:	f7450513          	addi	a0,a0,-140 # 8000a078 <CONSOLE_STATUS+0x68>
    8000210c:	00004097          	auipc	ra,0x4
    80002110:	18c080e7          	jalr	396(ra) # 80006298 <_Z11printStringPKc>
        return;
    80002114:	eb5ff06f          	j	80001fc8 <_Z17mallocGapFillTestv+0x88>
    for(int i=0;i<N;i++){
    80002118:	001a0a1b          	addiw	s4,s4,1
    8000211c:	00900793          	li	a5,9
    80002120:	0347c263          	blt	a5,s4,80002144 <_Z17mallocGapFillTestv+0x204>
        delete (uint64*)m[i];
    80002124:	003a1793          	slli	a5,s4,0x3
    80002128:	fb040713          	addi	a4,s0,-80
    8000212c:	00f707b3          	add	a5,a4,a5
    80002130:	fb07b503          	ld	a0,-80(a5)
    80002134:	fe0502e3          	beqz	a0,80002118 <_Z17mallocGapFillTestv+0x1d8>
    80002138:	00001097          	auipc	ra,0x1
    8000213c:	2b0080e7          	jalr	688(ra) # 800033e8 <_ZdlPv>
    80002140:	fd9ff06f          	j	80002118 <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    80002144:	00048513          	mv	a0,s1
    80002148:	00001097          	auipc	ra,0x1
    8000214c:	2a0080e7          	jalr	672(ra) # 800033e8 <_ZdlPv>
    delete (uint64*)tmp2;
    80002150:	00090513          	mv	a0,s2
    80002154:	00001097          	auipc	ra,0x1
    80002158:	294080e7          	jalr	660(ra) # 800033e8 <_ZdlPv>
    delete (uint64*)tmp3;
    8000215c:	00098513          	mv	a0,s3
    80002160:	00001097          	auipc	ra,0x1
    80002164:	288080e7          	jalr	648(ra) # 800033e8 <_ZdlPv>
    delete (uint64*)tmp4;
    80002168:	000c0513          	mv	a0,s8
    8000216c:	00001097          	auipc	ra,0x1
    80002170:	27c080e7          	jalr	636(ra) # 800033e8 <_ZdlPv>
    delete (uint64*)tmp5;
    80002174:	000b8513          	mv	a0,s7
    80002178:	00001097          	auipc	ra,0x1
    8000217c:	270080e7          	jalr	624(ra) # 800033e8 <_ZdlPv>
    printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80002180:	00008517          	auipc	a0,0x8
    80002184:	ff850513          	addi	a0,a0,-8 # 8000a178 <CONSOLE_STATUS+0x168>
    80002188:	00004097          	auipc	ra,0x4
    8000218c:	110080e7          	jalr	272(ra) # 80006298 <_Z11printStringPKc>
    80002190:	e39ff06f          	j	80001fc8 <_Z17mallocGapFillTestv+0x88>

0000000080002194 <_Z21memoryAllocationTestsv>:
{
    80002194:	ff010113          	addi	sp,sp,-16
    80002198:	00113423          	sd	ra,8(sp)
    8000219c:	00813023          	sd	s0,0(sp)
    800021a0:	01010413          	addi	s0,sp,16
    mallocGapFillTest();
    800021a4:	00000097          	auipc	ra,0x0
    800021a8:	d9c080e7          	jalr	-612(ra) # 80001f40 <_Z17mallocGapFillTestv>
}
    800021ac:	00813083          	ld	ra,8(sp)
    800021b0:	00013403          	ld	s0,0(sp)
    800021b4:	01010113          	addi	sp,sp,16
    800021b8:	00008067          	ret

00000000800021bc <_Z9consumerAPv>:
sem_t spaceAvailable, itemAvailable;
char string[11] = "this is ni";

void consumerA(void *arg)
{
    while(head!=10)
    800021bc:	0000b717          	auipc	a4,0xb
    800021c0:	ec472703          	lw	a4,-316(a4) # 8000d080 <head>
    800021c4:	00a00793          	li	a5,10
    800021c8:	06f70c63          	beq	a4,a5,80002240 <_Z9consumerAPv+0x84>
{
    800021cc:	fe010113          	addi	sp,sp,-32
    800021d0:	00113c23          	sd	ra,24(sp)
    800021d4:	00813823          	sd	s0,16(sp)
    800021d8:	00913423          	sd	s1,8(sp)
    800021dc:	02010413          	addi	s0,sp,32
    {
        sem_wait(itemAvailable);
    800021e0:	0000b497          	auipc	s1,0xb
    800021e4:	ea048493          	addi	s1,s1,-352 # 8000d080 <head>
    800021e8:	0084b503          	ld	a0,8(s1)
    800021ec:	fffff097          	auipc	ra,0xfffff
    800021f0:	1f4080e7          	jalr	500(ra) # 800013e0 <sem_wait>
        putc(buffer[head++]);
    800021f4:	0004a783          	lw	a5,0(s1)
    800021f8:	0017871b          	addiw	a4,a5,1
    800021fc:	00e4a023          	sw	a4,0(s1)
    80002200:	00f487b3          	add	a5,s1,a5
    80002204:	0107c503          	lbu	a0,16(a5)
    80002208:	fffff097          	auipc	ra,0xfffff
    8000220c:	330080e7          	jalr	816(ra) # 80001538 <putc>
        sem_signal(spaceAvailable);
    80002210:	0204b503          	ld	a0,32(s1)
    80002214:	fffff097          	auipc	ra,0xfffff
    80002218:	1f8080e7          	jalr	504(ra) # 8000140c <sem_signal>
    while(head!=10)
    8000221c:	0000b717          	auipc	a4,0xb
    80002220:	e6472703          	lw	a4,-412(a4) # 8000d080 <head>
    80002224:	00a00793          	li	a5,10
    80002228:	faf71ce3          	bne	a4,a5,800021e0 <_Z9consumerAPv+0x24>
    }
}
    8000222c:	01813083          	ld	ra,24(sp)
    80002230:	01013403          	ld	s0,16(sp)
    80002234:	00813483          	ld	s1,8(sp)
    80002238:	02010113          	addi	sp,sp,32
    8000223c:	00008067          	ret
    80002240:	00008067          	ret

0000000080002244 <_Z9producerAPv>:

void producerA(void *arg)
{
    while(tail!=10)
    80002244:	0000b717          	auipc	a4,0xb
    80002248:	e6472703          	lw	a4,-412(a4) # 8000d0a8 <tail>
    8000224c:	00a00793          	li	a5,10
    80002250:	08f70063          	beq	a4,a5,800022d0 <_Z9producerAPv+0x8c>
{
    80002254:	fe010113          	addi	sp,sp,-32
    80002258:	00113c23          	sd	ra,24(sp)
    8000225c:	00813823          	sd	s0,16(sp)
    80002260:	00913423          	sd	s1,8(sp)
    80002264:	02010413          	addi	s0,sp,32
    {
        sem_wait(spaceAvailable);
    80002268:	0000b497          	auipc	s1,0xb
    8000226c:	e1848493          	addi	s1,s1,-488 # 8000d080 <head>
    80002270:	0204b503          	ld	a0,32(s1)
    80002274:	fffff097          	auipc	ra,0xfffff
    80002278:	16c080e7          	jalr	364(ra) # 800013e0 <sem_wait>
        buffer[tail] = string[tail];
    8000227c:	0284a783          	lw	a5,40(s1)
    80002280:	0000b717          	auipc	a4,0xb
    80002284:	ab070713          	addi	a4,a4,-1360 # 8000cd30 <string>
    80002288:	00f70733          	add	a4,a4,a5
    8000228c:	00074683          	lbu	a3,0(a4)
    80002290:	00f48733          	add	a4,s1,a5
    80002294:	00d70823          	sb	a3,16(a4)
        tail++;
    80002298:	0017879b          	addiw	a5,a5,1
    8000229c:	02f4a423          	sw	a5,40(s1)
        sem_signal(itemAvailable);
    800022a0:	0084b503          	ld	a0,8(s1)
    800022a4:	fffff097          	auipc	ra,0xfffff
    800022a8:	168080e7          	jalr	360(ra) # 8000140c <sem_signal>
    while(tail!=10)
    800022ac:	0000b717          	auipc	a4,0xb
    800022b0:	dfc72703          	lw	a4,-516(a4) # 8000d0a8 <tail>
    800022b4:	00a00793          	li	a5,10
    800022b8:	faf718e3          	bne	a4,a5,80002268 <_Z9producerAPv+0x24>
    }
}
    800022bc:	01813083          	ld	ra,24(sp)
    800022c0:	01013403          	ld	s0,16(sp)
    800022c4:	00813483          	ld	s1,8(sp)
    800022c8:	02010113          	addi	sp,sp,32
    800022cc:	00008067          	ret
    800022d0:	00008067          	ret

00000000800022d4 <_Z8semTest1v>:

void semTest1()
{
    800022d4:	ff010113          	addi	sp,sp,-16
    800022d8:	00813423          	sd	s0,8(sp)
    800022dc:	01010413          	addi	s0,sp,16

    thread_create(&threadB, consumerA, nullptr);

    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
        thread_dispatch();*/
}
    800022e0:	00813403          	ld	s0,8(sp)
    800022e4:	01010113          	addi	sp,sp,16
    800022e8:	00008067          	ret

00000000800022ec <_Z12consoleTest1v>:

void consoleTest1()
{
    800022ec:	fe010113          	addi	sp,sp,-32
    800022f0:	00113c23          	sd	ra,24(sp)
    800022f4:	00813823          	sd	s0,16(sp)
    800022f8:	00913423          	sd	s1,8(sp)
    800022fc:	02010413          	addi	s0,sp,32
    for(int i = 0; i < 100;i++)
    80002300:	00000493          	li	s1,0
    80002304:	06300793          	li	a5,99
    80002308:	0097ca63          	blt	a5,s1,8000231c <_Z12consoleTest1v+0x30>
    {
        getc();
    8000230c:	fffff097          	auipc	ra,0xfffff
    80002310:	204080e7          	jalr	516(ra) # 80001510 <getc>
    for(int i = 0; i < 100;i++)
    80002314:	0014849b          	addiw	s1,s1,1
    80002318:	fedff06f          	j	80002304 <_Z12consoleTest1v+0x18>
    }
}
    8000231c:	01813083          	ld	ra,24(sp)
    80002320:	01013403          	ld	s0,16(sp)
    80002324:	00813483          	ld	s1,8(sp)
    80002328:	02010113          	addi	sp,sp,32
    8000232c:	00008067          	ret

0000000080002330 <_Z12consoleTestsv>:

void consoleTests()
{
    80002330:	ff010113          	addi	sp,sp,-16
    80002334:	00113423          	sd	ra,8(sp)
    80002338:	00813023          	sd	s0,0(sp)
    8000233c:	01010413          	addi	s0,sp,16
    consoleTest1();
    80002340:	00000097          	auipc	ra,0x0
    80002344:	fac080e7          	jalr	-84(ra) # 800022ec <_Z12consoleTest1v>
}
    80002348:	00813083          	ld	ra,8(sp)
    8000234c:	00013403          	ld	s0,0(sp)
    80002350:	01010113          	addi	sp,sp,16
    80002354:	00008067          	ret

0000000080002358 <_Z7myTestsv>:
{
    80002358:	ff010113          	addi	sp,sp,-16
    8000235c:	00113423          	sd	ra,8(sp)
    80002360:	00813023          	sd	s0,0(sp)
    80002364:	01010413          	addi	s0,sp,16
    consoleTests();
    80002368:	00000097          	auipc	ra,0x0
    8000236c:	fc8080e7          	jalr	-56(ra) # 80002330 <_Z12consoleTestsv>
}
    80002370:	00813083          	ld	ra,8(sp)
    80002374:	00013403          	ld	s0,0(sp)
    80002378:	01010113          	addi	sp,sp,16
    8000237c:	00008067          	ret

0000000080002380 <_Z15changeModeTest1v>:


void changeModeTest1()
{
    80002380:	ff010113          	addi	sp,sp,-16
    80002384:	00813423          	sd	s0,8(sp)
    80002388:	01010413          	addi	s0,sp,16
    // u user niti smo
    __asm__ volatile("csrr a0, sstatus"); //treba da pukne
    8000238c:	10002573          	csrr	a0,sstatus
}
    80002390:	00813403          	ld	s0,8(sp)
    80002394:	01010113          	addi	sp,sp,16
    80002398:	00008067          	ret

000000008000239c <_Z15changeModeTestsv>:

void changeModeTests()
{
    8000239c:	ff010113          	addi	sp,sp,-16
    800023a0:	00113423          	sd	ra,8(sp)
    800023a4:	00813023          	sd	s0,0(sp)
    800023a8:	01010413          	addi	s0,sp,16
    changeModeTest1();
    800023ac:	00000097          	auipc	ra,0x0
    800023b0:	fd4080e7          	jalr	-44(ra) # 80002380 <_Z15changeModeTest1v>
}
    800023b4:	00813083          	ld	ra,8(sp)
    800023b8:	00013403          	ld	s0,0(sp)
    800023bc:	01010113          	addi	sp,sp,16
    800023c0:	00008067          	ret

00000000800023c4 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    800023c4:	ff010113          	addi	sp,sp,-16
    800023c8:	00813423          	sd	s0,8(sp)
    800023cc:	01010413          	addi	s0,sp,16
    800023d0:	00813403          	ld	s0,8(sp)
    800023d4:	01010113          	addi	sp,sp,16
    800023d8:	00008067          	ret

00000000800023dc <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    800023dc:	ff010113          	addi	sp,sp,-16
    800023e0:	00813423          	sd	s0,8(sp)
    800023e4:	01010413          	addi	s0,sp,16
    800023e8:	00813403          	ld	s0,8(sp)
    800023ec:	01010113          	addi	sp,sp,16
    800023f0:	00008067          	ret

00000000800023f4 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    800023f4:	ff010113          	addi	sp,sp,-16
    800023f8:	00113423          	sd	ra,8(sp)
    800023fc:	00813023          	sd	s0,0(sp)
    80002400:	01010413          	addi	s0,sp,16
    80002404:	0000b797          	auipc	a5,0xb
    80002408:	94c78793          	addi	a5,a5,-1716 # 8000cd50 <_ZTV14PeriodicThread+0x10>
    8000240c:	00f53023          	sd	a5,0(a0)
    80002410:	00001097          	auipc	ra,0x1
    80002414:	f40080e7          	jalr	-192(ra) # 80003350 <_ZN6ThreadD1Ev>
    80002418:	00813083          	ld	ra,8(sp)
    8000241c:	00013403          	ld	s0,0(sp)
    80002420:	01010113          	addi	sp,sp,16
    80002424:	00008067          	ret

0000000080002428 <_ZN14PeriodicThreadD0Ev>:
    80002428:	fe010113          	addi	sp,sp,-32
    8000242c:	00113c23          	sd	ra,24(sp)
    80002430:	00813823          	sd	s0,16(sp)
    80002434:	00913423          	sd	s1,8(sp)
    80002438:	02010413          	addi	s0,sp,32
    8000243c:	00050493          	mv	s1,a0
    80002440:	0000b797          	auipc	a5,0xb
    80002444:	91078793          	addi	a5,a5,-1776 # 8000cd50 <_ZTV14PeriodicThread+0x10>
    80002448:	00f53023          	sd	a5,0(a0)
    8000244c:	00001097          	auipc	ra,0x1
    80002450:	f04080e7          	jalr	-252(ra) # 80003350 <_ZN6ThreadD1Ev>
    80002454:	00048513          	mv	a0,s1
    80002458:	00001097          	auipc	ra,0x1
    8000245c:	f90080e7          	jalr	-112(ra) # 800033e8 <_ZdlPv>
    80002460:	01813083          	ld	ra,24(sp)
    80002464:	01013403          	ld	s0,16(sp)
    80002468:	00813483          	ld	s1,8(sp)
    8000246c:	02010113          	addi	sp,sp,32
    80002470:	00008067          	ret

0000000080002474 <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    80002474:	ff010113          	addi	sp,sp,-16
    80002478:	00113423          	sd	ra,8(sp)
    8000247c:	00813023          	sd	s0,0(sp)
    80002480:	01010413          	addi	s0,sp,16
    80002484:	0000b797          	auipc	a5,0xb
    80002488:	8cc78793          	addi	a5,a5,-1844 # 8000cd50 <_ZTV14PeriodicThread+0x10>
    8000248c:	00f53023          	sd	a5,0(a0)
    80002490:	00001097          	auipc	ra,0x1
    80002494:	ec0080e7          	jalr	-320(ra) # 80003350 <_ZN6ThreadD1Ev>
    80002498:	00813083          	ld	ra,8(sp)
    8000249c:	00013403          	ld	s0,0(sp)
    800024a0:	01010113          	addi	sp,sp,16
    800024a4:	00008067          	ret

00000000800024a8 <_ZN12TestPeriodicD0Ev>:
    800024a8:	fe010113          	addi	sp,sp,-32
    800024ac:	00113c23          	sd	ra,24(sp)
    800024b0:	00813823          	sd	s0,16(sp)
    800024b4:	00913423          	sd	s1,8(sp)
    800024b8:	02010413          	addi	s0,sp,32
    800024bc:	00050493          	mv	s1,a0
    800024c0:	0000b797          	auipc	a5,0xb
    800024c4:	89078793          	addi	a5,a5,-1904 # 8000cd50 <_ZTV14PeriodicThread+0x10>
    800024c8:	00f53023          	sd	a5,0(a0)
    800024cc:	00001097          	auipc	ra,0x1
    800024d0:	e84080e7          	jalr	-380(ra) # 80003350 <_ZN6ThreadD1Ev>
    800024d4:	00048513          	mv	a0,s1
    800024d8:	00001097          	auipc	ra,0x1
    800024dc:	f10080e7          	jalr	-240(ra) # 800033e8 <_ZdlPv>
    800024e0:	01813083          	ld	ra,24(sp)
    800024e4:	01013403          	ld	s0,16(sp)
    800024e8:	00813483          	ld	s1,8(sp)
    800024ec:	02010113          	addi	sp,sp,32
    800024f0:	00008067          	ret

00000000800024f4 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800024f4:	ff010113          	addi	sp,sp,-16
    800024f8:	00113423          	sd	ra,8(sp)
    800024fc:	00813023          	sd	s0,0(sp)
    80002500:	01010413          	addi	s0,sp,16
    //trapPrintString("Runner started...\n");
    Riscv::popSppSpie();
    80002504:	00001097          	auipc	ra,0x1
    80002508:	2f0080e7          	jalr	752(ra) # 800037f4 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    8000250c:	0000b797          	auipc	a5,0xb
    80002510:	ba47b783          	ld	a5,-1116(a5) # 8000d0b0 <_ZN3PCB7runningE>
    80002514:	0287b703          	ld	a4,40(a5)
    80002518:	0307b503          	ld	a0,48(a5)
    8000251c:	000700e7          	jalr	a4

    //printString("Runner ended...\n");

    thread_exit();
    80002520:	fffff097          	auipc	ra,0xfffff
    80002524:	e34080e7          	jalr	-460(ra) # 80001354 <thread_exit>
}
    80002528:	00813083          	ld	ra,8(sp)
    8000252c:	00013403          	ld	s0,0(sp)
    80002530:	01010113          	addi	sp,sp,16
    80002534:	00008067          	ret

0000000080002538 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80002538:	ff010113          	addi	sp,sp,-16
    8000253c:	00813423          	sd	s0,8(sp)
    80002540:	01010413          	addi	s0,sp,16
    })
    80002544:	00050023          	sb	zero,0(a0)
    80002548:	00e53c23          	sd	a4,24(a0)
    8000254c:	02053023          	sd	zero,32(a0)
    80002550:	02b53423          	sd	a1,40(a0)
    80002554:	02c53823          	sd	a2,48(a0)
    80002558:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    8000255c:	000017b7          	lui	a5,0x1
    80002560:	00f686b3          	add	a3,a3,a5
    })
    80002564:	04d53423          	sd	a3,72(a0)
    80002568:	00000797          	auipc	a5,0x0
    8000256c:	f8c78793          	addi	a5,a5,-116 # 800024f4 <_ZN3PCB6runnerEv>
    80002570:	04f53823          	sd	a5,80(a0)
    80002574:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    80002578:	00053423          	sd	zero,8(a0)
}
    8000257c:	00813403          	ld	s0,8(sp)
    80002580:	01010113          	addi	sp,sp,16
    80002584:	00008067          	ret

0000000080002588 <_ZN3PCB5sleepEm>:
{
    80002588:	ff010113          	addi	sp,sp,-16
    8000258c:	00813423          	sd	s0,8(sp)
    80002590:	01010413          	addi	s0,sp,16
}
    80002594:	00813403          	ld	s0,8(sp)
    80002598:	01010113          	addi	sp,sp,16
    8000259c:	00008067          	ret

00000000800025a0 <_ZN3PCB5startEv>:
{
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00113423          	sd	ra,8(sp)
    800025a8:	00813023          	sd	s0,0(sp)
    800025ac:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    800025b0:	00001097          	auipc	ra,0x1
    800025b4:	c4c080e7          	jalr	-948(ra) # 800031fc <_ZN9Scheduler3putEP3PCB>
}
    800025b8:	00813083          	ld	ra,8(sp)
    800025bc:	00013403          	ld	s0,0(sp)
    800025c0:	01010113          	addi	sp,sp,16
    800025c4:	00008067          	ret

00000000800025c8 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    800025c8:	fe010113          	addi	sp,sp,-32
    800025cc:	00113c23          	sd	ra,24(sp)
    800025d0:	00813823          	sd	s0,16(sp)
    800025d4:	00913423          	sd	s1,8(sp)
    800025d8:	01213023          	sd	s2,0(sp)
    800025dc:	02010413          	addi	s0,sp,32
    //trapPrintString("Dispatch called...\n");
    PCB* old = running;
    800025e0:	0000b497          	auipc	s1,0xb
    800025e4:	ad04b483          	ld	s1,-1328(s1) # 8000d0b0 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800025e8:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    800025ec:	00100793          	li	a5,1
    800025f0:	04f70a63          	beq	a4,a5,80002644 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800025f4:	00001097          	auipc	ra,0x1
    800025f8:	c5c080e7          	jalr	-932(ra) # 80003250 <_ZN9Scheduler3getEv>
    800025fc:	0000b917          	auipc	s2,0xb
    80002600:	ab490913          	addi	s2,s2,-1356 # 8000d0b0 <_ZN3PCB7runningE>
    80002604:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    80002608:	00100793          	li	a5,1
    8000260c:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);
    //trapPrintString("Switching context...\n");

    Riscv::changePrivMode();
    80002610:	00001097          	auipc	ra,0x1
    80002614:	36c080e7          	jalr	876(ra) # 8000397c <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    80002618:	00093583          	ld	a1,0(s2)
    8000261c:	04858593          	addi	a1,a1,72
    80002620:	04848513          	addi	a0,s1,72
    80002624:	fffff097          	auipc	ra,0xfffff
    80002628:	c14080e7          	jalr	-1004(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    8000262c:	01813083          	ld	ra,24(sp)
    80002630:	01013403          	ld	s0,16(sp)
    80002634:	00813483          	ld	s1,8(sp)
    80002638:	00013903          	ld	s2,0(sp)
    8000263c:	02010113          	addi	sp,sp,32
    80002640:	00008067          	ret
        Scheduler::put(old);
    80002644:	00048513          	mv	a0,s1
    80002648:	00001097          	auipc	ra,0x1
    8000264c:	bb4080e7          	jalr	-1100(ra) # 800031fc <_ZN9Scheduler3putEP3PCB>
    80002650:	fa5ff06f          	j	800025f4 <_ZN3PCB8dispatchEv+0x2c>

0000000080002654 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80002654:	ff010113          	addi	sp,sp,-16
    80002658:	00113423          	sd	ra,8(sp)
    8000265c:	00813023          	sd	s0,0(sp)
    80002660:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80002664:	00002097          	auipc	ra,0x2
    80002668:	9fc080e7          	jalr	-1540(ra) # 80004060 <_ZN15MemoryAllocator7kmallocEm>
}
    8000266c:	00813083          	ld	ra,8(sp)
    80002670:	00013403          	ld	s0,0(sp)
    80002674:	01010113          	addi	sp,sp,16
    80002678:	00008067          	ret

000000008000267c <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    8000267c:	ff010113          	addi	sp,sp,-16
    80002680:	00113423          	sd	ra,8(sp)
    80002684:	00813023          	sd	s0,0(sp)
    80002688:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    8000268c:	00002097          	auipc	ra,0x2
    80002690:	a38080e7          	jalr	-1480(ra) # 800040c4 <_ZN15MemoryAllocator5kfreeEPv>
}
    80002694:	00813083          	ld	ra,8(sp)
    80002698:	00013403          	ld	s0,0(sp)
    8000269c:	01010113          	addi	sp,sp,16
    800026a0:	00008067          	ret

00000000800026a4 <_ZN3PCBD1Ev>:

PCB::~PCB()
    800026a4:	ff010113          	addi	sp,sp,-16
    800026a8:	00113423          	sd	ra,8(sp)
    800026ac:	00813023          	sd	s0,0(sp)
    800026b0:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    800026b4:	03853503          	ld	a0,56(a0)
    800026b8:	00002097          	auipc	ra,0x2
    800026bc:	a0c080e7          	jalr	-1524(ra) # 800040c4 <_ZN15MemoryAllocator5kfreeEPv>
}
    800026c0:	00813083          	ld	ra,8(sp)
    800026c4:	00013403          	ld	s0,0(sp)
    800026c8:	01010113          	addi	sp,sp,16
    800026cc:	00008067          	ret

00000000800026d0 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800026d0:	fd010113          	addi	sp,sp,-48
    800026d4:	02113423          	sd	ra,40(sp)
    800026d8:	02813023          	sd	s0,32(sp)
    800026dc:	00913c23          	sd	s1,24(sp)
    800026e0:	01213823          	sd	s2,16(sp)
    800026e4:	01313423          	sd	s3,8(sp)
    800026e8:	01413023          	sd	s4,0(sp)
    800026ec:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800026f0:	06000513          	li	a0,96
    800026f4:	00000097          	auipc	ra,0x0
    800026f8:	f60080e7          	jalr	-160(ra) # 80002654 <_ZN3PCBnwEm>
    800026fc:	00050493          	mv	s1,a0
    80002700:	00000713          	li	a4,0
    80002704:	00000693          	li	a3,0
    80002708:	00000613          	li	a2,0
    8000270c:	00000593          	li	a1,0
    80002710:	00000097          	auipc	ra,0x0
    80002714:	e28080e7          	jalr	-472(ra) # 80002538 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    80002718:	00100793          	li	a5,1
    8000271c:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    80002720:	0000b917          	auipc	s2,0xb
    80002724:	99090913          	addi	s2,s2,-1648 # 8000d0b0 <_ZN3PCB7runningE>
    80002728:	00993023          	sd	s1,0(s2)
    8000272c:	00100a13          	li	s4,1
    80002730:	0544a023          	sw	s4,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002734:	00001537          	lui	a0,0x1
    80002738:	00002097          	auipc	ra,0x2
    8000273c:	928080e7          	jalr	-1752(ra) # 80004060 <_ZN15MemoryAllocator7kmallocEm>
    80002740:	00050993          	mv	s3,a0
    80002744:	06000513          	li	a0,96
    80002748:	00000097          	auipc	ra,0x0
    8000274c:	f0c080e7          	jalr	-244(ra) # 80002654 <_ZN3PCBnwEm>
    80002750:	00050493          	mv	s1,a0
    80002754:	00200713          	li	a4,2
    80002758:	00098693          	mv	a3,s3
    8000275c:	00000613          	li	a2,0
    80002760:	0000b597          	auipc	a1,0xb
    80002764:	8885b583          	ld	a1,-1912(a1) # 8000cfe8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002768:	00000097          	auipc	ra,0x0
    8000276c:	dd0080e7          	jalr	-560(ra) # 80002538 <_ZN3PCBC1EPFvPvES0_S0_m>
    80002770:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80002774:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    80002778:	00893503          	ld	a0,8(s2)
    8000277c:	00000097          	auipc	ra,0x0
    80002780:	e24080e7          	jalr	-476(ra) # 800025a0 <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002784:	00001537          	lui	a0,0x1
    80002788:	00002097          	auipc	ra,0x2
    8000278c:	8d8080e7          	jalr	-1832(ra) # 80004060 <_ZN15MemoryAllocator7kmallocEm>
    80002790:	00050993          	mv	s3,a0
    80002794:	06000513          	li	a0,96
    80002798:	00000097          	auipc	ra,0x0
    8000279c:	ebc080e7          	jalr	-324(ra) # 80002654 <_ZN3PCBnwEm>
    800027a0:	00050493          	mv	s1,a0
    800027a4:	00200713          	li	a4,2
    800027a8:	00098693          	mv	a3,s3
    800027ac:	00000613          	li	a2,0
    800027b0:	0000b597          	auipc	a1,0xb
    800027b4:	8705b583          	ld	a1,-1936(a1) # 8000d020 <_GLOBAL_OFFSET_TABLE_+0x88>
    800027b8:	00000097          	auipc	ra,0x0
    800027bc:	d80080e7          	jalr	-640(ra) # 80002538 <_ZN3PCBC1EPFvPvES0_S0_m>
    800027c0:	00993823          	sd	s1,16(s2)
    PCB::userPCB->start();
    800027c4:	00048513          	mv	a0,s1
    800027c8:	00000097          	auipc	ra,0x0
    800027cc:	dd8080e7          	jalr	-552(ra) # 800025a0 <_ZN3PCB5startEv>
}
    800027d0:	02813083          	ld	ra,40(sp)
    800027d4:	02013403          	ld	s0,32(sp)
    800027d8:	01813483          	ld	s1,24(sp)
    800027dc:	01013903          	ld	s2,16(sp)
    800027e0:	00813983          	ld	s3,8(sp)
    800027e4:	00013a03          	ld	s4,0(sp)
    800027e8:	03010113          	addi	sp,sp,48
    800027ec:	00008067          	ret

00000000800027f0 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    800027f0:	ff010113          	addi	sp,sp,-16
    800027f4:	00813423          	sd	s0,8(sp)
    800027f8:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    800027fc:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    80002800:	ffd50513          	addi	a0,a0,-3
}
    80002804:	00153513          	seqz	a0,a0
    80002808:	00813403          	ld	s0,8(sp)
    8000280c:	01010113          	addi	sp,sp,16
    80002810:	00008067          	ret

0000000080002814 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002814:	ff010113          	addi	sp,sp,-16
    80002818:	00113423          	sd	ra,8(sp)
    8000281c:	00813023          	sd	s0,0(sp)
    80002820:	01010413          	addi	s0,sp,16
    //trapPrintString("Exiting thread...\n");
    PCB::timeSliceCounter = 0;
    80002824:	0000b797          	auipc	a5,0xb
    80002828:	88c78793          	addi	a5,a5,-1908 # 8000d0b0 <_ZN3PCB7runningE>
    8000282c:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    80002830:	0007b783          	ld	a5,0(a5)
    80002834:	00300713          	li	a4,3
    80002838:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    8000283c:	00000097          	auipc	ra,0x0
    80002840:	d8c080e7          	jalr	-628(ra) # 800025c8 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80002844:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002848:	00001097          	auipc	ra,0x1
    8000284c:	0fc080e7          	jalr	252(ra) # 80003944 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002850:	00813083          	ld	ra,8(sp)
    80002854:	00013403          	ld	s0,0(sp)
    80002858:	01010113          	addi	sp,sp,16
    8000285c:	00008067          	ret

0000000080002860 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002860:	ff010113          	addi	sp,sp,-16
    80002864:	00113423          	sd	ra,8(sp)
    80002868:	00813023          	sd	s0,0(sp)
    8000286c:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002870:	0000b797          	auipc	a5,0xb
    80002874:	8407bc23          	sd	zero,-1960(a5) # 8000d0c8 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002878:	00000097          	auipc	ra,0x0
    8000287c:	d50080e7          	jalr	-688(ra) # 800025c8 <_ZN3PCB8dispatchEv>
}
    80002880:	00813083          	ld	ra,8(sp)
    80002884:	00013403          	ld	s0,0(sp)
    80002888:	01010113          	addi	sp,sp,16
    8000288c:	00008067          	ret

0000000080002890 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002890:	ff010113          	addi	sp,sp,-16
    80002894:	00113423          	sd	ra,8(sp)
    80002898:	00813023          	sd	s0,0(sp)
    8000289c:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    800028a0:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    800028a4:	0000b717          	auipc	a4,0xb
    800028a8:	80c70713          	addi	a4,a4,-2036 # 8000d0b0 <_ZN3PCB7runningE>
    800028ac:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    800028b0:	00073703          	ld	a4,0(a4)
    800028b4:	0000a697          	auipc	a3,0xa
    800028b8:	72c6b683          	ld	a3,1836(a3) # 8000cfe0 <_GLOBAL_OFFSET_TABLE_+0x48>
    800028bc:	0006b683          	ld	a3,0(a3)
    800028c0:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800028c4:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    800028c8:	00000097          	auipc	ra,0x0
    800028cc:	7b8080e7          	jalr	1976(ra) # 80003080 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    800028d0:	00000097          	auipc	ra,0x0
    800028d4:	cf8080e7          	jalr	-776(ra) # 800025c8 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    800028d8:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800028dc:	00001097          	auipc	ra,0x1
    800028e0:	068080e7          	jalr	104(ra) # 80003944 <_ZN5Riscv13w_a0_sscratchEv>
}
    800028e4:	00813083          	ld	ra,8(sp)
    800028e8:	00013403          	ld	s0,0(sp)
    800028ec:	01010113          	addi	sp,sp,16
    800028f0:	00008067          	ret

00000000800028f4 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    800028f4:	fd010113          	addi	sp,sp,-48
    800028f8:	02113423          	sd	ra,40(sp)
    800028fc:	02813023          	sd	s0,32(sp)
    80002900:	00913c23          	sd	s1,24(sp)
    80002904:	01213823          	sd	s2,16(sp)
    80002908:	01313423          	sd	s3,8(sp)
    8000290c:	01413023          	sd	s4,0(sp)
    80002910:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002914:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002918:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    8000291c:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002920:	06000513          	li	a0,96
    80002924:	00000097          	auipc	ra,0x0
    80002928:	d30080e7          	jalr	-720(ra) # 80002654 <_ZN3PCBnwEm>
    8000292c:	00050493          	mv	s1,a0
    80002930:	00200713          	li	a4,2
    80002934:	0000a697          	auipc	a3,0xa
    80002938:	79c6b683          	ld	a3,1948(a3) # 8000d0d0 <_ZN3PCB10savedRegA4E>
    8000293c:	000a0613          	mv	a2,s4
    80002940:	00098593          	mv	a1,s3
    80002944:	00000097          	auipc	ra,0x0
    80002948:	bf4080e7          	jalr	-1036(ra) # 80002538 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    8000294c:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002950:	02048e63          	beqz	s1,8000298c <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002954:	00048513          	mv	a0,s1
    80002958:	00000097          	auipc	ra,0x0
    8000295c:	c48080e7          	jalr	-952(ra) # 800025a0 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002960:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002964:	00001097          	auipc	ra,0x1
    80002968:	fe0080e7          	jalr	-32(ra) # 80003944 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000296c:	02813083          	ld	ra,40(sp)
    80002970:	02013403          	ld	s0,32(sp)
    80002974:	01813483          	ld	s1,24(sp)
    80002978:	01013903          	ld	s2,16(sp)
    8000297c:	00813983          	ld	s3,8(sp)
    80002980:	00013a03          	ld	s4,0(sp)
    80002984:	03010113          	addi	sp,sp,48
    80002988:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    8000298c:	fff00513          	li	a0,-1
    80002990:	fd5ff06f          	j	80002964 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002994 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002994:	ff010113          	addi	sp,sp,-16
    80002998:	00113423          	sd	ra,8(sp)
    8000299c:	00813023          	sd	s0,0(sp)
    800029a0:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    800029a4:	00058513          	mv	a0,a1
    if(pcb != 0)
    800029a8:	02050463          	beqz	a0,800029d0 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    800029ac:	00000097          	auipc	ra,0x0
    800029b0:	bf4080e7          	jalr	-1036(ra) # 800025a0 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    800029b4:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    800029b8:	00001097          	auipc	ra,0x1
    800029bc:	f8c080e7          	jalr	-116(ra) # 80003944 <_ZN5Riscv13w_a0_sscratchEv>
}
    800029c0:	00813083          	ld	ra,8(sp)
    800029c4:	00013403          	ld	s0,0(sp)
    800029c8:	01010113          	addi	sp,sp,16
    800029cc:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    800029d0:	fff00513          	li	a0,-1
    800029d4:	fe5ff06f          	j	800029b8 <_ZN3PCB18threadStartHandlerEv+0x24>

00000000800029d8 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    800029d8:	fd010113          	addi	sp,sp,-48
    800029dc:	02113423          	sd	ra,40(sp)
    800029e0:	02813023          	sd	s0,32(sp)
    800029e4:	00913c23          	sd	s1,24(sp)
    800029e8:	01213823          	sd	s2,16(sp)
    800029ec:	01313423          	sd	s3,8(sp)
    800029f0:	01413023          	sd	s4,0(sp)
    800029f4:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800029f8:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800029fc:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002a00:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002a04:	06000513          	li	a0,96
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	c4c080e7          	jalr	-948(ra) # 80002654 <_ZN3PCBnwEm>
    80002a10:	00050493          	mv	s1,a0
    80002a14:	00200713          	li	a4,2
    80002a18:	0000a697          	auipc	a3,0xa
    80002a1c:	6b86b683          	ld	a3,1720(a3) # 8000d0d0 <_ZN3PCB10savedRegA4E>
    80002a20:	000a0613          	mv	a2,s4
    80002a24:	00098593          	mv	a1,s3
    80002a28:	00000097          	auipc	ra,0x0
    80002a2c:	b10080e7          	jalr	-1264(ra) # 80002538 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002a30:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002a34:	02048863          	beqz	s1,80002a64 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80002a38:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002a3c:	00001097          	auipc	ra,0x1
    80002a40:	f08080e7          	jalr	-248(ra) # 80003944 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002a44:	02813083          	ld	ra,40(sp)
    80002a48:	02013403          	ld	s0,32(sp)
    80002a4c:	01813483          	ld	s1,24(sp)
    80002a50:	01013903          	ld	s2,16(sp)
    80002a54:	00813983          	ld	s3,8(sp)
    80002a58:	00013a03          	ld	s4,0(sp)
    80002a5c:	03010113          	addi	sp,sp,48
    80002a60:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002a64:	fff00513          	li	a0,-1
    80002a68:	fd5ff06f          	j	80002a3c <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002a6c <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    80002a6c:	fe010113          	addi	sp,sp,-32
    80002a70:	00113c23          	sd	ra,24(sp)
    80002a74:	00813823          	sd	s0,16(sp)
    80002a78:	00913423          	sd	s1,8(sp)
    80002a7c:	01213023          	sd	s2,0(sp)
    80002a80:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002a84:	01800513          	li	a0,24
    80002a88:	00002097          	auipc	ra,0x2
    80002a8c:	904080e7          	jalr	-1788(ra) # 8000438c <_ZN10KSemaphorenwEm>
    80002a90:	00050493          	mv	s1,a0
    80002a94:	00000593          	li	a1,0
    80002a98:	00001097          	auipc	ra,0x1
    80002a9c:	68c080e7          	jalr	1676(ra) # 80004124 <_ZN10KSemaphoreC1Ei>
    80002aa0:	0000a797          	auipc	a5,0xa
    80002aa4:	6297bc23          	sd	s1,1592(a5) # 8000d0d8 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002aa8:	01800513          	li	a0,24
    80002aac:	00002097          	auipc	ra,0x2
    80002ab0:	8e0080e7          	jalr	-1824(ra) # 8000438c <_ZN10KSemaphorenwEm>
    80002ab4:	00050493          	mv	s1,a0
    80002ab8:	00000593          	li	a1,0
    80002abc:	00001097          	auipc	ra,0x1
    80002ac0:	668080e7          	jalr	1640(ra) # 80004124 <_ZN10KSemaphoreC1Ei>
    80002ac4:	0000a797          	auipc	a5,0xa
    80002ac8:	6097be23          	sd	s1,1564(a5) # 8000d0e0 <_ZN8KConsole19hasCharactersOutputE>
}
    80002acc:	01813083          	ld	ra,24(sp)
    80002ad0:	01013403          	ld	s0,16(sp)
    80002ad4:	00813483          	ld	s1,8(sp)
    80002ad8:	00013903          	ld	s2,0(sp)
    80002adc:	02010113          	addi	sp,sp,32
    80002ae0:	00008067          	ret
    80002ae4:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002ae8:	00048513          	mv	a0,s1
    80002aec:	00002097          	auipc	ra,0x2
    80002af0:	940080e7          	jalr	-1728(ra) # 8000442c <_ZN10KSemaphoredlEPv>
    80002af4:	00090513          	mv	a0,s2
    80002af8:	0000f097          	auipc	ra,0xf
    80002afc:	760080e7          	jalr	1888(ra) # 80012258 <_Unwind_Resume>
    80002b00:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002b04:	00048513          	mv	a0,s1
    80002b08:	00002097          	auipc	ra,0x2
    80002b0c:	924080e7          	jalr	-1756(ra) # 8000442c <_ZN10KSemaphoredlEPv>
    80002b10:	00090513          	mv	a0,s2
    80002b14:	0000f097          	auipc	ra,0xf
    80002b18:	744080e7          	jalr	1860(ra) # 80012258 <_Unwind_Resume>

0000000080002b1c <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80002b1c:	0000a697          	auipc	a3,0xa
    80002b20:	5bc68693          	addi	a3,a3,1468 # 8000d0d8 <_ZN8KConsole18hasCharactersInputE>
    80002b24:	0106b603          	ld	a2,16(a3)
    80002b28:	00160793          	addi	a5,a2,1
    80002b2c:	00002737          	lui	a4,0x2
    80002b30:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002b34:	00e7f7b3          	and	a5,a5,a4
    80002b38:	0186b703          	ld	a4,24(a3)
    80002b3c:	04e78263          	beq	a5,a4,80002b80 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    80002b40:	ff010113          	addi	sp,sp,-16
    80002b44:	00113423          	sd	ra,8(sp)
    80002b48:	00813023          	sd	s0,0(sp)
    80002b4c:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80002b50:	0000c717          	auipc	a4,0xc
    80002b54:	5c870713          	addi	a4,a4,1480 # 8000f118 <_ZN8KConsole11inputBufferE>
    80002b58:	00c70633          	add	a2,a4,a2
    80002b5c:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80002b60:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    80002b64:	0006b503          	ld	a0,0(a3)
    80002b68:	00001097          	auipc	ra,0x1
    80002b6c:	7dc080e7          	jalr	2012(ra) # 80004344 <_ZN10KSemaphore6signalEv>
}
    80002b70:	00813083          	ld	ra,8(sp)
    80002b74:	00013403          	ld	s0,0(sp)
    80002b78:	01010113          	addi	sp,sp,16
    80002b7c:	00008067          	ret
    80002b80:	00008067          	ret

0000000080002b84 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002b84:	fe010113          	addi	sp,sp,-32
    80002b88:	00113c23          	sd	ra,24(sp)
    80002b8c:	00813823          	sd	s0,16(sp)
    80002b90:	00913423          	sd	s1,8(sp)
    80002b94:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80002b98:	0000a497          	auipc	s1,0xa
    80002b9c:	54048493          	addi	s1,s1,1344 # 8000d0d8 <_ZN8KConsole18hasCharactersInputE>
    80002ba0:	0004b503          	ld	a0,0(s1)
    80002ba4:	00001097          	auipc	ra,0x1
    80002ba8:	628080e7          	jalr	1576(ra) # 800041cc <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80002bac:	0184b783          	ld	a5,24(s1)
    80002bb0:	0104b703          	ld	a4,16(s1)
    80002bb4:	04e78063          	beq	a5,a4,80002bf4 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80002bb8:	0000c717          	auipc	a4,0xc
    80002bbc:	56070713          	addi	a4,a4,1376 # 8000f118 <_ZN8KConsole11inputBufferE>
    80002bc0:	00f70733          	add	a4,a4,a5
    80002bc4:	00074503          	lbu	a0,0(a4)

    inputHead = (inputHead+1)%bufferSize;
    80002bc8:	00178793          	addi	a5,a5,1
    80002bcc:	00002737          	lui	a4,0x2
    80002bd0:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002bd4:	00e7f7b3          	and	a5,a5,a4
    80002bd8:	0000a717          	auipc	a4,0xa
    80002bdc:	50f73c23          	sd	a5,1304(a4) # 8000d0f0 <_ZN8KConsole9inputHeadE>

    return c;
}
    80002be0:	01813083          	ld	ra,24(sp)
    80002be4:	01013403          	ld	s0,16(sp)
    80002be8:	00813483          	ld	s1,8(sp)
    80002bec:	02010113          	addi	sp,sp,32
    80002bf0:	00008067          	ret
        return -1;
    80002bf4:	0ff00513          	li	a0,255
    80002bf8:	fe9ff06f          	j	80002be0 <_ZN8KConsole17getCharacterInputEv+0x5c>

0000000080002bfc <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80002bfc:	0000a697          	auipc	a3,0xa
    80002c00:	4dc68693          	addi	a3,a3,1244 # 8000d0d8 <_ZN8KConsole18hasCharactersInputE>
    80002c04:	0206b603          	ld	a2,32(a3)
    80002c08:	00160793          	addi	a5,a2,1
    80002c0c:	00002737          	lui	a4,0x2
    80002c10:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002c14:	00e7f7b3          	and	a5,a5,a4
    80002c18:	0286b703          	ld	a4,40(a3)
    80002c1c:	04e78a63          	beq	a5,a4,80002c70 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80002c20:	ff010113          	addi	sp,sp,-16
    80002c24:	00113423          	sd	ra,8(sp)
    80002c28:	00813023          	sd	s0,0(sp)
    80002c2c:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80002c30:	00068713          	mv	a4,a3
    80002c34:	0306b683          	ld	a3,48(a3)
    80002c38:	00168693          	addi	a3,a3,1
    80002c3c:	02d73823          	sd	a3,48(a4)
    outputBuffer[outputTail] = c;
    80002c40:	0000a697          	auipc	a3,0xa
    80002c44:	4d868693          	addi	a3,a3,1240 # 8000d118 <_ZN8KConsole12outputBufferE>
    80002c48:	00c68633          	add	a2,a3,a2
    80002c4c:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80002c50:	02f73023          	sd	a5,32(a4)
    hasCharactersOutput->signal();
    80002c54:	00873503          	ld	a0,8(a4)
    80002c58:	00001097          	auipc	ra,0x1
    80002c5c:	6ec080e7          	jalr	1772(ra) # 80004344 <_ZN10KSemaphore6signalEv>
}
    80002c60:	00813083          	ld	ra,8(sp)
    80002c64:	00013403          	ld	s0,0(sp)
    80002c68:	01010113          	addi	sp,sp,16
    80002c6c:	00008067          	ret
    80002c70:	00008067          	ret

0000000080002c74 <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80002c74:	0000a797          	auipc	a5,0xa
    80002c78:	3347b783          	ld	a5,820(a5) # 8000cfa8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002c7c:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002c80:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002c84:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002c88:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002c8c:	0017f793          	andi	a5,a5,1
    80002c90:	08078063          	beqz	a5,80002d10 <_ZN8KConsole24getCharactersFromConsoleEPv+0x9c>
{
    80002c94:	fe010113          	addi	sp,sp,-32
    80002c98:	00113c23          	sd	ra,24(sp)
    80002c9c:	00813823          	sd	s0,16(sp)
    80002ca0:	00913423          	sd	s1,8(sp)
    80002ca4:	02010413          	addi	s0,sp,32
            x = CONSOLE_TX_DATA;
    80002ca8:	0000a797          	auipc	a5,0xa
    80002cac:	3207b783          	ld	a5,800(a5) # 8000cfc8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002cb0:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002cb4:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1,0(a0)");
    80002cb8:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(c));
    80002cbc:	00058493          	mv	s1,a1
    80002cc0:	0ff4f493          	andi	s1,s1,255
            putCharacterInput(c);
    80002cc4:	00048513          	mv	a0,s1
    80002cc8:	00000097          	auipc	ra,0x0
    80002ccc:	e54080e7          	jalr	-428(ra) # 80002b1c <_ZN8KConsole17putCharacterInputEc>
            putCharacterOutput(c);
    80002cd0:	00048513          	mv	a0,s1
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	f28080e7          	jalr	-216(ra) # 80002bfc <_ZN8KConsole18putCharacterOutputEc>
        uint64 x = CONSOLE_STATUS;
    80002cdc:	0000a797          	auipc	a5,0xa
    80002ce0:	2cc7b783          	ld	a5,716(a5) # 8000cfa8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002ce4:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002ce8:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002cec:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002cf0:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002cf4:	0017f793          	andi	a5,a5,1
    80002cf8:	fa0798e3          	bnez	a5,80002ca8 <_ZN8KConsole24getCharactersFromConsoleEPv+0x34>
}
    80002cfc:	01813083          	ld	ra,24(sp)
    80002d00:	01013403          	ld	s0,16(sp)
    80002d04:	00813483          	ld	s1,8(sp)
    80002d08:	02010113          	addi	sp,sp,32
    80002d0c:	00008067          	ret
    80002d10:	00008067          	ret

0000000080002d14 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002d14:	fe010113          	addi	sp,sp,-32
    80002d18:	00113c23          	sd	ra,24(sp)
    80002d1c:	00813823          	sd	s0,16(sp)
    80002d20:	00913423          	sd	s1,8(sp)
    80002d24:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80002d28:	0000a497          	auipc	s1,0xa
    80002d2c:	3b048493          	addi	s1,s1,944 # 8000d0d8 <_ZN8KConsole18hasCharactersInputE>
    80002d30:	0084b503          	ld	a0,8(s1)
    80002d34:	00001097          	auipc	ra,0x1
    80002d38:	498080e7          	jalr	1176(ra) # 800041cc <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80002d3c:	0284b783          	ld	a5,40(s1)
    80002d40:	0204b703          	ld	a4,32(s1)
    80002d44:	04e78063          	beq	a5,a4,80002d84 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;

    char c = outputBuffer[outputHead];
    80002d48:	0000a717          	auipc	a4,0xa
    80002d4c:	3d070713          	addi	a4,a4,976 # 8000d118 <_ZN8KConsole12outputBufferE>
    80002d50:	00f70733          	add	a4,a4,a5
    80002d54:	00074503          	lbu	a0,0(a4)

    outputHead = (outputHead+1)%bufferSize;
    80002d58:	00178793          	addi	a5,a5,1
    80002d5c:	00002737          	lui	a4,0x2
    80002d60:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002d64:	00e7f7b3          	and	a5,a5,a4
    80002d68:	0000a717          	auipc	a4,0xa
    80002d6c:	38f73c23          	sd	a5,920(a4) # 8000d100 <_ZN8KConsole10outputHeadE>

    return c;
}
    80002d70:	01813083          	ld	ra,24(sp)
    80002d74:	01013403          	ld	s0,16(sp)
    80002d78:	00813483          	ld	s1,8(sp)
    80002d7c:	02010113          	addi	sp,sp,32
    80002d80:	00008067          	ret
        return -1;
    80002d84:	0ff00513          	li	a0,255
    80002d88:	fe9ff06f          	j	80002d70 <_ZN8KConsole18getCharacterOutputEv+0x5c>

0000000080002d8c <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    80002d8c:	ff010113          	addi	sp,sp,-16
    80002d90:	00113423          	sd	ra,8(sp)
    80002d94:	00813023          	sd	s0,0(sp)
    80002d98:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    80002d9c:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    80002da0:	0ff57513          	andi	a0,a0,255
    80002da4:	00000097          	auipc	ra,0x0
    80002da8:	e58080e7          	jalr	-424(ra) # 80002bfc <_ZN8KConsole18putCharacterOutputEc>
}
    80002dac:	00813083          	ld	ra,8(sp)
    80002db0:	00013403          	ld	s0,0(sp)
    80002db4:	01010113          	addi	sp,sp,16
    80002db8:	00008067          	ret

0000000080002dbc <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80002dbc:	fe010113          	addi	sp,sp,-32
    80002dc0:	00113c23          	sd	ra,24(sp)
    80002dc4:	00813823          	sd	s0,16(sp)
    80002dc8:	00913423          	sd	s1,8(sp)
    80002dcc:	02010413          	addi	s0,sp,32
    pendingGetc++;
    80002dd0:	0000a717          	auipc	a4,0xa
    80002dd4:	30870713          	addi	a4,a4,776 # 8000d0d8 <_ZN8KConsole18hasCharactersInputE>
    80002dd8:	03873783          	ld	a5,56(a4)
    80002ddc:	00178793          	addi	a5,a5,1
    80002de0:	02f73c23          	sd	a5,56(a4)
    char ch;
    ch = getCharacterInput();
    80002de4:	00000097          	auipc	ra,0x0
    80002de8:	da0080e7          	jalr	-608(ra) # 80002b84 <_ZN8KConsole17getCharacterInputEv>
    80002dec:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80002df0:	01b00793          	li	a5,27
    80002df4:	02f51663          	bne	a0,a5,80002e20 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80002df8:	00d00793          	li	a5,13
    80002dfc:	02f48863          	beq	s1,a5,80002e2c <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80002e00:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80002e04:	00001097          	auipc	ra,0x1
    80002e08:	b40080e7          	jalr	-1216(ra) # 80003944 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002e0c:	01813083          	ld	ra,24(sp)
    80002e10:	01013403          	ld	s0,16(sp)
    80002e14:	00813483          	ld	s1,8(sp)
    80002e18:	02010113          	addi	sp,sp,32
    80002e1c:	00008067          	ret
        putCharacterOutput(ch);
    80002e20:	00000097          	auipc	ra,0x0
    80002e24:	ddc080e7          	jalr	-548(ra) # 80002bfc <_ZN8KConsole18putCharacterOutputEc>
    80002e28:	fd1ff06f          	j	80002df8 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80002e2c:	00d00513          	li	a0,13
    80002e30:	00000097          	auipc	ra,0x0
    80002e34:	dcc080e7          	jalr	-564(ra) # 80002bfc <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80002e38:	00a00513          	li	a0,10
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	dc0080e7          	jalr	-576(ra) # 80002bfc <_ZN8KConsole18putCharacterOutputEc>
    80002e44:	fbdff06f          	j	80002e00 <_ZN8KConsole11getcHandlerEv+0x44>

0000000080002e48 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80002e48:	ff010113          	addi	sp,sp,-16
    80002e4c:	00813423          	sd	s0,8(sp)
    80002e50:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80002e54:	0000a517          	auipc	a0,0xa
    80002e58:	2b453503          	ld	a0,692(a0) # 8000d108 <_ZN8KConsole11pendingPutcE>
    80002e5c:	00153513          	seqz	a0,a0
    80002e60:	00813403          	ld	s0,8(sp)
    80002e64:	01010113          	addi	sp,sp,16
    80002e68:	00008067          	ret

0000000080002e6c <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    80002e6c:	fe010113          	addi	sp,sp,-32
    80002e70:	00113c23          	sd	ra,24(sp)
    80002e74:	00813823          	sd	s0,16(sp)
    80002e78:	02010413          	addi	s0,sp,32
    80002e7c:	0180006f          	j	80002e94 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    80002e80:	ffffe097          	auipc	ra,0xffffe
    80002e84:	4d4080e7          	jalr	1236(ra) # 80001354 <thread_exit>
    80002e88:	0340006f          	j	80002ebc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    80002e8c:	ffffe097          	auipc	ra,0xffffe
    80002e90:	4a8080e7          	jalr	1192(ra) # 80001334 <thread_dispatch>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    80002e94:	0000a797          	auipc	a5,0xa
    80002e98:	16c7b783          	ld	a5,364(a5) # 8000d000 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e9c:	0007c783          	lbu	a5,0(a5)
    80002ea0:	00078e63          	beqz	a5,80002ebc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002ea4:	00000097          	auipc	ra,0x0
    80002ea8:	fa4080e7          	jalr	-92(ra) # 80002e48 <_ZN8KConsole17outputBufferEmptyEv>
    80002eac:	00050863          	beqz	a0,80002ebc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002eb0:	0000a797          	auipc	a5,0xa
    80002eb4:	2607b783          	ld	a5,608(a5) # 8000d110 <_ZN8KConsole11pendingGetcE>
    80002eb8:	fc0784e3          	beqz	a5,80002e80 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 x = CONSOLE_STATUS;
    80002ebc:	0000a797          	auipc	a5,0xa
    80002ec0:	0ec7b783          	ld	a5,236(a5) # 8000cfa8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002ec4:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002ec8:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80002ecc:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002ed0:	00058793          	mv	a5,a1
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80002ed4:	0207f793          	andi	a5,a5,32
    80002ed8:	fa078ae3          	beqz	a5,80002e8c <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    80002edc:	0000a797          	auipc	a5,0xa
    80002ee0:	22c7b783          	ld	a5,556(a5) # 8000d108 <_ZN8KConsole11pendingPutcE>
    80002ee4:	fa0784e3          	beqz	a5,80002e8c <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80002ee8:	ffffe097          	auipc	ra,0xffffe
    80002eec:	674080e7          	jalr	1652(ra) # 8000155c <sysCallGetCharOutput>
    80002ef0:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80002ef4:	0000a717          	auipc	a4,0xa
    80002ef8:	1e470713          	addi	a4,a4,484 # 8000d0d8 <_ZN8KConsole18hasCharactersInputE>
    80002efc:	03073783          	ld	a5,48(a4)
    80002f00:	fff78793          	addi	a5,a5,-1
    80002f04:	02f73823          	sd	a5,48(a4)
                x = CONSOLE_RX_DATA;
    80002f08:	0000a797          	auipc	a5,0xa
    80002f0c:	0987b783          	ld	a5,152(a5) # 8000cfa0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002f10:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80002f14:	00078513          	mv	a0,a5
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    80002f18:	fef44783          	lbu	a5,-17(s0)
    80002f1c:	0ff7f793          	andi	a5,a5,255
    80002f20:	00078593          	mv	a1,a5
                __asm__ volatile("sb a1,0(a0)");
    80002f24:	00b50023          	sb	a1,0(a0)
    80002f28:	f6dff06f          	j	80002e94 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

0000000080002f2c <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    80002f2c:	ff010113          	addi	sp,sp,-16
    80002f30:	00113423          	sd	ra,8(sp)
    80002f34:	00813023          	sd	s0,0(sp)
    80002f38:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80002f3c:	00000097          	auipc	ra,0x0
    80002f40:	dd8080e7          	jalr	-552(ra) # 80002d14 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80002f44:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80002f48:	00001097          	auipc	ra,0x1
    80002f4c:	9fc080e7          	jalr	-1540(ra) # 80003944 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002f50:	00813083          	ld	ra,8(sp)
    80002f54:	00013403          	ld	s0,0(sp)
    80002f58:	01010113          	addi	sp,sp,16
    80002f5c:	00008067          	ret

0000000080002f60 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    80002f60:	fe010113          	addi	sp,sp,-32
    80002f64:	00113c23          	sd	ra,24(sp)
    80002f68:	00813823          	sd	s0,16(sp)
    80002f6c:	00913423          	sd	s1,8(sp)
    80002f70:	02010413          	addi	s0,sp,32
    80002f74:	00050493          	mv	s1,a0
    while (*string != '\0')
    80002f78:	0004c503          	lbu	a0,0(s1)
    80002f7c:	00050a63          	beqz	a0,80002f90 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	c7c080e7          	jalr	-900(ra) # 80002bfc <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80002f88:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002f8c:	fedff06f          	j	80002f78 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    80002f90:	01813083          	ld	ra,24(sp)
    80002f94:	01013403          	ld	s0,16(sp)
    80002f98:	00813483          	ld	s1,8(sp)
    80002f9c:	02010113          	addi	sp,sp,32
    80002fa0:	00008067          	ret

0000000080002fa4 <_ZN8KConsole8printIntEiii>:

void KConsole::printInt(int xx, int base, int sgn)
{
    80002fa4:	fb010113          	addi	sp,sp,-80
    80002fa8:	04113423          	sd	ra,72(sp)
    80002fac:	04813023          	sd	s0,64(sp)
    80002fb0:	02913c23          	sd	s1,56(sp)
    80002fb4:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    80002fb8:	00007797          	auipc	a5,0x7
    80002fbc:	21878793          	addi	a5,a5,536 # 8000a1d0 <CONSOLE_STATUS+0x1c0>
    80002fc0:	0007b703          	ld	a4,0(a5)
    80002fc4:	fce43423          	sd	a4,-56(s0)
    80002fc8:	0087b703          	ld	a4,8(a5)
    80002fcc:	fce43823          	sd	a4,-48(s0)
    80002fd0:	0107c783          	lbu	a5,16(a5)
    80002fd4:	fcf40c23          	sb	a5,-40(s0)
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002fd8:	00060463          	beqz	a2,80002fe0 <_ZN8KConsole8printIntEiii+0x3c>
    80002fdc:	08054263          	bltz	a0,80003060 <_ZN8KConsole8printIntEiii+0xbc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002fe0:	0005051b          	sext.w	a0,a0
    neg = 0;
    80002fe4:	00000813          	li	a6,0
    }

    i = 0;
    80002fe8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002fec:	0005871b          	sext.w	a4,a1
    80002ff0:	02b577bb          	remuw	a5,a0,a1
    80002ff4:	00048693          	mv	a3,s1
    80002ff8:	0014849b          	addiw	s1,s1,1
    80002ffc:	02079793          	slli	a5,a5,0x20
    80003000:	0207d793          	srli	a5,a5,0x20
    80003004:	fe040613          	addi	a2,s0,-32
    80003008:	00f607b3          	add	a5,a2,a5
    8000300c:	fe87c603          	lbu	a2,-24(a5)
    80003010:	fe040793          	addi	a5,s0,-32
    80003014:	00d787b3          	add	a5,a5,a3
    80003018:	fcc78c23          	sb	a2,-40(a5)
    }while((x /= base) != 0);
    8000301c:	0005061b          	sext.w	a2,a0
    80003020:	02b5553b          	divuw	a0,a0,a1
    80003024:	fce674e3          	bgeu	a2,a4,80002fec <_ZN8KConsole8printIntEiii+0x48>
    if(neg)
    80003028:	00080c63          	beqz	a6,80003040 <_ZN8KConsole8printIntEiii+0x9c>
        buf[i++] = '-';
    8000302c:	fe040793          	addi	a5,s0,-32
    80003030:	009784b3          	add	s1,a5,s1
    80003034:	02d00793          	li	a5,45
    80003038:	fcf48c23          	sb	a5,-40(s1)
    8000303c:	0026849b          	addiw	s1,a3,2

    while(--i >= 0)
    80003040:	fff4849b          	addiw	s1,s1,-1
    80003044:	0204c463          	bltz	s1,8000306c <_ZN8KConsole8printIntEiii+0xc8>
        KConsole::putCharacterOutput(buf[i]);
    80003048:	fe040793          	addi	a5,s0,-32
    8000304c:	009787b3          	add	a5,a5,s1
    80003050:	fd87c503          	lbu	a0,-40(a5)
    80003054:	00000097          	auipc	ra,0x0
    80003058:	ba8080e7          	jalr	-1112(ra) # 80002bfc <_ZN8KConsole18putCharacterOutputEc>
    8000305c:	fe5ff06f          	j	80003040 <_ZN8KConsole8printIntEiii+0x9c>
        x = -xx;
    80003060:	40a0053b          	negw	a0,a0
        neg = 1;
    80003064:	00100813          	li	a6,1
        x = -xx;
    80003068:	f81ff06f          	j	80002fe8 <_ZN8KConsole8printIntEiii+0x44>
}
    8000306c:	04813083          	ld	ra,72(sp)
    80003070:	04013403          	ld	s0,64(sp)
    80003074:	03813483          	ld	s1,56(sp)
    80003078:	05010113          	addi	sp,sp,80
    8000307c:	00008067          	ret

0000000080003080 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003080:	ff010113          	addi	sp,sp,-16
    80003084:	00813423          	sd	s0,8(sp)
    80003088:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    8000308c:	0000a797          	auipc	a5,0xa
    80003090:	f847b783          	ld	a5,-124(a5) # 8000d010 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003094:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003098:	00500793          	li	a5,5
    8000309c:	04f62023          	sw	a5,64(a2)
    //trapPrintString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800030a0:	0000e797          	auipc	a5,0xe
    800030a4:	0787b783          	ld	a5,120(a5) # 80011118 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    800030a8:	00000593          	li	a1,0
    while(curr != 0)
    800030ac:	02078063          	beqz	a5,800030cc <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    800030b0:	02063683          	ld	a3,32(a2)
    800030b4:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800030b8:	00e6e863          	bltu	a3,a4,800030c8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    800030bc:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    800030c0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800030c4:	fe9ff06f          	j	800030ac <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800030c8:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    800030cc:	00058a63          	beqz	a1,800030e0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    800030d0:	00c5b423          	sd	a2,8(a1)
}
    800030d4:	00813403          	ld	s0,8(sp)
    800030d8:	01010113          	addi	sp,sp,16
    800030dc:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800030e0:	0000e797          	auipc	a5,0xe
    800030e4:	02c7bc23          	sd	a2,56(a5) # 80011118 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800030e8:	fedff06f          	j	800030d4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

00000000800030ec <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //trapPrintString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    800030ec:	0000e517          	auipc	a0,0xe
    800030f0:	02c53503          	ld	a0,44(a0) # 80011118 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    800030f4:	06050e63          	beqz	a0,80003170 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    {
        //trapPrintString("No sleeping PCBs...\n");
        return;
    }
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800030f8:	06050c63          	beqz	a0,80003170 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    800030fc:	02053783          	ld	a5,32(a0)
    80003100:	0000a717          	auipc	a4,0xa
    80003104:	ee073703          	ld	a4,-288(a4) # 8000cfe0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003108:	00073703          	ld	a4,0(a4)
    8000310c:	06f76263          	bltu	a4,a5,80003170 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80003110:	fe010113          	addi	sp,sp,-32
    80003114:	00113c23          	sd	ra,24(sp)
    80003118:	00813823          	sd	s0,16(sp)
    8000311c:	00913423          	sd	s1,8(sp)
    80003120:	02010413          	addi	s0,sp,32
    80003124:	0180006f          	j	8000313c <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003128:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    8000312c:	0000a717          	auipc	a4,0xa
    80003130:	eb473703          	ld	a4,-332(a4) # 8000cfe0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003134:	00073703          	ld	a4,0(a4)
    80003138:	02f76263          	bltu	a4,a5,8000315c <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    8000313c:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80003140:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80003144:	00000097          	auipc	ra,0x0
    80003148:	0b8080e7          	jalr	184(ra) # 800031fc <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    8000314c:	0000e797          	auipc	a5,0xe
    80003150:	fc97b623          	sd	s1,-52(a5) # 80011118 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80003154:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003158:	fc0498e3          	bnez	s1,80003128 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    8000315c:	01813083          	ld	ra,24(sp)
    80003160:	01013403          	ld	s0,16(sp)
    80003164:	00813483          	ld	s1,8(sp)
    80003168:	02010113          	addi	sp,sp,32
    8000316c:	00008067          	ret
    80003170:	00008067          	ret

0000000080003174 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    80003174:	ff010113          	addi	sp,sp,-16
    80003178:	00113423          	sd	ra,8(sp)
    8000317c:	00813023          	sd	s0,0(sp)
    80003180:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80003184:	00001097          	auipc	ra,0x1
    80003188:	edc080e7          	jalr	-292(ra) # 80004060 <_ZN15MemoryAllocator7kmallocEm>
}
    8000318c:	00813083          	ld	ra,8(sp)
    80003190:	00013403          	ld	s0,0(sp)
    80003194:	01010113          	addi	sp,sp,16
    80003198:	00008067          	ret

000000008000319c <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    8000319c:	ff010113          	addi	sp,sp,-16
    800031a0:	00113423          	sd	ra,8(sp)
    800031a4:	00813023          	sd	s0,0(sp)
    800031a8:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    800031ac:	00001097          	auipc	ra,0x1
    800031b0:	f18080e7          	jalr	-232(ra) # 800040c4 <_ZN15MemoryAllocator5kfreeEPv>
}
    800031b4:	00813083          	ld	ra,8(sp)
    800031b8:	00013403          	ld	s0,0(sp)
    800031bc:	01010113          	addi	sp,sp,16
    800031c0:	00008067          	ret

00000000800031c4 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    800031c4:	ff010113          	addi	sp,sp,-16
    800031c8:	00813423          	sd	s0,8(sp)
    800031cc:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    800031d0:	0000e797          	auipc	a5,0xe
    800031d4:	f507b783          	ld	a5,-176(a5) # 80011120 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    800031d8:	00000513          	li	a0,0
    while(curr != 0)
    800031dc:	00078863          	beqz	a5,800031ec <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    800031e0:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    800031e4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800031e8:	ff5ff06f          	j	800031dc <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    800031ec:	0005051b          	sext.w	a0,a0
    800031f0:	00813403          	ld	s0,8(sp)
    800031f4:	01010113          	addi	sp,sp,16
    800031f8:	00008067          	ret

00000000800031fc <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    800031fc:	ff010113          	addi	sp,sp,-16
    80003200:	00813423          	sd	s0,8(sp)
    80003204:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003208:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    8000320c:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003210:	0000e797          	auipc	a5,0xe
    80003214:	f107b783          	ld	a5,-240(a5) # 80011120 <_ZN9Scheduler16schedulerPCBHeadE>
    80003218:	02078263          	beqz	a5,8000323c <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    8000321c:	0000e797          	auipc	a5,0xe
    80003220:	f0478793          	addi	a5,a5,-252 # 80011120 <_ZN9Scheduler16schedulerPCBHeadE>
    80003224:	0087b703          	ld	a4,8(a5)
    80003228:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    8000322c:	00a7b423          	sd	a0,8(a5)
    }
}
    80003230:	00813403          	ld	s0,8(sp)
    80003234:	01010113          	addi	sp,sp,16
    80003238:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    8000323c:	0000e797          	auipc	a5,0xe
    80003240:	ee478793          	addi	a5,a5,-284 # 80011120 <_ZN9Scheduler16schedulerPCBHeadE>
    80003244:	00a7b423          	sd	a0,8(a5)
    80003248:	00a7b023          	sd	a0,0(a5)
    8000324c:	fe5ff06f          	j	80003230 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003250 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003250:	ff010113          	addi	sp,sp,-16
    80003254:	00813423          	sd	s0,8(sp)
    80003258:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    8000325c:	0000e517          	auipc	a0,0xe
    80003260:	ec453503          	ld	a0,-316(a0) # 80011120 <_ZN9Scheduler16schedulerPCBHeadE>
    80003264:	00050c63          	beqz	a0,8000327c <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003268:	00853783          	ld	a5,8(a0)
    8000326c:	00078e63          	beqz	a5,80003288 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003270:	0000e717          	auipc	a4,0xe
    80003274:	eaf73823          	sd	a5,-336(a4) # 80011120 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003278:	00053423          	sd	zero,8(a0)
    return retval;
}
    8000327c:	00813403          	ld	s0,8(sp)
    80003280:	01010113          	addi	sp,sp,16
    80003284:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003288:	0000e797          	auipc	a5,0xe
    8000328c:	e9878793          	addi	a5,a5,-360 # 80011120 <_ZN9Scheduler16schedulerPCBHeadE>
    80003290:	0007b423          	sd	zero,8(a5)
    80003294:	0007b023          	sd	zero,0(a5)
    80003298:	fe1ff06f          	j	80003278 <_ZN9Scheduler3getEv+0x28>

000000008000329c <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    8000329c:	fe010113          	addi	sp,sp,-32
    800032a0:	00113c23          	sd	ra,24(sp)
    800032a4:	00813823          	sd	s0,16(sp)
    800032a8:	00913423          	sd	s1,8(sp)
    800032ac:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    800032b0:	0000e497          	auipc	s1,0xe
    800032b4:	e704b483          	ld	s1,-400(s1) # 80011120 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    800032b8:	02048863          	beqz	s1,800032e8 <_ZN9Scheduler5printEv+0x4c>
    {
        printInt((uint64)curr, 16);
    800032bc:	00000613          	li	a2,0
    800032c0:	01000593          	li	a1,16
    800032c4:	0004851b          	sext.w	a0,s1
    800032c8:	00003097          	auipc	ra,0x3
    800032cc:	168080e7          	jalr	360(ra) # 80006430 <_Z8printIntiii>
        printString("\n");
    800032d0:	00007517          	auipc	a0,0x7
    800032d4:	e2850513          	addi	a0,a0,-472 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    800032d8:	00003097          	auipc	ra,0x3
    800032dc:	fc0080e7          	jalr	-64(ra) # 80006298 <_Z11printStringPKc>
        curr = curr->nextPCB;
    800032e0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800032e4:	fd5ff06f          	j	800032b8 <_ZN9Scheduler5printEv+0x1c>
    }
}
    800032e8:	01813083          	ld	ra,24(sp)
    800032ec:	01013403          	ld	s0,16(sp)
    800032f0:	00813483          	ld	s1,8(sp)
    800032f4:	02010113          	addi	sp,sp,32
    800032f8:	00008067          	ret

00000000800032fc <main>:
#include "../h/Riscv.hpp"

void main()
{
    800032fc:	ff010113          	addi	sp,sp,-16
    80003300:	00113423          	sd	ra,8(sp)
    80003304:	00813023          	sd	s0,0(sp)
    80003308:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    8000330c:	00000097          	auipc	ra,0x0
    80003310:	508080e7          	jalr	1288(ra) # 80003814 <_ZN5Riscv10kernelMainEv>
    80003314:	00813083          	ld	ra,8(sp)
    80003318:	00013403          	ld	s0,0(sp)
    8000331c:	01010113          	addi	sp,sp,16
    80003320:	00008067          	ret

0000000080003324 <_ZN6Thread6runnerEPv>:
{
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80003324:	ff010113          	addi	sp,sp,-16
    80003328:	00113423          	sd	ra,8(sp)
    8000332c:	00813023          	sd	s0,0(sp)
    80003330:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80003334:	00053783          	ld	a5,0(a0)
    80003338:	0107b783          	ld	a5,16(a5)
    8000333c:	000780e7          	jalr	a5
}
    80003340:	00813083          	ld	ra,8(sp)
    80003344:	00013403          	ld	s0,0(sp)
    80003348:	01010113          	addi	sp,sp,16
    8000334c:	00008067          	ret

0000000080003350 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80003350:	ff010113          	addi	sp,sp,-16
    80003354:	00113423          	sd	ra,8(sp)
    80003358:	00813023          	sd	s0,0(sp)
    8000335c:	01010413          	addi	s0,sp,16
    80003360:	0000a797          	auipc	a5,0xa
    80003364:	a5878793          	addi	a5,a5,-1448 # 8000cdb8 <_ZTV6Thread+0x10>
    80003368:	00f53023          	sd	a5,0(a0)
{
    mem_free(myHandle);
    8000336c:	00853503          	ld	a0,8(a0)
    80003370:	ffffe097          	auipc	ra,0xffffe
    80003374:	f18080e7          	jalr	-232(ra) # 80001288 <mem_free>
}
    80003378:	00813083          	ld	ra,8(sp)
    8000337c:	00013403          	ld	s0,0(sp)
    80003380:	01010113          	addi	sp,sp,16
    80003384:	00008067          	ret

0000000080003388 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003388:	ff010113          	addi	sp,sp,-16
    8000338c:	00113423          	sd	ra,8(sp)
    80003390:	00813023          	sd	s0,0(sp)
    80003394:	01010413          	addi	s0,sp,16
    80003398:	0000a797          	auipc	a5,0xa
    8000339c:	a4878793          	addi	a5,a5,-1464 # 8000cde0 <_ZTV9Semaphore+0x10>
    800033a0:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    800033a4:	00853503          	ld	a0,8(a0)
    800033a8:	ffffe097          	auipc	ra,0xffffe
    800033ac:	ee0080e7          	jalr	-288(ra) # 80001288 <mem_free>
}
    800033b0:	00813083          	ld	ra,8(sp)
    800033b4:	00013403          	ld	s0,0(sp)
    800033b8:	01010113          	addi	sp,sp,16
    800033bc:	00008067          	ret

00000000800033c0 <_Znwm>:
{
    800033c0:	ff010113          	addi	sp,sp,-16
    800033c4:	00113423          	sd	ra,8(sp)
    800033c8:	00813023          	sd	s0,0(sp)
    800033cc:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800033d0:	ffffe097          	auipc	ra,0xffffe
    800033d4:	e88080e7          	jalr	-376(ra) # 80001258 <mem_alloc>
}
    800033d8:	00813083          	ld	ra,8(sp)
    800033dc:	00013403          	ld	s0,0(sp)
    800033e0:	01010113          	addi	sp,sp,16
    800033e4:	00008067          	ret

00000000800033e8 <_ZdlPv>:
{
    800033e8:	ff010113          	addi	sp,sp,-16
    800033ec:	00113423          	sd	ra,8(sp)
    800033f0:	00813023          	sd	s0,0(sp)
    800033f4:	01010413          	addi	s0,sp,16
    mem_free(p);
    800033f8:	ffffe097          	auipc	ra,0xffffe
    800033fc:	e90080e7          	jalr	-368(ra) # 80001288 <mem_free>
}
    80003400:	00813083          	ld	ra,8(sp)
    80003404:	00013403          	ld	s0,0(sp)
    80003408:	01010113          	addi	sp,sp,16
    8000340c:	00008067          	ret

0000000080003410 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80003410:	fe010113          	addi	sp,sp,-32
    80003414:	00113c23          	sd	ra,24(sp)
    80003418:	00813823          	sd	s0,16(sp)
    8000341c:	00913423          	sd	s1,8(sp)
    80003420:	02010413          	addi	s0,sp,32
    80003424:	00050493          	mv	s1,a0
}
    80003428:	00000097          	auipc	ra,0x0
    8000342c:	f28080e7          	jalr	-216(ra) # 80003350 <_ZN6ThreadD1Ev>
    80003430:	00048513          	mv	a0,s1
    80003434:	00000097          	auipc	ra,0x0
    80003438:	fb4080e7          	jalr	-76(ra) # 800033e8 <_ZdlPv>
    8000343c:	01813083          	ld	ra,24(sp)
    80003440:	01013403          	ld	s0,16(sp)
    80003444:	00813483          	ld	s1,8(sp)
    80003448:	02010113          	addi	sp,sp,32
    8000344c:	00008067          	ret

0000000080003450 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003450:	fe010113          	addi	sp,sp,-32
    80003454:	00113c23          	sd	ra,24(sp)
    80003458:	00813823          	sd	s0,16(sp)
    8000345c:	00913423          	sd	s1,8(sp)
    80003460:	02010413          	addi	s0,sp,32
    80003464:	00050493          	mv	s1,a0
}
    80003468:	00000097          	auipc	ra,0x0
    8000346c:	f20080e7          	jalr	-224(ra) # 80003388 <_ZN9SemaphoreD1Ev>
    80003470:	00048513          	mv	a0,s1
    80003474:	00000097          	auipc	ra,0x0
    80003478:	f74080e7          	jalr	-140(ra) # 800033e8 <_ZdlPv>
    8000347c:	01813083          	ld	ra,24(sp)
    80003480:	01013403          	ld	s0,16(sp)
    80003484:	00813483          	ld	s1,8(sp)
    80003488:	02010113          	addi	sp,sp,32
    8000348c:	00008067          	ret

0000000080003490 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    80003490:	00853503          	ld	a0,8(a0)
    80003494:	02050663          	beqz	a0,800034c0 <_ZN6Thread5startEv+0x30>
{
    80003498:	ff010113          	addi	sp,sp,-16
    8000349c:	00113423          	sd	ra,8(sp)
    800034a0:	00813023          	sd	s0,0(sp)
    800034a4:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    800034a8:	ffffe097          	auipc	ra,0xffffe
    800034ac:	fbc080e7          	jalr	-68(ra) # 80001464 <thread_start>
}
    800034b0:	00813083          	ld	ra,8(sp)
    800034b4:	00013403          	ld	s0,0(sp)
    800034b8:	01010113          	addi	sp,sp,16
    800034bc:	00008067          	ret
        return -1;
    800034c0:	fff00513          	li	a0,-1
}
    800034c4:	00008067          	ret

00000000800034c8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800034c8:	ff010113          	addi	sp,sp,-16
    800034cc:	00113423          	sd	ra,8(sp)
    800034d0:	00813023          	sd	s0,0(sp)
    800034d4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800034d8:	ffffe097          	auipc	ra,0xffffe
    800034dc:	e5c080e7          	jalr	-420(ra) # 80001334 <thread_dispatch>
}
    800034e0:	00813083          	ld	ra,8(sp)
    800034e4:	00013403          	ld	s0,0(sp)
    800034e8:	01010113          	addi	sp,sp,16
    800034ec:	00008067          	ret

00000000800034f0 <_ZN6Thread5sleepEm>:
{
    800034f0:	ff010113          	addi	sp,sp,-16
    800034f4:	00113423          	sd	ra,8(sp)
    800034f8:	00813023          	sd	s0,0(sp)
    800034fc:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003500:	ffffe097          	auipc	ra,0xffffe
    80003504:	f38080e7          	jalr	-200(ra) # 80001438 <time_sleep>
}
    80003508:	00813083          	ld	ra,8(sp)
    8000350c:	00013403          	ld	s0,0(sp)
    80003510:	01010113          	addi	sp,sp,16
    80003514:	00008067          	ret

0000000080003518 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80003518:	fe010113          	addi	sp,sp,-32
    8000351c:	00113c23          	sd	ra,24(sp)
    80003520:	00813823          	sd	s0,16(sp)
    80003524:	00913423          	sd	s1,8(sp)
    80003528:	01213023          	sd	s2,0(sp)
    8000352c:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80003530:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80003534:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80003538:	0004b783          	ld	a5,0(s1)
    8000353c:	0187b783          	ld	a5,24(a5)
    80003540:	00048513          	mv	a0,s1
    80003544:	000780e7          	jalr	a5
        Thread::sleep(time);
    80003548:	00090513          	mv	a0,s2
    8000354c:	00000097          	auipc	ra,0x0
    80003550:	fa4080e7          	jalr	-92(ra) # 800034f0 <_ZN6Thread5sleepEm>
    while(true)
    80003554:	fe5ff06f          	j	80003538 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080003558 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80003558:	ff010113          	addi	sp,sp,-16
    8000355c:	00113423          	sd	ra,8(sp)
    80003560:	00813023          	sd	s0,0(sp)
    80003564:	01010413          	addi	s0,sp,16
    80003568:	0000a797          	auipc	a5,0xa
    8000356c:	85078793          	addi	a5,a5,-1968 # 8000cdb8 <_ZTV6Thread+0x10>
    80003570:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, body, args);
    80003574:	00850513          	addi	a0,a0,8
    80003578:	ffffe097          	auipc	ra,0xffffe
    8000357c:	f18080e7          	jalr	-232(ra) # 80001490 <thread_make_pcb>
}
    80003580:	00813083          	ld	ra,8(sp)
    80003584:	00013403          	ld	s0,0(sp)
    80003588:	01010113          	addi	sp,sp,16
    8000358c:	00008067          	ret

0000000080003590 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003590:	ff010113          	addi	sp,sp,-16
    80003594:	00113423          	sd	ra,8(sp)
    80003598:	00813023          	sd	s0,0(sp)
    8000359c:	01010413          	addi	s0,sp,16
    800035a0:	0000a797          	auipc	a5,0xa
    800035a4:	81878793          	addi	a5,a5,-2024 # 8000cdb8 <_ZTV6Thread+0x10>
    800035a8:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    800035ac:	00050613          	mv	a2,a0
    800035b0:	00000597          	auipc	a1,0x0
    800035b4:	d7458593          	addi	a1,a1,-652 # 80003324 <_ZN6Thread6runnerEPv>
    800035b8:	00850513          	addi	a0,a0,8
    800035bc:	ffffe097          	auipc	ra,0xffffe
    800035c0:	ed4080e7          	jalr	-300(ra) # 80001490 <thread_make_pcb>
}
    800035c4:	00813083          	ld	ra,8(sp)
    800035c8:	00013403          	ld	s0,0(sp)
    800035cc:	01010113          	addi	sp,sp,16
    800035d0:	00008067          	ret

00000000800035d4 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    800035d4:	00853503          	ld	a0,8(a0)
    800035d8:	02050663          	beqz	a0,80003604 <_ZN9Semaphore4waitEv+0x30>
{
    800035dc:	ff010113          	addi	sp,sp,-16
    800035e0:	00113423          	sd	ra,8(sp)
    800035e4:	00813023          	sd	s0,0(sp)
    800035e8:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800035ec:	ffffe097          	auipc	ra,0xffffe
    800035f0:	df4080e7          	jalr	-524(ra) # 800013e0 <sem_wait>
}
    800035f4:	00813083          	ld	ra,8(sp)
    800035f8:	00013403          	ld	s0,0(sp)
    800035fc:	01010113          	addi	sp,sp,16
    80003600:	00008067          	ret
        return -1;
    80003604:	fff00513          	li	a0,-1
}
    80003608:	00008067          	ret

000000008000360c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    8000360c:	fe010113          	addi	sp,sp,-32
    80003610:	00113c23          	sd	ra,24(sp)
    80003614:	00813823          	sd	s0,16(sp)
    80003618:	00913423          	sd	s1,8(sp)
    8000361c:	02010413          	addi	s0,sp,32
    80003620:	00050493          	mv	s1,a0
    80003624:	00009797          	auipc	a5,0x9
    80003628:	7bc78793          	addi	a5,a5,1980 # 8000cde0 <_ZTV9Semaphore+0x10>
    8000362c:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80003630:	00850513          	addi	a0,a0,8
    80003634:	ffffe097          	auipc	ra,0xffffe
    80003638:	d48080e7          	jalr	-696(ra) # 8000137c <sem_open>
    if(retval != 0)
    8000363c:	00050463          	beqz	a0,80003644 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80003640:	0004b423          	sd	zero,8(s1)
}
    80003644:	01813083          	ld	ra,24(sp)
    80003648:	01013403          	ld	s0,16(sp)
    8000364c:	00813483          	ld	s1,8(sp)
    80003650:	02010113          	addi	sp,sp,32
    80003654:	00008067          	ret

0000000080003658 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80003658:	00853503          	ld	a0,8(a0)
    8000365c:	02050663          	beqz	a0,80003688 <_ZN9Semaphore6signalEv+0x30>
{
    80003660:	ff010113          	addi	sp,sp,-16
    80003664:	00113423          	sd	ra,8(sp)
    80003668:	00813023          	sd	s0,0(sp)
    8000366c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003670:	ffffe097          	auipc	ra,0xffffe
    80003674:	d9c080e7          	jalr	-612(ra) # 8000140c <sem_signal>
}
    80003678:	00813083          	ld	ra,8(sp)
    8000367c:	00013403          	ld	s0,0(sp)
    80003680:	01010113          	addi	sp,sp,16
    80003684:	00008067          	ret
        return -1;
    80003688:	fff00513          	li	a0,-1
}
    8000368c:	00008067          	ret

0000000080003690 <_ZN7Console4getcEv>:
{
    80003690:	ff010113          	addi	sp,sp,-16
    80003694:	00113423          	sd	ra,8(sp)
    80003698:	00813023          	sd	s0,0(sp)
    8000369c:	01010413          	addi	s0,sp,16
    return ::getc();
    800036a0:	ffffe097          	auipc	ra,0xffffe
    800036a4:	e70080e7          	jalr	-400(ra) # 80001510 <getc>
}
    800036a8:	00813083          	ld	ra,8(sp)
    800036ac:	00013403          	ld	s0,0(sp)
    800036b0:	01010113          	addi	sp,sp,16
    800036b4:	00008067          	ret

00000000800036b8 <_ZN7Console4putcEc>:
{
    800036b8:	ff010113          	addi	sp,sp,-16
    800036bc:	00113423          	sd	ra,8(sp)
    800036c0:	00813023          	sd	s0,0(sp)
    800036c4:	01010413          	addi	s0,sp,16
    return ::putc(c);
    800036c8:	ffffe097          	auipc	ra,0xffffe
    800036cc:	e70080e7          	jalr	-400(ra) # 80001538 <putc>
}
    800036d0:	00813083          	ld	ra,8(sp)
    800036d4:	00013403          	ld	s0,0(sp)
    800036d8:	01010113          	addi	sp,sp,16
    800036dc:	00008067          	ret

00000000800036e0 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800036e0:	fe010113          	addi	sp,sp,-32
    800036e4:	00113c23          	sd	ra,24(sp)
    800036e8:	00813823          	sd	s0,16(sp)
    800036ec:	00913423          	sd	s1,8(sp)
    800036f0:	01213023          	sd	s2,0(sp)
    800036f4:	02010413          	addi	s0,sp,32
    800036f8:	00050493          	mv	s1,a0
    800036fc:	00058913          	mv	s2,a1
    80003700:	01000513          	li	a0,16
    80003704:	00000097          	auipc	ra,0x0
    80003708:	cbc080e7          	jalr	-836(ra) # 800033c0 <_Znwm>
    8000370c:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80003710:	00953023          	sd	s1,0(a0)
    80003714:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003718:	00000597          	auipc	a1,0x0
    8000371c:	e0058593          	addi	a1,a1,-512 # 80003518 <_ZN14PeriodicThread6runnerEPv>
    80003720:	00048513          	mv	a0,s1
    80003724:	00000097          	auipc	ra,0x0
    80003728:	e34080e7          	jalr	-460(ra) # 80003558 <_ZN6ThreadC1EPFvPvES0_>
    8000372c:	00009797          	auipc	a5,0x9
    80003730:	62478793          	addi	a5,a5,1572 # 8000cd50 <_ZTV14PeriodicThread+0x10>
    80003734:	00f4b023          	sd	a5,0(s1)
}
    80003738:	01813083          	ld	ra,24(sp)
    8000373c:	01013403          	ld	s0,16(sp)
    80003740:	00813483          	ld	s1,8(sp)
    80003744:	00013903          	ld	s2,0(sp)
    80003748:	02010113          	addi	sp,sp,32
    8000374c:	00008067          	ret

0000000080003750 <_ZN5Riscv10initSystemEv>:
uint64 Riscv::totalTime = 0;
bool Riscv::finishSystem = false;
bool Riscv::kernelMainCalled = false;

void Riscv::initSystem()
{
    80003750:	ff010113          	addi	sp,sp,-16
    80003754:	00113423          	sd	ra,8(sp)
    80003758:	00813023          	sd	s0,0(sp)
    8000375c:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003760:	0000a797          	auipc	a5,0xa
    80003764:	8587b783          	ld	a5,-1960(a5) # 8000cfb8 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003768:	10579073          	csrw	stvec,a5
    PCB::initialize();
    8000376c:	fffff097          	auipc	ra,0xfffff
    80003770:	f64080e7          	jalr	-156(ra) # 800026d0 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003774:	fffff097          	auipc	ra,0xfffff
    80003778:	2f8080e7          	jalr	760(ra) # 80002a6c <_ZN8KConsole10initializeEv>
}
    8000377c:	00813083          	ld	ra,8(sp)
    80003780:	00013403          	ld	s0,0(sp)
    80003784:	01010113          	addi	sp,sp,16
    80003788:	00008067          	ret

000000008000378c <_ZN5Riscv16enableInterruptsEv>:
void Riscv::endSystem()
{
    Riscv::disableInterrupts();
}

void Riscv::enableInterrupts() {
    8000378c:	ff010113          	addi	sp,sp,-16
    80003790:	00813423          	sd	s0,8(sp)
    80003794:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003798:	00200793          	li	a5,2
    8000379c:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    800037a0:	00813403          	ld	s0,8(sp)
    800037a4:	01010113          	addi	sp,sp,16
    800037a8:	00008067          	ret

00000000800037ac <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    800037ac:	ff010113          	addi	sp,sp,-16
    800037b0:	00813423          	sd	s0,8(sp)
    800037b4:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800037b8:	00200793          	li	a5,2
    800037bc:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    800037c0:	00813403          	ld	s0,8(sp)
    800037c4:	01010113          	addi	sp,sp,16
    800037c8:	00008067          	ret

00000000800037cc <_ZN5Riscv9endSystemEv>:
{
    800037cc:	ff010113          	addi	sp,sp,-16
    800037d0:	00113423          	sd	ra,8(sp)
    800037d4:	00813023          	sd	s0,0(sp)
    800037d8:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    800037dc:	00000097          	auipc	ra,0x0
    800037e0:	fd0080e7          	jalr	-48(ra) # 800037ac <_ZN5Riscv17disableInterruptsEv>
}
    800037e4:	00813083          	ld	ra,8(sp)
    800037e8:	00013403          	ld	s0,0(sp)
    800037ec:	01010113          	addi	sp,sp,16
    800037f0:	00008067          	ret

00000000800037f4 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    800037f4:	ff010113          	addi	sp,sp,-16
    800037f8:	00813423          	sd	s0,8(sp)
    800037fc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003800:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003804:	10200073          	sret
}
    80003808:	00813403          	ld	s0,8(sp)
    8000380c:	01010113          	addi	sp,sp,16
    80003810:	00008067          	ret

0000000080003814 <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    80003814:	0000e797          	auipc	a5,0xe
    80003818:	91c7c783          	lbu	a5,-1764(a5) # 80011130 <_ZN5Riscv16kernelMainCalledE>
    8000381c:	00078463          	beqz	a5,80003824 <_ZN5Riscv10kernelMainEv+0x10>
    80003820:	00008067          	ret
{
    80003824:	ff010113          	addi	sp,sp,-16
    80003828:	00113423          	sd	ra,8(sp)
    8000382c:	00813023          	sd	s0,0(sp)
    80003830:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    80003834:	00100793          	li	a5,1
    80003838:	0000e717          	auipc	a4,0xe
    8000383c:	8ef70c23          	sb	a5,-1800(a4) # 80011130 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    80003840:	00000097          	auipc	ra,0x0
    80003844:	f10080e7          	jalr	-240(ra) # 80003750 <_ZN5Riscv10initSystemEv>

    enableInterrupts();
    80003848:	00000097          	auipc	ra,0x0
    8000384c:	f44080e7          	jalr	-188(ra) # 8000378c <_ZN5Riscv16enableInterruptsEv>

    while(!PCB::userPCB->isFinished())
    80003850:	00009797          	auipc	a5,0x9
    80003854:	7a87b783          	ld	a5,1960(a5) # 8000cff8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003858:	0007b503          	ld	a0,0(a5)
    8000385c:	fffff097          	auipc	ra,0xfffff
    80003860:	f94080e7          	jalr	-108(ra) # 800027f0 <_ZN3PCB10isFinishedEv>
    80003864:	00051863          	bnez	a0,80003874 <_ZN5Riscv10kernelMainEv+0x60>
    {
        thread_dispatch();
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	acc080e7          	jalr	-1332(ra) # 80001334 <thread_dispatch>
    while(!PCB::userPCB->isFinished())
    80003870:	fe1ff06f          	j	80003850 <_ZN5Riscv10kernelMainEv+0x3c>
    }

    //printString("End...\n");
    finishSystem = true;
    80003874:	00100793          	li	a5,1
    80003878:	0000e717          	auipc	a4,0xe
    8000387c:	8af70ca3          	sb	a5,-1863(a4) # 80011131 <_ZN5Riscv12finishSystemE>
    80003880:	00c0006f          	j	8000388c <_ZN5Riscv10kernelMainEv+0x78>
    while(!PCB::consolePCB->isFinished())
    {
        thread_dispatch();
    80003884:	ffffe097          	auipc	ra,0xffffe
    80003888:	ab0080e7          	jalr	-1360(ra) # 80001334 <thread_dispatch>
    while(!PCB::consolePCB->isFinished())
    8000388c:	00009797          	auipc	a5,0x9
    80003890:	7647b783          	ld	a5,1892(a5) # 8000cff0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003894:	0007b503          	ld	a0,0(a5)
    80003898:	fffff097          	auipc	ra,0xfffff
    8000389c:	f58080e7          	jalr	-168(ra) # 800027f0 <_ZN3PCB10isFinishedEv>
    800038a0:	fe0502e3          	beqz	a0,80003884 <_ZN5Riscv10kernelMainEv+0x70>
    }
    disableInterrupts();
    800038a4:	00000097          	auipc	ra,0x0
    800038a8:	f08080e7          	jalr	-248(ra) # 800037ac <_ZN5Riscv17disableInterruptsEv>
    endSystem();
    800038ac:	00000097          	auipc	ra,0x0
    800038b0:	f20080e7          	jalr	-224(ra) # 800037cc <_ZN5Riscv9endSystemEv>
}
    800038b4:	00813083          	ld	ra,8(sp)
    800038b8:	00013403          	ld	s0,0(sp)
    800038bc:	01010113          	addi	sp,sp,16
    800038c0:	00008067          	ret

00000000800038c4 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    800038c4:	ff010113          	addi	sp,sp,-16
    800038c8:	00113423          	sd	ra,8(sp)
    800038cc:	00813023          	sd	s0,0(sp)
    800038d0:	01010413          	addi	s0,sp,16
    userMain();
    800038d4:	00003097          	auipc	ra,0x3
    800038d8:	48c080e7          	jalr	1164(ra) # 80006d60 <_Z8userMainv>
}
    800038dc:	00813083          	ld	ra,8(sp)
    800038e0:	00013403          	ld	s0,0(sp)
    800038e4:	01010113          	addi	sp,sp,16
    800038e8:	00008067          	ret

00000000800038ec <_ZN5Riscv14myTestsWrapperEPv>:

void Riscv::myTestsWrapper(void* p)
{
    800038ec:	ff010113          	addi	sp,sp,-16
    800038f0:	00113423          	sd	ra,8(sp)
    800038f4:	00813023          	sd	s0,0(sp)
    800038f8:	01010413          	addi	s0,sp,16
    myTests();
    800038fc:	fffff097          	auipc	ra,0xfffff
    80003900:	a5c080e7          	jalr	-1444(ra) # 80002358 <_Z7myTestsv>
}
    80003904:	00813083          	ld	ra,8(sp)
    80003908:	00013403          	ld	s0,0(sp)
    8000390c:	01010113          	addi	sp,sp,16
    80003910:	00008067          	ret

0000000080003914 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80003914:	ff010113          	addi	sp,sp,-16
    80003918:	00813423          	sd	s0,8(sp)
    8000391c:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80003920:	00200793          	li	a5,2
    80003924:	1047b073          	csrc	sie,a5
}
    80003928:	00813403          	ld	s0,8(sp)
    8000392c:	01010113          	addi	sp,sp,16
    80003930:	00008067          	ret

0000000080003934 <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    80003934:	ff010113          	addi	sp,sp,-16
    80003938:	00813423          	sd	s0,8(sp)
    8000393c:	01010413          	addi	s0,sp,16
    while(true)
    80003940:	0000006f          	j	80003940 <_ZN5Riscv9idleRiscvEPv+0xc>

0000000080003944 <_ZN5Riscv13w_a0_sscratchEv>:

    }
}

void Riscv::w_a0_sscratch()
{
    80003944:	ff010113          	addi	sp,sp,-16
    80003948:	00813423          	sd	s0,8(sp)
    8000394c:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80003950:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80003954:	00009717          	auipc	a4,0x9
    80003958:	6bc73703          	ld	a4,1724(a4) # 8000d010 <_GLOBAL_OFFSET_TABLE_+0x78>
    8000395c:	00073703          	ld	a4,0(a4)
    80003960:	01073703          	ld	a4,16(a4)
    80003964:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80003968:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    8000396c:	00078593          	mv	a1,a5
}
    80003970:	00813403          	ld	s0,8(sp)
    80003974:	01010113          	addi	sp,sp,16
    80003978:	00008067          	ret

000000008000397c <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    8000397c:	ff010113          	addi	sp,sp,-16
    80003980:	00813423          	sd	s0,8(sp)
    80003984:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80003988:	00009797          	auipc	a5,0x9
    8000398c:	6887b783          	ld	a5,1672(a5) # 8000d010 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003990:	0007b783          	ld	a5,0(a5)
    80003994:	0007c783          	lbu	a5,0(a5)
    80003998:	00078c63          	beqz	a5,800039b0 <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    8000399c:	10000793          	li	a5,256
    800039a0:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    800039a4:	00813403          	ld	s0,8(sp)
    800039a8:	01010113          	addi	sp,sp,16
    800039ac:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800039b0:	10000793          	li	a5,256
    800039b4:	1007b073          	csrc	sstatus,a5
    800039b8:	fedff06f          	j	800039a4 <_ZN5Riscv14changePrivModeEv+0x28>

00000000800039bc <_ZN5Riscv20handleSupervisorTrapEv>:
{
    800039bc:	f9010113          	addi	sp,sp,-112
    800039c0:	06113423          	sd	ra,104(sp)
    800039c4:	06813023          	sd	s0,96(sp)
    800039c8:	04913c23          	sd	s1,88(sp)
    800039cc:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    800039d0:	00070713          	mv	a4,a4
    800039d4:	00009797          	auipc	a5,0x9
    800039d8:	65c7b783          	ld	a5,1628(a5) # 8000d030 <_GLOBAL_OFFSET_TABLE_+0x98>
    800039dc:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    800039e0:	00009797          	auipc	a5,0x9
    800039e4:	6307b783          	ld	a5,1584(a5) # 8000d010 <_GLOBAL_OFFSET_TABLE_+0x78>
    800039e8:	0007b783          	ld	a5,0(a5)
    800039ec:	14002773          	csrr	a4,sscratch
    800039f0:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    800039f4:	142027f3          	csrr	a5,scause
    800039f8:	faf43c23          	sd	a5,-72(s0)
    return scause;
    800039fc:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003a00:	00900713          	li	a4,9
    80003a04:	02f76e63          	bltu	a4,a5,80003a40 <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    80003a08:	00800713          	li	a4,8
    80003a0c:	18e7f463          	bgeu	a5,a4,80003b94 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    80003a10:	00500713          	li	a4,5
    80003a14:	16e78a63          	beq	a5,a4,80003b88 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    80003a18:	00700713          	li	a4,7
    80003a1c:	00e79863          	bne	a5,a4,80003a2c <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    80003a20:	fffff097          	auipc	ra,0xfffff
    80003a24:	df4080e7          	jalr	-524(ra) # 80002814 <_ZN3PCB17threadExitHandlerEv>
            break;
    80003a28:	1200006f          	j	80003b48 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    switch(scause)
    80003a2c:	00200713          	li	a4,2
    80003a30:	10e79c63          	bne	a5,a4,80003b48 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            PCB::threadExitHandler();
    80003a34:	fffff097          	auipc	ra,0xfffff
    80003a38:	de0080e7          	jalr	-544(ra) # 80002814 <_ZN3PCB17threadExitHandlerEv>
            break;
    80003a3c:	10c0006f          	j	80003b48 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    switch(scause)
    80003a40:	fff00713          	li	a4,-1
    80003a44:	03f71713          	slli	a4,a4,0x3f
    80003a48:	00170713          	addi	a4,a4,1
    80003a4c:	06e78a63          	beq	a5,a4,80003ac0 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    80003a50:	fff00713          	li	a4,-1
    80003a54:	03f71713          	slli	a4,a4,0x3f
    80003a58:	00970713          	addi	a4,a4,9
    80003a5c:	0ee79663          	bne	a5,a4,80003b48 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            uint64 x = CONSOLE_STATUS;
    80003a60:	00009797          	auipc	a5,0x9
    80003a64:	5487b783          	ld	a5,1352(a5) # 8000cfa8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003a68:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003a6c:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003a70:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003a74:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80003a78:	0017f793          	andi	a5,a5,1
    80003a7c:	02078863          	beqz	a5,80003aac <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                x = CONSOLE_TX_DATA;
    80003a80:	00009797          	auipc	a5,0x9
    80003a84:	5487b783          	ld	a5,1352(a5) # 8000cfc8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003a88:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003a8c:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003a90:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003a94:	00058513          	mv	a0,a1
    80003a98:	0ff57513          	andi	a0,a0,255
                if(KConsole::pendingGetc > 0)
    80003a9c:	00009797          	auipc	a5,0x9
    80003aa0:	5247b783          	ld	a5,1316(a5) # 8000cfc0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003aa4:	0007b783          	ld	a5,0(a5)
    80003aa8:	0c079263          	bnez	a5,80003b6c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            plic_complete(plic_claim());
    80003aac:	00004097          	auipc	ra,0x4
    80003ab0:	2e8080e7          	jalr	744(ra) # 80007d94 <plic_claim>
    80003ab4:	00004097          	auipc	ra,0x4
    80003ab8:	318080e7          	jalr	792(ra) # 80007dcc <plic_complete>
            break;
    80003abc:	08c0006f          	j	80003b48 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003ac0:	141027f3          	csrr	a5,sepc
    80003ac4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003ac8:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003acc:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003ad0:	100027f3          	csrr	a5,sstatus
    80003ad4:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003ad8:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003adc:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003ae0:	00200793          	li	a5,2
    80003ae4:	1447b073          	csrc	sip,a5
            totalTime++;
    80003ae8:	0000d717          	auipc	a4,0xd
    80003aec:	64870713          	addi	a4,a4,1608 # 80011130 <_ZN5Riscv16kernelMainCalledE>
    80003af0:	00873783          	ld	a5,8(a4)
    80003af4:	00178793          	addi	a5,a5,1
    80003af8:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80003afc:	00009497          	auipc	s1,0x9
    80003b00:	4d44b483          	ld	s1,1236(s1) # 8000cfd0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003b04:	0004b783          	ld	a5,0(s1)
    80003b08:	00178793          	addi	a5,a5,1
    80003b0c:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003b10:	fffff097          	auipc	ra,0xfffff
    80003b14:	5dc080e7          	jalr	1500(ra) # 800030ec <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003b18:	00009797          	auipc	a5,0x9
    80003b1c:	4f87b783          	ld	a5,1272(a5) # 8000d010 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003b20:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003b24:	0187b783          	ld	a5,24(a5)
    80003b28:	0004b703          	ld	a4,0(s1)
    80003b2c:	02f77863          	bgeu	a4,a5,80003b5c <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            Riscv::w_sstatus(sstatus);
    80003b30:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003b34:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003b38:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003b3c:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003b40:	00000097          	auipc	ra,0x0
    80003b44:	e3c080e7          	jalr	-452(ra) # 8000397c <_ZN5Riscv14changePrivModeEv>
}
    80003b48:	06813083          	ld	ra,104(sp)
    80003b4c:	06013403          	ld	s0,96(sp)
    80003b50:	05813483          	ld	s1,88(sp)
    80003b54:	07010113          	addi	sp,sp,112
    80003b58:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80003b5c:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003b60:	fffff097          	auipc	ra,0xfffff
    80003b64:	a68080e7          	jalr	-1432(ra) # 800025c8 <_ZN3PCB8dispatchEv>
    80003b68:	fc9ff06f          	j	80003b30 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                    KConsole::pendingGetc--;
    80003b6c:	fff78793          	addi	a5,a5,-1
    80003b70:	00009717          	auipc	a4,0x9
    80003b74:	45073703          	ld	a4,1104(a4) # 8000cfc0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003b78:	00f73023          	sd	a5,0(a4)
                    KConsole::putCharacterInput(c);
    80003b7c:	fffff097          	auipc	ra,0xfffff
    80003b80:	fa0080e7          	jalr	-96(ra) # 80002b1c <_ZN8KConsole17putCharacterInputEc>
    80003b84:	f29ff06f          	j	80003aac <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            PCB::threadExitHandler();
    80003b88:	fffff097          	auipc	ra,0xfffff
    80003b8c:	c8c080e7          	jalr	-884(ra) # 80002814 <_ZN3PCB17threadExitHandlerEv>
            break;
    80003b90:	fb9ff06f          	j	80003b48 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003b94:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003b98:	14102773          	csrr	a4,sepc
    80003b9c:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003ba0:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003ba4:	00470713          	addi	a4,a4,4
    80003ba8:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003bac:	10002773          	csrr	a4,sstatus
    80003bb0:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003bb4:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003bb8:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003bbc:	04300713          	li	a4,67
    80003bc0:	02f76463          	bltu	a4,a5,80003be8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
    80003bc4:	00279793          	slli	a5,a5,0x2
    80003bc8:	00006717          	auipc	a4,0x6
    80003bcc:	61c70713          	addi	a4,a4,1564 # 8000a1e4 <CONSOLE_STATUS+0x1d4>
    80003bd0:	00e787b3          	add	a5,a5,a4
    80003bd4:	0007a783          	lw	a5,0(a5)
    80003bd8:	00e787b3          	add	a5,a5,a4
    80003bdc:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80003be0:	00000097          	auipc	ra,0x0
    80003be4:	4a8080e7          	jalr	1192(ra) # 80004088 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003be8:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003bec:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003bf0:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003bf4:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003bf8:	00000097          	auipc	ra,0x0
    80003bfc:	d84080e7          	jalr	-636(ra) # 8000397c <_ZN5Riscv14changePrivModeEv>
}
    80003c00:	f49ff06f          	j	80003b48 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
                    MemoryAllocator::memFreeHandler();
    80003c04:	00000097          	auipc	ra,0x0
    80003c08:	4e8080e7          	jalr	1256(ra) # 800040ec <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003c0c:	fddff06f          	j	80003be8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadMakePCBHandler();
    80003c10:	fffff097          	auipc	ra,0xfffff
    80003c14:	dc8080e7          	jalr	-568(ra) # 800029d8 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003c18:	fd1ff06f          	j	80003be8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadCreateHandler();
    80003c1c:	fffff097          	auipc	ra,0xfffff
    80003c20:	cd8080e7          	jalr	-808(ra) # 800028f4 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003c24:	fc5ff06f          	j	80003be8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadStartHandler();
    80003c28:	fffff097          	auipc	ra,0xfffff
    80003c2c:	d6c080e7          	jalr	-660(ra) # 80002994 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80003c30:	fb9ff06f          	j	80003be8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadDispatchHandler();
    80003c34:	fffff097          	auipc	ra,0xfffff
    80003c38:	c2c080e7          	jalr	-980(ra) # 80002860 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80003c3c:	fadff06f          	j	80003be8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadExitHandler();
    80003c40:	fffff097          	auipc	ra,0xfffff
    80003c44:	bd4080e7          	jalr	-1068(ra) # 80002814 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003c48:	fa1ff06f          	j	80003be8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadSleepHandler();
    80003c4c:	fffff097          	auipc	ra,0xfffff
    80003c50:	c44080e7          	jalr	-956(ra) # 80002890 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003c54:	f95ff06f          	j	80003be8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semOpenHandler();
    80003c58:	00000097          	auipc	ra,0x0
    80003c5c:	75c080e7          	jalr	1884(ra) # 800043b4 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003c60:	f89ff06f          	j	80003be8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semWaitHandler();
    80003c64:	00000097          	auipc	ra,0x0
    80003c68:	7f0080e7          	jalr	2032(ra) # 80004454 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003c6c:	f7dff06f          	j	80003be8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semSignalHandler();
    80003c70:	00001097          	auipc	ra,0x1
    80003c74:	838080e7          	jalr	-1992(ra) # 800044a8 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003c78:	f71ff06f          	j	80003be8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semCloseHandler();
    80003c7c:	00001097          	auipc	ra,0x1
    80003c80:	870080e7          	jalr	-1936(ra) # 800044ec <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80003c84:	f65ff06f          	j	80003be8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::getcHandler();
    80003c88:	fffff097          	auipc	ra,0xfffff
    80003c8c:	134080e7          	jalr	308(ra) # 80002dbc <_ZN8KConsole11getcHandlerEv>
                    break;
    80003c90:	f59ff06f          	j	80003be8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::putcHandler();
    80003c94:	fffff097          	auipc	ra,0xfffff
    80003c98:	0f8080e7          	jalr	248(ra) # 80002d8c <_ZN8KConsole11putcHandlerEv>
                    break;
    80003c9c:	f4dff06f          	j	80003be8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::getCharHandler();
    80003ca0:	fffff097          	auipc	ra,0xfffff
    80003ca4:	28c080e7          	jalr	652(ra) # 80002f2c <_ZN8KConsole14getCharHandlerEv>
                    break;
    80003ca8:	f41ff06f          	j	80003be8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>

0000000080003cac <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003cac:	ff010113          	addi	sp,sp,-16
    80003cb0:	00813423          	sd	s0,8(sp)
    80003cb4:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003cb8:	0000d717          	auipc	a4,0xd
    80003cbc:	48872703          	lw	a4,1160(a4) # 80011140 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003cc0:	00100793          	li	a5,1
    80003cc4:	04f70263          	beq	a4,a5,80003d08 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003cc8:	0000d797          	auipc	a5,0xd
    80003ccc:	47878793          	addi	a5,a5,1144 # 80011140 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003cd0:	00100713          	li	a4,1
    80003cd4:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003cd8:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003cdc:	00009717          	auipc	a4,0x9
    80003ce0:	2d473703          	ld	a4,724(a4) # 8000cfb0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003ce4:	00073703          	ld	a4,0(a4)
    80003ce8:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003cec:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003cf0:	00009797          	auipc	a5,0x9
    80003cf4:	3287b783          	ld	a5,808(a5) # 8000d018 <_GLOBAL_OFFSET_TABLE_+0x80>
    80003cf8:	0007b783          	ld	a5,0(a5)
    80003cfc:	40e787b3          	sub	a5,a5,a4
    80003d00:	ff178793          	addi	a5,a5,-15
    80003d04:	00f73023          	sd	a5,0(a4)
}
    80003d08:	00813403          	ld	s0,8(sp)
    80003d0c:	01010113          	addi	sp,sp,16
    80003d10:	00008067          	ret

0000000080003d14 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80003d14:	fe010113          	addi	sp,sp,-32
    80003d18:	00113c23          	sd	ra,24(sp)
    80003d1c:	00813823          	sd	s0,16(sp)
    80003d20:	00913423          	sd	s1,8(sp)
    80003d24:	01213023          	sd	s2,0(sp)
    80003d28:	02010413          	addi	s0,sp,32
    80003d2c:	00050493          	mv	s1,a0
    80003d30:	00058913          	mv	s2,a1
    initMemory();
    80003d34:	00000097          	auipc	ra,0x0
    80003d38:	f78080e7          	jalr	-136(ra) # 80003cac <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003d3c:	0000d797          	auipc	a5,0xd
    80003d40:	40c7b783          	ld	a5,1036(a5) # 80011148 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003d44:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003d48:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80003d4c:	00000713          	li	a4,0
    while(curr != 0)
    80003d50:	00078c63          	beqz	a5,80003d68 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003d54:	00f4e863          	bltu	s1,a5,80003d64 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003d58:	00078713          	mv	a4,a5
        curr = curr->next;
    80003d5c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003d60:	ff1ff06f          	j	80003d50 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003d64:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003d68:	02070063          	beqz	a4,80003d88 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003d6c:	00973423          	sd	s1,8(a4)
}
    80003d70:	01813083          	ld	ra,24(sp)
    80003d74:	01013403          	ld	s0,16(sp)
    80003d78:	00813483          	ld	s1,8(sp)
    80003d7c:	00013903          	ld	s2,0(sp)
    80003d80:	02010113          	addi	sp,sp,32
    80003d84:	00008067          	ret
        headAllocated = newAllocated;
    80003d88:	0000d797          	auipc	a5,0xd
    80003d8c:	3c97b023          	sd	s1,960(a5) # 80011148 <_ZN15MemoryAllocator13headAllocatedE>
    80003d90:	fe1ff06f          	j	80003d70 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003d94 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80003d94:	fe010113          	addi	sp,sp,-32
    80003d98:	00113c23          	sd	ra,24(sp)
    80003d9c:	00813823          	sd	s0,16(sp)
    80003da0:	00913423          	sd	s1,8(sp)
    80003da4:	01213023          	sd	s2,0(sp)
    80003da8:	02010413          	addi	s0,sp,32
    80003dac:	00050913          	mv	s2,a0
    initMemory();
    80003db0:	00000097          	auipc	ra,0x0
    80003db4:	efc080e7          	jalr	-260(ra) # 80003cac <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003db8:	0000d497          	auipc	s1,0xd
    80003dbc:	3984b483          	ld	s1,920(s1) # 80011150 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003dc0:	00000713          	li	a4,0
    while(curr != 0)
    80003dc4:	0a048863          	beqz	s1,80003e74 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80003dc8:	0004b783          	ld	a5,0(s1)
    80003dcc:	0127f863          	bgeu	a5,s2,80003ddc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003dd0:	00048713          	mv	a4,s1
        curr = curr->next;
    80003dd4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003dd8:	fedff06f          	j	80003dc4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003ddc:	01090693          	addi	a3,s2,16
    80003de0:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80003de4:	00009617          	auipc	a2,0x9
    80003de8:	23463603          	ld	a2,564(a2) # 8000d018 <_GLOBAL_OFFSET_TABLE_+0x80>
    80003dec:	00063603          	ld	a2,0(a2)
    80003df0:	04d66c63          	bltu	a2,a3,80003e48 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80003df4:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003df8:	01000613          	li	a2,16
    80003dfc:	02f67663          	bgeu	a2,a5,80003e28 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80003e00:	0084b603          	ld	a2,8(s1)
    80003e04:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003e08:	ff078793          	addi	a5,a5,-16
    80003e0c:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003e10:	00070663          	beqz	a4,80003e1c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80003e14:	00d73423          	sd	a3,8(a4)
    80003e18:	0380006f          	j	80003e50 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003e1c:	0000d797          	auipc	a5,0xd
    80003e20:	32d7ba23          	sd	a3,820(a5) # 80011150 <_ZN15MemoryAllocator8headFreeE>
    80003e24:	02c0006f          	j	80003e50 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80003e28:	00070863          	beqz	a4,80003e38 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003e2c:	0084b783          	ld	a5,8(s1)
    80003e30:	00f73423          	sd	a5,8(a4)
    80003e34:	01c0006f          	j	80003e50 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80003e38:	0084b783          	ld	a5,8(s1)
    80003e3c:	0000d717          	auipc	a4,0xd
    80003e40:	30f73a23          	sd	a5,788(a4) # 80011150 <_ZN15MemoryAllocator8headFreeE>
    80003e44:	00c0006f          	j	80003e50 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80003e48:	02070063          	beqz	a4,80003e68 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80003e4c:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80003e50:	00090593          	mv	a1,s2
    80003e54:	00048513          	mv	a0,s1
    80003e58:	00000097          	auipc	ra,0x0
    80003e5c:	ebc080e7          	jalr	-324(ra) # 80003d14 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003e60:	01048513          	addi	a0,s1,16
            break;
    80003e64:	0140006f          	j	80003e78 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80003e68:	0000d797          	auipc	a5,0xd
    80003e6c:	2e07b423          	sd	zero,744(a5) # 80011150 <_ZN15MemoryAllocator8headFreeE>
    80003e70:	fe1ff06f          	j	80003e50 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003e74:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003e78:	01813083          	ld	ra,24(sp)
    80003e7c:	01013403          	ld	s0,16(sp)
    80003e80:	00813483          	ld	s1,8(sp)
    80003e84:	00013903          	ld	s2,0(sp)
    80003e88:	02010113          	addi	sp,sp,32
    80003e8c:	00008067          	ret

0000000080003e90 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80003e90:	ff010113          	addi	sp,sp,-16
    80003e94:	00113423          	sd	ra,8(sp)
    80003e98:	00813023          	sd	s0,0(sp)
    80003e9c:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003ea0:	00000097          	auipc	ra,0x0
    80003ea4:	ef4080e7          	jalr	-268(ra) # 80003d94 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003ea8:	00813083          	ld	ra,8(sp)
    80003eac:	00013403          	ld	s0,0(sp)
    80003eb0:	01010113          	addi	sp,sp,16
    80003eb4:	00008067          	ret

0000000080003eb8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80003eb8:	fe010113          	addi	sp,sp,-32
    80003ebc:	00113c23          	sd	ra,24(sp)
    80003ec0:	00813823          	sd	s0,16(sp)
    80003ec4:	00913423          	sd	s1,8(sp)
    80003ec8:	01213023          	sd	s2,0(sp)
    80003ecc:	02010413          	addi	s0,sp,32
    80003ed0:	00050493          	mv	s1,a0
    80003ed4:	00058913          	mv	s2,a1
    initMemory();
    80003ed8:	00000097          	auipc	ra,0x0
    80003edc:	dd4080e7          	jalr	-556(ra) # 80003cac <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003ee0:	0000d797          	auipc	a5,0xd
    80003ee4:	2707b783          	ld	a5,624(a5) # 80011150 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003ee8:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003eec:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003ef0:	00000713          	li	a4,0
    while(curr != 0)
    80003ef4:	00078c63          	beqz	a5,80003f0c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003ef8:	00f4e863          	bltu	s1,a5,80003f08 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003efc:	00078713          	mv	a4,a5
        curr = curr->next;
    80003f00:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003f04:	ff1ff06f          	j	80003ef4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80003f08:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003f0c:	04070663          	beqz	a4,80003f58 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003f10:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003f14:	0084b783          	ld	a5,8(s1)
    80003f18:	00078a63          	beqz	a5,80003f2c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003f1c:	0004b603          	ld	a2,0(s1)
    80003f20:	01060693          	addi	a3,a2,16
    80003f24:	00d486b3          	add	a3,s1,a3
    80003f28:	02d78e63          	beq	a5,a3,80003f64 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003f2c:	00070a63          	beqz	a4,80003f40 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003f30:	00073683          	ld	a3,0(a4)
    80003f34:	01068793          	addi	a5,a3,16
    80003f38:	00f707b3          	add	a5,a4,a5
    80003f3c:	04978263          	beq	a5,s1,80003f80 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003f40:	01813083          	ld	ra,24(sp)
    80003f44:	01013403          	ld	s0,16(sp)
    80003f48:	00813483          	ld	s1,8(sp)
    80003f4c:	00013903          	ld	s2,0(sp)
    80003f50:	02010113          	addi	sp,sp,32
    80003f54:	00008067          	ret
        headFree = newSegment;
    80003f58:	0000d797          	auipc	a5,0xd
    80003f5c:	1e97bc23          	sd	s1,504(a5) # 80011150 <_ZN15MemoryAllocator8headFreeE>
    80003f60:	fb5ff06f          	j	80003f14 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003f64:	0007b683          	ld	a3,0(a5)
    80003f68:	00d60633          	add	a2,a2,a3
    80003f6c:	01060613          	addi	a2,a2,16
    80003f70:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003f74:	0087b783          	ld	a5,8(a5)
    80003f78:	00f4b423          	sd	a5,8(s1)
    80003f7c:	fb1ff06f          	j	80003f2c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003f80:	0004b783          	ld	a5,0(s1)
    80003f84:	00f686b3          	add	a3,a3,a5
    80003f88:	01068693          	addi	a3,a3,16
    80003f8c:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003f90:	0084b783          	ld	a5,8(s1)
    80003f94:	00f73423          	sd	a5,8(a4)
}
    80003f98:	fa9ff06f          	j	80003f40 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003f9c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003f9c:	fe010113          	addi	sp,sp,-32
    80003fa0:	00113c23          	sd	ra,24(sp)
    80003fa4:	00813823          	sd	s0,16(sp)
    80003fa8:	00913423          	sd	s1,8(sp)
    80003fac:	01213023          	sd	s2,0(sp)
    80003fb0:	02010413          	addi	s0,sp,32
    80003fb4:	00050913          	mv	s2,a0
    initMemory();
    80003fb8:	00000097          	auipc	ra,0x0
    80003fbc:	cf4080e7          	jalr	-780(ra) # 80003cac <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003fc0:	0000d497          	auipc	s1,0xd
    80003fc4:	1884b483          	ld	s1,392(s1) # 80011148 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80003fc8:	00000713          	li	a4,0
    while(curr != 0)
    80003fcc:	02048a63          	beqz	s1,80004000 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80003fd0:	01048793          	addi	a5,s1,16
    80003fd4:	01278863          	beq	a5,s2,80003fe4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80003fd8:	00048713          	mv	a4,s1
        curr = curr->next;
    80003fdc:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003fe0:	fedff06f          	j	80003fcc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80003fe4:	02070e63          	beqz	a4,80004020 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80003fe8:	0084b783          	ld	a5,8(s1)
    80003fec:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80003ff0:	0004b583          	ld	a1,0(s1)
    80003ff4:	00048513          	mv	a0,s1
    80003ff8:	00000097          	auipc	ra,0x0
    80003ffc:	ec0080e7          	jalr	-320(ra) # 80003eb8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004000:	02048863          	beqz	s1,80004030 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004004:	00000513          	li	a0,0
    else
        return 1;
}
    80004008:	01813083          	ld	ra,24(sp)
    8000400c:	01013403          	ld	s0,16(sp)
    80004010:	00813483          	ld	s1,8(sp)
    80004014:	00013903          	ld	s2,0(sp)
    80004018:	02010113          	addi	sp,sp,32
    8000401c:	00008067          	ret
                headAllocated = curr->next;
    80004020:	0084b783          	ld	a5,8(s1)
    80004024:	0000d717          	auipc	a4,0xd
    80004028:	12f73223          	sd	a5,292(a4) # 80011148 <_ZN15MemoryAllocator13headAllocatedE>
    8000402c:	fc5ff06f          	j	80003ff0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80004030:	00100513          	li	a0,1
    80004034:	fd5ff06f          	j	80004008 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080004038 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004038:	ff010113          	addi	sp,sp,-16
    8000403c:	00113423          	sd	ra,8(sp)
    80004040:	00813023          	sd	s0,0(sp)
    80004044:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004048:	00000097          	auipc	ra,0x0
    8000404c:	f54080e7          	jalr	-172(ra) # 80003f9c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004050:	00813083          	ld	ra,8(sp)
    80004054:	00013403          	ld	s0,0(sp)
    80004058:	01010113          	addi	sp,sp,16
    8000405c:	00008067          	ret

0000000080004060 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004060:	ff010113          	addi	sp,sp,-16
    80004064:	00113423          	sd	ra,8(sp)
    80004068:	00813023          	sd	s0,0(sp)
    8000406c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004070:	00000097          	auipc	ra,0x0
    80004074:	e20080e7          	jalr	-480(ra) # 80003e90 <_ZN15MemoryAllocator9mem_allocEm>
}
    80004078:	00813083          	ld	ra,8(sp)
    8000407c:	00013403          	ld	s0,0(sp)
    80004080:	01010113          	addi	sp,sp,16
    80004084:	00008067          	ret

0000000080004088 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004088:	ff010113          	addi	sp,sp,-16
    8000408c:	00113423          	sd	ra,8(sp)
    80004090:	00813023          	sd	s0,0(sp)
    80004094:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004098:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    8000409c:	00651513          	slli	a0,a0,0x6
    800040a0:	00000097          	auipc	ra,0x0
    800040a4:	fc0080e7          	jalr	-64(ra) # 80004060 <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800040a8:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800040ac:	00000097          	auipc	ra,0x0
    800040b0:	898080e7          	jalr	-1896(ra) # 80003944 <_ZN5Riscv13w_a0_sscratchEv>
}
    800040b4:	00813083          	ld	ra,8(sp)
    800040b8:	00013403          	ld	s0,0(sp)
    800040bc:	01010113          	addi	sp,sp,16
    800040c0:	00008067          	ret

00000000800040c4 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    800040c4:	ff010113          	addi	sp,sp,-16
    800040c8:	00113423          	sd	ra,8(sp)
    800040cc:	00813023          	sd	s0,0(sp)
    800040d0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    800040d4:	00000097          	auipc	ra,0x0
    800040d8:	f64080e7          	jalr	-156(ra) # 80004038 <_ZN15MemoryAllocator8mem_freeEPv>
    800040dc:	00813083          	ld	ra,8(sp)
    800040e0:	00013403          	ld	s0,0(sp)
    800040e4:	01010113          	addi	sp,sp,16
    800040e8:	00008067          	ret

00000000800040ec <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    800040ec:	ff010113          	addi	sp,sp,-16
    800040f0:	00113423          	sd	ra,8(sp)
    800040f4:	00813023          	sd	s0,0(sp)
    800040f8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    800040fc:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004100:	00000097          	auipc	ra,0x0
    80004104:	fc4080e7          	jalr	-60(ra) # 800040c4 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004108:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    8000410c:	00000097          	auipc	ra,0x0
    80004110:	838080e7          	jalr	-1992(ra) # 80003944 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004114:	00813083          	ld	ra,8(sp)
    80004118:	00013403          	ld	s0,0(sp)
    8000411c:	01010113          	addi	sp,sp,16
    80004120:	00008067          	ret

0000000080004124 <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80004124:	ff010113          	addi	sp,sp,-16
    80004128:	00813423          	sd	s0,8(sp)
    8000412c:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80004130:	00b52a23          	sw	a1,20(a0)
    80004134:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004138:	00053423          	sd	zero,8(a0)
    8000413c:	00053023          	sd	zero,0(a0)
}
    80004140:	00813403          	ld	s0,8(sp)
    80004144:	01010113          	addi	sp,sp,16
    80004148:	00008067          	ret

000000008000414c <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    8000414c:	ff010113          	addi	sp,sp,-16
    80004150:	00813423          	sd	s0,8(sp)
    80004154:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004158:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    8000415c:	00053783          	ld	a5,0(a0)
    80004160:	00078e63          	beqz	a5,8000417c <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004164:	00853783          	ld	a5,8(a0)
    80004168:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    8000416c:	00b53423          	sd	a1,8(a0)
    }
}
    80004170:	00813403          	ld	s0,8(sp)
    80004174:	01010113          	addi	sp,sp,16
    80004178:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    8000417c:	00b53423          	sd	a1,8(a0)
    80004180:	00b53023          	sd	a1,0(a0)
    80004184:	fedff06f          	j	80004170 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004188 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80004188:	ff010113          	addi	sp,sp,-16
    8000418c:	00113423          	sd	ra,8(sp)
    80004190:	00813023          	sd	s0,0(sp)
    80004194:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004198:	00009797          	auipc	a5,0x9
    8000419c:	e787b783          	ld	a5,-392(a5) # 8000d010 <_GLOBAL_OFFSET_TABLE_+0x78>
    800041a0:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800041a4:	00200793          	li	a5,2
    800041a8:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    800041ac:	00000097          	auipc	ra,0x0
    800041b0:	fa0080e7          	jalr	-96(ra) # 8000414c <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800041b4:	ffffe097          	auipc	ra,0xffffe
    800041b8:	414080e7          	jalr	1044(ra) # 800025c8 <_ZN3PCB8dispatchEv>
}
    800041bc:	00813083          	ld	ra,8(sp)
    800041c0:	00013403          	ld	s0,0(sp)
    800041c4:	01010113          	addi	sp,sp,16
    800041c8:	00008067          	ret

00000000800041cc <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    800041cc:	00009797          	auipc	a5,0x9
    800041d0:	e447b783          	ld	a5,-444(a5) # 8000d010 <_GLOBAL_OFFSET_TABLE_+0x78>
    800041d4:	0007b783          	ld	a5,0(a5)
    800041d8:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    800041dc:	01052783          	lw	a5,16(a0)
    800041e0:	fff7879b          	addiw	a5,a5,-1
    800041e4:	00f52823          	sw	a5,16(a0)
    800041e8:	02079713          	slli	a4,a5,0x20
    800041ec:	00074663          	bltz	a4,800041f8 <_ZN10KSemaphore4waitEv+0x2c>
}
    800041f0:	00000513          	li	a0,0
    800041f4:	00008067          	ret
{
    800041f8:	ff010113          	addi	sp,sp,-16
    800041fc:	00113423          	sd	ra,8(sp)
    80004200:	00813023          	sd	s0,0(sp)
    80004204:	01010413          	addi	s0,sp,16
        block();
    80004208:	00000097          	auipc	ra,0x0
    8000420c:	f80080e7          	jalr	-128(ra) # 80004188 <_ZN10KSemaphore5blockEv>
}
    80004210:	00000513          	li	a0,0
    80004214:	00813083          	ld	ra,8(sp)
    80004218:	00013403          	ld	s0,0(sp)
    8000421c:	01010113          	addi	sp,sp,16
    80004220:	00008067          	ret

0000000080004224 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004224:	ff010113          	addi	sp,sp,-16
    80004228:	00813423          	sd	s0,8(sp)
    8000422c:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004230:	00053503          	ld	a0,0(a0)
    80004234:	00813403          	ld	s0,8(sp)
    80004238:	01010113          	addi	sp,sp,16
    8000423c:	00008067          	ret

0000000080004240 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004240:	ff010113          	addi	sp,sp,-16
    80004244:	00813423          	sd	s0,8(sp)
    80004248:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    8000424c:	00053783          	ld	a5,0(a0)
    80004250:	00078c63          	beqz	a5,80004268 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004254:	0087b703          	ld	a4,8(a5)
    80004258:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    8000425c:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004260:	00053783          	ld	a5,0(a0)
    80004264:	00078863          	beqz	a5,80004274 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004268:	00813403          	ld	s0,8(sp)
    8000426c:	01010113          	addi	sp,sp,16
    80004270:	00008067          	ret
        tailBlocked =0;
    80004274:	00053423          	sd	zero,8(a0)
    80004278:	ff1ff06f          	j	80004268 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

000000008000427c <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    8000427c:	fe010113          	addi	sp,sp,-32
    80004280:	00113c23          	sd	ra,24(sp)
    80004284:	00813823          	sd	s0,16(sp)
    80004288:	00913423          	sd	s1,8(sp)
    8000428c:	01213023          	sd	s2,0(sp)
    80004290:	02010413          	addi	s0,sp,32
    80004294:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004298:	00090513          	mv	a0,s2
    8000429c:	00000097          	auipc	ra,0x0
    800042a0:	f88080e7          	jalr	-120(ra) # 80004224 <_ZN10KSemaphore15getFirstBlockedEv>
    800042a4:	00050493          	mv	s1,a0
    800042a8:	02050463          	beqz	a0,800042d0 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    800042ac:	00090513          	mv	a0,s2
    800042b0:	00000097          	auipc	ra,0x0
    800042b4:	f90080e7          	jalr	-112(ra) # 80004240 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    800042b8:	00100793          	li	a5,1
    800042bc:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    800042c0:	00048513          	mv	a0,s1
    800042c4:	fffff097          	auipc	ra,0xfffff
    800042c8:	f38080e7          	jalr	-200(ra) # 800031fc <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800042cc:	fcdff06f          	j	80004298 <_ZN10KSemaphoreD1Ev+0x1c>
}
    800042d0:	01813083          	ld	ra,24(sp)
    800042d4:	01013403          	ld	s0,16(sp)
    800042d8:	00813483          	ld	s1,8(sp)
    800042dc:	00013903          	ld	s2,0(sp)
    800042e0:	02010113          	addi	sp,sp,32
    800042e4:	00008067          	ret

00000000800042e8 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800042e8:	fe010113          	addi	sp,sp,-32
    800042ec:	00113c23          	sd	ra,24(sp)
    800042f0:	00813823          	sd	s0,16(sp)
    800042f4:	00913423          	sd	s1,8(sp)
    800042f8:	01213023          	sd	s2,0(sp)
    800042fc:	02010413          	addi	s0,sp,32
    80004300:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80004304:	00000097          	auipc	ra,0x0
    80004308:	f20080e7          	jalr	-224(ra) # 80004224 <_ZN10KSemaphore15getFirstBlockedEv>
    8000430c:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80004310:	00090513          	mv	a0,s2
    80004314:	00000097          	auipc	ra,0x0
    80004318:	f2c080e7          	jalr	-212(ra) # 80004240 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    8000431c:	00048863          	beqz	s1,8000432c <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    80004320:	00048513          	mv	a0,s1
    80004324:	fffff097          	auipc	ra,0xfffff
    80004328:	ed8080e7          	jalr	-296(ra) # 800031fc <_ZN9Scheduler3putEP3PCB>
    }
}
    8000432c:	01813083          	ld	ra,24(sp)
    80004330:	01013403          	ld	s0,16(sp)
    80004334:	00813483          	ld	s1,8(sp)
    80004338:	00013903          	ld	s2,0(sp)
    8000433c:	02010113          	addi	sp,sp,32
    80004340:	00008067          	ret

0000000080004344 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004344:	01052783          	lw	a5,16(a0)
    80004348:	0017879b          	addiw	a5,a5,1
    8000434c:	0007871b          	sext.w	a4,a5
    80004350:	00f52823          	sw	a5,16(a0)
    80004354:	00e05663          	blez	a4,80004360 <_ZN10KSemaphore6signalEv+0x1c>
}
    80004358:	00000513          	li	a0,0
    8000435c:	00008067          	ret
uint64 KSemaphore::signal() {
    80004360:	ff010113          	addi	sp,sp,-16
    80004364:	00113423          	sd	ra,8(sp)
    80004368:	00813023          	sd	s0,0(sp)
    8000436c:	01010413          	addi	s0,sp,16
        unblock();
    80004370:	00000097          	auipc	ra,0x0
    80004374:	f78080e7          	jalr	-136(ra) # 800042e8 <_ZN10KSemaphore7unblockEv>
}
    80004378:	00000513          	li	a0,0
    8000437c:	00813083          	ld	ra,8(sp)
    80004380:	00013403          	ld	s0,0(sp)
    80004384:	01010113          	addi	sp,sp,16
    80004388:	00008067          	ret

000000008000438c <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    8000438c:	ff010113          	addi	sp,sp,-16
    80004390:	00113423          	sd	ra,8(sp)
    80004394:	00813023          	sd	s0,0(sp)
    80004398:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    8000439c:	00000097          	auipc	ra,0x0
    800043a0:	cc4080e7          	jalr	-828(ra) # 80004060 <_ZN15MemoryAllocator7kmallocEm>
}
    800043a4:	00813083          	ld	ra,8(sp)
    800043a8:	00013403          	ld	s0,0(sp)
    800043ac:	01010113          	addi	sp,sp,16
    800043b0:	00008067          	ret

00000000800043b4 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    800043b4:	fd010113          	addi	sp,sp,-48
    800043b8:	02113423          	sd	ra,40(sp)
    800043bc:	02813023          	sd	s0,32(sp)
    800043c0:	00913c23          	sd	s1,24(sp)
    800043c4:	01213823          	sd	s2,16(sp)
    800043c8:	01313423          	sd	s3,8(sp)
    800043cc:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800043d0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800043d4:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800043d8:	01800513          	li	a0,24
    800043dc:	00000097          	auipc	ra,0x0
    800043e0:	fb0080e7          	jalr	-80(ra) # 8000438c <_ZN10KSemaphorenwEm>
    800043e4:	00050493          	mv	s1,a0
    800043e8:	0009859b          	sext.w	a1,s3
    800043ec:	00000097          	auipc	ra,0x0
    800043f0:	d38080e7          	jalr	-712(ra) # 80004124 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800043f4:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800043f8:	02048663          	beqz	s1,80004424 <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    800043fc:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80004400:	fffff097          	auipc	ra,0xfffff
    80004404:	544080e7          	jalr	1348(ra) # 80003944 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004408:	02813083          	ld	ra,40(sp)
    8000440c:	02013403          	ld	s0,32(sp)
    80004410:	01813483          	ld	s1,24(sp)
    80004414:	01013903          	ld	s2,16(sp)
    80004418:	00813983          	ld	s3,8(sp)
    8000441c:	03010113          	addi	sp,sp,48
    80004420:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80004424:	fff00513          	li	a0,-1
    80004428:	fd9ff06f          	j	80004400 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

000000008000442c <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    8000442c:	ff010113          	addi	sp,sp,-16
    80004430:	00113423          	sd	ra,8(sp)
    80004434:	00813023          	sd	s0,0(sp)
    80004438:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    8000443c:	00000097          	auipc	ra,0x0
    80004440:	c88080e7          	jalr	-888(ra) # 800040c4 <_ZN15MemoryAllocator5kfreeEPv>
}
    80004444:	00813083          	ld	ra,8(sp)
    80004448:	00013403          	ld	s0,0(sp)
    8000444c:	01010113          	addi	sp,sp,16
    80004450:	00008067          	ret

0000000080004454 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80004454:	ff010113          	addi	sp,sp,-16
    80004458:	00113423          	sd	ra,8(sp)
    8000445c:	00813023          	sd	s0,0(sp)
    80004460:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004464:	00058513          	mv	a0,a1
    //uint64 volatile retval = kSem->wait();
    kSem->wait();
    80004468:	00000097          	auipc	ra,0x0
    8000446c:	d64080e7          	jalr	-668(ra) # 800041cc <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    80004470:	00009797          	auipc	a5,0x9
    80004474:	ba07b783          	ld	a5,-1120(a5) # 8000d010 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004478:	0007b783          	ld	a5,0(a5)
    8000447c:	0587c783          	lbu	a5,88(a5)
    80004480:	02078063          	beqz	a5,800044a0 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    80004484:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    80004488:	fffff097          	auipc	ra,0xfffff
    8000448c:	4bc080e7          	jalr	1212(ra) # 80003944 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004490:	00813083          	ld	ra,8(sp)
    80004494:	00013403          	ld	s0,0(sp)
    80004498:	01010113          	addi	sp,sp,16
    8000449c:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    800044a0:	00000513          	li	a0,0
    800044a4:	fe5ff06f          	j	80004488 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

00000000800044a8 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    800044a8:	ff010113          	addi	sp,sp,-16
    800044ac:	00113423          	sd	ra,8(sp)
    800044b0:	00813023          	sd	s0,0(sp)
    800044b4:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800044b8:	00058513          	mv	a0,a1
    if (kSem == 0)
    800044bc:	02050463          	beqz	a0,800044e4 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        //uint64 volatile retval = kSem->signal();
        kSem->signal();
    800044c0:	00000097          	auipc	ra,0x0
    800044c4:	e84080e7          	jalr	-380(ra) # 80004344 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    800044c8:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    800044cc:	fffff097          	auipc	ra,0xfffff
    800044d0:	478080e7          	jalr	1144(ra) # 80003944 <_ZN5Riscv13w_a0_sscratchEv>
}
    800044d4:	00813083          	ld	ra,8(sp)
    800044d8:	00013403          	ld	s0,0(sp)
    800044dc:	01010113          	addi	sp,sp,16
    800044e0:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    800044e4:	00100513          	li	a0,1
    800044e8:	fe5ff06f          	j	800044cc <_ZN10KSemaphore16semSignalHandlerEv+0x24>

00000000800044ec <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    800044ec:	fe010113          	addi	sp,sp,-32
    800044f0:	00113c23          	sd	ra,24(sp)
    800044f4:	00813823          	sd	s0,16(sp)
    800044f8:	00913423          	sd	s1,8(sp)
    800044fc:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004500:	00058493          	mv	s1,a1
    delete kSem;
    80004504:	00048e63          	beqz	s1,80004520 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80004508:	00048513          	mv	a0,s1
    8000450c:	00000097          	auipc	ra,0x0
    80004510:	d70080e7          	jalr	-656(ra) # 8000427c <_ZN10KSemaphoreD1Ev>
    80004514:	00048513          	mv	a0,s1
    80004518:	00000097          	auipc	ra,0x0
    8000451c:	f14080e7          	jalr	-236(ra) # 8000442c <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80004520:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80004524:	fffff097          	auipc	ra,0xfffff
    80004528:	420080e7          	jalr	1056(ra) # 80003944 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000452c:	01813083          	ld	ra,24(sp)
    80004530:	01013403          	ld	s0,16(sp)
    80004534:	00813483          	ld	s1,8(sp)
    80004538:	02010113          	addi	sp,sp,32
    8000453c:	00008067          	ret

0000000080004540 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    80004540:	fe010113          	addi	sp,sp,-32
    80004544:	00113c23          	sd	ra,24(sp)
    80004548:	00813823          	sd	s0,16(sp)
    8000454c:	00913423          	sd	s1,8(sp)
    80004550:	01213023          	sd	s2,0(sp)
    80004554:	02010413          	addi	s0,sp,32
    80004558:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000455c:	00000913          	li	s2,0
    80004560:	00c0006f          	j	8000456c <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004564:	ffffd097          	auipc	ra,0xffffd
    80004568:	dd0080e7          	jalr	-560(ra) # 80001334 <thread_dispatch>
    while ((key = getc()) != 'q') {
    8000456c:	ffffd097          	auipc	ra,0xffffd
    80004570:	fa4080e7          	jalr	-92(ra) # 80001510 <getc>
    80004574:	0005059b          	sext.w	a1,a0
    80004578:	07100793          	li	a5,113
    8000457c:	02f58a63          	beq	a1,a5,800045b0 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80004580:	0084b503          	ld	a0,8(s1)
    80004584:	00003097          	auipc	ra,0x3
    80004588:	d34080e7          	jalr	-716(ra) # 800072b8 <_ZN6Buffer3putEi>
        i++;
    8000458c:	0019071b          	addiw	a4,s2,1
    80004590:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004594:	0004a683          	lw	a3,0(s1)
    80004598:	0026979b          	slliw	a5,a3,0x2
    8000459c:	00d787bb          	addw	a5,a5,a3
    800045a0:	0017979b          	slliw	a5,a5,0x1
    800045a4:	02f767bb          	remw	a5,a4,a5
    800045a8:	fc0792e3          	bnez	a5,8000456c <_Z16producerKeyboardPv+0x2c>
    800045ac:	fb9ff06f          	j	80004564 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800045b0:	00100793          	li	a5,1
    800045b4:	0000d717          	auipc	a4,0xd
    800045b8:	baf72223          	sw	a5,-1116(a4) # 80011158 <threadEnd>
    data->buffer->put('!');
    800045bc:	02100593          	li	a1,33
    800045c0:	0084b503          	ld	a0,8(s1)
    800045c4:	00003097          	auipc	ra,0x3
    800045c8:	cf4080e7          	jalr	-780(ra) # 800072b8 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800045cc:	0104b503          	ld	a0,16(s1)
    800045d0:	ffffd097          	auipc	ra,0xffffd
    800045d4:	e3c080e7          	jalr	-452(ra) # 8000140c <sem_signal>
}
    800045d8:	01813083          	ld	ra,24(sp)
    800045dc:	01013403          	ld	s0,16(sp)
    800045e0:	00813483          	ld	s1,8(sp)
    800045e4:	00013903          	ld	s2,0(sp)
    800045e8:	02010113          	addi	sp,sp,32
    800045ec:	00008067          	ret

00000000800045f0 <_Z8producerPv>:

void producer(void *arg) {
    800045f0:	fe010113          	addi	sp,sp,-32
    800045f4:	00113c23          	sd	ra,24(sp)
    800045f8:	00813823          	sd	s0,16(sp)
    800045fc:	00913423          	sd	s1,8(sp)
    80004600:	01213023          	sd	s2,0(sp)
    80004604:	02010413          	addi	s0,sp,32
    80004608:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000460c:	00000913          	li	s2,0
    80004610:	00c0006f          	j	8000461c <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004614:	ffffd097          	auipc	ra,0xffffd
    80004618:	d20080e7          	jalr	-736(ra) # 80001334 <thread_dispatch>
    while (!threadEnd) {
    8000461c:	0000d797          	auipc	a5,0xd
    80004620:	b3c7a783          	lw	a5,-1220(a5) # 80011158 <threadEnd>
    80004624:	02079e63          	bnez	a5,80004660 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80004628:	0004a583          	lw	a1,0(s1)
    8000462c:	0305859b          	addiw	a1,a1,48
    80004630:	0084b503          	ld	a0,8(s1)
    80004634:	00003097          	auipc	ra,0x3
    80004638:	c84080e7          	jalr	-892(ra) # 800072b8 <_ZN6Buffer3putEi>
        i++;
    8000463c:	0019071b          	addiw	a4,s2,1
    80004640:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004644:	0004a683          	lw	a3,0(s1)
    80004648:	0026979b          	slliw	a5,a3,0x2
    8000464c:	00d787bb          	addw	a5,a5,a3
    80004650:	0017979b          	slliw	a5,a5,0x1
    80004654:	02f767bb          	remw	a5,a4,a5
    80004658:	fc0792e3          	bnez	a5,8000461c <_Z8producerPv+0x2c>
    8000465c:	fb9ff06f          	j	80004614 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80004660:	0104b503          	ld	a0,16(s1)
    80004664:	ffffd097          	auipc	ra,0xffffd
    80004668:	da8080e7          	jalr	-600(ra) # 8000140c <sem_signal>
}
    8000466c:	01813083          	ld	ra,24(sp)
    80004670:	01013403          	ld	s0,16(sp)
    80004674:	00813483          	ld	s1,8(sp)
    80004678:	00013903          	ld	s2,0(sp)
    8000467c:	02010113          	addi	sp,sp,32
    80004680:	00008067          	ret

0000000080004684 <_Z8consumerPv>:

void consumer(void *arg) {
    80004684:	fd010113          	addi	sp,sp,-48
    80004688:	02113423          	sd	ra,40(sp)
    8000468c:	02813023          	sd	s0,32(sp)
    80004690:	00913c23          	sd	s1,24(sp)
    80004694:	01213823          	sd	s2,16(sp)
    80004698:	01313423          	sd	s3,8(sp)
    8000469c:	03010413          	addi	s0,sp,48
    800046a0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800046a4:	00000993          	li	s3,0
    800046a8:	01c0006f          	j	800046c4 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800046ac:	ffffd097          	auipc	ra,0xffffd
    800046b0:	c88080e7          	jalr	-888(ra) # 80001334 <thread_dispatch>
    800046b4:	0500006f          	j	80004704 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800046b8:	00a00513          	li	a0,10
    800046bc:	ffffd097          	auipc	ra,0xffffd
    800046c0:	e7c080e7          	jalr	-388(ra) # 80001538 <putc>
    while (!threadEnd) {
    800046c4:	0000d797          	auipc	a5,0xd
    800046c8:	a947a783          	lw	a5,-1388(a5) # 80011158 <threadEnd>
    800046cc:	06079063          	bnez	a5,8000472c <_Z8consumerPv+0xa8>
        int key = data->buffer->get();
    800046d0:	00893503          	ld	a0,8(s2)
    800046d4:	00003097          	auipc	ra,0x3
    800046d8:	c74080e7          	jalr	-908(ra) # 80007348 <_ZN6Buffer3getEv>
        i++;
    800046dc:	0019849b          	addiw	s1,s3,1
    800046e0:	0004899b          	sext.w	s3,s1
        putc(key);
    800046e4:	0ff57513          	andi	a0,a0,255
    800046e8:	ffffd097          	auipc	ra,0xffffd
    800046ec:	e50080e7          	jalr	-432(ra) # 80001538 <putc>
        if (i % (5 * data->id) == 0) {
    800046f0:	00092703          	lw	a4,0(s2)
    800046f4:	0027179b          	slliw	a5,a4,0x2
    800046f8:	00e787bb          	addw	a5,a5,a4
    800046fc:	02f4e7bb          	remw	a5,s1,a5
    80004700:	fa0786e3          	beqz	a5,800046ac <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    80004704:	05000793          	li	a5,80
    80004708:	02f4e4bb          	remw	s1,s1,a5
    8000470c:	fa049ce3          	bnez	s1,800046c4 <_Z8consumerPv+0x40>
    80004710:	fa9ff06f          	j	800046b8 <_Z8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80004714:	00893503          	ld	a0,8(s2)
    80004718:	00003097          	auipc	ra,0x3
    8000471c:	c30080e7          	jalr	-976(ra) # 80007348 <_ZN6Buffer3getEv>
        putc(key);
    80004720:	0ff57513          	andi	a0,a0,255
    80004724:	ffffd097          	auipc	ra,0xffffd
    80004728:	e14080e7          	jalr	-492(ra) # 80001538 <putc>
    while (data->buffer->getCnt() > 0) {
    8000472c:	00893503          	ld	a0,8(s2)
    80004730:	00003097          	auipc	ra,0x3
    80004734:	ca4080e7          	jalr	-860(ra) # 800073d4 <_ZN6Buffer6getCntEv>
    80004738:	fca04ee3          	bgtz	a0,80004714 <_Z8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000473c:	01093503          	ld	a0,16(s2)
    80004740:	ffffd097          	auipc	ra,0xffffd
    80004744:	ccc080e7          	jalr	-820(ra) # 8000140c <sem_signal>
}
    80004748:	02813083          	ld	ra,40(sp)
    8000474c:	02013403          	ld	s0,32(sp)
    80004750:	01813483          	ld	s1,24(sp)
    80004754:	01013903          	ld	s2,16(sp)
    80004758:	00813983          	ld	s3,8(sp)
    8000475c:	03010113          	addi	sp,sp,48
    80004760:	00008067          	ret

0000000080004764 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80004764:	f9010113          	addi	sp,sp,-112
    80004768:	06113423          	sd	ra,104(sp)
    8000476c:	06813023          	sd	s0,96(sp)
    80004770:	04913c23          	sd	s1,88(sp)
    80004774:	05213823          	sd	s2,80(sp)
    80004778:	05313423          	sd	s3,72(sp)
    8000477c:	05413023          	sd	s4,64(sp)
    80004780:	03513c23          	sd	s5,56(sp)
    80004784:	03613823          	sd	s6,48(sp)
    80004788:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000478c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80004790:	00006517          	auipc	a0,0x6
    80004794:	b6850513          	addi	a0,a0,-1176 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80004798:	00002097          	auipc	ra,0x2
    8000479c:	b00080e7          	jalr	-1280(ra) # 80006298 <_Z11printStringPKc>
    getString(input, 30);
    800047a0:	01e00593          	li	a1,30
    800047a4:	fa040493          	addi	s1,s0,-96
    800047a8:	00048513          	mv	a0,s1
    800047ac:	00002097          	auipc	ra,0x2
    800047b0:	b68080e7          	jalr	-1176(ra) # 80006314 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800047b4:	00048513          	mv	a0,s1
    800047b8:	00002097          	auipc	ra,0x2
    800047bc:	c28080e7          	jalr	-984(ra) # 800063e0 <_Z11stringToIntPKc>
    800047c0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800047c4:	00006517          	auipc	a0,0x6
    800047c8:	b5450513          	addi	a0,a0,-1196 # 8000a318 <CONSOLE_STATUS+0x308>
    800047cc:	00002097          	auipc	ra,0x2
    800047d0:	acc080e7          	jalr	-1332(ra) # 80006298 <_Z11printStringPKc>
    getString(input, 30);
    800047d4:	01e00593          	li	a1,30
    800047d8:	00048513          	mv	a0,s1
    800047dc:	00002097          	auipc	ra,0x2
    800047e0:	b38080e7          	jalr	-1224(ra) # 80006314 <_Z9getStringPci>
    n = stringToInt(input);
    800047e4:	00048513          	mv	a0,s1
    800047e8:	00002097          	auipc	ra,0x2
    800047ec:	bf8080e7          	jalr	-1032(ra) # 800063e0 <_Z11stringToIntPKc>
    800047f0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800047f4:	00006517          	auipc	a0,0x6
    800047f8:	b4450513          	addi	a0,a0,-1212 # 8000a338 <CONSOLE_STATUS+0x328>
    800047fc:	00002097          	auipc	ra,0x2
    80004800:	a9c080e7          	jalr	-1380(ra) # 80006298 <_Z11printStringPKc>
    80004804:	00000613          	li	a2,0
    80004808:	00a00593          	li	a1,10
    8000480c:	00090513          	mv	a0,s2
    80004810:	00002097          	auipc	ra,0x2
    80004814:	c20080e7          	jalr	-992(ra) # 80006430 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004818:	00006517          	auipc	a0,0x6
    8000481c:	b3850513          	addi	a0,a0,-1224 # 8000a350 <CONSOLE_STATUS+0x340>
    80004820:	00002097          	auipc	ra,0x2
    80004824:	a78080e7          	jalr	-1416(ra) # 80006298 <_Z11printStringPKc>
    80004828:	00000613          	li	a2,0
    8000482c:	00a00593          	li	a1,10
    80004830:	00048513          	mv	a0,s1
    80004834:	00002097          	auipc	ra,0x2
    80004838:	bfc080e7          	jalr	-1028(ra) # 80006430 <_Z8printIntiii>
    printString(".\n");
    8000483c:	00006517          	auipc	a0,0x6
    80004840:	b2c50513          	addi	a0,a0,-1236 # 8000a368 <CONSOLE_STATUS+0x358>
    80004844:	00002097          	auipc	ra,0x2
    80004848:	a54080e7          	jalr	-1452(ra) # 80006298 <_Z11printStringPKc>
    if(threadNum > n) {
    8000484c:	0324c463          	blt	s1,s2,80004874 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80004850:	03205c63          	blez	s2,80004888 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80004854:	03800513          	li	a0,56
    80004858:	fffff097          	auipc	ra,0xfffff
    8000485c:	b68080e7          	jalr	-1176(ra) # 800033c0 <_Znwm>
    80004860:	00050a13          	mv	s4,a0
    80004864:	00048593          	mv	a1,s1
    80004868:	00003097          	auipc	ra,0x3
    8000486c:	9b4080e7          	jalr	-1612(ra) # 8000721c <_ZN6BufferC1Ei>
    80004870:	0300006f          	j	800048a0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004874:	00006517          	auipc	a0,0x6
    80004878:	afc50513          	addi	a0,a0,-1284 # 8000a370 <CONSOLE_STATUS+0x360>
    8000487c:	00002097          	auipc	ra,0x2
    80004880:	a1c080e7          	jalr	-1508(ra) # 80006298 <_Z11printStringPKc>
        return;
    80004884:	0140006f          	j	80004898 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004888:	00006517          	auipc	a0,0x6
    8000488c:	b2850513          	addi	a0,a0,-1240 # 8000a3b0 <CONSOLE_STATUS+0x3a0>
    80004890:	00002097          	auipc	ra,0x2
    80004894:	a08080e7          	jalr	-1528(ra) # 80006298 <_Z11printStringPKc>
        return;
    80004898:	000b0113          	mv	sp,s6
    8000489c:	1500006f          	j	800049ec <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800048a0:	00000593          	li	a1,0
    800048a4:	0000d517          	auipc	a0,0xd
    800048a8:	8bc50513          	addi	a0,a0,-1860 # 80011160 <waitForAll>
    800048ac:	ffffd097          	auipc	ra,0xffffd
    800048b0:	ad0080e7          	jalr	-1328(ra) # 8000137c <sem_open>
    thread_t threads[threadNum];
    800048b4:	00391793          	slli	a5,s2,0x3
    800048b8:	00f78793          	addi	a5,a5,15
    800048bc:	ff07f793          	andi	a5,a5,-16
    800048c0:	40f10133          	sub	sp,sp,a5
    800048c4:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800048c8:	0019071b          	addiw	a4,s2,1
    800048cc:	00171793          	slli	a5,a4,0x1
    800048d0:	00e787b3          	add	a5,a5,a4
    800048d4:	00379793          	slli	a5,a5,0x3
    800048d8:	00f78793          	addi	a5,a5,15
    800048dc:	ff07f793          	andi	a5,a5,-16
    800048e0:	40f10133          	sub	sp,sp,a5
    800048e4:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800048e8:	00191613          	slli	a2,s2,0x1
    800048ec:	012607b3          	add	a5,a2,s2
    800048f0:	00379793          	slli	a5,a5,0x3
    800048f4:	00f987b3          	add	a5,s3,a5
    800048f8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800048fc:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80004900:	0000d717          	auipc	a4,0xd
    80004904:	86073703          	ld	a4,-1952(a4) # 80011160 <waitForAll>
    80004908:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000490c:	00078613          	mv	a2,a5
    80004910:	00000597          	auipc	a1,0x0
    80004914:	d7458593          	addi	a1,a1,-652 # 80004684 <_Z8consumerPv>
    80004918:	f9840513          	addi	a0,s0,-104
    8000491c:	ffffd097          	auipc	ra,0xffffd
    80004920:	998080e7          	jalr	-1640(ra) # 800012b4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004924:	00000493          	li	s1,0
    80004928:	0280006f          	j	80004950 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    8000492c:	00000597          	auipc	a1,0x0
    80004930:	c1458593          	addi	a1,a1,-1004 # 80004540 <_Z16producerKeyboardPv>
                      data + i);
    80004934:	00179613          	slli	a2,a5,0x1
    80004938:	00f60633          	add	a2,a2,a5
    8000493c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004940:	00c98633          	add	a2,s3,a2
    80004944:	ffffd097          	auipc	ra,0xffffd
    80004948:	970080e7          	jalr	-1680(ra) # 800012b4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    8000494c:	0014849b          	addiw	s1,s1,1
    80004950:	0524d263          	bge	s1,s2,80004994 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80004954:	00149793          	slli	a5,s1,0x1
    80004958:	009787b3          	add	a5,a5,s1
    8000495c:	00379793          	slli	a5,a5,0x3
    80004960:	00f987b3          	add	a5,s3,a5
    80004964:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004968:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    8000496c:	0000c717          	auipc	a4,0xc
    80004970:	7f473703          	ld	a4,2036(a4) # 80011160 <waitForAll>
    80004974:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80004978:	00048793          	mv	a5,s1
    8000497c:	00349513          	slli	a0,s1,0x3
    80004980:	00aa8533          	add	a0,s5,a0
    80004984:	fa9054e3          	blez	s1,8000492c <_Z22producerConsumer_C_APIv+0x1c8>
    80004988:	00000597          	auipc	a1,0x0
    8000498c:	c6858593          	addi	a1,a1,-920 # 800045f0 <_Z8producerPv>
    80004990:	fa5ff06f          	j	80004934 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80004994:	ffffd097          	auipc	ra,0xffffd
    80004998:	9a0080e7          	jalr	-1632(ra) # 80001334 <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    8000499c:	00000493          	li	s1,0
    800049a0:	00994e63          	blt	s2,s1,800049bc <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800049a4:	0000c517          	auipc	a0,0xc
    800049a8:	7bc53503          	ld	a0,1980(a0) # 80011160 <waitForAll>
    800049ac:	ffffd097          	auipc	ra,0xffffd
    800049b0:	a34080e7          	jalr	-1484(ra) # 800013e0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    800049b4:	0014849b          	addiw	s1,s1,1
    800049b8:	fe9ff06f          	j	800049a0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800049bc:	0000c517          	auipc	a0,0xc
    800049c0:	7a453503          	ld	a0,1956(a0) # 80011160 <waitForAll>
    800049c4:	ffffd097          	auipc	ra,0xffffd
    800049c8:	9f0080e7          	jalr	-1552(ra) # 800013b4 <sem_close>
    delete buffer;
    800049cc:	000a0e63          	beqz	s4,800049e8 <_Z22producerConsumer_C_APIv+0x284>
    800049d0:	000a0513          	mv	a0,s4
    800049d4:	00003097          	auipc	ra,0x3
    800049d8:	a88080e7          	jalr	-1400(ra) # 8000745c <_ZN6BufferD1Ev>
    800049dc:	000a0513          	mv	a0,s4
    800049e0:	fffff097          	auipc	ra,0xfffff
    800049e4:	a08080e7          	jalr	-1528(ra) # 800033e8 <_ZdlPv>
    800049e8:	000b0113          	mv	sp,s6

    800049ec:	f9040113          	addi	sp,s0,-112
    800049f0:	06813083          	ld	ra,104(sp)
    800049f4:	06013403          	ld	s0,96(sp)
    800049f8:	05813483          	ld	s1,88(sp)
    800049fc:	05013903          	ld	s2,80(sp)
    80004a00:	04813983          	ld	s3,72(sp)
    80004a04:	04013a03          	ld	s4,64(sp)
    80004a08:	03813a83          	ld	s5,56(sp)
    80004a0c:	03013b03          	ld	s6,48(sp)
    80004a10:	07010113          	addi	sp,sp,112
    80004a14:	00008067          	ret
    80004a18:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004a1c:	000a0513          	mv	a0,s4
    80004a20:	fffff097          	auipc	ra,0xfffff
    80004a24:	9c8080e7          	jalr	-1592(ra) # 800033e8 <_ZdlPv>
    80004a28:	00048513          	mv	a0,s1
    80004a2c:	0000e097          	auipc	ra,0xe
    80004a30:	82c080e7          	jalr	-2004(ra) # 80012258 <_Unwind_Resume>

0000000080004a34 <_Z9fibonaccim>:
bool finishedA = false;
bool finishedB = false;
bool finishedC = false;
bool finishedD = false;

uint64 fibonacci(uint64 n) {
    80004a34:	fe010113          	addi	sp,sp,-32
    80004a38:	00113c23          	sd	ra,24(sp)
    80004a3c:	00813823          	sd	s0,16(sp)
    80004a40:	00913423          	sd	s1,8(sp)
    80004a44:	01213023          	sd	s2,0(sp)
    80004a48:	02010413          	addi	s0,sp,32
    80004a4c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004a50:	00100793          	li	a5,1
    80004a54:	02a7f863          	bgeu	a5,a0,80004a84 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004a58:	00a00793          	li	a5,10
    80004a5c:	02f577b3          	remu	a5,a0,a5
    80004a60:	02078e63          	beqz	a5,80004a9c <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004a64:	fff48513          	addi	a0,s1,-1
    80004a68:	00000097          	auipc	ra,0x0
    80004a6c:	fcc080e7          	jalr	-52(ra) # 80004a34 <_Z9fibonaccim>
    80004a70:	00050913          	mv	s2,a0
    80004a74:	ffe48513          	addi	a0,s1,-2
    80004a78:	00000097          	auipc	ra,0x0
    80004a7c:	fbc080e7          	jalr	-68(ra) # 80004a34 <_Z9fibonaccim>
    80004a80:	00a90533          	add	a0,s2,a0
}
    80004a84:	01813083          	ld	ra,24(sp)
    80004a88:	01013403          	ld	s0,16(sp)
    80004a8c:	00813483          	ld	s1,8(sp)
    80004a90:	00013903          	ld	s2,0(sp)
    80004a94:	02010113          	addi	sp,sp,32
    80004a98:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004a9c:	ffffd097          	auipc	ra,0xffffd
    80004aa0:	898080e7          	jalr	-1896(ra) # 80001334 <thread_dispatch>
    80004aa4:	fc1ff06f          	j	80004a64 <_Z9fibonaccim+0x30>

0000000080004aa8 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004aa8:	fe010113          	addi	sp,sp,-32
    80004aac:	00113c23          	sd	ra,24(sp)
    80004ab0:	00813823          	sd	s0,16(sp)
    80004ab4:	00913423          	sd	s1,8(sp)
    80004ab8:	01213023          	sd	s2,0(sp)
    80004abc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004ac0:	00000913          	li	s2,0
    80004ac4:	0380006f          	j	80004afc <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004ac8:	ffffd097          	auipc	ra,0xffffd
    80004acc:	86c080e7          	jalr	-1940(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004ad0:	00148493          	addi	s1,s1,1
    80004ad4:	000027b7          	lui	a5,0x2
    80004ad8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004adc:	0097ee63          	bltu	a5,s1,80004af8 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004ae0:	00000713          	li	a4,0
    80004ae4:	000077b7          	lui	a5,0x7
    80004ae8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004aec:	fce7eee3          	bltu	a5,a4,80004ac8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004af0:	00170713          	addi	a4,a4,1
    80004af4:	ff1ff06f          	j	80004ae4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004af8:	00190913          	addi	s2,s2,1
    80004afc:	00900793          	li	a5,9
    80004b00:	0527e063          	bltu	a5,s2,80004b40 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004b04:	00006517          	auipc	a0,0x6
    80004b08:	8dc50513          	addi	a0,a0,-1828 # 8000a3e0 <CONSOLE_STATUS+0x3d0>
    80004b0c:	00001097          	auipc	ra,0x1
    80004b10:	78c080e7          	jalr	1932(ra) # 80006298 <_Z11printStringPKc>
    80004b14:	00000613          	li	a2,0
    80004b18:	00a00593          	li	a1,10
    80004b1c:	0009051b          	sext.w	a0,s2
    80004b20:	00002097          	auipc	ra,0x2
    80004b24:	910080e7          	jalr	-1776(ra) # 80006430 <_Z8printIntiii>
    80004b28:	00005517          	auipc	a0,0x5
    80004b2c:	5d050513          	addi	a0,a0,1488 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80004b30:	00001097          	auipc	ra,0x1
    80004b34:	768080e7          	jalr	1896(ra) # 80006298 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004b38:	00000493          	li	s1,0
    80004b3c:	f99ff06f          	j	80004ad4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004b40:	00006517          	auipc	a0,0x6
    80004b44:	8a850513          	addi	a0,a0,-1880 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    80004b48:	00001097          	auipc	ra,0x1
    80004b4c:	750080e7          	jalr	1872(ra) # 80006298 <_Z11printStringPKc>
    finishedA = true;
    80004b50:	00100793          	li	a5,1
    80004b54:	0000c717          	auipc	a4,0xc
    80004b58:	60f70a23          	sb	a5,1556(a4) # 80011168 <finishedA>
}
    80004b5c:	01813083          	ld	ra,24(sp)
    80004b60:	01013403          	ld	s0,16(sp)
    80004b64:	00813483          	ld	s1,8(sp)
    80004b68:	00013903          	ld	s2,0(sp)
    80004b6c:	02010113          	addi	sp,sp,32
    80004b70:	00008067          	ret

0000000080004b74 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004b74:	fe010113          	addi	sp,sp,-32
    80004b78:	00113c23          	sd	ra,24(sp)
    80004b7c:	00813823          	sd	s0,16(sp)
    80004b80:	00913423          	sd	s1,8(sp)
    80004b84:	01213023          	sd	s2,0(sp)
    80004b88:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004b8c:	00000913          	li	s2,0
    80004b90:	0380006f          	j	80004bc8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004b94:	ffffc097          	auipc	ra,0xffffc
    80004b98:	7a0080e7          	jalr	1952(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004b9c:	00148493          	addi	s1,s1,1
    80004ba0:	000027b7          	lui	a5,0x2
    80004ba4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004ba8:	0097ee63          	bltu	a5,s1,80004bc4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004bac:	00000713          	li	a4,0
    80004bb0:	000077b7          	lui	a5,0x7
    80004bb4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004bb8:	fce7eee3          	bltu	a5,a4,80004b94 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004bbc:	00170713          	addi	a4,a4,1
    80004bc0:	ff1ff06f          	j	80004bb0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004bc4:	00190913          	addi	s2,s2,1
    80004bc8:	00f00793          	li	a5,15
    80004bcc:	0527e063          	bltu	a5,s2,80004c0c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004bd0:	00006517          	auipc	a0,0x6
    80004bd4:	82850513          	addi	a0,a0,-2008 # 8000a3f8 <CONSOLE_STATUS+0x3e8>
    80004bd8:	00001097          	auipc	ra,0x1
    80004bdc:	6c0080e7          	jalr	1728(ra) # 80006298 <_Z11printStringPKc>
    80004be0:	00000613          	li	a2,0
    80004be4:	00a00593          	li	a1,10
    80004be8:	0009051b          	sext.w	a0,s2
    80004bec:	00002097          	auipc	ra,0x2
    80004bf0:	844080e7          	jalr	-1980(ra) # 80006430 <_Z8printIntiii>
    80004bf4:	00005517          	auipc	a0,0x5
    80004bf8:	50450513          	addi	a0,a0,1284 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80004bfc:	00001097          	auipc	ra,0x1
    80004c00:	69c080e7          	jalr	1692(ra) # 80006298 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004c04:	00000493          	li	s1,0
    80004c08:	f99ff06f          	j	80004ba0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004c0c:	00005517          	auipc	a0,0x5
    80004c10:	7f450513          	addi	a0,a0,2036 # 8000a400 <CONSOLE_STATUS+0x3f0>
    80004c14:	00001097          	auipc	ra,0x1
    80004c18:	684080e7          	jalr	1668(ra) # 80006298 <_Z11printStringPKc>
    finishedB = true;
    80004c1c:	00100793          	li	a5,1
    80004c20:	0000c717          	auipc	a4,0xc
    80004c24:	54f704a3          	sb	a5,1353(a4) # 80011169 <finishedB>
    thread_dispatch();
    80004c28:	ffffc097          	auipc	ra,0xffffc
    80004c2c:	70c080e7          	jalr	1804(ra) # 80001334 <thread_dispatch>
}
    80004c30:	01813083          	ld	ra,24(sp)
    80004c34:	01013403          	ld	s0,16(sp)
    80004c38:	00813483          	ld	s1,8(sp)
    80004c3c:	00013903          	ld	s2,0(sp)
    80004c40:	02010113          	addi	sp,sp,32
    80004c44:	00008067          	ret

0000000080004c48 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004c48:	fe010113          	addi	sp,sp,-32
    80004c4c:	00113c23          	sd	ra,24(sp)
    80004c50:	00813823          	sd	s0,16(sp)
    80004c54:	00913423          	sd	s1,8(sp)
    80004c58:	01213023          	sd	s2,0(sp)
    80004c5c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004c60:	00000493          	li	s1,0
    80004c64:	0400006f          	j	80004ca4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004c68:	00005517          	auipc	a0,0x5
    80004c6c:	7a850513          	addi	a0,a0,1960 # 8000a410 <CONSOLE_STATUS+0x400>
    80004c70:	00001097          	auipc	ra,0x1
    80004c74:	628080e7          	jalr	1576(ra) # 80006298 <_Z11printStringPKc>
    80004c78:	00000613          	li	a2,0
    80004c7c:	00a00593          	li	a1,10
    80004c80:	00048513          	mv	a0,s1
    80004c84:	00001097          	auipc	ra,0x1
    80004c88:	7ac080e7          	jalr	1964(ra) # 80006430 <_Z8printIntiii>
    80004c8c:	00005517          	auipc	a0,0x5
    80004c90:	46c50513          	addi	a0,a0,1132 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80004c94:	00001097          	auipc	ra,0x1
    80004c98:	604080e7          	jalr	1540(ra) # 80006298 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004c9c:	0014849b          	addiw	s1,s1,1
    80004ca0:	0ff4f493          	andi	s1,s1,255
    80004ca4:	00200793          	li	a5,2
    80004ca8:	fc97f0e3          	bgeu	a5,s1,80004c68 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004cac:	00005517          	auipc	a0,0x5
    80004cb0:	76c50513          	addi	a0,a0,1900 # 8000a418 <CONSOLE_STATUS+0x408>
    80004cb4:	00001097          	auipc	ra,0x1
    80004cb8:	5e4080e7          	jalr	1508(ra) # 80006298 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004cbc:	00700313          	li	t1,7
    thread_dispatch();
    80004cc0:	ffffc097          	auipc	ra,0xffffc
    80004cc4:	674080e7          	jalr	1652(ra) # 80001334 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004cc8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004ccc:	00005517          	auipc	a0,0x5
    80004cd0:	75c50513          	addi	a0,a0,1884 # 8000a428 <CONSOLE_STATUS+0x418>
    80004cd4:	00001097          	auipc	ra,0x1
    80004cd8:	5c4080e7          	jalr	1476(ra) # 80006298 <_Z11printStringPKc>
    80004cdc:	00000613          	li	a2,0
    80004ce0:	00a00593          	li	a1,10
    80004ce4:	0009051b          	sext.w	a0,s2
    80004ce8:	00001097          	auipc	ra,0x1
    80004cec:	748080e7          	jalr	1864(ra) # 80006430 <_Z8printIntiii>
    80004cf0:	00005517          	auipc	a0,0x5
    80004cf4:	40850513          	addi	a0,a0,1032 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80004cf8:	00001097          	auipc	ra,0x1
    80004cfc:	5a0080e7          	jalr	1440(ra) # 80006298 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004d00:	00c00513          	li	a0,12
    80004d04:	00000097          	auipc	ra,0x0
    80004d08:	d30080e7          	jalr	-720(ra) # 80004a34 <_Z9fibonaccim>
    80004d0c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004d10:	00005517          	auipc	a0,0x5
    80004d14:	72050513          	addi	a0,a0,1824 # 8000a430 <CONSOLE_STATUS+0x420>
    80004d18:	00001097          	auipc	ra,0x1
    80004d1c:	580080e7          	jalr	1408(ra) # 80006298 <_Z11printStringPKc>
    80004d20:	00000613          	li	a2,0
    80004d24:	00a00593          	li	a1,10
    80004d28:	0009051b          	sext.w	a0,s2
    80004d2c:	00001097          	auipc	ra,0x1
    80004d30:	704080e7          	jalr	1796(ra) # 80006430 <_Z8printIntiii>
    80004d34:	00005517          	auipc	a0,0x5
    80004d38:	3c450513          	addi	a0,a0,964 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80004d3c:	00001097          	auipc	ra,0x1
    80004d40:	55c080e7          	jalr	1372(ra) # 80006298 <_Z11printStringPKc>
    80004d44:	0400006f          	j	80004d84 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004d48:	00005517          	auipc	a0,0x5
    80004d4c:	6c850513          	addi	a0,a0,1736 # 8000a410 <CONSOLE_STATUS+0x400>
    80004d50:	00001097          	auipc	ra,0x1
    80004d54:	548080e7          	jalr	1352(ra) # 80006298 <_Z11printStringPKc>
    80004d58:	00000613          	li	a2,0
    80004d5c:	00a00593          	li	a1,10
    80004d60:	00048513          	mv	a0,s1
    80004d64:	00001097          	auipc	ra,0x1
    80004d68:	6cc080e7          	jalr	1740(ra) # 80006430 <_Z8printIntiii>
    80004d6c:	00005517          	auipc	a0,0x5
    80004d70:	38c50513          	addi	a0,a0,908 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80004d74:	00001097          	auipc	ra,0x1
    80004d78:	524080e7          	jalr	1316(ra) # 80006298 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004d7c:	0014849b          	addiw	s1,s1,1
    80004d80:	0ff4f493          	andi	s1,s1,255
    80004d84:	00500793          	li	a5,5
    80004d88:	fc97f0e3          	bgeu	a5,s1,80004d48 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004d8c:	00005517          	auipc	a0,0x5
    80004d90:	65c50513          	addi	a0,a0,1628 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    80004d94:	00001097          	auipc	ra,0x1
    80004d98:	504080e7          	jalr	1284(ra) # 80006298 <_Z11printStringPKc>
    finishedC = true;
    80004d9c:	00100793          	li	a5,1
    80004da0:	0000c717          	auipc	a4,0xc
    80004da4:	3cf70523          	sb	a5,970(a4) # 8001116a <finishedC>
    thread_dispatch();
    80004da8:	ffffc097          	auipc	ra,0xffffc
    80004dac:	58c080e7          	jalr	1420(ra) # 80001334 <thread_dispatch>
}
    80004db0:	01813083          	ld	ra,24(sp)
    80004db4:	01013403          	ld	s0,16(sp)
    80004db8:	00813483          	ld	s1,8(sp)
    80004dbc:	00013903          	ld	s2,0(sp)
    80004dc0:	02010113          	addi	sp,sp,32
    80004dc4:	00008067          	ret

0000000080004dc8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004dc8:	fe010113          	addi	sp,sp,-32
    80004dcc:	00113c23          	sd	ra,24(sp)
    80004dd0:	00813823          	sd	s0,16(sp)
    80004dd4:	00913423          	sd	s1,8(sp)
    80004dd8:	01213023          	sd	s2,0(sp)
    80004ddc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004de0:	00a00493          	li	s1,10
    80004de4:	0400006f          	j	80004e24 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004de8:	00005517          	auipc	a0,0x5
    80004dec:	65850513          	addi	a0,a0,1624 # 8000a440 <CONSOLE_STATUS+0x430>
    80004df0:	00001097          	auipc	ra,0x1
    80004df4:	4a8080e7          	jalr	1192(ra) # 80006298 <_Z11printStringPKc>
    80004df8:	00000613          	li	a2,0
    80004dfc:	00a00593          	li	a1,10
    80004e00:	00048513          	mv	a0,s1
    80004e04:	00001097          	auipc	ra,0x1
    80004e08:	62c080e7          	jalr	1580(ra) # 80006430 <_Z8printIntiii>
    80004e0c:	00005517          	auipc	a0,0x5
    80004e10:	2ec50513          	addi	a0,a0,748 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80004e14:	00001097          	auipc	ra,0x1
    80004e18:	484080e7          	jalr	1156(ra) # 80006298 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004e1c:	0014849b          	addiw	s1,s1,1
    80004e20:	0ff4f493          	andi	s1,s1,255
    80004e24:	00c00793          	li	a5,12
    80004e28:	fc97f0e3          	bgeu	a5,s1,80004de8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004e2c:	00005517          	auipc	a0,0x5
    80004e30:	61c50513          	addi	a0,a0,1564 # 8000a448 <CONSOLE_STATUS+0x438>
    80004e34:	00001097          	auipc	ra,0x1
    80004e38:	464080e7          	jalr	1124(ra) # 80006298 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004e3c:	00500313          	li	t1,5
    thread_dispatch();
    80004e40:	ffffc097          	auipc	ra,0xffffc
    80004e44:	4f4080e7          	jalr	1268(ra) # 80001334 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004e48:	01000513          	li	a0,16
    80004e4c:	00000097          	auipc	ra,0x0
    80004e50:	be8080e7          	jalr	-1048(ra) # 80004a34 <_Z9fibonaccim>
    80004e54:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004e58:	00005517          	auipc	a0,0x5
    80004e5c:	60050513          	addi	a0,a0,1536 # 8000a458 <CONSOLE_STATUS+0x448>
    80004e60:	00001097          	auipc	ra,0x1
    80004e64:	438080e7          	jalr	1080(ra) # 80006298 <_Z11printStringPKc>
    80004e68:	00000613          	li	a2,0
    80004e6c:	00a00593          	li	a1,10
    80004e70:	0009051b          	sext.w	a0,s2
    80004e74:	00001097          	auipc	ra,0x1
    80004e78:	5bc080e7          	jalr	1468(ra) # 80006430 <_Z8printIntiii>
    80004e7c:	00005517          	auipc	a0,0x5
    80004e80:	27c50513          	addi	a0,a0,636 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80004e84:	00001097          	auipc	ra,0x1
    80004e88:	414080e7          	jalr	1044(ra) # 80006298 <_Z11printStringPKc>
    80004e8c:	0400006f          	j	80004ecc <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004e90:	00005517          	auipc	a0,0x5
    80004e94:	5b050513          	addi	a0,a0,1456 # 8000a440 <CONSOLE_STATUS+0x430>
    80004e98:	00001097          	auipc	ra,0x1
    80004e9c:	400080e7          	jalr	1024(ra) # 80006298 <_Z11printStringPKc>
    80004ea0:	00000613          	li	a2,0
    80004ea4:	00a00593          	li	a1,10
    80004ea8:	00048513          	mv	a0,s1
    80004eac:	00001097          	auipc	ra,0x1
    80004eb0:	584080e7          	jalr	1412(ra) # 80006430 <_Z8printIntiii>
    80004eb4:	00005517          	auipc	a0,0x5
    80004eb8:	24450513          	addi	a0,a0,580 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80004ebc:	00001097          	auipc	ra,0x1
    80004ec0:	3dc080e7          	jalr	988(ra) # 80006298 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004ec4:	0014849b          	addiw	s1,s1,1
    80004ec8:	0ff4f493          	andi	s1,s1,255
    80004ecc:	00f00793          	li	a5,15
    80004ed0:	fc97f0e3          	bgeu	a5,s1,80004e90 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004ed4:	00005517          	auipc	a0,0x5
    80004ed8:	59450513          	addi	a0,a0,1428 # 8000a468 <CONSOLE_STATUS+0x458>
    80004edc:	00001097          	auipc	ra,0x1
    80004ee0:	3bc080e7          	jalr	956(ra) # 80006298 <_Z11printStringPKc>
    finishedD = true;
    80004ee4:	00100793          	li	a5,1
    80004ee8:	0000c717          	auipc	a4,0xc
    80004eec:	28f701a3          	sb	a5,643(a4) # 8001116b <finishedD>
    thread_dispatch();
    80004ef0:	ffffc097          	auipc	ra,0xffffc
    80004ef4:	444080e7          	jalr	1092(ra) # 80001334 <thread_dispatch>
}
    80004ef8:	01813083          	ld	ra,24(sp)
    80004efc:	01013403          	ld	s0,16(sp)
    80004f00:	00813483          	ld	s1,8(sp)
    80004f04:	00013903          	ld	s2,0(sp)
    80004f08:	02010113          	addi	sp,sp,32
    80004f0c:	00008067          	ret

0000000080004f10 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004f10:	fc010113          	addi	sp,sp,-64
    80004f14:	02113c23          	sd	ra,56(sp)
    80004f18:	02813823          	sd	s0,48(sp)
    80004f1c:	02913423          	sd	s1,40(sp)
    80004f20:	03213023          	sd	s2,32(sp)
    80004f24:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004f28:	01000513          	li	a0,16
    80004f2c:	ffffe097          	auipc	ra,0xffffe
    80004f30:	494080e7          	jalr	1172(ra) # 800033c0 <_Znwm>
    80004f34:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80004f38:	ffffe097          	auipc	ra,0xffffe
    80004f3c:	658080e7          	jalr	1624(ra) # 80003590 <_ZN6ThreadC1Ev>
    80004f40:	00008797          	auipc	a5,0x8
    80004f44:	ec078793          	addi	a5,a5,-320 # 8000ce00 <_ZTV7WorkerA+0x10>
    80004f48:	00f4b023          	sd	a5,0(s1)
    80004f4c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004f50:	00005517          	auipc	a0,0x5
    80004f54:	52850513          	addi	a0,a0,1320 # 8000a478 <CONSOLE_STATUS+0x468>
    80004f58:	00001097          	auipc	ra,0x1
    80004f5c:	340080e7          	jalr	832(ra) # 80006298 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004f60:	01000513          	li	a0,16
    80004f64:	ffffe097          	auipc	ra,0xffffe
    80004f68:	45c080e7          	jalr	1116(ra) # 800033c0 <_Znwm>
    80004f6c:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    80004f70:	ffffe097          	auipc	ra,0xffffe
    80004f74:	620080e7          	jalr	1568(ra) # 80003590 <_ZN6ThreadC1Ev>
    80004f78:	00008797          	auipc	a5,0x8
    80004f7c:	eb078793          	addi	a5,a5,-336 # 8000ce28 <_ZTV7WorkerB+0x10>
    80004f80:	00f4b023          	sd	a5,0(s1)
    80004f84:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004f88:	00005517          	auipc	a0,0x5
    80004f8c:	50850513          	addi	a0,a0,1288 # 8000a490 <CONSOLE_STATUS+0x480>
    80004f90:	00001097          	auipc	ra,0x1
    80004f94:	308080e7          	jalr	776(ra) # 80006298 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004f98:	01000513          	li	a0,16
    80004f9c:	ffffe097          	auipc	ra,0xffffe
    80004fa0:	424080e7          	jalr	1060(ra) # 800033c0 <_Znwm>
    80004fa4:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    80004fa8:	ffffe097          	auipc	ra,0xffffe
    80004fac:	5e8080e7          	jalr	1512(ra) # 80003590 <_ZN6ThreadC1Ev>
    80004fb0:	00008797          	auipc	a5,0x8
    80004fb4:	ea078793          	addi	a5,a5,-352 # 8000ce50 <_ZTV7WorkerC+0x10>
    80004fb8:	00f4b023          	sd	a5,0(s1)
    80004fbc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004fc0:	00005517          	auipc	a0,0x5
    80004fc4:	4e850513          	addi	a0,a0,1256 # 8000a4a8 <CONSOLE_STATUS+0x498>
    80004fc8:	00001097          	auipc	ra,0x1
    80004fcc:	2d0080e7          	jalr	720(ra) # 80006298 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004fd0:	01000513          	li	a0,16
    80004fd4:	ffffe097          	auipc	ra,0xffffe
    80004fd8:	3ec080e7          	jalr	1004(ra) # 800033c0 <_Znwm>
    80004fdc:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80004fe0:	ffffe097          	auipc	ra,0xffffe
    80004fe4:	5b0080e7          	jalr	1456(ra) # 80003590 <_ZN6ThreadC1Ev>
    80004fe8:	00008797          	auipc	a5,0x8
    80004fec:	e9078793          	addi	a5,a5,-368 # 8000ce78 <_ZTV7WorkerD+0x10>
    80004ff0:	00f4b023          	sd	a5,0(s1)
    80004ff4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004ff8:	00005517          	auipc	a0,0x5
    80004ffc:	4c850513          	addi	a0,a0,1224 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80005000:	00001097          	auipc	ra,0x1
    80005004:	298080e7          	jalr	664(ra) # 80006298 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80005008:	00000493          	li	s1,0
    8000500c:	00300793          	li	a5,3
    80005010:	0297c663          	blt	a5,s1,8000503c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80005014:	00349793          	slli	a5,s1,0x3
    80005018:	fe040713          	addi	a4,s0,-32
    8000501c:	00f707b3          	add	a5,a4,a5
    80005020:	fe07b503          	ld	a0,-32(a5)
    80005024:	ffffe097          	auipc	ra,0xffffe
    80005028:	46c080e7          	jalr	1132(ra) # 80003490 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000502c:	0014849b          	addiw	s1,s1,1
    80005030:	fddff06f          	j	8000500c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80005034:	ffffe097          	auipc	ra,0xffffe
    80005038:	494080e7          	jalr	1172(ra) # 800034c8 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000503c:	0000c797          	auipc	a5,0xc
    80005040:	12c7c783          	lbu	a5,300(a5) # 80011168 <finishedA>
    80005044:	fe0788e3          	beqz	a5,80005034 <_Z20Threads_CPP_API_testv+0x124>
    80005048:	0000c797          	auipc	a5,0xc
    8000504c:	1217c783          	lbu	a5,289(a5) # 80011169 <finishedB>
    80005050:	fe0782e3          	beqz	a5,80005034 <_Z20Threads_CPP_API_testv+0x124>
    80005054:	0000c797          	auipc	a5,0xc
    80005058:	1167c783          	lbu	a5,278(a5) # 8001116a <finishedC>
    8000505c:	fc078ce3          	beqz	a5,80005034 <_Z20Threads_CPP_API_testv+0x124>
    80005060:	0000c797          	auipc	a5,0xc
    80005064:	10b7c783          	lbu	a5,267(a5) # 8001116b <finishedD>
    80005068:	fc0786e3          	beqz	a5,80005034 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    8000506c:	fc040493          	addi	s1,s0,-64
    80005070:	0080006f          	j	80005078 <_Z20Threads_CPP_API_testv+0x168>
    80005074:	00848493          	addi	s1,s1,8
    80005078:	fe040793          	addi	a5,s0,-32
    8000507c:	08f48663          	beq	s1,a5,80005108 <_Z20Threads_CPP_API_testv+0x1f8>
    80005080:	0004b503          	ld	a0,0(s1)
    80005084:	fe0508e3          	beqz	a0,80005074 <_Z20Threads_CPP_API_testv+0x164>
    80005088:	00053783          	ld	a5,0(a0)
    8000508c:	0087b783          	ld	a5,8(a5)
    80005090:	000780e7          	jalr	a5
    80005094:	fe1ff06f          	j	80005074 <_Z20Threads_CPP_API_testv+0x164>
    80005098:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000509c:	00048513          	mv	a0,s1
    800050a0:	ffffe097          	auipc	ra,0xffffe
    800050a4:	348080e7          	jalr	840(ra) # 800033e8 <_ZdlPv>
    800050a8:	00090513          	mv	a0,s2
    800050ac:	0000d097          	auipc	ra,0xd
    800050b0:	1ac080e7          	jalr	428(ra) # 80012258 <_Unwind_Resume>
    800050b4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800050b8:	00048513          	mv	a0,s1
    800050bc:	ffffe097          	auipc	ra,0xffffe
    800050c0:	32c080e7          	jalr	812(ra) # 800033e8 <_ZdlPv>
    800050c4:	00090513          	mv	a0,s2
    800050c8:	0000d097          	auipc	ra,0xd
    800050cc:	190080e7          	jalr	400(ra) # 80012258 <_Unwind_Resume>
    800050d0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800050d4:	00048513          	mv	a0,s1
    800050d8:	ffffe097          	auipc	ra,0xffffe
    800050dc:	310080e7          	jalr	784(ra) # 800033e8 <_ZdlPv>
    800050e0:	00090513          	mv	a0,s2
    800050e4:	0000d097          	auipc	ra,0xd
    800050e8:	174080e7          	jalr	372(ra) # 80012258 <_Unwind_Resume>
    800050ec:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800050f0:	00048513          	mv	a0,s1
    800050f4:	ffffe097          	auipc	ra,0xffffe
    800050f8:	2f4080e7          	jalr	756(ra) # 800033e8 <_ZdlPv>
    800050fc:	00090513          	mv	a0,s2
    80005100:	0000d097          	auipc	ra,0xd
    80005104:	158080e7          	jalr	344(ra) # 80012258 <_Unwind_Resume>
    80005108:	03813083          	ld	ra,56(sp)
    8000510c:	03013403          	ld	s0,48(sp)
    80005110:	02813483          	ld	s1,40(sp)
    80005114:	02013903          	ld	s2,32(sp)
    80005118:	04010113          	addi	sp,sp,64
    8000511c:	00008067          	ret

0000000080005120 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80005120:	ff010113          	addi	sp,sp,-16
    80005124:	00113423          	sd	ra,8(sp)
    80005128:	00813023          	sd	s0,0(sp)
    8000512c:	01010413          	addi	s0,sp,16
    80005130:	00008797          	auipc	a5,0x8
    80005134:	cd078793          	addi	a5,a5,-816 # 8000ce00 <_ZTV7WorkerA+0x10>
    80005138:	00f53023          	sd	a5,0(a0)
    8000513c:	ffffe097          	auipc	ra,0xffffe
    80005140:	214080e7          	jalr	532(ra) # 80003350 <_ZN6ThreadD1Ev>
    80005144:	00813083          	ld	ra,8(sp)
    80005148:	00013403          	ld	s0,0(sp)
    8000514c:	01010113          	addi	sp,sp,16
    80005150:	00008067          	ret

0000000080005154 <_ZN7WorkerAD0Ev>:
    80005154:	fe010113          	addi	sp,sp,-32
    80005158:	00113c23          	sd	ra,24(sp)
    8000515c:	00813823          	sd	s0,16(sp)
    80005160:	00913423          	sd	s1,8(sp)
    80005164:	02010413          	addi	s0,sp,32
    80005168:	00050493          	mv	s1,a0
    8000516c:	00008797          	auipc	a5,0x8
    80005170:	c9478793          	addi	a5,a5,-876 # 8000ce00 <_ZTV7WorkerA+0x10>
    80005174:	00f53023          	sd	a5,0(a0)
    80005178:	ffffe097          	auipc	ra,0xffffe
    8000517c:	1d8080e7          	jalr	472(ra) # 80003350 <_ZN6ThreadD1Ev>
    80005180:	00048513          	mv	a0,s1
    80005184:	ffffe097          	auipc	ra,0xffffe
    80005188:	264080e7          	jalr	612(ra) # 800033e8 <_ZdlPv>
    8000518c:	01813083          	ld	ra,24(sp)
    80005190:	01013403          	ld	s0,16(sp)
    80005194:	00813483          	ld	s1,8(sp)
    80005198:	02010113          	addi	sp,sp,32
    8000519c:	00008067          	ret

00000000800051a0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800051a0:	ff010113          	addi	sp,sp,-16
    800051a4:	00113423          	sd	ra,8(sp)
    800051a8:	00813023          	sd	s0,0(sp)
    800051ac:	01010413          	addi	s0,sp,16
    800051b0:	00008797          	auipc	a5,0x8
    800051b4:	c7878793          	addi	a5,a5,-904 # 8000ce28 <_ZTV7WorkerB+0x10>
    800051b8:	00f53023          	sd	a5,0(a0)
    800051bc:	ffffe097          	auipc	ra,0xffffe
    800051c0:	194080e7          	jalr	404(ra) # 80003350 <_ZN6ThreadD1Ev>
    800051c4:	00813083          	ld	ra,8(sp)
    800051c8:	00013403          	ld	s0,0(sp)
    800051cc:	01010113          	addi	sp,sp,16
    800051d0:	00008067          	ret

00000000800051d4 <_ZN7WorkerBD0Ev>:
    800051d4:	fe010113          	addi	sp,sp,-32
    800051d8:	00113c23          	sd	ra,24(sp)
    800051dc:	00813823          	sd	s0,16(sp)
    800051e0:	00913423          	sd	s1,8(sp)
    800051e4:	02010413          	addi	s0,sp,32
    800051e8:	00050493          	mv	s1,a0
    800051ec:	00008797          	auipc	a5,0x8
    800051f0:	c3c78793          	addi	a5,a5,-964 # 8000ce28 <_ZTV7WorkerB+0x10>
    800051f4:	00f53023          	sd	a5,0(a0)
    800051f8:	ffffe097          	auipc	ra,0xffffe
    800051fc:	158080e7          	jalr	344(ra) # 80003350 <_ZN6ThreadD1Ev>
    80005200:	00048513          	mv	a0,s1
    80005204:	ffffe097          	auipc	ra,0xffffe
    80005208:	1e4080e7          	jalr	484(ra) # 800033e8 <_ZdlPv>
    8000520c:	01813083          	ld	ra,24(sp)
    80005210:	01013403          	ld	s0,16(sp)
    80005214:	00813483          	ld	s1,8(sp)
    80005218:	02010113          	addi	sp,sp,32
    8000521c:	00008067          	ret

0000000080005220 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80005220:	ff010113          	addi	sp,sp,-16
    80005224:	00113423          	sd	ra,8(sp)
    80005228:	00813023          	sd	s0,0(sp)
    8000522c:	01010413          	addi	s0,sp,16
    80005230:	00008797          	auipc	a5,0x8
    80005234:	c2078793          	addi	a5,a5,-992 # 8000ce50 <_ZTV7WorkerC+0x10>
    80005238:	00f53023          	sd	a5,0(a0)
    8000523c:	ffffe097          	auipc	ra,0xffffe
    80005240:	114080e7          	jalr	276(ra) # 80003350 <_ZN6ThreadD1Ev>
    80005244:	00813083          	ld	ra,8(sp)
    80005248:	00013403          	ld	s0,0(sp)
    8000524c:	01010113          	addi	sp,sp,16
    80005250:	00008067          	ret

0000000080005254 <_ZN7WorkerCD0Ev>:
    80005254:	fe010113          	addi	sp,sp,-32
    80005258:	00113c23          	sd	ra,24(sp)
    8000525c:	00813823          	sd	s0,16(sp)
    80005260:	00913423          	sd	s1,8(sp)
    80005264:	02010413          	addi	s0,sp,32
    80005268:	00050493          	mv	s1,a0
    8000526c:	00008797          	auipc	a5,0x8
    80005270:	be478793          	addi	a5,a5,-1052 # 8000ce50 <_ZTV7WorkerC+0x10>
    80005274:	00f53023          	sd	a5,0(a0)
    80005278:	ffffe097          	auipc	ra,0xffffe
    8000527c:	0d8080e7          	jalr	216(ra) # 80003350 <_ZN6ThreadD1Ev>
    80005280:	00048513          	mv	a0,s1
    80005284:	ffffe097          	auipc	ra,0xffffe
    80005288:	164080e7          	jalr	356(ra) # 800033e8 <_ZdlPv>
    8000528c:	01813083          	ld	ra,24(sp)
    80005290:	01013403          	ld	s0,16(sp)
    80005294:	00813483          	ld	s1,8(sp)
    80005298:	02010113          	addi	sp,sp,32
    8000529c:	00008067          	ret

00000000800052a0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800052a0:	ff010113          	addi	sp,sp,-16
    800052a4:	00113423          	sd	ra,8(sp)
    800052a8:	00813023          	sd	s0,0(sp)
    800052ac:	01010413          	addi	s0,sp,16
    800052b0:	00008797          	auipc	a5,0x8
    800052b4:	bc878793          	addi	a5,a5,-1080 # 8000ce78 <_ZTV7WorkerD+0x10>
    800052b8:	00f53023          	sd	a5,0(a0)
    800052bc:	ffffe097          	auipc	ra,0xffffe
    800052c0:	094080e7          	jalr	148(ra) # 80003350 <_ZN6ThreadD1Ev>
    800052c4:	00813083          	ld	ra,8(sp)
    800052c8:	00013403          	ld	s0,0(sp)
    800052cc:	01010113          	addi	sp,sp,16
    800052d0:	00008067          	ret

00000000800052d4 <_ZN7WorkerDD0Ev>:
    800052d4:	fe010113          	addi	sp,sp,-32
    800052d8:	00113c23          	sd	ra,24(sp)
    800052dc:	00813823          	sd	s0,16(sp)
    800052e0:	00913423          	sd	s1,8(sp)
    800052e4:	02010413          	addi	s0,sp,32
    800052e8:	00050493          	mv	s1,a0
    800052ec:	00008797          	auipc	a5,0x8
    800052f0:	b8c78793          	addi	a5,a5,-1140 # 8000ce78 <_ZTV7WorkerD+0x10>
    800052f4:	00f53023          	sd	a5,0(a0)
    800052f8:	ffffe097          	auipc	ra,0xffffe
    800052fc:	058080e7          	jalr	88(ra) # 80003350 <_ZN6ThreadD1Ev>
    80005300:	00048513          	mv	a0,s1
    80005304:	ffffe097          	auipc	ra,0xffffe
    80005308:	0e4080e7          	jalr	228(ra) # 800033e8 <_ZdlPv>
    8000530c:	01813083          	ld	ra,24(sp)
    80005310:	01013403          	ld	s0,16(sp)
    80005314:	00813483          	ld	s1,8(sp)
    80005318:	02010113          	addi	sp,sp,32
    8000531c:	00008067          	ret

0000000080005320 <_ZN7WorkerA3runEv>:
    void run() override {
    80005320:	ff010113          	addi	sp,sp,-16
    80005324:	00113423          	sd	ra,8(sp)
    80005328:	00813023          	sd	s0,0(sp)
    8000532c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80005330:	00000593          	li	a1,0
    80005334:	fffff097          	auipc	ra,0xfffff
    80005338:	774080e7          	jalr	1908(ra) # 80004aa8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000533c:	00813083          	ld	ra,8(sp)
    80005340:	00013403          	ld	s0,0(sp)
    80005344:	01010113          	addi	sp,sp,16
    80005348:	00008067          	ret

000000008000534c <_ZN7WorkerB3runEv>:
    void run() override {
    8000534c:	ff010113          	addi	sp,sp,-16
    80005350:	00113423          	sd	ra,8(sp)
    80005354:	00813023          	sd	s0,0(sp)
    80005358:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000535c:	00000593          	li	a1,0
    80005360:	00000097          	auipc	ra,0x0
    80005364:	814080e7          	jalr	-2028(ra) # 80004b74 <_ZN7WorkerB11workerBodyBEPv>
    }
    80005368:	00813083          	ld	ra,8(sp)
    8000536c:	00013403          	ld	s0,0(sp)
    80005370:	01010113          	addi	sp,sp,16
    80005374:	00008067          	ret

0000000080005378 <_ZN7WorkerC3runEv>:
    void run() override {
    80005378:	ff010113          	addi	sp,sp,-16
    8000537c:	00113423          	sd	ra,8(sp)
    80005380:	00813023          	sd	s0,0(sp)
    80005384:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80005388:	00000593          	li	a1,0
    8000538c:	00000097          	auipc	ra,0x0
    80005390:	8bc080e7          	jalr	-1860(ra) # 80004c48 <_ZN7WorkerC11workerBodyCEPv>
    }
    80005394:	00813083          	ld	ra,8(sp)
    80005398:	00013403          	ld	s0,0(sp)
    8000539c:	01010113          	addi	sp,sp,16
    800053a0:	00008067          	ret

00000000800053a4 <_ZN7WorkerD3runEv>:

    void run() override {
    800053a4:	ff010113          	addi	sp,sp,-16
    800053a8:	00113423          	sd	ra,8(sp)
    800053ac:	00813023          	sd	s0,0(sp)
    800053b0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800053b4:	00000593          	li	a1,0
    800053b8:	00000097          	auipc	ra,0x0
    800053bc:	a10080e7          	jalr	-1520(ra) # 80004dc8 <_ZN7WorkerD11workerBodyDEPv>
    }
    800053c0:	00813083          	ld	ra,8(sp)
    800053c4:	00013403          	ld	s0,0(sp)
    800053c8:	01010113          	addi	sp,sp,16
    800053cc:	00008067          	ret

00000000800053d0 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    800053d0:	fe010113          	addi	sp,sp,-32
    800053d4:	00113c23          	sd	ra,24(sp)
    800053d8:	00813823          	sd	s0,16(sp)
    800053dc:	00913423          	sd	s1,8(sp)
    800053e0:	01213023          	sd	s2,0(sp)
    800053e4:	02010413          	addi	s0,sp,32
    //__asm__ volatile("csrr a0, sstatus");
    for (uint64 i = 0; i < 10; i++) {
    800053e8:	00000913          	li	s2,0
    800053ec:	0380006f          	j	80005424 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800053f0:	ffffc097          	auipc	ra,0xffffc
    800053f4:	f44080e7          	jalr	-188(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800053f8:	00148493          	addi	s1,s1,1
    800053fc:	000027b7          	lui	a5,0x2
    80005400:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005404:	0097ee63          	bltu	a5,s1,80005420 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005408:	00000713          	li	a4,0
    8000540c:	000077b7          	lui	a5,0x7
    80005410:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005414:	fce7eee3          	bltu	a5,a4,800053f0 <_Z11workerBodyAPv+0x20>
    80005418:	00170713          	addi	a4,a4,1
    8000541c:	ff1ff06f          	j	8000540c <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005420:	00190913          	addi	s2,s2,1
    80005424:	00900793          	li	a5,9
    80005428:	0527e063          	bltu	a5,s2,80005468 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000542c:	00005517          	auipc	a0,0x5
    80005430:	fb450513          	addi	a0,a0,-76 # 8000a3e0 <CONSOLE_STATUS+0x3d0>
    80005434:	00001097          	auipc	ra,0x1
    80005438:	e64080e7          	jalr	-412(ra) # 80006298 <_Z11printStringPKc>
    8000543c:	00000613          	li	a2,0
    80005440:	00a00593          	li	a1,10
    80005444:	0009051b          	sext.w	a0,s2
    80005448:	00001097          	auipc	ra,0x1
    8000544c:	fe8080e7          	jalr	-24(ra) # 80006430 <_Z8printIntiii>
    80005450:	00005517          	auipc	a0,0x5
    80005454:	ca850513          	addi	a0,a0,-856 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80005458:	00001097          	auipc	ra,0x1
    8000545c:	e40080e7          	jalr	-448(ra) # 80006298 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005460:	00000493          	li	s1,0
    80005464:	f99ff06f          	j	800053fc <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80005468:	00005517          	auipc	a0,0x5
    8000546c:	f8050513          	addi	a0,a0,-128 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    80005470:	00001097          	auipc	ra,0x1
    80005474:	e28080e7          	jalr	-472(ra) # 80006298 <_Z11printStringPKc>
    finishedA = true;
    80005478:	00100793          	li	a5,1
    8000547c:	0000c717          	auipc	a4,0xc
    80005480:	cef70823          	sb	a5,-784(a4) # 8001116c <_ZL9finishedA>
}
    80005484:	01813083          	ld	ra,24(sp)
    80005488:	01013403          	ld	s0,16(sp)
    8000548c:	00813483          	ld	s1,8(sp)
    80005490:	00013903          	ld	s2,0(sp)
    80005494:	02010113          	addi	sp,sp,32
    80005498:	00008067          	ret

000000008000549c <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    8000549c:	fe010113          	addi	sp,sp,-32
    800054a0:	00113c23          	sd	ra,24(sp)
    800054a4:	00813823          	sd	s0,16(sp)
    800054a8:	00913423          	sd	s1,8(sp)
    800054ac:	01213023          	sd	s2,0(sp)
    800054b0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800054b4:	00000913          	li	s2,0
    800054b8:	0380006f          	j	800054f0 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800054bc:	ffffc097          	auipc	ra,0xffffc
    800054c0:	e78080e7          	jalr	-392(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800054c4:	00148493          	addi	s1,s1,1
    800054c8:	000027b7          	lui	a5,0x2
    800054cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800054d0:	0097ee63          	bltu	a5,s1,800054ec <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800054d4:	00000713          	li	a4,0
    800054d8:	000077b7          	lui	a5,0x7
    800054dc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800054e0:	fce7eee3          	bltu	a5,a4,800054bc <_Z11workerBodyBPv+0x20>
    800054e4:	00170713          	addi	a4,a4,1
    800054e8:	ff1ff06f          	j	800054d8 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800054ec:	00190913          	addi	s2,s2,1
    800054f0:	00f00793          	li	a5,15
    800054f4:	0527e063          	bltu	a5,s2,80005534 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800054f8:	00005517          	auipc	a0,0x5
    800054fc:	f0050513          	addi	a0,a0,-256 # 8000a3f8 <CONSOLE_STATUS+0x3e8>
    80005500:	00001097          	auipc	ra,0x1
    80005504:	d98080e7          	jalr	-616(ra) # 80006298 <_Z11printStringPKc>
    80005508:	00000613          	li	a2,0
    8000550c:	00a00593          	li	a1,10
    80005510:	0009051b          	sext.w	a0,s2
    80005514:	00001097          	auipc	ra,0x1
    80005518:	f1c080e7          	jalr	-228(ra) # 80006430 <_Z8printIntiii>
    8000551c:	00005517          	auipc	a0,0x5
    80005520:	bdc50513          	addi	a0,a0,-1060 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80005524:	00001097          	auipc	ra,0x1
    80005528:	d74080e7          	jalr	-652(ra) # 80006298 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000552c:	00000493          	li	s1,0
    80005530:	f99ff06f          	j	800054c8 <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    80005534:	ffffc097          	auipc	ra,0xffffc
    80005538:	e00080e7          	jalr	-512(ra) # 80001334 <thread_dispatch>
    printString("B finished!\n");
    8000553c:	00005517          	auipc	a0,0x5
    80005540:	ec450513          	addi	a0,a0,-316 # 8000a400 <CONSOLE_STATUS+0x3f0>
    80005544:	00001097          	auipc	ra,0x1
    80005548:	d54080e7          	jalr	-684(ra) # 80006298 <_Z11printStringPKc>
    finishedB = true;
    8000554c:	00100793          	li	a5,1
    80005550:	0000c717          	auipc	a4,0xc
    80005554:	c0f70ea3          	sb	a5,-995(a4) # 8001116d <_ZL9finishedB>
}
    80005558:	01813083          	ld	ra,24(sp)
    8000555c:	01013403          	ld	s0,16(sp)
    80005560:	00813483          	ld	s1,8(sp)
    80005564:	00013903          	ld	s2,0(sp)
    80005568:	02010113          	addi	sp,sp,32
    8000556c:	00008067          	ret

0000000080005570 <_ZL9fibonaccim>:
static uint64 fibonacci(uint64 n) {
    80005570:	fe010113          	addi	sp,sp,-32
    80005574:	00113c23          	sd	ra,24(sp)
    80005578:	00813823          	sd	s0,16(sp)
    8000557c:	00913423          	sd	s1,8(sp)
    80005580:	01213023          	sd	s2,0(sp)
    80005584:	02010413          	addi	s0,sp,32
    80005588:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000558c:	00100793          	li	a5,1
    80005590:	02a7f863          	bgeu	a5,a0,800055c0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005594:	00a00793          	li	a5,10
    80005598:	02f577b3          	remu	a5,a0,a5
    8000559c:	02078e63          	beqz	a5,800055d8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800055a0:	fff48513          	addi	a0,s1,-1
    800055a4:	00000097          	auipc	ra,0x0
    800055a8:	fcc080e7          	jalr	-52(ra) # 80005570 <_ZL9fibonaccim>
    800055ac:	00050913          	mv	s2,a0
    800055b0:	ffe48513          	addi	a0,s1,-2
    800055b4:	00000097          	auipc	ra,0x0
    800055b8:	fbc080e7          	jalr	-68(ra) # 80005570 <_ZL9fibonaccim>
    800055bc:	00a90533          	add	a0,s2,a0
}
    800055c0:	01813083          	ld	ra,24(sp)
    800055c4:	01013403          	ld	s0,16(sp)
    800055c8:	00813483          	ld	s1,8(sp)
    800055cc:	00013903          	ld	s2,0(sp)
    800055d0:	02010113          	addi	sp,sp,32
    800055d4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800055d8:	ffffc097          	auipc	ra,0xffffc
    800055dc:	d5c080e7          	jalr	-676(ra) # 80001334 <thread_dispatch>
    800055e0:	fc1ff06f          	j	800055a0 <_ZL9fibonaccim+0x30>

00000000800055e4 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    800055e4:	fe010113          	addi	sp,sp,-32
    800055e8:	00113c23          	sd	ra,24(sp)
    800055ec:	00813823          	sd	s0,16(sp)
    800055f0:	00913423          	sd	s1,8(sp)
    800055f4:	01213023          	sd	s2,0(sp)
    800055f8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800055fc:	00000493          	li	s1,0
    80005600:	0400006f          	j	80005640 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005604:	00005517          	auipc	a0,0x5
    80005608:	e0c50513          	addi	a0,a0,-500 # 8000a410 <CONSOLE_STATUS+0x400>
    8000560c:	00001097          	auipc	ra,0x1
    80005610:	c8c080e7          	jalr	-884(ra) # 80006298 <_Z11printStringPKc>
    80005614:	00000613          	li	a2,0
    80005618:	00a00593          	li	a1,10
    8000561c:	00048513          	mv	a0,s1
    80005620:	00001097          	auipc	ra,0x1
    80005624:	e10080e7          	jalr	-496(ra) # 80006430 <_Z8printIntiii>
    80005628:	00005517          	auipc	a0,0x5
    8000562c:	ad050513          	addi	a0,a0,-1328 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80005630:	00001097          	auipc	ra,0x1
    80005634:	c68080e7          	jalr	-920(ra) # 80006298 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005638:	0014849b          	addiw	s1,s1,1
    8000563c:	0ff4f493          	andi	s1,s1,255
    80005640:	00200793          	li	a5,2
    80005644:	fc97f0e3          	bgeu	a5,s1,80005604 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005648:	00005517          	auipc	a0,0x5
    8000564c:	dd050513          	addi	a0,a0,-560 # 8000a418 <CONSOLE_STATUS+0x408>
    80005650:	00001097          	auipc	ra,0x1
    80005654:	c48080e7          	jalr	-952(ra) # 80006298 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005658:	00700313          	li	t1,7
    thread_dispatch();
    8000565c:	ffffc097          	auipc	ra,0xffffc
    80005660:	cd8080e7          	jalr	-808(ra) # 80001334 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005664:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005668:	00005517          	auipc	a0,0x5
    8000566c:	dc050513          	addi	a0,a0,-576 # 8000a428 <CONSOLE_STATUS+0x418>
    80005670:	00001097          	auipc	ra,0x1
    80005674:	c28080e7          	jalr	-984(ra) # 80006298 <_Z11printStringPKc>
    80005678:	00000613          	li	a2,0
    8000567c:	00a00593          	li	a1,10
    80005680:	0009051b          	sext.w	a0,s2
    80005684:	00001097          	auipc	ra,0x1
    80005688:	dac080e7          	jalr	-596(ra) # 80006430 <_Z8printIntiii>
    8000568c:	00005517          	auipc	a0,0x5
    80005690:	a6c50513          	addi	a0,a0,-1428 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80005694:	00001097          	auipc	ra,0x1
    80005698:	c04080e7          	jalr	-1020(ra) # 80006298 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000569c:	00c00513          	li	a0,12
    800056a0:	00000097          	auipc	ra,0x0
    800056a4:	ed0080e7          	jalr	-304(ra) # 80005570 <_ZL9fibonaccim>
    800056a8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800056ac:	00005517          	auipc	a0,0x5
    800056b0:	d8450513          	addi	a0,a0,-636 # 8000a430 <CONSOLE_STATUS+0x420>
    800056b4:	00001097          	auipc	ra,0x1
    800056b8:	be4080e7          	jalr	-1052(ra) # 80006298 <_Z11printStringPKc>
    800056bc:	00000613          	li	a2,0
    800056c0:	00a00593          	li	a1,10
    800056c4:	0009051b          	sext.w	a0,s2
    800056c8:	00001097          	auipc	ra,0x1
    800056cc:	d68080e7          	jalr	-664(ra) # 80006430 <_Z8printIntiii>
    800056d0:	00005517          	auipc	a0,0x5
    800056d4:	a2850513          	addi	a0,a0,-1496 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    800056d8:	00001097          	auipc	ra,0x1
    800056dc:	bc0080e7          	jalr	-1088(ra) # 80006298 <_Z11printStringPKc>
    800056e0:	0400006f          	j	80005720 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800056e4:	00005517          	auipc	a0,0x5
    800056e8:	d2c50513          	addi	a0,a0,-724 # 8000a410 <CONSOLE_STATUS+0x400>
    800056ec:	00001097          	auipc	ra,0x1
    800056f0:	bac080e7          	jalr	-1108(ra) # 80006298 <_Z11printStringPKc>
    800056f4:	00000613          	li	a2,0
    800056f8:	00a00593          	li	a1,10
    800056fc:	00048513          	mv	a0,s1
    80005700:	00001097          	auipc	ra,0x1
    80005704:	d30080e7          	jalr	-720(ra) # 80006430 <_Z8printIntiii>
    80005708:	00005517          	auipc	a0,0x5
    8000570c:	9f050513          	addi	a0,a0,-1552 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80005710:	00001097          	auipc	ra,0x1
    80005714:	b88080e7          	jalr	-1144(ra) # 80006298 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005718:	0014849b          	addiw	s1,s1,1
    8000571c:	0ff4f493          	andi	s1,s1,255
    80005720:	00500793          	li	a5,5
    80005724:	fc97f0e3          	bgeu	a5,s1,800056e4 <_Z11workerBodyCPv+0x100>
    }

    thread_dispatch();
    80005728:	ffffc097          	auipc	ra,0xffffc
    8000572c:	c0c080e7          	jalr	-1012(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    80005730:	00005517          	auipc	a0,0x5
    80005734:	da850513          	addi	a0,a0,-600 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80005738:	00001097          	auipc	ra,0x1
    8000573c:	b60080e7          	jalr	-1184(ra) # 80006298 <_Z11printStringPKc>
    finishedC = true;
    80005740:	00100793          	li	a5,1
    80005744:	0000c717          	auipc	a4,0xc
    80005748:	a2f70523          	sb	a5,-1494(a4) # 8001116e <_ZL9finishedC>
}
    8000574c:	01813083          	ld	ra,24(sp)
    80005750:	01013403          	ld	s0,16(sp)
    80005754:	00813483          	ld	s1,8(sp)
    80005758:	00013903          	ld	s2,0(sp)
    8000575c:	02010113          	addi	sp,sp,32
    80005760:	00008067          	ret

0000000080005764 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80005764:	fe010113          	addi	sp,sp,-32
    80005768:	00113c23          	sd	ra,24(sp)
    8000576c:	00813823          	sd	s0,16(sp)
    80005770:	00913423          	sd	s1,8(sp)
    80005774:	01213023          	sd	s2,0(sp)
    80005778:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000577c:	00a00493          	li	s1,10
    80005780:	0400006f          	j	800057c0 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005784:	00005517          	auipc	a0,0x5
    80005788:	cbc50513          	addi	a0,a0,-836 # 8000a440 <CONSOLE_STATUS+0x430>
    8000578c:	00001097          	auipc	ra,0x1
    80005790:	b0c080e7          	jalr	-1268(ra) # 80006298 <_Z11printStringPKc>
    80005794:	00000613          	li	a2,0
    80005798:	00a00593          	li	a1,10
    8000579c:	00048513          	mv	a0,s1
    800057a0:	00001097          	auipc	ra,0x1
    800057a4:	c90080e7          	jalr	-880(ra) # 80006430 <_Z8printIntiii>
    800057a8:	00005517          	auipc	a0,0x5
    800057ac:	95050513          	addi	a0,a0,-1712 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    800057b0:	00001097          	auipc	ra,0x1
    800057b4:	ae8080e7          	jalr	-1304(ra) # 80006298 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800057b8:	0014849b          	addiw	s1,s1,1
    800057bc:	0ff4f493          	andi	s1,s1,255
    800057c0:	00c00793          	li	a5,12
    800057c4:	fc97f0e3          	bgeu	a5,s1,80005784 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800057c8:	00005517          	auipc	a0,0x5
    800057cc:	c8050513          	addi	a0,a0,-896 # 8000a448 <CONSOLE_STATUS+0x438>
    800057d0:	00001097          	auipc	ra,0x1
    800057d4:	ac8080e7          	jalr	-1336(ra) # 80006298 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800057d8:	00500313          	li	t1,5
    thread_dispatch();
    800057dc:	ffffc097          	auipc	ra,0xffffc
    800057e0:	b58080e7          	jalr	-1192(ra) # 80001334 <thread_dispatch>

    uint64 result = fibonacci(16);
    800057e4:	01000513          	li	a0,16
    800057e8:	00000097          	auipc	ra,0x0
    800057ec:	d88080e7          	jalr	-632(ra) # 80005570 <_ZL9fibonaccim>
    800057f0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800057f4:	00005517          	auipc	a0,0x5
    800057f8:	c6450513          	addi	a0,a0,-924 # 8000a458 <CONSOLE_STATUS+0x448>
    800057fc:	00001097          	auipc	ra,0x1
    80005800:	a9c080e7          	jalr	-1380(ra) # 80006298 <_Z11printStringPKc>
    80005804:	00000613          	li	a2,0
    80005808:	00a00593          	li	a1,10
    8000580c:	0009051b          	sext.w	a0,s2
    80005810:	00001097          	auipc	ra,0x1
    80005814:	c20080e7          	jalr	-992(ra) # 80006430 <_Z8printIntiii>
    80005818:	00005517          	auipc	a0,0x5
    8000581c:	8e050513          	addi	a0,a0,-1824 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80005820:	00001097          	auipc	ra,0x1
    80005824:	a78080e7          	jalr	-1416(ra) # 80006298 <_Z11printStringPKc>
    80005828:	0400006f          	j	80005868 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000582c:	00005517          	auipc	a0,0x5
    80005830:	c1450513          	addi	a0,a0,-1004 # 8000a440 <CONSOLE_STATUS+0x430>
    80005834:	00001097          	auipc	ra,0x1
    80005838:	a64080e7          	jalr	-1436(ra) # 80006298 <_Z11printStringPKc>
    8000583c:	00000613          	li	a2,0
    80005840:	00a00593          	li	a1,10
    80005844:	00048513          	mv	a0,s1
    80005848:	00001097          	auipc	ra,0x1
    8000584c:	be8080e7          	jalr	-1048(ra) # 80006430 <_Z8printIntiii>
    80005850:	00005517          	auipc	a0,0x5
    80005854:	8a850513          	addi	a0,a0,-1880 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80005858:	00001097          	auipc	ra,0x1
    8000585c:	a40080e7          	jalr	-1472(ra) # 80006298 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005860:	0014849b          	addiw	s1,s1,1
    80005864:	0ff4f493          	andi	s1,s1,255
    80005868:	00f00793          	li	a5,15
    8000586c:	fc97f0e3          	bgeu	a5,s1,8000582c <_Z11workerBodyDPv+0xc8>
    }

    thread_dispatch();
    80005870:	ffffc097          	auipc	ra,0xffffc
    80005874:	ac4080e7          	jalr	-1340(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    80005878:	00005517          	auipc	a0,0x5
    8000587c:	bf050513          	addi	a0,a0,-1040 # 8000a468 <CONSOLE_STATUS+0x458>
    80005880:	00001097          	auipc	ra,0x1
    80005884:	a18080e7          	jalr	-1512(ra) # 80006298 <_Z11printStringPKc>
    finishedD = true;
    80005888:	00100793          	li	a5,1
    8000588c:	0000c717          	auipc	a4,0xc
    80005890:	8ef701a3          	sb	a5,-1821(a4) # 8001116f <_ZL9finishedD>
}
    80005894:	01813083          	ld	ra,24(sp)
    80005898:	01013403          	ld	s0,16(sp)
    8000589c:	00813483          	ld	s1,8(sp)
    800058a0:	00013903          	ld	s2,0(sp)
    800058a4:	02010113          	addi	sp,sp,32
    800058a8:	00008067          	ret

00000000800058ac <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800058ac:	fc010113          	addi	sp,sp,-64
    800058b0:	02113c23          	sd	ra,56(sp)
    800058b4:	02813823          	sd	s0,48(sp)
    800058b8:	02913423          	sd	s1,40(sp)
    800058bc:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800058c0:	00000613          	li	a2,0
    800058c4:	00000597          	auipc	a1,0x0
    800058c8:	b0c58593          	addi	a1,a1,-1268 # 800053d0 <_Z11workerBodyAPv>
    800058cc:	fc040513          	addi	a0,s0,-64
    800058d0:	ffffc097          	auipc	ra,0xffffc
    800058d4:	9e4080e7          	jalr	-1564(ra) # 800012b4 <thread_create>
    printString("ThreadA created\n");
    800058d8:	00005517          	auipc	a0,0x5
    800058dc:	ba050513          	addi	a0,a0,-1120 # 8000a478 <CONSOLE_STATUS+0x468>
    800058e0:	00001097          	auipc	ra,0x1
    800058e4:	9b8080e7          	jalr	-1608(ra) # 80006298 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800058e8:	00000613          	li	a2,0
    800058ec:	00000597          	auipc	a1,0x0
    800058f0:	bb058593          	addi	a1,a1,-1104 # 8000549c <_Z11workerBodyBPv>
    800058f4:	fc840513          	addi	a0,s0,-56
    800058f8:	ffffc097          	auipc	ra,0xffffc
    800058fc:	9bc080e7          	jalr	-1604(ra) # 800012b4 <thread_create>
    printString("ThreadB created\n");
    80005900:	00005517          	auipc	a0,0x5
    80005904:	b9050513          	addi	a0,a0,-1136 # 8000a490 <CONSOLE_STATUS+0x480>
    80005908:	00001097          	auipc	ra,0x1
    8000590c:	990080e7          	jalr	-1648(ra) # 80006298 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005910:	00000613          	li	a2,0
    80005914:	00000597          	auipc	a1,0x0
    80005918:	cd058593          	addi	a1,a1,-816 # 800055e4 <_Z11workerBodyCPv>
    8000591c:	fd040513          	addi	a0,s0,-48
    80005920:	ffffc097          	auipc	ra,0xffffc
    80005924:	994080e7          	jalr	-1644(ra) # 800012b4 <thread_create>
    printString("ThreadC created\n");
    80005928:	00005517          	auipc	a0,0x5
    8000592c:	b8050513          	addi	a0,a0,-1152 # 8000a4a8 <CONSOLE_STATUS+0x498>
    80005930:	00001097          	auipc	ra,0x1
    80005934:	968080e7          	jalr	-1688(ra) # 80006298 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005938:	00000613          	li	a2,0
    8000593c:	00000597          	auipc	a1,0x0
    80005940:	e2858593          	addi	a1,a1,-472 # 80005764 <_Z11workerBodyDPv>
    80005944:	fd840513          	addi	a0,s0,-40
    80005948:	ffffc097          	auipc	ra,0xffffc
    8000594c:	96c080e7          	jalr	-1684(ra) # 800012b4 <thread_create>
    printString("ThreadD created\n");
    80005950:	00005517          	auipc	a0,0x5
    80005954:	b7050513          	addi	a0,a0,-1168 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80005958:	00001097          	auipc	ra,0x1
    8000595c:	940080e7          	jalr	-1728(ra) # 80006298 <_Z11printStringPKc>
    80005960:	00c0006f          	j	8000596c <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005964:	ffffc097          	auipc	ra,0xffffc
    80005968:	9d0080e7          	jalr	-1584(ra) # 80001334 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000596c:	0000c797          	auipc	a5,0xc
    80005970:	8007c783          	lbu	a5,-2048(a5) # 8001116c <_ZL9finishedA>
    80005974:	fe0788e3          	beqz	a5,80005964 <_Z18Threads_C_API_testv+0xb8>
    80005978:	0000b797          	auipc	a5,0xb
    8000597c:	7f57c783          	lbu	a5,2037(a5) # 8001116d <_ZL9finishedB>
    80005980:	fe0782e3          	beqz	a5,80005964 <_Z18Threads_C_API_testv+0xb8>
    80005984:	0000b797          	auipc	a5,0xb
    80005988:	7ea7c783          	lbu	a5,2026(a5) # 8001116e <_ZL9finishedC>
    8000598c:	fc078ce3          	beqz	a5,80005964 <_Z18Threads_C_API_testv+0xb8>
    80005990:	0000b797          	auipc	a5,0xb
    80005994:	7df7c783          	lbu	a5,2015(a5) # 8001116f <_ZL9finishedD>
    80005998:	fc0786e3          	beqz	a5,80005964 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete (uint64*)thread; }
    8000599c:	fc040493          	addi	s1,s0,-64
    800059a0:	0080006f          	j	800059a8 <_Z18Threads_C_API_testv+0xfc>
    800059a4:	00848493          	addi	s1,s1,8
    800059a8:	fe040793          	addi	a5,s0,-32
    800059ac:	00f48c63          	beq	s1,a5,800059c4 <_Z18Threads_C_API_testv+0x118>
    800059b0:	0004b503          	ld	a0,0(s1)
    800059b4:	fe0508e3          	beqz	a0,800059a4 <_Z18Threads_C_API_testv+0xf8>
    800059b8:	ffffe097          	auipc	ra,0xffffe
    800059bc:	a30080e7          	jalr	-1488(ra) # 800033e8 <_ZdlPv>
    800059c0:	fe5ff06f          	j	800059a4 <_Z18Threads_C_API_testv+0xf8>
}
    800059c4:	03813083          	ld	ra,56(sp)
    800059c8:	03013403          	ld	s0,48(sp)
    800059cc:	02813483          	ld	s1,40(sp)
    800059d0:	04010113          	addi	sp,sp,64
    800059d4:	00008067          	ret

00000000800059d8 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    Semaphore* wait;
};

extern volatile int threadEnd;

void ProducerKeyboard::producerKeyboard(void *arg) {
    800059d8:	fd010113          	addi	sp,sp,-48
    800059dc:	02113423          	sd	ra,40(sp)
    800059e0:	02813023          	sd	s0,32(sp)
    800059e4:	00913c23          	sd	s1,24(sp)
    800059e8:	01213823          	sd	s2,16(sp)
    800059ec:	01313423          	sd	s3,8(sp)
    800059f0:	03010413          	addi	s0,sp,48
    800059f4:	00050993          	mv	s3,a0
    800059f8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800059fc:	00000913          	li	s2,0
    80005a00:	00c0006f          	j	80005a0c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005a04:	ffffe097          	auipc	ra,0xffffe
    80005a08:	ac4080e7          	jalr	-1340(ra) # 800034c8 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 'q') {
    80005a0c:	ffffc097          	auipc	ra,0xffffc
    80005a10:	b04080e7          	jalr	-1276(ra) # 80001510 <getc>
    80005a14:	0005059b          	sext.w	a1,a0
    80005a18:	07100793          	li	a5,113
    80005a1c:	02f58a63          	beq	a1,a5,80005a50 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005a20:	0084b503          	ld	a0,8(s1)
    80005a24:	00001097          	auipc	ra,0x1
    80005a28:	c74080e7          	jalr	-908(ra) # 80006698 <_ZN9BufferCPP3putEi>
        i++;
    80005a2c:	0019071b          	addiw	a4,s2,1
    80005a30:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005a34:	0004a683          	lw	a3,0(s1)
    80005a38:	0026979b          	slliw	a5,a3,0x2
    80005a3c:	00d787bb          	addw	a5,a5,a3
    80005a40:	0017979b          	slliw	a5,a5,0x1
    80005a44:	02f767bb          	remw	a5,a4,a5
    80005a48:	fc0792e3          	bnez	a5,80005a0c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005a4c:	fb9ff06f          	j	80005a04 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005a50:	00007797          	auipc	a5,0x7
    80005a54:	5d87b783          	ld	a5,1496(a5) # 8000d028 <_GLOBAL_OFFSET_TABLE_+0x90>
    80005a58:	00100713          	li	a4,1
    80005a5c:	00e7a023          	sw	a4,0(a5)
    td->buffer->put('!');
    80005a60:	0109b783          	ld	a5,16(s3)
    80005a64:	02100593          	li	a1,33
    80005a68:	0087b503          	ld	a0,8(a5)
    80005a6c:	00001097          	auipc	ra,0x1
    80005a70:	c2c080e7          	jalr	-980(ra) # 80006698 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005a74:	0104b503          	ld	a0,16(s1)
    80005a78:	ffffe097          	auipc	ra,0xffffe
    80005a7c:	be0080e7          	jalr	-1056(ra) # 80003658 <_ZN9Semaphore6signalEv>
}
    80005a80:	02813083          	ld	ra,40(sp)
    80005a84:	02013403          	ld	s0,32(sp)
    80005a88:	01813483          	ld	s1,24(sp)
    80005a8c:	01013903          	ld	s2,16(sp)
    80005a90:	00813983          	ld	s3,8(sp)
    80005a94:	03010113          	addi	sp,sp,48
    80005a98:	00008067          	ret

0000000080005a9c <_ZN8Producer8producerEPv>:

void Producer::producer(void *arg) {
    80005a9c:	fe010113          	addi	sp,sp,-32
    80005aa0:	00113c23          	sd	ra,24(sp)
    80005aa4:	00813823          	sd	s0,16(sp)
    80005aa8:	00913423          	sd	s1,8(sp)
    80005aac:	01213023          	sd	s2,0(sp)
    80005ab0:	02010413          	addi	s0,sp,32
    80005ab4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005ab8:	00000913          	li	s2,0
    80005abc:	00c0006f          	j	80005ac8 <_ZN8Producer8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005ac0:	ffffe097          	auipc	ra,0xffffe
    80005ac4:	a08080e7          	jalr	-1528(ra) # 800034c8 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005ac8:	00007797          	auipc	a5,0x7
    80005acc:	5607b783          	ld	a5,1376(a5) # 8000d028 <_GLOBAL_OFFSET_TABLE_+0x90>
    80005ad0:	0007a783          	lw	a5,0(a5)
    80005ad4:	0007879b          	sext.w	a5,a5
    80005ad8:	02079e63          	bnez	a5,80005b14 <_ZN8Producer8producerEPv+0x78>
        data->buffer->put(data->id + '0');
    80005adc:	0004a583          	lw	a1,0(s1)
    80005ae0:	0305859b          	addiw	a1,a1,48
    80005ae4:	0084b503          	ld	a0,8(s1)
    80005ae8:	00001097          	auipc	ra,0x1
    80005aec:	bb0080e7          	jalr	-1104(ra) # 80006698 <_ZN9BufferCPP3putEi>
        i++;
    80005af0:	0019071b          	addiw	a4,s2,1
    80005af4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005af8:	0004a683          	lw	a3,0(s1)
    80005afc:	0026979b          	slliw	a5,a3,0x2
    80005b00:	00d787bb          	addw	a5,a5,a3
    80005b04:	0017979b          	slliw	a5,a5,0x1
    80005b08:	02f767bb          	remw	a5,a4,a5
    80005b0c:	fa079ee3          	bnez	a5,80005ac8 <_ZN8Producer8producerEPv+0x2c>
    80005b10:	fb1ff06f          	j	80005ac0 <_ZN8Producer8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005b14:	0104b503          	ld	a0,16(s1)
    80005b18:	ffffe097          	auipc	ra,0xffffe
    80005b1c:	b40080e7          	jalr	-1216(ra) # 80003658 <_ZN9Semaphore6signalEv>
}
    80005b20:	01813083          	ld	ra,24(sp)
    80005b24:	01013403          	ld	s0,16(sp)
    80005b28:	00813483          	ld	s1,8(sp)
    80005b2c:	00013903          	ld	s2,0(sp)
    80005b30:	02010113          	addi	sp,sp,32
    80005b34:	00008067          	ret

0000000080005b38 <_ZN8Consumer8consumerEPv>:

void Consumer::consumer(void *arg) {
    80005b38:	fd010113          	addi	sp,sp,-48
    80005b3c:	02113423          	sd	ra,40(sp)
    80005b40:	02813023          	sd	s0,32(sp)
    80005b44:	00913c23          	sd	s1,24(sp)
    80005b48:	01213823          	sd	s2,16(sp)
    80005b4c:	01313423          	sd	s3,8(sp)
    80005b50:	01413023          	sd	s4,0(sp)
    80005b54:	03010413          	addi	s0,sp,48
    80005b58:	00050993          	mv	s3,a0
    80005b5c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005b60:	00000a13          	li	s4,0
    80005b64:	01c0006f          	j	80005b80 <_ZN8Consumer8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005b68:	ffffe097          	auipc	ra,0xffffe
    80005b6c:	960080e7          	jalr	-1696(ra) # 800034c8 <_ZN6Thread8dispatchEv>
    80005b70:	0580006f          	j	80005bc8 <_ZN8Consumer8consumerEPv+0x90>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005b74:	00a00513          	li	a0,10
    80005b78:	ffffc097          	auipc	ra,0xffffc
    80005b7c:	9c0080e7          	jalr	-1600(ra) # 80001538 <putc>
    while (!threadEnd) {
    80005b80:	00007797          	auipc	a5,0x7
    80005b84:	4a87b783          	ld	a5,1192(a5) # 8000d028 <_GLOBAL_OFFSET_TABLE_+0x90>
    80005b88:	0007a783          	lw	a5,0(a5)
    80005b8c:	0007879b          	sext.w	a5,a5
    80005b90:	06079263          	bnez	a5,80005bf4 <_ZN8Consumer8consumerEPv+0xbc>
        int key = data->buffer->get();
    80005b94:	00893503          	ld	a0,8(s2)
    80005b98:	00001097          	auipc	ra,0x1
    80005b9c:	b90080e7          	jalr	-1136(ra) # 80006728 <_ZN9BufferCPP3getEv>
        i++;
    80005ba0:	001a049b          	addiw	s1,s4,1
    80005ba4:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005ba8:	0ff57513          	andi	a0,a0,255
    80005bac:	ffffc097          	auipc	ra,0xffffc
    80005bb0:	98c080e7          	jalr	-1652(ra) # 80001538 <putc>
        if (i % (5 * data->id) == 0) {
    80005bb4:	00092703          	lw	a4,0(s2)
    80005bb8:	0027179b          	slliw	a5,a4,0x2
    80005bbc:	00e787bb          	addw	a5,a5,a4
    80005bc0:	02f4e7bb          	remw	a5,s1,a5
    80005bc4:	fa0782e3          	beqz	a5,80005b68 <_ZN8Consumer8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005bc8:	05000793          	li	a5,80
    80005bcc:	02f4e4bb          	remw	s1,s1,a5
    80005bd0:	fa0498e3          	bnez	s1,80005b80 <_ZN8Consumer8consumerEPv+0x48>
    80005bd4:	fa1ff06f          	j	80005b74 <_ZN8Consumer8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005bd8:	0109b783          	ld	a5,16(s3)
    80005bdc:	0087b503          	ld	a0,8(a5)
    80005be0:	00001097          	auipc	ra,0x1
    80005be4:	b48080e7          	jalr	-1208(ra) # 80006728 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005be8:	0ff57513          	andi	a0,a0,255
    80005bec:	ffffe097          	auipc	ra,0xffffe
    80005bf0:	acc080e7          	jalr	-1332(ra) # 800036b8 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005bf4:	0109b783          	ld	a5,16(s3)
    80005bf8:	0087b503          	ld	a0,8(a5)
    80005bfc:	00001097          	auipc	ra,0x1
    80005c00:	bb8080e7          	jalr	-1096(ra) # 800067b4 <_ZN9BufferCPP6getCntEv>
    80005c04:	fca04ae3          	bgtz	a0,80005bd8 <_ZN8Consumer8consumerEPv+0xa0>
    }

    data->wait->signal();
    80005c08:	01093503          	ld	a0,16(s2)
    80005c0c:	ffffe097          	auipc	ra,0xffffe
    80005c10:	a4c080e7          	jalr	-1460(ra) # 80003658 <_ZN9Semaphore6signalEv>
}
    80005c14:	02813083          	ld	ra,40(sp)
    80005c18:	02013403          	ld	s0,32(sp)
    80005c1c:	01813483          	ld	s1,24(sp)
    80005c20:	01013903          	ld	s2,16(sp)
    80005c24:	00813983          	ld	s3,8(sp)
    80005c28:	00013a03          	ld	s4,0(sp)
    80005c2c:	03010113          	addi	sp,sp,48
    80005c30:	00008067          	ret

0000000080005c34 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API()
{
    80005c34:	f8010113          	addi	sp,sp,-128
    80005c38:	06113c23          	sd	ra,120(sp)
    80005c3c:	06813823          	sd	s0,112(sp)
    80005c40:	06913423          	sd	s1,104(sp)
    80005c44:	07213023          	sd	s2,96(sp)
    80005c48:	05313c23          	sd	s3,88(sp)
    80005c4c:	05413823          	sd	s4,80(sp)
    80005c50:	05513423          	sd	s5,72(sp)
    80005c54:	05613023          	sd	s6,64(sp)
    80005c58:	03713c23          	sd	s7,56(sp)
    80005c5c:	03813823          	sd	s8,48(sp)
    80005c60:	03913423          	sd	s9,40(sp)
    80005c64:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005c68:	00010b93          	mv	s7,sp
    threadEnd = 0;
    80005c6c:	00007797          	auipc	a5,0x7
    80005c70:	3bc7b783          	ld	a5,956(a5) # 8000d028 <_GLOBAL_OFFSET_TABLE_+0x90>
    80005c74:	0007a023          	sw	zero,0(a5)
    printString("Unesite broj proizvodjaca?\n");
    80005c78:	00004517          	auipc	a0,0x4
    80005c7c:	68050513          	addi	a0,a0,1664 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80005c80:	00000097          	auipc	ra,0x0
    80005c84:	618080e7          	jalr	1560(ra) # 80006298 <_Z11printStringPKc>
    getString(input, 30);
    80005c88:	01e00593          	li	a1,30
    80005c8c:	f8040493          	addi	s1,s0,-128
    80005c90:	00048513          	mv	a0,s1
    80005c94:	00000097          	auipc	ra,0x0
    80005c98:	680080e7          	jalr	1664(ra) # 80006314 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005c9c:	00048513          	mv	a0,s1
    80005ca0:	00000097          	auipc	ra,0x0
    80005ca4:	740080e7          	jalr	1856(ra) # 800063e0 <_Z11stringToIntPKc>
    80005ca8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005cac:	00004517          	auipc	a0,0x4
    80005cb0:	66c50513          	addi	a0,a0,1644 # 8000a318 <CONSOLE_STATUS+0x308>
    80005cb4:	00000097          	auipc	ra,0x0
    80005cb8:	5e4080e7          	jalr	1508(ra) # 80006298 <_Z11printStringPKc>
    getString(input, 30);
    80005cbc:	01e00593          	li	a1,30
    80005cc0:	00048513          	mv	a0,s1
    80005cc4:	00000097          	auipc	ra,0x0
    80005cc8:	650080e7          	jalr	1616(ra) # 80006314 <_Z9getStringPci>
    n = stringToInt(input);
    80005ccc:	00048513          	mv	a0,s1
    80005cd0:	00000097          	auipc	ra,0x0
    80005cd4:	710080e7          	jalr	1808(ra) # 800063e0 <_Z11stringToIntPKc>
    80005cd8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005cdc:	00004517          	auipc	a0,0x4
    80005ce0:	65c50513          	addi	a0,a0,1628 # 8000a338 <CONSOLE_STATUS+0x328>
    80005ce4:	00000097          	auipc	ra,0x0
    80005ce8:	5b4080e7          	jalr	1460(ra) # 80006298 <_Z11printStringPKc>
    80005cec:	00000613          	li	a2,0
    80005cf0:	00a00593          	li	a1,10
    80005cf4:	00090513          	mv	a0,s2
    80005cf8:	00000097          	auipc	ra,0x0
    80005cfc:	738080e7          	jalr	1848(ra) # 80006430 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005d00:	00004517          	auipc	a0,0x4
    80005d04:	65050513          	addi	a0,a0,1616 # 8000a350 <CONSOLE_STATUS+0x340>
    80005d08:	00000097          	auipc	ra,0x0
    80005d0c:	590080e7          	jalr	1424(ra) # 80006298 <_Z11printStringPKc>
    80005d10:	00000613          	li	a2,0
    80005d14:	00a00593          	li	a1,10
    80005d18:	00048513          	mv	a0,s1
    80005d1c:	00000097          	auipc	ra,0x0
    80005d20:	714080e7          	jalr	1812(ra) # 80006430 <_Z8printIntiii>
    printString(".\n");
    80005d24:	00004517          	auipc	a0,0x4
    80005d28:	64450513          	addi	a0,a0,1604 # 8000a368 <CONSOLE_STATUS+0x358>
    80005d2c:	00000097          	auipc	ra,0x0
    80005d30:	56c080e7          	jalr	1388(ra) # 80006298 <_Z11printStringPKc>
    if(threadNum > n) {
    80005d34:	0324c463          	blt	s1,s2,80005d5c <_Z29producerConsumer_CPP_Sync_APIv+0x128>
    } else if (threadNum < 1) {
    80005d38:	03205c63          	blez	s2,80005d70 <_Z29producerConsumer_CPP_Sync_APIv+0x13c>
    BufferCPP *buffer = new BufferCPP(n);
    80005d3c:	03800513          	li	a0,56
    80005d40:	ffffd097          	auipc	ra,0xffffd
    80005d44:	680080e7          	jalr	1664(ra) # 800033c0 <_Znwm>
    80005d48:	00050a93          	mv	s5,a0
    80005d4c:	00048593          	mv	a1,s1
    80005d50:	00000097          	auipc	ra,0x0
    80005d54:	7f4080e7          	jalr	2036(ra) # 80006544 <_ZN9BufferCPPC1Ei>
    80005d58:	0300006f          	j	80005d88 <_Z29producerConsumer_CPP_Sync_APIv+0x154>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005d5c:	00004517          	auipc	a0,0x4
    80005d60:	61450513          	addi	a0,a0,1556 # 8000a370 <CONSOLE_STATUS+0x360>
    80005d64:	00000097          	auipc	ra,0x0
    80005d68:	534080e7          	jalr	1332(ra) # 80006298 <_Z11printStringPKc>
        return;
    80005d6c:	0140006f          	j	80005d80 <_Z29producerConsumer_CPP_Sync_APIv+0x14c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005d70:	00004517          	auipc	a0,0x4
    80005d74:	64050513          	addi	a0,a0,1600 # 8000a3b0 <CONSOLE_STATUS+0x3a0>
    80005d78:	00000097          	auipc	ra,0x0
    80005d7c:	520080e7          	jalr	1312(ra) # 80006298 <_Z11printStringPKc>
        return;
    80005d80:	000b8113          	mv	sp,s7
    80005d84:	24c0006f          	j	80005fd0 <_Z29producerConsumer_CPP_Sync_APIv+0x39c>
    waitForAll = new Semaphore(0);
    80005d88:	01000513          	li	a0,16
    80005d8c:	ffffd097          	auipc	ra,0xffffd
    80005d90:	634080e7          	jalr	1588(ra) # 800033c0 <_Znwm>
    80005d94:	00050493          	mv	s1,a0
    80005d98:	00000593          	li	a1,0
    80005d9c:	ffffe097          	auipc	ra,0xffffe
    80005da0:	870080e7          	jalr	-1936(ra) # 8000360c <_ZN9SemaphoreC1Ej>
    80005da4:	00007717          	auipc	a4,0x7
    80005da8:	26473703          	ld	a4,612(a4) # 8000d008 <_GLOBAL_OFFSET_TABLE_+0x70>
    80005dac:	00973023          	sd	s1,0(a4)
    Thread* threads[threadNum];
    80005db0:	00391793          	slli	a5,s2,0x3
    80005db4:	00f78793          	addi	a5,a5,15
    80005db8:	ff07f793          	andi	a5,a5,-16
    80005dbc:	40f10133          	sub	sp,sp,a5
    80005dc0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005dc4:	0019069b          	addiw	a3,s2,1
    80005dc8:	00169793          	slli	a5,a3,0x1
    80005dcc:	00d787b3          	add	a5,a5,a3
    80005dd0:	00379793          	slli	a5,a5,0x3
    80005dd4:	00f78793          	addi	a5,a5,15
    80005dd8:	ff07f793          	andi	a5,a5,-16
    80005ddc:	40f10133          	sub	sp,sp,a5
    80005de0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005de4:	00191493          	slli	s1,s2,0x1
    80005de8:	012487b3          	add	a5,s1,s2
    80005dec:	00379793          	slli	a5,a5,0x3
    80005df0:	00fa07b3          	add	a5,s4,a5
    80005df4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005df8:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005dfc:	00073703          	ld	a4,0(a4)
    80005e00:	00e7b823          	sd	a4,16(a5)
    consumerThread = new Consumer(data+threadNum);
    80005e04:	01800513          	li	a0,24
    80005e08:	ffffd097          	auipc	ra,0xffffd
    80005e0c:	5b8080e7          	jalr	1464(ra) # 800033c0 <_Znwm>
    80005e10:	00050b13          	mv	s6,a0
    80005e14:	012484b3          	add	s1,s1,s2
    80005e18:	00349493          	slli	s1,s1,0x3
    80005e1c:	009a04b3          	add	s1,s4,s1

class Consumer:public Thread {
    thread_data* td;
    void consumer(void *arg);
public:
    Consumer(thread_data* _td):Thread(), td(_td) {}
    80005e20:	ffffd097          	auipc	ra,0xffffd
    80005e24:	770080e7          	jalr	1904(ra) # 80003590 <_ZN6ThreadC1Ev>
    80005e28:	00007797          	auipc	a5,0x7
    80005e2c:	0c878793          	addi	a5,a5,200 # 8000cef0 <_ZTV8Consumer+0x10>
    80005e30:	00fb3023          	sd	a5,0(s6)
    80005e34:	009b3823          	sd	s1,16(s6)
    consumerThread->start();
    80005e38:	000b0513          	mv	a0,s6
    80005e3c:	ffffd097          	auipc	ra,0xffffd
    80005e40:	654080e7          	jalr	1620(ra) # 80003490 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005e44:	00000493          	li	s1,0
    80005e48:	0380006f          	j	80005e80 <_Z29producerConsumer_CPP_Sync_APIv+0x24c>
    Producer(thread_data* _td):Thread(), td(_td) {}
    80005e4c:	00007797          	auipc	a5,0x7
    80005e50:	07c78793          	addi	a5,a5,124 # 8000cec8 <_ZTV8Producer+0x10>
    80005e54:	00fcb023          	sd	a5,0(s9)
    80005e58:	018cb823          	sd	s8,16(s9)
            threads[i] = new Producer(data+i);
    80005e5c:	00349793          	slli	a5,s1,0x3
    80005e60:	00f987b3          	add	a5,s3,a5
    80005e64:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005e68:	00349793          	slli	a5,s1,0x3
    80005e6c:	00f987b3          	add	a5,s3,a5
    80005e70:	0007b503          	ld	a0,0(a5)
    80005e74:	ffffd097          	auipc	ra,0xffffd
    80005e78:	61c080e7          	jalr	1564(ra) # 80003490 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005e7c:	0014849b          	addiw	s1,s1,1
    80005e80:	0b24d263          	bge	s1,s2,80005f24 <_Z29producerConsumer_CPP_Sync_APIv+0x2f0>
        data[i].id = i;
    80005e84:	00149793          	slli	a5,s1,0x1
    80005e88:	009787b3          	add	a5,a5,s1
    80005e8c:	00379793          	slli	a5,a5,0x3
    80005e90:	00fa07b3          	add	a5,s4,a5
    80005e94:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005e98:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005e9c:	00007717          	auipc	a4,0x7
    80005ea0:	16c73703          	ld	a4,364(a4) # 8000d008 <_GLOBAL_OFFSET_TABLE_+0x70>
    80005ea4:	00073703          	ld	a4,0(a4)
    80005ea8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005eac:	02905863          	blez	s1,80005edc <_Z29producerConsumer_CPP_Sync_APIv+0x2a8>
            threads[i] = new Producer(data+i);
    80005eb0:	01800513          	li	a0,24
    80005eb4:	ffffd097          	auipc	ra,0xffffd
    80005eb8:	50c080e7          	jalr	1292(ra) # 800033c0 <_Znwm>
    80005ebc:	00050c93          	mv	s9,a0
    80005ec0:	00149c13          	slli	s8,s1,0x1
    80005ec4:	009c0c33          	add	s8,s8,s1
    80005ec8:	003c1c13          	slli	s8,s8,0x3
    80005ecc:	018a0c33          	add	s8,s4,s8
    80005ed0:	ffffd097          	auipc	ra,0xffffd
    80005ed4:	6c0080e7          	jalr	1728(ra) # 80003590 <_ZN6ThreadC1Ev>
    80005ed8:	f75ff06f          	j	80005e4c <_Z29producerConsumer_CPP_Sync_APIv+0x218>
            threads[i] = new ProducerKeyboard(data+i);
    80005edc:	01800513          	li	a0,24
    80005ee0:	ffffd097          	auipc	ra,0xffffd
    80005ee4:	4e0080e7          	jalr	1248(ra) # 800033c0 <_Znwm>
    80005ee8:	00050c93          	mv	s9,a0
    80005eec:	00149c13          	slli	s8,s1,0x1
    80005ef0:	009c0c33          	add	s8,s8,s1
    80005ef4:	003c1c13          	slli	s8,s8,0x3
    80005ef8:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005efc:	ffffd097          	auipc	ra,0xffffd
    80005f00:	694080e7          	jalr	1684(ra) # 80003590 <_ZN6ThreadC1Ev>
    80005f04:	00007797          	auipc	a5,0x7
    80005f08:	f9c78793          	addi	a5,a5,-100 # 8000cea0 <_ZTV16ProducerKeyboard+0x10>
    80005f0c:	00fcb023          	sd	a5,0(s9)
    80005f10:	018cb823          	sd	s8,16(s9)
    80005f14:	00349793          	slli	a5,s1,0x3
    80005f18:	00f987b3          	add	a5,s3,a5
    80005f1c:	0197b023          	sd	s9,0(a5)
    80005f20:	f49ff06f          	j	80005e68 <_Z29producerConsumer_CPP_Sync_APIv+0x234>
    Thread::dispatch();
    80005f24:	ffffd097          	auipc	ra,0xffffd
    80005f28:	5a4080e7          	jalr	1444(ra) # 800034c8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005f2c:	00000493          	li	s1,0
    80005f30:	02994063          	blt	s2,s1,80005f50 <_Z29producerConsumer_CPP_Sync_APIv+0x31c>
        waitForAll->wait();
    80005f34:	00007797          	auipc	a5,0x7
    80005f38:	0d47b783          	ld	a5,212(a5) # 8000d008 <_GLOBAL_OFFSET_TABLE_+0x70>
    80005f3c:	0007b503          	ld	a0,0(a5)
    80005f40:	ffffd097          	auipc	ra,0xffffd
    80005f44:	694080e7          	jalr	1684(ra) # 800035d4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005f48:	0014849b          	addiw	s1,s1,1
    80005f4c:	fe5ff06f          	j	80005f30 <_Z29producerConsumer_CPP_Sync_APIv+0x2fc>
    for (int i = 0; i < threadNum; i++) {
    80005f50:	00000493          	li	s1,0
    80005f54:	0080006f          	j	80005f5c <_Z29producerConsumer_CPP_Sync_APIv+0x328>
    80005f58:	0014849b          	addiw	s1,s1,1
    80005f5c:	0324d263          	bge	s1,s2,80005f80 <_Z29producerConsumer_CPP_Sync_APIv+0x34c>
        delete threads[i];
    80005f60:	00349793          	slli	a5,s1,0x3
    80005f64:	00f987b3          	add	a5,s3,a5
    80005f68:	0007b503          	ld	a0,0(a5)
    80005f6c:	fe0506e3          	beqz	a0,80005f58 <_Z29producerConsumer_CPP_Sync_APIv+0x324>
    80005f70:	00053783          	ld	a5,0(a0)
    80005f74:	0087b783          	ld	a5,8(a5)
    80005f78:	000780e7          	jalr	a5
    80005f7c:	fddff06f          	j	80005f58 <_Z29producerConsumer_CPP_Sync_APIv+0x324>
    delete consumerThread;
    80005f80:	000b0a63          	beqz	s6,80005f94 <_Z29producerConsumer_CPP_Sync_APIv+0x360>
    80005f84:	000b3783          	ld	a5,0(s6)
    80005f88:	0087b783          	ld	a5,8(a5)
    80005f8c:	000b0513          	mv	a0,s6
    80005f90:	000780e7          	jalr	a5
    delete waitForAll;
    80005f94:	00007797          	auipc	a5,0x7
    80005f98:	0747b783          	ld	a5,116(a5) # 8000d008 <_GLOBAL_OFFSET_TABLE_+0x70>
    80005f9c:	0007b503          	ld	a0,0(a5)
    80005fa0:	00050863          	beqz	a0,80005fb0 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    80005fa4:	00053783          	ld	a5,0(a0)
    80005fa8:	0087b783          	ld	a5,8(a5)
    80005fac:	000780e7          	jalr	a5
    delete buffer;
    80005fb0:	000a8e63          	beqz	s5,80005fcc <_Z29producerConsumer_CPP_Sync_APIv+0x398>
    80005fb4:	000a8513          	mv	a0,s5
    80005fb8:	00001097          	auipc	ra,0x1
    80005fbc:	884080e7          	jalr	-1916(ra) # 8000683c <_ZN9BufferCPPD1Ev>
    80005fc0:	000a8513          	mv	a0,s5
    80005fc4:	ffffd097          	auipc	ra,0xffffd
    80005fc8:	424080e7          	jalr	1060(ra) # 800033e8 <_ZdlPv>
    80005fcc:	000b8113          	mv	sp,s7

    80005fd0:	f8040113          	addi	sp,s0,-128
    80005fd4:	07813083          	ld	ra,120(sp)
    80005fd8:	07013403          	ld	s0,112(sp)
    80005fdc:	06813483          	ld	s1,104(sp)
    80005fe0:	06013903          	ld	s2,96(sp)
    80005fe4:	05813983          	ld	s3,88(sp)
    80005fe8:	05013a03          	ld	s4,80(sp)
    80005fec:	04813a83          	ld	s5,72(sp)
    80005ff0:	04013b03          	ld	s6,64(sp)
    80005ff4:	03813b83          	ld	s7,56(sp)
    80005ff8:	03013c03          	ld	s8,48(sp)
    80005ffc:	02813c83          	ld	s9,40(sp)
    80006000:	08010113          	addi	sp,sp,128
    80006004:	00008067          	ret
    80006008:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000600c:	000a8513          	mv	a0,s5
    80006010:	ffffd097          	auipc	ra,0xffffd
    80006014:	3d8080e7          	jalr	984(ra) # 800033e8 <_ZdlPv>
    80006018:	00048513          	mv	a0,s1
    8000601c:	0000c097          	auipc	ra,0xc
    80006020:	23c080e7          	jalr	572(ra) # 80012258 <_Unwind_Resume>
    80006024:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80006028:	00048513          	mv	a0,s1
    8000602c:	ffffd097          	auipc	ra,0xffffd
    80006030:	3bc080e7          	jalr	956(ra) # 800033e8 <_ZdlPv>
    80006034:	00090513          	mv	a0,s2
    80006038:	0000c097          	auipc	ra,0xc
    8000603c:	220080e7          	jalr	544(ra) # 80012258 <_Unwind_Resume>
    80006040:	00050493          	mv	s1,a0
    consumerThread = new Consumer(data+threadNum);
    80006044:	000b0513          	mv	a0,s6
    80006048:	ffffd097          	auipc	ra,0xffffd
    8000604c:	3a0080e7          	jalr	928(ra) # 800033e8 <_ZdlPv>
    80006050:	00048513          	mv	a0,s1
    80006054:	0000c097          	auipc	ra,0xc
    80006058:	204080e7          	jalr	516(ra) # 80012258 <_Unwind_Resume>
    8000605c:	00050493          	mv	s1,a0
            threads[i] = new Producer(data+i);
    80006060:	000c8513          	mv	a0,s9
    80006064:	ffffd097          	auipc	ra,0xffffd
    80006068:	384080e7          	jalr	900(ra) # 800033e8 <_ZdlPv>
    8000606c:	00048513          	mv	a0,s1
    80006070:	0000c097          	auipc	ra,0xc
    80006074:	1e8080e7          	jalr	488(ra) # 80012258 <_Unwind_Resume>
    80006078:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    8000607c:	000c8513          	mv	a0,s9
    80006080:	ffffd097          	auipc	ra,0xffffd
    80006084:	368080e7          	jalr	872(ra) # 800033e8 <_ZdlPv>
    80006088:	00048513          	mv	a0,s1
    8000608c:	0000c097          	auipc	ra,0xc
    80006090:	1cc080e7          	jalr	460(ra) # 80012258 <_Unwind_Resume>

0000000080006094 <_ZN8ConsumerD1Ev>:
class Consumer:public Thread {
    80006094:	ff010113          	addi	sp,sp,-16
    80006098:	00113423          	sd	ra,8(sp)
    8000609c:	00813023          	sd	s0,0(sp)
    800060a0:	01010413          	addi	s0,sp,16
    800060a4:	00007797          	auipc	a5,0x7
    800060a8:	e4c78793          	addi	a5,a5,-436 # 8000cef0 <_ZTV8Consumer+0x10>
    800060ac:	00f53023          	sd	a5,0(a0)
    800060b0:	ffffd097          	auipc	ra,0xffffd
    800060b4:	2a0080e7          	jalr	672(ra) # 80003350 <_ZN6ThreadD1Ev>
    800060b8:	00813083          	ld	ra,8(sp)
    800060bc:	00013403          	ld	s0,0(sp)
    800060c0:	01010113          	addi	sp,sp,16
    800060c4:	00008067          	ret

00000000800060c8 <_ZN8ConsumerD0Ev>:
    800060c8:	fe010113          	addi	sp,sp,-32
    800060cc:	00113c23          	sd	ra,24(sp)
    800060d0:	00813823          	sd	s0,16(sp)
    800060d4:	00913423          	sd	s1,8(sp)
    800060d8:	02010413          	addi	s0,sp,32
    800060dc:	00050493          	mv	s1,a0
    800060e0:	00007797          	auipc	a5,0x7
    800060e4:	e1078793          	addi	a5,a5,-496 # 8000cef0 <_ZTV8Consumer+0x10>
    800060e8:	00f53023          	sd	a5,0(a0)
    800060ec:	ffffd097          	auipc	ra,0xffffd
    800060f0:	264080e7          	jalr	612(ra) # 80003350 <_ZN6ThreadD1Ev>
    800060f4:	00048513          	mv	a0,s1
    800060f8:	ffffd097          	auipc	ra,0xffffd
    800060fc:	2f0080e7          	jalr	752(ra) # 800033e8 <_ZdlPv>
    80006100:	01813083          	ld	ra,24(sp)
    80006104:	01013403          	ld	s0,16(sp)
    80006108:	00813483          	ld	s1,8(sp)
    8000610c:	02010113          	addi	sp,sp,32
    80006110:	00008067          	ret

0000000080006114 <_ZN8ProducerD1Ev>:
class Producer:public Thread {
    80006114:	ff010113          	addi	sp,sp,-16
    80006118:	00113423          	sd	ra,8(sp)
    8000611c:	00813023          	sd	s0,0(sp)
    80006120:	01010413          	addi	s0,sp,16
    80006124:	00007797          	auipc	a5,0x7
    80006128:	da478793          	addi	a5,a5,-604 # 8000cec8 <_ZTV8Producer+0x10>
    8000612c:	00f53023          	sd	a5,0(a0)
    80006130:	ffffd097          	auipc	ra,0xffffd
    80006134:	220080e7          	jalr	544(ra) # 80003350 <_ZN6ThreadD1Ev>
    80006138:	00813083          	ld	ra,8(sp)
    8000613c:	00013403          	ld	s0,0(sp)
    80006140:	01010113          	addi	sp,sp,16
    80006144:	00008067          	ret

0000000080006148 <_ZN8ProducerD0Ev>:
    80006148:	fe010113          	addi	sp,sp,-32
    8000614c:	00113c23          	sd	ra,24(sp)
    80006150:	00813823          	sd	s0,16(sp)
    80006154:	00913423          	sd	s1,8(sp)
    80006158:	02010413          	addi	s0,sp,32
    8000615c:	00050493          	mv	s1,a0
    80006160:	00007797          	auipc	a5,0x7
    80006164:	d6878793          	addi	a5,a5,-664 # 8000cec8 <_ZTV8Producer+0x10>
    80006168:	00f53023          	sd	a5,0(a0)
    8000616c:	ffffd097          	auipc	ra,0xffffd
    80006170:	1e4080e7          	jalr	484(ra) # 80003350 <_ZN6ThreadD1Ev>
    80006174:	00048513          	mv	a0,s1
    80006178:	ffffd097          	auipc	ra,0xffffd
    8000617c:	270080e7          	jalr	624(ra) # 800033e8 <_ZdlPv>
    80006180:	01813083          	ld	ra,24(sp)
    80006184:	01013403          	ld	s0,16(sp)
    80006188:	00813483          	ld	s1,8(sp)
    8000618c:	02010113          	addi	sp,sp,32
    80006190:	00008067          	ret

0000000080006194 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80006194:	ff010113          	addi	sp,sp,-16
    80006198:	00113423          	sd	ra,8(sp)
    8000619c:	00813023          	sd	s0,0(sp)
    800061a0:	01010413          	addi	s0,sp,16
    800061a4:	00007797          	auipc	a5,0x7
    800061a8:	cfc78793          	addi	a5,a5,-772 # 8000cea0 <_ZTV16ProducerKeyboard+0x10>
    800061ac:	00f53023          	sd	a5,0(a0)
    800061b0:	ffffd097          	auipc	ra,0xffffd
    800061b4:	1a0080e7          	jalr	416(ra) # 80003350 <_ZN6ThreadD1Ev>
    800061b8:	00813083          	ld	ra,8(sp)
    800061bc:	00013403          	ld	s0,0(sp)
    800061c0:	01010113          	addi	sp,sp,16
    800061c4:	00008067          	ret

00000000800061c8 <_ZN16ProducerKeyboardD0Ev>:
    800061c8:	fe010113          	addi	sp,sp,-32
    800061cc:	00113c23          	sd	ra,24(sp)
    800061d0:	00813823          	sd	s0,16(sp)
    800061d4:	00913423          	sd	s1,8(sp)
    800061d8:	02010413          	addi	s0,sp,32
    800061dc:	00050493          	mv	s1,a0
    800061e0:	00007797          	auipc	a5,0x7
    800061e4:	cc078793          	addi	a5,a5,-832 # 8000cea0 <_ZTV16ProducerKeyboard+0x10>
    800061e8:	00f53023          	sd	a5,0(a0)
    800061ec:	ffffd097          	auipc	ra,0xffffd
    800061f0:	164080e7          	jalr	356(ra) # 80003350 <_ZN6ThreadD1Ev>
    800061f4:	00048513          	mv	a0,s1
    800061f8:	ffffd097          	auipc	ra,0xffffd
    800061fc:	1f0080e7          	jalr	496(ra) # 800033e8 <_ZdlPv>
    80006200:	01813083          	ld	ra,24(sp)
    80006204:	01013403          	ld	s0,16(sp)
    80006208:	00813483          	ld	s1,8(sp)
    8000620c:	02010113          	addi	sp,sp,32
    80006210:	00008067          	ret

0000000080006214 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80006214:	ff010113          	addi	sp,sp,-16
    80006218:	00113423          	sd	ra,8(sp)
    8000621c:	00813023          	sd	s0,0(sp)
    80006220:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80006224:	01053583          	ld	a1,16(a0)
    80006228:	fffff097          	auipc	ra,0xfffff
    8000622c:	7b0080e7          	jalr	1968(ra) # 800059d8 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80006230:	00813083          	ld	ra,8(sp)
    80006234:	00013403          	ld	s0,0(sp)
    80006238:	01010113          	addi	sp,sp,16
    8000623c:	00008067          	ret

0000000080006240 <_ZN8Producer3runEv>:
    void run() override {
    80006240:	ff010113          	addi	sp,sp,-16
    80006244:	00113423          	sd	ra,8(sp)
    80006248:	00813023          	sd	s0,0(sp)
    8000624c:	01010413          	addi	s0,sp,16
        producer(td);
    80006250:	01053583          	ld	a1,16(a0)
    80006254:	00000097          	auipc	ra,0x0
    80006258:	848080e7          	jalr	-1976(ra) # 80005a9c <_ZN8Producer8producerEPv>
    }
    8000625c:	00813083          	ld	ra,8(sp)
    80006260:	00013403          	ld	s0,0(sp)
    80006264:	01010113          	addi	sp,sp,16
    80006268:	00008067          	ret

000000008000626c <_ZN8Consumer3runEv>:

    void run() override {
    8000626c:	ff010113          	addi	sp,sp,-16
    80006270:	00113423          	sd	ra,8(sp)
    80006274:	00813023          	sd	s0,0(sp)
    80006278:	01010413          	addi	s0,sp,16
        consumer(td);
    8000627c:	01053583          	ld	a1,16(a0)
    80006280:	00000097          	auipc	ra,0x0
    80006284:	8b8080e7          	jalr	-1864(ra) # 80005b38 <_ZN8Consumer8consumerEPv>
    }
    80006288:	00813083          	ld	ra,8(sp)
    8000628c:	00013403          	ld	s0,0(sp)
    80006290:	01010113          	addi	sp,sp,16
    80006294:	00008067          	ret

0000000080006298 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80006298:	fe010113          	addi	sp,sp,-32
    8000629c:	00113c23          	sd	ra,24(sp)
    800062a0:	00813823          	sd	s0,16(sp)
    800062a4:	00913423          	sd	s1,8(sp)
    800062a8:	02010413          	addi	s0,sp,32
    800062ac:	00050493          	mv	s1,a0
    LOCK();
    800062b0:	00100613          	li	a2,1
    800062b4:	00000593          	li	a1,0
    800062b8:	0000b517          	auipc	a0,0xb
    800062bc:	eb850513          	addi	a0,a0,-328 # 80011170 <lockPrint>
    800062c0:	ffffb097          	auipc	ra,0xffffb
    800062c4:	f58080e7          	jalr	-168(ra) # 80001218 <copy_and_swap>
    800062c8:	fe0514e3          	bnez	a0,800062b0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800062cc:	0004c503          	lbu	a0,0(s1)
    800062d0:	00050a63          	beqz	a0,800062e4 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800062d4:	ffffb097          	auipc	ra,0xffffb
    800062d8:	264080e7          	jalr	612(ra) # 80001538 <putc>
        string++;
    800062dc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800062e0:	fedff06f          	j	800062cc <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800062e4:	00000613          	li	a2,0
    800062e8:	00100593          	li	a1,1
    800062ec:	0000b517          	auipc	a0,0xb
    800062f0:	e8450513          	addi	a0,a0,-380 # 80011170 <lockPrint>
    800062f4:	ffffb097          	auipc	ra,0xffffb
    800062f8:	f24080e7          	jalr	-220(ra) # 80001218 <copy_and_swap>
    800062fc:	fe0514e3          	bnez	a0,800062e4 <_Z11printStringPKc+0x4c>
}
    80006300:	01813083          	ld	ra,24(sp)
    80006304:	01013403          	ld	s0,16(sp)
    80006308:	00813483          	ld	s1,8(sp)
    8000630c:	02010113          	addi	sp,sp,32
    80006310:	00008067          	ret

0000000080006314 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80006314:	fd010113          	addi	sp,sp,-48
    80006318:	02113423          	sd	ra,40(sp)
    8000631c:	02813023          	sd	s0,32(sp)
    80006320:	00913c23          	sd	s1,24(sp)
    80006324:	01213823          	sd	s2,16(sp)
    80006328:	01313423          	sd	s3,8(sp)
    8000632c:	01413023          	sd	s4,0(sp)
    80006330:	03010413          	addi	s0,sp,48
    80006334:	00050993          	mv	s3,a0
    80006338:	00058a13          	mv	s4,a1
    LOCK();
    8000633c:	00100613          	li	a2,1
    80006340:	00000593          	li	a1,0
    80006344:	0000b517          	auipc	a0,0xb
    80006348:	e2c50513          	addi	a0,a0,-468 # 80011170 <lockPrint>
    8000634c:	ffffb097          	auipc	ra,0xffffb
    80006350:	ecc080e7          	jalr	-308(ra) # 80001218 <copy_and_swap>
    80006354:	fe0514e3          	bnez	a0,8000633c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80006358:	00000913          	li	s2,0
    8000635c:	00090493          	mv	s1,s2
    80006360:	0019091b          	addiw	s2,s2,1
    80006364:	03495a63          	bge	s2,s4,80006398 <_Z9getStringPci+0x84>
        cc = getc();
    80006368:	ffffb097          	auipc	ra,0xffffb
    8000636c:	1a8080e7          	jalr	424(ra) # 80001510 <getc>
        if(cc < 1)
    80006370:	02050463          	beqz	a0,80006398 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80006374:	009984b3          	add	s1,s3,s1
    80006378:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000637c:	00a00793          	li	a5,10
    80006380:	00f50a63          	beq	a0,a5,80006394 <_Z9getStringPci+0x80>
    80006384:	00d00793          	li	a5,13
    80006388:	fcf51ae3          	bne	a0,a5,8000635c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8000638c:	00090493          	mv	s1,s2
    80006390:	0080006f          	j	80006398 <_Z9getStringPci+0x84>
    80006394:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80006398:	009984b3          	add	s1,s3,s1
    8000639c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800063a0:	00000613          	li	a2,0
    800063a4:	00100593          	li	a1,1
    800063a8:	0000b517          	auipc	a0,0xb
    800063ac:	dc850513          	addi	a0,a0,-568 # 80011170 <lockPrint>
    800063b0:	ffffb097          	auipc	ra,0xffffb
    800063b4:	e68080e7          	jalr	-408(ra) # 80001218 <copy_and_swap>
    800063b8:	fe0514e3          	bnez	a0,800063a0 <_Z9getStringPci+0x8c>
    return buf;
}
    800063bc:	00098513          	mv	a0,s3
    800063c0:	02813083          	ld	ra,40(sp)
    800063c4:	02013403          	ld	s0,32(sp)
    800063c8:	01813483          	ld	s1,24(sp)
    800063cc:	01013903          	ld	s2,16(sp)
    800063d0:	00813983          	ld	s3,8(sp)
    800063d4:	00013a03          	ld	s4,0(sp)
    800063d8:	03010113          	addi	sp,sp,48
    800063dc:	00008067          	ret

00000000800063e0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800063e0:	ff010113          	addi	sp,sp,-16
    800063e4:	00813423          	sd	s0,8(sp)
    800063e8:	01010413          	addi	s0,sp,16
    800063ec:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800063f0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800063f4:	0006c603          	lbu	a2,0(a3)
    800063f8:	fd06071b          	addiw	a4,a2,-48
    800063fc:	0ff77713          	andi	a4,a4,255
    80006400:	00900793          	li	a5,9
    80006404:	02e7e063          	bltu	a5,a4,80006424 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80006408:	0025179b          	slliw	a5,a0,0x2
    8000640c:	00a787bb          	addw	a5,a5,a0
    80006410:	0017979b          	slliw	a5,a5,0x1
    80006414:	00168693          	addi	a3,a3,1
    80006418:	00c787bb          	addw	a5,a5,a2
    8000641c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80006420:	fd5ff06f          	j	800063f4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80006424:	00813403          	ld	s0,8(sp)
    80006428:	01010113          	addi	sp,sp,16
    8000642c:	00008067          	ret

0000000080006430 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80006430:	fc010113          	addi	sp,sp,-64
    80006434:	02113c23          	sd	ra,56(sp)
    80006438:	02813823          	sd	s0,48(sp)
    8000643c:	02913423          	sd	s1,40(sp)
    80006440:	03213023          	sd	s2,32(sp)
    80006444:	01313c23          	sd	s3,24(sp)
    80006448:	04010413          	addi	s0,sp,64
    8000644c:	00050493          	mv	s1,a0
    80006450:	00058913          	mv	s2,a1
    80006454:	00060993          	mv	s3,a2
    LOCK();
    80006458:	00100613          	li	a2,1
    8000645c:	00000593          	li	a1,0
    80006460:	0000b517          	auipc	a0,0xb
    80006464:	d1050513          	addi	a0,a0,-752 # 80011170 <lockPrint>
    80006468:	ffffb097          	auipc	ra,0xffffb
    8000646c:	db0080e7          	jalr	-592(ra) # 80001218 <copy_and_swap>
    80006470:	fe0514e3          	bnez	a0,80006458 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80006474:	00098463          	beqz	s3,8000647c <_Z8printIntiii+0x4c>
    80006478:	0804c463          	bltz	s1,80006500 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000647c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80006480:	00000593          	li	a1,0
    }

    i = 0;
    80006484:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80006488:	0009079b          	sext.w	a5,s2
    8000648c:	0325773b          	remuw	a4,a0,s2
    80006490:	00048613          	mv	a2,s1
    80006494:	0014849b          	addiw	s1,s1,1
    80006498:	02071693          	slli	a3,a4,0x20
    8000649c:	0206d693          	srli	a3,a3,0x20
    800064a0:	00007717          	auipc	a4,0x7
    800064a4:	a6870713          	addi	a4,a4,-1432 # 8000cf08 <digits>
    800064a8:	00d70733          	add	a4,a4,a3
    800064ac:	00074683          	lbu	a3,0(a4)
    800064b0:	fd040713          	addi	a4,s0,-48
    800064b4:	00c70733          	add	a4,a4,a2
    800064b8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800064bc:	0005071b          	sext.w	a4,a0
    800064c0:	0325553b          	divuw	a0,a0,s2
    800064c4:	fcf772e3          	bgeu	a4,a5,80006488 <_Z8printIntiii+0x58>
    if(neg)
    800064c8:	00058c63          	beqz	a1,800064e0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800064cc:	fd040793          	addi	a5,s0,-48
    800064d0:	009784b3          	add	s1,a5,s1
    800064d4:	02d00793          	li	a5,45
    800064d8:	fef48823          	sb	a5,-16(s1)
    800064dc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800064e0:	fff4849b          	addiw	s1,s1,-1
    800064e4:	0204c463          	bltz	s1,8000650c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800064e8:	fd040793          	addi	a5,s0,-48
    800064ec:	009787b3          	add	a5,a5,s1
    800064f0:	ff07c503          	lbu	a0,-16(a5)
    800064f4:	ffffb097          	auipc	ra,0xffffb
    800064f8:	044080e7          	jalr	68(ra) # 80001538 <putc>
    800064fc:	fe5ff06f          	j	800064e0 <_Z8printIntiii+0xb0>
        x = -xx;
    80006500:	4090053b          	negw	a0,s1
        neg = 1;
    80006504:	00100593          	li	a1,1
        x = -xx;
    80006508:	f7dff06f          	j	80006484 <_Z8printIntiii+0x54>

    UNLOCK();
    8000650c:	00000613          	li	a2,0
    80006510:	00100593          	li	a1,1
    80006514:	0000b517          	auipc	a0,0xb
    80006518:	c5c50513          	addi	a0,a0,-932 # 80011170 <lockPrint>
    8000651c:	ffffb097          	auipc	ra,0xffffb
    80006520:	cfc080e7          	jalr	-772(ra) # 80001218 <copy_and_swap>
    80006524:	fe0514e3          	bnez	a0,8000650c <_Z8printIntiii+0xdc>
}
    80006528:	03813083          	ld	ra,56(sp)
    8000652c:	03013403          	ld	s0,48(sp)
    80006530:	02813483          	ld	s1,40(sp)
    80006534:	02013903          	ld	s2,32(sp)
    80006538:	01813983          	ld	s3,24(sp)
    8000653c:	04010113          	addi	sp,sp,64
    80006540:	00008067          	ret

0000000080006544 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"
BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006544:	fd010113          	addi	sp,sp,-48
    80006548:	02113423          	sd	ra,40(sp)
    8000654c:	02813023          	sd	s0,32(sp)
    80006550:	00913c23          	sd	s1,24(sp)
    80006554:	01213823          	sd	s2,16(sp)
    80006558:	01313423          	sd	s3,8(sp)
    8000655c:	03010413          	addi	s0,sp,48
    80006560:	00050493          	mv	s1,a0
    80006564:	00058913          	mv	s2,a1
    80006568:	0015879b          	addiw	a5,a1,1
    8000656c:	0007851b          	sext.w	a0,a5
    80006570:	00f4a023          	sw	a5,0(s1)
    80006574:	0004a823          	sw	zero,16(s1)
    80006578:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000657c:	00251513          	slli	a0,a0,0x2
    80006580:	ffffb097          	auipc	ra,0xffffb
    80006584:	cd8080e7          	jalr	-808(ra) # 80001258 <mem_alloc>
    80006588:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000658c:	01000513          	li	a0,16
    80006590:	ffffd097          	auipc	ra,0xffffd
    80006594:	e30080e7          	jalr	-464(ra) # 800033c0 <_Znwm>
    80006598:	00050993          	mv	s3,a0
    8000659c:	00000593          	li	a1,0
    800065a0:	ffffd097          	auipc	ra,0xffffd
    800065a4:	06c080e7          	jalr	108(ra) # 8000360c <_ZN9SemaphoreC1Ej>
    800065a8:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800065ac:	01000513          	li	a0,16
    800065b0:	ffffd097          	auipc	ra,0xffffd
    800065b4:	e10080e7          	jalr	-496(ra) # 800033c0 <_Znwm>
    800065b8:	00050993          	mv	s3,a0
    800065bc:	00090593          	mv	a1,s2
    800065c0:	ffffd097          	auipc	ra,0xffffd
    800065c4:	04c080e7          	jalr	76(ra) # 8000360c <_ZN9SemaphoreC1Ej>
    800065c8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800065cc:	01000513          	li	a0,16
    800065d0:	ffffd097          	auipc	ra,0xffffd
    800065d4:	df0080e7          	jalr	-528(ra) # 800033c0 <_Znwm>
    800065d8:	00050913          	mv	s2,a0
    800065dc:	00100593          	li	a1,1
    800065e0:	ffffd097          	auipc	ra,0xffffd
    800065e4:	02c080e7          	jalr	44(ra) # 8000360c <_ZN9SemaphoreC1Ej>
    800065e8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800065ec:	01000513          	li	a0,16
    800065f0:	ffffd097          	auipc	ra,0xffffd
    800065f4:	dd0080e7          	jalr	-560(ra) # 800033c0 <_Znwm>
    800065f8:	00050913          	mv	s2,a0
    800065fc:	00100593          	li	a1,1
    80006600:	ffffd097          	auipc	ra,0xffffd
    80006604:	00c080e7          	jalr	12(ra) # 8000360c <_ZN9SemaphoreC1Ej>
    80006608:	0324b823          	sd	s2,48(s1)
}
    8000660c:	02813083          	ld	ra,40(sp)
    80006610:	02013403          	ld	s0,32(sp)
    80006614:	01813483          	ld	s1,24(sp)
    80006618:	01013903          	ld	s2,16(sp)
    8000661c:	00813983          	ld	s3,8(sp)
    80006620:	03010113          	addi	sp,sp,48
    80006624:	00008067          	ret
    80006628:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000662c:	00098513          	mv	a0,s3
    80006630:	ffffd097          	auipc	ra,0xffffd
    80006634:	db8080e7          	jalr	-584(ra) # 800033e8 <_ZdlPv>
    80006638:	00048513          	mv	a0,s1
    8000663c:	0000c097          	auipc	ra,0xc
    80006640:	c1c080e7          	jalr	-996(ra) # 80012258 <_Unwind_Resume>
    80006644:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006648:	00098513          	mv	a0,s3
    8000664c:	ffffd097          	auipc	ra,0xffffd
    80006650:	d9c080e7          	jalr	-612(ra) # 800033e8 <_ZdlPv>
    80006654:	00048513          	mv	a0,s1
    80006658:	0000c097          	auipc	ra,0xc
    8000665c:	c00080e7          	jalr	-1024(ra) # 80012258 <_Unwind_Resume>
    80006660:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006664:	00090513          	mv	a0,s2
    80006668:	ffffd097          	auipc	ra,0xffffd
    8000666c:	d80080e7          	jalr	-640(ra) # 800033e8 <_ZdlPv>
    80006670:	00048513          	mv	a0,s1
    80006674:	0000c097          	auipc	ra,0xc
    80006678:	be4080e7          	jalr	-1052(ra) # 80012258 <_Unwind_Resume>
    8000667c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006680:	00090513          	mv	a0,s2
    80006684:	ffffd097          	auipc	ra,0xffffd
    80006688:	d64080e7          	jalr	-668(ra) # 800033e8 <_ZdlPv>
    8000668c:	00048513          	mv	a0,s1
    80006690:	0000c097          	auipc	ra,0xc
    80006694:	bc8080e7          	jalr	-1080(ra) # 80012258 <_Unwind_Resume>

0000000080006698 <_ZN9BufferCPP3putEi>:
    delete spaceAvailable;
    delete mutexTail;
    delete mutexHead;
}

void BufferCPP::put(int val) {
    80006698:	fe010113          	addi	sp,sp,-32
    8000669c:	00113c23          	sd	ra,24(sp)
    800066a0:	00813823          	sd	s0,16(sp)
    800066a4:	00913423          	sd	s1,8(sp)
    800066a8:	01213023          	sd	s2,0(sp)
    800066ac:	02010413          	addi	s0,sp,32
    800066b0:	00050493          	mv	s1,a0
    800066b4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800066b8:	01853503          	ld	a0,24(a0)
    800066bc:	ffffd097          	auipc	ra,0xffffd
    800066c0:	f18080e7          	jalr	-232(ra) # 800035d4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800066c4:	0304b503          	ld	a0,48(s1)
    800066c8:	ffffd097          	auipc	ra,0xffffd
    800066cc:	f0c080e7          	jalr	-244(ra) # 800035d4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800066d0:	0084b783          	ld	a5,8(s1)
    800066d4:	0144a703          	lw	a4,20(s1)
    800066d8:	00271713          	slli	a4,a4,0x2
    800066dc:	00e787b3          	add	a5,a5,a4
    800066e0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800066e4:	0144a783          	lw	a5,20(s1)
    800066e8:	0017879b          	addiw	a5,a5,1
    800066ec:	0004a703          	lw	a4,0(s1)
    800066f0:	02e7e7bb          	remw	a5,a5,a4
    800066f4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800066f8:	0304b503          	ld	a0,48(s1)
    800066fc:	ffffd097          	auipc	ra,0xffffd
    80006700:	f5c080e7          	jalr	-164(ra) # 80003658 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006704:	0204b503          	ld	a0,32(s1)
    80006708:	ffffd097          	auipc	ra,0xffffd
    8000670c:	f50080e7          	jalr	-176(ra) # 80003658 <_ZN9Semaphore6signalEv>

}
    80006710:	01813083          	ld	ra,24(sp)
    80006714:	01013403          	ld	s0,16(sp)
    80006718:	00813483          	ld	s1,8(sp)
    8000671c:	00013903          	ld	s2,0(sp)
    80006720:	02010113          	addi	sp,sp,32
    80006724:	00008067          	ret

0000000080006728 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006728:	fe010113          	addi	sp,sp,-32
    8000672c:	00113c23          	sd	ra,24(sp)
    80006730:	00813823          	sd	s0,16(sp)
    80006734:	00913423          	sd	s1,8(sp)
    80006738:	01213023          	sd	s2,0(sp)
    8000673c:	02010413          	addi	s0,sp,32
    80006740:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006744:	02053503          	ld	a0,32(a0)
    80006748:	ffffd097          	auipc	ra,0xffffd
    8000674c:	e8c080e7          	jalr	-372(ra) # 800035d4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006750:	0284b503          	ld	a0,40(s1)
    80006754:	ffffd097          	auipc	ra,0xffffd
    80006758:	e80080e7          	jalr	-384(ra) # 800035d4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000675c:	0084b703          	ld	a4,8(s1)
    80006760:	0104a783          	lw	a5,16(s1)
    80006764:	00279693          	slli	a3,a5,0x2
    80006768:	00d70733          	add	a4,a4,a3
    8000676c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006770:	0017879b          	addiw	a5,a5,1
    80006774:	0004a703          	lw	a4,0(s1)
    80006778:	02e7e7bb          	remw	a5,a5,a4
    8000677c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006780:	0284b503          	ld	a0,40(s1)
    80006784:	ffffd097          	auipc	ra,0xffffd
    80006788:	ed4080e7          	jalr	-300(ra) # 80003658 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000678c:	0184b503          	ld	a0,24(s1)
    80006790:	ffffd097          	auipc	ra,0xffffd
    80006794:	ec8080e7          	jalr	-312(ra) # 80003658 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006798:	00090513          	mv	a0,s2
    8000679c:	01813083          	ld	ra,24(sp)
    800067a0:	01013403          	ld	s0,16(sp)
    800067a4:	00813483          	ld	s1,8(sp)
    800067a8:	00013903          	ld	s2,0(sp)
    800067ac:	02010113          	addi	sp,sp,32
    800067b0:	00008067          	ret

00000000800067b4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800067b4:	fe010113          	addi	sp,sp,-32
    800067b8:	00113c23          	sd	ra,24(sp)
    800067bc:	00813823          	sd	s0,16(sp)
    800067c0:	00913423          	sd	s1,8(sp)
    800067c4:	01213023          	sd	s2,0(sp)
    800067c8:	02010413          	addi	s0,sp,32
    800067cc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800067d0:	02853503          	ld	a0,40(a0)
    800067d4:	ffffd097          	auipc	ra,0xffffd
    800067d8:	e00080e7          	jalr	-512(ra) # 800035d4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800067dc:	0304b503          	ld	a0,48(s1)
    800067e0:	ffffd097          	auipc	ra,0xffffd
    800067e4:	df4080e7          	jalr	-524(ra) # 800035d4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800067e8:	0144a783          	lw	a5,20(s1)
    800067ec:	0104a903          	lw	s2,16(s1)
    800067f0:	0327ce63          	blt	a5,s2,8000682c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800067f4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800067f8:	0304b503          	ld	a0,48(s1)
    800067fc:	ffffd097          	auipc	ra,0xffffd
    80006800:	e5c080e7          	jalr	-420(ra) # 80003658 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006804:	0284b503          	ld	a0,40(s1)
    80006808:	ffffd097          	auipc	ra,0xffffd
    8000680c:	e50080e7          	jalr	-432(ra) # 80003658 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006810:	00090513          	mv	a0,s2
    80006814:	01813083          	ld	ra,24(sp)
    80006818:	01013403          	ld	s0,16(sp)
    8000681c:	00813483          	ld	s1,8(sp)
    80006820:	00013903          	ld	s2,0(sp)
    80006824:	02010113          	addi	sp,sp,32
    80006828:	00008067          	ret
        ret = cap - head + tail;
    8000682c:	0004a703          	lw	a4,0(s1)
    80006830:	4127093b          	subw	s2,a4,s2
    80006834:	00f9093b          	addw	s2,s2,a5
    80006838:	fc1ff06f          	j	800067f8 <_ZN9BufferCPP6getCntEv+0x44>

000000008000683c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000683c:	fe010113          	addi	sp,sp,-32
    80006840:	00113c23          	sd	ra,24(sp)
    80006844:	00813823          	sd	s0,16(sp)
    80006848:	00913423          	sd	s1,8(sp)
    8000684c:	02010413          	addi	s0,sp,32
    80006850:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006854:	00a00513          	li	a0,10
    80006858:	ffffd097          	auipc	ra,0xffffd
    8000685c:	e60080e7          	jalr	-416(ra) # 800036b8 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006860:	00004517          	auipc	a0,0x4
    80006864:	c8850513          	addi	a0,a0,-888 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80006868:	00000097          	auipc	ra,0x0
    8000686c:	a30080e7          	jalr	-1488(ra) # 80006298 <_Z11printStringPKc>
    while (getCnt()) {
    80006870:	00048513          	mv	a0,s1
    80006874:	00000097          	auipc	ra,0x0
    80006878:	f40080e7          	jalr	-192(ra) # 800067b4 <_ZN9BufferCPP6getCntEv>
    8000687c:	02050c63          	beqz	a0,800068b4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006880:	0084b783          	ld	a5,8(s1)
    80006884:	0104a703          	lw	a4,16(s1)
    80006888:	00271713          	slli	a4,a4,0x2
    8000688c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006890:	0007c503          	lbu	a0,0(a5)
    80006894:	ffffd097          	auipc	ra,0xffffd
    80006898:	e24080e7          	jalr	-476(ra) # 800036b8 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000689c:	0104a783          	lw	a5,16(s1)
    800068a0:	0017879b          	addiw	a5,a5,1
    800068a4:	0004a703          	lw	a4,0(s1)
    800068a8:	02e7e7bb          	remw	a5,a5,a4
    800068ac:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800068b0:	fc1ff06f          	j	80006870 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800068b4:	02100513          	li	a0,33
    800068b8:	ffffd097          	auipc	ra,0xffffd
    800068bc:	e00080e7          	jalr	-512(ra) # 800036b8 <_ZN7Console4putcEc>
    Console::putc('\n');
    800068c0:	00a00513          	li	a0,10
    800068c4:	ffffd097          	auipc	ra,0xffffd
    800068c8:	df4080e7          	jalr	-524(ra) # 800036b8 <_ZN7Console4putcEc>
    mem_free(buffer);
    800068cc:	0084b503          	ld	a0,8(s1)
    800068d0:	ffffb097          	auipc	ra,0xffffb
    800068d4:	9b8080e7          	jalr	-1608(ra) # 80001288 <mem_free>
    delete itemAvailable;
    800068d8:	0204b503          	ld	a0,32(s1)
    800068dc:	00050863          	beqz	a0,800068ec <_ZN9BufferCPPD1Ev+0xb0>
    800068e0:	00053783          	ld	a5,0(a0)
    800068e4:	0087b783          	ld	a5,8(a5)
    800068e8:	000780e7          	jalr	a5
    delete spaceAvailable;
    800068ec:	0184b503          	ld	a0,24(s1)
    800068f0:	00050863          	beqz	a0,80006900 <_ZN9BufferCPPD1Ev+0xc4>
    800068f4:	00053783          	ld	a5,0(a0)
    800068f8:	0087b783          	ld	a5,8(a5)
    800068fc:	000780e7          	jalr	a5
    delete mutexTail;
    80006900:	0304b503          	ld	a0,48(s1)
    80006904:	00050863          	beqz	a0,80006914 <_ZN9BufferCPPD1Ev+0xd8>
    80006908:	00053783          	ld	a5,0(a0)
    8000690c:	0087b783          	ld	a5,8(a5)
    80006910:	000780e7          	jalr	a5
    delete mutexHead;
    80006914:	0284b503          	ld	a0,40(s1)
    80006918:	00050863          	beqz	a0,80006928 <_ZN9BufferCPPD1Ev+0xec>
    8000691c:	00053783          	ld	a5,0(a0)
    80006920:	0087b783          	ld	a5,8(a5)
    80006924:	000780e7          	jalr	a5
}
    80006928:	01813083          	ld	ra,24(sp)
    8000692c:	01013403          	ld	s0,16(sp)
    80006930:	00813483          	ld	s1,8(sp)
    80006934:	02010113          	addi	sp,sp,32
    80006938:	00008067          	ret

000000008000693c <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    8000693c:	f8010113          	addi	sp,sp,-128
    80006940:	06113c23          	sd	ra,120(sp)
    80006944:	06813823          	sd	s0,112(sp)
    80006948:	06913423          	sd	s1,104(sp)
    8000694c:	07213023          	sd	s2,96(sp)
    80006950:	05313c23          	sd	s3,88(sp)
    80006954:	05413823          	sd	s4,80(sp)
    80006958:	05513423          	sd	s5,72(sp)
    8000695c:	05613023          	sd	s6,64(sp)
    80006960:	03713c23          	sd	s7,56(sp)
    80006964:	03813823          	sd	s8,48(sp)
    80006968:	03913423          	sd	s9,40(sp)
    8000696c:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    80006970:	00010c13          	mv	s8,sp
        printString("Unesite broj proizvodjaca?\n");
    80006974:	00004517          	auipc	a0,0x4
    80006978:	98450513          	addi	a0,a0,-1660 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    8000697c:	00000097          	auipc	ra,0x0
    80006980:	91c080e7          	jalr	-1764(ra) # 80006298 <_Z11printStringPKc>
        getString(input, 30);
    80006984:	01e00593          	li	a1,30
    80006988:	f8040493          	addi	s1,s0,-128
    8000698c:	00048513          	mv	a0,s1
    80006990:	00000097          	auipc	ra,0x0
    80006994:	984080e7          	jalr	-1660(ra) # 80006314 <_Z9getStringPci>
        threadNum = stringToInt(input);
    80006998:	00048513          	mv	a0,s1
    8000699c:	00000097          	auipc	ra,0x0
    800069a0:	a44080e7          	jalr	-1468(ra) # 800063e0 <_Z11stringToIntPKc>
    800069a4:	00050993          	mv	s3,a0
        printString("Unesite velicinu bafera?\n");
    800069a8:	00004517          	auipc	a0,0x4
    800069ac:	97050513          	addi	a0,a0,-1680 # 8000a318 <CONSOLE_STATUS+0x308>
    800069b0:	00000097          	auipc	ra,0x0
    800069b4:	8e8080e7          	jalr	-1816(ra) # 80006298 <_Z11printStringPKc>
        getString(input, 30);
    800069b8:	01e00593          	li	a1,30
    800069bc:	00048513          	mv	a0,s1
    800069c0:	00000097          	auipc	ra,0x0
    800069c4:	954080e7          	jalr	-1708(ra) # 80006314 <_Z9getStringPci>
        n = stringToInt(input);
    800069c8:	00048513          	mv	a0,s1
    800069cc:	00000097          	auipc	ra,0x0
    800069d0:	a14080e7          	jalr	-1516(ra) # 800063e0 <_Z11stringToIntPKc>
    800069d4:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    800069d8:	00004517          	auipc	a0,0x4
    800069dc:	96050513          	addi	a0,a0,-1696 # 8000a338 <CONSOLE_STATUS+0x328>
    800069e0:	00000097          	auipc	ra,0x0
    800069e4:	8b8080e7          	jalr	-1864(ra) # 80006298 <_Z11printStringPKc>
    800069e8:	00000613          	li	a2,0
    800069ec:	00a00593          	li	a1,10
    800069f0:	00098513          	mv	a0,s3
    800069f4:	00000097          	auipc	ra,0x0
    800069f8:	a3c080e7          	jalr	-1476(ra) # 80006430 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    800069fc:	00004517          	auipc	a0,0x4
    80006a00:	95450513          	addi	a0,a0,-1708 # 8000a350 <CONSOLE_STATUS+0x340>
    80006a04:	00000097          	auipc	ra,0x0
    80006a08:	894080e7          	jalr	-1900(ra) # 80006298 <_Z11printStringPKc>
    80006a0c:	00000613          	li	a2,0
    80006a10:	00a00593          	li	a1,10
    80006a14:	00048513          	mv	a0,s1
    80006a18:	00000097          	auipc	ra,0x0
    80006a1c:	a18080e7          	jalr	-1512(ra) # 80006430 <_Z8printIntiii>
        printString(".\n");
    80006a20:	00004517          	auipc	a0,0x4
    80006a24:	94850513          	addi	a0,a0,-1720 # 8000a368 <CONSOLE_STATUS+0x358>
    80006a28:	00000097          	auipc	ra,0x0
    80006a2c:	870080e7          	jalr	-1936(ra) # 80006298 <_Z11printStringPKc>
        if(threadNum > n) {
    80006a30:	0334c463          	blt	s1,s3,80006a58 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x11c>
        } else if (threadNum < 1) {
    80006a34:	03305c63          	blez	s3,80006a6c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x130>
        BufferCPP *buffer = new BufferCPP(n);
    80006a38:	03800513          	li	a0,56
    80006a3c:	ffffd097          	auipc	ra,0xffffd
    80006a40:	984080e7          	jalr	-1660(ra) # 800033c0 <_Znwm>
    80006a44:	00050a93          	mv	s5,a0
    80006a48:	00048593          	mv	a1,s1
    80006a4c:	00000097          	auipc	ra,0x0
    80006a50:	af8080e7          	jalr	-1288(ra) # 80006544 <_ZN9BufferCPPC1Ei>
    80006a54:	0300006f          	j	80006a84 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x148>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80006a58:	00004517          	auipc	a0,0x4
    80006a5c:	91850513          	addi	a0,a0,-1768 # 8000a370 <CONSOLE_STATUS+0x360>
    80006a60:	00000097          	auipc	ra,0x0
    80006a64:	838080e7          	jalr	-1992(ra) # 80006298 <_Z11printStringPKc>
            return;
    80006a68:	0140006f          	j	80006a7c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x140>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    80006a6c:	00004517          	auipc	a0,0x4
    80006a70:	94450513          	addi	a0,a0,-1724 # 8000a3b0 <CONSOLE_STATUS+0x3a0>
    80006a74:	00000097          	auipc	ra,0x0
    80006a78:	824080e7          	jalr	-2012(ra) # 80006298 <_Z11printStringPKc>
            return;
    80006a7c:	000c0113          	mv	sp,s8
    80006a80:	21c0006f          	j	80006c9c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x360>
        waitForAll = new Semaphore(0);
    80006a84:	01000513          	li	a0,16
    80006a88:	ffffd097          	auipc	ra,0xffffd
    80006a8c:	938080e7          	jalr	-1736(ra) # 800033c0 <_Znwm>
    80006a90:	00050493          	mv	s1,a0
    80006a94:	00000593          	li	a1,0
    80006a98:	ffffd097          	auipc	ra,0xffffd
    80006a9c:	b74080e7          	jalr	-1164(ra) # 8000360c <_ZN9SemaphoreC1Ej>
    80006aa0:	0000a717          	auipc	a4,0xa
    80006aa4:	6d870713          	addi	a4,a4,1752 # 80011178 <_ZN19ConsumerProducerCPP9threadEndE>
    80006aa8:	00973423          	sd	s1,8(a4)
        Thread *producers[threadNum];
    80006aac:	00399793          	slli	a5,s3,0x3
    80006ab0:	00f78793          	addi	a5,a5,15
    80006ab4:	ff07f793          	andi	a5,a5,-16
    80006ab8:	40f10133          	sub	sp,sp,a5
    80006abc:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    80006ac0:	0019869b          	addiw	a3,s3,1
    80006ac4:	00169793          	slli	a5,a3,0x1
    80006ac8:	00d787b3          	add	a5,a5,a3
    80006acc:	00379793          	slli	a5,a5,0x3
    80006ad0:	00f78793          	addi	a5,a5,15
    80006ad4:	ff07f793          	andi	a5,a5,-16
    80006ad8:	40f10133          	sub	sp,sp,a5
    80006adc:	00010b13          	mv	s6,sp
        threadData[threadNum].id = threadNum;
    80006ae0:	00199493          	slli	s1,s3,0x1
    80006ae4:	013484b3          	add	s1,s1,s3
    80006ae8:	00349493          	slli	s1,s1,0x3
    80006aec:	009b04b3          	add	s1,s6,s1
    80006af0:	0134a023          	sw	s3,0(s1)
        threadData[threadNum].buffer = buffer;
    80006af4:	0154b423          	sd	s5,8(s1)
        threadData[threadNum].sem = waitForAll;
    80006af8:	00873783          	ld	a5,8(a4)
    80006afc:	00f4b823          	sd	a5,16(s1)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80006b00:	01800513          	li	a0,24
    80006b04:	ffffd097          	auipc	ra,0xffffd
    80006b08:	8bc080e7          	jalr	-1860(ra) # 800033c0 <_Znwm>
    80006b0c:	00050b93          	mv	s7,a0
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    80006b10:	ffffd097          	auipc	ra,0xffffd
    80006b14:	a80080e7          	jalr	-1408(ra) # 80003590 <_ZN6ThreadC1Ev>
    80006b18:	00006797          	auipc	a5,0x6
    80006b1c:	46878793          	addi	a5,a5,1128 # 8000cf80 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80006b20:	00fbb023          	sd	a5,0(s7)
    80006b24:	009bb823          	sd	s1,16(s7)
        consumer->start();
    80006b28:	000b8513          	mv	a0,s7
    80006b2c:	ffffd097          	auipc	ra,0xffffd
    80006b30:	964080e7          	jalr	-1692(ra) # 80003490 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    80006b34:	000b2023          	sw	zero,0(s6)
        threadData[0].buffer = buffer;
    80006b38:	015b3423          	sd	s5,8(s6)
        threadData[0].sem = waitForAll;
    80006b3c:	0000a797          	auipc	a5,0xa
    80006b40:	6447b783          	ld	a5,1604(a5) # 80011180 <_ZN19ConsumerProducerCPP10waitForAllE>
    80006b44:	00fb3823          	sd	a5,16(s6)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80006b48:	01800513          	li	a0,24
    80006b4c:	ffffd097          	auipc	ra,0xffffd
    80006b50:	874080e7          	jalr	-1932(ra) # 800033c0 <_Znwm>
    80006b54:	00050493          	mv	s1,a0
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80006b58:	ffffd097          	auipc	ra,0xffffd
    80006b5c:	a38080e7          	jalr	-1480(ra) # 80003590 <_ZN6ThreadC1Ev>
    80006b60:	00006797          	auipc	a5,0x6
    80006b64:	3d078793          	addi	a5,a5,976 # 8000cf30 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80006b68:	00f4b023          	sd	a5,0(s1)
    80006b6c:	0164b823          	sd	s6,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80006b70:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    80006b74:	00048513          	mv	a0,s1
    80006b78:	ffffd097          	auipc	ra,0xffffd
    80006b7c:	918080e7          	jalr	-1768(ra) # 80003490 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80006b80:	00100913          	li	s2,1
    80006b84:	0300006f          	j	80006bb4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x278>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80006b88:	00006797          	auipc	a5,0x6
    80006b8c:	3d078793          	addi	a5,a5,976 # 8000cf58 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80006b90:	00fcb023          	sd	a5,0(s9)
    80006b94:	009cb823          	sd	s1,16(s9)
            producers[i] = new Producer(&threadData[i]);
    80006b98:	00391793          	slli	a5,s2,0x3
    80006b9c:	00fa07b3          	add	a5,s4,a5
    80006ba0:	0197b023          	sd	s9,0(a5)
            producers[i]->start();
    80006ba4:	000c8513          	mv	a0,s9
    80006ba8:	ffffd097          	auipc	ra,0xffffd
    80006bac:	8e8080e7          	jalr	-1816(ra) # 80003490 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80006bb0:	0019091b          	addiw	s2,s2,1
    80006bb4:	05395263          	bge	s2,s3,80006bf8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2bc>
            threadData[i].id = i;
    80006bb8:	00191493          	slli	s1,s2,0x1
    80006bbc:	012484b3          	add	s1,s1,s2
    80006bc0:	00349493          	slli	s1,s1,0x3
    80006bc4:	009b04b3          	add	s1,s6,s1
    80006bc8:	0124a023          	sw	s2,0(s1)
            threadData[i].buffer = buffer;
    80006bcc:	0154b423          	sd	s5,8(s1)
            threadData[i].sem = waitForAll;
    80006bd0:	0000a797          	auipc	a5,0xa
    80006bd4:	5b07b783          	ld	a5,1456(a5) # 80011180 <_ZN19ConsumerProducerCPP10waitForAllE>
    80006bd8:	00f4b823          	sd	a5,16(s1)
            producers[i] = new Producer(&threadData[i]);
    80006bdc:	01800513          	li	a0,24
    80006be0:	ffffc097          	auipc	ra,0xffffc
    80006be4:	7e0080e7          	jalr	2016(ra) # 800033c0 <_Znwm>
    80006be8:	00050c93          	mv	s9,a0
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80006bec:	ffffd097          	auipc	ra,0xffffd
    80006bf0:	9a4080e7          	jalr	-1628(ra) # 80003590 <_ZN6ThreadC1Ev>
    80006bf4:	f95ff06f          	j	80006b88 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x24c>
        Thread::dispatch();
    80006bf8:	ffffd097          	auipc	ra,0xffffd
    80006bfc:	8d0080e7          	jalr	-1840(ra) # 800034c8 <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    80006c00:	00000493          	li	s1,0
    80006c04:	0099ce63          	blt	s3,s1,80006c20 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2e4>
            waitForAll->wait();
    80006c08:	0000a517          	auipc	a0,0xa
    80006c0c:	57853503          	ld	a0,1400(a0) # 80011180 <_ZN19ConsumerProducerCPP10waitForAllE>
    80006c10:	ffffd097          	auipc	ra,0xffffd
    80006c14:	9c4080e7          	jalr	-1596(ra) # 800035d4 <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    80006c18:	0014849b          	addiw	s1,s1,1
    80006c1c:	fe9ff06f          	j	80006c04 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2c8>
        delete waitForAll;
    80006c20:	0000a517          	auipc	a0,0xa
    80006c24:	56053503          	ld	a0,1376(a0) # 80011180 <_ZN19ConsumerProducerCPP10waitForAllE>
    80006c28:	00050863          	beqz	a0,80006c38 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2fc>
    80006c2c:	00053783          	ld	a5,0(a0)
    80006c30:	0087b783          	ld	a5,8(a5)
    80006c34:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    80006c38:	00000493          	li	s1,0
    80006c3c:	0080006f          	j	80006c44 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x308>
        for (int i = 0; i < threadNum; i++) {
    80006c40:	0014849b          	addiw	s1,s1,1
    80006c44:	0334d263          	bge	s1,s3,80006c68 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x32c>
            delete producers[i];
    80006c48:	00349793          	slli	a5,s1,0x3
    80006c4c:	00fa07b3          	add	a5,s4,a5
    80006c50:	0007b503          	ld	a0,0(a5)
    80006c54:	fe0506e3          	beqz	a0,80006c40 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
    80006c58:	00053783          	ld	a5,0(a0)
    80006c5c:	0087b783          	ld	a5,8(a5)
    80006c60:	000780e7          	jalr	a5
    80006c64:	fddff06f          	j	80006c40 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
        delete consumer;
    80006c68:	000b8a63          	beqz	s7,80006c7c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x340>
    80006c6c:	000bb783          	ld	a5,0(s7)
    80006c70:	0087b783          	ld	a5,8(a5)
    80006c74:	000b8513          	mv	a0,s7
    80006c78:	000780e7          	jalr	a5
        delete buffer;
    80006c7c:	000a8e63          	beqz	s5,80006c98 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x35c>
    80006c80:	000a8513          	mv	a0,s5
    80006c84:	00000097          	auipc	ra,0x0
    80006c88:	bb8080e7          	jalr	-1096(ra) # 8000683c <_ZN9BufferCPPD1Ev>
    80006c8c:	000a8513          	mv	a0,s5
    80006c90:	ffffc097          	auipc	ra,0xffffc
    80006c94:	758080e7          	jalr	1880(ra) # 800033e8 <_ZdlPv>
    80006c98:	000c0113          	mv	sp,s8
    }
    80006c9c:	f8040113          	addi	sp,s0,-128
    80006ca0:	07813083          	ld	ra,120(sp)
    80006ca4:	07013403          	ld	s0,112(sp)
    80006ca8:	06813483          	ld	s1,104(sp)
    80006cac:	06013903          	ld	s2,96(sp)
    80006cb0:	05813983          	ld	s3,88(sp)
    80006cb4:	05013a03          	ld	s4,80(sp)
    80006cb8:	04813a83          	ld	s5,72(sp)
    80006cbc:	04013b03          	ld	s6,64(sp)
    80006cc0:	03813b83          	ld	s7,56(sp)
    80006cc4:	03013c03          	ld	s8,48(sp)
    80006cc8:	02813c83          	ld	s9,40(sp)
    80006ccc:	08010113          	addi	sp,sp,128
    80006cd0:	00008067          	ret
    80006cd4:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    80006cd8:	000a8513          	mv	a0,s5
    80006cdc:	ffffc097          	auipc	ra,0xffffc
    80006ce0:	70c080e7          	jalr	1804(ra) # 800033e8 <_ZdlPv>
    80006ce4:	00048513          	mv	a0,s1
    80006ce8:	0000b097          	auipc	ra,0xb
    80006cec:	570080e7          	jalr	1392(ra) # 80012258 <_Unwind_Resume>
    80006cf0:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    80006cf4:	00048513          	mv	a0,s1
    80006cf8:	ffffc097          	auipc	ra,0xffffc
    80006cfc:	6f0080e7          	jalr	1776(ra) # 800033e8 <_ZdlPv>
    80006d00:	00090513          	mv	a0,s2
    80006d04:	0000b097          	auipc	ra,0xb
    80006d08:	554080e7          	jalr	1364(ra) # 80012258 <_Unwind_Resume>
    80006d0c:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80006d10:	000b8513          	mv	a0,s7
    80006d14:	ffffc097          	auipc	ra,0xffffc
    80006d18:	6d4080e7          	jalr	1748(ra) # 800033e8 <_ZdlPv>
    80006d1c:	00048513          	mv	a0,s1
    80006d20:	0000b097          	auipc	ra,0xb
    80006d24:	538080e7          	jalr	1336(ra) # 80012258 <_Unwind_Resume>
    80006d28:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80006d2c:	00048513          	mv	a0,s1
    80006d30:	ffffc097          	auipc	ra,0xffffc
    80006d34:	6b8080e7          	jalr	1720(ra) # 800033e8 <_ZdlPv>
    80006d38:	00090513          	mv	a0,s2
    80006d3c:	0000b097          	auipc	ra,0xb
    80006d40:	51c080e7          	jalr	1308(ra) # 80012258 <_Unwind_Resume>
    80006d44:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    80006d48:	000c8513          	mv	a0,s9
    80006d4c:	ffffc097          	auipc	ra,0xffffc
    80006d50:	69c080e7          	jalr	1692(ra) # 800033e8 <_ZdlPv>
    80006d54:	00048513          	mv	a0,s1
    80006d58:	0000b097          	auipc	ra,0xb
    80006d5c:	500080e7          	jalr	1280(ra) # 80012258 <_Unwind_Resume>

0000000080006d60 <_Z8userMainv>:
//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta


void userMain()
{
    80006d60:	ff010113          	addi	sp,sp,-16
    80006d64:	00113423          	sd	ra,8(sp)
    80006d68:	00813023          	sd	s0,0(sp)
    80006d6c:	01010413          	addi	s0,sp,16

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80006d70:	00000097          	auipc	ra,0x0
    80006d74:	bcc080e7          	jalr	-1076(ra) # 8000693c <_ZN19ConsumerProducerCPP20testConsumerProducerEv>
    80006d78:	00813083          	ld	ra,8(sp)
    80006d7c:	00013403          	ld	s0,0(sp)
    80006d80:	01010113          	addi	sp,sp,16
    80006d84:	00008067          	ret

0000000080006d88 <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    80006d88:	fd010113          	addi	sp,sp,-48
    80006d8c:	02113423          	sd	ra,40(sp)
    80006d90:	02813023          	sd	s0,32(sp)
    80006d94:	00913c23          	sd	s1,24(sp)
    80006d98:	01213823          	sd	s2,16(sp)
    80006d9c:	01313423          	sd	s3,8(sp)
    80006da0:	03010413          	addi	s0,sp,48
    80006da4:	00050913          	mv	s2,a0
            int i = 0;
    80006da8:	00000993          	li	s3,0
    80006dac:	0100006f          	j	80006dbc <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    80006db0:	00a00513          	li	a0,10
    80006db4:	ffffd097          	auipc	ra,0xffffd
    80006db8:	904080e7          	jalr	-1788(ra) # 800036b8 <_ZN7Console4putcEc>
            while (!threadEnd) {
    80006dbc:	0000a797          	auipc	a5,0xa
    80006dc0:	3bc7a783          	lw	a5,956(a5) # 80011178 <_ZN19ConsumerProducerCPP9threadEndE>
    80006dc4:	04079a63          	bnez	a5,80006e18 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    80006dc8:	01093783          	ld	a5,16(s2)
    80006dcc:	0087b503          	ld	a0,8(a5)
    80006dd0:	00000097          	auipc	ra,0x0
    80006dd4:	958080e7          	jalr	-1704(ra) # 80006728 <_ZN9BufferCPP3getEv>
                i++;
    80006dd8:	0019849b          	addiw	s1,s3,1
    80006ddc:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    80006de0:	0ff57513          	andi	a0,a0,255
    80006de4:	ffffd097          	auipc	ra,0xffffd
    80006de8:	8d4080e7          	jalr	-1836(ra) # 800036b8 <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    80006dec:	05000793          	li	a5,80
    80006df0:	02f4e4bb          	remw	s1,s1,a5
    80006df4:	fc0494e3          	bnez	s1,80006dbc <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    80006df8:	fb9ff06f          	j	80006db0 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    80006dfc:	01093783          	ld	a5,16(s2)
    80006e00:	0087b503          	ld	a0,8(a5)
    80006e04:	00000097          	auipc	ra,0x0
    80006e08:	924080e7          	jalr	-1756(ra) # 80006728 <_ZN9BufferCPP3getEv>
                Console::putc(key);
    80006e0c:	0ff57513          	andi	a0,a0,255
    80006e10:	ffffd097          	auipc	ra,0xffffd
    80006e14:	8a8080e7          	jalr	-1880(ra) # 800036b8 <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    80006e18:	01093783          	ld	a5,16(s2)
    80006e1c:	0087b503          	ld	a0,8(a5)
    80006e20:	00000097          	auipc	ra,0x0
    80006e24:	994080e7          	jalr	-1644(ra) # 800067b4 <_ZN9BufferCPP6getCntEv>
    80006e28:	fca04ae3          	bgtz	a0,80006dfc <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    80006e2c:	01093783          	ld	a5,16(s2)
    80006e30:	0107b503          	ld	a0,16(a5)
    80006e34:	ffffd097          	auipc	ra,0xffffd
    80006e38:	824080e7          	jalr	-2012(ra) # 80003658 <_ZN9Semaphore6signalEv>
        }
    80006e3c:	02813083          	ld	ra,40(sp)
    80006e40:	02013403          	ld	s0,32(sp)
    80006e44:	01813483          	ld	s1,24(sp)
    80006e48:	01013903          	ld	s2,16(sp)
    80006e4c:	00813983          	ld	s3,8(sp)
    80006e50:	03010113          	addi	sp,sp,48
    80006e54:	00008067          	ret

0000000080006e58 <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    80006e58:	ff010113          	addi	sp,sp,-16
    80006e5c:	00113423          	sd	ra,8(sp)
    80006e60:	00813023          	sd	s0,0(sp)
    80006e64:	01010413          	addi	s0,sp,16
    80006e68:	00006797          	auipc	a5,0x6
    80006e6c:	11878793          	addi	a5,a5,280 # 8000cf80 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80006e70:	00f53023          	sd	a5,0(a0)
    80006e74:	ffffc097          	auipc	ra,0xffffc
    80006e78:	4dc080e7          	jalr	1244(ra) # 80003350 <_ZN6ThreadD1Ev>
    80006e7c:	00813083          	ld	ra,8(sp)
    80006e80:	00013403          	ld	s0,0(sp)
    80006e84:	01010113          	addi	sp,sp,16
    80006e88:	00008067          	ret

0000000080006e8c <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    80006e8c:	fe010113          	addi	sp,sp,-32
    80006e90:	00113c23          	sd	ra,24(sp)
    80006e94:	00813823          	sd	s0,16(sp)
    80006e98:	00913423          	sd	s1,8(sp)
    80006e9c:	02010413          	addi	s0,sp,32
    80006ea0:	00050493          	mv	s1,a0
    80006ea4:	00006797          	auipc	a5,0x6
    80006ea8:	0dc78793          	addi	a5,a5,220 # 8000cf80 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80006eac:	00f53023          	sd	a5,0(a0)
    80006eb0:	ffffc097          	auipc	ra,0xffffc
    80006eb4:	4a0080e7          	jalr	1184(ra) # 80003350 <_ZN6ThreadD1Ev>
    80006eb8:	00048513          	mv	a0,s1
    80006ebc:	ffffc097          	auipc	ra,0xffffc
    80006ec0:	52c080e7          	jalr	1324(ra) # 800033e8 <_ZdlPv>
    80006ec4:	01813083          	ld	ra,24(sp)
    80006ec8:	01013403          	ld	s0,16(sp)
    80006ecc:	00813483          	ld	s1,8(sp)
    80006ed0:	02010113          	addi	sp,sp,32
    80006ed4:	00008067          	ret

0000000080006ed8 <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    80006ed8:	ff010113          	addi	sp,sp,-16
    80006edc:	00113423          	sd	ra,8(sp)
    80006ee0:	00813023          	sd	s0,0(sp)
    80006ee4:	01010413          	addi	s0,sp,16
    80006ee8:	00006797          	auipc	a5,0x6
    80006eec:	04878793          	addi	a5,a5,72 # 8000cf30 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80006ef0:	00f53023          	sd	a5,0(a0)
    80006ef4:	ffffc097          	auipc	ra,0xffffc
    80006ef8:	45c080e7          	jalr	1116(ra) # 80003350 <_ZN6ThreadD1Ev>
    80006efc:	00813083          	ld	ra,8(sp)
    80006f00:	00013403          	ld	s0,0(sp)
    80006f04:	01010113          	addi	sp,sp,16
    80006f08:	00008067          	ret

0000000080006f0c <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    80006f0c:	fe010113          	addi	sp,sp,-32
    80006f10:	00113c23          	sd	ra,24(sp)
    80006f14:	00813823          	sd	s0,16(sp)
    80006f18:	00913423          	sd	s1,8(sp)
    80006f1c:	02010413          	addi	s0,sp,32
    80006f20:	00050493          	mv	s1,a0
    80006f24:	00006797          	auipc	a5,0x6
    80006f28:	00c78793          	addi	a5,a5,12 # 8000cf30 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80006f2c:	00f53023          	sd	a5,0(a0)
    80006f30:	ffffc097          	auipc	ra,0xffffc
    80006f34:	420080e7          	jalr	1056(ra) # 80003350 <_ZN6ThreadD1Ev>
    80006f38:	00048513          	mv	a0,s1
    80006f3c:	ffffc097          	auipc	ra,0xffffc
    80006f40:	4ac080e7          	jalr	1196(ra) # 800033e8 <_ZdlPv>
    80006f44:	01813083          	ld	ra,24(sp)
    80006f48:	01013403          	ld	s0,16(sp)
    80006f4c:	00813483          	ld	s1,8(sp)
    80006f50:	02010113          	addi	sp,sp,32
    80006f54:	00008067          	ret

0000000080006f58 <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    80006f58:	ff010113          	addi	sp,sp,-16
    80006f5c:	00113423          	sd	ra,8(sp)
    80006f60:	00813023          	sd	s0,0(sp)
    80006f64:	01010413          	addi	s0,sp,16
    80006f68:	00006797          	auipc	a5,0x6
    80006f6c:	ff078793          	addi	a5,a5,-16 # 8000cf58 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80006f70:	00f53023          	sd	a5,0(a0)
    80006f74:	ffffc097          	auipc	ra,0xffffc
    80006f78:	3dc080e7          	jalr	988(ra) # 80003350 <_ZN6ThreadD1Ev>
    80006f7c:	00813083          	ld	ra,8(sp)
    80006f80:	00013403          	ld	s0,0(sp)
    80006f84:	01010113          	addi	sp,sp,16
    80006f88:	00008067          	ret

0000000080006f8c <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    80006f8c:	fe010113          	addi	sp,sp,-32
    80006f90:	00113c23          	sd	ra,24(sp)
    80006f94:	00813823          	sd	s0,16(sp)
    80006f98:	00913423          	sd	s1,8(sp)
    80006f9c:	02010413          	addi	s0,sp,32
    80006fa0:	00050493          	mv	s1,a0
    80006fa4:	00006797          	auipc	a5,0x6
    80006fa8:	fb478793          	addi	a5,a5,-76 # 8000cf58 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80006fac:	00f53023          	sd	a5,0(a0)
    80006fb0:	ffffc097          	auipc	ra,0xffffc
    80006fb4:	3a0080e7          	jalr	928(ra) # 80003350 <_ZN6ThreadD1Ev>
    80006fb8:	00048513          	mv	a0,s1
    80006fbc:	ffffc097          	auipc	ra,0xffffc
    80006fc0:	42c080e7          	jalr	1068(ra) # 800033e8 <_ZdlPv>
    80006fc4:	01813083          	ld	ra,24(sp)
    80006fc8:	01013403          	ld	s0,16(sp)
    80006fcc:	00813483          	ld	s1,8(sp)
    80006fd0:	02010113          	addi	sp,sp,32
    80006fd4:	00008067          	ret

0000000080006fd8 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    80006fd8:	fe010113          	addi	sp,sp,-32
    80006fdc:	00113c23          	sd	ra,24(sp)
    80006fe0:	00813823          	sd	s0,16(sp)
    80006fe4:	00913423          	sd	s1,8(sp)
    80006fe8:	02010413          	addi	s0,sp,32
    80006fec:	00050493          	mv	s1,a0
            while ((key = getc()) != 'q') {
    80006ff0:	ffffa097          	auipc	ra,0xffffa
    80006ff4:	520080e7          	jalr	1312(ra) # 80001510 <getc>
    80006ff8:	0005059b          	sext.w	a1,a0
    80006ffc:	07100793          	li	a5,113
    80007000:	00f58c63          	beq	a1,a5,80007018 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    80007004:	0104b783          	ld	a5,16(s1)
    80007008:	0087b503          	ld	a0,8(a5)
    8000700c:	fffff097          	auipc	ra,0xfffff
    80007010:	68c080e7          	jalr	1676(ra) # 80006698 <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 'q') {
    80007014:	fddff06f          	j	80006ff0 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    80007018:	00100793          	li	a5,1
    8000701c:	0000a717          	auipc	a4,0xa
    80007020:	14f72e23          	sw	a5,348(a4) # 80011178 <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    80007024:	0104b783          	ld	a5,16(s1)
    80007028:	02100593          	li	a1,33
    8000702c:	0087b503          	ld	a0,8(a5)
    80007030:	fffff097          	auipc	ra,0xfffff
    80007034:	668080e7          	jalr	1640(ra) # 80006698 <_ZN9BufferCPP3putEi>
            td->sem->signal();
    80007038:	0104b783          	ld	a5,16(s1)
    8000703c:	0107b503          	ld	a0,16(a5)
    80007040:	ffffc097          	auipc	ra,0xffffc
    80007044:	618080e7          	jalr	1560(ra) # 80003658 <_ZN9Semaphore6signalEv>
        }
    80007048:	01813083          	ld	ra,24(sp)
    8000704c:	01013403          	ld	s0,16(sp)
    80007050:	00813483          	ld	s1,8(sp)
    80007054:	02010113          	addi	sp,sp,32
    80007058:	00008067          	ret

000000008000705c <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    8000705c:	fe010113          	addi	sp,sp,-32
    80007060:	00113c23          	sd	ra,24(sp)
    80007064:	00813823          	sd	s0,16(sp)
    80007068:	00913423          	sd	s1,8(sp)
    8000706c:	01213023          	sd	s2,0(sp)
    80007070:	02010413          	addi	s0,sp,32
    80007074:	00050493          	mv	s1,a0
            int i = 0;
    80007078:	00000913          	li	s2,0
            while (!threadEnd) {
    8000707c:	0000a797          	auipc	a5,0xa
    80007080:	0fc7a783          	lw	a5,252(a5) # 80011178 <_ZN19ConsumerProducerCPP9threadEndE>
    80007084:	04079263          	bnez	a5,800070c8 <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    80007088:	0104b783          	ld	a5,16(s1)
    8000708c:	0007a583          	lw	a1,0(a5)
    80007090:	0305859b          	addiw	a1,a1,48
    80007094:	0087b503          	ld	a0,8(a5)
    80007098:	fffff097          	auipc	ra,0xfffff
    8000709c:	600080e7          	jalr	1536(ra) # 80006698 <_ZN9BufferCPP3putEi>
                i++;
    800070a0:	0019071b          	addiw	a4,s2,1
    800070a4:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    800070a8:	0104b783          	ld	a5,16(s1)
    800070ac:	0007a783          	lw	a5,0(a5)
    800070b0:	00e787bb          	addw	a5,a5,a4
    800070b4:	00500513          	li	a0,5
    800070b8:	02a7e53b          	remw	a0,a5,a0
    800070bc:	ffffc097          	auipc	ra,0xffffc
    800070c0:	434080e7          	jalr	1076(ra) # 800034f0 <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    800070c4:	fb9ff06f          	j	8000707c <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    800070c8:	0104b783          	ld	a5,16(s1)
    800070cc:	0107b503          	ld	a0,16(a5)
    800070d0:	ffffc097          	auipc	ra,0xffffc
    800070d4:	588080e7          	jalr	1416(ra) # 80003658 <_ZN9Semaphore6signalEv>
        }
    800070d8:	01813083          	ld	ra,24(sp)
    800070dc:	01013403          	ld	s0,16(sp)
    800070e0:	00813483          	ld	s1,8(sp)
    800070e4:	00013903          	ld	s2,0(sp)
    800070e8:	02010113          	addi	sp,sp,32
    800070ec:	00008067          	ret

00000000800070f0 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    800070f0:	fe010113          	addi	sp,sp,-32
    800070f4:	00113c23          	sd	ra,24(sp)
    800070f8:	00813823          	sd	s0,16(sp)
    800070fc:	00913423          	sd	s1,8(sp)
    80007100:	01213023          	sd	s2,0(sp)
    80007104:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80007108:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000710c:	00600493          	li	s1,6
    while (--i > 0) {
    80007110:	fff4849b          	addiw	s1,s1,-1
    80007114:	04905463          	blez	s1,8000715c <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80007118:	00003517          	auipc	a0,0x3
    8000711c:	3e850513          	addi	a0,a0,1000 # 8000a500 <CONSOLE_STATUS+0x4f0>
    80007120:	fffff097          	auipc	ra,0xfffff
    80007124:	178080e7          	jalr	376(ra) # 80006298 <_Z11printStringPKc>
        printInt(sleep_time);
    80007128:	00000613          	li	a2,0
    8000712c:	00a00593          	li	a1,10
    80007130:	0009051b          	sext.w	a0,s2
    80007134:	fffff097          	auipc	ra,0xfffff
    80007138:	2fc080e7          	jalr	764(ra) # 80006430 <_Z8printIntiii>
        printString(" !\n");
    8000713c:	00003517          	auipc	a0,0x3
    80007140:	3cc50513          	addi	a0,a0,972 # 8000a508 <CONSOLE_STATUS+0x4f8>
    80007144:	fffff097          	auipc	ra,0xfffff
    80007148:	154080e7          	jalr	340(ra) # 80006298 <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000714c:	00090513          	mv	a0,s2
    80007150:	ffffa097          	auipc	ra,0xffffa
    80007154:	2e8080e7          	jalr	744(ra) # 80001438 <time_sleep>
    while (--i > 0) {
    80007158:	fb9ff06f          	j	80007110 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    8000715c:	00a00793          	li	a5,10
    80007160:	02f95933          	divu	s2,s2,a5
    80007164:	fff90913          	addi	s2,s2,-1
    80007168:	0000a797          	auipc	a5,0xa
    8000716c:	02078793          	addi	a5,a5,32 # 80011188 <finished>
    80007170:	01278933          	add	s2,a5,s2
    80007174:	00100793          	li	a5,1
    80007178:	00f90023          	sb	a5,0(s2)
}
    8000717c:	01813083          	ld	ra,24(sp)
    80007180:	01013403          	ld	s0,16(sp)
    80007184:	00813483          	ld	s1,8(sp)
    80007188:	00013903          	ld	s2,0(sp)
    8000718c:	02010113          	addi	sp,sp,32
    80007190:	00008067          	ret

0000000080007194 <_Z12testSleepingv>:

void testSleeping() {
    80007194:	fc010113          	addi	sp,sp,-64
    80007198:	02113c23          	sd	ra,56(sp)
    8000719c:	02813823          	sd	s0,48(sp)
    800071a0:	02913423          	sd	s1,40(sp)
    800071a4:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800071a8:	00a00793          	li	a5,10
    800071ac:	fcf43823          	sd	a5,-48(s0)
    800071b0:	01400793          	li	a5,20
    800071b4:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800071b8:	00000493          	li	s1,0
    800071bc:	02c0006f          	j	800071e8 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800071c0:	00349793          	slli	a5,s1,0x3
    800071c4:	fd040613          	addi	a2,s0,-48
    800071c8:	00f60633          	add	a2,a2,a5
    800071cc:	00000597          	auipc	a1,0x0
    800071d0:	f2458593          	addi	a1,a1,-220 # 800070f0 <_Z9sleepyRunPv>
    800071d4:	fc040513          	addi	a0,s0,-64
    800071d8:	00f50533          	add	a0,a0,a5
    800071dc:	ffffa097          	auipc	ra,0xffffa
    800071e0:	0d8080e7          	jalr	216(ra) # 800012b4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800071e4:	0014849b          	addiw	s1,s1,1
    800071e8:	00100793          	li	a5,1
    800071ec:	fc97dae3          	bge	a5,s1,800071c0 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800071f0:	0000a797          	auipc	a5,0xa
    800071f4:	f987c783          	lbu	a5,-104(a5) # 80011188 <finished>
    800071f8:	fe078ce3          	beqz	a5,800071f0 <_Z12testSleepingv+0x5c>
    800071fc:	0000a797          	auipc	a5,0xa
    80007200:	f8d7c783          	lbu	a5,-115(a5) # 80011189 <finished+0x1>
    80007204:	fe0786e3          	beqz	a5,800071f0 <_Z12testSleepingv+0x5c>
    80007208:	03813083          	ld	ra,56(sp)
    8000720c:	03013403          	ld	s0,48(sp)
    80007210:	02813483          	ld	s1,40(sp)
    80007214:	04010113          	addi	sp,sp,64
    80007218:	00008067          	ret

000000008000721c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000721c:	fe010113          	addi	sp,sp,-32
    80007220:	00113c23          	sd	ra,24(sp)
    80007224:	00813823          	sd	s0,16(sp)
    80007228:	00913423          	sd	s1,8(sp)
    8000722c:	01213023          	sd	s2,0(sp)
    80007230:	02010413          	addi	s0,sp,32
    80007234:	00050493          	mv	s1,a0
    80007238:	00058913          	mv	s2,a1
    8000723c:	0015879b          	addiw	a5,a1,1
    80007240:	0007851b          	sext.w	a0,a5
    80007244:	00f4a023          	sw	a5,0(s1)
    80007248:	0004a823          	sw	zero,16(s1)
    8000724c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80007250:	00251513          	slli	a0,a0,0x2
    80007254:	ffffa097          	auipc	ra,0xffffa
    80007258:	004080e7          	jalr	4(ra) # 80001258 <mem_alloc>
    8000725c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80007260:	00000593          	li	a1,0
    80007264:	02048513          	addi	a0,s1,32
    80007268:	ffffa097          	auipc	ra,0xffffa
    8000726c:	114080e7          	jalr	276(ra) # 8000137c <sem_open>
    sem_open(&spaceAvailable, _cap);
    80007270:	00090593          	mv	a1,s2
    80007274:	01848513          	addi	a0,s1,24
    80007278:	ffffa097          	auipc	ra,0xffffa
    8000727c:	104080e7          	jalr	260(ra) # 8000137c <sem_open>
    sem_open(&mutexHead, 1);
    80007280:	00100593          	li	a1,1
    80007284:	02848513          	addi	a0,s1,40
    80007288:	ffffa097          	auipc	ra,0xffffa
    8000728c:	0f4080e7          	jalr	244(ra) # 8000137c <sem_open>
    sem_open(&mutexTail, 1);
    80007290:	00100593          	li	a1,1
    80007294:	03048513          	addi	a0,s1,48
    80007298:	ffffa097          	auipc	ra,0xffffa
    8000729c:	0e4080e7          	jalr	228(ra) # 8000137c <sem_open>
}
    800072a0:	01813083          	ld	ra,24(sp)
    800072a4:	01013403          	ld	s0,16(sp)
    800072a8:	00813483          	ld	s1,8(sp)
    800072ac:	00013903          	ld	s2,0(sp)
    800072b0:	02010113          	addi	sp,sp,32
    800072b4:	00008067          	ret

00000000800072b8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800072b8:	fe010113          	addi	sp,sp,-32
    800072bc:	00113c23          	sd	ra,24(sp)
    800072c0:	00813823          	sd	s0,16(sp)
    800072c4:	00913423          	sd	s1,8(sp)
    800072c8:	01213023          	sd	s2,0(sp)
    800072cc:	02010413          	addi	s0,sp,32
    800072d0:	00050493          	mv	s1,a0
    800072d4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800072d8:	01853503          	ld	a0,24(a0)
    800072dc:	ffffa097          	auipc	ra,0xffffa
    800072e0:	104080e7          	jalr	260(ra) # 800013e0 <sem_wait>

    sem_wait(mutexTail);
    800072e4:	0304b503          	ld	a0,48(s1)
    800072e8:	ffffa097          	auipc	ra,0xffffa
    800072ec:	0f8080e7          	jalr	248(ra) # 800013e0 <sem_wait>
    buffer[tail] = val;
    800072f0:	0084b783          	ld	a5,8(s1)
    800072f4:	0144a703          	lw	a4,20(s1)
    800072f8:	00271713          	slli	a4,a4,0x2
    800072fc:	00e787b3          	add	a5,a5,a4
    80007300:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80007304:	0144a783          	lw	a5,20(s1)
    80007308:	0017879b          	addiw	a5,a5,1
    8000730c:	0004a703          	lw	a4,0(s1)
    80007310:	02e7e7bb          	remw	a5,a5,a4
    80007314:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80007318:	0304b503          	ld	a0,48(s1)
    8000731c:	ffffa097          	auipc	ra,0xffffa
    80007320:	0f0080e7          	jalr	240(ra) # 8000140c <sem_signal>

    sem_signal(itemAvailable);
    80007324:	0204b503          	ld	a0,32(s1)
    80007328:	ffffa097          	auipc	ra,0xffffa
    8000732c:	0e4080e7          	jalr	228(ra) # 8000140c <sem_signal>

}
    80007330:	01813083          	ld	ra,24(sp)
    80007334:	01013403          	ld	s0,16(sp)
    80007338:	00813483          	ld	s1,8(sp)
    8000733c:	00013903          	ld	s2,0(sp)
    80007340:	02010113          	addi	sp,sp,32
    80007344:	00008067          	ret

0000000080007348 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80007348:	fe010113          	addi	sp,sp,-32
    8000734c:	00113c23          	sd	ra,24(sp)
    80007350:	00813823          	sd	s0,16(sp)
    80007354:	00913423          	sd	s1,8(sp)
    80007358:	01213023          	sd	s2,0(sp)
    8000735c:	02010413          	addi	s0,sp,32
    80007360:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80007364:	02053503          	ld	a0,32(a0)
    80007368:	ffffa097          	auipc	ra,0xffffa
    8000736c:	078080e7          	jalr	120(ra) # 800013e0 <sem_wait>

    sem_wait(mutexHead);
    80007370:	0284b503          	ld	a0,40(s1)
    80007374:	ffffa097          	auipc	ra,0xffffa
    80007378:	06c080e7          	jalr	108(ra) # 800013e0 <sem_wait>

    int ret = buffer[head];
    8000737c:	0084b703          	ld	a4,8(s1)
    80007380:	0104a783          	lw	a5,16(s1)
    80007384:	00279693          	slli	a3,a5,0x2
    80007388:	00d70733          	add	a4,a4,a3
    8000738c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80007390:	0017879b          	addiw	a5,a5,1
    80007394:	0004a703          	lw	a4,0(s1)
    80007398:	02e7e7bb          	remw	a5,a5,a4
    8000739c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800073a0:	0284b503          	ld	a0,40(s1)
    800073a4:	ffffa097          	auipc	ra,0xffffa
    800073a8:	068080e7          	jalr	104(ra) # 8000140c <sem_signal>

    sem_signal(spaceAvailable);
    800073ac:	0184b503          	ld	a0,24(s1)
    800073b0:	ffffa097          	auipc	ra,0xffffa
    800073b4:	05c080e7          	jalr	92(ra) # 8000140c <sem_signal>

    return ret;
}
    800073b8:	00090513          	mv	a0,s2
    800073bc:	01813083          	ld	ra,24(sp)
    800073c0:	01013403          	ld	s0,16(sp)
    800073c4:	00813483          	ld	s1,8(sp)
    800073c8:	00013903          	ld	s2,0(sp)
    800073cc:	02010113          	addi	sp,sp,32
    800073d0:	00008067          	ret

00000000800073d4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt()
{
    800073d4:	fe010113          	addi	sp,sp,-32
    800073d8:	00113c23          	sd	ra,24(sp)
    800073dc:	00813823          	sd	s0,16(sp)
    800073e0:	00913423          	sd	s1,8(sp)
    800073e4:	01213023          	sd	s2,0(sp)
    800073e8:	02010413          	addi	s0,sp,32
    800073ec:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800073f0:	02853503          	ld	a0,40(a0)
    800073f4:	ffffa097          	auipc	ra,0xffffa
    800073f8:	fec080e7          	jalr	-20(ra) # 800013e0 <sem_wait>
    sem_wait(mutexTail);
    800073fc:	0304b503          	ld	a0,48(s1)
    80007400:	ffffa097          	auipc	ra,0xffffa
    80007404:	fe0080e7          	jalr	-32(ra) # 800013e0 <sem_wait>

    if (tail >= head) {
    80007408:	0144a783          	lw	a5,20(s1)
    8000740c:	0104a903          	lw	s2,16(s1)
    80007410:	0327ce63          	blt	a5,s2,8000744c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80007414:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80007418:	0304b503          	ld	a0,48(s1)
    8000741c:	ffffa097          	auipc	ra,0xffffa
    80007420:	ff0080e7          	jalr	-16(ra) # 8000140c <sem_signal>
    sem_signal(mutexHead);
    80007424:	0284b503          	ld	a0,40(s1)
    80007428:	ffffa097          	auipc	ra,0xffffa
    8000742c:	fe4080e7          	jalr	-28(ra) # 8000140c <sem_signal>

    return ret;
}
    80007430:	00090513          	mv	a0,s2
    80007434:	01813083          	ld	ra,24(sp)
    80007438:	01013403          	ld	s0,16(sp)
    8000743c:	00813483          	ld	s1,8(sp)
    80007440:	00013903          	ld	s2,0(sp)
    80007444:	02010113          	addi	sp,sp,32
    80007448:	00008067          	ret
        ret = cap - head + tail;
    8000744c:	0004a703          	lw	a4,0(s1)
    80007450:	4127093b          	subw	s2,a4,s2
    80007454:	00f9093b          	addw	s2,s2,a5
    80007458:	fc1ff06f          	j	80007418 <_ZN6Buffer6getCntEv+0x44>

000000008000745c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000745c:	fe010113          	addi	sp,sp,-32
    80007460:	00113c23          	sd	ra,24(sp)
    80007464:	00813823          	sd	s0,16(sp)
    80007468:	00913423          	sd	s1,8(sp)
    8000746c:	02010413          	addi	s0,sp,32
    80007470:	00050493          	mv	s1,a0
    putc('\n');
    80007474:	00a00513          	li	a0,10
    80007478:	ffffa097          	auipc	ra,0xffffa
    8000747c:	0c0080e7          	jalr	192(ra) # 80001538 <putc>
    printString("Buffer deleted!\n");
    80007480:	00003517          	auipc	a0,0x3
    80007484:	06850513          	addi	a0,a0,104 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80007488:	fffff097          	auipc	ra,0xfffff
    8000748c:	e10080e7          	jalr	-496(ra) # 80006298 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80007490:	00048513          	mv	a0,s1
    80007494:	00000097          	auipc	ra,0x0
    80007498:	f40080e7          	jalr	-192(ra) # 800073d4 <_ZN6Buffer6getCntEv>
    8000749c:	02a05c63          	blez	a0,800074d4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800074a0:	0084b783          	ld	a5,8(s1)
    800074a4:	0104a703          	lw	a4,16(s1)
    800074a8:	00271713          	slli	a4,a4,0x2
    800074ac:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800074b0:	0007c503          	lbu	a0,0(a5)
    800074b4:	ffffa097          	auipc	ra,0xffffa
    800074b8:	084080e7          	jalr	132(ra) # 80001538 <putc>
        head = (head + 1) % cap;
    800074bc:	0104a783          	lw	a5,16(s1)
    800074c0:	0017879b          	addiw	a5,a5,1
    800074c4:	0004a703          	lw	a4,0(s1)
    800074c8:	02e7e7bb          	remw	a5,a5,a4
    800074cc:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800074d0:	fc1ff06f          	j	80007490 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800074d4:	02100513          	li	a0,33
    800074d8:	ffffa097          	auipc	ra,0xffffa
    800074dc:	060080e7          	jalr	96(ra) # 80001538 <putc>
    putc('\n');
    800074e0:	00a00513          	li	a0,10
    800074e4:	ffffa097          	auipc	ra,0xffffa
    800074e8:	054080e7          	jalr	84(ra) # 80001538 <putc>
    mem_free(buffer);
    800074ec:	0084b503          	ld	a0,8(s1)
    800074f0:	ffffa097          	auipc	ra,0xffffa
    800074f4:	d98080e7          	jalr	-616(ra) # 80001288 <mem_free>
    sem_close(itemAvailable);
    800074f8:	0204b503          	ld	a0,32(s1)
    800074fc:	ffffa097          	auipc	ra,0xffffa
    80007500:	eb8080e7          	jalr	-328(ra) # 800013b4 <sem_close>
    sem_close(spaceAvailable);
    80007504:	0184b503          	ld	a0,24(s1)
    80007508:	ffffa097          	auipc	ra,0xffffa
    8000750c:	eac080e7          	jalr	-340(ra) # 800013b4 <sem_close>
    sem_close(mutexTail);
    80007510:	0304b503          	ld	a0,48(s1)
    80007514:	ffffa097          	auipc	ra,0xffffa
    80007518:	ea0080e7          	jalr	-352(ra) # 800013b4 <sem_close>
    sem_close(mutexHead);
    8000751c:	0284b503          	ld	a0,40(s1)
    80007520:	ffffa097          	auipc	ra,0xffffa
    80007524:	e94080e7          	jalr	-364(ra) # 800013b4 <sem_close>
}
    80007528:	01813083          	ld	ra,24(sp)
    8000752c:	01013403          	ld	s0,16(sp)
    80007530:	00813483          	ld	s1,8(sp)
    80007534:	02010113          	addi	sp,sp,32
    80007538:	00008067          	ret

000000008000753c <start>:
    8000753c:	ff010113          	addi	sp,sp,-16
    80007540:	00813423          	sd	s0,8(sp)
    80007544:	01010413          	addi	s0,sp,16
    80007548:	300027f3          	csrr	a5,mstatus
    8000754c:	ffffe737          	lui	a4,0xffffe
    80007550:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffec40f>
    80007554:	00e7f7b3          	and	a5,a5,a4
    80007558:	00001737          	lui	a4,0x1
    8000755c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80007560:	00e7e7b3          	or	a5,a5,a4
    80007564:	30079073          	csrw	mstatus,a5
    80007568:	00000797          	auipc	a5,0x0
    8000756c:	16078793          	addi	a5,a5,352 # 800076c8 <system_main>
    80007570:	34179073          	csrw	mepc,a5
    80007574:	00000793          	li	a5,0
    80007578:	18079073          	csrw	satp,a5
    8000757c:	000107b7          	lui	a5,0x10
    80007580:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80007584:	30279073          	csrw	medeleg,a5
    80007588:	30379073          	csrw	mideleg,a5
    8000758c:	104027f3          	csrr	a5,sie
    80007590:	2227e793          	ori	a5,a5,546
    80007594:	10479073          	csrw	sie,a5
    80007598:	fff00793          	li	a5,-1
    8000759c:	00a7d793          	srli	a5,a5,0xa
    800075a0:	3b079073          	csrw	pmpaddr0,a5
    800075a4:	00f00793          	li	a5,15
    800075a8:	3a079073          	csrw	pmpcfg0,a5
    800075ac:	f14027f3          	csrr	a5,mhartid
    800075b0:	0200c737          	lui	a4,0x200c
    800075b4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800075b8:	0007869b          	sext.w	a3,a5
    800075bc:	00269713          	slli	a4,a3,0x2
    800075c0:	000f4637          	lui	a2,0xf4
    800075c4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800075c8:	00d70733          	add	a4,a4,a3
    800075cc:	0037979b          	slliw	a5,a5,0x3
    800075d0:	020046b7          	lui	a3,0x2004
    800075d4:	00d787b3          	add	a5,a5,a3
    800075d8:	00c585b3          	add	a1,a1,a2
    800075dc:	00371693          	slli	a3,a4,0x3
    800075e0:	0000a717          	auipc	a4,0xa
    800075e4:	bb070713          	addi	a4,a4,-1104 # 80011190 <timer_scratch>
    800075e8:	00b7b023          	sd	a1,0(a5)
    800075ec:	00d70733          	add	a4,a4,a3
    800075f0:	00f73c23          	sd	a5,24(a4)
    800075f4:	02c73023          	sd	a2,32(a4)
    800075f8:	34071073          	csrw	mscratch,a4
    800075fc:	00000797          	auipc	a5,0x0
    80007600:	6e478793          	addi	a5,a5,1764 # 80007ce0 <timervec>
    80007604:	30579073          	csrw	mtvec,a5
    80007608:	300027f3          	csrr	a5,mstatus
    8000760c:	0087e793          	ori	a5,a5,8
    80007610:	30079073          	csrw	mstatus,a5
    80007614:	304027f3          	csrr	a5,mie
    80007618:	0807e793          	ori	a5,a5,128
    8000761c:	30479073          	csrw	mie,a5
    80007620:	f14027f3          	csrr	a5,mhartid
    80007624:	0007879b          	sext.w	a5,a5
    80007628:	00078213          	mv	tp,a5
    8000762c:	30200073          	mret
    80007630:	00813403          	ld	s0,8(sp)
    80007634:	01010113          	addi	sp,sp,16
    80007638:	00008067          	ret

000000008000763c <timerinit>:
    8000763c:	ff010113          	addi	sp,sp,-16
    80007640:	00813423          	sd	s0,8(sp)
    80007644:	01010413          	addi	s0,sp,16
    80007648:	f14027f3          	csrr	a5,mhartid
    8000764c:	0200c737          	lui	a4,0x200c
    80007650:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007654:	0007869b          	sext.w	a3,a5
    80007658:	00269713          	slli	a4,a3,0x2
    8000765c:	000f4637          	lui	a2,0xf4
    80007660:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007664:	00d70733          	add	a4,a4,a3
    80007668:	0037979b          	slliw	a5,a5,0x3
    8000766c:	020046b7          	lui	a3,0x2004
    80007670:	00d787b3          	add	a5,a5,a3
    80007674:	00c585b3          	add	a1,a1,a2
    80007678:	00371693          	slli	a3,a4,0x3
    8000767c:	0000a717          	auipc	a4,0xa
    80007680:	b1470713          	addi	a4,a4,-1260 # 80011190 <timer_scratch>
    80007684:	00b7b023          	sd	a1,0(a5)
    80007688:	00d70733          	add	a4,a4,a3
    8000768c:	00f73c23          	sd	a5,24(a4)
    80007690:	02c73023          	sd	a2,32(a4)
    80007694:	34071073          	csrw	mscratch,a4
    80007698:	00000797          	auipc	a5,0x0
    8000769c:	64878793          	addi	a5,a5,1608 # 80007ce0 <timervec>
    800076a0:	30579073          	csrw	mtvec,a5
    800076a4:	300027f3          	csrr	a5,mstatus
    800076a8:	0087e793          	ori	a5,a5,8
    800076ac:	30079073          	csrw	mstatus,a5
    800076b0:	304027f3          	csrr	a5,mie
    800076b4:	0807e793          	ori	a5,a5,128
    800076b8:	30479073          	csrw	mie,a5
    800076bc:	00813403          	ld	s0,8(sp)
    800076c0:	01010113          	addi	sp,sp,16
    800076c4:	00008067          	ret

00000000800076c8 <system_main>:
    800076c8:	fe010113          	addi	sp,sp,-32
    800076cc:	00813823          	sd	s0,16(sp)
    800076d0:	00913423          	sd	s1,8(sp)
    800076d4:	00113c23          	sd	ra,24(sp)
    800076d8:	02010413          	addi	s0,sp,32
    800076dc:	00000097          	auipc	ra,0x0
    800076e0:	0c4080e7          	jalr	196(ra) # 800077a0 <cpuid>
    800076e4:	00006497          	auipc	s1,0x6
    800076e8:	96c48493          	addi	s1,s1,-1684 # 8000d050 <started>
    800076ec:	02050263          	beqz	a0,80007710 <system_main+0x48>
    800076f0:	0004a783          	lw	a5,0(s1)
    800076f4:	0007879b          	sext.w	a5,a5
    800076f8:	fe078ce3          	beqz	a5,800076f0 <system_main+0x28>
    800076fc:	0ff0000f          	fence
    80007700:	00003517          	auipc	a0,0x3
    80007704:	e4050513          	addi	a0,a0,-448 # 8000a540 <CONSOLE_STATUS+0x530>
    80007708:	00001097          	auipc	ra,0x1
    8000770c:	a74080e7          	jalr	-1420(ra) # 8000817c <panic>
    80007710:	00001097          	auipc	ra,0x1
    80007714:	9c8080e7          	jalr	-1592(ra) # 800080d8 <consoleinit>
    80007718:	00001097          	auipc	ra,0x1
    8000771c:	154080e7          	jalr	340(ra) # 8000886c <printfinit>
    80007720:	00003517          	auipc	a0,0x3
    80007724:	9d850513          	addi	a0,a0,-1576 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80007728:	00001097          	auipc	ra,0x1
    8000772c:	ab0080e7          	jalr	-1360(ra) # 800081d8 <__printf>
    80007730:	00003517          	auipc	a0,0x3
    80007734:	de050513          	addi	a0,a0,-544 # 8000a510 <CONSOLE_STATUS+0x500>
    80007738:	00001097          	auipc	ra,0x1
    8000773c:	aa0080e7          	jalr	-1376(ra) # 800081d8 <__printf>
    80007740:	00003517          	auipc	a0,0x3
    80007744:	9b850513          	addi	a0,a0,-1608 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80007748:	00001097          	auipc	ra,0x1
    8000774c:	a90080e7          	jalr	-1392(ra) # 800081d8 <__printf>
    80007750:	00001097          	auipc	ra,0x1
    80007754:	4a8080e7          	jalr	1192(ra) # 80008bf8 <kinit>
    80007758:	00000097          	auipc	ra,0x0
    8000775c:	148080e7          	jalr	328(ra) # 800078a0 <trapinit>
    80007760:	00000097          	auipc	ra,0x0
    80007764:	16c080e7          	jalr	364(ra) # 800078cc <trapinithart>
    80007768:	00000097          	auipc	ra,0x0
    8000776c:	5b8080e7          	jalr	1464(ra) # 80007d20 <plicinit>
    80007770:	00000097          	auipc	ra,0x0
    80007774:	5d8080e7          	jalr	1496(ra) # 80007d48 <plicinithart>
    80007778:	00000097          	auipc	ra,0x0
    8000777c:	078080e7          	jalr	120(ra) # 800077f0 <userinit>
    80007780:	0ff0000f          	fence
    80007784:	00100793          	li	a5,1
    80007788:	00003517          	auipc	a0,0x3
    8000778c:	da050513          	addi	a0,a0,-608 # 8000a528 <CONSOLE_STATUS+0x518>
    80007790:	00f4a023          	sw	a5,0(s1)
    80007794:	00001097          	auipc	ra,0x1
    80007798:	a44080e7          	jalr	-1468(ra) # 800081d8 <__printf>
    8000779c:	0000006f          	j	8000779c <system_main+0xd4>

00000000800077a0 <cpuid>:
    800077a0:	ff010113          	addi	sp,sp,-16
    800077a4:	00813423          	sd	s0,8(sp)
    800077a8:	01010413          	addi	s0,sp,16
    800077ac:	00020513          	mv	a0,tp
    800077b0:	00813403          	ld	s0,8(sp)
    800077b4:	0005051b          	sext.w	a0,a0
    800077b8:	01010113          	addi	sp,sp,16
    800077bc:	00008067          	ret

00000000800077c0 <mycpu>:
    800077c0:	ff010113          	addi	sp,sp,-16
    800077c4:	00813423          	sd	s0,8(sp)
    800077c8:	01010413          	addi	s0,sp,16
    800077cc:	00020793          	mv	a5,tp
    800077d0:	00813403          	ld	s0,8(sp)
    800077d4:	0007879b          	sext.w	a5,a5
    800077d8:	00779793          	slli	a5,a5,0x7
    800077dc:	0000b517          	auipc	a0,0xb
    800077e0:	9e450513          	addi	a0,a0,-1564 # 800121c0 <cpus>
    800077e4:	00f50533          	add	a0,a0,a5
    800077e8:	01010113          	addi	sp,sp,16
    800077ec:	00008067          	ret

00000000800077f0 <userinit>:
    800077f0:	ff010113          	addi	sp,sp,-16
    800077f4:	00813423          	sd	s0,8(sp)
    800077f8:	01010413          	addi	s0,sp,16
    800077fc:	00813403          	ld	s0,8(sp)
    80007800:	01010113          	addi	sp,sp,16
    80007804:	ffffc317          	auipc	t1,0xffffc
    80007808:	af830067          	jr	-1288(t1) # 800032fc <main>

000000008000780c <either_copyout>:
    8000780c:	ff010113          	addi	sp,sp,-16
    80007810:	00813023          	sd	s0,0(sp)
    80007814:	00113423          	sd	ra,8(sp)
    80007818:	01010413          	addi	s0,sp,16
    8000781c:	02051663          	bnez	a0,80007848 <either_copyout+0x3c>
    80007820:	00058513          	mv	a0,a1
    80007824:	00060593          	mv	a1,a2
    80007828:	0006861b          	sext.w	a2,a3
    8000782c:	00002097          	auipc	ra,0x2
    80007830:	c58080e7          	jalr	-936(ra) # 80009484 <__memmove>
    80007834:	00813083          	ld	ra,8(sp)
    80007838:	00013403          	ld	s0,0(sp)
    8000783c:	00000513          	li	a0,0
    80007840:	01010113          	addi	sp,sp,16
    80007844:	00008067          	ret
    80007848:	00003517          	auipc	a0,0x3
    8000784c:	d2050513          	addi	a0,a0,-736 # 8000a568 <CONSOLE_STATUS+0x558>
    80007850:	00001097          	auipc	ra,0x1
    80007854:	92c080e7          	jalr	-1748(ra) # 8000817c <panic>

0000000080007858 <either_copyin>:
    80007858:	ff010113          	addi	sp,sp,-16
    8000785c:	00813023          	sd	s0,0(sp)
    80007860:	00113423          	sd	ra,8(sp)
    80007864:	01010413          	addi	s0,sp,16
    80007868:	02059463          	bnez	a1,80007890 <either_copyin+0x38>
    8000786c:	00060593          	mv	a1,a2
    80007870:	0006861b          	sext.w	a2,a3
    80007874:	00002097          	auipc	ra,0x2
    80007878:	c10080e7          	jalr	-1008(ra) # 80009484 <__memmove>
    8000787c:	00813083          	ld	ra,8(sp)
    80007880:	00013403          	ld	s0,0(sp)
    80007884:	00000513          	li	a0,0
    80007888:	01010113          	addi	sp,sp,16
    8000788c:	00008067          	ret
    80007890:	00003517          	auipc	a0,0x3
    80007894:	d0050513          	addi	a0,a0,-768 # 8000a590 <CONSOLE_STATUS+0x580>
    80007898:	00001097          	auipc	ra,0x1
    8000789c:	8e4080e7          	jalr	-1820(ra) # 8000817c <panic>

00000000800078a0 <trapinit>:
    800078a0:	ff010113          	addi	sp,sp,-16
    800078a4:	00813423          	sd	s0,8(sp)
    800078a8:	01010413          	addi	s0,sp,16
    800078ac:	00813403          	ld	s0,8(sp)
    800078b0:	00003597          	auipc	a1,0x3
    800078b4:	d0858593          	addi	a1,a1,-760 # 8000a5b8 <CONSOLE_STATUS+0x5a8>
    800078b8:	0000b517          	auipc	a0,0xb
    800078bc:	98850513          	addi	a0,a0,-1656 # 80012240 <tickslock>
    800078c0:	01010113          	addi	sp,sp,16
    800078c4:	00001317          	auipc	t1,0x1
    800078c8:	5c430067          	jr	1476(t1) # 80008e88 <initlock>

00000000800078cc <trapinithart>:
    800078cc:	ff010113          	addi	sp,sp,-16
    800078d0:	00813423          	sd	s0,8(sp)
    800078d4:	01010413          	addi	s0,sp,16
    800078d8:	00000797          	auipc	a5,0x0
    800078dc:	2f878793          	addi	a5,a5,760 # 80007bd0 <kernelvec>
    800078e0:	10579073          	csrw	stvec,a5
    800078e4:	00813403          	ld	s0,8(sp)
    800078e8:	01010113          	addi	sp,sp,16
    800078ec:	00008067          	ret

00000000800078f0 <usertrap>:
    800078f0:	ff010113          	addi	sp,sp,-16
    800078f4:	00813423          	sd	s0,8(sp)
    800078f8:	01010413          	addi	s0,sp,16
    800078fc:	00813403          	ld	s0,8(sp)
    80007900:	01010113          	addi	sp,sp,16
    80007904:	00008067          	ret

0000000080007908 <usertrapret>:
    80007908:	ff010113          	addi	sp,sp,-16
    8000790c:	00813423          	sd	s0,8(sp)
    80007910:	01010413          	addi	s0,sp,16
    80007914:	00813403          	ld	s0,8(sp)
    80007918:	01010113          	addi	sp,sp,16
    8000791c:	00008067          	ret

0000000080007920 <kerneltrap>:
    80007920:	fe010113          	addi	sp,sp,-32
    80007924:	00813823          	sd	s0,16(sp)
    80007928:	00113c23          	sd	ra,24(sp)
    8000792c:	00913423          	sd	s1,8(sp)
    80007930:	02010413          	addi	s0,sp,32
    80007934:	142025f3          	csrr	a1,scause
    80007938:	100027f3          	csrr	a5,sstatus
    8000793c:	0027f793          	andi	a5,a5,2
    80007940:	10079c63          	bnez	a5,80007a58 <kerneltrap+0x138>
    80007944:	142027f3          	csrr	a5,scause
    80007948:	0207ce63          	bltz	a5,80007984 <kerneltrap+0x64>
    8000794c:	00003517          	auipc	a0,0x3
    80007950:	cb450513          	addi	a0,a0,-844 # 8000a600 <CONSOLE_STATUS+0x5f0>
    80007954:	00001097          	auipc	ra,0x1
    80007958:	884080e7          	jalr	-1916(ra) # 800081d8 <__printf>
    8000795c:	141025f3          	csrr	a1,sepc
    80007960:	14302673          	csrr	a2,stval
    80007964:	00003517          	auipc	a0,0x3
    80007968:	cac50513          	addi	a0,a0,-852 # 8000a610 <CONSOLE_STATUS+0x600>
    8000796c:	00001097          	auipc	ra,0x1
    80007970:	86c080e7          	jalr	-1940(ra) # 800081d8 <__printf>
    80007974:	00003517          	auipc	a0,0x3
    80007978:	cb450513          	addi	a0,a0,-844 # 8000a628 <CONSOLE_STATUS+0x618>
    8000797c:	00001097          	auipc	ra,0x1
    80007980:	800080e7          	jalr	-2048(ra) # 8000817c <panic>
    80007984:	0ff7f713          	andi	a4,a5,255
    80007988:	00900693          	li	a3,9
    8000798c:	04d70063          	beq	a4,a3,800079cc <kerneltrap+0xac>
    80007990:	fff00713          	li	a4,-1
    80007994:	03f71713          	slli	a4,a4,0x3f
    80007998:	00170713          	addi	a4,a4,1
    8000799c:	fae798e3          	bne	a5,a4,8000794c <kerneltrap+0x2c>
    800079a0:	00000097          	auipc	ra,0x0
    800079a4:	e00080e7          	jalr	-512(ra) # 800077a0 <cpuid>
    800079a8:	06050663          	beqz	a0,80007a14 <kerneltrap+0xf4>
    800079ac:	144027f3          	csrr	a5,sip
    800079b0:	ffd7f793          	andi	a5,a5,-3
    800079b4:	14479073          	csrw	sip,a5
    800079b8:	01813083          	ld	ra,24(sp)
    800079bc:	01013403          	ld	s0,16(sp)
    800079c0:	00813483          	ld	s1,8(sp)
    800079c4:	02010113          	addi	sp,sp,32
    800079c8:	00008067          	ret
    800079cc:	00000097          	auipc	ra,0x0
    800079d0:	3c8080e7          	jalr	968(ra) # 80007d94 <plic_claim>
    800079d4:	00a00793          	li	a5,10
    800079d8:	00050493          	mv	s1,a0
    800079dc:	06f50863          	beq	a0,a5,80007a4c <kerneltrap+0x12c>
    800079e0:	fc050ce3          	beqz	a0,800079b8 <kerneltrap+0x98>
    800079e4:	00050593          	mv	a1,a0
    800079e8:	00003517          	auipc	a0,0x3
    800079ec:	bf850513          	addi	a0,a0,-1032 # 8000a5e0 <CONSOLE_STATUS+0x5d0>
    800079f0:	00000097          	auipc	ra,0x0
    800079f4:	7e8080e7          	jalr	2024(ra) # 800081d8 <__printf>
    800079f8:	01013403          	ld	s0,16(sp)
    800079fc:	01813083          	ld	ra,24(sp)
    80007a00:	00048513          	mv	a0,s1
    80007a04:	00813483          	ld	s1,8(sp)
    80007a08:	02010113          	addi	sp,sp,32
    80007a0c:	00000317          	auipc	t1,0x0
    80007a10:	3c030067          	jr	960(t1) # 80007dcc <plic_complete>
    80007a14:	0000b517          	auipc	a0,0xb
    80007a18:	82c50513          	addi	a0,a0,-2004 # 80012240 <tickslock>
    80007a1c:	00001097          	auipc	ra,0x1
    80007a20:	490080e7          	jalr	1168(ra) # 80008eac <acquire>
    80007a24:	00005717          	auipc	a4,0x5
    80007a28:	63070713          	addi	a4,a4,1584 # 8000d054 <ticks>
    80007a2c:	00072783          	lw	a5,0(a4)
    80007a30:	0000b517          	auipc	a0,0xb
    80007a34:	81050513          	addi	a0,a0,-2032 # 80012240 <tickslock>
    80007a38:	0017879b          	addiw	a5,a5,1
    80007a3c:	00f72023          	sw	a5,0(a4)
    80007a40:	00001097          	auipc	ra,0x1
    80007a44:	538080e7          	jalr	1336(ra) # 80008f78 <release>
    80007a48:	f65ff06f          	j	800079ac <kerneltrap+0x8c>
    80007a4c:	00001097          	auipc	ra,0x1
    80007a50:	094080e7          	jalr	148(ra) # 80008ae0 <uartintr>
    80007a54:	fa5ff06f          	j	800079f8 <kerneltrap+0xd8>
    80007a58:	00003517          	auipc	a0,0x3
    80007a5c:	b6850513          	addi	a0,a0,-1176 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    80007a60:	00000097          	auipc	ra,0x0
    80007a64:	71c080e7          	jalr	1820(ra) # 8000817c <panic>

0000000080007a68 <clockintr>:
    80007a68:	fe010113          	addi	sp,sp,-32
    80007a6c:	00813823          	sd	s0,16(sp)
    80007a70:	00913423          	sd	s1,8(sp)
    80007a74:	00113c23          	sd	ra,24(sp)
    80007a78:	02010413          	addi	s0,sp,32
    80007a7c:	0000a497          	auipc	s1,0xa
    80007a80:	7c448493          	addi	s1,s1,1988 # 80012240 <tickslock>
    80007a84:	00048513          	mv	a0,s1
    80007a88:	00001097          	auipc	ra,0x1
    80007a8c:	424080e7          	jalr	1060(ra) # 80008eac <acquire>
    80007a90:	00005717          	auipc	a4,0x5
    80007a94:	5c470713          	addi	a4,a4,1476 # 8000d054 <ticks>
    80007a98:	00072783          	lw	a5,0(a4)
    80007a9c:	01013403          	ld	s0,16(sp)
    80007aa0:	01813083          	ld	ra,24(sp)
    80007aa4:	00048513          	mv	a0,s1
    80007aa8:	0017879b          	addiw	a5,a5,1
    80007aac:	00813483          	ld	s1,8(sp)
    80007ab0:	00f72023          	sw	a5,0(a4)
    80007ab4:	02010113          	addi	sp,sp,32
    80007ab8:	00001317          	auipc	t1,0x1
    80007abc:	4c030067          	jr	1216(t1) # 80008f78 <release>

0000000080007ac0 <devintr>:
    80007ac0:	142027f3          	csrr	a5,scause
    80007ac4:	00000513          	li	a0,0
    80007ac8:	0007c463          	bltz	a5,80007ad0 <devintr+0x10>
    80007acc:	00008067          	ret
    80007ad0:	fe010113          	addi	sp,sp,-32
    80007ad4:	00813823          	sd	s0,16(sp)
    80007ad8:	00113c23          	sd	ra,24(sp)
    80007adc:	00913423          	sd	s1,8(sp)
    80007ae0:	02010413          	addi	s0,sp,32
    80007ae4:	0ff7f713          	andi	a4,a5,255
    80007ae8:	00900693          	li	a3,9
    80007aec:	04d70c63          	beq	a4,a3,80007b44 <devintr+0x84>
    80007af0:	fff00713          	li	a4,-1
    80007af4:	03f71713          	slli	a4,a4,0x3f
    80007af8:	00170713          	addi	a4,a4,1
    80007afc:	00e78c63          	beq	a5,a4,80007b14 <devintr+0x54>
    80007b00:	01813083          	ld	ra,24(sp)
    80007b04:	01013403          	ld	s0,16(sp)
    80007b08:	00813483          	ld	s1,8(sp)
    80007b0c:	02010113          	addi	sp,sp,32
    80007b10:	00008067          	ret
    80007b14:	00000097          	auipc	ra,0x0
    80007b18:	c8c080e7          	jalr	-884(ra) # 800077a0 <cpuid>
    80007b1c:	06050663          	beqz	a0,80007b88 <devintr+0xc8>
    80007b20:	144027f3          	csrr	a5,sip
    80007b24:	ffd7f793          	andi	a5,a5,-3
    80007b28:	14479073          	csrw	sip,a5
    80007b2c:	01813083          	ld	ra,24(sp)
    80007b30:	01013403          	ld	s0,16(sp)
    80007b34:	00813483          	ld	s1,8(sp)
    80007b38:	00200513          	li	a0,2
    80007b3c:	02010113          	addi	sp,sp,32
    80007b40:	00008067          	ret
    80007b44:	00000097          	auipc	ra,0x0
    80007b48:	250080e7          	jalr	592(ra) # 80007d94 <plic_claim>
    80007b4c:	00a00793          	li	a5,10
    80007b50:	00050493          	mv	s1,a0
    80007b54:	06f50663          	beq	a0,a5,80007bc0 <devintr+0x100>
    80007b58:	00100513          	li	a0,1
    80007b5c:	fa0482e3          	beqz	s1,80007b00 <devintr+0x40>
    80007b60:	00048593          	mv	a1,s1
    80007b64:	00003517          	auipc	a0,0x3
    80007b68:	a7c50513          	addi	a0,a0,-1412 # 8000a5e0 <CONSOLE_STATUS+0x5d0>
    80007b6c:	00000097          	auipc	ra,0x0
    80007b70:	66c080e7          	jalr	1644(ra) # 800081d8 <__printf>
    80007b74:	00048513          	mv	a0,s1
    80007b78:	00000097          	auipc	ra,0x0
    80007b7c:	254080e7          	jalr	596(ra) # 80007dcc <plic_complete>
    80007b80:	00100513          	li	a0,1
    80007b84:	f7dff06f          	j	80007b00 <devintr+0x40>
    80007b88:	0000a517          	auipc	a0,0xa
    80007b8c:	6b850513          	addi	a0,a0,1720 # 80012240 <tickslock>
    80007b90:	00001097          	auipc	ra,0x1
    80007b94:	31c080e7          	jalr	796(ra) # 80008eac <acquire>
    80007b98:	00005717          	auipc	a4,0x5
    80007b9c:	4bc70713          	addi	a4,a4,1212 # 8000d054 <ticks>
    80007ba0:	00072783          	lw	a5,0(a4)
    80007ba4:	0000a517          	auipc	a0,0xa
    80007ba8:	69c50513          	addi	a0,a0,1692 # 80012240 <tickslock>
    80007bac:	0017879b          	addiw	a5,a5,1
    80007bb0:	00f72023          	sw	a5,0(a4)
    80007bb4:	00001097          	auipc	ra,0x1
    80007bb8:	3c4080e7          	jalr	964(ra) # 80008f78 <release>
    80007bbc:	f65ff06f          	j	80007b20 <devintr+0x60>
    80007bc0:	00001097          	auipc	ra,0x1
    80007bc4:	f20080e7          	jalr	-224(ra) # 80008ae0 <uartintr>
    80007bc8:	fadff06f          	j	80007b74 <devintr+0xb4>
    80007bcc:	0000                	unimp
	...

0000000080007bd0 <kernelvec>:
    80007bd0:	f0010113          	addi	sp,sp,-256
    80007bd4:	00113023          	sd	ra,0(sp)
    80007bd8:	00213423          	sd	sp,8(sp)
    80007bdc:	00313823          	sd	gp,16(sp)
    80007be0:	00413c23          	sd	tp,24(sp)
    80007be4:	02513023          	sd	t0,32(sp)
    80007be8:	02613423          	sd	t1,40(sp)
    80007bec:	02713823          	sd	t2,48(sp)
    80007bf0:	02813c23          	sd	s0,56(sp)
    80007bf4:	04913023          	sd	s1,64(sp)
    80007bf8:	04a13423          	sd	a0,72(sp)
    80007bfc:	04b13823          	sd	a1,80(sp)
    80007c00:	04c13c23          	sd	a2,88(sp)
    80007c04:	06d13023          	sd	a3,96(sp)
    80007c08:	06e13423          	sd	a4,104(sp)
    80007c0c:	06f13823          	sd	a5,112(sp)
    80007c10:	07013c23          	sd	a6,120(sp)
    80007c14:	09113023          	sd	a7,128(sp)
    80007c18:	09213423          	sd	s2,136(sp)
    80007c1c:	09313823          	sd	s3,144(sp)
    80007c20:	09413c23          	sd	s4,152(sp)
    80007c24:	0b513023          	sd	s5,160(sp)
    80007c28:	0b613423          	sd	s6,168(sp)
    80007c2c:	0b713823          	sd	s7,176(sp)
    80007c30:	0b813c23          	sd	s8,184(sp)
    80007c34:	0d913023          	sd	s9,192(sp)
    80007c38:	0da13423          	sd	s10,200(sp)
    80007c3c:	0db13823          	sd	s11,208(sp)
    80007c40:	0dc13c23          	sd	t3,216(sp)
    80007c44:	0fd13023          	sd	t4,224(sp)
    80007c48:	0fe13423          	sd	t5,232(sp)
    80007c4c:	0ff13823          	sd	t6,240(sp)
    80007c50:	cd1ff0ef          	jal	ra,80007920 <kerneltrap>
    80007c54:	00013083          	ld	ra,0(sp)
    80007c58:	00813103          	ld	sp,8(sp)
    80007c5c:	01013183          	ld	gp,16(sp)
    80007c60:	02013283          	ld	t0,32(sp)
    80007c64:	02813303          	ld	t1,40(sp)
    80007c68:	03013383          	ld	t2,48(sp)
    80007c6c:	03813403          	ld	s0,56(sp)
    80007c70:	04013483          	ld	s1,64(sp)
    80007c74:	04813503          	ld	a0,72(sp)
    80007c78:	05013583          	ld	a1,80(sp)
    80007c7c:	05813603          	ld	a2,88(sp)
    80007c80:	06013683          	ld	a3,96(sp)
    80007c84:	06813703          	ld	a4,104(sp)
    80007c88:	07013783          	ld	a5,112(sp)
    80007c8c:	07813803          	ld	a6,120(sp)
    80007c90:	08013883          	ld	a7,128(sp)
    80007c94:	08813903          	ld	s2,136(sp)
    80007c98:	09013983          	ld	s3,144(sp)
    80007c9c:	09813a03          	ld	s4,152(sp)
    80007ca0:	0a013a83          	ld	s5,160(sp)
    80007ca4:	0a813b03          	ld	s6,168(sp)
    80007ca8:	0b013b83          	ld	s7,176(sp)
    80007cac:	0b813c03          	ld	s8,184(sp)
    80007cb0:	0c013c83          	ld	s9,192(sp)
    80007cb4:	0c813d03          	ld	s10,200(sp)
    80007cb8:	0d013d83          	ld	s11,208(sp)
    80007cbc:	0d813e03          	ld	t3,216(sp)
    80007cc0:	0e013e83          	ld	t4,224(sp)
    80007cc4:	0e813f03          	ld	t5,232(sp)
    80007cc8:	0f013f83          	ld	t6,240(sp)
    80007ccc:	10010113          	addi	sp,sp,256
    80007cd0:	10200073          	sret
    80007cd4:	00000013          	nop
    80007cd8:	00000013          	nop
    80007cdc:	00000013          	nop

0000000080007ce0 <timervec>:
    80007ce0:	34051573          	csrrw	a0,mscratch,a0
    80007ce4:	00b53023          	sd	a1,0(a0)
    80007ce8:	00c53423          	sd	a2,8(a0)
    80007cec:	00d53823          	sd	a3,16(a0)
    80007cf0:	01853583          	ld	a1,24(a0)
    80007cf4:	02053603          	ld	a2,32(a0)
    80007cf8:	0005b683          	ld	a3,0(a1)
    80007cfc:	00c686b3          	add	a3,a3,a2
    80007d00:	00d5b023          	sd	a3,0(a1)
    80007d04:	00200593          	li	a1,2
    80007d08:	14459073          	csrw	sip,a1
    80007d0c:	01053683          	ld	a3,16(a0)
    80007d10:	00853603          	ld	a2,8(a0)
    80007d14:	00053583          	ld	a1,0(a0)
    80007d18:	34051573          	csrrw	a0,mscratch,a0
    80007d1c:	30200073          	mret

0000000080007d20 <plicinit>:
    80007d20:	ff010113          	addi	sp,sp,-16
    80007d24:	00813423          	sd	s0,8(sp)
    80007d28:	01010413          	addi	s0,sp,16
    80007d2c:	00813403          	ld	s0,8(sp)
    80007d30:	0c0007b7          	lui	a5,0xc000
    80007d34:	00100713          	li	a4,1
    80007d38:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80007d3c:	00e7a223          	sw	a4,4(a5)
    80007d40:	01010113          	addi	sp,sp,16
    80007d44:	00008067          	ret

0000000080007d48 <plicinithart>:
    80007d48:	ff010113          	addi	sp,sp,-16
    80007d4c:	00813023          	sd	s0,0(sp)
    80007d50:	00113423          	sd	ra,8(sp)
    80007d54:	01010413          	addi	s0,sp,16
    80007d58:	00000097          	auipc	ra,0x0
    80007d5c:	a48080e7          	jalr	-1464(ra) # 800077a0 <cpuid>
    80007d60:	0085171b          	slliw	a4,a0,0x8
    80007d64:	0c0027b7          	lui	a5,0xc002
    80007d68:	00e787b3          	add	a5,a5,a4
    80007d6c:	40200713          	li	a4,1026
    80007d70:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007d74:	00813083          	ld	ra,8(sp)
    80007d78:	00013403          	ld	s0,0(sp)
    80007d7c:	00d5151b          	slliw	a0,a0,0xd
    80007d80:	0c2017b7          	lui	a5,0xc201
    80007d84:	00a78533          	add	a0,a5,a0
    80007d88:	00052023          	sw	zero,0(a0)
    80007d8c:	01010113          	addi	sp,sp,16
    80007d90:	00008067          	ret

0000000080007d94 <plic_claim>:
    80007d94:	ff010113          	addi	sp,sp,-16
    80007d98:	00813023          	sd	s0,0(sp)
    80007d9c:	00113423          	sd	ra,8(sp)
    80007da0:	01010413          	addi	s0,sp,16
    80007da4:	00000097          	auipc	ra,0x0
    80007da8:	9fc080e7          	jalr	-1540(ra) # 800077a0 <cpuid>
    80007dac:	00813083          	ld	ra,8(sp)
    80007db0:	00013403          	ld	s0,0(sp)
    80007db4:	00d5151b          	slliw	a0,a0,0xd
    80007db8:	0c2017b7          	lui	a5,0xc201
    80007dbc:	00a78533          	add	a0,a5,a0
    80007dc0:	00452503          	lw	a0,4(a0)
    80007dc4:	01010113          	addi	sp,sp,16
    80007dc8:	00008067          	ret

0000000080007dcc <plic_complete>:
    80007dcc:	fe010113          	addi	sp,sp,-32
    80007dd0:	00813823          	sd	s0,16(sp)
    80007dd4:	00913423          	sd	s1,8(sp)
    80007dd8:	00113c23          	sd	ra,24(sp)
    80007ddc:	02010413          	addi	s0,sp,32
    80007de0:	00050493          	mv	s1,a0
    80007de4:	00000097          	auipc	ra,0x0
    80007de8:	9bc080e7          	jalr	-1604(ra) # 800077a0 <cpuid>
    80007dec:	01813083          	ld	ra,24(sp)
    80007df0:	01013403          	ld	s0,16(sp)
    80007df4:	00d5179b          	slliw	a5,a0,0xd
    80007df8:	0c201737          	lui	a4,0xc201
    80007dfc:	00f707b3          	add	a5,a4,a5
    80007e00:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007e04:	00813483          	ld	s1,8(sp)
    80007e08:	02010113          	addi	sp,sp,32
    80007e0c:	00008067          	ret

0000000080007e10 <consolewrite>:
    80007e10:	fb010113          	addi	sp,sp,-80
    80007e14:	04813023          	sd	s0,64(sp)
    80007e18:	04113423          	sd	ra,72(sp)
    80007e1c:	02913c23          	sd	s1,56(sp)
    80007e20:	03213823          	sd	s2,48(sp)
    80007e24:	03313423          	sd	s3,40(sp)
    80007e28:	03413023          	sd	s4,32(sp)
    80007e2c:	01513c23          	sd	s5,24(sp)
    80007e30:	05010413          	addi	s0,sp,80
    80007e34:	06c05c63          	blez	a2,80007eac <consolewrite+0x9c>
    80007e38:	00060993          	mv	s3,a2
    80007e3c:	00050a13          	mv	s4,a0
    80007e40:	00058493          	mv	s1,a1
    80007e44:	00000913          	li	s2,0
    80007e48:	fff00a93          	li	s5,-1
    80007e4c:	01c0006f          	j	80007e68 <consolewrite+0x58>
    80007e50:	fbf44503          	lbu	a0,-65(s0)
    80007e54:	0019091b          	addiw	s2,s2,1
    80007e58:	00148493          	addi	s1,s1,1
    80007e5c:	00001097          	auipc	ra,0x1
    80007e60:	a9c080e7          	jalr	-1380(ra) # 800088f8 <uartputc>
    80007e64:	03298063          	beq	s3,s2,80007e84 <consolewrite+0x74>
    80007e68:	00048613          	mv	a2,s1
    80007e6c:	00100693          	li	a3,1
    80007e70:	000a0593          	mv	a1,s4
    80007e74:	fbf40513          	addi	a0,s0,-65
    80007e78:	00000097          	auipc	ra,0x0
    80007e7c:	9e0080e7          	jalr	-1568(ra) # 80007858 <either_copyin>
    80007e80:	fd5518e3          	bne	a0,s5,80007e50 <consolewrite+0x40>
    80007e84:	04813083          	ld	ra,72(sp)
    80007e88:	04013403          	ld	s0,64(sp)
    80007e8c:	03813483          	ld	s1,56(sp)
    80007e90:	02813983          	ld	s3,40(sp)
    80007e94:	02013a03          	ld	s4,32(sp)
    80007e98:	01813a83          	ld	s5,24(sp)
    80007e9c:	00090513          	mv	a0,s2
    80007ea0:	03013903          	ld	s2,48(sp)
    80007ea4:	05010113          	addi	sp,sp,80
    80007ea8:	00008067          	ret
    80007eac:	00000913          	li	s2,0
    80007eb0:	fd5ff06f          	j	80007e84 <consolewrite+0x74>

0000000080007eb4 <consoleread>:
    80007eb4:	f9010113          	addi	sp,sp,-112
    80007eb8:	06813023          	sd	s0,96(sp)
    80007ebc:	04913c23          	sd	s1,88(sp)
    80007ec0:	05213823          	sd	s2,80(sp)
    80007ec4:	05313423          	sd	s3,72(sp)
    80007ec8:	05413023          	sd	s4,64(sp)
    80007ecc:	03513c23          	sd	s5,56(sp)
    80007ed0:	03613823          	sd	s6,48(sp)
    80007ed4:	03713423          	sd	s7,40(sp)
    80007ed8:	03813023          	sd	s8,32(sp)
    80007edc:	06113423          	sd	ra,104(sp)
    80007ee0:	01913c23          	sd	s9,24(sp)
    80007ee4:	07010413          	addi	s0,sp,112
    80007ee8:	00060b93          	mv	s7,a2
    80007eec:	00050913          	mv	s2,a0
    80007ef0:	00058c13          	mv	s8,a1
    80007ef4:	00060b1b          	sext.w	s6,a2
    80007ef8:	0000a497          	auipc	s1,0xa
    80007efc:	37048493          	addi	s1,s1,880 # 80012268 <cons>
    80007f00:	00400993          	li	s3,4
    80007f04:	fff00a13          	li	s4,-1
    80007f08:	00a00a93          	li	s5,10
    80007f0c:	05705e63          	blez	s7,80007f68 <consoleread+0xb4>
    80007f10:	09c4a703          	lw	a4,156(s1)
    80007f14:	0984a783          	lw	a5,152(s1)
    80007f18:	0007071b          	sext.w	a4,a4
    80007f1c:	08e78463          	beq	a5,a4,80007fa4 <consoleread+0xf0>
    80007f20:	07f7f713          	andi	a4,a5,127
    80007f24:	00e48733          	add	a4,s1,a4
    80007f28:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80007f2c:	0017869b          	addiw	a3,a5,1
    80007f30:	08d4ac23          	sw	a3,152(s1)
    80007f34:	00070c9b          	sext.w	s9,a4
    80007f38:	0b370663          	beq	a4,s3,80007fe4 <consoleread+0x130>
    80007f3c:	00100693          	li	a3,1
    80007f40:	f9f40613          	addi	a2,s0,-97
    80007f44:	000c0593          	mv	a1,s8
    80007f48:	00090513          	mv	a0,s2
    80007f4c:	f8e40fa3          	sb	a4,-97(s0)
    80007f50:	00000097          	auipc	ra,0x0
    80007f54:	8bc080e7          	jalr	-1860(ra) # 8000780c <either_copyout>
    80007f58:	01450863          	beq	a0,s4,80007f68 <consoleread+0xb4>
    80007f5c:	001c0c13          	addi	s8,s8,1
    80007f60:	fffb8b9b          	addiw	s7,s7,-1
    80007f64:	fb5c94e3          	bne	s9,s5,80007f0c <consoleread+0x58>
    80007f68:	000b851b          	sext.w	a0,s7
    80007f6c:	06813083          	ld	ra,104(sp)
    80007f70:	06013403          	ld	s0,96(sp)
    80007f74:	05813483          	ld	s1,88(sp)
    80007f78:	05013903          	ld	s2,80(sp)
    80007f7c:	04813983          	ld	s3,72(sp)
    80007f80:	04013a03          	ld	s4,64(sp)
    80007f84:	03813a83          	ld	s5,56(sp)
    80007f88:	02813b83          	ld	s7,40(sp)
    80007f8c:	02013c03          	ld	s8,32(sp)
    80007f90:	01813c83          	ld	s9,24(sp)
    80007f94:	40ab053b          	subw	a0,s6,a0
    80007f98:	03013b03          	ld	s6,48(sp)
    80007f9c:	07010113          	addi	sp,sp,112
    80007fa0:	00008067          	ret
    80007fa4:	00001097          	auipc	ra,0x1
    80007fa8:	1d8080e7          	jalr	472(ra) # 8000917c <push_on>
    80007fac:	0984a703          	lw	a4,152(s1)
    80007fb0:	09c4a783          	lw	a5,156(s1)
    80007fb4:	0007879b          	sext.w	a5,a5
    80007fb8:	fef70ce3          	beq	a4,a5,80007fb0 <consoleread+0xfc>
    80007fbc:	00001097          	auipc	ra,0x1
    80007fc0:	234080e7          	jalr	564(ra) # 800091f0 <pop_on>
    80007fc4:	0984a783          	lw	a5,152(s1)
    80007fc8:	07f7f713          	andi	a4,a5,127
    80007fcc:	00e48733          	add	a4,s1,a4
    80007fd0:	01874703          	lbu	a4,24(a4)
    80007fd4:	0017869b          	addiw	a3,a5,1
    80007fd8:	08d4ac23          	sw	a3,152(s1)
    80007fdc:	00070c9b          	sext.w	s9,a4
    80007fe0:	f5371ee3          	bne	a4,s3,80007f3c <consoleread+0x88>
    80007fe4:	000b851b          	sext.w	a0,s7
    80007fe8:	f96bf2e3          	bgeu	s7,s6,80007f6c <consoleread+0xb8>
    80007fec:	08f4ac23          	sw	a5,152(s1)
    80007ff0:	f7dff06f          	j	80007f6c <consoleread+0xb8>

0000000080007ff4 <consputc>:
    80007ff4:	10000793          	li	a5,256
    80007ff8:	00f50663          	beq	a0,a5,80008004 <consputc+0x10>
    80007ffc:	00001317          	auipc	t1,0x1
    80008000:	9f430067          	jr	-1548(t1) # 800089f0 <uartputc_sync>
    80008004:	ff010113          	addi	sp,sp,-16
    80008008:	00113423          	sd	ra,8(sp)
    8000800c:	00813023          	sd	s0,0(sp)
    80008010:	01010413          	addi	s0,sp,16
    80008014:	00800513          	li	a0,8
    80008018:	00001097          	auipc	ra,0x1
    8000801c:	9d8080e7          	jalr	-1576(ra) # 800089f0 <uartputc_sync>
    80008020:	02000513          	li	a0,32
    80008024:	00001097          	auipc	ra,0x1
    80008028:	9cc080e7          	jalr	-1588(ra) # 800089f0 <uartputc_sync>
    8000802c:	00013403          	ld	s0,0(sp)
    80008030:	00813083          	ld	ra,8(sp)
    80008034:	00800513          	li	a0,8
    80008038:	01010113          	addi	sp,sp,16
    8000803c:	00001317          	auipc	t1,0x1
    80008040:	9b430067          	jr	-1612(t1) # 800089f0 <uartputc_sync>

0000000080008044 <consoleintr>:
    80008044:	fe010113          	addi	sp,sp,-32
    80008048:	00813823          	sd	s0,16(sp)
    8000804c:	00913423          	sd	s1,8(sp)
    80008050:	01213023          	sd	s2,0(sp)
    80008054:	00113c23          	sd	ra,24(sp)
    80008058:	02010413          	addi	s0,sp,32
    8000805c:	0000a917          	auipc	s2,0xa
    80008060:	20c90913          	addi	s2,s2,524 # 80012268 <cons>
    80008064:	00050493          	mv	s1,a0
    80008068:	00090513          	mv	a0,s2
    8000806c:	00001097          	auipc	ra,0x1
    80008070:	e40080e7          	jalr	-448(ra) # 80008eac <acquire>
    80008074:	02048c63          	beqz	s1,800080ac <consoleintr+0x68>
    80008078:	0a092783          	lw	a5,160(s2)
    8000807c:	09892703          	lw	a4,152(s2)
    80008080:	07f00693          	li	a3,127
    80008084:	40e7873b          	subw	a4,a5,a4
    80008088:	02e6e263          	bltu	a3,a4,800080ac <consoleintr+0x68>
    8000808c:	00d00713          	li	a4,13
    80008090:	04e48063          	beq	s1,a4,800080d0 <consoleintr+0x8c>
    80008094:	07f7f713          	andi	a4,a5,127
    80008098:	00e90733          	add	a4,s2,a4
    8000809c:	0017879b          	addiw	a5,a5,1
    800080a0:	0af92023          	sw	a5,160(s2)
    800080a4:	00970c23          	sb	s1,24(a4)
    800080a8:	08f92e23          	sw	a5,156(s2)
    800080ac:	01013403          	ld	s0,16(sp)
    800080b0:	01813083          	ld	ra,24(sp)
    800080b4:	00813483          	ld	s1,8(sp)
    800080b8:	00013903          	ld	s2,0(sp)
    800080bc:	0000a517          	auipc	a0,0xa
    800080c0:	1ac50513          	addi	a0,a0,428 # 80012268 <cons>
    800080c4:	02010113          	addi	sp,sp,32
    800080c8:	00001317          	auipc	t1,0x1
    800080cc:	eb030067          	jr	-336(t1) # 80008f78 <release>
    800080d0:	00a00493          	li	s1,10
    800080d4:	fc1ff06f          	j	80008094 <consoleintr+0x50>

00000000800080d8 <consoleinit>:
    800080d8:	fe010113          	addi	sp,sp,-32
    800080dc:	00113c23          	sd	ra,24(sp)
    800080e0:	00813823          	sd	s0,16(sp)
    800080e4:	00913423          	sd	s1,8(sp)
    800080e8:	02010413          	addi	s0,sp,32
    800080ec:	0000a497          	auipc	s1,0xa
    800080f0:	17c48493          	addi	s1,s1,380 # 80012268 <cons>
    800080f4:	00048513          	mv	a0,s1
    800080f8:	00002597          	auipc	a1,0x2
    800080fc:	54058593          	addi	a1,a1,1344 # 8000a638 <CONSOLE_STATUS+0x628>
    80008100:	00001097          	auipc	ra,0x1
    80008104:	d88080e7          	jalr	-632(ra) # 80008e88 <initlock>
    80008108:	00000097          	auipc	ra,0x0
    8000810c:	7ac080e7          	jalr	1964(ra) # 800088b4 <uartinit>
    80008110:	01813083          	ld	ra,24(sp)
    80008114:	01013403          	ld	s0,16(sp)
    80008118:	00000797          	auipc	a5,0x0
    8000811c:	d9c78793          	addi	a5,a5,-612 # 80007eb4 <consoleread>
    80008120:	0af4bc23          	sd	a5,184(s1)
    80008124:	00000797          	auipc	a5,0x0
    80008128:	cec78793          	addi	a5,a5,-788 # 80007e10 <consolewrite>
    8000812c:	0cf4b023          	sd	a5,192(s1)
    80008130:	00813483          	ld	s1,8(sp)
    80008134:	02010113          	addi	sp,sp,32
    80008138:	00008067          	ret

000000008000813c <console_read>:
    8000813c:	ff010113          	addi	sp,sp,-16
    80008140:	00813423          	sd	s0,8(sp)
    80008144:	01010413          	addi	s0,sp,16
    80008148:	00813403          	ld	s0,8(sp)
    8000814c:	0000a317          	auipc	t1,0xa
    80008150:	1d433303          	ld	t1,468(t1) # 80012320 <devsw+0x10>
    80008154:	01010113          	addi	sp,sp,16
    80008158:	00030067          	jr	t1

000000008000815c <console_write>:
    8000815c:	ff010113          	addi	sp,sp,-16
    80008160:	00813423          	sd	s0,8(sp)
    80008164:	01010413          	addi	s0,sp,16
    80008168:	00813403          	ld	s0,8(sp)
    8000816c:	0000a317          	auipc	t1,0xa
    80008170:	1bc33303          	ld	t1,444(t1) # 80012328 <devsw+0x18>
    80008174:	01010113          	addi	sp,sp,16
    80008178:	00030067          	jr	t1

000000008000817c <panic>:
    8000817c:	fe010113          	addi	sp,sp,-32
    80008180:	00113c23          	sd	ra,24(sp)
    80008184:	00813823          	sd	s0,16(sp)
    80008188:	00913423          	sd	s1,8(sp)
    8000818c:	02010413          	addi	s0,sp,32
    80008190:	00050493          	mv	s1,a0
    80008194:	00002517          	auipc	a0,0x2
    80008198:	4ac50513          	addi	a0,a0,1196 # 8000a640 <CONSOLE_STATUS+0x630>
    8000819c:	0000a797          	auipc	a5,0xa
    800081a0:	2207a623          	sw	zero,556(a5) # 800123c8 <pr+0x18>
    800081a4:	00000097          	auipc	ra,0x0
    800081a8:	034080e7          	jalr	52(ra) # 800081d8 <__printf>
    800081ac:	00048513          	mv	a0,s1
    800081b0:	00000097          	auipc	ra,0x0
    800081b4:	028080e7          	jalr	40(ra) # 800081d8 <__printf>
    800081b8:	00002517          	auipc	a0,0x2
    800081bc:	f4050513          	addi	a0,a0,-192 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    800081c0:	00000097          	auipc	ra,0x0
    800081c4:	018080e7          	jalr	24(ra) # 800081d8 <__printf>
    800081c8:	00100793          	li	a5,1
    800081cc:	00005717          	auipc	a4,0x5
    800081d0:	e8f72623          	sw	a5,-372(a4) # 8000d058 <panicked>
    800081d4:	0000006f          	j	800081d4 <panic+0x58>

00000000800081d8 <__printf>:
    800081d8:	f3010113          	addi	sp,sp,-208
    800081dc:	08813023          	sd	s0,128(sp)
    800081e0:	07313423          	sd	s3,104(sp)
    800081e4:	09010413          	addi	s0,sp,144
    800081e8:	05813023          	sd	s8,64(sp)
    800081ec:	08113423          	sd	ra,136(sp)
    800081f0:	06913c23          	sd	s1,120(sp)
    800081f4:	07213823          	sd	s2,112(sp)
    800081f8:	07413023          	sd	s4,96(sp)
    800081fc:	05513c23          	sd	s5,88(sp)
    80008200:	05613823          	sd	s6,80(sp)
    80008204:	05713423          	sd	s7,72(sp)
    80008208:	03913c23          	sd	s9,56(sp)
    8000820c:	03a13823          	sd	s10,48(sp)
    80008210:	03b13423          	sd	s11,40(sp)
    80008214:	0000a317          	auipc	t1,0xa
    80008218:	19c30313          	addi	t1,t1,412 # 800123b0 <pr>
    8000821c:	01832c03          	lw	s8,24(t1)
    80008220:	00b43423          	sd	a1,8(s0)
    80008224:	00c43823          	sd	a2,16(s0)
    80008228:	00d43c23          	sd	a3,24(s0)
    8000822c:	02e43023          	sd	a4,32(s0)
    80008230:	02f43423          	sd	a5,40(s0)
    80008234:	03043823          	sd	a6,48(s0)
    80008238:	03143c23          	sd	a7,56(s0)
    8000823c:	00050993          	mv	s3,a0
    80008240:	4a0c1663          	bnez	s8,800086ec <__printf+0x514>
    80008244:	60098c63          	beqz	s3,8000885c <__printf+0x684>
    80008248:	0009c503          	lbu	a0,0(s3)
    8000824c:	00840793          	addi	a5,s0,8
    80008250:	f6f43c23          	sd	a5,-136(s0)
    80008254:	00000493          	li	s1,0
    80008258:	22050063          	beqz	a0,80008478 <__printf+0x2a0>
    8000825c:	00002a37          	lui	s4,0x2
    80008260:	00018ab7          	lui	s5,0x18
    80008264:	000f4b37          	lui	s6,0xf4
    80008268:	00989bb7          	lui	s7,0x989
    8000826c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80008270:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80008274:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80008278:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000827c:	00148c9b          	addiw	s9,s1,1
    80008280:	02500793          	li	a5,37
    80008284:	01998933          	add	s2,s3,s9
    80008288:	38f51263          	bne	a0,a5,8000860c <__printf+0x434>
    8000828c:	00094783          	lbu	a5,0(s2)
    80008290:	00078c9b          	sext.w	s9,a5
    80008294:	1e078263          	beqz	a5,80008478 <__printf+0x2a0>
    80008298:	0024849b          	addiw	s1,s1,2
    8000829c:	07000713          	li	a4,112
    800082a0:	00998933          	add	s2,s3,s1
    800082a4:	38e78a63          	beq	a5,a4,80008638 <__printf+0x460>
    800082a8:	20f76863          	bltu	a4,a5,800084b8 <__printf+0x2e0>
    800082ac:	42a78863          	beq	a5,a0,800086dc <__printf+0x504>
    800082b0:	06400713          	li	a4,100
    800082b4:	40e79663          	bne	a5,a4,800086c0 <__printf+0x4e8>
    800082b8:	f7843783          	ld	a5,-136(s0)
    800082bc:	0007a603          	lw	a2,0(a5)
    800082c0:	00878793          	addi	a5,a5,8
    800082c4:	f6f43c23          	sd	a5,-136(s0)
    800082c8:	42064a63          	bltz	a2,800086fc <__printf+0x524>
    800082cc:	00a00713          	li	a4,10
    800082d0:	02e677bb          	remuw	a5,a2,a4
    800082d4:	00002d97          	auipc	s11,0x2
    800082d8:	394d8d93          	addi	s11,s11,916 # 8000a668 <digits>
    800082dc:	00900593          	li	a1,9
    800082e0:	0006051b          	sext.w	a0,a2
    800082e4:	00000c93          	li	s9,0
    800082e8:	02079793          	slli	a5,a5,0x20
    800082ec:	0207d793          	srli	a5,a5,0x20
    800082f0:	00fd87b3          	add	a5,s11,a5
    800082f4:	0007c783          	lbu	a5,0(a5)
    800082f8:	02e656bb          	divuw	a3,a2,a4
    800082fc:	f8f40023          	sb	a5,-128(s0)
    80008300:	14c5d863          	bge	a1,a2,80008450 <__printf+0x278>
    80008304:	06300593          	li	a1,99
    80008308:	00100c93          	li	s9,1
    8000830c:	02e6f7bb          	remuw	a5,a3,a4
    80008310:	02079793          	slli	a5,a5,0x20
    80008314:	0207d793          	srli	a5,a5,0x20
    80008318:	00fd87b3          	add	a5,s11,a5
    8000831c:	0007c783          	lbu	a5,0(a5)
    80008320:	02e6d73b          	divuw	a4,a3,a4
    80008324:	f8f400a3          	sb	a5,-127(s0)
    80008328:	12a5f463          	bgeu	a1,a0,80008450 <__printf+0x278>
    8000832c:	00a00693          	li	a3,10
    80008330:	00900593          	li	a1,9
    80008334:	02d777bb          	remuw	a5,a4,a3
    80008338:	02079793          	slli	a5,a5,0x20
    8000833c:	0207d793          	srli	a5,a5,0x20
    80008340:	00fd87b3          	add	a5,s11,a5
    80008344:	0007c503          	lbu	a0,0(a5)
    80008348:	02d757bb          	divuw	a5,a4,a3
    8000834c:	f8a40123          	sb	a0,-126(s0)
    80008350:	48e5f263          	bgeu	a1,a4,800087d4 <__printf+0x5fc>
    80008354:	06300513          	li	a0,99
    80008358:	02d7f5bb          	remuw	a1,a5,a3
    8000835c:	02059593          	slli	a1,a1,0x20
    80008360:	0205d593          	srli	a1,a1,0x20
    80008364:	00bd85b3          	add	a1,s11,a1
    80008368:	0005c583          	lbu	a1,0(a1)
    8000836c:	02d7d7bb          	divuw	a5,a5,a3
    80008370:	f8b401a3          	sb	a1,-125(s0)
    80008374:	48e57263          	bgeu	a0,a4,800087f8 <__printf+0x620>
    80008378:	3e700513          	li	a0,999
    8000837c:	02d7f5bb          	remuw	a1,a5,a3
    80008380:	02059593          	slli	a1,a1,0x20
    80008384:	0205d593          	srli	a1,a1,0x20
    80008388:	00bd85b3          	add	a1,s11,a1
    8000838c:	0005c583          	lbu	a1,0(a1)
    80008390:	02d7d7bb          	divuw	a5,a5,a3
    80008394:	f8b40223          	sb	a1,-124(s0)
    80008398:	46e57663          	bgeu	a0,a4,80008804 <__printf+0x62c>
    8000839c:	02d7f5bb          	remuw	a1,a5,a3
    800083a0:	02059593          	slli	a1,a1,0x20
    800083a4:	0205d593          	srli	a1,a1,0x20
    800083a8:	00bd85b3          	add	a1,s11,a1
    800083ac:	0005c583          	lbu	a1,0(a1)
    800083b0:	02d7d7bb          	divuw	a5,a5,a3
    800083b4:	f8b402a3          	sb	a1,-123(s0)
    800083b8:	46ea7863          	bgeu	s4,a4,80008828 <__printf+0x650>
    800083bc:	02d7f5bb          	remuw	a1,a5,a3
    800083c0:	02059593          	slli	a1,a1,0x20
    800083c4:	0205d593          	srli	a1,a1,0x20
    800083c8:	00bd85b3          	add	a1,s11,a1
    800083cc:	0005c583          	lbu	a1,0(a1)
    800083d0:	02d7d7bb          	divuw	a5,a5,a3
    800083d4:	f8b40323          	sb	a1,-122(s0)
    800083d8:	3eeaf863          	bgeu	s5,a4,800087c8 <__printf+0x5f0>
    800083dc:	02d7f5bb          	remuw	a1,a5,a3
    800083e0:	02059593          	slli	a1,a1,0x20
    800083e4:	0205d593          	srli	a1,a1,0x20
    800083e8:	00bd85b3          	add	a1,s11,a1
    800083ec:	0005c583          	lbu	a1,0(a1)
    800083f0:	02d7d7bb          	divuw	a5,a5,a3
    800083f4:	f8b403a3          	sb	a1,-121(s0)
    800083f8:	42eb7e63          	bgeu	s6,a4,80008834 <__printf+0x65c>
    800083fc:	02d7f5bb          	remuw	a1,a5,a3
    80008400:	02059593          	slli	a1,a1,0x20
    80008404:	0205d593          	srli	a1,a1,0x20
    80008408:	00bd85b3          	add	a1,s11,a1
    8000840c:	0005c583          	lbu	a1,0(a1)
    80008410:	02d7d7bb          	divuw	a5,a5,a3
    80008414:	f8b40423          	sb	a1,-120(s0)
    80008418:	42ebfc63          	bgeu	s7,a4,80008850 <__printf+0x678>
    8000841c:	02079793          	slli	a5,a5,0x20
    80008420:	0207d793          	srli	a5,a5,0x20
    80008424:	00fd8db3          	add	s11,s11,a5
    80008428:	000dc703          	lbu	a4,0(s11)
    8000842c:	00a00793          	li	a5,10
    80008430:	00900c93          	li	s9,9
    80008434:	f8e404a3          	sb	a4,-119(s0)
    80008438:	00065c63          	bgez	a2,80008450 <__printf+0x278>
    8000843c:	f9040713          	addi	a4,s0,-112
    80008440:	00f70733          	add	a4,a4,a5
    80008444:	02d00693          	li	a3,45
    80008448:	fed70823          	sb	a3,-16(a4)
    8000844c:	00078c93          	mv	s9,a5
    80008450:	f8040793          	addi	a5,s0,-128
    80008454:	01978cb3          	add	s9,a5,s9
    80008458:	f7f40d13          	addi	s10,s0,-129
    8000845c:	000cc503          	lbu	a0,0(s9)
    80008460:	fffc8c93          	addi	s9,s9,-1
    80008464:	00000097          	auipc	ra,0x0
    80008468:	b90080e7          	jalr	-1136(ra) # 80007ff4 <consputc>
    8000846c:	ffac98e3          	bne	s9,s10,8000845c <__printf+0x284>
    80008470:	00094503          	lbu	a0,0(s2)
    80008474:	e00514e3          	bnez	a0,8000827c <__printf+0xa4>
    80008478:	1a0c1663          	bnez	s8,80008624 <__printf+0x44c>
    8000847c:	08813083          	ld	ra,136(sp)
    80008480:	08013403          	ld	s0,128(sp)
    80008484:	07813483          	ld	s1,120(sp)
    80008488:	07013903          	ld	s2,112(sp)
    8000848c:	06813983          	ld	s3,104(sp)
    80008490:	06013a03          	ld	s4,96(sp)
    80008494:	05813a83          	ld	s5,88(sp)
    80008498:	05013b03          	ld	s6,80(sp)
    8000849c:	04813b83          	ld	s7,72(sp)
    800084a0:	04013c03          	ld	s8,64(sp)
    800084a4:	03813c83          	ld	s9,56(sp)
    800084a8:	03013d03          	ld	s10,48(sp)
    800084ac:	02813d83          	ld	s11,40(sp)
    800084b0:	0d010113          	addi	sp,sp,208
    800084b4:	00008067          	ret
    800084b8:	07300713          	li	a4,115
    800084bc:	1ce78a63          	beq	a5,a4,80008690 <__printf+0x4b8>
    800084c0:	07800713          	li	a4,120
    800084c4:	1ee79e63          	bne	a5,a4,800086c0 <__printf+0x4e8>
    800084c8:	f7843783          	ld	a5,-136(s0)
    800084cc:	0007a703          	lw	a4,0(a5)
    800084d0:	00878793          	addi	a5,a5,8
    800084d4:	f6f43c23          	sd	a5,-136(s0)
    800084d8:	28074263          	bltz	a4,8000875c <__printf+0x584>
    800084dc:	00002d97          	auipc	s11,0x2
    800084e0:	18cd8d93          	addi	s11,s11,396 # 8000a668 <digits>
    800084e4:	00f77793          	andi	a5,a4,15
    800084e8:	00fd87b3          	add	a5,s11,a5
    800084ec:	0007c683          	lbu	a3,0(a5)
    800084f0:	00f00613          	li	a2,15
    800084f4:	0007079b          	sext.w	a5,a4
    800084f8:	f8d40023          	sb	a3,-128(s0)
    800084fc:	0047559b          	srliw	a1,a4,0x4
    80008500:	0047569b          	srliw	a3,a4,0x4
    80008504:	00000c93          	li	s9,0
    80008508:	0ee65063          	bge	a2,a4,800085e8 <__printf+0x410>
    8000850c:	00f6f693          	andi	a3,a3,15
    80008510:	00dd86b3          	add	a3,s11,a3
    80008514:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80008518:	0087d79b          	srliw	a5,a5,0x8
    8000851c:	00100c93          	li	s9,1
    80008520:	f8d400a3          	sb	a3,-127(s0)
    80008524:	0cb67263          	bgeu	a2,a1,800085e8 <__printf+0x410>
    80008528:	00f7f693          	andi	a3,a5,15
    8000852c:	00dd86b3          	add	a3,s11,a3
    80008530:	0006c583          	lbu	a1,0(a3)
    80008534:	00f00613          	li	a2,15
    80008538:	0047d69b          	srliw	a3,a5,0x4
    8000853c:	f8b40123          	sb	a1,-126(s0)
    80008540:	0047d593          	srli	a1,a5,0x4
    80008544:	28f67e63          	bgeu	a2,a5,800087e0 <__printf+0x608>
    80008548:	00f6f693          	andi	a3,a3,15
    8000854c:	00dd86b3          	add	a3,s11,a3
    80008550:	0006c503          	lbu	a0,0(a3)
    80008554:	0087d813          	srli	a6,a5,0x8
    80008558:	0087d69b          	srliw	a3,a5,0x8
    8000855c:	f8a401a3          	sb	a0,-125(s0)
    80008560:	28b67663          	bgeu	a2,a1,800087ec <__printf+0x614>
    80008564:	00f6f693          	andi	a3,a3,15
    80008568:	00dd86b3          	add	a3,s11,a3
    8000856c:	0006c583          	lbu	a1,0(a3)
    80008570:	00c7d513          	srli	a0,a5,0xc
    80008574:	00c7d69b          	srliw	a3,a5,0xc
    80008578:	f8b40223          	sb	a1,-124(s0)
    8000857c:	29067a63          	bgeu	a2,a6,80008810 <__printf+0x638>
    80008580:	00f6f693          	andi	a3,a3,15
    80008584:	00dd86b3          	add	a3,s11,a3
    80008588:	0006c583          	lbu	a1,0(a3)
    8000858c:	0107d813          	srli	a6,a5,0x10
    80008590:	0107d69b          	srliw	a3,a5,0x10
    80008594:	f8b402a3          	sb	a1,-123(s0)
    80008598:	28a67263          	bgeu	a2,a0,8000881c <__printf+0x644>
    8000859c:	00f6f693          	andi	a3,a3,15
    800085a0:	00dd86b3          	add	a3,s11,a3
    800085a4:	0006c683          	lbu	a3,0(a3)
    800085a8:	0147d79b          	srliw	a5,a5,0x14
    800085ac:	f8d40323          	sb	a3,-122(s0)
    800085b0:	21067663          	bgeu	a2,a6,800087bc <__printf+0x5e4>
    800085b4:	02079793          	slli	a5,a5,0x20
    800085b8:	0207d793          	srli	a5,a5,0x20
    800085bc:	00fd8db3          	add	s11,s11,a5
    800085c0:	000dc683          	lbu	a3,0(s11)
    800085c4:	00800793          	li	a5,8
    800085c8:	00700c93          	li	s9,7
    800085cc:	f8d403a3          	sb	a3,-121(s0)
    800085d0:	00075c63          	bgez	a4,800085e8 <__printf+0x410>
    800085d4:	f9040713          	addi	a4,s0,-112
    800085d8:	00f70733          	add	a4,a4,a5
    800085dc:	02d00693          	li	a3,45
    800085e0:	fed70823          	sb	a3,-16(a4)
    800085e4:	00078c93          	mv	s9,a5
    800085e8:	f8040793          	addi	a5,s0,-128
    800085ec:	01978cb3          	add	s9,a5,s9
    800085f0:	f7f40d13          	addi	s10,s0,-129
    800085f4:	000cc503          	lbu	a0,0(s9)
    800085f8:	fffc8c93          	addi	s9,s9,-1
    800085fc:	00000097          	auipc	ra,0x0
    80008600:	9f8080e7          	jalr	-1544(ra) # 80007ff4 <consputc>
    80008604:	ff9d18e3          	bne	s10,s9,800085f4 <__printf+0x41c>
    80008608:	0100006f          	j	80008618 <__printf+0x440>
    8000860c:	00000097          	auipc	ra,0x0
    80008610:	9e8080e7          	jalr	-1560(ra) # 80007ff4 <consputc>
    80008614:	000c8493          	mv	s1,s9
    80008618:	00094503          	lbu	a0,0(s2)
    8000861c:	c60510e3          	bnez	a0,8000827c <__printf+0xa4>
    80008620:	e40c0ee3          	beqz	s8,8000847c <__printf+0x2a4>
    80008624:	0000a517          	auipc	a0,0xa
    80008628:	d8c50513          	addi	a0,a0,-628 # 800123b0 <pr>
    8000862c:	00001097          	auipc	ra,0x1
    80008630:	94c080e7          	jalr	-1716(ra) # 80008f78 <release>
    80008634:	e49ff06f          	j	8000847c <__printf+0x2a4>
    80008638:	f7843783          	ld	a5,-136(s0)
    8000863c:	03000513          	li	a0,48
    80008640:	01000d13          	li	s10,16
    80008644:	00878713          	addi	a4,a5,8
    80008648:	0007bc83          	ld	s9,0(a5)
    8000864c:	f6e43c23          	sd	a4,-136(s0)
    80008650:	00000097          	auipc	ra,0x0
    80008654:	9a4080e7          	jalr	-1628(ra) # 80007ff4 <consputc>
    80008658:	07800513          	li	a0,120
    8000865c:	00000097          	auipc	ra,0x0
    80008660:	998080e7          	jalr	-1640(ra) # 80007ff4 <consputc>
    80008664:	00002d97          	auipc	s11,0x2
    80008668:	004d8d93          	addi	s11,s11,4 # 8000a668 <digits>
    8000866c:	03ccd793          	srli	a5,s9,0x3c
    80008670:	00fd87b3          	add	a5,s11,a5
    80008674:	0007c503          	lbu	a0,0(a5)
    80008678:	fffd0d1b          	addiw	s10,s10,-1
    8000867c:	004c9c93          	slli	s9,s9,0x4
    80008680:	00000097          	auipc	ra,0x0
    80008684:	974080e7          	jalr	-1676(ra) # 80007ff4 <consputc>
    80008688:	fe0d12e3          	bnez	s10,8000866c <__printf+0x494>
    8000868c:	f8dff06f          	j	80008618 <__printf+0x440>
    80008690:	f7843783          	ld	a5,-136(s0)
    80008694:	0007bc83          	ld	s9,0(a5)
    80008698:	00878793          	addi	a5,a5,8
    8000869c:	f6f43c23          	sd	a5,-136(s0)
    800086a0:	000c9a63          	bnez	s9,800086b4 <__printf+0x4dc>
    800086a4:	1080006f          	j	800087ac <__printf+0x5d4>
    800086a8:	001c8c93          	addi	s9,s9,1
    800086ac:	00000097          	auipc	ra,0x0
    800086b0:	948080e7          	jalr	-1720(ra) # 80007ff4 <consputc>
    800086b4:	000cc503          	lbu	a0,0(s9)
    800086b8:	fe0518e3          	bnez	a0,800086a8 <__printf+0x4d0>
    800086bc:	f5dff06f          	j	80008618 <__printf+0x440>
    800086c0:	02500513          	li	a0,37
    800086c4:	00000097          	auipc	ra,0x0
    800086c8:	930080e7          	jalr	-1744(ra) # 80007ff4 <consputc>
    800086cc:	000c8513          	mv	a0,s9
    800086d0:	00000097          	auipc	ra,0x0
    800086d4:	924080e7          	jalr	-1756(ra) # 80007ff4 <consputc>
    800086d8:	f41ff06f          	j	80008618 <__printf+0x440>
    800086dc:	02500513          	li	a0,37
    800086e0:	00000097          	auipc	ra,0x0
    800086e4:	914080e7          	jalr	-1772(ra) # 80007ff4 <consputc>
    800086e8:	f31ff06f          	j	80008618 <__printf+0x440>
    800086ec:	00030513          	mv	a0,t1
    800086f0:	00000097          	auipc	ra,0x0
    800086f4:	7bc080e7          	jalr	1980(ra) # 80008eac <acquire>
    800086f8:	b4dff06f          	j	80008244 <__printf+0x6c>
    800086fc:	40c0053b          	negw	a0,a2
    80008700:	00a00713          	li	a4,10
    80008704:	02e576bb          	remuw	a3,a0,a4
    80008708:	00002d97          	auipc	s11,0x2
    8000870c:	f60d8d93          	addi	s11,s11,-160 # 8000a668 <digits>
    80008710:	ff700593          	li	a1,-9
    80008714:	02069693          	slli	a3,a3,0x20
    80008718:	0206d693          	srli	a3,a3,0x20
    8000871c:	00dd86b3          	add	a3,s11,a3
    80008720:	0006c683          	lbu	a3,0(a3)
    80008724:	02e557bb          	divuw	a5,a0,a4
    80008728:	f8d40023          	sb	a3,-128(s0)
    8000872c:	10b65e63          	bge	a2,a1,80008848 <__printf+0x670>
    80008730:	06300593          	li	a1,99
    80008734:	02e7f6bb          	remuw	a3,a5,a4
    80008738:	02069693          	slli	a3,a3,0x20
    8000873c:	0206d693          	srli	a3,a3,0x20
    80008740:	00dd86b3          	add	a3,s11,a3
    80008744:	0006c683          	lbu	a3,0(a3)
    80008748:	02e7d73b          	divuw	a4,a5,a4
    8000874c:	00200793          	li	a5,2
    80008750:	f8d400a3          	sb	a3,-127(s0)
    80008754:	bca5ece3          	bltu	a1,a0,8000832c <__printf+0x154>
    80008758:	ce5ff06f          	j	8000843c <__printf+0x264>
    8000875c:	40e007bb          	negw	a5,a4
    80008760:	00002d97          	auipc	s11,0x2
    80008764:	f08d8d93          	addi	s11,s11,-248 # 8000a668 <digits>
    80008768:	00f7f693          	andi	a3,a5,15
    8000876c:	00dd86b3          	add	a3,s11,a3
    80008770:	0006c583          	lbu	a1,0(a3)
    80008774:	ff100613          	li	a2,-15
    80008778:	0047d69b          	srliw	a3,a5,0x4
    8000877c:	f8b40023          	sb	a1,-128(s0)
    80008780:	0047d59b          	srliw	a1,a5,0x4
    80008784:	0ac75e63          	bge	a4,a2,80008840 <__printf+0x668>
    80008788:	00f6f693          	andi	a3,a3,15
    8000878c:	00dd86b3          	add	a3,s11,a3
    80008790:	0006c603          	lbu	a2,0(a3)
    80008794:	00f00693          	li	a3,15
    80008798:	0087d79b          	srliw	a5,a5,0x8
    8000879c:	f8c400a3          	sb	a2,-127(s0)
    800087a0:	d8b6e4e3          	bltu	a3,a1,80008528 <__printf+0x350>
    800087a4:	00200793          	li	a5,2
    800087a8:	e2dff06f          	j	800085d4 <__printf+0x3fc>
    800087ac:	00002c97          	auipc	s9,0x2
    800087b0:	e9cc8c93          	addi	s9,s9,-356 # 8000a648 <CONSOLE_STATUS+0x638>
    800087b4:	02800513          	li	a0,40
    800087b8:	ef1ff06f          	j	800086a8 <__printf+0x4d0>
    800087bc:	00700793          	li	a5,7
    800087c0:	00600c93          	li	s9,6
    800087c4:	e0dff06f          	j	800085d0 <__printf+0x3f8>
    800087c8:	00700793          	li	a5,7
    800087cc:	00600c93          	li	s9,6
    800087d0:	c69ff06f          	j	80008438 <__printf+0x260>
    800087d4:	00300793          	li	a5,3
    800087d8:	00200c93          	li	s9,2
    800087dc:	c5dff06f          	j	80008438 <__printf+0x260>
    800087e0:	00300793          	li	a5,3
    800087e4:	00200c93          	li	s9,2
    800087e8:	de9ff06f          	j	800085d0 <__printf+0x3f8>
    800087ec:	00400793          	li	a5,4
    800087f0:	00300c93          	li	s9,3
    800087f4:	dddff06f          	j	800085d0 <__printf+0x3f8>
    800087f8:	00400793          	li	a5,4
    800087fc:	00300c93          	li	s9,3
    80008800:	c39ff06f          	j	80008438 <__printf+0x260>
    80008804:	00500793          	li	a5,5
    80008808:	00400c93          	li	s9,4
    8000880c:	c2dff06f          	j	80008438 <__printf+0x260>
    80008810:	00500793          	li	a5,5
    80008814:	00400c93          	li	s9,4
    80008818:	db9ff06f          	j	800085d0 <__printf+0x3f8>
    8000881c:	00600793          	li	a5,6
    80008820:	00500c93          	li	s9,5
    80008824:	dadff06f          	j	800085d0 <__printf+0x3f8>
    80008828:	00600793          	li	a5,6
    8000882c:	00500c93          	li	s9,5
    80008830:	c09ff06f          	j	80008438 <__printf+0x260>
    80008834:	00800793          	li	a5,8
    80008838:	00700c93          	li	s9,7
    8000883c:	bfdff06f          	j	80008438 <__printf+0x260>
    80008840:	00100793          	li	a5,1
    80008844:	d91ff06f          	j	800085d4 <__printf+0x3fc>
    80008848:	00100793          	li	a5,1
    8000884c:	bf1ff06f          	j	8000843c <__printf+0x264>
    80008850:	00900793          	li	a5,9
    80008854:	00800c93          	li	s9,8
    80008858:	be1ff06f          	j	80008438 <__printf+0x260>
    8000885c:	00002517          	auipc	a0,0x2
    80008860:	df450513          	addi	a0,a0,-524 # 8000a650 <CONSOLE_STATUS+0x640>
    80008864:	00000097          	auipc	ra,0x0
    80008868:	918080e7          	jalr	-1768(ra) # 8000817c <panic>

000000008000886c <printfinit>:
    8000886c:	fe010113          	addi	sp,sp,-32
    80008870:	00813823          	sd	s0,16(sp)
    80008874:	00913423          	sd	s1,8(sp)
    80008878:	00113c23          	sd	ra,24(sp)
    8000887c:	02010413          	addi	s0,sp,32
    80008880:	0000a497          	auipc	s1,0xa
    80008884:	b3048493          	addi	s1,s1,-1232 # 800123b0 <pr>
    80008888:	00048513          	mv	a0,s1
    8000888c:	00002597          	auipc	a1,0x2
    80008890:	dd458593          	addi	a1,a1,-556 # 8000a660 <CONSOLE_STATUS+0x650>
    80008894:	00000097          	auipc	ra,0x0
    80008898:	5f4080e7          	jalr	1524(ra) # 80008e88 <initlock>
    8000889c:	01813083          	ld	ra,24(sp)
    800088a0:	01013403          	ld	s0,16(sp)
    800088a4:	0004ac23          	sw	zero,24(s1)
    800088a8:	00813483          	ld	s1,8(sp)
    800088ac:	02010113          	addi	sp,sp,32
    800088b0:	00008067          	ret

00000000800088b4 <uartinit>:
    800088b4:	ff010113          	addi	sp,sp,-16
    800088b8:	00813423          	sd	s0,8(sp)
    800088bc:	01010413          	addi	s0,sp,16
    800088c0:	100007b7          	lui	a5,0x10000
    800088c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800088c8:	f8000713          	li	a4,-128
    800088cc:	00e781a3          	sb	a4,3(a5)
    800088d0:	00300713          	li	a4,3
    800088d4:	00e78023          	sb	a4,0(a5)
    800088d8:	000780a3          	sb	zero,1(a5)
    800088dc:	00e781a3          	sb	a4,3(a5)
    800088e0:	00700693          	li	a3,7
    800088e4:	00d78123          	sb	a3,2(a5)
    800088e8:	00e780a3          	sb	a4,1(a5)
    800088ec:	00813403          	ld	s0,8(sp)
    800088f0:	01010113          	addi	sp,sp,16
    800088f4:	00008067          	ret

00000000800088f8 <uartputc>:
    800088f8:	00004797          	auipc	a5,0x4
    800088fc:	7607a783          	lw	a5,1888(a5) # 8000d058 <panicked>
    80008900:	00078463          	beqz	a5,80008908 <uartputc+0x10>
    80008904:	0000006f          	j	80008904 <uartputc+0xc>
    80008908:	fd010113          	addi	sp,sp,-48
    8000890c:	02813023          	sd	s0,32(sp)
    80008910:	00913c23          	sd	s1,24(sp)
    80008914:	01213823          	sd	s2,16(sp)
    80008918:	01313423          	sd	s3,8(sp)
    8000891c:	02113423          	sd	ra,40(sp)
    80008920:	03010413          	addi	s0,sp,48
    80008924:	00004917          	auipc	s2,0x4
    80008928:	73c90913          	addi	s2,s2,1852 # 8000d060 <uart_tx_r>
    8000892c:	00093783          	ld	a5,0(s2)
    80008930:	00004497          	auipc	s1,0x4
    80008934:	73848493          	addi	s1,s1,1848 # 8000d068 <uart_tx_w>
    80008938:	0004b703          	ld	a4,0(s1)
    8000893c:	02078693          	addi	a3,a5,32
    80008940:	00050993          	mv	s3,a0
    80008944:	02e69c63          	bne	a3,a4,8000897c <uartputc+0x84>
    80008948:	00001097          	auipc	ra,0x1
    8000894c:	834080e7          	jalr	-1996(ra) # 8000917c <push_on>
    80008950:	00093783          	ld	a5,0(s2)
    80008954:	0004b703          	ld	a4,0(s1)
    80008958:	02078793          	addi	a5,a5,32
    8000895c:	00e79463          	bne	a5,a4,80008964 <uartputc+0x6c>
    80008960:	0000006f          	j	80008960 <uartputc+0x68>
    80008964:	00001097          	auipc	ra,0x1
    80008968:	88c080e7          	jalr	-1908(ra) # 800091f0 <pop_on>
    8000896c:	00093783          	ld	a5,0(s2)
    80008970:	0004b703          	ld	a4,0(s1)
    80008974:	02078693          	addi	a3,a5,32
    80008978:	fce688e3          	beq	a3,a4,80008948 <uartputc+0x50>
    8000897c:	01f77693          	andi	a3,a4,31
    80008980:	0000a597          	auipc	a1,0xa
    80008984:	a5058593          	addi	a1,a1,-1456 # 800123d0 <uart_tx_buf>
    80008988:	00d586b3          	add	a3,a1,a3
    8000898c:	00170713          	addi	a4,a4,1
    80008990:	01368023          	sb	s3,0(a3)
    80008994:	00e4b023          	sd	a4,0(s1)
    80008998:	10000637          	lui	a2,0x10000
    8000899c:	02f71063          	bne	a4,a5,800089bc <uartputc+0xc4>
    800089a0:	0340006f          	j	800089d4 <uartputc+0xdc>
    800089a4:	00074703          	lbu	a4,0(a4)
    800089a8:	00f93023          	sd	a5,0(s2)
    800089ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800089b0:	00093783          	ld	a5,0(s2)
    800089b4:	0004b703          	ld	a4,0(s1)
    800089b8:	00f70e63          	beq	a4,a5,800089d4 <uartputc+0xdc>
    800089bc:	00564683          	lbu	a3,5(a2)
    800089c0:	01f7f713          	andi	a4,a5,31
    800089c4:	00e58733          	add	a4,a1,a4
    800089c8:	0206f693          	andi	a3,a3,32
    800089cc:	00178793          	addi	a5,a5,1
    800089d0:	fc069ae3          	bnez	a3,800089a4 <uartputc+0xac>
    800089d4:	02813083          	ld	ra,40(sp)
    800089d8:	02013403          	ld	s0,32(sp)
    800089dc:	01813483          	ld	s1,24(sp)
    800089e0:	01013903          	ld	s2,16(sp)
    800089e4:	00813983          	ld	s3,8(sp)
    800089e8:	03010113          	addi	sp,sp,48
    800089ec:	00008067          	ret

00000000800089f0 <uartputc_sync>:
    800089f0:	ff010113          	addi	sp,sp,-16
    800089f4:	00813423          	sd	s0,8(sp)
    800089f8:	01010413          	addi	s0,sp,16
    800089fc:	00004717          	auipc	a4,0x4
    80008a00:	65c72703          	lw	a4,1628(a4) # 8000d058 <panicked>
    80008a04:	02071663          	bnez	a4,80008a30 <uartputc_sync+0x40>
    80008a08:	00050793          	mv	a5,a0
    80008a0c:	100006b7          	lui	a3,0x10000
    80008a10:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008a14:	02077713          	andi	a4,a4,32
    80008a18:	fe070ce3          	beqz	a4,80008a10 <uartputc_sync+0x20>
    80008a1c:	0ff7f793          	andi	a5,a5,255
    80008a20:	00f68023          	sb	a5,0(a3)
    80008a24:	00813403          	ld	s0,8(sp)
    80008a28:	01010113          	addi	sp,sp,16
    80008a2c:	00008067          	ret
    80008a30:	0000006f          	j	80008a30 <uartputc_sync+0x40>

0000000080008a34 <uartstart>:
    80008a34:	ff010113          	addi	sp,sp,-16
    80008a38:	00813423          	sd	s0,8(sp)
    80008a3c:	01010413          	addi	s0,sp,16
    80008a40:	00004617          	auipc	a2,0x4
    80008a44:	62060613          	addi	a2,a2,1568 # 8000d060 <uart_tx_r>
    80008a48:	00004517          	auipc	a0,0x4
    80008a4c:	62050513          	addi	a0,a0,1568 # 8000d068 <uart_tx_w>
    80008a50:	00063783          	ld	a5,0(a2)
    80008a54:	00053703          	ld	a4,0(a0)
    80008a58:	04f70263          	beq	a4,a5,80008a9c <uartstart+0x68>
    80008a5c:	100005b7          	lui	a1,0x10000
    80008a60:	0000a817          	auipc	a6,0xa
    80008a64:	97080813          	addi	a6,a6,-1680 # 800123d0 <uart_tx_buf>
    80008a68:	01c0006f          	j	80008a84 <uartstart+0x50>
    80008a6c:	0006c703          	lbu	a4,0(a3)
    80008a70:	00f63023          	sd	a5,0(a2)
    80008a74:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008a78:	00063783          	ld	a5,0(a2)
    80008a7c:	00053703          	ld	a4,0(a0)
    80008a80:	00f70e63          	beq	a4,a5,80008a9c <uartstart+0x68>
    80008a84:	01f7f713          	andi	a4,a5,31
    80008a88:	00e806b3          	add	a3,a6,a4
    80008a8c:	0055c703          	lbu	a4,5(a1)
    80008a90:	00178793          	addi	a5,a5,1
    80008a94:	02077713          	andi	a4,a4,32
    80008a98:	fc071ae3          	bnez	a4,80008a6c <uartstart+0x38>
    80008a9c:	00813403          	ld	s0,8(sp)
    80008aa0:	01010113          	addi	sp,sp,16
    80008aa4:	00008067          	ret

0000000080008aa8 <uartgetc>:
    80008aa8:	ff010113          	addi	sp,sp,-16
    80008aac:	00813423          	sd	s0,8(sp)
    80008ab0:	01010413          	addi	s0,sp,16
    80008ab4:	10000737          	lui	a4,0x10000
    80008ab8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80008abc:	0017f793          	andi	a5,a5,1
    80008ac0:	00078c63          	beqz	a5,80008ad8 <uartgetc+0x30>
    80008ac4:	00074503          	lbu	a0,0(a4)
    80008ac8:	0ff57513          	andi	a0,a0,255
    80008acc:	00813403          	ld	s0,8(sp)
    80008ad0:	01010113          	addi	sp,sp,16
    80008ad4:	00008067          	ret
    80008ad8:	fff00513          	li	a0,-1
    80008adc:	ff1ff06f          	j	80008acc <uartgetc+0x24>

0000000080008ae0 <uartintr>:
    80008ae0:	100007b7          	lui	a5,0x10000
    80008ae4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008ae8:	0017f793          	andi	a5,a5,1
    80008aec:	0a078463          	beqz	a5,80008b94 <uartintr+0xb4>
    80008af0:	fe010113          	addi	sp,sp,-32
    80008af4:	00813823          	sd	s0,16(sp)
    80008af8:	00913423          	sd	s1,8(sp)
    80008afc:	00113c23          	sd	ra,24(sp)
    80008b00:	02010413          	addi	s0,sp,32
    80008b04:	100004b7          	lui	s1,0x10000
    80008b08:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80008b0c:	0ff57513          	andi	a0,a0,255
    80008b10:	fffff097          	auipc	ra,0xfffff
    80008b14:	534080e7          	jalr	1332(ra) # 80008044 <consoleintr>
    80008b18:	0054c783          	lbu	a5,5(s1)
    80008b1c:	0017f793          	andi	a5,a5,1
    80008b20:	fe0794e3          	bnez	a5,80008b08 <uartintr+0x28>
    80008b24:	00004617          	auipc	a2,0x4
    80008b28:	53c60613          	addi	a2,a2,1340 # 8000d060 <uart_tx_r>
    80008b2c:	00004517          	auipc	a0,0x4
    80008b30:	53c50513          	addi	a0,a0,1340 # 8000d068 <uart_tx_w>
    80008b34:	00063783          	ld	a5,0(a2)
    80008b38:	00053703          	ld	a4,0(a0)
    80008b3c:	04f70263          	beq	a4,a5,80008b80 <uartintr+0xa0>
    80008b40:	100005b7          	lui	a1,0x10000
    80008b44:	0000a817          	auipc	a6,0xa
    80008b48:	88c80813          	addi	a6,a6,-1908 # 800123d0 <uart_tx_buf>
    80008b4c:	01c0006f          	j	80008b68 <uartintr+0x88>
    80008b50:	0006c703          	lbu	a4,0(a3)
    80008b54:	00f63023          	sd	a5,0(a2)
    80008b58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008b5c:	00063783          	ld	a5,0(a2)
    80008b60:	00053703          	ld	a4,0(a0)
    80008b64:	00f70e63          	beq	a4,a5,80008b80 <uartintr+0xa0>
    80008b68:	01f7f713          	andi	a4,a5,31
    80008b6c:	00e806b3          	add	a3,a6,a4
    80008b70:	0055c703          	lbu	a4,5(a1)
    80008b74:	00178793          	addi	a5,a5,1
    80008b78:	02077713          	andi	a4,a4,32
    80008b7c:	fc071ae3          	bnez	a4,80008b50 <uartintr+0x70>
    80008b80:	01813083          	ld	ra,24(sp)
    80008b84:	01013403          	ld	s0,16(sp)
    80008b88:	00813483          	ld	s1,8(sp)
    80008b8c:	02010113          	addi	sp,sp,32
    80008b90:	00008067          	ret
    80008b94:	00004617          	auipc	a2,0x4
    80008b98:	4cc60613          	addi	a2,a2,1228 # 8000d060 <uart_tx_r>
    80008b9c:	00004517          	auipc	a0,0x4
    80008ba0:	4cc50513          	addi	a0,a0,1228 # 8000d068 <uart_tx_w>
    80008ba4:	00063783          	ld	a5,0(a2)
    80008ba8:	00053703          	ld	a4,0(a0)
    80008bac:	04f70263          	beq	a4,a5,80008bf0 <uartintr+0x110>
    80008bb0:	100005b7          	lui	a1,0x10000
    80008bb4:	0000a817          	auipc	a6,0xa
    80008bb8:	81c80813          	addi	a6,a6,-2020 # 800123d0 <uart_tx_buf>
    80008bbc:	01c0006f          	j	80008bd8 <uartintr+0xf8>
    80008bc0:	0006c703          	lbu	a4,0(a3)
    80008bc4:	00f63023          	sd	a5,0(a2)
    80008bc8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008bcc:	00063783          	ld	a5,0(a2)
    80008bd0:	00053703          	ld	a4,0(a0)
    80008bd4:	02f70063          	beq	a4,a5,80008bf4 <uartintr+0x114>
    80008bd8:	01f7f713          	andi	a4,a5,31
    80008bdc:	00e806b3          	add	a3,a6,a4
    80008be0:	0055c703          	lbu	a4,5(a1)
    80008be4:	00178793          	addi	a5,a5,1
    80008be8:	02077713          	andi	a4,a4,32
    80008bec:	fc071ae3          	bnez	a4,80008bc0 <uartintr+0xe0>
    80008bf0:	00008067          	ret
    80008bf4:	00008067          	ret

0000000080008bf8 <kinit>:
    80008bf8:	fc010113          	addi	sp,sp,-64
    80008bfc:	02913423          	sd	s1,40(sp)
    80008c00:	fffff7b7          	lui	a5,0xfffff
    80008c04:	0000a497          	auipc	s1,0xa
    80008c08:	7eb48493          	addi	s1,s1,2027 # 800133ef <end+0xfff>
    80008c0c:	02813823          	sd	s0,48(sp)
    80008c10:	01313c23          	sd	s3,24(sp)
    80008c14:	00f4f4b3          	and	s1,s1,a5
    80008c18:	02113c23          	sd	ra,56(sp)
    80008c1c:	03213023          	sd	s2,32(sp)
    80008c20:	01413823          	sd	s4,16(sp)
    80008c24:	01513423          	sd	s5,8(sp)
    80008c28:	04010413          	addi	s0,sp,64
    80008c2c:	000017b7          	lui	a5,0x1
    80008c30:	01100993          	li	s3,17
    80008c34:	00f487b3          	add	a5,s1,a5
    80008c38:	01b99993          	slli	s3,s3,0x1b
    80008c3c:	06f9e063          	bltu	s3,a5,80008c9c <kinit+0xa4>
    80008c40:	00009a97          	auipc	s5,0x9
    80008c44:	7b0a8a93          	addi	s5,s5,1968 # 800123f0 <end>
    80008c48:	0754ec63          	bltu	s1,s5,80008cc0 <kinit+0xc8>
    80008c4c:	0734fa63          	bgeu	s1,s3,80008cc0 <kinit+0xc8>
    80008c50:	00088a37          	lui	s4,0x88
    80008c54:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008c58:	00004917          	auipc	s2,0x4
    80008c5c:	41890913          	addi	s2,s2,1048 # 8000d070 <kmem>
    80008c60:	00ca1a13          	slli	s4,s4,0xc
    80008c64:	0140006f          	j	80008c78 <kinit+0x80>
    80008c68:	000017b7          	lui	a5,0x1
    80008c6c:	00f484b3          	add	s1,s1,a5
    80008c70:	0554e863          	bltu	s1,s5,80008cc0 <kinit+0xc8>
    80008c74:	0534f663          	bgeu	s1,s3,80008cc0 <kinit+0xc8>
    80008c78:	00001637          	lui	a2,0x1
    80008c7c:	00100593          	li	a1,1
    80008c80:	00048513          	mv	a0,s1
    80008c84:	00000097          	auipc	ra,0x0
    80008c88:	5e4080e7          	jalr	1508(ra) # 80009268 <__memset>
    80008c8c:	00093783          	ld	a5,0(s2)
    80008c90:	00f4b023          	sd	a5,0(s1)
    80008c94:	00993023          	sd	s1,0(s2)
    80008c98:	fd4498e3          	bne	s1,s4,80008c68 <kinit+0x70>
    80008c9c:	03813083          	ld	ra,56(sp)
    80008ca0:	03013403          	ld	s0,48(sp)
    80008ca4:	02813483          	ld	s1,40(sp)
    80008ca8:	02013903          	ld	s2,32(sp)
    80008cac:	01813983          	ld	s3,24(sp)
    80008cb0:	01013a03          	ld	s4,16(sp)
    80008cb4:	00813a83          	ld	s5,8(sp)
    80008cb8:	04010113          	addi	sp,sp,64
    80008cbc:	00008067          	ret
    80008cc0:	00002517          	auipc	a0,0x2
    80008cc4:	9c050513          	addi	a0,a0,-1600 # 8000a680 <digits+0x18>
    80008cc8:	fffff097          	auipc	ra,0xfffff
    80008ccc:	4b4080e7          	jalr	1204(ra) # 8000817c <panic>

0000000080008cd0 <freerange>:
    80008cd0:	fc010113          	addi	sp,sp,-64
    80008cd4:	000017b7          	lui	a5,0x1
    80008cd8:	02913423          	sd	s1,40(sp)
    80008cdc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008ce0:	009504b3          	add	s1,a0,s1
    80008ce4:	fffff537          	lui	a0,0xfffff
    80008ce8:	02813823          	sd	s0,48(sp)
    80008cec:	02113c23          	sd	ra,56(sp)
    80008cf0:	03213023          	sd	s2,32(sp)
    80008cf4:	01313c23          	sd	s3,24(sp)
    80008cf8:	01413823          	sd	s4,16(sp)
    80008cfc:	01513423          	sd	s5,8(sp)
    80008d00:	01613023          	sd	s6,0(sp)
    80008d04:	04010413          	addi	s0,sp,64
    80008d08:	00a4f4b3          	and	s1,s1,a0
    80008d0c:	00f487b3          	add	a5,s1,a5
    80008d10:	06f5e463          	bltu	a1,a5,80008d78 <freerange+0xa8>
    80008d14:	00009a97          	auipc	s5,0x9
    80008d18:	6dca8a93          	addi	s5,s5,1756 # 800123f0 <end>
    80008d1c:	0954e263          	bltu	s1,s5,80008da0 <freerange+0xd0>
    80008d20:	01100993          	li	s3,17
    80008d24:	01b99993          	slli	s3,s3,0x1b
    80008d28:	0734fc63          	bgeu	s1,s3,80008da0 <freerange+0xd0>
    80008d2c:	00058a13          	mv	s4,a1
    80008d30:	00004917          	auipc	s2,0x4
    80008d34:	34090913          	addi	s2,s2,832 # 8000d070 <kmem>
    80008d38:	00002b37          	lui	s6,0x2
    80008d3c:	0140006f          	j	80008d50 <freerange+0x80>
    80008d40:	000017b7          	lui	a5,0x1
    80008d44:	00f484b3          	add	s1,s1,a5
    80008d48:	0554ec63          	bltu	s1,s5,80008da0 <freerange+0xd0>
    80008d4c:	0534fa63          	bgeu	s1,s3,80008da0 <freerange+0xd0>
    80008d50:	00001637          	lui	a2,0x1
    80008d54:	00100593          	li	a1,1
    80008d58:	00048513          	mv	a0,s1
    80008d5c:	00000097          	auipc	ra,0x0
    80008d60:	50c080e7          	jalr	1292(ra) # 80009268 <__memset>
    80008d64:	00093703          	ld	a4,0(s2)
    80008d68:	016487b3          	add	a5,s1,s6
    80008d6c:	00e4b023          	sd	a4,0(s1)
    80008d70:	00993023          	sd	s1,0(s2)
    80008d74:	fcfa76e3          	bgeu	s4,a5,80008d40 <freerange+0x70>
    80008d78:	03813083          	ld	ra,56(sp)
    80008d7c:	03013403          	ld	s0,48(sp)
    80008d80:	02813483          	ld	s1,40(sp)
    80008d84:	02013903          	ld	s2,32(sp)
    80008d88:	01813983          	ld	s3,24(sp)
    80008d8c:	01013a03          	ld	s4,16(sp)
    80008d90:	00813a83          	ld	s5,8(sp)
    80008d94:	00013b03          	ld	s6,0(sp)
    80008d98:	04010113          	addi	sp,sp,64
    80008d9c:	00008067          	ret
    80008da0:	00002517          	auipc	a0,0x2
    80008da4:	8e050513          	addi	a0,a0,-1824 # 8000a680 <digits+0x18>
    80008da8:	fffff097          	auipc	ra,0xfffff
    80008dac:	3d4080e7          	jalr	980(ra) # 8000817c <panic>

0000000080008db0 <kfree>:
    80008db0:	fe010113          	addi	sp,sp,-32
    80008db4:	00813823          	sd	s0,16(sp)
    80008db8:	00113c23          	sd	ra,24(sp)
    80008dbc:	00913423          	sd	s1,8(sp)
    80008dc0:	02010413          	addi	s0,sp,32
    80008dc4:	03451793          	slli	a5,a0,0x34
    80008dc8:	04079c63          	bnez	a5,80008e20 <kfree+0x70>
    80008dcc:	00009797          	auipc	a5,0x9
    80008dd0:	62478793          	addi	a5,a5,1572 # 800123f0 <end>
    80008dd4:	00050493          	mv	s1,a0
    80008dd8:	04f56463          	bltu	a0,a5,80008e20 <kfree+0x70>
    80008ddc:	01100793          	li	a5,17
    80008de0:	01b79793          	slli	a5,a5,0x1b
    80008de4:	02f57e63          	bgeu	a0,a5,80008e20 <kfree+0x70>
    80008de8:	00001637          	lui	a2,0x1
    80008dec:	00100593          	li	a1,1
    80008df0:	00000097          	auipc	ra,0x0
    80008df4:	478080e7          	jalr	1144(ra) # 80009268 <__memset>
    80008df8:	00004797          	auipc	a5,0x4
    80008dfc:	27878793          	addi	a5,a5,632 # 8000d070 <kmem>
    80008e00:	0007b703          	ld	a4,0(a5)
    80008e04:	01813083          	ld	ra,24(sp)
    80008e08:	01013403          	ld	s0,16(sp)
    80008e0c:	00e4b023          	sd	a4,0(s1)
    80008e10:	0097b023          	sd	s1,0(a5)
    80008e14:	00813483          	ld	s1,8(sp)
    80008e18:	02010113          	addi	sp,sp,32
    80008e1c:	00008067          	ret
    80008e20:	00002517          	auipc	a0,0x2
    80008e24:	86050513          	addi	a0,a0,-1952 # 8000a680 <digits+0x18>
    80008e28:	fffff097          	auipc	ra,0xfffff
    80008e2c:	354080e7          	jalr	852(ra) # 8000817c <panic>

0000000080008e30 <kalloc>:
    80008e30:	fe010113          	addi	sp,sp,-32
    80008e34:	00813823          	sd	s0,16(sp)
    80008e38:	00913423          	sd	s1,8(sp)
    80008e3c:	00113c23          	sd	ra,24(sp)
    80008e40:	02010413          	addi	s0,sp,32
    80008e44:	00004797          	auipc	a5,0x4
    80008e48:	22c78793          	addi	a5,a5,556 # 8000d070 <kmem>
    80008e4c:	0007b483          	ld	s1,0(a5)
    80008e50:	02048063          	beqz	s1,80008e70 <kalloc+0x40>
    80008e54:	0004b703          	ld	a4,0(s1)
    80008e58:	00001637          	lui	a2,0x1
    80008e5c:	00500593          	li	a1,5
    80008e60:	00048513          	mv	a0,s1
    80008e64:	00e7b023          	sd	a4,0(a5)
    80008e68:	00000097          	auipc	ra,0x0
    80008e6c:	400080e7          	jalr	1024(ra) # 80009268 <__memset>
    80008e70:	01813083          	ld	ra,24(sp)
    80008e74:	01013403          	ld	s0,16(sp)
    80008e78:	00048513          	mv	a0,s1
    80008e7c:	00813483          	ld	s1,8(sp)
    80008e80:	02010113          	addi	sp,sp,32
    80008e84:	00008067          	ret

0000000080008e88 <initlock>:
    80008e88:	ff010113          	addi	sp,sp,-16
    80008e8c:	00813423          	sd	s0,8(sp)
    80008e90:	01010413          	addi	s0,sp,16
    80008e94:	00813403          	ld	s0,8(sp)
    80008e98:	00b53423          	sd	a1,8(a0)
    80008e9c:	00052023          	sw	zero,0(a0)
    80008ea0:	00053823          	sd	zero,16(a0)
    80008ea4:	01010113          	addi	sp,sp,16
    80008ea8:	00008067          	ret

0000000080008eac <acquire>:
    80008eac:	fe010113          	addi	sp,sp,-32
    80008eb0:	00813823          	sd	s0,16(sp)
    80008eb4:	00913423          	sd	s1,8(sp)
    80008eb8:	00113c23          	sd	ra,24(sp)
    80008ebc:	01213023          	sd	s2,0(sp)
    80008ec0:	02010413          	addi	s0,sp,32
    80008ec4:	00050493          	mv	s1,a0
    80008ec8:	10002973          	csrr	s2,sstatus
    80008ecc:	100027f3          	csrr	a5,sstatus
    80008ed0:	ffd7f793          	andi	a5,a5,-3
    80008ed4:	10079073          	csrw	sstatus,a5
    80008ed8:	fffff097          	auipc	ra,0xfffff
    80008edc:	8e8080e7          	jalr	-1816(ra) # 800077c0 <mycpu>
    80008ee0:	07852783          	lw	a5,120(a0)
    80008ee4:	06078e63          	beqz	a5,80008f60 <acquire+0xb4>
    80008ee8:	fffff097          	auipc	ra,0xfffff
    80008eec:	8d8080e7          	jalr	-1832(ra) # 800077c0 <mycpu>
    80008ef0:	07852783          	lw	a5,120(a0)
    80008ef4:	0004a703          	lw	a4,0(s1)
    80008ef8:	0017879b          	addiw	a5,a5,1
    80008efc:	06f52c23          	sw	a5,120(a0)
    80008f00:	04071063          	bnez	a4,80008f40 <acquire+0x94>
    80008f04:	00100713          	li	a4,1
    80008f08:	00070793          	mv	a5,a4
    80008f0c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008f10:	0007879b          	sext.w	a5,a5
    80008f14:	fe079ae3          	bnez	a5,80008f08 <acquire+0x5c>
    80008f18:	0ff0000f          	fence
    80008f1c:	fffff097          	auipc	ra,0xfffff
    80008f20:	8a4080e7          	jalr	-1884(ra) # 800077c0 <mycpu>
    80008f24:	01813083          	ld	ra,24(sp)
    80008f28:	01013403          	ld	s0,16(sp)
    80008f2c:	00a4b823          	sd	a0,16(s1)
    80008f30:	00013903          	ld	s2,0(sp)
    80008f34:	00813483          	ld	s1,8(sp)
    80008f38:	02010113          	addi	sp,sp,32
    80008f3c:	00008067          	ret
    80008f40:	0104b903          	ld	s2,16(s1)
    80008f44:	fffff097          	auipc	ra,0xfffff
    80008f48:	87c080e7          	jalr	-1924(ra) # 800077c0 <mycpu>
    80008f4c:	faa91ce3          	bne	s2,a0,80008f04 <acquire+0x58>
    80008f50:	00001517          	auipc	a0,0x1
    80008f54:	73850513          	addi	a0,a0,1848 # 8000a688 <digits+0x20>
    80008f58:	fffff097          	auipc	ra,0xfffff
    80008f5c:	224080e7          	jalr	548(ra) # 8000817c <panic>
    80008f60:	00195913          	srli	s2,s2,0x1
    80008f64:	fffff097          	auipc	ra,0xfffff
    80008f68:	85c080e7          	jalr	-1956(ra) # 800077c0 <mycpu>
    80008f6c:	00197913          	andi	s2,s2,1
    80008f70:	07252e23          	sw	s2,124(a0)
    80008f74:	f75ff06f          	j	80008ee8 <acquire+0x3c>

0000000080008f78 <release>:
    80008f78:	fe010113          	addi	sp,sp,-32
    80008f7c:	00813823          	sd	s0,16(sp)
    80008f80:	00113c23          	sd	ra,24(sp)
    80008f84:	00913423          	sd	s1,8(sp)
    80008f88:	01213023          	sd	s2,0(sp)
    80008f8c:	02010413          	addi	s0,sp,32
    80008f90:	00052783          	lw	a5,0(a0)
    80008f94:	00079a63          	bnez	a5,80008fa8 <release+0x30>
    80008f98:	00001517          	auipc	a0,0x1
    80008f9c:	6f850513          	addi	a0,a0,1784 # 8000a690 <digits+0x28>
    80008fa0:	fffff097          	auipc	ra,0xfffff
    80008fa4:	1dc080e7          	jalr	476(ra) # 8000817c <panic>
    80008fa8:	01053903          	ld	s2,16(a0)
    80008fac:	00050493          	mv	s1,a0
    80008fb0:	fffff097          	auipc	ra,0xfffff
    80008fb4:	810080e7          	jalr	-2032(ra) # 800077c0 <mycpu>
    80008fb8:	fea910e3          	bne	s2,a0,80008f98 <release+0x20>
    80008fbc:	0004b823          	sd	zero,16(s1)
    80008fc0:	0ff0000f          	fence
    80008fc4:	0f50000f          	fence	iorw,ow
    80008fc8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008fcc:	ffffe097          	auipc	ra,0xffffe
    80008fd0:	7f4080e7          	jalr	2036(ra) # 800077c0 <mycpu>
    80008fd4:	100027f3          	csrr	a5,sstatus
    80008fd8:	0027f793          	andi	a5,a5,2
    80008fdc:	04079a63          	bnez	a5,80009030 <release+0xb8>
    80008fe0:	07852783          	lw	a5,120(a0)
    80008fe4:	02f05e63          	blez	a5,80009020 <release+0xa8>
    80008fe8:	fff7871b          	addiw	a4,a5,-1
    80008fec:	06e52c23          	sw	a4,120(a0)
    80008ff0:	00071c63          	bnez	a4,80009008 <release+0x90>
    80008ff4:	07c52783          	lw	a5,124(a0)
    80008ff8:	00078863          	beqz	a5,80009008 <release+0x90>
    80008ffc:	100027f3          	csrr	a5,sstatus
    80009000:	0027e793          	ori	a5,a5,2
    80009004:	10079073          	csrw	sstatus,a5
    80009008:	01813083          	ld	ra,24(sp)
    8000900c:	01013403          	ld	s0,16(sp)
    80009010:	00813483          	ld	s1,8(sp)
    80009014:	00013903          	ld	s2,0(sp)
    80009018:	02010113          	addi	sp,sp,32
    8000901c:	00008067          	ret
    80009020:	00001517          	auipc	a0,0x1
    80009024:	69050513          	addi	a0,a0,1680 # 8000a6b0 <digits+0x48>
    80009028:	fffff097          	auipc	ra,0xfffff
    8000902c:	154080e7          	jalr	340(ra) # 8000817c <panic>
    80009030:	00001517          	auipc	a0,0x1
    80009034:	66850513          	addi	a0,a0,1640 # 8000a698 <digits+0x30>
    80009038:	fffff097          	auipc	ra,0xfffff
    8000903c:	144080e7          	jalr	324(ra) # 8000817c <panic>

0000000080009040 <holding>:
    80009040:	00052783          	lw	a5,0(a0)
    80009044:	00079663          	bnez	a5,80009050 <holding+0x10>
    80009048:	00000513          	li	a0,0
    8000904c:	00008067          	ret
    80009050:	fe010113          	addi	sp,sp,-32
    80009054:	00813823          	sd	s0,16(sp)
    80009058:	00913423          	sd	s1,8(sp)
    8000905c:	00113c23          	sd	ra,24(sp)
    80009060:	02010413          	addi	s0,sp,32
    80009064:	01053483          	ld	s1,16(a0)
    80009068:	ffffe097          	auipc	ra,0xffffe
    8000906c:	758080e7          	jalr	1880(ra) # 800077c0 <mycpu>
    80009070:	01813083          	ld	ra,24(sp)
    80009074:	01013403          	ld	s0,16(sp)
    80009078:	40a48533          	sub	a0,s1,a0
    8000907c:	00153513          	seqz	a0,a0
    80009080:	00813483          	ld	s1,8(sp)
    80009084:	02010113          	addi	sp,sp,32
    80009088:	00008067          	ret

000000008000908c <push_off>:
    8000908c:	fe010113          	addi	sp,sp,-32
    80009090:	00813823          	sd	s0,16(sp)
    80009094:	00113c23          	sd	ra,24(sp)
    80009098:	00913423          	sd	s1,8(sp)
    8000909c:	02010413          	addi	s0,sp,32
    800090a0:	100024f3          	csrr	s1,sstatus
    800090a4:	100027f3          	csrr	a5,sstatus
    800090a8:	ffd7f793          	andi	a5,a5,-3
    800090ac:	10079073          	csrw	sstatus,a5
    800090b0:	ffffe097          	auipc	ra,0xffffe
    800090b4:	710080e7          	jalr	1808(ra) # 800077c0 <mycpu>
    800090b8:	07852783          	lw	a5,120(a0)
    800090bc:	02078663          	beqz	a5,800090e8 <push_off+0x5c>
    800090c0:	ffffe097          	auipc	ra,0xffffe
    800090c4:	700080e7          	jalr	1792(ra) # 800077c0 <mycpu>
    800090c8:	07852783          	lw	a5,120(a0)
    800090cc:	01813083          	ld	ra,24(sp)
    800090d0:	01013403          	ld	s0,16(sp)
    800090d4:	0017879b          	addiw	a5,a5,1
    800090d8:	06f52c23          	sw	a5,120(a0)
    800090dc:	00813483          	ld	s1,8(sp)
    800090e0:	02010113          	addi	sp,sp,32
    800090e4:	00008067          	ret
    800090e8:	0014d493          	srli	s1,s1,0x1
    800090ec:	ffffe097          	auipc	ra,0xffffe
    800090f0:	6d4080e7          	jalr	1748(ra) # 800077c0 <mycpu>
    800090f4:	0014f493          	andi	s1,s1,1
    800090f8:	06952e23          	sw	s1,124(a0)
    800090fc:	fc5ff06f          	j	800090c0 <push_off+0x34>

0000000080009100 <pop_off>:
    80009100:	ff010113          	addi	sp,sp,-16
    80009104:	00813023          	sd	s0,0(sp)
    80009108:	00113423          	sd	ra,8(sp)
    8000910c:	01010413          	addi	s0,sp,16
    80009110:	ffffe097          	auipc	ra,0xffffe
    80009114:	6b0080e7          	jalr	1712(ra) # 800077c0 <mycpu>
    80009118:	100027f3          	csrr	a5,sstatus
    8000911c:	0027f793          	andi	a5,a5,2
    80009120:	04079663          	bnez	a5,8000916c <pop_off+0x6c>
    80009124:	07852783          	lw	a5,120(a0)
    80009128:	02f05a63          	blez	a5,8000915c <pop_off+0x5c>
    8000912c:	fff7871b          	addiw	a4,a5,-1
    80009130:	06e52c23          	sw	a4,120(a0)
    80009134:	00071c63          	bnez	a4,8000914c <pop_off+0x4c>
    80009138:	07c52783          	lw	a5,124(a0)
    8000913c:	00078863          	beqz	a5,8000914c <pop_off+0x4c>
    80009140:	100027f3          	csrr	a5,sstatus
    80009144:	0027e793          	ori	a5,a5,2
    80009148:	10079073          	csrw	sstatus,a5
    8000914c:	00813083          	ld	ra,8(sp)
    80009150:	00013403          	ld	s0,0(sp)
    80009154:	01010113          	addi	sp,sp,16
    80009158:	00008067          	ret
    8000915c:	00001517          	auipc	a0,0x1
    80009160:	55450513          	addi	a0,a0,1364 # 8000a6b0 <digits+0x48>
    80009164:	fffff097          	auipc	ra,0xfffff
    80009168:	018080e7          	jalr	24(ra) # 8000817c <panic>
    8000916c:	00001517          	auipc	a0,0x1
    80009170:	52c50513          	addi	a0,a0,1324 # 8000a698 <digits+0x30>
    80009174:	fffff097          	auipc	ra,0xfffff
    80009178:	008080e7          	jalr	8(ra) # 8000817c <panic>

000000008000917c <push_on>:
    8000917c:	fe010113          	addi	sp,sp,-32
    80009180:	00813823          	sd	s0,16(sp)
    80009184:	00113c23          	sd	ra,24(sp)
    80009188:	00913423          	sd	s1,8(sp)
    8000918c:	02010413          	addi	s0,sp,32
    80009190:	100024f3          	csrr	s1,sstatus
    80009194:	100027f3          	csrr	a5,sstatus
    80009198:	0027e793          	ori	a5,a5,2
    8000919c:	10079073          	csrw	sstatus,a5
    800091a0:	ffffe097          	auipc	ra,0xffffe
    800091a4:	620080e7          	jalr	1568(ra) # 800077c0 <mycpu>
    800091a8:	07852783          	lw	a5,120(a0)
    800091ac:	02078663          	beqz	a5,800091d8 <push_on+0x5c>
    800091b0:	ffffe097          	auipc	ra,0xffffe
    800091b4:	610080e7          	jalr	1552(ra) # 800077c0 <mycpu>
    800091b8:	07852783          	lw	a5,120(a0)
    800091bc:	01813083          	ld	ra,24(sp)
    800091c0:	01013403          	ld	s0,16(sp)
    800091c4:	0017879b          	addiw	a5,a5,1
    800091c8:	06f52c23          	sw	a5,120(a0)
    800091cc:	00813483          	ld	s1,8(sp)
    800091d0:	02010113          	addi	sp,sp,32
    800091d4:	00008067          	ret
    800091d8:	0014d493          	srli	s1,s1,0x1
    800091dc:	ffffe097          	auipc	ra,0xffffe
    800091e0:	5e4080e7          	jalr	1508(ra) # 800077c0 <mycpu>
    800091e4:	0014f493          	andi	s1,s1,1
    800091e8:	06952e23          	sw	s1,124(a0)
    800091ec:	fc5ff06f          	j	800091b0 <push_on+0x34>

00000000800091f0 <pop_on>:
    800091f0:	ff010113          	addi	sp,sp,-16
    800091f4:	00813023          	sd	s0,0(sp)
    800091f8:	00113423          	sd	ra,8(sp)
    800091fc:	01010413          	addi	s0,sp,16
    80009200:	ffffe097          	auipc	ra,0xffffe
    80009204:	5c0080e7          	jalr	1472(ra) # 800077c0 <mycpu>
    80009208:	100027f3          	csrr	a5,sstatus
    8000920c:	0027f793          	andi	a5,a5,2
    80009210:	04078463          	beqz	a5,80009258 <pop_on+0x68>
    80009214:	07852783          	lw	a5,120(a0)
    80009218:	02f05863          	blez	a5,80009248 <pop_on+0x58>
    8000921c:	fff7879b          	addiw	a5,a5,-1
    80009220:	06f52c23          	sw	a5,120(a0)
    80009224:	07853783          	ld	a5,120(a0)
    80009228:	00079863          	bnez	a5,80009238 <pop_on+0x48>
    8000922c:	100027f3          	csrr	a5,sstatus
    80009230:	ffd7f793          	andi	a5,a5,-3
    80009234:	10079073          	csrw	sstatus,a5
    80009238:	00813083          	ld	ra,8(sp)
    8000923c:	00013403          	ld	s0,0(sp)
    80009240:	01010113          	addi	sp,sp,16
    80009244:	00008067          	ret
    80009248:	00001517          	auipc	a0,0x1
    8000924c:	49050513          	addi	a0,a0,1168 # 8000a6d8 <digits+0x70>
    80009250:	fffff097          	auipc	ra,0xfffff
    80009254:	f2c080e7          	jalr	-212(ra) # 8000817c <panic>
    80009258:	00001517          	auipc	a0,0x1
    8000925c:	46050513          	addi	a0,a0,1120 # 8000a6b8 <digits+0x50>
    80009260:	fffff097          	auipc	ra,0xfffff
    80009264:	f1c080e7          	jalr	-228(ra) # 8000817c <panic>

0000000080009268 <__memset>:
    80009268:	ff010113          	addi	sp,sp,-16
    8000926c:	00813423          	sd	s0,8(sp)
    80009270:	01010413          	addi	s0,sp,16
    80009274:	1a060e63          	beqz	a2,80009430 <__memset+0x1c8>
    80009278:	40a007b3          	neg	a5,a0
    8000927c:	0077f793          	andi	a5,a5,7
    80009280:	00778693          	addi	a3,a5,7
    80009284:	00b00813          	li	a6,11
    80009288:	0ff5f593          	andi	a1,a1,255
    8000928c:	fff6071b          	addiw	a4,a2,-1
    80009290:	1b06e663          	bltu	a3,a6,8000943c <__memset+0x1d4>
    80009294:	1cd76463          	bltu	a4,a3,8000945c <__memset+0x1f4>
    80009298:	1a078e63          	beqz	a5,80009454 <__memset+0x1ec>
    8000929c:	00b50023          	sb	a1,0(a0)
    800092a0:	00100713          	li	a4,1
    800092a4:	1ae78463          	beq	a5,a4,8000944c <__memset+0x1e4>
    800092a8:	00b500a3          	sb	a1,1(a0)
    800092ac:	00200713          	li	a4,2
    800092b0:	1ae78a63          	beq	a5,a4,80009464 <__memset+0x1fc>
    800092b4:	00b50123          	sb	a1,2(a0)
    800092b8:	00300713          	li	a4,3
    800092bc:	18e78463          	beq	a5,a4,80009444 <__memset+0x1dc>
    800092c0:	00b501a3          	sb	a1,3(a0)
    800092c4:	00400713          	li	a4,4
    800092c8:	1ae78263          	beq	a5,a4,8000946c <__memset+0x204>
    800092cc:	00b50223          	sb	a1,4(a0)
    800092d0:	00500713          	li	a4,5
    800092d4:	1ae78063          	beq	a5,a4,80009474 <__memset+0x20c>
    800092d8:	00b502a3          	sb	a1,5(a0)
    800092dc:	00700713          	li	a4,7
    800092e0:	18e79e63          	bne	a5,a4,8000947c <__memset+0x214>
    800092e4:	00b50323          	sb	a1,6(a0)
    800092e8:	00700e93          	li	t4,7
    800092ec:	00859713          	slli	a4,a1,0x8
    800092f0:	00e5e733          	or	a4,a1,a4
    800092f4:	01059e13          	slli	t3,a1,0x10
    800092f8:	01c76e33          	or	t3,a4,t3
    800092fc:	01859313          	slli	t1,a1,0x18
    80009300:	006e6333          	or	t1,t3,t1
    80009304:	02059893          	slli	a7,a1,0x20
    80009308:	40f60e3b          	subw	t3,a2,a5
    8000930c:	011368b3          	or	a7,t1,a7
    80009310:	02859813          	slli	a6,a1,0x28
    80009314:	0108e833          	or	a6,a7,a6
    80009318:	03059693          	slli	a3,a1,0x30
    8000931c:	003e589b          	srliw	a7,t3,0x3
    80009320:	00d866b3          	or	a3,a6,a3
    80009324:	03859713          	slli	a4,a1,0x38
    80009328:	00389813          	slli	a6,a7,0x3
    8000932c:	00f507b3          	add	a5,a0,a5
    80009330:	00e6e733          	or	a4,a3,a4
    80009334:	000e089b          	sext.w	a7,t3
    80009338:	00f806b3          	add	a3,a6,a5
    8000933c:	00e7b023          	sd	a4,0(a5)
    80009340:	00878793          	addi	a5,a5,8
    80009344:	fed79ce3          	bne	a5,a3,8000933c <__memset+0xd4>
    80009348:	ff8e7793          	andi	a5,t3,-8
    8000934c:	0007871b          	sext.w	a4,a5
    80009350:	01d787bb          	addw	a5,a5,t4
    80009354:	0ce88e63          	beq	a7,a4,80009430 <__memset+0x1c8>
    80009358:	00f50733          	add	a4,a0,a5
    8000935c:	00b70023          	sb	a1,0(a4)
    80009360:	0017871b          	addiw	a4,a5,1
    80009364:	0cc77663          	bgeu	a4,a2,80009430 <__memset+0x1c8>
    80009368:	00e50733          	add	a4,a0,a4
    8000936c:	00b70023          	sb	a1,0(a4)
    80009370:	0027871b          	addiw	a4,a5,2
    80009374:	0ac77e63          	bgeu	a4,a2,80009430 <__memset+0x1c8>
    80009378:	00e50733          	add	a4,a0,a4
    8000937c:	00b70023          	sb	a1,0(a4)
    80009380:	0037871b          	addiw	a4,a5,3
    80009384:	0ac77663          	bgeu	a4,a2,80009430 <__memset+0x1c8>
    80009388:	00e50733          	add	a4,a0,a4
    8000938c:	00b70023          	sb	a1,0(a4)
    80009390:	0047871b          	addiw	a4,a5,4
    80009394:	08c77e63          	bgeu	a4,a2,80009430 <__memset+0x1c8>
    80009398:	00e50733          	add	a4,a0,a4
    8000939c:	00b70023          	sb	a1,0(a4)
    800093a0:	0057871b          	addiw	a4,a5,5
    800093a4:	08c77663          	bgeu	a4,a2,80009430 <__memset+0x1c8>
    800093a8:	00e50733          	add	a4,a0,a4
    800093ac:	00b70023          	sb	a1,0(a4)
    800093b0:	0067871b          	addiw	a4,a5,6
    800093b4:	06c77e63          	bgeu	a4,a2,80009430 <__memset+0x1c8>
    800093b8:	00e50733          	add	a4,a0,a4
    800093bc:	00b70023          	sb	a1,0(a4)
    800093c0:	0077871b          	addiw	a4,a5,7
    800093c4:	06c77663          	bgeu	a4,a2,80009430 <__memset+0x1c8>
    800093c8:	00e50733          	add	a4,a0,a4
    800093cc:	00b70023          	sb	a1,0(a4)
    800093d0:	0087871b          	addiw	a4,a5,8
    800093d4:	04c77e63          	bgeu	a4,a2,80009430 <__memset+0x1c8>
    800093d8:	00e50733          	add	a4,a0,a4
    800093dc:	00b70023          	sb	a1,0(a4)
    800093e0:	0097871b          	addiw	a4,a5,9
    800093e4:	04c77663          	bgeu	a4,a2,80009430 <__memset+0x1c8>
    800093e8:	00e50733          	add	a4,a0,a4
    800093ec:	00b70023          	sb	a1,0(a4)
    800093f0:	00a7871b          	addiw	a4,a5,10
    800093f4:	02c77e63          	bgeu	a4,a2,80009430 <__memset+0x1c8>
    800093f8:	00e50733          	add	a4,a0,a4
    800093fc:	00b70023          	sb	a1,0(a4)
    80009400:	00b7871b          	addiw	a4,a5,11
    80009404:	02c77663          	bgeu	a4,a2,80009430 <__memset+0x1c8>
    80009408:	00e50733          	add	a4,a0,a4
    8000940c:	00b70023          	sb	a1,0(a4)
    80009410:	00c7871b          	addiw	a4,a5,12
    80009414:	00c77e63          	bgeu	a4,a2,80009430 <__memset+0x1c8>
    80009418:	00e50733          	add	a4,a0,a4
    8000941c:	00b70023          	sb	a1,0(a4)
    80009420:	00d7879b          	addiw	a5,a5,13
    80009424:	00c7f663          	bgeu	a5,a2,80009430 <__memset+0x1c8>
    80009428:	00f507b3          	add	a5,a0,a5
    8000942c:	00b78023          	sb	a1,0(a5)
    80009430:	00813403          	ld	s0,8(sp)
    80009434:	01010113          	addi	sp,sp,16
    80009438:	00008067          	ret
    8000943c:	00b00693          	li	a3,11
    80009440:	e55ff06f          	j	80009294 <__memset+0x2c>
    80009444:	00300e93          	li	t4,3
    80009448:	ea5ff06f          	j	800092ec <__memset+0x84>
    8000944c:	00100e93          	li	t4,1
    80009450:	e9dff06f          	j	800092ec <__memset+0x84>
    80009454:	00000e93          	li	t4,0
    80009458:	e95ff06f          	j	800092ec <__memset+0x84>
    8000945c:	00000793          	li	a5,0
    80009460:	ef9ff06f          	j	80009358 <__memset+0xf0>
    80009464:	00200e93          	li	t4,2
    80009468:	e85ff06f          	j	800092ec <__memset+0x84>
    8000946c:	00400e93          	li	t4,4
    80009470:	e7dff06f          	j	800092ec <__memset+0x84>
    80009474:	00500e93          	li	t4,5
    80009478:	e75ff06f          	j	800092ec <__memset+0x84>
    8000947c:	00600e93          	li	t4,6
    80009480:	e6dff06f          	j	800092ec <__memset+0x84>

0000000080009484 <__memmove>:
    80009484:	ff010113          	addi	sp,sp,-16
    80009488:	00813423          	sd	s0,8(sp)
    8000948c:	01010413          	addi	s0,sp,16
    80009490:	0e060863          	beqz	a2,80009580 <__memmove+0xfc>
    80009494:	fff6069b          	addiw	a3,a2,-1
    80009498:	0006881b          	sext.w	a6,a3
    8000949c:	0ea5e863          	bltu	a1,a0,8000958c <__memmove+0x108>
    800094a0:	00758713          	addi	a4,a1,7
    800094a4:	00a5e7b3          	or	a5,a1,a0
    800094a8:	40a70733          	sub	a4,a4,a0
    800094ac:	0077f793          	andi	a5,a5,7
    800094b0:	00f73713          	sltiu	a4,a4,15
    800094b4:	00174713          	xori	a4,a4,1
    800094b8:	0017b793          	seqz	a5,a5
    800094bc:	00e7f7b3          	and	a5,a5,a4
    800094c0:	10078863          	beqz	a5,800095d0 <__memmove+0x14c>
    800094c4:	00900793          	li	a5,9
    800094c8:	1107f463          	bgeu	a5,a6,800095d0 <__memmove+0x14c>
    800094cc:	0036581b          	srliw	a6,a2,0x3
    800094d0:	fff8081b          	addiw	a6,a6,-1
    800094d4:	02081813          	slli	a6,a6,0x20
    800094d8:	01d85893          	srli	a7,a6,0x1d
    800094dc:	00858813          	addi	a6,a1,8
    800094e0:	00058793          	mv	a5,a1
    800094e4:	00050713          	mv	a4,a0
    800094e8:	01088833          	add	a6,a7,a6
    800094ec:	0007b883          	ld	a7,0(a5)
    800094f0:	00878793          	addi	a5,a5,8
    800094f4:	00870713          	addi	a4,a4,8
    800094f8:	ff173c23          	sd	a7,-8(a4)
    800094fc:	ff0798e3          	bne	a5,a6,800094ec <__memmove+0x68>
    80009500:	ff867713          	andi	a4,a2,-8
    80009504:	02071793          	slli	a5,a4,0x20
    80009508:	0207d793          	srli	a5,a5,0x20
    8000950c:	00f585b3          	add	a1,a1,a5
    80009510:	40e686bb          	subw	a3,a3,a4
    80009514:	00f507b3          	add	a5,a0,a5
    80009518:	06e60463          	beq	a2,a4,80009580 <__memmove+0xfc>
    8000951c:	0005c703          	lbu	a4,0(a1)
    80009520:	00e78023          	sb	a4,0(a5)
    80009524:	04068e63          	beqz	a3,80009580 <__memmove+0xfc>
    80009528:	0015c603          	lbu	a2,1(a1)
    8000952c:	00100713          	li	a4,1
    80009530:	00c780a3          	sb	a2,1(a5)
    80009534:	04e68663          	beq	a3,a4,80009580 <__memmove+0xfc>
    80009538:	0025c603          	lbu	a2,2(a1)
    8000953c:	00200713          	li	a4,2
    80009540:	00c78123          	sb	a2,2(a5)
    80009544:	02e68e63          	beq	a3,a4,80009580 <__memmove+0xfc>
    80009548:	0035c603          	lbu	a2,3(a1)
    8000954c:	00300713          	li	a4,3
    80009550:	00c781a3          	sb	a2,3(a5)
    80009554:	02e68663          	beq	a3,a4,80009580 <__memmove+0xfc>
    80009558:	0045c603          	lbu	a2,4(a1)
    8000955c:	00400713          	li	a4,4
    80009560:	00c78223          	sb	a2,4(a5)
    80009564:	00e68e63          	beq	a3,a4,80009580 <__memmove+0xfc>
    80009568:	0055c603          	lbu	a2,5(a1)
    8000956c:	00500713          	li	a4,5
    80009570:	00c782a3          	sb	a2,5(a5)
    80009574:	00e68663          	beq	a3,a4,80009580 <__memmove+0xfc>
    80009578:	0065c703          	lbu	a4,6(a1)
    8000957c:	00e78323          	sb	a4,6(a5)
    80009580:	00813403          	ld	s0,8(sp)
    80009584:	01010113          	addi	sp,sp,16
    80009588:	00008067          	ret
    8000958c:	02061713          	slli	a4,a2,0x20
    80009590:	02075713          	srli	a4,a4,0x20
    80009594:	00e587b3          	add	a5,a1,a4
    80009598:	f0f574e3          	bgeu	a0,a5,800094a0 <__memmove+0x1c>
    8000959c:	02069613          	slli	a2,a3,0x20
    800095a0:	02065613          	srli	a2,a2,0x20
    800095a4:	fff64613          	not	a2,a2
    800095a8:	00e50733          	add	a4,a0,a4
    800095ac:	00c78633          	add	a2,a5,a2
    800095b0:	fff7c683          	lbu	a3,-1(a5)
    800095b4:	fff78793          	addi	a5,a5,-1
    800095b8:	fff70713          	addi	a4,a4,-1
    800095bc:	00d70023          	sb	a3,0(a4)
    800095c0:	fec798e3          	bne	a5,a2,800095b0 <__memmove+0x12c>
    800095c4:	00813403          	ld	s0,8(sp)
    800095c8:	01010113          	addi	sp,sp,16
    800095cc:	00008067          	ret
    800095d0:	02069713          	slli	a4,a3,0x20
    800095d4:	02075713          	srli	a4,a4,0x20
    800095d8:	00170713          	addi	a4,a4,1
    800095dc:	00e50733          	add	a4,a0,a4
    800095e0:	00050793          	mv	a5,a0
    800095e4:	0005c683          	lbu	a3,0(a1)
    800095e8:	00178793          	addi	a5,a5,1
    800095ec:	00158593          	addi	a1,a1,1
    800095f0:	fed78fa3          	sb	a3,-1(a5)
    800095f4:	fee798e3          	bne	a5,a4,800095e4 <__memmove+0x160>
    800095f8:	f89ff06f          	j	80009580 <__memmove+0xfc>
	...
