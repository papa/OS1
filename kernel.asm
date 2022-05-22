
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	7b013103          	ld	sp,1968(sp) # 8000a7b0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	591050ef          	jal	ra,80005dac <start>

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
    80001080:	468020ef          	jal	ra,800034e8 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001470:	f44080e7          	jalr	-188(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
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
    800014a0:	f14080e7          	jalr	-236(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
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
    800014c0:	ef4080e7          	jalr	-268(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	f58080e7          	jalr	-168(ra) # 80003420 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800014d0:	00007517          	auipc	a0,0x7
    800014d4:	ca850513          	addi	a0,a0,-856 # 80008178 <CONSOLE_STATUS+0x168>
    800014d8:	00002097          	auipc	ra,0x2
    800014dc:	ed8080e7          	jalr	-296(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
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
    80001538:	e7c080e7          	jalr	-388(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
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
    80001558:	e5c080e7          	jalr	-420(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000155c:	00048513          	mv	a0,s1
    80001560:	00002097          	auipc	ra,0x2
    80001564:	ec0080e7          	jalr	-320(ra) # 80003420 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001568:	00007517          	auipc	a0,0x7
    8000156c:	c1050513          	addi	a0,a0,-1008 # 80008178 <CONSOLE_STATUS+0x168>
    80001570:	00002097          	auipc	ra,0x2
    80001574:	e40080e7          	jalr	-448(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
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
    800015d4:	00007517          	auipc	a0,0x7
    800015d8:	a6c50513          	addi	a0,a0,-1428 # 80008040 <CONSOLE_STATUS+0x30>
    800015dc:	00002097          	auipc	ra,0x2
    800015e0:	dd4080e7          	jalr	-556(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800015e4:	00048513          	mv	a0,s1
    800015e8:	00002097          	auipc	ra,0x2
    800015ec:	e38080e7          	jalr	-456(ra) # 80003420 <_ZN5Riscv12printIntegerEm>
    for(int i = 0 ; i < 10000;i++)
    800015f0:	0014849b          	addiw	s1,s1,1
    800015f4:	fd5ff06f          	j	800015c8 <_ZN12TestPeriodic18periodicActivationEv+0x18>
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
    80001620:	00007517          	auipc	a0,0x7
    80001624:	a2850513          	addi	a0,a0,-1496 # 80008048 <CONSOLE_STATUS+0x38>
    80001628:	00002097          	auipc	ra,0x2
    8000162c:	d88080e7          	jalr	-632(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
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
    8000164c:	00007517          	auipc	a0,0x7
    80001650:	a1450513          	addi	a0,a0,-1516 # 80008060 <CONSOLE_STATUS+0x50>
    80001654:	00002097          	auipc	ra,0x2
    80001658:	d5c080e7          	jalr	-676(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000165c:	00048513          	mv	a0,s1
    80001660:	00002097          	auipc	ra,0x2
    80001664:	dc0080e7          	jalr	-576(ra) # 80003420 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001668:	00007517          	auipc	a0,0x7
    8000166c:	b1050513          	addi	a0,a0,-1264 # 80008178 <CONSOLE_STATUS+0x168>
    80001670:	00002097          	auipc	ra,0x2
    80001674:	d40080e7          	jalr	-704(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
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

00000000800016b8 <_Z2f1Pv>:
{
    800016b8:	fe010113          	addi	sp,sp,-32
    800016bc:	00113c23          	sd	ra,24(sp)
    800016c0:	00813823          	sd	s0,16(sp)
    800016c4:	00913423          	sd	s1,8(sp)
    800016c8:	01213023          	sd	s2,0(sp)
    800016cc:	02010413          	addi	s0,sp,32
    Riscv::printString("f1 started\n");
    800016d0:	00007517          	auipc	a0,0x7
    800016d4:	99850513          	addi	a0,a0,-1640 # 80008068 <CONSOLE_STATUS+0x58>
    800016d8:	00002097          	auipc	ra,0x2
    800016dc:	cd8080e7          	jalr	-808(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    int x = 0;
    800016e0:	00000493          	li	s1,0
    800016e4:	00c0006f          	j	800016f0 <_Z2f1Pv+0x38>
            thread_exit();
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	c5c080e7          	jalr	-932(ra) # 80001344 <thread_exit>
        x++;
    800016f0:	0014849b          	addiw	s1,s1,1
        mutex->wait();
    800016f4:	00009917          	auipc	s2,0x9
    800016f8:	11c90913          	addi	s2,s2,284 # 8000a810 <_ZL5mutex>
    800016fc:	00093503          	ld	a0,0(s2)
    80001700:	00002097          	auipc	ra,0x2
    80001704:	a30080e7          	jalr	-1488(ra) # 80003130 <_ZN9Semaphore4waitEv>
        mutex->signal();
    80001708:	00093503          	ld	a0,0(s2)
    8000170c:	00002097          	auipc	ra,0x2
    80001710:	aa8080e7          	jalr	-1368(ra) # 800031b4 <_ZN9Semaphore6signalEv>
        if(x < 50000)
    80001714:	0000c7b7          	lui	a5,0xc
    80001718:	34f78793          	addi	a5,a5,847 # c34f <_entry-0x7fff3cb1>
    8000171c:	fc97c6e3          	blt	a5,s1,800016e8 <_Z2f1Pv+0x30>
            thread_dispatch();
    80001720:	00000097          	auipc	ra,0x0
    80001724:	c04080e7          	jalr	-1020(ra) # 80001324 <thread_dispatch>
    80001728:	fc9ff06f          	j	800016f0 <_Z2f1Pv+0x38>

000000008000172c <_Z2f2Pv>:
{
    8000172c:	fe010113          	addi	sp,sp,-32
    80001730:	00113c23          	sd	ra,24(sp)
    80001734:	00813823          	sd	s0,16(sp)
    80001738:	00913423          	sd	s1,8(sp)
    8000173c:	02010413          	addi	s0,sp,32
    Riscv::printString("f2 started\n");
    80001740:	00007517          	auipc	a0,0x7
    80001744:	93850513          	addi	a0,a0,-1736 # 80008078 <CONSOLE_STATUS+0x68>
    80001748:	00002097          	auipc	ra,0x2
    8000174c:	c68080e7          	jalr	-920(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
        mutex->wait();
    80001750:	00009497          	auipc	s1,0x9
    80001754:	0c048493          	addi	s1,s1,192 # 8000a810 <_ZL5mutex>
    80001758:	0004b503          	ld	a0,0(s1)
    8000175c:	00002097          	auipc	ra,0x2
    80001760:	9d4080e7          	jalr	-1580(ra) # 80003130 <_ZN9Semaphore4waitEv>
        mutex->signal();
    80001764:	0004b503          	ld	a0,0(s1)
    80001768:	00002097          	auipc	ra,0x2
    8000176c:	a4c080e7          	jalr	-1460(ra) # 800031b4 <_ZN9Semaphore6signalEv>
            thread_dispatch();
    80001770:	00000097          	auipc	ra,0x0
    80001774:	bb4080e7          	jalr	-1100(ra) # 80001324 <thread_dispatch>
    80001778:	fd9ff06f          	j	80001750 <_Z2f2Pv+0x24>

000000008000177c <_Z4f1_2Pv>:
{
    8000177c:	fe010113          	addi	sp,sp,-32
    80001780:	00113c23          	sd	ra,24(sp)
    80001784:	00813823          	sd	s0,16(sp)
    80001788:	00913423          	sd	s1,8(sp)
    8000178c:	01213023          	sd	s2,0(sp)
    80001790:	02010413          	addi	s0,sp,32
    Riscv::printString("f1_2 started\n");
    80001794:	00007517          	auipc	a0,0x7
    80001798:	8f450513          	addi	a0,a0,-1804 # 80008088 <CONSOLE_STATUS+0x78>
    8000179c:	00002097          	auipc	ra,0x2
    800017a0:	c14080e7          	jalr	-1004(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    int x = 0;
    800017a4:	00000493          	li	s1,0
    800017a8:	00c0006f          	j	800017b4 <_Z4f1_2Pv+0x38>
            thread_exit();
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	b98080e7          	jalr	-1128(ra) # 80001344 <thread_exit>
        x++;
    800017b4:	0014849b          	addiw	s1,s1,1
        s1->wait();
    800017b8:	00009917          	auipc	s2,0x9
    800017bc:	05890913          	addi	s2,s2,88 # 8000a810 <_ZL5mutex>
    800017c0:	00893503          	ld	a0,8(s2)
    800017c4:	00002097          	auipc	ra,0x2
    800017c8:	96c080e7          	jalr	-1684(ra) # 80003130 <_ZN9Semaphore4waitEv>
        __putc('1');
    800017cc:	03100513          	li	a0,49
    800017d0:	00006097          	auipc	ra,0x6
    800017d4:	69c080e7          	jalr	1692(ra) # 80007e6c <__putc>
        __putc('\n');
    800017d8:	00a00513          	li	a0,10
    800017dc:	00006097          	auipc	ra,0x6
    800017e0:	690080e7          	jalr	1680(ra) # 80007e6c <__putc>
        s2->signal();
    800017e4:	01093503          	ld	a0,16(s2)
    800017e8:	00002097          	auipc	ra,0x2
    800017ec:	9cc080e7          	jalr	-1588(ra) # 800031b4 <_ZN9Semaphore6signalEv>
        if(x < 5000)
    800017f0:	000017b7          	lui	a5,0x1
    800017f4:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    800017f8:	fa97cae3          	blt	a5,s1,800017ac <_Z4f1_2Pv+0x30>
            thread_dispatch();
    800017fc:	00000097          	auipc	ra,0x0
    80001800:	b28080e7          	jalr	-1240(ra) # 80001324 <thread_dispatch>
    80001804:	fb1ff06f          	j	800017b4 <_Z4f1_2Pv+0x38>

0000000080001808 <_Z4f2_2Pv>:
{
    80001808:	fe010113          	addi	sp,sp,-32
    8000180c:	00113c23          	sd	ra,24(sp)
    80001810:	00813823          	sd	s0,16(sp)
    80001814:	00913423          	sd	s1,8(sp)
    80001818:	01213023          	sd	s2,0(sp)
    8000181c:	02010413          	addi	s0,sp,32
    Riscv::printString("f2_2 started\n");
    80001820:	00007517          	auipc	a0,0x7
    80001824:	87850513          	addi	a0,a0,-1928 # 80008098 <CONSOLE_STATUS+0x88>
    80001828:	00002097          	auipc	ra,0x2
    8000182c:	b88080e7          	jalr	-1144(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    int x = 0;
    80001830:	00000493          	li	s1,0
    80001834:	00c0006f          	j	80001840 <_Z4f2_2Pv+0x38>
            thread_exit();
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	b0c080e7          	jalr	-1268(ra) # 80001344 <thread_exit>
        x++;
    80001840:	0014849b          	addiw	s1,s1,1
        s2->wait();
    80001844:	00009917          	auipc	s2,0x9
    80001848:	fcc90913          	addi	s2,s2,-52 # 8000a810 <_ZL5mutex>
    8000184c:	01093503          	ld	a0,16(s2)
    80001850:	00002097          	auipc	ra,0x2
    80001854:	8e0080e7          	jalr	-1824(ra) # 80003130 <_ZN9Semaphore4waitEv>
        __putc('2');
    80001858:	03200513          	li	a0,50
    8000185c:	00006097          	auipc	ra,0x6
    80001860:	610080e7          	jalr	1552(ra) # 80007e6c <__putc>
        __putc('\n');
    80001864:	00a00513          	li	a0,10
    80001868:	00006097          	auipc	ra,0x6
    8000186c:	604080e7          	jalr	1540(ra) # 80007e6c <__putc>
        s3->signal();
    80001870:	01893503          	ld	a0,24(s2)
    80001874:	00002097          	auipc	ra,0x2
    80001878:	940080e7          	jalr	-1728(ra) # 800031b4 <_ZN9Semaphore6signalEv>
        if(x < 5000)
    8000187c:	000017b7          	lui	a5,0x1
    80001880:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80001884:	fa97cae3          	blt	a5,s1,80001838 <_Z4f2_2Pv+0x30>
            thread_dispatch();
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	a9c080e7          	jalr	-1380(ra) # 80001324 <thread_dispatch>
    80001890:	fb1ff06f          	j	80001840 <_Z4f2_2Pv+0x38>

0000000080001894 <_Z4f3_2Pv>:
{
    80001894:	fe010113          	addi	sp,sp,-32
    80001898:	00113c23          	sd	ra,24(sp)
    8000189c:	00813823          	sd	s0,16(sp)
    800018a0:	00913423          	sd	s1,8(sp)
    800018a4:	01213023          	sd	s2,0(sp)
    800018a8:	02010413          	addi	s0,sp,32
    Riscv::printString("f3_2 started\n");
    800018ac:	00006517          	auipc	a0,0x6
    800018b0:	7fc50513          	addi	a0,a0,2044 # 800080a8 <CONSOLE_STATUS+0x98>
    800018b4:	00002097          	auipc	ra,0x2
    800018b8:	afc080e7          	jalr	-1284(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    int x = 0;
    800018bc:	00000493          	li	s1,0
    800018c0:	00c0006f          	j	800018cc <_Z4f3_2Pv+0x38>
            thread_exit();
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	a80080e7          	jalr	-1408(ra) # 80001344 <thread_exit>
        x++;
    800018cc:	0014849b          	addiw	s1,s1,1
        s3->wait();
    800018d0:	00009917          	auipc	s2,0x9
    800018d4:	f4090913          	addi	s2,s2,-192 # 8000a810 <_ZL5mutex>
    800018d8:	01893503          	ld	a0,24(s2)
    800018dc:	00002097          	auipc	ra,0x2
    800018e0:	854080e7          	jalr	-1964(ra) # 80003130 <_ZN9Semaphore4waitEv>
        __putc('3');
    800018e4:	03300513          	li	a0,51
    800018e8:	00006097          	auipc	ra,0x6
    800018ec:	584080e7          	jalr	1412(ra) # 80007e6c <__putc>
        __putc('\n');
    800018f0:	00a00513          	li	a0,10
    800018f4:	00006097          	auipc	ra,0x6
    800018f8:	578080e7          	jalr	1400(ra) # 80007e6c <__putc>
        s1->signal();
    800018fc:	00893503          	ld	a0,8(s2)
    80001900:	00002097          	auipc	ra,0x2
    80001904:	8b4080e7          	jalr	-1868(ra) # 800031b4 <_ZN9Semaphore6signalEv>
        if(x < 5000)
    80001908:	000017b7          	lui	a5,0x1
    8000190c:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80001910:	fa97cae3          	blt	a5,s1,800018c4 <_Z4f3_2Pv+0x30>
            thread_dispatch();
    80001914:	00000097          	auipc	ra,0x0
    80001918:	a10080e7          	jalr	-1520(ra) # 80001324 <thread_dispatch>
    8000191c:	fb1ff06f          	j	800018cc <_Z4f3_2Pv+0x38>

0000000080001920 <_Z11threadTest1v>:
{
    80001920:	fe010113          	addi	sp,sp,-32
    80001924:	00113c23          	sd	ra,24(sp)
    80001928:	00813823          	sd	s0,16(sp)
    8000192c:	00913423          	sd	s1,8(sp)
    80001930:	01213023          	sd	s2,0(sp)
    80001934:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    80001938:	02000513          	li	a0,32
    8000193c:	00001097          	auipc	ra,0x1
    80001940:	5f0080e7          	jalr	1520(ra) # 80002f2c <_Znwm>
    80001944:	00050493          	mv	s1,a0
    80001948:	00000613          	li	a2,0
    8000194c:	00000597          	auipc	a1,0x0
    80001950:	b3458593          	addi	a1,a1,-1228 # 80001480 <_Z15thread1FunctionPv>
    80001954:	00001097          	auipc	ra,0x1
    80001958:	774080e7          	jalr	1908(ra) # 800030c8 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    8000195c:	00048513          	mv	a0,s1
    80001960:	00001097          	auipc	ra,0x1
    80001964:	69c080e7          	jalr	1692(ra) # 80002ffc <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001968:	02000513          	li	a0,32
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	5c0080e7          	jalr	1472(ra) # 80002f2c <_Znwm>
    80001974:	00050913          	mv	s2,a0
    80001978:	00000613          	li	a2,0
    8000197c:	00000597          	auipc	a1,0x0
    80001980:	b9c58593          	addi	a1,a1,-1124 # 80001518 <_Z15thread2FunctionPv>
    80001984:	00001097          	auipc	ra,0x1
    80001988:	744080e7          	jalr	1860(ra) # 800030c8 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    8000198c:	00090513          	mv	a0,s2
    80001990:	00001097          	auipc	ra,0x1
    80001994:	66c080e7          	jalr	1644(ra) # 80002ffc <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001998:	00002097          	auipc	ra,0x2
    8000199c:	990080e7          	jalr	-1648(ra) # 80003328 <_ZN5Riscv16enableInterruptsEv>
    800019a0:	01c0006f          	j	800019bc <_Z11threadTest1v+0x9c>
        Riscv::printString("Main thread\n");
    800019a4:	00006517          	auipc	a0,0x6
    800019a8:	71450513          	addi	a0,a0,1812 # 800080b8 <CONSOLE_STATUS+0xa8>
    800019ac:	00002097          	auipc	ra,0x2
    800019b0:	a04080e7          	jalr	-1532(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
        thread_dispatch();
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	970080e7          	jalr	-1680(ra) # 80001324 <thread_dispatch>
    while(((PCB*)(t1->myHandle))->getState() != PCB::FINISHED || ((PCB*)(t2->myHandle))->getState()!= PCB::FINISHED)
    800019bc:	0084b783          	ld	a5,8(s1)

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800019c0:	0387a703          	lw	a4,56(a5)
    800019c4:	00300793          	li	a5,3
    800019c8:	fcf71ee3          	bne	a4,a5,800019a4 <_Z11threadTest1v+0x84>
    800019cc:	00893783          	ld	a5,8(s2)
    800019d0:	0387a703          	lw	a4,56(a5)
    800019d4:	00300793          	li	a5,3
    800019d8:	fcf716e3          	bne	a4,a5,800019a4 <_Z11threadTest1v+0x84>
    Riscv::printString("End...\n");
    800019dc:	00006517          	auipc	a0,0x6
    800019e0:	6ec50513          	addi	a0,a0,1772 # 800080c8 <CONSOLE_STATUS+0xb8>
    800019e4:	00002097          	auipc	ra,0x2
    800019e8:	9cc080e7          	jalr	-1588(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    800019ec:	00002097          	auipc	ra,0x2
    800019f0:	95c080e7          	jalr	-1700(ra) # 80003348 <_ZN5Riscv17disableInterruptsEv>
}
    800019f4:	01813083          	ld	ra,24(sp)
    800019f8:	01013403          	ld	s0,16(sp)
    800019fc:	00813483          	ld	s1,8(sp)
    80001a00:	00013903          	ld	s2,0(sp)
    80001a04:	02010113          	addi	sp,sp,32
    80001a08:	00008067          	ret
    80001a0c:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a10:	00048513          	mv	a0,s1
    80001a14:	00001097          	auipc	ra,0x1
    80001a18:	540080e7          	jalr	1344(ra) # 80002f54 <_ZdlPv>
    80001a1c:	00090513          	mv	a0,s2
    80001a20:	0000a097          	auipc	ra,0xa
    80001a24:	f68080e7          	jalr	-152(ra) # 8000b988 <_Unwind_Resume>
    80001a28:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    80001a2c:	00090513          	mv	a0,s2
    80001a30:	00001097          	auipc	ra,0x1
    80001a34:	524080e7          	jalr	1316(ra) # 80002f54 <_ZdlPv>
    80001a38:	00048513          	mv	a0,s1
    80001a3c:	0000a097          	auipc	ra,0xa
    80001a40:	f4c080e7          	jalr	-180(ra) # 8000b988 <_Unwind_Resume>

0000000080001a44 <_Z11threadTest2v>:
{
    80001a44:	fe010113          	addi	sp,sp,-32
    80001a48:	00113c23          	sd	ra,24(sp)
    80001a4c:	00813823          	sd	s0,16(sp)
    80001a50:	00913423          	sd	s1,8(sp)
    80001a54:	01213023          	sd	s2,0(sp)
    80001a58:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    80001a5c:	02000513          	li	a0,32
    80001a60:	00001097          	auipc	ra,0x1
    80001a64:	4cc080e7          	jalr	1228(ra) # 80002f2c <_Znwm>
    80001a68:	00050493          	mv	s1,a0
    80001a6c:	00000613          	li	a2,0
    80001a70:	00000597          	auipc	a1,0x0
    80001a74:	9e458593          	addi	a1,a1,-1564 # 80001454 <_Z4idlePv>
    80001a78:	00001097          	auipc	ra,0x1
    80001a7c:	650080e7          	jalr	1616(ra) # 800030c8 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001a80:	00048513          	mv	a0,s1
    80001a84:	00001097          	auipc	ra,0x1
    80001a88:	578080e7          	jalr	1400(ra) # 80002ffc <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a8c:	02000513          	li	a0,32
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	49c080e7          	jalr	1180(ra) # 80002f2c <_Znwm>
    80001a98:	00050913          	mv	s2,a0
    80001a9c:	00000613          	li	a2,0
    80001aa0:	00000597          	auipc	a1,0x0
    80001aa4:	9e058593          	addi	a1,a1,-1568 # 80001480 <_Z15thread1FunctionPv>
    80001aa8:	00001097          	auipc	ra,0x1
    80001aac:	620080e7          	jalr	1568(ra) # 800030c8 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001ab0:	00090513          	mv	a0,s2
    80001ab4:	00001097          	auipc	ra,0x1
    80001ab8:	548080e7          	jalr	1352(ra) # 80002ffc <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001abc:	02000513          	li	a0,32
    80001ac0:	00001097          	auipc	ra,0x1
    80001ac4:	46c080e7          	jalr	1132(ra) # 80002f2c <_Znwm>
    80001ac8:	00050913          	mv	s2,a0
    80001acc:	00000613          	li	a2,0
    80001ad0:	00000597          	auipc	a1,0x0
    80001ad4:	b3c58593          	addi	a1,a1,-1220 # 8000160c <_Z20thread2FunctionTest2Pv>
    80001ad8:	00001097          	auipc	ra,0x1
    80001adc:	5f0080e7          	jalr	1520(ra) # 800030c8 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001ae0:	00090513          	mv	a0,s2
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	518080e7          	jalr	1304(ra) # 80002ffc <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001aec:	00002097          	auipc	ra,0x2
    80001af0:	83c080e7          	jalr	-1988(ra) # 80003328 <_ZN5Riscv16enableInterruptsEv>
    while(((PCB*)idleThread->myHandle)->getState() != PCB::FINISHED);
    80001af4:	0084b783          	ld	a5,8(s1)
    80001af8:	0387a703          	lw	a4,56(a5)
    80001afc:	00300793          	li	a5,3
    80001b00:	fef71ae3          	bne	a4,a5,80001af4 <_Z11threadTest2v+0xb0>
    Riscv::printString("End...\n");
    80001b04:	00006517          	auipc	a0,0x6
    80001b08:	5c450513          	addi	a0,a0,1476 # 800080c8 <CONSOLE_STATUS+0xb8>
    80001b0c:	00002097          	auipc	ra,0x2
    80001b10:	8a4080e7          	jalr	-1884(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001b14:	00002097          	auipc	ra,0x2
    80001b18:	834080e7          	jalr	-1996(ra) # 80003348 <_ZN5Riscv17disableInterruptsEv>
}
    80001b1c:	01813083          	ld	ra,24(sp)
    80001b20:	01013403          	ld	s0,16(sp)
    80001b24:	00813483          	ld	s1,8(sp)
    80001b28:	00013903          	ld	s2,0(sp)
    80001b2c:	02010113          	addi	sp,sp,32
    80001b30:	00008067          	ret
    80001b34:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    80001b38:	00048513          	mv	a0,s1
    80001b3c:	00001097          	auipc	ra,0x1
    80001b40:	418080e7          	jalr	1048(ra) # 80002f54 <_ZdlPv>
    80001b44:	00090513          	mv	a0,s2
    80001b48:	0000a097          	auipc	ra,0xa
    80001b4c:	e40080e7          	jalr	-448(ra) # 8000b988 <_Unwind_Resume>
    80001b50:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001b54:	00090513          	mv	a0,s2
    80001b58:	00001097          	auipc	ra,0x1
    80001b5c:	3fc080e7          	jalr	1020(ra) # 80002f54 <_ZdlPv>
    80001b60:	00048513          	mv	a0,s1
    80001b64:	0000a097          	auipc	ra,0xa
    80001b68:	e24080e7          	jalr	-476(ra) # 8000b988 <_Unwind_Resume>
    80001b6c:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001b70:	00090513          	mv	a0,s2
    80001b74:	00001097          	auipc	ra,0x1
    80001b78:	3e0080e7          	jalr	992(ra) # 80002f54 <_ZdlPv>
    80001b7c:	00048513          	mv	a0,s1
    80001b80:	0000a097          	auipc	ra,0xa
    80001b84:	e08080e7          	jalr	-504(ra) # 8000b988 <_Unwind_Resume>

0000000080001b88 <_Z10mallocFreev>:
{
    80001b88:	cc010113          	addi	sp,sp,-832
    80001b8c:	32113c23          	sd	ra,824(sp)
    80001b90:	32813823          	sd	s0,816(sp)
    80001b94:	32913423          	sd	s1,808(sp)
    80001b98:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    80001b9c:	00006517          	auipc	a0,0x6
    80001ba0:	53450513          	addi	a0,a0,1332 # 800080d0 <CONSOLE_STATUS+0xc0>
    80001ba4:	00002097          	auipc	ra,0x2
    80001ba8:	80c080e7          	jalr	-2036(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001bac:	00000493          	li	s1,0
    80001bb0:	0080006f          	j	80001bb8 <_Z10mallocFreev+0x30>
    80001bb4:	0014849b          	addiw	s1,s1,1
    80001bb8:	06300793          	li	a5,99
    80001bbc:	0497c463          	blt	a5,s1,80001c04 <_Z10mallocFreev+0x7c>
        addrs[i] = mem_alloc(100);
    80001bc0:	06400513          	li	a0,100
    80001bc4:	fffff097          	auipc	ra,0xfffff
    80001bc8:	684080e7          	jalr	1668(ra) # 80001248 <mem_alloc>
    80001bcc:	00349793          	slli	a5,s1,0x3
    80001bd0:	fe040713          	addi	a4,s0,-32
    80001bd4:	00f707b3          	add	a5,a4,a5
    80001bd8:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001bdc:	fc051ce3          	bnez	a0,80001bb4 <_Z10mallocFreev+0x2c>
            Riscv::printString("not OK\n");
    80001be0:	00006517          	auipc	a0,0x6
    80001be4:	50050513          	addi	a0,a0,1280 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001be8:	00001097          	auipc	ra,0x1
    80001bec:	7c8080e7          	jalr	1992(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
}
    80001bf0:	33813083          	ld	ra,824(sp)
    80001bf4:	33013403          	ld	s0,816(sp)
    80001bf8:	32813483          	ld	s1,808(sp)
    80001bfc:	34010113          	addi	sp,sp,832
    80001c00:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001c04:	00000493          	li	s1,0
    80001c08:	06300793          	li	a5,99
    80001c0c:	0297ce63          	blt	a5,s1,80001c48 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001c10:	00349793          	slli	a5,s1,0x3
    80001c14:	fe040713          	addi	a4,s0,-32
    80001c18:	00f707b3          	add	a5,a4,a5
    80001c1c:	ce07b503          	ld	a0,-800(a5)
    80001c20:	fffff097          	auipc	ra,0xfffff
    80001c24:	658080e7          	jalr	1624(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001c28:	00051663          	bnez	a0,80001c34 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001c2c:	0024849b          	addiw	s1,s1,2
    80001c30:	fd9ff06f          	j	80001c08 <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    80001c34:	00006517          	auipc	a0,0x6
    80001c38:	4ac50513          	addi	a0,a0,1196 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001c3c:	00001097          	auipc	ra,0x1
    80001c40:	774080e7          	jalr	1908(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
            return;
    80001c44:	fadff06f          	j	80001bf0 <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001c48:	00000493          	li	s1,0
    80001c4c:	0080006f          	j	80001c54 <_Z10mallocFreev+0xcc>
    80001c50:	0024849b          	addiw	s1,s1,2
    80001c54:	06300793          	li	a5,99
    80001c58:	0297cc63          	blt	a5,s1,80001c90 <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001c5c:	01400513          	li	a0,20
    80001c60:	fffff097          	auipc	ra,0xfffff
    80001c64:	5e8080e7          	jalr	1512(ra) # 80001248 <mem_alloc>
    80001c68:	00349793          	slli	a5,s1,0x3
    80001c6c:	fe040713          	addi	a4,s0,-32
    80001c70:	00f707b3          	add	a5,a4,a5
    80001c74:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001c78:	fc051ce3          	bnez	a0,80001c50 <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    80001c7c:	00006517          	auipc	a0,0x6
    80001c80:	46450513          	addi	a0,a0,1124 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001c84:	00001097          	auipc	ra,0x1
    80001c88:	72c080e7          	jalr	1836(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
            return;
    80001c8c:	f65ff06f          	j	80001bf0 <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001c90:	00000493          	li	s1,0
    80001c94:	06300793          	li	a5,99
    80001c98:	0297ce63          	blt	a5,s1,80001cd4 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001c9c:	00349793          	slli	a5,s1,0x3
    80001ca0:	fe040713          	addi	a4,s0,-32
    80001ca4:	00f707b3          	add	a5,a4,a5
    80001ca8:	ce07b503          	ld	a0,-800(a5)
    80001cac:	fffff097          	auipc	ra,0xfffff
    80001cb0:	5cc080e7          	jalr	1484(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001cb4:	00051663          	bnez	a0,80001cc0 <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001cb8:	0014849b          	addiw	s1,s1,1
    80001cbc:	fd9ff06f          	j	80001c94 <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    80001cc0:	00006517          	auipc	a0,0x6
    80001cc4:	42050513          	addi	a0,a0,1056 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001cc8:	00001097          	auipc	ra,0x1
    80001ccc:	6e8080e7          	jalr	1768(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
            return;
    80001cd0:	f21ff06f          	j	80001bf0 <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001cd4:	00006517          	auipc	a0,0x6
    80001cd8:	41450513          	addi	a0,a0,1044 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001cdc:	00001097          	auipc	ra,0x1
    80001ce0:	6d4080e7          	jalr	1748(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    80001ce4:	f0dff06f          	j	80001bf0 <_Z10mallocFreev+0x68>

0000000080001ce8 <_Z9bigMallocv>:
{
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00113423          	sd	ra,8(sp)
    80001cf0:	00813023          	sd	s0,0(sp)
    80001cf4:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    80001cf8:	00006517          	auipc	a0,0x6
    80001cfc:	3f850513          	addi	a0,a0,1016 # 800080f0 <CONSOLE_STATUS+0xe0>
    80001d00:	00001097          	auipc	ra,0x1
    80001d04:	6b0080e7          	jalr	1712(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001d08:	00009797          	auipc	a5,0x9
    80001d0c:	ab87b783          	ld	a5,-1352(a5) # 8000a7c0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d10:	0007b503          	ld	a0,0(a5)
    80001d14:	00009797          	auipc	a5,0x9
    80001d18:	a847b783          	ld	a5,-1404(a5) # 8000a798 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001d1c:	0007b783          	ld	a5,0(a5)
    80001d20:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001d24:	06450513          	addi	a0,a0,100
    80001d28:	fffff097          	auipc	ra,0xfffff
    80001d2c:	520080e7          	jalr	1312(ra) # 80001248 <mem_alloc>
    if(p == 0)
    80001d30:	02050263          	beqz	a0,80001d54 <_Z9bigMallocv+0x6c>
        Riscv::printString("not OK\n");
    80001d34:	00006517          	auipc	a0,0x6
    80001d38:	3ac50513          	addi	a0,a0,940 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001d3c:	00001097          	auipc	ra,0x1
    80001d40:	674080e7          	jalr	1652(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
}
    80001d44:	00813083          	ld	ra,8(sp)
    80001d48:	00013403          	ld	s0,0(sp)
    80001d4c:	01010113          	addi	sp,sp,16
    80001d50:	00008067          	ret
        Riscv::printString("OK\n");
    80001d54:	00006517          	auipc	a0,0x6
    80001d58:	39450513          	addi	a0,a0,916 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001d5c:	00001097          	auipc	ra,0x1
    80001d60:	654080e7          	jalr	1620(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    80001d64:	fe1ff06f          	j	80001d44 <_Z9bigMallocv+0x5c>

0000000080001d68 <_Z17lotOfSmallMallocsv>:
{
    80001d68:	fd010113          	addi	sp,sp,-48
    80001d6c:	02113423          	sd	ra,40(sp)
    80001d70:	02813023          	sd	s0,32(sp)
    80001d74:	00913c23          	sd	s1,24(sp)
    80001d78:	01213823          	sd	s2,16(sp)
    80001d7c:	01313423          	sd	s3,8(sp)
    80001d80:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001d84:	00006517          	auipc	a0,0x6
    80001d88:	37c50513          	addi	a0,a0,892 # 80008100 <CONSOLE_STATUS+0xf0>
    80001d8c:	00001097          	auipc	ra,0x1
    80001d90:	624080e7          	jalr	1572(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < N;i++)
    80001d94:	00000493          	li	s1,0
    uint64 sum = 0;
    80001d98:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001d9c:	00000913          	li	s2,0
    80001da0:	0180006f          	j	80001db8 <_Z17lotOfSmallMallocsv+0x50>
        t->a = X;
    80001da4:	00a00793          	li	a5,10
    80001da8:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001dac:	00a98993          	addi	s3,s3,10
        cnt++;
    80001db0:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001db4:	00148493          	addi	s1,s1,1
    80001db8:	000027b7          	lui	a5,0x2
    80001dbc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001dc0:	0097ea63          	bltu	a5,s1,80001dd4 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001dc4:	00800513          	li	a0,8
    80001dc8:	fffff097          	auipc	ra,0xfffff
    80001dcc:	480080e7          	jalr	1152(ra) # 80001248 <mem_alloc>
        if(t == 0)
    80001dd0:	fc051ae3          	bnez	a0,80001da4 <_Z17lotOfSmallMallocsv+0x3c>
    Riscv::printInteger(cnt);
    80001dd4:	00090513          	mv	a0,s2
    80001dd8:	00001097          	auipc	ra,0x1
    80001ddc:	648080e7          	jalr	1608(ra) # 80003420 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001de0:	00006517          	auipc	a0,0x6
    80001de4:	39850513          	addi	a0,a0,920 # 80008178 <CONSOLE_STATUS+0x168>
    80001de8:	00001097          	auipc	ra,0x1
    80001dec:	5c8080e7          	jalr	1480(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001df0:	00291793          	slli	a5,s2,0x2
    80001df4:	01278933          	add	s2,a5,s2
    80001df8:	00191913          	slli	s2,s2,0x1
    80001dfc:	03390863          	beq	s2,s3,80001e2c <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001e00:	00006517          	auipc	a0,0x6
    80001e04:	2e050513          	addi	a0,a0,736 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001e08:	00001097          	auipc	ra,0x1
    80001e0c:	5a8080e7          	jalr	1448(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
}
    80001e10:	02813083          	ld	ra,40(sp)
    80001e14:	02013403          	ld	s0,32(sp)
    80001e18:	01813483          	ld	s1,24(sp)
    80001e1c:	01013903          	ld	s2,16(sp)
    80001e20:	00813983          	ld	s3,8(sp)
    80001e24:	03010113          	addi	sp,sp,48
    80001e28:	00008067          	ret
        Riscv::printString("OK\n");
    80001e2c:	00006517          	auipc	a0,0x6
    80001e30:	2bc50513          	addi	a0,a0,700 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001e34:	00001097          	auipc	ra,0x1
    80001e38:	57c080e7          	jalr	1404(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    80001e3c:	fd5ff06f          	j	80001e10 <_Z17lotOfSmallMallocsv+0xa8>

0000000080001e40 <_Z7badFreev>:
{
    80001e40:	ff010113          	addi	sp,sp,-16
    80001e44:	00113423          	sd	ra,8(sp)
    80001e48:	00813023          	sd	s0,0(sp)
    80001e4c:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001e50:	00006517          	auipc	a0,0x6
    80001e54:	2c850513          	addi	a0,a0,712 # 80008118 <CONSOLE_STATUS+0x108>
    80001e58:	00001097          	auipc	ra,0x1
    80001e5c:	558080e7          	jalr	1368(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001e60:	00800513          	li	a0,8
    80001e64:	fffff097          	auipc	ra,0xfffff
    80001e68:	3e4080e7          	jalr	996(ra) # 80001248 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001e6c:	00250513          	addi	a0,a0,2
    80001e70:	fffff097          	auipc	ra,0xfffff
    80001e74:	408080e7          	jalr	1032(ra) # 80001278 <mem_free>
    if(retval == 0)
    80001e78:	02051263          	bnez	a0,80001e9c <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001e7c:	00006517          	auipc	a0,0x6
    80001e80:	26450513          	addi	a0,a0,612 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001e84:	00001097          	auipc	ra,0x1
    80001e88:	52c080e7          	jalr	1324(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
}
    80001e8c:	00813083          	ld	ra,8(sp)
    80001e90:	00013403          	ld	s0,0(sp)
    80001e94:	01010113          	addi	sp,sp,16
    80001e98:	00008067          	ret
        Riscv::printString("OK\n");
    80001e9c:	00006517          	auipc	a0,0x6
    80001ea0:	24c50513          	addi	a0,a0,588 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001ea4:	00001097          	auipc	ra,0x1
    80001ea8:	50c080e7          	jalr	1292(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
}
    80001eac:	fe1ff06f          	j	80001e8c <_Z7badFreev+0x4c>

0000000080001eb0 <_Z13stressTestingv>:
{
    80001eb0:	cc010113          	addi	sp,sp,-832
    80001eb4:	32113c23          	sd	ra,824(sp)
    80001eb8:	32813823          	sd	s0,816(sp)
    80001ebc:	32913423          	sd	s1,808(sp)
    80001ec0:	33213023          	sd	s2,800(sp)
    80001ec4:	34010413          	addi	s0,sp,832
    Riscv::printString("stressTesting\n");
    80001ec8:	00006517          	auipc	a0,0x6
    80001ecc:	26050513          	addi	a0,a0,608 # 80008128 <CONSOLE_STATUS+0x118>
    80001ed0:	00001097          	auipc	ra,0x1
    80001ed4:	4e0080e7          	jalr	1248(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001ed8:	00000493          	li	s1,0
    80001edc:	0080006f          	j	80001ee4 <_Z13stressTestingv+0x34>
    80001ee0:	0014849b          	addiw	s1,s1,1
    80001ee4:	06300793          	li	a5,99
    80001ee8:	0297ce63          	blt	a5,s1,80001f24 <_Z13stressTestingv+0x74>
        addrs[i] = mem_alloc(1);
    80001eec:	00100513          	li	a0,1
    80001ef0:	fffff097          	auipc	ra,0xfffff
    80001ef4:	358080e7          	jalr	856(ra) # 80001248 <mem_alloc>
    80001ef8:	00349793          	slli	a5,s1,0x3
    80001efc:	fe040713          	addi	a4,s0,-32
    80001f00:	00f707b3          	add	a5,a4,a5
    80001f04:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001f08:	fc051ce3          	bnez	a0,80001ee0 <_Z13stressTestingv+0x30>
}
    80001f0c:	33813083          	ld	ra,824(sp)
    80001f10:	33013403          	ld	s0,816(sp)
    80001f14:	32813483          	ld	s1,808(sp)
    80001f18:	32013903          	ld	s2,800(sp)
    80001f1c:	34010113          	addi	sp,sp,832
    80001f20:	00008067          	ret
    int sz = 300;
    80001f24:	12c00913          	li	s2,300
    while(sz > 0)
    80001f28:	0b205a63          	blez	s2,80001fdc <_Z13stressTestingv+0x12c>
        for(int i = 0 ; i < num;i+=2)
    80001f2c:	00000493          	li	s1,0
    80001f30:	06300793          	li	a5,99
    80001f34:	0497c863          	blt	a5,s1,80001f84 <_Z13stressTestingv+0xd4>
            int retval = mem_free(addrs[i]);
    80001f38:	00349793          	slli	a5,s1,0x3
    80001f3c:	fe040713          	addi	a4,s0,-32
    80001f40:	00f707b3          	add	a5,a4,a5
    80001f44:	ce07b503          	ld	a0,-800(a5)
    80001f48:	fffff097          	auipc	ra,0xfffff
    80001f4c:	330080e7          	jalr	816(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001f50:	fa051ee3          	bnez	a0,80001f0c <_Z13stressTestingv+0x5c>
            addrs[i] = mem_alloc(sz/2);
    80001f54:	01f9551b          	srliw	a0,s2,0x1f
    80001f58:	0125053b          	addw	a0,a0,s2
    80001f5c:	4015551b          	sraiw	a0,a0,0x1
    80001f60:	fffff097          	auipc	ra,0xfffff
    80001f64:	2e8080e7          	jalr	744(ra) # 80001248 <mem_alloc>
    80001f68:	00349793          	slli	a5,s1,0x3
    80001f6c:	fe040713          	addi	a4,s0,-32
    80001f70:	00f707b3          	add	a5,a4,a5
    80001f74:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001f78:	f8050ae3          	beqz	a0,80001f0c <_Z13stressTestingv+0x5c>
        for(int i = 0 ; i < num;i+=2)
    80001f7c:	0024849b          	addiw	s1,s1,2
    80001f80:	fb1ff06f          	j	80001f30 <_Z13stressTestingv+0x80>
        for(int i = 1 ; i < num;i+=2)
    80001f84:	00100493          	li	s1,1
    80001f88:	06300793          	li	a5,99
    80001f8c:	0497c463          	blt	a5,s1,80001fd4 <_Z13stressTestingv+0x124>
            int retval = mem_free(addrs[i]);
    80001f90:	00349793          	slli	a5,s1,0x3
    80001f94:	fe040713          	addi	a4,s0,-32
    80001f98:	00f707b3          	add	a5,a4,a5
    80001f9c:	ce07b503          	ld	a0,-800(a5)
    80001fa0:	fffff097          	auipc	ra,0xfffff
    80001fa4:	2d8080e7          	jalr	728(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001fa8:	f60512e3          	bnez	a0,80001f0c <_Z13stressTestingv+0x5c>
            addrs[i] = mem_alloc(sz);
    80001fac:	00090513          	mv	a0,s2
    80001fb0:	fffff097          	auipc	ra,0xfffff
    80001fb4:	298080e7          	jalr	664(ra) # 80001248 <mem_alloc>
    80001fb8:	00349793          	slli	a5,s1,0x3
    80001fbc:	fe040713          	addi	a4,s0,-32
    80001fc0:	00f707b3          	add	a5,a4,a5
    80001fc4:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001fc8:	f40502e3          	beqz	a0,80001f0c <_Z13stressTestingv+0x5c>
        for(int i = 1 ; i < num;i+=2)
    80001fcc:	0024849b          	addiw	s1,s1,2
    80001fd0:	fb9ff06f          	j	80001f88 <_Z13stressTestingv+0xd8>
        sz-=10;
    80001fd4:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001fd8:	f51ff06f          	j	80001f28 <_Z13stressTestingv+0x78>
    Riscv::printString("OK\n");
    80001fdc:	00006517          	auipc	a0,0x6
    80001fe0:	10c50513          	addi	a0,a0,268 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001fe4:	00001097          	auipc	ra,0x1
    80001fe8:	3cc080e7          	jalr	972(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    80001fec:	f21ff06f          	j	80001f0c <_Z13stressTestingv+0x5c>

0000000080001ff0 <_Z21memoryAllocationTestsv>:
{
    80001ff0:	ff010113          	addi	sp,sp,-16
    80001ff4:	00113423          	sd	ra,8(sp)
    80001ff8:	00813023          	sd	s0,0(sp)
    80001ffc:	01010413          	addi	s0,sp,16
    stressTesting();
    80002000:	00000097          	auipc	ra,0x0
    80002004:	eb0080e7          	jalr	-336(ra) # 80001eb0 <_Z13stressTestingv>
}
    80002008:	00813083          	ld	ra,8(sp)
    8000200c:	00013403          	ld	s0,0(sp)
    80002010:	01010113          	addi	sp,sp,16
    80002014:	00008067          	ret

0000000080002018 <_Z8semTest1v>:
{
    80002018:	fe010113          	addi	sp,sp,-32
    8000201c:	00113c23          	sd	ra,24(sp)
    80002020:	00813823          	sd	s0,16(sp)
    80002024:	00913423          	sd	s1,8(sp)
    80002028:	01213023          	sd	s2,0(sp)
    8000202c:	02010413          	addi	s0,sp,32
    mutex = new Semaphore(1);
    80002030:	01000513          	li	a0,16
    80002034:	00001097          	auipc	ra,0x1
    80002038:	ef8080e7          	jalr	-264(ra) # 80002f2c <_Znwm>
    8000203c:	00050493          	mv	s1,a0
    80002040:	00100593          	li	a1,1
    80002044:	00001097          	auipc	ra,0x1
    80002048:	124080e7          	jalr	292(ra) # 80003168 <_ZN9SemaphoreC1Ej>
    8000204c:	00008797          	auipc	a5,0x8
    80002050:	7c97b223          	sd	s1,1988(a5) # 8000a810 <_ZL5mutex>
    Thread* t1 = new Thread(&f1, 0);
    80002054:	02000513          	li	a0,32
    80002058:	00001097          	auipc	ra,0x1
    8000205c:	ed4080e7          	jalr	-300(ra) # 80002f2c <_Znwm>
    80002060:	00050913          	mv	s2,a0
    80002064:	00000613          	li	a2,0
    80002068:	fffff597          	auipc	a1,0xfffff
    8000206c:	65058593          	addi	a1,a1,1616 # 800016b8 <_Z2f1Pv>
    80002070:	00001097          	auipc	ra,0x1
    80002074:	058080e7          	jalr	88(ra) # 800030c8 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&f2, 0);
    80002078:	02000513          	li	a0,32
    8000207c:	00001097          	auipc	ra,0x1
    80002080:	eb0080e7          	jalr	-336(ra) # 80002f2c <_Znwm>
    80002084:	00050493          	mv	s1,a0
    80002088:	00000613          	li	a2,0
    8000208c:	fffff597          	auipc	a1,0xfffff
    80002090:	6a058593          	addi	a1,a1,1696 # 8000172c <_Z2f2Pv>
    80002094:	00001097          	auipc	ra,0x1
    80002098:	034080e7          	jalr	52(ra) # 800030c8 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    8000209c:	00090513          	mv	a0,s2
    800020a0:	00001097          	auipc	ra,0x1
    800020a4:	f5c080e7          	jalr	-164(ra) # 80002ffc <_ZN6Thread5startEv>
    t2->start();
    800020a8:	00048513          	mv	a0,s1
    800020ac:	00001097          	auipc	ra,0x1
    800020b0:	f50080e7          	jalr	-176(ra) # 80002ffc <_ZN6Thread5startEv>
    int y = 0;
    800020b4:	00000493          	li	s1,0
        y++;
    800020b8:	0014849b          	addiw	s1,s1,1
        thread_dispatch();
    800020bc:	fffff097          	auipc	ra,0xfffff
    800020c0:	268080e7          	jalr	616(ra) # 80001324 <thread_dispatch>
        if(y == 200000)
    800020c4:	000317b7          	lui	a5,0x31
    800020c8:	d4078793          	addi	a5,a5,-704 # 30d40 <_entry-0x7ffcf2c0>
    800020cc:	fef496e3          	bne	s1,a5,800020b8 <_Z8semTest1v+0xa0>
}
    800020d0:	01813083          	ld	ra,24(sp)
    800020d4:	01013403          	ld	s0,16(sp)
    800020d8:	00813483          	ld	s1,8(sp)
    800020dc:	00013903          	ld	s2,0(sp)
    800020e0:	02010113          	addi	sp,sp,32
    800020e4:	00008067          	ret
    800020e8:	00050913          	mv	s2,a0
    mutex = new Semaphore(1);
    800020ec:	00048513          	mv	a0,s1
    800020f0:	00001097          	auipc	ra,0x1
    800020f4:	e64080e7          	jalr	-412(ra) # 80002f54 <_ZdlPv>
    800020f8:	00090513          	mv	a0,s2
    800020fc:	0000a097          	auipc	ra,0xa
    80002100:	88c080e7          	jalr	-1908(ra) # 8000b988 <_Unwind_Resume>
    80002104:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1, 0);
    80002108:	00090513          	mv	a0,s2
    8000210c:	00001097          	auipc	ra,0x1
    80002110:	e48080e7          	jalr	-440(ra) # 80002f54 <_ZdlPv>
    80002114:	00048513          	mv	a0,s1
    80002118:	0000a097          	auipc	ra,0xa
    8000211c:	870080e7          	jalr	-1936(ra) # 8000b988 <_Unwind_Resume>
    80002120:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&f2, 0);
    80002124:	00048513          	mv	a0,s1
    80002128:	00001097          	auipc	ra,0x1
    8000212c:	e2c080e7          	jalr	-468(ra) # 80002f54 <_ZdlPv>
    80002130:	00090513          	mv	a0,s2
    80002134:	0000a097          	auipc	ra,0xa
    80002138:	854080e7          	jalr	-1964(ra) # 8000b988 <_Unwind_Resume>

000000008000213c <_Z8semTest2v>:
{
    8000213c:	fd010113          	addi	sp,sp,-48
    80002140:	02113423          	sd	ra,40(sp)
    80002144:	02813023          	sd	s0,32(sp)
    80002148:	00913c23          	sd	s1,24(sp)
    8000214c:	01213823          	sd	s2,16(sp)
    80002150:	01313423          	sd	s3,8(sp)
    80002154:	03010413          	addi	s0,sp,48
    s1 = new Semaphore(1);
    80002158:	01000513          	li	a0,16
    8000215c:	00001097          	auipc	ra,0x1
    80002160:	dd0080e7          	jalr	-560(ra) # 80002f2c <_Znwm>
    80002164:	00050493          	mv	s1,a0
    80002168:	00100593          	li	a1,1
    8000216c:	00001097          	auipc	ra,0x1
    80002170:	ffc080e7          	jalr	-4(ra) # 80003168 <_ZN9SemaphoreC1Ej>
    80002174:	00008797          	auipc	a5,0x8
    80002178:	6a97b223          	sd	s1,1700(a5) # 8000a818 <_ZL2s1>
    s2 = new Semaphore(0);
    8000217c:	01000513          	li	a0,16
    80002180:	00001097          	auipc	ra,0x1
    80002184:	dac080e7          	jalr	-596(ra) # 80002f2c <_Znwm>
    80002188:	00050493          	mv	s1,a0
    8000218c:	00000593          	li	a1,0
    80002190:	00001097          	auipc	ra,0x1
    80002194:	fd8080e7          	jalr	-40(ra) # 80003168 <_ZN9SemaphoreC1Ej>
    80002198:	00008797          	auipc	a5,0x8
    8000219c:	6897b423          	sd	s1,1672(a5) # 8000a820 <_ZL2s2>
    s3 = new Semaphore(0);
    800021a0:	01000513          	li	a0,16
    800021a4:	00001097          	auipc	ra,0x1
    800021a8:	d88080e7          	jalr	-632(ra) # 80002f2c <_Znwm>
    800021ac:	00050493          	mv	s1,a0
    800021b0:	00000593          	li	a1,0
    800021b4:	00001097          	auipc	ra,0x1
    800021b8:	fb4080e7          	jalr	-76(ra) # 80003168 <_ZN9SemaphoreC1Ej>
    800021bc:	00008797          	auipc	a5,0x8
    800021c0:	6697b623          	sd	s1,1644(a5) # 8000a828 <_ZL2s3>
    Thread* t1 = new Thread(&f1_2, 0);
    800021c4:	02000513          	li	a0,32
    800021c8:	00001097          	auipc	ra,0x1
    800021cc:	d64080e7          	jalr	-668(ra) # 80002f2c <_Znwm>
    800021d0:	00050993          	mv	s3,a0
    800021d4:	00000613          	li	a2,0
    800021d8:	fffff597          	auipc	a1,0xfffff
    800021dc:	5a458593          	addi	a1,a1,1444 # 8000177c <_Z4f1_2Pv>
    800021e0:	00001097          	auipc	ra,0x1
    800021e4:	ee8080e7          	jalr	-280(ra) # 800030c8 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&f2_2, 0);
    800021e8:	02000513          	li	a0,32
    800021ec:	00001097          	auipc	ra,0x1
    800021f0:	d40080e7          	jalr	-704(ra) # 80002f2c <_Znwm>
    800021f4:	00050913          	mv	s2,a0
    800021f8:	00000613          	li	a2,0
    800021fc:	fffff597          	auipc	a1,0xfffff
    80002200:	60c58593          	addi	a1,a1,1548 # 80001808 <_Z4f2_2Pv>
    80002204:	00001097          	auipc	ra,0x1
    80002208:	ec4080e7          	jalr	-316(ra) # 800030c8 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t3 = new Thread(&f3_2, 0);
    8000220c:	02000513          	li	a0,32
    80002210:	00001097          	auipc	ra,0x1
    80002214:	d1c080e7          	jalr	-740(ra) # 80002f2c <_Znwm>
    80002218:	00050493          	mv	s1,a0
    8000221c:	00000613          	li	a2,0
    80002220:	fffff597          	auipc	a1,0xfffff
    80002224:	67458593          	addi	a1,a1,1652 # 80001894 <_Z4f3_2Pv>
    80002228:	00001097          	auipc	ra,0x1
    8000222c:	ea0080e7          	jalr	-352(ra) # 800030c8 <_ZN6ThreadC1EPFvPvES0_>
    t3->start();
    80002230:	00048513          	mv	a0,s1
    80002234:	00001097          	auipc	ra,0x1
    80002238:	dc8080e7          	jalr	-568(ra) # 80002ffc <_ZN6Thread5startEv>
    t2->start();
    8000223c:	00090513          	mv	a0,s2
    80002240:	00001097          	auipc	ra,0x1
    80002244:	dbc080e7          	jalr	-580(ra) # 80002ffc <_ZN6Thread5startEv>
    t1->start();
    80002248:	00098513          	mv	a0,s3
    8000224c:	00001097          	auipc	ra,0x1
    80002250:	db0080e7          	jalr	-592(ra) # 80002ffc <_ZN6Thread5startEv>
    int y = 0;
    80002254:	00000493          	li	s1,0
        y++;
    80002258:	0014849b          	addiw	s1,s1,1
        thread_dispatch();
    8000225c:	fffff097          	auipc	ra,0xfffff
    80002260:	0c8080e7          	jalr	200(ra) # 80001324 <thread_dispatch>
        if(y == 200000)
    80002264:	000317b7          	lui	a5,0x31
    80002268:	d4078793          	addi	a5,a5,-704 # 30d40 <_entry-0x7ffcf2c0>
    8000226c:	fef496e3          	bne	s1,a5,80002258 <_Z8semTest2v+0x11c>
}
    80002270:	02813083          	ld	ra,40(sp)
    80002274:	02013403          	ld	s0,32(sp)
    80002278:	01813483          	ld	s1,24(sp)
    8000227c:	01013903          	ld	s2,16(sp)
    80002280:	00813983          	ld	s3,8(sp)
    80002284:	03010113          	addi	sp,sp,48
    80002288:	00008067          	ret
    8000228c:	00050913          	mv	s2,a0
    s1 = new Semaphore(1);
    80002290:	00048513          	mv	a0,s1
    80002294:	00001097          	auipc	ra,0x1
    80002298:	cc0080e7          	jalr	-832(ra) # 80002f54 <_ZdlPv>
    8000229c:	00090513          	mv	a0,s2
    800022a0:	00009097          	auipc	ra,0x9
    800022a4:	6e8080e7          	jalr	1768(ra) # 8000b988 <_Unwind_Resume>
    800022a8:	00050913          	mv	s2,a0
    s2 = new Semaphore(0);
    800022ac:	00048513          	mv	a0,s1
    800022b0:	00001097          	auipc	ra,0x1
    800022b4:	ca4080e7          	jalr	-860(ra) # 80002f54 <_ZdlPv>
    800022b8:	00090513          	mv	a0,s2
    800022bc:	00009097          	auipc	ra,0x9
    800022c0:	6cc080e7          	jalr	1740(ra) # 8000b988 <_Unwind_Resume>
    800022c4:	00050913          	mv	s2,a0
    s3 = new Semaphore(0);
    800022c8:	00048513          	mv	a0,s1
    800022cc:	00001097          	auipc	ra,0x1
    800022d0:	c88080e7          	jalr	-888(ra) # 80002f54 <_ZdlPv>
    800022d4:	00090513          	mv	a0,s2
    800022d8:	00009097          	auipc	ra,0x9
    800022dc:	6b0080e7          	jalr	1712(ra) # 8000b988 <_Unwind_Resume>
    800022e0:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1_2, 0);
    800022e4:	00098513          	mv	a0,s3
    800022e8:	00001097          	auipc	ra,0x1
    800022ec:	c6c080e7          	jalr	-916(ra) # 80002f54 <_ZdlPv>
    800022f0:	00048513          	mv	a0,s1
    800022f4:	00009097          	auipc	ra,0x9
    800022f8:	694080e7          	jalr	1684(ra) # 8000b988 <_Unwind_Resume>
    800022fc:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&f2_2, 0);
    80002300:	00090513          	mv	a0,s2
    80002304:	00001097          	auipc	ra,0x1
    80002308:	c50080e7          	jalr	-944(ra) # 80002f54 <_ZdlPv>
    8000230c:	00048513          	mv	a0,s1
    80002310:	00009097          	auipc	ra,0x9
    80002314:	678080e7          	jalr	1656(ra) # 8000b988 <_Unwind_Resume>
    80002318:	00050913          	mv	s2,a0
    Thread* t3 = new Thread(&f3_2, 0);
    8000231c:	00048513          	mv	a0,s1
    80002320:	00001097          	auipc	ra,0x1
    80002324:	c34080e7          	jalr	-972(ra) # 80002f54 <_ZdlPv>
    80002328:	00090513          	mv	a0,s2
    8000232c:	00009097          	auipc	ra,0x9
    80002330:	65c080e7          	jalr	1628(ra) # 8000b988 <_Unwind_Resume>

0000000080002334 <_Z14semaphoreTestsv>:
{
    80002334:	ff010113          	addi	sp,sp,-16
    80002338:	00113423          	sd	ra,8(sp)
    8000233c:	00813023          	sd	s0,0(sp)
    80002340:	01010413          	addi	s0,sp,16
    semTest2();
    80002344:	00000097          	auipc	ra,0x0
    80002348:	df8080e7          	jalr	-520(ra) # 8000213c <_Z8semTest2v>
}
    8000234c:	00813083          	ld	ra,8(sp)
    80002350:	00013403          	ld	s0,0(sp)
    80002354:	01010113          	addi	sp,sp,16
    80002358:	00008067          	ret

000000008000235c <_ZN12TestPeriodicC1Em>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {
    8000235c:	fe010113          	addi	sp,sp,-32
    80002360:	00113c23          	sd	ra,24(sp)
    80002364:	00813823          	sd	s0,16(sp)
    80002368:	00913423          	sd	s1,8(sp)
    8000236c:	02010413          	addi	s0,sp,32
    80002370:	00050493          	mv	s1,a0
    80002374:	00001097          	auipc	ra,0x1
    80002378:	eac080e7          	jalr	-340(ra) # 80003220 <_ZN14PeriodicThreadC1Em>
    8000237c:	00008797          	auipc	a5,0x8
    80002380:	30478793          	addi	a5,a5,772 # 8000a680 <_ZTV12TestPeriodic+0x10>
    80002384:	00f4b023          	sd	a5,0(s1)
}
    80002388:	01813083          	ld	ra,24(sp)
    8000238c:	01013403          	ld	s0,16(sp)
    80002390:	00813483          	ld	s1,8(sp)
    80002394:	02010113          	addi	sp,sp,32
    80002398:	00008067          	ret

000000008000239c <_Z11threadTest3v>:
{
    8000239c:	fe010113          	addi	sp,sp,-32
    800023a0:	00113c23          	sd	ra,24(sp)
    800023a4:	00813823          	sd	s0,16(sp)
    800023a8:	00913423          	sd	s1,8(sp)
    800023ac:	01213023          	sd	s2,0(sp)
    800023b0:	02010413          	addi	s0,sp,32
    Thread* t = new TestPeriodic(50);
    800023b4:	02800513          	li	a0,40
    800023b8:	00001097          	auipc	ra,0x1
    800023bc:	b74080e7          	jalr	-1164(ra) # 80002f2c <_Znwm>
    800023c0:	00050913          	mv	s2,a0
    800023c4:	03200593          	li	a1,50
    800023c8:	00000097          	auipc	ra,0x0
    800023cc:	f94080e7          	jalr	-108(ra) # 8000235c <_ZN12TestPeriodicC1Em>
    t->start();
    800023d0:	00090513          	mv	a0,s2
    800023d4:	00001097          	auipc	ra,0x1
    800023d8:	c28080e7          	jalr	-984(ra) # 80002ffc <_ZN6Thread5startEv>
    while(true)
    800023dc:	0000006f          	j	800023dc <_Z11threadTest3v+0x40>
    800023e0:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    800023e4:	00090513          	mv	a0,s2
    800023e8:	00001097          	auipc	ra,0x1
    800023ec:	b6c080e7          	jalr	-1172(ra) # 80002f54 <_ZdlPv>
    800023f0:	00048513          	mv	a0,s1
    800023f4:	00009097          	auipc	ra,0x9
    800023f8:	594080e7          	jalr	1428(ra) # 8000b988 <_Unwind_Resume>

00000000800023fc <_Z11threadTestsv>:
{
    800023fc:	ff010113          	addi	sp,sp,-16
    80002400:	00113423          	sd	ra,8(sp)
    80002404:	00813023          	sd	s0,0(sp)
    80002408:	01010413          	addi	s0,sp,16
    threadTest3();
    8000240c:	00000097          	auipc	ra,0x0
    80002410:	f90080e7          	jalr	-112(ra) # 8000239c <_Z11threadTest3v>

0000000080002414 <_Z7myTestsv>:
{
    80002414:	ff010113          	addi	sp,sp,-16
    80002418:	00113423          	sd	ra,8(sp)
    8000241c:	00813023          	sd	s0,0(sp)
    80002420:	01010413          	addi	s0,sp,16
    threadTests();
    80002424:	00000097          	auipc	ra,0x0
    80002428:	fd8080e7          	jalr	-40(ra) # 800023fc <_Z11threadTestsv>

000000008000242c <_ZN6Thread3runEv>:
    //ovde je samo za potrebe testiranja
    thread_t myHandle;
protected:
    Thread();

    virtual void run() {}
    8000242c:	ff010113          	addi	sp,sp,-16
    80002430:	00813423          	sd	s0,8(sp)
    80002434:	01010413          	addi	s0,sp,16
    80002438:	00813403          	ld	s0,8(sp)
    8000243c:	01010113          	addi	sp,sp,16
    80002440:	00008067          	ret

0000000080002444 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80002444:	ff010113          	addi	sp,sp,-16
    80002448:	00813423          	sd	s0,8(sp)
    8000244c:	01010413          	addi	s0,sp,16
    80002450:	00813403          	ld	s0,8(sp)
    80002454:	01010113          	addi	sp,sp,16
    80002458:	00008067          	ret

000000008000245c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    8000245c:	ff010113          	addi	sp,sp,-16
    80002460:	00113423          	sd	ra,8(sp)
    80002464:	00813023          	sd	s0,0(sp)
    80002468:	01010413          	addi	s0,sp,16
    8000246c:	00008797          	auipc	a5,0x8
    80002470:	1e478793          	addi	a5,a5,484 # 8000a650 <_ZTV14PeriodicThread+0x10>
    80002474:	00f53023          	sd	a5,0(a0)
    80002478:	00001097          	auipc	ra,0x1
    8000247c:	9f8080e7          	jalr	-1544(ra) # 80002e70 <_ZN6ThreadD1Ev>
    80002480:	00813083          	ld	ra,8(sp)
    80002484:	00013403          	ld	s0,0(sp)
    80002488:	01010113          	addi	sp,sp,16
    8000248c:	00008067          	ret

0000000080002490 <_ZN14PeriodicThreadD0Ev>:
    80002490:	fe010113          	addi	sp,sp,-32
    80002494:	00113c23          	sd	ra,24(sp)
    80002498:	00813823          	sd	s0,16(sp)
    8000249c:	00913423          	sd	s1,8(sp)
    800024a0:	02010413          	addi	s0,sp,32
    800024a4:	00050493          	mv	s1,a0
    800024a8:	00008797          	auipc	a5,0x8
    800024ac:	1a878793          	addi	a5,a5,424 # 8000a650 <_ZTV14PeriodicThread+0x10>
    800024b0:	00f53023          	sd	a5,0(a0)
    800024b4:	00001097          	auipc	ra,0x1
    800024b8:	9bc080e7          	jalr	-1604(ra) # 80002e70 <_ZN6ThreadD1Ev>
    800024bc:	00048513          	mv	a0,s1
    800024c0:	00001097          	auipc	ra,0x1
    800024c4:	a94080e7          	jalr	-1388(ra) # 80002f54 <_ZdlPv>
    800024c8:	01813083          	ld	ra,24(sp)
    800024cc:	01013403          	ld	s0,16(sp)
    800024d0:	00813483          	ld	s1,8(sp)
    800024d4:	02010113          	addi	sp,sp,32
    800024d8:	00008067          	ret

00000000800024dc <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    800024dc:	ff010113          	addi	sp,sp,-16
    800024e0:	00113423          	sd	ra,8(sp)
    800024e4:	00813023          	sd	s0,0(sp)
    800024e8:	01010413          	addi	s0,sp,16
    800024ec:	00008797          	auipc	a5,0x8
    800024f0:	16478793          	addi	a5,a5,356 # 8000a650 <_ZTV14PeriodicThread+0x10>
    800024f4:	00f53023          	sd	a5,0(a0)
    800024f8:	00001097          	auipc	ra,0x1
    800024fc:	978080e7          	jalr	-1672(ra) # 80002e70 <_ZN6ThreadD1Ev>
    80002500:	00813083          	ld	ra,8(sp)
    80002504:	00013403          	ld	s0,0(sp)
    80002508:	01010113          	addi	sp,sp,16
    8000250c:	00008067          	ret

0000000080002510 <_ZN12TestPeriodicD0Ev>:
    80002510:	fe010113          	addi	sp,sp,-32
    80002514:	00113c23          	sd	ra,24(sp)
    80002518:	00813823          	sd	s0,16(sp)
    8000251c:	00913423          	sd	s1,8(sp)
    80002520:	02010413          	addi	s0,sp,32
    80002524:	00050493          	mv	s1,a0
    80002528:	00008797          	auipc	a5,0x8
    8000252c:	12878793          	addi	a5,a5,296 # 8000a650 <_ZTV14PeriodicThread+0x10>
    80002530:	00f53023          	sd	a5,0(a0)
    80002534:	00001097          	auipc	ra,0x1
    80002538:	93c080e7          	jalr	-1732(ra) # 80002e70 <_ZN6ThreadD1Ev>
    8000253c:	00048513          	mv	a0,s1
    80002540:	00001097          	auipc	ra,0x1
    80002544:	a14080e7          	jalr	-1516(ra) # 80002f54 <_ZdlPv>
    80002548:	01813083          	ld	ra,24(sp)
    8000254c:	01013403          	ld	s0,16(sp)
    80002550:	00813483          	ld	s1,8(sp)
    80002554:	02010113          	addi	sp,sp,32
    80002558:	00008067          	ret

000000008000255c <_ZN3PCB6runnerEv>:
    Scheduler::put(this);
}

//todo
void PCB::runner()
{
    8000255c:	ff010113          	addi	sp,sp,-16
    80002560:	00113423          	sd	ra,8(sp)
    80002564:	00813023          	sd	s0,0(sp)
    80002568:	01010413          	addi	s0,sp,16
    Riscv::printString("Runner started...\n");
    8000256c:	00006517          	auipc	a0,0x6
    80002570:	bcc50513          	addi	a0,a0,-1076 # 80008138 <CONSOLE_STATUS+0x128>
    80002574:	00001097          	auipc	ra,0x1
    80002578:	e3c080e7          	jalr	-452(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    8000257c:	00001097          	auipc	ra,0x1
    80002580:	e14080e7          	jalr	-492(ra) # 80003390 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    80002584:	00008797          	auipc	a5,0x8
    80002588:	2ac7b783          	ld	a5,684(a5) # 8000a830 <_ZN3PCB7runningE>
    8000258c:	0207b703          	ld	a4,32(a5)
    80002590:	0287b503          	ld	a0,40(a5)
    80002594:	000700e7          	jalr	a4
    //da li ovde treba da se predje u kernel rezim mozda
    //mozda moze da se iskoristi lock za neku promenljivu za PCB::running
    //kako ne bi pristupalo vise niti tome, jer malo je
    //nezgodna promena rezima ovde
    //running->setState(PCB::FINISHED);
    Riscv::printString("PCB finished\n");
    80002598:	00006517          	auipc	a0,0x6
    8000259c:	bb850513          	addi	a0,a0,-1096 # 80008150 <CONSOLE_STATUS+0x140>
    800025a0:	00001097          	auipc	ra,0x1
    800025a4:	e10080e7          	jalr	-496(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>

    //todo
    //da li thread_exit ili dispatch
    thread_exit();
    800025a8:	fffff097          	auipc	ra,0xfffff
    800025ac:	d9c080e7          	jalr	-612(ra) # 80001344 <thread_exit>
    //thread_dispatch();
}
    800025b0:	00813083          	ld	ra,8(sp)
    800025b4:	00013403          	ld	s0,0(sp)
    800025b8:	01010113          	addi	sp,sp,16
    800025bc:	00008067          	ret

00000000800025c0 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800025c0:	fe010113          	addi	sp,sp,-32
    800025c4:	00113c23          	sd	ra,24(sp)
    800025c8:	00813823          	sd	s0,16(sp)
    800025cc:	00913423          	sd	s1,8(sp)
    800025d0:	02010413          	addi	s0,sp,32
    800025d4:	00050493          	mv	s1,a0
    })
    800025d8:	00050023          	sb	zero,0(a0)
    800025dc:	00e53823          	sd	a4,16(a0)
    800025e0:	00053c23          	sd	zero,24(a0)
    800025e4:	02b53023          	sd	a1,32(a0)
    800025e8:	02c53423          	sd	a2,40(a0)
    800025ec:	02d53823          	sd	a3,48(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800025f0:	000017b7          	lui	a5,0x1
    800025f4:	00f686b3          	add	a3,a3,a5
    })
    800025f8:	04d53023          	sd	a3,64(a0)
    800025fc:	00000797          	auipc	a5,0x0
    80002600:	f6078793          	addi	a5,a5,-160 # 8000255c <_ZN3PCB6runnerEv>
    80002604:	04f53423          	sd	a5,72(a0)
    Scheduler::put(this);
    80002608:	00000097          	auipc	ra,0x0
    8000260c:	7a0080e7          	jalr	1952(ra) # 80002da8 <_ZN9Scheduler3putEP3PCB>
    nextPCB = 0;
    80002610:	0004b423          	sd	zero,8(s1)
}
    80002614:	01813083          	ld	ra,24(sp)
    80002618:	01013403          	ld	s0,16(sp)
    8000261c:	00813483          	ld	s1,8(sp)
    80002620:	02010113          	addi	sp,sp,32
    80002624:	00008067          	ret

0000000080002628 <_ZN3PCB5sleepEm>:
{
    80002628:	ff010113          	addi	sp,sp,-16
    8000262c:	00813423          	sd	s0,8(sp)
    80002630:	01010413          	addi	s0,sp,16
}
    80002634:	00813403          	ld	s0,8(sp)
    80002638:	01010113          	addi	sp,sp,16
    8000263c:	00008067          	ret

0000000080002640 <_ZN3PCB5startEv>:
{
    80002640:	ff010113          	addi	sp,sp,-16
    80002644:	00113423          	sd	ra,8(sp)
    80002648:	00813023          	sd	s0,0(sp)
    8000264c:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002650:	00000097          	auipc	ra,0x0
    80002654:	758080e7          	jalr	1880(ra) # 80002da8 <_ZN9Scheduler3putEP3PCB>
}
    80002658:	00813083          	ld	ra,8(sp)
    8000265c:	00013403          	ld	s0,0(sp)
    80002660:	01010113          	addi	sp,sp,16
    80002664:	00008067          	ret

0000000080002668 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002668:	fe010113          	addi	sp,sp,-32
    8000266c:	00113c23          	sd	ra,24(sp)
    80002670:	00813823          	sd	s0,16(sp)
    80002674:	00913423          	sd	s1,8(sp)
    80002678:	02010413          	addi	s0,sp,32
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    8000267c:	00008497          	auipc	s1,0x8
    80002680:	1b44b483          	ld	s1,436(s1) # 8000a830 <_ZN3PCB7runningE>
    80002684:	0384a703          	lw	a4,56(s1)
    if(old->getState() == PCB::RUNNING)
    80002688:	00100793          	li	a5,1
    8000268c:	04f70063          	beq	a4,a5,800026cc <_ZN3PCB8dispatchEv+0x64>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002690:	00000097          	auipc	ra,0x0
    80002694:	76c080e7          	jalr	1900(ra) # 80002dfc <_ZN9Scheduler3getEv>
    80002698:	00008797          	auipc	a5,0x8
    8000269c:	18a7bc23          	sd	a0,408(a5) # 8000a830 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    800026a0:	00100793          	li	a5,1
    800026a4:	02f52c23          	sw	a5,56(a0)
    PCB::running->setState(PCB::RUNNING);
    //Riscv::printString("Switching context...\n");

    PCB::contextSwitch(&old->context, &running->context);
    800026a8:	04050593          	addi	a1,a0,64
    800026ac:	04048513          	addi	a0,s1,64
    800026b0:	fffff097          	auipc	ra,0xfffff
    800026b4:	b78080e7          	jalr	-1160(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800026b8:	01813083          	ld	ra,24(sp)
    800026bc:	01013403          	ld	s0,16(sp)
    800026c0:	00813483          	ld	s1,8(sp)
    800026c4:	02010113          	addi	sp,sp,32
    800026c8:	00008067          	ret
        Scheduler::put(old);
    800026cc:	00048513          	mv	a0,s1
    800026d0:	00000097          	auipc	ra,0x0
    800026d4:	6d8080e7          	jalr	1752(ra) # 80002da8 <_ZN9Scheduler3putEP3PCB>
    800026d8:	fb9ff06f          	j	80002690 <_ZN3PCB8dispatchEv+0x28>

00000000800026dc <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800026dc:	ff010113          	addi	sp,sp,-16
    800026e0:	00113423          	sd	ra,8(sp)
    800026e4:	00813023          	sd	s0,0(sp)
    800026e8:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800026ec:	00001097          	auipc	ra,0x1
    800026f0:	5e8080e7          	jalr	1512(ra) # 80003cd4 <_Z7kmallocm>
}
    800026f4:	00813083          	ld	ra,8(sp)
    800026f8:	00013403          	ld	s0,0(sp)
    800026fc:	01010113          	addi	sp,sp,16
    80002700:	00008067          	ret

0000000080002704 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002704:	ff010113          	addi	sp,sp,-16
    80002708:	00113423          	sd	ra,8(sp)
    8000270c:	00813023          	sd	s0,0(sp)
    80002710:	01010413          	addi	s0,sp,16
    kfree(p);
    80002714:	00001097          	auipc	ra,0x1
    80002718:	5e8080e7          	jalr	1512(ra) # 80003cfc <_Z5kfreePv>
}
    8000271c:	00813083          	ld	ra,8(sp)
    80002720:	00013403          	ld	s0,0(sp)
    80002724:	01010113          	addi	sp,sp,16
    80002728:	00008067          	ret

000000008000272c <_ZN3PCBD1Ev>:

PCB::~PCB() {
    8000272c:	ff010113          	addi	sp,sp,-16
    80002730:	00113423          	sd	ra,8(sp)
    80002734:	00813023          	sd	s0,0(sp)
    80002738:	01010413          	addi	s0,sp,16
    kfree(beginSP);
    8000273c:	03053503          	ld	a0,48(a0)
    80002740:	00001097          	auipc	ra,0x1
    80002744:	5bc080e7          	jalr	1468(ra) # 80003cfc <_Z5kfreePv>
}
    80002748:	00813083          	ld	ra,8(sp)
    8000274c:	00013403          	ld	s0,0(sp)
    80002750:	01010113          	addi	sp,sp,16
    80002754:	00008067          	ret

0000000080002758 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    80002758:	fe010113          	addi	sp,sp,-32
    8000275c:	00113c23          	sd	ra,24(sp)
    80002760:	00813823          	sd	s0,16(sp)
    80002764:	00913423          	sd	s1,8(sp)
    80002768:	01213023          	sd	s2,0(sp)
    8000276c:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002770:	05800513          	li	a0,88
    80002774:	00000097          	auipc	ra,0x0
    80002778:	f68080e7          	jalr	-152(ra) # 800026dc <_ZN3PCBnwEm>
    8000277c:	00050493          	mv	s1,a0
    80002780:	00000713          	li	a4,0
    80002784:	00000693          	li	a3,0
    80002788:	00000613          	li	a2,0
    8000278c:	00000593          	li	a1,0
    80002790:	00000097          	auipc	ra,0x0
    80002794:	e30080e7          	jalr	-464(ra) # 800025c0 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    80002798:	00100793          	li	a5,1
    8000279c:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    800027a0:	00000097          	auipc	ra,0x0
    800027a4:	65c080e7          	jalr	1628(ra) # 80002dfc <_ZN9Scheduler3getEv>
    800027a8:	00008797          	auipc	a5,0x8
    800027ac:	08a7b423          	sd	a0,136(a5) # 8000a830 <_ZN3PCB7runningE>
    800027b0:	00100793          	li	a5,1
    800027b4:	02f52c23          	sw	a5,56(a0)
    PCB::running->setState(PCB::RUNNING);
}
    800027b8:	01813083          	ld	ra,24(sp)
    800027bc:	01013403          	ld	s0,16(sp)
    800027c0:	00813483          	ld	s1,8(sp)
    800027c4:	00013903          	ld	s2,0(sp)
    800027c8:	02010113          	addi	sp,sp,32
    800027cc:	00008067          	ret
    800027d0:	00050913          	mv	s2,a0
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800027d4:	00048513          	mv	a0,s1
    800027d8:	00000097          	auipc	ra,0x0
    800027dc:	f2c080e7          	jalr	-212(ra) # 80002704 <_ZN3PCBdlEPv>
    800027e0:	00090513          	mv	a0,s2
    800027e4:	00009097          	auipc	ra,0x9
    800027e8:	1a4080e7          	jalr	420(ra) # 8000b988 <_Unwind_Resume>

00000000800027ec <_Z41__static_initialization_and_destruction_0ii>:
}

void KConsole::initialize() {
    hasCharacters = new KSemaphore(0);

}
    800027ec:	00100793          	li	a5,1
    800027f0:	00f50463          	beq	a0,a5,800027f8 <_Z41__static_initialization_and_destruction_0ii+0xc>
    800027f4:	00008067          	ret
    800027f8:	000107b7          	lui	a5,0x10
    800027fc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002800:	fef59ae3          	bne	a1,a5,800027f4 <_Z41__static_initialization_and_destruction_0ii+0x8>
    80002804:	fe010113          	addi	sp,sp,-32
    80002808:	00113c23          	sd	ra,24(sp)
    8000280c:	00813823          	sd	s0,16(sp)
    80002810:	00913423          	sd	s1,8(sp)
    80002814:	01213023          	sd	s2,0(sp)
    80002818:	02010413          	addi	s0,sp,32
KSemaphore* KConsole::hasCharacters = new KSemaphore(0);
    8000281c:	01800513          	li	a0,24
    80002820:	00001097          	auipc	ra,0x1
    80002824:	754080e7          	jalr	1876(ra) # 80003f74 <_ZN10KSemaphorenwEm>
    80002828:	00050493          	mv	s1,a0
    8000282c:	00000593          	li	a1,0
    80002830:	00001097          	auipc	ra,0x1
    80002834:	4f4080e7          	jalr	1268(ra) # 80003d24 <_ZN10KSemaphoreC1Ei>
    80002838:	00008797          	auipc	a5,0x8
    8000283c:	0097b823          	sd	s1,16(a5) # 8000a848 <_ZN8KConsole13hasCharactersE>
}
    80002840:	01813083          	ld	ra,24(sp)
    80002844:	01013403          	ld	s0,16(sp)
    80002848:	00813483          	ld	s1,8(sp)
    8000284c:	00013903          	ld	s2,0(sp)
    80002850:	02010113          	addi	sp,sp,32
    80002854:	00008067          	ret
    80002858:	00050913          	mv	s2,a0
KSemaphore* KConsole::hasCharacters = new KSemaphore(0);
    8000285c:	00048513          	mv	a0,s1
    80002860:	00001097          	auipc	ra,0x1
    80002864:	73c080e7          	jalr	1852(ra) # 80003f9c <_ZN10KSemaphoredlEPv>
    80002868:	00090513          	mv	a0,s2
    8000286c:	00009097          	auipc	ra,0x9
    80002870:	11c080e7          	jalr	284(ra) # 8000b988 <_Unwind_Resume>

0000000080002874 <_ZN8KConsole7putCharEc>:
{
    80002874:	fe010113          	addi	sp,sp,-32
    80002878:	00113c23          	sd	ra,24(sp)
    8000287c:	00813823          	sd	s0,16(sp)
    80002880:	00913423          	sd	s1,8(sp)
    80002884:	02010413          	addi	s0,sp,32
    80002888:	00050493          	mv	s1,a0
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    8000288c:	01000513          	li	a0,16
    80002890:	00001097          	auipc	ra,0x1
    80002894:	444080e7          	jalr	1092(ra) # 80003cd4 <_Z7kmallocm>
    newElem->next = 0;
    80002898:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    8000289c:	00950423          	sb	s1,8(a0)
    if(head == 0)
    800028a0:	00008797          	auipc	a5,0x8
    800028a4:	fb07b783          	ld	a5,-80(a5) # 8000a850 <_ZN8KConsole4headE>
    800028a8:	02078663          	beqz	a5,800028d4 <_ZN8KConsole7putCharEc+0x60>
        tail->next = newElem;
    800028ac:	00008797          	auipc	a5,0x8
    800028b0:	f9c78793          	addi	a5,a5,-100 # 8000a848 <_ZN8KConsole13hasCharactersE>
    800028b4:	0107b703          	ld	a4,16(a5)
    800028b8:	00a73023          	sd	a0,0(a4)
        tail = newElem;
    800028bc:	00a7b823          	sd	a0,16(a5)
}
    800028c0:	01813083          	ld	ra,24(sp)
    800028c4:	01013403          	ld	s0,16(sp)
    800028c8:	00813483          	ld	s1,8(sp)
    800028cc:	02010113          	addi	sp,sp,32
    800028d0:	00008067          	ret
        head = tail = newElem;
    800028d4:	00008797          	auipc	a5,0x8
    800028d8:	f7478793          	addi	a5,a5,-140 # 8000a848 <_ZN8KConsole13hasCharactersE>
    800028dc:	00a7b823          	sd	a0,16(a5)
    800028e0:	00a7b423          	sd	a0,8(a5)
    800028e4:	fddff06f          	j	800028c0 <_ZN8KConsole7putCharEc+0x4c>

00000000800028e8 <_ZN8KConsole7getCharEv>:
{
    800028e8:	fe010113          	addi	sp,sp,-32
    800028ec:	00113c23          	sd	ra,24(sp)
    800028f0:	00813823          	sd	s0,16(sp)
    800028f4:	00913423          	sd	s1,8(sp)
    800028f8:	02010413          	addi	s0,sp,32
    if(head == 0)
    800028fc:	00008517          	auipc	a0,0x8
    80002900:	f5453503          	ld	a0,-172(a0) # 8000a850 <_ZN8KConsole4headE>
    80002904:	04050263          	beqz	a0,80002948 <_ZN8KConsole7getCharEv+0x60>
    head = head->next;
    80002908:	00053783          	ld	a5,0(a0)
    8000290c:	00008717          	auipc	a4,0x8
    80002910:	f4f73223          	sd	a5,-188(a4) # 8000a850 <_ZN8KConsole4headE>
    if(head == 0)
    80002914:	02078463          	beqz	a5,8000293c <_ZN8KConsole7getCharEv+0x54>
    char c = ret->data;
    80002918:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    8000291c:	00001097          	auipc	ra,0x1
    80002920:	3e0080e7          	jalr	992(ra) # 80003cfc <_Z5kfreePv>
}
    80002924:	00048513          	mv	a0,s1
    80002928:	01813083          	ld	ra,24(sp)
    8000292c:	01013403          	ld	s0,16(sp)
    80002930:	00813483          	ld	s1,8(sp)
    80002934:	02010113          	addi	sp,sp,32
    80002938:	00008067          	ret
        tail = 0;
    8000293c:	00008797          	auipc	a5,0x8
    80002940:	f007be23          	sd	zero,-228(a5) # 8000a858 <_ZN8KConsole4tailE>
    80002944:	fd5ff06f          	j	80002918 <_ZN8KConsole7getCharEv+0x30>
        return 0;
    80002948:	00000493          	li	s1,0
    8000294c:	fd9ff06f          	j	80002924 <_ZN8KConsole7getCharEv+0x3c>

0000000080002950 <_ZN8KConsole12putCharacterEc>:
{
    80002950:	ff010113          	addi	sp,sp,-16
    80002954:	00113423          	sd	ra,8(sp)
    80002958:	00813023          	sd	s0,0(sp)
    8000295c:	01010413          	addi	s0,sp,16
    putChar(c);
    80002960:	00000097          	auipc	ra,0x0
    80002964:	f14080e7          	jalr	-236(ra) # 80002874 <_ZN8KConsole7putCharEc>
    hasCharacters->signal();
    80002968:	00008517          	auipc	a0,0x8
    8000296c:	ee053503          	ld	a0,-288(a0) # 8000a848 <_ZN8KConsole13hasCharactersE>
    80002970:	00001097          	auipc	ra,0x1
    80002974:	5bc080e7          	jalr	1468(ra) # 80003f2c <_ZN10KSemaphore6signalEv>
}
    80002978:	00813083          	ld	ra,8(sp)
    8000297c:	00013403          	ld	s0,0(sp)
    80002980:	01010113          	addi	sp,sp,16
    80002984:	00008067          	ret

0000000080002988 <_ZN8KConsole12getCharacterEv>:
{
    80002988:	ff010113          	addi	sp,sp,-16
    8000298c:	00113423          	sd	ra,8(sp)
    80002990:	00813023          	sd	s0,0(sp)
    80002994:	01010413          	addi	s0,sp,16
    KConsole::hasCharacters->wait();
    80002998:	00008517          	auipc	a0,0x8
    8000299c:	eb053503          	ld	a0,-336(a0) # 8000a848 <_ZN8KConsole13hasCharactersE>
    800029a0:	00001097          	auipc	ra,0x1
    800029a4:	42c080e7          	jalr	1068(ra) # 80003dcc <_ZN10KSemaphore4waitEv>
    return getChar();
    800029a8:	00000097          	auipc	ra,0x0
    800029ac:	f40080e7          	jalr	-192(ra) # 800028e8 <_ZN8KConsole7getCharEv>
}
    800029b0:	00813083          	ld	ra,8(sp)
    800029b4:	00013403          	ld	s0,0(sp)
    800029b8:	01010113          	addi	sp,sp,16
    800029bc:	00008067          	ret

00000000800029c0 <_ZN8KConsole10initializeEv>:
void KConsole::initialize() {
    800029c0:	fe010113          	addi	sp,sp,-32
    800029c4:	00113c23          	sd	ra,24(sp)
    800029c8:	00813823          	sd	s0,16(sp)
    800029cc:	00913423          	sd	s1,8(sp)
    800029d0:	01213023          	sd	s2,0(sp)
    800029d4:	02010413          	addi	s0,sp,32
    hasCharacters = new KSemaphore(0);
    800029d8:	01800513          	li	a0,24
    800029dc:	00001097          	auipc	ra,0x1
    800029e0:	598080e7          	jalr	1432(ra) # 80003f74 <_ZN10KSemaphorenwEm>
    800029e4:	00050493          	mv	s1,a0
    800029e8:	00000593          	li	a1,0
    800029ec:	00001097          	auipc	ra,0x1
    800029f0:	338080e7          	jalr	824(ra) # 80003d24 <_ZN10KSemaphoreC1Ei>
    800029f4:	00008797          	auipc	a5,0x8
    800029f8:	e497ba23          	sd	s1,-428(a5) # 8000a848 <_ZN8KConsole13hasCharactersE>
}
    800029fc:	01813083          	ld	ra,24(sp)
    80002a00:	01013403          	ld	s0,16(sp)
    80002a04:	00813483          	ld	s1,8(sp)
    80002a08:	00013903          	ld	s2,0(sp)
    80002a0c:	02010113          	addi	sp,sp,32
    80002a10:	00008067          	ret
    80002a14:	00050913          	mv	s2,a0
    hasCharacters = new KSemaphore(0);
    80002a18:	00048513          	mv	a0,s1
    80002a1c:	00001097          	auipc	ra,0x1
    80002a20:	580080e7          	jalr	1408(ra) # 80003f9c <_ZN10KSemaphoredlEPv>
    80002a24:	00090513          	mv	a0,s2
    80002a28:	00009097          	auipc	ra,0x9
    80002a2c:	f60080e7          	jalr	-160(ra) # 8000b988 <_Unwind_Resume>

0000000080002a30 <_GLOBAL__sub_I__ZN8KConsole4headE>:
}
    80002a30:	ff010113          	addi	sp,sp,-16
    80002a34:	00113423          	sd	ra,8(sp)
    80002a38:	00813023          	sd	s0,0(sp)
    80002a3c:	01010413          	addi	s0,sp,16
    80002a40:	000105b7          	lui	a1,0x10
    80002a44:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002a48:	00100513          	li	a0,1
    80002a4c:	00000097          	auipc	ra,0x0
    80002a50:	da0080e7          	jalr	-608(ra) # 800027ec <_Z41__static_initialization_and_destruction_0ii>
    80002a54:	00813083          	ld	ra,8(sp)
    80002a58:	00013403          	ld	s0,0(sp)
    80002a5c:	01010113          	addi	sp,sp,16
    80002a60:	00008067          	ret

0000000080002a64 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80002a64:	ff010113          	addi	sp,sp,-16
    80002a68:	00813423          	sd	s0,8(sp)
    80002a6c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80002a70:	00008797          	auipc	a5,0x8
    80002a74:	d487b783          	ld	a5,-696(a5) # 8000a7b8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002a78:	0007b603          	ld	a2,0(a5)
    80002a7c:	00500793          	li	a5,5
    80002a80:	02f62c23          	sw	a5,56(a2)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80002a84:	00008797          	auipc	a5,0x8
    80002a88:	ddc7b783          	ld	a5,-548(a5) # 8000a860 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80002a8c:	00000593          	li	a1,0
    while(curr != 0)
    80002a90:	02078063          	beqz	a5,80002ab0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    uint64 getTimeToSleep() {return timeToSleep;}
    80002a94:	01863683          	ld	a3,24(a2)
    80002a98:	0187b703          	ld	a4,24(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80002a9c:	00e6e863          	bltu	a3,a4,80002aac <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80002aa0:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80002aa4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002aa8:	fe9ff06f          	j	80002a90 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80002aac:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80002ab0:	02058263          	beqz	a1,80002ad4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    80002ab4:	01863783          	ld	a5,24(a2)
    80002ab8:	0185b703          	ld	a4,24(a1)
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    80002abc:	40e787b3          	sub	a5,a5,a4
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002ac0:	00f63c23          	sd	a5,24(a2)
        prev->nextPCB = PCB::running;
    80002ac4:	00c5b423          	sd	a2,8(a1)
    }
}
    80002ac8:	00813403          	ld	s0,8(sp)
    80002acc:	01010113          	addi	sp,sp,16
    80002ad0:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80002ad4:	00008797          	auipc	a5,0x8
    80002ad8:	d8c7b623          	sd	a2,-628(a5) # 8000a860 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    80002adc:	00863783          	ld	a5,8(a2)
    80002ae0:	fe0784e3          	beqz	a5,80002ac8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002ae4:	0187b703          	ld	a4,24(a5)
    80002ae8:	01863683          	ld	a3,24(a2)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    80002aec:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002af0:	00e7bc23          	sd	a4,24(a5)
    80002af4:	fd5ff06f          	j	80002ac8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>

0000000080002af8 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    80002af8:	00008517          	auipc	a0,0x8
    80002afc:	d6853503          	ld	a0,-664(a0) # 8000a860 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002b00:	08050863          	beqz	a0,80002b90 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002b04:	01853783          	ld	a5,24(a0)
    {
        //Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    80002b08:	00100713          	li	a4,1
    80002b0c:	00e78863          	beq	a5,a4,80002b1c <_ZN12SleepPCBList13tryToWakePCBsEv+0x24>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    80002b10:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002b14:	00f53c23          	sd	a5,24(a0)
    80002b18:	00008067          	ret
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002b1c:	06050a63          	beqz	a0,80002b90 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    80002b20:	00008797          	auipc	a5,0x8
    80002b24:	d407b783          	ld	a5,-704(a5) # 8000a860 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002b28:	00a78663          	beq	a5,a0,80002b34 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002b2c:	01853783          	ld	a5,24(a0)
    80002b30:	06079063          	bnez	a5,80002b90 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
{
    80002b34:	fe010113          	addi	sp,sp,-32
    80002b38:	00113c23          	sd	ra,24(sp)
    80002b3c:	00813823          	sd	s0,16(sp)
    80002b40:	00913423          	sd	s1,8(sp)
    80002b44:	02010413          	addi	s0,sp,32
            curr = curr->nextPCB;
    80002b48:	00853483          	ld	s1,8(a0)
            old->nextPCB = 0;
    80002b4c:	00053423          	sd	zero,8(a0)
            Scheduler::put(old);
    80002b50:	00000097          	auipc	ra,0x0
    80002b54:	258080e7          	jalr	600(ra) # 80002da8 <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    80002b58:	00008797          	auipc	a5,0x8
    80002b5c:	d097b423          	sd	s1,-760(a5) # 8000a860 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80002b60:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002b64:	00048c63          	beqz	s1,80002b7c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80002b68:	00008797          	auipc	a5,0x8
    80002b6c:	cf87b783          	ld	a5,-776(a5) # 8000a860 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002b70:	fc978ce3          	beq	a5,s1,80002b48 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80002b74:	0184b783          	ld	a5,24(s1)
    80002b78:	fc0788e3          	beqz	a5,80002b48 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    }
}
    80002b7c:	01813083          	ld	ra,24(sp)
    80002b80:	01013403          	ld	s0,16(sp)
    80002b84:	00813483          	ld	s1,8(sp)
    80002b88:	02010113          	addi	sp,sp,32
    80002b8c:	00008067          	ret
    80002b90:	00008067          	ret

0000000080002b94 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80002b94:	fe010113          	addi	sp,sp,-32
    80002b98:	00113c23          	sd	ra,24(sp)
    80002b9c:	00813823          	sd	s0,16(sp)
    80002ba0:	00913423          	sd	s1,8(sp)
    80002ba4:	01213023          	sd	s2,0(sp)
    80002ba8:	02010413          	addi	s0,sp,32
    80002bac:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80002bb0:	00053503          	ld	a0,0(a0)
    80002bb4:	00853903          	ld	s2,8(a0)
    kfree(first);
    80002bb8:	00001097          	auipc	ra,0x1
    80002bbc:	144080e7          	jalr	324(ra) # 80003cfc <_Z5kfreePv>
    first = newFirst;
    80002bc0:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80002bc4:	00090e63          	beqz	s2,80002be0 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80002bc8:	01813083          	ld	ra,24(sp)
    80002bcc:	01013403          	ld	s0,16(sp)
    80002bd0:	00813483          	ld	s1,8(sp)
    80002bd4:	00013903          	ld	s2,0(sp)
    80002bd8:	02010113          	addi	sp,sp,32
    80002bdc:	00008067          	ret
        first = last = 0;
    80002be0:	0004b423          	sd	zero,8(s1)
    80002be4:	0004b023          	sd	zero,0(s1)
}
    80002be8:	fe1ff06f          	j	80002bc8 <_ZN5Queue3popEv+0x34>

0000000080002bec <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    80002bec:	fe010113          	addi	sp,sp,-32
    80002bf0:	00113c23          	sd	ra,24(sp)
    80002bf4:	00813823          	sd	s0,16(sp)
    80002bf8:	00913423          	sd	s1,8(sp)
    80002bfc:	01213023          	sd	s2,0(sp)
    80002c00:	02010413          	addi	s0,sp,32
    80002c04:	00050493          	mv	s1,a0
    80002c08:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80002c0c:	01000513          	li	a0,16
    80002c10:	00001097          	auipc	ra,0x1
    80002c14:	0c4080e7          	jalr	196(ra) # 80003cd4 <_Z7kmallocm>
    newElem->data = t;
    80002c18:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80002c1c:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80002c20:	0004b783          	ld	a5,0(s1)
    80002c24:	02078463          	beqz	a5,80002c4c <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80002c28:	0084b783          	ld	a5,8(s1)
    80002c2c:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80002c30:	00a4b423          	sd	a0,8(s1)
    }
}
    80002c34:	01813083          	ld	ra,24(sp)
    80002c38:	01013403          	ld	s0,16(sp)
    80002c3c:	00813483          	ld	s1,8(sp)
    80002c40:	00013903          	ld	s2,0(sp)
    80002c44:	02010113          	addi	sp,sp,32
    80002c48:	00008067          	ret
        first = newElem;
    80002c4c:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    80002c50:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80002c54:	00053423          	sd	zero,8(a0)
    80002c58:	0004b783          	ld	a5,0(s1)
    80002c5c:	0007b423          	sd	zero,8(a5)
    80002c60:	fd5ff06f          	j	80002c34 <_ZN5Queue4pushEP3PCB+0x48>

0000000080002c64 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    80002c64:	ff010113          	addi	sp,sp,-16
    80002c68:	00813423          	sd	s0,8(sp)
    80002c6c:	01010413          	addi	s0,sp,16
    if(first == 0)
    80002c70:	00053503          	ld	a0,0(a0)
    80002c74:	00050463          	beqz	a0,80002c7c <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80002c78:	00053503          	ld	a0,0(a0)
}
    80002c7c:	00813403          	ld	s0,8(sp)
    80002c80:	01010113          	addi	sp,sp,16
    80002c84:	00008067          	ret

0000000080002c88 <_ZN5QueueC1Ev>:

Queue::Queue() {
    80002c88:	ff010113          	addi	sp,sp,-16
    80002c8c:	00813423          	sd	s0,8(sp)
    80002c90:	01010413          	addi	s0,sp,16
    first = last = 0;
    80002c94:	00053423          	sd	zero,8(a0)
    80002c98:	00053023          	sd	zero,0(a0)
}
    80002c9c:	00813403          	ld	s0,8(sp)
    80002ca0:	01010113          	addi	sp,sp,16
    80002ca4:	00008067          	ret

0000000080002ca8 <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    80002ca8:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80002cac:	04050063          	beqz	a0,80002cec <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    80002cb0:	fe010113          	addi	sp,sp,-32
    80002cb4:	00113c23          	sd	ra,24(sp)
    80002cb8:	00813823          	sd	s0,16(sp)
    80002cbc:	00913423          	sd	s1,8(sp)
    80002cc0:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    80002cc4:	00853483          	ld	s1,8(a0)
        kfree(old);
    80002cc8:	00001097          	auipc	ra,0x1
    80002ccc:	034080e7          	jalr	52(ra) # 80003cfc <_Z5kfreePv>
        curr = curr->next;
    80002cd0:	00048513          	mv	a0,s1
    while(curr != 0)
    80002cd4:	fe0498e3          	bnez	s1,80002cc4 <_ZN5QueueD1Ev+0x1c>
    }
}
    80002cd8:	01813083          	ld	ra,24(sp)
    80002cdc:	01013403          	ld	s0,16(sp)
    80002ce0:	00813483          	ld	s1,8(sp)
    80002ce4:	02010113          	addi	sp,sp,32
    80002ce8:	00008067          	ret
    80002cec:	00008067          	ret

0000000080002cf0 <_ZN5Queue4sizeEv>:

int Queue::size() {
    80002cf0:	ff010113          	addi	sp,sp,-16
    80002cf4:	00813423          	sd	s0,8(sp)
    80002cf8:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80002cfc:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    80002d00:	00000513          	li	a0,0
    while(curr != 0)
    80002d04:	00078863          	beqz	a5,80002d14 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    80002d08:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80002d0c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002d10:	ff5ff06f          	j	80002d04 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80002d14:	00813403          	ld	s0,8(sp)
    80002d18:	01010113          	addi	sp,sp,16
    80002d1c:	00008067          	ret

0000000080002d20 <_ZN9SchedulernwEm>:
PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;


void *Scheduler::operator new(size_t size)
{
    80002d20:	ff010113          	addi	sp,sp,-16
    80002d24:	00113423          	sd	ra,8(sp)
    80002d28:	00813023          	sd	s0,0(sp)
    80002d2c:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80002d30:	00001097          	auipc	ra,0x1
    80002d34:	fa4080e7          	jalr	-92(ra) # 80003cd4 <_Z7kmallocm>
}
    80002d38:	00813083          	ld	ra,8(sp)
    80002d3c:	00013403          	ld	s0,0(sp)
    80002d40:	01010113          	addi	sp,sp,16
    80002d44:	00008067          	ret

0000000080002d48 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80002d48:	ff010113          	addi	sp,sp,-16
    80002d4c:	00113423          	sd	ra,8(sp)
    80002d50:	00813023          	sd	s0,0(sp)
    80002d54:	01010413          	addi	s0,sp,16
    kfree(p);
    80002d58:	00001097          	auipc	ra,0x1
    80002d5c:	fa4080e7          	jalr	-92(ra) # 80003cfc <_Z5kfreePv>
}
    80002d60:	00813083          	ld	ra,8(sp)
    80002d64:	00013403          	ld	s0,0(sp)
    80002d68:	01010113          	addi	sp,sp,16
    80002d6c:	00008067          	ret

0000000080002d70 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80002d70:	ff010113          	addi	sp,sp,-16
    80002d74:	00813423          	sd	s0,8(sp)
    80002d78:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80002d7c:	00008797          	auipc	a5,0x8
    80002d80:	aec7b783          	ld	a5,-1300(a5) # 8000a868 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80002d84:	00000513          	li	a0,0
    while(curr != 0)
    80002d88:	00078863          	beqz	a5,80002d98 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80002d8c:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80002d90:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002d94:	ff5ff06f          	j	80002d88 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80002d98:	0005051b          	sext.w	a0,a0
    80002d9c:	00813403          	ld	s0,8(sp)
    80002da0:	01010113          	addi	sp,sp,16
    80002da4:	00008067          	ret

0000000080002da8 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80002da8:	ff010113          	addi	sp,sp,-16
    80002dac:	00813423          	sd	s0,8(sp)
    80002db0:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80002db4:	02052c23          	sw	zero,56(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80002db8:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80002dbc:	00008797          	auipc	a5,0x8
    80002dc0:	aac7b783          	ld	a5,-1364(a5) # 8000a868 <_ZN9Scheduler16schedulerPCBHeadE>
    80002dc4:	02078263          	beqz	a5,80002de8 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80002dc8:	00008797          	auipc	a5,0x8
    80002dcc:	aa078793          	addi	a5,a5,-1376 # 8000a868 <_ZN9Scheduler16schedulerPCBHeadE>
    80002dd0:	0087b703          	ld	a4,8(a5)
    80002dd4:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80002dd8:	00a7b423          	sd	a0,8(a5)
    }
}
    80002ddc:	00813403          	ld	s0,8(sp)
    80002de0:	01010113          	addi	sp,sp,16
    80002de4:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80002de8:	00008797          	auipc	a5,0x8
    80002dec:	a8078793          	addi	a5,a5,-1408 # 8000a868 <_ZN9Scheduler16schedulerPCBHeadE>
    80002df0:	00a7b423          	sd	a0,8(a5)
    80002df4:	00a7b023          	sd	a0,0(a5)
    80002df8:	fe5ff06f          	j	80002ddc <_ZN9Scheduler3putEP3PCB+0x34>

0000000080002dfc <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80002dfc:	ff010113          	addi	sp,sp,-16
    80002e00:	00813423          	sd	s0,8(sp)
    80002e04:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80002e08:	00008517          	auipc	a0,0x8
    80002e0c:	a6053503          	ld	a0,-1440(a0) # 8000a868 <_ZN9Scheduler16schedulerPCBHeadE>
    80002e10:	00050c63          	beqz	a0,80002e28 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80002e14:	00853783          	ld	a5,8(a0)
    80002e18:	00078e63          	beqz	a5,80002e34 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80002e1c:	00008717          	auipc	a4,0x8
    80002e20:	a4f73623          	sd	a5,-1460(a4) # 8000a868 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80002e24:	00053423          	sd	zero,8(a0)
    return retval;
}
    80002e28:	00813403          	ld	s0,8(sp)
    80002e2c:	01010113          	addi	sp,sp,16
    80002e30:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80002e34:	00008797          	auipc	a5,0x8
    80002e38:	a3478793          	addi	a5,a5,-1484 # 8000a868 <_ZN9Scheduler16schedulerPCBHeadE>
    80002e3c:	0007b423          	sd	zero,8(a5)
    80002e40:	0007b023          	sd	zero,0(a5)
    80002e44:	fe1ff06f          	j	80002e24 <_ZN9Scheduler3getEv+0x28>

0000000080002e48 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80002e48:	ff010113          	addi	sp,sp,-16
    80002e4c:	00113423          	sd	ra,8(sp)
    80002e50:	00813023          	sd	s0,0(sp)
    80002e54:	01010413          	addi	s0,sp,16

    Riscv::kernelMain();
    80002e58:	00001097          	auipc	ra,0x1
    80002e5c:	a08080e7          	jalr	-1528(ra) # 80003860 <_ZN5Riscv10kernelMainEv>
    Riscv::disableInterrupts();

    Riscv::endSystem();

    Riscv::printString("End...");*/
    80002e60:	00813083          	ld	ra,8(sp)
    80002e64:	00013403          	ld	s0,0(sp)
    80002e68:	01010113          	addi	sp,sp,16
    80002e6c:	00008067          	ret

0000000080002e70 <_ZN6ThreadD1Ev>:
    Riscv::printString("Thread runner started...\n");
    Thread* thr = (Thread*)t;
    thr->run();
}

Thread::~Thread() {
    80002e70:	ff010113          	addi	sp,sp,-16
    80002e74:	00113423          	sd	ra,8(sp)
    80002e78:	00813023          	sd	s0,0(sp)
    80002e7c:	01010413          	addi	s0,sp,16
    80002e80:	00008797          	auipc	a5,0x8
    80002e84:	83878793          	addi	a5,a5,-1992 # 8000a6b8 <_ZTV6Thread+0x10>
    80002e88:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80002e8c:	00853503          	ld	a0,8(a0)
    80002e90:	ffffe097          	auipc	ra,0xffffe
    80002e94:	3e8080e7          	jalr	1000(ra) # 80001278 <mem_free>
}
    80002e98:	00813083          	ld	ra,8(sp)
    80002e9c:	00013403          	ld	s0,0(sp)
    80002ea0:	01010113          	addi	sp,sp,16
    80002ea4:	00008067          	ret

0000000080002ea8 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal((void*)myHandle);
}

Semaphore::~Semaphore() {
    80002ea8:	ff010113          	addi	sp,sp,-16
    80002eac:	00113423          	sd	ra,8(sp)
    80002eb0:	00813023          	sd	s0,0(sp)
    80002eb4:	01010413          	addi	s0,sp,16
    80002eb8:	00008797          	auipc	a5,0x8
    80002ebc:	82878793          	addi	a5,a5,-2008 # 8000a6e0 <_ZTV9Semaphore+0x10>
    80002ec0:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80002ec4:	00853503          	ld	a0,8(a0)
    80002ec8:	ffffe097          	auipc	ra,0xffffe
    80002ecc:	3b0080e7          	jalr	944(ra) # 80001278 <mem_free>
}
    80002ed0:	00813083          	ld	ra,8(sp)
    80002ed4:	00013403          	ld	s0,0(sp)
    80002ed8:	01010113          	addi	sp,sp,16
    80002edc:	00008067          	ret

0000000080002ee0 <_ZN6Thread6runnerEPv>:
void Thread::runner(void *t) {
    80002ee0:	fe010113          	addi	sp,sp,-32
    80002ee4:	00113c23          	sd	ra,24(sp)
    80002ee8:	00813823          	sd	s0,16(sp)
    80002eec:	00913423          	sd	s1,8(sp)
    80002ef0:	02010413          	addi	s0,sp,32
    80002ef4:	00050493          	mv	s1,a0
    Riscv::printString("Thread runner started...\n");
    80002ef8:	00005517          	auipc	a0,0x5
    80002efc:	26850513          	addi	a0,a0,616 # 80008160 <CONSOLE_STATUS+0x150>
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	4b0080e7          	jalr	1200(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    thr->run();
    80002f08:	0004b783          	ld	a5,0(s1)
    80002f0c:	0107b783          	ld	a5,16(a5)
    80002f10:	00048513          	mv	a0,s1
    80002f14:	000780e7          	jalr	a5
}
    80002f18:	01813083          	ld	ra,24(sp)
    80002f1c:	01013403          	ld	s0,16(sp)
    80002f20:	00813483          	ld	s1,8(sp)
    80002f24:	02010113          	addi	sp,sp,32
    80002f28:	00008067          	ret

0000000080002f2c <_Znwm>:
{
    80002f2c:	ff010113          	addi	sp,sp,-16
    80002f30:	00113423          	sd	ra,8(sp)
    80002f34:	00813023          	sd	s0,0(sp)
    80002f38:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002f3c:	ffffe097          	auipc	ra,0xffffe
    80002f40:	30c080e7          	jalr	780(ra) # 80001248 <mem_alloc>
}
    80002f44:	00813083          	ld	ra,8(sp)
    80002f48:	00013403          	ld	s0,0(sp)
    80002f4c:	01010113          	addi	sp,sp,16
    80002f50:	00008067          	ret

0000000080002f54 <_ZdlPv>:
{
    80002f54:	ff010113          	addi	sp,sp,-16
    80002f58:	00113423          	sd	ra,8(sp)
    80002f5c:	00813023          	sd	s0,0(sp)
    80002f60:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002f64:	ffffe097          	auipc	ra,0xffffe
    80002f68:	314080e7          	jalr	788(ra) # 80001278 <mem_free>
}
    80002f6c:	00813083          	ld	ra,8(sp)
    80002f70:	00013403          	ld	s0,0(sp)
    80002f74:	01010113          	addi	sp,sp,16
    80002f78:	00008067          	ret

0000000080002f7c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002f7c:	fe010113          	addi	sp,sp,-32
    80002f80:	00113c23          	sd	ra,24(sp)
    80002f84:	00813823          	sd	s0,16(sp)
    80002f88:	00913423          	sd	s1,8(sp)
    80002f8c:	02010413          	addi	s0,sp,32
    80002f90:	00050493          	mv	s1,a0
}
    80002f94:	00000097          	auipc	ra,0x0
    80002f98:	edc080e7          	jalr	-292(ra) # 80002e70 <_ZN6ThreadD1Ev>
    80002f9c:	00048513          	mv	a0,s1
    80002fa0:	00000097          	auipc	ra,0x0
    80002fa4:	fb4080e7          	jalr	-76(ra) # 80002f54 <_ZdlPv>
    80002fa8:	01813083          	ld	ra,24(sp)
    80002fac:	01013403          	ld	s0,16(sp)
    80002fb0:	00813483          	ld	s1,8(sp)
    80002fb4:	02010113          	addi	sp,sp,32
    80002fb8:	00008067          	ret

0000000080002fbc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002fbc:	fe010113          	addi	sp,sp,-32
    80002fc0:	00113c23          	sd	ra,24(sp)
    80002fc4:	00813823          	sd	s0,16(sp)
    80002fc8:	00913423          	sd	s1,8(sp)
    80002fcc:	02010413          	addi	s0,sp,32
    80002fd0:	00050493          	mv	s1,a0
}
    80002fd4:	00000097          	auipc	ra,0x0
    80002fd8:	ed4080e7          	jalr	-300(ra) # 80002ea8 <_ZN9SemaphoreD1Ev>
    80002fdc:	00048513          	mv	a0,s1
    80002fe0:	00000097          	auipc	ra,0x0
    80002fe4:	f74080e7          	jalr	-140(ra) # 80002f54 <_ZdlPv>
    80002fe8:	01813083          	ld	ra,24(sp)
    80002fec:	01013403          	ld	s0,16(sp)
    80002ff0:	00813483          	ld	s1,8(sp)
    80002ff4:	02010113          	addi	sp,sp,32
    80002ff8:	00008067          	ret

0000000080002ffc <_ZN6Thread5startEv>:
    if(myHandle == 0)
    80002ffc:	00853783          	ld	a5,8(a0)
    80003000:	02079c63          	bnez	a5,80003038 <_ZN6Thread5startEv+0x3c>
{
    80003004:	ff010113          	addi	sp,sp,-16
    80003008:	00113423          	sd	ra,8(sp)
    8000300c:	00813023          	sd	s0,0(sp)
    80003010:	01010413          	addi	s0,sp,16
        return thread_create((void**)&myHandle, f, args);
    80003014:	01853603          	ld	a2,24(a0)
    80003018:	01053583          	ld	a1,16(a0)
    8000301c:	00850513          	addi	a0,a0,8
    80003020:	ffffe097          	auipc	ra,0xffffe
    80003024:	284080e7          	jalr	644(ra) # 800012a4 <thread_create>
}
    80003028:	00813083          	ld	ra,8(sp)
    8000302c:	00013403          	ld	s0,0(sp)
    80003030:	01010113          	addi	sp,sp,16
    80003034:	00008067          	ret
        return -1;
    80003038:	fff00513          	li	a0,-1
}
    8000303c:	00008067          	ret

0000000080003040 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003040:	ff010113          	addi	sp,sp,-16
    80003044:	00113423          	sd	ra,8(sp)
    80003048:	00813023          	sd	s0,0(sp)
    8000304c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003050:	ffffe097          	auipc	ra,0xffffe
    80003054:	2d4080e7          	jalr	724(ra) # 80001324 <thread_dispatch>
}
    80003058:	00813083          	ld	ra,8(sp)
    8000305c:	00013403          	ld	s0,0(sp)
    80003060:	01010113          	addi	sp,sp,16
    80003064:	00008067          	ret

0000000080003068 <_ZN6Thread5sleepEm>:
void Thread::sleep(time_t time) {
    80003068:	ff010113          	addi	sp,sp,-16
    8000306c:	00113423          	sd	ra,8(sp)
    80003070:	00813023          	sd	s0,0(sp)
    80003074:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003078:	ffffe097          	auipc	ra,0xffffe
    8000307c:	3b0080e7          	jalr	944(ra) # 80001428 <time_sleep>
}
    80003080:	00813083          	ld	ra,8(sp)
    80003084:	00013403          	ld	s0,0(sp)
    80003088:	01010113          	addi	sp,sp,16
    8000308c:	00008067          	ret

0000000080003090 <_ZN14PeriodicThread6runnerEPv>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    this->time = period;
}

void PeriodicThread::runner(void* pt)
{
    80003090:	fe010113          	addi	sp,sp,-32
    80003094:	00113c23          	sd	ra,24(sp)
    80003098:	00813823          	sd	s0,16(sp)
    8000309c:	00913423          	sd	s1,8(sp)
    800030a0:	02010413          	addi	s0,sp,32
    800030a4:	00050493          	mv	s1,a0
    PeriodicThread* pThread = (PeriodicThread*)pt;
    while(true)
    {
        pThread->periodicActivation();
    800030a8:	0004b783          	ld	a5,0(s1)
    800030ac:	0187b783          	ld	a5,24(a5)
    800030b0:	00048513          	mv	a0,s1
    800030b4:	000780e7          	jalr	a5
        Thread::sleep(pThread->time);
    800030b8:	0204b503          	ld	a0,32(s1)
    800030bc:	00000097          	auipc	ra,0x0
    800030c0:	fac080e7          	jalr	-84(ra) # 80003068 <_ZN6Thread5sleepEm>
    while(true)
    800030c4:	fe5ff06f          	j	800030a8 <_ZN14PeriodicThread6runnerEPv+0x18>

00000000800030c8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args) {
    800030c8:	ff010113          	addi	sp,sp,-16
    800030cc:	00813423          	sd	s0,8(sp)
    800030d0:	01010413          	addi	s0,sp,16
    800030d4:	00007797          	auipc	a5,0x7
    800030d8:	5e478793          	addi	a5,a5,1508 # 8000a6b8 <_ZTV6Thread+0x10>
    800030dc:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    800030e0:	00053423          	sd	zero,8(a0)
    f = body;
    800030e4:	00b53823          	sd	a1,16(a0)
    this->args = args;
    800030e8:	00c53c23          	sd	a2,24(a0)
}
    800030ec:	00813403          	ld	s0,8(sp)
    800030f0:	01010113          	addi	sp,sp,16
    800030f4:	00008067          	ret

00000000800030f8 <_ZN6ThreadC1Ev>:
Thread::Thread()
    800030f8:	ff010113          	addi	sp,sp,-16
    800030fc:	00813423          	sd	s0,8(sp)
    80003100:	01010413          	addi	s0,sp,16
    80003104:	00007797          	auipc	a5,0x7
    80003108:	5b478793          	addi	a5,a5,1460 # 8000a6b8 <_ZTV6Thread+0x10>
    8000310c:	00f53023          	sd	a5,0(a0)
    f = &Thread::runner;
    80003110:	00000797          	auipc	a5,0x0
    80003114:	dd078793          	addi	a5,a5,-560 # 80002ee0 <_ZN6Thread6runnerEPv>
    80003118:	00f53823          	sd	a5,16(a0)
    myHandle = 0;
    8000311c:	00053423          	sd	zero,8(a0)
    args = (void*)this;
    80003120:	00a53c23          	sd	a0,24(a0)
}
    80003124:	00813403          	ld	s0,8(sp)
    80003128:	01010113          	addi	sp,sp,16
    8000312c:	00008067          	ret

0000000080003130 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003130:	00853503          	ld	a0,8(a0)
    80003134:	02050663          	beqz	a0,80003160 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80003138:	ff010113          	addi	sp,sp,-16
    8000313c:	00113423          	sd	ra,8(sp)
    80003140:	00813023          	sd	s0,0(sp)
    80003144:	01010413          	addi	s0,sp,16
    return sem_wait((void *) myHandle);
    80003148:	ffffe097          	auipc	ra,0xffffe
    8000314c:	288080e7          	jalr	648(ra) # 800013d0 <sem_wait>
}
    80003150:	00813083          	ld	ra,8(sp)
    80003154:	00013403          	ld	s0,0(sp)
    80003158:	01010113          	addi	sp,sp,16
    8000315c:	00008067          	ret
        return -1;
    80003160:	fff00513          	li	a0,-1
}
    80003164:	00008067          	ret

0000000080003168 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80003168:	fe010113          	addi	sp,sp,-32
    8000316c:	00113c23          	sd	ra,24(sp)
    80003170:	00813823          	sd	s0,16(sp)
    80003174:	00913423          	sd	s1,8(sp)
    80003178:	02010413          	addi	s0,sp,32
    8000317c:	00050493          	mv	s1,a0
    80003180:	00007797          	auipc	a5,0x7
    80003184:	56078793          	addi	a5,a5,1376 # 8000a6e0 <_ZTV9Semaphore+0x10>
    80003188:	00f53023          	sd	a5,0(a0)
    int retval = sem_open((void**)&myHandle, init);
    8000318c:	00850513          	addi	a0,a0,8
    80003190:	ffffe097          	auipc	ra,0xffffe
    80003194:	1dc080e7          	jalr	476(ra) # 8000136c <sem_open>
    if(retval != 0)
    80003198:	00050463          	beqz	a0,800031a0 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    8000319c:	0004b423          	sd	zero,8(s1)
}
    800031a0:	01813083          	ld	ra,24(sp)
    800031a4:	01013403          	ld	s0,16(sp)
    800031a8:	00813483          	ld	s1,8(sp)
    800031ac:	02010113          	addi	sp,sp,32
    800031b0:	00008067          	ret

00000000800031b4 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    800031b4:	00853503          	ld	a0,8(a0)
    800031b8:	02050663          	beqz	a0,800031e4 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    800031bc:	ff010113          	addi	sp,sp,-16
    800031c0:	00113423          	sd	ra,8(sp)
    800031c4:	00813023          	sd	s0,0(sp)
    800031c8:	01010413          	addi	s0,sp,16
    return sem_signal((void*)myHandle);
    800031cc:	ffffe097          	auipc	ra,0xffffe
    800031d0:	230080e7          	jalr	560(ra) # 800013fc <sem_signal>
}
    800031d4:	00813083          	ld	ra,8(sp)
    800031d8:	00013403          	ld	s0,0(sp)
    800031dc:	01010113          	addi	sp,sp,16
    800031e0:	00008067          	ret
        return -1;
    800031e4:	fff00513          	li	a0,-1
}
    800031e8:	00008067          	ret

00000000800031ec <_ZN7Console4getcEv>:
char Console::getc() {
    800031ec:	ff010113          	addi	sp,sp,-16
    800031f0:	00813423          	sd	s0,8(sp)
    800031f4:	01010413          	addi	s0,sp,16
}
    800031f8:	00000513          	li	a0,0
    800031fc:	00813403          	ld	s0,8(sp)
    80003200:	01010113          	addi	sp,sp,16
    80003204:	00008067          	ret

0000000080003208 <_ZN7Console4putcEc>:
void Console::putc(char) {
    80003208:	ff010113          	addi	sp,sp,-16
    8000320c:	00813423          	sd	s0,8(sp)
    80003210:	01010413          	addi	s0,sp,16
}
    80003214:	00813403          	ld	s0,8(sp)
    80003218:	01010113          	addi	sp,sp,16
    8000321c:	00008067          	ret

0000000080003220 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    80003220:	fe010113          	addi	sp,sp,-32
    80003224:	00113c23          	sd	ra,24(sp)
    80003228:	00813823          	sd	s0,16(sp)
    8000322c:	00913423          	sd	s1,8(sp)
    80003230:	01213023          	sd	s2,0(sp)
    80003234:	02010413          	addi	s0,sp,32
    80003238:	00050493          	mv	s1,a0
    8000323c:	00058913          	mv	s2,a1
    80003240:	00050613          	mv	a2,a0
    80003244:	00000597          	auipc	a1,0x0
    80003248:	e4c58593          	addi	a1,a1,-436 # 80003090 <_ZN14PeriodicThread6runnerEPv>
    8000324c:	00000097          	auipc	ra,0x0
    80003250:	e7c080e7          	jalr	-388(ra) # 800030c8 <_ZN6ThreadC1EPFvPvES0_>
    80003254:	00007797          	auipc	a5,0x7
    80003258:	3fc78793          	addi	a5,a5,1020 # 8000a650 <_ZTV14PeriodicThread+0x10>
    8000325c:	00f4b023          	sd	a5,0(s1)
    this->time = period;
    80003260:	0324b023          	sd	s2,32(s1)
}
    80003264:	01813083          	ld	ra,24(sp)
    80003268:	01013403          	ld	s0,16(sp)
    8000326c:	00813483          	ld	s1,8(sp)
    80003270:	00013903          	ld	s2,0(sp)
    80003274:	02010113          	addi	sp,sp,32
    80003278:	00008067          	ret

000000008000327c <_Z14periodicRunnerPv>:

#include "../h/threadWrapperFunctions.hpp"
#include "../h/syscall_cpp.hpp"

void periodicRunner(void* t)
{
    8000327c:	ff010113          	addi	sp,sp,-16
    80003280:	00813423          	sd	s0,8(sp)
    80003284:	01010413          	addi	s0,sp,16
    while(true)
    {
        pthr->periodicActivation();
        Thread::sleep()
    }*/
}
    80003288:	00813403          	ld	s0,8(sp)
    8000328c:	01010113          	addi	sp,sp,16
    80003290:	00008067          	ret

0000000080003294 <_Z13regularRunnerPv>:

void regularRunner(void* t)
{
    80003294:	ff010113          	addi	sp,sp,-16
    80003298:	00813423          	sd	s0,8(sp)
    8000329c:	01010413          	addi	s0,sp,16
    //Thread* thr = (Thread*)t;
    //thr->run();
}
    800032a0:	00813403          	ld	s0,8(sp)
    800032a4:	01010113          	addi	sp,sp,16
    800032a8:	00008067          	ret

00000000800032ac <_ZN5Riscv15userMainWrapperEPv>:
    endSystem();

    Riscv::printString("End...");
}

void Riscv::userMainWrapper(void* ) {
    800032ac:	ff010113          	addi	sp,sp,-16
    800032b0:	00113423          	sd	ra,8(sp)
    800032b4:	00813023          	sd	s0,0(sp)
    800032b8:	01010413          	addi	s0,sp,16
    userMain();
    800032bc:	00002097          	auipc	ra,0x2
    800032c0:	74c080e7          	jalr	1868(ra) # 80005a08 <_Z8userMainv>
}
    800032c4:	00813083          	ld	ra,8(sp)
    800032c8:	00013403          	ld	s0,0(sp)
    800032cc:	01010113          	addi	sp,sp,16
    800032d0:	00008067          	ret

00000000800032d4 <_ZN5Riscv24getCharactersFromConsoleEv>:
{
    800032d4:	ff010113          	addi	sp,sp,-16
    800032d8:	00813423          	sd	s0,8(sp)
    800032dc:	01010413          	addi	s0,sp,16
}
    800032e0:	00813403          	ld	s0,8(sp)
    800032e4:	01010113          	addi	sp,sp,16
    800032e8:	00008067          	ret

00000000800032ec <_ZN5Riscv10initSystemEv>:
{
    800032ec:	ff010113          	addi	sp,sp,-16
    800032f0:	00113423          	sd	ra,8(sp)
    800032f4:	00813023          	sd	s0,0(sp)
    800032f8:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    800032fc:	00007797          	auipc	a5,0x7
    80003300:	4a47b783          	ld	a5,1188(a5) # 8000a7a0 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003304:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003308:	fffff097          	auipc	ra,0xfffff
    8000330c:	450080e7          	jalr	1104(ra) # 80002758 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003310:	fffff097          	auipc	ra,0xfffff
    80003314:	6b0080e7          	jalr	1712(ra) # 800029c0 <_ZN8KConsole10initializeEv>
}
    80003318:	00813083          	ld	ra,8(sp)
    8000331c:	00013403          	ld	s0,0(sp)
    80003320:	01010113          	addi	sp,sp,16
    80003324:	00008067          	ret

0000000080003328 <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    80003328:	ff010113          	addi	sp,sp,-16
    8000332c:	00813423          	sd	s0,8(sp)
    80003330:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003334:	00200793          	li	a5,2
    80003338:	1007a073          	csrs	sstatus,a5
}
    8000333c:	00813403          	ld	s0,8(sp)
    80003340:	01010113          	addi	sp,sp,16
    80003344:	00008067          	ret

0000000080003348 <_ZN5Riscv17disableInterruptsEv>:
{
    80003348:	ff010113          	addi	sp,sp,-16
    8000334c:	00813423          	sd	s0,8(sp)
    80003350:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003354:	00200793          	li	a5,2
    80003358:	1007b073          	csrc	sstatus,a5
}
    8000335c:	00813403          	ld	s0,8(sp)
    80003360:	01010113          	addi	sp,sp,16
    80003364:	00008067          	ret

0000000080003368 <_ZN5Riscv9endSystemEv>:
void Riscv::endSystem() {
    80003368:	ff010113          	addi	sp,sp,-16
    8000336c:	00113423          	sd	ra,8(sp)
    80003370:	00813023          	sd	s0,0(sp)
    80003374:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003378:	00000097          	auipc	ra,0x0
    8000337c:	fd0080e7          	jalr	-48(ra) # 80003348 <_ZN5Riscv17disableInterruptsEv>
}
    80003380:	00813083          	ld	ra,8(sp)
    80003384:	00013403          	ld	s0,0(sp)
    80003388:	01010113          	addi	sp,sp,16
    8000338c:	00008067          	ret

0000000080003390 <_ZN5Riscv10popSppSpieEv>:
void Riscv::popSppSpie() {
    80003390:	ff010113          	addi	sp,sp,-16
    80003394:	00813423          	sd	s0,8(sp)
    80003398:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    8000339c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800033a0:	10200073          	sret
}
    800033a4:	00813403          	ld	s0,8(sp)
    800033a8:	01010113          	addi	sp,sp,16
    800033ac:	00008067          	ret

00000000800033b0 <_ZN5Riscv11printStringEPKc>:
{
    800033b0:	fd010113          	addi	sp,sp,-48
    800033b4:	02113423          	sd	ra,40(sp)
    800033b8:	02813023          	sd	s0,32(sp)
    800033bc:	00913c23          	sd	s1,24(sp)
    800033c0:	01213823          	sd	s2,16(sp)
    800033c4:	03010413          	addi	s0,sp,48
    800033c8:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800033cc:	100027f3          	csrr	a5,sstatus
    800033d0:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800033d4:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800033d8:	00200793          	li	a5,2
    800033dc:	1007b073          	csrc	sstatus,a5
    while (*string != '\0')
    800033e0:	0004c503          	lbu	a0,0(s1)
    800033e4:	00050a63          	beqz	a0,800033f8 <_ZN5Riscv11printStringEPKc+0x48>
        __putc(*string);
    800033e8:	00005097          	auipc	ra,0x5
    800033ec:	a84080e7          	jalr	-1404(ra) # 80007e6c <__putc>
        string++;
    800033f0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800033f4:	fedff06f          	j	800033e0 <_ZN5Riscv11printStringEPKc+0x30>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800033f8:	0009091b          	sext.w	s2,s2
    800033fc:	00297913          	andi	s2,s2,2
    80003400:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003404:	10092073          	csrs	sstatus,s2
}
    80003408:	02813083          	ld	ra,40(sp)
    8000340c:	02013403          	ld	s0,32(sp)
    80003410:	01813483          	ld	s1,24(sp)
    80003414:	01013903          	ld	s2,16(sp)
    80003418:	03010113          	addi	sp,sp,48
    8000341c:	00008067          	ret

0000000080003420 <_ZN5Riscv12printIntegerEm>:
{
    80003420:	fc010113          	addi	sp,sp,-64
    80003424:	02113c23          	sd	ra,56(sp)
    80003428:	02813823          	sd	s0,48(sp)
    8000342c:	02913423          	sd	s1,40(sp)
    80003430:	03213023          	sd	s2,32(sp)
    80003434:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003438:	100027f3          	csrr	a5,sstatus
    8000343c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80003440:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003444:	00200793          	li	a5,2
    80003448:	1007b073          	csrc	sstatus,a5
        x = num;
    8000344c:	0005051b          	sext.w	a0,a0
    i = 0;
    80003450:	00000493          	li	s1,0
        buf[i++] = digits[x%10];
    80003454:	00a00613          	li	a2,10
    80003458:	02c5773b          	remuw	a4,a0,a2
    8000345c:	02071693          	slli	a3,a4,0x20
    80003460:	0206d693          	srli	a3,a3,0x20
    80003464:	00005717          	auipc	a4,0x5
    80003468:	d2470713          	addi	a4,a4,-732 # 80008188 <_ZZN5Riscv12printIntegerEmE6digits>
    8000346c:	00d70733          	add	a4,a4,a3
    80003470:	00074703          	lbu	a4,0(a4)
    80003474:	fe040693          	addi	a3,s0,-32
    80003478:	009687b3          	add	a5,a3,s1
    8000347c:	0014849b          	addiw	s1,s1,1
    80003480:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80003484:	0005071b          	sext.w	a4,a0
    80003488:	02c5553b          	divuw	a0,a0,a2
    8000348c:	00900793          	li	a5,9
    80003490:	fce7e2e3          	bltu	a5,a4,80003454 <_ZN5Riscv12printIntegerEm+0x34>
    while(--i >= 0)
    80003494:	fff4849b          	addiw	s1,s1,-1
    80003498:	0004ce63          	bltz	s1,800034b4 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    8000349c:	fe040793          	addi	a5,s0,-32
    800034a0:	009787b3          	add	a5,a5,s1
    800034a4:	ff07c503          	lbu	a0,-16(a5)
    800034a8:	00005097          	auipc	ra,0x5
    800034ac:	9c4080e7          	jalr	-1596(ra) # 80007e6c <__putc>
    800034b0:	fe5ff06f          	j	80003494 <_ZN5Riscv12printIntegerEm+0x74>
    __putc('\n');
    800034b4:	00a00513          	li	a0,10
    800034b8:	00005097          	auipc	ra,0x5
    800034bc:	9b4080e7          	jalr	-1612(ra) # 80007e6c <__putc>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800034c0:	0009091b          	sext.w	s2,s2
    800034c4:	00297913          	andi	s2,s2,2
    800034c8:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800034cc:	10092073          	csrs	sstatus,s2
}
    800034d0:	03813083          	ld	ra,56(sp)
    800034d4:	03013403          	ld	s0,48(sp)
    800034d8:	02813483          	ld	s1,40(sp)
    800034dc:	02013903          	ld	s2,32(sp)
    800034e0:	04010113          	addi	sp,sp,64
    800034e4:	00008067          	ret

00000000800034e8 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    800034e8:	f8010113          	addi	sp,sp,-128
    800034ec:	06113c23          	sd	ra,120(sp)
    800034f0:	06813823          	sd	s0,112(sp)
    800034f4:	06913423          	sd	s1,104(sp)
    800034f8:	07213023          	sd	s2,96(sp)
    800034fc:	05313c23          	sd	s3,88(sp)
    80003500:	05413823          	sd	s4,80(sp)
    80003504:	05513423          	sd	s5,72(sp)
    80003508:	05613023          	sd	s6,64(sp)
    8000350c:	08010413          	addi	s0,sp,128
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80003510:	00070913          	mv	s2,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003514:	142027f3          	csrr	a5,scause
    80003518:	f8f43423          	sd	a5,-120(s0)
    return scause;
    8000351c:	f8843703          	ld	a4,-120(s0)
    switch(scause)
    80003520:	00900793          	li	a5,9
    80003524:	08e7fe63          	bgeu	a5,a4,800035c0 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
    80003528:	fff00793          	li	a5,-1
    8000352c:	03f79793          	slli	a5,a5,0x3f
    80003530:	00178793          	addi	a5,a5,1
    80003534:	08f71a63          	bne	a4,a5,800035c8 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003538:	00200793          	li	a5,2
    8000353c:	1447b073          	csrc	sip,a5
            total++;
    80003540:	00007717          	auipc	a4,0x7
    80003544:	33870713          	addi	a4,a4,824 # 8000a878 <_ZZN5Riscv20handleSupervisorTrapEvE5total>
    80003548:	00073783          	ld	a5,0(a4)
    8000354c:	00178793          	addi	a5,a5,1
    80003550:	00f73023          	sd	a5,0(a4)
            PCB::timeSliceCounter++;
    80003554:	00007497          	auipc	s1,0x7
    80003558:	2544b483          	ld	s1,596(s1) # 8000a7a8 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000355c:	0004b783          	ld	a5,0(s1)
    80003560:	00178793          	addi	a5,a5,1
    80003564:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003568:	fffff097          	auipc	ra,0xfffff
    8000356c:	590080e7          	jalr	1424(ra) # 80002af8 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003570:	00007797          	auipc	a5,0x7
    80003574:	2487b783          	ld	a5,584(a5) # 8000a7b8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003578:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    8000357c:	0107b783          	ld	a5,16(a5)
    80003580:	0004b703          	ld	a4,0(s1)
    80003584:	04f76663          	bltu	a4,a5,800035d0 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003588:	141027f3          	csrr	a5,sepc
    8000358c:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    80003590:	f9843483          	ld	s1,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003594:	100027f3          	csrr	a5,sstatus
    80003598:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    8000359c:	f9043903          	ld	s2,-112(s0)
                PCB::timeSliceCounter = 0;
    800035a0:	00007797          	auipc	a5,0x7
    800035a4:	2087b783          	ld	a5,520(a5) # 8000a7a8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800035a8:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    800035ac:	fffff097          	auipc	ra,0xfffff
    800035b0:	0bc080e7          	jalr	188(ra) # 80002668 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800035b4:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800035b8:	14149073          	csrw	sepc,s1
}
    800035bc:	0140006f          	j	800035d0 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    switch(scause)
    800035c0:	00800793          	li	a5,8
    800035c4:	02f77a63          	bgeu	a4,a5,800035f8 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
    console_handler();
    800035c8:	00005097          	auipc	ra,0x5
    800035cc:	918080e7          	jalr	-1768(ra) # 80007ee0 <console_handler>
}
    800035d0:	07813083          	ld	ra,120(sp)
    800035d4:	07013403          	ld	s0,112(sp)
    800035d8:	06813483          	ld	s1,104(sp)
    800035dc:	06013903          	ld	s2,96(sp)
    800035e0:	05813983          	ld	s3,88(sp)
    800035e4:	05013a03          	ld	s4,80(sp)
    800035e8:	04813a83          	ld	s5,72(sp)
    800035ec:	04013b03          	ld	s6,64(sp)
    800035f0:	08010113          	addi	sp,sp,128
    800035f4:	00008067          	ret
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    800035f8:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800035fc:	14102773          	csrr	a4,sepc
    80003600:	fae43023          	sd	a4,-96(s0)
    return sepc;
    80003604:	fa043703          	ld	a4,-96(s0)
            sepc+=4;
    80003608:	00470493          	addi	s1,a4,4
            if(operation == MemoryAllocator::MEM_ALLOC)
    8000360c:	00100713          	li	a4,1
    80003610:	06e78a63          	beq	a5,a4,80003684 <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
            else if(operation == MemoryAllocator::MEM_FREE)
    80003614:	00200713          	li	a4,2
    80003618:	08e78463          	beq	a5,a4,800036a0 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
            else if(operation == PCB::THREAD_CREATE)
    8000361c:	01100713          	li	a4,17
    80003620:	08e78a63          	beq	a5,a4,800036b4 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
            else if(operation == PCB::THREAD_DISPATCH)
    80003624:	01300713          	li	a4,19
    80003628:	0ce78c63          	beq	a5,a4,80003700 <_ZN5Riscv20handleSupervisorTrapEv+0x218>
            else if(operation == PCB::THREAD_EXIT)
    8000362c:	01200713          	li	a4,18
    80003630:	0ee78c63          	beq	a5,a4,80003728 <_ZN5Riscv20handleSupervisorTrapEv+0x240>
            else if(operation == PCB::TIME_SLEEP)
    80003634:	03100713          	li	a4,49
    80003638:	14e78263          	beq	a5,a4,8000377c <_ZN5Riscv20handleSupervisorTrapEv+0x294>
            else if(operation == KSemaphore::SEM_OPEN)
    8000363c:	02100713          	li	a4,33
    80003640:	18e78263          	beq	a5,a4,800037c4 <_ZN5Riscv20handleSupervisorTrapEv+0x2dc>
            else if(operation == KSemaphore::SEM_WAIT)
    80003644:	02300713          	li	a4,35
    80003648:	1ae78c63          	beq	a5,a4,80003800 <_ZN5Riscv20handleSupervisorTrapEv+0x318>
            else if(operation == KSemaphore::SEM_SIGNAL)
    8000364c:	02400713          	li	a4,36
    80003650:	1ce78263          	beq	a5,a4,80003814 <_ZN5Riscv20handleSupervisorTrapEv+0x32c>
            else if(operation == KSemaphore::SEM_CLOSE)
    80003654:	02200713          	li	a4,34
    80003658:	04e79063          	bne	a5,a4,80003698 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000365c:	00058913          	mv	s2,a1
                delete kSem;
    80003660:	00090e63          	beqz	s2,8000367c <_ZN5Riscv20handleSupervisorTrapEv+0x194>
    80003664:	00090513          	mv	a0,s2
    80003668:	00001097          	auipc	ra,0x1
    8000366c:	804080e7          	jalr	-2044(ra) # 80003e6c <_ZN10KSemaphoreD1Ev>
    80003670:	00090513          	mv	a0,s2
    80003674:	00001097          	auipc	ra,0x1
    80003678:	928080e7          	jalr	-1752(ra) # 80003f9c <_ZN10KSemaphoredlEPv>
                __asm__ volatile("li a0, 0");
    8000367c:	00000513          	li	a0,0
    80003680:	0180006f          	j	80003698 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80003684:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    80003688:	00651513          	slli	a0,a0,0x6
    8000368c:	00000097          	auipc	ra,0x0
    80003690:	648080e7          	jalr	1608(ra) # 80003cd4 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80003694:	00050513          	mv	a0,a0
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003698:	14149073          	csrw	sepc,s1
}
    8000369c:	f35ff06f          	j	800035d0 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    800036a0:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    800036a4:	00000097          	auipc	ra,0x0
    800036a8:	658080e7          	jalr	1624(ra) # 80003cfc <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    800036ac:	00050513          	mv	a0,a0
    800036b0:	fe9ff06f          	j	80003698 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800036b4:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800036b8:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    800036bc:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    800036c0:	05800513          	li	a0,88
    800036c4:	fffff097          	auipc	ra,0xfffff
    800036c8:	018080e7          	jalr	24(ra) # 800026dc <_ZN3PCBnwEm>
    800036cc:	00050993          	mv	s3,a0
    800036d0:	00200713          	li	a4,2
    800036d4:	00090693          	mv	a3,s2
    800036d8:	000b0613          	mv	a2,s6
    800036dc:	000a8593          	mv	a1,s5
    800036e0:	fffff097          	auipc	ra,0xfffff
    800036e4:	ee0080e7          	jalr	-288(ra) # 800025c0 <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    800036e8:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    800036ec:	00098663          	beqz	s3,800036f8 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                    __asm__ volatile("li a0, 0");
    800036f0:	00000513          	li	a0,0
    800036f4:	fa5ff06f          	j	80003698 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    800036f8:	fff00513          	li	a0,-1
    800036fc:	f9dff06f          	j	80003698 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003700:	100027f3          	csrr	a5,sstatus
    80003704:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80003708:	fa843903          	ld	s2,-88(s0)
                PCB::timeSliceCounter = 0;
    8000370c:	00007797          	auipc	a5,0x7
    80003710:	09c7b783          	ld	a5,156(a5) # 8000a7a8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003714:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80003718:	fffff097          	auipc	ra,0xfffff
    8000371c:	f50080e7          	jalr	-176(ra) # 80002668 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003720:	10091073          	csrw	sstatus,s2
}
    80003724:	f75ff06f          	j	80003698 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                if(PCB::running == 0)
    80003728:	00007797          	auipc	a5,0x7
    8000372c:	0907b783          	ld	a5,144(a5) # 8000a7b8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003730:	0007b783          	ld	a5,0(a5)
    80003734:	04078063          	beqz	a5,80003774 <_ZN5Riscv20handleSupervisorTrapEv+0x28c>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003738:	100027f3          	csrr	a5,sstatus
    8000373c:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80003740:	fb043903          	ld	s2,-80(s0)
                PCB::timeSliceCounter = 0;
    80003744:	00007797          	auipc	a5,0x7
    80003748:	0647b783          	ld	a5,100(a5) # 8000a7a8 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000374c:	0007b023          	sd	zero,0(a5)
                PCB::running->setState(PCB::EXITING);
    80003750:	00007797          	auipc	a5,0x7
    80003754:	0687b783          	ld	a5,104(a5) # 8000a7b8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003758:	0007b783          	ld	a5,0(a5)
    void setState(State s) {state = s;}
    8000375c:	00300713          	li	a4,3
    80003760:	02e7ac23          	sw	a4,56(a5)
                PCB::dispatch();
    80003764:	fffff097          	auipc	ra,0xfffff
    80003768:	f04080e7          	jalr	-252(ra) # 80002668 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    8000376c:	10091073          	csrw	sstatus,s2
}
    80003770:	f29ff06f          	j	80003698 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80003774:	fff00513          	li	a0,-1
                    return;
    80003778:	e59ff06f          	j	800035d0 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                __asm__ volatile("mv %0, a1" : "=r"(time));
    8000377c:	00058713          	mv	a4,a1
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003780:	100027f3          	csrr	a5,sstatus
    80003784:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80003788:	fb843903          	ld	s2,-72(s0)
                PCB::timeSliceCounter = 0;
    8000378c:	00007797          	auipc	a5,0x7
    80003790:	01c7b783          	ld	a5,28(a5) # 8000a7a8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003794:	0007b023          	sd	zero,0(a5)
                PCB::running->setTimeToSleep(time);
    80003798:	00007797          	auipc	a5,0x7
    8000379c:	0207b783          	ld	a5,32(a5) # 8000a7b8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800037a0:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800037a4:	00e7bc23          	sd	a4,24(a5)
                SleepPCBList::insertSleepingPCB();
    800037a8:	fffff097          	auipc	ra,0xfffff
    800037ac:	2bc080e7          	jalr	700(ra) # 80002a64 <_ZN12SleepPCBList17insertSleepingPCBEv>
                PCB::dispatch();
    800037b0:	fffff097          	auipc	ra,0xfffff
    800037b4:	eb8080e7          	jalr	-328(ra) # 80002668 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800037b8:	10091073          	csrw	sstatus,s2
                __asm__ volatile("li a0, 0x0");
    800037bc:	00000513          	li	a0,0
    800037c0:	ed9ff06f          	j	80003698 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800037c4:	00058993          	mv	s3,a1
                __asm__ volatile("mv %0, a2" : "=r"(val));
    800037c8:	00060a13          	mv	s4,a2
                KSemaphore* newSem = new KSemaphore(val);
    800037cc:	01800513          	li	a0,24
    800037d0:	00000097          	auipc	ra,0x0
    800037d4:	7a4080e7          	jalr	1956(ra) # 80003f74 <_ZN10KSemaphorenwEm>
    800037d8:	00050913          	mv	s2,a0
    800037dc:	000a059b          	sext.w	a1,s4
    800037e0:	00000097          	auipc	ra,0x0
    800037e4:	544080e7          	jalr	1348(ra) # 80003d24 <_ZN10KSemaphoreC1Ei>
                (*semaphoreHandle) = newSem;
    800037e8:	0129b023          	sd	s2,0(s3)
                if(newSem == 0)
    800037ec:	00090663          	beqz	s2,800037f8 <_ZN5Riscv20handleSupervisorTrapEv+0x310>
                        __asm__ volatile("li a0, 0");
    800037f0:	00000513          	li	a0,0
    800037f4:	ea5ff06f          	j	80003698 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                        __asm__ volatile("li a0, 0xffffffffffffffff");
    800037f8:	fff00513          	li	a0,-1
    800037fc:	e9dff06f          	j	80003698 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003800:	00058513          	mv	a0,a1
                uint64 retval = kSem->wait();
    80003804:	00000097          	auipc	ra,0x0
    80003808:	5c8080e7          	jalr	1480(ra) # 80003dcc <_ZN10KSemaphore4waitEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    8000380c:	00050513          	mv	a0,a0
    80003810:	e89ff06f          	j	80003698 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003814:	00058513          	mv	a0,a1
                uint64 retval = kSem->signal();
    80003818:	00000097          	auipc	ra,0x0
    8000381c:	714080e7          	jalr	1812(ra) # 80003f2c <_ZN10KSemaphore6signalEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003820:	00050513          	mv	a0,a0
    80003824:	e75ff06f          	j	80003698 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
    80003828:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    8000382c:	00098513          	mv	a0,s3
    80003830:	fffff097          	auipc	ra,0xfffff
    80003834:	ed4080e7          	jalr	-300(ra) # 80002704 <_ZN3PCBdlEPv>
    80003838:	00048513          	mv	a0,s1
    8000383c:	00008097          	auipc	ra,0x8
    80003840:	14c080e7          	jalr	332(ra) # 8000b988 <_Unwind_Resume>
    80003844:	00050493          	mv	s1,a0
                KSemaphore* newSem = new KSemaphore(val);
    80003848:	00090513          	mv	a0,s2
    8000384c:	00000097          	auipc	ra,0x0
    80003850:	750080e7          	jalr	1872(ra) # 80003f9c <_ZN10KSemaphoredlEPv>
    80003854:	00048513          	mv	a0,s1
    80003858:	00008097          	auipc	ra,0x8
    8000385c:	130080e7          	jalr	304(ra) # 8000b988 <_Unwind_Resume>

0000000080003860 <_ZN5Riscv10kernelMainEv>:
{
    80003860:	fe010113          	addi	sp,sp,-32
    80003864:	00113c23          	sd	ra,24(sp)
    80003868:	00813823          	sd	s0,16(sp)
    8000386c:	00913423          	sd	s1,8(sp)
    80003870:	01213023          	sd	s2,0(sp)
    80003874:	02010413          	addi	s0,sp,32
    initSystem();
    80003878:	00000097          	auipc	ra,0x0
    8000387c:	a74080e7          	jalr	-1420(ra) # 800032ec <_ZN5Riscv10initSystemEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003880:	00001537          	lui	a0,0x1
    80003884:	00000097          	auipc	ra,0x0
    80003888:	450080e7          	jalr	1104(ra) # 80003cd4 <_Z7kmallocm>
    8000388c:	00050913          	mv	s2,a0
    80003890:	05800513          	li	a0,88
    80003894:	fffff097          	auipc	ra,0xfffff
    80003898:	e48080e7          	jalr	-440(ra) # 800026dc <_ZN3PCBnwEm>
    8000389c:	00050493          	mv	s1,a0
    800038a0:	00200713          	li	a4,2
    800038a4:	00090693          	mv	a3,s2
    800038a8:	00000613          	li	a2,0
    800038ac:	00000597          	auipc	a1,0x0
    800038b0:	a0058593          	addi	a1,a1,-1536 # 800032ac <_ZN5Riscv15userMainWrapperEPv>
    800038b4:	fffff097          	auipc	ra,0xfffff
    800038b8:	d0c080e7          	jalr	-756(ra) # 800025c0 <_ZN3PCBC1EPFvPvES0_S0_m>
    State getState() {return state;}
    800038bc:	0384a703          	lw	a4,56(s1)
    while(userPCB->getState() != PCB::FINISHED)
    800038c0:	00300793          	li	a5,3
    800038c4:	00f70863          	beq	a4,a5,800038d4 <_ZN5Riscv10kernelMainEv+0x74>
        thread_dispatch();
    800038c8:	ffffe097          	auipc	ra,0xffffe
    800038cc:	a5c080e7          	jalr	-1444(ra) # 80001324 <thread_dispatch>
    while(userPCB->getState() != PCB::FINISHED)
    800038d0:	fedff06f          	j	800038bc <_ZN5Riscv10kernelMainEv+0x5c>
    endSystem();
    800038d4:	00000097          	auipc	ra,0x0
    800038d8:	a94080e7          	jalr	-1388(ra) # 80003368 <_ZN5Riscv9endSystemEv>
    Riscv::printString("End...");
    800038dc:	00005517          	auipc	a0,0x5
    800038e0:	8a450513          	addi	a0,a0,-1884 # 80008180 <CONSOLE_STATUS+0x170>
    800038e4:	00000097          	auipc	ra,0x0
    800038e8:	acc080e7          	jalr	-1332(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
}
    800038ec:	01813083          	ld	ra,24(sp)
    800038f0:	01013403          	ld	s0,16(sp)
    800038f4:	00813483          	ld	s1,8(sp)
    800038f8:	00013903          	ld	s2,0(sp)
    800038fc:	02010113          	addi	sp,sp,32
    80003900:	00008067          	ret
    80003904:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003908:	00048513          	mv	a0,s1
    8000390c:	fffff097          	auipc	ra,0xfffff
    80003910:	df8080e7          	jalr	-520(ra) # 80002704 <_ZN3PCBdlEPv>
    80003914:	00090513          	mv	a0,s2
    80003918:	00008097          	auipc	ra,0x8
    8000391c:	070080e7          	jalr	112(ra) # 8000b988 <_Unwind_Resume>

0000000080003920 <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003920:	ff010113          	addi	sp,sp,-16
    80003924:	00813423          	sd	s0,8(sp)
    80003928:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    8000392c:	00007717          	auipc	a4,0x7
    80003930:	f5472703          	lw	a4,-172(a4) # 8000a880 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003934:	00100793          	li	a5,1
    80003938:	04f70263          	beq	a4,a5,8000397c <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    8000393c:	00007797          	auipc	a5,0x7
    80003940:	f4478793          	addi	a5,a5,-188 # 8000a880 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003944:	00100713          	li	a4,1
    80003948:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    8000394c:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003950:	00007717          	auipc	a4,0x7
    80003954:	e4873703          	ld	a4,-440(a4) # 8000a798 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003958:	00073703          	ld	a4,0(a4)
    8000395c:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003960:	00073423          	sd	zero,8(a4)
    //todo
    //+-1
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003964:	00007797          	auipc	a5,0x7
    80003968:	e5c7b783          	ld	a5,-420(a5) # 8000a7c0 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000396c:	0007b783          	ld	a5,0(a5)
    80003970:	40e787b3          	sub	a5,a5,a4
    80003974:	ff178793          	addi	a5,a5,-15
    80003978:	00f73023          	sd	a5,0(a4)
}
    8000397c:	00813403          	ld	s0,8(sp)
    80003980:	01010113          	addi	sp,sp,16
    80003984:	00008067          	ret

0000000080003988 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    80003988:	fe010113          	addi	sp,sp,-32
    8000398c:	00113c23          	sd	ra,24(sp)
    80003990:	00813823          	sd	s0,16(sp)
    80003994:	00913423          	sd	s1,8(sp)
    80003998:	01213023          	sd	s2,0(sp)
    8000399c:	02010413          	addi	s0,sp,32
    800039a0:	00050493          	mv	s1,a0
    800039a4:	00058913          	mv	s2,a1

    initMemory();
    800039a8:	00000097          	auipc	ra,0x0
    800039ac:	f78080e7          	jalr	-136(ra) # 80003920 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    800039b0:	00007797          	auipc	a5,0x7
    800039b4:	ed87b783          	ld	a5,-296(a5) # 8000a888 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    800039b8:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    800039bc:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    800039c0:	00000713          	li	a4,0
    while(curr != 0)
    800039c4:	00078c63          	beqz	a5,800039dc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800039c8:	00f4e863          	bltu	s1,a5,800039d8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    800039cc:	00078713          	mv	a4,a5
        curr = curr->next;
    800039d0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800039d4:	ff1ff06f          	j	800039c4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    800039d8:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800039dc:	02070063          	beqz	a4,800039fc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    800039e0:	00973423          	sd	s1,8(a4)
}
    800039e4:	01813083          	ld	ra,24(sp)
    800039e8:	01013403          	ld	s0,16(sp)
    800039ec:	00813483          	ld	s1,8(sp)
    800039f0:	00013903          	ld	s2,0(sp)
    800039f4:	02010113          	addi	sp,sp,32
    800039f8:	00008067          	ret
        headAllocated = newAllocated;
    800039fc:	00007797          	auipc	a5,0x7
    80003a00:	e897b623          	sd	s1,-372(a5) # 8000a888 <_ZN15MemoryAllocator13headAllocatedE>
    80003a04:	fe1ff06f          	j	800039e4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003a08 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    80003a08:	fe010113          	addi	sp,sp,-32
    80003a0c:	00113c23          	sd	ra,24(sp)
    80003a10:	00813823          	sd	s0,16(sp)
    80003a14:	00913423          	sd	s1,8(sp)
    80003a18:	01213023          	sd	s2,0(sp)
    80003a1c:	02010413          	addi	s0,sp,32
    80003a20:	00050913          	mv	s2,a0
    initMemory();
    80003a24:	00000097          	auipc	ra,0x0
    80003a28:	efc080e7          	jalr	-260(ra) # 80003920 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003a2c:	00007497          	auipc	s1,0x7
    80003a30:	e644b483          	ld	s1,-412(s1) # 8000a890 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003a34:	00000713          	li	a4,0
    while(curr != 0)
    80003a38:	0a048863          	beqz	s1,80003ae8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80003a3c:	0004b783          	ld	a5,0(s1)
    80003a40:	0127f863          	bgeu	a5,s2,80003a50 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003a44:	00048713          	mv	a4,s1
        curr = curr->next;
    80003a48:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003a4c:	fedff06f          	j	80003a38 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003a50:	01090693          	addi	a3,s2,16
    80003a54:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80003a58:	00007617          	auipc	a2,0x7
    80003a5c:	d6863603          	ld	a2,-664(a2) # 8000a7c0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003a60:	00063603          	ld	a2,0(a2)
    80003a64:	04d66c63          	bltu	a2,a3,80003abc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80003a68:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003a6c:	01000613          	li	a2,16
    80003a70:	02f67663          	bgeu	a2,a5,80003a9c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80003a74:	0084b603          	ld	a2,8(s1)
    80003a78:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003a7c:	ff078793          	addi	a5,a5,-16
    80003a80:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003a84:	00070663          	beqz	a4,80003a90 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80003a88:	00d73423          	sd	a3,8(a4)
    80003a8c:	0380006f          	j	80003ac4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003a90:	00007797          	auipc	a5,0x7
    80003a94:	e0d7b023          	sd	a3,-512(a5) # 8000a890 <_ZN15MemoryAllocator8headFreeE>
    80003a98:	02c0006f          	j	80003ac4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80003a9c:	00070863          	beqz	a4,80003aac <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003aa0:	0084b783          	ld	a5,8(s1)
    80003aa4:	00f73423          	sd	a5,8(a4)
    80003aa8:	01c0006f          	j	80003ac4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80003aac:	0084b783          	ld	a5,8(s1)
    80003ab0:	00007717          	auipc	a4,0x7
    80003ab4:	def73023          	sd	a5,-544(a4) # 8000a890 <_ZN15MemoryAllocator8headFreeE>
    80003ab8:	00c0006f          	j	80003ac4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80003abc:	02070063          	beqz	a4,80003adc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80003ac0:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80003ac4:	00090593          	mv	a1,s2
    80003ac8:	00048513          	mv	a0,s1
    80003acc:	00000097          	auipc	ra,0x0
    80003ad0:	ebc080e7          	jalr	-324(ra) # 80003988 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003ad4:	01048513          	addi	a0,s1,16
            break;
    80003ad8:	0140006f          	j	80003aec <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80003adc:	00007797          	auipc	a5,0x7
    80003ae0:	da07ba23          	sd	zero,-588(a5) # 8000a890 <_ZN15MemoryAllocator8headFreeE>
    80003ae4:	fe1ff06f          	j	80003ac4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003ae8:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003aec:	01813083          	ld	ra,24(sp)
    80003af0:	01013403          	ld	s0,16(sp)
    80003af4:	00813483          	ld	s1,8(sp)
    80003af8:	00013903          	ld	s2,0(sp)
    80003afc:	02010113          	addi	sp,sp,32
    80003b00:	00008067          	ret

0000000080003b04 <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    80003b04:	ff010113          	addi	sp,sp,-16
    80003b08:	00113423          	sd	ra,8(sp)
    80003b0c:	00813023          	sd	s0,0(sp)
    80003b10:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003b14:	00000097          	auipc	ra,0x0
    80003b18:	ef4080e7          	jalr	-268(ra) # 80003a08 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003b1c:	00813083          	ld	ra,8(sp)
    80003b20:	00013403          	ld	s0,0(sp)
    80003b24:	01010113          	addi	sp,sp,16
    80003b28:	00008067          	ret

0000000080003b2c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80003b2c:	fe010113          	addi	sp,sp,-32
    80003b30:	00113c23          	sd	ra,24(sp)
    80003b34:	00813823          	sd	s0,16(sp)
    80003b38:	00913423          	sd	s1,8(sp)
    80003b3c:	01213023          	sd	s2,0(sp)
    80003b40:	02010413          	addi	s0,sp,32
    80003b44:	00050493          	mv	s1,a0
    80003b48:	00058913          	mv	s2,a1
    initMemory();
    80003b4c:	00000097          	auipc	ra,0x0
    80003b50:	dd4080e7          	jalr	-556(ra) # 80003920 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003b54:	00007797          	auipc	a5,0x7
    80003b58:	d3c7b783          	ld	a5,-708(a5) # 8000a890 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003b5c:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003b60:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003b64:	00000713          	li	a4,0
    while(curr != 0)
    80003b68:	00078c63          	beqz	a5,80003b80 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003b6c:	00f4e863          	bltu	s1,a5,80003b7c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003b70:	00078713          	mv	a4,a5
        curr = curr->next;
    80003b74:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003b78:	ff1ff06f          	j	80003b68 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80003b7c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003b80:	04070663          	beqz	a4,80003bcc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003b84:	00973423          	sd	s1,8(a4)

    //todo
    //test it
    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003b88:	0084b783          	ld	a5,8(s1)
    80003b8c:	00078a63          	beqz	a5,80003ba0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003b90:	0004b603          	ld	a2,0(s1)
    80003b94:	01060693          	addi	a3,a2,16
    80003b98:	00d486b3          	add	a3,s1,a3
    80003b9c:	02d78e63          	beq	a5,a3,80003bd8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003ba0:	00070a63          	beqz	a4,80003bb4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003ba4:	00073683          	ld	a3,0(a4)
    80003ba8:	01068793          	addi	a5,a3,16
    80003bac:	00f707b3          	add	a5,a4,a5
    80003bb0:	04978263          	beq	a5,s1,80003bf4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003bb4:	01813083          	ld	ra,24(sp)
    80003bb8:	01013403          	ld	s0,16(sp)
    80003bbc:	00813483          	ld	s1,8(sp)
    80003bc0:	00013903          	ld	s2,0(sp)
    80003bc4:	02010113          	addi	sp,sp,32
    80003bc8:	00008067          	ret
        headFree = newSegment;
    80003bcc:	00007797          	auipc	a5,0x7
    80003bd0:	cc97b223          	sd	s1,-828(a5) # 8000a890 <_ZN15MemoryAllocator8headFreeE>
    80003bd4:	fb5ff06f          	j	80003b88 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003bd8:	0007b683          	ld	a3,0(a5)
    80003bdc:	00d60633          	add	a2,a2,a3
    80003be0:	01060613          	addi	a2,a2,16
    80003be4:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003be8:	0087b783          	ld	a5,8(a5)
    80003bec:	00f4b423          	sd	a5,8(s1)
    80003bf0:	fb1ff06f          	j	80003ba0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003bf4:	0004b783          	ld	a5,0(s1)
    80003bf8:	00f686b3          	add	a3,a3,a5
    80003bfc:	01068693          	addi	a3,a3,16
    80003c00:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003c04:	0084b783          	ld	a5,8(s1)
    80003c08:	00f73423          	sd	a5,8(a4)
}
    80003c0c:	fa9ff06f          	j	80003bb4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003c10 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003c10:	fe010113          	addi	sp,sp,-32
    80003c14:	00113c23          	sd	ra,24(sp)
    80003c18:	00813823          	sd	s0,16(sp)
    80003c1c:	00913423          	sd	s1,8(sp)
    80003c20:	01213023          	sd	s2,0(sp)
    80003c24:	02010413          	addi	s0,sp,32
    80003c28:	00050913          	mv	s2,a0
    initMemory();
    80003c2c:	00000097          	auipc	ra,0x0
    80003c30:	cf4080e7          	jalr	-780(ra) # 80003920 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003c34:	00007497          	auipc	s1,0x7
    80003c38:	c544b483          	ld	s1,-940(s1) # 8000a888 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80003c3c:	00000713          	li	a4,0
    while(curr != 0)
    80003c40:	02048a63          	beqz	s1,80003c74 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80003c44:	01048793          	addi	a5,s1,16
    80003c48:	01278863          	beq	a5,s2,80003c58 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80003c4c:	00048713          	mv	a4,s1
        curr = curr->next;
    80003c50:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003c54:	fedff06f          	j	80003c40 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80003c58:	02070e63          	beqz	a4,80003c94 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80003c5c:	0084b783          	ld	a5,8(s1)
    80003c60:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80003c64:	0004b583          	ld	a1,0(s1)
    80003c68:	00048513          	mv	a0,s1
    80003c6c:	00000097          	auipc	ra,0x0
    80003c70:	ec0080e7          	jalr	-320(ra) # 80003b2c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80003c74:	02048863          	beqz	s1,80003ca4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80003c78:	00000513          	li	a0,0
    else
        return 1;
}
    80003c7c:	01813083          	ld	ra,24(sp)
    80003c80:	01013403          	ld	s0,16(sp)
    80003c84:	00813483          	ld	s1,8(sp)
    80003c88:	00013903          	ld	s2,0(sp)
    80003c8c:	02010113          	addi	sp,sp,32
    80003c90:	00008067          	ret
                headAllocated = curr->next;
    80003c94:	0084b783          	ld	a5,8(s1)
    80003c98:	00007717          	auipc	a4,0x7
    80003c9c:	bef73823          	sd	a5,-1040(a4) # 8000a888 <_ZN15MemoryAllocator13headAllocatedE>
    80003ca0:	fc5ff06f          	j	80003c64 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80003ca4:	00100513          	li	a0,1
    80003ca8:	fd5ff06f          	j	80003c7c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080003cac <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    80003cac:	ff010113          	addi	sp,sp,-16
    80003cb0:	00113423          	sd	ra,8(sp)
    80003cb4:	00813023          	sd	s0,0(sp)
    80003cb8:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80003cbc:	00000097          	auipc	ra,0x0
    80003cc0:	f54080e7          	jalr	-172(ra) # 80003c10 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80003cc4:	00813083          	ld	ra,8(sp)
    80003cc8:	00013403          	ld	s0,0(sp)
    80003ccc:	01010113          	addi	sp,sp,16
    80003cd0:	00008067          	ret

0000000080003cd4 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    80003cd4:	ff010113          	addi	sp,sp,-16
    80003cd8:	00113423          	sd	ra,8(sp)
    80003cdc:	00813023          	sd	s0,0(sp)
    80003ce0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80003ce4:	00000097          	auipc	ra,0x0
    80003ce8:	e20080e7          	jalr	-480(ra) # 80003b04 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003cec:	00813083          	ld	ra,8(sp)
    80003cf0:	00013403          	ld	s0,0(sp)
    80003cf4:	01010113          	addi	sp,sp,16
    80003cf8:	00008067          	ret

0000000080003cfc <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80003cfc:	ff010113          	addi	sp,sp,-16
    80003d00:	00113423          	sd	ra,8(sp)
    80003d04:	00813023          	sd	s0,0(sp)
    80003d08:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80003d0c:	00000097          	auipc	ra,0x0
    80003d10:	fa0080e7          	jalr	-96(ra) # 80003cac <_ZN15MemoryAllocator8mem_freeEPv>
    80003d14:	00813083          	ld	ra,8(sp)
    80003d18:	00013403          	ld	s0,0(sp)
    80003d1c:	01010113          	addi	sp,sp,16
    80003d20:	00008067          	ret

0000000080003d24 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80003d24:	ff010113          	addi	sp,sp,-16
    80003d28:	00813423          	sd	s0,8(sp)
    80003d2c:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80003d30:	00b52a23          	sw	a1,20(a0)
    80003d34:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80003d38:	00053423          	sd	zero,8(a0)
    80003d3c:	00053023          	sd	zero,0(a0)
}
    80003d40:	00813403          	ld	s0,8(sp)
    80003d44:	01010113          	addi	sp,sp,16
    80003d48:	00008067          	ret

0000000080003d4c <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80003d4c:	ff010113          	addi	sp,sp,-16
    80003d50:	00813423          	sd	s0,8(sp)
    80003d54:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80003d58:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80003d5c:	00053783          	ld	a5,0(a0)
    80003d60:	00078e63          	beqz	a5,80003d7c <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80003d64:	00853783          	ld	a5,8(a0)
    80003d68:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80003d6c:	00b53423          	sd	a1,8(a0)
    }
}
    80003d70:	00813403          	ld	s0,8(sp)
    80003d74:	01010113          	addi	sp,sp,16
    80003d78:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80003d7c:	00b53423          	sd	a1,8(a0)
    80003d80:	00b53023          	sd	a1,0(a0)
    80003d84:	fedff06f          	j	80003d70 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080003d88 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    80003d88:	ff010113          	addi	sp,sp,-16
    80003d8c:	00113423          	sd	ra,8(sp)
    80003d90:	00813023          	sd	s0,0(sp)
    80003d94:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80003d98:	00007797          	auipc	a5,0x7
    80003d9c:	a207b783          	ld	a5,-1504(a5) # 8000a7b8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003da0:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80003da4:	00200793          	li	a5,2
    80003da8:	02f5ac23          	sw	a5,56(a1)
    addToBlocked(PCB::running);
    80003dac:	00000097          	auipc	ra,0x0
    80003db0:	fa0080e7          	jalr	-96(ra) # 80003d4c <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80003db4:	fffff097          	auipc	ra,0xfffff
    80003db8:	8b4080e7          	jalr	-1868(ra) # 80002668 <_ZN3PCB8dispatchEv>
}
    80003dbc:	00813083          	ld	ra,8(sp)
    80003dc0:	00013403          	ld	s0,0(sp)
    80003dc4:	01010113          	addi	sp,sp,16
    80003dc8:	00008067          	ret

0000000080003dcc <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    80003dcc:	01052783          	lw	a5,16(a0)
    80003dd0:	fff7879b          	addiw	a5,a5,-1
    80003dd4:	00f52823          	sw	a5,16(a0)
    80003dd8:	02079713          	slli	a4,a5,0x20
    80003ddc:	00074663          	bltz	a4,80003de8 <_ZN10KSemaphore4waitEv+0x1c>
}
    80003de0:	00000513          	li	a0,0
    80003de4:	00008067          	ret
uint64 KSemaphore::wait() {
    80003de8:	ff010113          	addi	sp,sp,-16
    80003dec:	00113423          	sd	ra,8(sp)
    80003df0:	00813023          	sd	s0,0(sp)
    80003df4:	01010413          	addi	s0,sp,16
        block();
    80003df8:	00000097          	auipc	ra,0x0
    80003dfc:	f90080e7          	jalr	-112(ra) # 80003d88 <_ZN10KSemaphore5blockEv>
}
    80003e00:	00000513          	li	a0,0
    80003e04:	00813083          	ld	ra,8(sp)
    80003e08:	00013403          	ld	s0,0(sp)
    80003e0c:	01010113          	addi	sp,sp,16
    80003e10:	00008067          	ret

0000000080003e14 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80003e14:	ff010113          	addi	sp,sp,-16
    80003e18:	00813423          	sd	s0,8(sp)
    80003e1c:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80003e20:	00053503          	ld	a0,0(a0)
    80003e24:	00813403          	ld	s0,8(sp)
    80003e28:	01010113          	addi	sp,sp,16
    80003e2c:	00008067          	ret

0000000080003e30 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80003e30:	ff010113          	addi	sp,sp,-16
    80003e34:	00813423          	sd	s0,8(sp)
    80003e38:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80003e3c:	00053783          	ld	a5,0(a0)
    80003e40:	00078c63          	beqz	a5,80003e58 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80003e44:	0087b703          	ld	a4,8(a5)
    80003e48:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80003e4c:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80003e50:	00053783          	ld	a5,0(a0)
    80003e54:	00078863          	beqz	a5,80003e64 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80003e58:	00813403          	ld	s0,8(sp)
    80003e5c:	01010113          	addi	sp,sp,16
    80003e60:	00008067          	ret
        tailBlocked =0;
    80003e64:	00053423          	sd	zero,8(a0)
    80003e68:	ff1ff06f          	j	80003e58 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080003e6c <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80003e6c:	fe010113          	addi	sp,sp,-32
    80003e70:	00113c23          	sd	ra,24(sp)
    80003e74:	00813823          	sd	s0,16(sp)
    80003e78:	00913423          	sd	s1,8(sp)
    80003e7c:	01213023          	sd	s2,0(sp)
    80003e80:	02010413          	addi	s0,sp,32
    80003e84:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80003e88:	00090513          	mv	a0,s2
    80003e8c:	00000097          	auipc	ra,0x0
    80003e90:	f88080e7          	jalr	-120(ra) # 80003e14 <_ZN10KSemaphore15getFirstBlockedEv>
    80003e94:	00050493          	mv	s1,a0
    80003e98:	02050063          	beqz	a0,80003eb8 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    80003e9c:	00090513          	mv	a0,s2
    80003ea0:	00000097          	auipc	ra,0x0
    80003ea4:	f90080e7          	jalr	-112(ra) # 80003e30 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    80003ea8:	00048513          	mv	a0,s1
    80003eac:	fffff097          	auipc	ra,0xfffff
    80003eb0:	efc080e7          	jalr	-260(ra) # 80002da8 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80003eb4:	fd5ff06f          	j	80003e88 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80003eb8:	01813083          	ld	ra,24(sp)
    80003ebc:	01013403          	ld	s0,16(sp)
    80003ec0:	00813483          	ld	s1,8(sp)
    80003ec4:	00013903          	ld	s2,0(sp)
    80003ec8:	02010113          	addi	sp,sp,32
    80003ecc:	00008067          	ret

0000000080003ed0 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80003ed0:	fe010113          	addi	sp,sp,-32
    80003ed4:	00113c23          	sd	ra,24(sp)
    80003ed8:	00813823          	sd	s0,16(sp)
    80003edc:	00913423          	sd	s1,8(sp)
    80003ee0:	01213023          	sd	s2,0(sp)
    80003ee4:	02010413          	addi	s0,sp,32
    80003ee8:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80003eec:	00000097          	auipc	ra,0x0
    80003ef0:	f28080e7          	jalr	-216(ra) # 80003e14 <_ZN10KSemaphore15getFirstBlockedEv>
    80003ef4:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80003ef8:	00090513          	mv	a0,s2
    80003efc:	00000097          	auipc	ra,0x0
    80003f00:	f34080e7          	jalr	-204(ra) # 80003e30 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80003f04:	00048863          	beqz	s1,80003f14 <_ZN10KSemaphore7unblockEv+0x44>
        Scheduler::put(fr);
    80003f08:	00048513          	mv	a0,s1
    80003f0c:	fffff097          	auipc	ra,0xfffff
    80003f10:	e9c080e7          	jalr	-356(ra) # 80002da8 <_ZN9Scheduler3putEP3PCB>
}
    80003f14:	01813083          	ld	ra,24(sp)
    80003f18:	01013403          	ld	s0,16(sp)
    80003f1c:	00813483          	ld	s1,8(sp)
    80003f20:	00013903          	ld	s2,0(sp)
    80003f24:	02010113          	addi	sp,sp,32
    80003f28:	00008067          	ret

0000000080003f2c <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80003f2c:	01052783          	lw	a5,16(a0)
    80003f30:	0017879b          	addiw	a5,a5,1
    80003f34:	0007871b          	sext.w	a4,a5
    80003f38:	00f52823          	sw	a5,16(a0)
    80003f3c:	00e05663          	blez	a4,80003f48 <_ZN10KSemaphore6signalEv+0x1c>
}
    80003f40:	00000513          	li	a0,0
    80003f44:	00008067          	ret
uint64 KSemaphore::signal() {
    80003f48:	ff010113          	addi	sp,sp,-16
    80003f4c:	00113423          	sd	ra,8(sp)
    80003f50:	00813023          	sd	s0,0(sp)
    80003f54:	01010413          	addi	s0,sp,16
        unblock();
    80003f58:	00000097          	auipc	ra,0x0
    80003f5c:	f78080e7          	jalr	-136(ra) # 80003ed0 <_ZN10KSemaphore7unblockEv>
}
    80003f60:	00000513          	li	a0,0
    80003f64:	00813083          	ld	ra,8(sp)
    80003f68:	00013403          	ld	s0,0(sp)
    80003f6c:	01010113          	addi	sp,sp,16
    80003f70:	00008067          	ret

0000000080003f74 <_ZN10KSemaphorenwEm>:

void *KSemaphore::operator new(size_t size) {
    80003f74:	ff010113          	addi	sp,sp,-16
    80003f78:	00113423          	sd	ra,8(sp)
    80003f7c:	00813023          	sd	s0,0(sp)
    80003f80:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80003f84:	00000097          	auipc	ra,0x0
    80003f88:	d50080e7          	jalr	-688(ra) # 80003cd4 <_Z7kmallocm>
}
    80003f8c:	00813083          	ld	ra,8(sp)
    80003f90:	00013403          	ld	s0,0(sp)
    80003f94:	01010113          	addi	sp,sp,16
    80003f98:	00008067          	ret

0000000080003f9c <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p) {
    80003f9c:	ff010113          	addi	sp,sp,-16
    80003fa0:	00113423          	sd	ra,8(sp)
    80003fa4:	00813023          	sd	s0,0(sp)
    80003fa8:	01010413          	addi	s0,sp,16
    kfree(p);
    80003fac:	00000097          	auipc	ra,0x0
    80003fb0:	d50080e7          	jalr	-688(ra) # 80003cfc <_Z5kfreePv>
}
    80003fb4:	00813083          	ld	ra,8(sp)
    80003fb8:	00013403          	ld	s0,0(sp)
    80003fbc:	01010113          	addi	sp,sp,16
    80003fc0:	00008067          	ret

0000000080003fc4 <_Z8producerPv>:
    delete data->buffer;

    sem_signal(data->wait);
}

void producer(void *arg) {
    80003fc4:	fe010113          	addi	sp,sp,-32
    80003fc8:	00113c23          	sd	ra,24(sp)
    80003fcc:	00813823          	sd	s0,16(sp)
    80003fd0:	00913423          	sd	s1,8(sp)
    80003fd4:	01213023          	sd	s2,0(sp)
    80003fd8:	02010413          	addi	s0,sp,32
    80003fdc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("Producer started...\n");
    80003fe0:	00004517          	auipc	a0,0x4
    80003fe4:	1b850513          	addi	a0,a0,440 # 80008198 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80003fe8:	fffff097          	auipc	ra,0xfffff
    80003fec:	3c8080e7          	jalr	968(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>

    int i = 0;
    80003ff0:	00000913          	li	s2,0
    while (!threadEnd)
    80003ff4:	00007797          	auipc	a5,0x7
    80003ff8:	8a47a783          	lw	a5,-1884(a5) # 8000a898 <threadEnd>
    80003ffc:	0a079463          	bnez	a5,800040a4 <_Z8producerPv+0xe0>
    {
        Riscv::printString("producer i : ");
    80004000:	00004517          	auipc	a0,0x4
    80004004:	1b050513          	addi	a0,a0,432 # 800081b0 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    80004008:	fffff097          	auipc	ra,0xfffff
    8000400c:	3a8080e7          	jalr	936(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    80004010:	00090513          	mv	a0,s2
    80004014:	fffff097          	auipc	ra,0xfffff
    80004018:	40c080e7          	jalr	1036(ra) # 80003420 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("put ");
    8000401c:	00004517          	auipc	a0,0x4
    80004020:	1a450513          	addi	a0,a0,420 # 800081c0 <_ZZN5Riscv12printIntegerEmE6digits+0x38>
    80004024:	fffff097          	auipc	ra,0xfffff
    80004028:	38c080e7          	jalr	908(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(data->id + '0');
    8000402c:	0004a503          	lw	a0,0(s1)
    80004030:	0305051b          	addiw	a0,a0,48
    80004034:	fffff097          	auipc	ra,0xfffff
    80004038:	3ec080e7          	jalr	1004(ra) # 80003420 <_ZN5Riscv12printIntegerEm>
        data->buffer->put(data->id + '0');
    8000403c:	0004a583          	lw	a1,0(s1)
    80004040:	0305859b          	addiw	a1,a1,48
    80004044:	0084b503          	ld	a0,8(s1)
    80004048:	00002097          	auipc	ra,0x2
    8000404c:	c48080e7          	jalr	-952(ra) # 80005c90 <_ZN6Buffer3putEi>
        i++;
    80004050:	0019071b          	addiw	a4,s2,1
    80004054:	0007091b          	sext.w	s2,a4

        if (i % (10 * data->id) == 0) {
    80004058:	0004a683          	lw	a3,0(s1)
    8000405c:	0026979b          	slliw	a5,a3,0x2
    80004060:	00d787bb          	addw	a5,a5,a3
    80004064:	0017979b          	slliw	a5,a5,0x1
    80004068:	02f767bb          	remw	a5,a4,a5
    8000406c:	00078e63          	beqz	a5,80004088 <_Z8producerPv+0xc4>
            Riscv::printString("dispatching\n");
            thread_dispatch();
        }

        if(i == 10)
    80004070:	00a00793          	li	a5,10
    80004074:	f8f910e3          	bne	s2,a5,80003ff4 <_Z8producerPv+0x30>
            threadEnd = 1;
    80004078:	00100793          	li	a5,1
    8000407c:	00007717          	auipc	a4,0x7
    80004080:	80f72e23          	sw	a5,-2020(a4) # 8000a898 <threadEnd>
    80004084:	f71ff06f          	j	80003ff4 <_Z8producerPv+0x30>
            Riscv::printString("dispatching\n");
    80004088:	00004517          	auipc	a0,0x4
    8000408c:	14050513          	addi	a0,a0,320 # 800081c8 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80004090:	fffff097          	auipc	ra,0xfffff
    80004094:	320080e7          	jalr	800(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
            thread_dispatch();
    80004098:	ffffd097          	auipc	ra,0xffffd
    8000409c:	28c080e7          	jalr	652(ra) # 80001324 <thread_dispatch>
    800040a0:	fd1ff06f          	j	80004070 <_Z8producerPv+0xac>
    }

    Riscv::printString("producer done\n");
    800040a4:	00004517          	auipc	a0,0x4
    800040a8:	13450513          	addi	a0,a0,308 # 800081d8 <_ZZN5Riscv12printIntegerEmE6digits+0x50>
    800040ac:	fffff097          	auipc	ra,0xfffff
    800040b0:	304080e7          	jalr	772(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    800040b4:	0104b503          	ld	a0,16(s1)
    800040b8:	ffffd097          	auipc	ra,0xffffd
    800040bc:	344080e7          	jalr	836(ra) # 800013fc <sem_signal>
}
    800040c0:	01813083          	ld	ra,24(sp)
    800040c4:	01013403          	ld	s0,16(sp)
    800040c8:	00813483          	ld	s1,8(sp)
    800040cc:	00013903          	ld	s2,0(sp)
    800040d0:	02010113          	addi	sp,sp,32
    800040d4:	00008067          	ret

00000000800040d8 <_Z8consumerPv>:

void consumer(void *arg) {
    800040d8:	fd010113          	addi	sp,sp,-48
    800040dc:	02113423          	sd	ra,40(sp)
    800040e0:	02813023          	sd	s0,32(sp)
    800040e4:	00913c23          	sd	s1,24(sp)
    800040e8:	01213823          	sd	s2,16(sp)
    800040ec:	01313423          	sd	s3,8(sp)
    800040f0:	01413023          	sd	s4,0(sp)
    800040f4:	03010413          	addi	s0,sp,48
    800040f8:	00050a13          	mv	s4,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("Consumer started...\n");
    800040fc:	00004517          	auipc	a0,0x4
    80004100:	0ec50513          	addi	a0,a0,236 # 800081e8 <_ZZN5Riscv12printIntegerEmE6digits+0x60>
    80004104:	fffff097          	auipc	ra,0xfffff
    80004108:	2ac080e7          	jalr	684(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>

    int i = 0;
    8000410c:	00000993          	li	s3,0
    80004110:	0300006f          	j	80004140 <_Z8consumerPv+0x68>
        //putc(key);
        Riscv::printString("get ");
        Riscv::printInteger(key);

        if (i % (5 * data->id) == 0) {
            Riscv::printString("dispatching\n");
    80004114:	00004517          	auipc	a0,0x4
    80004118:	0b450513          	addi	a0,a0,180 # 800081c8 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    8000411c:	fffff097          	auipc	ra,0xfffff
    80004120:	294080e7          	jalr	660(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
            thread_dispatch();
    80004124:	ffffd097          	auipc	ra,0xffffd
    80004128:	200080e7          	jalr	512(ra) # 80001324 <thread_dispatch>
    8000412c:	0840006f          	j	800041b0 <_Z8consumerPv+0xd8>
        }

        if (i % 80 == 0) {
           Riscv::printString("\n");
    80004130:	00004517          	auipc	a0,0x4
    80004134:	04850513          	addi	a0,a0,72 # 80008178 <CONSOLE_STATUS+0x168>
    80004138:	fffff097          	auipc	ra,0xfffff
    8000413c:	278080e7          	jalr	632(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    while (!threadEnd) {
    80004140:	00006797          	auipc	a5,0x6
    80004144:	7587a783          	lw	a5,1880(a5) # 8000a898 <threadEnd>
    80004148:	06079c63          	bnez	a5,800041c0 <_Z8consumerPv+0xe8>
        Riscv::printString("consumer i : ");
    8000414c:	00004517          	auipc	a0,0x4
    80004150:	0b450513          	addi	a0,a0,180 # 80008200 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80004154:	fffff097          	auipc	ra,0xfffff
    80004158:	25c080e7          	jalr	604(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    8000415c:	00098513          	mv	a0,s3
    80004160:	fffff097          	auipc	ra,0xfffff
    80004164:	2c0080e7          	jalr	704(ra) # 80003420 <_ZN5Riscv12printIntegerEm>
        int key = data->buffer->get();
    80004168:	008a3503          	ld	a0,8(s4)
    8000416c:	00002097          	auipc	ra,0x2
    80004170:	bb4080e7          	jalr	-1100(ra) # 80005d20 <_ZN6Buffer3getEv>
    80004174:	00050913          	mv	s2,a0
        i++;
    80004178:	0019849b          	addiw	s1,s3,1
    8000417c:	0004899b          	sext.w	s3,s1
        Riscv::printString("get ");
    80004180:	00004517          	auipc	a0,0x4
    80004184:	09050513          	addi	a0,a0,144 # 80008210 <_ZZN5Riscv12printIntegerEmE6digits+0x88>
    80004188:	fffff097          	auipc	ra,0xfffff
    8000418c:	228080e7          	jalr	552(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(key);
    80004190:	00090513          	mv	a0,s2
    80004194:	fffff097          	auipc	ra,0xfffff
    80004198:	28c080e7          	jalr	652(ra) # 80003420 <_ZN5Riscv12printIntegerEm>
        if (i % (5 * data->id) == 0) {
    8000419c:	000a2703          	lw	a4,0(s4)
    800041a0:	0027179b          	slliw	a5,a4,0x2
    800041a4:	00e787bb          	addw	a5,a5,a4
    800041a8:	02f4e7bb          	remw	a5,s1,a5
    800041ac:	f60784e3          	beqz	a5,80004114 <_Z8consumerPv+0x3c>
        if (i % 80 == 0) {
    800041b0:	05000793          	li	a5,80
    800041b4:	02f4e4bb          	remw	s1,s1,a5
    800041b8:	f80494e3          	bnez	s1,80004140 <_Z8consumerPv+0x68>
    800041bc:	f75ff06f          	j	80004130 <_Z8consumerPv+0x58>
        }
    }

    Riscv::printString("consumer done\n");
    800041c0:	00004517          	auipc	a0,0x4
    800041c4:	05850513          	addi	a0,a0,88 # 80008218 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    800041c8:	fffff097          	auipc	ra,0xfffff
    800041cc:	1e8080e7          	jalr	488(ra) # 800033b0 <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    800041d0:	010a3503          	ld	a0,16(s4)
    800041d4:	ffffd097          	auipc	ra,0xffffd
    800041d8:	228080e7          	jalr	552(ra) # 800013fc <sem_signal>
}
    800041dc:	02813083          	ld	ra,40(sp)
    800041e0:	02013403          	ld	s0,32(sp)
    800041e4:	01813483          	ld	s1,24(sp)
    800041e8:	01013903          	ld	s2,16(sp)
    800041ec:	00813983          	ld	s3,8(sp)
    800041f0:	00013a03          	ld	s4,0(sp)
    800041f4:	03010113          	addi	sp,sp,48
    800041f8:	00008067          	ret

00000000800041fc <_Z16producerKeyboardPv>:
void producerKeyboard(void *arg) {
    800041fc:	fe010113          	addi	sp,sp,-32
    80004200:	00113c23          	sd	ra,24(sp)
    80004204:	00813823          	sd	s0,16(sp)
    80004208:	00913423          	sd	s1,8(sp)
    8000420c:	01213023          	sd	s2,0(sp)
    80004210:	02010413          	addi	s0,sp,32
    80004214:	00050493          	mv	s1,a0
    int i = 0;
    80004218:	00000913          	li	s2,0
    8000421c:	00c0006f          	j	80004228 <_Z16producerKeyboardPv+0x2c>
            thread_dispatch();
    80004220:	ffffd097          	auipc	ra,0xffffd
    80004224:	104080e7          	jalr	260(ra) # 80001324 <thread_dispatch>
    while ((key = __getc()) != 0x1b) {
    80004228:	00004097          	auipc	ra,0x4
    8000422c:	c80080e7          	jalr	-896(ra) # 80007ea8 <__getc>
    80004230:	0005059b          	sext.w	a1,a0
    80004234:	01b00793          	li	a5,27
    80004238:	02f58a63          	beq	a1,a5,8000426c <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    8000423c:	0084b503          	ld	a0,8(s1)
    80004240:	00002097          	auipc	ra,0x2
    80004244:	a50080e7          	jalr	-1456(ra) # 80005c90 <_ZN6Buffer3putEi>
        i++;
    80004248:	0019071b          	addiw	a4,s2,1
    8000424c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004250:	0004a683          	lw	a3,0(s1)
    80004254:	0026979b          	slliw	a5,a3,0x2
    80004258:	00d787bb          	addw	a5,a5,a3
    8000425c:	0017979b          	slliw	a5,a5,0x1
    80004260:	02f767bb          	remw	a5,a4,a5
    80004264:	fc0792e3          	bnez	a5,80004228 <_Z16producerKeyboardPv+0x2c>
    80004268:	fb9ff06f          	j	80004220 <_Z16producerKeyboardPv+0x24>
    threadEnd = 1;
    8000426c:	00100793          	li	a5,1
    80004270:	00006717          	auipc	a4,0x6
    80004274:	62f72423          	sw	a5,1576(a4) # 8000a898 <threadEnd>
    delete data->buffer;
    80004278:	0084b903          	ld	s2,8(s1)
    8000427c:	00090e63          	beqz	s2,80004298 <_Z16producerKeyboardPv+0x9c>
    80004280:	00090513          	mv	a0,s2
    80004284:	00002097          	auipc	ra,0x2
    80004288:	960080e7          	jalr	-1696(ra) # 80005be4 <_ZN6BufferD1Ev>
    8000428c:	00090513          	mv	a0,s2
    80004290:	fffff097          	auipc	ra,0xfffff
    80004294:	cc4080e7          	jalr	-828(ra) # 80002f54 <_ZdlPv>
    sem_signal(data->wait);
    80004298:	0104b503          	ld	a0,16(s1)
    8000429c:	ffffd097          	auipc	ra,0xffffd
    800042a0:	160080e7          	jalr	352(ra) # 800013fc <sem_signal>
}
    800042a4:	01813083          	ld	ra,24(sp)
    800042a8:	01013403          	ld	s0,16(sp)
    800042ac:	00813483          	ld	s1,8(sp)
    800042b0:	00013903          	ld	s2,0(sp)
    800042b4:	02010113          	addi	sp,sp,32
    800042b8:	00008067          	ret

00000000800042bc <_Z22producerConsumer_C_APIv>:
//todo
//threadNuma hardCoded, timer enables itself as soon as
//code gets into getString
//isto za bafer
void producerConsumer_C_API()
{
    800042bc:	fa010113          	addi	sp,sp,-96
    800042c0:	04113c23          	sd	ra,88(sp)
    800042c4:	04813823          	sd	s0,80(sp)
    800042c8:	04913423          	sd	s1,72(sp)
    800042cc:	05213023          	sd	s2,64(sp)
    800042d0:	06010413          	addi	s0,sp,96
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    800042d4:	00004517          	auipc	a0,0x4
    800042d8:	f5450513          	addi	a0,a0,-172 # 80008228 <_ZZN5Riscv12printIntegerEmE6digits+0xa0>
    800042dc:	00001097          	auipc	ra,0x1
    800042e0:	158080e7          	jalr	344(ra) # 80005434 <_Z11printStringPKc>
    //getString(input, 30);
    threadNum = 1;

    printString("Unesite velicinu bafera?\n");
    800042e4:	00004517          	auipc	a0,0x4
    800042e8:	f6450513          	addi	a0,a0,-156 # 80008248 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    800042ec:	00001097          	auipc	ra,0x1
    800042f0:	148080e7          	jalr	328(ra) # 80005434 <_Z11printStringPKc>
    //getString(input, 30);
    n = 3;

    printString("Broj proizvodjaca "); printInt(threadNum);
    800042f4:	00004517          	auipc	a0,0x4
    800042f8:	f7450513          	addi	a0,a0,-140 # 80008268 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    800042fc:	00001097          	auipc	ra,0x1
    80004300:	138080e7          	jalr	312(ra) # 80005434 <_Z11printStringPKc>
    80004304:	00000613          	li	a2,0
    80004308:	00a00593          	li	a1,10
    8000430c:	00100513          	li	a0,1
    80004310:	00001097          	auipc	ra,0x1
    80004314:	2bc080e7          	jalr	700(ra) # 800055cc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004318:	00004517          	auipc	a0,0x4
    8000431c:	f6850513          	addi	a0,a0,-152 # 80008280 <_ZZN5Riscv12printIntegerEmE6digits+0xf8>
    80004320:	00001097          	auipc	ra,0x1
    80004324:	114080e7          	jalr	276(ra) # 80005434 <_Z11printStringPKc>
    80004328:	00000613          	li	a2,0
    8000432c:	00a00593          	li	a1,10
    80004330:	00300513          	li	a0,3
    80004334:	00001097          	auipc	ra,0x1
    80004338:	298080e7          	jalr	664(ra) # 800055cc <_Z8printIntiii>
    printString(".\n");
    8000433c:	00004517          	auipc	a0,0x4
    80004340:	e0c50513          	addi	a0,a0,-500 # 80008148 <CONSOLE_STATUS+0x138>
    80004344:	00001097          	auipc	ra,0x1
    80004348:	0f0080e7          	jalr	240(ra) # 80005434 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    8000434c:	03800513          	li	a0,56
    80004350:	fffff097          	auipc	ra,0xfffff
    80004354:	bdc080e7          	jalr	-1060(ra) # 80002f2c <_Znwm>
    80004358:	00050913          	mv	s2,a0
    8000435c:	00300593          	li	a1,3
    80004360:	00001097          	auipc	ra,0x1
    80004364:	7fc080e7          	jalr	2044(ra) # 80005b5c <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004368:	00000593          	li	a1,0
    8000436c:	00006517          	auipc	a0,0x6
    80004370:	53450513          	addi	a0,a0,1332 # 8000a8a0 <waitForAll>
    80004374:	ffffd097          	auipc	ra,0xffffd
    80004378:	ff8080e7          	jalr	-8(ra) # 8000136c <sem_open>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    8000437c:	00100793          	li	a5,1
    80004380:	faf42c23          	sw	a5,-72(s0)
    data[threadNum].buffer = buffer;
    80004384:	fd243023          	sd	s2,-64(s0)
    data[threadNum].wait = waitForAll;
    80004388:	00006797          	auipc	a5,0x6
    8000438c:	5187b783          	ld	a5,1304(a5) # 8000a8a0 <waitForAll>
    80004390:	fcf43423          	sd	a5,-56(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004394:	fb840613          	addi	a2,s0,-72
    80004398:	00000597          	auipc	a1,0x0
    8000439c:	d4058593          	addi	a1,a1,-704 # 800040d8 <_Z8consumerPv>
    800043a0:	fd040513          	addi	a0,s0,-48
    800043a4:	ffffd097          	auipc	ra,0xffffd
    800043a8:	f00080e7          	jalr	-256(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    800043ac:	00000493          	li	s1,0
    800043b0:	06904063          	bgtz	s1,80004410 <_Z22producerConsumer_C_APIv+0x154>
        data[i].id = i;
    800043b4:	00149613          	slli	a2,s1,0x1
    800043b8:	009607b3          	add	a5,a2,s1
    800043bc:	00379793          	slli	a5,a5,0x3
    800043c0:	fe040713          	addi	a4,s0,-32
    800043c4:	00f707b3          	add	a5,a4,a5
    800043c8:	fc97a023          	sw	s1,-64(a5)
        data[i].buffer = buffer;
    800043cc:	fd27b423          	sd	s2,-56(a5)
        data[i].wait = waitForAll;
    800043d0:	00006717          	auipc	a4,0x6
    800043d4:	4d073703          	ld	a4,1232(a4) # 8000a8a0 <waitForAll>
    800043d8:	fce7b823          	sd	a4,-48(a5)
        //todo changed
        //thread_create(threads + i,
        //              i > 0 ? producer : producerKeyboard,
        //              data + i);

        thread_create(threads + i, producer, data + i);
    800043dc:	00349793          	slli	a5,s1,0x3
    800043e0:	00960633          	add	a2,a2,s1
    800043e4:	00361613          	slli	a2,a2,0x3
    800043e8:	fa040713          	addi	a4,s0,-96
    800043ec:	00c70633          	add	a2,a4,a2
    800043f0:	00000597          	auipc	a1,0x0
    800043f4:	bd458593          	addi	a1,a1,-1068 # 80003fc4 <_Z8producerPv>
    800043f8:	fd840513          	addi	a0,s0,-40
    800043fc:	00f50533          	add	a0,a0,a5
    80004400:	ffffd097          	auipc	ra,0xffffd
    80004404:	ea4080e7          	jalr	-348(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004408:	0014849b          	addiw	s1,s1,1
    8000440c:	fa5ff06f          	j	800043b0 <_Z22producerConsumer_C_APIv+0xf4>

    }

    thread_dispatch();
    80004410:	ffffd097          	auipc	ra,0xffffd
    80004414:	f14080e7          	jalr	-236(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80004418:	00000493          	li	s1,0
    8000441c:	0180006f          	j	80004434 <_Z22producerConsumer_C_APIv+0x178>
        sem_wait(waitForAll);
    80004420:	00006517          	auipc	a0,0x6
    80004424:	48053503          	ld	a0,1152(a0) # 8000a8a0 <waitForAll>
    80004428:	ffffd097          	auipc	ra,0xffffd
    8000442c:	fa8080e7          	jalr	-88(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80004430:	0014849b          	addiw	s1,s1,1
    80004434:	00100793          	li	a5,1
    80004438:	fe97d4e3          	bge	a5,s1,80004420 <_Z22producerConsumer_C_APIv+0x164>
    }

    sem_close(waitForAll);
    8000443c:	00006517          	auipc	a0,0x6
    80004440:	46453503          	ld	a0,1124(a0) # 8000a8a0 <waitForAll>
    80004444:	ffffd097          	auipc	ra,0xffffd
    80004448:	f60080e7          	jalr	-160(ra) # 800013a4 <sem_close>
    8000444c:	05813083          	ld	ra,88(sp)
    80004450:	05013403          	ld	s0,80(sp)
    80004454:	04813483          	ld	s1,72(sp)
    80004458:	04013903          	ld	s2,64(sp)
    8000445c:	06010113          	addi	sp,sp,96
    80004460:	00008067          	ret
    80004464:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004468:	00090513          	mv	a0,s2
    8000446c:	fffff097          	auipc	ra,0xfffff
    80004470:	ae8080e7          	jalr	-1304(ra) # 80002f54 <_ZdlPv>
    80004474:	00048513          	mv	a0,s1
    80004478:	00007097          	auipc	ra,0x7
    8000447c:	510080e7          	jalr	1296(ra) # 8000b988 <_Unwind_Resume>

0000000080004480 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004480:	fe010113          	addi	sp,sp,-32
    80004484:	00113c23          	sd	ra,24(sp)
    80004488:	00813823          	sd	s0,16(sp)
    8000448c:	00913423          	sd	s1,8(sp)
    80004490:	01213023          	sd	s2,0(sp)
    80004494:	02010413          	addi	s0,sp,32
    80004498:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000449c:	00100793          	li	a5,1
    800044a0:	02a7f863          	bgeu	a5,a0,800044d0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800044a4:	00a00793          	li	a5,10
    800044a8:	02f577b3          	remu	a5,a0,a5
    800044ac:	02078e63          	beqz	a5,800044e8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800044b0:	fff48513          	addi	a0,s1,-1
    800044b4:	00000097          	auipc	ra,0x0
    800044b8:	fcc080e7          	jalr	-52(ra) # 80004480 <_ZL9fibonaccim>
    800044bc:	00050913          	mv	s2,a0
    800044c0:	ffe48513          	addi	a0,s1,-2
    800044c4:	00000097          	auipc	ra,0x0
    800044c8:	fbc080e7          	jalr	-68(ra) # 80004480 <_ZL9fibonaccim>
    800044cc:	00a90533          	add	a0,s2,a0
}
    800044d0:	01813083          	ld	ra,24(sp)
    800044d4:	01013403          	ld	s0,16(sp)
    800044d8:	00813483          	ld	s1,8(sp)
    800044dc:	00013903          	ld	s2,0(sp)
    800044e0:	02010113          	addi	sp,sp,32
    800044e4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800044e8:	ffffd097          	auipc	ra,0xffffd
    800044ec:	e3c080e7          	jalr	-452(ra) # 80001324 <thread_dispatch>
    800044f0:	fc1ff06f          	j	800044b0 <_ZL9fibonaccim+0x30>

00000000800044f4 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    800044f4:	fe010113          	addi	sp,sp,-32
    800044f8:	00113c23          	sd	ra,24(sp)
    800044fc:	00813823          	sd	s0,16(sp)
    80004500:	00913423          	sd	s1,8(sp)
    80004504:	01213023          	sd	s2,0(sp)
    80004508:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000450c:	00000913          	li	s2,0
    80004510:	0380006f          	j	80004548 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004514:	ffffd097          	auipc	ra,0xffffd
    80004518:	e10080e7          	jalr	-496(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    8000451c:	00148493          	addi	s1,s1,1
    80004520:	000027b7          	lui	a5,0x2
    80004524:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004528:	0097ee63          	bltu	a5,s1,80004544 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000452c:	00000713          	li	a4,0
    80004530:	000077b7          	lui	a5,0x7
    80004534:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004538:	fce7eee3          	bltu	a5,a4,80004514 <_ZN7WorkerA11workerBodyAEPv+0x20>
    8000453c:	00170713          	addi	a4,a4,1
    80004540:	ff1ff06f          	j	80004530 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004544:	00190913          	addi	s2,s2,1
    80004548:	00900793          	li	a5,9
    8000454c:	0527e063          	bltu	a5,s2,8000458c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004550:	00004517          	auipc	a0,0x4
    80004554:	d4850513          	addi	a0,a0,-696 # 80008298 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80004558:	00001097          	auipc	ra,0x1
    8000455c:	edc080e7          	jalr	-292(ra) # 80005434 <_Z11printStringPKc>
    80004560:	00000613          	li	a2,0
    80004564:	00a00593          	li	a1,10
    80004568:	0009051b          	sext.w	a0,s2
    8000456c:	00001097          	auipc	ra,0x1
    80004570:	060080e7          	jalr	96(ra) # 800055cc <_Z8printIntiii>
    80004574:	00004517          	auipc	a0,0x4
    80004578:	c0450513          	addi	a0,a0,-1020 # 80008178 <CONSOLE_STATUS+0x168>
    8000457c:	00001097          	auipc	ra,0x1
    80004580:	eb8080e7          	jalr	-328(ra) # 80005434 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004584:	00000493          	li	s1,0
    80004588:	f99ff06f          	j	80004520 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    8000458c:	00004517          	auipc	a0,0x4
    80004590:	d1450513          	addi	a0,a0,-748 # 800082a0 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    80004594:	00001097          	auipc	ra,0x1
    80004598:	ea0080e7          	jalr	-352(ra) # 80005434 <_Z11printStringPKc>
    finishedA = true;
    8000459c:	00100793          	li	a5,1
    800045a0:	00006717          	auipc	a4,0x6
    800045a4:	30f70423          	sb	a5,776(a4) # 8000a8a8 <_ZL9finishedA>
}
    800045a8:	01813083          	ld	ra,24(sp)
    800045ac:	01013403          	ld	s0,16(sp)
    800045b0:	00813483          	ld	s1,8(sp)
    800045b4:	00013903          	ld	s2,0(sp)
    800045b8:	02010113          	addi	sp,sp,32
    800045bc:	00008067          	ret

00000000800045c0 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800045c0:	fe010113          	addi	sp,sp,-32
    800045c4:	00113c23          	sd	ra,24(sp)
    800045c8:	00813823          	sd	s0,16(sp)
    800045cc:	00913423          	sd	s1,8(sp)
    800045d0:	01213023          	sd	s2,0(sp)
    800045d4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800045d8:	00000913          	li	s2,0
    800045dc:	0380006f          	j	80004614 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800045e0:	ffffd097          	auipc	ra,0xffffd
    800045e4:	d44080e7          	jalr	-700(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800045e8:	00148493          	addi	s1,s1,1
    800045ec:	000027b7          	lui	a5,0x2
    800045f0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800045f4:	0097ee63          	bltu	a5,s1,80004610 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800045f8:	00000713          	li	a4,0
    800045fc:	000077b7          	lui	a5,0x7
    80004600:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004604:	fce7eee3          	bltu	a5,a4,800045e0 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004608:	00170713          	addi	a4,a4,1
    8000460c:	ff1ff06f          	j	800045fc <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004610:	00190913          	addi	s2,s2,1
    80004614:	00f00793          	li	a5,15
    80004618:	0527e063          	bltu	a5,s2,80004658 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000461c:	00004517          	auipc	a0,0x4
    80004620:	c9450513          	addi	a0,a0,-876 # 800082b0 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80004624:	00001097          	auipc	ra,0x1
    80004628:	e10080e7          	jalr	-496(ra) # 80005434 <_Z11printStringPKc>
    8000462c:	00000613          	li	a2,0
    80004630:	00a00593          	li	a1,10
    80004634:	0009051b          	sext.w	a0,s2
    80004638:	00001097          	auipc	ra,0x1
    8000463c:	f94080e7          	jalr	-108(ra) # 800055cc <_Z8printIntiii>
    80004640:	00004517          	auipc	a0,0x4
    80004644:	b3850513          	addi	a0,a0,-1224 # 80008178 <CONSOLE_STATUS+0x168>
    80004648:	00001097          	auipc	ra,0x1
    8000464c:	dec080e7          	jalr	-532(ra) # 80005434 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004650:	00000493          	li	s1,0
    80004654:	f99ff06f          	j	800045ec <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004658:	00004517          	auipc	a0,0x4
    8000465c:	c6050513          	addi	a0,a0,-928 # 800082b8 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    80004660:	00001097          	auipc	ra,0x1
    80004664:	dd4080e7          	jalr	-556(ra) # 80005434 <_Z11printStringPKc>
    finishedB = true;
    80004668:	00100793          	li	a5,1
    8000466c:	00006717          	auipc	a4,0x6
    80004670:	22f70ea3          	sb	a5,573(a4) # 8000a8a9 <_ZL9finishedB>
    thread_dispatch();
    80004674:	ffffd097          	auipc	ra,0xffffd
    80004678:	cb0080e7          	jalr	-848(ra) # 80001324 <thread_dispatch>
}
    8000467c:	01813083          	ld	ra,24(sp)
    80004680:	01013403          	ld	s0,16(sp)
    80004684:	00813483          	ld	s1,8(sp)
    80004688:	00013903          	ld	s2,0(sp)
    8000468c:	02010113          	addi	sp,sp,32
    80004690:	00008067          	ret

0000000080004694 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004694:	fe010113          	addi	sp,sp,-32
    80004698:	00113c23          	sd	ra,24(sp)
    8000469c:	00813823          	sd	s0,16(sp)
    800046a0:	00913423          	sd	s1,8(sp)
    800046a4:	01213023          	sd	s2,0(sp)
    800046a8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800046ac:	00000493          	li	s1,0
    800046b0:	0400006f          	j	800046f0 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800046b4:	00004517          	auipc	a0,0x4
    800046b8:	c1450513          	addi	a0,a0,-1004 # 800082c8 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    800046bc:	00001097          	auipc	ra,0x1
    800046c0:	d78080e7          	jalr	-648(ra) # 80005434 <_Z11printStringPKc>
    800046c4:	00000613          	li	a2,0
    800046c8:	00a00593          	li	a1,10
    800046cc:	00048513          	mv	a0,s1
    800046d0:	00001097          	auipc	ra,0x1
    800046d4:	efc080e7          	jalr	-260(ra) # 800055cc <_Z8printIntiii>
    800046d8:	00004517          	auipc	a0,0x4
    800046dc:	aa050513          	addi	a0,a0,-1376 # 80008178 <CONSOLE_STATUS+0x168>
    800046e0:	00001097          	auipc	ra,0x1
    800046e4:	d54080e7          	jalr	-684(ra) # 80005434 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800046e8:	0014849b          	addiw	s1,s1,1
    800046ec:	0ff4f493          	andi	s1,s1,255
    800046f0:	00200793          	li	a5,2
    800046f4:	fc97f0e3          	bgeu	a5,s1,800046b4 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800046f8:	00004517          	auipc	a0,0x4
    800046fc:	bd850513          	addi	a0,a0,-1064 # 800082d0 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004700:	00001097          	auipc	ra,0x1
    80004704:	d34080e7          	jalr	-716(ra) # 80005434 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004708:	00700313          	li	t1,7
    thread_dispatch();
    8000470c:	ffffd097          	auipc	ra,0xffffd
    80004710:	c18080e7          	jalr	-1000(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004714:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004718:	00004517          	auipc	a0,0x4
    8000471c:	bc850513          	addi	a0,a0,-1080 # 800082e0 <_ZZN5Riscv12printIntegerEmE6digits+0x158>
    80004720:	00001097          	auipc	ra,0x1
    80004724:	d14080e7          	jalr	-748(ra) # 80005434 <_Z11printStringPKc>
    80004728:	00000613          	li	a2,0
    8000472c:	00a00593          	li	a1,10
    80004730:	0009051b          	sext.w	a0,s2
    80004734:	00001097          	auipc	ra,0x1
    80004738:	e98080e7          	jalr	-360(ra) # 800055cc <_Z8printIntiii>
    8000473c:	00004517          	auipc	a0,0x4
    80004740:	a3c50513          	addi	a0,a0,-1476 # 80008178 <CONSOLE_STATUS+0x168>
    80004744:	00001097          	auipc	ra,0x1
    80004748:	cf0080e7          	jalr	-784(ra) # 80005434 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000474c:	00c00513          	li	a0,12
    80004750:	00000097          	auipc	ra,0x0
    80004754:	d30080e7          	jalr	-720(ra) # 80004480 <_ZL9fibonaccim>
    80004758:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000475c:	00004517          	auipc	a0,0x4
    80004760:	b8c50513          	addi	a0,a0,-1140 # 800082e8 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80004764:	00001097          	auipc	ra,0x1
    80004768:	cd0080e7          	jalr	-816(ra) # 80005434 <_Z11printStringPKc>
    8000476c:	00000613          	li	a2,0
    80004770:	00a00593          	li	a1,10
    80004774:	0009051b          	sext.w	a0,s2
    80004778:	00001097          	auipc	ra,0x1
    8000477c:	e54080e7          	jalr	-428(ra) # 800055cc <_Z8printIntiii>
    80004780:	00004517          	auipc	a0,0x4
    80004784:	9f850513          	addi	a0,a0,-1544 # 80008178 <CONSOLE_STATUS+0x168>
    80004788:	00001097          	auipc	ra,0x1
    8000478c:	cac080e7          	jalr	-852(ra) # 80005434 <_Z11printStringPKc>
    80004790:	0400006f          	j	800047d0 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004794:	00004517          	auipc	a0,0x4
    80004798:	b3450513          	addi	a0,a0,-1228 # 800082c8 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    8000479c:	00001097          	auipc	ra,0x1
    800047a0:	c98080e7          	jalr	-872(ra) # 80005434 <_Z11printStringPKc>
    800047a4:	00000613          	li	a2,0
    800047a8:	00a00593          	li	a1,10
    800047ac:	00048513          	mv	a0,s1
    800047b0:	00001097          	auipc	ra,0x1
    800047b4:	e1c080e7          	jalr	-484(ra) # 800055cc <_Z8printIntiii>
    800047b8:	00004517          	auipc	a0,0x4
    800047bc:	9c050513          	addi	a0,a0,-1600 # 80008178 <CONSOLE_STATUS+0x168>
    800047c0:	00001097          	auipc	ra,0x1
    800047c4:	c74080e7          	jalr	-908(ra) # 80005434 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800047c8:	0014849b          	addiw	s1,s1,1
    800047cc:	0ff4f493          	andi	s1,s1,255
    800047d0:	00500793          	li	a5,5
    800047d4:	fc97f0e3          	bgeu	a5,s1,80004794 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800047d8:	00004517          	auipc	a0,0x4
    800047dc:	ac850513          	addi	a0,a0,-1336 # 800082a0 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    800047e0:	00001097          	auipc	ra,0x1
    800047e4:	c54080e7          	jalr	-940(ra) # 80005434 <_Z11printStringPKc>
    finishedC = true;
    800047e8:	00100793          	li	a5,1
    800047ec:	00006717          	auipc	a4,0x6
    800047f0:	0af70f23          	sb	a5,190(a4) # 8000a8aa <_ZL9finishedC>
    thread_dispatch();
    800047f4:	ffffd097          	auipc	ra,0xffffd
    800047f8:	b30080e7          	jalr	-1232(ra) # 80001324 <thread_dispatch>
}
    800047fc:	01813083          	ld	ra,24(sp)
    80004800:	01013403          	ld	s0,16(sp)
    80004804:	00813483          	ld	s1,8(sp)
    80004808:	00013903          	ld	s2,0(sp)
    8000480c:	02010113          	addi	sp,sp,32
    80004810:	00008067          	ret

0000000080004814 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004814:	fe010113          	addi	sp,sp,-32
    80004818:	00113c23          	sd	ra,24(sp)
    8000481c:	00813823          	sd	s0,16(sp)
    80004820:	00913423          	sd	s1,8(sp)
    80004824:	01213023          	sd	s2,0(sp)
    80004828:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000482c:	00a00493          	li	s1,10
    80004830:	0400006f          	j	80004870 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004834:	00004517          	auipc	a0,0x4
    80004838:	ac450513          	addi	a0,a0,-1340 # 800082f8 <_ZZN5Riscv12printIntegerEmE6digits+0x170>
    8000483c:	00001097          	auipc	ra,0x1
    80004840:	bf8080e7          	jalr	-1032(ra) # 80005434 <_Z11printStringPKc>
    80004844:	00000613          	li	a2,0
    80004848:	00a00593          	li	a1,10
    8000484c:	00048513          	mv	a0,s1
    80004850:	00001097          	auipc	ra,0x1
    80004854:	d7c080e7          	jalr	-644(ra) # 800055cc <_Z8printIntiii>
    80004858:	00004517          	auipc	a0,0x4
    8000485c:	92050513          	addi	a0,a0,-1760 # 80008178 <CONSOLE_STATUS+0x168>
    80004860:	00001097          	auipc	ra,0x1
    80004864:	bd4080e7          	jalr	-1068(ra) # 80005434 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004868:	0014849b          	addiw	s1,s1,1
    8000486c:	0ff4f493          	andi	s1,s1,255
    80004870:	00c00793          	li	a5,12
    80004874:	fc97f0e3          	bgeu	a5,s1,80004834 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004878:	00004517          	auipc	a0,0x4
    8000487c:	a8850513          	addi	a0,a0,-1400 # 80008300 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80004880:	00001097          	auipc	ra,0x1
    80004884:	bb4080e7          	jalr	-1100(ra) # 80005434 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004888:	00500313          	li	t1,5
    thread_dispatch();
    8000488c:	ffffd097          	auipc	ra,0xffffd
    80004890:	a98080e7          	jalr	-1384(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004894:	01000513          	li	a0,16
    80004898:	00000097          	auipc	ra,0x0
    8000489c:	be8080e7          	jalr	-1048(ra) # 80004480 <_ZL9fibonaccim>
    800048a0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800048a4:	00004517          	auipc	a0,0x4
    800048a8:	a6c50513          	addi	a0,a0,-1428 # 80008310 <_ZZN5Riscv12printIntegerEmE6digits+0x188>
    800048ac:	00001097          	auipc	ra,0x1
    800048b0:	b88080e7          	jalr	-1144(ra) # 80005434 <_Z11printStringPKc>
    800048b4:	00000613          	li	a2,0
    800048b8:	00a00593          	li	a1,10
    800048bc:	0009051b          	sext.w	a0,s2
    800048c0:	00001097          	auipc	ra,0x1
    800048c4:	d0c080e7          	jalr	-756(ra) # 800055cc <_Z8printIntiii>
    800048c8:	00004517          	auipc	a0,0x4
    800048cc:	8b050513          	addi	a0,a0,-1872 # 80008178 <CONSOLE_STATUS+0x168>
    800048d0:	00001097          	auipc	ra,0x1
    800048d4:	b64080e7          	jalr	-1180(ra) # 80005434 <_Z11printStringPKc>
    800048d8:	0400006f          	j	80004918 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800048dc:	00004517          	auipc	a0,0x4
    800048e0:	a1c50513          	addi	a0,a0,-1508 # 800082f8 <_ZZN5Riscv12printIntegerEmE6digits+0x170>
    800048e4:	00001097          	auipc	ra,0x1
    800048e8:	b50080e7          	jalr	-1200(ra) # 80005434 <_Z11printStringPKc>
    800048ec:	00000613          	li	a2,0
    800048f0:	00a00593          	li	a1,10
    800048f4:	00048513          	mv	a0,s1
    800048f8:	00001097          	auipc	ra,0x1
    800048fc:	cd4080e7          	jalr	-812(ra) # 800055cc <_Z8printIntiii>
    80004900:	00004517          	auipc	a0,0x4
    80004904:	87850513          	addi	a0,a0,-1928 # 80008178 <CONSOLE_STATUS+0x168>
    80004908:	00001097          	auipc	ra,0x1
    8000490c:	b2c080e7          	jalr	-1236(ra) # 80005434 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004910:	0014849b          	addiw	s1,s1,1
    80004914:	0ff4f493          	andi	s1,s1,255
    80004918:	00f00793          	li	a5,15
    8000491c:	fc97f0e3          	bgeu	a5,s1,800048dc <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004920:	00004517          	auipc	a0,0x4
    80004924:	a0050513          	addi	a0,a0,-1536 # 80008320 <_ZZN5Riscv12printIntegerEmE6digits+0x198>
    80004928:	00001097          	auipc	ra,0x1
    8000492c:	b0c080e7          	jalr	-1268(ra) # 80005434 <_Z11printStringPKc>
    finishedD = true;
    80004930:	00100793          	li	a5,1
    80004934:	00006717          	auipc	a4,0x6
    80004938:	f6f70ba3          	sb	a5,-137(a4) # 8000a8ab <_ZL9finishedD>
    thread_dispatch();
    8000493c:	ffffd097          	auipc	ra,0xffffd
    80004940:	9e8080e7          	jalr	-1560(ra) # 80001324 <thread_dispatch>
}
    80004944:	01813083          	ld	ra,24(sp)
    80004948:	01013403          	ld	s0,16(sp)
    8000494c:	00813483          	ld	s1,8(sp)
    80004950:	00013903          	ld	s2,0(sp)
    80004954:	02010113          	addi	sp,sp,32
    80004958:	00008067          	ret

000000008000495c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    8000495c:	fc010113          	addi	sp,sp,-64
    80004960:	02113c23          	sd	ra,56(sp)
    80004964:	02813823          	sd	s0,48(sp)
    80004968:	02913423          	sd	s1,40(sp)
    8000496c:	03213023          	sd	s2,32(sp)
    80004970:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004974:	02000513          	li	a0,32
    80004978:	ffffe097          	auipc	ra,0xffffe
    8000497c:	5b4080e7          	jalr	1460(ra) # 80002f2c <_Znwm>
    80004980:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80004984:	ffffe097          	auipc	ra,0xffffe
    80004988:	774080e7          	jalr	1908(ra) # 800030f8 <_ZN6ThreadC1Ev>
    8000498c:	00006797          	auipc	a5,0x6
    80004990:	d7478793          	addi	a5,a5,-652 # 8000a700 <_ZTV7WorkerA+0x10>
    80004994:	00f4b023          	sd	a5,0(s1)
    80004998:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    8000499c:	00004517          	auipc	a0,0x4
    800049a0:	99450513          	addi	a0,a0,-1644 # 80008330 <_ZZN5Riscv12printIntegerEmE6digits+0x1a8>
    800049a4:	00001097          	auipc	ra,0x1
    800049a8:	a90080e7          	jalr	-1392(ra) # 80005434 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800049ac:	02000513          	li	a0,32
    800049b0:	ffffe097          	auipc	ra,0xffffe
    800049b4:	57c080e7          	jalr	1404(ra) # 80002f2c <_Znwm>
    800049b8:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    800049bc:	ffffe097          	auipc	ra,0xffffe
    800049c0:	73c080e7          	jalr	1852(ra) # 800030f8 <_ZN6ThreadC1Ev>
    800049c4:	00006797          	auipc	a5,0x6
    800049c8:	d6478793          	addi	a5,a5,-668 # 8000a728 <_ZTV7WorkerB+0x10>
    800049cc:	00f4b023          	sd	a5,0(s1)
    800049d0:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800049d4:	00004517          	auipc	a0,0x4
    800049d8:	97450513          	addi	a0,a0,-1676 # 80008348 <_ZZN5Riscv12printIntegerEmE6digits+0x1c0>
    800049dc:	00001097          	auipc	ra,0x1
    800049e0:	a58080e7          	jalr	-1448(ra) # 80005434 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800049e4:	02000513          	li	a0,32
    800049e8:	ffffe097          	auipc	ra,0xffffe
    800049ec:	544080e7          	jalr	1348(ra) # 80002f2c <_Znwm>
    800049f0:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    800049f4:	ffffe097          	auipc	ra,0xffffe
    800049f8:	704080e7          	jalr	1796(ra) # 800030f8 <_ZN6ThreadC1Ev>
    800049fc:	00006797          	auipc	a5,0x6
    80004a00:	d5478793          	addi	a5,a5,-684 # 8000a750 <_ZTV7WorkerC+0x10>
    80004a04:	00f4b023          	sd	a5,0(s1)
    80004a08:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004a0c:	00004517          	auipc	a0,0x4
    80004a10:	95450513          	addi	a0,a0,-1708 # 80008360 <_ZZN5Riscv12printIntegerEmE6digits+0x1d8>
    80004a14:	00001097          	auipc	ra,0x1
    80004a18:	a20080e7          	jalr	-1504(ra) # 80005434 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004a1c:	02000513          	li	a0,32
    80004a20:	ffffe097          	auipc	ra,0xffffe
    80004a24:	50c080e7          	jalr	1292(ra) # 80002f2c <_Znwm>
    80004a28:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80004a2c:	ffffe097          	auipc	ra,0xffffe
    80004a30:	6cc080e7          	jalr	1740(ra) # 800030f8 <_ZN6ThreadC1Ev>
    80004a34:	00006797          	auipc	a5,0x6
    80004a38:	d4478793          	addi	a5,a5,-700 # 8000a778 <_ZTV7WorkerD+0x10>
    80004a3c:	00f4b023          	sd	a5,0(s1)
    80004a40:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004a44:	00004517          	auipc	a0,0x4
    80004a48:	93450513          	addi	a0,a0,-1740 # 80008378 <_ZZN5Riscv12printIntegerEmE6digits+0x1f0>
    80004a4c:	00001097          	auipc	ra,0x1
    80004a50:	9e8080e7          	jalr	-1560(ra) # 80005434 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004a54:	00000493          	li	s1,0
    80004a58:	00300793          	li	a5,3
    80004a5c:	0297c663          	blt	a5,s1,80004a88 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004a60:	00349793          	slli	a5,s1,0x3
    80004a64:	fe040713          	addi	a4,s0,-32
    80004a68:	00f707b3          	add	a5,a4,a5
    80004a6c:	fe07b503          	ld	a0,-32(a5)
    80004a70:	ffffe097          	auipc	ra,0xffffe
    80004a74:	58c080e7          	jalr	1420(ra) # 80002ffc <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004a78:	0014849b          	addiw	s1,s1,1
    80004a7c:	fddff06f          	j	80004a58 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004a80:	ffffe097          	auipc	ra,0xffffe
    80004a84:	5c0080e7          	jalr	1472(ra) # 80003040 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004a88:	00006797          	auipc	a5,0x6
    80004a8c:	e207c783          	lbu	a5,-480(a5) # 8000a8a8 <_ZL9finishedA>
    80004a90:	fe0788e3          	beqz	a5,80004a80 <_Z20Threads_CPP_API_testv+0x124>
    80004a94:	00006797          	auipc	a5,0x6
    80004a98:	e157c783          	lbu	a5,-491(a5) # 8000a8a9 <_ZL9finishedB>
    80004a9c:	fe0782e3          	beqz	a5,80004a80 <_Z20Threads_CPP_API_testv+0x124>
    80004aa0:	00006797          	auipc	a5,0x6
    80004aa4:	e0a7c783          	lbu	a5,-502(a5) # 8000a8aa <_ZL9finishedC>
    80004aa8:	fc078ce3          	beqz	a5,80004a80 <_Z20Threads_CPP_API_testv+0x124>
    80004aac:	00006797          	auipc	a5,0x6
    80004ab0:	dff7c783          	lbu	a5,-513(a5) # 8000a8ab <_ZL9finishedD>
    80004ab4:	fc0786e3          	beqz	a5,80004a80 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80004ab8:	fc040493          	addi	s1,s0,-64
    80004abc:	0080006f          	j	80004ac4 <_Z20Threads_CPP_API_testv+0x168>
    80004ac0:	00848493          	addi	s1,s1,8
    80004ac4:	fe040793          	addi	a5,s0,-32
    80004ac8:	08f48663          	beq	s1,a5,80004b54 <_Z20Threads_CPP_API_testv+0x1f8>
    80004acc:	0004b503          	ld	a0,0(s1)
    80004ad0:	fe0508e3          	beqz	a0,80004ac0 <_Z20Threads_CPP_API_testv+0x164>
    80004ad4:	00053783          	ld	a5,0(a0)
    80004ad8:	0087b783          	ld	a5,8(a5)
    80004adc:	000780e7          	jalr	a5
    80004ae0:	fe1ff06f          	j	80004ac0 <_Z20Threads_CPP_API_testv+0x164>
    80004ae4:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004ae8:	00048513          	mv	a0,s1
    80004aec:	ffffe097          	auipc	ra,0xffffe
    80004af0:	468080e7          	jalr	1128(ra) # 80002f54 <_ZdlPv>
    80004af4:	00090513          	mv	a0,s2
    80004af8:	00007097          	auipc	ra,0x7
    80004afc:	e90080e7          	jalr	-368(ra) # 8000b988 <_Unwind_Resume>
    80004b00:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004b04:	00048513          	mv	a0,s1
    80004b08:	ffffe097          	auipc	ra,0xffffe
    80004b0c:	44c080e7          	jalr	1100(ra) # 80002f54 <_ZdlPv>
    80004b10:	00090513          	mv	a0,s2
    80004b14:	00007097          	auipc	ra,0x7
    80004b18:	e74080e7          	jalr	-396(ra) # 8000b988 <_Unwind_Resume>
    80004b1c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004b20:	00048513          	mv	a0,s1
    80004b24:	ffffe097          	auipc	ra,0xffffe
    80004b28:	430080e7          	jalr	1072(ra) # 80002f54 <_ZdlPv>
    80004b2c:	00090513          	mv	a0,s2
    80004b30:	00007097          	auipc	ra,0x7
    80004b34:	e58080e7          	jalr	-424(ra) # 8000b988 <_Unwind_Resume>
    80004b38:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004b3c:	00048513          	mv	a0,s1
    80004b40:	ffffe097          	auipc	ra,0xffffe
    80004b44:	414080e7          	jalr	1044(ra) # 80002f54 <_ZdlPv>
    80004b48:	00090513          	mv	a0,s2
    80004b4c:	00007097          	auipc	ra,0x7
    80004b50:	e3c080e7          	jalr	-452(ra) # 8000b988 <_Unwind_Resume>
    80004b54:	03813083          	ld	ra,56(sp)
    80004b58:	03013403          	ld	s0,48(sp)
    80004b5c:	02813483          	ld	s1,40(sp)
    80004b60:	02013903          	ld	s2,32(sp)
    80004b64:	04010113          	addi	sp,sp,64
    80004b68:	00008067          	ret

0000000080004b6c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004b6c:	ff010113          	addi	sp,sp,-16
    80004b70:	00113423          	sd	ra,8(sp)
    80004b74:	00813023          	sd	s0,0(sp)
    80004b78:	01010413          	addi	s0,sp,16
    80004b7c:	00006797          	auipc	a5,0x6
    80004b80:	b8478793          	addi	a5,a5,-1148 # 8000a700 <_ZTV7WorkerA+0x10>
    80004b84:	00f53023          	sd	a5,0(a0)
    80004b88:	ffffe097          	auipc	ra,0xffffe
    80004b8c:	2e8080e7          	jalr	744(ra) # 80002e70 <_ZN6ThreadD1Ev>
    80004b90:	00813083          	ld	ra,8(sp)
    80004b94:	00013403          	ld	s0,0(sp)
    80004b98:	01010113          	addi	sp,sp,16
    80004b9c:	00008067          	ret

0000000080004ba0 <_ZN7WorkerAD0Ev>:
    80004ba0:	fe010113          	addi	sp,sp,-32
    80004ba4:	00113c23          	sd	ra,24(sp)
    80004ba8:	00813823          	sd	s0,16(sp)
    80004bac:	00913423          	sd	s1,8(sp)
    80004bb0:	02010413          	addi	s0,sp,32
    80004bb4:	00050493          	mv	s1,a0
    80004bb8:	00006797          	auipc	a5,0x6
    80004bbc:	b4878793          	addi	a5,a5,-1208 # 8000a700 <_ZTV7WorkerA+0x10>
    80004bc0:	00f53023          	sd	a5,0(a0)
    80004bc4:	ffffe097          	auipc	ra,0xffffe
    80004bc8:	2ac080e7          	jalr	684(ra) # 80002e70 <_ZN6ThreadD1Ev>
    80004bcc:	00048513          	mv	a0,s1
    80004bd0:	ffffe097          	auipc	ra,0xffffe
    80004bd4:	384080e7          	jalr	900(ra) # 80002f54 <_ZdlPv>
    80004bd8:	01813083          	ld	ra,24(sp)
    80004bdc:	01013403          	ld	s0,16(sp)
    80004be0:	00813483          	ld	s1,8(sp)
    80004be4:	02010113          	addi	sp,sp,32
    80004be8:	00008067          	ret

0000000080004bec <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004bec:	ff010113          	addi	sp,sp,-16
    80004bf0:	00113423          	sd	ra,8(sp)
    80004bf4:	00813023          	sd	s0,0(sp)
    80004bf8:	01010413          	addi	s0,sp,16
    80004bfc:	00006797          	auipc	a5,0x6
    80004c00:	b2c78793          	addi	a5,a5,-1236 # 8000a728 <_ZTV7WorkerB+0x10>
    80004c04:	00f53023          	sd	a5,0(a0)
    80004c08:	ffffe097          	auipc	ra,0xffffe
    80004c0c:	268080e7          	jalr	616(ra) # 80002e70 <_ZN6ThreadD1Ev>
    80004c10:	00813083          	ld	ra,8(sp)
    80004c14:	00013403          	ld	s0,0(sp)
    80004c18:	01010113          	addi	sp,sp,16
    80004c1c:	00008067          	ret

0000000080004c20 <_ZN7WorkerBD0Ev>:
    80004c20:	fe010113          	addi	sp,sp,-32
    80004c24:	00113c23          	sd	ra,24(sp)
    80004c28:	00813823          	sd	s0,16(sp)
    80004c2c:	00913423          	sd	s1,8(sp)
    80004c30:	02010413          	addi	s0,sp,32
    80004c34:	00050493          	mv	s1,a0
    80004c38:	00006797          	auipc	a5,0x6
    80004c3c:	af078793          	addi	a5,a5,-1296 # 8000a728 <_ZTV7WorkerB+0x10>
    80004c40:	00f53023          	sd	a5,0(a0)
    80004c44:	ffffe097          	auipc	ra,0xffffe
    80004c48:	22c080e7          	jalr	556(ra) # 80002e70 <_ZN6ThreadD1Ev>
    80004c4c:	00048513          	mv	a0,s1
    80004c50:	ffffe097          	auipc	ra,0xffffe
    80004c54:	304080e7          	jalr	772(ra) # 80002f54 <_ZdlPv>
    80004c58:	01813083          	ld	ra,24(sp)
    80004c5c:	01013403          	ld	s0,16(sp)
    80004c60:	00813483          	ld	s1,8(sp)
    80004c64:	02010113          	addi	sp,sp,32
    80004c68:	00008067          	ret

0000000080004c6c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004c6c:	ff010113          	addi	sp,sp,-16
    80004c70:	00113423          	sd	ra,8(sp)
    80004c74:	00813023          	sd	s0,0(sp)
    80004c78:	01010413          	addi	s0,sp,16
    80004c7c:	00006797          	auipc	a5,0x6
    80004c80:	ad478793          	addi	a5,a5,-1324 # 8000a750 <_ZTV7WorkerC+0x10>
    80004c84:	00f53023          	sd	a5,0(a0)
    80004c88:	ffffe097          	auipc	ra,0xffffe
    80004c8c:	1e8080e7          	jalr	488(ra) # 80002e70 <_ZN6ThreadD1Ev>
    80004c90:	00813083          	ld	ra,8(sp)
    80004c94:	00013403          	ld	s0,0(sp)
    80004c98:	01010113          	addi	sp,sp,16
    80004c9c:	00008067          	ret

0000000080004ca0 <_ZN7WorkerCD0Ev>:
    80004ca0:	fe010113          	addi	sp,sp,-32
    80004ca4:	00113c23          	sd	ra,24(sp)
    80004ca8:	00813823          	sd	s0,16(sp)
    80004cac:	00913423          	sd	s1,8(sp)
    80004cb0:	02010413          	addi	s0,sp,32
    80004cb4:	00050493          	mv	s1,a0
    80004cb8:	00006797          	auipc	a5,0x6
    80004cbc:	a9878793          	addi	a5,a5,-1384 # 8000a750 <_ZTV7WorkerC+0x10>
    80004cc0:	00f53023          	sd	a5,0(a0)
    80004cc4:	ffffe097          	auipc	ra,0xffffe
    80004cc8:	1ac080e7          	jalr	428(ra) # 80002e70 <_ZN6ThreadD1Ev>
    80004ccc:	00048513          	mv	a0,s1
    80004cd0:	ffffe097          	auipc	ra,0xffffe
    80004cd4:	284080e7          	jalr	644(ra) # 80002f54 <_ZdlPv>
    80004cd8:	01813083          	ld	ra,24(sp)
    80004cdc:	01013403          	ld	s0,16(sp)
    80004ce0:	00813483          	ld	s1,8(sp)
    80004ce4:	02010113          	addi	sp,sp,32
    80004ce8:	00008067          	ret

0000000080004cec <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004cec:	ff010113          	addi	sp,sp,-16
    80004cf0:	00113423          	sd	ra,8(sp)
    80004cf4:	00813023          	sd	s0,0(sp)
    80004cf8:	01010413          	addi	s0,sp,16
    80004cfc:	00006797          	auipc	a5,0x6
    80004d00:	a7c78793          	addi	a5,a5,-1412 # 8000a778 <_ZTV7WorkerD+0x10>
    80004d04:	00f53023          	sd	a5,0(a0)
    80004d08:	ffffe097          	auipc	ra,0xffffe
    80004d0c:	168080e7          	jalr	360(ra) # 80002e70 <_ZN6ThreadD1Ev>
    80004d10:	00813083          	ld	ra,8(sp)
    80004d14:	00013403          	ld	s0,0(sp)
    80004d18:	01010113          	addi	sp,sp,16
    80004d1c:	00008067          	ret

0000000080004d20 <_ZN7WorkerDD0Ev>:
    80004d20:	fe010113          	addi	sp,sp,-32
    80004d24:	00113c23          	sd	ra,24(sp)
    80004d28:	00813823          	sd	s0,16(sp)
    80004d2c:	00913423          	sd	s1,8(sp)
    80004d30:	02010413          	addi	s0,sp,32
    80004d34:	00050493          	mv	s1,a0
    80004d38:	00006797          	auipc	a5,0x6
    80004d3c:	a4078793          	addi	a5,a5,-1472 # 8000a778 <_ZTV7WorkerD+0x10>
    80004d40:	00f53023          	sd	a5,0(a0)
    80004d44:	ffffe097          	auipc	ra,0xffffe
    80004d48:	12c080e7          	jalr	300(ra) # 80002e70 <_ZN6ThreadD1Ev>
    80004d4c:	00048513          	mv	a0,s1
    80004d50:	ffffe097          	auipc	ra,0xffffe
    80004d54:	204080e7          	jalr	516(ra) # 80002f54 <_ZdlPv>
    80004d58:	01813083          	ld	ra,24(sp)
    80004d5c:	01013403          	ld	s0,16(sp)
    80004d60:	00813483          	ld	s1,8(sp)
    80004d64:	02010113          	addi	sp,sp,32
    80004d68:	00008067          	ret

0000000080004d6c <_ZN7WorkerA3runEv>:
    void run() override {
    80004d6c:	ff010113          	addi	sp,sp,-16
    80004d70:	00113423          	sd	ra,8(sp)
    80004d74:	00813023          	sd	s0,0(sp)
    80004d78:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004d7c:	00000593          	li	a1,0
    80004d80:	fffff097          	auipc	ra,0xfffff
    80004d84:	774080e7          	jalr	1908(ra) # 800044f4 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004d88:	00813083          	ld	ra,8(sp)
    80004d8c:	00013403          	ld	s0,0(sp)
    80004d90:	01010113          	addi	sp,sp,16
    80004d94:	00008067          	ret

0000000080004d98 <_ZN7WorkerB3runEv>:
    void run() override {
    80004d98:	ff010113          	addi	sp,sp,-16
    80004d9c:	00113423          	sd	ra,8(sp)
    80004da0:	00813023          	sd	s0,0(sp)
    80004da4:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004da8:	00000593          	li	a1,0
    80004dac:	00000097          	auipc	ra,0x0
    80004db0:	814080e7          	jalr	-2028(ra) # 800045c0 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004db4:	00813083          	ld	ra,8(sp)
    80004db8:	00013403          	ld	s0,0(sp)
    80004dbc:	01010113          	addi	sp,sp,16
    80004dc0:	00008067          	ret

0000000080004dc4 <_ZN7WorkerC3runEv>:
    void run() override {
    80004dc4:	ff010113          	addi	sp,sp,-16
    80004dc8:	00113423          	sd	ra,8(sp)
    80004dcc:	00813023          	sd	s0,0(sp)
    80004dd0:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004dd4:	00000593          	li	a1,0
    80004dd8:	00000097          	auipc	ra,0x0
    80004ddc:	8bc080e7          	jalr	-1860(ra) # 80004694 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004de0:	00813083          	ld	ra,8(sp)
    80004de4:	00013403          	ld	s0,0(sp)
    80004de8:	01010113          	addi	sp,sp,16
    80004dec:	00008067          	ret

0000000080004df0 <_ZN7WorkerD3runEv>:

    void run() override {
    80004df0:	ff010113          	addi	sp,sp,-16
    80004df4:	00113423          	sd	ra,8(sp)
    80004df8:	00813023          	sd	s0,0(sp)
    80004dfc:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004e00:	00000593          	li	a1,0
    80004e04:	00000097          	auipc	ra,0x0
    80004e08:	a10080e7          	jalr	-1520(ra) # 80004814 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004e0c:	00813083          	ld	ra,8(sp)
    80004e10:	00013403          	ld	s0,0(sp)
    80004e14:	01010113          	addi	sp,sp,16
    80004e18:	00008067          	ret

0000000080004e1c <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80004e1c:	fe010113          	addi	sp,sp,-32
    80004e20:	00113c23          	sd	ra,24(sp)
    80004e24:	00813823          	sd	s0,16(sp)
    80004e28:	00913423          	sd	s1,8(sp)
    80004e2c:	01213023          	sd	s2,0(sp)
    80004e30:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004e34:	00000913          	li	s2,0
    80004e38:	0340006f          	j	80004e6c <_Z11workerBodyAPv+0x50>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 500; j++) {
            //Riscv::printString("A j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
            thread_dispatch();
    80004e3c:	ffffc097          	auipc	ra,0xffffc
    80004e40:	4e8080e7          	jalr	1256(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 500; j++) {
    80004e44:	00148493          	addi	s1,s1,1
    80004e48:	1f300793          	li	a5,499
    80004e4c:	0097ee63          	bltu	a5,s1,80004e68 <_Z11workerBodyAPv+0x4c>
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
    80004e50:	00000713          	li	a4,0
    80004e54:	000017b7          	lui	a5,0x1
    80004e58:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    80004e5c:	fee7e0e3          	bltu	a5,a4,80004e3c <_Z11workerBodyAPv+0x20>
    80004e60:	00170713          	addi	a4,a4,1
    80004e64:	ff1ff06f          	j	80004e54 <_Z11workerBodyAPv+0x38>
    for (uint64 i = 0; i < 10; i++) {
    80004e68:	00190913          	addi	s2,s2,1
    80004e6c:	00900793          	li	a5,9
    80004e70:	0527e063          	bltu	a5,s2,80004eb0 <_Z11workerBodyAPv+0x94>
        printString("A: i="); printInt(i); printString("\n");
    80004e74:	00003517          	auipc	a0,0x3
    80004e78:	42450513          	addi	a0,a0,1060 # 80008298 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80004e7c:	00000097          	auipc	ra,0x0
    80004e80:	5b8080e7          	jalr	1464(ra) # 80005434 <_Z11printStringPKc>
    80004e84:	00000613          	li	a2,0
    80004e88:	00a00593          	li	a1,10
    80004e8c:	0009051b          	sext.w	a0,s2
    80004e90:	00000097          	auipc	ra,0x0
    80004e94:	73c080e7          	jalr	1852(ra) # 800055cc <_Z8printIntiii>
    80004e98:	00003517          	auipc	a0,0x3
    80004e9c:	2e050513          	addi	a0,a0,736 # 80008178 <CONSOLE_STATUS+0x168>
    80004ea0:	00000097          	auipc	ra,0x0
    80004ea4:	594080e7          	jalr	1428(ra) # 80005434 <_Z11printStringPKc>
        for (uint64 j = 0; j < 500; j++) {
    80004ea8:	00000493          	li	s1,0
    80004eac:	f9dff06f          	j	80004e48 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004eb0:	00003517          	auipc	a0,0x3
    80004eb4:	3f050513          	addi	a0,a0,1008 # 800082a0 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    80004eb8:	00000097          	auipc	ra,0x0
    80004ebc:	57c080e7          	jalr	1404(ra) # 80005434 <_Z11printStringPKc>
    finishedA = true;
    80004ec0:	00100793          	li	a5,1
    80004ec4:	00006717          	auipc	a4,0x6
    80004ec8:	9ef70423          	sb	a5,-1560(a4) # 8000a8ac <_ZL9finishedA>
}
    80004ecc:	01813083          	ld	ra,24(sp)
    80004ed0:	01013403          	ld	s0,16(sp)
    80004ed4:	00813483          	ld	s1,8(sp)
    80004ed8:	00013903          	ld	s2,0(sp)
    80004edc:	02010113          	addi	sp,sp,32
    80004ee0:	00008067          	ret

0000000080004ee4 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80004ee4:	fe010113          	addi	sp,sp,-32
    80004ee8:	00113c23          	sd	ra,24(sp)
    80004eec:	00813823          	sd	s0,16(sp)
    80004ef0:	00913423          	sd	s1,8(sp)
    80004ef4:	01213023          	sd	s2,0(sp)
    80004ef8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004efc:	00000913          	li	s2,0
    80004f00:	0340006f          	j	80004f34 <_Z11workerBodyBPv+0x50>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 500; j++) {
            //Riscv::printString("B j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
            thread_dispatch();
    80004f04:	ffffc097          	auipc	ra,0xffffc
    80004f08:	420080e7          	jalr	1056(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 500; j++) {
    80004f0c:	00148493          	addi	s1,s1,1
    80004f10:	1f300793          	li	a5,499
    80004f14:	0097ee63          	bltu	a5,s1,80004f30 <_Z11workerBodyBPv+0x4c>
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
    80004f18:	00000713          	li	a4,0
    80004f1c:	000017b7          	lui	a5,0x1
    80004f20:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    80004f24:	fee7e0e3          	bltu	a5,a4,80004f04 <_Z11workerBodyBPv+0x20>
    80004f28:	00170713          	addi	a4,a4,1
    80004f2c:	ff1ff06f          	j	80004f1c <_Z11workerBodyBPv+0x38>
    for (uint64 i = 0; i < 16; i++) {
    80004f30:	00190913          	addi	s2,s2,1
    80004f34:	00f00793          	li	a5,15
    80004f38:	0527e063          	bltu	a5,s2,80004f78 <_Z11workerBodyBPv+0x94>
        printString("B: i="); printInt(i); printString("\n");
    80004f3c:	00003517          	auipc	a0,0x3
    80004f40:	37450513          	addi	a0,a0,884 # 800082b0 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80004f44:	00000097          	auipc	ra,0x0
    80004f48:	4f0080e7          	jalr	1264(ra) # 80005434 <_Z11printStringPKc>
    80004f4c:	00000613          	li	a2,0
    80004f50:	00a00593          	li	a1,10
    80004f54:	0009051b          	sext.w	a0,s2
    80004f58:	00000097          	auipc	ra,0x0
    80004f5c:	674080e7          	jalr	1652(ra) # 800055cc <_Z8printIntiii>
    80004f60:	00003517          	auipc	a0,0x3
    80004f64:	21850513          	addi	a0,a0,536 # 80008178 <CONSOLE_STATUS+0x168>
    80004f68:	00000097          	auipc	ra,0x0
    80004f6c:	4cc080e7          	jalr	1228(ra) # 80005434 <_Z11printStringPKc>
        for (uint64 j = 0; j < 500; j++) {
    80004f70:	00000493          	li	s1,0
    80004f74:	f9dff06f          	j	80004f10 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004f78:	00003517          	auipc	a0,0x3
    80004f7c:	34050513          	addi	a0,a0,832 # 800082b8 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    80004f80:	00000097          	auipc	ra,0x0
    80004f84:	4b4080e7          	jalr	1204(ra) # 80005434 <_Z11printStringPKc>
    finishedB = true;
    80004f88:	00100793          	li	a5,1
    80004f8c:	00006717          	auipc	a4,0x6
    80004f90:	92f700a3          	sb	a5,-1759(a4) # 8000a8ad <_ZL9finishedB>
    thread_dispatch();
    80004f94:	ffffc097          	auipc	ra,0xffffc
    80004f98:	390080e7          	jalr	912(ra) # 80001324 <thread_dispatch>
}
    80004f9c:	01813083          	ld	ra,24(sp)
    80004fa0:	01013403          	ld	s0,16(sp)
    80004fa4:	00813483          	ld	s1,8(sp)
    80004fa8:	00013903          	ld	s2,0(sp)
    80004fac:	02010113          	addi	sp,sp,32
    80004fb0:	00008067          	ret

0000000080004fb4 <_ZL9fibonaccim>:
static uint64 fibonacci(uint64 n) {
    80004fb4:	fe010113          	addi	sp,sp,-32
    80004fb8:	00113c23          	sd	ra,24(sp)
    80004fbc:	00813823          	sd	s0,16(sp)
    80004fc0:	00913423          	sd	s1,8(sp)
    80004fc4:	01213023          	sd	s2,0(sp)
    80004fc8:	02010413          	addi	s0,sp,32
    80004fcc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004fd0:	00100793          	li	a5,1
    80004fd4:	02a7f863          	bgeu	a5,a0,80005004 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004fd8:	00a00793          	li	a5,10
    80004fdc:	02f577b3          	remu	a5,a0,a5
    80004fe0:	02078e63          	beqz	a5,8000501c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004fe4:	fff48513          	addi	a0,s1,-1
    80004fe8:	00000097          	auipc	ra,0x0
    80004fec:	fcc080e7          	jalr	-52(ra) # 80004fb4 <_ZL9fibonaccim>
    80004ff0:	00050913          	mv	s2,a0
    80004ff4:	ffe48513          	addi	a0,s1,-2
    80004ff8:	00000097          	auipc	ra,0x0
    80004ffc:	fbc080e7          	jalr	-68(ra) # 80004fb4 <_ZL9fibonaccim>
    80005000:	00a90533          	add	a0,s2,a0
}
    80005004:	01813083          	ld	ra,24(sp)
    80005008:	01013403          	ld	s0,16(sp)
    8000500c:	00813483          	ld	s1,8(sp)
    80005010:	00013903          	ld	s2,0(sp)
    80005014:	02010113          	addi	sp,sp,32
    80005018:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000501c:	ffffc097          	auipc	ra,0xffffc
    80005020:	308080e7          	jalr	776(ra) # 80001324 <thread_dispatch>
    80005024:	fc1ff06f          	j	80004fe4 <_ZL9fibonaccim+0x30>

0000000080005028 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80005028:	fe010113          	addi	sp,sp,-32
    8000502c:	00113c23          	sd	ra,24(sp)
    80005030:	00813823          	sd	s0,16(sp)
    80005034:	00913423          	sd	s1,8(sp)
    80005038:	01213023          	sd	s2,0(sp)
    8000503c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005040:	00000493          	li	s1,0
    80005044:	0400006f          	j	80005084 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005048:	00003517          	auipc	a0,0x3
    8000504c:	28050513          	addi	a0,a0,640 # 800082c8 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    80005050:	00000097          	auipc	ra,0x0
    80005054:	3e4080e7          	jalr	996(ra) # 80005434 <_Z11printStringPKc>
    80005058:	00000613          	li	a2,0
    8000505c:	00a00593          	li	a1,10
    80005060:	00048513          	mv	a0,s1
    80005064:	00000097          	auipc	ra,0x0
    80005068:	568080e7          	jalr	1384(ra) # 800055cc <_Z8printIntiii>
    8000506c:	00003517          	auipc	a0,0x3
    80005070:	10c50513          	addi	a0,a0,268 # 80008178 <CONSOLE_STATUS+0x168>
    80005074:	00000097          	auipc	ra,0x0
    80005078:	3c0080e7          	jalr	960(ra) # 80005434 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000507c:	0014849b          	addiw	s1,s1,1
    80005080:	0ff4f493          	andi	s1,s1,255
    80005084:	00200793          	li	a5,2
    80005088:	fc97f0e3          	bgeu	a5,s1,80005048 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    8000508c:	00003517          	auipc	a0,0x3
    80005090:	24450513          	addi	a0,a0,580 # 800082d0 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80005094:	00000097          	auipc	ra,0x0
    80005098:	3a0080e7          	jalr	928(ra) # 80005434 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000509c:	00700313          	li	t1,7
    thread_dispatch();
    800050a0:	ffffc097          	auipc	ra,0xffffc
    800050a4:	284080e7          	jalr	644(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800050a8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800050ac:	00003517          	auipc	a0,0x3
    800050b0:	23450513          	addi	a0,a0,564 # 800082e0 <_ZZN5Riscv12printIntegerEmE6digits+0x158>
    800050b4:	00000097          	auipc	ra,0x0
    800050b8:	380080e7          	jalr	896(ra) # 80005434 <_Z11printStringPKc>
    800050bc:	00000613          	li	a2,0
    800050c0:	00a00593          	li	a1,10
    800050c4:	0009051b          	sext.w	a0,s2
    800050c8:	00000097          	auipc	ra,0x0
    800050cc:	504080e7          	jalr	1284(ra) # 800055cc <_Z8printIntiii>
    800050d0:	00003517          	auipc	a0,0x3
    800050d4:	0a850513          	addi	a0,a0,168 # 80008178 <CONSOLE_STATUS+0x168>
    800050d8:	00000097          	auipc	ra,0x0
    800050dc:	35c080e7          	jalr	860(ra) # 80005434 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800050e0:	00c00513          	li	a0,12
    800050e4:	00000097          	auipc	ra,0x0
    800050e8:	ed0080e7          	jalr	-304(ra) # 80004fb4 <_ZL9fibonaccim>
    800050ec:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800050f0:	00003517          	auipc	a0,0x3
    800050f4:	1f850513          	addi	a0,a0,504 # 800082e8 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    800050f8:	00000097          	auipc	ra,0x0
    800050fc:	33c080e7          	jalr	828(ra) # 80005434 <_Z11printStringPKc>
    80005100:	00000613          	li	a2,0
    80005104:	00a00593          	li	a1,10
    80005108:	0009051b          	sext.w	a0,s2
    8000510c:	00000097          	auipc	ra,0x0
    80005110:	4c0080e7          	jalr	1216(ra) # 800055cc <_Z8printIntiii>
    80005114:	00003517          	auipc	a0,0x3
    80005118:	06450513          	addi	a0,a0,100 # 80008178 <CONSOLE_STATUS+0x168>
    8000511c:	00000097          	auipc	ra,0x0
    80005120:	318080e7          	jalr	792(ra) # 80005434 <_Z11printStringPKc>
    80005124:	0400006f          	j	80005164 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005128:	00003517          	auipc	a0,0x3
    8000512c:	1a050513          	addi	a0,a0,416 # 800082c8 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    80005130:	00000097          	auipc	ra,0x0
    80005134:	304080e7          	jalr	772(ra) # 80005434 <_Z11printStringPKc>
    80005138:	00000613          	li	a2,0
    8000513c:	00a00593          	li	a1,10
    80005140:	00048513          	mv	a0,s1
    80005144:	00000097          	auipc	ra,0x0
    80005148:	488080e7          	jalr	1160(ra) # 800055cc <_Z8printIntiii>
    8000514c:	00003517          	auipc	a0,0x3
    80005150:	02c50513          	addi	a0,a0,44 # 80008178 <CONSOLE_STATUS+0x168>
    80005154:	00000097          	auipc	ra,0x0
    80005158:	2e0080e7          	jalr	736(ra) # 80005434 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000515c:	0014849b          	addiw	s1,s1,1
    80005160:	0ff4f493          	andi	s1,s1,255
    80005164:	00500793          	li	a5,5
    80005168:	fc97f0e3          	bgeu	a5,s1,80005128 <_Z11workerBodyCPv+0x100>
    }

    printString("C finished!\n");
    8000516c:	00003517          	auipc	a0,0x3
    80005170:	22450513          	addi	a0,a0,548 # 80008390 <_ZZN5Riscv12printIntegerEmE6digits+0x208>
    80005174:	00000097          	auipc	ra,0x0
    80005178:	2c0080e7          	jalr	704(ra) # 80005434 <_Z11printStringPKc>
    finishedC = true;
    8000517c:	00100793          	li	a5,1
    80005180:	00005717          	auipc	a4,0x5
    80005184:	72f70723          	sb	a5,1838(a4) # 8000a8ae <_ZL9finishedC>
    thread_dispatch();
    80005188:	ffffc097          	auipc	ra,0xffffc
    8000518c:	19c080e7          	jalr	412(ra) # 80001324 <thread_dispatch>
}
    80005190:	01813083          	ld	ra,24(sp)
    80005194:	01013403          	ld	s0,16(sp)
    80005198:	00813483          	ld	s1,8(sp)
    8000519c:	00013903          	ld	s2,0(sp)
    800051a0:	02010113          	addi	sp,sp,32
    800051a4:	00008067          	ret

00000000800051a8 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    800051a8:	fe010113          	addi	sp,sp,-32
    800051ac:	00113c23          	sd	ra,24(sp)
    800051b0:	00813823          	sd	s0,16(sp)
    800051b4:	00913423          	sd	s1,8(sp)
    800051b8:	01213023          	sd	s2,0(sp)
    800051bc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800051c0:	00a00493          	li	s1,10
    800051c4:	0400006f          	j	80005204 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800051c8:	00003517          	auipc	a0,0x3
    800051cc:	13050513          	addi	a0,a0,304 # 800082f8 <_ZZN5Riscv12printIntegerEmE6digits+0x170>
    800051d0:	00000097          	auipc	ra,0x0
    800051d4:	264080e7          	jalr	612(ra) # 80005434 <_Z11printStringPKc>
    800051d8:	00000613          	li	a2,0
    800051dc:	00a00593          	li	a1,10
    800051e0:	00048513          	mv	a0,s1
    800051e4:	00000097          	auipc	ra,0x0
    800051e8:	3e8080e7          	jalr	1000(ra) # 800055cc <_Z8printIntiii>
    800051ec:	00003517          	auipc	a0,0x3
    800051f0:	f8c50513          	addi	a0,a0,-116 # 80008178 <CONSOLE_STATUS+0x168>
    800051f4:	00000097          	auipc	ra,0x0
    800051f8:	240080e7          	jalr	576(ra) # 80005434 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800051fc:	0014849b          	addiw	s1,s1,1
    80005200:	0ff4f493          	andi	s1,s1,255
    80005204:	00c00793          	li	a5,12
    80005208:	fc97f0e3          	bgeu	a5,s1,800051c8 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000520c:	00003517          	auipc	a0,0x3
    80005210:	0f450513          	addi	a0,a0,244 # 80008300 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80005214:	00000097          	auipc	ra,0x0
    80005218:	220080e7          	jalr	544(ra) # 80005434 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000521c:	00500313          	li	t1,5
    thread_dispatch();
    80005220:	ffffc097          	auipc	ra,0xffffc
    80005224:	104080e7          	jalr	260(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80005228:	01000513          	li	a0,16
    8000522c:	00000097          	auipc	ra,0x0
    80005230:	d88080e7          	jalr	-632(ra) # 80004fb4 <_ZL9fibonaccim>
    80005234:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005238:	00003517          	auipc	a0,0x3
    8000523c:	0d850513          	addi	a0,a0,216 # 80008310 <_ZZN5Riscv12printIntegerEmE6digits+0x188>
    80005240:	00000097          	auipc	ra,0x0
    80005244:	1f4080e7          	jalr	500(ra) # 80005434 <_Z11printStringPKc>
    80005248:	00000613          	li	a2,0
    8000524c:	00a00593          	li	a1,10
    80005250:	0009051b          	sext.w	a0,s2
    80005254:	00000097          	auipc	ra,0x0
    80005258:	378080e7          	jalr	888(ra) # 800055cc <_Z8printIntiii>
    8000525c:	00003517          	auipc	a0,0x3
    80005260:	f1c50513          	addi	a0,a0,-228 # 80008178 <CONSOLE_STATUS+0x168>
    80005264:	00000097          	auipc	ra,0x0
    80005268:	1d0080e7          	jalr	464(ra) # 80005434 <_Z11printStringPKc>
    8000526c:	0400006f          	j	800052ac <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005270:	00003517          	auipc	a0,0x3
    80005274:	08850513          	addi	a0,a0,136 # 800082f8 <_ZZN5Riscv12printIntegerEmE6digits+0x170>
    80005278:	00000097          	auipc	ra,0x0
    8000527c:	1bc080e7          	jalr	444(ra) # 80005434 <_Z11printStringPKc>
    80005280:	00000613          	li	a2,0
    80005284:	00a00593          	li	a1,10
    80005288:	00048513          	mv	a0,s1
    8000528c:	00000097          	auipc	ra,0x0
    80005290:	340080e7          	jalr	832(ra) # 800055cc <_Z8printIntiii>
    80005294:	00003517          	auipc	a0,0x3
    80005298:	ee450513          	addi	a0,a0,-284 # 80008178 <CONSOLE_STATUS+0x168>
    8000529c:	00000097          	auipc	ra,0x0
    800052a0:	198080e7          	jalr	408(ra) # 80005434 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800052a4:	0014849b          	addiw	s1,s1,1
    800052a8:	0ff4f493          	andi	s1,s1,255
    800052ac:	00f00793          	li	a5,15
    800052b0:	fc97f0e3          	bgeu	a5,s1,80005270 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800052b4:	00003517          	auipc	a0,0x3
    800052b8:	06c50513          	addi	a0,a0,108 # 80008320 <_ZZN5Riscv12printIntegerEmE6digits+0x198>
    800052bc:	00000097          	auipc	ra,0x0
    800052c0:	178080e7          	jalr	376(ra) # 80005434 <_Z11printStringPKc>
    finishedD = true;
    800052c4:	00100793          	li	a5,1
    800052c8:	00005717          	auipc	a4,0x5
    800052cc:	5ef703a3          	sb	a5,1511(a4) # 8000a8af <_ZL9finishedD>
    thread_dispatch();
    800052d0:	ffffc097          	auipc	ra,0xffffc
    800052d4:	054080e7          	jalr	84(ra) # 80001324 <thread_dispatch>
}
    800052d8:	01813083          	ld	ra,24(sp)
    800052dc:	01013403          	ld	s0,16(sp)
    800052e0:	00813483          	ld	s1,8(sp)
    800052e4:	00013903          	ld	s2,0(sp)
    800052e8:	02010113          	addi	sp,sp,32
    800052ec:	00008067          	ret

00000000800052f0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800052f0:	fc010113          	addi	sp,sp,-64
    800052f4:	02113c23          	sd	ra,56(sp)
    800052f8:	02813823          	sd	s0,48(sp)
    800052fc:	02913423          	sd	s1,40(sp)
    80005300:	03213023          	sd	s2,32(sp)
    80005304:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005308:	00000613          	li	a2,0
    8000530c:	00000597          	auipc	a1,0x0
    80005310:	b1058593          	addi	a1,a1,-1264 # 80004e1c <_Z11workerBodyAPv>
    80005314:	fc040513          	addi	a0,s0,-64
    80005318:	ffffc097          	auipc	ra,0xffffc
    8000531c:	f8c080e7          	jalr	-116(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    80005320:	00003517          	auipc	a0,0x3
    80005324:	01050513          	addi	a0,a0,16 # 80008330 <_ZZN5Riscv12printIntegerEmE6digits+0x1a8>
    80005328:	00000097          	auipc	ra,0x0
    8000532c:	10c080e7          	jalr	268(ra) # 80005434 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005330:	00000613          	li	a2,0
    80005334:	00000597          	auipc	a1,0x0
    80005338:	bb058593          	addi	a1,a1,-1104 # 80004ee4 <_Z11workerBodyBPv>
    8000533c:	fc840513          	addi	a0,s0,-56
    80005340:	ffffc097          	auipc	ra,0xffffc
    80005344:	f64080e7          	jalr	-156(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    80005348:	00003517          	auipc	a0,0x3
    8000534c:	00050513          	mv	a0,a0
    80005350:	00000097          	auipc	ra,0x0
    80005354:	0e4080e7          	jalr	228(ra) # 80005434 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005358:	00000613          	li	a2,0
    8000535c:	00000597          	auipc	a1,0x0
    80005360:	ccc58593          	addi	a1,a1,-820 # 80005028 <_Z11workerBodyCPv>
    80005364:	fd040513          	addi	a0,s0,-48
    80005368:	ffffc097          	auipc	ra,0xffffc
    8000536c:	f3c080e7          	jalr	-196(ra) # 800012a4 <thread_create>
    printString("ThreadC created\n");
    80005370:	00003517          	auipc	a0,0x3
    80005374:	ff050513          	addi	a0,a0,-16 # 80008360 <_ZZN5Riscv12printIntegerEmE6digits+0x1d8>
    80005378:	00000097          	auipc	ra,0x0
    8000537c:	0bc080e7          	jalr	188(ra) # 80005434 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005380:	00000613          	li	a2,0
    80005384:	00000597          	auipc	a1,0x0
    80005388:	e2458593          	addi	a1,a1,-476 # 800051a8 <_Z11workerBodyDPv>
    8000538c:	fd840513          	addi	a0,s0,-40
    80005390:	ffffc097          	auipc	ra,0xffffc
    80005394:	f14080e7          	jalr	-236(ra) # 800012a4 <thread_create>
    printString("ThreadD created\n");
    80005398:	00003517          	auipc	a0,0x3
    8000539c:	fe050513          	addi	a0,a0,-32 # 80008378 <_ZZN5Riscv12printIntegerEmE6digits+0x1f0>
    800053a0:	00000097          	auipc	ra,0x0
    800053a4:	094080e7          	jalr	148(ra) # 80005434 <_Z11printStringPKc>
    800053a8:	00c0006f          	j	800053b4 <_Z18Threads_C_API_testv+0xc4>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        //printString("Main thread\n");
        thread_dispatch();
    800053ac:	ffffc097          	auipc	ra,0xffffc
    800053b0:	f78080e7          	jalr	-136(ra) # 80001324 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800053b4:	00005797          	auipc	a5,0x5
    800053b8:	4f87c783          	lbu	a5,1272(a5) # 8000a8ac <_ZL9finishedA>
    800053bc:	fe0788e3          	beqz	a5,800053ac <_Z18Threads_C_API_testv+0xbc>
    800053c0:	00005797          	auipc	a5,0x5
    800053c4:	4ed7c783          	lbu	a5,1261(a5) # 8000a8ad <_ZL9finishedB>
    800053c8:	fe0782e3          	beqz	a5,800053ac <_Z18Threads_C_API_testv+0xbc>
    800053cc:	00005797          	auipc	a5,0x5
    800053d0:	4e27c783          	lbu	a5,1250(a5) # 8000a8ae <_ZL9finishedC>
    800053d4:	fc078ce3          	beqz	a5,800053ac <_Z18Threads_C_API_testv+0xbc>
    800053d8:	00005797          	auipc	a5,0x5
    800053dc:	4d77c783          	lbu	a5,1239(a5) # 8000a8af <_ZL9finishedD>
    800053e0:	fc0786e3          	beqz	a5,800053ac <_Z18Threads_C_API_testv+0xbc>
    }

    for (auto &thread: threads) {
    800053e4:	fc040493          	addi	s1,s0,-64
    800053e8:	0080006f          	j	800053f0 <_Z18Threads_C_API_testv+0x100>
    800053ec:	00848493          	addi	s1,s1,8
    800053f0:	fe040793          	addi	a5,s0,-32
    800053f4:	02f48463          	beq	s1,a5,8000541c <_Z18Threads_C_API_testv+0x12c>
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (PCB*)thread;
    800053f8:	0004b903          	ld	s2,0(s1)
    800053fc:	fe0908e3          	beqz	s2,800053ec <_Z18Threads_C_API_testv+0xfc>
    80005400:	00090513          	mv	a0,s2
    80005404:	ffffd097          	auipc	ra,0xffffd
    80005408:	328080e7          	jalr	808(ra) # 8000272c <_ZN3PCBD1Ev>
    8000540c:	00090513          	mv	a0,s2
    80005410:	ffffd097          	auipc	ra,0xffffd
    80005414:	2f4080e7          	jalr	756(ra) # 80002704 <_ZN3PCBdlEPv>
    80005418:	fd5ff06f          	j	800053ec <_Z18Threads_C_API_testv+0xfc>
    }
}
    8000541c:	03813083          	ld	ra,56(sp)
    80005420:	03013403          	ld	s0,48(sp)
    80005424:	02813483          	ld	s1,40(sp)
    80005428:	02013903          	ld	s2,32(sp)
    8000542c:	04010113          	addi	sp,sp,64
    80005430:	00008067          	ret

0000000080005434 <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    80005434:	fe010113          	addi	sp,sp,-32
    80005438:	00113c23          	sd	ra,24(sp)
    8000543c:	00813823          	sd	s0,16(sp)
    80005440:	00913423          	sd	s1,8(sp)
    80005444:	02010413          	addi	s0,sp,32
    80005448:	00050493          	mv	s1,a0
    LOCK();
    8000544c:	00100613          	li	a2,1
    80005450:	00000593          	li	a1,0
    80005454:	00005517          	auipc	a0,0x5
    80005458:	45c50513          	addi	a0,a0,1116 # 8000a8b0 <lockPrint>
    8000545c:	ffffc097          	auipc	ra,0xffffc
    80005460:	dac080e7          	jalr	-596(ra) # 80001208 <copy_and_swap>
    80005464:	fe0514e3          	bnez	a0,8000544c <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80005468:	0004c503          	lbu	a0,0(s1)
    8000546c:	00050a63          	beqz	a0,80005480 <_Z11printStringPKc+0x4c>
inline char getc() {
    return __getc();
}

inline void putc(char c) {
    __putc(c);
    80005470:	00003097          	auipc	ra,0x3
    80005474:	9fc080e7          	jalr	-1540(ra) # 80007e6c <__putc>
        putc(*string);
        string++;
    80005478:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    8000547c:	fedff06f          	j	80005468 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005480:	00000613          	li	a2,0
    80005484:	00100593          	li	a1,1
    80005488:	00005517          	auipc	a0,0x5
    8000548c:	42850513          	addi	a0,a0,1064 # 8000a8b0 <lockPrint>
    80005490:	ffffc097          	auipc	ra,0xffffc
    80005494:	d78080e7          	jalr	-648(ra) # 80001208 <copy_and_swap>
    80005498:	fe0514e3          	bnez	a0,80005480 <_Z11printStringPKc+0x4c>
}
    8000549c:	01813083          	ld	ra,24(sp)
    800054a0:	01013403          	ld	s0,16(sp)
    800054a4:	00813483          	ld	s1,8(sp)
    800054a8:	02010113          	addi	sp,sp,32
    800054ac:	00008067          	ret

00000000800054b0 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    800054b0:	fd010113          	addi	sp,sp,-48
    800054b4:	02113423          	sd	ra,40(sp)
    800054b8:	02813023          	sd	s0,32(sp)
    800054bc:	00913c23          	sd	s1,24(sp)
    800054c0:	01213823          	sd	s2,16(sp)
    800054c4:	01313423          	sd	s3,8(sp)
    800054c8:	01413023          	sd	s4,0(sp)
    800054cc:	03010413          	addi	s0,sp,48
    800054d0:	00050993          	mv	s3,a0
    800054d4:	00058a13          	mv	s4,a1
    LOCK();
    800054d8:	00100613          	li	a2,1
    800054dc:	00000593          	li	a1,0
    800054e0:	00005517          	auipc	a0,0x5
    800054e4:	3d050513          	addi	a0,a0,976 # 8000a8b0 <lockPrint>
    800054e8:	ffffc097          	auipc	ra,0xffffc
    800054ec:	d20080e7          	jalr	-736(ra) # 80001208 <copy_and_swap>
    800054f0:	fe0514e3          	bnez	a0,800054d8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    800054f4:	00000913          	li	s2,0
    800054f8:	00090493          	mv	s1,s2
    800054fc:	0019091b          	addiw	s2,s2,1
    80005500:	03495a63          	bge	s2,s4,80005534 <_Z9getStringPci+0x84>
    return __getc();
    80005504:	00003097          	auipc	ra,0x3
    80005508:	9a4080e7          	jalr	-1628(ra) # 80007ea8 <__getc>
        cc = getc();
        if (cc < 1)
    8000550c:	02050463          	beqz	a0,80005534 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005510:	009984b3          	add	s1,s3,s1
    80005514:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80005518:	00a00793          	li	a5,10
    8000551c:	00f50a63          	beq	a0,a5,80005530 <_Z9getStringPci+0x80>
    80005520:	00d00793          	li	a5,13
    80005524:	fcf51ae3          	bne	a0,a5,800054f8 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005528:	00090493          	mv	s1,s2
    8000552c:	0080006f          	j	80005534 <_Z9getStringPci+0x84>
    80005530:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005534:	009984b3          	add	s1,s3,s1
    80005538:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000553c:	00000613          	li	a2,0
    80005540:	00100593          	li	a1,1
    80005544:	00005517          	auipc	a0,0x5
    80005548:	36c50513          	addi	a0,a0,876 # 8000a8b0 <lockPrint>
    8000554c:	ffffc097          	auipc	ra,0xffffc
    80005550:	cbc080e7          	jalr	-836(ra) # 80001208 <copy_and_swap>
    80005554:	fe0514e3          	bnez	a0,8000553c <_Z9getStringPci+0x8c>
    return buf;
}
    80005558:	00098513          	mv	a0,s3
    8000555c:	02813083          	ld	ra,40(sp)
    80005560:	02013403          	ld	s0,32(sp)
    80005564:	01813483          	ld	s1,24(sp)
    80005568:	01013903          	ld	s2,16(sp)
    8000556c:	00813983          	ld	s3,8(sp)
    80005570:	00013a03          	ld	s4,0(sp)
    80005574:	03010113          	addi	sp,sp,48
    80005578:	00008067          	ret

000000008000557c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000557c:	ff010113          	addi	sp,sp,-16
    80005580:	00813423          	sd	s0,8(sp)
    80005584:	01010413          	addi	s0,sp,16
    80005588:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000558c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005590:	0006c603          	lbu	a2,0(a3)
    80005594:	fd06071b          	addiw	a4,a2,-48
    80005598:	0ff77713          	andi	a4,a4,255
    8000559c:	00900793          	li	a5,9
    800055a0:	02e7e063          	bltu	a5,a4,800055c0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800055a4:	0025179b          	slliw	a5,a0,0x2
    800055a8:	00a787bb          	addw	a5,a5,a0
    800055ac:	0017979b          	slliw	a5,a5,0x1
    800055b0:	00168693          	addi	a3,a3,1
    800055b4:	00c787bb          	addw	a5,a5,a2
    800055b8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800055bc:	fd5ff06f          	j	80005590 <_Z11stringToIntPKc+0x14>
    return n;
}
    800055c0:	00813403          	ld	s0,8(sp)
    800055c4:	01010113          	addi	sp,sp,16
    800055c8:	00008067          	ret

00000000800055cc <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    800055cc:	fc010113          	addi	sp,sp,-64
    800055d0:	02113c23          	sd	ra,56(sp)
    800055d4:	02813823          	sd	s0,48(sp)
    800055d8:	02913423          	sd	s1,40(sp)
    800055dc:	03213023          	sd	s2,32(sp)
    800055e0:	01313c23          	sd	s3,24(sp)
    800055e4:	04010413          	addi	s0,sp,64
    800055e8:	00050493          	mv	s1,a0
    800055ec:	00058913          	mv	s2,a1
    800055f0:	00060993          	mv	s3,a2
    LOCK();
    800055f4:	00100613          	li	a2,1
    800055f8:	00000593          	li	a1,0
    800055fc:	00005517          	auipc	a0,0x5
    80005600:	2b450513          	addi	a0,a0,692 # 8000a8b0 <lockPrint>
    80005604:	ffffc097          	auipc	ra,0xffffc
    80005608:	c04080e7          	jalr	-1020(ra) # 80001208 <copy_and_swap>
    8000560c:	fe0514e3          	bnez	a0,800055f4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005610:	00098463          	beqz	s3,80005618 <_Z8printIntiii+0x4c>
    80005614:	0804c463          	bltz	s1,8000569c <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005618:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000561c:	00000593          	li	a1,0
    }

    i = 0;
    80005620:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005624:	0009079b          	sext.w	a5,s2
    80005628:	0325773b          	remuw	a4,a0,s2
    8000562c:	00048613          	mv	a2,s1
    80005630:	0014849b          	addiw	s1,s1,1
    80005634:	02071693          	slli	a3,a4,0x20
    80005638:	0206d693          	srli	a3,a3,0x20
    8000563c:	00003717          	auipc	a4,0x3
    80005640:	d6470713          	addi	a4,a4,-668 # 800083a0 <_ZL6digits>
    80005644:	00d70733          	add	a4,a4,a3
    80005648:	00074683          	lbu	a3,0(a4)
    8000564c:	fd040713          	addi	a4,s0,-48
    80005650:	00c70733          	add	a4,a4,a2
    80005654:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005658:	0005071b          	sext.w	a4,a0
    8000565c:	0325553b          	divuw	a0,a0,s2
    80005660:	fcf772e3          	bgeu	a4,a5,80005624 <_Z8printIntiii+0x58>
    if (neg)
    80005664:	00058c63          	beqz	a1,8000567c <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005668:	fd040793          	addi	a5,s0,-48
    8000566c:	009784b3          	add	s1,a5,s1
    80005670:	02d00793          	li	a5,45
    80005674:	fef48823          	sb	a5,-16(s1)
    80005678:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    8000567c:	fff4849b          	addiw	s1,s1,-1
    80005680:	0204c463          	bltz	s1,800056a8 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005684:	fd040793          	addi	a5,s0,-48
    80005688:	009787b3          	add	a5,a5,s1
    __putc(c);
    8000568c:	ff07c503          	lbu	a0,-16(a5)
    80005690:	00002097          	auipc	ra,0x2
    80005694:	7dc080e7          	jalr	2012(ra) # 80007e6c <__putc>
}
    80005698:	fe5ff06f          	j	8000567c <_Z8printIntiii+0xb0>
        x = -xx;
    8000569c:	4090053b          	negw	a0,s1
        neg = 1;
    800056a0:	00100593          	li	a1,1
        x = -xx;
    800056a4:	f7dff06f          	j	80005620 <_Z8printIntiii+0x54>

    UNLOCK();
    800056a8:	00000613          	li	a2,0
    800056ac:	00100593          	li	a1,1
    800056b0:	00005517          	auipc	a0,0x5
    800056b4:	20050513          	addi	a0,a0,512 # 8000a8b0 <lockPrint>
    800056b8:	ffffc097          	auipc	ra,0xffffc
    800056bc:	b50080e7          	jalr	-1200(ra) # 80001208 <copy_and_swap>
    800056c0:	fe0514e3          	bnez	a0,800056a8 <_Z8printIntiii+0xdc>
}
    800056c4:	03813083          	ld	ra,56(sp)
    800056c8:	03013403          	ld	s0,48(sp)
    800056cc:	02813483          	ld	s1,40(sp)
    800056d0:	02013903          	ld	s2,32(sp)
    800056d4:	01813983          	ld	s3,24(sp)
    800056d8:	04010113          	addi	sp,sp,64
    800056dc:	00008067          	ret

00000000800056e0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    800056e0:	fe010113          	addi	sp,sp,-32
    800056e4:	00113c23          	sd	ra,24(sp)
    800056e8:	00813823          	sd	s0,16(sp)
    800056ec:	00913423          	sd	s1,8(sp)
    800056f0:	01213023          	sd	s2,0(sp)
    800056f4:	02010413          	addi	s0,sp,32
    800056f8:	00050493          	mv	s1,a0
    800056fc:	00b52023          	sw	a1,0(a0)
    80005700:	00052823          	sw	zero,16(a0)
    80005704:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005708:	00259513          	slli	a0,a1,0x2
    8000570c:	ffffc097          	auipc	ra,0xffffc
    80005710:	b3c080e7          	jalr	-1220(ra) # 80001248 <mem_alloc>
    80005714:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005718:	01000513          	li	a0,16
    8000571c:	ffffe097          	auipc	ra,0xffffe
    80005720:	810080e7          	jalr	-2032(ra) # 80002f2c <_Znwm>
    80005724:	00050913          	mv	s2,a0
    80005728:	00000593          	li	a1,0
    8000572c:	ffffe097          	auipc	ra,0xffffe
    80005730:	a3c080e7          	jalr	-1476(ra) # 80003168 <_ZN9SemaphoreC1Ej>
    80005734:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    80005738:	01000513          	li	a0,16
    8000573c:	ffffd097          	auipc	ra,0xffffd
    80005740:	7f0080e7          	jalr	2032(ra) # 80002f2c <_Znwm>
    80005744:	00050913          	mv	s2,a0
    80005748:	0004a583          	lw	a1,0(s1)
    8000574c:	ffffe097          	auipc	ra,0xffffe
    80005750:	a1c080e7          	jalr	-1508(ra) # 80003168 <_ZN9SemaphoreC1Ej>
    80005754:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80005758:	01000513          	li	a0,16
    8000575c:	ffffd097          	auipc	ra,0xffffd
    80005760:	7d0080e7          	jalr	2000(ra) # 80002f2c <_Znwm>
    80005764:	00050913          	mv	s2,a0
    80005768:	00100593          	li	a1,1
    8000576c:	ffffe097          	auipc	ra,0xffffe
    80005770:	9fc080e7          	jalr	-1540(ra) # 80003168 <_ZN9SemaphoreC1Ej>
    80005774:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005778:	01000513          	li	a0,16
    8000577c:	ffffd097          	auipc	ra,0xffffd
    80005780:	7b0080e7          	jalr	1968(ra) # 80002f2c <_Znwm>
    80005784:	00050913          	mv	s2,a0
    80005788:	00100593          	li	a1,1
    8000578c:	ffffe097          	auipc	ra,0xffffe
    80005790:	9dc080e7          	jalr	-1572(ra) # 80003168 <_ZN9SemaphoreC1Ej>
    80005794:	0324b823          	sd	s2,48(s1)
}
    80005798:	01813083          	ld	ra,24(sp)
    8000579c:	01013403          	ld	s0,16(sp)
    800057a0:	00813483          	ld	s1,8(sp)
    800057a4:	00013903          	ld	s2,0(sp)
    800057a8:	02010113          	addi	sp,sp,32
    800057ac:	00008067          	ret
    800057b0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800057b4:	00090513          	mv	a0,s2
    800057b8:	ffffd097          	auipc	ra,0xffffd
    800057bc:	79c080e7          	jalr	1948(ra) # 80002f54 <_ZdlPv>
    800057c0:	00048513          	mv	a0,s1
    800057c4:	00006097          	auipc	ra,0x6
    800057c8:	1c4080e7          	jalr	452(ra) # 8000b988 <_Unwind_Resume>
    800057cc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    800057d0:	00090513          	mv	a0,s2
    800057d4:	ffffd097          	auipc	ra,0xffffd
    800057d8:	780080e7          	jalr	1920(ra) # 80002f54 <_ZdlPv>
    800057dc:	00048513          	mv	a0,s1
    800057e0:	00006097          	auipc	ra,0x6
    800057e4:	1a8080e7          	jalr	424(ra) # 8000b988 <_Unwind_Resume>
    800057e8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800057ec:	00090513          	mv	a0,s2
    800057f0:	ffffd097          	auipc	ra,0xffffd
    800057f4:	764080e7          	jalr	1892(ra) # 80002f54 <_ZdlPv>
    800057f8:	00048513          	mv	a0,s1
    800057fc:	00006097          	auipc	ra,0x6
    80005800:	18c080e7          	jalr	396(ra) # 8000b988 <_Unwind_Resume>
    80005804:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005808:	00090513          	mv	a0,s2
    8000580c:	ffffd097          	auipc	ra,0xffffd
    80005810:	748080e7          	jalr	1864(ra) # 80002f54 <_ZdlPv>
    80005814:	00048513          	mv	a0,s1
    80005818:	00006097          	auipc	ra,0x6
    8000581c:	170080e7          	jalr	368(ra) # 8000b988 <_Unwind_Resume>

0000000080005820 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    80005820:	fe010113          	addi	sp,sp,-32
    80005824:	00113c23          	sd	ra,24(sp)
    80005828:	00813823          	sd	s0,16(sp)
    8000582c:	00913423          	sd	s1,8(sp)
    80005830:	02010413          	addi	s0,sp,32
    80005834:	00050493          	mv	s1,a0
    __putc(c);
    80005838:	00a00513          	li	a0,10
    8000583c:	00002097          	auipc	ra,0x2
    80005840:	630080e7          	jalr	1584(ra) # 80007e6c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005844:	0104a783          	lw	a5,16(s1)
    80005848:	0144a703          	lw	a4,20(s1)
    8000584c:	00e78c63          	beq	a5,a4,80005864 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80005850:	0017879b          	addiw	a5,a5,1
    80005854:	0004a703          	lw	a4,0(s1)
    80005858:	02e7e7bb          	remw	a5,a5,a4
    8000585c:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005860:	fe5ff06f          	j	80005844 <_ZN9BufferCPPD1Ev+0x24>
    80005864:	02100513          	li	a0,33
    80005868:	00002097          	auipc	ra,0x2
    8000586c:	604080e7          	jalr	1540(ra) # 80007e6c <__putc>
    80005870:	00a00513          	li	a0,10
    80005874:	00002097          	auipc	ra,0x2
    80005878:	5f8080e7          	jalr	1528(ra) # 80007e6c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    8000587c:	0084b503          	ld	a0,8(s1)
    80005880:	ffffc097          	auipc	ra,0xffffc
    80005884:	9f8080e7          	jalr	-1544(ra) # 80001278 <mem_free>
    delete itemAvailable;
    80005888:	0204b503          	ld	a0,32(s1)
    8000588c:	00050863          	beqz	a0,8000589c <_ZN9BufferCPPD1Ev+0x7c>
    80005890:	00053783          	ld	a5,0(a0)
    80005894:	0087b783          	ld	a5,8(a5)
    80005898:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000589c:	0184b503          	ld	a0,24(s1)
    800058a0:	00050863          	beqz	a0,800058b0 <_ZN9BufferCPPD1Ev+0x90>
    800058a4:	00053783          	ld	a5,0(a0)
    800058a8:	0087b783          	ld	a5,8(a5)
    800058ac:	000780e7          	jalr	a5
    delete mutexTail;
    800058b0:	0304b503          	ld	a0,48(s1)
    800058b4:	00050863          	beqz	a0,800058c4 <_ZN9BufferCPPD1Ev+0xa4>
    800058b8:	00053783          	ld	a5,0(a0)
    800058bc:	0087b783          	ld	a5,8(a5)
    800058c0:	000780e7          	jalr	a5
    delete mutexHead;
    800058c4:	0284b503          	ld	a0,40(s1)
    800058c8:	00050863          	beqz	a0,800058d8 <_ZN9BufferCPPD1Ev+0xb8>
    800058cc:	00053783          	ld	a5,0(a0)
    800058d0:	0087b783          	ld	a5,8(a5)
    800058d4:	000780e7          	jalr	a5

}
    800058d8:	01813083          	ld	ra,24(sp)
    800058dc:	01013403          	ld	s0,16(sp)
    800058e0:	00813483          	ld	s1,8(sp)
    800058e4:	02010113          	addi	sp,sp,32
    800058e8:	00008067          	ret

00000000800058ec <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    800058ec:	fe010113          	addi	sp,sp,-32
    800058f0:	00113c23          	sd	ra,24(sp)
    800058f4:	00813823          	sd	s0,16(sp)
    800058f8:	00913423          	sd	s1,8(sp)
    800058fc:	01213023          	sd	s2,0(sp)
    80005900:	02010413          	addi	s0,sp,32
    80005904:	00050493          	mv	s1,a0
    80005908:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000590c:	01853503          	ld	a0,24(a0)
    80005910:	ffffe097          	auipc	ra,0xffffe
    80005914:	820080e7          	jalr	-2016(ra) # 80003130 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005918:	0304b503          	ld	a0,48(s1)
    8000591c:	ffffe097          	auipc	ra,0xffffe
    80005920:	814080e7          	jalr	-2028(ra) # 80003130 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005924:	0084b783          	ld	a5,8(s1)
    80005928:	0144a703          	lw	a4,20(s1)
    8000592c:	00271713          	slli	a4,a4,0x2
    80005930:	00e787b3          	add	a5,a5,a4
    80005934:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005938:	0144a783          	lw	a5,20(s1)
    8000593c:	0017879b          	addiw	a5,a5,1
    80005940:	0004a703          	lw	a4,0(s1)
    80005944:	02e7e7bb          	remw	a5,a5,a4
    80005948:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000594c:	0304b503          	ld	a0,48(s1)
    80005950:	ffffe097          	auipc	ra,0xffffe
    80005954:	864080e7          	jalr	-1948(ra) # 800031b4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005958:	0204b503          	ld	a0,32(s1)
    8000595c:	ffffe097          	auipc	ra,0xffffe
    80005960:	858080e7          	jalr	-1960(ra) # 800031b4 <_ZN9Semaphore6signalEv>

}
    80005964:	01813083          	ld	ra,24(sp)
    80005968:	01013403          	ld	s0,16(sp)
    8000596c:	00813483          	ld	s1,8(sp)
    80005970:	00013903          	ld	s2,0(sp)
    80005974:	02010113          	addi	sp,sp,32
    80005978:	00008067          	ret

000000008000597c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000597c:	fe010113          	addi	sp,sp,-32
    80005980:	00113c23          	sd	ra,24(sp)
    80005984:	00813823          	sd	s0,16(sp)
    80005988:	00913423          	sd	s1,8(sp)
    8000598c:	01213023          	sd	s2,0(sp)
    80005990:	02010413          	addi	s0,sp,32
    80005994:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005998:	02053503          	ld	a0,32(a0)
    8000599c:	ffffd097          	auipc	ra,0xffffd
    800059a0:	794080e7          	jalr	1940(ra) # 80003130 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800059a4:	0284b503          	ld	a0,40(s1)
    800059a8:	ffffd097          	auipc	ra,0xffffd
    800059ac:	788080e7          	jalr	1928(ra) # 80003130 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800059b0:	0084b703          	ld	a4,8(s1)
    800059b4:	0104a783          	lw	a5,16(s1)
    800059b8:	00279693          	slli	a3,a5,0x2
    800059bc:	00d70733          	add	a4,a4,a3
    800059c0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800059c4:	0017879b          	addiw	a5,a5,1
    800059c8:	0004a703          	lw	a4,0(s1)
    800059cc:	02e7e7bb          	remw	a5,a5,a4
    800059d0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800059d4:	0284b503          	ld	a0,40(s1)
    800059d8:	ffffd097          	auipc	ra,0xffffd
    800059dc:	7dc080e7          	jalr	2012(ra) # 800031b4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800059e0:	0184b503          	ld	a0,24(s1)
    800059e4:	ffffd097          	auipc	ra,0xffffd
    800059e8:	7d0080e7          	jalr	2000(ra) # 800031b4 <_ZN9Semaphore6signalEv>

    return ret;
}
    800059ec:	00090513          	mv	a0,s2
    800059f0:	01813083          	ld	ra,24(sp)
    800059f4:	01013403          	ld	s0,16(sp)
    800059f8:	00813483          	ld	s1,8(sp)
    800059fc:	00013903          	ld	s2,0(sp)
    80005a00:	02010113          	addi	sp,sp,32
    80005a04:	00008067          	ret

0000000080005a08 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80005a08:	ff010113          	addi	sp,sp,-16
    80005a0c:	00113423          	sd	ra,8(sp)
    80005a10:	00813023          	sd	s0,0(sp)
    80005a14:	01010413          	addi	s0,sp,16
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    80005a18:	fffff097          	auipc	ra,0xfffff
    80005a1c:	8a4080e7          	jalr	-1884(ra) # 800042bc <_Z22producerConsumer_C_APIv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80005a20:	00813083          	ld	ra,8(sp)
    80005a24:	00013403          	ld	s0,0(sp)
    80005a28:	01010113          	addi	sp,sp,16
    80005a2c:	00008067          	ret

0000000080005a30 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80005a30:	fe010113          	addi	sp,sp,-32
    80005a34:	00113c23          	sd	ra,24(sp)
    80005a38:	00813823          	sd	s0,16(sp)
    80005a3c:	00913423          	sd	s1,8(sp)
    80005a40:	01213023          	sd	s2,0(sp)
    80005a44:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005a48:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005a4c:	00600493          	li	s1,6
    while (--i > 0) {
    80005a50:	fff4849b          	addiw	s1,s1,-1
    80005a54:	04905463          	blez	s1,80005a9c <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80005a58:	00003517          	auipc	a0,0x3
    80005a5c:	96050513          	addi	a0,a0,-1696 # 800083b8 <_ZL6digits+0x18>
    80005a60:	00000097          	auipc	ra,0x0
    80005a64:	9d4080e7          	jalr	-1580(ra) # 80005434 <_Z11printStringPKc>
        printInt(sleep_time);
    80005a68:	00000613          	li	a2,0
    80005a6c:	00a00593          	li	a1,10
    80005a70:	0009051b          	sext.w	a0,s2
    80005a74:	00000097          	auipc	ra,0x0
    80005a78:	b58080e7          	jalr	-1192(ra) # 800055cc <_Z8printIntiii>
        printString(" !\n");
    80005a7c:	00003517          	auipc	a0,0x3
    80005a80:	94450513          	addi	a0,a0,-1724 # 800083c0 <_ZL6digits+0x20>
    80005a84:	00000097          	auipc	ra,0x0
    80005a88:	9b0080e7          	jalr	-1616(ra) # 80005434 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005a8c:	00090513          	mv	a0,s2
    80005a90:	ffffc097          	auipc	ra,0xffffc
    80005a94:	998080e7          	jalr	-1640(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    80005a98:	fb9ff06f          	j	80005a50 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005a9c:	00a00793          	li	a5,10
    80005aa0:	02f95933          	divu	s2,s2,a5
    80005aa4:	fff90913          	addi	s2,s2,-1
    80005aa8:	00005797          	auipc	a5,0x5
    80005aac:	e1078793          	addi	a5,a5,-496 # 8000a8b8 <finished>
    80005ab0:	01278933          	add	s2,a5,s2
    80005ab4:	00100793          	li	a5,1
    80005ab8:	00f90023          	sb	a5,0(s2)
}
    80005abc:	01813083          	ld	ra,24(sp)
    80005ac0:	01013403          	ld	s0,16(sp)
    80005ac4:	00813483          	ld	s1,8(sp)
    80005ac8:	00013903          	ld	s2,0(sp)
    80005acc:	02010113          	addi	sp,sp,32
    80005ad0:	00008067          	ret

0000000080005ad4 <_Z12testSleepingv>:

void testSleeping()
{
    80005ad4:	fc010113          	addi	sp,sp,-64
    80005ad8:	02113c23          	sd	ra,56(sp)
    80005adc:	02813823          	sd	s0,48(sp)
    80005ae0:	02913423          	sd	s1,40(sp)
    80005ae4:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005ae8:	00a00793          	li	a5,10
    80005aec:	fcf43823          	sd	a5,-48(s0)
    80005af0:	01400793          	li	a5,20
    80005af4:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005af8:	00000493          	li	s1,0
    80005afc:	02c0006f          	j	80005b28 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005b00:	00349793          	slli	a5,s1,0x3
    80005b04:	fd040613          	addi	a2,s0,-48
    80005b08:	00f60633          	add	a2,a2,a5
    80005b0c:	00000597          	auipc	a1,0x0
    80005b10:	f2458593          	addi	a1,a1,-220 # 80005a30 <_Z9sleepyRunPv>
    80005b14:	fc040513          	addi	a0,s0,-64
    80005b18:	00f50533          	add	a0,a0,a5
    80005b1c:	ffffb097          	auipc	ra,0xffffb
    80005b20:	788080e7          	jalr	1928(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005b24:	0014849b          	addiw	s1,s1,1
    80005b28:	00100793          	li	a5,1
    80005b2c:	fc97dae3          	bge	a5,s1,80005b00 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005b30:	00005797          	auipc	a5,0x5
    80005b34:	d887c783          	lbu	a5,-632(a5) # 8000a8b8 <finished>
    80005b38:	fe078ce3          	beqz	a5,80005b30 <_Z12testSleepingv+0x5c>
    80005b3c:	00005797          	auipc	a5,0x5
    80005b40:	d7d7c783          	lbu	a5,-643(a5) # 8000a8b9 <finished+0x1>
    80005b44:	fe0786e3          	beqz	a5,80005b30 <_Z12testSleepingv+0x5c>
}
    80005b48:	03813083          	ld	ra,56(sp)
    80005b4c:	03013403          	ld	s0,48(sp)
    80005b50:	02813483          	ld	s1,40(sp)
    80005b54:	04010113          	addi	sp,sp,64
    80005b58:	00008067          	ret

0000000080005b5c <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    80005b5c:	fe010113          	addi	sp,sp,-32
    80005b60:	00113c23          	sd	ra,24(sp)
    80005b64:	00813823          	sd	s0,16(sp)
    80005b68:	00913423          	sd	s1,8(sp)
    80005b6c:	02010413          	addi	s0,sp,32
    80005b70:	00050493          	mv	s1,a0
    80005b74:	00b52023          	sw	a1,0(a0)
    80005b78:	00052823          	sw	zero,16(a0)
    80005b7c:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005b80:	00259513          	slli	a0,a1,0x2
    80005b84:	ffffb097          	auipc	ra,0xffffb
    80005b88:	6c4080e7          	jalr	1732(ra) # 80001248 <mem_alloc>
    80005b8c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005b90:	00000593          	li	a1,0
    80005b94:	02048513          	addi	a0,s1,32
    80005b98:	ffffb097          	auipc	ra,0xffffb
    80005b9c:	7d4080e7          	jalr	2004(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    80005ba0:	0004a583          	lw	a1,0(s1)
    80005ba4:	01848513          	addi	a0,s1,24
    80005ba8:	ffffb097          	auipc	ra,0xffffb
    80005bac:	7c4080e7          	jalr	1988(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    80005bb0:	00100593          	li	a1,1
    80005bb4:	02848513          	addi	a0,s1,40
    80005bb8:	ffffb097          	auipc	ra,0xffffb
    80005bbc:	7b4080e7          	jalr	1972(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    80005bc0:	00100593          	li	a1,1
    80005bc4:	03048513          	addi	a0,s1,48
    80005bc8:	ffffb097          	auipc	ra,0xffffb
    80005bcc:	7a4080e7          	jalr	1956(ra) # 8000136c <sem_open>
}
    80005bd0:	01813083          	ld	ra,24(sp)
    80005bd4:	01013403          	ld	s0,16(sp)
    80005bd8:	00813483          	ld	s1,8(sp)
    80005bdc:	02010113          	addi	sp,sp,32
    80005be0:	00008067          	ret

0000000080005be4 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    80005be4:	fe010113          	addi	sp,sp,-32
    80005be8:	00113c23          	sd	ra,24(sp)
    80005bec:	00813823          	sd	s0,16(sp)
    80005bf0:	00913423          	sd	s1,8(sp)
    80005bf4:	02010413          	addi	s0,sp,32
    80005bf8:	00050493          	mv	s1,a0
    80005bfc:	00a00513          	li	a0,10
    80005c00:	00002097          	auipc	ra,0x2
    80005c04:	26c080e7          	jalr	620(ra) # 80007e6c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005c08:	0104a783          	lw	a5,16(s1)
    80005c0c:	0144a703          	lw	a4,20(s1)
    80005c10:	00e78c63          	beq	a5,a4,80005c28 <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80005c14:	0017879b          	addiw	a5,a5,1
    80005c18:	0004a703          	lw	a4,0(s1)
    80005c1c:	02e7e7bb          	remw	a5,a5,a4
    80005c20:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005c24:	fe5ff06f          	j	80005c08 <_ZN6BufferD1Ev+0x24>
    80005c28:	02100513          	li	a0,33
    80005c2c:	00002097          	auipc	ra,0x2
    80005c30:	240080e7          	jalr	576(ra) # 80007e6c <__putc>
    80005c34:	00a00513          	li	a0,10
    80005c38:	00002097          	auipc	ra,0x2
    80005c3c:	234080e7          	jalr	564(ra) # 80007e6c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005c40:	0084b503          	ld	a0,8(s1)
    80005c44:	ffffb097          	auipc	ra,0xffffb
    80005c48:	634080e7          	jalr	1588(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    80005c4c:	0204b503          	ld	a0,32(s1)
    80005c50:	ffffb097          	auipc	ra,0xffffb
    80005c54:	754080e7          	jalr	1876(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    80005c58:	0184b503          	ld	a0,24(s1)
    80005c5c:	ffffb097          	auipc	ra,0xffffb
    80005c60:	748080e7          	jalr	1864(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    80005c64:	0304b503          	ld	a0,48(s1)
    80005c68:	ffffb097          	auipc	ra,0xffffb
    80005c6c:	73c080e7          	jalr	1852(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    80005c70:	0284b503          	ld	a0,40(s1)
    80005c74:	ffffb097          	auipc	ra,0xffffb
    80005c78:	730080e7          	jalr	1840(ra) # 800013a4 <sem_close>
}
    80005c7c:	01813083          	ld	ra,24(sp)
    80005c80:	01013403          	ld	s0,16(sp)
    80005c84:	00813483          	ld	s1,8(sp)
    80005c88:	02010113          	addi	sp,sp,32
    80005c8c:	00008067          	ret

0000000080005c90 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    80005c90:	fe010113          	addi	sp,sp,-32
    80005c94:	00113c23          	sd	ra,24(sp)
    80005c98:	00813823          	sd	s0,16(sp)
    80005c9c:	00913423          	sd	s1,8(sp)
    80005ca0:	01213023          	sd	s2,0(sp)
    80005ca4:	02010413          	addi	s0,sp,32
    80005ca8:	00050493          	mv	s1,a0
    80005cac:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005cb0:	01853503          	ld	a0,24(a0)
    80005cb4:	ffffb097          	auipc	ra,0xffffb
    80005cb8:	71c080e7          	jalr	1820(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    80005cbc:	0304b503          	ld	a0,48(s1)
    80005cc0:	ffffb097          	auipc	ra,0xffffb
    80005cc4:	710080e7          	jalr	1808(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    80005cc8:	0084b783          	ld	a5,8(s1)
    80005ccc:	0144a703          	lw	a4,20(s1)
    80005cd0:	00271713          	slli	a4,a4,0x2
    80005cd4:	00e787b3          	add	a5,a5,a4
    80005cd8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005cdc:	0144a783          	lw	a5,20(s1)
    80005ce0:	0017879b          	addiw	a5,a5,1
    80005ce4:	0004a703          	lw	a4,0(s1)
    80005ce8:	02e7e7bb          	remw	a5,a5,a4
    80005cec:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005cf0:	0304b503          	ld	a0,48(s1)
    80005cf4:	ffffb097          	auipc	ra,0xffffb
    80005cf8:	708080e7          	jalr	1800(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    80005cfc:	0204b503          	ld	a0,32(s1)
    80005d00:	ffffb097          	auipc	ra,0xffffb
    80005d04:	6fc080e7          	jalr	1788(ra) # 800013fc <sem_signal>

}
    80005d08:	01813083          	ld	ra,24(sp)
    80005d0c:	01013403          	ld	s0,16(sp)
    80005d10:	00813483          	ld	s1,8(sp)
    80005d14:	00013903          	ld	s2,0(sp)
    80005d18:	02010113          	addi	sp,sp,32
    80005d1c:	00008067          	ret

0000000080005d20 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005d20:	fe010113          	addi	sp,sp,-32
    80005d24:	00113c23          	sd	ra,24(sp)
    80005d28:	00813823          	sd	s0,16(sp)
    80005d2c:	00913423          	sd	s1,8(sp)
    80005d30:	01213023          	sd	s2,0(sp)
    80005d34:	02010413          	addi	s0,sp,32
    80005d38:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005d3c:	02053503          	ld	a0,32(a0)
    80005d40:	ffffb097          	auipc	ra,0xffffb
    80005d44:	690080e7          	jalr	1680(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    80005d48:	0284b503          	ld	a0,40(s1)
    80005d4c:	ffffb097          	auipc	ra,0xffffb
    80005d50:	684080e7          	jalr	1668(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    80005d54:	0084b703          	ld	a4,8(s1)
    80005d58:	0104a783          	lw	a5,16(s1)
    80005d5c:	00279693          	slli	a3,a5,0x2
    80005d60:	00d70733          	add	a4,a4,a3
    80005d64:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005d68:	0017879b          	addiw	a5,a5,1
    80005d6c:	0004a703          	lw	a4,0(s1)
    80005d70:	02e7e7bb          	remw	a5,a5,a4
    80005d74:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005d78:	0284b503          	ld	a0,40(s1)
    80005d7c:	ffffb097          	auipc	ra,0xffffb
    80005d80:	680080e7          	jalr	1664(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    80005d84:	0184b503          	ld	a0,24(s1)
    80005d88:	ffffb097          	auipc	ra,0xffffb
    80005d8c:	674080e7          	jalr	1652(ra) # 800013fc <sem_signal>

    return ret;
}
    80005d90:	00090513          	mv	a0,s2
    80005d94:	01813083          	ld	ra,24(sp)
    80005d98:	01013403          	ld	s0,16(sp)
    80005d9c:	00813483          	ld	s1,8(sp)
    80005da0:	00013903          	ld	s2,0(sp)
    80005da4:	02010113          	addi	sp,sp,32
    80005da8:	00008067          	ret

0000000080005dac <start>:
    80005dac:	ff010113          	addi	sp,sp,-16
    80005db0:	00813423          	sd	s0,8(sp)
    80005db4:	01010413          	addi	s0,sp,16
    80005db8:	300027f3          	csrr	a5,mstatus
    80005dbc:	ffffe737          	lui	a4,0xffffe
    80005dc0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff2cdf>
    80005dc4:	00e7f7b3          	and	a5,a5,a4
    80005dc8:	00001737          	lui	a4,0x1
    80005dcc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005dd0:	00e7e7b3          	or	a5,a5,a4
    80005dd4:	30079073          	csrw	mstatus,a5
    80005dd8:	00000797          	auipc	a5,0x0
    80005ddc:	16078793          	addi	a5,a5,352 # 80005f38 <system_main>
    80005de0:	34179073          	csrw	mepc,a5
    80005de4:	00000793          	li	a5,0
    80005de8:	18079073          	csrw	satp,a5
    80005dec:	000107b7          	lui	a5,0x10
    80005df0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005df4:	30279073          	csrw	medeleg,a5
    80005df8:	30379073          	csrw	mideleg,a5
    80005dfc:	104027f3          	csrr	a5,sie
    80005e00:	2227e793          	ori	a5,a5,546
    80005e04:	10479073          	csrw	sie,a5
    80005e08:	fff00793          	li	a5,-1
    80005e0c:	00a7d793          	srli	a5,a5,0xa
    80005e10:	3b079073          	csrw	pmpaddr0,a5
    80005e14:	00f00793          	li	a5,15
    80005e18:	3a079073          	csrw	pmpcfg0,a5
    80005e1c:	f14027f3          	csrr	a5,mhartid
    80005e20:	0200c737          	lui	a4,0x200c
    80005e24:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005e28:	0007869b          	sext.w	a3,a5
    80005e2c:	00269713          	slli	a4,a3,0x2
    80005e30:	000f4637          	lui	a2,0xf4
    80005e34:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005e38:	00d70733          	add	a4,a4,a3
    80005e3c:	0037979b          	slliw	a5,a5,0x3
    80005e40:	020046b7          	lui	a3,0x2004
    80005e44:	00d787b3          	add	a5,a5,a3
    80005e48:	00c585b3          	add	a1,a1,a2
    80005e4c:	00371693          	slli	a3,a4,0x3
    80005e50:	00005717          	auipc	a4,0x5
    80005e54:	a7070713          	addi	a4,a4,-1424 # 8000a8c0 <timer_scratch>
    80005e58:	00b7b023          	sd	a1,0(a5)
    80005e5c:	00d70733          	add	a4,a4,a3
    80005e60:	00f73c23          	sd	a5,24(a4)
    80005e64:	02c73023          	sd	a2,32(a4)
    80005e68:	34071073          	csrw	mscratch,a4
    80005e6c:	00000797          	auipc	a5,0x0
    80005e70:	6e478793          	addi	a5,a5,1764 # 80006550 <timervec>
    80005e74:	30579073          	csrw	mtvec,a5
    80005e78:	300027f3          	csrr	a5,mstatus
    80005e7c:	0087e793          	ori	a5,a5,8
    80005e80:	30079073          	csrw	mstatus,a5
    80005e84:	304027f3          	csrr	a5,mie
    80005e88:	0807e793          	ori	a5,a5,128
    80005e8c:	30479073          	csrw	mie,a5
    80005e90:	f14027f3          	csrr	a5,mhartid
    80005e94:	0007879b          	sext.w	a5,a5
    80005e98:	00078213          	mv	tp,a5
    80005e9c:	30200073          	mret
    80005ea0:	00813403          	ld	s0,8(sp)
    80005ea4:	01010113          	addi	sp,sp,16
    80005ea8:	00008067          	ret

0000000080005eac <timerinit>:
    80005eac:	ff010113          	addi	sp,sp,-16
    80005eb0:	00813423          	sd	s0,8(sp)
    80005eb4:	01010413          	addi	s0,sp,16
    80005eb8:	f14027f3          	csrr	a5,mhartid
    80005ebc:	0200c737          	lui	a4,0x200c
    80005ec0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005ec4:	0007869b          	sext.w	a3,a5
    80005ec8:	00269713          	slli	a4,a3,0x2
    80005ecc:	000f4637          	lui	a2,0xf4
    80005ed0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005ed4:	00d70733          	add	a4,a4,a3
    80005ed8:	0037979b          	slliw	a5,a5,0x3
    80005edc:	020046b7          	lui	a3,0x2004
    80005ee0:	00d787b3          	add	a5,a5,a3
    80005ee4:	00c585b3          	add	a1,a1,a2
    80005ee8:	00371693          	slli	a3,a4,0x3
    80005eec:	00005717          	auipc	a4,0x5
    80005ef0:	9d470713          	addi	a4,a4,-1580 # 8000a8c0 <timer_scratch>
    80005ef4:	00b7b023          	sd	a1,0(a5)
    80005ef8:	00d70733          	add	a4,a4,a3
    80005efc:	00f73c23          	sd	a5,24(a4)
    80005f00:	02c73023          	sd	a2,32(a4)
    80005f04:	34071073          	csrw	mscratch,a4
    80005f08:	00000797          	auipc	a5,0x0
    80005f0c:	64878793          	addi	a5,a5,1608 # 80006550 <timervec>
    80005f10:	30579073          	csrw	mtvec,a5
    80005f14:	300027f3          	csrr	a5,mstatus
    80005f18:	0087e793          	ori	a5,a5,8
    80005f1c:	30079073          	csrw	mstatus,a5
    80005f20:	304027f3          	csrr	a5,mie
    80005f24:	0807e793          	ori	a5,a5,128
    80005f28:	30479073          	csrw	mie,a5
    80005f2c:	00813403          	ld	s0,8(sp)
    80005f30:	01010113          	addi	sp,sp,16
    80005f34:	00008067          	ret

0000000080005f38 <system_main>:
    80005f38:	fe010113          	addi	sp,sp,-32
    80005f3c:	00813823          	sd	s0,16(sp)
    80005f40:	00913423          	sd	s1,8(sp)
    80005f44:	00113c23          	sd	ra,24(sp)
    80005f48:	02010413          	addi	s0,sp,32
    80005f4c:	00000097          	auipc	ra,0x0
    80005f50:	0c4080e7          	jalr	196(ra) # 80006010 <cpuid>
    80005f54:	00005497          	auipc	s1,0x5
    80005f58:	88c48493          	addi	s1,s1,-1908 # 8000a7e0 <started>
    80005f5c:	02050263          	beqz	a0,80005f80 <system_main+0x48>
    80005f60:	0004a783          	lw	a5,0(s1)
    80005f64:	0007879b          	sext.w	a5,a5
    80005f68:	fe078ce3          	beqz	a5,80005f60 <system_main+0x28>
    80005f6c:	0ff0000f          	fence
    80005f70:	00002517          	auipc	a0,0x2
    80005f74:	48850513          	addi	a0,a0,1160 # 800083f8 <_ZL6digits+0x58>
    80005f78:	00001097          	auipc	ra,0x1
    80005f7c:	a74080e7          	jalr	-1420(ra) # 800069ec <panic>
    80005f80:	00001097          	auipc	ra,0x1
    80005f84:	9c8080e7          	jalr	-1592(ra) # 80006948 <consoleinit>
    80005f88:	00001097          	auipc	ra,0x1
    80005f8c:	154080e7          	jalr	340(ra) # 800070dc <printfinit>
    80005f90:	00002517          	auipc	a0,0x2
    80005f94:	1e850513          	addi	a0,a0,488 # 80008178 <CONSOLE_STATUS+0x168>
    80005f98:	00001097          	auipc	ra,0x1
    80005f9c:	ab0080e7          	jalr	-1360(ra) # 80006a48 <__printf>
    80005fa0:	00002517          	auipc	a0,0x2
    80005fa4:	42850513          	addi	a0,a0,1064 # 800083c8 <_ZL6digits+0x28>
    80005fa8:	00001097          	auipc	ra,0x1
    80005fac:	aa0080e7          	jalr	-1376(ra) # 80006a48 <__printf>
    80005fb0:	00002517          	auipc	a0,0x2
    80005fb4:	1c850513          	addi	a0,a0,456 # 80008178 <CONSOLE_STATUS+0x168>
    80005fb8:	00001097          	auipc	ra,0x1
    80005fbc:	a90080e7          	jalr	-1392(ra) # 80006a48 <__printf>
    80005fc0:	00001097          	auipc	ra,0x1
    80005fc4:	4a8080e7          	jalr	1192(ra) # 80007468 <kinit>
    80005fc8:	00000097          	auipc	ra,0x0
    80005fcc:	148080e7          	jalr	328(ra) # 80006110 <trapinit>
    80005fd0:	00000097          	auipc	ra,0x0
    80005fd4:	16c080e7          	jalr	364(ra) # 8000613c <trapinithart>
    80005fd8:	00000097          	auipc	ra,0x0
    80005fdc:	5b8080e7          	jalr	1464(ra) # 80006590 <plicinit>
    80005fe0:	00000097          	auipc	ra,0x0
    80005fe4:	5d8080e7          	jalr	1496(ra) # 800065b8 <plicinithart>
    80005fe8:	00000097          	auipc	ra,0x0
    80005fec:	078080e7          	jalr	120(ra) # 80006060 <userinit>
    80005ff0:	0ff0000f          	fence
    80005ff4:	00100793          	li	a5,1
    80005ff8:	00002517          	auipc	a0,0x2
    80005ffc:	3e850513          	addi	a0,a0,1000 # 800083e0 <_ZL6digits+0x40>
    80006000:	00f4a023          	sw	a5,0(s1)
    80006004:	00001097          	auipc	ra,0x1
    80006008:	a44080e7          	jalr	-1468(ra) # 80006a48 <__printf>
    8000600c:	0000006f          	j	8000600c <system_main+0xd4>

0000000080006010 <cpuid>:
    80006010:	ff010113          	addi	sp,sp,-16
    80006014:	00813423          	sd	s0,8(sp)
    80006018:	01010413          	addi	s0,sp,16
    8000601c:	00020513          	mv	a0,tp
    80006020:	00813403          	ld	s0,8(sp)
    80006024:	0005051b          	sext.w	a0,a0
    80006028:	01010113          	addi	sp,sp,16
    8000602c:	00008067          	ret

0000000080006030 <mycpu>:
    80006030:	ff010113          	addi	sp,sp,-16
    80006034:	00813423          	sd	s0,8(sp)
    80006038:	01010413          	addi	s0,sp,16
    8000603c:	00020793          	mv	a5,tp
    80006040:	00813403          	ld	s0,8(sp)
    80006044:	0007879b          	sext.w	a5,a5
    80006048:	00779793          	slli	a5,a5,0x7
    8000604c:	00006517          	auipc	a0,0x6
    80006050:	8a450513          	addi	a0,a0,-1884 # 8000b8f0 <cpus>
    80006054:	00f50533          	add	a0,a0,a5
    80006058:	01010113          	addi	sp,sp,16
    8000605c:	00008067          	ret

0000000080006060 <userinit>:
    80006060:	ff010113          	addi	sp,sp,-16
    80006064:	00813423          	sd	s0,8(sp)
    80006068:	01010413          	addi	s0,sp,16
    8000606c:	00813403          	ld	s0,8(sp)
    80006070:	01010113          	addi	sp,sp,16
    80006074:	ffffd317          	auipc	t1,0xffffd
    80006078:	dd430067          	jr	-556(t1) # 80002e48 <main>

000000008000607c <either_copyout>:
    8000607c:	ff010113          	addi	sp,sp,-16
    80006080:	00813023          	sd	s0,0(sp)
    80006084:	00113423          	sd	ra,8(sp)
    80006088:	01010413          	addi	s0,sp,16
    8000608c:	02051663          	bnez	a0,800060b8 <either_copyout+0x3c>
    80006090:	00058513          	mv	a0,a1
    80006094:	00060593          	mv	a1,a2
    80006098:	0006861b          	sext.w	a2,a3
    8000609c:	00002097          	auipc	ra,0x2
    800060a0:	c58080e7          	jalr	-936(ra) # 80007cf4 <__memmove>
    800060a4:	00813083          	ld	ra,8(sp)
    800060a8:	00013403          	ld	s0,0(sp)
    800060ac:	00000513          	li	a0,0
    800060b0:	01010113          	addi	sp,sp,16
    800060b4:	00008067          	ret
    800060b8:	00002517          	auipc	a0,0x2
    800060bc:	36850513          	addi	a0,a0,872 # 80008420 <_ZL6digits+0x80>
    800060c0:	00001097          	auipc	ra,0x1
    800060c4:	92c080e7          	jalr	-1748(ra) # 800069ec <panic>

00000000800060c8 <either_copyin>:
    800060c8:	ff010113          	addi	sp,sp,-16
    800060cc:	00813023          	sd	s0,0(sp)
    800060d0:	00113423          	sd	ra,8(sp)
    800060d4:	01010413          	addi	s0,sp,16
    800060d8:	02059463          	bnez	a1,80006100 <either_copyin+0x38>
    800060dc:	00060593          	mv	a1,a2
    800060e0:	0006861b          	sext.w	a2,a3
    800060e4:	00002097          	auipc	ra,0x2
    800060e8:	c10080e7          	jalr	-1008(ra) # 80007cf4 <__memmove>
    800060ec:	00813083          	ld	ra,8(sp)
    800060f0:	00013403          	ld	s0,0(sp)
    800060f4:	00000513          	li	a0,0
    800060f8:	01010113          	addi	sp,sp,16
    800060fc:	00008067          	ret
    80006100:	00002517          	auipc	a0,0x2
    80006104:	34850513          	addi	a0,a0,840 # 80008448 <_ZL6digits+0xa8>
    80006108:	00001097          	auipc	ra,0x1
    8000610c:	8e4080e7          	jalr	-1820(ra) # 800069ec <panic>

0000000080006110 <trapinit>:
    80006110:	ff010113          	addi	sp,sp,-16
    80006114:	00813423          	sd	s0,8(sp)
    80006118:	01010413          	addi	s0,sp,16
    8000611c:	00813403          	ld	s0,8(sp)
    80006120:	00002597          	auipc	a1,0x2
    80006124:	35058593          	addi	a1,a1,848 # 80008470 <_ZL6digits+0xd0>
    80006128:	00006517          	auipc	a0,0x6
    8000612c:	84850513          	addi	a0,a0,-1976 # 8000b970 <tickslock>
    80006130:	01010113          	addi	sp,sp,16
    80006134:	00001317          	auipc	t1,0x1
    80006138:	5c430067          	jr	1476(t1) # 800076f8 <initlock>

000000008000613c <trapinithart>:
    8000613c:	ff010113          	addi	sp,sp,-16
    80006140:	00813423          	sd	s0,8(sp)
    80006144:	01010413          	addi	s0,sp,16
    80006148:	00000797          	auipc	a5,0x0
    8000614c:	2f878793          	addi	a5,a5,760 # 80006440 <kernelvec>
    80006150:	10579073          	csrw	stvec,a5
    80006154:	00813403          	ld	s0,8(sp)
    80006158:	01010113          	addi	sp,sp,16
    8000615c:	00008067          	ret

0000000080006160 <usertrap>:
    80006160:	ff010113          	addi	sp,sp,-16
    80006164:	00813423          	sd	s0,8(sp)
    80006168:	01010413          	addi	s0,sp,16
    8000616c:	00813403          	ld	s0,8(sp)
    80006170:	01010113          	addi	sp,sp,16
    80006174:	00008067          	ret

0000000080006178 <usertrapret>:
    80006178:	ff010113          	addi	sp,sp,-16
    8000617c:	00813423          	sd	s0,8(sp)
    80006180:	01010413          	addi	s0,sp,16
    80006184:	00813403          	ld	s0,8(sp)
    80006188:	01010113          	addi	sp,sp,16
    8000618c:	00008067          	ret

0000000080006190 <kerneltrap>:
    80006190:	fe010113          	addi	sp,sp,-32
    80006194:	00813823          	sd	s0,16(sp)
    80006198:	00113c23          	sd	ra,24(sp)
    8000619c:	00913423          	sd	s1,8(sp)
    800061a0:	02010413          	addi	s0,sp,32
    800061a4:	142025f3          	csrr	a1,scause
    800061a8:	100027f3          	csrr	a5,sstatus
    800061ac:	0027f793          	andi	a5,a5,2
    800061b0:	10079c63          	bnez	a5,800062c8 <kerneltrap+0x138>
    800061b4:	142027f3          	csrr	a5,scause
    800061b8:	0207ce63          	bltz	a5,800061f4 <kerneltrap+0x64>
    800061bc:	00002517          	auipc	a0,0x2
    800061c0:	2fc50513          	addi	a0,a0,764 # 800084b8 <_ZL6digits+0x118>
    800061c4:	00001097          	auipc	ra,0x1
    800061c8:	884080e7          	jalr	-1916(ra) # 80006a48 <__printf>
    800061cc:	141025f3          	csrr	a1,sepc
    800061d0:	14302673          	csrr	a2,stval
    800061d4:	00002517          	auipc	a0,0x2
    800061d8:	2f450513          	addi	a0,a0,756 # 800084c8 <_ZL6digits+0x128>
    800061dc:	00001097          	auipc	ra,0x1
    800061e0:	86c080e7          	jalr	-1940(ra) # 80006a48 <__printf>
    800061e4:	00002517          	auipc	a0,0x2
    800061e8:	2fc50513          	addi	a0,a0,764 # 800084e0 <_ZL6digits+0x140>
    800061ec:	00001097          	auipc	ra,0x1
    800061f0:	800080e7          	jalr	-2048(ra) # 800069ec <panic>
    800061f4:	0ff7f713          	andi	a4,a5,255
    800061f8:	00900693          	li	a3,9
    800061fc:	04d70063          	beq	a4,a3,8000623c <kerneltrap+0xac>
    80006200:	fff00713          	li	a4,-1
    80006204:	03f71713          	slli	a4,a4,0x3f
    80006208:	00170713          	addi	a4,a4,1
    8000620c:	fae798e3          	bne	a5,a4,800061bc <kerneltrap+0x2c>
    80006210:	00000097          	auipc	ra,0x0
    80006214:	e00080e7          	jalr	-512(ra) # 80006010 <cpuid>
    80006218:	06050663          	beqz	a0,80006284 <kerneltrap+0xf4>
    8000621c:	144027f3          	csrr	a5,sip
    80006220:	ffd7f793          	andi	a5,a5,-3
    80006224:	14479073          	csrw	sip,a5
    80006228:	01813083          	ld	ra,24(sp)
    8000622c:	01013403          	ld	s0,16(sp)
    80006230:	00813483          	ld	s1,8(sp)
    80006234:	02010113          	addi	sp,sp,32
    80006238:	00008067          	ret
    8000623c:	00000097          	auipc	ra,0x0
    80006240:	3c8080e7          	jalr	968(ra) # 80006604 <plic_claim>
    80006244:	00a00793          	li	a5,10
    80006248:	00050493          	mv	s1,a0
    8000624c:	06f50863          	beq	a0,a5,800062bc <kerneltrap+0x12c>
    80006250:	fc050ce3          	beqz	a0,80006228 <kerneltrap+0x98>
    80006254:	00050593          	mv	a1,a0
    80006258:	00002517          	auipc	a0,0x2
    8000625c:	24050513          	addi	a0,a0,576 # 80008498 <_ZL6digits+0xf8>
    80006260:	00000097          	auipc	ra,0x0
    80006264:	7e8080e7          	jalr	2024(ra) # 80006a48 <__printf>
    80006268:	01013403          	ld	s0,16(sp)
    8000626c:	01813083          	ld	ra,24(sp)
    80006270:	00048513          	mv	a0,s1
    80006274:	00813483          	ld	s1,8(sp)
    80006278:	02010113          	addi	sp,sp,32
    8000627c:	00000317          	auipc	t1,0x0
    80006280:	3c030067          	jr	960(t1) # 8000663c <plic_complete>
    80006284:	00005517          	auipc	a0,0x5
    80006288:	6ec50513          	addi	a0,a0,1772 # 8000b970 <tickslock>
    8000628c:	00001097          	auipc	ra,0x1
    80006290:	490080e7          	jalr	1168(ra) # 8000771c <acquire>
    80006294:	00004717          	auipc	a4,0x4
    80006298:	55070713          	addi	a4,a4,1360 # 8000a7e4 <ticks>
    8000629c:	00072783          	lw	a5,0(a4)
    800062a0:	00005517          	auipc	a0,0x5
    800062a4:	6d050513          	addi	a0,a0,1744 # 8000b970 <tickslock>
    800062a8:	0017879b          	addiw	a5,a5,1
    800062ac:	00f72023          	sw	a5,0(a4)
    800062b0:	00001097          	auipc	ra,0x1
    800062b4:	538080e7          	jalr	1336(ra) # 800077e8 <release>
    800062b8:	f65ff06f          	j	8000621c <kerneltrap+0x8c>
    800062bc:	00001097          	auipc	ra,0x1
    800062c0:	094080e7          	jalr	148(ra) # 80007350 <uartintr>
    800062c4:	fa5ff06f          	j	80006268 <kerneltrap+0xd8>
    800062c8:	00002517          	auipc	a0,0x2
    800062cc:	1b050513          	addi	a0,a0,432 # 80008478 <_ZL6digits+0xd8>
    800062d0:	00000097          	auipc	ra,0x0
    800062d4:	71c080e7          	jalr	1820(ra) # 800069ec <panic>

00000000800062d8 <clockintr>:
    800062d8:	fe010113          	addi	sp,sp,-32
    800062dc:	00813823          	sd	s0,16(sp)
    800062e0:	00913423          	sd	s1,8(sp)
    800062e4:	00113c23          	sd	ra,24(sp)
    800062e8:	02010413          	addi	s0,sp,32
    800062ec:	00005497          	auipc	s1,0x5
    800062f0:	68448493          	addi	s1,s1,1668 # 8000b970 <tickslock>
    800062f4:	00048513          	mv	a0,s1
    800062f8:	00001097          	auipc	ra,0x1
    800062fc:	424080e7          	jalr	1060(ra) # 8000771c <acquire>
    80006300:	00004717          	auipc	a4,0x4
    80006304:	4e470713          	addi	a4,a4,1252 # 8000a7e4 <ticks>
    80006308:	00072783          	lw	a5,0(a4)
    8000630c:	01013403          	ld	s0,16(sp)
    80006310:	01813083          	ld	ra,24(sp)
    80006314:	00048513          	mv	a0,s1
    80006318:	0017879b          	addiw	a5,a5,1
    8000631c:	00813483          	ld	s1,8(sp)
    80006320:	00f72023          	sw	a5,0(a4)
    80006324:	02010113          	addi	sp,sp,32
    80006328:	00001317          	auipc	t1,0x1
    8000632c:	4c030067          	jr	1216(t1) # 800077e8 <release>

0000000080006330 <devintr>:
    80006330:	142027f3          	csrr	a5,scause
    80006334:	00000513          	li	a0,0
    80006338:	0007c463          	bltz	a5,80006340 <devintr+0x10>
    8000633c:	00008067          	ret
    80006340:	fe010113          	addi	sp,sp,-32
    80006344:	00813823          	sd	s0,16(sp)
    80006348:	00113c23          	sd	ra,24(sp)
    8000634c:	00913423          	sd	s1,8(sp)
    80006350:	02010413          	addi	s0,sp,32
    80006354:	0ff7f713          	andi	a4,a5,255
    80006358:	00900693          	li	a3,9
    8000635c:	04d70c63          	beq	a4,a3,800063b4 <devintr+0x84>
    80006360:	fff00713          	li	a4,-1
    80006364:	03f71713          	slli	a4,a4,0x3f
    80006368:	00170713          	addi	a4,a4,1
    8000636c:	00e78c63          	beq	a5,a4,80006384 <devintr+0x54>
    80006370:	01813083          	ld	ra,24(sp)
    80006374:	01013403          	ld	s0,16(sp)
    80006378:	00813483          	ld	s1,8(sp)
    8000637c:	02010113          	addi	sp,sp,32
    80006380:	00008067          	ret
    80006384:	00000097          	auipc	ra,0x0
    80006388:	c8c080e7          	jalr	-884(ra) # 80006010 <cpuid>
    8000638c:	06050663          	beqz	a0,800063f8 <devintr+0xc8>
    80006390:	144027f3          	csrr	a5,sip
    80006394:	ffd7f793          	andi	a5,a5,-3
    80006398:	14479073          	csrw	sip,a5
    8000639c:	01813083          	ld	ra,24(sp)
    800063a0:	01013403          	ld	s0,16(sp)
    800063a4:	00813483          	ld	s1,8(sp)
    800063a8:	00200513          	li	a0,2
    800063ac:	02010113          	addi	sp,sp,32
    800063b0:	00008067          	ret
    800063b4:	00000097          	auipc	ra,0x0
    800063b8:	250080e7          	jalr	592(ra) # 80006604 <plic_claim>
    800063bc:	00a00793          	li	a5,10
    800063c0:	00050493          	mv	s1,a0
    800063c4:	06f50663          	beq	a0,a5,80006430 <devintr+0x100>
    800063c8:	00100513          	li	a0,1
    800063cc:	fa0482e3          	beqz	s1,80006370 <devintr+0x40>
    800063d0:	00048593          	mv	a1,s1
    800063d4:	00002517          	auipc	a0,0x2
    800063d8:	0c450513          	addi	a0,a0,196 # 80008498 <_ZL6digits+0xf8>
    800063dc:	00000097          	auipc	ra,0x0
    800063e0:	66c080e7          	jalr	1644(ra) # 80006a48 <__printf>
    800063e4:	00048513          	mv	a0,s1
    800063e8:	00000097          	auipc	ra,0x0
    800063ec:	254080e7          	jalr	596(ra) # 8000663c <plic_complete>
    800063f0:	00100513          	li	a0,1
    800063f4:	f7dff06f          	j	80006370 <devintr+0x40>
    800063f8:	00005517          	auipc	a0,0x5
    800063fc:	57850513          	addi	a0,a0,1400 # 8000b970 <tickslock>
    80006400:	00001097          	auipc	ra,0x1
    80006404:	31c080e7          	jalr	796(ra) # 8000771c <acquire>
    80006408:	00004717          	auipc	a4,0x4
    8000640c:	3dc70713          	addi	a4,a4,988 # 8000a7e4 <ticks>
    80006410:	00072783          	lw	a5,0(a4)
    80006414:	00005517          	auipc	a0,0x5
    80006418:	55c50513          	addi	a0,a0,1372 # 8000b970 <tickslock>
    8000641c:	0017879b          	addiw	a5,a5,1
    80006420:	00f72023          	sw	a5,0(a4)
    80006424:	00001097          	auipc	ra,0x1
    80006428:	3c4080e7          	jalr	964(ra) # 800077e8 <release>
    8000642c:	f65ff06f          	j	80006390 <devintr+0x60>
    80006430:	00001097          	auipc	ra,0x1
    80006434:	f20080e7          	jalr	-224(ra) # 80007350 <uartintr>
    80006438:	fadff06f          	j	800063e4 <devintr+0xb4>
    8000643c:	0000                	unimp
	...

0000000080006440 <kernelvec>:
    80006440:	f0010113          	addi	sp,sp,-256
    80006444:	00113023          	sd	ra,0(sp)
    80006448:	00213423          	sd	sp,8(sp)
    8000644c:	00313823          	sd	gp,16(sp)
    80006450:	00413c23          	sd	tp,24(sp)
    80006454:	02513023          	sd	t0,32(sp)
    80006458:	02613423          	sd	t1,40(sp)
    8000645c:	02713823          	sd	t2,48(sp)
    80006460:	02813c23          	sd	s0,56(sp)
    80006464:	04913023          	sd	s1,64(sp)
    80006468:	04a13423          	sd	a0,72(sp)
    8000646c:	04b13823          	sd	a1,80(sp)
    80006470:	04c13c23          	sd	a2,88(sp)
    80006474:	06d13023          	sd	a3,96(sp)
    80006478:	06e13423          	sd	a4,104(sp)
    8000647c:	06f13823          	sd	a5,112(sp)
    80006480:	07013c23          	sd	a6,120(sp)
    80006484:	09113023          	sd	a7,128(sp)
    80006488:	09213423          	sd	s2,136(sp)
    8000648c:	09313823          	sd	s3,144(sp)
    80006490:	09413c23          	sd	s4,152(sp)
    80006494:	0b513023          	sd	s5,160(sp)
    80006498:	0b613423          	sd	s6,168(sp)
    8000649c:	0b713823          	sd	s7,176(sp)
    800064a0:	0b813c23          	sd	s8,184(sp)
    800064a4:	0d913023          	sd	s9,192(sp)
    800064a8:	0da13423          	sd	s10,200(sp)
    800064ac:	0db13823          	sd	s11,208(sp)
    800064b0:	0dc13c23          	sd	t3,216(sp)
    800064b4:	0fd13023          	sd	t4,224(sp)
    800064b8:	0fe13423          	sd	t5,232(sp)
    800064bc:	0ff13823          	sd	t6,240(sp)
    800064c0:	cd1ff0ef          	jal	ra,80006190 <kerneltrap>
    800064c4:	00013083          	ld	ra,0(sp)
    800064c8:	00813103          	ld	sp,8(sp)
    800064cc:	01013183          	ld	gp,16(sp)
    800064d0:	02013283          	ld	t0,32(sp)
    800064d4:	02813303          	ld	t1,40(sp)
    800064d8:	03013383          	ld	t2,48(sp)
    800064dc:	03813403          	ld	s0,56(sp)
    800064e0:	04013483          	ld	s1,64(sp)
    800064e4:	04813503          	ld	a0,72(sp)
    800064e8:	05013583          	ld	a1,80(sp)
    800064ec:	05813603          	ld	a2,88(sp)
    800064f0:	06013683          	ld	a3,96(sp)
    800064f4:	06813703          	ld	a4,104(sp)
    800064f8:	07013783          	ld	a5,112(sp)
    800064fc:	07813803          	ld	a6,120(sp)
    80006500:	08013883          	ld	a7,128(sp)
    80006504:	08813903          	ld	s2,136(sp)
    80006508:	09013983          	ld	s3,144(sp)
    8000650c:	09813a03          	ld	s4,152(sp)
    80006510:	0a013a83          	ld	s5,160(sp)
    80006514:	0a813b03          	ld	s6,168(sp)
    80006518:	0b013b83          	ld	s7,176(sp)
    8000651c:	0b813c03          	ld	s8,184(sp)
    80006520:	0c013c83          	ld	s9,192(sp)
    80006524:	0c813d03          	ld	s10,200(sp)
    80006528:	0d013d83          	ld	s11,208(sp)
    8000652c:	0d813e03          	ld	t3,216(sp)
    80006530:	0e013e83          	ld	t4,224(sp)
    80006534:	0e813f03          	ld	t5,232(sp)
    80006538:	0f013f83          	ld	t6,240(sp)
    8000653c:	10010113          	addi	sp,sp,256
    80006540:	10200073          	sret
    80006544:	00000013          	nop
    80006548:	00000013          	nop
    8000654c:	00000013          	nop

0000000080006550 <timervec>:
    80006550:	34051573          	csrrw	a0,mscratch,a0
    80006554:	00b53023          	sd	a1,0(a0)
    80006558:	00c53423          	sd	a2,8(a0)
    8000655c:	00d53823          	sd	a3,16(a0)
    80006560:	01853583          	ld	a1,24(a0)
    80006564:	02053603          	ld	a2,32(a0)
    80006568:	0005b683          	ld	a3,0(a1)
    8000656c:	00c686b3          	add	a3,a3,a2
    80006570:	00d5b023          	sd	a3,0(a1)
    80006574:	00200593          	li	a1,2
    80006578:	14459073          	csrw	sip,a1
    8000657c:	01053683          	ld	a3,16(a0)
    80006580:	00853603          	ld	a2,8(a0)
    80006584:	00053583          	ld	a1,0(a0)
    80006588:	34051573          	csrrw	a0,mscratch,a0
    8000658c:	30200073          	mret

0000000080006590 <plicinit>:
    80006590:	ff010113          	addi	sp,sp,-16
    80006594:	00813423          	sd	s0,8(sp)
    80006598:	01010413          	addi	s0,sp,16
    8000659c:	00813403          	ld	s0,8(sp)
    800065a0:	0c0007b7          	lui	a5,0xc000
    800065a4:	00100713          	li	a4,1
    800065a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800065ac:	00e7a223          	sw	a4,4(a5)
    800065b0:	01010113          	addi	sp,sp,16
    800065b4:	00008067          	ret

00000000800065b8 <plicinithart>:
    800065b8:	ff010113          	addi	sp,sp,-16
    800065bc:	00813023          	sd	s0,0(sp)
    800065c0:	00113423          	sd	ra,8(sp)
    800065c4:	01010413          	addi	s0,sp,16
    800065c8:	00000097          	auipc	ra,0x0
    800065cc:	a48080e7          	jalr	-1464(ra) # 80006010 <cpuid>
    800065d0:	0085171b          	slliw	a4,a0,0x8
    800065d4:	0c0027b7          	lui	a5,0xc002
    800065d8:	00e787b3          	add	a5,a5,a4
    800065dc:	40200713          	li	a4,1026
    800065e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800065e4:	00813083          	ld	ra,8(sp)
    800065e8:	00013403          	ld	s0,0(sp)
    800065ec:	00d5151b          	slliw	a0,a0,0xd
    800065f0:	0c2017b7          	lui	a5,0xc201
    800065f4:	00a78533          	add	a0,a5,a0
    800065f8:	00052023          	sw	zero,0(a0)
    800065fc:	01010113          	addi	sp,sp,16
    80006600:	00008067          	ret

0000000080006604 <plic_claim>:
    80006604:	ff010113          	addi	sp,sp,-16
    80006608:	00813023          	sd	s0,0(sp)
    8000660c:	00113423          	sd	ra,8(sp)
    80006610:	01010413          	addi	s0,sp,16
    80006614:	00000097          	auipc	ra,0x0
    80006618:	9fc080e7          	jalr	-1540(ra) # 80006010 <cpuid>
    8000661c:	00813083          	ld	ra,8(sp)
    80006620:	00013403          	ld	s0,0(sp)
    80006624:	00d5151b          	slliw	a0,a0,0xd
    80006628:	0c2017b7          	lui	a5,0xc201
    8000662c:	00a78533          	add	a0,a5,a0
    80006630:	00452503          	lw	a0,4(a0)
    80006634:	01010113          	addi	sp,sp,16
    80006638:	00008067          	ret

000000008000663c <plic_complete>:
    8000663c:	fe010113          	addi	sp,sp,-32
    80006640:	00813823          	sd	s0,16(sp)
    80006644:	00913423          	sd	s1,8(sp)
    80006648:	00113c23          	sd	ra,24(sp)
    8000664c:	02010413          	addi	s0,sp,32
    80006650:	00050493          	mv	s1,a0
    80006654:	00000097          	auipc	ra,0x0
    80006658:	9bc080e7          	jalr	-1604(ra) # 80006010 <cpuid>
    8000665c:	01813083          	ld	ra,24(sp)
    80006660:	01013403          	ld	s0,16(sp)
    80006664:	00d5179b          	slliw	a5,a0,0xd
    80006668:	0c201737          	lui	a4,0xc201
    8000666c:	00f707b3          	add	a5,a4,a5
    80006670:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006674:	00813483          	ld	s1,8(sp)
    80006678:	02010113          	addi	sp,sp,32
    8000667c:	00008067          	ret

0000000080006680 <consolewrite>:
    80006680:	fb010113          	addi	sp,sp,-80
    80006684:	04813023          	sd	s0,64(sp)
    80006688:	04113423          	sd	ra,72(sp)
    8000668c:	02913c23          	sd	s1,56(sp)
    80006690:	03213823          	sd	s2,48(sp)
    80006694:	03313423          	sd	s3,40(sp)
    80006698:	03413023          	sd	s4,32(sp)
    8000669c:	01513c23          	sd	s5,24(sp)
    800066a0:	05010413          	addi	s0,sp,80
    800066a4:	06c05c63          	blez	a2,8000671c <consolewrite+0x9c>
    800066a8:	00060993          	mv	s3,a2
    800066ac:	00050a13          	mv	s4,a0
    800066b0:	00058493          	mv	s1,a1
    800066b4:	00000913          	li	s2,0
    800066b8:	fff00a93          	li	s5,-1
    800066bc:	01c0006f          	j	800066d8 <consolewrite+0x58>
    800066c0:	fbf44503          	lbu	a0,-65(s0)
    800066c4:	0019091b          	addiw	s2,s2,1
    800066c8:	00148493          	addi	s1,s1,1
    800066cc:	00001097          	auipc	ra,0x1
    800066d0:	a9c080e7          	jalr	-1380(ra) # 80007168 <uartputc>
    800066d4:	03298063          	beq	s3,s2,800066f4 <consolewrite+0x74>
    800066d8:	00048613          	mv	a2,s1
    800066dc:	00100693          	li	a3,1
    800066e0:	000a0593          	mv	a1,s4
    800066e4:	fbf40513          	addi	a0,s0,-65
    800066e8:	00000097          	auipc	ra,0x0
    800066ec:	9e0080e7          	jalr	-1568(ra) # 800060c8 <either_copyin>
    800066f0:	fd5518e3          	bne	a0,s5,800066c0 <consolewrite+0x40>
    800066f4:	04813083          	ld	ra,72(sp)
    800066f8:	04013403          	ld	s0,64(sp)
    800066fc:	03813483          	ld	s1,56(sp)
    80006700:	02813983          	ld	s3,40(sp)
    80006704:	02013a03          	ld	s4,32(sp)
    80006708:	01813a83          	ld	s5,24(sp)
    8000670c:	00090513          	mv	a0,s2
    80006710:	03013903          	ld	s2,48(sp)
    80006714:	05010113          	addi	sp,sp,80
    80006718:	00008067          	ret
    8000671c:	00000913          	li	s2,0
    80006720:	fd5ff06f          	j	800066f4 <consolewrite+0x74>

0000000080006724 <consoleread>:
    80006724:	f9010113          	addi	sp,sp,-112
    80006728:	06813023          	sd	s0,96(sp)
    8000672c:	04913c23          	sd	s1,88(sp)
    80006730:	05213823          	sd	s2,80(sp)
    80006734:	05313423          	sd	s3,72(sp)
    80006738:	05413023          	sd	s4,64(sp)
    8000673c:	03513c23          	sd	s5,56(sp)
    80006740:	03613823          	sd	s6,48(sp)
    80006744:	03713423          	sd	s7,40(sp)
    80006748:	03813023          	sd	s8,32(sp)
    8000674c:	06113423          	sd	ra,104(sp)
    80006750:	01913c23          	sd	s9,24(sp)
    80006754:	07010413          	addi	s0,sp,112
    80006758:	00060b93          	mv	s7,a2
    8000675c:	00050913          	mv	s2,a0
    80006760:	00058c13          	mv	s8,a1
    80006764:	00060b1b          	sext.w	s6,a2
    80006768:	00005497          	auipc	s1,0x5
    8000676c:	23048493          	addi	s1,s1,560 # 8000b998 <cons>
    80006770:	00400993          	li	s3,4
    80006774:	fff00a13          	li	s4,-1
    80006778:	00a00a93          	li	s5,10
    8000677c:	05705e63          	blez	s7,800067d8 <consoleread+0xb4>
    80006780:	09c4a703          	lw	a4,156(s1)
    80006784:	0984a783          	lw	a5,152(s1)
    80006788:	0007071b          	sext.w	a4,a4
    8000678c:	08e78463          	beq	a5,a4,80006814 <consoleread+0xf0>
    80006790:	07f7f713          	andi	a4,a5,127
    80006794:	00e48733          	add	a4,s1,a4
    80006798:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000679c:	0017869b          	addiw	a3,a5,1
    800067a0:	08d4ac23          	sw	a3,152(s1)
    800067a4:	00070c9b          	sext.w	s9,a4
    800067a8:	0b370663          	beq	a4,s3,80006854 <consoleread+0x130>
    800067ac:	00100693          	li	a3,1
    800067b0:	f9f40613          	addi	a2,s0,-97
    800067b4:	000c0593          	mv	a1,s8
    800067b8:	00090513          	mv	a0,s2
    800067bc:	f8e40fa3          	sb	a4,-97(s0)
    800067c0:	00000097          	auipc	ra,0x0
    800067c4:	8bc080e7          	jalr	-1860(ra) # 8000607c <either_copyout>
    800067c8:	01450863          	beq	a0,s4,800067d8 <consoleread+0xb4>
    800067cc:	001c0c13          	addi	s8,s8,1
    800067d0:	fffb8b9b          	addiw	s7,s7,-1
    800067d4:	fb5c94e3          	bne	s9,s5,8000677c <consoleread+0x58>
    800067d8:	000b851b          	sext.w	a0,s7
    800067dc:	06813083          	ld	ra,104(sp)
    800067e0:	06013403          	ld	s0,96(sp)
    800067e4:	05813483          	ld	s1,88(sp)
    800067e8:	05013903          	ld	s2,80(sp)
    800067ec:	04813983          	ld	s3,72(sp)
    800067f0:	04013a03          	ld	s4,64(sp)
    800067f4:	03813a83          	ld	s5,56(sp)
    800067f8:	02813b83          	ld	s7,40(sp)
    800067fc:	02013c03          	ld	s8,32(sp)
    80006800:	01813c83          	ld	s9,24(sp)
    80006804:	40ab053b          	subw	a0,s6,a0
    80006808:	03013b03          	ld	s6,48(sp)
    8000680c:	07010113          	addi	sp,sp,112
    80006810:	00008067          	ret
    80006814:	00001097          	auipc	ra,0x1
    80006818:	1d8080e7          	jalr	472(ra) # 800079ec <push_on>
    8000681c:	0984a703          	lw	a4,152(s1)
    80006820:	09c4a783          	lw	a5,156(s1)
    80006824:	0007879b          	sext.w	a5,a5
    80006828:	fef70ce3          	beq	a4,a5,80006820 <consoleread+0xfc>
    8000682c:	00001097          	auipc	ra,0x1
    80006830:	234080e7          	jalr	564(ra) # 80007a60 <pop_on>
    80006834:	0984a783          	lw	a5,152(s1)
    80006838:	07f7f713          	andi	a4,a5,127
    8000683c:	00e48733          	add	a4,s1,a4
    80006840:	01874703          	lbu	a4,24(a4)
    80006844:	0017869b          	addiw	a3,a5,1
    80006848:	08d4ac23          	sw	a3,152(s1)
    8000684c:	00070c9b          	sext.w	s9,a4
    80006850:	f5371ee3          	bne	a4,s3,800067ac <consoleread+0x88>
    80006854:	000b851b          	sext.w	a0,s7
    80006858:	f96bf2e3          	bgeu	s7,s6,800067dc <consoleread+0xb8>
    8000685c:	08f4ac23          	sw	a5,152(s1)
    80006860:	f7dff06f          	j	800067dc <consoleread+0xb8>

0000000080006864 <consputc>:
    80006864:	10000793          	li	a5,256
    80006868:	00f50663          	beq	a0,a5,80006874 <consputc+0x10>
    8000686c:	00001317          	auipc	t1,0x1
    80006870:	9f430067          	jr	-1548(t1) # 80007260 <uartputc_sync>
    80006874:	ff010113          	addi	sp,sp,-16
    80006878:	00113423          	sd	ra,8(sp)
    8000687c:	00813023          	sd	s0,0(sp)
    80006880:	01010413          	addi	s0,sp,16
    80006884:	00800513          	li	a0,8
    80006888:	00001097          	auipc	ra,0x1
    8000688c:	9d8080e7          	jalr	-1576(ra) # 80007260 <uartputc_sync>
    80006890:	02000513          	li	a0,32
    80006894:	00001097          	auipc	ra,0x1
    80006898:	9cc080e7          	jalr	-1588(ra) # 80007260 <uartputc_sync>
    8000689c:	00013403          	ld	s0,0(sp)
    800068a0:	00813083          	ld	ra,8(sp)
    800068a4:	00800513          	li	a0,8
    800068a8:	01010113          	addi	sp,sp,16
    800068ac:	00001317          	auipc	t1,0x1
    800068b0:	9b430067          	jr	-1612(t1) # 80007260 <uartputc_sync>

00000000800068b4 <consoleintr>:
    800068b4:	fe010113          	addi	sp,sp,-32
    800068b8:	00813823          	sd	s0,16(sp)
    800068bc:	00913423          	sd	s1,8(sp)
    800068c0:	01213023          	sd	s2,0(sp)
    800068c4:	00113c23          	sd	ra,24(sp)
    800068c8:	02010413          	addi	s0,sp,32
    800068cc:	00005917          	auipc	s2,0x5
    800068d0:	0cc90913          	addi	s2,s2,204 # 8000b998 <cons>
    800068d4:	00050493          	mv	s1,a0
    800068d8:	00090513          	mv	a0,s2
    800068dc:	00001097          	auipc	ra,0x1
    800068e0:	e40080e7          	jalr	-448(ra) # 8000771c <acquire>
    800068e4:	02048c63          	beqz	s1,8000691c <consoleintr+0x68>
    800068e8:	0a092783          	lw	a5,160(s2)
    800068ec:	09892703          	lw	a4,152(s2)
    800068f0:	07f00693          	li	a3,127
    800068f4:	40e7873b          	subw	a4,a5,a4
    800068f8:	02e6e263          	bltu	a3,a4,8000691c <consoleintr+0x68>
    800068fc:	00d00713          	li	a4,13
    80006900:	04e48063          	beq	s1,a4,80006940 <consoleintr+0x8c>
    80006904:	07f7f713          	andi	a4,a5,127
    80006908:	00e90733          	add	a4,s2,a4
    8000690c:	0017879b          	addiw	a5,a5,1
    80006910:	0af92023          	sw	a5,160(s2)
    80006914:	00970c23          	sb	s1,24(a4)
    80006918:	08f92e23          	sw	a5,156(s2)
    8000691c:	01013403          	ld	s0,16(sp)
    80006920:	01813083          	ld	ra,24(sp)
    80006924:	00813483          	ld	s1,8(sp)
    80006928:	00013903          	ld	s2,0(sp)
    8000692c:	00005517          	auipc	a0,0x5
    80006930:	06c50513          	addi	a0,a0,108 # 8000b998 <cons>
    80006934:	02010113          	addi	sp,sp,32
    80006938:	00001317          	auipc	t1,0x1
    8000693c:	eb030067          	jr	-336(t1) # 800077e8 <release>
    80006940:	00a00493          	li	s1,10
    80006944:	fc1ff06f          	j	80006904 <consoleintr+0x50>

0000000080006948 <consoleinit>:
    80006948:	fe010113          	addi	sp,sp,-32
    8000694c:	00113c23          	sd	ra,24(sp)
    80006950:	00813823          	sd	s0,16(sp)
    80006954:	00913423          	sd	s1,8(sp)
    80006958:	02010413          	addi	s0,sp,32
    8000695c:	00005497          	auipc	s1,0x5
    80006960:	03c48493          	addi	s1,s1,60 # 8000b998 <cons>
    80006964:	00048513          	mv	a0,s1
    80006968:	00002597          	auipc	a1,0x2
    8000696c:	b8858593          	addi	a1,a1,-1144 # 800084f0 <_ZL6digits+0x150>
    80006970:	00001097          	auipc	ra,0x1
    80006974:	d88080e7          	jalr	-632(ra) # 800076f8 <initlock>
    80006978:	00000097          	auipc	ra,0x0
    8000697c:	7ac080e7          	jalr	1964(ra) # 80007124 <uartinit>
    80006980:	01813083          	ld	ra,24(sp)
    80006984:	01013403          	ld	s0,16(sp)
    80006988:	00000797          	auipc	a5,0x0
    8000698c:	d9c78793          	addi	a5,a5,-612 # 80006724 <consoleread>
    80006990:	0af4bc23          	sd	a5,184(s1)
    80006994:	00000797          	auipc	a5,0x0
    80006998:	cec78793          	addi	a5,a5,-788 # 80006680 <consolewrite>
    8000699c:	0cf4b023          	sd	a5,192(s1)
    800069a0:	00813483          	ld	s1,8(sp)
    800069a4:	02010113          	addi	sp,sp,32
    800069a8:	00008067          	ret

00000000800069ac <console_read>:
    800069ac:	ff010113          	addi	sp,sp,-16
    800069b0:	00813423          	sd	s0,8(sp)
    800069b4:	01010413          	addi	s0,sp,16
    800069b8:	00813403          	ld	s0,8(sp)
    800069bc:	00005317          	auipc	t1,0x5
    800069c0:	09433303          	ld	t1,148(t1) # 8000ba50 <devsw+0x10>
    800069c4:	01010113          	addi	sp,sp,16
    800069c8:	00030067          	jr	t1

00000000800069cc <console_write>:
    800069cc:	ff010113          	addi	sp,sp,-16
    800069d0:	00813423          	sd	s0,8(sp)
    800069d4:	01010413          	addi	s0,sp,16
    800069d8:	00813403          	ld	s0,8(sp)
    800069dc:	00005317          	auipc	t1,0x5
    800069e0:	07c33303          	ld	t1,124(t1) # 8000ba58 <devsw+0x18>
    800069e4:	01010113          	addi	sp,sp,16
    800069e8:	00030067          	jr	t1

00000000800069ec <panic>:
    800069ec:	fe010113          	addi	sp,sp,-32
    800069f0:	00113c23          	sd	ra,24(sp)
    800069f4:	00813823          	sd	s0,16(sp)
    800069f8:	00913423          	sd	s1,8(sp)
    800069fc:	02010413          	addi	s0,sp,32
    80006a00:	00050493          	mv	s1,a0
    80006a04:	00002517          	auipc	a0,0x2
    80006a08:	af450513          	addi	a0,a0,-1292 # 800084f8 <_ZL6digits+0x158>
    80006a0c:	00005797          	auipc	a5,0x5
    80006a10:	0e07a623          	sw	zero,236(a5) # 8000baf8 <pr+0x18>
    80006a14:	00000097          	auipc	ra,0x0
    80006a18:	034080e7          	jalr	52(ra) # 80006a48 <__printf>
    80006a1c:	00048513          	mv	a0,s1
    80006a20:	00000097          	auipc	ra,0x0
    80006a24:	028080e7          	jalr	40(ra) # 80006a48 <__printf>
    80006a28:	00001517          	auipc	a0,0x1
    80006a2c:	75050513          	addi	a0,a0,1872 # 80008178 <CONSOLE_STATUS+0x168>
    80006a30:	00000097          	auipc	ra,0x0
    80006a34:	018080e7          	jalr	24(ra) # 80006a48 <__printf>
    80006a38:	00100793          	li	a5,1
    80006a3c:	00004717          	auipc	a4,0x4
    80006a40:	daf72623          	sw	a5,-596(a4) # 8000a7e8 <panicked>
    80006a44:	0000006f          	j	80006a44 <panic+0x58>

0000000080006a48 <__printf>:
    80006a48:	f3010113          	addi	sp,sp,-208
    80006a4c:	08813023          	sd	s0,128(sp)
    80006a50:	07313423          	sd	s3,104(sp)
    80006a54:	09010413          	addi	s0,sp,144
    80006a58:	05813023          	sd	s8,64(sp)
    80006a5c:	08113423          	sd	ra,136(sp)
    80006a60:	06913c23          	sd	s1,120(sp)
    80006a64:	07213823          	sd	s2,112(sp)
    80006a68:	07413023          	sd	s4,96(sp)
    80006a6c:	05513c23          	sd	s5,88(sp)
    80006a70:	05613823          	sd	s6,80(sp)
    80006a74:	05713423          	sd	s7,72(sp)
    80006a78:	03913c23          	sd	s9,56(sp)
    80006a7c:	03a13823          	sd	s10,48(sp)
    80006a80:	03b13423          	sd	s11,40(sp)
    80006a84:	00005317          	auipc	t1,0x5
    80006a88:	05c30313          	addi	t1,t1,92 # 8000bae0 <pr>
    80006a8c:	01832c03          	lw	s8,24(t1)
    80006a90:	00b43423          	sd	a1,8(s0)
    80006a94:	00c43823          	sd	a2,16(s0)
    80006a98:	00d43c23          	sd	a3,24(s0)
    80006a9c:	02e43023          	sd	a4,32(s0)
    80006aa0:	02f43423          	sd	a5,40(s0)
    80006aa4:	03043823          	sd	a6,48(s0)
    80006aa8:	03143c23          	sd	a7,56(s0)
    80006aac:	00050993          	mv	s3,a0
    80006ab0:	4a0c1663          	bnez	s8,80006f5c <__printf+0x514>
    80006ab4:	60098c63          	beqz	s3,800070cc <__printf+0x684>
    80006ab8:	0009c503          	lbu	a0,0(s3)
    80006abc:	00840793          	addi	a5,s0,8
    80006ac0:	f6f43c23          	sd	a5,-136(s0)
    80006ac4:	00000493          	li	s1,0
    80006ac8:	22050063          	beqz	a0,80006ce8 <__printf+0x2a0>
    80006acc:	00002a37          	lui	s4,0x2
    80006ad0:	00018ab7          	lui	s5,0x18
    80006ad4:	000f4b37          	lui	s6,0xf4
    80006ad8:	00989bb7          	lui	s7,0x989
    80006adc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006ae0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006ae4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006ae8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006aec:	00148c9b          	addiw	s9,s1,1
    80006af0:	02500793          	li	a5,37
    80006af4:	01998933          	add	s2,s3,s9
    80006af8:	38f51263          	bne	a0,a5,80006e7c <__printf+0x434>
    80006afc:	00094783          	lbu	a5,0(s2)
    80006b00:	00078c9b          	sext.w	s9,a5
    80006b04:	1e078263          	beqz	a5,80006ce8 <__printf+0x2a0>
    80006b08:	0024849b          	addiw	s1,s1,2
    80006b0c:	07000713          	li	a4,112
    80006b10:	00998933          	add	s2,s3,s1
    80006b14:	38e78a63          	beq	a5,a4,80006ea8 <__printf+0x460>
    80006b18:	20f76863          	bltu	a4,a5,80006d28 <__printf+0x2e0>
    80006b1c:	42a78863          	beq	a5,a0,80006f4c <__printf+0x504>
    80006b20:	06400713          	li	a4,100
    80006b24:	40e79663          	bne	a5,a4,80006f30 <__printf+0x4e8>
    80006b28:	f7843783          	ld	a5,-136(s0)
    80006b2c:	0007a603          	lw	a2,0(a5)
    80006b30:	00878793          	addi	a5,a5,8
    80006b34:	f6f43c23          	sd	a5,-136(s0)
    80006b38:	42064a63          	bltz	a2,80006f6c <__printf+0x524>
    80006b3c:	00a00713          	li	a4,10
    80006b40:	02e677bb          	remuw	a5,a2,a4
    80006b44:	00002d97          	auipc	s11,0x2
    80006b48:	9dcd8d93          	addi	s11,s11,-1572 # 80008520 <digits>
    80006b4c:	00900593          	li	a1,9
    80006b50:	0006051b          	sext.w	a0,a2
    80006b54:	00000c93          	li	s9,0
    80006b58:	02079793          	slli	a5,a5,0x20
    80006b5c:	0207d793          	srli	a5,a5,0x20
    80006b60:	00fd87b3          	add	a5,s11,a5
    80006b64:	0007c783          	lbu	a5,0(a5)
    80006b68:	02e656bb          	divuw	a3,a2,a4
    80006b6c:	f8f40023          	sb	a5,-128(s0)
    80006b70:	14c5d863          	bge	a1,a2,80006cc0 <__printf+0x278>
    80006b74:	06300593          	li	a1,99
    80006b78:	00100c93          	li	s9,1
    80006b7c:	02e6f7bb          	remuw	a5,a3,a4
    80006b80:	02079793          	slli	a5,a5,0x20
    80006b84:	0207d793          	srli	a5,a5,0x20
    80006b88:	00fd87b3          	add	a5,s11,a5
    80006b8c:	0007c783          	lbu	a5,0(a5)
    80006b90:	02e6d73b          	divuw	a4,a3,a4
    80006b94:	f8f400a3          	sb	a5,-127(s0)
    80006b98:	12a5f463          	bgeu	a1,a0,80006cc0 <__printf+0x278>
    80006b9c:	00a00693          	li	a3,10
    80006ba0:	00900593          	li	a1,9
    80006ba4:	02d777bb          	remuw	a5,a4,a3
    80006ba8:	02079793          	slli	a5,a5,0x20
    80006bac:	0207d793          	srli	a5,a5,0x20
    80006bb0:	00fd87b3          	add	a5,s11,a5
    80006bb4:	0007c503          	lbu	a0,0(a5)
    80006bb8:	02d757bb          	divuw	a5,a4,a3
    80006bbc:	f8a40123          	sb	a0,-126(s0)
    80006bc0:	48e5f263          	bgeu	a1,a4,80007044 <__printf+0x5fc>
    80006bc4:	06300513          	li	a0,99
    80006bc8:	02d7f5bb          	remuw	a1,a5,a3
    80006bcc:	02059593          	slli	a1,a1,0x20
    80006bd0:	0205d593          	srli	a1,a1,0x20
    80006bd4:	00bd85b3          	add	a1,s11,a1
    80006bd8:	0005c583          	lbu	a1,0(a1)
    80006bdc:	02d7d7bb          	divuw	a5,a5,a3
    80006be0:	f8b401a3          	sb	a1,-125(s0)
    80006be4:	48e57263          	bgeu	a0,a4,80007068 <__printf+0x620>
    80006be8:	3e700513          	li	a0,999
    80006bec:	02d7f5bb          	remuw	a1,a5,a3
    80006bf0:	02059593          	slli	a1,a1,0x20
    80006bf4:	0205d593          	srli	a1,a1,0x20
    80006bf8:	00bd85b3          	add	a1,s11,a1
    80006bfc:	0005c583          	lbu	a1,0(a1)
    80006c00:	02d7d7bb          	divuw	a5,a5,a3
    80006c04:	f8b40223          	sb	a1,-124(s0)
    80006c08:	46e57663          	bgeu	a0,a4,80007074 <__printf+0x62c>
    80006c0c:	02d7f5bb          	remuw	a1,a5,a3
    80006c10:	02059593          	slli	a1,a1,0x20
    80006c14:	0205d593          	srli	a1,a1,0x20
    80006c18:	00bd85b3          	add	a1,s11,a1
    80006c1c:	0005c583          	lbu	a1,0(a1)
    80006c20:	02d7d7bb          	divuw	a5,a5,a3
    80006c24:	f8b402a3          	sb	a1,-123(s0)
    80006c28:	46ea7863          	bgeu	s4,a4,80007098 <__printf+0x650>
    80006c2c:	02d7f5bb          	remuw	a1,a5,a3
    80006c30:	02059593          	slli	a1,a1,0x20
    80006c34:	0205d593          	srli	a1,a1,0x20
    80006c38:	00bd85b3          	add	a1,s11,a1
    80006c3c:	0005c583          	lbu	a1,0(a1)
    80006c40:	02d7d7bb          	divuw	a5,a5,a3
    80006c44:	f8b40323          	sb	a1,-122(s0)
    80006c48:	3eeaf863          	bgeu	s5,a4,80007038 <__printf+0x5f0>
    80006c4c:	02d7f5bb          	remuw	a1,a5,a3
    80006c50:	02059593          	slli	a1,a1,0x20
    80006c54:	0205d593          	srli	a1,a1,0x20
    80006c58:	00bd85b3          	add	a1,s11,a1
    80006c5c:	0005c583          	lbu	a1,0(a1)
    80006c60:	02d7d7bb          	divuw	a5,a5,a3
    80006c64:	f8b403a3          	sb	a1,-121(s0)
    80006c68:	42eb7e63          	bgeu	s6,a4,800070a4 <__printf+0x65c>
    80006c6c:	02d7f5bb          	remuw	a1,a5,a3
    80006c70:	02059593          	slli	a1,a1,0x20
    80006c74:	0205d593          	srli	a1,a1,0x20
    80006c78:	00bd85b3          	add	a1,s11,a1
    80006c7c:	0005c583          	lbu	a1,0(a1)
    80006c80:	02d7d7bb          	divuw	a5,a5,a3
    80006c84:	f8b40423          	sb	a1,-120(s0)
    80006c88:	42ebfc63          	bgeu	s7,a4,800070c0 <__printf+0x678>
    80006c8c:	02079793          	slli	a5,a5,0x20
    80006c90:	0207d793          	srli	a5,a5,0x20
    80006c94:	00fd8db3          	add	s11,s11,a5
    80006c98:	000dc703          	lbu	a4,0(s11)
    80006c9c:	00a00793          	li	a5,10
    80006ca0:	00900c93          	li	s9,9
    80006ca4:	f8e404a3          	sb	a4,-119(s0)
    80006ca8:	00065c63          	bgez	a2,80006cc0 <__printf+0x278>
    80006cac:	f9040713          	addi	a4,s0,-112
    80006cb0:	00f70733          	add	a4,a4,a5
    80006cb4:	02d00693          	li	a3,45
    80006cb8:	fed70823          	sb	a3,-16(a4)
    80006cbc:	00078c93          	mv	s9,a5
    80006cc0:	f8040793          	addi	a5,s0,-128
    80006cc4:	01978cb3          	add	s9,a5,s9
    80006cc8:	f7f40d13          	addi	s10,s0,-129
    80006ccc:	000cc503          	lbu	a0,0(s9)
    80006cd0:	fffc8c93          	addi	s9,s9,-1
    80006cd4:	00000097          	auipc	ra,0x0
    80006cd8:	b90080e7          	jalr	-1136(ra) # 80006864 <consputc>
    80006cdc:	ffac98e3          	bne	s9,s10,80006ccc <__printf+0x284>
    80006ce0:	00094503          	lbu	a0,0(s2)
    80006ce4:	e00514e3          	bnez	a0,80006aec <__printf+0xa4>
    80006ce8:	1a0c1663          	bnez	s8,80006e94 <__printf+0x44c>
    80006cec:	08813083          	ld	ra,136(sp)
    80006cf0:	08013403          	ld	s0,128(sp)
    80006cf4:	07813483          	ld	s1,120(sp)
    80006cf8:	07013903          	ld	s2,112(sp)
    80006cfc:	06813983          	ld	s3,104(sp)
    80006d00:	06013a03          	ld	s4,96(sp)
    80006d04:	05813a83          	ld	s5,88(sp)
    80006d08:	05013b03          	ld	s6,80(sp)
    80006d0c:	04813b83          	ld	s7,72(sp)
    80006d10:	04013c03          	ld	s8,64(sp)
    80006d14:	03813c83          	ld	s9,56(sp)
    80006d18:	03013d03          	ld	s10,48(sp)
    80006d1c:	02813d83          	ld	s11,40(sp)
    80006d20:	0d010113          	addi	sp,sp,208
    80006d24:	00008067          	ret
    80006d28:	07300713          	li	a4,115
    80006d2c:	1ce78a63          	beq	a5,a4,80006f00 <__printf+0x4b8>
    80006d30:	07800713          	li	a4,120
    80006d34:	1ee79e63          	bne	a5,a4,80006f30 <__printf+0x4e8>
    80006d38:	f7843783          	ld	a5,-136(s0)
    80006d3c:	0007a703          	lw	a4,0(a5)
    80006d40:	00878793          	addi	a5,a5,8
    80006d44:	f6f43c23          	sd	a5,-136(s0)
    80006d48:	28074263          	bltz	a4,80006fcc <__printf+0x584>
    80006d4c:	00001d97          	auipc	s11,0x1
    80006d50:	7d4d8d93          	addi	s11,s11,2004 # 80008520 <digits>
    80006d54:	00f77793          	andi	a5,a4,15
    80006d58:	00fd87b3          	add	a5,s11,a5
    80006d5c:	0007c683          	lbu	a3,0(a5)
    80006d60:	00f00613          	li	a2,15
    80006d64:	0007079b          	sext.w	a5,a4
    80006d68:	f8d40023          	sb	a3,-128(s0)
    80006d6c:	0047559b          	srliw	a1,a4,0x4
    80006d70:	0047569b          	srliw	a3,a4,0x4
    80006d74:	00000c93          	li	s9,0
    80006d78:	0ee65063          	bge	a2,a4,80006e58 <__printf+0x410>
    80006d7c:	00f6f693          	andi	a3,a3,15
    80006d80:	00dd86b3          	add	a3,s11,a3
    80006d84:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006d88:	0087d79b          	srliw	a5,a5,0x8
    80006d8c:	00100c93          	li	s9,1
    80006d90:	f8d400a3          	sb	a3,-127(s0)
    80006d94:	0cb67263          	bgeu	a2,a1,80006e58 <__printf+0x410>
    80006d98:	00f7f693          	andi	a3,a5,15
    80006d9c:	00dd86b3          	add	a3,s11,a3
    80006da0:	0006c583          	lbu	a1,0(a3)
    80006da4:	00f00613          	li	a2,15
    80006da8:	0047d69b          	srliw	a3,a5,0x4
    80006dac:	f8b40123          	sb	a1,-126(s0)
    80006db0:	0047d593          	srli	a1,a5,0x4
    80006db4:	28f67e63          	bgeu	a2,a5,80007050 <__printf+0x608>
    80006db8:	00f6f693          	andi	a3,a3,15
    80006dbc:	00dd86b3          	add	a3,s11,a3
    80006dc0:	0006c503          	lbu	a0,0(a3)
    80006dc4:	0087d813          	srli	a6,a5,0x8
    80006dc8:	0087d69b          	srliw	a3,a5,0x8
    80006dcc:	f8a401a3          	sb	a0,-125(s0)
    80006dd0:	28b67663          	bgeu	a2,a1,8000705c <__printf+0x614>
    80006dd4:	00f6f693          	andi	a3,a3,15
    80006dd8:	00dd86b3          	add	a3,s11,a3
    80006ddc:	0006c583          	lbu	a1,0(a3)
    80006de0:	00c7d513          	srli	a0,a5,0xc
    80006de4:	00c7d69b          	srliw	a3,a5,0xc
    80006de8:	f8b40223          	sb	a1,-124(s0)
    80006dec:	29067a63          	bgeu	a2,a6,80007080 <__printf+0x638>
    80006df0:	00f6f693          	andi	a3,a3,15
    80006df4:	00dd86b3          	add	a3,s11,a3
    80006df8:	0006c583          	lbu	a1,0(a3)
    80006dfc:	0107d813          	srli	a6,a5,0x10
    80006e00:	0107d69b          	srliw	a3,a5,0x10
    80006e04:	f8b402a3          	sb	a1,-123(s0)
    80006e08:	28a67263          	bgeu	a2,a0,8000708c <__printf+0x644>
    80006e0c:	00f6f693          	andi	a3,a3,15
    80006e10:	00dd86b3          	add	a3,s11,a3
    80006e14:	0006c683          	lbu	a3,0(a3)
    80006e18:	0147d79b          	srliw	a5,a5,0x14
    80006e1c:	f8d40323          	sb	a3,-122(s0)
    80006e20:	21067663          	bgeu	a2,a6,8000702c <__printf+0x5e4>
    80006e24:	02079793          	slli	a5,a5,0x20
    80006e28:	0207d793          	srli	a5,a5,0x20
    80006e2c:	00fd8db3          	add	s11,s11,a5
    80006e30:	000dc683          	lbu	a3,0(s11)
    80006e34:	00800793          	li	a5,8
    80006e38:	00700c93          	li	s9,7
    80006e3c:	f8d403a3          	sb	a3,-121(s0)
    80006e40:	00075c63          	bgez	a4,80006e58 <__printf+0x410>
    80006e44:	f9040713          	addi	a4,s0,-112
    80006e48:	00f70733          	add	a4,a4,a5
    80006e4c:	02d00693          	li	a3,45
    80006e50:	fed70823          	sb	a3,-16(a4)
    80006e54:	00078c93          	mv	s9,a5
    80006e58:	f8040793          	addi	a5,s0,-128
    80006e5c:	01978cb3          	add	s9,a5,s9
    80006e60:	f7f40d13          	addi	s10,s0,-129
    80006e64:	000cc503          	lbu	a0,0(s9)
    80006e68:	fffc8c93          	addi	s9,s9,-1
    80006e6c:	00000097          	auipc	ra,0x0
    80006e70:	9f8080e7          	jalr	-1544(ra) # 80006864 <consputc>
    80006e74:	ff9d18e3          	bne	s10,s9,80006e64 <__printf+0x41c>
    80006e78:	0100006f          	j	80006e88 <__printf+0x440>
    80006e7c:	00000097          	auipc	ra,0x0
    80006e80:	9e8080e7          	jalr	-1560(ra) # 80006864 <consputc>
    80006e84:	000c8493          	mv	s1,s9
    80006e88:	00094503          	lbu	a0,0(s2)
    80006e8c:	c60510e3          	bnez	a0,80006aec <__printf+0xa4>
    80006e90:	e40c0ee3          	beqz	s8,80006cec <__printf+0x2a4>
    80006e94:	00005517          	auipc	a0,0x5
    80006e98:	c4c50513          	addi	a0,a0,-948 # 8000bae0 <pr>
    80006e9c:	00001097          	auipc	ra,0x1
    80006ea0:	94c080e7          	jalr	-1716(ra) # 800077e8 <release>
    80006ea4:	e49ff06f          	j	80006cec <__printf+0x2a4>
    80006ea8:	f7843783          	ld	a5,-136(s0)
    80006eac:	03000513          	li	a0,48
    80006eb0:	01000d13          	li	s10,16
    80006eb4:	00878713          	addi	a4,a5,8
    80006eb8:	0007bc83          	ld	s9,0(a5)
    80006ebc:	f6e43c23          	sd	a4,-136(s0)
    80006ec0:	00000097          	auipc	ra,0x0
    80006ec4:	9a4080e7          	jalr	-1628(ra) # 80006864 <consputc>
    80006ec8:	07800513          	li	a0,120
    80006ecc:	00000097          	auipc	ra,0x0
    80006ed0:	998080e7          	jalr	-1640(ra) # 80006864 <consputc>
    80006ed4:	00001d97          	auipc	s11,0x1
    80006ed8:	64cd8d93          	addi	s11,s11,1612 # 80008520 <digits>
    80006edc:	03ccd793          	srli	a5,s9,0x3c
    80006ee0:	00fd87b3          	add	a5,s11,a5
    80006ee4:	0007c503          	lbu	a0,0(a5)
    80006ee8:	fffd0d1b          	addiw	s10,s10,-1
    80006eec:	004c9c93          	slli	s9,s9,0x4
    80006ef0:	00000097          	auipc	ra,0x0
    80006ef4:	974080e7          	jalr	-1676(ra) # 80006864 <consputc>
    80006ef8:	fe0d12e3          	bnez	s10,80006edc <__printf+0x494>
    80006efc:	f8dff06f          	j	80006e88 <__printf+0x440>
    80006f00:	f7843783          	ld	a5,-136(s0)
    80006f04:	0007bc83          	ld	s9,0(a5)
    80006f08:	00878793          	addi	a5,a5,8
    80006f0c:	f6f43c23          	sd	a5,-136(s0)
    80006f10:	000c9a63          	bnez	s9,80006f24 <__printf+0x4dc>
    80006f14:	1080006f          	j	8000701c <__printf+0x5d4>
    80006f18:	001c8c93          	addi	s9,s9,1
    80006f1c:	00000097          	auipc	ra,0x0
    80006f20:	948080e7          	jalr	-1720(ra) # 80006864 <consputc>
    80006f24:	000cc503          	lbu	a0,0(s9)
    80006f28:	fe0518e3          	bnez	a0,80006f18 <__printf+0x4d0>
    80006f2c:	f5dff06f          	j	80006e88 <__printf+0x440>
    80006f30:	02500513          	li	a0,37
    80006f34:	00000097          	auipc	ra,0x0
    80006f38:	930080e7          	jalr	-1744(ra) # 80006864 <consputc>
    80006f3c:	000c8513          	mv	a0,s9
    80006f40:	00000097          	auipc	ra,0x0
    80006f44:	924080e7          	jalr	-1756(ra) # 80006864 <consputc>
    80006f48:	f41ff06f          	j	80006e88 <__printf+0x440>
    80006f4c:	02500513          	li	a0,37
    80006f50:	00000097          	auipc	ra,0x0
    80006f54:	914080e7          	jalr	-1772(ra) # 80006864 <consputc>
    80006f58:	f31ff06f          	j	80006e88 <__printf+0x440>
    80006f5c:	00030513          	mv	a0,t1
    80006f60:	00000097          	auipc	ra,0x0
    80006f64:	7bc080e7          	jalr	1980(ra) # 8000771c <acquire>
    80006f68:	b4dff06f          	j	80006ab4 <__printf+0x6c>
    80006f6c:	40c0053b          	negw	a0,a2
    80006f70:	00a00713          	li	a4,10
    80006f74:	02e576bb          	remuw	a3,a0,a4
    80006f78:	00001d97          	auipc	s11,0x1
    80006f7c:	5a8d8d93          	addi	s11,s11,1448 # 80008520 <digits>
    80006f80:	ff700593          	li	a1,-9
    80006f84:	02069693          	slli	a3,a3,0x20
    80006f88:	0206d693          	srli	a3,a3,0x20
    80006f8c:	00dd86b3          	add	a3,s11,a3
    80006f90:	0006c683          	lbu	a3,0(a3)
    80006f94:	02e557bb          	divuw	a5,a0,a4
    80006f98:	f8d40023          	sb	a3,-128(s0)
    80006f9c:	10b65e63          	bge	a2,a1,800070b8 <__printf+0x670>
    80006fa0:	06300593          	li	a1,99
    80006fa4:	02e7f6bb          	remuw	a3,a5,a4
    80006fa8:	02069693          	slli	a3,a3,0x20
    80006fac:	0206d693          	srli	a3,a3,0x20
    80006fb0:	00dd86b3          	add	a3,s11,a3
    80006fb4:	0006c683          	lbu	a3,0(a3)
    80006fb8:	02e7d73b          	divuw	a4,a5,a4
    80006fbc:	00200793          	li	a5,2
    80006fc0:	f8d400a3          	sb	a3,-127(s0)
    80006fc4:	bca5ece3          	bltu	a1,a0,80006b9c <__printf+0x154>
    80006fc8:	ce5ff06f          	j	80006cac <__printf+0x264>
    80006fcc:	40e007bb          	negw	a5,a4
    80006fd0:	00001d97          	auipc	s11,0x1
    80006fd4:	550d8d93          	addi	s11,s11,1360 # 80008520 <digits>
    80006fd8:	00f7f693          	andi	a3,a5,15
    80006fdc:	00dd86b3          	add	a3,s11,a3
    80006fe0:	0006c583          	lbu	a1,0(a3)
    80006fe4:	ff100613          	li	a2,-15
    80006fe8:	0047d69b          	srliw	a3,a5,0x4
    80006fec:	f8b40023          	sb	a1,-128(s0)
    80006ff0:	0047d59b          	srliw	a1,a5,0x4
    80006ff4:	0ac75e63          	bge	a4,a2,800070b0 <__printf+0x668>
    80006ff8:	00f6f693          	andi	a3,a3,15
    80006ffc:	00dd86b3          	add	a3,s11,a3
    80007000:	0006c603          	lbu	a2,0(a3)
    80007004:	00f00693          	li	a3,15
    80007008:	0087d79b          	srliw	a5,a5,0x8
    8000700c:	f8c400a3          	sb	a2,-127(s0)
    80007010:	d8b6e4e3          	bltu	a3,a1,80006d98 <__printf+0x350>
    80007014:	00200793          	li	a5,2
    80007018:	e2dff06f          	j	80006e44 <__printf+0x3fc>
    8000701c:	00001c97          	auipc	s9,0x1
    80007020:	4e4c8c93          	addi	s9,s9,1252 # 80008500 <_ZL6digits+0x160>
    80007024:	02800513          	li	a0,40
    80007028:	ef1ff06f          	j	80006f18 <__printf+0x4d0>
    8000702c:	00700793          	li	a5,7
    80007030:	00600c93          	li	s9,6
    80007034:	e0dff06f          	j	80006e40 <__printf+0x3f8>
    80007038:	00700793          	li	a5,7
    8000703c:	00600c93          	li	s9,6
    80007040:	c69ff06f          	j	80006ca8 <__printf+0x260>
    80007044:	00300793          	li	a5,3
    80007048:	00200c93          	li	s9,2
    8000704c:	c5dff06f          	j	80006ca8 <__printf+0x260>
    80007050:	00300793          	li	a5,3
    80007054:	00200c93          	li	s9,2
    80007058:	de9ff06f          	j	80006e40 <__printf+0x3f8>
    8000705c:	00400793          	li	a5,4
    80007060:	00300c93          	li	s9,3
    80007064:	dddff06f          	j	80006e40 <__printf+0x3f8>
    80007068:	00400793          	li	a5,4
    8000706c:	00300c93          	li	s9,3
    80007070:	c39ff06f          	j	80006ca8 <__printf+0x260>
    80007074:	00500793          	li	a5,5
    80007078:	00400c93          	li	s9,4
    8000707c:	c2dff06f          	j	80006ca8 <__printf+0x260>
    80007080:	00500793          	li	a5,5
    80007084:	00400c93          	li	s9,4
    80007088:	db9ff06f          	j	80006e40 <__printf+0x3f8>
    8000708c:	00600793          	li	a5,6
    80007090:	00500c93          	li	s9,5
    80007094:	dadff06f          	j	80006e40 <__printf+0x3f8>
    80007098:	00600793          	li	a5,6
    8000709c:	00500c93          	li	s9,5
    800070a0:	c09ff06f          	j	80006ca8 <__printf+0x260>
    800070a4:	00800793          	li	a5,8
    800070a8:	00700c93          	li	s9,7
    800070ac:	bfdff06f          	j	80006ca8 <__printf+0x260>
    800070b0:	00100793          	li	a5,1
    800070b4:	d91ff06f          	j	80006e44 <__printf+0x3fc>
    800070b8:	00100793          	li	a5,1
    800070bc:	bf1ff06f          	j	80006cac <__printf+0x264>
    800070c0:	00900793          	li	a5,9
    800070c4:	00800c93          	li	s9,8
    800070c8:	be1ff06f          	j	80006ca8 <__printf+0x260>
    800070cc:	00001517          	auipc	a0,0x1
    800070d0:	43c50513          	addi	a0,a0,1084 # 80008508 <_ZL6digits+0x168>
    800070d4:	00000097          	auipc	ra,0x0
    800070d8:	918080e7          	jalr	-1768(ra) # 800069ec <panic>

00000000800070dc <printfinit>:
    800070dc:	fe010113          	addi	sp,sp,-32
    800070e0:	00813823          	sd	s0,16(sp)
    800070e4:	00913423          	sd	s1,8(sp)
    800070e8:	00113c23          	sd	ra,24(sp)
    800070ec:	02010413          	addi	s0,sp,32
    800070f0:	00005497          	auipc	s1,0x5
    800070f4:	9f048493          	addi	s1,s1,-1552 # 8000bae0 <pr>
    800070f8:	00048513          	mv	a0,s1
    800070fc:	00001597          	auipc	a1,0x1
    80007100:	41c58593          	addi	a1,a1,1052 # 80008518 <_ZL6digits+0x178>
    80007104:	00000097          	auipc	ra,0x0
    80007108:	5f4080e7          	jalr	1524(ra) # 800076f8 <initlock>
    8000710c:	01813083          	ld	ra,24(sp)
    80007110:	01013403          	ld	s0,16(sp)
    80007114:	0004ac23          	sw	zero,24(s1)
    80007118:	00813483          	ld	s1,8(sp)
    8000711c:	02010113          	addi	sp,sp,32
    80007120:	00008067          	ret

0000000080007124 <uartinit>:
    80007124:	ff010113          	addi	sp,sp,-16
    80007128:	00813423          	sd	s0,8(sp)
    8000712c:	01010413          	addi	s0,sp,16
    80007130:	100007b7          	lui	a5,0x10000
    80007134:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007138:	f8000713          	li	a4,-128
    8000713c:	00e781a3          	sb	a4,3(a5)
    80007140:	00300713          	li	a4,3
    80007144:	00e78023          	sb	a4,0(a5)
    80007148:	000780a3          	sb	zero,1(a5)
    8000714c:	00e781a3          	sb	a4,3(a5)
    80007150:	00700693          	li	a3,7
    80007154:	00d78123          	sb	a3,2(a5)
    80007158:	00e780a3          	sb	a4,1(a5)
    8000715c:	00813403          	ld	s0,8(sp)
    80007160:	01010113          	addi	sp,sp,16
    80007164:	00008067          	ret

0000000080007168 <uartputc>:
    80007168:	00003797          	auipc	a5,0x3
    8000716c:	6807a783          	lw	a5,1664(a5) # 8000a7e8 <panicked>
    80007170:	00078463          	beqz	a5,80007178 <uartputc+0x10>
    80007174:	0000006f          	j	80007174 <uartputc+0xc>
    80007178:	fd010113          	addi	sp,sp,-48
    8000717c:	02813023          	sd	s0,32(sp)
    80007180:	00913c23          	sd	s1,24(sp)
    80007184:	01213823          	sd	s2,16(sp)
    80007188:	01313423          	sd	s3,8(sp)
    8000718c:	02113423          	sd	ra,40(sp)
    80007190:	03010413          	addi	s0,sp,48
    80007194:	00003917          	auipc	s2,0x3
    80007198:	65c90913          	addi	s2,s2,1628 # 8000a7f0 <uart_tx_r>
    8000719c:	00093783          	ld	a5,0(s2)
    800071a0:	00003497          	auipc	s1,0x3
    800071a4:	65848493          	addi	s1,s1,1624 # 8000a7f8 <uart_tx_w>
    800071a8:	0004b703          	ld	a4,0(s1)
    800071ac:	02078693          	addi	a3,a5,32
    800071b0:	00050993          	mv	s3,a0
    800071b4:	02e69c63          	bne	a3,a4,800071ec <uartputc+0x84>
    800071b8:	00001097          	auipc	ra,0x1
    800071bc:	834080e7          	jalr	-1996(ra) # 800079ec <push_on>
    800071c0:	00093783          	ld	a5,0(s2)
    800071c4:	0004b703          	ld	a4,0(s1)
    800071c8:	02078793          	addi	a5,a5,32
    800071cc:	00e79463          	bne	a5,a4,800071d4 <uartputc+0x6c>
    800071d0:	0000006f          	j	800071d0 <uartputc+0x68>
    800071d4:	00001097          	auipc	ra,0x1
    800071d8:	88c080e7          	jalr	-1908(ra) # 80007a60 <pop_on>
    800071dc:	00093783          	ld	a5,0(s2)
    800071e0:	0004b703          	ld	a4,0(s1)
    800071e4:	02078693          	addi	a3,a5,32
    800071e8:	fce688e3          	beq	a3,a4,800071b8 <uartputc+0x50>
    800071ec:	01f77693          	andi	a3,a4,31
    800071f0:	00005597          	auipc	a1,0x5
    800071f4:	91058593          	addi	a1,a1,-1776 # 8000bb00 <uart_tx_buf>
    800071f8:	00d586b3          	add	a3,a1,a3
    800071fc:	00170713          	addi	a4,a4,1
    80007200:	01368023          	sb	s3,0(a3)
    80007204:	00e4b023          	sd	a4,0(s1)
    80007208:	10000637          	lui	a2,0x10000
    8000720c:	02f71063          	bne	a4,a5,8000722c <uartputc+0xc4>
    80007210:	0340006f          	j	80007244 <uartputc+0xdc>
    80007214:	00074703          	lbu	a4,0(a4)
    80007218:	00f93023          	sd	a5,0(s2)
    8000721c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007220:	00093783          	ld	a5,0(s2)
    80007224:	0004b703          	ld	a4,0(s1)
    80007228:	00f70e63          	beq	a4,a5,80007244 <uartputc+0xdc>
    8000722c:	00564683          	lbu	a3,5(a2)
    80007230:	01f7f713          	andi	a4,a5,31
    80007234:	00e58733          	add	a4,a1,a4
    80007238:	0206f693          	andi	a3,a3,32
    8000723c:	00178793          	addi	a5,a5,1
    80007240:	fc069ae3          	bnez	a3,80007214 <uartputc+0xac>
    80007244:	02813083          	ld	ra,40(sp)
    80007248:	02013403          	ld	s0,32(sp)
    8000724c:	01813483          	ld	s1,24(sp)
    80007250:	01013903          	ld	s2,16(sp)
    80007254:	00813983          	ld	s3,8(sp)
    80007258:	03010113          	addi	sp,sp,48
    8000725c:	00008067          	ret

0000000080007260 <uartputc_sync>:
    80007260:	ff010113          	addi	sp,sp,-16
    80007264:	00813423          	sd	s0,8(sp)
    80007268:	01010413          	addi	s0,sp,16
    8000726c:	00003717          	auipc	a4,0x3
    80007270:	57c72703          	lw	a4,1404(a4) # 8000a7e8 <panicked>
    80007274:	02071663          	bnez	a4,800072a0 <uartputc_sync+0x40>
    80007278:	00050793          	mv	a5,a0
    8000727c:	100006b7          	lui	a3,0x10000
    80007280:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007284:	02077713          	andi	a4,a4,32
    80007288:	fe070ce3          	beqz	a4,80007280 <uartputc_sync+0x20>
    8000728c:	0ff7f793          	andi	a5,a5,255
    80007290:	00f68023          	sb	a5,0(a3)
    80007294:	00813403          	ld	s0,8(sp)
    80007298:	01010113          	addi	sp,sp,16
    8000729c:	00008067          	ret
    800072a0:	0000006f          	j	800072a0 <uartputc_sync+0x40>

00000000800072a4 <uartstart>:
    800072a4:	ff010113          	addi	sp,sp,-16
    800072a8:	00813423          	sd	s0,8(sp)
    800072ac:	01010413          	addi	s0,sp,16
    800072b0:	00003617          	auipc	a2,0x3
    800072b4:	54060613          	addi	a2,a2,1344 # 8000a7f0 <uart_tx_r>
    800072b8:	00003517          	auipc	a0,0x3
    800072bc:	54050513          	addi	a0,a0,1344 # 8000a7f8 <uart_tx_w>
    800072c0:	00063783          	ld	a5,0(a2)
    800072c4:	00053703          	ld	a4,0(a0)
    800072c8:	04f70263          	beq	a4,a5,8000730c <uartstart+0x68>
    800072cc:	100005b7          	lui	a1,0x10000
    800072d0:	00005817          	auipc	a6,0x5
    800072d4:	83080813          	addi	a6,a6,-2000 # 8000bb00 <uart_tx_buf>
    800072d8:	01c0006f          	j	800072f4 <uartstart+0x50>
    800072dc:	0006c703          	lbu	a4,0(a3)
    800072e0:	00f63023          	sd	a5,0(a2)
    800072e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800072e8:	00063783          	ld	a5,0(a2)
    800072ec:	00053703          	ld	a4,0(a0)
    800072f0:	00f70e63          	beq	a4,a5,8000730c <uartstart+0x68>
    800072f4:	01f7f713          	andi	a4,a5,31
    800072f8:	00e806b3          	add	a3,a6,a4
    800072fc:	0055c703          	lbu	a4,5(a1)
    80007300:	00178793          	addi	a5,a5,1
    80007304:	02077713          	andi	a4,a4,32
    80007308:	fc071ae3          	bnez	a4,800072dc <uartstart+0x38>
    8000730c:	00813403          	ld	s0,8(sp)
    80007310:	01010113          	addi	sp,sp,16
    80007314:	00008067          	ret

0000000080007318 <uartgetc>:
    80007318:	ff010113          	addi	sp,sp,-16
    8000731c:	00813423          	sd	s0,8(sp)
    80007320:	01010413          	addi	s0,sp,16
    80007324:	10000737          	lui	a4,0x10000
    80007328:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000732c:	0017f793          	andi	a5,a5,1
    80007330:	00078c63          	beqz	a5,80007348 <uartgetc+0x30>
    80007334:	00074503          	lbu	a0,0(a4)
    80007338:	0ff57513          	andi	a0,a0,255
    8000733c:	00813403          	ld	s0,8(sp)
    80007340:	01010113          	addi	sp,sp,16
    80007344:	00008067          	ret
    80007348:	fff00513          	li	a0,-1
    8000734c:	ff1ff06f          	j	8000733c <uartgetc+0x24>

0000000080007350 <uartintr>:
    80007350:	100007b7          	lui	a5,0x10000
    80007354:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007358:	0017f793          	andi	a5,a5,1
    8000735c:	0a078463          	beqz	a5,80007404 <uartintr+0xb4>
    80007360:	fe010113          	addi	sp,sp,-32
    80007364:	00813823          	sd	s0,16(sp)
    80007368:	00913423          	sd	s1,8(sp)
    8000736c:	00113c23          	sd	ra,24(sp)
    80007370:	02010413          	addi	s0,sp,32
    80007374:	100004b7          	lui	s1,0x10000
    80007378:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000737c:	0ff57513          	andi	a0,a0,255
    80007380:	fffff097          	auipc	ra,0xfffff
    80007384:	534080e7          	jalr	1332(ra) # 800068b4 <consoleintr>
    80007388:	0054c783          	lbu	a5,5(s1)
    8000738c:	0017f793          	andi	a5,a5,1
    80007390:	fe0794e3          	bnez	a5,80007378 <uartintr+0x28>
    80007394:	00003617          	auipc	a2,0x3
    80007398:	45c60613          	addi	a2,a2,1116 # 8000a7f0 <uart_tx_r>
    8000739c:	00003517          	auipc	a0,0x3
    800073a0:	45c50513          	addi	a0,a0,1116 # 8000a7f8 <uart_tx_w>
    800073a4:	00063783          	ld	a5,0(a2)
    800073a8:	00053703          	ld	a4,0(a0)
    800073ac:	04f70263          	beq	a4,a5,800073f0 <uartintr+0xa0>
    800073b0:	100005b7          	lui	a1,0x10000
    800073b4:	00004817          	auipc	a6,0x4
    800073b8:	74c80813          	addi	a6,a6,1868 # 8000bb00 <uart_tx_buf>
    800073bc:	01c0006f          	j	800073d8 <uartintr+0x88>
    800073c0:	0006c703          	lbu	a4,0(a3)
    800073c4:	00f63023          	sd	a5,0(a2)
    800073c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800073cc:	00063783          	ld	a5,0(a2)
    800073d0:	00053703          	ld	a4,0(a0)
    800073d4:	00f70e63          	beq	a4,a5,800073f0 <uartintr+0xa0>
    800073d8:	01f7f713          	andi	a4,a5,31
    800073dc:	00e806b3          	add	a3,a6,a4
    800073e0:	0055c703          	lbu	a4,5(a1)
    800073e4:	00178793          	addi	a5,a5,1
    800073e8:	02077713          	andi	a4,a4,32
    800073ec:	fc071ae3          	bnez	a4,800073c0 <uartintr+0x70>
    800073f0:	01813083          	ld	ra,24(sp)
    800073f4:	01013403          	ld	s0,16(sp)
    800073f8:	00813483          	ld	s1,8(sp)
    800073fc:	02010113          	addi	sp,sp,32
    80007400:	00008067          	ret
    80007404:	00003617          	auipc	a2,0x3
    80007408:	3ec60613          	addi	a2,a2,1004 # 8000a7f0 <uart_tx_r>
    8000740c:	00003517          	auipc	a0,0x3
    80007410:	3ec50513          	addi	a0,a0,1004 # 8000a7f8 <uart_tx_w>
    80007414:	00063783          	ld	a5,0(a2)
    80007418:	00053703          	ld	a4,0(a0)
    8000741c:	04f70263          	beq	a4,a5,80007460 <uartintr+0x110>
    80007420:	100005b7          	lui	a1,0x10000
    80007424:	00004817          	auipc	a6,0x4
    80007428:	6dc80813          	addi	a6,a6,1756 # 8000bb00 <uart_tx_buf>
    8000742c:	01c0006f          	j	80007448 <uartintr+0xf8>
    80007430:	0006c703          	lbu	a4,0(a3)
    80007434:	00f63023          	sd	a5,0(a2)
    80007438:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000743c:	00063783          	ld	a5,0(a2)
    80007440:	00053703          	ld	a4,0(a0)
    80007444:	02f70063          	beq	a4,a5,80007464 <uartintr+0x114>
    80007448:	01f7f713          	andi	a4,a5,31
    8000744c:	00e806b3          	add	a3,a6,a4
    80007450:	0055c703          	lbu	a4,5(a1)
    80007454:	00178793          	addi	a5,a5,1
    80007458:	02077713          	andi	a4,a4,32
    8000745c:	fc071ae3          	bnez	a4,80007430 <uartintr+0xe0>
    80007460:	00008067          	ret
    80007464:	00008067          	ret

0000000080007468 <kinit>:
    80007468:	fc010113          	addi	sp,sp,-64
    8000746c:	02913423          	sd	s1,40(sp)
    80007470:	fffff7b7          	lui	a5,0xfffff
    80007474:	00005497          	auipc	s1,0x5
    80007478:	6ab48493          	addi	s1,s1,1707 # 8000cb1f <end+0xfff>
    8000747c:	02813823          	sd	s0,48(sp)
    80007480:	01313c23          	sd	s3,24(sp)
    80007484:	00f4f4b3          	and	s1,s1,a5
    80007488:	02113c23          	sd	ra,56(sp)
    8000748c:	03213023          	sd	s2,32(sp)
    80007490:	01413823          	sd	s4,16(sp)
    80007494:	01513423          	sd	s5,8(sp)
    80007498:	04010413          	addi	s0,sp,64
    8000749c:	000017b7          	lui	a5,0x1
    800074a0:	01100993          	li	s3,17
    800074a4:	00f487b3          	add	a5,s1,a5
    800074a8:	01b99993          	slli	s3,s3,0x1b
    800074ac:	06f9e063          	bltu	s3,a5,8000750c <kinit+0xa4>
    800074b0:	00004a97          	auipc	s5,0x4
    800074b4:	670a8a93          	addi	s5,s5,1648 # 8000bb20 <end>
    800074b8:	0754ec63          	bltu	s1,s5,80007530 <kinit+0xc8>
    800074bc:	0734fa63          	bgeu	s1,s3,80007530 <kinit+0xc8>
    800074c0:	00088a37          	lui	s4,0x88
    800074c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800074c8:	00003917          	auipc	s2,0x3
    800074cc:	33890913          	addi	s2,s2,824 # 8000a800 <kmem>
    800074d0:	00ca1a13          	slli	s4,s4,0xc
    800074d4:	0140006f          	j	800074e8 <kinit+0x80>
    800074d8:	000017b7          	lui	a5,0x1
    800074dc:	00f484b3          	add	s1,s1,a5
    800074e0:	0554e863          	bltu	s1,s5,80007530 <kinit+0xc8>
    800074e4:	0534f663          	bgeu	s1,s3,80007530 <kinit+0xc8>
    800074e8:	00001637          	lui	a2,0x1
    800074ec:	00100593          	li	a1,1
    800074f0:	00048513          	mv	a0,s1
    800074f4:	00000097          	auipc	ra,0x0
    800074f8:	5e4080e7          	jalr	1508(ra) # 80007ad8 <__memset>
    800074fc:	00093783          	ld	a5,0(s2)
    80007500:	00f4b023          	sd	a5,0(s1)
    80007504:	00993023          	sd	s1,0(s2)
    80007508:	fd4498e3          	bne	s1,s4,800074d8 <kinit+0x70>
    8000750c:	03813083          	ld	ra,56(sp)
    80007510:	03013403          	ld	s0,48(sp)
    80007514:	02813483          	ld	s1,40(sp)
    80007518:	02013903          	ld	s2,32(sp)
    8000751c:	01813983          	ld	s3,24(sp)
    80007520:	01013a03          	ld	s4,16(sp)
    80007524:	00813a83          	ld	s5,8(sp)
    80007528:	04010113          	addi	sp,sp,64
    8000752c:	00008067          	ret
    80007530:	00001517          	auipc	a0,0x1
    80007534:	00850513          	addi	a0,a0,8 # 80008538 <digits+0x18>
    80007538:	fffff097          	auipc	ra,0xfffff
    8000753c:	4b4080e7          	jalr	1204(ra) # 800069ec <panic>

0000000080007540 <freerange>:
    80007540:	fc010113          	addi	sp,sp,-64
    80007544:	000017b7          	lui	a5,0x1
    80007548:	02913423          	sd	s1,40(sp)
    8000754c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007550:	009504b3          	add	s1,a0,s1
    80007554:	fffff537          	lui	a0,0xfffff
    80007558:	02813823          	sd	s0,48(sp)
    8000755c:	02113c23          	sd	ra,56(sp)
    80007560:	03213023          	sd	s2,32(sp)
    80007564:	01313c23          	sd	s3,24(sp)
    80007568:	01413823          	sd	s4,16(sp)
    8000756c:	01513423          	sd	s5,8(sp)
    80007570:	01613023          	sd	s6,0(sp)
    80007574:	04010413          	addi	s0,sp,64
    80007578:	00a4f4b3          	and	s1,s1,a0
    8000757c:	00f487b3          	add	a5,s1,a5
    80007580:	06f5e463          	bltu	a1,a5,800075e8 <freerange+0xa8>
    80007584:	00004a97          	auipc	s5,0x4
    80007588:	59ca8a93          	addi	s5,s5,1436 # 8000bb20 <end>
    8000758c:	0954e263          	bltu	s1,s5,80007610 <freerange+0xd0>
    80007590:	01100993          	li	s3,17
    80007594:	01b99993          	slli	s3,s3,0x1b
    80007598:	0734fc63          	bgeu	s1,s3,80007610 <freerange+0xd0>
    8000759c:	00058a13          	mv	s4,a1
    800075a0:	00003917          	auipc	s2,0x3
    800075a4:	26090913          	addi	s2,s2,608 # 8000a800 <kmem>
    800075a8:	00002b37          	lui	s6,0x2
    800075ac:	0140006f          	j	800075c0 <freerange+0x80>
    800075b0:	000017b7          	lui	a5,0x1
    800075b4:	00f484b3          	add	s1,s1,a5
    800075b8:	0554ec63          	bltu	s1,s5,80007610 <freerange+0xd0>
    800075bc:	0534fa63          	bgeu	s1,s3,80007610 <freerange+0xd0>
    800075c0:	00001637          	lui	a2,0x1
    800075c4:	00100593          	li	a1,1
    800075c8:	00048513          	mv	a0,s1
    800075cc:	00000097          	auipc	ra,0x0
    800075d0:	50c080e7          	jalr	1292(ra) # 80007ad8 <__memset>
    800075d4:	00093703          	ld	a4,0(s2)
    800075d8:	016487b3          	add	a5,s1,s6
    800075dc:	00e4b023          	sd	a4,0(s1)
    800075e0:	00993023          	sd	s1,0(s2)
    800075e4:	fcfa76e3          	bgeu	s4,a5,800075b0 <freerange+0x70>
    800075e8:	03813083          	ld	ra,56(sp)
    800075ec:	03013403          	ld	s0,48(sp)
    800075f0:	02813483          	ld	s1,40(sp)
    800075f4:	02013903          	ld	s2,32(sp)
    800075f8:	01813983          	ld	s3,24(sp)
    800075fc:	01013a03          	ld	s4,16(sp)
    80007600:	00813a83          	ld	s5,8(sp)
    80007604:	00013b03          	ld	s6,0(sp)
    80007608:	04010113          	addi	sp,sp,64
    8000760c:	00008067          	ret
    80007610:	00001517          	auipc	a0,0x1
    80007614:	f2850513          	addi	a0,a0,-216 # 80008538 <digits+0x18>
    80007618:	fffff097          	auipc	ra,0xfffff
    8000761c:	3d4080e7          	jalr	980(ra) # 800069ec <panic>

0000000080007620 <kfree>:
    80007620:	fe010113          	addi	sp,sp,-32
    80007624:	00813823          	sd	s0,16(sp)
    80007628:	00113c23          	sd	ra,24(sp)
    8000762c:	00913423          	sd	s1,8(sp)
    80007630:	02010413          	addi	s0,sp,32
    80007634:	03451793          	slli	a5,a0,0x34
    80007638:	04079c63          	bnez	a5,80007690 <kfree+0x70>
    8000763c:	00004797          	auipc	a5,0x4
    80007640:	4e478793          	addi	a5,a5,1252 # 8000bb20 <end>
    80007644:	00050493          	mv	s1,a0
    80007648:	04f56463          	bltu	a0,a5,80007690 <kfree+0x70>
    8000764c:	01100793          	li	a5,17
    80007650:	01b79793          	slli	a5,a5,0x1b
    80007654:	02f57e63          	bgeu	a0,a5,80007690 <kfree+0x70>
    80007658:	00001637          	lui	a2,0x1
    8000765c:	00100593          	li	a1,1
    80007660:	00000097          	auipc	ra,0x0
    80007664:	478080e7          	jalr	1144(ra) # 80007ad8 <__memset>
    80007668:	00003797          	auipc	a5,0x3
    8000766c:	19878793          	addi	a5,a5,408 # 8000a800 <kmem>
    80007670:	0007b703          	ld	a4,0(a5)
    80007674:	01813083          	ld	ra,24(sp)
    80007678:	01013403          	ld	s0,16(sp)
    8000767c:	00e4b023          	sd	a4,0(s1)
    80007680:	0097b023          	sd	s1,0(a5)
    80007684:	00813483          	ld	s1,8(sp)
    80007688:	02010113          	addi	sp,sp,32
    8000768c:	00008067          	ret
    80007690:	00001517          	auipc	a0,0x1
    80007694:	ea850513          	addi	a0,a0,-344 # 80008538 <digits+0x18>
    80007698:	fffff097          	auipc	ra,0xfffff
    8000769c:	354080e7          	jalr	852(ra) # 800069ec <panic>

00000000800076a0 <kalloc>:
    800076a0:	fe010113          	addi	sp,sp,-32
    800076a4:	00813823          	sd	s0,16(sp)
    800076a8:	00913423          	sd	s1,8(sp)
    800076ac:	00113c23          	sd	ra,24(sp)
    800076b0:	02010413          	addi	s0,sp,32
    800076b4:	00003797          	auipc	a5,0x3
    800076b8:	14c78793          	addi	a5,a5,332 # 8000a800 <kmem>
    800076bc:	0007b483          	ld	s1,0(a5)
    800076c0:	02048063          	beqz	s1,800076e0 <kalloc+0x40>
    800076c4:	0004b703          	ld	a4,0(s1)
    800076c8:	00001637          	lui	a2,0x1
    800076cc:	00500593          	li	a1,5
    800076d0:	00048513          	mv	a0,s1
    800076d4:	00e7b023          	sd	a4,0(a5)
    800076d8:	00000097          	auipc	ra,0x0
    800076dc:	400080e7          	jalr	1024(ra) # 80007ad8 <__memset>
    800076e0:	01813083          	ld	ra,24(sp)
    800076e4:	01013403          	ld	s0,16(sp)
    800076e8:	00048513          	mv	a0,s1
    800076ec:	00813483          	ld	s1,8(sp)
    800076f0:	02010113          	addi	sp,sp,32
    800076f4:	00008067          	ret

00000000800076f8 <initlock>:
    800076f8:	ff010113          	addi	sp,sp,-16
    800076fc:	00813423          	sd	s0,8(sp)
    80007700:	01010413          	addi	s0,sp,16
    80007704:	00813403          	ld	s0,8(sp)
    80007708:	00b53423          	sd	a1,8(a0)
    8000770c:	00052023          	sw	zero,0(a0)
    80007710:	00053823          	sd	zero,16(a0)
    80007714:	01010113          	addi	sp,sp,16
    80007718:	00008067          	ret

000000008000771c <acquire>:
    8000771c:	fe010113          	addi	sp,sp,-32
    80007720:	00813823          	sd	s0,16(sp)
    80007724:	00913423          	sd	s1,8(sp)
    80007728:	00113c23          	sd	ra,24(sp)
    8000772c:	01213023          	sd	s2,0(sp)
    80007730:	02010413          	addi	s0,sp,32
    80007734:	00050493          	mv	s1,a0
    80007738:	10002973          	csrr	s2,sstatus
    8000773c:	100027f3          	csrr	a5,sstatus
    80007740:	ffd7f793          	andi	a5,a5,-3
    80007744:	10079073          	csrw	sstatus,a5
    80007748:	fffff097          	auipc	ra,0xfffff
    8000774c:	8e8080e7          	jalr	-1816(ra) # 80006030 <mycpu>
    80007750:	07852783          	lw	a5,120(a0)
    80007754:	06078e63          	beqz	a5,800077d0 <acquire+0xb4>
    80007758:	fffff097          	auipc	ra,0xfffff
    8000775c:	8d8080e7          	jalr	-1832(ra) # 80006030 <mycpu>
    80007760:	07852783          	lw	a5,120(a0)
    80007764:	0004a703          	lw	a4,0(s1)
    80007768:	0017879b          	addiw	a5,a5,1
    8000776c:	06f52c23          	sw	a5,120(a0)
    80007770:	04071063          	bnez	a4,800077b0 <acquire+0x94>
    80007774:	00100713          	li	a4,1
    80007778:	00070793          	mv	a5,a4
    8000777c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007780:	0007879b          	sext.w	a5,a5
    80007784:	fe079ae3          	bnez	a5,80007778 <acquire+0x5c>
    80007788:	0ff0000f          	fence
    8000778c:	fffff097          	auipc	ra,0xfffff
    80007790:	8a4080e7          	jalr	-1884(ra) # 80006030 <mycpu>
    80007794:	01813083          	ld	ra,24(sp)
    80007798:	01013403          	ld	s0,16(sp)
    8000779c:	00a4b823          	sd	a0,16(s1)
    800077a0:	00013903          	ld	s2,0(sp)
    800077a4:	00813483          	ld	s1,8(sp)
    800077a8:	02010113          	addi	sp,sp,32
    800077ac:	00008067          	ret
    800077b0:	0104b903          	ld	s2,16(s1)
    800077b4:	fffff097          	auipc	ra,0xfffff
    800077b8:	87c080e7          	jalr	-1924(ra) # 80006030 <mycpu>
    800077bc:	faa91ce3          	bne	s2,a0,80007774 <acquire+0x58>
    800077c0:	00001517          	auipc	a0,0x1
    800077c4:	d8050513          	addi	a0,a0,-640 # 80008540 <digits+0x20>
    800077c8:	fffff097          	auipc	ra,0xfffff
    800077cc:	224080e7          	jalr	548(ra) # 800069ec <panic>
    800077d0:	00195913          	srli	s2,s2,0x1
    800077d4:	fffff097          	auipc	ra,0xfffff
    800077d8:	85c080e7          	jalr	-1956(ra) # 80006030 <mycpu>
    800077dc:	00197913          	andi	s2,s2,1
    800077e0:	07252e23          	sw	s2,124(a0)
    800077e4:	f75ff06f          	j	80007758 <acquire+0x3c>

00000000800077e8 <release>:
    800077e8:	fe010113          	addi	sp,sp,-32
    800077ec:	00813823          	sd	s0,16(sp)
    800077f0:	00113c23          	sd	ra,24(sp)
    800077f4:	00913423          	sd	s1,8(sp)
    800077f8:	01213023          	sd	s2,0(sp)
    800077fc:	02010413          	addi	s0,sp,32
    80007800:	00052783          	lw	a5,0(a0)
    80007804:	00079a63          	bnez	a5,80007818 <release+0x30>
    80007808:	00001517          	auipc	a0,0x1
    8000780c:	d4050513          	addi	a0,a0,-704 # 80008548 <digits+0x28>
    80007810:	fffff097          	auipc	ra,0xfffff
    80007814:	1dc080e7          	jalr	476(ra) # 800069ec <panic>
    80007818:	01053903          	ld	s2,16(a0)
    8000781c:	00050493          	mv	s1,a0
    80007820:	fffff097          	auipc	ra,0xfffff
    80007824:	810080e7          	jalr	-2032(ra) # 80006030 <mycpu>
    80007828:	fea910e3          	bne	s2,a0,80007808 <release+0x20>
    8000782c:	0004b823          	sd	zero,16(s1)
    80007830:	0ff0000f          	fence
    80007834:	0f50000f          	fence	iorw,ow
    80007838:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000783c:	ffffe097          	auipc	ra,0xffffe
    80007840:	7f4080e7          	jalr	2036(ra) # 80006030 <mycpu>
    80007844:	100027f3          	csrr	a5,sstatus
    80007848:	0027f793          	andi	a5,a5,2
    8000784c:	04079a63          	bnez	a5,800078a0 <release+0xb8>
    80007850:	07852783          	lw	a5,120(a0)
    80007854:	02f05e63          	blez	a5,80007890 <release+0xa8>
    80007858:	fff7871b          	addiw	a4,a5,-1
    8000785c:	06e52c23          	sw	a4,120(a0)
    80007860:	00071c63          	bnez	a4,80007878 <release+0x90>
    80007864:	07c52783          	lw	a5,124(a0)
    80007868:	00078863          	beqz	a5,80007878 <release+0x90>
    8000786c:	100027f3          	csrr	a5,sstatus
    80007870:	0027e793          	ori	a5,a5,2
    80007874:	10079073          	csrw	sstatus,a5
    80007878:	01813083          	ld	ra,24(sp)
    8000787c:	01013403          	ld	s0,16(sp)
    80007880:	00813483          	ld	s1,8(sp)
    80007884:	00013903          	ld	s2,0(sp)
    80007888:	02010113          	addi	sp,sp,32
    8000788c:	00008067          	ret
    80007890:	00001517          	auipc	a0,0x1
    80007894:	cd850513          	addi	a0,a0,-808 # 80008568 <digits+0x48>
    80007898:	fffff097          	auipc	ra,0xfffff
    8000789c:	154080e7          	jalr	340(ra) # 800069ec <panic>
    800078a0:	00001517          	auipc	a0,0x1
    800078a4:	cb050513          	addi	a0,a0,-848 # 80008550 <digits+0x30>
    800078a8:	fffff097          	auipc	ra,0xfffff
    800078ac:	144080e7          	jalr	324(ra) # 800069ec <panic>

00000000800078b0 <holding>:
    800078b0:	00052783          	lw	a5,0(a0)
    800078b4:	00079663          	bnez	a5,800078c0 <holding+0x10>
    800078b8:	00000513          	li	a0,0
    800078bc:	00008067          	ret
    800078c0:	fe010113          	addi	sp,sp,-32
    800078c4:	00813823          	sd	s0,16(sp)
    800078c8:	00913423          	sd	s1,8(sp)
    800078cc:	00113c23          	sd	ra,24(sp)
    800078d0:	02010413          	addi	s0,sp,32
    800078d4:	01053483          	ld	s1,16(a0)
    800078d8:	ffffe097          	auipc	ra,0xffffe
    800078dc:	758080e7          	jalr	1880(ra) # 80006030 <mycpu>
    800078e0:	01813083          	ld	ra,24(sp)
    800078e4:	01013403          	ld	s0,16(sp)
    800078e8:	40a48533          	sub	a0,s1,a0
    800078ec:	00153513          	seqz	a0,a0
    800078f0:	00813483          	ld	s1,8(sp)
    800078f4:	02010113          	addi	sp,sp,32
    800078f8:	00008067          	ret

00000000800078fc <push_off>:
    800078fc:	fe010113          	addi	sp,sp,-32
    80007900:	00813823          	sd	s0,16(sp)
    80007904:	00113c23          	sd	ra,24(sp)
    80007908:	00913423          	sd	s1,8(sp)
    8000790c:	02010413          	addi	s0,sp,32
    80007910:	100024f3          	csrr	s1,sstatus
    80007914:	100027f3          	csrr	a5,sstatus
    80007918:	ffd7f793          	andi	a5,a5,-3
    8000791c:	10079073          	csrw	sstatus,a5
    80007920:	ffffe097          	auipc	ra,0xffffe
    80007924:	710080e7          	jalr	1808(ra) # 80006030 <mycpu>
    80007928:	07852783          	lw	a5,120(a0)
    8000792c:	02078663          	beqz	a5,80007958 <push_off+0x5c>
    80007930:	ffffe097          	auipc	ra,0xffffe
    80007934:	700080e7          	jalr	1792(ra) # 80006030 <mycpu>
    80007938:	07852783          	lw	a5,120(a0)
    8000793c:	01813083          	ld	ra,24(sp)
    80007940:	01013403          	ld	s0,16(sp)
    80007944:	0017879b          	addiw	a5,a5,1
    80007948:	06f52c23          	sw	a5,120(a0)
    8000794c:	00813483          	ld	s1,8(sp)
    80007950:	02010113          	addi	sp,sp,32
    80007954:	00008067          	ret
    80007958:	0014d493          	srli	s1,s1,0x1
    8000795c:	ffffe097          	auipc	ra,0xffffe
    80007960:	6d4080e7          	jalr	1748(ra) # 80006030 <mycpu>
    80007964:	0014f493          	andi	s1,s1,1
    80007968:	06952e23          	sw	s1,124(a0)
    8000796c:	fc5ff06f          	j	80007930 <push_off+0x34>

0000000080007970 <pop_off>:
    80007970:	ff010113          	addi	sp,sp,-16
    80007974:	00813023          	sd	s0,0(sp)
    80007978:	00113423          	sd	ra,8(sp)
    8000797c:	01010413          	addi	s0,sp,16
    80007980:	ffffe097          	auipc	ra,0xffffe
    80007984:	6b0080e7          	jalr	1712(ra) # 80006030 <mycpu>
    80007988:	100027f3          	csrr	a5,sstatus
    8000798c:	0027f793          	andi	a5,a5,2
    80007990:	04079663          	bnez	a5,800079dc <pop_off+0x6c>
    80007994:	07852783          	lw	a5,120(a0)
    80007998:	02f05a63          	blez	a5,800079cc <pop_off+0x5c>
    8000799c:	fff7871b          	addiw	a4,a5,-1
    800079a0:	06e52c23          	sw	a4,120(a0)
    800079a4:	00071c63          	bnez	a4,800079bc <pop_off+0x4c>
    800079a8:	07c52783          	lw	a5,124(a0)
    800079ac:	00078863          	beqz	a5,800079bc <pop_off+0x4c>
    800079b0:	100027f3          	csrr	a5,sstatus
    800079b4:	0027e793          	ori	a5,a5,2
    800079b8:	10079073          	csrw	sstatus,a5
    800079bc:	00813083          	ld	ra,8(sp)
    800079c0:	00013403          	ld	s0,0(sp)
    800079c4:	01010113          	addi	sp,sp,16
    800079c8:	00008067          	ret
    800079cc:	00001517          	auipc	a0,0x1
    800079d0:	b9c50513          	addi	a0,a0,-1124 # 80008568 <digits+0x48>
    800079d4:	fffff097          	auipc	ra,0xfffff
    800079d8:	018080e7          	jalr	24(ra) # 800069ec <panic>
    800079dc:	00001517          	auipc	a0,0x1
    800079e0:	b7450513          	addi	a0,a0,-1164 # 80008550 <digits+0x30>
    800079e4:	fffff097          	auipc	ra,0xfffff
    800079e8:	008080e7          	jalr	8(ra) # 800069ec <panic>

00000000800079ec <push_on>:
    800079ec:	fe010113          	addi	sp,sp,-32
    800079f0:	00813823          	sd	s0,16(sp)
    800079f4:	00113c23          	sd	ra,24(sp)
    800079f8:	00913423          	sd	s1,8(sp)
    800079fc:	02010413          	addi	s0,sp,32
    80007a00:	100024f3          	csrr	s1,sstatus
    80007a04:	100027f3          	csrr	a5,sstatus
    80007a08:	0027e793          	ori	a5,a5,2
    80007a0c:	10079073          	csrw	sstatus,a5
    80007a10:	ffffe097          	auipc	ra,0xffffe
    80007a14:	620080e7          	jalr	1568(ra) # 80006030 <mycpu>
    80007a18:	07852783          	lw	a5,120(a0)
    80007a1c:	02078663          	beqz	a5,80007a48 <push_on+0x5c>
    80007a20:	ffffe097          	auipc	ra,0xffffe
    80007a24:	610080e7          	jalr	1552(ra) # 80006030 <mycpu>
    80007a28:	07852783          	lw	a5,120(a0)
    80007a2c:	01813083          	ld	ra,24(sp)
    80007a30:	01013403          	ld	s0,16(sp)
    80007a34:	0017879b          	addiw	a5,a5,1
    80007a38:	06f52c23          	sw	a5,120(a0)
    80007a3c:	00813483          	ld	s1,8(sp)
    80007a40:	02010113          	addi	sp,sp,32
    80007a44:	00008067          	ret
    80007a48:	0014d493          	srli	s1,s1,0x1
    80007a4c:	ffffe097          	auipc	ra,0xffffe
    80007a50:	5e4080e7          	jalr	1508(ra) # 80006030 <mycpu>
    80007a54:	0014f493          	andi	s1,s1,1
    80007a58:	06952e23          	sw	s1,124(a0)
    80007a5c:	fc5ff06f          	j	80007a20 <push_on+0x34>

0000000080007a60 <pop_on>:
    80007a60:	ff010113          	addi	sp,sp,-16
    80007a64:	00813023          	sd	s0,0(sp)
    80007a68:	00113423          	sd	ra,8(sp)
    80007a6c:	01010413          	addi	s0,sp,16
    80007a70:	ffffe097          	auipc	ra,0xffffe
    80007a74:	5c0080e7          	jalr	1472(ra) # 80006030 <mycpu>
    80007a78:	100027f3          	csrr	a5,sstatus
    80007a7c:	0027f793          	andi	a5,a5,2
    80007a80:	04078463          	beqz	a5,80007ac8 <pop_on+0x68>
    80007a84:	07852783          	lw	a5,120(a0)
    80007a88:	02f05863          	blez	a5,80007ab8 <pop_on+0x58>
    80007a8c:	fff7879b          	addiw	a5,a5,-1
    80007a90:	06f52c23          	sw	a5,120(a0)
    80007a94:	07853783          	ld	a5,120(a0)
    80007a98:	00079863          	bnez	a5,80007aa8 <pop_on+0x48>
    80007a9c:	100027f3          	csrr	a5,sstatus
    80007aa0:	ffd7f793          	andi	a5,a5,-3
    80007aa4:	10079073          	csrw	sstatus,a5
    80007aa8:	00813083          	ld	ra,8(sp)
    80007aac:	00013403          	ld	s0,0(sp)
    80007ab0:	01010113          	addi	sp,sp,16
    80007ab4:	00008067          	ret
    80007ab8:	00001517          	auipc	a0,0x1
    80007abc:	ad850513          	addi	a0,a0,-1320 # 80008590 <digits+0x70>
    80007ac0:	fffff097          	auipc	ra,0xfffff
    80007ac4:	f2c080e7          	jalr	-212(ra) # 800069ec <panic>
    80007ac8:	00001517          	auipc	a0,0x1
    80007acc:	aa850513          	addi	a0,a0,-1368 # 80008570 <digits+0x50>
    80007ad0:	fffff097          	auipc	ra,0xfffff
    80007ad4:	f1c080e7          	jalr	-228(ra) # 800069ec <panic>

0000000080007ad8 <__memset>:
    80007ad8:	ff010113          	addi	sp,sp,-16
    80007adc:	00813423          	sd	s0,8(sp)
    80007ae0:	01010413          	addi	s0,sp,16
    80007ae4:	1a060e63          	beqz	a2,80007ca0 <__memset+0x1c8>
    80007ae8:	40a007b3          	neg	a5,a0
    80007aec:	0077f793          	andi	a5,a5,7
    80007af0:	00778693          	addi	a3,a5,7
    80007af4:	00b00813          	li	a6,11
    80007af8:	0ff5f593          	andi	a1,a1,255
    80007afc:	fff6071b          	addiw	a4,a2,-1
    80007b00:	1b06e663          	bltu	a3,a6,80007cac <__memset+0x1d4>
    80007b04:	1cd76463          	bltu	a4,a3,80007ccc <__memset+0x1f4>
    80007b08:	1a078e63          	beqz	a5,80007cc4 <__memset+0x1ec>
    80007b0c:	00b50023          	sb	a1,0(a0)
    80007b10:	00100713          	li	a4,1
    80007b14:	1ae78463          	beq	a5,a4,80007cbc <__memset+0x1e4>
    80007b18:	00b500a3          	sb	a1,1(a0)
    80007b1c:	00200713          	li	a4,2
    80007b20:	1ae78a63          	beq	a5,a4,80007cd4 <__memset+0x1fc>
    80007b24:	00b50123          	sb	a1,2(a0)
    80007b28:	00300713          	li	a4,3
    80007b2c:	18e78463          	beq	a5,a4,80007cb4 <__memset+0x1dc>
    80007b30:	00b501a3          	sb	a1,3(a0)
    80007b34:	00400713          	li	a4,4
    80007b38:	1ae78263          	beq	a5,a4,80007cdc <__memset+0x204>
    80007b3c:	00b50223          	sb	a1,4(a0)
    80007b40:	00500713          	li	a4,5
    80007b44:	1ae78063          	beq	a5,a4,80007ce4 <__memset+0x20c>
    80007b48:	00b502a3          	sb	a1,5(a0)
    80007b4c:	00700713          	li	a4,7
    80007b50:	18e79e63          	bne	a5,a4,80007cec <__memset+0x214>
    80007b54:	00b50323          	sb	a1,6(a0)
    80007b58:	00700e93          	li	t4,7
    80007b5c:	00859713          	slli	a4,a1,0x8
    80007b60:	00e5e733          	or	a4,a1,a4
    80007b64:	01059e13          	slli	t3,a1,0x10
    80007b68:	01c76e33          	or	t3,a4,t3
    80007b6c:	01859313          	slli	t1,a1,0x18
    80007b70:	006e6333          	or	t1,t3,t1
    80007b74:	02059893          	slli	a7,a1,0x20
    80007b78:	40f60e3b          	subw	t3,a2,a5
    80007b7c:	011368b3          	or	a7,t1,a7
    80007b80:	02859813          	slli	a6,a1,0x28
    80007b84:	0108e833          	or	a6,a7,a6
    80007b88:	03059693          	slli	a3,a1,0x30
    80007b8c:	003e589b          	srliw	a7,t3,0x3
    80007b90:	00d866b3          	or	a3,a6,a3
    80007b94:	03859713          	slli	a4,a1,0x38
    80007b98:	00389813          	slli	a6,a7,0x3
    80007b9c:	00f507b3          	add	a5,a0,a5
    80007ba0:	00e6e733          	or	a4,a3,a4
    80007ba4:	000e089b          	sext.w	a7,t3
    80007ba8:	00f806b3          	add	a3,a6,a5
    80007bac:	00e7b023          	sd	a4,0(a5)
    80007bb0:	00878793          	addi	a5,a5,8
    80007bb4:	fed79ce3          	bne	a5,a3,80007bac <__memset+0xd4>
    80007bb8:	ff8e7793          	andi	a5,t3,-8
    80007bbc:	0007871b          	sext.w	a4,a5
    80007bc0:	01d787bb          	addw	a5,a5,t4
    80007bc4:	0ce88e63          	beq	a7,a4,80007ca0 <__memset+0x1c8>
    80007bc8:	00f50733          	add	a4,a0,a5
    80007bcc:	00b70023          	sb	a1,0(a4)
    80007bd0:	0017871b          	addiw	a4,a5,1
    80007bd4:	0cc77663          	bgeu	a4,a2,80007ca0 <__memset+0x1c8>
    80007bd8:	00e50733          	add	a4,a0,a4
    80007bdc:	00b70023          	sb	a1,0(a4)
    80007be0:	0027871b          	addiw	a4,a5,2
    80007be4:	0ac77e63          	bgeu	a4,a2,80007ca0 <__memset+0x1c8>
    80007be8:	00e50733          	add	a4,a0,a4
    80007bec:	00b70023          	sb	a1,0(a4)
    80007bf0:	0037871b          	addiw	a4,a5,3
    80007bf4:	0ac77663          	bgeu	a4,a2,80007ca0 <__memset+0x1c8>
    80007bf8:	00e50733          	add	a4,a0,a4
    80007bfc:	00b70023          	sb	a1,0(a4)
    80007c00:	0047871b          	addiw	a4,a5,4
    80007c04:	08c77e63          	bgeu	a4,a2,80007ca0 <__memset+0x1c8>
    80007c08:	00e50733          	add	a4,a0,a4
    80007c0c:	00b70023          	sb	a1,0(a4)
    80007c10:	0057871b          	addiw	a4,a5,5
    80007c14:	08c77663          	bgeu	a4,a2,80007ca0 <__memset+0x1c8>
    80007c18:	00e50733          	add	a4,a0,a4
    80007c1c:	00b70023          	sb	a1,0(a4)
    80007c20:	0067871b          	addiw	a4,a5,6
    80007c24:	06c77e63          	bgeu	a4,a2,80007ca0 <__memset+0x1c8>
    80007c28:	00e50733          	add	a4,a0,a4
    80007c2c:	00b70023          	sb	a1,0(a4)
    80007c30:	0077871b          	addiw	a4,a5,7
    80007c34:	06c77663          	bgeu	a4,a2,80007ca0 <__memset+0x1c8>
    80007c38:	00e50733          	add	a4,a0,a4
    80007c3c:	00b70023          	sb	a1,0(a4)
    80007c40:	0087871b          	addiw	a4,a5,8
    80007c44:	04c77e63          	bgeu	a4,a2,80007ca0 <__memset+0x1c8>
    80007c48:	00e50733          	add	a4,a0,a4
    80007c4c:	00b70023          	sb	a1,0(a4)
    80007c50:	0097871b          	addiw	a4,a5,9
    80007c54:	04c77663          	bgeu	a4,a2,80007ca0 <__memset+0x1c8>
    80007c58:	00e50733          	add	a4,a0,a4
    80007c5c:	00b70023          	sb	a1,0(a4)
    80007c60:	00a7871b          	addiw	a4,a5,10
    80007c64:	02c77e63          	bgeu	a4,a2,80007ca0 <__memset+0x1c8>
    80007c68:	00e50733          	add	a4,a0,a4
    80007c6c:	00b70023          	sb	a1,0(a4)
    80007c70:	00b7871b          	addiw	a4,a5,11
    80007c74:	02c77663          	bgeu	a4,a2,80007ca0 <__memset+0x1c8>
    80007c78:	00e50733          	add	a4,a0,a4
    80007c7c:	00b70023          	sb	a1,0(a4)
    80007c80:	00c7871b          	addiw	a4,a5,12
    80007c84:	00c77e63          	bgeu	a4,a2,80007ca0 <__memset+0x1c8>
    80007c88:	00e50733          	add	a4,a0,a4
    80007c8c:	00b70023          	sb	a1,0(a4)
    80007c90:	00d7879b          	addiw	a5,a5,13
    80007c94:	00c7f663          	bgeu	a5,a2,80007ca0 <__memset+0x1c8>
    80007c98:	00f507b3          	add	a5,a0,a5
    80007c9c:	00b78023          	sb	a1,0(a5)
    80007ca0:	00813403          	ld	s0,8(sp)
    80007ca4:	01010113          	addi	sp,sp,16
    80007ca8:	00008067          	ret
    80007cac:	00b00693          	li	a3,11
    80007cb0:	e55ff06f          	j	80007b04 <__memset+0x2c>
    80007cb4:	00300e93          	li	t4,3
    80007cb8:	ea5ff06f          	j	80007b5c <__memset+0x84>
    80007cbc:	00100e93          	li	t4,1
    80007cc0:	e9dff06f          	j	80007b5c <__memset+0x84>
    80007cc4:	00000e93          	li	t4,0
    80007cc8:	e95ff06f          	j	80007b5c <__memset+0x84>
    80007ccc:	00000793          	li	a5,0
    80007cd0:	ef9ff06f          	j	80007bc8 <__memset+0xf0>
    80007cd4:	00200e93          	li	t4,2
    80007cd8:	e85ff06f          	j	80007b5c <__memset+0x84>
    80007cdc:	00400e93          	li	t4,4
    80007ce0:	e7dff06f          	j	80007b5c <__memset+0x84>
    80007ce4:	00500e93          	li	t4,5
    80007ce8:	e75ff06f          	j	80007b5c <__memset+0x84>
    80007cec:	00600e93          	li	t4,6
    80007cf0:	e6dff06f          	j	80007b5c <__memset+0x84>

0000000080007cf4 <__memmove>:
    80007cf4:	ff010113          	addi	sp,sp,-16
    80007cf8:	00813423          	sd	s0,8(sp)
    80007cfc:	01010413          	addi	s0,sp,16
    80007d00:	0e060863          	beqz	a2,80007df0 <__memmove+0xfc>
    80007d04:	fff6069b          	addiw	a3,a2,-1
    80007d08:	0006881b          	sext.w	a6,a3
    80007d0c:	0ea5e863          	bltu	a1,a0,80007dfc <__memmove+0x108>
    80007d10:	00758713          	addi	a4,a1,7
    80007d14:	00a5e7b3          	or	a5,a1,a0
    80007d18:	40a70733          	sub	a4,a4,a0
    80007d1c:	0077f793          	andi	a5,a5,7
    80007d20:	00f73713          	sltiu	a4,a4,15
    80007d24:	00174713          	xori	a4,a4,1
    80007d28:	0017b793          	seqz	a5,a5
    80007d2c:	00e7f7b3          	and	a5,a5,a4
    80007d30:	10078863          	beqz	a5,80007e40 <__memmove+0x14c>
    80007d34:	00900793          	li	a5,9
    80007d38:	1107f463          	bgeu	a5,a6,80007e40 <__memmove+0x14c>
    80007d3c:	0036581b          	srliw	a6,a2,0x3
    80007d40:	fff8081b          	addiw	a6,a6,-1
    80007d44:	02081813          	slli	a6,a6,0x20
    80007d48:	01d85893          	srli	a7,a6,0x1d
    80007d4c:	00858813          	addi	a6,a1,8
    80007d50:	00058793          	mv	a5,a1
    80007d54:	00050713          	mv	a4,a0
    80007d58:	01088833          	add	a6,a7,a6
    80007d5c:	0007b883          	ld	a7,0(a5)
    80007d60:	00878793          	addi	a5,a5,8
    80007d64:	00870713          	addi	a4,a4,8
    80007d68:	ff173c23          	sd	a7,-8(a4)
    80007d6c:	ff0798e3          	bne	a5,a6,80007d5c <__memmove+0x68>
    80007d70:	ff867713          	andi	a4,a2,-8
    80007d74:	02071793          	slli	a5,a4,0x20
    80007d78:	0207d793          	srli	a5,a5,0x20
    80007d7c:	00f585b3          	add	a1,a1,a5
    80007d80:	40e686bb          	subw	a3,a3,a4
    80007d84:	00f507b3          	add	a5,a0,a5
    80007d88:	06e60463          	beq	a2,a4,80007df0 <__memmove+0xfc>
    80007d8c:	0005c703          	lbu	a4,0(a1)
    80007d90:	00e78023          	sb	a4,0(a5)
    80007d94:	04068e63          	beqz	a3,80007df0 <__memmove+0xfc>
    80007d98:	0015c603          	lbu	a2,1(a1)
    80007d9c:	00100713          	li	a4,1
    80007da0:	00c780a3          	sb	a2,1(a5)
    80007da4:	04e68663          	beq	a3,a4,80007df0 <__memmove+0xfc>
    80007da8:	0025c603          	lbu	a2,2(a1)
    80007dac:	00200713          	li	a4,2
    80007db0:	00c78123          	sb	a2,2(a5)
    80007db4:	02e68e63          	beq	a3,a4,80007df0 <__memmove+0xfc>
    80007db8:	0035c603          	lbu	a2,3(a1)
    80007dbc:	00300713          	li	a4,3
    80007dc0:	00c781a3          	sb	a2,3(a5)
    80007dc4:	02e68663          	beq	a3,a4,80007df0 <__memmove+0xfc>
    80007dc8:	0045c603          	lbu	a2,4(a1)
    80007dcc:	00400713          	li	a4,4
    80007dd0:	00c78223          	sb	a2,4(a5)
    80007dd4:	00e68e63          	beq	a3,a4,80007df0 <__memmove+0xfc>
    80007dd8:	0055c603          	lbu	a2,5(a1)
    80007ddc:	00500713          	li	a4,5
    80007de0:	00c782a3          	sb	a2,5(a5)
    80007de4:	00e68663          	beq	a3,a4,80007df0 <__memmove+0xfc>
    80007de8:	0065c703          	lbu	a4,6(a1)
    80007dec:	00e78323          	sb	a4,6(a5)
    80007df0:	00813403          	ld	s0,8(sp)
    80007df4:	01010113          	addi	sp,sp,16
    80007df8:	00008067          	ret
    80007dfc:	02061713          	slli	a4,a2,0x20
    80007e00:	02075713          	srli	a4,a4,0x20
    80007e04:	00e587b3          	add	a5,a1,a4
    80007e08:	f0f574e3          	bgeu	a0,a5,80007d10 <__memmove+0x1c>
    80007e0c:	02069613          	slli	a2,a3,0x20
    80007e10:	02065613          	srli	a2,a2,0x20
    80007e14:	fff64613          	not	a2,a2
    80007e18:	00e50733          	add	a4,a0,a4
    80007e1c:	00c78633          	add	a2,a5,a2
    80007e20:	fff7c683          	lbu	a3,-1(a5)
    80007e24:	fff78793          	addi	a5,a5,-1
    80007e28:	fff70713          	addi	a4,a4,-1
    80007e2c:	00d70023          	sb	a3,0(a4)
    80007e30:	fec798e3          	bne	a5,a2,80007e20 <__memmove+0x12c>
    80007e34:	00813403          	ld	s0,8(sp)
    80007e38:	01010113          	addi	sp,sp,16
    80007e3c:	00008067          	ret
    80007e40:	02069713          	slli	a4,a3,0x20
    80007e44:	02075713          	srli	a4,a4,0x20
    80007e48:	00170713          	addi	a4,a4,1
    80007e4c:	00e50733          	add	a4,a0,a4
    80007e50:	00050793          	mv	a5,a0
    80007e54:	0005c683          	lbu	a3,0(a1)
    80007e58:	00178793          	addi	a5,a5,1
    80007e5c:	00158593          	addi	a1,a1,1
    80007e60:	fed78fa3          	sb	a3,-1(a5)
    80007e64:	fee798e3          	bne	a5,a4,80007e54 <__memmove+0x160>
    80007e68:	f89ff06f          	j	80007df0 <__memmove+0xfc>

0000000080007e6c <__putc>:
    80007e6c:	fe010113          	addi	sp,sp,-32
    80007e70:	00813823          	sd	s0,16(sp)
    80007e74:	00113c23          	sd	ra,24(sp)
    80007e78:	02010413          	addi	s0,sp,32
    80007e7c:	00050793          	mv	a5,a0
    80007e80:	fef40593          	addi	a1,s0,-17
    80007e84:	00100613          	li	a2,1
    80007e88:	00000513          	li	a0,0
    80007e8c:	fef407a3          	sb	a5,-17(s0)
    80007e90:	fffff097          	auipc	ra,0xfffff
    80007e94:	b3c080e7          	jalr	-1220(ra) # 800069cc <console_write>
    80007e98:	01813083          	ld	ra,24(sp)
    80007e9c:	01013403          	ld	s0,16(sp)
    80007ea0:	02010113          	addi	sp,sp,32
    80007ea4:	00008067          	ret

0000000080007ea8 <__getc>:
    80007ea8:	fe010113          	addi	sp,sp,-32
    80007eac:	00813823          	sd	s0,16(sp)
    80007eb0:	00113c23          	sd	ra,24(sp)
    80007eb4:	02010413          	addi	s0,sp,32
    80007eb8:	fe840593          	addi	a1,s0,-24
    80007ebc:	00100613          	li	a2,1
    80007ec0:	00000513          	li	a0,0
    80007ec4:	fffff097          	auipc	ra,0xfffff
    80007ec8:	ae8080e7          	jalr	-1304(ra) # 800069ac <console_read>
    80007ecc:	fe844503          	lbu	a0,-24(s0)
    80007ed0:	01813083          	ld	ra,24(sp)
    80007ed4:	01013403          	ld	s0,16(sp)
    80007ed8:	02010113          	addi	sp,sp,32
    80007edc:	00008067          	ret

0000000080007ee0 <console_handler>:
    80007ee0:	fe010113          	addi	sp,sp,-32
    80007ee4:	00813823          	sd	s0,16(sp)
    80007ee8:	00113c23          	sd	ra,24(sp)
    80007eec:	00913423          	sd	s1,8(sp)
    80007ef0:	02010413          	addi	s0,sp,32
    80007ef4:	14202773          	csrr	a4,scause
    80007ef8:	100027f3          	csrr	a5,sstatus
    80007efc:	0027f793          	andi	a5,a5,2
    80007f00:	06079e63          	bnez	a5,80007f7c <console_handler+0x9c>
    80007f04:	00074c63          	bltz	a4,80007f1c <console_handler+0x3c>
    80007f08:	01813083          	ld	ra,24(sp)
    80007f0c:	01013403          	ld	s0,16(sp)
    80007f10:	00813483          	ld	s1,8(sp)
    80007f14:	02010113          	addi	sp,sp,32
    80007f18:	00008067          	ret
    80007f1c:	0ff77713          	andi	a4,a4,255
    80007f20:	00900793          	li	a5,9
    80007f24:	fef712e3          	bne	a4,a5,80007f08 <console_handler+0x28>
    80007f28:	ffffe097          	auipc	ra,0xffffe
    80007f2c:	6dc080e7          	jalr	1756(ra) # 80006604 <plic_claim>
    80007f30:	00a00793          	li	a5,10
    80007f34:	00050493          	mv	s1,a0
    80007f38:	02f50c63          	beq	a0,a5,80007f70 <console_handler+0x90>
    80007f3c:	fc0506e3          	beqz	a0,80007f08 <console_handler+0x28>
    80007f40:	00050593          	mv	a1,a0
    80007f44:	00000517          	auipc	a0,0x0
    80007f48:	55450513          	addi	a0,a0,1364 # 80008498 <_ZL6digits+0xf8>
    80007f4c:	fffff097          	auipc	ra,0xfffff
    80007f50:	afc080e7          	jalr	-1284(ra) # 80006a48 <__printf>
    80007f54:	01013403          	ld	s0,16(sp)
    80007f58:	01813083          	ld	ra,24(sp)
    80007f5c:	00048513          	mv	a0,s1
    80007f60:	00813483          	ld	s1,8(sp)
    80007f64:	02010113          	addi	sp,sp,32
    80007f68:	ffffe317          	auipc	t1,0xffffe
    80007f6c:	6d430067          	jr	1748(t1) # 8000663c <plic_complete>
    80007f70:	fffff097          	auipc	ra,0xfffff
    80007f74:	3e0080e7          	jalr	992(ra) # 80007350 <uartintr>
    80007f78:	fddff06f          	j	80007f54 <console_handler+0x74>
    80007f7c:	00000517          	auipc	a0,0x0
    80007f80:	61c50513          	addi	a0,a0,1564 # 80008598 <digits+0x78>
    80007f84:	fffff097          	auipc	ra,0xfffff
    80007f88:	a68080e7          	jalr	-1432(ra) # 800069ec <panic>
	...
