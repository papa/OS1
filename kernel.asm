
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	48013103          	ld	sp,1152(sp) # 8000a480 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7a4050ef          	jal	ra,800057c0 <start>

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
    800015a8:	00007517          	auipc	a0,0x7
    800015ac:	a7850513          	addi	a0,a0,-1416 # 80008020 <CONSOLE_STATUS+0x10>
    800015b0:	00003097          	auipc	ra,0x3
    800015b4:	f90080e7          	jalr	-112(ra) # 80004540 <_Z11printStringPKc>
        printInt(i);
    800015b8:	00000613          	li	a2,0
    800015bc:	00a00593          	li	a1,10
    800015c0:	00048513          	mv	a0,s1
    800015c4:	00003097          	auipc	ra,0x3
    800015c8:	114080e7          	jalr	276(ra) # 800046d8 <_Z8printIntiii>
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
    800015f8:	00007517          	auipc	a0,0x7
    800015fc:	a3050513          	addi	a0,a0,-1488 # 80008028 <CONSOLE_STATUS+0x18>
    80001600:	00003097          	auipc	ra,0x3
    80001604:	f40080e7          	jalr	-192(ra) # 80004540 <_Z11printStringPKc>
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
    80001628:	00007517          	auipc	a0,0x7
    8000162c:	a0850513          	addi	a0,a0,-1528 # 80008030 <CONSOLE_STATUS+0x20>
    80001630:	00003097          	auipc	ra,0x3
    80001634:	f10080e7          	jalr	-240(ra) # 80004540 <_Z11printStringPKc>
    for(uint64 i = 0; i < num;i++)
    80001638:	00000493          	li	s1,0
    8000163c:	0440006f          	j	80001680 <_Z15thread1FunctionPv+0x6c>
            thread_dispatch();
    80001640:	00000097          	auipc	ra,0x0
    80001644:	cf4080e7          	jalr	-780(ra) # 80001334 <thread_dispatch>
        printString("i : ");
    80001648:	00007517          	auipc	a0,0x7
    8000164c:	9d850513          	addi	a0,a0,-1576 # 80008020 <CONSOLE_STATUS+0x10>
    80001650:	00003097          	auipc	ra,0x3
    80001654:	ef0080e7          	jalr	-272(ra) # 80004540 <_Z11printStringPKc>
        printInt(i);
    80001658:	00000613          	li	a2,0
    8000165c:	00a00593          	li	a1,10
    80001660:	0004851b          	sext.w	a0,s1
    80001664:	00003097          	auipc	ra,0x3
    80001668:	074080e7          	jalr	116(ra) # 800046d8 <_Z8printIntiii>
        printString("\n");
    8000166c:	00007517          	auipc	a0,0x7
    80001670:	a8c50513          	addi	a0,a0,-1396 # 800080f8 <CONSOLE_STATUS+0xe8>
    80001674:	00003097          	auipc	ra,0x3
    80001678:	ecc080e7          	jalr	-308(ra) # 80004540 <_Z11printStringPKc>
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
    800016c8:	00007517          	auipc	a0,0x7
    800016cc:	98050513          	addi	a0,a0,-1664 # 80008048 <CONSOLE_STATUS+0x38>
    800016d0:	00003097          	auipc	ra,0x3
    800016d4:	e70080e7          	jalr	-400(ra) # 80004540 <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    800016d8:	00000493          	li	s1,0
    800016dc:	0440006f          	j	80001720 <_Z15thread2FunctionPv+0x6c>
            thread_dispatch();
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	c54080e7          	jalr	-940(ra) # 80001334 <thread_dispatch>
        printString("j : ");
    800016e8:	00007517          	auipc	a0,0x7
    800016ec:	97850513          	addi	a0,a0,-1672 # 80008060 <CONSOLE_STATUS+0x50>
    800016f0:	00003097          	auipc	ra,0x3
    800016f4:	e50080e7          	jalr	-432(ra) # 80004540 <_Z11printStringPKc>
        printInt(j);
    800016f8:	00000613          	li	a2,0
    800016fc:	00a00593          	li	a1,10
    80001700:	0004851b          	sext.w	a0,s1
    80001704:	00003097          	auipc	ra,0x3
    80001708:	fd4080e7          	jalr	-44(ra) # 800046d8 <_Z8printIntiii>
        printString("\n");
    8000170c:	00007517          	auipc	a0,0x7
    80001710:	9ec50513          	addi	a0,a0,-1556 # 800080f8 <CONSOLE_STATUS+0xe8>
    80001714:	00003097          	auipc	ra,0x3
    80001718:	e2c080e7          	jalr	-468(ra) # 80004540 <_Z11printStringPKc>
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
    80001768:	00007517          	auipc	a0,0x7
    8000176c:	8e050513          	addi	a0,a0,-1824 # 80008048 <CONSOLE_STATUS+0x38>
    80001770:	00003097          	auipc	ra,0x3
    80001774:	dd0080e7          	jalr	-560(ra) # 80004540 <_Z11printStringPKc>
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
    80001794:	00007517          	auipc	a0,0x7
    80001798:	8cc50513          	addi	a0,a0,-1844 # 80008060 <CONSOLE_STATUS+0x50>
    8000179c:	00003097          	auipc	ra,0x3
    800017a0:	da4080e7          	jalr	-604(ra) # 80004540 <_Z11printStringPKc>
        printInt(j);
    800017a4:	00000613          	li	a2,0
    800017a8:	00a00593          	li	a1,10
    800017ac:	0004851b          	sext.w	a0,s1
    800017b0:	00003097          	auipc	ra,0x3
    800017b4:	f28080e7          	jalr	-216(ra) # 800046d8 <_Z8printIntiii>
        printString("\n");
    800017b8:	00007517          	auipc	a0,0x7
    800017bc:	94050513          	addi	a0,a0,-1728 # 800080f8 <CONSOLE_STATUS+0xe8>
    800017c0:	00003097          	auipc	ra,0x3
    800017c4:	d80080e7          	jalr	-640(ra) # 80004540 <_Z11printStringPKc>
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
    8000184c:	00007517          	auipc	a0,0x7
    80001850:	81c50513          	addi	a0,a0,-2020 # 80008068 <CONSOLE_STATUS+0x58>
    80001854:	00003097          	auipc	ra,0x3
    80001858:	cec080e7          	jalr	-788(ra) # 80004540 <_Z11printStringPKc>
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
    80001890:	00006517          	auipc	a0,0x6
    80001894:	7e850513          	addi	a0,a0,2024 # 80008078 <CONSOLE_STATUS+0x68>
    80001898:	00003097          	auipc	ra,0x3
    8000189c:	ca8080e7          	jalr	-856(ra) # 80004540 <_Z11printStringPKc>
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
    800018e4:	00006517          	auipc	a0,0x6
    800018e8:	79450513          	addi	a0,a0,1940 # 80008078 <CONSOLE_STATUS+0x68>
    800018ec:	00003097          	auipc	ra,0x3
    800018f0:	c54080e7          	jalr	-940(ra) # 80004540 <_Z11printStringPKc>
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
    8000192c:	00006517          	auipc	a0,0x6
    80001930:	74c50513          	addi	a0,a0,1868 # 80008078 <CONSOLE_STATUS+0x68>
    80001934:	00003097          	auipc	ra,0x3
    80001938:	c0c080e7          	jalr	-1012(ra) # 80004540 <_Z11printStringPKc>
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
    80001970:	00006517          	auipc	a0,0x6
    80001974:	70850513          	addi	a0,a0,1800 # 80008078 <CONSOLE_STATUS+0x68>
    80001978:	00003097          	auipc	ra,0x3
    8000197c:	bc8080e7          	jalr	-1080(ra) # 80004540 <_Z11printStringPKc>
            return;
    80001980:	f21ff06f          	j	800018a0 <_Z10mallocFreev+0x68>
    printString("OK\n");
    80001984:	00006517          	auipc	a0,0x6
    80001988:	6fc50513          	addi	a0,a0,1788 # 80008080 <CONSOLE_STATUS+0x70>
    8000198c:	00003097          	auipc	ra,0x3
    80001990:	bb4080e7          	jalr	-1100(ra) # 80004540 <_Z11printStringPKc>
    80001994:	f0dff06f          	j	800018a0 <_Z10mallocFreev+0x68>

0000000080001998 <_Z9bigMallocv>:
{
    80001998:	ff010113          	addi	sp,sp,-16
    8000199c:	00113423          	sd	ra,8(sp)
    800019a0:	00813023          	sd	s0,0(sp)
    800019a4:	01010413          	addi	s0,sp,16
    printString("bigMalloc\n");
    800019a8:	00006517          	auipc	a0,0x6
    800019ac:	6e050513          	addi	a0,a0,1760 # 80008088 <CONSOLE_STATUS+0x78>
    800019b0:	00003097          	auipc	ra,0x3
    800019b4:	b90080e7          	jalr	-1136(ra) # 80004540 <_Z11printStringPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    800019b8:	00009797          	auipc	a5,0x9
    800019bc:	b007b783          	ld	a5,-1280(a5) # 8000a4b8 <_GLOBAL_OFFSET_TABLE_+0x78>
    800019c0:	0007b503          	ld	a0,0(a5)
    800019c4:	00009797          	auipc	a5,0x9
    800019c8:	a947b783          	ld	a5,-1388(a5) # 8000a458 <_GLOBAL_OFFSET_TABLE_+0x18>
    800019cc:	0007b783          	ld	a5,0(a5)
    800019d0:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    800019d4:	06450513          	addi	a0,a0,100
    800019d8:	00000097          	auipc	ra,0x0
    800019dc:	880080e7          	jalr	-1920(ra) # 80001258 <mem_alloc>
    if(p == 0)
    800019e0:	02050263          	beqz	a0,80001a04 <_Z9bigMallocv+0x6c>
        printString("not OK\n");
    800019e4:	00006517          	auipc	a0,0x6
    800019e8:	69450513          	addi	a0,a0,1684 # 80008078 <CONSOLE_STATUS+0x68>
    800019ec:	00003097          	auipc	ra,0x3
    800019f0:	b54080e7          	jalr	-1196(ra) # 80004540 <_Z11printStringPKc>
}
    800019f4:	00813083          	ld	ra,8(sp)
    800019f8:	00013403          	ld	s0,0(sp)
    800019fc:	01010113          	addi	sp,sp,16
    80001a00:	00008067          	ret
        printString("OK\n");
    80001a04:	00006517          	auipc	a0,0x6
    80001a08:	67c50513          	addi	a0,a0,1660 # 80008080 <CONSOLE_STATUS+0x70>
    80001a0c:	00003097          	auipc	ra,0x3
    80001a10:	b34080e7          	jalr	-1228(ra) # 80004540 <_Z11printStringPKc>
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
    80001a34:	00006517          	auipc	a0,0x6
    80001a38:	66450513          	addi	a0,a0,1636 # 80008098 <CONSOLE_STATUS+0x88>
    80001a3c:	00003097          	auipc	ra,0x3
    80001a40:	b04080e7          	jalr	-1276(ra) # 80004540 <_Z11printStringPKc>
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
    80001a90:	00003097          	auipc	ra,0x3
    80001a94:	c48080e7          	jalr	-952(ra) # 800046d8 <_Z8printIntiii>
    printString("\n");
    80001a98:	00006517          	auipc	a0,0x6
    80001a9c:	66050513          	addi	a0,a0,1632 # 800080f8 <CONSOLE_STATUS+0xe8>
    80001aa0:	00003097          	auipc	ra,0x3
    80001aa4:	aa0080e7          	jalr	-1376(ra) # 80004540 <_Z11printStringPKc>
    if(sum == X*cnt)
    80001aa8:	00291793          	slli	a5,s2,0x2
    80001aac:	01278933          	add	s2,a5,s2
    80001ab0:	00191913          	slli	s2,s2,0x1
    80001ab4:	03390863          	beq	s2,s3,80001ae4 <_Z17lotOfSmallMallocsv+0xcc>
        printString("not OK\n");
    80001ab8:	00006517          	auipc	a0,0x6
    80001abc:	5c050513          	addi	a0,a0,1472 # 80008078 <CONSOLE_STATUS+0x68>
    80001ac0:	00003097          	auipc	ra,0x3
    80001ac4:	a80080e7          	jalr	-1408(ra) # 80004540 <_Z11printStringPKc>
}
    80001ac8:	02813083          	ld	ra,40(sp)
    80001acc:	02013403          	ld	s0,32(sp)
    80001ad0:	01813483          	ld	s1,24(sp)
    80001ad4:	01013903          	ld	s2,16(sp)
    80001ad8:	00813983          	ld	s3,8(sp)
    80001adc:	03010113          	addi	sp,sp,48
    80001ae0:	00008067          	ret
        printString("OK\n");
    80001ae4:	00006517          	auipc	a0,0x6
    80001ae8:	59c50513          	addi	a0,a0,1436 # 80008080 <CONSOLE_STATUS+0x70>
    80001aec:	00003097          	auipc	ra,0x3
    80001af0:	a54080e7          	jalr	-1452(ra) # 80004540 <_Z11printStringPKc>
    80001af4:	fd5ff06f          	j	80001ac8 <_Z17lotOfSmallMallocsv+0xb0>

0000000080001af8 <_Z7badFreev>:
{
    80001af8:	ff010113          	addi	sp,sp,-16
    80001afc:	00113423          	sd	ra,8(sp)
    80001b00:	00813023          	sd	s0,0(sp)
    80001b04:	01010413          	addi	s0,sp,16
    printString("badFree\n");
    80001b08:	00006517          	auipc	a0,0x6
    80001b0c:	5a850513          	addi	a0,a0,1448 # 800080b0 <CONSOLE_STATUS+0xa0>
    80001b10:	00003097          	auipc	ra,0x3
    80001b14:	a30080e7          	jalr	-1488(ra) # 80004540 <_Z11printStringPKc>
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
    80001b34:	00006517          	auipc	a0,0x6
    80001b38:	54450513          	addi	a0,a0,1348 # 80008078 <CONSOLE_STATUS+0x68>
    80001b3c:	00003097          	auipc	ra,0x3
    80001b40:	a04080e7          	jalr	-1532(ra) # 80004540 <_Z11printStringPKc>
}
    80001b44:	00813083          	ld	ra,8(sp)
    80001b48:	00013403          	ld	s0,0(sp)
    80001b4c:	01010113          	addi	sp,sp,16
    80001b50:	00008067          	ret
         printString("OK\n");
    80001b54:	00006517          	auipc	a0,0x6
    80001b58:	52c50513          	addi	a0,a0,1324 # 80008080 <CONSOLE_STATUS+0x70>
    80001b5c:	00003097          	auipc	ra,0x3
    80001b60:	9e4080e7          	jalr	-1564(ra) # 80004540 <_Z11printStringPKc>
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
    80001b80:	00006517          	auipc	a0,0x6
    80001b84:	54050513          	addi	a0,a0,1344 # 800080c0 <CONSOLE_STATUS+0xb0>
    80001b88:	00003097          	auipc	ra,0x3
    80001b8c:	9b8080e7          	jalr	-1608(ra) # 80004540 <_Z11printStringPKc>
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
    80001bc4:	00006517          	auipc	a0,0x6
    80001bc8:	4b450513          	addi	a0,a0,1204 # 80008078 <CONSOLE_STATUS+0x68>
    80001bcc:	00003097          	auipc	ra,0x3
    80001bd0:	974080e7          	jalr	-1676(ra) # 80004540 <_Z11printStringPKc>
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
    80001c4c:	00006517          	auipc	a0,0x6
    80001c50:	42c50513          	addi	a0,a0,1068 # 80008078 <CONSOLE_STATUS+0x68>
    80001c54:	00003097          	auipc	ra,0x3
    80001c58:	8ec080e7          	jalr	-1812(ra) # 80004540 <_Z11printStringPKc>
                return;
    80001c5c:	f79ff06f          	j	80001bd4 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001c60:	00006517          	auipc	a0,0x6
    80001c64:	47050513          	addi	a0,a0,1136 # 800080d0 <CONSOLE_STATUS+0xc0>
    80001c68:	00003097          	auipc	ra,0x3
    80001c6c:	8d8080e7          	jalr	-1832(ra) # 80004540 <_Z11printStringPKc>
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
    80001cc4:	00006517          	auipc	a0,0x6
    80001cc8:	3b450513          	addi	a0,a0,948 # 80008078 <CONSOLE_STATUS+0x68>
    80001ccc:	00003097          	auipc	ra,0x3
    80001cd0:	874080e7          	jalr	-1932(ra) # 80004540 <_Z11printStringPKc>
                return;
    80001cd4:	f01ff06f          	j	80001bd4 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001cd8:	00006517          	auipc	a0,0x6
    80001cdc:	3f850513          	addi	a0,a0,1016 # 800080d0 <CONSOLE_STATUS+0xc0>
    80001ce0:	00003097          	auipc	ra,0x3
    80001ce4:	860080e7          	jalr	-1952(ra) # 80004540 <_Z11printStringPKc>
                return;
    80001ce8:	eedff06f          	j	80001bd4 <_Z13stressTestingv+0x6c>
        sz-=10;
    80001cec:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001cf0:	f01ff06f          	j	80001bf0 <_Z13stressTestingv+0x88>
    printString("OK\n");
    80001cf4:	00006517          	auipc	a0,0x6
    80001cf8:	38c50513          	addi	a0,a0,908 # 80008080 <CONSOLE_STATUS+0x70>
    80001cfc:	00003097          	auipc	ra,0x3
    80001d00:	844080e7          	jalr	-1980(ra) # 80004540 <_Z11printStringPKc>
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
    80001d40:	00008797          	auipc	a5,0x8
    80001d44:	60078793          	addi	a5,a5,1536 # 8000a340 <_ZTV12TestPeriodic+0x10>
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
    80001db8:	0000e097          	auipc	ra,0xe
    80001dbc:	910080e7          	jalr	-1776(ra) # 8000f6c8 <_Unwind_Resume>

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
    80001e00:	00006517          	auipc	a0,0x6
    80001e04:	2d850513          	addi	a0,a0,728 # 800080d8 <CONSOLE_STATUS+0xc8>
    80001e08:	00002097          	auipc	ra,0x2
    80001e0c:	738080e7          	jalr	1848(ra) # 80004540 <_Z11printStringPKc>

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
    80001edc:	00006517          	auipc	a0,0x6
    80001ee0:	22450513          	addi	a0,a0,548 # 80008100 <CONSOLE_STATUS+0xf0>
    80001ee4:	00002097          	auipc	ra,0x2
    80001ee8:	65c080e7          	jalr	1628(ra) # 80004540 <_Z11printStringPKc>
    80001eec:	0140006f          	j	80001f00 <_Z10mallocTestv+0x128>
        printString("not OK\n");
    80001ef0:	00006517          	auipc	a0,0x6
    80001ef4:	18850513          	addi	a0,a0,392 # 80008078 <CONSOLE_STATUS+0x68>
    80001ef8:	00002097          	auipc	ra,0x2
    80001efc:	648080e7          	jalr	1608(ra) # 80004540 <_Z11printStringPKc>
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
    80001f70:	00006517          	auipc	a0,0x6
    80001f74:	1c050513          	addi	a0,a0,448 # 80008130 <CONSOLE_STATUS+0x120>
    80001f78:	00002097          	auipc	ra,0x2
    80001f7c:	5c8080e7          	jalr	1480(ra) # 80004540 <_Z11printStringPKc>

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
    80001fb8:	00006517          	auipc	a0,0x6
    80001fbc:	0c050513          	addi	a0,a0,192 # 80008078 <CONSOLE_STATUS+0x68>
    80001fc0:	00002097          	auipc	ra,0x2
    80001fc4:	580080e7          	jalr	1408(ra) # 80004540 <_Z11printStringPKc>
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
    800020c8:	00006517          	auipc	a0,0x6
    800020cc:	fb050513          	addi	a0,a0,-80 # 80008078 <CONSOLE_STATUS+0x68>
    800020d0:	00002097          	auipc	ra,0x2
    800020d4:	470080e7          	jalr	1136(ra) # 80004540 <_Z11printStringPKc>
        return;
    800020d8:	ef1ff06f          	j	80001fc8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800020dc:	00006517          	auipc	a0,0x6
    800020e0:	f9c50513          	addi	a0,a0,-100 # 80008078 <CONSOLE_STATUS+0x68>
    800020e4:	00002097          	auipc	ra,0x2
    800020e8:	45c080e7          	jalr	1116(ra) # 80004540 <_Z11printStringPKc>
        return;
    800020ec:	eddff06f          	j	80001fc8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800020f0:	00006517          	auipc	a0,0x6
    800020f4:	f8850513          	addi	a0,a0,-120 # 80008078 <CONSOLE_STATUS+0x68>
    800020f8:	00002097          	auipc	ra,0x2
    800020fc:	448080e7          	jalr	1096(ra) # 80004540 <_Z11printStringPKc>
        return;
    80002100:	ec9ff06f          	j	80001fc8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    80002104:	00006517          	auipc	a0,0x6
    80002108:	f7450513          	addi	a0,a0,-140 # 80008078 <CONSOLE_STATUS+0x68>
    8000210c:	00002097          	auipc	ra,0x2
    80002110:	434080e7          	jalr	1076(ra) # 80004540 <_Z11printStringPKc>
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
    80002180:	00006517          	auipc	a0,0x6
    80002184:	ff850513          	addi	a0,a0,-8 # 80008178 <CONSOLE_STATUS+0x168>
    80002188:	00002097          	auipc	ra,0x2
    8000218c:	3b8080e7          	jalr	952(ra) # 80004540 <_Z11printStringPKc>
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
    800021bc:	00008717          	auipc	a4,0x8
    800021c0:	35472703          	lw	a4,852(a4) # 8000a510 <head>
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
    800021e0:	00008497          	auipc	s1,0x8
    800021e4:	33048493          	addi	s1,s1,816 # 8000a510 <head>
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
    8000221c:	00008717          	auipc	a4,0x8
    80002220:	2f472703          	lw	a4,756(a4) # 8000a510 <head>
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
    80002244:	00008717          	auipc	a4,0x8
    80002248:	2f472703          	lw	a4,756(a4) # 8000a538 <tail>
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
    80002268:	00008497          	auipc	s1,0x8
    8000226c:	2a848493          	addi	s1,s1,680 # 8000a510 <head>
    80002270:	0204b503          	ld	a0,32(s1)
    80002274:	fffff097          	auipc	ra,0xfffff
    80002278:	16c080e7          	jalr	364(ra) # 800013e0 <sem_wait>
        buffer[tail] = string[tail];
    8000227c:	0284a783          	lw	a5,40(s1)
    80002280:	00008717          	auipc	a4,0x8
    80002284:	07070713          	addi	a4,a4,112 # 8000a2f0 <string>
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
    800022ac:	00008717          	auipc	a4,0x8
    800022b0:	28c72703          	lw	a4,652(a4) # 8000a538 <tail>
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
    80002404:	00008797          	auipc	a5,0x8
    80002408:	f0c78793          	addi	a5,a5,-244 # 8000a310 <_ZTV14PeriodicThread+0x10>
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
    80002440:	00008797          	auipc	a5,0x8
    80002444:	ed078793          	addi	a5,a5,-304 # 8000a310 <_ZTV14PeriodicThread+0x10>
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
    80002484:	00008797          	auipc	a5,0x8
    80002488:	e8c78793          	addi	a5,a5,-372 # 8000a310 <_ZTV14PeriodicThread+0x10>
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
    800024c0:	00008797          	auipc	a5,0x8
    800024c4:	e5078793          	addi	a5,a5,-432 # 8000a310 <_ZTV14PeriodicThread+0x10>
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
    8000250c:	00008797          	auipc	a5,0x8
    80002510:	0347b783          	ld	a5,52(a5) # 8000a540 <_ZN3PCB7runningE>
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
    800025e0:	00008497          	auipc	s1,0x8
    800025e4:	f604b483          	ld	s1,-160(s1) # 8000a540 <_ZN3PCB7runningE>

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
    800025fc:	00008917          	auipc	s2,0x8
    80002600:	f4490913          	addi	s2,s2,-188 # 8000a540 <_ZN3PCB7runningE>
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
    80002720:	00008917          	auipc	s2,0x8
    80002724:	e2090913          	addi	s2,s2,-480 # 8000a540 <_ZN3PCB7runningE>
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
    80002760:	00008597          	auipc	a1,0x8
    80002764:	d305b583          	ld	a1,-720(a1) # 8000a490 <_GLOBAL_OFFSET_TABLE_+0x50>
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
    800027b0:	00008597          	auipc	a1,0x8
    800027b4:	d105b583          	ld	a1,-752(a1) # 8000a4c0 <_GLOBAL_OFFSET_TABLE_+0x80>
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
    80002824:	00008797          	auipc	a5,0x8
    80002828:	d1c78793          	addi	a5,a5,-740 # 8000a540 <_ZN3PCB7runningE>
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
    80002870:	00008797          	auipc	a5,0x8
    80002874:	ce07b423          	sd	zero,-792(a5) # 8000a558 <_ZN3PCB16timeSliceCounterE>
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
    800028a4:	00008717          	auipc	a4,0x8
    800028a8:	c9c70713          	addi	a4,a4,-868 # 8000a540 <_ZN3PCB7runningE>
    800028ac:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    800028b0:	00073703          	ld	a4,0(a4)
    800028b4:	00008697          	auipc	a3,0x8
    800028b8:	bd46b683          	ld	a3,-1068(a3) # 8000a488 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    80002934:	00008697          	auipc	a3,0x8
    80002938:	c2c6b683          	ld	a3,-980(a3) # 8000a560 <_ZN3PCB10savedRegA4E>
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
    80002a18:	00008697          	auipc	a3,0x8
    80002a1c:	b486b683          	ld	a3,-1208(a3) # 8000a560 <_ZN3PCB10savedRegA4E>
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
    80002aa0:	00008797          	auipc	a5,0x8
    80002aa4:	ac97b423          	sd	s1,-1336(a5) # 8000a568 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002aa8:	01800513          	li	a0,24
    80002aac:	00002097          	auipc	ra,0x2
    80002ab0:	8e0080e7          	jalr	-1824(ra) # 8000438c <_ZN10KSemaphorenwEm>
    80002ab4:	00050493          	mv	s1,a0
    80002ab8:	00000593          	li	a1,0
    80002abc:	00001097          	auipc	ra,0x1
    80002ac0:	668080e7          	jalr	1640(ra) # 80004124 <_ZN10KSemaphoreC1Ei>
    80002ac4:	00008797          	auipc	a5,0x8
    80002ac8:	aa97b623          	sd	s1,-1364(a5) # 8000a570 <_ZN8KConsole19hasCharactersOutputE>
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
    80002af8:	0000d097          	auipc	ra,0xd
    80002afc:	bd0080e7          	jalr	-1072(ra) # 8000f6c8 <_Unwind_Resume>
    80002b00:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002b04:	00048513          	mv	a0,s1
    80002b08:	00002097          	auipc	ra,0x2
    80002b0c:	924080e7          	jalr	-1756(ra) # 8000442c <_ZN10KSemaphoredlEPv>
    80002b10:	00090513          	mv	a0,s2
    80002b14:	0000d097          	auipc	ra,0xd
    80002b18:	bb4080e7          	jalr	-1100(ra) # 8000f6c8 <_Unwind_Resume>

0000000080002b1c <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80002b1c:	00008697          	auipc	a3,0x8
    80002b20:	a4c68693          	addi	a3,a3,-1460 # 8000a568 <_ZN8KConsole18hasCharactersInputE>
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
    80002b50:	0000a717          	auipc	a4,0xa
    80002b54:	a5870713          	addi	a4,a4,-1448 # 8000c5a8 <_ZN8KConsole11inputBufferE>
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
    80002b98:	00008497          	auipc	s1,0x8
    80002b9c:	9d048493          	addi	s1,s1,-1584 # 8000a568 <_ZN8KConsole18hasCharactersInputE>
    80002ba0:	0004b503          	ld	a0,0(s1)
    80002ba4:	00001097          	auipc	ra,0x1
    80002ba8:	628080e7          	jalr	1576(ra) # 800041cc <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80002bac:	0184b783          	ld	a5,24(s1)
    80002bb0:	0104b703          	ld	a4,16(s1)
    80002bb4:	04e78063          	beq	a5,a4,80002bf4 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80002bb8:	0000a717          	auipc	a4,0xa
    80002bbc:	9f070713          	addi	a4,a4,-1552 # 8000c5a8 <_ZN8KConsole11inputBufferE>
    80002bc0:	00f70733          	add	a4,a4,a5
    80002bc4:	00074503          	lbu	a0,0(a4)

    inputHead = (inputHead+1)%bufferSize;
    80002bc8:	00178793          	addi	a5,a5,1
    80002bcc:	00002737          	lui	a4,0x2
    80002bd0:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002bd4:	00e7f7b3          	and	a5,a5,a4
    80002bd8:	00008717          	auipc	a4,0x8
    80002bdc:	9af73423          	sd	a5,-1624(a4) # 8000a580 <_ZN8KConsole9inputHeadE>

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
    80002bfc:	00008697          	auipc	a3,0x8
    80002c00:	96c68693          	addi	a3,a3,-1684 # 8000a568 <_ZN8KConsole18hasCharactersInputE>
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
    80002c40:	00008697          	auipc	a3,0x8
    80002c44:	96868693          	addi	a3,a3,-1688 # 8000a5a8 <_ZN8KConsole12outputBufferE>
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
    80002c74:	00007797          	auipc	a5,0x7
    80002c78:	7dc7b783          	ld	a5,2012(a5) # 8000a450 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80002ca8:	00007797          	auipc	a5,0x7
    80002cac:	7c87b783          	ld	a5,1992(a5) # 8000a470 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80002cdc:	00007797          	auipc	a5,0x7
    80002ce0:	7747b783          	ld	a5,1908(a5) # 8000a450 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80002d28:	00008497          	auipc	s1,0x8
    80002d2c:	84048493          	addi	s1,s1,-1984 # 8000a568 <_ZN8KConsole18hasCharactersInputE>
    80002d30:	0084b503          	ld	a0,8(s1)
    80002d34:	00001097          	auipc	ra,0x1
    80002d38:	498080e7          	jalr	1176(ra) # 800041cc <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80002d3c:	0284b783          	ld	a5,40(s1)
    80002d40:	0204b703          	ld	a4,32(s1)
    80002d44:	04e78063          	beq	a5,a4,80002d84 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;

    char c = outputBuffer[outputHead];
    80002d48:	00008717          	auipc	a4,0x8
    80002d4c:	86070713          	addi	a4,a4,-1952 # 8000a5a8 <_ZN8KConsole12outputBufferE>
    80002d50:	00f70733          	add	a4,a4,a5
    80002d54:	00074503          	lbu	a0,0(a4)

    outputHead = (outputHead+1)%bufferSize;
    80002d58:	00178793          	addi	a5,a5,1
    80002d5c:	00002737          	lui	a4,0x2
    80002d60:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002d64:	00e7f7b3          	and	a5,a5,a4
    80002d68:	00008717          	auipc	a4,0x8
    80002d6c:	82f73423          	sd	a5,-2008(a4) # 8000a590 <_ZN8KConsole10outputHeadE>

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
    80002dd0:	00007717          	auipc	a4,0x7
    80002dd4:	79870713          	addi	a4,a4,1944 # 8000a568 <_ZN8KConsole18hasCharactersInputE>
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
    80002e54:	00007517          	auipc	a0,0x7
    80002e58:	74453503          	ld	a0,1860(a0) # 8000a598 <_ZN8KConsole11pendingPutcE>
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
    80002e94:	00007797          	auipc	a5,0x7
    80002e98:	6147b783          	ld	a5,1556(a5) # 8000a4a8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e9c:	0007c783          	lbu	a5,0(a5)
    80002ea0:	00078e63          	beqz	a5,80002ebc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002ea4:	00000097          	auipc	ra,0x0
    80002ea8:	fa4080e7          	jalr	-92(ra) # 80002e48 <_ZN8KConsole17outputBufferEmptyEv>
    80002eac:	00050863          	beqz	a0,80002ebc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002eb0:	00007797          	auipc	a5,0x7
    80002eb4:	6f07b783          	ld	a5,1776(a5) # 8000a5a0 <_ZN8KConsole11pendingGetcE>
    80002eb8:	fc0784e3          	beqz	a5,80002e80 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 x = CONSOLE_STATUS;
    80002ebc:	00007797          	auipc	a5,0x7
    80002ec0:	5947b783          	ld	a5,1428(a5) # 8000a450 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80002edc:	00007797          	auipc	a5,0x7
    80002ee0:	6bc7b783          	ld	a5,1724(a5) # 8000a598 <_ZN8KConsole11pendingPutcE>
    80002ee4:	fa0784e3          	beqz	a5,80002e8c <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80002ee8:	ffffe097          	auipc	ra,0xffffe
    80002eec:	674080e7          	jalr	1652(ra) # 8000155c <sysCallGetCharOutput>
    80002ef0:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80002ef4:	00007717          	auipc	a4,0x7
    80002ef8:	67470713          	addi	a4,a4,1652 # 8000a568 <_ZN8KConsole18hasCharactersInputE>
    80002efc:	03073783          	ld	a5,48(a4)
    80002f00:	fff78793          	addi	a5,a5,-1
    80002f04:	02f73823          	sd	a5,48(a4)
                x = CONSOLE_RX_DATA;
    80002f08:	00007797          	auipc	a5,0x7
    80002f0c:	5407b783          	ld	a5,1344(a5) # 8000a448 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    80002fb8:	00005797          	auipc	a5,0x5
    80002fbc:	21878793          	addi	a5,a5,536 # 800081d0 <CONSOLE_STATUS+0x1c0>
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
    8000308c:	00007797          	auipc	a5,0x7
    80003090:	4247b783          	ld	a5,1060(a5) # 8000a4b0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003094:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003098:	00500793          	li	a5,5
    8000309c:	04f62023          	sw	a5,64(a2)
    //trapPrintString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800030a0:	0000b797          	auipc	a5,0xb
    800030a4:	5087b783          	ld	a5,1288(a5) # 8000e5a8 <_ZN12SleepPCBList15sleepingPCBHeadE>
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
    800030e0:	0000b797          	auipc	a5,0xb
    800030e4:	4cc7b423          	sd	a2,1224(a5) # 8000e5a8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800030e8:	fedff06f          	j	800030d4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

