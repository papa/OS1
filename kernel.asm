
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	5c013103          	ld	sp,1472(sp) # 8000a5c0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	335050ef          	jal	ra,80005b50 <start>

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
    80001080:	39c020ef          	jal	ra,8000341c <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001470:	e78080e7          	jalr	-392(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    800014a0:	e48080e7          	jalr	-440(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    800014c0:	e28080e7          	jalr	-472(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	e8c080e7          	jalr	-372(ra) # 80003354 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800014d0:	00007517          	auipc	a0,0x7
    800014d4:	cb050513          	addi	a0,a0,-848 # 80008180 <CONSOLE_STATUS+0x170>
    800014d8:	00002097          	auipc	ra,0x2
    800014dc:	e0c080e7          	jalr	-500(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    80001538:	db0080e7          	jalr	-592(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    80001558:	d90080e7          	jalr	-624(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000155c:	00048513          	mv	a0,s1
    80001560:	00002097          	auipc	ra,0x2
    80001564:	df4080e7          	jalr	-524(ra) # 80003354 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001568:	00007517          	auipc	a0,0x7
    8000156c:	c1850513          	addi	a0,a0,-1000 # 80008180 <CONSOLE_STATUS+0x170>
    80001570:	00002097          	auipc	ra,0x2
    80001574:	d74080e7          	jalr	-652(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    800015e0:	d08080e7          	jalr	-760(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800015e4:	00048513          	mv	a0,s1
    800015e8:	00002097          	auipc	ra,0x2
    800015ec:	d6c080e7          	jalr	-660(ra) # 80003354 <_ZN5Riscv12printIntegerEm>
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
    8000162c:	cbc080e7          	jalr	-836(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    80001658:	c90080e7          	jalr	-880(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000165c:	00048513          	mv	a0,s1
    80001660:	00002097          	auipc	ra,0x2
    80001664:	cf4080e7          	jalr	-780(ra) # 80003354 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001668:	00007517          	auipc	a0,0x7
    8000166c:	b1850513          	addi	a0,a0,-1256 # 80008180 <CONSOLE_STATUS+0x170>
    80001670:	00002097          	auipc	ra,0x2
    80001674:	c74080e7          	jalr	-908(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    800016dc:	c0c080e7          	jalr	-1012(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    800016f8:	f2c90913          	addi	s2,s2,-212 # 8000a620 <_ZL5mutex>
    800016fc:	00093503          	ld	a0,0(s2)
    80001700:	00002097          	auipc	ra,0x2
    80001704:	970080e7          	jalr	-1680(ra) # 80003070 <_ZN9Semaphore4waitEv>
        mutex->signal();
    80001708:	00093503          	ld	a0,0(s2)
    8000170c:	00002097          	auipc	ra,0x2
    80001710:	9e8080e7          	jalr	-1560(ra) # 800030f4 <_ZN9Semaphore6signalEv>
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
    8000174c:	b9c080e7          	jalr	-1124(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
        mutex->wait();
    80001750:	00009497          	auipc	s1,0x9
    80001754:	ed048493          	addi	s1,s1,-304 # 8000a620 <_ZL5mutex>
    80001758:	0004b503          	ld	a0,0(s1)
    8000175c:	00002097          	auipc	ra,0x2
    80001760:	914080e7          	jalr	-1772(ra) # 80003070 <_ZN9Semaphore4waitEv>
        mutex->signal();
    80001764:	0004b503          	ld	a0,0(s1)
    80001768:	00002097          	auipc	ra,0x2
    8000176c:	98c080e7          	jalr	-1652(ra) # 800030f4 <_ZN9Semaphore6signalEv>
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
    800017a0:	b48080e7          	jalr	-1208(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    800017bc:	e6890913          	addi	s2,s2,-408 # 8000a620 <_ZL5mutex>
    800017c0:	00893503          	ld	a0,8(s2)
    800017c4:	00002097          	auipc	ra,0x2
    800017c8:	8ac080e7          	jalr	-1876(ra) # 80003070 <_ZN9Semaphore4waitEv>
        __putc('1');
    800017cc:	03100513          	li	a0,49
    800017d0:	00006097          	auipc	ra,0x6
    800017d4:	43c080e7          	jalr	1084(ra) # 80007c0c <__putc>
        __putc('\n');
    800017d8:	00a00513          	li	a0,10
    800017dc:	00006097          	auipc	ra,0x6
    800017e0:	430080e7          	jalr	1072(ra) # 80007c0c <__putc>
        s2->signal();
    800017e4:	01093503          	ld	a0,16(s2)
    800017e8:	00002097          	auipc	ra,0x2
    800017ec:	90c080e7          	jalr	-1780(ra) # 800030f4 <_ZN9Semaphore6signalEv>
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
    8000182c:	abc080e7          	jalr	-1348(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    80001848:	ddc90913          	addi	s2,s2,-548 # 8000a620 <_ZL5mutex>
    8000184c:	01093503          	ld	a0,16(s2)
    80001850:	00002097          	auipc	ra,0x2
    80001854:	820080e7          	jalr	-2016(ra) # 80003070 <_ZN9Semaphore4waitEv>
        __putc('2');
    80001858:	03200513          	li	a0,50
    8000185c:	00006097          	auipc	ra,0x6
    80001860:	3b0080e7          	jalr	944(ra) # 80007c0c <__putc>
        __putc('\n');
    80001864:	00a00513          	li	a0,10
    80001868:	00006097          	auipc	ra,0x6
    8000186c:	3a4080e7          	jalr	932(ra) # 80007c0c <__putc>
        s3->signal();
    80001870:	01893503          	ld	a0,24(s2)
    80001874:	00002097          	auipc	ra,0x2
    80001878:	880080e7          	jalr	-1920(ra) # 800030f4 <_ZN9Semaphore6signalEv>
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
    800018b8:	a30080e7          	jalr	-1488(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    800018d4:	d5090913          	addi	s2,s2,-688 # 8000a620 <_ZL5mutex>
    800018d8:	01893503          	ld	a0,24(s2)
    800018dc:	00001097          	auipc	ra,0x1
    800018e0:	794080e7          	jalr	1940(ra) # 80003070 <_ZN9Semaphore4waitEv>
        __putc('3');
    800018e4:	03300513          	li	a0,51
    800018e8:	00006097          	auipc	ra,0x6
    800018ec:	324080e7          	jalr	804(ra) # 80007c0c <__putc>
        __putc('\n');
    800018f0:	00a00513          	li	a0,10
    800018f4:	00006097          	auipc	ra,0x6
    800018f8:	318080e7          	jalr	792(ra) # 80007c0c <__putc>
        s1->signal();
    800018fc:	00893503          	ld	a0,8(s2)
    80001900:	00001097          	auipc	ra,0x1
    80001904:	7f4080e7          	jalr	2036(ra) # 800030f4 <_ZN9Semaphore6signalEv>
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
    80001940:	530080e7          	jalr	1328(ra) # 80002e6c <_Znwm>
    80001944:	00050493          	mv	s1,a0
    80001948:	00000613          	li	a2,0
    8000194c:	00000597          	auipc	a1,0x0
    80001950:	b3458593          	addi	a1,a1,-1228 # 80001480 <_Z15thread1FunctionPv>
    80001954:	00001097          	auipc	ra,0x1
    80001958:	6b4080e7          	jalr	1716(ra) # 80003008 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    8000195c:	00048513          	mv	a0,s1
    80001960:	00001097          	auipc	ra,0x1
    80001964:	5dc080e7          	jalr	1500(ra) # 80002f3c <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001968:	02000513          	li	a0,32
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	500080e7          	jalr	1280(ra) # 80002e6c <_Znwm>
    80001974:	00050913          	mv	s2,a0
    80001978:	00000613          	li	a2,0
    8000197c:	00000597          	auipc	a1,0x0
    80001980:	b9c58593          	addi	a1,a1,-1124 # 80001518 <_Z15thread2FunctionPv>
    80001984:	00001097          	auipc	ra,0x1
    80001988:	684080e7          	jalr	1668(ra) # 80003008 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    8000198c:	00090513          	mv	a0,s2
    80001990:	00001097          	auipc	ra,0x1
    80001994:	5ac080e7          	jalr	1452(ra) # 80002f3c <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001998:	00002097          	auipc	ra,0x2
    8000199c:	8c4080e7          	jalr	-1852(ra) # 8000325c <_ZN5Riscv16enableInterruptsEv>
    800019a0:	01c0006f          	j	800019bc <_Z11threadTest1v+0x9c>
        Riscv::printString("Main thread\n");
    800019a4:	00006517          	auipc	a0,0x6
    800019a8:	71450513          	addi	a0,a0,1812 # 800080b8 <CONSOLE_STATUS+0xa8>
    800019ac:	00002097          	auipc	ra,0x2
    800019b0:	938080e7          	jalr	-1736(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
        thread_dispatch();
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	970080e7          	jalr	-1680(ra) # 80001324 <thread_dispatch>
    while(t1->myHandle->getState() != PCB::FINISHED || t2->myHandle->getState() != PCB::FINISHED)
    800019bc:	0084b783          	ld	a5,8(s1)

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800019c0:	0307a703          	lw	a4,48(a5)
    800019c4:	00300793          	li	a5,3
    800019c8:	fcf71ee3          	bne	a4,a5,800019a4 <_Z11threadTest1v+0x84>
    800019cc:	00893783          	ld	a5,8(s2)
    800019d0:	0307a703          	lw	a4,48(a5)
    800019d4:	00300793          	li	a5,3
    800019d8:	fcf716e3          	bne	a4,a5,800019a4 <_Z11threadTest1v+0x84>
    Riscv::printString("End...\n");
    800019dc:	00006517          	auipc	a0,0x6
    800019e0:	6ec50513          	addi	a0,a0,1772 # 800080c8 <CONSOLE_STATUS+0xb8>
    800019e4:	00002097          	auipc	ra,0x2
    800019e8:	900080e7          	jalr	-1792(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    800019ec:	00002097          	auipc	ra,0x2
    800019f0:	890080e7          	jalr	-1904(ra) # 8000327c <_ZN5Riscv17disableInterruptsEv>
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
    80001a18:	480080e7          	jalr	1152(ra) # 80002e94 <_ZdlPv>
    80001a1c:	00090513          	mv	a0,s2
    80001a20:	0000a097          	auipc	ra,0xa
    80001a24:	d78080e7          	jalr	-648(ra) # 8000b798 <_Unwind_Resume>
    80001a28:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    80001a2c:	00090513          	mv	a0,s2
    80001a30:	00001097          	auipc	ra,0x1
    80001a34:	464080e7          	jalr	1124(ra) # 80002e94 <_ZdlPv>
    80001a38:	00048513          	mv	a0,s1
    80001a3c:	0000a097          	auipc	ra,0xa
    80001a40:	d5c080e7          	jalr	-676(ra) # 8000b798 <_Unwind_Resume>

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
    80001a64:	40c080e7          	jalr	1036(ra) # 80002e6c <_Znwm>
    80001a68:	00050493          	mv	s1,a0
    80001a6c:	00000613          	li	a2,0
    80001a70:	00000597          	auipc	a1,0x0
    80001a74:	9e458593          	addi	a1,a1,-1564 # 80001454 <_Z4idlePv>
    80001a78:	00001097          	auipc	ra,0x1
    80001a7c:	590080e7          	jalr	1424(ra) # 80003008 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001a80:	00048513          	mv	a0,s1
    80001a84:	00001097          	auipc	ra,0x1
    80001a88:	4b8080e7          	jalr	1208(ra) # 80002f3c <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a8c:	02000513          	li	a0,32
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	3dc080e7          	jalr	988(ra) # 80002e6c <_Znwm>
    80001a98:	00050913          	mv	s2,a0
    80001a9c:	00000613          	li	a2,0
    80001aa0:	00000597          	auipc	a1,0x0
    80001aa4:	9e058593          	addi	a1,a1,-1568 # 80001480 <_Z15thread1FunctionPv>
    80001aa8:	00001097          	auipc	ra,0x1
    80001aac:	560080e7          	jalr	1376(ra) # 80003008 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001ab0:	00090513          	mv	a0,s2
    80001ab4:	00001097          	auipc	ra,0x1
    80001ab8:	488080e7          	jalr	1160(ra) # 80002f3c <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001abc:	02000513          	li	a0,32
    80001ac0:	00001097          	auipc	ra,0x1
    80001ac4:	3ac080e7          	jalr	940(ra) # 80002e6c <_Znwm>
    80001ac8:	00050913          	mv	s2,a0
    80001acc:	00000613          	li	a2,0
    80001ad0:	00000597          	auipc	a1,0x0
    80001ad4:	b3c58593          	addi	a1,a1,-1220 # 8000160c <_Z20thread2FunctionTest2Pv>
    80001ad8:	00001097          	auipc	ra,0x1
    80001adc:	530080e7          	jalr	1328(ra) # 80003008 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001ae0:	00090513          	mv	a0,s2
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	458080e7          	jalr	1112(ra) # 80002f3c <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001aec:	00001097          	auipc	ra,0x1
    80001af0:	770080e7          	jalr	1904(ra) # 8000325c <_ZN5Riscv16enableInterruptsEv>
    while(idleThread->myHandle->getState() != PCB::FINISHED);
    80001af4:	0084b783          	ld	a5,8(s1)
    80001af8:	0307a703          	lw	a4,48(a5)
    80001afc:	00300793          	li	a5,3
    80001b00:	fef71ae3          	bne	a4,a5,80001af4 <_Z11threadTest2v+0xb0>
    Riscv::printString("End...\n");
    80001b04:	00006517          	auipc	a0,0x6
    80001b08:	5c450513          	addi	a0,a0,1476 # 800080c8 <CONSOLE_STATUS+0xb8>
    80001b0c:	00001097          	auipc	ra,0x1
    80001b10:	7d8080e7          	jalr	2008(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001b14:	00001097          	auipc	ra,0x1
    80001b18:	768080e7          	jalr	1896(ra) # 8000327c <_ZN5Riscv17disableInterruptsEv>
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
    80001b40:	358080e7          	jalr	856(ra) # 80002e94 <_ZdlPv>
    80001b44:	00090513          	mv	a0,s2
    80001b48:	0000a097          	auipc	ra,0xa
    80001b4c:	c50080e7          	jalr	-944(ra) # 8000b798 <_Unwind_Resume>
    80001b50:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001b54:	00090513          	mv	a0,s2
    80001b58:	00001097          	auipc	ra,0x1
    80001b5c:	33c080e7          	jalr	828(ra) # 80002e94 <_ZdlPv>
    80001b60:	00048513          	mv	a0,s1
    80001b64:	0000a097          	auipc	ra,0xa
    80001b68:	c34080e7          	jalr	-972(ra) # 8000b798 <_Unwind_Resume>
    80001b6c:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001b70:	00090513          	mv	a0,s2
    80001b74:	00001097          	auipc	ra,0x1
    80001b78:	320080e7          	jalr	800(ra) # 80002e94 <_ZdlPv>
    80001b7c:	00048513          	mv	a0,s1
    80001b80:	0000a097          	auipc	ra,0xa
    80001b84:	c18080e7          	jalr	-1000(ra) # 8000b798 <_Unwind_Resume>

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
    80001ba4:	00001097          	auipc	ra,0x1
    80001ba8:	740080e7          	jalr	1856(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    80001bec:	6fc080e7          	jalr	1788(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    80001c40:	6a8080e7          	jalr	1704(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    80001c88:	660080e7          	jalr	1632(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    80001ccc:	61c080e7          	jalr	1564(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
            return;
    80001cd0:	f21ff06f          	j	80001bf0 <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001cd4:	00006517          	auipc	a0,0x6
    80001cd8:	41450513          	addi	a0,a0,1044 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001cdc:	00001097          	auipc	ra,0x1
    80001ce0:	608080e7          	jalr	1544(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    80001d04:	5e4080e7          	jalr	1508(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001d08:	00009797          	auipc	a5,0x9
    80001d0c:	8c87b783          	ld	a5,-1848(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d10:	0007b503          	ld	a0,0(a5)
    80001d14:	00009797          	auipc	a5,0x9
    80001d18:	8947b783          	ld	a5,-1900(a5) # 8000a5a8 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    80001d40:	5a8080e7          	jalr	1448(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
}
    80001d44:	00813083          	ld	ra,8(sp)
    80001d48:	00013403          	ld	s0,0(sp)
    80001d4c:	01010113          	addi	sp,sp,16
    80001d50:	00008067          	ret
        Riscv::printString("OK\n");
    80001d54:	00006517          	auipc	a0,0x6
    80001d58:	39450513          	addi	a0,a0,916 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001d5c:	00001097          	auipc	ra,0x1
    80001d60:	588080e7          	jalr	1416(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    80001d90:	558080e7          	jalr	1368(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    80001ddc:	57c080e7          	jalr	1404(ra) # 80003354 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001de0:	00006517          	auipc	a0,0x6
    80001de4:	3a050513          	addi	a0,a0,928 # 80008180 <CONSOLE_STATUS+0x170>
    80001de8:	00001097          	auipc	ra,0x1
    80001dec:	4fc080e7          	jalr	1276(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001df0:	00291793          	slli	a5,s2,0x2
    80001df4:	01278933          	add	s2,a5,s2
    80001df8:	00191913          	slli	s2,s2,0x1
    80001dfc:	03390863          	beq	s2,s3,80001e2c <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001e00:	00006517          	auipc	a0,0x6
    80001e04:	2e050513          	addi	a0,a0,736 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001e08:	00001097          	auipc	ra,0x1
    80001e0c:	4dc080e7          	jalr	1244(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    80001e38:	4b0080e7          	jalr	1200(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    80001e5c:	48c080e7          	jalr	1164(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    80001e88:	460080e7          	jalr	1120(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
}
    80001e8c:	00813083          	ld	ra,8(sp)
    80001e90:	00013403          	ld	s0,0(sp)
    80001e94:	01010113          	addi	sp,sp,16
    80001e98:	00008067          	ret
        Riscv::printString("OK\n");
    80001e9c:	00006517          	auipc	a0,0x6
    80001ea0:	24c50513          	addi	a0,a0,588 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001ea4:	00001097          	auipc	ra,0x1
    80001ea8:	440080e7          	jalr	1088(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    80001ed4:	414080e7          	jalr	1044(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    80001fe8:	300080e7          	jalr	768(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
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
    80002038:	e38080e7          	jalr	-456(ra) # 80002e6c <_Znwm>
    8000203c:	00050493          	mv	s1,a0
    80002040:	00100593          	li	a1,1
    80002044:	00001097          	auipc	ra,0x1
    80002048:	064080e7          	jalr	100(ra) # 800030a8 <_ZN9SemaphoreC1Ej>
    8000204c:	00008797          	auipc	a5,0x8
    80002050:	5c97ba23          	sd	s1,1492(a5) # 8000a620 <_ZL5mutex>
    Thread* t1 = new Thread(&f1, 0);
    80002054:	02000513          	li	a0,32
    80002058:	00001097          	auipc	ra,0x1
    8000205c:	e14080e7          	jalr	-492(ra) # 80002e6c <_Znwm>
    80002060:	00050913          	mv	s2,a0
    80002064:	00000613          	li	a2,0
    80002068:	fffff597          	auipc	a1,0xfffff
    8000206c:	65058593          	addi	a1,a1,1616 # 800016b8 <_Z2f1Pv>
    80002070:	00001097          	auipc	ra,0x1
    80002074:	f98080e7          	jalr	-104(ra) # 80003008 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&f2, 0);
    80002078:	02000513          	li	a0,32
    8000207c:	00001097          	auipc	ra,0x1
    80002080:	df0080e7          	jalr	-528(ra) # 80002e6c <_Znwm>
    80002084:	00050493          	mv	s1,a0
    80002088:	00000613          	li	a2,0
    8000208c:	fffff597          	auipc	a1,0xfffff
    80002090:	6a058593          	addi	a1,a1,1696 # 8000172c <_Z2f2Pv>
    80002094:	00001097          	auipc	ra,0x1
    80002098:	f74080e7          	jalr	-140(ra) # 80003008 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    8000209c:	00090513          	mv	a0,s2
    800020a0:	00001097          	auipc	ra,0x1
    800020a4:	e9c080e7          	jalr	-356(ra) # 80002f3c <_ZN6Thread5startEv>
    t2->start();
    800020a8:	00048513          	mv	a0,s1
    800020ac:	00001097          	auipc	ra,0x1
    800020b0:	e90080e7          	jalr	-368(ra) # 80002f3c <_ZN6Thread5startEv>
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
    800020f4:	da4080e7          	jalr	-604(ra) # 80002e94 <_ZdlPv>
    800020f8:	00090513          	mv	a0,s2
    800020fc:	00009097          	auipc	ra,0x9
    80002100:	69c080e7          	jalr	1692(ra) # 8000b798 <_Unwind_Resume>
    80002104:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1, 0);
    80002108:	00090513          	mv	a0,s2
    8000210c:	00001097          	auipc	ra,0x1
    80002110:	d88080e7          	jalr	-632(ra) # 80002e94 <_ZdlPv>
    80002114:	00048513          	mv	a0,s1
    80002118:	00009097          	auipc	ra,0x9
    8000211c:	680080e7          	jalr	1664(ra) # 8000b798 <_Unwind_Resume>
    80002120:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&f2, 0);
    80002124:	00048513          	mv	a0,s1
    80002128:	00001097          	auipc	ra,0x1
    8000212c:	d6c080e7          	jalr	-660(ra) # 80002e94 <_ZdlPv>
    80002130:	00090513          	mv	a0,s2
    80002134:	00009097          	auipc	ra,0x9
    80002138:	664080e7          	jalr	1636(ra) # 8000b798 <_Unwind_Resume>

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
    80002160:	d10080e7          	jalr	-752(ra) # 80002e6c <_Znwm>
    80002164:	00050493          	mv	s1,a0
    80002168:	00100593          	li	a1,1
    8000216c:	00001097          	auipc	ra,0x1
    80002170:	f3c080e7          	jalr	-196(ra) # 800030a8 <_ZN9SemaphoreC1Ej>
    80002174:	00008797          	auipc	a5,0x8
    80002178:	4a97ba23          	sd	s1,1204(a5) # 8000a628 <_ZL2s1>
    s2 = new Semaphore(0);
    8000217c:	01000513          	li	a0,16
    80002180:	00001097          	auipc	ra,0x1
    80002184:	cec080e7          	jalr	-788(ra) # 80002e6c <_Znwm>
    80002188:	00050493          	mv	s1,a0
    8000218c:	00000593          	li	a1,0
    80002190:	00001097          	auipc	ra,0x1
    80002194:	f18080e7          	jalr	-232(ra) # 800030a8 <_ZN9SemaphoreC1Ej>
    80002198:	00008797          	auipc	a5,0x8
    8000219c:	4897bc23          	sd	s1,1176(a5) # 8000a630 <_ZL2s2>
    s3 = new Semaphore(0);
    800021a0:	01000513          	li	a0,16
    800021a4:	00001097          	auipc	ra,0x1
    800021a8:	cc8080e7          	jalr	-824(ra) # 80002e6c <_Znwm>
    800021ac:	00050493          	mv	s1,a0
    800021b0:	00000593          	li	a1,0
    800021b4:	00001097          	auipc	ra,0x1
    800021b8:	ef4080e7          	jalr	-268(ra) # 800030a8 <_ZN9SemaphoreC1Ej>
    800021bc:	00008797          	auipc	a5,0x8
    800021c0:	4697be23          	sd	s1,1148(a5) # 8000a638 <_ZL2s3>
    Thread* t1 = new Thread(&f1_2, 0);
    800021c4:	02000513          	li	a0,32
    800021c8:	00001097          	auipc	ra,0x1
    800021cc:	ca4080e7          	jalr	-860(ra) # 80002e6c <_Znwm>
    800021d0:	00050993          	mv	s3,a0
    800021d4:	00000613          	li	a2,0
    800021d8:	fffff597          	auipc	a1,0xfffff
    800021dc:	5a458593          	addi	a1,a1,1444 # 8000177c <_Z4f1_2Pv>
    800021e0:	00001097          	auipc	ra,0x1
    800021e4:	e28080e7          	jalr	-472(ra) # 80003008 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&f2_2, 0);
    800021e8:	02000513          	li	a0,32
    800021ec:	00001097          	auipc	ra,0x1
    800021f0:	c80080e7          	jalr	-896(ra) # 80002e6c <_Znwm>
    800021f4:	00050913          	mv	s2,a0
    800021f8:	00000613          	li	a2,0
    800021fc:	fffff597          	auipc	a1,0xfffff
    80002200:	60c58593          	addi	a1,a1,1548 # 80001808 <_Z4f2_2Pv>
    80002204:	00001097          	auipc	ra,0x1
    80002208:	e04080e7          	jalr	-508(ra) # 80003008 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t3 = new Thread(&f3_2, 0);
    8000220c:	02000513          	li	a0,32
    80002210:	00001097          	auipc	ra,0x1
    80002214:	c5c080e7          	jalr	-932(ra) # 80002e6c <_Znwm>
    80002218:	00050493          	mv	s1,a0
    8000221c:	00000613          	li	a2,0
    80002220:	fffff597          	auipc	a1,0xfffff
    80002224:	67458593          	addi	a1,a1,1652 # 80001894 <_Z4f3_2Pv>
    80002228:	00001097          	auipc	ra,0x1
    8000222c:	de0080e7          	jalr	-544(ra) # 80003008 <_ZN6ThreadC1EPFvPvES0_>
    t3->start();
    80002230:	00048513          	mv	a0,s1
    80002234:	00001097          	auipc	ra,0x1
    80002238:	d08080e7          	jalr	-760(ra) # 80002f3c <_ZN6Thread5startEv>
    t2->start();
    8000223c:	00090513          	mv	a0,s2
    80002240:	00001097          	auipc	ra,0x1
    80002244:	cfc080e7          	jalr	-772(ra) # 80002f3c <_ZN6Thread5startEv>
    t1->start();
    80002248:	00098513          	mv	a0,s3
    8000224c:	00001097          	auipc	ra,0x1
    80002250:	cf0080e7          	jalr	-784(ra) # 80002f3c <_ZN6Thread5startEv>
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
    80002298:	c00080e7          	jalr	-1024(ra) # 80002e94 <_ZdlPv>
    8000229c:	00090513          	mv	a0,s2
    800022a0:	00009097          	auipc	ra,0x9
    800022a4:	4f8080e7          	jalr	1272(ra) # 8000b798 <_Unwind_Resume>
    800022a8:	00050913          	mv	s2,a0
    s2 = new Semaphore(0);
    800022ac:	00048513          	mv	a0,s1
    800022b0:	00001097          	auipc	ra,0x1
    800022b4:	be4080e7          	jalr	-1052(ra) # 80002e94 <_ZdlPv>
    800022b8:	00090513          	mv	a0,s2
    800022bc:	00009097          	auipc	ra,0x9
    800022c0:	4dc080e7          	jalr	1244(ra) # 8000b798 <_Unwind_Resume>
    800022c4:	00050913          	mv	s2,a0
    s3 = new Semaphore(0);
    800022c8:	00048513          	mv	a0,s1
    800022cc:	00001097          	auipc	ra,0x1
    800022d0:	bc8080e7          	jalr	-1080(ra) # 80002e94 <_ZdlPv>
    800022d4:	00090513          	mv	a0,s2
    800022d8:	00009097          	auipc	ra,0x9
    800022dc:	4c0080e7          	jalr	1216(ra) # 8000b798 <_Unwind_Resume>
    800022e0:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1_2, 0);
    800022e4:	00098513          	mv	a0,s3
    800022e8:	00001097          	auipc	ra,0x1
    800022ec:	bac080e7          	jalr	-1108(ra) # 80002e94 <_ZdlPv>
    800022f0:	00048513          	mv	a0,s1
    800022f4:	00009097          	auipc	ra,0x9
    800022f8:	4a4080e7          	jalr	1188(ra) # 8000b798 <_Unwind_Resume>
    800022fc:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&f2_2, 0);
    80002300:	00090513          	mv	a0,s2
    80002304:	00001097          	auipc	ra,0x1
    80002308:	b90080e7          	jalr	-1136(ra) # 80002e94 <_ZdlPv>
    8000230c:	00048513          	mv	a0,s1
    80002310:	00009097          	auipc	ra,0x9
    80002314:	488080e7          	jalr	1160(ra) # 8000b798 <_Unwind_Resume>
    80002318:	00050913          	mv	s2,a0
    Thread* t3 = new Thread(&f3_2, 0);
    8000231c:	00048513          	mv	a0,s1
    80002320:	00001097          	auipc	ra,0x1
    80002324:	b74080e7          	jalr	-1164(ra) # 80002e94 <_ZdlPv>
    80002328:	00090513          	mv	a0,s2
    8000232c:	00009097          	auipc	ra,0x9
    80002330:	46c080e7          	jalr	1132(ra) # 8000b798 <_Unwind_Resume>

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
    80002378:	dec080e7          	jalr	-532(ra) # 80003160 <_ZN14PeriodicThreadC1Em>
    8000237c:	00008797          	auipc	a5,0x8
    80002380:	11478793          	addi	a5,a5,276 # 8000a490 <_ZTV12TestPeriodic+0x10>
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
    800023bc:	ab4080e7          	jalr	-1356(ra) # 80002e6c <_Znwm>
    800023c0:	00050913          	mv	s2,a0
    800023c4:	03200593          	li	a1,50
    800023c8:	00000097          	auipc	ra,0x0
    800023cc:	f94080e7          	jalr	-108(ra) # 8000235c <_ZN12TestPeriodicC1Em>
    t->start();
    800023d0:	00090513          	mv	a0,s2
    800023d4:	00001097          	auipc	ra,0x1
    800023d8:	b68080e7          	jalr	-1176(ra) # 80002f3c <_ZN6Thread5startEv>
    while(true)
    800023dc:	0000006f          	j	800023dc <_Z11threadTest3v+0x40>
    800023e0:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    800023e4:	00090513          	mv	a0,s2
    800023e8:	00001097          	auipc	ra,0x1
    800023ec:	aac080e7          	jalr	-1364(ra) # 80002e94 <_ZdlPv>
    800023f0:	00048513          	mv	a0,s1
    800023f4:	00009097          	auipc	ra,0x9
    800023f8:	3a4080e7          	jalr	932(ra) # 8000b798 <_Unwind_Resume>

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
    PCB* myHandle;
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
    80002470:	ff478793          	addi	a5,a5,-12 # 8000a460 <_ZTV14PeriodicThread+0x10>
    80002474:	00f53023          	sd	a5,0(a0)
    80002478:	00001097          	auipc	ra,0x1
    8000247c:	938080e7          	jalr	-1736(ra) # 80002db0 <_ZN6ThreadD1Ev>
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
    800024ac:	fb878793          	addi	a5,a5,-72 # 8000a460 <_ZTV14PeriodicThread+0x10>
    800024b0:	00f53023          	sd	a5,0(a0)
    800024b4:	00001097          	auipc	ra,0x1
    800024b8:	8fc080e7          	jalr	-1796(ra) # 80002db0 <_ZN6ThreadD1Ev>
    800024bc:	00048513          	mv	a0,s1
    800024c0:	00001097          	auipc	ra,0x1
    800024c4:	9d4080e7          	jalr	-1580(ra) # 80002e94 <_ZdlPv>
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
    800024f0:	f7478793          	addi	a5,a5,-140 # 8000a460 <_ZTV14PeriodicThread+0x10>
    800024f4:	00f53023          	sd	a5,0(a0)
    800024f8:	00001097          	auipc	ra,0x1
    800024fc:	8b8080e7          	jalr	-1864(ra) # 80002db0 <_ZN6ThreadD1Ev>
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
    8000252c:	f3878793          	addi	a5,a5,-200 # 8000a460 <_ZTV14PeriodicThread+0x10>
    80002530:	00f53023          	sd	a5,0(a0)
    80002534:	00001097          	auipc	ra,0x1
    80002538:	87c080e7          	jalr	-1924(ra) # 80002db0 <_ZN6ThreadD1Ev>
    8000253c:	00048513          	mv	a0,s1
    80002540:	00001097          	auipc	ra,0x1
    80002544:	954080e7          	jalr	-1708(ra) # 80002e94 <_ZdlPv>
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
    80002578:	d70080e7          	jalr	-656(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    8000257c:	00001097          	auipc	ra,0x1
    80002580:	d48080e7          	jalr	-696(ra) # 800032c4 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    80002584:	00008797          	auipc	a5,0x8
    80002588:	0bc7b783          	ld	a5,188(a5) # 8000a640 <_ZN3PCB7runningE>
    8000258c:	0187b703          	ld	a4,24(a5)
    80002590:	0207b503          	ld	a0,32(a5)
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
    800025a4:	d44080e7          	jalr	-700(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>

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
    800025d8:	00e53423          	sd	a4,8(a0)
    800025dc:	00053823          	sd	zero,16(a0)
    800025e0:	00b53c23          	sd	a1,24(a0)
    800025e4:	02c53023          	sd	a2,32(a0)
    800025e8:	02d53423          	sd	a3,40(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800025ec:	000017b7          	lui	a5,0x1
    800025f0:	00f686b3          	add	a3,a3,a5
    })
    800025f4:	02d53c23          	sd	a3,56(a0)
    800025f8:	00000797          	auipc	a5,0x0
    800025fc:	f6478793          	addi	a5,a5,-156 # 8000255c <_ZN3PCB6runnerEv>
    80002600:	04f53023          	sd	a5,64(a0)
    Scheduler::put(this);
    80002604:	00000097          	auipc	ra,0x0
    80002608:	6b4080e7          	jalr	1716(ra) # 80002cb8 <_ZN9Scheduler3putEP3PCB>
    nextPCB = 0;
    8000260c:	0004b023          	sd	zero,0(s1)
}
    80002610:	01813083          	ld	ra,24(sp)
    80002614:	01013403          	ld	s0,16(sp)
    80002618:	00813483          	ld	s1,8(sp)
    8000261c:	02010113          	addi	sp,sp,32
    80002620:	00008067          	ret

0000000080002624 <_ZN3PCB5sleepEm>:
{
    80002624:	ff010113          	addi	sp,sp,-16
    80002628:	00813423          	sd	s0,8(sp)
    8000262c:	01010413          	addi	s0,sp,16
}
    80002630:	00813403          	ld	s0,8(sp)
    80002634:	01010113          	addi	sp,sp,16
    80002638:	00008067          	ret

000000008000263c <_ZN3PCB5startEv>:
{
    8000263c:	ff010113          	addi	sp,sp,-16
    80002640:	00113423          	sd	ra,8(sp)
    80002644:	00813023          	sd	s0,0(sp)
    80002648:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    8000264c:	00000097          	auipc	ra,0x0
    80002650:	66c080e7          	jalr	1644(ra) # 80002cb8 <_ZN9Scheduler3putEP3PCB>
}
    80002654:	00813083          	ld	ra,8(sp)
    80002658:	00013403          	ld	s0,0(sp)
    8000265c:	01010113          	addi	sp,sp,16
    80002660:	00008067          	ret

0000000080002664 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002664:	fe010113          	addi	sp,sp,-32
    80002668:	00113c23          	sd	ra,24(sp)
    8000266c:	00813823          	sd	s0,16(sp)
    80002670:	00913423          	sd	s1,8(sp)
    80002674:	02010413          	addi	s0,sp,32
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    80002678:	00008497          	auipc	s1,0x8
    8000267c:	fc84b483          	ld	s1,-56(s1) # 8000a640 <_ZN3PCB7runningE>
    80002680:	0304a703          	lw	a4,48(s1)
    if(old->getState() == PCB::RUNNING)
    80002684:	00100793          	li	a5,1
    80002688:	04f70063          	beq	a4,a5,800026c8 <_ZN3PCB8dispatchEv+0x64>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	680080e7          	jalr	1664(ra) # 80002d0c <_ZN9Scheduler3getEv>
    80002694:	00008797          	auipc	a5,0x8
    80002698:	faa7b623          	sd	a0,-84(a5) # 8000a640 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    8000269c:	00100793          	li	a5,1
    800026a0:	02f52823          	sw	a5,48(a0)
    PCB::running->setState(PCB::RUNNING);
    //Riscv::printString("Switching context...\n");

    PCB::contextSwitch(&old->context, &running->context);
    800026a4:	03850593          	addi	a1,a0,56
    800026a8:	03848513          	addi	a0,s1,56
    800026ac:	fffff097          	auipc	ra,0xfffff
    800026b0:	b7c080e7          	jalr	-1156(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800026b4:	01813083          	ld	ra,24(sp)
    800026b8:	01013403          	ld	s0,16(sp)
    800026bc:	00813483          	ld	s1,8(sp)
    800026c0:	02010113          	addi	sp,sp,32
    800026c4:	00008067          	ret
        Scheduler::put(old);
    800026c8:	00048513          	mv	a0,s1
    800026cc:	00000097          	auipc	ra,0x0
    800026d0:	5ec080e7          	jalr	1516(ra) # 80002cb8 <_ZN9Scheduler3putEP3PCB>
    800026d4:	fb9ff06f          	j	8000268c <_ZN3PCB8dispatchEv+0x28>

00000000800026d8 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800026d8:	ff010113          	addi	sp,sp,-16
    800026dc:	00113423          	sd	ra,8(sp)
    800026e0:	00813023          	sd	s0,0(sp)
    800026e4:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800026e8:	00001097          	auipc	ra,0x1
    800026ec:	468080e7          	jalr	1128(ra) # 80003b50 <_Z7kmallocm>
}
    800026f0:	00813083          	ld	ra,8(sp)
    800026f4:	00013403          	ld	s0,0(sp)
    800026f8:	01010113          	addi	sp,sp,16
    800026fc:	00008067          	ret

0000000080002700 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002700:	ff010113          	addi	sp,sp,-16
    80002704:	00113423          	sd	ra,8(sp)
    80002708:	00813023          	sd	s0,0(sp)
    8000270c:	01010413          	addi	s0,sp,16
    kfree(p);
    80002710:	00001097          	auipc	ra,0x1
    80002714:	468080e7          	jalr	1128(ra) # 80003b78 <_Z5kfreePv>
}
    80002718:	00813083          	ld	ra,8(sp)
    8000271c:	00013403          	ld	s0,0(sp)
    80002720:	01010113          	addi	sp,sp,16
    80002724:	00008067          	ret

0000000080002728 <_ZN3PCBD1Ev>:

PCB::~PCB() {
    80002728:	ff010113          	addi	sp,sp,-16
    8000272c:	00113423          	sd	ra,8(sp)
    80002730:	00813023          	sd	s0,0(sp)
    80002734:	01010413          	addi	s0,sp,16
    kfree(beginSP);
    80002738:	02853503          	ld	a0,40(a0)
    8000273c:	00001097          	auipc	ra,0x1
    80002740:	43c080e7          	jalr	1084(ra) # 80003b78 <_Z5kfreePv>
    80002744:	00813083          	ld	ra,8(sp)
    80002748:	00013403          	ld	s0,0(sp)
    8000274c:	01010113          	addi	sp,sp,16
    80002750:	00008067          	ret

0000000080002754 <_Z41__static_initialization_and_destruction_0ii>:

char KConsole::getCharacter()
{
    KConsole::hasCharacters->wait();
    return getChar();
}
    80002754:	00100793          	li	a5,1
    80002758:	00f50463          	beq	a0,a5,80002760 <_Z41__static_initialization_and_destruction_0ii+0xc>
    8000275c:	00008067          	ret
    80002760:	000107b7          	lui	a5,0x10
    80002764:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002768:	fef59ae3          	bne	a1,a5,8000275c <_Z41__static_initialization_and_destruction_0ii+0x8>
    8000276c:	fe010113          	addi	sp,sp,-32
    80002770:	00113c23          	sd	ra,24(sp)
    80002774:	00813823          	sd	s0,16(sp)
    80002778:	00913423          	sd	s1,8(sp)
    8000277c:	01213023          	sd	s2,0(sp)
    80002780:	02010413          	addi	s0,sp,32
KSemaphore* KConsole::hasCharacters = new KSemaphore(0);
    80002784:	01800513          	li	a0,24
    80002788:	00001097          	auipc	ra,0x1
    8000278c:	668080e7          	jalr	1640(ra) # 80003df0 <_ZN10KSemaphorenwEm>
    80002790:	00050493          	mv	s1,a0
    80002794:	00000593          	li	a1,0
    80002798:	00001097          	auipc	ra,0x1
    8000279c:	408080e7          	jalr	1032(ra) # 80003ba0 <_ZN10KSemaphoreC1Ei>
    800027a0:	00008797          	auipc	a5,0x8
    800027a4:	ea97bc23          	sd	s1,-328(a5) # 8000a658 <_ZN8KConsole13hasCharactersE>
}
    800027a8:	01813083          	ld	ra,24(sp)
    800027ac:	01013403          	ld	s0,16(sp)
    800027b0:	00813483          	ld	s1,8(sp)
    800027b4:	00013903          	ld	s2,0(sp)
    800027b8:	02010113          	addi	sp,sp,32
    800027bc:	00008067          	ret
    800027c0:	00050913          	mv	s2,a0
KSemaphore* KConsole::hasCharacters = new KSemaphore(0);
    800027c4:	00048513          	mv	a0,s1
    800027c8:	00001097          	auipc	ra,0x1
    800027cc:	650080e7          	jalr	1616(ra) # 80003e18 <_ZN10KSemaphoredlEPv>
    800027d0:	00090513          	mv	a0,s2
    800027d4:	00009097          	auipc	ra,0x9
    800027d8:	fc4080e7          	jalr	-60(ra) # 8000b798 <_Unwind_Resume>

00000000800027dc <_ZN8KConsole7putCharEc>:
{
    800027dc:	fe010113          	addi	sp,sp,-32
    800027e0:	00113c23          	sd	ra,24(sp)
    800027e4:	00813823          	sd	s0,16(sp)
    800027e8:	00913423          	sd	s1,8(sp)
    800027ec:	02010413          	addi	s0,sp,32
    800027f0:	00050493          	mv	s1,a0
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    800027f4:	01000513          	li	a0,16
    800027f8:	00001097          	auipc	ra,0x1
    800027fc:	358080e7          	jalr	856(ra) # 80003b50 <_Z7kmallocm>
    newElem->next = 0;
    80002800:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    80002804:	00950423          	sb	s1,8(a0)
    if(head == 0)
    80002808:	00008797          	auipc	a5,0x8
    8000280c:	e587b783          	ld	a5,-424(a5) # 8000a660 <_ZN8KConsole4headE>
    80002810:	02078663          	beqz	a5,8000283c <_ZN8KConsole7putCharEc+0x60>
        tail->next = newElem;
    80002814:	00008797          	auipc	a5,0x8
    80002818:	e4478793          	addi	a5,a5,-444 # 8000a658 <_ZN8KConsole13hasCharactersE>
    8000281c:	0107b703          	ld	a4,16(a5)
    80002820:	00a73023          	sd	a0,0(a4)
        tail = newElem;
    80002824:	00a7b823          	sd	a0,16(a5)
}
    80002828:	01813083          	ld	ra,24(sp)
    8000282c:	01013403          	ld	s0,16(sp)
    80002830:	00813483          	ld	s1,8(sp)
    80002834:	02010113          	addi	sp,sp,32
    80002838:	00008067          	ret
        head = tail = newElem;
    8000283c:	00008797          	auipc	a5,0x8
    80002840:	e1c78793          	addi	a5,a5,-484 # 8000a658 <_ZN8KConsole13hasCharactersE>
    80002844:	00a7b823          	sd	a0,16(a5)
    80002848:	00a7b423          	sd	a0,8(a5)
    8000284c:	fddff06f          	j	80002828 <_ZN8KConsole7putCharEc+0x4c>

0000000080002850 <_ZN8KConsole7getCharEv>:
{
    80002850:	fe010113          	addi	sp,sp,-32
    80002854:	00113c23          	sd	ra,24(sp)
    80002858:	00813823          	sd	s0,16(sp)
    8000285c:	00913423          	sd	s1,8(sp)
    80002860:	02010413          	addi	s0,sp,32
    if(head == 0)
    80002864:	00008517          	auipc	a0,0x8
    80002868:	dfc53503          	ld	a0,-516(a0) # 8000a660 <_ZN8KConsole4headE>
    8000286c:	04050263          	beqz	a0,800028b0 <_ZN8KConsole7getCharEv+0x60>
    head = head->next;
    80002870:	00053783          	ld	a5,0(a0)
    80002874:	00008717          	auipc	a4,0x8
    80002878:	def73623          	sd	a5,-532(a4) # 8000a660 <_ZN8KConsole4headE>
    if(head == 0)
    8000287c:	02078463          	beqz	a5,800028a4 <_ZN8KConsole7getCharEv+0x54>
    char c = ret->data;
    80002880:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    80002884:	00001097          	auipc	ra,0x1
    80002888:	2f4080e7          	jalr	756(ra) # 80003b78 <_Z5kfreePv>
}
    8000288c:	00048513          	mv	a0,s1
    80002890:	01813083          	ld	ra,24(sp)
    80002894:	01013403          	ld	s0,16(sp)
    80002898:	00813483          	ld	s1,8(sp)
    8000289c:	02010113          	addi	sp,sp,32
    800028a0:	00008067          	ret
        tail = 0;
    800028a4:	00008797          	auipc	a5,0x8
    800028a8:	dc07b223          	sd	zero,-572(a5) # 8000a668 <_ZN8KConsole4tailE>
    800028ac:	fd5ff06f          	j	80002880 <_ZN8KConsole7getCharEv+0x30>
        return 0;
    800028b0:	00000493          	li	s1,0
    800028b4:	fd9ff06f          	j	8000288c <_ZN8KConsole7getCharEv+0x3c>

00000000800028b8 <_ZN8KConsole12putCharacterEc>:
{
    800028b8:	ff010113          	addi	sp,sp,-16
    800028bc:	00113423          	sd	ra,8(sp)
    800028c0:	00813023          	sd	s0,0(sp)
    800028c4:	01010413          	addi	s0,sp,16
    putChar(c);
    800028c8:	00000097          	auipc	ra,0x0
    800028cc:	f14080e7          	jalr	-236(ra) # 800027dc <_ZN8KConsole7putCharEc>
    hasCharacters->signal();
    800028d0:	00008517          	auipc	a0,0x8
    800028d4:	d8853503          	ld	a0,-632(a0) # 8000a658 <_ZN8KConsole13hasCharactersE>
    800028d8:	00001097          	auipc	ra,0x1
    800028dc:	4d0080e7          	jalr	1232(ra) # 80003da8 <_ZN10KSemaphore6signalEv>
}
    800028e0:	00813083          	ld	ra,8(sp)
    800028e4:	00013403          	ld	s0,0(sp)
    800028e8:	01010113          	addi	sp,sp,16
    800028ec:	00008067          	ret

00000000800028f0 <_ZN8KConsole12getCharacterEv>:
{
    800028f0:	ff010113          	addi	sp,sp,-16
    800028f4:	00113423          	sd	ra,8(sp)
    800028f8:	00813023          	sd	s0,0(sp)
    800028fc:	01010413          	addi	s0,sp,16
    KConsole::hasCharacters->wait();
    80002900:	00008517          	auipc	a0,0x8
    80002904:	d5853503          	ld	a0,-680(a0) # 8000a658 <_ZN8KConsole13hasCharactersE>
    80002908:	00001097          	auipc	ra,0x1
    8000290c:	340080e7          	jalr	832(ra) # 80003c48 <_ZN10KSemaphore4waitEv>
    return getChar();
    80002910:	00000097          	auipc	ra,0x0
    80002914:	f40080e7          	jalr	-192(ra) # 80002850 <_ZN8KConsole7getCharEv>
}
    80002918:	00813083          	ld	ra,8(sp)
    8000291c:	00013403          	ld	s0,0(sp)
    80002920:	01010113          	addi	sp,sp,16
    80002924:	00008067          	ret

0000000080002928 <_GLOBAL__sub_I__ZN8KConsole4headE>:
    80002928:	ff010113          	addi	sp,sp,-16
    8000292c:	00113423          	sd	ra,8(sp)
    80002930:	00813023          	sd	s0,0(sp)
    80002934:	01010413          	addi	s0,sp,16
    80002938:	000105b7          	lui	a1,0x10
    8000293c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002940:	00100513          	li	a0,1
    80002944:	00000097          	auipc	ra,0x0
    80002948:	e10080e7          	jalr	-496(ra) # 80002754 <_Z41__static_initialization_and_destruction_0ii>
    8000294c:	00813083          	ld	ra,8(sp)
    80002950:	00013403          	ld	s0,0(sp)
    80002954:	01010113          	addi	sp,sp,16
    80002958:	00008067          	ret

000000008000295c <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00813423          	sd	s0,8(sp)
    80002964:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80002968:	00008797          	auipc	a5,0x8
    8000296c:	c607b783          	ld	a5,-928(a5) # 8000a5c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002970:	0007b583          	ld	a1,0(a5)
    80002974:	00500793          	li	a5,5
    80002978:	02f5a823          	sw	a5,48(a1)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    8000297c:	00008797          	auipc	a5,0x8
    80002980:	cf47b783          	ld	a5,-780(a5) # 8000a670 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80002984:	00000613          	li	a2,0
    while(curr != 0)
    80002988:	02078063          	beqz	a5,800029a8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    uint64 getTimeToSleep() {return timeToSleep;}
    8000298c:	0105b683          	ld	a3,16(a1)
    80002990:	0107b703          	ld	a4,16(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80002994:	00e6e863          	bltu	a3,a4,800029a4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80002998:	00078613          	mv	a2,a5
        curr=curr->nextPCB;
    8000299c:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    800029a0:	fe9ff06f          	j	80002988 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800029a4:	00f5b023          	sd	a5,0(a1)
    }

    if(prev == 0)
    800029a8:	02060863          	beqz	a2,800029d8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x7c>
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    800029ac:	00008797          	auipc	a5,0x8
    800029b0:	c1c7b783          	ld	a5,-996(a5) # 8000a5c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800029b4:	0007b783          	ld	a5,0(a5)
    800029b8:	0107b703          	ld	a4,16(a5)
    800029bc:	01063683          	ld	a3,16(a2)
    800029c0:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800029c4:	00e7b823          	sd	a4,16(a5)
        prev->nextPCB = PCB::running;
    800029c8:	00f63023          	sd	a5,0(a2)
    }
}
    800029cc:	00813403          	ld	s0,8(sp)
    800029d0:	01010113          	addi	sp,sp,16
    800029d4:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800029d8:	00008797          	auipc	a5,0x8
    800029dc:	bf07b783          	ld	a5,-1040(a5) # 8000a5c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800029e0:	0007b783          	ld	a5,0(a5)
    800029e4:	00008717          	auipc	a4,0x8
    800029e8:	c8f73623          	sd	a5,-884(a4) # 8000a670 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    800029ec:	0007b703          	ld	a4,0(a5)
    800029f0:	fc070ee3          	beqz	a4,800029cc <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    uint64 getTimeToSleep() {return timeToSleep;}
    800029f4:	01073683          	ld	a3,16(a4)
    800029f8:	0107b783          	ld	a5,16(a5)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    800029fc:	40f687b3          	sub	a5,a3,a5
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002a00:	00f73823          	sd	a5,16(a4)
    80002a04:	fc9ff06f          	j	800029cc <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>

0000000080002a08 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    80002a08:	00008517          	auipc	a0,0x8
    80002a0c:	c6853503          	ld	a0,-920(a0) # 8000a670 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002a10:	08050863          	beqz	a0,80002aa0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002a14:	01053783          	ld	a5,16(a0)
    {
        //Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    80002a18:	00100713          	li	a4,1
    80002a1c:	00e78863          	beq	a5,a4,80002a2c <_ZN12SleepPCBList13tryToWakePCBsEv+0x24>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    80002a20:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002a24:	00f53823          	sd	a5,16(a0)
    80002a28:	00008067          	ret
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002a2c:	06050a63          	beqz	a0,80002aa0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    80002a30:	00008797          	auipc	a5,0x8
    80002a34:	c407b783          	ld	a5,-960(a5) # 8000a670 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002a38:	00a78663          	beq	a5,a0,80002a44 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002a3c:	01053783          	ld	a5,16(a0)
    80002a40:	06079063          	bnez	a5,80002aa0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
{
    80002a44:	fe010113          	addi	sp,sp,-32
    80002a48:	00113c23          	sd	ra,24(sp)
    80002a4c:	00813823          	sd	s0,16(sp)
    80002a50:	00913423          	sd	s1,8(sp)
    80002a54:	02010413          	addi	s0,sp,32
            curr = curr->nextPCB;
    80002a58:	00053483          	ld	s1,0(a0)
            old->nextPCB = 0;
    80002a5c:	00053023          	sd	zero,0(a0)
            Scheduler::put(old);
    80002a60:	00000097          	auipc	ra,0x0
    80002a64:	258080e7          	jalr	600(ra) # 80002cb8 <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    80002a68:	00008797          	auipc	a5,0x8
    80002a6c:	c097b423          	sd	s1,-1016(a5) # 8000a670 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80002a70:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002a74:	00048c63          	beqz	s1,80002a8c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80002a78:	00008797          	auipc	a5,0x8
    80002a7c:	bf87b783          	ld	a5,-1032(a5) # 8000a670 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002a80:	fc978ce3          	beq	a5,s1,80002a58 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80002a84:	0104b783          	ld	a5,16(s1)
    80002a88:	fc0788e3          	beqz	a5,80002a58 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    }
}
    80002a8c:	01813083          	ld	ra,24(sp)
    80002a90:	01013403          	ld	s0,16(sp)
    80002a94:	00813483          	ld	s1,8(sp)
    80002a98:	02010113          	addi	sp,sp,32
    80002a9c:	00008067          	ret
    80002aa0:	00008067          	ret

0000000080002aa4 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80002aa4:	fe010113          	addi	sp,sp,-32
    80002aa8:	00113c23          	sd	ra,24(sp)
    80002aac:	00813823          	sd	s0,16(sp)
    80002ab0:	00913423          	sd	s1,8(sp)
    80002ab4:	01213023          	sd	s2,0(sp)
    80002ab8:	02010413          	addi	s0,sp,32
    80002abc:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80002ac0:	00053503          	ld	a0,0(a0)
    80002ac4:	00853903          	ld	s2,8(a0)
    kfree(first);
    80002ac8:	00001097          	auipc	ra,0x1
    80002acc:	0b0080e7          	jalr	176(ra) # 80003b78 <_Z5kfreePv>
    first = newFirst;
    80002ad0:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80002ad4:	00090e63          	beqz	s2,80002af0 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80002ad8:	01813083          	ld	ra,24(sp)
    80002adc:	01013403          	ld	s0,16(sp)
    80002ae0:	00813483          	ld	s1,8(sp)
    80002ae4:	00013903          	ld	s2,0(sp)
    80002ae8:	02010113          	addi	sp,sp,32
    80002aec:	00008067          	ret
        first = last = 0;
    80002af0:	0004b423          	sd	zero,8(s1)
    80002af4:	0004b023          	sd	zero,0(s1)
}
    80002af8:	fe1ff06f          	j	80002ad8 <_ZN5Queue3popEv+0x34>

0000000080002afc <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    80002afc:	fe010113          	addi	sp,sp,-32
    80002b00:	00113c23          	sd	ra,24(sp)
    80002b04:	00813823          	sd	s0,16(sp)
    80002b08:	00913423          	sd	s1,8(sp)
    80002b0c:	01213023          	sd	s2,0(sp)
    80002b10:	02010413          	addi	s0,sp,32
    80002b14:	00050493          	mv	s1,a0
    80002b18:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80002b1c:	01000513          	li	a0,16
    80002b20:	00001097          	auipc	ra,0x1
    80002b24:	030080e7          	jalr	48(ra) # 80003b50 <_Z7kmallocm>
    newElem->data = t;
    80002b28:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80002b2c:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80002b30:	0004b783          	ld	a5,0(s1)
    80002b34:	02078463          	beqz	a5,80002b5c <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80002b38:	0084b783          	ld	a5,8(s1)
    80002b3c:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80002b40:	00a4b423          	sd	a0,8(s1)
    }
}
    80002b44:	01813083          	ld	ra,24(sp)
    80002b48:	01013403          	ld	s0,16(sp)
    80002b4c:	00813483          	ld	s1,8(sp)
    80002b50:	00013903          	ld	s2,0(sp)
    80002b54:	02010113          	addi	sp,sp,32
    80002b58:	00008067          	ret
        first = newElem;
    80002b5c:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    80002b60:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80002b64:	00053423          	sd	zero,8(a0)
    80002b68:	0004b783          	ld	a5,0(s1)
    80002b6c:	0007b423          	sd	zero,8(a5)
    80002b70:	fd5ff06f          	j	80002b44 <_ZN5Queue4pushEP3PCB+0x48>

0000000080002b74 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    80002b74:	ff010113          	addi	sp,sp,-16
    80002b78:	00813423          	sd	s0,8(sp)
    80002b7c:	01010413          	addi	s0,sp,16
    if(first == 0)
    80002b80:	00053503          	ld	a0,0(a0)
    80002b84:	00050463          	beqz	a0,80002b8c <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80002b88:	00053503          	ld	a0,0(a0)
}
    80002b8c:	00813403          	ld	s0,8(sp)
    80002b90:	01010113          	addi	sp,sp,16
    80002b94:	00008067          	ret

0000000080002b98 <_ZN5QueueC1Ev>:

Queue::Queue() {
    80002b98:	ff010113          	addi	sp,sp,-16
    80002b9c:	00813423          	sd	s0,8(sp)
    80002ba0:	01010413          	addi	s0,sp,16
    first = last = 0;
    80002ba4:	00053423          	sd	zero,8(a0)
    80002ba8:	00053023          	sd	zero,0(a0)
}
    80002bac:	00813403          	ld	s0,8(sp)
    80002bb0:	01010113          	addi	sp,sp,16
    80002bb4:	00008067          	ret

0000000080002bb8 <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    80002bb8:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80002bbc:	04050063          	beqz	a0,80002bfc <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    80002bc0:	fe010113          	addi	sp,sp,-32
    80002bc4:	00113c23          	sd	ra,24(sp)
    80002bc8:	00813823          	sd	s0,16(sp)
    80002bcc:	00913423          	sd	s1,8(sp)
    80002bd0:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    80002bd4:	00853483          	ld	s1,8(a0)
        kfree(old);
    80002bd8:	00001097          	auipc	ra,0x1
    80002bdc:	fa0080e7          	jalr	-96(ra) # 80003b78 <_Z5kfreePv>
        curr = curr->next;
    80002be0:	00048513          	mv	a0,s1
    while(curr != 0)
    80002be4:	fe0498e3          	bnez	s1,80002bd4 <_ZN5QueueD1Ev+0x1c>
    }
}
    80002be8:	01813083          	ld	ra,24(sp)
    80002bec:	01013403          	ld	s0,16(sp)
    80002bf0:	00813483          	ld	s1,8(sp)
    80002bf4:	02010113          	addi	sp,sp,32
    80002bf8:	00008067          	ret
    80002bfc:	00008067          	ret

0000000080002c00 <_ZN5Queue4sizeEv>:

int Queue::size() {
    80002c00:	ff010113          	addi	sp,sp,-16
    80002c04:	00813423          	sd	s0,8(sp)
    80002c08:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80002c0c:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    80002c10:	00000513          	li	a0,0
    while(curr != 0)
    80002c14:	00078863          	beqz	a5,80002c24 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    80002c18:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80002c1c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002c20:	ff5ff06f          	j	80002c14 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80002c24:	00813403          	ld	s0,8(sp)
    80002c28:	01010113          	addi	sp,sp,16
    80002c2c:	00008067          	ret

0000000080002c30 <_ZN9SchedulernwEm>:
PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;


void *Scheduler::operator new(size_t size)
{
    80002c30:	ff010113          	addi	sp,sp,-16
    80002c34:	00113423          	sd	ra,8(sp)
    80002c38:	00813023          	sd	s0,0(sp)
    80002c3c:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80002c40:	00001097          	auipc	ra,0x1
    80002c44:	f10080e7          	jalr	-240(ra) # 80003b50 <_Z7kmallocm>
}
    80002c48:	00813083          	ld	ra,8(sp)
    80002c4c:	00013403          	ld	s0,0(sp)
    80002c50:	01010113          	addi	sp,sp,16
    80002c54:	00008067          	ret

0000000080002c58 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80002c58:	ff010113          	addi	sp,sp,-16
    80002c5c:	00113423          	sd	ra,8(sp)
    80002c60:	00813023          	sd	s0,0(sp)
    80002c64:	01010413          	addi	s0,sp,16
    kfree(p);
    80002c68:	00001097          	auipc	ra,0x1
    80002c6c:	f10080e7          	jalr	-240(ra) # 80003b78 <_Z5kfreePv>
}
    80002c70:	00813083          	ld	ra,8(sp)
    80002c74:	00013403          	ld	s0,0(sp)
    80002c78:	01010113          	addi	sp,sp,16
    80002c7c:	00008067          	ret

0000000080002c80 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80002c80:	ff010113          	addi	sp,sp,-16
    80002c84:	00813423          	sd	s0,8(sp)
    80002c88:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80002c8c:	00008797          	auipc	a5,0x8
    80002c90:	9ec7b783          	ld	a5,-1556(a5) # 8000a678 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80002c94:	00000513          	li	a0,0
    while(curr != 0)
    80002c98:	00078863          	beqz	a5,80002ca8 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80002c9c:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80002ca0:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    80002ca4:	ff5ff06f          	j	80002c98 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80002ca8:	0005051b          	sext.w	a0,a0
    80002cac:	00813403          	ld	s0,8(sp)
    80002cb0:	01010113          	addi	sp,sp,16
    80002cb4:	00008067          	ret

0000000080002cb8 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80002cb8:	ff010113          	addi	sp,sp,-16
    80002cbc:	00813423          	sd	s0,8(sp)
    80002cc0:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80002cc4:	02052823          	sw	zero,48(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80002cc8:	00053023          	sd	zero,0(a0)
    if(schedulerPCBHead == 0)
    80002ccc:	00008797          	auipc	a5,0x8
    80002cd0:	9ac7b783          	ld	a5,-1620(a5) # 8000a678 <_ZN9Scheduler16schedulerPCBHeadE>
    80002cd4:	02078263          	beqz	a5,80002cf8 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80002cd8:	00008797          	auipc	a5,0x8
    80002cdc:	9a078793          	addi	a5,a5,-1632 # 8000a678 <_ZN9Scheduler16schedulerPCBHeadE>
    80002ce0:	0087b703          	ld	a4,8(a5)
    80002ce4:	00a73023          	sd	a0,0(a4)
        schedulerPCBTail = pcb;
    80002ce8:	00a7b423          	sd	a0,8(a5)
    }
}
    80002cec:	00813403          	ld	s0,8(sp)
    80002cf0:	01010113          	addi	sp,sp,16
    80002cf4:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80002cf8:	00008797          	auipc	a5,0x8
    80002cfc:	98078793          	addi	a5,a5,-1664 # 8000a678 <_ZN9Scheduler16schedulerPCBHeadE>
    80002d00:	00a7b423          	sd	a0,8(a5)
    80002d04:	00a7b023          	sd	a0,0(a5)
    80002d08:	fe5ff06f          	j	80002cec <_ZN9Scheduler3putEP3PCB+0x34>

0000000080002d0c <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80002d0c:	ff010113          	addi	sp,sp,-16
    80002d10:	00813423          	sd	s0,8(sp)
    80002d14:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80002d18:	00008517          	auipc	a0,0x8
    80002d1c:	96053503          	ld	a0,-1696(a0) # 8000a678 <_ZN9Scheduler16schedulerPCBHeadE>
    80002d20:	00050c63          	beqz	a0,80002d38 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80002d24:	00053783          	ld	a5,0(a0)
    80002d28:	00078e63          	beqz	a5,80002d44 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80002d2c:	00008717          	auipc	a4,0x8
    80002d30:	94f73623          	sd	a5,-1716(a4) # 8000a678 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80002d34:	00053023          	sd	zero,0(a0)
    return retval;
}
    80002d38:	00813403          	ld	s0,8(sp)
    80002d3c:	01010113          	addi	sp,sp,16
    80002d40:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80002d44:	00008797          	auipc	a5,0x8
    80002d48:	93478793          	addi	a5,a5,-1740 # 8000a678 <_ZN9Scheduler16schedulerPCBHeadE>
    80002d4c:	0007b423          	sd	zero,8(a5)
    80002d50:	0007b023          	sd	zero,0(a5)
    80002d54:	fe1ff06f          	j	80002d34 <_ZN9Scheduler3getEv+0x28>

0000000080002d58 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80002d58:	ff010113          	addi	sp,sp,-16
    80002d5c:	00113423          	sd	ra,8(sp)
    80002d60:	00813023          	sd	s0,0(sp)
    80002d64:	01010413          	addi	s0,sp,16
    Riscv::initSystem();
    80002d68:	00000097          	auipc	ra,0x0
    80002d6c:	454080e7          	jalr	1108(ra) # 800031bc <_ZN5Riscv10initSystemEv>

    Riscv::enableInterrupts();
    80002d70:	00000097          	auipc	ra,0x0
    80002d74:	4ec080e7          	jalr	1260(ra) # 8000325c <_ZN5Riscv16enableInterruptsEv>
    //todo
    //go to unprivileged mode
    //userMain();
    myTests();
    80002d78:	fffff097          	auipc	ra,0xfffff
    80002d7c:	69c080e7          	jalr	1692(ra) # 80002414 <_Z7myTestsv>

    Riscv::disableInterrupts();
    80002d80:	00000097          	auipc	ra,0x0
    80002d84:	4fc080e7          	jalr	1276(ra) # 8000327c <_ZN5Riscv17disableInterruptsEv>

    Riscv::endSystem();
    80002d88:	00000097          	auipc	ra,0x0
    80002d8c:	514080e7          	jalr	1300(ra) # 8000329c <_ZN5Riscv9endSystemEv>

    Riscv::printString("End...");
    80002d90:	00005517          	auipc	a0,0x5
    80002d94:	3d050513          	addi	a0,a0,976 # 80008160 <CONSOLE_STATUS+0x150>
    80002d98:	00000097          	auipc	ra,0x0
    80002d9c:	54c080e7          	jalr	1356(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
    80002da0:	00813083          	ld	ra,8(sp)
    80002da4:	00013403          	ld	s0,0(sp)
    80002da8:	01010113          	addi	sp,sp,16
    80002dac:	00008067          	ret

0000000080002db0 <_ZN6ThreadD1Ev>:
    Riscv::printString("Thread runner started...\n");
    Thread* thr = (Thread*)t;
    thr->run();
}

Thread::~Thread() {
    80002db0:	ff010113          	addi	sp,sp,-16
    80002db4:	00113423          	sd	ra,8(sp)
    80002db8:	00813023          	sd	s0,0(sp)
    80002dbc:	01010413          	addi	s0,sp,16
    80002dc0:	00007797          	auipc	a5,0x7
    80002dc4:	70878793          	addi	a5,a5,1800 # 8000a4c8 <_ZTV6Thread+0x10>
    80002dc8:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80002dcc:	00853503          	ld	a0,8(a0)
    80002dd0:	ffffe097          	auipc	ra,0xffffe
    80002dd4:	4a8080e7          	jalr	1192(ra) # 80001278 <mem_free>
}
    80002dd8:	00813083          	ld	ra,8(sp)
    80002ddc:	00013403          	ld	s0,0(sp)
    80002de0:	01010113          	addi	sp,sp,16
    80002de4:	00008067          	ret

0000000080002de8 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal((void*)myHandle);
}

Semaphore::~Semaphore() {
    80002de8:	ff010113          	addi	sp,sp,-16
    80002dec:	00113423          	sd	ra,8(sp)
    80002df0:	00813023          	sd	s0,0(sp)
    80002df4:	01010413          	addi	s0,sp,16
    80002df8:	00007797          	auipc	a5,0x7
    80002dfc:	6f878793          	addi	a5,a5,1784 # 8000a4f0 <_ZTV9Semaphore+0x10>
    80002e00:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80002e04:	00853503          	ld	a0,8(a0)
    80002e08:	ffffe097          	auipc	ra,0xffffe
    80002e0c:	470080e7          	jalr	1136(ra) # 80001278 <mem_free>
}
    80002e10:	00813083          	ld	ra,8(sp)
    80002e14:	00013403          	ld	s0,0(sp)
    80002e18:	01010113          	addi	sp,sp,16
    80002e1c:	00008067          	ret

0000000080002e20 <_ZN6Thread6runnerEPv>:
void Thread::runner(void *t) {
    80002e20:	fe010113          	addi	sp,sp,-32
    80002e24:	00113c23          	sd	ra,24(sp)
    80002e28:	00813823          	sd	s0,16(sp)
    80002e2c:	00913423          	sd	s1,8(sp)
    80002e30:	02010413          	addi	s0,sp,32
    80002e34:	00050493          	mv	s1,a0
    Riscv::printString("Thread runner started...\n");
    80002e38:	00005517          	auipc	a0,0x5
    80002e3c:	33050513          	addi	a0,a0,816 # 80008168 <CONSOLE_STATUS+0x158>
    80002e40:	00000097          	auipc	ra,0x0
    80002e44:	4a4080e7          	jalr	1188(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>
    thr->run();
    80002e48:	0004b783          	ld	a5,0(s1)
    80002e4c:	0107b783          	ld	a5,16(a5)
    80002e50:	00048513          	mv	a0,s1
    80002e54:	000780e7          	jalr	a5
}
    80002e58:	01813083          	ld	ra,24(sp)
    80002e5c:	01013403          	ld	s0,16(sp)
    80002e60:	00813483          	ld	s1,8(sp)
    80002e64:	02010113          	addi	sp,sp,32
    80002e68:	00008067          	ret

0000000080002e6c <_Znwm>:
{
    80002e6c:	ff010113          	addi	sp,sp,-16
    80002e70:	00113423          	sd	ra,8(sp)
    80002e74:	00813023          	sd	s0,0(sp)
    80002e78:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002e7c:	ffffe097          	auipc	ra,0xffffe
    80002e80:	3cc080e7          	jalr	972(ra) # 80001248 <mem_alloc>
}
    80002e84:	00813083          	ld	ra,8(sp)
    80002e88:	00013403          	ld	s0,0(sp)
    80002e8c:	01010113          	addi	sp,sp,16
    80002e90:	00008067          	ret

0000000080002e94 <_ZdlPv>:
{
    80002e94:	ff010113          	addi	sp,sp,-16
    80002e98:	00113423          	sd	ra,8(sp)
    80002e9c:	00813023          	sd	s0,0(sp)
    80002ea0:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002ea4:	ffffe097          	auipc	ra,0xffffe
    80002ea8:	3d4080e7          	jalr	980(ra) # 80001278 <mem_free>
}
    80002eac:	00813083          	ld	ra,8(sp)
    80002eb0:	00013403          	ld	s0,0(sp)
    80002eb4:	01010113          	addi	sp,sp,16
    80002eb8:	00008067          	ret

0000000080002ebc <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002ebc:	fe010113          	addi	sp,sp,-32
    80002ec0:	00113c23          	sd	ra,24(sp)
    80002ec4:	00813823          	sd	s0,16(sp)
    80002ec8:	00913423          	sd	s1,8(sp)
    80002ecc:	02010413          	addi	s0,sp,32
    80002ed0:	00050493          	mv	s1,a0
}
    80002ed4:	00000097          	auipc	ra,0x0
    80002ed8:	edc080e7          	jalr	-292(ra) # 80002db0 <_ZN6ThreadD1Ev>
    80002edc:	00048513          	mv	a0,s1
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	fb4080e7          	jalr	-76(ra) # 80002e94 <_ZdlPv>
    80002ee8:	01813083          	ld	ra,24(sp)
    80002eec:	01013403          	ld	s0,16(sp)
    80002ef0:	00813483          	ld	s1,8(sp)
    80002ef4:	02010113          	addi	sp,sp,32
    80002ef8:	00008067          	ret

0000000080002efc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002efc:	fe010113          	addi	sp,sp,-32
    80002f00:	00113c23          	sd	ra,24(sp)
    80002f04:	00813823          	sd	s0,16(sp)
    80002f08:	00913423          	sd	s1,8(sp)
    80002f0c:	02010413          	addi	s0,sp,32
    80002f10:	00050493          	mv	s1,a0
}
    80002f14:	00000097          	auipc	ra,0x0
    80002f18:	ed4080e7          	jalr	-300(ra) # 80002de8 <_ZN9SemaphoreD1Ev>
    80002f1c:	00048513          	mv	a0,s1
    80002f20:	00000097          	auipc	ra,0x0
    80002f24:	f74080e7          	jalr	-140(ra) # 80002e94 <_ZdlPv>
    80002f28:	01813083          	ld	ra,24(sp)
    80002f2c:	01013403          	ld	s0,16(sp)
    80002f30:	00813483          	ld	s1,8(sp)
    80002f34:	02010113          	addi	sp,sp,32
    80002f38:	00008067          	ret

0000000080002f3c <_ZN6Thread5startEv>:
    if(myHandle == 0)
    80002f3c:	00853783          	ld	a5,8(a0)
    80002f40:	02079c63          	bnez	a5,80002f78 <_ZN6Thread5startEv+0x3c>
{
    80002f44:	ff010113          	addi	sp,sp,-16
    80002f48:	00113423          	sd	ra,8(sp)
    80002f4c:	00813023          	sd	s0,0(sp)
    80002f50:	01010413          	addi	s0,sp,16
        return thread_create((void**)&myHandle, f, args);
    80002f54:	01853603          	ld	a2,24(a0)
    80002f58:	01053583          	ld	a1,16(a0)
    80002f5c:	00850513          	addi	a0,a0,8
    80002f60:	ffffe097          	auipc	ra,0xffffe
    80002f64:	344080e7          	jalr	836(ra) # 800012a4 <thread_create>
}
    80002f68:	00813083          	ld	ra,8(sp)
    80002f6c:	00013403          	ld	s0,0(sp)
    80002f70:	01010113          	addi	sp,sp,16
    80002f74:	00008067          	ret
        return -1;
    80002f78:	fff00513          	li	a0,-1
}
    80002f7c:	00008067          	ret

0000000080002f80 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002f80:	ff010113          	addi	sp,sp,-16
    80002f84:	00113423          	sd	ra,8(sp)
    80002f88:	00813023          	sd	s0,0(sp)
    80002f8c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002f90:	ffffe097          	auipc	ra,0xffffe
    80002f94:	394080e7          	jalr	916(ra) # 80001324 <thread_dispatch>
}
    80002f98:	00813083          	ld	ra,8(sp)
    80002f9c:	00013403          	ld	s0,0(sp)
    80002fa0:	01010113          	addi	sp,sp,16
    80002fa4:	00008067          	ret

0000000080002fa8 <_ZN6Thread5sleepEm>:
void Thread::sleep(time_t time) {
    80002fa8:	ff010113          	addi	sp,sp,-16
    80002fac:	00113423          	sd	ra,8(sp)
    80002fb0:	00813023          	sd	s0,0(sp)
    80002fb4:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80002fb8:	ffffe097          	auipc	ra,0xffffe
    80002fbc:	470080e7          	jalr	1136(ra) # 80001428 <time_sleep>
}
    80002fc0:	00813083          	ld	ra,8(sp)
    80002fc4:	00013403          	ld	s0,0(sp)
    80002fc8:	01010113          	addi	sp,sp,16
    80002fcc:	00008067          	ret

0000000080002fd0 <_ZN14PeriodicThread6runnerEPv>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    this->time = period;
}

void PeriodicThread::runner(void* pt)
{
    80002fd0:	fe010113          	addi	sp,sp,-32
    80002fd4:	00113c23          	sd	ra,24(sp)
    80002fd8:	00813823          	sd	s0,16(sp)
    80002fdc:	00913423          	sd	s1,8(sp)
    80002fe0:	02010413          	addi	s0,sp,32
    80002fe4:	00050493          	mv	s1,a0
    PeriodicThread* pThread = (PeriodicThread*)pt;
    while(true)
    {
        pThread->periodicActivation();
    80002fe8:	0004b783          	ld	a5,0(s1)
    80002fec:	0187b783          	ld	a5,24(a5)
    80002ff0:	00048513          	mv	a0,s1
    80002ff4:	000780e7          	jalr	a5
        Thread::sleep(pThread->time);
    80002ff8:	0204b503          	ld	a0,32(s1)
    80002ffc:	00000097          	auipc	ra,0x0
    80003000:	fac080e7          	jalr	-84(ra) # 80002fa8 <_ZN6Thread5sleepEm>
    while(true)
    80003004:	fe5ff06f          	j	80002fe8 <_ZN14PeriodicThread6runnerEPv+0x18>

0000000080003008 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args) {
    80003008:	ff010113          	addi	sp,sp,-16
    8000300c:	00813423          	sd	s0,8(sp)
    80003010:	01010413          	addi	s0,sp,16
    80003014:	00007797          	auipc	a5,0x7
    80003018:	4b478793          	addi	a5,a5,1204 # 8000a4c8 <_ZTV6Thread+0x10>
    8000301c:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003020:	00053423          	sd	zero,8(a0)
    f = body;
    80003024:	00b53823          	sd	a1,16(a0)
    this->args = args;
    80003028:	00c53c23          	sd	a2,24(a0)
}
    8000302c:	00813403          	ld	s0,8(sp)
    80003030:	01010113          	addi	sp,sp,16
    80003034:	00008067          	ret

0000000080003038 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003038:	ff010113          	addi	sp,sp,-16
    8000303c:	00813423          	sd	s0,8(sp)
    80003040:	01010413          	addi	s0,sp,16
    80003044:	00007797          	auipc	a5,0x7
    80003048:	48478793          	addi	a5,a5,1156 # 8000a4c8 <_ZTV6Thread+0x10>
    8000304c:	00f53023          	sd	a5,0(a0)
    f = &Thread::runner;
    80003050:	00000797          	auipc	a5,0x0
    80003054:	dd078793          	addi	a5,a5,-560 # 80002e20 <_ZN6Thread6runnerEPv>
    80003058:	00f53823          	sd	a5,16(a0)
    myHandle = 0;
    8000305c:	00053423          	sd	zero,8(a0)
    args = (void*)this;
    80003060:	00a53c23          	sd	a0,24(a0)
}
    80003064:	00813403          	ld	s0,8(sp)
    80003068:	01010113          	addi	sp,sp,16
    8000306c:	00008067          	ret

0000000080003070 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003070:	00853503          	ld	a0,8(a0)
    80003074:	02050663          	beqz	a0,800030a0 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80003078:	ff010113          	addi	sp,sp,-16
    8000307c:	00113423          	sd	ra,8(sp)
    80003080:	00813023          	sd	s0,0(sp)
    80003084:	01010413          	addi	s0,sp,16
    return sem_wait((void *) myHandle);
    80003088:	ffffe097          	auipc	ra,0xffffe
    8000308c:	348080e7          	jalr	840(ra) # 800013d0 <sem_wait>
}
    80003090:	00813083          	ld	ra,8(sp)
    80003094:	00013403          	ld	s0,0(sp)
    80003098:	01010113          	addi	sp,sp,16
    8000309c:	00008067          	ret
        return -1;
    800030a0:	fff00513          	li	a0,-1
}
    800030a4:	00008067          	ret

00000000800030a8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800030a8:	fe010113          	addi	sp,sp,-32
    800030ac:	00113c23          	sd	ra,24(sp)
    800030b0:	00813823          	sd	s0,16(sp)
    800030b4:	00913423          	sd	s1,8(sp)
    800030b8:	02010413          	addi	s0,sp,32
    800030bc:	00050493          	mv	s1,a0
    800030c0:	00007797          	auipc	a5,0x7
    800030c4:	43078793          	addi	a5,a5,1072 # 8000a4f0 <_ZTV9Semaphore+0x10>
    800030c8:	00f53023          	sd	a5,0(a0)
    int retval = sem_open((void**)&myHandle, init);
    800030cc:	00850513          	addi	a0,a0,8
    800030d0:	ffffe097          	auipc	ra,0xffffe
    800030d4:	29c080e7          	jalr	668(ra) # 8000136c <sem_open>
    if(retval != 0)
    800030d8:	00050463          	beqz	a0,800030e0 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    800030dc:	0004b423          	sd	zero,8(s1)
}
    800030e0:	01813083          	ld	ra,24(sp)
    800030e4:	01013403          	ld	s0,16(sp)
    800030e8:	00813483          	ld	s1,8(sp)
    800030ec:	02010113          	addi	sp,sp,32
    800030f0:	00008067          	ret

00000000800030f4 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    800030f4:	00853503          	ld	a0,8(a0)
    800030f8:	02050663          	beqz	a0,80003124 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    800030fc:	ff010113          	addi	sp,sp,-16
    80003100:	00113423          	sd	ra,8(sp)
    80003104:	00813023          	sd	s0,0(sp)
    80003108:	01010413          	addi	s0,sp,16
    return sem_signal((void*)myHandle);
    8000310c:	ffffe097          	auipc	ra,0xffffe
    80003110:	2f0080e7          	jalr	752(ra) # 800013fc <sem_signal>
}
    80003114:	00813083          	ld	ra,8(sp)
    80003118:	00013403          	ld	s0,0(sp)
    8000311c:	01010113          	addi	sp,sp,16
    80003120:	00008067          	ret
        return -1;
    80003124:	fff00513          	li	a0,-1
}
    80003128:	00008067          	ret

000000008000312c <_ZN7Console4getcEv>:
char Console::getc() {
    8000312c:	ff010113          	addi	sp,sp,-16
    80003130:	00813423          	sd	s0,8(sp)
    80003134:	01010413          	addi	s0,sp,16
}
    80003138:	00000513          	li	a0,0
    8000313c:	00813403          	ld	s0,8(sp)
    80003140:	01010113          	addi	sp,sp,16
    80003144:	00008067          	ret

0000000080003148 <_ZN7Console4putcEc>:
void Console::putc(char) {
    80003148:	ff010113          	addi	sp,sp,-16
    8000314c:	00813423          	sd	s0,8(sp)
    80003150:	01010413          	addi	s0,sp,16
}
    80003154:	00813403          	ld	s0,8(sp)
    80003158:	01010113          	addi	sp,sp,16
    8000315c:	00008067          	ret

0000000080003160 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    80003160:	fe010113          	addi	sp,sp,-32
    80003164:	00113c23          	sd	ra,24(sp)
    80003168:	00813823          	sd	s0,16(sp)
    8000316c:	00913423          	sd	s1,8(sp)
    80003170:	01213023          	sd	s2,0(sp)
    80003174:	02010413          	addi	s0,sp,32
    80003178:	00050493          	mv	s1,a0
    8000317c:	00058913          	mv	s2,a1
    80003180:	00050613          	mv	a2,a0
    80003184:	00000597          	auipc	a1,0x0
    80003188:	e4c58593          	addi	a1,a1,-436 # 80002fd0 <_ZN14PeriodicThread6runnerEPv>
    8000318c:	00000097          	auipc	ra,0x0
    80003190:	e7c080e7          	jalr	-388(ra) # 80003008 <_ZN6ThreadC1EPFvPvES0_>
    80003194:	00007797          	auipc	a5,0x7
    80003198:	2cc78793          	addi	a5,a5,716 # 8000a460 <_ZTV14PeriodicThread+0x10>
    8000319c:	00f4b023          	sd	a5,0(s1)
    this->time = period;
    800031a0:	0324b023          	sd	s2,32(s1)
}
    800031a4:	01813083          	ld	ra,24(sp)
    800031a8:	01013403          	ld	s0,16(sp)
    800031ac:	00813483          	ld	s1,8(sp)
    800031b0:	00013903          	ld	s2,0(sp)
    800031b4:	02010113          	addi	sp,sp,32
    800031b8:	00008067          	ret

00000000800031bc <_ZN5Riscv10initSystemEv>:
#include "../h/SleepPCBList.hpp"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem()
{
    800031bc:	fe010113          	addi	sp,sp,-32
    800031c0:	00113c23          	sd	ra,24(sp)
    800031c4:	00813823          	sd	s0,16(sp)
    800031c8:	00913423          	sd	s1,8(sp)
    800031cc:	01213023          	sd	s2,0(sp)
    800031d0:	02010413          	addi	s0,sp,32
    w_stvec((uint64)&Riscv::supervisorTrap);
    800031d4:	00007797          	auipc	a5,0x7
    800031d8:	3dc7b783          	ld	a5,988(a5) # 8000a5b0 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800031dc:	10579073          	csrw	stvec,a5
    Thread* t = new Thread(0, 0);
    800031e0:	02000513          	li	a0,32
    800031e4:	00000097          	auipc	ra,0x0
    800031e8:	c88080e7          	jalr	-888(ra) # 80002e6c <_Znwm>
    800031ec:	00050493          	mv	s1,a0
    800031f0:	00000613          	li	a2,0
    800031f4:	00000593          	li	a1,0
    800031f8:	00000097          	auipc	ra,0x0
    800031fc:	e10080e7          	jalr	-496(ra) # 80003008 <_ZN6ThreadC1EPFvPvES0_>
    t->start();
    80003200:	00048513          	mv	a0,s1
    80003204:	00000097          	auipc	ra,0x0
    80003208:	d38080e7          	jalr	-712(ra) # 80002f3c <_ZN6Thread5startEv>
    PCB::running = Scheduler::get();
    8000320c:	00000097          	auipc	ra,0x0
    80003210:	b00080e7          	jalr	-1280(ra) # 80002d0c <_ZN9Scheduler3getEv>
    80003214:	00007797          	auipc	a5,0x7
    80003218:	3b47b783          	ld	a5,948(a5) # 8000a5c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000321c:	00a7b023          	sd	a0,0(a5)
    80003220:	00100793          	li	a5,1
    80003224:	02f52823          	sw	a5,48(a0)
    PCB::running->setState(PCB::RUNNING);
}
    80003228:	01813083          	ld	ra,24(sp)
    8000322c:	01013403          	ld	s0,16(sp)
    80003230:	00813483          	ld	s1,8(sp)
    80003234:	00013903          	ld	s2,0(sp)
    80003238:	02010113          	addi	sp,sp,32
    8000323c:	00008067          	ret
    80003240:	00050913          	mv	s2,a0
    Thread* t = new Thread(0, 0);
    80003244:	00048513          	mv	a0,s1
    80003248:	00000097          	auipc	ra,0x0
    8000324c:	c4c080e7          	jalr	-948(ra) # 80002e94 <_ZdlPv>
    80003250:	00090513          	mv	a0,s2
    80003254:	00008097          	auipc	ra,0x8
    80003258:	544080e7          	jalr	1348(ra) # 8000b798 <_Unwind_Resume>

000000008000325c <_ZN5Riscv16enableInterruptsEv>:
    //da li treba jos nesto da se ocisti
    Riscv::disableInterrupts();
}


void Riscv::enableInterrupts() {
    8000325c:	ff010113          	addi	sp,sp,-16
    80003260:	00813423          	sd	s0,8(sp)
    80003264:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003268:	00200793          	li	a5,2
    8000326c:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80003270:	00813403          	ld	s0,8(sp)
    80003274:	01010113          	addi	sp,sp,16
    80003278:	00008067          	ret

000000008000327c <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    8000327c:	ff010113          	addi	sp,sp,-16
    80003280:	00813423          	sd	s0,8(sp)
    80003284:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003288:	00200793          	li	a5,2
    8000328c:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80003290:	00813403          	ld	s0,8(sp)
    80003294:	01010113          	addi	sp,sp,16
    80003298:	00008067          	ret

000000008000329c <_ZN5Riscv9endSystemEv>:
void Riscv::endSystem() {
    8000329c:	ff010113          	addi	sp,sp,-16
    800032a0:	00113423          	sd	ra,8(sp)
    800032a4:	00813023          	sd	s0,0(sp)
    800032a8:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    800032ac:	00000097          	auipc	ra,0x0
    800032b0:	fd0080e7          	jalr	-48(ra) # 8000327c <_ZN5Riscv17disableInterruptsEv>
}
    800032b4:	00813083          	ld	ra,8(sp)
    800032b8:	00013403          	ld	s0,0(sp)
    800032bc:	01010113          	addi	sp,sp,16
    800032c0:	00008067          	ret

00000000800032c4 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    800032c4:	ff010113          	addi	sp,sp,-16
    800032c8:	00813423          	sd	s0,8(sp)
    800032cc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800032d0:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800032d4:	10200073          	sret
}
    800032d8:	00813403          	ld	s0,8(sp)
    800032dc:	01010113          	addi	sp,sp,16
    800032e0:	00008067          	ret

00000000800032e4 <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    800032e4:	fd010113          	addi	sp,sp,-48
    800032e8:	02113423          	sd	ra,40(sp)
    800032ec:	02813023          	sd	s0,32(sp)
    800032f0:	00913c23          	sd	s1,24(sp)
    800032f4:	01213823          	sd	s2,16(sp)
    800032f8:	03010413          	addi	s0,sp,48
    800032fc:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003300:	100027f3          	csrr	a5,sstatus
    80003304:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80003308:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    8000330c:	00200793          	li	a5,2
    80003310:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    80003314:	0004c503          	lbu	a0,0(s1)
    80003318:	00050a63          	beqz	a0,8000332c <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    8000331c:	00005097          	auipc	ra,0x5
    80003320:	8f0080e7          	jalr	-1808(ra) # 80007c0c <__putc>
        string++;
    80003324:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003328:	fedff06f          	j	80003314 <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    8000332c:	0009091b          	sext.w	s2,s2
    80003330:	00297913          	andi	s2,s2,2
    80003334:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003338:	10092073          	csrs	sstatus,s2
}
    8000333c:	02813083          	ld	ra,40(sp)
    80003340:	02013403          	ld	s0,32(sp)
    80003344:	01813483          	ld	s1,24(sp)
    80003348:	01013903          	ld	s2,16(sp)
    8000334c:	03010113          	addi	sp,sp,48
    80003350:	00008067          	ret

0000000080003354 <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    80003354:	fc010113          	addi	sp,sp,-64
    80003358:	02113c23          	sd	ra,56(sp)
    8000335c:	02813823          	sd	s0,48(sp)
    80003360:	02913423          	sd	s1,40(sp)
    80003364:	03213023          	sd	s2,32(sp)
    80003368:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000336c:	100027f3          	csrr	a5,sstatus
    80003370:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80003374:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003378:	00200793          	li	a5,2
    8000337c:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80003380:	0005051b          	sext.w	a0,a0

    i = 0;
    80003384:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    80003388:	00a00613          	li	a2,10
    8000338c:	02c5773b          	remuw	a4,a0,a2
    80003390:	02071693          	slli	a3,a4,0x20
    80003394:	0206d693          	srli	a3,a3,0x20
    80003398:	00005717          	auipc	a4,0x5
    8000339c:	df070713          	addi	a4,a4,-528 # 80008188 <_ZZN5Riscv12printIntegerEmE6digits>
    800033a0:	00d70733          	add	a4,a4,a3
    800033a4:	00074703          	lbu	a4,0(a4)
    800033a8:	fe040693          	addi	a3,s0,-32
    800033ac:	009687b3          	add	a5,a3,s1
    800033b0:	0014849b          	addiw	s1,s1,1
    800033b4:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    800033b8:	0005071b          	sext.w	a4,a0
    800033bc:	02c5553b          	divuw	a0,a0,a2
    800033c0:	00900793          	li	a5,9
    800033c4:	fce7e2e3          	bltu	a5,a4,80003388 <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    800033c8:	fff4849b          	addiw	s1,s1,-1
    800033cc:	0004ce63          	bltz	s1,800033e8 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    800033d0:	fe040793          	addi	a5,s0,-32
    800033d4:	009787b3          	add	a5,a5,s1
    800033d8:	ff07c503          	lbu	a0,-16(a5)
    800033dc:	00005097          	auipc	ra,0x5
    800033e0:	830080e7          	jalr	-2000(ra) # 80007c0c <__putc>
    800033e4:	fe5ff06f          	j	800033c8 <_ZN5Riscv12printIntegerEm+0x74>

    __putc('\n');
    800033e8:	00a00513          	li	a0,10
    800033ec:	00005097          	auipc	ra,0x5
    800033f0:	820080e7          	jalr	-2016(ra) # 80007c0c <__putc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800033f4:	0009091b          	sext.w	s2,s2
    800033f8:	00297913          	andi	s2,s2,2
    800033fc:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003400:	10092073          	csrs	sstatus,s2
}
    80003404:	03813083          	ld	ra,56(sp)
    80003408:	03013403          	ld	s0,48(sp)
    8000340c:	02813483          	ld	s1,40(sp)
    80003410:	02013903          	ld	s2,32(sp)
    80003414:	04010113          	addi	sp,sp,64
    80003418:	00008067          	ret

000000008000341c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    8000341c:	f8010113          	addi	sp,sp,-128
    80003420:	06113c23          	sd	ra,120(sp)
    80003424:	06813823          	sd	s0,112(sp)
    80003428:	06913423          	sd	s1,104(sp)
    8000342c:	07213023          	sd	s2,96(sp)
    80003430:	05313c23          	sd	s3,88(sp)
    80003434:	05413823          	sd	s4,80(sp)
    80003438:	05513423          	sd	s5,72(sp)
    8000343c:	05613023          	sd	s6,64(sp)
    80003440:	08010413          	addi	s0,sp,128
    uint64 a4;
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80003444:	00070913          	mv	s2,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003448:	142027f3          	csrr	a5,scause
    8000344c:	f8f43423          	sd	a5,-120(s0)
    return scause;
    80003450:	f8843703          	ld	a4,-120(s0)

    uint64 scause = Riscv::r_scause();

    switch(scause)
    80003454:	00900793          	li	a5,9
    80003458:	0ae7f263          	bgeu	a5,a4,800034fc <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
    8000345c:	fff00793          	li	a5,-1
    80003460:	03f79793          	slli	a5,a5,0x3f
    80003464:	00178793          	addi	a5,a5,1
    80003468:	08f71e63          	bne	a4,a5,80003504 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    8000346c:	00200793          	li	a5,2
    80003470:	1447b073          	csrc	sip,a5

            Riscv::mc_sip(Riscv::SIP_SSIP);
            //Riscv::printString("timerInterrupt\n");

            static uint64 total = 0;
            total++;
    80003474:	00007797          	auipc	a5,0x7
    80003478:	21478793          	addi	a5,a5,532 # 8000a688 <_ZZN5Riscv20handleSupervisorTrapEvE5total>
    8000347c:	0007b503          	ld	a0,0(a5)
    80003480:	00150513          	addi	a0,a0,1
    80003484:	00a7b023          	sd	a0,0(a5)
            Riscv::printInteger(total);
    80003488:	00000097          	auipc	ra,0x0
    8000348c:	ecc080e7          	jalr	-308(ra) # 80003354 <_ZN5Riscv12printIntegerEm>

            PCB::timeSliceCounter++;
    80003490:	00007497          	auipc	s1,0x7
    80003494:	1284b483          	ld	s1,296(s1) # 8000a5b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003498:	0004b783          	ld	a5,0(s1)
    8000349c:	00178793          	addi	a5,a5,1
    800034a0:	00f4b023          	sd	a5,0(s1)

            SleepPCBList::tryToWakePCBs();
    800034a4:	fffff097          	auipc	ra,0xfffff
    800034a8:	564080e7          	jalr	1380(ra) # 80002a08 <_ZN12SleepPCBList13tryToWakePCBsEv>

            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    800034ac:	00007797          	auipc	a5,0x7
    800034b0:	11c7b783          	ld	a5,284(a5) # 8000a5c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800034b4:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    800034b8:	0087b783          	ld	a5,8(a5)
    800034bc:	0004b703          	ld	a4,0(s1)
    800034c0:	04f76663          	bltu	a4,a5,8000350c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800034c4:	141027f3          	csrr	a5,sepc
    800034c8:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    800034cc:	f9843483          	ld	s1,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800034d0:	100027f3          	csrr	a5,sstatus
    800034d4:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    800034d8:	f9043903          	ld	s2,-112(s0)
            {
                uint64 sepc = Riscv::r_sepc();
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
    800034dc:	00007797          	auipc	a5,0x7
    800034e0:	0dc7b783          	ld	a5,220(a5) # 8000a5b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800034e4:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    800034e8:	fffff097          	auipc	ra,0xfffff
    800034ec:	17c080e7          	jalr	380(ra) # 80002664 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800034f0:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800034f4:	14149073          	csrw	sepc,s1
}
    800034f8:	0140006f          	j	8000350c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    switch(scause)
    800034fc:	00800793          	li	a5,8
    80003500:	02f77a63          	bgeu	a4,a5,80003534 <_ZN5Riscv20handleSupervisorTrapEv+0x118>
            Riscv::w_sepc(sepc);

            return;
    }

    console_handler();
    80003504:	00004097          	auipc	ra,0x4
    80003508:	77c080e7          	jalr	1916(ra) # 80007c80 <console_handler>
}
    8000350c:	07813083          	ld	ra,120(sp)
    80003510:	07013403          	ld	s0,112(sp)
    80003514:	06813483          	ld	s1,104(sp)
    80003518:	06013903          	ld	s2,96(sp)
    8000351c:	05813983          	ld	s3,88(sp)
    80003520:	05013a03          	ld	s4,80(sp)
    80003524:	04813a83          	ld	s5,72(sp)
    80003528:	04013b03          	ld	s6,64(sp)
    8000352c:	08010113          	addi	sp,sp,128
    80003530:	00008067          	ret
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003534:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003538:	14102773          	csrr	a4,sepc
    8000353c:	fae43023          	sd	a4,-96(s0)
    return sepc;
    80003540:	fa043703          	ld	a4,-96(s0)
            sepc+=4;
    80003544:	00470493          	addi	s1,a4,4
            if(operation == MemoryAllocator::MEM_ALLOC)
    80003548:	00100713          	li	a4,1
    8000354c:	06e78a63          	beq	a5,a4,800035c0 <_ZN5Riscv20handleSupervisorTrapEv+0x1a4>
            else if(operation == MemoryAllocator::MEM_FREE)
    80003550:	00200713          	li	a4,2
    80003554:	08e78463          	beq	a5,a4,800035dc <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            else if(operation == PCB::THREAD_CREATE)
    80003558:	01100713          	li	a4,17
    8000355c:	08e78a63          	beq	a5,a4,800035f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
            else if(operation == PCB::THREAD_DISPATCH)
    80003560:	01300713          	li	a4,19
    80003564:	0ce78c63          	beq	a5,a4,8000363c <_ZN5Riscv20handleSupervisorTrapEv+0x220>
            else if(operation == PCB::THREAD_EXIT)
    80003568:	01200713          	li	a4,18
    8000356c:	0ee78c63          	beq	a5,a4,80003664 <_ZN5Riscv20handleSupervisorTrapEv+0x248>
            else if(operation == PCB::TIME_SLEEP)
    80003570:	03100713          	li	a4,49
    80003574:	14e78263          	beq	a5,a4,800036b8 <_ZN5Riscv20handleSupervisorTrapEv+0x29c>
            else if(operation == KSemaphore::SEM_OPEN)
    80003578:	02100713          	li	a4,33
    8000357c:	18e78263          	beq	a5,a4,80003700 <_ZN5Riscv20handleSupervisorTrapEv+0x2e4>
            else if(operation == KSemaphore::SEM_WAIT)
    80003580:	02300713          	li	a4,35
    80003584:	1ae78c63          	beq	a5,a4,8000373c <_ZN5Riscv20handleSupervisorTrapEv+0x320>
            else if(operation == KSemaphore::SEM_SIGNAL)
    80003588:	02400713          	li	a4,36
    8000358c:	1ce78263          	beq	a5,a4,80003750 <_ZN5Riscv20handleSupervisorTrapEv+0x334>
            else if(operation == KSemaphore::SEM_CLOSE)
    80003590:	02200713          	li	a4,34
    80003594:	04e79063          	bne	a5,a4,800035d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003598:	00058913          	mv	s2,a1
                delete kSem;
    8000359c:	00090e63          	beqz	s2,800035b8 <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
    800035a0:	00090513          	mv	a0,s2
    800035a4:	00000097          	auipc	ra,0x0
    800035a8:	744080e7          	jalr	1860(ra) # 80003ce8 <_ZN10KSemaphoreD1Ev>
    800035ac:	00090513          	mv	a0,s2
    800035b0:	00001097          	auipc	ra,0x1
    800035b4:	868080e7          	jalr	-1944(ra) # 80003e18 <_ZN10KSemaphoredlEPv>
                __asm__ volatile("li a0, 0");
    800035b8:	00000513          	li	a0,0
    800035bc:	0180006f          	j	800035d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    800035c0:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    800035c4:	00651513          	slli	a0,a0,0x6
    800035c8:	00000097          	auipc	ra,0x0
    800035cc:	588080e7          	jalr	1416(ra) # 80003b50 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800035d0:	00050513          	mv	a0,a0
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800035d4:	14149073          	csrw	sepc,s1
}
    800035d8:	f35ff06f          	j	8000350c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    800035dc:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    800035e0:	00000097          	auipc	ra,0x0
    800035e4:	598080e7          	jalr	1432(ra) # 80003b78 <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    800035e8:	00050513          	mv	a0,a0
    800035ec:	fe9ff06f          	j	800035d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800035f0:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800035f4:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    800035f8:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    800035fc:	05000513          	li	a0,80
    80003600:	fffff097          	auipc	ra,0xfffff
    80003604:	0d8080e7          	jalr	216(ra) # 800026d8 <_ZN3PCBnwEm>
    80003608:	00050993          	mv	s3,a0
    8000360c:	00200713          	li	a4,2
    80003610:	00090693          	mv	a3,s2
    80003614:	000b0613          	mv	a2,s6
    80003618:	000a8593          	mv	a1,s5
    8000361c:	fffff097          	auipc	ra,0xfffff
    80003620:	fa4080e7          	jalr	-92(ra) # 800025c0 <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    80003624:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    80003628:	00098663          	beqz	s3,80003634 <_ZN5Riscv20handleSupervisorTrapEv+0x218>
                    __asm__ volatile("li a0, 0");
    8000362c:	00000513          	li	a0,0
    80003630:	fa5ff06f          	j	800035d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80003634:	fff00513          	li	a0,-1
    80003638:	f9dff06f          	j	800035d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000363c:	100027f3          	csrr	a5,sstatus
    80003640:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80003644:	fa843903          	ld	s2,-88(s0)
                PCB::timeSliceCounter = 0;
    80003648:	00007797          	auipc	a5,0x7
    8000364c:	f707b783          	ld	a5,-144(a5) # 8000a5b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003650:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80003654:	fffff097          	auipc	ra,0xfffff
    80003658:	010080e7          	jalr	16(ra) # 80002664 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    8000365c:	10091073          	csrw	sstatus,s2
}
    80003660:	f75ff06f          	j	800035d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                if(PCB::running == 0)
    80003664:	00007797          	auipc	a5,0x7
    80003668:	f647b783          	ld	a5,-156(a5) # 8000a5c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000366c:	0007b783          	ld	a5,0(a5)
    80003670:	04078063          	beqz	a5,800036b0 <_ZN5Riscv20handleSupervisorTrapEv+0x294>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003674:	100027f3          	csrr	a5,sstatus
    80003678:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    8000367c:	fb043903          	ld	s2,-80(s0)
                PCB::timeSliceCounter = 0;
    80003680:	00007797          	auipc	a5,0x7
    80003684:	f387b783          	ld	a5,-200(a5) # 8000a5b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003688:	0007b023          	sd	zero,0(a5)
                PCB::running->setState(PCB::EXITING);
    8000368c:	00007797          	auipc	a5,0x7
    80003690:	f3c7b783          	ld	a5,-196(a5) # 8000a5c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003694:	0007b783          	ld	a5,0(a5)
    void setState(State s) {state = s;}
    80003698:	00300713          	li	a4,3
    8000369c:	02e7a823          	sw	a4,48(a5)
                PCB::dispatch();
    800036a0:	fffff097          	auipc	ra,0xfffff
    800036a4:	fc4080e7          	jalr	-60(ra) # 80002664 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800036a8:	10091073          	csrw	sstatus,s2
}
    800036ac:	f29ff06f          	j	800035d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    800036b0:	fff00513          	li	a0,-1
                    return;
    800036b4:	e59ff06f          	j	8000350c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile("mv %0, a1" : "=r"(time));
    800036b8:	00058713          	mv	a4,a1
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800036bc:	100027f3          	csrr	a5,sstatus
    800036c0:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    800036c4:	fb843903          	ld	s2,-72(s0)
                PCB::timeSliceCounter = 0;
    800036c8:	00007797          	auipc	a5,0x7
    800036cc:	ef07b783          	ld	a5,-272(a5) # 8000a5b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800036d0:	0007b023          	sd	zero,0(a5)
                PCB::running->setTimeToSleep(time);
    800036d4:	00007797          	auipc	a5,0x7
    800036d8:	ef47b783          	ld	a5,-268(a5) # 8000a5c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800036dc:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800036e0:	00e7b823          	sd	a4,16(a5)
                SleepPCBList::insertSleepingPCB();
    800036e4:	fffff097          	auipc	ra,0xfffff
    800036e8:	278080e7          	jalr	632(ra) # 8000295c <_ZN12SleepPCBList17insertSleepingPCBEv>
                PCB::dispatch();
    800036ec:	fffff097          	auipc	ra,0xfffff
    800036f0:	f78080e7          	jalr	-136(ra) # 80002664 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800036f4:	10091073          	csrw	sstatus,s2
                __asm__ volatile("li a0, 0x0");
    800036f8:	00000513          	li	a0,0
    800036fc:	ed9ff06f          	j	800035d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80003700:	00058993          	mv	s3,a1
                __asm__ volatile("mv %0, a2" : "=r"(val));
    80003704:	00060a13          	mv	s4,a2
                KSemaphore* newSem = new KSemaphore(val);
    80003708:	01800513          	li	a0,24
    8000370c:	00000097          	auipc	ra,0x0
    80003710:	6e4080e7          	jalr	1764(ra) # 80003df0 <_ZN10KSemaphorenwEm>
    80003714:	00050913          	mv	s2,a0
    80003718:	000a059b          	sext.w	a1,s4
    8000371c:	00000097          	auipc	ra,0x0
    80003720:	484080e7          	jalr	1156(ra) # 80003ba0 <_ZN10KSemaphoreC1Ei>
                (*semaphoreHandle) = newSem;
    80003724:	0129b023          	sd	s2,0(s3)
                if(newSem == 0)
    80003728:	00090663          	beqz	s2,80003734 <_ZN5Riscv20handleSupervisorTrapEv+0x318>
                        __asm__ volatile("li a0, 0");
    8000372c:	00000513          	li	a0,0
    80003730:	ea5ff06f          	j	800035d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                        __asm__ volatile("li a0, 0xffffffffffffffff");
    80003734:	fff00513          	li	a0,-1
    80003738:	e9dff06f          	j	800035d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000373c:	00058513          	mv	a0,a1
                uint64 retval = kSem->wait();
    80003740:	00000097          	auipc	ra,0x0
    80003744:	508080e7          	jalr	1288(ra) # 80003c48 <_ZN10KSemaphore4waitEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003748:	00050513          	mv	a0,a0
    8000374c:	e89ff06f          	j	800035d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003750:	00058513          	mv	a0,a1
                uint64 retval = kSem->signal();
    80003754:	00000097          	auipc	ra,0x0
    80003758:	654080e7          	jalr	1620(ra) # 80003da8 <_ZN10KSemaphore6signalEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    8000375c:	00050513          	mv	a0,a0
    80003760:	e75ff06f          	j	800035d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
    80003764:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    80003768:	00098513          	mv	a0,s3
    8000376c:	fffff097          	auipc	ra,0xfffff
    80003770:	f94080e7          	jalr	-108(ra) # 80002700 <_ZN3PCBdlEPv>
    80003774:	00048513          	mv	a0,s1
    80003778:	00008097          	auipc	ra,0x8
    8000377c:	020080e7          	jalr	32(ra) # 8000b798 <_Unwind_Resume>
    80003780:	00050493          	mv	s1,a0
                KSemaphore* newSem = new KSemaphore(val);
    80003784:	00090513          	mv	a0,s2
    80003788:	00000097          	auipc	ra,0x0
    8000378c:	690080e7          	jalr	1680(ra) # 80003e18 <_ZN10KSemaphoredlEPv>
    80003790:	00048513          	mv	a0,s1
    80003794:	00008097          	auipc	ra,0x8
    80003798:	004080e7          	jalr	4(ra) # 8000b798 <_Unwind_Resume>

000000008000379c <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    8000379c:	ff010113          	addi	sp,sp,-16
    800037a0:	00813423          	sd	s0,8(sp)
    800037a4:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    800037a8:	00007717          	auipc	a4,0x7
    800037ac:	ee872703          	lw	a4,-280(a4) # 8000a690 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800037b0:	00100793          	li	a5,1
    800037b4:	04f70263          	beq	a4,a5,800037f8 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    800037b8:	00007797          	auipc	a5,0x7
    800037bc:	ed878793          	addi	a5,a5,-296 # 8000a690 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800037c0:	00100713          	li	a4,1
    800037c4:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800037c8:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    800037cc:	00007717          	auipc	a4,0x7
    800037d0:	ddc73703          	ld	a4,-548(a4) # 8000a5a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800037d4:	00073703          	ld	a4,0(a4)
    800037d8:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    800037dc:	00073423          	sd	zero,8(a4)
    //todo
    //+-1
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    800037e0:	00007797          	auipc	a5,0x7
    800037e4:	df07b783          	ld	a5,-528(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800037e8:	0007b783          	ld	a5,0(a5)
    800037ec:	40e787b3          	sub	a5,a5,a4
    800037f0:	ff178793          	addi	a5,a5,-15
    800037f4:	00f73023          	sd	a5,0(a4)
}
    800037f8:	00813403          	ld	s0,8(sp)
    800037fc:	01010113          	addi	sp,sp,16
    80003800:	00008067          	ret

0000000080003804 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    80003804:	fe010113          	addi	sp,sp,-32
    80003808:	00113c23          	sd	ra,24(sp)
    8000380c:	00813823          	sd	s0,16(sp)
    80003810:	00913423          	sd	s1,8(sp)
    80003814:	01213023          	sd	s2,0(sp)
    80003818:	02010413          	addi	s0,sp,32
    8000381c:	00050493          	mv	s1,a0
    80003820:	00058913          	mv	s2,a1

    initMemory();
    80003824:	00000097          	auipc	ra,0x0
    80003828:	f78080e7          	jalr	-136(ra) # 8000379c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    8000382c:	00007797          	auipc	a5,0x7
    80003830:	e6c7b783          	ld	a5,-404(a5) # 8000a698 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003834:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003838:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    8000383c:	00000713          	li	a4,0
    while(curr != 0)
    80003840:	00078c63          	beqz	a5,80003858 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003844:	00f4e863          	bltu	s1,a5,80003854 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003848:	00078713          	mv	a4,a5
        curr = curr->next;
    8000384c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003850:	ff1ff06f          	j	80003840 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003854:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003858:	02070063          	beqz	a4,80003878 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    8000385c:	00973423          	sd	s1,8(a4)
}
    80003860:	01813083          	ld	ra,24(sp)
    80003864:	01013403          	ld	s0,16(sp)
    80003868:	00813483          	ld	s1,8(sp)
    8000386c:	00013903          	ld	s2,0(sp)
    80003870:	02010113          	addi	sp,sp,32
    80003874:	00008067          	ret
        headAllocated = newAllocated;
    80003878:	00007797          	auipc	a5,0x7
    8000387c:	e297b023          	sd	s1,-480(a5) # 8000a698 <_ZN15MemoryAllocator13headAllocatedE>
    80003880:	fe1ff06f          	j	80003860 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003884 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    80003884:	fe010113          	addi	sp,sp,-32
    80003888:	00113c23          	sd	ra,24(sp)
    8000388c:	00813823          	sd	s0,16(sp)
    80003890:	00913423          	sd	s1,8(sp)
    80003894:	01213023          	sd	s2,0(sp)
    80003898:	02010413          	addi	s0,sp,32
    8000389c:	00050913          	mv	s2,a0
    initMemory();
    800038a0:	00000097          	auipc	ra,0x0
    800038a4:	efc080e7          	jalr	-260(ra) # 8000379c <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800038a8:	00007497          	auipc	s1,0x7
    800038ac:	df84b483          	ld	s1,-520(s1) # 8000a6a0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    800038b0:	00000713          	li	a4,0
    while(curr != 0)
    800038b4:	0a048863          	beqz	s1,80003964 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    800038b8:	0004b783          	ld	a5,0(s1)
    800038bc:	0127f863          	bgeu	a5,s2,800038cc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    800038c0:	00048713          	mv	a4,s1
        curr = curr->next;
    800038c4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800038c8:	fedff06f          	j	800038b4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    800038cc:	01090693          	addi	a3,s2,16
    800038d0:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    800038d4:	00007617          	auipc	a2,0x7
    800038d8:	cfc63603          	ld	a2,-772(a2) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800038dc:	00063603          	ld	a2,0(a2)
    800038e0:	04d66c63          	bltu	a2,a3,80003938 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    800038e4:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    800038e8:	01000613          	li	a2,16
    800038ec:	02f67663          	bgeu	a2,a5,80003918 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    800038f0:	0084b603          	ld	a2,8(s1)
    800038f4:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    800038f8:	ff078793          	addi	a5,a5,-16
    800038fc:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003900:	00070663          	beqz	a4,8000390c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80003904:	00d73423          	sd	a3,8(a4)
    80003908:	0380006f          	j	80003940 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    8000390c:	00007797          	auipc	a5,0x7
    80003910:	d8d7ba23          	sd	a3,-620(a5) # 8000a6a0 <_ZN15MemoryAllocator8headFreeE>
    80003914:	02c0006f          	j	80003940 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80003918:	00070863          	beqz	a4,80003928 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    8000391c:	0084b783          	ld	a5,8(s1)
    80003920:	00f73423          	sd	a5,8(a4)
    80003924:	01c0006f          	j	80003940 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80003928:	0084b783          	ld	a5,8(s1)
    8000392c:	00007717          	auipc	a4,0x7
    80003930:	d6f73a23          	sd	a5,-652(a4) # 8000a6a0 <_ZN15MemoryAllocator8headFreeE>
    80003934:	00c0006f          	j	80003940 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80003938:	02070063          	beqz	a4,80003958 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    8000393c:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80003940:	00090593          	mv	a1,s2
    80003944:	00048513          	mv	a0,s1
    80003948:	00000097          	auipc	ra,0x0
    8000394c:	ebc080e7          	jalr	-324(ra) # 80003804 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003950:	01048513          	addi	a0,s1,16
            break;
    80003954:	0140006f          	j	80003968 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80003958:	00007797          	auipc	a5,0x7
    8000395c:	d407b423          	sd	zero,-696(a5) # 8000a6a0 <_ZN15MemoryAllocator8headFreeE>
    80003960:	fe1ff06f          	j	80003940 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003964:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003968:	01813083          	ld	ra,24(sp)
    8000396c:	01013403          	ld	s0,16(sp)
    80003970:	00813483          	ld	s1,8(sp)
    80003974:	00013903          	ld	s2,0(sp)
    80003978:	02010113          	addi	sp,sp,32
    8000397c:	00008067          	ret

0000000080003980 <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    80003980:	ff010113          	addi	sp,sp,-16
    80003984:	00113423          	sd	ra,8(sp)
    80003988:	00813023          	sd	s0,0(sp)
    8000398c:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003990:	00000097          	auipc	ra,0x0
    80003994:	ef4080e7          	jalr	-268(ra) # 80003884 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003998:	00813083          	ld	ra,8(sp)
    8000399c:	00013403          	ld	s0,0(sp)
    800039a0:	01010113          	addi	sp,sp,16
    800039a4:	00008067          	ret

00000000800039a8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800039a8:	fe010113          	addi	sp,sp,-32
    800039ac:	00113c23          	sd	ra,24(sp)
    800039b0:	00813823          	sd	s0,16(sp)
    800039b4:	00913423          	sd	s1,8(sp)
    800039b8:	01213023          	sd	s2,0(sp)
    800039bc:	02010413          	addi	s0,sp,32
    800039c0:	00050493          	mv	s1,a0
    800039c4:	00058913          	mv	s2,a1
    initMemory();
    800039c8:	00000097          	auipc	ra,0x0
    800039cc:	dd4080e7          	jalr	-556(ra) # 8000379c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800039d0:	00007797          	auipc	a5,0x7
    800039d4:	cd07b783          	ld	a5,-816(a5) # 8000a6a0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800039d8:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800039dc:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    800039e0:	00000713          	li	a4,0
    while(curr != 0)
    800039e4:	00078c63          	beqz	a5,800039fc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800039e8:	00f4e863          	bltu	s1,a5,800039f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800039ec:	00078713          	mv	a4,a5
        curr = curr->next;
    800039f0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800039f4:	ff1ff06f          	j	800039e4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    800039f8:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800039fc:	04070663          	beqz	a4,80003a48 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003a00:	00973423          	sd	s1,8(a4)

    //todo
    //test it
    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003a04:	0084b783          	ld	a5,8(s1)
    80003a08:	00078a63          	beqz	a5,80003a1c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003a0c:	0004b603          	ld	a2,0(s1)
    80003a10:	01060693          	addi	a3,a2,16
    80003a14:	00d486b3          	add	a3,s1,a3
    80003a18:	02d78e63          	beq	a5,a3,80003a54 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003a1c:	00070a63          	beqz	a4,80003a30 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003a20:	00073683          	ld	a3,0(a4)
    80003a24:	01068793          	addi	a5,a3,16
    80003a28:	00f707b3          	add	a5,a4,a5
    80003a2c:	04978263          	beq	a5,s1,80003a70 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003a30:	01813083          	ld	ra,24(sp)
    80003a34:	01013403          	ld	s0,16(sp)
    80003a38:	00813483          	ld	s1,8(sp)
    80003a3c:	00013903          	ld	s2,0(sp)
    80003a40:	02010113          	addi	sp,sp,32
    80003a44:	00008067          	ret
        headFree = newSegment;
    80003a48:	00007797          	auipc	a5,0x7
    80003a4c:	c497bc23          	sd	s1,-936(a5) # 8000a6a0 <_ZN15MemoryAllocator8headFreeE>
    80003a50:	fb5ff06f          	j	80003a04 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003a54:	0007b683          	ld	a3,0(a5)
    80003a58:	00d60633          	add	a2,a2,a3
    80003a5c:	01060613          	addi	a2,a2,16
    80003a60:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003a64:	0087b783          	ld	a5,8(a5)
    80003a68:	00f4b423          	sd	a5,8(s1)
    80003a6c:	fb1ff06f          	j	80003a1c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003a70:	0004b783          	ld	a5,0(s1)
    80003a74:	00f686b3          	add	a3,a3,a5
    80003a78:	01068693          	addi	a3,a3,16
    80003a7c:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003a80:	0084b783          	ld	a5,8(s1)
    80003a84:	00f73423          	sd	a5,8(a4)
}
    80003a88:	fa9ff06f          	j	80003a30 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003a8c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003a8c:	fe010113          	addi	sp,sp,-32
    80003a90:	00113c23          	sd	ra,24(sp)
    80003a94:	00813823          	sd	s0,16(sp)
    80003a98:	00913423          	sd	s1,8(sp)
    80003a9c:	01213023          	sd	s2,0(sp)
    80003aa0:	02010413          	addi	s0,sp,32
    80003aa4:	00050913          	mv	s2,a0
    initMemory();
    80003aa8:	00000097          	auipc	ra,0x0
    80003aac:	cf4080e7          	jalr	-780(ra) # 8000379c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003ab0:	00007497          	auipc	s1,0x7
    80003ab4:	be84b483          	ld	s1,-1048(s1) # 8000a698 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80003ab8:	00000713          	li	a4,0
    while(curr != 0)
    80003abc:	02048a63          	beqz	s1,80003af0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80003ac0:	01048793          	addi	a5,s1,16
    80003ac4:	01278863          	beq	a5,s2,80003ad4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80003ac8:	00048713          	mv	a4,s1
        curr = curr->next;
    80003acc:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003ad0:	fedff06f          	j	80003abc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80003ad4:	02070e63          	beqz	a4,80003b10 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80003ad8:	0084b783          	ld	a5,8(s1)
    80003adc:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80003ae0:	0004b583          	ld	a1,0(s1)
    80003ae4:	00048513          	mv	a0,s1
    80003ae8:	00000097          	auipc	ra,0x0
    80003aec:	ec0080e7          	jalr	-320(ra) # 800039a8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80003af0:	02048863          	beqz	s1,80003b20 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80003af4:	00000513          	li	a0,0
    else
        return 1;
}
    80003af8:	01813083          	ld	ra,24(sp)
    80003afc:	01013403          	ld	s0,16(sp)
    80003b00:	00813483          	ld	s1,8(sp)
    80003b04:	00013903          	ld	s2,0(sp)
    80003b08:	02010113          	addi	sp,sp,32
    80003b0c:	00008067          	ret
                headAllocated = curr->next;
    80003b10:	0084b783          	ld	a5,8(s1)
    80003b14:	00007717          	auipc	a4,0x7
    80003b18:	b8f73223          	sd	a5,-1148(a4) # 8000a698 <_ZN15MemoryAllocator13headAllocatedE>
    80003b1c:	fc5ff06f          	j	80003ae0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80003b20:	00100513          	li	a0,1
    80003b24:	fd5ff06f          	j	80003af8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080003b28 <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    80003b28:	ff010113          	addi	sp,sp,-16
    80003b2c:	00113423          	sd	ra,8(sp)
    80003b30:	00813023          	sd	s0,0(sp)
    80003b34:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80003b38:	00000097          	auipc	ra,0x0
    80003b3c:	f54080e7          	jalr	-172(ra) # 80003a8c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80003b40:	00813083          	ld	ra,8(sp)
    80003b44:	00013403          	ld	s0,0(sp)
    80003b48:	01010113          	addi	sp,sp,16
    80003b4c:	00008067          	ret

0000000080003b50 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    80003b50:	ff010113          	addi	sp,sp,-16
    80003b54:	00113423          	sd	ra,8(sp)
    80003b58:	00813023          	sd	s0,0(sp)
    80003b5c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80003b60:	00000097          	auipc	ra,0x0
    80003b64:	e20080e7          	jalr	-480(ra) # 80003980 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003b68:	00813083          	ld	ra,8(sp)
    80003b6c:	00013403          	ld	s0,0(sp)
    80003b70:	01010113          	addi	sp,sp,16
    80003b74:	00008067          	ret

0000000080003b78 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80003b78:	ff010113          	addi	sp,sp,-16
    80003b7c:	00113423          	sd	ra,8(sp)
    80003b80:	00813023          	sd	s0,0(sp)
    80003b84:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80003b88:	00000097          	auipc	ra,0x0
    80003b8c:	fa0080e7          	jalr	-96(ra) # 80003b28 <_ZN15MemoryAllocator8mem_freeEPv>
    80003b90:	00813083          	ld	ra,8(sp)
    80003b94:	00013403          	ld	s0,0(sp)
    80003b98:	01010113          	addi	sp,sp,16
    80003b9c:	00008067          	ret

0000000080003ba0 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80003ba0:	ff010113          	addi	sp,sp,-16
    80003ba4:	00813423          	sd	s0,8(sp)
    80003ba8:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80003bac:	00b52a23          	sw	a1,20(a0)
    80003bb0:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80003bb4:	00053423          	sd	zero,8(a0)
    80003bb8:	00053023          	sd	zero,0(a0)
}
    80003bbc:	00813403          	ld	s0,8(sp)
    80003bc0:	01010113          	addi	sp,sp,16
    80003bc4:	00008067          	ret

0000000080003bc8 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80003bc8:	ff010113          	addi	sp,sp,-16
    80003bcc:	00813423          	sd	s0,8(sp)
    80003bd0:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80003bd4:	0005b023          	sd	zero,0(a1)
    if(headBlocked == 0)
    80003bd8:	00053783          	ld	a5,0(a0)
    80003bdc:	00078e63          	beqz	a5,80003bf8 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80003be0:	00853783          	ld	a5,8(a0)
    80003be4:	00b7b023          	sd	a1,0(a5)
        tailBlocked = pcb;
    80003be8:	00b53423          	sd	a1,8(a0)
    }
}
    80003bec:	00813403          	ld	s0,8(sp)
    80003bf0:	01010113          	addi	sp,sp,16
    80003bf4:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80003bf8:	00b53423          	sd	a1,8(a0)
    80003bfc:	00b53023          	sd	a1,0(a0)
    80003c00:	fedff06f          	j	80003bec <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080003c04 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    80003c04:	ff010113          	addi	sp,sp,-16
    80003c08:	00113423          	sd	ra,8(sp)
    80003c0c:	00813023          	sd	s0,0(sp)
    80003c10:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80003c14:	00007797          	auipc	a5,0x7
    80003c18:	9b47b783          	ld	a5,-1612(a5) # 8000a5c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003c1c:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80003c20:	00200793          	li	a5,2
    80003c24:	02f5a823          	sw	a5,48(a1)
    addToBlocked(PCB::running);
    80003c28:	00000097          	auipc	ra,0x0
    80003c2c:	fa0080e7          	jalr	-96(ra) # 80003bc8 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80003c30:	fffff097          	auipc	ra,0xfffff
    80003c34:	a34080e7          	jalr	-1484(ra) # 80002664 <_ZN3PCB8dispatchEv>
}
    80003c38:	00813083          	ld	ra,8(sp)
    80003c3c:	00013403          	ld	s0,0(sp)
    80003c40:	01010113          	addi	sp,sp,16
    80003c44:	00008067          	ret

0000000080003c48 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    80003c48:	01052783          	lw	a5,16(a0)
    80003c4c:	fff7879b          	addiw	a5,a5,-1
    80003c50:	00f52823          	sw	a5,16(a0)
    80003c54:	02079713          	slli	a4,a5,0x20
    80003c58:	00074663          	bltz	a4,80003c64 <_ZN10KSemaphore4waitEv+0x1c>
}
    80003c5c:	00000513          	li	a0,0
    80003c60:	00008067          	ret
uint64 KSemaphore::wait() {
    80003c64:	ff010113          	addi	sp,sp,-16
    80003c68:	00113423          	sd	ra,8(sp)
    80003c6c:	00813023          	sd	s0,0(sp)
    80003c70:	01010413          	addi	s0,sp,16
        block();
    80003c74:	00000097          	auipc	ra,0x0
    80003c78:	f90080e7          	jalr	-112(ra) # 80003c04 <_ZN10KSemaphore5blockEv>
}
    80003c7c:	00000513          	li	a0,0
    80003c80:	00813083          	ld	ra,8(sp)
    80003c84:	00013403          	ld	s0,0(sp)
    80003c88:	01010113          	addi	sp,sp,16
    80003c8c:	00008067          	ret

0000000080003c90 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80003c90:	ff010113          	addi	sp,sp,-16
    80003c94:	00813423          	sd	s0,8(sp)
    80003c98:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80003c9c:	00053503          	ld	a0,0(a0)
    80003ca0:	00813403          	ld	s0,8(sp)
    80003ca4:	01010113          	addi	sp,sp,16
    80003ca8:	00008067          	ret

0000000080003cac <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80003cac:	ff010113          	addi	sp,sp,-16
    80003cb0:	00813423          	sd	s0,8(sp)
    80003cb4:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80003cb8:	00053783          	ld	a5,0(a0)
    80003cbc:	00078c63          	beqz	a5,80003cd4 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80003cc0:	0007b703          	ld	a4,0(a5)
    80003cc4:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80003cc8:	0007b023          	sd	zero,0(a5)
    if(headBlocked == 0)
    80003ccc:	00053783          	ld	a5,0(a0)
    80003cd0:	00078863          	beqz	a5,80003ce0 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80003cd4:	00813403          	ld	s0,8(sp)
    80003cd8:	01010113          	addi	sp,sp,16
    80003cdc:	00008067          	ret
        tailBlocked =0;
    80003ce0:	00053423          	sd	zero,8(a0)
    80003ce4:	ff1ff06f          	j	80003cd4 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080003ce8 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80003ce8:	fe010113          	addi	sp,sp,-32
    80003cec:	00113c23          	sd	ra,24(sp)
    80003cf0:	00813823          	sd	s0,16(sp)
    80003cf4:	00913423          	sd	s1,8(sp)
    80003cf8:	01213023          	sd	s2,0(sp)
    80003cfc:	02010413          	addi	s0,sp,32
    80003d00:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80003d04:	00090513          	mv	a0,s2
    80003d08:	00000097          	auipc	ra,0x0
    80003d0c:	f88080e7          	jalr	-120(ra) # 80003c90 <_ZN10KSemaphore15getFirstBlockedEv>
    80003d10:	00050493          	mv	s1,a0
    80003d14:	02050063          	beqz	a0,80003d34 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    80003d18:	00090513          	mv	a0,s2
    80003d1c:	00000097          	auipc	ra,0x0
    80003d20:	f90080e7          	jalr	-112(ra) # 80003cac <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    80003d24:	00048513          	mv	a0,s1
    80003d28:	fffff097          	auipc	ra,0xfffff
    80003d2c:	f90080e7          	jalr	-112(ra) # 80002cb8 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80003d30:	fd5ff06f          	j	80003d04 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80003d34:	01813083          	ld	ra,24(sp)
    80003d38:	01013403          	ld	s0,16(sp)
    80003d3c:	00813483          	ld	s1,8(sp)
    80003d40:	00013903          	ld	s2,0(sp)
    80003d44:	02010113          	addi	sp,sp,32
    80003d48:	00008067          	ret

0000000080003d4c <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80003d4c:	fe010113          	addi	sp,sp,-32
    80003d50:	00113c23          	sd	ra,24(sp)
    80003d54:	00813823          	sd	s0,16(sp)
    80003d58:	00913423          	sd	s1,8(sp)
    80003d5c:	01213023          	sd	s2,0(sp)
    80003d60:	02010413          	addi	s0,sp,32
    80003d64:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80003d68:	00000097          	auipc	ra,0x0
    80003d6c:	f28080e7          	jalr	-216(ra) # 80003c90 <_ZN10KSemaphore15getFirstBlockedEv>
    80003d70:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80003d74:	00090513          	mv	a0,s2
    80003d78:	00000097          	auipc	ra,0x0
    80003d7c:	f34080e7          	jalr	-204(ra) # 80003cac <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80003d80:	00048863          	beqz	s1,80003d90 <_ZN10KSemaphore7unblockEv+0x44>
        Scheduler::put(fr);
    80003d84:	00048513          	mv	a0,s1
    80003d88:	fffff097          	auipc	ra,0xfffff
    80003d8c:	f30080e7          	jalr	-208(ra) # 80002cb8 <_ZN9Scheduler3putEP3PCB>
}
    80003d90:	01813083          	ld	ra,24(sp)
    80003d94:	01013403          	ld	s0,16(sp)
    80003d98:	00813483          	ld	s1,8(sp)
    80003d9c:	00013903          	ld	s2,0(sp)
    80003da0:	02010113          	addi	sp,sp,32
    80003da4:	00008067          	ret

0000000080003da8 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80003da8:	01052783          	lw	a5,16(a0)
    80003dac:	0017879b          	addiw	a5,a5,1
    80003db0:	0007871b          	sext.w	a4,a5
    80003db4:	00f52823          	sw	a5,16(a0)
    80003db8:	00e05663          	blez	a4,80003dc4 <_ZN10KSemaphore6signalEv+0x1c>
}
    80003dbc:	00000513          	li	a0,0
    80003dc0:	00008067          	ret
uint64 KSemaphore::signal() {
    80003dc4:	ff010113          	addi	sp,sp,-16
    80003dc8:	00113423          	sd	ra,8(sp)
    80003dcc:	00813023          	sd	s0,0(sp)
    80003dd0:	01010413          	addi	s0,sp,16
        unblock();
    80003dd4:	00000097          	auipc	ra,0x0
    80003dd8:	f78080e7          	jalr	-136(ra) # 80003d4c <_ZN10KSemaphore7unblockEv>
}
    80003ddc:	00000513          	li	a0,0
    80003de0:	00813083          	ld	ra,8(sp)
    80003de4:	00013403          	ld	s0,0(sp)
    80003de8:	01010113          	addi	sp,sp,16
    80003dec:	00008067          	ret

0000000080003df0 <_ZN10KSemaphorenwEm>:

void *KSemaphore::operator new(size_t size) {
    80003df0:	ff010113          	addi	sp,sp,-16
    80003df4:	00113423          	sd	ra,8(sp)
    80003df8:	00813023          	sd	s0,0(sp)
    80003dfc:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80003e00:	00000097          	auipc	ra,0x0
    80003e04:	d50080e7          	jalr	-688(ra) # 80003b50 <_Z7kmallocm>
}
    80003e08:	00813083          	ld	ra,8(sp)
    80003e0c:	00013403          	ld	s0,0(sp)
    80003e10:	01010113          	addi	sp,sp,16
    80003e14:	00008067          	ret

0000000080003e18 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p) {
    80003e18:	ff010113          	addi	sp,sp,-16
    80003e1c:	00113423          	sd	ra,8(sp)
    80003e20:	00813023          	sd	s0,0(sp)
    80003e24:	01010413          	addi	s0,sp,16
    kfree(p);
    80003e28:	00000097          	auipc	ra,0x0
    80003e2c:	d50080e7          	jalr	-688(ra) # 80003b78 <_Z5kfreePv>
}
    80003e30:	00813083          	ld	ra,8(sp)
    80003e34:	00013403          	ld	s0,0(sp)
    80003e38:	01010113          	addi	sp,sp,16
    80003e3c:	00008067          	ret

0000000080003e40 <_Z8producerPv>:
    delete data->buffer;

    sem_signal(data->wait);
}

void producer(void *arg) {
    80003e40:	fe010113          	addi	sp,sp,-32
    80003e44:	00113c23          	sd	ra,24(sp)
    80003e48:	00813823          	sd	s0,16(sp)
    80003e4c:	00913423          	sd	s1,8(sp)
    80003e50:	01213023          	sd	s2,0(sp)
    80003e54:	02010413          	addi	s0,sp,32
    80003e58:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("Producer started...\n");
    80003e5c:	00004517          	auipc	a0,0x4
    80003e60:	33c50513          	addi	a0,a0,828 # 80008198 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80003e64:	fffff097          	auipc	ra,0xfffff
    80003e68:	480080e7          	jalr	1152(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>

    int i = 0;
    80003e6c:	00000913          	li	s2,0
    80003e70:	00c0006f          	j	80003e7c <_Z8producerPv+0x3c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003e74:	ffffd097          	auipc	ra,0xffffd
    80003e78:	4b0080e7          	jalr	1200(ra) # 80001324 <thread_dispatch>
    while (!threadEnd) {
    80003e7c:	00007797          	auipc	a5,0x7
    80003e80:	82c7a783          	lw	a5,-2004(a5) # 8000a6a8 <threadEnd>
    80003e84:	02079e63          	bnez	a5,80003ec0 <_Z8producerPv+0x80>
        data->buffer->put(data->id + '0');
    80003e88:	0004a583          	lw	a1,0(s1)
    80003e8c:	0305859b          	addiw	a1,a1,48
    80003e90:	0084b503          	ld	a0,8(s1)
    80003e94:	00002097          	auipc	ra,0x2
    80003e98:	ba0080e7          	jalr	-1120(ra) # 80005a34 <_ZN6Buffer3putEi>
        i++;
    80003e9c:	0019071b          	addiw	a4,s2,1
    80003ea0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003ea4:	0004a683          	lw	a3,0(s1)
    80003ea8:	0026979b          	slliw	a5,a3,0x2
    80003eac:	00d787bb          	addw	a5,a5,a3
    80003eb0:	0017979b          	slliw	a5,a5,0x1
    80003eb4:	02f767bb          	remw	a5,a4,a5
    80003eb8:	fc0792e3          	bnez	a5,80003e7c <_Z8producerPv+0x3c>
    80003ebc:	fb9ff06f          	j	80003e74 <_Z8producerPv+0x34>
        }
    }

    sem_signal(data->wait);
    80003ec0:	0104b503          	ld	a0,16(s1)
    80003ec4:	ffffd097          	auipc	ra,0xffffd
    80003ec8:	538080e7          	jalr	1336(ra) # 800013fc <sem_signal>
}
    80003ecc:	01813083          	ld	ra,24(sp)
    80003ed0:	01013403          	ld	s0,16(sp)
    80003ed4:	00813483          	ld	s1,8(sp)
    80003ed8:	00013903          	ld	s2,0(sp)
    80003edc:	02010113          	addi	sp,sp,32
    80003ee0:	00008067          	ret

0000000080003ee4 <_Z8consumerPv>:

void consumer(void *arg) {
    80003ee4:	fd010113          	addi	sp,sp,-48
    80003ee8:	02113423          	sd	ra,40(sp)
    80003eec:	02813023          	sd	s0,32(sp)
    80003ef0:	00913c23          	sd	s1,24(sp)
    80003ef4:	01213823          	sd	s2,16(sp)
    80003ef8:	01313423          	sd	s3,8(sp)
    80003efc:	03010413          	addi	s0,sp,48
    80003f00:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("Consumer started...\n");
    80003f04:	00004517          	auipc	a0,0x4
    80003f08:	2ac50513          	addi	a0,a0,684 # 800081b0 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    80003f0c:	fffff097          	auipc	ra,0xfffff
    80003f10:	3d8080e7          	jalr	984(ra) # 800032e4 <_ZN5Riscv11printStringEPKc>

    int i = 0;
    80003f14:	00000993          	li	s3,0
    80003f18:	01c0006f          	j	80003f34 <_Z8consumerPv+0x50>

        //putc(key);
        Riscv::printInteger(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003f1c:	ffffd097          	auipc	ra,0xffffd
    80003f20:	408080e7          	jalr	1032(ra) # 80001324 <thread_dispatch>
    80003f24:	04c0006f          	j	80003f70 <_Z8consumerPv+0x8c>
        }

        if (i % 80 == 0) {
            __putc('\n');
    80003f28:	00a00513          	li	a0,10
    80003f2c:	00004097          	auipc	ra,0x4
    80003f30:	ce0080e7          	jalr	-800(ra) # 80007c0c <__putc>
    while (!threadEnd) {
    80003f34:	00006797          	auipc	a5,0x6
    80003f38:	7747a783          	lw	a5,1908(a5) # 8000a6a8 <threadEnd>
    80003f3c:	04079263          	bnez	a5,80003f80 <_Z8consumerPv+0x9c>
        int key = data->buffer->get();
    80003f40:	00893503          	ld	a0,8(s2)
    80003f44:	00002097          	auipc	ra,0x2
    80003f48:	b80080e7          	jalr	-1152(ra) # 80005ac4 <_ZN6Buffer3getEv>
        i++;
    80003f4c:	0019849b          	addiw	s1,s3,1
    80003f50:	0004899b          	sext.w	s3,s1
        Riscv::printInteger(key);
    80003f54:	fffff097          	auipc	ra,0xfffff
    80003f58:	400080e7          	jalr	1024(ra) # 80003354 <_ZN5Riscv12printIntegerEm>
        if (i % (5 * data->id) == 0) {
    80003f5c:	00092703          	lw	a4,0(s2)
    80003f60:	0027179b          	slliw	a5,a4,0x2
    80003f64:	00e787bb          	addw	a5,a5,a4
    80003f68:	02f4e7bb          	remw	a5,s1,a5
    80003f6c:	fa0788e3          	beqz	a5,80003f1c <_Z8consumerPv+0x38>
        if (i % 80 == 0) {
    80003f70:	05000793          	li	a5,80
    80003f74:	02f4e4bb          	remw	s1,s1,a5
    80003f78:	fa049ee3          	bnez	s1,80003f34 <_Z8consumerPv+0x50>
    80003f7c:	fadff06f          	j	80003f28 <_Z8consumerPv+0x44>
        }
    }

    sem_signal(data->wait);
    80003f80:	01093503          	ld	a0,16(s2)
    80003f84:	ffffd097          	auipc	ra,0xffffd
    80003f88:	478080e7          	jalr	1144(ra) # 800013fc <sem_signal>
}
    80003f8c:	02813083          	ld	ra,40(sp)
    80003f90:	02013403          	ld	s0,32(sp)
    80003f94:	01813483          	ld	s1,24(sp)
    80003f98:	01013903          	ld	s2,16(sp)
    80003f9c:	00813983          	ld	s3,8(sp)
    80003fa0:	03010113          	addi	sp,sp,48
    80003fa4:	00008067          	ret

0000000080003fa8 <_Z16producerKeyboardPv>:
void producerKeyboard(void *arg) {
    80003fa8:	fe010113          	addi	sp,sp,-32
    80003fac:	00113c23          	sd	ra,24(sp)
    80003fb0:	00813823          	sd	s0,16(sp)
    80003fb4:	00913423          	sd	s1,8(sp)
    80003fb8:	01213023          	sd	s2,0(sp)
    80003fbc:	02010413          	addi	s0,sp,32
    80003fc0:	00050493          	mv	s1,a0
    int i = 0;
    80003fc4:	00000913          	li	s2,0
    80003fc8:	00c0006f          	j	80003fd4 <_Z16producerKeyboardPv+0x2c>
            thread_dispatch();
    80003fcc:	ffffd097          	auipc	ra,0xffffd
    80003fd0:	358080e7          	jalr	856(ra) # 80001324 <thread_dispatch>
    while ((key = __getc()) != 0x1b) {
    80003fd4:	00004097          	auipc	ra,0x4
    80003fd8:	c74080e7          	jalr	-908(ra) # 80007c48 <__getc>
    80003fdc:	0005059b          	sext.w	a1,a0
    80003fe0:	01b00793          	li	a5,27
    80003fe4:	02f58a63          	beq	a1,a5,80004018 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003fe8:	0084b503          	ld	a0,8(s1)
    80003fec:	00002097          	auipc	ra,0x2
    80003ff0:	a48080e7          	jalr	-1464(ra) # 80005a34 <_ZN6Buffer3putEi>
        i++;
    80003ff4:	0019071b          	addiw	a4,s2,1
    80003ff8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003ffc:	0004a683          	lw	a3,0(s1)
    80004000:	0026979b          	slliw	a5,a3,0x2
    80004004:	00d787bb          	addw	a5,a5,a3
    80004008:	0017979b          	slliw	a5,a5,0x1
    8000400c:	02f767bb          	remw	a5,a4,a5
    80004010:	fc0792e3          	bnez	a5,80003fd4 <_Z16producerKeyboardPv+0x2c>
    80004014:	fb9ff06f          	j	80003fcc <_Z16producerKeyboardPv+0x24>
    threadEnd = 1;
    80004018:	00100793          	li	a5,1
    8000401c:	00006717          	auipc	a4,0x6
    80004020:	68f72623          	sw	a5,1676(a4) # 8000a6a8 <threadEnd>
    delete data->buffer;
    80004024:	0084b903          	ld	s2,8(s1)
    80004028:	00090e63          	beqz	s2,80004044 <_Z16producerKeyboardPv+0x9c>
    8000402c:	00090513          	mv	a0,s2
    80004030:	00002097          	auipc	ra,0x2
    80004034:	958080e7          	jalr	-1704(ra) # 80005988 <_ZN6BufferD1Ev>
    80004038:	00090513          	mv	a0,s2
    8000403c:	fffff097          	auipc	ra,0xfffff
    80004040:	e58080e7          	jalr	-424(ra) # 80002e94 <_ZdlPv>
    sem_signal(data->wait);
    80004044:	0104b503          	ld	a0,16(s1)
    80004048:	ffffd097          	auipc	ra,0xffffd
    8000404c:	3b4080e7          	jalr	948(ra) # 800013fc <sem_signal>
}
    80004050:	01813083          	ld	ra,24(sp)
    80004054:	01013403          	ld	s0,16(sp)
    80004058:	00813483          	ld	s1,8(sp)
    8000405c:	00013903          	ld	s2,0(sp)
    80004060:	02010113          	addi	sp,sp,32
    80004064:	00008067          	ret

0000000080004068 <_Z22producerConsumer_C_APIv>:
//todo
//threadNuma hardCoded, timer enables itself as soon as
//code gets into getString
//isto za bafer
void producerConsumer_C_API()
{
    80004068:	f2010113          	addi	sp,sp,-224
    8000406c:	0c113c23          	sd	ra,216(sp)
    80004070:	0c813823          	sd	s0,208(sp)
    80004074:	0c913423          	sd	s1,200(sp)
    80004078:	0d213023          	sd	s2,192(sp)
    8000407c:	0e010413          	addi	s0,sp,224
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004080:	00004517          	auipc	a0,0x4
    80004084:	14850513          	addi	a0,a0,328 # 800081c8 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80004088:	00001097          	auipc	ra,0x1
    8000408c:	150080e7          	jalr	336(ra) # 800051d8 <_Z11printStringPKc>
    //getString(input, 30);
    threadNum = 5;

    printString("Unesite velicinu bafera?\n");
    80004090:	00004517          	auipc	a0,0x4
    80004094:	15850513          	addi	a0,a0,344 # 800081e8 <_ZZN5Riscv12printIntegerEmE6digits+0x60>
    80004098:	00001097          	auipc	ra,0x1
    8000409c:	140080e7          	jalr	320(ra) # 800051d8 <_Z11printStringPKc>
    //getString(input, 30);
    n = 10;

    printString("Broj proizvodjaca "); printInt(threadNum);
    800040a0:	00004517          	auipc	a0,0x4
    800040a4:	16850513          	addi	a0,a0,360 # 80008208 <_ZZN5Riscv12printIntegerEmE6digits+0x80>
    800040a8:	00001097          	auipc	ra,0x1
    800040ac:	130080e7          	jalr	304(ra) # 800051d8 <_Z11printStringPKc>
    800040b0:	00000613          	li	a2,0
    800040b4:	00a00593          	li	a1,10
    800040b8:	00500513          	li	a0,5
    800040bc:	00001097          	auipc	ra,0x1
    800040c0:	2b4080e7          	jalr	692(ra) # 80005370 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800040c4:	00004517          	auipc	a0,0x4
    800040c8:	15c50513          	addi	a0,a0,348 # 80008220 <_ZZN5Riscv12printIntegerEmE6digits+0x98>
    800040cc:	00001097          	auipc	ra,0x1
    800040d0:	10c080e7          	jalr	268(ra) # 800051d8 <_Z11printStringPKc>
    800040d4:	00000613          	li	a2,0
    800040d8:	00a00593          	li	a1,10
    800040dc:	00a00513          	li	a0,10
    800040e0:	00001097          	auipc	ra,0x1
    800040e4:	290080e7          	jalr	656(ra) # 80005370 <_Z8printIntiii>
    printString(".\n");
    800040e8:	00004517          	auipc	a0,0x4
    800040ec:	06050513          	addi	a0,a0,96 # 80008148 <CONSOLE_STATUS+0x138>
    800040f0:	00001097          	auipc	ra,0x1
    800040f4:	0e8080e7          	jalr	232(ra) # 800051d8 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    800040f8:	03800513          	li	a0,56
    800040fc:	fffff097          	auipc	ra,0xfffff
    80004100:	d70080e7          	jalr	-656(ra) # 80002e6c <_Znwm>
    80004104:	00050913          	mv	s2,a0
    80004108:	00a00593          	li	a1,10
    8000410c:	00001097          	auipc	ra,0x1
    80004110:	7f4080e7          	jalr	2036(ra) # 80005900 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004114:	00000593          	li	a1,0
    80004118:	00006517          	auipc	a0,0x6
    8000411c:	59850513          	addi	a0,a0,1432 # 8000a6b0 <waitForAll>
    80004120:	ffffd097          	auipc	ra,0xffffd
    80004124:	24c080e7          	jalr	588(ra) # 8000136c <sem_open>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    80004128:	00500793          	li	a5,5
    8000412c:	fcf42023          	sw	a5,-64(s0)
    data[threadNum].buffer = buffer;
    80004130:	fd243423          	sd	s2,-56(s0)
    data[threadNum].wait = waitForAll;
    80004134:	00006797          	auipc	a5,0x6
    80004138:	57c7b783          	ld	a5,1404(a5) # 8000a6b0 <waitForAll>
    8000413c:	fcf43823          	sd	a5,-48(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004140:	fc040613          	addi	a2,s0,-64
    80004144:	00000597          	auipc	a1,0x0
    80004148:	da058593          	addi	a1,a1,-608 # 80003ee4 <_Z8consumerPv>
    8000414c:	fd840513          	addi	a0,s0,-40
    80004150:	ffffd097          	auipc	ra,0xffffd
    80004154:	154080e7          	jalr	340(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80004158:	00000493          	li	s1,0
    8000415c:	00400793          	li	a5,4
    80004160:	0697c063          	blt	a5,s1,800041c0 <_Z22producerConsumer_C_APIv+0x158>
        data[i].id = i;
    80004164:	00149613          	slli	a2,s1,0x1
    80004168:	009607b3          	add	a5,a2,s1
    8000416c:	00379793          	slli	a5,a5,0x3
    80004170:	fe040713          	addi	a4,s0,-32
    80004174:	00f707b3          	add	a5,a4,a5
    80004178:	f697a423          	sw	s1,-152(a5)
        data[i].buffer = buffer;
    8000417c:	f727b823          	sd	s2,-144(a5)
        data[i].wait = waitForAll;
    80004180:	00006717          	auipc	a4,0x6
    80004184:	53073703          	ld	a4,1328(a4) # 8000a6b0 <waitForAll>
    80004188:	f6e7bc23          	sd	a4,-136(a5)
        //todo changed
        //thread_create(threads + i,
        //              i > 0 ? producer : producerKeyboard,
        //              data + i);

        thread_create(threads + i, producer, data + i);
    8000418c:	00349793          	slli	a5,s1,0x3
    80004190:	00960633          	add	a2,a2,s1
    80004194:	00361613          	slli	a2,a2,0x3
    80004198:	f4840713          	addi	a4,s0,-184
    8000419c:	00c70633          	add	a2,a4,a2
    800041a0:	00000597          	auipc	a1,0x0
    800041a4:	ca058593          	addi	a1,a1,-864 # 80003e40 <_Z8producerPv>
    800041a8:	f2040513          	addi	a0,s0,-224
    800041ac:	00f50533          	add	a0,a0,a5
    800041b0:	ffffd097          	auipc	ra,0xffffd
    800041b4:	0f4080e7          	jalr	244(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    800041b8:	0014849b          	addiw	s1,s1,1
    800041bc:	fa1ff06f          	j	8000415c <_Z22producerConsumer_C_APIv+0xf4>

    }

    thread_dispatch();
    800041c0:	ffffd097          	auipc	ra,0xffffd
    800041c4:	164080e7          	jalr	356(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    800041c8:	00000493          	li	s1,0
    800041cc:	00500793          	li	a5,5
    800041d0:	0097ce63          	blt	a5,s1,800041ec <_Z22producerConsumer_C_APIv+0x184>
        sem_wait(waitForAll);
    800041d4:	00006517          	auipc	a0,0x6
    800041d8:	4dc53503          	ld	a0,1244(a0) # 8000a6b0 <waitForAll>
    800041dc:	ffffd097          	auipc	ra,0xffffd
    800041e0:	1f4080e7          	jalr	500(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    800041e4:	0014849b          	addiw	s1,s1,1
    800041e8:	fe5ff06f          	j	800041cc <_Z22producerConsumer_C_APIv+0x164>
    }

    sem_close(waitForAll);
    800041ec:	00006517          	auipc	a0,0x6
    800041f0:	4c453503          	ld	a0,1220(a0) # 8000a6b0 <waitForAll>
    800041f4:	ffffd097          	auipc	ra,0xffffd
    800041f8:	1b0080e7          	jalr	432(ra) # 800013a4 <sem_close>
    800041fc:	0d813083          	ld	ra,216(sp)
    80004200:	0d013403          	ld	s0,208(sp)
    80004204:	0c813483          	ld	s1,200(sp)
    80004208:	0c013903          	ld	s2,192(sp)
    8000420c:	0e010113          	addi	sp,sp,224
    80004210:	00008067          	ret
    80004214:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004218:	00090513          	mv	a0,s2
    8000421c:	fffff097          	auipc	ra,0xfffff
    80004220:	c78080e7          	jalr	-904(ra) # 80002e94 <_ZdlPv>
    80004224:	00048513          	mv	a0,s1
    80004228:	00007097          	auipc	ra,0x7
    8000422c:	570080e7          	jalr	1392(ra) # 8000b798 <_Unwind_Resume>

0000000080004230 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004230:	fe010113          	addi	sp,sp,-32
    80004234:	00113c23          	sd	ra,24(sp)
    80004238:	00813823          	sd	s0,16(sp)
    8000423c:	00913423          	sd	s1,8(sp)
    80004240:	01213023          	sd	s2,0(sp)
    80004244:	02010413          	addi	s0,sp,32
    80004248:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000424c:	00100793          	li	a5,1
    80004250:	02a7f863          	bgeu	a5,a0,80004280 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004254:	00a00793          	li	a5,10
    80004258:	02f577b3          	remu	a5,a0,a5
    8000425c:	02078e63          	beqz	a5,80004298 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004260:	fff48513          	addi	a0,s1,-1
    80004264:	00000097          	auipc	ra,0x0
    80004268:	fcc080e7          	jalr	-52(ra) # 80004230 <_ZL9fibonaccim>
    8000426c:	00050913          	mv	s2,a0
    80004270:	ffe48513          	addi	a0,s1,-2
    80004274:	00000097          	auipc	ra,0x0
    80004278:	fbc080e7          	jalr	-68(ra) # 80004230 <_ZL9fibonaccim>
    8000427c:	00a90533          	add	a0,s2,a0
}
    80004280:	01813083          	ld	ra,24(sp)
    80004284:	01013403          	ld	s0,16(sp)
    80004288:	00813483          	ld	s1,8(sp)
    8000428c:	00013903          	ld	s2,0(sp)
    80004290:	02010113          	addi	sp,sp,32
    80004294:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004298:	ffffd097          	auipc	ra,0xffffd
    8000429c:	08c080e7          	jalr	140(ra) # 80001324 <thread_dispatch>
    800042a0:	fc1ff06f          	j	80004260 <_ZL9fibonaccim+0x30>

00000000800042a4 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    800042a4:	fe010113          	addi	sp,sp,-32
    800042a8:	00113c23          	sd	ra,24(sp)
    800042ac:	00813823          	sd	s0,16(sp)
    800042b0:	00913423          	sd	s1,8(sp)
    800042b4:	01213023          	sd	s2,0(sp)
    800042b8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800042bc:	00000913          	li	s2,0
    800042c0:	0380006f          	j	800042f8 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800042c4:	ffffd097          	auipc	ra,0xffffd
    800042c8:	060080e7          	jalr	96(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800042cc:	00148493          	addi	s1,s1,1
    800042d0:	000027b7          	lui	a5,0x2
    800042d4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800042d8:	0097ee63          	bltu	a5,s1,800042f4 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800042dc:	00000713          	li	a4,0
    800042e0:	000077b7          	lui	a5,0x7
    800042e4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800042e8:	fce7eee3          	bltu	a5,a4,800042c4 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800042ec:	00170713          	addi	a4,a4,1
    800042f0:	ff1ff06f          	j	800042e0 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800042f4:	00190913          	addi	s2,s2,1
    800042f8:	00900793          	li	a5,9
    800042fc:	0527e063          	bltu	a5,s2,8000433c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004300:	00004517          	auipc	a0,0x4
    80004304:	f3850513          	addi	a0,a0,-200 # 80008238 <_ZZN5Riscv12printIntegerEmE6digits+0xb0>
    80004308:	00001097          	auipc	ra,0x1
    8000430c:	ed0080e7          	jalr	-304(ra) # 800051d8 <_Z11printStringPKc>
    80004310:	00000613          	li	a2,0
    80004314:	00a00593          	li	a1,10
    80004318:	0009051b          	sext.w	a0,s2
    8000431c:	00001097          	auipc	ra,0x1
    80004320:	054080e7          	jalr	84(ra) # 80005370 <_Z8printIntiii>
    80004324:	00004517          	auipc	a0,0x4
    80004328:	e5c50513          	addi	a0,a0,-420 # 80008180 <CONSOLE_STATUS+0x170>
    8000432c:	00001097          	auipc	ra,0x1
    80004330:	eac080e7          	jalr	-340(ra) # 800051d8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004334:	00000493          	li	s1,0
    80004338:	f99ff06f          	j	800042d0 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    8000433c:	00004517          	auipc	a0,0x4
    80004340:	f0450513          	addi	a0,a0,-252 # 80008240 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80004344:	00001097          	auipc	ra,0x1
    80004348:	e94080e7          	jalr	-364(ra) # 800051d8 <_Z11printStringPKc>
    finishedA = true;
    8000434c:	00100793          	li	a5,1
    80004350:	00006717          	auipc	a4,0x6
    80004354:	36f70423          	sb	a5,872(a4) # 8000a6b8 <_ZL9finishedA>
}
    80004358:	01813083          	ld	ra,24(sp)
    8000435c:	01013403          	ld	s0,16(sp)
    80004360:	00813483          	ld	s1,8(sp)
    80004364:	00013903          	ld	s2,0(sp)
    80004368:	02010113          	addi	sp,sp,32
    8000436c:	00008067          	ret

0000000080004370 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004370:	fe010113          	addi	sp,sp,-32
    80004374:	00113c23          	sd	ra,24(sp)
    80004378:	00813823          	sd	s0,16(sp)
    8000437c:	00913423          	sd	s1,8(sp)
    80004380:	01213023          	sd	s2,0(sp)
    80004384:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004388:	00000913          	li	s2,0
    8000438c:	0380006f          	j	800043c4 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004390:	ffffd097          	auipc	ra,0xffffd
    80004394:	f94080e7          	jalr	-108(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004398:	00148493          	addi	s1,s1,1
    8000439c:	000027b7          	lui	a5,0x2
    800043a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800043a4:	0097ee63          	bltu	a5,s1,800043c0 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800043a8:	00000713          	li	a4,0
    800043ac:	000077b7          	lui	a5,0x7
    800043b0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800043b4:	fce7eee3          	bltu	a5,a4,80004390 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800043b8:	00170713          	addi	a4,a4,1
    800043bc:	ff1ff06f          	j	800043ac <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800043c0:	00190913          	addi	s2,s2,1
    800043c4:	00f00793          	li	a5,15
    800043c8:	0527e063          	bltu	a5,s2,80004408 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800043cc:	00004517          	auipc	a0,0x4
    800043d0:	e8450513          	addi	a0,a0,-380 # 80008250 <_ZZN5Riscv12printIntegerEmE6digits+0xc8>
    800043d4:	00001097          	auipc	ra,0x1
    800043d8:	e04080e7          	jalr	-508(ra) # 800051d8 <_Z11printStringPKc>
    800043dc:	00000613          	li	a2,0
    800043e0:	00a00593          	li	a1,10
    800043e4:	0009051b          	sext.w	a0,s2
    800043e8:	00001097          	auipc	ra,0x1
    800043ec:	f88080e7          	jalr	-120(ra) # 80005370 <_Z8printIntiii>
    800043f0:	00004517          	auipc	a0,0x4
    800043f4:	d9050513          	addi	a0,a0,-624 # 80008180 <CONSOLE_STATUS+0x170>
    800043f8:	00001097          	auipc	ra,0x1
    800043fc:	de0080e7          	jalr	-544(ra) # 800051d8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004400:	00000493          	li	s1,0
    80004404:	f99ff06f          	j	8000439c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004408:	00004517          	auipc	a0,0x4
    8000440c:	e5050513          	addi	a0,a0,-432 # 80008258 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    80004410:	00001097          	auipc	ra,0x1
    80004414:	dc8080e7          	jalr	-568(ra) # 800051d8 <_Z11printStringPKc>
    finishedB = true;
    80004418:	00100793          	li	a5,1
    8000441c:	00006717          	auipc	a4,0x6
    80004420:	28f70ea3          	sb	a5,669(a4) # 8000a6b9 <_ZL9finishedB>
    thread_dispatch();
    80004424:	ffffd097          	auipc	ra,0xffffd
    80004428:	f00080e7          	jalr	-256(ra) # 80001324 <thread_dispatch>
}
    8000442c:	01813083          	ld	ra,24(sp)
    80004430:	01013403          	ld	s0,16(sp)
    80004434:	00813483          	ld	s1,8(sp)
    80004438:	00013903          	ld	s2,0(sp)
    8000443c:	02010113          	addi	sp,sp,32
    80004440:	00008067          	ret

0000000080004444 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004444:	fe010113          	addi	sp,sp,-32
    80004448:	00113c23          	sd	ra,24(sp)
    8000444c:	00813823          	sd	s0,16(sp)
    80004450:	00913423          	sd	s1,8(sp)
    80004454:	01213023          	sd	s2,0(sp)
    80004458:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000445c:	00000493          	li	s1,0
    80004460:	0400006f          	j	800044a0 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004464:	00004517          	auipc	a0,0x4
    80004468:	e0450513          	addi	a0,a0,-508 # 80008268 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    8000446c:	00001097          	auipc	ra,0x1
    80004470:	d6c080e7          	jalr	-660(ra) # 800051d8 <_Z11printStringPKc>
    80004474:	00000613          	li	a2,0
    80004478:	00a00593          	li	a1,10
    8000447c:	00048513          	mv	a0,s1
    80004480:	00001097          	auipc	ra,0x1
    80004484:	ef0080e7          	jalr	-272(ra) # 80005370 <_Z8printIntiii>
    80004488:	00004517          	auipc	a0,0x4
    8000448c:	cf850513          	addi	a0,a0,-776 # 80008180 <CONSOLE_STATUS+0x170>
    80004490:	00001097          	auipc	ra,0x1
    80004494:	d48080e7          	jalr	-696(ra) # 800051d8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004498:	0014849b          	addiw	s1,s1,1
    8000449c:	0ff4f493          	andi	s1,s1,255
    800044a0:	00200793          	li	a5,2
    800044a4:	fc97f0e3          	bgeu	a5,s1,80004464 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800044a8:	00004517          	auipc	a0,0x4
    800044ac:	dc850513          	addi	a0,a0,-568 # 80008270 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    800044b0:	00001097          	auipc	ra,0x1
    800044b4:	d28080e7          	jalr	-728(ra) # 800051d8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800044b8:	00700313          	li	t1,7
    thread_dispatch();
    800044bc:	ffffd097          	auipc	ra,0xffffd
    800044c0:	e68080e7          	jalr	-408(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800044c4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800044c8:	00004517          	auipc	a0,0x4
    800044cc:	db850513          	addi	a0,a0,-584 # 80008280 <_ZZN5Riscv12printIntegerEmE6digits+0xf8>
    800044d0:	00001097          	auipc	ra,0x1
    800044d4:	d08080e7          	jalr	-760(ra) # 800051d8 <_Z11printStringPKc>
    800044d8:	00000613          	li	a2,0
    800044dc:	00a00593          	li	a1,10
    800044e0:	0009051b          	sext.w	a0,s2
    800044e4:	00001097          	auipc	ra,0x1
    800044e8:	e8c080e7          	jalr	-372(ra) # 80005370 <_Z8printIntiii>
    800044ec:	00004517          	auipc	a0,0x4
    800044f0:	c9450513          	addi	a0,a0,-876 # 80008180 <CONSOLE_STATUS+0x170>
    800044f4:	00001097          	auipc	ra,0x1
    800044f8:	ce4080e7          	jalr	-796(ra) # 800051d8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800044fc:	00c00513          	li	a0,12
    80004500:	00000097          	auipc	ra,0x0
    80004504:	d30080e7          	jalr	-720(ra) # 80004230 <_ZL9fibonaccim>
    80004508:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000450c:	00004517          	auipc	a0,0x4
    80004510:	d7c50513          	addi	a0,a0,-644 # 80008288 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80004514:	00001097          	auipc	ra,0x1
    80004518:	cc4080e7          	jalr	-828(ra) # 800051d8 <_Z11printStringPKc>
    8000451c:	00000613          	li	a2,0
    80004520:	00a00593          	li	a1,10
    80004524:	0009051b          	sext.w	a0,s2
    80004528:	00001097          	auipc	ra,0x1
    8000452c:	e48080e7          	jalr	-440(ra) # 80005370 <_Z8printIntiii>
    80004530:	00004517          	auipc	a0,0x4
    80004534:	c5050513          	addi	a0,a0,-944 # 80008180 <CONSOLE_STATUS+0x170>
    80004538:	00001097          	auipc	ra,0x1
    8000453c:	ca0080e7          	jalr	-864(ra) # 800051d8 <_Z11printStringPKc>
    80004540:	0400006f          	j	80004580 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004544:	00004517          	auipc	a0,0x4
    80004548:	d2450513          	addi	a0,a0,-732 # 80008268 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    8000454c:	00001097          	auipc	ra,0x1
    80004550:	c8c080e7          	jalr	-884(ra) # 800051d8 <_Z11printStringPKc>
    80004554:	00000613          	li	a2,0
    80004558:	00a00593          	li	a1,10
    8000455c:	00048513          	mv	a0,s1
    80004560:	00001097          	auipc	ra,0x1
    80004564:	e10080e7          	jalr	-496(ra) # 80005370 <_Z8printIntiii>
    80004568:	00004517          	auipc	a0,0x4
    8000456c:	c1850513          	addi	a0,a0,-1000 # 80008180 <CONSOLE_STATUS+0x170>
    80004570:	00001097          	auipc	ra,0x1
    80004574:	c68080e7          	jalr	-920(ra) # 800051d8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004578:	0014849b          	addiw	s1,s1,1
    8000457c:	0ff4f493          	andi	s1,s1,255
    80004580:	00500793          	li	a5,5
    80004584:	fc97f0e3          	bgeu	a5,s1,80004544 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004588:	00004517          	auipc	a0,0x4
    8000458c:	cb850513          	addi	a0,a0,-840 # 80008240 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80004590:	00001097          	auipc	ra,0x1
    80004594:	c48080e7          	jalr	-952(ra) # 800051d8 <_Z11printStringPKc>
    finishedC = true;
    80004598:	00100793          	li	a5,1
    8000459c:	00006717          	auipc	a4,0x6
    800045a0:	10f70f23          	sb	a5,286(a4) # 8000a6ba <_ZL9finishedC>
    thread_dispatch();
    800045a4:	ffffd097          	auipc	ra,0xffffd
    800045a8:	d80080e7          	jalr	-640(ra) # 80001324 <thread_dispatch>
}
    800045ac:	01813083          	ld	ra,24(sp)
    800045b0:	01013403          	ld	s0,16(sp)
    800045b4:	00813483          	ld	s1,8(sp)
    800045b8:	00013903          	ld	s2,0(sp)
    800045bc:	02010113          	addi	sp,sp,32
    800045c0:	00008067          	ret

00000000800045c4 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800045c4:	fe010113          	addi	sp,sp,-32
    800045c8:	00113c23          	sd	ra,24(sp)
    800045cc:	00813823          	sd	s0,16(sp)
    800045d0:	00913423          	sd	s1,8(sp)
    800045d4:	01213023          	sd	s2,0(sp)
    800045d8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800045dc:	00a00493          	li	s1,10
    800045e0:	0400006f          	j	80004620 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800045e4:	00004517          	auipc	a0,0x4
    800045e8:	cb450513          	addi	a0,a0,-844 # 80008298 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    800045ec:	00001097          	auipc	ra,0x1
    800045f0:	bec080e7          	jalr	-1044(ra) # 800051d8 <_Z11printStringPKc>
    800045f4:	00000613          	li	a2,0
    800045f8:	00a00593          	li	a1,10
    800045fc:	00048513          	mv	a0,s1
    80004600:	00001097          	auipc	ra,0x1
    80004604:	d70080e7          	jalr	-656(ra) # 80005370 <_Z8printIntiii>
    80004608:	00004517          	auipc	a0,0x4
    8000460c:	b7850513          	addi	a0,a0,-1160 # 80008180 <CONSOLE_STATUS+0x170>
    80004610:	00001097          	auipc	ra,0x1
    80004614:	bc8080e7          	jalr	-1080(ra) # 800051d8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004618:	0014849b          	addiw	s1,s1,1
    8000461c:	0ff4f493          	andi	s1,s1,255
    80004620:	00c00793          	li	a5,12
    80004624:	fc97f0e3          	bgeu	a5,s1,800045e4 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004628:	00004517          	auipc	a0,0x4
    8000462c:	c7850513          	addi	a0,a0,-904 # 800082a0 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    80004630:	00001097          	auipc	ra,0x1
    80004634:	ba8080e7          	jalr	-1112(ra) # 800051d8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004638:	00500313          	li	t1,5
    thread_dispatch();
    8000463c:	ffffd097          	auipc	ra,0xffffd
    80004640:	ce8080e7          	jalr	-792(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004644:	01000513          	li	a0,16
    80004648:	00000097          	auipc	ra,0x0
    8000464c:	be8080e7          	jalr	-1048(ra) # 80004230 <_ZL9fibonaccim>
    80004650:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004654:	00004517          	auipc	a0,0x4
    80004658:	c5c50513          	addi	a0,a0,-932 # 800082b0 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    8000465c:	00001097          	auipc	ra,0x1
    80004660:	b7c080e7          	jalr	-1156(ra) # 800051d8 <_Z11printStringPKc>
    80004664:	00000613          	li	a2,0
    80004668:	00a00593          	li	a1,10
    8000466c:	0009051b          	sext.w	a0,s2
    80004670:	00001097          	auipc	ra,0x1
    80004674:	d00080e7          	jalr	-768(ra) # 80005370 <_Z8printIntiii>
    80004678:	00004517          	auipc	a0,0x4
    8000467c:	b0850513          	addi	a0,a0,-1272 # 80008180 <CONSOLE_STATUS+0x170>
    80004680:	00001097          	auipc	ra,0x1
    80004684:	b58080e7          	jalr	-1192(ra) # 800051d8 <_Z11printStringPKc>
    80004688:	0400006f          	j	800046c8 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000468c:	00004517          	auipc	a0,0x4
    80004690:	c0c50513          	addi	a0,a0,-1012 # 80008298 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80004694:	00001097          	auipc	ra,0x1
    80004698:	b44080e7          	jalr	-1212(ra) # 800051d8 <_Z11printStringPKc>
    8000469c:	00000613          	li	a2,0
    800046a0:	00a00593          	li	a1,10
    800046a4:	00048513          	mv	a0,s1
    800046a8:	00001097          	auipc	ra,0x1
    800046ac:	cc8080e7          	jalr	-824(ra) # 80005370 <_Z8printIntiii>
    800046b0:	00004517          	auipc	a0,0x4
    800046b4:	ad050513          	addi	a0,a0,-1328 # 80008180 <CONSOLE_STATUS+0x170>
    800046b8:	00001097          	auipc	ra,0x1
    800046bc:	b20080e7          	jalr	-1248(ra) # 800051d8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800046c0:	0014849b          	addiw	s1,s1,1
    800046c4:	0ff4f493          	andi	s1,s1,255
    800046c8:	00f00793          	li	a5,15
    800046cc:	fc97f0e3          	bgeu	a5,s1,8000468c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800046d0:	00004517          	auipc	a0,0x4
    800046d4:	bf050513          	addi	a0,a0,-1040 # 800082c0 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    800046d8:	00001097          	auipc	ra,0x1
    800046dc:	b00080e7          	jalr	-1280(ra) # 800051d8 <_Z11printStringPKc>
    finishedD = true;
    800046e0:	00100793          	li	a5,1
    800046e4:	00006717          	auipc	a4,0x6
    800046e8:	fcf70ba3          	sb	a5,-41(a4) # 8000a6bb <_ZL9finishedD>
    thread_dispatch();
    800046ec:	ffffd097          	auipc	ra,0xffffd
    800046f0:	c38080e7          	jalr	-968(ra) # 80001324 <thread_dispatch>
}
    800046f4:	01813083          	ld	ra,24(sp)
    800046f8:	01013403          	ld	s0,16(sp)
    800046fc:	00813483          	ld	s1,8(sp)
    80004700:	00013903          	ld	s2,0(sp)
    80004704:	02010113          	addi	sp,sp,32
    80004708:	00008067          	ret

000000008000470c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    8000470c:	fc010113          	addi	sp,sp,-64
    80004710:	02113c23          	sd	ra,56(sp)
    80004714:	02813823          	sd	s0,48(sp)
    80004718:	02913423          	sd	s1,40(sp)
    8000471c:	03213023          	sd	s2,32(sp)
    80004720:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004724:	02000513          	li	a0,32
    80004728:	ffffe097          	auipc	ra,0xffffe
    8000472c:	744080e7          	jalr	1860(ra) # 80002e6c <_Znwm>
    80004730:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80004734:	fffff097          	auipc	ra,0xfffff
    80004738:	904080e7          	jalr	-1788(ra) # 80003038 <_ZN6ThreadC1Ev>
    8000473c:	00006797          	auipc	a5,0x6
    80004740:	dd478793          	addi	a5,a5,-556 # 8000a510 <_ZTV7WorkerA+0x10>
    80004744:	00f4b023          	sd	a5,0(s1)
    80004748:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    8000474c:	00004517          	auipc	a0,0x4
    80004750:	b8450513          	addi	a0,a0,-1148 # 800082d0 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004754:	00001097          	auipc	ra,0x1
    80004758:	a84080e7          	jalr	-1404(ra) # 800051d8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    8000475c:	02000513          	li	a0,32
    80004760:	ffffe097          	auipc	ra,0xffffe
    80004764:	70c080e7          	jalr	1804(ra) # 80002e6c <_Znwm>
    80004768:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    8000476c:	fffff097          	auipc	ra,0xfffff
    80004770:	8cc080e7          	jalr	-1844(ra) # 80003038 <_ZN6ThreadC1Ev>
    80004774:	00006797          	auipc	a5,0x6
    80004778:	dc478793          	addi	a5,a5,-572 # 8000a538 <_ZTV7WorkerB+0x10>
    8000477c:	00f4b023          	sd	a5,0(s1)
    80004780:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004784:	00004517          	auipc	a0,0x4
    80004788:	b6450513          	addi	a0,a0,-1180 # 800082e8 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    8000478c:	00001097          	auipc	ra,0x1
    80004790:	a4c080e7          	jalr	-1460(ra) # 800051d8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004794:	02000513          	li	a0,32
    80004798:	ffffe097          	auipc	ra,0xffffe
    8000479c:	6d4080e7          	jalr	1748(ra) # 80002e6c <_Znwm>
    800047a0:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    800047a4:	fffff097          	auipc	ra,0xfffff
    800047a8:	894080e7          	jalr	-1900(ra) # 80003038 <_ZN6ThreadC1Ev>
    800047ac:	00006797          	auipc	a5,0x6
    800047b0:	db478793          	addi	a5,a5,-588 # 8000a560 <_ZTV7WorkerC+0x10>
    800047b4:	00f4b023          	sd	a5,0(s1)
    800047b8:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800047bc:	00004517          	auipc	a0,0x4
    800047c0:	b4450513          	addi	a0,a0,-1212 # 80008300 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    800047c4:	00001097          	auipc	ra,0x1
    800047c8:	a14080e7          	jalr	-1516(ra) # 800051d8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800047cc:	02000513          	li	a0,32
    800047d0:	ffffe097          	auipc	ra,0xffffe
    800047d4:	69c080e7          	jalr	1692(ra) # 80002e6c <_Znwm>
    800047d8:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    800047dc:	fffff097          	auipc	ra,0xfffff
    800047e0:	85c080e7          	jalr	-1956(ra) # 80003038 <_ZN6ThreadC1Ev>
    800047e4:	00006797          	auipc	a5,0x6
    800047e8:	da478793          	addi	a5,a5,-604 # 8000a588 <_ZTV7WorkerD+0x10>
    800047ec:	00f4b023          	sd	a5,0(s1)
    800047f0:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800047f4:	00004517          	auipc	a0,0x4
    800047f8:	b2450513          	addi	a0,a0,-1244 # 80008318 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    800047fc:	00001097          	auipc	ra,0x1
    80004800:	9dc080e7          	jalr	-1572(ra) # 800051d8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004804:	00000493          	li	s1,0
    80004808:	00300793          	li	a5,3
    8000480c:	0297c663          	blt	a5,s1,80004838 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004810:	00349793          	slli	a5,s1,0x3
    80004814:	fe040713          	addi	a4,s0,-32
    80004818:	00f707b3          	add	a5,a4,a5
    8000481c:	fe07b503          	ld	a0,-32(a5)
    80004820:	ffffe097          	auipc	ra,0xffffe
    80004824:	71c080e7          	jalr	1820(ra) # 80002f3c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004828:	0014849b          	addiw	s1,s1,1
    8000482c:	fddff06f          	j	80004808 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004830:	ffffe097          	auipc	ra,0xffffe
    80004834:	750080e7          	jalr	1872(ra) # 80002f80 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004838:	00006797          	auipc	a5,0x6
    8000483c:	e807c783          	lbu	a5,-384(a5) # 8000a6b8 <_ZL9finishedA>
    80004840:	fe0788e3          	beqz	a5,80004830 <_Z20Threads_CPP_API_testv+0x124>
    80004844:	00006797          	auipc	a5,0x6
    80004848:	e757c783          	lbu	a5,-395(a5) # 8000a6b9 <_ZL9finishedB>
    8000484c:	fe0782e3          	beqz	a5,80004830 <_Z20Threads_CPP_API_testv+0x124>
    80004850:	00006797          	auipc	a5,0x6
    80004854:	e6a7c783          	lbu	a5,-406(a5) # 8000a6ba <_ZL9finishedC>
    80004858:	fc078ce3          	beqz	a5,80004830 <_Z20Threads_CPP_API_testv+0x124>
    8000485c:	00006797          	auipc	a5,0x6
    80004860:	e5f7c783          	lbu	a5,-417(a5) # 8000a6bb <_ZL9finishedD>
    80004864:	fc0786e3          	beqz	a5,80004830 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80004868:	fc040493          	addi	s1,s0,-64
    8000486c:	0080006f          	j	80004874 <_Z20Threads_CPP_API_testv+0x168>
    80004870:	00848493          	addi	s1,s1,8
    80004874:	fe040793          	addi	a5,s0,-32
    80004878:	08f48663          	beq	s1,a5,80004904 <_Z20Threads_CPP_API_testv+0x1f8>
    8000487c:	0004b503          	ld	a0,0(s1)
    80004880:	fe0508e3          	beqz	a0,80004870 <_Z20Threads_CPP_API_testv+0x164>
    80004884:	00053783          	ld	a5,0(a0)
    80004888:	0087b783          	ld	a5,8(a5)
    8000488c:	000780e7          	jalr	a5
    80004890:	fe1ff06f          	j	80004870 <_Z20Threads_CPP_API_testv+0x164>
    80004894:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004898:	00048513          	mv	a0,s1
    8000489c:	ffffe097          	auipc	ra,0xffffe
    800048a0:	5f8080e7          	jalr	1528(ra) # 80002e94 <_ZdlPv>
    800048a4:	00090513          	mv	a0,s2
    800048a8:	00007097          	auipc	ra,0x7
    800048ac:	ef0080e7          	jalr	-272(ra) # 8000b798 <_Unwind_Resume>
    800048b0:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800048b4:	00048513          	mv	a0,s1
    800048b8:	ffffe097          	auipc	ra,0xffffe
    800048bc:	5dc080e7          	jalr	1500(ra) # 80002e94 <_ZdlPv>
    800048c0:	00090513          	mv	a0,s2
    800048c4:	00007097          	auipc	ra,0x7
    800048c8:	ed4080e7          	jalr	-300(ra) # 8000b798 <_Unwind_Resume>
    800048cc:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800048d0:	00048513          	mv	a0,s1
    800048d4:	ffffe097          	auipc	ra,0xffffe
    800048d8:	5c0080e7          	jalr	1472(ra) # 80002e94 <_ZdlPv>
    800048dc:	00090513          	mv	a0,s2
    800048e0:	00007097          	auipc	ra,0x7
    800048e4:	eb8080e7          	jalr	-328(ra) # 8000b798 <_Unwind_Resume>
    800048e8:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800048ec:	00048513          	mv	a0,s1
    800048f0:	ffffe097          	auipc	ra,0xffffe
    800048f4:	5a4080e7          	jalr	1444(ra) # 80002e94 <_ZdlPv>
    800048f8:	00090513          	mv	a0,s2
    800048fc:	00007097          	auipc	ra,0x7
    80004900:	e9c080e7          	jalr	-356(ra) # 8000b798 <_Unwind_Resume>
    80004904:	03813083          	ld	ra,56(sp)
    80004908:	03013403          	ld	s0,48(sp)
    8000490c:	02813483          	ld	s1,40(sp)
    80004910:	02013903          	ld	s2,32(sp)
    80004914:	04010113          	addi	sp,sp,64
    80004918:	00008067          	ret

000000008000491c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    8000491c:	ff010113          	addi	sp,sp,-16
    80004920:	00113423          	sd	ra,8(sp)
    80004924:	00813023          	sd	s0,0(sp)
    80004928:	01010413          	addi	s0,sp,16
    8000492c:	00006797          	auipc	a5,0x6
    80004930:	be478793          	addi	a5,a5,-1052 # 8000a510 <_ZTV7WorkerA+0x10>
    80004934:	00f53023          	sd	a5,0(a0)
    80004938:	ffffe097          	auipc	ra,0xffffe
    8000493c:	478080e7          	jalr	1144(ra) # 80002db0 <_ZN6ThreadD1Ev>
    80004940:	00813083          	ld	ra,8(sp)
    80004944:	00013403          	ld	s0,0(sp)
    80004948:	01010113          	addi	sp,sp,16
    8000494c:	00008067          	ret

0000000080004950 <_ZN7WorkerAD0Ev>:
    80004950:	fe010113          	addi	sp,sp,-32
    80004954:	00113c23          	sd	ra,24(sp)
    80004958:	00813823          	sd	s0,16(sp)
    8000495c:	00913423          	sd	s1,8(sp)
    80004960:	02010413          	addi	s0,sp,32
    80004964:	00050493          	mv	s1,a0
    80004968:	00006797          	auipc	a5,0x6
    8000496c:	ba878793          	addi	a5,a5,-1112 # 8000a510 <_ZTV7WorkerA+0x10>
    80004970:	00f53023          	sd	a5,0(a0)
    80004974:	ffffe097          	auipc	ra,0xffffe
    80004978:	43c080e7          	jalr	1084(ra) # 80002db0 <_ZN6ThreadD1Ev>
    8000497c:	00048513          	mv	a0,s1
    80004980:	ffffe097          	auipc	ra,0xffffe
    80004984:	514080e7          	jalr	1300(ra) # 80002e94 <_ZdlPv>
    80004988:	01813083          	ld	ra,24(sp)
    8000498c:	01013403          	ld	s0,16(sp)
    80004990:	00813483          	ld	s1,8(sp)
    80004994:	02010113          	addi	sp,sp,32
    80004998:	00008067          	ret

000000008000499c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    8000499c:	ff010113          	addi	sp,sp,-16
    800049a0:	00113423          	sd	ra,8(sp)
    800049a4:	00813023          	sd	s0,0(sp)
    800049a8:	01010413          	addi	s0,sp,16
    800049ac:	00006797          	auipc	a5,0x6
    800049b0:	b8c78793          	addi	a5,a5,-1140 # 8000a538 <_ZTV7WorkerB+0x10>
    800049b4:	00f53023          	sd	a5,0(a0)
    800049b8:	ffffe097          	auipc	ra,0xffffe
    800049bc:	3f8080e7          	jalr	1016(ra) # 80002db0 <_ZN6ThreadD1Ev>
    800049c0:	00813083          	ld	ra,8(sp)
    800049c4:	00013403          	ld	s0,0(sp)
    800049c8:	01010113          	addi	sp,sp,16
    800049cc:	00008067          	ret

00000000800049d0 <_ZN7WorkerBD0Ev>:
    800049d0:	fe010113          	addi	sp,sp,-32
    800049d4:	00113c23          	sd	ra,24(sp)
    800049d8:	00813823          	sd	s0,16(sp)
    800049dc:	00913423          	sd	s1,8(sp)
    800049e0:	02010413          	addi	s0,sp,32
    800049e4:	00050493          	mv	s1,a0
    800049e8:	00006797          	auipc	a5,0x6
    800049ec:	b5078793          	addi	a5,a5,-1200 # 8000a538 <_ZTV7WorkerB+0x10>
    800049f0:	00f53023          	sd	a5,0(a0)
    800049f4:	ffffe097          	auipc	ra,0xffffe
    800049f8:	3bc080e7          	jalr	956(ra) # 80002db0 <_ZN6ThreadD1Ev>
    800049fc:	00048513          	mv	a0,s1
    80004a00:	ffffe097          	auipc	ra,0xffffe
    80004a04:	494080e7          	jalr	1172(ra) # 80002e94 <_ZdlPv>
    80004a08:	01813083          	ld	ra,24(sp)
    80004a0c:	01013403          	ld	s0,16(sp)
    80004a10:	00813483          	ld	s1,8(sp)
    80004a14:	02010113          	addi	sp,sp,32
    80004a18:	00008067          	ret

0000000080004a1c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004a1c:	ff010113          	addi	sp,sp,-16
    80004a20:	00113423          	sd	ra,8(sp)
    80004a24:	00813023          	sd	s0,0(sp)
    80004a28:	01010413          	addi	s0,sp,16
    80004a2c:	00006797          	auipc	a5,0x6
    80004a30:	b3478793          	addi	a5,a5,-1228 # 8000a560 <_ZTV7WorkerC+0x10>
    80004a34:	00f53023          	sd	a5,0(a0)
    80004a38:	ffffe097          	auipc	ra,0xffffe
    80004a3c:	378080e7          	jalr	888(ra) # 80002db0 <_ZN6ThreadD1Ev>
    80004a40:	00813083          	ld	ra,8(sp)
    80004a44:	00013403          	ld	s0,0(sp)
    80004a48:	01010113          	addi	sp,sp,16
    80004a4c:	00008067          	ret

0000000080004a50 <_ZN7WorkerCD0Ev>:
    80004a50:	fe010113          	addi	sp,sp,-32
    80004a54:	00113c23          	sd	ra,24(sp)
    80004a58:	00813823          	sd	s0,16(sp)
    80004a5c:	00913423          	sd	s1,8(sp)
    80004a60:	02010413          	addi	s0,sp,32
    80004a64:	00050493          	mv	s1,a0
    80004a68:	00006797          	auipc	a5,0x6
    80004a6c:	af878793          	addi	a5,a5,-1288 # 8000a560 <_ZTV7WorkerC+0x10>
    80004a70:	00f53023          	sd	a5,0(a0)
    80004a74:	ffffe097          	auipc	ra,0xffffe
    80004a78:	33c080e7          	jalr	828(ra) # 80002db0 <_ZN6ThreadD1Ev>
    80004a7c:	00048513          	mv	a0,s1
    80004a80:	ffffe097          	auipc	ra,0xffffe
    80004a84:	414080e7          	jalr	1044(ra) # 80002e94 <_ZdlPv>
    80004a88:	01813083          	ld	ra,24(sp)
    80004a8c:	01013403          	ld	s0,16(sp)
    80004a90:	00813483          	ld	s1,8(sp)
    80004a94:	02010113          	addi	sp,sp,32
    80004a98:	00008067          	ret

0000000080004a9c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004a9c:	ff010113          	addi	sp,sp,-16
    80004aa0:	00113423          	sd	ra,8(sp)
    80004aa4:	00813023          	sd	s0,0(sp)
    80004aa8:	01010413          	addi	s0,sp,16
    80004aac:	00006797          	auipc	a5,0x6
    80004ab0:	adc78793          	addi	a5,a5,-1316 # 8000a588 <_ZTV7WorkerD+0x10>
    80004ab4:	00f53023          	sd	a5,0(a0)
    80004ab8:	ffffe097          	auipc	ra,0xffffe
    80004abc:	2f8080e7          	jalr	760(ra) # 80002db0 <_ZN6ThreadD1Ev>
    80004ac0:	00813083          	ld	ra,8(sp)
    80004ac4:	00013403          	ld	s0,0(sp)
    80004ac8:	01010113          	addi	sp,sp,16
    80004acc:	00008067          	ret

0000000080004ad0 <_ZN7WorkerDD0Ev>:
    80004ad0:	fe010113          	addi	sp,sp,-32
    80004ad4:	00113c23          	sd	ra,24(sp)
    80004ad8:	00813823          	sd	s0,16(sp)
    80004adc:	00913423          	sd	s1,8(sp)
    80004ae0:	02010413          	addi	s0,sp,32
    80004ae4:	00050493          	mv	s1,a0
    80004ae8:	00006797          	auipc	a5,0x6
    80004aec:	aa078793          	addi	a5,a5,-1376 # 8000a588 <_ZTV7WorkerD+0x10>
    80004af0:	00f53023          	sd	a5,0(a0)
    80004af4:	ffffe097          	auipc	ra,0xffffe
    80004af8:	2bc080e7          	jalr	700(ra) # 80002db0 <_ZN6ThreadD1Ev>
    80004afc:	00048513          	mv	a0,s1
    80004b00:	ffffe097          	auipc	ra,0xffffe
    80004b04:	394080e7          	jalr	916(ra) # 80002e94 <_ZdlPv>
    80004b08:	01813083          	ld	ra,24(sp)
    80004b0c:	01013403          	ld	s0,16(sp)
    80004b10:	00813483          	ld	s1,8(sp)
    80004b14:	02010113          	addi	sp,sp,32
    80004b18:	00008067          	ret

0000000080004b1c <_ZN7WorkerA3runEv>:
    void run() override {
    80004b1c:	ff010113          	addi	sp,sp,-16
    80004b20:	00113423          	sd	ra,8(sp)
    80004b24:	00813023          	sd	s0,0(sp)
    80004b28:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004b2c:	00000593          	li	a1,0
    80004b30:	fffff097          	auipc	ra,0xfffff
    80004b34:	774080e7          	jalr	1908(ra) # 800042a4 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004b38:	00813083          	ld	ra,8(sp)
    80004b3c:	00013403          	ld	s0,0(sp)
    80004b40:	01010113          	addi	sp,sp,16
    80004b44:	00008067          	ret

0000000080004b48 <_ZN7WorkerB3runEv>:
    void run() override {
    80004b48:	ff010113          	addi	sp,sp,-16
    80004b4c:	00113423          	sd	ra,8(sp)
    80004b50:	00813023          	sd	s0,0(sp)
    80004b54:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004b58:	00000593          	li	a1,0
    80004b5c:	00000097          	auipc	ra,0x0
    80004b60:	814080e7          	jalr	-2028(ra) # 80004370 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004b64:	00813083          	ld	ra,8(sp)
    80004b68:	00013403          	ld	s0,0(sp)
    80004b6c:	01010113          	addi	sp,sp,16
    80004b70:	00008067          	ret

0000000080004b74 <_ZN7WorkerC3runEv>:
    void run() override {
    80004b74:	ff010113          	addi	sp,sp,-16
    80004b78:	00113423          	sd	ra,8(sp)
    80004b7c:	00813023          	sd	s0,0(sp)
    80004b80:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004b84:	00000593          	li	a1,0
    80004b88:	00000097          	auipc	ra,0x0
    80004b8c:	8bc080e7          	jalr	-1860(ra) # 80004444 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004b90:	00813083          	ld	ra,8(sp)
    80004b94:	00013403          	ld	s0,0(sp)
    80004b98:	01010113          	addi	sp,sp,16
    80004b9c:	00008067          	ret

0000000080004ba0 <_ZN7WorkerD3runEv>:

    void run() override {
    80004ba0:	ff010113          	addi	sp,sp,-16
    80004ba4:	00113423          	sd	ra,8(sp)
    80004ba8:	00813023          	sd	s0,0(sp)
    80004bac:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004bb0:	00000593          	li	a1,0
    80004bb4:	00000097          	auipc	ra,0x0
    80004bb8:	a10080e7          	jalr	-1520(ra) # 800045c4 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004bbc:	00813083          	ld	ra,8(sp)
    80004bc0:	00013403          	ld	s0,0(sp)
    80004bc4:	01010113          	addi	sp,sp,16
    80004bc8:	00008067          	ret

0000000080004bcc <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80004bcc:	fe010113          	addi	sp,sp,-32
    80004bd0:	00113c23          	sd	ra,24(sp)
    80004bd4:	00813823          	sd	s0,16(sp)
    80004bd8:	00913423          	sd	s1,8(sp)
    80004bdc:	01213023          	sd	s2,0(sp)
    80004be0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004be4:	00000913          	li	s2,0
    80004be8:	0340006f          	j	80004c1c <_Z11workerBodyAPv+0x50>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 500; j++) {
            //Riscv::printString("A j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
            thread_dispatch();
    80004bec:	ffffc097          	auipc	ra,0xffffc
    80004bf0:	738080e7          	jalr	1848(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 500; j++) {
    80004bf4:	00148493          	addi	s1,s1,1
    80004bf8:	1f300793          	li	a5,499
    80004bfc:	0097ee63          	bltu	a5,s1,80004c18 <_Z11workerBodyAPv+0x4c>
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
    80004c00:	00000713          	li	a4,0
    80004c04:	000017b7          	lui	a5,0x1
    80004c08:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    80004c0c:	fee7e0e3          	bltu	a5,a4,80004bec <_Z11workerBodyAPv+0x20>
    80004c10:	00170713          	addi	a4,a4,1
    80004c14:	ff1ff06f          	j	80004c04 <_Z11workerBodyAPv+0x38>
    for (uint64 i = 0; i < 10; i++) {
    80004c18:	00190913          	addi	s2,s2,1
    80004c1c:	00900793          	li	a5,9
    80004c20:	0527e063          	bltu	a5,s2,80004c60 <_Z11workerBodyAPv+0x94>
        printString("A: i="); printInt(i); printString("\n");
    80004c24:	00003517          	auipc	a0,0x3
    80004c28:	61450513          	addi	a0,a0,1556 # 80008238 <_ZZN5Riscv12printIntegerEmE6digits+0xb0>
    80004c2c:	00000097          	auipc	ra,0x0
    80004c30:	5ac080e7          	jalr	1452(ra) # 800051d8 <_Z11printStringPKc>
    80004c34:	00000613          	li	a2,0
    80004c38:	00a00593          	li	a1,10
    80004c3c:	0009051b          	sext.w	a0,s2
    80004c40:	00000097          	auipc	ra,0x0
    80004c44:	730080e7          	jalr	1840(ra) # 80005370 <_Z8printIntiii>
    80004c48:	00003517          	auipc	a0,0x3
    80004c4c:	53850513          	addi	a0,a0,1336 # 80008180 <CONSOLE_STATUS+0x170>
    80004c50:	00000097          	auipc	ra,0x0
    80004c54:	588080e7          	jalr	1416(ra) # 800051d8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 500; j++) {
    80004c58:	00000493          	li	s1,0
    80004c5c:	f9dff06f          	j	80004bf8 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004c60:	00003517          	auipc	a0,0x3
    80004c64:	5e050513          	addi	a0,a0,1504 # 80008240 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80004c68:	00000097          	auipc	ra,0x0
    80004c6c:	570080e7          	jalr	1392(ra) # 800051d8 <_Z11printStringPKc>
    finishedA = true;
    80004c70:	00100793          	li	a5,1
    80004c74:	00006717          	auipc	a4,0x6
    80004c78:	a4f70423          	sb	a5,-1464(a4) # 8000a6bc <_ZL9finishedA>
}
    80004c7c:	01813083          	ld	ra,24(sp)
    80004c80:	01013403          	ld	s0,16(sp)
    80004c84:	00813483          	ld	s1,8(sp)
    80004c88:	00013903          	ld	s2,0(sp)
    80004c8c:	02010113          	addi	sp,sp,32
    80004c90:	00008067          	ret

0000000080004c94 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80004c94:	fe010113          	addi	sp,sp,-32
    80004c98:	00113c23          	sd	ra,24(sp)
    80004c9c:	00813823          	sd	s0,16(sp)
    80004ca0:	00913423          	sd	s1,8(sp)
    80004ca4:	01213023          	sd	s2,0(sp)
    80004ca8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004cac:	00000913          	li	s2,0
    80004cb0:	0340006f          	j	80004ce4 <_Z11workerBodyBPv+0x50>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 500; j++) {
            //Riscv::printString("B j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
            thread_dispatch();
    80004cb4:	ffffc097          	auipc	ra,0xffffc
    80004cb8:	670080e7          	jalr	1648(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 500; j++) {
    80004cbc:	00148493          	addi	s1,s1,1
    80004cc0:	1f300793          	li	a5,499
    80004cc4:	0097ee63          	bltu	a5,s1,80004ce0 <_Z11workerBodyBPv+0x4c>
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
    80004cc8:	00000713          	li	a4,0
    80004ccc:	000017b7          	lui	a5,0x1
    80004cd0:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    80004cd4:	fee7e0e3          	bltu	a5,a4,80004cb4 <_Z11workerBodyBPv+0x20>
    80004cd8:	00170713          	addi	a4,a4,1
    80004cdc:	ff1ff06f          	j	80004ccc <_Z11workerBodyBPv+0x38>
    for (uint64 i = 0; i < 16; i++) {
    80004ce0:	00190913          	addi	s2,s2,1
    80004ce4:	00f00793          	li	a5,15
    80004ce8:	0527e063          	bltu	a5,s2,80004d28 <_Z11workerBodyBPv+0x94>
        printString("B: i="); printInt(i); printString("\n");
    80004cec:	00003517          	auipc	a0,0x3
    80004cf0:	56450513          	addi	a0,a0,1380 # 80008250 <_ZZN5Riscv12printIntegerEmE6digits+0xc8>
    80004cf4:	00000097          	auipc	ra,0x0
    80004cf8:	4e4080e7          	jalr	1252(ra) # 800051d8 <_Z11printStringPKc>
    80004cfc:	00000613          	li	a2,0
    80004d00:	00a00593          	li	a1,10
    80004d04:	0009051b          	sext.w	a0,s2
    80004d08:	00000097          	auipc	ra,0x0
    80004d0c:	668080e7          	jalr	1640(ra) # 80005370 <_Z8printIntiii>
    80004d10:	00003517          	auipc	a0,0x3
    80004d14:	47050513          	addi	a0,a0,1136 # 80008180 <CONSOLE_STATUS+0x170>
    80004d18:	00000097          	auipc	ra,0x0
    80004d1c:	4c0080e7          	jalr	1216(ra) # 800051d8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 500; j++) {
    80004d20:	00000493          	li	s1,0
    80004d24:	f9dff06f          	j	80004cc0 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004d28:	00003517          	auipc	a0,0x3
    80004d2c:	53050513          	addi	a0,a0,1328 # 80008258 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    80004d30:	00000097          	auipc	ra,0x0
    80004d34:	4a8080e7          	jalr	1192(ra) # 800051d8 <_Z11printStringPKc>
    finishedB = true;
    80004d38:	00100793          	li	a5,1
    80004d3c:	00006717          	auipc	a4,0x6
    80004d40:	98f700a3          	sb	a5,-1663(a4) # 8000a6bd <_ZL9finishedB>
    thread_dispatch();
    80004d44:	ffffc097          	auipc	ra,0xffffc
    80004d48:	5e0080e7          	jalr	1504(ra) # 80001324 <thread_dispatch>
}
    80004d4c:	01813083          	ld	ra,24(sp)
    80004d50:	01013403          	ld	s0,16(sp)
    80004d54:	00813483          	ld	s1,8(sp)
    80004d58:	00013903          	ld	s2,0(sp)
    80004d5c:	02010113          	addi	sp,sp,32
    80004d60:	00008067          	ret

0000000080004d64 <_ZL9fibonaccim>:
static uint64 fibonacci(uint64 n) {
    80004d64:	fe010113          	addi	sp,sp,-32
    80004d68:	00113c23          	sd	ra,24(sp)
    80004d6c:	00813823          	sd	s0,16(sp)
    80004d70:	00913423          	sd	s1,8(sp)
    80004d74:	01213023          	sd	s2,0(sp)
    80004d78:	02010413          	addi	s0,sp,32
    80004d7c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004d80:	00100793          	li	a5,1
    80004d84:	02a7f863          	bgeu	a5,a0,80004db4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004d88:	00a00793          	li	a5,10
    80004d8c:	02f577b3          	remu	a5,a0,a5
    80004d90:	02078e63          	beqz	a5,80004dcc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004d94:	fff48513          	addi	a0,s1,-1
    80004d98:	00000097          	auipc	ra,0x0
    80004d9c:	fcc080e7          	jalr	-52(ra) # 80004d64 <_ZL9fibonaccim>
    80004da0:	00050913          	mv	s2,a0
    80004da4:	ffe48513          	addi	a0,s1,-2
    80004da8:	00000097          	auipc	ra,0x0
    80004dac:	fbc080e7          	jalr	-68(ra) # 80004d64 <_ZL9fibonaccim>
    80004db0:	00a90533          	add	a0,s2,a0
}
    80004db4:	01813083          	ld	ra,24(sp)
    80004db8:	01013403          	ld	s0,16(sp)
    80004dbc:	00813483          	ld	s1,8(sp)
    80004dc0:	00013903          	ld	s2,0(sp)
    80004dc4:	02010113          	addi	sp,sp,32
    80004dc8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004dcc:	ffffc097          	auipc	ra,0xffffc
    80004dd0:	558080e7          	jalr	1368(ra) # 80001324 <thread_dispatch>
    80004dd4:	fc1ff06f          	j	80004d94 <_ZL9fibonaccim+0x30>

0000000080004dd8 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80004dd8:	fe010113          	addi	sp,sp,-32
    80004ddc:	00113c23          	sd	ra,24(sp)
    80004de0:	00813823          	sd	s0,16(sp)
    80004de4:	00913423          	sd	s1,8(sp)
    80004de8:	01213023          	sd	s2,0(sp)
    80004dec:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004df0:	00000493          	li	s1,0
    80004df4:	0400006f          	j	80004e34 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004df8:	00003517          	auipc	a0,0x3
    80004dfc:	47050513          	addi	a0,a0,1136 # 80008268 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80004e00:	00000097          	auipc	ra,0x0
    80004e04:	3d8080e7          	jalr	984(ra) # 800051d8 <_Z11printStringPKc>
    80004e08:	00000613          	li	a2,0
    80004e0c:	00a00593          	li	a1,10
    80004e10:	00048513          	mv	a0,s1
    80004e14:	00000097          	auipc	ra,0x0
    80004e18:	55c080e7          	jalr	1372(ra) # 80005370 <_Z8printIntiii>
    80004e1c:	00003517          	auipc	a0,0x3
    80004e20:	36450513          	addi	a0,a0,868 # 80008180 <CONSOLE_STATUS+0x170>
    80004e24:	00000097          	auipc	ra,0x0
    80004e28:	3b4080e7          	jalr	948(ra) # 800051d8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004e2c:	0014849b          	addiw	s1,s1,1
    80004e30:	0ff4f493          	andi	s1,s1,255
    80004e34:	00200793          	li	a5,2
    80004e38:	fc97f0e3          	bgeu	a5,s1,80004df8 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80004e3c:	00003517          	auipc	a0,0x3
    80004e40:	43450513          	addi	a0,a0,1076 # 80008270 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    80004e44:	00000097          	auipc	ra,0x0
    80004e48:	394080e7          	jalr	916(ra) # 800051d8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004e4c:	00700313          	li	t1,7
    thread_dispatch();
    80004e50:	ffffc097          	auipc	ra,0xffffc
    80004e54:	4d4080e7          	jalr	1236(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004e58:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004e5c:	00003517          	auipc	a0,0x3
    80004e60:	42450513          	addi	a0,a0,1060 # 80008280 <_ZZN5Riscv12printIntegerEmE6digits+0xf8>
    80004e64:	00000097          	auipc	ra,0x0
    80004e68:	374080e7          	jalr	884(ra) # 800051d8 <_Z11printStringPKc>
    80004e6c:	00000613          	li	a2,0
    80004e70:	00a00593          	li	a1,10
    80004e74:	0009051b          	sext.w	a0,s2
    80004e78:	00000097          	auipc	ra,0x0
    80004e7c:	4f8080e7          	jalr	1272(ra) # 80005370 <_Z8printIntiii>
    80004e80:	00003517          	auipc	a0,0x3
    80004e84:	30050513          	addi	a0,a0,768 # 80008180 <CONSOLE_STATUS+0x170>
    80004e88:	00000097          	auipc	ra,0x0
    80004e8c:	350080e7          	jalr	848(ra) # 800051d8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004e90:	00c00513          	li	a0,12
    80004e94:	00000097          	auipc	ra,0x0
    80004e98:	ed0080e7          	jalr	-304(ra) # 80004d64 <_ZL9fibonaccim>
    80004e9c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004ea0:	00003517          	auipc	a0,0x3
    80004ea4:	3e850513          	addi	a0,a0,1000 # 80008288 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80004ea8:	00000097          	auipc	ra,0x0
    80004eac:	330080e7          	jalr	816(ra) # 800051d8 <_Z11printStringPKc>
    80004eb0:	00000613          	li	a2,0
    80004eb4:	00a00593          	li	a1,10
    80004eb8:	0009051b          	sext.w	a0,s2
    80004ebc:	00000097          	auipc	ra,0x0
    80004ec0:	4b4080e7          	jalr	1204(ra) # 80005370 <_Z8printIntiii>
    80004ec4:	00003517          	auipc	a0,0x3
    80004ec8:	2bc50513          	addi	a0,a0,700 # 80008180 <CONSOLE_STATUS+0x170>
    80004ecc:	00000097          	auipc	ra,0x0
    80004ed0:	30c080e7          	jalr	780(ra) # 800051d8 <_Z11printStringPKc>
    80004ed4:	0400006f          	j	80004f14 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004ed8:	00003517          	auipc	a0,0x3
    80004edc:	39050513          	addi	a0,a0,912 # 80008268 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80004ee0:	00000097          	auipc	ra,0x0
    80004ee4:	2f8080e7          	jalr	760(ra) # 800051d8 <_Z11printStringPKc>
    80004ee8:	00000613          	li	a2,0
    80004eec:	00a00593          	li	a1,10
    80004ef0:	00048513          	mv	a0,s1
    80004ef4:	00000097          	auipc	ra,0x0
    80004ef8:	47c080e7          	jalr	1148(ra) # 80005370 <_Z8printIntiii>
    80004efc:	00003517          	auipc	a0,0x3
    80004f00:	28450513          	addi	a0,a0,644 # 80008180 <CONSOLE_STATUS+0x170>
    80004f04:	00000097          	auipc	ra,0x0
    80004f08:	2d4080e7          	jalr	724(ra) # 800051d8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004f0c:	0014849b          	addiw	s1,s1,1
    80004f10:	0ff4f493          	andi	s1,s1,255
    80004f14:	00500793          	li	a5,5
    80004f18:	fc97f0e3          	bgeu	a5,s1,80004ed8 <_Z11workerBodyCPv+0x100>
    }

    printString("C finished!\n");
    80004f1c:	00003517          	auipc	a0,0x3
    80004f20:	41450513          	addi	a0,a0,1044 # 80008330 <_ZZN5Riscv12printIntegerEmE6digits+0x1a8>
    80004f24:	00000097          	auipc	ra,0x0
    80004f28:	2b4080e7          	jalr	692(ra) # 800051d8 <_Z11printStringPKc>
    finishedC = true;
    80004f2c:	00100793          	li	a5,1
    80004f30:	00005717          	auipc	a4,0x5
    80004f34:	78f70723          	sb	a5,1934(a4) # 8000a6be <_ZL9finishedC>
    thread_dispatch();
    80004f38:	ffffc097          	auipc	ra,0xffffc
    80004f3c:	3ec080e7          	jalr	1004(ra) # 80001324 <thread_dispatch>
}
    80004f40:	01813083          	ld	ra,24(sp)
    80004f44:	01013403          	ld	s0,16(sp)
    80004f48:	00813483          	ld	s1,8(sp)
    80004f4c:	00013903          	ld	s2,0(sp)
    80004f50:	02010113          	addi	sp,sp,32
    80004f54:	00008067          	ret

0000000080004f58 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80004f58:	fe010113          	addi	sp,sp,-32
    80004f5c:	00113c23          	sd	ra,24(sp)
    80004f60:	00813823          	sd	s0,16(sp)
    80004f64:	00913423          	sd	s1,8(sp)
    80004f68:	01213023          	sd	s2,0(sp)
    80004f6c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004f70:	00a00493          	li	s1,10
    80004f74:	0400006f          	j	80004fb4 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004f78:	00003517          	auipc	a0,0x3
    80004f7c:	32050513          	addi	a0,a0,800 # 80008298 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80004f80:	00000097          	auipc	ra,0x0
    80004f84:	258080e7          	jalr	600(ra) # 800051d8 <_Z11printStringPKc>
    80004f88:	00000613          	li	a2,0
    80004f8c:	00a00593          	li	a1,10
    80004f90:	00048513          	mv	a0,s1
    80004f94:	00000097          	auipc	ra,0x0
    80004f98:	3dc080e7          	jalr	988(ra) # 80005370 <_Z8printIntiii>
    80004f9c:	00003517          	auipc	a0,0x3
    80004fa0:	1e450513          	addi	a0,a0,484 # 80008180 <CONSOLE_STATUS+0x170>
    80004fa4:	00000097          	auipc	ra,0x0
    80004fa8:	234080e7          	jalr	564(ra) # 800051d8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004fac:	0014849b          	addiw	s1,s1,1
    80004fb0:	0ff4f493          	andi	s1,s1,255
    80004fb4:	00c00793          	li	a5,12
    80004fb8:	fc97f0e3          	bgeu	a5,s1,80004f78 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004fbc:	00003517          	auipc	a0,0x3
    80004fc0:	2e450513          	addi	a0,a0,740 # 800082a0 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    80004fc4:	00000097          	auipc	ra,0x0
    80004fc8:	214080e7          	jalr	532(ra) # 800051d8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004fcc:	00500313          	li	t1,5
    thread_dispatch();
    80004fd0:	ffffc097          	auipc	ra,0xffffc
    80004fd4:	354080e7          	jalr	852(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004fd8:	01000513          	li	a0,16
    80004fdc:	00000097          	auipc	ra,0x0
    80004fe0:	d88080e7          	jalr	-632(ra) # 80004d64 <_ZL9fibonaccim>
    80004fe4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004fe8:	00003517          	auipc	a0,0x3
    80004fec:	2c850513          	addi	a0,a0,712 # 800082b0 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80004ff0:	00000097          	auipc	ra,0x0
    80004ff4:	1e8080e7          	jalr	488(ra) # 800051d8 <_Z11printStringPKc>
    80004ff8:	00000613          	li	a2,0
    80004ffc:	00a00593          	li	a1,10
    80005000:	0009051b          	sext.w	a0,s2
    80005004:	00000097          	auipc	ra,0x0
    80005008:	36c080e7          	jalr	876(ra) # 80005370 <_Z8printIntiii>
    8000500c:	00003517          	auipc	a0,0x3
    80005010:	17450513          	addi	a0,a0,372 # 80008180 <CONSOLE_STATUS+0x170>
    80005014:	00000097          	auipc	ra,0x0
    80005018:	1c4080e7          	jalr	452(ra) # 800051d8 <_Z11printStringPKc>
    8000501c:	0400006f          	j	8000505c <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005020:	00003517          	auipc	a0,0x3
    80005024:	27850513          	addi	a0,a0,632 # 80008298 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80005028:	00000097          	auipc	ra,0x0
    8000502c:	1b0080e7          	jalr	432(ra) # 800051d8 <_Z11printStringPKc>
    80005030:	00000613          	li	a2,0
    80005034:	00a00593          	li	a1,10
    80005038:	00048513          	mv	a0,s1
    8000503c:	00000097          	auipc	ra,0x0
    80005040:	334080e7          	jalr	820(ra) # 80005370 <_Z8printIntiii>
    80005044:	00003517          	auipc	a0,0x3
    80005048:	13c50513          	addi	a0,a0,316 # 80008180 <CONSOLE_STATUS+0x170>
    8000504c:	00000097          	auipc	ra,0x0
    80005050:	18c080e7          	jalr	396(ra) # 800051d8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005054:	0014849b          	addiw	s1,s1,1
    80005058:	0ff4f493          	andi	s1,s1,255
    8000505c:	00f00793          	li	a5,15
    80005060:	fc97f0e3          	bgeu	a5,s1,80005020 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005064:	00003517          	auipc	a0,0x3
    80005068:	25c50513          	addi	a0,a0,604 # 800082c0 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    8000506c:	00000097          	auipc	ra,0x0
    80005070:	16c080e7          	jalr	364(ra) # 800051d8 <_Z11printStringPKc>
    finishedD = true;
    80005074:	00100793          	li	a5,1
    80005078:	00005717          	auipc	a4,0x5
    8000507c:	64f703a3          	sb	a5,1607(a4) # 8000a6bf <_ZL9finishedD>
    thread_dispatch();
    80005080:	ffffc097          	auipc	ra,0xffffc
    80005084:	2a4080e7          	jalr	676(ra) # 80001324 <thread_dispatch>
}
    80005088:	01813083          	ld	ra,24(sp)
    8000508c:	01013403          	ld	s0,16(sp)
    80005090:	00813483          	ld	s1,8(sp)
    80005094:	00013903          	ld	s2,0(sp)
    80005098:	02010113          	addi	sp,sp,32
    8000509c:	00008067          	ret

00000000800050a0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800050a0:	fc010113          	addi	sp,sp,-64
    800050a4:	02113c23          	sd	ra,56(sp)
    800050a8:	02813823          	sd	s0,48(sp)
    800050ac:	02913423          	sd	s1,40(sp)
    800050b0:	03213023          	sd	s2,32(sp)
    800050b4:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800050b8:	00000613          	li	a2,0
    800050bc:	00000597          	auipc	a1,0x0
    800050c0:	b1058593          	addi	a1,a1,-1264 # 80004bcc <_Z11workerBodyAPv>
    800050c4:	fc040513          	addi	a0,s0,-64
    800050c8:	ffffc097          	auipc	ra,0xffffc
    800050cc:	1dc080e7          	jalr	476(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    800050d0:	00003517          	auipc	a0,0x3
    800050d4:	20050513          	addi	a0,a0,512 # 800082d0 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    800050d8:	00000097          	auipc	ra,0x0
    800050dc:	100080e7          	jalr	256(ra) # 800051d8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800050e0:	00000613          	li	a2,0
    800050e4:	00000597          	auipc	a1,0x0
    800050e8:	bb058593          	addi	a1,a1,-1104 # 80004c94 <_Z11workerBodyBPv>
    800050ec:	fc840513          	addi	a0,s0,-56
    800050f0:	ffffc097          	auipc	ra,0xffffc
    800050f4:	1b4080e7          	jalr	436(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    800050f8:	00003517          	auipc	a0,0x3
    800050fc:	1f050513          	addi	a0,a0,496 # 800082e8 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80005100:	00000097          	auipc	ra,0x0
    80005104:	0d8080e7          	jalr	216(ra) # 800051d8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005108:	00000613          	li	a2,0
    8000510c:	00000597          	auipc	a1,0x0
    80005110:	ccc58593          	addi	a1,a1,-820 # 80004dd8 <_Z11workerBodyCPv>
    80005114:	fd040513          	addi	a0,s0,-48
    80005118:	ffffc097          	auipc	ra,0xffffc
    8000511c:	18c080e7          	jalr	396(ra) # 800012a4 <thread_create>
    printString("ThreadC created\n");
    80005120:	00003517          	auipc	a0,0x3
    80005124:	1e050513          	addi	a0,a0,480 # 80008300 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80005128:	00000097          	auipc	ra,0x0
    8000512c:	0b0080e7          	jalr	176(ra) # 800051d8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005130:	00000613          	li	a2,0
    80005134:	00000597          	auipc	a1,0x0
    80005138:	e2458593          	addi	a1,a1,-476 # 80004f58 <_Z11workerBodyDPv>
    8000513c:	fd840513          	addi	a0,s0,-40
    80005140:	ffffc097          	auipc	ra,0xffffc
    80005144:	164080e7          	jalr	356(ra) # 800012a4 <thread_create>
    printString("ThreadD created\n");
    80005148:	00003517          	auipc	a0,0x3
    8000514c:	1d050513          	addi	a0,a0,464 # 80008318 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    80005150:	00000097          	auipc	ra,0x0
    80005154:	088080e7          	jalr	136(ra) # 800051d8 <_Z11printStringPKc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005158:	00005797          	auipc	a5,0x5
    8000515c:	5647c783          	lbu	a5,1380(a5) # 8000a6bc <_ZL9finishedA>
    80005160:	fe078ce3          	beqz	a5,80005158 <_Z18Threads_C_API_testv+0xb8>
    80005164:	00005797          	auipc	a5,0x5
    80005168:	5597c783          	lbu	a5,1369(a5) # 8000a6bd <_ZL9finishedB>
    8000516c:	fe0786e3          	beqz	a5,80005158 <_Z18Threads_C_API_testv+0xb8>
    80005170:	00005797          	auipc	a5,0x5
    80005174:	54e7c783          	lbu	a5,1358(a5) # 8000a6be <_ZL9finishedC>
    80005178:	fe0780e3          	beqz	a5,80005158 <_Z18Threads_C_API_testv+0xb8>
    8000517c:	00005797          	auipc	a5,0x5
    80005180:	5437c783          	lbu	a5,1347(a5) # 8000a6bf <_ZL9finishedD>
    80005184:	fc078ae3          	beqz	a5,80005158 <_Z18Threads_C_API_testv+0xb8>
        //printString("Main thread\n");
        //thread_dispatch();
    }

    for (auto &thread: threads) {
    80005188:	fc040493          	addi	s1,s0,-64
    8000518c:	0080006f          	j	80005194 <_Z18Threads_C_API_testv+0xf4>
    80005190:	00848493          	addi	s1,s1,8
    80005194:	fe040793          	addi	a5,s0,-32
    80005198:	02f48463          	beq	s1,a5,800051c0 <_Z18Threads_C_API_testv+0x120>
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (PCB*)thread;
    8000519c:	0004b903          	ld	s2,0(s1)
    800051a0:	fe0908e3          	beqz	s2,80005190 <_Z18Threads_C_API_testv+0xf0>
    800051a4:	00090513          	mv	a0,s2
    800051a8:	ffffd097          	auipc	ra,0xffffd
    800051ac:	580080e7          	jalr	1408(ra) # 80002728 <_ZN3PCBD1Ev>
    800051b0:	00090513          	mv	a0,s2
    800051b4:	ffffd097          	auipc	ra,0xffffd
    800051b8:	54c080e7          	jalr	1356(ra) # 80002700 <_ZN3PCBdlEPv>
    800051bc:	fd5ff06f          	j	80005190 <_Z18Threads_C_API_testv+0xf0>
    }
}
    800051c0:	03813083          	ld	ra,56(sp)
    800051c4:	03013403          	ld	s0,48(sp)
    800051c8:	02813483          	ld	s1,40(sp)
    800051cc:	02013903          	ld	s2,32(sp)
    800051d0:	04010113          	addi	sp,sp,64
    800051d4:	00008067          	ret

00000000800051d8 <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    800051d8:	fe010113          	addi	sp,sp,-32
    800051dc:	00113c23          	sd	ra,24(sp)
    800051e0:	00813823          	sd	s0,16(sp)
    800051e4:	00913423          	sd	s1,8(sp)
    800051e8:	02010413          	addi	s0,sp,32
    800051ec:	00050493          	mv	s1,a0
    LOCK();
    800051f0:	00100613          	li	a2,1
    800051f4:	00000593          	li	a1,0
    800051f8:	00005517          	auipc	a0,0x5
    800051fc:	4c850513          	addi	a0,a0,1224 # 8000a6c0 <lockPrint>
    80005200:	ffffc097          	auipc	ra,0xffffc
    80005204:	008080e7          	jalr	8(ra) # 80001208 <copy_and_swap>
    80005208:	fe0514e3          	bnez	a0,800051f0 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    8000520c:	0004c503          	lbu	a0,0(s1)
    80005210:	00050a63          	beqz	a0,80005224 <_Z11printStringPKc+0x4c>
inline char getc() {
    return __getc();
}

inline void putc(char c) {
    __putc(c);
    80005214:	00003097          	auipc	ra,0x3
    80005218:	9f8080e7          	jalr	-1544(ra) # 80007c0c <__putc>
        putc(*string);
        string++;
    8000521c:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005220:	fedff06f          	j	8000520c <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005224:	00000613          	li	a2,0
    80005228:	00100593          	li	a1,1
    8000522c:	00005517          	auipc	a0,0x5
    80005230:	49450513          	addi	a0,a0,1172 # 8000a6c0 <lockPrint>
    80005234:	ffffc097          	auipc	ra,0xffffc
    80005238:	fd4080e7          	jalr	-44(ra) # 80001208 <copy_and_swap>
    8000523c:	fe0514e3          	bnez	a0,80005224 <_Z11printStringPKc+0x4c>
}
    80005240:	01813083          	ld	ra,24(sp)
    80005244:	01013403          	ld	s0,16(sp)
    80005248:	00813483          	ld	s1,8(sp)
    8000524c:	02010113          	addi	sp,sp,32
    80005250:	00008067          	ret

0000000080005254 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005254:	fd010113          	addi	sp,sp,-48
    80005258:	02113423          	sd	ra,40(sp)
    8000525c:	02813023          	sd	s0,32(sp)
    80005260:	00913c23          	sd	s1,24(sp)
    80005264:	01213823          	sd	s2,16(sp)
    80005268:	01313423          	sd	s3,8(sp)
    8000526c:	01413023          	sd	s4,0(sp)
    80005270:	03010413          	addi	s0,sp,48
    80005274:	00050993          	mv	s3,a0
    80005278:	00058a13          	mv	s4,a1
    LOCK();
    8000527c:	00100613          	li	a2,1
    80005280:	00000593          	li	a1,0
    80005284:	00005517          	auipc	a0,0x5
    80005288:	43c50513          	addi	a0,a0,1084 # 8000a6c0 <lockPrint>
    8000528c:	ffffc097          	auipc	ra,0xffffc
    80005290:	f7c080e7          	jalr	-132(ra) # 80001208 <copy_and_swap>
    80005294:	fe0514e3          	bnez	a0,8000527c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80005298:	00000913          	li	s2,0
    8000529c:	00090493          	mv	s1,s2
    800052a0:	0019091b          	addiw	s2,s2,1
    800052a4:	03495a63          	bge	s2,s4,800052d8 <_Z9getStringPci+0x84>
    return __getc();
    800052a8:	00003097          	auipc	ra,0x3
    800052ac:	9a0080e7          	jalr	-1632(ra) # 80007c48 <__getc>
        cc = getc();
        if (cc < 1)
    800052b0:	02050463          	beqz	a0,800052d8 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800052b4:	009984b3          	add	s1,s3,s1
    800052b8:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    800052bc:	00a00793          	li	a5,10
    800052c0:	00f50a63          	beq	a0,a5,800052d4 <_Z9getStringPci+0x80>
    800052c4:	00d00793          	li	a5,13
    800052c8:	fcf51ae3          	bne	a0,a5,8000529c <_Z9getStringPci+0x48>
        buf[i++] = c;
    800052cc:	00090493          	mv	s1,s2
    800052d0:	0080006f          	j	800052d8 <_Z9getStringPci+0x84>
    800052d4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800052d8:	009984b3          	add	s1,s3,s1
    800052dc:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800052e0:	00000613          	li	a2,0
    800052e4:	00100593          	li	a1,1
    800052e8:	00005517          	auipc	a0,0x5
    800052ec:	3d850513          	addi	a0,a0,984 # 8000a6c0 <lockPrint>
    800052f0:	ffffc097          	auipc	ra,0xffffc
    800052f4:	f18080e7          	jalr	-232(ra) # 80001208 <copy_and_swap>
    800052f8:	fe0514e3          	bnez	a0,800052e0 <_Z9getStringPci+0x8c>
    return buf;
}
    800052fc:	00098513          	mv	a0,s3
    80005300:	02813083          	ld	ra,40(sp)
    80005304:	02013403          	ld	s0,32(sp)
    80005308:	01813483          	ld	s1,24(sp)
    8000530c:	01013903          	ld	s2,16(sp)
    80005310:	00813983          	ld	s3,8(sp)
    80005314:	00013a03          	ld	s4,0(sp)
    80005318:	03010113          	addi	sp,sp,48
    8000531c:	00008067          	ret

0000000080005320 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005320:	ff010113          	addi	sp,sp,-16
    80005324:	00813423          	sd	s0,8(sp)
    80005328:	01010413          	addi	s0,sp,16
    8000532c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005330:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005334:	0006c603          	lbu	a2,0(a3)
    80005338:	fd06071b          	addiw	a4,a2,-48
    8000533c:	0ff77713          	andi	a4,a4,255
    80005340:	00900793          	li	a5,9
    80005344:	02e7e063          	bltu	a5,a4,80005364 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005348:	0025179b          	slliw	a5,a0,0x2
    8000534c:	00a787bb          	addw	a5,a5,a0
    80005350:	0017979b          	slliw	a5,a5,0x1
    80005354:	00168693          	addi	a3,a3,1
    80005358:	00c787bb          	addw	a5,a5,a2
    8000535c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005360:	fd5ff06f          	j	80005334 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005364:	00813403          	ld	s0,8(sp)
    80005368:	01010113          	addi	sp,sp,16
    8000536c:	00008067          	ret

0000000080005370 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005370:	fc010113          	addi	sp,sp,-64
    80005374:	02113c23          	sd	ra,56(sp)
    80005378:	02813823          	sd	s0,48(sp)
    8000537c:	02913423          	sd	s1,40(sp)
    80005380:	03213023          	sd	s2,32(sp)
    80005384:	01313c23          	sd	s3,24(sp)
    80005388:	04010413          	addi	s0,sp,64
    8000538c:	00050493          	mv	s1,a0
    80005390:	00058913          	mv	s2,a1
    80005394:	00060993          	mv	s3,a2
    LOCK();
    80005398:	00100613          	li	a2,1
    8000539c:	00000593          	li	a1,0
    800053a0:	00005517          	auipc	a0,0x5
    800053a4:	32050513          	addi	a0,a0,800 # 8000a6c0 <lockPrint>
    800053a8:	ffffc097          	auipc	ra,0xffffc
    800053ac:	e60080e7          	jalr	-416(ra) # 80001208 <copy_and_swap>
    800053b0:	fe0514e3          	bnez	a0,80005398 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    800053b4:	00098463          	beqz	s3,800053bc <_Z8printIntiii+0x4c>
    800053b8:	0804c463          	bltz	s1,80005440 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800053bc:	0004851b          	sext.w	a0,s1
    neg = 0;
    800053c0:	00000593          	li	a1,0
    }

    i = 0;
    800053c4:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    800053c8:	0009079b          	sext.w	a5,s2
    800053cc:	0325773b          	remuw	a4,a0,s2
    800053d0:	00048613          	mv	a2,s1
    800053d4:	0014849b          	addiw	s1,s1,1
    800053d8:	02071693          	slli	a3,a4,0x20
    800053dc:	0206d693          	srli	a3,a3,0x20
    800053e0:	00003717          	auipc	a4,0x3
    800053e4:	f6070713          	addi	a4,a4,-160 # 80008340 <_ZL6digits>
    800053e8:	00d70733          	add	a4,a4,a3
    800053ec:	00074683          	lbu	a3,0(a4)
    800053f0:	fd040713          	addi	a4,s0,-48
    800053f4:	00c70733          	add	a4,a4,a2
    800053f8:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    800053fc:	0005071b          	sext.w	a4,a0
    80005400:	0325553b          	divuw	a0,a0,s2
    80005404:	fcf772e3          	bgeu	a4,a5,800053c8 <_Z8printIntiii+0x58>
    if (neg)
    80005408:	00058c63          	beqz	a1,80005420 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    8000540c:	fd040793          	addi	a5,s0,-48
    80005410:	009784b3          	add	s1,a5,s1
    80005414:	02d00793          	li	a5,45
    80005418:	fef48823          	sb	a5,-16(s1)
    8000541c:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005420:	fff4849b          	addiw	s1,s1,-1
    80005424:	0204c463          	bltz	s1,8000544c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005428:	fd040793          	addi	a5,s0,-48
    8000542c:	009787b3          	add	a5,a5,s1
    __putc(c);
    80005430:	ff07c503          	lbu	a0,-16(a5)
    80005434:	00002097          	auipc	ra,0x2
    80005438:	7d8080e7          	jalr	2008(ra) # 80007c0c <__putc>
}
    8000543c:	fe5ff06f          	j	80005420 <_Z8printIntiii+0xb0>
        x = -xx;
    80005440:	4090053b          	negw	a0,s1
        neg = 1;
    80005444:	00100593          	li	a1,1
        x = -xx;
    80005448:	f7dff06f          	j	800053c4 <_Z8printIntiii+0x54>

    UNLOCK();
    8000544c:	00000613          	li	a2,0
    80005450:	00100593          	li	a1,1
    80005454:	00005517          	auipc	a0,0x5
    80005458:	26c50513          	addi	a0,a0,620 # 8000a6c0 <lockPrint>
    8000545c:	ffffc097          	auipc	ra,0xffffc
    80005460:	dac080e7          	jalr	-596(ra) # 80001208 <copy_and_swap>
    80005464:	fe0514e3          	bnez	a0,8000544c <_Z8printIntiii+0xdc>
}
    80005468:	03813083          	ld	ra,56(sp)
    8000546c:	03013403          	ld	s0,48(sp)
    80005470:	02813483          	ld	s1,40(sp)
    80005474:	02013903          	ld	s2,32(sp)
    80005478:	01813983          	ld	s3,24(sp)
    8000547c:	04010113          	addi	sp,sp,64
    80005480:	00008067          	ret

0000000080005484 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80005484:	fe010113          	addi	sp,sp,-32
    80005488:	00113c23          	sd	ra,24(sp)
    8000548c:	00813823          	sd	s0,16(sp)
    80005490:	00913423          	sd	s1,8(sp)
    80005494:	01213023          	sd	s2,0(sp)
    80005498:	02010413          	addi	s0,sp,32
    8000549c:	00050493          	mv	s1,a0
    800054a0:	00b52023          	sw	a1,0(a0)
    800054a4:	00052823          	sw	zero,16(a0)
    800054a8:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800054ac:	00259513          	slli	a0,a1,0x2
    800054b0:	ffffc097          	auipc	ra,0xffffc
    800054b4:	d98080e7          	jalr	-616(ra) # 80001248 <mem_alloc>
    800054b8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800054bc:	01000513          	li	a0,16
    800054c0:	ffffe097          	auipc	ra,0xffffe
    800054c4:	9ac080e7          	jalr	-1620(ra) # 80002e6c <_Znwm>
    800054c8:	00050913          	mv	s2,a0
    800054cc:	00000593          	li	a1,0
    800054d0:	ffffe097          	auipc	ra,0xffffe
    800054d4:	bd8080e7          	jalr	-1064(ra) # 800030a8 <_ZN9SemaphoreC1Ej>
    800054d8:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    800054dc:	01000513          	li	a0,16
    800054e0:	ffffe097          	auipc	ra,0xffffe
    800054e4:	98c080e7          	jalr	-1652(ra) # 80002e6c <_Znwm>
    800054e8:	00050913          	mv	s2,a0
    800054ec:	0004a583          	lw	a1,0(s1)
    800054f0:	ffffe097          	auipc	ra,0xffffe
    800054f4:	bb8080e7          	jalr	-1096(ra) # 800030a8 <_ZN9SemaphoreC1Ej>
    800054f8:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    800054fc:	01000513          	li	a0,16
    80005500:	ffffe097          	auipc	ra,0xffffe
    80005504:	96c080e7          	jalr	-1684(ra) # 80002e6c <_Znwm>
    80005508:	00050913          	mv	s2,a0
    8000550c:	00100593          	li	a1,1
    80005510:	ffffe097          	auipc	ra,0xffffe
    80005514:	b98080e7          	jalr	-1128(ra) # 800030a8 <_ZN9SemaphoreC1Ej>
    80005518:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000551c:	01000513          	li	a0,16
    80005520:	ffffe097          	auipc	ra,0xffffe
    80005524:	94c080e7          	jalr	-1716(ra) # 80002e6c <_Znwm>
    80005528:	00050913          	mv	s2,a0
    8000552c:	00100593          	li	a1,1
    80005530:	ffffe097          	auipc	ra,0xffffe
    80005534:	b78080e7          	jalr	-1160(ra) # 800030a8 <_ZN9SemaphoreC1Ej>
    80005538:	0324b823          	sd	s2,48(s1)
}
    8000553c:	01813083          	ld	ra,24(sp)
    80005540:	01013403          	ld	s0,16(sp)
    80005544:	00813483          	ld	s1,8(sp)
    80005548:	00013903          	ld	s2,0(sp)
    8000554c:	02010113          	addi	sp,sp,32
    80005550:	00008067          	ret
    80005554:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005558:	00090513          	mv	a0,s2
    8000555c:	ffffe097          	auipc	ra,0xffffe
    80005560:	938080e7          	jalr	-1736(ra) # 80002e94 <_ZdlPv>
    80005564:	00048513          	mv	a0,s1
    80005568:	00006097          	auipc	ra,0x6
    8000556c:	230080e7          	jalr	560(ra) # 8000b798 <_Unwind_Resume>
    80005570:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80005574:	00090513          	mv	a0,s2
    80005578:	ffffe097          	auipc	ra,0xffffe
    8000557c:	91c080e7          	jalr	-1764(ra) # 80002e94 <_ZdlPv>
    80005580:	00048513          	mv	a0,s1
    80005584:	00006097          	auipc	ra,0x6
    80005588:	214080e7          	jalr	532(ra) # 8000b798 <_Unwind_Resume>
    8000558c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005590:	00090513          	mv	a0,s2
    80005594:	ffffe097          	auipc	ra,0xffffe
    80005598:	900080e7          	jalr	-1792(ra) # 80002e94 <_ZdlPv>
    8000559c:	00048513          	mv	a0,s1
    800055a0:	00006097          	auipc	ra,0x6
    800055a4:	1f8080e7          	jalr	504(ra) # 8000b798 <_Unwind_Resume>
    800055a8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800055ac:	00090513          	mv	a0,s2
    800055b0:	ffffe097          	auipc	ra,0xffffe
    800055b4:	8e4080e7          	jalr	-1820(ra) # 80002e94 <_ZdlPv>
    800055b8:	00048513          	mv	a0,s1
    800055bc:	00006097          	auipc	ra,0x6
    800055c0:	1dc080e7          	jalr	476(ra) # 8000b798 <_Unwind_Resume>

00000000800055c4 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    800055c4:	fe010113          	addi	sp,sp,-32
    800055c8:	00113c23          	sd	ra,24(sp)
    800055cc:	00813823          	sd	s0,16(sp)
    800055d0:	00913423          	sd	s1,8(sp)
    800055d4:	02010413          	addi	s0,sp,32
    800055d8:	00050493          	mv	s1,a0
    __putc(c);
    800055dc:	00a00513          	li	a0,10
    800055e0:	00002097          	auipc	ra,0x2
    800055e4:	62c080e7          	jalr	1580(ra) # 80007c0c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    800055e8:	0104a783          	lw	a5,16(s1)
    800055ec:	0144a703          	lw	a4,20(s1)
    800055f0:	00e78c63          	beq	a5,a4,80005608 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800055f4:	0017879b          	addiw	a5,a5,1
    800055f8:	0004a703          	lw	a4,0(s1)
    800055fc:	02e7e7bb          	remw	a5,a5,a4
    80005600:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005604:	fe5ff06f          	j	800055e8 <_ZN9BufferCPPD1Ev+0x24>
    80005608:	02100513          	li	a0,33
    8000560c:	00002097          	auipc	ra,0x2
    80005610:	600080e7          	jalr	1536(ra) # 80007c0c <__putc>
    80005614:	00a00513          	li	a0,10
    80005618:	00002097          	auipc	ra,0x2
    8000561c:	5f4080e7          	jalr	1524(ra) # 80007c0c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005620:	0084b503          	ld	a0,8(s1)
    80005624:	ffffc097          	auipc	ra,0xffffc
    80005628:	c54080e7          	jalr	-940(ra) # 80001278 <mem_free>
    delete itemAvailable;
    8000562c:	0204b503          	ld	a0,32(s1)
    80005630:	00050863          	beqz	a0,80005640 <_ZN9BufferCPPD1Ev+0x7c>
    80005634:	00053783          	ld	a5,0(a0)
    80005638:	0087b783          	ld	a5,8(a5)
    8000563c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005640:	0184b503          	ld	a0,24(s1)
    80005644:	00050863          	beqz	a0,80005654 <_ZN9BufferCPPD1Ev+0x90>
    80005648:	00053783          	ld	a5,0(a0)
    8000564c:	0087b783          	ld	a5,8(a5)
    80005650:	000780e7          	jalr	a5
    delete mutexTail;
    80005654:	0304b503          	ld	a0,48(s1)
    80005658:	00050863          	beqz	a0,80005668 <_ZN9BufferCPPD1Ev+0xa4>
    8000565c:	00053783          	ld	a5,0(a0)
    80005660:	0087b783          	ld	a5,8(a5)
    80005664:	000780e7          	jalr	a5
    delete mutexHead;
    80005668:	0284b503          	ld	a0,40(s1)
    8000566c:	00050863          	beqz	a0,8000567c <_ZN9BufferCPPD1Ev+0xb8>
    80005670:	00053783          	ld	a5,0(a0)
    80005674:	0087b783          	ld	a5,8(a5)
    80005678:	000780e7          	jalr	a5

}
    8000567c:	01813083          	ld	ra,24(sp)
    80005680:	01013403          	ld	s0,16(sp)
    80005684:	00813483          	ld	s1,8(sp)
    80005688:	02010113          	addi	sp,sp,32
    8000568c:	00008067          	ret

0000000080005690 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80005690:	fe010113          	addi	sp,sp,-32
    80005694:	00113c23          	sd	ra,24(sp)
    80005698:	00813823          	sd	s0,16(sp)
    8000569c:	00913423          	sd	s1,8(sp)
    800056a0:	01213023          	sd	s2,0(sp)
    800056a4:	02010413          	addi	s0,sp,32
    800056a8:	00050493          	mv	s1,a0
    800056ac:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800056b0:	01853503          	ld	a0,24(a0)
    800056b4:	ffffe097          	auipc	ra,0xffffe
    800056b8:	9bc080e7          	jalr	-1604(ra) # 80003070 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800056bc:	0304b503          	ld	a0,48(s1)
    800056c0:	ffffe097          	auipc	ra,0xffffe
    800056c4:	9b0080e7          	jalr	-1616(ra) # 80003070 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800056c8:	0084b783          	ld	a5,8(s1)
    800056cc:	0144a703          	lw	a4,20(s1)
    800056d0:	00271713          	slli	a4,a4,0x2
    800056d4:	00e787b3          	add	a5,a5,a4
    800056d8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800056dc:	0144a783          	lw	a5,20(s1)
    800056e0:	0017879b          	addiw	a5,a5,1
    800056e4:	0004a703          	lw	a4,0(s1)
    800056e8:	02e7e7bb          	remw	a5,a5,a4
    800056ec:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800056f0:	0304b503          	ld	a0,48(s1)
    800056f4:	ffffe097          	auipc	ra,0xffffe
    800056f8:	a00080e7          	jalr	-1536(ra) # 800030f4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800056fc:	0204b503          	ld	a0,32(s1)
    80005700:	ffffe097          	auipc	ra,0xffffe
    80005704:	9f4080e7          	jalr	-1548(ra) # 800030f4 <_ZN9Semaphore6signalEv>

}
    80005708:	01813083          	ld	ra,24(sp)
    8000570c:	01013403          	ld	s0,16(sp)
    80005710:	00813483          	ld	s1,8(sp)
    80005714:	00013903          	ld	s2,0(sp)
    80005718:	02010113          	addi	sp,sp,32
    8000571c:	00008067          	ret

0000000080005720 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005720:	fe010113          	addi	sp,sp,-32
    80005724:	00113c23          	sd	ra,24(sp)
    80005728:	00813823          	sd	s0,16(sp)
    8000572c:	00913423          	sd	s1,8(sp)
    80005730:	01213023          	sd	s2,0(sp)
    80005734:	02010413          	addi	s0,sp,32
    80005738:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000573c:	02053503          	ld	a0,32(a0)
    80005740:	ffffe097          	auipc	ra,0xffffe
    80005744:	930080e7          	jalr	-1744(ra) # 80003070 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005748:	0284b503          	ld	a0,40(s1)
    8000574c:	ffffe097          	auipc	ra,0xffffe
    80005750:	924080e7          	jalr	-1756(ra) # 80003070 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005754:	0084b703          	ld	a4,8(s1)
    80005758:	0104a783          	lw	a5,16(s1)
    8000575c:	00279693          	slli	a3,a5,0x2
    80005760:	00d70733          	add	a4,a4,a3
    80005764:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005768:	0017879b          	addiw	a5,a5,1
    8000576c:	0004a703          	lw	a4,0(s1)
    80005770:	02e7e7bb          	remw	a5,a5,a4
    80005774:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005778:	0284b503          	ld	a0,40(s1)
    8000577c:	ffffe097          	auipc	ra,0xffffe
    80005780:	978080e7          	jalr	-1672(ra) # 800030f4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005784:	0184b503          	ld	a0,24(s1)
    80005788:	ffffe097          	auipc	ra,0xffffe
    8000578c:	96c080e7          	jalr	-1684(ra) # 800030f4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005790:	00090513          	mv	a0,s2
    80005794:	01813083          	ld	ra,24(sp)
    80005798:	01013403          	ld	s0,16(sp)
    8000579c:	00813483          	ld	s1,8(sp)
    800057a0:	00013903          	ld	s2,0(sp)
    800057a4:	02010113          	addi	sp,sp,32
    800057a8:	00008067          	ret

00000000800057ac <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    800057ac:	ff010113          	addi	sp,sp,-16
    800057b0:	00113423          	sd	ra,8(sp)
    800057b4:	00813023          	sd	s0,0(sp)
    800057b8:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    800057bc:	00000097          	auipc	ra,0x0
    800057c0:	8e4080e7          	jalr	-1820(ra) # 800050a0 <_Z18Threads_C_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    800057c4:	00813083          	ld	ra,8(sp)
    800057c8:	00013403          	ld	s0,0(sp)
    800057cc:	01010113          	addi	sp,sp,16
    800057d0:	00008067          	ret

00000000800057d4 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    800057d4:	fe010113          	addi	sp,sp,-32
    800057d8:	00113c23          	sd	ra,24(sp)
    800057dc:	00813823          	sd	s0,16(sp)
    800057e0:	00913423          	sd	s1,8(sp)
    800057e4:	01213023          	sd	s2,0(sp)
    800057e8:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800057ec:	00053903          	ld	s2,0(a0)
    int i = 6;
    800057f0:	00600493          	li	s1,6
    while (--i > 0) {
    800057f4:	fff4849b          	addiw	s1,s1,-1
    800057f8:	04905463          	blez	s1,80005840 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    800057fc:	00003517          	auipc	a0,0x3
    80005800:	b5c50513          	addi	a0,a0,-1188 # 80008358 <_ZL6digits+0x18>
    80005804:	00000097          	auipc	ra,0x0
    80005808:	9d4080e7          	jalr	-1580(ra) # 800051d8 <_Z11printStringPKc>
        printInt(sleep_time);
    8000580c:	00000613          	li	a2,0
    80005810:	00a00593          	li	a1,10
    80005814:	0009051b          	sext.w	a0,s2
    80005818:	00000097          	auipc	ra,0x0
    8000581c:	b58080e7          	jalr	-1192(ra) # 80005370 <_Z8printIntiii>
        printString(" !\n");
    80005820:	00003517          	auipc	a0,0x3
    80005824:	b4050513          	addi	a0,a0,-1216 # 80008360 <_ZL6digits+0x20>
    80005828:	00000097          	auipc	ra,0x0
    8000582c:	9b0080e7          	jalr	-1616(ra) # 800051d8 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005830:	00090513          	mv	a0,s2
    80005834:	ffffc097          	auipc	ra,0xffffc
    80005838:	bf4080e7          	jalr	-1036(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    8000583c:	fb9ff06f          	j	800057f4 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005840:	00a00793          	li	a5,10
    80005844:	02f95933          	divu	s2,s2,a5
    80005848:	fff90913          	addi	s2,s2,-1
    8000584c:	00005797          	auipc	a5,0x5
    80005850:	e7c78793          	addi	a5,a5,-388 # 8000a6c8 <finished>
    80005854:	01278933          	add	s2,a5,s2
    80005858:	00100793          	li	a5,1
    8000585c:	00f90023          	sb	a5,0(s2)
}
    80005860:	01813083          	ld	ra,24(sp)
    80005864:	01013403          	ld	s0,16(sp)
    80005868:	00813483          	ld	s1,8(sp)
    8000586c:	00013903          	ld	s2,0(sp)
    80005870:	02010113          	addi	sp,sp,32
    80005874:	00008067          	ret

0000000080005878 <_Z12testSleepingv>:

void testSleeping()
{
    80005878:	fc010113          	addi	sp,sp,-64
    8000587c:	02113c23          	sd	ra,56(sp)
    80005880:	02813823          	sd	s0,48(sp)
    80005884:	02913423          	sd	s1,40(sp)
    80005888:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    8000588c:	00a00793          	li	a5,10
    80005890:	fcf43823          	sd	a5,-48(s0)
    80005894:	01400793          	li	a5,20
    80005898:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000589c:	00000493          	li	s1,0
    800058a0:	02c0006f          	j	800058cc <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800058a4:	00349793          	slli	a5,s1,0x3
    800058a8:	fd040613          	addi	a2,s0,-48
    800058ac:	00f60633          	add	a2,a2,a5
    800058b0:	00000597          	auipc	a1,0x0
    800058b4:	f2458593          	addi	a1,a1,-220 # 800057d4 <_Z9sleepyRunPv>
    800058b8:	fc040513          	addi	a0,s0,-64
    800058bc:	00f50533          	add	a0,a0,a5
    800058c0:	ffffc097          	auipc	ra,0xffffc
    800058c4:	9e4080e7          	jalr	-1564(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800058c8:	0014849b          	addiw	s1,s1,1
    800058cc:	00100793          	li	a5,1
    800058d0:	fc97dae3          	bge	a5,s1,800058a4 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800058d4:	00005797          	auipc	a5,0x5
    800058d8:	df47c783          	lbu	a5,-524(a5) # 8000a6c8 <finished>
    800058dc:	fe078ce3          	beqz	a5,800058d4 <_Z12testSleepingv+0x5c>
    800058e0:	00005797          	auipc	a5,0x5
    800058e4:	de97c783          	lbu	a5,-535(a5) # 8000a6c9 <finished+0x1>
    800058e8:	fe0786e3          	beqz	a5,800058d4 <_Z12testSleepingv+0x5c>
}
    800058ec:	03813083          	ld	ra,56(sp)
    800058f0:	03013403          	ld	s0,48(sp)
    800058f4:	02813483          	ld	s1,40(sp)
    800058f8:	04010113          	addi	sp,sp,64
    800058fc:	00008067          	ret

0000000080005900 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    80005900:	fe010113          	addi	sp,sp,-32
    80005904:	00113c23          	sd	ra,24(sp)
    80005908:	00813823          	sd	s0,16(sp)
    8000590c:	00913423          	sd	s1,8(sp)
    80005910:	02010413          	addi	s0,sp,32
    80005914:	00050493          	mv	s1,a0
    80005918:	00b52023          	sw	a1,0(a0)
    8000591c:	00052823          	sw	zero,16(a0)
    80005920:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005924:	00259513          	slli	a0,a1,0x2
    80005928:	ffffc097          	auipc	ra,0xffffc
    8000592c:	920080e7          	jalr	-1760(ra) # 80001248 <mem_alloc>
    80005930:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005934:	00000593          	li	a1,0
    80005938:	02048513          	addi	a0,s1,32
    8000593c:	ffffc097          	auipc	ra,0xffffc
    80005940:	a30080e7          	jalr	-1488(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    80005944:	0004a583          	lw	a1,0(s1)
    80005948:	01848513          	addi	a0,s1,24
    8000594c:	ffffc097          	auipc	ra,0xffffc
    80005950:	a20080e7          	jalr	-1504(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    80005954:	00100593          	li	a1,1
    80005958:	02848513          	addi	a0,s1,40
    8000595c:	ffffc097          	auipc	ra,0xffffc
    80005960:	a10080e7          	jalr	-1520(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    80005964:	00100593          	li	a1,1
    80005968:	03048513          	addi	a0,s1,48
    8000596c:	ffffc097          	auipc	ra,0xffffc
    80005970:	a00080e7          	jalr	-1536(ra) # 8000136c <sem_open>
}
    80005974:	01813083          	ld	ra,24(sp)
    80005978:	01013403          	ld	s0,16(sp)
    8000597c:	00813483          	ld	s1,8(sp)
    80005980:	02010113          	addi	sp,sp,32
    80005984:	00008067          	ret

0000000080005988 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    80005988:	fe010113          	addi	sp,sp,-32
    8000598c:	00113c23          	sd	ra,24(sp)
    80005990:	00813823          	sd	s0,16(sp)
    80005994:	00913423          	sd	s1,8(sp)
    80005998:	02010413          	addi	s0,sp,32
    8000599c:	00050493          	mv	s1,a0
    800059a0:	00a00513          	li	a0,10
    800059a4:	00002097          	auipc	ra,0x2
    800059a8:	268080e7          	jalr	616(ra) # 80007c0c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    800059ac:	0104a783          	lw	a5,16(s1)
    800059b0:	0144a703          	lw	a4,20(s1)
    800059b4:	00e78c63          	beq	a5,a4,800059cc <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800059b8:	0017879b          	addiw	a5,a5,1
    800059bc:	0004a703          	lw	a4,0(s1)
    800059c0:	02e7e7bb          	remw	a5,a5,a4
    800059c4:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800059c8:	fe5ff06f          	j	800059ac <_ZN6BufferD1Ev+0x24>
    800059cc:	02100513          	li	a0,33
    800059d0:	00002097          	auipc	ra,0x2
    800059d4:	23c080e7          	jalr	572(ra) # 80007c0c <__putc>
    800059d8:	00a00513          	li	a0,10
    800059dc:	00002097          	auipc	ra,0x2
    800059e0:	230080e7          	jalr	560(ra) # 80007c0c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    800059e4:	0084b503          	ld	a0,8(s1)
    800059e8:	ffffc097          	auipc	ra,0xffffc
    800059ec:	890080e7          	jalr	-1904(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    800059f0:	0204b503          	ld	a0,32(s1)
    800059f4:	ffffc097          	auipc	ra,0xffffc
    800059f8:	9b0080e7          	jalr	-1616(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    800059fc:	0184b503          	ld	a0,24(s1)
    80005a00:	ffffc097          	auipc	ra,0xffffc
    80005a04:	9a4080e7          	jalr	-1628(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    80005a08:	0304b503          	ld	a0,48(s1)
    80005a0c:	ffffc097          	auipc	ra,0xffffc
    80005a10:	998080e7          	jalr	-1640(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    80005a14:	0284b503          	ld	a0,40(s1)
    80005a18:	ffffc097          	auipc	ra,0xffffc
    80005a1c:	98c080e7          	jalr	-1652(ra) # 800013a4 <sem_close>
}
    80005a20:	01813083          	ld	ra,24(sp)
    80005a24:	01013403          	ld	s0,16(sp)
    80005a28:	00813483          	ld	s1,8(sp)
    80005a2c:	02010113          	addi	sp,sp,32
    80005a30:	00008067          	ret

0000000080005a34 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    80005a34:	fe010113          	addi	sp,sp,-32
    80005a38:	00113c23          	sd	ra,24(sp)
    80005a3c:	00813823          	sd	s0,16(sp)
    80005a40:	00913423          	sd	s1,8(sp)
    80005a44:	01213023          	sd	s2,0(sp)
    80005a48:	02010413          	addi	s0,sp,32
    80005a4c:	00050493          	mv	s1,a0
    80005a50:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005a54:	01853503          	ld	a0,24(a0)
    80005a58:	ffffc097          	auipc	ra,0xffffc
    80005a5c:	978080e7          	jalr	-1672(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    80005a60:	0304b503          	ld	a0,48(s1)
    80005a64:	ffffc097          	auipc	ra,0xffffc
    80005a68:	96c080e7          	jalr	-1684(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    80005a6c:	0084b783          	ld	a5,8(s1)
    80005a70:	0144a703          	lw	a4,20(s1)
    80005a74:	00271713          	slli	a4,a4,0x2
    80005a78:	00e787b3          	add	a5,a5,a4
    80005a7c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005a80:	0144a783          	lw	a5,20(s1)
    80005a84:	0017879b          	addiw	a5,a5,1
    80005a88:	0004a703          	lw	a4,0(s1)
    80005a8c:	02e7e7bb          	remw	a5,a5,a4
    80005a90:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005a94:	0304b503          	ld	a0,48(s1)
    80005a98:	ffffc097          	auipc	ra,0xffffc
    80005a9c:	964080e7          	jalr	-1692(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    80005aa0:	0204b503          	ld	a0,32(s1)
    80005aa4:	ffffc097          	auipc	ra,0xffffc
    80005aa8:	958080e7          	jalr	-1704(ra) # 800013fc <sem_signal>

}
    80005aac:	01813083          	ld	ra,24(sp)
    80005ab0:	01013403          	ld	s0,16(sp)
    80005ab4:	00813483          	ld	s1,8(sp)
    80005ab8:	00013903          	ld	s2,0(sp)
    80005abc:	02010113          	addi	sp,sp,32
    80005ac0:	00008067          	ret

0000000080005ac4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005ac4:	fe010113          	addi	sp,sp,-32
    80005ac8:	00113c23          	sd	ra,24(sp)
    80005acc:	00813823          	sd	s0,16(sp)
    80005ad0:	00913423          	sd	s1,8(sp)
    80005ad4:	01213023          	sd	s2,0(sp)
    80005ad8:	02010413          	addi	s0,sp,32
    80005adc:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005ae0:	02053503          	ld	a0,32(a0)
    80005ae4:	ffffc097          	auipc	ra,0xffffc
    80005ae8:	8ec080e7          	jalr	-1812(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    80005aec:	0284b503          	ld	a0,40(s1)
    80005af0:	ffffc097          	auipc	ra,0xffffc
    80005af4:	8e0080e7          	jalr	-1824(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    80005af8:	0084b703          	ld	a4,8(s1)
    80005afc:	0104a783          	lw	a5,16(s1)
    80005b00:	00279693          	slli	a3,a5,0x2
    80005b04:	00d70733          	add	a4,a4,a3
    80005b08:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005b0c:	0017879b          	addiw	a5,a5,1
    80005b10:	0004a703          	lw	a4,0(s1)
    80005b14:	02e7e7bb          	remw	a5,a5,a4
    80005b18:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005b1c:	0284b503          	ld	a0,40(s1)
    80005b20:	ffffc097          	auipc	ra,0xffffc
    80005b24:	8dc080e7          	jalr	-1828(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    80005b28:	0184b503          	ld	a0,24(s1)
    80005b2c:	ffffc097          	auipc	ra,0xffffc
    80005b30:	8d0080e7          	jalr	-1840(ra) # 800013fc <sem_signal>

    return ret;
}
    80005b34:	00090513          	mv	a0,s2
    80005b38:	01813083          	ld	ra,24(sp)
    80005b3c:	01013403          	ld	s0,16(sp)
    80005b40:	00813483          	ld	s1,8(sp)
    80005b44:	00013903          	ld	s2,0(sp)
    80005b48:	02010113          	addi	sp,sp,32
    80005b4c:	00008067          	ret

0000000080005b50 <start>:
    80005b50:	ff010113          	addi	sp,sp,-16
    80005b54:	00813423          	sd	s0,8(sp)
    80005b58:	01010413          	addi	s0,sp,16
    80005b5c:	300027f3          	csrr	a5,mstatus
    80005b60:	ffffe737          	lui	a4,0xffffe
    80005b64:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff2ecf>
    80005b68:	00e7f7b3          	and	a5,a5,a4
    80005b6c:	00001737          	lui	a4,0x1
    80005b70:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005b74:	00e7e7b3          	or	a5,a5,a4
    80005b78:	30079073          	csrw	mstatus,a5
    80005b7c:	00000797          	auipc	a5,0x0
    80005b80:	16078793          	addi	a5,a5,352 # 80005cdc <system_main>
    80005b84:	34179073          	csrw	mepc,a5
    80005b88:	00000793          	li	a5,0
    80005b8c:	18079073          	csrw	satp,a5
    80005b90:	000107b7          	lui	a5,0x10
    80005b94:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005b98:	30279073          	csrw	medeleg,a5
    80005b9c:	30379073          	csrw	mideleg,a5
    80005ba0:	104027f3          	csrr	a5,sie
    80005ba4:	2227e793          	ori	a5,a5,546
    80005ba8:	10479073          	csrw	sie,a5
    80005bac:	fff00793          	li	a5,-1
    80005bb0:	00a7d793          	srli	a5,a5,0xa
    80005bb4:	3b079073          	csrw	pmpaddr0,a5
    80005bb8:	00f00793          	li	a5,15
    80005bbc:	3a079073          	csrw	pmpcfg0,a5
    80005bc0:	f14027f3          	csrr	a5,mhartid
    80005bc4:	0200c737          	lui	a4,0x200c
    80005bc8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005bcc:	0007869b          	sext.w	a3,a5
    80005bd0:	00269713          	slli	a4,a3,0x2
    80005bd4:	000f4637          	lui	a2,0xf4
    80005bd8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005bdc:	00d70733          	add	a4,a4,a3
    80005be0:	0037979b          	slliw	a5,a5,0x3
    80005be4:	020046b7          	lui	a3,0x2004
    80005be8:	00d787b3          	add	a5,a5,a3
    80005bec:	00c585b3          	add	a1,a1,a2
    80005bf0:	00371693          	slli	a3,a4,0x3
    80005bf4:	00005717          	auipc	a4,0x5
    80005bf8:	adc70713          	addi	a4,a4,-1316 # 8000a6d0 <timer_scratch>
    80005bfc:	00b7b023          	sd	a1,0(a5)
    80005c00:	00d70733          	add	a4,a4,a3
    80005c04:	00f73c23          	sd	a5,24(a4)
    80005c08:	02c73023          	sd	a2,32(a4)
    80005c0c:	34071073          	csrw	mscratch,a4
    80005c10:	00000797          	auipc	a5,0x0
    80005c14:	6e078793          	addi	a5,a5,1760 # 800062f0 <timervec>
    80005c18:	30579073          	csrw	mtvec,a5
    80005c1c:	300027f3          	csrr	a5,mstatus
    80005c20:	0087e793          	ori	a5,a5,8
    80005c24:	30079073          	csrw	mstatus,a5
    80005c28:	304027f3          	csrr	a5,mie
    80005c2c:	0807e793          	ori	a5,a5,128
    80005c30:	30479073          	csrw	mie,a5
    80005c34:	f14027f3          	csrr	a5,mhartid
    80005c38:	0007879b          	sext.w	a5,a5
    80005c3c:	00078213          	mv	tp,a5
    80005c40:	30200073          	mret
    80005c44:	00813403          	ld	s0,8(sp)
    80005c48:	01010113          	addi	sp,sp,16
    80005c4c:	00008067          	ret

0000000080005c50 <timerinit>:
    80005c50:	ff010113          	addi	sp,sp,-16
    80005c54:	00813423          	sd	s0,8(sp)
    80005c58:	01010413          	addi	s0,sp,16
    80005c5c:	f14027f3          	csrr	a5,mhartid
    80005c60:	0200c737          	lui	a4,0x200c
    80005c64:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005c68:	0007869b          	sext.w	a3,a5
    80005c6c:	00269713          	slli	a4,a3,0x2
    80005c70:	000f4637          	lui	a2,0xf4
    80005c74:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005c78:	00d70733          	add	a4,a4,a3
    80005c7c:	0037979b          	slliw	a5,a5,0x3
    80005c80:	020046b7          	lui	a3,0x2004
    80005c84:	00d787b3          	add	a5,a5,a3
    80005c88:	00c585b3          	add	a1,a1,a2
    80005c8c:	00371693          	slli	a3,a4,0x3
    80005c90:	00005717          	auipc	a4,0x5
    80005c94:	a4070713          	addi	a4,a4,-1472 # 8000a6d0 <timer_scratch>
    80005c98:	00b7b023          	sd	a1,0(a5)
    80005c9c:	00d70733          	add	a4,a4,a3
    80005ca0:	00f73c23          	sd	a5,24(a4)
    80005ca4:	02c73023          	sd	a2,32(a4)
    80005ca8:	34071073          	csrw	mscratch,a4
    80005cac:	00000797          	auipc	a5,0x0
    80005cb0:	64478793          	addi	a5,a5,1604 # 800062f0 <timervec>
    80005cb4:	30579073          	csrw	mtvec,a5
    80005cb8:	300027f3          	csrr	a5,mstatus
    80005cbc:	0087e793          	ori	a5,a5,8
    80005cc0:	30079073          	csrw	mstatus,a5
    80005cc4:	304027f3          	csrr	a5,mie
    80005cc8:	0807e793          	ori	a5,a5,128
    80005ccc:	30479073          	csrw	mie,a5
    80005cd0:	00813403          	ld	s0,8(sp)
    80005cd4:	01010113          	addi	sp,sp,16
    80005cd8:	00008067          	ret

0000000080005cdc <system_main>:
    80005cdc:	fe010113          	addi	sp,sp,-32
    80005ce0:	00813823          	sd	s0,16(sp)
    80005ce4:	00913423          	sd	s1,8(sp)
    80005ce8:	00113c23          	sd	ra,24(sp)
    80005cec:	02010413          	addi	s0,sp,32
    80005cf0:	00000097          	auipc	ra,0x0
    80005cf4:	0c4080e7          	jalr	196(ra) # 80005db4 <cpuid>
    80005cf8:	00005497          	auipc	s1,0x5
    80005cfc:	8f848493          	addi	s1,s1,-1800 # 8000a5f0 <started>
    80005d00:	02050263          	beqz	a0,80005d24 <system_main+0x48>
    80005d04:	0004a783          	lw	a5,0(s1)
    80005d08:	0007879b          	sext.w	a5,a5
    80005d0c:	fe078ce3          	beqz	a5,80005d04 <system_main+0x28>
    80005d10:	0ff0000f          	fence
    80005d14:	00002517          	auipc	a0,0x2
    80005d18:	68450513          	addi	a0,a0,1668 # 80008398 <_ZL6digits+0x58>
    80005d1c:	00001097          	auipc	ra,0x1
    80005d20:	a70080e7          	jalr	-1424(ra) # 8000678c <panic>
    80005d24:	00001097          	auipc	ra,0x1
    80005d28:	9c4080e7          	jalr	-1596(ra) # 800066e8 <consoleinit>
    80005d2c:	00001097          	auipc	ra,0x1
    80005d30:	150080e7          	jalr	336(ra) # 80006e7c <printfinit>
    80005d34:	00002517          	auipc	a0,0x2
    80005d38:	44c50513          	addi	a0,a0,1100 # 80008180 <CONSOLE_STATUS+0x170>
    80005d3c:	00001097          	auipc	ra,0x1
    80005d40:	aac080e7          	jalr	-1364(ra) # 800067e8 <__printf>
    80005d44:	00002517          	auipc	a0,0x2
    80005d48:	62450513          	addi	a0,a0,1572 # 80008368 <_ZL6digits+0x28>
    80005d4c:	00001097          	auipc	ra,0x1
    80005d50:	a9c080e7          	jalr	-1380(ra) # 800067e8 <__printf>
    80005d54:	00002517          	auipc	a0,0x2
    80005d58:	42c50513          	addi	a0,a0,1068 # 80008180 <CONSOLE_STATUS+0x170>
    80005d5c:	00001097          	auipc	ra,0x1
    80005d60:	a8c080e7          	jalr	-1396(ra) # 800067e8 <__printf>
    80005d64:	00001097          	auipc	ra,0x1
    80005d68:	4a4080e7          	jalr	1188(ra) # 80007208 <kinit>
    80005d6c:	00000097          	auipc	ra,0x0
    80005d70:	148080e7          	jalr	328(ra) # 80005eb4 <trapinit>
    80005d74:	00000097          	auipc	ra,0x0
    80005d78:	16c080e7          	jalr	364(ra) # 80005ee0 <trapinithart>
    80005d7c:	00000097          	auipc	ra,0x0
    80005d80:	5b4080e7          	jalr	1460(ra) # 80006330 <plicinit>
    80005d84:	00000097          	auipc	ra,0x0
    80005d88:	5d4080e7          	jalr	1492(ra) # 80006358 <plicinithart>
    80005d8c:	00000097          	auipc	ra,0x0
    80005d90:	078080e7          	jalr	120(ra) # 80005e04 <userinit>
    80005d94:	0ff0000f          	fence
    80005d98:	00100793          	li	a5,1
    80005d9c:	00002517          	auipc	a0,0x2
    80005da0:	5e450513          	addi	a0,a0,1508 # 80008380 <_ZL6digits+0x40>
    80005da4:	00f4a023          	sw	a5,0(s1)
    80005da8:	00001097          	auipc	ra,0x1
    80005dac:	a40080e7          	jalr	-1472(ra) # 800067e8 <__printf>
    80005db0:	0000006f          	j	80005db0 <system_main+0xd4>

0000000080005db4 <cpuid>:
    80005db4:	ff010113          	addi	sp,sp,-16
    80005db8:	00813423          	sd	s0,8(sp)
    80005dbc:	01010413          	addi	s0,sp,16
    80005dc0:	00020513          	mv	a0,tp
    80005dc4:	00813403          	ld	s0,8(sp)
    80005dc8:	0005051b          	sext.w	a0,a0
    80005dcc:	01010113          	addi	sp,sp,16
    80005dd0:	00008067          	ret

0000000080005dd4 <mycpu>:
    80005dd4:	ff010113          	addi	sp,sp,-16
    80005dd8:	00813423          	sd	s0,8(sp)
    80005ddc:	01010413          	addi	s0,sp,16
    80005de0:	00020793          	mv	a5,tp
    80005de4:	00813403          	ld	s0,8(sp)
    80005de8:	0007879b          	sext.w	a5,a5
    80005dec:	00779793          	slli	a5,a5,0x7
    80005df0:	00006517          	auipc	a0,0x6
    80005df4:	91050513          	addi	a0,a0,-1776 # 8000b700 <cpus>
    80005df8:	00f50533          	add	a0,a0,a5
    80005dfc:	01010113          	addi	sp,sp,16
    80005e00:	00008067          	ret

0000000080005e04 <userinit>:
    80005e04:	ff010113          	addi	sp,sp,-16
    80005e08:	00813423          	sd	s0,8(sp)
    80005e0c:	01010413          	addi	s0,sp,16
    80005e10:	00813403          	ld	s0,8(sp)
    80005e14:	01010113          	addi	sp,sp,16
    80005e18:	ffffd317          	auipc	t1,0xffffd
    80005e1c:	f4030067          	jr	-192(t1) # 80002d58 <main>

0000000080005e20 <either_copyout>:
    80005e20:	ff010113          	addi	sp,sp,-16
    80005e24:	00813023          	sd	s0,0(sp)
    80005e28:	00113423          	sd	ra,8(sp)
    80005e2c:	01010413          	addi	s0,sp,16
    80005e30:	02051663          	bnez	a0,80005e5c <either_copyout+0x3c>
    80005e34:	00058513          	mv	a0,a1
    80005e38:	00060593          	mv	a1,a2
    80005e3c:	0006861b          	sext.w	a2,a3
    80005e40:	00002097          	auipc	ra,0x2
    80005e44:	c54080e7          	jalr	-940(ra) # 80007a94 <__memmove>
    80005e48:	00813083          	ld	ra,8(sp)
    80005e4c:	00013403          	ld	s0,0(sp)
    80005e50:	00000513          	li	a0,0
    80005e54:	01010113          	addi	sp,sp,16
    80005e58:	00008067          	ret
    80005e5c:	00002517          	auipc	a0,0x2
    80005e60:	56450513          	addi	a0,a0,1380 # 800083c0 <_ZL6digits+0x80>
    80005e64:	00001097          	auipc	ra,0x1
    80005e68:	928080e7          	jalr	-1752(ra) # 8000678c <panic>

0000000080005e6c <either_copyin>:
    80005e6c:	ff010113          	addi	sp,sp,-16
    80005e70:	00813023          	sd	s0,0(sp)
    80005e74:	00113423          	sd	ra,8(sp)
    80005e78:	01010413          	addi	s0,sp,16
    80005e7c:	02059463          	bnez	a1,80005ea4 <either_copyin+0x38>
    80005e80:	00060593          	mv	a1,a2
    80005e84:	0006861b          	sext.w	a2,a3
    80005e88:	00002097          	auipc	ra,0x2
    80005e8c:	c0c080e7          	jalr	-1012(ra) # 80007a94 <__memmove>
    80005e90:	00813083          	ld	ra,8(sp)
    80005e94:	00013403          	ld	s0,0(sp)
    80005e98:	00000513          	li	a0,0
    80005e9c:	01010113          	addi	sp,sp,16
    80005ea0:	00008067          	ret
    80005ea4:	00002517          	auipc	a0,0x2
    80005ea8:	54450513          	addi	a0,a0,1348 # 800083e8 <_ZL6digits+0xa8>
    80005eac:	00001097          	auipc	ra,0x1
    80005eb0:	8e0080e7          	jalr	-1824(ra) # 8000678c <panic>

0000000080005eb4 <trapinit>:
    80005eb4:	ff010113          	addi	sp,sp,-16
    80005eb8:	00813423          	sd	s0,8(sp)
    80005ebc:	01010413          	addi	s0,sp,16
    80005ec0:	00813403          	ld	s0,8(sp)
    80005ec4:	00002597          	auipc	a1,0x2
    80005ec8:	54c58593          	addi	a1,a1,1356 # 80008410 <_ZL6digits+0xd0>
    80005ecc:	00006517          	auipc	a0,0x6
    80005ed0:	8b450513          	addi	a0,a0,-1868 # 8000b780 <tickslock>
    80005ed4:	01010113          	addi	sp,sp,16
    80005ed8:	00001317          	auipc	t1,0x1
    80005edc:	5c030067          	jr	1472(t1) # 80007498 <initlock>

0000000080005ee0 <trapinithart>:
    80005ee0:	ff010113          	addi	sp,sp,-16
    80005ee4:	00813423          	sd	s0,8(sp)
    80005ee8:	01010413          	addi	s0,sp,16
    80005eec:	00000797          	auipc	a5,0x0
    80005ef0:	2f478793          	addi	a5,a5,756 # 800061e0 <kernelvec>
    80005ef4:	10579073          	csrw	stvec,a5
    80005ef8:	00813403          	ld	s0,8(sp)
    80005efc:	01010113          	addi	sp,sp,16
    80005f00:	00008067          	ret

0000000080005f04 <usertrap>:
    80005f04:	ff010113          	addi	sp,sp,-16
    80005f08:	00813423          	sd	s0,8(sp)
    80005f0c:	01010413          	addi	s0,sp,16
    80005f10:	00813403          	ld	s0,8(sp)
    80005f14:	01010113          	addi	sp,sp,16
    80005f18:	00008067          	ret

0000000080005f1c <usertrapret>:
    80005f1c:	ff010113          	addi	sp,sp,-16
    80005f20:	00813423          	sd	s0,8(sp)
    80005f24:	01010413          	addi	s0,sp,16
    80005f28:	00813403          	ld	s0,8(sp)
    80005f2c:	01010113          	addi	sp,sp,16
    80005f30:	00008067          	ret

0000000080005f34 <kerneltrap>:
    80005f34:	fe010113          	addi	sp,sp,-32
    80005f38:	00813823          	sd	s0,16(sp)
    80005f3c:	00113c23          	sd	ra,24(sp)
    80005f40:	00913423          	sd	s1,8(sp)
    80005f44:	02010413          	addi	s0,sp,32
    80005f48:	142025f3          	csrr	a1,scause
    80005f4c:	100027f3          	csrr	a5,sstatus
    80005f50:	0027f793          	andi	a5,a5,2
    80005f54:	10079c63          	bnez	a5,8000606c <kerneltrap+0x138>
    80005f58:	142027f3          	csrr	a5,scause
    80005f5c:	0207ce63          	bltz	a5,80005f98 <kerneltrap+0x64>
    80005f60:	00002517          	auipc	a0,0x2
    80005f64:	4f850513          	addi	a0,a0,1272 # 80008458 <_ZL6digits+0x118>
    80005f68:	00001097          	auipc	ra,0x1
    80005f6c:	880080e7          	jalr	-1920(ra) # 800067e8 <__printf>
    80005f70:	141025f3          	csrr	a1,sepc
    80005f74:	14302673          	csrr	a2,stval
    80005f78:	00002517          	auipc	a0,0x2
    80005f7c:	4f050513          	addi	a0,a0,1264 # 80008468 <_ZL6digits+0x128>
    80005f80:	00001097          	auipc	ra,0x1
    80005f84:	868080e7          	jalr	-1944(ra) # 800067e8 <__printf>
    80005f88:	00002517          	auipc	a0,0x2
    80005f8c:	4f850513          	addi	a0,a0,1272 # 80008480 <_ZL6digits+0x140>
    80005f90:	00000097          	auipc	ra,0x0
    80005f94:	7fc080e7          	jalr	2044(ra) # 8000678c <panic>
    80005f98:	0ff7f713          	andi	a4,a5,255
    80005f9c:	00900693          	li	a3,9
    80005fa0:	04d70063          	beq	a4,a3,80005fe0 <kerneltrap+0xac>
    80005fa4:	fff00713          	li	a4,-1
    80005fa8:	03f71713          	slli	a4,a4,0x3f
    80005fac:	00170713          	addi	a4,a4,1
    80005fb0:	fae798e3          	bne	a5,a4,80005f60 <kerneltrap+0x2c>
    80005fb4:	00000097          	auipc	ra,0x0
    80005fb8:	e00080e7          	jalr	-512(ra) # 80005db4 <cpuid>
    80005fbc:	06050663          	beqz	a0,80006028 <kerneltrap+0xf4>
    80005fc0:	144027f3          	csrr	a5,sip
    80005fc4:	ffd7f793          	andi	a5,a5,-3
    80005fc8:	14479073          	csrw	sip,a5
    80005fcc:	01813083          	ld	ra,24(sp)
    80005fd0:	01013403          	ld	s0,16(sp)
    80005fd4:	00813483          	ld	s1,8(sp)
    80005fd8:	02010113          	addi	sp,sp,32
    80005fdc:	00008067          	ret
    80005fe0:	00000097          	auipc	ra,0x0
    80005fe4:	3c4080e7          	jalr	964(ra) # 800063a4 <plic_claim>
    80005fe8:	00a00793          	li	a5,10
    80005fec:	00050493          	mv	s1,a0
    80005ff0:	06f50863          	beq	a0,a5,80006060 <kerneltrap+0x12c>
    80005ff4:	fc050ce3          	beqz	a0,80005fcc <kerneltrap+0x98>
    80005ff8:	00050593          	mv	a1,a0
    80005ffc:	00002517          	auipc	a0,0x2
    80006000:	43c50513          	addi	a0,a0,1084 # 80008438 <_ZL6digits+0xf8>
    80006004:	00000097          	auipc	ra,0x0
    80006008:	7e4080e7          	jalr	2020(ra) # 800067e8 <__printf>
    8000600c:	01013403          	ld	s0,16(sp)
    80006010:	01813083          	ld	ra,24(sp)
    80006014:	00048513          	mv	a0,s1
    80006018:	00813483          	ld	s1,8(sp)
    8000601c:	02010113          	addi	sp,sp,32
    80006020:	00000317          	auipc	t1,0x0
    80006024:	3bc30067          	jr	956(t1) # 800063dc <plic_complete>
    80006028:	00005517          	auipc	a0,0x5
    8000602c:	75850513          	addi	a0,a0,1880 # 8000b780 <tickslock>
    80006030:	00001097          	auipc	ra,0x1
    80006034:	48c080e7          	jalr	1164(ra) # 800074bc <acquire>
    80006038:	00004717          	auipc	a4,0x4
    8000603c:	5bc70713          	addi	a4,a4,1468 # 8000a5f4 <ticks>
    80006040:	00072783          	lw	a5,0(a4)
    80006044:	00005517          	auipc	a0,0x5
    80006048:	73c50513          	addi	a0,a0,1852 # 8000b780 <tickslock>
    8000604c:	0017879b          	addiw	a5,a5,1
    80006050:	00f72023          	sw	a5,0(a4)
    80006054:	00001097          	auipc	ra,0x1
    80006058:	534080e7          	jalr	1332(ra) # 80007588 <release>
    8000605c:	f65ff06f          	j	80005fc0 <kerneltrap+0x8c>
    80006060:	00001097          	auipc	ra,0x1
    80006064:	090080e7          	jalr	144(ra) # 800070f0 <uartintr>
    80006068:	fa5ff06f          	j	8000600c <kerneltrap+0xd8>
    8000606c:	00002517          	auipc	a0,0x2
    80006070:	3ac50513          	addi	a0,a0,940 # 80008418 <_ZL6digits+0xd8>
    80006074:	00000097          	auipc	ra,0x0
    80006078:	718080e7          	jalr	1816(ra) # 8000678c <panic>

000000008000607c <clockintr>:
    8000607c:	fe010113          	addi	sp,sp,-32
    80006080:	00813823          	sd	s0,16(sp)
    80006084:	00913423          	sd	s1,8(sp)
    80006088:	00113c23          	sd	ra,24(sp)
    8000608c:	02010413          	addi	s0,sp,32
    80006090:	00005497          	auipc	s1,0x5
    80006094:	6f048493          	addi	s1,s1,1776 # 8000b780 <tickslock>
    80006098:	00048513          	mv	a0,s1
    8000609c:	00001097          	auipc	ra,0x1
    800060a0:	420080e7          	jalr	1056(ra) # 800074bc <acquire>
    800060a4:	00004717          	auipc	a4,0x4
    800060a8:	55070713          	addi	a4,a4,1360 # 8000a5f4 <ticks>
    800060ac:	00072783          	lw	a5,0(a4)
    800060b0:	01013403          	ld	s0,16(sp)
    800060b4:	01813083          	ld	ra,24(sp)
    800060b8:	00048513          	mv	a0,s1
    800060bc:	0017879b          	addiw	a5,a5,1
    800060c0:	00813483          	ld	s1,8(sp)
    800060c4:	00f72023          	sw	a5,0(a4)
    800060c8:	02010113          	addi	sp,sp,32
    800060cc:	00001317          	auipc	t1,0x1
    800060d0:	4bc30067          	jr	1212(t1) # 80007588 <release>

00000000800060d4 <devintr>:
    800060d4:	142027f3          	csrr	a5,scause
    800060d8:	00000513          	li	a0,0
    800060dc:	0007c463          	bltz	a5,800060e4 <devintr+0x10>
    800060e0:	00008067          	ret
    800060e4:	fe010113          	addi	sp,sp,-32
    800060e8:	00813823          	sd	s0,16(sp)
    800060ec:	00113c23          	sd	ra,24(sp)
    800060f0:	00913423          	sd	s1,8(sp)
    800060f4:	02010413          	addi	s0,sp,32
    800060f8:	0ff7f713          	andi	a4,a5,255
    800060fc:	00900693          	li	a3,9
    80006100:	04d70c63          	beq	a4,a3,80006158 <devintr+0x84>
    80006104:	fff00713          	li	a4,-1
    80006108:	03f71713          	slli	a4,a4,0x3f
    8000610c:	00170713          	addi	a4,a4,1
    80006110:	00e78c63          	beq	a5,a4,80006128 <devintr+0x54>
    80006114:	01813083          	ld	ra,24(sp)
    80006118:	01013403          	ld	s0,16(sp)
    8000611c:	00813483          	ld	s1,8(sp)
    80006120:	02010113          	addi	sp,sp,32
    80006124:	00008067          	ret
    80006128:	00000097          	auipc	ra,0x0
    8000612c:	c8c080e7          	jalr	-884(ra) # 80005db4 <cpuid>
    80006130:	06050663          	beqz	a0,8000619c <devintr+0xc8>
    80006134:	144027f3          	csrr	a5,sip
    80006138:	ffd7f793          	andi	a5,a5,-3
    8000613c:	14479073          	csrw	sip,a5
    80006140:	01813083          	ld	ra,24(sp)
    80006144:	01013403          	ld	s0,16(sp)
    80006148:	00813483          	ld	s1,8(sp)
    8000614c:	00200513          	li	a0,2
    80006150:	02010113          	addi	sp,sp,32
    80006154:	00008067          	ret
    80006158:	00000097          	auipc	ra,0x0
    8000615c:	24c080e7          	jalr	588(ra) # 800063a4 <plic_claim>
    80006160:	00a00793          	li	a5,10
    80006164:	00050493          	mv	s1,a0
    80006168:	06f50663          	beq	a0,a5,800061d4 <devintr+0x100>
    8000616c:	00100513          	li	a0,1
    80006170:	fa0482e3          	beqz	s1,80006114 <devintr+0x40>
    80006174:	00048593          	mv	a1,s1
    80006178:	00002517          	auipc	a0,0x2
    8000617c:	2c050513          	addi	a0,a0,704 # 80008438 <_ZL6digits+0xf8>
    80006180:	00000097          	auipc	ra,0x0
    80006184:	668080e7          	jalr	1640(ra) # 800067e8 <__printf>
    80006188:	00048513          	mv	a0,s1
    8000618c:	00000097          	auipc	ra,0x0
    80006190:	250080e7          	jalr	592(ra) # 800063dc <plic_complete>
    80006194:	00100513          	li	a0,1
    80006198:	f7dff06f          	j	80006114 <devintr+0x40>
    8000619c:	00005517          	auipc	a0,0x5
    800061a0:	5e450513          	addi	a0,a0,1508 # 8000b780 <tickslock>
    800061a4:	00001097          	auipc	ra,0x1
    800061a8:	318080e7          	jalr	792(ra) # 800074bc <acquire>
    800061ac:	00004717          	auipc	a4,0x4
    800061b0:	44870713          	addi	a4,a4,1096 # 8000a5f4 <ticks>
    800061b4:	00072783          	lw	a5,0(a4)
    800061b8:	00005517          	auipc	a0,0x5
    800061bc:	5c850513          	addi	a0,a0,1480 # 8000b780 <tickslock>
    800061c0:	0017879b          	addiw	a5,a5,1
    800061c4:	00f72023          	sw	a5,0(a4)
    800061c8:	00001097          	auipc	ra,0x1
    800061cc:	3c0080e7          	jalr	960(ra) # 80007588 <release>
    800061d0:	f65ff06f          	j	80006134 <devintr+0x60>
    800061d4:	00001097          	auipc	ra,0x1
    800061d8:	f1c080e7          	jalr	-228(ra) # 800070f0 <uartintr>
    800061dc:	fadff06f          	j	80006188 <devintr+0xb4>

00000000800061e0 <kernelvec>:
    800061e0:	f0010113          	addi	sp,sp,-256
    800061e4:	00113023          	sd	ra,0(sp)
    800061e8:	00213423          	sd	sp,8(sp)
    800061ec:	00313823          	sd	gp,16(sp)
    800061f0:	00413c23          	sd	tp,24(sp)
    800061f4:	02513023          	sd	t0,32(sp)
    800061f8:	02613423          	sd	t1,40(sp)
    800061fc:	02713823          	sd	t2,48(sp)
    80006200:	02813c23          	sd	s0,56(sp)
    80006204:	04913023          	sd	s1,64(sp)
    80006208:	04a13423          	sd	a0,72(sp)
    8000620c:	04b13823          	sd	a1,80(sp)
    80006210:	04c13c23          	sd	a2,88(sp)
    80006214:	06d13023          	sd	a3,96(sp)
    80006218:	06e13423          	sd	a4,104(sp)
    8000621c:	06f13823          	sd	a5,112(sp)
    80006220:	07013c23          	sd	a6,120(sp)
    80006224:	09113023          	sd	a7,128(sp)
    80006228:	09213423          	sd	s2,136(sp)
    8000622c:	09313823          	sd	s3,144(sp)
    80006230:	09413c23          	sd	s4,152(sp)
    80006234:	0b513023          	sd	s5,160(sp)
    80006238:	0b613423          	sd	s6,168(sp)
    8000623c:	0b713823          	sd	s7,176(sp)
    80006240:	0b813c23          	sd	s8,184(sp)
    80006244:	0d913023          	sd	s9,192(sp)
    80006248:	0da13423          	sd	s10,200(sp)
    8000624c:	0db13823          	sd	s11,208(sp)
    80006250:	0dc13c23          	sd	t3,216(sp)
    80006254:	0fd13023          	sd	t4,224(sp)
    80006258:	0fe13423          	sd	t5,232(sp)
    8000625c:	0ff13823          	sd	t6,240(sp)
    80006260:	cd5ff0ef          	jal	ra,80005f34 <kerneltrap>
    80006264:	00013083          	ld	ra,0(sp)
    80006268:	00813103          	ld	sp,8(sp)
    8000626c:	01013183          	ld	gp,16(sp)
    80006270:	02013283          	ld	t0,32(sp)
    80006274:	02813303          	ld	t1,40(sp)
    80006278:	03013383          	ld	t2,48(sp)
    8000627c:	03813403          	ld	s0,56(sp)
    80006280:	04013483          	ld	s1,64(sp)
    80006284:	04813503          	ld	a0,72(sp)
    80006288:	05013583          	ld	a1,80(sp)
    8000628c:	05813603          	ld	a2,88(sp)
    80006290:	06013683          	ld	a3,96(sp)
    80006294:	06813703          	ld	a4,104(sp)
    80006298:	07013783          	ld	a5,112(sp)
    8000629c:	07813803          	ld	a6,120(sp)
    800062a0:	08013883          	ld	a7,128(sp)
    800062a4:	08813903          	ld	s2,136(sp)
    800062a8:	09013983          	ld	s3,144(sp)
    800062ac:	09813a03          	ld	s4,152(sp)
    800062b0:	0a013a83          	ld	s5,160(sp)
    800062b4:	0a813b03          	ld	s6,168(sp)
    800062b8:	0b013b83          	ld	s7,176(sp)
    800062bc:	0b813c03          	ld	s8,184(sp)
    800062c0:	0c013c83          	ld	s9,192(sp)
    800062c4:	0c813d03          	ld	s10,200(sp)
    800062c8:	0d013d83          	ld	s11,208(sp)
    800062cc:	0d813e03          	ld	t3,216(sp)
    800062d0:	0e013e83          	ld	t4,224(sp)
    800062d4:	0e813f03          	ld	t5,232(sp)
    800062d8:	0f013f83          	ld	t6,240(sp)
    800062dc:	10010113          	addi	sp,sp,256
    800062e0:	10200073          	sret
    800062e4:	00000013          	nop
    800062e8:	00000013          	nop
    800062ec:	00000013          	nop

00000000800062f0 <timervec>:
    800062f0:	34051573          	csrrw	a0,mscratch,a0
    800062f4:	00b53023          	sd	a1,0(a0)
    800062f8:	00c53423          	sd	a2,8(a0)
    800062fc:	00d53823          	sd	a3,16(a0)
    80006300:	01853583          	ld	a1,24(a0)
    80006304:	02053603          	ld	a2,32(a0)
    80006308:	0005b683          	ld	a3,0(a1)
    8000630c:	00c686b3          	add	a3,a3,a2
    80006310:	00d5b023          	sd	a3,0(a1)
    80006314:	00200593          	li	a1,2
    80006318:	14459073          	csrw	sip,a1
    8000631c:	01053683          	ld	a3,16(a0)
    80006320:	00853603          	ld	a2,8(a0)
    80006324:	00053583          	ld	a1,0(a0)
    80006328:	34051573          	csrrw	a0,mscratch,a0
    8000632c:	30200073          	mret

0000000080006330 <plicinit>:
    80006330:	ff010113          	addi	sp,sp,-16
    80006334:	00813423          	sd	s0,8(sp)
    80006338:	01010413          	addi	s0,sp,16
    8000633c:	00813403          	ld	s0,8(sp)
    80006340:	0c0007b7          	lui	a5,0xc000
    80006344:	00100713          	li	a4,1
    80006348:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000634c:	00e7a223          	sw	a4,4(a5)
    80006350:	01010113          	addi	sp,sp,16
    80006354:	00008067          	ret

0000000080006358 <plicinithart>:
    80006358:	ff010113          	addi	sp,sp,-16
    8000635c:	00813023          	sd	s0,0(sp)
    80006360:	00113423          	sd	ra,8(sp)
    80006364:	01010413          	addi	s0,sp,16
    80006368:	00000097          	auipc	ra,0x0
    8000636c:	a4c080e7          	jalr	-1460(ra) # 80005db4 <cpuid>
    80006370:	0085171b          	slliw	a4,a0,0x8
    80006374:	0c0027b7          	lui	a5,0xc002
    80006378:	00e787b3          	add	a5,a5,a4
    8000637c:	40200713          	li	a4,1026
    80006380:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006384:	00813083          	ld	ra,8(sp)
    80006388:	00013403          	ld	s0,0(sp)
    8000638c:	00d5151b          	slliw	a0,a0,0xd
    80006390:	0c2017b7          	lui	a5,0xc201
    80006394:	00a78533          	add	a0,a5,a0
    80006398:	00052023          	sw	zero,0(a0)
    8000639c:	01010113          	addi	sp,sp,16
    800063a0:	00008067          	ret

00000000800063a4 <plic_claim>:
    800063a4:	ff010113          	addi	sp,sp,-16
    800063a8:	00813023          	sd	s0,0(sp)
    800063ac:	00113423          	sd	ra,8(sp)
    800063b0:	01010413          	addi	s0,sp,16
    800063b4:	00000097          	auipc	ra,0x0
    800063b8:	a00080e7          	jalr	-1536(ra) # 80005db4 <cpuid>
    800063bc:	00813083          	ld	ra,8(sp)
    800063c0:	00013403          	ld	s0,0(sp)
    800063c4:	00d5151b          	slliw	a0,a0,0xd
    800063c8:	0c2017b7          	lui	a5,0xc201
    800063cc:	00a78533          	add	a0,a5,a0
    800063d0:	00452503          	lw	a0,4(a0)
    800063d4:	01010113          	addi	sp,sp,16
    800063d8:	00008067          	ret

00000000800063dc <plic_complete>:
    800063dc:	fe010113          	addi	sp,sp,-32
    800063e0:	00813823          	sd	s0,16(sp)
    800063e4:	00913423          	sd	s1,8(sp)
    800063e8:	00113c23          	sd	ra,24(sp)
    800063ec:	02010413          	addi	s0,sp,32
    800063f0:	00050493          	mv	s1,a0
    800063f4:	00000097          	auipc	ra,0x0
    800063f8:	9c0080e7          	jalr	-1600(ra) # 80005db4 <cpuid>
    800063fc:	01813083          	ld	ra,24(sp)
    80006400:	01013403          	ld	s0,16(sp)
    80006404:	00d5179b          	slliw	a5,a0,0xd
    80006408:	0c201737          	lui	a4,0xc201
    8000640c:	00f707b3          	add	a5,a4,a5
    80006410:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006414:	00813483          	ld	s1,8(sp)
    80006418:	02010113          	addi	sp,sp,32
    8000641c:	00008067          	ret

0000000080006420 <consolewrite>:
    80006420:	fb010113          	addi	sp,sp,-80
    80006424:	04813023          	sd	s0,64(sp)
    80006428:	04113423          	sd	ra,72(sp)
    8000642c:	02913c23          	sd	s1,56(sp)
    80006430:	03213823          	sd	s2,48(sp)
    80006434:	03313423          	sd	s3,40(sp)
    80006438:	03413023          	sd	s4,32(sp)
    8000643c:	01513c23          	sd	s5,24(sp)
    80006440:	05010413          	addi	s0,sp,80
    80006444:	06c05c63          	blez	a2,800064bc <consolewrite+0x9c>
    80006448:	00060993          	mv	s3,a2
    8000644c:	00050a13          	mv	s4,a0
    80006450:	00058493          	mv	s1,a1
    80006454:	00000913          	li	s2,0
    80006458:	fff00a93          	li	s5,-1
    8000645c:	01c0006f          	j	80006478 <consolewrite+0x58>
    80006460:	fbf44503          	lbu	a0,-65(s0)
    80006464:	0019091b          	addiw	s2,s2,1
    80006468:	00148493          	addi	s1,s1,1
    8000646c:	00001097          	auipc	ra,0x1
    80006470:	a9c080e7          	jalr	-1380(ra) # 80006f08 <uartputc>
    80006474:	03298063          	beq	s3,s2,80006494 <consolewrite+0x74>
    80006478:	00048613          	mv	a2,s1
    8000647c:	00100693          	li	a3,1
    80006480:	000a0593          	mv	a1,s4
    80006484:	fbf40513          	addi	a0,s0,-65
    80006488:	00000097          	auipc	ra,0x0
    8000648c:	9e4080e7          	jalr	-1564(ra) # 80005e6c <either_copyin>
    80006490:	fd5518e3          	bne	a0,s5,80006460 <consolewrite+0x40>
    80006494:	04813083          	ld	ra,72(sp)
    80006498:	04013403          	ld	s0,64(sp)
    8000649c:	03813483          	ld	s1,56(sp)
    800064a0:	02813983          	ld	s3,40(sp)
    800064a4:	02013a03          	ld	s4,32(sp)
    800064a8:	01813a83          	ld	s5,24(sp)
    800064ac:	00090513          	mv	a0,s2
    800064b0:	03013903          	ld	s2,48(sp)
    800064b4:	05010113          	addi	sp,sp,80
    800064b8:	00008067          	ret
    800064bc:	00000913          	li	s2,0
    800064c0:	fd5ff06f          	j	80006494 <consolewrite+0x74>

00000000800064c4 <consoleread>:
    800064c4:	f9010113          	addi	sp,sp,-112
    800064c8:	06813023          	sd	s0,96(sp)
    800064cc:	04913c23          	sd	s1,88(sp)
    800064d0:	05213823          	sd	s2,80(sp)
    800064d4:	05313423          	sd	s3,72(sp)
    800064d8:	05413023          	sd	s4,64(sp)
    800064dc:	03513c23          	sd	s5,56(sp)
    800064e0:	03613823          	sd	s6,48(sp)
    800064e4:	03713423          	sd	s7,40(sp)
    800064e8:	03813023          	sd	s8,32(sp)
    800064ec:	06113423          	sd	ra,104(sp)
    800064f0:	01913c23          	sd	s9,24(sp)
    800064f4:	07010413          	addi	s0,sp,112
    800064f8:	00060b93          	mv	s7,a2
    800064fc:	00050913          	mv	s2,a0
    80006500:	00058c13          	mv	s8,a1
    80006504:	00060b1b          	sext.w	s6,a2
    80006508:	00005497          	auipc	s1,0x5
    8000650c:	2a048493          	addi	s1,s1,672 # 8000b7a8 <cons>
    80006510:	00400993          	li	s3,4
    80006514:	fff00a13          	li	s4,-1
    80006518:	00a00a93          	li	s5,10
    8000651c:	05705e63          	blez	s7,80006578 <consoleread+0xb4>
    80006520:	09c4a703          	lw	a4,156(s1)
    80006524:	0984a783          	lw	a5,152(s1)
    80006528:	0007071b          	sext.w	a4,a4
    8000652c:	08e78463          	beq	a5,a4,800065b4 <consoleread+0xf0>
    80006530:	07f7f713          	andi	a4,a5,127
    80006534:	00e48733          	add	a4,s1,a4
    80006538:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000653c:	0017869b          	addiw	a3,a5,1
    80006540:	08d4ac23          	sw	a3,152(s1)
    80006544:	00070c9b          	sext.w	s9,a4
    80006548:	0b370663          	beq	a4,s3,800065f4 <consoleread+0x130>
    8000654c:	00100693          	li	a3,1
    80006550:	f9f40613          	addi	a2,s0,-97
    80006554:	000c0593          	mv	a1,s8
    80006558:	00090513          	mv	a0,s2
    8000655c:	f8e40fa3          	sb	a4,-97(s0)
    80006560:	00000097          	auipc	ra,0x0
    80006564:	8c0080e7          	jalr	-1856(ra) # 80005e20 <either_copyout>
    80006568:	01450863          	beq	a0,s4,80006578 <consoleread+0xb4>
    8000656c:	001c0c13          	addi	s8,s8,1
    80006570:	fffb8b9b          	addiw	s7,s7,-1
    80006574:	fb5c94e3          	bne	s9,s5,8000651c <consoleread+0x58>
    80006578:	000b851b          	sext.w	a0,s7
    8000657c:	06813083          	ld	ra,104(sp)
    80006580:	06013403          	ld	s0,96(sp)
    80006584:	05813483          	ld	s1,88(sp)
    80006588:	05013903          	ld	s2,80(sp)
    8000658c:	04813983          	ld	s3,72(sp)
    80006590:	04013a03          	ld	s4,64(sp)
    80006594:	03813a83          	ld	s5,56(sp)
    80006598:	02813b83          	ld	s7,40(sp)
    8000659c:	02013c03          	ld	s8,32(sp)
    800065a0:	01813c83          	ld	s9,24(sp)
    800065a4:	40ab053b          	subw	a0,s6,a0
    800065a8:	03013b03          	ld	s6,48(sp)
    800065ac:	07010113          	addi	sp,sp,112
    800065b0:	00008067          	ret
    800065b4:	00001097          	auipc	ra,0x1
    800065b8:	1d8080e7          	jalr	472(ra) # 8000778c <push_on>
    800065bc:	0984a703          	lw	a4,152(s1)
    800065c0:	09c4a783          	lw	a5,156(s1)
    800065c4:	0007879b          	sext.w	a5,a5
    800065c8:	fef70ce3          	beq	a4,a5,800065c0 <consoleread+0xfc>
    800065cc:	00001097          	auipc	ra,0x1
    800065d0:	234080e7          	jalr	564(ra) # 80007800 <pop_on>
    800065d4:	0984a783          	lw	a5,152(s1)
    800065d8:	07f7f713          	andi	a4,a5,127
    800065dc:	00e48733          	add	a4,s1,a4
    800065e0:	01874703          	lbu	a4,24(a4)
    800065e4:	0017869b          	addiw	a3,a5,1
    800065e8:	08d4ac23          	sw	a3,152(s1)
    800065ec:	00070c9b          	sext.w	s9,a4
    800065f0:	f5371ee3          	bne	a4,s3,8000654c <consoleread+0x88>
    800065f4:	000b851b          	sext.w	a0,s7
    800065f8:	f96bf2e3          	bgeu	s7,s6,8000657c <consoleread+0xb8>
    800065fc:	08f4ac23          	sw	a5,152(s1)
    80006600:	f7dff06f          	j	8000657c <consoleread+0xb8>

0000000080006604 <consputc>:
    80006604:	10000793          	li	a5,256
    80006608:	00f50663          	beq	a0,a5,80006614 <consputc+0x10>
    8000660c:	00001317          	auipc	t1,0x1
    80006610:	9f430067          	jr	-1548(t1) # 80007000 <uartputc_sync>
    80006614:	ff010113          	addi	sp,sp,-16
    80006618:	00113423          	sd	ra,8(sp)
    8000661c:	00813023          	sd	s0,0(sp)
    80006620:	01010413          	addi	s0,sp,16
    80006624:	00800513          	li	a0,8
    80006628:	00001097          	auipc	ra,0x1
    8000662c:	9d8080e7          	jalr	-1576(ra) # 80007000 <uartputc_sync>
    80006630:	02000513          	li	a0,32
    80006634:	00001097          	auipc	ra,0x1
    80006638:	9cc080e7          	jalr	-1588(ra) # 80007000 <uartputc_sync>
    8000663c:	00013403          	ld	s0,0(sp)
    80006640:	00813083          	ld	ra,8(sp)
    80006644:	00800513          	li	a0,8
    80006648:	01010113          	addi	sp,sp,16
    8000664c:	00001317          	auipc	t1,0x1
    80006650:	9b430067          	jr	-1612(t1) # 80007000 <uartputc_sync>

0000000080006654 <consoleintr>:
    80006654:	fe010113          	addi	sp,sp,-32
    80006658:	00813823          	sd	s0,16(sp)
    8000665c:	00913423          	sd	s1,8(sp)
    80006660:	01213023          	sd	s2,0(sp)
    80006664:	00113c23          	sd	ra,24(sp)
    80006668:	02010413          	addi	s0,sp,32
    8000666c:	00005917          	auipc	s2,0x5
    80006670:	13c90913          	addi	s2,s2,316 # 8000b7a8 <cons>
    80006674:	00050493          	mv	s1,a0
    80006678:	00090513          	mv	a0,s2
    8000667c:	00001097          	auipc	ra,0x1
    80006680:	e40080e7          	jalr	-448(ra) # 800074bc <acquire>
    80006684:	02048c63          	beqz	s1,800066bc <consoleintr+0x68>
    80006688:	0a092783          	lw	a5,160(s2)
    8000668c:	09892703          	lw	a4,152(s2)
    80006690:	07f00693          	li	a3,127
    80006694:	40e7873b          	subw	a4,a5,a4
    80006698:	02e6e263          	bltu	a3,a4,800066bc <consoleintr+0x68>
    8000669c:	00d00713          	li	a4,13
    800066a0:	04e48063          	beq	s1,a4,800066e0 <consoleintr+0x8c>
    800066a4:	07f7f713          	andi	a4,a5,127
    800066a8:	00e90733          	add	a4,s2,a4
    800066ac:	0017879b          	addiw	a5,a5,1
    800066b0:	0af92023          	sw	a5,160(s2)
    800066b4:	00970c23          	sb	s1,24(a4)
    800066b8:	08f92e23          	sw	a5,156(s2)
    800066bc:	01013403          	ld	s0,16(sp)
    800066c0:	01813083          	ld	ra,24(sp)
    800066c4:	00813483          	ld	s1,8(sp)
    800066c8:	00013903          	ld	s2,0(sp)
    800066cc:	00005517          	auipc	a0,0x5
    800066d0:	0dc50513          	addi	a0,a0,220 # 8000b7a8 <cons>
    800066d4:	02010113          	addi	sp,sp,32
    800066d8:	00001317          	auipc	t1,0x1
    800066dc:	eb030067          	jr	-336(t1) # 80007588 <release>
    800066e0:	00a00493          	li	s1,10
    800066e4:	fc1ff06f          	j	800066a4 <consoleintr+0x50>

00000000800066e8 <consoleinit>:
    800066e8:	fe010113          	addi	sp,sp,-32
    800066ec:	00113c23          	sd	ra,24(sp)
    800066f0:	00813823          	sd	s0,16(sp)
    800066f4:	00913423          	sd	s1,8(sp)
    800066f8:	02010413          	addi	s0,sp,32
    800066fc:	00005497          	auipc	s1,0x5
    80006700:	0ac48493          	addi	s1,s1,172 # 8000b7a8 <cons>
    80006704:	00048513          	mv	a0,s1
    80006708:	00002597          	auipc	a1,0x2
    8000670c:	d8858593          	addi	a1,a1,-632 # 80008490 <_ZL6digits+0x150>
    80006710:	00001097          	auipc	ra,0x1
    80006714:	d88080e7          	jalr	-632(ra) # 80007498 <initlock>
    80006718:	00000097          	auipc	ra,0x0
    8000671c:	7ac080e7          	jalr	1964(ra) # 80006ec4 <uartinit>
    80006720:	01813083          	ld	ra,24(sp)
    80006724:	01013403          	ld	s0,16(sp)
    80006728:	00000797          	auipc	a5,0x0
    8000672c:	d9c78793          	addi	a5,a5,-612 # 800064c4 <consoleread>
    80006730:	0af4bc23          	sd	a5,184(s1)
    80006734:	00000797          	auipc	a5,0x0
    80006738:	cec78793          	addi	a5,a5,-788 # 80006420 <consolewrite>
    8000673c:	0cf4b023          	sd	a5,192(s1)
    80006740:	00813483          	ld	s1,8(sp)
    80006744:	02010113          	addi	sp,sp,32
    80006748:	00008067          	ret

000000008000674c <console_read>:
    8000674c:	ff010113          	addi	sp,sp,-16
    80006750:	00813423          	sd	s0,8(sp)
    80006754:	01010413          	addi	s0,sp,16
    80006758:	00813403          	ld	s0,8(sp)
    8000675c:	00005317          	auipc	t1,0x5
    80006760:	10433303          	ld	t1,260(t1) # 8000b860 <devsw+0x10>
    80006764:	01010113          	addi	sp,sp,16
    80006768:	00030067          	jr	t1

000000008000676c <console_write>:
    8000676c:	ff010113          	addi	sp,sp,-16
    80006770:	00813423          	sd	s0,8(sp)
    80006774:	01010413          	addi	s0,sp,16
    80006778:	00813403          	ld	s0,8(sp)
    8000677c:	00005317          	auipc	t1,0x5
    80006780:	0ec33303          	ld	t1,236(t1) # 8000b868 <devsw+0x18>
    80006784:	01010113          	addi	sp,sp,16
    80006788:	00030067          	jr	t1

000000008000678c <panic>:
    8000678c:	fe010113          	addi	sp,sp,-32
    80006790:	00113c23          	sd	ra,24(sp)
    80006794:	00813823          	sd	s0,16(sp)
    80006798:	00913423          	sd	s1,8(sp)
    8000679c:	02010413          	addi	s0,sp,32
    800067a0:	00050493          	mv	s1,a0
    800067a4:	00002517          	auipc	a0,0x2
    800067a8:	cf450513          	addi	a0,a0,-780 # 80008498 <_ZL6digits+0x158>
    800067ac:	00005797          	auipc	a5,0x5
    800067b0:	1407ae23          	sw	zero,348(a5) # 8000b908 <pr+0x18>
    800067b4:	00000097          	auipc	ra,0x0
    800067b8:	034080e7          	jalr	52(ra) # 800067e8 <__printf>
    800067bc:	00048513          	mv	a0,s1
    800067c0:	00000097          	auipc	ra,0x0
    800067c4:	028080e7          	jalr	40(ra) # 800067e8 <__printf>
    800067c8:	00002517          	auipc	a0,0x2
    800067cc:	9b850513          	addi	a0,a0,-1608 # 80008180 <CONSOLE_STATUS+0x170>
    800067d0:	00000097          	auipc	ra,0x0
    800067d4:	018080e7          	jalr	24(ra) # 800067e8 <__printf>
    800067d8:	00100793          	li	a5,1
    800067dc:	00004717          	auipc	a4,0x4
    800067e0:	e0f72e23          	sw	a5,-484(a4) # 8000a5f8 <panicked>
    800067e4:	0000006f          	j	800067e4 <panic+0x58>

00000000800067e8 <__printf>:
    800067e8:	f3010113          	addi	sp,sp,-208
    800067ec:	08813023          	sd	s0,128(sp)
    800067f0:	07313423          	sd	s3,104(sp)
    800067f4:	09010413          	addi	s0,sp,144
    800067f8:	05813023          	sd	s8,64(sp)
    800067fc:	08113423          	sd	ra,136(sp)
    80006800:	06913c23          	sd	s1,120(sp)
    80006804:	07213823          	sd	s2,112(sp)
    80006808:	07413023          	sd	s4,96(sp)
    8000680c:	05513c23          	sd	s5,88(sp)
    80006810:	05613823          	sd	s6,80(sp)
    80006814:	05713423          	sd	s7,72(sp)
    80006818:	03913c23          	sd	s9,56(sp)
    8000681c:	03a13823          	sd	s10,48(sp)
    80006820:	03b13423          	sd	s11,40(sp)
    80006824:	00005317          	auipc	t1,0x5
    80006828:	0cc30313          	addi	t1,t1,204 # 8000b8f0 <pr>
    8000682c:	01832c03          	lw	s8,24(t1)
    80006830:	00b43423          	sd	a1,8(s0)
    80006834:	00c43823          	sd	a2,16(s0)
    80006838:	00d43c23          	sd	a3,24(s0)
    8000683c:	02e43023          	sd	a4,32(s0)
    80006840:	02f43423          	sd	a5,40(s0)
    80006844:	03043823          	sd	a6,48(s0)
    80006848:	03143c23          	sd	a7,56(s0)
    8000684c:	00050993          	mv	s3,a0
    80006850:	4a0c1663          	bnez	s8,80006cfc <__printf+0x514>
    80006854:	60098c63          	beqz	s3,80006e6c <__printf+0x684>
    80006858:	0009c503          	lbu	a0,0(s3)
    8000685c:	00840793          	addi	a5,s0,8
    80006860:	f6f43c23          	sd	a5,-136(s0)
    80006864:	00000493          	li	s1,0
    80006868:	22050063          	beqz	a0,80006a88 <__printf+0x2a0>
    8000686c:	00002a37          	lui	s4,0x2
    80006870:	00018ab7          	lui	s5,0x18
    80006874:	000f4b37          	lui	s6,0xf4
    80006878:	00989bb7          	lui	s7,0x989
    8000687c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006880:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006884:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006888:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000688c:	00148c9b          	addiw	s9,s1,1
    80006890:	02500793          	li	a5,37
    80006894:	01998933          	add	s2,s3,s9
    80006898:	38f51263          	bne	a0,a5,80006c1c <__printf+0x434>
    8000689c:	00094783          	lbu	a5,0(s2)
    800068a0:	00078c9b          	sext.w	s9,a5
    800068a4:	1e078263          	beqz	a5,80006a88 <__printf+0x2a0>
    800068a8:	0024849b          	addiw	s1,s1,2
    800068ac:	07000713          	li	a4,112
    800068b0:	00998933          	add	s2,s3,s1
    800068b4:	38e78a63          	beq	a5,a4,80006c48 <__printf+0x460>
    800068b8:	20f76863          	bltu	a4,a5,80006ac8 <__printf+0x2e0>
    800068bc:	42a78863          	beq	a5,a0,80006cec <__printf+0x504>
    800068c0:	06400713          	li	a4,100
    800068c4:	40e79663          	bne	a5,a4,80006cd0 <__printf+0x4e8>
    800068c8:	f7843783          	ld	a5,-136(s0)
    800068cc:	0007a603          	lw	a2,0(a5)
    800068d0:	00878793          	addi	a5,a5,8
    800068d4:	f6f43c23          	sd	a5,-136(s0)
    800068d8:	42064a63          	bltz	a2,80006d0c <__printf+0x524>
    800068dc:	00a00713          	li	a4,10
    800068e0:	02e677bb          	remuw	a5,a2,a4
    800068e4:	00002d97          	auipc	s11,0x2
    800068e8:	bdcd8d93          	addi	s11,s11,-1060 # 800084c0 <digits>
    800068ec:	00900593          	li	a1,9
    800068f0:	0006051b          	sext.w	a0,a2
    800068f4:	00000c93          	li	s9,0
    800068f8:	02079793          	slli	a5,a5,0x20
    800068fc:	0207d793          	srli	a5,a5,0x20
    80006900:	00fd87b3          	add	a5,s11,a5
    80006904:	0007c783          	lbu	a5,0(a5)
    80006908:	02e656bb          	divuw	a3,a2,a4
    8000690c:	f8f40023          	sb	a5,-128(s0)
    80006910:	14c5d863          	bge	a1,a2,80006a60 <__printf+0x278>
    80006914:	06300593          	li	a1,99
    80006918:	00100c93          	li	s9,1
    8000691c:	02e6f7bb          	remuw	a5,a3,a4
    80006920:	02079793          	slli	a5,a5,0x20
    80006924:	0207d793          	srli	a5,a5,0x20
    80006928:	00fd87b3          	add	a5,s11,a5
    8000692c:	0007c783          	lbu	a5,0(a5)
    80006930:	02e6d73b          	divuw	a4,a3,a4
    80006934:	f8f400a3          	sb	a5,-127(s0)
    80006938:	12a5f463          	bgeu	a1,a0,80006a60 <__printf+0x278>
    8000693c:	00a00693          	li	a3,10
    80006940:	00900593          	li	a1,9
    80006944:	02d777bb          	remuw	a5,a4,a3
    80006948:	02079793          	slli	a5,a5,0x20
    8000694c:	0207d793          	srli	a5,a5,0x20
    80006950:	00fd87b3          	add	a5,s11,a5
    80006954:	0007c503          	lbu	a0,0(a5)
    80006958:	02d757bb          	divuw	a5,a4,a3
    8000695c:	f8a40123          	sb	a0,-126(s0)
    80006960:	48e5f263          	bgeu	a1,a4,80006de4 <__printf+0x5fc>
    80006964:	06300513          	li	a0,99
    80006968:	02d7f5bb          	remuw	a1,a5,a3
    8000696c:	02059593          	slli	a1,a1,0x20
    80006970:	0205d593          	srli	a1,a1,0x20
    80006974:	00bd85b3          	add	a1,s11,a1
    80006978:	0005c583          	lbu	a1,0(a1)
    8000697c:	02d7d7bb          	divuw	a5,a5,a3
    80006980:	f8b401a3          	sb	a1,-125(s0)
    80006984:	48e57263          	bgeu	a0,a4,80006e08 <__printf+0x620>
    80006988:	3e700513          	li	a0,999
    8000698c:	02d7f5bb          	remuw	a1,a5,a3
    80006990:	02059593          	slli	a1,a1,0x20
    80006994:	0205d593          	srli	a1,a1,0x20
    80006998:	00bd85b3          	add	a1,s11,a1
    8000699c:	0005c583          	lbu	a1,0(a1)
    800069a0:	02d7d7bb          	divuw	a5,a5,a3
    800069a4:	f8b40223          	sb	a1,-124(s0)
    800069a8:	46e57663          	bgeu	a0,a4,80006e14 <__printf+0x62c>
    800069ac:	02d7f5bb          	remuw	a1,a5,a3
    800069b0:	02059593          	slli	a1,a1,0x20
    800069b4:	0205d593          	srli	a1,a1,0x20
    800069b8:	00bd85b3          	add	a1,s11,a1
    800069bc:	0005c583          	lbu	a1,0(a1)
    800069c0:	02d7d7bb          	divuw	a5,a5,a3
    800069c4:	f8b402a3          	sb	a1,-123(s0)
    800069c8:	46ea7863          	bgeu	s4,a4,80006e38 <__printf+0x650>
    800069cc:	02d7f5bb          	remuw	a1,a5,a3
    800069d0:	02059593          	slli	a1,a1,0x20
    800069d4:	0205d593          	srli	a1,a1,0x20
    800069d8:	00bd85b3          	add	a1,s11,a1
    800069dc:	0005c583          	lbu	a1,0(a1)
    800069e0:	02d7d7bb          	divuw	a5,a5,a3
    800069e4:	f8b40323          	sb	a1,-122(s0)
    800069e8:	3eeaf863          	bgeu	s5,a4,80006dd8 <__printf+0x5f0>
    800069ec:	02d7f5bb          	remuw	a1,a5,a3
    800069f0:	02059593          	slli	a1,a1,0x20
    800069f4:	0205d593          	srli	a1,a1,0x20
    800069f8:	00bd85b3          	add	a1,s11,a1
    800069fc:	0005c583          	lbu	a1,0(a1)
    80006a00:	02d7d7bb          	divuw	a5,a5,a3
    80006a04:	f8b403a3          	sb	a1,-121(s0)
    80006a08:	42eb7e63          	bgeu	s6,a4,80006e44 <__printf+0x65c>
    80006a0c:	02d7f5bb          	remuw	a1,a5,a3
    80006a10:	02059593          	slli	a1,a1,0x20
    80006a14:	0205d593          	srli	a1,a1,0x20
    80006a18:	00bd85b3          	add	a1,s11,a1
    80006a1c:	0005c583          	lbu	a1,0(a1)
    80006a20:	02d7d7bb          	divuw	a5,a5,a3
    80006a24:	f8b40423          	sb	a1,-120(s0)
    80006a28:	42ebfc63          	bgeu	s7,a4,80006e60 <__printf+0x678>
    80006a2c:	02079793          	slli	a5,a5,0x20
    80006a30:	0207d793          	srli	a5,a5,0x20
    80006a34:	00fd8db3          	add	s11,s11,a5
    80006a38:	000dc703          	lbu	a4,0(s11)
    80006a3c:	00a00793          	li	a5,10
    80006a40:	00900c93          	li	s9,9
    80006a44:	f8e404a3          	sb	a4,-119(s0)
    80006a48:	00065c63          	bgez	a2,80006a60 <__printf+0x278>
    80006a4c:	f9040713          	addi	a4,s0,-112
    80006a50:	00f70733          	add	a4,a4,a5
    80006a54:	02d00693          	li	a3,45
    80006a58:	fed70823          	sb	a3,-16(a4)
    80006a5c:	00078c93          	mv	s9,a5
    80006a60:	f8040793          	addi	a5,s0,-128
    80006a64:	01978cb3          	add	s9,a5,s9
    80006a68:	f7f40d13          	addi	s10,s0,-129
    80006a6c:	000cc503          	lbu	a0,0(s9)
    80006a70:	fffc8c93          	addi	s9,s9,-1
    80006a74:	00000097          	auipc	ra,0x0
    80006a78:	b90080e7          	jalr	-1136(ra) # 80006604 <consputc>
    80006a7c:	ffac98e3          	bne	s9,s10,80006a6c <__printf+0x284>
    80006a80:	00094503          	lbu	a0,0(s2)
    80006a84:	e00514e3          	bnez	a0,8000688c <__printf+0xa4>
    80006a88:	1a0c1663          	bnez	s8,80006c34 <__printf+0x44c>
    80006a8c:	08813083          	ld	ra,136(sp)
    80006a90:	08013403          	ld	s0,128(sp)
    80006a94:	07813483          	ld	s1,120(sp)
    80006a98:	07013903          	ld	s2,112(sp)
    80006a9c:	06813983          	ld	s3,104(sp)
    80006aa0:	06013a03          	ld	s4,96(sp)
    80006aa4:	05813a83          	ld	s5,88(sp)
    80006aa8:	05013b03          	ld	s6,80(sp)
    80006aac:	04813b83          	ld	s7,72(sp)
    80006ab0:	04013c03          	ld	s8,64(sp)
    80006ab4:	03813c83          	ld	s9,56(sp)
    80006ab8:	03013d03          	ld	s10,48(sp)
    80006abc:	02813d83          	ld	s11,40(sp)
    80006ac0:	0d010113          	addi	sp,sp,208
    80006ac4:	00008067          	ret
    80006ac8:	07300713          	li	a4,115
    80006acc:	1ce78a63          	beq	a5,a4,80006ca0 <__printf+0x4b8>
    80006ad0:	07800713          	li	a4,120
    80006ad4:	1ee79e63          	bne	a5,a4,80006cd0 <__printf+0x4e8>
    80006ad8:	f7843783          	ld	a5,-136(s0)
    80006adc:	0007a703          	lw	a4,0(a5)
    80006ae0:	00878793          	addi	a5,a5,8
    80006ae4:	f6f43c23          	sd	a5,-136(s0)
    80006ae8:	28074263          	bltz	a4,80006d6c <__printf+0x584>
    80006aec:	00002d97          	auipc	s11,0x2
    80006af0:	9d4d8d93          	addi	s11,s11,-1580 # 800084c0 <digits>
    80006af4:	00f77793          	andi	a5,a4,15
    80006af8:	00fd87b3          	add	a5,s11,a5
    80006afc:	0007c683          	lbu	a3,0(a5)
    80006b00:	00f00613          	li	a2,15
    80006b04:	0007079b          	sext.w	a5,a4
    80006b08:	f8d40023          	sb	a3,-128(s0)
    80006b0c:	0047559b          	srliw	a1,a4,0x4
    80006b10:	0047569b          	srliw	a3,a4,0x4
    80006b14:	00000c93          	li	s9,0
    80006b18:	0ee65063          	bge	a2,a4,80006bf8 <__printf+0x410>
    80006b1c:	00f6f693          	andi	a3,a3,15
    80006b20:	00dd86b3          	add	a3,s11,a3
    80006b24:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006b28:	0087d79b          	srliw	a5,a5,0x8
    80006b2c:	00100c93          	li	s9,1
    80006b30:	f8d400a3          	sb	a3,-127(s0)
    80006b34:	0cb67263          	bgeu	a2,a1,80006bf8 <__printf+0x410>
    80006b38:	00f7f693          	andi	a3,a5,15
    80006b3c:	00dd86b3          	add	a3,s11,a3
    80006b40:	0006c583          	lbu	a1,0(a3)
    80006b44:	00f00613          	li	a2,15
    80006b48:	0047d69b          	srliw	a3,a5,0x4
    80006b4c:	f8b40123          	sb	a1,-126(s0)
    80006b50:	0047d593          	srli	a1,a5,0x4
    80006b54:	28f67e63          	bgeu	a2,a5,80006df0 <__printf+0x608>
    80006b58:	00f6f693          	andi	a3,a3,15
    80006b5c:	00dd86b3          	add	a3,s11,a3
    80006b60:	0006c503          	lbu	a0,0(a3)
    80006b64:	0087d813          	srli	a6,a5,0x8
    80006b68:	0087d69b          	srliw	a3,a5,0x8
    80006b6c:	f8a401a3          	sb	a0,-125(s0)
    80006b70:	28b67663          	bgeu	a2,a1,80006dfc <__printf+0x614>
    80006b74:	00f6f693          	andi	a3,a3,15
    80006b78:	00dd86b3          	add	a3,s11,a3
    80006b7c:	0006c583          	lbu	a1,0(a3)
    80006b80:	00c7d513          	srli	a0,a5,0xc
    80006b84:	00c7d69b          	srliw	a3,a5,0xc
    80006b88:	f8b40223          	sb	a1,-124(s0)
    80006b8c:	29067a63          	bgeu	a2,a6,80006e20 <__printf+0x638>
    80006b90:	00f6f693          	andi	a3,a3,15
    80006b94:	00dd86b3          	add	a3,s11,a3
    80006b98:	0006c583          	lbu	a1,0(a3)
    80006b9c:	0107d813          	srli	a6,a5,0x10
    80006ba0:	0107d69b          	srliw	a3,a5,0x10
    80006ba4:	f8b402a3          	sb	a1,-123(s0)
    80006ba8:	28a67263          	bgeu	a2,a0,80006e2c <__printf+0x644>
    80006bac:	00f6f693          	andi	a3,a3,15
    80006bb0:	00dd86b3          	add	a3,s11,a3
    80006bb4:	0006c683          	lbu	a3,0(a3)
    80006bb8:	0147d79b          	srliw	a5,a5,0x14
    80006bbc:	f8d40323          	sb	a3,-122(s0)
    80006bc0:	21067663          	bgeu	a2,a6,80006dcc <__printf+0x5e4>
    80006bc4:	02079793          	slli	a5,a5,0x20
    80006bc8:	0207d793          	srli	a5,a5,0x20
    80006bcc:	00fd8db3          	add	s11,s11,a5
    80006bd0:	000dc683          	lbu	a3,0(s11)
    80006bd4:	00800793          	li	a5,8
    80006bd8:	00700c93          	li	s9,7
    80006bdc:	f8d403a3          	sb	a3,-121(s0)
    80006be0:	00075c63          	bgez	a4,80006bf8 <__printf+0x410>
    80006be4:	f9040713          	addi	a4,s0,-112
    80006be8:	00f70733          	add	a4,a4,a5
    80006bec:	02d00693          	li	a3,45
    80006bf0:	fed70823          	sb	a3,-16(a4)
    80006bf4:	00078c93          	mv	s9,a5
    80006bf8:	f8040793          	addi	a5,s0,-128
    80006bfc:	01978cb3          	add	s9,a5,s9
    80006c00:	f7f40d13          	addi	s10,s0,-129
    80006c04:	000cc503          	lbu	a0,0(s9)
    80006c08:	fffc8c93          	addi	s9,s9,-1
    80006c0c:	00000097          	auipc	ra,0x0
    80006c10:	9f8080e7          	jalr	-1544(ra) # 80006604 <consputc>
    80006c14:	ff9d18e3          	bne	s10,s9,80006c04 <__printf+0x41c>
    80006c18:	0100006f          	j	80006c28 <__printf+0x440>
    80006c1c:	00000097          	auipc	ra,0x0
    80006c20:	9e8080e7          	jalr	-1560(ra) # 80006604 <consputc>
    80006c24:	000c8493          	mv	s1,s9
    80006c28:	00094503          	lbu	a0,0(s2)
    80006c2c:	c60510e3          	bnez	a0,8000688c <__printf+0xa4>
    80006c30:	e40c0ee3          	beqz	s8,80006a8c <__printf+0x2a4>
    80006c34:	00005517          	auipc	a0,0x5
    80006c38:	cbc50513          	addi	a0,a0,-836 # 8000b8f0 <pr>
    80006c3c:	00001097          	auipc	ra,0x1
    80006c40:	94c080e7          	jalr	-1716(ra) # 80007588 <release>
    80006c44:	e49ff06f          	j	80006a8c <__printf+0x2a4>
    80006c48:	f7843783          	ld	a5,-136(s0)
    80006c4c:	03000513          	li	a0,48
    80006c50:	01000d13          	li	s10,16
    80006c54:	00878713          	addi	a4,a5,8
    80006c58:	0007bc83          	ld	s9,0(a5)
    80006c5c:	f6e43c23          	sd	a4,-136(s0)
    80006c60:	00000097          	auipc	ra,0x0
    80006c64:	9a4080e7          	jalr	-1628(ra) # 80006604 <consputc>
    80006c68:	07800513          	li	a0,120
    80006c6c:	00000097          	auipc	ra,0x0
    80006c70:	998080e7          	jalr	-1640(ra) # 80006604 <consputc>
    80006c74:	00002d97          	auipc	s11,0x2
    80006c78:	84cd8d93          	addi	s11,s11,-1972 # 800084c0 <digits>
    80006c7c:	03ccd793          	srli	a5,s9,0x3c
    80006c80:	00fd87b3          	add	a5,s11,a5
    80006c84:	0007c503          	lbu	a0,0(a5)
    80006c88:	fffd0d1b          	addiw	s10,s10,-1
    80006c8c:	004c9c93          	slli	s9,s9,0x4
    80006c90:	00000097          	auipc	ra,0x0
    80006c94:	974080e7          	jalr	-1676(ra) # 80006604 <consputc>
    80006c98:	fe0d12e3          	bnez	s10,80006c7c <__printf+0x494>
    80006c9c:	f8dff06f          	j	80006c28 <__printf+0x440>
    80006ca0:	f7843783          	ld	a5,-136(s0)
    80006ca4:	0007bc83          	ld	s9,0(a5)
    80006ca8:	00878793          	addi	a5,a5,8
    80006cac:	f6f43c23          	sd	a5,-136(s0)
    80006cb0:	000c9a63          	bnez	s9,80006cc4 <__printf+0x4dc>
    80006cb4:	1080006f          	j	80006dbc <__printf+0x5d4>
    80006cb8:	001c8c93          	addi	s9,s9,1
    80006cbc:	00000097          	auipc	ra,0x0
    80006cc0:	948080e7          	jalr	-1720(ra) # 80006604 <consputc>
    80006cc4:	000cc503          	lbu	a0,0(s9)
    80006cc8:	fe0518e3          	bnez	a0,80006cb8 <__printf+0x4d0>
    80006ccc:	f5dff06f          	j	80006c28 <__printf+0x440>
    80006cd0:	02500513          	li	a0,37
    80006cd4:	00000097          	auipc	ra,0x0
    80006cd8:	930080e7          	jalr	-1744(ra) # 80006604 <consputc>
    80006cdc:	000c8513          	mv	a0,s9
    80006ce0:	00000097          	auipc	ra,0x0
    80006ce4:	924080e7          	jalr	-1756(ra) # 80006604 <consputc>
    80006ce8:	f41ff06f          	j	80006c28 <__printf+0x440>
    80006cec:	02500513          	li	a0,37
    80006cf0:	00000097          	auipc	ra,0x0
    80006cf4:	914080e7          	jalr	-1772(ra) # 80006604 <consputc>
    80006cf8:	f31ff06f          	j	80006c28 <__printf+0x440>
    80006cfc:	00030513          	mv	a0,t1
    80006d00:	00000097          	auipc	ra,0x0
    80006d04:	7bc080e7          	jalr	1980(ra) # 800074bc <acquire>
    80006d08:	b4dff06f          	j	80006854 <__printf+0x6c>
    80006d0c:	40c0053b          	negw	a0,a2
    80006d10:	00a00713          	li	a4,10
    80006d14:	02e576bb          	remuw	a3,a0,a4
    80006d18:	00001d97          	auipc	s11,0x1
    80006d1c:	7a8d8d93          	addi	s11,s11,1960 # 800084c0 <digits>
    80006d20:	ff700593          	li	a1,-9
    80006d24:	02069693          	slli	a3,a3,0x20
    80006d28:	0206d693          	srli	a3,a3,0x20
    80006d2c:	00dd86b3          	add	a3,s11,a3
    80006d30:	0006c683          	lbu	a3,0(a3)
    80006d34:	02e557bb          	divuw	a5,a0,a4
    80006d38:	f8d40023          	sb	a3,-128(s0)
    80006d3c:	10b65e63          	bge	a2,a1,80006e58 <__printf+0x670>
    80006d40:	06300593          	li	a1,99
    80006d44:	02e7f6bb          	remuw	a3,a5,a4
    80006d48:	02069693          	slli	a3,a3,0x20
    80006d4c:	0206d693          	srli	a3,a3,0x20
    80006d50:	00dd86b3          	add	a3,s11,a3
    80006d54:	0006c683          	lbu	a3,0(a3)
    80006d58:	02e7d73b          	divuw	a4,a5,a4
    80006d5c:	00200793          	li	a5,2
    80006d60:	f8d400a3          	sb	a3,-127(s0)
    80006d64:	bca5ece3          	bltu	a1,a0,8000693c <__printf+0x154>
    80006d68:	ce5ff06f          	j	80006a4c <__printf+0x264>
    80006d6c:	40e007bb          	negw	a5,a4
    80006d70:	00001d97          	auipc	s11,0x1
    80006d74:	750d8d93          	addi	s11,s11,1872 # 800084c0 <digits>
    80006d78:	00f7f693          	andi	a3,a5,15
    80006d7c:	00dd86b3          	add	a3,s11,a3
    80006d80:	0006c583          	lbu	a1,0(a3)
    80006d84:	ff100613          	li	a2,-15
    80006d88:	0047d69b          	srliw	a3,a5,0x4
    80006d8c:	f8b40023          	sb	a1,-128(s0)
    80006d90:	0047d59b          	srliw	a1,a5,0x4
    80006d94:	0ac75e63          	bge	a4,a2,80006e50 <__printf+0x668>
    80006d98:	00f6f693          	andi	a3,a3,15
    80006d9c:	00dd86b3          	add	a3,s11,a3
    80006da0:	0006c603          	lbu	a2,0(a3)
    80006da4:	00f00693          	li	a3,15
    80006da8:	0087d79b          	srliw	a5,a5,0x8
    80006dac:	f8c400a3          	sb	a2,-127(s0)
    80006db0:	d8b6e4e3          	bltu	a3,a1,80006b38 <__printf+0x350>
    80006db4:	00200793          	li	a5,2
    80006db8:	e2dff06f          	j	80006be4 <__printf+0x3fc>
    80006dbc:	00001c97          	auipc	s9,0x1
    80006dc0:	6e4c8c93          	addi	s9,s9,1764 # 800084a0 <_ZL6digits+0x160>
    80006dc4:	02800513          	li	a0,40
    80006dc8:	ef1ff06f          	j	80006cb8 <__printf+0x4d0>
    80006dcc:	00700793          	li	a5,7
    80006dd0:	00600c93          	li	s9,6
    80006dd4:	e0dff06f          	j	80006be0 <__printf+0x3f8>
    80006dd8:	00700793          	li	a5,7
    80006ddc:	00600c93          	li	s9,6
    80006de0:	c69ff06f          	j	80006a48 <__printf+0x260>
    80006de4:	00300793          	li	a5,3
    80006de8:	00200c93          	li	s9,2
    80006dec:	c5dff06f          	j	80006a48 <__printf+0x260>
    80006df0:	00300793          	li	a5,3
    80006df4:	00200c93          	li	s9,2
    80006df8:	de9ff06f          	j	80006be0 <__printf+0x3f8>
    80006dfc:	00400793          	li	a5,4
    80006e00:	00300c93          	li	s9,3
    80006e04:	dddff06f          	j	80006be0 <__printf+0x3f8>
    80006e08:	00400793          	li	a5,4
    80006e0c:	00300c93          	li	s9,3
    80006e10:	c39ff06f          	j	80006a48 <__printf+0x260>
    80006e14:	00500793          	li	a5,5
    80006e18:	00400c93          	li	s9,4
    80006e1c:	c2dff06f          	j	80006a48 <__printf+0x260>
    80006e20:	00500793          	li	a5,5
    80006e24:	00400c93          	li	s9,4
    80006e28:	db9ff06f          	j	80006be0 <__printf+0x3f8>
    80006e2c:	00600793          	li	a5,6
    80006e30:	00500c93          	li	s9,5
    80006e34:	dadff06f          	j	80006be0 <__printf+0x3f8>
    80006e38:	00600793          	li	a5,6
    80006e3c:	00500c93          	li	s9,5
    80006e40:	c09ff06f          	j	80006a48 <__printf+0x260>
    80006e44:	00800793          	li	a5,8
    80006e48:	00700c93          	li	s9,7
    80006e4c:	bfdff06f          	j	80006a48 <__printf+0x260>
    80006e50:	00100793          	li	a5,1
    80006e54:	d91ff06f          	j	80006be4 <__printf+0x3fc>
    80006e58:	00100793          	li	a5,1
    80006e5c:	bf1ff06f          	j	80006a4c <__printf+0x264>
    80006e60:	00900793          	li	a5,9
    80006e64:	00800c93          	li	s9,8
    80006e68:	be1ff06f          	j	80006a48 <__printf+0x260>
    80006e6c:	00001517          	auipc	a0,0x1
    80006e70:	63c50513          	addi	a0,a0,1596 # 800084a8 <_ZL6digits+0x168>
    80006e74:	00000097          	auipc	ra,0x0
    80006e78:	918080e7          	jalr	-1768(ra) # 8000678c <panic>

0000000080006e7c <printfinit>:
    80006e7c:	fe010113          	addi	sp,sp,-32
    80006e80:	00813823          	sd	s0,16(sp)
    80006e84:	00913423          	sd	s1,8(sp)
    80006e88:	00113c23          	sd	ra,24(sp)
    80006e8c:	02010413          	addi	s0,sp,32
    80006e90:	00005497          	auipc	s1,0x5
    80006e94:	a6048493          	addi	s1,s1,-1440 # 8000b8f0 <pr>
    80006e98:	00048513          	mv	a0,s1
    80006e9c:	00001597          	auipc	a1,0x1
    80006ea0:	61c58593          	addi	a1,a1,1564 # 800084b8 <_ZL6digits+0x178>
    80006ea4:	00000097          	auipc	ra,0x0
    80006ea8:	5f4080e7          	jalr	1524(ra) # 80007498 <initlock>
    80006eac:	01813083          	ld	ra,24(sp)
    80006eb0:	01013403          	ld	s0,16(sp)
    80006eb4:	0004ac23          	sw	zero,24(s1)
    80006eb8:	00813483          	ld	s1,8(sp)
    80006ebc:	02010113          	addi	sp,sp,32
    80006ec0:	00008067          	ret

0000000080006ec4 <uartinit>:
    80006ec4:	ff010113          	addi	sp,sp,-16
    80006ec8:	00813423          	sd	s0,8(sp)
    80006ecc:	01010413          	addi	s0,sp,16
    80006ed0:	100007b7          	lui	a5,0x10000
    80006ed4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006ed8:	f8000713          	li	a4,-128
    80006edc:	00e781a3          	sb	a4,3(a5)
    80006ee0:	00300713          	li	a4,3
    80006ee4:	00e78023          	sb	a4,0(a5)
    80006ee8:	000780a3          	sb	zero,1(a5)
    80006eec:	00e781a3          	sb	a4,3(a5)
    80006ef0:	00700693          	li	a3,7
    80006ef4:	00d78123          	sb	a3,2(a5)
    80006ef8:	00e780a3          	sb	a4,1(a5)
    80006efc:	00813403          	ld	s0,8(sp)
    80006f00:	01010113          	addi	sp,sp,16
    80006f04:	00008067          	ret

0000000080006f08 <uartputc>:
    80006f08:	00003797          	auipc	a5,0x3
    80006f0c:	6f07a783          	lw	a5,1776(a5) # 8000a5f8 <panicked>
    80006f10:	00078463          	beqz	a5,80006f18 <uartputc+0x10>
    80006f14:	0000006f          	j	80006f14 <uartputc+0xc>
    80006f18:	fd010113          	addi	sp,sp,-48
    80006f1c:	02813023          	sd	s0,32(sp)
    80006f20:	00913c23          	sd	s1,24(sp)
    80006f24:	01213823          	sd	s2,16(sp)
    80006f28:	01313423          	sd	s3,8(sp)
    80006f2c:	02113423          	sd	ra,40(sp)
    80006f30:	03010413          	addi	s0,sp,48
    80006f34:	00003917          	auipc	s2,0x3
    80006f38:	6cc90913          	addi	s2,s2,1740 # 8000a600 <uart_tx_r>
    80006f3c:	00093783          	ld	a5,0(s2)
    80006f40:	00003497          	auipc	s1,0x3
    80006f44:	6c848493          	addi	s1,s1,1736 # 8000a608 <uart_tx_w>
    80006f48:	0004b703          	ld	a4,0(s1)
    80006f4c:	02078693          	addi	a3,a5,32
    80006f50:	00050993          	mv	s3,a0
    80006f54:	02e69c63          	bne	a3,a4,80006f8c <uartputc+0x84>
    80006f58:	00001097          	auipc	ra,0x1
    80006f5c:	834080e7          	jalr	-1996(ra) # 8000778c <push_on>
    80006f60:	00093783          	ld	a5,0(s2)
    80006f64:	0004b703          	ld	a4,0(s1)
    80006f68:	02078793          	addi	a5,a5,32
    80006f6c:	00e79463          	bne	a5,a4,80006f74 <uartputc+0x6c>
    80006f70:	0000006f          	j	80006f70 <uartputc+0x68>
    80006f74:	00001097          	auipc	ra,0x1
    80006f78:	88c080e7          	jalr	-1908(ra) # 80007800 <pop_on>
    80006f7c:	00093783          	ld	a5,0(s2)
    80006f80:	0004b703          	ld	a4,0(s1)
    80006f84:	02078693          	addi	a3,a5,32
    80006f88:	fce688e3          	beq	a3,a4,80006f58 <uartputc+0x50>
    80006f8c:	01f77693          	andi	a3,a4,31
    80006f90:	00005597          	auipc	a1,0x5
    80006f94:	98058593          	addi	a1,a1,-1664 # 8000b910 <uart_tx_buf>
    80006f98:	00d586b3          	add	a3,a1,a3
    80006f9c:	00170713          	addi	a4,a4,1
    80006fa0:	01368023          	sb	s3,0(a3)
    80006fa4:	00e4b023          	sd	a4,0(s1)
    80006fa8:	10000637          	lui	a2,0x10000
    80006fac:	02f71063          	bne	a4,a5,80006fcc <uartputc+0xc4>
    80006fb0:	0340006f          	j	80006fe4 <uartputc+0xdc>
    80006fb4:	00074703          	lbu	a4,0(a4)
    80006fb8:	00f93023          	sd	a5,0(s2)
    80006fbc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006fc0:	00093783          	ld	a5,0(s2)
    80006fc4:	0004b703          	ld	a4,0(s1)
    80006fc8:	00f70e63          	beq	a4,a5,80006fe4 <uartputc+0xdc>
    80006fcc:	00564683          	lbu	a3,5(a2)
    80006fd0:	01f7f713          	andi	a4,a5,31
    80006fd4:	00e58733          	add	a4,a1,a4
    80006fd8:	0206f693          	andi	a3,a3,32
    80006fdc:	00178793          	addi	a5,a5,1
    80006fe0:	fc069ae3          	bnez	a3,80006fb4 <uartputc+0xac>
    80006fe4:	02813083          	ld	ra,40(sp)
    80006fe8:	02013403          	ld	s0,32(sp)
    80006fec:	01813483          	ld	s1,24(sp)
    80006ff0:	01013903          	ld	s2,16(sp)
    80006ff4:	00813983          	ld	s3,8(sp)
    80006ff8:	03010113          	addi	sp,sp,48
    80006ffc:	00008067          	ret

0000000080007000 <uartputc_sync>:
    80007000:	ff010113          	addi	sp,sp,-16
    80007004:	00813423          	sd	s0,8(sp)
    80007008:	01010413          	addi	s0,sp,16
    8000700c:	00003717          	auipc	a4,0x3
    80007010:	5ec72703          	lw	a4,1516(a4) # 8000a5f8 <panicked>
    80007014:	02071663          	bnez	a4,80007040 <uartputc_sync+0x40>
    80007018:	00050793          	mv	a5,a0
    8000701c:	100006b7          	lui	a3,0x10000
    80007020:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007024:	02077713          	andi	a4,a4,32
    80007028:	fe070ce3          	beqz	a4,80007020 <uartputc_sync+0x20>
    8000702c:	0ff7f793          	andi	a5,a5,255
    80007030:	00f68023          	sb	a5,0(a3)
    80007034:	00813403          	ld	s0,8(sp)
    80007038:	01010113          	addi	sp,sp,16
    8000703c:	00008067          	ret
    80007040:	0000006f          	j	80007040 <uartputc_sync+0x40>

0000000080007044 <uartstart>:
    80007044:	ff010113          	addi	sp,sp,-16
    80007048:	00813423          	sd	s0,8(sp)
    8000704c:	01010413          	addi	s0,sp,16
    80007050:	00003617          	auipc	a2,0x3
    80007054:	5b060613          	addi	a2,a2,1456 # 8000a600 <uart_tx_r>
    80007058:	00003517          	auipc	a0,0x3
    8000705c:	5b050513          	addi	a0,a0,1456 # 8000a608 <uart_tx_w>
    80007060:	00063783          	ld	a5,0(a2)
    80007064:	00053703          	ld	a4,0(a0)
    80007068:	04f70263          	beq	a4,a5,800070ac <uartstart+0x68>
    8000706c:	100005b7          	lui	a1,0x10000
    80007070:	00005817          	auipc	a6,0x5
    80007074:	8a080813          	addi	a6,a6,-1888 # 8000b910 <uart_tx_buf>
    80007078:	01c0006f          	j	80007094 <uartstart+0x50>
    8000707c:	0006c703          	lbu	a4,0(a3)
    80007080:	00f63023          	sd	a5,0(a2)
    80007084:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007088:	00063783          	ld	a5,0(a2)
    8000708c:	00053703          	ld	a4,0(a0)
    80007090:	00f70e63          	beq	a4,a5,800070ac <uartstart+0x68>
    80007094:	01f7f713          	andi	a4,a5,31
    80007098:	00e806b3          	add	a3,a6,a4
    8000709c:	0055c703          	lbu	a4,5(a1)
    800070a0:	00178793          	addi	a5,a5,1
    800070a4:	02077713          	andi	a4,a4,32
    800070a8:	fc071ae3          	bnez	a4,8000707c <uartstart+0x38>
    800070ac:	00813403          	ld	s0,8(sp)
    800070b0:	01010113          	addi	sp,sp,16
    800070b4:	00008067          	ret

00000000800070b8 <uartgetc>:
    800070b8:	ff010113          	addi	sp,sp,-16
    800070bc:	00813423          	sd	s0,8(sp)
    800070c0:	01010413          	addi	s0,sp,16
    800070c4:	10000737          	lui	a4,0x10000
    800070c8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800070cc:	0017f793          	andi	a5,a5,1
    800070d0:	00078c63          	beqz	a5,800070e8 <uartgetc+0x30>
    800070d4:	00074503          	lbu	a0,0(a4)
    800070d8:	0ff57513          	andi	a0,a0,255
    800070dc:	00813403          	ld	s0,8(sp)
    800070e0:	01010113          	addi	sp,sp,16
    800070e4:	00008067          	ret
    800070e8:	fff00513          	li	a0,-1
    800070ec:	ff1ff06f          	j	800070dc <uartgetc+0x24>

00000000800070f0 <uartintr>:
    800070f0:	100007b7          	lui	a5,0x10000
    800070f4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800070f8:	0017f793          	andi	a5,a5,1
    800070fc:	0a078463          	beqz	a5,800071a4 <uartintr+0xb4>
    80007100:	fe010113          	addi	sp,sp,-32
    80007104:	00813823          	sd	s0,16(sp)
    80007108:	00913423          	sd	s1,8(sp)
    8000710c:	00113c23          	sd	ra,24(sp)
    80007110:	02010413          	addi	s0,sp,32
    80007114:	100004b7          	lui	s1,0x10000
    80007118:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000711c:	0ff57513          	andi	a0,a0,255
    80007120:	fffff097          	auipc	ra,0xfffff
    80007124:	534080e7          	jalr	1332(ra) # 80006654 <consoleintr>
    80007128:	0054c783          	lbu	a5,5(s1)
    8000712c:	0017f793          	andi	a5,a5,1
    80007130:	fe0794e3          	bnez	a5,80007118 <uartintr+0x28>
    80007134:	00003617          	auipc	a2,0x3
    80007138:	4cc60613          	addi	a2,a2,1228 # 8000a600 <uart_tx_r>
    8000713c:	00003517          	auipc	a0,0x3
    80007140:	4cc50513          	addi	a0,a0,1228 # 8000a608 <uart_tx_w>
    80007144:	00063783          	ld	a5,0(a2)
    80007148:	00053703          	ld	a4,0(a0)
    8000714c:	04f70263          	beq	a4,a5,80007190 <uartintr+0xa0>
    80007150:	100005b7          	lui	a1,0x10000
    80007154:	00004817          	auipc	a6,0x4
    80007158:	7bc80813          	addi	a6,a6,1980 # 8000b910 <uart_tx_buf>
    8000715c:	01c0006f          	j	80007178 <uartintr+0x88>
    80007160:	0006c703          	lbu	a4,0(a3)
    80007164:	00f63023          	sd	a5,0(a2)
    80007168:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000716c:	00063783          	ld	a5,0(a2)
    80007170:	00053703          	ld	a4,0(a0)
    80007174:	00f70e63          	beq	a4,a5,80007190 <uartintr+0xa0>
    80007178:	01f7f713          	andi	a4,a5,31
    8000717c:	00e806b3          	add	a3,a6,a4
    80007180:	0055c703          	lbu	a4,5(a1)
    80007184:	00178793          	addi	a5,a5,1
    80007188:	02077713          	andi	a4,a4,32
    8000718c:	fc071ae3          	bnez	a4,80007160 <uartintr+0x70>
    80007190:	01813083          	ld	ra,24(sp)
    80007194:	01013403          	ld	s0,16(sp)
    80007198:	00813483          	ld	s1,8(sp)
    8000719c:	02010113          	addi	sp,sp,32
    800071a0:	00008067          	ret
    800071a4:	00003617          	auipc	a2,0x3
    800071a8:	45c60613          	addi	a2,a2,1116 # 8000a600 <uart_tx_r>
    800071ac:	00003517          	auipc	a0,0x3
    800071b0:	45c50513          	addi	a0,a0,1116 # 8000a608 <uart_tx_w>
    800071b4:	00063783          	ld	a5,0(a2)
    800071b8:	00053703          	ld	a4,0(a0)
    800071bc:	04f70263          	beq	a4,a5,80007200 <uartintr+0x110>
    800071c0:	100005b7          	lui	a1,0x10000
    800071c4:	00004817          	auipc	a6,0x4
    800071c8:	74c80813          	addi	a6,a6,1868 # 8000b910 <uart_tx_buf>
    800071cc:	01c0006f          	j	800071e8 <uartintr+0xf8>
    800071d0:	0006c703          	lbu	a4,0(a3)
    800071d4:	00f63023          	sd	a5,0(a2)
    800071d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800071dc:	00063783          	ld	a5,0(a2)
    800071e0:	00053703          	ld	a4,0(a0)
    800071e4:	02f70063          	beq	a4,a5,80007204 <uartintr+0x114>
    800071e8:	01f7f713          	andi	a4,a5,31
    800071ec:	00e806b3          	add	a3,a6,a4
    800071f0:	0055c703          	lbu	a4,5(a1)
    800071f4:	00178793          	addi	a5,a5,1
    800071f8:	02077713          	andi	a4,a4,32
    800071fc:	fc071ae3          	bnez	a4,800071d0 <uartintr+0xe0>
    80007200:	00008067          	ret
    80007204:	00008067          	ret

0000000080007208 <kinit>:
    80007208:	fc010113          	addi	sp,sp,-64
    8000720c:	02913423          	sd	s1,40(sp)
    80007210:	fffff7b7          	lui	a5,0xfffff
    80007214:	00005497          	auipc	s1,0x5
    80007218:	71b48493          	addi	s1,s1,1819 # 8000c92f <end+0xfff>
    8000721c:	02813823          	sd	s0,48(sp)
    80007220:	01313c23          	sd	s3,24(sp)
    80007224:	00f4f4b3          	and	s1,s1,a5
    80007228:	02113c23          	sd	ra,56(sp)
    8000722c:	03213023          	sd	s2,32(sp)
    80007230:	01413823          	sd	s4,16(sp)
    80007234:	01513423          	sd	s5,8(sp)
    80007238:	04010413          	addi	s0,sp,64
    8000723c:	000017b7          	lui	a5,0x1
    80007240:	01100993          	li	s3,17
    80007244:	00f487b3          	add	a5,s1,a5
    80007248:	01b99993          	slli	s3,s3,0x1b
    8000724c:	06f9e063          	bltu	s3,a5,800072ac <kinit+0xa4>
    80007250:	00004a97          	auipc	s5,0x4
    80007254:	6e0a8a93          	addi	s5,s5,1760 # 8000b930 <end>
    80007258:	0754ec63          	bltu	s1,s5,800072d0 <kinit+0xc8>
    8000725c:	0734fa63          	bgeu	s1,s3,800072d0 <kinit+0xc8>
    80007260:	00088a37          	lui	s4,0x88
    80007264:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007268:	00003917          	auipc	s2,0x3
    8000726c:	3a890913          	addi	s2,s2,936 # 8000a610 <kmem>
    80007270:	00ca1a13          	slli	s4,s4,0xc
    80007274:	0140006f          	j	80007288 <kinit+0x80>
    80007278:	000017b7          	lui	a5,0x1
    8000727c:	00f484b3          	add	s1,s1,a5
    80007280:	0554e863          	bltu	s1,s5,800072d0 <kinit+0xc8>
    80007284:	0534f663          	bgeu	s1,s3,800072d0 <kinit+0xc8>
    80007288:	00001637          	lui	a2,0x1
    8000728c:	00100593          	li	a1,1
    80007290:	00048513          	mv	a0,s1
    80007294:	00000097          	auipc	ra,0x0
    80007298:	5e4080e7          	jalr	1508(ra) # 80007878 <__memset>
    8000729c:	00093783          	ld	a5,0(s2)
    800072a0:	00f4b023          	sd	a5,0(s1)
    800072a4:	00993023          	sd	s1,0(s2)
    800072a8:	fd4498e3          	bne	s1,s4,80007278 <kinit+0x70>
    800072ac:	03813083          	ld	ra,56(sp)
    800072b0:	03013403          	ld	s0,48(sp)
    800072b4:	02813483          	ld	s1,40(sp)
    800072b8:	02013903          	ld	s2,32(sp)
    800072bc:	01813983          	ld	s3,24(sp)
    800072c0:	01013a03          	ld	s4,16(sp)
    800072c4:	00813a83          	ld	s5,8(sp)
    800072c8:	04010113          	addi	sp,sp,64
    800072cc:	00008067          	ret
    800072d0:	00001517          	auipc	a0,0x1
    800072d4:	20850513          	addi	a0,a0,520 # 800084d8 <digits+0x18>
    800072d8:	fffff097          	auipc	ra,0xfffff
    800072dc:	4b4080e7          	jalr	1204(ra) # 8000678c <panic>

00000000800072e0 <freerange>:
    800072e0:	fc010113          	addi	sp,sp,-64
    800072e4:	000017b7          	lui	a5,0x1
    800072e8:	02913423          	sd	s1,40(sp)
    800072ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800072f0:	009504b3          	add	s1,a0,s1
    800072f4:	fffff537          	lui	a0,0xfffff
    800072f8:	02813823          	sd	s0,48(sp)
    800072fc:	02113c23          	sd	ra,56(sp)
    80007300:	03213023          	sd	s2,32(sp)
    80007304:	01313c23          	sd	s3,24(sp)
    80007308:	01413823          	sd	s4,16(sp)
    8000730c:	01513423          	sd	s5,8(sp)
    80007310:	01613023          	sd	s6,0(sp)
    80007314:	04010413          	addi	s0,sp,64
    80007318:	00a4f4b3          	and	s1,s1,a0
    8000731c:	00f487b3          	add	a5,s1,a5
    80007320:	06f5e463          	bltu	a1,a5,80007388 <freerange+0xa8>
    80007324:	00004a97          	auipc	s5,0x4
    80007328:	60ca8a93          	addi	s5,s5,1548 # 8000b930 <end>
    8000732c:	0954e263          	bltu	s1,s5,800073b0 <freerange+0xd0>
    80007330:	01100993          	li	s3,17
    80007334:	01b99993          	slli	s3,s3,0x1b
    80007338:	0734fc63          	bgeu	s1,s3,800073b0 <freerange+0xd0>
    8000733c:	00058a13          	mv	s4,a1
    80007340:	00003917          	auipc	s2,0x3
    80007344:	2d090913          	addi	s2,s2,720 # 8000a610 <kmem>
    80007348:	00002b37          	lui	s6,0x2
    8000734c:	0140006f          	j	80007360 <freerange+0x80>
    80007350:	000017b7          	lui	a5,0x1
    80007354:	00f484b3          	add	s1,s1,a5
    80007358:	0554ec63          	bltu	s1,s5,800073b0 <freerange+0xd0>
    8000735c:	0534fa63          	bgeu	s1,s3,800073b0 <freerange+0xd0>
    80007360:	00001637          	lui	a2,0x1
    80007364:	00100593          	li	a1,1
    80007368:	00048513          	mv	a0,s1
    8000736c:	00000097          	auipc	ra,0x0
    80007370:	50c080e7          	jalr	1292(ra) # 80007878 <__memset>
    80007374:	00093703          	ld	a4,0(s2)
    80007378:	016487b3          	add	a5,s1,s6
    8000737c:	00e4b023          	sd	a4,0(s1)
    80007380:	00993023          	sd	s1,0(s2)
    80007384:	fcfa76e3          	bgeu	s4,a5,80007350 <freerange+0x70>
    80007388:	03813083          	ld	ra,56(sp)
    8000738c:	03013403          	ld	s0,48(sp)
    80007390:	02813483          	ld	s1,40(sp)
    80007394:	02013903          	ld	s2,32(sp)
    80007398:	01813983          	ld	s3,24(sp)
    8000739c:	01013a03          	ld	s4,16(sp)
    800073a0:	00813a83          	ld	s5,8(sp)
    800073a4:	00013b03          	ld	s6,0(sp)
    800073a8:	04010113          	addi	sp,sp,64
    800073ac:	00008067          	ret
    800073b0:	00001517          	auipc	a0,0x1
    800073b4:	12850513          	addi	a0,a0,296 # 800084d8 <digits+0x18>
    800073b8:	fffff097          	auipc	ra,0xfffff
    800073bc:	3d4080e7          	jalr	980(ra) # 8000678c <panic>

00000000800073c0 <kfree>:
    800073c0:	fe010113          	addi	sp,sp,-32
    800073c4:	00813823          	sd	s0,16(sp)
    800073c8:	00113c23          	sd	ra,24(sp)
    800073cc:	00913423          	sd	s1,8(sp)
    800073d0:	02010413          	addi	s0,sp,32
    800073d4:	03451793          	slli	a5,a0,0x34
    800073d8:	04079c63          	bnez	a5,80007430 <kfree+0x70>
    800073dc:	00004797          	auipc	a5,0x4
    800073e0:	55478793          	addi	a5,a5,1364 # 8000b930 <end>
    800073e4:	00050493          	mv	s1,a0
    800073e8:	04f56463          	bltu	a0,a5,80007430 <kfree+0x70>
    800073ec:	01100793          	li	a5,17
    800073f0:	01b79793          	slli	a5,a5,0x1b
    800073f4:	02f57e63          	bgeu	a0,a5,80007430 <kfree+0x70>
    800073f8:	00001637          	lui	a2,0x1
    800073fc:	00100593          	li	a1,1
    80007400:	00000097          	auipc	ra,0x0
    80007404:	478080e7          	jalr	1144(ra) # 80007878 <__memset>
    80007408:	00003797          	auipc	a5,0x3
    8000740c:	20878793          	addi	a5,a5,520 # 8000a610 <kmem>
    80007410:	0007b703          	ld	a4,0(a5)
    80007414:	01813083          	ld	ra,24(sp)
    80007418:	01013403          	ld	s0,16(sp)
    8000741c:	00e4b023          	sd	a4,0(s1)
    80007420:	0097b023          	sd	s1,0(a5)
    80007424:	00813483          	ld	s1,8(sp)
    80007428:	02010113          	addi	sp,sp,32
    8000742c:	00008067          	ret
    80007430:	00001517          	auipc	a0,0x1
    80007434:	0a850513          	addi	a0,a0,168 # 800084d8 <digits+0x18>
    80007438:	fffff097          	auipc	ra,0xfffff
    8000743c:	354080e7          	jalr	852(ra) # 8000678c <panic>

0000000080007440 <kalloc>:
    80007440:	fe010113          	addi	sp,sp,-32
    80007444:	00813823          	sd	s0,16(sp)
    80007448:	00913423          	sd	s1,8(sp)
    8000744c:	00113c23          	sd	ra,24(sp)
    80007450:	02010413          	addi	s0,sp,32
    80007454:	00003797          	auipc	a5,0x3
    80007458:	1bc78793          	addi	a5,a5,444 # 8000a610 <kmem>
    8000745c:	0007b483          	ld	s1,0(a5)
    80007460:	02048063          	beqz	s1,80007480 <kalloc+0x40>
    80007464:	0004b703          	ld	a4,0(s1)
    80007468:	00001637          	lui	a2,0x1
    8000746c:	00500593          	li	a1,5
    80007470:	00048513          	mv	a0,s1
    80007474:	00e7b023          	sd	a4,0(a5)
    80007478:	00000097          	auipc	ra,0x0
    8000747c:	400080e7          	jalr	1024(ra) # 80007878 <__memset>
    80007480:	01813083          	ld	ra,24(sp)
    80007484:	01013403          	ld	s0,16(sp)
    80007488:	00048513          	mv	a0,s1
    8000748c:	00813483          	ld	s1,8(sp)
    80007490:	02010113          	addi	sp,sp,32
    80007494:	00008067          	ret

0000000080007498 <initlock>:
    80007498:	ff010113          	addi	sp,sp,-16
    8000749c:	00813423          	sd	s0,8(sp)
    800074a0:	01010413          	addi	s0,sp,16
    800074a4:	00813403          	ld	s0,8(sp)
    800074a8:	00b53423          	sd	a1,8(a0)
    800074ac:	00052023          	sw	zero,0(a0)
    800074b0:	00053823          	sd	zero,16(a0)
    800074b4:	01010113          	addi	sp,sp,16
    800074b8:	00008067          	ret

00000000800074bc <acquire>:
    800074bc:	fe010113          	addi	sp,sp,-32
    800074c0:	00813823          	sd	s0,16(sp)
    800074c4:	00913423          	sd	s1,8(sp)
    800074c8:	00113c23          	sd	ra,24(sp)
    800074cc:	01213023          	sd	s2,0(sp)
    800074d0:	02010413          	addi	s0,sp,32
    800074d4:	00050493          	mv	s1,a0
    800074d8:	10002973          	csrr	s2,sstatus
    800074dc:	100027f3          	csrr	a5,sstatus
    800074e0:	ffd7f793          	andi	a5,a5,-3
    800074e4:	10079073          	csrw	sstatus,a5
    800074e8:	fffff097          	auipc	ra,0xfffff
    800074ec:	8ec080e7          	jalr	-1812(ra) # 80005dd4 <mycpu>
    800074f0:	07852783          	lw	a5,120(a0)
    800074f4:	06078e63          	beqz	a5,80007570 <acquire+0xb4>
    800074f8:	fffff097          	auipc	ra,0xfffff
    800074fc:	8dc080e7          	jalr	-1828(ra) # 80005dd4 <mycpu>
    80007500:	07852783          	lw	a5,120(a0)
    80007504:	0004a703          	lw	a4,0(s1)
    80007508:	0017879b          	addiw	a5,a5,1
    8000750c:	06f52c23          	sw	a5,120(a0)
    80007510:	04071063          	bnez	a4,80007550 <acquire+0x94>
    80007514:	00100713          	li	a4,1
    80007518:	00070793          	mv	a5,a4
    8000751c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007520:	0007879b          	sext.w	a5,a5
    80007524:	fe079ae3          	bnez	a5,80007518 <acquire+0x5c>
    80007528:	0ff0000f          	fence
    8000752c:	fffff097          	auipc	ra,0xfffff
    80007530:	8a8080e7          	jalr	-1880(ra) # 80005dd4 <mycpu>
    80007534:	01813083          	ld	ra,24(sp)
    80007538:	01013403          	ld	s0,16(sp)
    8000753c:	00a4b823          	sd	a0,16(s1)
    80007540:	00013903          	ld	s2,0(sp)
    80007544:	00813483          	ld	s1,8(sp)
    80007548:	02010113          	addi	sp,sp,32
    8000754c:	00008067          	ret
    80007550:	0104b903          	ld	s2,16(s1)
    80007554:	fffff097          	auipc	ra,0xfffff
    80007558:	880080e7          	jalr	-1920(ra) # 80005dd4 <mycpu>
    8000755c:	faa91ce3          	bne	s2,a0,80007514 <acquire+0x58>
    80007560:	00001517          	auipc	a0,0x1
    80007564:	f8050513          	addi	a0,a0,-128 # 800084e0 <digits+0x20>
    80007568:	fffff097          	auipc	ra,0xfffff
    8000756c:	224080e7          	jalr	548(ra) # 8000678c <panic>
    80007570:	00195913          	srli	s2,s2,0x1
    80007574:	fffff097          	auipc	ra,0xfffff
    80007578:	860080e7          	jalr	-1952(ra) # 80005dd4 <mycpu>
    8000757c:	00197913          	andi	s2,s2,1
    80007580:	07252e23          	sw	s2,124(a0)
    80007584:	f75ff06f          	j	800074f8 <acquire+0x3c>

0000000080007588 <release>:
    80007588:	fe010113          	addi	sp,sp,-32
    8000758c:	00813823          	sd	s0,16(sp)
    80007590:	00113c23          	sd	ra,24(sp)
    80007594:	00913423          	sd	s1,8(sp)
    80007598:	01213023          	sd	s2,0(sp)
    8000759c:	02010413          	addi	s0,sp,32
    800075a0:	00052783          	lw	a5,0(a0)
    800075a4:	00079a63          	bnez	a5,800075b8 <release+0x30>
    800075a8:	00001517          	auipc	a0,0x1
    800075ac:	f4050513          	addi	a0,a0,-192 # 800084e8 <digits+0x28>
    800075b0:	fffff097          	auipc	ra,0xfffff
    800075b4:	1dc080e7          	jalr	476(ra) # 8000678c <panic>
    800075b8:	01053903          	ld	s2,16(a0)
    800075bc:	00050493          	mv	s1,a0
    800075c0:	fffff097          	auipc	ra,0xfffff
    800075c4:	814080e7          	jalr	-2028(ra) # 80005dd4 <mycpu>
    800075c8:	fea910e3          	bne	s2,a0,800075a8 <release+0x20>
    800075cc:	0004b823          	sd	zero,16(s1)
    800075d0:	0ff0000f          	fence
    800075d4:	0f50000f          	fence	iorw,ow
    800075d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800075dc:	ffffe097          	auipc	ra,0xffffe
    800075e0:	7f8080e7          	jalr	2040(ra) # 80005dd4 <mycpu>
    800075e4:	100027f3          	csrr	a5,sstatus
    800075e8:	0027f793          	andi	a5,a5,2
    800075ec:	04079a63          	bnez	a5,80007640 <release+0xb8>
    800075f0:	07852783          	lw	a5,120(a0)
    800075f4:	02f05e63          	blez	a5,80007630 <release+0xa8>
    800075f8:	fff7871b          	addiw	a4,a5,-1
    800075fc:	06e52c23          	sw	a4,120(a0)
    80007600:	00071c63          	bnez	a4,80007618 <release+0x90>
    80007604:	07c52783          	lw	a5,124(a0)
    80007608:	00078863          	beqz	a5,80007618 <release+0x90>
    8000760c:	100027f3          	csrr	a5,sstatus
    80007610:	0027e793          	ori	a5,a5,2
    80007614:	10079073          	csrw	sstatus,a5
    80007618:	01813083          	ld	ra,24(sp)
    8000761c:	01013403          	ld	s0,16(sp)
    80007620:	00813483          	ld	s1,8(sp)
    80007624:	00013903          	ld	s2,0(sp)
    80007628:	02010113          	addi	sp,sp,32
    8000762c:	00008067          	ret
    80007630:	00001517          	auipc	a0,0x1
    80007634:	ed850513          	addi	a0,a0,-296 # 80008508 <digits+0x48>
    80007638:	fffff097          	auipc	ra,0xfffff
    8000763c:	154080e7          	jalr	340(ra) # 8000678c <panic>
    80007640:	00001517          	auipc	a0,0x1
    80007644:	eb050513          	addi	a0,a0,-336 # 800084f0 <digits+0x30>
    80007648:	fffff097          	auipc	ra,0xfffff
    8000764c:	144080e7          	jalr	324(ra) # 8000678c <panic>

0000000080007650 <holding>:
    80007650:	00052783          	lw	a5,0(a0)
    80007654:	00079663          	bnez	a5,80007660 <holding+0x10>
    80007658:	00000513          	li	a0,0
    8000765c:	00008067          	ret
    80007660:	fe010113          	addi	sp,sp,-32
    80007664:	00813823          	sd	s0,16(sp)
    80007668:	00913423          	sd	s1,8(sp)
    8000766c:	00113c23          	sd	ra,24(sp)
    80007670:	02010413          	addi	s0,sp,32
    80007674:	01053483          	ld	s1,16(a0)
    80007678:	ffffe097          	auipc	ra,0xffffe
    8000767c:	75c080e7          	jalr	1884(ra) # 80005dd4 <mycpu>
    80007680:	01813083          	ld	ra,24(sp)
    80007684:	01013403          	ld	s0,16(sp)
    80007688:	40a48533          	sub	a0,s1,a0
    8000768c:	00153513          	seqz	a0,a0
    80007690:	00813483          	ld	s1,8(sp)
    80007694:	02010113          	addi	sp,sp,32
    80007698:	00008067          	ret

000000008000769c <push_off>:
    8000769c:	fe010113          	addi	sp,sp,-32
    800076a0:	00813823          	sd	s0,16(sp)
    800076a4:	00113c23          	sd	ra,24(sp)
    800076a8:	00913423          	sd	s1,8(sp)
    800076ac:	02010413          	addi	s0,sp,32
    800076b0:	100024f3          	csrr	s1,sstatus
    800076b4:	100027f3          	csrr	a5,sstatus
    800076b8:	ffd7f793          	andi	a5,a5,-3
    800076bc:	10079073          	csrw	sstatus,a5
    800076c0:	ffffe097          	auipc	ra,0xffffe
    800076c4:	714080e7          	jalr	1812(ra) # 80005dd4 <mycpu>
    800076c8:	07852783          	lw	a5,120(a0)
    800076cc:	02078663          	beqz	a5,800076f8 <push_off+0x5c>
    800076d0:	ffffe097          	auipc	ra,0xffffe
    800076d4:	704080e7          	jalr	1796(ra) # 80005dd4 <mycpu>
    800076d8:	07852783          	lw	a5,120(a0)
    800076dc:	01813083          	ld	ra,24(sp)
    800076e0:	01013403          	ld	s0,16(sp)
    800076e4:	0017879b          	addiw	a5,a5,1
    800076e8:	06f52c23          	sw	a5,120(a0)
    800076ec:	00813483          	ld	s1,8(sp)
    800076f0:	02010113          	addi	sp,sp,32
    800076f4:	00008067          	ret
    800076f8:	0014d493          	srli	s1,s1,0x1
    800076fc:	ffffe097          	auipc	ra,0xffffe
    80007700:	6d8080e7          	jalr	1752(ra) # 80005dd4 <mycpu>
    80007704:	0014f493          	andi	s1,s1,1
    80007708:	06952e23          	sw	s1,124(a0)
    8000770c:	fc5ff06f          	j	800076d0 <push_off+0x34>

0000000080007710 <pop_off>:
    80007710:	ff010113          	addi	sp,sp,-16
    80007714:	00813023          	sd	s0,0(sp)
    80007718:	00113423          	sd	ra,8(sp)
    8000771c:	01010413          	addi	s0,sp,16
    80007720:	ffffe097          	auipc	ra,0xffffe
    80007724:	6b4080e7          	jalr	1716(ra) # 80005dd4 <mycpu>
    80007728:	100027f3          	csrr	a5,sstatus
    8000772c:	0027f793          	andi	a5,a5,2
    80007730:	04079663          	bnez	a5,8000777c <pop_off+0x6c>
    80007734:	07852783          	lw	a5,120(a0)
    80007738:	02f05a63          	blez	a5,8000776c <pop_off+0x5c>
    8000773c:	fff7871b          	addiw	a4,a5,-1
    80007740:	06e52c23          	sw	a4,120(a0)
    80007744:	00071c63          	bnez	a4,8000775c <pop_off+0x4c>
    80007748:	07c52783          	lw	a5,124(a0)
    8000774c:	00078863          	beqz	a5,8000775c <pop_off+0x4c>
    80007750:	100027f3          	csrr	a5,sstatus
    80007754:	0027e793          	ori	a5,a5,2
    80007758:	10079073          	csrw	sstatus,a5
    8000775c:	00813083          	ld	ra,8(sp)
    80007760:	00013403          	ld	s0,0(sp)
    80007764:	01010113          	addi	sp,sp,16
    80007768:	00008067          	ret
    8000776c:	00001517          	auipc	a0,0x1
    80007770:	d9c50513          	addi	a0,a0,-612 # 80008508 <digits+0x48>
    80007774:	fffff097          	auipc	ra,0xfffff
    80007778:	018080e7          	jalr	24(ra) # 8000678c <panic>
    8000777c:	00001517          	auipc	a0,0x1
    80007780:	d7450513          	addi	a0,a0,-652 # 800084f0 <digits+0x30>
    80007784:	fffff097          	auipc	ra,0xfffff
    80007788:	008080e7          	jalr	8(ra) # 8000678c <panic>

000000008000778c <push_on>:
    8000778c:	fe010113          	addi	sp,sp,-32
    80007790:	00813823          	sd	s0,16(sp)
    80007794:	00113c23          	sd	ra,24(sp)
    80007798:	00913423          	sd	s1,8(sp)
    8000779c:	02010413          	addi	s0,sp,32
    800077a0:	100024f3          	csrr	s1,sstatus
    800077a4:	100027f3          	csrr	a5,sstatus
    800077a8:	0027e793          	ori	a5,a5,2
    800077ac:	10079073          	csrw	sstatus,a5
    800077b0:	ffffe097          	auipc	ra,0xffffe
    800077b4:	624080e7          	jalr	1572(ra) # 80005dd4 <mycpu>
    800077b8:	07852783          	lw	a5,120(a0)
    800077bc:	02078663          	beqz	a5,800077e8 <push_on+0x5c>
    800077c0:	ffffe097          	auipc	ra,0xffffe
    800077c4:	614080e7          	jalr	1556(ra) # 80005dd4 <mycpu>
    800077c8:	07852783          	lw	a5,120(a0)
    800077cc:	01813083          	ld	ra,24(sp)
    800077d0:	01013403          	ld	s0,16(sp)
    800077d4:	0017879b          	addiw	a5,a5,1
    800077d8:	06f52c23          	sw	a5,120(a0)
    800077dc:	00813483          	ld	s1,8(sp)
    800077e0:	02010113          	addi	sp,sp,32
    800077e4:	00008067          	ret
    800077e8:	0014d493          	srli	s1,s1,0x1
    800077ec:	ffffe097          	auipc	ra,0xffffe
    800077f0:	5e8080e7          	jalr	1512(ra) # 80005dd4 <mycpu>
    800077f4:	0014f493          	andi	s1,s1,1
    800077f8:	06952e23          	sw	s1,124(a0)
    800077fc:	fc5ff06f          	j	800077c0 <push_on+0x34>

0000000080007800 <pop_on>:
    80007800:	ff010113          	addi	sp,sp,-16
    80007804:	00813023          	sd	s0,0(sp)
    80007808:	00113423          	sd	ra,8(sp)
    8000780c:	01010413          	addi	s0,sp,16
    80007810:	ffffe097          	auipc	ra,0xffffe
    80007814:	5c4080e7          	jalr	1476(ra) # 80005dd4 <mycpu>
    80007818:	100027f3          	csrr	a5,sstatus
    8000781c:	0027f793          	andi	a5,a5,2
    80007820:	04078463          	beqz	a5,80007868 <pop_on+0x68>
    80007824:	07852783          	lw	a5,120(a0)
    80007828:	02f05863          	blez	a5,80007858 <pop_on+0x58>
    8000782c:	fff7879b          	addiw	a5,a5,-1
    80007830:	06f52c23          	sw	a5,120(a0)
    80007834:	07853783          	ld	a5,120(a0)
    80007838:	00079863          	bnez	a5,80007848 <pop_on+0x48>
    8000783c:	100027f3          	csrr	a5,sstatus
    80007840:	ffd7f793          	andi	a5,a5,-3
    80007844:	10079073          	csrw	sstatus,a5
    80007848:	00813083          	ld	ra,8(sp)
    8000784c:	00013403          	ld	s0,0(sp)
    80007850:	01010113          	addi	sp,sp,16
    80007854:	00008067          	ret
    80007858:	00001517          	auipc	a0,0x1
    8000785c:	cd850513          	addi	a0,a0,-808 # 80008530 <digits+0x70>
    80007860:	fffff097          	auipc	ra,0xfffff
    80007864:	f2c080e7          	jalr	-212(ra) # 8000678c <panic>
    80007868:	00001517          	auipc	a0,0x1
    8000786c:	ca850513          	addi	a0,a0,-856 # 80008510 <digits+0x50>
    80007870:	fffff097          	auipc	ra,0xfffff
    80007874:	f1c080e7          	jalr	-228(ra) # 8000678c <panic>

0000000080007878 <__memset>:
    80007878:	ff010113          	addi	sp,sp,-16
    8000787c:	00813423          	sd	s0,8(sp)
    80007880:	01010413          	addi	s0,sp,16
    80007884:	1a060e63          	beqz	a2,80007a40 <__memset+0x1c8>
    80007888:	40a007b3          	neg	a5,a0
    8000788c:	0077f793          	andi	a5,a5,7
    80007890:	00778693          	addi	a3,a5,7
    80007894:	00b00813          	li	a6,11
    80007898:	0ff5f593          	andi	a1,a1,255
    8000789c:	fff6071b          	addiw	a4,a2,-1
    800078a0:	1b06e663          	bltu	a3,a6,80007a4c <__memset+0x1d4>
    800078a4:	1cd76463          	bltu	a4,a3,80007a6c <__memset+0x1f4>
    800078a8:	1a078e63          	beqz	a5,80007a64 <__memset+0x1ec>
    800078ac:	00b50023          	sb	a1,0(a0)
    800078b0:	00100713          	li	a4,1
    800078b4:	1ae78463          	beq	a5,a4,80007a5c <__memset+0x1e4>
    800078b8:	00b500a3          	sb	a1,1(a0)
    800078bc:	00200713          	li	a4,2
    800078c0:	1ae78a63          	beq	a5,a4,80007a74 <__memset+0x1fc>
    800078c4:	00b50123          	sb	a1,2(a0)
    800078c8:	00300713          	li	a4,3
    800078cc:	18e78463          	beq	a5,a4,80007a54 <__memset+0x1dc>
    800078d0:	00b501a3          	sb	a1,3(a0)
    800078d4:	00400713          	li	a4,4
    800078d8:	1ae78263          	beq	a5,a4,80007a7c <__memset+0x204>
    800078dc:	00b50223          	sb	a1,4(a0)
    800078e0:	00500713          	li	a4,5
    800078e4:	1ae78063          	beq	a5,a4,80007a84 <__memset+0x20c>
    800078e8:	00b502a3          	sb	a1,5(a0)
    800078ec:	00700713          	li	a4,7
    800078f0:	18e79e63          	bne	a5,a4,80007a8c <__memset+0x214>
    800078f4:	00b50323          	sb	a1,6(a0)
    800078f8:	00700e93          	li	t4,7
    800078fc:	00859713          	slli	a4,a1,0x8
    80007900:	00e5e733          	or	a4,a1,a4
    80007904:	01059e13          	slli	t3,a1,0x10
    80007908:	01c76e33          	or	t3,a4,t3
    8000790c:	01859313          	slli	t1,a1,0x18
    80007910:	006e6333          	or	t1,t3,t1
    80007914:	02059893          	slli	a7,a1,0x20
    80007918:	40f60e3b          	subw	t3,a2,a5
    8000791c:	011368b3          	or	a7,t1,a7
    80007920:	02859813          	slli	a6,a1,0x28
    80007924:	0108e833          	or	a6,a7,a6
    80007928:	03059693          	slli	a3,a1,0x30
    8000792c:	003e589b          	srliw	a7,t3,0x3
    80007930:	00d866b3          	or	a3,a6,a3
    80007934:	03859713          	slli	a4,a1,0x38
    80007938:	00389813          	slli	a6,a7,0x3
    8000793c:	00f507b3          	add	a5,a0,a5
    80007940:	00e6e733          	or	a4,a3,a4
    80007944:	000e089b          	sext.w	a7,t3
    80007948:	00f806b3          	add	a3,a6,a5
    8000794c:	00e7b023          	sd	a4,0(a5)
    80007950:	00878793          	addi	a5,a5,8
    80007954:	fed79ce3          	bne	a5,a3,8000794c <__memset+0xd4>
    80007958:	ff8e7793          	andi	a5,t3,-8
    8000795c:	0007871b          	sext.w	a4,a5
    80007960:	01d787bb          	addw	a5,a5,t4
    80007964:	0ce88e63          	beq	a7,a4,80007a40 <__memset+0x1c8>
    80007968:	00f50733          	add	a4,a0,a5
    8000796c:	00b70023          	sb	a1,0(a4)
    80007970:	0017871b          	addiw	a4,a5,1
    80007974:	0cc77663          	bgeu	a4,a2,80007a40 <__memset+0x1c8>
    80007978:	00e50733          	add	a4,a0,a4
    8000797c:	00b70023          	sb	a1,0(a4)
    80007980:	0027871b          	addiw	a4,a5,2
    80007984:	0ac77e63          	bgeu	a4,a2,80007a40 <__memset+0x1c8>
    80007988:	00e50733          	add	a4,a0,a4
    8000798c:	00b70023          	sb	a1,0(a4)
    80007990:	0037871b          	addiw	a4,a5,3
    80007994:	0ac77663          	bgeu	a4,a2,80007a40 <__memset+0x1c8>
    80007998:	00e50733          	add	a4,a0,a4
    8000799c:	00b70023          	sb	a1,0(a4)
    800079a0:	0047871b          	addiw	a4,a5,4
    800079a4:	08c77e63          	bgeu	a4,a2,80007a40 <__memset+0x1c8>
    800079a8:	00e50733          	add	a4,a0,a4
    800079ac:	00b70023          	sb	a1,0(a4)
    800079b0:	0057871b          	addiw	a4,a5,5
    800079b4:	08c77663          	bgeu	a4,a2,80007a40 <__memset+0x1c8>
    800079b8:	00e50733          	add	a4,a0,a4
    800079bc:	00b70023          	sb	a1,0(a4)
    800079c0:	0067871b          	addiw	a4,a5,6
    800079c4:	06c77e63          	bgeu	a4,a2,80007a40 <__memset+0x1c8>
    800079c8:	00e50733          	add	a4,a0,a4
    800079cc:	00b70023          	sb	a1,0(a4)
    800079d0:	0077871b          	addiw	a4,a5,7
    800079d4:	06c77663          	bgeu	a4,a2,80007a40 <__memset+0x1c8>
    800079d8:	00e50733          	add	a4,a0,a4
    800079dc:	00b70023          	sb	a1,0(a4)
    800079e0:	0087871b          	addiw	a4,a5,8
    800079e4:	04c77e63          	bgeu	a4,a2,80007a40 <__memset+0x1c8>
    800079e8:	00e50733          	add	a4,a0,a4
    800079ec:	00b70023          	sb	a1,0(a4)
    800079f0:	0097871b          	addiw	a4,a5,9
    800079f4:	04c77663          	bgeu	a4,a2,80007a40 <__memset+0x1c8>
    800079f8:	00e50733          	add	a4,a0,a4
    800079fc:	00b70023          	sb	a1,0(a4)
    80007a00:	00a7871b          	addiw	a4,a5,10
    80007a04:	02c77e63          	bgeu	a4,a2,80007a40 <__memset+0x1c8>
    80007a08:	00e50733          	add	a4,a0,a4
    80007a0c:	00b70023          	sb	a1,0(a4)
    80007a10:	00b7871b          	addiw	a4,a5,11
    80007a14:	02c77663          	bgeu	a4,a2,80007a40 <__memset+0x1c8>
    80007a18:	00e50733          	add	a4,a0,a4
    80007a1c:	00b70023          	sb	a1,0(a4)
    80007a20:	00c7871b          	addiw	a4,a5,12
    80007a24:	00c77e63          	bgeu	a4,a2,80007a40 <__memset+0x1c8>
    80007a28:	00e50733          	add	a4,a0,a4
    80007a2c:	00b70023          	sb	a1,0(a4)
    80007a30:	00d7879b          	addiw	a5,a5,13
    80007a34:	00c7f663          	bgeu	a5,a2,80007a40 <__memset+0x1c8>
    80007a38:	00f507b3          	add	a5,a0,a5
    80007a3c:	00b78023          	sb	a1,0(a5)
    80007a40:	00813403          	ld	s0,8(sp)
    80007a44:	01010113          	addi	sp,sp,16
    80007a48:	00008067          	ret
    80007a4c:	00b00693          	li	a3,11
    80007a50:	e55ff06f          	j	800078a4 <__memset+0x2c>
    80007a54:	00300e93          	li	t4,3
    80007a58:	ea5ff06f          	j	800078fc <__memset+0x84>
    80007a5c:	00100e93          	li	t4,1
    80007a60:	e9dff06f          	j	800078fc <__memset+0x84>
    80007a64:	00000e93          	li	t4,0
    80007a68:	e95ff06f          	j	800078fc <__memset+0x84>
    80007a6c:	00000793          	li	a5,0
    80007a70:	ef9ff06f          	j	80007968 <__memset+0xf0>
    80007a74:	00200e93          	li	t4,2
    80007a78:	e85ff06f          	j	800078fc <__memset+0x84>
    80007a7c:	00400e93          	li	t4,4
    80007a80:	e7dff06f          	j	800078fc <__memset+0x84>
    80007a84:	00500e93          	li	t4,5
    80007a88:	e75ff06f          	j	800078fc <__memset+0x84>
    80007a8c:	00600e93          	li	t4,6
    80007a90:	e6dff06f          	j	800078fc <__memset+0x84>

0000000080007a94 <__memmove>:
    80007a94:	ff010113          	addi	sp,sp,-16
    80007a98:	00813423          	sd	s0,8(sp)
    80007a9c:	01010413          	addi	s0,sp,16
    80007aa0:	0e060863          	beqz	a2,80007b90 <__memmove+0xfc>
    80007aa4:	fff6069b          	addiw	a3,a2,-1
    80007aa8:	0006881b          	sext.w	a6,a3
    80007aac:	0ea5e863          	bltu	a1,a0,80007b9c <__memmove+0x108>
    80007ab0:	00758713          	addi	a4,a1,7
    80007ab4:	00a5e7b3          	or	a5,a1,a0
    80007ab8:	40a70733          	sub	a4,a4,a0
    80007abc:	0077f793          	andi	a5,a5,7
    80007ac0:	00f73713          	sltiu	a4,a4,15
    80007ac4:	00174713          	xori	a4,a4,1
    80007ac8:	0017b793          	seqz	a5,a5
    80007acc:	00e7f7b3          	and	a5,a5,a4
    80007ad0:	10078863          	beqz	a5,80007be0 <__memmove+0x14c>
    80007ad4:	00900793          	li	a5,9
    80007ad8:	1107f463          	bgeu	a5,a6,80007be0 <__memmove+0x14c>
    80007adc:	0036581b          	srliw	a6,a2,0x3
    80007ae0:	fff8081b          	addiw	a6,a6,-1
    80007ae4:	02081813          	slli	a6,a6,0x20
    80007ae8:	01d85893          	srli	a7,a6,0x1d
    80007aec:	00858813          	addi	a6,a1,8
    80007af0:	00058793          	mv	a5,a1
    80007af4:	00050713          	mv	a4,a0
    80007af8:	01088833          	add	a6,a7,a6
    80007afc:	0007b883          	ld	a7,0(a5)
    80007b00:	00878793          	addi	a5,a5,8
    80007b04:	00870713          	addi	a4,a4,8
    80007b08:	ff173c23          	sd	a7,-8(a4)
    80007b0c:	ff0798e3          	bne	a5,a6,80007afc <__memmove+0x68>
    80007b10:	ff867713          	andi	a4,a2,-8
    80007b14:	02071793          	slli	a5,a4,0x20
    80007b18:	0207d793          	srli	a5,a5,0x20
    80007b1c:	00f585b3          	add	a1,a1,a5
    80007b20:	40e686bb          	subw	a3,a3,a4
    80007b24:	00f507b3          	add	a5,a0,a5
    80007b28:	06e60463          	beq	a2,a4,80007b90 <__memmove+0xfc>
    80007b2c:	0005c703          	lbu	a4,0(a1)
    80007b30:	00e78023          	sb	a4,0(a5)
    80007b34:	04068e63          	beqz	a3,80007b90 <__memmove+0xfc>
    80007b38:	0015c603          	lbu	a2,1(a1)
    80007b3c:	00100713          	li	a4,1
    80007b40:	00c780a3          	sb	a2,1(a5)
    80007b44:	04e68663          	beq	a3,a4,80007b90 <__memmove+0xfc>
    80007b48:	0025c603          	lbu	a2,2(a1)
    80007b4c:	00200713          	li	a4,2
    80007b50:	00c78123          	sb	a2,2(a5)
    80007b54:	02e68e63          	beq	a3,a4,80007b90 <__memmove+0xfc>
    80007b58:	0035c603          	lbu	a2,3(a1)
    80007b5c:	00300713          	li	a4,3
    80007b60:	00c781a3          	sb	a2,3(a5)
    80007b64:	02e68663          	beq	a3,a4,80007b90 <__memmove+0xfc>
    80007b68:	0045c603          	lbu	a2,4(a1)
    80007b6c:	00400713          	li	a4,4
    80007b70:	00c78223          	sb	a2,4(a5)
    80007b74:	00e68e63          	beq	a3,a4,80007b90 <__memmove+0xfc>
    80007b78:	0055c603          	lbu	a2,5(a1)
    80007b7c:	00500713          	li	a4,5
    80007b80:	00c782a3          	sb	a2,5(a5)
    80007b84:	00e68663          	beq	a3,a4,80007b90 <__memmove+0xfc>
    80007b88:	0065c703          	lbu	a4,6(a1)
    80007b8c:	00e78323          	sb	a4,6(a5)
    80007b90:	00813403          	ld	s0,8(sp)
    80007b94:	01010113          	addi	sp,sp,16
    80007b98:	00008067          	ret
    80007b9c:	02061713          	slli	a4,a2,0x20
    80007ba0:	02075713          	srli	a4,a4,0x20
    80007ba4:	00e587b3          	add	a5,a1,a4
    80007ba8:	f0f574e3          	bgeu	a0,a5,80007ab0 <__memmove+0x1c>
    80007bac:	02069613          	slli	a2,a3,0x20
    80007bb0:	02065613          	srli	a2,a2,0x20
    80007bb4:	fff64613          	not	a2,a2
    80007bb8:	00e50733          	add	a4,a0,a4
    80007bbc:	00c78633          	add	a2,a5,a2
    80007bc0:	fff7c683          	lbu	a3,-1(a5)
    80007bc4:	fff78793          	addi	a5,a5,-1
    80007bc8:	fff70713          	addi	a4,a4,-1
    80007bcc:	00d70023          	sb	a3,0(a4)
    80007bd0:	fec798e3          	bne	a5,a2,80007bc0 <__memmove+0x12c>
    80007bd4:	00813403          	ld	s0,8(sp)
    80007bd8:	01010113          	addi	sp,sp,16
    80007bdc:	00008067          	ret
    80007be0:	02069713          	slli	a4,a3,0x20
    80007be4:	02075713          	srli	a4,a4,0x20
    80007be8:	00170713          	addi	a4,a4,1
    80007bec:	00e50733          	add	a4,a0,a4
    80007bf0:	00050793          	mv	a5,a0
    80007bf4:	0005c683          	lbu	a3,0(a1)
    80007bf8:	00178793          	addi	a5,a5,1
    80007bfc:	00158593          	addi	a1,a1,1
    80007c00:	fed78fa3          	sb	a3,-1(a5)
    80007c04:	fee798e3          	bne	a5,a4,80007bf4 <__memmove+0x160>
    80007c08:	f89ff06f          	j	80007b90 <__memmove+0xfc>

0000000080007c0c <__putc>:
    80007c0c:	fe010113          	addi	sp,sp,-32
    80007c10:	00813823          	sd	s0,16(sp)
    80007c14:	00113c23          	sd	ra,24(sp)
    80007c18:	02010413          	addi	s0,sp,32
    80007c1c:	00050793          	mv	a5,a0
    80007c20:	fef40593          	addi	a1,s0,-17
    80007c24:	00100613          	li	a2,1
    80007c28:	00000513          	li	a0,0
    80007c2c:	fef407a3          	sb	a5,-17(s0)
    80007c30:	fffff097          	auipc	ra,0xfffff
    80007c34:	b3c080e7          	jalr	-1220(ra) # 8000676c <console_write>
    80007c38:	01813083          	ld	ra,24(sp)
    80007c3c:	01013403          	ld	s0,16(sp)
    80007c40:	02010113          	addi	sp,sp,32
    80007c44:	00008067          	ret

0000000080007c48 <__getc>:
    80007c48:	fe010113          	addi	sp,sp,-32
    80007c4c:	00813823          	sd	s0,16(sp)
    80007c50:	00113c23          	sd	ra,24(sp)
    80007c54:	02010413          	addi	s0,sp,32
    80007c58:	fe840593          	addi	a1,s0,-24
    80007c5c:	00100613          	li	a2,1
    80007c60:	00000513          	li	a0,0
    80007c64:	fffff097          	auipc	ra,0xfffff
    80007c68:	ae8080e7          	jalr	-1304(ra) # 8000674c <console_read>
    80007c6c:	fe844503          	lbu	a0,-24(s0)
    80007c70:	01813083          	ld	ra,24(sp)
    80007c74:	01013403          	ld	s0,16(sp)
    80007c78:	02010113          	addi	sp,sp,32
    80007c7c:	00008067          	ret

0000000080007c80 <console_handler>:
    80007c80:	fe010113          	addi	sp,sp,-32
    80007c84:	00813823          	sd	s0,16(sp)
    80007c88:	00113c23          	sd	ra,24(sp)
    80007c8c:	00913423          	sd	s1,8(sp)
    80007c90:	02010413          	addi	s0,sp,32
    80007c94:	14202773          	csrr	a4,scause
    80007c98:	100027f3          	csrr	a5,sstatus
    80007c9c:	0027f793          	andi	a5,a5,2
    80007ca0:	06079e63          	bnez	a5,80007d1c <console_handler+0x9c>
    80007ca4:	00074c63          	bltz	a4,80007cbc <console_handler+0x3c>
    80007ca8:	01813083          	ld	ra,24(sp)
    80007cac:	01013403          	ld	s0,16(sp)
    80007cb0:	00813483          	ld	s1,8(sp)
    80007cb4:	02010113          	addi	sp,sp,32
    80007cb8:	00008067          	ret
    80007cbc:	0ff77713          	andi	a4,a4,255
    80007cc0:	00900793          	li	a5,9
    80007cc4:	fef712e3          	bne	a4,a5,80007ca8 <console_handler+0x28>
    80007cc8:	ffffe097          	auipc	ra,0xffffe
    80007ccc:	6dc080e7          	jalr	1756(ra) # 800063a4 <plic_claim>
    80007cd0:	00a00793          	li	a5,10
    80007cd4:	00050493          	mv	s1,a0
    80007cd8:	02f50c63          	beq	a0,a5,80007d10 <console_handler+0x90>
    80007cdc:	fc0506e3          	beqz	a0,80007ca8 <console_handler+0x28>
    80007ce0:	00050593          	mv	a1,a0
    80007ce4:	00000517          	auipc	a0,0x0
    80007ce8:	75450513          	addi	a0,a0,1876 # 80008438 <_ZL6digits+0xf8>
    80007cec:	fffff097          	auipc	ra,0xfffff
    80007cf0:	afc080e7          	jalr	-1284(ra) # 800067e8 <__printf>
    80007cf4:	01013403          	ld	s0,16(sp)
    80007cf8:	01813083          	ld	ra,24(sp)
    80007cfc:	00048513          	mv	a0,s1
    80007d00:	00813483          	ld	s1,8(sp)
    80007d04:	02010113          	addi	sp,sp,32
    80007d08:	ffffe317          	auipc	t1,0xffffe
    80007d0c:	6d430067          	jr	1748(t1) # 800063dc <plic_complete>
    80007d10:	fffff097          	auipc	ra,0xfffff
    80007d14:	3e0080e7          	jalr	992(ra) # 800070f0 <uartintr>
    80007d18:	fddff06f          	j	80007cf4 <console_handler+0x74>
    80007d1c:	00001517          	auipc	a0,0x1
    80007d20:	81c50513          	addi	a0,a0,-2020 # 80008538 <digits+0x78>
    80007d24:	fffff097          	auipc	ra,0xfffff
    80007d28:	a68080e7          	jalr	-1432(ra) # 8000678c <panic>
	...
