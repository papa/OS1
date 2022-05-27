
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	a9813103          	ld	sp,-1384(sp) # 8000ba98 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4a8060ef          	jal	ra,800064c4 <start>

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
    80001080:	379020ef          	jal	ra,80003bf8 <_ZN5Riscv20handleSupervisorTrapEv>

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
}
    80001444:	0005051b          	sext.w	a0,a0
    80001448:	00813403          	ld	s0,8(sp)
    8000144c:	01010113          	addi	sp,sp,16
    80001450:	00008067          	ret

0000000080001454 <thread_start>:

int thread_start(void* p)
{
    80001454:	ff010113          	addi	sp,sp,-16
    80001458:	00813423          	sd	s0,8(sp)
    8000145c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80001460:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    80001464:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    80001468:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000146c:	00050513          	mv	a0,a0
    return result;
}
    80001470:	0005051b          	sext.w	a0,a0
    80001474:	00813403          	ld	s0,8(sp)
    80001478:	01010113          	addi	sp,sp,16
    8000147c:	00008067          	ret

0000000080001480 <thread_make_pcb>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    80001480:	fd010113          	addi	sp,sp,-48
    80001484:	02113423          	sd	ra,40(sp)
    80001488:	02813023          	sd	s0,32(sp)
    8000148c:	00913c23          	sd	s1,24(sp)
    80001490:	01213823          	sd	s2,16(sp)
    80001494:	01313423          	sd	s3,8(sp)
    80001498:	03010413          	addi	s0,sp,48
    8000149c:	00050493          	mv	s1,a0
    800014a0:	00058913          	mv	s2,a1
    800014a4:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800014a8:	00001537          	lui	a0,0x1
    800014ac:	00000097          	auipc	ra,0x0
    800014b0:	d9c080e7          	jalr	-612(ra) # 80001248 <mem_alloc>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    800014b4:	04050263          	beqz	a0,800014f8 <thread_make_pcb+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800014b8:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800014bc:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800014c0:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800014c4:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800014c8:	01400793          	li	a5,20
    800014cc:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800014d0:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800014d4:	00050513          	mv	a0,a0
    return result;
    800014d8:	0005051b          	sext.w	a0,a0
}
    800014dc:	02813083          	ld	ra,40(sp)
    800014e0:	02013403          	ld	s0,32(sp)
    800014e4:	01813483          	ld	s1,24(sp)
    800014e8:	01013903          	ld	s2,16(sp)
    800014ec:	00813983          	ld	s3,8(sp)
    800014f0:	03010113          	addi	sp,sp,48
    800014f4:	00008067          	ret
        return -1;
    800014f8:	fff00513          	li	a0,-1
    800014fc:	fe1ff06f          	j	800014dc <thread_make_pcb+0x5c>

0000000080001500 <getc>:

char getc()
{
    80001500:	ff010113          	addi	sp,sp,-16
    80001504:	00813423          	sd	s0,8(sp)
    80001508:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    8000150c:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    80001510:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001514:	00050513          	mv	a0,a0
    return (char)result;
}
    80001518:	0ff57513          	andi	a0,a0,255
    8000151c:	00813403          	ld	s0,8(sp)
    80001520:	01010113          	addi	sp,sp,16
    80001524:	00008067          	ret

0000000080001528 <putc>:

void putc(char c)
{
    80001528:	ff010113          	addi	sp,sp,-16
    8000152c:	00813423          	sd	s0,8(sp)
    80001530:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    80001534:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80001538:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    8000153c:	00000073          	ecall
    80001540:	00813403          	ld	s0,8(sp)
    80001544:	01010113          	addi	sp,sp,16
    80001548:	00008067          	ret

000000008000154c <_Z4idlePv>:

#include "../h/Tests.hpp"
#include "../lib/console.h"

void idle(void* args)
{
    8000154c:	ff010113          	addi	sp,sp,-16
    80001550:	00113423          	sd	ra,8(sp)
    80001554:	00813023          	sd	s0,0(sp)
    80001558:	01010413          	addi	s0,sp,16
    while(true)
    {
        Riscv::printString("Idle\n");
    8000155c:	00008517          	auipc	a0,0x8
    80001560:	ac450513          	addi	a0,a0,-1340 # 80009020 <CONSOLE_STATUS+0x10>
    80001564:	00002097          	auipc	ra,0x2
    80001568:	55c080e7          	jalr	1372(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        thread_dispatch();
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	db8080e7          	jalr	-584(ra) # 80001324 <thread_dispatch>
    while(true)
    80001574:	fe9ff06f          	j	8000155c <_Z4idlePv+0x10>

0000000080001578 <_Z15thread1FunctionPv>:
    }
}

void thread1Function(void* p)
{
    80001578:	fe010113          	addi	sp,sp,-32
    8000157c:	00113c23          	sd	ra,24(sp)
    80001580:	00813823          	sd	s0,16(sp)
    80001584:	00913423          	sd	s1,8(sp)
    80001588:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 1 started...\n");
    8000158c:	00008517          	auipc	a0,0x8
    80001590:	a9c50513          	addi	a0,a0,-1380 # 80009028 <CONSOLE_STATUS+0x18>
    80001594:	00002097          	auipc	ra,0x2
    80001598:	52c080e7          	jalr	1324(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 i = 0; i < num;i++)
    8000159c:	00000493          	li	s1,0
    800015a0:	03c0006f          	j	800015dc <_Z15thread1FunctionPv+0x64>
    {
        if(i % 150 == 0 && i > 0)
            thread_dispatch();
    800015a4:	00000097          	auipc	ra,0x0
    800015a8:	d80080e7          	jalr	-640(ra) # 80001324 <thread_dispatch>
        Riscv::printString("i : ");
    800015ac:	00008517          	auipc	a0,0x8
    800015b0:	a9450513          	addi	a0,a0,-1388 # 80009040 <CONSOLE_STATUS+0x30>
    800015b4:	00002097          	auipc	ra,0x2
    800015b8:	50c080e7          	jalr	1292(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800015bc:	00048513          	mv	a0,s1
    800015c0:	00002097          	auipc	ra,0x2
    800015c4:	570080e7          	jalr	1392(ra) # 80003b30 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800015c8:	00008517          	auipc	a0,0x8
    800015cc:	b3850513          	addi	a0,a0,-1224 # 80009100 <CONSOLE_STATUS+0xf0>
    800015d0:	00002097          	auipc	ra,0x2
    800015d4:	4f0080e7          	jalr	1264(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < num;i++)
    800015d8:	00148493          	addi	s1,s1,1
    800015dc:	000027b7          	lui	a5,0x2
    800015e0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800015e4:	0097ec63          	bltu	a5,s1,800015fc <_Z15thread1FunctionPv+0x84>
        if(i % 150 == 0 && i > 0)
    800015e8:	09600793          	li	a5,150
    800015ec:	02f4f7b3          	remu	a5,s1,a5
    800015f0:	fa079ee3          	bnez	a5,800015ac <_Z15thread1FunctionPv+0x34>
    800015f4:	fa048ce3          	beqz	s1,800015ac <_Z15thread1FunctionPv+0x34>
    800015f8:	fadff06f          	j	800015a4 <_Z15thread1FunctionPv+0x2c>
    }
}
    800015fc:	01813083          	ld	ra,24(sp)
    80001600:	01013403          	ld	s0,16(sp)
    80001604:	00813483          	ld	s1,8(sp)
    80001608:	02010113          	addi	sp,sp,32
    8000160c:	00008067          	ret

0000000080001610 <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    80001610:	fe010113          	addi	sp,sp,-32
    80001614:	00113c23          	sd	ra,24(sp)
    80001618:	00813823          	sd	s0,16(sp)
    8000161c:	00913423          	sd	s1,8(sp)
    80001620:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    80001624:	00008517          	auipc	a0,0x8
    80001628:	a2450513          	addi	a0,a0,-1500 # 80009048 <CONSOLE_STATUS+0x38>
    8000162c:	00002097          	auipc	ra,0x2
    80001630:	494080e7          	jalr	1172(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    80001634:	00000493          	li	s1,0
    80001638:	03c0006f          	j	80001674 <_Z15thread2FunctionPv+0x64>
    {
        if(j % 50 == 0 && j > 0)
            thread_dispatch();
    8000163c:	00000097          	auipc	ra,0x0
    80001640:	ce8080e7          	jalr	-792(ra) # 80001324 <thread_dispatch>
        Riscv::printString("j : ");
    80001644:	00008517          	auipc	a0,0x8
    80001648:	a1c50513          	addi	a0,a0,-1508 # 80009060 <CONSOLE_STATUS+0x50>
    8000164c:	00002097          	auipc	ra,0x2
    80001650:	474080e7          	jalr	1140(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001654:	00048513          	mv	a0,s1
    80001658:	00002097          	auipc	ra,0x2
    8000165c:	4d8080e7          	jalr	1240(ra) # 80003b30 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001660:	00008517          	auipc	a0,0x8
    80001664:	aa050513          	addi	a0,a0,-1376 # 80009100 <CONSOLE_STATUS+0xf0>
    80001668:	00002097          	auipc	ra,0x2
    8000166c:	458080e7          	jalr	1112(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001670:	00148493          	addi	s1,s1,1
    80001674:	000027b7          	lui	a5,0x2
    80001678:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000167c:	0097ec63          	bltu	a5,s1,80001694 <_Z15thread2FunctionPv+0x84>
        if(j % 50 == 0 && j > 0)
    80001680:	03200793          	li	a5,50
    80001684:	02f4f7b3          	remu	a5,s1,a5
    80001688:	fa079ee3          	bnez	a5,80001644 <_Z15thread2FunctionPv+0x34>
    8000168c:	fa048ce3          	beqz	s1,80001644 <_Z15thread2FunctionPv+0x34>
    80001690:	fadff06f          	j	8000163c <_Z15thread2FunctionPv+0x2c>
    }
}
    80001694:	01813083          	ld	ra,24(sp)
    80001698:	01013403          	ld	s0,16(sp)
    8000169c:	00813483          	ld	s1,8(sp)
    800016a0:	02010113          	addi	sp,sp,32
    800016a4:	00008067          	ret

00000000800016a8 <_ZN12TestPeriodic18periodicActivationEv>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {

}

void TestPeriodic::periodicActivation()
{
    800016a8:	fe010113          	addi	sp,sp,-32
    800016ac:	00113c23          	sd	ra,24(sp)
    800016b0:	00813823          	sd	s0,16(sp)
    800016b4:	00913423          	sd	s1,8(sp)
    800016b8:	02010413          	addi	s0,sp,32
    for(int i = 0 ; i < 10000;i++)
    800016bc:	00000493          	li	s1,0
    800016c0:	000027b7          	lui	a5,0x2
    800016c4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800016c8:	0297c463          	blt	a5,s1,800016f0 <_ZN12TestPeriodic18periodicActivationEv+0x48>
    {
        Riscv::printString("i : ");
    800016cc:	00008517          	auipc	a0,0x8
    800016d0:	97450513          	addi	a0,a0,-1676 # 80009040 <CONSOLE_STATUS+0x30>
    800016d4:	00002097          	auipc	ra,0x2
    800016d8:	3ec080e7          	jalr	1004(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800016dc:	00048513          	mv	a0,s1
    800016e0:	00002097          	auipc	ra,0x2
    800016e4:	450080e7          	jalr	1104(ra) # 80003b30 <_ZN5Riscv12printIntegerEm>
    for(int i = 0 ; i < 10000;i++)
    800016e8:	0014849b          	addiw	s1,s1,1
    800016ec:	fd5ff06f          	j	800016c0 <_ZN12TestPeriodic18periodicActivationEv+0x18>
    }
}
    800016f0:	01813083          	ld	ra,24(sp)
    800016f4:	01013403          	ld	s0,16(sp)
    800016f8:	00813483          	ld	s1,8(sp)
    800016fc:	02010113          	addi	sp,sp,32
    80001700:	00008067          	ret

0000000080001704 <_Z20thread2FunctionTest2Pv>:
{
    80001704:	fe010113          	addi	sp,sp,-32
    80001708:	00113c23          	sd	ra,24(sp)
    8000170c:	00813823          	sd	s0,16(sp)
    80001710:	00913423          	sd	s1,8(sp)
    80001714:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    80001718:	00008517          	auipc	a0,0x8
    8000171c:	93050513          	addi	a0,a0,-1744 # 80009048 <CONSOLE_STATUS+0x38>
    80001720:	00002097          	auipc	ra,0x2
    80001724:	3a0080e7          	jalr	928(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001728:	00000493          	li	s1,0
    8000172c:	0480006f          	j	80001774 <_Z20thread2FunctionTest2Pv+0x70>
            thread_exit();
    80001730:	00000097          	auipc	ra,0x0
    80001734:	c14080e7          	jalr	-1004(ra) # 80001344 <thread_exit>
    80001738:	0500006f          	j	80001788 <_Z20thread2FunctionTest2Pv+0x84>
            thread_dispatch();
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	be8080e7          	jalr	-1048(ra) # 80001324 <thread_dispatch>
        Riscv::printString("j : ");
    80001744:	00008517          	auipc	a0,0x8
    80001748:	91c50513          	addi	a0,a0,-1764 # 80009060 <CONSOLE_STATUS+0x50>
    8000174c:	00002097          	auipc	ra,0x2
    80001750:	374080e7          	jalr	884(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001754:	00048513          	mv	a0,s1
    80001758:	00002097          	auipc	ra,0x2
    8000175c:	3d8080e7          	jalr	984(ra) # 80003b30 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001760:	00008517          	auipc	a0,0x8
    80001764:	9a050513          	addi	a0,a0,-1632 # 80009100 <CONSOLE_STATUS+0xf0>
    80001768:	00002097          	auipc	ra,0x2
    8000176c:	358080e7          	jalr	856(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001770:	00148493          	addi	s1,s1,1
    80001774:	000027b7          	lui	a5,0x2
    80001778:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000177c:	0297e063          	bltu	a5,s1,8000179c <_Z20thread2FunctionTest2Pv+0x98>
        if(j == 200)
    80001780:	0c800793          	li	a5,200
    80001784:	faf486e3          	beq	s1,a5,80001730 <_Z20thread2FunctionTest2Pv+0x2c>
        if(j % 50 == 0 && j > 0)
    80001788:	03200793          	li	a5,50
    8000178c:	02f4f7b3          	remu	a5,s1,a5
    80001790:	fa079ae3          	bnez	a5,80001744 <_Z20thread2FunctionTest2Pv+0x40>
    80001794:	fa0488e3          	beqz	s1,80001744 <_Z20thread2FunctionTest2Pv+0x40>
    80001798:	fa5ff06f          	j	8000173c <_Z20thread2FunctionTest2Pv+0x38>
}
    8000179c:	01813083          	ld	ra,24(sp)
    800017a0:	01013403          	ld	s0,16(sp)
    800017a4:	00813483          	ld	s1,8(sp)
    800017a8:	02010113          	addi	sp,sp,32
    800017ac:	00008067          	ret

00000000800017b0 <_Z9consumerAPv>:
sem_t spaceAvailable, itemAvailable;
char string[11] = "this is ni";

void consumerA(void *arg)
{
    while(head!=10)
    800017b0:	0000a717          	auipc	a4,0xa
    800017b4:	36072703          	lw	a4,864(a4) # 8000bb10 <head>
    800017b8:	00a00793          	li	a5,10
    800017bc:	06f70c63          	beq	a4,a5,80001834 <_Z9consumerAPv+0x84>
{
    800017c0:	fe010113          	addi	sp,sp,-32
    800017c4:	00113c23          	sd	ra,24(sp)
    800017c8:	00813823          	sd	s0,16(sp)
    800017cc:	00913423          	sd	s1,8(sp)
    800017d0:	02010413          	addi	s0,sp,32
    {
        sem_wait(itemAvailable);
    800017d4:	0000a497          	auipc	s1,0xa
    800017d8:	33c48493          	addi	s1,s1,828 # 8000bb10 <head>
    800017dc:	0084b503          	ld	a0,8(s1)
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	bf0080e7          	jalr	-1040(ra) # 800013d0 <sem_wait>
        __putc(buffer[head++]);
    800017e8:	0004a783          	lw	a5,0(s1)
    800017ec:	0017871b          	addiw	a4,a5,1
    800017f0:	00e4a023          	sw	a4,0(s1)
    800017f4:	00f487b3          	add	a5,s1,a5
    800017f8:	0107c503          	lbu	a0,16(a5)
    800017fc:	00007097          	auipc	ra,0x7
    80001800:	d90080e7          	jalr	-624(ra) # 8000858c <__putc>
        sem_signal(spaceAvailable);
    80001804:	0204b503          	ld	a0,32(s1)
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	bf4080e7          	jalr	-1036(ra) # 800013fc <sem_signal>
    while(head!=10)
    80001810:	0000a717          	auipc	a4,0xa
    80001814:	30072703          	lw	a4,768(a4) # 8000bb10 <head>
    80001818:	00a00793          	li	a5,10
    8000181c:	faf71ce3          	bne	a4,a5,800017d4 <_Z9consumerAPv+0x24>
    }
}
    80001820:	01813083          	ld	ra,24(sp)
    80001824:	01013403          	ld	s0,16(sp)
    80001828:	00813483          	ld	s1,8(sp)
    8000182c:	02010113          	addi	sp,sp,32
    80001830:	00008067          	ret
    80001834:	00008067          	ret

0000000080001838 <_Z9producerAPv>:

void producerA(void *arg)
{
    while(tail!=10)
    80001838:	0000a717          	auipc	a4,0xa
    8000183c:	30072703          	lw	a4,768(a4) # 8000bb38 <tail>
    80001840:	00a00793          	li	a5,10
    80001844:	08f70063          	beq	a4,a5,800018c4 <_Z9producerAPv+0x8c>
{
    80001848:	fe010113          	addi	sp,sp,-32
    8000184c:	00113c23          	sd	ra,24(sp)
    80001850:	00813823          	sd	s0,16(sp)
    80001854:	00913423          	sd	s1,8(sp)
    80001858:	02010413          	addi	s0,sp,32
    {
        sem_wait(spaceAvailable);
    8000185c:	0000a497          	auipc	s1,0xa
    80001860:	2b448493          	addi	s1,s1,692 # 8000bb10 <head>
    80001864:	0204b503          	ld	a0,32(s1)
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	b68080e7          	jalr	-1176(ra) # 800013d0 <sem_wait>
        buffer[tail] = string[tail];
    80001870:	0284a783          	lw	a5,40(s1)
    80001874:	0000a717          	auipc	a4,0xa
    80001878:	08c70713          	addi	a4,a4,140 # 8000b900 <string>
    8000187c:	00f70733          	add	a4,a4,a5
    80001880:	00074683          	lbu	a3,0(a4)
    80001884:	00f48733          	add	a4,s1,a5
    80001888:	00d70823          	sb	a3,16(a4)
        tail++;
    8000188c:	0017879b          	addiw	a5,a5,1
    80001890:	02f4a423          	sw	a5,40(s1)
        sem_signal(itemAvailable);
    80001894:	0084b503          	ld	a0,8(s1)
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	b64080e7          	jalr	-1180(ra) # 800013fc <sem_signal>
    while(tail!=10)
    800018a0:	0000a717          	auipc	a4,0xa
    800018a4:	29872703          	lw	a4,664(a4) # 8000bb38 <tail>
    800018a8:	00a00793          	li	a5,10
    800018ac:	faf718e3          	bne	a4,a5,8000185c <_Z9producerAPv+0x24>
    }
}
    800018b0:	01813083          	ld	ra,24(sp)
    800018b4:	01013403          	ld	s0,16(sp)
    800018b8:	00813483          	ld	s1,8(sp)
    800018bc:	02010113          	addi	sp,sp,32
    800018c0:	00008067          	ret
    800018c4:	00008067          	ret

00000000800018c8 <_Z11threadTest1v>:
{
    800018c8:	fe010113          	addi	sp,sp,-32
    800018cc:	00113c23          	sd	ra,24(sp)
    800018d0:	00813823          	sd	s0,16(sp)
    800018d4:	00913423          	sd	s1,8(sp)
    800018d8:	01213023          	sd	s2,0(sp)
    800018dc:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    800018e0:	01000513          	li	a0,16
    800018e4:	00002097          	auipc	ra,0x2
    800018e8:	da4080e7          	jalr	-604(ra) # 80003688 <_Znwm>
    800018ec:	00050493          	mv	s1,a0
    800018f0:	00000613          	li	a2,0
    800018f4:	00000597          	auipc	a1,0x0
    800018f8:	c8458593          	addi	a1,a1,-892 # 80001578 <_Z15thread1FunctionPv>
    800018fc:	00002097          	auipc	ra,0x2
    80001900:	f24080e7          	jalr	-220(ra) # 80003820 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001904:	00048513          	mv	a0,s1
    80001908:	00002097          	auipc	ra,0x2
    8000190c:	e50080e7          	jalr	-432(ra) # 80003758 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001910:	01000513          	li	a0,16
    80001914:	00002097          	auipc	ra,0x2
    80001918:	d74080e7          	jalr	-652(ra) # 80003688 <_Znwm>
    8000191c:	00050493          	mv	s1,a0
    80001920:	00000613          	li	a2,0
    80001924:	00000597          	auipc	a1,0x0
    80001928:	cec58593          	addi	a1,a1,-788 # 80001610 <_Z15thread2FunctionPv>
    8000192c:	00002097          	auipc	ra,0x2
    80001930:	ef4080e7          	jalr	-268(ra) # 80003820 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001934:	00048513          	mv	a0,s1
    80001938:	00002097          	auipc	ra,0x2
    8000193c:	e20080e7          	jalr	-480(ra) # 80003758 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001940:	00002097          	auipc	ra,0x2
    80001944:	0f8080e7          	jalr	248(ra) # 80003a38 <_ZN5Riscv16enableInterruptsEv>
    Riscv::printString("End...\n");
    80001948:	00007517          	auipc	a0,0x7
    8000194c:	72050513          	addi	a0,a0,1824 # 80009068 <CONSOLE_STATUS+0x58>
    80001950:	00002097          	auipc	ra,0x2
    80001954:	170080e7          	jalr	368(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001958:	00002097          	auipc	ra,0x2
    8000195c:	100080e7          	jalr	256(ra) # 80003a58 <_ZN5Riscv17disableInterruptsEv>
}
    80001960:	01813083          	ld	ra,24(sp)
    80001964:	01013403          	ld	s0,16(sp)
    80001968:	00813483          	ld	s1,8(sp)
    8000196c:	00013903          	ld	s2,0(sp)
    80001970:	02010113          	addi	sp,sp,32
    80001974:	00008067          	ret
    80001978:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    8000197c:	00048513          	mv	a0,s1
    80001980:	00002097          	auipc	ra,0x2
    80001984:	d30080e7          	jalr	-720(ra) # 800036b0 <_ZdlPv>
    80001988:	00090513          	mv	a0,s2
    8000198c:	0000b097          	auipc	ra,0xb
    80001990:	32c080e7          	jalr	812(ra) # 8000ccb8 <_Unwind_Resume>
    80001994:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    80001998:	00048513          	mv	a0,s1
    8000199c:	00002097          	auipc	ra,0x2
    800019a0:	d14080e7          	jalr	-748(ra) # 800036b0 <_ZdlPv>
    800019a4:	00090513          	mv	a0,s2
    800019a8:	0000b097          	auipc	ra,0xb
    800019ac:	310080e7          	jalr	784(ra) # 8000ccb8 <_Unwind_Resume>

00000000800019b0 <_Z11threadTest2v>:
{
    800019b0:	fe010113          	addi	sp,sp,-32
    800019b4:	00113c23          	sd	ra,24(sp)
    800019b8:	00813823          	sd	s0,16(sp)
    800019bc:	00913423          	sd	s1,8(sp)
    800019c0:	01213023          	sd	s2,0(sp)
    800019c4:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    800019c8:	01000513          	li	a0,16
    800019cc:	00002097          	auipc	ra,0x2
    800019d0:	cbc080e7          	jalr	-836(ra) # 80003688 <_Znwm>
    800019d4:	00050493          	mv	s1,a0
    800019d8:	00000613          	li	a2,0
    800019dc:	00000597          	auipc	a1,0x0
    800019e0:	b7058593          	addi	a1,a1,-1168 # 8000154c <_Z4idlePv>
    800019e4:	00002097          	auipc	ra,0x2
    800019e8:	e3c080e7          	jalr	-452(ra) # 80003820 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    800019ec:	00048513          	mv	a0,s1
    800019f0:	00002097          	auipc	ra,0x2
    800019f4:	d68080e7          	jalr	-664(ra) # 80003758 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    800019f8:	01000513          	li	a0,16
    800019fc:	00002097          	auipc	ra,0x2
    80001a00:	c8c080e7          	jalr	-884(ra) # 80003688 <_Znwm>
    80001a04:	00050493          	mv	s1,a0
    80001a08:	00000613          	li	a2,0
    80001a0c:	00000597          	auipc	a1,0x0
    80001a10:	b6c58593          	addi	a1,a1,-1172 # 80001578 <_Z15thread1FunctionPv>
    80001a14:	00002097          	auipc	ra,0x2
    80001a18:	e0c080e7          	jalr	-500(ra) # 80003820 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001a1c:	00048513          	mv	a0,s1
    80001a20:	00002097          	auipc	ra,0x2
    80001a24:	d38080e7          	jalr	-712(ra) # 80003758 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a28:	01000513          	li	a0,16
    80001a2c:	00002097          	auipc	ra,0x2
    80001a30:	c5c080e7          	jalr	-932(ra) # 80003688 <_Znwm>
    80001a34:	00050493          	mv	s1,a0
    80001a38:	00000613          	li	a2,0
    80001a3c:	00000597          	auipc	a1,0x0
    80001a40:	cc858593          	addi	a1,a1,-824 # 80001704 <_Z20thread2FunctionTest2Pv>
    80001a44:	00002097          	auipc	ra,0x2
    80001a48:	ddc080e7          	jalr	-548(ra) # 80003820 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001a4c:	00048513          	mv	a0,s1
    80001a50:	00002097          	auipc	ra,0x2
    80001a54:	d08080e7          	jalr	-760(ra) # 80003758 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001a58:	00002097          	auipc	ra,0x2
    80001a5c:	fe0080e7          	jalr	-32(ra) # 80003a38 <_ZN5Riscv16enableInterruptsEv>
    Riscv::printString("End...\n");
    80001a60:	00007517          	auipc	a0,0x7
    80001a64:	60850513          	addi	a0,a0,1544 # 80009068 <CONSOLE_STATUS+0x58>
    80001a68:	00002097          	auipc	ra,0x2
    80001a6c:	058080e7          	jalr	88(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001a70:	00002097          	auipc	ra,0x2
    80001a74:	fe8080e7          	jalr	-24(ra) # 80003a58 <_ZN5Riscv17disableInterruptsEv>
}
    80001a78:	01813083          	ld	ra,24(sp)
    80001a7c:	01013403          	ld	s0,16(sp)
    80001a80:	00813483          	ld	s1,8(sp)
    80001a84:	00013903          	ld	s2,0(sp)
    80001a88:	02010113          	addi	sp,sp,32
    80001a8c:	00008067          	ret
    80001a90:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    80001a94:	00048513          	mv	a0,s1
    80001a98:	00002097          	auipc	ra,0x2
    80001a9c:	c18080e7          	jalr	-1000(ra) # 800036b0 <_ZdlPv>
    80001aa0:	00090513          	mv	a0,s2
    80001aa4:	0000b097          	auipc	ra,0xb
    80001aa8:	214080e7          	jalr	532(ra) # 8000ccb8 <_Unwind_Resume>
    80001aac:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001ab0:	00048513          	mv	a0,s1
    80001ab4:	00002097          	auipc	ra,0x2
    80001ab8:	bfc080e7          	jalr	-1028(ra) # 800036b0 <_ZdlPv>
    80001abc:	00090513          	mv	a0,s2
    80001ac0:	0000b097          	auipc	ra,0xb
    80001ac4:	1f8080e7          	jalr	504(ra) # 8000ccb8 <_Unwind_Resume>
    80001ac8:	00050913          	mv	s2,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001acc:	00048513          	mv	a0,s1
    80001ad0:	00002097          	auipc	ra,0x2
    80001ad4:	be0080e7          	jalr	-1056(ra) # 800036b0 <_ZdlPv>
    80001ad8:	00090513          	mv	a0,s2
    80001adc:	0000b097          	auipc	ra,0xb
    80001ae0:	1dc080e7          	jalr	476(ra) # 8000ccb8 <_Unwind_Resume>

0000000080001ae4 <_Z10mallocFreev>:
{
    80001ae4:	cc010113          	addi	sp,sp,-832
    80001ae8:	32113c23          	sd	ra,824(sp)
    80001aec:	32813823          	sd	s0,816(sp)
    80001af0:	32913423          	sd	s1,808(sp)
    80001af4:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    80001af8:	00007517          	auipc	a0,0x7
    80001afc:	57850513          	addi	a0,a0,1400 # 80009070 <CONSOLE_STATUS+0x60>
    80001b00:	00002097          	auipc	ra,0x2
    80001b04:	fc0080e7          	jalr	-64(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001b08:	00000493          	li	s1,0
    80001b0c:	0080006f          	j	80001b14 <_Z10mallocFreev+0x30>
    80001b10:	0014849b          	addiw	s1,s1,1
    80001b14:	06300793          	li	a5,99
    80001b18:	0497c463          	blt	a5,s1,80001b60 <_Z10mallocFreev+0x7c>
        addrs[i] = mem_alloc(100);
    80001b1c:	06400513          	li	a0,100
    80001b20:	fffff097          	auipc	ra,0xfffff
    80001b24:	728080e7          	jalr	1832(ra) # 80001248 <mem_alloc>
    80001b28:	00349793          	slli	a5,s1,0x3
    80001b2c:	fe040713          	addi	a4,s0,-32
    80001b30:	00f707b3          	add	a5,a4,a5
    80001b34:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001b38:	fc051ce3          	bnez	a0,80001b10 <_Z10mallocFreev+0x2c>
            Riscv::printString("not OK\n");
    80001b3c:	00007517          	auipc	a0,0x7
    80001b40:	54450513          	addi	a0,a0,1348 # 80009080 <CONSOLE_STATUS+0x70>
    80001b44:	00002097          	auipc	ra,0x2
    80001b48:	f7c080e7          	jalr	-132(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
}
    80001b4c:	33813083          	ld	ra,824(sp)
    80001b50:	33013403          	ld	s0,816(sp)
    80001b54:	32813483          	ld	s1,808(sp)
    80001b58:	34010113          	addi	sp,sp,832
    80001b5c:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001b60:	00000493          	li	s1,0
    80001b64:	06300793          	li	a5,99
    80001b68:	0297ce63          	blt	a5,s1,80001ba4 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001b6c:	00349793          	slli	a5,s1,0x3
    80001b70:	fe040713          	addi	a4,s0,-32
    80001b74:	00f707b3          	add	a5,a4,a5
    80001b78:	ce07b503          	ld	a0,-800(a5)
    80001b7c:	fffff097          	auipc	ra,0xfffff
    80001b80:	6fc080e7          	jalr	1788(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001b84:	00051663          	bnez	a0,80001b90 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001b88:	0024849b          	addiw	s1,s1,2
    80001b8c:	fd9ff06f          	j	80001b64 <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    80001b90:	00007517          	auipc	a0,0x7
    80001b94:	4f050513          	addi	a0,a0,1264 # 80009080 <CONSOLE_STATUS+0x70>
    80001b98:	00002097          	auipc	ra,0x2
    80001b9c:	f28080e7          	jalr	-216(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
            return;
    80001ba0:	fadff06f          	j	80001b4c <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001ba4:	00000493          	li	s1,0
    80001ba8:	0080006f          	j	80001bb0 <_Z10mallocFreev+0xcc>
    80001bac:	0024849b          	addiw	s1,s1,2
    80001bb0:	06300793          	li	a5,99
    80001bb4:	0297cc63          	blt	a5,s1,80001bec <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001bb8:	01400513          	li	a0,20
    80001bbc:	fffff097          	auipc	ra,0xfffff
    80001bc0:	68c080e7          	jalr	1676(ra) # 80001248 <mem_alloc>
    80001bc4:	00349793          	slli	a5,s1,0x3
    80001bc8:	fe040713          	addi	a4,s0,-32
    80001bcc:	00f707b3          	add	a5,a4,a5
    80001bd0:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001bd4:	fc051ce3          	bnez	a0,80001bac <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    80001bd8:	00007517          	auipc	a0,0x7
    80001bdc:	4a850513          	addi	a0,a0,1192 # 80009080 <CONSOLE_STATUS+0x70>
    80001be0:	00002097          	auipc	ra,0x2
    80001be4:	ee0080e7          	jalr	-288(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
            return;
    80001be8:	f65ff06f          	j	80001b4c <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001bec:	00000493          	li	s1,0
    80001bf0:	06300793          	li	a5,99
    80001bf4:	0297ce63          	blt	a5,s1,80001c30 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001bf8:	00349793          	slli	a5,s1,0x3
    80001bfc:	fe040713          	addi	a4,s0,-32
    80001c00:	00f707b3          	add	a5,a4,a5
    80001c04:	ce07b503          	ld	a0,-800(a5)
    80001c08:	fffff097          	auipc	ra,0xfffff
    80001c0c:	670080e7          	jalr	1648(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001c10:	00051663          	bnez	a0,80001c1c <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001c14:	0014849b          	addiw	s1,s1,1
    80001c18:	fd9ff06f          	j	80001bf0 <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    80001c1c:	00007517          	auipc	a0,0x7
    80001c20:	46450513          	addi	a0,a0,1124 # 80009080 <CONSOLE_STATUS+0x70>
    80001c24:	00002097          	auipc	ra,0x2
    80001c28:	e9c080e7          	jalr	-356(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
            return;
    80001c2c:	f21ff06f          	j	80001b4c <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001c30:	00007517          	auipc	a0,0x7
    80001c34:	45850513          	addi	a0,a0,1112 # 80009088 <CONSOLE_STATUS+0x78>
    80001c38:	00002097          	auipc	ra,0x2
    80001c3c:	e88080e7          	jalr	-376(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    80001c40:	f0dff06f          	j	80001b4c <_Z10mallocFreev+0x68>

0000000080001c44 <_Z9bigMallocv>:
{
    80001c44:	ff010113          	addi	sp,sp,-16
    80001c48:	00113423          	sd	ra,8(sp)
    80001c4c:	00813023          	sd	s0,0(sp)
    80001c50:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    80001c54:	00007517          	auipc	a0,0x7
    80001c58:	43c50513          	addi	a0,a0,1084 # 80009090 <CONSOLE_STATUS+0x80>
    80001c5c:	00002097          	auipc	ra,0x2
    80001c60:	e64080e7          	jalr	-412(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001c64:	0000a797          	auipc	a5,0xa
    80001c68:	e547b783          	ld	a5,-428(a5) # 8000bab8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001c6c:	0007b503          	ld	a0,0(a5)
    80001c70:	0000a797          	auipc	a5,0xa
    80001c74:	e087b783          	ld	a5,-504(a5) # 8000ba78 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001c78:	0007b783          	ld	a5,0(a5)
    80001c7c:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001c80:	06450513          	addi	a0,a0,100
    80001c84:	fffff097          	auipc	ra,0xfffff
    80001c88:	5c4080e7          	jalr	1476(ra) # 80001248 <mem_alloc>
    if(p == 0)
    80001c8c:	02050263          	beqz	a0,80001cb0 <_Z9bigMallocv+0x6c>
        Riscv::printString("not OK\n");
    80001c90:	00007517          	auipc	a0,0x7
    80001c94:	3f050513          	addi	a0,a0,1008 # 80009080 <CONSOLE_STATUS+0x70>
    80001c98:	00002097          	auipc	ra,0x2
    80001c9c:	e28080e7          	jalr	-472(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
}
    80001ca0:	00813083          	ld	ra,8(sp)
    80001ca4:	00013403          	ld	s0,0(sp)
    80001ca8:	01010113          	addi	sp,sp,16
    80001cac:	00008067          	ret
        Riscv::printString("OK\n");
    80001cb0:	00007517          	auipc	a0,0x7
    80001cb4:	3d850513          	addi	a0,a0,984 # 80009088 <CONSOLE_STATUS+0x78>
    80001cb8:	00002097          	auipc	ra,0x2
    80001cbc:	e08080e7          	jalr	-504(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    80001cc0:	fe1ff06f          	j	80001ca0 <_Z9bigMallocv+0x5c>

0000000080001cc4 <_Z17lotOfSmallMallocsv>:
{
    80001cc4:	fd010113          	addi	sp,sp,-48
    80001cc8:	02113423          	sd	ra,40(sp)
    80001ccc:	02813023          	sd	s0,32(sp)
    80001cd0:	00913c23          	sd	s1,24(sp)
    80001cd4:	01213823          	sd	s2,16(sp)
    80001cd8:	01313423          	sd	s3,8(sp)
    80001cdc:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001ce0:	00007517          	auipc	a0,0x7
    80001ce4:	3c050513          	addi	a0,a0,960 # 800090a0 <CONSOLE_STATUS+0x90>
    80001ce8:	00002097          	auipc	ra,0x2
    80001cec:	dd8080e7          	jalr	-552(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < N;i++)
    80001cf0:	00000493          	li	s1,0
    uint64 sum = 0;
    80001cf4:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001cf8:	00000913          	li	s2,0
    80001cfc:	0180006f          	j	80001d14 <_Z17lotOfSmallMallocsv+0x50>
        t->a = X;
    80001d00:	00a00793          	li	a5,10
    80001d04:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001d08:	00a98993          	addi	s3,s3,10
        cnt++;
    80001d0c:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001d10:	00148493          	addi	s1,s1,1
    80001d14:	000027b7          	lui	a5,0x2
    80001d18:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001d1c:	0097ea63          	bltu	a5,s1,80001d30 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001d20:	00800513          	li	a0,8
    80001d24:	fffff097          	auipc	ra,0xfffff
    80001d28:	524080e7          	jalr	1316(ra) # 80001248 <mem_alloc>
        if(t == 0)
    80001d2c:	fc051ae3          	bnez	a0,80001d00 <_Z17lotOfSmallMallocsv+0x3c>
    Riscv::printInteger(cnt);
    80001d30:	00090513          	mv	a0,s2
    80001d34:	00002097          	auipc	ra,0x2
    80001d38:	dfc080e7          	jalr	-516(ra) # 80003b30 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001d3c:	00007517          	auipc	a0,0x7
    80001d40:	3c450513          	addi	a0,a0,964 # 80009100 <CONSOLE_STATUS+0xf0>
    80001d44:	00002097          	auipc	ra,0x2
    80001d48:	d7c080e7          	jalr	-644(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001d4c:	00291793          	slli	a5,s2,0x2
    80001d50:	01278933          	add	s2,a5,s2
    80001d54:	00191913          	slli	s2,s2,0x1
    80001d58:	03390863          	beq	s2,s3,80001d88 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001d5c:	00007517          	auipc	a0,0x7
    80001d60:	32450513          	addi	a0,a0,804 # 80009080 <CONSOLE_STATUS+0x70>
    80001d64:	00002097          	auipc	ra,0x2
    80001d68:	d5c080e7          	jalr	-676(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
}
    80001d6c:	02813083          	ld	ra,40(sp)
    80001d70:	02013403          	ld	s0,32(sp)
    80001d74:	01813483          	ld	s1,24(sp)
    80001d78:	01013903          	ld	s2,16(sp)
    80001d7c:	00813983          	ld	s3,8(sp)
    80001d80:	03010113          	addi	sp,sp,48
    80001d84:	00008067          	ret
        Riscv::printString("OK\n");
    80001d88:	00007517          	auipc	a0,0x7
    80001d8c:	30050513          	addi	a0,a0,768 # 80009088 <CONSOLE_STATUS+0x78>
    80001d90:	00002097          	auipc	ra,0x2
    80001d94:	d30080e7          	jalr	-720(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    80001d98:	fd5ff06f          	j	80001d6c <_Z17lotOfSmallMallocsv+0xa8>

0000000080001d9c <_Z7badFreev>:
{
    80001d9c:	ff010113          	addi	sp,sp,-16
    80001da0:	00113423          	sd	ra,8(sp)
    80001da4:	00813023          	sd	s0,0(sp)
    80001da8:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001dac:	00007517          	auipc	a0,0x7
    80001db0:	30c50513          	addi	a0,a0,780 # 800090b8 <CONSOLE_STATUS+0xa8>
    80001db4:	00002097          	auipc	ra,0x2
    80001db8:	d0c080e7          	jalr	-756(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001dbc:	00800513          	li	a0,8
    80001dc0:	fffff097          	auipc	ra,0xfffff
    80001dc4:	488080e7          	jalr	1160(ra) # 80001248 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001dc8:	00250513          	addi	a0,a0,2
    80001dcc:	fffff097          	auipc	ra,0xfffff
    80001dd0:	4ac080e7          	jalr	1196(ra) # 80001278 <mem_free>
    if(retval == 0)
    80001dd4:	02051263          	bnez	a0,80001df8 <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001dd8:	00007517          	auipc	a0,0x7
    80001ddc:	2a850513          	addi	a0,a0,680 # 80009080 <CONSOLE_STATUS+0x70>
    80001de0:	00002097          	auipc	ra,0x2
    80001de4:	ce0080e7          	jalr	-800(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
}
    80001de8:	00813083          	ld	ra,8(sp)
    80001dec:	00013403          	ld	s0,0(sp)
    80001df0:	01010113          	addi	sp,sp,16
    80001df4:	00008067          	ret
        Riscv::printString("OK\n");
    80001df8:	00007517          	auipc	a0,0x7
    80001dfc:	29050513          	addi	a0,a0,656 # 80009088 <CONSOLE_STATUS+0x78>
    80001e00:	00002097          	auipc	ra,0x2
    80001e04:	cc0080e7          	jalr	-832(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
}
    80001e08:	fe1ff06f          	j	80001de8 <_Z7badFreev+0x4c>

0000000080001e0c <_Z13stressTestingv>:
{
    80001e0c:	cc010113          	addi	sp,sp,-832
    80001e10:	32113c23          	sd	ra,824(sp)
    80001e14:	32813823          	sd	s0,816(sp)
    80001e18:	32913423          	sd	s1,808(sp)
    80001e1c:	33213023          	sd	s2,800(sp)
    80001e20:	34010413          	addi	s0,sp,832
    Riscv::printString("stressTesting\n");
    80001e24:	00007517          	auipc	a0,0x7
    80001e28:	2a450513          	addi	a0,a0,676 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001e2c:	00002097          	auipc	ra,0x2
    80001e30:	c94080e7          	jalr	-876(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001e34:	00000493          	li	s1,0
    80001e38:	0080006f          	j	80001e40 <_Z13stressTestingv+0x34>
    80001e3c:	0014849b          	addiw	s1,s1,1
    80001e40:	06300793          	li	a5,99
    80001e44:	0497c663          	blt	a5,s1,80001e90 <_Z13stressTestingv+0x84>
        addrs[i] = mem_alloc(1);
    80001e48:	00100513          	li	a0,1
    80001e4c:	fffff097          	auipc	ra,0xfffff
    80001e50:	3fc080e7          	jalr	1020(ra) # 80001248 <mem_alloc>
    80001e54:	00349793          	slli	a5,s1,0x3
    80001e58:	fe040713          	addi	a4,s0,-32
    80001e5c:	00f707b3          	add	a5,a4,a5
    80001e60:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001e64:	fc051ce3          	bnez	a0,80001e3c <_Z13stressTestingv+0x30>
            Riscv::printString("not OK\n");
    80001e68:	00007517          	auipc	a0,0x7
    80001e6c:	21850513          	addi	a0,a0,536 # 80009080 <CONSOLE_STATUS+0x70>
    80001e70:	00002097          	auipc	ra,0x2
    80001e74:	c50080e7          	jalr	-944(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
}
    80001e78:	33813083          	ld	ra,824(sp)
    80001e7c:	33013403          	ld	s0,816(sp)
    80001e80:	32813483          	ld	s1,808(sp)
    80001e84:	32013903          	ld	s2,800(sp)
    80001e88:	34010113          	addi	sp,sp,832
    80001e8c:	00008067          	ret
    int sz = 300;
    80001e90:	12c00913          	li	s2,300
    while(sz > 0)
    80001e94:	11205263          	blez	s2,80001f98 <_Z13stressTestingv+0x18c>
        for(int i = 0 ; i < num;i+=2)
    80001e98:	00000493          	li	s1,0
    80001e9c:	06300793          	li	a5,99
    80001ea0:	0697cc63          	blt	a5,s1,80001f18 <_Z13stressTestingv+0x10c>
            int retval = mem_free(addrs[i]);
    80001ea4:	00349793          	slli	a5,s1,0x3
    80001ea8:	fe040713          	addi	a4,s0,-32
    80001eac:	00f707b3          	add	a5,a4,a5
    80001eb0:	ce07b503          	ld	a0,-800(a5)
    80001eb4:	fffff097          	auipc	ra,0xfffff
    80001eb8:	3c4080e7          	jalr	964(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001ebc:	02051a63          	bnez	a0,80001ef0 <_Z13stressTestingv+0xe4>
            addrs[i] = mem_alloc(sz/2);
    80001ec0:	01f9551b          	srliw	a0,s2,0x1f
    80001ec4:	0125053b          	addw	a0,a0,s2
    80001ec8:	4015551b          	sraiw	a0,a0,0x1
    80001ecc:	fffff097          	auipc	ra,0xfffff
    80001ed0:	37c080e7          	jalr	892(ra) # 80001248 <mem_alloc>
    80001ed4:	00349793          	slli	a5,s1,0x3
    80001ed8:	fe040713          	addi	a4,s0,-32
    80001edc:	00f707b3          	add	a5,a4,a5
    80001ee0:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001ee4:	02050063          	beqz	a0,80001f04 <_Z13stressTestingv+0xf8>
        for(int i = 0 ; i < num;i+=2)
    80001ee8:	0024849b          	addiw	s1,s1,2
    80001eec:	fb1ff06f          	j	80001e9c <_Z13stressTestingv+0x90>
                Riscv::printString("not OK\n");
    80001ef0:	00007517          	auipc	a0,0x7
    80001ef4:	19050513          	addi	a0,a0,400 # 80009080 <CONSOLE_STATUS+0x70>
    80001ef8:	00002097          	auipc	ra,0x2
    80001efc:	bc8080e7          	jalr	-1080(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
                return;
    80001f00:	f79ff06f          	j	80001e78 <_Z13stressTestingv+0x6c>
                Riscv::printString("not Ok\n");
    80001f04:	00007517          	auipc	a0,0x7
    80001f08:	1d450513          	addi	a0,a0,468 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001f0c:	00002097          	auipc	ra,0x2
    80001f10:	bb4080e7          	jalr	-1100(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
                return;
    80001f14:	f65ff06f          	j	80001e78 <_Z13stressTestingv+0x6c>
        for(int i = 1 ; i < num;i+=2)
    80001f18:	00100493          	li	s1,1
    80001f1c:	06300793          	li	a5,99
    80001f20:	0697c863          	blt	a5,s1,80001f90 <_Z13stressTestingv+0x184>
            int retval = mem_free(addrs[i]);
    80001f24:	00349793          	slli	a5,s1,0x3
    80001f28:	fe040713          	addi	a4,s0,-32
    80001f2c:	00f707b3          	add	a5,a4,a5
    80001f30:	ce07b503          	ld	a0,-800(a5)
    80001f34:	fffff097          	auipc	ra,0xfffff
    80001f38:	344080e7          	jalr	836(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001f3c:	02051663          	bnez	a0,80001f68 <_Z13stressTestingv+0x15c>
            addrs[i] = mem_alloc(sz);
    80001f40:	00090513          	mv	a0,s2
    80001f44:	fffff097          	auipc	ra,0xfffff
    80001f48:	304080e7          	jalr	772(ra) # 80001248 <mem_alloc>
    80001f4c:	00349793          	slli	a5,s1,0x3
    80001f50:	fe040713          	addi	a4,s0,-32
    80001f54:	00f707b3          	add	a5,a4,a5
    80001f58:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001f5c:	02050063          	beqz	a0,80001f7c <_Z13stressTestingv+0x170>
        for(int i = 1 ; i < num;i+=2)
    80001f60:	0024849b          	addiw	s1,s1,2
    80001f64:	fb9ff06f          	j	80001f1c <_Z13stressTestingv+0x110>
                Riscv::printString("not OK\n");
    80001f68:	00007517          	auipc	a0,0x7
    80001f6c:	11850513          	addi	a0,a0,280 # 80009080 <CONSOLE_STATUS+0x70>
    80001f70:	00002097          	auipc	ra,0x2
    80001f74:	b50080e7          	jalr	-1200(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
                return;
    80001f78:	f01ff06f          	j	80001e78 <_Z13stressTestingv+0x6c>
                Riscv::printString("not Ok\n");
    80001f7c:	00007517          	auipc	a0,0x7
    80001f80:	15c50513          	addi	a0,a0,348 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001f84:	00002097          	auipc	ra,0x2
    80001f88:	b3c080e7          	jalr	-1220(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
                return;
    80001f8c:	eedff06f          	j	80001e78 <_Z13stressTestingv+0x6c>
        sz-=10;
    80001f90:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001f94:	f01ff06f          	j	80001e94 <_Z13stressTestingv+0x88>
    Riscv::printString("OK\n");
    80001f98:	00007517          	auipc	a0,0x7
    80001f9c:	0f050513          	addi	a0,a0,240 # 80009088 <CONSOLE_STATUS+0x78>
    80001fa0:	00002097          	auipc	ra,0x2
    80001fa4:	b20080e7          	jalr	-1248(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    80001fa8:	ed1ff06f          	j	80001e78 <_Z13stressTestingv+0x6c>

0000000080001fac <_ZN12TestPeriodicC1Em>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {
    80001fac:	fe010113          	addi	sp,sp,-32
    80001fb0:	00113c23          	sd	ra,24(sp)
    80001fb4:	00813823          	sd	s0,16(sp)
    80001fb8:	00913423          	sd	s1,8(sp)
    80001fbc:	02010413          	addi	s0,sp,32
    80001fc0:	00050493          	mv	s1,a0
    80001fc4:	00002097          	auipc	ra,0x2
    80001fc8:	9c8080e7          	jalr	-1592(ra) # 8000398c <_ZN14PeriodicThreadC1Em>
    80001fcc:	0000a797          	auipc	a5,0xa
    80001fd0:	98478793          	addi	a5,a5,-1660 # 8000b950 <_ZTV12TestPeriodic+0x10>
    80001fd4:	00f4b023          	sd	a5,0(s1)
}
    80001fd8:	01813083          	ld	ra,24(sp)
    80001fdc:	01013403          	ld	s0,16(sp)
    80001fe0:	00813483          	ld	s1,8(sp)
    80001fe4:	02010113          	addi	sp,sp,32
    80001fe8:	00008067          	ret

0000000080001fec <_Z11threadTest3v>:
{
    80001fec:	fe010113          	addi	sp,sp,-32
    80001ff0:	00113c23          	sd	ra,24(sp)
    80001ff4:	00813823          	sd	s0,16(sp)
    80001ff8:	00913423          	sd	s1,8(sp)
    80001ffc:	01213023          	sd	s2,0(sp)
    80002000:	02010413          	addi	s0,sp,32
    Thread* t = new TestPeriodic(50);
    80002004:	01000513          	li	a0,16
    80002008:	00001097          	auipc	ra,0x1
    8000200c:	680080e7          	jalr	1664(ra) # 80003688 <_Znwm>
    80002010:	00050913          	mv	s2,a0
    80002014:	03200593          	li	a1,50
    80002018:	00000097          	auipc	ra,0x0
    8000201c:	f94080e7          	jalr	-108(ra) # 80001fac <_ZN12TestPeriodicC1Em>
    t->start();
    80002020:	00090513          	mv	a0,s2
    80002024:	00001097          	auipc	ra,0x1
    80002028:	734080e7          	jalr	1844(ra) # 80003758 <_ZN6Thread5startEv>
    while(true)
    8000202c:	0000006f          	j	8000202c <_Z11threadTest3v+0x40>
    80002030:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80002034:	00090513          	mv	a0,s2
    80002038:	00001097          	auipc	ra,0x1
    8000203c:	678080e7          	jalr	1656(ra) # 800036b0 <_ZdlPv>
    80002040:	00048513          	mv	a0,s1
    80002044:	0000b097          	auipc	ra,0xb
    80002048:	c74080e7          	jalr	-908(ra) # 8000ccb8 <_Unwind_Resume>

000000008000204c <_Z11threadTestsv>:
{
    8000204c:	ff010113          	addi	sp,sp,-16
    80002050:	00113423          	sd	ra,8(sp)
    80002054:	00813023          	sd	s0,0(sp)
    80002058:	01010413          	addi	s0,sp,16
    threadTest3();
    8000205c:	00000097          	auipc	ra,0x0
    80002060:	f90080e7          	jalr	-112(ra) # 80001fec <_Z11threadTest3v>

0000000080002064 <_Z10mallocTestv>:
{
    80002064:	fc010113          	addi	sp,sp,-64
    80002068:	02113c23          	sd	ra,56(sp)
    8000206c:	02813823          	sd	s0,48(sp)
    80002070:	02913423          	sd	s1,40(sp)
    80002074:	03213023          	sd	s2,32(sp)
    80002078:	01313c23          	sd	s3,24(sp)
    8000207c:	01413823          	sd	s4,16(sp)
    80002080:	01513423          	sd	s5,8(sp)
    80002084:	01613023          	sd	s6,0(sp)
    80002088:	04010413          	addi	s0,sp,64
    Riscv::printString("Testing a few mallocs and frees\n\n");
    8000208c:	00007517          	auipc	a0,0x7
    80002090:	05450513          	addi	a0,a0,84 # 800090e0 <CONSOLE_STATUS+0xd0>
    80002094:	00002097          	auipc	ra,0x2
    80002098:	a2c080e7          	jalr	-1492(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    object* o = new object;
    8000209c:	02c00513          	li	a0,44
    800020a0:	00001097          	auipc	ra,0x1
    800020a4:	5e8080e7          	jalr	1512(ra) # 80003688 <_Znwm>
    800020a8:	00050493          	mv	s1,a0
    o->a = 3;
    800020ac:	00300793          	li	a5,3
    800020b0:	00f52023          	sw	a5,0(a0)
    void* m1 = mem_alloc(10);
    800020b4:	00a00513          	li	a0,10
    800020b8:	fffff097          	auipc	ra,0xfffff
    800020bc:	190080e7          	jalr	400(ra) # 80001248 <mem_alloc>
    800020c0:	00050913          	mv	s2,a0
    void* m2 = mem_alloc(100);
    800020c4:	06400513          	li	a0,100
    800020c8:	fffff097          	auipc	ra,0xfffff
    800020cc:	180080e7          	jalr	384(ra) # 80001248 <mem_alloc>
    800020d0:	00050993          	mv	s3,a0
    void* m3 = mem_alloc(1000);
    800020d4:	3e800513          	li	a0,1000
    800020d8:	fffff097          	auipc	ra,0xfffff
    800020dc:	170080e7          	jalr	368(ra) # 80001248 <mem_alloc>
    800020e0:	00050a13          	mv	s4,a0
    void* m4 = mem_alloc(10000);
    800020e4:	00002537          	lui	a0,0x2
    800020e8:	71050513          	addi	a0,a0,1808 # 2710 <_entry-0x7fffd8f0>
    800020ec:	fffff097          	auipc	ra,0xfffff
    800020f0:	15c080e7          	jalr	348(ra) # 80001248 <mem_alloc>
    800020f4:	00050a93          	mv	s5,a0
    void* m5 = mem_alloc(1);
    800020f8:	00100513          	li	a0,1
    800020fc:	fffff097          	auipc	ra,0xfffff
    80002100:	14c080e7          	jalr	332(ra) # 80001248 <mem_alloc>
    if(!m1 || !m2 || !m3 || !m4 || !m5){
    80002104:	06090c63          	beqz	s2,8000217c <_Z10mallocTestv+0x118>
    80002108:	00050b13          	mv	s6,a0
    8000210c:	06098863          	beqz	s3,8000217c <_Z10mallocTestv+0x118>
    80002110:	060a0663          	beqz	s4,8000217c <_Z10mallocTestv+0x118>
    80002114:	060a8463          	beqz	s5,8000217c <_Z10mallocTestv+0x118>
    80002118:	06050263          	beqz	a0,8000217c <_Z10mallocTestv+0x118>
    delete (uint64*)m1;
    8000211c:	00090513          	mv	a0,s2
    80002120:	00001097          	auipc	ra,0x1
    80002124:	590080e7          	jalr	1424(ra) # 800036b0 <_ZdlPv>
    delete (uint64*)m3;
    80002128:	000a0513          	mv	a0,s4
    8000212c:	00001097          	auipc	ra,0x1
    80002130:	584080e7          	jalr	1412(ra) # 800036b0 <_ZdlPv>
    delete (uint64*)m4;
    80002134:	000a8513          	mv	a0,s5
    80002138:	00001097          	auipc	ra,0x1
    8000213c:	578080e7          	jalr	1400(ra) # 800036b0 <_ZdlPv>
    delete (uint64*)m2;
    80002140:	00098513          	mv	a0,s3
    80002144:	00001097          	auipc	ra,0x1
    80002148:	56c080e7          	jalr	1388(ra) # 800036b0 <_ZdlPv>
    delete (uint64*)m5;
    8000214c:	000b0513          	mv	a0,s6
    80002150:	00001097          	auipc	ra,0x1
    80002154:	560080e7          	jalr	1376(ra) # 800036b0 <_ZdlPv>
    delete o;
    80002158:	00048863          	beqz	s1,80002168 <_Z10mallocTestv+0x104>
    8000215c:	00048513          	mv	a0,s1
    80002160:	00001097          	auipc	ra,0x1
    80002164:	550080e7          	jalr	1360(ra) # 800036b0 <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    80002168:	00007517          	auipc	a0,0x7
    8000216c:	fa050513          	addi	a0,a0,-96 # 80009108 <CONSOLE_STATUS+0xf8>
    80002170:	00002097          	auipc	ra,0x2
    80002174:	950080e7          	jalr	-1712(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    80002178:	0140006f          	j	8000218c <_Z10mallocTestv+0x128>
        Riscv::printString("not OK\n");
    8000217c:	00007517          	auipc	a0,0x7
    80002180:	f0450513          	addi	a0,a0,-252 # 80009080 <CONSOLE_STATUS+0x70>
    80002184:	00002097          	auipc	ra,0x2
    80002188:	93c080e7          	jalr	-1732(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
}
    8000218c:	03813083          	ld	ra,56(sp)
    80002190:	03013403          	ld	s0,48(sp)
    80002194:	02813483          	ld	s1,40(sp)
    80002198:	02013903          	ld	s2,32(sp)
    8000219c:	01813983          	ld	s3,24(sp)
    800021a0:	01013a03          	ld	s4,16(sp)
    800021a4:	00813a83          	ld	s5,8(sp)
    800021a8:	00013b03          	ld	s6,0(sp)
    800021ac:	04010113          	addi	sp,sp,64
    800021b0:	00008067          	ret

00000000800021b4 <_Z16mallocEverythingv>:
{
    800021b4:	fe010113          	addi	sp,sp,-32
    800021b8:	00113c23          	sd	ra,24(sp)
    800021bc:	00813823          	sd	s0,16(sp)
    800021c0:	00913423          	sd	s1,8(sp)
    800021c4:	02010413          	addi	s0,sp,32
    Riscv::printString("Testing allocating whole address space\n\n");
    800021c8:	00007517          	auipc	a0,0x7
    800021cc:	f7050513          	addi	a0,a0,-144 # 80009138 <CONSOLE_STATUS+0x128>
    800021d0:	00002097          	auipc	ra,0x2
    800021d4:	8f0080e7          	jalr	-1808(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    uint64 neg_size = (uint64)HEAP_START_ADDR - (uint64)HEAP_END_ADDR -sizeof(MemoryAllocator::BlockHeader);
    800021d8:	0000a797          	auipc	a5,0xa
    800021dc:	8a07b783          	ld	a5,-1888(a5) # 8000ba78 <_GLOBAL_OFFSET_TABLE_+0x18>
    800021e0:	0007b503          	ld	a0,0(a5)
    800021e4:	0000a797          	auipc	a5,0xa
    800021e8:	8d47b783          	ld	a5,-1836(a5) # 8000bab8 <_GLOBAL_OFFSET_TABLE_+0x58>
    800021ec:	0007b783          	ld	a5,0(a5)
    800021f0:	40f50533          	sub	a0,a0,a5
    void* m = mem_alloc(neg_size);
    800021f4:	ff050513          	addi	a0,a0,-16
    800021f8:	fffff097          	auipc	ra,0xfffff
    800021fc:	050080e7          	jalr	80(ra) # 80001248 <mem_alloc>
    if(m!=nullptr){
    80002200:	02050463          	beqz	a0,80002228 <_Z16mallocEverythingv+0x74>
        Riscv::printString("not OK\n");
    80002204:	00007517          	auipc	a0,0x7
    80002208:	e7c50513          	addi	a0,a0,-388 # 80009080 <CONSOLE_STATUS+0x70>
    8000220c:	00002097          	auipc	ra,0x2
    80002210:	8b4080e7          	jalr	-1868(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
}
    80002214:	01813083          	ld	ra,24(sp)
    80002218:	01013403          	ld	s0,16(sp)
    8000221c:	00813483          	ld	s1,8(sp)
    80002220:	02010113          	addi	sp,sp,32
    80002224:	00008067          	ret
    uint64 blockSize = (((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR - sizeof(MemoryAllocator::BlockHeader))>>6)-300;
    80002228:	0000a797          	auipc	a5,0xa
    8000222c:	8907b783          	ld	a5,-1904(a5) # 8000bab8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002230:	0007b503          	ld	a0,0(a5)
    80002234:	0000a797          	auipc	a5,0xa
    80002238:	8447b783          	ld	a5,-1980(a5) # 8000ba78 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000223c:	0007b783          	ld	a5,0(a5)
    80002240:	40f50533          	sub	a0,a0,a5
    80002244:	ff050513          	addi	a0,a0,-16
    80002248:	00655513          	srli	a0,a0,0x6
    8000224c:	ed450513          	addi	a0,a0,-300
    m = mem_alloc(blockSize<<6);
    80002250:	00651513          	slli	a0,a0,0x6
    80002254:	fffff097          	auipc	ra,0xfffff
    80002258:	ff4080e7          	jalr	-12(ra) # 80001248 <mem_alloc>
    8000225c:	00050493          	mv	s1,a0
    if(m==nullptr){
    80002260:	02050a63          	beqz	a0,80002294 <_Z16mallocEverythingv+0xe0>
    void *small_chunk = mem_alloc(1);
    80002264:	00100513          	li	a0,1
    80002268:	fffff097          	auipc	ra,0xfffff
    8000226c:	fe0080e7          	jalr	-32(ra) # 80001248 <mem_alloc>
    if(small_chunk == nullptr){
    80002270:	02050c63          	beqz	a0,800022a8 <_Z16mallocEverythingv+0xf4>
    delete (uint64*)m;
    80002274:	00048513          	mv	a0,s1
    80002278:	00001097          	auipc	ra,0x1
    8000227c:	438080e7          	jalr	1080(ra) # 800036b0 <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing allocating whole address space\n\n");
    80002280:	00007517          	auipc	a0,0x7
    80002284:	ee850513          	addi	a0,a0,-280 # 80009168 <CONSOLE_STATUS+0x158>
    80002288:	00002097          	auipc	ra,0x2
    8000228c:	838080e7          	jalr	-1992(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    80002290:	f85ff06f          	j	80002214 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    80002294:	00007517          	auipc	a0,0x7
    80002298:	dec50513          	addi	a0,a0,-532 # 80009080 <CONSOLE_STATUS+0x70>
    8000229c:	00002097          	auipc	ra,0x2
    800022a0:	824080e7          	jalr	-2012(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        return;
    800022a4:	f71ff06f          	j	80002214 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    800022a8:	00007517          	auipc	a0,0x7
    800022ac:	dd850513          	addi	a0,a0,-552 # 80009080 <CONSOLE_STATUS+0x70>
    800022b0:	00002097          	auipc	ra,0x2
    800022b4:	810080e7          	jalr	-2032(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        return;
    800022b8:	f5dff06f          	j	80002214 <_Z16mallocEverythingv+0x60>

00000000800022bc <_Z17mallocGapFillTestv>:
{
    800022bc:	f6010113          	addi	sp,sp,-160
    800022c0:	08113c23          	sd	ra,152(sp)
    800022c4:	08813823          	sd	s0,144(sp)
    800022c8:	08913423          	sd	s1,136(sp)
    800022cc:	09213023          	sd	s2,128(sp)
    800022d0:	07313c23          	sd	s3,120(sp)
    800022d4:	07413823          	sd	s4,112(sp)
    800022d8:	07513423          	sd	s5,104(sp)
    800022dc:	07613023          	sd	s6,96(sp)
    800022e0:	05713c23          	sd	s7,88(sp)
    800022e4:	05813823          	sd	s8,80(sp)
    800022e8:	0a010413          	addi	s0,sp,160
    Riscv::printString("Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    800022ec:	00007517          	auipc	a0,0x7
    800022f0:	eb450513          	addi	a0,a0,-332 # 800091a0 <CONSOLE_STATUS+0x190>
    800022f4:	00001097          	auipc	ra,0x1
    800022f8:	7cc080e7          	jalr	1996(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    for(int i=0;i<N;i++)
    800022fc:	00000493          	li	s1,0
    80002300:	00900793          	li	a5,9
    80002304:	0697c863          	blt	a5,s1,80002374 <_Z17mallocGapFillTestv+0xb8>
        m[i] = mem_alloc((i<<6)+1);
    80002308:	0064951b          	slliw	a0,s1,0x6
    8000230c:	0015051b          	addiw	a0,a0,1
    80002310:	fffff097          	auipc	ra,0xfffff
    80002314:	f38080e7          	jalr	-200(ra) # 80001248 <mem_alloc>
    80002318:	00349793          	slli	a5,s1,0x3
    8000231c:	fb040713          	addi	a4,s0,-80
    80002320:	00f707b3          	add	a5,a4,a5
    80002324:	faa7b823          	sd	a0,-80(a5)
        if(m[i] == nullptr){
    80002328:	00050663          	beqz	a0,80002334 <_Z17mallocGapFillTestv+0x78>
    for(int i=0;i<N;i++)
    8000232c:	0014849b          	addiw	s1,s1,1
    80002330:	fd1ff06f          	j	80002300 <_Z17mallocGapFillTestv+0x44>
            Riscv::printString("not OK\n");
    80002334:	00007517          	auipc	a0,0x7
    80002338:	d4c50513          	addi	a0,a0,-692 # 80009080 <CONSOLE_STATUS+0x70>
    8000233c:	00001097          	auipc	ra,0x1
    80002340:	784080e7          	jalr	1924(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
}
    80002344:	09813083          	ld	ra,152(sp)
    80002348:	09013403          	ld	s0,144(sp)
    8000234c:	08813483          	ld	s1,136(sp)
    80002350:	08013903          	ld	s2,128(sp)
    80002354:	07813983          	ld	s3,120(sp)
    80002358:	07013a03          	ld	s4,112(sp)
    8000235c:	06813a83          	ld	s5,104(sp)
    80002360:	06013b03          	ld	s6,96(sp)
    80002364:	05813b83          	ld	s7,88(sp)
    80002368:	05013c03          	ld	s8,80(sp)
    8000236c:	0a010113          	addi	sp,sp,160
    80002370:	00008067          	ret
    delete (uint64*)m[2];
    80002374:	f7043503          	ld	a0,-144(s0)
    80002378:	00050663          	beqz	a0,80002384 <_Z17mallocGapFillTestv+0xc8>
    8000237c:	00001097          	auipc	ra,0x1
    80002380:	334080e7          	jalr	820(ra) # 800036b0 <_ZdlPv>
    void* tmp1 = mem_alloc(1);
    80002384:	00100513          	li	a0,1
    80002388:	fffff097          	auipc	ra,0xfffff
    8000238c:	ec0080e7          	jalr	-320(ra) # 80001248 <mem_alloc>
    80002390:	00050493          	mv	s1,a0
    void* tmp2 = mem_alloc(1);
    80002394:	00100513          	li	a0,1
    80002398:	fffff097          	auipc	ra,0xfffff
    8000239c:	eb0080e7          	jalr	-336(ra) # 80001248 <mem_alloc>
    800023a0:	00050913          	mv	s2,a0
    void* tmp3 = mem_alloc(1);
    800023a4:	00100513          	li	a0,1
    800023a8:	fffff097          	auipc	ra,0xfffff
    800023ac:	ea0080e7          	jalr	-352(ra) # 80001248 <mem_alloc>
    800023b0:	00050993          	mv	s3,a0
    if(!tmp1 || !tmp2 || !tmp3)
    800023b4:	08048863          	beqz	s1,80002444 <_Z17mallocGapFillTestv+0x188>
    800023b8:	08090663          	beqz	s2,80002444 <_Z17mallocGapFillTestv+0x188>
    800023bc:	08050463          	beqz	a0,80002444 <_Z17mallocGapFillTestv+0x188>
    uint64 im1 = (uint64)m[1];
    800023c0:	f6843783          	ld	a5,-152(s0)
    uint64 im3 = (uint64)m[3];
    800023c4:	f7843503          	ld	a0,-136(s0)
    uint64 im5 = (uint64)m[5];
    800023c8:	f8843b03          	ld	s6,-120(s0)
    uint64 imN = (uint64)m[N];
    800023cc:	fb043603          	ld	a2,-80(s0)
    uint64 itmp2 = (uint64)tmp2;
    800023d0:	00090a13          	mv	s4,s2
    uint64 itmp3 = (uint64)tmp3;
    800023d4:	00098a93          	mv	s5,s3
    if(!(im1<itmp1 && itmp1<im3 && im1<itmp2 && itmp2<im3 && itmp3>imN))
    800023d8:	0897f063          	bgeu	a5,s1,80002458 <_Z17mallocGapFillTestv+0x19c>
    800023dc:	06a4fe63          	bgeu	s1,a0,80002458 <_Z17mallocGapFillTestv+0x19c>
    800023e0:	0727fc63          	bgeu	a5,s2,80002458 <_Z17mallocGapFillTestv+0x19c>
    800023e4:	06a97a63          	bgeu	s2,a0,80002458 <_Z17mallocGapFillTestv+0x19c>
    800023e8:	07367863          	bgeu	a2,s3,80002458 <_Z17mallocGapFillTestv+0x19c>
    delete (uint64*)m[3];
    800023ec:	00050663          	beqz	a0,800023f8 <_Z17mallocGapFillTestv+0x13c>
    800023f0:	00001097          	auipc	ra,0x1
    800023f4:	2c0080e7          	jalr	704(ra) # 800036b0 <_ZdlPv>
    delete (uint64*)m[4];
    800023f8:	f8043503          	ld	a0,-128(s0)
    800023fc:	00050663          	beqz	a0,80002408 <_Z17mallocGapFillTestv+0x14c>
    80002400:	00001097          	auipc	ra,0x1
    80002404:	2b0080e7          	jalr	688(ra) # 800036b0 <_ZdlPv>
    void* tmp4 = mem_alloc(640);
    80002408:	28000513          	li	a0,640
    8000240c:	fffff097          	auipc	ra,0xfffff
    80002410:	e3c080e7          	jalr	-452(ra) # 80001248 <mem_alloc>
    80002414:	00050c13          	mv	s8,a0
    void* tmp5 = mem_alloc(576);
    80002418:	24000513          	li	a0,576
    8000241c:	fffff097          	auipc	ra,0xfffff
    80002420:	e2c080e7          	jalr	-468(ra) # 80001248 <mem_alloc>
    80002424:	00050b93          	mv	s7,a0
    if(!tmp4 || !tmp5){
    80002428:	040c0263          	beqz	s8,8000246c <_Z17mallocGapFillTestv+0x1b0>
    8000242c:	04050063          	beqz	a0,8000246c <_Z17mallocGapFillTestv+0x1b0>
    if(!(itmp5>itmp2 && itmp5>im5 && itmp4<itmp3)){
    80002430:	04aa7863          	bgeu	s4,a0,80002480 <_Z17mallocGapFillTestv+0x1c4>
    80002434:	04ab7663          	bgeu	s6,a0,80002480 <_Z17mallocGapFillTestv+0x1c4>
    80002438:	055c7463          	bgeu	s8,s5,80002480 <_Z17mallocGapFillTestv+0x1c4>
    for(int i=0;i<N;i++){
    8000243c:	00000a13          	li	s4,0
    80002440:	0580006f          	j	80002498 <_Z17mallocGapFillTestv+0x1dc>
        Riscv::printString("not OK\n");
    80002444:	00007517          	auipc	a0,0x7
    80002448:	c3c50513          	addi	a0,a0,-964 # 80009080 <CONSOLE_STATUS+0x70>
    8000244c:	00001097          	auipc	ra,0x1
    80002450:	674080e7          	jalr	1652(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        return;
    80002454:	ef1ff06f          	j	80002344 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    80002458:	00007517          	auipc	a0,0x7
    8000245c:	c2850513          	addi	a0,a0,-984 # 80009080 <CONSOLE_STATUS+0x70>
    80002460:	00001097          	auipc	ra,0x1
    80002464:	660080e7          	jalr	1632(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        return;
    80002468:	eddff06f          	j	80002344 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    8000246c:	00007517          	auipc	a0,0x7
    80002470:	c1450513          	addi	a0,a0,-1004 # 80009080 <CONSOLE_STATUS+0x70>
    80002474:	00001097          	auipc	ra,0x1
    80002478:	64c080e7          	jalr	1612(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        return;
    8000247c:	ec9ff06f          	j	80002344 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    80002480:	00007517          	auipc	a0,0x7
    80002484:	c0050513          	addi	a0,a0,-1024 # 80009080 <CONSOLE_STATUS+0x70>
    80002488:	00001097          	auipc	ra,0x1
    8000248c:	638080e7          	jalr	1592(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        return;
    80002490:	eb5ff06f          	j	80002344 <_Z17mallocGapFillTestv+0x88>
    for(int i=0;i<N;i++){
    80002494:	001a0a1b          	addiw	s4,s4,1
    80002498:	00900793          	li	a5,9
    8000249c:	0347c263          	blt	a5,s4,800024c0 <_Z17mallocGapFillTestv+0x204>
        delete (uint64*)m[i];
    800024a0:	003a1793          	slli	a5,s4,0x3
    800024a4:	fb040713          	addi	a4,s0,-80
    800024a8:	00f707b3          	add	a5,a4,a5
    800024ac:	fb07b503          	ld	a0,-80(a5)
    800024b0:	fe0502e3          	beqz	a0,80002494 <_Z17mallocGapFillTestv+0x1d8>
    800024b4:	00001097          	auipc	ra,0x1
    800024b8:	1fc080e7          	jalr	508(ra) # 800036b0 <_ZdlPv>
    800024bc:	fd9ff06f          	j	80002494 <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    800024c0:	00048513          	mv	a0,s1
    800024c4:	00001097          	auipc	ra,0x1
    800024c8:	1ec080e7          	jalr	492(ra) # 800036b0 <_ZdlPv>
    delete (uint64*)tmp2;
    800024cc:	00090513          	mv	a0,s2
    800024d0:	00001097          	auipc	ra,0x1
    800024d4:	1e0080e7          	jalr	480(ra) # 800036b0 <_ZdlPv>
    delete (uint64*)tmp3;
    800024d8:	00098513          	mv	a0,s3
    800024dc:	00001097          	auipc	ra,0x1
    800024e0:	1d4080e7          	jalr	468(ra) # 800036b0 <_ZdlPv>
    delete (uint64*)tmp4;
    800024e4:	000c0513          	mv	a0,s8
    800024e8:	00001097          	auipc	ra,0x1
    800024ec:	1c8080e7          	jalr	456(ra) # 800036b0 <_ZdlPv>
    delete (uint64*)tmp5;
    800024f0:	000b8513          	mv	a0,s7
    800024f4:	00001097          	auipc	ra,0x1
    800024f8:	1bc080e7          	jalr	444(ra) # 800036b0 <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    800024fc:	00007517          	auipc	a0,0x7
    80002500:	cec50513          	addi	a0,a0,-788 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80002504:	00001097          	auipc	ra,0x1
    80002508:	5bc080e7          	jalr	1468(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    8000250c:	e39ff06f          	j	80002344 <_Z17mallocGapFillTestv+0x88>

0000000080002510 <_Z21memoryAllocationTestsv>:
{
    80002510:	ff010113          	addi	sp,sp,-16
    80002514:	00113423          	sd	ra,8(sp)
    80002518:	00813023          	sd	s0,0(sp)
    8000251c:	01010413          	addi	s0,sp,16
    mallocGapFillTest();
    80002520:	00000097          	auipc	ra,0x0
    80002524:	d9c080e7          	jalr	-612(ra) # 800022bc <_Z17mallocGapFillTestv>
}
    80002528:	00813083          	ld	ra,8(sp)
    8000252c:	00013403          	ld	s0,0(sp)
    80002530:	01010113          	addi	sp,sp,16
    80002534:	00008067          	ret

0000000080002538 <_Z8semTest1v>:

void semTest1()
{
    80002538:	fe010113          	addi	sp,sp,-32
    8000253c:	00113c23          	sd	ra,24(sp)
    80002540:	00813823          	sd	s0,16(sp)
    80002544:	02010413          	addi	s0,sp,32
    sem_open(&spaceAvailable, 10);
    80002548:	00a00593          	li	a1,10
    8000254c:	00009517          	auipc	a0,0x9
    80002550:	5e450513          	addi	a0,a0,1508 # 8000bb30 <spaceAvailable>
    80002554:	fffff097          	auipc	ra,0xfffff
    80002558:	e18080e7          	jalr	-488(ra) # 8000136c <sem_open>

    sem_open(&itemAvailable, 0);
    8000255c:	00000593          	li	a1,0
    80002560:	00009517          	auipc	a0,0x9
    80002564:	5b850513          	addi	a0,a0,1464 # 8000bb18 <itemAvailable>
    80002568:	fffff097          	auipc	ra,0xfffff
    8000256c:	e04080e7          	jalr	-508(ra) # 8000136c <sem_open>

    thread_t threadA, threadB;

    thread_create(&threadA, producerA, nullptr);
    80002570:	00000613          	li	a2,0
    80002574:	fffff597          	auipc	a1,0xfffff
    80002578:	2c458593          	addi	a1,a1,708 # 80001838 <_Z9producerAPv>
    8000257c:	fe840513          	addi	a0,s0,-24
    80002580:	fffff097          	auipc	ra,0xfffff
    80002584:	d24080e7          	jalr	-732(ra) # 800012a4 <thread_create>

    thread_create(&threadB, consumerA, nullptr);
    80002588:	00000613          	li	a2,0
    8000258c:	fffff597          	auipc	a1,0xfffff
    80002590:	22458593          	addi	a1,a1,548 # 800017b0 <_Z9consumerAPv>
    80002594:	fe040513          	addi	a0,s0,-32
    80002598:	fffff097          	auipc	ra,0xfffff
    8000259c:	d0c080e7          	jalr	-756(ra) # 800012a4 <thread_create>
    800025a0:	00c0006f          	j	800025ac <_Z8semTest1v+0x74>

    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
        thread_dispatch();
    800025a4:	fffff097          	auipc	ra,0xfffff
    800025a8:	d80080e7          	jalr	-640(ra) # 80001324 <thread_dispatch>
    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
    800025ac:	fe843503          	ld	a0,-24(s0)
    800025b0:	00000097          	auipc	ra,0x0
    800025b4:	498080e7          	jalr	1176(ra) # 80002a48 <_ZN3PCB10isFinishedEv>
    800025b8:	fe0506e3          	beqz	a0,800025a4 <_Z8semTest1v+0x6c>
    800025bc:	fe843503          	ld	a0,-24(s0)
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	488080e7          	jalr	1160(ra) # 80002a48 <_ZN3PCB10isFinishedEv>
    800025c8:	fc050ee3          	beqz	a0,800025a4 <_Z8semTest1v+0x6c>
}
    800025cc:	01813083          	ld	ra,24(sp)
    800025d0:	01013403          	ld	s0,16(sp)
    800025d4:	02010113          	addi	sp,sp,32
    800025d8:	00008067          	ret

00000000800025dc <_Z14semaphoreTestsv>:
{
    800025dc:	ff010113          	addi	sp,sp,-16
    800025e0:	00113423          	sd	ra,8(sp)
    800025e4:	00813023          	sd	s0,0(sp)
    800025e8:	01010413          	addi	s0,sp,16
    semTest1();
    800025ec:	00000097          	auipc	ra,0x0
    800025f0:	f4c080e7          	jalr	-180(ra) # 80002538 <_Z8semTest1v>
}
    800025f4:	00813083          	ld	ra,8(sp)
    800025f8:	00013403          	ld	s0,0(sp)
    800025fc:	01010113          	addi	sp,sp,16
    80002600:	00008067          	ret

0000000080002604 <_Z7myTestsv>:
{
    80002604:	ff010113          	addi	sp,sp,-16
    80002608:	00113423          	sd	ra,8(sp)
    8000260c:	00813023          	sd	s0,0(sp)
    80002610:	01010413          	addi	s0,sp,16
    semaphoreTests();
    80002614:	00000097          	auipc	ra,0x0
    80002618:	fc8080e7          	jalr	-56(ra) # 800025dc <_Z14semaphoreTestsv>
}
    8000261c:	00813083          	ld	ra,8(sp)
    80002620:	00013403          	ld	s0,0(sp)
    80002624:	01010113          	addi	sp,sp,16
    80002628:	00008067          	ret

000000008000262c <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    8000262c:	ff010113          	addi	sp,sp,-16
    80002630:	00813423          	sd	s0,8(sp)
    80002634:	01010413          	addi	s0,sp,16
    80002638:	00813403          	ld	s0,8(sp)
    8000263c:	01010113          	addi	sp,sp,16
    80002640:	00008067          	ret

0000000080002644 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80002644:	ff010113          	addi	sp,sp,-16
    80002648:	00813423          	sd	s0,8(sp)
    8000264c:	01010413          	addi	s0,sp,16
    80002650:	00813403          	ld	s0,8(sp)
    80002654:	01010113          	addi	sp,sp,16
    80002658:	00008067          	ret

000000008000265c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    8000265c:	ff010113          	addi	sp,sp,-16
    80002660:	00113423          	sd	ra,8(sp)
    80002664:	00813023          	sd	s0,0(sp)
    80002668:	01010413          	addi	s0,sp,16
    8000266c:	00009797          	auipc	a5,0x9
    80002670:	2b478793          	addi	a5,a5,692 # 8000b920 <_ZTV14PeriodicThread+0x10>
    80002674:	00f53023          	sd	a5,0(a0)
    80002678:	00001097          	auipc	ra,0x1
    8000267c:	f54080e7          	jalr	-172(ra) # 800035cc <_ZN6ThreadD1Ev>
    80002680:	00813083          	ld	ra,8(sp)
    80002684:	00013403          	ld	s0,0(sp)
    80002688:	01010113          	addi	sp,sp,16
    8000268c:	00008067          	ret

0000000080002690 <_ZN14PeriodicThreadD0Ev>:
    80002690:	fe010113          	addi	sp,sp,-32
    80002694:	00113c23          	sd	ra,24(sp)
    80002698:	00813823          	sd	s0,16(sp)
    8000269c:	00913423          	sd	s1,8(sp)
    800026a0:	02010413          	addi	s0,sp,32
    800026a4:	00050493          	mv	s1,a0
    800026a8:	00009797          	auipc	a5,0x9
    800026ac:	27878793          	addi	a5,a5,632 # 8000b920 <_ZTV14PeriodicThread+0x10>
    800026b0:	00f53023          	sd	a5,0(a0)
    800026b4:	00001097          	auipc	ra,0x1
    800026b8:	f18080e7          	jalr	-232(ra) # 800035cc <_ZN6ThreadD1Ev>
    800026bc:	00048513          	mv	a0,s1
    800026c0:	00001097          	auipc	ra,0x1
    800026c4:	ff0080e7          	jalr	-16(ra) # 800036b0 <_ZdlPv>
    800026c8:	01813083          	ld	ra,24(sp)
    800026cc:	01013403          	ld	s0,16(sp)
    800026d0:	00813483          	ld	s1,8(sp)
    800026d4:	02010113          	addi	sp,sp,32
    800026d8:	00008067          	ret

00000000800026dc <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    800026dc:	ff010113          	addi	sp,sp,-16
    800026e0:	00113423          	sd	ra,8(sp)
    800026e4:	00813023          	sd	s0,0(sp)
    800026e8:	01010413          	addi	s0,sp,16
    800026ec:	00009797          	auipc	a5,0x9
    800026f0:	23478793          	addi	a5,a5,564 # 8000b920 <_ZTV14PeriodicThread+0x10>
    800026f4:	00f53023          	sd	a5,0(a0)
    800026f8:	00001097          	auipc	ra,0x1
    800026fc:	ed4080e7          	jalr	-300(ra) # 800035cc <_ZN6ThreadD1Ev>
    80002700:	00813083          	ld	ra,8(sp)
    80002704:	00013403          	ld	s0,0(sp)
    80002708:	01010113          	addi	sp,sp,16
    8000270c:	00008067          	ret

0000000080002710 <_ZN12TestPeriodicD0Ev>:
    80002710:	fe010113          	addi	sp,sp,-32
    80002714:	00113c23          	sd	ra,24(sp)
    80002718:	00813823          	sd	s0,16(sp)
    8000271c:	00913423          	sd	s1,8(sp)
    80002720:	02010413          	addi	s0,sp,32
    80002724:	00050493          	mv	s1,a0
    80002728:	00009797          	auipc	a5,0x9
    8000272c:	1f878793          	addi	a5,a5,504 # 8000b920 <_ZTV14PeriodicThread+0x10>
    80002730:	00f53023          	sd	a5,0(a0)
    80002734:	00001097          	auipc	ra,0x1
    80002738:	e98080e7          	jalr	-360(ra) # 800035cc <_ZN6ThreadD1Ev>
    8000273c:	00048513          	mv	a0,s1
    80002740:	00001097          	auipc	ra,0x1
    80002744:	f70080e7          	jalr	-144(ra) # 800036b0 <_ZdlPv>
    80002748:	01813083          	ld	ra,24(sp)
    8000274c:	01013403          	ld	s0,16(sp)
    80002750:	00813483          	ld	s1,8(sp)
    80002754:	02010113          	addi	sp,sp,32
    80002758:	00008067          	ret

000000008000275c <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    8000275c:	ff010113          	addi	sp,sp,-16
    80002760:	00113423          	sd	ra,8(sp)
    80002764:	00813023          	sd	s0,0(sp)
    80002768:	01010413          	addi	s0,sp,16
    //Riscv::printString("Runner started...\n");
    Riscv::popSppSpie();
    8000276c:	00001097          	auipc	ra,0x1
    80002770:	334080e7          	jalr	820(ra) # 80003aa0 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    80002774:	00009797          	auipc	a5,0x9
    80002778:	3cc7b783          	ld	a5,972(a5) # 8000bb40 <_ZN3PCB7runningE>
    8000277c:	0207b703          	ld	a4,32(a5)
    80002780:	0287b503          	ld	a0,40(a5)
    80002784:	000700e7          	jalr	a4

    thread_exit();
    80002788:	fffff097          	auipc	ra,0xfffff
    8000278c:	bbc080e7          	jalr	-1092(ra) # 80001344 <thread_exit>
}
    80002790:	00813083          	ld	ra,8(sp)
    80002794:	00013403          	ld	s0,0(sp)
    80002798:	01010113          	addi	sp,sp,16
    8000279c:	00008067          	ret

00000000800027a0 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800027a0:	ff010113          	addi	sp,sp,-16
    800027a4:	00813423          	sd	s0,8(sp)
    800027a8:	01010413          	addi	s0,sp,16
    })
    800027ac:	00050023          	sb	zero,0(a0)
    800027b0:	00e53823          	sd	a4,16(a0)
    800027b4:	00053c23          	sd	zero,24(a0)
    800027b8:	02b53023          	sd	a1,32(a0)
    800027bc:	02c53423          	sd	a2,40(a0)
    800027c0:	02d53823          	sd	a3,48(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800027c4:	000017b7          	lui	a5,0x1
    800027c8:	00f686b3          	add	a3,a3,a5
    })
    800027cc:	04d53023          	sd	a3,64(a0)
    800027d0:	00000797          	auipc	a5,0x0
    800027d4:	f8c78793          	addi	a5,a5,-116 # 8000275c <_ZN3PCB6runnerEv>
    800027d8:	04f53423          	sd	a5,72(a0)
    nextPCB = 0;
    800027dc:	00053423          	sd	zero,8(a0)
}
    800027e0:	00813403          	ld	s0,8(sp)
    800027e4:	01010113          	addi	sp,sp,16
    800027e8:	00008067          	ret

00000000800027ec <_ZN3PCB5sleepEm>:
{
    800027ec:	ff010113          	addi	sp,sp,-16
    800027f0:	00813423          	sd	s0,8(sp)
    800027f4:	01010413          	addi	s0,sp,16
}
    800027f8:	00813403          	ld	s0,8(sp)
    800027fc:	01010113          	addi	sp,sp,16
    80002800:	00008067          	ret

0000000080002804 <_ZN3PCB5startEv>:
{
    80002804:	ff010113          	addi	sp,sp,-16
    80002808:	00113423          	sd	ra,8(sp)
    8000280c:	00813023          	sd	s0,0(sp)
    80002810:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002814:	00001097          	auipc	ra,0x1
    80002818:	c80080e7          	jalr	-896(ra) # 80003494 <_ZN9Scheduler3putEP3PCB>
}
    8000281c:	00813083          	ld	ra,8(sp)
    80002820:	00013403          	ld	s0,0(sp)
    80002824:	01010113          	addi	sp,sp,16
    80002828:	00008067          	ret

000000008000282c <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    8000282c:	fe010113          	addi	sp,sp,-32
    80002830:	00113c23          	sd	ra,24(sp)
    80002834:	00813823          	sd	s0,16(sp)
    80002838:	00913423          	sd	s1,8(sp)
    8000283c:	02010413          	addi	s0,sp,32
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    80002840:	00009497          	auipc	s1,0x9
    80002844:	3004b483          	ld	s1,768(s1) # 8000bb40 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80002848:	0384a703          	lw	a4,56(s1)
    if(old->getState() == PCB::RUNNING)
    8000284c:	00100793          	li	a5,1
    80002850:	04f70063          	beq	a4,a5,80002890 <_ZN3PCB8dispatchEv+0x64>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002854:	00001097          	auipc	ra,0x1
    80002858:	c94080e7          	jalr	-876(ra) # 800034e8 <_ZN9Scheduler3getEv>
    8000285c:	00009797          	auipc	a5,0x9
    80002860:	2ea7b223          	sd	a0,740(a5) # 8000bb40 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    80002864:	00100793          	li	a5,1
    80002868:	02f52c23          	sw	a5,56(a0)
    //if(PCB::running->systemThread)
    //    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    //else
    //    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);

    PCB::contextSwitch(&old->context, &running->context);
    8000286c:	04050593          	addi	a1,a0,64
    80002870:	04048513          	addi	a0,s1,64
    80002874:	fffff097          	auipc	ra,0xfffff
    80002878:	9b4080e7          	jalr	-1612(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    8000287c:	01813083          	ld	ra,24(sp)
    80002880:	01013403          	ld	s0,16(sp)
    80002884:	00813483          	ld	s1,8(sp)
    80002888:	02010113          	addi	sp,sp,32
    8000288c:	00008067          	ret
        Scheduler::put(old);
    80002890:	00048513          	mv	a0,s1
    80002894:	00001097          	auipc	ra,0x1
    80002898:	c00080e7          	jalr	-1024(ra) # 80003494 <_ZN9Scheduler3putEP3PCB>
    8000289c:	fb9ff06f          	j	80002854 <_ZN3PCB8dispatchEv+0x28>

00000000800028a0 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800028a0:	ff010113          	addi	sp,sp,-16
    800028a4:	00113423          	sd	ra,8(sp)
    800028a8:	00813023          	sd	s0,0(sp)
    800028ac:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800028b0:	00002097          	auipc	ra,0x2
    800028b4:	a30080e7          	jalr	-1488(ra) # 800042e0 <_Z7kmallocm>
}
    800028b8:	00813083          	ld	ra,8(sp)
    800028bc:	00013403          	ld	s0,0(sp)
    800028c0:	01010113          	addi	sp,sp,16
    800028c4:	00008067          	ret

00000000800028c8 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    800028c8:	ff010113          	addi	sp,sp,-16
    800028cc:	00113423          	sd	ra,8(sp)
    800028d0:	00813023          	sd	s0,0(sp)
    800028d4:	01010413          	addi	s0,sp,16
    kfree(p);
    800028d8:	00002097          	auipc	ra,0x2
    800028dc:	a64080e7          	jalr	-1436(ra) # 8000433c <_Z5kfreePv>
}
    800028e0:	00813083          	ld	ra,8(sp)
    800028e4:	00013403          	ld	s0,0(sp)
    800028e8:	01010113          	addi	sp,sp,16
    800028ec:	00008067          	ret

00000000800028f0 <_ZN3PCBD1Ev>:

PCB::~PCB()
    800028f0:	ff010113          	addi	sp,sp,-16
    800028f4:	00113423          	sd	ra,8(sp)
    800028f8:	00813023          	sd	s0,0(sp)
    800028fc:	01010413          	addi	s0,sp,16
{
    kfree(beginSP);
    80002900:	03053503          	ld	a0,48(a0)
    80002904:	00002097          	auipc	ra,0x2
    80002908:	a38080e7          	jalr	-1480(ra) # 8000433c <_Z5kfreePv>
}
    8000290c:	00813083          	ld	ra,8(sp)
    80002910:	00013403          	ld	s0,0(sp)
    80002914:	01010113          	addi	sp,sp,16
    80002918:	00008067          	ret

000000008000291c <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    8000291c:	fd010113          	addi	sp,sp,-48
    80002920:	02113423          	sd	ra,40(sp)
    80002924:	02813023          	sd	s0,32(sp)
    80002928:	00913c23          	sd	s1,24(sp)
    8000292c:	01213823          	sd	s2,16(sp)
    80002930:	01313423          	sd	s3,8(sp)
    80002934:	01413023          	sd	s4,0(sp)
    80002938:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    8000293c:	05000513          	li	a0,80
    80002940:	00000097          	auipc	ra,0x0
    80002944:	f60080e7          	jalr	-160(ra) # 800028a0 <_ZN3PCBnwEm>
    80002948:	00050493          	mv	s1,a0
    8000294c:	00000713          	li	a4,0
    80002950:	00000693          	li	a3,0
    80002954:	00000613          	li	a2,0
    80002958:	00000593          	li	a1,0
    8000295c:	00000097          	auipc	ra,0x0
    80002960:	e44080e7          	jalr	-444(ra) # 800027a0 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->start();
    80002964:	00048513          	mv	a0,s1
    80002968:	00000097          	auipc	ra,0x0
    8000296c:	e9c080e7          	jalr	-356(ra) # 80002804 <_ZN3PCB5startEv>
    mainSystem->systemThread = true;
    80002970:	00100993          	li	s3,1
    80002974:	01348023          	sb	s3,0(s1)
    PCB::running = Scheduler::get();
    80002978:	00001097          	auipc	ra,0x1
    8000297c:	b70080e7          	jalr	-1168(ra) # 800034e8 <_ZN9Scheduler3getEv>
    80002980:	00009797          	auipc	a5,0x9
    80002984:	1ca7b023          	sd	a0,448(a5) # 8000bb40 <_ZN3PCB7runningE>
    80002988:	00100a13          	li	s4,1
    8000298c:	03452c23          	sw	s4,56(a0)
    PCB::running->setState(PCB::RUNNING);
    PCB* consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002990:	00001537          	lui	a0,0x1
    80002994:	00002097          	auipc	ra,0x2
    80002998:	94c080e7          	jalr	-1716(ra) # 800042e0 <_Z7kmallocm>
    8000299c:	00050913          	mv	s2,a0
    800029a0:	05000513          	li	a0,80
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	efc080e7          	jalr	-260(ra) # 800028a0 <_ZN3PCBnwEm>
    800029ac:	00050493          	mv	s1,a0
    800029b0:	00200713          	li	a4,2
    800029b4:	00090693          	mv	a3,s2
    800029b8:	00000613          	li	a2,0
    800029bc:	00009597          	auipc	a1,0x9
    800029c0:	0e45b583          	ld	a1,228(a1) # 8000baa0 <_GLOBAL_OFFSET_TABLE_+0x40>
    800029c4:	00000097          	auipc	ra,0x0
    800029c8:	ddc080e7          	jalr	-548(ra) # 800027a0 <_ZN3PCBC1EPFvPvES0_S0_m>
    consolePCB->systemThread = true;
    800029cc:	01448023          	sb	s4,0(s1)
    consolePCB->start();
    800029d0:	00048513          	mv	a0,s1
    800029d4:	00000097          	auipc	ra,0x0
    800029d8:	e30080e7          	jalr	-464(ra) # 80002804 <_ZN3PCB5startEv>
    PCB* idlePCB = new PCB(&Riscv::idleRiscv, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    800029dc:	00001537          	lui	a0,0x1
    800029e0:	00002097          	auipc	ra,0x2
    800029e4:	900080e7          	jalr	-1792(ra) # 800042e0 <_Z7kmallocm>
    800029e8:	00050913          	mv	s2,a0
    800029ec:	05000513          	li	a0,80
    800029f0:	00000097          	auipc	ra,0x0
    800029f4:	eb0080e7          	jalr	-336(ra) # 800028a0 <_ZN3PCBnwEm>
    800029f8:	00050493          	mv	s1,a0
    800029fc:	00200713          	li	a4,2
    80002a00:	00090693          	mv	a3,s2
    80002a04:	00000613          	li	a2,0
    80002a08:	00009597          	auipc	a1,0x9
    80002a0c:	0a05b583          	ld	a1,160(a1) # 8000baa8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002a10:	00000097          	auipc	ra,0x0
    80002a14:	d90080e7          	jalr	-624(ra) # 800027a0 <_ZN3PCBC1EPFvPvES0_S0_m>
    idlePCB->start();
    80002a18:	00048513          	mv	a0,s1
    80002a1c:	00000097          	auipc	ra,0x0
    80002a20:	de8080e7          	jalr	-536(ra) # 80002804 <_ZN3PCB5startEv>
    idlePCB->systemThread = true;
    80002a24:	01348023          	sb	s3,0(s1)
    //PCB* consolePCBGetc = new PCB(&KConsole::getCharactersFromConsole, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    //consolePCBGetc->systemThread = true;
    //consolePCBGetc->start();
}
    80002a28:	02813083          	ld	ra,40(sp)
    80002a2c:	02013403          	ld	s0,32(sp)
    80002a30:	01813483          	ld	s1,24(sp)
    80002a34:	01013903          	ld	s2,16(sp)
    80002a38:	00813983          	ld	s3,8(sp)
    80002a3c:	00013a03          	ld	s4,0(sp)
    80002a40:	03010113          	addi	sp,sp,48
    80002a44:	00008067          	ret

0000000080002a48 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002a48:	ff010113          	addi	sp,sp,-16
    80002a4c:	00813423          	sd	s0,8(sp)
    80002a50:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002a54:	03852503          	lw	a0,56(a0) # 1038 <_entry-0x7fffefc8>
    80002a58:	ffd50513          	addi	a0,a0,-3
}
    80002a5c:	00153513          	seqz	a0,a0
    80002a60:	00813403          	ld	s0,8(sp)
    80002a64:	01010113          	addi	sp,sp,16
    80002a68:	00008067          	ret

0000000080002a6c <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002a6c:	ff010113          	addi	sp,sp,-16
    80002a70:	00113423          	sd	ra,8(sp)
    80002a74:	00813023          	sd	s0,0(sp)
    80002a78:	01010413          	addi	s0,sp,16
    Riscv::printString("Exiting thread...\n");
    80002a7c:	00006517          	auipc	a0,0x6
    80002a80:	7c450513          	addi	a0,a0,1988 # 80009240 <CONSOLE_STATUS+0x230>
    80002a84:	00001097          	auipc	ra,0x1
    80002a88:	03c080e7          	jalr	60(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    PCB::timeSliceCounter = 0;
    80002a8c:	00009797          	auipc	a5,0x9
    80002a90:	0b478793          	addi	a5,a5,180 # 8000bb40 <_ZN3PCB7runningE>
    80002a94:	0007b423          	sd	zero,8(a5)
    PCB::running->setState(PCB::FINISHED);
    80002a98:	0007b783          	ld	a5,0(a5)
    80002a9c:	00300713          	li	a4,3
    80002aa0:	02e7ac23          	sw	a4,56(a5)
    PCB::dispatch();
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	d88080e7          	jalr	-632(ra) # 8000282c <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80002aac:	00000513          	li	a0,0
}
    80002ab0:	00813083          	ld	ra,8(sp)
    80002ab4:	00013403          	ld	s0,0(sp)
    80002ab8:	01010113          	addi	sp,sp,16
    80002abc:	00008067          	ret

0000000080002ac0 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002ac0:	ff010113          	addi	sp,sp,-16
    80002ac4:	00113423          	sd	ra,8(sp)
    80002ac8:	00813023          	sd	s0,0(sp)
    80002acc:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002ad0:	00009797          	auipc	a5,0x9
    80002ad4:	0607bc23          	sd	zero,120(a5) # 8000bb48 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002ad8:	00000097          	auipc	ra,0x0
    80002adc:	d54080e7          	jalr	-684(ra) # 8000282c <_ZN3PCB8dispatchEv>
}
    80002ae0:	00813083          	ld	ra,8(sp)
    80002ae4:	00013403          	ld	s0,0(sp)
    80002ae8:	01010113          	addi	sp,sp,16
    80002aec:	00008067          	ret

0000000080002af0 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002af0:	ff010113          	addi	sp,sp,-16
    80002af4:	00113423          	sd	ra,8(sp)
    80002af8:	00813023          	sd	s0,0(sp)
    80002afc:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002b00:	00058713          	mv	a4,a1
    PCB::timeSliceCounter = 0;
    80002b04:	00009797          	auipc	a5,0x9
    80002b08:	03c78793          	addi	a5,a5,60 # 8000bb40 <_ZN3PCB7runningE>
    80002b0c:	0007b423          	sd	zero,8(a5)
    PCB::running->setTimeToSleep(time);
    80002b10:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002b14:	00e7bc23          	sd	a4,24(a5)
    SleepPCBList::insertSleepingPCB();
    80002b18:	00000097          	auipc	ra,0x0
    80002b1c:	638080e7          	jalr	1592(ra) # 80003150 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	d0c080e7          	jalr	-756(ra) # 8000282c <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002b28:	00000513          	li	a0,0
}
    80002b2c:	00813083          	ld	ra,8(sp)
    80002b30:	00013403          	ld	s0,0(sp)
    80002b34:	01010113          	addi	sp,sp,16
    80002b38:	00008067          	ret

0000000080002b3c <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002b3c:	fd010113          	addi	sp,sp,-48
    80002b40:	02113423          	sd	ra,40(sp)
    80002b44:	02813023          	sd	s0,32(sp)
    80002b48:	00913c23          	sd	s1,24(sp)
    80002b4c:	01213823          	sd	s2,16(sp)
    80002b50:	01313423          	sd	s3,8(sp)
    80002b54:	01413023          	sd	s4,0(sp)
    80002b58:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002b5c:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002b60:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002b64:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002b68:	05000513          	li	a0,80
    80002b6c:	00000097          	auipc	ra,0x0
    80002b70:	d34080e7          	jalr	-716(ra) # 800028a0 <_ZN3PCBnwEm>
    80002b74:	00050493          	mv	s1,a0
    80002b78:	00200713          	li	a4,2
    80002b7c:	00009697          	auipc	a3,0x9
    80002b80:	fd46b683          	ld	a3,-44(a3) # 8000bb50 <_ZN3PCB10savedRegA4E>
    80002b84:	000a0613          	mv	a2,s4
    80002b88:	00098593          	mv	a1,s3
    80002b8c:	00000097          	auipc	ra,0x0
    80002b90:	c14080e7          	jalr	-1004(ra) # 800027a0 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002b94:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002b98:	02048a63          	beqz	s1,80002bcc <_ZN3PCB19threadCreateHandlerEv+0x90>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002b9c:	00048513          	mv	a0,s1
    80002ba0:	00000097          	auipc	ra,0x0
    80002ba4:	c64080e7          	jalr	-924(ra) # 80002804 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002ba8:	00000513          	li	a0,0
    }
}
    80002bac:	02813083          	ld	ra,40(sp)
    80002bb0:	02013403          	ld	s0,32(sp)
    80002bb4:	01813483          	ld	s1,24(sp)
    80002bb8:	01013903          	ld	s2,16(sp)
    80002bbc:	00813983          	ld	s3,8(sp)
    80002bc0:	00013a03          	ld	s4,0(sp)
    80002bc4:	03010113          	addi	sp,sp,48
    80002bc8:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002bcc:	fff00513          	li	a0,-1
    80002bd0:	fddff06f          	j	80002bac <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002bd4 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002bd4:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002bd8:	02050863          	beqz	a0,80002c08 <_ZN3PCB18threadStartHandlerEv+0x34>
{
    80002bdc:	ff010113          	addi	sp,sp,-16
    80002be0:	00113423          	sd	ra,8(sp)
    80002be4:	00813023          	sd	s0,0(sp)
    80002be8:	01010413          	addi	s0,sp,16
    {
        pcb->start();
    80002bec:	00000097          	auipc	ra,0x0
    80002bf0:	c18080e7          	jalr	-1000(ra) # 80002804 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002bf4:	00000513          	li	a0,0
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }

}
    80002bf8:	00813083          	ld	ra,8(sp)
    80002bfc:	00013403          	ld	s0,0(sp)
    80002c00:	01010113          	addi	sp,sp,16
    80002c04:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002c08:	fff00513          	li	a0,-1
    80002c0c:	00008067          	ret

0000000080002c10 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002c10:	fd010113          	addi	sp,sp,-48
    80002c14:	02113423          	sd	ra,40(sp)
    80002c18:	02813023          	sd	s0,32(sp)
    80002c1c:	00913c23          	sd	s1,24(sp)
    80002c20:	01213823          	sd	s2,16(sp)
    80002c24:	01313423          	sd	s3,8(sp)
    80002c28:	01413023          	sd	s4,0(sp)
    80002c2c:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002c30:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002c34:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002c38:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002c3c:	05000513          	li	a0,80
    80002c40:	00000097          	auipc	ra,0x0
    80002c44:	c60080e7          	jalr	-928(ra) # 800028a0 <_ZN3PCBnwEm>
    80002c48:	00050493          	mv	s1,a0
    80002c4c:	00200713          	li	a4,2
    80002c50:	00009697          	auipc	a3,0x9
    80002c54:	f006b683          	ld	a3,-256(a3) # 8000bb50 <_ZN3PCB10savedRegA4E>
    80002c58:	000a0613          	mv	a2,s4
    80002c5c:	00098593          	mv	a1,s3
    80002c60:	00000097          	auipc	ra,0x0
    80002c64:	b40080e7          	jalr	-1216(ra) # 800027a0 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002c68:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002c6c:	02048463          	beqz	s1,80002c94 <_ZN3PCB20threadMakePCBHandlerEv+0x84>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80002c70:	00000513          	li	a0,0
}
    80002c74:	02813083          	ld	ra,40(sp)
    80002c78:	02013403          	ld	s0,32(sp)
    80002c7c:	01813483          	ld	s1,24(sp)
    80002c80:	01013903          	ld	s2,16(sp)
    80002c84:	00813983          	ld	s3,8(sp)
    80002c88:	00013a03          	ld	s4,0(sp)
    80002c8c:	03010113          	addi	sp,sp,48
    80002c90:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002c94:	fff00513          	li	a0,-1
    80002c98:	fddff06f          	j	80002c74 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002c9c <_ZN8KConsole7putCharEcRPNS_4ElemES2_>:
KSemaphore* KConsole::hasCharactersOutput = 0;
KSemaphore* KConsole::hasCharactersInput = 0;
int KConsole::cntWInterrupt = 0;

void KConsole::putChar(char c, Elem*& head, Elem*& tail)
{
    80002c9c:	fd010113          	addi	sp,sp,-48
    80002ca0:	02113423          	sd	ra,40(sp)
    80002ca4:	02813023          	sd	s0,32(sp)
    80002ca8:	00913c23          	sd	s1,24(sp)
    80002cac:	01213823          	sd	s2,16(sp)
    80002cb0:	01313423          	sd	s3,8(sp)
    80002cb4:	03010413          	addi	s0,sp,48
    80002cb8:	00050993          	mv	s3,a0
    80002cbc:	00058913          	mv	s2,a1
    80002cc0:	00060493          	mv	s1,a2
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    80002cc4:	01000513          	li	a0,16
    80002cc8:	00001097          	auipc	ra,0x1
    80002ccc:	618080e7          	jalr	1560(ra) # 800042e0 <_Z7kmallocm>
    newElem->next = 0;
    80002cd0:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    80002cd4:	01350423          	sb	s3,8(a0)
    if(head == 0)
    80002cd8:	00093783          	ld	a5,0(s2)
    80002cdc:	02078663          	beqz	a5,80002d08 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x6c>
    {
        head = tail = newElem;
    }
    else
    {
        tail->next = newElem;
    80002ce0:	0004b783          	ld	a5,0(s1)
    80002ce4:	00a7b023          	sd	a0,0(a5)
        tail = newElem;
    80002ce8:	00a4b023          	sd	a0,0(s1)
    }
}
    80002cec:	02813083          	ld	ra,40(sp)
    80002cf0:	02013403          	ld	s0,32(sp)
    80002cf4:	01813483          	ld	s1,24(sp)
    80002cf8:	01013903          	ld	s2,16(sp)
    80002cfc:	00813983          	ld	s3,8(sp)
    80002d00:	03010113          	addi	sp,sp,48
    80002d04:	00008067          	ret
        head = tail = newElem;
    80002d08:	00a4b023          	sd	a0,0(s1)
    80002d0c:	00a93023          	sd	a0,0(s2)
    80002d10:	fddff06f          	j	80002cec <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x50>

0000000080002d14 <_ZN8KConsole7getCharERPNS_4ElemES2_>:

char KConsole::getChar(Elem*& head, Elem*& tail)
{
    80002d14:	fe010113          	addi	sp,sp,-32
    80002d18:	00113c23          	sd	ra,24(sp)
    80002d1c:	00813823          	sd	s0,16(sp)
    80002d20:	00913423          	sd	s1,8(sp)
    80002d24:	02010413          	addi	s0,sp,32
    80002d28:	00050793          	mv	a5,a0
    if(head == 0)
    80002d2c:	00053503          	ld	a0,0(a0)
    80002d30:	02050e63          	beqz	a0,80002d6c <_ZN8KConsole7getCharERPNS_4ElemES2_+0x58>
        return 0;

    Elem* ret = head;
    head = head->next;
    80002d34:	00053703          	ld	a4,0(a0)
    80002d38:	00e7b023          	sd	a4,0(a5)
    if(head == 0)
    80002d3c:	02070463          	beqz	a4,80002d64 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x50>
        tail = 0;

    char c = ret->data;
    80002d40:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    80002d44:	00001097          	auipc	ra,0x1
    80002d48:	5f8080e7          	jalr	1528(ra) # 8000433c <_Z5kfreePv>
    return c;
}
    80002d4c:	00048513          	mv	a0,s1
    80002d50:	01813083          	ld	ra,24(sp)
    80002d54:	01013403          	ld	s0,16(sp)
    80002d58:	00813483          	ld	s1,8(sp)
    80002d5c:	02010113          	addi	sp,sp,32
    80002d60:	00008067          	ret
        tail = 0;
    80002d64:	0005b023          	sd	zero,0(a1)
    80002d68:	fd9ff06f          	j	80002d40 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x2c>
        return 0;
    80002d6c:	00000493          	li	s1,0
    80002d70:	fddff06f          	j	80002d4c <_ZN8KConsole7getCharERPNS_4ElemES2_+0x38>

0000000080002d74 <_ZN8KConsole10initializeEv>:

void KConsole::initialize()
{
    80002d74:	fe010113          	addi	sp,sp,-32
    80002d78:	00113c23          	sd	ra,24(sp)
    80002d7c:	00813823          	sd	s0,16(sp)
    80002d80:	00913423          	sd	s1,8(sp)
    80002d84:	01213023          	sd	s2,0(sp)
    80002d88:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002d8c:	01800513          	li	a0,24
    80002d90:	00002097          	auipc	ra,0x2
    80002d94:	854080e7          	jalr	-1964(ra) # 800045e4 <_ZN10KSemaphorenwEm>
    80002d98:	00050493          	mv	s1,a0
    80002d9c:	00000593          	li	a1,0
    80002da0:	00001097          	auipc	ra,0x1
    80002da4:	5f4080e7          	jalr	1524(ra) # 80004394 <_ZN10KSemaphoreC1Ei>
    80002da8:	00009797          	auipc	a5,0x9
    80002dac:	da97b823          	sd	s1,-592(a5) # 8000bb58 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002db0:	01800513          	li	a0,24
    80002db4:	00002097          	auipc	ra,0x2
    80002db8:	830080e7          	jalr	-2000(ra) # 800045e4 <_ZN10KSemaphorenwEm>
    80002dbc:	00050493          	mv	s1,a0
    80002dc0:	00000593          	li	a1,0
    80002dc4:	00001097          	auipc	ra,0x1
    80002dc8:	5d0080e7          	jalr	1488(ra) # 80004394 <_ZN10KSemaphoreC1Ei>
    80002dcc:	00009797          	auipc	a5,0x9
    80002dd0:	d897ba23          	sd	s1,-620(a5) # 8000bb60 <_ZN8KConsole19hasCharactersOutputE>
}
    80002dd4:	01813083          	ld	ra,24(sp)
    80002dd8:	01013403          	ld	s0,16(sp)
    80002ddc:	00813483          	ld	s1,8(sp)
    80002de0:	00013903          	ld	s2,0(sp)
    80002de4:	02010113          	addi	sp,sp,32
    80002de8:	00008067          	ret
    80002dec:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002df0:	00048513          	mv	a0,s1
    80002df4:	00002097          	auipc	ra,0x2
    80002df8:	888080e7          	jalr	-1912(ra) # 8000467c <_ZN10KSemaphoredlEPv>
    80002dfc:	00090513          	mv	a0,s2
    80002e00:	0000a097          	auipc	ra,0xa
    80002e04:	eb8080e7          	jalr	-328(ra) # 8000ccb8 <_Unwind_Resume>
    80002e08:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002e0c:	00048513          	mv	a0,s1
    80002e10:	00002097          	auipc	ra,0x2
    80002e14:	86c080e7          	jalr	-1940(ra) # 8000467c <_ZN10KSemaphoredlEPv>
    80002e18:	00090513          	mv	a0,s2
    80002e1c:	0000a097          	auipc	ra,0xa
    80002e20:	e9c080e7          	jalr	-356(ra) # 8000ccb8 <_Unwind_Resume>

0000000080002e24 <_ZN8KConsole17putCharacterInputEc>:

    }
}

void KConsole::putCharacterInput(char c)
{
    80002e24:	ff010113          	addi	sp,sp,-16
    80002e28:	00113423          	sd	ra,8(sp)
    80002e2c:	00813023          	sd	s0,0(sp)
    80002e30:	01010413          	addi	s0,sp,16
    putChar(c, headInput, tailInput);
    80002e34:	00009617          	auipc	a2,0x9
    80002e38:	d3460613          	addi	a2,a2,-716 # 8000bb68 <_ZN8KConsole9tailInputE>
    80002e3c:	00009597          	auipc	a1,0x9
    80002e40:	d3458593          	addi	a1,a1,-716 # 8000bb70 <_ZN8KConsole9headInputE>
    80002e44:	00000097          	auipc	ra,0x0
    80002e48:	e58080e7          	jalr	-424(ra) # 80002c9c <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersInput->signal();
    80002e4c:	00009517          	auipc	a0,0x9
    80002e50:	d0c53503          	ld	a0,-756(a0) # 8000bb58 <_ZN8KConsole18hasCharactersInputE>
    80002e54:	00001097          	auipc	ra,0x1
    80002e58:	748080e7          	jalr	1864(ra) # 8000459c <_ZN10KSemaphore6signalEv>
}
    80002e5c:	00813083          	ld	ra,8(sp)
    80002e60:	00013403          	ld	s0,0(sp)
    80002e64:	01010113          	addi	sp,sp,16
    80002e68:	00008067          	ret

0000000080002e6c <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80002e6c:	00009797          	auipc	a5,0x9
    80002e70:	c047b783          	ld	a5,-1020(a5) # 8000ba70 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002e74:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002e78:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002e7c:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002e80:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002e84:	0017f793          	andi	a5,a5,1
    80002e88:	06078463          	beqz	a5,80002ef0 <_ZN8KConsole24getCharactersFromConsoleEPv+0x84>
{
    80002e8c:	ff010113          	addi	sp,sp,-16
    80002e90:	00113423          	sd	ra,8(sp)
    80002e94:	00813023          	sd	s0,0(sp)
    80002e98:	01010413          	addi	s0,sp,16
            x = CONSOLE_TX_DATA;
    80002e9c:	00009797          	auipc	a5,0x9
    80002ea0:	bec7b783          	ld	a5,-1044(a5) # 8000ba88 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002ea4:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002ea8:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1,0(a0)");
    80002eac:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(c));
    80002eb0:	00058513          	mv	a0,a1
            putCharacterInput(c);
    80002eb4:	0ff57513          	andi	a0,a0,255
    80002eb8:	00000097          	auipc	ra,0x0
    80002ebc:	f6c080e7          	jalr	-148(ra) # 80002e24 <_ZN8KConsole17putCharacterInputEc>
        uint64 x = CONSOLE_STATUS;
    80002ec0:	00009797          	auipc	a5,0x9
    80002ec4:	bb07b783          	ld	a5,-1104(a5) # 8000ba70 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002ec8:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002ecc:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002ed0:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002ed4:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002ed8:	0017f793          	andi	a5,a5,1
    80002edc:	fc0790e3          	bnez	a5,80002e9c <_ZN8KConsole24getCharactersFromConsoleEPv+0x30>
}
    80002ee0:	00813083          	ld	ra,8(sp)
    80002ee4:	00013403          	ld	s0,0(sp)
    80002ee8:	01010113          	addi	sp,sp,16
    80002eec:	00008067          	ret
    80002ef0:	00008067          	ret

0000000080002ef4 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002ef4:	ff010113          	addi	sp,sp,-16
    80002ef8:	00113423          	sd	ra,8(sp)
    80002efc:	00813023          	sd	s0,0(sp)
    80002f00:	01010413          	addi	s0,sp,16
    hasCharactersInput->wait();
    80002f04:	00009517          	auipc	a0,0x9
    80002f08:	c5453503          	ld	a0,-940(a0) # 8000bb58 <_ZN8KConsole18hasCharactersInputE>
    80002f0c:	00001097          	auipc	ra,0x1
    80002f10:	530080e7          	jalr	1328(ra) # 8000443c <_ZN10KSemaphore4waitEv>
    return getChar(headInput, tailInput);
    80002f14:	00009597          	auipc	a1,0x9
    80002f18:	c5458593          	addi	a1,a1,-940 # 8000bb68 <_ZN8KConsole9tailInputE>
    80002f1c:	00009517          	auipc	a0,0x9
    80002f20:	c5450513          	addi	a0,a0,-940 # 8000bb70 <_ZN8KConsole9headInputE>
    80002f24:	00000097          	auipc	ra,0x0
    80002f28:	df0080e7          	jalr	-528(ra) # 80002d14 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002f2c:	00813083          	ld	ra,8(sp)
    80002f30:	00013403          	ld	s0,0(sp)
    80002f34:	01010113          	addi	sp,sp,16
    80002f38:	00008067          	ret

0000000080002f3c <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    80002f3c:	ff010113          	addi	sp,sp,-16
    80002f40:	00113423          	sd	ra,8(sp)
    80002f44:	00813023          	sd	s0,0(sp)
    80002f48:	01010413          	addi	s0,sp,16
    putChar(c, headOutput, tailOutput);
    80002f4c:	00009617          	auipc	a2,0x9
    80002f50:	c2c60613          	addi	a2,a2,-980 # 8000bb78 <_ZN8KConsole10tailOutputE>
    80002f54:	00009597          	auipc	a1,0x9
    80002f58:	c2c58593          	addi	a1,a1,-980 # 8000bb80 <_ZN8KConsole10headOutputE>
    80002f5c:	00000097          	auipc	ra,0x0
    80002f60:	d40080e7          	jalr	-704(ra) # 80002c9c <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersOutput->signal();
    80002f64:	00009517          	auipc	a0,0x9
    80002f68:	bfc53503          	ld	a0,-1028(a0) # 8000bb60 <_ZN8KConsole19hasCharactersOutputE>
    80002f6c:	00001097          	auipc	ra,0x1
    80002f70:	630080e7          	jalr	1584(ra) # 8000459c <_ZN10KSemaphore6signalEv>
}
    80002f74:	00813083          	ld	ra,8(sp)
    80002f78:	00013403          	ld	s0,0(sp)
    80002f7c:	01010113          	addi	sp,sp,16
    80002f80:	00008067          	ret

0000000080002f84 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002f84:	ff010113          	addi	sp,sp,-16
    80002f88:	00113423          	sd	ra,8(sp)
    80002f8c:	00813023          	sd	s0,0(sp)
    80002f90:	01010413          	addi	s0,sp,16
    hasCharactersOutput->wait();
    80002f94:	00009517          	auipc	a0,0x9
    80002f98:	bcc53503          	ld	a0,-1076(a0) # 8000bb60 <_ZN8KConsole19hasCharactersOutputE>
    80002f9c:	00001097          	auipc	ra,0x1
    80002fa0:	4a0080e7          	jalr	1184(ra) # 8000443c <_ZN10KSemaphore4waitEv>
    return getChar(headOutput, tailOutput);
    80002fa4:	00009597          	auipc	a1,0x9
    80002fa8:	bd458593          	addi	a1,a1,-1068 # 8000bb78 <_ZN8KConsole10tailOutputE>
    80002fac:	00009517          	auipc	a0,0x9
    80002fb0:	bd450513          	addi	a0,a0,-1068 # 8000bb80 <_ZN8KConsole10headOutputE>
    80002fb4:	00000097          	auipc	ra,0x0
    80002fb8:	d60080e7          	jalr	-672(ra) # 80002d14 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002fbc:	00813083          	ld	ra,8(sp)
    80002fc0:	00013403          	ld	s0,0(sp)
    80002fc4:	01010113          	addi	sp,sp,16
    80002fc8:	00008067          	ret

0000000080002fcc <_ZN8KConsole23sendCharactersToConsoleEPv>:
            uint64 x = CONSOLE_STATUS;
    80002fcc:	00009797          	auipc	a5,0x9
    80002fd0:	aa47b783          	ld	a5,-1372(a5) # 8000ba70 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002fd4:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002fd8:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80002fdc:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002fe0:	00058793          	mv	a5,a1
            if (operation & STATUS_WRITE_MASK)
    80002fe4:	0207f793          	andi	a5,a5,32
    80002fe8:	fe0782e3          	beqz	a5,80002fcc <_ZN8KConsole23sendCharactersToConsoleEPv>
{
    80002fec:	fe010113          	addi	sp,sp,-32
    80002ff0:	00113c23          	sd	ra,24(sp)
    80002ff4:	00813823          	sd	s0,16(sp)
    80002ff8:	02010413          	addi	s0,sp,32
                char volatile c = getCharacterOutput();
    80002ffc:	00000097          	auipc	ra,0x0
    80003000:	f88080e7          	jalr	-120(ra) # 80002f84 <_ZN8KConsole18getCharacterOutputEv>
    80003004:	fea407a3          	sb	a0,-17(s0)
                x = CONSOLE_RX_DATA;
    80003008:	00009797          	auipc	a5,0x9
    8000300c:	a607b783          	ld	a5,-1440(a5) # 8000ba68 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003010:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003014:	00078513          	mv	a0,a5
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    80003018:	fef44783          	lbu	a5,-17(s0)
    8000301c:	0ff7f793          	andi	a5,a5,255
    80003020:	00078593          	mv	a1,a5
                __asm__ volatile("sb a1,0(a0)");
    80003024:	00b50023          	sb	a1,0(a0)
            uint64 x = CONSOLE_STATUS;
    80003028:	00009797          	auipc	a5,0x9
    8000302c:	a487b783          	ld	a5,-1464(a5) # 8000ba70 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003030:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003034:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003038:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    8000303c:	00058793          	mv	a5,a1
            if (operation & STATUS_WRITE_MASK)
    80003040:	0207f793          	andi	a5,a5,32
    80003044:	fe0782e3          	beqz	a5,80003028 <_ZN8KConsole23sendCharactersToConsoleEPv+0x5c>
    80003048:	fb5ff06f          	j	80002ffc <_ZN8KConsole23sendCharactersToConsoleEPv+0x30>

000000008000304c <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    8000304c:	ff010113          	addi	sp,sp,-16
    80003050:	00113423          	sd	ra,8(sp)
    80003054:	00813023          	sd	s0,0(sp)
    80003058:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    8000305c:	00058513          	mv	a0,a1
    //Riscv::printString("stavio ");
    //Riscv::printInteger((char)ch);
    putCharacterOutput((char)ch);
    80003060:	0ff57513          	andi	a0,a0,255
    80003064:	00000097          	auipc	ra,0x0
    80003068:	ed8080e7          	jalr	-296(ra) # 80002f3c <_ZN8KConsole18putCharacterOutputEc>
    //Riscv::printString("Bafer\n");
    Elem* curr = headOutput;
    8000306c:	00009797          	auipc	a5,0x9
    80003070:	b147b783          	ld	a5,-1260(a5) # 8000bb80 <_ZN8KConsole10headOutputE>
    while(curr != 0)
    80003074:	00078663          	beqz	a5,80003080 <_ZN8KConsole11putcHandlerEv+0x34>
    {
        //Riscv::printInteger(curr->data);
        curr = curr->next;
    80003078:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    8000307c:	ff9ff06f          	j	80003074 <_ZN8KConsole11putcHandlerEv+0x28>
    }
    //Riscv::printString("Kraj bafera\n");
}
    80003080:	00813083          	ld	ra,8(sp)
    80003084:	00013403          	ld	s0,0(sp)
    80003088:	01010113          	addi	sp,sp,16
    8000308c:	00008067          	ret

0000000080003090 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80003090:	ff010113          	addi	sp,sp,-16
    80003094:	00113423          	sd	ra,8(sp)
    80003098:	00813023          	sd	s0,0(sp)
    8000309c:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterInput();
    800030a0:	00000097          	auipc	ra,0x0
    800030a4:	e54080e7          	jalr	-428(ra) # 80002ef4 <_ZN8KConsole17getCharacterInputEv>
    //putCharacterOutput(ch);
    //while((ch = getCharacterInput()) == 0){}
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    800030a8:	00050513          	mv	a0,a0
}
    800030ac:	00813083          	ld	ra,8(sp)
    800030b0:	00013403          	ld	s0,0(sp)
    800030b4:	01010113          	addi	sp,sp,16
    800030b8:	00008067          	ret

00000000800030bc <_ZN8KConsole3ackEv>:

void KConsole::ack()
{
    800030bc:	ff010113          	addi	sp,sp,-16
    800030c0:	00813423          	sd	s0,8(sp)
    800030c4:	01010413          	addi	s0,sp,16
    //Riscv::printString("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
    uint64 x = CONSOLE_STATUS;
    800030c8:	00009797          	auipc	a5,0x9
    800030cc:	9a87b783          	ld	a5,-1624(a5) # 8000ba70 <_GLOBAL_OFFSET_TABLE_+0x10>
    800030d0:	0007b783          	ld	a5,0(a5)
    __asm__ volatile("mv a0, %0"::"r"(x));
    800030d4:	00078513          	mv	a0,a5
    __asm__ volatile("lb a1, 0(a0)");
    800030d8:	00050583          	lb	a1,0(a0)
    uint64 operation;
    __asm__ volatile("mv %0, a1" :  "=r"(operation));
    800030dc:	00058793          	mv	a5,a1
    //Riscv::printInteger(operation);
    if(operation & STATUS_WRITE_MASK)
    800030e0:	0207f793          	andi	a5,a5,32
    800030e4:	00078c63          	beqz	a5,800030fc <_ZN8KConsole3ackEv+0x40>
    {
        cntWInterrupt++;
    800030e8:	00009717          	auipc	a4,0x9
    800030ec:	a7070713          	addi	a4,a4,-1424 # 8000bb58 <_ZN8KConsole18hasCharactersInputE>
    800030f0:	03072783          	lw	a5,48(a4)
    800030f4:	0017879b          	addiw	a5,a5,1
    800030f8:	02f72823          	sw	a5,48(a4)
    }
}
    800030fc:	00813403          	ld	s0,8(sp)
    80003100:	01010113          	addi	sp,sp,16
    80003104:	00008067          	ret

0000000080003108 <_ZN8KConsole11printBufferEv>:

void KConsole::printBuffer()
{
    80003108:	fe010113          	addi	sp,sp,-32
    8000310c:	00113c23          	sd	ra,24(sp)
    80003110:	00813823          	sd	s0,16(sp)
    80003114:	00913423          	sd	s1,8(sp)
    80003118:	02010413          	addi	s0,sp,32
    Elem* curr = headInput;
    8000311c:	00009497          	auipc	s1,0x9
    80003120:	a544b483          	ld	s1,-1452(s1) # 8000bb70 <_ZN8KConsole9headInputE>
    while(curr != 0)
    80003124:	00048c63          	beqz	s1,8000313c <_ZN8KConsole11printBufferEv+0x34>
    {
        putc(curr->data);
    80003128:	0084c503          	lbu	a0,8(s1)
    8000312c:	ffffe097          	auipc	ra,0xffffe
    80003130:	3fc080e7          	jalr	1020(ra) # 80001528 <putc>
        curr = curr->next;
    80003134:	0004b483          	ld	s1,0(s1)
    while(curr != 0)
    80003138:	fedff06f          	j	80003124 <_ZN8KConsole11printBufferEv+0x1c>
    }
}
    8000313c:	01813083          	ld	ra,24(sp)
    80003140:	01013403          	ld	s0,16(sp)
    80003144:	00813483          	ld	s1,8(sp)
    80003148:	02010113          	addi	sp,sp,32
    8000314c:	00008067          	ret

0000000080003150 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003150:	ff010113          	addi	sp,sp,-16
    80003154:	00813423          	sd	s0,8(sp)
    80003158:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    8000315c:	00009797          	auipc	a5,0x9
    80003160:	9547b783          	ld	a5,-1708(a5) # 8000bab0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003164:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003168:	00500793          	li	a5,5
    8000316c:	02f62c23          	sw	a5,56(a2)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003170:	00009797          	auipc	a5,0x9
    80003174:	a207b783          	ld	a5,-1504(a5) # 8000bb90 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003178:	00000593          	li	a1,0
    while(curr != 0)
    8000317c:	02078063          	beqz	a5,8000319c <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003180:	01863683          	ld	a3,24(a2)
    80003184:	0187b703          	ld	a4,24(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003188:	00e6e863          	bltu	a3,a4,80003198 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    8000318c:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003190:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003194:	fe9ff06f          	j	8000317c <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003198:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    8000319c:	02058263          	beqz	a1,800031c0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    800031a0:	01863783          	ld	a5,24(a2)
    800031a4:	0185b703          	ld	a4,24(a1)
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    800031a8:	40e787b3          	sub	a5,a5,a4
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800031ac:	00f63c23          	sd	a5,24(a2)
        prev->nextPCB = PCB::running;
    800031b0:	00c5b423          	sd	a2,8(a1)
    }
}
    800031b4:	00813403          	ld	s0,8(sp)
    800031b8:	01010113          	addi	sp,sp,16
    800031bc:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800031c0:	00009797          	auipc	a5,0x9
    800031c4:	9cc7b823          	sd	a2,-1584(a5) # 8000bb90 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    800031c8:	00863783          	ld	a5,8(a2)
    800031cc:	fe0784e3          	beqz	a5,800031b4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>
    uint64 getTimeToSleep() {return timeToSleep;}
    800031d0:	0187b703          	ld	a4,24(a5)
    800031d4:	01863683          	ld	a3,24(a2)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    800031d8:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800031dc:	00e7bc23          	sd	a4,24(a5)
    800031e0:	fd5ff06f          	j	800031b4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>

00000000800031e4 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    800031e4:	00009517          	auipc	a0,0x9
    800031e8:	9ac53503          	ld	a0,-1620(a0) # 8000bb90 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    800031ec:	08050863          	beqz	a0,8000327c <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    uint64 getTimeToSleep() {return timeToSleep;}
    800031f0:	01853783          	ld	a5,24(a0)
    {
        //Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    800031f4:	00100713          	li	a4,1
    800031f8:	00e78863          	beq	a5,a4,80003208 <_ZN12SleepPCBList13tryToWakePCBsEv+0x24>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    800031fc:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80003200:	00f53c23          	sd	a5,24(a0)
    80003204:	00008067          	ret
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80003208:	06050a63          	beqz	a0,8000327c <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    8000320c:	00009797          	auipc	a5,0x9
    80003210:	9847b783          	ld	a5,-1660(a5) # 8000bb90 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003214:	00a78663          	beq	a5,a0,80003220 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003218:	01853783          	ld	a5,24(a0)
    8000321c:	06079063          	bnez	a5,8000327c <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
{
    80003220:	fe010113          	addi	sp,sp,-32
    80003224:	00113c23          	sd	ra,24(sp)
    80003228:	00813823          	sd	s0,16(sp)
    8000322c:	00913423          	sd	s1,8(sp)
    80003230:	02010413          	addi	s0,sp,32
            curr = curr->nextPCB;
    80003234:	00853483          	ld	s1,8(a0)
            old->nextPCB = 0;
    80003238:	00053423          	sd	zero,8(a0)
            Scheduler::put(old);
    8000323c:	00000097          	auipc	ra,0x0
    80003240:	258080e7          	jalr	600(ra) # 80003494 <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    80003244:	00009797          	auipc	a5,0x9
    80003248:	9497b623          	sd	s1,-1716(a5) # 8000bb90 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    8000324c:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80003250:	00048c63          	beqz	s1,80003268 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003254:	00009797          	auipc	a5,0x9
    80003258:	93c7b783          	ld	a5,-1732(a5) # 8000bb90 <_ZN12SleepPCBList15sleepingPCBHeadE>
    8000325c:	fc978ce3          	beq	a5,s1,80003234 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003260:	0184b783          	ld	a5,24(s1)
    80003264:	fc0788e3          	beqz	a5,80003234 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    }
}
    80003268:	01813083          	ld	ra,24(sp)
    8000326c:	01013403          	ld	s0,16(sp)
    80003270:	00813483          	ld	s1,8(sp)
    80003274:	02010113          	addi	sp,sp,32
    80003278:	00008067          	ret
    8000327c:	00008067          	ret

0000000080003280 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80003280:	fe010113          	addi	sp,sp,-32
    80003284:	00113c23          	sd	ra,24(sp)
    80003288:	00813823          	sd	s0,16(sp)
    8000328c:	00913423          	sd	s1,8(sp)
    80003290:	01213023          	sd	s2,0(sp)
    80003294:	02010413          	addi	s0,sp,32
    80003298:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    8000329c:	00053503          	ld	a0,0(a0)
    800032a0:	00853903          	ld	s2,8(a0)
    kfree(first);
    800032a4:	00001097          	auipc	ra,0x1
    800032a8:	098080e7          	jalr	152(ra) # 8000433c <_Z5kfreePv>
    first = newFirst;
    800032ac:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    800032b0:	00090e63          	beqz	s2,800032cc <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    800032b4:	01813083          	ld	ra,24(sp)
    800032b8:	01013403          	ld	s0,16(sp)
    800032bc:	00813483          	ld	s1,8(sp)
    800032c0:	00013903          	ld	s2,0(sp)
    800032c4:	02010113          	addi	sp,sp,32
    800032c8:	00008067          	ret
        first = last = 0;
    800032cc:	0004b423          	sd	zero,8(s1)
    800032d0:	0004b023          	sd	zero,0(s1)
}
    800032d4:	fe1ff06f          	j	800032b4 <_ZN5Queue3popEv+0x34>

00000000800032d8 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t)
{
    800032d8:	fe010113          	addi	sp,sp,-32
    800032dc:	00113c23          	sd	ra,24(sp)
    800032e0:	00813823          	sd	s0,16(sp)
    800032e4:	00913423          	sd	s1,8(sp)
    800032e8:	01213023          	sd	s2,0(sp)
    800032ec:	02010413          	addi	s0,sp,32
    800032f0:	00050493          	mv	s1,a0
    800032f4:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    800032f8:	01000513          	li	a0,16
    800032fc:	00001097          	auipc	ra,0x1
    80003300:	fe4080e7          	jalr	-28(ra) # 800042e0 <_Z7kmallocm>
    newElem->data = t;
    80003304:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80003308:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    8000330c:	0004b783          	ld	a5,0(s1)
    80003310:	02078463          	beqz	a5,80003338 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80003314:	0084b783          	ld	a5,8(s1)
    80003318:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    8000331c:	00a4b423          	sd	a0,8(s1)
    }
}
    80003320:	01813083          	ld	ra,24(sp)
    80003324:	01013403          	ld	s0,16(sp)
    80003328:	00813483          	ld	s1,8(sp)
    8000332c:	00013903          	ld	s2,0(sp)
    80003330:	02010113          	addi	sp,sp,32
    80003334:	00008067          	ret
        first = newElem;
    80003338:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    8000333c:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80003340:	00053423          	sd	zero,8(a0)
    80003344:	0004b783          	ld	a5,0(s1)
    80003348:	0007b423          	sd	zero,8(a5)
    8000334c:	fd5ff06f          	j	80003320 <_ZN5Queue4pushEP3PCB+0x48>

0000000080003350 <_ZN5Queue5frontEv>:


PCB* Queue::front()
{
    80003350:	ff010113          	addi	sp,sp,-16
    80003354:	00813423          	sd	s0,8(sp)
    80003358:	01010413          	addi	s0,sp,16
    if(first == 0)
    8000335c:	00053503          	ld	a0,0(a0)
    80003360:	00050463          	beqz	a0,80003368 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80003364:	00053503          	ld	a0,0(a0)
}
    80003368:	00813403          	ld	s0,8(sp)
    8000336c:	01010113          	addi	sp,sp,16
    80003370:	00008067          	ret

0000000080003374 <_ZN5QueueC1Ev>:

Queue::Queue()
    80003374:	ff010113          	addi	sp,sp,-16
    80003378:	00813423          	sd	s0,8(sp)
    8000337c:	01010413          	addi	s0,sp,16
{
    first = last = 0;
    80003380:	00053423          	sd	zero,8(a0)
    80003384:	00053023          	sd	zero,0(a0)
}
    80003388:	00813403          	ld	s0,8(sp)
    8000338c:	01010113          	addi	sp,sp,16
    80003390:	00008067          	ret

0000000080003394 <_ZN5QueueD1Ev>:

Queue::~Queue()
{
    Elem* curr = first;
    80003394:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80003398:	04050063          	beqz	a0,800033d8 <_ZN5QueueD1Ev+0x44>
Queue::~Queue()
    8000339c:	fe010113          	addi	sp,sp,-32
    800033a0:	00113c23          	sd	ra,24(sp)
    800033a4:	00813823          	sd	s0,16(sp)
    800033a8:	00913423          	sd	s1,8(sp)
    800033ac:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    800033b0:	00853483          	ld	s1,8(a0)
        kfree(old);
    800033b4:	00001097          	auipc	ra,0x1
    800033b8:	f88080e7          	jalr	-120(ra) # 8000433c <_Z5kfreePv>
        curr = curr->next;
    800033bc:	00048513          	mv	a0,s1
    while(curr != 0)
    800033c0:	fe0498e3          	bnez	s1,800033b0 <_ZN5QueueD1Ev+0x1c>
    }
}
    800033c4:	01813083          	ld	ra,24(sp)
    800033c8:	01013403          	ld	s0,16(sp)
    800033cc:	00813483          	ld	s1,8(sp)
    800033d0:	02010113          	addi	sp,sp,32
    800033d4:	00008067          	ret
    800033d8:	00008067          	ret

00000000800033dc <_ZN5Queue4sizeEv>:

int Queue::size()
{
    800033dc:	ff010113          	addi	sp,sp,-16
    800033e0:	00813423          	sd	s0,8(sp)
    800033e4:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    800033e8:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    800033ec:	00000513          	li	a0,0
    while(curr != 0)
    800033f0:	00078863          	beqz	a5,80003400 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    800033f4:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    800033f8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800033fc:	ff5ff06f          	j	800033f0 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80003400:	00813403          	ld	s0,8(sp)
    80003404:	01010113          	addi	sp,sp,16
    80003408:	00008067          	ret

000000008000340c <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    8000340c:	ff010113          	addi	sp,sp,-16
    80003410:	00113423          	sd	ra,8(sp)
    80003414:	00813023          	sd	s0,0(sp)
    80003418:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    8000341c:	00001097          	auipc	ra,0x1
    80003420:	ec4080e7          	jalr	-316(ra) # 800042e0 <_Z7kmallocm>
}
    80003424:	00813083          	ld	ra,8(sp)
    80003428:	00013403          	ld	s0,0(sp)
    8000342c:	01010113          	addi	sp,sp,16
    80003430:	00008067          	ret

0000000080003434 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003434:	ff010113          	addi	sp,sp,-16
    80003438:	00113423          	sd	ra,8(sp)
    8000343c:	00813023          	sd	s0,0(sp)
    80003440:	01010413          	addi	s0,sp,16
    kfree(p);
    80003444:	00001097          	auipc	ra,0x1
    80003448:	ef8080e7          	jalr	-264(ra) # 8000433c <_Z5kfreePv>
}
    8000344c:	00813083          	ld	ra,8(sp)
    80003450:	00013403          	ld	s0,0(sp)
    80003454:	01010113          	addi	sp,sp,16
    80003458:	00008067          	ret

000000008000345c <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    8000345c:	ff010113          	addi	sp,sp,-16
    80003460:	00813423          	sd	s0,8(sp)
    80003464:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003468:	00008797          	auipc	a5,0x8
    8000346c:	7307b783          	ld	a5,1840(a5) # 8000bb98 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003470:	00000513          	li	a0,0
    while(curr != 0)
    80003474:	00078863          	beqz	a5,80003484 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003478:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    8000347c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003480:	ff5ff06f          	j	80003474 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003484:	0005051b          	sext.w	a0,a0
    80003488:	00813403          	ld	s0,8(sp)
    8000348c:	01010113          	addi	sp,sp,16
    80003490:	00008067          	ret

0000000080003494 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003494:	ff010113          	addi	sp,sp,-16
    80003498:	00813423          	sd	s0,8(sp)
    8000349c:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    800034a0:	02052c23          	sw	zero,56(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800034a4:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    800034a8:	00008797          	auipc	a5,0x8
    800034ac:	6f07b783          	ld	a5,1776(a5) # 8000bb98 <_ZN9Scheduler16schedulerPCBHeadE>
    800034b0:	02078263          	beqz	a5,800034d4 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800034b4:	00008797          	auipc	a5,0x8
    800034b8:	6e478793          	addi	a5,a5,1764 # 8000bb98 <_ZN9Scheduler16schedulerPCBHeadE>
    800034bc:	0087b703          	ld	a4,8(a5)
    800034c0:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    800034c4:	00a7b423          	sd	a0,8(a5)
    }
}
    800034c8:	00813403          	ld	s0,8(sp)
    800034cc:	01010113          	addi	sp,sp,16
    800034d0:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    800034d4:	00008797          	auipc	a5,0x8
    800034d8:	6c478793          	addi	a5,a5,1732 # 8000bb98 <_ZN9Scheduler16schedulerPCBHeadE>
    800034dc:	00a7b423          	sd	a0,8(a5)
    800034e0:	00a7b023          	sd	a0,0(a5)
    800034e4:	fe5ff06f          	j	800034c8 <_ZN9Scheduler3putEP3PCB+0x34>

00000000800034e8 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    800034e8:	ff010113          	addi	sp,sp,-16
    800034ec:	00813423          	sd	s0,8(sp)
    800034f0:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800034f4:	00008517          	auipc	a0,0x8
    800034f8:	6a453503          	ld	a0,1700(a0) # 8000bb98 <_ZN9Scheduler16schedulerPCBHeadE>
    800034fc:	00050c63          	beqz	a0,80003514 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003500:	00853783          	ld	a5,8(a0)
    80003504:	00078e63          	beqz	a5,80003520 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003508:	00008717          	auipc	a4,0x8
    8000350c:	68f73823          	sd	a5,1680(a4) # 8000bb98 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003510:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003514:	00813403          	ld	s0,8(sp)
    80003518:	01010113          	addi	sp,sp,16
    8000351c:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003520:	00008797          	auipc	a5,0x8
    80003524:	67878793          	addi	a5,a5,1656 # 8000bb98 <_ZN9Scheduler16schedulerPCBHeadE>
    80003528:	0007b423          	sd	zero,8(a5)
    8000352c:	0007b023          	sd	zero,0(a5)
    80003530:	fe1ff06f          	j	80003510 <_ZN9Scheduler3getEv+0x28>

0000000080003534 <_ZN9Scheduler5printEv>:

void Scheduler::print() {
    80003534:	fe010113          	addi	sp,sp,-32
    80003538:	00113c23          	sd	ra,24(sp)
    8000353c:	00813823          	sd	s0,16(sp)
    80003540:	00913423          	sd	s1,8(sp)
    80003544:	02010413          	addi	s0,sp,32
    Riscv::printString("Scheduler print\n");
    80003548:	00006517          	auipc	a0,0x6
    8000354c:	d1050513          	addi	a0,a0,-752 # 80009258 <CONSOLE_STATUS+0x248>
    80003550:	00000097          	auipc	ra,0x0
    80003554:	570080e7          	jalr	1392(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    PCB* curr = schedulerPCBHead;
    80003558:	00008497          	auipc	s1,0x8
    8000355c:	6404b483          	ld	s1,1600(s1) # 8000bb98 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003560:	02048863          	beqz	s1,80003590 <_ZN9Scheduler5printEv+0x5c>
    {
        printInt((uint64)curr, 16);
    80003564:	00000613          	li	a2,0
    80003568:	01000593          	li	a1,16
    8000356c:	0004851b          	sext.w	a0,s1
    80003570:	00002097          	auipc	ra,0x2
    80003574:	764080e7          	jalr	1892(ra) # 80005cd4 <_Z8printIntiii>
        Riscv::printString("\n");
    80003578:	00006517          	auipc	a0,0x6
    8000357c:	b8850513          	addi	a0,a0,-1144 # 80009100 <CONSOLE_STATUS+0xf0>
    80003580:	00000097          	auipc	ra,0x0
    80003584:	540080e7          	jalr	1344(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        curr = curr->nextPCB;
    80003588:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    8000358c:	fd5ff06f          	j	80003560 <_ZN9Scheduler5printEv+0x2c>
    }
}
    80003590:	01813083          	ld	ra,24(sp)
    80003594:	01013403          	ld	s0,16(sp)
    80003598:	00813483          	ld	s1,8(sp)
    8000359c:	02010113          	addi	sp,sp,32
    800035a0:	00008067          	ret

00000000800035a4 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    800035a4:	ff010113          	addi	sp,sp,-16
    800035a8:	00113423          	sd	ra,8(sp)
    800035ac:	00813023          	sd	s0,0(sp)
    800035b0:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    800035b4:	00001097          	auipc	ra,0x1
    800035b8:	8ac080e7          	jalr	-1876(ra) # 80003e60 <_ZN5Riscv10kernelMainEv>
    800035bc:	00813083          	ld	ra,8(sp)
    800035c0:	00013403          	ld	s0,0(sp)
    800035c4:	01010113          	addi	sp,sp,16
    800035c8:	00008067          	ret

00000000800035cc <_ZN6ThreadD1Ev>:
    Riscv::printString("Thread runner started...\n");
    Thread* thr = (Thread*)t;
    thr->run();
}

Thread::~Thread()
    800035cc:	ff010113          	addi	sp,sp,-16
    800035d0:	00113423          	sd	ra,8(sp)
    800035d4:	00813023          	sd	s0,0(sp)
    800035d8:	01010413          	addi	s0,sp,16
    800035dc:	00008797          	auipc	a5,0x8
    800035e0:	3ac78793          	addi	a5,a5,940 # 8000b988 <_ZTV6Thread+0x10>
    800035e4:	00f53023          	sd	a5,0(a0)
{
    mem_free(myHandle);
    800035e8:	00853503          	ld	a0,8(a0)
    800035ec:	ffffe097          	auipc	ra,0xffffe
    800035f0:	c8c080e7          	jalr	-884(ra) # 80001278 <mem_free>
}
    800035f4:	00813083          	ld	ra,8(sp)
    800035f8:	00013403          	ld	s0,0(sp)
    800035fc:	01010113          	addi	sp,sp,16
    80003600:	00008067          	ret

0000000080003604 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003604:	ff010113          	addi	sp,sp,-16
    80003608:	00113423          	sd	ra,8(sp)
    8000360c:	00813023          	sd	s0,0(sp)
    80003610:	01010413          	addi	s0,sp,16
    80003614:	00008797          	auipc	a5,0x8
    80003618:	39c78793          	addi	a5,a5,924 # 8000b9b0 <_ZTV9Semaphore+0x10>
    8000361c:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80003620:	00853503          	ld	a0,8(a0)
    80003624:	ffffe097          	auipc	ra,0xffffe
    80003628:	c54080e7          	jalr	-940(ra) # 80001278 <mem_free>
}
    8000362c:	00813083          	ld	ra,8(sp)
    80003630:	00013403          	ld	s0,0(sp)
    80003634:	01010113          	addi	sp,sp,16
    80003638:	00008067          	ret

000000008000363c <_ZN6Thread6runnerEPv>:
{
    8000363c:	fe010113          	addi	sp,sp,-32
    80003640:	00113c23          	sd	ra,24(sp)
    80003644:	00813823          	sd	s0,16(sp)
    80003648:	00913423          	sd	s1,8(sp)
    8000364c:	02010413          	addi	s0,sp,32
    80003650:	00050493          	mv	s1,a0
    Riscv::printString("Thread runner started...\n");
    80003654:	00006517          	auipc	a0,0x6
    80003658:	c1c50513          	addi	a0,a0,-996 # 80009270 <CONSOLE_STATUS+0x260>
    8000365c:	00000097          	auipc	ra,0x0
    80003660:	464080e7          	jalr	1124(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    thr->run();
    80003664:	0004b783          	ld	a5,0(s1)
    80003668:	0107b783          	ld	a5,16(a5)
    8000366c:	00048513          	mv	a0,s1
    80003670:	000780e7          	jalr	a5
}
    80003674:	01813083          	ld	ra,24(sp)
    80003678:	01013403          	ld	s0,16(sp)
    8000367c:	00813483          	ld	s1,8(sp)
    80003680:	02010113          	addi	sp,sp,32
    80003684:	00008067          	ret

0000000080003688 <_Znwm>:
{
    80003688:	ff010113          	addi	sp,sp,-16
    8000368c:	00113423          	sd	ra,8(sp)
    80003690:	00813023          	sd	s0,0(sp)
    80003694:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003698:	ffffe097          	auipc	ra,0xffffe
    8000369c:	bb0080e7          	jalr	-1104(ra) # 80001248 <mem_alloc>
}
    800036a0:	00813083          	ld	ra,8(sp)
    800036a4:	00013403          	ld	s0,0(sp)
    800036a8:	01010113          	addi	sp,sp,16
    800036ac:	00008067          	ret

00000000800036b0 <_ZdlPv>:
{
    800036b0:	ff010113          	addi	sp,sp,-16
    800036b4:	00113423          	sd	ra,8(sp)
    800036b8:	00813023          	sd	s0,0(sp)
    800036bc:	01010413          	addi	s0,sp,16
    mem_free(p);
    800036c0:	ffffe097          	auipc	ra,0xffffe
    800036c4:	bb8080e7          	jalr	-1096(ra) # 80001278 <mem_free>
}
    800036c8:	00813083          	ld	ra,8(sp)
    800036cc:	00013403          	ld	s0,0(sp)
    800036d0:	01010113          	addi	sp,sp,16
    800036d4:	00008067          	ret

00000000800036d8 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    800036d8:	fe010113          	addi	sp,sp,-32
    800036dc:	00113c23          	sd	ra,24(sp)
    800036e0:	00813823          	sd	s0,16(sp)
    800036e4:	00913423          	sd	s1,8(sp)
    800036e8:	02010413          	addi	s0,sp,32
    800036ec:	00050493          	mv	s1,a0
}
    800036f0:	00000097          	auipc	ra,0x0
    800036f4:	edc080e7          	jalr	-292(ra) # 800035cc <_ZN6ThreadD1Ev>
    800036f8:	00048513          	mv	a0,s1
    800036fc:	00000097          	auipc	ra,0x0
    80003700:	fb4080e7          	jalr	-76(ra) # 800036b0 <_ZdlPv>
    80003704:	01813083          	ld	ra,24(sp)
    80003708:	01013403          	ld	s0,16(sp)
    8000370c:	00813483          	ld	s1,8(sp)
    80003710:	02010113          	addi	sp,sp,32
    80003714:	00008067          	ret

0000000080003718 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003718:	fe010113          	addi	sp,sp,-32
    8000371c:	00113c23          	sd	ra,24(sp)
    80003720:	00813823          	sd	s0,16(sp)
    80003724:	00913423          	sd	s1,8(sp)
    80003728:	02010413          	addi	s0,sp,32
    8000372c:	00050493          	mv	s1,a0
}
    80003730:	00000097          	auipc	ra,0x0
    80003734:	ed4080e7          	jalr	-300(ra) # 80003604 <_ZN9SemaphoreD1Ev>
    80003738:	00048513          	mv	a0,s1
    8000373c:	00000097          	auipc	ra,0x0
    80003740:	f74080e7          	jalr	-140(ra) # 800036b0 <_ZdlPv>
    80003744:	01813083          	ld	ra,24(sp)
    80003748:	01013403          	ld	s0,16(sp)
    8000374c:	00813483          	ld	s1,8(sp)
    80003750:	02010113          	addi	sp,sp,32
    80003754:	00008067          	ret

0000000080003758 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    80003758:	00853503          	ld	a0,8(a0)
    8000375c:	02050663          	beqz	a0,80003788 <_ZN6Thread5startEv+0x30>
{
    80003760:	ff010113          	addi	sp,sp,-16
    80003764:	00113423          	sd	ra,8(sp)
    80003768:	00813023          	sd	s0,0(sp)
    8000376c:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80003770:	ffffe097          	auipc	ra,0xffffe
    80003774:	ce4080e7          	jalr	-796(ra) # 80001454 <thread_start>
}
    80003778:	00813083          	ld	ra,8(sp)
    8000377c:	00013403          	ld	s0,0(sp)
    80003780:	01010113          	addi	sp,sp,16
    80003784:	00008067          	ret
        return -1;
    80003788:	fff00513          	li	a0,-1
}
    8000378c:	00008067          	ret

0000000080003790 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003790:	ff010113          	addi	sp,sp,-16
    80003794:	00113423          	sd	ra,8(sp)
    80003798:	00813023          	sd	s0,0(sp)
    8000379c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	b84080e7          	jalr	-1148(ra) # 80001324 <thread_dispatch>
}
    800037a8:	00813083          	ld	ra,8(sp)
    800037ac:	00013403          	ld	s0,0(sp)
    800037b0:	01010113          	addi	sp,sp,16
    800037b4:	00008067          	ret

00000000800037b8 <_ZN6Thread5sleepEm>:
{
    800037b8:	ff010113          	addi	sp,sp,-16
    800037bc:	00113423          	sd	ra,8(sp)
    800037c0:	00813023          	sd	s0,0(sp)
    800037c4:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800037c8:	ffffe097          	auipc	ra,0xffffe
    800037cc:	c60080e7          	jalr	-928(ra) # 80001428 <time_sleep>
}
    800037d0:	00813083          	ld	ra,8(sp)
    800037d4:	00013403          	ld	s0,0(sp)
    800037d8:	01010113          	addi	sp,sp,16
    800037dc:	00008067          	ret

00000000800037e0 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    800037e0:	fe010113          	addi	sp,sp,-32
    800037e4:	00113c23          	sd	ra,24(sp)
    800037e8:	00813823          	sd	s0,16(sp)
    800037ec:	00913423          	sd	s1,8(sp)
    800037f0:	01213023          	sd	s2,0(sp)
    800037f4:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    800037f8:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    800037fc:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80003800:	0004b783          	ld	a5,0(s1)
    80003804:	0187b783          	ld	a5,24(a5)
    80003808:	00048513          	mv	a0,s1
    8000380c:	000780e7          	jalr	a5
        Thread::sleep(time);
    80003810:	00090513          	mv	a0,s2
    80003814:	00000097          	auipc	ra,0x0
    80003818:	fa4080e7          	jalr	-92(ra) # 800037b8 <_ZN6Thread5sleepEm>
    while(true)
    8000381c:	fe5ff06f          	j	80003800 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080003820 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80003820:	ff010113          	addi	sp,sp,-16
    80003824:	00113423          	sd	ra,8(sp)
    80003828:	00813023          	sd	s0,0(sp)
    8000382c:	01010413          	addi	s0,sp,16
    80003830:	00008797          	auipc	a5,0x8
    80003834:	15878793          	addi	a5,a5,344 # 8000b988 <_ZTV6Thread+0x10>
    80003838:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, body, args);
    8000383c:	00850513          	addi	a0,a0,8
    80003840:	ffffe097          	auipc	ra,0xffffe
    80003844:	c40080e7          	jalr	-960(ra) # 80001480 <thread_make_pcb>
}
    80003848:	00813083          	ld	ra,8(sp)
    8000384c:	00013403          	ld	s0,0(sp)
    80003850:	01010113          	addi	sp,sp,16
    80003854:	00008067          	ret

0000000080003858 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003858:	ff010113          	addi	sp,sp,-16
    8000385c:	00113423          	sd	ra,8(sp)
    80003860:	00813023          	sd	s0,0(sp)
    80003864:	01010413          	addi	s0,sp,16
    80003868:	00008797          	auipc	a5,0x8
    8000386c:	12078793          	addi	a5,a5,288 # 8000b988 <_ZTV6Thread+0x10>
    80003870:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80003874:	00050613          	mv	a2,a0
    80003878:	00000597          	auipc	a1,0x0
    8000387c:	dc458593          	addi	a1,a1,-572 # 8000363c <_ZN6Thread6runnerEPv>
    80003880:	00850513          	addi	a0,a0,8
    80003884:	ffffe097          	auipc	ra,0xffffe
    80003888:	bfc080e7          	jalr	-1028(ra) # 80001480 <thread_make_pcb>
}
    8000388c:	00813083          	ld	ra,8(sp)
    80003890:	00013403          	ld	s0,0(sp)
    80003894:	01010113          	addi	sp,sp,16
    80003898:	00008067          	ret

000000008000389c <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    8000389c:	00853503          	ld	a0,8(a0)
    800038a0:	02050663          	beqz	a0,800038cc <_ZN9Semaphore4waitEv+0x30>
{
    800038a4:	ff010113          	addi	sp,sp,-16
    800038a8:	00113423          	sd	ra,8(sp)
    800038ac:	00813023          	sd	s0,0(sp)
    800038b0:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800038b4:	ffffe097          	auipc	ra,0xffffe
    800038b8:	b1c080e7          	jalr	-1252(ra) # 800013d0 <sem_wait>
}
    800038bc:	00813083          	ld	ra,8(sp)
    800038c0:	00013403          	ld	s0,0(sp)
    800038c4:	01010113          	addi	sp,sp,16
    800038c8:	00008067          	ret
        return -1;
    800038cc:	fff00513          	li	a0,-1
}
    800038d0:	00008067          	ret

00000000800038d4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    800038d4:	fe010113          	addi	sp,sp,-32
    800038d8:	00113c23          	sd	ra,24(sp)
    800038dc:	00813823          	sd	s0,16(sp)
    800038e0:	00913423          	sd	s1,8(sp)
    800038e4:	02010413          	addi	s0,sp,32
    800038e8:	00050493          	mv	s1,a0
    800038ec:	00008797          	auipc	a5,0x8
    800038f0:	0c478793          	addi	a5,a5,196 # 8000b9b0 <_ZTV9Semaphore+0x10>
    800038f4:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    800038f8:	00850513          	addi	a0,a0,8
    800038fc:	ffffe097          	auipc	ra,0xffffe
    80003900:	a70080e7          	jalr	-1424(ra) # 8000136c <sem_open>
    if(retval != 0)
    80003904:	00050463          	beqz	a0,8000390c <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80003908:	0004b423          	sd	zero,8(s1)
}
    8000390c:	01813083          	ld	ra,24(sp)
    80003910:	01013403          	ld	s0,16(sp)
    80003914:	00813483          	ld	s1,8(sp)
    80003918:	02010113          	addi	sp,sp,32
    8000391c:	00008067          	ret

0000000080003920 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80003920:	00853503          	ld	a0,8(a0)
    80003924:	02050663          	beqz	a0,80003950 <_ZN9Semaphore6signalEv+0x30>
{
    80003928:	ff010113          	addi	sp,sp,-16
    8000392c:	00113423          	sd	ra,8(sp)
    80003930:	00813023          	sd	s0,0(sp)
    80003934:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003938:	ffffe097          	auipc	ra,0xffffe
    8000393c:	ac4080e7          	jalr	-1340(ra) # 800013fc <sem_signal>
}
    80003940:	00813083          	ld	ra,8(sp)
    80003944:	00013403          	ld	s0,0(sp)
    80003948:	01010113          	addi	sp,sp,16
    8000394c:	00008067          	ret
        return -1;
    80003950:	fff00513          	li	a0,-1
}
    80003954:	00008067          	ret

0000000080003958 <_ZN7Console4getcEv>:
{
    80003958:	ff010113          	addi	sp,sp,-16
    8000395c:	00813423          	sd	s0,8(sp)
    80003960:	01010413          	addi	s0,sp,16
}
    80003964:	00000513          	li	a0,0
    80003968:	00813403          	ld	s0,8(sp)
    8000396c:	01010113          	addi	sp,sp,16
    80003970:	00008067          	ret

0000000080003974 <_ZN7Console4putcEc>:
{
    80003974:	ff010113          	addi	sp,sp,-16
    80003978:	00813423          	sd	s0,8(sp)
    8000397c:	01010413          	addi	s0,sp,16
}
    80003980:	00813403          	ld	s0,8(sp)
    80003984:	01010113          	addi	sp,sp,16
    80003988:	00008067          	ret

000000008000398c <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    8000398c:	fe010113          	addi	sp,sp,-32
    80003990:	00113c23          	sd	ra,24(sp)
    80003994:	00813823          	sd	s0,16(sp)
    80003998:	00913423          	sd	s1,8(sp)
    8000399c:	01213023          	sd	s2,0(sp)
    800039a0:	02010413          	addi	s0,sp,32
    800039a4:	00050493          	mv	s1,a0
    800039a8:	00058913          	mv	s2,a1
    800039ac:	01000513          	li	a0,16
    800039b0:	00000097          	auipc	ra,0x0
    800039b4:	cd8080e7          	jalr	-808(ra) # 80003688 <_Znwm>
    800039b8:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    800039bc:	00953023          	sd	s1,0(a0)
    800039c0:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800039c4:	00000597          	auipc	a1,0x0
    800039c8:	e1c58593          	addi	a1,a1,-484 # 800037e0 <_ZN14PeriodicThread6runnerEPv>
    800039cc:	00048513          	mv	a0,s1
    800039d0:	00000097          	auipc	ra,0x0
    800039d4:	e50080e7          	jalr	-432(ra) # 80003820 <_ZN6ThreadC1EPFvPvES0_>
    800039d8:	00008797          	auipc	a5,0x8
    800039dc:	f4878793          	addi	a5,a5,-184 # 8000b920 <_ZTV14PeriodicThread+0x10>
    800039e0:	00f4b023          	sd	a5,0(s1)
}
    800039e4:	01813083          	ld	ra,24(sp)
    800039e8:	01013403          	ld	s0,16(sp)
    800039ec:	00813483          	ld	s1,8(sp)
    800039f0:	00013903          	ld	s2,0(sp)
    800039f4:	02010113          	addi	sp,sp,32
    800039f8:	00008067          	ret

00000000800039fc <_ZN5Riscv10initSystemEv>:
#include "../h/KConsole.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void Riscv::initSystem()
{
    800039fc:	ff010113          	addi	sp,sp,-16
    80003a00:	00113423          	sd	ra,8(sp)
    80003a04:	00813023          	sd	s0,0(sp)
    80003a08:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003a0c:	00008797          	auipc	a5,0x8
    80003a10:	0747b783          	ld	a5,116(a5) # 8000ba80 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003a14:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003a18:	fffff097          	auipc	ra,0xfffff
    80003a1c:	f04080e7          	jalr	-252(ra) # 8000291c <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003a20:	fffff097          	auipc	ra,0xfffff
    80003a24:	354080e7          	jalr	852(ra) # 80002d74 <_ZN8KConsole10initializeEv>
}
    80003a28:	00813083          	ld	ra,8(sp)
    80003a2c:	00013403          	ld	s0,0(sp)
    80003a30:	01010113          	addi	sp,sp,16
    80003a34:	00008067          	ret

0000000080003a38 <_ZN5Riscv16enableInterruptsEv>:
    //todo
    Riscv::disableInterrupts();
}


void Riscv::enableInterrupts() {
    80003a38:	ff010113          	addi	sp,sp,-16
    80003a3c:	00813423          	sd	s0,8(sp)
    80003a40:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003a44:	00200793          	li	a5,2
    80003a48:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80003a4c:	00813403          	ld	s0,8(sp)
    80003a50:	01010113          	addi	sp,sp,16
    80003a54:	00008067          	ret

0000000080003a58 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80003a58:	ff010113          	addi	sp,sp,-16
    80003a5c:	00813423          	sd	s0,8(sp)
    80003a60:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003a64:	00200793          	li	a5,2
    80003a68:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80003a6c:	00813403          	ld	s0,8(sp)
    80003a70:	01010113          	addi	sp,sp,16
    80003a74:	00008067          	ret

0000000080003a78 <_ZN5Riscv9endSystemEv>:
{
    80003a78:	ff010113          	addi	sp,sp,-16
    80003a7c:	00113423          	sd	ra,8(sp)
    80003a80:	00813023          	sd	s0,0(sp)
    80003a84:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003a88:	00000097          	auipc	ra,0x0
    80003a8c:	fd0080e7          	jalr	-48(ra) # 80003a58 <_ZN5Riscv17disableInterruptsEv>
}
    80003a90:	00813083          	ld	ra,8(sp)
    80003a94:	00013403          	ld	s0,0(sp)
    80003a98:	01010113          	addi	sp,sp,16
    80003a9c:	00008067          	ret

0000000080003aa0 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80003aa0:	ff010113          	addi	sp,sp,-16
    80003aa4:	00813423          	sd	s0,8(sp)
    80003aa8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003aac:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003ab0:	10200073          	sret
}
    80003ab4:	00813403          	ld	s0,8(sp)
    80003ab8:	01010113          	addi	sp,sp,16
    80003abc:	00008067          	ret

0000000080003ac0 <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    80003ac0:	fd010113          	addi	sp,sp,-48
    80003ac4:	02113423          	sd	ra,40(sp)
    80003ac8:	02813023          	sd	s0,32(sp)
    80003acc:	00913c23          	sd	s1,24(sp)
    80003ad0:	01213823          	sd	s2,16(sp)
    80003ad4:	03010413          	addi	s0,sp,48
    80003ad8:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003adc:	100027f3          	csrr	a5,sstatus
    80003ae0:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80003ae4:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003ae8:	00200793          	li	a5,2
    80003aec:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    80003af0:	0004c503          	lbu	a0,0(s1)
    80003af4:	00050a63          	beqz	a0,80003b08 <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    80003af8:	00005097          	auipc	ra,0x5
    80003afc:	a94080e7          	jalr	-1388(ra) # 8000858c <__putc>
        string++;
    80003b00:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003b04:	fedff06f          	j	80003af0 <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80003b08:	0009091b          	sext.w	s2,s2
    80003b0c:	00297913          	andi	s2,s2,2
    80003b10:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003b14:	10092073          	csrs	sstatus,s2
}
    80003b18:	02813083          	ld	ra,40(sp)
    80003b1c:	02013403          	ld	s0,32(sp)
    80003b20:	01813483          	ld	s1,24(sp)
    80003b24:	01013903          	ld	s2,16(sp)
    80003b28:	03010113          	addi	sp,sp,48
    80003b2c:	00008067          	ret

0000000080003b30 <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    80003b30:	fc010113          	addi	sp,sp,-64
    80003b34:	02113c23          	sd	ra,56(sp)
    80003b38:	02813823          	sd	s0,48(sp)
    80003b3c:	02913423          	sd	s1,40(sp)
    80003b40:	03213023          	sd	s2,32(sp)
    80003b44:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003b48:	100027f3          	csrr	a5,sstatus
    80003b4c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80003b50:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003b54:	00200793          	li	a5,2
    80003b58:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80003b5c:	0005051b          	sext.w	a0,a0

    i = 0;
    80003b60:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    80003b64:	00a00613          	li	a2,10
    80003b68:	02c5773b          	remuw	a4,a0,a2
    80003b6c:	02071693          	slli	a3,a4,0x20
    80003b70:	0206d693          	srli	a3,a3,0x20
    80003b74:	00006717          	auipc	a4,0x6
    80003b78:	82c70713          	addi	a4,a4,-2004 # 800093a0 <_ZZN5Riscv12printIntegerEmE6digits>
    80003b7c:	00d70733          	add	a4,a4,a3
    80003b80:	00074703          	lbu	a4,0(a4)
    80003b84:	fe040693          	addi	a3,s0,-32
    80003b88:	009687b3          	add	a5,a3,s1
    80003b8c:	0014849b          	addiw	s1,s1,1
    80003b90:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80003b94:	0005071b          	sext.w	a4,a0
    80003b98:	02c5553b          	divuw	a0,a0,a2
    80003b9c:	00900793          	li	a5,9
    80003ba0:	fce7e2e3          	bltu	a5,a4,80003b64 <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80003ba4:	fff4849b          	addiw	s1,s1,-1
    80003ba8:	0004ce63          	bltz	s1,80003bc4 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80003bac:	fe040793          	addi	a5,s0,-32
    80003bb0:	009787b3          	add	a5,a5,s1
    80003bb4:	ff07c503          	lbu	a0,-16(a5)
    80003bb8:	00005097          	auipc	ra,0x5
    80003bbc:	9d4080e7          	jalr	-1580(ra) # 8000858c <__putc>
    80003bc0:	fe5ff06f          	j	80003ba4 <_ZN5Riscv12printIntegerEm+0x74>

    __putc('\n');
    80003bc4:	00a00513          	li	a0,10
    80003bc8:	00005097          	auipc	ra,0x5
    80003bcc:	9c4080e7          	jalr	-1596(ra) # 8000858c <__putc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80003bd0:	0009091b          	sext.w	s2,s2
    80003bd4:	00297913          	andi	s2,s2,2
    80003bd8:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003bdc:	10092073          	csrs	sstatus,s2
}
    80003be0:	03813083          	ld	ra,56(sp)
    80003be4:	03013403          	ld	s0,48(sp)
    80003be8:	02813483          	ld	s1,40(sp)
    80003bec:	02013903          	ld	s2,32(sp)
    80003bf0:	04010113          	addi	sp,sp,64
    80003bf4:	00008067          	ret

0000000080003bf8 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80003bf8:	f9010113          	addi	sp,sp,-112
    80003bfc:	06113423          	sd	ra,104(sp)
    80003c00:	06813023          	sd	s0,96(sp)
    80003c04:	04913c23          	sd	s1,88(sp)
    80003c08:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003c0c:	00070713          	mv	a4,a4
    80003c10:	00008797          	auipc	a5,0x8
    80003c14:	eb07b783          	ld	a5,-336(a5) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003c18:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003c1c:	142027f3          	csrr	a5,scause
    80003c20:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80003c24:	fb843783          	ld	a5,-72(s0)

    uint64 scause = Riscv::r_scause();

    switch(scause)
    80003c28:	fff00713          	li	a4,-1
    80003c2c:	03f71713          	slli	a4,a4,0x3f
    80003c30:	00170713          	addi	a4,a4,1
    80003c34:	0ae78463          	beq	a5,a4,80003cdc <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
    80003c38:	fff00713          	li	a4,-1
    80003c3c:	03f71713          	slli	a4,a4,0x3f
    80003c40:	00170713          	addi	a4,a4,1
    80003c44:	04f76e63          	bltu	a4,a5,80003ca0 <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
    80003c48:	ff878793          	addi	a5,a5,-8
    80003c4c:	00100713          	li	a4,1
    80003c50:	16f76063          	bltu	a4,a5,80003db0 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
        }
        case ecallSystemInterupt:
        case ecallUserInterrupt:
        {
            uint64 operation;
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003c54:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003c58:	14102773          	csrr	a4,sepc
    80003c5c:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003c60:	fd843703          	ld	a4,-40(s0)

            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003c64:	00470713          	addi	a4,a4,4
    80003c68:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003c6c:	10002773          	csrr	a4,sstatus
    80003c70:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003c74:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003c78:	fae43823          	sd	a4,-80(s0)
            //uint64 volatile sie = Riscv::r_sie();

            switch(operation)
    80003c7c:	04200713          	li	a4,66
    80003c80:	12f76063          	bltu	a4,a5,80003da0 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
    80003c84:	00279793          	slli	a5,a5,0x2
    80003c88:	00005717          	auipc	a4,0x5
    80003c8c:	60870713          	addi	a4,a4,1544 # 80009290 <CONSOLE_STATUS+0x280>
    80003c90:	00e787b3          	add	a5,a5,a4
    80003c94:	0007a783          	lw	a5,0(a5)
    80003c98:	00e787b3          	add	a5,a5,a4
    80003c9c:	00078067          	jr	a5
    switch(scause)
    80003ca0:	fff00713          	li	a4,-1
    80003ca4:	03f71713          	slli	a4,a4,0x3f
    80003ca8:	00970713          	addi	a4,a4,9
    80003cac:	10e79263          	bne	a5,a4,80003db0 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
            uint64 x = CONSOLE_STATUS;
    80003cb0:	00008797          	auipc	a5,0x8
    80003cb4:	dc07b783          	ld	a5,-576(a5) # 8000ba70 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003cb8:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003cbc:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003cc0:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003cc4:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80003cc8:	0017f793          	andi	a5,a5,1
    80003ccc:	0a079263          	bnez	a5,80003d70 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
            console_handler();
    80003cd0:	00005097          	auipc	ra,0x5
    80003cd4:	930080e7          	jalr	-1744(ra) # 80008600 <console_handler>
            break;
    80003cd8:	0d80006f          	j	80003db0 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003cdc:	141027f3          	csrr	a5,sepc
    80003ce0:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003ce4:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003ce8:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003cec:	100027f3          	csrr	a5,sstatus
    80003cf0:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003cf4:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003cf8:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003cfc:	00200793          	li	a5,2
    80003d00:	1447b073          	csrc	sip,a5
            total++;
    80003d04:	00008717          	auipc	a4,0x8
    80003d08:	ea470713          	addi	a4,a4,-348 # 8000bba8 <_ZZN5Riscv20handleSupervisorTrapEvE5total>
    80003d0c:	00073783          	ld	a5,0(a4)
    80003d10:	00178793          	addi	a5,a5,1
    80003d14:	00f73023          	sd	a5,0(a4)
            PCB::timeSliceCounter++;
    80003d18:	00008497          	auipc	s1,0x8
    80003d1c:	d784b483          	ld	s1,-648(s1) # 8000ba90 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003d20:	0004b783          	ld	a5,0(s1)
    80003d24:	00178793          	addi	a5,a5,1
    80003d28:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003d2c:	fffff097          	auipc	ra,0xfffff
    80003d30:	4b8080e7          	jalr	1208(ra) # 800031e4 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003d34:	00008797          	auipc	a5,0x8
    80003d38:	d7c7b783          	ld	a5,-644(a5) # 8000bab0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003d3c:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003d40:	0107b783          	ld	a5,16(a5)
    80003d44:	0004b703          	ld	a4,0(s1)
    80003d48:	00f77c63          	bgeu	a4,a5,80003d60 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
            Riscv::w_sstatus(sstatus);
    80003d4c:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003d50:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003d54:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003d58:	14179073          	csrw	sepc,a5
}
    80003d5c:	0540006f          	j	80003db0 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                PCB::timeSliceCounter = 0;
    80003d60:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003d64:	fffff097          	auipc	ra,0xfffff
    80003d68:	ac8080e7          	jalr	-1336(ra) # 8000282c <_ZN3PCB8dispatchEv>
    80003d6c:	fe1ff06f          	j	80003d4c <_ZN5Riscv20handleSupervisorTrapEv+0x154>
                x = CONSOLE_TX_DATA;
    80003d70:	00008797          	auipc	a5,0x8
    80003d74:	d187b783          	ld	a5,-744(a5) # 8000ba88 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003d78:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003d7c:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003d80:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003d84:	00058513          	mv	a0,a1
                KConsole::putCharacterInput(c);
    80003d88:	0ff57513          	andi	a0,a0,255
    80003d8c:	fffff097          	auipc	ra,0xfffff
    80003d90:	098080e7          	jalr	152(ra) # 80002e24 <_ZN8KConsole17putCharacterInputEc>
    80003d94:	f3dff06f          	j	80003cd0 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
            {
                case MemoryAllocator::MEM_ALLOC:
                    MemoryAllocator::memAllocHandler();
    80003d98:	00000097          	auipc	ra,0x0
    80003d9c:	570080e7          	jalr	1392(ra) # 80004308 <_ZN15MemoryAllocator15memAllocHandlerEv>
                    KConsole::putcHandler();
                    break;
            }

            //Riscv::w_sie(sie);
            Riscv::w_sstatus(sstatus);
    80003da0:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003da4:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003da8:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003dac:	14179073          	csrw	sepc,a5

            break;
        }
    }
}
    80003db0:	06813083          	ld	ra,104(sp)
    80003db4:	06013403          	ld	s0,96(sp)
    80003db8:	05813483          	ld	s1,88(sp)
    80003dbc:	07010113          	addi	sp,sp,112
    80003dc0:	00008067          	ret
                    MemoryAllocator::memFreeHandler();
    80003dc4:	00000097          	auipc	ra,0x0
    80003dc8:	5a0080e7          	jalr	1440(ra) # 80004364 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003dcc:	fd5ff06f          	j	80003da0 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                    PCB::threadMakePCBHandler();
    80003dd0:	fffff097          	auipc	ra,0xfffff
    80003dd4:	e40080e7          	jalr	-448(ra) # 80002c10 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003dd8:	fc9ff06f          	j	80003da0 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                    PCB::threadCreateHandler();
    80003ddc:	fffff097          	auipc	ra,0xfffff
    80003de0:	d60080e7          	jalr	-672(ra) # 80002b3c <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003de4:	fbdff06f          	j	80003da0 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                    PCB::threadStartHandler();
    80003de8:	fffff097          	auipc	ra,0xfffff
    80003dec:	dec080e7          	jalr	-532(ra) # 80002bd4 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80003df0:	fb1ff06f          	j	80003da0 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                    PCB::threadDispatchHandler();
    80003df4:	fffff097          	auipc	ra,0xfffff
    80003df8:	ccc080e7          	jalr	-820(ra) # 80002ac0 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80003dfc:	fa5ff06f          	j	80003da0 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                    PCB::threadExitHandler();
    80003e00:	fffff097          	auipc	ra,0xfffff
    80003e04:	c6c080e7          	jalr	-916(ra) # 80002a6c <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003e08:	f99ff06f          	j	80003da0 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                    PCB::threadSleepHandler();
    80003e0c:	fffff097          	auipc	ra,0xfffff
    80003e10:	ce4080e7          	jalr	-796(ra) # 80002af0 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003e14:	f8dff06f          	j	80003da0 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                    KSemaphore::semOpenHandler();
    80003e18:	00000097          	auipc	ra,0x0
    80003e1c:	7f4080e7          	jalr	2036(ra) # 8000460c <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003e20:	f81ff06f          	j	80003da0 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                    KSemaphore::semWaitHandler();
    80003e24:	00001097          	auipc	ra,0x1
    80003e28:	880080e7          	jalr	-1920(ra) # 800046a4 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003e2c:	f75ff06f          	j	80003da0 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                    KSemaphore::semSignalHandler();
    80003e30:	00001097          	auipc	ra,0x1
    80003e34:	8ac080e7          	jalr	-1876(ra) # 800046dc <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003e38:	f69ff06f          	j	80003da0 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                    KSemaphore::semCloseHandler();
    80003e3c:	00001097          	auipc	ra,0x1
    80003e40:	8d8080e7          	jalr	-1832(ra) # 80004714 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80003e44:	f5dff06f          	j	80003da0 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                    KConsole::getcHandler();
    80003e48:	fffff097          	auipc	ra,0xfffff
    80003e4c:	248080e7          	jalr	584(ra) # 80003090 <_ZN8KConsole11getcHandlerEv>
                    break;
    80003e50:	f51ff06f          	j	80003da0 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                    KConsole::putcHandler();
    80003e54:	fffff097          	auipc	ra,0xfffff
    80003e58:	1f8080e7          	jalr	504(ra) # 8000304c <_ZN8KConsole11putcHandlerEv>
                    break;
    80003e5c:	f45ff06f          	j	80003da0 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>

0000000080003e60 <_ZN5Riscv10kernelMainEv>:

void Riscv::kernelMain()
{
    80003e60:	fe010113          	addi	sp,sp,-32
    80003e64:	00113c23          	sd	ra,24(sp)
    80003e68:	00813823          	sd	s0,16(sp)
    80003e6c:	00913423          	sd	s1,8(sp)
    80003e70:	02010413          	addi	s0,sp,32
    initSystem();
    80003e74:	00000097          	auipc	ra,0x0
    80003e78:	b88080e7          	jalr	-1144(ra) # 800039fc <_ZN5Riscv10initSystemEv>

    //disableTimerInterrupts();
    enableInterrupts();
    80003e7c:	00000097          	auipc	ra,0x0
    80003e80:	bbc080e7          	jalr	-1092(ra) # 80003a38 <_ZN5Riscv16enableInterruptsEv>
    //userMain();
    //myTests();


    //Riscv::printString("Sigurno radi\n");
   for(int i = 0; i < 100;i++)
    80003e84:	00000493          	li	s1,0
    80003e88:	06300793          	li	a5,99
    80003e8c:	0097ce63          	blt	a5,s1,80003ea8 <_ZN5Riscv10kernelMainEv+0x48>
   {
       char c = getc();
    80003e90:	ffffd097          	auipc	ra,0xffffd
    80003e94:	670080e7          	jalr	1648(ra) # 80001500 <getc>
       putc(c);
    80003e98:	ffffd097          	auipc	ra,0xffffd
    80003e9c:	690080e7          	jalr	1680(ra) # 80001528 <putc>
   for(int i = 0; i < 100;i++)
    80003ea0:	0014849b          	addiw	s1,s1,1
    80003ea4:	fe5ff06f          	j	80003e88 <_ZN5Riscv10kernelMainEv+0x28>
    /*for(int i = 0; i < 10;i++)
    {
        putc(getc());
    }*/

    disableInterrupts();
    80003ea8:	00000097          	auipc	ra,0x0
    80003eac:	bb0080e7          	jalr	-1104(ra) # 80003a58 <_ZN5Riscv17disableInterruptsEv>
    //endSystem();

    Riscv::printString("End...");
    80003eb0:	00005517          	auipc	a0,0x5
    80003eb4:	50050513          	addi	a0,a0,1280 # 800093b0 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80003eb8:	00000097          	auipc	ra,0x0
    80003ebc:	c08080e7          	jalr	-1016(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
}
    80003ec0:	01813083          	ld	ra,24(sp)
    80003ec4:	01013403          	ld	s0,16(sp)
    80003ec8:	00813483          	ld	s1,8(sp)
    80003ecc:	02010113          	addi	sp,sp,32
    80003ed0:	00008067          	ret

0000000080003ed4 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    80003ed4:	ff010113          	addi	sp,sp,-16
    80003ed8:	00113423          	sd	ra,8(sp)
    80003edc:	00813023          	sd	s0,0(sp)
    80003ee0:	01010413          	addi	s0,sp,16
    userMain();
    80003ee4:	00002097          	auipc	ra,0x2
    80003ee8:	22c080e7          	jalr	556(ra) # 80006110 <_Z8userMainv>
}
    80003eec:	00813083          	ld	ra,8(sp)
    80003ef0:	00013403          	ld	s0,0(sp)
    80003ef4:	01010113          	addi	sp,sp,16
    80003ef8:	00008067          	ret

0000000080003efc <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80003efc:	ff010113          	addi	sp,sp,-16
    80003f00:	00813423          	sd	s0,8(sp)
    80003f04:	01010413          	addi	s0,sp,16
    //uint64 x = 0x200;
    //__asm__ volatile("csrs sie, %0"::"r"(x));
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80003f08:	00200793          	li	a5,2
    80003f0c:	1047b073          	csrc	sie,a5
}
    80003f10:	00813403          	ld	s0,8(sp)
    80003f14:	01010113          	addi	sp,sp,16
    80003f18:	00008067          	ret

0000000080003f1c <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    80003f1c:	ff010113          	addi	sp,sp,-16
    80003f20:	00813423          	sd	s0,8(sp)
    80003f24:	01010413          	addi	s0,sp,16
    while(true)
    80003f28:	0000006f          	j	80003f28 <_ZN5Riscv9idleRiscvEPv+0xc>

0000000080003f2c <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003f2c:	ff010113          	addi	sp,sp,-16
    80003f30:	00813423          	sd	s0,8(sp)
    80003f34:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003f38:	00008717          	auipc	a4,0x8
    80003f3c:	c7872703          	lw	a4,-904(a4) # 8000bbb0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003f40:	00100793          	li	a5,1
    80003f44:	04f70263          	beq	a4,a5,80003f88 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003f48:	00008797          	auipc	a5,0x8
    80003f4c:	c6878793          	addi	a5,a5,-920 # 8000bbb0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003f50:	00100713          	li	a4,1
    80003f54:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003f58:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003f5c:	00008717          	auipc	a4,0x8
    80003f60:	b1c73703          	ld	a4,-1252(a4) # 8000ba78 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003f64:	00073703          	ld	a4,0(a4)
    80003f68:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003f6c:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003f70:	00008797          	auipc	a5,0x8
    80003f74:	b487b783          	ld	a5,-1208(a5) # 8000bab8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003f78:	0007b783          	ld	a5,0(a5)
    80003f7c:	40e787b3          	sub	a5,a5,a4
    80003f80:	ff178793          	addi	a5,a5,-15
    80003f84:	00f73023          	sd	a5,0(a4)
}
    80003f88:	00813403          	ld	s0,8(sp)
    80003f8c:	01010113          	addi	sp,sp,16
    80003f90:	00008067          	ret

0000000080003f94 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80003f94:	fe010113          	addi	sp,sp,-32
    80003f98:	00113c23          	sd	ra,24(sp)
    80003f9c:	00813823          	sd	s0,16(sp)
    80003fa0:	00913423          	sd	s1,8(sp)
    80003fa4:	01213023          	sd	s2,0(sp)
    80003fa8:	02010413          	addi	s0,sp,32
    80003fac:	00050493          	mv	s1,a0
    80003fb0:	00058913          	mv	s2,a1
    initMemory();
    80003fb4:	00000097          	auipc	ra,0x0
    80003fb8:	f78080e7          	jalr	-136(ra) # 80003f2c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003fbc:	00008797          	auipc	a5,0x8
    80003fc0:	bfc7b783          	ld	a5,-1028(a5) # 8000bbb8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003fc4:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003fc8:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80003fcc:	00000713          	li	a4,0
    while(curr != 0)
    80003fd0:	00078c63          	beqz	a5,80003fe8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003fd4:	00f4e863          	bltu	s1,a5,80003fe4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003fd8:	00078713          	mv	a4,a5
        curr = curr->next;
    80003fdc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003fe0:	ff1ff06f          	j	80003fd0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003fe4:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003fe8:	02070063          	beqz	a4,80004008 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003fec:	00973423          	sd	s1,8(a4)
}
    80003ff0:	01813083          	ld	ra,24(sp)
    80003ff4:	01013403          	ld	s0,16(sp)
    80003ff8:	00813483          	ld	s1,8(sp)
    80003ffc:	00013903          	ld	s2,0(sp)
    80004000:	02010113          	addi	sp,sp,32
    80004004:	00008067          	ret
        headAllocated = newAllocated;
    80004008:	00008797          	auipc	a5,0x8
    8000400c:	ba97b823          	sd	s1,-1104(a5) # 8000bbb8 <_ZN15MemoryAllocator13headAllocatedE>
    80004010:	fe1ff06f          	j	80003ff0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080004014 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80004014:	fe010113          	addi	sp,sp,-32
    80004018:	00113c23          	sd	ra,24(sp)
    8000401c:	00813823          	sd	s0,16(sp)
    80004020:	00913423          	sd	s1,8(sp)
    80004024:	01213023          	sd	s2,0(sp)
    80004028:	02010413          	addi	s0,sp,32
    8000402c:	00050913          	mv	s2,a0
    initMemory();
    80004030:	00000097          	auipc	ra,0x0
    80004034:	efc080e7          	jalr	-260(ra) # 80003f2c <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004038:	00008497          	auipc	s1,0x8
    8000403c:	b884b483          	ld	s1,-1144(s1) # 8000bbc0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80004040:	00000713          	li	a4,0
    while(curr != 0)
    80004044:	0a048863          	beqz	s1,800040f4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80004048:	0004b783          	ld	a5,0(s1)
    8000404c:	0127f863          	bgeu	a5,s2,8000405c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80004050:	00048713          	mv	a4,s1
        curr = curr->next;
    80004054:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004058:	fedff06f          	j	80004044 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    8000405c:	01090693          	addi	a3,s2,16
    80004060:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80004064:	00008617          	auipc	a2,0x8
    80004068:	a5463603          	ld	a2,-1452(a2) # 8000bab8 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000406c:	00063603          	ld	a2,0(a2)
    80004070:	04d66c63          	bltu	a2,a3,800040c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80004074:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80004078:	01000613          	li	a2,16
    8000407c:	02f67663          	bgeu	a2,a5,800040a8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80004080:	0084b603          	ld	a2,8(s1)
    80004084:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80004088:	ff078793          	addi	a5,a5,-16
    8000408c:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80004090:	00070663          	beqz	a4,8000409c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80004094:	00d73423          	sd	a3,8(a4)
    80004098:	0380006f          	j	800040d0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    8000409c:	00008797          	auipc	a5,0x8
    800040a0:	b2d7b223          	sd	a3,-1244(a5) # 8000bbc0 <_ZN15MemoryAllocator8headFreeE>
    800040a4:	02c0006f          	j	800040d0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    800040a8:	00070863          	beqz	a4,800040b8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    800040ac:	0084b783          	ld	a5,8(s1)
    800040b0:	00f73423          	sd	a5,8(a4)
    800040b4:	01c0006f          	j	800040d0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    800040b8:	0084b783          	ld	a5,8(s1)
    800040bc:	00008717          	auipc	a4,0x8
    800040c0:	b0f73223          	sd	a5,-1276(a4) # 8000bbc0 <_ZN15MemoryAllocator8headFreeE>
    800040c4:	00c0006f          	j	800040d0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    800040c8:	02070063          	beqz	a4,800040e8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    800040cc:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    800040d0:	00090593          	mv	a1,s2
    800040d4:	00048513          	mv	a0,s1
    800040d8:	00000097          	auipc	ra,0x0
    800040dc:	ebc080e7          	jalr	-324(ra) # 80003f94 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    800040e0:	01048513          	addi	a0,s1,16
            break;
    800040e4:	0140006f          	j	800040f8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    800040e8:	00008797          	auipc	a5,0x8
    800040ec:	ac07bc23          	sd	zero,-1320(a5) # 8000bbc0 <_ZN15MemoryAllocator8headFreeE>
    800040f0:	fe1ff06f          	j	800040d0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    800040f4:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    800040f8:	01813083          	ld	ra,24(sp)
    800040fc:	01013403          	ld	s0,16(sp)
    80004100:	00813483          	ld	s1,8(sp)
    80004104:	00013903          	ld	s2,0(sp)
    80004108:	02010113          	addi	sp,sp,32
    8000410c:	00008067          	ret

0000000080004110 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004110:	ff010113          	addi	sp,sp,-16
    80004114:	00113423          	sd	ra,8(sp)
    80004118:	00813023          	sd	s0,0(sp)
    8000411c:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004120:	00000097          	auipc	ra,0x0
    80004124:	ef4080e7          	jalr	-268(ra) # 80004014 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004128:	00813083          	ld	ra,8(sp)
    8000412c:	00013403          	ld	s0,0(sp)
    80004130:	01010113          	addi	sp,sp,16
    80004134:	00008067          	ret

0000000080004138 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004138:	fe010113          	addi	sp,sp,-32
    8000413c:	00113c23          	sd	ra,24(sp)
    80004140:	00813823          	sd	s0,16(sp)
    80004144:	00913423          	sd	s1,8(sp)
    80004148:	01213023          	sd	s2,0(sp)
    8000414c:	02010413          	addi	s0,sp,32
    80004150:	00050493          	mv	s1,a0
    80004154:	00058913          	mv	s2,a1
    initMemory();
    80004158:	00000097          	auipc	ra,0x0
    8000415c:	dd4080e7          	jalr	-556(ra) # 80003f2c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004160:	00008797          	auipc	a5,0x8
    80004164:	a607b783          	ld	a5,-1440(a5) # 8000bbc0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80004168:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    8000416c:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80004170:	00000713          	li	a4,0
    while(curr != 0)
    80004174:	00078c63          	beqz	a5,8000418c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80004178:	00f4e863          	bltu	s1,a5,80004188 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    8000417c:	00078713          	mv	a4,a5
        curr = curr->next;
    80004180:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004184:	ff1ff06f          	j	80004174 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80004188:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    8000418c:	04070663          	beqz	a4,800041d8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004190:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004194:	0084b783          	ld	a5,8(s1)
    80004198:	00078a63          	beqz	a5,800041ac <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    8000419c:	0004b603          	ld	a2,0(s1)
    800041a0:	01060693          	addi	a3,a2,16
    800041a4:	00d486b3          	add	a3,s1,a3
    800041a8:	02d78e63          	beq	a5,a3,800041e4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    800041ac:	00070a63          	beqz	a4,800041c0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    800041b0:	00073683          	ld	a3,0(a4)
    800041b4:	01068793          	addi	a5,a3,16
    800041b8:	00f707b3          	add	a5,a4,a5
    800041bc:	04978263          	beq	a5,s1,80004200 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    800041c0:	01813083          	ld	ra,24(sp)
    800041c4:	01013403          	ld	s0,16(sp)
    800041c8:	00813483          	ld	s1,8(sp)
    800041cc:	00013903          	ld	s2,0(sp)
    800041d0:	02010113          	addi	sp,sp,32
    800041d4:	00008067          	ret
        headFree = newSegment;
    800041d8:	00008797          	auipc	a5,0x8
    800041dc:	9e97b423          	sd	s1,-1560(a5) # 8000bbc0 <_ZN15MemoryAllocator8headFreeE>
    800041e0:	fb5ff06f          	j	80004194 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    800041e4:	0007b683          	ld	a3,0(a5)
    800041e8:	00d60633          	add	a2,a2,a3
    800041ec:	01060613          	addi	a2,a2,16
    800041f0:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    800041f4:	0087b783          	ld	a5,8(a5)
    800041f8:	00f4b423          	sd	a5,8(s1)
    800041fc:	fb1ff06f          	j	800041ac <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004200:	0004b783          	ld	a5,0(s1)
    80004204:	00f686b3          	add	a3,a3,a5
    80004208:	01068693          	addi	a3,a3,16
    8000420c:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004210:	0084b783          	ld	a5,8(s1)
    80004214:	00f73423          	sd	a5,8(a4)
}
    80004218:	fa9ff06f          	j	800041c0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

000000008000421c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    8000421c:	fe010113          	addi	sp,sp,-32
    80004220:	00113c23          	sd	ra,24(sp)
    80004224:	00813823          	sd	s0,16(sp)
    80004228:	00913423          	sd	s1,8(sp)
    8000422c:	01213023          	sd	s2,0(sp)
    80004230:	02010413          	addi	s0,sp,32
    80004234:	00050913          	mv	s2,a0
    initMemory();
    80004238:	00000097          	auipc	ra,0x0
    8000423c:	cf4080e7          	jalr	-780(ra) # 80003f2c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004240:	00008497          	auipc	s1,0x8
    80004244:	9784b483          	ld	s1,-1672(s1) # 8000bbb8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004248:	00000713          	li	a4,0
    while(curr != 0)
    8000424c:	02048a63          	beqz	s1,80004280 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004250:	01048793          	addi	a5,s1,16
    80004254:	01278863          	beq	a5,s2,80004264 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004258:	00048713          	mv	a4,s1
        curr = curr->next;
    8000425c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004260:	fedff06f          	j	8000424c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80004264:	02070e63          	beqz	a4,800042a0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80004268:	0084b783          	ld	a5,8(s1)
    8000426c:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004270:	0004b583          	ld	a1,0(s1)
    80004274:	00048513          	mv	a0,s1
    80004278:	00000097          	auipc	ra,0x0
    8000427c:	ec0080e7          	jalr	-320(ra) # 80004138 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004280:	02048863          	beqz	s1,800042b0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004284:	00000513          	li	a0,0
    else
        return 1;
}
    80004288:	01813083          	ld	ra,24(sp)
    8000428c:	01013403          	ld	s0,16(sp)
    80004290:	00813483          	ld	s1,8(sp)
    80004294:	00013903          	ld	s2,0(sp)
    80004298:	02010113          	addi	sp,sp,32
    8000429c:	00008067          	ret
                headAllocated = curr->next;
    800042a0:	0084b783          	ld	a5,8(s1)
    800042a4:	00008717          	auipc	a4,0x8
    800042a8:	90f73a23          	sd	a5,-1772(a4) # 8000bbb8 <_ZN15MemoryAllocator13headAllocatedE>
    800042ac:	fc5ff06f          	j	80004270 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    800042b0:	00100513          	li	a0,1
    800042b4:	fd5ff06f          	j	80004288 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

00000000800042b8 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    800042b8:	ff010113          	addi	sp,sp,-16
    800042bc:	00113423          	sd	ra,8(sp)
    800042c0:	00813023          	sd	s0,0(sp)
    800042c4:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    800042c8:	00000097          	auipc	ra,0x0
    800042cc:	f54080e7          	jalr	-172(ra) # 8000421c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    800042d0:	00813083          	ld	ra,8(sp)
    800042d4:	00013403          	ld	s0,0(sp)
    800042d8:	01010113          	addi	sp,sp,16
    800042dc:	00008067          	ret

00000000800042e0 <_Z7kmallocm>:
    uint64 retval = kfree((void*)addr);
    __asm__ volatile("mv a0,%0" : :"r"(retval));
}

void* kmalloc(size_t size)
{
    800042e0:	ff010113          	addi	sp,sp,-16
    800042e4:	00113423          	sd	ra,8(sp)
    800042e8:	00813023          	sd	s0,0(sp)
    800042ec:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800042f0:	00000097          	auipc	ra,0x0
    800042f4:	e20080e7          	jalr	-480(ra) # 80004110 <_ZN15MemoryAllocator9mem_allocEm>
}
    800042f8:	00813083          	ld	ra,8(sp)
    800042fc:	00013403          	ld	s0,0(sp)
    80004300:	01010113          	addi	sp,sp,16
    80004304:	00008067          	ret

0000000080004308 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004308:	ff010113          	addi	sp,sp,-16
    8000430c:	00113423          	sd	ra,8(sp)
    80004310:	00813023          	sd	s0,0(sp)
    80004314:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004318:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    8000431c:	00651513          	slli	a0,a0,0x6
    80004320:	00000097          	auipc	ra,0x0
    80004324:	fc0080e7          	jalr	-64(ra) # 800042e0 <_Z7kmallocm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004328:	00050513          	mv	a0,a0
}
    8000432c:	00813083          	ld	ra,8(sp)
    80004330:	00013403          	ld	s0,0(sp)
    80004334:	01010113          	addi	sp,sp,16
    80004338:	00008067          	ret

000000008000433c <_Z5kfreePv>:

uint64 kfree(void* p)
{
    8000433c:	ff010113          	addi	sp,sp,-16
    80004340:	00113423          	sd	ra,8(sp)
    80004344:	00813023          	sd	s0,0(sp)
    80004348:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    8000434c:	00000097          	auipc	ra,0x0
    80004350:	f6c080e7          	jalr	-148(ra) # 800042b8 <_ZN15MemoryAllocator8mem_freeEPv>
    80004354:	00813083          	ld	ra,8(sp)
    80004358:	00013403          	ld	s0,0(sp)
    8000435c:	01010113          	addi	sp,sp,16
    80004360:	00008067          	ret

0000000080004364 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004364:	ff010113          	addi	sp,sp,-16
    80004368:	00113423          	sd	ra,8(sp)
    8000436c:	00813023          	sd	s0,0(sp)
    80004370:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004374:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004378:	00000097          	auipc	ra,0x0
    8000437c:	fc4080e7          	jalr	-60(ra) # 8000433c <_Z5kfreePv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004380:	00050513          	mv	a0,a0
}
    80004384:	00813083          	ld	ra,8(sp)
    80004388:	00013403          	ld	s0,0(sp)
    8000438c:	01010113          	addi	sp,sp,16
    80004390:	00008067          	ret

0000000080004394 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80004394:	ff010113          	addi	sp,sp,-16
    80004398:	00813423          	sd	s0,8(sp)
    8000439c:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    800043a0:	00b52a23          	sw	a1,20(a0)
    800043a4:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    800043a8:	00053423          	sd	zero,8(a0)
    800043ac:	00053023          	sd	zero,0(a0)
}
    800043b0:	00813403          	ld	s0,8(sp)
    800043b4:	01010113          	addi	sp,sp,16
    800043b8:	00008067          	ret

00000000800043bc <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    800043bc:	ff010113          	addi	sp,sp,-16
    800043c0:	00813423          	sd	s0,8(sp)
    800043c4:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    800043c8:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    800043cc:	00053783          	ld	a5,0(a0)
    800043d0:	00078e63          	beqz	a5,800043ec <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    800043d4:	00853783          	ld	a5,8(a0)
    800043d8:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    800043dc:	00b53423          	sd	a1,8(a0)
    }
}
    800043e0:	00813403          	ld	s0,8(sp)
    800043e4:	01010113          	addi	sp,sp,16
    800043e8:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    800043ec:	00b53423          	sd	a1,8(a0)
    800043f0:	00b53023          	sd	a1,0(a0)
    800043f4:	fedff06f          	j	800043e0 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

00000000800043f8 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    800043f8:	ff010113          	addi	sp,sp,-16
    800043fc:	00113423          	sd	ra,8(sp)
    80004400:	00813023          	sd	s0,0(sp)
    80004404:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004408:	00007797          	auipc	a5,0x7
    8000440c:	6a87b783          	ld	a5,1704(a5) # 8000bab0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80004410:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80004414:	00200793          	li	a5,2
    80004418:	02f5ac23          	sw	a5,56(a1)
    addToBlocked(PCB::running);
    8000441c:	00000097          	auipc	ra,0x0
    80004420:	fa0080e7          	jalr	-96(ra) # 800043bc <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80004424:	ffffe097          	auipc	ra,0xffffe
    80004428:	408080e7          	jalr	1032(ra) # 8000282c <_ZN3PCB8dispatchEv>
}
    8000442c:	00813083          	ld	ra,8(sp)
    80004430:	00013403          	ld	s0,0(sp)
    80004434:	01010113          	addi	sp,sp,16
    80004438:	00008067          	ret

000000008000443c <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    8000443c:	01052783          	lw	a5,16(a0)
    80004440:	fff7879b          	addiw	a5,a5,-1
    80004444:	00f52823          	sw	a5,16(a0)
    80004448:	02079713          	slli	a4,a5,0x20
    8000444c:	00074663          	bltz	a4,80004458 <_ZN10KSemaphore4waitEv+0x1c>
}
    80004450:	00000513          	li	a0,0
    80004454:	00008067          	ret
uint64 KSemaphore::wait() {
    80004458:	ff010113          	addi	sp,sp,-16
    8000445c:	00113423          	sd	ra,8(sp)
    80004460:	00813023          	sd	s0,0(sp)
    80004464:	01010413          	addi	s0,sp,16
        block();
    80004468:	00000097          	auipc	ra,0x0
    8000446c:	f90080e7          	jalr	-112(ra) # 800043f8 <_ZN10KSemaphore5blockEv>
}
    80004470:	00000513          	li	a0,0
    80004474:	00813083          	ld	ra,8(sp)
    80004478:	00013403          	ld	s0,0(sp)
    8000447c:	01010113          	addi	sp,sp,16
    80004480:	00008067          	ret

0000000080004484 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004484:	ff010113          	addi	sp,sp,-16
    80004488:	00813423          	sd	s0,8(sp)
    8000448c:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004490:	00053503          	ld	a0,0(a0)
    80004494:	00813403          	ld	s0,8(sp)
    80004498:	01010113          	addi	sp,sp,16
    8000449c:	00008067          	ret

00000000800044a0 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    800044a0:	ff010113          	addi	sp,sp,-16
    800044a4:	00813423          	sd	s0,8(sp)
    800044a8:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    800044ac:	00053783          	ld	a5,0(a0)
    800044b0:	00078c63          	beqz	a5,800044c8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    800044b4:	0087b703          	ld	a4,8(a5)
    800044b8:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    800044bc:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    800044c0:	00053783          	ld	a5,0(a0)
    800044c4:	00078863          	beqz	a5,800044d4 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800044c8:	00813403          	ld	s0,8(sp)
    800044cc:	01010113          	addi	sp,sp,16
    800044d0:	00008067          	ret
        tailBlocked =0;
    800044d4:	00053423          	sd	zero,8(a0)
    800044d8:	ff1ff06f          	j	800044c8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

00000000800044dc <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    800044dc:	fe010113          	addi	sp,sp,-32
    800044e0:	00113c23          	sd	ra,24(sp)
    800044e4:	00813823          	sd	s0,16(sp)
    800044e8:	00913423          	sd	s1,8(sp)
    800044ec:	01213023          	sd	s2,0(sp)
    800044f0:	02010413          	addi	s0,sp,32
    800044f4:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    800044f8:	00090513          	mv	a0,s2
    800044fc:	00000097          	auipc	ra,0x0
    80004500:	f88080e7          	jalr	-120(ra) # 80004484 <_ZN10KSemaphore15getFirstBlockedEv>
    80004504:	00050493          	mv	s1,a0
    80004508:	02050063          	beqz	a0,80004528 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    8000450c:	00090513          	mv	a0,s2
    80004510:	00000097          	auipc	ra,0x0
    80004514:	f90080e7          	jalr	-112(ra) # 800044a0 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    80004518:	00048513          	mv	a0,s1
    8000451c:	fffff097          	auipc	ra,0xfffff
    80004520:	f78080e7          	jalr	-136(ra) # 80003494 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004524:	fd5ff06f          	j	800044f8 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80004528:	01813083          	ld	ra,24(sp)
    8000452c:	01013403          	ld	s0,16(sp)
    80004530:	00813483          	ld	s1,8(sp)
    80004534:	00013903          	ld	s2,0(sp)
    80004538:	02010113          	addi	sp,sp,32
    8000453c:	00008067          	ret

0000000080004540 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80004540:	fe010113          	addi	sp,sp,-32
    80004544:	00113c23          	sd	ra,24(sp)
    80004548:	00813823          	sd	s0,16(sp)
    8000454c:	00913423          	sd	s1,8(sp)
    80004550:	01213023          	sd	s2,0(sp)
    80004554:	02010413          	addi	s0,sp,32
    80004558:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    8000455c:	00000097          	auipc	ra,0x0
    80004560:	f28080e7          	jalr	-216(ra) # 80004484 <_ZN10KSemaphore15getFirstBlockedEv>
    80004564:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80004568:	00090513          	mv	a0,s2
    8000456c:	00000097          	auipc	ra,0x0
    80004570:	f34080e7          	jalr	-204(ra) # 800044a0 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004574:	00048863          	beqz	s1,80004584 <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    80004578:	00048513          	mv	a0,s1
    8000457c:	fffff097          	auipc	ra,0xfffff
    80004580:	f18080e7          	jalr	-232(ra) # 80003494 <_ZN9Scheduler3putEP3PCB>
    }
}
    80004584:	01813083          	ld	ra,24(sp)
    80004588:	01013403          	ld	s0,16(sp)
    8000458c:	00813483          	ld	s1,8(sp)
    80004590:	00013903          	ld	s2,0(sp)
    80004594:	02010113          	addi	sp,sp,32
    80004598:	00008067          	ret

000000008000459c <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    8000459c:	01052783          	lw	a5,16(a0)
    800045a0:	0017879b          	addiw	a5,a5,1
    800045a4:	0007871b          	sext.w	a4,a5
    800045a8:	00f52823          	sw	a5,16(a0)
    800045ac:	00e05663          	blez	a4,800045b8 <_ZN10KSemaphore6signalEv+0x1c>
}
    800045b0:	00000513          	li	a0,0
    800045b4:	00008067          	ret
uint64 KSemaphore::signal() {
    800045b8:	ff010113          	addi	sp,sp,-16
    800045bc:	00113423          	sd	ra,8(sp)
    800045c0:	00813023          	sd	s0,0(sp)
    800045c4:	01010413          	addi	s0,sp,16
        unblock();
    800045c8:	00000097          	auipc	ra,0x0
    800045cc:	f78080e7          	jalr	-136(ra) # 80004540 <_ZN10KSemaphore7unblockEv>
}
    800045d0:	00000513          	li	a0,0
    800045d4:	00813083          	ld	ra,8(sp)
    800045d8:	00013403          	ld	s0,0(sp)
    800045dc:	01010113          	addi	sp,sp,16
    800045e0:	00008067          	ret

00000000800045e4 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    800045e4:	ff010113          	addi	sp,sp,-16
    800045e8:	00113423          	sd	ra,8(sp)
    800045ec:	00813023          	sd	s0,0(sp)
    800045f0:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800045f4:	00000097          	auipc	ra,0x0
    800045f8:	cec080e7          	jalr	-788(ra) # 800042e0 <_Z7kmallocm>
}
    800045fc:	00813083          	ld	ra,8(sp)
    80004600:	00013403          	ld	s0,0(sp)
    80004604:	01010113          	addi	sp,sp,16
    80004608:	00008067          	ret

000000008000460c <_ZN10KSemaphore14semOpenHandlerEv>:
{
    8000460c:	fd010113          	addi	sp,sp,-48
    80004610:	02113423          	sd	ra,40(sp)
    80004614:	02813023          	sd	s0,32(sp)
    80004618:	00913c23          	sd	s1,24(sp)
    8000461c:	01213823          	sd	s2,16(sp)
    80004620:	01313423          	sd	s3,8(sp)
    80004624:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80004628:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    8000462c:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80004630:	01800513          	li	a0,24
    80004634:	00000097          	auipc	ra,0x0
    80004638:	fb0080e7          	jalr	-80(ra) # 800045e4 <_ZN10KSemaphorenwEm>
    8000463c:	00050493          	mv	s1,a0
    80004640:	0009859b          	sext.w	a1,s3
    80004644:	00000097          	auipc	ra,0x0
    80004648:	d50080e7          	jalr	-688(ra) # 80004394 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    8000464c:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80004650:	02048263          	beqz	s1,80004674 <_ZN10KSemaphore14semOpenHandlerEv+0x68>
            __asm__ volatile("li a0, 0");
    80004654:	00000513          	li	a0,0
}
    80004658:	02813083          	ld	ra,40(sp)
    8000465c:	02013403          	ld	s0,32(sp)
    80004660:	01813483          	ld	s1,24(sp)
    80004664:	01013903          	ld	s2,16(sp)
    80004668:	00813983          	ld	s3,8(sp)
    8000466c:	03010113          	addi	sp,sp,48
    80004670:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80004674:	fff00513          	li	a0,-1
    80004678:	fe1ff06f          	j	80004658 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

000000008000467c <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    8000467c:	ff010113          	addi	sp,sp,-16
    80004680:	00113423          	sd	ra,8(sp)
    80004684:	00813023          	sd	s0,0(sp)
    80004688:	01010413          	addi	s0,sp,16
    kfree(p);
    8000468c:	00000097          	auipc	ra,0x0
    80004690:	cb0080e7          	jalr	-848(ra) # 8000433c <_Z5kfreePv>
}
    80004694:	00813083          	ld	ra,8(sp)
    80004698:	00013403          	ld	s0,0(sp)
    8000469c:	01010113          	addi	sp,sp,16
    800046a0:	00008067          	ret

00000000800046a4 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    800046a4:	fe010113          	addi	sp,sp,-32
    800046a8:	00113c23          	sd	ra,24(sp)
    800046ac:	00813823          	sd	s0,16(sp)
    800046b0:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800046b4:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->wait();
    800046b8:	00000097          	auipc	ra,0x0
    800046bc:	d84080e7          	jalr	-636(ra) # 8000443c <_ZN10KSemaphore4waitEv>
    800046c0:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800046c4:	fe843783          	ld	a5,-24(s0)
    800046c8:	00078513          	mv	a0,a5
}
    800046cc:	01813083          	ld	ra,24(sp)
    800046d0:	01013403          	ld	s0,16(sp)
    800046d4:	02010113          	addi	sp,sp,32
    800046d8:	00008067          	ret

00000000800046dc <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler()
{
    800046dc:	fe010113          	addi	sp,sp,-32
    800046e0:	00113c23          	sd	ra,24(sp)
    800046e4:	00813823          	sd	s0,16(sp)
    800046e8:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800046ec:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->signal();
    800046f0:	00000097          	auipc	ra,0x0
    800046f4:	eac080e7          	jalr	-340(ra) # 8000459c <_ZN10KSemaphore6signalEv>
    800046f8:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800046fc:	fe843783          	ld	a5,-24(s0)
    80004700:	00078513          	mv	a0,a5
}
    80004704:	01813083          	ld	ra,24(sp)
    80004708:	01013403          	ld	s0,16(sp)
    8000470c:	02010113          	addi	sp,sp,32
    80004710:	00008067          	ret

0000000080004714 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80004714:	fe010113          	addi	sp,sp,-32
    80004718:	00113c23          	sd	ra,24(sp)
    8000471c:	00813823          	sd	s0,16(sp)
    80004720:	00913423          	sd	s1,8(sp)
    80004724:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004728:	00058493          	mv	s1,a1
    delete kSem;
    8000472c:	00048e63          	beqz	s1,80004748 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80004730:	00048513          	mv	a0,s1
    80004734:	00000097          	auipc	ra,0x0
    80004738:	da8080e7          	jalr	-600(ra) # 800044dc <_ZN10KSemaphoreD1Ev>
    8000473c:	00048513          	mv	a0,s1
    80004740:	00000097          	auipc	ra,0x0
    80004744:	f3c080e7          	jalr	-196(ra) # 8000467c <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80004748:	00000513          	li	a0,0
}
    8000474c:	01813083          	ld	ra,24(sp)
    80004750:	01013403          	ld	s0,16(sp)
    80004754:	00813483          	ld	s1,8(sp)
    80004758:	02010113          	addi	sp,sp,32
    8000475c:	00008067          	ret

0000000080004760 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    80004760:	fe010113          	addi	sp,sp,-32
    80004764:	00113c23          	sd	ra,24(sp)
    80004768:	00813823          	sd	s0,16(sp)
    8000476c:	00913423          	sd	s1,8(sp)
    80004770:	01213023          	sd	s2,0(sp)
    80004774:	02010413          	addi	s0,sp,32
    80004778:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000477c:	00000913          	li	s2,0
    80004780:	00c0006f          	j	8000478c <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004784:	ffffd097          	auipc	ra,0xffffd
    80004788:	ba0080e7          	jalr	-1120(ra) # 80001324 <thread_dispatch>
    while ((key = getc()) != 'q') {
    8000478c:	ffffd097          	auipc	ra,0xffffd
    80004790:	d74080e7          	jalr	-652(ra) # 80001500 <getc>
    80004794:	0005059b          	sext.w	a1,a0
    80004798:	07100793          	li	a5,113
    8000479c:	02f58a63          	beq	a1,a5,800047d0 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800047a0:	0084b503          	ld	a0,8(s1)
    800047a4:	00002097          	auipc	ra,0x2
    800047a8:	c04080e7          	jalr	-1020(ra) # 800063a8 <_ZN6Buffer3putEi>
        i++;
    800047ac:	0019071b          	addiw	a4,s2,1
    800047b0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800047b4:	0004a683          	lw	a3,0(s1)
    800047b8:	0026979b          	slliw	a5,a3,0x2
    800047bc:	00d787bb          	addw	a5,a5,a3
    800047c0:	0017979b          	slliw	a5,a5,0x1
    800047c4:	02f767bb          	remw	a5,a4,a5
    800047c8:	fc0792e3          	bnez	a5,8000478c <_Z16producerKeyboardPv+0x2c>
    800047cc:	fb9ff06f          	j	80004784 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800047d0:	00100793          	li	a5,1
    800047d4:	00007717          	auipc	a4,0x7
    800047d8:	3ef72a23          	sw	a5,1012(a4) # 8000bbc8 <threadEnd>

    delete data->buffer;
    800047dc:	0084b903          	ld	s2,8(s1)
    800047e0:	00090e63          	beqz	s2,800047fc <_Z16producerKeyboardPv+0x9c>
    800047e4:	00090513          	mv	a0,s2
    800047e8:	00002097          	auipc	ra,0x2
    800047ec:	b04080e7          	jalr	-1276(ra) # 800062ec <_ZN6BufferD1Ev>
    800047f0:	00090513          	mv	a0,s2
    800047f4:	fffff097          	auipc	ra,0xfffff
    800047f8:	ebc080e7          	jalr	-324(ra) # 800036b0 <_ZdlPv>

    sem_signal(data->wait);
    800047fc:	0104b503          	ld	a0,16(s1)
    80004800:	ffffd097          	auipc	ra,0xffffd
    80004804:	bfc080e7          	jalr	-1028(ra) # 800013fc <sem_signal>
}
    80004808:	01813083          	ld	ra,24(sp)
    8000480c:	01013403          	ld	s0,16(sp)
    80004810:	00813483          	ld	s1,8(sp)
    80004814:	00013903          	ld	s2,0(sp)
    80004818:	02010113          	addi	sp,sp,32
    8000481c:	00008067          	ret

0000000080004820 <_Z8producerPv>:

void producer(void *arg) {
    80004820:	fe010113          	addi	sp,sp,-32
    80004824:	00113c23          	sd	ra,24(sp)
    80004828:	00813823          	sd	s0,16(sp)
    8000482c:	00913423          	sd	s1,8(sp)
    80004830:	01213023          	sd	s2,0(sp)
    80004834:	02010413          	addi	s0,sp,32
    80004838:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000483c:	00000913          	li	s2,0
    80004840:	00c0006f          	j	8000484c <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004844:	ffffd097          	auipc	ra,0xffffd
    80004848:	ae0080e7          	jalr	-1312(ra) # 80001324 <thread_dispatch>
    while (!threadEnd) {
    8000484c:	00007797          	auipc	a5,0x7
    80004850:	37c7a783          	lw	a5,892(a5) # 8000bbc8 <threadEnd>
    80004854:	02079e63          	bnez	a5,80004890 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80004858:	0004a583          	lw	a1,0(s1)
    8000485c:	0305859b          	addiw	a1,a1,48
    80004860:	0084b503          	ld	a0,8(s1)
    80004864:	00002097          	auipc	ra,0x2
    80004868:	b44080e7          	jalr	-1212(ra) # 800063a8 <_ZN6Buffer3putEi>
        i++;
    8000486c:	0019071b          	addiw	a4,s2,1
    80004870:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004874:	0004a683          	lw	a3,0(s1)
    80004878:	0026979b          	slliw	a5,a3,0x2
    8000487c:	00d787bb          	addw	a5,a5,a3
    80004880:	0017979b          	slliw	a5,a5,0x1
    80004884:	02f767bb          	remw	a5,a4,a5
    80004888:	fc0792e3          	bnez	a5,8000484c <_Z8producerPv+0x2c>
    8000488c:	fb9ff06f          	j	80004844 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80004890:	0104b503          	ld	a0,16(s1)
    80004894:	ffffd097          	auipc	ra,0xffffd
    80004898:	b68080e7          	jalr	-1176(ra) # 800013fc <sem_signal>
}
    8000489c:	01813083          	ld	ra,24(sp)
    800048a0:	01013403          	ld	s0,16(sp)
    800048a4:	00813483          	ld	s1,8(sp)
    800048a8:	00013903          	ld	s2,0(sp)
    800048ac:	02010113          	addi	sp,sp,32
    800048b0:	00008067          	ret

00000000800048b4 <_Z8consumerPv>:

void consumer(void *arg) {
    800048b4:	fd010113          	addi	sp,sp,-48
    800048b8:	02113423          	sd	ra,40(sp)
    800048bc:	02813023          	sd	s0,32(sp)
    800048c0:	00913c23          	sd	s1,24(sp)
    800048c4:	01213823          	sd	s2,16(sp)
    800048c8:	01313423          	sd	s3,8(sp)
    800048cc:	03010413          	addi	s0,sp,48
    800048d0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;


    int i = 0;
    800048d4:	00000993          	li	s3,0
    800048d8:	01c0006f          	j	800048f4 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800048dc:	ffffd097          	auipc	ra,0xffffd
    800048e0:	a48080e7          	jalr	-1464(ra) # 80001324 <thread_dispatch>
    800048e4:	0500006f          	j	80004934 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800048e8:	00a00513          	li	a0,10
    800048ec:	ffffd097          	auipc	ra,0xffffd
    800048f0:	c3c080e7          	jalr	-964(ra) # 80001528 <putc>
    while (!threadEnd) {
    800048f4:	00007797          	auipc	a5,0x7
    800048f8:	2d47a783          	lw	a5,724(a5) # 8000bbc8 <threadEnd>
    800048fc:	04079463          	bnez	a5,80004944 <_Z8consumerPv+0x90>
        int key = data->buffer->get();
    80004900:	00893503          	ld	a0,8(s2)
    80004904:	00002097          	auipc	ra,0x2
    80004908:	b34080e7          	jalr	-1228(ra) # 80006438 <_ZN6Buffer3getEv>
        i++;
    8000490c:	0019849b          	addiw	s1,s3,1
    80004910:	0004899b          	sext.w	s3,s1
        putc(key);
    80004914:	0ff57513          	andi	a0,a0,255
    80004918:	ffffd097          	auipc	ra,0xffffd
    8000491c:	c10080e7          	jalr	-1008(ra) # 80001528 <putc>
        if (i % (5 * data->id) == 0) {
    80004920:	00092703          	lw	a4,0(s2)
    80004924:	0027179b          	slliw	a5,a4,0x2
    80004928:	00e787bb          	addw	a5,a5,a4
    8000492c:	02f4e7bb          	remw	a5,s1,a5
    80004930:	fa0786e3          	beqz	a5,800048dc <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    80004934:	05000793          	li	a5,80
    80004938:	02f4e4bb          	remw	s1,s1,a5
    8000493c:	fa049ce3          	bnez	s1,800048f4 <_Z8consumerPv+0x40>
    80004940:	fa9ff06f          	j	800048e8 <_Z8consumerPv+0x34>
        }
    }

    sem_signal(data->wait);
    80004944:	01093503          	ld	a0,16(s2)
    80004948:	ffffd097          	auipc	ra,0xffffd
    8000494c:	ab4080e7          	jalr	-1356(ra) # 800013fc <sem_signal>
}
    80004950:	02813083          	ld	ra,40(sp)
    80004954:	02013403          	ld	s0,32(sp)
    80004958:	01813483          	ld	s1,24(sp)
    8000495c:	01013903          	ld	s2,16(sp)
    80004960:	00813983          	ld	s3,8(sp)
    80004964:	03010113          	addi	sp,sp,48
    80004968:	00008067          	ret

000000008000496c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    8000496c:	f9010113          	addi	sp,sp,-112
    80004970:	06113423          	sd	ra,104(sp)
    80004974:	06813023          	sd	s0,96(sp)
    80004978:	04913c23          	sd	s1,88(sp)
    8000497c:	05213823          	sd	s2,80(sp)
    80004980:	05313423          	sd	s3,72(sp)
    80004984:	05413023          	sd	s4,64(sp)
    80004988:	03513c23          	sd	s5,56(sp)
    8000498c:	07010413          	addi	s0,sp,112
    char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004990:	00005517          	auipc	a0,0x5
    80004994:	a2850513          	addi	a0,a0,-1496 # 800093b8 <_ZZN5Riscv12printIntegerEmE6digits+0x18>
    80004998:	00001097          	auipc	ra,0x1
    8000499c:	1a4080e7          	jalr	420(ra) # 80005b3c <_Z11printStringPKc>
    getString(input, 30);
    800049a0:	01e00593          	li	a1,30
    800049a4:	fa040493          	addi	s1,s0,-96
    800049a8:	00048513          	mv	a0,s1
    800049ac:	00001097          	auipc	ra,0x1
    800049b0:	20c080e7          	jalr	524(ra) # 80005bb8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800049b4:	00048513          	mv	a0,s1
    800049b8:	00001097          	auipc	ra,0x1
    800049bc:	2cc080e7          	jalr	716(ra) # 80005c84 <_Z11stringToIntPKc>
    800049c0:	00050913          	mv	s2,a0

    printString("Unesite velicinu bafera?\n");
    800049c4:	00005517          	auipc	a0,0x5
    800049c8:	a1450513          	addi	a0,a0,-1516 # 800093d8 <_ZZN5Riscv12printIntegerEmE6digits+0x38>
    800049cc:	00001097          	auipc	ra,0x1
    800049d0:	170080e7          	jalr	368(ra) # 80005b3c <_Z11printStringPKc>
    getString(input, 30);
    800049d4:	01e00593          	li	a1,30
    800049d8:	00048513          	mv	a0,s1
    800049dc:	00001097          	auipc	ra,0x1
    800049e0:	1dc080e7          	jalr	476(ra) # 80005bb8 <_Z9getStringPci>
    n = stringToInt(input);
    800049e4:	00048513          	mv	a0,s1
    800049e8:	00001097          	auipc	ra,0x1
    800049ec:	29c080e7          	jalr	668(ra) # 80005c84 <_Z11stringToIntPKc>
    800049f0:	00050493          	mv	s1,a0

    printString("Broj proizvodjaca "); printInt(threadNum);
    800049f4:	00005517          	auipc	a0,0x5
    800049f8:	a0450513          	addi	a0,a0,-1532 # 800093f8 <_ZZN5Riscv12printIntegerEmE6digits+0x58>
    800049fc:	00001097          	auipc	ra,0x1
    80004a00:	140080e7          	jalr	320(ra) # 80005b3c <_Z11printStringPKc>
    80004a04:	00000613          	li	a2,0
    80004a08:	00a00593          	li	a1,10
    80004a0c:	00090513          	mv	a0,s2
    80004a10:	00001097          	auipc	ra,0x1
    80004a14:	2c4080e7          	jalr	708(ra) # 80005cd4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004a18:	00005517          	auipc	a0,0x5
    80004a1c:	9f850513          	addi	a0,a0,-1544 # 80009410 <_ZZN5Riscv12printIntegerEmE6digits+0x70>
    80004a20:	00001097          	auipc	ra,0x1
    80004a24:	11c080e7          	jalr	284(ra) # 80005b3c <_Z11printStringPKc>
    80004a28:	00000613          	li	a2,0
    80004a2c:	00a00593          	li	a1,10
    80004a30:	00048513          	mv	a0,s1
    80004a34:	00001097          	auipc	ra,0x1
    80004a38:	2a0080e7          	jalr	672(ra) # 80005cd4 <_Z8printIntiii>
    printString(".\n");
    80004a3c:	00005517          	auipc	a0,0x5
    80004a40:	81450513          	addi	a0,a0,-2028 # 80009250 <CONSOLE_STATUS+0x240>
    80004a44:	00001097          	auipc	ra,0x1
    80004a48:	0f8080e7          	jalr	248(ra) # 80005b3c <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80004a4c:	03800513          	li	a0,56
    80004a50:	fffff097          	auipc	ra,0xfffff
    80004a54:	c38080e7          	jalr	-968(ra) # 80003688 <_Znwm>
    80004a58:	00050a13          	mv	s4,a0
    80004a5c:	00048593          	mv	a1,s1
    80004a60:	00002097          	auipc	ra,0x2
    80004a64:	804080e7          	jalr	-2044(ra) # 80006264 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004a68:	00000593          	li	a1,0
    80004a6c:	00007517          	auipc	a0,0x7
    80004a70:	16450513          	addi	a0,a0,356 # 8000bbd0 <waitForAll>
    80004a74:	ffffd097          	auipc	ra,0xffffd
    80004a78:	8f8080e7          	jalr	-1800(ra) # 8000136c <sem_open>

    thread_t threads[threadNum];
    80004a7c:	00391793          	slli	a5,s2,0x3
    80004a80:	00f78793          	addi	a5,a5,15
    80004a84:	ff07f793          	andi	a5,a5,-16
    80004a88:	40f10133          	sub	sp,sp,a5
    80004a8c:	00010a93          	mv	s5,sp
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];
    80004a90:	0019071b          	addiw	a4,s2,1
    80004a94:	00171793          	slli	a5,a4,0x1
    80004a98:	00e787b3          	add	a5,a5,a4
    80004a9c:	00379793          	slli	a5,a5,0x3
    80004aa0:	00f78793          	addi	a5,a5,15
    80004aa4:	ff07f793          	andi	a5,a5,-16
    80004aa8:	40f10133          	sub	sp,sp,a5
    80004aac:	00010993          	mv	s3,sp

    data[threadNum].id = threadNum;
    80004ab0:	00191613          	slli	a2,s2,0x1
    80004ab4:	012607b3          	add	a5,a2,s2
    80004ab8:	00379793          	slli	a5,a5,0x3
    80004abc:	00f987b3          	add	a5,s3,a5
    80004ac0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004ac4:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80004ac8:	00007717          	auipc	a4,0x7
    80004acc:	10873703          	ld	a4,264(a4) # 8000bbd0 <waitForAll>
    80004ad0:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004ad4:	00078613          	mv	a2,a5
    80004ad8:	00000597          	auipc	a1,0x0
    80004adc:	ddc58593          	addi	a1,a1,-548 # 800048b4 <_Z8consumerPv>
    80004ae0:	f9840513          	addi	a0,s0,-104
    80004ae4:	ffffc097          	auipc	ra,0xffffc
    80004ae8:	7c0080e7          	jalr	1984(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80004aec:	00000493          	li	s1,0
    80004af0:	0280006f          	j	80004b18 <_Z22producerConsumer_C_APIv+0x1ac>
        data[i].id = i;
        data[i].buffer = buffer;
        data[i].wait = waitForAll;

        thread_create(threads + i,
    80004af4:	00000597          	auipc	a1,0x0
    80004af8:	c6c58593          	addi	a1,a1,-916 # 80004760 <_Z16producerKeyboardPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    80004afc:	00179613          	slli	a2,a5,0x1
    80004b00:	00f60633          	add	a2,a2,a5
    80004b04:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004b08:	00c98633          	add	a2,s3,a2
    80004b0c:	ffffc097          	auipc	ra,0xffffc
    80004b10:	798080e7          	jalr	1944(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004b14:	0014849b          	addiw	s1,s1,1
    80004b18:	0524d263          	bge	s1,s2,80004b5c <_Z22producerConsumer_C_APIv+0x1f0>
        data[i].id = i;
    80004b1c:	00149793          	slli	a5,s1,0x1
    80004b20:	009787b3          	add	a5,a5,s1
    80004b24:	00379793          	slli	a5,a5,0x3
    80004b28:	00f987b3          	add	a5,s3,a5
    80004b2c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004b30:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80004b34:	00007717          	auipc	a4,0x7
    80004b38:	09c73703          	ld	a4,156(a4) # 8000bbd0 <waitForAll>
    80004b3c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80004b40:	00048793          	mv	a5,s1
    80004b44:	00349513          	slli	a0,s1,0x3
    80004b48:	00aa8533          	add	a0,s5,a0
    80004b4c:	fa9054e3          	blez	s1,80004af4 <_Z22producerConsumer_C_APIv+0x188>
    80004b50:	00000597          	auipc	a1,0x0
    80004b54:	cd058593          	addi	a1,a1,-816 # 80004820 <_Z8producerPv>
    80004b58:	fa5ff06f          	j	80004afc <_Z22producerConsumer_C_APIv+0x190>
    }

    thread_dispatch();
    80004b5c:	ffffc097          	auipc	ra,0xffffc
    80004b60:	7c8080e7          	jalr	1992(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80004b64:	00000493          	li	s1,0
    80004b68:	00994e63          	blt	s2,s1,80004b84 <_Z22producerConsumer_C_APIv+0x218>
        sem_wait(waitForAll);
    80004b6c:	00007517          	auipc	a0,0x7
    80004b70:	06453503          	ld	a0,100(a0) # 8000bbd0 <waitForAll>
    80004b74:	ffffd097          	auipc	ra,0xffffd
    80004b78:	85c080e7          	jalr	-1956(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80004b7c:	0014849b          	addiw	s1,s1,1
    80004b80:	fe9ff06f          	j	80004b68 <_Z22producerConsumer_C_APIv+0x1fc>
    }

    sem_close(waitForAll);
    80004b84:	00007517          	auipc	a0,0x7
    80004b88:	04c53503          	ld	a0,76(a0) # 8000bbd0 <waitForAll>
    80004b8c:	ffffd097          	auipc	ra,0xffffd
    80004b90:	818080e7          	jalr	-2024(ra) # 800013a4 <sem_close>
    80004b94:	f9040113          	addi	sp,s0,-112
    80004b98:	06813083          	ld	ra,104(sp)
    80004b9c:	06013403          	ld	s0,96(sp)
    80004ba0:	05813483          	ld	s1,88(sp)
    80004ba4:	05013903          	ld	s2,80(sp)
    80004ba8:	04813983          	ld	s3,72(sp)
    80004bac:	04013a03          	ld	s4,64(sp)
    80004bb0:	03813a83          	ld	s5,56(sp)
    80004bb4:	07010113          	addi	sp,sp,112
    80004bb8:	00008067          	ret
    80004bbc:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004bc0:	000a0513          	mv	a0,s4
    80004bc4:	fffff097          	auipc	ra,0xfffff
    80004bc8:	aec080e7          	jalr	-1300(ra) # 800036b0 <_ZdlPv>
    80004bcc:	00048513          	mv	a0,s1
    80004bd0:	00008097          	auipc	ra,0x8
    80004bd4:	0e8080e7          	jalr	232(ra) # 8000ccb8 <_Unwind_Resume>

0000000080004bd8 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004bd8:	fe010113          	addi	sp,sp,-32
    80004bdc:	00113c23          	sd	ra,24(sp)
    80004be0:	00813823          	sd	s0,16(sp)
    80004be4:	00913423          	sd	s1,8(sp)
    80004be8:	01213023          	sd	s2,0(sp)
    80004bec:	02010413          	addi	s0,sp,32
    80004bf0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004bf4:	00100793          	li	a5,1
    80004bf8:	02a7f863          	bgeu	a5,a0,80004c28 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004bfc:	00a00793          	li	a5,10
    80004c00:	02f577b3          	remu	a5,a0,a5
    80004c04:	02078e63          	beqz	a5,80004c40 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004c08:	fff48513          	addi	a0,s1,-1
    80004c0c:	00000097          	auipc	ra,0x0
    80004c10:	fcc080e7          	jalr	-52(ra) # 80004bd8 <_ZL9fibonaccim>
    80004c14:	00050913          	mv	s2,a0
    80004c18:	ffe48513          	addi	a0,s1,-2
    80004c1c:	00000097          	auipc	ra,0x0
    80004c20:	fbc080e7          	jalr	-68(ra) # 80004bd8 <_ZL9fibonaccim>
    80004c24:	00a90533          	add	a0,s2,a0
}
    80004c28:	01813083          	ld	ra,24(sp)
    80004c2c:	01013403          	ld	s0,16(sp)
    80004c30:	00813483          	ld	s1,8(sp)
    80004c34:	00013903          	ld	s2,0(sp)
    80004c38:	02010113          	addi	sp,sp,32
    80004c3c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004c40:	ffffc097          	auipc	ra,0xffffc
    80004c44:	6e4080e7          	jalr	1764(ra) # 80001324 <thread_dispatch>
    80004c48:	fc1ff06f          	j	80004c08 <_ZL9fibonaccim+0x30>

0000000080004c4c <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004c4c:	fe010113          	addi	sp,sp,-32
    80004c50:	00113c23          	sd	ra,24(sp)
    80004c54:	00813823          	sd	s0,16(sp)
    80004c58:	00913423          	sd	s1,8(sp)
    80004c5c:	01213023          	sd	s2,0(sp)
    80004c60:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004c64:	00000913          	li	s2,0
    80004c68:	0380006f          	j	80004ca0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004c6c:	ffffc097          	auipc	ra,0xffffc
    80004c70:	6b8080e7          	jalr	1720(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004c74:	00148493          	addi	s1,s1,1
    80004c78:	000027b7          	lui	a5,0x2
    80004c7c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004c80:	0097ee63          	bltu	a5,s1,80004c9c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004c84:	00000713          	li	a4,0
    80004c88:	000077b7          	lui	a5,0x7
    80004c8c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004c90:	fce7eee3          	bltu	a5,a4,80004c6c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004c94:	00170713          	addi	a4,a4,1
    80004c98:	ff1ff06f          	j	80004c88 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004c9c:	00190913          	addi	s2,s2,1
    80004ca0:	00900793          	li	a5,9
    80004ca4:	0527e063          	bltu	a5,s2,80004ce4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004ca8:	00004517          	auipc	a0,0x4
    80004cac:	78050513          	addi	a0,a0,1920 # 80009428 <_ZZN5Riscv12printIntegerEmE6digits+0x88>
    80004cb0:	00001097          	auipc	ra,0x1
    80004cb4:	e8c080e7          	jalr	-372(ra) # 80005b3c <_Z11printStringPKc>
    80004cb8:	00000613          	li	a2,0
    80004cbc:	00a00593          	li	a1,10
    80004cc0:	0009051b          	sext.w	a0,s2
    80004cc4:	00001097          	auipc	ra,0x1
    80004cc8:	010080e7          	jalr	16(ra) # 80005cd4 <_Z8printIntiii>
    80004ccc:	00004517          	auipc	a0,0x4
    80004cd0:	43450513          	addi	a0,a0,1076 # 80009100 <CONSOLE_STATUS+0xf0>
    80004cd4:	00001097          	auipc	ra,0x1
    80004cd8:	e68080e7          	jalr	-408(ra) # 80005b3c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004cdc:	00000493          	li	s1,0
    80004ce0:	f99ff06f          	j	80004c78 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004ce4:	00004517          	auipc	a0,0x4
    80004ce8:	74c50513          	addi	a0,a0,1868 # 80009430 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80004cec:	00001097          	auipc	ra,0x1
    80004cf0:	e50080e7          	jalr	-432(ra) # 80005b3c <_Z11printStringPKc>
    finishedA = true;
    80004cf4:	00100793          	li	a5,1
    80004cf8:	00007717          	auipc	a4,0x7
    80004cfc:	eef70023          	sb	a5,-288(a4) # 8000bbd8 <_ZL9finishedA>
}
    80004d00:	01813083          	ld	ra,24(sp)
    80004d04:	01013403          	ld	s0,16(sp)
    80004d08:	00813483          	ld	s1,8(sp)
    80004d0c:	00013903          	ld	s2,0(sp)
    80004d10:	02010113          	addi	sp,sp,32
    80004d14:	00008067          	ret

0000000080004d18 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004d18:	fe010113          	addi	sp,sp,-32
    80004d1c:	00113c23          	sd	ra,24(sp)
    80004d20:	00813823          	sd	s0,16(sp)
    80004d24:	00913423          	sd	s1,8(sp)
    80004d28:	01213023          	sd	s2,0(sp)
    80004d2c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004d30:	00000913          	li	s2,0
    80004d34:	0380006f          	j	80004d6c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004d38:	ffffc097          	auipc	ra,0xffffc
    80004d3c:	5ec080e7          	jalr	1516(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004d40:	00148493          	addi	s1,s1,1
    80004d44:	000027b7          	lui	a5,0x2
    80004d48:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d4c:	0097ee63          	bltu	a5,s1,80004d68 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d50:	00000713          	li	a4,0
    80004d54:	000077b7          	lui	a5,0x7
    80004d58:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d5c:	fce7eee3          	bltu	a5,a4,80004d38 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004d60:	00170713          	addi	a4,a4,1
    80004d64:	ff1ff06f          	j	80004d54 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004d68:	00190913          	addi	s2,s2,1
    80004d6c:	00f00793          	li	a5,15
    80004d70:	0527e063          	bltu	a5,s2,80004db0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004d74:	00004517          	auipc	a0,0x4
    80004d78:	6cc50513          	addi	a0,a0,1740 # 80009440 <_ZZN5Riscv12printIntegerEmE6digits+0xa0>
    80004d7c:	00001097          	auipc	ra,0x1
    80004d80:	dc0080e7          	jalr	-576(ra) # 80005b3c <_Z11printStringPKc>
    80004d84:	00000613          	li	a2,0
    80004d88:	00a00593          	li	a1,10
    80004d8c:	0009051b          	sext.w	a0,s2
    80004d90:	00001097          	auipc	ra,0x1
    80004d94:	f44080e7          	jalr	-188(ra) # 80005cd4 <_Z8printIntiii>
    80004d98:	00004517          	auipc	a0,0x4
    80004d9c:	36850513          	addi	a0,a0,872 # 80009100 <CONSOLE_STATUS+0xf0>
    80004da0:	00001097          	auipc	ra,0x1
    80004da4:	d9c080e7          	jalr	-612(ra) # 80005b3c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004da8:	00000493          	li	s1,0
    80004dac:	f99ff06f          	j	80004d44 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004db0:	00004517          	auipc	a0,0x4
    80004db4:	69850513          	addi	a0,a0,1688 # 80009448 <_ZZN5Riscv12printIntegerEmE6digits+0xa8>
    80004db8:	00001097          	auipc	ra,0x1
    80004dbc:	d84080e7          	jalr	-636(ra) # 80005b3c <_Z11printStringPKc>
    finishedB = true;
    80004dc0:	00100793          	li	a5,1
    80004dc4:	00007717          	auipc	a4,0x7
    80004dc8:	e0f70aa3          	sb	a5,-491(a4) # 8000bbd9 <_ZL9finishedB>
    thread_dispatch();
    80004dcc:	ffffc097          	auipc	ra,0xffffc
    80004dd0:	558080e7          	jalr	1368(ra) # 80001324 <thread_dispatch>
}
    80004dd4:	01813083          	ld	ra,24(sp)
    80004dd8:	01013403          	ld	s0,16(sp)
    80004ddc:	00813483          	ld	s1,8(sp)
    80004de0:	00013903          	ld	s2,0(sp)
    80004de4:	02010113          	addi	sp,sp,32
    80004de8:	00008067          	ret

0000000080004dec <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004dec:	fe010113          	addi	sp,sp,-32
    80004df0:	00113c23          	sd	ra,24(sp)
    80004df4:	00813823          	sd	s0,16(sp)
    80004df8:	00913423          	sd	s1,8(sp)
    80004dfc:	01213023          	sd	s2,0(sp)
    80004e00:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004e04:	00000493          	li	s1,0
    80004e08:	0400006f          	j	80004e48 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004e0c:	00004517          	auipc	a0,0x4
    80004e10:	64c50513          	addi	a0,a0,1612 # 80009458 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80004e14:	00001097          	auipc	ra,0x1
    80004e18:	d28080e7          	jalr	-728(ra) # 80005b3c <_Z11printStringPKc>
    80004e1c:	00000613          	li	a2,0
    80004e20:	00a00593          	li	a1,10
    80004e24:	00048513          	mv	a0,s1
    80004e28:	00001097          	auipc	ra,0x1
    80004e2c:	eac080e7          	jalr	-340(ra) # 80005cd4 <_Z8printIntiii>
    80004e30:	00004517          	auipc	a0,0x4
    80004e34:	2d050513          	addi	a0,a0,720 # 80009100 <CONSOLE_STATUS+0xf0>
    80004e38:	00001097          	auipc	ra,0x1
    80004e3c:	d04080e7          	jalr	-764(ra) # 80005b3c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004e40:	0014849b          	addiw	s1,s1,1
    80004e44:	0ff4f493          	andi	s1,s1,255
    80004e48:	00200793          	li	a5,2
    80004e4c:	fc97f0e3          	bgeu	a5,s1,80004e0c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004e50:	00004517          	auipc	a0,0x4
    80004e54:	61050513          	addi	a0,a0,1552 # 80009460 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    80004e58:	00001097          	auipc	ra,0x1
    80004e5c:	ce4080e7          	jalr	-796(ra) # 80005b3c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004e60:	00700313          	li	t1,7
    thread_dispatch();
    80004e64:	ffffc097          	auipc	ra,0xffffc
    80004e68:	4c0080e7          	jalr	1216(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004e6c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004e70:	00004517          	auipc	a0,0x4
    80004e74:	60050513          	addi	a0,a0,1536 # 80009470 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    80004e78:	00001097          	auipc	ra,0x1
    80004e7c:	cc4080e7          	jalr	-828(ra) # 80005b3c <_Z11printStringPKc>
    80004e80:	00000613          	li	a2,0
    80004e84:	00a00593          	li	a1,10
    80004e88:	0009051b          	sext.w	a0,s2
    80004e8c:	00001097          	auipc	ra,0x1
    80004e90:	e48080e7          	jalr	-440(ra) # 80005cd4 <_Z8printIntiii>
    80004e94:	00004517          	auipc	a0,0x4
    80004e98:	26c50513          	addi	a0,a0,620 # 80009100 <CONSOLE_STATUS+0xf0>
    80004e9c:	00001097          	auipc	ra,0x1
    80004ea0:	ca0080e7          	jalr	-864(ra) # 80005b3c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004ea4:	00c00513          	li	a0,12
    80004ea8:	00000097          	auipc	ra,0x0
    80004eac:	d30080e7          	jalr	-720(ra) # 80004bd8 <_ZL9fibonaccim>
    80004eb0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004eb4:	00004517          	auipc	a0,0x4
    80004eb8:	5c450513          	addi	a0,a0,1476 # 80009478 <_ZZN5Riscv12printIntegerEmE6digits+0xd8>
    80004ebc:	00001097          	auipc	ra,0x1
    80004ec0:	c80080e7          	jalr	-896(ra) # 80005b3c <_Z11printStringPKc>
    80004ec4:	00000613          	li	a2,0
    80004ec8:	00a00593          	li	a1,10
    80004ecc:	0009051b          	sext.w	a0,s2
    80004ed0:	00001097          	auipc	ra,0x1
    80004ed4:	e04080e7          	jalr	-508(ra) # 80005cd4 <_Z8printIntiii>
    80004ed8:	00004517          	auipc	a0,0x4
    80004edc:	22850513          	addi	a0,a0,552 # 80009100 <CONSOLE_STATUS+0xf0>
    80004ee0:	00001097          	auipc	ra,0x1
    80004ee4:	c5c080e7          	jalr	-932(ra) # 80005b3c <_Z11printStringPKc>
    80004ee8:	0400006f          	j	80004f28 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004eec:	00004517          	auipc	a0,0x4
    80004ef0:	56c50513          	addi	a0,a0,1388 # 80009458 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80004ef4:	00001097          	auipc	ra,0x1
    80004ef8:	c48080e7          	jalr	-952(ra) # 80005b3c <_Z11printStringPKc>
    80004efc:	00000613          	li	a2,0
    80004f00:	00a00593          	li	a1,10
    80004f04:	00048513          	mv	a0,s1
    80004f08:	00001097          	auipc	ra,0x1
    80004f0c:	dcc080e7          	jalr	-564(ra) # 80005cd4 <_Z8printIntiii>
    80004f10:	00004517          	auipc	a0,0x4
    80004f14:	1f050513          	addi	a0,a0,496 # 80009100 <CONSOLE_STATUS+0xf0>
    80004f18:	00001097          	auipc	ra,0x1
    80004f1c:	c24080e7          	jalr	-988(ra) # 80005b3c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004f20:	0014849b          	addiw	s1,s1,1
    80004f24:	0ff4f493          	andi	s1,s1,255
    80004f28:	00500793          	li	a5,5
    80004f2c:	fc97f0e3          	bgeu	a5,s1,80004eec <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004f30:	00004517          	auipc	a0,0x4
    80004f34:	50050513          	addi	a0,a0,1280 # 80009430 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80004f38:	00001097          	auipc	ra,0x1
    80004f3c:	c04080e7          	jalr	-1020(ra) # 80005b3c <_Z11printStringPKc>
    finishedC = true;
    80004f40:	00100793          	li	a5,1
    80004f44:	00007717          	auipc	a4,0x7
    80004f48:	c8f70b23          	sb	a5,-874(a4) # 8000bbda <_ZL9finishedC>
    thread_dispatch();
    80004f4c:	ffffc097          	auipc	ra,0xffffc
    80004f50:	3d8080e7          	jalr	984(ra) # 80001324 <thread_dispatch>
}
    80004f54:	01813083          	ld	ra,24(sp)
    80004f58:	01013403          	ld	s0,16(sp)
    80004f5c:	00813483          	ld	s1,8(sp)
    80004f60:	00013903          	ld	s2,0(sp)
    80004f64:	02010113          	addi	sp,sp,32
    80004f68:	00008067          	ret

0000000080004f6c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004f6c:	fe010113          	addi	sp,sp,-32
    80004f70:	00113c23          	sd	ra,24(sp)
    80004f74:	00813823          	sd	s0,16(sp)
    80004f78:	00913423          	sd	s1,8(sp)
    80004f7c:	01213023          	sd	s2,0(sp)
    80004f80:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004f84:	00a00493          	li	s1,10
    80004f88:	0400006f          	j	80004fc8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004f8c:	00004517          	auipc	a0,0x4
    80004f90:	4fc50513          	addi	a0,a0,1276 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    80004f94:	00001097          	auipc	ra,0x1
    80004f98:	ba8080e7          	jalr	-1112(ra) # 80005b3c <_Z11printStringPKc>
    80004f9c:	00000613          	li	a2,0
    80004fa0:	00a00593          	li	a1,10
    80004fa4:	00048513          	mv	a0,s1
    80004fa8:	00001097          	auipc	ra,0x1
    80004fac:	d2c080e7          	jalr	-724(ra) # 80005cd4 <_Z8printIntiii>
    80004fb0:	00004517          	auipc	a0,0x4
    80004fb4:	15050513          	addi	a0,a0,336 # 80009100 <CONSOLE_STATUS+0xf0>
    80004fb8:	00001097          	auipc	ra,0x1
    80004fbc:	b84080e7          	jalr	-1148(ra) # 80005b3c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004fc0:	0014849b          	addiw	s1,s1,1
    80004fc4:	0ff4f493          	andi	s1,s1,255
    80004fc8:	00c00793          	li	a5,12
    80004fcc:	fc97f0e3          	bgeu	a5,s1,80004f8c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004fd0:	00004517          	auipc	a0,0x4
    80004fd4:	4c050513          	addi	a0,a0,1216 # 80009490 <_ZZN5Riscv12printIntegerEmE6digits+0xf0>
    80004fd8:	00001097          	auipc	ra,0x1
    80004fdc:	b64080e7          	jalr	-1180(ra) # 80005b3c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004fe0:	00500313          	li	t1,5
    thread_dispatch();
    80004fe4:	ffffc097          	auipc	ra,0xffffc
    80004fe8:	340080e7          	jalr	832(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004fec:	01000513          	li	a0,16
    80004ff0:	00000097          	auipc	ra,0x0
    80004ff4:	be8080e7          	jalr	-1048(ra) # 80004bd8 <_ZL9fibonaccim>
    80004ff8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004ffc:	00004517          	auipc	a0,0x4
    80005000:	4a450513          	addi	a0,a0,1188 # 800094a0 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80005004:	00001097          	auipc	ra,0x1
    80005008:	b38080e7          	jalr	-1224(ra) # 80005b3c <_Z11printStringPKc>
    8000500c:	00000613          	li	a2,0
    80005010:	00a00593          	li	a1,10
    80005014:	0009051b          	sext.w	a0,s2
    80005018:	00001097          	auipc	ra,0x1
    8000501c:	cbc080e7          	jalr	-836(ra) # 80005cd4 <_Z8printIntiii>
    80005020:	00004517          	auipc	a0,0x4
    80005024:	0e050513          	addi	a0,a0,224 # 80009100 <CONSOLE_STATUS+0xf0>
    80005028:	00001097          	auipc	ra,0x1
    8000502c:	b14080e7          	jalr	-1260(ra) # 80005b3c <_Z11printStringPKc>
    80005030:	0400006f          	j	80005070 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005034:	00004517          	auipc	a0,0x4
    80005038:	45450513          	addi	a0,a0,1108 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    8000503c:	00001097          	auipc	ra,0x1
    80005040:	b00080e7          	jalr	-1280(ra) # 80005b3c <_Z11printStringPKc>
    80005044:	00000613          	li	a2,0
    80005048:	00a00593          	li	a1,10
    8000504c:	00048513          	mv	a0,s1
    80005050:	00001097          	auipc	ra,0x1
    80005054:	c84080e7          	jalr	-892(ra) # 80005cd4 <_Z8printIntiii>
    80005058:	00004517          	auipc	a0,0x4
    8000505c:	0a850513          	addi	a0,a0,168 # 80009100 <CONSOLE_STATUS+0xf0>
    80005060:	00001097          	auipc	ra,0x1
    80005064:	adc080e7          	jalr	-1316(ra) # 80005b3c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005068:	0014849b          	addiw	s1,s1,1
    8000506c:	0ff4f493          	andi	s1,s1,255
    80005070:	00f00793          	li	a5,15
    80005074:	fc97f0e3          	bgeu	a5,s1,80005034 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80005078:	00004517          	auipc	a0,0x4
    8000507c:	43850513          	addi	a0,a0,1080 # 800094b0 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80005080:	00001097          	auipc	ra,0x1
    80005084:	abc080e7          	jalr	-1348(ra) # 80005b3c <_Z11printStringPKc>
    finishedD = true;
    80005088:	00100793          	li	a5,1
    8000508c:	00007717          	auipc	a4,0x7
    80005090:	b4f707a3          	sb	a5,-1201(a4) # 8000bbdb <_ZL9finishedD>
    thread_dispatch();
    80005094:	ffffc097          	auipc	ra,0xffffc
    80005098:	290080e7          	jalr	656(ra) # 80001324 <thread_dispatch>
}
    8000509c:	01813083          	ld	ra,24(sp)
    800050a0:	01013403          	ld	s0,16(sp)
    800050a4:	00813483          	ld	s1,8(sp)
    800050a8:	00013903          	ld	s2,0(sp)
    800050ac:	02010113          	addi	sp,sp,32
    800050b0:	00008067          	ret

00000000800050b4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800050b4:	fc010113          	addi	sp,sp,-64
    800050b8:	02113c23          	sd	ra,56(sp)
    800050bc:	02813823          	sd	s0,48(sp)
    800050c0:	02913423          	sd	s1,40(sp)
    800050c4:	03213023          	sd	s2,32(sp)
    800050c8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    Riscv::printString("Got here\n");
    800050cc:	00004517          	auipc	a0,0x4
    800050d0:	3f450513          	addi	a0,a0,1012 # 800094c0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800050d4:	fffff097          	auipc	ra,0xfffff
    800050d8:	9ec080e7          	jalr	-1556(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    threads[0] = new WorkerA();
    800050dc:	01000513          	li	a0,16
    800050e0:	ffffe097          	auipc	ra,0xffffe
    800050e4:	5a8080e7          	jalr	1448(ra) # 80003688 <_Znwm>
    800050e8:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    800050ec:	ffffe097          	auipc	ra,0xffffe
    800050f0:	76c080e7          	jalr	1900(ra) # 80003858 <_ZN6ThreadC1Ev>
    800050f4:	00007797          	auipc	a5,0x7
    800050f8:	8dc78793          	addi	a5,a5,-1828 # 8000b9d0 <_ZTV7WorkerA+0x10>
    800050fc:	00f4b023          	sd	a5,0(s1)
    80005100:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80005104:	00004517          	auipc	a0,0x4
    80005108:	3cc50513          	addi	a0,a0,972 # 800094d0 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    8000510c:	00001097          	auipc	ra,0x1
    80005110:	a30080e7          	jalr	-1488(ra) # 80005b3c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80005114:	01000513          	li	a0,16
    80005118:	ffffe097          	auipc	ra,0xffffe
    8000511c:	570080e7          	jalr	1392(ra) # 80003688 <_Znwm>
    80005120:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    80005124:	ffffe097          	auipc	ra,0xffffe
    80005128:	734080e7          	jalr	1844(ra) # 80003858 <_ZN6ThreadC1Ev>
    8000512c:	00007797          	auipc	a5,0x7
    80005130:	8cc78793          	addi	a5,a5,-1844 # 8000b9f8 <_ZTV7WorkerB+0x10>
    80005134:	00f4b023          	sd	a5,0(s1)
    80005138:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000513c:	00004517          	auipc	a0,0x4
    80005140:	3ac50513          	addi	a0,a0,940 # 800094e8 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80005144:	00001097          	auipc	ra,0x1
    80005148:	9f8080e7          	jalr	-1544(ra) # 80005b3c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000514c:	01000513          	li	a0,16
    80005150:	ffffe097          	auipc	ra,0xffffe
    80005154:	538080e7          	jalr	1336(ra) # 80003688 <_Znwm>
    80005158:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    8000515c:	ffffe097          	auipc	ra,0xffffe
    80005160:	6fc080e7          	jalr	1788(ra) # 80003858 <_ZN6ThreadC1Ev>
    80005164:	00007797          	auipc	a5,0x7
    80005168:	8bc78793          	addi	a5,a5,-1860 # 8000ba20 <_ZTV7WorkerC+0x10>
    8000516c:	00f4b023          	sd	a5,0(s1)
    80005170:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80005174:	00004517          	auipc	a0,0x4
    80005178:	38c50513          	addi	a0,a0,908 # 80009500 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    8000517c:	00001097          	auipc	ra,0x1
    80005180:	9c0080e7          	jalr	-1600(ra) # 80005b3c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80005184:	01000513          	li	a0,16
    80005188:	ffffe097          	auipc	ra,0xffffe
    8000518c:	500080e7          	jalr	1280(ra) # 80003688 <_Znwm>
    80005190:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80005194:	ffffe097          	auipc	ra,0xffffe
    80005198:	6c4080e7          	jalr	1732(ra) # 80003858 <_ZN6ThreadC1Ev>
    8000519c:	00007797          	auipc	a5,0x7
    800051a0:	8ac78793          	addi	a5,a5,-1876 # 8000ba48 <_ZTV7WorkerD+0x10>
    800051a4:	00f4b023          	sd	a5,0(s1)
    800051a8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800051ac:	00004517          	auipc	a0,0x4
    800051b0:	36c50513          	addi	a0,a0,876 # 80009518 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    800051b4:	00001097          	auipc	ra,0x1
    800051b8:	988080e7          	jalr	-1656(ra) # 80005b3c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800051bc:	00000493          	li	s1,0
    800051c0:	00300793          	li	a5,3
    800051c4:	0297ca63          	blt	a5,s1,800051f8 <_Z20Threads_CPP_API_testv+0x144>
        Riscv::printString("Starting...\n");
    800051c8:	00004517          	auipc	a0,0x4
    800051cc:	36850513          	addi	a0,a0,872 # 80009530 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    800051d0:	fffff097          	auipc	ra,0xfffff
    800051d4:	8f0080e7          	jalr	-1808(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        threads[i]->start();
    800051d8:	00349793          	slli	a5,s1,0x3
    800051dc:	fe040713          	addi	a4,s0,-32
    800051e0:	00f707b3          	add	a5,a4,a5
    800051e4:	fe07b503          	ld	a0,-32(a5)
    800051e8:	ffffe097          	auipc	ra,0xffffe
    800051ec:	570080e7          	jalr	1392(ra) # 80003758 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800051f0:	0014849b          	addiw	s1,s1,1
    800051f4:	fcdff06f          	j	800051c0 <_Z20Threads_CPP_API_testv+0x10c>
    }

    Riscv::printString("Thread started\n");
    800051f8:	00004517          	auipc	a0,0x4
    800051fc:	34850513          	addi	a0,a0,840 # 80009540 <_ZZN5Riscv12printIntegerEmE6digits+0x1a0>
    80005200:	fffff097          	auipc	ra,0xfffff
    80005204:	8c0080e7          	jalr	-1856(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    80005208:	00c0006f          	j	80005214 <_Z20Threads_CPP_API_testv+0x160>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000520c:	ffffe097          	auipc	ra,0xffffe
    80005210:	584080e7          	jalr	1412(ra) # 80003790 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005214:	00007797          	auipc	a5,0x7
    80005218:	9c47c783          	lbu	a5,-1596(a5) # 8000bbd8 <_ZL9finishedA>
    8000521c:	fe0788e3          	beqz	a5,8000520c <_Z20Threads_CPP_API_testv+0x158>
    80005220:	00007797          	auipc	a5,0x7
    80005224:	9b97c783          	lbu	a5,-1607(a5) # 8000bbd9 <_ZL9finishedB>
    80005228:	fe0782e3          	beqz	a5,8000520c <_Z20Threads_CPP_API_testv+0x158>
    8000522c:	00007797          	auipc	a5,0x7
    80005230:	9ae7c783          	lbu	a5,-1618(a5) # 8000bbda <_ZL9finishedC>
    80005234:	fc078ce3          	beqz	a5,8000520c <_Z20Threads_CPP_API_testv+0x158>
    80005238:	00007797          	auipc	a5,0x7
    8000523c:	9a37c783          	lbu	a5,-1629(a5) # 8000bbdb <_ZL9finishedD>
    80005240:	fc0786e3          	beqz	a5,8000520c <_Z20Threads_CPP_API_testv+0x158>
        //Riscv::printString("main\n");
    }

    for (auto thread: threads) { delete thread; }
    80005244:	fc040493          	addi	s1,s0,-64
    80005248:	0080006f          	j	80005250 <_Z20Threads_CPP_API_testv+0x19c>
    8000524c:	00848493          	addi	s1,s1,8
    80005250:	fe040793          	addi	a5,s0,-32
    80005254:	08f48663          	beq	s1,a5,800052e0 <_Z20Threads_CPP_API_testv+0x22c>
    80005258:	0004b503          	ld	a0,0(s1)
    8000525c:	fe0508e3          	beqz	a0,8000524c <_Z20Threads_CPP_API_testv+0x198>
    80005260:	00053783          	ld	a5,0(a0)
    80005264:	0087b783          	ld	a5,8(a5)
    80005268:	000780e7          	jalr	a5
    8000526c:	fe1ff06f          	j	8000524c <_Z20Threads_CPP_API_testv+0x198>
    80005270:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80005274:	00048513          	mv	a0,s1
    80005278:	ffffe097          	auipc	ra,0xffffe
    8000527c:	438080e7          	jalr	1080(ra) # 800036b0 <_ZdlPv>
    80005280:	00090513          	mv	a0,s2
    80005284:	00008097          	auipc	ra,0x8
    80005288:	a34080e7          	jalr	-1484(ra) # 8000ccb8 <_Unwind_Resume>
    8000528c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80005290:	00048513          	mv	a0,s1
    80005294:	ffffe097          	auipc	ra,0xffffe
    80005298:	41c080e7          	jalr	1052(ra) # 800036b0 <_ZdlPv>
    8000529c:	00090513          	mv	a0,s2
    800052a0:	00008097          	auipc	ra,0x8
    800052a4:	a18080e7          	jalr	-1512(ra) # 8000ccb8 <_Unwind_Resume>
    800052a8:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800052ac:	00048513          	mv	a0,s1
    800052b0:	ffffe097          	auipc	ra,0xffffe
    800052b4:	400080e7          	jalr	1024(ra) # 800036b0 <_ZdlPv>
    800052b8:	00090513          	mv	a0,s2
    800052bc:	00008097          	auipc	ra,0x8
    800052c0:	9fc080e7          	jalr	-1540(ra) # 8000ccb8 <_Unwind_Resume>
    800052c4:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800052c8:	00048513          	mv	a0,s1
    800052cc:	ffffe097          	auipc	ra,0xffffe
    800052d0:	3e4080e7          	jalr	996(ra) # 800036b0 <_ZdlPv>
    800052d4:	00090513          	mv	a0,s2
    800052d8:	00008097          	auipc	ra,0x8
    800052dc:	9e0080e7          	jalr	-1568(ra) # 8000ccb8 <_Unwind_Resume>
    800052e0:	03813083          	ld	ra,56(sp)
    800052e4:	03013403          	ld	s0,48(sp)
    800052e8:	02813483          	ld	s1,40(sp)
    800052ec:	02013903          	ld	s2,32(sp)
    800052f0:	04010113          	addi	sp,sp,64
    800052f4:	00008067          	ret

00000000800052f8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800052f8:	ff010113          	addi	sp,sp,-16
    800052fc:	00113423          	sd	ra,8(sp)
    80005300:	00813023          	sd	s0,0(sp)
    80005304:	01010413          	addi	s0,sp,16
    80005308:	00006797          	auipc	a5,0x6
    8000530c:	6c878793          	addi	a5,a5,1736 # 8000b9d0 <_ZTV7WorkerA+0x10>
    80005310:	00f53023          	sd	a5,0(a0)
    80005314:	ffffe097          	auipc	ra,0xffffe
    80005318:	2b8080e7          	jalr	696(ra) # 800035cc <_ZN6ThreadD1Ev>
    8000531c:	00813083          	ld	ra,8(sp)
    80005320:	00013403          	ld	s0,0(sp)
    80005324:	01010113          	addi	sp,sp,16
    80005328:	00008067          	ret

000000008000532c <_ZN7WorkerAD0Ev>:
    8000532c:	fe010113          	addi	sp,sp,-32
    80005330:	00113c23          	sd	ra,24(sp)
    80005334:	00813823          	sd	s0,16(sp)
    80005338:	00913423          	sd	s1,8(sp)
    8000533c:	02010413          	addi	s0,sp,32
    80005340:	00050493          	mv	s1,a0
    80005344:	00006797          	auipc	a5,0x6
    80005348:	68c78793          	addi	a5,a5,1676 # 8000b9d0 <_ZTV7WorkerA+0x10>
    8000534c:	00f53023          	sd	a5,0(a0)
    80005350:	ffffe097          	auipc	ra,0xffffe
    80005354:	27c080e7          	jalr	636(ra) # 800035cc <_ZN6ThreadD1Ev>
    80005358:	00048513          	mv	a0,s1
    8000535c:	ffffe097          	auipc	ra,0xffffe
    80005360:	354080e7          	jalr	852(ra) # 800036b0 <_ZdlPv>
    80005364:	01813083          	ld	ra,24(sp)
    80005368:	01013403          	ld	s0,16(sp)
    8000536c:	00813483          	ld	s1,8(sp)
    80005370:	02010113          	addi	sp,sp,32
    80005374:	00008067          	ret

0000000080005378 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80005378:	ff010113          	addi	sp,sp,-16
    8000537c:	00113423          	sd	ra,8(sp)
    80005380:	00813023          	sd	s0,0(sp)
    80005384:	01010413          	addi	s0,sp,16
    80005388:	00006797          	auipc	a5,0x6
    8000538c:	67078793          	addi	a5,a5,1648 # 8000b9f8 <_ZTV7WorkerB+0x10>
    80005390:	00f53023          	sd	a5,0(a0)
    80005394:	ffffe097          	auipc	ra,0xffffe
    80005398:	238080e7          	jalr	568(ra) # 800035cc <_ZN6ThreadD1Ev>
    8000539c:	00813083          	ld	ra,8(sp)
    800053a0:	00013403          	ld	s0,0(sp)
    800053a4:	01010113          	addi	sp,sp,16
    800053a8:	00008067          	ret

00000000800053ac <_ZN7WorkerBD0Ev>:
    800053ac:	fe010113          	addi	sp,sp,-32
    800053b0:	00113c23          	sd	ra,24(sp)
    800053b4:	00813823          	sd	s0,16(sp)
    800053b8:	00913423          	sd	s1,8(sp)
    800053bc:	02010413          	addi	s0,sp,32
    800053c0:	00050493          	mv	s1,a0
    800053c4:	00006797          	auipc	a5,0x6
    800053c8:	63478793          	addi	a5,a5,1588 # 8000b9f8 <_ZTV7WorkerB+0x10>
    800053cc:	00f53023          	sd	a5,0(a0)
    800053d0:	ffffe097          	auipc	ra,0xffffe
    800053d4:	1fc080e7          	jalr	508(ra) # 800035cc <_ZN6ThreadD1Ev>
    800053d8:	00048513          	mv	a0,s1
    800053dc:	ffffe097          	auipc	ra,0xffffe
    800053e0:	2d4080e7          	jalr	724(ra) # 800036b0 <_ZdlPv>
    800053e4:	01813083          	ld	ra,24(sp)
    800053e8:	01013403          	ld	s0,16(sp)
    800053ec:	00813483          	ld	s1,8(sp)
    800053f0:	02010113          	addi	sp,sp,32
    800053f4:	00008067          	ret

00000000800053f8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800053f8:	ff010113          	addi	sp,sp,-16
    800053fc:	00113423          	sd	ra,8(sp)
    80005400:	00813023          	sd	s0,0(sp)
    80005404:	01010413          	addi	s0,sp,16
    80005408:	00006797          	auipc	a5,0x6
    8000540c:	61878793          	addi	a5,a5,1560 # 8000ba20 <_ZTV7WorkerC+0x10>
    80005410:	00f53023          	sd	a5,0(a0)
    80005414:	ffffe097          	auipc	ra,0xffffe
    80005418:	1b8080e7          	jalr	440(ra) # 800035cc <_ZN6ThreadD1Ev>
    8000541c:	00813083          	ld	ra,8(sp)
    80005420:	00013403          	ld	s0,0(sp)
    80005424:	01010113          	addi	sp,sp,16
    80005428:	00008067          	ret

000000008000542c <_ZN7WorkerCD0Ev>:
    8000542c:	fe010113          	addi	sp,sp,-32
    80005430:	00113c23          	sd	ra,24(sp)
    80005434:	00813823          	sd	s0,16(sp)
    80005438:	00913423          	sd	s1,8(sp)
    8000543c:	02010413          	addi	s0,sp,32
    80005440:	00050493          	mv	s1,a0
    80005444:	00006797          	auipc	a5,0x6
    80005448:	5dc78793          	addi	a5,a5,1500 # 8000ba20 <_ZTV7WorkerC+0x10>
    8000544c:	00f53023          	sd	a5,0(a0)
    80005450:	ffffe097          	auipc	ra,0xffffe
    80005454:	17c080e7          	jalr	380(ra) # 800035cc <_ZN6ThreadD1Ev>
    80005458:	00048513          	mv	a0,s1
    8000545c:	ffffe097          	auipc	ra,0xffffe
    80005460:	254080e7          	jalr	596(ra) # 800036b0 <_ZdlPv>
    80005464:	01813083          	ld	ra,24(sp)
    80005468:	01013403          	ld	s0,16(sp)
    8000546c:	00813483          	ld	s1,8(sp)
    80005470:	02010113          	addi	sp,sp,32
    80005474:	00008067          	ret

0000000080005478 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80005478:	ff010113          	addi	sp,sp,-16
    8000547c:	00113423          	sd	ra,8(sp)
    80005480:	00813023          	sd	s0,0(sp)
    80005484:	01010413          	addi	s0,sp,16
    80005488:	00006797          	auipc	a5,0x6
    8000548c:	5c078793          	addi	a5,a5,1472 # 8000ba48 <_ZTV7WorkerD+0x10>
    80005490:	00f53023          	sd	a5,0(a0)
    80005494:	ffffe097          	auipc	ra,0xffffe
    80005498:	138080e7          	jalr	312(ra) # 800035cc <_ZN6ThreadD1Ev>
    8000549c:	00813083          	ld	ra,8(sp)
    800054a0:	00013403          	ld	s0,0(sp)
    800054a4:	01010113          	addi	sp,sp,16
    800054a8:	00008067          	ret

00000000800054ac <_ZN7WorkerDD0Ev>:
    800054ac:	fe010113          	addi	sp,sp,-32
    800054b0:	00113c23          	sd	ra,24(sp)
    800054b4:	00813823          	sd	s0,16(sp)
    800054b8:	00913423          	sd	s1,8(sp)
    800054bc:	02010413          	addi	s0,sp,32
    800054c0:	00050493          	mv	s1,a0
    800054c4:	00006797          	auipc	a5,0x6
    800054c8:	58478793          	addi	a5,a5,1412 # 8000ba48 <_ZTV7WorkerD+0x10>
    800054cc:	00f53023          	sd	a5,0(a0)
    800054d0:	ffffe097          	auipc	ra,0xffffe
    800054d4:	0fc080e7          	jalr	252(ra) # 800035cc <_ZN6ThreadD1Ev>
    800054d8:	00048513          	mv	a0,s1
    800054dc:	ffffe097          	auipc	ra,0xffffe
    800054e0:	1d4080e7          	jalr	468(ra) # 800036b0 <_ZdlPv>
    800054e4:	01813083          	ld	ra,24(sp)
    800054e8:	01013403          	ld	s0,16(sp)
    800054ec:	00813483          	ld	s1,8(sp)
    800054f0:	02010113          	addi	sp,sp,32
    800054f4:	00008067          	ret

00000000800054f8 <_ZN7WorkerA3runEv>:
    void run() override {
    800054f8:	ff010113          	addi	sp,sp,-16
    800054fc:	00113423          	sd	ra,8(sp)
    80005500:	00813023          	sd	s0,0(sp)
    80005504:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80005508:	00000593          	li	a1,0
    8000550c:	fffff097          	auipc	ra,0xfffff
    80005510:	740080e7          	jalr	1856(ra) # 80004c4c <_ZN7WorkerA11workerBodyAEPv>
    }
    80005514:	00813083          	ld	ra,8(sp)
    80005518:	00013403          	ld	s0,0(sp)
    8000551c:	01010113          	addi	sp,sp,16
    80005520:	00008067          	ret

0000000080005524 <_ZN7WorkerB3runEv>:
    void run() override {
    80005524:	ff010113          	addi	sp,sp,-16
    80005528:	00113423          	sd	ra,8(sp)
    8000552c:	00813023          	sd	s0,0(sp)
    80005530:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80005534:	00000593          	li	a1,0
    80005538:	fffff097          	auipc	ra,0xfffff
    8000553c:	7e0080e7          	jalr	2016(ra) # 80004d18 <_ZN7WorkerB11workerBodyBEPv>
    }
    80005540:	00813083          	ld	ra,8(sp)
    80005544:	00013403          	ld	s0,0(sp)
    80005548:	01010113          	addi	sp,sp,16
    8000554c:	00008067          	ret

0000000080005550 <_ZN7WorkerC3runEv>:
    void run() override {
    80005550:	ff010113          	addi	sp,sp,-16
    80005554:	00113423          	sd	ra,8(sp)
    80005558:	00813023          	sd	s0,0(sp)
    8000555c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80005560:	00000593          	li	a1,0
    80005564:	00000097          	auipc	ra,0x0
    80005568:	888080e7          	jalr	-1912(ra) # 80004dec <_ZN7WorkerC11workerBodyCEPv>
    }
    8000556c:	00813083          	ld	ra,8(sp)
    80005570:	00013403          	ld	s0,0(sp)
    80005574:	01010113          	addi	sp,sp,16
    80005578:	00008067          	ret

000000008000557c <_ZN7WorkerD3runEv>:

    void run() override {
    8000557c:	ff010113          	addi	sp,sp,-16
    80005580:	00113423          	sd	ra,8(sp)
    80005584:	00813023          	sd	s0,0(sp)
    80005588:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000558c:	00000593          	li	a1,0
    80005590:	00000097          	auipc	ra,0x0
    80005594:	9dc080e7          	jalr	-1572(ra) # 80004f6c <_ZN7WorkerD11workerBodyDEPv>
    }
    80005598:	00813083          	ld	ra,8(sp)
    8000559c:	00013403          	ld	s0,0(sp)
    800055a0:	01010113          	addi	sp,sp,16
    800055a4:	00008067          	ret

00000000800055a8 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800055a8:	fe010113          	addi	sp,sp,-32
    800055ac:	00113c23          	sd	ra,24(sp)
    800055b0:	00813823          	sd	s0,16(sp)
    800055b4:	00913423          	sd	s1,8(sp)
    800055b8:	01213023          	sd	s2,0(sp)
    800055bc:	02010413          	addi	s0,sp,32
    800055c0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) {return n; }
    800055c4:	00100793          	li	a5,1
    800055c8:	02a7f863          	bgeu	a5,a0,800055f8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800055cc:	00a00793          	li	a5,10
    800055d0:	02f577b3          	remu	a5,a0,a5
    800055d4:	02078e63          	beqz	a5,80005610 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800055d8:	fff48513          	addi	a0,s1,-1
    800055dc:	00000097          	auipc	ra,0x0
    800055e0:	fcc080e7          	jalr	-52(ra) # 800055a8 <_ZL9fibonaccim>
    800055e4:	00050913          	mv	s2,a0
    800055e8:	ffe48513          	addi	a0,s1,-2
    800055ec:	00000097          	auipc	ra,0x0
    800055f0:	fbc080e7          	jalr	-68(ra) # 800055a8 <_ZL9fibonaccim>
    800055f4:	00a90533          	add	a0,s2,a0
}
    800055f8:	01813083          	ld	ra,24(sp)
    800055fc:	01013403          	ld	s0,16(sp)
    80005600:	00813483          	ld	s1,8(sp)
    80005604:	00013903          	ld	s2,0(sp)
    80005608:	02010113          	addi	sp,sp,32
    8000560c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005610:	ffffc097          	auipc	ra,0xffffc
    80005614:	d14080e7          	jalr	-748(ra) # 80001324 <thread_dispatch>
    80005618:	fc1ff06f          	j	800055d8 <_ZL9fibonaccim+0x30>

000000008000561c <_Z11workerBodyAPv>:

void workerBodyA(void* arg) {
    8000561c:	fe010113          	addi	sp,sp,-32
    80005620:	00113c23          	sd	ra,24(sp)
    80005624:	00813823          	sd	s0,16(sp)
    80005628:	00913423          	sd	s1,8(sp)
    8000562c:	01213023          	sd	s2,0(sp)
    80005630:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005634:	00000913          	li	s2,0
    80005638:	0380006f          	j	80005670 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            //Riscv::printString("A j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000563c:	ffffc097          	auipc	ra,0xffffc
    80005640:	ce8080e7          	jalr	-792(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005644:	00148493          	addi	s1,s1,1
    80005648:	000027b7          	lui	a5,0x2
    8000564c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005650:	0097ee63          	bltu	a5,s1,8000566c <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005654:	00000713          	li	a4,0
    80005658:	000077b7          	lui	a5,0x7
    8000565c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005660:	fce7eee3          	bltu	a5,a4,8000563c <_Z11workerBodyAPv+0x20>
    80005664:	00170713          	addi	a4,a4,1
    80005668:	ff1ff06f          	j	80005658 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000566c:	00190913          	addi	s2,s2,1
    80005670:	00900793          	li	a5,9
    80005674:	0527e063          	bltu	a5,s2,800056b4 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005678:	00004517          	auipc	a0,0x4
    8000567c:	db050513          	addi	a0,a0,-592 # 80009428 <_ZZN5Riscv12printIntegerEmE6digits+0x88>
    80005680:	00000097          	auipc	ra,0x0
    80005684:	4bc080e7          	jalr	1212(ra) # 80005b3c <_Z11printStringPKc>
    80005688:	00000613          	li	a2,0
    8000568c:	00a00593          	li	a1,10
    80005690:	0009051b          	sext.w	a0,s2
    80005694:	00000097          	auipc	ra,0x0
    80005698:	640080e7          	jalr	1600(ra) # 80005cd4 <_Z8printIntiii>
    8000569c:	00004517          	auipc	a0,0x4
    800056a0:	a6450513          	addi	a0,a0,-1436 # 80009100 <CONSOLE_STATUS+0xf0>
    800056a4:	00000097          	auipc	ra,0x0
    800056a8:	498080e7          	jalr	1176(ra) # 80005b3c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800056ac:	00000493          	li	s1,0
    800056b0:	f99ff06f          	j	80005648 <_Z11workerBodyAPv+0x2c>
        }
    }
    Riscv::printString("A finished!\n");
    800056b4:	00004517          	auipc	a0,0x4
    800056b8:	d7c50513          	addi	a0,a0,-644 # 80009430 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    800056bc:	ffffe097          	auipc	ra,0xffffe
    800056c0:	404080e7          	jalr	1028(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    finishedA = true;
    800056c4:	00100793          	li	a5,1
    800056c8:	00006717          	auipc	a4,0x6
    800056cc:	50f70a23          	sb	a5,1300(a4) # 8000bbdc <_ZL9finishedA>
}
    800056d0:	01813083          	ld	ra,24(sp)
    800056d4:	01013403          	ld	s0,16(sp)
    800056d8:	00813483          	ld	s1,8(sp)
    800056dc:	00013903          	ld	s2,0(sp)
    800056e0:	02010113          	addi	sp,sp,32
    800056e4:	00008067          	ret

00000000800056e8 <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    800056e8:	fe010113          	addi	sp,sp,-32
    800056ec:	00113c23          	sd	ra,24(sp)
    800056f0:	00813823          	sd	s0,16(sp)
    800056f4:	00913423          	sd	s1,8(sp)
    800056f8:	01213023          	sd	s2,0(sp)
    800056fc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005700:	00000913          	li	s2,0
    80005704:	0340006f          	j	80005738 <_Z11workerBodyBPv+0x50>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10; j++) {
            //Riscv::printString("B j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005708:	ffffc097          	auipc	ra,0xffffc
    8000570c:	c1c080e7          	jalr	-996(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10; j++) {
    80005710:	00148493          	addi	s1,s1,1
    80005714:	00900793          	li	a5,9
    80005718:	0097ee63          	bltu	a5,s1,80005734 <_Z11workerBodyBPv+0x4c>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000571c:	00000713          	li	a4,0
    80005720:	000077b7          	lui	a5,0x7
    80005724:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005728:	fee7e0e3          	bltu	a5,a4,80005708 <_Z11workerBodyBPv+0x20>
    8000572c:	00170713          	addi	a4,a4,1
    80005730:	ff1ff06f          	j	80005720 <_Z11workerBodyBPv+0x38>
    for (uint64 i = 0; i < 16; i++) {
    80005734:	00190913          	addi	s2,s2,1
    80005738:	00f00793          	li	a5,15
    8000573c:	0527e063          	bltu	a5,s2,8000577c <_Z11workerBodyBPv+0x94>
        printString("B: i="); printInt(i); printString("\n");
    80005740:	00004517          	auipc	a0,0x4
    80005744:	d0050513          	addi	a0,a0,-768 # 80009440 <_ZZN5Riscv12printIntegerEmE6digits+0xa0>
    80005748:	00000097          	auipc	ra,0x0
    8000574c:	3f4080e7          	jalr	1012(ra) # 80005b3c <_Z11printStringPKc>
    80005750:	00000613          	li	a2,0
    80005754:	00a00593          	li	a1,10
    80005758:	0009051b          	sext.w	a0,s2
    8000575c:	00000097          	auipc	ra,0x0
    80005760:	578080e7          	jalr	1400(ra) # 80005cd4 <_Z8printIntiii>
    80005764:	00004517          	auipc	a0,0x4
    80005768:	99c50513          	addi	a0,a0,-1636 # 80009100 <CONSOLE_STATUS+0xf0>
    8000576c:	00000097          	auipc	ra,0x0
    80005770:	3d0080e7          	jalr	976(ra) # 80005b3c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80005774:	00000493          	li	s1,0
    80005778:	f9dff06f          	j	80005714 <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    8000577c:	ffffc097          	auipc	ra,0xffffc
    80005780:	ba8080e7          	jalr	-1112(ra) # 80001324 <thread_dispatch>
    Riscv::printString("B finished!\n");
    80005784:	00004517          	auipc	a0,0x4
    80005788:	cc450513          	addi	a0,a0,-828 # 80009448 <_ZZN5Riscv12printIntegerEmE6digits+0xa8>
    8000578c:	ffffe097          	auipc	ra,0xffffe
    80005790:	334080e7          	jalr	820(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    finishedB = true;
}
    80005794:	01813083          	ld	ra,24(sp)
    80005798:	01013403          	ld	s0,16(sp)
    8000579c:	00813483          	ld	s1,8(sp)
    800057a0:	00013903          	ld	s2,0(sp)
    800057a4:	02010113          	addi	sp,sp,32
    800057a8:	00008067          	ret

00000000800057ac <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    800057ac:	fe010113          	addi	sp,sp,-32
    800057b0:	00113c23          	sd	ra,24(sp)
    800057b4:	00813823          	sd	s0,16(sp)
    800057b8:	00913423          	sd	s1,8(sp)
    800057bc:	01213023          	sd	s2,0(sp)
    800057c0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800057c4:	00000493          	li	s1,0
    800057c8:	0400006f          	j	80005808 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800057cc:	00004517          	auipc	a0,0x4
    800057d0:	c8c50513          	addi	a0,a0,-884 # 80009458 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    800057d4:	00000097          	auipc	ra,0x0
    800057d8:	368080e7          	jalr	872(ra) # 80005b3c <_Z11printStringPKc>
    800057dc:	00000613          	li	a2,0
    800057e0:	00a00593          	li	a1,10
    800057e4:	00048513          	mv	a0,s1
    800057e8:	00000097          	auipc	ra,0x0
    800057ec:	4ec080e7          	jalr	1260(ra) # 80005cd4 <_Z8printIntiii>
    800057f0:	00004517          	auipc	a0,0x4
    800057f4:	91050513          	addi	a0,a0,-1776 # 80009100 <CONSOLE_STATUS+0xf0>
    800057f8:	00000097          	auipc	ra,0x0
    800057fc:	344080e7          	jalr	836(ra) # 80005b3c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005800:	0014849b          	addiw	s1,s1,1
    80005804:	0ff4f493          	andi	s1,s1,255
    80005808:	00200793          	li	a5,2
    8000580c:	fc97f0e3          	bgeu	a5,s1,800057cc <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005810:	00004517          	auipc	a0,0x4
    80005814:	c5050513          	addi	a0,a0,-944 # 80009460 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    80005818:	00000097          	auipc	ra,0x0
    8000581c:	324080e7          	jalr	804(ra) # 80005b3c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005820:	00700313          	li	t1,7
    thread_dispatch();
    80005824:	ffffc097          	auipc	ra,0xffffc
    80005828:	b00080e7          	jalr	-1280(ra) # 80001324 <thread_dispatch>
    printString("C: returned\n");
    8000582c:	00004517          	auipc	a0,0x4
    80005830:	d2450513          	addi	a0,a0,-732 # 80009550 <_ZZN5Riscv12printIntegerEmE6digits+0x1b0>
    80005834:	00000097          	auipc	ra,0x0
    80005838:	308080e7          	jalr	776(ra) # 80005b3c <_Z11printStringPKc>
    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000583c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005840:	00004517          	auipc	a0,0x4
    80005844:	c3050513          	addi	a0,a0,-976 # 80009470 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    80005848:	00000097          	auipc	ra,0x0
    8000584c:	2f4080e7          	jalr	756(ra) # 80005b3c <_Z11printStringPKc>
    80005850:	00000613          	li	a2,0
    80005854:	00a00593          	li	a1,10
    80005858:	0009051b          	sext.w	a0,s2
    8000585c:	00000097          	auipc	ra,0x0
    80005860:	478080e7          	jalr	1144(ra) # 80005cd4 <_Z8printIntiii>
    80005864:	00004517          	auipc	a0,0x4
    80005868:	89c50513          	addi	a0,a0,-1892 # 80009100 <CONSOLE_STATUS+0xf0>
    8000586c:	00000097          	auipc	ra,0x0
    80005870:	2d0080e7          	jalr	720(ra) # 80005b3c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005874:	00c00513          	li	a0,12
    80005878:	00000097          	auipc	ra,0x0
    8000587c:	d30080e7          	jalr	-720(ra) # 800055a8 <_ZL9fibonaccim>
    80005880:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005884:	00004517          	auipc	a0,0x4
    80005888:	bf450513          	addi	a0,a0,-1036 # 80009478 <_ZZN5Riscv12printIntegerEmE6digits+0xd8>
    8000588c:	00000097          	auipc	ra,0x0
    80005890:	2b0080e7          	jalr	688(ra) # 80005b3c <_Z11printStringPKc>
    80005894:	00000613          	li	a2,0
    80005898:	00a00593          	li	a1,10
    8000589c:	0009051b          	sext.w	a0,s2
    800058a0:	00000097          	auipc	ra,0x0
    800058a4:	434080e7          	jalr	1076(ra) # 80005cd4 <_Z8printIntiii>
    800058a8:	00004517          	auipc	a0,0x4
    800058ac:	85850513          	addi	a0,a0,-1960 # 80009100 <CONSOLE_STATUS+0xf0>
    800058b0:	00000097          	auipc	ra,0x0
    800058b4:	28c080e7          	jalr	652(ra) # 80005b3c <_Z11printStringPKc>
    800058b8:	0400006f          	j	800058f8 <_Z11workerBodyCPv+0x14c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800058bc:	00004517          	auipc	a0,0x4
    800058c0:	b9c50513          	addi	a0,a0,-1124 # 80009458 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    800058c4:	00000097          	auipc	ra,0x0
    800058c8:	278080e7          	jalr	632(ra) # 80005b3c <_Z11printStringPKc>
    800058cc:	00000613          	li	a2,0
    800058d0:	00a00593          	li	a1,10
    800058d4:	00048513          	mv	a0,s1
    800058d8:	00000097          	auipc	ra,0x0
    800058dc:	3fc080e7          	jalr	1020(ra) # 80005cd4 <_Z8printIntiii>
    800058e0:	00004517          	auipc	a0,0x4
    800058e4:	82050513          	addi	a0,a0,-2016 # 80009100 <CONSOLE_STATUS+0xf0>
    800058e8:	00000097          	auipc	ra,0x0
    800058ec:	254080e7          	jalr	596(ra) # 80005b3c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800058f0:	0014849b          	addiw	s1,s1,1
    800058f4:	0ff4f493          	andi	s1,s1,255
    800058f8:	00500793          	li	a5,5
    800058fc:	fc97f0e3          	bgeu	a5,s1,800058bc <_Z11workerBodyCPv+0x110>
    }

    thread_dispatch();
    80005900:	ffffc097          	auipc	ra,0xffffc
    80005904:	a24080e7          	jalr	-1500(ra) # 80001324 <thread_dispatch>
    printString("C finished!\n");
    80005908:	00004517          	auipc	a0,0x4
    8000590c:	c5850513          	addi	a0,a0,-936 # 80009560 <_ZZN5Riscv12printIntegerEmE6digits+0x1c0>
    80005910:	00000097          	auipc	ra,0x0
    80005914:	22c080e7          	jalr	556(ra) # 80005b3c <_Z11printStringPKc>
    finishedC = true;
}
    80005918:	01813083          	ld	ra,24(sp)
    8000591c:	01013403          	ld	s0,16(sp)
    80005920:	00813483          	ld	s1,8(sp)
    80005924:	00013903          	ld	s2,0(sp)
    80005928:	02010113          	addi	sp,sp,32
    8000592c:	00008067          	ret

0000000080005930 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80005930:	fe010113          	addi	sp,sp,-32
    80005934:	00113c23          	sd	ra,24(sp)
    80005938:	00813823          	sd	s0,16(sp)
    8000593c:	00913423          	sd	s1,8(sp)
    80005940:	01213023          	sd	s2,0(sp)
    80005944:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005948:	00a00493          	li	s1,10
    8000594c:	0400006f          	j	8000598c <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005950:	00004517          	auipc	a0,0x4
    80005954:	b3850513          	addi	a0,a0,-1224 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    80005958:	00000097          	auipc	ra,0x0
    8000595c:	1e4080e7          	jalr	484(ra) # 80005b3c <_Z11printStringPKc>
    80005960:	00000613          	li	a2,0
    80005964:	00a00593          	li	a1,10
    80005968:	00048513          	mv	a0,s1
    8000596c:	00000097          	auipc	ra,0x0
    80005970:	368080e7          	jalr	872(ra) # 80005cd4 <_Z8printIntiii>
    80005974:	00003517          	auipc	a0,0x3
    80005978:	78c50513          	addi	a0,a0,1932 # 80009100 <CONSOLE_STATUS+0xf0>
    8000597c:	00000097          	auipc	ra,0x0
    80005980:	1c0080e7          	jalr	448(ra) # 80005b3c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005984:	0014849b          	addiw	s1,s1,1
    80005988:	0ff4f493          	andi	s1,s1,255
    8000598c:	00c00793          	li	a5,12
    80005990:	fc97f0e3          	bgeu	a5,s1,80005950 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005994:	00004517          	auipc	a0,0x4
    80005998:	afc50513          	addi	a0,a0,-1284 # 80009490 <_ZZN5Riscv12printIntegerEmE6digits+0xf0>
    8000599c:	00000097          	auipc	ra,0x0
    800059a0:	1a0080e7          	jalr	416(ra) # 80005b3c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800059a4:	00500313          	li	t1,5
    thread_dispatch();
    800059a8:	ffffc097          	auipc	ra,0xffffc
    800059ac:	97c080e7          	jalr	-1668(ra) # 80001324 <thread_dispatch>
    printString("D: returned\n");
    800059b0:	00004517          	auipc	a0,0x4
    800059b4:	bc050513          	addi	a0,a0,-1088 # 80009570 <_ZZN5Riscv12printIntegerEmE6digits+0x1d0>
    800059b8:	00000097          	auipc	ra,0x0
    800059bc:	184080e7          	jalr	388(ra) # 80005b3c <_Z11printStringPKc>
    uint64 result = fibonacci(16);
    800059c0:	01000513          	li	a0,16
    800059c4:	00000097          	auipc	ra,0x0
    800059c8:	be4080e7          	jalr	-1052(ra) # 800055a8 <_ZL9fibonaccim>
    800059cc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800059d0:	00004517          	auipc	a0,0x4
    800059d4:	ad050513          	addi	a0,a0,-1328 # 800094a0 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    800059d8:	00000097          	auipc	ra,0x0
    800059dc:	164080e7          	jalr	356(ra) # 80005b3c <_Z11printStringPKc>
    800059e0:	00000613          	li	a2,0
    800059e4:	00a00593          	li	a1,10
    800059e8:	0009051b          	sext.w	a0,s2
    800059ec:	00000097          	auipc	ra,0x0
    800059f0:	2e8080e7          	jalr	744(ra) # 80005cd4 <_Z8printIntiii>
    800059f4:	00003517          	auipc	a0,0x3
    800059f8:	70c50513          	addi	a0,a0,1804 # 80009100 <CONSOLE_STATUS+0xf0>
    800059fc:	00000097          	auipc	ra,0x0
    80005a00:	140080e7          	jalr	320(ra) # 80005b3c <_Z11printStringPKc>
    80005a04:	0400006f          	j	80005a44 <_Z11workerBodyDPv+0x114>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005a08:	00004517          	auipc	a0,0x4
    80005a0c:	a8050513          	addi	a0,a0,-1408 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    80005a10:	00000097          	auipc	ra,0x0
    80005a14:	12c080e7          	jalr	300(ra) # 80005b3c <_Z11printStringPKc>
    80005a18:	00000613          	li	a2,0
    80005a1c:	00a00593          	li	a1,10
    80005a20:	00048513          	mv	a0,s1
    80005a24:	00000097          	auipc	ra,0x0
    80005a28:	2b0080e7          	jalr	688(ra) # 80005cd4 <_Z8printIntiii>
    80005a2c:	00003517          	auipc	a0,0x3
    80005a30:	6d450513          	addi	a0,a0,1748 # 80009100 <CONSOLE_STATUS+0xf0>
    80005a34:	00000097          	auipc	ra,0x0
    80005a38:	108080e7          	jalr	264(ra) # 80005b3c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005a3c:	0014849b          	addiw	s1,s1,1
    80005a40:	0ff4f493          	andi	s1,s1,255
    80005a44:	00f00793          	li	a5,15
    80005a48:	fc97f0e3          	bgeu	a5,s1,80005a08 <_Z11workerBodyDPv+0xd8>
    }

    thread_dispatch();
    80005a4c:	ffffc097          	auipc	ra,0xffffc
    80005a50:	8d8080e7          	jalr	-1832(ra) # 80001324 <thread_dispatch>
    printString("D finished!\n");
    80005a54:	00004517          	auipc	a0,0x4
    80005a58:	a5c50513          	addi	a0,a0,-1444 # 800094b0 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80005a5c:	00000097          	auipc	ra,0x0
    80005a60:	0e0080e7          	jalr	224(ra) # 80005b3c <_Z11printStringPKc>
    finishedD = true;
}
    80005a64:	01813083          	ld	ra,24(sp)
    80005a68:	01013403          	ld	s0,16(sp)
    80005a6c:	00813483          	ld	s1,8(sp)
    80005a70:	00013903          	ld	s2,0(sp)
    80005a74:	02010113          	addi	sp,sp,32
    80005a78:	00008067          	ret

0000000080005a7c <_Z18Threads_C_API_testv>:


void Threads_C_API_test()
{
    80005a7c:	fc010113          	addi	sp,sp,-64
    80005a80:	02113c23          	sd	ra,56(sp)
    80005a84:	02813823          	sd	s0,48(sp)
    80005a88:	02913423          	sd	s1,40(sp)
    80005a8c:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005a90:	00000613          	li	a2,0
    80005a94:	00000597          	auipc	a1,0x0
    80005a98:	b8858593          	addi	a1,a1,-1144 # 8000561c <_Z11workerBodyAPv>
    80005a9c:	fc040513          	addi	a0,s0,-64
    80005aa0:	ffffc097          	auipc	ra,0xffffc
    80005aa4:	804080e7          	jalr	-2044(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    80005aa8:	00004517          	auipc	a0,0x4
    80005aac:	a2850513          	addi	a0,a0,-1496 # 800094d0 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    80005ab0:	00000097          	auipc	ra,0x0
    80005ab4:	08c080e7          	jalr	140(ra) # 80005b3c <_Z11printStringPKc>

    //thread_create(&threads[1], workerBodyB, nullptr);
    printString("ThreadB created\n");
    80005ab8:	00004517          	auipc	a0,0x4
    80005abc:	a3050513          	addi	a0,a0,-1488 # 800094e8 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80005ac0:	00000097          	auipc	ra,0x0
    80005ac4:	07c080e7          	jalr	124(ra) # 80005b3c <_Z11printStringPKc>

    //thread_create(&threads[2], workerBodyC, nullptr);
    printString("ThreadC created\n");
    80005ac8:	00004517          	auipc	a0,0x4
    80005acc:	a3850513          	addi	a0,a0,-1480 # 80009500 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80005ad0:	00000097          	auipc	ra,0x0
    80005ad4:	06c080e7          	jalr	108(ra) # 80005b3c <_Z11printStringPKc>

    //thread_create(&threads[3], workerBodyD, nullptr);
    printString("ThreadD created\n");
    80005ad8:	00004517          	auipc	a0,0x4
    80005adc:	a4050513          	addi	a0,a0,-1472 # 80009518 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80005ae0:	00000097          	auipc	ra,0x0
    80005ae4:	05c080e7          	jalr	92(ra) # 80005b3c <_Z11printStringPKc>

    while (!finishedA) {
    80005ae8:	00006797          	auipc	a5,0x6
    80005aec:	0f47c783          	lbu	a5,244(a5) # 8000bbdc <_ZL9finishedA>
    80005af0:	00079863          	bnez	a5,80005b00 <_Z18Threads_C_API_testv+0x84>
        //printString("Main thread\n");
        thread_dispatch();
    80005af4:	ffffc097          	auipc	ra,0xffffc
    80005af8:	830080e7          	jalr	-2000(ra) # 80001324 <thread_dispatch>
    80005afc:	fedff06f          	j	80005ae8 <_Z18Threads_C_API_testv+0x6c>
    }
    for (auto &thread: threads)
    80005b00:	fc040493          	addi	s1,s0,-64
    80005b04:	0080006f          	j	80005b0c <_Z18Threads_C_API_testv+0x90>
    80005b08:	00848493          	addi	s1,s1,8
    80005b0c:	fe040793          	addi	a5,s0,-32
    80005b10:	00f48c63          	beq	s1,a5,80005b28 <_Z18Threads_C_API_testv+0xac>
    {
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (uint64*)thread;
    80005b14:	0004b503          	ld	a0,0(s1)
    80005b18:	fe0508e3          	beqz	a0,80005b08 <_Z18Threads_C_API_testv+0x8c>
    80005b1c:	ffffe097          	auipc	ra,0xffffe
    80005b20:	b94080e7          	jalr	-1132(ra) # 800036b0 <_ZdlPv>
    80005b24:	fe5ff06f          	j	80005b08 <_Z18Threads_C_API_testv+0x8c>
    }
}
    80005b28:	03813083          	ld	ra,56(sp)
    80005b2c:	03013403          	ld	s0,48(sp)
    80005b30:	02813483          	ld	s1,40(sp)
    80005b34:	04010113          	addi	sp,sp,64
    80005b38:	00008067          	ret

0000000080005b3c <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    80005b3c:	fe010113          	addi	sp,sp,-32
    80005b40:	00113c23          	sd	ra,24(sp)
    80005b44:	00813823          	sd	s0,16(sp)
    80005b48:	00913423          	sd	s1,8(sp)
    80005b4c:	02010413          	addi	s0,sp,32
    80005b50:	00050493          	mv	s1,a0
    LOCK();
    80005b54:	00100613          	li	a2,1
    80005b58:	00000593          	li	a1,0
    80005b5c:	00006517          	auipc	a0,0x6
    80005b60:	08450513          	addi	a0,a0,132 # 8000bbe0 <lockPrint>
    80005b64:	ffffb097          	auipc	ra,0xffffb
    80005b68:	6a4080e7          	jalr	1700(ra) # 80001208 <copy_and_swap>
    80005b6c:	fe0514e3          	bnez	a0,80005b54 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80005b70:	0004c503          	lbu	a0,0(s1)
    80005b74:	00050a63          	beqz	a0,80005b88 <_Z11printStringPKc+0x4c>
        putc(*string);
    80005b78:	ffffc097          	auipc	ra,0xffffc
    80005b7c:	9b0080e7          	jalr	-1616(ra) # 80001528 <putc>
        string++;
    80005b80:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005b84:	fedff06f          	j	80005b70 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005b88:	00000613          	li	a2,0
    80005b8c:	00100593          	li	a1,1
    80005b90:	00006517          	auipc	a0,0x6
    80005b94:	05050513          	addi	a0,a0,80 # 8000bbe0 <lockPrint>
    80005b98:	ffffb097          	auipc	ra,0xffffb
    80005b9c:	670080e7          	jalr	1648(ra) # 80001208 <copy_and_swap>
    80005ba0:	fe0514e3          	bnez	a0,80005b88 <_Z11printStringPKc+0x4c>
}
    80005ba4:	01813083          	ld	ra,24(sp)
    80005ba8:	01013403          	ld	s0,16(sp)
    80005bac:	00813483          	ld	s1,8(sp)
    80005bb0:	02010113          	addi	sp,sp,32
    80005bb4:	00008067          	ret

0000000080005bb8 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005bb8:	fd010113          	addi	sp,sp,-48
    80005bbc:	02113423          	sd	ra,40(sp)
    80005bc0:	02813023          	sd	s0,32(sp)
    80005bc4:	00913c23          	sd	s1,24(sp)
    80005bc8:	01213823          	sd	s2,16(sp)
    80005bcc:	01313423          	sd	s3,8(sp)
    80005bd0:	01413023          	sd	s4,0(sp)
    80005bd4:	03010413          	addi	s0,sp,48
    80005bd8:	00050993          	mv	s3,a0
    80005bdc:	00058a13          	mv	s4,a1
    LOCK();
    80005be0:	00100613          	li	a2,1
    80005be4:	00000593          	li	a1,0
    80005be8:	00006517          	auipc	a0,0x6
    80005bec:	ff850513          	addi	a0,a0,-8 # 8000bbe0 <lockPrint>
    80005bf0:	ffffb097          	auipc	ra,0xffffb
    80005bf4:	618080e7          	jalr	1560(ra) # 80001208 <copy_and_swap>
    80005bf8:	fe0514e3          	bnez	a0,80005be0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80005bfc:	00000913          	li	s2,0
    80005c00:	00090493          	mv	s1,s2
    80005c04:	0019091b          	addiw	s2,s2,1
    80005c08:	03495a63          	bge	s2,s4,80005c3c <_Z9getStringPci+0x84>
        cc = getc();
    80005c0c:	ffffc097          	auipc	ra,0xffffc
    80005c10:	8f4080e7          	jalr	-1804(ra) # 80001500 <getc>
        if (cc < 1)
    80005c14:	02050463          	beqz	a0,80005c3c <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005c18:	009984b3          	add	s1,s3,s1
    80005c1c:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80005c20:	00a00793          	li	a5,10
    80005c24:	00f50a63          	beq	a0,a5,80005c38 <_Z9getStringPci+0x80>
    80005c28:	00d00793          	li	a5,13
    80005c2c:	fcf51ae3          	bne	a0,a5,80005c00 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005c30:	00090493          	mv	s1,s2
    80005c34:	0080006f          	j	80005c3c <_Z9getStringPci+0x84>
    80005c38:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005c3c:	009984b3          	add	s1,s3,s1
    80005c40:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005c44:	00000613          	li	a2,0
    80005c48:	00100593          	li	a1,1
    80005c4c:	00006517          	auipc	a0,0x6
    80005c50:	f9450513          	addi	a0,a0,-108 # 8000bbe0 <lockPrint>
    80005c54:	ffffb097          	auipc	ra,0xffffb
    80005c58:	5b4080e7          	jalr	1460(ra) # 80001208 <copy_and_swap>
    80005c5c:	fe0514e3          	bnez	a0,80005c44 <_Z9getStringPci+0x8c>
    return buf;
}
    80005c60:	00098513          	mv	a0,s3
    80005c64:	02813083          	ld	ra,40(sp)
    80005c68:	02013403          	ld	s0,32(sp)
    80005c6c:	01813483          	ld	s1,24(sp)
    80005c70:	01013903          	ld	s2,16(sp)
    80005c74:	00813983          	ld	s3,8(sp)
    80005c78:	00013a03          	ld	s4,0(sp)
    80005c7c:	03010113          	addi	sp,sp,48
    80005c80:	00008067          	ret

0000000080005c84 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005c84:	ff010113          	addi	sp,sp,-16
    80005c88:	00813423          	sd	s0,8(sp)
    80005c8c:	01010413          	addi	s0,sp,16
    80005c90:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005c94:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005c98:	0006c603          	lbu	a2,0(a3)
    80005c9c:	fd06071b          	addiw	a4,a2,-48
    80005ca0:	0ff77713          	andi	a4,a4,255
    80005ca4:	00900793          	li	a5,9
    80005ca8:	02e7e063          	bltu	a5,a4,80005cc8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005cac:	0025179b          	slliw	a5,a0,0x2
    80005cb0:	00a787bb          	addw	a5,a5,a0
    80005cb4:	0017979b          	slliw	a5,a5,0x1
    80005cb8:	00168693          	addi	a3,a3,1
    80005cbc:	00c787bb          	addw	a5,a5,a2
    80005cc0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005cc4:	fd5ff06f          	j	80005c98 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005cc8:	00813403          	ld	s0,8(sp)
    80005ccc:	01010113          	addi	sp,sp,16
    80005cd0:	00008067          	ret

0000000080005cd4 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005cd4:	fc010113          	addi	sp,sp,-64
    80005cd8:	02113c23          	sd	ra,56(sp)
    80005cdc:	02813823          	sd	s0,48(sp)
    80005ce0:	02913423          	sd	s1,40(sp)
    80005ce4:	03213023          	sd	s2,32(sp)
    80005ce8:	01313c23          	sd	s3,24(sp)
    80005cec:	04010413          	addi	s0,sp,64
    80005cf0:	00050493          	mv	s1,a0
    80005cf4:	00058913          	mv	s2,a1
    80005cf8:	00060993          	mv	s3,a2
    LOCK();
    80005cfc:	00100613          	li	a2,1
    80005d00:	00000593          	li	a1,0
    80005d04:	00006517          	auipc	a0,0x6
    80005d08:	edc50513          	addi	a0,a0,-292 # 8000bbe0 <lockPrint>
    80005d0c:	ffffb097          	auipc	ra,0xffffb
    80005d10:	4fc080e7          	jalr	1276(ra) # 80001208 <copy_and_swap>
    80005d14:	fe0514e3          	bnez	a0,80005cfc <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005d18:	00098463          	beqz	s3,80005d20 <_Z8printIntiii+0x4c>
    80005d1c:	0804c463          	bltz	s1,80005da4 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005d20:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005d24:	00000593          	li	a1,0
    }

    i = 0;
    80005d28:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005d2c:	0009079b          	sext.w	a5,s2
    80005d30:	0325773b          	remuw	a4,a0,s2
    80005d34:	00048613          	mv	a2,s1
    80005d38:	0014849b          	addiw	s1,s1,1
    80005d3c:	02071693          	slli	a3,a4,0x20
    80005d40:	0206d693          	srli	a3,a3,0x20
    80005d44:	00004717          	auipc	a4,0x4
    80005d48:	83c70713          	addi	a4,a4,-1988 # 80009580 <_ZL6digits>
    80005d4c:	00d70733          	add	a4,a4,a3
    80005d50:	00074683          	lbu	a3,0(a4)
    80005d54:	fd040713          	addi	a4,s0,-48
    80005d58:	00c70733          	add	a4,a4,a2
    80005d5c:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005d60:	0005071b          	sext.w	a4,a0
    80005d64:	0325553b          	divuw	a0,a0,s2
    80005d68:	fcf772e3          	bgeu	a4,a5,80005d2c <_Z8printIntiii+0x58>
    if (neg)
    80005d6c:	00058c63          	beqz	a1,80005d84 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005d70:	fd040793          	addi	a5,s0,-48
    80005d74:	009784b3          	add	s1,a5,s1
    80005d78:	02d00793          	li	a5,45
    80005d7c:	fef48823          	sb	a5,-16(s1)
    80005d80:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005d84:	fff4849b          	addiw	s1,s1,-1
    80005d88:	0204c463          	bltz	s1,80005db0 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005d8c:	fd040793          	addi	a5,s0,-48
    80005d90:	009787b3          	add	a5,a5,s1
    80005d94:	ff07c503          	lbu	a0,-16(a5)
    80005d98:	ffffb097          	auipc	ra,0xffffb
    80005d9c:	790080e7          	jalr	1936(ra) # 80001528 <putc>
    80005da0:	fe5ff06f          	j	80005d84 <_Z8printIntiii+0xb0>
        x = -xx;
    80005da4:	4090053b          	negw	a0,s1
        neg = 1;
    80005da8:	00100593          	li	a1,1
        x = -xx;
    80005dac:	f7dff06f          	j	80005d28 <_Z8printIntiii+0x54>

    UNLOCK();
    80005db0:	00000613          	li	a2,0
    80005db4:	00100593          	li	a1,1
    80005db8:	00006517          	auipc	a0,0x6
    80005dbc:	e2850513          	addi	a0,a0,-472 # 8000bbe0 <lockPrint>
    80005dc0:	ffffb097          	auipc	ra,0xffffb
    80005dc4:	448080e7          	jalr	1096(ra) # 80001208 <copy_and_swap>
    80005dc8:	fe0514e3          	bnez	a0,80005db0 <_Z8printIntiii+0xdc>
}
    80005dcc:	03813083          	ld	ra,56(sp)
    80005dd0:	03013403          	ld	s0,48(sp)
    80005dd4:	02813483          	ld	s1,40(sp)
    80005dd8:	02013903          	ld	s2,32(sp)
    80005ddc:	01813983          	ld	s3,24(sp)
    80005de0:	04010113          	addi	sp,sp,64
    80005de4:	00008067          	ret

0000000080005de8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80005de8:	fe010113          	addi	sp,sp,-32
    80005dec:	00113c23          	sd	ra,24(sp)
    80005df0:	00813823          	sd	s0,16(sp)
    80005df4:	00913423          	sd	s1,8(sp)
    80005df8:	01213023          	sd	s2,0(sp)
    80005dfc:	02010413          	addi	s0,sp,32
    80005e00:	00050493          	mv	s1,a0
    80005e04:	00b52023          	sw	a1,0(a0)
    80005e08:	00052823          	sw	zero,16(a0)
    80005e0c:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005e10:	00259513          	slli	a0,a1,0x2
    80005e14:	ffffb097          	auipc	ra,0xffffb
    80005e18:	434080e7          	jalr	1076(ra) # 80001248 <mem_alloc>
    80005e1c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005e20:	01000513          	li	a0,16
    80005e24:	ffffe097          	auipc	ra,0xffffe
    80005e28:	864080e7          	jalr	-1948(ra) # 80003688 <_Znwm>
    80005e2c:	00050913          	mv	s2,a0
    80005e30:	00000593          	li	a1,0
    80005e34:	ffffe097          	auipc	ra,0xffffe
    80005e38:	aa0080e7          	jalr	-1376(ra) # 800038d4 <_ZN9SemaphoreC1Ej>
    80005e3c:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    80005e40:	01000513          	li	a0,16
    80005e44:	ffffe097          	auipc	ra,0xffffe
    80005e48:	844080e7          	jalr	-1980(ra) # 80003688 <_Znwm>
    80005e4c:	00050913          	mv	s2,a0
    80005e50:	0004a583          	lw	a1,0(s1)
    80005e54:	ffffe097          	auipc	ra,0xffffe
    80005e58:	a80080e7          	jalr	-1408(ra) # 800038d4 <_ZN9SemaphoreC1Ej>
    80005e5c:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80005e60:	01000513          	li	a0,16
    80005e64:	ffffe097          	auipc	ra,0xffffe
    80005e68:	824080e7          	jalr	-2012(ra) # 80003688 <_Znwm>
    80005e6c:	00050913          	mv	s2,a0
    80005e70:	00100593          	li	a1,1
    80005e74:	ffffe097          	auipc	ra,0xffffe
    80005e78:	a60080e7          	jalr	-1440(ra) # 800038d4 <_ZN9SemaphoreC1Ej>
    80005e7c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005e80:	01000513          	li	a0,16
    80005e84:	ffffe097          	auipc	ra,0xffffe
    80005e88:	804080e7          	jalr	-2044(ra) # 80003688 <_Znwm>
    80005e8c:	00050913          	mv	s2,a0
    80005e90:	00100593          	li	a1,1
    80005e94:	ffffe097          	auipc	ra,0xffffe
    80005e98:	a40080e7          	jalr	-1472(ra) # 800038d4 <_ZN9SemaphoreC1Ej>
    80005e9c:	0324b823          	sd	s2,48(s1)
}
    80005ea0:	01813083          	ld	ra,24(sp)
    80005ea4:	01013403          	ld	s0,16(sp)
    80005ea8:	00813483          	ld	s1,8(sp)
    80005eac:	00013903          	ld	s2,0(sp)
    80005eb0:	02010113          	addi	sp,sp,32
    80005eb4:	00008067          	ret
    80005eb8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005ebc:	00090513          	mv	a0,s2
    80005ec0:	ffffd097          	auipc	ra,0xffffd
    80005ec4:	7f0080e7          	jalr	2032(ra) # 800036b0 <_ZdlPv>
    80005ec8:	00048513          	mv	a0,s1
    80005ecc:	00007097          	auipc	ra,0x7
    80005ed0:	dec080e7          	jalr	-532(ra) # 8000ccb8 <_Unwind_Resume>
    80005ed4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80005ed8:	00090513          	mv	a0,s2
    80005edc:	ffffd097          	auipc	ra,0xffffd
    80005ee0:	7d4080e7          	jalr	2004(ra) # 800036b0 <_ZdlPv>
    80005ee4:	00048513          	mv	a0,s1
    80005ee8:	00007097          	auipc	ra,0x7
    80005eec:	dd0080e7          	jalr	-560(ra) # 8000ccb8 <_Unwind_Resume>
    80005ef0:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005ef4:	00090513          	mv	a0,s2
    80005ef8:	ffffd097          	auipc	ra,0xffffd
    80005efc:	7b8080e7          	jalr	1976(ra) # 800036b0 <_ZdlPv>
    80005f00:	00048513          	mv	a0,s1
    80005f04:	00007097          	auipc	ra,0x7
    80005f08:	db4080e7          	jalr	-588(ra) # 8000ccb8 <_Unwind_Resume>
    80005f0c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005f10:	00090513          	mv	a0,s2
    80005f14:	ffffd097          	auipc	ra,0xffffd
    80005f18:	79c080e7          	jalr	1948(ra) # 800036b0 <_ZdlPv>
    80005f1c:	00048513          	mv	a0,s1
    80005f20:	00007097          	auipc	ra,0x7
    80005f24:	d98080e7          	jalr	-616(ra) # 8000ccb8 <_Unwind_Resume>

0000000080005f28 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    80005f28:	fe010113          	addi	sp,sp,-32
    80005f2c:	00113c23          	sd	ra,24(sp)
    80005f30:	00813823          	sd	s0,16(sp)
    80005f34:	00913423          	sd	s1,8(sp)
    80005f38:	02010413          	addi	s0,sp,32
    80005f3c:	00050493          	mv	s1,a0
    putc('\n');
    80005f40:	00a00513          	li	a0,10
    80005f44:	ffffb097          	auipc	ra,0xffffb
    80005f48:	5e4080e7          	jalr	1508(ra) # 80001528 <putc>
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005f4c:	0104a783          	lw	a5,16(s1)
    80005f50:	0144a703          	lw	a4,20(s1)
    80005f54:	00e78c63          	beq	a5,a4,80005f6c <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80005f58:	0017879b          	addiw	a5,a5,1
    80005f5c:	0004a703          	lw	a4,0(s1)
    80005f60:	02e7e7bb          	remw	a5,a5,a4
    80005f64:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005f68:	fe5ff06f          	j	80005f4c <_ZN9BufferCPPD1Ev+0x24>
    }
    putc('!');
    80005f6c:	02100513          	li	a0,33
    80005f70:	ffffb097          	auipc	ra,0xffffb
    80005f74:	5b8080e7          	jalr	1464(ra) # 80001528 <putc>
    putc('\n');
    80005f78:	00a00513          	li	a0,10
    80005f7c:	ffffb097          	auipc	ra,0xffffb
    80005f80:	5ac080e7          	jalr	1452(ra) # 80001528 <putc>

    mem_free(buffer);
    80005f84:	0084b503          	ld	a0,8(s1)
    80005f88:	ffffb097          	auipc	ra,0xffffb
    80005f8c:	2f0080e7          	jalr	752(ra) # 80001278 <mem_free>
    delete itemAvailable;
    80005f90:	0204b503          	ld	a0,32(s1)
    80005f94:	00050863          	beqz	a0,80005fa4 <_ZN9BufferCPPD1Ev+0x7c>
    80005f98:	00053783          	ld	a5,0(a0)
    80005f9c:	0087b783          	ld	a5,8(a5)
    80005fa0:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005fa4:	0184b503          	ld	a0,24(s1)
    80005fa8:	00050863          	beqz	a0,80005fb8 <_ZN9BufferCPPD1Ev+0x90>
    80005fac:	00053783          	ld	a5,0(a0)
    80005fb0:	0087b783          	ld	a5,8(a5)
    80005fb4:	000780e7          	jalr	a5
    delete mutexTail;
    80005fb8:	0304b503          	ld	a0,48(s1)
    80005fbc:	00050863          	beqz	a0,80005fcc <_ZN9BufferCPPD1Ev+0xa4>
    80005fc0:	00053783          	ld	a5,0(a0)
    80005fc4:	0087b783          	ld	a5,8(a5)
    80005fc8:	000780e7          	jalr	a5
    delete mutexHead;
    80005fcc:	0284b503          	ld	a0,40(s1)
    80005fd0:	00050863          	beqz	a0,80005fe0 <_ZN9BufferCPPD1Ev+0xb8>
    80005fd4:	00053783          	ld	a5,0(a0)
    80005fd8:	0087b783          	ld	a5,8(a5)
    80005fdc:	000780e7          	jalr	a5

}
    80005fe0:	01813083          	ld	ra,24(sp)
    80005fe4:	01013403          	ld	s0,16(sp)
    80005fe8:	00813483          	ld	s1,8(sp)
    80005fec:	02010113          	addi	sp,sp,32
    80005ff0:	00008067          	ret

0000000080005ff4 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80005ff4:	fe010113          	addi	sp,sp,-32
    80005ff8:	00113c23          	sd	ra,24(sp)
    80005ffc:	00813823          	sd	s0,16(sp)
    80006000:	00913423          	sd	s1,8(sp)
    80006004:	01213023          	sd	s2,0(sp)
    80006008:	02010413          	addi	s0,sp,32
    8000600c:	00050493          	mv	s1,a0
    80006010:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006014:	01853503          	ld	a0,24(a0)
    80006018:	ffffe097          	auipc	ra,0xffffe
    8000601c:	884080e7          	jalr	-1916(ra) # 8000389c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006020:	0304b503          	ld	a0,48(s1)
    80006024:	ffffe097          	auipc	ra,0xffffe
    80006028:	878080e7          	jalr	-1928(ra) # 8000389c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000602c:	0084b783          	ld	a5,8(s1)
    80006030:	0144a703          	lw	a4,20(s1)
    80006034:	00271713          	slli	a4,a4,0x2
    80006038:	00e787b3          	add	a5,a5,a4
    8000603c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006040:	0144a783          	lw	a5,20(s1)
    80006044:	0017879b          	addiw	a5,a5,1
    80006048:	0004a703          	lw	a4,0(s1)
    8000604c:	02e7e7bb          	remw	a5,a5,a4
    80006050:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006054:	0304b503          	ld	a0,48(s1)
    80006058:	ffffe097          	auipc	ra,0xffffe
    8000605c:	8c8080e7          	jalr	-1848(ra) # 80003920 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006060:	0204b503          	ld	a0,32(s1)
    80006064:	ffffe097          	auipc	ra,0xffffe
    80006068:	8bc080e7          	jalr	-1860(ra) # 80003920 <_ZN9Semaphore6signalEv>

}
    8000606c:	01813083          	ld	ra,24(sp)
    80006070:	01013403          	ld	s0,16(sp)
    80006074:	00813483          	ld	s1,8(sp)
    80006078:	00013903          	ld	s2,0(sp)
    8000607c:	02010113          	addi	sp,sp,32
    80006080:	00008067          	ret

0000000080006084 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006084:	fe010113          	addi	sp,sp,-32
    80006088:	00113c23          	sd	ra,24(sp)
    8000608c:	00813823          	sd	s0,16(sp)
    80006090:	00913423          	sd	s1,8(sp)
    80006094:	01213023          	sd	s2,0(sp)
    80006098:	02010413          	addi	s0,sp,32
    8000609c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800060a0:	02053503          	ld	a0,32(a0)
    800060a4:	ffffd097          	auipc	ra,0xffffd
    800060a8:	7f8080e7          	jalr	2040(ra) # 8000389c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800060ac:	0284b503          	ld	a0,40(s1)
    800060b0:	ffffd097          	auipc	ra,0xffffd
    800060b4:	7ec080e7          	jalr	2028(ra) # 8000389c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800060b8:	0084b703          	ld	a4,8(s1)
    800060bc:	0104a783          	lw	a5,16(s1)
    800060c0:	00279693          	slli	a3,a5,0x2
    800060c4:	00d70733          	add	a4,a4,a3
    800060c8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800060cc:	0017879b          	addiw	a5,a5,1
    800060d0:	0004a703          	lw	a4,0(s1)
    800060d4:	02e7e7bb          	remw	a5,a5,a4
    800060d8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800060dc:	0284b503          	ld	a0,40(s1)
    800060e0:	ffffe097          	auipc	ra,0xffffe
    800060e4:	840080e7          	jalr	-1984(ra) # 80003920 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800060e8:	0184b503          	ld	a0,24(s1)
    800060ec:	ffffe097          	auipc	ra,0xffffe
    800060f0:	834080e7          	jalr	-1996(ra) # 80003920 <_ZN9Semaphore6signalEv>

    return ret;
}
    800060f4:	00090513          	mv	a0,s2
    800060f8:	01813083          	ld	ra,24(sp)
    800060fc:	01013403          	ld	s0,16(sp)
    80006100:	00813483          	ld	s1,8(sp)
    80006104:	00013903          	ld	s2,0(sp)
    80006108:	02010113          	addi	sp,sp,32
    8000610c:	00008067          	ret

0000000080006110 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80006110:	ff010113          	addi	sp,sp,-16
    80006114:	00113423          	sd	ra,8(sp)
    80006118:	00813023          	sd	s0,0(sp)
    8000611c:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80006120:	00000097          	auipc	ra,0x0
    80006124:	95c080e7          	jalr	-1700(ra) # 80005a7c <_Z18Threads_C_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80006128:	00813083          	ld	ra,8(sp)
    8000612c:	00013403          	ld	s0,0(sp)
    80006130:	01010113          	addi	sp,sp,16
    80006134:	00008067          	ret

0000000080006138 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80006138:	fe010113          	addi	sp,sp,-32
    8000613c:	00113c23          	sd	ra,24(sp)
    80006140:	00813823          	sd	s0,16(sp)
    80006144:	00913423          	sd	s1,8(sp)
    80006148:	01213023          	sd	s2,0(sp)
    8000614c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006150:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006154:	00600493          	li	s1,6
    while (--i > 0) {
    80006158:	fff4849b          	addiw	s1,s1,-1
    8000615c:	04905463          	blez	s1,800061a4 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80006160:	00003517          	auipc	a0,0x3
    80006164:	43850513          	addi	a0,a0,1080 # 80009598 <_ZL6digits+0x18>
    80006168:	00000097          	auipc	ra,0x0
    8000616c:	9d4080e7          	jalr	-1580(ra) # 80005b3c <_Z11printStringPKc>
        printInt(sleep_time);
    80006170:	00000613          	li	a2,0
    80006174:	00a00593          	li	a1,10
    80006178:	0009051b          	sext.w	a0,s2
    8000617c:	00000097          	auipc	ra,0x0
    80006180:	b58080e7          	jalr	-1192(ra) # 80005cd4 <_Z8printIntiii>
        printString(" !\n");
    80006184:	00003517          	auipc	a0,0x3
    80006188:	41c50513          	addi	a0,a0,1052 # 800095a0 <_ZL6digits+0x20>
    8000618c:	00000097          	auipc	ra,0x0
    80006190:	9b0080e7          	jalr	-1616(ra) # 80005b3c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006194:	00090513          	mv	a0,s2
    80006198:	ffffb097          	auipc	ra,0xffffb
    8000619c:	290080e7          	jalr	656(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    800061a0:	fb9ff06f          	j	80006158 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800061a4:	00a00793          	li	a5,10
    800061a8:	02f95933          	divu	s2,s2,a5
    800061ac:	fff90913          	addi	s2,s2,-1
    800061b0:	00006797          	auipc	a5,0x6
    800061b4:	a3878793          	addi	a5,a5,-1480 # 8000bbe8 <finished>
    800061b8:	01278933          	add	s2,a5,s2
    800061bc:	00100793          	li	a5,1
    800061c0:	00f90023          	sb	a5,0(s2)
}
    800061c4:	01813083          	ld	ra,24(sp)
    800061c8:	01013403          	ld	s0,16(sp)
    800061cc:	00813483          	ld	s1,8(sp)
    800061d0:	00013903          	ld	s2,0(sp)
    800061d4:	02010113          	addi	sp,sp,32
    800061d8:	00008067          	ret

00000000800061dc <_Z12testSleepingv>:

void testSleeping()
{
    800061dc:	fc010113          	addi	sp,sp,-64
    800061e0:	02113c23          	sd	ra,56(sp)
    800061e4:	02813823          	sd	s0,48(sp)
    800061e8:	02913423          	sd	s1,40(sp)
    800061ec:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800061f0:	00a00793          	li	a5,10
    800061f4:	fcf43823          	sd	a5,-48(s0)
    800061f8:	01400793          	li	a5,20
    800061fc:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006200:	00000493          	li	s1,0
    80006204:	02c0006f          	j	80006230 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006208:	00349793          	slli	a5,s1,0x3
    8000620c:	fd040613          	addi	a2,s0,-48
    80006210:	00f60633          	add	a2,a2,a5
    80006214:	00000597          	auipc	a1,0x0
    80006218:	f2458593          	addi	a1,a1,-220 # 80006138 <_Z9sleepyRunPv>
    8000621c:	fc040513          	addi	a0,s0,-64
    80006220:	00f50533          	add	a0,a0,a5
    80006224:	ffffb097          	auipc	ra,0xffffb
    80006228:	080080e7          	jalr	128(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000622c:	0014849b          	addiw	s1,s1,1
    80006230:	00100793          	li	a5,1
    80006234:	fc97dae3          	bge	a5,s1,80006208 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006238:	00006797          	auipc	a5,0x6
    8000623c:	9b07c783          	lbu	a5,-1616(a5) # 8000bbe8 <finished>
    80006240:	fe078ce3          	beqz	a5,80006238 <_Z12testSleepingv+0x5c>
    80006244:	00006797          	auipc	a5,0x6
    80006248:	9a57c783          	lbu	a5,-1627(a5) # 8000bbe9 <finished+0x1>
    8000624c:	fe0786e3          	beqz	a5,80006238 <_Z12testSleepingv+0x5c>
}
    80006250:	03813083          	ld	ra,56(sp)
    80006254:	03013403          	ld	s0,48(sp)
    80006258:	02813483          	ld	s1,40(sp)
    8000625c:	04010113          	addi	sp,sp,64
    80006260:	00008067          	ret

0000000080006264 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    80006264:	fe010113          	addi	sp,sp,-32
    80006268:	00113c23          	sd	ra,24(sp)
    8000626c:	00813823          	sd	s0,16(sp)
    80006270:	00913423          	sd	s1,8(sp)
    80006274:	02010413          	addi	s0,sp,32
    80006278:	00050493          	mv	s1,a0
    8000627c:	00b52023          	sw	a1,0(a0)
    80006280:	00052823          	sw	zero,16(a0)
    80006284:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006288:	00259513          	slli	a0,a1,0x2
    8000628c:	ffffb097          	auipc	ra,0xffffb
    80006290:	fbc080e7          	jalr	-68(ra) # 80001248 <mem_alloc>
    80006294:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006298:	00000593          	li	a1,0
    8000629c:	02048513          	addi	a0,s1,32
    800062a0:	ffffb097          	auipc	ra,0xffffb
    800062a4:	0cc080e7          	jalr	204(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    800062a8:	0004a583          	lw	a1,0(s1)
    800062ac:	01848513          	addi	a0,s1,24
    800062b0:	ffffb097          	auipc	ra,0xffffb
    800062b4:	0bc080e7          	jalr	188(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    800062b8:	00100593          	li	a1,1
    800062bc:	02848513          	addi	a0,s1,40
    800062c0:	ffffb097          	auipc	ra,0xffffb
    800062c4:	0ac080e7          	jalr	172(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    800062c8:	00100593          	li	a1,1
    800062cc:	03048513          	addi	a0,s1,48
    800062d0:	ffffb097          	auipc	ra,0xffffb
    800062d4:	09c080e7          	jalr	156(ra) # 8000136c <sem_open>
}
    800062d8:	01813083          	ld	ra,24(sp)
    800062dc:	01013403          	ld	s0,16(sp)
    800062e0:	00813483          	ld	s1,8(sp)
    800062e4:	02010113          	addi	sp,sp,32
    800062e8:	00008067          	ret

00000000800062ec <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    800062ec:	fe010113          	addi	sp,sp,-32
    800062f0:	00113c23          	sd	ra,24(sp)
    800062f4:	00813823          	sd	s0,16(sp)
    800062f8:	00913423          	sd	s1,8(sp)
    800062fc:	02010413          	addi	s0,sp,32
    80006300:	00050493          	mv	s1,a0
    putc('\n');
    80006304:	00a00513          	li	a0,10
    80006308:	ffffb097          	auipc	ra,0xffffb
    8000630c:	220080e7          	jalr	544(ra) # 80001528 <putc>
    //todo
    //placeholder
    printString("Buffer deleted!\n");
    80006310:	00003517          	auipc	a0,0x3
    80006314:	29850513          	addi	a0,a0,664 # 800095a8 <_ZL6digits+0x28>
    80006318:	00000097          	auipc	ra,0x0
    8000631c:	824080e7          	jalr	-2012(ra) # 80005b3c <_Z11printStringPKc>
    while (head != tail) {
    80006320:	0104a783          	lw	a5,16(s1)
    80006324:	0144a703          	lw	a4,20(s1)
    80006328:	00e78c63          	beq	a5,a4,80006340 <_ZN6BufferD1Ev+0x54>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    8000632c:	0017879b          	addiw	a5,a5,1
    80006330:	0004a703          	lw	a4,0(s1)
    80006334:	02e7e7bb          	remw	a5,a5,a4
    80006338:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    8000633c:	fe5ff06f          	j	80006320 <_ZN6BufferD1Ev+0x34>
    }
    putc('!');
    80006340:	02100513          	li	a0,33
    80006344:	ffffb097          	auipc	ra,0xffffb
    80006348:	1e4080e7          	jalr	484(ra) # 80001528 <putc>
    putc('\n');
    8000634c:	00a00513          	li	a0,10
    80006350:	ffffb097          	auipc	ra,0xffffb
    80006354:	1d8080e7          	jalr	472(ra) # 80001528 <putc>

    mem_free(buffer);
    80006358:	0084b503          	ld	a0,8(s1)
    8000635c:	ffffb097          	auipc	ra,0xffffb
    80006360:	f1c080e7          	jalr	-228(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    80006364:	0204b503          	ld	a0,32(s1)
    80006368:	ffffb097          	auipc	ra,0xffffb
    8000636c:	03c080e7          	jalr	60(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    80006370:	0184b503          	ld	a0,24(s1)
    80006374:	ffffb097          	auipc	ra,0xffffb
    80006378:	030080e7          	jalr	48(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    8000637c:	0304b503          	ld	a0,48(s1)
    80006380:	ffffb097          	auipc	ra,0xffffb
    80006384:	024080e7          	jalr	36(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    80006388:	0284b503          	ld	a0,40(s1)
    8000638c:	ffffb097          	auipc	ra,0xffffb
    80006390:	018080e7          	jalr	24(ra) # 800013a4 <sem_close>
}
    80006394:	01813083          	ld	ra,24(sp)
    80006398:	01013403          	ld	s0,16(sp)
    8000639c:	00813483          	ld	s1,8(sp)
    800063a0:	02010113          	addi	sp,sp,32
    800063a4:	00008067          	ret

00000000800063a8 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    800063a8:	fe010113          	addi	sp,sp,-32
    800063ac:	00113c23          	sd	ra,24(sp)
    800063b0:	00813823          	sd	s0,16(sp)
    800063b4:	00913423          	sd	s1,8(sp)
    800063b8:	01213023          	sd	s2,0(sp)
    800063bc:	02010413          	addi	s0,sp,32
    800063c0:	00050493          	mv	s1,a0
    800063c4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800063c8:	01853503          	ld	a0,24(a0)
    800063cc:	ffffb097          	auipc	ra,0xffffb
    800063d0:	004080e7          	jalr	4(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    800063d4:	0304b503          	ld	a0,48(s1)
    800063d8:	ffffb097          	auipc	ra,0xffffb
    800063dc:	ff8080e7          	jalr	-8(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    800063e0:	0084b783          	ld	a5,8(s1)
    800063e4:	0144a703          	lw	a4,20(s1)
    800063e8:	00271713          	slli	a4,a4,0x2
    800063ec:	00e787b3          	add	a5,a5,a4
    800063f0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800063f4:	0144a783          	lw	a5,20(s1)
    800063f8:	0017879b          	addiw	a5,a5,1
    800063fc:	0004a703          	lw	a4,0(s1)
    80006400:	02e7e7bb          	remw	a5,a5,a4
    80006404:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006408:	0304b503          	ld	a0,48(s1)
    8000640c:	ffffb097          	auipc	ra,0xffffb
    80006410:	ff0080e7          	jalr	-16(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    80006414:	0204b503          	ld	a0,32(s1)
    80006418:	ffffb097          	auipc	ra,0xffffb
    8000641c:	fe4080e7          	jalr	-28(ra) # 800013fc <sem_signal>

}
    80006420:	01813083          	ld	ra,24(sp)
    80006424:	01013403          	ld	s0,16(sp)
    80006428:	00813483          	ld	s1,8(sp)
    8000642c:	00013903          	ld	s2,0(sp)
    80006430:	02010113          	addi	sp,sp,32
    80006434:	00008067          	ret

0000000080006438 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006438:	fe010113          	addi	sp,sp,-32
    8000643c:	00113c23          	sd	ra,24(sp)
    80006440:	00813823          	sd	s0,16(sp)
    80006444:	00913423          	sd	s1,8(sp)
    80006448:	01213023          	sd	s2,0(sp)
    8000644c:	02010413          	addi	s0,sp,32
    80006450:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006454:	02053503          	ld	a0,32(a0)
    80006458:	ffffb097          	auipc	ra,0xffffb
    8000645c:	f78080e7          	jalr	-136(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    80006460:	0284b503          	ld	a0,40(s1)
    80006464:	ffffb097          	auipc	ra,0xffffb
    80006468:	f6c080e7          	jalr	-148(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    8000646c:	0084b703          	ld	a4,8(s1)
    80006470:	0104a783          	lw	a5,16(s1)
    80006474:	00279693          	slli	a3,a5,0x2
    80006478:	00d70733          	add	a4,a4,a3
    8000647c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006480:	0017879b          	addiw	a5,a5,1
    80006484:	0004a703          	lw	a4,0(s1)
    80006488:	02e7e7bb          	remw	a5,a5,a4
    8000648c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006490:	0284b503          	ld	a0,40(s1)
    80006494:	ffffb097          	auipc	ra,0xffffb
    80006498:	f68080e7          	jalr	-152(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    8000649c:	0184b503          	ld	a0,24(s1)
    800064a0:	ffffb097          	auipc	ra,0xffffb
    800064a4:	f5c080e7          	jalr	-164(ra) # 800013fc <sem_signal>

    return ret;
}
    800064a8:	00090513          	mv	a0,s2
    800064ac:	01813083          	ld	ra,24(sp)
    800064b0:	01013403          	ld	s0,16(sp)
    800064b4:	00813483          	ld	s1,8(sp)
    800064b8:	00013903          	ld	s2,0(sp)
    800064bc:	02010113          	addi	sp,sp,32
    800064c0:	00008067          	ret

00000000800064c4 <start>:
    800064c4:	ff010113          	addi	sp,sp,-16
    800064c8:	00813423          	sd	s0,8(sp)
    800064cc:	01010413          	addi	s0,sp,16
    800064d0:	300027f3          	csrr	a5,mstatus
    800064d4:	ffffe737          	lui	a4,0xffffe
    800064d8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff19af>
    800064dc:	00e7f7b3          	and	a5,a5,a4
    800064e0:	00001737          	lui	a4,0x1
    800064e4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800064e8:	00e7e7b3          	or	a5,a5,a4
    800064ec:	30079073          	csrw	mstatus,a5
    800064f0:	00000797          	auipc	a5,0x0
    800064f4:	16078793          	addi	a5,a5,352 # 80006650 <system_main>
    800064f8:	34179073          	csrw	mepc,a5
    800064fc:	00000793          	li	a5,0
    80006500:	18079073          	csrw	satp,a5
    80006504:	000107b7          	lui	a5,0x10
    80006508:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000650c:	30279073          	csrw	medeleg,a5
    80006510:	30379073          	csrw	mideleg,a5
    80006514:	104027f3          	csrr	a5,sie
    80006518:	2227e793          	ori	a5,a5,546
    8000651c:	10479073          	csrw	sie,a5
    80006520:	fff00793          	li	a5,-1
    80006524:	00a7d793          	srli	a5,a5,0xa
    80006528:	3b079073          	csrw	pmpaddr0,a5
    8000652c:	00f00793          	li	a5,15
    80006530:	3a079073          	csrw	pmpcfg0,a5
    80006534:	f14027f3          	csrr	a5,mhartid
    80006538:	0200c737          	lui	a4,0x200c
    8000653c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006540:	0007869b          	sext.w	a3,a5
    80006544:	00269713          	slli	a4,a3,0x2
    80006548:	000f4637          	lui	a2,0xf4
    8000654c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006550:	00d70733          	add	a4,a4,a3
    80006554:	0037979b          	slliw	a5,a5,0x3
    80006558:	020046b7          	lui	a3,0x2004
    8000655c:	00d787b3          	add	a5,a5,a3
    80006560:	00c585b3          	add	a1,a1,a2
    80006564:	00371693          	slli	a3,a4,0x3
    80006568:	00005717          	auipc	a4,0x5
    8000656c:	68870713          	addi	a4,a4,1672 # 8000bbf0 <timer_scratch>
    80006570:	00b7b023          	sd	a1,0(a5)
    80006574:	00d70733          	add	a4,a4,a3
    80006578:	00f73c23          	sd	a5,24(a4)
    8000657c:	02c73023          	sd	a2,32(a4)
    80006580:	34071073          	csrw	mscratch,a4
    80006584:	00000797          	auipc	a5,0x0
    80006588:	6ec78793          	addi	a5,a5,1772 # 80006c70 <timervec>
    8000658c:	30579073          	csrw	mtvec,a5
    80006590:	300027f3          	csrr	a5,mstatus
    80006594:	0087e793          	ori	a5,a5,8
    80006598:	30079073          	csrw	mstatus,a5
    8000659c:	304027f3          	csrr	a5,mie
    800065a0:	0807e793          	ori	a5,a5,128
    800065a4:	30479073          	csrw	mie,a5
    800065a8:	f14027f3          	csrr	a5,mhartid
    800065ac:	0007879b          	sext.w	a5,a5
    800065b0:	00078213          	mv	tp,a5
    800065b4:	30200073          	mret
    800065b8:	00813403          	ld	s0,8(sp)
    800065bc:	01010113          	addi	sp,sp,16
    800065c0:	00008067          	ret

00000000800065c4 <timerinit>:
    800065c4:	ff010113          	addi	sp,sp,-16
    800065c8:	00813423          	sd	s0,8(sp)
    800065cc:	01010413          	addi	s0,sp,16
    800065d0:	f14027f3          	csrr	a5,mhartid
    800065d4:	0200c737          	lui	a4,0x200c
    800065d8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800065dc:	0007869b          	sext.w	a3,a5
    800065e0:	00269713          	slli	a4,a3,0x2
    800065e4:	000f4637          	lui	a2,0xf4
    800065e8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800065ec:	00d70733          	add	a4,a4,a3
    800065f0:	0037979b          	slliw	a5,a5,0x3
    800065f4:	020046b7          	lui	a3,0x2004
    800065f8:	00d787b3          	add	a5,a5,a3
    800065fc:	00c585b3          	add	a1,a1,a2
    80006600:	00371693          	slli	a3,a4,0x3
    80006604:	00005717          	auipc	a4,0x5
    80006608:	5ec70713          	addi	a4,a4,1516 # 8000bbf0 <timer_scratch>
    8000660c:	00b7b023          	sd	a1,0(a5)
    80006610:	00d70733          	add	a4,a4,a3
    80006614:	00f73c23          	sd	a5,24(a4)
    80006618:	02c73023          	sd	a2,32(a4)
    8000661c:	34071073          	csrw	mscratch,a4
    80006620:	00000797          	auipc	a5,0x0
    80006624:	65078793          	addi	a5,a5,1616 # 80006c70 <timervec>
    80006628:	30579073          	csrw	mtvec,a5
    8000662c:	300027f3          	csrr	a5,mstatus
    80006630:	0087e793          	ori	a5,a5,8
    80006634:	30079073          	csrw	mstatus,a5
    80006638:	304027f3          	csrr	a5,mie
    8000663c:	0807e793          	ori	a5,a5,128
    80006640:	30479073          	csrw	mie,a5
    80006644:	00813403          	ld	s0,8(sp)
    80006648:	01010113          	addi	sp,sp,16
    8000664c:	00008067          	ret

0000000080006650 <system_main>:
    80006650:	fe010113          	addi	sp,sp,-32
    80006654:	00813823          	sd	s0,16(sp)
    80006658:	00913423          	sd	s1,8(sp)
    8000665c:	00113c23          	sd	ra,24(sp)
    80006660:	02010413          	addi	s0,sp,32
    80006664:	00000097          	auipc	ra,0x0
    80006668:	0c4080e7          	jalr	196(ra) # 80006728 <cpuid>
    8000666c:	00005497          	auipc	s1,0x5
    80006670:	47448493          	addi	s1,s1,1140 # 8000bae0 <started>
    80006674:	02050263          	beqz	a0,80006698 <system_main+0x48>
    80006678:	0004a783          	lw	a5,0(s1)
    8000667c:	0007879b          	sext.w	a5,a5
    80006680:	fe078ce3          	beqz	a5,80006678 <system_main+0x28>
    80006684:	0ff0000f          	fence
    80006688:	00003517          	auipc	a0,0x3
    8000668c:	f6850513          	addi	a0,a0,-152 # 800095f0 <_ZL6digits+0x70>
    80006690:	00001097          	auipc	ra,0x1
    80006694:	a7c080e7          	jalr	-1412(ra) # 8000710c <panic>
    80006698:	00001097          	auipc	ra,0x1
    8000669c:	9d0080e7          	jalr	-1584(ra) # 80007068 <consoleinit>
    800066a0:	00001097          	auipc	ra,0x1
    800066a4:	15c080e7          	jalr	348(ra) # 800077fc <printfinit>
    800066a8:	00003517          	auipc	a0,0x3
    800066ac:	a5850513          	addi	a0,a0,-1448 # 80009100 <CONSOLE_STATUS+0xf0>
    800066b0:	00001097          	auipc	ra,0x1
    800066b4:	ab8080e7          	jalr	-1352(ra) # 80007168 <__printf>
    800066b8:	00003517          	auipc	a0,0x3
    800066bc:	f0850513          	addi	a0,a0,-248 # 800095c0 <_ZL6digits+0x40>
    800066c0:	00001097          	auipc	ra,0x1
    800066c4:	aa8080e7          	jalr	-1368(ra) # 80007168 <__printf>
    800066c8:	00003517          	auipc	a0,0x3
    800066cc:	a3850513          	addi	a0,a0,-1480 # 80009100 <CONSOLE_STATUS+0xf0>
    800066d0:	00001097          	auipc	ra,0x1
    800066d4:	a98080e7          	jalr	-1384(ra) # 80007168 <__printf>
    800066d8:	00001097          	auipc	ra,0x1
    800066dc:	4b0080e7          	jalr	1200(ra) # 80007b88 <kinit>
    800066e0:	00000097          	auipc	ra,0x0
    800066e4:	148080e7          	jalr	328(ra) # 80006828 <trapinit>
    800066e8:	00000097          	auipc	ra,0x0
    800066ec:	16c080e7          	jalr	364(ra) # 80006854 <trapinithart>
    800066f0:	00000097          	auipc	ra,0x0
    800066f4:	5c0080e7          	jalr	1472(ra) # 80006cb0 <plicinit>
    800066f8:	00000097          	auipc	ra,0x0
    800066fc:	5e0080e7          	jalr	1504(ra) # 80006cd8 <plicinithart>
    80006700:	00000097          	auipc	ra,0x0
    80006704:	078080e7          	jalr	120(ra) # 80006778 <userinit>
    80006708:	0ff0000f          	fence
    8000670c:	00100793          	li	a5,1
    80006710:	00003517          	auipc	a0,0x3
    80006714:	ec850513          	addi	a0,a0,-312 # 800095d8 <_ZL6digits+0x58>
    80006718:	00f4a023          	sw	a5,0(s1)
    8000671c:	00001097          	auipc	ra,0x1
    80006720:	a4c080e7          	jalr	-1460(ra) # 80007168 <__printf>
    80006724:	0000006f          	j	80006724 <system_main+0xd4>

0000000080006728 <cpuid>:
    80006728:	ff010113          	addi	sp,sp,-16
    8000672c:	00813423          	sd	s0,8(sp)
    80006730:	01010413          	addi	s0,sp,16
    80006734:	00020513          	mv	a0,tp
    80006738:	00813403          	ld	s0,8(sp)
    8000673c:	0005051b          	sext.w	a0,a0
    80006740:	01010113          	addi	sp,sp,16
    80006744:	00008067          	ret

0000000080006748 <mycpu>:
    80006748:	ff010113          	addi	sp,sp,-16
    8000674c:	00813423          	sd	s0,8(sp)
    80006750:	01010413          	addi	s0,sp,16
    80006754:	00020793          	mv	a5,tp
    80006758:	00813403          	ld	s0,8(sp)
    8000675c:	0007879b          	sext.w	a5,a5
    80006760:	00779793          	slli	a5,a5,0x7
    80006764:	00006517          	auipc	a0,0x6
    80006768:	4bc50513          	addi	a0,a0,1212 # 8000cc20 <cpus>
    8000676c:	00f50533          	add	a0,a0,a5
    80006770:	01010113          	addi	sp,sp,16
    80006774:	00008067          	ret

0000000080006778 <userinit>:
    80006778:	ff010113          	addi	sp,sp,-16
    8000677c:	00813423          	sd	s0,8(sp)
    80006780:	01010413          	addi	s0,sp,16
    80006784:	00813403          	ld	s0,8(sp)
    80006788:	01010113          	addi	sp,sp,16
    8000678c:	ffffd317          	auipc	t1,0xffffd
    80006790:	e1830067          	jr	-488(t1) # 800035a4 <main>

0000000080006794 <either_copyout>:
    80006794:	ff010113          	addi	sp,sp,-16
    80006798:	00813023          	sd	s0,0(sp)
    8000679c:	00113423          	sd	ra,8(sp)
    800067a0:	01010413          	addi	s0,sp,16
    800067a4:	02051663          	bnez	a0,800067d0 <either_copyout+0x3c>
    800067a8:	00058513          	mv	a0,a1
    800067ac:	00060593          	mv	a1,a2
    800067b0:	0006861b          	sext.w	a2,a3
    800067b4:	00002097          	auipc	ra,0x2
    800067b8:	c60080e7          	jalr	-928(ra) # 80008414 <__memmove>
    800067bc:	00813083          	ld	ra,8(sp)
    800067c0:	00013403          	ld	s0,0(sp)
    800067c4:	00000513          	li	a0,0
    800067c8:	01010113          	addi	sp,sp,16
    800067cc:	00008067          	ret
    800067d0:	00003517          	auipc	a0,0x3
    800067d4:	e4850513          	addi	a0,a0,-440 # 80009618 <_ZL6digits+0x98>
    800067d8:	00001097          	auipc	ra,0x1
    800067dc:	934080e7          	jalr	-1740(ra) # 8000710c <panic>

00000000800067e0 <either_copyin>:
    800067e0:	ff010113          	addi	sp,sp,-16
    800067e4:	00813023          	sd	s0,0(sp)
    800067e8:	00113423          	sd	ra,8(sp)
    800067ec:	01010413          	addi	s0,sp,16
    800067f0:	02059463          	bnez	a1,80006818 <either_copyin+0x38>
    800067f4:	00060593          	mv	a1,a2
    800067f8:	0006861b          	sext.w	a2,a3
    800067fc:	00002097          	auipc	ra,0x2
    80006800:	c18080e7          	jalr	-1000(ra) # 80008414 <__memmove>
    80006804:	00813083          	ld	ra,8(sp)
    80006808:	00013403          	ld	s0,0(sp)
    8000680c:	00000513          	li	a0,0
    80006810:	01010113          	addi	sp,sp,16
    80006814:	00008067          	ret
    80006818:	00003517          	auipc	a0,0x3
    8000681c:	e2850513          	addi	a0,a0,-472 # 80009640 <_ZL6digits+0xc0>
    80006820:	00001097          	auipc	ra,0x1
    80006824:	8ec080e7          	jalr	-1812(ra) # 8000710c <panic>

0000000080006828 <trapinit>:
    80006828:	ff010113          	addi	sp,sp,-16
    8000682c:	00813423          	sd	s0,8(sp)
    80006830:	01010413          	addi	s0,sp,16
    80006834:	00813403          	ld	s0,8(sp)
    80006838:	00003597          	auipc	a1,0x3
    8000683c:	e3058593          	addi	a1,a1,-464 # 80009668 <_ZL6digits+0xe8>
    80006840:	00006517          	auipc	a0,0x6
    80006844:	46050513          	addi	a0,a0,1120 # 8000cca0 <tickslock>
    80006848:	01010113          	addi	sp,sp,16
    8000684c:	00001317          	auipc	t1,0x1
    80006850:	5cc30067          	jr	1484(t1) # 80007e18 <initlock>

0000000080006854 <trapinithart>:
    80006854:	ff010113          	addi	sp,sp,-16
    80006858:	00813423          	sd	s0,8(sp)
    8000685c:	01010413          	addi	s0,sp,16
    80006860:	00000797          	auipc	a5,0x0
    80006864:	30078793          	addi	a5,a5,768 # 80006b60 <kernelvec>
    80006868:	10579073          	csrw	stvec,a5
    8000686c:	00813403          	ld	s0,8(sp)
    80006870:	01010113          	addi	sp,sp,16
    80006874:	00008067          	ret

0000000080006878 <usertrap>:
    80006878:	ff010113          	addi	sp,sp,-16
    8000687c:	00813423          	sd	s0,8(sp)
    80006880:	01010413          	addi	s0,sp,16
    80006884:	00813403          	ld	s0,8(sp)
    80006888:	01010113          	addi	sp,sp,16
    8000688c:	00008067          	ret

0000000080006890 <usertrapret>:
    80006890:	ff010113          	addi	sp,sp,-16
    80006894:	00813423          	sd	s0,8(sp)
    80006898:	01010413          	addi	s0,sp,16
    8000689c:	00813403          	ld	s0,8(sp)
    800068a0:	01010113          	addi	sp,sp,16
    800068a4:	00008067          	ret

00000000800068a8 <kerneltrap>:
    800068a8:	fe010113          	addi	sp,sp,-32
    800068ac:	00813823          	sd	s0,16(sp)
    800068b0:	00113c23          	sd	ra,24(sp)
    800068b4:	00913423          	sd	s1,8(sp)
    800068b8:	02010413          	addi	s0,sp,32
    800068bc:	142025f3          	csrr	a1,scause
    800068c0:	100027f3          	csrr	a5,sstatus
    800068c4:	0027f793          	andi	a5,a5,2
    800068c8:	10079c63          	bnez	a5,800069e0 <kerneltrap+0x138>
    800068cc:	142027f3          	csrr	a5,scause
    800068d0:	0207ce63          	bltz	a5,8000690c <kerneltrap+0x64>
    800068d4:	00003517          	auipc	a0,0x3
    800068d8:	ddc50513          	addi	a0,a0,-548 # 800096b0 <_ZL6digits+0x130>
    800068dc:	00001097          	auipc	ra,0x1
    800068e0:	88c080e7          	jalr	-1908(ra) # 80007168 <__printf>
    800068e4:	141025f3          	csrr	a1,sepc
    800068e8:	14302673          	csrr	a2,stval
    800068ec:	00003517          	auipc	a0,0x3
    800068f0:	dd450513          	addi	a0,a0,-556 # 800096c0 <_ZL6digits+0x140>
    800068f4:	00001097          	auipc	ra,0x1
    800068f8:	874080e7          	jalr	-1932(ra) # 80007168 <__printf>
    800068fc:	00003517          	auipc	a0,0x3
    80006900:	ddc50513          	addi	a0,a0,-548 # 800096d8 <_ZL6digits+0x158>
    80006904:	00001097          	auipc	ra,0x1
    80006908:	808080e7          	jalr	-2040(ra) # 8000710c <panic>
    8000690c:	0ff7f713          	andi	a4,a5,255
    80006910:	00900693          	li	a3,9
    80006914:	04d70063          	beq	a4,a3,80006954 <kerneltrap+0xac>
    80006918:	fff00713          	li	a4,-1
    8000691c:	03f71713          	slli	a4,a4,0x3f
    80006920:	00170713          	addi	a4,a4,1
    80006924:	fae798e3          	bne	a5,a4,800068d4 <kerneltrap+0x2c>
    80006928:	00000097          	auipc	ra,0x0
    8000692c:	e00080e7          	jalr	-512(ra) # 80006728 <cpuid>
    80006930:	06050663          	beqz	a0,8000699c <kerneltrap+0xf4>
    80006934:	144027f3          	csrr	a5,sip
    80006938:	ffd7f793          	andi	a5,a5,-3
    8000693c:	14479073          	csrw	sip,a5
    80006940:	01813083          	ld	ra,24(sp)
    80006944:	01013403          	ld	s0,16(sp)
    80006948:	00813483          	ld	s1,8(sp)
    8000694c:	02010113          	addi	sp,sp,32
    80006950:	00008067          	ret
    80006954:	00000097          	auipc	ra,0x0
    80006958:	3d0080e7          	jalr	976(ra) # 80006d24 <plic_claim>
    8000695c:	00a00793          	li	a5,10
    80006960:	00050493          	mv	s1,a0
    80006964:	06f50863          	beq	a0,a5,800069d4 <kerneltrap+0x12c>
    80006968:	fc050ce3          	beqz	a0,80006940 <kerneltrap+0x98>
    8000696c:	00050593          	mv	a1,a0
    80006970:	00003517          	auipc	a0,0x3
    80006974:	d2050513          	addi	a0,a0,-736 # 80009690 <_ZL6digits+0x110>
    80006978:	00000097          	auipc	ra,0x0
    8000697c:	7f0080e7          	jalr	2032(ra) # 80007168 <__printf>
    80006980:	01013403          	ld	s0,16(sp)
    80006984:	01813083          	ld	ra,24(sp)
    80006988:	00048513          	mv	a0,s1
    8000698c:	00813483          	ld	s1,8(sp)
    80006990:	02010113          	addi	sp,sp,32
    80006994:	00000317          	auipc	t1,0x0
    80006998:	3c830067          	jr	968(t1) # 80006d5c <plic_complete>
    8000699c:	00006517          	auipc	a0,0x6
    800069a0:	30450513          	addi	a0,a0,772 # 8000cca0 <tickslock>
    800069a4:	00001097          	auipc	ra,0x1
    800069a8:	498080e7          	jalr	1176(ra) # 80007e3c <acquire>
    800069ac:	00005717          	auipc	a4,0x5
    800069b0:	13870713          	addi	a4,a4,312 # 8000bae4 <ticks>
    800069b4:	00072783          	lw	a5,0(a4)
    800069b8:	00006517          	auipc	a0,0x6
    800069bc:	2e850513          	addi	a0,a0,744 # 8000cca0 <tickslock>
    800069c0:	0017879b          	addiw	a5,a5,1
    800069c4:	00f72023          	sw	a5,0(a4)
    800069c8:	00001097          	auipc	ra,0x1
    800069cc:	540080e7          	jalr	1344(ra) # 80007f08 <release>
    800069d0:	f65ff06f          	j	80006934 <kerneltrap+0x8c>
    800069d4:	00001097          	auipc	ra,0x1
    800069d8:	09c080e7          	jalr	156(ra) # 80007a70 <uartintr>
    800069dc:	fa5ff06f          	j	80006980 <kerneltrap+0xd8>
    800069e0:	00003517          	auipc	a0,0x3
    800069e4:	c9050513          	addi	a0,a0,-880 # 80009670 <_ZL6digits+0xf0>
    800069e8:	00000097          	auipc	ra,0x0
    800069ec:	724080e7          	jalr	1828(ra) # 8000710c <panic>

00000000800069f0 <clockintr>:
    800069f0:	fe010113          	addi	sp,sp,-32
    800069f4:	00813823          	sd	s0,16(sp)
    800069f8:	00913423          	sd	s1,8(sp)
    800069fc:	00113c23          	sd	ra,24(sp)
    80006a00:	02010413          	addi	s0,sp,32
    80006a04:	00006497          	auipc	s1,0x6
    80006a08:	29c48493          	addi	s1,s1,668 # 8000cca0 <tickslock>
    80006a0c:	00048513          	mv	a0,s1
    80006a10:	00001097          	auipc	ra,0x1
    80006a14:	42c080e7          	jalr	1068(ra) # 80007e3c <acquire>
    80006a18:	00005717          	auipc	a4,0x5
    80006a1c:	0cc70713          	addi	a4,a4,204 # 8000bae4 <ticks>
    80006a20:	00072783          	lw	a5,0(a4)
    80006a24:	01013403          	ld	s0,16(sp)
    80006a28:	01813083          	ld	ra,24(sp)
    80006a2c:	00048513          	mv	a0,s1
    80006a30:	0017879b          	addiw	a5,a5,1
    80006a34:	00813483          	ld	s1,8(sp)
    80006a38:	00f72023          	sw	a5,0(a4)
    80006a3c:	02010113          	addi	sp,sp,32
    80006a40:	00001317          	auipc	t1,0x1
    80006a44:	4c830067          	jr	1224(t1) # 80007f08 <release>

0000000080006a48 <devintr>:
    80006a48:	142027f3          	csrr	a5,scause
    80006a4c:	00000513          	li	a0,0
    80006a50:	0007c463          	bltz	a5,80006a58 <devintr+0x10>
    80006a54:	00008067          	ret
    80006a58:	fe010113          	addi	sp,sp,-32
    80006a5c:	00813823          	sd	s0,16(sp)
    80006a60:	00113c23          	sd	ra,24(sp)
    80006a64:	00913423          	sd	s1,8(sp)
    80006a68:	02010413          	addi	s0,sp,32
    80006a6c:	0ff7f713          	andi	a4,a5,255
    80006a70:	00900693          	li	a3,9
    80006a74:	04d70c63          	beq	a4,a3,80006acc <devintr+0x84>
    80006a78:	fff00713          	li	a4,-1
    80006a7c:	03f71713          	slli	a4,a4,0x3f
    80006a80:	00170713          	addi	a4,a4,1
    80006a84:	00e78c63          	beq	a5,a4,80006a9c <devintr+0x54>
    80006a88:	01813083          	ld	ra,24(sp)
    80006a8c:	01013403          	ld	s0,16(sp)
    80006a90:	00813483          	ld	s1,8(sp)
    80006a94:	02010113          	addi	sp,sp,32
    80006a98:	00008067          	ret
    80006a9c:	00000097          	auipc	ra,0x0
    80006aa0:	c8c080e7          	jalr	-884(ra) # 80006728 <cpuid>
    80006aa4:	06050663          	beqz	a0,80006b10 <devintr+0xc8>
    80006aa8:	144027f3          	csrr	a5,sip
    80006aac:	ffd7f793          	andi	a5,a5,-3
    80006ab0:	14479073          	csrw	sip,a5
    80006ab4:	01813083          	ld	ra,24(sp)
    80006ab8:	01013403          	ld	s0,16(sp)
    80006abc:	00813483          	ld	s1,8(sp)
    80006ac0:	00200513          	li	a0,2
    80006ac4:	02010113          	addi	sp,sp,32
    80006ac8:	00008067          	ret
    80006acc:	00000097          	auipc	ra,0x0
    80006ad0:	258080e7          	jalr	600(ra) # 80006d24 <plic_claim>
    80006ad4:	00a00793          	li	a5,10
    80006ad8:	00050493          	mv	s1,a0
    80006adc:	06f50663          	beq	a0,a5,80006b48 <devintr+0x100>
    80006ae0:	00100513          	li	a0,1
    80006ae4:	fa0482e3          	beqz	s1,80006a88 <devintr+0x40>
    80006ae8:	00048593          	mv	a1,s1
    80006aec:	00003517          	auipc	a0,0x3
    80006af0:	ba450513          	addi	a0,a0,-1116 # 80009690 <_ZL6digits+0x110>
    80006af4:	00000097          	auipc	ra,0x0
    80006af8:	674080e7          	jalr	1652(ra) # 80007168 <__printf>
    80006afc:	00048513          	mv	a0,s1
    80006b00:	00000097          	auipc	ra,0x0
    80006b04:	25c080e7          	jalr	604(ra) # 80006d5c <plic_complete>
    80006b08:	00100513          	li	a0,1
    80006b0c:	f7dff06f          	j	80006a88 <devintr+0x40>
    80006b10:	00006517          	auipc	a0,0x6
    80006b14:	19050513          	addi	a0,a0,400 # 8000cca0 <tickslock>
    80006b18:	00001097          	auipc	ra,0x1
    80006b1c:	324080e7          	jalr	804(ra) # 80007e3c <acquire>
    80006b20:	00005717          	auipc	a4,0x5
    80006b24:	fc470713          	addi	a4,a4,-60 # 8000bae4 <ticks>
    80006b28:	00072783          	lw	a5,0(a4)
    80006b2c:	00006517          	auipc	a0,0x6
    80006b30:	17450513          	addi	a0,a0,372 # 8000cca0 <tickslock>
    80006b34:	0017879b          	addiw	a5,a5,1
    80006b38:	00f72023          	sw	a5,0(a4)
    80006b3c:	00001097          	auipc	ra,0x1
    80006b40:	3cc080e7          	jalr	972(ra) # 80007f08 <release>
    80006b44:	f65ff06f          	j	80006aa8 <devintr+0x60>
    80006b48:	00001097          	auipc	ra,0x1
    80006b4c:	f28080e7          	jalr	-216(ra) # 80007a70 <uartintr>
    80006b50:	fadff06f          	j	80006afc <devintr+0xb4>
	...

0000000080006b60 <kernelvec>:
    80006b60:	f0010113          	addi	sp,sp,-256
    80006b64:	00113023          	sd	ra,0(sp)
    80006b68:	00213423          	sd	sp,8(sp)
    80006b6c:	00313823          	sd	gp,16(sp)
    80006b70:	00413c23          	sd	tp,24(sp)
    80006b74:	02513023          	sd	t0,32(sp)
    80006b78:	02613423          	sd	t1,40(sp)
    80006b7c:	02713823          	sd	t2,48(sp)
    80006b80:	02813c23          	sd	s0,56(sp)
    80006b84:	04913023          	sd	s1,64(sp)
    80006b88:	04a13423          	sd	a0,72(sp)
    80006b8c:	04b13823          	sd	a1,80(sp)
    80006b90:	04c13c23          	sd	a2,88(sp)
    80006b94:	06d13023          	sd	a3,96(sp)
    80006b98:	06e13423          	sd	a4,104(sp)
    80006b9c:	06f13823          	sd	a5,112(sp)
    80006ba0:	07013c23          	sd	a6,120(sp)
    80006ba4:	09113023          	sd	a7,128(sp)
    80006ba8:	09213423          	sd	s2,136(sp)
    80006bac:	09313823          	sd	s3,144(sp)
    80006bb0:	09413c23          	sd	s4,152(sp)
    80006bb4:	0b513023          	sd	s5,160(sp)
    80006bb8:	0b613423          	sd	s6,168(sp)
    80006bbc:	0b713823          	sd	s7,176(sp)
    80006bc0:	0b813c23          	sd	s8,184(sp)
    80006bc4:	0d913023          	sd	s9,192(sp)
    80006bc8:	0da13423          	sd	s10,200(sp)
    80006bcc:	0db13823          	sd	s11,208(sp)
    80006bd0:	0dc13c23          	sd	t3,216(sp)
    80006bd4:	0fd13023          	sd	t4,224(sp)
    80006bd8:	0fe13423          	sd	t5,232(sp)
    80006bdc:	0ff13823          	sd	t6,240(sp)
    80006be0:	cc9ff0ef          	jal	ra,800068a8 <kerneltrap>
    80006be4:	00013083          	ld	ra,0(sp)
    80006be8:	00813103          	ld	sp,8(sp)
    80006bec:	01013183          	ld	gp,16(sp)
    80006bf0:	02013283          	ld	t0,32(sp)
    80006bf4:	02813303          	ld	t1,40(sp)
    80006bf8:	03013383          	ld	t2,48(sp)
    80006bfc:	03813403          	ld	s0,56(sp)
    80006c00:	04013483          	ld	s1,64(sp)
    80006c04:	04813503          	ld	a0,72(sp)
    80006c08:	05013583          	ld	a1,80(sp)
    80006c0c:	05813603          	ld	a2,88(sp)
    80006c10:	06013683          	ld	a3,96(sp)
    80006c14:	06813703          	ld	a4,104(sp)
    80006c18:	07013783          	ld	a5,112(sp)
    80006c1c:	07813803          	ld	a6,120(sp)
    80006c20:	08013883          	ld	a7,128(sp)
    80006c24:	08813903          	ld	s2,136(sp)
    80006c28:	09013983          	ld	s3,144(sp)
    80006c2c:	09813a03          	ld	s4,152(sp)
    80006c30:	0a013a83          	ld	s5,160(sp)
    80006c34:	0a813b03          	ld	s6,168(sp)
    80006c38:	0b013b83          	ld	s7,176(sp)
    80006c3c:	0b813c03          	ld	s8,184(sp)
    80006c40:	0c013c83          	ld	s9,192(sp)
    80006c44:	0c813d03          	ld	s10,200(sp)
    80006c48:	0d013d83          	ld	s11,208(sp)
    80006c4c:	0d813e03          	ld	t3,216(sp)
    80006c50:	0e013e83          	ld	t4,224(sp)
    80006c54:	0e813f03          	ld	t5,232(sp)
    80006c58:	0f013f83          	ld	t6,240(sp)
    80006c5c:	10010113          	addi	sp,sp,256
    80006c60:	10200073          	sret
    80006c64:	00000013          	nop
    80006c68:	00000013          	nop
    80006c6c:	00000013          	nop

0000000080006c70 <timervec>:
    80006c70:	34051573          	csrrw	a0,mscratch,a0
    80006c74:	00b53023          	sd	a1,0(a0)
    80006c78:	00c53423          	sd	a2,8(a0)
    80006c7c:	00d53823          	sd	a3,16(a0)
    80006c80:	01853583          	ld	a1,24(a0)
    80006c84:	02053603          	ld	a2,32(a0)
    80006c88:	0005b683          	ld	a3,0(a1)
    80006c8c:	00c686b3          	add	a3,a3,a2
    80006c90:	00d5b023          	sd	a3,0(a1)
    80006c94:	00200593          	li	a1,2
    80006c98:	14459073          	csrw	sip,a1
    80006c9c:	01053683          	ld	a3,16(a0)
    80006ca0:	00853603          	ld	a2,8(a0)
    80006ca4:	00053583          	ld	a1,0(a0)
    80006ca8:	34051573          	csrrw	a0,mscratch,a0
    80006cac:	30200073          	mret

0000000080006cb0 <plicinit>:
    80006cb0:	ff010113          	addi	sp,sp,-16
    80006cb4:	00813423          	sd	s0,8(sp)
    80006cb8:	01010413          	addi	s0,sp,16
    80006cbc:	00813403          	ld	s0,8(sp)
    80006cc0:	0c0007b7          	lui	a5,0xc000
    80006cc4:	00100713          	li	a4,1
    80006cc8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006ccc:	00e7a223          	sw	a4,4(a5)
    80006cd0:	01010113          	addi	sp,sp,16
    80006cd4:	00008067          	ret

0000000080006cd8 <plicinithart>:
    80006cd8:	ff010113          	addi	sp,sp,-16
    80006cdc:	00813023          	sd	s0,0(sp)
    80006ce0:	00113423          	sd	ra,8(sp)
    80006ce4:	01010413          	addi	s0,sp,16
    80006ce8:	00000097          	auipc	ra,0x0
    80006cec:	a40080e7          	jalr	-1472(ra) # 80006728 <cpuid>
    80006cf0:	0085171b          	slliw	a4,a0,0x8
    80006cf4:	0c0027b7          	lui	a5,0xc002
    80006cf8:	00e787b3          	add	a5,a5,a4
    80006cfc:	40200713          	li	a4,1026
    80006d00:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006d04:	00813083          	ld	ra,8(sp)
    80006d08:	00013403          	ld	s0,0(sp)
    80006d0c:	00d5151b          	slliw	a0,a0,0xd
    80006d10:	0c2017b7          	lui	a5,0xc201
    80006d14:	00a78533          	add	a0,a5,a0
    80006d18:	00052023          	sw	zero,0(a0)
    80006d1c:	01010113          	addi	sp,sp,16
    80006d20:	00008067          	ret

0000000080006d24 <plic_claim>:
    80006d24:	ff010113          	addi	sp,sp,-16
    80006d28:	00813023          	sd	s0,0(sp)
    80006d2c:	00113423          	sd	ra,8(sp)
    80006d30:	01010413          	addi	s0,sp,16
    80006d34:	00000097          	auipc	ra,0x0
    80006d38:	9f4080e7          	jalr	-1548(ra) # 80006728 <cpuid>
    80006d3c:	00813083          	ld	ra,8(sp)
    80006d40:	00013403          	ld	s0,0(sp)
    80006d44:	00d5151b          	slliw	a0,a0,0xd
    80006d48:	0c2017b7          	lui	a5,0xc201
    80006d4c:	00a78533          	add	a0,a5,a0
    80006d50:	00452503          	lw	a0,4(a0)
    80006d54:	01010113          	addi	sp,sp,16
    80006d58:	00008067          	ret

0000000080006d5c <plic_complete>:
    80006d5c:	fe010113          	addi	sp,sp,-32
    80006d60:	00813823          	sd	s0,16(sp)
    80006d64:	00913423          	sd	s1,8(sp)
    80006d68:	00113c23          	sd	ra,24(sp)
    80006d6c:	02010413          	addi	s0,sp,32
    80006d70:	00050493          	mv	s1,a0
    80006d74:	00000097          	auipc	ra,0x0
    80006d78:	9b4080e7          	jalr	-1612(ra) # 80006728 <cpuid>
    80006d7c:	01813083          	ld	ra,24(sp)
    80006d80:	01013403          	ld	s0,16(sp)
    80006d84:	00d5179b          	slliw	a5,a0,0xd
    80006d88:	0c201737          	lui	a4,0xc201
    80006d8c:	00f707b3          	add	a5,a4,a5
    80006d90:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006d94:	00813483          	ld	s1,8(sp)
    80006d98:	02010113          	addi	sp,sp,32
    80006d9c:	00008067          	ret

0000000080006da0 <consolewrite>:
    80006da0:	fb010113          	addi	sp,sp,-80
    80006da4:	04813023          	sd	s0,64(sp)
    80006da8:	04113423          	sd	ra,72(sp)
    80006dac:	02913c23          	sd	s1,56(sp)
    80006db0:	03213823          	sd	s2,48(sp)
    80006db4:	03313423          	sd	s3,40(sp)
    80006db8:	03413023          	sd	s4,32(sp)
    80006dbc:	01513c23          	sd	s5,24(sp)
    80006dc0:	05010413          	addi	s0,sp,80
    80006dc4:	06c05c63          	blez	a2,80006e3c <consolewrite+0x9c>
    80006dc8:	00060993          	mv	s3,a2
    80006dcc:	00050a13          	mv	s4,a0
    80006dd0:	00058493          	mv	s1,a1
    80006dd4:	00000913          	li	s2,0
    80006dd8:	fff00a93          	li	s5,-1
    80006ddc:	01c0006f          	j	80006df8 <consolewrite+0x58>
    80006de0:	fbf44503          	lbu	a0,-65(s0)
    80006de4:	0019091b          	addiw	s2,s2,1
    80006de8:	00148493          	addi	s1,s1,1
    80006dec:	00001097          	auipc	ra,0x1
    80006df0:	a9c080e7          	jalr	-1380(ra) # 80007888 <uartputc>
    80006df4:	03298063          	beq	s3,s2,80006e14 <consolewrite+0x74>
    80006df8:	00048613          	mv	a2,s1
    80006dfc:	00100693          	li	a3,1
    80006e00:	000a0593          	mv	a1,s4
    80006e04:	fbf40513          	addi	a0,s0,-65
    80006e08:	00000097          	auipc	ra,0x0
    80006e0c:	9d8080e7          	jalr	-1576(ra) # 800067e0 <either_copyin>
    80006e10:	fd5518e3          	bne	a0,s5,80006de0 <consolewrite+0x40>
    80006e14:	04813083          	ld	ra,72(sp)
    80006e18:	04013403          	ld	s0,64(sp)
    80006e1c:	03813483          	ld	s1,56(sp)
    80006e20:	02813983          	ld	s3,40(sp)
    80006e24:	02013a03          	ld	s4,32(sp)
    80006e28:	01813a83          	ld	s5,24(sp)
    80006e2c:	00090513          	mv	a0,s2
    80006e30:	03013903          	ld	s2,48(sp)
    80006e34:	05010113          	addi	sp,sp,80
    80006e38:	00008067          	ret
    80006e3c:	00000913          	li	s2,0
    80006e40:	fd5ff06f          	j	80006e14 <consolewrite+0x74>

0000000080006e44 <consoleread>:
    80006e44:	f9010113          	addi	sp,sp,-112
    80006e48:	06813023          	sd	s0,96(sp)
    80006e4c:	04913c23          	sd	s1,88(sp)
    80006e50:	05213823          	sd	s2,80(sp)
    80006e54:	05313423          	sd	s3,72(sp)
    80006e58:	05413023          	sd	s4,64(sp)
    80006e5c:	03513c23          	sd	s5,56(sp)
    80006e60:	03613823          	sd	s6,48(sp)
    80006e64:	03713423          	sd	s7,40(sp)
    80006e68:	03813023          	sd	s8,32(sp)
    80006e6c:	06113423          	sd	ra,104(sp)
    80006e70:	01913c23          	sd	s9,24(sp)
    80006e74:	07010413          	addi	s0,sp,112
    80006e78:	00060b93          	mv	s7,a2
    80006e7c:	00050913          	mv	s2,a0
    80006e80:	00058c13          	mv	s8,a1
    80006e84:	00060b1b          	sext.w	s6,a2
    80006e88:	00006497          	auipc	s1,0x6
    80006e8c:	e4048493          	addi	s1,s1,-448 # 8000ccc8 <cons>
    80006e90:	00400993          	li	s3,4
    80006e94:	fff00a13          	li	s4,-1
    80006e98:	00a00a93          	li	s5,10
    80006e9c:	05705e63          	blez	s7,80006ef8 <consoleread+0xb4>
    80006ea0:	09c4a703          	lw	a4,156(s1)
    80006ea4:	0984a783          	lw	a5,152(s1)
    80006ea8:	0007071b          	sext.w	a4,a4
    80006eac:	08e78463          	beq	a5,a4,80006f34 <consoleread+0xf0>
    80006eb0:	07f7f713          	andi	a4,a5,127
    80006eb4:	00e48733          	add	a4,s1,a4
    80006eb8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006ebc:	0017869b          	addiw	a3,a5,1
    80006ec0:	08d4ac23          	sw	a3,152(s1)
    80006ec4:	00070c9b          	sext.w	s9,a4
    80006ec8:	0b370663          	beq	a4,s3,80006f74 <consoleread+0x130>
    80006ecc:	00100693          	li	a3,1
    80006ed0:	f9f40613          	addi	a2,s0,-97
    80006ed4:	000c0593          	mv	a1,s8
    80006ed8:	00090513          	mv	a0,s2
    80006edc:	f8e40fa3          	sb	a4,-97(s0)
    80006ee0:	00000097          	auipc	ra,0x0
    80006ee4:	8b4080e7          	jalr	-1868(ra) # 80006794 <either_copyout>
    80006ee8:	01450863          	beq	a0,s4,80006ef8 <consoleread+0xb4>
    80006eec:	001c0c13          	addi	s8,s8,1
    80006ef0:	fffb8b9b          	addiw	s7,s7,-1
    80006ef4:	fb5c94e3          	bne	s9,s5,80006e9c <consoleread+0x58>
    80006ef8:	000b851b          	sext.w	a0,s7
    80006efc:	06813083          	ld	ra,104(sp)
    80006f00:	06013403          	ld	s0,96(sp)
    80006f04:	05813483          	ld	s1,88(sp)
    80006f08:	05013903          	ld	s2,80(sp)
    80006f0c:	04813983          	ld	s3,72(sp)
    80006f10:	04013a03          	ld	s4,64(sp)
    80006f14:	03813a83          	ld	s5,56(sp)
    80006f18:	02813b83          	ld	s7,40(sp)
    80006f1c:	02013c03          	ld	s8,32(sp)
    80006f20:	01813c83          	ld	s9,24(sp)
    80006f24:	40ab053b          	subw	a0,s6,a0
    80006f28:	03013b03          	ld	s6,48(sp)
    80006f2c:	07010113          	addi	sp,sp,112
    80006f30:	00008067          	ret
    80006f34:	00001097          	auipc	ra,0x1
    80006f38:	1d8080e7          	jalr	472(ra) # 8000810c <push_on>
    80006f3c:	0984a703          	lw	a4,152(s1)
    80006f40:	09c4a783          	lw	a5,156(s1)
    80006f44:	0007879b          	sext.w	a5,a5
    80006f48:	fef70ce3          	beq	a4,a5,80006f40 <consoleread+0xfc>
    80006f4c:	00001097          	auipc	ra,0x1
    80006f50:	234080e7          	jalr	564(ra) # 80008180 <pop_on>
    80006f54:	0984a783          	lw	a5,152(s1)
    80006f58:	07f7f713          	andi	a4,a5,127
    80006f5c:	00e48733          	add	a4,s1,a4
    80006f60:	01874703          	lbu	a4,24(a4)
    80006f64:	0017869b          	addiw	a3,a5,1
    80006f68:	08d4ac23          	sw	a3,152(s1)
    80006f6c:	00070c9b          	sext.w	s9,a4
    80006f70:	f5371ee3          	bne	a4,s3,80006ecc <consoleread+0x88>
    80006f74:	000b851b          	sext.w	a0,s7
    80006f78:	f96bf2e3          	bgeu	s7,s6,80006efc <consoleread+0xb8>
    80006f7c:	08f4ac23          	sw	a5,152(s1)
    80006f80:	f7dff06f          	j	80006efc <consoleread+0xb8>

0000000080006f84 <consputc>:
    80006f84:	10000793          	li	a5,256
    80006f88:	00f50663          	beq	a0,a5,80006f94 <consputc+0x10>
    80006f8c:	00001317          	auipc	t1,0x1
    80006f90:	9f430067          	jr	-1548(t1) # 80007980 <uartputc_sync>
    80006f94:	ff010113          	addi	sp,sp,-16
    80006f98:	00113423          	sd	ra,8(sp)
    80006f9c:	00813023          	sd	s0,0(sp)
    80006fa0:	01010413          	addi	s0,sp,16
    80006fa4:	00800513          	li	a0,8
    80006fa8:	00001097          	auipc	ra,0x1
    80006fac:	9d8080e7          	jalr	-1576(ra) # 80007980 <uartputc_sync>
    80006fb0:	02000513          	li	a0,32
    80006fb4:	00001097          	auipc	ra,0x1
    80006fb8:	9cc080e7          	jalr	-1588(ra) # 80007980 <uartputc_sync>
    80006fbc:	00013403          	ld	s0,0(sp)
    80006fc0:	00813083          	ld	ra,8(sp)
    80006fc4:	00800513          	li	a0,8
    80006fc8:	01010113          	addi	sp,sp,16
    80006fcc:	00001317          	auipc	t1,0x1
    80006fd0:	9b430067          	jr	-1612(t1) # 80007980 <uartputc_sync>

0000000080006fd4 <consoleintr>:
    80006fd4:	fe010113          	addi	sp,sp,-32
    80006fd8:	00813823          	sd	s0,16(sp)
    80006fdc:	00913423          	sd	s1,8(sp)
    80006fe0:	01213023          	sd	s2,0(sp)
    80006fe4:	00113c23          	sd	ra,24(sp)
    80006fe8:	02010413          	addi	s0,sp,32
    80006fec:	00006917          	auipc	s2,0x6
    80006ff0:	cdc90913          	addi	s2,s2,-804 # 8000ccc8 <cons>
    80006ff4:	00050493          	mv	s1,a0
    80006ff8:	00090513          	mv	a0,s2
    80006ffc:	00001097          	auipc	ra,0x1
    80007000:	e40080e7          	jalr	-448(ra) # 80007e3c <acquire>
    80007004:	02048c63          	beqz	s1,8000703c <consoleintr+0x68>
    80007008:	0a092783          	lw	a5,160(s2)
    8000700c:	09892703          	lw	a4,152(s2)
    80007010:	07f00693          	li	a3,127
    80007014:	40e7873b          	subw	a4,a5,a4
    80007018:	02e6e263          	bltu	a3,a4,8000703c <consoleintr+0x68>
    8000701c:	00d00713          	li	a4,13
    80007020:	04e48063          	beq	s1,a4,80007060 <consoleintr+0x8c>
    80007024:	07f7f713          	andi	a4,a5,127
    80007028:	00e90733          	add	a4,s2,a4
    8000702c:	0017879b          	addiw	a5,a5,1
    80007030:	0af92023          	sw	a5,160(s2)
    80007034:	00970c23          	sb	s1,24(a4)
    80007038:	08f92e23          	sw	a5,156(s2)
    8000703c:	01013403          	ld	s0,16(sp)
    80007040:	01813083          	ld	ra,24(sp)
    80007044:	00813483          	ld	s1,8(sp)
    80007048:	00013903          	ld	s2,0(sp)
    8000704c:	00006517          	auipc	a0,0x6
    80007050:	c7c50513          	addi	a0,a0,-900 # 8000ccc8 <cons>
    80007054:	02010113          	addi	sp,sp,32
    80007058:	00001317          	auipc	t1,0x1
    8000705c:	eb030067          	jr	-336(t1) # 80007f08 <release>
    80007060:	00a00493          	li	s1,10
    80007064:	fc1ff06f          	j	80007024 <consoleintr+0x50>

0000000080007068 <consoleinit>:
    80007068:	fe010113          	addi	sp,sp,-32
    8000706c:	00113c23          	sd	ra,24(sp)
    80007070:	00813823          	sd	s0,16(sp)
    80007074:	00913423          	sd	s1,8(sp)
    80007078:	02010413          	addi	s0,sp,32
    8000707c:	00006497          	auipc	s1,0x6
    80007080:	c4c48493          	addi	s1,s1,-948 # 8000ccc8 <cons>
    80007084:	00048513          	mv	a0,s1
    80007088:	00002597          	auipc	a1,0x2
    8000708c:	66058593          	addi	a1,a1,1632 # 800096e8 <_ZL6digits+0x168>
    80007090:	00001097          	auipc	ra,0x1
    80007094:	d88080e7          	jalr	-632(ra) # 80007e18 <initlock>
    80007098:	00000097          	auipc	ra,0x0
    8000709c:	7ac080e7          	jalr	1964(ra) # 80007844 <uartinit>
    800070a0:	01813083          	ld	ra,24(sp)
    800070a4:	01013403          	ld	s0,16(sp)
    800070a8:	00000797          	auipc	a5,0x0
    800070ac:	d9c78793          	addi	a5,a5,-612 # 80006e44 <consoleread>
    800070b0:	0af4bc23          	sd	a5,184(s1)
    800070b4:	00000797          	auipc	a5,0x0
    800070b8:	cec78793          	addi	a5,a5,-788 # 80006da0 <consolewrite>
    800070bc:	0cf4b023          	sd	a5,192(s1)
    800070c0:	00813483          	ld	s1,8(sp)
    800070c4:	02010113          	addi	sp,sp,32
    800070c8:	00008067          	ret

00000000800070cc <console_read>:
    800070cc:	ff010113          	addi	sp,sp,-16
    800070d0:	00813423          	sd	s0,8(sp)
    800070d4:	01010413          	addi	s0,sp,16
    800070d8:	00813403          	ld	s0,8(sp)
    800070dc:	00006317          	auipc	t1,0x6
    800070e0:	ca433303          	ld	t1,-860(t1) # 8000cd80 <devsw+0x10>
    800070e4:	01010113          	addi	sp,sp,16
    800070e8:	00030067          	jr	t1

00000000800070ec <console_write>:
    800070ec:	ff010113          	addi	sp,sp,-16
    800070f0:	00813423          	sd	s0,8(sp)
    800070f4:	01010413          	addi	s0,sp,16
    800070f8:	00813403          	ld	s0,8(sp)
    800070fc:	00006317          	auipc	t1,0x6
    80007100:	c8c33303          	ld	t1,-884(t1) # 8000cd88 <devsw+0x18>
    80007104:	01010113          	addi	sp,sp,16
    80007108:	00030067          	jr	t1

000000008000710c <panic>:
    8000710c:	fe010113          	addi	sp,sp,-32
    80007110:	00113c23          	sd	ra,24(sp)
    80007114:	00813823          	sd	s0,16(sp)
    80007118:	00913423          	sd	s1,8(sp)
    8000711c:	02010413          	addi	s0,sp,32
    80007120:	00050493          	mv	s1,a0
    80007124:	00002517          	auipc	a0,0x2
    80007128:	5cc50513          	addi	a0,a0,1484 # 800096f0 <_ZL6digits+0x170>
    8000712c:	00006797          	auipc	a5,0x6
    80007130:	ce07ae23          	sw	zero,-772(a5) # 8000ce28 <pr+0x18>
    80007134:	00000097          	auipc	ra,0x0
    80007138:	034080e7          	jalr	52(ra) # 80007168 <__printf>
    8000713c:	00048513          	mv	a0,s1
    80007140:	00000097          	auipc	ra,0x0
    80007144:	028080e7          	jalr	40(ra) # 80007168 <__printf>
    80007148:	00002517          	auipc	a0,0x2
    8000714c:	fb850513          	addi	a0,a0,-72 # 80009100 <CONSOLE_STATUS+0xf0>
    80007150:	00000097          	auipc	ra,0x0
    80007154:	018080e7          	jalr	24(ra) # 80007168 <__printf>
    80007158:	00100793          	li	a5,1
    8000715c:	00005717          	auipc	a4,0x5
    80007160:	98f72623          	sw	a5,-1652(a4) # 8000bae8 <panicked>
    80007164:	0000006f          	j	80007164 <panic+0x58>

0000000080007168 <__printf>:
    80007168:	f3010113          	addi	sp,sp,-208
    8000716c:	08813023          	sd	s0,128(sp)
    80007170:	07313423          	sd	s3,104(sp)
    80007174:	09010413          	addi	s0,sp,144
    80007178:	05813023          	sd	s8,64(sp)
    8000717c:	08113423          	sd	ra,136(sp)
    80007180:	06913c23          	sd	s1,120(sp)
    80007184:	07213823          	sd	s2,112(sp)
    80007188:	07413023          	sd	s4,96(sp)
    8000718c:	05513c23          	sd	s5,88(sp)
    80007190:	05613823          	sd	s6,80(sp)
    80007194:	05713423          	sd	s7,72(sp)
    80007198:	03913c23          	sd	s9,56(sp)
    8000719c:	03a13823          	sd	s10,48(sp)
    800071a0:	03b13423          	sd	s11,40(sp)
    800071a4:	00006317          	auipc	t1,0x6
    800071a8:	c6c30313          	addi	t1,t1,-916 # 8000ce10 <pr>
    800071ac:	01832c03          	lw	s8,24(t1)
    800071b0:	00b43423          	sd	a1,8(s0)
    800071b4:	00c43823          	sd	a2,16(s0)
    800071b8:	00d43c23          	sd	a3,24(s0)
    800071bc:	02e43023          	sd	a4,32(s0)
    800071c0:	02f43423          	sd	a5,40(s0)
    800071c4:	03043823          	sd	a6,48(s0)
    800071c8:	03143c23          	sd	a7,56(s0)
    800071cc:	00050993          	mv	s3,a0
    800071d0:	4a0c1663          	bnez	s8,8000767c <__printf+0x514>
    800071d4:	60098c63          	beqz	s3,800077ec <__printf+0x684>
    800071d8:	0009c503          	lbu	a0,0(s3)
    800071dc:	00840793          	addi	a5,s0,8
    800071e0:	f6f43c23          	sd	a5,-136(s0)
    800071e4:	00000493          	li	s1,0
    800071e8:	22050063          	beqz	a0,80007408 <__printf+0x2a0>
    800071ec:	00002a37          	lui	s4,0x2
    800071f0:	00018ab7          	lui	s5,0x18
    800071f4:	000f4b37          	lui	s6,0xf4
    800071f8:	00989bb7          	lui	s7,0x989
    800071fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007200:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007204:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007208:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000720c:	00148c9b          	addiw	s9,s1,1
    80007210:	02500793          	li	a5,37
    80007214:	01998933          	add	s2,s3,s9
    80007218:	38f51263          	bne	a0,a5,8000759c <__printf+0x434>
    8000721c:	00094783          	lbu	a5,0(s2)
    80007220:	00078c9b          	sext.w	s9,a5
    80007224:	1e078263          	beqz	a5,80007408 <__printf+0x2a0>
    80007228:	0024849b          	addiw	s1,s1,2
    8000722c:	07000713          	li	a4,112
    80007230:	00998933          	add	s2,s3,s1
    80007234:	38e78a63          	beq	a5,a4,800075c8 <__printf+0x460>
    80007238:	20f76863          	bltu	a4,a5,80007448 <__printf+0x2e0>
    8000723c:	42a78863          	beq	a5,a0,8000766c <__printf+0x504>
    80007240:	06400713          	li	a4,100
    80007244:	40e79663          	bne	a5,a4,80007650 <__printf+0x4e8>
    80007248:	f7843783          	ld	a5,-136(s0)
    8000724c:	0007a603          	lw	a2,0(a5)
    80007250:	00878793          	addi	a5,a5,8
    80007254:	f6f43c23          	sd	a5,-136(s0)
    80007258:	42064a63          	bltz	a2,8000768c <__printf+0x524>
    8000725c:	00a00713          	li	a4,10
    80007260:	02e677bb          	remuw	a5,a2,a4
    80007264:	00002d97          	auipc	s11,0x2
    80007268:	4b4d8d93          	addi	s11,s11,1204 # 80009718 <digits>
    8000726c:	00900593          	li	a1,9
    80007270:	0006051b          	sext.w	a0,a2
    80007274:	00000c93          	li	s9,0
    80007278:	02079793          	slli	a5,a5,0x20
    8000727c:	0207d793          	srli	a5,a5,0x20
    80007280:	00fd87b3          	add	a5,s11,a5
    80007284:	0007c783          	lbu	a5,0(a5)
    80007288:	02e656bb          	divuw	a3,a2,a4
    8000728c:	f8f40023          	sb	a5,-128(s0)
    80007290:	14c5d863          	bge	a1,a2,800073e0 <__printf+0x278>
    80007294:	06300593          	li	a1,99
    80007298:	00100c93          	li	s9,1
    8000729c:	02e6f7bb          	remuw	a5,a3,a4
    800072a0:	02079793          	slli	a5,a5,0x20
    800072a4:	0207d793          	srli	a5,a5,0x20
    800072a8:	00fd87b3          	add	a5,s11,a5
    800072ac:	0007c783          	lbu	a5,0(a5)
    800072b0:	02e6d73b          	divuw	a4,a3,a4
    800072b4:	f8f400a3          	sb	a5,-127(s0)
    800072b8:	12a5f463          	bgeu	a1,a0,800073e0 <__printf+0x278>
    800072bc:	00a00693          	li	a3,10
    800072c0:	00900593          	li	a1,9
    800072c4:	02d777bb          	remuw	a5,a4,a3
    800072c8:	02079793          	slli	a5,a5,0x20
    800072cc:	0207d793          	srli	a5,a5,0x20
    800072d0:	00fd87b3          	add	a5,s11,a5
    800072d4:	0007c503          	lbu	a0,0(a5)
    800072d8:	02d757bb          	divuw	a5,a4,a3
    800072dc:	f8a40123          	sb	a0,-126(s0)
    800072e0:	48e5f263          	bgeu	a1,a4,80007764 <__printf+0x5fc>
    800072e4:	06300513          	li	a0,99
    800072e8:	02d7f5bb          	remuw	a1,a5,a3
    800072ec:	02059593          	slli	a1,a1,0x20
    800072f0:	0205d593          	srli	a1,a1,0x20
    800072f4:	00bd85b3          	add	a1,s11,a1
    800072f8:	0005c583          	lbu	a1,0(a1)
    800072fc:	02d7d7bb          	divuw	a5,a5,a3
    80007300:	f8b401a3          	sb	a1,-125(s0)
    80007304:	48e57263          	bgeu	a0,a4,80007788 <__printf+0x620>
    80007308:	3e700513          	li	a0,999
    8000730c:	02d7f5bb          	remuw	a1,a5,a3
    80007310:	02059593          	slli	a1,a1,0x20
    80007314:	0205d593          	srli	a1,a1,0x20
    80007318:	00bd85b3          	add	a1,s11,a1
    8000731c:	0005c583          	lbu	a1,0(a1)
    80007320:	02d7d7bb          	divuw	a5,a5,a3
    80007324:	f8b40223          	sb	a1,-124(s0)
    80007328:	46e57663          	bgeu	a0,a4,80007794 <__printf+0x62c>
    8000732c:	02d7f5bb          	remuw	a1,a5,a3
    80007330:	02059593          	slli	a1,a1,0x20
    80007334:	0205d593          	srli	a1,a1,0x20
    80007338:	00bd85b3          	add	a1,s11,a1
    8000733c:	0005c583          	lbu	a1,0(a1)
    80007340:	02d7d7bb          	divuw	a5,a5,a3
    80007344:	f8b402a3          	sb	a1,-123(s0)
    80007348:	46ea7863          	bgeu	s4,a4,800077b8 <__printf+0x650>
    8000734c:	02d7f5bb          	remuw	a1,a5,a3
    80007350:	02059593          	slli	a1,a1,0x20
    80007354:	0205d593          	srli	a1,a1,0x20
    80007358:	00bd85b3          	add	a1,s11,a1
    8000735c:	0005c583          	lbu	a1,0(a1)
    80007360:	02d7d7bb          	divuw	a5,a5,a3
    80007364:	f8b40323          	sb	a1,-122(s0)
    80007368:	3eeaf863          	bgeu	s5,a4,80007758 <__printf+0x5f0>
    8000736c:	02d7f5bb          	remuw	a1,a5,a3
    80007370:	02059593          	slli	a1,a1,0x20
    80007374:	0205d593          	srli	a1,a1,0x20
    80007378:	00bd85b3          	add	a1,s11,a1
    8000737c:	0005c583          	lbu	a1,0(a1)
    80007380:	02d7d7bb          	divuw	a5,a5,a3
    80007384:	f8b403a3          	sb	a1,-121(s0)
    80007388:	42eb7e63          	bgeu	s6,a4,800077c4 <__printf+0x65c>
    8000738c:	02d7f5bb          	remuw	a1,a5,a3
    80007390:	02059593          	slli	a1,a1,0x20
    80007394:	0205d593          	srli	a1,a1,0x20
    80007398:	00bd85b3          	add	a1,s11,a1
    8000739c:	0005c583          	lbu	a1,0(a1)
    800073a0:	02d7d7bb          	divuw	a5,a5,a3
    800073a4:	f8b40423          	sb	a1,-120(s0)
    800073a8:	42ebfc63          	bgeu	s7,a4,800077e0 <__printf+0x678>
    800073ac:	02079793          	slli	a5,a5,0x20
    800073b0:	0207d793          	srli	a5,a5,0x20
    800073b4:	00fd8db3          	add	s11,s11,a5
    800073b8:	000dc703          	lbu	a4,0(s11)
    800073bc:	00a00793          	li	a5,10
    800073c0:	00900c93          	li	s9,9
    800073c4:	f8e404a3          	sb	a4,-119(s0)
    800073c8:	00065c63          	bgez	a2,800073e0 <__printf+0x278>
    800073cc:	f9040713          	addi	a4,s0,-112
    800073d0:	00f70733          	add	a4,a4,a5
    800073d4:	02d00693          	li	a3,45
    800073d8:	fed70823          	sb	a3,-16(a4)
    800073dc:	00078c93          	mv	s9,a5
    800073e0:	f8040793          	addi	a5,s0,-128
    800073e4:	01978cb3          	add	s9,a5,s9
    800073e8:	f7f40d13          	addi	s10,s0,-129
    800073ec:	000cc503          	lbu	a0,0(s9)
    800073f0:	fffc8c93          	addi	s9,s9,-1
    800073f4:	00000097          	auipc	ra,0x0
    800073f8:	b90080e7          	jalr	-1136(ra) # 80006f84 <consputc>
    800073fc:	ffac98e3          	bne	s9,s10,800073ec <__printf+0x284>
    80007400:	00094503          	lbu	a0,0(s2)
    80007404:	e00514e3          	bnez	a0,8000720c <__printf+0xa4>
    80007408:	1a0c1663          	bnez	s8,800075b4 <__printf+0x44c>
    8000740c:	08813083          	ld	ra,136(sp)
    80007410:	08013403          	ld	s0,128(sp)
    80007414:	07813483          	ld	s1,120(sp)
    80007418:	07013903          	ld	s2,112(sp)
    8000741c:	06813983          	ld	s3,104(sp)
    80007420:	06013a03          	ld	s4,96(sp)
    80007424:	05813a83          	ld	s5,88(sp)
    80007428:	05013b03          	ld	s6,80(sp)
    8000742c:	04813b83          	ld	s7,72(sp)
    80007430:	04013c03          	ld	s8,64(sp)
    80007434:	03813c83          	ld	s9,56(sp)
    80007438:	03013d03          	ld	s10,48(sp)
    8000743c:	02813d83          	ld	s11,40(sp)
    80007440:	0d010113          	addi	sp,sp,208
    80007444:	00008067          	ret
    80007448:	07300713          	li	a4,115
    8000744c:	1ce78a63          	beq	a5,a4,80007620 <__printf+0x4b8>
    80007450:	07800713          	li	a4,120
    80007454:	1ee79e63          	bne	a5,a4,80007650 <__printf+0x4e8>
    80007458:	f7843783          	ld	a5,-136(s0)
    8000745c:	0007a703          	lw	a4,0(a5)
    80007460:	00878793          	addi	a5,a5,8
    80007464:	f6f43c23          	sd	a5,-136(s0)
    80007468:	28074263          	bltz	a4,800076ec <__printf+0x584>
    8000746c:	00002d97          	auipc	s11,0x2
    80007470:	2acd8d93          	addi	s11,s11,684 # 80009718 <digits>
    80007474:	00f77793          	andi	a5,a4,15
    80007478:	00fd87b3          	add	a5,s11,a5
    8000747c:	0007c683          	lbu	a3,0(a5)
    80007480:	00f00613          	li	a2,15
    80007484:	0007079b          	sext.w	a5,a4
    80007488:	f8d40023          	sb	a3,-128(s0)
    8000748c:	0047559b          	srliw	a1,a4,0x4
    80007490:	0047569b          	srliw	a3,a4,0x4
    80007494:	00000c93          	li	s9,0
    80007498:	0ee65063          	bge	a2,a4,80007578 <__printf+0x410>
    8000749c:	00f6f693          	andi	a3,a3,15
    800074a0:	00dd86b3          	add	a3,s11,a3
    800074a4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800074a8:	0087d79b          	srliw	a5,a5,0x8
    800074ac:	00100c93          	li	s9,1
    800074b0:	f8d400a3          	sb	a3,-127(s0)
    800074b4:	0cb67263          	bgeu	a2,a1,80007578 <__printf+0x410>
    800074b8:	00f7f693          	andi	a3,a5,15
    800074bc:	00dd86b3          	add	a3,s11,a3
    800074c0:	0006c583          	lbu	a1,0(a3)
    800074c4:	00f00613          	li	a2,15
    800074c8:	0047d69b          	srliw	a3,a5,0x4
    800074cc:	f8b40123          	sb	a1,-126(s0)
    800074d0:	0047d593          	srli	a1,a5,0x4
    800074d4:	28f67e63          	bgeu	a2,a5,80007770 <__printf+0x608>
    800074d8:	00f6f693          	andi	a3,a3,15
    800074dc:	00dd86b3          	add	a3,s11,a3
    800074e0:	0006c503          	lbu	a0,0(a3)
    800074e4:	0087d813          	srli	a6,a5,0x8
    800074e8:	0087d69b          	srliw	a3,a5,0x8
    800074ec:	f8a401a3          	sb	a0,-125(s0)
    800074f0:	28b67663          	bgeu	a2,a1,8000777c <__printf+0x614>
    800074f4:	00f6f693          	andi	a3,a3,15
    800074f8:	00dd86b3          	add	a3,s11,a3
    800074fc:	0006c583          	lbu	a1,0(a3)
    80007500:	00c7d513          	srli	a0,a5,0xc
    80007504:	00c7d69b          	srliw	a3,a5,0xc
    80007508:	f8b40223          	sb	a1,-124(s0)
    8000750c:	29067a63          	bgeu	a2,a6,800077a0 <__printf+0x638>
    80007510:	00f6f693          	andi	a3,a3,15
    80007514:	00dd86b3          	add	a3,s11,a3
    80007518:	0006c583          	lbu	a1,0(a3)
    8000751c:	0107d813          	srli	a6,a5,0x10
    80007520:	0107d69b          	srliw	a3,a5,0x10
    80007524:	f8b402a3          	sb	a1,-123(s0)
    80007528:	28a67263          	bgeu	a2,a0,800077ac <__printf+0x644>
    8000752c:	00f6f693          	andi	a3,a3,15
    80007530:	00dd86b3          	add	a3,s11,a3
    80007534:	0006c683          	lbu	a3,0(a3)
    80007538:	0147d79b          	srliw	a5,a5,0x14
    8000753c:	f8d40323          	sb	a3,-122(s0)
    80007540:	21067663          	bgeu	a2,a6,8000774c <__printf+0x5e4>
    80007544:	02079793          	slli	a5,a5,0x20
    80007548:	0207d793          	srli	a5,a5,0x20
    8000754c:	00fd8db3          	add	s11,s11,a5
    80007550:	000dc683          	lbu	a3,0(s11)
    80007554:	00800793          	li	a5,8
    80007558:	00700c93          	li	s9,7
    8000755c:	f8d403a3          	sb	a3,-121(s0)
    80007560:	00075c63          	bgez	a4,80007578 <__printf+0x410>
    80007564:	f9040713          	addi	a4,s0,-112
    80007568:	00f70733          	add	a4,a4,a5
    8000756c:	02d00693          	li	a3,45
    80007570:	fed70823          	sb	a3,-16(a4)
    80007574:	00078c93          	mv	s9,a5
    80007578:	f8040793          	addi	a5,s0,-128
    8000757c:	01978cb3          	add	s9,a5,s9
    80007580:	f7f40d13          	addi	s10,s0,-129
    80007584:	000cc503          	lbu	a0,0(s9)
    80007588:	fffc8c93          	addi	s9,s9,-1
    8000758c:	00000097          	auipc	ra,0x0
    80007590:	9f8080e7          	jalr	-1544(ra) # 80006f84 <consputc>
    80007594:	ff9d18e3          	bne	s10,s9,80007584 <__printf+0x41c>
    80007598:	0100006f          	j	800075a8 <__printf+0x440>
    8000759c:	00000097          	auipc	ra,0x0
    800075a0:	9e8080e7          	jalr	-1560(ra) # 80006f84 <consputc>
    800075a4:	000c8493          	mv	s1,s9
    800075a8:	00094503          	lbu	a0,0(s2)
    800075ac:	c60510e3          	bnez	a0,8000720c <__printf+0xa4>
    800075b0:	e40c0ee3          	beqz	s8,8000740c <__printf+0x2a4>
    800075b4:	00006517          	auipc	a0,0x6
    800075b8:	85c50513          	addi	a0,a0,-1956 # 8000ce10 <pr>
    800075bc:	00001097          	auipc	ra,0x1
    800075c0:	94c080e7          	jalr	-1716(ra) # 80007f08 <release>
    800075c4:	e49ff06f          	j	8000740c <__printf+0x2a4>
    800075c8:	f7843783          	ld	a5,-136(s0)
    800075cc:	03000513          	li	a0,48
    800075d0:	01000d13          	li	s10,16
    800075d4:	00878713          	addi	a4,a5,8
    800075d8:	0007bc83          	ld	s9,0(a5)
    800075dc:	f6e43c23          	sd	a4,-136(s0)
    800075e0:	00000097          	auipc	ra,0x0
    800075e4:	9a4080e7          	jalr	-1628(ra) # 80006f84 <consputc>
    800075e8:	07800513          	li	a0,120
    800075ec:	00000097          	auipc	ra,0x0
    800075f0:	998080e7          	jalr	-1640(ra) # 80006f84 <consputc>
    800075f4:	00002d97          	auipc	s11,0x2
    800075f8:	124d8d93          	addi	s11,s11,292 # 80009718 <digits>
    800075fc:	03ccd793          	srli	a5,s9,0x3c
    80007600:	00fd87b3          	add	a5,s11,a5
    80007604:	0007c503          	lbu	a0,0(a5)
    80007608:	fffd0d1b          	addiw	s10,s10,-1
    8000760c:	004c9c93          	slli	s9,s9,0x4
    80007610:	00000097          	auipc	ra,0x0
    80007614:	974080e7          	jalr	-1676(ra) # 80006f84 <consputc>
    80007618:	fe0d12e3          	bnez	s10,800075fc <__printf+0x494>
    8000761c:	f8dff06f          	j	800075a8 <__printf+0x440>
    80007620:	f7843783          	ld	a5,-136(s0)
    80007624:	0007bc83          	ld	s9,0(a5)
    80007628:	00878793          	addi	a5,a5,8
    8000762c:	f6f43c23          	sd	a5,-136(s0)
    80007630:	000c9a63          	bnez	s9,80007644 <__printf+0x4dc>
    80007634:	1080006f          	j	8000773c <__printf+0x5d4>
    80007638:	001c8c93          	addi	s9,s9,1
    8000763c:	00000097          	auipc	ra,0x0
    80007640:	948080e7          	jalr	-1720(ra) # 80006f84 <consputc>
    80007644:	000cc503          	lbu	a0,0(s9)
    80007648:	fe0518e3          	bnez	a0,80007638 <__printf+0x4d0>
    8000764c:	f5dff06f          	j	800075a8 <__printf+0x440>
    80007650:	02500513          	li	a0,37
    80007654:	00000097          	auipc	ra,0x0
    80007658:	930080e7          	jalr	-1744(ra) # 80006f84 <consputc>
    8000765c:	000c8513          	mv	a0,s9
    80007660:	00000097          	auipc	ra,0x0
    80007664:	924080e7          	jalr	-1756(ra) # 80006f84 <consputc>
    80007668:	f41ff06f          	j	800075a8 <__printf+0x440>
    8000766c:	02500513          	li	a0,37
    80007670:	00000097          	auipc	ra,0x0
    80007674:	914080e7          	jalr	-1772(ra) # 80006f84 <consputc>
    80007678:	f31ff06f          	j	800075a8 <__printf+0x440>
    8000767c:	00030513          	mv	a0,t1
    80007680:	00000097          	auipc	ra,0x0
    80007684:	7bc080e7          	jalr	1980(ra) # 80007e3c <acquire>
    80007688:	b4dff06f          	j	800071d4 <__printf+0x6c>
    8000768c:	40c0053b          	negw	a0,a2
    80007690:	00a00713          	li	a4,10
    80007694:	02e576bb          	remuw	a3,a0,a4
    80007698:	00002d97          	auipc	s11,0x2
    8000769c:	080d8d93          	addi	s11,s11,128 # 80009718 <digits>
    800076a0:	ff700593          	li	a1,-9
    800076a4:	02069693          	slli	a3,a3,0x20
    800076a8:	0206d693          	srli	a3,a3,0x20
    800076ac:	00dd86b3          	add	a3,s11,a3
    800076b0:	0006c683          	lbu	a3,0(a3)
    800076b4:	02e557bb          	divuw	a5,a0,a4
    800076b8:	f8d40023          	sb	a3,-128(s0)
    800076bc:	10b65e63          	bge	a2,a1,800077d8 <__printf+0x670>
    800076c0:	06300593          	li	a1,99
    800076c4:	02e7f6bb          	remuw	a3,a5,a4
    800076c8:	02069693          	slli	a3,a3,0x20
    800076cc:	0206d693          	srli	a3,a3,0x20
    800076d0:	00dd86b3          	add	a3,s11,a3
    800076d4:	0006c683          	lbu	a3,0(a3)
    800076d8:	02e7d73b          	divuw	a4,a5,a4
    800076dc:	00200793          	li	a5,2
    800076e0:	f8d400a3          	sb	a3,-127(s0)
    800076e4:	bca5ece3          	bltu	a1,a0,800072bc <__printf+0x154>
    800076e8:	ce5ff06f          	j	800073cc <__printf+0x264>
    800076ec:	40e007bb          	negw	a5,a4
    800076f0:	00002d97          	auipc	s11,0x2
    800076f4:	028d8d93          	addi	s11,s11,40 # 80009718 <digits>
    800076f8:	00f7f693          	andi	a3,a5,15
    800076fc:	00dd86b3          	add	a3,s11,a3
    80007700:	0006c583          	lbu	a1,0(a3)
    80007704:	ff100613          	li	a2,-15
    80007708:	0047d69b          	srliw	a3,a5,0x4
    8000770c:	f8b40023          	sb	a1,-128(s0)
    80007710:	0047d59b          	srliw	a1,a5,0x4
    80007714:	0ac75e63          	bge	a4,a2,800077d0 <__printf+0x668>
    80007718:	00f6f693          	andi	a3,a3,15
    8000771c:	00dd86b3          	add	a3,s11,a3
    80007720:	0006c603          	lbu	a2,0(a3)
    80007724:	00f00693          	li	a3,15
    80007728:	0087d79b          	srliw	a5,a5,0x8
    8000772c:	f8c400a3          	sb	a2,-127(s0)
    80007730:	d8b6e4e3          	bltu	a3,a1,800074b8 <__printf+0x350>
    80007734:	00200793          	li	a5,2
    80007738:	e2dff06f          	j	80007564 <__printf+0x3fc>
    8000773c:	00002c97          	auipc	s9,0x2
    80007740:	fbcc8c93          	addi	s9,s9,-68 # 800096f8 <_ZL6digits+0x178>
    80007744:	02800513          	li	a0,40
    80007748:	ef1ff06f          	j	80007638 <__printf+0x4d0>
    8000774c:	00700793          	li	a5,7
    80007750:	00600c93          	li	s9,6
    80007754:	e0dff06f          	j	80007560 <__printf+0x3f8>
    80007758:	00700793          	li	a5,7
    8000775c:	00600c93          	li	s9,6
    80007760:	c69ff06f          	j	800073c8 <__printf+0x260>
    80007764:	00300793          	li	a5,3
    80007768:	00200c93          	li	s9,2
    8000776c:	c5dff06f          	j	800073c8 <__printf+0x260>
    80007770:	00300793          	li	a5,3
    80007774:	00200c93          	li	s9,2
    80007778:	de9ff06f          	j	80007560 <__printf+0x3f8>
    8000777c:	00400793          	li	a5,4
    80007780:	00300c93          	li	s9,3
    80007784:	dddff06f          	j	80007560 <__printf+0x3f8>
    80007788:	00400793          	li	a5,4
    8000778c:	00300c93          	li	s9,3
    80007790:	c39ff06f          	j	800073c8 <__printf+0x260>
    80007794:	00500793          	li	a5,5
    80007798:	00400c93          	li	s9,4
    8000779c:	c2dff06f          	j	800073c8 <__printf+0x260>
    800077a0:	00500793          	li	a5,5
    800077a4:	00400c93          	li	s9,4
    800077a8:	db9ff06f          	j	80007560 <__printf+0x3f8>
    800077ac:	00600793          	li	a5,6
    800077b0:	00500c93          	li	s9,5
    800077b4:	dadff06f          	j	80007560 <__printf+0x3f8>
    800077b8:	00600793          	li	a5,6
    800077bc:	00500c93          	li	s9,5
    800077c0:	c09ff06f          	j	800073c8 <__printf+0x260>
    800077c4:	00800793          	li	a5,8
    800077c8:	00700c93          	li	s9,7
    800077cc:	bfdff06f          	j	800073c8 <__printf+0x260>
    800077d0:	00100793          	li	a5,1
    800077d4:	d91ff06f          	j	80007564 <__printf+0x3fc>
    800077d8:	00100793          	li	a5,1
    800077dc:	bf1ff06f          	j	800073cc <__printf+0x264>
    800077e0:	00900793          	li	a5,9
    800077e4:	00800c93          	li	s9,8
    800077e8:	be1ff06f          	j	800073c8 <__printf+0x260>
    800077ec:	00002517          	auipc	a0,0x2
    800077f0:	f1450513          	addi	a0,a0,-236 # 80009700 <_ZL6digits+0x180>
    800077f4:	00000097          	auipc	ra,0x0
    800077f8:	918080e7          	jalr	-1768(ra) # 8000710c <panic>

00000000800077fc <printfinit>:
    800077fc:	fe010113          	addi	sp,sp,-32
    80007800:	00813823          	sd	s0,16(sp)
    80007804:	00913423          	sd	s1,8(sp)
    80007808:	00113c23          	sd	ra,24(sp)
    8000780c:	02010413          	addi	s0,sp,32
    80007810:	00005497          	auipc	s1,0x5
    80007814:	60048493          	addi	s1,s1,1536 # 8000ce10 <pr>
    80007818:	00048513          	mv	a0,s1
    8000781c:	00002597          	auipc	a1,0x2
    80007820:	ef458593          	addi	a1,a1,-268 # 80009710 <_ZL6digits+0x190>
    80007824:	00000097          	auipc	ra,0x0
    80007828:	5f4080e7          	jalr	1524(ra) # 80007e18 <initlock>
    8000782c:	01813083          	ld	ra,24(sp)
    80007830:	01013403          	ld	s0,16(sp)
    80007834:	0004ac23          	sw	zero,24(s1)
    80007838:	00813483          	ld	s1,8(sp)
    8000783c:	02010113          	addi	sp,sp,32
    80007840:	00008067          	ret

0000000080007844 <uartinit>:
    80007844:	ff010113          	addi	sp,sp,-16
    80007848:	00813423          	sd	s0,8(sp)
    8000784c:	01010413          	addi	s0,sp,16
    80007850:	100007b7          	lui	a5,0x10000
    80007854:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007858:	f8000713          	li	a4,-128
    8000785c:	00e781a3          	sb	a4,3(a5)
    80007860:	00300713          	li	a4,3
    80007864:	00e78023          	sb	a4,0(a5)
    80007868:	000780a3          	sb	zero,1(a5)
    8000786c:	00e781a3          	sb	a4,3(a5)
    80007870:	00700693          	li	a3,7
    80007874:	00d78123          	sb	a3,2(a5)
    80007878:	00e780a3          	sb	a4,1(a5)
    8000787c:	00813403          	ld	s0,8(sp)
    80007880:	01010113          	addi	sp,sp,16
    80007884:	00008067          	ret

0000000080007888 <uartputc>:
    80007888:	00004797          	auipc	a5,0x4
    8000788c:	2607a783          	lw	a5,608(a5) # 8000bae8 <panicked>
    80007890:	00078463          	beqz	a5,80007898 <uartputc+0x10>
    80007894:	0000006f          	j	80007894 <uartputc+0xc>
    80007898:	fd010113          	addi	sp,sp,-48
    8000789c:	02813023          	sd	s0,32(sp)
    800078a0:	00913c23          	sd	s1,24(sp)
    800078a4:	01213823          	sd	s2,16(sp)
    800078a8:	01313423          	sd	s3,8(sp)
    800078ac:	02113423          	sd	ra,40(sp)
    800078b0:	03010413          	addi	s0,sp,48
    800078b4:	00004917          	auipc	s2,0x4
    800078b8:	23c90913          	addi	s2,s2,572 # 8000baf0 <uart_tx_r>
    800078bc:	00093783          	ld	a5,0(s2)
    800078c0:	00004497          	auipc	s1,0x4
    800078c4:	23848493          	addi	s1,s1,568 # 8000baf8 <uart_tx_w>
    800078c8:	0004b703          	ld	a4,0(s1)
    800078cc:	02078693          	addi	a3,a5,32
    800078d0:	00050993          	mv	s3,a0
    800078d4:	02e69c63          	bne	a3,a4,8000790c <uartputc+0x84>
    800078d8:	00001097          	auipc	ra,0x1
    800078dc:	834080e7          	jalr	-1996(ra) # 8000810c <push_on>
    800078e0:	00093783          	ld	a5,0(s2)
    800078e4:	0004b703          	ld	a4,0(s1)
    800078e8:	02078793          	addi	a5,a5,32
    800078ec:	00e79463          	bne	a5,a4,800078f4 <uartputc+0x6c>
    800078f0:	0000006f          	j	800078f0 <uartputc+0x68>
    800078f4:	00001097          	auipc	ra,0x1
    800078f8:	88c080e7          	jalr	-1908(ra) # 80008180 <pop_on>
    800078fc:	00093783          	ld	a5,0(s2)
    80007900:	0004b703          	ld	a4,0(s1)
    80007904:	02078693          	addi	a3,a5,32
    80007908:	fce688e3          	beq	a3,a4,800078d8 <uartputc+0x50>
    8000790c:	01f77693          	andi	a3,a4,31
    80007910:	00005597          	auipc	a1,0x5
    80007914:	52058593          	addi	a1,a1,1312 # 8000ce30 <uart_tx_buf>
    80007918:	00d586b3          	add	a3,a1,a3
    8000791c:	00170713          	addi	a4,a4,1
    80007920:	01368023          	sb	s3,0(a3)
    80007924:	00e4b023          	sd	a4,0(s1)
    80007928:	10000637          	lui	a2,0x10000
    8000792c:	02f71063          	bne	a4,a5,8000794c <uartputc+0xc4>
    80007930:	0340006f          	j	80007964 <uartputc+0xdc>
    80007934:	00074703          	lbu	a4,0(a4)
    80007938:	00f93023          	sd	a5,0(s2)
    8000793c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007940:	00093783          	ld	a5,0(s2)
    80007944:	0004b703          	ld	a4,0(s1)
    80007948:	00f70e63          	beq	a4,a5,80007964 <uartputc+0xdc>
    8000794c:	00564683          	lbu	a3,5(a2)
    80007950:	01f7f713          	andi	a4,a5,31
    80007954:	00e58733          	add	a4,a1,a4
    80007958:	0206f693          	andi	a3,a3,32
    8000795c:	00178793          	addi	a5,a5,1
    80007960:	fc069ae3          	bnez	a3,80007934 <uartputc+0xac>
    80007964:	02813083          	ld	ra,40(sp)
    80007968:	02013403          	ld	s0,32(sp)
    8000796c:	01813483          	ld	s1,24(sp)
    80007970:	01013903          	ld	s2,16(sp)
    80007974:	00813983          	ld	s3,8(sp)
    80007978:	03010113          	addi	sp,sp,48
    8000797c:	00008067          	ret

0000000080007980 <uartputc_sync>:
    80007980:	ff010113          	addi	sp,sp,-16
    80007984:	00813423          	sd	s0,8(sp)
    80007988:	01010413          	addi	s0,sp,16
    8000798c:	00004717          	auipc	a4,0x4
    80007990:	15c72703          	lw	a4,348(a4) # 8000bae8 <panicked>
    80007994:	02071663          	bnez	a4,800079c0 <uartputc_sync+0x40>
    80007998:	00050793          	mv	a5,a0
    8000799c:	100006b7          	lui	a3,0x10000
    800079a0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800079a4:	02077713          	andi	a4,a4,32
    800079a8:	fe070ce3          	beqz	a4,800079a0 <uartputc_sync+0x20>
    800079ac:	0ff7f793          	andi	a5,a5,255
    800079b0:	00f68023          	sb	a5,0(a3)
    800079b4:	00813403          	ld	s0,8(sp)
    800079b8:	01010113          	addi	sp,sp,16
    800079bc:	00008067          	ret
    800079c0:	0000006f          	j	800079c0 <uartputc_sync+0x40>

00000000800079c4 <uartstart>:
    800079c4:	ff010113          	addi	sp,sp,-16
    800079c8:	00813423          	sd	s0,8(sp)
    800079cc:	01010413          	addi	s0,sp,16
    800079d0:	00004617          	auipc	a2,0x4
    800079d4:	12060613          	addi	a2,a2,288 # 8000baf0 <uart_tx_r>
    800079d8:	00004517          	auipc	a0,0x4
    800079dc:	12050513          	addi	a0,a0,288 # 8000baf8 <uart_tx_w>
    800079e0:	00063783          	ld	a5,0(a2)
    800079e4:	00053703          	ld	a4,0(a0)
    800079e8:	04f70263          	beq	a4,a5,80007a2c <uartstart+0x68>
    800079ec:	100005b7          	lui	a1,0x10000
    800079f0:	00005817          	auipc	a6,0x5
    800079f4:	44080813          	addi	a6,a6,1088 # 8000ce30 <uart_tx_buf>
    800079f8:	01c0006f          	j	80007a14 <uartstart+0x50>
    800079fc:	0006c703          	lbu	a4,0(a3)
    80007a00:	00f63023          	sd	a5,0(a2)
    80007a04:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a08:	00063783          	ld	a5,0(a2)
    80007a0c:	00053703          	ld	a4,0(a0)
    80007a10:	00f70e63          	beq	a4,a5,80007a2c <uartstart+0x68>
    80007a14:	01f7f713          	andi	a4,a5,31
    80007a18:	00e806b3          	add	a3,a6,a4
    80007a1c:	0055c703          	lbu	a4,5(a1)
    80007a20:	00178793          	addi	a5,a5,1
    80007a24:	02077713          	andi	a4,a4,32
    80007a28:	fc071ae3          	bnez	a4,800079fc <uartstart+0x38>
    80007a2c:	00813403          	ld	s0,8(sp)
    80007a30:	01010113          	addi	sp,sp,16
    80007a34:	00008067          	ret

0000000080007a38 <uartgetc>:
    80007a38:	ff010113          	addi	sp,sp,-16
    80007a3c:	00813423          	sd	s0,8(sp)
    80007a40:	01010413          	addi	s0,sp,16
    80007a44:	10000737          	lui	a4,0x10000
    80007a48:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007a4c:	0017f793          	andi	a5,a5,1
    80007a50:	00078c63          	beqz	a5,80007a68 <uartgetc+0x30>
    80007a54:	00074503          	lbu	a0,0(a4)
    80007a58:	0ff57513          	andi	a0,a0,255
    80007a5c:	00813403          	ld	s0,8(sp)
    80007a60:	01010113          	addi	sp,sp,16
    80007a64:	00008067          	ret
    80007a68:	fff00513          	li	a0,-1
    80007a6c:	ff1ff06f          	j	80007a5c <uartgetc+0x24>

0000000080007a70 <uartintr>:
    80007a70:	100007b7          	lui	a5,0x10000
    80007a74:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007a78:	0017f793          	andi	a5,a5,1
    80007a7c:	0a078463          	beqz	a5,80007b24 <uartintr+0xb4>
    80007a80:	fe010113          	addi	sp,sp,-32
    80007a84:	00813823          	sd	s0,16(sp)
    80007a88:	00913423          	sd	s1,8(sp)
    80007a8c:	00113c23          	sd	ra,24(sp)
    80007a90:	02010413          	addi	s0,sp,32
    80007a94:	100004b7          	lui	s1,0x10000
    80007a98:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007a9c:	0ff57513          	andi	a0,a0,255
    80007aa0:	fffff097          	auipc	ra,0xfffff
    80007aa4:	534080e7          	jalr	1332(ra) # 80006fd4 <consoleintr>
    80007aa8:	0054c783          	lbu	a5,5(s1)
    80007aac:	0017f793          	andi	a5,a5,1
    80007ab0:	fe0794e3          	bnez	a5,80007a98 <uartintr+0x28>
    80007ab4:	00004617          	auipc	a2,0x4
    80007ab8:	03c60613          	addi	a2,a2,60 # 8000baf0 <uart_tx_r>
    80007abc:	00004517          	auipc	a0,0x4
    80007ac0:	03c50513          	addi	a0,a0,60 # 8000baf8 <uart_tx_w>
    80007ac4:	00063783          	ld	a5,0(a2)
    80007ac8:	00053703          	ld	a4,0(a0)
    80007acc:	04f70263          	beq	a4,a5,80007b10 <uartintr+0xa0>
    80007ad0:	100005b7          	lui	a1,0x10000
    80007ad4:	00005817          	auipc	a6,0x5
    80007ad8:	35c80813          	addi	a6,a6,860 # 8000ce30 <uart_tx_buf>
    80007adc:	01c0006f          	j	80007af8 <uartintr+0x88>
    80007ae0:	0006c703          	lbu	a4,0(a3)
    80007ae4:	00f63023          	sd	a5,0(a2)
    80007ae8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007aec:	00063783          	ld	a5,0(a2)
    80007af0:	00053703          	ld	a4,0(a0)
    80007af4:	00f70e63          	beq	a4,a5,80007b10 <uartintr+0xa0>
    80007af8:	01f7f713          	andi	a4,a5,31
    80007afc:	00e806b3          	add	a3,a6,a4
    80007b00:	0055c703          	lbu	a4,5(a1)
    80007b04:	00178793          	addi	a5,a5,1
    80007b08:	02077713          	andi	a4,a4,32
    80007b0c:	fc071ae3          	bnez	a4,80007ae0 <uartintr+0x70>
    80007b10:	01813083          	ld	ra,24(sp)
    80007b14:	01013403          	ld	s0,16(sp)
    80007b18:	00813483          	ld	s1,8(sp)
    80007b1c:	02010113          	addi	sp,sp,32
    80007b20:	00008067          	ret
    80007b24:	00004617          	auipc	a2,0x4
    80007b28:	fcc60613          	addi	a2,a2,-52 # 8000baf0 <uart_tx_r>
    80007b2c:	00004517          	auipc	a0,0x4
    80007b30:	fcc50513          	addi	a0,a0,-52 # 8000baf8 <uart_tx_w>
    80007b34:	00063783          	ld	a5,0(a2)
    80007b38:	00053703          	ld	a4,0(a0)
    80007b3c:	04f70263          	beq	a4,a5,80007b80 <uartintr+0x110>
    80007b40:	100005b7          	lui	a1,0x10000
    80007b44:	00005817          	auipc	a6,0x5
    80007b48:	2ec80813          	addi	a6,a6,748 # 8000ce30 <uart_tx_buf>
    80007b4c:	01c0006f          	j	80007b68 <uartintr+0xf8>
    80007b50:	0006c703          	lbu	a4,0(a3)
    80007b54:	00f63023          	sd	a5,0(a2)
    80007b58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b5c:	00063783          	ld	a5,0(a2)
    80007b60:	00053703          	ld	a4,0(a0)
    80007b64:	02f70063          	beq	a4,a5,80007b84 <uartintr+0x114>
    80007b68:	01f7f713          	andi	a4,a5,31
    80007b6c:	00e806b3          	add	a3,a6,a4
    80007b70:	0055c703          	lbu	a4,5(a1)
    80007b74:	00178793          	addi	a5,a5,1
    80007b78:	02077713          	andi	a4,a4,32
    80007b7c:	fc071ae3          	bnez	a4,80007b50 <uartintr+0xe0>
    80007b80:	00008067          	ret
    80007b84:	00008067          	ret

0000000080007b88 <kinit>:
    80007b88:	fc010113          	addi	sp,sp,-64
    80007b8c:	02913423          	sd	s1,40(sp)
    80007b90:	fffff7b7          	lui	a5,0xfffff
    80007b94:	00006497          	auipc	s1,0x6
    80007b98:	2bb48493          	addi	s1,s1,699 # 8000de4f <end+0xfff>
    80007b9c:	02813823          	sd	s0,48(sp)
    80007ba0:	01313c23          	sd	s3,24(sp)
    80007ba4:	00f4f4b3          	and	s1,s1,a5
    80007ba8:	02113c23          	sd	ra,56(sp)
    80007bac:	03213023          	sd	s2,32(sp)
    80007bb0:	01413823          	sd	s4,16(sp)
    80007bb4:	01513423          	sd	s5,8(sp)
    80007bb8:	04010413          	addi	s0,sp,64
    80007bbc:	000017b7          	lui	a5,0x1
    80007bc0:	01100993          	li	s3,17
    80007bc4:	00f487b3          	add	a5,s1,a5
    80007bc8:	01b99993          	slli	s3,s3,0x1b
    80007bcc:	06f9e063          	bltu	s3,a5,80007c2c <kinit+0xa4>
    80007bd0:	00005a97          	auipc	s5,0x5
    80007bd4:	280a8a93          	addi	s5,s5,640 # 8000ce50 <end>
    80007bd8:	0754ec63          	bltu	s1,s5,80007c50 <kinit+0xc8>
    80007bdc:	0734fa63          	bgeu	s1,s3,80007c50 <kinit+0xc8>
    80007be0:	00088a37          	lui	s4,0x88
    80007be4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007be8:	00004917          	auipc	s2,0x4
    80007bec:	f1890913          	addi	s2,s2,-232 # 8000bb00 <kmem>
    80007bf0:	00ca1a13          	slli	s4,s4,0xc
    80007bf4:	0140006f          	j	80007c08 <kinit+0x80>
    80007bf8:	000017b7          	lui	a5,0x1
    80007bfc:	00f484b3          	add	s1,s1,a5
    80007c00:	0554e863          	bltu	s1,s5,80007c50 <kinit+0xc8>
    80007c04:	0534f663          	bgeu	s1,s3,80007c50 <kinit+0xc8>
    80007c08:	00001637          	lui	a2,0x1
    80007c0c:	00100593          	li	a1,1
    80007c10:	00048513          	mv	a0,s1
    80007c14:	00000097          	auipc	ra,0x0
    80007c18:	5e4080e7          	jalr	1508(ra) # 800081f8 <__memset>
    80007c1c:	00093783          	ld	a5,0(s2)
    80007c20:	00f4b023          	sd	a5,0(s1)
    80007c24:	00993023          	sd	s1,0(s2)
    80007c28:	fd4498e3          	bne	s1,s4,80007bf8 <kinit+0x70>
    80007c2c:	03813083          	ld	ra,56(sp)
    80007c30:	03013403          	ld	s0,48(sp)
    80007c34:	02813483          	ld	s1,40(sp)
    80007c38:	02013903          	ld	s2,32(sp)
    80007c3c:	01813983          	ld	s3,24(sp)
    80007c40:	01013a03          	ld	s4,16(sp)
    80007c44:	00813a83          	ld	s5,8(sp)
    80007c48:	04010113          	addi	sp,sp,64
    80007c4c:	00008067          	ret
    80007c50:	00002517          	auipc	a0,0x2
    80007c54:	ae050513          	addi	a0,a0,-1312 # 80009730 <digits+0x18>
    80007c58:	fffff097          	auipc	ra,0xfffff
    80007c5c:	4b4080e7          	jalr	1204(ra) # 8000710c <panic>

0000000080007c60 <freerange>:
    80007c60:	fc010113          	addi	sp,sp,-64
    80007c64:	000017b7          	lui	a5,0x1
    80007c68:	02913423          	sd	s1,40(sp)
    80007c6c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007c70:	009504b3          	add	s1,a0,s1
    80007c74:	fffff537          	lui	a0,0xfffff
    80007c78:	02813823          	sd	s0,48(sp)
    80007c7c:	02113c23          	sd	ra,56(sp)
    80007c80:	03213023          	sd	s2,32(sp)
    80007c84:	01313c23          	sd	s3,24(sp)
    80007c88:	01413823          	sd	s4,16(sp)
    80007c8c:	01513423          	sd	s5,8(sp)
    80007c90:	01613023          	sd	s6,0(sp)
    80007c94:	04010413          	addi	s0,sp,64
    80007c98:	00a4f4b3          	and	s1,s1,a0
    80007c9c:	00f487b3          	add	a5,s1,a5
    80007ca0:	06f5e463          	bltu	a1,a5,80007d08 <freerange+0xa8>
    80007ca4:	00005a97          	auipc	s5,0x5
    80007ca8:	1aca8a93          	addi	s5,s5,428 # 8000ce50 <end>
    80007cac:	0954e263          	bltu	s1,s5,80007d30 <freerange+0xd0>
    80007cb0:	01100993          	li	s3,17
    80007cb4:	01b99993          	slli	s3,s3,0x1b
    80007cb8:	0734fc63          	bgeu	s1,s3,80007d30 <freerange+0xd0>
    80007cbc:	00058a13          	mv	s4,a1
    80007cc0:	00004917          	auipc	s2,0x4
    80007cc4:	e4090913          	addi	s2,s2,-448 # 8000bb00 <kmem>
    80007cc8:	00002b37          	lui	s6,0x2
    80007ccc:	0140006f          	j	80007ce0 <freerange+0x80>
    80007cd0:	000017b7          	lui	a5,0x1
    80007cd4:	00f484b3          	add	s1,s1,a5
    80007cd8:	0554ec63          	bltu	s1,s5,80007d30 <freerange+0xd0>
    80007cdc:	0534fa63          	bgeu	s1,s3,80007d30 <freerange+0xd0>
    80007ce0:	00001637          	lui	a2,0x1
    80007ce4:	00100593          	li	a1,1
    80007ce8:	00048513          	mv	a0,s1
    80007cec:	00000097          	auipc	ra,0x0
    80007cf0:	50c080e7          	jalr	1292(ra) # 800081f8 <__memset>
    80007cf4:	00093703          	ld	a4,0(s2)
    80007cf8:	016487b3          	add	a5,s1,s6
    80007cfc:	00e4b023          	sd	a4,0(s1)
    80007d00:	00993023          	sd	s1,0(s2)
    80007d04:	fcfa76e3          	bgeu	s4,a5,80007cd0 <freerange+0x70>
    80007d08:	03813083          	ld	ra,56(sp)
    80007d0c:	03013403          	ld	s0,48(sp)
    80007d10:	02813483          	ld	s1,40(sp)
    80007d14:	02013903          	ld	s2,32(sp)
    80007d18:	01813983          	ld	s3,24(sp)
    80007d1c:	01013a03          	ld	s4,16(sp)
    80007d20:	00813a83          	ld	s5,8(sp)
    80007d24:	00013b03          	ld	s6,0(sp)
    80007d28:	04010113          	addi	sp,sp,64
    80007d2c:	00008067          	ret
    80007d30:	00002517          	auipc	a0,0x2
    80007d34:	a0050513          	addi	a0,a0,-1536 # 80009730 <digits+0x18>
    80007d38:	fffff097          	auipc	ra,0xfffff
    80007d3c:	3d4080e7          	jalr	980(ra) # 8000710c <panic>

0000000080007d40 <kfree>:
    80007d40:	fe010113          	addi	sp,sp,-32
    80007d44:	00813823          	sd	s0,16(sp)
    80007d48:	00113c23          	sd	ra,24(sp)
    80007d4c:	00913423          	sd	s1,8(sp)
    80007d50:	02010413          	addi	s0,sp,32
    80007d54:	03451793          	slli	a5,a0,0x34
    80007d58:	04079c63          	bnez	a5,80007db0 <kfree+0x70>
    80007d5c:	00005797          	auipc	a5,0x5
    80007d60:	0f478793          	addi	a5,a5,244 # 8000ce50 <end>
    80007d64:	00050493          	mv	s1,a0
    80007d68:	04f56463          	bltu	a0,a5,80007db0 <kfree+0x70>
    80007d6c:	01100793          	li	a5,17
    80007d70:	01b79793          	slli	a5,a5,0x1b
    80007d74:	02f57e63          	bgeu	a0,a5,80007db0 <kfree+0x70>
    80007d78:	00001637          	lui	a2,0x1
    80007d7c:	00100593          	li	a1,1
    80007d80:	00000097          	auipc	ra,0x0
    80007d84:	478080e7          	jalr	1144(ra) # 800081f8 <__memset>
    80007d88:	00004797          	auipc	a5,0x4
    80007d8c:	d7878793          	addi	a5,a5,-648 # 8000bb00 <kmem>
    80007d90:	0007b703          	ld	a4,0(a5)
    80007d94:	01813083          	ld	ra,24(sp)
    80007d98:	01013403          	ld	s0,16(sp)
    80007d9c:	00e4b023          	sd	a4,0(s1)
    80007da0:	0097b023          	sd	s1,0(a5)
    80007da4:	00813483          	ld	s1,8(sp)
    80007da8:	02010113          	addi	sp,sp,32
    80007dac:	00008067          	ret
    80007db0:	00002517          	auipc	a0,0x2
    80007db4:	98050513          	addi	a0,a0,-1664 # 80009730 <digits+0x18>
    80007db8:	fffff097          	auipc	ra,0xfffff
    80007dbc:	354080e7          	jalr	852(ra) # 8000710c <panic>

0000000080007dc0 <kalloc>:
    80007dc0:	fe010113          	addi	sp,sp,-32
    80007dc4:	00813823          	sd	s0,16(sp)
    80007dc8:	00913423          	sd	s1,8(sp)
    80007dcc:	00113c23          	sd	ra,24(sp)
    80007dd0:	02010413          	addi	s0,sp,32
    80007dd4:	00004797          	auipc	a5,0x4
    80007dd8:	d2c78793          	addi	a5,a5,-724 # 8000bb00 <kmem>
    80007ddc:	0007b483          	ld	s1,0(a5)
    80007de0:	02048063          	beqz	s1,80007e00 <kalloc+0x40>
    80007de4:	0004b703          	ld	a4,0(s1)
    80007de8:	00001637          	lui	a2,0x1
    80007dec:	00500593          	li	a1,5
    80007df0:	00048513          	mv	a0,s1
    80007df4:	00e7b023          	sd	a4,0(a5)
    80007df8:	00000097          	auipc	ra,0x0
    80007dfc:	400080e7          	jalr	1024(ra) # 800081f8 <__memset>
    80007e00:	01813083          	ld	ra,24(sp)
    80007e04:	01013403          	ld	s0,16(sp)
    80007e08:	00048513          	mv	a0,s1
    80007e0c:	00813483          	ld	s1,8(sp)
    80007e10:	02010113          	addi	sp,sp,32
    80007e14:	00008067          	ret

0000000080007e18 <initlock>:
    80007e18:	ff010113          	addi	sp,sp,-16
    80007e1c:	00813423          	sd	s0,8(sp)
    80007e20:	01010413          	addi	s0,sp,16
    80007e24:	00813403          	ld	s0,8(sp)
    80007e28:	00b53423          	sd	a1,8(a0)
    80007e2c:	00052023          	sw	zero,0(a0)
    80007e30:	00053823          	sd	zero,16(a0)
    80007e34:	01010113          	addi	sp,sp,16
    80007e38:	00008067          	ret

0000000080007e3c <acquire>:
    80007e3c:	fe010113          	addi	sp,sp,-32
    80007e40:	00813823          	sd	s0,16(sp)
    80007e44:	00913423          	sd	s1,8(sp)
    80007e48:	00113c23          	sd	ra,24(sp)
    80007e4c:	01213023          	sd	s2,0(sp)
    80007e50:	02010413          	addi	s0,sp,32
    80007e54:	00050493          	mv	s1,a0
    80007e58:	10002973          	csrr	s2,sstatus
    80007e5c:	100027f3          	csrr	a5,sstatus
    80007e60:	ffd7f793          	andi	a5,a5,-3
    80007e64:	10079073          	csrw	sstatus,a5
    80007e68:	fffff097          	auipc	ra,0xfffff
    80007e6c:	8e0080e7          	jalr	-1824(ra) # 80006748 <mycpu>
    80007e70:	07852783          	lw	a5,120(a0)
    80007e74:	06078e63          	beqz	a5,80007ef0 <acquire+0xb4>
    80007e78:	fffff097          	auipc	ra,0xfffff
    80007e7c:	8d0080e7          	jalr	-1840(ra) # 80006748 <mycpu>
    80007e80:	07852783          	lw	a5,120(a0)
    80007e84:	0004a703          	lw	a4,0(s1)
    80007e88:	0017879b          	addiw	a5,a5,1
    80007e8c:	06f52c23          	sw	a5,120(a0)
    80007e90:	04071063          	bnez	a4,80007ed0 <acquire+0x94>
    80007e94:	00100713          	li	a4,1
    80007e98:	00070793          	mv	a5,a4
    80007e9c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007ea0:	0007879b          	sext.w	a5,a5
    80007ea4:	fe079ae3          	bnez	a5,80007e98 <acquire+0x5c>
    80007ea8:	0ff0000f          	fence
    80007eac:	fffff097          	auipc	ra,0xfffff
    80007eb0:	89c080e7          	jalr	-1892(ra) # 80006748 <mycpu>
    80007eb4:	01813083          	ld	ra,24(sp)
    80007eb8:	01013403          	ld	s0,16(sp)
    80007ebc:	00a4b823          	sd	a0,16(s1)
    80007ec0:	00013903          	ld	s2,0(sp)
    80007ec4:	00813483          	ld	s1,8(sp)
    80007ec8:	02010113          	addi	sp,sp,32
    80007ecc:	00008067          	ret
    80007ed0:	0104b903          	ld	s2,16(s1)
    80007ed4:	fffff097          	auipc	ra,0xfffff
    80007ed8:	874080e7          	jalr	-1932(ra) # 80006748 <mycpu>
    80007edc:	faa91ce3          	bne	s2,a0,80007e94 <acquire+0x58>
    80007ee0:	00002517          	auipc	a0,0x2
    80007ee4:	85850513          	addi	a0,a0,-1960 # 80009738 <digits+0x20>
    80007ee8:	fffff097          	auipc	ra,0xfffff
    80007eec:	224080e7          	jalr	548(ra) # 8000710c <panic>
    80007ef0:	00195913          	srli	s2,s2,0x1
    80007ef4:	fffff097          	auipc	ra,0xfffff
    80007ef8:	854080e7          	jalr	-1964(ra) # 80006748 <mycpu>
    80007efc:	00197913          	andi	s2,s2,1
    80007f00:	07252e23          	sw	s2,124(a0)
    80007f04:	f75ff06f          	j	80007e78 <acquire+0x3c>

0000000080007f08 <release>:
    80007f08:	fe010113          	addi	sp,sp,-32
    80007f0c:	00813823          	sd	s0,16(sp)
    80007f10:	00113c23          	sd	ra,24(sp)
    80007f14:	00913423          	sd	s1,8(sp)
    80007f18:	01213023          	sd	s2,0(sp)
    80007f1c:	02010413          	addi	s0,sp,32
    80007f20:	00052783          	lw	a5,0(a0)
    80007f24:	00079a63          	bnez	a5,80007f38 <release+0x30>
    80007f28:	00002517          	auipc	a0,0x2
    80007f2c:	81850513          	addi	a0,a0,-2024 # 80009740 <digits+0x28>
    80007f30:	fffff097          	auipc	ra,0xfffff
    80007f34:	1dc080e7          	jalr	476(ra) # 8000710c <panic>
    80007f38:	01053903          	ld	s2,16(a0)
    80007f3c:	00050493          	mv	s1,a0
    80007f40:	fffff097          	auipc	ra,0xfffff
    80007f44:	808080e7          	jalr	-2040(ra) # 80006748 <mycpu>
    80007f48:	fea910e3          	bne	s2,a0,80007f28 <release+0x20>
    80007f4c:	0004b823          	sd	zero,16(s1)
    80007f50:	0ff0000f          	fence
    80007f54:	0f50000f          	fence	iorw,ow
    80007f58:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007f5c:	ffffe097          	auipc	ra,0xffffe
    80007f60:	7ec080e7          	jalr	2028(ra) # 80006748 <mycpu>
    80007f64:	100027f3          	csrr	a5,sstatus
    80007f68:	0027f793          	andi	a5,a5,2
    80007f6c:	04079a63          	bnez	a5,80007fc0 <release+0xb8>
    80007f70:	07852783          	lw	a5,120(a0)
    80007f74:	02f05e63          	blez	a5,80007fb0 <release+0xa8>
    80007f78:	fff7871b          	addiw	a4,a5,-1
    80007f7c:	06e52c23          	sw	a4,120(a0)
    80007f80:	00071c63          	bnez	a4,80007f98 <release+0x90>
    80007f84:	07c52783          	lw	a5,124(a0)
    80007f88:	00078863          	beqz	a5,80007f98 <release+0x90>
    80007f8c:	100027f3          	csrr	a5,sstatus
    80007f90:	0027e793          	ori	a5,a5,2
    80007f94:	10079073          	csrw	sstatus,a5
    80007f98:	01813083          	ld	ra,24(sp)
    80007f9c:	01013403          	ld	s0,16(sp)
    80007fa0:	00813483          	ld	s1,8(sp)
    80007fa4:	00013903          	ld	s2,0(sp)
    80007fa8:	02010113          	addi	sp,sp,32
    80007fac:	00008067          	ret
    80007fb0:	00001517          	auipc	a0,0x1
    80007fb4:	7b050513          	addi	a0,a0,1968 # 80009760 <digits+0x48>
    80007fb8:	fffff097          	auipc	ra,0xfffff
    80007fbc:	154080e7          	jalr	340(ra) # 8000710c <panic>
    80007fc0:	00001517          	auipc	a0,0x1
    80007fc4:	78850513          	addi	a0,a0,1928 # 80009748 <digits+0x30>
    80007fc8:	fffff097          	auipc	ra,0xfffff
    80007fcc:	144080e7          	jalr	324(ra) # 8000710c <panic>

0000000080007fd0 <holding>:
    80007fd0:	00052783          	lw	a5,0(a0)
    80007fd4:	00079663          	bnez	a5,80007fe0 <holding+0x10>
    80007fd8:	00000513          	li	a0,0
    80007fdc:	00008067          	ret
    80007fe0:	fe010113          	addi	sp,sp,-32
    80007fe4:	00813823          	sd	s0,16(sp)
    80007fe8:	00913423          	sd	s1,8(sp)
    80007fec:	00113c23          	sd	ra,24(sp)
    80007ff0:	02010413          	addi	s0,sp,32
    80007ff4:	01053483          	ld	s1,16(a0)
    80007ff8:	ffffe097          	auipc	ra,0xffffe
    80007ffc:	750080e7          	jalr	1872(ra) # 80006748 <mycpu>
    80008000:	01813083          	ld	ra,24(sp)
    80008004:	01013403          	ld	s0,16(sp)
    80008008:	40a48533          	sub	a0,s1,a0
    8000800c:	00153513          	seqz	a0,a0
    80008010:	00813483          	ld	s1,8(sp)
    80008014:	02010113          	addi	sp,sp,32
    80008018:	00008067          	ret

000000008000801c <push_off>:
    8000801c:	fe010113          	addi	sp,sp,-32
    80008020:	00813823          	sd	s0,16(sp)
    80008024:	00113c23          	sd	ra,24(sp)
    80008028:	00913423          	sd	s1,8(sp)
    8000802c:	02010413          	addi	s0,sp,32
    80008030:	100024f3          	csrr	s1,sstatus
    80008034:	100027f3          	csrr	a5,sstatus
    80008038:	ffd7f793          	andi	a5,a5,-3
    8000803c:	10079073          	csrw	sstatus,a5
    80008040:	ffffe097          	auipc	ra,0xffffe
    80008044:	708080e7          	jalr	1800(ra) # 80006748 <mycpu>
    80008048:	07852783          	lw	a5,120(a0)
    8000804c:	02078663          	beqz	a5,80008078 <push_off+0x5c>
    80008050:	ffffe097          	auipc	ra,0xffffe
    80008054:	6f8080e7          	jalr	1784(ra) # 80006748 <mycpu>
    80008058:	07852783          	lw	a5,120(a0)
    8000805c:	01813083          	ld	ra,24(sp)
    80008060:	01013403          	ld	s0,16(sp)
    80008064:	0017879b          	addiw	a5,a5,1
    80008068:	06f52c23          	sw	a5,120(a0)
    8000806c:	00813483          	ld	s1,8(sp)
    80008070:	02010113          	addi	sp,sp,32
    80008074:	00008067          	ret
    80008078:	0014d493          	srli	s1,s1,0x1
    8000807c:	ffffe097          	auipc	ra,0xffffe
    80008080:	6cc080e7          	jalr	1740(ra) # 80006748 <mycpu>
    80008084:	0014f493          	andi	s1,s1,1
    80008088:	06952e23          	sw	s1,124(a0)
    8000808c:	fc5ff06f          	j	80008050 <push_off+0x34>

0000000080008090 <pop_off>:
    80008090:	ff010113          	addi	sp,sp,-16
    80008094:	00813023          	sd	s0,0(sp)
    80008098:	00113423          	sd	ra,8(sp)
    8000809c:	01010413          	addi	s0,sp,16
    800080a0:	ffffe097          	auipc	ra,0xffffe
    800080a4:	6a8080e7          	jalr	1704(ra) # 80006748 <mycpu>
    800080a8:	100027f3          	csrr	a5,sstatus
    800080ac:	0027f793          	andi	a5,a5,2
    800080b0:	04079663          	bnez	a5,800080fc <pop_off+0x6c>
    800080b4:	07852783          	lw	a5,120(a0)
    800080b8:	02f05a63          	blez	a5,800080ec <pop_off+0x5c>
    800080bc:	fff7871b          	addiw	a4,a5,-1
    800080c0:	06e52c23          	sw	a4,120(a0)
    800080c4:	00071c63          	bnez	a4,800080dc <pop_off+0x4c>
    800080c8:	07c52783          	lw	a5,124(a0)
    800080cc:	00078863          	beqz	a5,800080dc <pop_off+0x4c>
    800080d0:	100027f3          	csrr	a5,sstatus
    800080d4:	0027e793          	ori	a5,a5,2
    800080d8:	10079073          	csrw	sstatus,a5
    800080dc:	00813083          	ld	ra,8(sp)
    800080e0:	00013403          	ld	s0,0(sp)
    800080e4:	01010113          	addi	sp,sp,16
    800080e8:	00008067          	ret
    800080ec:	00001517          	auipc	a0,0x1
    800080f0:	67450513          	addi	a0,a0,1652 # 80009760 <digits+0x48>
    800080f4:	fffff097          	auipc	ra,0xfffff
    800080f8:	018080e7          	jalr	24(ra) # 8000710c <panic>
    800080fc:	00001517          	auipc	a0,0x1
    80008100:	64c50513          	addi	a0,a0,1612 # 80009748 <digits+0x30>
    80008104:	fffff097          	auipc	ra,0xfffff
    80008108:	008080e7          	jalr	8(ra) # 8000710c <panic>

000000008000810c <push_on>:
    8000810c:	fe010113          	addi	sp,sp,-32
    80008110:	00813823          	sd	s0,16(sp)
    80008114:	00113c23          	sd	ra,24(sp)
    80008118:	00913423          	sd	s1,8(sp)
    8000811c:	02010413          	addi	s0,sp,32
    80008120:	100024f3          	csrr	s1,sstatus
    80008124:	100027f3          	csrr	a5,sstatus
    80008128:	0027e793          	ori	a5,a5,2
    8000812c:	10079073          	csrw	sstatus,a5
    80008130:	ffffe097          	auipc	ra,0xffffe
    80008134:	618080e7          	jalr	1560(ra) # 80006748 <mycpu>
    80008138:	07852783          	lw	a5,120(a0)
    8000813c:	02078663          	beqz	a5,80008168 <push_on+0x5c>
    80008140:	ffffe097          	auipc	ra,0xffffe
    80008144:	608080e7          	jalr	1544(ra) # 80006748 <mycpu>
    80008148:	07852783          	lw	a5,120(a0)
    8000814c:	01813083          	ld	ra,24(sp)
    80008150:	01013403          	ld	s0,16(sp)
    80008154:	0017879b          	addiw	a5,a5,1
    80008158:	06f52c23          	sw	a5,120(a0)
    8000815c:	00813483          	ld	s1,8(sp)
    80008160:	02010113          	addi	sp,sp,32
    80008164:	00008067          	ret
    80008168:	0014d493          	srli	s1,s1,0x1
    8000816c:	ffffe097          	auipc	ra,0xffffe
    80008170:	5dc080e7          	jalr	1500(ra) # 80006748 <mycpu>
    80008174:	0014f493          	andi	s1,s1,1
    80008178:	06952e23          	sw	s1,124(a0)
    8000817c:	fc5ff06f          	j	80008140 <push_on+0x34>

0000000080008180 <pop_on>:
    80008180:	ff010113          	addi	sp,sp,-16
    80008184:	00813023          	sd	s0,0(sp)
    80008188:	00113423          	sd	ra,8(sp)
    8000818c:	01010413          	addi	s0,sp,16
    80008190:	ffffe097          	auipc	ra,0xffffe
    80008194:	5b8080e7          	jalr	1464(ra) # 80006748 <mycpu>
    80008198:	100027f3          	csrr	a5,sstatus
    8000819c:	0027f793          	andi	a5,a5,2
    800081a0:	04078463          	beqz	a5,800081e8 <pop_on+0x68>
    800081a4:	07852783          	lw	a5,120(a0)
    800081a8:	02f05863          	blez	a5,800081d8 <pop_on+0x58>
    800081ac:	fff7879b          	addiw	a5,a5,-1
    800081b0:	06f52c23          	sw	a5,120(a0)
    800081b4:	07853783          	ld	a5,120(a0)
    800081b8:	00079863          	bnez	a5,800081c8 <pop_on+0x48>
    800081bc:	100027f3          	csrr	a5,sstatus
    800081c0:	ffd7f793          	andi	a5,a5,-3
    800081c4:	10079073          	csrw	sstatus,a5
    800081c8:	00813083          	ld	ra,8(sp)
    800081cc:	00013403          	ld	s0,0(sp)
    800081d0:	01010113          	addi	sp,sp,16
    800081d4:	00008067          	ret
    800081d8:	00001517          	auipc	a0,0x1
    800081dc:	5b050513          	addi	a0,a0,1456 # 80009788 <digits+0x70>
    800081e0:	fffff097          	auipc	ra,0xfffff
    800081e4:	f2c080e7          	jalr	-212(ra) # 8000710c <panic>
    800081e8:	00001517          	auipc	a0,0x1
    800081ec:	58050513          	addi	a0,a0,1408 # 80009768 <digits+0x50>
    800081f0:	fffff097          	auipc	ra,0xfffff
    800081f4:	f1c080e7          	jalr	-228(ra) # 8000710c <panic>

00000000800081f8 <__memset>:
    800081f8:	ff010113          	addi	sp,sp,-16
    800081fc:	00813423          	sd	s0,8(sp)
    80008200:	01010413          	addi	s0,sp,16
    80008204:	1a060e63          	beqz	a2,800083c0 <__memset+0x1c8>
    80008208:	40a007b3          	neg	a5,a0
    8000820c:	0077f793          	andi	a5,a5,7
    80008210:	00778693          	addi	a3,a5,7
    80008214:	00b00813          	li	a6,11
    80008218:	0ff5f593          	andi	a1,a1,255
    8000821c:	fff6071b          	addiw	a4,a2,-1
    80008220:	1b06e663          	bltu	a3,a6,800083cc <__memset+0x1d4>
    80008224:	1cd76463          	bltu	a4,a3,800083ec <__memset+0x1f4>
    80008228:	1a078e63          	beqz	a5,800083e4 <__memset+0x1ec>
    8000822c:	00b50023          	sb	a1,0(a0)
    80008230:	00100713          	li	a4,1
    80008234:	1ae78463          	beq	a5,a4,800083dc <__memset+0x1e4>
    80008238:	00b500a3          	sb	a1,1(a0)
    8000823c:	00200713          	li	a4,2
    80008240:	1ae78a63          	beq	a5,a4,800083f4 <__memset+0x1fc>
    80008244:	00b50123          	sb	a1,2(a0)
    80008248:	00300713          	li	a4,3
    8000824c:	18e78463          	beq	a5,a4,800083d4 <__memset+0x1dc>
    80008250:	00b501a3          	sb	a1,3(a0)
    80008254:	00400713          	li	a4,4
    80008258:	1ae78263          	beq	a5,a4,800083fc <__memset+0x204>
    8000825c:	00b50223          	sb	a1,4(a0)
    80008260:	00500713          	li	a4,5
    80008264:	1ae78063          	beq	a5,a4,80008404 <__memset+0x20c>
    80008268:	00b502a3          	sb	a1,5(a0)
    8000826c:	00700713          	li	a4,7
    80008270:	18e79e63          	bne	a5,a4,8000840c <__memset+0x214>
    80008274:	00b50323          	sb	a1,6(a0)
    80008278:	00700e93          	li	t4,7
    8000827c:	00859713          	slli	a4,a1,0x8
    80008280:	00e5e733          	or	a4,a1,a4
    80008284:	01059e13          	slli	t3,a1,0x10
    80008288:	01c76e33          	or	t3,a4,t3
    8000828c:	01859313          	slli	t1,a1,0x18
    80008290:	006e6333          	or	t1,t3,t1
    80008294:	02059893          	slli	a7,a1,0x20
    80008298:	40f60e3b          	subw	t3,a2,a5
    8000829c:	011368b3          	or	a7,t1,a7
    800082a0:	02859813          	slli	a6,a1,0x28
    800082a4:	0108e833          	or	a6,a7,a6
    800082a8:	03059693          	slli	a3,a1,0x30
    800082ac:	003e589b          	srliw	a7,t3,0x3
    800082b0:	00d866b3          	or	a3,a6,a3
    800082b4:	03859713          	slli	a4,a1,0x38
    800082b8:	00389813          	slli	a6,a7,0x3
    800082bc:	00f507b3          	add	a5,a0,a5
    800082c0:	00e6e733          	or	a4,a3,a4
    800082c4:	000e089b          	sext.w	a7,t3
    800082c8:	00f806b3          	add	a3,a6,a5
    800082cc:	00e7b023          	sd	a4,0(a5)
    800082d0:	00878793          	addi	a5,a5,8
    800082d4:	fed79ce3          	bne	a5,a3,800082cc <__memset+0xd4>
    800082d8:	ff8e7793          	andi	a5,t3,-8
    800082dc:	0007871b          	sext.w	a4,a5
    800082e0:	01d787bb          	addw	a5,a5,t4
    800082e4:	0ce88e63          	beq	a7,a4,800083c0 <__memset+0x1c8>
    800082e8:	00f50733          	add	a4,a0,a5
    800082ec:	00b70023          	sb	a1,0(a4)
    800082f0:	0017871b          	addiw	a4,a5,1
    800082f4:	0cc77663          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    800082f8:	00e50733          	add	a4,a0,a4
    800082fc:	00b70023          	sb	a1,0(a4)
    80008300:	0027871b          	addiw	a4,a5,2
    80008304:	0ac77e63          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008308:	00e50733          	add	a4,a0,a4
    8000830c:	00b70023          	sb	a1,0(a4)
    80008310:	0037871b          	addiw	a4,a5,3
    80008314:	0ac77663          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008318:	00e50733          	add	a4,a0,a4
    8000831c:	00b70023          	sb	a1,0(a4)
    80008320:	0047871b          	addiw	a4,a5,4
    80008324:	08c77e63          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008328:	00e50733          	add	a4,a0,a4
    8000832c:	00b70023          	sb	a1,0(a4)
    80008330:	0057871b          	addiw	a4,a5,5
    80008334:	08c77663          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008338:	00e50733          	add	a4,a0,a4
    8000833c:	00b70023          	sb	a1,0(a4)
    80008340:	0067871b          	addiw	a4,a5,6
    80008344:	06c77e63          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008348:	00e50733          	add	a4,a0,a4
    8000834c:	00b70023          	sb	a1,0(a4)
    80008350:	0077871b          	addiw	a4,a5,7
    80008354:	06c77663          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008358:	00e50733          	add	a4,a0,a4
    8000835c:	00b70023          	sb	a1,0(a4)
    80008360:	0087871b          	addiw	a4,a5,8
    80008364:	04c77e63          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008368:	00e50733          	add	a4,a0,a4
    8000836c:	00b70023          	sb	a1,0(a4)
    80008370:	0097871b          	addiw	a4,a5,9
    80008374:	04c77663          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008378:	00e50733          	add	a4,a0,a4
    8000837c:	00b70023          	sb	a1,0(a4)
    80008380:	00a7871b          	addiw	a4,a5,10
    80008384:	02c77e63          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008388:	00e50733          	add	a4,a0,a4
    8000838c:	00b70023          	sb	a1,0(a4)
    80008390:	00b7871b          	addiw	a4,a5,11
    80008394:	02c77663          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008398:	00e50733          	add	a4,a0,a4
    8000839c:	00b70023          	sb	a1,0(a4)
    800083a0:	00c7871b          	addiw	a4,a5,12
    800083a4:	00c77e63          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    800083a8:	00e50733          	add	a4,a0,a4
    800083ac:	00b70023          	sb	a1,0(a4)
    800083b0:	00d7879b          	addiw	a5,a5,13
    800083b4:	00c7f663          	bgeu	a5,a2,800083c0 <__memset+0x1c8>
    800083b8:	00f507b3          	add	a5,a0,a5
    800083bc:	00b78023          	sb	a1,0(a5)
    800083c0:	00813403          	ld	s0,8(sp)
    800083c4:	01010113          	addi	sp,sp,16
    800083c8:	00008067          	ret
    800083cc:	00b00693          	li	a3,11
    800083d0:	e55ff06f          	j	80008224 <__memset+0x2c>
    800083d4:	00300e93          	li	t4,3
    800083d8:	ea5ff06f          	j	8000827c <__memset+0x84>
    800083dc:	00100e93          	li	t4,1
    800083e0:	e9dff06f          	j	8000827c <__memset+0x84>
    800083e4:	00000e93          	li	t4,0
    800083e8:	e95ff06f          	j	8000827c <__memset+0x84>
    800083ec:	00000793          	li	a5,0
    800083f0:	ef9ff06f          	j	800082e8 <__memset+0xf0>
    800083f4:	00200e93          	li	t4,2
    800083f8:	e85ff06f          	j	8000827c <__memset+0x84>
    800083fc:	00400e93          	li	t4,4
    80008400:	e7dff06f          	j	8000827c <__memset+0x84>
    80008404:	00500e93          	li	t4,5
    80008408:	e75ff06f          	j	8000827c <__memset+0x84>
    8000840c:	00600e93          	li	t4,6
    80008410:	e6dff06f          	j	8000827c <__memset+0x84>

0000000080008414 <__memmove>:
    80008414:	ff010113          	addi	sp,sp,-16
    80008418:	00813423          	sd	s0,8(sp)
    8000841c:	01010413          	addi	s0,sp,16
    80008420:	0e060863          	beqz	a2,80008510 <__memmove+0xfc>
    80008424:	fff6069b          	addiw	a3,a2,-1
    80008428:	0006881b          	sext.w	a6,a3
    8000842c:	0ea5e863          	bltu	a1,a0,8000851c <__memmove+0x108>
    80008430:	00758713          	addi	a4,a1,7
    80008434:	00a5e7b3          	or	a5,a1,a0
    80008438:	40a70733          	sub	a4,a4,a0
    8000843c:	0077f793          	andi	a5,a5,7
    80008440:	00f73713          	sltiu	a4,a4,15
    80008444:	00174713          	xori	a4,a4,1
    80008448:	0017b793          	seqz	a5,a5
    8000844c:	00e7f7b3          	and	a5,a5,a4
    80008450:	10078863          	beqz	a5,80008560 <__memmove+0x14c>
    80008454:	00900793          	li	a5,9
    80008458:	1107f463          	bgeu	a5,a6,80008560 <__memmove+0x14c>
    8000845c:	0036581b          	srliw	a6,a2,0x3
    80008460:	fff8081b          	addiw	a6,a6,-1
    80008464:	02081813          	slli	a6,a6,0x20
    80008468:	01d85893          	srli	a7,a6,0x1d
    8000846c:	00858813          	addi	a6,a1,8
    80008470:	00058793          	mv	a5,a1
    80008474:	00050713          	mv	a4,a0
    80008478:	01088833          	add	a6,a7,a6
    8000847c:	0007b883          	ld	a7,0(a5)
    80008480:	00878793          	addi	a5,a5,8
    80008484:	00870713          	addi	a4,a4,8
    80008488:	ff173c23          	sd	a7,-8(a4)
    8000848c:	ff0798e3          	bne	a5,a6,8000847c <__memmove+0x68>
    80008490:	ff867713          	andi	a4,a2,-8
    80008494:	02071793          	slli	a5,a4,0x20
    80008498:	0207d793          	srli	a5,a5,0x20
    8000849c:	00f585b3          	add	a1,a1,a5
    800084a0:	40e686bb          	subw	a3,a3,a4
    800084a4:	00f507b3          	add	a5,a0,a5
    800084a8:	06e60463          	beq	a2,a4,80008510 <__memmove+0xfc>
    800084ac:	0005c703          	lbu	a4,0(a1)
    800084b0:	00e78023          	sb	a4,0(a5)
    800084b4:	04068e63          	beqz	a3,80008510 <__memmove+0xfc>
    800084b8:	0015c603          	lbu	a2,1(a1)
    800084bc:	00100713          	li	a4,1
    800084c0:	00c780a3          	sb	a2,1(a5)
    800084c4:	04e68663          	beq	a3,a4,80008510 <__memmove+0xfc>
    800084c8:	0025c603          	lbu	a2,2(a1)
    800084cc:	00200713          	li	a4,2
    800084d0:	00c78123          	sb	a2,2(a5)
    800084d4:	02e68e63          	beq	a3,a4,80008510 <__memmove+0xfc>
    800084d8:	0035c603          	lbu	a2,3(a1)
    800084dc:	00300713          	li	a4,3
    800084e0:	00c781a3          	sb	a2,3(a5)
    800084e4:	02e68663          	beq	a3,a4,80008510 <__memmove+0xfc>
    800084e8:	0045c603          	lbu	a2,4(a1)
    800084ec:	00400713          	li	a4,4
    800084f0:	00c78223          	sb	a2,4(a5)
    800084f4:	00e68e63          	beq	a3,a4,80008510 <__memmove+0xfc>
    800084f8:	0055c603          	lbu	a2,5(a1)
    800084fc:	00500713          	li	a4,5
    80008500:	00c782a3          	sb	a2,5(a5)
    80008504:	00e68663          	beq	a3,a4,80008510 <__memmove+0xfc>
    80008508:	0065c703          	lbu	a4,6(a1)
    8000850c:	00e78323          	sb	a4,6(a5)
    80008510:	00813403          	ld	s0,8(sp)
    80008514:	01010113          	addi	sp,sp,16
    80008518:	00008067          	ret
    8000851c:	02061713          	slli	a4,a2,0x20
    80008520:	02075713          	srli	a4,a4,0x20
    80008524:	00e587b3          	add	a5,a1,a4
    80008528:	f0f574e3          	bgeu	a0,a5,80008430 <__memmove+0x1c>
    8000852c:	02069613          	slli	a2,a3,0x20
    80008530:	02065613          	srli	a2,a2,0x20
    80008534:	fff64613          	not	a2,a2
    80008538:	00e50733          	add	a4,a0,a4
    8000853c:	00c78633          	add	a2,a5,a2
    80008540:	fff7c683          	lbu	a3,-1(a5)
    80008544:	fff78793          	addi	a5,a5,-1
    80008548:	fff70713          	addi	a4,a4,-1
    8000854c:	00d70023          	sb	a3,0(a4)
    80008550:	fec798e3          	bne	a5,a2,80008540 <__memmove+0x12c>
    80008554:	00813403          	ld	s0,8(sp)
    80008558:	01010113          	addi	sp,sp,16
    8000855c:	00008067          	ret
    80008560:	02069713          	slli	a4,a3,0x20
    80008564:	02075713          	srli	a4,a4,0x20
    80008568:	00170713          	addi	a4,a4,1
    8000856c:	00e50733          	add	a4,a0,a4
    80008570:	00050793          	mv	a5,a0
    80008574:	0005c683          	lbu	a3,0(a1)
    80008578:	00178793          	addi	a5,a5,1
    8000857c:	00158593          	addi	a1,a1,1
    80008580:	fed78fa3          	sb	a3,-1(a5)
    80008584:	fee798e3          	bne	a5,a4,80008574 <__memmove+0x160>
    80008588:	f89ff06f          	j	80008510 <__memmove+0xfc>

000000008000858c <__putc>:
    8000858c:	fe010113          	addi	sp,sp,-32
    80008590:	00813823          	sd	s0,16(sp)
    80008594:	00113c23          	sd	ra,24(sp)
    80008598:	02010413          	addi	s0,sp,32
    8000859c:	00050793          	mv	a5,a0
    800085a0:	fef40593          	addi	a1,s0,-17
    800085a4:	00100613          	li	a2,1
    800085a8:	00000513          	li	a0,0
    800085ac:	fef407a3          	sb	a5,-17(s0)
    800085b0:	fffff097          	auipc	ra,0xfffff
    800085b4:	b3c080e7          	jalr	-1220(ra) # 800070ec <console_write>
    800085b8:	01813083          	ld	ra,24(sp)
    800085bc:	01013403          	ld	s0,16(sp)
    800085c0:	02010113          	addi	sp,sp,32
    800085c4:	00008067          	ret

00000000800085c8 <__getc>:
    800085c8:	fe010113          	addi	sp,sp,-32
    800085cc:	00813823          	sd	s0,16(sp)
    800085d0:	00113c23          	sd	ra,24(sp)
    800085d4:	02010413          	addi	s0,sp,32
    800085d8:	fe840593          	addi	a1,s0,-24
    800085dc:	00100613          	li	a2,1
    800085e0:	00000513          	li	a0,0
    800085e4:	fffff097          	auipc	ra,0xfffff
    800085e8:	ae8080e7          	jalr	-1304(ra) # 800070cc <console_read>
    800085ec:	fe844503          	lbu	a0,-24(s0)
    800085f0:	01813083          	ld	ra,24(sp)
    800085f4:	01013403          	ld	s0,16(sp)
    800085f8:	02010113          	addi	sp,sp,32
    800085fc:	00008067          	ret

0000000080008600 <console_handler>:
    80008600:	fe010113          	addi	sp,sp,-32
    80008604:	00813823          	sd	s0,16(sp)
    80008608:	00113c23          	sd	ra,24(sp)
    8000860c:	00913423          	sd	s1,8(sp)
    80008610:	02010413          	addi	s0,sp,32
    80008614:	14202773          	csrr	a4,scause
    80008618:	100027f3          	csrr	a5,sstatus
    8000861c:	0027f793          	andi	a5,a5,2
    80008620:	06079e63          	bnez	a5,8000869c <console_handler+0x9c>
    80008624:	00074c63          	bltz	a4,8000863c <console_handler+0x3c>
    80008628:	01813083          	ld	ra,24(sp)
    8000862c:	01013403          	ld	s0,16(sp)
    80008630:	00813483          	ld	s1,8(sp)
    80008634:	02010113          	addi	sp,sp,32
    80008638:	00008067          	ret
    8000863c:	0ff77713          	andi	a4,a4,255
    80008640:	00900793          	li	a5,9
    80008644:	fef712e3          	bne	a4,a5,80008628 <console_handler+0x28>
    80008648:	ffffe097          	auipc	ra,0xffffe
    8000864c:	6dc080e7          	jalr	1756(ra) # 80006d24 <plic_claim>
    80008650:	00a00793          	li	a5,10
    80008654:	00050493          	mv	s1,a0
    80008658:	02f50c63          	beq	a0,a5,80008690 <console_handler+0x90>
    8000865c:	fc0506e3          	beqz	a0,80008628 <console_handler+0x28>
    80008660:	00050593          	mv	a1,a0
    80008664:	00001517          	auipc	a0,0x1
    80008668:	02c50513          	addi	a0,a0,44 # 80009690 <_ZL6digits+0x110>
    8000866c:	fffff097          	auipc	ra,0xfffff
    80008670:	afc080e7          	jalr	-1284(ra) # 80007168 <__printf>
    80008674:	01013403          	ld	s0,16(sp)
    80008678:	01813083          	ld	ra,24(sp)
    8000867c:	00048513          	mv	a0,s1
    80008680:	00813483          	ld	s1,8(sp)
    80008684:	02010113          	addi	sp,sp,32
    80008688:	ffffe317          	auipc	t1,0xffffe
    8000868c:	6d430067          	jr	1748(t1) # 80006d5c <plic_complete>
    80008690:	fffff097          	auipc	ra,0xfffff
    80008694:	3e0080e7          	jalr	992(ra) # 80007a70 <uartintr>
    80008698:	fddff06f          	j	80008674 <console_handler+0x74>
    8000869c:	00001517          	auipc	a0,0x1
    800086a0:	0f450513          	addi	a0,a0,244 # 80009790 <digits+0x78>
    800086a4:	fffff097          	auipc	ra,0xfffff
    800086a8:	a68080e7          	jalr	-1432(ra) # 8000710c <panic>
	...