00000000800030ec <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //trapPrintString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    800030ec:	0000b517          	auipc	a0,0xb
    800030f0:	4bc53503          	ld	a0,1212(a0) # 8000e5a8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    800030f4:	06050e63          	beqz	a0,80003170 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    {
        //trapPrintString("No sleeping PCBs...\n");
        return;
    }
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800030f8:	06050c63          	beqz	a0,80003170 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    800030fc:	02053783          	ld	a5,32(a0)
    80003100:	00007717          	auipc	a4,0x7
    80003104:	38873703          	ld	a4,904(a4) # 8000a488 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    8000312c:	00007717          	auipc	a4,0x7
    80003130:	35c73703          	ld	a4,860(a4) # 8000a488 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    8000314c:	0000b797          	auipc	a5,0xb
    80003150:	4497be23          	sd	s1,1116(a5) # 8000e5a8 <_ZN12SleepPCBList15sleepingPCBHeadE>
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
    800031d0:	0000b797          	auipc	a5,0xb
    800031d4:	3e07b783          	ld	a5,992(a5) # 8000e5b0 <_ZN9Scheduler16schedulerPCBHeadE>
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
    80003210:	0000b797          	auipc	a5,0xb
    80003214:	3a07b783          	ld	a5,928(a5) # 8000e5b0 <_ZN9Scheduler16schedulerPCBHeadE>
    80003218:	02078263          	beqz	a5,8000323c <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    8000321c:	0000b797          	auipc	a5,0xb
    80003220:	39478793          	addi	a5,a5,916 # 8000e5b0 <_ZN9Scheduler16schedulerPCBHeadE>
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
    8000323c:	0000b797          	auipc	a5,0xb
    80003240:	37478793          	addi	a5,a5,884 # 8000e5b0 <_ZN9Scheduler16schedulerPCBHeadE>
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
    8000325c:	0000b517          	auipc	a0,0xb
    80003260:	35453503          	ld	a0,852(a0) # 8000e5b0 <_ZN9Scheduler16schedulerPCBHeadE>
    80003264:	00050c63          	beqz	a0,8000327c <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003268:	00853783          	ld	a5,8(a0)
    8000326c:	00078e63          	beqz	a5,80003288 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003270:	0000b717          	auipc	a4,0xb
    80003274:	34f73023          	sd	a5,832(a4) # 8000e5b0 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003278:	00053423          	sd	zero,8(a0)
    return retval;
}
    8000327c:	00813403          	ld	s0,8(sp)
    80003280:	01010113          	addi	sp,sp,16
    80003284:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003288:	0000b797          	auipc	a5,0xb
    8000328c:	32878793          	addi	a5,a5,808 # 8000e5b0 <_ZN9Scheduler16schedulerPCBHeadE>
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
    800032b0:	0000b497          	auipc	s1,0xb
    800032b4:	3004b483          	ld	s1,768(s1) # 8000e5b0 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    800032b8:	02048863          	beqz	s1,800032e8 <_ZN9Scheduler5printEv+0x4c>
    {
        printInt((uint64)curr, 16);
    800032bc:	00000613          	li	a2,0
    800032c0:	01000593          	li	a1,16
    800032c4:	0004851b          	sext.w	a0,s1
    800032c8:	00001097          	auipc	ra,0x1
    800032cc:	410080e7          	jalr	1040(ra) # 800046d8 <_Z8printIntiii>
        printString("\n");
    800032d0:	00005517          	auipc	a0,0x5
    800032d4:	e2850513          	addi	a0,a0,-472 # 800080f8 <CONSOLE_STATUS+0xe8>
    800032d8:	00001097          	auipc	ra,0x1
    800032dc:	268080e7          	jalr	616(ra) # 80004540 <_Z11printStringPKc>
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
    80003360:	00007797          	auipc	a5,0x7
    80003364:	01878793          	addi	a5,a5,24 # 8000a378 <_ZTV6Thread+0x10>
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
    80003398:	00007797          	auipc	a5,0x7
    8000339c:	00878793          	addi	a5,a5,8 # 8000a3a0 <_ZTV9Semaphore+0x10>
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
    80003568:	00007797          	auipc	a5,0x7
    8000356c:	e1078793          	addi	a5,a5,-496 # 8000a378 <_ZTV6Thread+0x10>
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
    800035a0:	00007797          	auipc	a5,0x7
    800035a4:	dd878793          	addi	a5,a5,-552 # 8000a378 <_ZTV6Thread+0x10>
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
    80003624:	00007797          	auipc	a5,0x7
    80003628:	d7c78793          	addi	a5,a5,-644 # 8000a3a0 <_ZTV9Semaphore+0x10>
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
    8000372c:	00007797          	auipc	a5,0x7
    80003730:	be478793          	addi	a5,a5,-1052 # 8000a310 <_ZTV14PeriodicThread+0x10>
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
    80003760:	00007797          	auipc	a5,0x7
    80003764:	d007b783          	ld	a5,-768(a5) # 8000a460 <_GLOBAL_OFFSET_TABLE_+0x20>
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
    80003814:	0000b797          	auipc	a5,0xb
    80003818:	dac7c783          	lbu	a5,-596(a5) # 8000e5c0 <_ZN5Riscv16kernelMainCalledE>
    8000381c:	00078463          	beqz	a5,80003824 <_ZN5Riscv10kernelMainEv+0x10>
    80003820:	00008067          	ret
{
    80003824:	ff010113          	addi	sp,sp,-16
    80003828:	00113423          	sd	ra,8(sp)
    8000382c:	00813023          	sd	s0,0(sp)
    80003830:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    80003834:	00100793          	li	a5,1
    80003838:	0000b717          	auipc	a4,0xb
    8000383c:	d8f70423          	sb	a5,-632(a4) # 8000e5c0 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    80003840:	00000097          	auipc	ra,0x0
    80003844:	f10080e7          	jalr	-240(ra) # 80003750 <_ZN5Riscv10initSystemEv>

    enableInterrupts();
    80003848:	00000097          	auipc	ra,0x0
    8000384c:	f44080e7          	jalr	-188(ra) # 8000378c <_ZN5Riscv16enableInterruptsEv>

    while(!PCB::userPCB->isFinished())
    80003850:	00007797          	auipc	a5,0x7
    80003854:	c507b783          	ld	a5,-944(a5) # 8000a4a0 <_GLOBAL_OFFSET_TABLE_+0x60>
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
    80003878:	0000b717          	auipc	a4,0xb
    8000387c:	d4f704a3          	sb	a5,-695(a4) # 8000e5c1 <_ZN5Riscv12finishSystemE>
    80003880:	00c0006f          	j	8000388c <_ZN5Riscv10kernelMainEv+0x78>
    while(!PCB::consolePCB->isFinished())
    {
        thread_dispatch();
    80003884:	ffffe097          	auipc	ra,0xffffe
    80003888:	ab0080e7          	jalr	-1360(ra) # 80001334 <thread_dispatch>
    while(!PCB::consolePCB->isFinished())
    8000388c:	00007797          	auipc	a5,0x7
    80003890:	c0c7b783          	ld	a5,-1012(a5) # 8000a498 <_GLOBAL_OFFSET_TABLE_+0x58>
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
    800038d4:	00002097          	auipc	ra,0x2
    800038d8:	9a0080e7          	jalr	-1632(ra) # 80005274 <_Z8userMainv>
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
    80003954:	00007717          	auipc	a4,0x7
    80003958:	b5c73703          	ld	a4,-1188(a4) # 8000a4b0 <_GLOBAL_OFFSET_TABLE_+0x70>
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
    80003988:	00007797          	auipc	a5,0x7
    8000398c:	b287b783          	ld	a5,-1240(a5) # 8000a4b0 <_GLOBAL_OFFSET_TABLE_+0x70>
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
    800039d4:	00007797          	auipc	a5,0x7
    800039d8:	af47b783          	ld	a5,-1292(a5) # 8000a4c8 <_GLOBAL_OFFSET_TABLE_+0x88>
    800039dc:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    800039e0:	00007797          	auipc	a5,0x7
    800039e4:	ad07b783          	ld	a5,-1328(a5) # 8000a4b0 <_GLOBAL_OFFSET_TABLE_+0x70>
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
    80003a60:	00007797          	auipc	a5,0x7
    80003a64:	9f07b783          	ld	a5,-1552(a5) # 8000a450 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80003a80:	00007797          	auipc	a5,0x7
    80003a84:	9f07b783          	ld	a5,-1552(a5) # 8000a470 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003a88:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003a8c:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003a90:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003a94:	00058513          	mv	a0,a1
    80003a98:	0ff57513          	andi	a0,a0,255
                if(KConsole::pendingGetc > 0)
    80003a9c:	00007797          	auipc	a5,0x7
    80003aa0:	9cc7b783          	ld	a5,-1588(a5) # 8000a468 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003aa4:	0007b783          	ld	a5,0(a5)
    80003aa8:	0c079263          	bnez	a5,80003b6c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            plic_complete(plic_claim());
    80003aac:	00002097          	auipc	ra,0x2
    80003ab0:	568080e7          	jalr	1384(ra) # 80006014 <plic_claim>
    80003ab4:	00002097          	auipc	ra,0x2
    80003ab8:	598080e7          	jalr	1432(ra) # 8000604c <plic_complete>
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
    80003ae8:	0000b717          	auipc	a4,0xb
    80003aec:	ad870713          	addi	a4,a4,-1320 # 8000e5c0 <_ZN5Riscv16kernelMainCalledE>
    80003af0:	00873783          	ld	a5,8(a4)
    80003af4:	00178793          	addi	a5,a5,1
    80003af8:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80003afc:	00007497          	auipc	s1,0x7
    80003b00:	97c4b483          	ld	s1,-1668(s1) # 8000a478 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003b04:	0004b783          	ld	a5,0(s1)
    80003b08:	00178793          	addi	a5,a5,1
    80003b0c:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003b10:	fffff097          	auipc	ra,0xfffff
    80003b14:	5dc080e7          	jalr	1500(ra) # 800030ec <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003b18:	00007797          	auipc	a5,0x7
    80003b1c:	9987b783          	ld	a5,-1640(a5) # 8000a4b0 <_GLOBAL_OFFSET_TABLE_+0x70>
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
    80003b70:	00007717          	auipc	a4,0x7
    80003b74:	8f873703          	ld	a4,-1800(a4) # 8000a468 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80003bc8:	00004717          	auipc	a4,0x4
    80003bcc:	61c70713          	addi	a4,a4,1564 # 800081e4 <CONSOLE_STATUS+0x1d4>
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
    80003cb8:	0000b717          	auipc	a4,0xb
    80003cbc:	91872703          	lw	a4,-1768(a4) # 8000e5d0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003cc0:	00100793          	li	a5,1
    80003cc4:	04f70263          	beq	a4,a5,80003d08 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003cc8:	0000b797          	auipc	a5,0xb
    80003ccc:	90878793          	addi	a5,a5,-1784 # 8000e5d0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003cd0:	00100713          	li	a4,1
    80003cd4:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003cd8:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003cdc:	00006717          	auipc	a4,0x6
    80003ce0:	77c73703          	ld	a4,1916(a4) # 8000a458 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003ce4:	00073703          	ld	a4,0(a4)
    80003ce8:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003cec:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003cf0:	00006797          	auipc	a5,0x6
    80003cf4:	7c87b783          	ld	a5,1992(a5) # 8000a4b8 <_GLOBAL_OFFSET_TABLE_+0x78>
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
    80003d3c:	0000b797          	auipc	a5,0xb
    80003d40:	89c7b783          	ld	a5,-1892(a5) # 8000e5d8 <_ZN15MemoryAllocator13headAllocatedE>
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
    80003d88:	0000b797          	auipc	a5,0xb
    80003d8c:	8497b823          	sd	s1,-1968(a5) # 8000e5d8 <_ZN15MemoryAllocator13headAllocatedE>
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
    80003db8:	0000b497          	auipc	s1,0xb
    80003dbc:	8284b483          	ld	s1,-2008(s1) # 8000e5e0 <_ZN15MemoryAllocator8headFreeE>
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
    80003de4:	00006617          	auipc	a2,0x6
    80003de8:	6d463603          	ld	a2,1748(a2) # 8000a4b8 <_GLOBAL_OFFSET_TABLE_+0x78>
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
    80003e1c:	0000a797          	auipc	a5,0xa
    80003e20:	7cd7b223          	sd	a3,1988(a5) # 8000e5e0 <_ZN15MemoryAllocator8headFreeE>
    80003e24:	02c0006f          	j	80003e50 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80003e28:	00070863          	beqz	a4,80003e38 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003e2c:	0084b783          	ld	a5,8(s1)
    80003e30:	00f73423          	sd	a5,8(a4)
    80003e34:	01c0006f          	j	80003e50 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80003e38:	0084b783          	ld	a5,8(s1)
    80003e3c:	0000a717          	auipc	a4,0xa
    80003e40:	7af73223          	sd	a5,1956(a4) # 8000e5e0 <_ZN15MemoryAllocator8headFreeE>
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
    80003e68:	0000a797          	auipc	a5,0xa
    80003e6c:	7607bc23          	sd	zero,1912(a5) # 8000e5e0 <_ZN15MemoryAllocator8headFreeE>
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
    80003ee0:	0000a797          	auipc	a5,0xa
    80003ee4:	7007b783          	ld	a5,1792(a5) # 8000e5e0 <_ZN15MemoryAllocator8headFreeE>
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
    80003f58:	0000a797          	auipc	a5,0xa
    80003f5c:	6897b423          	sd	s1,1672(a5) # 8000e5e0 <_ZN15MemoryAllocator8headFreeE>
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
    80003fc0:	0000a497          	auipc	s1,0xa
    80003fc4:	6184b483          	ld	s1,1560(s1) # 8000e5d8 <_ZN15MemoryAllocator13headAllocatedE>
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
    80004024:	0000a717          	auipc	a4,0xa
    80004028:	5af73a23          	sd	a5,1460(a4) # 8000e5d8 <_ZN15MemoryAllocator13headAllocatedE>
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
    80004198:	00006797          	auipc	a5,0x6
    8000419c:	3187b783          	ld	a5,792(a5) # 8000a4b0 <_GLOBAL_OFFSET_TABLE_+0x70>
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
    800041cc:	00006797          	auipc	a5,0x6
    800041d0:	2e47b783          	ld	a5,740(a5) # 8000a4b0 <_GLOBAL_OFFSET_TABLE_+0x70>
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
    80004470:	00006797          	auipc	a5,0x6
    80004474:	0407b783          	ld	a5,64(a5) # 8000a4b0 <_GLOBAL_OFFSET_TABLE_+0x70>
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

0000000080004540 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004540:	fe010113          	addi	sp,sp,-32
    80004544:	00113c23          	sd	ra,24(sp)
    80004548:	00813823          	sd	s0,16(sp)
    8000454c:	00913423          	sd	s1,8(sp)
    80004550:	02010413          	addi	s0,sp,32
    80004554:	00050493          	mv	s1,a0
    LOCK();
    80004558:	00100613          	li	a2,1
    8000455c:	00000593          	li	a1,0
    80004560:	0000a517          	auipc	a0,0xa
    80004564:	08850513          	addi	a0,a0,136 # 8000e5e8 <lockPrint>
    80004568:	ffffd097          	auipc	ra,0xffffd
    8000456c:	cb0080e7          	jalr	-848(ra) # 80001218 <copy_and_swap>
    80004570:	fe0514e3          	bnez	a0,80004558 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004574:	0004c503          	lbu	a0,0(s1)
    80004578:	00050a63          	beqz	a0,8000458c <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    8000457c:	ffffd097          	auipc	ra,0xffffd
    80004580:	fbc080e7          	jalr	-68(ra) # 80001538 <putc>
        string++;
    80004584:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004588:	fedff06f          	j	80004574 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    8000458c:	00000613          	li	a2,0
    80004590:	00100593          	li	a1,1
    80004594:	0000a517          	auipc	a0,0xa
    80004598:	05450513          	addi	a0,a0,84 # 8000e5e8 <lockPrint>
    8000459c:	ffffd097          	auipc	ra,0xffffd
    800045a0:	c7c080e7          	jalr	-900(ra) # 80001218 <copy_and_swap>
    800045a4:	fe0514e3          	bnez	a0,8000458c <_Z11printStringPKc+0x4c>
}
    800045a8:	01813083          	ld	ra,24(sp)
    800045ac:	01013403          	ld	s0,16(sp)
    800045b0:	00813483          	ld	s1,8(sp)
    800045b4:	02010113          	addi	sp,sp,32
    800045b8:	00008067          	ret

00000000800045bc <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800045bc:	fd010113          	addi	sp,sp,-48
    800045c0:	02113423          	sd	ra,40(sp)
    800045c4:	02813023          	sd	s0,32(sp)
    800045c8:	00913c23          	sd	s1,24(sp)
    800045cc:	01213823          	sd	s2,16(sp)
    800045d0:	01313423          	sd	s3,8(sp)
    800045d4:	01413023          	sd	s4,0(sp)
    800045d8:	03010413          	addi	s0,sp,48
    800045dc:	00050993          	mv	s3,a0
    800045e0:	00058a13          	mv	s4,a1
    LOCK();
    800045e4:	00100613          	li	a2,1
    800045e8:	00000593          	li	a1,0
    800045ec:	0000a517          	auipc	a0,0xa
    800045f0:	ffc50513          	addi	a0,a0,-4 # 8000e5e8 <lockPrint>
    800045f4:	ffffd097          	auipc	ra,0xffffd
    800045f8:	c24080e7          	jalr	-988(ra) # 80001218 <copy_and_swap>
    800045fc:	fe0514e3          	bnez	a0,800045e4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004600:	00000913          	li	s2,0
    80004604:	00090493          	mv	s1,s2
    80004608:	0019091b          	addiw	s2,s2,1
    8000460c:	03495a63          	bge	s2,s4,80004640 <_Z9getStringPci+0x84>
        cc = getc();
    80004610:	ffffd097          	auipc	ra,0xffffd
    80004614:	f00080e7          	jalr	-256(ra) # 80001510 <getc>
        if(cc < 1)
    80004618:	02050463          	beqz	a0,80004640 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    8000461c:	009984b3          	add	s1,s3,s1
    80004620:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004624:	00a00793          	li	a5,10
    80004628:	00f50a63          	beq	a0,a5,8000463c <_Z9getStringPci+0x80>
    8000462c:	00d00793          	li	a5,13
    80004630:	fcf51ae3          	bne	a0,a5,80004604 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80004634:	00090493          	mv	s1,s2
    80004638:	0080006f          	j	80004640 <_Z9getStringPci+0x84>
    8000463c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004640:	009984b3          	add	s1,s3,s1
    80004644:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004648:	00000613          	li	a2,0
    8000464c:	00100593          	li	a1,1
    80004650:	0000a517          	auipc	a0,0xa
    80004654:	f9850513          	addi	a0,a0,-104 # 8000e5e8 <lockPrint>
    80004658:	ffffd097          	auipc	ra,0xffffd
    8000465c:	bc0080e7          	jalr	-1088(ra) # 80001218 <copy_and_swap>
    80004660:	fe0514e3          	bnez	a0,80004648 <_Z9getStringPci+0x8c>
    return buf;
}
    80004664:	00098513          	mv	a0,s3
    80004668:	02813083          	ld	ra,40(sp)
    8000466c:	02013403          	ld	s0,32(sp)
    80004670:	01813483          	ld	s1,24(sp)
    80004674:	01013903          	ld	s2,16(sp)
    80004678:	00813983          	ld	s3,8(sp)
    8000467c:	00013a03          	ld	s4,0(sp)
    80004680:	03010113          	addi	sp,sp,48
    80004684:	00008067          	ret

0000000080004688 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004688:	ff010113          	addi	sp,sp,-16
    8000468c:	00813423          	sd	s0,8(sp)
    80004690:	01010413          	addi	s0,sp,16
    80004694:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004698:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000469c:	0006c603          	lbu	a2,0(a3)
    800046a0:	fd06071b          	addiw	a4,a2,-48
    800046a4:	0ff77713          	andi	a4,a4,255
    800046a8:	00900793          	li	a5,9
    800046ac:	02e7e063          	bltu	a5,a4,800046cc <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800046b0:	0025179b          	slliw	a5,a0,0x2
    800046b4:	00a787bb          	addw	a5,a5,a0
    800046b8:	0017979b          	slliw	a5,a5,0x1
    800046bc:	00168693          	addi	a3,a3,1
    800046c0:	00c787bb          	addw	a5,a5,a2
    800046c4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800046c8:	fd5ff06f          	j	8000469c <_Z11stringToIntPKc+0x14>
    return n;
}
    800046cc:	00813403          	ld	s0,8(sp)
    800046d0:	01010113          	addi	sp,sp,16
    800046d4:	00008067          	ret

00000000800046d8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800046d8:	fc010113          	addi	sp,sp,-64
    800046dc:	02113c23          	sd	ra,56(sp)
    800046e0:	02813823          	sd	s0,48(sp)
    800046e4:	02913423          	sd	s1,40(sp)
    800046e8:	03213023          	sd	s2,32(sp)
    800046ec:	01313c23          	sd	s3,24(sp)
    800046f0:	04010413          	addi	s0,sp,64
    800046f4:	00050493          	mv	s1,a0
    800046f8:	00058913          	mv	s2,a1
    800046fc:	00060993          	mv	s3,a2
    LOCK();
    80004700:	00100613          	li	a2,1
    80004704:	00000593          	li	a1,0
    80004708:	0000a517          	auipc	a0,0xa
    8000470c:	ee050513          	addi	a0,a0,-288 # 8000e5e8 <lockPrint>
    80004710:	ffffd097          	auipc	ra,0xffffd
    80004714:	b08080e7          	jalr	-1272(ra) # 80001218 <copy_and_swap>
    80004718:	fe0514e3          	bnez	a0,80004700 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000471c:	00098463          	beqz	s3,80004724 <_Z8printIntiii+0x4c>
    80004720:	0804c463          	bltz	s1,800047a8 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004724:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004728:	00000593          	li	a1,0
    }

    i = 0;
    8000472c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004730:	0009079b          	sext.w	a5,s2
    80004734:	0325773b          	remuw	a4,a0,s2
    80004738:	00048613          	mv	a2,s1
    8000473c:	0014849b          	addiw	s1,s1,1
    80004740:	02071693          	slli	a3,a4,0x20
    80004744:	0206d693          	srli	a3,a3,0x20
    80004748:	00006717          	auipc	a4,0x6
    8000474c:	c6870713          	addi	a4,a4,-920 # 8000a3b0 <digits>
    80004750:	00d70733          	add	a4,a4,a3
    80004754:	00074683          	lbu	a3,0(a4)
    80004758:	fd040713          	addi	a4,s0,-48
    8000475c:	00c70733          	add	a4,a4,a2
    80004760:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004764:	0005071b          	sext.w	a4,a0
    80004768:	0325553b          	divuw	a0,a0,s2
    8000476c:	fcf772e3          	bgeu	a4,a5,80004730 <_Z8printIntiii+0x58>
    if(neg)
    80004770:	00058c63          	beqz	a1,80004788 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80004774:	fd040793          	addi	a5,s0,-48
    80004778:	009784b3          	add	s1,a5,s1
    8000477c:	02d00793          	li	a5,45
    80004780:	fef48823          	sb	a5,-16(s1)
    80004784:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004788:	fff4849b          	addiw	s1,s1,-1
    8000478c:	0204c463          	bltz	s1,800047b4 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80004790:	fd040793          	addi	a5,s0,-48
    80004794:	009787b3          	add	a5,a5,s1
    80004798:	ff07c503          	lbu	a0,-16(a5)
    8000479c:	ffffd097          	auipc	ra,0xffffd
    800047a0:	d9c080e7          	jalr	-612(ra) # 80001538 <putc>
    800047a4:	fe5ff06f          	j	80004788 <_Z8printIntiii+0xb0>
        x = -xx;
    800047a8:	4090053b          	negw	a0,s1
        neg = 1;
    800047ac:	00100593          	li	a1,1
        x = -xx;
    800047b0:	f7dff06f          	j	8000472c <_Z8printIntiii+0x54>

    UNLOCK();
    800047b4:	00000613          	li	a2,0
    800047b8:	00100593          	li	a1,1
    800047bc:	0000a517          	auipc	a0,0xa
    800047c0:	e2c50513          	addi	a0,a0,-468 # 8000e5e8 <lockPrint>
    800047c4:	ffffd097          	auipc	ra,0xffffd
    800047c8:	a54080e7          	jalr	-1452(ra) # 80001218 <copy_and_swap>
    800047cc:	fe0514e3          	bnez	a0,800047b4 <_Z8printIntiii+0xdc>
}
    800047d0:	03813083          	ld	ra,56(sp)
    800047d4:	03013403          	ld	s0,48(sp)
    800047d8:	02813483          	ld	s1,40(sp)
    800047dc:	02013903          	ld	s2,32(sp)
    800047e0:	01813983          	ld	s3,24(sp)
    800047e4:	04010113          	addi	sp,sp,64
    800047e8:	00008067          	ret

00000000800047ec <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800047ec:	fd010113          	addi	sp,sp,-48
    800047f0:	02113423          	sd	ra,40(sp)
    800047f4:	02813023          	sd	s0,32(sp)
    800047f8:	00913c23          	sd	s1,24(sp)
    800047fc:	01213823          	sd	s2,16(sp)
    80004800:	01313423          	sd	s3,8(sp)
    80004804:	03010413          	addi	s0,sp,48
    80004808:	00050493          	mv	s1,a0
    8000480c:	00058913          	mv	s2,a1
    80004810:	0015879b          	addiw	a5,a1,1
    80004814:	0007851b          	sext.w	a0,a5
    80004818:	00f4a023          	sw	a5,0(s1)
    8000481c:	0004a823          	sw	zero,16(s1)
    80004820:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004824:	00251513          	slli	a0,a0,0x2
    80004828:	ffffd097          	auipc	ra,0xffffd
    8000482c:	a30080e7          	jalr	-1488(ra) # 80001258 <mem_alloc>
    80004830:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004834:	01000513          	li	a0,16
    80004838:	fffff097          	auipc	ra,0xfffff
    8000483c:	b88080e7          	jalr	-1144(ra) # 800033c0 <_Znwm>
    80004840:	00050993          	mv	s3,a0
    80004844:	00000593          	li	a1,0
    80004848:	fffff097          	auipc	ra,0xfffff
    8000484c:	dc4080e7          	jalr	-572(ra) # 8000360c <_ZN9SemaphoreC1Ej>
    80004850:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004854:	01000513          	li	a0,16
    80004858:	fffff097          	auipc	ra,0xfffff
    8000485c:	b68080e7          	jalr	-1176(ra) # 800033c0 <_Znwm>
    80004860:	00050993          	mv	s3,a0
    80004864:	00090593          	mv	a1,s2
    80004868:	fffff097          	auipc	ra,0xfffff
    8000486c:	da4080e7          	jalr	-604(ra) # 8000360c <_ZN9SemaphoreC1Ej>
    80004870:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004874:	01000513          	li	a0,16
    80004878:	fffff097          	auipc	ra,0xfffff
    8000487c:	b48080e7          	jalr	-1208(ra) # 800033c0 <_Znwm>
    80004880:	00050913          	mv	s2,a0
    80004884:	00100593          	li	a1,1
    80004888:	fffff097          	auipc	ra,0xfffff
    8000488c:	d84080e7          	jalr	-636(ra) # 8000360c <_ZN9SemaphoreC1Ej>
    80004890:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004894:	01000513          	li	a0,16
    80004898:	fffff097          	auipc	ra,0xfffff
    8000489c:	b28080e7          	jalr	-1240(ra) # 800033c0 <_Znwm>
    800048a0:	00050913          	mv	s2,a0
    800048a4:	00100593          	li	a1,1
    800048a8:	fffff097          	auipc	ra,0xfffff
    800048ac:	d64080e7          	jalr	-668(ra) # 8000360c <_ZN9SemaphoreC1Ej>
    800048b0:	0324b823          	sd	s2,48(s1)
}
    800048b4:	02813083          	ld	ra,40(sp)
    800048b8:	02013403          	ld	s0,32(sp)
    800048bc:	01813483          	ld	s1,24(sp)
    800048c0:	01013903          	ld	s2,16(sp)
    800048c4:	00813983          	ld	s3,8(sp)
    800048c8:	03010113          	addi	sp,sp,48
    800048cc:	00008067          	ret
    800048d0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800048d4:	00098513          	mv	a0,s3
    800048d8:	fffff097          	auipc	ra,0xfffff
    800048dc:	b10080e7          	jalr	-1264(ra) # 800033e8 <_ZdlPv>
    800048e0:	00048513          	mv	a0,s1
    800048e4:	0000b097          	auipc	ra,0xb
    800048e8:	de4080e7          	jalr	-540(ra) # 8000f6c8 <_Unwind_Resume>
    800048ec:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800048f0:	00098513          	mv	a0,s3
    800048f4:	fffff097          	auipc	ra,0xfffff
    800048f8:	af4080e7          	jalr	-1292(ra) # 800033e8 <_ZdlPv>
    800048fc:	00048513          	mv	a0,s1
    80004900:	0000b097          	auipc	ra,0xb
    80004904:	dc8080e7          	jalr	-568(ra) # 8000f6c8 <_Unwind_Resume>
    80004908:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000490c:	00090513          	mv	a0,s2
    80004910:	fffff097          	auipc	ra,0xfffff
    80004914:	ad8080e7          	jalr	-1320(ra) # 800033e8 <_ZdlPv>
    80004918:	00048513          	mv	a0,s1
    8000491c:	0000b097          	auipc	ra,0xb
    80004920:	dac080e7          	jalr	-596(ra) # 8000f6c8 <_Unwind_Resume>
    80004924:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004928:	00090513          	mv	a0,s2
    8000492c:	fffff097          	auipc	ra,0xfffff
    80004930:	abc080e7          	jalr	-1348(ra) # 800033e8 <_ZdlPv>
    80004934:	00048513          	mv	a0,s1
    80004938:	0000b097          	auipc	ra,0xb
    8000493c:	d90080e7          	jalr	-624(ra) # 8000f6c8 <_Unwind_Resume>

