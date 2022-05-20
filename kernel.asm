
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	49013103          	ld	sp,1168(sp) # 8000a490 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1bd050ef          	jal	ra,800059d8 <start>

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
    80001080:	240020ef          	jal	ra,800032c0 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001208 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001208:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000120c:	00b29a63          	bne	t0,a1,80001220 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001210:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001214:	fe029ae3          	bnez	t0,80001208 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001218:	00000513          	li	a0,0
    jr ra                  # Return.
    8000121c:	00008067          	ret

0000000080001220 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001220:	00100513          	li	a0,1
    80001224:	00008067          	ret

0000000080001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001228:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000122c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001230:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001234:	0085b083          	ld	ra,8(a1)

    ret
    80001238:	00008067          	ret

000000008000123c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000123c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001240:	00853083          	ld	ra,8(a0)

    80001244:	00008067          	ret

0000000080001248 <mem_alloc>:

#ifdef __cplusplus
extern "C"
#endif
void* mem_alloc(size_t size)
{
    80001248:	ff010113          	addi	sp,sp,-16
    8000124c:	00813423          	sd	s0,8(sp)
    80001250:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001254:	03f50513          	addi	a0,a0,63
    80001258:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    8000125c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80001260:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80001264:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80001268:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    8000126c:	00813403          	ld	s0,8(sp)
    80001270:	01010113          	addi	sp,sp,16
    80001274:	00008067          	ret

0000000080001278 <mem_free>:

#ifdef __cplusplus
extern "C"
#endif
int mem_free(void* p)
{
    80001278:	ff010113          	addi	sp,sp,-16
    8000127c:	00813423          	sd	s0,8(sp)
    80001280:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80001284:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    80001288:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    8000128c:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001290:	00050513          	mv	a0,a0

    return result;
}
    80001294:	0005051b          	sext.w	a0,a0
    80001298:	00813403          	ld	s0,8(sp)
    8000129c:	01010113          	addi	sp,sp,16
    800012a0:	00008067          	ret

00000000800012a4 <thread_create>:

#ifdef __cplusplus
extern "C"
#endif
int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    800012a4:	fd010113          	addi	sp,sp,-48
    800012a8:	02113423          	sd	ra,40(sp)
    800012ac:	02813023          	sd	s0,32(sp)
    800012b0:	00913c23          	sd	s1,24(sp)
    800012b4:	01213823          	sd	s2,16(sp)
    800012b8:	01313423          	sd	s3,8(sp)
    800012bc:	03010413          	addi	s0,sp,48
    800012c0:	00050493          	mv	s1,a0
    800012c4:	00058913          	mv	s2,a1
    800012c8:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800012cc:	00001537          	lui	a0,0x1
    800012d0:	00000097          	auipc	ra,0x0
    800012d4:	f78080e7          	jalr	-136(ra) # 80001248 <mem_alloc>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    800012d8:	04050263          	beqz	a0,8000131c <thread_create+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800012dc:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800012e0:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800012e4:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800012e8:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800012ec:	01100793          	li	a5,17
    800012f0:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    800012f4:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800012f8:	00050513          	mv	a0,a0

    return result;
    800012fc:	0005051b          	sext.w	a0,a0
}
    80001300:	02813083          	ld	ra,40(sp)
    80001304:	02013403          	ld	s0,32(sp)
    80001308:	01813483          	ld	s1,24(sp)
    8000130c:	01013903          	ld	s2,16(sp)
    80001310:	00813983          	ld	s3,8(sp)
    80001314:	03010113          	addi	sp,sp,48
    80001318:	00008067          	ret
        return -1;
    8000131c:	fff00513          	li	a0,-1
    80001320:	fe1ff06f          	j	80001300 <thread_create+0x5c>

0000000080001324 <thread_dispatch>:

#ifdef __cplusplus
extern "C"
#endif
void thread_dispatch()
{
    80001324:	ff010113          	addi	sp,sp,-16
    80001328:	00813423          	sd	s0,8(sp)
    8000132c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001330:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001334:	00000073          	ecall
}
    80001338:	00813403          	ld	s0,8(sp)
    8000133c:	01010113          	addi	sp,sp,16
    80001340:	00008067          	ret

0000000080001344 <thread_exit>:

#ifdef __cplusplus
extern "C"
#endif
int thread_exit()
{
    80001344:	ff010113          	addi	sp,sp,-16
    80001348:	00813423          	sd	s0,8(sp)
    8000134c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80001350:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001354:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001358:	00050513          	mv	a0,a0
    return result;
}
    8000135c:	0005051b          	sext.w	a0,a0
    80001360:	00813403          	ld	s0,8(sp)
    80001364:	01010113          	addi	sp,sp,16
    80001368:	00008067          	ret

000000008000136c <sem_open>:

typedef void* sem_t;
int sem_open(sem_t* handle, unsigned int x)
{
    8000136c:	ff010113          	addi	sp,sp,-16
    80001370:	00813423          	sd	s0,8(sp)
    80001374:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    80001378:	02059593          	slli	a1,a1,0x20
    8000137c:	0205d593          	srli	a1,a1,0x20
    80001380:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001384:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80001388:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    8000138c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001390:	00050513          	mv	a0,a0
    return result;
}
    80001394:	0005051b          	sext.w	a0,a0
    80001398:	00813403          	ld	s0,8(sp)
    8000139c:	01010113          	addi	sp,sp,16
    800013a0:	00008067          	ret

00000000800013a4 <sem_close>:


int sem_close(sem_t handle)
{
    800013a4:	ff010113          	addi	sp,sp,-16
    800013a8:	00813423          	sd	s0,8(sp)
    800013ac:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    800013b0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    800013b4:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    800013b8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800013bc:	00050513          	mv	a0,a0
    return result;
}
    800013c0:	0005051b          	sext.w	a0,a0
    800013c4:	00813403          	ld	s0,8(sp)
    800013c8:	01010113          	addi	sp,sp,16
    800013cc:	00008067          	ret

00000000800013d0 <sem_wait>:

int sem_wait(sem_t id)
{
    800013d0:	ff010113          	addi	sp,sp,-16
    800013d4:	00813423          	sd	s0,8(sp)
    800013d8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800013dc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800013e0:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    800013e4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800013e8:	00050513          	mv	a0,a0
    return result;
}
    800013ec:	0005051b          	sext.w	a0,a0
    800013f0:	00813403          	ld	s0,8(sp)
    800013f4:	01010113          	addi	sp,sp,16
    800013f8:	00008067          	ret

00000000800013fc <sem_signal>:

int sem_signal(sem_t id)
{
    800013fc:	ff010113          	addi	sp,sp,-16
    80001400:	00813423          	sd	s0,8(sp)
    80001404:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    80001408:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    8000140c:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    80001410:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001414:	00050513          	mv	a0,a0
    return result;
}
    80001418:	0005051b          	sext.w	a0,a0
    8000141c:	00813403          	ld	s0,8(sp)
    80001420:	01010113          	addi	sp,sp,16
    80001424:	00008067          	ret

0000000080001428 <time_sleep>:

int time_sleep(uint64 time)
{
    80001428:	ff010113          	addi	sp,sp,-16
    8000142c:	00813423          	sd	s0,8(sp)
    80001430:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    80001434:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80001438:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    8000143c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001440:	00050513          	mv	a0,a0
    return result;
    80001444:	0005051b          	sext.w	a0,a0
    80001448:	00813403          	ld	s0,8(sp)
    8000144c:	01010113          	addi	sp,sp,16
    80001450:	00008067          	ret

0000000080001454 <_Z4idlePv>:

#include "../h/Tests.hpp"
#include "../lib/console.h"

void idle(void* args)
{
    80001454:	ff010113          	addi	sp,sp,-16
    80001458:	00113423          	sd	ra,8(sp)
    8000145c:	00813023          	sd	s0,0(sp)
    80001460:	01010413          	addi	s0,sp,16
    while(true)
    {
        Riscv::printString("Idle\n");
    80001464:	00007517          	auipc	a0,0x7
    80001468:	bbc50513          	addi	a0,a0,-1092 # 80008020 <CONSOLE_STATUS+0x10>
    8000146c:	00002097          	auipc	ra,0x2
    80001470:	d1c080e7          	jalr	-740(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
        thread_dispatch();
    80001474:	00000097          	auipc	ra,0x0
    80001478:	eb0080e7          	jalr	-336(ra) # 80001324 <thread_dispatch>
    while(true)
    8000147c:	fe9ff06f          	j	80001464 <_Z4idlePv+0x10>

0000000080001480 <_Z15thread1FunctionPv>:
    }
}

void thread1Function(void* p)
{
    80001480:	fe010113          	addi	sp,sp,-32
    80001484:	00113c23          	sd	ra,24(sp)
    80001488:	00813823          	sd	s0,16(sp)
    8000148c:	00913423          	sd	s1,8(sp)
    80001490:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 1 started...\n");
    80001494:	00007517          	auipc	a0,0x7
    80001498:	b9450513          	addi	a0,a0,-1132 # 80008028 <CONSOLE_STATUS+0x18>
    8000149c:	00002097          	auipc	ra,0x2
    800014a0:	cec080e7          	jalr	-788(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 i = 0; i < num;i++)
    800014a4:	00000493          	li	s1,0
    800014a8:	03c0006f          	j	800014e4 <_Z15thread1FunctionPv+0x64>
    {
        if(i % 150 == 0 && i > 0)
            thread_dispatch();
    800014ac:	00000097          	auipc	ra,0x0
    800014b0:	e78080e7          	jalr	-392(ra) # 80001324 <thread_dispatch>
        Riscv::printString("i : ");
    800014b4:	00007517          	auipc	a0,0x7
    800014b8:	b8c50513          	addi	a0,a0,-1140 # 80008040 <CONSOLE_STATUS+0x30>
    800014bc:	00002097          	auipc	ra,0x2
    800014c0:	ccc080e7          	jalr	-820(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	d30080e7          	jalr	-720(ra) # 800031f8 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800014d0:	00007517          	auipc	a0,0x7
    800014d4:	cb050513          	addi	a0,a0,-848 # 80008180 <CONSOLE_STATUS+0x170>
    800014d8:	00002097          	auipc	ra,0x2
    800014dc:	cb0080e7          	jalr	-848(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < num;i++)
    800014e0:	00148493          	addi	s1,s1,1
    800014e4:	000027b7          	lui	a5,0x2
    800014e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800014ec:	0097ec63          	bltu	a5,s1,80001504 <_Z15thread1FunctionPv+0x84>
        if(i % 150 == 0 && i > 0)
    800014f0:	09600793          	li	a5,150
    800014f4:	02f4f7b3          	remu	a5,s1,a5
    800014f8:	fa079ee3          	bnez	a5,800014b4 <_Z15thread1FunctionPv+0x34>
    800014fc:	fa048ce3          	beqz	s1,800014b4 <_Z15thread1FunctionPv+0x34>
    80001500:	fadff06f          	j	800014ac <_Z15thread1FunctionPv+0x2c>
    }
}
    80001504:	01813083          	ld	ra,24(sp)
    80001508:	01013403          	ld	s0,16(sp)
    8000150c:	00813483          	ld	s1,8(sp)
    80001510:	02010113          	addi	sp,sp,32
    80001514:	00008067          	ret

0000000080001518 <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    80001518:	fe010113          	addi	sp,sp,-32
    8000151c:	00113c23          	sd	ra,24(sp)
    80001520:	00813823          	sd	s0,16(sp)
    80001524:	00913423          	sd	s1,8(sp)
    80001528:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    8000152c:	00007517          	auipc	a0,0x7
    80001530:	b1c50513          	addi	a0,a0,-1252 # 80008048 <CONSOLE_STATUS+0x38>
    80001534:	00002097          	auipc	ra,0x2
    80001538:	c54080e7          	jalr	-940(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    8000153c:	00000493          	li	s1,0
    80001540:	03c0006f          	j	8000157c <_Z15thread2FunctionPv+0x64>
    {
        if(j % 50 == 0 && j > 0)
            thread_dispatch();
    80001544:	00000097          	auipc	ra,0x0
    80001548:	de0080e7          	jalr	-544(ra) # 80001324 <thread_dispatch>
        Riscv::printString("j : ");
    8000154c:	00007517          	auipc	a0,0x7
    80001550:	b1450513          	addi	a0,a0,-1260 # 80008060 <CONSOLE_STATUS+0x50>
    80001554:	00002097          	auipc	ra,0x2
    80001558:	c34080e7          	jalr	-972(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000155c:	00048513          	mv	a0,s1
    80001560:	00002097          	auipc	ra,0x2
    80001564:	c98080e7          	jalr	-872(ra) # 800031f8 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001568:	00007517          	auipc	a0,0x7
    8000156c:	c1850513          	addi	a0,a0,-1000 # 80008180 <CONSOLE_STATUS+0x170>
    80001570:	00002097          	auipc	ra,0x2
    80001574:	c18080e7          	jalr	-1000(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001578:	00148493          	addi	s1,s1,1
    8000157c:	000027b7          	lui	a5,0x2
    80001580:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001584:	0097ec63          	bltu	a5,s1,8000159c <_Z15thread2FunctionPv+0x84>
        if(j % 50 == 0 && j > 0)
    80001588:	03200793          	li	a5,50
    8000158c:	02f4f7b3          	remu	a5,s1,a5
    80001590:	fa079ee3          	bnez	a5,8000154c <_Z15thread2FunctionPv+0x34>
    80001594:	fa048ce3          	beqz	s1,8000154c <_Z15thread2FunctionPv+0x34>
    80001598:	fadff06f          	j	80001544 <_Z15thread2FunctionPv+0x2c>
    }
}
    8000159c:	01813083          	ld	ra,24(sp)
    800015a0:	01013403          	ld	s0,16(sp)
    800015a4:	00813483          	ld	s1,8(sp)
    800015a8:	02010113          	addi	sp,sp,32
    800015ac:	00008067          	ret

00000000800015b0 <_Z20thread2FunctionTest2Pv>:

void thread2FunctionTest2(void* p)
{
    800015b0:	fe010113          	addi	sp,sp,-32
    800015b4:	00113c23          	sd	ra,24(sp)
    800015b8:	00813823          	sd	s0,16(sp)
    800015bc:	00913423          	sd	s1,8(sp)
    800015c0:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    800015c4:	00007517          	auipc	a0,0x7
    800015c8:	a8450513          	addi	a0,a0,-1404 # 80008048 <CONSOLE_STATUS+0x38>
    800015cc:	00002097          	auipc	ra,0x2
    800015d0:	bbc080e7          	jalr	-1092(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    800015d4:	00000493          	li	s1,0
    800015d8:	0480006f          	j	80001620 <_Z20thread2FunctionTest2Pv+0x70>
    {
        if(j == 200)
            thread_exit();
    800015dc:	00000097          	auipc	ra,0x0
    800015e0:	d68080e7          	jalr	-664(ra) # 80001344 <thread_exit>
    800015e4:	0500006f          	j	80001634 <_Z20thread2FunctionTest2Pv+0x84>
        if(j % 50 == 0 && j > 0)
            thread_dispatch();
    800015e8:	00000097          	auipc	ra,0x0
    800015ec:	d3c080e7          	jalr	-708(ra) # 80001324 <thread_dispatch>
        Riscv::printString("j : ");
    800015f0:	00007517          	auipc	a0,0x7
    800015f4:	a7050513          	addi	a0,a0,-1424 # 80008060 <CONSOLE_STATUS+0x50>
    800015f8:	00002097          	auipc	ra,0x2
    800015fc:	b90080e7          	jalr	-1136(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001600:	00048513          	mv	a0,s1
    80001604:	00002097          	auipc	ra,0x2
    80001608:	bf4080e7          	jalr	-1036(ra) # 800031f8 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    8000160c:	00007517          	auipc	a0,0x7
    80001610:	b7450513          	addi	a0,a0,-1164 # 80008180 <CONSOLE_STATUS+0x170>
    80001614:	00002097          	auipc	ra,0x2
    80001618:	b74080e7          	jalr	-1164(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    8000161c:	00148493          	addi	s1,s1,1
    80001620:	000027b7          	lui	a5,0x2
    80001624:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001628:	0297e063          	bltu	a5,s1,80001648 <_Z20thread2FunctionTest2Pv+0x98>
        if(j == 200)
    8000162c:	0c800793          	li	a5,200
    80001630:	faf486e3          	beq	s1,a5,800015dc <_Z20thread2FunctionTest2Pv+0x2c>
        if(j % 50 == 0 && j > 0)
    80001634:	03200793          	li	a5,50
    80001638:	02f4f7b3          	remu	a5,s1,a5
    8000163c:	fa079ae3          	bnez	a5,800015f0 <_Z20thread2FunctionTest2Pv+0x40>
    80001640:	fa0488e3          	beqz	s1,800015f0 <_Z20thread2FunctionTest2Pv+0x40>
    80001644:	fa5ff06f          	j	800015e8 <_Z20thread2FunctionTest2Pv+0x38>
    }
}
    80001648:	01813083          	ld	ra,24(sp)
    8000164c:	01013403          	ld	s0,16(sp)
    80001650:	00813483          	ld	s1,8(sp)
    80001654:	02010113          	addi	sp,sp,32
    80001658:	00008067          	ret

000000008000165c <_Z2f1Pv>:

//semaphore tests
static Semaphore* mutex;

void f1(void* p)
{
    8000165c:	fe010113          	addi	sp,sp,-32
    80001660:	00113c23          	sd	ra,24(sp)
    80001664:	00813823          	sd	s0,16(sp)
    80001668:	00913423          	sd	s1,8(sp)
    8000166c:	01213023          	sd	s2,0(sp)
    80001670:	02010413          	addi	s0,sp,32
    Riscv::printString("f1 started\n");
    80001674:	00007517          	auipc	a0,0x7
    80001678:	9f450513          	addi	a0,a0,-1548 # 80008068 <CONSOLE_STATUS+0x58>
    8000167c:	00002097          	auipc	ra,0x2
    80001680:	b0c080e7          	jalr	-1268(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    int x = 0;
    80001684:	00000493          	li	s1,0
    80001688:	00c0006f          	j	80001694 <_Z2f1Pv+0x38>
        //__putc('\n');
        mutex->signal();
        if(x < 50000)
            thread_dispatch();
        else
            thread_exit();
    8000168c:	00000097          	auipc	ra,0x0
    80001690:	cb8080e7          	jalr	-840(ra) # 80001344 <thread_exit>
        x++;
    80001694:	0014849b          	addiw	s1,s1,1
        mutex->wait();
    80001698:	00009917          	auipc	s2,0x9
    8000169c:	e5890913          	addi	s2,s2,-424 # 8000a4f0 <_ZL5mutex>
    800016a0:	00093503          	ld	a0,0(s2)
    800016a4:	00001097          	auipc	ra,0x1
    800016a8:	7c0080e7          	jalr	1984(ra) # 80002e64 <_ZN9Semaphore4waitEv>
        mutex->signal();
    800016ac:	00093503          	ld	a0,0(s2)
    800016b0:	00002097          	auipc	ra,0x2
    800016b4:	838080e7          	jalr	-1992(ra) # 80002ee8 <_ZN9Semaphore6signalEv>
        if(x < 50000)
    800016b8:	0000c7b7          	lui	a5,0xc
    800016bc:	34f78793          	addi	a5,a5,847 # c34f <_entry-0x7fff3cb1>
    800016c0:	fc97c6e3          	blt	a5,s1,8000168c <_Z2f1Pv+0x30>
            thread_dispatch();
    800016c4:	00000097          	auipc	ra,0x0
    800016c8:	c60080e7          	jalr	-928(ra) # 80001324 <thread_dispatch>
    800016cc:	fc9ff06f          	j	80001694 <_Z2f1Pv+0x38>

00000000800016d0 <_Z2f2Pv>:
    }
}

void f2(void* p)
{
    800016d0:	fe010113          	addi	sp,sp,-32
    800016d4:	00113c23          	sd	ra,24(sp)
    800016d8:	00813823          	sd	s0,16(sp)
    800016dc:	00913423          	sd	s1,8(sp)
    800016e0:	02010413          	addi	s0,sp,32
    Riscv::printString("f2 started\n");
    800016e4:	00007517          	auipc	a0,0x7
    800016e8:	99450513          	addi	a0,a0,-1644 # 80008078 <CONSOLE_STATUS+0x68>
    800016ec:	00002097          	auipc	ra,0x2
    800016f0:	a9c080e7          	jalr	-1380(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    int x = 0;
    while(true)
    {
        mutex->wait();
    800016f4:	00009497          	auipc	s1,0x9
    800016f8:	dfc48493          	addi	s1,s1,-516 # 8000a4f0 <_ZL5mutex>
    800016fc:	0004b503          	ld	a0,0(s1)
    80001700:	00001097          	auipc	ra,0x1
    80001704:	764080e7          	jalr	1892(ra) # 80002e64 <_ZN9Semaphore4waitEv>
        //__putc('2');
        //__putc('\n');
        mutex->signal();
    80001708:	0004b503          	ld	a0,0(s1)
    8000170c:	00001097          	auipc	ra,0x1
    80001710:	7dc080e7          	jalr	2012(ra) # 80002ee8 <_ZN9Semaphore6signalEv>
        if(x < 50000)
            thread_dispatch();
    80001714:	00000097          	auipc	ra,0x0
    80001718:	c10080e7          	jalr	-1008(ra) # 80001324 <thread_dispatch>
    8000171c:	fd9ff06f          	j	800016f4 <_Z2f2Pv+0x24>

0000000080001720 <_Z4f1_2Pv>:
static Semaphore* s1;
static Semaphore* s2;
static Semaphore* s3;

void f1_2(void* p)
{
    80001720:	fe010113          	addi	sp,sp,-32
    80001724:	00113c23          	sd	ra,24(sp)
    80001728:	00813823          	sd	s0,16(sp)
    8000172c:	00913423          	sd	s1,8(sp)
    80001730:	01213023          	sd	s2,0(sp)
    80001734:	02010413          	addi	s0,sp,32
    Riscv::printString("f1_2 started\n");
    80001738:	00007517          	auipc	a0,0x7
    8000173c:	95050513          	addi	a0,a0,-1712 # 80008088 <CONSOLE_STATUS+0x78>
    80001740:	00002097          	auipc	ra,0x2
    80001744:	a48080e7          	jalr	-1464(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    int x = 0;
    80001748:	00000493          	li	s1,0
    8000174c:	00c0006f          	j	80001758 <_Z4f1_2Pv+0x38>
        __putc('\n');
        s2->signal();
        if(x < 5000)
            thread_dispatch();
        else
            thread_exit();
    80001750:	00000097          	auipc	ra,0x0
    80001754:	bf4080e7          	jalr	-1036(ra) # 80001344 <thread_exit>
        x++;
    80001758:	0014849b          	addiw	s1,s1,1
        s1->wait();
    8000175c:	00009917          	auipc	s2,0x9
    80001760:	d9490913          	addi	s2,s2,-620 # 8000a4f0 <_ZL5mutex>
    80001764:	00893503          	ld	a0,8(s2)
    80001768:	00001097          	auipc	ra,0x1
    8000176c:	6fc080e7          	jalr	1788(ra) # 80002e64 <_ZN9Semaphore4waitEv>
        __putc('1');
    80001770:	03100513          	li	a0,49
    80001774:	00006097          	auipc	ra,0x6
    80001778:	328080e7          	jalr	808(ra) # 80007a9c <__putc>
        __putc('\n');
    8000177c:	00a00513          	li	a0,10
    80001780:	00006097          	auipc	ra,0x6
    80001784:	31c080e7          	jalr	796(ra) # 80007a9c <__putc>
        s2->signal();
    80001788:	01093503          	ld	a0,16(s2)
    8000178c:	00001097          	auipc	ra,0x1
    80001790:	75c080e7          	jalr	1884(ra) # 80002ee8 <_ZN9Semaphore6signalEv>
        if(x < 5000)
    80001794:	000017b7          	lui	a5,0x1
    80001798:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    8000179c:	fa97cae3          	blt	a5,s1,80001750 <_Z4f1_2Pv+0x30>
            thread_dispatch();
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	b84080e7          	jalr	-1148(ra) # 80001324 <thread_dispatch>
    800017a8:	fb1ff06f          	j	80001758 <_Z4f1_2Pv+0x38>

00000000800017ac <_Z4f2_2Pv>:
    }
}

void f2_2(void* p)
{
    800017ac:	fe010113          	addi	sp,sp,-32
    800017b0:	00113c23          	sd	ra,24(sp)
    800017b4:	00813823          	sd	s0,16(sp)
    800017b8:	00913423          	sd	s1,8(sp)
    800017bc:	01213023          	sd	s2,0(sp)
    800017c0:	02010413          	addi	s0,sp,32
    Riscv::printString("f2_2 started\n");
    800017c4:	00007517          	auipc	a0,0x7
    800017c8:	8d450513          	addi	a0,a0,-1836 # 80008098 <CONSOLE_STATUS+0x88>
    800017cc:	00002097          	auipc	ra,0x2
    800017d0:	9bc080e7          	jalr	-1604(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    int x = 0;
    800017d4:	00000493          	li	s1,0
    800017d8:	00c0006f          	j	800017e4 <_Z4f2_2Pv+0x38>
        __putc('\n');
        s3->signal();
        if(x < 5000)
            thread_dispatch();
        else
            thread_exit();
    800017dc:	00000097          	auipc	ra,0x0
    800017e0:	b68080e7          	jalr	-1176(ra) # 80001344 <thread_exit>
        x++;
    800017e4:	0014849b          	addiw	s1,s1,1
        s2->wait();
    800017e8:	00009917          	auipc	s2,0x9
    800017ec:	d0890913          	addi	s2,s2,-760 # 8000a4f0 <_ZL5mutex>
    800017f0:	01093503          	ld	a0,16(s2)
    800017f4:	00001097          	auipc	ra,0x1
    800017f8:	670080e7          	jalr	1648(ra) # 80002e64 <_ZN9Semaphore4waitEv>
        __putc('2');
    800017fc:	03200513          	li	a0,50
    80001800:	00006097          	auipc	ra,0x6
    80001804:	29c080e7          	jalr	668(ra) # 80007a9c <__putc>
        __putc('\n');
    80001808:	00a00513          	li	a0,10
    8000180c:	00006097          	auipc	ra,0x6
    80001810:	290080e7          	jalr	656(ra) # 80007a9c <__putc>
        s3->signal();
    80001814:	01893503          	ld	a0,24(s2)
    80001818:	00001097          	auipc	ra,0x1
    8000181c:	6d0080e7          	jalr	1744(ra) # 80002ee8 <_ZN9Semaphore6signalEv>
        if(x < 5000)
    80001820:	000017b7          	lui	a5,0x1
    80001824:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80001828:	fa97cae3          	blt	a5,s1,800017dc <_Z4f2_2Pv+0x30>
            thread_dispatch();
    8000182c:	00000097          	auipc	ra,0x0
    80001830:	af8080e7          	jalr	-1288(ra) # 80001324 <thread_dispatch>
    80001834:	fb1ff06f          	j	800017e4 <_Z4f2_2Pv+0x38>

0000000080001838 <_Z4f3_2Pv>:
    }
}

void f3_2(void* p)
{
    80001838:	fe010113          	addi	sp,sp,-32
    8000183c:	00113c23          	sd	ra,24(sp)
    80001840:	00813823          	sd	s0,16(sp)
    80001844:	00913423          	sd	s1,8(sp)
    80001848:	01213023          	sd	s2,0(sp)
    8000184c:	02010413          	addi	s0,sp,32
    Riscv::printString("f3_2 started\n");
    80001850:	00007517          	auipc	a0,0x7
    80001854:	85850513          	addi	a0,a0,-1960 # 800080a8 <CONSOLE_STATUS+0x98>
    80001858:	00002097          	auipc	ra,0x2
    8000185c:	930080e7          	jalr	-1744(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    int x = 0;
    80001860:	00000493          	li	s1,0
    80001864:	00c0006f          	j	80001870 <_Z4f3_2Pv+0x38>
        __putc('\n');
        s1->signal();
        if(x < 5000)
            thread_dispatch();
        else
            thread_exit();
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	adc080e7          	jalr	-1316(ra) # 80001344 <thread_exit>
        x++;
    80001870:	0014849b          	addiw	s1,s1,1
        s3->wait();
    80001874:	00009917          	auipc	s2,0x9
    80001878:	c7c90913          	addi	s2,s2,-900 # 8000a4f0 <_ZL5mutex>
    8000187c:	01893503          	ld	a0,24(s2)
    80001880:	00001097          	auipc	ra,0x1
    80001884:	5e4080e7          	jalr	1508(ra) # 80002e64 <_ZN9Semaphore4waitEv>
        __putc('3');
    80001888:	03300513          	li	a0,51
    8000188c:	00006097          	auipc	ra,0x6
    80001890:	210080e7          	jalr	528(ra) # 80007a9c <__putc>
        __putc('\n');
    80001894:	00a00513          	li	a0,10
    80001898:	00006097          	auipc	ra,0x6
    8000189c:	204080e7          	jalr	516(ra) # 80007a9c <__putc>
        s1->signal();
    800018a0:	00893503          	ld	a0,8(s2)
    800018a4:	00001097          	auipc	ra,0x1
    800018a8:	644080e7          	jalr	1604(ra) # 80002ee8 <_ZN9Semaphore6signalEv>
        if(x < 5000)
    800018ac:	000017b7          	lui	a5,0x1
    800018b0:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    800018b4:	fa97cae3          	blt	a5,s1,80001868 <_Z4f3_2Pv+0x30>
            thread_dispatch();
    800018b8:	00000097          	auipc	ra,0x0
    800018bc:	a6c080e7          	jalr	-1428(ra) # 80001324 <thread_dispatch>
    800018c0:	fb1ff06f          	j	80001870 <_Z4f3_2Pv+0x38>

00000000800018c4 <_Z11threadTest1v>:
{
    800018c4:	fe010113          	addi	sp,sp,-32
    800018c8:	00113c23          	sd	ra,24(sp)
    800018cc:	00813823          	sd	s0,16(sp)
    800018d0:	00913423          	sd	s1,8(sp)
    800018d4:	01213023          	sd	s2,0(sp)
    800018d8:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    800018dc:	02000513          	li	a0,32
    800018e0:	00001097          	auipc	ra,0x1
    800018e4:	380080e7          	jalr	896(ra) # 80002c60 <_Znwm>
    800018e8:	00050493          	mv	s1,a0
    800018ec:	00000613          	li	a2,0
    800018f0:	00000597          	auipc	a1,0x0
    800018f4:	b9058593          	addi	a1,a1,-1136 # 80001480 <_Z15thread1FunctionPv>
    800018f8:	00001097          	auipc	ra,0x1
    800018fc:	504080e7          	jalr	1284(ra) # 80002dfc <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001900:	00048513          	mv	a0,s1
    80001904:	00001097          	auipc	ra,0x1
    80001908:	42c080e7          	jalr	1068(ra) # 80002d30 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    8000190c:	02000513          	li	a0,32
    80001910:	00001097          	auipc	ra,0x1
    80001914:	350080e7          	jalr	848(ra) # 80002c60 <_Znwm>
    80001918:	00050913          	mv	s2,a0
    8000191c:	00000613          	li	a2,0
    80001920:	00000597          	auipc	a1,0x0
    80001924:	bf858593          	addi	a1,a1,-1032 # 80001518 <_Z15thread2FunctionPv>
    80001928:	00001097          	auipc	ra,0x1
    8000192c:	4d4080e7          	jalr	1236(ra) # 80002dfc <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001930:	00090513          	mv	a0,s2
    80001934:	00001097          	auipc	ra,0x1
    80001938:	3fc080e7          	jalr	1020(ra) # 80002d30 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    8000193c:	00001097          	auipc	ra,0x1
    80001940:	7c4080e7          	jalr	1988(ra) # 80003100 <_ZN5Riscv16enableInterruptsEv>
    80001944:	01c0006f          	j	80001960 <_Z11threadTest1v+0x9c>
        Riscv::printString("Main thread\n");
    80001948:	00006517          	auipc	a0,0x6
    8000194c:	77050513          	addi	a0,a0,1904 # 800080b8 <CONSOLE_STATUS+0xa8>
    80001950:	00002097          	auipc	ra,0x2
    80001954:	838080e7          	jalr	-1992(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
        thread_dispatch();
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	9cc080e7          	jalr	-1588(ra) # 80001324 <thread_dispatch>
    while(t1->myHandle->getState() != PCB::FINISHED || t2->myHandle->getState() != PCB::FINISHED)
    80001960:	0084b783          	ld	a5,8(s1)

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80001964:	0307a703          	lw	a4,48(a5)
    80001968:	00300793          	li	a5,3
    8000196c:	fcf71ee3          	bne	a4,a5,80001948 <_Z11threadTest1v+0x84>
    80001970:	00893783          	ld	a5,8(s2)
    80001974:	0307a703          	lw	a4,48(a5)
    80001978:	00300793          	li	a5,3
    8000197c:	fcf716e3          	bne	a4,a5,80001948 <_Z11threadTest1v+0x84>
    Riscv::printString("End...\n");
    80001980:	00006517          	auipc	a0,0x6
    80001984:	74850513          	addi	a0,a0,1864 # 800080c8 <CONSOLE_STATUS+0xb8>
    80001988:	00002097          	auipc	ra,0x2
    8000198c:	800080e7          	jalr	-2048(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001990:	00001097          	auipc	ra,0x1
    80001994:	790080e7          	jalr	1936(ra) # 80003120 <_ZN5Riscv17disableInterruptsEv>
}
    80001998:	01813083          	ld	ra,24(sp)
    8000199c:	01013403          	ld	s0,16(sp)
    800019a0:	00813483          	ld	s1,8(sp)
    800019a4:	00013903          	ld	s2,0(sp)
    800019a8:	02010113          	addi	sp,sp,32
    800019ac:	00008067          	ret
    800019b0:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    800019b4:	00048513          	mv	a0,s1
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	2d0080e7          	jalr	720(ra) # 80002c88 <_ZdlPv>
    800019c0:	00090513          	mv	a0,s2
    800019c4:	0000a097          	auipc	ra,0xa
    800019c8:	ca4080e7          	jalr	-860(ra) # 8000b668 <_Unwind_Resume>
    800019cc:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800019d0:	00090513          	mv	a0,s2
    800019d4:	00001097          	auipc	ra,0x1
    800019d8:	2b4080e7          	jalr	692(ra) # 80002c88 <_ZdlPv>
    800019dc:	00048513          	mv	a0,s1
    800019e0:	0000a097          	auipc	ra,0xa
    800019e4:	c88080e7          	jalr	-888(ra) # 8000b668 <_Unwind_Resume>

00000000800019e8 <_Z11threadTest2v>:
{
    800019e8:	fe010113          	addi	sp,sp,-32
    800019ec:	00113c23          	sd	ra,24(sp)
    800019f0:	00813823          	sd	s0,16(sp)
    800019f4:	00913423          	sd	s1,8(sp)
    800019f8:	01213023          	sd	s2,0(sp)
    800019fc:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    80001a00:	02000513          	li	a0,32
    80001a04:	00001097          	auipc	ra,0x1
    80001a08:	25c080e7          	jalr	604(ra) # 80002c60 <_Znwm>
    80001a0c:	00050493          	mv	s1,a0
    80001a10:	00000613          	li	a2,0
    80001a14:	00000597          	auipc	a1,0x0
    80001a18:	a4058593          	addi	a1,a1,-1472 # 80001454 <_Z4idlePv>
    80001a1c:	00001097          	auipc	ra,0x1
    80001a20:	3e0080e7          	jalr	992(ra) # 80002dfc <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001a24:	00048513          	mv	a0,s1
    80001a28:	00001097          	auipc	ra,0x1
    80001a2c:	308080e7          	jalr	776(ra) # 80002d30 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a30:	02000513          	li	a0,32
    80001a34:	00001097          	auipc	ra,0x1
    80001a38:	22c080e7          	jalr	556(ra) # 80002c60 <_Znwm>
    80001a3c:	00050913          	mv	s2,a0
    80001a40:	00000613          	li	a2,0
    80001a44:	00000597          	auipc	a1,0x0
    80001a48:	a3c58593          	addi	a1,a1,-1476 # 80001480 <_Z15thread1FunctionPv>
    80001a4c:	00001097          	auipc	ra,0x1
    80001a50:	3b0080e7          	jalr	944(ra) # 80002dfc <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001a54:	00090513          	mv	a0,s2
    80001a58:	00001097          	auipc	ra,0x1
    80001a5c:	2d8080e7          	jalr	728(ra) # 80002d30 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a60:	02000513          	li	a0,32
    80001a64:	00001097          	auipc	ra,0x1
    80001a68:	1fc080e7          	jalr	508(ra) # 80002c60 <_Znwm>
    80001a6c:	00050913          	mv	s2,a0
    80001a70:	00000613          	li	a2,0
    80001a74:	00000597          	auipc	a1,0x0
    80001a78:	b3c58593          	addi	a1,a1,-1220 # 800015b0 <_Z20thread2FunctionTest2Pv>
    80001a7c:	00001097          	auipc	ra,0x1
    80001a80:	380080e7          	jalr	896(ra) # 80002dfc <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001a84:	00090513          	mv	a0,s2
    80001a88:	00001097          	auipc	ra,0x1
    80001a8c:	2a8080e7          	jalr	680(ra) # 80002d30 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	670080e7          	jalr	1648(ra) # 80003100 <_ZN5Riscv16enableInterruptsEv>
    while(idleThread->myHandle->getState() != PCB::FINISHED);
    80001a98:	0084b783          	ld	a5,8(s1)
    80001a9c:	0307a703          	lw	a4,48(a5)
    80001aa0:	00300793          	li	a5,3
    80001aa4:	fef71ae3          	bne	a4,a5,80001a98 <_Z11threadTest2v+0xb0>
    Riscv::printString("End...\n");
    80001aa8:	00006517          	auipc	a0,0x6
    80001aac:	62050513          	addi	a0,a0,1568 # 800080c8 <CONSOLE_STATUS+0xb8>
    80001ab0:	00001097          	auipc	ra,0x1
    80001ab4:	6d8080e7          	jalr	1752(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	668080e7          	jalr	1640(ra) # 80003120 <_ZN5Riscv17disableInterruptsEv>
}
    80001ac0:	01813083          	ld	ra,24(sp)
    80001ac4:	01013403          	ld	s0,16(sp)
    80001ac8:	00813483          	ld	s1,8(sp)
    80001acc:	00013903          	ld	s2,0(sp)
    80001ad0:	02010113          	addi	sp,sp,32
    80001ad4:	00008067          	ret
    80001ad8:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    80001adc:	00048513          	mv	a0,s1
    80001ae0:	00001097          	auipc	ra,0x1
    80001ae4:	1a8080e7          	jalr	424(ra) # 80002c88 <_ZdlPv>
    80001ae8:	00090513          	mv	a0,s2
    80001aec:	0000a097          	auipc	ra,0xa
    80001af0:	b7c080e7          	jalr	-1156(ra) # 8000b668 <_Unwind_Resume>
    80001af4:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001af8:	00090513          	mv	a0,s2
    80001afc:	00001097          	auipc	ra,0x1
    80001b00:	18c080e7          	jalr	396(ra) # 80002c88 <_ZdlPv>
    80001b04:	00048513          	mv	a0,s1
    80001b08:	0000a097          	auipc	ra,0xa
    80001b0c:	b60080e7          	jalr	-1184(ra) # 8000b668 <_Unwind_Resume>
    80001b10:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001b14:	00090513          	mv	a0,s2
    80001b18:	00001097          	auipc	ra,0x1
    80001b1c:	170080e7          	jalr	368(ra) # 80002c88 <_ZdlPv>
    80001b20:	00048513          	mv	a0,s1
    80001b24:	0000a097          	auipc	ra,0xa
    80001b28:	b44080e7          	jalr	-1212(ra) # 8000b668 <_Unwind_Resume>

0000000080001b2c <_Z11threadTestsv>:
{
    80001b2c:	ff010113          	addi	sp,sp,-16
    80001b30:	00113423          	sd	ra,8(sp)
    80001b34:	00813023          	sd	s0,0(sp)
    80001b38:	01010413          	addi	s0,sp,16
    threadTest2();
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	eac080e7          	jalr	-340(ra) # 800019e8 <_Z11threadTest2v>
}
    80001b44:	00813083          	ld	ra,8(sp)
    80001b48:	00013403          	ld	s0,0(sp)
    80001b4c:	01010113          	addi	sp,sp,16
    80001b50:	00008067          	ret

0000000080001b54 <_Z10mallocFreev>:
{
    80001b54:	cc010113          	addi	sp,sp,-832
    80001b58:	32113c23          	sd	ra,824(sp)
    80001b5c:	32813823          	sd	s0,816(sp)
    80001b60:	32913423          	sd	s1,808(sp)
    80001b64:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    80001b68:	00006517          	auipc	a0,0x6
    80001b6c:	56850513          	addi	a0,a0,1384 # 800080d0 <CONSOLE_STATUS+0xc0>
    80001b70:	00001097          	auipc	ra,0x1
    80001b74:	618080e7          	jalr	1560(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001b78:	00000493          	li	s1,0
    80001b7c:	0080006f          	j	80001b84 <_Z10mallocFreev+0x30>
    80001b80:	0014849b          	addiw	s1,s1,1
    80001b84:	06300793          	li	a5,99
    80001b88:	0497c463          	blt	a5,s1,80001bd0 <_Z10mallocFreev+0x7c>
        addrs[i] = mem_alloc(100);
    80001b8c:	06400513          	li	a0,100
    80001b90:	fffff097          	auipc	ra,0xfffff
    80001b94:	6b8080e7          	jalr	1720(ra) # 80001248 <mem_alloc>
    80001b98:	00349793          	slli	a5,s1,0x3
    80001b9c:	fe040713          	addi	a4,s0,-32
    80001ba0:	00f707b3          	add	a5,a4,a5
    80001ba4:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001ba8:	fc051ce3          	bnez	a0,80001b80 <_Z10mallocFreev+0x2c>
            Riscv::printString("not OK\n");
    80001bac:	00006517          	auipc	a0,0x6
    80001bb0:	53450513          	addi	a0,a0,1332 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001bb4:	00001097          	auipc	ra,0x1
    80001bb8:	5d4080e7          	jalr	1492(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
}
    80001bbc:	33813083          	ld	ra,824(sp)
    80001bc0:	33013403          	ld	s0,816(sp)
    80001bc4:	32813483          	ld	s1,808(sp)
    80001bc8:	34010113          	addi	sp,sp,832
    80001bcc:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001bd0:	00000493          	li	s1,0
    80001bd4:	06300793          	li	a5,99
    80001bd8:	0297ce63          	blt	a5,s1,80001c14 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001bdc:	00349793          	slli	a5,s1,0x3
    80001be0:	fe040713          	addi	a4,s0,-32
    80001be4:	00f707b3          	add	a5,a4,a5
    80001be8:	ce07b503          	ld	a0,-800(a5)
    80001bec:	fffff097          	auipc	ra,0xfffff
    80001bf0:	68c080e7          	jalr	1676(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001bf4:	00051663          	bnez	a0,80001c00 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001bf8:	0024849b          	addiw	s1,s1,2
    80001bfc:	fd9ff06f          	j	80001bd4 <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    80001c00:	00006517          	auipc	a0,0x6
    80001c04:	4e050513          	addi	a0,a0,1248 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001c08:	00001097          	auipc	ra,0x1
    80001c0c:	580080e7          	jalr	1408(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
            return;
    80001c10:	fadff06f          	j	80001bbc <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001c14:	00000493          	li	s1,0
    80001c18:	0080006f          	j	80001c20 <_Z10mallocFreev+0xcc>
    80001c1c:	0024849b          	addiw	s1,s1,2
    80001c20:	06300793          	li	a5,99
    80001c24:	0297cc63          	blt	a5,s1,80001c5c <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001c28:	01400513          	li	a0,20
    80001c2c:	fffff097          	auipc	ra,0xfffff
    80001c30:	61c080e7          	jalr	1564(ra) # 80001248 <mem_alloc>
    80001c34:	00349793          	slli	a5,s1,0x3
    80001c38:	fe040713          	addi	a4,s0,-32
    80001c3c:	00f707b3          	add	a5,a4,a5
    80001c40:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001c44:	fc051ce3          	bnez	a0,80001c1c <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    80001c48:	00006517          	auipc	a0,0x6
    80001c4c:	49850513          	addi	a0,a0,1176 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001c50:	00001097          	auipc	ra,0x1
    80001c54:	538080e7          	jalr	1336(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
            return;
    80001c58:	f65ff06f          	j	80001bbc <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001c5c:	00000493          	li	s1,0
    80001c60:	06300793          	li	a5,99
    80001c64:	0297ce63          	blt	a5,s1,80001ca0 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001c68:	00349793          	slli	a5,s1,0x3
    80001c6c:	fe040713          	addi	a4,s0,-32
    80001c70:	00f707b3          	add	a5,a4,a5
    80001c74:	ce07b503          	ld	a0,-800(a5)
    80001c78:	fffff097          	auipc	ra,0xfffff
    80001c7c:	600080e7          	jalr	1536(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001c80:	00051663          	bnez	a0,80001c8c <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001c84:	0014849b          	addiw	s1,s1,1
    80001c88:	fd9ff06f          	j	80001c60 <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    80001c8c:	00006517          	auipc	a0,0x6
    80001c90:	45450513          	addi	a0,a0,1108 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001c94:	00001097          	auipc	ra,0x1
    80001c98:	4f4080e7          	jalr	1268(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
            return;
    80001c9c:	f21ff06f          	j	80001bbc <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001ca0:	00006517          	auipc	a0,0x6
    80001ca4:	44850513          	addi	a0,a0,1096 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001ca8:	00001097          	auipc	ra,0x1
    80001cac:	4e0080e7          	jalr	1248(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    80001cb0:	f0dff06f          	j	80001bbc <_Z10mallocFreev+0x68>

0000000080001cb4 <_Z9bigMallocv>:
{
    80001cb4:	ff010113          	addi	sp,sp,-16
    80001cb8:	00113423          	sd	ra,8(sp)
    80001cbc:	00813023          	sd	s0,0(sp)
    80001cc0:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    80001cc4:	00006517          	auipc	a0,0x6
    80001cc8:	42c50513          	addi	a0,a0,1068 # 800080f0 <CONSOLE_STATUS+0xe0>
    80001ccc:	00001097          	auipc	ra,0x1
    80001cd0:	4bc080e7          	jalr	1212(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001cd4:	00008797          	auipc	a5,0x8
    80001cd8:	7cc7b783          	ld	a5,1996(a5) # 8000a4a0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001cdc:	0007b503          	ld	a0,0(a5)
    80001ce0:	00008797          	auipc	a5,0x8
    80001ce4:	7987b783          	ld	a5,1944(a5) # 8000a478 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001ce8:	0007b783          	ld	a5,0(a5)
    80001cec:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001cf0:	06450513          	addi	a0,a0,100
    80001cf4:	fffff097          	auipc	ra,0xfffff
    80001cf8:	554080e7          	jalr	1364(ra) # 80001248 <mem_alloc>
    if(p == 0)
    80001cfc:	02050263          	beqz	a0,80001d20 <_Z9bigMallocv+0x6c>
        Riscv::printString("not OK\n");
    80001d00:	00006517          	auipc	a0,0x6
    80001d04:	3e050513          	addi	a0,a0,992 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001d08:	00001097          	auipc	ra,0x1
    80001d0c:	480080e7          	jalr	1152(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
}
    80001d10:	00813083          	ld	ra,8(sp)
    80001d14:	00013403          	ld	s0,0(sp)
    80001d18:	01010113          	addi	sp,sp,16
    80001d1c:	00008067          	ret
        Riscv::printString("OK\n");
    80001d20:	00006517          	auipc	a0,0x6
    80001d24:	3c850513          	addi	a0,a0,968 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001d28:	00001097          	auipc	ra,0x1
    80001d2c:	460080e7          	jalr	1120(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    80001d30:	fe1ff06f          	j	80001d10 <_Z9bigMallocv+0x5c>

0000000080001d34 <_Z17lotOfSmallMallocsv>:
{
    80001d34:	fd010113          	addi	sp,sp,-48
    80001d38:	02113423          	sd	ra,40(sp)
    80001d3c:	02813023          	sd	s0,32(sp)
    80001d40:	00913c23          	sd	s1,24(sp)
    80001d44:	01213823          	sd	s2,16(sp)
    80001d48:	01313423          	sd	s3,8(sp)
    80001d4c:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001d50:	00006517          	auipc	a0,0x6
    80001d54:	3b050513          	addi	a0,a0,944 # 80008100 <CONSOLE_STATUS+0xf0>
    80001d58:	00001097          	auipc	ra,0x1
    80001d5c:	430080e7          	jalr	1072(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < N;i++)
    80001d60:	00000493          	li	s1,0
    uint64 sum = 0;
    80001d64:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001d68:	00000913          	li	s2,0
    80001d6c:	0180006f          	j	80001d84 <_Z17lotOfSmallMallocsv+0x50>
        t->a = X;
    80001d70:	00a00793          	li	a5,10
    80001d74:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001d78:	00a98993          	addi	s3,s3,10
        cnt++;
    80001d7c:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001d80:	00148493          	addi	s1,s1,1
    80001d84:	000027b7          	lui	a5,0x2
    80001d88:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001d8c:	0097ea63          	bltu	a5,s1,80001da0 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001d90:	00800513          	li	a0,8
    80001d94:	fffff097          	auipc	ra,0xfffff
    80001d98:	4b4080e7          	jalr	1204(ra) # 80001248 <mem_alloc>
        if(t == 0)
    80001d9c:	fc051ae3          	bnez	a0,80001d70 <_Z17lotOfSmallMallocsv+0x3c>
    Riscv::printInteger(cnt);
    80001da0:	00090513          	mv	a0,s2
    80001da4:	00001097          	auipc	ra,0x1
    80001da8:	454080e7          	jalr	1108(ra) # 800031f8 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001dac:	00006517          	auipc	a0,0x6
    80001db0:	3d450513          	addi	a0,a0,980 # 80008180 <CONSOLE_STATUS+0x170>
    80001db4:	00001097          	auipc	ra,0x1
    80001db8:	3d4080e7          	jalr	980(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001dbc:	00291793          	slli	a5,s2,0x2
    80001dc0:	01278933          	add	s2,a5,s2
    80001dc4:	00191913          	slli	s2,s2,0x1
    80001dc8:	03390863          	beq	s2,s3,80001df8 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001dcc:	00006517          	auipc	a0,0x6
    80001dd0:	31450513          	addi	a0,a0,788 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	3b4080e7          	jalr	948(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
}
    80001ddc:	02813083          	ld	ra,40(sp)
    80001de0:	02013403          	ld	s0,32(sp)
    80001de4:	01813483          	ld	s1,24(sp)
    80001de8:	01013903          	ld	s2,16(sp)
    80001dec:	00813983          	ld	s3,8(sp)
    80001df0:	03010113          	addi	sp,sp,48
    80001df4:	00008067          	ret
        Riscv::printString("OK\n");
    80001df8:	00006517          	auipc	a0,0x6
    80001dfc:	2f050513          	addi	a0,a0,752 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001e00:	00001097          	auipc	ra,0x1
    80001e04:	388080e7          	jalr	904(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    80001e08:	fd5ff06f          	j	80001ddc <_Z17lotOfSmallMallocsv+0xa8>

0000000080001e0c <_Z7badFreev>:
{
    80001e0c:	ff010113          	addi	sp,sp,-16
    80001e10:	00113423          	sd	ra,8(sp)
    80001e14:	00813023          	sd	s0,0(sp)
    80001e18:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001e1c:	00006517          	auipc	a0,0x6
    80001e20:	2fc50513          	addi	a0,a0,764 # 80008118 <CONSOLE_STATUS+0x108>
    80001e24:	00001097          	auipc	ra,0x1
    80001e28:	364080e7          	jalr	868(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001e2c:	00800513          	li	a0,8
    80001e30:	fffff097          	auipc	ra,0xfffff
    80001e34:	418080e7          	jalr	1048(ra) # 80001248 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001e38:	00250513          	addi	a0,a0,2
    80001e3c:	fffff097          	auipc	ra,0xfffff
    80001e40:	43c080e7          	jalr	1084(ra) # 80001278 <mem_free>
    if(retval == 0)
    80001e44:	02051263          	bnez	a0,80001e68 <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001e48:	00006517          	auipc	a0,0x6
    80001e4c:	29850513          	addi	a0,a0,664 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001e50:	00001097          	auipc	ra,0x1
    80001e54:	338080e7          	jalr	824(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
}
    80001e58:	00813083          	ld	ra,8(sp)
    80001e5c:	00013403          	ld	s0,0(sp)
    80001e60:	01010113          	addi	sp,sp,16
    80001e64:	00008067          	ret
        Riscv::printString("OK\n");
    80001e68:	00006517          	auipc	a0,0x6
    80001e6c:	28050513          	addi	a0,a0,640 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001e70:	00001097          	auipc	ra,0x1
    80001e74:	318080e7          	jalr	792(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
}
    80001e78:	fe1ff06f          	j	80001e58 <_Z7badFreev+0x4c>

0000000080001e7c <_Z13stressTestingv>:
{
    80001e7c:	cc010113          	addi	sp,sp,-832
    80001e80:	32113c23          	sd	ra,824(sp)
    80001e84:	32813823          	sd	s0,816(sp)
    80001e88:	32913423          	sd	s1,808(sp)
    80001e8c:	33213023          	sd	s2,800(sp)
    80001e90:	34010413          	addi	s0,sp,832
    Riscv::printString("stressTesting\n");
    80001e94:	00006517          	auipc	a0,0x6
    80001e98:	29450513          	addi	a0,a0,660 # 80008128 <CONSOLE_STATUS+0x118>
    80001e9c:	00001097          	auipc	ra,0x1
    80001ea0:	2ec080e7          	jalr	748(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001ea4:	00000493          	li	s1,0
    80001ea8:	0080006f          	j	80001eb0 <_Z13stressTestingv+0x34>
    80001eac:	0014849b          	addiw	s1,s1,1
    80001eb0:	06300793          	li	a5,99
    80001eb4:	0297ce63          	blt	a5,s1,80001ef0 <_Z13stressTestingv+0x74>
        addrs[i] = mem_alloc(1);
    80001eb8:	00100513          	li	a0,1
    80001ebc:	fffff097          	auipc	ra,0xfffff
    80001ec0:	38c080e7          	jalr	908(ra) # 80001248 <mem_alloc>
    80001ec4:	00349793          	slli	a5,s1,0x3
    80001ec8:	fe040713          	addi	a4,s0,-32
    80001ecc:	00f707b3          	add	a5,a4,a5
    80001ed0:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001ed4:	fc051ce3          	bnez	a0,80001eac <_Z13stressTestingv+0x30>
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
    80001ef4:	0b205a63          	blez	s2,80001fa8 <_Z13stressTestingv+0x12c>
        for(int i = 0 ; i < num;i+=2)
    80001ef8:	00000493          	li	s1,0
    80001efc:	06300793          	li	a5,99
    80001f00:	0497c863          	blt	a5,s1,80001f50 <_Z13stressTestingv+0xd4>
            int retval = mem_free(addrs[i]);
    80001f04:	00349793          	slli	a5,s1,0x3
    80001f08:	fe040713          	addi	a4,s0,-32
    80001f0c:	00f707b3          	add	a5,a4,a5
    80001f10:	ce07b503          	ld	a0,-800(a5)
    80001f14:	fffff097          	auipc	ra,0xfffff
    80001f18:	364080e7          	jalr	868(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001f1c:	fa051ee3          	bnez	a0,80001ed8 <_Z13stressTestingv+0x5c>
            addrs[i] = mem_alloc(sz/2);
    80001f20:	01f9551b          	srliw	a0,s2,0x1f
    80001f24:	0125053b          	addw	a0,a0,s2
    80001f28:	4015551b          	sraiw	a0,a0,0x1
    80001f2c:	fffff097          	auipc	ra,0xfffff
    80001f30:	31c080e7          	jalr	796(ra) # 80001248 <mem_alloc>
    80001f34:	00349793          	slli	a5,s1,0x3
    80001f38:	fe040713          	addi	a4,s0,-32
    80001f3c:	00f707b3          	add	a5,a4,a5
    80001f40:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001f44:	f8050ae3          	beqz	a0,80001ed8 <_Z13stressTestingv+0x5c>
        for(int i = 0 ; i < num;i+=2)
    80001f48:	0024849b          	addiw	s1,s1,2
    80001f4c:	fb1ff06f          	j	80001efc <_Z13stressTestingv+0x80>
        for(int i = 1 ; i < num;i+=2)
    80001f50:	00100493          	li	s1,1
    80001f54:	06300793          	li	a5,99
    80001f58:	0497c463          	blt	a5,s1,80001fa0 <_Z13stressTestingv+0x124>
            int retval = mem_free(addrs[i]);
    80001f5c:	00349793          	slli	a5,s1,0x3
    80001f60:	fe040713          	addi	a4,s0,-32
    80001f64:	00f707b3          	add	a5,a4,a5
    80001f68:	ce07b503          	ld	a0,-800(a5)
    80001f6c:	fffff097          	auipc	ra,0xfffff
    80001f70:	30c080e7          	jalr	780(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001f74:	f60512e3          	bnez	a0,80001ed8 <_Z13stressTestingv+0x5c>
            addrs[i] = mem_alloc(sz);
    80001f78:	00090513          	mv	a0,s2
    80001f7c:	fffff097          	auipc	ra,0xfffff
    80001f80:	2cc080e7          	jalr	716(ra) # 80001248 <mem_alloc>
    80001f84:	00349793          	slli	a5,s1,0x3
    80001f88:	fe040713          	addi	a4,s0,-32
    80001f8c:	00f707b3          	add	a5,a4,a5
    80001f90:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001f94:	f40502e3          	beqz	a0,80001ed8 <_Z13stressTestingv+0x5c>
        for(int i = 1 ; i < num;i+=2)
    80001f98:	0024849b          	addiw	s1,s1,2
    80001f9c:	fb9ff06f          	j	80001f54 <_Z13stressTestingv+0xd8>
        sz-=10;
    80001fa0:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001fa4:	f51ff06f          	j	80001ef4 <_Z13stressTestingv+0x78>
    Riscv::printString("OK\n");
    80001fa8:	00006517          	auipc	a0,0x6
    80001fac:	14050513          	addi	a0,a0,320 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001fb0:	00001097          	auipc	ra,0x1
    80001fb4:	1d8080e7          	jalr	472(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    80001fb8:	f21ff06f          	j	80001ed8 <_Z13stressTestingv+0x5c>

0000000080001fbc <_Z21memoryAllocationTestsv>:
{
    80001fbc:	ff010113          	addi	sp,sp,-16
    80001fc0:	00113423          	sd	ra,8(sp)
    80001fc4:	00813023          	sd	s0,0(sp)
    80001fc8:	01010413          	addi	s0,sp,16
    stressTesting();
    80001fcc:	00000097          	auipc	ra,0x0
    80001fd0:	eb0080e7          	jalr	-336(ra) # 80001e7c <_Z13stressTestingv>
}
    80001fd4:	00813083          	ld	ra,8(sp)
    80001fd8:	00013403          	ld	s0,0(sp)
    80001fdc:	01010113          	addi	sp,sp,16
    80001fe0:	00008067          	ret

0000000080001fe4 <_Z8semTest1v>:
{
    80001fe4:	fe010113          	addi	sp,sp,-32
    80001fe8:	00113c23          	sd	ra,24(sp)
    80001fec:	00813823          	sd	s0,16(sp)
    80001ff0:	00913423          	sd	s1,8(sp)
    80001ff4:	01213023          	sd	s2,0(sp)
    80001ff8:	02010413          	addi	s0,sp,32
    mutex = new Semaphore(1);
    80001ffc:	01000513          	li	a0,16
    80002000:	00001097          	auipc	ra,0x1
    80002004:	c60080e7          	jalr	-928(ra) # 80002c60 <_Znwm>
    80002008:	00050493          	mv	s1,a0
    8000200c:	00100593          	li	a1,1
    80002010:	00001097          	auipc	ra,0x1
    80002014:	e8c080e7          	jalr	-372(ra) # 80002e9c <_ZN9SemaphoreC1Ej>
    80002018:	00008797          	auipc	a5,0x8
    8000201c:	4c97bc23          	sd	s1,1240(a5) # 8000a4f0 <_ZL5mutex>
    Thread* t1 = new Thread(&f1, 0);
    80002020:	02000513          	li	a0,32
    80002024:	00001097          	auipc	ra,0x1
    80002028:	c3c080e7          	jalr	-964(ra) # 80002c60 <_Znwm>
    8000202c:	00050913          	mv	s2,a0
    80002030:	00000613          	li	a2,0
    80002034:	fffff597          	auipc	a1,0xfffff
    80002038:	62858593          	addi	a1,a1,1576 # 8000165c <_Z2f1Pv>
    8000203c:	00001097          	auipc	ra,0x1
    80002040:	dc0080e7          	jalr	-576(ra) # 80002dfc <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&f2, 0);
    80002044:	02000513          	li	a0,32
    80002048:	00001097          	auipc	ra,0x1
    8000204c:	c18080e7          	jalr	-1000(ra) # 80002c60 <_Znwm>
    80002050:	00050493          	mv	s1,a0
    80002054:	00000613          	li	a2,0
    80002058:	fffff597          	auipc	a1,0xfffff
    8000205c:	67858593          	addi	a1,a1,1656 # 800016d0 <_Z2f2Pv>
    80002060:	00001097          	auipc	ra,0x1
    80002064:	d9c080e7          	jalr	-612(ra) # 80002dfc <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80002068:	00090513          	mv	a0,s2
    8000206c:	00001097          	auipc	ra,0x1
    80002070:	cc4080e7          	jalr	-828(ra) # 80002d30 <_ZN6Thread5startEv>
    t2->start();
    80002074:	00048513          	mv	a0,s1
    80002078:	00001097          	auipc	ra,0x1
    8000207c:	cb8080e7          	jalr	-840(ra) # 80002d30 <_ZN6Thread5startEv>
    int y = 0;
    80002080:	00000493          	li	s1,0
        y++;
    80002084:	0014849b          	addiw	s1,s1,1
        thread_dispatch();
    80002088:	fffff097          	auipc	ra,0xfffff
    8000208c:	29c080e7          	jalr	668(ra) # 80001324 <thread_dispatch>
        if(y == 200000)
    80002090:	000317b7          	lui	a5,0x31
    80002094:	d4078793          	addi	a5,a5,-704 # 30d40 <_entry-0x7ffcf2c0>
    80002098:	fef496e3          	bne	s1,a5,80002084 <_Z8semTest1v+0xa0>
}
    8000209c:	01813083          	ld	ra,24(sp)
    800020a0:	01013403          	ld	s0,16(sp)
    800020a4:	00813483          	ld	s1,8(sp)
    800020a8:	00013903          	ld	s2,0(sp)
    800020ac:	02010113          	addi	sp,sp,32
    800020b0:	00008067          	ret
    800020b4:	00050913          	mv	s2,a0
    mutex = new Semaphore(1);
    800020b8:	00048513          	mv	a0,s1
    800020bc:	00001097          	auipc	ra,0x1
    800020c0:	bcc080e7          	jalr	-1076(ra) # 80002c88 <_ZdlPv>
    800020c4:	00090513          	mv	a0,s2
    800020c8:	00009097          	auipc	ra,0x9
    800020cc:	5a0080e7          	jalr	1440(ra) # 8000b668 <_Unwind_Resume>
    800020d0:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1, 0);
    800020d4:	00090513          	mv	a0,s2
    800020d8:	00001097          	auipc	ra,0x1
    800020dc:	bb0080e7          	jalr	-1104(ra) # 80002c88 <_ZdlPv>
    800020e0:	00048513          	mv	a0,s1
    800020e4:	00009097          	auipc	ra,0x9
    800020e8:	584080e7          	jalr	1412(ra) # 8000b668 <_Unwind_Resume>
    800020ec:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&f2, 0);
    800020f0:	00048513          	mv	a0,s1
    800020f4:	00001097          	auipc	ra,0x1
    800020f8:	b94080e7          	jalr	-1132(ra) # 80002c88 <_ZdlPv>
    800020fc:	00090513          	mv	a0,s2
    80002100:	00009097          	auipc	ra,0x9
    80002104:	568080e7          	jalr	1384(ra) # 8000b668 <_Unwind_Resume>

0000000080002108 <_Z8semTest2v>:
    }
}

void semTest2()
{
    80002108:	fd010113          	addi	sp,sp,-48
    8000210c:	02113423          	sd	ra,40(sp)
    80002110:	02813023          	sd	s0,32(sp)
    80002114:	00913c23          	sd	s1,24(sp)
    80002118:	01213823          	sd	s2,16(sp)
    8000211c:	01313423          	sd	s3,8(sp)
    80002120:	03010413          	addi	s0,sp,48
    s1 = new Semaphore(1);
    80002124:	01000513          	li	a0,16
    80002128:	00001097          	auipc	ra,0x1
    8000212c:	b38080e7          	jalr	-1224(ra) # 80002c60 <_Znwm>
    80002130:	00050493          	mv	s1,a0
    80002134:	00100593          	li	a1,1
    80002138:	00001097          	auipc	ra,0x1
    8000213c:	d64080e7          	jalr	-668(ra) # 80002e9c <_ZN9SemaphoreC1Ej>
    80002140:	00008797          	auipc	a5,0x8
    80002144:	3a97bc23          	sd	s1,952(a5) # 8000a4f8 <_ZL2s1>
    s2 = new Semaphore(0);
    80002148:	01000513          	li	a0,16
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	b14080e7          	jalr	-1260(ra) # 80002c60 <_Znwm>
    80002154:	00050493          	mv	s1,a0
    80002158:	00000593          	li	a1,0
    8000215c:	00001097          	auipc	ra,0x1
    80002160:	d40080e7          	jalr	-704(ra) # 80002e9c <_ZN9SemaphoreC1Ej>
    80002164:	00008797          	auipc	a5,0x8
    80002168:	3897be23          	sd	s1,924(a5) # 8000a500 <_ZL2s2>
    s3 = new Semaphore(0);
    8000216c:	01000513          	li	a0,16
    80002170:	00001097          	auipc	ra,0x1
    80002174:	af0080e7          	jalr	-1296(ra) # 80002c60 <_Znwm>
    80002178:	00050493          	mv	s1,a0
    8000217c:	00000593          	li	a1,0
    80002180:	00001097          	auipc	ra,0x1
    80002184:	d1c080e7          	jalr	-740(ra) # 80002e9c <_ZN9SemaphoreC1Ej>
    80002188:	00008797          	auipc	a5,0x8
    8000218c:	3897b023          	sd	s1,896(a5) # 8000a508 <_ZL2s3>
    Thread* t1 = new Thread(&f1_2, 0);
    80002190:	02000513          	li	a0,32
    80002194:	00001097          	auipc	ra,0x1
    80002198:	acc080e7          	jalr	-1332(ra) # 80002c60 <_Znwm>
    8000219c:	00050993          	mv	s3,a0
    800021a0:	00000613          	li	a2,0
    800021a4:	fffff597          	auipc	a1,0xfffff
    800021a8:	57c58593          	addi	a1,a1,1404 # 80001720 <_Z4f1_2Pv>
    800021ac:	00001097          	auipc	ra,0x1
    800021b0:	c50080e7          	jalr	-944(ra) # 80002dfc <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&f2_2, 0);
    800021b4:	02000513          	li	a0,32
    800021b8:	00001097          	auipc	ra,0x1
    800021bc:	aa8080e7          	jalr	-1368(ra) # 80002c60 <_Znwm>
    800021c0:	00050913          	mv	s2,a0
    800021c4:	00000613          	li	a2,0
    800021c8:	fffff597          	auipc	a1,0xfffff
    800021cc:	5e458593          	addi	a1,a1,1508 # 800017ac <_Z4f2_2Pv>
    800021d0:	00001097          	auipc	ra,0x1
    800021d4:	c2c080e7          	jalr	-980(ra) # 80002dfc <_ZN6ThreadC1EPFvPvES0_>
    Thread* t3 = new Thread(&f3_2, 0);
    800021d8:	02000513          	li	a0,32
    800021dc:	00001097          	auipc	ra,0x1
    800021e0:	a84080e7          	jalr	-1404(ra) # 80002c60 <_Znwm>
    800021e4:	00050493          	mv	s1,a0
    800021e8:	00000613          	li	a2,0
    800021ec:	fffff597          	auipc	a1,0xfffff
    800021f0:	64c58593          	addi	a1,a1,1612 # 80001838 <_Z4f3_2Pv>
    800021f4:	00001097          	auipc	ra,0x1
    800021f8:	c08080e7          	jalr	-1016(ra) # 80002dfc <_ZN6ThreadC1EPFvPvES0_>
    t3->start();
    800021fc:	00048513          	mv	a0,s1
    80002200:	00001097          	auipc	ra,0x1
    80002204:	b30080e7          	jalr	-1232(ra) # 80002d30 <_ZN6Thread5startEv>
    t2->start();
    80002208:	00090513          	mv	a0,s2
    8000220c:	00001097          	auipc	ra,0x1
    80002210:	b24080e7          	jalr	-1244(ra) # 80002d30 <_ZN6Thread5startEv>
    t1->start();
    80002214:	00098513          	mv	a0,s3
    80002218:	00001097          	auipc	ra,0x1
    8000221c:	b18080e7          	jalr	-1256(ra) # 80002d30 <_ZN6Thread5startEv>

    int y = 0;
    80002220:	00000493          	li	s1,0
    while(true)
    {
        y++;
    80002224:	0014849b          	addiw	s1,s1,1
        thread_dispatch();
    80002228:	fffff097          	auipc	ra,0xfffff
    8000222c:	0fc080e7          	jalr	252(ra) # 80001324 <thread_dispatch>
        if(y == 200000)
    80002230:	000317b7          	lui	a5,0x31
    80002234:	d4078793          	addi	a5,a5,-704 # 30d40 <_entry-0x7ffcf2c0>
    80002238:	fef496e3          	bne	s1,a5,80002224 <_Z8semTest2v+0x11c>
            break;
    }

}
    8000223c:	02813083          	ld	ra,40(sp)
    80002240:	02013403          	ld	s0,32(sp)
    80002244:	01813483          	ld	s1,24(sp)
    80002248:	01013903          	ld	s2,16(sp)
    8000224c:	00813983          	ld	s3,8(sp)
    80002250:	03010113          	addi	sp,sp,48
    80002254:	00008067          	ret
    80002258:	00050913          	mv	s2,a0
    s1 = new Semaphore(1);
    8000225c:	00048513          	mv	a0,s1
    80002260:	00001097          	auipc	ra,0x1
    80002264:	a28080e7          	jalr	-1496(ra) # 80002c88 <_ZdlPv>
    80002268:	00090513          	mv	a0,s2
    8000226c:	00009097          	auipc	ra,0x9
    80002270:	3fc080e7          	jalr	1020(ra) # 8000b668 <_Unwind_Resume>
    80002274:	00050913          	mv	s2,a0
    s2 = new Semaphore(0);
    80002278:	00048513          	mv	a0,s1
    8000227c:	00001097          	auipc	ra,0x1
    80002280:	a0c080e7          	jalr	-1524(ra) # 80002c88 <_ZdlPv>
    80002284:	00090513          	mv	a0,s2
    80002288:	00009097          	auipc	ra,0x9
    8000228c:	3e0080e7          	jalr	992(ra) # 8000b668 <_Unwind_Resume>
    80002290:	00050913          	mv	s2,a0
    s3 = new Semaphore(0);
    80002294:	00048513          	mv	a0,s1
    80002298:	00001097          	auipc	ra,0x1
    8000229c:	9f0080e7          	jalr	-1552(ra) # 80002c88 <_ZdlPv>
    800022a0:	00090513          	mv	a0,s2
    800022a4:	00009097          	auipc	ra,0x9
    800022a8:	3c4080e7          	jalr	964(ra) # 8000b668 <_Unwind_Resume>
    800022ac:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1_2, 0);
    800022b0:	00098513          	mv	a0,s3
    800022b4:	00001097          	auipc	ra,0x1
    800022b8:	9d4080e7          	jalr	-1580(ra) # 80002c88 <_ZdlPv>
    800022bc:	00048513          	mv	a0,s1
    800022c0:	00009097          	auipc	ra,0x9
    800022c4:	3a8080e7          	jalr	936(ra) # 8000b668 <_Unwind_Resume>
    800022c8:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&f2_2, 0);
    800022cc:	00090513          	mv	a0,s2
    800022d0:	00001097          	auipc	ra,0x1
    800022d4:	9b8080e7          	jalr	-1608(ra) # 80002c88 <_ZdlPv>
    800022d8:	00048513          	mv	a0,s1
    800022dc:	00009097          	auipc	ra,0x9
    800022e0:	38c080e7          	jalr	908(ra) # 8000b668 <_Unwind_Resume>
    800022e4:	00050913          	mv	s2,a0
    Thread* t3 = new Thread(&f3_2, 0);
    800022e8:	00048513          	mv	a0,s1
    800022ec:	00001097          	auipc	ra,0x1
    800022f0:	99c080e7          	jalr	-1636(ra) # 80002c88 <_ZdlPv>
    800022f4:	00090513          	mv	a0,s2
    800022f8:	00009097          	auipc	ra,0x9
    800022fc:	370080e7          	jalr	880(ra) # 8000b668 <_Unwind_Resume>

0000000080002300 <_Z14semaphoreTestsv>:

void semaphoreTests()
{
    80002300:	ff010113          	addi	sp,sp,-16
    80002304:	00113423          	sd	ra,8(sp)
    80002308:	00813023          	sd	s0,0(sp)
    8000230c:	01010413          	addi	s0,sp,16
    //semTest1();
    semTest2();
    80002310:	00000097          	auipc	ra,0x0
    80002314:	df8080e7          	jalr	-520(ra) # 80002108 <_Z8semTest2v>
}
    80002318:	00813083          	ld	ra,8(sp)
    8000231c:	00013403          	ld	s0,0(sp)
    80002320:	01010113          	addi	sp,sp,16
    80002324:	00008067          	ret

0000000080002328 <_Z7myTestsv>:

void myTests()
{
    80002328:	ff010113          	addi	sp,sp,-16
    8000232c:	00113423          	sd	ra,8(sp)
    80002330:	00813023          	sd	s0,0(sp)
    80002334:	01010413          	addi	s0,sp,16
    //memoryAllocationTests();
    //threadTests();
    //testQueue();
    semaphoreTests();
    80002338:	00000097          	auipc	ra,0x0
    8000233c:	fc8080e7          	jalr	-56(ra) # 80002300 <_Z14semaphoreTestsv>
}
    80002340:	00813083          	ld	ra,8(sp)
    80002344:	00013403          	ld	s0,0(sp)
    80002348:	01010113          	addi	sp,sp,16
    8000234c:	00008067          	ret

0000000080002350 <_ZN3PCB6runnerEv>:
    Scheduler::put(this);
}

//todo
void PCB::runner()
{
    80002350:	ff010113          	addi	sp,sp,-16
    80002354:	00113423          	sd	ra,8(sp)
    80002358:	00813023          	sd	s0,0(sp)
    8000235c:	01010413          	addi	s0,sp,16
    Riscv::printString("Runner started...\n");
    80002360:	00006517          	auipc	a0,0x6
    80002364:	dd850513          	addi	a0,a0,-552 # 80008138 <CONSOLE_STATUS+0x128>
    80002368:	00001097          	auipc	ra,0x1
    8000236c:	e20080e7          	jalr	-480(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    80002370:	00001097          	auipc	ra,0x1
    80002374:	df8080e7          	jalr	-520(ra) # 80003168 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    80002378:	00008797          	auipc	a5,0x8
    8000237c:	1987b783          	ld	a5,408(a5) # 8000a510 <_ZN3PCB7runningE>
    80002380:	0187b703          	ld	a4,24(a5)
    80002384:	0207b503          	ld	a0,32(a5)
    80002388:	000700e7          	jalr	a4
    //da li ovde treba da se predje u kernel rezim mozda
    //mozda moze da se iskoristi lock za neku promenljivu za PCB::running
    //kako ne bi pristupalo vise niti tome, jer malo je
    //nezgodna promena rezima ovde
    //running->setState(PCB::FINISHED);
    Riscv::printString("PCB finished\n");
    8000238c:	00006517          	auipc	a0,0x6
    80002390:	dc450513          	addi	a0,a0,-572 # 80008150 <CONSOLE_STATUS+0x140>
    80002394:	00001097          	auipc	ra,0x1
    80002398:	df4080e7          	jalr	-524(ra) # 80003188 <_ZN5Riscv11printStringEPKc>

    //todo
    //da li thread_exit ili dispatch
    thread_exit();
    8000239c:	fffff097          	auipc	ra,0xfffff
    800023a0:	fa8080e7          	jalr	-88(ra) # 80001344 <thread_exit>
    //thread_dispatch();
}
    800023a4:	00813083          	ld	ra,8(sp)
    800023a8:	00013403          	ld	s0,0(sp)
    800023ac:	01010113          	addi	sp,sp,16
    800023b0:	00008067          	ret

00000000800023b4 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800023b4:	fe010113          	addi	sp,sp,-32
    800023b8:	00113c23          	sd	ra,24(sp)
    800023bc:	00813823          	sd	s0,16(sp)
    800023c0:	00913423          	sd	s1,8(sp)
    800023c4:	02010413          	addi	s0,sp,32
    800023c8:	00050493          	mv	s1,a0
    })
    800023cc:	00e53423          	sd	a4,8(a0)
    800023d0:	00053823          	sd	zero,16(a0)
    800023d4:	00b53c23          	sd	a1,24(a0)
    800023d8:	02c53023          	sd	a2,32(a0)
    800023dc:	02d53423          	sd	a3,40(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800023e0:	000017b7          	lui	a5,0x1
    800023e4:	00f686b3          	add	a3,a3,a5
    })
    800023e8:	02d53c23          	sd	a3,56(a0)
    800023ec:	00000797          	auipc	a5,0x0
    800023f0:	f6478793          	addi	a5,a5,-156 # 80002350 <_ZN3PCB6runnerEv>
    800023f4:	04f53023          	sd	a5,64(a0)
    Scheduler::put(this);
    800023f8:	00000097          	auipc	ra,0x0
    800023fc:	6b4080e7          	jalr	1716(ra) # 80002aac <_ZN9Scheduler3putEP3PCB>
    nextPCB = 0;
    80002400:	0004b023          	sd	zero,0(s1)
}
    80002404:	01813083          	ld	ra,24(sp)
    80002408:	01013403          	ld	s0,16(sp)
    8000240c:	00813483          	ld	s1,8(sp)
    80002410:	02010113          	addi	sp,sp,32
    80002414:	00008067          	ret

0000000080002418 <_ZN3PCB5sleepEm>:
{
    80002418:	ff010113          	addi	sp,sp,-16
    8000241c:	00813423          	sd	s0,8(sp)
    80002420:	01010413          	addi	s0,sp,16
}
    80002424:	00813403          	ld	s0,8(sp)
    80002428:	01010113          	addi	sp,sp,16
    8000242c:	00008067          	ret

0000000080002430 <_ZN3PCB5startEv>:
{
    80002430:	ff010113          	addi	sp,sp,-16
    80002434:	00113423          	sd	ra,8(sp)
    80002438:	00813023          	sd	s0,0(sp)
    8000243c:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002440:	00000097          	auipc	ra,0x0
    80002444:	66c080e7          	jalr	1644(ra) # 80002aac <_ZN9Scheduler3putEP3PCB>
}
    80002448:	00813083          	ld	ra,8(sp)
    8000244c:	00013403          	ld	s0,0(sp)
    80002450:	01010113          	addi	sp,sp,16
    80002454:	00008067          	ret

0000000080002458 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002458:	fe010113          	addi	sp,sp,-32
    8000245c:	00113c23          	sd	ra,24(sp)
    80002460:	00813823          	sd	s0,16(sp)
    80002464:	00913423          	sd	s1,8(sp)
    80002468:	02010413          	addi	s0,sp,32
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    8000246c:	00008497          	auipc	s1,0x8
    80002470:	0a44b483          	ld	s1,164(s1) # 8000a510 <_ZN3PCB7runningE>
    80002474:	0304a703          	lw	a4,48(s1)
    if(old->getState() == PCB::RUNNING)
    80002478:	00100793          	li	a5,1
    8000247c:	04f70063          	beq	a4,a5,800024bc <_ZN3PCB8dispatchEv+0x64>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002480:	00000097          	auipc	ra,0x0
    80002484:	680080e7          	jalr	1664(ra) # 80002b00 <_ZN9Scheduler3getEv>
    80002488:	00008797          	auipc	a5,0x8
    8000248c:	08a7b423          	sd	a0,136(a5) # 8000a510 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    80002490:	00100793          	li	a5,1
    80002494:	02f52823          	sw	a5,48(a0)
    PCB::running->setState(PCB::RUNNING);
    //Riscv::printString("Switching context...\n");

    PCB::contextSwitch(&old->context, &running->context);
    80002498:	03850593          	addi	a1,a0,56
    8000249c:	03848513          	addi	a0,s1,56
    800024a0:	fffff097          	auipc	ra,0xfffff
    800024a4:	d88080e7          	jalr	-632(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800024a8:	01813083          	ld	ra,24(sp)
    800024ac:	01013403          	ld	s0,16(sp)
    800024b0:	00813483          	ld	s1,8(sp)
    800024b4:	02010113          	addi	sp,sp,32
    800024b8:	00008067          	ret
        Scheduler::put(old);
    800024bc:	00048513          	mv	a0,s1
    800024c0:	00000097          	auipc	ra,0x0
    800024c4:	5ec080e7          	jalr	1516(ra) # 80002aac <_ZN9Scheduler3putEP3PCB>
    800024c8:	fb9ff06f          	j	80002480 <_ZN3PCB8dispatchEv+0x28>

00000000800024cc <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800024cc:	ff010113          	addi	sp,sp,-16
    800024d0:	00113423          	sd	ra,8(sp)
    800024d4:	00813023          	sd	s0,0(sp)
    800024d8:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800024dc:	00001097          	auipc	ra,0x1
    800024e0:	4fc080e7          	jalr	1276(ra) # 800039d8 <_Z7kmallocm>
}
    800024e4:	00813083          	ld	ra,8(sp)
    800024e8:	00013403          	ld	s0,0(sp)
    800024ec:	01010113          	addi	sp,sp,16
    800024f0:	00008067          	ret

00000000800024f4 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    800024f4:	ff010113          	addi	sp,sp,-16
    800024f8:	00113423          	sd	ra,8(sp)
    800024fc:	00813023          	sd	s0,0(sp)
    80002500:	01010413          	addi	s0,sp,16
    kfree(p);
    80002504:	00001097          	auipc	ra,0x1
    80002508:	4fc080e7          	jalr	1276(ra) # 80003a00 <_Z5kfreePv>
}
    8000250c:	00813083          	ld	ra,8(sp)
    80002510:	00013403          	ld	s0,0(sp)
    80002514:	01010113          	addi	sp,sp,16
    80002518:	00008067          	ret

000000008000251c <_ZN3PCBD1Ev>:

PCB::~PCB() {
    8000251c:	ff010113          	addi	sp,sp,-16
    80002520:	00113423          	sd	ra,8(sp)
    80002524:	00813023          	sd	s0,0(sp)
    80002528:	01010413          	addi	s0,sp,16
    kfree(beginSP);
    8000252c:	02853503          	ld	a0,40(a0)
    80002530:	00001097          	auipc	ra,0x1
    80002534:	4d0080e7          	jalr	1232(ra) # 80003a00 <_Z5kfreePv>
    80002538:	00813083          	ld	ra,8(sp)
    8000253c:	00013403          	ld	s0,0(sp)
    80002540:	01010113          	addi	sp,sp,16
    80002544:	00008067          	ret

0000000080002548 <_Z41__static_initialization_and_destruction_0ii>:

char KConsole::getCharacter()
{
    KConsole::hasCharacters->wait();
    return getChar();
}
    80002548:	00100793          	li	a5,1
    8000254c:	00f50463          	beq	a0,a5,80002554 <_Z41__static_initialization_and_destruction_0ii+0xc>
    80002550:	00008067          	ret
    80002554:	000107b7          	lui	a5,0x10
    80002558:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000255c:	fef59ae3          	bne	a1,a5,80002550 <_Z41__static_initialization_and_destruction_0ii+0x8>
    80002560:	fe010113          	addi	sp,sp,-32
    80002564:	00113c23          	sd	ra,24(sp)
    80002568:	00813823          	sd	s0,16(sp)
    8000256c:	00913423          	sd	s1,8(sp)
    80002570:	01213023          	sd	s2,0(sp)
    80002574:	02010413          	addi	s0,sp,32
KSemaphore* KConsole::hasCharacters = new KSemaphore(0);
    80002578:	01800513          	li	a0,24
    8000257c:	00001097          	auipc	ra,0x1
    80002580:	6fc080e7          	jalr	1788(ra) # 80003c78 <_ZN10KSemaphorenwEm>
    80002584:	00050493          	mv	s1,a0
    80002588:	00000593          	li	a1,0
    8000258c:	00001097          	auipc	ra,0x1
    80002590:	49c080e7          	jalr	1180(ra) # 80003a28 <_ZN10KSemaphoreC1Ei>
    80002594:	00008797          	auipc	a5,0x8
    80002598:	f897ba23          	sd	s1,-108(a5) # 8000a528 <_ZN8KConsole13hasCharactersE>
}
    8000259c:	01813083          	ld	ra,24(sp)
    800025a0:	01013403          	ld	s0,16(sp)
    800025a4:	00813483          	ld	s1,8(sp)
    800025a8:	00013903          	ld	s2,0(sp)
    800025ac:	02010113          	addi	sp,sp,32
    800025b0:	00008067          	ret
    800025b4:	00050913          	mv	s2,a0
KSemaphore* KConsole::hasCharacters = new KSemaphore(0);
    800025b8:	00048513          	mv	a0,s1
    800025bc:	00001097          	auipc	ra,0x1
    800025c0:	6e4080e7          	jalr	1764(ra) # 80003ca0 <_ZN10KSemaphoredlEPv>
    800025c4:	00090513          	mv	a0,s2
    800025c8:	00009097          	auipc	ra,0x9
    800025cc:	0a0080e7          	jalr	160(ra) # 8000b668 <_Unwind_Resume>

00000000800025d0 <_ZN8KConsole7putCharEc>:
{
    800025d0:	fe010113          	addi	sp,sp,-32
    800025d4:	00113c23          	sd	ra,24(sp)
    800025d8:	00813823          	sd	s0,16(sp)
    800025dc:	00913423          	sd	s1,8(sp)
    800025e0:	02010413          	addi	s0,sp,32
    800025e4:	00050493          	mv	s1,a0
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    800025e8:	01000513          	li	a0,16
    800025ec:	00001097          	auipc	ra,0x1
    800025f0:	3ec080e7          	jalr	1004(ra) # 800039d8 <_Z7kmallocm>
    newElem->next = 0;
    800025f4:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    800025f8:	00950423          	sb	s1,8(a0)
    if(head == 0)
    800025fc:	00008797          	auipc	a5,0x8
    80002600:	f347b783          	ld	a5,-204(a5) # 8000a530 <_ZN8KConsole4headE>
    80002604:	02078663          	beqz	a5,80002630 <_ZN8KConsole7putCharEc+0x60>
        tail->next = newElem;
    80002608:	00008797          	auipc	a5,0x8
    8000260c:	f2078793          	addi	a5,a5,-224 # 8000a528 <_ZN8KConsole13hasCharactersE>
    80002610:	0107b703          	ld	a4,16(a5)
    80002614:	00a73023          	sd	a0,0(a4)
        tail = newElem;
    80002618:	00a7b823          	sd	a0,16(a5)
}
    8000261c:	01813083          	ld	ra,24(sp)
    80002620:	01013403          	ld	s0,16(sp)
    80002624:	00813483          	ld	s1,8(sp)
    80002628:	02010113          	addi	sp,sp,32
    8000262c:	00008067          	ret
        head = tail = newElem;
    80002630:	00008797          	auipc	a5,0x8
    80002634:	ef878793          	addi	a5,a5,-264 # 8000a528 <_ZN8KConsole13hasCharactersE>
    80002638:	00a7b823          	sd	a0,16(a5)
    8000263c:	00a7b423          	sd	a0,8(a5)
    80002640:	fddff06f          	j	8000261c <_ZN8KConsole7putCharEc+0x4c>

0000000080002644 <_ZN8KConsole7getCharEv>:
{
    80002644:	fe010113          	addi	sp,sp,-32
    80002648:	00113c23          	sd	ra,24(sp)
    8000264c:	00813823          	sd	s0,16(sp)
    80002650:	00913423          	sd	s1,8(sp)
    80002654:	02010413          	addi	s0,sp,32
    if(head == 0)
    80002658:	00008517          	auipc	a0,0x8
    8000265c:	ed853503          	ld	a0,-296(a0) # 8000a530 <_ZN8KConsole4headE>
    80002660:	04050263          	beqz	a0,800026a4 <_ZN8KConsole7getCharEv+0x60>
    head = head->next;
    80002664:	00053783          	ld	a5,0(a0)
    80002668:	00008717          	auipc	a4,0x8
    8000266c:	ecf73423          	sd	a5,-312(a4) # 8000a530 <_ZN8KConsole4headE>
    if(head == 0)
    80002670:	02078463          	beqz	a5,80002698 <_ZN8KConsole7getCharEv+0x54>
    char c = ret->data;
    80002674:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    80002678:	00001097          	auipc	ra,0x1
    8000267c:	388080e7          	jalr	904(ra) # 80003a00 <_Z5kfreePv>
}
    80002680:	00048513          	mv	a0,s1
    80002684:	01813083          	ld	ra,24(sp)
    80002688:	01013403          	ld	s0,16(sp)
    8000268c:	00813483          	ld	s1,8(sp)
    80002690:	02010113          	addi	sp,sp,32
    80002694:	00008067          	ret
        tail = 0;
    80002698:	00008797          	auipc	a5,0x8
    8000269c:	ea07b023          	sd	zero,-352(a5) # 8000a538 <_ZN8KConsole4tailE>
    800026a0:	fd5ff06f          	j	80002674 <_ZN8KConsole7getCharEv+0x30>
        return 0;
    800026a4:	00000493          	li	s1,0
    800026a8:	fd9ff06f          	j	80002680 <_ZN8KConsole7getCharEv+0x3c>

00000000800026ac <_ZN8KConsole12putCharacterEc>:
{
    800026ac:	ff010113          	addi	sp,sp,-16
    800026b0:	00113423          	sd	ra,8(sp)
    800026b4:	00813023          	sd	s0,0(sp)
    800026b8:	01010413          	addi	s0,sp,16
    putChar(c);
    800026bc:	00000097          	auipc	ra,0x0
    800026c0:	f14080e7          	jalr	-236(ra) # 800025d0 <_ZN8KConsole7putCharEc>
    hasCharacters->signal();
    800026c4:	00008517          	auipc	a0,0x8
    800026c8:	e6453503          	ld	a0,-412(a0) # 8000a528 <_ZN8KConsole13hasCharactersE>
    800026cc:	00001097          	auipc	ra,0x1
    800026d0:	564080e7          	jalr	1380(ra) # 80003c30 <_ZN10KSemaphore6signalEv>
}
    800026d4:	00813083          	ld	ra,8(sp)
    800026d8:	00013403          	ld	s0,0(sp)
    800026dc:	01010113          	addi	sp,sp,16
    800026e0:	00008067          	ret

00000000800026e4 <_ZN8KConsole12getCharacterEv>:
{
    800026e4:	ff010113          	addi	sp,sp,-16
    800026e8:	00113423          	sd	ra,8(sp)
    800026ec:	00813023          	sd	s0,0(sp)
    800026f0:	01010413          	addi	s0,sp,16
    KConsole::hasCharacters->wait();
    800026f4:	00008517          	auipc	a0,0x8
    800026f8:	e3453503          	ld	a0,-460(a0) # 8000a528 <_ZN8KConsole13hasCharactersE>
    800026fc:	00001097          	auipc	ra,0x1
    80002700:	3d4080e7          	jalr	980(ra) # 80003ad0 <_ZN10KSemaphore4waitEv>
    return getChar();
    80002704:	00000097          	auipc	ra,0x0
    80002708:	f40080e7          	jalr	-192(ra) # 80002644 <_ZN8KConsole7getCharEv>
}
    8000270c:	00813083          	ld	ra,8(sp)
    80002710:	00013403          	ld	s0,0(sp)
    80002714:	01010113          	addi	sp,sp,16
    80002718:	00008067          	ret

000000008000271c <_GLOBAL__sub_I__ZN8KConsole4headE>:
    8000271c:	ff010113          	addi	sp,sp,-16
    80002720:	00113423          	sd	ra,8(sp)
    80002724:	00813023          	sd	s0,0(sp)
    80002728:	01010413          	addi	s0,sp,16
    8000272c:	000105b7          	lui	a1,0x10
    80002730:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002734:	00100513          	li	a0,1
    80002738:	00000097          	auipc	ra,0x0
    8000273c:	e10080e7          	jalr	-496(ra) # 80002548 <_Z41__static_initialization_and_destruction_0ii>
    80002740:	00813083          	ld	ra,8(sp)
    80002744:	00013403          	ld	s0,0(sp)
    80002748:	01010113          	addi	sp,sp,16
    8000274c:	00008067          	ret

0000000080002750 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80002750:	ff010113          	addi	sp,sp,-16
    80002754:	00813423          	sd	s0,8(sp)
    80002758:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    8000275c:	00008797          	auipc	a5,0x8
    80002760:	d3c7b783          	ld	a5,-708(a5) # 8000a498 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002764:	0007b583          	ld	a1,0(a5)
    80002768:	00500793          	li	a5,5
    8000276c:	02f5a823          	sw	a5,48(a1)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80002770:	00008797          	auipc	a5,0x8
    80002774:	dd07b783          	ld	a5,-560(a5) # 8000a540 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80002778:	00000613          	li	a2,0
    while(curr != 0)
    8000277c:	02078063          	beqz	a5,8000279c <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    uint64 getTimeToSleep() {return timeToSleep;}
    80002780:	0105b683          	ld	a3,16(a1)
    80002784:	0107b703          	ld	a4,16(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80002788:	00e6e863          	bltu	a3,a4,80002798 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    8000278c:	00078613          	mv	a2,a5
        curr=curr->nextPCB;
    80002790:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    80002794:	fe9ff06f          	j	8000277c <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80002798:	00f5b023          	sd	a5,0(a1)
    }

    if(prev == 0)
    8000279c:	02060863          	beqz	a2,800027cc <_ZN12SleepPCBList17insertSleepingPCBEv+0x7c>
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    800027a0:	00008797          	auipc	a5,0x8
    800027a4:	cf87b783          	ld	a5,-776(a5) # 8000a498 <_GLOBAL_OFFSET_TABLE_+0x28>
    800027a8:	0007b783          	ld	a5,0(a5)
    800027ac:	0107b703          	ld	a4,16(a5)
    800027b0:	01063683          	ld	a3,16(a2)
    800027b4:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800027b8:	00e7b823          	sd	a4,16(a5)
        prev->nextPCB = PCB::running;
    800027bc:	00f63023          	sd	a5,0(a2)
    }
}
    800027c0:	00813403          	ld	s0,8(sp)
    800027c4:	01010113          	addi	sp,sp,16
    800027c8:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800027cc:	00008797          	auipc	a5,0x8
    800027d0:	ccc7b783          	ld	a5,-820(a5) # 8000a498 <_GLOBAL_OFFSET_TABLE_+0x28>
    800027d4:	0007b783          	ld	a5,0(a5)
    800027d8:	00008717          	auipc	a4,0x8
    800027dc:	d6f73423          	sd	a5,-664(a4) # 8000a540 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    800027e0:	0007b703          	ld	a4,0(a5)
    800027e4:	fc070ee3          	beqz	a4,800027c0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    uint64 getTimeToSleep() {return timeToSleep;}
    800027e8:	01073683          	ld	a3,16(a4)
    800027ec:	0107b783          	ld	a5,16(a5)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    800027f0:	40f687b3          	sub	a5,a3,a5
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800027f4:	00f73823          	sd	a5,16(a4)
    800027f8:	fc9ff06f          	j	800027c0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>

00000000800027fc <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    800027fc:	00008517          	auipc	a0,0x8
    80002800:	d4453503          	ld	a0,-700(a0) # 8000a540 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002804:	08050863          	beqz	a0,80002894 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002808:	01053783          	ld	a5,16(a0)
    {
        //Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    8000280c:	00100713          	li	a4,1
    80002810:	00e78863          	beq	a5,a4,80002820 <_ZN12SleepPCBList13tryToWakePCBsEv+0x24>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    80002814:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002818:	00f53823          	sd	a5,16(a0)
    8000281c:	00008067          	ret
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002820:	06050a63          	beqz	a0,80002894 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    80002824:	00008797          	auipc	a5,0x8
    80002828:	d1c7b783          	ld	a5,-740(a5) # 8000a540 <_ZN12SleepPCBList15sleepingPCBHeadE>
    8000282c:	00a78663          	beq	a5,a0,80002838 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002830:	01053783          	ld	a5,16(a0)
    80002834:	06079063          	bnez	a5,80002894 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
{
    80002838:	fe010113          	addi	sp,sp,-32
    8000283c:	00113c23          	sd	ra,24(sp)
    80002840:	00813823          	sd	s0,16(sp)
    80002844:	00913423          	sd	s1,8(sp)
    80002848:	02010413          	addi	s0,sp,32
            curr = curr->nextPCB;
    8000284c:	00053483          	ld	s1,0(a0)
            old->nextPCB = 0;
    80002850:	00053023          	sd	zero,0(a0)
            Scheduler::put(old);
    80002854:	00000097          	auipc	ra,0x0
    80002858:	258080e7          	jalr	600(ra) # 80002aac <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    8000285c:	00008797          	auipc	a5,0x8
    80002860:	ce97b223          	sd	s1,-796(a5) # 8000a540 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80002864:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002868:	00048c63          	beqz	s1,80002880 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    8000286c:	00008797          	auipc	a5,0x8
    80002870:	cd47b783          	ld	a5,-812(a5) # 8000a540 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002874:	fc978ce3          	beq	a5,s1,8000284c <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80002878:	0104b783          	ld	a5,16(s1)
    8000287c:	fc0788e3          	beqz	a5,8000284c <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    }
}
    80002880:	01813083          	ld	ra,24(sp)
    80002884:	01013403          	ld	s0,16(sp)
    80002888:	00813483          	ld	s1,8(sp)
    8000288c:	02010113          	addi	sp,sp,32
    80002890:	00008067          	ret
    80002894:	00008067          	ret

0000000080002898 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80002898:	fe010113          	addi	sp,sp,-32
    8000289c:	00113c23          	sd	ra,24(sp)
    800028a0:	00813823          	sd	s0,16(sp)
    800028a4:	00913423          	sd	s1,8(sp)
    800028a8:	01213023          	sd	s2,0(sp)
    800028ac:	02010413          	addi	s0,sp,32
    800028b0:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    800028b4:	00053503          	ld	a0,0(a0)
    800028b8:	00853903          	ld	s2,8(a0)
    kfree(first);
    800028bc:	00001097          	auipc	ra,0x1
    800028c0:	144080e7          	jalr	324(ra) # 80003a00 <_Z5kfreePv>
    first = newFirst;
    800028c4:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    800028c8:	00090e63          	beqz	s2,800028e4 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    800028cc:	01813083          	ld	ra,24(sp)
    800028d0:	01013403          	ld	s0,16(sp)
    800028d4:	00813483          	ld	s1,8(sp)
    800028d8:	00013903          	ld	s2,0(sp)
    800028dc:	02010113          	addi	sp,sp,32
    800028e0:	00008067          	ret
        first = last = 0;
    800028e4:	0004b423          	sd	zero,8(s1)
    800028e8:	0004b023          	sd	zero,0(s1)
}
    800028ec:	fe1ff06f          	j	800028cc <_ZN5Queue3popEv+0x34>

00000000800028f0 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    800028f0:	fe010113          	addi	sp,sp,-32
    800028f4:	00113c23          	sd	ra,24(sp)
    800028f8:	00813823          	sd	s0,16(sp)
    800028fc:	00913423          	sd	s1,8(sp)
    80002900:	01213023          	sd	s2,0(sp)
    80002904:	02010413          	addi	s0,sp,32
    80002908:	00050493          	mv	s1,a0
    8000290c:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80002910:	01000513          	li	a0,16
    80002914:	00001097          	auipc	ra,0x1
    80002918:	0c4080e7          	jalr	196(ra) # 800039d8 <_Z7kmallocm>
    newElem->data = t;
    8000291c:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80002920:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80002924:	0004b783          	ld	a5,0(s1)
    80002928:	02078463          	beqz	a5,80002950 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    8000292c:	0084b783          	ld	a5,8(s1)
    80002930:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80002934:	00a4b423          	sd	a0,8(s1)
    }
}
    80002938:	01813083          	ld	ra,24(sp)
    8000293c:	01013403          	ld	s0,16(sp)
    80002940:	00813483          	ld	s1,8(sp)
    80002944:	00013903          	ld	s2,0(sp)
    80002948:	02010113          	addi	sp,sp,32
    8000294c:	00008067          	ret
        first = newElem;
    80002950:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    80002954:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80002958:	00053423          	sd	zero,8(a0)
    8000295c:	0004b783          	ld	a5,0(s1)
    80002960:	0007b423          	sd	zero,8(a5)
    80002964:	fd5ff06f          	j	80002938 <_ZN5Queue4pushEP3PCB+0x48>

0000000080002968 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    80002968:	ff010113          	addi	sp,sp,-16
    8000296c:	00813423          	sd	s0,8(sp)
    80002970:	01010413          	addi	s0,sp,16
    if(first == 0)
    80002974:	00053503          	ld	a0,0(a0)
    80002978:	00050463          	beqz	a0,80002980 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    8000297c:	00053503          	ld	a0,0(a0)
}
    80002980:	00813403          	ld	s0,8(sp)
    80002984:	01010113          	addi	sp,sp,16
    80002988:	00008067          	ret

000000008000298c <_ZN5QueueC1Ev>:

Queue::Queue() {
    8000298c:	ff010113          	addi	sp,sp,-16
    80002990:	00813423          	sd	s0,8(sp)
    80002994:	01010413          	addi	s0,sp,16
    first = last = 0;
    80002998:	00053423          	sd	zero,8(a0)
    8000299c:	00053023          	sd	zero,0(a0)
}
    800029a0:	00813403          	ld	s0,8(sp)
    800029a4:	01010113          	addi	sp,sp,16
    800029a8:	00008067          	ret

00000000800029ac <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    800029ac:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    800029b0:	04050063          	beqz	a0,800029f0 <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    800029b4:	fe010113          	addi	sp,sp,-32
    800029b8:	00113c23          	sd	ra,24(sp)
    800029bc:	00813823          	sd	s0,16(sp)
    800029c0:	00913423          	sd	s1,8(sp)
    800029c4:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    800029c8:	00853483          	ld	s1,8(a0)
        kfree(old);
    800029cc:	00001097          	auipc	ra,0x1
    800029d0:	034080e7          	jalr	52(ra) # 80003a00 <_Z5kfreePv>
        curr = curr->next;
    800029d4:	00048513          	mv	a0,s1
    while(curr != 0)
    800029d8:	fe0498e3          	bnez	s1,800029c8 <_ZN5QueueD1Ev+0x1c>
    }
}
    800029dc:	01813083          	ld	ra,24(sp)
    800029e0:	01013403          	ld	s0,16(sp)
    800029e4:	00813483          	ld	s1,8(sp)
    800029e8:	02010113          	addi	sp,sp,32
    800029ec:	00008067          	ret
    800029f0:	00008067          	ret

00000000800029f4 <_ZN5Queue4sizeEv>:

int Queue::size() {
    800029f4:	ff010113          	addi	sp,sp,-16
    800029f8:	00813423          	sd	s0,8(sp)
    800029fc:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80002a00:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    80002a04:	00000513          	li	a0,0
    while(curr != 0)
    80002a08:	00078863          	beqz	a5,80002a18 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    80002a0c:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80002a10:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002a14:	ff5ff06f          	j	80002a08 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80002a18:	00813403          	ld	s0,8(sp)
    80002a1c:	01010113          	addi	sp,sp,16
    80002a20:	00008067          	ret

0000000080002a24 <_ZN9SchedulernwEm>:
PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;


void *Scheduler::operator new(size_t size)
{
    80002a24:	ff010113          	addi	sp,sp,-16
    80002a28:	00113423          	sd	ra,8(sp)
    80002a2c:	00813023          	sd	s0,0(sp)
    80002a30:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80002a34:	00001097          	auipc	ra,0x1
    80002a38:	fa4080e7          	jalr	-92(ra) # 800039d8 <_Z7kmallocm>
}
    80002a3c:	00813083          	ld	ra,8(sp)
    80002a40:	00013403          	ld	s0,0(sp)
    80002a44:	01010113          	addi	sp,sp,16
    80002a48:	00008067          	ret

0000000080002a4c <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80002a4c:	ff010113          	addi	sp,sp,-16
    80002a50:	00113423          	sd	ra,8(sp)
    80002a54:	00813023          	sd	s0,0(sp)
    80002a58:	01010413          	addi	s0,sp,16
    kfree(p);
    80002a5c:	00001097          	auipc	ra,0x1
    80002a60:	fa4080e7          	jalr	-92(ra) # 80003a00 <_Z5kfreePv>
}
    80002a64:	00813083          	ld	ra,8(sp)
    80002a68:	00013403          	ld	s0,0(sp)
    80002a6c:	01010113          	addi	sp,sp,16
    80002a70:	00008067          	ret

0000000080002a74 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80002a74:	ff010113          	addi	sp,sp,-16
    80002a78:	00813423          	sd	s0,8(sp)
    80002a7c:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80002a80:	00008797          	auipc	a5,0x8
    80002a84:	ac87b783          	ld	a5,-1336(a5) # 8000a548 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80002a88:	00000513          	li	a0,0
    while(curr != 0)
    80002a8c:	00078863          	beqz	a5,80002a9c <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80002a90:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80002a94:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    80002a98:	ff5ff06f          	j	80002a8c <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80002a9c:	0005051b          	sext.w	a0,a0
    80002aa0:	00813403          	ld	s0,8(sp)
    80002aa4:	01010113          	addi	sp,sp,16
    80002aa8:	00008067          	ret

0000000080002aac <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80002aac:	ff010113          	addi	sp,sp,-16
    80002ab0:	00813423          	sd	s0,8(sp)
    80002ab4:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80002ab8:	02052823          	sw	zero,48(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80002abc:	00053023          	sd	zero,0(a0)
    if(schedulerPCBHead == 0)
    80002ac0:	00008797          	auipc	a5,0x8
    80002ac4:	a887b783          	ld	a5,-1400(a5) # 8000a548 <_ZN9Scheduler16schedulerPCBHeadE>
    80002ac8:	02078263          	beqz	a5,80002aec <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80002acc:	00008797          	auipc	a5,0x8
    80002ad0:	a7c78793          	addi	a5,a5,-1412 # 8000a548 <_ZN9Scheduler16schedulerPCBHeadE>
    80002ad4:	0087b703          	ld	a4,8(a5)
    80002ad8:	00a73023          	sd	a0,0(a4)
        schedulerPCBTail = pcb;
    80002adc:	00a7b423          	sd	a0,8(a5)
    }
}
    80002ae0:	00813403          	ld	s0,8(sp)
    80002ae4:	01010113          	addi	sp,sp,16
    80002ae8:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80002aec:	00008797          	auipc	a5,0x8
    80002af0:	a5c78793          	addi	a5,a5,-1444 # 8000a548 <_ZN9Scheduler16schedulerPCBHeadE>
    80002af4:	00a7b423          	sd	a0,8(a5)
    80002af8:	00a7b023          	sd	a0,0(a5)
    80002afc:	fe5ff06f          	j	80002ae0 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080002b00 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80002b00:	ff010113          	addi	sp,sp,-16
    80002b04:	00813423          	sd	s0,8(sp)
    80002b08:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80002b0c:	00008517          	auipc	a0,0x8
    80002b10:	a3c53503          	ld	a0,-1476(a0) # 8000a548 <_ZN9Scheduler16schedulerPCBHeadE>
    80002b14:	00050c63          	beqz	a0,80002b2c <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80002b18:	00053783          	ld	a5,0(a0)
    80002b1c:	00078e63          	beqz	a5,80002b38 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80002b20:	00008717          	auipc	a4,0x8
    80002b24:	a2f73423          	sd	a5,-1496(a4) # 8000a548 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80002b28:	00053023          	sd	zero,0(a0)
    return retval;
}
    80002b2c:	00813403          	ld	s0,8(sp)
    80002b30:	01010113          	addi	sp,sp,16
    80002b34:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80002b38:	00008797          	auipc	a5,0x8
    80002b3c:	a1078793          	addi	a5,a5,-1520 # 8000a548 <_ZN9Scheduler16schedulerPCBHeadE>
    80002b40:	0007b423          	sd	zero,8(a5)
    80002b44:	0007b023          	sd	zero,0(a5)
    80002b48:	fe1ff06f          	j	80002b28 <_ZN9Scheduler3getEv+0x28>

0000000080002b4c <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80002b4c:	ff010113          	addi	sp,sp,-16
    80002b50:	00113423          	sd	ra,8(sp)
    80002b54:	00813023          	sd	s0,0(sp)
    80002b58:	01010413          	addi	s0,sp,16
    Riscv::initSystem();
    80002b5c:	00000097          	auipc	ra,0x0
    80002b60:	504080e7          	jalr	1284(ra) # 80003060 <_ZN5Riscv10initSystemEv>

    Riscv::enableInterrupts();
    80002b64:	00000097          	auipc	ra,0x0
    80002b68:	59c080e7          	jalr	1436(ra) # 80003100 <_ZN5Riscv16enableInterruptsEv>
    //todo
    //go to unprivileged mode
    userMain();
    80002b6c:	00003097          	auipc	ra,0x3
    80002b70:	ac8080e7          	jalr	-1336(ra) # 80005634 <_Z8userMainv>
    Riscv::disableInterrupts();
    80002b74:	00000097          	auipc	ra,0x0
    80002b78:	5ac080e7          	jalr	1452(ra) # 80003120 <_ZN5Riscv17disableInterruptsEv>

    //myTests();

    Riscv::endSystem();
    80002b7c:	00000097          	auipc	ra,0x0
    80002b80:	5c4080e7          	jalr	1476(ra) # 80003140 <_ZN5Riscv9endSystemEv>

    Riscv::printString("End...");
    80002b84:	00005517          	auipc	a0,0x5
    80002b88:	5dc50513          	addi	a0,a0,1500 # 80008160 <CONSOLE_STATUS+0x150>
    80002b8c:	00000097          	auipc	ra,0x0
    80002b90:	5fc080e7          	jalr	1532(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    80002b94:	00813083          	ld	ra,8(sp)
    80002b98:	00013403          	ld	s0,0(sp)
    80002b9c:	01010113          	addi	sp,sp,16
    80002ba0:	00008067          	ret

0000000080002ba4 <_ZN6ThreadD1Ev>:
    Riscv::printString("Thread runner started...\n");
    Thread* thr = (Thread*)t;
    thr->run();
}

Thread::~Thread() {
    80002ba4:	ff010113          	addi	sp,sp,-16
    80002ba8:	00113423          	sd	ra,8(sp)
    80002bac:	00813023          	sd	s0,0(sp)
    80002bb0:	01010413          	addi	s0,sp,16
    80002bb4:	00007797          	auipc	a5,0x7
    80002bb8:	7e478793          	addi	a5,a5,2020 # 8000a398 <_ZTV6Thread+0x10>
    80002bbc:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80002bc0:	00853503          	ld	a0,8(a0)
    80002bc4:	ffffe097          	auipc	ra,0xffffe
    80002bc8:	6b4080e7          	jalr	1716(ra) # 80001278 <mem_free>
}
    80002bcc:	00813083          	ld	ra,8(sp)
    80002bd0:	00013403          	ld	s0,0(sp)
    80002bd4:	01010113          	addi	sp,sp,16
    80002bd8:	00008067          	ret

0000000080002bdc <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal((void*)myHandle);
}

Semaphore::~Semaphore() {
    80002bdc:	ff010113          	addi	sp,sp,-16
    80002be0:	00113423          	sd	ra,8(sp)
    80002be4:	00813023          	sd	s0,0(sp)
    80002be8:	01010413          	addi	s0,sp,16
    80002bec:	00007797          	auipc	a5,0x7
    80002bf0:	7d478793          	addi	a5,a5,2004 # 8000a3c0 <_ZTV9Semaphore+0x10>
    80002bf4:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80002bf8:	00853503          	ld	a0,8(a0)
    80002bfc:	ffffe097          	auipc	ra,0xffffe
    80002c00:	67c080e7          	jalr	1660(ra) # 80001278 <mem_free>
}
    80002c04:	00813083          	ld	ra,8(sp)
    80002c08:	00013403          	ld	s0,0(sp)
    80002c0c:	01010113          	addi	sp,sp,16
    80002c10:	00008067          	ret

0000000080002c14 <_ZN6Thread6runnerEPv>:
void Thread::runner(void *t) {
    80002c14:	fe010113          	addi	sp,sp,-32
    80002c18:	00113c23          	sd	ra,24(sp)
    80002c1c:	00813823          	sd	s0,16(sp)
    80002c20:	00913423          	sd	s1,8(sp)
    80002c24:	02010413          	addi	s0,sp,32
    80002c28:	00050493          	mv	s1,a0
    Riscv::printString("Thread runner started...\n");
    80002c2c:	00005517          	auipc	a0,0x5
    80002c30:	53c50513          	addi	a0,a0,1340 # 80008168 <CONSOLE_STATUS+0x158>
    80002c34:	00000097          	auipc	ra,0x0
    80002c38:	554080e7          	jalr	1364(ra) # 80003188 <_ZN5Riscv11printStringEPKc>
    thr->run();
    80002c3c:	0004b783          	ld	a5,0(s1)
    80002c40:	0107b783          	ld	a5,16(a5)
    80002c44:	00048513          	mv	a0,s1
    80002c48:	000780e7          	jalr	a5
}
    80002c4c:	01813083          	ld	ra,24(sp)
    80002c50:	01013403          	ld	s0,16(sp)
    80002c54:	00813483          	ld	s1,8(sp)
    80002c58:	02010113          	addi	sp,sp,32
    80002c5c:	00008067          	ret

0000000080002c60 <_Znwm>:
{
    80002c60:	ff010113          	addi	sp,sp,-16
    80002c64:	00113423          	sd	ra,8(sp)
    80002c68:	00813023          	sd	s0,0(sp)
    80002c6c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002c70:	ffffe097          	auipc	ra,0xffffe
    80002c74:	5d8080e7          	jalr	1496(ra) # 80001248 <mem_alloc>
}
    80002c78:	00813083          	ld	ra,8(sp)
    80002c7c:	00013403          	ld	s0,0(sp)
    80002c80:	01010113          	addi	sp,sp,16
    80002c84:	00008067          	ret

0000000080002c88 <_ZdlPv>:
{
    80002c88:	ff010113          	addi	sp,sp,-16
    80002c8c:	00113423          	sd	ra,8(sp)
    80002c90:	00813023          	sd	s0,0(sp)
    80002c94:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002c98:	ffffe097          	auipc	ra,0xffffe
    80002c9c:	5e0080e7          	jalr	1504(ra) # 80001278 <mem_free>
}
    80002ca0:	00813083          	ld	ra,8(sp)
    80002ca4:	00013403          	ld	s0,0(sp)
    80002ca8:	01010113          	addi	sp,sp,16
    80002cac:	00008067          	ret

0000000080002cb0 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002cb0:	fe010113          	addi	sp,sp,-32
    80002cb4:	00113c23          	sd	ra,24(sp)
    80002cb8:	00813823          	sd	s0,16(sp)
    80002cbc:	00913423          	sd	s1,8(sp)
    80002cc0:	02010413          	addi	s0,sp,32
    80002cc4:	00050493          	mv	s1,a0
}
    80002cc8:	00000097          	auipc	ra,0x0
    80002ccc:	edc080e7          	jalr	-292(ra) # 80002ba4 <_ZN6ThreadD1Ev>
    80002cd0:	00048513          	mv	a0,s1
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	fb4080e7          	jalr	-76(ra) # 80002c88 <_ZdlPv>
    80002cdc:	01813083          	ld	ra,24(sp)
    80002ce0:	01013403          	ld	s0,16(sp)
    80002ce4:	00813483          	ld	s1,8(sp)
    80002ce8:	02010113          	addi	sp,sp,32
    80002cec:	00008067          	ret

0000000080002cf0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002cf0:	fe010113          	addi	sp,sp,-32
    80002cf4:	00113c23          	sd	ra,24(sp)
    80002cf8:	00813823          	sd	s0,16(sp)
    80002cfc:	00913423          	sd	s1,8(sp)
    80002d00:	02010413          	addi	s0,sp,32
    80002d04:	00050493          	mv	s1,a0
}
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	ed4080e7          	jalr	-300(ra) # 80002bdc <_ZN9SemaphoreD1Ev>
    80002d10:	00048513          	mv	a0,s1
    80002d14:	00000097          	auipc	ra,0x0
    80002d18:	f74080e7          	jalr	-140(ra) # 80002c88 <_ZdlPv>
    80002d1c:	01813083          	ld	ra,24(sp)
    80002d20:	01013403          	ld	s0,16(sp)
    80002d24:	00813483          	ld	s1,8(sp)
    80002d28:	02010113          	addi	sp,sp,32
    80002d2c:	00008067          	ret

0000000080002d30 <_ZN6Thread5startEv>:
    if(myHandle == 0)
    80002d30:	00853783          	ld	a5,8(a0)
    80002d34:	02079c63          	bnez	a5,80002d6c <_ZN6Thread5startEv+0x3c>
{
    80002d38:	ff010113          	addi	sp,sp,-16
    80002d3c:	00113423          	sd	ra,8(sp)
    80002d40:	00813023          	sd	s0,0(sp)
    80002d44:	01010413          	addi	s0,sp,16
        return thread_create((void**)&myHandle, f, args);
    80002d48:	01853603          	ld	a2,24(a0)
    80002d4c:	01053583          	ld	a1,16(a0)
    80002d50:	00850513          	addi	a0,a0,8
    80002d54:	ffffe097          	auipc	ra,0xffffe
    80002d58:	550080e7          	jalr	1360(ra) # 800012a4 <thread_create>
}
    80002d5c:	00813083          	ld	ra,8(sp)
    80002d60:	00013403          	ld	s0,0(sp)
    80002d64:	01010113          	addi	sp,sp,16
    80002d68:	00008067          	ret
        return -1;
    80002d6c:	fff00513          	li	a0,-1
}
    80002d70:	00008067          	ret

0000000080002d74 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002d74:	ff010113          	addi	sp,sp,-16
    80002d78:	00113423          	sd	ra,8(sp)
    80002d7c:	00813023          	sd	s0,0(sp)
    80002d80:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002d84:	ffffe097          	auipc	ra,0xffffe
    80002d88:	5a0080e7          	jalr	1440(ra) # 80001324 <thread_dispatch>
}
    80002d8c:	00813083          	ld	ra,8(sp)
    80002d90:	00013403          	ld	s0,0(sp)
    80002d94:	01010113          	addi	sp,sp,16
    80002d98:	00008067          	ret

0000000080002d9c <_ZN6Thread5sleepEm>:
void Thread::sleep(time_t time) {
    80002d9c:	ff010113          	addi	sp,sp,-16
    80002da0:	00113423          	sd	ra,8(sp)
    80002da4:	00813023          	sd	s0,0(sp)
    80002da8:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80002dac:	ffffe097          	auipc	ra,0xffffe
    80002db0:	67c080e7          	jalr	1660(ra) # 80001428 <time_sleep>
}
    80002db4:	00813083          	ld	ra,8(sp)
    80002db8:	00013403          	ld	s0,0(sp)
    80002dbc:	01010113          	addi	sp,sp,16
    80002dc0:	00008067          	ret

0000000080002dc4 <_ZN14PeriodicThread6runnerEPv>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    this->time = period;
}

void PeriodicThread::runner(void* pt)
{
    80002dc4:	fe010113          	addi	sp,sp,-32
    80002dc8:	00113c23          	sd	ra,24(sp)
    80002dcc:	00813823          	sd	s0,16(sp)
    80002dd0:	00913423          	sd	s1,8(sp)
    80002dd4:	02010413          	addi	s0,sp,32
    80002dd8:	00050493          	mv	s1,a0
    PeriodicThread* pThread = (PeriodicThread*)pt;
    while(true)
    {
        pThread->periodicActivation();
    80002ddc:	0004b783          	ld	a5,0(s1)
    80002de0:	0187b783          	ld	a5,24(a5)
    80002de4:	00048513          	mv	a0,s1
    80002de8:	000780e7          	jalr	a5
        Thread::sleep(pThread->time);
    80002dec:	0204b503          	ld	a0,32(s1)
    80002df0:	00000097          	auipc	ra,0x0
    80002df4:	fac080e7          	jalr	-84(ra) # 80002d9c <_ZN6Thread5sleepEm>
    while(true)
    80002df8:	fe5ff06f          	j	80002ddc <_ZN14PeriodicThread6runnerEPv+0x18>

0000000080002dfc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args) {
    80002dfc:	ff010113          	addi	sp,sp,-16
    80002e00:	00813423          	sd	s0,8(sp)
    80002e04:	01010413          	addi	s0,sp,16
    80002e08:	00007797          	auipc	a5,0x7
    80002e0c:	59078793          	addi	a5,a5,1424 # 8000a398 <_ZTV6Thread+0x10>
    80002e10:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80002e14:	00053423          	sd	zero,8(a0)
    f = body;
    80002e18:	00b53823          	sd	a1,16(a0)
    this->args = args;
    80002e1c:	00c53c23          	sd	a2,24(a0)
}
    80002e20:	00813403          	ld	s0,8(sp)
    80002e24:	01010113          	addi	sp,sp,16
    80002e28:	00008067          	ret

0000000080002e2c <_ZN6ThreadC1Ev>:
Thread::Thread()
    80002e2c:	ff010113          	addi	sp,sp,-16
    80002e30:	00813423          	sd	s0,8(sp)
    80002e34:	01010413          	addi	s0,sp,16
    80002e38:	00007797          	auipc	a5,0x7
    80002e3c:	56078793          	addi	a5,a5,1376 # 8000a398 <_ZTV6Thread+0x10>
    80002e40:	00f53023          	sd	a5,0(a0)
    f = &Thread::runner;
    80002e44:	00000797          	auipc	a5,0x0
    80002e48:	dd078793          	addi	a5,a5,-560 # 80002c14 <_ZN6Thread6runnerEPv>
    80002e4c:	00f53823          	sd	a5,16(a0)
    myHandle = 0;
    80002e50:	00053423          	sd	zero,8(a0)
    args = (void*)this;
    80002e54:	00a53c23          	sd	a0,24(a0)
}
    80002e58:	00813403          	ld	s0,8(sp)
    80002e5c:	01010113          	addi	sp,sp,16
    80002e60:	00008067          	ret

0000000080002e64 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80002e64:	00853503          	ld	a0,8(a0)
    80002e68:	02050663          	beqz	a0,80002e94 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80002e6c:	ff010113          	addi	sp,sp,-16
    80002e70:	00113423          	sd	ra,8(sp)
    80002e74:	00813023          	sd	s0,0(sp)
    80002e78:	01010413          	addi	s0,sp,16
    return sem_wait((void *) myHandle);
    80002e7c:	ffffe097          	auipc	ra,0xffffe
    80002e80:	554080e7          	jalr	1364(ra) # 800013d0 <sem_wait>
}
    80002e84:	00813083          	ld	ra,8(sp)
    80002e88:	00013403          	ld	s0,0(sp)
    80002e8c:	01010113          	addi	sp,sp,16
    80002e90:	00008067          	ret
        return -1;
    80002e94:	fff00513          	li	a0,-1
}
    80002e98:	00008067          	ret

0000000080002e9c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002e9c:	fe010113          	addi	sp,sp,-32
    80002ea0:	00113c23          	sd	ra,24(sp)
    80002ea4:	00813823          	sd	s0,16(sp)
    80002ea8:	00913423          	sd	s1,8(sp)
    80002eac:	02010413          	addi	s0,sp,32
    80002eb0:	00050493          	mv	s1,a0
    80002eb4:	00007797          	auipc	a5,0x7
    80002eb8:	50c78793          	addi	a5,a5,1292 # 8000a3c0 <_ZTV9Semaphore+0x10>
    80002ebc:	00f53023          	sd	a5,0(a0)
    int retval = sem_open((void**)&myHandle, init);
    80002ec0:	00850513          	addi	a0,a0,8
    80002ec4:	ffffe097          	auipc	ra,0xffffe
    80002ec8:	4a8080e7          	jalr	1192(ra) # 8000136c <sem_open>
    if(retval != 0)
    80002ecc:	00050463          	beqz	a0,80002ed4 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80002ed0:	0004b423          	sd	zero,8(s1)
}
    80002ed4:	01813083          	ld	ra,24(sp)
    80002ed8:	01013403          	ld	s0,16(sp)
    80002edc:	00813483          	ld	s1,8(sp)
    80002ee0:	02010113          	addi	sp,sp,32
    80002ee4:	00008067          	ret

0000000080002ee8 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80002ee8:	00853503          	ld	a0,8(a0)
    80002eec:	02050663          	beqz	a0,80002f18 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80002ef0:	ff010113          	addi	sp,sp,-16
    80002ef4:	00113423          	sd	ra,8(sp)
    80002ef8:	00813023          	sd	s0,0(sp)
    80002efc:	01010413          	addi	s0,sp,16
    return sem_signal((void*)myHandle);
    80002f00:	ffffe097          	auipc	ra,0xffffe
    80002f04:	4fc080e7          	jalr	1276(ra) # 800013fc <sem_signal>
}
    80002f08:	00813083          	ld	ra,8(sp)
    80002f0c:	00013403          	ld	s0,0(sp)
    80002f10:	01010113          	addi	sp,sp,16
    80002f14:	00008067          	ret
        return -1;
    80002f18:	fff00513          	li	a0,-1
}
    80002f1c:	00008067          	ret

0000000080002f20 <_ZN7Console4getcEv>:
char Console::getc() {
    80002f20:	ff010113          	addi	sp,sp,-16
    80002f24:	00813423          	sd	s0,8(sp)
    80002f28:	01010413          	addi	s0,sp,16
}
    80002f2c:	00000513          	li	a0,0
    80002f30:	00813403          	ld	s0,8(sp)
    80002f34:	01010113          	addi	sp,sp,16
    80002f38:	00008067          	ret

0000000080002f3c <_ZN7Console4putcEc>:
void Console::putc(char) {
    80002f3c:	ff010113          	addi	sp,sp,-16
    80002f40:	00813423          	sd	s0,8(sp)
    80002f44:	01010413          	addi	s0,sp,16
}
    80002f48:	00813403          	ld	s0,8(sp)
    80002f4c:	01010113          	addi	sp,sp,16
    80002f50:	00008067          	ret

0000000080002f54 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    80002f54:	fe010113          	addi	sp,sp,-32
    80002f58:	00113c23          	sd	ra,24(sp)
    80002f5c:	00813823          	sd	s0,16(sp)
    80002f60:	00913423          	sd	s1,8(sp)
    80002f64:	01213023          	sd	s2,0(sp)
    80002f68:	02010413          	addi	s0,sp,32
    80002f6c:	00050493          	mv	s1,a0
    80002f70:	00058913          	mv	s2,a1
    80002f74:	00050613          	mv	a2,a0
    80002f78:	00000597          	auipc	a1,0x0
    80002f7c:	e4c58593          	addi	a1,a1,-436 # 80002dc4 <_ZN14PeriodicThread6runnerEPv>
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	e7c080e7          	jalr	-388(ra) # 80002dfc <_ZN6ThreadC1EPFvPvES0_>
    80002f88:	00007797          	auipc	a5,0x7
    80002f8c:	3e078793          	addi	a5,a5,992 # 8000a368 <_ZTV14PeriodicThread+0x10>
    80002f90:	00f4b023          	sd	a5,0(s1)
    this->time = period;
    80002f94:	0324b023          	sd	s2,32(s1)
}
    80002f98:	01813083          	ld	ra,24(sp)
    80002f9c:	01013403          	ld	s0,16(sp)
    80002fa0:	00813483          	ld	s1,8(sp)
    80002fa4:	00013903          	ld	s2,0(sp)
    80002fa8:	02010113          	addi	sp,sp,32
    80002fac:	00008067          	ret

0000000080002fb0 <_ZN6Thread3runEv>:
    //ovde je samo za potrebe testiranja
    PCB* myHandle;
protected:
    Thread();

    virtual void run() {}
    80002fb0:	ff010113          	addi	sp,sp,-16
    80002fb4:	00813423          	sd	s0,8(sp)
    80002fb8:	01010413          	addi	s0,sp,16
    80002fbc:	00813403          	ld	s0,8(sp)
    80002fc0:	01010113          	addi	sp,sp,16
    80002fc4:	00008067          	ret

0000000080002fc8 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80002fc8:	ff010113          	addi	sp,sp,-16
    80002fcc:	00813423          	sd	s0,8(sp)
    80002fd0:	01010413          	addi	s0,sp,16
    80002fd4:	00813403          	ld	s0,8(sp)
    80002fd8:	01010113          	addi	sp,sp,16
    80002fdc:	00008067          	ret

0000000080002fe0 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80002fe0:	ff010113          	addi	sp,sp,-16
    80002fe4:	00113423          	sd	ra,8(sp)
    80002fe8:	00813023          	sd	s0,0(sp)
    80002fec:	01010413          	addi	s0,sp,16
    80002ff0:	00007797          	auipc	a5,0x7
    80002ff4:	37878793          	addi	a5,a5,888 # 8000a368 <_ZTV14PeriodicThread+0x10>
    80002ff8:	00f53023          	sd	a5,0(a0)
    80002ffc:	00000097          	auipc	ra,0x0
    80003000:	ba8080e7          	jalr	-1112(ra) # 80002ba4 <_ZN6ThreadD1Ev>
    80003004:	00813083          	ld	ra,8(sp)
    80003008:	00013403          	ld	s0,0(sp)
    8000300c:	01010113          	addi	sp,sp,16
    80003010:	00008067          	ret

0000000080003014 <_ZN14PeriodicThreadD0Ev>:
    80003014:	fe010113          	addi	sp,sp,-32
    80003018:	00113c23          	sd	ra,24(sp)
    8000301c:	00813823          	sd	s0,16(sp)
    80003020:	00913423          	sd	s1,8(sp)
    80003024:	02010413          	addi	s0,sp,32
    80003028:	00050493          	mv	s1,a0
    8000302c:	00007797          	auipc	a5,0x7
    80003030:	33c78793          	addi	a5,a5,828 # 8000a368 <_ZTV14PeriodicThread+0x10>
    80003034:	00f53023          	sd	a5,0(a0)
    80003038:	00000097          	auipc	ra,0x0
    8000303c:	b6c080e7          	jalr	-1172(ra) # 80002ba4 <_ZN6ThreadD1Ev>
    80003040:	00048513          	mv	a0,s1
    80003044:	00000097          	auipc	ra,0x0
    80003048:	c44080e7          	jalr	-956(ra) # 80002c88 <_ZdlPv>
    8000304c:	01813083          	ld	ra,24(sp)
    80003050:	01013403          	ld	s0,16(sp)
    80003054:	00813483          	ld	s1,8(sp)
    80003058:	02010113          	addi	sp,sp,32
    8000305c:	00008067          	ret

0000000080003060 <_ZN5Riscv10initSystemEv>:
#include "../h/SleepPCBList.hpp"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem()
{
    80003060:	fe010113          	addi	sp,sp,-32
    80003064:	00113c23          	sd	ra,24(sp)
    80003068:	00813823          	sd	s0,16(sp)
    8000306c:	00913423          	sd	s1,8(sp)
    80003070:	01213023          	sd	s2,0(sp)
    80003074:	02010413          	addi	s0,sp,32
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003078:	00007797          	auipc	a5,0x7
    8000307c:	4087b783          	ld	a5,1032(a5) # 8000a480 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003080:	10579073          	csrw	stvec,a5
    Thread* t = new Thread(0, 0);
    80003084:	02000513          	li	a0,32
    80003088:	00000097          	auipc	ra,0x0
    8000308c:	bd8080e7          	jalr	-1064(ra) # 80002c60 <_Znwm>
    80003090:	00050493          	mv	s1,a0
    80003094:	00000613          	li	a2,0
    80003098:	00000593          	li	a1,0
    8000309c:	00000097          	auipc	ra,0x0
    800030a0:	d60080e7          	jalr	-672(ra) # 80002dfc <_ZN6ThreadC1EPFvPvES0_>
    t->start();
    800030a4:	00048513          	mv	a0,s1
    800030a8:	00000097          	auipc	ra,0x0
    800030ac:	c88080e7          	jalr	-888(ra) # 80002d30 <_ZN6Thread5startEv>
    PCB::running = Scheduler::get();
    800030b0:	00000097          	auipc	ra,0x0
    800030b4:	a50080e7          	jalr	-1456(ra) # 80002b00 <_ZN9Scheduler3getEv>
    800030b8:	00007797          	auipc	a5,0x7
    800030bc:	3e07b783          	ld	a5,992(a5) # 8000a498 <_GLOBAL_OFFSET_TABLE_+0x28>
    800030c0:	00a7b023          	sd	a0,0(a5)
    800030c4:	00100793          	li	a5,1
    800030c8:	02f52823          	sw	a5,48(a0)
    PCB::running->setState(PCB::RUNNING);
}
    800030cc:	01813083          	ld	ra,24(sp)
    800030d0:	01013403          	ld	s0,16(sp)
    800030d4:	00813483          	ld	s1,8(sp)
    800030d8:	00013903          	ld	s2,0(sp)
    800030dc:	02010113          	addi	sp,sp,32
    800030e0:	00008067          	ret
    800030e4:	00050913          	mv	s2,a0
    Thread* t = new Thread(0, 0);
    800030e8:	00048513          	mv	a0,s1
    800030ec:	00000097          	auipc	ra,0x0
    800030f0:	b9c080e7          	jalr	-1124(ra) # 80002c88 <_ZdlPv>
    800030f4:	00090513          	mv	a0,s2
    800030f8:	00008097          	auipc	ra,0x8
    800030fc:	570080e7          	jalr	1392(ra) # 8000b668 <_Unwind_Resume>

0000000080003100 <_ZN5Riscv16enableInterruptsEv>:
    //da li treba jos nesto da se ocisti
    Riscv::disableInterrupts();
}


void Riscv::enableInterrupts() {
    80003100:	ff010113          	addi	sp,sp,-16
    80003104:	00813423          	sd	s0,8(sp)
    80003108:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    8000310c:	00200793          	li	a5,2
    80003110:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80003114:	00813403          	ld	s0,8(sp)
    80003118:	01010113          	addi	sp,sp,16
    8000311c:	00008067          	ret

0000000080003120 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80003120:	ff010113          	addi	sp,sp,-16
    80003124:	00813423          	sd	s0,8(sp)
    80003128:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    8000312c:	00200793          	li	a5,2
    80003130:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80003134:	00813403          	ld	s0,8(sp)
    80003138:	01010113          	addi	sp,sp,16
    8000313c:	00008067          	ret

0000000080003140 <_ZN5Riscv9endSystemEv>:
void Riscv::endSystem() {
    80003140:	ff010113          	addi	sp,sp,-16
    80003144:	00113423          	sd	ra,8(sp)
    80003148:	00813023          	sd	s0,0(sp)
    8000314c:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003150:	00000097          	auipc	ra,0x0
    80003154:	fd0080e7          	jalr	-48(ra) # 80003120 <_ZN5Riscv17disableInterruptsEv>
}
    80003158:	00813083          	ld	ra,8(sp)
    8000315c:	00013403          	ld	s0,0(sp)
    80003160:	01010113          	addi	sp,sp,16
    80003164:	00008067          	ret

0000000080003168 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80003168:	ff010113          	addi	sp,sp,-16
    8000316c:	00813423          	sd	s0,8(sp)
    80003170:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003174:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003178:	10200073          	sret
}
    8000317c:	00813403          	ld	s0,8(sp)
    80003180:	01010113          	addi	sp,sp,16
    80003184:	00008067          	ret

0000000080003188 <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    80003188:	fd010113          	addi	sp,sp,-48
    8000318c:	02113423          	sd	ra,40(sp)
    80003190:	02813023          	sd	s0,32(sp)
    80003194:	00913c23          	sd	s1,24(sp)
    80003198:	01213823          	sd	s2,16(sp)
    8000319c:	03010413          	addi	s0,sp,48
    800031a0:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800031a4:	100027f3          	csrr	a5,sstatus
    800031a8:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800031ac:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800031b0:	00200793          	li	a5,2
    800031b4:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    800031b8:	0004c503          	lbu	a0,0(s1)
    800031bc:	00050a63          	beqz	a0,800031d0 <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    800031c0:	00005097          	auipc	ra,0x5
    800031c4:	8dc080e7          	jalr	-1828(ra) # 80007a9c <__putc>
        string++;
    800031c8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800031cc:	fedff06f          	j	800031b8 <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800031d0:	0009091b          	sext.w	s2,s2
    800031d4:	00297913          	andi	s2,s2,2
    800031d8:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800031dc:	10092073          	csrs	sstatus,s2
}
    800031e0:	02813083          	ld	ra,40(sp)
    800031e4:	02013403          	ld	s0,32(sp)
    800031e8:	01813483          	ld	s1,24(sp)
    800031ec:	01013903          	ld	s2,16(sp)
    800031f0:	03010113          	addi	sp,sp,48
    800031f4:	00008067          	ret

00000000800031f8 <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    800031f8:	fc010113          	addi	sp,sp,-64
    800031fc:	02113c23          	sd	ra,56(sp)
    80003200:	02813823          	sd	s0,48(sp)
    80003204:	02913423          	sd	s1,40(sp)
    80003208:	03213023          	sd	s2,32(sp)
    8000320c:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003210:	100027f3          	csrr	a5,sstatus
    80003214:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80003218:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    8000321c:	00200793          	li	a5,2
    80003220:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80003224:	0005051b          	sext.w	a0,a0

    i = 0;
    80003228:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    8000322c:	00a00613          	li	a2,10
    80003230:	02c5773b          	remuw	a4,a0,a2
    80003234:	02071693          	slli	a3,a4,0x20
    80003238:	0206d693          	srli	a3,a3,0x20
    8000323c:	00005717          	auipc	a4,0x5
    80003240:	f4c70713          	addi	a4,a4,-180 # 80008188 <_ZZN5Riscv12printIntegerEmE6digits>
    80003244:	00d70733          	add	a4,a4,a3
    80003248:	00074703          	lbu	a4,0(a4)
    8000324c:	fe040693          	addi	a3,s0,-32
    80003250:	009687b3          	add	a5,a3,s1
    80003254:	0014849b          	addiw	s1,s1,1
    80003258:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    8000325c:	0005071b          	sext.w	a4,a0
    80003260:	02c5553b          	divuw	a0,a0,a2
    80003264:	00900793          	li	a5,9
    80003268:	fce7e2e3          	bltu	a5,a4,8000322c <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    8000326c:	fff4849b          	addiw	s1,s1,-1
    80003270:	0004ce63          	bltz	s1,8000328c <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80003274:	fe040793          	addi	a5,s0,-32
    80003278:	009787b3          	add	a5,a5,s1
    8000327c:	ff07c503          	lbu	a0,-16(a5)
    80003280:	00005097          	auipc	ra,0x5
    80003284:	81c080e7          	jalr	-2020(ra) # 80007a9c <__putc>
    80003288:	fe5ff06f          	j	8000326c <_ZN5Riscv12printIntegerEm+0x74>

    __putc('\n');
    8000328c:	00a00513          	li	a0,10
    80003290:	00005097          	auipc	ra,0x5
    80003294:	80c080e7          	jalr	-2036(ra) # 80007a9c <__putc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80003298:	0009091b          	sext.w	s2,s2
    8000329c:	00297913          	andi	s2,s2,2
    800032a0:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800032a4:	10092073          	csrs	sstatus,s2
}
    800032a8:	03813083          	ld	ra,56(sp)
    800032ac:	03013403          	ld	s0,48(sp)
    800032b0:	02813483          	ld	s1,40(sp)
    800032b4:	02013903          	ld	s2,32(sp)
    800032b8:	04010113          	addi	sp,sp,64
    800032bc:	00008067          	ret

00000000800032c0 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800032c0:	f8010113          	addi	sp,sp,-128
    800032c4:	06113c23          	sd	ra,120(sp)
    800032c8:	06813823          	sd	s0,112(sp)
    800032cc:	06913423          	sd	s1,104(sp)
    800032d0:	07213023          	sd	s2,96(sp)
    800032d4:	05313c23          	sd	s3,88(sp)
    800032d8:	05413823          	sd	s4,80(sp)
    800032dc:	05513423          	sd	s5,72(sp)
    800032e0:	05613023          	sd	s6,64(sp)
    800032e4:	08010413          	addi	s0,sp,128
    uint64 a4;
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    800032e8:	00070913          	mv	s2,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    800032ec:	142027f3          	csrr	a5,scause
    800032f0:	f8f43423          	sd	a5,-120(s0)
    return scause;
    800032f4:	f8843703          	ld	a4,-120(s0)

    uint64 scause = Riscv::r_scause();

    switch(scause)
    800032f8:	00900793          	li	a5,9
    800032fc:	08e7f463          	bgeu	a5,a4,80003384 <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
    80003300:	fff00793          	li	a5,-1
    80003304:	03f79793          	slli	a5,a5,0x3f
    80003308:	00178793          	addi	a5,a5,1
    8000330c:	08f71063          	bne	a4,a5,8000338c <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003310:	00200793          	li	a5,2
    80003314:	1447b073          	csrc	sip,a5
        case timerInterrupt:

            Riscv::mc_sip(Riscv::SIP_SSIP);
            //Riscv::printString("timerInterrupt\n");

            PCB::timeSliceCounter++;
    80003318:	00007497          	auipc	s1,0x7
    8000331c:	1704b483          	ld	s1,368(s1) # 8000a488 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003320:	0004b783          	ld	a5,0(s1)
    80003324:	00178793          	addi	a5,a5,1
    80003328:	00f4b023          	sd	a5,0(s1)

            SleepPCBList::tryToWakePCBs();
    8000332c:	fffff097          	auipc	ra,0xfffff
    80003330:	4d0080e7          	jalr	1232(ra) # 800027fc <_ZN12SleepPCBList13tryToWakePCBsEv>

            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003334:	00007797          	auipc	a5,0x7
    80003338:	1647b783          	ld	a5,356(a5) # 8000a498 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000333c:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003340:	0087b783          	ld	a5,8(a5)
    80003344:	0004b703          	ld	a4,0(s1)
    80003348:	04f76663          	bltu	a4,a5,80003394 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000334c:	141027f3          	csrr	a5,sepc
    80003350:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    80003354:	f9843483          	ld	s1,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003358:	100027f3          	csrr	a5,sstatus
    8000335c:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    80003360:	f9043903          	ld	s2,-112(s0)
            {
                uint64 sepc = Riscv::r_sepc();
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
    80003364:	00007797          	auipc	a5,0x7
    80003368:	1247b783          	ld	a5,292(a5) # 8000a488 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000336c:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80003370:	fffff097          	auipc	ra,0xfffff
    80003374:	0e8080e7          	jalr	232(ra) # 80002458 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003378:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    8000337c:	14149073          	csrw	sepc,s1
}
    80003380:	0140006f          	j	80003394 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
    switch(scause)
    80003384:	00800793          	li	a5,8
    80003388:	02f77a63          	bgeu	a4,a5,800033bc <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
            Riscv::w_sepc(sepc);

            return;
    }

    console_handler();
    8000338c:	00004097          	auipc	ra,0x4
    80003390:	784080e7          	jalr	1924(ra) # 80007b10 <console_handler>
}
    80003394:	07813083          	ld	ra,120(sp)
    80003398:	07013403          	ld	s0,112(sp)
    8000339c:	06813483          	ld	s1,104(sp)
    800033a0:	06013903          	ld	s2,96(sp)
    800033a4:	05813983          	ld	s3,88(sp)
    800033a8:	05013a03          	ld	s4,80(sp)
    800033ac:	04813a83          	ld	s5,72(sp)
    800033b0:	04013b03          	ld	s6,64(sp)
    800033b4:	08010113          	addi	sp,sp,128
    800033b8:	00008067          	ret
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    800033bc:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800033c0:	14102773          	csrr	a4,sepc
    800033c4:	fae43023          	sd	a4,-96(s0)
    return sepc;
    800033c8:	fa043703          	ld	a4,-96(s0)
            sepc+=4;
    800033cc:	00470493          	addi	s1,a4,4
            if(operation == MemoryAllocator::MEM_ALLOC)
    800033d0:	00100713          	li	a4,1
    800033d4:	06e78a63          	beq	a5,a4,80003448 <_ZN5Riscv20handleSupervisorTrapEv+0x188>
            else if(operation == MemoryAllocator::MEM_FREE)
    800033d8:	00200713          	li	a4,2
    800033dc:	08e78463          	beq	a5,a4,80003464 <_ZN5Riscv20handleSupervisorTrapEv+0x1a4>
            else if(operation == PCB::THREAD_CREATE)
    800033e0:	01100713          	li	a4,17
    800033e4:	08e78a63          	beq	a5,a4,80003478 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
            else if(operation == PCB::THREAD_DISPATCH)
    800033e8:	01300713          	li	a4,19
    800033ec:	0ce78c63          	beq	a5,a4,800034c4 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
            else if(operation == PCB::THREAD_EXIT)
    800033f0:	01200713          	li	a4,18
    800033f4:	0ee78c63          	beq	a5,a4,800034ec <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
            else if(operation == PCB::TIME_SLEEP)
    800033f8:	03100713          	li	a4,49
    800033fc:	14e78263          	beq	a5,a4,80003540 <_ZN5Riscv20handleSupervisorTrapEv+0x280>
            else if(operation == KSemaphore::SEM_OPEN)
    80003400:	02100713          	li	a4,33
    80003404:	18e78263          	beq	a5,a4,80003588 <_ZN5Riscv20handleSupervisorTrapEv+0x2c8>
            else if(operation == KSemaphore::SEM_WAIT)
    80003408:	02300713          	li	a4,35
    8000340c:	1ae78c63          	beq	a5,a4,800035c4 <_ZN5Riscv20handleSupervisorTrapEv+0x304>
            else if(operation == KSemaphore::SEM_SIGNAL)
    80003410:	02400713          	li	a4,36
    80003414:	1ce78263          	beq	a5,a4,800035d8 <_ZN5Riscv20handleSupervisorTrapEv+0x318>
            else if(operation == KSemaphore::SEM_CLOSE)
    80003418:	02200713          	li	a4,34
    8000341c:	04e79063          	bne	a5,a4,8000345c <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003420:	00058913          	mv	s2,a1
                delete kSem;
    80003424:	00090e63          	beqz	s2,80003440 <_ZN5Riscv20handleSupervisorTrapEv+0x180>
    80003428:	00090513          	mv	a0,s2
    8000342c:	00000097          	auipc	ra,0x0
    80003430:	744080e7          	jalr	1860(ra) # 80003b70 <_ZN10KSemaphoreD1Ev>
    80003434:	00090513          	mv	a0,s2
    80003438:	00001097          	auipc	ra,0x1
    8000343c:	868080e7          	jalr	-1944(ra) # 80003ca0 <_ZN10KSemaphoredlEPv>
                __asm__ volatile("li a0, 0");
    80003440:	00000513          	li	a0,0
    80003444:	0180006f          	j	8000345c <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80003448:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    8000344c:	00651513          	slli	a0,a0,0x6
    80003450:	00000097          	auipc	ra,0x0
    80003454:	588080e7          	jalr	1416(ra) # 800039d8 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80003458:	00050513          	mv	a0,a0
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    8000345c:	14149073          	csrw	sepc,s1
}
    80003460:	f35ff06f          	j	80003394 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    80003464:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    80003468:	00000097          	auipc	ra,0x0
    8000346c:	598080e7          	jalr	1432(ra) # 80003a00 <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003470:	00050513          	mv	a0,a0
    80003474:	fe9ff06f          	j	8000345c <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80003478:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    8000347c:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    80003480:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    80003484:	05000513          	li	a0,80
    80003488:	fffff097          	auipc	ra,0xfffff
    8000348c:	044080e7          	jalr	68(ra) # 800024cc <_ZN3PCBnwEm>
    80003490:	00050993          	mv	s3,a0
    80003494:	00200713          	li	a4,2
    80003498:	00090693          	mv	a3,s2
    8000349c:	000b0613          	mv	a2,s6
    800034a0:	000a8593          	mv	a1,s5
    800034a4:	fffff097          	auipc	ra,0xfffff
    800034a8:	f10080e7          	jalr	-240(ra) # 800023b4 <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    800034ac:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    800034b0:	00098663          	beqz	s3,800034bc <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    __asm__ volatile("li a0, 0");
    800034b4:	00000513          	li	a0,0
    800034b8:	fa5ff06f          	j	8000345c <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    800034bc:	fff00513          	li	a0,-1
    800034c0:	f9dff06f          	j	8000345c <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800034c4:	100027f3          	csrr	a5,sstatus
    800034c8:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    800034cc:	fa843903          	ld	s2,-88(s0)
                PCB::timeSliceCounter = 0;
    800034d0:	00007797          	auipc	a5,0x7
    800034d4:	fb87b783          	ld	a5,-72(a5) # 8000a488 <_GLOBAL_OFFSET_TABLE_+0x18>
    800034d8:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    800034dc:	fffff097          	auipc	ra,0xfffff
    800034e0:	f7c080e7          	jalr	-132(ra) # 80002458 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800034e4:	10091073          	csrw	sstatus,s2
}
    800034e8:	f75ff06f          	j	8000345c <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                if(PCB::running == 0)
    800034ec:	00007797          	auipc	a5,0x7
    800034f0:	fac7b783          	ld	a5,-84(a5) # 8000a498 <_GLOBAL_OFFSET_TABLE_+0x28>
    800034f4:	0007b783          	ld	a5,0(a5)
    800034f8:	04078063          	beqz	a5,80003538 <_ZN5Riscv20handleSupervisorTrapEv+0x278>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800034fc:	100027f3          	csrr	a5,sstatus
    80003500:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80003504:	fb043903          	ld	s2,-80(s0)
                PCB::timeSliceCounter = 0;
    80003508:	00007797          	auipc	a5,0x7
    8000350c:	f807b783          	ld	a5,-128(a5) # 8000a488 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003510:	0007b023          	sd	zero,0(a5)
                PCB::running->setState(PCB::EXITING);
    80003514:	00007797          	auipc	a5,0x7
    80003518:	f847b783          	ld	a5,-124(a5) # 8000a498 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000351c:	0007b783          	ld	a5,0(a5)
    void setState(State s) {state = s;}
    80003520:	00300713          	li	a4,3
    80003524:	02e7a823          	sw	a4,48(a5)
                PCB::dispatch();
    80003528:	fffff097          	auipc	ra,0xfffff
    8000352c:	f30080e7          	jalr	-208(ra) # 80002458 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003530:	10091073          	csrw	sstatus,s2
}
    80003534:	f29ff06f          	j	8000345c <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80003538:	fff00513          	li	a0,-1
                    return;
    8000353c:	e59ff06f          	j	80003394 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                __asm__ volatile("mv %0, a1" : "=r"(time));
    80003540:	00058713          	mv	a4,a1
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003544:	100027f3          	csrr	a5,sstatus
    80003548:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    8000354c:	fb843903          	ld	s2,-72(s0)
                PCB::timeSliceCounter = 0;
    80003550:	00007797          	auipc	a5,0x7
    80003554:	f387b783          	ld	a5,-200(a5) # 8000a488 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003558:	0007b023          	sd	zero,0(a5)
                PCB::running->setTimeToSleep(time);
    8000355c:	00007797          	auipc	a5,0x7
    80003560:	f3c7b783          	ld	a5,-196(a5) # 8000a498 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003564:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80003568:	00e7b823          	sd	a4,16(a5)
                SleepPCBList::insertSleepingPCB();
    8000356c:	fffff097          	auipc	ra,0xfffff
    80003570:	1e4080e7          	jalr	484(ra) # 80002750 <_ZN12SleepPCBList17insertSleepingPCBEv>
                PCB::dispatch();
    80003574:	fffff097          	auipc	ra,0xfffff
    80003578:	ee4080e7          	jalr	-284(ra) # 80002458 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    8000357c:	10091073          	csrw	sstatus,s2
                __asm__ volatile("li a0, 0x0");
    80003580:	00000513          	li	a0,0
    80003584:	ed9ff06f          	j	8000345c <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80003588:	00058993          	mv	s3,a1
                __asm__ volatile("mv %0, a2" : "=r"(val));
    8000358c:	00060a13          	mv	s4,a2
                KSemaphore* newSem = new KSemaphore(val);
    80003590:	01800513          	li	a0,24
    80003594:	00000097          	auipc	ra,0x0
    80003598:	6e4080e7          	jalr	1764(ra) # 80003c78 <_ZN10KSemaphorenwEm>
    8000359c:	00050913          	mv	s2,a0
    800035a0:	000a059b          	sext.w	a1,s4
    800035a4:	00000097          	auipc	ra,0x0
    800035a8:	484080e7          	jalr	1156(ra) # 80003a28 <_ZN10KSemaphoreC1Ei>
                (*semaphoreHandle) = newSem;
    800035ac:	0129b023          	sd	s2,0(s3)
                if(newSem == 0)
    800035b0:	00090663          	beqz	s2,800035bc <_ZN5Riscv20handleSupervisorTrapEv+0x2fc>
                        __asm__ volatile("li a0, 0");
    800035b4:	00000513          	li	a0,0
    800035b8:	ea5ff06f          	j	8000345c <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                        __asm__ volatile("li a0, 0xffffffffffffffff");
    800035bc:	fff00513          	li	a0,-1
    800035c0:	e9dff06f          	j	8000345c <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800035c4:	00058513          	mv	a0,a1
                uint64 retval = kSem->wait();
    800035c8:	00000097          	auipc	ra,0x0
    800035cc:	508080e7          	jalr	1288(ra) # 80003ad0 <_ZN10KSemaphore4waitEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    800035d0:	00050513          	mv	a0,a0
    800035d4:	e89ff06f          	j	8000345c <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800035d8:	00058513          	mv	a0,a1
                uint64 retval = kSem->signal();
    800035dc:	00000097          	auipc	ra,0x0
    800035e0:	654080e7          	jalr	1620(ra) # 80003c30 <_ZN10KSemaphore6signalEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    800035e4:	00050513          	mv	a0,a0
    800035e8:	e75ff06f          	j	8000345c <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
    800035ec:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    800035f0:	00098513          	mv	a0,s3
    800035f4:	fffff097          	auipc	ra,0xfffff
    800035f8:	f00080e7          	jalr	-256(ra) # 800024f4 <_ZN3PCBdlEPv>
    800035fc:	00048513          	mv	a0,s1
    80003600:	00008097          	auipc	ra,0x8
    80003604:	068080e7          	jalr	104(ra) # 8000b668 <_Unwind_Resume>
    80003608:	00050493          	mv	s1,a0
                KSemaphore* newSem = new KSemaphore(val);
    8000360c:	00090513          	mv	a0,s2
    80003610:	00000097          	auipc	ra,0x0
    80003614:	690080e7          	jalr	1680(ra) # 80003ca0 <_ZN10KSemaphoredlEPv>
    80003618:	00048513          	mv	a0,s1
    8000361c:	00008097          	auipc	ra,0x8
    80003620:	04c080e7          	jalr	76(ra) # 8000b668 <_Unwind_Resume>

0000000080003624 <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003624:	ff010113          	addi	sp,sp,-16
    80003628:	00813423          	sd	s0,8(sp)
    8000362c:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003630:	00007717          	auipc	a4,0x7
    80003634:	f2872703          	lw	a4,-216(a4) # 8000a558 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003638:	00100793          	li	a5,1
    8000363c:	04f70263          	beq	a4,a5,80003680 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003640:	00007797          	auipc	a5,0x7
    80003644:	f1878793          	addi	a5,a5,-232 # 8000a558 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003648:	00100713          	li	a4,1
    8000364c:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003650:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003654:	00007717          	auipc	a4,0x7
    80003658:	e2473703          	ld	a4,-476(a4) # 8000a478 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000365c:	00073703          	ld	a4,0(a4)
    80003660:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003664:	00073423          	sd	zero,8(a4)
    //todo
    //+-1
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003668:	00007797          	auipc	a5,0x7
    8000366c:	e387b783          	ld	a5,-456(a5) # 8000a4a0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003670:	0007b783          	ld	a5,0(a5)
    80003674:	40e787b3          	sub	a5,a5,a4
    80003678:	ff178793          	addi	a5,a5,-15
    8000367c:	00f73023          	sd	a5,0(a4)
}
    80003680:	00813403          	ld	s0,8(sp)
    80003684:	01010113          	addi	sp,sp,16
    80003688:	00008067          	ret

000000008000368c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    8000368c:	fe010113          	addi	sp,sp,-32
    80003690:	00113c23          	sd	ra,24(sp)
    80003694:	00813823          	sd	s0,16(sp)
    80003698:	00913423          	sd	s1,8(sp)
    8000369c:	01213023          	sd	s2,0(sp)
    800036a0:	02010413          	addi	s0,sp,32
    800036a4:	00050493          	mv	s1,a0
    800036a8:	00058913          	mv	s2,a1

    initMemory();
    800036ac:	00000097          	auipc	ra,0x0
    800036b0:	f78080e7          	jalr	-136(ra) # 80003624 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    800036b4:	00007797          	auipc	a5,0x7
    800036b8:	eac7b783          	ld	a5,-340(a5) # 8000a560 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    800036bc:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    800036c0:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    800036c4:	00000713          	li	a4,0
    while(curr != 0)
    800036c8:	00078c63          	beqz	a5,800036e0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800036cc:	00f4e863          	bltu	s1,a5,800036dc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    800036d0:	00078713          	mv	a4,a5
        curr = curr->next;
    800036d4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800036d8:	ff1ff06f          	j	800036c8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    800036dc:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800036e0:	02070063          	beqz	a4,80003700 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    800036e4:	00973423          	sd	s1,8(a4)
}
    800036e8:	01813083          	ld	ra,24(sp)
    800036ec:	01013403          	ld	s0,16(sp)
    800036f0:	00813483          	ld	s1,8(sp)
    800036f4:	00013903          	ld	s2,0(sp)
    800036f8:	02010113          	addi	sp,sp,32
    800036fc:	00008067          	ret
        headAllocated = newAllocated;
    80003700:	00007797          	auipc	a5,0x7
    80003704:	e697b023          	sd	s1,-416(a5) # 8000a560 <_ZN15MemoryAllocator13headAllocatedE>
    80003708:	fe1ff06f          	j	800036e8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

000000008000370c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    8000370c:	fe010113          	addi	sp,sp,-32
    80003710:	00113c23          	sd	ra,24(sp)
    80003714:	00813823          	sd	s0,16(sp)
    80003718:	00913423          	sd	s1,8(sp)
    8000371c:	01213023          	sd	s2,0(sp)
    80003720:	02010413          	addi	s0,sp,32
    80003724:	00050913          	mv	s2,a0
    initMemory();
    80003728:	00000097          	auipc	ra,0x0
    8000372c:	efc080e7          	jalr	-260(ra) # 80003624 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003730:	00007497          	auipc	s1,0x7
    80003734:	e384b483          	ld	s1,-456(s1) # 8000a568 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003738:	00000713          	li	a4,0
    while(curr != 0)
    8000373c:	0a048863          	beqz	s1,800037ec <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80003740:	0004b783          	ld	a5,0(s1)
    80003744:	0127f863          	bgeu	a5,s2,80003754 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003748:	00048713          	mv	a4,s1
        curr = curr->next;
    8000374c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003750:	fedff06f          	j	8000373c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003754:	01090693          	addi	a3,s2,16
    80003758:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    8000375c:	00007617          	auipc	a2,0x7
    80003760:	d4463603          	ld	a2,-700(a2) # 8000a4a0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003764:	00063603          	ld	a2,0(a2)
    80003768:	04d66c63          	bltu	a2,a3,800037c0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    8000376c:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003770:	01000613          	li	a2,16
    80003774:	02f67663          	bgeu	a2,a5,800037a0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80003778:	0084b603          	ld	a2,8(s1)
    8000377c:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003780:	ff078793          	addi	a5,a5,-16
    80003784:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003788:	00070663          	beqz	a4,80003794 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    8000378c:	00d73423          	sd	a3,8(a4)
    80003790:	0380006f          	j	800037c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003794:	00007797          	auipc	a5,0x7
    80003798:	dcd7ba23          	sd	a3,-556(a5) # 8000a568 <_ZN15MemoryAllocator8headFreeE>
    8000379c:	02c0006f          	j	800037c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    800037a0:	00070863          	beqz	a4,800037b0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    800037a4:	0084b783          	ld	a5,8(s1)
    800037a8:	00f73423          	sd	a5,8(a4)
    800037ac:	01c0006f          	j	800037c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    800037b0:	0084b783          	ld	a5,8(s1)
    800037b4:	00007717          	auipc	a4,0x7
    800037b8:	daf73a23          	sd	a5,-588(a4) # 8000a568 <_ZN15MemoryAllocator8headFreeE>
    800037bc:	00c0006f          	j	800037c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    800037c0:	02070063          	beqz	a4,800037e0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    800037c4:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    800037c8:	00090593          	mv	a1,s2
    800037cc:	00048513          	mv	a0,s1
    800037d0:	00000097          	auipc	ra,0x0
    800037d4:	ebc080e7          	jalr	-324(ra) # 8000368c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    800037d8:	01048513          	addi	a0,s1,16
            break;
    800037dc:	0140006f          	j	800037f0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    800037e0:	00007797          	auipc	a5,0x7
    800037e4:	d807b423          	sd	zero,-632(a5) # 8000a568 <_ZN15MemoryAllocator8headFreeE>
    800037e8:	fe1ff06f          	j	800037c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    800037ec:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    800037f0:	01813083          	ld	ra,24(sp)
    800037f4:	01013403          	ld	s0,16(sp)
    800037f8:	00813483          	ld	s1,8(sp)
    800037fc:	00013903          	ld	s2,0(sp)
    80003800:	02010113          	addi	sp,sp,32
    80003804:	00008067          	ret

0000000080003808 <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    80003808:	ff010113          	addi	sp,sp,-16
    8000380c:	00113423          	sd	ra,8(sp)
    80003810:	00813023          	sd	s0,0(sp)
    80003814:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003818:	00000097          	auipc	ra,0x0
    8000381c:	ef4080e7          	jalr	-268(ra) # 8000370c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003820:	00813083          	ld	ra,8(sp)
    80003824:	00013403          	ld	s0,0(sp)
    80003828:	01010113          	addi	sp,sp,16
    8000382c:	00008067          	ret

0000000080003830 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80003830:	fe010113          	addi	sp,sp,-32
    80003834:	00113c23          	sd	ra,24(sp)
    80003838:	00813823          	sd	s0,16(sp)
    8000383c:	00913423          	sd	s1,8(sp)
    80003840:	01213023          	sd	s2,0(sp)
    80003844:	02010413          	addi	s0,sp,32
    80003848:	00050493          	mv	s1,a0
    8000384c:	00058913          	mv	s2,a1
    initMemory();
    80003850:	00000097          	auipc	ra,0x0
    80003854:	dd4080e7          	jalr	-556(ra) # 80003624 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003858:	00007797          	auipc	a5,0x7
    8000385c:	d107b783          	ld	a5,-752(a5) # 8000a568 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003860:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003864:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003868:	00000713          	li	a4,0
    while(curr != 0)
    8000386c:	00078c63          	beqz	a5,80003884 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003870:	00f4e863          	bltu	s1,a5,80003880 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003874:	00078713          	mv	a4,a5
        curr = curr->next;
    80003878:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000387c:	ff1ff06f          	j	8000386c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80003880:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003884:	04070663          	beqz	a4,800038d0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003888:	00973423          	sd	s1,8(a4)

    //todo
    //test it
    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    8000388c:	0084b783          	ld	a5,8(s1)
    80003890:	00078a63          	beqz	a5,800038a4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003894:	0004b603          	ld	a2,0(s1)
    80003898:	01060693          	addi	a3,a2,16
    8000389c:	00d486b3          	add	a3,s1,a3
    800038a0:	02d78e63          	beq	a5,a3,800038dc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    800038a4:	00070a63          	beqz	a4,800038b8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    800038a8:	00073683          	ld	a3,0(a4)
    800038ac:	01068793          	addi	a5,a3,16
    800038b0:	00f707b3          	add	a5,a4,a5
    800038b4:	04978263          	beq	a5,s1,800038f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    800038b8:	01813083          	ld	ra,24(sp)
    800038bc:	01013403          	ld	s0,16(sp)
    800038c0:	00813483          	ld	s1,8(sp)
    800038c4:	00013903          	ld	s2,0(sp)
    800038c8:	02010113          	addi	sp,sp,32
    800038cc:	00008067          	ret
        headFree = newSegment;
    800038d0:	00007797          	auipc	a5,0x7
    800038d4:	c897bc23          	sd	s1,-872(a5) # 8000a568 <_ZN15MemoryAllocator8headFreeE>
    800038d8:	fb5ff06f          	j	8000388c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    800038dc:	0007b683          	ld	a3,0(a5)
    800038e0:	00d60633          	add	a2,a2,a3
    800038e4:	01060613          	addi	a2,a2,16
    800038e8:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    800038ec:	0087b783          	ld	a5,8(a5)
    800038f0:	00f4b423          	sd	a5,8(s1)
    800038f4:	fb1ff06f          	j	800038a4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    800038f8:	0004b783          	ld	a5,0(s1)
    800038fc:	00f686b3          	add	a3,a3,a5
    80003900:	01068693          	addi	a3,a3,16
    80003904:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003908:	0084b783          	ld	a5,8(s1)
    8000390c:	00f73423          	sd	a5,8(a4)
}
    80003910:	fa9ff06f          	j	800038b8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003914 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003914:	fe010113          	addi	sp,sp,-32
    80003918:	00113c23          	sd	ra,24(sp)
    8000391c:	00813823          	sd	s0,16(sp)
    80003920:	00913423          	sd	s1,8(sp)
    80003924:	01213023          	sd	s2,0(sp)
    80003928:	02010413          	addi	s0,sp,32
    8000392c:	00050913          	mv	s2,a0
    initMemory();
    80003930:	00000097          	auipc	ra,0x0
    80003934:	cf4080e7          	jalr	-780(ra) # 80003624 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003938:	00007497          	auipc	s1,0x7
    8000393c:	c284b483          	ld	s1,-984(s1) # 8000a560 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80003940:	00000713          	li	a4,0
    while(curr != 0)
    80003944:	02048a63          	beqz	s1,80003978 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80003948:	01048793          	addi	a5,s1,16
    8000394c:	01278863          	beq	a5,s2,8000395c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80003950:	00048713          	mv	a4,s1
        curr = curr->next;
    80003954:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003958:	fedff06f          	j	80003944 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    8000395c:	02070e63          	beqz	a4,80003998 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80003960:	0084b783          	ld	a5,8(s1)
    80003964:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80003968:	0004b583          	ld	a1,0(s1)
    8000396c:	00048513          	mv	a0,s1
    80003970:	00000097          	auipc	ra,0x0
    80003974:	ec0080e7          	jalr	-320(ra) # 80003830 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80003978:	02048863          	beqz	s1,800039a8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    8000397c:	00000513          	li	a0,0
    else
        return 1;
}
    80003980:	01813083          	ld	ra,24(sp)
    80003984:	01013403          	ld	s0,16(sp)
    80003988:	00813483          	ld	s1,8(sp)
    8000398c:	00013903          	ld	s2,0(sp)
    80003990:	02010113          	addi	sp,sp,32
    80003994:	00008067          	ret
                headAllocated = curr->next;
    80003998:	0084b783          	ld	a5,8(s1)
    8000399c:	00007717          	auipc	a4,0x7
    800039a0:	bcf73223          	sd	a5,-1084(a4) # 8000a560 <_ZN15MemoryAllocator13headAllocatedE>
    800039a4:	fc5ff06f          	j	80003968 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    800039a8:	00100513          	li	a0,1
    800039ac:	fd5ff06f          	j	80003980 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

00000000800039b0 <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    800039b0:	ff010113          	addi	sp,sp,-16
    800039b4:	00113423          	sd	ra,8(sp)
    800039b8:	00813023          	sd	s0,0(sp)
    800039bc:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    800039c0:	00000097          	auipc	ra,0x0
    800039c4:	f54080e7          	jalr	-172(ra) # 80003914 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    800039c8:	00813083          	ld	ra,8(sp)
    800039cc:	00013403          	ld	s0,0(sp)
    800039d0:	01010113          	addi	sp,sp,16
    800039d4:	00008067          	ret

00000000800039d8 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    800039d8:	ff010113          	addi	sp,sp,-16
    800039dc:	00113423          	sd	ra,8(sp)
    800039e0:	00813023          	sd	s0,0(sp)
    800039e4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800039e8:	00000097          	auipc	ra,0x0
    800039ec:	e20080e7          	jalr	-480(ra) # 80003808 <_ZN15MemoryAllocator9mem_allocEm>
}
    800039f0:	00813083          	ld	ra,8(sp)
    800039f4:	00013403          	ld	s0,0(sp)
    800039f8:	01010113          	addi	sp,sp,16
    800039fc:	00008067          	ret

0000000080003a00 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80003a00:	ff010113          	addi	sp,sp,-16
    80003a04:	00113423          	sd	ra,8(sp)
    80003a08:	00813023          	sd	s0,0(sp)
    80003a0c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80003a10:	00000097          	auipc	ra,0x0
    80003a14:	fa0080e7          	jalr	-96(ra) # 800039b0 <_ZN15MemoryAllocator8mem_freeEPv>
    80003a18:	00813083          	ld	ra,8(sp)
    80003a1c:	00013403          	ld	s0,0(sp)
    80003a20:	01010113          	addi	sp,sp,16
    80003a24:	00008067          	ret

0000000080003a28 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80003a28:	ff010113          	addi	sp,sp,-16
    80003a2c:	00813423          	sd	s0,8(sp)
    80003a30:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80003a34:	00b52a23          	sw	a1,20(a0)
    80003a38:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80003a3c:	00053423          	sd	zero,8(a0)
    80003a40:	00053023          	sd	zero,0(a0)
}
    80003a44:	00813403          	ld	s0,8(sp)
    80003a48:	01010113          	addi	sp,sp,16
    80003a4c:	00008067          	ret

0000000080003a50 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80003a50:	ff010113          	addi	sp,sp,-16
    80003a54:	00813423          	sd	s0,8(sp)
    80003a58:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80003a5c:	0005b023          	sd	zero,0(a1)
    if(headBlocked == 0)
    80003a60:	00053783          	ld	a5,0(a0)
    80003a64:	00078e63          	beqz	a5,80003a80 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80003a68:	00853783          	ld	a5,8(a0)
    80003a6c:	00b7b023          	sd	a1,0(a5)
        tailBlocked = pcb;
    80003a70:	00b53423          	sd	a1,8(a0)
    }
}
    80003a74:	00813403          	ld	s0,8(sp)
    80003a78:	01010113          	addi	sp,sp,16
    80003a7c:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80003a80:	00b53423          	sd	a1,8(a0)
    80003a84:	00b53023          	sd	a1,0(a0)
    80003a88:	fedff06f          	j	80003a74 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080003a8c <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    80003a8c:	ff010113          	addi	sp,sp,-16
    80003a90:	00113423          	sd	ra,8(sp)
    80003a94:	00813023          	sd	s0,0(sp)
    80003a98:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80003a9c:	00007797          	auipc	a5,0x7
    80003aa0:	9fc7b783          	ld	a5,-1540(a5) # 8000a498 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003aa4:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80003aa8:	00200793          	li	a5,2
    80003aac:	02f5a823          	sw	a5,48(a1)
    addToBlocked(PCB::running);
    80003ab0:	00000097          	auipc	ra,0x0
    80003ab4:	fa0080e7          	jalr	-96(ra) # 80003a50 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80003ab8:	fffff097          	auipc	ra,0xfffff
    80003abc:	9a0080e7          	jalr	-1632(ra) # 80002458 <_ZN3PCB8dispatchEv>
}
    80003ac0:	00813083          	ld	ra,8(sp)
    80003ac4:	00013403          	ld	s0,0(sp)
    80003ac8:	01010113          	addi	sp,sp,16
    80003acc:	00008067          	ret

0000000080003ad0 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    80003ad0:	01052783          	lw	a5,16(a0)
    80003ad4:	fff7879b          	addiw	a5,a5,-1
    80003ad8:	00f52823          	sw	a5,16(a0)
    80003adc:	02079713          	slli	a4,a5,0x20
    80003ae0:	00074663          	bltz	a4,80003aec <_ZN10KSemaphore4waitEv+0x1c>
}
    80003ae4:	00000513          	li	a0,0
    80003ae8:	00008067          	ret
uint64 KSemaphore::wait() {
    80003aec:	ff010113          	addi	sp,sp,-16
    80003af0:	00113423          	sd	ra,8(sp)
    80003af4:	00813023          	sd	s0,0(sp)
    80003af8:	01010413          	addi	s0,sp,16
        block();
    80003afc:	00000097          	auipc	ra,0x0
    80003b00:	f90080e7          	jalr	-112(ra) # 80003a8c <_ZN10KSemaphore5blockEv>
}
    80003b04:	00000513          	li	a0,0
    80003b08:	00813083          	ld	ra,8(sp)
    80003b0c:	00013403          	ld	s0,0(sp)
    80003b10:	01010113          	addi	sp,sp,16
    80003b14:	00008067          	ret

0000000080003b18 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80003b18:	ff010113          	addi	sp,sp,-16
    80003b1c:	00813423          	sd	s0,8(sp)
    80003b20:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80003b24:	00053503          	ld	a0,0(a0)
    80003b28:	00813403          	ld	s0,8(sp)
    80003b2c:	01010113          	addi	sp,sp,16
    80003b30:	00008067          	ret

0000000080003b34 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80003b34:	ff010113          	addi	sp,sp,-16
    80003b38:	00813423          	sd	s0,8(sp)
    80003b3c:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80003b40:	00053783          	ld	a5,0(a0)
    80003b44:	00078c63          	beqz	a5,80003b5c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80003b48:	0007b703          	ld	a4,0(a5)
    80003b4c:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80003b50:	0007b023          	sd	zero,0(a5)
    if(headBlocked == 0)
    80003b54:	00053783          	ld	a5,0(a0)
    80003b58:	00078863          	beqz	a5,80003b68 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80003b5c:	00813403          	ld	s0,8(sp)
    80003b60:	01010113          	addi	sp,sp,16
    80003b64:	00008067          	ret
        tailBlocked =0;
    80003b68:	00053423          	sd	zero,8(a0)
    80003b6c:	ff1ff06f          	j	80003b5c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080003b70 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80003b70:	fe010113          	addi	sp,sp,-32
    80003b74:	00113c23          	sd	ra,24(sp)
    80003b78:	00813823          	sd	s0,16(sp)
    80003b7c:	00913423          	sd	s1,8(sp)
    80003b80:	01213023          	sd	s2,0(sp)
    80003b84:	02010413          	addi	s0,sp,32
    80003b88:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80003b8c:	00090513          	mv	a0,s2
    80003b90:	00000097          	auipc	ra,0x0
    80003b94:	f88080e7          	jalr	-120(ra) # 80003b18 <_ZN10KSemaphore15getFirstBlockedEv>
    80003b98:	00050493          	mv	s1,a0
    80003b9c:	02050063          	beqz	a0,80003bbc <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    80003ba0:	00090513          	mv	a0,s2
    80003ba4:	00000097          	auipc	ra,0x0
    80003ba8:	f90080e7          	jalr	-112(ra) # 80003b34 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    80003bac:	00048513          	mv	a0,s1
    80003bb0:	fffff097          	auipc	ra,0xfffff
    80003bb4:	efc080e7          	jalr	-260(ra) # 80002aac <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80003bb8:	fd5ff06f          	j	80003b8c <_ZN10KSemaphoreD1Ev+0x1c>
}
    80003bbc:	01813083          	ld	ra,24(sp)
    80003bc0:	01013403          	ld	s0,16(sp)
    80003bc4:	00813483          	ld	s1,8(sp)
    80003bc8:	00013903          	ld	s2,0(sp)
    80003bcc:	02010113          	addi	sp,sp,32
    80003bd0:	00008067          	ret

0000000080003bd4 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80003bd4:	fe010113          	addi	sp,sp,-32
    80003bd8:	00113c23          	sd	ra,24(sp)
    80003bdc:	00813823          	sd	s0,16(sp)
    80003be0:	00913423          	sd	s1,8(sp)
    80003be4:	01213023          	sd	s2,0(sp)
    80003be8:	02010413          	addi	s0,sp,32
    80003bec:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80003bf0:	00000097          	auipc	ra,0x0
    80003bf4:	f28080e7          	jalr	-216(ra) # 80003b18 <_ZN10KSemaphore15getFirstBlockedEv>
    80003bf8:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80003bfc:	00090513          	mv	a0,s2
    80003c00:	00000097          	auipc	ra,0x0
    80003c04:	f34080e7          	jalr	-204(ra) # 80003b34 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80003c08:	00048863          	beqz	s1,80003c18 <_ZN10KSemaphore7unblockEv+0x44>
        Scheduler::put(fr);
    80003c0c:	00048513          	mv	a0,s1
    80003c10:	fffff097          	auipc	ra,0xfffff
    80003c14:	e9c080e7          	jalr	-356(ra) # 80002aac <_ZN9Scheduler3putEP3PCB>
}
    80003c18:	01813083          	ld	ra,24(sp)
    80003c1c:	01013403          	ld	s0,16(sp)
    80003c20:	00813483          	ld	s1,8(sp)
    80003c24:	00013903          	ld	s2,0(sp)
    80003c28:	02010113          	addi	sp,sp,32
    80003c2c:	00008067          	ret

0000000080003c30 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80003c30:	01052783          	lw	a5,16(a0)
    80003c34:	0017879b          	addiw	a5,a5,1
    80003c38:	0007871b          	sext.w	a4,a5
    80003c3c:	00f52823          	sw	a5,16(a0)
    80003c40:	00e05663          	blez	a4,80003c4c <_ZN10KSemaphore6signalEv+0x1c>
}
    80003c44:	00000513          	li	a0,0
    80003c48:	00008067          	ret
uint64 KSemaphore::signal() {
    80003c4c:	ff010113          	addi	sp,sp,-16
    80003c50:	00113423          	sd	ra,8(sp)
    80003c54:	00813023          	sd	s0,0(sp)
    80003c58:	01010413          	addi	s0,sp,16
        unblock();
    80003c5c:	00000097          	auipc	ra,0x0
    80003c60:	f78080e7          	jalr	-136(ra) # 80003bd4 <_ZN10KSemaphore7unblockEv>
}
    80003c64:	00000513          	li	a0,0
    80003c68:	00813083          	ld	ra,8(sp)
    80003c6c:	00013403          	ld	s0,0(sp)
    80003c70:	01010113          	addi	sp,sp,16
    80003c74:	00008067          	ret

0000000080003c78 <_ZN10KSemaphorenwEm>:

void *KSemaphore::operator new(size_t size) {
    80003c78:	ff010113          	addi	sp,sp,-16
    80003c7c:	00113423          	sd	ra,8(sp)
    80003c80:	00813023          	sd	s0,0(sp)
    80003c84:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80003c88:	00000097          	auipc	ra,0x0
    80003c8c:	d50080e7          	jalr	-688(ra) # 800039d8 <_Z7kmallocm>
}
    80003c90:	00813083          	ld	ra,8(sp)
    80003c94:	00013403          	ld	s0,0(sp)
    80003c98:	01010113          	addi	sp,sp,16
    80003c9c:	00008067          	ret

0000000080003ca0 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p) {
    80003ca0:	ff010113          	addi	sp,sp,-16
    80003ca4:	00113423          	sd	ra,8(sp)
    80003ca8:	00813023          	sd	s0,0(sp)
    80003cac:	01010413          	addi	s0,sp,16
    kfree(p);
    80003cb0:	00000097          	auipc	ra,0x0
    80003cb4:	d50080e7          	jalr	-688(ra) # 80003a00 <_Z5kfreePv>
}
    80003cb8:	00813083          	ld	ra,8(sp)
    80003cbc:	00013403          	ld	s0,0(sp)
    80003cc0:	01010113          	addi	sp,sp,16
    80003cc4:	00008067          	ret

0000000080003cc8 <_Z8producerPv>:
    delete data->buffer;

    sem_signal(data->wait);
}

void producer(void *arg) {
    80003cc8:	fe010113          	addi	sp,sp,-32
    80003ccc:	00113c23          	sd	ra,24(sp)
    80003cd0:	00813823          	sd	s0,16(sp)
    80003cd4:	00913423          	sd	s1,8(sp)
    80003cd8:	01213023          	sd	s2,0(sp)
    80003cdc:	02010413          	addi	s0,sp,32
    80003ce0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("Producer started...\n");
    80003ce4:	00004517          	auipc	a0,0x4
    80003ce8:	4b450513          	addi	a0,a0,1204 # 80008198 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80003cec:	fffff097          	auipc	ra,0xfffff
    80003cf0:	49c080e7          	jalr	1180(ra) # 80003188 <_ZN5Riscv11printStringEPKc>

    int i = 0;
    80003cf4:	00000913          	li	s2,0
    80003cf8:	00c0006f          	j	80003d04 <_Z8producerPv+0x3c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003cfc:	ffffd097          	auipc	ra,0xffffd
    80003d00:	628080e7          	jalr	1576(ra) # 80001324 <thread_dispatch>
    while (!threadEnd) {
    80003d04:	00007797          	auipc	a5,0x7
    80003d08:	86c7a783          	lw	a5,-1940(a5) # 8000a570 <threadEnd>
    80003d0c:	02079e63          	bnez	a5,80003d48 <_Z8producerPv+0x80>
        data->buffer->put(data->id + '0');
    80003d10:	0004a583          	lw	a1,0(s1)
    80003d14:	0305859b          	addiw	a1,a1,48
    80003d18:	0084b503          	ld	a0,8(s1)
    80003d1c:	00002097          	auipc	ra,0x2
    80003d20:	ba0080e7          	jalr	-1120(ra) # 800058bc <_ZN6Buffer3putEi>
        i++;
    80003d24:	0019071b          	addiw	a4,s2,1
    80003d28:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003d2c:	0004a683          	lw	a3,0(s1)
    80003d30:	0026979b          	slliw	a5,a3,0x2
    80003d34:	00d787bb          	addw	a5,a5,a3
    80003d38:	0017979b          	slliw	a5,a5,0x1
    80003d3c:	02f767bb          	remw	a5,a4,a5
    80003d40:	fc0792e3          	bnez	a5,80003d04 <_Z8producerPv+0x3c>
    80003d44:	fb9ff06f          	j	80003cfc <_Z8producerPv+0x34>
        }
    }

    sem_signal(data->wait);
    80003d48:	0104b503          	ld	a0,16(s1)
    80003d4c:	ffffd097          	auipc	ra,0xffffd
    80003d50:	6b0080e7          	jalr	1712(ra) # 800013fc <sem_signal>
}
    80003d54:	01813083          	ld	ra,24(sp)
    80003d58:	01013403          	ld	s0,16(sp)
    80003d5c:	00813483          	ld	s1,8(sp)
    80003d60:	00013903          	ld	s2,0(sp)
    80003d64:	02010113          	addi	sp,sp,32
    80003d68:	00008067          	ret

0000000080003d6c <_Z8consumerPv>:

void consumer(void *arg) {
    80003d6c:	fd010113          	addi	sp,sp,-48
    80003d70:	02113423          	sd	ra,40(sp)
    80003d74:	02813023          	sd	s0,32(sp)
    80003d78:	00913c23          	sd	s1,24(sp)
    80003d7c:	01213823          	sd	s2,16(sp)
    80003d80:	01313423          	sd	s3,8(sp)
    80003d84:	03010413          	addi	s0,sp,48
    80003d88:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("Consumer started...\n");
    80003d8c:	00004517          	auipc	a0,0x4
    80003d90:	42450513          	addi	a0,a0,1060 # 800081b0 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    80003d94:	fffff097          	auipc	ra,0xfffff
    80003d98:	3f4080e7          	jalr	1012(ra) # 80003188 <_ZN5Riscv11printStringEPKc>

    int i = 0;
    80003d9c:	00000993          	li	s3,0
    80003da0:	01c0006f          	j	80003dbc <_Z8consumerPv+0x50>

        //putc(key);
        Riscv::printInteger(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003da4:	ffffd097          	auipc	ra,0xffffd
    80003da8:	580080e7          	jalr	1408(ra) # 80001324 <thread_dispatch>
    80003dac:	04c0006f          	j	80003df8 <_Z8consumerPv+0x8c>
        }

        if (i % 80 == 0) {
            __putc('\n');
    80003db0:	00a00513          	li	a0,10
    80003db4:	00004097          	auipc	ra,0x4
    80003db8:	ce8080e7          	jalr	-792(ra) # 80007a9c <__putc>
    while (!threadEnd) {
    80003dbc:	00006797          	auipc	a5,0x6
    80003dc0:	7b47a783          	lw	a5,1972(a5) # 8000a570 <threadEnd>
    80003dc4:	04079263          	bnez	a5,80003e08 <_Z8consumerPv+0x9c>
        int key = data->buffer->get();
    80003dc8:	00893503          	ld	a0,8(s2)
    80003dcc:	00002097          	auipc	ra,0x2
    80003dd0:	b80080e7          	jalr	-1152(ra) # 8000594c <_ZN6Buffer3getEv>
        i++;
    80003dd4:	0019849b          	addiw	s1,s3,1
    80003dd8:	0004899b          	sext.w	s3,s1
        Riscv::printInteger(key);
    80003ddc:	fffff097          	auipc	ra,0xfffff
    80003de0:	41c080e7          	jalr	1052(ra) # 800031f8 <_ZN5Riscv12printIntegerEm>
        if (i % (5 * data->id) == 0) {
    80003de4:	00092703          	lw	a4,0(s2)
    80003de8:	0027179b          	slliw	a5,a4,0x2
    80003dec:	00e787bb          	addw	a5,a5,a4
    80003df0:	02f4e7bb          	remw	a5,s1,a5
    80003df4:	fa0788e3          	beqz	a5,80003da4 <_Z8consumerPv+0x38>
        if (i % 80 == 0) {
    80003df8:	05000793          	li	a5,80
    80003dfc:	02f4e4bb          	remw	s1,s1,a5
    80003e00:	fa049ee3          	bnez	s1,80003dbc <_Z8consumerPv+0x50>
    80003e04:	fadff06f          	j	80003db0 <_Z8consumerPv+0x44>
        }
    }

    sem_signal(data->wait);
    80003e08:	01093503          	ld	a0,16(s2)
    80003e0c:	ffffd097          	auipc	ra,0xffffd
    80003e10:	5f0080e7          	jalr	1520(ra) # 800013fc <sem_signal>
}
    80003e14:	02813083          	ld	ra,40(sp)
    80003e18:	02013403          	ld	s0,32(sp)
    80003e1c:	01813483          	ld	s1,24(sp)
    80003e20:	01013903          	ld	s2,16(sp)
    80003e24:	00813983          	ld	s3,8(sp)
    80003e28:	03010113          	addi	sp,sp,48
    80003e2c:	00008067          	ret

0000000080003e30 <_Z16producerKeyboardPv>:
void producerKeyboard(void *arg) {
    80003e30:	fe010113          	addi	sp,sp,-32
    80003e34:	00113c23          	sd	ra,24(sp)
    80003e38:	00813823          	sd	s0,16(sp)
    80003e3c:	00913423          	sd	s1,8(sp)
    80003e40:	01213023          	sd	s2,0(sp)
    80003e44:	02010413          	addi	s0,sp,32
    80003e48:	00050493          	mv	s1,a0
    int i = 0;
    80003e4c:	00000913          	li	s2,0
    80003e50:	00c0006f          	j	80003e5c <_Z16producerKeyboardPv+0x2c>
            thread_dispatch();
    80003e54:	ffffd097          	auipc	ra,0xffffd
    80003e58:	4d0080e7          	jalr	1232(ra) # 80001324 <thread_dispatch>
    while ((key = __getc()) != 0x1b) {
    80003e5c:	00004097          	auipc	ra,0x4
    80003e60:	c7c080e7          	jalr	-900(ra) # 80007ad8 <__getc>
    80003e64:	0005059b          	sext.w	a1,a0
    80003e68:	01b00793          	li	a5,27
    80003e6c:	02f58a63          	beq	a1,a5,80003ea0 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003e70:	0084b503          	ld	a0,8(s1)
    80003e74:	00002097          	auipc	ra,0x2
    80003e78:	a48080e7          	jalr	-1464(ra) # 800058bc <_ZN6Buffer3putEi>
        i++;
    80003e7c:	0019071b          	addiw	a4,s2,1
    80003e80:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003e84:	0004a683          	lw	a3,0(s1)
    80003e88:	0026979b          	slliw	a5,a3,0x2
    80003e8c:	00d787bb          	addw	a5,a5,a3
    80003e90:	0017979b          	slliw	a5,a5,0x1
    80003e94:	02f767bb          	remw	a5,a4,a5
    80003e98:	fc0792e3          	bnez	a5,80003e5c <_Z16producerKeyboardPv+0x2c>
    80003e9c:	fb9ff06f          	j	80003e54 <_Z16producerKeyboardPv+0x24>
    threadEnd = 1;
    80003ea0:	00100793          	li	a5,1
    80003ea4:	00006717          	auipc	a4,0x6
    80003ea8:	6cf72623          	sw	a5,1740(a4) # 8000a570 <threadEnd>
    delete data->buffer;
    80003eac:	0084b903          	ld	s2,8(s1)
    80003eb0:	00090e63          	beqz	s2,80003ecc <_Z16producerKeyboardPv+0x9c>
    80003eb4:	00090513          	mv	a0,s2
    80003eb8:	00002097          	auipc	ra,0x2
    80003ebc:	958080e7          	jalr	-1704(ra) # 80005810 <_ZN6BufferD1Ev>
    80003ec0:	00090513          	mv	a0,s2
    80003ec4:	fffff097          	auipc	ra,0xfffff
    80003ec8:	dc4080e7          	jalr	-572(ra) # 80002c88 <_ZdlPv>
    sem_signal(data->wait);
    80003ecc:	0104b503          	ld	a0,16(s1)
    80003ed0:	ffffd097          	auipc	ra,0xffffd
    80003ed4:	52c080e7          	jalr	1324(ra) # 800013fc <sem_signal>
}
    80003ed8:	01813083          	ld	ra,24(sp)
    80003edc:	01013403          	ld	s0,16(sp)
    80003ee0:	00813483          	ld	s1,8(sp)
    80003ee4:	00013903          	ld	s2,0(sp)
    80003ee8:	02010113          	addi	sp,sp,32
    80003eec:	00008067          	ret

0000000080003ef0 <_Z22producerConsumer_C_APIv>:
//todo
//threadNuma hardCoded, timer enables itself as soon as
//code gets into getString
//isto za bafer
void producerConsumer_C_API()
{
    80003ef0:	f2010113          	addi	sp,sp,-224
    80003ef4:	0c113c23          	sd	ra,216(sp)
    80003ef8:	0c813823          	sd	s0,208(sp)
    80003efc:	0c913423          	sd	s1,200(sp)
    80003f00:	0d213023          	sd	s2,192(sp)
    80003f04:	0e010413          	addi	s0,sp,224
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80003f08:	00004517          	auipc	a0,0x4
    80003f0c:	2c050513          	addi	a0,a0,704 # 800081c8 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80003f10:	00001097          	auipc	ra,0x1
    80003f14:	150080e7          	jalr	336(ra) # 80005060 <_Z11printStringPKc>
    //getString(input, 30);
    threadNum = 5;

    printString("Unesite velicinu bafera?\n");
    80003f18:	00004517          	auipc	a0,0x4
    80003f1c:	2d050513          	addi	a0,a0,720 # 800081e8 <_ZZN5Riscv12printIntegerEmE6digits+0x60>
    80003f20:	00001097          	auipc	ra,0x1
    80003f24:	140080e7          	jalr	320(ra) # 80005060 <_Z11printStringPKc>
    //getString(input, 30);
    n = 10;

    printString("Broj proizvodjaca "); printInt(threadNum);
    80003f28:	00004517          	auipc	a0,0x4
    80003f2c:	2e050513          	addi	a0,a0,736 # 80008208 <_ZZN5Riscv12printIntegerEmE6digits+0x80>
    80003f30:	00001097          	auipc	ra,0x1
    80003f34:	130080e7          	jalr	304(ra) # 80005060 <_Z11printStringPKc>
    80003f38:	00000613          	li	a2,0
    80003f3c:	00a00593          	li	a1,10
    80003f40:	00500513          	li	a0,5
    80003f44:	00001097          	auipc	ra,0x1
    80003f48:	2b4080e7          	jalr	692(ra) # 800051f8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003f4c:	00004517          	auipc	a0,0x4
    80003f50:	2d450513          	addi	a0,a0,724 # 80008220 <_ZZN5Riscv12printIntegerEmE6digits+0x98>
    80003f54:	00001097          	auipc	ra,0x1
    80003f58:	10c080e7          	jalr	268(ra) # 80005060 <_Z11printStringPKc>
    80003f5c:	00000613          	li	a2,0
    80003f60:	00a00593          	li	a1,10
    80003f64:	00a00513          	li	a0,10
    80003f68:	00001097          	auipc	ra,0x1
    80003f6c:	290080e7          	jalr	656(ra) # 800051f8 <_Z8printIntiii>
    printString(".\n");
    80003f70:	00004517          	auipc	a0,0x4
    80003f74:	1d850513          	addi	a0,a0,472 # 80008148 <CONSOLE_STATUS+0x138>
    80003f78:	00001097          	auipc	ra,0x1
    80003f7c:	0e8080e7          	jalr	232(ra) # 80005060 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80003f80:	03800513          	li	a0,56
    80003f84:	fffff097          	auipc	ra,0xfffff
    80003f88:	cdc080e7          	jalr	-804(ra) # 80002c60 <_Znwm>
    80003f8c:	00050913          	mv	s2,a0
    80003f90:	00a00593          	li	a1,10
    80003f94:	00001097          	auipc	ra,0x1
    80003f98:	7f4080e7          	jalr	2036(ra) # 80005788 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80003f9c:	00000593          	li	a1,0
    80003fa0:	00006517          	auipc	a0,0x6
    80003fa4:	5d850513          	addi	a0,a0,1496 # 8000a578 <waitForAll>
    80003fa8:	ffffd097          	auipc	ra,0xffffd
    80003fac:	3c4080e7          	jalr	964(ra) # 8000136c <sem_open>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    80003fb0:	00500793          	li	a5,5
    80003fb4:	fcf42023          	sw	a5,-64(s0)
    data[threadNum].buffer = buffer;
    80003fb8:	fd243423          	sd	s2,-56(s0)
    data[threadNum].wait = waitForAll;
    80003fbc:	00006797          	auipc	a5,0x6
    80003fc0:	5bc7b783          	ld	a5,1468(a5) # 8000a578 <waitForAll>
    80003fc4:	fcf43823          	sd	a5,-48(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003fc8:	fc040613          	addi	a2,s0,-64
    80003fcc:	00000597          	auipc	a1,0x0
    80003fd0:	da058593          	addi	a1,a1,-608 # 80003d6c <_Z8consumerPv>
    80003fd4:	fd840513          	addi	a0,s0,-40
    80003fd8:	ffffd097          	auipc	ra,0xffffd
    80003fdc:	2cc080e7          	jalr	716(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80003fe0:	00000493          	li	s1,0
    80003fe4:	00400793          	li	a5,4
    80003fe8:	0697c063          	blt	a5,s1,80004048 <_Z22producerConsumer_C_APIv+0x158>
        data[i].id = i;
    80003fec:	00149613          	slli	a2,s1,0x1
    80003ff0:	009607b3          	add	a5,a2,s1
    80003ff4:	00379793          	slli	a5,a5,0x3
    80003ff8:	fe040713          	addi	a4,s0,-32
    80003ffc:	00f707b3          	add	a5,a4,a5
    80004000:	f697a423          	sw	s1,-152(a5)
        data[i].buffer = buffer;
    80004004:	f727b823          	sd	s2,-144(a5)
        data[i].wait = waitForAll;
    80004008:	00006717          	auipc	a4,0x6
    8000400c:	57073703          	ld	a4,1392(a4) # 8000a578 <waitForAll>
    80004010:	f6e7bc23          	sd	a4,-136(a5)
        //todo changed
        //thread_create(threads + i,
        //              i > 0 ? producer : producerKeyboard,
        //              data + i);

        thread_create(threads + i, producer, data + i);
    80004014:	00349793          	slli	a5,s1,0x3
    80004018:	00960633          	add	a2,a2,s1
    8000401c:	00361613          	slli	a2,a2,0x3
    80004020:	f4840713          	addi	a4,s0,-184
    80004024:	00c70633          	add	a2,a4,a2
    80004028:	00000597          	auipc	a1,0x0
    8000402c:	ca058593          	addi	a1,a1,-864 # 80003cc8 <_Z8producerPv>
    80004030:	f2040513          	addi	a0,s0,-224
    80004034:	00f50533          	add	a0,a0,a5
    80004038:	ffffd097          	auipc	ra,0xffffd
    8000403c:	26c080e7          	jalr	620(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004040:	0014849b          	addiw	s1,s1,1
    80004044:	fa1ff06f          	j	80003fe4 <_Z22producerConsumer_C_APIv+0xf4>

    }

    thread_dispatch();
    80004048:	ffffd097          	auipc	ra,0xffffd
    8000404c:	2dc080e7          	jalr	732(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80004050:	00000493          	li	s1,0
    80004054:	00500793          	li	a5,5
    80004058:	0097ce63          	blt	a5,s1,80004074 <_Z22producerConsumer_C_APIv+0x184>
        sem_wait(waitForAll);
    8000405c:	00006517          	auipc	a0,0x6
    80004060:	51c53503          	ld	a0,1308(a0) # 8000a578 <waitForAll>
    80004064:	ffffd097          	auipc	ra,0xffffd
    80004068:	36c080e7          	jalr	876(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    8000406c:	0014849b          	addiw	s1,s1,1
    80004070:	fe5ff06f          	j	80004054 <_Z22producerConsumer_C_APIv+0x164>
    }

    sem_close(waitForAll);
    80004074:	00006517          	auipc	a0,0x6
    80004078:	50453503          	ld	a0,1284(a0) # 8000a578 <waitForAll>
    8000407c:	ffffd097          	auipc	ra,0xffffd
    80004080:	328080e7          	jalr	808(ra) # 800013a4 <sem_close>
    80004084:	0d813083          	ld	ra,216(sp)
    80004088:	0d013403          	ld	s0,208(sp)
    8000408c:	0c813483          	ld	s1,200(sp)
    80004090:	0c013903          	ld	s2,192(sp)
    80004094:	0e010113          	addi	sp,sp,224
    80004098:	00008067          	ret
    8000409c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800040a0:	00090513          	mv	a0,s2
    800040a4:	fffff097          	auipc	ra,0xfffff
    800040a8:	be4080e7          	jalr	-1052(ra) # 80002c88 <_ZdlPv>
    800040ac:	00048513          	mv	a0,s1
    800040b0:	00007097          	auipc	ra,0x7
    800040b4:	5b8080e7          	jalr	1464(ra) # 8000b668 <_Unwind_Resume>

00000000800040b8 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800040b8:	fe010113          	addi	sp,sp,-32
    800040bc:	00113c23          	sd	ra,24(sp)
    800040c0:	00813823          	sd	s0,16(sp)
    800040c4:	00913423          	sd	s1,8(sp)
    800040c8:	01213023          	sd	s2,0(sp)
    800040cc:	02010413          	addi	s0,sp,32
    800040d0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800040d4:	00100793          	li	a5,1
    800040d8:	02a7f863          	bgeu	a5,a0,80004108 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800040dc:	00a00793          	li	a5,10
    800040e0:	02f577b3          	remu	a5,a0,a5
    800040e4:	02078e63          	beqz	a5,80004120 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800040e8:	fff48513          	addi	a0,s1,-1
    800040ec:	00000097          	auipc	ra,0x0
    800040f0:	fcc080e7          	jalr	-52(ra) # 800040b8 <_ZL9fibonaccim>
    800040f4:	00050913          	mv	s2,a0
    800040f8:	ffe48513          	addi	a0,s1,-2
    800040fc:	00000097          	auipc	ra,0x0
    80004100:	fbc080e7          	jalr	-68(ra) # 800040b8 <_ZL9fibonaccim>
    80004104:	00a90533          	add	a0,s2,a0
}
    80004108:	01813083          	ld	ra,24(sp)
    8000410c:	01013403          	ld	s0,16(sp)
    80004110:	00813483          	ld	s1,8(sp)
    80004114:	00013903          	ld	s2,0(sp)
    80004118:	02010113          	addi	sp,sp,32
    8000411c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004120:	ffffd097          	auipc	ra,0xffffd
    80004124:	204080e7          	jalr	516(ra) # 80001324 <thread_dispatch>
    80004128:	fc1ff06f          	j	800040e8 <_ZL9fibonaccim+0x30>

000000008000412c <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    8000412c:	fe010113          	addi	sp,sp,-32
    80004130:	00113c23          	sd	ra,24(sp)
    80004134:	00813823          	sd	s0,16(sp)
    80004138:	00913423          	sd	s1,8(sp)
    8000413c:	01213023          	sd	s2,0(sp)
    80004140:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004144:	00000913          	li	s2,0
    80004148:	0380006f          	j	80004180 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000414c:	ffffd097          	auipc	ra,0xffffd
    80004150:	1d8080e7          	jalr	472(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004154:	00148493          	addi	s1,s1,1
    80004158:	000027b7          	lui	a5,0x2
    8000415c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004160:	0097ee63          	bltu	a5,s1,8000417c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004164:	00000713          	li	a4,0
    80004168:	000077b7          	lui	a5,0x7
    8000416c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004170:	fce7eee3          	bltu	a5,a4,8000414c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004174:	00170713          	addi	a4,a4,1
    80004178:	ff1ff06f          	j	80004168 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000417c:	00190913          	addi	s2,s2,1
    80004180:	00900793          	li	a5,9
    80004184:	0527e063          	bltu	a5,s2,800041c4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004188:	00004517          	auipc	a0,0x4
    8000418c:	0b050513          	addi	a0,a0,176 # 80008238 <_ZZN5Riscv12printIntegerEmE6digits+0xb0>
    80004190:	00001097          	auipc	ra,0x1
    80004194:	ed0080e7          	jalr	-304(ra) # 80005060 <_Z11printStringPKc>
    80004198:	00000613          	li	a2,0
    8000419c:	00a00593          	li	a1,10
    800041a0:	0009051b          	sext.w	a0,s2
    800041a4:	00001097          	auipc	ra,0x1
    800041a8:	054080e7          	jalr	84(ra) # 800051f8 <_Z8printIntiii>
    800041ac:	00004517          	auipc	a0,0x4
    800041b0:	fd450513          	addi	a0,a0,-44 # 80008180 <CONSOLE_STATUS+0x170>
    800041b4:	00001097          	auipc	ra,0x1
    800041b8:	eac080e7          	jalr	-340(ra) # 80005060 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800041bc:	00000493          	li	s1,0
    800041c0:	f99ff06f          	j	80004158 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800041c4:	00004517          	auipc	a0,0x4
    800041c8:	07c50513          	addi	a0,a0,124 # 80008240 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    800041cc:	00001097          	auipc	ra,0x1
    800041d0:	e94080e7          	jalr	-364(ra) # 80005060 <_Z11printStringPKc>
    finishedA = true;
    800041d4:	00100793          	li	a5,1
    800041d8:	00006717          	auipc	a4,0x6
    800041dc:	3af70423          	sb	a5,936(a4) # 8000a580 <_ZL9finishedA>
}
    800041e0:	01813083          	ld	ra,24(sp)
    800041e4:	01013403          	ld	s0,16(sp)
    800041e8:	00813483          	ld	s1,8(sp)
    800041ec:	00013903          	ld	s2,0(sp)
    800041f0:	02010113          	addi	sp,sp,32
    800041f4:	00008067          	ret

00000000800041f8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800041f8:	fe010113          	addi	sp,sp,-32
    800041fc:	00113c23          	sd	ra,24(sp)
    80004200:	00813823          	sd	s0,16(sp)
    80004204:	00913423          	sd	s1,8(sp)
    80004208:	01213023          	sd	s2,0(sp)
    8000420c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004210:	00000913          	li	s2,0
    80004214:	0380006f          	j	8000424c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004218:	ffffd097          	auipc	ra,0xffffd
    8000421c:	10c080e7          	jalr	268(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004220:	00148493          	addi	s1,s1,1
    80004224:	000027b7          	lui	a5,0x2
    80004228:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000422c:	0097ee63          	bltu	a5,s1,80004248 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004230:	00000713          	li	a4,0
    80004234:	000077b7          	lui	a5,0x7
    80004238:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000423c:	fce7eee3          	bltu	a5,a4,80004218 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004240:	00170713          	addi	a4,a4,1
    80004244:	ff1ff06f          	j	80004234 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004248:	00190913          	addi	s2,s2,1
    8000424c:	00f00793          	li	a5,15
    80004250:	0527e063          	bltu	a5,s2,80004290 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004254:	00004517          	auipc	a0,0x4
    80004258:	ffc50513          	addi	a0,a0,-4 # 80008250 <_ZZN5Riscv12printIntegerEmE6digits+0xc8>
    8000425c:	00001097          	auipc	ra,0x1
    80004260:	e04080e7          	jalr	-508(ra) # 80005060 <_Z11printStringPKc>
    80004264:	00000613          	li	a2,0
    80004268:	00a00593          	li	a1,10
    8000426c:	0009051b          	sext.w	a0,s2
    80004270:	00001097          	auipc	ra,0x1
    80004274:	f88080e7          	jalr	-120(ra) # 800051f8 <_Z8printIntiii>
    80004278:	00004517          	auipc	a0,0x4
    8000427c:	f0850513          	addi	a0,a0,-248 # 80008180 <CONSOLE_STATUS+0x170>
    80004280:	00001097          	auipc	ra,0x1
    80004284:	de0080e7          	jalr	-544(ra) # 80005060 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004288:	00000493          	li	s1,0
    8000428c:	f99ff06f          	j	80004224 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004290:	00004517          	auipc	a0,0x4
    80004294:	fc850513          	addi	a0,a0,-56 # 80008258 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    80004298:	00001097          	auipc	ra,0x1
    8000429c:	dc8080e7          	jalr	-568(ra) # 80005060 <_Z11printStringPKc>
    finishedB = true;
    800042a0:	00100793          	li	a5,1
    800042a4:	00006717          	auipc	a4,0x6
    800042a8:	2cf70ea3          	sb	a5,733(a4) # 8000a581 <_ZL9finishedB>
    thread_dispatch();
    800042ac:	ffffd097          	auipc	ra,0xffffd
    800042b0:	078080e7          	jalr	120(ra) # 80001324 <thread_dispatch>
}
    800042b4:	01813083          	ld	ra,24(sp)
    800042b8:	01013403          	ld	s0,16(sp)
    800042bc:	00813483          	ld	s1,8(sp)
    800042c0:	00013903          	ld	s2,0(sp)
    800042c4:	02010113          	addi	sp,sp,32
    800042c8:	00008067          	ret

00000000800042cc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800042cc:	fe010113          	addi	sp,sp,-32
    800042d0:	00113c23          	sd	ra,24(sp)
    800042d4:	00813823          	sd	s0,16(sp)
    800042d8:	00913423          	sd	s1,8(sp)
    800042dc:	01213023          	sd	s2,0(sp)
    800042e0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800042e4:	00000493          	li	s1,0
    800042e8:	0400006f          	j	80004328 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800042ec:	00004517          	auipc	a0,0x4
    800042f0:	f7c50513          	addi	a0,a0,-132 # 80008268 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    800042f4:	00001097          	auipc	ra,0x1
    800042f8:	d6c080e7          	jalr	-660(ra) # 80005060 <_Z11printStringPKc>
    800042fc:	00000613          	li	a2,0
    80004300:	00a00593          	li	a1,10
    80004304:	00048513          	mv	a0,s1
    80004308:	00001097          	auipc	ra,0x1
    8000430c:	ef0080e7          	jalr	-272(ra) # 800051f8 <_Z8printIntiii>
    80004310:	00004517          	auipc	a0,0x4
    80004314:	e7050513          	addi	a0,a0,-400 # 80008180 <CONSOLE_STATUS+0x170>
    80004318:	00001097          	auipc	ra,0x1
    8000431c:	d48080e7          	jalr	-696(ra) # 80005060 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004320:	0014849b          	addiw	s1,s1,1
    80004324:	0ff4f493          	andi	s1,s1,255
    80004328:	00200793          	li	a5,2
    8000432c:	fc97f0e3          	bgeu	a5,s1,800042ec <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004330:	00004517          	auipc	a0,0x4
    80004334:	f4050513          	addi	a0,a0,-192 # 80008270 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    80004338:	00001097          	auipc	ra,0x1
    8000433c:	d28080e7          	jalr	-728(ra) # 80005060 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004340:	00700313          	li	t1,7
    thread_dispatch();
    80004344:	ffffd097          	auipc	ra,0xffffd
    80004348:	fe0080e7          	jalr	-32(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000434c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004350:	00004517          	auipc	a0,0x4
    80004354:	f3050513          	addi	a0,a0,-208 # 80008280 <_ZZN5Riscv12printIntegerEmE6digits+0xf8>
    80004358:	00001097          	auipc	ra,0x1
    8000435c:	d08080e7          	jalr	-760(ra) # 80005060 <_Z11printStringPKc>
    80004360:	00000613          	li	a2,0
    80004364:	00a00593          	li	a1,10
    80004368:	0009051b          	sext.w	a0,s2
    8000436c:	00001097          	auipc	ra,0x1
    80004370:	e8c080e7          	jalr	-372(ra) # 800051f8 <_Z8printIntiii>
    80004374:	00004517          	auipc	a0,0x4
    80004378:	e0c50513          	addi	a0,a0,-500 # 80008180 <CONSOLE_STATUS+0x170>
    8000437c:	00001097          	auipc	ra,0x1
    80004380:	ce4080e7          	jalr	-796(ra) # 80005060 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004384:	00c00513          	li	a0,12
    80004388:	00000097          	auipc	ra,0x0
    8000438c:	d30080e7          	jalr	-720(ra) # 800040b8 <_ZL9fibonaccim>
    80004390:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004394:	00004517          	auipc	a0,0x4
    80004398:	ef450513          	addi	a0,a0,-268 # 80008288 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    8000439c:	00001097          	auipc	ra,0x1
    800043a0:	cc4080e7          	jalr	-828(ra) # 80005060 <_Z11printStringPKc>
    800043a4:	00000613          	li	a2,0
    800043a8:	00a00593          	li	a1,10
    800043ac:	0009051b          	sext.w	a0,s2
    800043b0:	00001097          	auipc	ra,0x1
    800043b4:	e48080e7          	jalr	-440(ra) # 800051f8 <_Z8printIntiii>
    800043b8:	00004517          	auipc	a0,0x4
    800043bc:	dc850513          	addi	a0,a0,-568 # 80008180 <CONSOLE_STATUS+0x170>
    800043c0:	00001097          	auipc	ra,0x1
    800043c4:	ca0080e7          	jalr	-864(ra) # 80005060 <_Z11printStringPKc>
    800043c8:	0400006f          	j	80004408 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800043cc:	00004517          	auipc	a0,0x4
    800043d0:	e9c50513          	addi	a0,a0,-356 # 80008268 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    800043d4:	00001097          	auipc	ra,0x1
    800043d8:	c8c080e7          	jalr	-884(ra) # 80005060 <_Z11printStringPKc>
    800043dc:	00000613          	li	a2,0
    800043e0:	00a00593          	li	a1,10
    800043e4:	00048513          	mv	a0,s1
    800043e8:	00001097          	auipc	ra,0x1
    800043ec:	e10080e7          	jalr	-496(ra) # 800051f8 <_Z8printIntiii>
    800043f0:	00004517          	auipc	a0,0x4
    800043f4:	d9050513          	addi	a0,a0,-624 # 80008180 <CONSOLE_STATUS+0x170>
    800043f8:	00001097          	auipc	ra,0x1
    800043fc:	c68080e7          	jalr	-920(ra) # 80005060 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004400:	0014849b          	addiw	s1,s1,1
    80004404:	0ff4f493          	andi	s1,s1,255
    80004408:	00500793          	li	a5,5
    8000440c:	fc97f0e3          	bgeu	a5,s1,800043cc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004410:	00004517          	auipc	a0,0x4
    80004414:	e3050513          	addi	a0,a0,-464 # 80008240 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80004418:	00001097          	auipc	ra,0x1
    8000441c:	c48080e7          	jalr	-952(ra) # 80005060 <_Z11printStringPKc>
    finishedC = true;
    80004420:	00100793          	li	a5,1
    80004424:	00006717          	auipc	a4,0x6
    80004428:	14f70f23          	sb	a5,350(a4) # 8000a582 <_ZL9finishedC>
    thread_dispatch();
    8000442c:	ffffd097          	auipc	ra,0xffffd
    80004430:	ef8080e7          	jalr	-264(ra) # 80001324 <thread_dispatch>
}
    80004434:	01813083          	ld	ra,24(sp)
    80004438:	01013403          	ld	s0,16(sp)
    8000443c:	00813483          	ld	s1,8(sp)
    80004440:	00013903          	ld	s2,0(sp)
    80004444:	02010113          	addi	sp,sp,32
    80004448:	00008067          	ret

000000008000444c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000444c:	fe010113          	addi	sp,sp,-32
    80004450:	00113c23          	sd	ra,24(sp)
    80004454:	00813823          	sd	s0,16(sp)
    80004458:	00913423          	sd	s1,8(sp)
    8000445c:	01213023          	sd	s2,0(sp)
    80004460:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004464:	00a00493          	li	s1,10
    80004468:	0400006f          	j	800044a8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000446c:	00004517          	auipc	a0,0x4
    80004470:	e2c50513          	addi	a0,a0,-468 # 80008298 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80004474:	00001097          	auipc	ra,0x1
    80004478:	bec080e7          	jalr	-1044(ra) # 80005060 <_Z11printStringPKc>
    8000447c:	00000613          	li	a2,0
    80004480:	00a00593          	li	a1,10
    80004484:	00048513          	mv	a0,s1
    80004488:	00001097          	auipc	ra,0x1
    8000448c:	d70080e7          	jalr	-656(ra) # 800051f8 <_Z8printIntiii>
    80004490:	00004517          	auipc	a0,0x4
    80004494:	cf050513          	addi	a0,a0,-784 # 80008180 <CONSOLE_STATUS+0x170>
    80004498:	00001097          	auipc	ra,0x1
    8000449c:	bc8080e7          	jalr	-1080(ra) # 80005060 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800044a0:	0014849b          	addiw	s1,s1,1
    800044a4:	0ff4f493          	andi	s1,s1,255
    800044a8:	00c00793          	li	a5,12
    800044ac:	fc97f0e3          	bgeu	a5,s1,8000446c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800044b0:	00004517          	auipc	a0,0x4
    800044b4:	df050513          	addi	a0,a0,-528 # 800082a0 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    800044b8:	00001097          	auipc	ra,0x1
    800044bc:	ba8080e7          	jalr	-1112(ra) # 80005060 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800044c0:	00500313          	li	t1,5
    thread_dispatch();
    800044c4:	ffffd097          	auipc	ra,0xffffd
    800044c8:	e60080e7          	jalr	-416(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    800044cc:	01000513          	li	a0,16
    800044d0:	00000097          	auipc	ra,0x0
    800044d4:	be8080e7          	jalr	-1048(ra) # 800040b8 <_ZL9fibonaccim>
    800044d8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800044dc:	00004517          	auipc	a0,0x4
    800044e0:	dd450513          	addi	a0,a0,-556 # 800082b0 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    800044e4:	00001097          	auipc	ra,0x1
    800044e8:	b7c080e7          	jalr	-1156(ra) # 80005060 <_Z11printStringPKc>
    800044ec:	00000613          	li	a2,0
    800044f0:	00a00593          	li	a1,10
    800044f4:	0009051b          	sext.w	a0,s2
    800044f8:	00001097          	auipc	ra,0x1
    800044fc:	d00080e7          	jalr	-768(ra) # 800051f8 <_Z8printIntiii>
    80004500:	00004517          	auipc	a0,0x4
    80004504:	c8050513          	addi	a0,a0,-896 # 80008180 <CONSOLE_STATUS+0x170>
    80004508:	00001097          	auipc	ra,0x1
    8000450c:	b58080e7          	jalr	-1192(ra) # 80005060 <_Z11printStringPKc>
    80004510:	0400006f          	j	80004550 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004514:	00004517          	auipc	a0,0x4
    80004518:	d8450513          	addi	a0,a0,-636 # 80008298 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    8000451c:	00001097          	auipc	ra,0x1
    80004520:	b44080e7          	jalr	-1212(ra) # 80005060 <_Z11printStringPKc>
    80004524:	00000613          	li	a2,0
    80004528:	00a00593          	li	a1,10
    8000452c:	00048513          	mv	a0,s1
    80004530:	00001097          	auipc	ra,0x1
    80004534:	cc8080e7          	jalr	-824(ra) # 800051f8 <_Z8printIntiii>
    80004538:	00004517          	auipc	a0,0x4
    8000453c:	c4850513          	addi	a0,a0,-952 # 80008180 <CONSOLE_STATUS+0x170>
    80004540:	00001097          	auipc	ra,0x1
    80004544:	b20080e7          	jalr	-1248(ra) # 80005060 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004548:	0014849b          	addiw	s1,s1,1
    8000454c:	0ff4f493          	andi	s1,s1,255
    80004550:	00f00793          	li	a5,15
    80004554:	fc97f0e3          	bgeu	a5,s1,80004514 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004558:	00004517          	auipc	a0,0x4
    8000455c:	d6850513          	addi	a0,a0,-664 # 800082c0 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80004560:	00001097          	auipc	ra,0x1
    80004564:	b00080e7          	jalr	-1280(ra) # 80005060 <_Z11printStringPKc>
    finishedD = true;
    80004568:	00100793          	li	a5,1
    8000456c:	00006717          	auipc	a4,0x6
    80004570:	00f70ba3          	sb	a5,23(a4) # 8000a583 <_ZL9finishedD>
    thread_dispatch();
    80004574:	ffffd097          	auipc	ra,0xffffd
    80004578:	db0080e7          	jalr	-592(ra) # 80001324 <thread_dispatch>
}
    8000457c:	01813083          	ld	ra,24(sp)
    80004580:	01013403          	ld	s0,16(sp)
    80004584:	00813483          	ld	s1,8(sp)
    80004588:	00013903          	ld	s2,0(sp)
    8000458c:	02010113          	addi	sp,sp,32
    80004590:	00008067          	ret

0000000080004594 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004594:	fc010113          	addi	sp,sp,-64
    80004598:	02113c23          	sd	ra,56(sp)
    8000459c:	02813823          	sd	s0,48(sp)
    800045a0:	02913423          	sd	s1,40(sp)
    800045a4:	03213023          	sd	s2,32(sp)
    800045a8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800045ac:	02000513          	li	a0,32
    800045b0:	ffffe097          	auipc	ra,0xffffe
    800045b4:	6b0080e7          	jalr	1712(ra) # 80002c60 <_Znwm>
    800045b8:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    800045bc:	fffff097          	auipc	ra,0xfffff
    800045c0:	870080e7          	jalr	-1936(ra) # 80002e2c <_ZN6ThreadC1Ev>
    800045c4:	00006797          	auipc	a5,0x6
    800045c8:	e1c78793          	addi	a5,a5,-484 # 8000a3e0 <_ZTV7WorkerA+0x10>
    800045cc:	00f4b023          	sd	a5,0(s1)
    800045d0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800045d4:	00004517          	auipc	a0,0x4
    800045d8:	cfc50513          	addi	a0,a0,-772 # 800082d0 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    800045dc:	00001097          	auipc	ra,0x1
    800045e0:	a84080e7          	jalr	-1404(ra) # 80005060 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800045e4:	02000513          	li	a0,32
    800045e8:	ffffe097          	auipc	ra,0xffffe
    800045ec:	678080e7          	jalr	1656(ra) # 80002c60 <_Znwm>
    800045f0:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    800045f4:	fffff097          	auipc	ra,0xfffff
    800045f8:	838080e7          	jalr	-1992(ra) # 80002e2c <_ZN6ThreadC1Ev>
    800045fc:	00006797          	auipc	a5,0x6
    80004600:	e0c78793          	addi	a5,a5,-500 # 8000a408 <_ZTV7WorkerB+0x10>
    80004604:	00f4b023          	sd	a5,0(s1)
    80004608:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000460c:	00004517          	auipc	a0,0x4
    80004610:	cdc50513          	addi	a0,a0,-804 # 800082e8 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80004614:	00001097          	auipc	ra,0x1
    80004618:	a4c080e7          	jalr	-1460(ra) # 80005060 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000461c:	02000513          	li	a0,32
    80004620:	ffffe097          	auipc	ra,0xffffe
    80004624:	640080e7          	jalr	1600(ra) # 80002c60 <_Znwm>
    80004628:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    8000462c:	fffff097          	auipc	ra,0xfffff
    80004630:	800080e7          	jalr	-2048(ra) # 80002e2c <_ZN6ThreadC1Ev>
    80004634:	00006797          	auipc	a5,0x6
    80004638:	dfc78793          	addi	a5,a5,-516 # 8000a430 <_ZTV7WorkerC+0x10>
    8000463c:	00f4b023          	sd	a5,0(s1)
    80004640:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004644:	00004517          	auipc	a0,0x4
    80004648:	cbc50513          	addi	a0,a0,-836 # 80008300 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    8000464c:	00001097          	auipc	ra,0x1
    80004650:	a14080e7          	jalr	-1516(ra) # 80005060 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004654:	02000513          	li	a0,32
    80004658:	ffffe097          	auipc	ra,0xffffe
    8000465c:	608080e7          	jalr	1544(ra) # 80002c60 <_Znwm>
    80004660:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80004664:	ffffe097          	auipc	ra,0xffffe
    80004668:	7c8080e7          	jalr	1992(ra) # 80002e2c <_ZN6ThreadC1Ev>
    8000466c:	00006797          	auipc	a5,0x6
    80004670:	dec78793          	addi	a5,a5,-532 # 8000a458 <_ZTV7WorkerD+0x10>
    80004674:	00f4b023          	sd	a5,0(s1)
    80004678:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000467c:	00004517          	auipc	a0,0x4
    80004680:	c9c50513          	addi	a0,a0,-868 # 80008318 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    80004684:	00001097          	auipc	ra,0x1
    80004688:	9dc080e7          	jalr	-1572(ra) # 80005060 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000468c:	00000493          	li	s1,0
    80004690:	00300793          	li	a5,3
    80004694:	0297c663          	blt	a5,s1,800046c0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004698:	00349793          	slli	a5,s1,0x3
    8000469c:	fe040713          	addi	a4,s0,-32
    800046a0:	00f707b3          	add	a5,a4,a5
    800046a4:	fe07b503          	ld	a0,-32(a5)
    800046a8:	ffffe097          	auipc	ra,0xffffe
    800046ac:	688080e7          	jalr	1672(ra) # 80002d30 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800046b0:	0014849b          	addiw	s1,s1,1
    800046b4:	fddff06f          	j	80004690 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800046b8:	ffffe097          	auipc	ra,0xffffe
    800046bc:	6bc080e7          	jalr	1724(ra) # 80002d74 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800046c0:	00006797          	auipc	a5,0x6
    800046c4:	ec07c783          	lbu	a5,-320(a5) # 8000a580 <_ZL9finishedA>
    800046c8:	fe0788e3          	beqz	a5,800046b8 <_Z20Threads_CPP_API_testv+0x124>
    800046cc:	00006797          	auipc	a5,0x6
    800046d0:	eb57c783          	lbu	a5,-331(a5) # 8000a581 <_ZL9finishedB>
    800046d4:	fe0782e3          	beqz	a5,800046b8 <_Z20Threads_CPP_API_testv+0x124>
    800046d8:	00006797          	auipc	a5,0x6
    800046dc:	eaa7c783          	lbu	a5,-342(a5) # 8000a582 <_ZL9finishedC>
    800046e0:	fc078ce3          	beqz	a5,800046b8 <_Z20Threads_CPP_API_testv+0x124>
    800046e4:	00006797          	auipc	a5,0x6
    800046e8:	e9f7c783          	lbu	a5,-353(a5) # 8000a583 <_ZL9finishedD>
    800046ec:	fc0786e3          	beqz	a5,800046b8 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    800046f0:	fc040493          	addi	s1,s0,-64
    800046f4:	0080006f          	j	800046fc <_Z20Threads_CPP_API_testv+0x168>
    800046f8:	00848493          	addi	s1,s1,8
    800046fc:	fe040793          	addi	a5,s0,-32
    80004700:	08f48663          	beq	s1,a5,8000478c <_Z20Threads_CPP_API_testv+0x1f8>
    80004704:	0004b503          	ld	a0,0(s1)
    80004708:	fe0508e3          	beqz	a0,800046f8 <_Z20Threads_CPP_API_testv+0x164>
    8000470c:	00053783          	ld	a5,0(a0)
    80004710:	0087b783          	ld	a5,8(a5)
    80004714:	000780e7          	jalr	a5
    80004718:	fe1ff06f          	j	800046f8 <_Z20Threads_CPP_API_testv+0x164>
    8000471c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004720:	00048513          	mv	a0,s1
    80004724:	ffffe097          	auipc	ra,0xffffe
    80004728:	564080e7          	jalr	1380(ra) # 80002c88 <_ZdlPv>
    8000472c:	00090513          	mv	a0,s2
    80004730:	00007097          	auipc	ra,0x7
    80004734:	f38080e7          	jalr	-200(ra) # 8000b668 <_Unwind_Resume>
    80004738:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000473c:	00048513          	mv	a0,s1
    80004740:	ffffe097          	auipc	ra,0xffffe
    80004744:	548080e7          	jalr	1352(ra) # 80002c88 <_ZdlPv>
    80004748:	00090513          	mv	a0,s2
    8000474c:	00007097          	auipc	ra,0x7
    80004750:	f1c080e7          	jalr	-228(ra) # 8000b668 <_Unwind_Resume>
    80004754:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004758:	00048513          	mv	a0,s1
    8000475c:	ffffe097          	auipc	ra,0xffffe
    80004760:	52c080e7          	jalr	1324(ra) # 80002c88 <_ZdlPv>
    80004764:	00090513          	mv	a0,s2
    80004768:	00007097          	auipc	ra,0x7
    8000476c:	f00080e7          	jalr	-256(ra) # 8000b668 <_Unwind_Resume>
    80004770:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004774:	00048513          	mv	a0,s1
    80004778:	ffffe097          	auipc	ra,0xffffe
    8000477c:	510080e7          	jalr	1296(ra) # 80002c88 <_ZdlPv>
    80004780:	00090513          	mv	a0,s2
    80004784:	00007097          	auipc	ra,0x7
    80004788:	ee4080e7          	jalr	-284(ra) # 8000b668 <_Unwind_Resume>
    8000478c:	03813083          	ld	ra,56(sp)
    80004790:	03013403          	ld	s0,48(sp)
    80004794:	02813483          	ld	s1,40(sp)
    80004798:	02013903          	ld	s2,32(sp)
    8000479c:	04010113          	addi	sp,sp,64
    800047a0:	00008067          	ret

00000000800047a4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800047a4:	ff010113          	addi	sp,sp,-16
    800047a8:	00113423          	sd	ra,8(sp)
    800047ac:	00813023          	sd	s0,0(sp)
    800047b0:	01010413          	addi	s0,sp,16
    800047b4:	00006797          	auipc	a5,0x6
    800047b8:	c2c78793          	addi	a5,a5,-980 # 8000a3e0 <_ZTV7WorkerA+0x10>
    800047bc:	00f53023          	sd	a5,0(a0)
    800047c0:	ffffe097          	auipc	ra,0xffffe
    800047c4:	3e4080e7          	jalr	996(ra) # 80002ba4 <_ZN6ThreadD1Ev>
    800047c8:	00813083          	ld	ra,8(sp)
    800047cc:	00013403          	ld	s0,0(sp)
    800047d0:	01010113          	addi	sp,sp,16
    800047d4:	00008067          	ret

00000000800047d8 <_ZN7WorkerAD0Ev>:
    800047d8:	fe010113          	addi	sp,sp,-32
    800047dc:	00113c23          	sd	ra,24(sp)
    800047e0:	00813823          	sd	s0,16(sp)
    800047e4:	00913423          	sd	s1,8(sp)
    800047e8:	02010413          	addi	s0,sp,32
    800047ec:	00050493          	mv	s1,a0
    800047f0:	00006797          	auipc	a5,0x6
    800047f4:	bf078793          	addi	a5,a5,-1040 # 8000a3e0 <_ZTV7WorkerA+0x10>
    800047f8:	00f53023          	sd	a5,0(a0)
    800047fc:	ffffe097          	auipc	ra,0xffffe
    80004800:	3a8080e7          	jalr	936(ra) # 80002ba4 <_ZN6ThreadD1Ev>
    80004804:	00048513          	mv	a0,s1
    80004808:	ffffe097          	auipc	ra,0xffffe
    8000480c:	480080e7          	jalr	1152(ra) # 80002c88 <_ZdlPv>
    80004810:	01813083          	ld	ra,24(sp)
    80004814:	01013403          	ld	s0,16(sp)
    80004818:	00813483          	ld	s1,8(sp)
    8000481c:	02010113          	addi	sp,sp,32
    80004820:	00008067          	ret

0000000080004824 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004824:	ff010113          	addi	sp,sp,-16
    80004828:	00113423          	sd	ra,8(sp)
    8000482c:	00813023          	sd	s0,0(sp)
    80004830:	01010413          	addi	s0,sp,16
    80004834:	00006797          	auipc	a5,0x6
    80004838:	bd478793          	addi	a5,a5,-1068 # 8000a408 <_ZTV7WorkerB+0x10>
    8000483c:	00f53023          	sd	a5,0(a0)
    80004840:	ffffe097          	auipc	ra,0xffffe
    80004844:	364080e7          	jalr	868(ra) # 80002ba4 <_ZN6ThreadD1Ev>
    80004848:	00813083          	ld	ra,8(sp)
    8000484c:	00013403          	ld	s0,0(sp)
    80004850:	01010113          	addi	sp,sp,16
    80004854:	00008067          	ret

0000000080004858 <_ZN7WorkerBD0Ev>:
    80004858:	fe010113          	addi	sp,sp,-32
    8000485c:	00113c23          	sd	ra,24(sp)
    80004860:	00813823          	sd	s0,16(sp)
    80004864:	00913423          	sd	s1,8(sp)
    80004868:	02010413          	addi	s0,sp,32
    8000486c:	00050493          	mv	s1,a0
    80004870:	00006797          	auipc	a5,0x6
    80004874:	b9878793          	addi	a5,a5,-1128 # 8000a408 <_ZTV7WorkerB+0x10>
    80004878:	00f53023          	sd	a5,0(a0)
    8000487c:	ffffe097          	auipc	ra,0xffffe
    80004880:	328080e7          	jalr	808(ra) # 80002ba4 <_ZN6ThreadD1Ev>
    80004884:	00048513          	mv	a0,s1
    80004888:	ffffe097          	auipc	ra,0xffffe
    8000488c:	400080e7          	jalr	1024(ra) # 80002c88 <_ZdlPv>
    80004890:	01813083          	ld	ra,24(sp)
    80004894:	01013403          	ld	s0,16(sp)
    80004898:	00813483          	ld	s1,8(sp)
    8000489c:	02010113          	addi	sp,sp,32
    800048a0:	00008067          	ret

00000000800048a4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800048a4:	ff010113          	addi	sp,sp,-16
    800048a8:	00113423          	sd	ra,8(sp)
    800048ac:	00813023          	sd	s0,0(sp)
    800048b0:	01010413          	addi	s0,sp,16
    800048b4:	00006797          	auipc	a5,0x6
    800048b8:	b7c78793          	addi	a5,a5,-1156 # 8000a430 <_ZTV7WorkerC+0x10>
    800048bc:	00f53023          	sd	a5,0(a0)
    800048c0:	ffffe097          	auipc	ra,0xffffe
    800048c4:	2e4080e7          	jalr	740(ra) # 80002ba4 <_ZN6ThreadD1Ev>
    800048c8:	00813083          	ld	ra,8(sp)
    800048cc:	00013403          	ld	s0,0(sp)
    800048d0:	01010113          	addi	sp,sp,16
    800048d4:	00008067          	ret

00000000800048d8 <_ZN7WorkerCD0Ev>:
    800048d8:	fe010113          	addi	sp,sp,-32
    800048dc:	00113c23          	sd	ra,24(sp)
    800048e0:	00813823          	sd	s0,16(sp)
    800048e4:	00913423          	sd	s1,8(sp)
    800048e8:	02010413          	addi	s0,sp,32
    800048ec:	00050493          	mv	s1,a0
    800048f0:	00006797          	auipc	a5,0x6
    800048f4:	b4078793          	addi	a5,a5,-1216 # 8000a430 <_ZTV7WorkerC+0x10>
    800048f8:	00f53023          	sd	a5,0(a0)
    800048fc:	ffffe097          	auipc	ra,0xffffe
    80004900:	2a8080e7          	jalr	680(ra) # 80002ba4 <_ZN6ThreadD1Ev>
    80004904:	00048513          	mv	a0,s1
    80004908:	ffffe097          	auipc	ra,0xffffe
    8000490c:	380080e7          	jalr	896(ra) # 80002c88 <_ZdlPv>
    80004910:	01813083          	ld	ra,24(sp)
    80004914:	01013403          	ld	s0,16(sp)
    80004918:	00813483          	ld	s1,8(sp)
    8000491c:	02010113          	addi	sp,sp,32
    80004920:	00008067          	ret

0000000080004924 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004924:	ff010113          	addi	sp,sp,-16
    80004928:	00113423          	sd	ra,8(sp)
    8000492c:	00813023          	sd	s0,0(sp)
    80004930:	01010413          	addi	s0,sp,16
    80004934:	00006797          	auipc	a5,0x6
    80004938:	b2478793          	addi	a5,a5,-1244 # 8000a458 <_ZTV7WorkerD+0x10>
    8000493c:	00f53023          	sd	a5,0(a0)
    80004940:	ffffe097          	auipc	ra,0xffffe
    80004944:	264080e7          	jalr	612(ra) # 80002ba4 <_ZN6ThreadD1Ev>
    80004948:	00813083          	ld	ra,8(sp)
    8000494c:	00013403          	ld	s0,0(sp)
    80004950:	01010113          	addi	sp,sp,16
    80004954:	00008067          	ret

0000000080004958 <_ZN7WorkerDD0Ev>:
    80004958:	fe010113          	addi	sp,sp,-32
    8000495c:	00113c23          	sd	ra,24(sp)
    80004960:	00813823          	sd	s0,16(sp)
    80004964:	00913423          	sd	s1,8(sp)
    80004968:	02010413          	addi	s0,sp,32
    8000496c:	00050493          	mv	s1,a0
    80004970:	00006797          	auipc	a5,0x6
    80004974:	ae878793          	addi	a5,a5,-1304 # 8000a458 <_ZTV7WorkerD+0x10>
    80004978:	00f53023          	sd	a5,0(a0)
    8000497c:	ffffe097          	auipc	ra,0xffffe
    80004980:	228080e7          	jalr	552(ra) # 80002ba4 <_ZN6ThreadD1Ev>
    80004984:	00048513          	mv	a0,s1
    80004988:	ffffe097          	auipc	ra,0xffffe
    8000498c:	300080e7          	jalr	768(ra) # 80002c88 <_ZdlPv>
    80004990:	01813083          	ld	ra,24(sp)
    80004994:	01013403          	ld	s0,16(sp)
    80004998:	00813483          	ld	s1,8(sp)
    8000499c:	02010113          	addi	sp,sp,32
    800049a0:	00008067          	ret

00000000800049a4 <_ZN7WorkerA3runEv>:
    void run() override {
    800049a4:	ff010113          	addi	sp,sp,-16
    800049a8:	00113423          	sd	ra,8(sp)
    800049ac:	00813023          	sd	s0,0(sp)
    800049b0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800049b4:	00000593          	li	a1,0
    800049b8:	fffff097          	auipc	ra,0xfffff
    800049bc:	774080e7          	jalr	1908(ra) # 8000412c <_ZN7WorkerA11workerBodyAEPv>
    }
    800049c0:	00813083          	ld	ra,8(sp)
    800049c4:	00013403          	ld	s0,0(sp)
    800049c8:	01010113          	addi	sp,sp,16
    800049cc:	00008067          	ret

00000000800049d0 <_ZN7WorkerB3runEv>:
    void run() override {
    800049d0:	ff010113          	addi	sp,sp,-16
    800049d4:	00113423          	sd	ra,8(sp)
    800049d8:	00813023          	sd	s0,0(sp)
    800049dc:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800049e0:	00000593          	li	a1,0
    800049e4:	00000097          	auipc	ra,0x0
    800049e8:	814080e7          	jalr	-2028(ra) # 800041f8 <_ZN7WorkerB11workerBodyBEPv>
    }
    800049ec:	00813083          	ld	ra,8(sp)
    800049f0:	00013403          	ld	s0,0(sp)
    800049f4:	01010113          	addi	sp,sp,16
    800049f8:	00008067          	ret

00000000800049fc <_ZN7WorkerC3runEv>:
    void run() override {
    800049fc:	ff010113          	addi	sp,sp,-16
    80004a00:	00113423          	sd	ra,8(sp)
    80004a04:	00813023          	sd	s0,0(sp)
    80004a08:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004a0c:	00000593          	li	a1,0
    80004a10:	00000097          	auipc	ra,0x0
    80004a14:	8bc080e7          	jalr	-1860(ra) # 800042cc <_ZN7WorkerC11workerBodyCEPv>
    }
    80004a18:	00813083          	ld	ra,8(sp)
    80004a1c:	00013403          	ld	s0,0(sp)
    80004a20:	01010113          	addi	sp,sp,16
    80004a24:	00008067          	ret

0000000080004a28 <_ZN7WorkerD3runEv>:

    void run() override {
    80004a28:	ff010113          	addi	sp,sp,-16
    80004a2c:	00113423          	sd	ra,8(sp)
    80004a30:	00813023          	sd	s0,0(sp)
    80004a34:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004a38:	00000593          	li	a1,0
    80004a3c:	00000097          	auipc	ra,0x0
    80004a40:	a10080e7          	jalr	-1520(ra) # 8000444c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004a44:	00813083          	ld	ra,8(sp)
    80004a48:	00013403          	ld	s0,0(sp)
    80004a4c:	01010113          	addi	sp,sp,16
    80004a50:	00008067          	ret

0000000080004a54 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80004a54:	fe010113          	addi	sp,sp,-32
    80004a58:	00113c23          	sd	ra,24(sp)
    80004a5c:	00813823          	sd	s0,16(sp)
    80004a60:	00913423          	sd	s1,8(sp)
    80004a64:	01213023          	sd	s2,0(sp)
    80004a68:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004a6c:	00000913          	li	s2,0
    80004a70:	0340006f          	j	80004aa4 <_Z11workerBodyAPv+0x50>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 500; j++) {
            //Riscv::printString("A j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
            thread_dispatch();
    80004a74:	ffffd097          	auipc	ra,0xffffd
    80004a78:	8b0080e7          	jalr	-1872(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 500; j++) {
    80004a7c:	00148493          	addi	s1,s1,1
    80004a80:	1f300793          	li	a5,499
    80004a84:	0097ee63          	bltu	a5,s1,80004aa0 <_Z11workerBodyAPv+0x4c>
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
    80004a88:	00000713          	li	a4,0
    80004a8c:	000017b7          	lui	a5,0x1
    80004a90:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    80004a94:	fee7e0e3          	bltu	a5,a4,80004a74 <_Z11workerBodyAPv+0x20>
    80004a98:	00170713          	addi	a4,a4,1
    80004a9c:	ff1ff06f          	j	80004a8c <_Z11workerBodyAPv+0x38>
    for (uint64 i = 0; i < 10; i++) {
    80004aa0:	00190913          	addi	s2,s2,1
    80004aa4:	00900793          	li	a5,9
    80004aa8:	0527e063          	bltu	a5,s2,80004ae8 <_Z11workerBodyAPv+0x94>
        printString("A: i="); printInt(i); printString("\n");
    80004aac:	00003517          	auipc	a0,0x3
    80004ab0:	78c50513          	addi	a0,a0,1932 # 80008238 <_ZZN5Riscv12printIntegerEmE6digits+0xb0>
    80004ab4:	00000097          	auipc	ra,0x0
    80004ab8:	5ac080e7          	jalr	1452(ra) # 80005060 <_Z11printStringPKc>
    80004abc:	00000613          	li	a2,0
    80004ac0:	00a00593          	li	a1,10
    80004ac4:	0009051b          	sext.w	a0,s2
    80004ac8:	00000097          	auipc	ra,0x0
    80004acc:	730080e7          	jalr	1840(ra) # 800051f8 <_Z8printIntiii>
    80004ad0:	00003517          	auipc	a0,0x3
    80004ad4:	6b050513          	addi	a0,a0,1712 # 80008180 <CONSOLE_STATUS+0x170>
    80004ad8:	00000097          	auipc	ra,0x0
    80004adc:	588080e7          	jalr	1416(ra) # 80005060 <_Z11printStringPKc>
        for (uint64 j = 0; j < 500; j++) {
    80004ae0:	00000493          	li	s1,0
    80004ae4:	f9dff06f          	j	80004a80 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004ae8:	00003517          	auipc	a0,0x3
    80004aec:	75850513          	addi	a0,a0,1880 # 80008240 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80004af0:	00000097          	auipc	ra,0x0
    80004af4:	570080e7          	jalr	1392(ra) # 80005060 <_Z11printStringPKc>
    finishedA = true;
    80004af8:	00100793          	li	a5,1
    80004afc:	00006717          	auipc	a4,0x6
    80004b00:	a8f70423          	sb	a5,-1400(a4) # 8000a584 <_ZL9finishedA>
}
    80004b04:	01813083          	ld	ra,24(sp)
    80004b08:	01013403          	ld	s0,16(sp)
    80004b0c:	00813483          	ld	s1,8(sp)
    80004b10:	00013903          	ld	s2,0(sp)
    80004b14:	02010113          	addi	sp,sp,32
    80004b18:	00008067          	ret

0000000080004b1c <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80004b1c:	fe010113          	addi	sp,sp,-32
    80004b20:	00113c23          	sd	ra,24(sp)
    80004b24:	00813823          	sd	s0,16(sp)
    80004b28:	00913423          	sd	s1,8(sp)
    80004b2c:	01213023          	sd	s2,0(sp)
    80004b30:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004b34:	00000913          	li	s2,0
    80004b38:	0340006f          	j	80004b6c <_Z11workerBodyBPv+0x50>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 500; j++) {
            //Riscv::printString("B j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
            thread_dispatch();
    80004b3c:	ffffc097          	auipc	ra,0xffffc
    80004b40:	7e8080e7          	jalr	2024(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 500; j++) {
    80004b44:	00148493          	addi	s1,s1,1
    80004b48:	1f300793          	li	a5,499
    80004b4c:	0097ee63          	bltu	a5,s1,80004b68 <_Z11workerBodyBPv+0x4c>
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
    80004b50:	00000713          	li	a4,0
    80004b54:	000017b7          	lui	a5,0x1
    80004b58:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    80004b5c:	fee7e0e3          	bltu	a5,a4,80004b3c <_Z11workerBodyBPv+0x20>
    80004b60:	00170713          	addi	a4,a4,1
    80004b64:	ff1ff06f          	j	80004b54 <_Z11workerBodyBPv+0x38>
    for (uint64 i = 0; i < 16; i++) {
    80004b68:	00190913          	addi	s2,s2,1
    80004b6c:	00f00793          	li	a5,15
    80004b70:	0527e063          	bltu	a5,s2,80004bb0 <_Z11workerBodyBPv+0x94>
        printString("B: i="); printInt(i); printString("\n");
    80004b74:	00003517          	auipc	a0,0x3
    80004b78:	6dc50513          	addi	a0,a0,1756 # 80008250 <_ZZN5Riscv12printIntegerEmE6digits+0xc8>
    80004b7c:	00000097          	auipc	ra,0x0
    80004b80:	4e4080e7          	jalr	1252(ra) # 80005060 <_Z11printStringPKc>
    80004b84:	00000613          	li	a2,0
    80004b88:	00a00593          	li	a1,10
    80004b8c:	0009051b          	sext.w	a0,s2
    80004b90:	00000097          	auipc	ra,0x0
    80004b94:	668080e7          	jalr	1640(ra) # 800051f8 <_Z8printIntiii>
    80004b98:	00003517          	auipc	a0,0x3
    80004b9c:	5e850513          	addi	a0,a0,1512 # 80008180 <CONSOLE_STATUS+0x170>
    80004ba0:	00000097          	auipc	ra,0x0
    80004ba4:	4c0080e7          	jalr	1216(ra) # 80005060 <_Z11printStringPKc>
        for (uint64 j = 0; j < 500; j++) {
    80004ba8:	00000493          	li	s1,0
    80004bac:	f9dff06f          	j	80004b48 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004bb0:	00003517          	auipc	a0,0x3
    80004bb4:	6a850513          	addi	a0,a0,1704 # 80008258 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    80004bb8:	00000097          	auipc	ra,0x0
    80004bbc:	4a8080e7          	jalr	1192(ra) # 80005060 <_Z11printStringPKc>
    finishedB = true;
    80004bc0:	00100793          	li	a5,1
    80004bc4:	00006717          	auipc	a4,0x6
    80004bc8:	9cf700a3          	sb	a5,-1599(a4) # 8000a585 <_ZL9finishedB>
    thread_dispatch();
    80004bcc:	ffffc097          	auipc	ra,0xffffc
    80004bd0:	758080e7          	jalr	1880(ra) # 80001324 <thread_dispatch>
}
    80004bd4:	01813083          	ld	ra,24(sp)
    80004bd8:	01013403          	ld	s0,16(sp)
    80004bdc:	00813483          	ld	s1,8(sp)
    80004be0:	00013903          	ld	s2,0(sp)
    80004be4:	02010113          	addi	sp,sp,32
    80004be8:	00008067          	ret

0000000080004bec <_ZL9fibonaccim>:
static uint64 fibonacci(uint64 n) {
    80004bec:	fe010113          	addi	sp,sp,-32
    80004bf0:	00113c23          	sd	ra,24(sp)
    80004bf4:	00813823          	sd	s0,16(sp)
    80004bf8:	00913423          	sd	s1,8(sp)
    80004bfc:	01213023          	sd	s2,0(sp)
    80004c00:	02010413          	addi	s0,sp,32
    80004c04:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004c08:	00100793          	li	a5,1
    80004c0c:	02a7f863          	bgeu	a5,a0,80004c3c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004c10:	00a00793          	li	a5,10
    80004c14:	02f577b3          	remu	a5,a0,a5
    80004c18:	02078e63          	beqz	a5,80004c54 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004c1c:	fff48513          	addi	a0,s1,-1
    80004c20:	00000097          	auipc	ra,0x0
    80004c24:	fcc080e7          	jalr	-52(ra) # 80004bec <_ZL9fibonaccim>
    80004c28:	00050913          	mv	s2,a0
    80004c2c:	ffe48513          	addi	a0,s1,-2
    80004c30:	00000097          	auipc	ra,0x0
    80004c34:	fbc080e7          	jalr	-68(ra) # 80004bec <_ZL9fibonaccim>
    80004c38:	00a90533          	add	a0,s2,a0
}
    80004c3c:	01813083          	ld	ra,24(sp)
    80004c40:	01013403          	ld	s0,16(sp)
    80004c44:	00813483          	ld	s1,8(sp)
    80004c48:	00013903          	ld	s2,0(sp)
    80004c4c:	02010113          	addi	sp,sp,32
    80004c50:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004c54:	ffffc097          	auipc	ra,0xffffc
    80004c58:	6d0080e7          	jalr	1744(ra) # 80001324 <thread_dispatch>
    80004c5c:	fc1ff06f          	j	80004c1c <_ZL9fibonaccim+0x30>

0000000080004c60 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80004c60:	fe010113          	addi	sp,sp,-32
    80004c64:	00113c23          	sd	ra,24(sp)
    80004c68:	00813823          	sd	s0,16(sp)
    80004c6c:	00913423          	sd	s1,8(sp)
    80004c70:	01213023          	sd	s2,0(sp)
    80004c74:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004c78:	00000493          	li	s1,0
    80004c7c:	0400006f          	j	80004cbc <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004c80:	00003517          	auipc	a0,0x3
    80004c84:	5e850513          	addi	a0,a0,1512 # 80008268 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80004c88:	00000097          	auipc	ra,0x0
    80004c8c:	3d8080e7          	jalr	984(ra) # 80005060 <_Z11printStringPKc>
    80004c90:	00000613          	li	a2,0
    80004c94:	00a00593          	li	a1,10
    80004c98:	00048513          	mv	a0,s1
    80004c9c:	00000097          	auipc	ra,0x0
    80004ca0:	55c080e7          	jalr	1372(ra) # 800051f8 <_Z8printIntiii>
    80004ca4:	00003517          	auipc	a0,0x3
    80004ca8:	4dc50513          	addi	a0,a0,1244 # 80008180 <CONSOLE_STATUS+0x170>
    80004cac:	00000097          	auipc	ra,0x0
    80004cb0:	3b4080e7          	jalr	948(ra) # 80005060 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004cb4:	0014849b          	addiw	s1,s1,1
    80004cb8:	0ff4f493          	andi	s1,s1,255
    80004cbc:	00200793          	li	a5,2
    80004cc0:	fc97f0e3          	bgeu	a5,s1,80004c80 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80004cc4:	00003517          	auipc	a0,0x3
    80004cc8:	5ac50513          	addi	a0,a0,1452 # 80008270 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    80004ccc:	00000097          	auipc	ra,0x0
    80004cd0:	394080e7          	jalr	916(ra) # 80005060 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004cd4:	00700313          	li	t1,7
    thread_dispatch();
    80004cd8:	ffffc097          	auipc	ra,0xffffc
    80004cdc:	64c080e7          	jalr	1612(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004ce0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004ce4:	00003517          	auipc	a0,0x3
    80004ce8:	59c50513          	addi	a0,a0,1436 # 80008280 <_ZZN5Riscv12printIntegerEmE6digits+0xf8>
    80004cec:	00000097          	auipc	ra,0x0
    80004cf0:	374080e7          	jalr	884(ra) # 80005060 <_Z11printStringPKc>
    80004cf4:	00000613          	li	a2,0
    80004cf8:	00a00593          	li	a1,10
    80004cfc:	0009051b          	sext.w	a0,s2
    80004d00:	00000097          	auipc	ra,0x0
    80004d04:	4f8080e7          	jalr	1272(ra) # 800051f8 <_Z8printIntiii>
    80004d08:	00003517          	auipc	a0,0x3
    80004d0c:	47850513          	addi	a0,a0,1144 # 80008180 <CONSOLE_STATUS+0x170>
    80004d10:	00000097          	auipc	ra,0x0
    80004d14:	350080e7          	jalr	848(ra) # 80005060 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004d18:	00c00513          	li	a0,12
    80004d1c:	00000097          	auipc	ra,0x0
    80004d20:	ed0080e7          	jalr	-304(ra) # 80004bec <_ZL9fibonaccim>
    80004d24:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004d28:	00003517          	auipc	a0,0x3
    80004d2c:	56050513          	addi	a0,a0,1376 # 80008288 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80004d30:	00000097          	auipc	ra,0x0
    80004d34:	330080e7          	jalr	816(ra) # 80005060 <_Z11printStringPKc>
    80004d38:	00000613          	li	a2,0
    80004d3c:	00a00593          	li	a1,10
    80004d40:	0009051b          	sext.w	a0,s2
    80004d44:	00000097          	auipc	ra,0x0
    80004d48:	4b4080e7          	jalr	1204(ra) # 800051f8 <_Z8printIntiii>
    80004d4c:	00003517          	auipc	a0,0x3
    80004d50:	43450513          	addi	a0,a0,1076 # 80008180 <CONSOLE_STATUS+0x170>
    80004d54:	00000097          	auipc	ra,0x0
    80004d58:	30c080e7          	jalr	780(ra) # 80005060 <_Z11printStringPKc>
    80004d5c:	0400006f          	j	80004d9c <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004d60:	00003517          	auipc	a0,0x3
    80004d64:	50850513          	addi	a0,a0,1288 # 80008268 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80004d68:	00000097          	auipc	ra,0x0
    80004d6c:	2f8080e7          	jalr	760(ra) # 80005060 <_Z11printStringPKc>
    80004d70:	00000613          	li	a2,0
    80004d74:	00a00593          	li	a1,10
    80004d78:	00048513          	mv	a0,s1
    80004d7c:	00000097          	auipc	ra,0x0
    80004d80:	47c080e7          	jalr	1148(ra) # 800051f8 <_Z8printIntiii>
    80004d84:	00003517          	auipc	a0,0x3
    80004d88:	3fc50513          	addi	a0,a0,1020 # 80008180 <CONSOLE_STATUS+0x170>
    80004d8c:	00000097          	auipc	ra,0x0
    80004d90:	2d4080e7          	jalr	724(ra) # 80005060 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004d94:	0014849b          	addiw	s1,s1,1
    80004d98:	0ff4f493          	andi	s1,s1,255
    80004d9c:	00500793          	li	a5,5
    80004da0:	fc97f0e3          	bgeu	a5,s1,80004d60 <_Z11workerBodyCPv+0x100>
    }

    printString("C finished!\n");
    80004da4:	00003517          	auipc	a0,0x3
    80004da8:	58c50513          	addi	a0,a0,1420 # 80008330 <_ZZN5Riscv12printIntegerEmE6digits+0x1a8>
    80004dac:	00000097          	auipc	ra,0x0
    80004db0:	2b4080e7          	jalr	692(ra) # 80005060 <_Z11printStringPKc>
    finishedC = true;
    80004db4:	00100793          	li	a5,1
    80004db8:	00005717          	auipc	a4,0x5
    80004dbc:	7cf70723          	sb	a5,1998(a4) # 8000a586 <_ZL9finishedC>
    thread_dispatch();
    80004dc0:	ffffc097          	auipc	ra,0xffffc
    80004dc4:	564080e7          	jalr	1380(ra) # 80001324 <thread_dispatch>
}
    80004dc8:	01813083          	ld	ra,24(sp)
    80004dcc:	01013403          	ld	s0,16(sp)
    80004dd0:	00813483          	ld	s1,8(sp)
    80004dd4:	00013903          	ld	s2,0(sp)
    80004dd8:	02010113          	addi	sp,sp,32
    80004ddc:	00008067          	ret

0000000080004de0 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80004de0:	fe010113          	addi	sp,sp,-32
    80004de4:	00113c23          	sd	ra,24(sp)
    80004de8:	00813823          	sd	s0,16(sp)
    80004dec:	00913423          	sd	s1,8(sp)
    80004df0:	01213023          	sd	s2,0(sp)
    80004df4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004df8:	00a00493          	li	s1,10
    80004dfc:	0400006f          	j	80004e3c <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004e00:	00003517          	auipc	a0,0x3
    80004e04:	49850513          	addi	a0,a0,1176 # 80008298 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80004e08:	00000097          	auipc	ra,0x0
    80004e0c:	258080e7          	jalr	600(ra) # 80005060 <_Z11printStringPKc>
    80004e10:	00000613          	li	a2,0
    80004e14:	00a00593          	li	a1,10
    80004e18:	00048513          	mv	a0,s1
    80004e1c:	00000097          	auipc	ra,0x0
    80004e20:	3dc080e7          	jalr	988(ra) # 800051f8 <_Z8printIntiii>
    80004e24:	00003517          	auipc	a0,0x3
    80004e28:	35c50513          	addi	a0,a0,860 # 80008180 <CONSOLE_STATUS+0x170>
    80004e2c:	00000097          	auipc	ra,0x0
    80004e30:	234080e7          	jalr	564(ra) # 80005060 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004e34:	0014849b          	addiw	s1,s1,1
    80004e38:	0ff4f493          	andi	s1,s1,255
    80004e3c:	00c00793          	li	a5,12
    80004e40:	fc97f0e3          	bgeu	a5,s1,80004e00 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004e44:	00003517          	auipc	a0,0x3
    80004e48:	45c50513          	addi	a0,a0,1116 # 800082a0 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    80004e4c:	00000097          	auipc	ra,0x0
    80004e50:	214080e7          	jalr	532(ra) # 80005060 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004e54:	00500313          	li	t1,5
    thread_dispatch();
    80004e58:	ffffc097          	auipc	ra,0xffffc
    80004e5c:	4cc080e7          	jalr	1228(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004e60:	01000513          	li	a0,16
    80004e64:	00000097          	auipc	ra,0x0
    80004e68:	d88080e7          	jalr	-632(ra) # 80004bec <_ZL9fibonaccim>
    80004e6c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004e70:	00003517          	auipc	a0,0x3
    80004e74:	44050513          	addi	a0,a0,1088 # 800082b0 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80004e78:	00000097          	auipc	ra,0x0
    80004e7c:	1e8080e7          	jalr	488(ra) # 80005060 <_Z11printStringPKc>
    80004e80:	00000613          	li	a2,0
    80004e84:	00a00593          	li	a1,10
    80004e88:	0009051b          	sext.w	a0,s2
    80004e8c:	00000097          	auipc	ra,0x0
    80004e90:	36c080e7          	jalr	876(ra) # 800051f8 <_Z8printIntiii>
    80004e94:	00003517          	auipc	a0,0x3
    80004e98:	2ec50513          	addi	a0,a0,748 # 80008180 <CONSOLE_STATUS+0x170>
    80004e9c:	00000097          	auipc	ra,0x0
    80004ea0:	1c4080e7          	jalr	452(ra) # 80005060 <_Z11printStringPKc>
    80004ea4:	0400006f          	j	80004ee4 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004ea8:	00003517          	auipc	a0,0x3
    80004eac:	3f050513          	addi	a0,a0,1008 # 80008298 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80004eb0:	00000097          	auipc	ra,0x0
    80004eb4:	1b0080e7          	jalr	432(ra) # 80005060 <_Z11printStringPKc>
    80004eb8:	00000613          	li	a2,0
    80004ebc:	00a00593          	li	a1,10
    80004ec0:	00048513          	mv	a0,s1
    80004ec4:	00000097          	auipc	ra,0x0
    80004ec8:	334080e7          	jalr	820(ra) # 800051f8 <_Z8printIntiii>
    80004ecc:	00003517          	auipc	a0,0x3
    80004ed0:	2b450513          	addi	a0,a0,692 # 80008180 <CONSOLE_STATUS+0x170>
    80004ed4:	00000097          	auipc	ra,0x0
    80004ed8:	18c080e7          	jalr	396(ra) # 80005060 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004edc:	0014849b          	addiw	s1,s1,1
    80004ee0:	0ff4f493          	andi	s1,s1,255
    80004ee4:	00f00793          	li	a5,15
    80004ee8:	fc97f0e3          	bgeu	a5,s1,80004ea8 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004eec:	00003517          	auipc	a0,0x3
    80004ef0:	3d450513          	addi	a0,a0,980 # 800082c0 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80004ef4:	00000097          	auipc	ra,0x0
    80004ef8:	16c080e7          	jalr	364(ra) # 80005060 <_Z11printStringPKc>
    finishedD = true;
    80004efc:	00100793          	li	a5,1
    80004f00:	00005717          	auipc	a4,0x5
    80004f04:	68f703a3          	sb	a5,1671(a4) # 8000a587 <_ZL9finishedD>
    thread_dispatch();
    80004f08:	ffffc097          	auipc	ra,0xffffc
    80004f0c:	41c080e7          	jalr	1052(ra) # 80001324 <thread_dispatch>
}
    80004f10:	01813083          	ld	ra,24(sp)
    80004f14:	01013403          	ld	s0,16(sp)
    80004f18:	00813483          	ld	s1,8(sp)
    80004f1c:	00013903          	ld	s2,0(sp)
    80004f20:	02010113          	addi	sp,sp,32
    80004f24:	00008067          	ret

0000000080004f28 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004f28:	fc010113          	addi	sp,sp,-64
    80004f2c:	02113c23          	sd	ra,56(sp)
    80004f30:	02813823          	sd	s0,48(sp)
    80004f34:	02913423          	sd	s1,40(sp)
    80004f38:	03213023          	sd	s2,32(sp)
    80004f3c:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004f40:	00000613          	li	a2,0
    80004f44:	00000597          	auipc	a1,0x0
    80004f48:	b1058593          	addi	a1,a1,-1264 # 80004a54 <_Z11workerBodyAPv>
    80004f4c:	fc040513          	addi	a0,s0,-64
    80004f50:	ffffc097          	auipc	ra,0xffffc
    80004f54:	354080e7          	jalr	852(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    80004f58:	00003517          	auipc	a0,0x3
    80004f5c:	37850513          	addi	a0,a0,888 # 800082d0 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004f60:	00000097          	auipc	ra,0x0
    80004f64:	100080e7          	jalr	256(ra) # 80005060 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004f68:	00000613          	li	a2,0
    80004f6c:	00000597          	auipc	a1,0x0
    80004f70:	bb058593          	addi	a1,a1,-1104 # 80004b1c <_Z11workerBodyBPv>
    80004f74:	fc840513          	addi	a0,s0,-56
    80004f78:	ffffc097          	auipc	ra,0xffffc
    80004f7c:	32c080e7          	jalr	812(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    80004f80:	00003517          	auipc	a0,0x3
    80004f84:	36850513          	addi	a0,a0,872 # 800082e8 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80004f88:	00000097          	auipc	ra,0x0
    80004f8c:	0d8080e7          	jalr	216(ra) # 80005060 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004f90:	00000613          	li	a2,0
    80004f94:	00000597          	auipc	a1,0x0
    80004f98:	ccc58593          	addi	a1,a1,-820 # 80004c60 <_Z11workerBodyCPv>
    80004f9c:	fd040513          	addi	a0,s0,-48
    80004fa0:	ffffc097          	auipc	ra,0xffffc
    80004fa4:	304080e7          	jalr	772(ra) # 800012a4 <thread_create>
    printString("ThreadC created\n");
    80004fa8:	00003517          	auipc	a0,0x3
    80004fac:	35850513          	addi	a0,a0,856 # 80008300 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80004fb0:	00000097          	auipc	ra,0x0
    80004fb4:	0b0080e7          	jalr	176(ra) # 80005060 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004fb8:	00000613          	li	a2,0
    80004fbc:	00000597          	auipc	a1,0x0
    80004fc0:	e2458593          	addi	a1,a1,-476 # 80004de0 <_Z11workerBodyDPv>
    80004fc4:	fd840513          	addi	a0,s0,-40
    80004fc8:	ffffc097          	auipc	ra,0xffffc
    80004fcc:	2dc080e7          	jalr	732(ra) # 800012a4 <thread_create>
    printString("ThreadD created\n");
    80004fd0:	00003517          	auipc	a0,0x3
    80004fd4:	34850513          	addi	a0,a0,840 # 80008318 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    80004fd8:	00000097          	auipc	ra,0x0
    80004fdc:	088080e7          	jalr	136(ra) # 80005060 <_Z11printStringPKc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004fe0:	00005797          	auipc	a5,0x5
    80004fe4:	5a47c783          	lbu	a5,1444(a5) # 8000a584 <_ZL9finishedA>
    80004fe8:	fe078ce3          	beqz	a5,80004fe0 <_Z18Threads_C_API_testv+0xb8>
    80004fec:	00005797          	auipc	a5,0x5
    80004ff0:	5997c783          	lbu	a5,1433(a5) # 8000a585 <_ZL9finishedB>
    80004ff4:	fe0786e3          	beqz	a5,80004fe0 <_Z18Threads_C_API_testv+0xb8>
    80004ff8:	00005797          	auipc	a5,0x5
    80004ffc:	58e7c783          	lbu	a5,1422(a5) # 8000a586 <_ZL9finishedC>
    80005000:	fe0780e3          	beqz	a5,80004fe0 <_Z18Threads_C_API_testv+0xb8>
    80005004:	00005797          	auipc	a5,0x5
    80005008:	5837c783          	lbu	a5,1411(a5) # 8000a587 <_ZL9finishedD>
    8000500c:	fc078ae3          	beqz	a5,80004fe0 <_Z18Threads_C_API_testv+0xb8>
        //printString("Main thread\n");
        //thread_dispatch();
    }

    for (auto &thread: threads) {
    80005010:	fc040493          	addi	s1,s0,-64
    80005014:	0080006f          	j	8000501c <_Z18Threads_C_API_testv+0xf4>
    80005018:	00848493          	addi	s1,s1,8
    8000501c:	fe040793          	addi	a5,s0,-32
    80005020:	02f48463          	beq	s1,a5,80005048 <_Z18Threads_C_API_testv+0x120>
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (PCB*)thread;
    80005024:	0004b903          	ld	s2,0(s1)
    80005028:	fe0908e3          	beqz	s2,80005018 <_Z18Threads_C_API_testv+0xf0>
    8000502c:	00090513          	mv	a0,s2
    80005030:	ffffd097          	auipc	ra,0xffffd
    80005034:	4ec080e7          	jalr	1260(ra) # 8000251c <_ZN3PCBD1Ev>
    80005038:	00090513          	mv	a0,s2
    8000503c:	ffffd097          	auipc	ra,0xffffd
    80005040:	4b8080e7          	jalr	1208(ra) # 800024f4 <_ZN3PCBdlEPv>
    80005044:	fd5ff06f          	j	80005018 <_Z18Threads_C_API_testv+0xf0>
    }
}
    80005048:	03813083          	ld	ra,56(sp)
    8000504c:	03013403          	ld	s0,48(sp)
    80005050:	02813483          	ld	s1,40(sp)
    80005054:	02013903          	ld	s2,32(sp)
    80005058:	04010113          	addi	sp,sp,64
    8000505c:	00008067          	ret

0000000080005060 <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    80005060:	fe010113          	addi	sp,sp,-32
    80005064:	00113c23          	sd	ra,24(sp)
    80005068:	00813823          	sd	s0,16(sp)
    8000506c:	00913423          	sd	s1,8(sp)
    80005070:	02010413          	addi	s0,sp,32
    80005074:	00050493          	mv	s1,a0
    LOCK();
    80005078:	00100613          	li	a2,1
    8000507c:	00000593          	li	a1,0
    80005080:	00005517          	auipc	a0,0x5
    80005084:	50850513          	addi	a0,a0,1288 # 8000a588 <lockPrint>
    80005088:	ffffc097          	auipc	ra,0xffffc
    8000508c:	180080e7          	jalr	384(ra) # 80001208 <copy_and_swap>
    80005090:	fe0514e3          	bnez	a0,80005078 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80005094:	0004c503          	lbu	a0,0(s1)
    80005098:	00050a63          	beqz	a0,800050ac <_Z11printStringPKc+0x4c>
inline char getc() {
    return __getc();
}

inline void putc(char c) {
    __putc(c);
    8000509c:	00003097          	auipc	ra,0x3
    800050a0:	a00080e7          	jalr	-1536(ra) # 80007a9c <__putc>
        putc(*string);
        string++;
    800050a4:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    800050a8:	fedff06f          	j	80005094 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800050ac:	00000613          	li	a2,0
    800050b0:	00100593          	li	a1,1
    800050b4:	00005517          	auipc	a0,0x5
    800050b8:	4d450513          	addi	a0,a0,1236 # 8000a588 <lockPrint>
    800050bc:	ffffc097          	auipc	ra,0xffffc
    800050c0:	14c080e7          	jalr	332(ra) # 80001208 <copy_and_swap>
    800050c4:	fe0514e3          	bnez	a0,800050ac <_Z11printStringPKc+0x4c>
}
    800050c8:	01813083          	ld	ra,24(sp)
    800050cc:	01013403          	ld	s0,16(sp)
    800050d0:	00813483          	ld	s1,8(sp)
    800050d4:	02010113          	addi	sp,sp,32
    800050d8:	00008067          	ret

00000000800050dc <_Z9getStringPci>:

char *getString(char *buf, int max) {
    800050dc:	fd010113          	addi	sp,sp,-48
    800050e0:	02113423          	sd	ra,40(sp)
    800050e4:	02813023          	sd	s0,32(sp)
    800050e8:	00913c23          	sd	s1,24(sp)
    800050ec:	01213823          	sd	s2,16(sp)
    800050f0:	01313423          	sd	s3,8(sp)
    800050f4:	01413023          	sd	s4,0(sp)
    800050f8:	03010413          	addi	s0,sp,48
    800050fc:	00050993          	mv	s3,a0
    80005100:	00058a13          	mv	s4,a1
    LOCK();
    80005104:	00100613          	li	a2,1
    80005108:	00000593          	li	a1,0
    8000510c:	00005517          	auipc	a0,0x5
    80005110:	47c50513          	addi	a0,a0,1148 # 8000a588 <lockPrint>
    80005114:	ffffc097          	auipc	ra,0xffffc
    80005118:	0f4080e7          	jalr	244(ra) # 80001208 <copy_and_swap>
    8000511c:	fe0514e3          	bnez	a0,80005104 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80005120:	00000913          	li	s2,0
    80005124:	00090493          	mv	s1,s2
    80005128:	0019091b          	addiw	s2,s2,1
    8000512c:	03495a63          	bge	s2,s4,80005160 <_Z9getStringPci+0x84>
    return __getc();
    80005130:	00003097          	auipc	ra,0x3
    80005134:	9a8080e7          	jalr	-1624(ra) # 80007ad8 <__getc>
        cc = getc();
        if (cc < 1)
    80005138:	02050463          	beqz	a0,80005160 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    8000513c:	009984b3          	add	s1,s3,s1
    80005140:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80005144:	00a00793          	li	a5,10
    80005148:	00f50a63          	beq	a0,a5,8000515c <_Z9getStringPci+0x80>
    8000514c:	00d00793          	li	a5,13
    80005150:	fcf51ae3          	bne	a0,a5,80005124 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005154:	00090493          	mv	s1,s2
    80005158:	0080006f          	j	80005160 <_Z9getStringPci+0x84>
    8000515c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005160:	009984b3          	add	s1,s3,s1
    80005164:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005168:	00000613          	li	a2,0
    8000516c:	00100593          	li	a1,1
    80005170:	00005517          	auipc	a0,0x5
    80005174:	41850513          	addi	a0,a0,1048 # 8000a588 <lockPrint>
    80005178:	ffffc097          	auipc	ra,0xffffc
    8000517c:	090080e7          	jalr	144(ra) # 80001208 <copy_and_swap>
    80005180:	fe0514e3          	bnez	a0,80005168 <_Z9getStringPci+0x8c>
    return buf;
}
    80005184:	00098513          	mv	a0,s3
    80005188:	02813083          	ld	ra,40(sp)
    8000518c:	02013403          	ld	s0,32(sp)
    80005190:	01813483          	ld	s1,24(sp)
    80005194:	01013903          	ld	s2,16(sp)
    80005198:	00813983          	ld	s3,8(sp)
    8000519c:	00013a03          	ld	s4,0(sp)
    800051a0:	03010113          	addi	sp,sp,48
    800051a4:	00008067          	ret

00000000800051a8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800051a8:	ff010113          	addi	sp,sp,-16
    800051ac:	00813423          	sd	s0,8(sp)
    800051b0:	01010413          	addi	s0,sp,16
    800051b4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800051b8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800051bc:	0006c603          	lbu	a2,0(a3)
    800051c0:	fd06071b          	addiw	a4,a2,-48
    800051c4:	0ff77713          	andi	a4,a4,255
    800051c8:	00900793          	li	a5,9
    800051cc:	02e7e063          	bltu	a5,a4,800051ec <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800051d0:	0025179b          	slliw	a5,a0,0x2
    800051d4:	00a787bb          	addw	a5,a5,a0
    800051d8:	0017979b          	slliw	a5,a5,0x1
    800051dc:	00168693          	addi	a3,a3,1
    800051e0:	00c787bb          	addw	a5,a5,a2
    800051e4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800051e8:	fd5ff06f          	j	800051bc <_Z11stringToIntPKc+0x14>
    return n;
}
    800051ec:	00813403          	ld	s0,8(sp)
    800051f0:	01010113          	addi	sp,sp,16
    800051f4:	00008067          	ret

00000000800051f8 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    800051f8:	fc010113          	addi	sp,sp,-64
    800051fc:	02113c23          	sd	ra,56(sp)
    80005200:	02813823          	sd	s0,48(sp)
    80005204:	02913423          	sd	s1,40(sp)
    80005208:	03213023          	sd	s2,32(sp)
    8000520c:	01313c23          	sd	s3,24(sp)
    80005210:	04010413          	addi	s0,sp,64
    80005214:	00050493          	mv	s1,a0
    80005218:	00058913          	mv	s2,a1
    8000521c:	00060993          	mv	s3,a2
    LOCK();
    80005220:	00100613          	li	a2,1
    80005224:	00000593          	li	a1,0
    80005228:	00005517          	auipc	a0,0x5
    8000522c:	36050513          	addi	a0,a0,864 # 8000a588 <lockPrint>
    80005230:	ffffc097          	auipc	ra,0xffffc
    80005234:	fd8080e7          	jalr	-40(ra) # 80001208 <copy_and_swap>
    80005238:	fe0514e3          	bnez	a0,80005220 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    8000523c:	00098463          	beqz	s3,80005244 <_Z8printIntiii+0x4c>
    80005240:	0804c463          	bltz	s1,800052c8 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005244:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005248:	00000593          	li	a1,0
    }

    i = 0;
    8000524c:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005250:	0009079b          	sext.w	a5,s2
    80005254:	0325773b          	remuw	a4,a0,s2
    80005258:	00048613          	mv	a2,s1
    8000525c:	0014849b          	addiw	s1,s1,1
    80005260:	02071693          	slli	a3,a4,0x20
    80005264:	0206d693          	srli	a3,a3,0x20
    80005268:	00003717          	auipc	a4,0x3
    8000526c:	0d870713          	addi	a4,a4,216 # 80008340 <_ZL6digits>
    80005270:	00d70733          	add	a4,a4,a3
    80005274:	00074683          	lbu	a3,0(a4)
    80005278:	fd040713          	addi	a4,s0,-48
    8000527c:	00c70733          	add	a4,a4,a2
    80005280:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005284:	0005071b          	sext.w	a4,a0
    80005288:	0325553b          	divuw	a0,a0,s2
    8000528c:	fcf772e3          	bgeu	a4,a5,80005250 <_Z8printIntiii+0x58>
    if (neg)
    80005290:	00058c63          	beqz	a1,800052a8 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005294:	fd040793          	addi	a5,s0,-48
    80005298:	009784b3          	add	s1,a5,s1
    8000529c:	02d00793          	li	a5,45
    800052a0:	fef48823          	sb	a5,-16(s1)
    800052a4:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    800052a8:	fff4849b          	addiw	s1,s1,-1
    800052ac:	0204c463          	bltz	s1,800052d4 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800052b0:	fd040793          	addi	a5,s0,-48
    800052b4:	009787b3          	add	a5,a5,s1
    __putc(c);
    800052b8:	ff07c503          	lbu	a0,-16(a5)
    800052bc:	00002097          	auipc	ra,0x2
    800052c0:	7e0080e7          	jalr	2016(ra) # 80007a9c <__putc>
}
    800052c4:	fe5ff06f          	j	800052a8 <_Z8printIntiii+0xb0>
        x = -xx;
    800052c8:	4090053b          	negw	a0,s1
        neg = 1;
    800052cc:	00100593          	li	a1,1
        x = -xx;
    800052d0:	f7dff06f          	j	8000524c <_Z8printIntiii+0x54>

    UNLOCK();
    800052d4:	00000613          	li	a2,0
    800052d8:	00100593          	li	a1,1
    800052dc:	00005517          	auipc	a0,0x5
    800052e0:	2ac50513          	addi	a0,a0,684 # 8000a588 <lockPrint>
    800052e4:	ffffc097          	auipc	ra,0xffffc
    800052e8:	f24080e7          	jalr	-220(ra) # 80001208 <copy_and_swap>
    800052ec:	fe0514e3          	bnez	a0,800052d4 <_Z8printIntiii+0xdc>
}
    800052f0:	03813083          	ld	ra,56(sp)
    800052f4:	03013403          	ld	s0,48(sp)
    800052f8:	02813483          	ld	s1,40(sp)
    800052fc:	02013903          	ld	s2,32(sp)
    80005300:	01813983          	ld	s3,24(sp)
    80005304:	04010113          	addi	sp,sp,64
    80005308:	00008067          	ret

000000008000530c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    8000530c:	fe010113          	addi	sp,sp,-32
    80005310:	00113c23          	sd	ra,24(sp)
    80005314:	00813823          	sd	s0,16(sp)
    80005318:	00913423          	sd	s1,8(sp)
    8000531c:	01213023          	sd	s2,0(sp)
    80005320:	02010413          	addi	s0,sp,32
    80005324:	00050493          	mv	s1,a0
    80005328:	00b52023          	sw	a1,0(a0)
    8000532c:	00052823          	sw	zero,16(a0)
    80005330:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005334:	00259513          	slli	a0,a1,0x2
    80005338:	ffffc097          	auipc	ra,0xffffc
    8000533c:	f10080e7          	jalr	-240(ra) # 80001248 <mem_alloc>
    80005340:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005344:	01000513          	li	a0,16
    80005348:	ffffe097          	auipc	ra,0xffffe
    8000534c:	918080e7          	jalr	-1768(ra) # 80002c60 <_Znwm>
    80005350:	00050913          	mv	s2,a0
    80005354:	00000593          	li	a1,0
    80005358:	ffffe097          	auipc	ra,0xffffe
    8000535c:	b44080e7          	jalr	-1212(ra) # 80002e9c <_ZN9SemaphoreC1Ej>
    80005360:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    80005364:	01000513          	li	a0,16
    80005368:	ffffe097          	auipc	ra,0xffffe
    8000536c:	8f8080e7          	jalr	-1800(ra) # 80002c60 <_Znwm>
    80005370:	00050913          	mv	s2,a0
    80005374:	0004a583          	lw	a1,0(s1)
    80005378:	ffffe097          	auipc	ra,0xffffe
    8000537c:	b24080e7          	jalr	-1244(ra) # 80002e9c <_ZN9SemaphoreC1Ej>
    80005380:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80005384:	01000513          	li	a0,16
    80005388:	ffffe097          	auipc	ra,0xffffe
    8000538c:	8d8080e7          	jalr	-1832(ra) # 80002c60 <_Znwm>
    80005390:	00050913          	mv	s2,a0
    80005394:	00100593          	li	a1,1
    80005398:	ffffe097          	auipc	ra,0xffffe
    8000539c:	b04080e7          	jalr	-1276(ra) # 80002e9c <_ZN9SemaphoreC1Ej>
    800053a0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800053a4:	01000513          	li	a0,16
    800053a8:	ffffe097          	auipc	ra,0xffffe
    800053ac:	8b8080e7          	jalr	-1864(ra) # 80002c60 <_Znwm>
    800053b0:	00050913          	mv	s2,a0
    800053b4:	00100593          	li	a1,1
    800053b8:	ffffe097          	auipc	ra,0xffffe
    800053bc:	ae4080e7          	jalr	-1308(ra) # 80002e9c <_ZN9SemaphoreC1Ej>
    800053c0:	0324b823          	sd	s2,48(s1)
}
    800053c4:	01813083          	ld	ra,24(sp)
    800053c8:	01013403          	ld	s0,16(sp)
    800053cc:	00813483          	ld	s1,8(sp)
    800053d0:	00013903          	ld	s2,0(sp)
    800053d4:	02010113          	addi	sp,sp,32
    800053d8:	00008067          	ret
    800053dc:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800053e0:	00090513          	mv	a0,s2
    800053e4:	ffffe097          	auipc	ra,0xffffe
    800053e8:	8a4080e7          	jalr	-1884(ra) # 80002c88 <_ZdlPv>
    800053ec:	00048513          	mv	a0,s1
    800053f0:	00006097          	auipc	ra,0x6
    800053f4:	278080e7          	jalr	632(ra) # 8000b668 <_Unwind_Resume>
    800053f8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    800053fc:	00090513          	mv	a0,s2
    80005400:	ffffe097          	auipc	ra,0xffffe
    80005404:	888080e7          	jalr	-1912(ra) # 80002c88 <_ZdlPv>
    80005408:	00048513          	mv	a0,s1
    8000540c:	00006097          	auipc	ra,0x6
    80005410:	25c080e7          	jalr	604(ra) # 8000b668 <_Unwind_Resume>
    80005414:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005418:	00090513          	mv	a0,s2
    8000541c:	ffffe097          	auipc	ra,0xffffe
    80005420:	86c080e7          	jalr	-1940(ra) # 80002c88 <_ZdlPv>
    80005424:	00048513          	mv	a0,s1
    80005428:	00006097          	auipc	ra,0x6
    8000542c:	240080e7          	jalr	576(ra) # 8000b668 <_Unwind_Resume>
    80005430:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005434:	00090513          	mv	a0,s2
    80005438:	ffffe097          	auipc	ra,0xffffe
    8000543c:	850080e7          	jalr	-1968(ra) # 80002c88 <_ZdlPv>
    80005440:	00048513          	mv	a0,s1
    80005444:	00006097          	auipc	ra,0x6
    80005448:	224080e7          	jalr	548(ra) # 8000b668 <_Unwind_Resume>

000000008000544c <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    8000544c:	fe010113          	addi	sp,sp,-32
    80005450:	00113c23          	sd	ra,24(sp)
    80005454:	00813823          	sd	s0,16(sp)
    80005458:	00913423          	sd	s1,8(sp)
    8000545c:	02010413          	addi	s0,sp,32
    80005460:	00050493          	mv	s1,a0
    __putc(c);
    80005464:	00a00513          	li	a0,10
    80005468:	00002097          	auipc	ra,0x2
    8000546c:	634080e7          	jalr	1588(ra) # 80007a9c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005470:	0104a783          	lw	a5,16(s1)
    80005474:	0144a703          	lw	a4,20(s1)
    80005478:	00e78c63          	beq	a5,a4,80005490 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    8000547c:	0017879b          	addiw	a5,a5,1
    80005480:	0004a703          	lw	a4,0(s1)
    80005484:	02e7e7bb          	remw	a5,a5,a4
    80005488:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    8000548c:	fe5ff06f          	j	80005470 <_ZN9BufferCPPD1Ev+0x24>
    80005490:	02100513          	li	a0,33
    80005494:	00002097          	auipc	ra,0x2
    80005498:	608080e7          	jalr	1544(ra) # 80007a9c <__putc>
    8000549c:	00a00513          	li	a0,10
    800054a0:	00002097          	auipc	ra,0x2
    800054a4:	5fc080e7          	jalr	1532(ra) # 80007a9c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    800054a8:	0084b503          	ld	a0,8(s1)
    800054ac:	ffffc097          	auipc	ra,0xffffc
    800054b0:	dcc080e7          	jalr	-564(ra) # 80001278 <mem_free>
    delete itemAvailable;
    800054b4:	0204b503          	ld	a0,32(s1)
    800054b8:	00050863          	beqz	a0,800054c8 <_ZN9BufferCPPD1Ev+0x7c>
    800054bc:	00053783          	ld	a5,0(a0)
    800054c0:	0087b783          	ld	a5,8(a5)
    800054c4:	000780e7          	jalr	a5
    delete spaceAvailable;
    800054c8:	0184b503          	ld	a0,24(s1)
    800054cc:	00050863          	beqz	a0,800054dc <_ZN9BufferCPPD1Ev+0x90>
    800054d0:	00053783          	ld	a5,0(a0)
    800054d4:	0087b783          	ld	a5,8(a5)
    800054d8:	000780e7          	jalr	a5
    delete mutexTail;
    800054dc:	0304b503          	ld	a0,48(s1)
    800054e0:	00050863          	beqz	a0,800054f0 <_ZN9BufferCPPD1Ev+0xa4>
    800054e4:	00053783          	ld	a5,0(a0)
    800054e8:	0087b783          	ld	a5,8(a5)
    800054ec:	000780e7          	jalr	a5
    delete mutexHead;
    800054f0:	0284b503          	ld	a0,40(s1)
    800054f4:	00050863          	beqz	a0,80005504 <_ZN9BufferCPPD1Ev+0xb8>
    800054f8:	00053783          	ld	a5,0(a0)
    800054fc:	0087b783          	ld	a5,8(a5)
    80005500:	000780e7          	jalr	a5

}
    80005504:	01813083          	ld	ra,24(sp)
    80005508:	01013403          	ld	s0,16(sp)
    8000550c:	00813483          	ld	s1,8(sp)
    80005510:	02010113          	addi	sp,sp,32
    80005514:	00008067          	ret

0000000080005518 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80005518:	fe010113          	addi	sp,sp,-32
    8000551c:	00113c23          	sd	ra,24(sp)
    80005520:	00813823          	sd	s0,16(sp)
    80005524:	00913423          	sd	s1,8(sp)
    80005528:	01213023          	sd	s2,0(sp)
    8000552c:	02010413          	addi	s0,sp,32
    80005530:	00050493          	mv	s1,a0
    80005534:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005538:	01853503          	ld	a0,24(a0)
    8000553c:	ffffe097          	auipc	ra,0xffffe
    80005540:	928080e7          	jalr	-1752(ra) # 80002e64 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005544:	0304b503          	ld	a0,48(s1)
    80005548:	ffffe097          	auipc	ra,0xffffe
    8000554c:	91c080e7          	jalr	-1764(ra) # 80002e64 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005550:	0084b783          	ld	a5,8(s1)
    80005554:	0144a703          	lw	a4,20(s1)
    80005558:	00271713          	slli	a4,a4,0x2
    8000555c:	00e787b3          	add	a5,a5,a4
    80005560:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005564:	0144a783          	lw	a5,20(s1)
    80005568:	0017879b          	addiw	a5,a5,1
    8000556c:	0004a703          	lw	a4,0(s1)
    80005570:	02e7e7bb          	remw	a5,a5,a4
    80005574:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005578:	0304b503          	ld	a0,48(s1)
    8000557c:	ffffe097          	auipc	ra,0xffffe
    80005580:	96c080e7          	jalr	-1684(ra) # 80002ee8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005584:	0204b503          	ld	a0,32(s1)
    80005588:	ffffe097          	auipc	ra,0xffffe
    8000558c:	960080e7          	jalr	-1696(ra) # 80002ee8 <_ZN9Semaphore6signalEv>

}
    80005590:	01813083          	ld	ra,24(sp)
    80005594:	01013403          	ld	s0,16(sp)
    80005598:	00813483          	ld	s1,8(sp)
    8000559c:	00013903          	ld	s2,0(sp)
    800055a0:	02010113          	addi	sp,sp,32
    800055a4:	00008067          	ret

00000000800055a8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800055a8:	fe010113          	addi	sp,sp,-32
    800055ac:	00113c23          	sd	ra,24(sp)
    800055b0:	00813823          	sd	s0,16(sp)
    800055b4:	00913423          	sd	s1,8(sp)
    800055b8:	01213023          	sd	s2,0(sp)
    800055bc:	02010413          	addi	s0,sp,32
    800055c0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800055c4:	02053503          	ld	a0,32(a0)
    800055c8:	ffffe097          	auipc	ra,0xffffe
    800055cc:	89c080e7          	jalr	-1892(ra) # 80002e64 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800055d0:	0284b503          	ld	a0,40(s1)
    800055d4:	ffffe097          	auipc	ra,0xffffe
    800055d8:	890080e7          	jalr	-1904(ra) # 80002e64 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800055dc:	0084b703          	ld	a4,8(s1)
    800055e0:	0104a783          	lw	a5,16(s1)
    800055e4:	00279693          	slli	a3,a5,0x2
    800055e8:	00d70733          	add	a4,a4,a3
    800055ec:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800055f0:	0017879b          	addiw	a5,a5,1
    800055f4:	0004a703          	lw	a4,0(s1)
    800055f8:	02e7e7bb          	remw	a5,a5,a4
    800055fc:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005600:	0284b503          	ld	a0,40(s1)
    80005604:	ffffe097          	auipc	ra,0xffffe
    80005608:	8e4080e7          	jalr	-1820(ra) # 80002ee8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000560c:	0184b503          	ld	a0,24(s1)
    80005610:	ffffe097          	auipc	ra,0xffffe
    80005614:	8d8080e7          	jalr	-1832(ra) # 80002ee8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005618:	00090513          	mv	a0,s2
    8000561c:	01813083          	ld	ra,24(sp)
    80005620:	01013403          	ld	s0,16(sp)
    80005624:	00813483          	ld	s1,8(sp)
    80005628:	00013903          	ld	s2,0(sp)
    8000562c:	02010113          	addi	sp,sp,32
    80005630:	00008067          	ret

0000000080005634 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80005634:	ff010113          	addi	sp,sp,-16
    80005638:	00113423          	sd	ra,8(sp)
    8000563c:	00813023          	sd	s0,0(sp)
    80005640:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80005644:	00000097          	auipc	ra,0x0
    80005648:	8e4080e7          	jalr	-1820(ra) # 80004f28 <_Z18Threads_C_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    8000564c:	00813083          	ld	ra,8(sp)
    80005650:	00013403          	ld	s0,0(sp)
    80005654:	01010113          	addi	sp,sp,16
    80005658:	00008067          	ret

000000008000565c <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    8000565c:	fe010113          	addi	sp,sp,-32
    80005660:	00113c23          	sd	ra,24(sp)
    80005664:	00813823          	sd	s0,16(sp)
    80005668:	00913423          	sd	s1,8(sp)
    8000566c:	01213023          	sd	s2,0(sp)
    80005670:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005674:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005678:	00600493          	li	s1,6
    while (--i > 0) {
    8000567c:	fff4849b          	addiw	s1,s1,-1
    80005680:	04905463          	blez	s1,800056c8 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80005684:	00003517          	auipc	a0,0x3
    80005688:	cd450513          	addi	a0,a0,-812 # 80008358 <_ZL6digits+0x18>
    8000568c:	00000097          	auipc	ra,0x0
    80005690:	9d4080e7          	jalr	-1580(ra) # 80005060 <_Z11printStringPKc>
        printInt(sleep_time);
    80005694:	00000613          	li	a2,0
    80005698:	00a00593          	li	a1,10
    8000569c:	0009051b          	sext.w	a0,s2
    800056a0:	00000097          	auipc	ra,0x0
    800056a4:	b58080e7          	jalr	-1192(ra) # 800051f8 <_Z8printIntiii>
        printString(" !\n");
    800056a8:	00003517          	auipc	a0,0x3
    800056ac:	cb850513          	addi	a0,a0,-840 # 80008360 <_ZL6digits+0x20>
    800056b0:	00000097          	auipc	ra,0x0
    800056b4:	9b0080e7          	jalr	-1616(ra) # 80005060 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800056b8:	00090513          	mv	a0,s2
    800056bc:	ffffc097          	auipc	ra,0xffffc
    800056c0:	d6c080e7          	jalr	-660(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    800056c4:	fb9ff06f          	j	8000567c <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800056c8:	00a00793          	li	a5,10
    800056cc:	02f95933          	divu	s2,s2,a5
    800056d0:	fff90913          	addi	s2,s2,-1
    800056d4:	00005797          	auipc	a5,0x5
    800056d8:	ebc78793          	addi	a5,a5,-324 # 8000a590 <finished>
    800056dc:	01278933          	add	s2,a5,s2
    800056e0:	00100793          	li	a5,1
    800056e4:	00f90023          	sb	a5,0(s2)
}
    800056e8:	01813083          	ld	ra,24(sp)
    800056ec:	01013403          	ld	s0,16(sp)
    800056f0:	00813483          	ld	s1,8(sp)
    800056f4:	00013903          	ld	s2,0(sp)
    800056f8:	02010113          	addi	sp,sp,32
    800056fc:	00008067          	ret

0000000080005700 <_Z12testSleepingv>:

void testSleeping()
{
    80005700:	fc010113          	addi	sp,sp,-64
    80005704:	02113c23          	sd	ra,56(sp)
    80005708:	02813823          	sd	s0,48(sp)
    8000570c:	02913423          	sd	s1,40(sp)
    80005710:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005714:	00a00793          	li	a5,10
    80005718:	fcf43823          	sd	a5,-48(s0)
    8000571c:	01400793          	li	a5,20
    80005720:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005724:	00000493          	li	s1,0
    80005728:	02c0006f          	j	80005754 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000572c:	00349793          	slli	a5,s1,0x3
    80005730:	fd040613          	addi	a2,s0,-48
    80005734:	00f60633          	add	a2,a2,a5
    80005738:	00000597          	auipc	a1,0x0
    8000573c:	f2458593          	addi	a1,a1,-220 # 8000565c <_Z9sleepyRunPv>
    80005740:	fc040513          	addi	a0,s0,-64
    80005744:	00f50533          	add	a0,a0,a5
    80005748:	ffffc097          	auipc	ra,0xffffc
    8000574c:	b5c080e7          	jalr	-1188(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005750:	0014849b          	addiw	s1,s1,1
    80005754:	00100793          	li	a5,1
    80005758:	fc97dae3          	bge	a5,s1,8000572c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000575c:	00005797          	auipc	a5,0x5
    80005760:	e347c783          	lbu	a5,-460(a5) # 8000a590 <finished>
    80005764:	fe078ce3          	beqz	a5,8000575c <_Z12testSleepingv+0x5c>
    80005768:	00005797          	auipc	a5,0x5
    8000576c:	e297c783          	lbu	a5,-471(a5) # 8000a591 <finished+0x1>
    80005770:	fe0786e3          	beqz	a5,8000575c <_Z12testSleepingv+0x5c>
}
    80005774:	03813083          	ld	ra,56(sp)
    80005778:	03013403          	ld	s0,48(sp)
    8000577c:	02813483          	ld	s1,40(sp)
    80005780:	04010113          	addi	sp,sp,64
    80005784:	00008067          	ret

0000000080005788 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    80005788:	fe010113          	addi	sp,sp,-32
    8000578c:	00113c23          	sd	ra,24(sp)
    80005790:	00813823          	sd	s0,16(sp)
    80005794:	00913423          	sd	s1,8(sp)
    80005798:	02010413          	addi	s0,sp,32
    8000579c:	00050493          	mv	s1,a0
    800057a0:	00b52023          	sw	a1,0(a0)
    800057a4:	00052823          	sw	zero,16(a0)
    800057a8:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800057ac:	00259513          	slli	a0,a1,0x2
    800057b0:	ffffc097          	auipc	ra,0xffffc
    800057b4:	a98080e7          	jalr	-1384(ra) # 80001248 <mem_alloc>
    800057b8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800057bc:	00000593          	li	a1,0
    800057c0:	02048513          	addi	a0,s1,32
    800057c4:	ffffc097          	auipc	ra,0xffffc
    800057c8:	ba8080e7          	jalr	-1112(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    800057cc:	0004a583          	lw	a1,0(s1)
    800057d0:	01848513          	addi	a0,s1,24
    800057d4:	ffffc097          	auipc	ra,0xffffc
    800057d8:	b98080e7          	jalr	-1128(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    800057dc:	00100593          	li	a1,1
    800057e0:	02848513          	addi	a0,s1,40
    800057e4:	ffffc097          	auipc	ra,0xffffc
    800057e8:	b88080e7          	jalr	-1144(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    800057ec:	00100593          	li	a1,1
    800057f0:	03048513          	addi	a0,s1,48
    800057f4:	ffffc097          	auipc	ra,0xffffc
    800057f8:	b78080e7          	jalr	-1160(ra) # 8000136c <sem_open>
}
    800057fc:	01813083          	ld	ra,24(sp)
    80005800:	01013403          	ld	s0,16(sp)
    80005804:	00813483          	ld	s1,8(sp)
    80005808:	02010113          	addi	sp,sp,32
    8000580c:	00008067          	ret

0000000080005810 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    80005810:	fe010113          	addi	sp,sp,-32
    80005814:	00113c23          	sd	ra,24(sp)
    80005818:	00813823          	sd	s0,16(sp)
    8000581c:	00913423          	sd	s1,8(sp)
    80005820:	02010413          	addi	s0,sp,32
    80005824:	00050493          	mv	s1,a0
    80005828:	00a00513          	li	a0,10
    8000582c:	00002097          	auipc	ra,0x2
    80005830:	270080e7          	jalr	624(ra) # 80007a9c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005834:	0104a783          	lw	a5,16(s1)
    80005838:	0144a703          	lw	a4,20(s1)
    8000583c:	00e78c63          	beq	a5,a4,80005854 <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80005840:	0017879b          	addiw	a5,a5,1
    80005844:	0004a703          	lw	a4,0(s1)
    80005848:	02e7e7bb          	remw	a5,a5,a4
    8000584c:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005850:	fe5ff06f          	j	80005834 <_ZN6BufferD1Ev+0x24>
    80005854:	02100513          	li	a0,33
    80005858:	00002097          	auipc	ra,0x2
    8000585c:	244080e7          	jalr	580(ra) # 80007a9c <__putc>
    80005860:	00a00513          	li	a0,10
    80005864:	00002097          	auipc	ra,0x2
    80005868:	238080e7          	jalr	568(ra) # 80007a9c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    8000586c:	0084b503          	ld	a0,8(s1)
    80005870:	ffffc097          	auipc	ra,0xffffc
    80005874:	a08080e7          	jalr	-1528(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    80005878:	0204b503          	ld	a0,32(s1)
    8000587c:	ffffc097          	auipc	ra,0xffffc
    80005880:	b28080e7          	jalr	-1240(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    80005884:	0184b503          	ld	a0,24(s1)
    80005888:	ffffc097          	auipc	ra,0xffffc
    8000588c:	b1c080e7          	jalr	-1252(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    80005890:	0304b503          	ld	a0,48(s1)
    80005894:	ffffc097          	auipc	ra,0xffffc
    80005898:	b10080e7          	jalr	-1264(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    8000589c:	0284b503          	ld	a0,40(s1)
    800058a0:	ffffc097          	auipc	ra,0xffffc
    800058a4:	b04080e7          	jalr	-1276(ra) # 800013a4 <sem_close>
}
    800058a8:	01813083          	ld	ra,24(sp)
    800058ac:	01013403          	ld	s0,16(sp)
    800058b0:	00813483          	ld	s1,8(sp)
    800058b4:	02010113          	addi	sp,sp,32
    800058b8:	00008067          	ret

00000000800058bc <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    800058bc:	fe010113          	addi	sp,sp,-32
    800058c0:	00113c23          	sd	ra,24(sp)
    800058c4:	00813823          	sd	s0,16(sp)
    800058c8:	00913423          	sd	s1,8(sp)
    800058cc:	01213023          	sd	s2,0(sp)
    800058d0:	02010413          	addi	s0,sp,32
    800058d4:	00050493          	mv	s1,a0
    800058d8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800058dc:	01853503          	ld	a0,24(a0)
    800058e0:	ffffc097          	auipc	ra,0xffffc
    800058e4:	af0080e7          	jalr	-1296(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    800058e8:	0304b503          	ld	a0,48(s1)
    800058ec:	ffffc097          	auipc	ra,0xffffc
    800058f0:	ae4080e7          	jalr	-1308(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    800058f4:	0084b783          	ld	a5,8(s1)
    800058f8:	0144a703          	lw	a4,20(s1)
    800058fc:	00271713          	slli	a4,a4,0x2
    80005900:	00e787b3          	add	a5,a5,a4
    80005904:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005908:	0144a783          	lw	a5,20(s1)
    8000590c:	0017879b          	addiw	a5,a5,1
    80005910:	0004a703          	lw	a4,0(s1)
    80005914:	02e7e7bb          	remw	a5,a5,a4
    80005918:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000591c:	0304b503          	ld	a0,48(s1)
    80005920:	ffffc097          	auipc	ra,0xffffc
    80005924:	adc080e7          	jalr	-1316(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    80005928:	0204b503          	ld	a0,32(s1)
    8000592c:	ffffc097          	auipc	ra,0xffffc
    80005930:	ad0080e7          	jalr	-1328(ra) # 800013fc <sem_signal>

}
    80005934:	01813083          	ld	ra,24(sp)
    80005938:	01013403          	ld	s0,16(sp)
    8000593c:	00813483          	ld	s1,8(sp)
    80005940:	00013903          	ld	s2,0(sp)
    80005944:	02010113          	addi	sp,sp,32
    80005948:	00008067          	ret

000000008000594c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000594c:	fe010113          	addi	sp,sp,-32
    80005950:	00113c23          	sd	ra,24(sp)
    80005954:	00813823          	sd	s0,16(sp)
    80005958:	00913423          	sd	s1,8(sp)
    8000595c:	01213023          	sd	s2,0(sp)
    80005960:	02010413          	addi	s0,sp,32
    80005964:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005968:	02053503          	ld	a0,32(a0)
    8000596c:	ffffc097          	auipc	ra,0xffffc
    80005970:	a64080e7          	jalr	-1436(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    80005974:	0284b503          	ld	a0,40(s1)
    80005978:	ffffc097          	auipc	ra,0xffffc
    8000597c:	a58080e7          	jalr	-1448(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    80005980:	0084b703          	ld	a4,8(s1)
    80005984:	0104a783          	lw	a5,16(s1)
    80005988:	00279693          	slli	a3,a5,0x2
    8000598c:	00d70733          	add	a4,a4,a3
    80005990:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005994:	0017879b          	addiw	a5,a5,1
    80005998:	0004a703          	lw	a4,0(s1)
    8000599c:	02e7e7bb          	remw	a5,a5,a4
    800059a0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800059a4:	0284b503          	ld	a0,40(s1)
    800059a8:	ffffc097          	auipc	ra,0xffffc
    800059ac:	a54080e7          	jalr	-1452(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    800059b0:	0184b503          	ld	a0,24(s1)
    800059b4:	ffffc097          	auipc	ra,0xffffc
    800059b8:	a48080e7          	jalr	-1464(ra) # 800013fc <sem_signal>

    return ret;
}
    800059bc:	00090513          	mv	a0,s2
    800059c0:	01813083          	ld	ra,24(sp)
    800059c4:	01013403          	ld	s0,16(sp)
    800059c8:	00813483          	ld	s1,8(sp)
    800059cc:	00013903          	ld	s2,0(sp)
    800059d0:	02010113          	addi	sp,sp,32
    800059d4:	00008067          	ret

00000000800059d8 <start>:
    800059d8:	ff010113          	addi	sp,sp,-16
    800059dc:	00813423          	sd	s0,8(sp)
    800059e0:	01010413          	addi	s0,sp,16
    800059e4:	300027f3          	csrr	a5,mstatus
    800059e8:	ffffe737          	lui	a4,0xffffe
    800059ec:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff2fff>
    800059f0:	00e7f7b3          	and	a5,a5,a4
    800059f4:	00001737          	lui	a4,0x1
    800059f8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800059fc:	00e7e7b3          	or	a5,a5,a4
    80005a00:	30079073          	csrw	mstatus,a5
    80005a04:	00000797          	auipc	a5,0x0
    80005a08:	16078793          	addi	a5,a5,352 # 80005b64 <system_main>
    80005a0c:	34179073          	csrw	mepc,a5
    80005a10:	00000793          	li	a5,0
    80005a14:	18079073          	csrw	satp,a5
    80005a18:	000107b7          	lui	a5,0x10
    80005a1c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005a20:	30279073          	csrw	medeleg,a5
    80005a24:	30379073          	csrw	mideleg,a5
    80005a28:	104027f3          	csrr	a5,sie
    80005a2c:	2227e793          	ori	a5,a5,546
    80005a30:	10479073          	csrw	sie,a5
    80005a34:	fff00793          	li	a5,-1
    80005a38:	00a7d793          	srli	a5,a5,0xa
    80005a3c:	3b079073          	csrw	pmpaddr0,a5
    80005a40:	00f00793          	li	a5,15
    80005a44:	3a079073          	csrw	pmpcfg0,a5
    80005a48:	f14027f3          	csrr	a5,mhartid
    80005a4c:	0200c737          	lui	a4,0x200c
    80005a50:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005a54:	0007869b          	sext.w	a3,a5
    80005a58:	00269713          	slli	a4,a3,0x2
    80005a5c:	000f4637          	lui	a2,0xf4
    80005a60:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005a64:	00d70733          	add	a4,a4,a3
    80005a68:	0037979b          	slliw	a5,a5,0x3
    80005a6c:	020046b7          	lui	a3,0x2004
    80005a70:	00d787b3          	add	a5,a5,a3
    80005a74:	00c585b3          	add	a1,a1,a2
    80005a78:	00371693          	slli	a3,a4,0x3
    80005a7c:	00005717          	auipc	a4,0x5
    80005a80:	b2470713          	addi	a4,a4,-1244 # 8000a5a0 <timer_scratch>
    80005a84:	00b7b023          	sd	a1,0(a5)
    80005a88:	00d70733          	add	a4,a4,a3
    80005a8c:	00f73c23          	sd	a5,24(a4)
    80005a90:	02c73023          	sd	a2,32(a4)
    80005a94:	34071073          	csrw	mscratch,a4
    80005a98:	00000797          	auipc	a5,0x0
    80005a9c:	6e878793          	addi	a5,a5,1768 # 80006180 <timervec>
    80005aa0:	30579073          	csrw	mtvec,a5
    80005aa4:	300027f3          	csrr	a5,mstatus
    80005aa8:	0087e793          	ori	a5,a5,8
    80005aac:	30079073          	csrw	mstatus,a5
    80005ab0:	304027f3          	csrr	a5,mie
    80005ab4:	0807e793          	ori	a5,a5,128
    80005ab8:	30479073          	csrw	mie,a5
    80005abc:	f14027f3          	csrr	a5,mhartid
    80005ac0:	0007879b          	sext.w	a5,a5
    80005ac4:	00078213          	mv	tp,a5
    80005ac8:	30200073          	mret
    80005acc:	00813403          	ld	s0,8(sp)
    80005ad0:	01010113          	addi	sp,sp,16
    80005ad4:	00008067          	ret

0000000080005ad8 <timerinit>:
    80005ad8:	ff010113          	addi	sp,sp,-16
    80005adc:	00813423          	sd	s0,8(sp)
    80005ae0:	01010413          	addi	s0,sp,16
    80005ae4:	f14027f3          	csrr	a5,mhartid
    80005ae8:	0200c737          	lui	a4,0x200c
    80005aec:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005af0:	0007869b          	sext.w	a3,a5
    80005af4:	00269713          	slli	a4,a3,0x2
    80005af8:	000f4637          	lui	a2,0xf4
    80005afc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005b00:	00d70733          	add	a4,a4,a3
    80005b04:	0037979b          	slliw	a5,a5,0x3
    80005b08:	020046b7          	lui	a3,0x2004
    80005b0c:	00d787b3          	add	a5,a5,a3
    80005b10:	00c585b3          	add	a1,a1,a2
    80005b14:	00371693          	slli	a3,a4,0x3
    80005b18:	00005717          	auipc	a4,0x5
    80005b1c:	a8870713          	addi	a4,a4,-1400 # 8000a5a0 <timer_scratch>
    80005b20:	00b7b023          	sd	a1,0(a5)
    80005b24:	00d70733          	add	a4,a4,a3
    80005b28:	00f73c23          	sd	a5,24(a4)
    80005b2c:	02c73023          	sd	a2,32(a4)
    80005b30:	34071073          	csrw	mscratch,a4
    80005b34:	00000797          	auipc	a5,0x0
    80005b38:	64c78793          	addi	a5,a5,1612 # 80006180 <timervec>
    80005b3c:	30579073          	csrw	mtvec,a5
    80005b40:	300027f3          	csrr	a5,mstatus
    80005b44:	0087e793          	ori	a5,a5,8
    80005b48:	30079073          	csrw	mstatus,a5
    80005b4c:	304027f3          	csrr	a5,mie
    80005b50:	0807e793          	ori	a5,a5,128
    80005b54:	30479073          	csrw	mie,a5
    80005b58:	00813403          	ld	s0,8(sp)
    80005b5c:	01010113          	addi	sp,sp,16
    80005b60:	00008067          	ret

0000000080005b64 <system_main>:
    80005b64:	fe010113          	addi	sp,sp,-32
    80005b68:	00813823          	sd	s0,16(sp)
    80005b6c:	00913423          	sd	s1,8(sp)
    80005b70:	00113c23          	sd	ra,24(sp)
    80005b74:	02010413          	addi	s0,sp,32
    80005b78:	00000097          	auipc	ra,0x0
    80005b7c:	0c4080e7          	jalr	196(ra) # 80005c3c <cpuid>
    80005b80:	00005497          	auipc	s1,0x5
    80005b84:	94048493          	addi	s1,s1,-1728 # 8000a4c0 <started>
    80005b88:	02050263          	beqz	a0,80005bac <system_main+0x48>
    80005b8c:	0004a783          	lw	a5,0(s1)
    80005b90:	0007879b          	sext.w	a5,a5
    80005b94:	fe078ce3          	beqz	a5,80005b8c <system_main+0x28>
    80005b98:	0ff0000f          	fence
    80005b9c:	00002517          	auipc	a0,0x2
    80005ba0:	7fc50513          	addi	a0,a0,2044 # 80008398 <_ZL6digits+0x58>
    80005ba4:	00001097          	auipc	ra,0x1
    80005ba8:	a78080e7          	jalr	-1416(ra) # 8000661c <panic>
    80005bac:	00001097          	auipc	ra,0x1
    80005bb0:	9cc080e7          	jalr	-1588(ra) # 80006578 <consoleinit>
    80005bb4:	00001097          	auipc	ra,0x1
    80005bb8:	158080e7          	jalr	344(ra) # 80006d0c <printfinit>
    80005bbc:	00002517          	auipc	a0,0x2
    80005bc0:	5c450513          	addi	a0,a0,1476 # 80008180 <CONSOLE_STATUS+0x170>
    80005bc4:	00001097          	auipc	ra,0x1
    80005bc8:	ab4080e7          	jalr	-1356(ra) # 80006678 <__printf>
    80005bcc:	00002517          	auipc	a0,0x2
    80005bd0:	79c50513          	addi	a0,a0,1948 # 80008368 <_ZL6digits+0x28>
    80005bd4:	00001097          	auipc	ra,0x1
    80005bd8:	aa4080e7          	jalr	-1372(ra) # 80006678 <__printf>
    80005bdc:	00002517          	auipc	a0,0x2
    80005be0:	5a450513          	addi	a0,a0,1444 # 80008180 <CONSOLE_STATUS+0x170>
    80005be4:	00001097          	auipc	ra,0x1
    80005be8:	a94080e7          	jalr	-1388(ra) # 80006678 <__printf>
    80005bec:	00001097          	auipc	ra,0x1
    80005bf0:	4ac080e7          	jalr	1196(ra) # 80007098 <kinit>
    80005bf4:	00000097          	auipc	ra,0x0
    80005bf8:	148080e7          	jalr	328(ra) # 80005d3c <trapinit>
    80005bfc:	00000097          	auipc	ra,0x0
    80005c00:	16c080e7          	jalr	364(ra) # 80005d68 <trapinithart>
    80005c04:	00000097          	auipc	ra,0x0
    80005c08:	5bc080e7          	jalr	1468(ra) # 800061c0 <plicinit>
    80005c0c:	00000097          	auipc	ra,0x0
    80005c10:	5dc080e7          	jalr	1500(ra) # 800061e8 <plicinithart>
    80005c14:	00000097          	auipc	ra,0x0
    80005c18:	078080e7          	jalr	120(ra) # 80005c8c <userinit>
    80005c1c:	0ff0000f          	fence
    80005c20:	00100793          	li	a5,1
    80005c24:	00002517          	auipc	a0,0x2
    80005c28:	75c50513          	addi	a0,a0,1884 # 80008380 <_ZL6digits+0x40>
    80005c2c:	00f4a023          	sw	a5,0(s1)
    80005c30:	00001097          	auipc	ra,0x1
    80005c34:	a48080e7          	jalr	-1464(ra) # 80006678 <__printf>
    80005c38:	0000006f          	j	80005c38 <system_main+0xd4>

0000000080005c3c <cpuid>:
    80005c3c:	ff010113          	addi	sp,sp,-16
    80005c40:	00813423          	sd	s0,8(sp)
    80005c44:	01010413          	addi	s0,sp,16
    80005c48:	00020513          	mv	a0,tp
    80005c4c:	00813403          	ld	s0,8(sp)
    80005c50:	0005051b          	sext.w	a0,a0
    80005c54:	01010113          	addi	sp,sp,16
    80005c58:	00008067          	ret

0000000080005c5c <mycpu>:
    80005c5c:	ff010113          	addi	sp,sp,-16
    80005c60:	00813423          	sd	s0,8(sp)
    80005c64:	01010413          	addi	s0,sp,16
    80005c68:	00020793          	mv	a5,tp
    80005c6c:	00813403          	ld	s0,8(sp)
    80005c70:	0007879b          	sext.w	a5,a5
    80005c74:	00779793          	slli	a5,a5,0x7
    80005c78:	00006517          	auipc	a0,0x6
    80005c7c:	95850513          	addi	a0,a0,-1704 # 8000b5d0 <cpus>
    80005c80:	00f50533          	add	a0,a0,a5
    80005c84:	01010113          	addi	sp,sp,16
    80005c88:	00008067          	ret

0000000080005c8c <userinit>:
    80005c8c:	ff010113          	addi	sp,sp,-16
    80005c90:	00813423          	sd	s0,8(sp)
    80005c94:	01010413          	addi	s0,sp,16
    80005c98:	00813403          	ld	s0,8(sp)
    80005c9c:	01010113          	addi	sp,sp,16
    80005ca0:	ffffd317          	auipc	t1,0xffffd
    80005ca4:	eac30067          	jr	-340(t1) # 80002b4c <main>

0000000080005ca8 <either_copyout>:
    80005ca8:	ff010113          	addi	sp,sp,-16
    80005cac:	00813023          	sd	s0,0(sp)
    80005cb0:	00113423          	sd	ra,8(sp)
    80005cb4:	01010413          	addi	s0,sp,16
    80005cb8:	02051663          	bnez	a0,80005ce4 <either_copyout+0x3c>
    80005cbc:	00058513          	mv	a0,a1
    80005cc0:	00060593          	mv	a1,a2
    80005cc4:	0006861b          	sext.w	a2,a3
    80005cc8:	00002097          	auipc	ra,0x2
    80005ccc:	c5c080e7          	jalr	-932(ra) # 80007924 <__memmove>
    80005cd0:	00813083          	ld	ra,8(sp)
    80005cd4:	00013403          	ld	s0,0(sp)
    80005cd8:	00000513          	li	a0,0
    80005cdc:	01010113          	addi	sp,sp,16
    80005ce0:	00008067          	ret
    80005ce4:	00002517          	auipc	a0,0x2
    80005ce8:	6dc50513          	addi	a0,a0,1756 # 800083c0 <_ZL6digits+0x80>
    80005cec:	00001097          	auipc	ra,0x1
    80005cf0:	930080e7          	jalr	-1744(ra) # 8000661c <panic>

0000000080005cf4 <either_copyin>:
    80005cf4:	ff010113          	addi	sp,sp,-16
    80005cf8:	00813023          	sd	s0,0(sp)
    80005cfc:	00113423          	sd	ra,8(sp)
    80005d00:	01010413          	addi	s0,sp,16
    80005d04:	02059463          	bnez	a1,80005d2c <either_copyin+0x38>
    80005d08:	00060593          	mv	a1,a2
    80005d0c:	0006861b          	sext.w	a2,a3
    80005d10:	00002097          	auipc	ra,0x2
    80005d14:	c14080e7          	jalr	-1004(ra) # 80007924 <__memmove>
    80005d18:	00813083          	ld	ra,8(sp)
    80005d1c:	00013403          	ld	s0,0(sp)
    80005d20:	00000513          	li	a0,0
    80005d24:	01010113          	addi	sp,sp,16
    80005d28:	00008067          	ret
    80005d2c:	00002517          	auipc	a0,0x2
    80005d30:	6bc50513          	addi	a0,a0,1724 # 800083e8 <_ZL6digits+0xa8>
    80005d34:	00001097          	auipc	ra,0x1
    80005d38:	8e8080e7          	jalr	-1816(ra) # 8000661c <panic>

0000000080005d3c <trapinit>:
    80005d3c:	ff010113          	addi	sp,sp,-16
    80005d40:	00813423          	sd	s0,8(sp)
    80005d44:	01010413          	addi	s0,sp,16
    80005d48:	00813403          	ld	s0,8(sp)
    80005d4c:	00002597          	auipc	a1,0x2
    80005d50:	6c458593          	addi	a1,a1,1732 # 80008410 <_ZL6digits+0xd0>
    80005d54:	00006517          	auipc	a0,0x6
    80005d58:	8fc50513          	addi	a0,a0,-1796 # 8000b650 <tickslock>
    80005d5c:	01010113          	addi	sp,sp,16
    80005d60:	00001317          	auipc	t1,0x1
    80005d64:	5c830067          	jr	1480(t1) # 80007328 <initlock>

0000000080005d68 <trapinithart>:
    80005d68:	ff010113          	addi	sp,sp,-16
    80005d6c:	00813423          	sd	s0,8(sp)
    80005d70:	01010413          	addi	s0,sp,16
    80005d74:	00000797          	auipc	a5,0x0
    80005d78:	2fc78793          	addi	a5,a5,764 # 80006070 <kernelvec>
    80005d7c:	10579073          	csrw	stvec,a5
    80005d80:	00813403          	ld	s0,8(sp)
    80005d84:	01010113          	addi	sp,sp,16
    80005d88:	00008067          	ret

0000000080005d8c <usertrap>:
    80005d8c:	ff010113          	addi	sp,sp,-16
    80005d90:	00813423          	sd	s0,8(sp)
    80005d94:	01010413          	addi	s0,sp,16
    80005d98:	00813403          	ld	s0,8(sp)
    80005d9c:	01010113          	addi	sp,sp,16
    80005da0:	00008067          	ret

0000000080005da4 <usertrapret>:
    80005da4:	ff010113          	addi	sp,sp,-16
    80005da8:	00813423          	sd	s0,8(sp)
    80005dac:	01010413          	addi	s0,sp,16
    80005db0:	00813403          	ld	s0,8(sp)
    80005db4:	01010113          	addi	sp,sp,16
    80005db8:	00008067          	ret

0000000080005dbc <kerneltrap>:
    80005dbc:	fe010113          	addi	sp,sp,-32
    80005dc0:	00813823          	sd	s0,16(sp)
    80005dc4:	00113c23          	sd	ra,24(sp)
    80005dc8:	00913423          	sd	s1,8(sp)
    80005dcc:	02010413          	addi	s0,sp,32
    80005dd0:	142025f3          	csrr	a1,scause
    80005dd4:	100027f3          	csrr	a5,sstatus
    80005dd8:	0027f793          	andi	a5,a5,2
    80005ddc:	10079c63          	bnez	a5,80005ef4 <kerneltrap+0x138>
    80005de0:	142027f3          	csrr	a5,scause
    80005de4:	0207ce63          	bltz	a5,80005e20 <kerneltrap+0x64>
    80005de8:	00002517          	auipc	a0,0x2
    80005dec:	67050513          	addi	a0,a0,1648 # 80008458 <_ZL6digits+0x118>
    80005df0:	00001097          	auipc	ra,0x1
    80005df4:	888080e7          	jalr	-1912(ra) # 80006678 <__printf>
    80005df8:	141025f3          	csrr	a1,sepc
    80005dfc:	14302673          	csrr	a2,stval
    80005e00:	00002517          	auipc	a0,0x2
    80005e04:	66850513          	addi	a0,a0,1640 # 80008468 <_ZL6digits+0x128>
    80005e08:	00001097          	auipc	ra,0x1
    80005e0c:	870080e7          	jalr	-1936(ra) # 80006678 <__printf>
    80005e10:	00002517          	auipc	a0,0x2
    80005e14:	67050513          	addi	a0,a0,1648 # 80008480 <_ZL6digits+0x140>
    80005e18:	00001097          	auipc	ra,0x1
    80005e1c:	804080e7          	jalr	-2044(ra) # 8000661c <panic>
    80005e20:	0ff7f713          	andi	a4,a5,255
    80005e24:	00900693          	li	a3,9
    80005e28:	04d70063          	beq	a4,a3,80005e68 <kerneltrap+0xac>
    80005e2c:	fff00713          	li	a4,-1
    80005e30:	03f71713          	slli	a4,a4,0x3f
    80005e34:	00170713          	addi	a4,a4,1
    80005e38:	fae798e3          	bne	a5,a4,80005de8 <kerneltrap+0x2c>
    80005e3c:	00000097          	auipc	ra,0x0
    80005e40:	e00080e7          	jalr	-512(ra) # 80005c3c <cpuid>
    80005e44:	06050663          	beqz	a0,80005eb0 <kerneltrap+0xf4>
    80005e48:	144027f3          	csrr	a5,sip
    80005e4c:	ffd7f793          	andi	a5,a5,-3
    80005e50:	14479073          	csrw	sip,a5
    80005e54:	01813083          	ld	ra,24(sp)
    80005e58:	01013403          	ld	s0,16(sp)
    80005e5c:	00813483          	ld	s1,8(sp)
    80005e60:	02010113          	addi	sp,sp,32
    80005e64:	00008067          	ret
    80005e68:	00000097          	auipc	ra,0x0
    80005e6c:	3cc080e7          	jalr	972(ra) # 80006234 <plic_claim>
    80005e70:	00a00793          	li	a5,10
    80005e74:	00050493          	mv	s1,a0
    80005e78:	06f50863          	beq	a0,a5,80005ee8 <kerneltrap+0x12c>
    80005e7c:	fc050ce3          	beqz	a0,80005e54 <kerneltrap+0x98>
    80005e80:	00050593          	mv	a1,a0
    80005e84:	00002517          	auipc	a0,0x2
    80005e88:	5b450513          	addi	a0,a0,1460 # 80008438 <_ZL6digits+0xf8>
    80005e8c:	00000097          	auipc	ra,0x0
    80005e90:	7ec080e7          	jalr	2028(ra) # 80006678 <__printf>
    80005e94:	01013403          	ld	s0,16(sp)
    80005e98:	01813083          	ld	ra,24(sp)
    80005e9c:	00048513          	mv	a0,s1
    80005ea0:	00813483          	ld	s1,8(sp)
    80005ea4:	02010113          	addi	sp,sp,32
    80005ea8:	00000317          	auipc	t1,0x0
    80005eac:	3c430067          	jr	964(t1) # 8000626c <plic_complete>
    80005eb0:	00005517          	auipc	a0,0x5
    80005eb4:	7a050513          	addi	a0,a0,1952 # 8000b650 <tickslock>
    80005eb8:	00001097          	auipc	ra,0x1
    80005ebc:	494080e7          	jalr	1172(ra) # 8000734c <acquire>
    80005ec0:	00004717          	auipc	a4,0x4
    80005ec4:	60470713          	addi	a4,a4,1540 # 8000a4c4 <ticks>
    80005ec8:	00072783          	lw	a5,0(a4)
    80005ecc:	00005517          	auipc	a0,0x5
    80005ed0:	78450513          	addi	a0,a0,1924 # 8000b650 <tickslock>
    80005ed4:	0017879b          	addiw	a5,a5,1
    80005ed8:	00f72023          	sw	a5,0(a4)
    80005edc:	00001097          	auipc	ra,0x1
    80005ee0:	53c080e7          	jalr	1340(ra) # 80007418 <release>
    80005ee4:	f65ff06f          	j	80005e48 <kerneltrap+0x8c>
    80005ee8:	00001097          	auipc	ra,0x1
    80005eec:	098080e7          	jalr	152(ra) # 80006f80 <uartintr>
    80005ef0:	fa5ff06f          	j	80005e94 <kerneltrap+0xd8>
    80005ef4:	00002517          	auipc	a0,0x2
    80005ef8:	52450513          	addi	a0,a0,1316 # 80008418 <_ZL6digits+0xd8>
    80005efc:	00000097          	auipc	ra,0x0
    80005f00:	720080e7          	jalr	1824(ra) # 8000661c <panic>

0000000080005f04 <clockintr>:
    80005f04:	fe010113          	addi	sp,sp,-32
    80005f08:	00813823          	sd	s0,16(sp)
    80005f0c:	00913423          	sd	s1,8(sp)
    80005f10:	00113c23          	sd	ra,24(sp)
    80005f14:	02010413          	addi	s0,sp,32
    80005f18:	00005497          	auipc	s1,0x5
    80005f1c:	73848493          	addi	s1,s1,1848 # 8000b650 <tickslock>
    80005f20:	00048513          	mv	a0,s1
    80005f24:	00001097          	auipc	ra,0x1
    80005f28:	428080e7          	jalr	1064(ra) # 8000734c <acquire>
    80005f2c:	00004717          	auipc	a4,0x4
    80005f30:	59870713          	addi	a4,a4,1432 # 8000a4c4 <ticks>
    80005f34:	00072783          	lw	a5,0(a4)
    80005f38:	01013403          	ld	s0,16(sp)
    80005f3c:	01813083          	ld	ra,24(sp)
    80005f40:	00048513          	mv	a0,s1
    80005f44:	0017879b          	addiw	a5,a5,1
    80005f48:	00813483          	ld	s1,8(sp)
    80005f4c:	00f72023          	sw	a5,0(a4)
    80005f50:	02010113          	addi	sp,sp,32
    80005f54:	00001317          	auipc	t1,0x1
    80005f58:	4c430067          	jr	1220(t1) # 80007418 <release>

0000000080005f5c <devintr>:
    80005f5c:	142027f3          	csrr	a5,scause
    80005f60:	00000513          	li	a0,0
    80005f64:	0007c463          	bltz	a5,80005f6c <devintr+0x10>
    80005f68:	00008067          	ret
    80005f6c:	fe010113          	addi	sp,sp,-32
    80005f70:	00813823          	sd	s0,16(sp)
    80005f74:	00113c23          	sd	ra,24(sp)
    80005f78:	00913423          	sd	s1,8(sp)
    80005f7c:	02010413          	addi	s0,sp,32
    80005f80:	0ff7f713          	andi	a4,a5,255
    80005f84:	00900693          	li	a3,9
    80005f88:	04d70c63          	beq	a4,a3,80005fe0 <devintr+0x84>
    80005f8c:	fff00713          	li	a4,-1
    80005f90:	03f71713          	slli	a4,a4,0x3f
    80005f94:	00170713          	addi	a4,a4,1
    80005f98:	00e78c63          	beq	a5,a4,80005fb0 <devintr+0x54>
    80005f9c:	01813083          	ld	ra,24(sp)
    80005fa0:	01013403          	ld	s0,16(sp)
    80005fa4:	00813483          	ld	s1,8(sp)
    80005fa8:	02010113          	addi	sp,sp,32
    80005fac:	00008067          	ret
    80005fb0:	00000097          	auipc	ra,0x0
    80005fb4:	c8c080e7          	jalr	-884(ra) # 80005c3c <cpuid>
    80005fb8:	06050663          	beqz	a0,80006024 <devintr+0xc8>
    80005fbc:	144027f3          	csrr	a5,sip
    80005fc0:	ffd7f793          	andi	a5,a5,-3
    80005fc4:	14479073          	csrw	sip,a5
    80005fc8:	01813083          	ld	ra,24(sp)
    80005fcc:	01013403          	ld	s0,16(sp)
    80005fd0:	00813483          	ld	s1,8(sp)
    80005fd4:	00200513          	li	a0,2
    80005fd8:	02010113          	addi	sp,sp,32
    80005fdc:	00008067          	ret
    80005fe0:	00000097          	auipc	ra,0x0
    80005fe4:	254080e7          	jalr	596(ra) # 80006234 <plic_claim>
    80005fe8:	00a00793          	li	a5,10
    80005fec:	00050493          	mv	s1,a0
    80005ff0:	06f50663          	beq	a0,a5,8000605c <devintr+0x100>
    80005ff4:	00100513          	li	a0,1
    80005ff8:	fa0482e3          	beqz	s1,80005f9c <devintr+0x40>
    80005ffc:	00048593          	mv	a1,s1
    80006000:	00002517          	auipc	a0,0x2
    80006004:	43850513          	addi	a0,a0,1080 # 80008438 <_ZL6digits+0xf8>
    80006008:	00000097          	auipc	ra,0x0
    8000600c:	670080e7          	jalr	1648(ra) # 80006678 <__printf>
    80006010:	00048513          	mv	a0,s1
    80006014:	00000097          	auipc	ra,0x0
    80006018:	258080e7          	jalr	600(ra) # 8000626c <plic_complete>
    8000601c:	00100513          	li	a0,1
    80006020:	f7dff06f          	j	80005f9c <devintr+0x40>
    80006024:	00005517          	auipc	a0,0x5
    80006028:	62c50513          	addi	a0,a0,1580 # 8000b650 <tickslock>
    8000602c:	00001097          	auipc	ra,0x1
    80006030:	320080e7          	jalr	800(ra) # 8000734c <acquire>
    80006034:	00004717          	auipc	a4,0x4
    80006038:	49070713          	addi	a4,a4,1168 # 8000a4c4 <ticks>
    8000603c:	00072783          	lw	a5,0(a4)
    80006040:	00005517          	auipc	a0,0x5
    80006044:	61050513          	addi	a0,a0,1552 # 8000b650 <tickslock>
    80006048:	0017879b          	addiw	a5,a5,1
    8000604c:	00f72023          	sw	a5,0(a4)
    80006050:	00001097          	auipc	ra,0x1
    80006054:	3c8080e7          	jalr	968(ra) # 80007418 <release>
    80006058:	f65ff06f          	j	80005fbc <devintr+0x60>
    8000605c:	00001097          	auipc	ra,0x1
    80006060:	f24080e7          	jalr	-220(ra) # 80006f80 <uartintr>
    80006064:	fadff06f          	j	80006010 <devintr+0xb4>
	...

0000000080006070 <kernelvec>:
    80006070:	f0010113          	addi	sp,sp,-256
    80006074:	00113023          	sd	ra,0(sp)
    80006078:	00213423          	sd	sp,8(sp)
    8000607c:	00313823          	sd	gp,16(sp)
    80006080:	00413c23          	sd	tp,24(sp)
    80006084:	02513023          	sd	t0,32(sp)
    80006088:	02613423          	sd	t1,40(sp)
    8000608c:	02713823          	sd	t2,48(sp)
    80006090:	02813c23          	sd	s0,56(sp)
    80006094:	04913023          	sd	s1,64(sp)
    80006098:	04a13423          	sd	a0,72(sp)
    8000609c:	04b13823          	sd	a1,80(sp)
    800060a0:	04c13c23          	sd	a2,88(sp)
    800060a4:	06d13023          	sd	a3,96(sp)
    800060a8:	06e13423          	sd	a4,104(sp)
    800060ac:	06f13823          	sd	a5,112(sp)
    800060b0:	07013c23          	sd	a6,120(sp)
    800060b4:	09113023          	sd	a7,128(sp)
    800060b8:	09213423          	sd	s2,136(sp)
    800060bc:	09313823          	sd	s3,144(sp)
    800060c0:	09413c23          	sd	s4,152(sp)
    800060c4:	0b513023          	sd	s5,160(sp)
    800060c8:	0b613423          	sd	s6,168(sp)
    800060cc:	0b713823          	sd	s7,176(sp)
    800060d0:	0b813c23          	sd	s8,184(sp)
    800060d4:	0d913023          	sd	s9,192(sp)
    800060d8:	0da13423          	sd	s10,200(sp)
    800060dc:	0db13823          	sd	s11,208(sp)
    800060e0:	0dc13c23          	sd	t3,216(sp)
    800060e4:	0fd13023          	sd	t4,224(sp)
    800060e8:	0fe13423          	sd	t5,232(sp)
    800060ec:	0ff13823          	sd	t6,240(sp)
    800060f0:	ccdff0ef          	jal	ra,80005dbc <kerneltrap>
    800060f4:	00013083          	ld	ra,0(sp)
    800060f8:	00813103          	ld	sp,8(sp)
    800060fc:	01013183          	ld	gp,16(sp)
    80006100:	02013283          	ld	t0,32(sp)
    80006104:	02813303          	ld	t1,40(sp)
    80006108:	03013383          	ld	t2,48(sp)
    8000610c:	03813403          	ld	s0,56(sp)
    80006110:	04013483          	ld	s1,64(sp)
    80006114:	04813503          	ld	a0,72(sp)
    80006118:	05013583          	ld	a1,80(sp)
    8000611c:	05813603          	ld	a2,88(sp)
    80006120:	06013683          	ld	a3,96(sp)
    80006124:	06813703          	ld	a4,104(sp)
    80006128:	07013783          	ld	a5,112(sp)
    8000612c:	07813803          	ld	a6,120(sp)
    80006130:	08013883          	ld	a7,128(sp)
    80006134:	08813903          	ld	s2,136(sp)
    80006138:	09013983          	ld	s3,144(sp)
    8000613c:	09813a03          	ld	s4,152(sp)
    80006140:	0a013a83          	ld	s5,160(sp)
    80006144:	0a813b03          	ld	s6,168(sp)
    80006148:	0b013b83          	ld	s7,176(sp)
    8000614c:	0b813c03          	ld	s8,184(sp)
    80006150:	0c013c83          	ld	s9,192(sp)
    80006154:	0c813d03          	ld	s10,200(sp)
    80006158:	0d013d83          	ld	s11,208(sp)
    8000615c:	0d813e03          	ld	t3,216(sp)
    80006160:	0e013e83          	ld	t4,224(sp)
    80006164:	0e813f03          	ld	t5,232(sp)
    80006168:	0f013f83          	ld	t6,240(sp)
    8000616c:	10010113          	addi	sp,sp,256
    80006170:	10200073          	sret
    80006174:	00000013          	nop
    80006178:	00000013          	nop
    8000617c:	00000013          	nop

0000000080006180 <timervec>:
    80006180:	34051573          	csrrw	a0,mscratch,a0
    80006184:	00b53023          	sd	a1,0(a0)
    80006188:	00c53423          	sd	a2,8(a0)
    8000618c:	00d53823          	sd	a3,16(a0)
    80006190:	01853583          	ld	a1,24(a0)
    80006194:	02053603          	ld	a2,32(a0)
    80006198:	0005b683          	ld	a3,0(a1)
    8000619c:	00c686b3          	add	a3,a3,a2
    800061a0:	00d5b023          	sd	a3,0(a1)
    800061a4:	00200593          	li	a1,2
    800061a8:	14459073          	csrw	sip,a1
    800061ac:	01053683          	ld	a3,16(a0)
    800061b0:	00853603          	ld	a2,8(a0)
    800061b4:	00053583          	ld	a1,0(a0)
    800061b8:	34051573          	csrrw	a0,mscratch,a0
    800061bc:	30200073          	mret

00000000800061c0 <plicinit>:
    800061c0:	ff010113          	addi	sp,sp,-16
    800061c4:	00813423          	sd	s0,8(sp)
    800061c8:	01010413          	addi	s0,sp,16
    800061cc:	00813403          	ld	s0,8(sp)
    800061d0:	0c0007b7          	lui	a5,0xc000
    800061d4:	00100713          	li	a4,1
    800061d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800061dc:	00e7a223          	sw	a4,4(a5)
    800061e0:	01010113          	addi	sp,sp,16
    800061e4:	00008067          	ret

00000000800061e8 <plicinithart>:
    800061e8:	ff010113          	addi	sp,sp,-16
    800061ec:	00813023          	sd	s0,0(sp)
    800061f0:	00113423          	sd	ra,8(sp)
    800061f4:	01010413          	addi	s0,sp,16
    800061f8:	00000097          	auipc	ra,0x0
    800061fc:	a44080e7          	jalr	-1468(ra) # 80005c3c <cpuid>
    80006200:	0085171b          	slliw	a4,a0,0x8
    80006204:	0c0027b7          	lui	a5,0xc002
    80006208:	00e787b3          	add	a5,a5,a4
    8000620c:	40200713          	li	a4,1026
    80006210:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006214:	00813083          	ld	ra,8(sp)
    80006218:	00013403          	ld	s0,0(sp)
    8000621c:	00d5151b          	slliw	a0,a0,0xd
    80006220:	0c2017b7          	lui	a5,0xc201
    80006224:	00a78533          	add	a0,a5,a0
    80006228:	00052023          	sw	zero,0(a0)
    8000622c:	01010113          	addi	sp,sp,16
    80006230:	00008067          	ret

0000000080006234 <plic_claim>:
    80006234:	ff010113          	addi	sp,sp,-16
    80006238:	00813023          	sd	s0,0(sp)
    8000623c:	00113423          	sd	ra,8(sp)
    80006240:	01010413          	addi	s0,sp,16
    80006244:	00000097          	auipc	ra,0x0
    80006248:	9f8080e7          	jalr	-1544(ra) # 80005c3c <cpuid>
    8000624c:	00813083          	ld	ra,8(sp)
    80006250:	00013403          	ld	s0,0(sp)
    80006254:	00d5151b          	slliw	a0,a0,0xd
    80006258:	0c2017b7          	lui	a5,0xc201
    8000625c:	00a78533          	add	a0,a5,a0
    80006260:	00452503          	lw	a0,4(a0)
    80006264:	01010113          	addi	sp,sp,16
    80006268:	00008067          	ret

000000008000626c <plic_complete>:
    8000626c:	fe010113          	addi	sp,sp,-32
    80006270:	00813823          	sd	s0,16(sp)
    80006274:	00913423          	sd	s1,8(sp)
    80006278:	00113c23          	sd	ra,24(sp)
    8000627c:	02010413          	addi	s0,sp,32
    80006280:	00050493          	mv	s1,a0
    80006284:	00000097          	auipc	ra,0x0
    80006288:	9b8080e7          	jalr	-1608(ra) # 80005c3c <cpuid>
    8000628c:	01813083          	ld	ra,24(sp)
    80006290:	01013403          	ld	s0,16(sp)
    80006294:	00d5179b          	slliw	a5,a0,0xd
    80006298:	0c201737          	lui	a4,0xc201
    8000629c:	00f707b3          	add	a5,a4,a5
    800062a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800062a4:	00813483          	ld	s1,8(sp)
    800062a8:	02010113          	addi	sp,sp,32
    800062ac:	00008067          	ret

00000000800062b0 <consolewrite>:
    800062b0:	fb010113          	addi	sp,sp,-80
    800062b4:	04813023          	sd	s0,64(sp)
    800062b8:	04113423          	sd	ra,72(sp)
    800062bc:	02913c23          	sd	s1,56(sp)
    800062c0:	03213823          	sd	s2,48(sp)
    800062c4:	03313423          	sd	s3,40(sp)
    800062c8:	03413023          	sd	s4,32(sp)
    800062cc:	01513c23          	sd	s5,24(sp)
    800062d0:	05010413          	addi	s0,sp,80
    800062d4:	06c05c63          	blez	a2,8000634c <consolewrite+0x9c>
    800062d8:	00060993          	mv	s3,a2
    800062dc:	00050a13          	mv	s4,a0
    800062e0:	00058493          	mv	s1,a1
    800062e4:	00000913          	li	s2,0
    800062e8:	fff00a93          	li	s5,-1
    800062ec:	01c0006f          	j	80006308 <consolewrite+0x58>
    800062f0:	fbf44503          	lbu	a0,-65(s0)
    800062f4:	0019091b          	addiw	s2,s2,1
    800062f8:	00148493          	addi	s1,s1,1
    800062fc:	00001097          	auipc	ra,0x1
    80006300:	a9c080e7          	jalr	-1380(ra) # 80006d98 <uartputc>
    80006304:	03298063          	beq	s3,s2,80006324 <consolewrite+0x74>
    80006308:	00048613          	mv	a2,s1
    8000630c:	00100693          	li	a3,1
    80006310:	000a0593          	mv	a1,s4
    80006314:	fbf40513          	addi	a0,s0,-65
    80006318:	00000097          	auipc	ra,0x0
    8000631c:	9dc080e7          	jalr	-1572(ra) # 80005cf4 <either_copyin>
    80006320:	fd5518e3          	bne	a0,s5,800062f0 <consolewrite+0x40>
    80006324:	04813083          	ld	ra,72(sp)
    80006328:	04013403          	ld	s0,64(sp)
    8000632c:	03813483          	ld	s1,56(sp)
    80006330:	02813983          	ld	s3,40(sp)
    80006334:	02013a03          	ld	s4,32(sp)
    80006338:	01813a83          	ld	s5,24(sp)
    8000633c:	00090513          	mv	a0,s2
    80006340:	03013903          	ld	s2,48(sp)
    80006344:	05010113          	addi	sp,sp,80
    80006348:	00008067          	ret
    8000634c:	00000913          	li	s2,0
    80006350:	fd5ff06f          	j	80006324 <consolewrite+0x74>

0000000080006354 <consoleread>:
    80006354:	f9010113          	addi	sp,sp,-112
    80006358:	06813023          	sd	s0,96(sp)
    8000635c:	04913c23          	sd	s1,88(sp)
    80006360:	05213823          	sd	s2,80(sp)
    80006364:	05313423          	sd	s3,72(sp)
    80006368:	05413023          	sd	s4,64(sp)
    8000636c:	03513c23          	sd	s5,56(sp)
    80006370:	03613823          	sd	s6,48(sp)
    80006374:	03713423          	sd	s7,40(sp)
    80006378:	03813023          	sd	s8,32(sp)
    8000637c:	06113423          	sd	ra,104(sp)
    80006380:	01913c23          	sd	s9,24(sp)
    80006384:	07010413          	addi	s0,sp,112
    80006388:	00060b93          	mv	s7,a2
    8000638c:	00050913          	mv	s2,a0
    80006390:	00058c13          	mv	s8,a1
    80006394:	00060b1b          	sext.w	s6,a2
    80006398:	00005497          	auipc	s1,0x5
    8000639c:	2e048493          	addi	s1,s1,736 # 8000b678 <cons>
    800063a0:	00400993          	li	s3,4
    800063a4:	fff00a13          	li	s4,-1
    800063a8:	00a00a93          	li	s5,10
    800063ac:	05705e63          	blez	s7,80006408 <consoleread+0xb4>
    800063b0:	09c4a703          	lw	a4,156(s1)
    800063b4:	0984a783          	lw	a5,152(s1)
    800063b8:	0007071b          	sext.w	a4,a4
    800063bc:	08e78463          	beq	a5,a4,80006444 <consoleread+0xf0>
    800063c0:	07f7f713          	andi	a4,a5,127
    800063c4:	00e48733          	add	a4,s1,a4
    800063c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800063cc:	0017869b          	addiw	a3,a5,1
    800063d0:	08d4ac23          	sw	a3,152(s1)
    800063d4:	00070c9b          	sext.w	s9,a4
    800063d8:	0b370663          	beq	a4,s3,80006484 <consoleread+0x130>
    800063dc:	00100693          	li	a3,1
    800063e0:	f9f40613          	addi	a2,s0,-97
    800063e4:	000c0593          	mv	a1,s8
    800063e8:	00090513          	mv	a0,s2
    800063ec:	f8e40fa3          	sb	a4,-97(s0)
    800063f0:	00000097          	auipc	ra,0x0
    800063f4:	8b8080e7          	jalr	-1864(ra) # 80005ca8 <either_copyout>
    800063f8:	01450863          	beq	a0,s4,80006408 <consoleread+0xb4>
    800063fc:	001c0c13          	addi	s8,s8,1
    80006400:	fffb8b9b          	addiw	s7,s7,-1
    80006404:	fb5c94e3          	bne	s9,s5,800063ac <consoleread+0x58>
    80006408:	000b851b          	sext.w	a0,s7
    8000640c:	06813083          	ld	ra,104(sp)
    80006410:	06013403          	ld	s0,96(sp)
    80006414:	05813483          	ld	s1,88(sp)
    80006418:	05013903          	ld	s2,80(sp)
    8000641c:	04813983          	ld	s3,72(sp)
    80006420:	04013a03          	ld	s4,64(sp)
    80006424:	03813a83          	ld	s5,56(sp)
    80006428:	02813b83          	ld	s7,40(sp)
    8000642c:	02013c03          	ld	s8,32(sp)
    80006430:	01813c83          	ld	s9,24(sp)
    80006434:	40ab053b          	subw	a0,s6,a0
    80006438:	03013b03          	ld	s6,48(sp)
    8000643c:	07010113          	addi	sp,sp,112
    80006440:	00008067          	ret
    80006444:	00001097          	auipc	ra,0x1
    80006448:	1d8080e7          	jalr	472(ra) # 8000761c <push_on>
    8000644c:	0984a703          	lw	a4,152(s1)
    80006450:	09c4a783          	lw	a5,156(s1)
    80006454:	0007879b          	sext.w	a5,a5
    80006458:	fef70ce3          	beq	a4,a5,80006450 <consoleread+0xfc>
    8000645c:	00001097          	auipc	ra,0x1
    80006460:	234080e7          	jalr	564(ra) # 80007690 <pop_on>
    80006464:	0984a783          	lw	a5,152(s1)
    80006468:	07f7f713          	andi	a4,a5,127
    8000646c:	00e48733          	add	a4,s1,a4
    80006470:	01874703          	lbu	a4,24(a4)
    80006474:	0017869b          	addiw	a3,a5,1
    80006478:	08d4ac23          	sw	a3,152(s1)
    8000647c:	00070c9b          	sext.w	s9,a4
    80006480:	f5371ee3          	bne	a4,s3,800063dc <consoleread+0x88>
    80006484:	000b851b          	sext.w	a0,s7
    80006488:	f96bf2e3          	bgeu	s7,s6,8000640c <consoleread+0xb8>
    8000648c:	08f4ac23          	sw	a5,152(s1)
    80006490:	f7dff06f          	j	8000640c <consoleread+0xb8>

0000000080006494 <consputc>:
    80006494:	10000793          	li	a5,256
    80006498:	00f50663          	beq	a0,a5,800064a4 <consputc+0x10>
    8000649c:	00001317          	auipc	t1,0x1
    800064a0:	9f430067          	jr	-1548(t1) # 80006e90 <uartputc_sync>
    800064a4:	ff010113          	addi	sp,sp,-16
    800064a8:	00113423          	sd	ra,8(sp)
    800064ac:	00813023          	sd	s0,0(sp)
    800064b0:	01010413          	addi	s0,sp,16
    800064b4:	00800513          	li	a0,8
    800064b8:	00001097          	auipc	ra,0x1
    800064bc:	9d8080e7          	jalr	-1576(ra) # 80006e90 <uartputc_sync>
    800064c0:	02000513          	li	a0,32
    800064c4:	00001097          	auipc	ra,0x1
    800064c8:	9cc080e7          	jalr	-1588(ra) # 80006e90 <uartputc_sync>
    800064cc:	00013403          	ld	s0,0(sp)
    800064d0:	00813083          	ld	ra,8(sp)
    800064d4:	00800513          	li	a0,8
    800064d8:	01010113          	addi	sp,sp,16
    800064dc:	00001317          	auipc	t1,0x1
    800064e0:	9b430067          	jr	-1612(t1) # 80006e90 <uartputc_sync>

00000000800064e4 <consoleintr>:
    800064e4:	fe010113          	addi	sp,sp,-32
    800064e8:	00813823          	sd	s0,16(sp)
    800064ec:	00913423          	sd	s1,8(sp)
    800064f0:	01213023          	sd	s2,0(sp)
    800064f4:	00113c23          	sd	ra,24(sp)
    800064f8:	02010413          	addi	s0,sp,32
    800064fc:	00005917          	auipc	s2,0x5
    80006500:	17c90913          	addi	s2,s2,380 # 8000b678 <cons>
    80006504:	00050493          	mv	s1,a0
    80006508:	00090513          	mv	a0,s2
    8000650c:	00001097          	auipc	ra,0x1
    80006510:	e40080e7          	jalr	-448(ra) # 8000734c <acquire>
    80006514:	02048c63          	beqz	s1,8000654c <consoleintr+0x68>
    80006518:	0a092783          	lw	a5,160(s2)
    8000651c:	09892703          	lw	a4,152(s2)
    80006520:	07f00693          	li	a3,127
    80006524:	40e7873b          	subw	a4,a5,a4
    80006528:	02e6e263          	bltu	a3,a4,8000654c <consoleintr+0x68>
    8000652c:	00d00713          	li	a4,13
    80006530:	04e48063          	beq	s1,a4,80006570 <consoleintr+0x8c>
    80006534:	07f7f713          	andi	a4,a5,127
    80006538:	00e90733          	add	a4,s2,a4
    8000653c:	0017879b          	addiw	a5,a5,1
    80006540:	0af92023          	sw	a5,160(s2)
    80006544:	00970c23          	sb	s1,24(a4)
    80006548:	08f92e23          	sw	a5,156(s2)
    8000654c:	01013403          	ld	s0,16(sp)
    80006550:	01813083          	ld	ra,24(sp)
    80006554:	00813483          	ld	s1,8(sp)
    80006558:	00013903          	ld	s2,0(sp)
    8000655c:	00005517          	auipc	a0,0x5
    80006560:	11c50513          	addi	a0,a0,284 # 8000b678 <cons>
    80006564:	02010113          	addi	sp,sp,32
    80006568:	00001317          	auipc	t1,0x1
    8000656c:	eb030067          	jr	-336(t1) # 80007418 <release>
    80006570:	00a00493          	li	s1,10
    80006574:	fc1ff06f          	j	80006534 <consoleintr+0x50>

0000000080006578 <consoleinit>:
    80006578:	fe010113          	addi	sp,sp,-32
    8000657c:	00113c23          	sd	ra,24(sp)
    80006580:	00813823          	sd	s0,16(sp)
    80006584:	00913423          	sd	s1,8(sp)
    80006588:	02010413          	addi	s0,sp,32
    8000658c:	00005497          	auipc	s1,0x5
    80006590:	0ec48493          	addi	s1,s1,236 # 8000b678 <cons>
    80006594:	00048513          	mv	a0,s1
    80006598:	00002597          	auipc	a1,0x2
    8000659c:	ef858593          	addi	a1,a1,-264 # 80008490 <_ZL6digits+0x150>
    800065a0:	00001097          	auipc	ra,0x1
    800065a4:	d88080e7          	jalr	-632(ra) # 80007328 <initlock>
    800065a8:	00000097          	auipc	ra,0x0
    800065ac:	7ac080e7          	jalr	1964(ra) # 80006d54 <uartinit>
    800065b0:	01813083          	ld	ra,24(sp)
    800065b4:	01013403          	ld	s0,16(sp)
    800065b8:	00000797          	auipc	a5,0x0
    800065bc:	d9c78793          	addi	a5,a5,-612 # 80006354 <consoleread>
    800065c0:	0af4bc23          	sd	a5,184(s1)
    800065c4:	00000797          	auipc	a5,0x0
    800065c8:	cec78793          	addi	a5,a5,-788 # 800062b0 <consolewrite>
    800065cc:	0cf4b023          	sd	a5,192(s1)
    800065d0:	00813483          	ld	s1,8(sp)
    800065d4:	02010113          	addi	sp,sp,32
    800065d8:	00008067          	ret

00000000800065dc <console_read>:
    800065dc:	ff010113          	addi	sp,sp,-16
    800065e0:	00813423          	sd	s0,8(sp)
    800065e4:	01010413          	addi	s0,sp,16
    800065e8:	00813403          	ld	s0,8(sp)
    800065ec:	00005317          	auipc	t1,0x5
    800065f0:	14433303          	ld	t1,324(t1) # 8000b730 <devsw+0x10>
    800065f4:	01010113          	addi	sp,sp,16
    800065f8:	00030067          	jr	t1

00000000800065fc <console_write>:
    800065fc:	ff010113          	addi	sp,sp,-16
    80006600:	00813423          	sd	s0,8(sp)
    80006604:	01010413          	addi	s0,sp,16
    80006608:	00813403          	ld	s0,8(sp)
    8000660c:	00005317          	auipc	t1,0x5
    80006610:	12c33303          	ld	t1,300(t1) # 8000b738 <devsw+0x18>
    80006614:	01010113          	addi	sp,sp,16
    80006618:	00030067          	jr	t1

000000008000661c <panic>:
    8000661c:	fe010113          	addi	sp,sp,-32
    80006620:	00113c23          	sd	ra,24(sp)
    80006624:	00813823          	sd	s0,16(sp)
    80006628:	00913423          	sd	s1,8(sp)
    8000662c:	02010413          	addi	s0,sp,32
    80006630:	00050493          	mv	s1,a0
    80006634:	00002517          	auipc	a0,0x2
    80006638:	e6450513          	addi	a0,a0,-412 # 80008498 <_ZL6digits+0x158>
    8000663c:	00005797          	auipc	a5,0x5
    80006640:	1807ae23          	sw	zero,412(a5) # 8000b7d8 <pr+0x18>
    80006644:	00000097          	auipc	ra,0x0
    80006648:	034080e7          	jalr	52(ra) # 80006678 <__printf>
    8000664c:	00048513          	mv	a0,s1
    80006650:	00000097          	auipc	ra,0x0
    80006654:	028080e7          	jalr	40(ra) # 80006678 <__printf>
    80006658:	00002517          	auipc	a0,0x2
    8000665c:	b2850513          	addi	a0,a0,-1240 # 80008180 <CONSOLE_STATUS+0x170>
    80006660:	00000097          	auipc	ra,0x0
    80006664:	018080e7          	jalr	24(ra) # 80006678 <__printf>
    80006668:	00100793          	li	a5,1
    8000666c:	00004717          	auipc	a4,0x4
    80006670:	e4f72e23          	sw	a5,-420(a4) # 8000a4c8 <panicked>
    80006674:	0000006f          	j	80006674 <panic+0x58>

0000000080006678 <__printf>:
    80006678:	f3010113          	addi	sp,sp,-208
    8000667c:	08813023          	sd	s0,128(sp)
    80006680:	07313423          	sd	s3,104(sp)
    80006684:	09010413          	addi	s0,sp,144
    80006688:	05813023          	sd	s8,64(sp)
    8000668c:	08113423          	sd	ra,136(sp)
    80006690:	06913c23          	sd	s1,120(sp)
    80006694:	07213823          	sd	s2,112(sp)
    80006698:	07413023          	sd	s4,96(sp)
    8000669c:	05513c23          	sd	s5,88(sp)
    800066a0:	05613823          	sd	s6,80(sp)
    800066a4:	05713423          	sd	s7,72(sp)
    800066a8:	03913c23          	sd	s9,56(sp)
    800066ac:	03a13823          	sd	s10,48(sp)
    800066b0:	03b13423          	sd	s11,40(sp)
    800066b4:	00005317          	auipc	t1,0x5
    800066b8:	10c30313          	addi	t1,t1,268 # 8000b7c0 <pr>
    800066bc:	01832c03          	lw	s8,24(t1)
    800066c0:	00b43423          	sd	a1,8(s0)
    800066c4:	00c43823          	sd	a2,16(s0)
    800066c8:	00d43c23          	sd	a3,24(s0)
    800066cc:	02e43023          	sd	a4,32(s0)
    800066d0:	02f43423          	sd	a5,40(s0)
    800066d4:	03043823          	sd	a6,48(s0)
    800066d8:	03143c23          	sd	a7,56(s0)
    800066dc:	00050993          	mv	s3,a0
    800066e0:	4a0c1663          	bnez	s8,80006b8c <__printf+0x514>
    800066e4:	60098c63          	beqz	s3,80006cfc <__printf+0x684>
    800066e8:	0009c503          	lbu	a0,0(s3)
    800066ec:	00840793          	addi	a5,s0,8
    800066f0:	f6f43c23          	sd	a5,-136(s0)
    800066f4:	00000493          	li	s1,0
    800066f8:	22050063          	beqz	a0,80006918 <__printf+0x2a0>
    800066fc:	00002a37          	lui	s4,0x2
    80006700:	00018ab7          	lui	s5,0x18
    80006704:	000f4b37          	lui	s6,0xf4
    80006708:	00989bb7          	lui	s7,0x989
    8000670c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006710:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006714:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006718:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000671c:	00148c9b          	addiw	s9,s1,1
    80006720:	02500793          	li	a5,37
    80006724:	01998933          	add	s2,s3,s9
    80006728:	38f51263          	bne	a0,a5,80006aac <__printf+0x434>
    8000672c:	00094783          	lbu	a5,0(s2)
    80006730:	00078c9b          	sext.w	s9,a5
    80006734:	1e078263          	beqz	a5,80006918 <__printf+0x2a0>
    80006738:	0024849b          	addiw	s1,s1,2
    8000673c:	07000713          	li	a4,112
    80006740:	00998933          	add	s2,s3,s1
    80006744:	38e78a63          	beq	a5,a4,80006ad8 <__printf+0x460>
    80006748:	20f76863          	bltu	a4,a5,80006958 <__printf+0x2e0>
    8000674c:	42a78863          	beq	a5,a0,80006b7c <__printf+0x504>
    80006750:	06400713          	li	a4,100
    80006754:	40e79663          	bne	a5,a4,80006b60 <__printf+0x4e8>
    80006758:	f7843783          	ld	a5,-136(s0)
    8000675c:	0007a603          	lw	a2,0(a5)
    80006760:	00878793          	addi	a5,a5,8
    80006764:	f6f43c23          	sd	a5,-136(s0)
    80006768:	42064a63          	bltz	a2,80006b9c <__printf+0x524>
    8000676c:	00a00713          	li	a4,10
    80006770:	02e677bb          	remuw	a5,a2,a4
    80006774:	00002d97          	auipc	s11,0x2
    80006778:	d4cd8d93          	addi	s11,s11,-692 # 800084c0 <digits>
    8000677c:	00900593          	li	a1,9
    80006780:	0006051b          	sext.w	a0,a2
    80006784:	00000c93          	li	s9,0
    80006788:	02079793          	slli	a5,a5,0x20
    8000678c:	0207d793          	srli	a5,a5,0x20
    80006790:	00fd87b3          	add	a5,s11,a5
    80006794:	0007c783          	lbu	a5,0(a5)
    80006798:	02e656bb          	divuw	a3,a2,a4
    8000679c:	f8f40023          	sb	a5,-128(s0)
    800067a0:	14c5d863          	bge	a1,a2,800068f0 <__printf+0x278>
    800067a4:	06300593          	li	a1,99
    800067a8:	00100c93          	li	s9,1
    800067ac:	02e6f7bb          	remuw	a5,a3,a4
    800067b0:	02079793          	slli	a5,a5,0x20
    800067b4:	0207d793          	srli	a5,a5,0x20
    800067b8:	00fd87b3          	add	a5,s11,a5
    800067bc:	0007c783          	lbu	a5,0(a5)
    800067c0:	02e6d73b          	divuw	a4,a3,a4
    800067c4:	f8f400a3          	sb	a5,-127(s0)
    800067c8:	12a5f463          	bgeu	a1,a0,800068f0 <__printf+0x278>
    800067cc:	00a00693          	li	a3,10
    800067d0:	00900593          	li	a1,9
    800067d4:	02d777bb          	remuw	a5,a4,a3
    800067d8:	02079793          	slli	a5,a5,0x20
    800067dc:	0207d793          	srli	a5,a5,0x20
    800067e0:	00fd87b3          	add	a5,s11,a5
    800067e4:	0007c503          	lbu	a0,0(a5)
    800067e8:	02d757bb          	divuw	a5,a4,a3
    800067ec:	f8a40123          	sb	a0,-126(s0)
    800067f0:	48e5f263          	bgeu	a1,a4,80006c74 <__printf+0x5fc>
    800067f4:	06300513          	li	a0,99
    800067f8:	02d7f5bb          	remuw	a1,a5,a3
    800067fc:	02059593          	slli	a1,a1,0x20
    80006800:	0205d593          	srli	a1,a1,0x20
    80006804:	00bd85b3          	add	a1,s11,a1
    80006808:	0005c583          	lbu	a1,0(a1)
    8000680c:	02d7d7bb          	divuw	a5,a5,a3
    80006810:	f8b401a3          	sb	a1,-125(s0)
    80006814:	48e57263          	bgeu	a0,a4,80006c98 <__printf+0x620>
    80006818:	3e700513          	li	a0,999
    8000681c:	02d7f5bb          	remuw	a1,a5,a3
    80006820:	02059593          	slli	a1,a1,0x20
    80006824:	0205d593          	srli	a1,a1,0x20
    80006828:	00bd85b3          	add	a1,s11,a1
    8000682c:	0005c583          	lbu	a1,0(a1)
    80006830:	02d7d7bb          	divuw	a5,a5,a3
    80006834:	f8b40223          	sb	a1,-124(s0)
    80006838:	46e57663          	bgeu	a0,a4,80006ca4 <__printf+0x62c>
    8000683c:	02d7f5bb          	remuw	a1,a5,a3
    80006840:	02059593          	slli	a1,a1,0x20
    80006844:	0205d593          	srli	a1,a1,0x20
    80006848:	00bd85b3          	add	a1,s11,a1
    8000684c:	0005c583          	lbu	a1,0(a1)
    80006850:	02d7d7bb          	divuw	a5,a5,a3
    80006854:	f8b402a3          	sb	a1,-123(s0)
    80006858:	46ea7863          	bgeu	s4,a4,80006cc8 <__printf+0x650>
    8000685c:	02d7f5bb          	remuw	a1,a5,a3
    80006860:	02059593          	slli	a1,a1,0x20
    80006864:	0205d593          	srli	a1,a1,0x20
    80006868:	00bd85b3          	add	a1,s11,a1
    8000686c:	0005c583          	lbu	a1,0(a1)
    80006870:	02d7d7bb          	divuw	a5,a5,a3
    80006874:	f8b40323          	sb	a1,-122(s0)
    80006878:	3eeaf863          	bgeu	s5,a4,80006c68 <__printf+0x5f0>
    8000687c:	02d7f5bb          	remuw	a1,a5,a3
    80006880:	02059593          	slli	a1,a1,0x20
    80006884:	0205d593          	srli	a1,a1,0x20
    80006888:	00bd85b3          	add	a1,s11,a1
    8000688c:	0005c583          	lbu	a1,0(a1)
    80006890:	02d7d7bb          	divuw	a5,a5,a3
    80006894:	f8b403a3          	sb	a1,-121(s0)
    80006898:	42eb7e63          	bgeu	s6,a4,80006cd4 <__printf+0x65c>
    8000689c:	02d7f5bb          	remuw	a1,a5,a3
    800068a0:	02059593          	slli	a1,a1,0x20
    800068a4:	0205d593          	srli	a1,a1,0x20
    800068a8:	00bd85b3          	add	a1,s11,a1
    800068ac:	0005c583          	lbu	a1,0(a1)
    800068b0:	02d7d7bb          	divuw	a5,a5,a3
    800068b4:	f8b40423          	sb	a1,-120(s0)
    800068b8:	42ebfc63          	bgeu	s7,a4,80006cf0 <__printf+0x678>
    800068bc:	02079793          	slli	a5,a5,0x20
    800068c0:	0207d793          	srli	a5,a5,0x20
    800068c4:	00fd8db3          	add	s11,s11,a5
    800068c8:	000dc703          	lbu	a4,0(s11)
    800068cc:	00a00793          	li	a5,10
    800068d0:	00900c93          	li	s9,9
    800068d4:	f8e404a3          	sb	a4,-119(s0)
    800068d8:	00065c63          	bgez	a2,800068f0 <__printf+0x278>
    800068dc:	f9040713          	addi	a4,s0,-112
    800068e0:	00f70733          	add	a4,a4,a5
    800068e4:	02d00693          	li	a3,45
    800068e8:	fed70823          	sb	a3,-16(a4)
    800068ec:	00078c93          	mv	s9,a5
    800068f0:	f8040793          	addi	a5,s0,-128
    800068f4:	01978cb3          	add	s9,a5,s9
    800068f8:	f7f40d13          	addi	s10,s0,-129
    800068fc:	000cc503          	lbu	a0,0(s9)
    80006900:	fffc8c93          	addi	s9,s9,-1
    80006904:	00000097          	auipc	ra,0x0
    80006908:	b90080e7          	jalr	-1136(ra) # 80006494 <consputc>
    8000690c:	ffac98e3          	bne	s9,s10,800068fc <__printf+0x284>
    80006910:	00094503          	lbu	a0,0(s2)
    80006914:	e00514e3          	bnez	a0,8000671c <__printf+0xa4>
    80006918:	1a0c1663          	bnez	s8,80006ac4 <__printf+0x44c>
    8000691c:	08813083          	ld	ra,136(sp)
    80006920:	08013403          	ld	s0,128(sp)
    80006924:	07813483          	ld	s1,120(sp)
    80006928:	07013903          	ld	s2,112(sp)
    8000692c:	06813983          	ld	s3,104(sp)
    80006930:	06013a03          	ld	s4,96(sp)
    80006934:	05813a83          	ld	s5,88(sp)
    80006938:	05013b03          	ld	s6,80(sp)
    8000693c:	04813b83          	ld	s7,72(sp)
    80006940:	04013c03          	ld	s8,64(sp)
    80006944:	03813c83          	ld	s9,56(sp)
    80006948:	03013d03          	ld	s10,48(sp)
    8000694c:	02813d83          	ld	s11,40(sp)
    80006950:	0d010113          	addi	sp,sp,208
    80006954:	00008067          	ret
    80006958:	07300713          	li	a4,115
    8000695c:	1ce78a63          	beq	a5,a4,80006b30 <__printf+0x4b8>
    80006960:	07800713          	li	a4,120
    80006964:	1ee79e63          	bne	a5,a4,80006b60 <__printf+0x4e8>
    80006968:	f7843783          	ld	a5,-136(s0)
    8000696c:	0007a703          	lw	a4,0(a5)
    80006970:	00878793          	addi	a5,a5,8
    80006974:	f6f43c23          	sd	a5,-136(s0)
    80006978:	28074263          	bltz	a4,80006bfc <__printf+0x584>
    8000697c:	00002d97          	auipc	s11,0x2
    80006980:	b44d8d93          	addi	s11,s11,-1212 # 800084c0 <digits>
    80006984:	00f77793          	andi	a5,a4,15
    80006988:	00fd87b3          	add	a5,s11,a5
    8000698c:	0007c683          	lbu	a3,0(a5)
    80006990:	00f00613          	li	a2,15
    80006994:	0007079b          	sext.w	a5,a4
    80006998:	f8d40023          	sb	a3,-128(s0)
    8000699c:	0047559b          	srliw	a1,a4,0x4
    800069a0:	0047569b          	srliw	a3,a4,0x4
    800069a4:	00000c93          	li	s9,0
    800069a8:	0ee65063          	bge	a2,a4,80006a88 <__printf+0x410>
    800069ac:	00f6f693          	andi	a3,a3,15
    800069b0:	00dd86b3          	add	a3,s11,a3
    800069b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800069b8:	0087d79b          	srliw	a5,a5,0x8
    800069bc:	00100c93          	li	s9,1
    800069c0:	f8d400a3          	sb	a3,-127(s0)
    800069c4:	0cb67263          	bgeu	a2,a1,80006a88 <__printf+0x410>
    800069c8:	00f7f693          	andi	a3,a5,15
    800069cc:	00dd86b3          	add	a3,s11,a3
    800069d0:	0006c583          	lbu	a1,0(a3)
    800069d4:	00f00613          	li	a2,15
    800069d8:	0047d69b          	srliw	a3,a5,0x4
    800069dc:	f8b40123          	sb	a1,-126(s0)
    800069e0:	0047d593          	srli	a1,a5,0x4
    800069e4:	28f67e63          	bgeu	a2,a5,80006c80 <__printf+0x608>
    800069e8:	00f6f693          	andi	a3,a3,15
    800069ec:	00dd86b3          	add	a3,s11,a3
    800069f0:	0006c503          	lbu	a0,0(a3)
    800069f4:	0087d813          	srli	a6,a5,0x8
    800069f8:	0087d69b          	srliw	a3,a5,0x8
    800069fc:	f8a401a3          	sb	a0,-125(s0)
    80006a00:	28b67663          	bgeu	a2,a1,80006c8c <__printf+0x614>
    80006a04:	00f6f693          	andi	a3,a3,15
    80006a08:	00dd86b3          	add	a3,s11,a3
    80006a0c:	0006c583          	lbu	a1,0(a3)
    80006a10:	00c7d513          	srli	a0,a5,0xc
    80006a14:	00c7d69b          	srliw	a3,a5,0xc
    80006a18:	f8b40223          	sb	a1,-124(s0)
    80006a1c:	29067a63          	bgeu	a2,a6,80006cb0 <__printf+0x638>
    80006a20:	00f6f693          	andi	a3,a3,15
    80006a24:	00dd86b3          	add	a3,s11,a3
    80006a28:	0006c583          	lbu	a1,0(a3)
    80006a2c:	0107d813          	srli	a6,a5,0x10
    80006a30:	0107d69b          	srliw	a3,a5,0x10
    80006a34:	f8b402a3          	sb	a1,-123(s0)
    80006a38:	28a67263          	bgeu	a2,a0,80006cbc <__printf+0x644>
    80006a3c:	00f6f693          	andi	a3,a3,15
    80006a40:	00dd86b3          	add	a3,s11,a3
    80006a44:	0006c683          	lbu	a3,0(a3)
    80006a48:	0147d79b          	srliw	a5,a5,0x14
    80006a4c:	f8d40323          	sb	a3,-122(s0)
    80006a50:	21067663          	bgeu	a2,a6,80006c5c <__printf+0x5e4>
    80006a54:	02079793          	slli	a5,a5,0x20
    80006a58:	0207d793          	srli	a5,a5,0x20
    80006a5c:	00fd8db3          	add	s11,s11,a5
    80006a60:	000dc683          	lbu	a3,0(s11)
    80006a64:	00800793          	li	a5,8
    80006a68:	00700c93          	li	s9,7
    80006a6c:	f8d403a3          	sb	a3,-121(s0)
    80006a70:	00075c63          	bgez	a4,80006a88 <__printf+0x410>
    80006a74:	f9040713          	addi	a4,s0,-112
    80006a78:	00f70733          	add	a4,a4,a5
    80006a7c:	02d00693          	li	a3,45
    80006a80:	fed70823          	sb	a3,-16(a4)
    80006a84:	00078c93          	mv	s9,a5
    80006a88:	f8040793          	addi	a5,s0,-128
    80006a8c:	01978cb3          	add	s9,a5,s9
    80006a90:	f7f40d13          	addi	s10,s0,-129
    80006a94:	000cc503          	lbu	a0,0(s9)
    80006a98:	fffc8c93          	addi	s9,s9,-1
    80006a9c:	00000097          	auipc	ra,0x0
    80006aa0:	9f8080e7          	jalr	-1544(ra) # 80006494 <consputc>
    80006aa4:	ff9d18e3          	bne	s10,s9,80006a94 <__printf+0x41c>
    80006aa8:	0100006f          	j	80006ab8 <__printf+0x440>
    80006aac:	00000097          	auipc	ra,0x0
    80006ab0:	9e8080e7          	jalr	-1560(ra) # 80006494 <consputc>
    80006ab4:	000c8493          	mv	s1,s9
    80006ab8:	00094503          	lbu	a0,0(s2)
    80006abc:	c60510e3          	bnez	a0,8000671c <__printf+0xa4>
    80006ac0:	e40c0ee3          	beqz	s8,8000691c <__printf+0x2a4>
    80006ac4:	00005517          	auipc	a0,0x5
    80006ac8:	cfc50513          	addi	a0,a0,-772 # 8000b7c0 <pr>
    80006acc:	00001097          	auipc	ra,0x1
    80006ad0:	94c080e7          	jalr	-1716(ra) # 80007418 <release>
    80006ad4:	e49ff06f          	j	8000691c <__printf+0x2a4>
    80006ad8:	f7843783          	ld	a5,-136(s0)
    80006adc:	03000513          	li	a0,48
    80006ae0:	01000d13          	li	s10,16
    80006ae4:	00878713          	addi	a4,a5,8
    80006ae8:	0007bc83          	ld	s9,0(a5)
    80006aec:	f6e43c23          	sd	a4,-136(s0)
    80006af0:	00000097          	auipc	ra,0x0
    80006af4:	9a4080e7          	jalr	-1628(ra) # 80006494 <consputc>
    80006af8:	07800513          	li	a0,120
    80006afc:	00000097          	auipc	ra,0x0
    80006b00:	998080e7          	jalr	-1640(ra) # 80006494 <consputc>
    80006b04:	00002d97          	auipc	s11,0x2
    80006b08:	9bcd8d93          	addi	s11,s11,-1604 # 800084c0 <digits>
    80006b0c:	03ccd793          	srli	a5,s9,0x3c
    80006b10:	00fd87b3          	add	a5,s11,a5
    80006b14:	0007c503          	lbu	a0,0(a5)
    80006b18:	fffd0d1b          	addiw	s10,s10,-1
    80006b1c:	004c9c93          	slli	s9,s9,0x4
    80006b20:	00000097          	auipc	ra,0x0
    80006b24:	974080e7          	jalr	-1676(ra) # 80006494 <consputc>
    80006b28:	fe0d12e3          	bnez	s10,80006b0c <__printf+0x494>
    80006b2c:	f8dff06f          	j	80006ab8 <__printf+0x440>
    80006b30:	f7843783          	ld	a5,-136(s0)
    80006b34:	0007bc83          	ld	s9,0(a5)
    80006b38:	00878793          	addi	a5,a5,8
    80006b3c:	f6f43c23          	sd	a5,-136(s0)
    80006b40:	000c9a63          	bnez	s9,80006b54 <__printf+0x4dc>
    80006b44:	1080006f          	j	80006c4c <__printf+0x5d4>
    80006b48:	001c8c93          	addi	s9,s9,1
    80006b4c:	00000097          	auipc	ra,0x0
    80006b50:	948080e7          	jalr	-1720(ra) # 80006494 <consputc>
    80006b54:	000cc503          	lbu	a0,0(s9)
    80006b58:	fe0518e3          	bnez	a0,80006b48 <__printf+0x4d0>
    80006b5c:	f5dff06f          	j	80006ab8 <__printf+0x440>
    80006b60:	02500513          	li	a0,37
    80006b64:	00000097          	auipc	ra,0x0
    80006b68:	930080e7          	jalr	-1744(ra) # 80006494 <consputc>
    80006b6c:	000c8513          	mv	a0,s9
    80006b70:	00000097          	auipc	ra,0x0
    80006b74:	924080e7          	jalr	-1756(ra) # 80006494 <consputc>
    80006b78:	f41ff06f          	j	80006ab8 <__printf+0x440>
    80006b7c:	02500513          	li	a0,37
    80006b80:	00000097          	auipc	ra,0x0
    80006b84:	914080e7          	jalr	-1772(ra) # 80006494 <consputc>
    80006b88:	f31ff06f          	j	80006ab8 <__printf+0x440>
    80006b8c:	00030513          	mv	a0,t1
    80006b90:	00000097          	auipc	ra,0x0
    80006b94:	7bc080e7          	jalr	1980(ra) # 8000734c <acquire>
    80006b98:	b4dff06f          	j	800066e4 <__printf+0x6c>
    80006b9c:	40c0053b          	negw	a0,a2
    80006ba0:	00a00713          	li	a4,10
    80006ba4:	02e576bb          	remuw	a3,a0,a4
    80006ba8:	00002d97          	auipc	s11,0x2
    80006bac:	918d8d93          	addi	s11,s11,-1768 # 800084c0 <digits>
    80006bb0:	ff700593          	li	a1,-9
    80006bb4:	02069693          	slli	a3,a3,0x20
    80006bb8:	0206d693          	srli	a3,a3,0x20
    80006bbc:	00dd86b3          	add	a3,s11,a3
    80006bc0:	0006c683          	lbu	a3,0(a3)
    80006bc4:	02e557bb          	divuw	a5,a0,a4
    80006bc8:	f8d40023          	sb	a3,-128(s0)
    80006bcc:	10b65e63          	bge	a2,a1,80006ce8 <__printf+0x670>
    80006bd0:	06300593          	li	a1,99
    80006bd4:	02e7f6bb          	remuw	a3,a5,a4
    80006bd8:	02069693          	slli	a3,a3,0x20
    80006bdc:	0206d693          	srli	a3,a3,0x20
    80006be0:	00dd86b3          	add	a3,s11,a3
    80006be4:	0006c683          	lbu	a3,0(a3)
    80006be8:	02e7d73b          	divuw	a4,a5,a4
    80006bec:	00200793          	li	a5,2
    80006bf0:	f8d400a3          	sb	a3,-127(s0)
    80006bf4:	bca5ece3          	bltu	a1,a0,800067cc <__printf+0x154>
    80006bf8:	ce5ff06f          	j	800068dc <__printf+0x264>
    80006bfc:	40e007bb          	negw	a5,a4
    80006c00:	00002d97          	auipc	s11,0x2
    80006c04:	8c0d8d93          	addi	s11,s11,-1856 # 800084c0 <digits>
    80006c08:	00f7f693          	andi	a3,a5,15
    80006c0c:	00dd86b3          	add	a3,s11,a3
    80006c10:	0006c583          	lbu	a1,0(a3)
    80006c14:	ff100613          	li	a2,-15
    80006c18:	0047d69b          	srliw	a3,a5,0x4
    80006c1c:	f8b40023          	sb	a1,-128(s0)
    80006c20:	0047d59b          	srliw	a1,a5,0x4
    80006c24:	0ac75e63          	bge	a4,a2,80006ce0 <__printf+0x668>
    80006c28:	00f6f693          	andi	a3,a3,15
    80006c2c:	00dd86b3          	add	a3,s11,a3
    80006c30:	0006c603          	lbu	a2,0(a3)
    80006c34:	00f00693          	li	a3,15
    80006c38:	0087d79b          	srliw	a5,a5,0x8
    80006c3c:	f8c400a3          	sb	a2,-127(s0)
    80006c40:	d8b6e4e3          	bltu	a3,a1,800069c8 <__printf+0x350>
    80006c44:	00200793          	li	a5,2
    80006c48:	e2dff06f          	j	80006a74 <__printf+0x3fc>
    80006c4c:	00002c97          	auipc	s9,0x2
    80006c50:	854c8c93          	addi	s9,s9,-1964 # 800084a0 <_ZL6digits+0x160>
    80006c54:	02800513          	li	a0,40
    80006c58:	ef1ff06f          	j	80006b48 <__printf+0x4d0>
    80006c5c:	00700793          	li	a5,7
    80006c60:	00600c93          	li	s9,6
    80006c64:	e0dff06f          	j	80006a70 <__printf+0x3f8>
    80006c68:	00700793          	li	a5,7
    80006c6c:	00600c93          	li	s9,6
    80006c70:	c69ff06f          	j	800068d8 <__printf+0x260>
    80006c74:	00300793          	li	a5,3
    80006c78:	00200c93          	li	s9,2
    80006c7c:	c5dff06f          	j	800068d8 <__printf+0x260>
    80006c80:	00300793          	li	a5,3
    80006c84:	00200c93          	li	s9,2
    80006c88:	de9ff06f          	j	80006a70 <__printf+0x3f8>
    80006c8c:	00400793          	li	a5,4
    80006c90:	00300c93          	li	s9,3
    80006c94:	dddff06f          	j	80006a70 <__printf+0x3f8>
    80006c98:	00400793          	li	a5,4
    80006c9c:	00300c93          	li	s9,3
    80006ca0:	c39ff06f          	j	800068d8 <__printf+0x260>
    80006ca4:	00500793          	li	a5,5
    80006ca8:	00400c93          	li	s9,4
    80006cac:	c2dff06f          	j	800068d8 <__printf+0x260>
    80006cb0:	00500793          	li	a5,5
    80006cb4:	00400c93          	li	s9,4
    80006cb8:	db9ff06f          	j	80006a70 <__printf+0x3f8>
    80006cbc:	00600793          	li	a5,6
    80006cc0:	00500c93          	li	s9,5
    80006cc4:	dadff06f          	j	80006a70 <__printf+0x3f8>
    80006cc8:	00600793          	li	a5,6
    80006ccc:	00500c93          	li	s9,5
    80006cd0:	c09ff06f          	j	800068d8 <__printf+0x260>
    80006cd4:	00800793          	li	a5,8
    80006cd8:	00700c93          	li	s9,7
    80006cdc:	bfdff06f          	j	800068d8 <__printf+0x260>
    80006ce0:	00100793          	li	a5,1
    80006ce4:	d91ff06f          	j	80006a74 <__printf+0x3fc>
    80006ce8:	00100793          	li	a5,1
    80006cec:	bf1ff06f          	j	800068dc <__printf+0x264>
    80006cf0:	00900793          	li	a5,9
    80006cf4:	00800c93          	li	s9,8
    80006cf8:	be1ff06f          	j	800068d8 <__printf+0x260>
    80006cfc:	00001517          	auipc	a0,0x1
    80006d00:	7ac50513          	addi	a0,a0,1964 # 800084a8 <_ZL6digits+0x168>
    80006d04:	00000097          	auipc	ra,0x0
    80006d08:	918080e7          	jalr	-1768(ra) # 8000661c <panic>

0000000080006d0c <printfinit>:
    80006d0c:	fe010113          	addi	sp,sp,-32
    80006d10:	00813823          	sd	s0,16(sp)
    80006d14:	00913423          	sd	s1,8(sp)
    80006d18:	00113c23          	sd	ra,24(sp)
    80006d1c:	02010413          	addi	s0,sp,32
    80006d20:	00005497          	auipc	s1,0x5
    80006d24:	aa048493          	addi	s1,s1,-1376 # 8000b7c0 <pr>
    80006d28:	00048513          	mv	a0,s1
    80006d2c:	00001597          	auipc	a1,0x1
    80006d30:	78c58593          	addi	a1,a1,1932 # 800084b8 <_ZL6digits+0x178>
    80006d34:	00000097          	auipc	ra,0x0
    80006d38:	5f4080e7          	jalr	1524(ra) # 80007328 <initlock>
    80006d3c:	01813083          	ld	ra,24(sp)
    80006d40:	01013403          	ld	s0,16(sp)
    80006d44:	0004ac23          	sw	zero,24(s1)
    80006d48:	00813483          	ld	s1,8(sp)
    80006d4c:	02010113          	addi	sp,sp,32
    80006d50:	00008067          	ret

0000000080006d54 <uartinit>:
    80006d54:	ff010113          	addi	sp,sp,-16
    80006d58:	00813423          	sd	s0,8(sp)
    80006d5c:	01010413          	addi	s0,sp,16
    80006d60:	100007b7          	lui	a5,0x10000
    80006d64:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006d68:	f8000713          	li	a4,-128
    80006d6c:	00e781a3          	sb	a4,3(a5)
    80006d70:	00300713          	li	a4,3
    80006d74:	00e78023          	sb	a4,0(a5)
    80006d78:	000780a3          	sb	zero,1(a5)
    80006d7c:	00e781a3          	sb	a4,3(a5)
    80006d80:	00700693          	li	a3,7
    80006d84:	00d78123          	sb	a3,2(a5)
    80006d88:	00e780a3          	sb	a4,1(a5)
    80006d8c:	00813403          	ld	s0,8(sp)
    80006d90:	01010113          	addi	sp,sp,16
    80006d94:	00008067          	ret

0000000080006d98 <uartputc>:
    80006d98:	00003797          	auipc	a5,0x3
    80006d9c:	7307a783          	lw	a5,1840(a5) # 8000a4c8 <panicked>
    80006da0:	00078463          	beqz	a5,80006da8 <uartputc+0x10>
    80006da4:	0000006f          	j	80006da4 <uartputc+0xc>
    80006da8:	fd010113          	addi	sp,sp,-48
    80006dac:	02813023          	sd	s0,32(sp)
    80006db0:	00913c23          	sd	s1,24(sp)
    80006db4:	01213823          	sd	s2,16(sp)
    80006db8:	01313423          	sd	s3,8(sp)
    80006dbc:	02113423          	sd	ra,40(sp)
    80006dc0:	03010413          	addi	s0,sp,48
    80006dc4:	00003917          	auipc	s2,0x3
    80006dc8:	70c90913          	addi	s2,s2,1804 # 8000a4d0 <uart_tx_r>
    80006dcc:	00093783          	ld	a5,0(s2)
    80006dd0:	00003497          	auipc	s1,0x3
    80006dd4:	70848493          	addi	s1,s1,1800 # 8000a4d8 <uart_tx_w>
    80006dd8:	0004b703          	ld	a4,0(s1)
    80006ddc:	02078693          	addi	a3,a5,32
    80006de0:	00050993          	mv	s3,a0
    80006de4:	02e69c63          	bne	a3,a4,80006e1c <uartputc+0x84>
    80006de8:	00001097          	auipc	ra,0x1
    80006dec:	834080e7          	jalr	-1996(ra) # 8000761c <push_on>
    80006df0:	00093783          	ld	a5,0(s2)
    80006df4:	0004b703          	ld	a4,0(s1)
    80006df8:	02078793          	addi	a5,a5,32
    80006dfc:	00e79463          	bne	a5,a4,80006e04 <uartputc+0x6c>
    80006e00:	0000006f          	j	80006e00 <uartputc+0x68>
    80006e04:	00001097          	auipc	ra,0x1
    80006e08:	88c080e7          	jalr	-1908(ra) # 80007690 <pop_on>
    80006e0c:	00093783          	ld	a5,0(s2)
    80006e10:	0004b703          	ld	a4,0(s1)
    80006e14:	02078693          	addi	a3,a5,32
    80006e18:	fce688e3          	beq	a3,a4,80006de8 <uartputc+0x50>
    80006e1c:	01f77693          	andi	a3,a4,31
    80006e20:	00005597          	auipc	a1,0x5
    80006e24:	9c058593          	addi	a1,a1,-1600 # 8000b7e0 <uart_tx_buf>
    80006e28:	00d586b3          	add	a3,a1,a3
    80006e2c:	00170713          	addi	a4,a4,1
    80006e30:	01368023          	sb	s3,0(a3)
    80006e34:	00e4b023          	sd	a4,0(s1)
    80006e38:	10000637          	lui	a2,0x10000
    80006e3c:	02f71063          	bne	a4,a5,80006e5c <uartputc+0xc4>
    80006e40:	0340006f          	j	80006e74 <uartputc+0xdc>
    80006e44:	00074703          	lbu	a4,0(a4)
    80006e48:	00f93023          	sd	a5,0(s2)
    80006e4c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006e50:	00093783          	ld	a5,0(s2)
    80006e54:	0004b703          	ld	a4,0(s1)
    80006e58:	00f70e63          	beq	a4,a5,80006e74 <uartputc+0xdc>
    80006e5c:	00564683          	lbu	a3,5(a2)
    80006e60:	01f7f713          	andi	a4,a5,31
    80006e64:	00e58733          	add	a4,a1,a4
    80006e68:	0206f693          	andi	a3,a3,32
    80006e6c:	00178793          	addi	a5,a5,1
    80006e70:	fc069ae3          	bnez	a3,80006e44 <uartputc+0xac>
    80006e74:	02813083          	ld	ra,40(sp)
    80006e78:	02013403          	ld	s0,32(sp)
    80006e7c:	01813483          	ld	s1,24(sp)
    80006e80:	01013903          	ld	s2,16(sp)
    80006e84:	00813983          	ld	s3,8(sp)
    80006e88:	03010113          	addi	sp,sp,48
    80006e8c:	00008067          	ret

0000000080006e90 <uartputc_sync>:
    80006e90:	ff010113          	addi	sp,sp,-16
    80006e94:	00813423          	sd	s0,8(sp)
    80006e98:	01010413          	addi	s0,sp,16
    80006e9c:	00003717          	auipc	a4,0x3
    80006ea0:	62c72703          	lw	a4,1580(a4) # 8000a4c8 <panicked>
    80006ea4:	02071663          	bnez	a4,80006ed0 <uartputc_sync+0x40>
    80006ea8:	00050793          	mv	a5,a0
    80006eac:	100006b7          	lui	a3,0x10000
    80006eb0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006eb4:	02077713          	andi	a4,a4,32
    80006eb8:	fe070ce3          	beqz	a4,80006eb0 <uartputc_sync+0x20>
    80006ebc:	0ff7f793          	andi	a5,a5,255
    80006ec0:	00f68023          	sb	a5,0(a3)
    80006ec4:	00813403          	ld	s0,8(sp)
    80006ec8:	01010113          	addi	sp,sp,16
    80006ecc:	00008067          	ret
    80006ed0:	0000006f          	j	80006ed0 <uartputc_sync+0x40>

0000000080006ed4 <uartstart>:
    80006ed4:	ff010113          	addi	sp,sp,-16
    80006ed8:	00813423          	sd	s0,8(sp)
    80006edc:	01010413          	addi	s0,sp,16
    80006ee0:	00003617          	auipc	a2,0x3
    80006ee4:	5f060613          	addi	a2,a2,1520 # 8000a4d0 <uart_tx_r>
    80006ee8:	00003517          	auipc	a0,0x3
    80006eec:	5f050513          	addi	a0,a0,1520 # 8000a4d8 <uart_tx_w>
    80006ef0:	00063783          	ld	a5,0(a2)
    80006ef4:	00053703          	ld	a4,0(a0)
    80006ef8:	04f70263          	beq	a4,a5,80006f3c <uartstart+0x68>
    80006efc:	100005b7          	lui	a1,0x10000
    80006f00:	00005817          	auipc	a6,0x5
    80006f04:	8e080813          	addi	a6,a6,-1824 # 8000b7e0 <uart_tx_buf>
    80006f08:	01c0006f          	j	80006f24 <uartstart+0x50>
    80006f0c:	0006c703          	lbu	a4,0(a3)
    80006f10:	00f63023          	sd	a5,0(a2)
    80006f14:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006f18:	00063783          	ld	a5,0(a2)
    80006f1c:	00053703          	ld	a4,0(a0)
    80006f20:	00f70e63          	beq	a4,a5,80006f3c <uartstart+0x68>
    80006f24:	01f7f713          	andi	a4,a5,31
    80006f28:	00e806b3          	add	a3,a6,a4
    80006f2c:	0055c703          	lbu	a4,5(a1)
    80006f30:	00178793          	addi	a5,a5,1
    80006f34:	02077713          	andi	a4,a4,32
    80006f38:	fc071ae3          	bnez	a4,80006f0c <uartstart+0x38>
    80006f3c:	00813403          	ld	s0,8(sp)
    80006f40:	01010113          	addi	sp,sp,16
    80006f44:	00008067          	ret

0000000080006f48 <uartgetc>:
    80006f48:	ff010113          	addi	sp,sp,-16
    80006f4c:	00813423          	sd	s0,8(sp)
    80006f50:	01010413          	addi	s0,sp,16
    80006f54:	10000737          	lui	a4,0x10000
    80006f58:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006f5c:	0017f793          	andi	a5,a5,1
    80006f60:	00078c63          	beqz	a5,80006f78 <uartgetc+0x30>
    80006f64:	00074503          	lbu	a0,0(a4)
    80006f68:	0ff57513          	andi	a0,a0,255
    80006f6c:	00813403          	ld	s0,8(sp)
    80006f70:	01010113          	addi	sp,sp,16
    80006f74:	00008067          	ret
    80006f78:	fff00513          	li	a0,-1
    80006f7c:	ff1ff06f          	j	80006f6c <uartgetc+0x24>

0000000080006f80 <uartintr>:
    80006f80:	100007b7          	lui	a5,0x10000
    80006f84:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006f88:	0017f793          	andi	a5,a5,1
    80006f8c:	0a078463          	beqz	a5,80007034 <uartintr+0xb4>
    80006f90:	fe010113          	addi	sp,sp,-32
    80006f94:	00813823          	sd	s0,16(sp)
    80006f98:	00913423          	sd	s1,8(sp)
    80006f9c:	00113c23          	sd	ra,24(sp)
    80006fa0:	02010413          	addi	s0,sp,32
    80006fa4:	100004b7          	lui	s1,0x10000
    80006fa8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006fac:	0ff57513          	andi	a0,a0,255
    80006fb0:	fffff097          	auipc	ra,0xfffff
    80006fb4:	534080e7          	jalr	1332(ra) # 800064e4 <consoleintr>
    80006fb8:	0054c783          	lbu	a5,5(s1)
    80006fbc:	0017f793          	andi	a5,a5,1
    80006fc0:	fe0794e3          	bnez	a5,80006fa8 <uartintr+0x28>
    80006fc4:	00003617          	auipc	a2,0x3
    80006fc8:	50c60613          	addi	a2,a2,1292 # 8000a4d0 <uart_tx_r>
    80006fcc:	00003517          	auipc	a0,0x3
    80006fd0:	50c50513          	addi	a0,a0,1292 # 8000a4d8 <uart_tx_w>
    80006fd4:	00063783          	ld	a5,0(a2)
    80006fd8:	00053703          	ld	a4,0(a0)
    80006fdc:	04f70263          	beq	a4,a5,80007020 <uartintr+0xa0>
    80006fe0:	100005b7          	lui	a1,0x10000
    80006fe4:	00004817          	auipc	a6,0x4
    80006fe8:	7fc80813          	addi	a6,a6,2044 # 8000b7e0 <uart_tx_buf>
    80006fec:	01c0006f          	j	80007008 <uartintr+0x88>
    80006ff0:	0006c703          	lbu	a4,0(a3)
    80006ff4:	00f63023          	sd	a5,0(a2)
    80006ff8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006ffc:	00063783          	ld	a5,0(a2)
    80007000:	00053703          	ld	a4,0(a0)
    80007004:	00f70e63          	beq	a4,a5,80007020 <uartintr+0xa0>
    80007008:	01f7f713          	andi	a4,a5,31
    8000700c:	00e806b3          	add	a3,a6,a4
    80007010:	0055c703          	lbu	a4,5(a1)
    80007014:	00178793          	addi	a5,a5,1
    80007018:	02077713          	andi	a4,a4,32
    8000701c:	fc071ae3          	bnez	a4,80006ff0 <uartintr+0x70>
    80007020:	01813083          	ld	ra,24(sp)
    80007024:	01013403          	ld	s0,16(sp)
    80007028:	00813483          	ld	s1,8(sp)
    8000702c:	02010113          	addi	sp,sp,32
    80007030:	00008067          	ret
    80007034:	00003617          	auipc	a2,0x3
    80007038:	49c60613          	addi	a2,a2,1180 # 8000a4d0 <uart_tx_r>
    8000703c:	00003517          	auipc	a0,0x3
    80007040:	49c50513          	addi	a0,a0,1180 # 8000a4d8 <uart_tx_w>
    80007044:	00063783          	ld	a5,0(a2)
    80007048:	00053703          	ld	a4,0(a0)
    8000704c:	04f70263          	beq	a4,a5,80007090 <uartintr+0x110>
    80007050:	100005b7          	lui	a1,0x10000
    80007054:	00004817          	auipc	a6,0x4
    80007058:	78c80813          	addi	a6,a6,1932 # 8000b7e0 <uart_tx_buf>
    8000705c:	01c0006f          	j	80007078 <uartintr+0xf8>
    80007060:	0006c703          	lbu	a4,0(a3)
    80007064:	00f63023          	sd	a5,0(a2)
    80007068:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000706c:	00063783          	ld	a5,0(a2)
    80007070:	00053703          	ld	a4,0(a0)
    80007074:	02f70063          	beq	a4,a5,80007094 <uartintr+0x114>
    80007078:	01f7f713          	andi	a4,a5,31
    8000707c:	00e806b3          	add	a3,a6,a4
    80007080:	0055c703          	lbu	a4,5(a1)
    80007084:	00178793          	addi	a5,a5,1
    80007088:	02077713          	andi	a4,a4,32
    8000708c:	fc071ae3          	bnez	a4,80007060 <uartintr+0xe0>
    80007090:	00008067          	ret
    80007094:	00008067          	ret

0000000080007098 <kinit>:
    80007098:	fc010113          	addi	sp,sp,-64
    8000709c:	02913423          	sd	s1,40(sp)
    800070a0:	fffff7b7          	lui	a5,0xfffff
    800070a4:	00005497          	auipc	s1,0x5
    800070a8:	75b48493          	addi	s1,s1,1883 # 8000c7ff <end+0xfff>
    800070ac:	02813823          	sd	s0,48(sp)
    800070b0:	01313c23          	sd	s3,24(sp)
    800070b4:	00f4f4b3          	and	s1,s1,a5
    800070b8:	02113c23          	sd	ra,56(sp)
    800070bc:	03213023          	sd	s2,32(sp)
    800070c0:	01413823          	sd	s4,16(sp)
    800070c4:	01513423          	sd	s5,8(sp)
    800070c8:	04010413          	addi	s0,sp,64
    800070cc:	000017b7          	lui	a5,0x1
    800070d0:	01100993          	li	s3,17
    800070d4:	00f487b3          	add	a5,s1,a5
    800070d8:	01b99993          	slli	s3,s3,0x1b
    800070dc:	06f9e063          	bltu	s3,a5,8000713c <kinit+0xa4>
    800070e0:	00004a97          	auipc	s5,0x4
    800070e4:	720a8a93          	addi	s5,s5,1824 # 8000b800 <end>
    800070e8:	0754ec63          	bltu	s1,s5,80007160 <kinit+0xc8>
    800070ec:	0734fa63          	bgeu	s1,s3,80007160 <kinit+0xc8>
    800070f0:	00088a37          	lui	s4,0x88
    800070f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800070f8:	00003917          	auipc	s2,0x3
    800070fc:	3e890913          	addi	s2,s2,1000 # 8000a4e0 <kmem>
    80007100:	00ca1a13          	slli	s4,s4,0xc
    80007104:	0140006f          	j	80007118 <kinit+0x80>
    80007108:	000017b7          	lui	a5,0x1
    8000710c:	00f484b3          	add	s1,s1,a5
    80007110:	0554e863          	bltu	s1,s5,80007160 <kinit+0xc8>
    80007114:	0534f663          	bgeu	s1,s3,80007160 <kinit+0xc8>
    80007118:	00001637          	lui	a2,0x1
    8000711c:	00100593          	li	a1,1
    80007120:	00048513          	mv	a0,s1
    80007124:	00000097          	auipc	ra,0x0
    80007128:	5e4080e7          	jalr	1508(ra) # 80007708 <__memset>
    8000712c:	00093783          	ld	a5,0(s2)
    80007130:	00f4b023          	sd	a5,0(s1)
    80007134:	00993023          	sd	s1,0(s2)
    80007138:	fd4498e3          	bne	s1,s4,80007108 <kinit+0x70>
    8000713c:	03813083          	ld	ra,56(sp)
    80007140:	03013403          	ld	s0,48(sp)
    80007144:	02813483          	ld	s1,40(sp)
    80007148:	02013903          	ld	s2,32(sp)
    8000714c:	01813983          	ld	s3,24(sp)
    80007150:	01013a03          	ld	s4,16(sp)
    80007154:	00813a83          	ld	s5,8(sp)
    80007158:	04010113          	addi	sp,sp,64
    8000715c:	00008067          	ret
    80007160:	00001517          	auipc	a0,0x1
    80007164:	37850513          	addi	a0,a0,888 # 800084d8 <digits+0x18>
    80007168:	fffff097          	auipc	ra,0xfffff
    8000716c:	4b4080e7          	jalr	1204(ra) # 8000661c <panic>

0000000080007170 <freerange>:
    80007170:	fc010113          	addi	sp,sp,-64
    80007174:	000017b7          	lui	a5,0x1
    80007178:	02913423          	sd	s1,40(sp)
    8000717c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007180:	009504b3          	add	s1,a0,s1
    80007184:	fffff537          	lui	a0,0xfffff
    80007188:	02813823          	sd	s0,48(sp)
    8000718c:	02113c23          	sd	ra,56(sp)
    80007190:	03213023          	sd	s2,32(sp)
    80007194:	01313c23          	sd	s3,24(sp)
    80007198:	01413823          	sd	s4,16(sp)
    8000719c:	01513423          	sd	s5,8(sp)
    800071a0:	01613023          	sd	s6,0(sp)
    800071a4:	04010413          	addi	s0,sp,64
    800071a8:	00a4f4b3          	and	s1,s1,a0
    800071ac:	00f487b3          	add	a5,s1,a5
    800071b0:	06f5e463          	bltu	a1,a5,80007218 <freerange+0xa8>
    800071b4:	00004a97          	auipc	s5,0x4
    800071b8:	64ca8a93          	addi	s5,s5,1612 # 8000b800 <end>
    800071bc:	0954e263          	bltu	s1,s5,80007240 <freerange+0xd0>
    800071c0:	01100993          	li	s3,17
    800071c4:	01b99993          	slli	s3,s3,0x1b
    800071c8:	0734fc63          	bgeu	s1,s3,80007240 <freerange+0xd0>
    800071cc:	00058a13          	mv	s4,a1
    800071d0:	00003917          	auipc	s2,0x3
    800071d4:	31090913          	addi	s2,s2,784 # 8000a4e0 <kmem>
    800071d8:	00002b37          	lui	s6,0x2
    800071dc:	0140006f          	j	800071f0 <freerange+0x80>
    800071e0:	000017b7          	lui	a5,0x1
    800071e4:	00f484b3          	add	s1,s1,a5
    800071e8:	0554ec63          	bltu	s1,s5,80007240 <freerange+0xd0>
    800071ec:	0534fa63          	bgeu	s1,s3,80007240 <freerange+0xd0>
    800071f0:	00001637          	lui	a2,0x1
    800071f4:	00100593          	li	a1,1
    800071f8:	00048513          	mv	a0,s1
    800071fc:	00000097          	auipc	ra,0x0
    80007200:	50c080e7          	jalr	1292(ra) # 80007708 <__memset>
    80007204:	00093703          	ld	a4,0(s2)
    80007208:	016487b3          	add	a5,s1,s6
    8000720c:	00e4b023          	sd	a4,0(s1)
    80007210:	00993023          	sd	s1,0(s2)
    80007214:	fcfa76e3          	bgeu	s4,a5,800071e0 <freerange+0x70>
    80007218:	03813083          	ld	ra,56(sp)
    8000721c:	03013403          	ld	s0,48(sp)
    80007220:	02813483          	ld	s1,40(sp)
    80007224:	02013903          	ld	s2,32(sp)
    80007228:	01813983          	ld	s3,24(sp)
    8000722c:	01013a03          	ld	s4,16(sp)
    80007230:	00813a83          	ld	s5,8(sp)
    80007234:	00013b03          	ld	s6,0(sp)
    80007238:	04010113          	addi	sp,sp,64
    8000723c:	00008067          	ret
    80007240:	00001517          	auipc	a0,0x1
    80007244:	29850513          	addi	a0,a0,664 # 800084d8 <digits+0x18>
    80007248:	fffff097          	auipc	ra,0xfffff
    8000724c:	3d4080e7          	jalr	980(ra) # 8000661c <panic>

0000000080007250 <kfree>:
    80007250:	fe010113          	addi	sp,sp,-32
    80007254:	00813823          	sd	s0,16(sp)
    80007258:	00113c23          	sd	ra,24(sp)
    8000725c:	00913423          	sd	s1,8(sp)
    80007260:	02010413          	addi	s0,sp,32
    80007264:	03451793          	slli	a5,a0,0x34
    80007268:	04079c63          	bnez	a5,800072c0 <kfree+0x70>
    8000726c:	00004797          	auipc	a5,0x4
    80007270:	59478793          	addi	a5,a5,1428 # 8000b800 <end>
    80007274:	00050493          	mv	s1,a0
    80007278:	04f56463          	bltu	a0,a5,800072c0 <kfree+0x70>
    8000727c:	01100793          	li	a5,17
    80007280:	01b79793          	slli	a5,a5,0x1b
    80007284:	02f57e63          	bgeu	a0,a5,800072c0 <kfree+0x70>
    80007288:	00001637          	lui	a2,0x1
    8000728c:	00100593          	li	a1,1
    80007290:	00000097          	auipc	ra,0x0
    80007294:	478080e7          	jalr	1144(ra) # 80007708 <__memset>
    80007298:	00003797          	auipc	a5,0x3
    8000729c:	24878793          	addi	a5,a5,584 # 8000a4e0 <kmem>
    800072a0:	0007b703          	ld	a4,0(a5)
    800072a4:	01813083          	ld	ra,24(sp)
    800072a8:	01013403          	ld	s0,16(sp)
    800072ac:	00e4b023          	sd	a4,0(s1)
    800072b0:	0097b023          	sd	s1,0(a5)
    800072b4:	00813483          	ld	s1,8(sp)
    800072b8:	02010113          	addi	sp,sp,32
    800072bc:	00008067          	ret
    800072c0:	00001517          	auipc	a0,0x1
    800072c4:	21850513          	addi	a0,a0,536 # 800084d8 <digits+0x18>
    800072c8:	fffff097          	auipc	ra,0xfffff
    800072cc:	354080e7          	jalr	852(ra) # 8000661c <panic>

00000000800072d0 <kalloc>:
    800072d0:	fe010113          	addi	sp,sp,-32
    800072d4:	00813823          	sd	s0,16(sp)
    800072d8:	00913423          	sd	s1,8(sp)
    800072dc:	00113c23          	sd	ra,24(sp)
    800072e0:	02010413          	addi	s0,sp,32
    800072e4:	00003797          	auipc	a5,0x3
    800072e8:	1fc78793          	addi	a5,a5,508 # 8000a4e0 <kmem>
    800072ec:	0007b483          	ld	s1,0(a5)
    800072f0:	02048063          	beqz	s1,80007310 <kalloc+0x40>
    800072f4:	0004b703          	ld	a4,0(s1)
    800072f8:	00001637          	lui	a2,0x1
    800072fc:	00500593          	li	a1,5
    80007300:	00048513          	mv	a0,s1
    80007304:	00e7b023          	sd	a4,0(a5)
    80007308:	00000097          	auipc	ra,0x0
    8000730c:	400080e7          	jalr	1024(ra) # 80007708 <__memset>
    80007310:	01813083          	ld	ra,24(sp)
    80007314:	01013403          	ld	s0,16(sp)
    80007318:	00048513          	mv	a0,s1
    8000731c:	00813483          	ld	s1,8(sp)
    80007320:	02010113          	addi	sp,sp,32
    80007324:	00008067          	ret

0000000080007328 <initlock>:
    80007328:	ff010113          	addi	sp,sp,-16
    8000732c:	00813423          	sd	s0,8(sp)
    80007330:	01010413          	addi	s0,sp,16
    80007334:	00813403          	ld	s0,8(sp)
    80007338:	00b53423          	sd	a1,8(a0)
    8000733c:	00052023          	sw	zero,0(a0)
    80007340:	00053823          	sd	zero,16(a0)
    80007344:	01010113          	addi	sp,sp,16
    80007348:	00008067          	ret

000000008000734c <acquire>:
    8000734c:	fe010113          	addi	sp,sp,-32
    80007350:	00813823          	sd	s0,16(sp)
    80007354:	00913423          	sd	s1,8(sp)
    80007358:	00113c23          	sd	ra,24(sp)
    8000735c:	01213023          	sd	s2,0(sp)
    80007360:	02010413          	addi	s0,sp,32
    80007364:	00050493          	mv	s1,a0
    80007368:	10002973          	csrr	s2,sstatus
    8000736c:	100027f3          	csrr	a5,sstatus
    80007370:	ffd7f793          	andi	a5,a5,-3
    80007374:	10079073          	csrw	sstatus,a5
    80007378:	fffff097          	auipc	ra,0xfffff
    8000737c:	8e4080e7          	jalr	-1820(ra) # 80005c5c <mycpu>
    80007380:	07852783          	lw	a5,120(a0)
    80007384:	06078e63          	beqz	a5,80007400 <acquire+0xb4>
    80007388:	fffff097          	auipc	ra,0xfffff
    8000738c:	8d4080e7          	jalr	-1836(ra) # 80005c5c <mycpu>
    80007390:	07852783          	lw	a5,120(a0)
    80007394:	0004a703          	lw	a4,0(s1)
    80007398:	0017879b          	addiw	a5,a5,1
    8000739c:	06f52c23          	sw	a5,120(a0)
    800073a0:	04071063          	bnez	a4,800073e0 <acquire+0x94>
    800073a4:	00100713          	li	a4,1
    800073a8:	00070793          	mv	a5,a4
    800073ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800073b0:	0007879b          	sext.w	a5,a5
    800073b4:	fe079ae3          	bnez	a5,800073a8 <acquire+0x5c>
    800073b8:	0ff0000f          	fence
    800073bc:	fffff097          	auipc	ra,0xfffff
    800073c0:	8a0080e7          	jalr	-1888(ra) # 80005c5c <mycpu>
    800073c4:	01813083          	ld	ra,24(sp)
    800073c8:	01013403          	ld	s0,16(sp)
    800073cc:	00a4b823          	sd	a0,16(s1)
    800073d0:	00013903          	ld	s2,0(sp)
    800073d4:	00813483          	ld	s1,8(sp)
    800073d8:	02010113          	addi	sp,sp,32
    800073dc:	00008067          	ret
    800073e0:	0104b903          	ld	s2,16(s1)
    800073e4:	fffff097          	auipc	ra,0xfffff
    800073e8:	878080e7          	jalr	-1928(ra) # 80005c5c <mycpu>
    800073ec:	faa91ce3          	bne	s2,a0,800073a4 <acquire+0x58>
    800073f0:	00001517          	auipc	a0,0x1
    800073f4:	0f050513          	addi	a0,a0,240 # 800084e0 <digits+0x20>
    800073f8:	fffff097          	auipc	ra,0xfffff
    800073fc:	224080e7          	jalr	548(ra) # 8000661c <panic>
    80007400:	00195913          	srli	s2,s2,0x1
    80007404:	fffff097          	auipc	ra,0xfffff
    80007408:	858080e7          	jalr	-1960(ra) # 80005c5c <mycpu>
    8000740c:	00197913          	andi	s2,s2,1
    80007410:	07252e23          	sw	s2,124(a0)
    80007414:	f75ff06f          	j	80007388 <acquire+0x3c>

0000000080007418 <release>:
    80007418:	fe010113          	addi	sp,sp,-32
    8000741c:	00813823          	sd	s0,16(sp)
    80007420:	00113c23          	sd	ra,24(sp)
    80007424:	00913423          	sd	s1,8(sp)
    80007428:	01213023          	sd	s2,0(sp)
    8000742c:	02010413          	addi	s0,sp,32
    80007430:	00052783          	lw	a5,0(a0)
    80007434:	00079a63          	bnez	a5,80007448 <release+0x30>
    80007438:	00001517          	auipc	a0,0x1
    8000743c:	0b050513          	addi	a0,a0,176 # 800084e8 <digits+0x28>
    80007440:	fffff097          	auipc	ra,0xfffff
    80007444:	1dc080e7          	jalr	476(ra) # 8000661c <panic>
    80007448:	01053903          	ld	s2,16(a0)
    8000744c:	00050493          	mv	s1,a0
    80007450:	fffff097          	auipc	ra,0xfffff
    80007454:	80c080e7          	jalr	-2036(ra) # 80005c5c <mycpu>
    80007458:	fea910e3          	bne	s2,a0,80007438 <release+0x20>
    8000745c:	0004b823          	sd	zero,16(s1)
    80007460:	0ff0000f          	fence
    80007464:	0f50000f          	fence	iorw,ow
    80007468:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000746c:	ffffe097          	auipc	ra,0xffffe
    80007470:	7f0080e7          	jalr	2032(ra) # 80005c5c <mycpu>
    80007474:	100027f3          	csrr	a5,sstatus
    80007478:	0027f793          	andi	a5,a5,2
    8000747c:	04079a63          	bnez	a5,800074d0 <release+0xb8>
    80007480:	07852783          	lw	a5,120(a0)
    80007484:	02f05e63          	blez	a5,800074c0 <release+0xa8>
    80007488:	fff7871b          	addiw	a4,a5,-1
    8000748c:	06e52c23          	sw	a4,120(a0)
    80007490:	00071c63          	bnez	a4,800074a8 <release+0x90>
    80007494:	07c52783          	lw	a5,124(a0)
    80007498:	00078863          	beqz	a5,800074a8 <release+0x90>
    8000749c:	100027f3          	csrr	a5,sstatus
    800074a0:	0027e793          	ori	a5,a5,2
    800074a4:	10079073          	csrw	sstatus,a5
    800074a8:	01813083          	ld	ra,24(sp)
    800074ac:	01013403          	ld	s0,16(sp)
    800074b0:	00813483          	ld	s1,8(sp)
    800074b4:	00013903          	ld	s2,0(sp)
    800074b8:	02010113          	addi	sp,sp,32
    800074bc:	00008067          	ret
    800074c0:	00001517          	auipc	a0,0x1
    800074c4:	04850513          	addi	a0,a0,72 # 80008508 <digits+0x48>
    800074c8:	fffff097          	auipc	ra,0xfffff
    800074cc:	154080e7          	jalr	340(ra) # 8000661c <panic>
    800074d0:	00001517          	auipc	a0,0x1
    800074d4:	02050513          	addi	a0,a0,32 # 800084f0 <digits+0x30>
    800074d8:	fffff097          	auipc	ra,0xfffff
    800074dc:	144080e7          	jalr	324(ra) # 8000661c <panic>

00000000800074e0 <holding>:
    800074e0:	00052783          	lw	a5,0(a0)
    800074e4:	00079663          	bnez	a5,800074f0 <holding+0x10>
    800074e8:	00000513          	li	a0,0
    800074ec:	00008067          	ret
    800074f0:	fe010113          	addi	sp,sp,-32
    800074f4:	00813823          	sd	s0,16(sp)
    800074f8:	00913423          	sd	s1,8(sp)
    800074fc:	00113c23          	sd	ra,24(sp)
    80007500:	02010413          	addi	s0,sp,32
    80007504:	01053483          	ld	s1,16(a0)
    80007508:	ffffe097          	auipc	ra,0xffffe
    8000750c:	754080e7          	jalr	1876(ra) # 80005c5c <mycpu>
    80007510:	01813083          	ld	ra,24(sp)
    80007514:	01013403          	ld	s0,16(sp)
    80007518:	40a48533          	sub	a0,s1,a0
    8000751c:	00153513          	seqz	a0,a0
    80007520:	00813483          	ld	s1,8(sp)
    80007524:	02010113          	addi	sp,sp,32
    80007528:	00008067          	ret

000000008000752c <push_off>:
    8000752c:	fe010113          	addi	sp,sp,-32
    80007530:	00813823          	sd	s0,16(sp)
    80007534:	00113c23          	sd	ra,24(sp)
    80007538:	00913423          	sd	s1,8(sp)
    8000753c:	02010413          	addi	s0,sp,32
    80007540:	100024f3          	csrr	s1,sstatus
    80007544:	100027f3          	csrr	a5,sstatus
    80007548:	ffd7f793          	andi	a5,a5,-3
    8000754c:	10079073          	csrw	sstatus,a5
    80007550:	ffffe097          	auipc	ra,0xffffe
    80007554:	70c080e7          	jalr	1804(ra) # 80005c5c <mycpu>
    80007558:	07852783          	lw	a5,120(a0)
    8000755c:	02078663          	beqz	a5,80007588 <push_off+0x5c>
    80007560:	ffffe097          	auipc	ra,0xffffe
    80007564:	6fc080e7          	jalr	1788(ra) # 80005c5c <mycpu>
    80007568:	07852783          	lw	a5,120(a0)
    8000756c:	01813083          	ld	ra,24(sp)
    80007570:	01013403          	ld	s0,16(sp)
    80007574:	0017879b          	addiw	a5,a5,1
    80007578:	06f52c23          	sw	a5,120(a0)
    8000757c:	00813483          	ld	s1,8(sp)
    80007580:	02010113          	addi	sp,sp,32
    80007584:	00008067          	ret
    80007588:	0014d493          	srli	s1,s1,0x1
    8000758c:	ffffe097          	auipc	ra,0xffffe
    80007590:	6d0080e7          	jalr	1744(ra) # 80005c5c <mycpu>
    80007594:	0014f493          	andi	s1,s1,1
    80007598:	06952e23          	sw	s1,124(a0)
    8000759c:	fc5ff06f          	j	80007560 <push_off+0x34>

00000000800075a0 <pop_off>:
    800075a0:	ff010113          	addi	sp,sp,-16
    800075a4:	00813023          	sd	s0,0(sp)
    800075a8:	00113423          	sd	ra,8(sp)
    800075ac:	01010413          	addi	s0,sp,16
    800075b0:	ffffe097          	auipc	ra,0xffffe
    800075b4:	6ac080e7          	jalr	1708(ra) # 80005c5c <mycpu>
    800075b8:	100027f3          	csrr	a5,sstatus
    800075bc:	0027f793          	andi	a5,a5,2
    800075c0:	04079663          	bnez	a5,8000760c <pop_off+0x6c>
    800075c4:	07852783          	lw	a5,120(a0)
    800075c8:	02f05a63          	blez	a5,800075fc <pop_off+0x5c>
    800075cc:	fff7871b          	addiw	a4,a5,-1
    800075d0:	06e52c23          	sw	a4,120(a0)
    800075d4:	00071c63          	bnez	a4,800075ec <pop_off+0x4c>
    800075d8:	07c52783          	lw	a5,124(a0)
    800075dc:	00078863          	beqz	a5,800075ec <pop_off+0x4c>
    800075e0:	100027f3          	csrr	a5,sstatus
    800075e4:	0027e793          	ori	a5,a5,2
    800075e8:	10079073          	csrw	sstatus,a5
    800075ec:	00813083          	ld	ra,8(sp)
    800075f0:	00013403          	ld	s0,0(sp)
    800075f4:	01010113          	addi	sp,sp,16
    800075f8:	00008067          	ret
    800075fc:	00001517          	auipc	a0,0x1
    80007600:	f0c50513          	addi	a0,a0,-244 # 80008508 <digits+0x48>
    80007604:	fffff097          	auipc	ra,0xfffff
    80007608:	018080e7          	jalr	24(ra) # 8000661c <panic>
    8000760c:	00001517          	auipc	a0,0x1
    80007610:	ee450513          	addi	a0,a0,-284 # 800084f0 <digits+0x30>
    80007614:	fffff097          	auipc	ra,0xfffff
    80007618:	008080e7          	jalr	8(ra) # 8000661c <panic>

000000008000761c <push_on>:
    8000761c:	fe010113          	addi	sp,sp,-32
    80007620:	00813823          	sd	s0,16(sp)
    80007624:	00113c23          	sd	ra,24(sp)
    80007628:	00913423          	sd	s1,8(sp)
    8000762c:	02010413          	addi	s0,sp,32
    80007630:	100024f3          	csrr	s1,sstatus
    80007634:	100027f3          	csrr	a5,sstatus
    80007638:	0027e793          	ori	a5,a5,2
    8000763c:	10079073          	csrw	sstatus,a5
    80007640:	ffffe097          	auipc	ra,0xffffe
    80007644:	61c080e7          	jalr	1564(ra) # 80005c5c <mycpu>
    80007648:	07852783          	lw	a5,120(a0)
    8000764c:	02078663          	beqz	a5,80007678 <push_on+0x5c>
    80007650:	ffffe097          	auipc	ra,0xffffe
    80007654:	60c080e7          	jalr	1548(ra) # 80005c5c <mycpu>
    80007658:	07852783          	lw	a5,120(a0)
    8000765c:	01813083          	ld	ra,24(sp)
    80007660:	01013403          	ld	s0,16(sp)
    80007664:	0017879b          	addiw	a5,a5,1
    80007668:	06f52c23          	sw	a5,120(a0)
    8000766c:	00813483          	ld	s1,8(sp)
    80007670:	02010113          	addi	sp,sp,32
    80007674:	00008067          	ret
    80007678:	0014d493          	srli	s1,s1,0x1
    8000767c:	ffffe097          	auipc	ra,0xffffe
    80007680:	5e0080e7          	jalr	1504(ra) # 80005c5c <mycpu>
    80007684:	0014f493          	andi	s1,s1,1
    80007688:	06952e23          	sw	s1,124(a0)
    8000768c:	fc5ff06f          	j	80007650 <push_on+0x34>

0000000080007690 <pop_on>:
    80007690:	ff010113          	addi	sp,sp,-16
    80007694:	00813023          	sd	s0,0(sp)
    80007698:	00113423          	sd	ra,8(sp)
    8000769c:	01010413          	addi	s0,sp,16
    800076a0:	ffffe097          	auipc	ra,0xffffe
    800076a4:	5bc080e7          	jalr	1468(ra) # 80005c5c <mycpu>
    800076a8:	100027f3          	csrr	a5,sstatus
    800076ac:	0027f793          	andi	a5,a5,2
    800076b0:	04078463          	beqz	a5,800076f8 <pop_on+0x68>
    800076b4:	07852783          	lw	a5,120(a0)
    800076b8:	02f05863          	blez	a5,800076e8 <pop_on+0x58>
    800076bc:	fff7879b          	addiw	a5,a5,-1
    800076c0:	06f52c23          	sw	a5,120(a0)
    800076c4:	07853783          	ld	a5,120(a0)
    800076c8:	00079863          	bnez	a5,800076d8 <pop_on+0x48>
    800076cc:	100027f3          	csrr	a5,sstatus
    800076d0:	ffd7f793          	andi	a5,a5,-3
    800076d4:	10079073          	csrw	sstatus,a5
    800076d8:	00813083          	ld	ra,8(sp)
    800076dc:	00013403          	ld	s0,0(sp)
    800076e0:	01010113          	addi	sp,sp,16
    800076e4:	00008067          	ret
    800076e8:	00001517          	auipc	a0,0x1
    800076ec:	e4850513          	addi	a0,a0,-440 # 80008530 <digits+0x70>
    800076f0:	fffff097          	auipc	ra,0xfffff
    800076f4:	f2c080e7          	jalr	-212(ra) # 8000661c <panic>
    800076f8:	00001517          	auipc	a0,0x1
    800076fc:	e1850513          	addi	a0,a0,-488 # 80008510 <digits+0x50>
    80007700:	fffff097          	auipc	ra,0xfffff
    80007704:	f1c080e7          	jalr	-228(ra) # 8000661c <panic>

0000000080007708 <__memset>:
    80007708:	ff010113          	addi	sp,sp,-16
    8000770c:	00813423          	sd	s0,8(sp)
    80007710:	01010413          	addi	s0,sp,16
    80007714:	1a060e63          	beqz	a2,800078d0 <__memset+0x1c8>
    80007718:	40a007b3          	neg	a5,a0
    8000771c:	0077f793          	andi	a5,a5,7
    80007720:	00778693          	addi	a3,a5,7
    80007724:	00b00813          	li	a6,11
    80007728:	0ff5f593          	andi	a1,a1,255
    8000772c:	fff6071b          	addiw	a4,a2,-1
    80007730:	1b06e663          	bltu	a3,a6,800078dc <__memset+0x1d4>
    80007734:	1cd76463          	bltu	a4,a3,800078fc <__memset+0x1f4>
    80007738:	1a078e63          	beqz	a5,800078f4 <__memset+0x1ec>
    8000773c:	00b50023          	sb	a1,0(a0)
    80007740:	00100713          	li	a4,1
    80007744:	1ae78463          	beq	a5,a4,800078ec <__memset+0x1e4>
    80007748:	00b500a3          	sb	a1,1(a0)
    8000774c:	00200713          	li	a4,2
    80007750:	1ae78a63          	beq	a5,a4,80007904 <__memset+0x1fc>
    80007754:	00b50123          	sb	a1,2(a0)
    80007758:	00300713          	li	a4,3
    8000775c:	18e78463          	beq	a5,a4,800078e4 <__memset+0x1dc>
    80007760:	00b501a3          	sb	a1,3(a0)
    80007764:	00400713          	li	a4,4
    80007768:	1ae78263          	beq	a5,a4,8000790c <__memset+0x204>
    8000776c:	00b50223          	sb	a1,4(a0)
    80007770:	00500713          	li	a4,5
    80007774:	1ae78063          	beq	a5,a4,80007914 <__memset+0x20c>
    80007778:	00b502a3          	sb	a1,5(a0)
    8000777c:	00700713          	li	a4,7
    80007780:	18e79e63          	bne	a5,a4,8000791c <__memset+0x214>
    80007784:	00b50323          	sb	a1,6(a0)
    80007788:	00700e93          	li	t4,7
    8000778c:	00859713          	slli	a4,a1,0x8
    80007790:	00e5e733          	or	a4,a1,a4
    80007794:	01059e13          	slli	t3,a1,0x10
    80007798:	01c76e33          	or	t3,a4,t3
    8000779c:	01859313          	slli	t1,a1,0x18
    800077a0:	006e6333          	or	t1,t3,t1
    800077a4:	02059893          	slli	a7,a1,0x20
    800077a8:	40f60e3b          	subw	t3,a2,a5
    800077ac:	011368b3          	or	a7,t1,a7
    800077b0:	02859813          	slli	a6,a1,0x28
    800077b4:	0108e833          	or	a6,a7,a6
    800077b8:	03059693          	slli	a3,a1,0x30
    800077bc:	003e589b          	srliw	a7,t3,0x3
    800077c0:	00d866b3          	or	a3,a6,a3
    800077c4:	03859713          	slli	a4,a1,0x38
    800077c8:	00389813          	slli	a6,a7,0x3
    800077cc:	00f507b3          	add	a5,a0,a5
    800077d0:	00e6e733          	or	a4,a3,a4
    800077d4:	000e089b          	sext.w	a7,t3
    800077d8:	00f806b3          	add	a3,a6,a5
    800077dc:	00e7b023          	sd	a4,0(a5)
    800077e0:	00878793          	addi	a5,a5,8
    800077e4:	fed79ce3          	bne	a5,a3,800077dc <__memset+0xd4>
    800077e8:	ff8e7793          	andi	a5,t3,-8
    800077ec:	0007871b          	sext.w	a4,a5
    800077f0:	01d787bb          	addw	a5,a5,t4
    800077f4:	0ce88e63          	beq	a7,a4,800078d0 <__memset+0x1c8>
    800077f8:	00f50733          	add	a4,a0,a5
    800077fc:	00b70023          	sb	a1,0(a4)
    80007800:	0017871b          	addiw	a4,a5,1
    80007804:	0cc77663          	bgeu	a4,a2,800078d0 <__memset+0x1c8>
    80007808:	00e50733          	add	a4,a0,a4
    8000780c:	00b70023          	sb	a1,0(a4)
    80007810:	0027871b          	addiw	a4,a5,2
    80007814:	0ac77e63          	bgeu	a4,a2,800078d0 <__memset+0x1c8>
    80007818:	00e50733          	add	a4,a0,a4
    8000781c:	00b70023          	sb	a1,0(a4)
    80007820:	0037871b          	addiw	a4,a5,3
    80007824:	0ac77663          	bgeu	a4,a2,800078d0 <__memset+0x1c8>
    80007828:	00e50733          	add	a4,a0,a4
    8000782c:	00b70023          	sb	a1,0(a4)
    80007830:	0047871b          	addiw	a4,a5,4
    80007834:	08c77e63          	bgeu	a4,a2,800078d0 <__memset+0x1c8>
    80007838:	00e50733          	add	a4,a0,a4
    8000783c:	00b70023          	sb	a1,0(a4)
    80007840:	0057871b          	addiw	a4,a5,5
    80007844:	08c77663          	bgeu	a4,a2,800078d0 <__memset+0x1c8>
    80007848:	00e50733          	add	a4,a0,a4
    8000784c:	00b70023          	sb	a1,0(a4)
    80007850:	0067871b          	addiw	a4,a5,6
    80007854:	06c77e63          	bgeu	a4,a2,800078d0 <__memset+0x1c8>
    80007858:	00e50733          	add	a4,a0,a4
    8000785c:	00b70023          	sb	a1,0(a4)
    80007860:	0077871b          	addiw	a4,a5,7
    80007864:	06c77663          	bgeu	a4,a2,800078d0 <__memset+0x1c8>
    80007868:	00e50733          	add	a4,a0,a4
    8000786c:	00b70023          	sb	a1,0(a4)
    80007870:	0087871b          	addiw	a4,a5,8
    80007874:	04c77e63          	bgeu	a4,a2,800078d0 <__memset+0x1c8>
    80007878:	00e50733          	add	a4,a0,a4
    8000787c:	00b70023          	sb	a1,0(a4)
    80007880:	0097871b          	addiw	a4,a5,9
    80007884:	04c77663          	bgeu	a4,a2,800078d0 <__memset+0x1c8>
    80007888:	00e50733          	add	a4,a0,a4
    8000788c:	00b70023          	sb	a1,0(a4)
    80007890:	00a7871b          	addiw	a4,a5,10
    80007894:	02c77e63          	bgeu	a4,a2,800078d0 <__memset+0x1c8>
    80007898:	00e50733          	add	a4,a0,a4
    8000789c:	00b70023          	sb	a1,0(a4)
    800078a0:	00b7871b          	addiw	a4,a5,11
    800078a4:	02c77663          	bgeu	a4,a2,800078d0 <__memset+0x1c8>
    800078a8:	00e50733          	add	a4,a0,a4
    800078ac:	00b70023          	sb	a1,0(a4)
    800078b0:	00c7871b          	addiw	a4,a5,12
    800078b4:	00c77e63          	bgeu	a4,a2,800078d0 <__memset+0x1c8>
    800078b8:	00e50733          	add	a4,a0,a4
    800078bc:	00b70023          	sb	a1,0(a4)
    800078c0:	00d7879b          	addiw	a5,a5,13
    800078c4:	00c7f663          	bgeu	a5,a2,800078d0 <__memset+0x1c8>
    800078c8:	00f507b3          	add	a5,a0,a5
    800078cc:	00b78023          	sb	a1,0(a5)
    800078d0:	00813403          	ld	s0,8(sp)
    800078d4:	01010113          	addi	sp,sp,16
    800078d8:	00008067          	ret
    800078dc:	00b00693          	li	a3,11
    800078e0:	e55ff06f          	j	80007734 <__memset+0x2c>
    800078e4:	00300e93          	li	t4,3
    800078e8:	ea5ff06f          	j	8000778c <__memset+0x84>
    800078ec:	00100e93          	li	t4,1
    800078f0:	e9dff06f          	j	8000778c <__memset+0x84>
    800078f4:	00000e93          	li	t4,0
    800078f8:	e95ff06f          	j	8000778c <__memset+0x84>
    800078fc:	00000793          	li	a5,0
    80007900:	ef9ff06f          	j	800077f8 <__memset+0xf0>
    80007904:	00200e93          	li	t4,2
    80007908:	e85ff06f          	j	8000778c <__memset+0x84>
    8000790c:	00400e93          	li	t4,4
    80007910:	e7dff06f          	j	8000778c <__memset+0x84>
    80007914:	00500e93          	li	t4,5
    80007918:	e75ff06f          	j	8000778c <__memset+0x84>
    8000791c:	00600e93          	li	t4,6
    80007920:	e6dff06f          	j	8000778c <__memset+0x84>

0000000080007924 <__memmove>:
    80007924:	ff010113          	addi	sp,sp,-16
    80007928:	00813423          	sd	s0,8(sp)
    8000792c:	01010413          	addi	s0,sp,16
    80007930:	0e060863          	beqz	a2,80007a20 <__memmove+0xfc>
    80007934:	fff6069b          	addiw	a3,a2,-1
    80007938:	0006881b          	sext.w	a6,a3
    8000793c:	0ea5e863          	bltu	a1,a0,80007a2c <__memmove+0x108>
    80007940:	00758713          	addi	a4,a1,7
    80007944:	00a5e7b3          	or	a5,a1,a0
    80007948:	40a70733          	sub	a4,a4,a0
    8000794c:	0077f793          	andi	a5,a5,7
    80007950:	00f73713          	sltiu	a4,a4,15
    80007954:	00174713          	xori	a4,a4,1
    80007958:	0017b793          	seqz	a5,a5
    8000795c:	00e7f7b3          	and	a5,a5,a4
    80007960:	10078863          	beqz	a5,80007a70 <__memmove+0x14c>
    80007964:	00900793          	li	a5,9
    80007968:	1107f463          	bgeu	a5,a6,80007a70 <__memmove+0x14c>
    8000796c:	0036581b          	srliw	a6,a2,0x3
    80007970:	fff8081b          	addiw	a6,a6,-1
    80007974:	02081813          	slli	a6,a6,0x20
    80007978:	01d85893          	srli	a7,a6,0x1d
    8000797c:	00858813          	addi	a6,a1,8
    80007980:	00058793          	mv	a5,a1
    80007984:	00050713          	mv	a4,a0
    80007988:	01088833          	add	a6,a7,a6
    8000798c:	0007b883          	ld	a7,0(a5)
    80007990:	00878793          	addi	a5,a5,8
    80007994:	00870713          	addi	a4,a4,8
    80007998:	ff173c23          	sd	a7,-8(a4)
    8000799c:	ff0798e3          	bne	a5,a6,8000798c <__memmove+0x68>
    800079a0:	ff867713          	andi	a4,a2,-8
    800079a4:	02071793          	slli	a5,a4,0x20
    800079a8:	0207d793          	srli	a5,a5,0x20
    800079ac:	00f585b3          	add	a1,a1,a5
    800079b0:	40e686bb          	subw	a3,a3,a4
    800079b4:	00f507b3          	add	a5,a0,a5
    800079b8:	06e60463          	beq	a2,a4,80007a20 <__memmove+0xfc>
    800079bc:	0005c703          	lbu	a4,0(a1)
    800079c0:	00e78023          	sb	a4,0(a5)
    800079c4:	04068e63          	beqz	a3,80007a20 <__memmove+0xfc>
    800079c8:	0015c603          	lbu	a2,1(a1)
    800079cc:	00100713          	li	a4,1
    800079d0:	00c780a3          	sb	a2,1(a5)
    800079d4:	04e68663          	beq	a3,a4,80007a20 <__memmove+0xfc>
    800079d8:	0025c603          	lbu	a2,2(a1)
    800079dc:	00200713          	li	a4,2
    800079e0:	00c78123          	sb	a2,2(a5)
    800079e4:	02e68e63          	beq	a3,a4,80007a20 <__memmove+0xfc>
    800079e8:	0035c603          	lbu	a2,3(a1)
    800079ec:	00300713          	li	a4,3
    800079f0:	00c781a3          	sb	a2,3(a5)
    800079f4:	02e68663          	beq	a3,a4,80007a20 <__memmove+0xfc>
    800079f8:	0045c603          	lbu	a2,4(a1)
    800079fc:	00400713          	li	a4,4
    80007a00:	00c78223          	sb	a2,4(a5)
    80007a04:	00e68e63          	beq	a3,a4,80007a20 <__memmove+0xfc>
    80007a08:	0055c603          	lbu	a2,5(a1)
    80007a0c:	00500713          	li	a4,5
    80007a10:	00c782a3          	sb	a2,5(a5)
    80007a14:	00e68663          	beq	a3,a4,80007a20 <__memmove+0xfc>
    80007a18:	0065c703          	lbu	a4,6(a1)
    80007a1c:	00e78323          	sb	a4,6(a5)
    80007a20:	00813403          	ld	s0,8(sp)
    80007a24:	01010113          	addi	sp,sp,16
    80007a28:	00008067          	ret
    80007a2c:	02061713          	slli	a4,a2,0x20
    80007a30:	02075713          	srli	a4,a4,0x20
    80007a34:	00e587b3          	add	a5,a1,a4
    80007a38:	f0f574e3          	bgeu	a0,a5,80007940 <__memmove+0x1c>
    80007a3c:	02069613          	slli	a2,a3,0x20
    80007a40:	02065613          	srli	a2,a2,0x20
    80007a44:	fff64613          	not	a2,a2
    80007a48:	00e50733          	add	a4,a0,a4
    80007a4c:	00c78633          	add	a2,a5,a2
    80007a50:	fff7c683          	lbu	a3,-1(a5)
    80007a54:	fff78793          	addi	a5,a5,-1
    80007a58:	fff70713          	addi	a4,a4,-1
    80007a5c:	00d70023          	sb	a3,0(a4)
    80007a60:	fec798e3          	bne	a5,a2,80007a50 <__memmove+0x12c>
    80007a64:	00813403          	ld	s0,8(sp)
    80007a68:	01010113          	addi	sp,sp,16
    80007a6c:	00008067          	ret
    80007a70:	02069713          	slli	a4,a3,0x20
    80007a74:	02075713          	srli	a4,a4,0x20
    80007a78:	00170713          	addi	a4,a4,1
    80007a7c:	00e50733          	add	a4,a0,a4
    80007a80:	00050793          	mv	a5,a0
    80007a84:	0005c683          	lbu	a3,0(a1)
    80007a88:	00178793          	addi	a5,a5,1
    80007a8c:	00158593          	addi	a1,a1,1
    80007a90:	fed78fa3          	sb	a3,-1(a5)
    80007a94:	fee798e3          	bne	a5,a4,80007a84 <__memmove+0x160>
    80007a98:	f89ff06f          	j	80007a20 <__memmove+0xfc>

0000000080007a9c <__putc>:
    80007a9c:	fe010113          	addi	sp,sp,-32
    80007aa0:	00813823          	sd	s0,16(sp)
    80007aa4:	00113c23          	sd	ra,24(sp)
    80007aa8:	02010413          	addi	s0,sp,32
    80007aac:	00050793          	mv	a5,a0
    80007ab0:	fef40593          	addi	a1,s0,-17
    80007ab4:	00100613          	li	a2,1
    80007ab8:	00000513          	li	a0,0
    80007abc:	fef407a3          	sb	a5,-17(s0)
    80007ac0:	fffff097          	auipc	ra,0xfffff
    80007ac4:	b3c080e7          	jalr	-1220(ra) # 800065fc <console_write>
    80007ac8:	01813083          	ld	ra,24(sp)
    80007acc:	01013403          	ld	s0,16(sp)
    80007ad0:	02010113          	addi	sp,sp,32
    80007ad4:	00008067          	ret

0000000080007ad8 <__getc>:
    80007ad8:	fe010113          	addi	sp,sp,-32
    80007adc:	00813823          	sd	s0,16(sp)
    80007ae0:	00113c23          	sd	ra,24(sp)
    80007ae4:	02010413          	addi	s0,sp,32
    80007ae8:	fe840593          	addi	a1,s0,-24
    80007aec:	00100613          	li	a2,1
    80007af0:	00000513          	li	a0,0
    80007af4:	fffff097          	auipc	ra,0xfffff
    80007af8:	ae8080e7          	jalr	-1304(ra) # 800065dc <console_read>
    80007afc:	fe844503          	lbu	a0,-24(s0)
    80007b00:	01813083          	ld	ra,24(sp)
    80007b04:	01013403          	ld	s0,16(sp)
    80007b08:	02010113          	addi	sp,sp,32
    80007b0c:	00008067          	ret

0000000080007b10 <console_handler>:
    80007b10:	fe010113          	addi	sp,sp,-32
    80007b14:	00813823          	sd	s0,16(sp)
    80007b18:	00113c23          	sd	ra,24(sp)
    80007b1c:	00913423          	sd	s1,8(sp)
    80007b20:	02010413          	addi	s0,sp,32
    80007b24:	14202773          	csrr	a4,scause
    80007b28:	100027f3          	csrr	a5,sstatus
    80007b2c:	0027f793          	andi	a5,a5,2
    80007b30:	06079e63          	bnez	a5,80007bac <console_handler+0x9c>
    80007b34:	00074c63          	bltz	a4,80007b4c <console_handler+0x3c>
    80007b38:	01813083          	ld	ra,24(sp)
    80007b3c:	01013403          	ld	s0,16(sp)
    80007b40:	00813483          	ld	s1,8(sp)
    80007b44:	02010113          	addi	sp,sp,32
    80007b48:	00008067          	ret
    80007b4c:	0ff77713          	andi	a4,a4,255
    80007b50:	00900793          	li	a5,9
    80007b54:	fef712e3          	bne	a4,a5,80007b38 <console_handler+0x28>
    80007b58:	ffffe097          	auipc	ra,0xffffe
    80007b5c:	6dc080e7          	jalr	1756(ra) # 80006234 <plic_claim>
    80007b60:	00a00793          	li	a5,10
    80007b64:	00050493          	mv	s1,a0
    80007b68:	02f50c63          	beq	a0,a5,80007ba0 <console_handler+0x90>
    80007b6c:	fc0506e3          	beqz	a0,80007b38 <console_handler+0x28>
    80007b70:	00050593          	mv	a1,a0
    80007b74:	00001517          	auipc	a0,0x1
    80007b78:	8c450513          	addi	a0,a0,-1852 # 80008438 <_ZL6digits+0xf8>
    80007b7c:	fffff097          	auipc	ra,0xfffff
    80007b80:	afc080e7          	jalr	-1284(ra) # 80006678 <__printf>
    80007b84:	01013403          	ld	s0,16(sp)
    80007b88:	01813083          	ld	ra,24(sp)
    80007b8c:	00048513          	mv	a0,s1
    80007b90:	00813483          	ld	s1,8(sp)
    80007b94:	02010113          	addi	sp,sp,32
    80007b98:	ffffe317          	auipc	t1,0xffffe
    80007b9c:	6d430067          	jr	1748(t1) # 8000626c <plic_complete>
    80007ba0:	fffff097          	auipc	ra,0xfffff
    80007ba4:	3e0080e7          	jalr	992(ra) # 80006f80 <uartintr>
    80007ba8:	fddff06f          	j	80007b84 <console_handler+0x74>
    80007bac:	00001517          	auipc	a0,0x1
    80007bb0:	98c50513          	addi	a0,a0,-1652 # 80008538 <digits+0x78>
    80007bb4:	fffff097          	auipc	ra,0xfffff
    80007bb8:	a68080e7          	jalr	-1432(ra) # 8000661c <panic>
	...
