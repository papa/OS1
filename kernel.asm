
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	92013103          	ld	sp,-1760(sp) # 8000b920 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1dc060ef          	jal	ra,800061f8 <start>

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
    80001080:	049020ef          	jal	ra,800038c8 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001464:	00008517          	auipc	a0,0x8
    80001468:	bbc50513          	addi	a0,a0,-1092 # 80009020 <CONSOLE_STATUS+0x10>
    8000146c:	00002097          	auipc	ra,0x2
    80001470:	324080e7          	jalr	804(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
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
    80001494:	00008517          	auipc	a0,0x8
    80001498:	b9450513          	addi	a0,a0,-1132 # 80009028 <CONSOLE_STATUS+0x18>
    8000149c:	00002097          	auipc	ra,0x2
    800014a0:	2f4080e7          	jalr	756(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
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
    800014b4:	00008517          	auipc	a0,0x8
    800014b8:	b8c50513          	addi	a0,a0,-1140 # 80009040 <CONSOLE_STATUS+0x30>
    800014bc:	00002097          	auipc	ra,0x2
    800014c0:	2d4080e7          	jalr	724(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	338080e7          	jalr	824(ra) # 80003800 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800014d0:	00008517          	auipc	a0,0x8
    800014d4:	c4050513          	addi	a0,a0,-960 # 80009110 <CONSOLE_STATUS+0x100>
    800014d8:	00002097          	auipc	ra,0x2
    800014dc:	2b8080e7          	jalr	696(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
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
    8000152c:	00008517          	auipc	a0,0x8
    80001530:	b1c50513          	addi	a0,a0,-1252 # 80009048 <CONSOLE_STATUS+0x38>
    80001534:	00002097          	auipc	ra,0x2
    80001538:	25c080e7          	jalr	604(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
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
    8000154c:	00008517          	auipc	a0,0x8
    80001550:	b1450513          	addi	a0,a0,-1260 # 80009060 <CONSOLE_STATUS+0x50>
    80001554:	00002097          	auipc	ra,0x2
    80001558:	23c080e7          	jalr	572(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000155c:	00048513          	mv	a0,s1
    80001560:	00002097          	auipc	ra,0x2
    80001564:	2a0080e7          	jalr	672(ra) # 80003800 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001568:	00008517          	auipc	a0,0x8
    8000156c:	ba850513          	addi	a0,a0,-1112 # 80009110 <CONSOLE_STATUS+0x100>
    80001570:	00002097          	auipc	ra,0x2
    80001574:	220080e7          	jalr	544(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
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

00000000800015b0 <_ZN12TestPeriodic18periodicActivationEv>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {

}

void TestPeriodic::periodicActivation()
{
    800015b0:	fe010113          	addi	sp,sp,-32
    800015b4:	00113c23          	sd	ra,24(sp)
    800015b8:	00813823          	sd	s0,16(sp)
    800015bc:	00913423          	sd	s1,8(sp)
    800015c0:	02010413          	addi	s0,sp,32
    for(int i = 0 ; i < 10000;i++)
    800015c4:	00000493          	li	s1,0
    800015c8:	000027b7          	lui	a5,0x2
    800015cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800015d0:	0297c463          	blt	a5,s1,800015f8 <_ZN12TestPeriodic18periodicActivationEv+0x48>
    {
        Riscv::printString("i : ");
    800015d4:	00008517          	auipc	a0,0x8
    800015d8:	a6c50513          	addi	a0,a0,-1428 # 80009040 <CONSOLE_STATUS+0x30>
    800015dc:	00002097          	auipc	ra,0x2
    800015e0:	1b4080e7          	jalr	436(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800015e4:	00048513          	mv	a0,s1
    800015e8:	00002097          	auipc	ra,0x2
    800015ec:	218080e7          	jalr	536(ra) # 80003800 <_ZN5Riscv12printIntegerEm>
    for(int i = 0 ; i < 10000;i++)
    800015f0:	0014849b          	addiw	s1,s1,1
    800015f4:	fd5ff06f          	j	800015c8 <_ZN12TestPeriodic18periodicActivationEv+0x18>
    }
}
    800015f8:	01813083          	ld	ra,24(sp)
    800015fc:	01013403          	ld	s0,16(sp)
    80001600:	00813483          	ld	s1,8(sp)
    80001604:	02010113          	addi	sp,sp,32
    80001608:	00008067          	ret

000000008000160c <_Z20thread2FunctionTest2Pv>:
{
    8000160c:	fe010113          	addi	sp,sp,-32
    80001610:	00113c23          	sd	ra,24(sp)
    80001614:	00813823          	sd	s0,16(sp)
    80001618:	00913423          	sd	s1,8(sp)
    8000161c:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    80001620:	00008517          	auipc	a0,0x8
    80001624:	a2850513          	addi	a0,a0,-1496 # 80009048 <CONSOLE_STATUS+0x38>
    80001628:	00002097          	auipc	ra,0x2
    8000162c:	168080e7          	jalr	360(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001630:	00000493          	li	s1,0
    80001634:	0480006f          	j	8000167c <_Z20thread2FunctionTest2Pv+0x70>
            thread_exit();
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	d0c080e7          	jalr	-756(ra) # 80001344 <thread_exit>
    80001640:	0500006f          	j	80001690 <_Z20thread2FunctionTest2Pv+0x84>
            thread_dispatch();
    80001644:	00000097          	auipc	ra,0x0
    80001648:	ce0080e7          	jalr	-800(ra) # 80001324 <thread_dispatch>
        Riscv::printString("j : ");
    8000164c:	00008517          	auipc	a0,0x8
    80001650:	a1450513          	addi	a0,a0,-1516 # 80009060 <CONSOLE_STATUS+0x50>
    80001654:	00002097          	auipc	ra,0x2
    80001658:	13c080e7          	jalr	316(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000165c:	00048513          	mv	a0,s1
    80001660:	00002097          	auipc	ra,0x2
    80001664:	1a0080e7          	jalr	416(ra) # 80003800 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001668:	00008517          	auipc	a0,0x8
    8000166c:	aa850513          	addi	a0,a0,-1368 # 80009110 <CONSOLE_STATUS+0x100>
    80001670:	00002097          	auipc	ra,0x2
    80001674:	120080e7          	jalr	288(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001678:	00148493          	addi	s1,s1,1
    8000167c:	000027b7          	lui	a5,0x2
    80001680:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001684:	0297e063          	bltu	a5,s1,800016a4 <_Z20thread2FunctionTest2Pv+0x98>
        if(j == 200)
    80001688:	0c800793          	li	a5,200
    8000168c:	faf486e3          	beq	s1,a5,80001638 <_Z20thread2FunctionTest2Pv+0x2c>
        if(j % 50 == 0 && j > 0)
    80001690:	03200793          	li	a5,50
    80001694:	02f4f7b3          	remu	a5,s1,a5
    80001698:	fa079ae3          	bnez	a5,8000164c <_Z20thread2FunctionTest2Pv+0x40>
    8000169c:	fa0488e3          	beqz	s1,8000164c <_Z20thread2FunctionTest2Pv+0x40>
    800016a0:	fa5ff06f          	j	80001644 <_Z20thread2FunctionTest2Pv+0x38>
}
    800016a4:	01813083          	ld	ra,24(sp)
    800016a8:	01013403          	ld	s0,16(sp)
    800016ac:	00813483          	ld	s1,8(sp)
    800016b0:	02010113          	addi	sp,sp,32
    800016b4:	00008067          	ret

00000000800016b8 <_Z9consumerAPv>:
sem_t spaceAvailable, itemAvailable;
char string[11] = "this is ni";

void consumerA(void *arg)
{
    while(head!=10){
    800016b8:	0000a717          	auipc	a4,0xa
    800016bc:	2c872703          	lw	a4,712(a4) # 8000b980 <head>
    800016c0:	00a00793          	li	a5,10
    800016c4:	06f70c63          	beq	a4,a5,8000173c <_Z9consumerAPv+0x84>
{
    800016c8:	fe010113          	addi	sp,sp,-32
    800016cc:	00113c23          	sd	ra,24(sp)
    800016d0:	00813823          	sd	s0,16(sp)
    800016d4:	00913423          	sd	s1,8(sp)
    800016d8:	02010413          	addi	s0,sp,32
        sem_wait(itemAvailable);
    800016dc:	0000a497          	auipc	s1,0xa
    800016e0:	2a448493          	addi	s1,s1,676 # 8000b980 <head>
    800016e4:	0084b503          	ld	a0,8(s1)
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	ce8080e7          	jalr	-792(ra) # 800013d0 <sem_wait>
        __putc(buffer[head++]);
    800016f0:	0004a783          	lw	a5,0(s1)
    800016f4:	0017871b          	addiw	a4,a5,1
    800016f8:	00e4a023          	sw	a4,0(s1)
    800016fc:	00f487b3          	add	a5,s1,a5
    80001700:	0107c503          	lbu	a0,16(a5)
    80001704:	00007097          	auipc	ra,0x7
    80001708:	bb8080e7          	jalr	-1096(ra) # 800082bc <__putc>
        sem_signal(spaceAvailable);
    8000170c:	0204b503          	ld	a0,32(s1)
    80001710:	00000097          	auipc	ra,0x0
    80001714:	cec080e7          	jalr	-788(ra) # 800013fc <sem_signal>
    while(head!=10){
    80001718:	0000a717          	auipc	a4,0xa
    8000171c:	26872703          	lw	a4,616(a4) # 8000b980 <head>
    80001720:	00a00793          	li	a5,10
    80001724:	faf71ce3          	bne	a4,a5,800016dc <_Z9consumerAPv+0x24>
    }
}
    80001728:	01813083          	ld	ra,24(sp)
    8000172c:	01013403          	ld	s0,16(sp)
    80001730:	00813483          	ld	s1,8(sp)
    80001734:	02010113          	addi	sp,sp,32
    80001738:	00008067          	ret
    8000173c:	00008067          	ret

0000000080001740 <_Z9producerAPv>:

void producerA(void *arg)
{
    while(tail!=10)
    80001740:	0000a717          	auipc	a4,0xa
    80001744:	26872703          	lw	a4,616(a4) # 8000b9a8 <tail>
    80001748:	00a00793          	li	a5,10
    8000174c:	08f70063          	beq	a4,a5,800017cc <_Z9producerAPv+0x8c>
{
    80001750:	fe010113          	addi	sp,sp,-32
    80001754:	00113c23          	sd	ra,24(sp)
    80001758:	00813823          	sd	s0,16(sp)
    8000175c:	00913423          	sd	s1,8(sp)
    80001760:	02010413          	addi	s0,sp,32
    {
        sem_wait(spaceAvailable);
    80001764:	0000a497          	auipc	s1,0xa
    80001768:	21c48493          	addi	s1,s1,540 # 8000b980 <head>
    8000176c:	0204b503          	ld	a0,32(s1)
    80001770:	00000097          	auipc	ra,0x0
    80001774:	c60080e7          	jalr	-928(ra) # 800013d0 <sem_wait>
        buffer[tail] = string[tail];
    80001778:	0284a783          	lw	a5,40(s1)
    8000177c:	0000a717          	auipc	a4,0xa
    80001780:	02470713          	addi	a4,a4,36 # 8000b7a0 <string>
    80001784:	00f70733          	add	a4,a4,a5
    80001788:	00074683          	lbu	a3,0(a4)
    8000178c:	00f48733          	add	a4,s1,a5
    80001790:	00d70823          	sb	a3,16(a4)
        tail++;
    80001794:	0017879b          	addiw	a5,a5,1
    80001798:	02f4a423          	sw	a5,40(s1)
        sem_signal(itemAvailable);
    8000179c:	0084b503          	ld	a0,8(s1)
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	c5c080e7          	jalr	-932(ra) # 800013fc <sem_signal>
    while(tail!=10)
    800017a8:	0000a717          	auipc	a4,0xa
    800017ac:	20072703          	lw	a4,512(a4) # 8000b9a8 <tail>
    800017b0:	00a00793          	li	a5,10
    800017b4:	faf718e3          	bne	a4,a5,80001764 <_Z9producerAPv+0x24>
    }
}
    800017b8:	01813083          	ld	ra,24(sp)
    800017bc:	01013403          	ld	s0,16(sp)
    800017c0:	00813483          	ld	s1,8(sp)
    800017c4:	02010113          	addi	sp,sp,32
    800017c8:	00008067          	ret
    800017cc:	00008067          	ret

00000000800017d0 <_Z11threadTest1v>:
{
    800017d0:	fe010113          	addi	sp,sp,-32
    800017d4:	00113c23          	sd	ra,24(sp)
    800017d8:	00813823          	sd	s0,16(sp)
    800017dc:	00913423          	sd	s1,8(sp)
    800017e0:	01213023          	sd	s2,0(sp)
    800017e4:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    800017e8:	02000513          	li	a0,32
    800017ec:	00002097          	auipc	ra,0x2
    800017f0:	b38080e7          	jalr	-1224(ra) # 80003324 <_Znwm>
    800017f4:	00050493          	mv	s1,a0
    800017f8:	00000613          	li	a2,0
    800017fc:	00000597          	auipc	a1,0x0
    80001800:	c8458593          	addi	a1,a1,-892 # 80001480 <_Z15thread1FunctionPv>
    80001804:	00002097          	auipc	ra,0x2
    80001808:	cbc080e7          	jalr	-836(ra) # 800034c0 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    8000180c:	00048513          	mv	a0,s1
    80001810:	00002097          	auipc	ra,0x2
    80001814:	be4080e7          	jalr	-1052(ra) # 800033f4 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001818:	02000513          	li	a0,32
    8000181c:	00002097          	auipc	ra,0x2
    80001820:	b08080e7          	jalr	-1272(ra) # 80003324 <_Znwm>
    80001824:	00050913          	mv	s2,a0
    80001828:	00000613          	li	a2,0
    8000182c:	00000597          	auipc	a1,0x0
    80001830:	cec58593          	addi	a1,a1,-788 # 80001518 <_Z15thread2FunctionPv>
    80001834:	00002097          	auipc	ra,0x2
    80001838:	c8c080e7          	jalr	-884(ra) # 800034c0 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    8000183c:	00090513          	mv	a0,s2
    80001840:	00002097          	auipc	ra,0x2
    80001844:	bb4080e7          	jalr	-1100(ra) # 800033f4 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001848:	00002097          	auipc	ra,0x2
    8000184c:	ec0080e7          	jalr	-320(ra) # 80003708 <_ZN5Riscv16enableInterruptsEv>
    80001850:	01c0006f          	j	8000186c <_Z11threadTest1v+0x9c>
        Riscv::printString("Main thread\n");
    80001854:	00008517          	auipc	a0,0x8
    80001858:	81450513          	addi	a0,a0,-2028 # 80009068 <CONSOLE_STATUS+0x58>
    8000185c:	00002097          	auipc	ra,0x2
    80001860:	f34080e7          	jalr	-204(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
        thread_dispatch();
    80001864:	00000097          	auipc	ra,0x0
    80001868:	ac0080e7          	jalr	-1344(ra) # 80001324 <thread_dispatch>
    while(((PCB*)(t1->myHandle))->getState() != PCB::FINISHED || ((PCB*)(t2->myHandle))->getState()!= PCB::FINISHED)
    8000186c:	0084b783          	ld	a5,8(s1)

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80001870:	0387a703          	lw	a4,56(a5)
    80001874:	00300793          	li	a5,3
    80001878:	fcf71ee3          	bne	a4,a5,80001854 <_Z11threadTest1v+0x84>
    8000187c:	00893783          	ld	a5,8(s2)
    80001880:	0387a703          	lw	a4,56(a5)
    80001884:	00300793          	li	a5,3
    80001888:	fcf716e3          	bne	a4,a5,80001854 <_Z11threadTest1v+0x84>
    Riscv::printString("End...\n");
    8000188c:	00007517          	auipc	a0,0x7
    80001890:	7ec50513          	addi	a0,a0,2028 # 80009078 <CONSOLE_STATUS+0x68>
    80001894:	00002097          	auipc	ra,0x2
    80001898:	efc080e7          	jalr	-260(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    8000189c:	00002097          	auipc	ra,0x2
    800018a0:	e8c080e7          	jalr	-372(ra) # 80003728 <_ZN5Riscv17disableInterruptsEv>
}
    800018a4:	01813083          	ld	ra,24(sp)
    800018a8:	01013403          	ld	s0,16(sp)
    800018ac:	00813483          	ld	s1,8(sp)
    800018b0:	00013903          	ld	s2,0(sp)
    800018b4:	02010113          	addi	sp,sp,32
    800018b8:	00008067          	ret
    800018bc:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    800018c0:	00048513          	mv	a0,s1
    800018c4:	00002097          	auipc	ra,0x2
    800018c8:	a88080e7          	jalr	-1400(ra) # 8000334c <_ZdlPv>
    800018cc:	00090513          	mv	a0,s2
    800018d0:	0000b097          	auipc	ra,0xb
    800018d4:	248080e7          	jalr	584(ra) # 8000cb18 <_Unwind_Resume>
    800018d8:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800018dc:	00090513          	mv	a0,s2
    800018e0:	00002097          	auipc	ra,0x2
    800018e4:	a6c080e7          	jalr	-1428(ra) # 8000334c <_ZdlPv>
    800018e8:	00048513          	mv	a0,s1
    800018ec:	0000b097          	auipc	ra,0xb
    800018f0:	22c080e7          	jalr	556(ra) # 8000cb18 <_Unwind_Resume>

00000000800018f4 <_Z11threadTest2v>:
{
    800018f4:	fe010113          	addi	sp,sp,-32
    800018f8:	00113c23          	sd	ra,24(sp)
    800018fc:	00813823          	sd	s0,16(sp)
    80001900:	00913423          	sd	s1,8(sp)
    80001904:	01213023          	sd	s2,0(sp)
    80001908:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    8000190c:	02000513          	li	a0,32
    80001910:	00002097          	auipc	ra,0x2
    80001914:	a14080e7          	jalr	-1516(ra) # 80003324 <_Znwm>
    80001918:	00050493          	mv	s1,a0
    8000191c:	00000613          	li	a2,0
    80001920:	00000597          	auipc	a1,0x0
    80001924:	b3458593          	addi	a1,a1,-1228 # 80001454 <_Z4idlePv>
    80001928:	00002097          	auipc	ra,0x2
    8000192c:	b98080e7          	jalr	-1128(ra) # 800034c0 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001930:	00048513          	mv	a0,s1
    80001934:	00002097          	auipc	ra,0x2
    80001938:	ac0080e7          	jalr	-1344(ra) # 800033f4 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    8000193c:	02000513          	li	a0,32
    80001940:	00002097          	auipc	ra,0x2
    80001944:	9e4080e7          	jalr	-1564(ra) # 80003324 <_Znwm>
    80001948:	00050913          	mv	s2,a0
    8000194c:	00000613          	li	a2,0
    80001950:	00000597          	auipc	a1,0x0
    80001954:	b3058593          	addi	a1,a1,-1232 # 80001480 <_Z15thread1FunctionPv>
    80001958:	00002097          	auipc	ra,0x2
    8000195c:	b68080e7          	jalr	-1176(ra) # 800034c0 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001960:	00090513          	mv	a0,s2
    80001964:	00002097          	auipc	ra,0x2
    80001968:	a90080e7          	jalr	-1392(ra) # 800033f4 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    8000196c:	02000513          	li	a0,32
    80001970:	00002097          	auipc	ra,0x2
    80001974:	9b4080e7          	jalr	-1612(ra) # 80003324 <_Znwm>
    80001978:	00050913          	mv	s2,a0
    8000197c:	00000613          	li	a2,0
    80001980:	00000597          	auipc	a1,0x0
    80001984:	c8c58593          	addi	a1,a1,-884 # 8000160c <_Z20thread2FunctionTest2Pv>
    80001988:	00002097          	auipc	ra,0x2
    8000198c:	b38080e7          	jalr	-1224(ra) # 800034c0 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001990:	00090513          	mv	a0,s2
    80001994:	00002097          	auipc	ra,0x2
    80001998:	a60080e7          	jalr	-1440(ra) # 800033f4 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    8000199c:	00002097          	auipc	ra,0x2
    800019a0:	d6c080e7          	jalr	-660(ra) # 80003708 <_ZN5Riscv16enableInterruptsEv>
    while(((PCB*)idleThread->myHandle)->getState() != PCB::FINISHED);
    800019a4:	0084b783          	ld	a5,8(s1)
    800019a8:	0387a703          	lw	a4,56(a5)
    800019ac:	00300793          	li	a5,3
    800019b0:	fef71ae3          	bne	a4,a5,800019a4 <_Z11threadTest2v+0xb0>
    Riscv::printString("End...\n");
    800019b4:	00007517          	auipc	a0,0x7
    800019b8:	6c450513          	addi	a0,a0,1732 # 80009078 <CONSOLE_STATUS+0x68>
    800019bc:	00002097          	auipc	ra,0x2
    800019c0:	dd4080e7          	jalr	-556(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    800019c4:	00002097          	auipc	ra,0x2
    800019c8:	d64080e7          	jalr	-668(ra) # 80003728 <_ZN5Riscv17disableInterruptsEv>
}
    800019cc:	01813083          	ld	ra,24(sp)
    800019d0:	01013403          	ld	s0,16(sp)
    800019d4:	00813483          	ld	s1,8(sp)
    800019d8:	00013903          	ld	s2,0(sp)
    800019dc:	02010113          	addi	sp,sp,32
    800019e0:	00008067          	ret
    800019e4:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    800019e8:	00048513          	mv	a0,s1
    800019ec:	00002097          	auipc	ra,0x2
    800019f0:	960080e7          	jalr	-1696(ra) # 8000334c <_ZdlPv>
    800019f4:	00090513          	mv	a0,s2
    800019f8:	0000b097          	auipc	ra,0xb
    800019fc:	120080e7          	jalr	288(ra) # 8000cb18 <_Unwind_Resume>
    80001a00:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a04:	00090513          	mv	a0,s2
    80001a08:	00002097          	auipc	ra,0x2
    80001a0c:	944080e7          	jalr	-1724(ra) # 8000334c <_ZdlPv>
    80001a10:	00048513          	mv	a0,s1
    80001a14:	0000b097          	auipc	ra,0xb
    80001a18:	104080e7          	jalr	260(ra) # 8000cb18 <_Unwind_Resume>
    80001a1c:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a20:	00090513          	mv	a0,s2
    80001a24:	00002097          	auipc	ra,0x2
    80001a28:	928080e7          	jalr	-1752(ra) # 8000334c <_ZdlPv>
    80001a2c:	00048513          	mv	a0,s1
    80001a30:	0000b097          	auipc	ra,0xb
    80001a34:	0e8080e7          	jalr	232(ra) # 8000cb18 <_Unwind_Resume>

0000000080001a38 <_Z11threadTestsv>:
{
    80001a38:	ff010113          	addi	sp,sp,-16
    80001a3c:	00813423          	sd	s0,8(sp)
    80001a40:	01010413          	addi	s0,sp,16
}
    80001a44:	00813403          	ld	s0,8(sp)
    80001a48:	01010113          	addi	sp,sp,16
    80001a4c:	00008067          	ret

0000000080001a50 <_Z10mallocFreev>:
{
    80001a50:	cc010113          	addi	sp,sp,-832
    80001a54:	32113c23          	sd	ra,824(sp)
    80001a58:	32813823          	sd	s0,816(sp)
    80001a5c:	32913423          	sd	s1,808(sp)
    80001a60:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    80001a64:	00007517          	auipc	a0,0x7
    80001a68:	61c50513          	addi	a0,a0,1564 # 80009080 <CONSOLE_STATUS+0x70>
    80001a6c:	00002097          	auipc	ra,0x2
    80001a70:	d24080e7          	jalr	-732(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001a74:	00000493          	li	s1,0
    80001a78:	0080006f          	j	80001a80 <_Z10mallocFreev+0x30>
    80001a7c:	0014849b          	addiw	s1,s1,1
    80001a80:	06300793          	li	a5,99
    80001a84:	0497c463          	blt	a5,s1,80001acc <_Z10mallocFreev+0x7c>
        addrs[i] = mem_alloc(100);
    80001a88:	06400513          	li	a0,100
    80001a8c:	fffff097          	auipc	ra,0xfffff
    80001a90:	7bc080e7          	jalr	1980(ra) # 80001248 <mem_alloc>
    80001a94:	00349793          	slli	a5,s1,0x3
    80001a98:	fe040713          	addi	a4,s0,-32
    80001a9c:	00f707b3          	add	a5,a4,a5
    80001aa0:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001aa4:	fc051ce3          	bnez	a0,80001a7c <_Z10mallocFreev+0x2c>
            Riscv::printString("not OK\n");
    80001aa8:	00007517          	auipc	a0,0x7
    80001aac:	5e850513          	addi	a0,a0,1512 # 80009090 <CONSOLE_STATUS+0x80>
    80001ab0:	00002097          	auipc	ra,0x2
    80001ab4:	ce0080e7          	jalr	-800(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
}
    80001ab8:	33813083          	ld	ra,824(sp)
    80001abc:	33013403          	ld	s0,816(sp)
    80001ac0:	32813483          	ld	s1,808(sp)
    80001ac4:	34010113          	addi	sp,sp,832
    80001ac8:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001acc:	00000493          	li	s1,0
    80001ad0:	06300793          	li	a5,99
    80001ad4:	0297ce63          	blt	a5,s1,80001b10 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001ad8:	00349793          	slli	a5,s1,0x3
    80001adc:	fe040713          	addi	a4,s0,-32
    80001ae0:	00f707b3          	add	a5,a4,a5
    80001ae4:	ce07b503          	ld	a0,-800(a5)
    80001ae8:	fffff097          	auipc	ra,0xfffff
    80001aec:	790080e7          	jalr	1936(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001af0:	00051663          	bnez	a0,80001afc <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001af4:	0024849b          	addiw	s1,s1,2
    80001af8:	fd9ff06f          	j	80001ad0 <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    80001afc:	00007517          	auipc	a0,0x7
    80001b00:	59450513          	addi	a0,a0,1428 # 80009090 <CONSOLE_STATUS+0x80>
    80001b04:	00002097          	auipc	ra,0x2
    80001b08:	c8c080e7          	jalr	-884(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
            return;
    80001b0c:	fadff06f          	j	80001ab8 <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001b10:	00000493          	li	s1,0
    80001b14:	0080006f          	j	80001b1c <_Z10mallocFreev+0xcc>
    80001b18:	0024849b          	addiw	s1,s1,2
    80001b1c:	06300793          	li	a5,99
    80001b20:	0297cc63          	blt	a5,s1,80001b58 <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001b24:	01400513          	li	a0,20
    80001b28:	fffff097          	auipc	ra,0xfffff
    80001b2c:	720080e7          	jalr	1824(ra) # 80001248 <mem_alloc>
    80001b30:	00349793          	slli	a5,s1,0x3
    80001b34:	fe040713          	addi	a4,s0,-32
    80001b38:	00f707b3          	add	a5,a4,a5
    80001b3c:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001b40:	fc051ce3          	bnez	a0,80001b18 <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    80001b44:	00007517          	auipc	a0,0x7
    80001b48:	54c50513          	addi	a0,a0,1356 # 80009090 <CONSOLE_STATUS+0x80>
    80001b4c:	00002097          	auipc	ra,0x2
    80001b50:	c44080e7          	jalr	-956(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
            return;
    80001b54:	f65ff06f          	j	80001ab8 <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001b58:	00000493          	li	s1,0
    80001b5c:	06300793          	li	a5,99
    80001b60:	0297ce63          	blt	a5,s1,80001b9c <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001b64:	00349793          	slli	a5,s1,0x3
    80001b68:	fe040713          	addi	a4,s0,-32
    80001b6c:	00f707b3          	add	a5,a4,a5
    80001b70:	ce07b503          	ld	a0,-800(a5)
    80001b74:	fffff097          	auipc	ra,0xfffff
    80001b78:	704080e7          	jalr	1796(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001b7c:	00051663          	bnez	a0,80001b88 <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001b80:	0014849b          	addiw	s1,s1,1
    80001b84:	fd9ff06f          	j	80001b5c <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    80001b88:	00007517          	auipc	a0,0x7
    80001b8c:	50850513          	addi	a0,a0,1288 # 80009090 <CONSOLE_STATUS+0x80>
    80001b90:	00002097          	auipc	ra,0x2
    80001b94:	c00080e7          	jalr	-1024(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
            return;
    80001b98:	f21ff06f          	j	80001ab8 <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001b9c:	00007517          	auipc	a0,0x7
    80001ba0:	4fc50513          	addi	a0,a0,1276 # 80009098 <CONSOLE_STATUS+0x88>
    80001ba4:	00002097          	auipc	ra,0x2
    80001ba8:	bec080e7          	jalr	-1044(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    80001bac:	f0dff06f          	j	80001ab8 <_Z10mallocFreev+0x68>

0000000080001bb0 <_Z9bigMallocv>:
{
    80001bb0:	ff010113          	addi	sp,sp,-16
    80001bb4:	00113423          	sd	ra,8(sp)
    80001bb8:	00813023          	sd	s0,0(sp)
    80001bbc:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    80001bc0:	00007517          	auipc	a0,0x7
    80001bc4:	4e050513          	addi	a0,a0,1248 # 800090a0 <CONSOLE_STATUS+0x90>
    80001bc8:	00002097          	auipc	ra,0x2
    80001bcc:	bc8080e7          	jalr	-1080(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001bd0:	0000a797          	auipc	a5,0xa
    80001bd4:	d607b783          	ld	a5,-672(a5) # 8000b930 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001bd8:	0007b503          	ld	a0,0(a5)
    80001bdc:	0000a797          	auipc	a5,0xa
    80001be0:	d2c7b783          	ld	a5,-724(a5) # 8000b908 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001be4:	0007b783          	ld	a5,0(a5)
    80001be8:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001bec:	06450513          	addi	a0,a0,100
    80001bf0:	fffff097          	auipc	ra,0xfffff
    80001bf4:	658080e7          	jalr	1624(ra) # 80001248 <mem_alloc>
    if(p == 0)
    80001bf8:	02050263          	beqz	a0,80001c1c <_Z9bigMallocv+0x6c>
        Riscv::printString("not OK\n");
    80001bfc:	00007517          	auipc	a0,0x7
    80001c00:	49450513          	addi	a0,a0,1172 # 80009090 <CONSOLE_STATUS+0x80>
    80001c04:	00002097          	auipc	ra,0x2
    80001c08:	b8c080e7          	jalr	-1140(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
}
    80001c0c:	00813083          	ld	ra,8(sp)
    80001c10:	00013403          	ld	s0,0(sp)
    80001c14:	01010113          	addi	sp,sp,16
    80001c18:	00008067          	ret
        Riscv::printString("OK\n");
    80001c1c:	00007517          	auipc	a0,0x7
    80001c20:	47c50513          	addi	a0,a0,1148 # 80009098 <CONSOLE_STATUS+0x88>
    80001c24:	00002097          	auipc	ra,0x2
    80001c28:	b6c080e7          	jalr	-1172(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    80001c2c:	fe1ff06f          	j	80001c0c <_Z9bigMallocv+0x5c>

0000000080001c30 <_Z17lotOfSmallMallocsv>:
{
    80001c30:	fd010113          	addi	sp,sp,-48
    80001c34:	02113423          	sd	ra,40(sp)
    80001c38:	02813023          	sd	s0,32(sp)
    80001c3c:	00913c23          	sd	s1,24(sp)
    80001c40:	01213823          	sd	s2,16(sp)
    80001c44:	01313423          	sd	s3,8(sp)
    80001c48:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001c4c:	00007517          	auipc	a0,0x7
    80001c50:	46450513          	addi	a0,a0,1124 # 800090b0 <CONSOLE_STATUS+0xa0>
    80001c54:	00002097          	auipc	ra,0x2
    80001c58:	b3c080e7          	jalr	-1220(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < N;i++)
    80001c5c:	00000493          	li	s1,0
    uint64 sum = 0;
    80001c60:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001c64:	00000913          	li	s2,0
    80001c68:	0180006f          	j	80001c80 <_Z17lotOfSmallMallocsv+0x50>
        t->a = X;
    80001c6c:	00a00793          	li	a5,10
    80001c70:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001c74:	00a98993          	addi	s3,s3,10
        cnt++;
    80001c78:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001c7c:	00148493          	addi	s1,s1,1
    80001c80:	000027b7          	lui	a5,0x2
    80001c84:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001c88:	0097ea63          	bltu	a5,s1,80001c9c <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001c8c:	00800513          	li	a0,8
    80001c90:	fffff097          	auipc	ra,0xfffff
    80001c94:	5b8080e7          	jalr	1464(ra) # 80001248 <mem_alloc>
        if(t == 0)
    80001c98:	fc051ae3          	bnez	a0,80001c6c <_Z17lotOfSmallMallocsv+0x3c>
    Riscv::printInteger(cnt);
    80001c9c:	00090513          	mv	a0,s2
    80001ca0:	00002097          	auipc	ra,0x2
    80001ca4:	b60080e7          	jalr	-1184(ra) # 80003800 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001ca8:	00007517          	auipc	a0,0x7
    80001cac:	46850513          	addi	a0,a0,1128 # 80009110 <CONSOLE_STATUS+0x100>
    80001cb0:	00002097          	auipc	ra,0x2
    80001cb4:	ae0080e7          	jalr	-1312(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001cb8:	00291793          	slli	a5,s2,0x2
    80001cbc:	01278933          	add	s2,a5,s2
    80001cc0:	00191913          	slli	s2,s2,0x1
    80001cc4:	03390863          	beq	s2,s3,80001cf4 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001cc8:	00007517          	auipc	a0,0x7
    80001ccc:	3c850513          	addi	a0,a0,968 # 80009090 <CONSOLE_STATUS+0x80>
    80001cd0:	00002097          	auipc	ra,0x2
    80001cd4:	ac0080e7          	jalr	-1344(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
}
    80001cd8:	02813083          	ld	ra,40(sp)
    80001cdc:	02013403          	ld	s0,32(sp)
    80001ce0:	01813483          	ld	s1,24(sp)
    80001ce4:	01013903          	ld	s2,16(sp)
    80001ce8:	00813983          	ld	s3,8(sp)
    80001cec:	03010113          	addi	sp,sp,48
    80001cf0:	00008067          	ret
        Riscv::printString("OK\n");
    80001cf4:	00007517          	auipc	a0,0x7
    80001cf8:	3a450513          	addi	a0,a0,932 # 80009098 <CONSOLE_STATUS+0x88>
    80001cfc:	00002097          	auipc	ra,0x2
    80001d00:	a94080e7          	jalr	-1388(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    80001d04:	fd5ff06f          	j	80001cd8 <_Z17lotOfSmallMallocsv+0xa8>

0000000080001d08 <_Z7badFreev>:
{
    80001d08:	ff010113          	addi	sp,sp,-16
    80001d0c:	00113423          	sd	ra,8(sp)
    80001d10:	00813023          	sd	s0,0(sp)
    80001d14:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001d18:	00007517          	auipc	a0,0x7
    80001d1c:	3b050513          	addi	a0,a0,944 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001d20:	00002097          	auipc	ra,0x2
    80001d24:	a70080e7          	jalr	-1424(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001d28:	00800513          	li	a0,8
    80001d2c:	fffff097          	auipc	ra,0xfffff
    80001d30:	51c080e7          	jalr	1308(ra) # 80001248 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001d34:	00250513          	addi	a0,a0,2
    80001d38:	fffff097          	auipc	ra,0xfffff
    80001d3c:	540080e7          	jalr	1344(ra) # 80001278 <mem_free>
    if(retval == 0)
    80001d40:	02051263          	bnez	a0,80001d64 <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001d44:	00007517          	auipc	a0,0x7
    80001d48:	34c50513          	addi	a0,a0,844 # 80009090 <CONSOLE_STATUS+0x80>
    80001d4c:	00002097          	auipc	ra,0x2
    80001d50:	a44080e7          	jalr	-1468(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
}
    80001d54:	00813083          	ld	ra,8(sp)
    80001d58:	00013403          	ld	s0,0(sp)
    80001d5c:	01010113          	addi	sp,sp,16
    80001d60:	00008067          	ret
        Riscv::printString("OK\n");
    80001d64:	00007517          	auipc	a0,0x7
    80001d68:	33450513          	addi	a0,a0,820 # 80009098 <CONSOLE_STATUS+0x88>
    80001d6c:	00002097          	auipc	ra,0x2
    80001d70:	a24080e7          	jalr	-1500(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
}
    80001d74:	fe1ff06f          	j	80001d54 <_Z7badFreev+0x4c>

0000000080001d78 <_Z13stressTestingv>:
{
    80001d78:	cc010113          	addi	sp,sp,-832
    80001d7c:	32113c23          	sd	ra,824(sp)
    80001d80:	32813823          	sd	s0,816(sp)
    80001d84:	32913423          	sd	s1,808(sp)
    80001d88:	33213023          	sd	s2,800(sp)
    80001d8c:	34010413          	addi	s0,sp,832
    Riscv::printString("stressTesting\n");
    80001d90:	00007517          	auipc	a0,0x7
    80001d94:	34850513          	addi	a0,a0,840 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001d98:	00002097          	auipc	ra,0x2
    80001d9c:	9f8080e7          	jalr	-1544(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001da0:	00000493          	li	s1,0
    80001da4:	0080006f          	j	80001dac <_Z13stressTestingv+0x34>
    80001da8:	0014849b          	addiw	s1,s1,1
    80001dac:	06300793          	li	a5,99
    80001db0:	0497c663          	blt	a5,s1,80001dfc <_Z13stressTestingv+0x84>
        addrs[i] = mem_alloc(1);
    80001db4:	00100513          	li	a0,1
    80001db8:	fffff097          	auipc	ra,0xfffff
    80001dbc:	490080e7          	jalr	1168(ra) # 80001248 <mem_alloc>
    80001dc0:	00349793          	slli	a5,s1,0x3
    80001dc4:	fe040713          	addi	a4,s0,-32
    80001dc8:	00f707b3          	add	a5,a4,a5
    80001dcc:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001dd0:	fc051ce3          	bnez	a0,80001da8 <_Z13stressTestingv+0x30>
            Riscv::printString("not OK\n");
    80001dd4:	00007517          	auipc	a0,0x7
    80001dd8:	2bc50513          	addi	a0,a0,700 # 80009090 <CONSOLE_STATUS+0x80>
    80001ddc:	00002097          	auipc	ra,0x2
    80001de0:	9b4080e7          	jalr	-1612(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
}
    80001de4:	33813083          	ld	ra,824(sp)
    80001de8:	33013403          	ld	s0,816(sp)
    80001dec:	32813483          	ld	s1,808(sp)
    80001df0:	32013903          	ld	s2,800(sp)
    80001df4:	34010113          	addi	sp,sp,832
    80001df8:	00008067          	ret
    int sz = 300;
    80001dfc:	12c00913          	li	s2,300
    while(sz > 0)
    80001e00:	11205263          	blez	s2,80001f04 <_Z13stressTestingv+0x18c>
        for(int i = 0 ; i < num;i+=2)
    80001e04:	00000493          	li	s1,0
    80001e08:	06300793          	li	a5,99
    80001e0c:	0697cc63          	blt	a5,s1,80001e84 <_Z13stressTestingv+0x10c>
            int retval = mem_free(addrs[i]);
    80001e10:	00349793          	slli	a5,s1,0x3
    80001e14:	fe040713          	addi	a4,s0,-32
    80001e18:	00f707b3          	add	a5,a4,a5
    80001e1c:	ce07b503          	ld	a0,-800(a5)
    80001e20:	fffff097          	auipc	ra,0xfffff
    80001e24:	458080e7          	jalr	1112(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001e28:	02051a63          	bnez	a0,80001e5c <_Z13stressTestingv+0xe4>
            addrs[i] = mem_alloc(sz/2);
    80001e2c:	01f9551b          	srliw	a0,s2,0x1f
    80001e30:	0125053b          	addw	a0,a0,s2
    80001e34:	4015551b          	sraiw	a0,a0,0x1
    80001e38:	fffff097          	auipc	ra,0xfffff
    80001e3c:	410080e7          	jalr	1040(ra) # 80001248 <mem_alloc>
    80001e40:	00349793          	slli	a5,s1,0x3
    80001e44:	fe040713          	addi	a4,s0,-32
    80001e48:	00f707b3          	add	a5,a4,a5
    80001e4c:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001e50:	02050063          	beqz	a0,80001e70 <_Z13stressTestingv+0xf8>
        for(int i = 0 ; i < num;i+=2)
    80001e54:	0024849b          	addiw	s1,s1,2
    80001e58:	fb1ff06f          	j	80001e08 <_Z13stressTestingv+0x90>
                Riscv::printString("not OK\n");
    80001e5c:	00007517          	auipc	a0,0x7
    80001e60:	23450513          	addi	a0,a0,564 # 80009090 <CONSOLE_STATUS+0x80>
    80001e64:	00002097          	auipc	ra,0x2
    80001e68:	92c080e7          	jalr	-1748(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
                return;
    80001e6c:	f79ff06f          	j	80001de4 <_Z13stressTestingv+0x6c>
                Riscv::printString("not Ok\n");
    80001e70:	00007517          	auipc	a0,0x7
    80001e74:	27850513          	addi	a0,a0,632 # 800090e8 <CONSOLE_STATUS+0xd8>
    80001e78:	00002097          	auipc	ra,0x2
    80001e7c:	918080e7          	jalr	-1768(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
                return;
    80001e80:	f65ff06f          	j	80001de4 <_Z13stressTestingv+0x6c>
        for(int i = 1 ; i < num;i+=2)
    80001e84:	00100493          	li	s1,1
    80001e88:	06300793          	li	a5,99
    80001e8c:	0697c863          	blt	a5,s1,80001efc <_Z13stressTestingv+0x184>
            int retval = mem_free(addrs[i]);
    80001e90:	00349793          	slli	a5,s1,0x3
    80001e94:	fe040713          	addi	a4,s0,-32
    80001e98:	00f707b3          	add	a5,a4,a5
    80001e9c:	ce07b503          	ld	a0,-800(a5)
    80001ea0:	fffff097          	auipc	ra,0xfffff
    80001ea4:	3d8080e7          	jalr	984(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001ea8:	02051663          	bnez	a0,80001ed4 <_Z13stressTestingv+0x15c>
            addrs[i] = mem_alloc(sz);
    80001eac:	00090513          	mv	a0,s2
    80001eb0:	fffff097          	auipc	ra,0xfffff
    80001eb4:	398080e7          	jalr	920(ra) # 80001248 <mem_alloc>
    80001eb8:	00349793          	slli	a5,s1,0x3
    80001ebc:	fe040713          	addi	a4,s0,-32
    80001ec0:	00f707b3          	add	a5,a4,a5
    80001ec4:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001ec8:	02050063          	beqz	a0,80001ee8 <_Z13stressTestingv+0x170>
        for(int i = 1 ; i < num;i+=2)
    80001ecc:	0024849b          	addiw	s1,s1,2
    80001ed0:	fb9ff06f          	j	80001e88 <_Z13stressTestingv+0x110>
                Riscv::printString("not OK\n");
    80001ed4:	00007517          	auipc	a0,0x7
    80001ed8:	1bc50513          	addi	a0,a0,444 # 80009090 <CONSOLE_STATUS+0x80>
    80001edc:	00002097          	auipc	ra,0x2
    80001ee0:	8b4080e7          	jalr	-1868(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
                return;
    80001ee4:	f01ff06f          	j	80001de4 <_Z13stressTestingv+0x6c>
                Riscv::printString("not Ok\n");
    80001ee8:	00007517          	auipc	a0,0x7
    80001eec:	20050513          	addi	a0,a0,512 # 800090e8 <CONSOLE_STATUS+0xd8>
    80001ef0:	00002097          	auipc	ra,0x2
    80001ef4:	8a0080e7          	jalr	-1888(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
                return;
    80001ef8:	eedff06f          	j	80001de4 <_Z13stressTestingv+0x6c>
        sz-=10;
    80001efc:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001f00:	f01ff06f          	j	80001e00 <_Z13stressTestingv+0x88>
    Riscv::printString("OK\n");
    80001f04:	00007517          	auipc	a0,0x7
    80001f08:	19450513          	addi	a0,a0,404 # 80009098 <CONSOLE_STATUS+0x88>
    80001f0c:	00002097          	auipc	ra,0x2
    80001f10:	884080e7          	jalr	-1916(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    80001f14:	ed1ff06f          	j	80001de4 <_Z13stressTestingv+0x6c>

0000000080001f18 <_ZN12TestPeriodicC1Em>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {
    80001f18:	fe010113          	addi	sp,sp,-32
    80001f1c:	00113c23          	sd	ra,24(sp)
    80001f20:	00813823          	sd	s0,16(sp)
    80001f24:	00913423          	sd	s1,8(sp)
    80001f28:	02010413          	addi	s0,sp,32
    80001f2c:	00050493          	mv	s1,a0
    80001f30:	00001097          	auipc	ra,0x1
    80001f34:	6e8080e7          	jalr	1768(ra) # 80003618 <_ZN14PeriodicThreadC1Em>
    80001f38:	0000a797          	auipc	a5,0xa
    80001f3c:	8b878793          	addi	a5,a5,-1864 # 8000b7f0 <_ZTV12TestPeriodic+0x10>
    80001f40:	00f4b023          	sd	a5,0(s1)
}
    80001f44:	01813083          	ld	ra,24(sp)
    80001f48:	01013403          	ld	s0,16(sp)
    80001f4c:	00813483          	ld	s1,8(sp)
    80001f50:	02010113          	addi	sp,sp,32
    80001f54:	00008067          	ret

0000000080001f58 <_Z11threadTest3v>:
{
    80001f58:	fe010113          	addi	sp,sp,-32
    80001f5c:	00113c23          	sd	ra,24(sp)
    80001f60:	00813823          	sd	s0,16(sp)
    80001f64:	00913423          	sd	s1,8(sp)
    80001f68:	01213023          	sd	s2,0(sp)
    80001f6c:	02010413          	addi	s0,sp,32
    Thread* t = new TestPeriodic(50);
    80001f70:	02800513          	li	a0,40
    80001f74:	00001097          	auipc	ra,0x1
    80001f78:	3b0080e7          	jalr	944(ra) # 80003324 <_Znwm>
    80001f7c:	00050913          	mv	s2,a0
    80001f80:	03200593          	li	a1,50
    80001f84:	00000097          	auipc	ra,0x0
    80001f88:	f94080e7          	jalr	-108(ra) # 80001f18 <_ZN12TestPeriodicC1Em>
    t->start();
    80001f8c:	00090513          	mv	a0,s2
    80001f90:	00001097          	auipc	ra,0x1
    80001f94:	464080e7          	jalr	1124(ra) # 800033f4 <_ZN6Thread5startEv>
    while(true)
    80001f98:	0000006f          	j	80001f98 <_Z11threadTest3v+0x40>
    80001f9c:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80001fa0:	00090513          	mv	a0,s2
    80001fa4:	00001097          	auipc	ra,0x1
    80001fa8:	3a8080e7          	jalr	936(ra) # 8000334c <_ZdlPv>
    80001fac:	00048513          	mv	a0,s1
    80001fb0:	0000b097          	auipc	ra,0xb
    80001fb4:	b68080e7          	jalr	-1176(ra) # 8000cb18 <_Unwind_Resume>

0000000080001fb8 <_Z10mallocTestv>:
{
    80001fb8:	fc010113          	addi	sp,sp,-64
    80001fbc:	02113c23          	sd	ra,56(sp)
    80001fc0:	02813823          	sd	s0,48(sp)
    80001fc4:	02913423          	sd	s1,40(sp)
    80001fc8:	03213023          	sd	s2,32(sp)
    80001fcc:	01313c23          	sd	s3,24(sp)
    80001fd0:	01413823          	sd	s4,16(sp)
    80001fd4:	01513423          	sd	s5,8(sp)
    80001fd8:	01613023          	sd	s6,0(sp)
    80001fdc:	04010413          	addi	s0,sp,64
    Riscv::printString("Testing a few mallocs and frees\n\n");
    80001fe0:	00007517          	auipc	a0,0x7
    80001fe4:	11050513          	addi	a0,a0,272 # 800090f0 <CONSOLE_STATUS+0xe0>
    80001fe8:	00001097          	auipc	ra,0x1
    80001fec:	7a8080e7          	jalr	1960(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    object* o = new object;
    80001ff0:	02c00513          	li	a0,44
    80001ff4:	00001097          	auipc	ra,0x1
    80001ff8:	330080e7          	jalr	816(ra) # 80003324 <_Znwm>
    80001ffc:	00050493          	mv	s1,a0
    o->a = 3;
    80002000:	00300793          	li	a5,3
    80002004:	00f52023          	sw	a5,0(a0)
    void* m1 = mem_alloc(10);
    80002008:	00a00513          	li	a0,10
    8000200c:	fffff097          	auipc	ra,0xfffff
    80002010:	23c080e7          	jalr	572(ra) # 80001248 <mem_alloc>
    80002014:	00050913          	mv	s2,a0
    void* m2 = mem_alloc(100);
    80002018:	06400513          	li	a0,100
    8000201c:	fffff097          	auipc	ra,0xfffff
    80002020:	22c080e7          	jalr	556(ra) # 80001248 <mem_alloc>
    80002024:	00050993          	mv	s3,a0
    void* m3 = mem_alloc(1000);
    80002028:	3e800513          	li	a0,1000
    8000202c:	fffff097          	auipc	ra,0xfffff
    80002030:	21c080e7          	jalr	540(ra) # 80001248 <mem_alloc>
    80002034:	00050a13          	mv	s4,a0
    void* m4 = mem_alloc(10000);
    80002038:	00002537          	lui	a0,0x2
    8000203c:	71050513          	addi	a0,a0,1808 # 2710 <_entry-0x7fffd8f0>
    80002040:	fffff097          	auipc	ra,0xfffff
    80002044:	208080e7          	jalr	520(ra) # 80001248 <mem_alloc>
    80002048:	00050a93          	mv	s5,a0
    void* m5 = mem_alloc(1);
    8000204c:	00100513          	li	a0,1
    80002050:	fffff097          	auipc	ra,0xfffff
    80002054:	1f8080e7          	jalr	504(ra) # 80001248 <mem_alloc>
    if(!m1 || !m2 || !m3 || !m4 || !m5){
    80002058:	06090c63          	beqz	s2,800020d0 <_Z10mallocTestv+0x118>
    8000205c:	00050b13          	mv	s6,a0
    80002060:	06098863          	beqz	s3,800020d0 <_Z10mallocTestv+0x118>
    80002064:	060a0663          	beqz	s4,800020d0 <_Z10mallocTestv+0x118>
    80002068:	060a8463          	beqz	s5,800020d0 <_Z10mallocTestv+0x118>
    8000206c:	06050263          	beqz	a0,800020d0 <_Z10mallocTestv+0x118>
    delete (uint64*)m1;
    80002070:	00090513          	mv	a0,s2
    80002074:	00001097          	auipc	ra,0x1
    80002078:	2d8080e7          	jalr	728(ra) # 8000334c <_ZdlPv>
    delete (uint64*)m3;
    8000207c:	000a0513          	mv	a0,s4
    80002080:	00001097          	auipc	ra,0x1
    80002084:	2cc080e7          	jalr	716(ra) # 8000334c <_ZdlPv>
    delete (uint64*)m4;
    80002088:	000a8513          	mv	a0,s5
    8000208c:	00001097          	auipc	ra,0x1
    80002090:	2c0080e7          	jalr	704(ra) # 8000334c <_ZdlPv>
    delete (uint64*)m2;
    80002094:	00098513          	mv	a0,s3
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	2b4080e7          	jalr	692(ra) # 8000334c <_ZdlPv>
    delete (uint64*)m5;
    800020a0:	000b0513          	mv	a0,s6
    800020a4:	00001097          	auipc	ra,0x1
    800020a8:	2a8080e7          	jalr	680(ra) # 8000334c <_ZdlPv>
    delete o;
    800020ac:	00048863          	beqz	s1,800020bc <_Z10mallocTestv+0x104>
    800020b0:	00048513          	mv	a0,s1
    800020b4:	00001097          	auipc	ra,0x1
    800020b8:	298080e7          	jalr	664(ra) # 8000334c <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    800020bc:	00007517          	auipc	a0,0x7
    800020c0:	05c50513          	addi	a0,a0,92 # 80009118 <CONSOLE_STATUS+0x108>
    800020c4:	00001097          	auipc	ra,0x1
    800020c8:	6cc080e7          	jalr	1740(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    800020cc:	0140006f          	j	800020e0 <_Z10mallocTestv+0x128>
        Riscv::printString("not OK\n");
    800020d0:	00007517          	auipc	a0,0x7
    800020d4:	fc050513          	addi	a0,a0,-64 # 80009090 <CONSOLE_STATUS+0x80>
    800020d8:	00001097          	auipc	ra,0x1
    800020dc:	6b8080e7          	jalr	1720(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
}
    800020e0:	03813083          	ld	ra,56(sp)
    800020e4:	03013403          	ld	s0,48(sp)
    800020e8:	02813483          	ld	s1,40(sp)
    800020ec:	02013903          	ld	s2,32(sp)
    800020f0:	01813983          	ld	s3,24(sp)
    800020f4:	01013a03          	ld	s4,16(sp)
    800020f8:	00813a83          	ld	s5,8(sp)
    800020fc:	00013b03          	ld	s6,0(sp)
    80002100:	04010113          	addi	sp,sp,64
    80002104:	00008067          	ret

0000000080002108 <_Z16mallocEverythingv>:
{
    80002108:	fe010113          	addi	sp,sp,-32
    8000210c:	00113c23          	sd	ra,24(sp)
    80002110:	00813823          	sd	s0,16(sp)
    80002114:	00913423          	sd	s1,8(sp)
    80002118:	02010413          	addi	s0,sp,32
    Riscv::printString("Testing allocating whole address space\n\n");
    8000211c:	00007517          	auipc	a0,0x7
    80002120:	02c50513          	addi	a0,a0,44 # 80009148 <CONSOLE_STATUS+0x138>
    80002124:	00001097          	auipc	ra,0x1
    80002128:	66c080e7          	jalr	1644(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    uint64 neg_size = (uint64)HEAP_START_ADDR - (uint64)HEAP_END_ADDR -sizeof(MemoryAllocator::BlockHeader);
    8000212c:	00009797          	auipc	a5,0x9
    80002130:	7dc7b783          	ld	a5,2012(a5) # 8000b908 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002134:	0007b503          	ld	a0,0(a5)
    80002138:	00009797          	auipc	a5,0x9
    8000213c:	7f87b783          	ld	a5,2040(a5) # 8000b930 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002140:	0007b783          	ld	a5,0(a5)
    80002144:	40f50533          	sub	a0,a0,a5
    void* m = mem_alloc(neg_size);
    80002148:	ff050513          	addi	a0,a0,-16
    8000214c:	fffff097          	auipc	ra,0xfffff
    80002150:	0fc080e7          	jalr	252(ra) # 80001248 <mem_alloc>
    if(m!=nullptr){
    80002154:	02050463          	beqz	a0,8000217c <_Z16mallocEverythingv+0x74>
        Riscv::printString("not OK\n");
    80002158:	00007517          	auipc	a0,0x7
    8000215c:	f3850513          	addi	a0,a0,-200 # 80009090 <CONSOLE_STATUS+0x80>
    80002160:	00001097          	auipc	ra,0x1
    80002164:	630080e7          	jalr	1584(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
}
    80002168:	01813083          	ld	ra,24(sp)
    8000216c:	01013403          	ld	s0,16(sp)
    80002170:	00813483          	ld	s1,8(sp)
    80002174:	02010113          	addi	sp,sp,32
    80002178:	00008067          	ret
    uint64 blockSize = (((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR - sizeof(MemoryAllocator::BlockHeader))>>6)-300;
    8000217c:	00009797          	auipc	a5,0x9
    80002180:	7b47b783          	ld	a5,1972(a5) # 8000b930 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002184:	0007b503          	ld	a0,0(a5)
    80002188:	00009797          	auipc	a5,0x9
    8000218c:	7807b783          	ld	a5,1920(a5) # 8000b908 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002190:	0007b783          	ld	a5,0(a5)
    80002194:	40f50533          	sub	a0,a0,a5
    80002198:	ff050513          	addi	a0,a0,-16
    8000219c:	00655513          	srli	a0,a0,0x6
    800021a0:	ed450513          	addi	a0,a0,-300
    m = mem_alloc(blockSize<<6);
    800021a4:	00651513          	slli	a0,a0,0x6
    800021a8:	fffff097          	auipc	ra,0xfffff
    800021ac:	0a0080e7          	jalr	160(ra) # 80001248 <mem_alloc>
    800021b0:	00050493          	mv	s1,a0
    if(m==nullptr){
    800021b4:	02050a63          	beqz	a0,800021e8 <_Z16mallocEverythingv+0xe0>
    void *small_chunk = mem_alloc(1);
    800021b8:	00100513          	li	a0,1
    800021bc:	fffff097          	auipc	ra,0xfffff
    800021c0:	08c080e7          	jalr	140(ra) # 80001248 <mem_alloc>
    if(small_chunk == nullptr){
    800021c4:	02050c63          	beqz	a0,800021fc <_Z16mallocEverythingv+0xf4>
    delete (uint64*)m;
    800021c8:	00048513          	mv	a0,s1
    800021cc:	00001097          	auipc	ra,0x1
    800021d0:	180080e7          	jalr	384(ra) # 8000334c <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing allocating whole address space\n\n");
    800021d4:	00007517          	auipc	a0,0x7
    800021d8:	fa450513          	addi	a0,a0,-92 # 80009178 <CONSOLE_STATUS+0x168>
    800021dc:	00001097          	auipc	ra,0x1
    800021e0:	5b4080e7          	jalr	1460(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    800021e4:	f85ff06f          	j	80002168 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    800021e8:	00007517          	auipc	a0,0x7
    800021ec:	ea850513          	addi	a0,a0,-344 # 80009090 <CONSOLE_STATUS+0x80>
    800021f0:	00001097          	auipc	ra,0x1
    800021f4:	5a0080e7          	jalr	1440(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
        return;
    800021f8:	f71ff06f          	j	80002168 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    800021fc:	00007517          	auipc	a0,0x7
    80002200:	e9450513          	addi	a0,a0,-364 # 80009090 <CONSOLE_STATUS+0x80>
    80002204:	00001097          	auipc	ra,0x1
    80002208:	58c080e7          	jalr	1420(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
        return;
    8000220c:	f5dff06f          	j	80002168 <_Z16mallocEverythingv+0x60>

0000000080002210 <_Z17mallocGapFillTestv>:
{
    80002210:	f6010113          	addi	sp,sp,-160
    80002214:	08113c23          	sd	ra,152(sp)
    80002218:	08813823          	sd	s0,144(sp)
    8000221c:	08913423          	sd	s1,136(sp)
    80002220:	09213023          	sd	s2,128(sp)
    80002224:	07313c23          	sd	s3,120(sp)
    80002228:	07413823          	sd	s4,112(sp)
    8000222c:	07513423          	sd	s5,104(sp)
    80002230:	07613023          	sd	s6,96(sp)
    80002234:	05713c23          	sd	s7,88(sp)
    80002238:	05813823          	sd	s8,80(sp)
    8000223c:	0a010413          	addi	s0,sp,160
    Riscv::printString("Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80002240:	00007517          	auipc	a0,0x7
    80002244:	f7050513          	addi	a0,a0,-144 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80002248:	00001097          	auipc	ra,0x1
    8000224c:	548080e7          	jalr	1352(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    for(int i=0;i<N;i++)
    80002250:	00000493          	li	s1,0
    80002254:	00900793          	li	a5,9
    80002258:	0697c863          	blt	a5,s1,800022c8 <_Z17mallocGapFillTestv+0xb8>
        m[i] = mem_alloc((i<<6)+1);
    8000225c:	0064951b          	slliw	a0,s1,0x6
    80002260:	0015051b          	addiw	a0,a0,1
    80002264:	fffff097          	auipc	ra,0xfffff
    80002268:	fe4080e7          	jalr	-28(ra) # 80001248 <mem_alloc>
    8000226c:	00349793          	slli	a5,s1,0x3
    80002270:	fb040713          	addi	a4,s0,-80
    80002274:	00f707b3          	add	a5,a4,a5
    80002278:	faa7b823          	sd	a0,-80(a5)
        if(m[i] == nullptr){
    8000227c:	00050663          	beqz	a0,80002288 <_Z17mallocGapFillTestv+0x78>
    for(int i=0;i<N;i++)
    80002280:	0014849b          	addiw	s1,s1,1
    80002284:	fd1ff06f          	j	80002254 <_Z17mallocGapFillTestv+0x44>
            Riscv::printString("not OK\n");
    80002288:	00007517          	auipc	a0,0x7
    8000228c:	e0850513          	addi	a0,a0,-504 # 80009090 <CONSOLE_STATUS+0x80>
    80002290:	00001097          	auipc	ra,0x1
    80002294:	500080e7          	jalr	1280(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
}
    80002298:	09813083          	ld	ra,152(sp)
    8000229c:	09013403          	ld	s0,144(sp)
    800022a0:	08813483          	ld	s1,136(sp)
    800022a4:	08013903          	ld	s2,128(sp)
    800022a8:	07813983          	ld	s3,120(sp)
    800022ac:	07013a03          	ld	s4,112(sp)
    800022b0:	06813a83          	ld	s5,104(sp)
    800022b4:	06013b03          	ld	s6,96(sp)
    800022b8:	05813b83          	ld	s7,88(sp)
    800022bc:	05013c03          	ld	s8,80(sp)
    800022c0:	0a010113          	addi	sp,sp,160
    800022c4:	00008067          	ret
    delete (uint64*)m[2];
    800022c8:	f7043503          	ld	a0,-144(s0)
    800022cc:	00050663          	beqz	a0,800022d8 <_Z17mallocGapFillTestv+0xc8>
    800022d0:	00001097          	auipc	ra,0x1
    800022d4:	07c080e7          	jalr	124(ra) # 8000334c <_ZdlPv>
    void* tmp1 = mem_alloc(1);
    800022d8:	00100513          	li	a0,1
    800022dc:	fffff097          	auipc	ra,0xfffff
    800022e0:	f6c080e7          	jalr	-148(ra) # 80001248 <mem_alloc>
    800022e4:	00050493          	mv	s1,a0
    void* tmp2 = mem_alloc(1);
    800022e8:	00100513          	li	a0,1
    800022ec:	fffff097          	auipc	ra,0xfffff
    800022f0:	f5c080e7          	jalr	-164(ra) # 80001248 <mem_alloc>
    800022f4:	00050913          	mv	s2,a0
    void* tmp3 = mem_alloc(1);
    800022f8:	00100513          	li	a0,1
    800022fc:	fffff097          	auipc	ra,0xfffff
    80002300:	f4c080e7          	jalr	-180(ra) # 80001248 <mem_alloc>
    80002304:	00050993          	mv	s3,a0
    if(!tmp1 || !tmp2 || !tmp3)
    80002308:	08048863          	beqz	s1,80002398 <_Z17mallocGapFillTestv+0x188>
    8000230c:	08090663          	beqz	s2,80002398 <_Z17mallocGapFillTestv+0x188>
    80002310:	08050463          	beqz	a0,80002398 <_Z17mallocGapFillTestv+0x188>
    uint64 im1 = (uint64)m[1];
    80002314:	f6843783          	ld	a5,-152(s0)
    uint64 im3 = (uint64)m[3];
    80002318:	f7843503          	ld	a0,-136(s0)
    uint64 im5 = (uint64)m[5];
    8000231c:	f8843b03          	ld	s6,-120(s0)
    uint64 imN = (uint64)m[N];
    80002320:	fb043603          	ld	a2,-80(s0)
    uint64 itmp2 = (uint64)tmp2;
    80002324:	00090a13          	mv	s4,s2
    uint64 itmp3 = (uint64)tmp3;
    80002328:	00098a93          	mv	s5,s3
    if(!(im1<itmp1 && itmp1<im3 && im1<itmp2 && itmp2<im3 && itmp3>imN))
    8000232c:	0897f063          	bgeu	a5,s1,800023ac <_Z17mallocGapFillTestv+0x19c>
    80002330:	06a4fe63          	bgeu	s1,a0,800023ac <_Z17mallocGapFillTestv+0x19c>
    80002334:	0727fc63          	bgeu	a5,s2,800023ac <_Z17mallocGapFillTestv+0x19c>
    80002338:	06a97a63          	bgeu	s2,a0,800023ac <_Z17mallocGapFillTestv+0x19c>
    8000233c:	07367863          	bgeu	a2,s3,800023ac <_Z17mallocGapFillTestv+0x19c>
    delete (uint64*)m[3];
    80002340:	00050663          	beqz	a0,8000234c <_Z17mallocGapFillTestv+0x13c>
    80002344:	00001097          	auipc	ra,0x1
    80002348:	008080e7          	jalr	8(ra) # 8000334c <_ZdlPv>
    delete (uint64*)m[4];
    8000234c:	f8043503          	ld	a0,-128(s0)
    80002350:	00050663          	beqz	a0,8000235c <_Z17mallocGapFillTestv+0x14c>
    80002354:	00001097          	auipc	ra,0x1
    80002358:	ff8080e7          	jalr	-8(ra) # 8000334c <_ZdlPv>
    void* tmp4 = mem_alloc(640);
    8000235c:	28000513          	li	a0,640
    80002360:	fffff097          	auipc	ra,0xfffff
    80002364:	ee8080e7          	jalr	-280(ra) # 80001248 <mem_alloc>
    80002368:	00050c13          	mv	s8,a0
    void* tmp5 = mem_alloc(576);
    8000236c:	24000513          	li	a0,576
    80002370:	fffff097          	auipc	ra,0xfffff
    80002374:	ed8080e7          	jalr	-296(ra) # 80001248 <mem_alloc>
    80002378:	00050b93          	mv	s7,a0
    if(!tmp4 || !tmp5){
    8000237c:	040c0263          	beqz	s8,800023c0 <_Z17mallocGapFillTestv+0x1b0>
    80002380:	04050063          	beqz	a0,800023c0 <_Z17mallocGapFillTestv+0x1b0>
    if(!(itmp5>itmp2 && itmp5>im5 && itmp4<itmp3)){
    80002384:	04aa7863          	bgeu	s4,a0,800023d4 <_Z17mallocGapFillTestv+0x1c4>
    80002388:	04ab7663          	bgeu	s6,a0,800023d4 <_Z17mallocGapFillTestv+0x1c4>
    8000238c:	055c7463          	bgeu	s8,s5,800023d4 <_Z17mallocGapFillTestv+0x1c4>
    for(int i=0;i<N;i++){
    80002390:	00000a13          	li	s4,0
    80002394:	0580006f          	j	800023ec <_Z17mallocGapFillTestv+0x1dc>
        Riscv::printString("not OK\n");
    80002398:	00007517          	auipc	a0,0x7
    8000239c:	cf850513          	addi	a0,a0,-776 # 80009090 <CONSOLE_STATUS+0x80>
    800023a0:	00001097          	auipc	ra,0x1
    800023a4:	3f0080e7          	jalr	1008(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
        return;
    800023a8:	ef1ff06f          	j	80002298 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    800023ac:	00007517          	auipc	a0,0x7
    800023b0:	ce450513          	addi	a0,a0,-796 # 80009090 <CONSOLE_STATUS+0x80>
    800023b4:	00001097          	auipc	ra,0x1
    800023b8:	3dc080e7          	jalr	988(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
        return;
    800023bc:	eddff06f          	j	80002298 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    800023c0:	00007517          	auipc	a0,0x7
    800023c4:	cd050513          	addi	a0,a0,-816 # 80009090 <CONSOLE_STATUS+0x80>
    800023c8:	00001097          	auipc	ra,0x1
    800023cc:	3c8080e7          	jalr	968(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
        return;
    800023d0:	ec9ff06f          	j	80002298 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    800023d4:	00007517          	auipc	a0,0x7
    800023d8:	cbc50513          	addi	a0,a0,-836 # 80009090 <CONSOLE_STATUS+0x80>
    800023dc:	00001097          	auipc	ra,0x1
    800023e0:	3b4080e7          	jalr	948(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
        return;
    800023e4:	eb5ff06f          	j	80002298 <_Z17mallocGapFillTestv+0x88>
    for(int i=0;i<N;i++){
    800023e8:	001a0a1b          	addiw	s4,s4,1
    800023ec:	00900793          	li	a5,9
    800023f0:	0347c263          	blt	a5,s4,80002414 <_Z17mallocGapFillTestv+0x204>
        delete (uint64*)m[i];
    800023f4:	003a1793          	slli	a5,s4,0x3
    800023f8:	fb040713          	addi	a4,s0,-80
    800023fc:	00f707b3          	add	a5,a4,a5
    80002400:	fb07b503          	ld	a0,-80(a5)
    80002404:	fe0502e3          	beqz	a0,800023e8 <_Z17mallocGapFillTestv+0x1d8>
    80002408:	00001097          	auipc	ra,0x1
    8000240c:	f44080e7          	jalr	-188(ra) # 8000334c <_ZdlPv>
    80002410:	fd9ff06f          	j	800023e8 <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    80002414:	00048513          	mv	a0,s1
    80002418:	00001097          	auipc	ra,0x1
    8000241c:	f34080e7          	jalr	-204(ra) # 8000334c <_ZdlPv>
    delete (uint64*)tmp2;
    80002420:	00090513          	mv	a0,s2
    80002424:	00001097          	auipc	ra,0x1
    80002428:	f28080e7          	jalr	-216(ra) # 8000334c <_ZdlPv>
    delete (uint64*)tmp3;
    8000242c:	00098513          	mv	a0,s3
    80002430:	00001097          	auipc	ra,0x1
    80002434:	f1c080e7          	jalr	-228(ra) # 8000334c <_ZdlPv>
    delete (uint64*)tmp4;
    80002438:	000c0513          	mv	a0,s8
    8000243c:	00001097          	auipc	ra,0x1
    80002440:	f10080e7          	jalr	-240(ra) # 8000334c <_ZdlPv>
    delete (uint64*)tmp5;
    80002444:	000b8513          	mv	a0,s7
    80002448:	00001097          	auipc	ra,0x1
    8000244c:	f04080e7          	jalr	-252(ra) # 8000334c <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80002450:	00007517          	auipc	a0,0x7
    80002454:	da850513          	addi	a0,a0,-600 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80002458:	00001097          	auipc	ra,0x1
    8000245c:	338080e7          	jalr	824(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    80002460:	e39ff06f          	j	80002298 <_Z17mallocGapFillTestv+0x88>

0000000080002464 <_Z21memoryAllocationTestsv>:
{
    80002464:	ff010113          	addi	sp,sp,-16
    80002468:	00113423          	sd	ra,8(sp)
    8000246c:	00813023          	sd	s0,0(sp)
    80002470:	01010413          	addi	s0,sp,16
    mallocGapFillTest();
    80002474:	00000097          	auipc	ra,0x0
    80002478:	d9c080e7          	jalr	-612(ra) # 80002210 <_Z17mallocGapFillTestv>
}
    8000247c:	00813083          	ld	ra,8(sp)
    80002480:	00013403          	ld	s0,0(sp)
    80002484:	01010113          	addi	sp,sp,16
    80002488:	00008067          	ret

000000008000248c <_Z7myTestsv>:
{
    8000248c:	ff010113          	addi	sp,sp,-16
    80002490:	00113423          	sd	ra,8(sp)
    80002494:	00813023          	sd	s0,0(sp)
    80002498:	01010413          	addi	s0,sp,16
    memoryAllocationTests();
    8000249c:	00000097          	auipc	ra,0x0
    800024a0:	fc8080e7          	jalr	-56(ra) # 80002464 <_Z21memoryAllocationTestsv>
}
    800024a4:	00813083          	ld	ra,8(sp)
    800024a8:	00013403          	ld	s0,0(sp)
    800024ac:	01010113          	addi	sp,sp,16
    800024b0:	00008067          	ret

00000000800024b4 <_Z8semTest1v>:

void semTest1()
{
    800024b4:	fe010113          	addi	sp,sp,-32
    800024b8:	00113c23          	sd	ra,24(sp)
    800024bc:	00813823          	sd	s0,16(sp)
    800024c0:	02010413          	addi	s0,sp,32
    sem_open(&spaceAvailable, 10);
    800024c4:	00a00593          	li	a1,10
    800024c8:	00009517          	auipc	a0,0x9
    800024cc:	4d850513          	addi	a0,a0,1240 # 8000b9a0 <spaceAvailable>
    800024d0:	fffff097          	auipc	ra,0xfffff
    800024d4:	e9c080e7          	jalr	-356(ra) # 8000136c <sem_open>

    sem_open(&itemAvailable, 0);
    800024d8:	00000593          	li	a1,0
    800024dc:	00009517          	auipc	a0,0x9
    800024e0:	4ac50513          	addi	a0,a0,1196 # 8000b988 <itemAvailable>
    800024e4:	fffff097          	auipc	ra,0xfffff
    800024e8:	e88080e7          	jalr	-376(ra) # 8000136c <sem_open>

    thread_t threadA, threadB;

    thread_create(&threadA, producerA, nullptr);
    800024ec:	00000613          	li	a2,0
    800024f0:	fffff597          	auipc	a1,0xfffff
    800024f4:	25058593          	addi	a1,a1,592 # 80001740 <_Z9producerAPv>
    800024f8:	fe840513          	addi	a0,s0,-24
    800024fc:	fffff097          	auipc	ra,0xfffff
    80002500:	da8080e7          	jalr	-600(ra) # 800012a4 <thread_create>

    thread_create(&threadB, consumerA, nullptr);
    80002504:	00000613          	li	a2,0
    80002508:	fffff597          	auipc	a1,0xfffff
    8000250c:	1b058593          	addi	a1,a1,432 # 800016b8 <_Z9consumerAPv>
    80002510:	fe040513          	addi	a0,s0,-32
    80002514:	fffff097          	auipc	ra,0xfffff
    80002518:	d90080e7          	jalr	-624(ra) # 800012a4 <thread_create>
    8000251c:	00c0006f          	j	80002528 <_Z8semTest1v+0x74>

    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
        thread_dispatch();
    80002520:	fffff097          	auipc	ra,0xfffff
    80002524:	e04080e7          	jalr	-508(ra) # 80001324 <thread_dispatch>
    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
    80002528:	fe843503          	ld	a0,-24(s0)
    8000252c:	00000097          	auipc	ra,0x0
    80002530:	420080e7          	jalr	1056(ra) # 8000294c <_ZN3PCB10isFinishedEv>
    80002534:	fe0506e3          	beqz	a0,80002520 <_Z8semTest1v+0x6c>
    80002538:	fe843503          	ld	a0,-24(s0)
    8000253c:	00000097          	auipc	ra,0x0
    80002540:	410080e7          	jalr	1040(ra) # 8000294c <_ZN3PCB10isFinishedEv>
    80002544:	fc050ee3          	beqz	a0,80002520 <_Z8semTest1v+0x6c>

}
    80002548:	01813083          	ld	ra,24(sp)
    8000254c:	01013403          	ld	s0,16(sp)
    80002550:	02010113          	addi	sp,sp,32
    80002554:	00008067          	ret

0000000080002558 <_Z14semaphoreTestsv>:
{
    80002558:	ff010113          	addi	sp,sp,-16
    8000255c:	00113423          	sd	ra,8(sp)
    80002560:	00813023          	sd	s0,0(sp)
    80002564:	01010413          	addi	s0,sp,16
    semTest1();
    80002568:	00000097          	auipc	ra,0x0
    8000256c:	f4c080e7          	jalr	-180(ra) # 800024b4 <_Z8semTest1v>
}
    80002570:	00813083          	ld	ra,8(sp)
    80002574:	00013403          	ld	s0,0(sp)
    80002578:	01010113          	addi	sp,sp,16
    8000257c:	00008067          	ret

0000000080002580 <_ZN6Thread3runEv>:
    //ovde je samo za potrebe testiranja
    thread_t myHandle;
protected:
    Thread();

    virtual void run() {}
    80002580:	ff010113          	addi	sp,sp,-16
    80002584:	00813423          	sd	s0,8(sp)
    80002588:	01010413          	addi	s0,sp,16
    8000258c:	00813403          	ld	s0,8(sp)
    80002590:	01010113          	addi	sp,sp,16
    80002594:	00008067          	ret

0000000080002598 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80002598:	ff010113          	addi	sp,sp,-16
    8000259c:	00813423          	sd	s0,8(sp)
    800025a0:	01010413          	addi	s0,sp,16
    800025a4:	00813403          	ld	s0,8(sp)
    800025a8:	01010113          	addi	sp,sp,16
    800025ac:	00008067          	ret

00000000800025b0 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    800025b0:	ff010113          	addi	sp,sp,-16
    800025b4:	00113423          	sd	ra,8(sp)
    800025b8:	00813023          	sd	s0,0(sp)
    800025bc:	01010413          	addi	s0,sp,16
    800025c0:	00009797          	auipc	a5,0x9
    800025c4:	20078793          	addi	a5,a5,512 # 8000b7c0 <_ZTV14PeriodicThread+0x10>
    800025c8:	00f53023          	sd	a5,0(a0)
    800025cc:	00001097          	auipc	ra,0x1
    800025d0:	c9c080e7          	jalr	-868(ra) # 80003268 <_ZN6ThreadD1Ev>
    800025d4:	00813083          	ld	ra,8(sp)
    800025d8:	00013403          	ld	s0,0(sp)
    800025dc:	01010113          	addi	sp,sp,16
    800025e0:	00008067          	ret

00000000800025e4 <_ZN14PeriodicThreadD0Ev>:
    800025e4:	fe010113          	addi	sp,sp,-32
    800025e8:	00113c23          	sd	ra,24(sp)
    800025ec:	00813823          	sd	s0,16(sp)
    800025f0:	00913423          	sd	s1,8(sp)
    800025f4:	02010413          	addi	s0,sp,32
    800025f8:	00050493          	mv	s1,a0
    800025fc:	00009797          	auipc	a5,0x9
    80002600:	1c478793          	addi	a5,a5,452 # 8000b7c0 <_ZTV14PeriodicThread+0x10>
    80002604:	00f53023          	sd	a5,0(a0)
    80002608:	00001097          	auipc	ra,0x1
    8000260c:	c60080e7          	jalr	-928(ra) # 80003268 <_ZN6ThreadD1Ev>
    80002610:	00048513          	mv	a0,s1
    80002614:	00001097          	auipc	ra,0x1
    80002618:	d38080e7          	jalr	-712(ra) # 8000334c <_ZdlPv>
    8000261c:	01813083          	ld	ra,24(sp)
    80002620:	01013403          	ld	s0,16(sp)
    80002624:	00813483          	ld	s1,8(sp)
    80002628:	02010113          	addi	sp,sp,32
    8000262c:	00008067          	ret

0000000080002630 <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    80002630:	ff010113          	addi	sp,sp,-16
    80002634:	00113423          	sd	ra,8(sp)
    80002638:	00813023          	sd	s0,0(sp)
    8000263c:	01010413          	addi	s0,sp,16
    80002640:	00009797          	auipc	a5,0x9
    80002644:	18078793          	addi	a5,a5,384 # 8000b7c0 <_ZTV14PeriodicThread+0x10>
    80002648:	00f53023          	sd	a5,0(a0)
    8000264c:	00001097          	auipc	ra,0x1
    80002650:	c1c080e7          	jalr	-996(ra) # 80003268 <_ZN6ThreadD1Ev>
    80002654:	00813083          	ld	ra,8(sp)
    80002658:	00013403          	ld	s0,0(sp)
    8000265c:	01010113          	addi	sp,sp,16
    80002660:	00008067          	ret

0000000080002664 <_ZN12TestPeriodicD0Ev>:
    80002664:	fe010113          	addi	sp,sp,-32
    80002668:	00113c23          	sd	ra,24(sp)
    8000266c:	00813823          	sd	s0,16(sp)
    80002670:	00913423          	sd	s1,8(sp)
    80002674:	02010413          	addi	s0,sp,32
    80002678:	00050493          	mv	s1,a0
    8000267c:	00009797          	auipc	a5,0x9
    80002680:	14478793          	addi	a5,a5,324 # 8000b7c0 <_ZTV14PeriodicThread+0x10>
    80002684:	00f53023          	sd	a5,0(a0)
    80002688:	00001097          	auipc	ra,0x1
    8000268c:	be0080e7          	jalr	-1056(ra) # 80003268 <_ZN6ThreadD1Ev>
    80002690:	00048513          	mv	a0,s1
    80002694:	00001097          	auipc	ra,0x1
    80002698:	cb8080e7          	jalr	-840(ra) # 8000334c <_ZdlPv>
    8000269c:	01813083          	ld	ra,24(sp)
    800026a0:	01013403          	ld	s0,16(sp)
    800026a4:	00813483          	ld	s1,8(sp)
    800026a8:	02010113          	addi	sp,sp,32
    800026ac:	00008067          	ret

00000000800026b0 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800026b0:	ff010113          	addi	sp,sp,-16
    800026b4:	00113423          	sd	ra,8(sp)
    800026b8:	00813023          	sd	s0,0(sp)
    800026bc:	01010413          	addi	s0,sp,16
    Riscv::printString("Runner started...\n");
    800026c0:	00007517          	auipc	a0,0x7
    800026c4:	b9050513          	addi	a0,a0,-1136 # 80009250 <CONSOLE_STATUS+0x240>
    800026c8:	00001097          	auipc	ra,0x1
    800026cc:	0c8080e7          	jalr	200(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    800026d0:	00001097          	auipc	ra,0x1
    800026d4:	0a0080e7          	jalr	160(ra) # 80003770 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    800026d8:	00009797          	auipc	a5,0x9
    800026dc:	2d87b783          	ld	a5,728(a5) # 8000b9b0 <_ZN3PCB7runningE>
    800026e0:	0207b703          	ld	a4,32(a5)
    800026e4:	0287b503          	ld	a0,40(a5)
    800026e8:	000700e7          	jalr	a4

    thread_exit();
    800026ec:	fffff097          	auipc	ra,0xfffff
    800026f0:	c58080e7          	jalr	-936(ra) # 80001344 <thread_exit>
}
    800026f4:	00813083          	ld	ra,8(sp)
    800026f8:	00013403          	ld	s0,0(sp)
    800026fc:	01010113          	addi	sp,sp,16
    80002700:	00008067          	ret

0000000080002704 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80002704:	fe010113          	addi	sp,sp,-32
    80002708:	00113c23          	sd	ra,24(sp)
    8000270c:	00813823          	sd	s0,16(sp)
    80002710:	00913423          	sd	s1,8(sp)
    80002714:	02010413          	addi	s0,sp,32
    80002718:	00050493          	mv	s1,a0
    })
    8000271c:	00050023          	sb	zero,0(a0)
    80002720:	00e53823          	sd	a4,16(a0)
    80002724:	00053c23          	sd	zero,24(a0)
    80002728:	02b53023          	sd	a1,32(a0)
    8000272c:	02c53423          	sd	a2,40(a0)
    80002730:	02d53823          	sd	a3,48(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002734:	000017b7          	lui	a5,0x1
    80002738:	00f686b3          	add	a3,a3,a5
    })
    8000273c:	04d53023          	sd	a3,64(a0)
    80002740:	00000797          	auipc	a5,0x0
    80002744:	f7078793          	addi	a5,a5,-144 # 800026b0 <_ZN3PCB6runnerEv>
    80002748:	04f53423          	sd	a5,72(a0)
    Scheduler::put(this);
    8000274c:	00001097          	auipc	ra,0x1
    80002750:	9fc080e7          	jalr	-1540(ra) # 80003148 <_ZN9Scheduler3putEP3PCB>
    nextPCB = 0;
    80002754:	0004b423          	sd	zero,8(s1)
}
    80002758:	01813083          	ld	ra,24(sp)
    8000275c:	01013403          	ld	s0,16(sp)
    80002760:	00813483          	ld	s1,8(sp)
    80002764:	02010113          	addi	sp,sp,32
    80002768:	00008067          	ret

000000008000276c <_ZN3PCB5sleepEm>:
{
    8000276c:	ff010113          	addi	sp,sp,-16
    80002770:	00813423          	sd	s0,8(sp)
    80002774:	01010413          	addi	s0,sp,16
}
    80002778:	00813403          	ld	s0,8(sp)
    8000277c:	01010113          	addi	sp,sp,16
    80002780:	00008067          	ret

0000000080002784 <_ZN3PCB5startEv>:
{
    80002784:	ff010113          	addi	sp,sp,-16
    80002788:	00113423          	sd	ra,8(sp)
    8000278c:	00813023          	sd	s0,0(sp)
    80002790:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002794:	00001097          	auipc	ra,0x1
    80002798:	9b4080e7          	jalr	-1612(ra) # 80003148 <_ZN9Scheduler3putEP3PCB>
}
    8000279c:	00813083          	ld	ra,8(sp)
    800027a0:	00013403          	ld	s0,0(sp)
    800027a4:	01010113          	addi	sp,sp,16
    800027a8:	00008067          	ret

00000000800027ac <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    800027ac:	fe010113          	addi	sp,sp,-32
    800027b0:	00113c23          	sd	ra,24(sp)
    800027b4:	00813823          	sd	s0,16(sp)
    800027b8:	00913423          	sd	s1,8(sp)
    800027bc:	02010413          	addi	s0,sp,32
    //Scheduler::print();
    //Riscv::printInteger(Scheduler::getSize());
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    800027c0:	00009497          	auipc	s1,0x9
    800027c4:	1f04b483          	ld	s1,496(s1) # 8000b9b0 <_ZN3PCB7runningE>
    800027c8:	0384a703          	lw	a4,56(s1)
    if(old->getState() == PCB::RUNNING)
    800027cc:	00100793          	li	a5,1
    800027d0:	04f70863          	beq	a4,a5,80002820 <_ZN3PCB8dispatchEv+0x74>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800027d4:	00001097          	auipc	ra,0x1
    800027d8:	9c8080e7          	jalr	-1592(ra) # 8000319c <_ZN9Scheduler3getEv>
    800027dc:	00009797          	auipc	a5,0x9
    800027e0:	1ca7ba23          	sd	a0,468(a5) # 8000b9b0 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    800027e4:	00100793          	li	a5,1
    800027e8:	02f52c23          	sw	a5,56(a0)
    PCB::running->setState(PCB::RUNNING);
    //Riscv::printString("Switching context...\n");

    if(PCB::running->systemThread)
    800027ec:	00054783          	lbu	a5,0(a0)
    800027f0:	04078063          	beqz	a5,80002830 <_ZN3PCB8dispatchEv+0x84>
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800027f4:	10000793          	li	a5,256
    800027f8:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);


    PCB::contextSwitch(&old->context, &running->context);
    800027fc:	04050593          	addi	a1,a0,64
    80002800:	04048513          	addi	a0,s1,64
    80002804:	fffff097          	auipc	ra,0xfffff
    80002808:	a24080e7          	jalr	-1500(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    8000280c:	01813083          	ld	ra,24(sp)
    80002810:	01013403          	ld	s0,16(sp)
    80002814:	00813483          	ld	s1,8(sp)
    80002818:	02010113          	addi	sp,sp,32
    8000281c:	00008067          	ret
        Scheduler::put(old);
    80002820:	00048513          	mv	a0,s1
    80002824:	00001097          	auipc	ra,0x1
    80002828:	924080e7          	jalr	-1756(ra) # 80003148 <_ZN9Scheduler3putEP3PCB>
    8000282c:	fa9ff06f          	j	800027d4 <_ZN3PCB8dispatchEv+0x28>
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002830:	10000793          	li	a5,256
    80002834:	1007b073          	csrc	sstatus,a5
}
    80002838:	fc5ff06f          	j	800027fc <_ZN3PCB8dispatchEv+0x50>

000000008000283c <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    8000283c:	ff010113          	addi	sp,sp,-16
    80002840:	00113423          	sd	ra,8(sp)
    80002844:	00813023          	sd	s0,0(sp)
    80002848:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    8000284c:	00002097          	auipc	ra,0x2
    80002850:	8e0080e7          	jalr	-1824(ra) # 8000412c <_Z7kmallocm>
}
    80002854:	00813083          	ld	ra,8(sp)
    80002858:	00013403          	ld	s0,0(sp)
    8000285c:	01010113          	addi	sp,sp,16
    80002860:	00008067          	ret

0000000080002864 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002864:	ff010113          	addi	sp,sp,-16
    80002868:	00113423          	sd	ra,8(sp)
    8000286c:	00813023          	sd	s0,0(sp)
    80002870:	01010413          	addi	s0,sp,16
    kfree(p);
    80002874:	00002097          	auipc	ra,0x2
    80002878:	914080e7          	jalr	-1772(ra) # 80004188 <_Z5kfreePv>
}
    8000287c:	00813083          	ld	ra,8(sp)
    80002880:	00013403          	ld	s0,0(sp)
    80002884:	01010113          	addi	sp,sp,16
    80002888:	00008067          	ret

000000008000288c <_ZN3PCBD1Ev>:

PCB::~PCB() {
    8000288c:	ff010113          	addi	sp,sp,-16
    80002890:	00113423          	sd	ra,8(sp)
    80002894:	00813023          	sd	s0,0(sp)
    80002898:	01010413          	addi	s0,sp,16
    kfree(beginSP);
    8000289c:	03053503          	ld	a0,48(a0)
    800028a0:	00002097          	auipc	ra,0x2
    800028a4:	8e8080e7          	jalr	-1816(ra) # 80004188 <_Z5kfreePv>
}
    800028a8:	00813083          	ld	ra,8(sp)
    800028ac:	00013403          	ld	s0,0(sp)
    800028b0:	01010113          	addi	sp,sp,16
    800028b4:	00008067          	ret

00000000800028b8 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800028b8:	fe010113          	addi	sp,sp,-32
    800028bc:	00113c23          	sd	ra,24(sp)
    800028c0:	00813823          	sd	s0,16(sp)
    800028c4:	00913423          	sd	s1,8(sp)
    800028c8:	01213023          	sd	s2,0(sp)
    800028cc:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800028d0:	05000513          	li	a0,80
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	f68080e7          	jalr	-152(ra) # 8000283c <_ZN3PCBnwEm>
    800028dc:	00050493          	mv	s1,a0
    800028e0:	00000713          	li	a4,0
    800028e4:	00000693          	li	a3,0
    800028e8:	00000613          	li	a2,0
    800028ec:	00000593          	li	a1,0
    800028f0:	00000097          	auipc	ra,0x0
    800028f4:	e14080e7          	jalr	-492(ra) # 80002704 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800028f8:	00100793          	li	a5,1
    800028fc:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    80002900:	00001097          	auipc	ra,0x1
    80002904:	89c080e7          	jalr	-1892(ra) # 8000319c <_ZN9Scheduler3getEv>
    80002908:	00009797          	auipc	a5,0x9
    8000290c:	0aa7b423          	sd	a0,168(a5) # 8000b9b0 <_ZN3PCB7runningE>
    80002910:	00100793          	li	a5,1
    80002914:	02f52c23          	sw	a5,56(a0)
    PCB::running->setState(PCB::RUNNING);
}
    80002918:	01813083          	ld	ra,24(sp)
    8000291c:	01013403          	ld	s0,16(sp)
    80002920:	00813483          	ld	s1,8(sp)
    80002924:	00013903          	ld	s2,0(sp)
    80002928:	02010113          	addi	sp,sp,32
    8000292c:	00008067          	ret
    80002930:	00050913          	mv	s2,a0
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002934:	00048513          	mv	a0,s1
    80002938:	00000097          	auipc	ra,0x0
    8000293c:	f2c080e7          	jalr	-212(ra) # 80002864 <_ZN3PCBdlEPv>
    80002940:	00090513          	mv	a0,s2
    80002944:	0000a097          	auipc	ra,0xa
    80002948:	1d4080e7          	jalr	468(ra) # 8000cb18 <_Unwind_Resume>

000000008000294c <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    8000294c:	ff010113          	addi	sp,sp,-16
    80002950:	00813423          	sd	s0,8(sp)
    80002954:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002958:	03852503          	lw	a0,56(a0)
    8000295c:	ffd50513          	addi	a0,a0,-3
}
    80002960:	00153513          	seqz	a0,a0
    80002964:	00813403          	ld	s0,8(sp)
    80002968:	01010113          	addi	sp,sp,16
    8000296c:	00008067          	ret

0000000080002970 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002970:	ff010113          	addi	sp,sp,-16
    80002974:	00813423          	sd	s0,8(sp)
    80002978:	01010413          	addi	s0,sp,16

}
    8000297c:	00813403          	ld	s0,8(sp)
    80002980:	01010113          	addi	sp,sp,16
    80002984:	00008067          	ret

0000000080002988 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002988:	fe010113          	addi	sp,sp,-32
    8000298c:	00113c23          	sd	ra,24(sp)
    80002990:	00813823          	sd	s0,16(sp)
    80002994:	02010413          	addi	s0,sp,32
    Riscv::printString("Exiting thread...\n");
    80002998:	00007517          	auipc	a0,0x7
    8000299c:	8d050513          	addi	a0,a0,-1840 # 80009268 <CONSOLE_STATUS+0x258>
    800029a0:	00001097          	auipc	ra,0x1
    800029a4:	df0080e7          	jalr	-528(ra) # 80003790 <_ZN5Riscv11printStringEPKc>

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800029a8:	100027f3          	csrr	a5,sstatus
    800029ac:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    800029b0:	fe043783          	ld	a5,-32(s0)
    volatile uint64 sstatus = Riscv::r_sstatus();
    800029b4:	fef43423          	sd	a5,-24(s0)
    PCB::timeSliceCounter = 0;
    800029b8:	00009797          	auipc	a5,0x9
    800029bc:	ff878793          	addi	a5,a5,-8 # 8000b9b0 <_ZN3PCB7runningE>
    800029c0:	0007b423          	sd	zero,8(a5)
    PCB::running->setState(PCB::EXITING);
    800029c4:	0007b783          	ld	a5,0(a5)
    800029c8:	00300713          	li	a4,3
    800029cc:	02e7ac23          	sw	a4,56(a5)
    PCB::running->setState(PCB::FINISHED);
    PCB::dispatch();
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	ddc080e7          	jalr	-548(ra) # 800027ac <_ZN3PCB8dispatchEv>
    Riscv::w_sstatus(sstatus);
    800029d8:	fe843783          	ld	a5,-24(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800029dc:	10079073          	csrw	sstatus,a5
    __asm__ volatile("li a0, 0");
    800029e0:	00000513          	li	a0,0
}
    800029e4:	01813083          	ld	ra,24(sp)
    800029e8:	01013403          	ld	s0,16(sp)
    800029ec:	02010113          	addi	sp,sp,32
    800029f0:	00008067          	ret

00000000800029f4 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    800029f4:	fe010113          	addi	sp,sp,-32
    800029f8:	00113c23          	sd	ra,24(sp)
    800029fc:	00813823          	sd	s0,16(sp)
    80002a00:	02010413          	addi	s0,sp,32
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002a04:	100027f3          	csrr	a5,sstatus
    80002a08:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    80002a0c:	fe043783          	ld	a5,-32(s0)
    volatile uint64 sstatus = Riscv::r_sstatus();
    80002a10:	fef43423          	sd	a5,-24(s0)
    PCB::timeSliceCounter = 0;
    80002a14:	00009797          	auipc	a5,0x9
    80002a18:	fa07b223          	sd	zero,-92(a5) # 8000b9b8 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002a1c:	00000097          	auipc	ra,0x0
    80002a20:	d90080e7          	jalr	-624(ra) # 800027ac <_ZN3PCB8dispatchEv>
    Riscv::w_sstatus(sstatus);
    80002a24:	fe843783          	ld	a5,-24(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002a28:	10079073          	csrw	sstatus,a5
}
    80002a2c:	01813083          	ld	ra,24(sp)
    80002a30:	01013403          	ld	s0,16(sp)
    80002a34:	02010113          	addi	sp,sp,32
    80002a38:	00008067          	ret

0000000080002a3c <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002a3c:	fe010113          	addi	sp,sp,-32
    80002a40:	00113c23          	sd	ra,24(sp)
    80002a44:	00813823          	sd	s0,16(sp)
    80002a48:	02010413          	addi	s0,sp,32
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002a4c:	00058713          	mv	a4,a1
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002a50:	100027f3          	csrr	a5,sstatus
    80002a54:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    80002a58:	fe043783          	ld	a5,-32(s0)
    volatile uint64 sstatus = Riscv::r_sstatus();
    80002a5c:	fef43423          	sd	a5,-24(s0)
    PCB::timeSliceCounter = 0;
    80002a60:	00009797          	auipc	a5,0x9
    80002a64:	f5078793          	addi	a5,a5,-176 # 8000b9b0 <_ZN3PCB7runningE>
    80002a68:	0007b423          	sd	zero,8(a5)
    PCB::running->setTimeToSleep(time);
    80002a6c:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002a70:	00e7bc23          	sd	a4,24(a5)
    SleepPCBList::insertSleepingPCB();
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	390080e7          	jalr	912(ra) # 80002e04 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002a7c:	00000097          	auipc	ra,0x0
    80002a80:	d30080e7          	jalr	-720(ra) # 800027ac <_ZN3PCB8dispatchEv>
    Riscv::w_sstatus(sstatus);
    80002a84:	fe843783          	ld	a5,-24(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002a88:	10079073          	csrw	sstatus,a5
    __asm__ volatile("li a0, 0x0");
    80002a8c:	00000513          	li	a0,0
}
    80002a90:	01813083          	ld	ra,24(sp)
    80002a94:	01013403          	ld	s0,16(sp)
    80002a98:	02010113          	addi	sp,sp,32
    80002a9c:	00008067          	ret

0000000080002aa0 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>:
KConsole::Elem* KConsole::tailOutput = 0;
KSemaphore* KConsole::hasCharactersOutput = 0;
KSemaphore* KConsole::hasCharactersInput = 0;

void KConsole::putChar(char c, Elem*& head, Elem*& tail)
{
    80002aa0:	fd010113          	addi	sp,sp,-48
    80002aa4:	02113423          	sd	ra,40(sp)
    80002aa8:	02813023          	sd	s0,32(sp)
    80002aac:	00913c23          	sd	s1,24(sp)
    80002ab0:	01213823          	sd	s2,16(sp)
    80002ab4:	01313423          	sd	s3,8(sp)
    80002ab8:	03010413          	addi	s0,sp,48
    80002abc:	00050993          	mv	s3,a0
    80002ac0:	00058913          	mv	s2,a1
    80002ac4:	00060493          	mv	s1,a2
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    80002ac8:	01000513          	li	a0,16
    80002acc:	00001097          	auipc	ra,0x1
    80002ad0:	660080e7          	jalr	1632(ra) # 8000412c <_Z7kmallocm>
    newElem->next = 0;
    80002ad4:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    80002ad8:	01350423          	sb	s3,8(a0)
    if(head == 0)
    80002adc:	00093783          	ld	a5,0(s2)
    80002ae0:	02078663          	beqz	a5,80002b0c <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x6c>
    {
        head = tail = newElem;
    }
    else
    {
        tail->next = newElem;
    80002ae4:	0004b783          	ld	a5,0(s1)
    80002ae8:	00a7b023          	sd	a0,0(a5)
        tail = newElem;
    80002aec:	00a4b023          	sd	a0,0(s1)
    }
}
    80002af0:	02813083          	ld	ra,40(sp)
    80002af4:	02013403          	ld	s0,32(sp)
    80002af8:	01813483          	ld	s1,24(sp)
    80002afc:	01013903          	ld	s2,16(sp)
    80002b00:	00813983          	ld	s3,8(sp)
    80002b04:	03010113          	addi	sp,sp,48
    80002b08:	00008067          	ret
        head = tail = newElem;
    80002b0c:	00a4b023          	sd	a0,0(s1)
    80002b10:	00a93023          	sd	a0,0(s2)
    80002b14:	fddff06f          	j	80002af0 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x50>

0000000080002b18 <_ZN8KConsole7getCharERPNS_4ElemES2_>:

char KConsole::getChar(Elem*& head, Elem*& tail)
{
    80002b18:	fe010113          	addi	sp,sp,-32
    80002b1c:	00113c23          	sd	ra,24(sp)
    80002b20:	00813823          	sd	s0,16(sp)
    80002b24:	00913423          	sd	s1,8(sp)
    80002b28:	02010413          	addi	s0,sp,32
    80002b2c:	00050793          	mv	a5,a0
    if(head == 0)
    80002b30:	00053503          	ld	a0,0(a0)
    80002b34:	02050e63          	beqz	a0,80002b70 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x58>
        return 0;

    Elem* ret = head;
    head = head->next;
    80002b38:	00053703          	ld	a4,0(a0)
    80002b3c:	00e7b023          	sd	a4,0(a5)
    if(head == 0)
    80002b40:	02070463          	beqz	a4,80002b68 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x50>
        tail = 0;

    char c = ret->data;
    80002b44:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    80002b48:	00001097          	auipc	ra,0x1
    80002b4c:	640080e7          	jalr	1600(ra) # 80004188 <_Z5kfreePv>
    return c;
}
    80002b50:	00048513          	mv	a0,s1
    80002b54:	01813083          	ld	ra,24(sp)
    80002b58:	01013403          	ld	s0,16(sp)
    80002b5c:	00813483          	ld	s1,8(sp)
    80002b60:	02010113          	addi	sp,sp,32
    80002b64:	00008067          	ret
        tail = 0;
    80002b68:	0005b023          	sd	zero,0(a1)
    80002b6c:	fd9ff06f          	j	80002b44 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x2c>
        return 0;
    80002b70:	00000493          	li	s1,0
    80002b74:	fddff06f          	j	80002b50 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x38>

0000000080002b78 <_ZN8KConsole10initializeEv>:

void KConsole::initialize()
{
    80002b78:	fe010113          	addi	sp,sp,-32
    80002b7c:	00113c23          	sd	ra,24(sp)
    80002b80:	00813823          	sd	s0,16(sp)
    80002b84:	00913423          	sd	s1,8(sp)
    80002b88:	01213023          	sd	s2,0(sp)
    80002b8c:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002b90:	01800513          	li	a0,24
    80002b94:	00002097          	auipc	ra,0x2
    80002b98:	89c080e7          	jalr	-1892(ra) # 80004430 <_ZN10KSemaphorenwEm>
    80002b9c:	00050493          	mv	s1,a0
    80002ba0:	00000593          	li	a1,0
    80002ba4:	00001097          	auipc	ra,0x1
    80002ba8:	63c080e7          	jalr	1596(ra) # 800041e0 <_ZN10KSemaphoreC1Ei>
    80002bac:	00009797          	auipc	a5,0x9
    80002bb0:	e097ba23          	sd	s1,-492(a5) # 8000b9c0 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002bb4:	01800513          	li	a0,24
    80002bb8:	00002097          	auipc	ra,0x2
    80002bbc:	878080e7          	jalr	-1928(ra) # 80004430 <_ZN10KSemaphorenwEm>
    80002bc0:	00050493          	mv	s1,a0
    80002bc4:	00000593          	li	a1,0
    80002bc8:	00001097          	auipc	ra,0x1
    80002bcc:	618080e7          	jalr	1560(ra) # 800041e0 <_ZN10KSemaphoreC1Ei>
    80002bd0:	00009797          	auipc	a5,0x9
    80002bd4:	de97bc23          	sd	s1,-520(a5) # 8000b9c8 <_ZN8KConsole19hasCharactersOutputE>
}
    80002bd8:	01813083          	ld	ra,24(sp)
    80002bdc:	01013403          	ld	s0,16(sp)
    80002be0:	00813483          	ld	s1,8(sp)
    80002be4:	00013903          	ld	s2,0(sp)
    80002be8:	02010113          	addi	sp,sp,32
    80002bec:	00008067          	ret
    80002bf0:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002bf4:	00048513          	mv	a0,s1
    80002bf8:	00002097          	auipc	ra,0x2
    80002bfc:	860080e7          	jalr	-1952(ra) # 80004458 <_ZN10KSemaphoredlEPv>
    80002c00:	00090513          	mv	a0,s2
    80002c04:	0000a097          	auipc	ra,0xa
    80002c08:	f14080e7          	jalr	-236(ra) # 8000cb18 <_Unwind_Resume>
    80002c0c:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002c10:	00048513          	mv	a0,s1
    80002c14:	00002097          	auipc	ra,0x2
    80002c18:	844080e7          	jalr	-1980(ra) # 80004458 <_ZN10KSemaphoredlEPv>
    80002c1c:	00090513          	mv	a0,s2
    80002c20:	0000a097          	auipc	ra,0xa
    80002c24:	ef8080e7          	jalr	-264(ra) # 8000cb18 <_Unwind_Resume>

0000000080002c28 <_ZN8KConsole17putCharacterInputEc>:
            break;
    }
}

void KConsole::putCharacterInput(char c)
{
    80002c28:	ff010113          	addi	sp,sp,-16
    80002c2c:	00113423          	sd	ra,8(sp)
    80002c30:	00813023          	sd	s0,0(sp)
    80002c34:	01010413          	addi	s0,sp,16
    putChar(c, headInput, tailInput);
    80002c38:	00009617          	auipc	a2,0x9
    80002c3c:	d9860613          	addi	a2,a2,-616 # 8000b9d0 <_ZN8KConsole9tailInputE>
    80002c40:	00009597          	auipc	a1,0x9
    80002c44:	d9858593          	addi	a1,a1,-616 # 8000b9d8 <_ZN8KConsole9headInputE>
    80002c48:	00000097          	auipc	ra,0x0
    80002c4c:	e58080e7          	jalr	-424(ra) # 80002aa0 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersInput->signal();
    80002c50:	00009517          	auipc	a0,0x9
    80002c54:	d7053503          	ld	a0,-656(a0) # 8000b9c0 <_ZN8KConsole18hasCharactersInputE>
    80002c58:	00001097          	auipc	ra,0x1
    80002c5c:	790080e7          	jalr	1936(ra) # 800043e8 <_ZN10KSemaphore6signalEv>
}
    80002c60:	00813083          	ld	ra,8(sp)
    80002c64:	00013403          	ld	s0,0(sp)
    80002c68:	01010113          	addi	sp,sp,16
    80002c6c:	00008067          	ret

0000000080002c70 <_ZN8KConsole24getCharactersFromConsoleEv>:
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002c70:	00006517          	auipc	a0,0x6
    80002c74:	3a053503          	ld	a0,928(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002c78:	00050793          	mv	a5,a0
        if(operation & STATUS_READ_MASK)
    80002c7c:	0017f793          	andi	a5,a5,1
    80002c80:	04078863          	beqz	a5,80002cd0 <_ZN8KConsole24getCharactersFromConsoleEv+0x60>
{
    80002c84:	ff010113          	addi	sp,sp,-16
    80002c88:	00113423          	sd	ra,8(sp)
    80002c8c:	00813023          	sd	s0,0(sp)
    80002c90:	01010413          	addi	s0,sp,16
            __asm__ volatile("ld a0, CONSOLE_TX_DATA");
    80002c94:	00006517          	auipc	a0,0x6
    80002c98:	37453503          	ld	a0,884(a0) # 80009008 <CONSOLE_TX_DATA>
            __asm__ volatile("mv %0, a0" :  "=r"(data));
    80002c9c:	00050513          	mv	a0,a0
            putCharacterInput((char)data);
    80002ca0:	0ff57513          	andi	a0,a0,255
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	f84080e7          	jalr	-124(ra) # 80002c28 <_ZN8KConsole17putCharacterInputEc>
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002cac:	00006517          	auipc	a0,0x6
    80002cb0:	36453503          	ld	a0,868(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002cb4:	00050793          	mv	a5,a0
        if(operation & STATUS_READ_MASK)
    80002cb8:	0017f793          	andi	a5,a5,1
    80002cbc:	fc079ce3          	bnez	a5,80002c94 <_ZN8KConsole24getCharactersFromConsoleEv+0x24>
}
    80002cc0:	00813083          	ld	ra,8(sp)
    80002cc4:	00013403          	ld	s0,0(sp)
    80002cc8:	01010113          	addi	sp,sp,16
    80002ccc:	00008067          	ret
    80002cd0:	00008067          	ret

0000000080002cd4 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002cd4:	ff010113          	addi	sp,sp,-16
    80002cd8:	00113423          	sd	ra,8(sp)
    80002cdc:	00813023          	sd	s0,0(sp)
    80002ce0:	01010413          	addi	s0,sp,16
    hasCharactersInput->wait();
    80002ce4:	00009517          	auipc	a0,0x9
    80002ce8:	cdc53503          	ld	a0,-804(a0) # 8000b9c0 <_ZN8KConsole18hasCharactersInputE>
    80002cec:	00001097          	auipc	ra,0x1
    80002cf0:	59c080e7          	jalr	1436(ra) # 80004288 <_ZN10KSemaphore4waitEv>
    return getChar(headInput, tailInput);
    80002cf4:	00009597          	auipc	a1,0x9
    80002cf8:	cdc58593          	addi	a1,a1,-804 # 8000b9d0 <_ZN8KConsole9tailInputE>
    80002cfc:	00009517          	auipc	a0,0x9
    80002d00:	cdc50513          	addi	a0,a0,-804 # 8000b9d8 <_ZN8KConsole9headInputE>
    80002d04:	00000097          	auipc	ra,0x0
    80002d08:	e14080e7          	jalr	-492(ra) # 80002b18 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002d0c:	00813083          	ld	ra,8(sp)
    80002d10:	00013403          	ld	s0,0(sp)
    80002d14:	01010113          	addi	sp,sp,16
    80002d18:	00008067          	ret

0000000080002d1c <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    80002d1c:	ff010113          	addi	sp,sp,-16
    80002d20:	00113423          	sd	ra,8(sp)
    80002d24:	00813023          	sd	s0,0(sp)
    80002d28:	01010413          	addi	s0,sp,16
    putChar(c, headOutput, tailOutput);
    80002d2c:	00009617          	auipc	a2,0x9
    80002d30:	cb460613          	addi	a2,a2,-844 # 8000b9e0 <_ZN8KConsole10tailOutputE>
    80002d34:	00009597          	auipc	a1,0x9
    80002d38:	cb458593          	addi	a1,a1,-844 # 8000b9e8 <_ZN8KConsole10headOutputE>
    80002d3c:	00000097          	auipc	ra,0x0
    80002d40:	d64080e7          	jalr	-668(ra) # 80002aa0 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersOutput->signal();
    80002d44:	00009517          	auipc	a0,0x9
    80002d48:	c8453503          	ld	a0,-892(a0) # 8000b9c8 <_ZN8KConsole19hasCharactersOutputE>
    80002d4c:	00001097          	auipc	ra,0x1
    80002d50:	69c080e7          	jalr	1692(ra) # 800043e8 <_ZN10KSemaphore6signalEv>
}
    80002d54:	00813083          	ld	ra,8(sp)
    80002d58:	00013403          	ld	s0,0(sp)
    80002d5c:	01010113          	addi	sp,sp,16
    80002d60:	00008067          	ret

0000000080002d64 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002d64:	ff010113          	addi	sp,sp,-16
    80002d68:	00113423          	sd	ra,8(sp)
    80002d6c:	00813023          	sd	s0,0(sp)
    80002d70:	01010413          	addi	s0,sp,16
    hasCharactersOutput->wait();
    80002d74:	00009517          	auipc	a0,0x9
    80002d78:	c5453503          	ld	a0,-940(a0) # 8000b9c8 <_ZN8KConsole19hasCharactersOutputE>
    80002d7c:	00001097          	auipc	ra,0x1
    80002d80:	50c080e7          	jalr	1292(ra) # 80004288 <_ZN10KSemaphore4waitEv>
    return getChar(headOutput, tailOutput);
    80002d84:	00009597          	auipc	a1,0x9
    80002d88:	c5c58593          	addi	a1,a1,-932 # 8000b9e0 <_ZN8KConsole10tailOutputE>
    80002d8c:	00009517          	auipc	a0,0x9
    80002d90:	c5c50513          	addi	a0,a0,-932 # 8000b9e8 <_ZN8KConsole10headOutputE>
    80002d94:	00000097          	auipc	ra,0x0
    80002d98:	d84080e7          	jalr	-636(ra) # 80002b18 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002d9c:	00813083          	ld	ra,8(sp)
    80002da0:	00013403          	ld	s0,0(sp)
    80002da4:	01010113          	addi	sp,sp,16
    80002da8:	00008067          	ret

0000000080002dac <_ZN8KConsole23sendCharactersToConsoleEv>:
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002dac:	00006517          	auipc	a0,0x6
    80002db0:	26453503          	ld	a0,612(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002db4:	00050793          	mv	a5,a0
        if(operation & STATUS_WRITE_MASK)
    80002db8:	0207f793          	andi	a5,a5,32
    80002dbc:	04078263          	beqz	a5,80002e00 <_ZN8KConsole23sendCharactersToConsoleEv+0x54>
{
    80002dc0:	ff010113          	addi	sp,sp,-16
    80002dc4:	00113423          	sd	ra,8(sp)
    80002dc8:	00813023          	sd	s0,0(sp)
    80002dcc:	01010413          	addi	s0,sp,16
            char c = getCharacterOutput();
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	f94080e7          	jalr	-108(ra) # 80002d64 <_ZN8KConsole18getCharacterOutputEv>
            __asm__ volatile("mv a0, %0" :  :"r"((uint64)c));
    80002dd8:	00050513          	mv	a0,a0
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002ddc:	00006517          	auipc	a0,0x6
    80002de0:	23453503          	ld	a0,564(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002de4:	00050793          	mv	a5,a0
        if(operation & STATUS_WRITE_MASK)
    80002de8:	0207f793          	andi	a5,a5,32
    80002dec:	fe0792e3          	bnez	a5,80002dd0 <_ZN8KConsole23sendCharactersToConsoleEv+0x24>
}
    80002df0:	00813083          	ld	ra,8(sp)
    80002df4:	00013403          	ld	s0,0(sp)
    80002df8:	01010113          	addi	sp,sp,16
    80002dfc:	00008067          	ret
    80002e00:	00008067          	ret

0000000080002e04 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80002e04:	ff010113          	addi	sp,sp,-16
    80002e08:	00813423          	sd	s0,8(sp)
    80002e0c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80002e10:	00009797          	auipc	a5,0x9
    80002e14:	b187b783          	ld	a5,-1256(a5) # 8000b928 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002e18:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80002e1c:	00500793          	li	a5,5
    80002e20:	02f62c23          	sw	a5,56(a2)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80002e24:	00009797          	auipc	a5,0x9
    80002e28:	bcc7b783          	ld	a5,-1076(a5) # 8000b9f0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80002e2c:	00000593          	li	a1,0
    while(curr != 0)
    80002e30:	02078063          	beqz	a5,80002e50 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002e34:	01863683          	ld	a3,24(a2)
    80002e38:	0187b703          	ld	a4,24(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80002e3c:	00e6e863          	bltu	a3,a4,80002e4c <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80002e40:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80002e44:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002e48:	fe9ff06f          	j	80002e30 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80002e4c:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80002e50:	02058263          	beqz	a1,80002e74 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    80002e54:	01863783          	ld	a5,24(a2)
    80002e58:	0185b703          	ld	a4,24(a1)
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    80002e5c:	40e787b3          	sub	a5,a5,a4
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002e60:	00f63c23          	sd	a5,24(a2)
        prev->nextPCB = PCB::running;
    80002e64:	00c5b423          	sd	a2,8(a1)
    }
}
    80002e68:	00813403          	ld	s0,8(sp)
    80002e6c:	01010113          	addi	sp,sp,16
    80002e70:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80002e74:	00009797          	auipc	a5,0x9
    80002e78:	b6c7be23          	sd	a2,-1156(a5) # 8000b9f0 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    80002e7c:	00863783          	ld	a5,8(a2)
    80002e80:	fe0784e3          	beqz	a5,80002e68 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002e84:	0187b703          	ld	a4,24(a5)
    80002e88:	01863683          	ld	a3,24(a2)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    80002e8c:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002e90:	00e7bc23          	sd	a4,24(a5)
    80002e94:	fd5ff06f          	j	80002e68 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>

0000000080002e98 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    80002e98:	00009517          	auipc	a0,0x9
    80002e9c:	b5853503          	ld	a0,-1192(a0) # 8000b9f0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002ea0:	08050863          	beqz	a0,80002f30 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002ea4:	01853783          	ld	a5,24(a0)
    {
        //Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    80002ea8:	00100713          	li	a4,1
    80002eac:	00e78863          	beq	a5,a4,80002ebc <_ZN12SleepPCBList13tryToWakePCBsEv+0x24>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    80002eb0:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002eb4:	00f53c23          	sd	a5,24(a0)
    80002eb8:	00008067          	ret
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002ebc:	06050a63          	beqz	a0,80002f30 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    80002ec0:	00009797          	auipc	a5,0x9
    80002ec4:	b307b783          	ld	a5,-1232(a5) # 8000b9f0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002ec8:	00a78663          	beq	a5,a0,80002ed4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002ecc:	01853783          	ld	a5,24(a0)
    80002ed0:	06079063          	bnez	a5,80002f30 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
{
    80002ed4:	fe010113          	addi	sp,sp,-32
    80002ed8:	00113c23          	sd	ra,24(sp)
    80002edc:	00813823          	sd	s0,16(sp)
    80002ee0:	00913423          	sd	s1,8(sp)
    80002ee4:	02010413          	addi	s0,sp,32
            curr = curr->nextPCB;
    80002ee8:	00853483          	ld	s1,8(a0)
            old->nextPCB = 0;
    80002eec:	00053423          	sd	zero,8(a0)
            Scheduler::put(old);
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	258080e7          	jalr	600(ra) # 80003148 <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    80002ef8:	00009797          	auipc	a5,0x9
    80002efc:	ae97bc23          	sd	s1,-1288(a5) # 8000b9f0 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80002f00:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002f04:	00048c63          	beqz	s1,80002f1c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80002f08:	00009797          	auipc	a5,0x9
    80002f0c:	ae87b783          	ld	a5,-1304(a5) # 8000b9f0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002f10:	fc978ce3          	beq	a5,s1,80002ee8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80002f14:	0184b783          	ld	a5,24(s1)
    80002f18:	fc0788e3          	beqz	a5,80002ee8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    }
}
    80002f1c:	01813083          	ld	ra,24(sp)
    80002f20:	01013403          	ld	s0,16(sp)
    80002f24:	00813483          	ld	s1,8(sp)
    80002f28:	02010113          	addi	sp,sp,32
    80002f2c:	00008067          	ret
    80002f30:	00008067          	ret

0000000080002f34 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80002f34:	fe010113          	addi	sp,sp,-32
    80002f38:	00113c23          	sd	ra,24(sp)
    80002f3c:	00813823          	sd	s0,16(sp)
    80002f40:	00913423          	sd	s1,8(sp)
    80002f44:	01213023          	sd	s2,0(sp)
    80002f48:	02010413          	addi	s0,sp,32
    80002f4c:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80002f50:	00053503          	ld	a0,0(a0)
    80002f54:	00853903          	ld	s2,8(a0)
    kfree(first);
    80002f58:	00001097          	auipc	ra,0x1
    80002f5c:	230080e7          	jalr	560(ra) # 80004188 <_Z5kfreePv>
    first = newFirst;
    80002f60:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80002f64:	00090e63          	beqz	s2,80002f80 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80002f68:	01813083          	ld	ra,24(sp)
    80002f6c:	01013403          	ld	s0,16(sp)
    80002f70:	00813483          	ld	s1,8(sp)
    80002f74:	00013903          	ld	s2,0(sp)
    80002f78:	02010113          	addi	sp,sp,32
    80002f7c:	00008067          	ret
        first = last = 0;
    80002f80:	0004b423          	sd	zero,8(s1)
    80002f84:	0004b023          	sd	zero,0(s1)
}
    80002f88:	fe1ff06f          	j	80002f68 <_ZN5Queue3popEv+0x34>

0000000080002f8c <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    80002f8c:	fe010113          	addi	sp,sp,-32
    80002f90:	00113c23          	sd	ra,24(sp)
    80002f94:	00813823          	sd	s0,16(sp)
    80002f98:	00913423          	sd	s1,8(sp)
    80002f9c:	01213023          	sd	s2,0(sp)
    80002fa0:	02010413          	addi	s0,sp,32
    80002fa4:	00050493          	mv	s1,a0
    80002fa8:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80002fac:	01000513          	li	a0,16
    80002fb0:	00001097          	auipc	ra,0x1
    80002fb4:	17c080e7          	jalr	380(ra) # 8000412c <_Z7kmallocm>
    newElem->data = t;
    80002fb8:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80002fbc:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80002fc0:	0004b783          	ld	a5,0(s1)
    80002fc4:	02078463          	beqz	a5,80002fec <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80002fc8:	0084b783          	ld	a5,8(s1)
    80002fcc:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80002fd0:	00a4b423          	sd	a0,8(s1)
    }
}
    80002fd4:	01813083          	ld	ra,24(sp)
    80002fd8:	01013403          	ld	s0,16(sp)
    80002fdc:	00813483          	ld	s1,8(sp)
    80002fe0:	00013903          	ld	s2,0(sp)
    80002fe4:	02010113          	addi	sp,sp,32
    80002fe8:	00008067          	ret
        first = newElem;
    80002fec:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    80002ff0:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80002ff4:	00053423          	sd	zero,8(a0)
    80002ff8:	0004b783          	ld	a5,0(s1)
    80002ffc:	0007b423          	sd	zero,8(a5)
    80003000:	fd5ff06f          	j	80002fd4 <_ZN5Queue4pushEP3PCB+0x48>

0000000080003004 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    80003004:	ff010113          	addi	sp,sp,-16
    80003008:	00813423          	sd	s0,8(sp)
    8000300c:	01010413          	addi	s0,sp,16
    if(first == 0)
    80003010:	00053503          	ld	a0,0(a0)
    80003014:	00050463          	beqz	a0,8000301c <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80003018:	00053503          	ld	a0,0(a0)
}
    8000301c:	00813403          	ld	s0,8(sp)
    80003020:	01010113          	addi	sp,sp,16
    80003024:	00008067          	ret

0000000080003028 <_ZN5QueueC1Ev>:

Queue::Queue() {
    80003028:	ff010113          	addi	sp,sp,-16
    8000302c:	00813423          	sd	s0,8(sp)
    80003030:	01010413          	addi	s0,sp,16
    first = last = 0;
    80003034:	00053423          	sd	zero,8(a0)
    80003038:	00053023          	sd	zero,0(a0)
}
    8000303c:	00813403          	ld	s0,8(sp)
    80003040:	01010113          	addi	sp,sp,16
    80003044:	00008067          	ret

0000000080003048 <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    80003048:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    8000304c:	04050063          	beqz	a0,8000308c <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    80003050:	fe010113          	addi	sp,sp,-32
    80003054:	00113c23          	sd	ra,24(sp)
    80003058:	00813823          	sd	s0,16(sp)
    8000305c:	00913423          	sd	s1,8(sp)
    80003060:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    80003064:	00853483          	ld	s1,8(a0)
        kfree(old);
    80003068:	00001097          	auipc	ra,0x1
    8000306c:	120080e7          	jalr	288(ra) # 80004188 <_Z5kfreePv>
        curr = curr->next;
    80003070:	00048513          	mv	a0,s1
    while(curr != 0)
    80003074:	fe0498e3          	bnez	s1,80003064 <_ZN5QueueD1Ev+0x1c>
    }
}
    80003078:	01813083          	ld	ra,24(sp)
    8000307c:	01013403          	ld	s0,16(sp)
    80003080:	00813483          	ld	s1,8(sp)
    80003084:	02010113          	addi	sp,sp,32
    80003088:	00008067          	ret
    8000308c:	00008067          	ret

0000000080003090 <_ZN5Queue4sizeEv>:

int Queue::size() {
    80003090:	ff010113          	addi	sp,sp,-16
    80003094:	00813423          	sd	s0,8(sp)
    80003098:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    8000309c:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    800030a0:	00000513          	li	a0,0
    while(curr != 0)
    800030a4:	00078863          	beqz	a5,800030b4 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    800030a8:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    800030ac:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800030b0:	ff5ff06f          	j	800030a4 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    800030b4:	00813403          	ld	s0,8(sp)
    800030b8:	01010113          	addi	sp,sp,16
    800030bc:	00008067          	ret

00000000800030c0 <_ZN9SchedulernwEm>:
PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;


void *Scheduler::operator new(size_t size)
{
    800030c0:	ff010113          	addi	sp,sp,-16
    800030c4:	00113423          	sd	ra,8(sp)
    800030c8:	00813023          	sd	s0,0(sp)
    800030cc:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800030d0:	00001097          	auipc	ra,0x1
    800030d4:	05c080e7          	jalr	92(ra) # 8000412c <_Z7kmallocm>
}
    800030d8:	00813083          	ld	ra,8(sp)
    800030dc:	00013403          	ld	s0,0(sp)
    800030e0:	01010113          	addi	sp,sp,16
    800030e4:	00008067          	ret

00000000800030e8 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800030e8:	ff010113          	addi	sp,sp,-16
    800030ec:	00113423          	sd	ra,8(sp)
    800030f0:	00813023          	sd	s0,0(sp)
    800030f4:	01010413          	addi	s0,sp,16
    kfree(p);
    800030f8:	00001097          	auipc	ra,0x1
    800030fc:	090080e7          	jalr	144(ra) # 80004188 <_Z5kfreePv>
}
    80003100:	00813083          	ld	ra,8(sp)
    80003104:	00013403          	ld	s0,0(sp)
    80003108:	01010113          	addi	sp,sp,16
    8000310c:	00008067          	ret

0000000080003110 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003110:	ff010113          	addi	sp,sp,-16
    80003114:	00813423          	sd	s0,8(sp)
    80003118:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    8000311c:	00009797          	auipc	a5,0x9
    80003120:	8dc7b783          	ld	a5,-1828(a5) # 8000b9f8 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003124:	00000513          	li	a0,0
    while(curr != 0)
    80003128:	00078863          	beqz	a5,80003138 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    8000312c:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003130:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003134:	ff5ff06f          	j	80003128 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003138:	0005051b          	sext.w	a0,a0
    8000313c:	00813403          	ld	s0,8(sp)
    80003140:	01010113          	addi	sp,sp,16
    80003144:	00008067          	ret

0000000080003148 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003148:	ff010113          	addi	sp,sp,-16
    8000314c:	00813423          	sd	s0,8(sp)
    80003150:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003154:	02052c23          	sw	zero,56(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003158:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    8000315c:	00009797          	auipc	a5,0x9
    80003160:	89c7b783          	ld	a5,-1892(a5) # 8000b9f8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003164:	02078263          	beqz	a5,80003188 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003168:	00009797          	auipc	a5,0x9
    8000316c:	89078793          	addi	a5,a5,-1904 # 8000b9f8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003170:	0087b703          	ld	a4,8(a5)
    80003174:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003178:	00a7b423          	sd	a0,8(a5)
    }
}
    8000317c:	00813403          	ld	s0,8(sp)
    80003180:	01010113          	addi	sp,sp,16
    80003184:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003188:	00009797          	auipc	a5,0x9
    8000318c:	87078793          	addi	a5,a5,-1936 # 8000b9f8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003190:	00a7b423          	sd	a0,8(a5)
    80003194:	00a7b023          	sd	a0,0(a5)
    80003198:	fe5ff06f          	j	8000317c <_ZN9Scheduler3putEP3PCB+0x34>

000000008000319c <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    8000319c:	ff010113          	addi	sp,sp,-16
    800031a0:	00813423          	sd	s0,8(sp)
    800031a4:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800031a8:	00009517          	auipc	a0,0x9
    800031ac:	85053503          	ld	a0,-1968(a0) # 8000b9f8 <_ZN9Scheduler16schedulerPCBHeadE>
    800031b0:	00050c63          	beqz	a0,800031c8 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    800031b4:	00853783          	ld	a5,8(a0)
    800031b8:	00078e63          	beqz	a5,800031d4 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    800031bc:	00009717          	auipc	a4,0x9
    800031c0:	82f73e23          	sd	a5,-1988(a4) # 8000b9f8 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    800031c4:	00053423          	sd	zero,8(a0)
    return retval;
}
    800031c8:	00813403          	ld	s0,8(sp)
    800031cc:	01010113          	addi	sp,sp,16
    800031d0:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    800031d4:	00009797          	auipc	a5,0x9
    800031d8:	82478793          	addi	a5,a5,-2012 # 8000b9f8 <_ZN9Scheduler16schedulerPCBHeadE>
    800031dc:	0007b423          	sd	zero,8(a5)
    800031e0:	0007b023          	sd	zero,0(a5)
    800031e4:	fe1ff06f          	j	800031c4 <_ZN9Scheduler3getEv+0x28>

00000000800031e8 <_ZN9Scheduler5printEv>:

void Scheduler::print() {
    800031e8:	fe010113          	addi	sp,sp,-32
    800031ec:	00113c23          	sd	ra,24(sp)
    800031f0:	00813823          	sd	s0,16(sp)
    800031f4:	00913423          	sd	s1,8(sp)
    800031f8:	02010413          	addi	s0,sp,32
    Riscv::printString("Scheduler print\n");
    800031fc:	00006517          	auipc	a0,0x6
    80003200:	08450513          	addi	a0,a0,132 # 80009280 <CONSOLE_STATUS+0x270>
    80003204:	00000097          	auipc	ra,0x0
    80003208:	58c080e7          	jalr	1420(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    PCB* curr = schedulerPCBHead;
    8000320c:	00008497          	auipc	s1,0x8
    80003210:	7ec4b483          	ld	s1,2028(s1) # 8000b9f8 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003214:	00048c63          	beqz	s1,8000322c <_ZN9Scheduler5printEv+0x44>
    {
        Riscv::printInteger((uint64)curr);
    80003218:	00048513          	mv	a0,s1
    8000321c:	00000097          	auipc	ra,0x0
    80003220:	5e4080e7          	jalr	1508(ra) # 80003800 <_ZN5Riscv12printIntegerEm>
        curr = curr->nextPCB;
    80003224:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003228:	fedff06f          	j	80003214 <_ZN9Scheduler5printEv+0x2c>
    }
}
    8000322c:	01813083          	ld	ra,24(sp)
    80003230:	01013403          	ld	s0,16(sp)
    80003234:	00813483          	ld	s1,8(sp)
    80003238:	02010113          	addi	sp,sp,32
    8000323c:	00008067          	ret

0000000080003240 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80003240:	ff010113          	addi	sp,sp,-16
    80003244:	00113423          	sd	ra,8(sp)
    80003248:	00813023          	sd	s0,0(sp)
    8000324c:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003250:	00001097          	auipc	ra,0x1
    80003254:	a58080e7          	jalr	-1448(ra) # 80003ca8 <_ZN5Riscv10kernelMainEv>
    80003258:	00813083          	ld	ra,8(sp)
    8000325c:	00013403          	ld	s0,0(sp)
    80003260:	01010113          	addi	sp,sp,16
    80003264:	00008067          	ret

0000000080003268 <_ZN6ThreadD1Ev>:
    Riscv::printString("Thread runner started...\n");
    Thread* thr = (Thread*)t;
    thr->run();
}

Thread::~Thread() {
    80003268:	ff010113          	addi	sp,sp,-16
    8000326c:	00113423          	sd	ra,8(sp)
    80003270:	00813023          	sd	s0,0(sp)
    80003274:	01010413          	addi	s0,sp,16
    80003278:	00008797          	auipc	a5,0x8
    8000327c:	5b078793          	addi	a5,a5,1456 # 8000b828 <_ZTV6Thread+0x10>
    80003280:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80003284:	00853503          	ld	a0,8(a0)
    80003288:	ffffe097          	auipc	ra,0xffffe
    8000328c:	ff0080e7          	jalr	-16(ra) # 80001278 <mem_free>
}
    80003290:	00813083          	ld	ra,8(sp)
    80003294:	00013403          	ld	s0,0(sp)
    80003298:	01010113          	addi	sp,sp,16
    8000329c:	00008067          	ret

00000000800032a0 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal((void*)myHandle);
}

Semaphore::~Semaphore() {
    800032a0:	ff010113          	addi	sp,sp,-16
    800032a4:	00113423          	sd	ra,8(sp)
    800032a8:	00813023          	sd	s0,0(sp)
    800032ac:	01010413          	addi	s0,sp,16
    800032b0:	00008797          	auipc	a5,0x8
    800032b4:	5a078793          	addi	a5,a5,1440 # 8000b850 <_ZTV9Semaphore+0x10>
    800032b8:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    800032bc:	00853503          	ld	a0,8(a0)
    800032c0:	ffffe097          	auipc	ra,0xffffe
    800032c4:	fb8080e7          	jalr	-72(ra) # 80001278 <mem_free>
}
    800032c8:	00813083          	ld	ra,8(sp)
    800032cc:	00013403          	ld	s0,0(sp)
    800032d0:	01010113          	addi	sp,sp,16
    800032d4:	00008067          	ret

00000000800032d8 <_ZN6Thread6runnerEPv>:
void Thread::runner(void *t) {
    800032d8:	fe010113          	addi	sp,sp,-32
    800032dc:	00113c23          	sd	ra,24(sp)
    800032e0:	00813823          	sd	s0,16(sp)
    800032e4:	00913423          	sd	s1,8(sp)
    800032e8:	02010413          	addi	s0,sp,32
    800032ec:	00050493          	mv	s1,a0
    Riscv::printString("Thread runner started...\n");
    800032f0:	00006517          	auipc	a0,0x6
    800032f4:	fa850513          	addi	a0,a0,-88 # 80009298 <CONSOLE_STATUS+0x288>
    800032f8:	00000097          	auipc	ra,0x0
    800032fc:	498080e7          	jalr	1176(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    thr->run();
    80003300:	0004b783          	ld	a5,0(s1)
    80003304:	0107b783          	ld	a5,16(a5)
    80003308:	00048513          	mv	a0,s1
    8000330c:	000780e7          	jalr	a5
}
    80003310:	01813083          	ld	ra,24(sp)
    80003314:	01013403          	ld	s0,16(sp)
    80003318:	00813483          	ld	s1,8(sp)
    8000331c:	02010113          	addi	sp,sp,32
    80003320:	00008067          	ret

0000000080003324 <_Znwm>:
{
    80003324:	ff010113          	addi	sp,sp,-16
    80003328:	00113423          	sd	ra,8(sp)
    8000332c:	00813023          	sd	s0,0(sp)
    80003330:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003334:	ffffe097          	auipc	ra,0xffffe
    80003338:	f14080e7          	jalr	-236(ra) # 80001248 <mem_alloc>
}
    8000333c:	00813083          	ld	ra,8(sp)
    80003340:	00013403          	ld	s0,0(sp)
    80003344:	01010113          	addi	sp,sp,16
    80003348:	00008067          	ret

000000008000334c <_ZdlPv>:
{
    8000334c:	ff010113          	addi	sp,sp,-16
    80003350:	00113423          	sd	ra,8(sp)
    80003354:	00813023          	sd	s0,0(sp)
    80003358:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000335c:	ffffe097          	auipc	ra,0xffffe
    80003360:	f1c080e7          	jalr	-228(ra) # 80001278 <mem_free>
}
    80003364:	00813083          	ld	ra,8(sp)
    80003368:	00013403          	ld	s0,0(sp)
    8000336c:	01010113          	addi	sp,sp,16
    80003370:	00008067          	ret

0000000080003374 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80003374:	fe010113          	addi	sp,sp,-32
    80003378:	00113c23          	sd	ra,24(sp)
    8000337c:	00813823          	sd	s0,16(sp)
    80003380:	00913423          	sd	s1,8(sp)
    80003384:	02010413          	addi	s0,sp,32
    80003388:	00050493          	mv	s1,a0
}
    8000338c:	00000097          	auipc	ra,0x0
    80003390:	edc080e7          	jalr	-292(ra) # 80003268 <_ZN6ThreadD1Ev>
    80003394:	00048513          	mv	a0,s1
    80003398:	00000097          	auipc	ra,0x0
    8000339c:	fb4080e7          	jalr	-76(ra) # 8000334c <_ZdlPv>
    800033a0:	01813083          	ld	ra,24(sp)
    800033a4:	01013403          	ld	s0,16(sp)
    800033a8:	00813483          	ld	s1,8(sp)
    800033ac:	02010113          	addi	sp,sp,32
    800033b0:	00008067          	ret

00000000800033b4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800033b4:	fe010113          	addi	sp,sp,-32
    800033b8:	00113c23          	sd	ra,24(sp)
    800033bc:	00813823          	sd	s0,16(sp)
    800033c0:	00913423          	sd	s1,8(sp)
    800033c4:	02010413          	addi	s0,sp,32
    800033c8:	00050493          	mv	s1,a0
}
    800033cc:	00000097          	auipc	ra,0x0
    800033d0:	ed4080e7          	jalr	-300(ra) # 800032a0 <_ZN9SemaphoreD1Ev>
    800033d4:	00048513          	mv	a0,s1
    800033d8:	00000097          	auipc	ra,0x0
    800033dc:	f74080e7          	jalr	-140(ra) # 8000334c <_ZdlPv>
    800033e0:	01813083          	ld	ra,24(sp)
    800033e4:	01013403          	ld	s0,16(sp)
    800033e8:	00813483          	ld	s1,8(sp)
    800033ec:	02010113          	addi	sp,sp,32
    800033f0:	00008067          	ret

00000000800033f4 <_ZN6Thread5startEv>:
    if(myHandle == 0)
    800033f4:	00853783          	ld	a5,8(a0)
    800033f8:	02079c63          	bnez	a5,80003430 <_ZN6Thread5startEv+0x3c>
{
    800033fc:	ff010113          	addi	sp,sp,-16
    80003400:	00113423          	sd	ra,8(sp)
    80003404:	00813023          	sd	s0,0(sp)
    80003408:	01010413          	addi	s0,sp,16
        return thread_create((void**)&myHandle, f, args);
    8000340c:	01853603          	ld	a2,24(a0)
    80003410:	01053583          	ld	a1,16(a0)
    80003414:	00850513          	addi	a0,a0,8
    80003418:	ffffe097          	auipc	ra,0xffffe
    8000341c:	e8c080e7          	jalr	-372(ra) # 800012a4 <thread_create>
}
    80003420:	00813083          	ld	ra,8(sp)
    80003424:	00013403          	ld	s0,0(sp)
    80003428:	01010113          	addi	sp,sp,16
    8000342c:	00008067          	ret
        return -1;
    80003430:	fff00513          	li	a0,-1
}
    80003434:	00008067          	ret

0000000080003438 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003438:	ff010113          	addi	sp,sp,-16
    8000343c:	00113423          	sd	ra,8(sp)
    80003440:	00813023          	sd	s0,0(sp)
    80003444:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003448:	ffffe097          	auipc	ra,0xffffe
    8000344c:	edc080e7          	jalr	-292(ra) # 80001324 <thread_dispatch>
}
    80003450:	00813083          	ld	ra,8(sp)
    80003454:	00013403          	ld	s0,0(sp)
    80003458:	01010113          	addi	sp,sp,16
    8000345c:	00008067          	ret

0000000080003460 <_ZN6Thread5sleepEm>:
void Thread::sleep(time_t time) {
    80003460:	ff010113          	addi	sp,sp,-16
    80003464:	00113423          	sd	ra,8(sp)
    80003468:	00813023          	sd	s0,0(sp)
    8000346c:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003470:	ffffe097          	auipc	ra,0xffffe
    80003474:	fb8080e7          	jalr	-72(ra) # 80001428 <time_sleep>
}
    80003478:	00813083          	ld	ra,8(sp)
    8000347c:	00013403          	ld	s0,0(sp)
    80003480:	01010113          	addi	sp,sp,16
    80003484:	00008067          	ret

0000000080003488 <_ZN14PeriodicThread6runnerEPv>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    this->time = period;
}

void PeriodicThread::runner(void* pt)
{
    80003488:	fe010113          	addi	sp,sp,-32
    8000348c:	00113c23          	sd	ra,24(sp)
    80003490:	00813823          	sd	s0,16(sp)
    80003494:	00913423          	sd	s1,8(sp)
    80003498:	02010413          	addi	s0,sp,32
    8000349c:	00050493          	mv	s1,a0
    PeriodicThread* pThread = (PeriodicThread*)pt;
    while(true)
    {
        pThread->periodicActivation();
    800034a0:	0004b783          	ld	a5,0(s1)
    800034a4:	0187b783          	ld	a5,24(a5)
    800034a8:	00048513          	mv	a0,s1
    800034ac:	000780e7          	jalr	a5
        Thread::sleep(pThread->time);
    800034b0:	0204b503          	ld	a0,32(s1)
    800034b4:	00000097          	auipc	ra,0x0
    800034b8:	fac080e7          	jalr	-84(ra) # 80003460 <_ZN6Thread5sleepEm>
    while(true)
    800034bc:	fe5ff06f          	j	800034a0 <_ZN14PeriodicThread6runnerEPv+0x18>

00000000800034c0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args) {
    800034c0:	ff010113          	addi	sp,sp,-16
    800034c4:	00813423          	sd	s0,8(sp)
    800034c8:	01010413          	addi	s0,sp,16
    800034cc:	00008797          	auipc	a5,0x8
    800034d0:	35c78793          	addi	a5,a5,860 # 8000b828 <_ZTV6Thread+0x10>
    800034d4:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    800034d8:	00053423          	sd	zero,8(a0)
    f = body;
    800034dc:	00b53823          	sd	a1,16(a0)
    this->args = args;
    800034e0:	00c53c23          	sd	a2,24(a0)
}
    800034e4:	00813403          	ld	s0,8(sp)
    800034e8:	01010113          	addi	sp,sp,16
    800034ec:	00008067          	ret

00000000800034f0 <_ZN6ThreadC1Ev>:
Thread::Thread()
    800034f0:	ff010113          	addi	sp,sp,-16
    800034f4:	00813423          	sd	s0,8(sp)
    800034f8:	01010413          	addi	s0,sp,16
    800034fc:	00008797          	auipc	a5,0x8
    80003500:	32c78793          	addi	a5,a5,812 # 8000b828 <_ZTV6Thread+0x10>
    80003504:	00f53023          	sd	a5,0(a0)
    f = &Thread::runner;
    80003508:	00000797          	auipc	a5,0x0
    8000350c:	dd078793          	addi	a5,a5,-560 # 800032d8 <_ZN6Thread6runnerEPv>
    80003510:	00f53823          	sd	a5,16(a0)
    myHandle = 0;
    80003514:	00053423          	sd	zero,8(a0)
    args = (void*)this;
    80003518:	00a53c23          	sd	a0,24(a0)
}
    8000351c:	00813403          	ld	s0,8(sp)
    80003520:	01010113          	addi	sp,sp,16
    80003524:	00008067          	ret

0000000080003528 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003528:	00853503          	ld	a0,8(a0)
    8000352c:	02050663          	beqz	a0,80003558 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80003530:	ff010113          	addi	sp,sp,-16
    80003534:	00113423          	sd	ra,8(sp)
    80003538:	00813023          	sd	s0,0(sp)
    8000353c:	01010413          	addi	s0,sp,16
    return sem_wait((void *) myHandle);
    80003540:	ffffe097          	auipc	ra,0xffffe
    80003544:	e90080e7          	jalr	-368(ra) # 800013d0 <sem_wait>
}
    80003548:	00813083          	ld	ra,8(sp)
    8000354c:	00013403          	ld	s0,0(sp)
    80003550:	01010113          	addi	sp,sp,16
    80003554:	00008067          	ret
        return -1;
    80003558:	fff00513          	li	a0,-1
}
    8000355c:	00008067          	ret

0000000080003560 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80003560:	fe010113          	addi	sp,sp,-32
    80003564:	00113c23          	sd	ra,24(sp)
    80003568:	00813823          	sd	s0,16(sp)
    8000356c:	00913423          	sd	s1,8(sp)
    80003570:	02010413          	addi	s0,sp,32
    80003574:	00050493          	mv	s1,a0
    80003578:	00008797          	auipc	a5,0x8
    8000357c:	2d878793          	addi	a5,a5,728 # 8000b850 <_ZTV9Semaphore+0x10>
    80003580:	00f53023          	sd	a5,0(a0)
    int retval = sem_open((void**)&myHandle, init);
    80003584:	00850513          	addi	a0,a0,8
    80003588:	ffffe097          	auipc	ra,0xffffe
    8000358c:	de4080e7          	jalr	-540(ra) # 8000136c <sem_open>
    if(retval != 0)
    80003590:	00050463          	beqz	a0,80003598 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80003594:	0004b423          	sd	zero,8(s1)
}
    80003598:	01813083          	ld	ra,24(sp)
    8000359c:	01013403          	ld	s0,16(sp)
    800035a0:	00813483          	ld	s1,8(sp)
    800035a4:	02010113          	addi	sp,sp,32
    800035a8:	00008067          	ret

00000000800035ac <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    800035ac:	00853503          	ld	a0,8(a0)
    800035b0:	02050663          	beqz	a0,800035dc <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    800035b4:	ff010113          	addi	sp,sp,-16
    800035b8:	00113423          	sd	ra,8(sp)
    800035bc:	00813023          	sd	s0,0(sp)
    800035c0:	01010413          	addi	s0,sp,16
    return sem_signal((void*)myHandle);
    800035c4:	ffffe097          	auipc	ra,0xffffe
    800035c8:	e38080e7          	jalr	-456(ra) # 800013fc <sem_signal>
}
    800035cc:	00813083          	ld	ra,8(sp)
    800035d0:	00013403          	ld	s0,0(sp)
    800035d4:	01010113          	addi	sp,sp,16
    800035d8:	00008067          	ret
        return -1;
    800035dc:	fff00513          	li	a0,-1
}
    800035e0:	00008067          	ret

00000000800035e4 <_ZN7Console4getcEv>:
char Console::getc() {
    800035e4:	ff010113          	addi	sp,sp,-16
    800035e8:	00813423          	sd	s0,8(sp)
    800035ec:	01010413          	addi	s0,sp,16
}
    800035f0:	00000513          	li	a0,0
    800035f4:	00813403          	ld	s0,8(sp)
    800035f8:	01010113          	addi	sp,sp,16
    800035fc:	00008067          	ret

0000000080003600 <_ZN7Console4putcEc>:
void Console::putc(char) {
    80003600:	ff010113          	addi	sp,sp,-16
    80003604:	00813423          	sd	s0,8(sp)
    80003608:	01010413          	addi	s0,sp,16
}
    8000360c:	00813403          	ld	s0,8(sp)
    80003610:	01010113          	addi	sp,sp,16
    80003614:	00008067          	ret

0000000080003618 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    80003618:	fe010113          	addi	sp,sp,-32
    8000361c:	00113c23          	sd	ra,24(sp)
    80003620:	00813823          	sd	s0,16(sp)
    80003624:	00913423          	sd	s1,8(sp)
    80003628:	01213023          	sd	s2,0(sp)
    8000362c:	02010413          	addi	s0,sp,32
    80003630:	00050493          	mv	s1,a0
    80003634:	00058913          	mv	s2,a1
    80003638:	00050613          	mv	a2,a0
    8000363c:	00000597          	auipc	a1,0x0
    80003640:	e4c58593          	addi	a1,a1,-436 # 80003488 <_ZN14PeriodicThread6runnerEPv>
    80003644:	00000097          	auipc	ra,0x0
    80003648:	e7c080e7          	jalr	-388(ra) # 800034c0 <_ZN6ThreadC1EPFvPvES0_>
    8000364c:	00008797          	auipc	a5,0x8
    80003650:	17478793          	addi	a5,a5,372 # 8000b7c0 <_ZTV14PeriodicThread+0x10>
    80003654:	00f4b023          	sd	a5,0(s1)
    this->time = period;
    80003658:	0324b023          	sd	s2,32(s1)
}
    8000365c:	01813083          	ld	ra,24(sp)
    80003660:	01013403          	ld	s0,16(sp)
    80003664:	00813483          	ld	s1,8(sp)
    80003668:	00013903          	ld	s2,0(sp)
    8000366c:	02010113          	addi	sp,sp,32
    80003670:	00008067          	ret

0000000080003674 <_Z14periodicRunnerPv>:

#include "../h/threadWrapperFunctions.hpp"
#include "../h/syscall_cpp.hpp"

void periodicRunner(void* t)
{
    80003674:	ff010113          	addi	sp,sp,-16
    80003678:	00813423          	sd	s0,8(sp)
    8000367c:	01010413          	addi	s0,sp,16
    while(true)
    {
        pthr->periodicActivation();
        Thread::sleep()
    }*/
}
    80003680:	00813403          	ld	s0,8(sp)
    80003684:	01010113          	addi	sp,sp,16
    80003688:	00008067          	ret

000000008000368c <_Z13regularRunnerPv>:

void regularRunner(void* t)
{
    8000368c:	ff010113          	addi	sp,sp,-16
    80003690:	00813423          	sd	s0,8(sp)
    80003694:	01010413          	addi	s0,sp,16
    //Thread* thr = (Thread*)t;
    //thr->run();
}
    80003698:	00813403          	ld	s0,8(sp)
    8000369c:	01010113          	addi	sp,sp,16
    800036a0:	00008067          	ret

00000000800036a4 <_ZN5Riscv15userMainWrapperEPv>:
    endSystem();

    Riscv::printString("End...");
}

void Riscv::userMainWrapper(void* ) {
    800036a4:	ff010113          	addi	sp,sp,-16
    800036a8:	00113423          	sd	ra,8(sp)
    800036ac:	00813023          	sd	s0,0(sp)
    800036b0:	01010413          	addi	s0,sp,16
    userMain();
    800036b4:	00002097          	auipc	ra,0x2
    800036b8:	7a0080e7          	jalr	1952(ra) # 80005e54 <_Z8userMainv>
}
    800036bc:	00813083          	ld	ra,8(sp)
    800036c0:	00013403          	ld	s0,0(sp)
    800036c4:	01010113          	addi	sp,sp,16
    800036c8:	00008067          	ret

00000000800036cc <_ZN5Riscv10initSystemEv>:
{
    800036cc:	ff010113          	addi	sp,sp,-16
    800036d0:	00113423          	sd	ra,8(sp)
    800036d4:	00813023          	sd	s0,0(sp)
    800036d8:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    800036dc:	00008797          	auipc	a5,0x8
    800036e0:	2347b783          	ld	a5,564(a5) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800036e4:	10579073          	csrw	stvec,a5
    PCB::initialize();
    800036e8:	fffff097          	auipc	ra,0xfffff
    800036ec:	1d0080e7          	jalr	464(ra) # 800028b8 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    800036f0:	fffff097          	auipc	ra,0xfffff
    800036f4:	488080e7          	jalr	1160(ra) # 80002b78 <_ZN8KConsole10initializeEv>
}
    800036f8:	00813083          	ld	ra,8(sp)
    800036fc:	00013403          	ld	s0,0(sp)
    80003700:	01010113          	addi	sp,sp,16
    80003704:	00008067          	ret

0000000080003708 <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    80003708:	ff010113          	addi	sp,sp,-16
    8000370c:	00813423          	sd	s0,8(sp)
    80003710:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003714:	00200793          	li	a5,2
    80003718:	1007a073          	csrs	sstatus,a5
}
    8000371c:	00813403          	ld	s0,8(sp)
    80003720:	01010113          	addi	sp,sp,16
    80003724:	00008067          	ret

0000000080003728 <_ZN5Riscv17disableInterruptsEv>:
{
    80003728:	ff010113          	addi	sp,sp,-16
    8000372c:	00813423          	sd	s0,8(sp)
    80003730:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003734:	00200793          	li	a5,2
    80003738:	1007b073          	csrc	sstatus,a5
}
    8000373c:	00813403          	ld	s0,8(sp)
    80003740:	01010113          	addi	sp,sp,16
    80003744:	00008067          	ret

0000000080003748 <_ZN5Riscv9endSystemEv>:
{
    80003748:	ff010113          	addi	sp,sp,-16
    8000374c:	00113423          	sd	ra,8(sp)
    80003750:	00813023          	sd	s0,0(sp)
    80003754:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003758:	00000097          	auipc	ra,0x0
    8000375c:	fd0080e7          	jalr	-48(ra) # 80003728 <_ZN5Riscv17disableInterruptsEv>
}
    80003760:	00813083          	ld	ra,8(sp)
    80003764:	00013403          	ld	s0,0(sp)
    80003768:	01010113          	addi	sp,sp,16
    8000376c:	00008067          	ret

0000000080003770 <_ZN5Riscv10popSppSpieEv>:
{
    80003770:	ff010113          	addi	sp,sp,-16
    80003774:	00813423          	sd	s0,8(sp)
    80003778:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    8000377c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003780:	10200073          	sret
}
    80003784:	00813403          	ld	s0,8(sp)
    80003788:	01010113          	addi	sp,sp,16
    8000378c:	00008067          	ret

0000000080003790 <_ZN5Riscv11printStringEPKc>:
{
    80003790:	fd010113          	addi	sp,sp,-48
    80003794:	02113423          	sd	ra,40(sp)
    80003798:	02813023          	sd	s0,32(sp)
    8000379c:	00913c23          	sd	s1,24(sp)
    800037a0:	01213823          	sd	s2,16(sp)
    800037a4:	03010413          	addi	s0,sp,48
    800037a8:	00050493          	mv	s1,a0
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800037ac:	100027f3          	csrr	a5,sstatus
    800037b0:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800037b4:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800037b8:	00200793          	li	a5,2
    800037bc:	1007b073          	csrc	sstatus,a5
    while (*string != '\0')
    800037c0:	0004c503          	lbu	a0,0(s1)
    800037c4:	00050a63          	beqz	a0,800037d8 <_ZN5Riscv11printStringEPKc+0x48>
        __putc(*string);
    800037c8:	00005097          	auipc	ra,0x5
    800037cc:	af4080e7          	jalr	-1292(ra) # 800082bc <__putc>
        string++;
    800037d0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800037d4:	fedff06f          	j	800037c0 <_ZN5Riscv11printStringEPKc+0x30>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800037d8:	0009091b          	sext.w	s2,s2
    800037dc:	00297913          	andi	s2,s2,2
    800037e0:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800037e4:	10092073          	csrs	sstatus,s2
}
    800037e8:	02813083          	ld	ra,40(sp)
    800037ec:	02013403          	ld	s0,32(sp)
    800037f0:	01813483          	ld	s1,24(sp)
    800037f4:	01013903          	ld	s2,16(sp)
    800037f8:	03010113          	addi	sp,sp,48
    800037fc:	00008067          	ret

0000000080003800 <_ZN5Riscv12printIntegerEm>:
{
    80003800:	fc010113          	addi	sp,sp,-64
    80003804:	02113c23          	sd	ra,56(sp)
    80003808:	02813823          	sd	s0,48(sp)
    8000380c:	02913423          	sd	s1,40(sp)
    80003810:	03213023          	sd	s2,32(sp)
    80003814:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003818:	100027f3          	csrr	a5,sstatus
    8000381c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80003820:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003824:	00200793          	li	a5,2
    80003828:	1007b073          	csrc	sstatus,a5
        x = num;
    8000382c:	0005051b          	sext.w	a0,a0
    i = 0;
    80003830:	00000493          	li	s1,0
        buf[i++] = digits[x%10];
    80003834:	00a00613          	li	a2,10
    80003838:	02c5773b          	remuw	a4,a0,a2
    8000383c:	02071693          	slli	a3,a4,0x20
    80003840:	0206d693          	srli	a3,a3,0x20
    80003844:	00006717          	auipc	a4,0x6
    80003848:	a7c70713          	addi	a4,a4,-1412 # 800092c0 <_ZZN5Riscv12printIntegerEmE6digits>
    8000384c:	00d70733          	add	a4,a4,a3
    80003850:	00074703          	lbu	a4,0(a4)
    80003854:	fe040693          	addi	a3,s0,-32
    80003858:	009687b3          	add	a5,a3,s1
    8000385c:	0014849b          	addiw	s1,s1,1
    80003860:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80003864:	0005071b          	sext.w	a4,a0
    80003868:	02c5553b          	divuw	a0,a0,a2
    8000386c:	00900793          	li	a5,9
    80003870:	fce7e2e3          	bltu	a5,a4,80003834 <_ZN5Riscv12printIntegerEm+0x34>
    while(--i >= 0)
    80003874:	fff4849b          	addiw	s1,s1,-1
    80003878:	0004ce63          	bltz	s1,80003894 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    8000387c:	fe040793          	addi	a5,s0,-32
    80003880:	009787b3          	add	a5,a5,s1
    80003884:	ff07c503          	lbu	a0,-16(a5)
    80003888:	00005097          	auipc	ra,0x5
    8000388c:	a34080e7          	jalr	-1484(ra) # 800082bc <__putc>
    80003890:	fe5ff06f          	j	80003874 <_ZN5Riscv12printIntegerEm+0x74>
    __putc('\n');
    80003894:	00a00513          	li	a0,10
    80003898:	00005097          	auipc	ra,0x5
    8000389c:	a24080e7          	jalr	-1500(ra) # 800082bc <__putc>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800038a0:	0009091b          	sext.w	s2,s2
    800038a4:	00297913          	andi	s2,s2,2
    800038a8:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800038ac:	10092073          	csrs	sstatus,s2
}
    800038b0:	03813083          	ld	ra,56(sp)
    800038b4:	03013403          	ld	s0,48(sp)
    800038b8:	02813483          	ld	s1,40(sp)
    800038bc:	02013903          	ld	s2,32(sp)
    800038c0:	04010113          	addi	sp,sp,64
    800038c4:	00008067          	ret

00000000800038c8 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    800038c8:	f3010113          	addi	sp,sp,-208
    800038cc:	0c113423          	sd	ra,200(sp)
    800038d0:	0c813023          	sd	s0,192(sp)
    800038d4:	0a913c23          	sd	s1,184(sp)
    800038d8:	0b213823          	sd	s2,176(sp)
    800038dc:	0b313423          	sd	s3,168(sp)
    800038e0:	0b413023          	sd	s4,160(sp)
    800038e4:	09513c23          	sd	s5,152(sp)
    800038e8:	0d010413          	addi	s0,sp,208
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    800038ec:	00070493          	mv	s1,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    800038f0:	142027f3          	csrr	a5,scause
    800038f4:	f8f43023          	sd	a5,-128(s0)
    return scause;
    800038f8:	f8043783          	ld	a5,-128(s0)
    switch(scause)
    800038fc:	fff00713          	li	a4,-1
    80003900:	03f71713          	slli	a4,a4,0x3f
    80003904:	00170713          	addi	a4,a4,1
    80003908:	0ee78a63          	beq	a5,a4,800039fc <_ZN5Riscv20handleSupervisorTrapEv+0x134>
    8000390c:	fff00713          	li	a4,-1
    80003910:	03f71713          	slli	a4,a4,0x3f
    80003914:	00170713          	addi	a4,a4,1
    80003918:	0af76463          	bltu	a4,a5,800039c0 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    8000391c:	ff878793          	addi	a5,a5,-8
    80003920:	00100713          	li	a4,1
    80003924:	0af76a63          	bltu	a4,a5,800039d8 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003928:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000392c:	14102773          	csrr	a4,sepc
    80003930:	f8e43c23          	sd	a4,-104(s0)
    return sepc;
    80003934:	f9843703          	ld	a4,-104(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003938:	f4e43423          	sd	a4,-184(s0)
            sepc+=4;
    8000393c:	f4843703          	ld	a4,-184(s0)
    80003940:	00470713          	addi	a4,a4,4
    80003944:	f4e43423          	sd	a4,-184(s0)
            if(operation == MemoryAllocator::MEM_ALLOC)
    80003948:	00100713          	li	a4,1
    8000394c:	14e78063          	beq	a5,a4,80003a8c <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
            else if(operation == MemoryAllocator::MEM_FREE)
    80003950:	00200713          	li	a4,2
    80003954:	14e78c63          	beq	a5,a4,80003aac <_ZN5Riscv20handleSupervisorTrapEv+0x1e4>
            else if(operation == PCB::THREAD_CREATE)
    80003958:	01100713          	li	a4,17
    8000395c:	16e78263          	beq	a5,a4,80003ac0 <_ZN5Riscv20handleSupervisorTrapEv+0x1f8>
            else if(operation == PCB::THREAD_DISPATCH)
    80003960:	01300713          	li	a4,19
    80003964:	1ae78463          	beq	a5,a4,80003b0c <_ZN5Riscv20handleSupervisorTrapEv+0x244>
            else if(operation == PCB::THREAD_EXIT)
    80003968:	01200713          	li	a4,18
    8000396c:	1ce78863          	beq	a5,a4,80003b3c <_ZN5Riscv20handleSupervisorTrapEv+0x274>
            else if(operation == PCB::TIME_SLEEP)
    80003970:	03100713          	li	a4,49
    80003974:	22e78063          	beq	a5,a4,80003b94 <_ZN5Riscv20handleSupervisorTrapEv+0x2cc>
            else if(operation == KSemaphore::SEM_OPEN)
    80003978:	02100713          	li	a4,33
    8000397c:	26e78463          	beq	a5,a4,80003be4 <_ZN5Riscv20handleSupervisorTrapEv+0x31c>
            else if(operation == KSemaphore::SEM_WAIT)
    80003980:	02300713          	li	a4,35
    80003984:	28e78e63          	beq	a5,a4,80003c20 <_ZN5Riscv20handleSupervisorTrapEv+0x358>
            else if(operation == KSemaphore::SEM_SIGNAL)
    80003988:	02400713          	li	a4,36
    8000398c:	2ce78463          	beq	a5,a4,80003c54 <_ZN5Riscv20handleSupervisorTrapEv+0x38c>
            else if(operation == KSemaphore::SEM_CLOSE)
    80003990:	02200713          	li	a4,34
    80003994:	10e79663          	bne	a5,a4,80003aa0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003998:	00058493          	mv	s1,a1
                delete kSem;
    8000399c:	00048e63          	beqz	s1,800039b8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    800039a0:	00048513          	mv	a0,s1
    800039a4:	00001097          	auipc	ra,0x1
    800039a8:	984080e7          	jalr	-1660(ra) # 80004328 <_ZN10KSemaphoreD1Ev>
    800039ac:	00048513          	mv	a0,s1
    800039b0:	00001097          	auipc	ra,0x1
    800039b4:	aa8080e7          	jalr	-1368(ra) # 80004458 <_ZN10KSemaphoredlEPv>
                __asm__ volatile("li a0, 0");
    800039b8:	00000513          	li	a0,0
    800039bc:	0e40006f          	j	80003aa0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    switch(scause)
    800039c0:	fff00713          	li	a4,-1
    800039c4:	03f71713          	slli	a4,a4,0x3f
    800039c8:	00970713          	addi	a4,a4,9
    800039cc:	00e79663          	bne	a5,a4,800039d8 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            console_handler();
    800039d0:	00005097          	auipc	ra,0x5
    800039d4:	960080e7          	jalr	-1696(ra) # 80008330 <console_handler>
}
    800039d8:	0c813083          	ld	ra,200(sp)
    800039dc:	0c013403          	ld	s0,192(sp)
    800039e0:	0b813483          	ld	s1,184(sp)
    800039e4:	0b013903          	ld	s2,176(sp)
    800039e8:	0a813983          	ld	s3,168(sp)
    800039ec:	0a013a03          	ld	s4,160(sp)
    800039f0:	09813a83          	ld	s5,152(sp)
    800039f4:	0d010113          	addi	sp,sp,208
    800039f8:	00008067          	ret
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    800039fc:	00200793          	li	a5,2
    80003a00:	1447b073          	csrc	sip,a5
            total++;
    80003a04:	00008717          	auipc	a4,0x8
    80003a08:	00470713          	addi	a4,a4,4 # 8000ba08 <_ZZN5Riscv20handleSupervisorTrapEvE5total>
    80003a0c:	00073783          	ld	a5,0(a4)
    80003a10:	00178793          	addi	a5,a5,1
    80003a14:	00f73023          	sd	a5,0(a4)
            PCB::timeSliceCounter++;
    80003a18:	00008497          	auipc	s1,0x8
    80003a1c:	f004b483          	ld	s1,-256(s1) # 8000b918 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003a20:	0004b783          	ld	a5,0(s1)
    80003a24:	00178793          	addi	a5,a5,1
    80003a28:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003a2c:	fffff097          	auipc	ra,0xfffff
    80003a30:	46c080e7          	jalr	1132(ra) # 80002e98 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003a34:	00008797          	auipc	a5,0x8
    80003a38:	ef47b783          	ld	a5,-268(a5) # 8000b928 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003a3c:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003a40:	0107b783          	ld	a5,16(a5)
    80003a44:	0004b703          	ld	a4,0(s1)
    80003a48:	f8f768e3          	bltu	a4,a5,800039d8 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003a4c:	141027f3          	csrr	a5,sepc
    80003a50:	f8f43823          	sd	a5,-112(s0)
    return sepc;
    80003a54:	f9043783          	ld	a5,-112(s0)
                uint64 volatile sepc = Riscv::r_sepc();
    80003a58:	f2f43c23          	sd	a5,-200(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003a5c:	100027f3          	csrr	a5,sstatus
    80003a60:	f8f43423          	sd	a5,-120(s0)
    return sstatus;
    80003a64:	f8843783          	ld	a5,-120(s0)
                uint64 volatile sstatus = Riscv::r_sstatus();
    80003a68:	f4f43023          	sd	a5,-192(s0)
                PCB::timeSliceCounter = 0;
    80003a6c:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003a70:	fffff097          	auipc	ra,0xfffff
    80003a74:	d3c080e7          	jalr	-708(ra) # 800027ac <_ZN3PCB8dispatchEv>
                Riscv::w_sstatus(sstatus);
    80003a78:	f4043783          	ld	a5,-192(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003a7c:	10079073          	csrw	sstatus,a5
                Riscv::w_sepc(sepc);
    80003a80:	f3843783          	ld	a5,-200(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003a84:	14179073          	csrw	sepc,a5
}
    80003a88:	f51ff06f          	j	800039d8 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80003a8c:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    80003a90:	00651513          	slli	a0,a0,0x6
    80003a94:	00000097          	auipc	ra,0x0
    80003a98:	698080e7          	jalr	1688(ra) # 8000412c <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80003a9c:	00050513          	mv	a0,a0
            Riscv::w_sepc(sepc);
    80003aa0:	f4843783          	ld	a5,-184(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003aa4:	14179073          	csrw	sepc,a5
}
    80003aa8:	f31ff06f          	j	800039d8 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    80003aac:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    80003ab0:	00000097          	auipc	ra,0x0
    80003ab4:	6d8080e7          	jalr	1752(ra) # 80004188 <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003ab8:	00050513          	mv	a0,a0
    80003abc:	fe5ff06f          	j	80003aa0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80003ac0:	00058993          	mv	s3,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80003ac4:	00060a13          	mv	s4,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    80003ac8:	00068a93          	mv	s5,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    80003acc:	05000513          	li	a0,80
    80003ad0:	fffff097          	auipc	ra,0xfffff
    80003ad4:	d6c080e7          	jalr	-660(ra) # 8000283c <_ZN3PCBnwEm>
    80003ad8:	00050913          	mv	s2,a0
    80003adc:	00200713          	li	a4,2
    80003ae0:	00048693          	mv	a3,s1
    80003ae4:	000a8613          	mv	a2,s5
    80003ae8:	000a0593          	mv	a1,s4
    80003aec:	fffff097          	auipc	ra,0xfffff
    80003af0:	c18080e7          	jalr	-1000(ra) # 80002704 <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    80003af4:	0129b023          	sd	s2,0(s3)
                if(newPCB == 0)
    80003af8:	00090663          	beqz	s2,80003b04 <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
                    __asm__ volatile("li a0, 0");
    80003afc:	00000513          	li	a0,0
    80003b00:	fa1ff06f          	j	80003aa0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80003b04:	fff00513          	li	a0,-1
    80003b08:	f99ff06f          	j	80003aa0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003b0c:	100027f3          	csrr	a5,sstatus
    80003b10:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80003b14:	fa043783          	ld	a5,-96(s0)
                uint64 volatile sstatus = Riscv::r_sstatus();
    80003b18:	f4f43823          	sd	a5,-176(s0)
                PCB::timeSliceCounter = 0;
    80003b1c:	00008797          	auipc	a5,0x8
    80003b20:	dfc7b783          	ld	a5,-516(a5) # 8000b918 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003b24:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80003b28:	fffff097          	auipc	ra,0xfffff
    80003b2c:	c84080e7          	jalr	-892(ra) # 800027ac <_ZN3PCB8dispatchEv>
                Riscv::w_sstatus(sstatus);
    80003b30:	f5043783          	ld	a5,-176(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003b34:	10079073          	csrw	sstatus,a5
}
    80003b38:	f69ff06f          	j	80003aa0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                Riscv::printString("Exiting thread...\n");
    80003b3c:	00005517          	auipc	a0,0x5
    80003b40:	72c50513          	addi	a0,a0,1836 # 80009268 <CONSOLE_STATUS+0x258>
    80003b44:	00000097          	auipc	ra,0x0
    80003b48:	c4c080e7          	jalr	-948(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003b4c:	100027f3          	csrr	a5,sstatus
    80003b50:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80003b54:	fa843783          	ld	a5,-88(s0)
                uint64 volatile sstatus = Riscv::r_sstatus();
    80003b58:	f4f43c23          	sd	a5,-168(s0)
                PCB::timeSliceCounter = 0;
    80003b5c:	00008797          	auipc	a5,0x8
    80003b60:	dbc7b783          	ld	a5,-580(a5) # 8000b918 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003b64:	0007b023          	sd	zero,0(a5)
                PCB::running->setState(PCB::FINISHED);
    80003b68:	00008797          	auipc	a5,0x8
    80003b6c:	dc07b783          	ld	a5,-576(a5) # 8000b928 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003b70:	0007b783          	ld	a5,0(a5)
    void setState(State s) {state = s;}
    80003b74:	00300713          	li	a4,3
    80003b78:	02e7ac23          	sw	a4,56(a5)
                PCB::dispatch();
    80003b7c:	fffff097          	auipc	ra,0xfffff
    80003b80:	c30080e7          	jalr	-976(ra) # 800027ac <_ZN3PCB8dispatchEv>
                Riscv::w_sstatus(sstatus);
    80003b84:	f5843783          	ld	a5,-168(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003b88:	10079073          	csrw	sstatus,a5
                __asm__ volatile("li a0, 0");
    80003b8c:	00000513          	li	a0,0
    80003b90:	f11ff06f          	j	80003aa0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                __asm__ volatile("mv %0, a1" : "=r"(time));
    80003b94:	00058713          	mv	a4,a1
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003b98:	100027f3          	csrr	a5,sstatus
    80003b9c:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80003ba0:	fb043783          	ld	a5,-80(s0)
                uint64 volatile sstatus = Riscv::r_sstatus();
    80003ba4:	f6f43023          	sd	a5,-160(s0)
                PCB::timeSliceCounter = 0;
    80003ba8:	00008797          	auipc	a5,0x8
    80003bac:	d707b783          	ld	a5,-656(a5) # 8000b918 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003bb0:	0007b023          	sd	zero,0(a5)
                PCB::running->setTimeToSleep(time);
    80003bb4:	00008797          	auipc	a5,0x8
    80003bb8:	d747b783          	ld	a5,-652(a5) # 8000b928 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003bbc:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80003bc0:	00e7bc23          	sd	a4,24(a5)
                SleepPCBList::insertSleepingPCB();
    80003bc4:	fffff097          	auipc	ra,0xfffff
    80003bc8:	240080e7          	jalr	576(ra) # 80002e04 <_ZN12SleepPCBList17insertSleepingPCBEv>
                PCB::dispatch();
    80003bcc:	fffff097          	auipc	ra,0xfffff
    80003bd0:	be0080e7          	jalr	-1056(ra) # 800027ac <_ZN3PCB8dispatchEv>
                Riscv::w_sstatus(sstatus);
    80003bd4:	f6043783          	ld	a5,-160(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003bd8:	10079073          	csrw	sstatus,a5
                __asm__ volatile("li a0, 0x0");
    80003bdc:	00000513          	li	a0,0
    80003be0:	ec1ff06f          	j	80003aa0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80003be4:	00058913          	mv	s2,a1
                __asm__ volatile("mv %0, a2" : "=r"(val));
    80003be8:	00060993          	mv	s3,a2
                KSemaphore* newSem = new KSemaphore(val);
    80003bec:	01800513          	li	a0,24
    80003bf0:	00001097          	auipc	ra,0x1
    80003bf4:	840080e7          	jalr	-1984(ra) # 80004430 <_ZN10KSemaphorenwEm>
    80003bf8:	00050493          	mv	s1,a0
    80003bfc:	0009859b          	sext.w	a1,s3
    80003c00:	00000097          	auipc	ra,0x0
    80003c04:	5e0080e7          	jalr	1504(ra) # 800041e0 <_ZN10KSemaphoreC1Ei>
                (*semaphoreHandle) = newSem;
    80003c08:	00993023          	sd	s1,0(s2)
                if(newSem == 0)
    80003c0c:	00048663          	beqz	s1,80003c18 <_ZN5Riscv20handleSupervisorTrapEv+0x350>
                        __asm__ volatile("li a0, 0");
    80003c10:	00000513          	li	a0,0
    80003c14:	e8dff06f          	j	80003aa0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                        __asm__ volatile("li a0, 0xffffffffffffffff");
    80003c18:	fff00513          	li	a0,-1
    80003c1c:	e85ff06f          	j	80003aa0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003c20:	100027f3          	csrr	a5,sstatus
    80003c24:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80003c28:	fb843783          	ld	a5,-72(s0)
                uint64 volatile sstatus = Riscv::r_sstatus();
    80003c2c:	f6f43423          	sd	a5,-152(s0)
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003c30:	00058513          	mv	a0,a1
                uint64 volatile retval = kSem->wait();
    80003c34:	00000097          	auipc	ra,0x0
    80003c38:	654080e7          	jalr	1620(ra) # 80004288 <_ZN10KSemaphore4waitEv>
    80003c3c:	f6a43823          	sd	a0,-144(s0)
                Riscv::w_sstatus(sstatus);
    80003c40:	f6843783          	ld	a5,-152(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003c44:	10079073          	csrw	sstatus,a5
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003c48:	f7043783          	ld	a5,-144(s0)
    80003c4c:	00078513          	mv	a0,a5
    80003c50:	e51ff06f          	j	80003aa0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003c54:	00058513          	mv	a0,a1
                uint64 volatile retval = kSem->signal();
    80003c58:	00000097          	auipc	ra,0x0
    80003c5c:	790080e7          	jalr	1936(ra) # 800043e8 <_ZN10KSemaphore6signalEv>
    80003c60:	f6a43c23          	sd	a0,-136(s0)
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003c64:	f7843783          	ld	a5,-136(s0)
    80003c68:	00078513          	mv	a0,a5
    80003c6c:	e35ff06f          	j	80003aa0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    80003c70:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    80003c74:	00090513          	mv	a0,s2
    80003c78:	fffff097          	auipc	ra,0xfffff
    80003c7c:	bec080e7          	jalr	-1044(ra) # 80002864 <_ZN3PCBdlEPv>
    80003c80:	00048513          	mv	a0,s1
    80003c84:	00009097          	auipc	ra,0x9
    80003c88:	e94080e7          	jalr	-364(ra) # 8000cb18 <_Unwind_Resume>
    80003c8c:	00050913          	mv	s2,a0
                KSemaphore* newSem = new KSemaphore(val);
    80003c90:	00048513          	mv	a0,s1
    80003c94:	00000097          	auipc	ra,0x0
    80003c98:	7c4080e7          	jalr	1988(ra) # 80004458 <_ZN10KSemaphoredlEPv>
    80003c9c:	00090513          	mv	a0,s2
    80003ca0:	00009097          	auipc	ra,0x9
    80003ca4:	e78080e7          	jalr	-392(ra) # 8000cb18 <_Unwind_Resume>

0000000080003ca8 <_ZN5Riscv10kernelMainEv>:
{
    80003ca8:	fe010113          	addi	sp,sp,-32
    80003cac:	00113c23          	sd	ra,24(sp)
    80003cb0:	00813823          	sd	s0,16(sp)
    80003cb4:	00913423          	sd	s1,8(sp)
    80003cb8:	01213023          	sd	s2,0(sp)
    80003cbc:	02010413          	addi	s0,sp,32
    initSystem();
    80003cc0:	00000097          	auipc	ra,0x0
    80003cc4:	a0c080e7          	jalr	-1524(ra) # 800036cc <_ZN5Riscv10initSystemEv>
    enableInterrupts();
    80003cc8:	00000097          	auipc	ra,0x0
    80003ccc:	a40080e7          	jalr	-1472(ra) # 80003708 <_ZN5Riscv16enableInterruptsEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003cd0:	00001537          	lui	a0,0x1
    80003cd4:	00000097          	auipc	ra,0x0
    80003cd8:	458080e7          	jalr	1112(ra) # 8000412c <_Z7kmallocm>
    80003cdc:	00050913          	mv	s2,a0
    80003ce0:	05000513          	li	a0,80
    80003ce4:	fffff097          	auipc	ra,0xfffff
    80003ce8:	b58080e7          	jalr	-1192(ra) # 8000283c <_ZN3PCBnwEm>
    80003cec:	00050493          	mv	s1,a0
    80003cf0:	00200713          	li	a4,2
    80003cf4:	00090693          	mv	a3,s2
    80003cf8:	00000613          	li	a2,0
    80003cfc:	00000597          	auipc	a1,0x0
    80003d00:	9a858593          	addi	a1,a1,-1624 # 800036a4 <_ZN5Riscv15userMainWrapperEPv>
    80003d04:	fffff097          	auipc	ra,0xfffff
    80003d08:	a00080e7          	jalr	-1536(ra) # 80002704 <_ZN3PCBC1EPFvPvES0_S0_m>
    State getState() {return state;}
    80003d0c:	0384a703          	lw	a4,56(s1)
    while(userPCB->getState() != PCB::FINISHED)
    80003d10:	00300793          	li	a5,3
    80003d14:	00f70863          	beq	a4,a5,80003d24 <_ZN5Riscv10kernelMainEv+0x7c>
        thread_dispatch();
    80003d18:	ffffd097          	auipc	ra,0xffffd
    80003d1c:	60c080e7          	jalr	1548(ra) # 80001324 <thread_dispatch>
    while(userPCB->getState() != PCB::FINISHED)
    80003d20:	fedff06f          	j	80003d0c <_ZN5Riscv10kernelMainEv+0x64>
    disableInterrupts();
    80003d24:	00000097          	auipc	ra,0x0
    80003d28:	a04080e7          	jalr	-1532(ra) # 80003728 <_ZN5Riscv17disableInterruptsEv>
    endSystem();
    80003d2c:	00000097          	auipc	ra,0x0
    80003d30:	a1c080e7          	jalr	-1508(ra) # 80003748 <_ZN5Riscv9endSystemEv>
    Riscv::printString("End...");
    80003d34:	00005517          	auipc	a0,0x5
    80003d38:	58450513          	addi	a0,a0,1412 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003d3c:	00000097          	auipc	ra,0x0
    80003d40:	a54080e7          	jalr	-1452(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
}
    80003d44:	01813083          	ld	ra,24(sp)
    80003d48:	01013403          	ld	s0,16(sp)
    80003d4c:	00813483          	ld	s1,8(sp)
    80003d50:	00013903          	ld	s2,0(sp)
    80003d54:	02010113          	addi	sp,sp,32
    80003d58:	00008067          	ret
    80003d5c:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003d60:	00048513          	mv	a0,s1
    80003d64:	fffff097          	auipc	ra,0xfffff
    80003d68:	b00080e7          	jalr	-1280(ra) # 80002864 <_ZN3PCBdlEPv>
    80003d6c:	00090513          	mv	a0,s2
    80003d70:	00009097          	auipc	ra,0x9
    80003d74:	da8080e7          	jalr	-600(ra) # 8000cb18 <_Unwind_Resume>

0000000080003d78 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003d78:	ff010113          	addi	sp,sp,-16
    80003d7c:	00813423          	sd	s0,8(sp)
    80003d80:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003d84:	00008717          	auipc	a4,0x8
    80003d88:	c8c72703          	lw	a4,-884(a4) # 8000ba10 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003d8c:	00100793          	li	a5,1
    80003d90:	04f70263          	beq	a4,a5,80003dd4 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003d94:	00008797          	auipc	a5,0x8
    80003d98:	c7c78793          	addi	a5,a5,-900 # 8000ba10 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003d9c:	00100713          	li	a4,1
    80003da0:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003da4:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003da8:	00008717          	auipc	a4,0x8
    80003dac:	b6073703          	ld	a4,-1184(a4) # 8000b908 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003db0:	00073703          	ld	a4,0(a4)
    80003db4:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003db8:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003dbc:	00008797          	auipc	a5,0x8
    80003dc0:	b747b783          	ld	a5,-1164(a5) # 8000b930 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003dc4:	0007b783          	ld	a5,0(a5)
    80003dc8:	40e787b3          	sub	a5,a5,a4
    80003dcc:	ff178793          	addi	a5,a5,-15
    80003dd0:	00f73023          	sd	a5,0(a4)
}
    80003dd4:	00813403          	ld	s0,8(sp)
    80003dd8:	01010113          	addi	sp,sp,16
    80003ddc:	00008067          	ret

0000000080003de0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80003de0:	fe010113          	addi	sp,sp,-32
    80003de4:	00113c23          	sd	ra,24(sp)
    80003de8:	00813823          	sd	s0,16(sp)
    80003dec:	00913423          	sd	s1,8(sp)
    80003df0:	01213023          	sd	s2,0(sp)
    80003df4:	02010413          	addi	s0,sp,32
    80003df8:	00050493          	mv	s1,a0
    80003dfc:	00058913          	mv	s2,a1
    initMemory();
    80003e00:	00000097          	auipc	ra,0x0
    80003e04:	f78080e7          	jalr	-136(ra) # 80003d78 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003e08:	00008797          	auipc	a5,0x8
    80003e0c:	c107b783          	ld	a5,-1008(a5) # 8000ba18 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003e10:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003e14:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80003e18:	00000713          	li	a4,0
    while(curr != 0)
    80003e1c:	00078c63          	beqz	a5,80003e34 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003e20:	00f4e863          	bltu	s1,a5,80003e30 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003e24:	00078713          	mv	a4,a5
        curr = curr->next;
    80003e28:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003e2c:	ff1ff06f          	j	80003e1c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003e30:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003e34:	02070063          	beqz	a4,80003e54 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003e38:	00973423          	sd	s1,8(a4)
}
    80003e3c:	01813083          	ld	ra,24(sp)
    80003e40:	01013403          	ld	s0,16(sp)
    80003e44:	00813483          	ld	s1,8(sp)
    80003e48:	00013903          	ld	s2,0(sp)
    80003e4c:	02010113          	addi	sp,sp,32
    80003e50:	00008067          	ret
        headAllocated = newAllocated;
    80003e54:	00008797          	auipc	a5,0x8
    80003e58:	bc97b223          	sd	s1,-1084(a5) # 8000ba18 <_ZN15MemoryAllocator13headAllocatedE>
    80003e5c:	fe1ff06f          	j	80003e3c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003e60 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80003e60:	fe010113          	addi	sp,sp,-32
    80003e64:	00113c23          	sd	ra,24(sp)
    80003e68:	00813823          	sd	s0,16(sp)
    80003e6c:	00913423          	sd	s1,8(sp)
    80003e70:	01213023          	sd	s2,0(sp)
    80003e74:	02010413          	addi	s0,sp,32
    80003e78:	00050913          	mv	s2,a0
    initMemory();
    80003e7c:	00000097          	auipc	ra,0x0
    80003e80:	efc080e7          	jalr	-260(ra) # 80003d78 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003e84:	00008497          	auipc	s1,0x8
    80003e88:	b9c4b483          	ld	s1,-1124(s1) # 8000ba20 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003e8c:	00000713          	li	a4,0
    while(curr != 0)
    80003e90:	0a048863          	beqz	s1,80003f40 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80003e94:	0004b783          	ld	a5,0(s1)
    80003e98:	0127f863          	bgeu	a5,s2,80003ea8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003e9c:	00048713          	mv	a4,s1
        curr = curr->next;
    80003ea0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003ea4:	fedff06f          	j	80003e90 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003ea8:	01090693          	addi	a3,s2,16
    80003eac:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80003eb0:	00008617          	auipc	a2,0x8
    80003eb4:	a8063603          	ld	a2,-1408(a2) # 8000b930 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003eb8:	00063603          	ld	a2,0(a2)
    80003ebc:	04d66c63          	bltu	a2,a3,80003f14 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80003ec0:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003ec4:	01000613          	li	a2,16
    80003ec8:	02f67663          	bgeu	a2,a5,80003ef4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80003ecc:	0084b603          	ld	a2,8(s1)
    80003ed0:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003ed4:	ff078793          	addi	a5,a5,-16
    80003ed8:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003edc:	00070663          	beqz	a4,80003ee8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80003ee0:	00d73423          	sd	a3,8(a4)
    80003ee4:	0380006f          	j	80003f1c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003ee8:	00008797          	auipc	a5,0x8
    80003eec:	b2d7bc23          	sd	a3,-1224(a5) # 8000ba20 <_ZN15MemoryAllocator8headFreeE>
    80003ef0:	02c0006f          	j	80003f1c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80003ef4:	00070863          	beqz	a4,80003f04 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003ef8:	0084b783          	ld	a5,8(s1)
    80003efc:	00f73423          	sd	a5,8(a4)
    80003f00:	01c0006f          	j	80003f1c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80003f04:	0084b783          	ld	a5,8(s1)
    80003f08:	00008717          	auipc	a4,0x8
    80003f0c:	b0f73c23          	sd	a5,-1256(a4) # 8000ba20 <_ZN15MemoryAllocator8headFreeE>
    80003f10:	00c0006f          	j	80003f1c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80003f14:	02070063          	beqz	a4,80003f34 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80003f18:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80003f1c:	00090593          	mv	a1,s2
    80003f20:	00048513          	mv	a0,s1
    80003f24:	00000097          	auipc	ra,0x0
    80003f28:	ebc080e7          	jalr	-324(ra) # 80003de0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003f2c:	01048513          	addi	a0,s1,16
            break;
    80003f30:	0140006f          	j	80003f44 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80003f34:	00008797          	auipc	a5,0x8
    80003f38:	ae07b623          	sd	zero,-1300(a5) # 8000ba20 <_ZN15MemoryAllocator8headFreeE>
    80003f3c:	fe1ff06f          	j	80003f1c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003f40:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003f44:	01813083          	ld	ra,24(sp)
    80003f48:	01013403          	ld	s0,16(sp)
    80003f4c:	00813483          	ld	s1,8(sp)
    80003f50:	00013903          	ld	s2,0(sp)
    80003f54:	02010113          	addi	sp,sp,32
    80003f58:	00008067          	ret

0000000080003f5c <_ZN15MemoryAllocator9mem_allocEm>:
{
    80003f5c:	ff010113          	addi	sp,sp,-16
    80003f60:	00113423          	sd	ra,8(sp)
    80003f64:	00813023          	sd	s0,0(sp)
    80003f68:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003f6c:	00000097          	auipc	ra,0x0
    80003f70:	ef4080e7          	jalr	-268(ra) # 80003e60 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003f74:	00813083          	ld	ra,8(sp)
    80003f78:	00013403          	ld	s0,0(sp)
    80003f7c:	01010113          	addi	sp,sp,16
    80003f80:	00008067          	ret

0000000080003f84 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80003f84:	fe010113          	addi	sp,sp,-32
    80003f88:	00113c23          	sd	ra,24(sp)
    80003f8c:	00813823          	sd	s0,16(sp)
    80003f90:	00913423          	sd	s1,8(sp)
    80003f94:	01213023          	sd	s2,0(sp)
    80003f98:	02010413          	addi	s0,sp,32
    80003f9c:	00050493          	mv	s1,a0
    80003fa0:	00058913          	mv	s2,a1
    initMemory();
    80003fa4:	00000097          	auipc	ra,0x0
    80003fa8:	dd4080e7          	jalr	-556(ra) # 80003d78 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003fac:	00008797          	auipc	a5,0x8
    80003fb0:	a747b783          	ld	a5,-1420(a5) # 8000ba20 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003fb4:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003fb8:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003fbc:	00000713          	li	a4,0
    while(curr != 0)
    80003fc0:	00078c63          	beqz	a5,80003fd8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003fc4:	00f4e863          	bltu	s1,a5,80003fd4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003fc8:	00078713          	mv	a4,a5
        curr = curr->next;
    80003fcc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003fd0:	ff1ff06f          	j	80003fc0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80003fd4:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003fd8:	04070663          	beqz	a4,80004024 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003fdc:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003fe0:	0084b783          	ld	a5,8(s1)
    80003fe4:	00078a63          	beqz	a5,80003ff8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003fe8:	0004b603          	ld	a2,0(s1)
    80003fec:	01060693          	addi	a3,a2,16
    80003ff0:	00d486b3          	add	a3,s1,a3
    80003ff4:	02d78e63          	beq	a5,a3,80004030 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
        //Riscv::printString("Merged front\n");
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003ff8:	00070a63          	beqz	a4,8000400c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003ffc:	00073683          	ld	a3,0(a4)
    80004000:	01068793          	addi	a5,a3,16
    80004004:	00f707b3          	add	a5,a4,a5
    80004008:	04978263          	beq	a5,s1,8000404c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        //Riscv::printString("Merged back\n");
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    8000400c:	01813083          	ld	ra,24(sp)
    80004010:	01013403          	ld	s0,16(sp)
    80004014:	00813483          	ld	s1,8(sp)
    80004018:	00013903          	ld	s2,0(sp)
    8000401c:	02010113          	addi	sp,sp,32
    80004020:	00008067          	ret
        headFree = newSegment;
    80004024:	00008797          	auipc	a5,0x8
    80004028:	9e97be23          	sd	s1,-1540(a5) # 8000ba20 <_ZN15MemoryAllocator8headFreeE>
    8000402c:	fb5ff06f          	j	80003fe0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004030:	0007b683          	ld	a3,0(a5)
    80004034:	00d60633          	add	a2,a2,a3
    80004038:	01060613          	addi	a2,a2,16
    8000403c:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80004040:	0087b783          	ld	a5,8(a5)
    80004044:	00f4b423          	sd	a5,8(s1)
    80004048:	fb1ff06f          	j	80003ff8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    8000404c:	0004b783          	ld	a5,0(s1)
    80004050:	00f686b3          	add	a3,a3,a5
    80004054:	01068693          	addi	a3,a3,16
    80004058:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    8000405c:	0084b783          	ld	a5,8(s1)
    80004060:	00f73423          	sd	a5,8(a4)
}
    80004064:	fa9ff06f          	j	8000400c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080004068 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80004068:	fe010113          	addi	sp,sp,-32
    8000406c:	00113c23          	sd	ra,24(sp)
    80004070:	00813823          	sd	s0,16(sp)
    80004074:	00913423          	sd	s1,8(sp)
    80004078:	01213023          	sd	s2,0(sp)
    8000407c:	02010413          	addi	s0,sp,32
    80004080:	00050913          	mv	s2,a0
    initMemory();
    80004084:	00000097          	auipc	ra,0x0
    80004088:	cf4080e7          	jalr	-780(ra) # 80003d78 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    8000408c:	00008497          	auipc	s1,0x8
    80004090:	98c4b483          	ld	s1,-1652(s1) # 8000ba18 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004094:	00000713          	li	a4,0
    while(curr != 0)
    80004098:	02048a63          	beqz	s1,800040cc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    8000409c:	01048793          	addi	a5,s1,16
    800040a0:	01278863          	beq	a5,s2,800040b0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    800040a4:	00048713          	mv	a4,s1
        curr = curr->next;
    800040a8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800040ac:	fedff06f          	j	80004098 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    800040b0:	02070e63          	beqz	a4,800040ec <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    800040b4:	0084b783          	ld	a5,8(s1)
    800040b8:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    800040bc:	0004b583          	ld	a1,0(s1)
    800040c0:	00048513          	mv	a0,s1
    800040c4:	00000097          	auipc	ra,0x0
    800040c8:	ec0080e7          	jalr	-320(ra) # 80003f84 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800040cc:	02048863          	beqz	s1,800040fc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    800040d0:	00000513          	li	a0,0
    else
        return 1;
}
    800040d4:	01813083          	ld	ra,24(sp)
    800040d8:	01013403          	ld	s0,16(sp)
    800040dc:	00813483          	ld	s1,8(sp)
    800040e0:	00013903          	ld	s2,0(sp)
    800040e4:	02010113          	addi	sp,sp,32
    800040e8:	00008067          	ret
                headAllocated = curr->next;
    800040ec:	0084b783          	ld	a5,8(s1)
    800040f0:	00008717          	auipc	a4,0x8
    800040f4:	92f73423          	sd	a5,-1752(a4) # 8000ba18 <_ZN15MemoryAllocator13headAllocatedE>
    800040f8:	fc5ff06f          	j	800040bc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    800040fc:	00100513          	li	a0,1
    80004100:	fd5ff06f          	j	800040d4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080004104 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004104:	ff010113          	addi	sp,sp,-16
    80004108:	00113423          	sd	ra,8(sp)
    8000410c:	00813023          	sd	s0,0(sp)
    80004110:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004114:	00000097          	auipc	ra,0x0
    80004118:	f54080e7          	jalr	-172(ra) # 80004068 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    8000411c:	00813083          	ld	ra,8(sp)
    80004120:	00013403          	ld	s0,0(sp)
    80004124:	01010113          	addi	sp,sp,16
    80004128:	00008067          	ret

000000008000412c <_Z7kmallocm>:
    uint64 retval = kfree((void*)addr);
    __asm__ volatile("mv a0,%0" : :"r"(retval));
}

void* kmalloc(size_t size)
{
    8000412c:	ff010113          	addi	sp,sp,-16
    80004130:	00113423          	sd	ra,8(sp)
    80004134:	00813023          	sd	s0,0(sp)
    80004138:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    8000413c:	00000097          	auipc	ra,0x0
    80004140:	e20080e7          	jalr	-480(ra) # 80003f5c <_ZN15MemoryAllocator9mem_allocEm>
}
    80004144:	00813083          	ld	ra,8(sp)
    80004148:	00013403          	ld	s0,0(sp)
    8000414c:	01010113          	addi	sp,sp,16
    80004150:	00008067          	ret

0000000080004154 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004154:	ff010113          	addi	sp,sp,-16
    80004158:	00113423          	sd	ra,8(sp)
    8000415c:	00813023          	sd	s0,0(sp)
    80004160:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004164:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004168:	00651513          	slli	a0,a0,0x6
    8000416c:	00000097          	auipc	ra,0x0
    80004170:	fc0080e7          	jalr	-64(ra) # 8000412c <_Z7kmallocm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004174:	00050513          	mv	a0,a0
}
    80004178:	00813083          	ld	ra,8(sp)
    8000417c:	00013403          	ld	s0,0(sp)
    80004180:	01010113          	addi	sp,sp,16
    80004184:	00008067          	ret

0000000080004188 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80004188:	ff010113          	addi	sp,sp,-16
    8000418c:	00113423          	sd	ra,8(sp)
    80004190:	00813023          	sd	s0,0(sp)
    80004194:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004198:	00000097          	auipc	ra,0x0
    8000419c:	f6c080e7          	jalr	-148(ra) # 80004104 <_ZN15MemoryAllocator8mem_freeEPv>
    800041a0:	00813083          	ld	ra,8(sp)
    800041a4:	00013403          	ld	s0,0(sp)
    800041a8:	01010113          	addi	sp,sp,16
    800041ac:	00008067          	ret

00000000800041b0 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    800041b0:	ff010113          	addi	sp,sp,-16
    800041b4:	00113423          	sd	ra,8(sp)
    800041b8:	00813023          	sd	s0,0(sp)
    800041bc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    800041c0:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    800041c4:	00000097          	auipc	ra,0x0
    800041c8:	fc4080e7          	jalr	-60(ra) # 80004188 <_Z5kfreePv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800041cc:	00050513          	mv	a0,a0
}
    800041d0:	00813083          	ld	ra,8(sp)
    800041d4:	00013403          	ld	s0,0(sp)
    800041d8:	01010113          	addi	sp,sp,16
    800041dc:	00008067          	ret

00000000800041e0 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    800041e0:	ff010113          	addi	sp,sp,-16
    800041e4:	00813423          	sd	s0,8(sp)
    800041e8:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    800041ec:	00b52a23          	sw	a1,20(a0)
    800041f0:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    800041f4:	00053423          	sd	zero,8(a0)
    800041f8:	00053023          	sd	zero,0(a0)
}
    800041fc:	00813403          	ld	s0,8(sp)
    80004200:	01010113          	addi	sp,sp,16
    80004204:	00008067          	ret

0000000080004208 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004208:	ff010113          	addi	sp,sp,-16
    8000420c:	00813423          	sd	s0,8(sp)
    80004210:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004214:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004218:	00053783          	ld	a5,0(a0)
    8000421c:	00078e63          	beqz	a5,80004238 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004220:	00853783          	ld	a5,8(a0)
    80004224:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004228:	00b53423          	sd	a1,8(a0)
    }
}
    8000422c:	00813403          	ld	s0,8(sp)
    80004230:	01010113          	addi	sp,sp,16
    80004234:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004238:	00b53423          	sd	a1,8(a0)
    8000423c:	00b53023          	sd	a1,0(a0)
    80004240:	fedff06f          	j	8000422c <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004244 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    80004244:	ff010113          	addi	sp,sp,-16
    80004248:	00113423          	sd	ra,8(sp)
    8000424c:	00813023          	sd	s0,0(sp)
    80004250:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004254:	00007797          	auipc	a5,0x7
    80004258:	6d47b783          	ld	a5,1748(a5) # 8000b928 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000425c:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80004260:	00200793          	li	a5,2
    80004264:	02f5ac23          	sw	a5,56(a1)
    addToBlocked(PCB::running);
    80004268:	00000097          	auipc	ra,0x0
    8000426c:	fa0080e7          	jalr	-96(ra) # 80004208 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80004270:	ffffe097          	auipc	ra,0xffffe
    80004274:	53c080e7          	jalr	1340(ra) # 800027ac <_ZN3PCB8dispatchEv>
}
    80004278:	00813083          	ld	ra,8(sp)
    8000427c:	00013403          	ld	s0,0(sp)
    80004280:	01010113          	addi	sp,sp,16
    80004284:	00008067          	ret

0000000080004288 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    80004288:	01052783          	lw	a5,16(a0)
    8000428c:	fff7879b          	addiw	a5,a5,-1
    80004290:	00f52823          	sw	a5,16(a0)
    80004294:	02079713          	slli	a4,a5,0x20
    80004298:	00074663          	bltz	a4,800042a4 <_ZN10KSemaphore4waitEv+0x1c>
}
    8000429c:	00000513          	li	a0,0
    800042a0:	00008067          	ret
uint64 KSemaphore::wait() {
    800042a4:	ff010113          	addi	sp,sp,-16
    800042a8:	00113423          	sd	ra,8(sp)
    800042ac:	00813023          	sd	s0,0(sp)
    800042b0:	01010413          	addi	s0,sp,16
        block();
    800042b4:	00000097          	auipc	ra,0x0
    800042b8:	f90080e7          	jalr	-112(ra) # 80004244 <_ZN10KSemaphore5blockEv>
}
    800042bc:	00000513          	li	a0,0
    800042c0:	00813083          	ld	ra,8(sp)
    800042c4:	00013403          	ld	s0,0(sp)
    800042c8:	01010113          	addi	sp,sp,16
    800042cc:	00008067          	ret

00000000800042d0 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    800042d0:	ff010113          	addi	sp,sp,-16
    800042d4:	00813423          	sd	s0,8(sp)
    800042d8:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    800042dc:	00053503          	ld	a0,0(a0)
    800042e0:	00813403          	ld	s0,8(sp)
    800042e4:	01010113          	addi	sp,sp,16
    800042e8:	00008067          	ret

00000000800042ec <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    800042ec:	ff010113          	addi	sp,sp,-16
    800042f0:	00813423          	sd	s0,8(sp)
    800042f4:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    800042f8:	00053783          	ld	a5,0(a0)
    800042fc:	00078c63          	beqz	a5,80004314 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004300:	0087b703          	ld	a4,8(a5)
    80004304:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004308:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    8000430c:	00053783          	ld	a5,0(a0)
    80004310:	00078863          	beqz	a5,80004320 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004314:	00813403          	ld	s0,8(sp)
    80004318:	01010113          	addi	sp,sp,16
    8000431c:	00008067          	ret
        tailBlocked =0;
    80004320:	00053423          	sd	zero,8(a0)
    80004324:	ff1ff06f          	j	80004314 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004328 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004328:	fe010113          	addi	sp,sp,-32
    8000432c:	00113c23          	sd	ra,24(sp)
    80004330:	00813823          	sd	s0,16(sp)
    80004334:	00913423          	sd	s1,8(sp)
    80004338:	01213023          	sd	s2,0(sp)
    8000433c:	02010413          	addi	s0,sp,32
    80004340:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004344:	00090513          	mv	a0,s2
    80004348:	00000097          	auipc	ra,0x0
    8000434c:	f88080e7          	jalr	-120(ra) # 800042d0 <_ZN10KSemaphore15getFirstBlockedEv>
    80004350:	00050493          	mv	s1,a0
    80004354:	02050063          	beqz	a0,80004374 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    80004358:	00090513          	mv	a0,s2
    8000435c:	00000097          	auipc	ra,0x0
    80004360:	f90080e7          	jalr	-112(ra) # 800042ec <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    80004364:	00048513          	mv	a0,s1
    80004368:	fffff097          	auipc	ra,0xfffff
    8000436c:	de0080e7          	jalr	-544(ra) # 80003148 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004370:	fd5ff06f          	j	80004344 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80004374:	01813083          	ld	ra,24(sp)
    80004378:	01013403          	ld	s0,16(sp)
    8000437c:	00813483          	ld	s1,8(sp)
    80004380:	00013903          	ld	s2,0(sp)
    80004384:	02010113          	addi	sp,sp,32
    80004388:	00008067          	ret

000000008000438c <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    8000438c:	fe010113          	addi	sp,sp,-32
    80004390:	00113c23          	sd	ra,24(sp)
    80004394:	00813823          	sd	s0,16(sp)
    80004398:	00913423          	sd	s1,8(sp)
    8000439c:	01213023          	sd	s2,0(sp)
    800043a0:	02010413          	addi	s0,sp,32
    800043a4:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    800043a8:	00000097          	auipc	ra,0x0
    800043ac:	f28080e7          	jalr	-216(ra) # 800042d0 <_ZN10KSemaphore15getFirstBlockedEv>
    800043b0:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800043b4:	00090513          	mv	a0,s2
    800043b8:	00000097          	auipc	ra,0x0
    800043bc:	f34080e7          	jalr	-204(ra) # 800042ec <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    800043c0:	00048863          	beqz	s1,800043d0 <_ZN10KSemaphore7unblockEv+0x44>
        Scheduler::put(fr);
    800043c4:	00048513          	mv	a0,s1
    800043c8:	fffff097          	auipc	ra,0xfffff
    800043cc:	d80080e7          	jalr	-640(ra) # 80003148 <_ZN9Scheduler3putEP3PCB>
}
    800043d0:	01813083          	ld	ra,24(sp)
    800043d4:	01013403          	ld	s0,16(sp)
    800043d8:	00813483          	ld	s1,8(sp)
    800043dc:	00013903          	ld	s2,0(sp)
    800043e0:	02010113          	addi	sp,sp,32
    800043e4:	00008067          	ret

00000000800043e8 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    800043e8:	01052783          	lw	a5,16(a0)
    800043ec:	0017879b          	addiw	a5,a5,1
    800043f0:	0007871b          	sext.w	a4,a5
    800043f4:	00f52823          	sw	a5,16(a0)
    800043f8:	00e05663          	blez	a4,80004404 <_ZN10KSemaphore6signalEv+0x1c>
}
    800043fc:	00000513          	li	a0,0
    80004400:	00008067          	ret
uint64 KSemaphore::signal() {
    80004404:	ff010113          	addi	sp,sp,-16
    80004408:	00113423          	sd	ra,8(sp)
    8000440c:	00813023          	sd	s0,0(sp)
    80004410:	01010413          	addi	s0,sp,16
        unblock();
    80004414:	00000097          	auipc	ra,0x0
    80004418:	f78080e7          	jalr	-136(ra) # 8000438c <_ZN10KSemaphore7unblockEv>
}
    8000441c:	00000513          	li	a0,0
    80004420:	00813083          	ld	ra,8(sp)
    80004424:	00013403          	ld	s0,0(sp)
    80004428:	01010113          	addi	sp,sp,16
    8000442c:	00008067          	ret

0000000080004430 <_ZN10KSemaphorenwEm>:

void *KSemaphore::operator new(size_t size) {
    80004430:	ff010113          	addi	sp,sp,-16
    80004434:	00113423          	sd	ra,8(sp)
    80004438:	00813023          	sd	s0,0(sp)
    8000443c:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80004440:	00000097          	auipc	ra,0x0
    80004444:	cec080e7          	jalr	-788(ra) # 8000412c <_Z7kmallocm>
}
    80004448:	00813083          	ld	ra,8(sp)
    8000444c:	00013403          	ld	s0,0(sp)
    80004450:	01010113          	addi	sp,sp,16
    80004454:	00008067          	ret

0000000080004458 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p) {
    80004458:	ff010113          	addi	sp,sp,-16
    8000445c:	00113423          	sd	ra,8(sp)
    80004460:	00813023          	sd	s0,0(sp)
    80004464:	01010413          	addi	s0,sp,16
    kfree(p);
    80004468:	00000097          	auipc	ra,0x0
    8000446c:	d20080e7          	jalr	-736(ra) # 80004188 <_Z5kfreePv>
}
    80004470:	00813083          	ld	ra,8(sp)
    80004474:	00013403          	ld	s0,0(sp)
    80004478:	01010113          	addi	sp,sp,16
    8000447c:	00008067          	ret

0000000080004480 <_Z8producerPv>:
    delete data->buffer;

    sem_signal(data->wait);
}

void producer(void *arg) {
    80004480:	fd010113          	addi	sp,sp,-48
    80004484:	02113423          	sd	ra,40(sp)
    80004488:	02813023          	sd	s0,32(sp)
    8000448c:	00913c23          	sd	s1,24(sp)
    80004490:	01213823          	sd	s2,16(sp)
    80004494:	01313423          	sd	s3,8(sp)
    80004498:	03010413          	addi	s0,sp,48
    8000449c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("producer started\n");
    800044a0:	00005517          	auipc	a0,0x5
    800044a4:	e3050513          	addi	a0,a0,-464 # 800092d0 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    800044a8:	fffff097          	auipc	ra,0xfffff
    800044ac:	2e8080e7          	jalr	744(ra) # 80003790 <_ZN5Riscv11printStringEPKc>

    int i = 0;
    800044b0:	00000993          	li	s3,0
    while (!threadEnd) {
    800044b4:	00007797          	auipc	a5,0x7
    800044b8:	5747a783          	lw	a5,1396(a5) # 8000ba28 <threadEnd>
    800044bc:	0c079863          	bnez	a5,8000458c <_Z8producerPv+0x10c>

        data->buffer->put(data->id + '0');
    800044c0:	00092583          	lw	a1,0(s2)
    800044c4:	0305859b          	addiw	a1,a1,48
    800044c8:	00893503          	ld	a0,8(s2)
    800044cc:	00002097          	auipc	ra,0x2
    800044d0:	c10080e7          	jalr	-1008(ra) # 800060dc <_ZN6Buffer3putEi>
        i++;
    800044d4:	0019849b          	addiw	s1,s3,1
    800044d8:	0004899b          	sext.w	s3,s1
        cntGlobal++;
    800044dc:	00007717          	auipc	a4,0x7
    800044e0:	54c70713          	addi	a4,a4,1356 # 8000ba28 <threadEnd>
    800044e4:	00472783          	lw	a5,4(a4)
    800044e8:	0017879b          	addiw	a5,a5,1
    800044ec:	00f72223          	sw	a5,4(a4)

        Riscv::printString("put ");
    800044f0:	00005517          	auipc	a0,0x5
    800044f4:	df850513          	addi	a0,a0,-520 # 800092e8 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    800044f8:	fffff097          	auipc	ra,0xfffff
    800044fc:	298080e7          	jalr	664(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(data->id + '0');
    80004500:	00092503          	lw	a0,0(s2)
    80004504:	0305051b          	addiw	a0,a0,48
    80004508:	fffff097          	auipc	ra,0xfffff
    8000450c:	2f8080e7          	jalr	760(ra) # 80003800 <_ZN5Riscv12printIntegerEm>

        if (i % (10 * data->id) == 0) {
    80004510:	00092703          	lw	a4,0(s2)
    80004514:	0027179b          	slliw	a5,a4,0x2
    80004518:	00e787bb          	addw	a5,a5,a4
    8000451c:	0017979b          	slliw	a5,a5,0x1
    80004520:	02f4e7bb          	remw	a5,s1,a5
    80004524:	02078e63          	beqz	a5,80004560 <_Z8producerPv+0xe0>
            Riscv::printString("dispatched\n");
            thread_dispatch();
            Riscv::printString("returned from dispatch\n");
        }
        Riscv::printInteger(cntGlobal);
    80004528:	00007497          	auipc	s1,0x7
    8000452c:	50048493          	addi	s1,s1,1280 # 8000ba28 <threadEnd>
    80004530:	0044a503          	lw	a0,4(s1)
    80004534:	0005051b          	sext.w	a0,a0
    80004538:	fffff097          	auipc	ra,0xfffff
    8000453c:	2c8080e7          	jalr	712(ra) # 80003800 <_ZN5Riscv12printIntegerEm>

        if(cntGlobal == 15)
    80004540:	0044a783          	lw	a5,4(s1)
    80004544:	0007879b          	sext.w	a5,a5
    80004548:	00f00713          	li	a4,15
    8000454c:	f6e794e3          	bne	a5,a4,800044b4 <_Z8producerPv+0x34>
            threadEnd = 1;
    80004550:	00100793          	li	a5,1
    80004554:	00007717          	auipc	a4,0x7
    80004558:	4cf72a23          	sw	a5,1236(a4) # 8000ba28 <threadEnd>
    8000455c:	f59ff06f          	j	800044b4 <_Z8producerPv+0x34>
            Riscv::printString("dispatched\n");
    80004560:	00005517          	auipc	a0,0x5
    80004564:	d9050513          	addi	a0,a0,-624 # 800092f0 <_ZZN5Riscv12printIntegerEmE6digits+0x30>
    80004568:	fffff097          	auipc	ra,0xfffff
    8000456c:	228080e7          	jalr	552(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
            thread_dispatch();
    80004570:	ffffd097          	auipc	ra,0xffffd
    80004574:	db4080e7          	jalr	-588(ra) # 80001324 <thread_dispatch>
            Riscv::printString("returned from dispatch\n");
    80004578:	00005517          	auipc	a0,0x5
    8000457c:	d8850513          	addi	a0,a0,-632 # 80009300 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80004580:	fffff097          	auipc	ra,0xfffff
    80004584:	210080e7          	jalr	528(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    80004588:	fa1ff06f          	j	80004528 <_Z8producerPv+0xa8>
    }
    Riscv::printString("producer finished\n");
    8000458c:	00005517          	auipc	a0,0x5
    80004590:	d8c50513          	addi	a0,a0,-628 # 80009318 <_ZZN5Riscv12printIntegerEmE6digits+0x58>
    80004594:	fffff097          	auipc	ra,0xfffff
    80004598:	1fc080e7          	jalr	508(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    8000459c:	01093503          	ld	a0,16(s2)
    800045a0:	ffffd097          	auipc	ra,0xffffd
    800045a4:	e5c080e7          	jalr	-420(ra) # 800013fc <sem_signal>
}
    800045a8:	02813083          	ld	ra,40(sp)
    800045ac:	02013403          	ld	s0,32(sp)
    800045b0:	01813483          	ld	s1,24(sp)
    800045b4:	01013903          	ld	s2,16(sp)
    800045b8:	00813983          	ld	s3,8(sp)
    800045bc:	03010113          	addi	sp,sp,48
    800045c0:	00008067          	ret

00000000800045c4 <_Z8consumerPv>:

void consumer(void *arg) {
    800045c4:	fd010113          	addi	sp,sp,-48
    800045c8:	02113423          	sd	ra,40(sp)
    800045cc:	02813023          	sd	s0,32(sp)
    800045d0:	00913c23          	sd	s1,24(sp)
    800045d4:	01213823          	sd	s2,16(sp)
    800045d8:	01313423          	sd	s3,8(sp)
    800045dc:	01413023          	sd	s4,0(sp)
    800045e0:	03010413          	addi	s0,sp,48
    800045e4:	00050993          	mv	s3,a0
    struct thread_data *data = (struct thread_data *) arg;
    Riscv::printString("consumer started\n");
    800045e8:	00005517          	auipc	a0,0x5
    800045ec:	d4850513          	addi	a0,a0,-696 # 80009330 <_ZZN5Riscv12printIntegerEmE6digits+0x70>
    800045f0:	fffff097          	auipc	ra,0xfffff
    800045f4:	1a0080e7          	jalr	416(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    int i = 0;
    800045f8:	00000a13          	li	s4,0
    800045fc:	0200006f          	j	8000461c <_Z8consumerPv+0x58>
        //putc(key);
        Riscv::printString("get ");
        Riscv::printInteger(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80004600:	ffffd097          	auipc	ra,0xffffd
    80004604:	d24080e7          	jalr	-732(ra) # 80001324 <thread_dispatch>
    80004608:	0680006f          	j	80004670 <_Z8consumerPv+0xac>
        }

        if (i % 80 == 0) {
            //putc('\n');
            Riscv::printString("\n");
    8000460c:	00005517          	auipc	a0,0x5
    80004610:	b0450513          	addi	a0,a0,-1276 # 80009110 <CONSOLE_STATUS+0x100>
    80004614:	fffff097          	auipc	ra,0xfffff
    80004618:	17c080e7          	jalr	380(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    while (!threadEnd) {
    8000461c:	00007797          	auipc	a5,0x7
    80004620:	40c7a783          	lw	a5,1036(a5) # 8000ba28 <threadEnd>
    80004624:	04079e63          	bnez	a5,80004680 <_Z8consumerPv+0xbc>
        int key = data->buffer->get();
    80004628:	0089b503          	ld	a0,8(s3)
    8000462c:	00002097          	auipc	ra,0x2
    80004630:	b40080e7          	jalr	-1216(ra) # 8000616c <_ZN6Buffer3getEv>
    80004634:	00050913          	mv	s2,a0
        i++;
    80004638:	001a049b          	addiw	s1,s4,1
    8000463c:	00048a1b          	sext.w	s4,s1
        Riscv::printString("get ");
    80004640:	00005517          	auipc	a0,0x5
    80004644:	d0850513          	addi	a0,a0,-760 # 80009348 <_ZZN5Riscv12printIntegerEmE6digits+0x88>
    80004648:	fffff097          	auipc	ra,0xfffff
    8000464c:	148080e7          	jalr	328(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(key);
    80004650:	00090513          	mv	a0,s2
    80004654:	fffff097          	auipc	ra,0xfffff
    80004658:	1ac080e7          	jalr	428(ra) # 80003800 <_ZN5Riscv12printIntegerEm>
        if (i % (5 * data->id) == 0) {
    8000465c:	0009a703          	lw	a4,0(s3)
    80004660:	0027179b          	slliw	a5,a4,0x2
    80004664:	00e787bb          	addw	a5,a5,a4
    80004668:	02f4e7bb          	remw	a5,s1,a5
    8000466c:	f8078ae3          	beqz	a5,80004600 <_Z8consumerPv+0x3c>
        if (i % 80 == 0) {
    80004670:	05000793          	li	a5,80
    80004674:	02f4e4bb          	remw	s1,s1,a5
    80004678:	fa0492e3          	bnez	s1,8000461c <_Z8consumerPv+0x58>
    8000467c:	f91ff06f          	j	8000460c <_Z8consumerPv+0x48>
        }
    }
    Riscv::printString("consumer finished\n");
    80004680:	00005517          	auipc	a0,0x5
    80004684:	cd050513          	addi	a0,a0,-816 # 80009350 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80004688:	fffff097          	auipc	ra,0xfffff
    8000468c:	108080e7          	jalr	264(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    80004690:	0109b503          	ld	a0,16(s3)
    80004694:	ffffd097          	auipc	ra,0xffffd
    80004698:	d68080e7          	jalr	-664(ra) # 800013fc <sem_signal>
}
    8000469c:	02813083          	ld	ra,40(sp)
    800046a0:	02013403          	ld	s0,32(sp)
    800046a4:	01813483          	ld	s1,24(sp)
    800046a8:	01013903          	ld	s2,16(sp)
    800046ac:	00813983          	ld	s3,8(sp)
    800046b0:	00013a03          	ld	s4,0(sp)
    800046b4:	03010113          	addi	sp,sp,48
    800046b8:	00008067          	ret

00000000800046bc <_Z16producerKeyboardPv>:
void producerKeyboard(void *arg) {
    800046bc:	fe010113          	addi	sp,sp,-32
    800046c0:	00113c23          	sd	ra,24(sp)
    800046c4:	00813823          	sd	s0,16(sp)
    800046c8:	00913423          	sd	s1,8(sp)
    800046cc:	01213023          	sd	s2,0(sp)
    800046d0:	02010413          	addi	s0,sp,32
    800046d4:	00050493          	mv	s1,a0
    int i = 0;
    800046d8:	00000913          	li	s2,0
    800046dc:	00c0006f          	j	800046e8 <_Z16producerKeyboardPv+0x2c>
            thread_dispatch();
    800046e0:	ffffd097          	auipc	ra,0xffffd
    800046e4:	c44080e7          	jalr	-956(ra) # 80001324 <thread_dispatch>
#define PROJECT_BASE_V1_0_STD_HPP

#include "../lib/console.h"

inline char getc() {
    return __getc();
    800046e8:	00004097          	auipc	ra,0x4
    800046ec:	c10080e7          	jalr	-1008(ra) # 800082f8 <__getc>
    while ((key = getc()) != 0x1b) {
    800046f0:	0005059b          	sext.w	a1,a0
    800046f4:	01b00793          	li	a5,27
    800046f8:	02f58a63          	beq	a1,a5,8000472c <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800046fc:	0084b503          	ld	a0,8(s1)
    80004700:	00002097          	auipc	ra,0x2
    80004704:	9dc080e7          	jalr	-1572(ra) # 800060dc <_ZN6Buffer3putEi>
        i++;
    80004708:	0019071b          	addiw	a4,s2,1
    8000470c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004710:	0004a683          	lw	a3,0(s1)
    80004714:	0026979b          	slliw	a5,a3,0x2
    80004718:	00d787bb          	addw	a5,a5,a3
    8000471c:	0017979b          	slliw	a5,a5,0x1
    80004720:	02f767bb          	remw	a5,a4,a5
    80004724:	fc0792e3          	bnez	a5,800046e8 <_Z16producerKeyboardPv+0x2c>
    80004728:	fb9ff06f          	j	800046e0 <_Z16producerKeyboardPv+0x24>
    threadEnd = 1;
    8000472c:	00100793          	li	a5,1
    80004730:	00007717          	auipc	a4,0x7
    80004734:	2ef72c23          	sw	a5,760(a4) # 8000ba28 <threadEnd>
    delete data->buffer;
    80004738:	0084b903          	ld	s2,8(s1)
    8000473c:	00090e63          	beqz	s2,80004758 <_Z16producerKeyboardPv+0x9c>
    80004740:	00090513          	mv	a0,s2
    80004744:	00002097          	auipc	ra,0x2
    80004748:	8ec080e7          	jalr	-1812(ra) # 80006030 <_ZN6BufferD1Ev>
    8000474c:	00090513          	mv	a0,s2
    80004750:	fffff097          	auipc	ra,0xfffff
    80004754:	bfc080e7          	jalr	-1028(ra) # 8000334c <_ZdlPv>
    sem_signal(data->wait);
    80004758:	0104b503          	ld	a0,16(s1)
    8000475c:	ffffd097          	auipc	ra,0xffffd
    80004760:	ca0080e7          	jalr	-864(ra) # 800013fc <sem_signal>
}
    80004764:	01813083          	ld	ra,24(sp)
    80004768:	01013403          	ld	s0,16(sp)
    8000476c:	00813483          	ld	s1,8(sp)
    80004770:	00013903          	ld	s2,0(sp)
    80004774:	02010113          	addi	sp,sp,32
    80004778:	00008067          	ret

000000008000477c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    8000477c:	f6010113          	addi	sp,sp,-160
    80004780:	08113c23          	sd	ra,152(sp)
    80004784:	08813823          	sd	s0,144(sp)
    80004788:	08913423          	sd	s1,136(sp)
    8000478c:	09213023          	sd	s2,128(sp)
    80004790:	0a010413          	addi	s0,sp,160
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004794:	00005517          	auipc	a0,0x5
    80004798:	bd450513          	addi	a0,a0,-1068 # 80009368 <_ZZN5Riscv12printIntegerEmE6digits+0xa8>
    8000479c:	00001097          	auipc	ra,0x1
    800047a0:	0e4080e7          	jalr	228(ra) # 80005880 <_Z11printStringPKc>
    //getString(input, 30);
    //threadNum = stringToInt(input);
    threadNum = 3;

    printString("Unesite velicinu bafera?\n");
    800047a4:	00005517          	auipc	a0,0x5
    800047a8:	be450513          	addi	a0,a0,-1052 # 80009388 <_ZZN5Riscv12printIntegerEmE6digits+0xc8>
    800047ac:	00001097          	auipc	ra,0x1
    800047b0:	0d4080e7          	jalr	212(ra) # 80005880 <_Z11printStringPKc>
    //getString(input, 30);
    //n = stringToInt(input);

    n = 1;

    printString("Broj proizvodjaca "); printInt(threadNum);
    800047b4:	00005517          	auipc	a0,0x5
    800047b8:	bf450513          	addi	a0,a0,-1036 # 800093a8 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    800047bc:	00001097          	auipc	ra,0x1
    800047c0:	0c4080e7          	jalr	196(ra) # 80005880 <_Z11printStringPKc>
    800047c4:	00000613          	li	a2,0
    800047c8:	00a00593          	li	a1,10
    800047cc:	00300513          	li	a0,3
    800047d0:	00001097          	auipc	ra,0x1
    800047d4:	248080e7          	jalr	584(ra) # 80005a18 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800047d8:	00005517          	auipc	a0,0x5
    800047dc:	be850513          	addi	a0,a0,-1048 # 800093c0 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    800047e0:	00001097          	auipc	ra,0x1
    800047e4:	0a0080e7          	jalr	160(ra) # 80005880 <_Z11printStringPKc>
    800047e8:	00000613          	li	a2,0
    800047ec:	00a00593          	li	a1,10
    800047f0:	00100513          	li	a0,1
    800047f4:	00001097          	auipc	ra,0x1
    800047f8:	224080e7          	jalr	548(ra) # 80005a18 <_Z8printIntiii>
    printString(".\n");
    800047fc:	00005517          	auipc	a0,0x5
    80004800:	a7c50513          	addi	a0,a0,-1412 # 80009278 <CONSOLE_STATUS+0x268>
    80004804:	00001097          	auipc	ra,0x1
    80004808:	07c080e7          	jalr	124(ra) # 80005880 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    8000480c:	03800513          	li	a0,56
    80004810:	fffff097          	auipc	ra,0xfffff
    80004814:	b14080e7          	jalr	-1260(ra) # 80003324 <_Znwm>
    80004818:	00050913          	mv	s2,a0
    8000481c:	00100593          	li	a1,1
    80004820:	00001097          	auipc	ra,0x1
    80004824:	788080e7          	jalr	1928(ra) # 80005fa8 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004828:	00000593          	li	a1,0
    8000482c:	00007517          	auipc	a0,0x7
    80004830:	20450513          	addi	a0,a0,516 # 8000ba30 <waitForAll>
    80004834:	ffffd097          	auipc	ra,0xffffd
    80004838:	b38080e7          	jalr	-1224(ra) # 8000136c <sem_open>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    8000483c:	00300793          	li	a5,3
    80004840:	faf42423          	sw	a5,-88(s0)
    data[threadNum].buffer = buffer;
    80004844:	fb243823          	sd	s2,-80(s0)
    data[threadNum].wait = waitForAll;
    80004848:	00007797          	auipc	a5,0x7
    8000484c:	1e87b783          	ld	a5,488(a5) # 8000ba30 <waitForAll>
    80004850:	faf43c23          	sd	a5,-72(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004854:	fa840613          	addi	a2,s0,-88
    80004858:	00000597          	auipc	a1,0x0
    8000485c:	d6c58593          	addi	a1,a1,-660 # 800045c4 <_Z8consumerPv>
    80004860:	fc040513          	addi	a0,s0,-64
    80004864:	ffffd097          	auipc	ra,0xffffd
    80004868:	a40080e7          	jalr	-1472(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    8000486c:	00000493          	li	s1,0
    80004870:	00200793          	li	a5,2
    80004874:	0697c063          	blt	a5,s1,800048d4 <_Z22producerConsumer_C_APIv+0x158>
        data[i].id = i;
    80004878:	00149613          	slli	a2,s1,0x1
    8000487c:	009607b3          	add	a5,a2,s1
    80004880:	00379793          	slli	a5,a5,0x3
    80004884:	fe040713          	addi	a4,s0,-32
    80004888:	00f707b3          	add	a5,a4,a5
    8000488c:	f897a023          	sw	s1,-128(a5)
        data[i].buffer = buffer;
    80004890:	f927b423          	sd	s2,-120(a5)
        data[i].wait = waitForAll;
    80004894:	00007717          	auipc	a4,0x7
    80004898:	19c73703          	ld	a4,412(a4) # 8000ba30 <waitForAll>
    8000489c:	f8e7b823          	sd	a4,-112(a5)
        //todo changed
        //thread_create(threads + i,
        //              i > 0 ? producer : producerKeyboard,
        //              data + i);

        thread_create(threads + i,
    800048a0:	00349793          	slli	a5,s1,0x3
                      producer ,
                      data + i);
    800048a4:	00960633          	add	a2,a2,s1
    800048a8:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800048ac:	f6040713          	addi	a4,s0,-160
    800048b0:	00c70633          	add	a2,a4,a2
    800048b4:	00000597          	auipc	a1,0x0
    800048b8:	bcc58593          	addi	a1,a1,-1076 # 80004480 <_Z8producerPv>
    800048bc:	fc840513          	addi	a0,s0,-56
    800048c0:	00f50533          	add	a0,a0,a5
    800048c4:	ffffd097          	auipc	ra,0xffffd
    800048c8:	9e0080e7          	jalr	-1568(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    800048cc:	0014849b          	addiw	s1,s1,1
    800048d0:	fa1ff06f          	j	80004870 <_Z22producerConsumer_C_APIv+0xf4>
    }

    thread_dispatch();
    800048d4:	ffffd097          	auipc	ra,0xffffd
    800048d8:	a50080e7          	jalr	-1456(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    800048dc:	00000493          	li	s1,0
    800048e0:	0180006f          	j	800048f8 <_Z22producerConsumer_C_APIv+0x17c>
        sem_wait(waitForAll);
    800048e4:	00007517          	auipc	a0,0x7
    800048e8:	14c53503          	ld	a0,332(a0) # 8000ba30 <waitForAll>
    800048ec:	ffffd097          	auipc	ra,0xffffd
    800048f0:	ae4080e7          	jalr	-1308(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    800048f4:	0014849b          	addiw	s1,s1,1
    800048f8:	00300793          	li	a5,3
    800048fc:	fe97d4e3          	bge	a5,s1,800048e4 <_Z22producerConsumer_C_APIv+0x168>
    }

    sem_close(waitForAll);
    80004900:	00007517          	auipc	a0,0x7
    80004904:	13053503          	ld	a0,304(a0) # 8000ba30 <waitForAll>
    80004908:	ffffd097          	auipc	ra,0xffffd
    8000490c:	a9c080e7          	jalr	-1380(ra) # 800013a4 <sem_close>
}
    80004910:	09813083          	ld	ra,152(sp)
    80004914:	09013403          	ld	s0,144(sp)
    80004918:	08813483          	ld	s1,136(sp)
    8000491c:	08013903          	ld	s2,128(sp)
    80004920:	0a010113          	addi	sp,sp,160
    80004924:	00008067          	ret
    80004928:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000492c:	00090513          	mv	a0,s2
    80004930:	fffff097          	auipc	ra,0xfffff
    80004934:	a1c080e7          	jalr	-1508(ra) # 8000334c <_ZdlPv>
    80004938:	00048513          	mv	a0,s1
    8000493c:	00008097          	auipc	ra,0x8
    80004940:	1dc080e7          	jalr	476(ra) # 8000cb18 <_Unwind_Resume>

0000000080004944 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004944:	fe010113          	addi	sp,sp,-32
    80004948:	00113c23          	sd	ra,24(sp)
    8000494c:	00813823          	sd	s0,16(sp)
    80004950:	00913423          	sd	s1,8(sp)
    80004954:	01213023          	sd	s2,0(sp)
    80004958:	02010413          	addi	s0,sp,32
    8000495c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004960:	00100793          	li	a5,1
    80004964:	02a7f863          	bgeu	a5,a0,80004994 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004968:	00a00793          	li	a5,10
    8000496c:	02f577b3          	remu	a5,a0,a5
    80004970:	02078e63          	beqz	a5,800049ac <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004974:	fff48513          	addi	a0,s1,-1
    80004978:	00000097          	auipc	ra,0x0
    8000497c:	fcc080e7          	jalr	-52(ra) # 80004944 <_ZL9fibonaccim>
    80004980:	00050913          	mv	s2,a0
    80004984:	ffe48513          	addi	a0,s1,-2
    80004988:	00000097          	auipc	ra,0x0
    8000498c:	fbc080e7          	jalr	-68(ra) # 80004944 <_ZL9fibonaccim>
    80004990:	00a90533          	add	a0,s2,a0
}
    80004994:	01813083          	ld	ra,24(sp)
    80004998:	01013403          	ld	s0,16(sp)
    8000499c:	00813483          	ld	s1,8(sp)
    800049a0:	00013903          	ld	s2,0(sp)
    800049a4:	02010113          	addi	sp,sp,32
    800049a8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800049ac:	ffffd097          	auipc	ra,0xffffd
    800049b0:	978080e7          	jalr	-1672(ra) # 80001324 <thread_dispatch>
    800049b4:	fc1ff06f          	j	80004974 <_ZL9fibonaccim+0x30>

00000000800049b8 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    800049b8:	fe010113          	addi	sp,sp,-32
    800049bc:	00113c23          	sd	ra,24(sp)
    800049c0:	00813823          	sd	s0,16(sp)
    800049c4:	00913423          	sd	s1,8(sp)
    800049c8:	01213023          	sd	s2,0(sp)
    800049cc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800049d0:	00000913          	li	s2,0
    800049d4:	0380006f          	j	80004a0c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800049d8:	ffffd097          	auipc	ra,0xffffd
    800049dc:	94c080e7          	jalr	-1716(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800049e0:	00148493          	addi	s1,s1,1
    800049e4:	000027b7          	lui	a5,0x2
    800049e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800049ec:	0097ee63          	bltu	a5,s1,80004a08 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800049f0:	00000713          	li	a4,0
    800049f4:	000077b7          	lui	a5,0x7
    800049f8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800049fc:	fce7eee3          	bltu	a5,a4,800049d8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004a00:	00170713          	addi	a4,a4,1
    80004a04:	ff1ff06f          	j	800049f4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004a08:	00190913          	addi	s2,s2,1
    80004a0c:	00900793          	li	a5,9
    80004a10:	0527e063          	bltu	a5,s2,80004a50 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004a14:	00005517          	auipc	a0,0x5
    80004a18:	9c450513          	addi	a0,a0,-1596 # 800093d8 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    80004a1c:	00001097          	auipc	ra,0x1
    80004a20:	e64080e7          	jalr	-412(ra) # 80005880 <_Z11printStringPKc>
    80004a24:	00000613          	li	a2,0
    80004a28:	00a00593          	li	a1,10
    80004a2c:	0009051b          	sext.w	a0,s2
    80004a30:	00001097          	auipc	ra,0x1
    80004a34:	fe8080e7          	jalr	-24(ra) # 80005a18 <_Z8printIntiii>
    80004a38:	00004517          	auipc	a0,0x4
    80004a3c:	6d850513          	addi	a0,a0,1752 # 80009110 <CONSOLE_STATUS+0x100>
    80004a40:	00001097          	auipc	ra,0x1
    80004a44:	e40080e7          	jalr	-448(ra) # 80005880 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004a48:	00000493          	li	s1,0
    80004a4c:	f99ff06f          	j	800049e4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004a50:	00005517          	auipc	a0,0x5
    80004a54:	99050513          	addi	a0,a0,-1648 # 800093e0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80004a58:	00001097          	auipc	ra,0x1
    80004a5c:	e28080e7          	jalr	-472(ra) # 80005880 <_Z11printStringPKc>
    finishedA = true;
    80004a60:	00100793          	li	a5,1
    80004a64:	00007717          	auipc	a4,0x7
    80004a68:	fcf70a23          	sb	a5,-44(a4) # 8000ba38 <_ZL9finishedA>
}
    80004a6c:	01813083          	ld	ra,24(sp)
    80004a70:	01013403          	ld	s0,16(sp)
    80004a74:	00813483          	ld	s1,8(sp)
    80004a78:	00013903          	ld	s2,0(sp)
    80004a7c:	02010113          	addi	sp,sp,32
    80004a80:	00008067          	ret

0000000080004a84 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004a84:	fe010113          	addi	sp,sp,-32
    80004a88:	00113c23          	sd	ra,24(sp)
    80004a8c:	00813823          	sd	s0,16(sp)
    80004a90:	00913423          	sd	s1,8(sp)
    80004a94:	01213023          	sd	s2,0(sp)
    80004a98:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004a9c:	00000913          	li	s2,0
    80004aa0:	0380006f          	j	80004ad8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004aa4:	ffffd097          	auipc	ra,0xffffd
    80004aa8:	880080e7          	jalr	-1920(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004aac:	00148493          	addi	s1,s1,1
    80004ab0:	000027b7          	lui	a5,0x2
    80004ab4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004ab8:	0097ee63          	bltu	a5,s1,80004ad4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004abc:	00000713          	li	a4,0
    80004ac0:	000077b7          	lui	a5,0x7
    80004ac4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004ac8:	fce7eee3          	bltu	a5,a4,80004aa4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004acc:	00170713          	addi	a4,a4,1
    80004ad0:	ff1ff06f          	j	80004ac0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004ad4:	00190913          	addi	s2,s2,1
    80004ad8:	00f00793          	li	a5,15
    80004adc:	0527e063          	bltu	a5,s2,80004b1c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004ae0:	00005517          	auipc	a0,0x5
    80004ae4:	91050513          	addi	a0,a0,-1776 # 800093f0 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    80004ae8:	00001097          	auipc	ra,0x1
    80004aec:	d98080e7          	jalr	-616(ra) # 80005880 <_Z11printStringPKc>
    80004af0:	00000613          	li	a2,0
    80004af4:	00a00593          	li	a1,10
    80004af8:	0009051b          	sext.w	a0,s2
    80004afc:	00001097          	auipc	ra,0x1
    80004b00:	f1c080e7          	jalr	-228(ra) # 80005a18 <_Z8printIntiii>
    80004b04:	00004517          	auipc	a0,0x4
    80004b08:	60c50513          	addi	a0,a0,1548 # 80009110 <CONSOLE_STATUS+0x100>
    80004b0c:	00001097          	auipc	ra,0x1
    80004b10:	d74080e7          	jalr	-652(ra) # 80005880 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004b14:	00000493          	li	s1,0
    80004b18:	f99ff06f          	j	80004ab0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004b1c:	00005517          	auipc	a0,0x5
    80004b20:	8dc50513          	addi	a0,a0,-1828 # 800093f8 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80004b24:	00001097          	auipc	ra,0x1
    80004b28:	d5c080e7          	jalr	-676(ra) # 80005880 <_Z11printStringPKc>
    finishedB = true;
    80004b2c:	00100793          	li	a5,1
    80004b30:	00007717          	auipc	a4,0x7
    80004b34:	f0f704a3          	sb	a5,-247(a4) # 8000ba39 <_ZL9finishedB>
    thread_dispatch();
    80004b38:	ffffc097          	auipc	ra,0xffffc
    80004b3c:	7ec080e7          	jalr	2028(ra) # 80001324 <thread_dispatch>
}
    80004b40:	01813083          	ld	ra,24(sp)
    80004b44:	01013403          	ld	s0,16(sp)
    80004b48:	00813483          	ld	s1,8(sp)
    80004b4c:	00013903          	ld	s2,0(sp)
    80004b50:	02010113          	addi	sp,sp,32
    80004b54:	00008067          	ret

0000000080004b58 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004b58:	fe010113          	addi	sp,sp,-32
    80004b5c:	00113c23          	sd	ra,24(sp)
    80004b60:	00813823          	sd	s0,16(sp)
    80004b64:	00913423          	sd	s1,8(sp)
    80004b68:	01213023          	sd	s2,0(sp)
    80004b6c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004b70:	00000493          	li	s1,0
    80004b74:	0400006f          	j	80004bb4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004b78:	00005517          	auipc	a0,0x5
    80004b7c:	89050513          	addi	a0,a0,-1904 # 80009408 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004b80:	00001097          	auipc	ra,0x1
    80004b84:	d00080e7          	jalr	-768(ra) # 80005880 <_Z11printStringPKc>
    80004b88:	00000613          	li	a2,0
    80004b8c:	00a00593          	li	a1,10
    80004b90:	00048513          	mv	a0,s1
    80004b94:	00001097          	auipc	ra,0x1
    80004b98:	e84080e7          	jalr	-380(ra) # 80005a18 <_Z8printIntiii>
    80004b9c:	00004517          	auipc	a0,0x4
    80004ba0:	57450513          	addi	a0,a0,1396 # 80009110 <CONSOLE_STATUS+0x100>
    80004ba4:	00001097          	auipc	ra,0x1
    80004ba8:	cdc080e7          	jalr	-804(ra) # 80005880 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004bac:	0014849b          	addiw	s1,s1,1
    80004bb0:	0ff4f493          	andi	s1,s1,255
    80004bb4:	00200793          	li	a5,2
    80004bb8:	fc97f0e3          	bgeu	a5,s1,80004b78 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004bbc:	00005517          	auipc	a0,0x5
    80004bc0:	85450513          	addi	a0,a0,-1964 # 80009410 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80004bc4:	00001097          	auipc	ra,0x1
    80004bc8:	cbc080e7          	jalr	-836(ra) # 80005880 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004bcc:	00700313          	li	t1,7
    thread_dispatch();
    80004bd0:	ffffc097          	auipc	ra,0xffffc
    80004bd4:	754080e7          	jalr	1876(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004bd8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004bdc:	00005517          	auipc	a0,0x5
    80004be0:	84450513          	addi	a0,a0,-1980 # 80009420 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80004be4:	00001097          	auipc	ra,0x1
    80004be8:	c9c080e7          	jalr	-868(ra) # 80005880 <_Z11printStringPKc>
    80004bec:	00000613          	li	a2,0
    80004bf0:	00a00593          	li	a1,10
    80004bf4:	0009051b          	sext.w	a0,s2
    80004bf8:	00001097          	auipc	ra,0x1
    80004bfc:	e20080e7          	jalr	-480(ra) # 80005a18 <_Z8printIntiii>
    80004c00:	00004517          	auipc	a0,0x4
    80004c04:	51050513          	addi	a0,a0,1296 # 80009110 <CONSOLE_STATUS+0x100>
    80004c08:	00001097          	auipc	ra,0x1
    80004c0c:	c78080e7          	jalr	-904(ra) # 80005880 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004c10:	00c00513          	li	a0,12
    80004c14:	00000097          	auipc	ra,0x0
    80004c18:	d30080e7          	jalr	-720(ra) # 80004944 <_ZL9fibonaccim>
    80004c1c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004c20:	00005517          	auipc	a0,0x5
    80004c24:	80850513          	addi	a0,a0,-2040 # 80009428 <_ZZN5Riscv12printIntegerEmE6digits+0x168>
    80004c28:	00001097          	auipc	ra,0x1
    80004c2c:	c58080e7          	jalr	-936(ra) # 80005880 <_Z11printStringPKc>
    80004c30:	00000613          	li	a2,0
    80004c34:	00a00593          	li	a1,10
    80004c38:	0009051b          	sext.w	a0,s2
    80004c3c:	00001097          	auipc	ra,0x1
    80004c40:	ddc080e7          	jalr	-548(ra) # 80005a18 <_Z8printIntiii>
    80004c44:	00004517          	auipc	a0,0x4
    80004c48:	4cc50513          	addi	a0,a0,1228 # 80009110 <CONSOLE_STATUS+0x100>
    80004c4c:	00001097          	auipc	ra,0x1
    80004c50:	c34080e7          	jalr	-972(ra) # 80005880 <_Z11printStringPKc>
    80004c54:	0400006f          	j	80004c94 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004c58:	00004517          	auipc	a0,0x4
    80004c5c:	7b050513          	addi	a0,a0,1968 # 80009408 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004c60:	00001097          	auipc	ra,0x1
    80004c64:	c20080e7          	jalr	-992(ra) # 80005880 <_Z11printStringPKc>
    80004c68:	00000613          	li	a2,0
    80004c6c:	00a00593          	li	a1,10
    80004c70:	00048513          	mv	a0,s1
    80004c74:	00001097          	auipc	ra,0x1
    80004c78:	da4080e7          	jalr	-604(ra) # 80005a18 <_Z8printIntiii>
    80004c7c:	00004517          	auipc	a0,0x4
    80004c80:	49450513          	addi	a0,a0,1172 # 80009110 <CONSOLE_STATUS+0x100>
    80004c84:	00001097          	auipc	ra,0x1
    80004c88:	bfc080e7          	jalr	-1028(ra) # 80005880 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004c8c:	0014849b          	addiw	s1,s1,1
    80004c90:	0ff4f493          	andi	s1,s1,255
    80004c94:	00500793          	li	a5,5
    80004c98:	fc97f0e3          	bgeu	a5,s1,80004c58 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004c9c:	00004517          	auipc	a0,0x4
    80004ca0:	74450513          	addi	a0,a0,1860 # 800093e0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80004ca4:	00001097          	auipc	ra,0x1
    80004ca8:	bdc080e7          	jalr	-1060(ra) # 80005880 <_Z11printStringPKc>
    finishedC = true;
    80004cac:	00100793          	li	a5,1
    80004cb0:	00007717          	auipc	a4,0x7
    80004cb4:	d8f70523          	sb	a5,-630(a4) # 8000ba3a <_ZL9finishedC>
    thread_dispatch();
    80004cb8:	ffffc097          	auipc	ra,0xffffc
    80004cbc:	66c080e7          	jalr	1644(ra) # 80001324 <thread_dispatch>
}
    80004cc0:	01813083          	ld	ra,24(sp)
    80004cc4:	01013403          	ld	s0,16(sp)
    80004cc8:	00813483          	ld	s1,8(sp)
    80004ccc:	00013903          	ld	s2,0(sp)
    80004cd0:	02010113          	addi	sp,sp,32
    80004cd4:	00008067          	ret

0000000080004cd8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004cd8:	fe010113          	addi	sp,sp,-32
    80004cdc:	00113c23          	sd	ra,24(sp)
    80004ce0:	00813823          	sd	s0,16(sp)
    80004ce4:	00913423          	sd	s1,8(sp)
    80004ce8:	01213023          	sd	s2,0(sp)
    80004cec:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004cf0:	00a00493          	li	s1,10
    80004cf4:	0400006f          	j	80004d34 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004cf8:	00004517          	auipc	a0,0x4
    80004cfc:	74050513          	addi	a0,a0,1856 # 80009438 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80004d00:	00001097          	auipc	ra,0x1
    80004d04:	b80080e7          	jalr	-1152(ra) # 80005880 <_Z11printStringPKc>
    80004d08:	00000613          	li	a2,0
    80004d0c:	00a00593          	li	a1,10
    80004d10:	00048513          	mv	a0,s1
    80004d14:	00001097          	auipc	ra,0x1
    80004d18:	d04080e7          	jalr	-764(ra) # 80005a18 <_Z8printIntiii>
    80004d1c:	00004517          	auipc	a0,0x4
    80004d20:	3f450513          	addi	a0,a0,1012 # 80009110 <CONSOLE_STATUS+0x100>
    80004d24:	00001097          	auipc	ra,0x1
    80004d28:	b5c080e7          	jalr	-1188(ra) # 80005880 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004d2c:	0014849b          	addiw	s1,s1,1
    80004d30:	0ff4f493          	andi	s1,s1,255
    80004d34:	00c00793          	li	a5,12
    80004d38:	fc97f0e3          	bgeu	a5,s1,80004cf8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004d3c:	00004517          	auipc	a0,0x4
    80004d40:	70450513          	addi	a0,a0,1796 # 80009440 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    80004d44:	00001097          	auipc	ra,0x1
    80004d48:	b3c080e7          	jalr	-1220(ra) # 80005880 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004d4c:	00500313          	li	t1,5
    thread_dispatch();
    80004d50:	ffffc097          	auipc	ra,0xffffc
    80004d54:	5d4080e7          	jalr	1492(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004d58:	01000513          	li	a0,16
    80004d5c:	00000097          	auipc	ra,0x0
    80004d60:	be8080e7          	jalr	-1048(ra) # 80004944 <_ZL9fibonaccim>
    80004d64:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004d68:	00004517          	auipc	a0,0x4
    80004d6c:	6e850513          	addi	a0,a0,1768 # 80009450 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    80004d70:	00001097          	auipc	ra,0x1
    80004d74:	b10080e7          	jalr	-1264(ra) # 80005880 <_Z11printStringPKc>
    80004d78:	00000613          	li	a2,0
    80004d7c:	00a00593          	li	a1,10
    80004d80:	0009051b          	sext.w	a0,s2
    80004d84:	00001097          	auipc	ra,0x1
    80004d88:	c94080e7          	jalr	-876(ra) # 80005a18 <_Z8printIntiii>
    80004d8c:	00004517          	auipc	a0,0x4
    80004d90:	38450513          	addi	a0,a0,900 # 80009110 <CONSOLE_STATUS+0x100>
    80004d94:	00001097          	auipc	ra,0x1
    80004d98:	aec080e7          	jalr	-1300(ra) # 80005880 <_Z11printStringPKc>
    80004d9c:	0400006f          	j	80004ddc <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004da0:	00004517          	auipc	a0,0x4
    80004da4:	69850513          	addi	a0,a0,1688 # 80009438 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80004da8:	00001097          	auipc	ra,0x1
    80004dac:	ad8080e7          	jalr	-1320(ra) # 80005880 <_Z11printStringPKc>
    80004db0:	00000613          	li	a2,0
    80004db4:	00a00593          	li	a1,10
    80004db8:	00048513          	mv	a0,s1
    80004dbc:	00001097          	auipc	ra,0x1
    80004dc0:	c5c080e7          	jalr	-932(ra) # 80005a18 <_Z8printIntiii>
    80004dc4:	00004517          	auipc	a0,0x4
    80004dc8:	34c50513          	addi	a0,a0,844 # 80009110 <CONSOLE_STATUS+0x100>
    80004dcc:	00001097          	auipc	ra,0x1
    80004dd0:	ab4080e7          	jalr	-1356(ra) # 80005880 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004dd4:	0014849b          	addiw	s1,s1,1
    80004dd8:	0ff4f493          	andi	s1,s1,255
    80004ddc:	00f00793          	li	a5,15
    80004de0:	fc97f0e3          	bgeu	a5,s1,80004da0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004de4:	00004517          	auipc	a0,0x4
    80004de8:	67c50513          	addi	a0,a0,1660 # 80009460 <_ZZN5Riscv12printIntegerEmE6digits+0x1a0>
    80004dec:	00001097          	auipc	ra,0x1
    80004df0:	a94080e7          	jalr	-1388(ra) # 80005880 <_Z11printStringPKc>
    finishedD = true;
    80004df4:	00100793          	li	a5,1
    80004df8:	00007717          	auipc	a4,0x7
    80004dfc:	c4f701a3          	sb	a5,-957(a4) # 8000ba3b <_ZL9finishedD>
    thread_dispatch();
    80004e00:	ffffc097          	auipc	ra,0xffffc
    80004e04:	524080e7          	jalr	1316(ra) # 80001324 <thread_dispatch>
}
    80004e08:	01813083          	ld	ra,24(sp)
    80004e0c:	01013403          	ld	s0,16(sp)
    80004e10:	00813483          	ld	s1,8(sp)
    80004e14:	00013903          	ld	s2,0(sp)
    80004e18:	02010113          	addi	sp,sp,32
    80004e1c:	00008067          	ret

0000000080004e20 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004e20:	fc010113          	addi	sp,sp,-64
    80004e24:	02113c23          	sd	ra,56(sp)
    80004e28:	02813823          	sd	s0,48(sp)
    80004e2c:	02913423          	sd	s1,40(sp)
    80004e30:	03213023          	sd	s2,32(sp)
    80004e34:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004e38:	02000513          	li	a0,32
    80004e3c:	ffffe097          	auipc	ra,0xffffe
    80004e40:	4e8080e7          	jalr	1256(ra) # 80003324 <_Znwm>
    80004e44:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80004e48:	ffffe097          	auipc	ra,0xffffe
    80004e4c:	6a8080e7          	jalr	1704(ra) # 800034f0 <_ZN6ThreadC1Ev>
    80004e50:	00007797          	auipc	a5,0x7
    80004e54:	a2078793          	addi	a5,a5,-1504 # 8000b870 <_ZTV7WorkerA+0x10>
    80004e58:	00f4b023          	sd	a5,0(s1)
    80004e5c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004e60:	00004517          	auipc	a0,0x4
    80004e64:	61050513          	addi	a0,a0,1552 # 80009470 <_ZZN5Riscv12printIntegerEmE6digits+0x1b0>
    80004e68:	00001097          	auipc	ra,0x1
    80004e6c:	a18080e7          	jalr	-1512(ra) # 80005880 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004e70:	02000513          	li	a0,32
    80004e74:	ffffe097          	auipc	ra,0xffffe
    80004e78:	4b0080e7          	jalr	1200(ra) # 80003324 <_Znwm>
    80004e7c:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    80004e80:	ffffe097          	auipc	ra,0xffffe
    80004e84:	670080e7          	jalr	1648(ra) # 800034f0 <_ZN6ThreadC1Ev>
    80004e88:	00007797          	auipc	a5,0x7
    80004e8c:	a1078793          	addi	a5,a5,-1520 # 8000b898 <_ZTV7WorkerB+0x10>
    80004e90:	00f4b023          	sd	a5,0(s1)
    80004e94:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004e98:	00004517          	auipc	a0,0x4
    80004e9c:	5f050513          	addi	a0,a0,1520 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0x1c8>
    80004ea0:	00001097          	auipc	ra,0x1
    80004ea4:	9e0080e7          	jalr	-1568(ra) # 80005880 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004ea8:	02000513          	li	a0,32
    80004eac:	ffffe097          	auipc	ra,0xffffe
    80004eb0:	478080e7          	jalr	1144(ra) # 80003324 <_Znwm>
    80004eb4:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    80004eb8:	ffffe097          	auipc	ra,0xffffe
    80004ebc:	638080e7          	jalr	1592(ra) # 800034f0 <_ZN6ThreadC1Ev>
    80004ec0:	00007797          	auipc	a5,0x7
    80004ec4:	a0078793          	addi	a5,a5,-1536 # 8000b8c0 <_ZTV7WorkerC+0x10>
    80004ec8:	00f4b023          	sd	a5,0(s1)
    80004ecc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004ed0:	00004517          	auipc	a0,0x4
    80004ed4:	5d050513          	addi	a0,a0,1488 # 800094a0 <_ZZN5Riscv12printIntegerEmE6digits+0x1e0>
    80004ed8:	00001097          	auipc	ra,0x1
    80004edc:	9a8080e7          	jalr	-1624(ra) # 80005880 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004ee0:	02000513          	li	a0,32
    80004ee4:	ffffe097          	auipc	ra,0xffffe
    80004ee8:	440080e7          	jalr	1088(ra) # 80003324 <_Znwm>
    80004eec:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80004ef0:	ffffe097          	auipc	ra,0xffffe
    80004ef4:	600080e7          	jalr	1536(ra) # 800034f0 <_ZN6ThreadC1Ev>
    80004ef8:	00007797          	auipc	a5,0x7
    80004efc:	9f078793          	addi	a5,a5,-1552 # 8000b8e8 <_ZTV7WorkerD+0x10>
    80004f00:	00f4b023          	sd	a5,0(s1)
    80004f04:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004f08:	00004517          	auipc	a0,0x4
    80004f0c:	5b050513          	addi	a0,a0,1456 # 800094b8 <_ZZN5Riscv12printIntegerEmE6digits+0x1f8>
    80004f10:	00001097          	auipc	ra,0x1
    80004f14:	970080e7          	jalr	-1680(ra) # 80005880 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004f18:	00000493          	li	s1,0
    80004f1c:	00300793          	li	a5,3
    80004f20:	0297c663          	blt	a5,s1,80004f4c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004f24:	00349793          	slli	a5,s1,0x3
    80004f28:	fe040713          	addi	a4,s0,-32
    80004f2c:	00f707b3          	add	a5,a4,a5
    80004f30:	fe07b503          	ld	a0,-32(a5)
    80004f34:	ffffe097          	auipc	ra,0xffffe
    80004f38:	4c0080e7          	jalr	1216(ra) # 800033f4 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004f3c:	0014849b          	addiw	s1,s1,1
    80004f40:	fddff06f          	j	80004f1c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004f44:	ffffe097          	auipc	ra,0xffffe
    80004f48:	4f4080e7          	jalr	1268(ra) # 80003438 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004f4c:	00007797          	auipc	a5,0x7
    80004f50:	aec7c783          	lbu	a5,-1300(a5) # 8000ba38 <_ZL9finishedA>
    80004f54:	fe0788e3          	beqz	a5,80004f44 <_Z20Threads_CPP_API_testv+0x124>
    80004f58:	00007797          	auipc	a5,0x7
    80004f5c:	ae17c783          	lbu	a5,-1311(a5) # 8000ba39 <_ZL9finishedB>
    80004f60:	fe0782e3          	beqz	a5,80004f44 <_Z20Threads_CPP_API_testv+0x124>
    80004f64:	00007797          	auipc	a5,0x7
    80004f68:	ad67c783          	lbu	a5,-1322(a5) # 8000ba3a <_ZL9finishedC>
    80004f6c:	fc078ce3          	beqz	a5,80004f44 <_Z20Threads_CPP_API_testv+0x124>
    80004f70:	00007797          	auipc	a5,0x7
    80004f74:	acb7c783          	lbu	a5,-1333(a5) # 8000ba3b <_ZL9finishedD>
    80004f78:	fc0786e3          	beqz	a5,80004f44 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80004f7c:	fc040493          	addi	s1,s0,-64
    80004f80:	0080006f          	j	80004f88 <_Z20Threads_CPP_API_testv+0x168>
    80004f84:	00848493          	addi	s1,s1,8
    80004f88:	fe040793          	addi	a5,s0,-32
    80004f8c:	08f48663          	beq	s1,a5,80005018 <_Z20Threads_CPP_API_testv+0x1f8>
    80004f90:	0004b503          	ld	a0,0(s1)
    80004f94:	fe0508e3          	beqz	a0,80004f84 <_Z20Threads_CPP_API_testv+0x164>
    80004f98:	00053783          	ld	a5,0(a0)
    80004f9c:	0087b783          	ld	a5,8(a5)
    80004fa0:	000780e7          	jalr	a5
    80004fa4:	fe1ff06f          	j	80004f84 <_Z20Threads_CPP_API_testv+0x164>
    80004fa8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004fac:	00048513          	mv	a0,s1
    80004fb0:	ffffe097          	auipc	ra,0xffffe
    80004fb4:	39c080e7          	jalr	924(ra) # 8000334c <_ZdlPv>
    80004fb8:	00090513          	mv	a0,s2
    80004fbc:	00008097          	auipc	ra,0x8
    80004fc0:	b5c080e7          	jalr	-1188(ra) # 8000cb18 <_Unwind_Resume>
    80004fc4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004fc8:	00048513          	mv	a0,s1
    80004fcc:	ffffe097          	auipc	ra,0xffffe
    80004fd0:	380080e7          	jalr	896(ra) # 8000334c <_ZdlPv>
    80004fd4:	00090513          	mv	a0,s2
    80004fd8:	00008097          	auipc	ra,0x8
    80004fdc:	b40080e7          	jalr	-1216(ra) # 8000cb18 <_Unwind_Resume>
    80004fe0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004fe4:	00048513          	mv	a0,s1
    80004fe8:	ffffe097          	auipc	ra,0xffffe
    80004fec:	364080e7          	jalr	868(ra) # 8000334c <_ZdlPv>
    80004ff0:	00090513          	mv	a0,s2
    80004ff4:	00008097          	auipc	ra,0x8
    80004ff8:	b24080e7          	jalr	-1244(ra) # 8000cb18 <_Unwind_Resume>
    80004ffc:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80005000:	00048513          	mv	a0,s1
    80005004:	ffffe097          	auipc	ra,0xffffe
    80005008:	348080e7          	jalr	840(ra) # 8000334c <_ZdlPv>
    8000500c:	00090513          	mv	a0,s2
    80005010:	00008097          	auipc	ra,0x8
    80005014:	b08080e7          	jalr	-1272(ra) # 8000cb18 <_Unwind_Resume>
    80005018:	03813083          	ld	ra,56(sp)
    8000501c:	03013403          	ld	s0,48(sp)
    80005020:	02813483          	ld	s1,40(sp)
    80005024:	02013903          	ld	s2,32(sp)
    80005028:	04010113          	addi	sp,sp,64
    8000502c:	00008067          	ret

0000000080005030 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80005030:	ff010113          	addi	sp,sp,-16
    80005034:	00113423          	sd	ra,8(sp)
    80005038:	00813023          	sd	s0,0(sp)
    8000503c:	01010413          	addi	s0,sp,16
    80005040:	00007797          	auipc	a5,0x7
    80005044:	83078793          	addi	a5,a5,-2000 # 8000b870 <_ZTV7WorkerA+0x10>
    80005048:	00f53023          	sd	a5,0(a0)
    8000504c:	ffffe097          	auipc	ra,0xffffe
    80005050:	21c080e7          	jalr	540(ra) # 80003268 <_ZN6ThreadD1Ev>
    80005054:	00813083          	ld	ra,8(sp)
    80005058:	00013403          	ld	s0,0(sp)
    8000505c:	01010113          	addi	sp,sp,16
    80005060:	00008067          	ret

0000000080005064 <_ZN7WorkerAD0Ev>:
    80005064:	fe010113          	addi	sp,sp,-32
    80005068:	00113c23          	sd	ra,24(sp)
    8000506c:	00813823          	sd	s0,16(sp)
    80005070:	00913423          	sd	s1,8(sp)
    80005074:	02010413          	addi	s0,sp,32
    80005078:	00050493          	mv	s1,a0
    8000507c:	00006797          	auipc	a5,0x6
    80005080:	7f478793          	addi	a5,a5,2036 # 8000b870 <_ZTV7WorkerA+0x10>
    80005084:	00f53023          	sd	a5,0(a0)
    80005088:	ffffe097          	auipc	ra,0xffffe
    8000508c:	1e0080e7          	jalr	480(ra) # 80003268 <_ZN6ThreadD1Ev>
    80005090:	00048513          	mv	a0,s1
    80005094:	ffffe097          	auipc	ra,0xffffe
    80005098:	2b8080e7          	jalr	696(ra) # 8000334c <_ZdlPv>
    8000509c:	01813083          	ld	ra,24(sp)
    800050a0:	01013403          	ld	s0,16(sp)
    800050a4:	00813483          	ld	s1,8(sp)
    800050a8:	02010113          	addi	sp,sp,32
    800050ac:	00008067          	ret

00000000800050b0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800050b0:	ff010113          	addi	sp,sp,-16
    800050b4:	00113423          	sd	ra,8(sp)
    800050b8:	00813023          	sd	s0,0(sp)
    800050bc:	01010413          	addi	s0,sp,16
    800050c0:	00006797          	auipc	a5,0x6
    800050c4:	7d878793          	addi	a5,a5,2008 # 8000b898 <_ZTV7WorkerB+0x10>
    800050c8:	00f53023          	sd	a5,0(a0)
    800050cc:	ffffe097          	auipc	ra,0xffffe
    800050d0:	19c080e7          	jalr	412(ra) # 80003268 <_ZN6ThreadD1Ev>
    800050d4:	00813083          	ld	ra,8(sp)
    800050d8:	00013403          	ld	s0,0(sp)
    800050dc:	01010113          	addi	sp,sp,16
    800050e0:	00008067          	ret

00000000800050e4 <_ZN7WorkerBD0Ev>:
    800050e4:	fe010113          	addi	sp,sp,-32
    800050e8:	00113c23          	sd	ra,24(sp)
    800050ec:	00813823          	sd	s0,16(sp)
    800050f0:	00913423          	sd	s1,8(sp)
    800050f4:	02010413          	addi	s0,sp,32
    800050f8:	00050493          	mv	s1,a0
    800050fc:	00006797          	auipc	a5,0x6
    80005100:	79c78793          	addi	a5,a5,1948 # 8000b898 <_ZTV7WorkerB+0x10>
    80005104:	00f53023          	sd	a5,0(a0)
    80005108:	ffffe097          	auipc	ra,0xffffe
    8000510c:	160080e7          	jalr	352(ra) # 80003268 <_ZN6ThreadD1Ev>
    80005110:	00048513          	mv	a0,s1
    80005114:	ffffe097          	auipc	ra,0xffffe
    80005118:	238080e7          	jalr	568(ra) # 8000334c <_ZdlPv>
    8000511c:	01813083          	ld	ra,24(sp)
    80005120:	01013403          	ld	s0,16(sp)
    80005124:	00813483          	ld	s1,8(sp)
    80005128:	02010113          	addi	sp,sp,32
    8000512c:	00008067          	ret

0000000080005130 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80005130:	ff010113          	addi	sp,sp,-16
    80005134:	00113423          	sd	ra,8(sp)
    80005138:	00813023          	sd	s0,0(sp)
    8000513c:	01010413          	addi	s0,sp,16
    80005140:	00006797          	auipc	a5,0x6
    80005144:	78078793          	addi	a5,a5,1920 # 8000b8c0 <_ZTV7WorkerC+0x10>
    80005148:	00f53023          	sd	a5,0(a0)
    8000514c:	ffffe097          	auipc	ra,0xffffe
    80005150:	11c080e7          	jalr	284(ra) # 80003268 <_ZN6ThreadD1Ev>
    80005154:	00813083          	ld	ra,8(sp)
    80005158:	00013403          	ld	s0,0(sp)
    8000515c:	01010113          	addi	sp,sp,16
    80005160:	00008067          	ret

0000000080005164 <_ZN7WorkerCD0Ev>:
    80005164:	fe010113          	addi	sp,sp,-32
    80005168:	00113c23          	sd	ra,24(sp)
    8000516c:	00813823          	sd	s0,16(sp)
    80005170:	00913423          	sd	s1,8(sp)
    80005174:	02010413          	addi	s0,sp,32
    80005178:	00050493          	mv	s1,a0
    8000517c:	00006797          	auipc	a5,0x6
    80005180:	74478793          	addi	a5,a5,1860 # 8000b8c0 <_ZTV7WorkerC+0x10>
    80005184:	00f53023          	sd	a5,0(a0)
    80005188:	ffffe097          	auipc	ra,0xffffe
    8000518c:	0e0080e7          	jalr	224(ra) # 80003268 <_ZN6ThreadD1Ev>
    80005190:	00048513          	mv	a0,s1
    80005194:	ffffe097          	auipc	ra,0xffffe
    80005198:	1b8080e7          	jalr	440(ra) # 8000334c <_ZdlPv>
    8000519c:	01813083          	ld	ra,24(sp)
    800051a0:	01013403          	ld	s0,16(sp)
    800051a4:	00813483          	ld	s1,8(sp)
    800051a8:	02010113          	addi	sp,sp,32
    800051ac:	00008067          	ret

00000000800051b0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800051b0:	ff010113          	addi	sp,sp,-16
    800051b4:	00113423          	sd	ra,8(sp)
    800051b8:	00813023          	sd	s0,0(sp)
    800051bc:	01010413          	addi	s0,sp,16
    800051c0:	00006797          	auipc	a5,0x6
    800051c4:	72878793          	addi	a5,a5,1832 # 8000b8e8 <_ZTV7WorkerD+0x10>
    800051c8:	00f53023          	sd	a5,0(a0)
    800051cc:	ffffe097          	auipc	ra,0xffffe
    800051d0:	09c080e7          	jalr	156(ra) # 80003268 <_ZN6ThreadD1Ev>
    800051d4:	00813083          	ld	ra,8(sp)
    800051d8:	00013403          	ld	s0,0(sp)
    800051dc:	01010113          	addi	sp,sp,16
    800051e0:	00008067          	ret

00000000800051e4 <_ZN7WorkerDD0Ev>:
    800051e4:	fe010113          	addi	sp,sp,-32
    800051e8:	00113c23          	sd	ra,24(sp)
    800051ec:	00813823          	sd	s0,16(sp)
    800051f0:	00913423          	sd	s1,8(sp)
    800051f4:	02010413          	addi	s0,sp,32
    800051f8:	00050493          	mv	s1,a0
    800051fc:	00006797          	auipc	a5,0x6
    80005200:	6ec78793          	addi	a5,a5,1772 # 8000b8e8 <_ZTV7WorkerD+0x10>
    80005204:	00f53023          	sd	a5,0(a0)
    80005208:	ffffe097          	auipc	ra,0xffffe
    8000520c:	060080e7          	jalr	96(ra) # 80003268 <_ZN6ThreadD1Ev>
    80005210:	00048513          	mv	a0,s1
    80005214:	ffffe097          	auipc	ra,0xffffe
    80005218:	138080e7          	jalr	312(ra) # 8000334c <_ZdlPv>
    8000521c:	01813083          	ld	ra,24(sp)
    80005220:	01013403          	ld	s0,16(sp)
    80005224:	00813483          	ld	s1,8(sp)
    80005228:	02010113          	addi	sp,sp,32
    8000522c:	00008067          	ret

0000000080005230 <_ZN7WorkerA3runEv>:
    void run() override {
    80005230:	ff010113          	addi	sp,sp,-16
    80005234:	00113423          	sd	ra,8(sp)
    80005238:	00813023          	sd	s0,0(sp)
    8000523c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80005240:	00000593          	li	a1,0
    80005244:	fffff097          	auipc	ra,0xfffff
    80005248:	774080e7          	jalr	1908(ra) # 800049b8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000524c:	00813083          	ld	ra,8(sp)
    80005250:	00013403          	ld	s0,0(sp)
    80005254:	01010113          	addi	sp,sp,16
    80005258:	00008067          	ret

000000008000525c <_ZN7WorkerB3runEv>:
    void run() override {
    8000525c:	ff010113          	addi	sp,sp,-16
    80005260:	00113423          	sd	ra,8(sp)
    80005264:	00813023          	sd	s0,0(sp)
    80005268:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000526c:	00000593          	li	a1,0
    80005270:	00000097          	auipc	ra,0x0
    80005274:	814080e7          	jalr	-2028(ra) # 80004a84 <_ZN7WorkerB11workerBodyBEPv>
    }
    80005278:	00813083          	ld	ra,8(sp)
    8000527c:	00013403          	ld	s0,0(sp)
    80005280:	01010113          	addi	sp,sp,16
    80005284:	00008067          	ret

0000000080005288 <_ZN7WorkerC3runEv>:
    void run() override {
    80005288:	ff010113          	addi	sp,sp,-16
    8000528c:	00113423          	sd	ra,8(sp)
    80005290:	00813023          	sd	s0,0(sp)
    80005294:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80005298:	00000593          	li	a1,0
    8000529c:	00000097          	auipc	ra,0x0
    800052a0:	8bc080e7          	jalr	-1860(ra) # 80004b58 <_ZN7WorkerC11workerBodyCEPv>
    }
    800052a4:	00813083          	ld	ra,8(sp)
    800052a8:	00013403          	ld	s0,0(sp)
    800052ac:	01010113          	addi	sp,sp,16
    800052b0:	00008067          	ret

00000000800052b4 <_ZN7WorkerD3runEv>:

    void run() override {
    800052b4:	ff010113          	addi	sp,sp,-16
    800052b8:	00113423          	sd	ra,8(sp)
    800052bc:	00813023          	sd	s0,0(sp)
    800052c0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800052c4:	00000593          	li	a1,0
    800052c8:	00000097          	auipc	ra,0x0
    800052cc:	a10080e7          	jalr	-1520(ra) # 80004cd8 <_ZN7WorkerD11workerBodyDEPv>
    }
    800052d0:	00813083          	ld	ra,8(sp)
    800052d4:	00013403          	ld	s0,0(sp)
    800052d8:	01010113          	addi	sp,sp,16
    800052dc:	00008067          	ret

00000000800052e0 <_Z11workerBodyBPv>:
    Riscv::printString("A finished!\n");
    finishedA = true;
}

void workerBodyB(void* arg)
{
    800052e0:	fe010113          	addi	sp,sp,-32
    800052e4:	00113c23          	sd	ra,24(sp)
    800052e8:	00813823          	sd	s0,16(sp)
    800052ec:	00913423          	sd	s1,8(sp)
    800052f0:	01213023          	sd	s2,0(sp)
    800052f4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800052f8:	00000913          	li	s2,0
    800052fc:	0380006f          	j	80005334 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            //Riscv::printString("B j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005300:	ffffc097          	auipc	ra,0xffffc
    80005304:	024080e7          	jalr	36(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005308:	00148493          	addi	s1,s1,1
    8000530c:	000027b7          	lui	a5,0x2
    80005310:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005314:	0097ee63          	bltu	a5,s1,80005330 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005318:	00000713          	li	a4,0
    8000531c:	000077b7          	lui	a5,0x7
    80005320:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005324:	fce7eee3          	bltu	a5,a4,80005300 <_Z11workerBodyBPv+0x20>
    80005328:	00170713          	addi	a4,a4,1
    8000532c:	ff1ff06f          	j	8000531c <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005330:	00190913          	addi	s2,s2,1
    80005334:	00f00793          	li	a5,15
    80005338:	0527e063          	bltu	a5,s2,80005378 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000533c:	00004517          	auipc	a0,0x4
    80005340:	0b450513          	addi	a0,a0,180 # 800093f0 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    80005344:	00000097          	auipc	ra,0x0
    80005348:	53c080e7          	jalr	1340(ra) # 80005880 <_Z11printStringPKc>
    8000534c:	00000613          	li	a2,0
    80005350:	00a00593          	li	a1,10
    80005354:	0009051b          	sext.w	a0,s2
    80005358:	00000097          	auipc	ra,0x0
    8000535c:	6c0080e7          	jalr	1728(ra) # 80005a18 <_Z8printIntiii>
    80005360:	00004517          	auipc	a0,0x4
    80005364:	db050513          	addi	a0,a0,-592 # 80009110 <CONSOLE_STATUS+0x100>
    80005368:	00000097          	auipc	ra,0x0
    8000536c:	518080e7          	jalr	1304(ra) # 80005880 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005370:	00000493          	li	s1,0
    80005374:	f99ff06f          	j	8000530c <_Z11workerBodyBPv+0x2c>
        }
    }
    Riscv::printString("B finished!\n");
    80005378:	00004517          	auipc	a0,0x4
    8000537c:	08050513          	addi	a0,a0,128 # 800093f8 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80005380:	ffffe097          	auipc	ra,0xffffe
    80005384:	410080e7          	jalr	1040(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
    thread_dispatch();
    80005388:	ffffc097          	auipc	ra,0xffffc
    8000538c:	f9c080e7          	jalr	-100(ra) # 80001324 <thread_dispatch>
    finishedB = true;
    80005390:	00100793          	li	a5,1
    80005394:	00006717          	auipc	a4,0x6
    80005398:	6af70423          	sb	a5,1704(a4) # 8000ba3c <_ZL9finishedB>
}
    8000539c:	01813083          	ld	ra,24(sp)
    800053a0:	01013403          	ld	s0,16(sp)
    800053a4:	00813483          	ld	s1,8(sp)
    800053a8:	00013903          	ld	s2,0(sp)
    800053ac:	02010113          	addi	sp,sp,32
    800053b0:	00008067          	ret

00000000800053b4 <_ZL9fibonaccim>:
static uint64 fibonacci(uint64 n) {
    800053b4:	fe010113          	addi	sp,sp,-32
    800053b8:	00113c23          	sd	ra,24(sp)
    800053bc:	00813823          	sd	s0,16(sp)
    800053c0:	00913423          	sd	s1,8(sp)
    800053c4:	01213023          	sd	s2,0(sp)
    800053c8:	02010413          	addi	s0,sp,32
    800053cc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) {return n; }
    800053d0:	00100793          	li	a5,1
    800053d4:	02a7f863          	bgeu	a5,a0,80005404 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800053d8:	00a00793          	li	a5,10
    800053dc:	02f577b3          	remu	a5,a0,a5
    800053e0:	02078e63          	beqz	a5,8000541c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800053e4:	fff48513          	addi	a0,s1,-1
    800053e8:	00000097          	auipc	ra,0x0
    800053ec:	fcc080e7          	jalr	-52(ra) # 800053b4 <_ZL9fibonaccim>
    800053f0:	00050913          	mv	s2,a0
    800053f4:	ffe48513          	addi	a0,s1,-2
    800053f8:	00000097          	auipc	ra,0x0
    800053fc:	fbc080e7          	jalr	-68(ra) # 800053b4 <_ZL9fibonaccim>
    80005400:	00a90533          	add	a0,s2,a0
}
    80005404:	01813083          	ld	ra,24(sp)
    80005408:	01013403          	ld	s0,16(sp)
    8000540c:	00813483          	ld	s1,8(sp)
    80005410:	00013903          	ld	s2,0(sp)
    80005414:	02010113          	addi	sp,sp,32
    80005418:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000541c:	ffffc097          	auipc	ra,0xffffc
    80005420:	f08080e7          	jalr	-248(ra) # 80001324 <thread_dispatch>
    80005424:	fc1ff06f          	j	800053e4 <_ZL9fibonaccim+0x30>

0000000080005428 <_Z11workerBodyAPv>:
void workerBodyA(void* arg) {
    80005428:	fe010113          	addi	sp,sp,-32
    8000542c:	00113c23          	sd	ra,24(sp)
    80005430:	00813823          	sd	s0,16(sp)
    80005434:	00913423          	sd	s1,8(sp)
    80005438:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000543c:	00000493          	li	s1,0
    80005440:	0300006f          	j	80005470 <_Z11workerBodyAPv+0x48>
        for (uint64 j = 0; j < 10000; j++) {
    80005444:	00168693          	addi	a3,a3,1
    80005448:	000027b7          	lui	a5,0x2
    8000544c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005450:	00d7ee63          	bltu	a5,a3,8000546c <_Z11workerBodyAPv+0x44>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005454:	00000713          	li	a4,0
    80005458:	000077b7          	lui	a5,0x7
    8000545c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005460:	fee7e2e3          	bltu	a5,a4,80005444 <_Z11workerBodyAPv+0x1c>
    80005464:	00170713          	addi	a4,a4,1
    80005468:	ff1ff06f          	j	80005458 <_Z11workerBodyAPv+0x30>
    for (uint64 i = 0; i < 10; i++) {
    8000546c:	00148493          	addi	s1,s1,1
    80005470:	00900793          	li	a5,9
    80005474:	0497e063          	bltu	a5,s1,800054b4 <_Z11workerBodyAPv+0x8c>
        printString("A: i="); printInt(i); printString("\n");
    80005478:	00004517          	auipc	a0,0x4
    8000547c:	f6050513          	addi	a0,a0,-160 # 800093d8 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    80005480:	00000097          	auipc	ra,0x0
    80005484:	400080e7          	jalr	1024(ra) # 80005880 <_Z11printStringPKc>
    80005488:	00000613          	li	a2,0
    8000548c:	00a00593          	li	a1,10
    80005490:	0004851b          	sext.w	a0,s1
    80005494:	00000097          	auipc	ra,0x0
    80005498:	584080e7          	jalr	1412(ra) # 80005a18 <_Z8printIntiii>
    8000549c:	00004517          	auipc	a0,0x4
    800054a0:	c7450513          	addi	a0,a0,-908 # 80009110 <CONSOLE_STATUS+0x100>
    800054a4:	00000097          	auipc	ra,0x0
    800054a8:	3dc080e7          	jalr	988(ra) # 80005880 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800054ac:	00000693          	li	a3,0
    800054b0:	f99ff06f          	j	80005448 <_Z11workerBodyAPv+0x20>
    Riscv::printString("A finished!\n");
    800054b4:	00004517          	auipc	a0,0x4
    800054b8:	f2c50513          	addi	a0,a0,-212 # 800093e0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800054bc:	ffffe097          	auipc	ra,0xffffe
    800054c0:	2d4080e7          	jalr	724(ra) # 80003790 <_ZN5Riscv11printStringEPKc>
}
    800054c4:	01813083          	ld	ra,24(sp)
    800054c8:	01013403          	ld	s0,16(sp)
    800054cc:	00813483          	ld	s1,8(sp)
    800054d0:	02010113          	addi	sp,sp,32
    800054d4:	00008067          	ret

00000000800054d8 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    800054d8:	fe010113          	addi	sp,sp,-32
    800054dc:	00113c23          	sd	ra,24(sp)
    800054e0:	00813823          	sd	s0,16(sp)
    800054e4:	00913423          	sd	s1,8(sp)
    800054e8:	01213023          	sd	s2,0(sp)
    800054ec:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800054f0:	00000493          	li	s1,0
    800054f4:	0400006f          	j	80005534 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800054f8:	00004517          	auipc	a0,0x4
    800054fc:	f1050513          	addi	a0,a0,-240 # 80009408 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80005500:	00000097          	auipc	ra,0x0
    80005504:	380080e7          	jalr	896(ra) # 80005880 <_Z11printStringPKc>
    80005508:	00000613          	li	a2,0
    8000550c:	00a00593          	li	a1,10
    80005510:	00048513          	mv	a0,s1
    80005514:	00000097          	auipc	ra,0x0
    80005518:	504080e7          	jalr	1284(ra) # 80005a18 <_Z8printIntiii>
    8000551c:	00004517          	auipc	a0,0x4
    80005520:	bf450513          	addi	a0,a0,-1036 # 80009110 <CONSOLE_STATUS+0x100>
    80005524:	00000097          	auipc	ra,0x0
    80005528:	35c080e7          	jalr	860(ra) # 80005880 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000552c:	0014849b          	addiw	s1,s1,1
    80005530:	0ff4f493          	andi	s1,s1,255
    80005534:	00200793          	li	a5,2
    80005538:	fc97f0e3          	bgeu	a5,s1,800054f8 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    8000553c:	00004517          	auipc	a0,0x4
    80005540:	ed450513          	addi	a0,a0,-300 # 80009410 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80005544:	00000097          	auipc	ra,0x0
    80005548:	33c080e7          	jalr	828(ra) # 80005880 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000554c:	00700313          	li	t1,7
    thread_dispatch();
    80005550:	ffffc097          	auipc	ra,0xffffc
    80005554:	dd4080e7          	jalr	-556(ra) # 80001324 <thread_dispatch>
    printString("C: returned\n");
    80005558:	00004517          	auipc	a0,0x4
    8000555c:	f7850513          	addi	a0,a0,-136 # 800094d0 <_ZZN5Riscv12printIntegerEmE6digits+0x210>
    80005560:	00000097          	auipc	ra,0x0
    80005564:	320080e7          	jalr	800(ra) # 80005880 <_Z11printStringPKc>
    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005568:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000556c:	00004517          	auipc	a0,0x4
    80005570:	eb450513          	addi	a0,a0,-332 # 80009420 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80005574:	00000097          	auipc	ra,0x0
    80005578:	30c080e7          	jalr	780(ra) # 80005880 <_Z11printStringPKc>
    8000557c:	00000613          	li	a2,0
    80005580:	00a00593          	li	a1,10
    80005584:	0009051b          	sext.w	a0,s2
    80005588:	00000097          	auipc	ra,0x0
    8000558c:	490080e7          	jalr	1168(ra) # 80005a18 <_Z8printIntiii>
    80005590:	00004517          	auipc	a0,0x4
    80005594:	b8050513          	addi	a0,a0,-1152 # 80009110 <CONSOLE_STATUS+0x100>
    80005598:	00000097          	auipc	ra,0x0
    8000559c:	2e8080e7          	jalr	744(ra) # 80005880 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800055a0:	00c00513          	li	a0,12
    800055a4:	00000097          	auipc	ra,0x0
    800055a8:	e10080e7          	jalr	-496(ra) # 800053b4 <_ZL9fibonaccim>
    800055ac:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800055b0:	00004517          	auipc	a0,0x4
    800055b4:	e7850513          	addi	a0,a0,-392 # 80009428 <_ZZN5Riscv12printIntegerEmE6digits+0x168>
    800055b8:	00000097          	auipc	ra,0x0
    800055bc:	2c8080e7          	jalr	712(ra) # 80005880 <_Z11printStringPKc>
    800055c0:	00000613          	li	a2,0
    800055c4:	00a00593          	li	a1,10
    800055c8:	0009051b          	sext.w	a0,s2
    800055cc:	00000097          	auipc	ra,0x0
    800055d0:	44c080e7          	jalr	1100(ra) # 80005a18 <_Z8printIntiii>
    800055d4:	00004517          	auipc	a0,0x4
    800055d8:	b3c50513          	addi	a0,a0,-1220 # 80009110 <CONSOLE_STATUS+0x100>
    800055dc:	00000097          	auipc	ra,0x0
    800055e0:	2a4080e7          	jalr	676(ra) # 80005880 <_Z11printStringPKc>
    800055e4:	0400006f          	j	80005624 <_Z11workerBodyCPv+0x14c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800055e8:	00004517          	auipc	a0,0x4
    800055ec:	e2050513          	addi	a0,a0,-480 # 80009408 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    800055f0:	00000097          	auipc	ra,0x0
    800055f4:	290080e7          	jalr	656(ra) # 80005880 <_Z11printStringPKc>
    800055f8:	00000613          	li	a2,0
    800055fc:	00a00593          	li	a1,10
    80005600:	00048513          	mv	a0,s1
    80005604:	00000097          	auipc	ra,0x0
    80005608:	414080e7          	jalr	1044(ra) # 80005a18 <_Z8printIntiii>
    8000560c:	00004517          	auipc	a0,0x4
    80005610:	b0450513          	addi	a0,a0,-1276 # 80009110 <CONSOLE_STATUS+0x100>
    80005614:	00000097          	auipc	ra,0x0
    80005618:	26c080e7          	jalr	620(ra) # 80005880 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000561c:	0014849b          	addiw	s1,s1,1
    80005620:	0ff4f493          	andi	s1,s1,255
    80005624:	00500793          	li	a5,5
    80005628:	fc97f0e3          	bgeu	a5,s1,800055e8 <_Z11workerBodyCPv+0x110>
    }

    printString("C finished!\n");
    8000562c:	00004517          	auipc	a0,0x4
    80005630:	eb450513          	addi	a0,a0,-332 # 800094e0 <_ZZN5Riscv12printIntegerEmE6digits+0x220>
    80005634:	00000097          	auipc	ra,0x0
    80005638:	24c080e7          	jalr	588(ra) # 80005880 <_Z11printStringPKc>
    thread_dispatch();
    8000563c:	ffffc097          	auipc	ra,0xffffc
    80005640:	ce8080e7          	jalr	-792(ra) # 80001324 <thread_dispatch>
    finishedC = true;
}
    80005644:	01813083          	ld	ra,24(sp)
    80005648:	01013403          	ld	s0,16(sp)
    8000564c:	00813483          	ld	s1,8(sp)
    80005650:	00013903          	ld	s2,0(sp)
    80005654:	02010113          	addi	sp,sp,32
    80005658:	00008067          	ret

000000008000565c <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    8000565c:	fe010113          	addi	sp,sp,-32
    80005660:	00113c23          	sd	ra,24(sp)
    80005664:	00813823          	sd	s0,16(sp)
    80005668:	00913423          	sd	s1,8(sp)
    8000566c:	01213023          	sd	s2,0(sp)
    80005670:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005674:	00a00493          	li	s1,10
    80005678:	0400006f          	j	800056b8 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000567c:	00004517          	auipc	a0,0x4
    80005680:	dbc50513          	addi	a0,a0,-580 # 80009438 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80005684:	00000097          	auipc	ra,0x0
    80005688:	1fc080e7          	jalr	508(ra) # 80005880 <_Z11printStringPKc>
    8000568c:	00000613          	li	a2,0
    80005690:	00a00593          	li	a1,10
    80005694:	00048513          	mv	a0,s1
    80005698:	00000097          	auipc	ra,0x0
    8000569c:	380080e7          	jalr	896(ra) # 80005a18 <_Z8printIntiii>
    800056a0:	00004517          	auipc	a0,0x4
    800056a4:	a7050513          	addi	a0,a0,-1424 # 80009110 <CONSOLE_STATUS+0x100>
    800056a8:	00000097          	auipc	ra,0x0
    800056ac:	1d8080e7          	jalr	472(ra) # 80005880 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800056b0:	0014849b          	addiw	s1,s1,1
    800056b4:	0ff4f493          	andi	s1,s1,255
    800056b8:	00c00793          	li	a5,12
    800056bc:	fc97f0e3          	bgeu	a5,s1,8000567c <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800056c0:	00004517          	auipc	a0,0x4
    800056c4:	d8050513          	addi	a0,a0,-640 # 80009440 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    800056c8:	00000097          	auipc	ra,0x0
    800056cc:	1b8080e7          	jalr	440(ra) # 80005880 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800056d0:	00500313          	li	t1,5
    thread_dispatch();
    800056d4:	ffffc097          	auipc	ra,0xffffc
    800056d8:	c50080e7          	jalr	-944(ra) # 80001324 <thread_dispatch>
    printString("D: returned\n");
    800056dc:	00004517          	auipc	a0,0x4
    800056e0:	e1450513          	addi	a0,a0,-492 # 800094f0 <_ZZN5Riscv12printIntegerEmE6digits+0x230>
    800056e4:	00000097          	auipc	ra,0x0
    800056e8:	19c080e7          	jalr	412(ra) # 80005880 <_Z11printStringPKc>
    uint64 result = fibonacci(16);
    800056ec:	01000513          	li	a0,16
    800056f0:	00000097          	auipc	ra,0x0
    800056f4:	cc4080e7          	jalr	-828(ra) # 800053b4 <_ZL9fibonaccim>
    800056f8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800056fc:	00004517          	auipc	a0,0x4
    80005700:	d5450513          	addi	a0,a0,-684 # 80009450 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    80005704:	00000097          	auipc	ra,0x0
    80005708:	17c080e7          	jalr	380(ra) # 80005880 <_Z11printStringPKc>
    8000570c:	00000613          	li	a2,0
    80005710:	00a00593          	li	a1,10
    80005714:	0009051b          	sext.w	a0,s2
    80005718:	00000097          	auipc	ra,0x0
    8000571c:	300080e7          	jalr	768(ra) # 80005a18 <_Z8printIntiii>
    80005720:	00004517          	auipc	a0,0x4
    80005724:	9f050513          	addi	a0,a0,-1552 # 80009110 <CONSOLE_STATUS+0x100>
    80005728:	00000097          	auipc	ra,0x0
    8000572c:	158080e7          	jalr	344(ra) # 80005880 <_Z11printStringPKc>
    80005730:	0400006f          	j	80005770 <_Z11workerBodyDPv+0x114>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005734:	00004517          	auipc	a0,0x4
    80005738:	d0450513          	addi	a0,a0,-764 # 80009438 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    8000573c:	00000097          	auipc	ra,0x0
    80005740:	144080e7          	jalr	324(ra) # 80005880 <_Z11printStringPKc>
    80005744:	00000613          	li	a2,0
    80005748:	00a00593          	li	a1,10
    8000574c:	00048513          	mv	a0,s1
    80005750:	00000097          	auipc	ra,0x0
    80005754:	2c8080e7          	jalr	712(ra) # 80005a18 <_Z8printIntiii>
    80005758:	00004517          	auipc	a0,0x4
    8000575c:	9b850513          	addi	a0,a0,-1608 # 80009110 <CONSOLE_STATUS+0x100>
    80005760:	00000097          	auipc	ra,0x0
    80005764:	120080e7          	jalr	288(ra) # 80005880 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005768:	0014849b          	addiw	s1,s1,1
    8000576c:	0ff4f493          	andi	s1,s1,255
    80005770:	00f00793          	li	a5,15
    80005774:	fc97f0e3          	bgeu	a5,s1,80005734 <_Z11workerBodyDPv+0xd8>
    }

    printString("D finished!\n");
    80005778:	00004517          	auipc	a0,0x4
    8000577c:	ce850513          	addi	a0,a0,-792 # 80009460 <_ZZN5Riscv12printIntegerEmE6digits+0x1a0>
    80005780:	00000097          	auipc	ra,0x0
    80005784:	100080e7          	jalr	256(ra) # 80005880 <_Z11printStringPKc>
    thread_dispatch();
    80005788:	ffffc097          	auipc	ra,0xffffc
    8000578c:	b9c080e7          	jalr	-1124(ra) # 80001324 <thread_dispatch>
    finishedD = true;
}
    80005790:	01813083          	ld	ra,24(sp)
    80005794:	01013403          	ld	s0,16(sp)
    80005798:	00813483          	ld	s1,8(sp)
    8000579c:	00013903          	ld	s2,0(sp)
    800057a0:	02010113          	addi	sp,sp,32
    800057a4:	00008067          	ret

00000000800057a8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test()
{
    800057a8:	fc010113          	addi	sp,sp,-64
    800057ac:	02113c23          	sd	ra,56(sp)
    800057b0:	02813823          	sd	s0,48(sp)
    800057b4:	02913423          	sd	s1,40(sp)
    800057b8:	03213023          	sd	s2,32(sp)
    800057bc:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    //thread_create(&threads[0], workerBodyA, nullptr);
    printString("ThreadA created\n");
    800057c0:	00004517          	auipc	a0,0x4
    800057c4:	cb050513          	addi	a0,a0,-848 # 80009470 <_ZZN5Riscv12printIntegerEmE6digits+0x1b0>
    800057c8:	00000097          	auipc	ra,0x0
    800057cc:	0b8080e7          	jalr	184(ra) # 80005880 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800057d0:	00000613          	li	a2,0
    800057d4:	00000597          	auipc	a1,0x0
    800057d8:	b0c58593          	addi	a1,a1,-1268 # 800052e0 <_Z11workerBodyBPv>
    800057dc:	fc840513          	addi	a0,s0,-56
    800057e0:	ffffc097          	auipc	ra,0xffffc
    800057e4:	ac4080e7          	jalr	-1340(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    800057e8:	00004517          	auipc	a0,0x4
    800057ec:	ca050513          	addi	a0,a0,-864 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0x1c8>
    800057f0:	00000097          	auipc	ra,0x0
    800057f4:	090080e7          	jalr	144(ra) # 80005880 <_Z11printStringPKc>

    //thread_create(&threads[2], workerBodyC, nullptr);
    printString("ThreadC created\n");
    800057f8:	00004517          	auipc	a0,0x4
    800057fc:	ca850513          	addi	a0,a0,-856 # 800094a0 <_ZZN5Riscv12printIntegerEmE6digits+0x1e0>
    80005800:	00000097          	auipc	ra,0x0
    80005804:	080080e7          	jalr	128(ra) # 80005880 <_Z11printStringPKc>

    //thread_create(&threads[3], workerBodyD, nullptr);
    printString("ThreadD created\n");
    80005808:	00004517          	auipc	a0,0x4
    8000580c:	cb050513          	addi	a0,a0,-848 # 800094b8 <_ZZN5Riscv12printIntegerEmE6digits+0x1f8>
    80005810:	00000097          	auipc	ra,0x0
    80005814:	070080e7          	jalr	112(ra) # 80005880 <_Z11printStringPKc>

    while (!(finishedB)) {
    80005818:	00006797          	auipc	a5,0x6
    8000581c:	2247c783          	lbu	a5,548(a5) # 8000ba3c <_ZL9finishedB>
    80005820:	00079863          	bnez	a5,80005830 <_Z18Threads_C_API_testv+0x88>
        //printString("Main thread\n");
        thread_dispatch();
    80005824:	ffffc097          	auipc	ra,0xffffc
    80005828:	b00080e7          	jalr	-1280(ra) # 80001324 <thread_dispatch>
    8000582c:	fedff06f          	j	80005818 <_Z18Threads_C_API_testv+0x70>
    }

    for (auto &thread: threads) {
    80005830:	fc040493          	addi	s1,s0,-64
    80005834:	0080006f          	j	8000583c <_Z18Threads_C_API_testv+0x94>
    80005838:	00848493          	addi	s1,s1,8
    8000583c:	fe040793          	addi	a5,s0,-32
    80005840:	02f48463          	beq	s1,a5,80005868 <_Z18Threads_C_API_testv+0xc0>
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (PCB*)thread;
    80005844:	0004b903          	ld	s2,0(s1)
    80005848:	fe0908e3          	beqz	s2,80005838 <_Z18Threads_C_API_testv+0x90>
    8000584c:	00090513          	mv	a0,s2
    80005850:	ffffd097          	auipc	ra,0xffffd
    80005854:	03c080e7          	jalr	60(ra) # 8000288c <_ZN3PCBD1Ev>
    80005858:	00090513          	mv	a0,s2
    8000585c:	ffffd097          	auipc	ra,0xffffd
    80005860:	008080e7          	jalr	8(ra) # 80002864 <_ZN3PCBdlEPv>
    80005864:	fd5ff06f          	j	80005838 <_Z18Threads_C_API_testv+0x90>
    }
}
    80005868:	03813083          	ld	ra,56(sp)
    8000586c:	03013403          	ld	s0,48(sp)
    80005870:	02813483          	ld	s1,40(sp)
    80005874:	02013903          	ld	s2,32(sp)
    80005878:	04010113          	addi	sp,sp,64
    8000587c:	00008067          	ret

0000000080005880 <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    80005880:	fe010113          	addi	sp,sp,-32
    80005884:	00113c23          	sd	ra,24(sp)
    80005888:	00813823          	sd	s0,16(sp)
    8000588c:	00913423          	sd	s1,8(sp)
    80005890:	02010413          	addi	s0,sp,32
    80005894:	00050493          	mv	s1,a0
    LOCK();
    80005898:	00100613          	li	a2,1
    8000589c:	00000593          	li	a1,0
    800058a0:	00006517          	auipc	a0,0x6
    800058a4:	1a050513          	addi	a0,a0,416 # 8000ba40 <lockPrint>
    800058a8:	ffffc097          	auipc	ra,0xffffc
    800058ac:	960080e7          	jalr	-1696(ra) # 80001208 <copy_and_swap>
    800058b0:	fe0514e3          	bnez	a0,80005898 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    800058b4:	0004c503          	lbu	a0,0(s1)
    800058b8:	00050a63          	beqz	a0,800058cc <_Z11printStringPKc+0x4c>
}

inline void putc(char c) {
    __putc(c);
    800058bc:	00003097          	auipc	ra,0x3
    800058c0:	a00080e7          	jalr	-1536(ra) # 800082bc <__putc>
        putc(*string);
        string++;
    800058c4:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    800058c8:	fedff06f          	j	800058b4 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800058cc:	00000613          	li	a2,0
    800058d0:	00100593          	li	a1,1
    800058d4:	00006517          	auipc	a0,0x6
    800058d8:	16c50513          	addi	a0,a0,364 # 8000ba40 <lockPrint>
    800058dc:	ffffc097          	auipc	ra,0xffffc
    800058e0:	92c080e7          	jalr	-1748(ra) # 80001208 <copy_and_swap>
    800058e4:	fe0514e3          	bnez	a0,800058cc <_Z11printStringPKc+0x4c>
}
    800058e8:	01813083          	ld	ra,24(sp)
    800058ec:	01013403          	ld	s0,16(sp)
    800058f0:	00813483          	ld	s1,8(sp)
    800058f4:	02010113          	addi	sp,sp,32
    800058f8:	00008067          	ret

00000000800058fc <_Z9getStringPci>:

char *getString(char *buf, int max) {
    800058fc:	fd010113          	addi	sp,sp,-48
    80005900:	02113423          	sd	ra,40(sp)
    80005904:	02813023          	sd	s0,32(sp)
    80005908:	00913c23          	sd	s1,24(sp)
    8000590c:	01213823          	sd	s2,16(sp)
    80005910:	01313423          	sd	s3,8(sp)
    80005914:	01413023          	sd	s4,0(sp)
    80005918:	03010413          	addi	s0,sp,48
    8000591c:	00050993          	mv	s3,a0
    80005920:	00058a13          	mv	s4,a1
    LOCK();
    80005924:	00100613          	li	a2,1
    80005928:	00000593          	li	a1,0
    8000592c:	00006517          	auipc	a0,0x6
    80005930:	11450513          	addi	a0,a0,276 # 8000ba40 <lockPrint>
    80005934:	ffffc097          	auipc	ra,0xffffc
    80005938:	8d4080e7          	jalr	-1836(ra) # 80001208 <copy_and_swap>
    8000593c:	fe0514e3          	bnez	a0,80005924 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80005940:	00000913          	li	s2,0
    80005944:	00090493          	mv	s1,s2
    80005948:	0019091b          	addiw	s2,s2,1
    8000594c:	03495a63          	bge	s2,s4,80005980 <_Z9getStringPci+0x84>
    return __getc();
    80005950:	00003097          	auipc	ra,0x3
    80005954:	9a8080e7          	jalr	-1624(ra) # 800082f8 <__getc>
        cc = getc();
        if (cc < 1)
    80005958:	02050463          	beqz	a0,80005980 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    8000595c:	009984b3          	add	s1,s3,s1
    80005960:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80005964:	00a00793          	li	a5,10
    80005968:	00f50a63          	beq	a0,a5,8000597c <_Z9getStringPci+0x80>
    8000596c:	00d00793          	li	a5,13
    80005970:	fcf51ae3          	bne	a0,a5,80005944 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005974:	00090493          	mv	s1,s2
    80005978:	0080006f          	j	80005980 <_Z9getStringPci+0x84>
    8000597c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005980:	009984b3          	add	s1,s3,s1
    80005984:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005988:	00000613          	li	a2,0
    8000598c:	00100593          	li	a1,1
    80005990:	00006517          	auipc	a0,0x6
    80005994:	0b050513          	addi	a0,a0,176 # 8000ba40 <lockPrint>
    80005998:	ffffc097          	auipc	ra,0xffffc
    8000599c:	870080e7          	jalr	-1936(ra) # 80001208 <copy_and_swap>
    800059a0:	fe0514e3          	bnez	a0,80005988 <_Z9getStringPci+0x8c>
    return buf;
}
    800059a4:	00098513          	mv	a0,s3
    800059a8:	02813083          	ld	ra,40(sp)
    800059ac:	02013403          	ld	s0,32(sp)
    800059b0:	01813483          	ld	s1,24(sp)
    800059b4:	01013903          	ld	s2,16(sp)
    800059b8:	00813983          	ld	s3,8(sp)
    800059bc:	00013a03          	ld	s4,0(sp)
    800059c0:	03010113          	addi	sp,sp,48
    800059c4:	00008067          	ret

00000000800059c8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800059c8:	ff010113          	addi	sp,sp,-16
    800059cc:	00813423          	sd	s0,8(sp)
    800059d0:	01010413          	addi	s0,sp,16
    800059d4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800059d8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800059dc:	0006c603          	lbu	a2,0(a3)
    800059e0:	fd06071b          	addiw	a4,a2,-48
    800059e4:	0ff77713          	andi	a4,a4,255
    800059e8:	00900793          	li	a5,9
    800059ec:	02e7e063          	bltu	a5,a4,80005a0c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800059f0:	0025179b          	slliw	a5,a0,0x2
    800059f4:	00a787bb          	addw	a5,a5,a0
    800059f8:	0017979b          	slliw	a5,a5,0x1
    800059fc:	00168693          	addi	a3,a3,1
    80005a00:	00c787bb          	addw	a5,a5,a2
    80005a04:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005a08:	fd5ff06f          	j	800059dc <_Z11stringToIntPKc+0x14>
    return n;
}
    80005a0c:	00813403          	ld	s0,8(sp)
    80005a10:	01010113          	addi	sp,sp,16
    80005a14:	00008067          	ret

0000000080005a18 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005a18:	fc010113          	addi	sp,sp,-64
    80005a1c:	02113c23          	sd	ra,56(sp)
    80005a20:	02813823          	sd	s0,48(sp)
    80005a24:	02913423          	sd	s1,40(sp)
    80005a28:	03213023          	sd	s2,32(sp)
    80005a2c:	01313c23          	sd	s3,24(sp)
    80005a30:	04010413          	addi	s0,sp,64
    80005a34:	00050493          	mv	s1,a0
    80005a38:	00058913          	mv	s2,a1
    80005a3c:	00060993          	mv	s3,a2
    LOCK();
    80005a40:	00100613          	li	a2,1
    80005a44:	00000593          	li	a1,0
    80005a48:	00006517          	auipc	a0,0x6
    80005a4c:	ff850513          	addi	a0,a0,-8 # 8000ba40 <lockPrint>
    80005a50:	ffffb097          	auipc	ra,0xffffb
    80005a54:	7b8080e7          	jalr	1976(ra) # 80001208 <copy_and_swap>
    80005a58:	fe0514e3          	bnez	a0,80005a40 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005a5c:	00098463          	beqz	s3,80005a64 <_Z8printIntiii+0x4c>
    80005a60:	0804c463          	bltz	s1,80005ae8 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005a64:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005a68:	00000593          	li	a1,0
    }

    i = 0;
    80005a6c:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005a70:	0009079b          	sext.w	a5,s2
    80005a74:	0325773b          	remuw	a4,a0,s2
    80005a78:	00048613          	mv	a2,s1
    80005a7c:	0014849b          	addiw	s1,s1,1
    80005a80:	02071693          	slli	a3,a4,0x20
    80005a84:	0206d693          	srli	a3,a3,0x20
    80005a88:	00004717          	auipc	a4,0x4
    80005a8c:	a7870713          	addi	a4,a4,-1416 # 80009500 <_ZL6digits>
    80005a90:	00d70733          	add	a4,a4,a3
    80005a94:	00074683          	lbu	a3,0(a4)
    80005a98:	fd040713          	addi	a4,s0,-48
    80005a9c:	00c70733          	add	a4,a4,a2
    80005aa0:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005aa4:	0005071b          	sext.w	a4,a0
    80005aa8:	0325553b          	divuw	a0,a0,s2
    80005aac:	fcf772e3          	bgeu	a4,a5,80005a70 <_Z8printIntiii+0x58>
    if (neg)
    80005ab0:	00058c63          	beqz	a1,80005ac8 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005ab4:	fd040793          	addi	a5,s0,-48
    80005ab8:	009784b3          	add	s1,a5,s1
    80005abc:	02d00793          	li	a5,45
    80005ac0:	fef48823          	sb	a5,-16(s1)
    80005ac4:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005ac8:	fff4849b          	addiw	s1,s1,-1
    80005acc:	0204c463          	bltz	s1,80005af4 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005ad0:	fd040793          	addi	a5,s0,-48
    80005ad4:	009787b3          	add	a5,a5,s1
    __putc(c);
    80005ad8:	ff07c503          	lbu	a0,-16(a5)
    80005adc:	00002097          	auipc	ra,0x2
    80005ae0:	7e0080e7          	jalr	2016(ra) # 800082bc <__putc>
}
    80005ae4:	fe5ff06f          	j	80005ac8 <_Z8printIntiii+0xb0>
        x = -xx;
    80005ae8:	4090053b          	negw	a0,s1
        neg = 1;
    80005aec:	00100593          	li	a1,1
        x = -xx;
    80005af0:	f7dff06f          	j	80005a6c <_Z8printIntiii+0x54>

    UNLOCK();
    80005af4:	00000613          	li	a2,0
    80005af8:	00100593          	li	a1,1
    80005afc:	00006517          	auipc	a0,0x6
    80005b00:	f4450513          	addi	a0,a0,-188 # 8000ba40 <lockPrint>
    80005b04:	ffffb097          	auipc	ra,0xffffb
    80005b08:	704080e7          	jalr	1796(ra) # 80001208 <copy_and_swap>
    80005b0c:	fe0514e3          	bnez	a0,80005af4 <_Z8printIntiii+0xdc>
}
    80005b10:	03813083          	ld	ra,56(sp)
    80005b14:	03013403          	ld	s0,48(sp)
    80005b18:	02813483          	ld	s1,40(sp)
    80005b1c:	02013903          	ld	s2,32(sp)
    80005b20:	01813983          	ld	s3,24(sp)
    80005b24:	04010113          	addi	sp,sp,64
    80005b28:	00008067          	ret

0000000080005b2c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80005b2c:	fe010113          	addi	sp,sp,-32
    80005b30:	00113c23          	sd	ra,24(sp)
    80005b34:	00813823          	sd	s0,16(sp)
    80005b38:	00913423          	sd	s1,8(sp)
    80005b3c:	01213023          	sd	s2,0(sp)
    80005b40:	02010413          	addi	s0,sp,32
    80005b44:	00050493          	mv	s1,a0
    80005b48:	00b52023          	sw	a1,0(a0)
    80005b4c:	00052823          	sw	zero,16(a0)
    80005b50:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005b54:	00259513          	slli	a0,a1,0x2
    80005b58:	ffffb097          	auipc	ra,0xffffb
    80005b5c:	6f0080e7          	jalr	1776(ra) # 80001248 <mem_alloc>
    80005b60:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005b64:	01000513          	li	a0,16
    80005b68:	ffffd097          	auipc	ra,0xffffd
    80005b6c:	7bc080e7          	jalr	1980(ra) # 80003324 <_Znwm>
    80005b70:	00050913          	mv	s2,a0
    80005b74:	00000593          	li	a1,0
    80005b78:	ffffe097          	auipc	ra,0xffffe
    80005b7c:	9e8080e7          	jalr	-1560(ra) # 80003560 <_ZN9SemaphoreC1Ej>
    80005b80:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    80005b84:	01000513          	li	a0,16
    80005b88:	ffffd097          	auipc	ra,0xffffd
    80005b8c:	79c080e7          	jalr	1948(ra) # 80003324 <_Znwm>
    80005b90:	00050913          	mv	s2,a0
    80005b94:	0004a583          	lw	a1,0(s1)
    80005b98:	ffffe097          	auipc	ra,0xffffe
    80005b9c:	9c8080e7          	jalr	-1592(ra) # 80003560 <_ZN9SemaphoreC1Ej>
    80005ba0:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80005ba4:	01000513          	li	a0,16
    80005ba8:	ffffd097          	auipc	ra,0xffffd
    80005bac:	77c080e7          	jalr	1916(ra) # 80003324 <_Znwm>
    80005bb0:	00050913          	mv	s2,a0
    80005bb4:	00100593          	li	a1,1
    80005bb8:	ffffe097          	auipc	ra,0xffffe
    80005bbc:	9a8080e7          	jalr	-1624(ra) # 80003560 <_ZN9SemaphoreC1Ej>
    80005bc0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005bc4:	01000513          	li	a0,16
    80005bc8:	ffffd097          	auipc	ra,0xffffd
    80005bcc:	75c080e7          	jalr	1884(ra) # 80003324 <_Znwm>
    80005bd0:	00050913          	mv	s2,a0
    80005bd4:	00100593          	li	a1,1
    80005bd8:	ffffe097          	auipc	ra,0xffffe
    80005bdc:	988080e7          	jalr	-1656(ra) # 80003560 <_ZN9SemaphoreC1Ej>
    80005be0:	0324b823          	sd	s2,48(s1)
}
    80005be4:	01813083          	ld	ra,24(sp)
    80005be8:	01013403          	ld	s0,16(sp)
    80005bec:	00813483          	ld	s1,8(sp)
    80005bf0:	00013903          	ld	s2,0(sp)
    80005bf4:	02010113          	addi	sp,sp,32
    80005bf8:	00008067          	ret
    80005bfc:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005c00:	00090513          	mv	a0,s2
    80005c04:	ffffd097          	auipc	ra,0xffffd
    80005c08:	748080e7          	jalr	1864(ra) # 8000334c <_ZdlPv>
    80005c0c:	00048513          	mv	a0,s1
    80005c10:	00007097          	auipc	ra,0x7
    80005c14:	f08080e7          	jalr	-248(ra) # 8000cb18 <_Unwind_Resume>
    80005c18:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80005c1c:	00090513          	mv	a0,s2
    80005c20:	ffffd097          	auipc	ra,0xffffd
    80005c24:	72c080e7          	jalr	1836(ra) # 8000334c <_ZdlPv>
    80005c28:	00048513          	mv	a0,s1
    80005c2c:	00007097          	auipc	ra,0x7
    80005c30:	eec080e7          	jalr	-276(ra) # 8000cb18 <_Unwind_Resume>
    80005c34:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005c38:	00090513          	mv	a0,s2
    80005c3c:	ffffd097          	auipc	ra,0xffffd
    80005c40:	710080e7          	jalr	1808(ra) # 8000334c <_ZdlPv>
    80005c44:	00048513          	mv	a0,s1
    80005c48:	00007097          	auipc	ra,0x7
    80005c4c:	ed0080e7          	jalr	-304(ra) # 8000cb18 <_Unwind_Resume>
    80005c50:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005c54:	00090513          	mv	a0,s2
    80005c58:	ffffd097          	auipc	ra,0xffffd
    80005c5c:	6f4080e7          	jalr	1780(ra) # 8000334c <_ZdlPv>
    80005c60:	00048513          	mv	a0,s1
    80005c64:	00007097          	auipc	ra,0x7
    80005c68:	eb4080e7          	jalr	-332(ra) # 8000cb18 <_Unwind_Resume>

0000000080005c6c <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    80005c6c:	fe010113          	addi	sp,sp,-32
    80005c70:	00113c23          	sd	ra,24(sp)
    80005c74:	00813823          	sd	s0,16(sp)
    80005c78:	00913423          	sd	s1,8(sp)
    80005c7c:	02010413          	addi	s0,sp,32
    80005c80:	00050493          	mv	s1,a0
    __putc(c);
    80005c84:	00a00513          	li	a0,10
    80005c88:	00002097          	auipc	ra,0x2
    80005c8c:	634080e7          	jalr	1588(ra) # 800082bc <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005c90:	0104a783          	lw	a5,16(s1)
    80005c94:	0144a703          	lw	a4,20(s1)
    80005c98:	00e78c63          	beq	a5,a4,80005cb0 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80005c9c:	0017879b          	addiw	a5,a5,1
    80005ca0:	0004a703          	lw	a4,0(s1)
    80005ca4:	02e7e7bb          	remw	a5,a5,a4
    80005ca8:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005cac:	fe5ff06f          	j	80005c90 <_ZN9BufferCPPD1Ev+0x24>
    80005cb0:	02100513          	li	a0,33
    80005cb4:	00002097          	auipc	ra,0x2
    80005cb8:	608080e7          	jalr	1544(ra) # 800082bc <__putc>
    80005cbc:	00a00513          	li	a0,10
    80005cc0:	00002097          	auipc	ra,0x2
    80005cc4:	5fc080e7          	jalr	1532(ra) # 800082bc <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005cc8:	0084b503          	ld	a0,8(s1)
    80005ccc:	ffffb097          	auipc	ra,0xffffb
    80005cd0:	5ac080e7          	jalr	1452(ra) # 80001278 <mem_free>
    delete itemAvailable;
    80005cd4:	0204b503          	ld	a0,32(s1)
    80005cd8:	00050863          	beqz	a0,80005ce8 <_ZN9BufferCPPD1Ev+0x7c>
    80005cdc:	00053783          	ld	a5,0(a0)
    80005ce0:	0087b783          	ld	a5,8(a5)
    80005ce4:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005ce8:	0184b503          	ld	a0,24(s1)
    80005cec:	00050863          	beqz	a0,80005cfc <_ZN9BufferCPPD1Ev+0x90>
    80005cf0:	00053783          	ld	a5,0(a0)
    80005cf4:	0087b783          	ld	a5,8(a5)
    80005cf8:	000780e7          	jalr	a5
    delete mutexTail;
    80005cfc:	0304b503          	ld	a0,48(s1)
    80005d00:	00050863          	beqz	a0,80005d10 <_ZN9BufferCPPD1Ev+0xa4>
    80005d04:	00053783          	ld	a5,0(a0)
    80005d08:	0087b783          	ld	a5,8(a5)
    80005d0c:	000780e7          	jalr	a5
    delete mutexHead;
    80005d10:	0284b503          	ld	a0,40(s1)
    80005d14:	00050863          	beqz	a0,80005d24 <_ZN9BufferCPPD1Ev+0xb8>
    80005d18:	00053783          	ld	a5,0(a0)
    80005d1c:	0087b783          	ld	a5,8(a5)
    80005d20:	000780e7          	jalr	a5

}
    80005d24:	01813083          	ld	ra,24(sp)
    80005d28:	01013403          	ld	s0,16(sp)
    80005d2c:	00813483          	ld	s1,8(sp)
    80005d30:	02010113          	addi	sp,sp,32
    80005d34:	00008067          	ret

0000000080005d38 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80005d38:	fe010113          	addi	sp,sp,-32
    80005d3c:	00113c23          	sd	ra,24(sp)
    80005d40:	00813823          	sd	s0,16(sp)
    80005d44:	00913423          	sd	s1,8(sp)
    80005d48:	01213023          	sd	s2,0(sp)
    80005d4c:	02010413          	addi	s0,sp,32
    80005d50:	00050493          	mv	s1,a0
    80005d54:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005d58:	01853503          	ld	a0,24(a0)
    80005d5c:	ffffd097          	auipc	ra,0xffffd
    80005d60:	7cc080e7          	jalr	1996(ra) # 80003528 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005d64:	0304b503          	ld	a0,48(s1)
    80005d68:	ffffd097          	auipc	ra,0xffffd
    80005d6c:	7c0080e7          	jalr	1984(ra) # 80003528 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005d70:	0084b783          	ld	a5,8(s1)
    80005d74:	0144a703          	lw	a4,20(s1)
    80005d78:	00271713          	slli	a4,a4,0x2
    80005d7c:	00e787b3          	add	a5,a5,a4
    80005d80:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005d84:	0144a783          	lw	a5,20(s1)
    80005d88:	0017879b          	addiw	a5,a5,1
    80005d8c:	0004a703          	lw	a4,0(s1)
    80005d90:	02e7e7bb          	remw	a5,a5,a4
    80005d94:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005d98:	0304b503          	ld	a0,48(s1)
    80005d9c:	ffffe097          	auipc	ra,0xffffe
    80005da0:	810080e7          	jalr	-2032(ra) # 800035ac <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005da4:	0204b503          	ld	a0,32(s1)
    80005da8:	ffffe097          	auipc	ra,0xffffe
    80005dac:	804080e7          	jalr	-2044(ra) # 800035ac <_ZN9Semaphore6signalEv>

}
    80005db0:	01813083          	ld	ra,24(sp)
    80005db4:	01013403          	ld	s0,16(sp)
    80005db8:	00813483          	ld	s1,8(sp)
    80005dbc:	00013903          	ld	s2,0(sp)
    80005dc0:	02010113          	addi	sp,sp,32
    80005dc4:	00008067          	ret

0000000080005dc8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005dc8:	fe010113          	addi	sp,sp,-32
    80005dcc:	00113c23          	sd	ra,24(sp)
    80005dd0:	00813823          	sd	s0,16(sp)
    80005dd4:	00913423          	sd	s1,8(sp)
    80005dd8:	01213023          	sd	s2,0(sp)
    80005ddc:	02010413          	addi	s0,sp,32
    80005de0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005de4:	02053503          	ld	a0,32(a0)
    80005de8:	ffffd097          	auipc	ra,0xffffd
    80005dec:	740080e7          	jalr	1856(ra) # 80003528 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005df0:	0284b503          	ld	a0,40(s1)
    80005df4:	ffffd097          	auipc	ra,0xffffd
    80005df8:	734080e7          	jalr	1844(ra) # 80003528 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005dfc:	0084b703          	ld	a4,8(s1)
    80005e00:	0104a783          	lw	a5,16(s1)
    80005e04:	00279693          	slli	a3,a5,0x2
    80005e08:	00d70733          	add	a4,a4,a3
    80005e0c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005e10:	0017879b          	addiw	a5,a5,1
    80005e14:	0004a703          	lw	a4,0(s1)
    80005e18:	02e7e7bb          	remw	a5,a5,a4
    80005e1c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005e20:	0284b503          	ld	a0,40(s1)
    80005e24:	ffffd097          	auipc	ra,0xffffd
    80005e28:	788080e7          	jalr	1928(ra) # 800035ac <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005e2c:	0184b503          	ld	a0,24(s1)
    80005e30:	ffffd097          	auipc	ra,0xffffd
    80005e34:	77c080e7          	jalr	1916(ra) # 800035ac <_ZN9Semaphore6signalEv>

    return ret;
}
    80005e38:	00090513          	mv	a0,s2
    80005e3c:	01813083          	ld	ra,24(sp)
    80005e40:	01013403          	ld	s0,16(sp)
    80005e44:	00813483          	ld	s1,8(sp)
    80005e48:	00013903          	ld	s2,0(sp)
    80005e4c:	02010113          	addi	sp,sp,32
    80005e50:	00008067          	ret

0000000080005e54 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80005e54:	ff010113          	addi	sp,sp,-16
    80005e58:	00113423          	sd	ra,8(sp)
    80005e5c:	00813023          	sd	s0,0(sp)
    80005e60:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80005e64:	00000097          	auipc	ra,0x0
    80005e68:	944080e7          	jalr	-1724(ra) # 800057a8 <_Z18Threads_C_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80005e6c:	00813083          	ld	ra,8(sp)
    80005e70:	00013403          	ld	s0,0(sp)
    80005e74:	01010113          	addi	sp,sp,16
    80005e78:	00008067          	ret

0000000080005e7c <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80005e7c:	fe010113          	addi	sp,sp,-32
    80005e80:	00113c23          	sd	ra,24(sp)
    80005e84:	00813823          	sd	s0,16(sp)
    80005e88:	00913423          	sd	s1,8(sp)
    80005e8c:	01213023          	sd	s2,0(sp)
    80005e90:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005e94:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005e98:	00600493          	li	s1,6
    while (--i > 0) {
    80005e9c:	fff4849b          	addiw	s1,s1,-1
    80005ea0:	04905463          	blez	s1,80005ee8 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80005ea4:	00003517          	auipc	a0,0x3
    80005ea8:	67450513          	addi	a0,a0,1652 # 80009518 <_ZL6digits+0x18>
    80005eac:	00000097          	auipc	ra,0x0
    80005eb0:	9d4080e7          	jalr	-1580(ra) # 80005880 <_Z11printStringPKc>
        printInt(sleep_time);
    80005eb4:	00000613          	li	a2,0
    80005eb8:	00a00593          	li	a1,10
    80005ebc:	0009051b          	sext.w	a0,s2
    80005ec0:	00000097          	auipc	ra,0x0
    80005ec4:	b58080e7          	jalr	-1192(ra) # 80005a18 <_Z8printIntiii>
        printString(" !\n");
    80005ec8:	00003517          	auipc	a0,0x3
    80005ecc:	65850513          	addi	a0,a0,1624 # 80009520 <_ZL6digits+0x20>
    80005ed0:	00000097          	auipc	ra,0x0
    80005ed4:	9b0080e7          	jalr	-1616(ra) # 80005880 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005ed8:	00090513          	mv	a0,s2
    80005edc:	ffffb097          	auipc	ra,0xffffb
    80005ee0:	54c080e7          	jalr	1356(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    80005ee4:	fb9ff06f          	j	80005e9c <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005ee8:	00a00793          	li	a5,10
    80005eec:	02f95933          	divu	s2,s2,a5
    80005ef0:	fff90913          	addi	s2,s2,-1
    80005ef4:	00006797          	auipc	a5,0x6
    80005ef8:	b5478793          	addi	a5,a5,-1196 # 8000ba48 <finished>
    80005efc:	01278933          	add	s2,a5,s2
    80005f00:	00100793          	li	a5,1
    80005f04:	00f90023          	sb	a5,0(s2)
}
    80005f08:	01813083          	ld	ra,24(sp)
    80005f0c:	01013403          	ld	s0,16(sp)
    80005f10:	00813483          	ld	s1,8(sp)
    80005f14:	00013903          	ld	s2,0(sp)
    80005f18:	02010113          	addi	sp,sp,32
    80005f1c:	00008067          	ret

0000000080005f20 <_Z12testSleepingv>:

void testSleeping()
{
    80005f20:	fc010113          	addi	sp,sp,-64
    80005f24:	02113c23          	sd	ra,56(sp)
    80005f28:	02813823          	sd	s0,48(sp)
    80005f2c:	02913423          	sd	s1,40(sp)
    80005f30:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005f34:	00a00793          	li	a5,10
    80005f38:	fcf43823          	sd	a5,-48(s0)
    80005f3c:	01400793          	li	a5,20
    80005f40:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005f44:	00000493          	li	s1,0
    80005f48:	02c0006f          	j	80005f74 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005f4c:	00349793          	slli	a5,s1,0x3
    80005f50:	fd040613          	addi	a2,s0,-48
    80005f54:	00f60633          	add	a2,a2,a5
    80005f58:	00000597          	auipc	a1,0x0
    80005f5c:	f2458593          	addi	a1,a1,-220 # 80005e7c <_Z9sleepyRunPv>
    80005f60:	fc040513          	addi	a0,s0,-64
    80005f64:	00f50533          	add	a0,a0,a5
    80005f68:	ffffb097          	auipc	ra,0xffffb
    80005f6c:	33c080e7          	jalr	828(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005f70:	0014849b          	addiw	s1,s1,1
    80005f74:	00100793          	li	a5,1
    80005f78:	fc97dae3          	bge	a5,s1,80005f4c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005f7c:	00006797          	auipc	a5,0x6
    80005f80:	acc7c783          	lbu	a5,-1332(a5) # 8000ba48 <finished>
    80005f84:	fe078ce3          	beqz	a5,80005f7c <_Z12testSleepingv+0x5c>
    80005f88:	00006797          	auipc	a5,0x6
    80005f8c:	ac17c783          	lbu	a5,-1343(a5) # 8000ba49 <finished+0x1>
    80005f90:	fe0786e3          	beqz	a5,80005f7c <_Z12testSleepingv+0x5c>
}
    80005f94:	03813083          	ld	ra,56(sp)
    80005f98:	03013403          	ld	s0,48(sp)
    80005f9c:	02813483          	ld	s1,40(sp)
    80005fa0:	04010113          	addi	sp,sp,64
    80005fa4:	00008067          	ret

0000000080005fa8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    80005fa8:	fe010113          	addi	sp,sp,-32
    80005fac:	00113c23          	sd	ra,24(sp)
    80005fb0:	00813823          	sd	s0,16(sp)
    80005fb4:	00913423          	sd	s1,8(sp)
    80005fb8:	02010413          	addi	s0,sp,32
    80005fbc:	00050493          	mv	s1,a0
    80005fc0:	00b52023          	sw	a1,0(a0)
    80005fc4:	00052823          	sw	zero,16(a0)
    80005fc8:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005fcc:	00259513          	slli	a0,a1,0x2
    80005fd0:	ffffb097          	auipc	ra,0xffffb
    80005fd4:	278080e7          	jalr	632(ra) # 80001248 <mem_alloc>
    80005fd8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005fdc:	00000593          	li	a1,0
    80005fe0:	02048513          	addi	a0,s1,32
    80005fe4:	ffffb097          	auipc	ra,0xffffb
    80005fe8:	388080e7          	jalr	904(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    80005fec:	0004a583          	lw	a1,0(s1)
    80005ff0:	01848513          	addi	a0,s1,24
    80005ff4:	ffffb097          	auipc	ra,0xffffb
    80005ff8:	378080e7          	jalr	888(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    80005ffc:	00100593          	li	a1,1
    80006000:	02848513          	addi	a0,s1,40
    80006004:	ffffb097          	auipc	ra,0xffffb
    80006008:	368080e7          	jalr	872(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    8000600c:	00100593          	li	a1,1
    80006010:	03048513          	addi	a0,s1,48
    80006014:	ffffb097          	auipc	ra,0xffffb
    80006018:	358080e7          	jalr	856(ra) # 8000136c <sem_open>
}
    8000601c:	01813083          	ld	ra,24(sp)
    80006020:	01013403          	ld	s0,16(sp)
    80006024:	00813483          	ld	s1,8(sp)
    80006028:	02010113          	addi	sp,sp,32
    8000602c:	00008067          	ret

0000000080006030 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    80006030:	fe010113          	addi	sp,sp,-32
    80006034:	00113c23          	sd	ra,24(sp)
    80006038:	00813823          	sd	s0,16(sp)
    8000603c:	00913423          	sd	s1,8(sp)
    80006040:	02010413          	addi	s0,sp,32
    80006044:	00050493          	mv	s1,a0
    80006048:	00a00513          	li	a0,10
    8000604c:	00002097          	auipc	ra,0x2
    80006050:	270080e7          	jalr	624(ra) # 800082bc <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80006054:	0104a783          	lw	a5,16(s1)
    80006058:	0144a703          	lw	a4,20(s1)
    8000605c:	00e78c63          	beq	a5,a4,80006074 <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80006060:	0017879b          	addiw	a5,a5,1
    80006064:	0004a703          	lw	a4,0(s1)
    80006068:	02e7e7bb          	remw	a5,a5,a4
    8000606c:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80006070:	fe5ff06f          	j	80006054 <_ZN6BufferD1Ev+0x24>
    80006074:	02100513          	li	a0,33
    80006078:	00002097          	auipc	ra,0x2
    8000607c:	244080e7          	jalr	580(ra) # 800082bc <__putc>
    80006080:	00a00513          	li	a0,10
    80006084:	00002097          	auipc	ra,0x2
    80006088:	238080e7          	jalr	568(ra) # 800082bc <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    8000608c:	0084b503          	ld	a0,8(s1)
    80006090:	ffffb097          	auipc	ra,0xffffb
    80006094:	1e8080e7          	jalr	488(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    80006098:	0204b503          	ld	a0,32(s1)
    8000609c:	ffffb097          	auipc	ra,0xffffb
    800060a0:	308080e7          	jalr	776(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    800060a4:	0184b503          	ld	a0,24(s1)
    800060a8:	ffffb097          	auipc	ra,0xffffb
    800060ac:	2fc080e7          	jalr	764(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    800060b0:	0304b503          	ld	a0,48(s1)
    800060b4:	ffffb097          	auipc	ra,0xffffb
    800060b8:	2f0080e7          	jalr	752(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    800060bc:	0284b503          	ld	a0,40(s1)
    800060c0:	ffffb097          	auipc	ra,0xffffb
    800060c4:	2e4080e7          	jalr	740(ra) # 800013a4 <sem_close>
}
    800060c8:	01813083          	ld	ra,24(sp)
    800060cc:	01013403          	ld	s0,16(sp)
    800060d0:	00813483          	ld	s1,8(sp)
    800060d4:	02010113          	addi	sp,sp,32
    800060d8:	00008067          	ret

00000000800060dc <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    800060dc:	fe010113          	addi	sp,sp,-32
    800060e0:	00113c23          	sd	ra,24(sp)
    800060e4:	00813823          	sd	s0,16(sp)
    800060e8:	00913423          	sd	s1,8(sp)
    800060ec:	01213023          	sd	s2,0(sp)
    800060f0:	02010413          	addi	s0,sp,32
    800060f4:	00050493          	mv	s1,a0
    800060f8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800060fc:	01853503          	ld	a0,24(a0)
    80006100:	ffffb097          	auipc	ra,0xffffb
    80006104:	2d0080e7          	jalr	720(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    80006108:	0304b503          	ld	a0,48(s1)
    8000610c:	ffffb097          	auipc	ra,0xffffb
    80006110:	2c4080e7          	jalr	708(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    80006114:	0084b783          	ld	a5,8(s1)
    80006118:	0144a703          	lw	a4,20(s1)
    8000611c:	00271713          	slli	a4,a4,0x2
    80006120:	00e787b3          	add	a5,a5,a4
    80006124:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006128:	0144a783          	lw	a5,20(s1)
    8000612c:	0017879b          	addiw	a5,a5,1
    80006130:	0004a703          	lw	a4,0(s1)
    80006134:	02e7e7bb          	remw	a5,a5,a4
    80006138:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000613c:	0304b503          	ld	a0,48(s1)
    80006140:	ffffb097          	auipc	ra,0xffffb
    80006144:	2bc080e7          	jalr	700(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    80006148:	0204b503          	ld	a0,32(s1)
    8000614c:	ffffb097          	auipc	ra,0xffffb
    80006150:	2b0080e7          	jalr	688(ra) # 800013fc <sem_signal>

}
    80006154:	01813083          	ld	ra,24(sp)
    80006158:	01013403          	ld	s0,16(sp)
    8000615c:	00813483          	ld	s1,8(sp)
    80006160:	00013903          	ld	s2,0(sp)
    80006164:	02010113          	addi	sp,sp,32
    80006168:	00008067          	ret

000000008000616c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000616c:	fe010113          	addi	sp,sp,-32
    80006170:	00113c23          	sd	ra,24(sp)
    80006174:	00813823          	sd	s0,16(sp)
    80006178:	00913423          	sd	s1,8(sp)
    8000617c:	01213023          	sd	s2,0(sp)
    80006180:	02010413          	addi	s0,sp,32
    80006184:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006188:	02053503          	ld	a0,32(a0)
    8000618c:	ffffb097          	auipc	ra,0xffffb
    80006190:	244080e7          	jalr	580(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    80006194:	0284b503          	ld	a0,40(s1)
    80006198:	ffffb097          	auipc	ra,0xffffb
    8000619c:	238080e7          	jalr	568(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    800061a0:	0084b703          	ld	a4,8(s1)
    800061a4:	0104a783          	lw	a5,16(s1)
    800061a8:	00279693          	slli	a3,a5,0x2
    800061ac:	00d70733          	add	a4,a4,a3
    800061b0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800061b4:	0017879b          	addiw	a5,a5,1
    800061b8:	0004a703          	lw	a4,0(s1)
    800061bc:	02e7e7bb          	remw	a5,a5,a4
    800061c0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800061c4:	0284b503          	ld	a0,40(s1)
    800061c8:	ffffb097          	auipc	ra,0xffffb
    800061cc:	234080e7          	jalr	564(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    800061d0:	0184b503          	ld	a0,24(s1)
    800061d4:	ffffb097          	auipc	ra,0xffffb
    800061d8:	228080e7          	jalr	552(ra) # 800013fc <sem_signal>

    return ret;
}
    800061dc:	00090513          	mv	a0,s2
    800061e0:	01813083          	ld	ra,24(sp)
    800061e4:	01013403          	ld	s0,16(sp)
    800061e8:	00813483          	ld	s1,8(sp)
    800061ec:	00013903          	ld	s2,0(sp)
    800061f0:	02010113          	addi	sp,sp,32
    800061f4:	00008067          	ret

00000000800061f8 <start>:
    800061f8:	ff010113          	addi	sp,sp,-16
    800061fc:	00813423          	sd	s0,8(sp)
    80006200:	01010413          	addi	s0,sp,16
    80006204:	300027f3          	csrr	a5,mstatus
    80006208:	ffffe737          	lui	a4,0xffffe
    8000620c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1b4f>
    80006210:	00e7f7b3          	and	a5,a5,a4
    80006214:	00001737          	lui	a4,0x1
    80006218:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000621c:	00e7e7b3          	or	a5,a5,a4
    80006220:	30079073          	csrw	mstatus,a5
    80006224:	00000797          	auipc	a5,0x0
    80006228:	16078793          	addi	a5,a5,352 # 80006384 <system_main>
    8000622c:	34179073          	csrw	mepc,a5
    80006230:	00000793          	li	a5,0
    80006234:	18079073          	csrw	satp,a5
    80006238:	000107b7          	lui	a5,0x10
    8000623c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006240:	30279073          	csrw	medeleg,a5
    80006244:	30379073          	csrw	mideleg,a5
    80006248:	104027f3          	csrr	a5,sie
    8000624c:	2227e793          	ori	a5,a5,546
    80006250:	10479073          	csrw	sie,a5
    80006254:	fff00793          	li	a5,-1
    80006258:	00a7d793          	srli	a5,a5,0xa
    8000625c:	3b079073          	csrw	pmpaddr0,a5
    80006260:	00f00793          	li	a5,15
    80006264:	3a079073          	csrw	pmpcfg0,a5
    80006268:	f14027f3          	csrr	a5,mhartid
    8000626c:	0200c737          	lui	a4,0x200c
    80006270:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006274:	0007869b          	sext.w	a3,a5
    80006278:	00269713          	slli	a4,a3,0x2
    8000627c:	000f4637          	lui	a2,0xf4
    80006280:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006284:	00d70733          	add	a4,a4,a3
    80006288:	0037979b          	slliw	a5,a5,0x3
    8000628c:	020046b7          	lui	a3,0x2004
    80006290:	00d787b3          	add	a5,a5,a3
    80006294:	00c585b3          	add	a1,a1,a2
    80006298:	00371693          	slli	a3,a4,0x3
    8000629c:	00005717          	auipc	a4,0x5
    800062a0:	7b470713          	addi	a4,a4,1972 # 8000ba50 <timer_scratch>
    800062a4:	00b7b023          	sd	a1,0(a5)
    800062a8:	00d70733          	add	a4,a4,a3
    800062ac:	00f73c23          	sd	a5,24(a4)
    800062b0:	02c73023          	sd	a2,32(a4)
    800062b4:	34071073          	csrw	mscratch,a4
    800062b8:	00000797          	auipc	a5,0x0
    800062bc:	6e878793          	addi	a5,a5,1768 # 800069a0 <timervec>
    800062c0:	30579073          	csrw	mtvec,a5
    800062c4:	300027f3          	csrr	a5,mstatus
    800062c8:	0087e793          	ori	a5,a5,8
    800062cc:	30079073          	csrw	mstatus,a5
    800062d0:	304027f3          	csrr	a5,mie
    800062d4:	0807e793          	ori	a5,a5,128
    800062d8:	30479073          	csrw	mie,a5
    800062dc:	f14027f3          	csrr	a5,mhartid
    800062e0:	0007879b          	sext.w	a5,a5
    800062e4:	00078213          	mv	tp,a5
    800062e8:	30200073          	mret
    800062ec:	00813403          	ld	s0,8(sp)
    800062f0:	01010113          	addi	sp,sp,16
    800062f4:	00008067          	ret

00000000800062f8 <timerinit>:
    800062f8:	ff010113          	addi	sp,sp,-16
    800062fc:	00813423          	sd	s0,8(sp)
    80006300:	01010413          	addi	s0,sp,16
    80006304:	f14027f3          	csrr	a5,mhartid
    80006308:	0200c737          	lui	a4,0x200c
    8000630c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006310:	0007869b          	sext.w	a3,a5
    80006314:	00269713          	slli	a4,a3,0x2
    80006318:	000f4637          	lui	a2,0xf4
    8000631c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006320:	00d70733          	add	a4,a4,a3
    80006324:	0037979b          	slliw	a5,a5,0x3
    80006328:	020046b7          	lui	a3,0x2004
    8000632c:	00d787b3          	add	a5,a5,a3
    80006330:	00c585b3          	add	a1,a1,a2
    80006334:	00371693          	slli	a3,a4,0x3
    80006338:	00005717          	auipc	a4,0x5
    8000633c:	71870713          	addi	a4,a4,1816 # 8000ba50 <timer_scratch>
    80006340:	00b7b023          	sd	a1,0(a5)
    80006344:	00d70733          	add	a4,a4,a3
    80006348:	00f73c23          	sd	a5,24(a4)
    8000634c:	02c73023          	sd	a2,32(a4)
    80006350:	34071073          	csrw	mscratch,a4
    80006354:	00000797          	auipc	a5,0x0
    80006358:	64c78793          	addi	a5,a5,1612 # 800069a0 <timervec>
    8000635c:	30579073          	csrw	mtvec,a5
    80006360:	300027f3          	csrr	a5,mstatus
    80006364:	0087e793          	ori	a5,a5,8
    80006368:	30079073          	csrw	mstatus,a5
    8000636c:	304027f3          	csrr	a5,mie
    80006370:	0807e793          	ori	a5,a5,128
    80006374:	30479073          	csrw	mie,a5
    80006378:	00813403          	ld	s0,8(sp)
    8000637c:	01010113          	addi	sp,sp,16
    80006380:	00008067          	ret

0000000080006384 <system_main>:
    80006384:	fe010113          	addi	sp,sp,-32
    80006388:	00813823          	sd	s0,16(sp)
    8000638c:	00913423          	sd	s1,8(sp)
    80006390:	00113c23          	sd	ra,24(sp)
    80006394:	02010413          	addi	s0,sp,32
    80006398:	00000097          	auipc	ra,0x0
    8000639c:	0c4080e7          	jalr	196(ra) # 8000645c <cpuid>
    800063a0:	00005497          	auipc	s1,0x5
    800063a4:	5b048493          	addi	s1,s1,1456 # 8000b950 <started>
    800063a8:	02050263          	beqz	a0,800063cc <system_main+0x48>
    800063ac:	0004a783          	lw	a5,0(s1)
    800063b0:	0007879b          	sext.w	a5,a5
    800063b4:	fe078ce3          	beqz	a5,800063ac <system_main+0x28>
    800063b8:	0ff0000f          	fence
    800063bc:	00003517          	auipc	a0,0x3
    800063c0:	19c50513          	addi	a0,a0,412 # 80009558 <_ZL6digits+0x58>
    800063c4:	00001097          	auipc	ra,0x1
    800063c8:	a78080e7          	jalr	-1416(ra) # 80006e3c <panic>
    800063cc:	00001097          	auipc	ra,0x1
    800063d0:	9cc080e7          	jalr	-1588(ra) # 80006d98 <consoleinit>
    800063d4:	00001097          	auipc	ra,0x1
    800063d8:	158080e7          	jalr	344(ra) # 8000752c <printfinit>
    800063dc:	00003517          	auipc	a0,0x3
    800063e0:	d3450513          	addi	a0,a0,-716 # 80009110 <CONSOLE_STATUS+0x100>
    800063e4:	00001097          	auipc	ra,0x1
    800063e8:	ab4080e7          	jalr	-1356(ra) # 80006e98 <__printf>
    800063ec:	00003517          	auipc	a0,0x3
    800063f0:	13c50513          	addi	a0,a0,316 # 80009528 <_ZL6digits+0x28>
    800063f4:	00001097          	auipc	ra,0x1
    800063f8:	aa4080e7          	jalr	-1372(ra) # 80006e98 <__printf>
    800063fc:	00003517          	auipc	a0,0x3
    80006400:	d1450513          	addi	a0,a0,-748 # 80009110 <CONSOLE_STATUS+0x100>
    80006404:	00001097          	auipc	ra,0x1
    80006408:	a94080e7          	jalr	-1388(ra) # 80006e98 <__printf>
    8000640c:	00001097          	auipc	ra,0x1
    80006410:	4ac080e7          	jalr	1196(ra) # 800078b8 <kinit>
    80006414:	00000097          	auipc	ra,0x0
    80006418:	148080e7          	jalr	328(ra) # 8000655c <trapinit>
    8000641c:	00000097          	auipc	ra,0x0
    80006420:	16c080e7          	jalr	364(ra) # 80006588 <trapinithart>
    80006424:	00000097          	auipc	ra,0x0
    80006428:	5bc080e7          	jalr	1468(ra) # 800069e0 <plicinit>
    8000642c:	00000097          	auipc	ra,0x0
    80006430:	5dc080e7          	jalr	1500(ra) # 80006a08 <plicinithart>
    80006434:	00000097          	auipc	ra,0x0
    80006438:	078080e7          	jalr	120(ra) # 800064ac <userinit>
    8000643c:	0ff0000f          	fence
    80006440:	00100793          	li	a5,1
    80006444:	00003517          	auipc	a0,0x3
    80006448:	0fc50513          	addi	a0,a0,252 # 80009540 <_ZL6digits+0x40>
    8000644c:	00f4a023          	sw	a5,0(s1)
    80006450:	00001097          	auipc	ra,0x1
    80006454:	a48080e7          	jalr	-1464(ra) # 80006e98 <__printf>
    80006458:	0000006f          	j	80006458 <system_main+0xd4>

000000008000645c <cpuid>:
    8000645c:	ff010113          	addi	sp,sp,-16
    80006460:	00813423          	sd	s0,8(sp)
    80006464:	01010413          	addi	s0,sp,16
    80006468:	00020513          	mv	a0,tp
    8000646c:	00813403          	ld	s0,8(sp)
    80006470:	0005051b          	sext.w	a0,a0
    80006474:	01010113          	addi	sp,sp,16
    80006478:	00008067          	ret

000000008000647c <mycpu>:
    8000647c:	ff010113          	addi	sp,sp,-16
    80006480:	00813423          	sd	s0,8(sp)
    80006484:	01010413          	addi	s0,sp,16
    80006488:	00020793          	mv	a5,tp
    8000648c:	00813403          	ld	s0,8(sp)
    80006490:	0007879b          	sext.w	a5,a5
    80006494:	00779793          	slli	a5,a5,0x7
    80006498:	00006517          	auipc	a0,0x6
    8000649c:	5e850513          	addi	a0,a0,1512 # 8000ca80 <cpus>
    800064a0:	00f50533          	add	a0,a0,a5
    800064a4:	01010113          	addi	sp,sp,16
    800064a8:	00008067          	ret

00000000800064ac <userinit>:
    800064ac:	ff010113          	addi	sp,sp,-16
    800064b0:	00813423          	sd	s0,8(sp)
    800064b4:	01010413          	addi	s0,sp,16
    800064b8:	00813403          	ld	s0,8(sp)
    800064bc:	01010113          	addi	sp,sp,16
    800064c0:	ffffd317          	auipc	t1,0xffffd
    800064c4:	d8030067          	jr	-640(t1) # 80003240 <main>

00000000800064c8 <either_copyout>:
    800064c8:	ff010113          	addi	sp,sp,-16
    800064cc:	00813023          	sd	s0,0(sp)
    800064d0:	00113423          	sd	ra,8(sp)
    800064d4:	01010413          	addi	s0,sp,16
    800064d8:	02051663          	bnez	a0,80006504 <either_copyout+0x3c>
    800064dc:	00058513          	mv	a0,a1
    800064e0:	00060593          	mv	a1,a2
    800064e4:	0006861b          	sext.w	a2,a3
    800064e8:	00002097          	auipc	ra,0x2
    800064ec:	c5c080e7          	jalr	-932(ra) # 80008144 <__memmove>
    800064f0:	00813083          	ld	ra,8(sp)
    800064f4:	00013403          	ld	s0,0(sp)
    800064f8:	00000513          	li	a0,0
    800064fc:	01010113          	addi	sp,sp,16
    80006500:	00008067          	ret
    80006504:	00003517          	auipc	a0,0x3
    80006508:	07c50513          	addi	a0,a0,124 # 80009580 <_ZL6digits+0x80>
    8000650c:	00001097          	auipc	ra,0x1
    80006510:	930080e7          	jalr	-1744(ra) # 80006e3c <panic>

0000000080006514 <either_copyin>:
    80006514:	ff010113          	addi	sp,sp,-16
    80006518:	00813023          	sd	s0,0(sp)
    8000651c:	00113423          	sd	ra,8(sp)
    80006520:	01010413          	addi	s0,sp,16
    80006524:	02059463          	bnez	a1,8000654c <either_copyin+0x38>
    80006528:	00060593          	mv	a1,a2
    8000652c:	0006861b          	sext.w	a2,a3
    80006530:	00002097          	auipc	ra,0x2
    80006534:	c14080e7          	jalr	-1004(ra) # 80008144 <__memmove>
    80006538:	00813083          	ld	ra,8(sp)
    8000653c:	00013403          	ld	s0,0(sp)
    80006540:	00000513          	li	a0,0
    80006544:	01010113          	addi	sp,sp,16
    80006548:	00008067          	ret
    8000654c:	00003517          	auipc	a0,0x3
    80006550:	05c50513          	addi	a0,a0,92 # 800095a8 <_ZL6digits+0xa8>
    80006554:	00001097          	auipc	ra,0x1
    80006558:	8e8080e7          	jalr	-1816(ra) # 80006e3c <panic>

000000008000655c <trapinit>:
    8000655c:	ff010113          	addi	sp,sp,-16
    80006560:	00813423          	sd	s0,8(sp)
    80006564:	01010413          	addi	s0,sp,16
    80006568:	00813403          	ld	s0,8(sp)
    8000656c:	00003597          	auipc	a1,0x3
    80006570:	06458593          	addi	a1,a1,100 # 800095d0 <_ZL6digits+0xd0>
    80006574:	00006517          	auipc	a0,0x6
    80006578:	58c50513          	addi	a0,a0,1420 # 8000cb00 <tickslock>
    8000657c:	01010113          	addi	sp,sp,16
    80006580:	00001317          	auipc	t1,0x1
    80006584:	5c830067          	jr	1480(t1) # 80007b48 <initlock>

0000000080006588 <trapinithart>:
    80006588:	ff010113          	addi	sp,sp,-16
    8000658c:	00813423          	sd	s0,8(sp)
    80006590:	01010413          	addi	s0,sp,16
    80006594:	00000797          	auipc	a5,0x0
    80006598:	2fc78793          	addi	a5,a5,764 # 80006890 <kernelvec>
    8000659c:	10579073          	csrw	stvec,a5
    800065a0:	00813403          	ld	s0,8(sp)
    800065a4:	01010113          	addi	sp,sp,16
    800065a8:	00008067          	ret

00000000800065ac <usertrap>:
    800065ac:	ff010113          	addi	sp,sp,-16
    800065b0:	00813423          	sd	s0,8(sp)
    800065b4:	01010413          	addi	s0,sp,16
    800065b8:	00813403          	ld	s0,8(sp)
    800065bc:	01010113          	addi	sp,sp,16
    800065c0:	00008067          	ret

00000000800065c4 <usertrapret>:
    800065c4:	ff010113          	addi	sp,sp,-16
    800065c8:	00813423          	sd	s0,8(sp)
    800065cc:	01010413          	addi	s0,sp,16
    800065d0:	00813403          	ld	s0,8(sp)
    800065d4:	01010113          	addi	sp,sp,16
    800065d8:	00008067          	ret

00000000800065dc <kerneltrap>:
    800065dc:	fe010113          	addi	sp,sp,-32
    800065e0:	00813823          	sd	s0,16(sp)
    800065e4:	00113c23          	sd	ra,24(sp)
    800065e8:	00913423          	sd	s1,8(sp)
    800065ec:	02010413          	addi	s0,sp,32
    800065f0:	142025f3          	csrr	a1,scause
    800065f4:	100027f3          	csrr	a5,sstatus
    800065f8:	0027f793          	andi	a5,a5,2
    800065fc:	10079c63          	bnez	a5,80006714 <kerneltrap+0x138>
    80006600:	142027f3          	csrr	a5,scause
    80006604:	0207ce63          	bltz	a5,80006640 <kerneltrap+0x64>
    80006608:	00003517          	auipc	a0,0x3
    8000660c:	01050513          	addi	a0,a0,16 # 80009618 <_ZL6digits+0x118>
    80006610:	00001097          	auipc	ra,0x1
    80006614:	888080e7          	jalr	-1912(ra) # 80006e98 <__printf>
    80006618:	141025f3          	csrr	a1,sepc
    8000661c:	14302673          	csrr	a2,stval
    80006620:	00003517          	auipc	a0,0x3
    80006624:	00850513          	addi	a0,a0,8 # 80009628 <_ZL6digits+0x128>
    80006628:	00001097          	auipc	ra,0x1
    8000662c:	870080e7          	jalr	-1936(ra) # 80006e98 <__printf>
    80006630:	00003517          	auipc	a0,0x3
    80006634:	01050513          	addi	a0,a0,16 # 80009640 <_ZL6digits+0x140>
    80006638:	00001097          	auipc	ra,0x1
    8000663c:	804080e7          	jalr	-2044(ra) # 80006e3c <panic>
    80006640:	0ff7f713          	andi	a4,a5,255
    80006644:	00900693          	li	a3,9
    80006648:	04d70063          	beq	a4,a3,80006688 <kerneltrap+0xac>
    8000664c:	fff00713          	li	a4,-1
    80006650:	03f71713          	slli	a4,a4,0x3f
    80006654:	00170713          	addi	a4,a4,1
    80006658:	fae798e3          	bne	a5,a4,80006608 <kerneltrap+0x2c>
    8000665c:	00000097          	auipc	ra,0x0
    80006660:	e00080e7          	jalr	-512(ra) # 8000645c <cpuid>
    80006664:	06050663          	beqz	a0,800066d0 <kerneltrap+0xf4>
    80006668:	144027f3          	csrr	a5,sip
    8000666c:	ffd7f793          	andi	a5,a5,-3
    80006670:	14479073          	csrw	sip,a5
    80006674:	01813083          	ld	ra,24(sp)
    80006678:	01013403          	ld	s0,16(sp)
    8000667c:	00813483          	ld	s1,8(sp)
    80006680:	02010113          	addi	sp,sp,32
    80006684:	00008067          	ret
    80006688:	00000097          	auipc	ra,0x0
    8000668c:	3cc080e7          	jalr	972(ra) # 80006a54 <plic_claim>
    80006690:	00a00793          	li	a5,10
    80006694:	00050493          	mv	s1,a0
    80006698:	06f50863          	beq	a0,a5,80006708 <kerneltrap+0x12c>
    8000669c:	fc050ce3          	beqz	a0,80006674 <kerneltrap+0x98>
    800066a0:	00050593          	mv	a1,a0
    800066a4:	00003517          	auipc	a0,0x3
    800066a8:	f5450513          	addi	a0,a0,-172 # 800095f8 <_ZL6digits+0xf8>
    800066ac:	00000097          	auipc	ra,0x0
    800066b0:	7ec080e7          	jalr	2028(ra) # 80006e98 <__printf>
    800066b4:	01013403          	ld	s0,16(sp)
    800066b8:	01813083          	ld	ra,24(sp)
    800066bc:	00048513          	mv	a0,s1
    800066c0:	00813483          	ld	s1,8(sp)
    800066c4:	02010113          	addi	sp,sp,32
    800066c8:	00000317          	auipc	t1,0x0
    800066cc:	3c430067          	jr	964(t1) # 80006a8c <plic_complete>
    800066d0:	00006517          	auipc	a0,0x6
    800066d4:	43050513          	addi	a0,a0,1072 # 8000cb00 <tickslock>
    800066d8:	00001097          	auipc	ra,0x1
    800066dc:	494080e7          	jalr	1172(ra) # 80007b6c <acquire>
    800066e0:	00005717          	auipc	a4,0x5
    800066e4:	27470713          	addi	a4,a4,628 # 8000b954 <ticks>
    800066e8:	00072783          	lw	a5,0(a4)
    800066ec:	00006517          	auipc	a0,0x6
    800066f0:	41450513          	addi	a0,a0,1044 # 8000cb00 <tickslock>
    800066f4:	0017879b          	addiw	a5,a5,1
    800066f8:	00f72023          	sw	a5,0(a4)
    800066fc:	00001097          	auipc	ra,0x1
    80006700:	53c080e7          	jalr	1340(ra) # 80007c38 <release>
    80006704:	f65ff06f          	j	80006668 <kerneltrap+0x8c>
    80006708:	00001097          	auipc	ra,0x1
    8000670c:	098080e7          	jalr	152(ra) # 800077a0 <uartintr>
    80006710:	fa5ff06f          	j	800066b4 <kerneltrap+0xd8>
    80006714:	00003517          	auipc	a0,0x3
    80006718:	ec450513          	addi	a0,a0,-316 # 800095d8 <_ZL6digits+0xd8>
    8000671c:	00000097          	auipc	ra,0x0
    80006720:	720080e7          	jalr	1824(ra) # 80006e3c <panic>

0000000080006724 <clockintr>:
    80006724:	fe010113          	addi	sp,sp,-32
    80006728:	00813823          	sd	s0,16(sp)
    8000672c:	00913423          	sd	s1,8(sp)
    80006730:	00113c23          	sd	ra,24(sp)
    80006734:	02010413          	addi	s0,sp,32
    80006738:	00006497          	auipc	s1,0x6
    8000673c:	3c848493          	addi	s1,s1,968 # 8000cb00 <tickslock>
    80006740:	00048513          	mv	a0,s1
    80006744:	00001097          	auipc	ra,0x1
    80006748:	428080e7          	jalr	1064(ra) # 80007b6c <acquire>
    8000674c:	00005717          	auipc	a4,0x5
    80006750:	20870713          	addi	a4,a4,520 # 8000b954 <ticks>
    80006754:	00072783          	lw	a5,0(a4)
    80006758:	01013403          	ld	s0,16(sp)
    8000675c:	01813083          	ld	ra,24(sp)
    80006760:	00048513          	mv	a0,s1
    80006764:	0017879b          	addiw	a5,a5,1
    80006768:	00813483          	ld	s1,8(sp)
    8000676c:	00f72023          	sw	a5,0(a4)
    80006770:	02010113          	addi	sp,sp,32
    80006774:	00001317          	auipc	t1,0x1
    80006778:	4c430067          	jr	1220(t1) # 80007c38 <release>

000000008000677c <devintr>:
    8000677c:	142027f3          	csrr	a5,scause
    80006780:	00000513          	li	a0,0
    80006784:	0007c463          	bltz	a5,8000678c <devintr+0x10>
    80006788:	00008067          	ret
    8000678c:	fe010113          	addi	sp,sp,-32
    80006790:	00813823          	sd	s0,16(sp)
    80006794:	00113c23          	sd	ra,24(sp)
    80006798:	00913423          	sd	s1,8(sp)
    8000679c:	02010413          	addi	s0,sp,32
    800067a0:	0ff7f713          	andi	a4,a5,255
    800067a4:	00900693          	li	a3,9
    800067a8:	04d70c63          	beq	a4,a3,80006800 <devintr+0x84>
    800067ac:	fff00713          	li	a4,-1
    800067b0:	03f71713          	slli	a4,a4,0x3f
    800067b4:	00170713          	addi	a4,a4,1
    800067b8:	00e78c63          	beq	a5,a4,800067d0 <devintr+0x54>
    800067bc:	01813083          	ld	ra,24(sp)
    800067c0:	01013403          	ld	s0,16(sp)
    800067c4:	00813483          	ld	s1,8(sp)
    800067c8:	02010113          	addi	sp,sp,32
    800067cc:	00008067          	ret
    800067d0:	00000097          	auipc	ra,0x0
    800067d4:	c8c080e7          	jalr	-884(ra) # 8000645c <cpuid>
    800067d8:	06050663          	beqz	a0,80006844 <devintr+0xc8>
    800067dc:	144027f3          	csrr	a5,sip
    800067e0:	ffd7f793          	andi	a5,a5,-3
    800067e4:	14479073          	csrw	sip,a5
    800067e8:	01813083          	ld	ra,24(sp)
    800067ec:	01013403          	ld	s0,16(sp)
    800067f0:	00813483          	ld	s1,8(sp)
    800067f4:	00200513          	li	a0,2
    800067f8:	02010113          	addi	sp,sp,32
    800067fc:	00008067          	ret
    80006800:	00000097          	auipc	ra,0x0
    80006804:	254080e7          	jalr	596(ra) # 80006a54 <plic_claim>
    80006808:	00a00793          	li	a5,10
    8000680c:	00050493          	mv	s1,a0
    80006810:	06f50663          	beq	a0,a5,8000687c <devintr+0x100>
    80006814:	00100513          	li	a0,1
    80006818:	fa0482e3          	beqz	s1,800067bc <devintr+0x40>
    8000681c:	00048593          	mv	a1,s1
    80006820:	00003517          	auipc	a0,0x3
    80006824:	dd850513          	addi	a0,a0,-552 # 800095f8 <_ZL6digits+0xf8>
    80006828:	00000097          	auipc	ra,0x0
    8000682c:	670080e7          	jalr	1648(ra) # 80006e98 <__printf>
    80006830:	00048513          	mv	a0,s1
    80006834:	00000097          	auipc	ra,0x0
    80006838:	258080e7          	jalr	600(ra) # 80006a8c <plic_complete>
    8000683c:	00100513          	li	a0,1
    80006840:	f7dff06f          	j	800067bc <devintr+0x40>
    80006844:	00006517          	auipc	a0,0x6
    80006848:	2bc50513          	addi	a0,a0,700 # 8000cb00 <tickslock>
    8000684c:	00001097          	auipc	ra,0x1
    80006850:	320080e7          	jalr	800(ra) # 80007b6c <acquire>
    80006854:	00005717          	auipc	a4,0x5
    80006858:	10070713          	addi	a4,a4,256 # 8000b954 <ticks>
    8000685c:	00072783          	lw	a5,0(a4)
    80006860:	00006517          	auipc	a0,0x6
    80006864:	2a050513          	addi	a0,a0,672 # 8000cb00 <tickslock>
    80006868:	0017879b          	addiw	a5,a5,1
    8000686c:	00f72023          	sw	a5,0(a4)
    80006870:	00001097          	auipc	ra,0x1
    80006874:	3c8080e7          	jalr	968(ra) # 80007c38 <release>
    80006878:	f65ff06f          	j	800067dc <devintr+0x60>
    8000687c:	00001097          	auipc	ra,0x1
    80006880:	f24080e7          	jalr	-220(ra) # 800077a0 <uartintr>
    80006884:	fadff06f          	j	80006830 <devintr+0xb4>
	...

0000000080006890 <kernelvec>:
    80006890:	f0010113          	addi	sp,sp,-256
    80006894:	00113023          	sd	ra,0(sp)
    80006898:	00213423          	sd	sp,8(sp)
    8000689c:	00313823          	sd	gp,16(sp)
    800068a0:	00413c23          	sd	tp,24(sp)
    800068a4:	02513023          	sd	t0,32(sp)
    800068a8:	02613423          	sd	t1,40(sp)
    800068ac:	02713823          	sd	t2,48(sp)
    800068b0:	02813c23          	sd	s0,56(sp)
    800068b4:	04913023          	sd	s1,64(sp)
    800068b8:	04a13423          	sd	a0,72(sp)
    800068bc:	04b13823          	sd	a1,80(sp)
    800068c0:	04c13c23          	sd	a2,88(sp)
    800068c4:	06d13023          	sd	a3,96(sp)
    800068c8:	06e13423          	sd	a4,104(sp)
    800068cc:	06f13823          	sd	a5,112(sp)
    800068d0:	07013c23          	sd	a6,120(sp)
    800068d4:	09113023          	sd	a7,128(sp)
    800068d8:	09213423          	sd	s2,136(sp)
    800068dc:	09313823          	sd	s3,144(sp)
    800068e0:	09413c23          	sd	s4,152(sp)
    800068e4:	0b513023          	sd	s5,160(sp)
    800068e8:	0b613423          	sd	s6,168(sp)
    800068ec:	0b713823          	sd	s7,176(sp)
    800068f0:	0b813c23          	sd	s8,184(sp)
    800068f4:	0d913023          	sd	s9,192(sp)
    800068f8:	0da13423          	sd	s10,200(sp)
    800068fc:	0db13823          	sd	s11,208(sp)
    80006900:	0dc13c23          	sd	t3,216(sp)
    80006904:	0fd13023          	sd	t4,224(sp)
    80006908:	0fe13423          	sd	t5,232(sp)
    8000690c:	0ff13823          	sd	t6,240(sp)
    80006910:	ccdff0ef          	jal	ra,800065dc <kerneltrap>
    80006914:	00013083          	ld	ra,0(sp)
    80006918:	00813103          	ld	sp,8(sp)
    8000691c:	01013183          	ld	gp,16(sp)
    80006920:	02013283          	ld	t0,32(sp)
    80006924:	02813303          	ld	t1,40(sp)
    80006928:	03013383          	ld	t2,48(sp)
    8000692c:	03813403          	ld	s0,56(sp)
    80006930:	04013483          	ld	s1,64(sp)
    80006934:	04813503          	ld	a0,72(sp)
    80006938:	05013583          	ld	a1,80(sp)
    8000693c:	05813603          	ld	a2,88(sp)
    80006940:	06013683          	ld	a3,96(sp)
    80006944:	06813703          	ld	a4,104(sp)
    80006948:	07013783          	ld	a5,112(sp)
    8000694c:	07813803          	ld	a6,120(sp)
    80006950:	08013883          	ld	a7,128(sp)
    80006954:	08813903          	ld	s2,136(sp)
    80006958:	09013983          	ld	s3,144(sp)
    8000695c:	09813a03          	ld	s4,152(sp)
    80006960:	0a013a83          	ld	s5,160(sp)
    80006964:	0a813b03          	ld	s6,168(sp)
    80006968:	0b013b83          	ld	s7,176(sp)
    8000696c:	0b813c03          	ld	s8,184(sp)
    80006970:	0c013c83          	ld	s9,192(sp)
    80006974:	0c813d03          	ld	s10,200(sp)
    80006978:	0d013d83          	ld	s11,208(sp)
    8000697c:	0d813e03          	ld	t3,216(sp)
    80006980:	0e013e83          	ld	t4,224(sp)
    80006984:	0e813f03          	ld	t5,232(sp)
    80006988:	0f013f83          	ld	t6,240(sp)
    8000698c:	10010113          	addi	sp,sp,256
    80006990:	10200073          	sret
    80006994:	00000013          	nop
    80006998:	00000013          	nop
    8000699c:	00000013          	nop

00000000800069a0 <timervec>:
    800069a0:	34051573          	csrrw	a0,mscratch,a0
    800069a4:	00b53023          	sd	a1,0(a0)
    800069a8:	00c53423          	sd	a2,8(a0)
    800069ac:	00d53823          	sd	a3,16(a0)
    800069b0:	01853583          	ld	a1,24(a0)
    800069b4:	02053603          	ld	a2,32(a0)
    800069b8:	0005b683          	ld	a3,0(a1)
    800069bc:	00c686b3          	add	a3,a3,a2
    800069c0:	00d5b023          	sd	a3,0(a1)
    800069c4:	00200593          	li	a1,2
    800069c8:	14459073          	csrw	sip,a1
    800069cc:	01053683          	ld	a3,16(a0)
    800069d0:	00853603          	ld	a2,8(a0)
    800069d4:	00053583          	ld	a1,0(a0)
    800069d8:	34051573          	csrrw	a0,mscratch,a0
    800069dc:	30200073          	mret

00000000800069e0 <plicinit>:
    800069e0:	ff010113          	addi	sp,sp,-16
    800069e4:	00813423          	sd	s0,8(sp)
    800069e8:	01010413          	addi	s0,sp,16
    800069ec:	00813403          	ld	s0,8(sp)
    800069f0:	0c0007b7          	lui	a5,0xc000
    800069f4:	00100713          	li	a4,1
    800069f8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800069fc:	00e7a223          	sw	a4,4(a5)
    80006a00:	01010113          	addi	sp,sp,16
    80006a04:	00008067          	ret

0000000080006a08 <plicinithart>:
    80006a08:	ff010113          	addi	sp,sp,-16
    80006a0c:	00813023          	sd	s0,0(sp)
    80006a10:	00113423          	sd	ra,8(sp)
    80006a14:	01010413          	addi	s0,sp,16
    80006a18:	00000097          	auipc	ra,0x0
    80006a1c:	a44080e7          	jalr	-1468(ra) # 8000645c <cpuid>
    80006a20:	0085171b          	slliw	a4,a0,0x8
    80006a24:	0c0027b7          	lui	a5,0xc002
    80006a28:	00e787b3          	add	a5,a5,a4
    80006a2c:	40200713          	li	a4,1026
    80006a30:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006a34:	00813083          	ld	ra,8(sp)
    80006a38:	00013403          	ld	s0,0(sp)
    80006a3c:	00d5151b          	slliw	a0,a0,0xd
    80006a40:	0c2017b7          	lui	a5,0xc201
    80006a44:	00a78533          	add	a0,a5,a0
    80006a48:	00052023          	sw	zero,0(a0)
    80006a4c:	01010113          	addi	sp,sp,16
    80006a50:	00008067          	ret

0000000080006a54 <plic_claim>:
    80006a54:	ff010113          	addi	sp,sp,-16
    80006a58:	00813023          	sd	s0,0(sp)
    80006a5c:	00113423          	sd	ra,8(sp)
    80006a60:	01010413          	addi	s0,sp,16
    80006a64:	00000097          	auipc	ra,0x0
    80006a68:	9f8080e7          	jalr	-1544(ra) # 8000645c <cpuid>
    80006a6c:	00813083          	ld	ra,8(sp)
    80006a70:	00013403          	ld	s0,0(sp)
    80006a74:	00d5151b          	slliw	a0,a0,0xd
    80006a78:	0c2017b7          	lui	a5,0xc201
    80006a7c:	00a78533          	add	a0,a5,a0
    80006a80:	00452503          	lw	a0,4(a0)
    80006a84:	01010113          	addi	sp,sp,16
    80006a88:	00008067          	ret

0000000080006a8c <plic_complete>:
    80006a8c:	fe010113          	addi	sp,sp,-32
    80006a90:	00813823          	sd	s0,16(sp)
    80006a94:	00913423          	sd	s1,8(sp)
    80006a98:	00113c23          	sd	ra,24(sp)
    80006a9c:	02010413          	addi	s0,sp,32
    80006aa0:	00050493          	mv	s1,a0
    80006aa4:	00000097          	auipc	ra,0x0
    80006aa8:	9b8080e7          	jalr	-1608(ra) # 8000645c <cpuid>
    80006aac:	01813083          	ld	ra,24(sp)
    80006ab0:	01013403          	ld	s0,16(sp)
    80006ab4:	00d5179b          	slliw	a5,a0,0xd
    80006ab8:	0c201737          	lui	a4,0xc201
    80006abc:	00f707b3          	add	a5,a4,a5
    80006ac0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006ac4:	00813483          	ld	s1,8(sp)
    80006ac8:	02010113          	addi	sp,sp,32
    80006acc:	00008067          	ret

0000000080006ad0 <consolewrite>:
    80006ad0:	fb010113          	addi	sp,sp,-80
    80006ad4:	04813023          	sd	s0,64(sp)
    80006ad8:	04113423          	sd	ra,72(sp)
    80006adc:	02913c23          	sd	s1,56(sp)
    80006ae0:	03213823          	sd	s2,48(sp)
    80006ae4:	03313423          	sd	s3,40(sp)
    80006ae8:	03413023          	sd	s4,32(sp)
    80006aec:	01513c23          	sd	s5,24(sp)
    80006af0:	05010413          	addi	s0,sp,80
    80006af4:	06c05c63          	blez	a2,80006b6c <consolewrite+0x9c>
    80006af8:	00060993          	mv	s3,a2
    80006afc:	00050a13          	mv	s4,a0
    80006b00:	00058493          	mv	s1,a1
    80006b04:	00000913          	li	s2,0
    80006b08:	fff00a93          	li	s5,-1
    80006b0c:	01c0006f          	j	80006b28 <consolewrite+0x58>
    80006b10:	fbf44503          	lbu	a0,-65(s0)
    80006b14:	0019091b          	addiw	s2,s2,1
    80006b18:	00148493          	addi	s1,s1,1
    80006b1c:	00001097          	auipc	ra,0x1
    80006b20:	a9c080e7          	jalr	-1380(ra) # 800075b8 <uartputc>
    80006b24:	03298063          	beq	s3,s2,80006b44 <consolewrite+0x74>
    80006b28:	00048613          	mv	a2,s1
    80006b2c:	00100693          	li	a3,1
    80006b30:	000a0593          	mv	a1,s4
    80006b34:	fbf40513          	addi	a0,s0,-65
    80006b38:	00000097          	auipc	ra,0x0
    80006b3c:	9dc080e7          	jalr	-1572(ra) # 80006514 <either_copyin>
    80006b40:	fd5518e3          	bne	a0,s5,80006b10 <consolewrite+0x40>
    80006b44:	04813083          	ld	ra,72(sp)
    80006b48:	04013403          	ld	s0,64(sp)
    80006b4c:	03813483          	ld	s1,56(sp)
    80006b50:	02813983          	ld	s3,40(sp)
    80006b54:	02013a03          	ld	s4,32(sp)
    80006b58:	01813a83          	ld	s5,24(sp)
    80006b5c:	00090513          	mv	a0,s2
    80006b60:	03013903          	ld	s2,48(sp)
    80006b64:	05010113          	addi	sp,sp,80
    80006b68:	00008067          	ret
    80006b6c:	00000913          	li	s2,0
    80006b70:	fd5ff06f          	j	80006b44 <consolewrite+0x74>

0000000080006b74 <consoleread>:
    80006b74:	f9010113          	addi	sp,sp,-112
    80006b78:	06813023          	sd	s0,96(sp)
    80006b7c:	04913c23          	sd	s1,88(sp)
    80006b80:	05213823          	sd	s2,80(sp)
    80006b84:	05313423          	sd	s3,72(sp)
    80006b88:	05413023          	sd	s4,64(sp)
    80006b8c:	03513c23          	sd	s5,56(sp)
    80006b90:	03613823          	sd	s6,48(sp)
    80006b94:	03713423          	sd	s7,40(sp)
    80006b98:	03813023          	sd	s8,32(sp)
    80006b9c:	06113423          	sd	ra,104(sp)
    80006ba0:	01913c23          	sd	s9,24(sp)
    80006ba4:	07010413          	addi	s0,sp,112
    80006ba8:	00060b93          	mv	s7,a2
    80006bac:	00050913          	mv	s2,a0
    80006bb0:	00058c13          	mv	s8,a1
    80006bb4:	00060b1b          	sext.w	s6,a2
    80006bb8:	00006497          	auipc	s1,0x6
    80006bbc:	f7048493          	addi	s1,s1,-144 # 8000cb28 <cons>
    80006bc0:	00400993          	li	s3,4
    80006bc4:	fff00a13          	li	s4,-1
    80006bc8:	00a00a93          	li	s5,10
    80006bcc:	05705e63          	blez	s7,80006c28 <consoleread+0xb4>
    80006bd0:	09c4a703          	lw	a4,156(s1)
    80006bd4:	0984a783          	lw	a5,152(s1)
    80006bd8:	0007071b          	sext.w	a4,a4
    80006bdc:	08e78463          	beq	a5,a4,80006c64 <consoleread+0xf0>
    80006be0:	07f7f713          	andi	a4,a5,127
    80006be4:	00e48733          	add	a4,s1,a4
    80006be8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006bec:	0017869b          	addiw	a3,a5,1
    80006bf0:	08d4ac23          	sw	a3,152(s1)
    80006bf4:	00070c9b          	sext.w	s9,a4
    80006bf8:	0b370663          	beq	a4,s3,80006ca4 <consoleread+0x130>
    80006bfc:	00100693          	li	a3,1
    80006c00:	f9f40613          	addi	a2,s0,-97
    80006c04:	000c0593          	mv	a1,s8
    80006c08:	00090513          	mv	a0,s2
    80006c0c:	f8e40fa3          	sb	a4,-97(s0)
    80006c10:	00000097          	auipc	ra,0x0
    80006c14:	8b8080e7          	jalr	-1864(ra) # 800064c8 <either_copyout>
    80006c18:	01450863          	beq	a0,s4,80006c28 <consoleread+0xb4>
    80006c1c:	001c0c13          	addi	s8,s8,1
    80006c20:	fffb8b9b          	addiw	s7,s7,-1
    80006c24:	fb5c94e3          	bne	s9,s5,80006bcc <consoleread+0x58>
    80006c28:	000b851b          	sext.w	a0,s7
    80006c2c:	06813083          	ld	ra,104(sp)
    80006c30:	06013403          	ld	s0,96(sp)
    80006c34:	05813483          	ld	s1,88(sp)
    80006c38:	05013903          	ld	s2,80(sp)
    80006c3c:	04813983          	ld	s3,72(sp)
    80006c40:	04013a03          	ld	s4,64(sp)
    80006c44:	03813a83          	ld	s5,56(sp)
    80006c48:	02813b83          	ld	s7,40(sp)
    80006c4c:	02013c03          	ld	s8,32(sp)
    80006c50:	01813c83          	ld	s9,24(sp)
    80006c54:	40ab053b          	subw	a0,s6,a0
    80006c58:	03013b03          	ld	s6,48(sp)
    80006c5c:	07010113          	addi	sp,sp,112
    80006c60:	00008067          	ret
    80006c64:	00001097          	auipc	ra,0x1
    80006c68:	1d8080e7          	jalr	472(ra) # 80007e3c <push_on>
    80006c6c:	0984a703          	lw	a4,152(s1)
    80006c70:	09c4a783          	lw	a5,156(s1)
    80006c74:	0007879b          	sext.w	a5,a5
    80006c78:	fef70ce3          	beq	a4,a5,80006c70 <consoleread+0xfc>
    80006c7c:	00001097          	auipc	ra,0x1
    80006c80:	234080e7          	jalr	564(ra) # 80007eb0 <pop_on>
    80006c84:	0984a783          	lw	a5,152(s1)
    80006c88:	07f7f713          	andi	a4,a5,127
    80006c8c:	00e48733          	add	a4,s1,a4
    80006c90:	01874703          	lbu	a4,24(a4)
    80006c94:	0017869b          	addiw	a3,a5,1
    80006c98:	08d4ac23          	sw	a3,152(s1)
    80006c9c:	00070c9b          	sext.w	s9,a4
    80006ca0:	f5371ee3          	bne	a4,s3,80006bfc <consoleread+0x88>
    80006ca4:	000b851b          	sext.w	a0,s7
    80006ca8:	f96bf2e3          	bgeu	s7,s6,80006c2c <consoleread+0xb8>
    80006cac:	08f4ac23          	sw	a5,152(s1)
    80006cb0:	f7dff06f          	j	80006c2c <consoleread+0xb8>

0000000080006cb4 <consputc>:
    80006cb4:	10000793          	li	a5,256
    80006cb8:	00f50663          	beq	a0,a5,80006cc4 <consputc+0x10>
    80006cbc:	00001317          	auipc	t1,0x1
    80006cc0:	9f430067          	jr	-1548(t1) # 800076b0 <uartputc_sync>
    80006cc4:	ff010113          	addi	sp,sp,-16
    80006cc8:	00113423          	sd	ra,8(sp)
    80006ccc:	00813023          	sd	s0,0(sp)
    80006cd0:	01010413          	addi	s0,sp,16
    80006cd4:	00800513          	li	a0,8
    80006cd8:	00001097          	auipc	ra,0x1
    80006cdc:	9d8080e7          	jalr	-1576(ra) # 800076b0 <uartputc_sync>
    80006ce0:	02000513          	li	a0,32
    80006ce4:	00001097          	auipc	ra,0x1
    80006ce8:	9cc080e7          	jalr	-1588(ra) # 800076b0 <uartputc_sync>
    80006cec:	00013403          	ld	s0,0(sp)
    80006cf0:	00813083          	ld	ra,8(sp)
    80006cf4:	00800513          	li	a0,8
    80006cf8:	01010113          	addi	sp,sp,16
    80006cfc:	00001317          	auipc	t1,0x1
    80006d00:	9b430067          	jr	-1612(t1) # 800076b0 <uartputc_sync>

0000000080006d04 <consoleintr>:
    80006d04:	fe010113          	addi	sp,sp,-32
    80006d08:	00813823          	sd	s0,16(sp)
    80006d0c:	00913423          	sd	s1,8(sp)
    80006d10:	01213023          	sd	s2,0(sp)
    80006d14:	00113c23          	sd	ra,24(sp)
    80006d18:	02010413          	addi	s0,sp,32
    80006d1c:	00006917          	auipc	s2,0x6
    80006d20:	e0c90913          	addi	s2,s2,-500 # 8000cb28 <cons>
    80006d24:	00050493          	mv	s1,a0
    80006d28:	00090513          	mv	a0,s2
    80006d2c:	00001097          	auipc	ra,0x1
    80006d30:	e40080e7          	jalr	-448(ra) # 80007b6c <acquire>
    80006d34:	02048c63          	beqz	s1,80006d6c <consoleintr+0x68>
    80006d38:	0a092783          	lw	a5,160(s2)
    80006d3c:	09892703          	lw	a4,152(s2)
    80006d40:	07f00693          	li	a3,127
    80006d44:	40e7873b          	subw	a4,a5,a4
    80006d48:	02e6e263          	bltu	a3,a4,80006d6c <consoleintr+0x68>
    80006d4c:	00d00713          	li	a4,13
    80006d50:	04e48063          	beq	s1,a4,80006d90 <consoleintr+0x8c>
    80006d54:	07f7f713          	andi	a4,a5,127
    80006d58:	00e90733          	add	a4,s2,a4
    80006d5c:	0017879b          	addiw	a5,a5,1
    80006d60:	0af92023          	sw	a5,160(s2)
    80006d64:	00970c23          	sb	s1,24(a4)
    80006d68:	08f92e23          	sw	a5,156(s2)
    80006d6c:	01013403          	ld	s0,16(sp)
    80006d70:	01813083          	ld	ra,24(sp)
    80006d74:	00813483          	ld	s1,8(sp)
    80006d78:	00013903          	ld	s2,0(sp)
    80006d7c:	00006517          	auipc	a0,0x6
    80006d80:	dac50513          	addi	a0,a0,-596 # 8000cb28 <cons>
    80006d84:	02010113          	addi	sp,sp,32
    80006d88:	00001317          	auipc	t1,0x1
    80006d8c:	eb030067          	jr	-336(t1) # 80007c38 <release>
    80006d90:	00a00493          	li	s1,10
    80006d94:	fc1ff06f          	j	80006d54 <consoleintr+0x50>

0000000080006d98 <consoleinit>:
    80006d98:	fe010113          	addi	sp,sp,-32
    80006d9c:	00113c23          	sd	ra,24(sp)
    80006da0:	00813823          	sd	s0,16(sp)
    80006da4:	00913423          	sd	s1,8(sp)
    80006da8:	02010413          	addi	s0,sp,32
    80006dac:	00006497          	auipc	s1,0x6
    80006db0:	d7c48493          	addi	s1,s1,-644 # 8000cb28 <cons>
    80006db4:	00048513          	mv	a0,s1
    80006db8:	00003597          	auipc	a1,0x3
    80006dbc:	89858593          	addi	a1,a1,-1896 # 80009650 <_ZL6digits+0x150>
    80006dc0:	00001097          	auipc	ra,0x1
    80006dc4:	d88080e7          	jalr	-632(ra) # 80007b48 <initlock>
    80006dc8:	00000097          	auipc	ra,0x0
    80006dcc:	7ac080e7          	jalr	1964(ra) # 80007574 <uartinit>
    80006dd0:	01813083          	ld	ra,24(sp)
    80006dd4:	01013403          	ld	s0,16(sp)
    80006dd8:	00000797          	auipc	a5,0x0
    80006ddc:	d9c78793          	addi	a5,a5,-612 # 80006b74 <consoleread>
    80006de0:	0af4bc23          	sd	a5,184(s1)
    80006de4:	00000797          	auipc	a5,0x0
    80006de8:	cec78793          	addi	a5,a5,-788 # 80006ad0 <consolewrite>
    80006dec:	0cf4b023          	sd	a5,192(s1)
    80006df0:	00813483          	ld	s1,8(sp)
    80006df4:	02010113          	addi	sp,sp,32
    80006df8:	00008067          	ret

0000000080006dfc <console_read>:
    80006dfc:	ff010113          	addi	sp,sp,-16
    80006e00:	00813423          	sd	s0,8(sp)
    80006e04:	01010413          	addi	s0,sp,16
    80006e08:	00813403          	ld	s0,8(sp)
    80006e0c:	00006317          	auipc	t1,0x6
    80006e10:	dd433303          	ld	t1,-556(t1) # 8000cbe0 <devsw+0x10>
    80006e14:	01010113          	addi	sp,sp,16
    80006e18:	00030067          	jr	t1

0000000080006e1c <console_write>:
    80006e1c:	ff010113          	addi	sp,sp,-16
    80006e20:	00813423          	sd	s0,8(sp)
    80006e24:	01010413          	addi	s0,sp,16
    80006e28:	00813403          	ld	s0,8(sp)
    80006e2c:	00006317          	auipc	t1,0x6
    80006e30:	dbc33303          	ld	t1,-580(t1) # 8000cbe8 <devsw+0x18>
    80006e34:	01010113          	addi	sp,sp,16
    80006e38:	00030067          	jr	t1

0000000080006e3c <panic>:
    80006e3c:	fe010113          	addi	sp,sp,-32
    80006e40:	00113c23          	sd	ra,24(sp)
    80006e44:	00813823          	sd	s0,16(sp)
    80006e48:	00913423          	sd	s1,8(sp)
    80006e4c:	02010413          	addi	s0,sp,32
    80006e50:	00050493          	mv	s1,a0
    80006e54:	00003517          	auipc	a0,0x3
    80006e58:	80450513          	addi	a0,a0,-2044 # 80009658 <_ZL6digits+0x158>
    80006e5c:	00006797          	auipc	a5,0x6
    80006e60:	e207a623          	sw	zero,-468(a5) # 8000cc88 <pr+0x18>
    80006e64:	00000097          	auipc	ra,0x0
    80006e68:	034080e7          	jalr	52(ra) # 80006e98 <__printf>
    80006e6c:	00048513          	mv	a0,s1
    80006e70:	00000097          	auipc	ra,0x0
    80006e74:	028080e7          	jalr	40(ra) # 80006e98 <__printf>
    80006e78:	00002517          	auipc	a0,0x2
    80006e7c:	29850513          	addi	a0,a0,664 # 80009110 <CONSOLE_STATUS+0x100>
    80006e80:	00000097          	auipc	ra,0x0
    80006e84:	018080e7          	jalr	24(ra) # 80006e98 <__printf>
    80006e88:	00100793          	li	a5,1
    80006e8c:	00005717          	auipc	a4,0x5
    80006e90:	acf72623          	sw	a5,-1332(a4) # 8000b958 <panicked>
    80006e94:	0000006f          	j	80006e94 <panic+0x58>

0000000080006e98 <__printf>:
    80006e98:	f3010113          	addi	sp,sp,-208
    80006e9c:	08813023          	sd	s0,128(sp)
    80006ea0:	07313423          	sd	s3,104(sp)
    80006ea4:	09010413          	addi	s0,sp,144
    80006ea8:	05813023          	sd	s8,64(sp)
    80006eac:	08113423          	sd	ra,136(sp)
    80006eb0:	06913c23          	sd	s1,120(sp)
    80006eb4:	07213823          	sd	s2,112(sp)
    80006eb8:	07413023          	sd	s4,96(sp)
    80006ebc:	05513c23          	sd	s5,88(sp)
    80006ec0:	05613823          	sd	s6,80(sp)
    80006ec4:	05713423          	sd	s7,72(sp)
    80006ec8:	03913c23          	sd	s9,56(sp)
    80006ecc:	03a13823          	sd	s10,48(sp)
    80006ed0:	03b13423          	sd	s11,40(sp)
    80006ed4:	00006317          	auipc	t1,0x6
    80006ed8:	d9c30313          	addi	t1,t1,-612 # 8000cc70 <pr>
    80006edc:	01832c03          	lw	s8,24(t1)
    80006ee0:	00b43423          	sd	a1,8(s0)
    80006ee4:	00c43823          	sd	a2,16(s0)
    80006ee8:	00d43c23          	sd	a3,24(s0)
    80006eec:	02e43023          	sd	a4,32(s0)
    80006ef0:	02f43423          	sd	a5,40(s0)
    80006ef4:	03043823          	sd	a6,48(s0)
    80006ef8:	03143c23          	sd	a7,56(s0)
    80006efc:	00050993          	mv	s3,a0
    80006f00:	4a0c1663          	bnez	s8,800073ac <__printf+0x514>
    80006f04:	60098c63          	beqz	s3,8000751c <__printf+0x684>
    80006f08:	0009c503          	lbu	a0,0(s3)
    80006f0c:	00840793          	addi	a5,s0,8
    80006f10:	f6f43c23          	sd	a5,-136(s0)
    80006f14:	00000493          	li	s1,0
    80006f18:	22050063          	beqz	a0,80007138 <__printf+0x2a0>
    80006f1c:	00002a37          	lui	s4,0x2
    80006f20:	00018ab7          	lui	s5,0x18
    80006f24:	000f4b37          	lui	s6,0xf4
    80006f28:	00989bb7          	lui	s7,0x989
    80006f2c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006f30:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006f34:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006f38:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006f3c:	00148c9b          	addiw	s9,s1,1
    80006f40:	02500793          	li	a5,37
    80006f44:	01998933          	add	s2,s3,s9
    80006f48:	38f51263          	bne	a0,a5,800072cc <__printf+0x434>
    80006f4c:	00094783          	lbu	a5,0(s2)
    80006f50:	00078c9b          	sext.w	s9,a5
    80006f54:	1e078263          	beqz	a5,80007138 <__printf+0x2a0>
    80006f58:	0024849b          	addiw	s1,s1,2
    80006f5c:	07000713          	li	a4,112
    80006f60:	00998933          	add	s2,s3,s1
    80006f64:	38e78a63          	beq	a5,a4,800072f8 <__printf+0x460>
    80006f68:	20f76863          	bltu	a4,a5,80007178 <__printf+0x2e0>
    80006f6c:	42a78863          	beq	a5,a0,8000739c <__printf+0x504>
    80006f70:	06400713          	li	a4,100
    80006f74:	40e79663          	bne	a5,a4,80007380 <__printf+0x4e8>
    80006f78:	f7843783          	ld	a5,-136(s0)
    80006f7c:	0007a603          	lw	a2,0(a5)
    80006f80:	00878793          	addi	a5,a5,8
    80006f84:	f6f43c23          	sd	a5,-136(s0)
    80006f88:	42064a63          	bltz	a2,800073bc <__printf+0x524>
    80006f8c:	00a00713          	li	a4,10
    80006f90:	02e677bb          	remuw	a5,a2,a4
    80006f94:	00002d97          	auipc	s11,0x2
    80006f98:	6ecd8d93          	addi	s11,s11,1772 # 80009680 <digits>
    80006f9c:	00900593          	li	a1,9
    80006fa0:	0006051b          	sext.w	a0,a2
    80006fa4:	00000c93          	li	s9,0
    80006fa8:	02079793          	slli	a5,a5,0x20
    80006fac:	0207d793          	srli	a5,a5,0x20
    80006fb0:	00fd87b3          	add	a5,s11,a5
    80006fb4:	0007c783          	lbu	a5,0(a5)
    80006fb8:	02e656bb          	divuw	a3,a2,a4
    80006fbc:	f8f40023          	sb	a5,-128(s0)
    80006fc0:	14c5d863          	bge	a1,a2,80007110 <__printf+0x278>
    80006fc4:	06300593          	li	a1,99
    80006fc8:	00100c93          	li	s9,1
    80006fcc:	02e6f7bb          	remuw	a5,a3,a4
    80006fd0:	02079793          	slli	a5,a5,0x20
    80006fd4:	0207d793          	srli	a5,a5,0x20
    80006fd8:	00fd87b3          	add	a5,s11,a5
    80006fdc:	0007c783          	lbu	a5,0(a5)
    80006fe0:	02e6d73b          	divuw	a4,a3,a4
    80006fe4:	f8f400a3          	sb	a5,-127(s0)
    80006fe8:	12a5f463          	bgeu	a1,a0,80007110 <__printf+0x278>
    80006fec:	00a00693          	li	a3,10
    80006ff0:	00900593          	li	a1,9
    80006ff4:	02d777bb          	remuw	a5,a4,a3
    80006ff8:	02079793          	slli	a5,a5,0x20
    80006ffc:	0207d793          	srli	a5,a5,0x20
    80007000:	00fd87b3          	add	a5,s11,a5
    80007004:	0007c503          	lbu	a0,0(a5)
    80007008:	02d757bb          	divuw	a5,a4,a3
    8000700c:	f8a40123          	sb	a0,-126(s0)
    80007010:	48e5f263          	bgeu	a1,a4,80007494 <__printf+0x5fc>
    80007014:	06300513          	li	a0,99
    80007018:	02d7f5bb          	remuw	a1,a5,a3
    8000701c:	02059593          	slli	a1,a1,0x20
    80007020:	0205d593          	srli	a1,a1,0x20
    80007024:	00bd85b3          	add	a1,s11,a1
    80007028:	0005c583          	lbu	a1,0(a1)
    8000702c:	02d7d7bb          	divuw	a5,a5,a3
    80007030:	f8b401a3          	sb	a1,-125(s0)
    80007034:	48e57263          	bgeu	a0,a4,800074b8 <__printf+0x620>
    80007038:	3e700513          	li	a0,999
    8000703c:	02d7f5bb          	remuw	a1,a5,a3
    80007040:	02059593          	slli	a1,a1,0x20
    80007044:	0205d593          	srli	a1,a1,0x20
    80007048:	00bd85b3          	add	a1,s11,a1
    8000704c:	0005c583          	lbu	a1,0(a1)
    80007050:	02d7d7bb          	divuw	a5,a5,a3
    80007054:	f8b40223          	sb	a1,-124(s0)
    80007058:	46e57663          	bgeu	a0,a4,800074c4 <__printf+0x62c>
    8000705c:	02d7f5bb          	remuw	a1,a5,a3
    80007060:	02059593          	slli	a1,a1,0x20
    80007064:	0205d593          	srli	a1,a1,0x20
    80007068:	00bd85b3          	add	a1,s11,a1
    8000706c:	0005c583          	lbu	a1,0(a1)
    80007070:	02d7d7bb          	divuw	a5,a5,a3
    80007074:	f8b402a3          	sb	a1,-123(s0)
    80007078:	46ea7863          	bgeu	s4,a4,800074e8 <__printf+0x650>
    8000707c:	02d7f5bb          	remuw	a1,a5,a3
    80007080:	02059593          	slli	a1,a1,0x20
    80007084:	0205d593          	srli	a1,a1,0x20
    80007088:	00bd85b3          	add	a1,s11,a1
    8000708c:	0005c583          	lbu	a1,0(a1)
    80007090:	02d7d7bb          	divuw	a5,a5,a3
    80007094:	f8b40323          	sb	a1,-122(s0)
    80007098:	3eeaf863          	bgeu	s5,a4,80007488 <__printf+0x5f0>
    8000709c:	02d7f5bb          	remuw	a1,a5,a3
    800070a0:	02059593          	slli	a1,a1,0x20
    800070a4:	0205d593          	srli	a1,a1,0x20
    800070a8:	00bd85b3          	add	a1,s11,a1
    800070ac:	0005c583          	lbu	a1,0(a1)
    800070b0:	02d7d7bb          	divuw	a5,a5,a3
    800070b4:	f8b403a3          	sb	a1,-121(s0)
    800070b8:	42eb7e63          	bgeu	s6,a4,800074f4 <__printf+0x65c>
    800070bc:	02d7f5bb          	remuw	a1,a5,a3
    800070c0:	02059593          	slli	a1,a1,0x20
    800070c4:	0205d593          	srli	a1,a1,0x20
    800070c8:	00bd85b3          	add	a1,s11,a1
    800070cc:	0005c583          	lbu	a1,0(a1)
    800070d0:	02d7d7bb          	divuw	a5,a5,a3
    800070d4:	f8b40423          	sb	a1,-120(s0)
    800070d8:	42ebfc63          	bgeu	s7,a4,80007510 <__printf+0x678>
    800070dc:	02079793          	slli	a5,a5,0x20
    800070e0:	0207d793          	srli	a5,a5,0x20
    800070e4:	00fd8db3          	add	s11,s11,a5
    800070e8:	000dc703          	lbu	a4,0(s11)
    800070ec:	00a00793          	li	a5,10
    800070f0:	00900c93          	li	s9,9
    800070f4:	f8e404a3          	sb	a4,-119(s0)
    800070f8:	00065c63          	bgez	a2,80007110 <__printf+0x278>
    800070fc:	f9040713          	addi	a4,s0,-112
    80007100:	00f70733          	add	a4,a4,a5
    80007104:	02d00693          	li	a3,45
    80007108:	fed70823          	sb	a3,-16(a4)
    8000710c:	00078c93          	mv	s9,a5
    80007110:	f8040793          	addi	a5,s0,-128
    80007114:	01978cb3          	add	s9,a5,s9
    80007118:	f7f40d13          	addi	s10,s0,-129
    8000711c:	000cc503          	lbu	a0,0(s9)
    80007120:	fffc8c93          	addi	s9,s9,-1
    80007124:	00000097          	auipc	ra,0x0
    80007128:	b90080e7          	jalr	-1136(ra) # 80006cb4 <consputc>
    8000712c:	ffac98e3          	bne	s9,s10,8000711c <__printf+0x284>
    80007130:	00094503          	lbu	a0,0(s2)
    80007134:	e00514e3          	bnez	a0,80006f3c <__printf+0xa4>
    80007138:	1a0c1663          	bnez	s8,800072e4 <__printf+0x44c>
    8000713c:	08813083          	ld	ra,136(sp)
    80007140:	08013403          	ld	s0,128(sp)
    80007144:	07813483          	ld	s1,120(sp)
    80007148:	07013903          	ld	s2,112(sp)
    8000714c:	06813983          	ld	s3,104(sp)
    80007150:	06013a03          	ld	s4,96(sp)
    80007154:	05813a83          	ld	s5,88(sp)
    80007158:	05013b03          	ld	s6,80(sp)
    8000715c:	04813b83          	ld	s7,72(sp)
    80007160:	04013c03          	ld	s8,64(sp)
    80007164:	03813c83          	ld	s9,56(sp)
    80007168:	03013d03          	ld	s10,48(sp)
    8000716c:	02813d83          	ld	s11,40(sp)
    80007170:	0d010113          	addi	sp,sp,208
    80007174:	00008067          	ret
    80007178:	07300713          	li	a4,115
    8000717c:	1ce78a63          	beq	a5,a4,80007350 <__printf+0x4b8>
    80007180:	07800713          	li	a4,120
    80007184:	1ee79e63          	bne	a5,a4,80007380 <__printf+0x4e8>
    80007188:	f7843783          	ld	a5,-136(s0)
    8000718c:	0007a703          	lw	a4,0(a5)
    80007190:	00878793          	addi	a5,a5,8
    80007194:	f6f43c23          	sd	a5,-136(s0)
    80007198:	28074263          	bltz	a4,8000741c <__printf+0x584>
    8000719c:	00002d97          	auipc	s11,0x2
    800071a0:	4e4d8d93          	addi	s11,s11,1252 # 80009680 <digits>
    800071a4:	00f77793          	andi	a5,a4,15
    800071a8:	00fd87b3          	add	a5,s11,a5
    800071ac:	0007c683          	lbu	a3,0(a5)
    800071b0:	00f00613          	li	a2,15
    800071b4:	0007079b          	sext.w	a5,a4
    800071b8:	f8d40023          	sb	a3,-128(s0)
    800071bc:	0047559b          	srliw	a1,a4,0x4
    800071c0:	0047569b          	srliw	a3,a4,0x4
    800071c4:	00000c93          	li	s9,0
    800071c8:	0ee65063          	bge	a2,a4,800072a8 <__printf+0x410>
    800071cc:	00f6f693          	andi	a3,a3,15
    800071d0:	00dd86b3          	add	a3,s11,a3
    800071d4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800071d8:	0087d79b          	srliw	a5,a5,0x8
    800071dc:	00100c93          	li	s9,1
    800071e0:	f8d400a3          	sb	a3,-127(s0)
    800071e4:	0cb67263          	bgeu	a2,a1,800072a8 <__printf+0x410>
    800071e8:	00f7f693          	andi	a3,a5,15
    800071ec:	00dd86b3          	add	a3,s11,a3
    800071f0:	0006c583          	lbu	a1,0(a3)
    800071f4:	00f00613          	li	a2,15
    800071f8:	0047d69b          	srliw	a3,a5,0x4
    800071fc:	f8b40123          	sb	a1,-126(s0)
    80007200:	0047d593          	srli	a1,a5,0x4
    80007204:	28f67e63          	bgeu	a2,a5,800074a0 <__printf+0x608>
    80007208:	00f6f693          	andi	a3,a3,15
    8000720c:	00dd86b3          	add	a3,s11,a3
    80007210:	0006c503          	lbu	a0,0(a3)
    80007214:	0087d813          	srli	a6,a5,0x8
    80007218:	0087d69b          	srliw	a3,a5,0x8
    8000721c:	f8a401a3          	sb	a0,-125(s0)
    80007220:	28b67663          	bgeu	a2,a1,800074ac <__printf+0x614>
    80007224:	00f6f693          	andi	a3,a3,15
    80007228:	00dd86b3          	add	a3,s11,a3
    8000722c:	0006c583          	lbu	a1,0(a3)
    80007230:	00c7d513          	srli	a0,a5,0xc
    80007234:	00c7d69b          	srliw	a3,a5,0xc
    80007238:	f8b40223          	sb	a1,-124(s0)
    8000723c:	29067a63          	bgeu	a2,a6,800074d0 <__printf+0x638>
    80007240:	00f6f693          	andi	a3,a3,15
    80007244:	00dd86b3          	add	a3,s11,a3
    80007248:	0006c583          	lbu	a1,0(a3)
    8000724c:	0107d813          	srli	a6,a5,0x10
    80007250:	0107d69b          	srliw	a3,a5,0x10
    80007254:	f8b402a3          	sb	a1,-123(s0)
    80007258:	28a67263          	bgeu	a2,a0,800074dc <__printf+0x644>
    8000725c:	00f6f693          	andi	a3,a3,15
    80007260:	00dd86b3          	add	a3,s11,a3
    80007264:	0006c683          	lbu	a3,0(a3)
    80007268:	0147d79b          	srliw	a5,a5,0x14
    8000726c:	f8d40323          	sb	a3,-122(s0)
    80007270:	21067663          	bgeu	a2,a6,8000747c <__printf+0x5e4>
    80007274:	02079793          	slli	a5,a5,0x20
    80007278:	0207d793          	srli	a5,a5,0x20
    8000727c:	00fd8db3          	add	s11,s11,a5
    80007280:	000dc683          	lbu	a3,0(s11)
    80007284:	00800793          	li	a5,8
    80007288:	00700c93          	li	s9,7
    8000728c:	f8d403a3          	sb	a3,-121(s0)
    80007290:	00075c63          	bgez	a4,800072a8 <__printf+0x410>
    80007294:	f9040713          	addi	a4,s0,-112
    80007298:	00f70733          	add	a4,a4,a5
    8000729c:	02d00693          	li	a3,45
    800072a0:	fed70823          	sb	a3,-16(a4)
    800072a4:	00078c93          	mv	s9,a5
    800072a8:	f8040793          	addi	a5,s0,-128
    800072ac:	01978cb3          	add	s9,a5,s9
    800072b0:	f7f40d13          	addi	s10,s0,-129
    800072b4:	000cc503          	lbu	a0,0(s9)
    800072b8:	fffc8c93          	addi	s9,s9,-1
    800072bc:	00000097          	auipc	ra,0x0
    800072c0:	9f8080e7          	jalr	-1544(ra) # 80006cb4 <consputc>
    800072c4:	ff9d18e3          	bne	s10,s9,800072b4 <__printf+0x41c>
    800072c8:	0100006f          	j	800072d8 <__printf+0x440>
    800072cc:	00000097          	auipc	ra,0x0
    800072d0:	9e8080e7          	jalr	-1560(ra) # 80006cb4 <consputc>
    800072d4:	000c8493          	mv	s1,s9
    800072d8:	00094503          	lbu	a0,0(s2)
    800072dc:	c60510e3          	bnez	a0,80006f3c <__printf+0xa4>
    800072e0:	e40c0ee3          	beqz	s8,8000713c <__printf+0x2a4>
    800072e4:	00006517          	auipc	a0,0x6
    800072e8:	98c50513          	addi	a0,a0,-1652 # 8000cc70 <pr>
    800072ec:	00001097          	auipc	ra,0x1
    800072f0:	94c080e7          	jalr	-1716(ra) # 80007c38 <release>
    800072f4:	e49ff06f          	j	8000713c <__printf+0x2a4>
    800072f8:	f7843783          	ld	a5,-136(s0)
    800072fc:	03000513          	li	a0,48
    80007300:	01000d13          	li	s10,16
    80007304:	00878713          	addi	a4,a5,8
    80007308:	0007bc83          	ld	s9,0(a5)
    8000730c:	f6e43c23          	sd	a4,-136(s0)
    80007310:	00000097          	auipc	ra,0x0
    80007314:	9a4080e7          	jalr	-1628(ra) # 80006cb4 <consputc>
    80007318:	07800513          	li	a0,120
    8000731c:	00000097          	auipc	ra,0x0
    80007320:	998080e7          	jalr	-1640(ra) # 80006cb4 <consputc>
    80007324:	00002d97          	auipc	s11,0x2
    80007328:	35cd8d93          	addi	s11,s11,860 # 80009680 <digits>
    8000732c:	03ccd793          	srli	a5,s9,0x3c
    80007330:	00fd87b3          	add	a5,s11,a5
    80007334:	0007c503          	lbu	a0,0(a5)
    80007338:	fffd0d1b          	addiw	s10,s10,-1
    8000733c:	004c9c93          	slli	s9,s9,0x4
    80007340:	00000097          	auipc	ra,0x0
    80007344:	974080e7          	jalr	-1676(ra) # 80006cb4 <consputc>
    80007348:	fe0d12e3          	bnez	s10,8000732c <__printf+0x494>
    8000734c:	f8dff06f          	j	800072d8 <__printf+0x440>
    80007350:	f7843783          	ld	a5,-136(s0)
    80007354:	0007bc83          	ld	s9,0(a5)
    80007358:	00878793          	addi	a5,a5,8
    8000735c:	f6f43c23          	sd	a5,-136(s0)
    80007360:	000c9a63          	bnez	s9,80007374 <__printf+0x4dc>
    80007364:	1080006f          	j	8000746c <__printf+0x5d4>
    80007368:	001c8c93          	addi	s9,s9,1
    8000736c:	00000097          	auipc	ra,0x0
    80007370:	948080e7          	jalr	-1720(ra) # 80006cb4 <consputc>
    80007374:	000cc503          	lbu	a0,0(s9)
    80007378:	fe0518e3          	bnez	a0,80007368 <__printf+0x4d0>
    8000737c:	f5dff06f          	j	800072d8 <__printf+0x440>
    80007380:	02500513          	li	a0,37
    80007384:	00000097          	auipc	ra,0x0
    80007388:	930080e7          	jalr	-1744(ra) # 80006cb4 <consputc>
    8000738c:	000c8513          	mv	a0,s9
    80007390:	00000097          	auipc	ra,0x0
    80007394:	924080e7          	jalr	-1756(ra) # 80006cb4 <consputc>
    80007398:	f41ff06f          	j	800072d8 <__printf+0x440>
    8000739c:	02500513          	li	a0,37
    800073a0:	00000097          	auipc	ra,0x0
    800073a4:	914080e7          	jalr	-1772(ra) # 80006cb4 <consputc>
    800073a8:	f31ff06f          	j	800072d8 <__printf+0x440>
    800073ac:	00030513          	mv	a0,t1
    800073b0:	00000097          	auipc	ra,0x0
    800073b4:	7bc080e7          	jalr	1980(ra) # 80007b6c <acquire>
    800073b8:	b4dff06f          	j	80006f04 <__printf+0x6c>
    800073bc:	40c0053b          	negw	a0,a2
    800073c0:	00a00713          	li	a4,10
    800073c4:	02e576bb          	remuw	a3,a0,a4
    800073c8:	00002d97          	auipc	s11,0x2
    800073cc:	2b8d8d93          	addi	s11,s11,696 # 80009680 <digits>
    800073d0:	ff700593          	li	a1,-9
    800073d4:	02069693          	slli	a3,a3,0x20
    800073d8:	0206d693          	srli	a3,a3,0x20
    800073dc:	00dd86b3          	add	a3,s11,a3
    800073e0:	0006c683          	lbu	a3,0(a3)
    800073e4:	02e557bb          	divuw	a5,a0,a4
    800073e8:	f8d40023          	sb	a3,-128(s0)
    800073ec:	10b65e63          	bge	a2,a1,80007508 <__printf+0x670>
    800073f0:	06300593          	li	a1,99
    800073f4:	02e7f6bb          	remuw	a3,a5,a4
    800073f8:	02069693          	slli	a3,a3,0x20
    800073fc:	0206d693          	srli	a3,a3,0x20
    80007400:	00dd86b3          	add	a3,s11,a3
    80007404:	0006c683          	lbu	a3,0(a3)
    80007408:	02e7d73b          	divuw	a4,a5,a4
    8000740c:	00200793          	li	a5,2
    80007410:	f8d400a3          	sb	a3,-127(s0)
    80007414:	bca5ece3          	bltu	a1,a0,80006fec <__printf+0x154>
    80007418:	ce5ff06f          	j	800070fc <__printf+0x264>
    8000741c:	40e007bb          	negw	a5,a4
    80007420:	00002d97          	auipc	s11,0x2
    80007424:	260d8d93          	addi	s11,s11,608 # 80009680 <digits>
    80007428:	00f7f693          	andi	a3,a5,15
    8000742c:	00dd86b3          	add	a3,s11,a3
    80007430:	0006c583          	lbu	a1,0(a3)
    80007434:	ff100613          	li	a2,-15
    80007438:	0047d69b          	srliw	a3,a5,0x4
    8000743c:	f8b40023          	sb	a1,-128(s0)
    80007440:	0047d59b          	srliw	a1,a5,0x4
    80007444:	0ac75e63          	bge	a4,a2,80007500 <__printf+0x668>
    80007448:	00f6f693          	andi	a3,a3,15
    8000744c:	00dd86b3          	add	a3,s11,a3
    80007450:	0006c603          	lbu	a2,0(a3)
    80007454:	00f00693          	li	a3,15
    80007458:	0087d79b          	srliw	a5,a5,0x8
    8000745c:	f8c400a3          	sb	a2,-127(s0)
    80007460:	d8b6e4e3          	bltu	a3,a1,800071e8 <__printf+0x350>
    80007464:	00200793          	li	a5,2
    80007468:	e2dff06f          	j	80007294 <__printf+0x3fc>
    8000746c:	00002c97          	auipc	s9,0x2
    80007470:	1f4c8c93          	addi	s9,s9,500 # 80009660 <_ZL6digits+0x160>
    80007474:	02800513          	li	a0,40
    80007478:	ef1ff06f          	j	80007368 <__printf+0x4d0>
    8000747c:	00700793          	li	a5,7
    80007480:	00600c93          	li	s9,6
    80007484:	e0dff06f          	j	80007290 <__printf+0x3f8>
    80007488:	00700793          	li	a5,7
    8000748c:	00600c93          	li	s9,6
    80007490:	c69ff06f          	j	800070f8 <__printf+0x260>
    80007494:	00300793          	li	a5,3
    80007498:	00200c93          	li	s9,2
    8000749c:	c5dff06f          	j	800070f8 <__printf+0x260>
    800074a0:	00300793          	li	a5,3
    800074a4:	00200c93          	li	s9,2
    800074a8:	de9ff06f          	j	80007290 <__printf+0x3f8>
    800074ac:	00400793          	li	a5,4
    800074b0:	00300c93          	li	s9,3
    800074b4:	dddff06f          	j	80007290 <__printf+0x3f8>
    800074b8:	00400793          	li	a5,4
    800074bc:	00300c93          	li	s9,3
    800074c0:	c39ff06f          	j	800070f8 <__printf+0x260>
    800074c4:	00500793          	li	a5,5
    800074c8:	00400c93          	li	s9,4
    800074cc:	c2dff06f          	j	800070f8 <__printf+0x260>
    800074d0:	00500793          	li	a5,5
    800074d4:	00400c93          	li	s9,4
    800074d8:	db9ff06f          	j	80007290 <__printf+0x3f8>
    800074dc:	00600793          	li	a5,6
    800074e0:	00500c93          	li	s9,5
    800074e4:	dadff06f          	j	80007290 <__printf+0x3f8>
    800074e8:	00600793          	li	a5,6
    800074ec:	00500c93          	li	s9,5
    800074f0:	c09ff06f          	j	800070f8 <__printf+0x260>
    800074f4:	00800793          	li	a5,8
    800074f8:	00700c93          	li	s9,7
    800074fc:	bfdff06f          	j	800070f8 <__printf+0x260>
    80007500:	00100793          	li	a5,1
    80007504:	d91ff06f          	j	80007294 <__printf+0x3fc>
    80007508:	00100793          	li	a5,1
    8000750c:	bf1ff06f          	j	800070fc <__printf+0x264>
    80007510:	00900793          	li	a5,9
    80007514:	00800c93          	li	s9,8
    80007518:	be1ff06f          	j	800070f8 <__printf+0x260>
    8000751c:	00002517          	auipc	a0,0x2
    80007520:	14c50513          	addi	a0,a0,332 # 80009668 <_ZL6digits+0x168>
    80007524:	00000097          	auipc	ra,0x0
    80007528:	918080e7          	jalr	-1768(ra) # 80006e3c <panic>

000000008000752c <printfinit>:
    8000752c:	fe010113          	addi	sp,sp,-32
    80007530:	00813823          	sd	s0,16(sp)
    80007534:	00913423          	sd	s1,8(sp)
    80007538:	00113c23          	sd	ra,24(sp)
    8000753c:	02010413          	addi	s0,sp,32
    80007540:	00005497          	auipc	s1,0x5
    80007544:	73048493          	addi	s1,s1,1840 # 8000cc70 <pr>
    80007548:	00048513          	mv	a0,s1
    8000754c:	00002597          	auipc	a1,0x2
    80007550:	12c58593          	addi	a1,a1,300 # 80009678 <_ZL6digits+0x178>
    80007554:	00000097          	auipc	ra,0x0
    80007558:	5f4080e7          	jalr	1524(ra) # 80007b48 <initlock>
    8000755c:	01813083          	ld	ra,24(sp)
    80007560:	01013403          	ld	s0,16(sp)
    80007564:	0004ac23          	sw	zero,24(s1)
    80007568:	00813483          	ld	s1,8(sp)
    8000756c:	02010113          	addi	sp,sp,32
    80007570:	00008067          	ret

0000000080007574 <uartinit>:
    80007574:	ff010113          	addi	sp,sp,-16
    80007578:	00813423          	sd	s0,8(sp)
    8000757c:	01010413          	addi	s0,sp,16
    80007580:	100007b7          	lui	a5,0x10000
    80007584:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007588:	f8000713          	li	a4,-128
    8000758c:	00e781a3          	sb	a4,3(a5)
    80007590:	00300713          	li	a4,3
    80007594:	00e78023          	sb	a4,0(a5)
    80007598:	000780a3          	sb	zero,1(a5)
    8000759c:	00e781a3          	sb	a4,3(a5)
    800075a0:	00700693          	li	a3,7
    800075a4:	00d78123          	sb	a3,2(a5)
    800075a8:	00e780a3          	sb	a4,1(a5)
    800075ac:	00813403          	ld	s0,8(sp)
    800075b0:	01010113          	addi	sp,sp,16
    800075b4:	00008067          	ret

00000000800075b8 <uartputc>:
    800075b8:	00004797          	auipc	a5,0x4
    800075bc:	3a07a783          	lw	a5,928(a5) # 8000b958 <panicked>
    800075c0:	00078463          	beqz	a5,800075c8 <uartputc+0x10>
    800075c4:	0000006f          	j	800075c4 <uartputc+0xc>
    800075c8:	fd010113          	addi	sp,sp,-48
    800075cc:	02813023          	sd	s0,32(sp)
    800075d0:	00913c23          	sd	s1,24(sp)
    800075d4:	01213823          	sd	s2,16(sp)
    800075d8:	01313423          	sd	s3,8(sp)
    800075dc:	02113423          	sd	ra,40(sp)
    800075e0:	03010413          	addi	s0,sp,48
    800075e4:	00004917          	auipc	s2,0x4
    800075e8:	37c90913          	addi	s2,s2,892 # 8000b960 <uart_tx_r>
    800075ec:	00093783          	ld	a5,0(s2)
    800075f0:	00004497          	auipc	s1,0x4
    800075f4:	37848493          	addi	s1,s1,888 # 8000b968 <uart_tx_w>
    800075f8:	0004b703          	ld	a4,0(s1)
    800075fc:	02078693          	addi	a3,a5,32
    80007600:	00050993          	mv	s3,a0
    80007604:	02e69c63          	bne	a3,a4,8000763c <uartputc+0x84>
    80007608:	00001097          	auipc	ra,0x1
    8000760c:	834080e7          	jalr	-1996(ra) # 80007e3c <push_on>
    80007610:	00093783          	ld	a5,0(s2)
    80007614:	0004b703          	ld	a4,0(s1)
    80007618:	02078793          	addi	a5,a5,32
    8000761c:	00e79463          	bne	a5,a4,80007624 <uartputc+0x6c>
    80007620:	0000006f          	j	80007620 <uartputc+0x68>
    80007624:	00001097          	auipc	ra,0x1
    80007628:	88c080e7          	jalr	-1908(ra) # 80007eb0 <pop_on>
    8000762c:	00093783          	ld	a5,0(s2)
    80007630:	0004b703          	ld	a4,0(s1)
    80007634:	02078693          	addi	a3,a5,32
    80007638:	fce688e3          	beq	a3,a4,80007608 <uartputc+0x50>
    8000763c:	01f77693          	andi	a3,a4,31
    80007640:	00005597          	auipc	a1,0x5
    80007644:	65058593          	addi	a1,a1,1616 # 8000cc90 <uart_tx_buf>
    80007648:	00d586b3          	add	a3,a1,a3
    8000764c:	00170713          	addi	a4,a4,1
    80007650:	01368023          	sb	s3,0(a3)
    80007654:	00e4b023          	sd	a4,0(s1)
    80007658:	10000637          	lui	a2,0x10000
    8000765c:	02f71063          	bne	a4,a5,8000767c <uartputc+0xc4>
    80007660:	0340006f          	j	80007694 <uartputc+0xdc>
    80007664:	00074703          	lbu	a4,0(a4)
    80007668:	00f93023          	sd	a5,0(s2)
    8000766c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007670:	00093783          	ld	a5,0(s2)
    80007674:	0004b703          	ld	a4,0(s1)
    80007678:	00f70e63          	beq	a4,a5,80007694 <uartputc+0xdc>
    8000767c:	00564683          	lbu	a3,5(a2)
    80007680:	01f7f713          	andi	a4,a5,31
    80007684:	00e58733          	add	a4,a1,a4
    80007688:	0206f693          	andi	a3,a3,32
    8000768c:	00178793          	addi	a5,a5,1
    80007690:	fc069ae3          	bnez	a3,80007664 <uartputc+0xac>
    80007694:	02813083          	ld	ra,40(sp)
    80007698:	02013403          	ld	s0,32(sp)
    8000769c:	01813483          	ld	s1,24(sp)
    800076a0:	01013903          	ld	s2,16(sp)
    800076a4:	00813983          	ld	s3,8(sp)
    800076a8:	03010113          	addi	sp,sp,48
    800076ac:	00008067          	ret

00000000800076b0 <uartputc_sync>:
    800076b0:	ff010113          	addi	sp,sp,-16
    800076b4:	00813423          	sd	s0,8(sp)
    800076b8:	01010413          	addi	s0,sp,16
    800076bc:	00004717          	auipc	a4,0x4
    800076c0:	29c72703          	lw	a4,668(a4) # 8000b958 <panicked>
    800076c4:	02071663          	bnez	a4,800076f0 <uartputc_sync+0x40>
    800076c8:	00050793          	mv	a5,a0
    800076cc:	100006b7          	lui	a3,0x10000
    800076d0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800076d4:	02077713          	andi	a4,a4,32
    800076d8:	fe070ce3          	beqz	a4,800076d0 <uartputc_sync+0x20>
    800076dc:	0ff7f793          	andi	a5,a5,255
    800076e0:	00f68023          	sb	a5,0(a3)
    800076e4:	00813403          	ld	s0,8(sp)
    800076e8:	01010113          	addi	sp,sp,16
    800076ec:	00008067          	ret
    800076f0:	0000006f          	j	800076f0 <uartputc_sync+0x40>

00000000800076f4 <uartstart>:
    800076f4:	ff010113          	addi	sp,sp,-16
    800076f8:	00813423          	sd	s0,8(sp)
    800076fc:	01010413          	addi	s0,sp,16
    80007700:	00004617          	auipc	a2,0x4
    80007704:	26060613          	addi	a2,a2,608 # 8000b960 <uart_tx_r>
    80007708:	00004517          	auipc	a0,0x4
    8000770c:	26050513          	addi	a0,a0,608 # 8000b968 <uart_tx_w>
    80007710:	00063783          	ld	a5,0(a2)
    80007714:	00053703          	ld	a4,0(a0)
    80007718:	04f70263          	beq	a4,a5,8000775c <uartstart+0x68>
    8000771c:	100005b7          	lui	a1,0x10000
    80007720:	00005817          	auipc	a6,0x5
    80007724:	57080813          	addi	a6,a6,1392 # 8000cc90 <uart_tx_buf>
    80007728:	01c0006f          	j	80007744 <uartstart+0x50>
    8000772c:	0006c703          	lbu	a4,0(a3)
    80007730:	00f63023          	sd	a5,0(a2)
    80007734:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007738:	00063783          	ld	a5,0(a2)
    8000773c:	00053703          	ld	a4,0(a0)
    80007740:	00f70e63          	beq	a4,a5,8000775c <uartstart+0x68>
    80007744:	01f7f713          	andi	a4,a5,31
    80007748:	00e806b3          	add	a3,a6,a4
    8000774c:	0055c703          	lbu	a4,5(a1)
    80007750:	00178793          	addi	a5,a5,1
    80007754:	02077713          	andi	a4,a4,32
    80007758:	fc071ae3          	bnez	a4,8000772c <uartstart+0x38>
    8000775c:	00813403          	ld	s0,8(sp)
    80007760:	01010113          	addi	sp,sp,16
    80007764:	00008067          	ret

0000000080007768 <uartgetc>:
    80007768:	ff010113          	addi	sp,sp,-16
    8000776c:	00813423          	sd	s0,8(sp)
    80007770:	01010413          	addi	s0,sp,16
    80007774:	10000737          	lui	a4,0x10000
    80007778:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000777c:	0017f793          	andi	a5,a5,1
    80007780:	00078c63          	beqz	a5,80007798 <uartgetc+0x30>
    80007784:	00074503          	lbu	a0,0(a4)
    80007788:	0ff57513          	andi	a0,a0,255
    8000778c:	00813403          	ld	s0,8(sp)
    80007790:	01010113          	addi	sp,sp,16
    80007794:	00008067          	ret
    80007798:	fff00513          	li	a0,-1
    8000779c:	ff1ff06f          	j	8000778c <uartgetc+0x24>

00000000800077a0 <uartintr>:
    800077a0:	100007b7          	lui	a5,0x10000
    800077a4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800077a8:	0017f793          	andi	a5,a5,1
    800077ac:	0a078463          	beqz	a5,80007854 <uartintr+0xb4>
    800077b0:	fe010113          	addi	sp,sp,-32
    800077b4:	00813823          	sd	s0,16(sp)
    800077b8:	00913423          	sd	s1,8(sp)
    800077bc:	00113c23          	sd	ra,24(sp)
    800077c0:	02010413          	addi	s0,sp,32
    800077c4:	100004b7          	lui	s1,0x10000
    800077c8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800077cc:	0ff57513          	andi	a0,a0,255
    800077d0:	fffff097          	auipc	ra,0xfffff
    800077d4:	534080e7          	jalr	1332(ra) # 80006d04 <consoleintr>
    800077d8:	0054c783          	lbu	a5,5(s1)
    800077dc:	0017f793          	andi	a5,a5,1
    800077e0:	fe0794e3          	bnez	a5,800077c8 <uartintr+0x28>
    800077e4:	00004617          	auipc	a2,0x4
    800077e8:	17c60613          	addi	a2,a2,380 # 8000b960 <uart_tx_r>
    800077ec:	00004517          	auipc	a0,0x4
    800077f0:	17c50513          	addi	a0,a0,380 # 8000b968 <uart_tx_w>
    800077f4:	00063783          	ld	a5,0(a2)
    800077f8:	00053703          	ld	a4,0(a0)
    800077fc:	04f70263          	beq	a4,a5,80007840 <uartintr+0xa0>
    80007800:	100005b7          	lui	a1,0x10000
    80007804:	00005817          	auipc	a6,0x5
    80007808:	48c80813          	addi	a6,a6,1164 # 8000cc90 <uart_tx_buf>
    8000780c:	01c0006f          	j	80007828 <uartintr+0x88>
    80007810:	0006c703          	lbu	a4,0(a3)
    80007814:	00f63023          	sd	a5,0(a2)
    80007818:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000781c:	00063783          	ld	a5,0(a2)
    80007820:	00053703          	ld	a4,0(a0)
    80007824:	00f70e63          	beq	a4,a5,80007840 <uartintr+0xa0>
    80007828:	01f7f713          	andi	a4,a5,31
    8000782c:	00e806b3          	add	a3,a6,a4
    80007830:	0055c703          	lbu	a4,5(a1)
    80007834:	00178793          	addi	a5,a5,1
    80007838:	02077713          	andi	a4,a4,32
    8000783c:	fc071ae3          	bnez	a4,80007810 <uartintr+0x70>
    80007840:	01813083          	ld	ra,24(sp)
    80007844:	01013403          	ld	s0,16(sp)
    80007848:	00813483          	ld	s1,8(sp)
    8000784c:	02010113          	addi	sp,sp,32
    80007850:	00008067          	ret
    80007854:	00004617          	auipc	a2,0x4
    80007858:	10c60613          	addi	a2,a2,268 # 8000b960 <uart_tx_r>
    8000785c:	00004517          	auipc	a0,0x4
    80007860:	10c50513          	addi	a0,a0,268 # 8000b968 <uart_tx_w>
    80007864:	00063783          	ld	a5,0(a2)
    80007868:	00053703          	ld	a4,0(a0)
    8000786c:	04f70263          	beq	a4,a5,800078b0 <uartintr+0x110>
    80007870:	100005b7          	lui	a1,0x10000
    80007874:	00005817          	auipc	a6,0x5
    80007878:	41c80813          	addi	a6,a6,1052 # 8000cc90 <uart_tx_buf>
    8000787c:	01c0006f          	j	80007898 <uartintr+0xf8>
    80007880:	0006c703          	lbu	a4,0(a3)
    80007884:	00f63023          	sd	a5,0(a2)
    80007888:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000788c:	00063783          	ld	a5,0(a2)
    80007890:	00053703          	ld	a4,0(a0)
    80007894:	02f70063          	beq	a4,a5,800078b4 <uartintr+0x114>
    80007898:	01f7f713          	andi	a4,a5,31
    8000789c:	00e806b3          	add	a3,a6,a4
    800078a0:	0055c703          	lbu	a4,5(a1)
    800078a4:	00178793          	addi	a5,a5,1
    800078a8:	02077713          	andi	a4,a4,32
    800078ac:	fc071ae3          	bnez	a4,80007880 <uartintr+0xe0>
    800078b0:	00008067          	ret
    800078b4:	00008067          	ret

00000000800078b8 <kinit>:
    800078b8:	fc010113          	addi	sp,sp,-64
    800078bc:	02913423          	sd	s1,40(sp)
    800078c0:	fffff7b7          	lui	a5,0xfffff
    800078c4:	00006497          	auipc	s1,0x6
    800078c8:	3eb48493          	addi	s1,s1,1003 # 8000dcaf <end+0xfff>
    800078cc:	02813823          	sd	s0,48(sp)
    800078d0:	01313c23          	sd	s3,24(sp)
    800078d4:	00f4f4b3          	and	s1,s1,a5
    800078d8:	02113c23          	sd	ra,56(sp)
    800078dc:	03213023          	sd	s2,32(sp)
    800078e0:	01413823          	sd	s4,16(sp)
    800078e4:	01513423          	sd	s5,8(sp)
    800078e8:	04010413          	addi	s0,sp,64
    800078ec:	000017b7          	lui	a5,0x1
    800078f0:	01100993          	li	s3,17
    800078f4:	00f487b3          	add	a5,s1,a5
    800078f8:	01b99993          	slli	s3,s3,0x1b
    800078fc:	06f9e063          	bltu	s3,a5,8000795c <kinit+0xa4>
    80007900:	00005a97          	auipc	s5,0x5
    80007904:	3b0a8a93          	addi	s5,s5,944 # 8000ccb0 <end>
    80007908:	0754ec63          	bltu	s1,s5,80007980 <kinit+0xc8>
    8000790c:	0734fa63          	bgeu	s1,s3,80007980 <kinit+0xc8>
    80007910:	00088a37          	lui	s4,0x88
    80007914:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007918:	00004917          	auipc	s2,0x4
    8000791c:	05890913          	addi	s2,s2,88 # 8000b970 <kmem>
    80007920:	00ca1a13          	slli	s4,s4,0xc
    80007924:	0140006f          	j	80007938 <kinit+0x80>
    80007928:	000017b7          	lui	a5,0x1
    8000792c:	00f484b3          	add	s1,s1,a5
    80007930:	0554e863          	bltu	s1,s5,80007980 <kinit+0xc8>
    80007934:	0534f663          	bgeu	s1,s3,80007980 <kinit+0xc8>
    80007938:	00001637          	lui	a2,0x1
    8000793c:	00100593          	li	a1,1
    80007940:	00048513          	mv	a0,s1
    80007944:	00000097          	auipc	ra,0x0
    80007948:	5e4080e7          	jalr	1508(ra) # 80007f28 <__memset>
    8000794c:	00093783          	ld	a5,0(s2)
    80007950:	00f4b023          	sd	a5,0(s1)
    80007954:	00993023          	sd	s1,0(s2)
    80007958:	fd4498e3          	bne	s1,s4,80007928 <kinit+0x70>
    8000795c:	03813083          	ld	ra,56(sp)
    80007960:	03013403          	ld	s0,48(sp)
    80007964:	02813483          	ld	s1,40(sp)
    80007968:	02013903          	ld	s2,32(sp)
    8000796c:	01813983          	ld	s3,24(sp)
    80007970:	01013a03          	ld	s4,16(sp)
    80007974:	00813a83          	ld	s5,8(sp)
    80007978:	04010113          	addi	sp,sp,64
    8000797c:	00008067          	ret
    80007980:	00002517          	auipc	a0,0x2
    80007984:	d1850513          	addi	a0,a0,-744 # 80009698 <digits+0x18>
    80007988:	fffff097          	auipc	ra,0xfffff
    8000798c:	4b4080e7          	jalr	1204(ra) # 80006e3c <panic>

0000000080007990 <freerange>:
    80007990:	fc010113          	addi	sp,sp,-64
    80007994:	000017b7          	lui	a5,0x1
    80007998:	02913423          	sd	s1,40(sp)
    8000799c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800079a0:	009504b3          	add	s1,a0,s1
    800079a4:	fffff537          	lui	a0,0xfffff
    800079a8:	02813823          	sd	s0,48(sp)
    800079ac:	02113c23          	sd	ra,56(sp)
    800079b0:	03213023          	sd	s2,32(sp)
    800079b4:	01313c23          	sd	s3,24(sp)
    800079b8:	01413823          	sd	s4,16(sp)
    800079bc:	01513423          	sd	s5,8(sp)
    800079c0:	01613023          	sd	s6,0(sp)
    800079c4:	04010413          	addi	s0,sp,64
    800079c8:	00a4f4b3          	and	s1,s1,a0
    800079cc:	00f487b3          	add	a5,s1,a5
    800079d0:	06f5e463          	bltu	a1,a5,80007a38 <freerange+0xa8>
    800079d4:	00005a97          	auipc	s5,0x5
    800079d8:	2dca8a93          	addi	s5,s5,732 # 8000ccb0 <end>
    800079dc:	0954e263          	bltu	s1,s5,80007a60 <freerange+0xd0>
    800079e0:	01100993          	li	s3,17
    800079e4:	01b99993          	slli	s3,s3,0x1b
    800079e8:	0734fc63          	bgeu	s1,s3,80007a60 <freerange+0xd0>
    800079ec:	00058a13          	mv	s4,a1
    800079f0:	00004917          	auipc	s2,0x4
    800079f4:	f8090913          	addi	s2,s2,-128 # 8000b970 <kmem>
    800079f8:	00002b37          	lui	s6,0x2
    800079fc:	0140006f          	j	80007a10 <freerange+0x80>
    80007a00:	000017b7          	lui	a5,0x1
    80007a04:	00f484b3          	add	s1,s1,a5
    80007a08:	0554ec63          	bltu	s1,s5,80007a60 <freerange+0xd0>
    80007a0c:	0534fa63          	bgeu	s1,s3,80007a60 <freerange+0xd0>
    80007a10:	00001637          	lui	a2,0x1
    80007a14:	00100593          	li	a1,1
    80007a18:	00048513          	mv	a0,s1
    80007a1c:	00000097          	auipc	ra,0x0
    80007a20:	50c080e7          	jalr	1292(ra) # 80007f28 <__memset>
    80007a24:	00093703          	ld	a4,0(s2)
    80007a28:	016487b3          	add	a5,s1,s6
    80007a2c:	00e4b023          	sd	a4,0(s1)
    80007a30:	00993023          	sd	s1,0(s2)
    80007a34:	fcfa76e3          	bgeu	s4,a5,80007a00 <freerange+0x70>
    80007a38:	03813083          	ld	ra,56(sp)
    80007a3c:	03013403          	ld	s0,48(sp)
    80007a40:	02813483          	ld	s1,40(sp)
    80007a44:	02013903          	ld	s2,32(sp)
    80007a48:	01813983          	ld	s3,24(sp)
    80007a4c:	01013a03          	ld	s4,16(sp)
    80007a50:	00813a83          	ld	s5,8(sp)
    80007a54:	00013b03          	ld	s6,0(sp)
    80007a58:	04010113          	addi	sp,sp,64
    80007a5c:	00008067          	ret
    80007a60:	00002517          	auipc	a0,0x2
    80007a64:	c3850513          	addi	a0,a0,-968 # 80009698 <digits+0x18>
    80007a68:	fffff097          	auipc	ra,0xfffff
    80007a6c:	3d4080e7          	jalr	980(ra) # 80006e3c <panic>

0000000080007a70 <kfree>:
    80007a70:	fe010113          	addi	sp,sp,-32
    80007a74:	00813823          	sd	s0,16(sp)
    80007a78:	00113c23          	sd	ra,24(sp)
    80007a7c:	00913423          	sd	s1,8(sp)
    80007a80:	02010413          	addi	s0,sp,32
    80007a84:	03451793          	slli	a5,a0,0x34
    80007a88:	04079c63          	bnez	a5,80007ae0 <kfree+0x70>
    80007a8c:	00005797          	auipc	a5,0x5
    80007a90:	22478793          	addi	a5,a5,548 # 8000ccb0 <end>
    80007a94:	00050493          	mv	s1,a0
    80007a98:	04f56463          	bltu	a0,a5,80007ae0 <kfree+0x70>
    80007a9c:	01100793          	li	a5,17
    80007aa0:	01b79793          	slli	a5,a5,0x1b
    80007aa4:	02f57e63          	bgeu	a0,a5,80007ae0 <kfree+0x70>
    80007aa8:	00001637          	lui	a2,0x1
    80007aac:	00100593          	li	a1,1
    80007ab0:	00000097          	auipc	ra,0x0
    80007ab4:	478080e7          	jalr	1144(ra) # 80007f28 <__memset>
    80007ab8:	00004797          	auipc	a5,0x4
    80007abc:	eb878793          	addi	a5,a5,-328 # 8000b970 <kmem>
    80007ac0:	0007b703          	ld	a4,0(a5)
    80007ac4:	01813083          	ld	ra,24(sp)
    80007ac8:	01013403          	ld	s0,16(sp)
    80007acc:	00e4b023          	sd	a4,0(s1)
    80007ad0:	0097b023          	sd	s1,0(a5)
    80007ad4:	00813483          	ld	s1,8(sp)
    80007ad8:	02010113          	addi	sp,sp,32
    80007adc:	00008067          	ret
    80007ae0:	00002517          	auipc	a0,0x2
    80007ae4:	bb850513          	addi	a0,a0,-1096 # 80009698 <digits+0x18>
    80007ae8:	fffff097          	auipc	ra,0xfffff
    80007aec:	354080e7          	jalr	852(ra) # 80006e3c <panic>

0000000080007af0 <kalloc>:
    80007af0:	fe010113          	addi	sp,sp,-32
    80007af4:	00813823          	sd	s0,16(sp)
    80007af8:	00913423          	sd	s1,8(sp)
    80007afc:	00113c23          	sd	ra,24(sp)
    80007b00:	02010413          	addi	s0,sp,32
    80007b04:	00004797          	auipc	a5,0x4
    80007b08:	e6c78793          	addi	a5,a5,-404 # 8000b970 <kmem>
    80007b0c:	0007b483          	ld	s1,0(a5)
    80007b10:	02048063          	beqz	s1,80007b30 <kalloc+0x40>
    80007b14:	0004b703          	ld	a4,0(s1)
    80007b18:	00001637          	lui	a2,0x1
    80007b1c:	00500593          	li	a1,5
    80007b20:	00048513          	mv	a0,s1
    80007b24:	00e7b023          	sd	a4,0(a5)
    80007b28:	00000097          	auipc	ra,0x0
    80007b2c:	400080e7          	jalr	1024(ra) # 80007f28 <__memset>
    80007b30:	01813083          	ld	ra,24(sp)
    80007b34:	01013403          	ld	s0,16(sp)
    80007b38:	00048513          	mv	a0,s1
    80007b3c:	00813483          	ld	s1,8(sp)
    80007b40:	02010113          	addi	sp,sp,32
    80007b44:	00008067          	ret

0000000080007b48 <initlock>:
    80007b48:	ff010113          	addi	sp,sp,-16
    80007b4c:	00813423          	sd	s0,8(sp)
    80007b50:	01010413          	addi	s0,sp,16
    80007b54:	00813403          	ld	s0,8(sp)
    80007b58:	00b53423          	sd	a1,8(a0)
    80007b5c:	00052023          	sw	zero,0(a0)
    80007b60:	00053823          	sd	zero,16(a0)
    80007b64:	01010113          	addi	sp,sp,16
    80007b68:	00008067          	ret

0000000080007b6c <acquire>:
    80007b6c:	fe010113          	addi	sp,sp,-32
    80007b70:	00813823          	sd	s0,16(sp)
    80007b74:	00913423          	sd	s1,8(sp)
    80007b78:	00113c23          	sd	ra,24(sp)
    80007b7c:	01213023          	sd	s2,0(sp)
    80007b80:	02010413          	addi	s0,sp,32
    80007b84:	00050493          	mv	s1,a0
    80007b88:	10002973          	csrr	s2,sstatus
    80007b8c:	100027f3          	csrr	a5,sstatus
    80007b90:	ffd7f793          	andi	a5,a5,-3
    80007b94:	10079073          	csrw	sstatus,a5
    80007b98:	fffff097          	auipc	ra,0xfffff
    80007b9c:	8e4080e7          	jalr	-1820(ra) # 8000647c <mycpu>
    80007ba0:	07852783          	lw	a5,120(a0)
    80007ba4:	06078e63          	beqz	a5,80007c20 <acquire+0xb4>
    80007ba8:	fffff097          	auipc	ra,0xfffff
    80007bac:	8d4080e7          	jalr	-1836(ra) # 8000647c <mycpu>
    80007bb0:	07852783          	lw	a5,120(a0)
    80007bb4:	0004a703          	lw	a4,0(s1)
    80007bb8:	0017879b          	addiw	a5,a5,1
    80007bbc:	06f52c23          	sw	a5,120(a0)
    80007bc0:	04071063          	bnez	a4,80007c00 <acquire+0x94>
    80007bc4:	00100713          	li	a4,1
    80007bc8:	00070793          	mv	a5,a4
    80007bcc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007bd0:	0007879b          	sext.w	a5,a5
    80007bd4:	fe079ae3          	bnez	a5,80007bc8 <acquire+0x5c>
    80007bd8:	0ff0000f          	fence
    80007bdc:	fffff097          	auipc	ra,0xfffff
    80007be0:	8a0080e7          	jalr	-1888(ra) # 8000647c <mycpu>
    80007be4:	01813083          	ld	ra,24(sp)
    80007be8:	01013403          	ld	s0,16(sp)
    80007bec:	00a4b823          	sd	a0,16(s1)
    80007bf0:	00013903          	ld	s2,0(sp)
    80007bf4:	00813483          	ld	s1,8(sp)
    80007bf8:	02010113          	addi	sp,sp,32
    80007bfc:	00008067          	ret
    80007c00:	0104b903          	ld	s2,16(s1)
    80007c04:	fffff097          	auipc	ra,0xfffff
    80007c08:	878080e7          	jalr	-1928(ra) # 8000647c <mycpu>
    80007c0c:	faa91ce3          	bne	s2,a0,80007bc4 <acquire+0x58>
    80007c10:	00002517          	auipc	a0,0x2
    80007c14:	a9050513          	addi	a0,a0,-1392 # 800096a0 <digits+0x20>
    80007c18:	fffff097          	auipc	ra,0xfffff
    80007c1c:	224080e7          	jalr	548(ra) # 80006e3c <panic>
    80007c20:	00195913          	srli	s2,s2,0x1
    80007c24:	fffff097          	auipc	ra,0xfffff
    80007c28:	858080e7          	jalr	-1960(ra) # 8000647c <mycpu>
    80007c2c:	00197913          	andi	s2,s2,1
    80007c30:	07252e23          	sw	s2,124(a0)
    80007c34:	f75ff06f          	j	80007ba8 <acquire+0x3c>

0000000080007c38 <release>:
    80007c38:	fe010113          	addi	sp,sp,-32
    80007c3c:	00813823          	sd	s0,16(sp)
    80007c40:	00113c23          	sd	ra,24(sp)
    80007c44:	00913423          	sd	s1,8(sp)
    80007c48:	01213023          	sd	s2,0(sp)
    80007c4c:	02010413          	addi	s0,sp,32
    80007c50:	00052783          	lw	a5,0(a0)
    80007c54:	00079a63          	bnez	a5,80007c68 <release+0x30>
    80007c58:	00002517          	auipc	a0,0x2
    80007c5c:	a5050513          	addi	a0,a0,-1456 # 800096a8 <digits+0x28>
    80007c60:	fffff097          	auipc	ra,0xfffff
    80007c64:	1dc080e7          	jalr	476(ra) # 80006e3c <panic>
    80007c68:	01053903          	ld	s2,16(a0)
    80007c6c:	00050493          	mv	s1,a0
    80007c70:	fffff097          	auipc	ra,0xfffff
    80007c74:	80c080e7          	jalr	-2036(ra) # 8000647c <mycpu>
    80007c78:	fea910e3          	bne	s2,a0,80007c58 <release+0x20>
    80007c7c:	0004b823          	sd	zero,16(s1)
    80007c80:	0ff0000f          	fence
    80007c84:	0f50000f          	fence	iorw,ow
    80007c88:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007c8c:	ffffe097          	auipc	ra,0xffffe
    80007c90:	7f0080e7          	jalr	2032(ra) # 8000647c <mycpu>
    80007c94:	100027f3          	csrr	a5,sstatus
    80007c98:	0027f793          	andi	a5,a5,2
    80007c9c:	04079a63          	bnez	a5,80007cf0 <release+0xb8>
    80007ca0:	07852783          	lw	a5,120(a0)
    80007ca4:	02f05e63          	blez	a5,80007ce0 <release+0xa8>
    80007ca8:	fff7871b          	addiw	a4,a5,-1
    80007cac:	06e52c23          	sw	a4,120(a0)
    80007cb0:	00071c63          	bnez	a4,80007cc8 <release+0x90>
    80007cb4:	07c52783          	lw	a5,124(a0)
    80007cb8:	00078863          	beqz	a5,80007cc8 <release+0x90>
    80007cbc:	100027f3          	csrr	a5,sstatus
    80007cc0:	0027e793          	ori	a5,a5,2
    80007cc4:	10079073          	csrw	sstatus,a5
    80007cc8:	01813083          	ld	ra,24(sp)
    80007ccc:	01013403          	ld	s0,16(sp)
    80007cd0:	00813483          	ld	s1,8(sp)
    80007cd4:	00013903          	ld	s2,0(sp)
    80007cd8:	02010113          	addi	sp,sp,32
    80007cdc:	00008067          	ret
    80007ce0:	00002517          	auipc	a0,0x2
    80007ce4:	9e850513          	addi	a0,a0,-1560 # 800096c8 <digits+0x48>
    80007ce8:	fffff097          	auipc	ra,0xfffff
    80007cec:	154080e7          	jalr	340(ra) # 80006e3c <panic>
    80007cf0:	00002517          	auipc	a0,0x2
    80007cf4:	9c050513          	addi	a0,a0,-1600 # 800096b0 <digits+0x30>
    80007cf8:	fffff097          	auipc	ra,0xfffff
    80007cfc:	144080e7          	jalr	324(ra) # 80006e3c <panic>

0000000080007d00 <holding>:
    80007d00:	00052783          	lw	a5,0(a0)
    80007d04:	00079663          	bnez	a5,80007d10 <holding+0x10>
    80007d08:	00000513          	li	a0,0
    80007d0c:	00008067          	ret
    80007d10:	fe010113          	addi	sp,sp,-32
    80007d14:	00813823          	sd	s0,16(sp)
    80007d18:	00913423          	sd	s1,8(sp)
    80007d1c:	00113c23          	sd	ra,24(sp)
    80007d20:	02010413          	addi	s0,sp,32
    80007d24:	01053483          	ld	s1,16(a0)
    80007d28:	ffffe097          	auipc	ra,0xffffe
    80007d2c:	754080e7          	jalr	1876(ra) # 8000647c <mycpu>
    80007d30:	01813083          	ld	ra,24(sp)
    80007d34:	01013403          	ld	s0,16(sp)
    80007d38:	40a48533          	sub	a0,s1,a0
    80007d3c:	00153513          	seqz	a0,a0
    80007d40:	00813483          	ld	s1,8(sp)
    80007d44:	02010113          	addi	sp,sp,32
    80007d48:	00008067          	ret

0000000080007d4c <push_off>:
    80007d4c:	fe010113          	addi	sp,sp,-32
    80007d50:	00813823          	sd	s0,16(sp)
    80007d54:	00113c23          	sd	ra,24(sp)
    80007d58:	00913423          	sd	s1,8(sp)
    80007d5c:	02010413          	addi	s0,sp,32
    80007d60:	100024f3          	csrr	s1,sstatus
    80007d64:	100027f3          	csrr	a5,sstatus
    80007d68:	ffd7f793          	andi	a5,a5,-3
    80007d6c:	10079073          	csrw	sstatus,a5
    80007d70:	ffffe097          	auipc	ra,0xffffe
    80007d74:	70c080e7          	jalr	1804(ra) # 8000647c <mycpu>
    80007d78:	07852783          	lw	a5,120(a0)
    80007d7c:	02078663          	beqz	a5,80007da8 <push_off+0x5c>
    80007d80:	ffffe097          	auipc	ra,0xffffe
    80007d84:	6fc080e7          	jalr	1788(ra) # 8000647c <mycpu>
    80007d88:	07852783          	lw	a5,120(a0)
    80007d8c:	01813083          	ld	ra,24(sp)
    80007d90:	01013403          	ld	s0,16(sp)
    80007d94:	0017879b          	addiw	a5,a5,1
    80007d98:	06f52c23          	sw	a5,120(a0)
    80007d9c:	00813483          	ld	s1,8(sp)
    80007da0:	02010113          	addi	sp,sp,32
    80007da4:	00008067          	ret
    80007da8:	0014d493          	srli	s1,s1,0x1
    80007dac:	ffffe097          	auipc	ra,0xffffe
    80007db0:	6d0080e7          	jalr	1744(ra) # 8000647c <mycpu>
    80007db4:	0014f493          	andi	s1,s1,1
    80007db8:	06952e23          	sw	s1,124(a0)
    80007dbc:	fc5ff06f          	j	80007d80 <push_off+0x34>

0000000080007dc0 <pop_off>:
    80007dc0:	ff010113          	addi	sp,sp,-16
    80007dc4:	00813023          	sd	s0,0(sp)
    80007dc8:	00113423          	sd	ra,8(sp)
    80007dcc:	01010413          	addi	s0,sp,16
    80007dd0:	ffffe097          	auipc	ra,0xffffe
    80007dd4:	6ac080e7          	jalr	1708(ra) # 8000647c <mycpu>
    80007dd8:	100027f3          	csrr	a5,sstatus
    80007ddc:	0027f793          	andi	a5,a5,2
    80007de0:	04079663          	bnez	a5,80007e2c <pop_off+0x6c>
    80007de4:	07852783          	lw	a5,120(a0)
    80007de8:	02f05a63          	blez	a5,80007e1c <pop_off+0x5c>
    80007dec:	fff7871b          	addiw	a4,a5,-1
    80007df0:	06e52c23          	sw	a4,120(a0)
    80007df4:	00071c63          	bnez	a4,80007e0c <pop_off+0x4c>
    80007df8:	07c52783          	lw	a5,124(a0)
    80007dfc:	00078863          	beqz	a5,80007e0c <pop_off+0x4c>
    80007e00:	100027f3          	csrr	a5,sstatus
    80007e04:	0027e793          	ori	a5,a5,2
    80007e08:	10079073          	csrw	sstatus,a5
    80007e0c:	00813083          	ld	ra,8(sp)
    80007e10:	00013403          	ld	s0,0(sp)
    80007e14:	01010113          	addi	sp,sp,16
    80007e18:	00008067          	ret
    80007e1c:	00002517          	auipc	a0,0x2
    80007e20:	8ac50513          	addi	a0,a0,-1876 # 800096c8 <digits+0x48>
    80007e24:	fffff097          	auipc	ra,0xfffff
    80007e28:	018080e7          	jalr	24(ra) # 80006e3c <panic>
    80007e2c:	00002517          	auipc	a0,0x2
    80007e30:	88450513          	addi	a0,a0,-1916 # 800096b0 <digits+0x30>
    80007e34:	fffff097          	auipc	ra,0xfffff
    80007e38:	008080e7          	jalr	8(ra) # 80006e3c <panic>

0000000080007e3c <push_on>:
    80007e3c:	fe010113          	addi	sp,sp,-32
    80007e40:	00813823          	sd	s0,16(sp)
    80007e44:	00113c23          	sd	ra,24(sp)
    80007e48:	00913423          	sd	s1,8(sp)
    80007e4c:	02010413          	addi	s0,sp,32
    80007e50:	100024f3          	csrr	s1,sstatus
    80007e54:	100027f3          	csrr	a5,sstatus
    80007e58:	0027e793          	ori	a5,a5,2
    80007e5c:	10079073          	csrw	sstatus,a5
    80007e60:	ffffe097          	auipc	ra,0xffffe
    80007e64:	61c080e7          	jalr	1564(ra) # 8000647c <mycpu>
    80007e68:	07852783          	lw	a5,120(a0)
    80007e6c:	02078663          	beqz	a5,80007e98 <push_on+0x5c>
    80007e70:	ffffe097          	auipc	ra,0xffffe
    80007e74:	60c080e7          	jalr	1548(ra) # 8000647c <mycpu>
    80007e78:	07852783          	lw	a5,120(a0)
    80007e7c:	01813083          	ld	ra,24(sp)
    80007e80:	01013403          	ld	s0,16(sp)
    80007e84:	0017879b          	addiw	a5,a5,1
    80007e88:	06f52c23          	sw	a5,120(a0)
    80007e8c:	00813483          	ld	s1,8(sp)
    80007e90:	02010113          	addi	sp,sp,32
    80007e94:	00008067          	ret
    80007e98:	0014d493          	srli	s1,s1,0x1
    80007e9c:	ffffe097          	auipc	ra,0xffffe
    80007ea0:	5e0080e7          	jalr	1504(ra) # 8000647c <mycpu>
    80007ea4:	0014f493          	andi	s1,s1,1
    80007ea8:	06952e23          	sw	s1,124(a0)
    80007eac:	fc5ff06f          	j	80007e70 <push_on+0x34>

0000000080007eb0 <pop_on>:
    80007eb0:	ff010113          	addi	sp,sp,-16
    80007eb4:	00813023          	sd	s0,0(sp)
    80007eb8:	00113423          	sd	ra,8(sp)
    80007ebc:	01010413          	addi	s0,sp,16
    80007ec0:	ffffe097          	auipc	ra,0xffffe
    80007ec4:	5bc080e7          	jalr	1468(ra) # 8000647c <mycpu>
    80007ec8:	100027f3          	csrr	a5,sstatus
    80007ecc:	0027f793          	andi	a5,a5,2
    80007ed0:	04078463          	beqz	a5,80007f18 <pop_on+0x68>
    80007ed4:	07852783          	lw	a5,120(a0)
    80007ed8:	02f05863          	blez	a5,80007f08 <pop_on+0x58>
    80007edc:	fff7879b          	addiw	a5,a5,-1
    80007ee0:	06f52c23          	sw	a5,120(a0)
    80007ee4:	07853783          	ld	a5,120(a0)
    80007ee8:	00079863          	bnez	a5,80007ef8 <pop_on+0x48>
    80007eec:	100027f3          	csrr	a5,sstatus
    80007ef0:	ffd7f793          	andi	a5,a5,-3
    80007ef4:	10079073          	csrw	sstatus,a5
    80007ef8:	00813083          	ld	ra,8(sp)
    80007efc:	00013403          	ld	s0,0(sp)
    80007f00:	01010113          	addi	sp,sp,16
    80007f04:	00008067          	ret
    80007f08:	00001517          	auipc	a0,0x1
    80007f0c:	7e850513          	addi	a0,a0,2024 # 800096f0 <digits+0x70>
    80007f10:	fffff097          	auipc	ra,0xfffff
    80007f14:	f2c080e7          	jalr	-212(ra) # 80006e3c <panic>
    80007f18:	00001517          	auipc	a0,0x1
    80007f1c:	7b850513          	addi	a0,a0,1976 # 800096d0 <digits+0x50>
    80007f20:	fffff097          	auipc	ra,0xfffff
    80007f24:	f1c080e7          	jalr	-228(ra) # 80006e3c <panic>

0000000080007f28 <__memset>:
    80007f28:	ff010113          	addi	sp,sp,-16
    80007f2c:	00813423          	sd	s0,8(sp)
    80007f30:	01010413          	addi	s0,sp,16
    80007f34:	1a060e63          	beqz	a2,800080f0 <__memset+0x1c8>
    80007f38:	40a007b3          	neg	a5,a0
    80007f3c:	0077f793          	andi	a5,a5,7
    80007f40:	00778693          	addi	a3,a5,7
    80007f44:	00b00813          	li	a6,11
    80007f48:	0ff5f593          	andi	a1,a1,255
    80007f4c:	fff6071b          	addiw	a4,a2,-1
    80007f50:	1b06e663          	bltu	a3,a6,800080fc <__memset+0x1d4>
    80007f54:	1cd76463          	bltu	a4,a3,8000811c <__memset+0x1f4>
    80007f58:	1a078e63          	beqz	a5,80008114 <__memset+0x1ec>
    80007f5c:	00b50023          	sb	a1,0(a0)
    80007f60:	00100713          	li	a4,1
    80007f64:	1ae78463          	beq	a5,a4,8000810c <__memset+0x1e4>
    80007f68:	00b500a3          	sb	a1,1(a0)
    80007f6c:	00200713          	li	a4,2
    80007f70:	1ae78a63          	beq	a5,a4,80008124 <__memset+0x1fc>
    80007f74:	00b50123          	sb	a1,2(a0)
    80007f78:	00300713          	li	a4,3
    80007f7c:	18e78463          	beq	a5,a4,80008104 <__memset+0x1dc>
    80007f80:	00b501a3          	sb	a1,3(a0)
    80007f84:	00400713          	li	a4,4
    80007f88:	1ae78263          	beq	a5,a4,8000812c <__memset+0x204>
    80007f8c:	00b50223          	sb	a1,4(a0)
    80007f90:	00500713          	li	a4,5
    80007f94:	1ae78063          	beq	a5,a4,80008134 <__memset+0x20c>
    80007f98:	00b502a3          	sb	a1,5(a0)
    80007f9c:	00700713          	li	a4,7
    80007fa0:	18e79e63          	bne	a5,a4,8000813c <__memset+0x214>
    80007fa4:	00b50323          	sb	a1,6(a0)
    80007fa8:	00700e93          	li	t4,7
    80007fac:	00859713          	slli	a4,a1,0x8
    80007fb0:	00e5e733          	or	a4,a1,a4
    80007fb4:	01059e13          	slli	t3,a1,0x10
    80007fb8:	01c76e33          	or	t3,a4,t3
    80007fbc:	01859313          	slli	t1,a1,0x18
    80007fc0:	006e6333          	or	t1,t3,t1
    80007fc4:	02059893          	slli	a7,a1,0x20
    80007fc8:	40f60e3b          	subw	t3,a2,a5
    80007fcc:	011368b3          	or	a7,t1,a7
    80007fd0:	02859813          	slli	a6,a1,0x28
    80007fd4:	0108e833          	or	a6,a7,a6
    80007fd8:	03059693          	slli	a3,a1,0x30
    80007fdc:	003e589b          	srliw	a7,t3,0x3
    80007fe0:	00d866b3          	or	a3,a6,a3
    80007fe4:	03859713          	slli	a4,a1,0x38
    80007fe8:	00389813          	slli	a6,a7,0x3
    80007fec:	00f507b3          	add	a5,a0,a5
    80007ff0:	00e6e733          	or	a4,a3,a4
    80007ff4:	000e089b          	sext.w	a7,t3
    80007ff8:	00f806b3          	add	a3,a6,a5
    80007ffc:	00e7b023          	sd	a4,0(a5)
    80008000:	00878793          	addi	a5,a5,8
    80008004:	fed79ce3          	bne	a5,a3,80007ffc <__memset+0xd4>
    80008008:	ff8e7793          	andi	a5,t3,-8
    8000800c:	0007871b          	sext.w	a4,a5
    80008010:	01d787bb          	addw	a5,a5,t4
    80008014:	0ce88e63          	beq	a7,a4,800080f0 <__memset+0x1c8>
    80008018:	00f50733          	add	a4,a0,a5
    8000801c:	00b70023          	sb	a1,0(a4)
    80008020:	0017871b          	addiw	a4,a5,1
    80008024:	0cc77663          	bgeu	a4,a2,800080f0 <__memset+0x1c8>
    80008028:	00e50733          	add	a4,a0,a4
    8000802c:	00b70023          	sb	a1,0(a4)
    80008030:	0027871b          	addiw	a4,a5,2
    80008034:	0ac77e63          	bgeu	a4,a2,800080f0 <__memset+0x1c8>
    80008038:	00e50733          	add	a4,a0,a4
    8000803c:	00b70023          	sb	a1,0(a4)
    80008040:	0037871b          	addiw	a4,a5,3
    80008044:	0ac77663          	bgeu	a4,a2,800080f0 <__memset+0x1c8>
    80008048:	00e50733          	add	a4,a0,a4
    8000804c:	00b70023          	sb	a1,0(a4)
    80008050:	0047871b          	addiw	a4,a5,4
    80008054:	08c77e63          	bgeu	a4,a2,800080f0 <__memset+0x1c8>
    80008058:	00e50733          	add	a4,a0,a4
    8000805c:	00b70023          	sb	a1,0(a4)
    80008060:	0057871b          	addiw	a4,a5,5
    80008064:	08c77663          	bgeu	a4,a2,800080f0 <__memset+0x1c8>
    80008068:	00e50733          	add	a4,a0,a4
    8000806c:	00b70023          	sb	a1,0(a4)
    80008070:	0067871b          	addiw	a4,a5,6
    80008074:	06c77e63          	bgeu	a4,a2,800080f0 <__memset+0x1c8>
    80008078:	00e50733          	add	a4,a0,a4
    8000807c:	00b70023          	sb	a1,0(a4)
    80008080:	0077871b          	addiw	a4,a5,7
    80008084:	06c77663          	bgeu	a4,a2,800080f0 <__memset+0x1c8>
    80008088:	00e50733          	add	a4,a0,a4
    8000808c:	00b70023          	sb	a1,0(a4)
    80008090:	0087871b          	addiw	a4,a5,8
    80008094:	04c77e63          	bgeu	a4,a2,800080f0 <__memset+0x1c8>
    80008098:	00e50733          	add	a4,a0,a4
    8000809c:	00b70023          	sb	a1,0(a4)
    800080a0:	0097871b          	addiw	a4,a5,9
    800080a4:	04c77663          	bgeu	a4,a2,800080f0 <__memset+0x1c8>
    800080a8:	00e50733          	add	a4,a0,a4
    800080ac:	00b70023          	sb	a1,0(a4)
    800080b0:	00a7871b          	addiw	a4,a5,10
    800080b4:	02c77e63          	bgeu	a4,a2,800080f0 <__memset+0x1c8>
    800080b8:	00e50733          	add	a4,a0,a4
    800080bc:	00b70023          	sb	a1,0(a4)
    800080c0:	00b7871b          	addiw	a4,a5,11
    800080c4:	02c77663          	bgeu	a4,a2,800080f0 <__memset+0x1c8>
    800080c8:	00e50733          	add	a4,a0,a4
    800080cc:	00b70023          	sb	a1,0(a4)
    800080d0:	00c7871b          	addiw	a4,a5,12
    800080d4:	00c77e63          	bgeu	a4,a2,800080f0 <__memset+0x1c8>
    800080d8:	00e50733          	add	a4,a0,a4
    800080dc:	00b70023          	sb	a1,0(a4)
    800080e0:	00d7879b          	addiw	a5,a5,13
    800080e4:	00c7f663          	bgeu	a5,a2,800080f0 <__memset+0x1c8>
    800080e8:	00f507b3          	add	a5,a0,a5
    800080ec:	00b78023          	sb	a1,0(a5)
    800080f0:	00813403          	ld	s0,8(sp)
    800080f4:	01010113          	addi	sp,sp,16
    800080f8:	00008067          	ret
    800080fc:	00b00693          	li	a3,11
    80008100:	e55ff06f          	j	80007f54 <__memset+0x2c>
    80008104:	00300e93          	li	t4,3
    80008108:	ea5ff06f          	j	80007fac <__memset+0x84>
    8000810c:	00100e93          	li	t4,1
    80008110:	e9dff06f          	j	80007fac <__memset+0x84>
    80008114:	00000e93          	li	t4,0
    80008118:	e95ff06f          	j	80007fac <__memset+0x84>
    8000811c:	00000793          	li	a5,0
    80008120:	ef9ff06f          	j	80008018 <__memset+0xf0>
    80008124:	00200e93          	li	t4,2
    80008128:	e85ff06f          	j	80007fac <__memset+0x84>
    8000812c:	00400e93          	li	t4,4
    80008130:	e7dff06f          	j	80007fac <__memset+0x84>
    80008134:	00500e93          	li	t4,5
    80008138:	e75ff06f          	j	80007fac <__memset+0x84>
    8000813c:	00600e93          	li	t4,6
    80008140:	e6dff06f          	j	80007fac <__memset+0x84>

0000000080008144 <__memmove>:
    80008144:	ff010113          	addi	sp,sp,-16
    80008148:	00813423          	sd	s0,8(sp)
    8000814c:	01010413          	addi	s0,sp,16
    80008150:	0e060863          	beqz	a2,80008240 <__memmove+0xfc>
    80008154:	fff6069b          	addiw	a3,a2,-1
    80008158:	0006881b          	sext.w	a6,a3
    8000815c:	0ea5e863          	bltu	a1,a0,8000824c <__memmove+0x108>
    80008160:	00758713          	addi	a4,a1,7
    80008164:	00a5e7b3          	or	a5,a1,a0
    80008168:	40a70733          	sub	a4,a4,a0
    8000816c:	0077f793          	andi	a5,a5,7
    80008170:	00f73713          	sltiu	a4,a4,15
    80008174:	00174713          	xori	a4,a4,1
    80008178:	0017b793          	seqz	a5,a5
    8000817c:	00e7f7b3          	and	a5,a5,a4
    80008180:	10078863          	beqz	a5,80008290 <__memmove+0x14c>
    80008184:	00900793          	li	a5,9
    80008188:	1107f463          	bgeu	a5,a6,80008290 <__memmove+0x14c>
    8000818c:	0036581b          	srliw	a6,a2,0x3
    80008190:	fff8081b          	addiw	a6,a6,-1
    80008194:	02081813          	slli	a6,a6,0x20
    80008198:	01d85893          	srli	a7,a6,0x1d
    8000819c:	00858813          	addi	a6,a1,8
    800081a0:	00058793          	mv	a5,a1
    800081a4:	00050713          	mv	a4,a0
    800081a8:	01088833          	add	a6,a7,a6
    800081ac:	0007b883          	ld	a7,0(a5)
    800081b0:	00878793          	addi	a5,a5,8
    800081b4:	00870713          	addi	a4,a4,8
    800081b8:	ff173c23          	sd	a7,-8(a4)
    800081bc:	ff0798e3          	bne	a5,a6,800081ac <__memmove+0x68>
    800081c0:	ff867713          	andi	a4,a2,-8
    800081c4:	02071793          	slli	a5,a4,0x20
    800081c8:	0207d793          	srli	a5,a5,0x20
    800081cc:	00f585b3          	add	a1,a1,a5
    800081d0:	40e686bb          	subw	a3,a3,a4
    800081d4:	00f507b3          	add	a5,a0,a5
    800081d8:	06e60463          	beq	a2,a4,80008240 <__memmove+0xfc>
    800081dc:	0005c703          	lbu	a4,0(a1)
    800081e0:	00e78023          	sb	a4,0(a5)
    800081e4:	04068e63          	beqz	a3,80008240 <__memmove+0xfc>
    800081e8:	0015c603          	lbu	a2,1(a1)
    800081ec:	00100713          	li	a4,1
    800081f0:	00c780a3          	sb	a2,1(a5)
    800081f4:	04e68663          	beq	a3,a4,80008240 <__memmove+0xfc>
    800081f8:	0025c603          	lbu	a2,2(a1)
    800081fc:	00200713          	li	a4,2
    80008200:	00c78123          	sb	a2,2(a5)
    80008204:	02e68e63          	beq	a3,a4,80008240 <__memmove+0xfc>
    80008208:	0035c603          	lbu	a2,3(a1)
    8000820c:	00300713          	li	a4,3
    80008210:	00c781a3          	sb	a2,3(a5)
    80008214:	02e68663          	beq	a3,a4,80008240 <__memmove+0xfc>
    80008218:	0045c603          	lbu	a2,4(a1)
    8000821c:	00400713          	li	a4,4
    80008220:	00c78223          	sb	a2,4(a5)
    80008224:	00e68e63          	beq	a3,a4,80008240 <__memmove+0xfc>
    80008228:	0055c603          	lbu	a2,5(a1)
    8000822c:	00500713          	li	a4,5
    80008230:	00c782a3          	sb	a2,5(a5)
    80008234:	00e68663          	beq	a3,a4,80008240 <__memmove+0xfc>
    80008238:	0065c703          	lbu	a4,6(a1)
    8000823c:	00e78323          	sb	a4,6(a5)
    80008240:	00813403          	ld	s0,8(sp)
    80008244:	01010113          	addi	sp,sp,16
    80008248:	00008067          	ret
    8000824c:	02061713          	slli	a4,a2,0x20
    80008250:	02075713          	srli	a4,a4,0x20
    80008254:	00e587b3          	add	a5,a1,a4
    80008258:	f0f574e3          	bgeu	a0,a5,80008160 <__memmove+0x1c>
    8000825c:	02069613          	slli	a2,a3,0x20
    80008260:	02065613          	srli	a2,a2,0x20
    80008264:	fff64613          	not	a2,a2
    80008268:	00e50733          	add	a4,a0,a4
    8000826c:	00c78633          	add	a2,a5,a2
    80008270:	fff7c683          	lbu	a3,-1(a5)
    80008274:	fff78793          	addi	a5,a5,-1
    80008278:	fff70713          	addi	a4,a4,-1
    8000827c:	00d70023          	sb	a3,0(a4)
    80008280:	fec798e3          	bne	a5,a2,80008270 <__memmove+0x12c>
    80008284:	00813403          	ld	s0,8(sp)
    80008288:	01010113          	addi	sp,sp,16
    8000828c:	00008067          	ret
    80008290:	02069713          	slli	a4,a3,0x20
    80008294:	02075713          	srli	a4,a4,0x20
    80008298:	00170713          	addi	a4,a4,1
    8000829c:	00e50733          	add	a4,a0,a4
    800082a0:	00050793          	mv	a5,a0
    800082a4:	0005c683          	lbu	a3,0(a1)
    800082a8:	00178793          	addi	a5,a5,1
    800082ac:	00158593          	addi	a1,a1,1
    800082b0:	fed78fa3          	sb	a3,-1(a5)
    800082b4:	fee798e3          	bne	a5,a4,800082a4 <__memmove+0x160>
    800082b8:	f89ff06f          	j	80008240 <__memmove+0xfc>

00000000800082bc <__putc>:
    800082bc:	fe010113          	addi	sp,sp,-32
    800082c0:	00813823          	sd	s0,16(sp)
    800082c4:	00113c23          	sd	ra,24(sp)
    800082c8:	02010413          	addi	s0,sp,32
    800082cc:	00050793          	mv	a5,a0
    800082d0:	fef40593          	addi	a1,s0,-17
    800082d4:	00100613          	li	a2,1
    800082d8:	00000513          	li	a0,0
    800082dc:	fef407a3          	sb	a5,-17(s0)
    800082e0:	fffff097          	auipc	ra,0xfffff
    800082e4:	b3c080e7          	jalr	-1220(ra) # 80006e1c <console_write>
    800082e8:	01813083          	ld	ra,24(sp)
    800082ec:	01013403          	ld	s0,16(sp)
    800082f0:	02010113          	addi	sp,sp,32
    800082f4:	00008067          	ret

00000000800082f8 <__getc>:
    800082f8:	fe010113          	addi	sp,sp,-32
    800082fc:	00813823          	sd	s0,16(sp)
    80008300:	00113c23          	sd	ra,24(sp)
    80008304:	02010413          	addi	s0,sp,32
    80008308:	fe840593          	addi	a1,s0,-24
    8000830c:	00100613          	li	a2,1
    80008310:	00000513          	li	a0,0
    80008314:	fffff097          	auipc	ra,0xfffff
    80008318:	ae8080e7          	jalr	-1304(ra) # 80006dfc <console_read>
    8000831c:	fe844503          	lbu	a0,-24(s0)
    80008320:	01813083          	ld	ra,24(sp)
    80008324:	01013403          	ld	s0,16(sp)
    80008328:	02010113          	addi	sp,sp,32
    8000832c:	00008067          	ret

0000000080008330 <console_handler>:
    80008330:	fe010113          	addi	sp,sp,-32
    80008334:	00813823          	sd	s0,16(sp)
    80008338:	00113c23          	sd	ra,24(sp)
    8000833c:	00913423          	sd	s1,8(sp)
    80008340:	02010413          	addi	s0,sp,32
    80008344:	14202773          	csrr	a4,scause
    80008348:	100027f3          	csrr	a5,sstatus
    8000834c:	0027f793          	andi	a5,a5,2
    80008350:	06079e63          	bnez	a5,800083cc <console_handler+0x9c>
    80008354:	00074c63          	bltz	a4,8000836c <console_handler+0x3c>
    80008358:	01813083          	ld	ra,24(sp)
    8000835c:	01013403          	ld	s0,16(sp)
    80008360:	00813483          	ld	s1,8(sp)
    80008364:	02010113          	addi	sp,sp,32
    80008368:	00008067          	ret
    8000836c:	0ff77713          	andi	a4,a4,255
    80008370:	00900793          	li	a5,9
    80008374:	fef712e3          	bne	a4,a5,80008358 <console_handler+0x28>
    80008378:	ffffe097          	auipc	ra,0xffffe
    8000837c:	6dc080e7          	jalr	1756(ra) # 80006a54 <plic_claim>
    80008380:	00a00793          	li	a5,10
    80008384:	00050493          	mv	s1,a0
    80008388:	02f50c63          	beq	a0,a5,800083c0 <console_handler+0x90>
    8000838c:	fc0506e3          	beqz	a0,80008358 <console_handler+0x28>
    80008390:	00050593          	mv	a1,a0
    80008394:	00001517          	auipc	a0,0x1
    80008398:	26450513          	addi	a0,a0,612 # 800095f8 <_ZL6digits+0xf8>
    8000839c:	fffff097          	auipc	ra,0xfffff
    800083a0:	afc080e7          	jalr	-1284(ra) # 80006e98 <__printf>
    800083a4:	01013403          	ld	s0,16(sp)
    800083a8:	01813083          	ld	ra,24(sp)
    800083ac:	00048513          	mv	a0,s1
    800083b0:	00813483          	ld	s1,8(sp)
    800083b4:	02010113          	addi	sp,sp,32
    800083b8:	ffffe317          	auipc	t1,0xffffe
    800083bc:	6d430067          	jr	1748(t1) # 80006a8c <plic_complete>
    800083c0:	fffff097          	auipc	ra,0xfffff
    800083c4:	3e0080e7          	jalr	992(ra) # 800077a0 <uartintr>
    800083c8:	fddff06f          	j	800083a4 <console_handler+0x74>
    800083cc:	00001517          	auipc	a0,0x1
    800083d0:	32c50513          	addi	a0,a0,812 # 800096f8 <digits+0x78>
    800083d4:	fffff097          	auipc	ra,0xfffff
    800083d8:	a68080e7          	jalr	-1432(ra) # 80006e3c <panic>
	...