0000000080004940 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004940:	fe010113          	addi	sp,sp,-32
    80004944:	00113c23          	sd	ra,24(sp)
    80004948:	00813823          	sd	s0,16(sp)
    8000494c:	00913423          	sd	s1,8(sp)
    80004950:	01213023          	sd	s2,0(sp)
    80004954:	02010413          	addi	s0,sp,32
    80004958:	00050493          	mv	s1,a0
    8000495c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004960:	01853503          	ld	a0,24(a0)
    80004964:	fffff097          	auipc	ra,0xfffff
    80004968:	c70080e7          	jalr	-912(ra) # 800035d4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000496c:	0304b503          	ld	a0,48(s1)
    80004970:	fffff097          	auipc	ra,0xfffff
    80004974:	c64080e7          	jalr	-924(ra) # 800035d4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004978:	0084b783          	ld	a5,8(s1)
    8000497c:	0144a703          	lw	a4,20(s1)
    80004980:	00271713          	slli	a4,a4,0x2
    80004984:	00e787b3          	add	a5,a5,a4
    80004988:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000498c:	0144a783          	lw	a5,20(s1)
    80004990:	0017879b          	addiw	a5,a5,1
    80004994:	0004a703          	lw	a4,0(s1)
    80004998:	02e7e7bb          	remw	a5,a5,a4
    8000499c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800049a0:	0304b503          	ld	a0,48(s1)
    800049a4:	fffff097          	auipc	ra,0xfffff
    800049a8:	cb4080e7          	jalr	-844(ra) # 80003658 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800049ac:	0204b503          	ld	a0,32(s1)
    800049b0:	fffff097          	auipc	ra,0xfffff
    800049b4:	ca8080e7          	jalr	-856(ra) # 80003658 <_ZN9Semaphore6signalEv>

}
    800049b8:	01813083          	ld	ra,24(sp)
    800049bc:	01013403          	ld	s0,16(sp)
    800049c0:	00813483          	ld	s1,8(sp)
    800049c4:	00013903          	ld	s2,0(sp)
    800049c8:	02010113          	addi	sp,sp,32
    800049cc:	00008067          	ret

00000000800049d0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800049d0:	fe010113          	addi	sp,sp,-32
    800049d4:	00113c23          	sd	ra,24(sp)
    800049d8:	00813823          	sd	s0,16(sp)
    800049dc:	00913423          	sd	s1,8(sp)
    800049e0:	01213023          	sd	s2,0(sp)
    800049e4:	02010413          	addi	s0,sp,32
    800049e8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800049ec:	02053503          	ld	a0,32(a0)
    800049f0:	fffff097          	auipc	ra,0xfffff
    800049f4:	be4080e7          	jalr	-1052(ra) # 800035d4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800049f8:	0284b503          	ld	a0,40(s1)
    800049fc:	fffff097          	auipc	ra,0xfffff
    80004a00:	bd8080e7          	jalr	-1064(ra) # 800035d4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004a04:	0084b703          	ld	a4,8(s1)
    80004a08:	0104a783          	lw	a5,16(s1)
    80004a0c:	00279693          	slli	a3,a5,0x2
    80004a10:	00d70733          	add	a4,a4,a3
    80004a14:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004a18:	0017879b          	addiw	a5,a5,1
    80004a1c:	0004a703          	lw	a4,0(s1)
    80004a20:	02e7e7bb          	remw	a5,a5,a4
    80004a24:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004a28:	0284b503          	ld	a0,40(s1)
    80004a2c:	fffff097          	auipc	ra,0xfffff
    80004a30:	c2c080e7          	jalr	-980(ra) # 80003658 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004a34:	0184b503          	ld	a0,24(s1)
    80004a38:	fffff097          	auipc	ra,0xfffff
    80004a3c:	c20080e7          	jalr	-992(ra) # 80003658 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004a40:	00090513          	mv	a0,s2
    80004a44:	01813083          	ld	ra,24(sp)
    80004a48:	01013403          	ld	s0,16(sp)
    80004a4c:	00813483          	ld	s1,8(sp)
    80004a50:	00013903          	ld	s2,0(sp)
    80004a54:	02010113          	addi	sp,sp,32
    80004a58:	00008067          	ret

0000000080004a5c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004a5c:	fe010113          	addi	sp,sp,-32
    80004a60:	00113c23          	sd	ra,24(sp)
    80004a64:	00813823          	sd	s0,16(sp)
    80004a68:	00913423          	sd	s1,8(sp)
    80004a6c:	01213023          	sd	s2,0(sp)
    80004a70:	02010413          	addi	s0,sp,32
    80004a74:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004a78:	02853503          	ld	a0,40(a0)
    80004a7c:	fffff097          	auipc	ra,0xfffff
    80004a80:	b58080e7          	jalr	-1192(ra) # 800035d4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004a84:	0304b503          	ld	a0,48(s1)
    80004a88:	fffff097          	auipc	ra,0xfffff
    80004a8c:	b4c080e7          	jalr	-1204(ra) # 800035d4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004a90:	0144a783          	lw	a5,20(s1)
    80004a94:	0104a903          	lw	s2,16(s1)
    80004a98:	0327ce63          	blt	a5,s2,80004ad4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004a9c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004aa0:	0304b503          	ld	a0,48(s1)
    80004aa4:	fffff097          	auipc	ra,0xfffff
    80004aa8:	bb4080e7          	jalr	-1100(ra) # 80003658 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004aac:	0284b503          	ld	a0,40(s1)
    80004ab0:	fffff097          	auipc	ra,0xfffff
    80004ab4:	ba8080e7          	jalr	-1112(ra) # 80003658 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004ab8:	00090513          	mv	a0,s2
    80004abc:	01813083          	ld	ra,24(sp)
    80004ac0:	01013403          	ld	s0,16(sp)
    80004ac4:	00813483          	ld	s1,8(sp)
    80004ac8:	00013903          	ld	s2,0(sp)
    80004acc:	02010113          	addi	sp,sp,32
    80004ad0:	00008067          	ret
        ret = cap - head + tail;
    80004ad4:	0004a703          	lw	a4,0(s1)
    80004ad8:	4127093b          	subw	s2,a4,s2
    80004adc:	00f9093b          	addw	s2,s2,a5
    80004ae0:	fc1ff06f          	j	80004aa0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080004ae4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004ae4:	fe010113          	addi	sp,sp,-32
    80004ae8:	00113c23          	sd	ra,24(sp)
    80004aec:	00813823          	sd	s0,16(sp)
    80004af0:	00913423          	sd	s1,8(sp)
    80004af4:	02010413          	addi	s0,sp,32
    80004af8:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004afc:	00a00513          	li	a0,10
    80004b00:	fffff097          	auipc	ra,0xfffff
    80004b04:	bb8080e7          	jalr	-1096(ra) # 800036b8 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004b08:	00003517          	auipc	a0,0x3
    80004b0c:	7f050513          	addi	a0,a0,2032 # 800082f8 <CONSOLE_STATUS+0x2e8>
    80004b10:	00000097          	auipc	ra,0x0
    80004b14:	a30080e7          	jalr	-1488(ra) # 80004540 <_Z11printStringPKc>
    while (getCnt()) {
    80004b18:	00048513          	mv	a0,s1
    80004b1c:	00000097          	auipc	ra,0x0
    80004b20:	f40080e7          	jalr	-192(ra) # 80004a5c <_ZN9BufferCPP6getCntEv>
    80004b24:	02050c63          	beqz	a0,80004b5c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80004b28:	0084b783          	ld	a5,8(s1)
    80004b2c:	0104a703          	lw	a4,16(s1)
    80004b30:	00271713          	slli	a4,a4,0x2
    80004b34:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80004b38:	0007c503          	lbu	a0,0(a5)
    80004b3c:	fffff097          	auipc	ra,0xfffff
    80004b40:	b7c080e7          	jalr	-1156(ra) # 800036b8 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80004b44:	0104a783          	lw	a5,16(s1)
    80004b48:	0017879b          	addiw	a5,a5,1
    80004b4c:	0004a703          	lw	a4,0(s1)
    80004b50:	02e7e7bb          	remw	a5,a5,a4
    80004b54:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80004b58:	fc1ff06f          	j	80004b18 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80004b5c:	02100513          	li	a0,33
    80004b60:	fffff097          	auipc	ra,0xfffff
    80004b64:	b58080e7          	jalr	-1192(ra) # 800036b8 <_ZN7Console4putcEc>
    Console::putc('\n');
    80004b68:	00a00513          	li	a0,10
    80004b6c:	fffff097          	auipc	ra,0xfffff
    80004b70:	b4c080e7          	jalr	-1204(ra) # 800036b8 <_ZN7Console4putcEc>
    mem_free(buffer);
    80004b74:	0084b503          	ld	a0,8(s1)
    80004b78:	ffffc097          	auipc	ra,0xffffc
    80004b7c:	710080e7          	jalr	1808(ra) # 80001288 <mem_free>
    delete itemAvailable;
    80004b80:	0204b503          	ld	a0,32(s1)
    80004b84:	00050863          	beqz	a0,80004b94 <_ZN9BufferCPPD1Ev+0xb0>
    80004b88:	00053783          	ld	a5,0(a0)
    80004b8c:	0087b783          	ld	a5,8(a5)
    80004b90:	000780e7          	jalr	a5
    delete spaceAvailable;
    80004b94:	0184b503          	ld	a0,24(s1)
    80004b98:	00050863          	beqz	a0,80004ba8 <_ZN9BufferCPPD1Ev+0xc4>
    80004b9c:	00053783          	ld	a5,0(a0)
    80004ba0:	0087b783          	ld	a5,8(a5)
    80004ba4:	000780e7          	jalr	a5
    delete mutexTail;
    80004ba8:	0304b503          	ld	a0,48(s1)
    80004bac:	00050863          	beqz	a0,80004bbc <_ZN9BufferCPPD1Ev+0xd8>
    80004bb0:	00053783          	ld	a5,0(a0)
    80004bb4:	0087b783          	ld	a5,8(a5)
    80004bb8:	000780e7          	jalr	a5
    delete mutexHead;
    80004bbc:	0284b503          	ld	a0,40(s1)
    80004bc0:	00050863          	beqz	a0,80004bd0 <_ZN9BufferCPPD1Ev+0xec>
    80004bc4:	00053783          	ld	a5,0(a0)
    80004bc8:	0087b783          	ld	a5,8(a5)
    80004bcc:	000780e7          	jalr	a5
}
    80004bd0:	01813083          	ld	ra,24(sp)
    80004bd4:	01013403          	ld	s0,16(sp)
    80004bd8:	00813483          	ld	s1,8(sp)
    80004bdc:	02010113          	addi	sp,sp,32
    80004be0:	00008067          	ret

0000000080004be4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004be4:	fd010113          	addi	sp,sp,-48
    80004be8:	02113423          	sd	ra,40(sp)
    80004bec:	02813023          	sd	s0,32(sp)
    80004bf0:	00913c23          	sd	s1,24(sp)
    80004bf4:	01213823          	sd	s2,16(sp)
    80004bf8:	01313423          	sd	s3,8(sp)
    80004bfc:	03010413          	addi	s0,sp,48
    80004c00:	00050993          	mv	s3,a0
    80004c04:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004c08:	00000913          	li	s2,0
    80004c0c:	00c0006f          	j	80004c18 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004c10:	fffff097          	auipc	ra,0xfffff
    80004c14:	8b8080e7          	jalr	-1864(ra) # 800034c8 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 'q') {
    80004c18:	ffffd097          	auipc	ra,0xffffd
    80004c1c:	8f8080e7          	jalr	-1800(ra) # 80001510 <getc>
    80004c20:	0005059b          	sext.w	a1,a0
    80004c24:	07100793          	li	a5,113
    80004c28:	02f58a63          	beq	a1,a5,80004c5c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004c2c:	0084b503          	ld	a0,8(s1)
    80004c30:	00000097          	auipc	ra,0x0
    80004c34:	d10080e7          	jalr	-752(ra) # 80004940 <_ZN9BufferCPP3putEi>
        i++;
    80004c38:	0019071b          	addiw	a4,s2,1
    80004c3c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004c40:	0004a683          	lw	a3,0(s1)
    80004c44:	0026979b          	slliw	a5,a3,0x2
    80004c48:	00d787bb          	addw	a5,a5,a3
    80004c4c:	0017979b          	slliw	a5,a5,0x1
    80004c50:	02f767bb          	remw	a5,a4,a5
    80004c54:	fc0792e3          	bnez	a5,80004c18 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004c58:	fb9ff06f          	j	80004c10 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004c5c:	00100793          	li	a5,1
    80004c60:	0000a717          	auipc	a4,0xa
    80004c64:	98f72823          	sw	a5,-1648(a4) # 8000e5f0 <threadEnd>
    td->buffer->put('!');
    80004c68:	0109b783          	ld	a5,16(s3)
    80004c6c:	02100593          	li	a1,33
    80004c70:	0087b503          	ld	a0,8(a5)
    80004c74:	00000097          	auipc	ra,0x0
    80004c78:	ccc080e7          	jalr	-820(ra) # 80004940 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004c7c:	0104b503          	ld	a0,16(s1)
    80004c80:	fffff097          	auipc	ra,0xfffff
    80004c84:	9d8080e7          	jalr	-1576(ra) # 80003658 <_ZN9Semaphore6signalEv>
}
    80004c88:	02813083          	ld	ra,40(sp)
    80004c8c:	02013403          	ld	s0,32(sp)
    80004c90:	01813483          	ld	s1,24(sp)
    80004c94:	01013903          	ld	s2,16(sp)
    80004c98:	00813983          	ld	s3,8(sp)
    80004c9c:	03010113          	addi	sp,sp,48
    80004ca0:	00008067          	ret

0000000080004ca4 <_ZN8Producer8producerEPv>:
    void run() override {
        producer(td);
    }
};

void Producer::producer(void *arg) {
    80004ca4:	fe010113          	addi	sp,sp,-32
    80004ca8:	00113c23          	sd	ra,24(sp)
    80004cac:	00813823          	sd	s0,16(sp)
    80004cb0:	00913423          	sd	s1,8(sp)
    80004cb4:	01213023          	sd	s2,0(sp)
    80004cb8:	02010413          	addi	s0,sp,32
    80004cbc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004cc0:	00000913          	li	s2,0
    80004cc4:	00c0006f          	j	80004cd0 <_ZN8Producer8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004cc8:	fffff097          	auipc	ra,0xfffff
    80004ccc:	800080e7          	jalr	-2048(ra) # 800034c8 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004cd0:	0000a797          	auipc	a5,0xa
    80004cd4:	9207a783          	lw	a5,-1760(a5) # 8000e5f0 <threadEnd>
    80004cd8:	02079e63          	bnez	a5,80004d14 <_ZN8Producer8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004cdc:	0004a583          	lw	a1,0(s1)
    80004ce0:	0305859b          	addiw	a1,a1,48
    80004ce4:	0084b503          	ld	a0,8(s1)
    80004ce8:	00000097          	auipc	ra,0x0
    80004cec:	c58080e7          	jalr	-936(ra) # 80004940 <_ZN9BufferCPP3putEi>
        i++;
    80004cf0:	0019071b          	addiw	a4,s2,1
    80004cf4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004cf8:	0004a683          	lw	a3,0(s1)
    80004cfc:	0026979b          	slliw	a5,a3,0x2
    80004d00:	00d787bb          	addw	a5,a5,a3
    80004d04:	0017979b          	slliw	a5,a5,0x1
    80004d08:	02f767bb          	remw	a5,a4,a5
    80004d0c:	fc0792e3          	bnez	a5,80004cd0 <_ZN8Producer8producerEPv+0x2c>
    80004d10:	fb9ff06f          	j	80004cc8 <_ZN8Producer8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004d14:	0104b503          	ld	a0,16(s1)
    80004d18:	fffff097          	auipc	ra,0xfffff
    80004d1c:	940080e7          	jalr	-1728(ra) # 80003658 <_ZN9Semaphore6signalEv>
}
    80004d20:	01813083          	ld	ra,24(sp)
    80004d24:	01013403          	ld	s0,16(sp)
    80004d28:	00813483          	ld	s1,8(sp)
    80004d2c:	00013903          	ld	s2,0(sp)
    80004d30:	02010113          	addi	sp,sp,32
    80004d34:	00008067          	ret

0000000080004d38 <_ZN8Consumer8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void Consumer::consumer(void *arg) {
    80004d38:	fd010113          	addi	sp,sp,-48
    80004d3c:	02113423          	sd	ra,40(sp)
    80004d40:	02813023          	sd	s0,32(sp)
    80004d44:	00913c23          	sd	s1,24(sp)
    80004d48:	01213823          	sd	s2,16(sp)
    80004d4c:	01313423          	sd	s3,8(sp)
    80004d50:	01413023          	sd	s4,0(sp)
    80004d54:	03010413          	addi	s0,sp,48
    80004d58:	00050993          	mv	s3,a0
    80004d5c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004d60:	00000a13          	li	s4,0
    80004d64:	01c0006f          	j	80004d80 <_ZN8Consumer8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004d68:	ffffe097          	auipc	ra,0xffffe
    80004d6c:	760080e7          	jalr	1888(ra) # 800034c8 <_ZN6Thread8dispatchEv>
    80004d70:	0500006f          	j	80004dc0 <_ZN8Consumer8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004d74:	00a00513          	li	a0,10
    80004d78:	ffffc097          	auipc	ra,0xffffc
    80004d7c:	7c0080e7          	jalr	1984(ra) # 80001538 <putc>
    while (!threadEnd) {
    80004d80:	0000a797          	auipc	a5,0xa
    80004d84:	8707a783          	lw	a5,-1936(a5) # 8000e5f0 <threadEnd>
    80004d88:	06079263          	bnez	a5,80004dec <_ZN8Consumer8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004d8c:	00893503          	ld	a0,8(s2)
    80004d90:	00000097          	auipc	ra,0x0
    80004d94:	c40080e7          	jalr	-960(ra) # 800049d0 <_ZN9BufferCPP3getEv>
        i++;
    80004d98:	001a049b          	addiw	s1,s4,1
    80004d9c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004da0:	0ff57513          	andi	a0,a0,255
    80004da4:	ffffc097          	auipc	ra,0xffffc
    80004da8:	794080e7          	jalr	1940(ra) # 80001538 <putc>
        if (i % (5 * data->id) == 0) {
    80004dac:	00092703          	lw	a4,0(s2)
    80004db0:	0027179b          	slliw	a5,a4,0x2
    80004db4:	00e787bb          	addw	a5,a5,a4
    80004db8:	02f4e7bb          	remw	a5,s1,a5
    80004dbc:	fa0786e3          	beqz	a5,80004d68 <_ZN8Consumer8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004dc0:	05000793          	li	a5,80
    80004dc4:	02f4e4bb          	remw	s1,s1,a5
    80004dc8:	fa049ce3          	bnez	s1,80004d80 <_ZN8Consumer8consumerEPv+0x48>
    80004dcc:	fa9ff06f          	j	80004d74 <_ZN8Consumer8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004dd0:	0109b783          	ld	a5,16(s3)
    80004dd4:	0087b503          	ld	a0,8(a5)
    80004dd8:	00000097          	auipc	ra,0x0
    80004ddc:	bf8080e7          	jalr	-1032(ra) # 800049d0 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004de0:	0ff57513          	andi	a0,a0,255
    80004de4:	fffff097          	auipc	ra,0xfffff
    80004de8:	8d4080e7          	jalr	-1836(ra) # 800036b8 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004dec:	0109b783          	ld	a5,16(s3)
    80004df0:	0087b503          	ld	a0,8(a5)
    80004df4:	00000097          	auipc	ra,0x0
    80004df8:	c68080e7          	jalr	-920(ra) # 80004a5c <_ZN9BufferCPP6getCntEv>
    80004dfc:	fca04ae3          	bgtz	a0,80004dd0 <_ZN8Consumer8consumerEPv+0x98>
    }

    data->wait->signal();
    80004e00:	01093503          	ld	a0,16(s2)
    80004e04:	fffff097          	auipc	ra,0xfffff
    80004e08:	854080e7          	jalr	-1964(ra) # 80003658 <_ZN9Semaphore6signalEv>
}
    80004e0c:	02813083          	ld	ra,40(sp)
    80004e10:	02013403          	ld	s0,32(sp)
    80004e14:	01813483          	ld	s1,24(sp)
    80004e18:	01013903          	ld	s2,16(sp)
    80004e1c:	00813983          	ld	s3,8(sp)
    80004e20:	00013a03          	ld	s4,0(sp)
    80004e24:	03010113          	addi	sp,sp,48
    80004e28:	00008067          	ret

0000000080004e2c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004e2c:	f8010113          	addi	sp,sp,-128
    80004e30:	06113c23          	sd	ra,120(sp)
    80004e34:	06813823          	sd	s0,112(sp)
    80004e38:	06913423          	sd	s1,104(sp)
    80004e3c:	07213023          	sd	s2,96(sp)
    80004e40:	05313c23          	sd	s3,88(sp)
    80004e44:	05413823          	sd	s4,80(sp)
    80004e48:	05513423          	sd	s5,72(sp)
    80004e4c:	05613023          	sd	s6,64(sp)
    80004e50:	03713c23          	sd	s7,56(sp)
    80004e54:	03813823          	sd	s8,48(sp)
    80004e58:	03913423          	sd	s9,40(sp)
    80004e5c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004e60:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004e64:	00003517          	auipc	a0,0x3
    80004e68:	4ac50513          	addi	a0,a0,1196 # 80008310 <CONSOLE_STATUS+0x300>
    80004e6c:	fffff097          	auipc	ra,0xfffff
    80004e70:	6d4080e7          	jalr	1748(ra) # 80004540 <_Z11printStringPKc>
    getString(input, 30);
    80004e74:	01e00593          	li	a1,30
    80004e78:	f8040493          	addi	s1,s0,-128
    80004e7c:	00048513          	mv	a0,s1
    80004e80:	fffff097          	auipc	ra,0xfffff
    80004e84:	73c080e7          	jalr	1852(ra) # 800045bc <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004e88:	00048513          	mv	a0,s1
    80004e8c:	fffff097          	auipc	ra,0xfffff
    80004e90:	7fc080e7          	jalr	2044(ra) # 80004688 <_Z11stringToIntPKc>
    80004e94:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004e98:	00003517          	auipc	a0,0x3
    80004e9c:	49850513          	addi	a0,a0,1176 # 80008330 <CONSOLE_STATUS+0x320>
    80004ea0:	fffff097          	auipc	ra,0xfffff
    80004ea4:	6a0080e7          	jalr	1696(ra) # 80004540 <_Z11printStringPKc>
    getString(input, 30);
    80004ea8:	01e00593          	li	a1,30
    80004eac:	00048513          	mv	a0,s1
    80004eb0:	fffff097          	auipc	ra,0xfffff
    80004eb4:	70c080e7          	jalr	1804(ra) # 800045bc <_Z9getStringPci>
    n = stringToInt(input);
    80004eb8:	00048513          	mv	a0,s1
    80004ebc:	fffff097          	auipc	ra,0xfffff
    80004ec0:	7cc080e7          	jalr	1996(ra) # 80004688 <_Z11stringToIntPKc>
    80004ec4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004ec8:	00003517          	auipc	a0,0x3
    80004ecc:	48850513          	addi	a0,a0,1160 # 80008350 <CONSOLE_STATUS+0x340>
    80004ed0:	fffff097          	auipc	ra,0xfffff
    80004ed4:	670080e7          	jalr	1648(ra) # 80004540 <_Z11printStringPKc>
    80004ed8:	00000613          	li	a2,0
    80004edc:	00a00593          	li	a1,10
    80004ee0:	00090513          	mv	a0,s2
    80004ee4:	fffff097          	auipc	ra,0xfffff
    80004ee8:	7f4080e7          	jalr	2036(ra) # 800046d8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004eec:	00003517          	auipc	a0,0x3
    80004ef0:	47c50513          	addi	a0,a0,1148 # 80008368 <CONSOLE_STATUS+0x358>
    80004ef4:	fffff097          	auipc	ra,0xfffff
    80004ef8:	64c080e7          	jalr	1612(ra) # 80004540 <_Z11printStringPKc>
    80004efc:	00000613          	li	a2,0
    80004f00:	00a00593          	li	a1,10
    80004f04:	00048513          	mv	a0,s1
    80004f08:	fffff097          	auipc	ra,0xfffff
    80004f0c:	7d0080e7          	jalr	2000(ra) # 800046d8 <_Z8printIntiii>
    printString(".\n");
    80004f10:	00003517          	auipc	a0,0x3
    80004f14:	47050513          	addi	a0,a0,1136 # 80008380 <CONSOLE_STATUS+0x370>
    80004f18:	fffff097          	auipc	ra,0xfffff
    80004f1c:	628080e7          	jalr	1576(ra) # 80004540 <_Z11printStringPKc>
    if(threadNum > n) {
    80004f20:	0324c463          	blt	s1,s2,80004f48 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004f24:	03205c63          	blez	s2,80004f5c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004f28:	03800513          	li	a0,56
    80004f2c:	ffffe097          	auipc	ra,0xffffe
    80004f30:	494080e7          	jalr	1172(ra) # 800033c0 <_Znwm>
    80004f34:	00050a93          	mv	s5,a0
    80004f38:	00048593          	mv	a1,s1
    80004f3c:	00000097          	auipc	ra,0x0
    80004f40:	8b0080e7          	jalr	-1872(ra) # 800047ec <_ZN9BufferCPPC1Ei>
    80004f44:	0300006f          	j	80004f74 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004f48:	00003517          	auipc	a0,0x3
    80004f4c:	44050513          	addi	a0,a0,1088 # 80008388 <CONSOLE_STATUS+0x378>
    80004f50:	fffff097          	auipc	ra,0xfffff
    80004f54:	5f0080e7          	jalr	1520(ra) # 80004540 <_Z11printStringPKc>
        return;
    80004f58:	0140006f          	j	80004f6c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004f5c:	00003517          	auipc	a0,0x3
    80004f60:	46c50513          	addi	a0,a0,1132 # 800083c8 <CONSOLE_STATUS+0x3b8>
    80004f64:	fffff097          	auipc	ra,0xfffff
    80004f68:	5dc080e7          	jalr	1500(ra) # 80004540 <_Z11printStringPKc>
        return;
    80004f6c:	000b8113          	mv	sp,s7
    80004f70:	2400006f          	j	800051b0 <_Z29producerConsumer_CPP_Sync_APIv+0x384>
    waitForAll = new Semaphore(0);
    80004f74:	01000513          	li	a0,16
    80004f78:	ffffe097          	auipc	ra,0xffffe
    80004f7c:	448080e7          	jalr	1096(ra) # 800033c0 <_Znwm>
    80004f80:	00050493          	mv	s1,a0
    80004f84:	00000593          	li	a1,0
    80004f88:	ffffe097          	auipc	ra,0xffffe
    80004f8c:	684080e7          	jalr	1668(ra) # 8000360c <_ZN9SemaphoreC1Ej>
    80004f90:	00009717          	auipc	a4,0x9
    80004f94:	66070713          	addi	a4,a4,1632 # 8000e5f0 <threadEnd>
    80004f98:	00973423          	sd	s1,8(a4)
    Thread* threads[threadNum];
    80004f9c:	00391793          	slli	a5,s2,0x3
    80004fa0:	00f78793          	addi	a5,a5,15
    80004fa4:	ff07f793          	andi	a5,a5,-16
    80004fa8:	40f10133          	sub	sp,sp,a5
    80004fac:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004fb0:	0019069b          	addiw	a3,s2,1
    80004fb4:	00169793          	slli	a5,a3,0x1
    80004fb8:	00d787b3          	add	a5,a5,a3
    80004fbc:	00379793          	slli	a5,a5,0x3
    80004fc0:	00f78793          	addi	a5,a5,15
    80004fc4:	ff07f793          	andi	a5,a5,-16
    80004fc8:	40f10133          	sub	sp,sp,a5
    80004fcc:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004fd0:	00191493          	slli	s1,s2,0x1
    80004fd4:	012487b3          	add	a5,s1,s2
    80004fd8:	00379793          	slli	a5,a5,0x3
    80004fdc:	00fa07b3          	add	a5,s4,a5
    80004fe0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004fe4:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004fe8:	00873703          	ld	a4,8(a4)
    80004fec:	00e7b823          	sd	a4,16(a5)
    consumerThread = new Consumer(data+threadNum);
    80004ff0:	01800513          	li	a0,24
    80004ff4:	ffffe097          	auipc	ra,0xffffe
    80004ff8:	3cc080e7          	jalr	972(ra) # 800033c0 <_Znwm>
    80004ffc:	00050b13          	mv	s6,a0
    80005000:	012484b3          	add	s1,s1,s2
    80005004:	00349493          	slli	s1,s1,0x3
    80005008:	009a04b3          	add	s1,s4,s1
    Consumer(thread_data* _td):Thread(), td(_td) {}
    8000500c:	ffffe097          	auipc	ra,0xffffe
    80005010:	584080e7          	jalr	1412(ra) # 80003590 <_ZN6ThreadC1Ev>
    80005014:	00005797          	auipc	a5,0x5
    80005018:	41478793          	addi	a5,a5,1044 # 8000a428 <_ZTV8Consumer+0x10>
    8000501c:	00fb3023          	sd	a5,0(s6)
    80005020:	009b3823          	sd	s1,16(s6)
    consumerThread->start();
    80005024:	000b0513          	mv	a0,s6
    80005028:	ffffe097          	auipc	ra,0xffffe
    8000502c:	468080e7          	jalr	1128(ra) # 80003490 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005030:	00000493          	li	s1,0
    80005034:	0380006f          	j	8000506c <_Z29producerConsumer_CPP_Sync_APIv+0x240>
    Producer(thread_data* _td):Thread(), td(_td) {}
    80005038:	00005797          	auipc	a5,0x5
    8000503c:	3c878793          	addi	a5,a5,968 # 8000a400 <_ZTV8Producer+0x10>
    80005040:	00fcb023          	sd	a5,0(s9)
    80005044:	018cb823          	sd	s8,16(s9)
            threads[i] = new Producer(data+i);
    80005048:	00349793          	slli	a5,s1,0x3
    8000504c:	00f987b3          	add	a5,s3,a5
    80005050:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005054:	00349793          	slli	a5,s1,0x3
    80005058:	00f987b3          	add	a5,s3,a5
    8000505c:	0007b503          	ld	a0,0(a5)
    80005060:	ffffe097          	auipc	ra,0xffffe
    80005064:	430080e7          	jalr	1072(ra) # 80003490 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005068:	0014849b          	addiw	s1,s1,1
    8000506c:	0b24d063          	bge	s1,s2,8000510c <_Z29producerConsumer_CPP_Sync_APIv+0x2e0>
        data[i].id = i;
    80005070:	00149793          	slli	a5,s1,0x1
    80005074:	009787b3          	add	a5,a5,s1
    80005078:	00379793          	slli	a5,a5,0x3
    8000507c:	00fa07b3          	add	a5,s4,a5
    80005080:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005084:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005088:	00009717          	auipc	a4,0x9
    8000508c:	57073703          	ld	a4,1392(a4) # 8000e5f8 <waitForAll>
    80005090:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005094:	02905863          	blez	s1,800050c4 <_Z29producerConsumer_CPP_Sync_APIv+0x298>
            threads[i] = new Producer(data+i);
    80005098:	01800513          	li	a0,24
    8000509c:	ffffe097          	auipc	ra,0xffffe
    800050a0:	324080e7          	jalr	804(ra) # 800033c0 <_Znwm>
    800050a4:	00050c93          	mv	s9,a0
    800050a8:	00149c13          	slli	s8,s1,0x1
    800050ac:	009c0c33          	add	s8,s8,s1
    800050b0:	003c1c13          	slli	s8,s8,0x3
    800050b4:	018a0c33          	add	s8,s4,s8
    Producer(thread_data* _td):Thread(), td(_td) {}
    800050b8:	ffffe097          	auipc	ra,0xffffe
    800050bc:	4d8080e7          	jalr	1240(ra) # 80003590 <_ZN6ThreadC1Ev>
    800050c0:	f79ff06f          	j	80005038 <_Z29producerConsumer_CPP_Sync_APIv+0x20c>
            threads[i] = new ProducerKeyboard(data+i);
    800050c4:	01800513          	li	a0,24
    800050c8:	ffffe097          	auipc	ra,0xffffe
    800050cc:	2f8080e7          	jalr	760(ra) # 800033c0 <_Znwm>
    800050d0:	00050c93          	mv	s9,a0
    800050d4:	00149c13          	slli	s8,s1,0x1
    800050d8:	009c0c33          	add	s8,s8,s1
    800050dc:	003c1c13          	slli	s8,s8,0x3
    800050e0:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800050e4:	ffffe097          	auipc	ra,0xffffe
    800050e8:	4ac080e7          	jalr	1196(ra) # 80003590 <_ZN6ThreadC1Ev>
    800050ec:	00005797          	auipc	a5,0x5
    800050f0:	2ec78793          	addi	a5,a5,748 # 8000a3d8 <_ZTV16ProducerKeyboard+0x10>
    800050f4:	00fcb023          	sd	a5,0(s9)
    800050f8:	018cb823          	sd	s8,16(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800050fc:	00349793          	slli	a5,s1,0x3
    80005100:	00f987b3          	add	a5,s3,a5
    80005104:	0197b023          	sd	s9,0(a5)
    80005108:	f4dff06f          	j	80005054 <_Z29producerConsumer_CPP_Sync_APIv+0x228>
    Thread::dispatch();
    8000510c:	ffffe097          	auipc	ra,0xffffe
    80005110:	3bc080e7          	jalr	956(ra) # 800034c8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005114:	00000493          	li	s1,0
    80005118:	00994e63          	blt	s2,s1,80005134 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
        waitForAll->wait();
    8000511c:	00009517          	auipc	a0,0x9
    80005120:	4dc53503          	ld	a0,1244(a0) # 8000e5f8 <waitForAll>
    80005124:	ffffe097          	auipc	ra,0xffffe
    80005128:	4b0080e7          	jalr	1200(ra) # 800035d4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000512c:	0014849b          	addiw	s1,s1,1
    80005130:	fe9ff06f          	j	80005118 <_Z29producerConsumer_CPP_Sync_APIv+0x2ec>
    for (int i = 0; i < threadNum; i++) {
    80005134:	00000493          	li	s1,0
    80005138:	0080006f          	j	80005140 <_Z29producerConsumer_CPP_Sync_APIv+0x314>
    8000513c:	0014849b          	addiw	s1,s1,1
    80005140:	0324d263          	bge	s1,s2,80005164 <_Z29producerConsumer_CPP_Sync_APIv+0x338>
        delete threads[i];
    80005144:	00349793          	slli	a5,s1,0x3
    80005148:	00f987b3          	add	a5,s3,a5
    8000514c:	0007b503          	ld	a0,0(a5)
    80005150:	fe0506e3          	beqz	a0,8000513c <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    80005154:	00053783          	ld	a5,0(a0)
    80005158:	0087b783          	ld	a5,8(a5)
    8000515c:	000780e7          	jalr	a5
    80005160:	fddff06f          	j	8000513c <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    delete consumerThread;
    80005164:	000b0a63          	beqz	s6,80005178 <_Z29producerConsumer_CPP_Sync_APIv+0x34c>
    80005168:	000b3783          	ld	a5,0(s6)
    8000516c:	0087b783          	ld	a5,8(a5)
    80005170:	000b0513          	mv	a0,s6
    80005174:	000780e7          	jalr	a5
    delete waitForAll;
    80005178:	00009517          	auipc	a0,0x9
    8000517c:	48053503          	ld	a0,1152(a0) # 8000e5f8 <waitForAll>
    80005180:	00050863          	beqz	a0,80005190 <_Z29producerConsumer_CPP_Sync_APIv+0x364>
    80005184:	00053783          	ld	a5,0(a0)
    80005188:	0087b783          	ld	a5,8(a5)
    8000518c:	000780e7          	jalr	a5
    delete buffer;
    80005190:	000a8e63          	beqz	s5,800051ac <_Z29producerConsumer_CPP_Sync_APIv+0x380>
    80005194:	000a8513          	mv	a0,s5
    80005198:	00000097          	auipc	ra,0x0
    8000519c:	94c080e7          	jalr	-1716(ra) # 80004ae4 <_ZN9BufferCPPD1Ev>
    800051a0:	000a8513          	mv	a0,s5
    800051a4:	ffffe097          	auipc	ra,0xffffe
    800051a8:	244080e7          	jalr	580(ra) # 800033e8 <_ZdlPv>
    800051ac:	000b8113          	mv	sp,s7

}
    800051b0:	f8040113          	addi	sp,s0,-128
    800051b4:	07813083          	ld	ra,120(sp)
    800051b8:	07013403          	ld	s0,112(sp)
    800051bc:	06813483          	ld	s1,104(sp)
    800051c0:	06013903          	ld	s2,96(sp)
    800051c4:	05813983          	ld	s3,88(sp)
    800051c8:	05013a03          	ld	s4,80(sp)
    800051cc:	04813a83          	ld	s5,72(sp)
    800051d0:	04013b03          	ld	s6,64(sp)
    800051d4:	03813b83          	ld	s7,56(sp)
    800051d8:	03013c03          	ld	s8,48(sp)
    800051dc:	02813c83          	ld	s9,40(sp)
    800051e0:	08010113          	addi	sp,sp,128
    800051e4:	00008067          	ret
    800051e8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800051ec:	000a8513          	mv	a0,s5
    800051f0:	ffffe097          	auipc	ra,0xffffe
    800051f4:	1f8080e7          	jalr	504(ra) # 800033e8 <_ZdlPv>
    800051f8:	00048513          	mv	a0,s1
    800051fc:	0000a097          	auipc	ra,0xa
    80005200:	4cc080e7          	jalr	1228(ra) # 8000f6c8 <_Unwind_Resume>
    80005204:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005208:	00048513          	mv	a0,s1
    8000520c:	ffffe097          	auipc	ra,0xffffe
    80005210:	1dc080e7          	jalr	476(ra) # 800033e8 <_ZdlPv>
    80005214:	00090513          	mv	a0,s2
    80005218:	0000a097          	auipc	ra,0xa
    8000521c:	4b0080e7          	jalr	1200(ra) # 8000f6c8 <_Unwind_Resume>
    80005220:	00050493          	mv	s1,a0
    consumerThread = new Consumer(data+threadNum);
    80005224:	000b0513          	mv	a0,s6
    80005228:	ffffe097          	auipc	ra,0xffffe
    8000522c:	1c0080e7          	jalr	448(ra) # 800033e8 <_ZdlPv>
    80005230:	00048513          	mv	a0,s1
    80005234:	0000a097          	auipc	ra,0xa
    80005238:	494080e7          	jalr	1172(ra) # 8000f6c8 <_Unwind_Resume>
    8000523c:	00050493          	mv	s1,a0
            threads[i] = new Producer(data+i);
    80005240:	000c8513          	mv	a0,s9
    80005244:	ffffe097          	auipc	ra,0xffffe
    80005248:	1a4080e7          	jalr	420(ra) # 800033e8 <_ZdlPv>
    8000524c:	00048513          	mv	a0,s1
    80005250:	0000a097          	auipc	ra,0xa
    80005254:	478080e7          	jalr	1144(ra) # 8000f6c8 <_Unwind_Resume>
    80005258:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    8000525c:	000c8513          	mv	a0,s9
    80005260:	ffffe097          	auipc	ra,0xffffe
    80005264:	188080e7          	jalr	392(ra) # 800033e8 <_ZdlPv>
    80005268:	00048513          	mv	a0,s1
    8000526c:	0000a097          	auipc	ra,0xa
    80005270:	45c080e7          	jalr	1116(ra) # 8000f6c8 <_Unwind_Resume>

0000000080005274 <_Z8userMainv>:
//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta


void userMain()
{
    80005274:	ff010113          	addi	sp,sp,-16
    80005278:	00113423          	sd	ra,8(sp)
    8000527c:	00813023          	sd	s0,0(sp)
    80005280:	01010413          	addi	s0,sp,16
    //__asm__ volatile("csrr a0, sstatus");
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta
    80005284:	00000097          	auipc	ra,0x0
    80005288:	ba8080e7          	jalr	-1112(ra) # 80004e2c <_Z29producerConsumer_CPP_Sync_APIv>

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    8000528c:	00813083          	ld	ra,8(sp)
    80005290:	00013403          	ld	s0,0(sp)
    80005294:	01010113          	addi	sp,sp,16
    80005298:	00008067          	ret

000000008000529c <_ZN8ConsumerD1Ev>:
class Consumer:public Thread {
    8000529c:	ff010113          	addi	sp,sp,-16
    800052a0:	00113423          	sd	ra,8(sp)
    800052a4:	00813023          	sd	s0,0(sp)
    800052a8:	01010413          	addi	s0,sp,16
    800052ac:	00005797          	auipc	a5,0x5
    800052b0:	17c78793          	addi	a5,a5,380 # 8000a428 <_ZTV8Consumer+0x10>
    800052b4:	00f53023          	sd	a5,0(a0)
    800052b8:	ffffe097          	auipc	ra,0xffffe
    800052bc:	098080e7          	jalr	152(ra) # 80003350 <_ZN6ThreadD1Ev>
    800052c0:	00813083          	ld	ra,8(sp)
    800052c4:	00013403          	ld	s0,0(sp)
    800052c8:	01010113          	addi	sp,sp,16
    800052cc:	00008067          	ret

00000000800052d0 <_ZN8ConsumerD0Ev>:
    800052d0:	fe010113          	addi	sp,sp,-32
    800052d4:	00113c23          	sd	ra,24(sp)
    800052d8:	00813823          	sd	s0,16(sp)
    800052dc:	00913423          	sd	s1,8(sp)
    800052e0:	02010413          	addi	s0,sp,32
    800052e4:	00050493          	mv	s1,a0
    800052e8:	00005797          	auipc	a5,0x5
    800052ec:	14078793          	addi	a5,a5,320 # 8000a428 <_ZTV8Consumer+0x10>
    800052f0:	00f53023          	sd	a5,0(a0)
    800052f4:	ffffe097          	auipc	ra,0xffffe
    800052f8:	05c080e7          	jalr	92(ra) # 80003350 <_ZN6ThreadD1Ev>
    800052fc:	00048513          	mv	a0,s1
    80005300:	ffffe097          	auipc	ra,0xffffe
    80005304:	0e8080e7          	jalr	232(ra) # 800033e8 <_ZdlPv>
    80005308:	01813083          	ld	ra,24(sp)
    8000530c:	01013403          	ld	s0,16(sp)
    80005310:	00813483          	ld	s1,8(sp)
    80005314:	02010113          	addi	sp,sp,32
    80005318:	00008067          	ret

000000008000531c <_ZN8ProducerD1Ev>:
class Producer:public Thread {
    8000531c:	ff010113          	addi	sp,sp,-16
    80005320:	00113423          	sd	ra,8(sp)
    80005324:	00813023          	sd	s0,0(sp)
    80005328:	01010413          	addi	s0,sp,16
    8000532c:	00005797          	auipc	a5,0x5
    80005330:	0d478793          	addi	a5,a5,212 # 8000a400 <_ZTV8Producer+0x10>
    80005334:	00f53023          	sd	a5,0(a0)
    80005338:	ffffe097          	auipc	ra,0xffffe
    8000533c:	018080e7          	jalr	24(ra) # 80003350 <_ZN6ThreadD1Ev>
    80005340:	00813083          	ld	ra,8(sp)
    80005344:	00013403          	ld	s0,0(sp)
    80005348:	01010113          	addi	sp,sp,16
    8000534c:	00008067          	ret

0000000080005350 <_ZN8ProducerD0Ev>:
    80005350:	fe010113          	addi	sp,sp,-32
    80005354:	00113c23          	sd	ra,24(sp)
    80005358:	00813823          	sd	s0,16(sp)
    8000535c:	00913423          	sd	s1,8(sp)
    80005360:	02010413          	addi	s0,sp,32
    80005364:	00050493          	mv	s1,a0
    80005368:	00005797          	auipc	a5,0x5
    8000536c:	09878793          	addi	a5,a5,152 # 8000a400 <_ZTV8Producer+0x10>
    80005370:	00f53023          	sd	a5,0(a0)
    80005374:	ffffe097          	auipc	ra,0xffffe
    80005378:	fdc080e7          	jalr	-36(ra) # 80003350 <_ZN6ThreadD1Ev>
    8000537c:	00048513          	mv	a0,s1
    80005380:	ffffe097          	auipc	ra,0xffffe
    80005384:	068080e7          	jalr	104(ra) # 800033e8 <_ZdlPv>
    80005388:	01813083          	ld	ra,24(sp)
    8000538c:	01013403          	ld	s0,16(sp)
    80005390:	00813483          	ld	s1,8(sp)
    80005394:	02010113          	addi	sp,sp,32
    80005398:	00008067          	ret

000000008000539c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    8000539c:	ff010113          	addi	sp,sp,-16
    800053a0:	00113423          	sd	ra,8(sp)
    800053a4:	00813023          	sd	s0,0(sp)
    800053a8:	01010413          	addi	s0,sp,16
    800053ac:	00005797          	auipc	a5,0x5
    800053b0:	02c78793          	addi	a5,a5,44 # 8000a3d8 <_ZTV16ProducerKeyboard+0x10>
    800053b4:	00f53023          	sd	a5,0(a0)
    800053b8:	ffffe097          	auipc	ra,0xffffe
    800053bc:	f98080e7          	jalr	-104(ra) # 80003350 <_ZN6ThreadD1Ev>
    800053c0:	00813083          	ld	ra,8(sp)
    800053c4:	00013403          	ld	s0,0(sp)
    800053c8:	01010113          	addi	sp,sp,16
    800053cc:	00008067          	ret

00000000800053d0 <_ZN16ProducerKeyboardD0Ev>:
    800053d0:	fe010113          	addi	sp,sp,-32
    800053d4:	00113c23          	sd	ra,24(sp)
    800053d8:	00813823          	sd	s0,16(sp)
    800053dc:	00913423          	sd	s1,8(sp)
    800053e0:	02010413          	addi	s0,sp,32
    800053e4:	00050493          	mv	s1,a0
    800053e8:	00005797          	auipc	a5,0x5
    800053ec:	ff078793          	addi	a5,a5,-16 # 8000a3d8 <_ZTV16ProducerKeyboard+0x10>
    800053f0:	00f53023          	sd	a5,0(a0)
    800053f4:	ffffe097          	auipc	ra,0xffffe
    800053f8:	f5c080e7          	jalr	-164(ra) # 80003350 <_ZN6ThreadD1Ev>
    800053fc:	00048513          	mv	a0,s1
    80005400:	ffffe097          	auipc	ra,0xffffe
    80005404:	fe8080e7          	jalr	-24(ra) # 800033e8 <_ZdlPv>
    80005408:	01813083          	ld	ra,24(sp)
    8000540c:	01013403          	ld	s0,16(sp)
    80005410:	00813483          	ld	s1,8(sp)
    80005414:	02010113          	addi	sp,sp,32
    80005418:	00008067          	ret

000000008000541c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8000541c:	ff010113          	addi	sp,sp,-16
    80005420:	00113423          	sd	ra,8(sp)
    80005424:	00813023          	sd	s0,0(sp)
    80005428:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000542c:	01053583          	ld	a1,16(a0)
    80005430:	fffff097          	auipc	ra,0xfffff
    80005434:	7b4080e7          	jalr	1972(ra) # 80004be4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005438:	00813083          	ld	ra,8(sp)
    8000543c:	00013403          	ld	s0,0(sp)
    80005440:	01010113          	addi	sp,sp,16
    80005444:	00008067          	ret

0000000080005448 <_ZN8Producer3runEv>:
    void run() override {
    80005448:	ff010113          	addi	sp,sp,-16
    8000544c:	00113423          	sd	ra,8(sp)
    80005450:	00813023          	sd	s0,0(sp)
    80005454:	01010413          	addi	s0,sp,16
        producer(td);
    80005458:	01053583          	ld	a1,16(a0)
    8000545c:	00000097          	auipc	ra,0x0
    80005460:	848080e7          	jalr	-1976(ra) # 80004ca4 <_ZN8Producer8producerEPv>
    }
    80005464:	00813083          	ld	ra,8(sp)
    80005468:	00013403          	ld	s0,0(sp)
    8000546c:	01010113          	addi	sp,sp,16
    80005470:	00008067          	ret

0000000080005474 <_ZN8Consumer3runEv>:
    void run() override {
    80005474:	ff010113          	addi	sp,sp,-16
    80005478:	00113423          	sd	ra,8(sp)
    8000547c:	00813023          	sd	s0,0(sp)
    80005480:	01010413          	addi	s0,sp,16
        consumer(td);
    80005484:	01053583          	ld	a1,16(a0)
    80005488:	00000097          	auipc	ra,0x0
    8000548c:	8b0080e7          	jalr	-1872(ra) # 80004d38 <_ZN8Consumer8consumerEPv>
    }
    80005490:	00813083          	ld	ra,8(sp)
    80005494:	00013403          	ld	s0,0(sp)
    80005498:	01010113          	addi	sp,sp,16
    8000549c:	00008067          	ret

00000000800054a0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800054a0:	fe010113          	addi	sp,sp,-32
    800054a4:	00113c23          	sd	ra,24(sp)
    800054a8:	00813823          	sd	s0,16(sp)
    800054ac:	00913423          	sd	s1,8(sp)
    800054b0:	01213023          	sd	s2,0(sp)
    800054b4:	02010413          	addi	s0,sp,32
    800054b8:	00050493          	mv	s1,a0
    800054bc:	00058913          	mv	s2,a1
    800054c0:	0015879b          	addiw	a5,a1,1
    800054c4:	0007851b          	sext.w	a0,a5
    800054c8:	00f4a023          	sw	a5,0(s1)
    800054cc:	0004a823          	sw	zero,16(s1)
    800054d0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800054d4:	00251513          	slli	a0,a0,0x2
    800054d8:	ffffc097          	auipc	ra,0xffffc
    800054dc:	d80080e7          	jalr	-640(ra) # 80001258 <mem_alloc>
    800054e0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800054e4:	00000593          	li	a1,0
    800054e8:	02048513          	addi	a0,s1,32
    800054ec:	ffffc097          	auipc	ra,0xffffc
    800054f0:	e90080e7          	jalr	-368(ra) # 8000137c <sem_open>
    sem_open(&spaceAvailable, _cap);
    800054f4:	00090593          	mv	a1,s2
    800054f8:	01848513          	addi	a0,s1,24
    800054fc:	ffffc097          	auipc	ra,0xffffc
    80005500:	e80080e7          	jalr	-384(ra) # 8000137c <sem_open>
    sem_open(&mutexHead, 1);
    80005504:	00100593          	li	a1,1
    80005508:	02848513          	addi	a0,s1,40
    8000550c:	ffffc097          	auipc	ra,0xffffc
    80005510:	e70080e7          	jalr	-400(ra) # 8000137c <sem_open>
    sem_open(&mutexTail, 1);
    80005514:	00100593          	li	a1,1
    80005518:	03048513          	addi	a0,s1,48
    8000551c:	ffffc097          	auipc	ra,0xffffc
    80005520:	e60080e7          	jalr	-416(ra) # 8000137c <sem_open>
}
    80005524:	01813083          	ld	ra,24(sp)
    80005528:	01013403          	ld	s0,16(sp)
    8000552c:	00813483          	ld	s1,8(sp)
    80005530:	00013903          	ld	s2,0(sp)
    80005534:	02010113          	addi	sp,sp,32
    80005538:	00008067          	ret

000000008000553c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000553c:	fe010113          	addi	sp,sp,-32
    80005540:	00113c23          	sd	ra,24(sp)
    80005544:	00813823          	sd	s0,16(sp)
    80005548:	00913423          	sd	s1,8(sp)
    8000554c:	01213023          	sd	s2,0(sp)
    80005550:	02010413          	addi	s0,sp,32
    80005554:	00050493          	mv	s1,a0
    80005558:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000555c:	01853503          	ld	a0,24(a0)
    80005560:	ffffc097          	auipc	ra,0xffffc
    80005564:	e80080e7          	jalr	-384(ra) # 800013e0 <sem_wait>

    sem_wait(mutexTail);
    80005568:	0304b503          	ld	a0,48(s1)
    8000556c:	ffffc097          	auipc	ra,0xffffc
    80005570:	e74080e7          	jalr	-396(ra) # 800013e0 <sem_wait>
    buffer[tail] = val;
    80005574:	0084b783          	ld	a5,8(s1)
    80005578:	0144a703          	lw	a4,20(s1)
    8000557c:	00271713          	slli	a4,a4,0x2
    80005580:	00e787b3          	add	a5,a5,a4
    80005584:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005588:	0144a783          	lw	a5,20(s1)
    8000558c:	0017879b          	addiw	a5,a5,1
    80005590:	0004a703          	lw	a4,0(s1)
    80005594:	02e7e7bb          	remw	a5,a5,a4
    80005598:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000559c:	0304b503          	ld	a0,48(s1)
    800055a0:	ffffc097          	auipc	ra,0xffffc
    800055a4:	e6c080e7          	jalr	-404(ra) # 8000140c <sem_signal>

    sem_signal(itemAvailable);
    800055a8:	0204b503          	ld	a0,32(s1)
    800055ac:	ffffc097          	auipc	ra,0xffffc
    800055b0:	e60080e7          	jalr	-416(ra) # 8000140c <sem_signal>

}
    800055b4:	01813083          	ld	ra,24(sp)
    800055b8:	01013403          	ld	s0,16(sp)
    800055bc:	00813483          	ld	s1,8(sp)
    800055c0:	00013903          	ld	s2,0(sp)
    800055c4:	02010113          	addi	sp,sp,32
    800055c8:	00008067          	ret

00000000800055cc <_ZN6Buffer3getEv>:

int Buffer::get() {
    800055cc:	fe010113          	addi	sp,sp,-32
    800055d0:	00113c23          	sd	ra,24(sp)
    800055d4:	00813823          	sd	s0,16(sp)
    800055d8:	00913423          	sd	s1,8(sp)
    800055dc:	01213023          	sd	s2,0(sp)
    800055e0:	02010413          	addi	s0,sp,32
    800055e4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800055e8:	02053503          	ld	a0,32(a0)
    800055ec:	ffffc097          	auipc	ra,0xffffc
    800055f0:	df4080e7          	jalr	-524(ra) # 800013e0 <sem_wait>

    sem_wait(mutexHead);
    800055f4:	0284b503          	ld	a0,40(s1)
    800055f8:	ffffc097          	auipc	ra,0xffffc
    800055fc:	de8080e7          	jalr	-536(ra) # 800013e0 <sem_wait>

    int ret = buffer[head];
    80005600:	0084b703          	ld	a4,8(s1)
    80005604:	0104a783          	lw	a5,16(s1)
    80005608:	00279693          	slli	a3,a5,0x2
    8000560c:	00d70733          	add	a4,a4,a3
    80005610:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005614:	0017879b          	addiw	a5,a5,1
    80005618:	0004a703          	lw	a4,0(s1)
    8000561c:	02e7e7bb          	remw	a5,a5,a4
    80005620:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005624:	0284b503          	ld	a0,40(s1)
    80005628:	ffffc097          	auipc	ra,0xffffc
    8000562c:	de4080e7          	jalr	-540(ra) # 8000140c <sem_signal>

    sem_signal(spaceAvailable);
    80005630:	0184b503          	ld	a0,24(s1)
    80005634:	ffffc097          	auipc	ra,0xffffc
    80005638:	dd8080e7          	jalr	-552(ra) # 8000140c <sem_signal>

    return ret;
}
    8000563c:	00090513          	mv	a0,s2
    80005640:	01813083          	ld	ra,24(sp)
    80005644:	01013403          	ld	s0,16(sp)
    80005648:	00813483          	ld	s1,8(sp)
    8000564c:	00013903          	ld	s2,0(sp)
    80005650:	02010113          	addi	sp,sp,32
    80005654:	00008067          	ret

0000000080005658 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005658:	fe010113          	addi	sp,sp,-32
    8000565c:	00113c23          	sd	ra,24(sp)
    80005660:	00813823          	sd	s0,16(sp)
    80005664:	00913423          	sd	s1,8(sp)
    80005668:	01213023          	sd	s2,0(sp)
    8000566c:	02010413          	addi	s0,sp,32
    80005670:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005674:	02853503          	ld	a0,40(a0)
    80005678:	ffffc097          	auipc	ra,0xffffc
    8000567c:	d68080e7          	jalr	-664(ra) # 800013e0 <sem_wait>
    sem_wait(mutexTail);
    80005680:	0304b503          	ld	a0,48(s1)
    80005684:	ffffc097          	auipc	ra,0xffffc
    80005688:	d5c080e7          	jalr	-676(ra) # 800013e0 <sem_wait>

    if (tail >= head) {
    8000568c:	0144a783          	lw	a5,20(s1)
    80005690:	0104a903          	lw	s2,16(s1)
    80005694:	0327ce63          	blt	a5,s2,800056d0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005698:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000569c:	0304b503          	ld	a0,48(s1)
    800056a0:	ffffc097          	auipc	ra,0xffffc
    800056a4:	d6c080e7          	jalr	-660(ra) # 8000140c <sem_signal>
    sem_signal(mutexHead);
    800056a8:	0284b503          	ld	a0,40(s1)
    800056ac:	ffffc097          	auipc	ra,0xffffc
    800056b0:	d60080e7          	jalr	-672(ra) # 8000140c <sem_signal>

    return ret;
    800056b4:	00090513          	mv	a0,s2
    800056b8:	01813083          	ld	ra,24(sp)
    800056bc:	01013403          	ld	s0,16(sp)
    800056c0:	00813483          	ld	s1,8(sp)
    800056c4:	00013903          	ld	s2,0(sp)
    800056c8:	02010113          	addi	sp,sp,32
    800056cc:	00008067          	ret
        ret = cap - head + tail;
    800056d0:	0004a703          	lw	a4,0(s1)
    800056d4:	4127093b          	subw	s2,a4,s2
    800056d8:	00f9093b          	addw	s2,s2,a5
    800056dc:	fc1ff06f          	j	8000569c <_ZN6Buffer6getCntEv+0x44>

00000000800056e0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800056e0:	fe010113          	addi	sp,sp,-32
    800056e4:	00113c23          	sd	ra,24(sp)
    800056e8:	00813823          	sd	s0,16(sp)
    800056ec:	00913423          	sd	s1,8(sp)
    800056f0:	02010413          	addi	s0,sp,32
    800056f4:	00050493          	mv	s1,a0
    putc('\n');
    800056f8:	00a00513          	li	a0,10
    800056fc:	ffffc097          	auipc	ra,0xffffc
    80005700:	e3c080e7          	jalr	-452(ra) # 80001538 <putc>
    printString("Buffer deleted!\n");
    80005704:	00003517          	auipc	a0,0x3
    80005708:	bf450513          	addi	a0,a0,-1036 # 800082f8 <CONSOLE_STATUS+0x2e8>
    8000570c:	fffff097          	auipc	ra,0xfffff
    80005710:	e34080e7          	jalr	-460(ra) # 80004540 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005714:	00048513          	mv	a0,s1
    80005718:	00000097          	auipc	ra,0x0
    8000571c:	f40080e7          	jalr	-192(ra) # 80005658 <_ZN6Buffer6getCntEv>
    80005720:	02a05c63          	blez	a0,80005758 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005724:	0084b783          	ld	a5,8(s1)
    80005728:	0104a703          	lw	a4,16(s1)
    8000572c:	00271713          	slli	a4,a4,0x2
    80005730:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005734:	0007c503          	lbu	a0,0(a5)
    80005738:	ffffc097          	auipc	ra,0xffffc
    8000573c:	e00080e7          	jalr	-512(ra) # 80001538 <putc>
        head = (head + 1) % cap;
    80005740:	0104a783          	lw	a5,16(s1)
    80005744:	0017879b          	addiw	a5,a5,1
    80005748:	0004a703          	lw	a4,0(s1)
    8000574c:	02e7e7bb          	remw	a5,a5,a4
    80005750:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005754:	fc1ff06f          	j	80005714 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005758:	02100513          	li	a0,33
    8000575c:	ffffc097          	auipc	ra,0xffffc
    80005760:	ddc080e7          	jalr	-548(ra) # 80001538 <putc>
    putc('\n');
    80005764:	00a00513          	li	a0,10
    80005768:	ffffc097          	auipc	ra,0xffffc
    8000576c:	dd0080e7          	jalr	-560(ra) # 80001538 <putc>
    mem_free(buffer);
    80005770:	0084b503          	ld	a0,8(s1)
    80005774:	ffffc097          	auipc	ra,0xffffc
    80005778:	b14080e7          	jalr	-1260(ra) # 80001288 <mem_free>
    sem_close(itemAvailable);
    8000577c:	0204b503          	ld	a0,32(s1)
    80005780:	ffffc097          	auipc	ra,0xffffc
    80005784:	c34080e7          	jalr	-972(ra) # 800013b4 <sem_close>
    sem_close(spaceAvailable);
    80005788:	0184b503          	ld	a0,24(s1)
    8000578c:	ffffc097          	auipc	ra,0xffffc
    80005790:	c28080e7          	jalr	-984(ra) # 800013b4 <sem_close>
    sem_close(mutexTail);
    80005794:	0304b503          	ld	a0,48(s1)
    80005798:	ffffc097          	auipc	ra,0xffffc
    8000579c:	c1c080e7          	jalr	-996(ra) # 800013b4 <sem_close>
    sem_close(mutexHead);
    800057a0:	0284b503          	ld	a0,40(s1)
    800057a4:	ffffc097          	auipc	ra,0xffffc
    800057a8:	c10080e7          	jalr	-1008(ra) # 800013b4 <sem_close>
}
    800057ac:	01813083          	ld	ra,24(sp)
    800057b0:	01013403          	ld	s0,16(sp)
    800057b4:	00813483          	ld	s1,8(sp)
    800057b8:	02010113          	addi	sp,sp,32
    800057bc:	00008067          	ret

00000000800057c0 <start>:
    800057c0:	ff010113          	addi	sp,sp,-16
    800057c4:	00813423          	sd	s0,8(sp)
    800057c8:	01010413          	addi	s0,sp,16
    800057cc:	300027f3          	csrr	a5,mstatus
    800057d0:	ffffe737          	lui	a4,0xffffe
    800057d4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffeef9f>
    800057d8:	00e7f7b3          	and	a5,a5,a4
    800057dc:	00001737          	lui	a4,0x1
    800057e0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800057e4:	00e7e7b3          	or	a5,a5,a4
    800057e8:	30079073          	csrw	mstatus,a5
    800057ec:	00000797          	auipc	a5,0x0
    800057f0:	16078793          	addi	a5,a5,352 # 8000594c <system_main>
    800057f4:	34179073          	csrw	mepc,a5
    800057f8:	00000793          	li	a5,0
    800057fc:	18079073          	csrw	satp,a5
    80005800:	000107b7          	lui	a5,0x10
    80005804:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005808:	30279073          	csrw	medeleg,a5
    8000580c:	30379073          	csrw	mideleg,a5
    80005810:	104027f3          	csrr	a5,sie
    80005814:	2227e793          	ori	a5,a5,546
    80005818:	10479073          	csrw	sie,a5
    8000581c:	fff00793          	li	a5,-1
    80005820:	00a7d793          	srli	a5,a5,0xa
    80005824:	3b079073          	csrw	pmpaddr0,a5
    80005828:	00f00793          	li	a5,15
    8000582c:	3a079073          	csrw	pmpcfg0,a5
    80005830:	f14027f3          	csrr	a5,mhartid
    80005834:	0200c737          	lui	a4,0x200c
    80005838:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000583c:	0007869b          	sext.w	a3,a5
    80005840:	00269713          	slli	a4,a3,0x2
    80005844:	000f4637          	lui	a2,0xf4
    80005848:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000584c:	00d70733          	add	a4,a4,a3
    80005850:	0037979b          	slliw	a5,a5,0x3
    80005854:	020046b7          	lui	a3,0x2004
    80005858:	00d787b3          	add	a5,a5,a3
    8000585c:	00c585b3          	add	a1,a1,a2
    80005860:	00371693          	slli	a3,a4,0x3
    80005864:	00009717          	auipc	a4,0x9
    80005868:	d9c70713          	addi	a4,a4,-612 # 8000e600 <timer_scratch>
    8000586c:	00b7b023          	sd	a1,0(a5)
    80005870:	00d70733          	add	a4,a4,a3
    80005874:	00f73c23          	sd	a5,24(a4)
    80005878:	02c73023          	sd	a2,32(a4)
    8000587c:	34071073          	csrw	mscratch,a4
    80005880:	00000797          	auipc	a5,0x0
    80005884:	6e078793          	addi	a5,a5,1760 # 80005f60 <timervec>
    80005888:	30579073          	csrw	mtvec,a5
    8000588c:	300027f3          	csrr	a5,mstatus
    80005890:	0087e793          	ori	a5,a5,8
    80005894:	30079073          	csrw	mstatus,a5
    80005898:	304027f3          	csrr	a5,mie
    8000589c:	0807e793          	ori	a5,a5,128
    800058a0:	30479073          	csrw	mie,a5
    800058a4:	f14027f3          	csrr	a5,mhartid
    800058a8:	0007879b          	sext.w	a5,a5
    800058ac:	00078213          	mv	tp,a5
    800058b0:	30200073          	mret
    800058b4:	00813403          	ld	s0,8(sp)
    800058b8:	01010113          	addi	sp,sp,16
    800058bc:	00008067          	ret

00000000800058c0 <timerinit>:
    800058c0:	ff010113          	addi	sp,sp,-16
    800058c4:	00813423          	sd	s0,8(sp)
    800058c8:	01010413          	addi	s0,sp,16
    800058cc:	f14027f3          	csrr	a5,mhartid
    800058d0:	0200c737          	lui	a4,0x200c
    800058d4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800058d8:	0007869b          	sext.w	a3,a5
    800058dc:	00269713          	slli	a4,a3,0x2
    800058e0:	000f4637          	lui	a2,0xf4
    800058e4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800058e8:	00d70733          	add	a4,a4,a3
    800058ec:	0037979b          	slliw	a5,a5,0x3
    800058f0:	020046b7          	lui	a3,0x2004
    800058f4:	00d787b3          	add	a5,a5,a3
    800058f8:	00c585b3          	add	a1,a1,a2
    800058fc:	00371693          	slli	a3,a4,0x3
    80005900:	00009717          	auipc	a4,0x9
    80005904:	d0070713          	addi	a4,a4,-768 # 8000e600 <timer_scratch>
    80005908:	00b7b023          	sd	a1,0(a5)
    8000590c:	00d70733          	add	a4,a4,a3
    80005910:	00f73c23          	sd	a5,24(a4)
    80005914:	02c73023          	sd	a2,32(a4)
    80005918:	34071073          	csrw	mscratch,a4
    8000591c:	00000797          	auipc	a5,0x0
    80005920:	64478793          	addi	a5,a5,1604 # 80005f60 <timervec>
    80005924:	30579073          	csrw	mtvec,a5
    80005928:	300027f3          	csrr	a5,mstatus
    8000592c:	0087e793          	ori	a5,a5,8
    80005930:	30079073          	csrw	mstatus,a5
    80005934:	304027f3          	csrr	a5,mie
    80005938:	0807e793          	ori	a5,a5,128
    8000593c:	30479073          	csrw	mie,a5
    80005940:	00813403          	ld	s0,8(sp)
    80005944:	01010113          	addi	sp,sp,16
    80005948:	00008067          	ret

000000008000594c <system_main>:
    8000594c:	fe010113          	addi	sp,sp,-32
    80005950:	00813823          	sd	s0,16(sp)
    80005954:	00913423          	sd	s1,8(sp)
    80005958:	00113c23          	sd	ra,24(sp)
    8000595c:	02010413          	addi	s0,sp,32
    80005960:	00000097          	auipc	ra,0x0
    80005964:	0c4080e7          	jalr	196(ra) # 80005a24 <cpuid>
    80005968:	00005497          	auipc	s1,0x5
    8000596c:	b7848493          	addi	s1,s1,-1160 # 8000a4e0 <started>
    80005970:	02050263          	beqz	a0,80005994 <system_main+0x48>
    80005974:	0004a783          	lw	a5,0(s1)
    80005978:	0007879b          	sext.w	a5,a5
    8000597c:	fe078ce3          	beqz	a5,80005974 <system_main+0x28>
    80005980:	0ff0000f          	fence
    80005984:	00003517          	auipc	a0,0x3
    80005988:	aa450513          	addi	a0,a0,-1372 # 80008428 <CONSOLE_STATUS+0x418>
    8000598c:	00001097          	auipc	ra,0x1
    80005990:	a70080e7          	jalr	-1424(ra) # 800063fc <panic>
    80005994:	00001097          	auipc	ra,0x1
    80005998:	9c4080e7          	jalr	-1596(ra) # 80006358 <consoleinit>
    8000599c:	00001097          	auipc	ra,0x1
    800059a0:	150080e7          	jalr	336(ra) # 80006aec <printfinit>
    800059a4:	00002517          	auipc	a0,0x2
    800059a8:	75450513          	addi	a0,a0,1876 # 800080f8 <CONSOLE_STATUS+0xe8>
    800059ac:	00001097          	auipc	ra,0x1
    800059b0:	aac080e7          	jalr	-1364(ra) # 80006458 <__printf>
    800059b4:	00003517          	auipc	a0,0x3
    800059b8:	a4450513          	addi	a0,a0,-1468 # 800083f8 <CONSOLE_STATUS+0x3e8>
    800059bc:	00001097          	auipc	ra,0x1
    800059c0:	a9c080e7          	jalr	-1380(ra) # 80006458 <__printf>
    800059c4:	00002517          	auipc	a0,0x2
    800059c8:	73450513          	addi	a0,a0,1844 # 800080f8 <CONSOLE_STATUS+0xe8>
    800059cc:	00001097          	auipc	ra,0x1
    800059d0:	a8c080e7          	jalr	-1396(ra) # 80006458 <__printf>
    800059d4:	00001097          	auipc	ra,0x1
    800059d8:	4a4080e7          	jalr	1188(ra) # 80006e78 <kinit>
    800059dc:	00000097          	auipc	ra,0x0
    800059e0:	148080e7          	jalr	328(ra) # 80005b24 <trapinit>
    800059e4:	00000097          	auipc	ra,0x0
    800059e8:	16c080e7          	jalr	364(ra) # 80005b50 <trapinithart>
    800059ec:	00000097          	auipc	ra,0x0
    800059f0:	5b4080e7          	jalr	1460(ra) # 80005fa0 <plicinit>
    800059f4:	00000097          	auipc	ra,0x0
    800059f8:	5d4080e7          	jalr	1492(ra) # 80005fc8 <plicinithart>
    800059fc:	00000097          	auipc	ra,0x0
    80005a00:	078080e7          	jalr	120(ra) # 80005a74 <userinit>
    80005a04:	0ff0000f          	fence
    80005a08:	00100793          	li	a5,1
    80005a0c:	00003517          	auipc	a0,0x3
    80005a10:	a0450513          	addi	a0,a0,-1532 # 80008410 <CONSOLE_STATUS+0x400>
    80005a14:	00f4a023          	sw	a5,0(s1)
    80005a18:	00001097          	auipc	ra,0x1
    80005a1c:	a40080e7          	jalr	-1472(ra) # 80006458 <__printf>
    80005a20:	0000006f          	j	80005a20 <system_main+0xd4>

0000000080005a24 <cpuid>:
    80005a24:	ff010113          	addi	sp,sp,-16
    80005a28:	00813423          	sd	s0,8(sp)
    80005a2c:	01010413          	addi	s0,sp,16
    80005a30:	00020513          	mv	a0,tp
    80005a34:	00813403          	ld	s0,8(sp)
    80005a38:	0005051b          	sext.w	a0,a0
    80005a3c:	01010113          	addi	sp,sp,16
    80005a40:	00008067          	ret

0000000080005a44 <mycpu>:
    80005a44:	ff010113          	addi	sp,sp,-16
    80005a48:	00813423          	sd	s0,8(sp)
    80005a4c:	01010413          	addi	s0,sp,16
    80005a50:	00020793          	mv	a5,tp
    80005a54:	00813403          	ld	s0,8(sp)
    80005a58:	0007879b          	sext.w	a5,a5
    80005a5c:	00779793          	slli	a5,a5,0x7
    80005a60:	0000a517          	auipc	a0,0xa
    80005a64:	bd050513          	addi	a0,a0,-1072 # 8000f630 <cpus>
    80005a68:	00f50533          	add	a0,a0,a5
    80005a6c:	01010113          	addi	sp,sp,16
    80005a70:	00008067          	ret

0000000080005a74 <userinit>:
    80005a74:	ff010113          	addi	sp,sp,-16
    80005a78:	00813423          	sd	s0,8(sp)
    80005a7c:	01010413          	addi	s0,sp,16
    80005a80:	00813403          	ld	s0,8(sp)
    80005a84:	01010113          	addi	sp,sp,16
    80005a88:	ffffe317          	auipc	t1,0xffffe
    80005a8c:	87430067          	jr	-1932(t1) # 800032fc <main>

0000000080005a90 <either_copyout>:
    80005a90:	ff010113          	addi	sp,sp,-16
    80005a94:	00813023          	sd	s0,0(sp)
    80005a98:	00113423          	sd	ra,8(sp)
    80005a9c:	01010413          	addi	s0,sp,16
    80005aa0:	02051663          	bnez	a0,80005acc <either_copyout+0x3c>
    80005aa4:	00058513          	mv	a0,a1
    80005aa8:	00060593          	mv	a1,a2
    80005aac:	0006861b          	sext.w	a2,a3
    80005ab0:	00002097          	auipc	ra,0x2
    80005ab4:	c54080e7          	jalr	-940(ra) # 80007704 <__memmove>
    80005ab8:	00813083          	ld	ra,8(sp)
    80005abc:	00013403          	ld	s0,0(sp)
    80005ac0:	00000513          	li	a0,0
    80005ac4:	01010113          	addi	sp,sp,16
    80005ac8:	00008067          	ret
    80005acc:	00003517          	auipc	a0,0x3
    80005ad0:	98450513          	addi	a0,a0,-1660 # 80008450 <CONSOLE_STATUS+0x440>
    80005ad4:	00001097          	auipc	ra,0x1
    80005ad8:	928080e7          	jalr	-1752(ra) # 800063fc <panic>

0000000080005adc <either_copyin>:
    80005adc:	ff010113          	addi	sp,sp,-16
    80005ae0:	00813023          	sd	s0,0(sp)
    80005ae4:	00113423          	sd	ra,8(sp)
    80005ae8:	01010413          	addi	s0,sp,16
    80005aec:	02059463          	bnez	a1,80005b14 <either_copyin+0x38>
    80005af0:	00060593          	mv	a1,a2
    80005af4:	0006861b          	sext.w	a2,a3
    80005af8:	00002097          	auipc	ra,0x2
    80005afc:	c0c080e7          	jalr	-1012(ra) # 80007704 <__memmove>
    80005b00:	00813083          	ld	ra,8(sp)
    80005b04:	00013403          	ld	s0,0(sp)
    80005b08:	00000513          	li	a0,0
    80005b0c:	01010113          	addi	sp,sp,16
    80005b10:	00008067          	ret
    80005b14:	00003517          	auipc	a0,0x3
    80005b18:	96450513          	addi	a0,a0,-1692 # 80008478 <CONSOLE_STATUS+0x468>
    80005b1c:	00001097          	auipc	ra,0x1
    80005b20:	8e0080e7          	jalr	-1824(ra) # 800063fc <panic>

0000000080005b24 <trapinit>:
    80005b24:	ff010113          	addi	sp,sp,-16
    80005b28:	00813423          	sd	s0,8(sp)
    80005b2c:	01010413          	addi	s0,sp,16
    80005b30:	00813403          	ld	s0,8(sp)
    80005b34:	00003597          	auipc	a1,0x3
    80005b38:	96c58593          	addi	a1,a1,-1684 # 800084a0 <CONSOLE_STATUS+0x490>
    80005b3c:	0000a517          	auipc	a0,0xa
    80005b40:	b7450513          	addi	a0,a0,-1164 # 8000f6b0 <tickslock>
    80005b44:	01010113          	addi	sp,sp,16
    80005b48:	00001317          	auipc	t1,0x1
    80005b4c:	5c030067          	jr	1472(t1) # 80007108 <initlock>

0000000080005b50 <trapinithart>:
    80005b50:	ff010113          	addi	sp,sp,-16
    80005b54:	00813423          	sd	s0,8(sp)
    80005b58:	01010413          	addi	s0,sp,16
    80005b5c:	00000797          	auipc	a5,0x0
    80005b60:	2f478793          	addi	a5,a5,756 # 80005e50 <kernelvec>
    80005b64:	10579073          	csrw	stvec,a5
    80005b68:	00813403          	ld	s0,8(sp)
    80005b6c:	01010113          	addi	sp,sp,16
    80005b70:	00008067          	ret

0000000080005b74 <usertrap>:
    80005b74:	ff010113          	addi	sp,sp,-16
    80005b78:	00813423          	sd	s0,8(sp)
    80005b7c:	01010413          	addi	s0,sp,16
    80005b80:	00813403          	ld	s0,8(sp)
    80005b84:	01010113          	addi	sp,sp,16
    80005b88:	00008067          	ret

0000000080005b8c <usertrapret>:
    80005b8c:	ff010113          	addi	sp,sp,-16
    80005b90:	00813423          	sd	s0,8(sp)
    80005b94:	01010413          	addi	s0,sp,16
    80005b98:	00813403          	ld	s0,8(sp)
    80005b9c:	01010113          	addi	sp,sp,16
    80005ba0:	00008067          	ret

0000000080005ba4 <kerneltrap>:
    80005ba4:	fe010113          	addi	sp,sp,-32
    80005ba8:	00813823          	sd	s0,16(sp)
    80005bac:	00113c23          	sd	ra,24(sp)
    80005bb0:	00913423          	sd	s1,8(sp)
    80005bb4:	02010413          	addi	s0,sp,32
    80005bb8:	142025f3          	csrr	a1,scause
    80005bbc:	100027f3          	csrr	a5,sstatus
    80005bc0:	0027f793          	andi	a5,a5,2
    80005bc4:	10079c63          	bnez	a5,80005cdc <kerneltrap+0x138>
    80005bc8:	142027f3          	csrr	a5,scause
    80005bcc:	0207ce63          	bltz	a5,80005c08 <kerneltrap+0x64>
    80005bd0:	00003517          	auipc	a0,0x3
    80005bd4:	91850513          	addi	a0,a0,-1768 # 800084e8 <CONSOLE_STATUS+0x4d8>
    80005bd8:	00001097          	auipc	ra,0x1
    80005bdc:	880080e7          	jalr	-1920(ra) # 80006458 <__printf>
    80005be0:	141025f3          	csrr	a1,sepc
    80005be4:	14302673          	csrr	a2,stval
    80005be8:	00003517          	auipc	a0,0x3
    80005bec:	91050513          	addi	a0,a0,-1776 # 800084f8 <CONSOLE_STATUS+0x4e8>
    80005bf0:	00001097          	auipc	ra,0x1
    80005bf4:	868080e7          	jalr	-1944(ra) # 80006458 <__printf>
    80005bf8:	00003517          	auipc	a0,0x3
    80005bfc:	91850513          	addi	a0,a0,-1768 # 80008510 <CONSOLE_STATUS+0x500>
    80005c00:	00000097          	auipc	ra,0x0
    80005c04:	7fc080e7          	jalr	2044(ra) # 800063fc <panic>
    80005c08:	0ff7f713          	andi	a4,a5,255
    80005c0c:	00900693          	li	a3,9
    80005c10:	04d70063          	beq	a4,a3,80005c50 <kerneltrap+0xac>
    80005c14:	fff00713          	li	a4,-1
    80005c18:	03f71713          	slli	a4,a4,0x3f
    80005c1c:	00170713          	addi	a4,a4,1
    80005c20:	fae798e3          	bne	a5,a4,80005bd0 <kerneltrap+0x2c>
    80005c24:	00000097          	auipc	ra,0x0
    80005c28:	e00080e7          	jalr	-512(ra) # 80005a24 <cpuid>
    80005c2c:	06050663          	beqz	a0,80005c98 <kerneltrap+0xf4>
    80005c30:	144027f3          	csrr	a5,sip
    80005c34:	ffd7f793          	andi	a5,a5,-3
    80005c38:	14479073          	csrw	sip,a5
    80005c3c:	01813083          	ld	ra,24(sp)
    80005c40:	01013403          	ld	s0,16(sp)
    80005c44:	00813483          	ld	s1,8(sp)
    80005c48:	02010113          	addi	sp,sp,32
    80005c4c:	00008067          	ret
    80005c50:	00000097          	auipc	ra,0x0
    80005c54:	3c4080e7          	jalr	964(ra) # 80006014 <plic_claim>
    80005c58:	00a00793          	li	a5,10
    80005c5c:	00050493          	mv	s1,a0
    80005c60:	06f50863          	beq	a0,a5,80005cd0 <kerneltrap+0x12c>
    80005c64:	fc050ce3          	beqz	a0,80005c3c <kerneltrap+0x98>
    80005c68:	00050593          	mv	a1,a0
    80005c6c:	00003517          	auipc	a0,0x3
    80005c70:	85c50513          	addi	a0,a0,-1956 # 800084c8 <CONSOLE_STATUS+0x4b8>
    80005c74:	00000097          	auipc	ra,0x0
    80005c78:	7e4080e7          	jalr	2020(ra) # 80006458 <__printf>
    80005c7c:	01013403          	ld	s0,16(sp)
    80005c80:	01813083          	ld	ra,24(sp)
    80005c84:	00048513          	mv	a0,s1
    80005c88:	00813483          	ld	s1,8(sp)
    80005c8c:	02010113          	addi	sp,sp,32
    80005c90:	00000317          	auipc	t1,0x0
    80005c94:	3bc30067          	jr	956(t1) # 8000604c <plic_complete>
    80005c98:	0000a517          	auipc	a0,0xa
    80005c9c:	a1850513          	addi	a0,a0,-1512 # 8000f6b0 <tickslock>
    80005ca0:	00001097          	auipc	ra,0x1
    80005ca4:	48c080e7          	jalr	1164(ra) # 8000712c <acquire>
    80005ca8:	00005717          	auipc	a4,0x5
    80005cac:	83c70713          	addi	a4,a4,-1988 # 8000a4e4 <ticks>
    80005cb0:	00072783          	lw	a5,0(a4)
    80005cb4:	0000a517          	auipc	a0,0xa
    80005cb8:	9fc50513          	addi	a0,a0,-1540 # 8000f6b0 <tickslock>
    80005cbc:	0017879b          	addiw	a5,a5,1
    80005cc0:	00f72023          	sw	a5,0(a4)
    80005cc4:	00001097          	auipc	ra,0x1
    80005cc8:	534080e7          	jalr	1332(ra) # 800071f8 <release>
    80005ccc:	f65ff06f          	j	80005c30 <kerneltrap+0x8c>
    80005cd0:	00001097          	auipc	ra,0x1
    80005cd4:	090080e7          	jalr	144(ra) # 80006d60 <uartintr>
    80005cd8:	fa5ff06f          	j	80005c7c <kerneltrap+0xd8>
    80005cdc:	00002517          	auipc	a0,0x2
    80005ce0:	7cc50513          	addi	a0,a0,1996 # 800084a8 <CONSOLE_STATUS+0x498>
    80005ce4:	00000097          	auipc	ra,0x0
    80005ce8:	718080e7          	jalr	1816(ra) # 800063fc <panic>

0000000080005cec <clockintr>:
    80005cec:	fe010113          	addi	sp,sp,-32
    80005cf0:	00813823          	sd	s0,16(sp)
    80005cf4:	00913423          	sd	s1,8(sp)
    80005cf8:	00113c23          	sd	ra,24(sp)
    80005cfc:	02010413          	addi	s0,sp,32
    80005d00:	0000a497          	auipc	s1,0xa
    80005d04:	9b048493          	addi	s1,s1,-1616 # 8000f6b0 <tickslock>
    80005d08:	00048513          	mv	a0,s1
    80005d0c:	00001097          	auipc	ra,0x1
    80005d10:	420080e7          	jalr	1056(ra) # 8000712c <acquire>
    80005d14:	00004717          	auipc	a4,0x4
    80005d18:	7d070713          	addi	a4,a4,2000 # 8000a4e4 <ticks>
    80005d1c:	00072783          	lw	a5,0(a4)
    80005d20:	01013403          	ld	s0,16(sp)
    80005d24:	01813083          	ld	ra,24(sp)
    80005d28:	00048513          	mv	a0,s1
    80005d2c:	0017879b          	addiw	a5,a5,1
    80005d30:	00813483          	ld	s1,8(sp)
    80005d34:	00f72023          	sw	a5,0(a4)
    80005d38:	02010113          	addi	sp,sp,32
    80005d3c:	00001317          	auipc	t1,0x1
    80005d40:	4bc30067          	jr	1212(t1) # 800071f8 <release>

0000000080005d44 <devintr>:
    80005d44:	142027f3          	csrr	a5,scause
    80005d48:	00000513          	li	a0,0
    80005d4c:	0007c463          	bltz	a5,80005d54 <devintr+0x10>
    80005d50:	00008067          	ret
    80005d54:	fe010113          	addi	sp,sp,-32
    80005d58:	00813823          	sd	s0,16(sp)
    80005d5c:	00113c23          	sd	ra,24(sp)
    80005d60:	00913423          	sd	s1,8(sp)
    80005d64:	02010413          	addi	s0,sp,32
    80005d68:	0ff7f713          	andi	a4,a5,255
    80005d6c:	00900693          	li	a3,9
    80005d70:	04d70c63          	beq	a4,a3,80005dc8 <devintr+0x84>
    80005d74:	fff00713          	li	a4,-1
    80005d78:	03f71713          	slli	a4,a4,0x3f
    80005d7c:	00170713          	addi	a4,a4,1
    80005d80:	00e78c63          	beq	a5,a4,80005d98 <devintr+0x54>
    80005d84:	01813083          	ld	ra,24(sp)
    80005d88:	01013403          	ld	s0,16(sp)
    80005d8c:	00813483          	ld	s1,8(sp)
    80005d90:	02010113          	addi	sp,sp,32
    80005d94:	00008067          	ret
    80005d98:	00000097          	auipc	ra,0x0
    80005d9c:	c8c080e7          	jalr	-884(ra) # 80005a24 <cpuid>
    80005da0:	06050663          	beqz	a0,80005e0c <devintr+0xc8>
    80005da4:	144027f3          	csrr	a5,sip
    80005da8:	ffd7f793          	andi	a5,a5,-3
    80005dac:	14479073          	csrw	sip,a5
    80005db0:	01813083          	ld	ra,24(sp)
    80005db4:	01013403          	ld	s0,16(sp)
    80005db8:	00813483          	ld	s1,8(sp)
    80005dbc:	00200513          	li	a0,2
    80005dc0:	02010113          	addi	sp,sp,32
    80005dc4:	00008067          	ret
    80005dc8:	00000097          	auipc	ra,0x0
    80005dcc:	24c080e7          	jalr	588(ra) # 80006014 <plic_claim>
    80005dd0:	00a00793          	li	a5,10
    80005dd4:	00050493          	mv	s1,a0
    80005dd8:	06f50663          	beq	a0,a5,80005e44 <devintr+0x100>
    80005ddc:	00100513          	li	a0,1
    80005de0:	fa0482e3          	beqz	s1,80005d84 <devintr+0x40>
    80005de4:	00048593          	mv	a1,s1
    80005de8:	00002517          	auipc	a0,0x2
    80005dec:	6e050513          	addi	a0,a0,1760 # 800084c8 <CONSOLE_STATUS+0x4b8>
    80005df0:	00000097          	auipc	ra,0x0
    80005df4:	668080e7          	jalr	1640(ra) # 80006458 <__printf>
    80005df8:	00048513          	mv	a0,s1
    80005dfc:	00000097          	auipc	ra,0x0
    80005e00:	250080e7          	jalr	592(ra) # 8000604c <plic_complete>
    80005e04:	00100513          	li	a0,1
    80005e08:	f7dff06f          	j	80005d84 <devintr+0x40>
    80005e0c:	0000a517          	auipc	a0,0xa
    80005e10:	8a450513          	addi	a0,a0,-1884 # 8000f6b0 <tickslock>
    80005e14:	00001097          	auipc	ra,0x1
    80005e18:	318080e7          	jalr	792(ra) # 8000712c <acquire>
    80005e1c:	00004717          	auipc	a4,0x4
    80005e20:	6c870713          	addi	a4,a4,1736 # 8000a4e4 <ticks>
    80005e24:	00072783          	lw	a5,0(a4)
    80005e28:	0000a517          	auipc	a0,0xa
    80005e2c:	88850513          	addi	a0,a0,-1912 # 8000f6b0 <tickslock>
    80005e30:	0017879b          	addiw	a5,a5,1
    80005e34:	00f72023          	sw	a5,0(a4)
    80005e38:	00001097          	auipc	ra,0x1
    80005e3c:	3c0080e7          	jalr	960(ra) # 800071f8 <release>
    80005e40:	f65ff06f          	j	80005da4 <devintr+0x60>
    80005e44:	00001097          	auipc	ra,0x1
    80005e48:	f1c080e7          	jalr	-228(ra) # 80006d60 <uartintr>
    80005e4c:	fadff06f          	j	80005df8 <devintr+0xb4>

0000000080005e50 <kernelvec>:
    80005e50:	f0010113          	addi	sp,sp,-256
    80005e54:	00113023          	sd	ra,0(sp)
    80005e58:	00213423          	sd	sp,8(sp)
    80005e5c:	00313823          	sd	gp,16(sp)
    80005e60:	00413c23          	sd	tp,24(sp)
    80005e64:	02513023          	sd	t0,32(sp)
    80005e68:	02613423          	sd	t1,40(sp)
    80005e6c:	02713823          	sd	t2,48(sp)
    80005e70:	02813c23          	sd	s0,56(sp)
    80005e74:	04913023          	sd	s1,64(sp)
    80005e78:	04a13423          	sd	a0,72(sp)
    80005e7c:	04b13823          	sd	a1,80(sp)
    80005e80:	04c13c23          	sd	a2,88(sp)
    80005e84:	06d13023          	sd	a3,96(sp)
    80005e88:	06e13423          	sd	a4,104(sp)
    80005e8c:	06f13823          	sd	a5,112(sp)
    80005e90:	07013c23          	sd	a6,120(sp)
    80005e94:	09113023          	sd	a7,128(sp)
    80005e98:	09213423          	sd	s2,136(sp)
    80005e9c:	09313823          	sd	s3,144(sp)
    80005ea0:	09413c23          	sd	s4,152(sp)
    80005ea4:	0b513023          	sd	s5,160(sp)
    80005ea8:	0b613423          	sd	s6,168(sp)
    80005eac:	0b713823          	sd	s7,176(sp)
    80005eb0:	0b813c23          	sd	s8,184(sp)
    80005eb4:	0d913023          	sd	s9,192(sp)
    80005eb8:	0da13423          	sd	s10,200(sp)
    80005ebc:	0db13823          	sd	s11,208(sp)
    80005ec0:	0dc13c23          	sd	t3,216(sp)
    80005ec4:	0fd13023          	sd	t4,224(sp)
    80005ec8:	0fe13423          	sd	t5,232(sp)
    80005ecc:	0ff13823          	sd	t6,240(sp)
    80005ed0:	cd5ff0ef          	jal	ra,80005ba4 <kerneltrap>
    80005ed4:	00013083          	ld	ra,0(sp)
    80005ed8:	00813103          	ld	sp,8(sp)
    80005edc:	01013183          	ld	gp,16(sp)
    80005ee0:	02013283          	ld	t0,32(sp)
    80005ee4:	02813303          	ld	t1,40(sp)
    80005ee8:	03013383          	ld	t2,48(sp)
    80005eec:	03813403          	ld	s0,56(sp)
    80005ef0:	04013483          	ld	s1,64(sp)
    80005ef4:	04813503          	ld	a0,72(sp)
    80005ef8:	05013583          	ld	a1,80(sp)
    80005efc:	05813603          	ld	a2,88(sp)
    80005f00:	06013683          	ld	a3,96(sp)
    80005f04:	06813703          	ld	a4,104(sp)
    80005f08:	07013783          	ld	a5,112(sp)
    80005f0c:	07813803          	ld	a6,120(sp)
    80005f10:	08013883          	ld	a7,128(sp)
    80005f14:	08813903          	ld	s2,136(sp)
    80005f18:	09013983          	ld	s3,144(sp)
    80005f1c:	09813a03          	ld	s4,152(sp)
    80005f20:	0a013a83          	ld	s5,160(sp)
    80005f24:	0a813b03          	ld	s6,168(sp)
    80005f28:	0b013b83          	ld	s7,176(sp)
    80005f2c:	0b813c03          	ld	s8,184(sp)
    80005f30:	0c013c83          	ld	s9,192(sp)
    80005f34:	0c813d03          	ld	s10,200(sp)
    80005f38:	0d013d83          	ld	s11,208(sp)
    80005f3c:	0d813e03          	ld	t3,216(sp)
    80005f40:	0e013e83          	ld	t4,224(sp)
    80005f44:	0e813f03          	ld	t5,232(sp)
    80005f48:	0f013f83          	ld	t6,240(sp)
    80005f4c:	10010113          	addi	sp,sp,256
    80005f50:	10200073          	sret
    80005f54:	00000013          	nop
    80005f58:	00000013          	nop
    80005f5c:	00000013          	nop

0000000080005f60 <timervec>:
    80005f60:	34051573          	csrrw	a0,mscratch,a0
    80005f64:	00b53023          	sd	a1,0(a0)
    80005f68:	00c53423          	sd	a2,8(a0)
    80005f6c:	00d53823          	sd	a3,16(a0)
    80005f70:	01853583          	ld	a1,24(a0)
    80005f74:	02053603          	ld	a2,32(a0)
    80005f78:	0005b683          	ld	a3,0(a1)
    80005f7c:	00c686b3          	add	a3,a3,a2
    80005f80:	00d5b023          	sd	a3,0(a1)
    80005f84:	00200593          	li	a1,2
    80005f88:	14459073          	csrw	sip,a1
    80005f8c:	01053683          	ld	a3,16(a0)
    80005f90:	00853603          	ld	a2,8(a0)
    80005f94:	00053583          	ld	a1,0(a0)
    80005f98:	34051573          	csrrw	a0,mscratch,a0
    80005f9c:	30200073          	mret

0000000080005fa0 <plicinit>:
    80005fa0:	ff010113          	addi	sp,sp,-16
    80005fa4:	00813423          	sd	s0,8(sp)
    80005fa8:	01010413          	addi	s0,sp,16
    80005fac:	00813403          	ld	s0,8(sp)
    80005fb0:	0c0007b7          	lui	a5,0xc000
    80005fb4:	00100713          	li	a4,1
    80005fb8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80005fbc:	00e7a223          	sw	a4,4(a5)
    80005fc0:	01010113          	addi	sp,sp,16
    80005fc4:	00008067          	ret

0000000080005fc8 <plicinithart>:
    80005fc8:	ff010113          	addi	sp,sp,-16
    80005fcc:	00813023          	sd	s0,0(sp)
    80005fd0:	00113423          	sd	ra,8(sp)
    80005fd4:	01010413          	addi	s0,sp,16
    80005fd8:	00000097          	auipc	ra,0x0
    80005fdc:	a4c080e7          	jalr	-1460(ra) # 80005a24 <cpuid>
    80005fe0:	0085171b          	slliw	a4,a0,0x8
    80005fe4:	0c0027b7          	lui	a5,0xc002
    80005fe8:	00e787b3          	add	a5,a5,a4
    80005fec:	40200713          	li	a4,1026
    80005ff0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005ff4:	00813083          	ld	ra,8(sp)
    80005ff8:	00013403          	ld	s0,0(sp)
    80005ffc:	00d5151b          	slliw	a0,a0,0xd
    80006000:	0c2017b7          	lui	a5,0xc201
    80006004:	00a78533          	add	a0,a5,a0
    80006008:	00052023          	sw	zero,0(a0)
    8000600c:	01010113          	addi	sp,sp,16
    80006010:	00008067          	ret

0000000080006014 <plic_claim>:
    80006014:	ff010113          	addi	sp,sp,-16
    80006018:	00813023          	sd	s0,0(sp)
    8000601c:	00113423          	sd	ra,8(sp)
    80006020:	01010413          	addi	s0,sp,16
    80006024:	00000097          	auipc	ra,0x0
    80006028:	a00080e7          	jalr	-1536(ra) # 80005a24 <cpuid>
    8000602c:	00813083          	ld	ra,8(sp)
    80006030:	00013403          	ld	s0,0(sp)
    80006034:	00d5151b          	slliw	a0,a0,0xd
    80006038:	0c2017b7          	lui	a5,0xc201
    8000603c:	00a78533          	add	a0,a5,a0
    80006040:	00452503          	lw	a0,4(a0)
    80006044:	01010113          	addi	sp,sp,16
    80006048:	00008067          	ret

000000008000604c <plic_complete>:
    8000604c:	fe010113          	addi	sp,sp,-32
    80006050:	00813823          	sd	s0,16(sp)
    80006054:	00913423          	sd	s1,8(sp)
    80006058:	00113c23          	sd	ra,24(sp)
    8000605c:	02010413          	addi	s0,sp,32
    80006060:	00050493          	mv	s1,a0
    80006064:	00000097          	auipc	ra,0x0
    80006068:	9c0080e7          	jalr	-1600(ra) # 80005a24 <cpuid>
    8000606c:	01813083          	ld	ra,24(sp)
    80006070:	01013403          	ld	s0,16(sp)
    80006074:	00d5179b          	slliw	a5,a0,0xd
    80006078:	0c201737          	lui	a4,0xc201
    8000607c:	00f707b3          	add	a5,a4,a5
    80006080:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006084:	00813483          	ld	s1,8(sp)
    80006088:	02010113          	addi	sp,sp,32
    8000608c:	00008067          	ret

0000000080006090 <consolewrite>:
    80006090:	fb010113          	addi	sp,sp,-80
    80006094:	04813023          	sd	s0,64(sp)
    80006098:	04113423          	sd	ra,72(sp)
    8000609c:	02913c23          	sd	s1,56(sp)
    800060a0:	03213823          	sd	s2,48(sp)
    800060a4:	03313423          	sd	s3,40(sp)
    800060a8:	03413023          	sd	s4,32(sp)
    800060ac:	01513c23          	sd	s5,24(sp)
    800060b0:	05010413          	addi	s0,sp,80
    800060b4:	06c05c63          	blez	a2,8000612c <consolewrite+0x9c>
    800060b8:	00060993          	mv	s3,a2
    800060bc:	00050a13          	mv	s4,a0
    800060c0:	00058493          	mv	s1,a1
    800060c4:	00000913          	li	s2,0
    800060c8:	fff00a93          	li	s5,-1
    800060cc:	01c0006f          	j	800060e8 <consolewrite+0x58>
    800060d0:	fbf44503          	lbu	a0,-65(s0)
    800060d4:	0019091b          	addiw	s2,s2,1
    800060d8:	00148493          	addi	s1,s1,1
    800060dc:	00001097          	auipc	ra,0x1
    800060e0:	a9c080e7          	jalr	-1380(ra) # 80006b78 <uartputc>
    800060e4:	03298063          	beq	s3,s2,80006104 <consolewrite+0x74>
    800060e8:	00048613          	mv	a2,s1
    800060ec:	00100693          	li	a3,1
    800060f0:	000a0593          	mv	a1,s4
    800060f4:	fbf40513          	addi	a0,s0,-65
    800060f8:	00000097          	auipc	ra,0x0
    800060fc:	9e4080e7          	jalr	-1564(ra) # 80005adc <either_copyin>
    80006100:	fd5518e3          	bne	a0,s5,800060d0 <consolewrite+0x40>
    80006104:	04813083          	ld	ra,72(sp)
    80006108:	04013403          	ld	s0,64(sp)
    8000610c:	03813483          	ld	s1,56(sp)
    80006110:	02813983          	ld	s3,40(sp)
    80006114:	02013a03          	ld	s4,32(sp)
    80006118:	01813a83          	ld	s5,24(sp)
    8000611c:	00090513          	mv	a0,s2
    80006120:	03013903          	ld	s2,48(sp)
    80006124:	05010113          	addi	sp,sp,80
    80006128:	00008067          	ret
    8000612c:	00000913          	li	s2,0
    80006130:	fd5ff06f          	j	80006104 <consolewrite+0x74>

0000000080006134 <consoleread>:
    80006134:	f9010113          	addi	sp,sp,-112
    80006138:	06813023          	sd	s0,96(sp)
    8000613c:	04913c23          	sd	s1,88(sp)
    80006140:	05213823          	sd	s2,80(sp)
    80006144:	05313423          	sd	s3,72(sp)
    80006148:	05413023          	sd	s4,64(sp)
    8000614c:	03513c23          	sd	s5,56(sp)
    80006150:	03613823          	sd	s6,48(sp)
    80006154:	03713423          	sd	s7,40(sp)
    80006158:	03813023          	sd	s8,32(sp)
    8000615c:	06113423          	sd	ra,104(sp)
    80006160:	01913c23          	sd	s9,24(sp)
    80006164:	07010413          	addi	s0,sp,112
    80006168:	00060b93          	mv	s7,a2
    8000616c:	00050913          	mv	s2,a0
    80006170:	00058c13          	mv	s8,a1
    80006174:	00060b1b          	sext.w	s6,a2
    80006178:	00009497          	auipc	s1,0x9
    8000617c:	56048493          	addi	s1,s1,1376 # 8000f6d8 <cons>
    80006180:	00400993          	li	s3,4
    80006184:	fff00a13          	li	s4,-1
    80006188:	00a00a93          	li	s5,10
    8000618c:	05705e63          	blez	s7,800061e8 <consoleread+0xb4>
    80006190:	09c4a703          	lw	a4,156(s1)
    80006194:	0984a783          	lw	a5,152(s1)
    80006198:	0007071b          	sext.w	a4,a4
    8000619c:	08e78463          	beq	a5,a4,80006224 <consoleread+0xf0>
    800061a0:	07f7f713          	andi	a4,a5,127
    800061a4:	00e48733          	add	a4,s1,a4
    800061a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800061ac:	0017869b          	addiw	a3,a5,1
    800061b0:	08d4ac23          	sw	a3,152(s1)
    800061b4:	00070c9b          	sext.w	s9,a4
    800061b8:	0b370663          	beq	a4,s3,80006264 <consoleread+0x130>
    800061bc:	00100693          	li	a3,1
    800061c0:	f9f40613          	addi	a2,s0,-97
    800061c4:	000c0593          	mv	a1,s8
    800061c8:	00090513          	mv	a0,s2
    800061cc:	f8e40fa3          	sb	a4,-97(s0)
    800061d0:	00000097          	auipc	ra,0x0
    800061d4:	8c0080e7          	jalr	-1856(ra) # 80005a90 <either_copyout>
    800061d8:	01450863          	beq	a0,s4,800061e8 <consoleread+0xb4>
    800061dc:	001c0c13          	addi	s8,s8,1
    800061e0:	fffb8b9b          	addiw	s7,s7,-1
    800061e4:	fb5c94e3          	bne	s9,s5,8000618c <consoleread+0x58>
    800061e8:	000b851b          	sext.w	a0,s7
    800061ec:	06813083          	ld	ra,104(sp)
    800061f0:	06013403          	ld	s0,96(sp)
    800061f4:	05813483          	ld	s1,88(sp)
    800061f8:	05013903          	ld	s2,80(sp)
    800061fc:	04813983          	ld	s3,72(sp)
    80006200:	04013a03          	ld	s4,64(sp)
    80006204:	03813a83          	ld	s5,56(sp)
    80006208:	02813b83          	ld	s7,40(sp)
    8000620c:	02013c03          	ld	s8,32(sp)
    80006210:	01813c83          	ld	s9,24(sp)
    80006214:	40ab053b          	subw	a0,s6,a0
    80006218:	03013b03          	ld	s6,48(sp)
    8000621c:	07010113          	addi	sp,sp,112
    80006220:	00008067          	ret
    80006224:	00001097          	auipc	ra,0x1
    80006228:	1d8080e7          	jalr	472(ra) # 800073fc <push_on>
    8000622c:	0984a703          	lw	a4,152(s1)
    80006230:	09c4a783          	lw	a5,156(s1)
    80006234:	0007879b          	sext.w	a5,a5
    80006238:	fef70ce3          	beq	a4,a5,80006230 <consoleread+0xfc>
    8000623c:	00001097          	auipc	ra,0x1
    80006240:	234080e7          	jalr	564(ra) # 80007470 <pop_on>
    80006244:	0984a783          	lw	a5,152(s1)
    80006248:	07f7f713          	andi	a4,a5,127
    8000624c:	00e48733          	add	a4,s1,a4
    80006250:	01874703          	lbu	a4,24(a4)
    80006254:	0017869b          	addiw	a3,a5,1
    80006258:	08d4ac23          	sw	a3,152(s1)
    8000625c:	00070c9b          	sext.w	s9,a4
    80006260:	f5371ee3          	bne	a4,s3,800061bc <consoleread+0x88>
    80006264:	000b851b          	sext.w	a0,s7
    80006268:	f96bf2e3          	bgeu	s7,s6,800061ec <consoleread+0xb8>
    8000626c:	08f4ac23          	sw	a5,152(s1)
    80006270:	f7dff06f          	j	800061ec <consoleread+0xb8>

0000000080006274 <consputc>:
    80006274:	10000793          	li	a5,256
    80006278:	00f50663          	beq	a0,a5,80006284 <consputc+0x10>
    8000627c:	00001317          	auipc	t1,0x1
    80006280:	9f430067          	jr	-1548(t1) # 80006c70 <uartputc_sync>
    80006284:	ff010113          	addi	sp,sp,-16
    80006288:	00113423          	sd	ra,8(sp)
    8000628c:	00813023          	sd	s0,0(sp)
    80006290:	01010413          	addi	s0,sp,16
    80006294:	00800513          	li	a0,8
    80006298:	00001097          	auipc	ra,0x1
    8000629c:	9d8080e7          	jalr	-1576(ra) # 80006c70 <uartputc_sync>
    800062a0:	02000513          	li	a0,32
    800062a4:	00001097          	auipc	ra,0x1
    800062a8:	9cc080e7          	jalr	-1588(ra) # 80006c70 <uartputc_sync>
    800062ac:	00013403          	ld	s0,0(sp)
    800062b0:	00813083          	ld	ra,8(sp)
    800062b4:	00800513          	li	a0,8
    800062b8:	01010113          	addi	sp,sp,16
    800062bc:	00001317          	auipc	t1,0x1
    800062c0:	9b430067          	jr	-1612(t1) # 80006c70 <uartputc_sync>

00000000800062c4 <consoleintr>:
    800062c4:	fe010113          	addi	sp,sp,-32
    800062c8:	00813823          	sd	s0,16(sp)
    800062cc:	00913423          	sd	s1,8(sp)
    800062d0:	01213023          	sd	s2,0(sp)
    800062d4:	00113c23          	sd	ra,24(sp)
    800062d8:	02010413          	addi	s0,sp,32
    800062dc:	00009917          	auipc	s2,0x9
    800062e0:	3fc90913          	addi	s2,s2,1020 # 8000f6d8 <cons>
    800062e4:	00050493          	mv	s1,a0
    800062e8:	00090513          	mv	a0,s2
    800062ec:	00001097          	auipc	ra,0x1
    800062f0:	e40080e7          	jalr	-448(ra) # 8000712c <acquire>
    800062f4:	02048c63          	beqz	s1,8000632c <consoleintr+0x68>
    800062f8:	0a092783          	lw	a5,160(s2)
    800062fc:	09892703          	lw	a4,152(s2)
    80006300:	07f00693          	li	a3,127
    80006304:	40e7873b          	subw	a4,a5,a4
    80006308:	02e6e263          	bltu	a3,a4,8000632c <consoleintr+0x68>
    8000630c:	00d00713          	li	a4,13
    80006310:	04e48063          	beq	s1,a4,80006350 <consoleintr+0x8c>
    80006314:	07f7f713          	andi	a4,a5,127
    80006318:	00e90733          	add	a4,s2,a4
    8000631c:	0017879b          	addiw	a5,a5,1
    80006320:	0af92023          	sw	a5,160(s2)
    80006324:	00970c23          	sb	s1,24(a4)
    80006328:	08f92e23          	sw	a5,156(s2)
    8000632c:	01013403          	ld	s0,16(sp)
    80006330:	01813083          	ld	ra,24(sp)
    80006334:	00813483          	ld	s1,8(sp)
    80006338:	00013903          	ld	s2,0(sp)
    8000633c:	00009517          	auipc	a0,0x9
    80006340:	39c50513          	addi	a0,a0,924 # 8000f6d8 <cons>
    80006344:	02010113          	addi	sp,sp,32
    80006348:	00001317          	auipc	t1,0x1
    8000634c:	eb030067          	jr	-336(t1) # 800071f8 <release>
    80006350:	00a00493          	li	s1,10
    80006354:	fc1ff06f          	j	80006314 <consoleintr+0x50>

0000000080006358 <consoleinit>:
    80006358:	fe010113          	addi	sp,sp,-32
    8000635c:	00113c23          	sd	ra,24(sp)
    80006360:	00813823          	sd	s0,16(sp)
    80006364:	00913423          	sd	s1,8(sp)
    80006368:	02010413          	addi	s0,sp,32
    8000636c:	00009497          	auipc	s1,0x9
    80006370:	36c48493          	addi	s1,s1,876 # 8000f6d8 <cons>
    80006374:	00048513          	mv	a0,s1
    80006378:	00002597          	auipc	a1,0x2
    8000637c:	1a858593          	addi	a1,a1,424 # 80008520 <CONSOLE_STATUS+0x510>
    80006380:	00001097          	auipc	ra,0x1
    80006384:	d88080e7          	jalr	-632(ra) # 80007108 <initlock>
    80006388:	00000097          	auipc	ra,0x0
    8000638c:	7ac080e7          	jalr	1964(ra) # 80006b34 <uartinit>
    80006390:	01813083          	ld	ra,24(sp)
    80006394:	01013403          	ld	s0,16(sp)
    80006398:	00000797          	auipc	a5,0x0
    8000639c:	d9c78793          	addi	a5,a5,-612 # 80006134 <consoleread>
    800063a0:	0af4bc23          	sd	a5,184(s1)
    800063a4:	00000797          	auipc	a5,0x0
    800063a8:	cec78793          	addi	a5,a5,-788 # 80006090 <consolewrite>
    800063ac:	0cf4b023          	sd	a5,192(s1)
    800063b0:	00813483          	ld	s1,8(sp)
    800063b4:	02010113          	addi	sp,sp,32
    800063b8:	00008067          	ret

00000000800063bc <console_read>:
    800063bc:	ff010113          	addi	sp,sp,-16
    800063c0:	00813423          	sd	s0,8(sp)
    800063c4:	01010413          	addi	s0,sp,16
    800063c8:	00813403          	ld	s0,8(sp)
    800063cc:	00009317          	auipc	t1,0x9
    800063d0:	3c433303          	ld	t1,964(t1) # 8000f790 <devsw+0x10>
    800063d4:	01010113          	addi	sp,sp,16
    800063d8:	00030067          	jr	t1

00000000800063dc <console_write>:
    800063dc:	ff010113          	addi	sp,sp,-16
    800063e0:	00813423          	sd	s0,8(sp)
    800063e4:	01010413          	addi	s0,sp,16
    800063e8:	00813403          	ld	s0,8(sp)
    800063ec:	00009317          	auipc	t1,0x9
    800063f0:	3ac33303          	ld	t1,940(t1) # 8000f798 <devsw+0x18>
    800063f4:	01010113          	addi	sp,sp,16
    800063f8:	00030067          	jr	t1

00000000800063fc <panic>:
    800063fc:	fe010113          	addi	sp,sp,-32
    80006400:	00113c23          	sd	ra,24(sp)
    80006404:	00813823          	sd	s0,16(sp)
    80006408:	00913423          	sd	s1,8(sp)
    8000640c:	02010413          	addi	s0,sp,32
    80006410:	00050493          	mv	s1,a0
    80006414:	00002517          	auipc	a0,0x2
    80006418:	11450513          	addi	a0,a0,276 # 80008528 <CONSOLE_STATUS+0x518>
    8000641c:	00009797          	auipc	a5,0x9
    80006420:	4007ae23          	sw	zero,1052(a5) # 8000f838 <pr+0x18>
    80006424:	00000097          	auipc	ra,0x0
    80006428:	034080e7          	jalr	52(ra) # 80006458 <__printf>
    8000642c:	00048513          	mv	a0,s1
    80006430:	00000097          	auipc	ra,0x0
    80006434:	028080e7          	jalr	40(ra) # 80006458 <__printf>
    80006438:	00002517          	auipc	a0,0x2
    8000643c:	cc050513          	addi	a0,a0,-832 # 800080f8 <CONSOLE_STATUS+0xe8>
    80006440:	00000097          	auipc	ra,0x0
    80006444:	018080e7          	jalr	24(ra) # 80006458 <__printf>
    80006448:	00100793          	li	a5,1
    8000644c:	00004717          	auipc	a4,0x4
    80006450:	08f72e23          	sw	a5,156(a4) # 8000a4e8 <panicked>
    80006454:	0000006f          	j	80006454 <panic+0x58>

0000000080006458 <__printf>:
    80006458:	f3010113          	addi	sp,sp,-208
    8000645c:	08813023          	sd	s0,128(sp)
    80006460:	07313423          	sd	s3,104(sp)
    80006464:	09010413          	addi	s0,sp,144
    80006468:	05813023          	sd	s8,64(sp)
    8000646c:	08113423          	sd	ra,136(sp)
    80006470:	06913c23          	sd	s1,120(sp)
    80006474:	07213823          	sd	s2,112(sp)
    80006478:	07413023          	sd	s4,96(sp)
    8000647c:	05513c23          	sd	s5,88(sp)
    80006480:	05613823          	sd	s6,80(sp)
    80006484:	05713423          	sd	s7,72(sp)
    80006488:	03913c23          	sd	s9,56(sp)
    8000648c:	03a13823          	sd	s10,48(sp)
    80006490:	03b13423          	sd	s11,40(sp)
    80006494:	00009317          	auipc	t1,0x9
    80006498:	38c30313          	addi	t1,t1,908 # 8000f820 <pr>
    8000649c:	01832c03          	lw	s8,24(t1)
    800064a0:	00b43423          	sd	a1,8(s0)
    800064a4:	00c43823          	sd	a2,16(s0)
    800064a8:	00d43c23          	sd	a3,24(s0)
    800064ac:	02e43023          	sd	a4,32(s0)
    800064b0:	02f43423          	sd	a5,40(s0)
    800064b4:	03043823          	sd	a6,48(s0)
    800064b8:	03143c23          	sd	a7,56(s0)
    800064bc:	00050993          	mv	s3,a0
    800064c0:	4a0c1663          	bnez	s8,8000696c <__printf+0x514>
    800064c4:	60098c63          	beqz	s3,80006adc <__printf+0x684>
    800064c8:	0009c503          	lbu	a0,0(s3)
    800064cc:	00840793          	addi	a5,s0,8
    800064d0:	f6f43c23          	sd	a5,-136(s0)
    800064d4:	00000493          	li	s1,0
    800064d8:	22050063          	beqz	a0,800066f8 <__printf+0x2a0>
    800064dc:	00002a37          	lui	s4,0x2
    800064e0:	00018ab7          	lui	s5,0x18
    800064e4:	000f4b37          	lui	s6,0xf4
    800064e8:	00989bb7          	lui	s7,0x989
    800064ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800064f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800064f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800064f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800064fc:	00148c9b          	addiw	s9,s1,1
    80006500:	02500793          	li	a5,37
    80006504:	01998933          	add	s2,s3,s9
    80006508:	38f51263          	bne	a0,a5,8000688c <__printf+0x434>
    8000650c:	00094783          	lbu	a5,0(s2)
    80006510:	00078c9b          	sext.w	s9,a5
    80006514:	1e078263          	beqz	a5,800066f8 <__printf+0x2a0>
    80006518:	0024849b          	addiw	s1,s1,2
    8000651c:	07000713          	li	a4,112
    80006520:	00998933          	add	s2,s3,s1
    80006524:	38e78a63          	beq	a5,a4,800068b8 <__printf+0x460>
    80006528:	20f76863          	bltu	a4,a5,80006738 <__printf+0x2e0>
    8000652c:	42a78863          	beq	a5,a0,8000695c <__printf+0x504>
    80006530:	06400713          	li	a4,100
    80006534:	40e79663          	bne	a5,a4,80006940 <__printf+0x4e8>
    80006538:	f7843783          	ld	a5,-136(s0)
    8000653c:	0007a603          	lw	a2,0(a5)
    80006540:	00878793          	addi	a5,a5,8
    80006544:	f6f43c23          	sd	a5,-136(s0)
    80006548:	42064a63          	bltz	a2,8000697c <__printf+0x524>
    8000654c:	00a00713          	li	a4,10
    80006550:	02e677bb          	remuw	a5,a2,a4
    80006554:	00002d97          	auipc	s11,0x2
    80006558:	ffcd8d93          	addi	s11,s11,-4 # 80008550 <digits>
    8000655c:	00900593          	li	a1,9
    80006560:	0006051b          	sext.w	a0,a2
    80006564:	00000c93          	li	s9,0
    80006568:	02079793          	slli	a5,a5,0x20
    8000656c:	0207d793          	srli	a5,a5,0x20
    80006570:	00fd87b3          	add	a5,s11,a5
    80006574:	0007c783          	lbu	a5,0(a5)
    80006578:	02e656bb          	divuw	a3,a2,a4
    8000657c:	f8f40023          	sb	a5,-128(s0)
    80006580:	14c5d863          	bge	a1,a2,800066d0 <__printf+0x278>
    80006584:	06300593          	li	a1,99
    80006588:	00100c93          	li	s9,1
    8000658c:	02e6f7bb          	remuw	a5,a3,a4
    80006590:	02079793          	slli	a5,a5,0x20
    80006594:	0207d793          	srli	a5,a5,0x20
    80006598:	00fd87b3          	add	a5,s11,a5
    8000659c:	0007c783          	lbu	a5,0(a5)
    800065a0:	02e6d73b          	divuw	a4,a3,a4
    800065a4:	f8f400a3          	sb	a5,-127(s0)
    800065a8:	12a5f463          	bgeu	a1,a0,800066d0 <__printf+0x278>
    800065ac:	00a00693          	li	a3,10
    800065b0:	00900593          	li	a1,9
    800065b4:	02d777bb          	remuw	a5,a4,a3
    800065b8:	02079793          	slli	a5,a5,0x20
    800065bc:	0207d793          	srli	a5,a5,0x20
    800065c0:	00fd87b3          	add	a5,s11,a5
    800065c4:	0007c503          	lbu	a0,0(a5)
    800065c8:	02d757bb          	divuw	a5,a4,a3
    800065cc:	f8a40123          	sb	a0,-126(s0)
    800065d0:	48e5f263          	bgeu	a1,a4,80006a54 <__printf+0x5fc>
    800065d4:	06300513          	li	a0,99
    800065d8:	02d7f5bb          	remuw	a1,a5,a3
    800065dc:	02059593          	slli	a1,a1,0x20
    800065e0:	0205d593          	srli	a1,a1,0x20
    800065e4:	00bd85b3          	add	a1,s11,a1
    800065e8:	0005c583          	lbu	a1,0(a1)
    800065ec:	02d7d7bb          	divuw	a5,a5,a3
    800065f0:	f8b401a3          	sb	a1,-125(s0)
    800065f4:	48e57263          	bgeu	a0,a4,80006a78 <__printf+0x620>
    800065f8:	3e700513          	li	a0,999
    800065fc:	02d7f5bb          	remuw	a1,a5,a3
    80006600:	02059593          	slli	a1,a1,0x20
    80006604:	0205d593          	srli	a1,a1,0x20
    80006608:	00bd85b3          	add	a1,s11,a1
    8000660c:	0005c583          	lbu	a1,0(a1)
    80006610:	02d7d7bb          	divuw	a5,a5,a3
    80006614:	f8b40223          	sb	a1,-124(s0)
    80006618:	46e57663          	bgeu	a0,a4,80006a84 <__printf+0x62c>
    8000661c:	02d7f5bb          	remuw	a1,a5,a3
    80006620:	02059593          	slli	a1,a1,0x20
    80006624:	0205d593          	srli	a1,a1,0x20
    80006628:	00bd85b3          	add	a1,s11,a1
    8000662c:	0005c583          	lbu	a1,0(a1)
    80006630:	02d7d7bb          	divuw	a5,a5,a3
    80006634:	f8b402a3          	sb	a1,-123(s0)
    80006638:	46ea7863          	bgeu	s4,a4,80006aa8 <__printf+0x650>
    8000663c:	02d7f5bb          	remuw	a1,a5,a3
    80006640:	02059593          	slli	a1,a1,0x20
    80006644:	0205d593          	srli	a1,a1,0x20
    80006648:	00bd85b3          	add	a1,s11,a1
    8000664c:	0005c583          	lbu	a1,0(a1)
    80006650:	02d7d7bb          	divuw	a5,a5,a3
    80006654:	f8b40323          	sb	a1,-122(s0)
    80006658:	3eeaf863          	bgeu	s5,a4,80006a48 <__printf+0x5f0>
    8000665c:	02d7f5bb          	remuw	a1,a5,a3
    80006660:	02059593          	slli	a1,a1,0x20
    80006664:	0205d593          	srli	a1,a1,0x20
    80006668:	00bd85b3          	add	a1,s11,a1
    8000666c:	0005c583          	lbu	a1,0(a1)
    80006670:	02d7d7bb          	divuw	a5,a5,a3
    80006674:	f8b403a3          	sb	a1,-121(s0)
    80006678:	42eb7e63          	bgeu	s6,a4,80006ab4 <__printf+0x65c>
    8000667c:	02d7f5bb          	remuw	a1,a5,a3
    80006680:	02059593          	slli	a1,a1,0x20
    80006684:	0205d593          	srli	a1,a1,0x20
    80006688:	00bd85b3          	add	a1,s11,a1
    8000668c:	0005c583          	lbu	a1,0(a1)
    80006690:	02d7d7bb          	divuw	a5,a5,a3
    80006694:	f8b40423          	sb	a1,-120(s0)
    80006698:	42ebfc63          	bgeu	s7,a4,80006ad0 <__printf+0x678>
    8000669c:	02079793          	slli	a5,a5,0x20
    800066a0:	0207d793          	srli	a5,a5,0x20
    800066a4:	00fd8db3          	add	s11,s11,a5
    800066a8:	000dc703          	lbu	a4,0(s11)
    800066ac:	00a00793          	li	a5,10
    800066b0:	00900c93          	li	s9,9
    800066b4:	f8e404a3          	sb	a4,-119(s0)
    800066b8:	00065c63          	bgez	a2,800066d0 <__printf+0x278>
    800066bc:	f9040713          	addi	a4,s0,-112
    800066c0:	00f70733          	add	a4,a4,a5
    800066c4:	02d00693          	li	a3,45
    800066c8:	fed70823          	sb	a3,-16(a4)
    800066cc:	00078c93          	mv	s9,a5
    800066d0:	f8040793          	addi	a5,s0,-128
    800066d4:	01978cb3          	add	s9,a5,s9
    800066d8:	f7f40d13          	addi	s10,s0,-129
    800066dc:	000cc503          	lbu	a0,0(s9)
    800066e0:	fffc8c93          	addi	s9,s9,-1
    800066e4:	00000097          	auipc	ra,0x0
    800066e8:	b90080e7          	jalr	-1136(ra) # 80006274 <consputc>
    800066ec:	ffac98e3          	bne	s9,s10,800066dc <__printf+0x284>
    800066f0:	00094503          	lbu	a0,0(s2)
    800066f4:	e00514e3          	bnez	a0,800064fc <__printf+0xa4>
    800066f8:	1a0c1663          	bnez	s8,800068a4 <__printf+0x44c>
    800066fc:	08813083          	ld	ra,136(sp)
    80006700:	08013403          	ld	s0,128(sp)
    80006704:	07813483          	ld	s1,120(sp)
    80006708:	07013903          	ld	s2,112(sp)
    8000670c:	06813983          	ld	s3,104(sp)
    80006710:	06013a03          	ld	s4,96(sp)
    80006714:	05813a83          	ld	s5,88(sp)
    80006718:	05013b03          	ld	s6,80(sp)
    8000671c:	04813b83          	ld	s7,72(sp)
    80006720:	04013c03          	ld	s8,64(sp)
    80006724:	03813c83          	ld	s9,56(sp)
    80006728:	03013d03          	ld	s10,48(sp)
    8000672c:	02813d83          	ld	s11,40(sp)
    80006730:	0d010113          	addi	sp,sp,208
    80006734:	00008067          	ret
    80006738:	07300713          	li	a4,115
    8000673c:	1ce78a63          	beq	a5,a4,80006910 <__printf+0x4b8>
    80006740:	07800713          	li	a4,120
    80006744:	1ee79e63          	bne	a5,a4,80006940 <__printf+0x4e8>
    80006748:	f7843783          	ld	a5,-136(s0)
    8000674c:	0007a703          	lw	a4,0(a5)
    80006750:	00878793          	addi	a5,a5,8
    80006754:	f6f43c23          	sd	a5,-136(s0)
    80006758:	28074263          	bltz	a4,800069dc <__printf+0x584>
    8000675c:	00002d97          	auipc	s11,0x2
    80006760:	df4d8d93          	addi	s11,s11,-524 # 80008550 <digits>
    80006764:	00f77793          	andi	a5,a4,15
    80006768:	00fd87b3          	add	a5,s11,a5
    8000676c:	0007c683          	lbu	a3,0(a5)
    80006770:	00f00613          	li	a2,15
    80006774:	0007079b          	sext.w	a5,a4
    80006778:	f8d40023          	sb	a3,-128(s0)
    8000677c:	0047559b          	srliw	a1,a4,0x4
    80006780:	0047569b          	srliw	a3,a4,0x4
    80006784:	00000c93          	li	s9,0
    80006788:	0ee65063          	bge	a2,a4,80006868 <__printf+0x410>
    8000678c:	00f6f693          	andi	a3,a3,15
    80006790:	00dd86b3          	add	a3,s11,a3
    80006794:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006798:	0087d79b          	srliw	a5,a5,0x8
    8000679c:	00100c93          	li	s9,1
    800067a0:	f8d400a3          	sb	a3,-127(s0)
    800067a4:	0cb67263          	bgeu	a2,a1,80006868 <__printf+0x410>
    800067a8:	00f7f693          	andi	a3,a5,15
    800067ac:	00dd86b3          	add	a3,s11,a3
    800067b0:	0006c583          	lbu	a1,0(a3)
    800067b4:	00f00613          	li	a2,15
    800067b8:	0047d69b          	srliw	a3,a5,0x4
    800067bc:	f8b40123          	sb	a1,-126(s0)
    800067c0:	0047d593          	srli	a1,a5,0x4
    800067c4:	28f67e63          	bgeu	a2,a5,80006a60 <__printf+0x608>
    800067c8:	00f6f693          	andi	a3,a3,15
    800067cc:	00dd86b3          	add	a3,s11,a3
    800067d0:	0006c503          	lbu	a0,0(a3)
    800067d4:	0087d813          	srli	a6,a5,0x8
    800067d8:	0087d69b          	srliw	a3,a5,0x8
    800067dc:	f8a401a3          	sb	a0,-125(s0)
    800067e0:	28b67663          	bgeu	a2,a1,80006a6c <__printf+0x614>
    800067e4:	00f6f693          	andi	a3,a3,15
    800067e8:	00dd86b3          	add	a3,s11,a3
    800067ec:	0006c583          	lbu	a1,0(a3)
    800067f0:	00c7d513          	srli	a0,a5,0xc
    800067f4:	00c7d69b          	srliw	a3,a5,0xc
    800067f8:	f8b40223          	sb	a1,-124(s0)
    800067fc:	29067a63          	bgeu	a2,a6,80006a90 <__printf+0x638>
    80006800:	00f6f693          	andi	a3,a3,15
    80006804:	00dd86b3          	add	a3,s11,a3
    80006808:	0006c583          	lbu	a1,0(a3)
    8000680c:	0107d813          	srli	a6,a5,0x10
    80006810:	0107d69b          	srliw	a3,a5,0x10
    80006814:	f8b402a3          	sb	a1,-123(s0)
    80006818:	28a67263          	bgeu	a2,a0,80006a9c <__printf+0x644>
    8000681c:	00f6f693          	andi	a3,a3,15
    80006820:	00dd86b3          	add	a3,s11,a3
    80006824:	0006c683          	lbu	a3,0(a3)
    80006828:	0147d79b          	srliw	a5,a5,0x14
    8000682c:	f8d40323          	sb	a3,-122(s0)
    80006830:	21067663          	bgeu	a2,a6,80006a3c <__printf+0x5e4>
    80006834:	02079793          	slli	a5,a5,0x20
    80006838:	0207d793          	srli	a5,a5,0x20
    8000683c:	00fd8db3          	add	s11,s11,a5
    80006840:	000dc683          	lbu	a3,0(s11)
    80006844:	00800793          	li	a5,8
    80006848:	00700c93          	li	s9,7
    8000684c:	f8d403a3          	sb	a3,-121(s0)
    80006850:	00075c63          	bgez	a4,80006868 <__printf+0x410>
    80006854:	f9040713          	addi	a4,s0,-112
    80006858:	00f70733          	add	a4,a4,a5
    8000685c:	02d00693          	li	a3,45
    80006860:	fed70823          	sb	a3,-16(a4)
    80006864:	00078c93          	mv	s9,a5
    80006868:	f8040793          	addi	a5,s0,-128
    8000686c:	01978cb3          	add	s9,a5,s9
    80006870:	f7f40d13          	addi	s10,s0,-129
    80006874:	000cc503          	lbu	a0,0(s9)
    80006878:	fffc8c93          	addi	s9,s9,-1
    8000687c:	00000097          	auipc	ra,0x0
    80006880:	9f8080e7          	jalr	-1544(ra) # 80006274 <consputc>
    80006884:	ff9d18e3          	bne	s10,s9,80006874 <__printf+0x41c>
    80006888:	0100006f          	j	80006898 <__printf+0x440>
    8000688c:	00000097          	auipc	ra,0x0
    80006890:	9e8080e7          	jalr	-1560(ra) # 80006274 <consputc>
    80006894:	000c8493          	mv	s1,s9
    80006898:	00094503          	lbu	a0,0(s2)
    8000689c:	c60510e3          	bnez	a0,800064fc <__printf+0xa4>
    800068a0:	e40c0ee3          	beqz	s8,800066fc <__printf+0x2a4>
    800068a4:	00009517          	auipc	a0,0x9
    800068a8:	f7c50513          	addi	a0,a0,-132 # 8000f820 <pr>
    800068ac:	00001097          	auipc	ra,0x1
    800068b0:	94c080e7          	jalr	-1716(ra) # 800071f8 <release>
    800068b4:	e49ff06f          	j	800066fc <__printf+0x2a4>
    800068b8:	f7843783          	ld	a5,-136(s0)
    800068bc:	03000513          	li	a0,48
    800068c0:	01000d13          	li	s10,16
    800068c4:	00878713          	addi	a4,a5,8
    800068c8:	0007bc83          	ld	s9,0(a5)
    800068cc:	f6e43c23          	sd	a4,-136(s0)
    800068d0:	00000097          	auipc	ra,0x0
    800068d4:	9a4080e7          	jalr	-1628(ra) # 80006274 <consputc>
    800068d8:	07800513          	li	a0,120
    800068dc:	00000097          	auipc	ra,0x0
    800068e0:	998080e7          	jalr	-1640(ra) # 80006274 <consputc>
    800068e4:	00002d97          	auipc	s11,0x2
    800068e8:	c6cd8d93          	addi	s11,s11,-916 # 80008550 <digits>
    800068ec:	03ccd793          	srli	a5,s9,0x3c
    800068f0:	00fd87b3          	add	a5,s11,a5
    800068f4:	0007c503          	lbu	a0,0(a5)
    800068f8:	fffd0d1b          	addiw	s10,s10,-1
    800068fc:	004c9c93          	slli	s9,s9,0x4
    80006900:	00000097          	auipc	ra,0x0
    80006904:	974080e7          	jalr	-1676(ra) # 80006274 <consputc>
    80006908:	fe0d12e3          	bnez	s10,800068ec <__printf+0x494>
    8000690c:	f8dff06f          	j	80006898 <__printf+0x440>
    80006910:	f7843783          	ld	a5,-136(s0)
    80006914:	0007bc83          	ld	s9,0(a5)
    80006918:	00878793          	addi	a5,a5,8
    8000691c:	f6f43c23          	sd	a5,-136(s0)
    80006920:	000c9a63          	bnez	s9,80006934 <__printf+0x4dc>
    80006924:	1080006f          	j	80006a2c <__printf+0x5d4>
    80006928:	001c8c93          	addi	s9,s9,1
    8000692c:	00000097          	auipc	ra,0x0
    80006930:	948080e7          	jalr	-1720(ra) # 80006274 <consputc>
    80006934:	000cc503          	lbu	a0,0(s9)
    80006938:	fe0518e3          	bnez	a0,80006928 <__printf+0x4d0>
    8000693c:	f5dff06f          	j	80006898 <__printf+0x440>
    80006940:	02500513          	li	a0,37
    80006944:	00000097          	auipc	ra,0x0
    80006948:	930080e7          	jalr	-1744(ra) # 80006274 <consputc>
    8000694c:	000c8513          	mv	a0,s9
    80006950:	00000097          	auipc	ra,0x0
    80006954:	924080e7          	jalr	-1756(ra) # 80006274 <consputc>
    80006958:	f41ff06f          	j	80006898 <__printf+0x440>
    8000695c:	02500513          	li	a0,37
    80006960:	00000097          	auipc	ra,0x0
    80006964:	914080e7          	jalr	-1772(ra) # 80006274 <consputc>
    80006968:	f31ff06f          	j	80006898 <__printf+0x440>
    8000696c:	00030513          	mv	a0,t1
    80006970:	00000097          	auipc	ra,0x0
    80006974:	7bc080e7          	jalr	1980(ra) # 8000712c <acquire>
    80006978:	b4dff06f          	j	800064c4 <__printf+0x6c>
    8000697c:	40c0053b          	negw	a0,a2
    80006980:	00a00713          	li	a4,10
    80006984:	02e576bb          	remuw	a3,a0,a4
    80006988:	00002d97          	auipc	s11,0x2
    8000698c:	bc8d8d93          	addi	s11,s11,-1080 # 80008550 <digits>
    80006990:	ff700593          	li	a1,-9
    80006994:	02069693          	slli	a3,a3,0x20
    80006998:	0206d693          	srli	a3,a3,0x20
    8000699c:	00dd86b3          	add	a3,s11,a3
    800069a0:	0006c683          	lbu	a3,0(a3)
    800069a4:	02e557bb          	divuw	a5,a0,a4
    800069a8:	f8d40023          	sb	a3,-128(s0)
    800069ac:	10b65e63          	bge	a2,a1,80006ac8 <__printf+0x670>
    800069b0:	06300593          	li	a1,99
    800069b4:	02e7f6bb          	remuw	a3,a5,a4
    800069b8:	02069693          	slli	a3,a3,0x20
    800069bc:	0206d693          	srli	a3,a3,0x20
    800069c0:	00dd86b3          	add	a3,s11,a3
    800069c4:	0006c683          	lbu	a3,0(a3)
    800069c8:	02e7d73b          	divuw	a4,a5,a4
    800069cc:	00200793          	li	a5,2
    800069d0:	f8d400a3          	sb	a3,-127(s0)
    800069d4:	bca5ece3          	bltu	a1,a0,800065ac <__printf+0x154>
    800069d8:	ce5ff06f          	j	800066bc <__printf+0x264>
    800069dc:	40e007bb          	negw	a5,a4
    800069e0:	00002d97          	auipc	s11,0x2
    800069e4:	b70d8d93          	addi	s11,s11,-1168 # 80008550 <digits>
    800069e8:	00f7f693          	andi	a3,a5,15
    800069ec:	00dd86b3          	add	a3,s11,a3
    800069f0:	0006c583          	lbu	a1,0(a3)
    800069f4:	ff100613          	li	a2,-15
    800069f8:	0047d69b          	srliw	a3,a5,0x4
    800069fc:	f8b40023          	sb	a1,-128(s0)
    80006a00:	0047d59b          	srliw	a1,a5,0x4
    80006a04:	0ac75e63          	bge	a4,a2,80006ac0 <__printf+0x668>
    80006a08:	00f6f693          	andi	a3,a3,15
    80006a0c:	00dd86b3          	add	a3,s11,a3
    80006a10:	0006c603          	lbu	a2,0(a3)
    80006a14:	00f00693          	li	a3,15
    80006a18:	0087d79b          	srliw	a5,a5,0x8
    80006a1c:	f8c400a3          	sb	a2,-127(s0)
    80006a20:	d8b6e4e3          	bltu	a3,a1,800067a8 <__printf+0x350>
    80006a24:	00200793          	li	a5,2
    80006a28:	e2dff06f          	j	80006854 <__printf+0x3fc>
    80006a2c:	00002c97          	auipc	s9,0x2
    80006a30:	b04c8c93          	addi	s9,s9,-1276 # 80008530 <CONSOLE_STATUS+0x520>
    80006a34:	02800513          	li	a0,40
    80006a38:	ef1ff06f          	j	80006928 <__printf+0x4d0>
    80006a3c:	00700793          	li	a5,7
    80006a40:	00600c93          	li	s9,6
    80006a44:	e0dff06f          	j	80006850 <__printf+0x3f8>
    80006a48:	00700793          	li	a5,7
    80006a4c:	00600c93          	li	s9,6
    80006a50:	c69ff06f          	j	800066b8 <__printf+0x260>
    80006a54:	00300793          	li	a5,3
    80006a58:	00200c93          	li	s9,2
    80006a5c:	c5dff06f          	j	800066b8 <__printf+0x260>
    80006a60:	00300793          	li	a5,3
    80006a64:	00200c93          	li	s9,2
    80006a68:	de9ff06f          	j	80006850 <__printf+0x3f8>
    80006a6c:	00400793          	li	a5,4
    80006a70:	00300c93          	li	s9,3
    80006a74:	dddff06f          	j	80006850 <__printf+0x3f8>
    80006a78:	00400793          	li	a5,4
    80006a7c:	00300c93          	li	s9,3
    80006a80:	c39ff06f          	j	800066b8 <__printf+0x260>
    80006a84:	00500793          	li	a5,5
    80006a88:	00400c93          	li	s9,4
    80006a8c:	c2dff06f          	j	800066b8 <__printf+0x260>
    80006a90:	00500793          	li	a5,5
    80006a94:	00400c93          	li	s9,4
    80006a98:	db9ff06f          	j	80006850 <__printf+0x3f8>
    80006a9c:	00600793          	li	a5,6
    80006aa0:	00500c93          	li	s9,5
    80006aa4:	dadff06f          	j	80006850 <__printf+0x3f8>
    80006aa8:	00600793          	li	a5,6
    80006aac:	00500c93          	li	s9,5
    80006ab0:	c09ff06f          	j	800066b8 <__printf+0x260>
    80006ab4:	00800793          	li	a5,8
    80006ab8:	00700c93          	li	s9,7
    80006abc:	bfdff06f          	j	800066b8 <__printf+0x260>
    80006ac0:	00100793          	li	a5,1
    80006ac4:	d91ff06f          	j	80006854 <__printf+0x3fc>
    80006ac8:	00100793          	li	a5,1
    80006acc:	bf1ff06f          	j	800066bc <__printf+0x264>
    80006ad0:	00900793          	li	a5,9
    80006ad4:	00800c93          	li	s9,8
    80006ad8:	be1ff06f          	j	800066b8 <__printf+0x260>
    80006adc:	00002517          	auipc	a0,0x2
    80006ae0:	a5c50513          	addi	a0,a0,-1444 # 80008538 <CONSOLE_STATUS+0x528>
    80006ae4:	00000097          	auipc	ra,0x0
    80006ae8:	918080e7          	jalr	-1768(ra) # 800063fc <panic>

0000000080006aec <printfinit>:
    80006aec:	fe010113          	addi	sp,sp,-32
    80006af0:	00813823          	sd	s0,16(sp)
    80006af4:	00913423          	sd	s1,8(sp)
    80006af8:	00113c23          	sd	ra,24(sp)
    80006afc:	02010413          	addi	s0,sp,32
    80006b00:	00009497          	auipc	s1,0x9
    80006b04:	d2048493          	addi	s1,s1,-736 # 8000f820 <pr>
    80006b08:	00048513          	mv	a0,s1
    80006b0c:	00002597          	auipc	a1,0x2
    80006b10:	a3c58593          	addi	a1,a1,-1476 # 80008548 <CONSOLE_STATUS+0x538>
    80006b14:	00000097          	auipc	ra,0x0
    80006b18:	5f4080e7          	jalr	1524(ra) # 80007108 <initlock>
    80006b1c:	01813083          	ld	ra,24(sp)
    80006b20:	01013403          	ld	s0,16(sp)
    80006b24:	0004ac23          	sw	zero,24(s1)
    80006b28:	00813483          	ld	s1,8(sp)
    80006b2c:	02010113          	addi	sp,sp,32
    80006b30:	00008067          	ret

0000000080006b34 <uartinit>:
    80006b34:	ff010113          	addi	sp,sp,-16
    80006b38:	00813423          	sd	s0,8(sp)
    80006b3c:	01010413          	addi	s0,sp,16
    80006b40:	100007b7          	lui	a5,0x10000
    80006b44:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006b48:	f8000713          	li	a4,-128
    80006b4c:	00e781a3          	sb	a4,3(a5)
    80006b50:	00300713          	li	a4,3
    80006b54:	00e78023          	sb	a4,0(a5)
    80006b58:	000780a3          	sb	zero,1(a5)
    80006b5c:	00e781a3          	sb	a4,3(a5)
    80006b60:	00700693          	li	a3,7
    80006b64:	00d78123          	sb	a3,2(a5)
    80006b68:	00e780a3          	sb	a4,1(a5)
    80006b6c:	00813403          	ld	s0,8(sp)
    80006b70:	01010113          	addi	sp,sp,16
    80006b74:	00008067          	ret

0000000080006b78 <uartputc>:
    80006b78:	00004797          	auipc	a5,0x4
    80006b7c:	9707a783          	lw	a5,-1680(a5) # 8000a4e8 <panicked>
    80006b80:	00078463          	beqz	a5,80006b88 <uartputc+0x10>
    80006b84:	0000006f          	j	80006b84 <uartputc+0xc>
    80006b88:	fd010113          	addi	sp,sp,-48
    80006b8c:	02813023          	sd	s0,32(sp)
    80006b90:	00913c23          	sd	s1,24(sp)
    80006b94:	01213823          	sd	s2,16(sp)
    80006b98:	01313423          	sd	s3,8(sp)
    80006b9c:	02113423          	sd	ra,40(sp)
    80006ba0:	03010413          	addi	s0,sp,48
    80006ba4:	00004917          	auipc	s2,0x4
    80006ba8:	94c90913          	addi	s2,s2,-1716 # 8000a4f0 <uart_tx_r>
    80006bac:	00093783          	ld	a5,0(s2)
    80006bb0:	00004497          	auipc	s1,0x4
    80006bb4:	94848493          	addi	s1,s1,-1720 # 8000a4f8 <uart_tx_w>
    80006bb8:	0004b703          	ld	a4,0(s1)
    80006bbc:	02078693          	addi	a3,a5,32
    80006bc0:	00050993          	mv	s3,a0
    80006bc4:	02e69c63          	bne	a3,a4,80006bfc <uartputc+0x84>
    80006bc8:	00001097          	auipc	ra,0x1
    80006bcc:	834080e7          	jalr	-1996(ra) # 800073fc <push_on>
    80006bd0:	00093783          	ld	a5,0(s2)
    80006bd4:	0004b703          	ld	a4,0(s1)
    80006bd8:	02078793          	addi	a5,a5,32
    80006bdc:	00e79463          	bne	a5,a4,80006be4 <uartputc+0x6c>
    80006be0:	0000006f          	j	80006be0 <uartputc+0x68>
    80006be4:	00001097          	auipc	ra,0x1
    80006be8:	88c080e7          	jalr	-1908(ra) # 80007470 <pop_on>
    80006bec:	00093783          	ld	a5,0(s2)
    80006bf0:	0004b703          	ld	a4,0(s1)
    80006bf4:	02078693          	addi	a3,a5,32
    80006bf8:	fce688e3          	beq	a3,a4,80006bc8 <uartputc+0x50>
    80006bfc:	01f77693          	andi	a3,a4,31
    80006c00:	00009597          	auipc	a1,0x9
    80006c04:	c4058593          	addi	a1,a1,-960 # 8000f840 <uart_tx_buf>
    80006c08:	00d586b3          	add	a3,a1,a3
    80006c0c:	00170713          	addi	a4,a4,1
    80006c10:	01368023          	sb	s3,0(a3)
    80006c14:	00e4b023          	sd	a4,0(s1)
    80006c18:	10000637          	lui	a2,0x10000
    80006c1c:	02f71063          	bne	a4,a5,80006c3c <uartputc+0xc4>
    80006c20:	0340006f          	j	80006c54 <uartputc+0xdc>
    80006c24:	00074703          	lbu	a4,0(a4)
    80006c28:	00f93023          	sd	a5,0(s2)
    80006c2c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006c30:	00093783          	ld	a5,0(s2)
    80006c34:	0004b703          	ld	a4,0(s1)
    80006c38:	00f70e63          	beq	a4,a5,80006c54 <uartputc+0xdc>
    80006c3c:	00564683          	lbu	a3,5(a2)
    80006c40:	01f7f713          	andi	a4,a5,31
    80006c44:	00e58733          	add	a4,a1,a4
    80006c48:	0206f693          	andi	a3,a3,32
    80006c4c:	00178793          	addi	a5,a5,1
    80006c50:	fc069ae3          	bnez	a3,80006c24 <uartputc+0xac>
    80006c54:	02813083          	ld	ra,40(sp)
    80006c58:	02013403          	ld	s0,32(sp)
    80006c5c:	01813483          	ld	s1,24(sp)
    80006c60:	01013903          	ld	s2,16(sp)
    80006c64:	00813983          	ld	s3,8(sp)
    80006c68:	03010113          	addi	sp,sp,48
    80006c6c:	00008067          	ret

0000000080006c70 <uartputc_sync>:
    80006c70:	ff010113          	addi	sp,sp,-16
    80006c74:	00813423          	sd	s0,8(sp)
    80006c78:	01010413          	addi	s0,sp,16
    80006c7c:	00004717          	auipc	a4,0x4
    80006c80:	86c72703          	lw	a4,-1940(a4) # 8000a4e8 <panicked>
    80006c84:	02071663          	bnez	a4,80006cb0 <uartputc_sync+0x40>
    80006c88:	00050793          	mv	a5,a0
    80006c8c:	100006b7          	lui	a3,0x10000
    80006c90:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006c94:	02077713          	andi	a4,a4,32
    80006c98:	fe070ce3          	beqz	a4,80006c90 <uartputc_sync+0x20>
    80006c9c:	0ff7f793          	andi	a5,a5,255
    80006ca0:	00f68023          	sb	a5,0(a3)
    80006ca4:	00813403          	ld	s0,8(sp)
    80006ca8:	01010113          	addi	sp,sp,16
    80006cac:	00008067          	ret
    80006cb0:	0000006f          	j	80006cb0 <uartputc_sync+0x40>

0000000080006cb4 <uartstart>:
    80006cb4:	ff010113          	addi	sp,sp,-16
    80006cb8:	00813423          	sd	s0,8(sp)
    80006cbc:	01010413          	addi	s0,sp,16
    80006cc0:	00004617          	auipc	a2,0x4
    80006cc4:	83060613          	addi	a2,a2,-2000 # 8000a4f0 <uart_tx_r>
    80006cc8:	00004517          	auipc	a0,0x4
    80006ccc:	83050513          	addi	a0,a0,-2000 # 8000a4f8 <uart_tx_w>
    80006cd0:	00063783          	ld	a5,0(a2)
    80006cd4:	00053703          	ld	a4,0(a0)
    80006cd8:	04f70263          	beq	a4,a5,80006d1c <uartstart+0x68>
    80006cdc:	100005b7          	lui	a1,0x10000
    80006ce0:	00009817          	auipc	a6,0x9
    80006ce4:	b6080813          	addi	a6,a6,-1184 # 8000f840 <uart_tx_buf>
    80006ce8:	01c0006f          	j	80006d04 <uartstart+0x50>
    80006cec:	0006c703          	lbu	a4,0(a3)
    80006cf0:	00f63023          	sd	a5,0(a2)
    80006cf4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006cf8:	00063783          	ld	a5,0(a2)
    80006cfc:	00053703          	ld	a4,0(a0)
    80006d00:	00f70e63          	beq	a4,a5,80006d1c <uartstart+0x68>
    80006d04:	01f7f713          	andi	a4,a5,31
    80006d08:	00e806b3          	add	a3,a6,a4
    80006d0c:	0055c703          	lbu	a4,5(a1)
    80006d10:	00178793          	addi	a5,a5,1
    80006d14:	02077713          	andi	a4,a4,32
    80006d18:	fc071ae3          	bnez	a4,80006cec <uartstart+0x38>
    80006d1c:	00813403          	ld	s0,8(sp)
    80006d20:	01010113          	addi	sp,sp,16
    80006d24:	00008067          	ret

0000000080006d28 <uartgetc>:
    80006d28:	ff010113          	addi	sp,sp,-16
    80006d2c:	00813423          	sd	s0,8(sp)
    80006d30:	01010413          	addi	s0,sp,16
    80006d34:	10000737          	lui	a4,0x10000
    80006d38:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006d3c:	0017f793          	andi	a5,a5,1
    80006d40:	00078c63          	beqz	a5,80006d58 <uartgetc+0x30>
    80006d44:	00074503          	lbu	a0,0(a4)
    80006d48:	0ff57513          	andi	a0,a0,255
    80006d4c:	00813403          	ld	s0,8(sp)
    80006d50:	01010113          	addi	sp,sp,16
    80006d54:	00008067          	ret
    80006d58:	fff00513          	li	a0,-1
    80006d5c:	ff1ff06f          	j	80006d4c <uartgetc+0x24>

0000000080006d60 <uartintr>:
    80006d60:	100007b7          	lui	a5,0x10000
    80006d64:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006d68:	0017f793          	andi	a5,a5,1
    80006d6c:	0a078463          	beqz	a5,80006e14 <uartintr+0xb4>
    80006d70:	fe010113          	addi	sp,sp,-32
    80006d74:	00813823          	sd	s0,16(sp)
    80006d78:	00913423          	sd	s1,8(sp)
    80006d7c:	00113c23          	sd	ra,24(sp)
    80006d80:	02010413          	addi	s0,sp,32
    80006d84:	100004b7          	lui	s1,0x10000
    80006d88:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006d8c:	0ff57513          	andi	a0,a0,255
    80006d90:	fffff097          	auipc	ra,0xfffff
    80006d94:	534080e7          	jalr	1332(ra) # 800062c4 <consoleintr>
    80006d98:	0054c783          	lbu	a5,5(s1)
    80006d9c:	0017f793          	andi	a5,a5,1
    80006da0:	fe0794e3          	bnez	a5,80006d88 <uartintr+0x28>
    80006da4:	00003617          	auipc	a2,0x3
    80006da8:	74c60613          	addi	a2,a2,1868 # 8000a4f0 <uart_tx_r>
    80006dac:	00003517          	auipc	a0,0x3
    80006db0:	74c50513          	addi	a0,a0,1868 # 8000a4f8 <uart_tx_w>
    80006db4:	00063783          	ld	a5,0(a2)
    80006db8:	00053703          	ld	a4,0(a0)
    80006dbc:	04f70263          	beq	a4,a5,80006e00 <uartintr+0xa0>
    80006dc0:	100005b7          	lui	a1,0x10000
    80006dc4:	00009817          	auipc	a6,0x9
    80006dc8:	a7c80813          	addi	a6,a6,-1412 # 8000f840 <uart_tx_buf>
    80006dcc:	01c0006f          	j	80006de8 <uartintr+0x88>
    80006dd0:	0006c703          	lbu	a4,0(a3)
    80006dd4:	00f63023          	sd	a5,0(a2)
    80006dd8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006ddc:	00063783          	ld	a5,0(a2)
    80006de0:	00053703          	ld	a4,0(a0)
    80006de4:	00f70e63          	beq	a4,a5,80006e00 <uartintr+0xa0>
    80006de8:	01f7f713          	andi	a4,a5,31
    80006dec:	00e806b3          	add	a3,a6,a4
    80006df0:	0055c703          	lbu	a4,5(a1)
    80006df4:	00178793          	addi	a5,a5,1
    80006df8:	02077713          	andi	a4,a4,32
    80006dfc:	fc071ae3          	bnez	a4,80006dd0 <uartintr+0x70>
    80006e00:	01813083          	ld	ra,24(sp)
    80006e04:	01013403          	ld	s0,16(sp)
    80006e08:	00813483          	ld	s1,8(sp)
    80006e0c:	02010113          	addi	sp,sp,32
    80006e10:	00008067          	ret
    80006e14:	00003617          	auipc	a2,0x3
    80006e18:	6dc60613          	addi	a2,a2,1756 # 8000a4f0 <uart_tx_r>
    80006e1c:	00003517          	auipc	a0,0x3
    80006e20:	6dc50513          	addi	a0,a0,1756 # 8000a4f8 <uart_tx_w>
    80006e24:	00063783          	ld	a5,0(a2)
    80006e28:	00053703          	ld	a4,0(a0)
    80006e2c:	04f70263          	beq	a4,a5,80006e70 <uartintr+0x110>
    80006e30:	100005b7          	lui	a1,0x10000
    80006e34:	00009817          	auipc	a6,0x9
    80006e38:	a0c80813          	addi	a6,a6,-1524 # 8000f840 <uart_tx_buf>
    80006e3c:	01c0006f          	j	80006e58 <uartintr+0xf8>
    80006e40:	0006c703          	lbu	a4,0(a3)
    80006e44:	00f63023          	sd	a5,0(a2)
    80006e48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006e4c:	00063783          	ld	a5,0(a2)
    80006e50:	00053703          	ld	a4,0(a0)
    80006e54:	02f70063          	beq	a4,a5,80006e74 <uartintr+0x114>
    80006e58:	01f7f713          	andi	a4,a5,31
    80006e5c:	00e806b3          	add	a3,a6,a4
    80006e60:	0055c703          	lbu	a4,5(a1)
    80006e64:	00178793          	addi	a5,a5,1
    80006e68:	02077713          	andi	a4,a4,32
    80006e6c:	fc071ae3          	bnez	a4,80006e40 <uartintr+0xe0>
    80006e70:	00008067          	ret
    80006e74:	00008067          	ret

0000000080006e78 <kinit>:
    80006e78:	fc010113          	addi	sp,sp,-64
    80006e7c:	02913423          	sd	s1,40(sp)
    80006e80:	fffff7b7          	lui	a5,0xfffff
    80006e84:	0000a497          	auipc	s1,0xa
    80006e88:	9db48493          	addi	s1,s1,-1573 # 8001085f <end+0xfff>
    80006e8c:	02813823          	sd	s0,48(sp)
    80006e90:	01313c23          	sd	s3,24(sp)
    80006e94:	00f4f4b3          	and	s1,s1,a5
    80006e98:	02113c23          	sd	ra,56(sp)
    80006e9c:	03213023          	sd	s2,32(sp)
    80006ea0:	01413823          	sd	s4,16(sp)
    80006ea4:	01513423          	sd	s5,8(sp)
    80006ea8:	04010413          	addi	s0,sp,64
    80006eac:	000017b7          	lui	a5,0x1
    80006eb0:	01100993          	li	s3,17
    80006eb4:	00f487b3          	add	a5,s1,a5
    80006eb8:	01b99993          	slli	s3,s3,0x1b
    80006ebc:	06f9e063          	bltu	s3,a5,80006f1c <kinit+0xa4>
    80006ec0:	00009a97          	auipc	s5,0x9
    80006ec4:	9a0a8a93          	addi	s5,s5,-1632 # 8000f860 <end>
    80006ec8:	0754ec63          	bltu	s1,s5,80006f40 <kinit+0xc8>
    80006ecc:	0734fa63          	bgeu	s1,s3,80006f40 <kinit+0xc8>
    80006ed0:	00088a37          	lui	s4,0x88
    80006ed4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006ed8:	00003917          	auipc	s2,0x3
    80006edc:	62890913          	addi	s2,s2,1576 # 8000a500 <kmem>
    80006ee0:	00ca1a13          	slli	s4,s4,0xc
    80006ee4:	0140006f          	j	80006ef8 <kinit+0x80>
    80006ee8:	000017b7          	lui	a5,0x1
    80006eec:	00f484b3          	add	s1,s1,a5
    80006ef0:	0554e863          	bltu	s1,s5,80006f40 <kinit+0xc8>
    80006ef4:	0534f663          	bgeu	s1,s3,80006f40 <kinit+0xc8>
    80006ef8:	00001637          	lui	a2,0x1
    80006efc:	00100593          	li	a1,1
    80006f00:	00048513          	mv	a0,s1
    80006f04:	00000097          	auipc	ra,0x0
    80006f08:	5e4080e7          	jalr	1508(ra) # 800074e8 <__memset>
    80006f0c:	00093783          	ld	a5,0(s2)
    80006f10:	00f4b023          	sd	a5,0(s1)
    80006f14:	00993023          	sd	s1,0(s2)
    80006f18:	fd4498e3          	bne	s1,s4,80006ee8 <kinit+0x70>
    80006f1c:	03813083          	ld	ra,56(sp)
    80006f20:	03013403          	ld	s0,48(sp)
    80006f24:	02813483          	ld	s1,40(sp)
    80006f28:	02013903          	ld	s2,32(sp)
    80006f2c:	01813983          	ld	s3,24(sp)
    80006f30:	01013a03          	ld	s4,16(sp)
    80006f34:	00813a83          	ld	s5,8(sp)
    80006f38:	04010113          	addi	sp,sp,64
    80006f3c:	00008067          	ret
    80006f40:	00001517          	auipc	a0,0x1
    80006f44:	62850513          	addi	a0,a0,1576 # 80008568 <digits+0x18>
    80006f48:	fffff097          	auipc	ra,0xfffff
    80006f4c:	4b4080e7          	jalr	1204(ra) # 800063fc <panic>

0000000080006f50 <freerange>:
    80006f50:	fc010113          	addi	sp,sp,-64
    80006f54:	000017b7          	lui	a5,0x1
    80006f58:	02913423          	sd	s1,40(sp)
    80006f5c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006f60:	009504b3          	add	s1,a0,s1
    80006f64:	fffff537          	lui	a0,0xfffff
    80006f68:	02813823          	sd	s0,48(sp)
    80006f6c:	02113c23          	sd	ra,56(sp)
    80006f70:	03213023          	sd	s2,32(sp)
    80006f74:	01313c23          	sd	s3,24(sp)
    80006f78:	01413823          	sd	s4,16(sp)
    80006f7c:	01513423          	sd	s5,8(sp)
    80006f80:	01613023          	sd	s6,0(sp)
    80006f84:	04010413          	addi	s0,sp,64
    80006f88:	00a4f4b3          	and	s1,s1,a0
    80006f8c:	00f487b3          	add	a5,s1,a5
    80006f90:	06f5e463          	bltu	a1,a5,80006ff8 <freerange+0xa8>
    80006f94:	00009a97          	auipc	s5,0x9
    80006f98:	8cca8a93          	addi	s5,s5,-1844 # 8000f860 <end>
    80006f9c:	0954e263          	bltu	s1,s5,80007020 <freerange+0xd0>
    80006fa0:	01100993          	li	s3,17
    80006fa4:	01b99993          	slli	s3,s3,0x1b
    80006fa8:	0734fc63          	bgeu	s1,s3,80007020 <freerange+0xd0>
    80006fac:	00058a13          	mv	s4,a1
    80006fb0:	00003917          	auipc	s2,0x3
    80006fb4:	55090913          	addi	s2,s2,1360 # 8000a500 <kmem>
    80006fb8:	00002b37          	lui	s6,0x2
    80006fbc:	0140006f          	j	80006fd0 <freerange+0x80>
    80006fc0:	000017b7          	lui	a5,0x1
    80006fc4:	00f484b3          	add	s1,s1,a5
    80006fc8:	0554ec63          	bltu	s1,s5,80007020 <freerange+0xd0>
    80006fcc:	0534fa63          	bgeu	s1,s3,80007020 <freerange+0xd0>
    80006fd0:	00001637          	lui	a2,0x1
    80006fd4:	00100593          	li	a1,1
    80006fd8:	00048513          	mv	a0,s1
    80006fdc:	00000097          	auipc	ra,0x0
    80006fe0:	50c080e7          	jalr	1292(ra) # 800074e8 <__memset>
    80006fe4:	00093703          	ld	a4,0(s2)
    80006fe8:	016487b3          	add	a5,s1,s6
    80006fec:	00e4b023          	sd	a4,0(s1)
    80006ff0:	00993023          	sd	s1,0(s2)
    80006ff4:	fcfa76e3          	bgeu	s4,a5,80006fc0 <freerange+0x70>
    80006ff8:	03813083          	ld	ra,56(sp)
    80006ffc:	03013403          	ld	s0,48(sp)
    80007000:	02813483          	ld	s1,40(sp)
    80007004:	02013903          	ld	s2,32(sp)
    80007008:	01813983          	ld	s3,24(sp)
    8000700c:	01013a03          	ld	s4,16(sp)
    80007010:	00813a83          	ld	s5,8(sp)
    80007014:	00013b03          	ld	s6,0(sp)
    80007018:	04010113          	addi	sp,sp,64
    8000701c:	00008067          	ret
    80007020:	00001517          	auipc	a0,0x1
    80007024:	54850513          	addi	a0,a0,1352 # 80008568 <digits+0x18>
    80007028:	fffff097          	auipc	ra,0xfffff
    8000702c:	3d4080e7          	jalr	980(ra) # 800063fc <panic>

0000000080007030 <kfree>:
    80007030:	fe010113          	addi	sp,sp,-32
    80007034:	00813823          	sd	s0,16(sp)
    80007038:	00113c23          	sd	ra,24(sp)
    8000703c:	00913423          	sd	s1,8(sp)
    80007040:	02010413          	addi	s0,sp,32
    80007044:	03451793          	slli	a5,a0,0x34
    80007048:	04079c63          	bnez	a5,800070a0 <kfree+0x70>
    8000704c:	00009797          	auipc	a5,0x9
    80007050:	81478793          	addi	a5,a5,-2028 # 8000f860 <end>
    80007054:	00050493          	mv	s1,a0
    80007058:	04f56463          	bltu	a0,a5,800070a0 <kfree+0x70>
    8000705c:	01100793          	li	a5,17
    80007060:	01b79793          	slli	a5,a5,0x1b
    80007064:	02f57e63          	bgeu	a0,a5,800070a0 <kfree+0x70>
    80007068:	00001637          	lui	a2,0x1
    8000706c:	00100593          	li	a1,1
    80007070:	00000097          	auipc	ra,0x0
    80007074:	478080e7          	jalr	1144(ra) # 800074e8 <__memset>
    80007078:	00003797          	auipc	a5,0x3
    8000707c:	48878793          	addi	a5,a5,1160 # 8000a500 <kmem>
    80007080:	0007b703          	ld	a4,0(a5)
    80007084:	01813083          	ld	ra,24(sp)
    80007088:	01013403          	ld	s0,16(sp)
    8000708c:	00e4b023          	sd	a4,0(s1)
    80007090:	0097b023          	sd	s1,0(a5)
    80007094:	00813483          	ld	s1,8(sp)
    80007098:	02010113          	addi	sp,sp,32
    8000709c:	00008067          	ret
    800070a0:	00001517          	auipc	a0,0x1
    800070a4:	4c850513          	addi	a0,a0,1224 # 80008568 <digits+0x18>
    800070a8:	fffff097          	auipc	ra,0xfffff
    800070ac:	354080e7          	jalr	852(ra) # 800063fc <panic>

00000000800070b0 <kalloc>:
    800070b0:	fe010113          	addi	sp,sp,-32
    800070b4:	00813823          	sd	s0,16(sp)
    800070b8:	00913423          	sd	s1,8(sp)
    800070bc:	00113c23          	sd	ra,24(sp)
    800070c0:	02010413          	addi	s0,sp,32
    800070c4:	00003797          	auipc	a5,0x3
    800070c8:	43c78793          	addi	a5,a5,1084 # 8000a500 <kmem>
    800070cc:	0007b483          	ld	s1,0(a5)
    800070d0:	02048063          	beqz	s1,800070f0 <kalloc+0x40>
    800070d4:	0004b703          	ld	a4,0(s1)
    800070d8:	00001637          	lui	a2,0x1
    800070dc:	00500593          	li	a1,5
    800070e0:	00048513          	mv	a0,s1
    800070e4:	00e7b023          	sd	a4,0(a5)
    800070e8:	00000097          	auipc	ra,0x0
    800070ec:	400080e7          	jalr	1024(ra) # 800074e8 <__memset>
    800070f0:	01813083          	ld	ra,24(sp)
    800070f4:	01013403          	ld	s0,16(sp)
    800070f8:	00048513          	mv	a0,s1
    800070fc:	00813483          	ld	s1,8(sp)
    80007100:	02010113          	addi	sp,sp,32
    80007104:	00008067          	ret

0000000080007108 <initlock>:
    80007108:	ff010113          	addi	sp,sp,-16
    8000710c:	00813423          	sd	s0,8(sp)
    80007110:	01010413          	addi	s0,sp,16
    80007114:	00813403          	ld	s0,8(sp)
    80007118:	00b53423          	sd	a1,8(a0)
    8000711c:	00052023          	sw	zero,0(a0)
    80007120:	00053823          	sd	zero,16(a0)
    80007124:	01010113          	addi	sp,sp,16
    80007128:	00008067          	ret

000000008000712c <acquire>:
    8000712c:	fe010113          	addi	sp,sp,-32
    80007130:	00813823          	sd	s0,16(sp)
    80007134:	00913423          	sd	s1,8(sp)
    80007138:	00113c23          	sd	ra,24(sp)
    8000713c:	01213023          	sd	s2,0(sp)
    80007140:	02010413          	addi	s0,sp,32
    80007144:	00050493          	mv	s1,a0
    80007148:	10002973          	csrr	s2,sstatus
    8000714c:	100027f3          	csrr	a5,sstatus
    80007150:	ffd7f793          	andi	a5,a5,-3
    80007154:	10079073          	csrw	sstatus,a5
    80007158:	fffff097          	auipc	ra,0xfffff
    8000715c:	8ec080e7          	jalr	-1812(ra) # 80005a44 <mycpu>
    80007160:	07852783          	lw	a5,120(a0)
    80007164:	06078e63          	beqz	a5,800071e0 <acquire+0xb4>
    80007168:	fffff097          	auipc	ra,0xfffff
    8000716c:	8dc080e7          	jalr	-1828(ra) # 80005a44 <mycpu>
    80007170:	07852783          	lw	a5,120(a0)
    80007174:	0004a703          	lw	a4,0(s1)
    80007178:	0017879b          	addiw	a5,a5,1
    8000717c:	06f52c23          	sw	a5,120(a0)
    80007180:	04071063          	bnez	a4,800071c0 <acquire+0x94>
    80007184:	00100713          	li	a4,1
    80007188:	00070793          	mv	a5,a4
    8000718c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007190:	0007879b          	sext.w	a5,a5
    80007194:	fe079ae3          	bnez	a5,80007188 <acquire+0x5c>
    80007198:	0ff0000f          	fence
    8000719c:	fffff097          	auipc	ra,0xfffff
    800071a0:	8a8080e7          	jalr	-1880(ra) # 80005a44 <mycpu>
    800071a4:	01813083          	ld	ra,24(sp)
    800071a8:	01013403          	ld	s0,16(sp)
    800071ac:	00a4b823          	sd	a0,16(s1)
    800071b0:	00013903          	ld	s2,0(sp)
    800071b4:	00813483          	ld	s1,8(sp)
    800071b8:	02010113          	addi	sp,sp,32
    800071bc:	00008067          	ret
    800071c0:	0104b903          	ld	s2,16(s1)
    800071c4:	fffff097          	auipc	ra,0xfffff
    800071c8:	880080e7          	jalr	-1920(ra) # 80005a44 <mycpu>
    800071cc:	faa91ce3          	bne	s2,a0,80007184 <acquire+0x58>
    800071d0:	00001517          	auipc	a0,0x1
    800071d4:	3a050513          	addi	a0,a0,928 # 80008570 <digits+0x20>
    800071d8:	fffff097          	auipc	ra,0xfffff
    800071dc:	224080e7          	jalr	548(ra) # 800063fc <panic>
    800071e0:	00195913          	srli	s2,s2,0x1
    800071e4:	fffff097          	auipc	ra,0xfffff
    800071e8:	860080e7          	jalr	-1952(ra) # 80005a44 <mycpu>
    800071ec:	00197913          	andi	s2,s2,1
    800071f0:	07252e23          	sw	s2,124(a0)
    800071f4:	f75ff06f          	j	80007168 <acquire+0x3c>

00000000800071f8 <release>:
    800071f8:	fe010113          	addi	sp,sp,-32
    800071fc:	00813823          	sd	s0,16(sp)
    80007200:	00113c23          	sd	ra,24(sp)
    80007204:	00913423          	sd	s1,8(sp)
    80007208:	01213023          	sd	s2,0(sp)
    8000720c:	02010413          	addi	s0,sp,32
    80007210:	00052783          	lw	a5,0(a0)
    80007214:	00079a63          	bnez	a5,80007228 <release+0x30>
    80007218:	00001517          	auipc	a0,0x1
    8000721c:	36050513          	addi	a0,a0,864 # 80008578 <digits+0x28>
    80007220:	fffff097          	auipc	ra,0xfffff
    80007224:	1dc080e7          	jalr	476(ra) # 800063fc <panic>
    80007228:	01053903          	ld	s2,16(a0)
    8000722c:	00050493          	mv	s1,a0
    80007230:	fffff097          	auipc	ra,0xfffff
    80007234:	814080e7          	jalr	-2028(ra) # 80005a44 <mycpu>
    80007238:	fea910e3          	bne	s2,a0,80007218 <release+0x20>
    8000723c:	0004b823          	sd	zero,16(s1)
    80007240:	0ff0000f          	fence
    80007244:	0f50000f          	fence	iorw,ow
    80007248:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000724c:	ffffe097          	auipc	ra,0xffffe
    80007250:	7f8080e7          	jalr	2040(ra) # 80005a44 <mycpu>
    80007254:	100027f3          	csrr	a5,sstatus
    80007258:	0027f793          	andi	a5,a5,2
    8000725c:	04079a63          	bnez	a5,800072b0 <release+0xb8>
    80007260:	07852783          	lw	a5,120(a0)
    80007264:	02f05e63          	blez	a5,800072a0 <release+0xa8>
    80007268:	fff7871b          	addiw	a4,a5,-1
    8000726c:	06e52c23          	sw	a4,120(a0)
    80007270:	00071c63          	bnez	a4,80007288 <release+0x90>
    80007274:	07c52783          	lw	a5,124(a0)
    80007278:	00078863          	beqz	a5,80007288 <release+0x90>
    8000727c:	100027f3          	csrr	a5,sstatus
    80007280:	0027e793          	ori	a5,a5,2
    80007284:	10079073          	csrw	sstatus,a5
    80007288:	01813083          	ld	ra,24(sp)
    8000728c:	01013403          	ld	s0,16(sp)
    80007290:	00813483          	ld	s1,8(sp)
    80007294:	00013903          	ld	s2,0(sp)
    80007298:	02010113          	addi	sp,sp,32
    8000729c:	00008067          	ret
    800072a0:	00001517          	auipc	a0,0x1
    800072a4:	2f850513          	addi	a0,a0,760 # 80008598 <digits+0x48>
    800072a8:	fffff097          	auipc	ra,0xfffff
    800072ac:	154080e7          	jalr	340(ra) # 800063fc <panic>
    800072b0:	00001517          	auipc	a0,0x1
    800072b4:	2d050513          	addi	a0,a0,720 # 80008580 <digits+0x30>
    800072b8:	fffff097          	auipc	ra,0xfffff
    800072bc:	144080e7          	jalr	324(ra) # 800063fc <panic>

00000000800072c0 <holding>:
    800072c0:	00052783          	lw	a5,0(a0)
    800072c4:	00079663          	bnez	a5,800072d0 <holding+0x10>
    800072c8:	00000513          	li	a0,0
    800072cc:	00008067          	ret
    800072d0:	fe010113          	addi	sp,sp,-32
    800072d4:	00813823          	sd	s0,16(sp)
    800072d8:	00913423          	sd	s1,8(sp)
    800072dc:	00113c23          	sd	ra,24(sp)
    800072e0:	02010413          	addi	s0,sp,32
    800072e4:	01053483          	ld	s1,16(a0)
    800072e8:	ffffe097          	auipc	ra,0xffffe
    800072ec:	75c080e7          	jalr	1884(ra) # 80005a44 <mycpu>
    800072f0:	01813083          	ld	ra,24(sp)
    800072f4:	01013403          	ld	s0,16(sp)
    800072f8:	40a48533          	sub	a0,s1,a0
    800072fc:	00153513          	seqz	a0,a0
    80007300:	00813483          	ld	s1,8(sp)
    80007304:	02010113          	addi	sp,sp,32
    80007308:	00008067          	ret

000000008000730c <push_off>:
    8000730c:	fe010113          	addi	sp,sp,-32
    80007310:	00813823          	sd	s0,16(sp)
    80007314:	00113c23          	sd	ra,24(sp)
    80007318:	00913423          	sd	s1,8(sp)
    8000731c:	02010413          	addi	s0,sp,32
    80007320:	100024f3          	csrr	s1,sstatus
    80007324:	100027f3          	csrr	a5,sstatus
    80007328:	ffd7f793          	andi	a5,a5,-3
    8000732c:	10079073          	csrw	sstatus,a5
    80007330:	ffffe097          	auipc	ra,0xffffe
    80007334:	714080e7          	jalr	1812(ra) # 80005a44 <mycpu>
    80007338:	07852783          	lw	a5,120(a0)
    8000733c:	02078663          	beqz	a5,80007368 <push_off+0x5c>
    80007340:	ffffe097          	auipc	ra,0xffffe
    80007344:	704080e7          	jalr	1796(ra) # 80005a44 <mycpu>
    80007348:	07852783          	lw	a5,120(a0)
    8000734c:	01813083          	ld	ra,24(sp)
    80007350:	01013403          	ld	s0,16(sp)
    80007354:	0017879b          	addiw	a5,a5,1
    80007358:	06f52c23          	sw	a5,120(a0)
    8000735c:	00813483          	ld	s1,8(sp)
    80007360:	02010113          	addi	sp,sp,32
    80007364:	00008067          	ret
    80007368:	0014d493          	srli	s1,s1,0x1
    8000736c:	ffffe097          	auipc	ra,0xffffe
    80007370:	6d8080e7          	jalr	1752(ra) # 80005a44 <mycpu>
    80007374:	0014f493          	andi	s1,s1,1
    80007378:	06952e23          	sw	s1,124(a0)
    8000737c:	fc5ff06f          	j	80007340 <push_off+0x34>

0000000080007380 <pop_off>:
    80007380:	ff010113          	addi	sp,sp,-16
    80007384:	00813023          	sd	s0,0(sp)
    80007388:	00113423          	sd	ra,8(sp)
    8000738c:	01010413          	addi	s0,sp,16
    80007390:	ffffe097          	auipc	ra,0xffffe
    80007394:	6b4080e7          	jalr	1716(ra) # 80005a44 <mycpu>
    80007398:	100027f3          	csrr	a5,sstatus
    8000739c:	0027f793          	andi	a5,a5,2
    800073a0:	04079663          	bnez	a5,800073ec <pop_off+0x6c>
    800073a4:	07852783          	lw	a5,120(a0)
    800073a8:	02f05a63          	blez	a5,800073dc <pop_off+0x5c>
    800073ac:	fff7871b          	addiw	a4,a5,-1
    800073b0:	06e52c23          	sw	a4,120(a0)
    800073b4:	00071c63          	bnez	a4,800073cc <pop_off+0x4c>
    800073b8:	07c52783          	lw	a5,124(a0)
    800073bc:	00078863          	beqz	a5,800073cc <pop_off+0x4c>
    800073c0:	100027f3          	csrr	a5,sstatus
    800073c4:	0027e793          	ori	a5,a5,2
    800073c8:	10079073          	csrw	sstatus,a5
    800073cc:	00813083          	ld	ra,8(sp)
    800073d0:	00013403          	ld	s0,0(sp)
    800073d4:	01010113          	addi	sp,sp,16
    800073d8:	00008067          	ret
    800073dc:	00001517          	auipc	a0,0x1
    800073e0:	1bc50513          	addi	a0,a0,444 # 80008598 <digits+0x48>
    800073e4:	fffff097          	auipc	ra,0xfffff
    800073e8:	018080e7          	jalr	24(ra) # 800063fc <panic>
    800073ec:	00001517          	auipc	a0,0x1
    800073f0:	19450513          	addi	a0,a0,404 # 80008580 <digits+0x30>
    800073f4:	fffff097          	auipc	ra,0xfffff
    800073f8:	008080e7          	jalr	8(ra) # 800063fc <panic>

00000000800073fc <push_on>:
    800073fc:	fe010113          	addi	sp,sp,-32
    80007400:	00813823          	sd	s0,16(sp)
    80007404:	00113c23          	sd	ra,24(sp)
    80007408:	00913423          	sd	s1,8(sp)
    8000740c:	02010413          	addi	s0,sp,32
    80007410:	100024f3          	csrr	s1,sstatus
    80007414:	100027f3          	csrr	a5,sstatus
    80007418:	0027e793          	ori	a5,a5,2
    8000741c:	10079073          	csrw	sstatus,a5
    80007420:	ffffe097          	auipc	ra,0xffffe
    80007424:	624080e7          	jalr	1572(ra) # 80005a44 <mycpu>
    80007428:	07852783          	lw	a5,120(a0)
    8000742c:	02078663          	beqz	a5,80007458 <push_on+0x5c>
    80007430:	ffffe097          	auipc	ra,0xffffe
    80007434:	614080e7          	jalr	1556(ra) # 80005a44 <mycpu>
    80007438:	07852783          	lw	a5,120(a0)
    8000743c:	01813083          	ld	ra,24(sp)
    80007440:	01013403          	ld	s0,16(sp)
    80007444:	0017879b          	addiw	a5,a5,1
    80007448:	06f52c23          	sw	a5,120(a0)
    8000744c:	00813483          	ld	s1,8(sp)
    80007450:	02010113          	addi	sp,sp,32
    80007454:	00008067          	ret
    80007458:	0014d493          	srli	s1,s1,0x1
    8000745c:	ffffe097          	auipc	ra,0xffffe
    80007460:	5e8080e7          	jalr	1512(ra) # 80005a44 <mycpu>
    80007464:	0014f493          	andi	s1,s1,1
    80007468:	06952e23          	sw	s1,124(a0)
    8000746c:	fc5ff06f          	j	80007430 <push_on+0x34>

0000000080007470 <pop_on>:
    80007470:	ff010113          	addi	sp,sp,-16
    80007474:	00813023          	sd	s0,0(sp)
    80007478:	00113423          	sd	ra,8(sp)
    8000747c:	01010413          	addi	s0,sp,16
    80007480:	ffffe097          	auipc	ra,0xffffe
    80007484:	5c4080e7          	jalr	1476(ra) # 80005a44 <mycpu>
    80007488:	100027f3          	csrr	a5,sstatus
    8000748c:	0027f793          	andi	a5,a5,2
    80007490:	04078463          	beqz	a5,800074d8 <pop_on+0x68>
    80007494:	07852783          	lw	a5,120(a0)
    80007498:	02f05863          	blez	a5,800074c8 <pop_on+0x58>
    8000749c:	fff7879b          	addiw	a5,a5,-1
    800074a0:	06f52c23          	sw	a5,120(a0)
    800074a4:	07853783          	ld	a5,120(a0)
    800074a8:	00079863          	bnez	a5,800074b8 <pop_on+0x48>
    800074ac:	100027f3          	csrr	a5,sstatus
    800074b0:	ffd7f793          	andi	a5,a5,-3
    800074b4:	10079073          	csrw	sstatus,a5
    800074b8:	00813083          	ld	ra,8(sp)
    800074bc:	00013403          	ld	s0,0(sp)
    800074c0:	01010113          	addi	sp,sp,16
    800074c4:	00008067          	ret
    800074c8:	00001517          	auipc	a0,0x1
    800074cc:	0f850513          	addi	a0,a0,248 # 800085c0 <digits+0x70>
    800074d0:	fffff097          	auipc	ra,0xfffff
    800074d4:	f2c080e7          	jalr	-212(ra) # 800063fc <panic>
    800074d8:	00001517          	auipc	a0,0x1
    800074dc:	0c850513          	addi	a0,a0,200 # 800085a0 <digits+0x50>
    800074e0:	fffff097          	auipc	ra,0xfffff
    800074e4:	f1c080e7          	jalr	-228(ra) # 800063fc <panic>

00000000800074e8 <__memset>:
    800074e8:	ff010113          	addi	sp,sp,-16
    800074ec:	00813423          	sd	s0,8(sp)
    800074f0:	01010413          	addi	s0,sp,16
    800074f4:	1a060e63          	beqz	a2,800076b0 <__memset+0x1c8>
    800074f8:	40a007b3          	neg	a5,a0
    800074fc:	0077f793          	andi	a5,a5,7
    80007500:	00778693          	addi	a3,a5,7
    80007504:	00b00813          	li	a6,11
    80007508:	0ff5f593          	andi	a1,a1,255
    8000750c:	fff6071b          	addiw	a4,a2,-1
    80007510:	1b06e663          	bltu	a3,a6,800076bc <__memset+0x1d4>
    80007514:	1cd76463          	bltu	a4,a3,800076dc <__memset+0x1f4>
    80007518:	1a078e63          	beqz	a5,800076d4 <__memset+0x1ec>
    8000751c:	00b50023          	sb	a1,0(a0)
    80007520:	00100713          	li	a4,1
    80007524:	1ae78463          	beq	a5,a4,800076cc <__memset+0x1e4>
    80007528:	00b500a3          	sb	a1,1(a0)
    8000752c:	00200713          	li	a4,2
    80007530:	1ae78a63          	beq	a5,a4,800076e4 <__memset+0x1fc>
    80007534:	00b50123          	sb	a1,2(a0)
    80007538:	00300713          	li	a4,3
    8000753c:	18e78463          	beq	a5,a4,800076c4 <__memset+0x1dc>
    80007540:	00b501a3          	sb	a1,3(a0)
    80007544:	00400713          	li	a4,4
    80007548:	1ae78263          	beq	a5,a4,800076ec <__memset+0x204>
    8000754c:	00b50223          	sb	a1,4(a0)
    80007550:	00500713          	li	a4,5
    80007554:	1ae78063          	beq	a5,a4,800076f4 <__memset+0x20c>
    80007558:	00b502a3          	sb	a1,5(a0)
    8000755c:	00700713          	li	a4,7
    80007560:	18e79e63          	bne	a5,a4,800076fc <__memset+0x214>
    80007564:	00b50323          	sb	a1,6(a0)
    80007568:	00700e93          	li	t4,7
    8000756c:	00859713          	slli	a4,a1,0x8
    80007570:	00e5e733          	or	a4,a1,a4
    80007574:	01059e13          	slli	t3,a1,0x10
    80007578:	01c76e33          	or	t3,a4,t3
    8000757c:	01859313          	slli	t1,a1,0x18
    80007580:	006e6333          	or	t1,t3,t1
    80007584:	02059893          	slli	a7,a1,0x20
    80007588:	40f60e3b          	subw	t3,a2,a5
    8000758c:	011368b3          	or	a7,t1,a7
    80007590:	02859813          	slli	a6,a1,0x28
    80007594:	0108e833          	or	a6,a7,a6
    80007598:	03059693          	slli	a3,a1,0x30
    8000759c:	003e589b          	srliw	a7,t3,0x3
    800075a0:	00d866b3          	or	a3,a6,a3
    800075a4:	03859713          	slli	a4,a1,0x38
    800075a8:	00389813          	slli	a6,a7,0x3
    800075ac:	00f507b3          	add	a5,a0,a5
    800075b0:	00e6e733          	or	a4,a3,a4
    800075b4:	000e089b          	sext.w	a7,t3
    800075b8:	00f806b3          	add	a3,a6,a5
    800075bc:	00e7b023          	sd	a4,0(a5)
    800075c0:	00878793          	addi	a5,a5,8
    800075c4:	fed79ce3          	bne	a5,a3,800075bc <__memset+0xd4>
    800075c8:	ff8e7793          	andi	a5,t3,-8
    800075cc:	0007871b          	sext.w	a4,a5
    800075d0:	01d787bb          	addw	a5,a5,t4
    800075d4:	0ce88e63          	beq	a7,a4,800076b0 <__memset+0x1c8>
    800075d8:	00f50733          	add	a4,a0,a5
    800075dc:	00b70023          	sb	a1,0(a4)
    800075e0:	0017871b          	addiw	a4,a5,1
    800075e4:	0cc77663          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    800075e8:	00e50733          	add	a4,a0,a4
    800075ec:	00b70023          	sb	a1,0(a4)
    800075f0:	0027871b          	addiw	a4,a5,2
    800075f4:	0ac77e63          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    800075f8:	00e50733          	add	a4,a0,a4
    800075fc:	00b70023          	sb	a1,0(a4)
    80007600:	0037871b          	addiw	a4,a5,3
    80007604:	0ac77663          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007608:	00e50733          	add	a4,a0,a4
    8000760c:	00b70023          	sb	a1,0(a4)
    80007610:	0047871b          	addiw	a4,a5,4
    80007614:	08c77e63          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007618:	00e50733          	add	a4,a0,a4
    8000761c:	00b70023          	sb	a1,0(a4)
    80007620:	0057871b          	addiw	a4,a5,5
    80007624:	08c77663          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007628:	00e50733          	add	a4,a0,a4
    8000762c:	00b70023          	sb	a1,0(a4)
    80007630:	0067871b          	addiw	a4,a5,6
    80007634:	06c77e63          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007638:	00e50733          	add	a4,a0,a4
    8000763c:	00b70023          	sb	a1,0(a4)
    80007640:	0077871b          	addiw	a4,a5,7
    80007644:	06c77663          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007648:	00e50733          	add	a4,a0,a4
    8000764c:	00b70023          	sb	a1,0(a4)
    80007650:	0087871b          	addiw	a4,a5,8
    80007654:	04c77e63          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007658:	00e50733          	add	a4,a0,a4
    8000765c:	00b70023          	sb	a1,0(a4)
    80007660:	0097871b          	addiw	a4,a5,9
    80007664:	04c77663          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007668:	00e50733          	add	a4,a0,a4
    8000766c:	00b70023          	sb	a1,0(a4)
    80007670:	00a7871b          	addiw	a4,a5,10
    80007674:	02c77e63          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007678:	00e50733          	add	a4,a0,a4
    8000767c:	00b70023          	sb	a1,0(a4)
    80007680:	00b7871b          	addiw	a4,a5,11
    80007684:	02c77663          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007688:	00e50733          	add	a4,a0,a4
    8000768c:	00b70023          	sb	a1,0(a4)
    80007690:	00c7871b          	addiw	a4,a5,12
    80007694:	00c77e63          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007698:	00e50733          	add	a4,a0,a4
    8000769c:	00b70023          	sb	a1,0(a4)
    800076a0:	00d7879b          	addiw	a5,a5,13
    800076a4:	00c7f663          	bgeu	a5,a2,800076b0 <__memset+0x1c8>
    800076a8:	00f507b3          	add	a5,a0,a5
    800076ac:	00b78023          	sb	a1,0(a5)
    800076b0:	00813403          	ld	s0,8(sp)
    800076b4:	01010113          	addi	sp,sp,16
    800076b8:	00008067          	ret
    800076bc:	00b00693          	li	a3,11
    800076c0:	e55ff06f          	j	80007514 <__memset+0x2c>
    800076c4:	00300e93          	li	t4,3
    800076c8:	ea5ff06f          	j	8000756c <__memset+0x84>
    800076cc:	00100e93          	li	t4,1
    800076d0:	e9dff06f          	j	8000756c <__memset+0x84>
    800076d4:	00000e93          	li	t4,0
    800076d8:	e95ff06f          	j	8000756c <__memset+0x84>
    800076dc:	00000793          	li	a5,0
    800076e0:	ef9ff06f          	j	800075d8 <__memset+0xf0>
    800076e4:	00200e93          	li	t4,2
    800076e8:	e85ff06f          	j	8000756c <__memset+0x84>
    800076ec:	00400e93          	li	t4,4
    800076f0:	e7dff06f          	j	8000756c <__memset+0x84>
    800076f4:	00500e93          	li	t4,5
    800076f8:	e75ff06f          	j	8000756c <__memset+0x84>
    800076fc:	00600e93          	li	t4,6
    80007700:	e6dff06f          	j	8000756c <__memset+0x84>

0000000080007704 <__memmove>:
    80007704:	ff010113          	addi	sp,sp,-16
    80007708:	00813423          	sd	s0,8(sp)
    8000770c:	01010413          	addi	s0,sp,16
    80007710:	0e060863          	beqz	a2,80007800 <__memmove+0xfc>
    80007714:	fff6069b          	addiw	a3,a2,-1
    80007718:	0006881b          	sext.w	a6,a3
    8000771c:	0ea5e863          	bltu	a1,a0,8000780c <__memmove+0x108>
    80007720:	00758713          	addi	a4,a1,7
    80007724:	00a5e7b3          	or	a5,a1,a0
    80007728:	40a70733          	sub	a4,a4,a0
    8000772c:	0077f793          	andi	a5,a5,7
    80007730:	00f73713          	sltiu	a4,a4,15
    80007734:	00174713          	xori	a4,a4,1
    80007738:	0017b793          	seqz	a5,a5
    8000773c:	00e7f7b3          	and	a5,a5,a4
    80007740:	10078863          	beqz	a5,80007850 <__memmove+0x14c>
    80007744:	00900793          	li	a5,9
    80007748:	1107f463          	bgeu	a5,a6,80007850 <__memmove+0x14c>
    8000774c:	0036581b          	srliw	a6,a2,0x3
    80007750:	fff8081b          	addiw	a6,a6,-1
    80007754:	02081813          	slli	a6,a6,0x20
    80007758:	01d85893          	srli	a7,a6,0x1d
    8000775c:	00858813          	addi	a6,a1,8
    80007760:	00058793          	mv	a5,a1
    80007764:	00050713          	mv	a4,a0
    80007768:	01088833          	add	a6,a7,a6
    8000776c:	0007b883          	ld	a7,0(a5)
    80007770:	00878793          	addi	a5,a5,8
    80007774:	00870713          	addi	a4,a4,8
    80007778:	ff173c23          	sd	a7,-8(a4)
    8000777c:	ff0798e3          	bne	a5,a6,8000776c <__memmove+0x68>
    80007780:	ff867713          	andi	a4,a2,-8
    80007784:	02071793          	slli	a5,a4,0x20
    80007788:	0207d793          	srli	a5,a5,0x20
    8000778c:	00f585b3          	add	a1,a1,a5
    80007790:	40e686bb          	subw	a3,a3,a4
    80007794:	00f507b3          	add	a5,a0,a5
    80007798:	06e60463          	beq	a2,a4,80007800 <__memmove+0xfc>
    8000779c:	0005c703          	lbu	a4,0(a1)
    800077a0:	00e78023          	sb	a4,0(a5)
    800077a4:	04068e63          	beqz	a3,80007800 <__memmove+0xfc>
    800077a8:	0015c603          	lbu	a2,1(a1)
    800077ac:	00100713          	li	a4,1
    800077b0:	00c780a3          	sb	a2,1(a5)
    800077b4:	04e68663          	beq	a3,a4,80007800 <__memmove+0xfc>
    800077b8:	0025c603          	lbu	a2,2(a1)
    800077bc:	00200713          	li	a4,2
    800077c0:	00c78123          	sb	a2,2(a5)
    800077c4:	02e68e63          	beq	a3,a4,80007800 <__memmove+0xfc>
    800077c8:	0035c603          	lbu	a2,3(a1)
    800077cc:	00300713          	li	a4,3
    800077d0:	00c781a3          	sb	a2,3(a5)
    800077d4:	02e68663          	beq	a3,a4,80007800 <__memmove+0xfc>
    800077d8:	0045c603          	lbu	a2,4(a1)
    800077dc:	00400713          	li	a4,4
    800077e0:	00c78223          	sb	a2,4(a5)
    800077e4:	00e68e63          	beq	a3,a4,80007800 <__memmove+0xfc>
    800077e8:	0055c603          	lbu	a2,5(a1)
    800077ec:	00500713          	li	a4,5
    800077f0:	00c782a3          	sb	a2,5(a5)
    800077f4:	00e68663          	beq	a3,a4,80007800 <__memmove+0xfc>
    800077f8:	0065c703          	lbu	a4,6(a1)
    800077fc:	00e78323          	sb	a4,6(a5)
    80007800:	00813403          	ld	s0,8(sp)
    80007804:	01010113          	addi	sp,sp,16
    80007808:	00008067          	ret
    8000780c:	02061713          	slli	a4,a2,0x20
    80007810:	02075713          	srli	a4,a4,0x20
    80007814:	00e587b3          	add	a5,a1,a4
    80007818:	f0f574e3          	bgeu	a0,a5,80007720 <__memmove+0x1c>
    8000781c:	02069613          	slli	a2,a3,0x20
    80007820:	02065613          	srli	a2,a2,0x20
    80007824:	fff64613          	not	a2,a2
    80007828:	00e50733          	add	a4,a0,a4
    8000782c:	00c78633          	add	a2,a5,a2
    80007830:	fff7c683          	lbu	a3,-1(a5)
    80007834:	fff78793          	addi	a5,a5,-1
    80007838:	fff70713          	addi	a4,a4,-1
    8000783c:	00d70023          	sb	a3,0(a4)
    80007840:	fec798e3          	bne	a5,a2,80007830 <__memmove+0x12c>
    80007844:	00813403          	ld	s0,8(sp)
    80007848:	01010113          	addi	sp,sp,16
    8000784c:	00008067          	ret
    80007850:	02069713          	slli	a4,a3,0x20
    80007854:	02075713          	srli	a4,a4,0x20
    80007858:	00170713          	addi	a4,a4,1
    8000785c:	00e50733          	add	a4,a0,a4
    80007860:	00050793          	mv	a5,a0
    80007864:	0005c683          	lbu	a3,0(a1)
    80007868:	00178793          	addi	a5,a5,1
    8000786c:	00158593          	addi	a1,a1,1
    80007870:	fed78fa3          	sb	a3,-1(a5)
    80007874:	fee798e3          	bne	a5,a4,80007864 <__memmove+0x160>
    80007878:	f89ff06f          	j	80007800 <__memmove+0xfc>
	...
